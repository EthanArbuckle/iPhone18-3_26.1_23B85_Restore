uint64_t sub_100313E14@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 accountIdentifier];
  if (v3)
  {
    v4 = v3;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

void sub_100313EB8(uint64_t a1, void **a2)
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

  [v8 setAccountIdentifier:isa];
}

id sub_100313FF4(void *a1)
{
  v3 = [a1 state];
  if (v3 <= 3)
  {
    *(v1 + 32) = v3;
  }

  *(v1 + 72) = [a1 retryCount];
  *(v1 + 80) = [a1 failureCount];
  result = [a1 isTerminated];
  *(v1 + 88) = result;
  *(v1 + 89) = 1;
  return result;
}

void sub_100314078(int a1)
{
  v2 = v1;
  v114 = a1;
  v3 = type metadata accessor for MigrateRequest(0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = &v101 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MigrateRequest.User(0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v101 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v101 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v2 + 24);
  v17 = [v16 uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v113 = UUID.uuidString.getter();
  v19 = v18;
  (*(v12 + 8))(v15, v11);
  if (![objc_opt_self() isInternetReachable])
  {
    if (qword_100935EB8 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100006654(v21, qword_100941E18);

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v117[0] = v25;
      *v24 = 136446210;
      v26 = sub_10000668C(v113, v19, v117);

      *(v24 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v22, v23, "Internet is not available. Will resume migration when we have reachability {accountID: %{public}s}", v24, 0xCu);
      sub_10000607C(v25);
    }

    else
    {
    }

    *(v2 + 92) = 1;
    *(v2 + 93) = (*(v2 + 93) | v114) & 1;
    return;
  }

  v112 = v6;
  v20 = *(v2 + 16);
  v117[0] = 0xD000000000000010;
  v117[1] = 0x80000001007F4D40;
  v117[3] = 0;
  v118[0] = 0;
  v117[2] = 0;
  *(v118 + 6) = 0;
  v27 = sub_10040001C(v117, sub_10031B1B4, 0);
  v116[0] = v16;
  __chkstk_darwin(v27);
  *(&v101 - 2) = v116;

  v28 = sub_10032DE90(sub_10031D63C, (&v101 - 4), v27);

  if ((v28 & 1) == 0)
  {

    v47 = objc_opt_self();
    v116[0] = 0;
    v116[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(148);
    v48._countAndFlagsBits = 0xD000000000000073;
    v48._object = 0x80000001007F4D60;
    String.append(_:)(v48);
    v49 = [v16 description];
    v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v52 = v51;

    v53._countAndFlagsBits = v50;
    v53._object = v52;
    String.append(_:)(v53);

    v54._countAndFlagsBits = 0xD00000000000001CLL;
    v54._object = 0x80000001007F4DE0;
    String.append(_:)(v54);
    v115 = v27;
    sub_1000F5104(&qword_100941F68, &qword_1007A2360);
    v55._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v55);

    v56._countAndFlagsBits = 125;
    v56._object = 0xE100000000000000;
    String.append(_:)(v56);
    v57 = String._bridgeToObjectiveC()();

    v58 = [v47 internalErrorWithDebugDescription:v57];

    v59 = v58;
    sub_100317644(v58, 1);

    return;
  }

  v110 = 0;

  v29 = sub_10031512C();
  v30 = String._bridgeToObjectiveC()();
  v31 = [v29 codeServiceWithName:v30 databaseScope:2];

  type metadata accessor for TantorMigrationAPIAsyncOperationClient();
  inited = swift_initStackObject();
  v109 = v31;
  *(inited + 16) = v31;
  if (qword_100935EB8 != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  v33 = sub_100006654(v32, qword_100941E18);

  v111 = v33;
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = v10;
    v38 = swift_slowAlloc();
    v116[0] = v38;
    *v36 = 136446210;
    *(v36 + 4) = sub_10000668C(v113, v19, v116);
    _os_log_impl(&_mh_execute_header, v34, v35, "Setting up migration service call {accountID: %{public}s}", v36, 0xCu);
    sub_10000607C(v38);
    v10 = v37;
  }

  v39 = v110;
  *v10 = 0;
  *(v10 + 2) = 0;
  v40 = &v10[*(v7 + 24)];
  UnknownStorage.init()();
  v110 = [objc_opt_self() sharedInstance];
  v41 = [v110 unsafeUntilSystemReady_iCloudAccountCalDavServiceWithAccountID:v16];
  if (!v41)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v41 = String._bridgeToObjectiveC()();
  }

  v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v44 = v43;
  v45 = objc_allocWithZone(NSRegularExpression);
  v46 = sub_10031B768(0xD000000000000013, 0x80000001007F4E20, 0);
  if (v39)
  {

LABEL_27:
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      *v67 = 0;
      _os_log_impl(&_mh_execute_header, v65, v66, "Failed to determine user CalDAV partition", v67, 2u);
    }

    v68 = objc_opt_self();
    v69 = String._bridgeToObjectiveC()();
    v70 = [v68 internalErrorWithDebugDescription:v69];

    sub_100317644(v70, 1);
    goto LABEL_30;
  }

  if (!v46)
  {

    goto LABEL_27;
  }

  v60 = v42;
  v61 = v46;

  v107 = v60;
  v62 = String.UTF16View.count.getter();

  v63 = [v61 firstMatchInString:v41 options:0 range:{0, v62}];

  if (!v63)
  {

    goto LABEL_26;
  }

  v106 = v61;
  if ([v63 numberOfRanges] < 2 || (objc_msgSend(v63, "rangeAtIndex:", 1), Range<>.init(_:in:)(), (v64 & 1) != 0))
  {

LABEL_26:

    goto LABEL_27;
  }

  v105 = v63;
  v71 = String.subscript.getter();
  if (!((v71 ^ v72) >> 14))
  {

LABEL_44:

    goto LABEL_27;
  }

  v75 = v71;
  v76 = v72;
  v104 = v73;
  v77 = v74;
  v78 = sub_10031BDCC(v71, v72, v73, v74, 10);
  if ((v78 & 0x10000000000) != 0)
  {
    v78 = sub_10031B844(v75, v76, v104, v77, 10);
  }

  v79 = v78;

  if ((v79 & 0x100000000) != 0)
  {
    goto LABEL_44;
  }

  v80 = v79;
  v104 = 0;

  v81 = Logger.logObject.getter();
  v82 = static os_log_type_t.default.getter();

  v103 = v81;
  if (os_log_type_enabled(v81, v82))
  {
    v83 = swift_slowAlloc();
    v102 = swift_slowAlloc();
    v116[0] = v102;
    *v83 = 67109634;
    v84 = v80;
    *(v83 + 4) = v80;
    *(v83 + 8) = 2082;
    v85 = sub_10000668C(v107, v44, v116);

    *(v83 + 10) = v85;
    *(v83 + 18) = 2082;
    *(v83 + 20) = sub_10000668C(v113, v19, v116);
    v86 = v103;
    _os_log_impl(&_mh_execute_header, v103, v82, "Migration call will use {partition: %u, serviceURLPrefix: %{public}s, accountID: %{public}s}", v83, 0x1Cu);
    swift_arrayDestroy();
  }

  else
  {

    v84 = v80;
  }

  *(v10 + 2) = v84;
  __chkstk_darwin(v87);
  *(&v101 - 16) = v114 & 1;
  *(&v101 - 1) = v10;
  sub_10031D8C4(&qword_100937680, type metadata accessor for MigrateRequest);
  v88 = v112;
  static Message.with(_:)();

  v89 = Logger.logObject.getter();
  v90 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v89, v90))
  {
    v91 = swift_slowAlloc();
    v92 = v10;
    v93 = swift_slowAlloc();
    v116[0] = v93;
    *v91 = 136446210;
    v94 = sub_10000668C(v113, v19, v116);

    *(v91 + 4) = v94;
    _os_log_impl(&_mh_execute_header, v89, v90, "Making request to inverness for migration {accountID: %{public}s}", v91, 0xCu);
    sub_10000607C(v93);
    v10 = v92;
    v88 = v112;
  }

  else
  {
  }

  v95 = *(v2 + 72);
  v96 = __OFADD__(v95, 1);
  v97 = v95 + 1;
  if (!v96)
  {
    *(v2 + 72) = v97;
    sub_10031571C(sub_10031D67C, v2);

    v98 = TantorMigrationAPIAsyncOperationClient.migrate(_:completion:)(v88);

    v99 = sub_1003152A4();
    sub_10031D370(v98, v99, v100, &unk_1008EDE38);

    sub_10031D85C(v88, type metadata accessor for MigrateRequest);
LABEL_30:
    sub_10031D85C(v10, type metadata accessor for MigrateRequest.User);
    return;
  }

  __break(1u);
}

void sub_100314EAC(void *a1)
{
  v2 = [objc_opt_self() fetchRequest];
  v3 = [objc_allocWithZone(NSBatchDeleteRequest) initWithFetchRequest:v2];
  v15 = 0;
  v4 = [a1 executeRequest:v3 error:&v15];
  if (v4)
  {
    v5 = v4;
    v6 = v15;

LABEL_7:
    return;
  }

  v7 = v15;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  if (qword_100935EB8 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100006654(v8, qword_100941E18);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v15 = v11;
    *v10 = 136446210;
    swift_errorRetain();
    sub_1000F5104(&unk_1009399E0, &qword_100795D00);
    v12 = String.init<A>(describing:)();
    v14 = sub_10000668C(v12, v13, &v15);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v5, v9, "Failed to delete migration state entities from the database {error: %{public}s}", v10, 0xCu);
    sub_10000607C(v11);

    goto LABEL_7;
  }
}

id sub_10031512C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 96);
  if (v6)
  {
    v7 = *(v0 + 96);
  }

  else
  {
    v8 = objc_opt_self();
    v9 = [*(v0 + 24) uuid];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v10 = v0;
    UUID.uuidString.getter();
    (*(v2 + 8))(v5, v1);
    v11 = String._bridgeToObjectiveC()();

    v12 = [v8 newCloudContainerForAccountID:v11];

    v13 = *(v10 + 96);
    *(v10 + 96) = v12;
    v7 = v12;

    v6 = 0;
  }

  v14 = v6;
  return v7;
}

void (*sub_1003152A4())(void *a1)
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  if (v1)
  {
    v3 = *(v0 + 104);
    v4 = *(v0 + 112);
  }

  else
  {
    v5 = swift_allocObject();
    swift_weakInit();
    v6 = *(v0 + 104);
    v7 = *(v0 + 112);
    v3 = sub_10031D68C;
    *(v0 + 104) = sub_10031D68C;
    *(v0 + 112) = v5;

    sub_10003E114(v6);
  }

  sub_10003E124(v1);
  return v3;
}

void sub_100315354(void *a1)
{
  if (a1)
  {
    v1 = [a1 requestUUID];
    v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = v3;

    if (qword_100935EB8 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100006654(v5, qword_100941E18);

    oslog = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v15 = v9;
      *v7 = 136446466;
      v10 = sub_10000668C(v2, v4, &v15);

      *(v7 + 4) = v10;
      *(v7 + 12) = 2114;
      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v12 = *(Strong + 24);

        v13 = v12;
      }

      else
      {
        v12 = 0;
        v13 = 0;
      }

      *(v7 + 14) = v12;
      *v8 = v13;
      _os_log_impl(&_mh_execute_header, oslog, v6, "Completed MigrationClient request {requestUUID: %{public}s, accountID: %{public}@}", v7, 0x16u);
      sub_1000050A4(v8, &unk_100938E70, &unk_100797230);

      sub_10000607C(v9);
    }

    else
    {
    }
  }
}

uint64_t sub_100315600()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 40);

  sub_10031D788(*(v0 + 56), *(v0 + 64));

  v3 = *(v0 + 112);
  sub_10003E114(*(v0 + 104));
  return v0;
}

uint64_t sub_10031565C()
{
  sub_100315600();

  return swift_deallocClassInstance();
}

unint64_t sub_1003156C8()
{
  result = qword_100941F58;
  if (!qword_100941F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100941F58);
  }

  return result;
}

uint64_t sub_10031571C(uint64_t a1, uint64_t a2)
{
  v5 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = aBlock - v7;
  v9 = *(v2 + 16);
  v10 = String._bridgeToObjectiveC()();
  v11 = [v9 newBackgroundContextWithAuthor:v10];

  KeyPath = swift_getKeyPath();
  v13 = [*(v2 + 24) uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v14 = type metadata accessor for UUID();
  (*(*(v14 - 8) + 56))(v8, 0, 1, v14);
  v15 = sub_1003923C0(KeyPath, v8);

  v16 = swift_allocObject();
  v16[2] = v11;
  v16[3] = v15;
  v16[4] = a1;
  v16[5] = a2;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_10031D5B4;
  *(v17 + 24) = v16;
  aBlock[4] = sub_1000529DC;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F160;
  aBlock[3] = &unk_1008EDE10;
  v18 = _Block_copy(aBlock);
  v19 = v15;

  v20 = v11;

  [v20 performBlockAndWait:v18];

  _Block_release(v18);
  LOBYTE(v20) = swift_isEscapingClosureAtFileLocation();

  if (v20)
  {
    __break(1u);
  }

  return result;
}

void sub_1003159B0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  sub_1000060C8(0, &qword_100941F60, off_1008D41B0);
  v6 = [objc_allocWithZone(NSFetchRequest) init];
  v7 = [swift_getObjCClassFromMetadata() entity];
  [v6 setEntity:v7];

  [v6 setAffectedStores:0];
  [v6 setPredicate:a2];
  v8 = NSManagedObjectContext.fetch<A>(_:)();

  if (v8 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_3;
    }

LABEL_11:

    v10 = 0;
    goto LABEL_7;
  }

  if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_11;
  }

LABEL_3:
  if ((v8 & 0xC000000000000001) != 0)
  {
    v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v9 = *(v8 + 32);
  }

  v11 = v9;

  v10 = v11;
LABEL_7:
  v12 = v10;
  a3(a1);
}

void sub_100315B60(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    sub_100313FF4(v2);
  }
}

void sub_100315BB0(void *a1, void *a2, uint64_t a3)
{
  v95 = sub_1000F5104(&unk_10093A3D0, &qword_100795770);
  v6 = *(*(v95 - 8) + 64);
  __chkstk_darwin(v95);
  v8 = &v88 - v7;
  v9 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v94 = &v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v15 = &v88 - v14;
  __chkstk_darwin(v13);
  v99 = &v88 - v16;
  v17 = type metadata accessor for UUID();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v88 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = &selRef_setRecordZoneChangeTokensUpdatedBlock_;
  v100 = a3;
  v101 = v18;
  v98 = v21;
  if (a2)
  {
    v23 = a2;
    v24 = v99;
    goto LABEL_12;
  }

  v97 = 0;
  v23 = [objc_allocWithZone(REMCDMigrationState) initWithContext:a1];
  v25 = *(a3 + 16);
  v92 = *(a3 + 24);
  v93 = v25;
  v26 = [v92 uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  UUID.uuidString.getter();
  v27 = *(v18 + 8);
  v27(v21, v17);
  v28 = String._bridgeToObjectiveC()();

  v29 = [v93 storeForAccountIdentifier:v28];

  if (v29)
  {
    [a1 assignObject:v23 toPersistentStore:v29];

    a3 = v100;
LABEL_10:
    v22 = &selRef_setRecordZoneChangeTokensUpdatedBlock_;
    goto LABEL_11;
  }

  v91 = v27;
  v30 = v92;
  if (qword_100935EB8 != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  sub_100006654(v31, qword_100941E18);
  a3 = v100;

  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.error.getter();

  v90 = v33;
  v93 = v32;
  v34 = os_log_type_enabled(v32, v33);
  v35 = v98;
  if (!v34)
  {

    goto LABEL_10;
  }

  v36 = v30;
  v37 = swift_slowAlloc();
  v88 = v37;
  v89 = swift_slowAlloc();
  v102 = v89;
  *v37 = 136446210;
  v38 = [v36 uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v39 = UUID.uuidString.getter();
  v41 = v40;
  v91(v35, v17);
  v42 = sub_10000668C(v39, v41, &v102);

  v43 = v88;
  *(v88 + 1) = v42;
  v22 = &selRef_setRecordZoneChangeTokensUpdatedBlock_;
  v44 = v93;
  _os_log_impl(&_mh_execute_header, v93, v90, "Can't find CoreData store for saving CloudKit account migration state {accountID: %{public}s}", v43, 0xCu);
  sub_10000607C(v89);

LABEL_11:
  v24 = v99;
  a2 = v97;
LABEL_12:
  v45 = a2;
  v46 = [v23 accountIdentifier];
  v96 = a1;
  v97 = v23;
  if (v46)
  {
    v47 = v46;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v48 = 0;
  }

  else
  {
    v48 = 1;
  }

  v49 = v101;
  v50 = *(v101 + 56);
  v50(v24, v48, 1, v17);
  v51 = *(a3 + 24);
  v52 = [v51 v22[318]];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v50(v15, 0, 1, v17);
  v53 = *(v95 + 48);
  sub_100010364(v24, v8, &unk_100939D90, "8\n\r");
  sub_100010364(v15, &v8[v53], &unk_100939D90, "8\n\r");
  v54 = *(v49 + 48);
  if (v54(v8, 1, v17) == 1)
  {
    sub_1000050A4(v15, &unk_100939D90, "8\n\r");
    sub_1000050A4(v24, &unk_100939D90, "8\n\r");
    v55 = v54(&v8[v53], 1, v17);
    v56 = v97;
    v57 = v100;
    v58 = v101;
    if (v55 == 1)
    {
      sub_1000050A4(v8, &unk_100939D90, "8\n\r");
      goto LABEL_22;
    }

    goto LABEL_20;
  }

  v59 = v94;
  sub_100010364(v8, v94, &unk_100939D90, "8\n\r");
  if (v54(&v8[v53], 1, v17) == 1)
  {
    sub_1000050A4(v15, &unk_100939D90, "8\n\r");
    sub_1000050A4(v24, &unk_100939D90, "8\n\r");
    v58 = v101;
    (*(v101 + 8))(v59, v17);
    v56 = v97;
    v57 = v100;
LABEL_20:
    sub_1000050A4(v8, &unk_10093A3D0, &qword_100795770);
LABEL_21:
    v60 = [v51 uuid];
    v61 = v98;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v58 + 8))(v61, v17);
    [v56 setAccountIdentifier:isa];

    goto LABEL_22;
  }

  v58 = v101;
  v67 = v98;
  (*(v101 + 32))(v98, &v8[v53], v17);
  sub_10031D8C4(&qword_10093A3E0, &type metadata accessor for UUID);
  v68 = dispatch thunk of static Equatable.== infix(_:_:)();
  v69 = *(v58 + 8);
  v69(v67, v17);
  sub_1000050A4(v15, &unk_100939D90, "8\n\r");
  sub_1000050A4(v99, &unk_100939D90, "8\n\r");
  v69(v94, v17);
  sub_1000050A4(v8, &unk_100939D90, "8\n\r");
  v56 = v97;
  v57 = v100;
  if ((v68 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_22:
  if ([v56 state] != *(v57 + 32))
  {
    [v56 setState:?];
  }

  v63 = *(v57 + 72);
  if (v63 < -32768)
  {
    LOWORD(v63) = 0x8000;
  }

  else
  {
    if (v63 < 0x8000)
    {
      goto LABEL_26;
    }

    LOWORD(v63) = 0x7FFF;
  }

  if (qword_100935EB8 != -1)
  {
    swift_once();
  }

  v80 = type metadata accessor for Logger();
  sub_100006654(v80, qword_100941E18);

  v81 = Logger.logObject.getter();
  v82 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v81, v82))
  {
    v83 = swift_slowAlloc();
    *v83 = 134217984;
    *(v83 + 4) = *(v57 + 72);

    _os_log_impl(&_mh_execute_header, v81, v82, "RDMigrationClient.saveState() clamping invocationCount: %ld", v83, 0xCu);
  }

  else
  {
  }

LABEL_26:
  if ([v56 retryCount] != v63)
  {
    [v56 setRetryCount:v63];
  }

  v64 = *(v57 + 80);
  if (v64 < -32768)
  {
    LOWORD(v64) = 0x8000;
  }

  else
  {
    if (v64 < 0x8000)
    {
      goto LABEL_30;
    }

    LOWORD(v64) = 0x7FFF;
  }

  if (qword_100935EB8 != -1)
  {
    swift_once();
  }

  v84 = type metadata accessor for Logger();
  sub_100006654(v84, qword_100941E18);

  v85 = Logger.logObject.getter();
  v86 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v85, v86))
  {
    v87 = swift_slowAlloc();
    *v87 = 134217984;
    *(v87 + 4) = *(v57 + 80);

    _os_log_impl(&_mh_execute_header, v85, v86, "RDMigrationClient.saveState() clamping failureCount: %ld", v87, 0xCu);
  }

  else
  {
  }

LABEL_30:
  if ([v56 failureCount] != v64)
  {
    [v56 setFailureCount:v64];
  }

  if ([v56 isTerminated] != *(v57 + 88))
  {
    [v56 setIsTerminated:?];
  }

  v65 = v96;
  if (![v96 hasChanges])
  {
    goto LABEL_37;
  }

  v102 = 0;
  if ([v65 save:&v102])
  {
    v66 = v102;
LABEL_37:

    return;
  }

  v70 = v102;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  if (qword_100935EB8 != -1)
  {
    swift_once();
  }

  v71 = type metadata accessor for Logger();
  sub_100006654(v71, qword_100941E18);
  swift_errorRetain();
  v72 = Logger.logObject.getter();
  v73 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    v102 = v75;
    *v74 = 136446210;
    swift_getErrorValue();
    v76 = Error.localizedDescription.getter();
    v78 = v56;
    v79 = sub_10000668C(v76, v77, &v102);

    *(v74 + 4) = v79;
    _os_log_impl(&_mh_execute_header, v72, v73, "Failed saving migration state {error: %{public}s}", v74, 0xCu);
    sub_10000607C(v75);
  }

  else
  {
  }
}

void sub_100316840()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v76 = *(v2 - 8);
  v77 = v2;
  v3 = v76[8];
  v4 = __chkstk_darwin(v2);
  v6 = v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v73 - v7;
  if (*(v0 + 88) == 1)
  {
    type metadata accessor for Analytics();
    static Analytics.postEvent(_:payload:duration:)();
    v9 = "t and delete CalDAV account";
    v10 = 0xD000000000000039;
  }

  else
  {
    v10 = 0xD00000000000003BLL;
    v9 = "d migration after ";
  }

  v11 = v9 | 0x8000000000000000;
  if (qword_100935EB8 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  v13 = sub_100006654(v12, qword_100941E18);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  v16 = os_log_type_enabled(v14, v15);
  v75 = v10;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v74 = v12;
    v18 = v17;
    v19 = swift_slowAlloc();
    v73[0] = v6;
    v73[1] = v13;
    aBlock[0] = v19;
    *v18 = 136446466;
    v20 = sub_10000668C(v10, v11, aBlock);

    *(v18 + 4) = v20;
    *(v18 + 12) = 2082;
    v21 = [*(v1 + 24) uuid];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v22 = UUID.uuidString.getter();
    v24 = v23;
    (v76[1])(v8, v77);
    v25 = sub_10000668C(v22, v24, aBlock);

    *(v18 + 14) = v25;
    _os_log_impl(&_mh_execute_header, v14, v15, "RDAccountUtils will %{public}s {accountID: %{public}s}", v18, 0x16u);
    swift_arrayDestroy();
    v6 = v73[0];

    v12 = v74;
  }

  else
  {
  }

  v26 = [*(v1 + 16) accountUtils];
  if (!v26)
  {

    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      aBlock[0] = v58;
      *v57 = 136446210;
      v59 = sub_10000668C(v75, v11, aBlock);

      *(v57 + 4) = v59;
      _os_log_impl(&_mh_execute_header, v55, v56, "No RDAccountUtils is found. Unable to %{public}s", v57, 0xCu);
      sub_10000607C(v58);
    }

    else
    {
    }

    return;
  }

  v27 = v26;
  v28 = *(v1 + 24);
  v29 = [v28 uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v74 = UUID.uuidString.getter();
  v31 = v30;
  (v76[1])(v6, v77);
  LODWORD(v77) = *(v1 + 88);
  if (qword_100935D30 != -1)
  {
    swift_once();
  }

  v32 = qword_100974CC8;
  v33 = swift_allocObject();
  v33[2] = v75;
  v33[3] = v11;
  v33[4] = v28;
  v34 = qword_1009366E8;
  v35 = v28;
  if (v34 != -1)
  {
    swift_once();
  }

  sub_100006654(v12, qword_10094FB70);
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&_mh_execute_header, v36, v37, "RDAccountUtils: Process migration state change", v38, 2u);
  }

  v39 = swift_allocObject();
  v39[2] = v32;
  v39[3] = sub_10031D694;
  v39[4] = v33;
  v40 = objc_opt_self();
  v41 = v32;

  v42 = [v40 sharedInstance];
  v43 = [v42 accountStore];

  v44 = String._bridgeToObjectiveC()();
  v45 = [v43 accountWithIdentifier:v44];

  if (!v45)
  {
    goto LABEL_30;
  }

  v76 = v27;
  v46 = v43;
  v47 = [v45 accountType];
  if (!v47)
  {
    __break(1u);
    return;
  }

  v48 = v47;
  v49 = [v47 identifier];

  if (v49)
  {
    v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v52 = v51;

    v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (v52)
    {
      if (v50 == v53 && v52 == v54)
      {

        goto LABEL_34;
      }

      v64 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v64)
      {
LABEL_34:
        v65 = v46;
        v66 = v76;
        if ((v77 & 1) == 0 && ([v45 rem_didChooseToMigrate] & 1) == 0)
        {
          v67 = sub_1006BFC1C(v45);
          if (v68)
          {
            sub_1006BC500(v67, v68);
          }
        }

        v69 = [v40 sharedInstance];
        v70 = swift_allocObject();
        *(v70 + 16) = v45;
        *(v70 + 24) = 1;
        *(v70 + 32) = v66;
        *(v70 + 40) = sub_10031D6A0;
        *(v70 + 48) = v39;
        aBlock[4] = sub_10031D6AC;
        aBlock[5] = v70;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100007688;
        aBlock[3] = &unk_1008EDF00;
        v71 = _Block_copy(aBlock);
        v72 = v45;

        [v69 saveDidChooseToMigrate:v77 ^ 1 didFinishMigration:0 toACAccount:v72 inStore:v65 completionHandler:v71];
        _Block_release(v71);

        return;
      }

      goto LABEL_29;
    }
  }

  else
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

LABEL_29:

  v43 = v46;
LABEL_30:

  v60 = Logger.logObject.getter();
  v61 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    aBlock[0] = v63;
    *v62 = 136446210;
    *(v62 + 4) = sub_10000668C(v74, v31, aBlock);
    _os_log_impl(&_mh_execute_header, v60, v61, "RDAccountUtils: No ACAccount is found for updating migration state {acAccountID: %{public}s}", v62, 0xCu);
    sub_10000607C(v63);
  }
}

void sub_1003171E8(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    if (qword_100935EB8 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100006654(v13, qword_100941E18);
    v14 = a4;

    swift_errorRetain();
    v38 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v38, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v37 = v8;
      v40 = v17;
      *v16 = 136446722;
      *(v16 + 4) = sub_10000668C(a2, a3, &v40);
      *(v16 + 12) = 2082;
      v39 = a1;
      swift_errorRetain();
      sub_1000F5104(&qword_10093B608, &unk_1007B20D0);
      v18 = String.init<A>(describing:)();
      v20 = sub_10000668C(v18, v19, &v40);

      *(v16 + 14) = v20;
      *(v16 + 22) = 2082;
      v21 = [v14 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v22 = UUID.uuidString.getter();
      v24 = v23;
      (*(v9 + 8))(v12, v37);
      v25 = sub_10000668C(v22, v24, &v40);

      *(v16 + 24) = v25;
      _os_log_impl(&_mh_execute_header, v38, v15, "Failed to %{public}s {error: %{public}s, accountID: %{public}s}", v16, 0x20u);
      swift_arrayDestroy();

LABEL_10:

      return;
    }
  }

  else
  {
    if (qword_100935EB8 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_100006654(v26, qword_100941E18);
    v27 = a4;
    v38 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v38, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v40 = v30;
      *v29 = 136446210;
      v31 = [v27 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v32 = UUID.uuidString.getter();
      v34 = v33;
      (*(v9 + 8))(v12, v8);
      v35 = sub_10000668C(v32, v34, &v40);

      *(v29 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v38, v28, "Reloaded accounts succesfully {accountID: %{public}s}", v29, 0xCu);
      sub_10000607C(v30);

      goto LABEL_10;
    }
  }

  v36 = v38;
}

uint64_t sub_100317644(void *a1, int a2)
{
  v3 = v2;
  LODWORD(v4) = a2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v2 + 56);
  *(v2 + 56) = a1;
  v12 = *(v2 + 64);
  *(v2 + 64) = v4 & 1;
  sub_10031D788(v11, v12);
  if (v4)
  {
    swift_errorRetain();
    if (qword_100935EB8 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100006654(v13, qword_100941E18);
    sub_100066F20(a1, 1);

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();

    sub_100067078(a1, 1);
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v50 = v4;
      v4 = v16;
      v53[0] = swift_slowAlloc();
      *v4 = 136446466;
      v17 = [*(v2 + 24) uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v18 = UUID.uuidString.getter();
      v19 = v6;
      v21 = v20;
      (*(v7 + 8))(v10, v19);
      v22 = sub_10000668C(v18, v21, v53);

      *(v4 + 4) = v22;
      *(v4 + 12) = 2082;
      swift_getErrorValue();
      v23 = Error.rem_errorDescription.getter();
      v25 = sub_10000668C(v23, v24, v53);

      *(v4 + 14) = v25;
      _os_log_impl(&_mh_execute_header, v14, v15, "Completing migration {accountID: %{public}s, error: %{public}s}", v4, 0x16u);
      swift_arrayDestroy();

      LOBYTE(v4) = v50;
    }

    v26 = 3;
  }

  else
  {
    v27 = qword_100935EB8;
    v28 = a1;
    if (v27 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_100006654(v29, qword_100941E18);
    sub_100066F20(a1, 0);

    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();

    sub_100067078(a1, 0);
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v50 = v4;
      v4 = v32;
      v33 = swift_slowAlloc();
      v48 = v6;
      v34 = v33;
      v49 = swift_slowAlloc();
      v53[0] = v49;
      *v4 = 136446466;
      v35 = [*(v3 + 24) uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v36 = UUID.uuidString.getter();
      v37 = v7;
      v39 = v38;
      (*(v37 + 8))(v10, v48);
      v40 = sub_10000668C(v36, v39, v53);

      *(v4 + 4) = v40;
      *(v4 + 12) = 2114;
      *(v4 + 14) = v28;
      *v34 = a1;
      v41 = v28;
      _os_log_impl(&_mh_execute_header, v30, v31, "Completing migration {accountID: %{public}s, result: %{public}@}", v4, 0x16u);
      sub_1000050A4(v34, &unk_100938E70, &unk_100797230);

      sub_10000607C(v49);

      LOBYTE(v4) = v50;
    }

    v26 = 2;
  }

  *(v3 + 32) = v26;
  sub_10031571C(sub_10031D990, v3);
  swift_beginAccess();
  v42 = *(v3 + 40);
  *(v3 + 40) = _swiftEmptyArrayStorage;
  v43 = *(v42 + 16);
  if (v43)
  {
    v44 = (v42 + 40);
    do
    {
      v46 = *(v44 - 1);
      v45 = *v44;
      v51 = a1;
      v52 = v4 & 1;

      v46(&v51);

      v44 += 2;
      --v43;
    }

    while (v43);
  }
}

uint64_t sub_100317B94(uint64_t a1, void (*a2)(uint64_t, uint64_t, double))
{
  v4 = type metadata accessor for UnmigrateResponse.Error(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v36 = (&v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for UnmigrateResponse.Details(0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = (&v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_1000F5104(&qword_100937510, &qword_100792E00);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v35 - v13;
  v15 = type metadata accessor for UnmigrateResponse(0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1000F5104(&qword_100941F88, &unk_1007A2388);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19);
  v22 = (&v35 - v21);
  sub_100010364(a1, &v35 - v21, &qword_100941F88, &unk_1007A2388);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = *v22;
    swift_errorRetain();
    a2(0, v23, 0.0);
  }

  else
  {
    sub_10031D7F4(v22, v18, type metadata accessor for UnmigrateResponse);
    sub_100010364(v18, v14, &qword_100937510, &qword_100792E00);
    v25 = type metadata accessor for UnmigrateResponse.OneOf_Result(0);
    if ((*(*(v25 - 8) + 48))(v14, 1, v25) == 1)
    {
      v26 = objc_opt_self();
      v27 = String._bridgeToObjectiveC()();
      v28 = [v26 internalErrorWithDebugDescription:v27];

      a2(0, v28, 0.0);
    }

    else
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v29 = v36;
        sub_10031D7F4(v14, v36, type metadata accessor for UnmigrateResponse.Error);
        v30 = objc_opt_self();
        v37 = 0;
        v38 = 0xE000000000000000;
        _StringGuts.grow(_:)(38);

        v37 = 0xD000000000000024;
        v38 = 0x80000001007F5090;
        String.append(_:)(*v29);
        v31 = String._bridgeToObjectiveC()();

        v32 = [v30 internalErrorWithDebugDescription:v31];

        a2(0, v32, 0.0);
        v33 = type metadata accessor for UnmigrateResponse.Error;
        v34 = v29;
      }

      else
      {
        sub_10031D7F4(v14, v10, type metadata accessor for UnmigrateResponse.Details);
        a2(1, 0, *v10);
        v33 = type metadata accessor for UnmigrateResponse.Details;
        v34 = v10;
      }

      sub_10031D85C(v34, v33);
    }

    return sub_10031D85C(v18, type metadata accessor for UnmigrateResponse);
  }
}

id sub_100318024(void *a1, char a2)
{
  v5 = v2[6];
  os_unfair_lock_lock(v5);
  v6 = v2[9];
  v7.super.super.isa = Int._bridgeToObjectiveC()().super.super.isa;
  v8 = v2[10];
  v9 = v7.super.super.isa;
  v10 = Int._bridgeToObjectiveC()().super.super.isa;
  sub_100317644(a1, a2 & 1);
  os_unfair_lock_unlock(v5);
  sub_1000F5104(&unk_100939240, &unk_100798990);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100791340;
  strcpy((inited + 32), "failureCount");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  *(inited + 48) = v10;
  *(inited + 56) = 0x697461636F766E69;
  *(inited + 64) = 0xEF746E756F436E6FLL;
  *(inited + 72) = v9;
  sub_10038D880(inited);
  swift_setDeallocating();
  sub_1000F5104(&unk_100939250, &unk_100795D30);
  swift_arrayDestroy();
  if (a2)
  {
    sub_100066F20(a1, 1);
    swift_errorRetain();
LABEL_5:
    type metadata accessor for Analytics();
    static Analytics.postEvent(_:payload:duration:error:performAutoBugCaptureOnError:)();
  }

  [a1 remindersMigrated];
  isa = UInt._bridgeToObjectiveC()().super.super.isa;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1002C8F74(isa, 0xD000000000000011, 0x80000001007F4EC0, isUniquelyReferenced_nonNull_native);
  [a1 listsMigrated];
  v14 = UInt._bridgeToObjectiveC()().super.super.isa;
  v15 = swift_isUniquelyReferenced_nonNull_native();
  sub_1002C8F74(v14, 0x67694D737473696CLL, 0xED00006465746172, v15);
  [a1 isObserver];
  v16 = Bool._bridgeToObjectiveC()().super.super.isa;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  sub_1002C8F74(v16, 0x76726573624F7369, 0xEA00000000007265, v17);
  result = [a1 state];
  if (result)
  {
    v19 = result;
    v20 = swift_isUniquelyReferenced_nonNull_native();
    sub_1002C8F74(v19, 0x6574617473, 0xE500000000000000, v20);
    [a1 timeElapsed];
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

BOOL sub_100318344()
{
  sub_1000060C8(0, &qword_100936EB8, REMDaemonUserDefaults_ptr);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [ObjCClassFromMetadata daemonUserDefaults];
  v3 = [v2 cloudKitMigrationMaxNumInvocations];

  if (v3)
  {
    v4 = [v3 integerValue];
  }

  else
  {
    v4 = 50;
  }

  v5 = [ObjCClassFromMetadata daemonUserDefaults];
  v6 = [v5 cloudKitMigrationMaxNumFailures];

  if (v6)
  {
    v7 = [v6 integerValue];
  }

  else
  {
    v7 = 10;
  }

  return *(v0 + 72) >= v4 || *(v0 + 80) >= v7;
}

void sub_10031845C(uint64_t a1, char a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v36 = *(v10 - 8);
  v37 = v10;
  v11 = *(v36 + 64);
  __chkstk_darwin(v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchTime();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v22 = &v31 - v21;
  if (a2)
  {
    v23 = *(v2 + 48);
    os_unfair_lock_lock(v23);
    sub_100314078(0);

    os_unfair_lock_unlock(v23);
  }

  else
  {
    v34 = v5;
    v35 = v6;
    v24 = v20;
    v25 = *(v2 + 24);
    if (qword_100935D18 != -1)
    {
      swift_once();
    }

    v31 = qword_100974CB0;
    static DispatchTime.now()();
    + infix(_:_:)();
    v26 = *(v15 + 8);
    v32 = v24;
    v33 = v26;
    v26(v19, v24);
    v27 = swift_allocObject();
    v27[2] = v2;
    v27[3] = v25;
    v27[4] = a1;
    aBlock[4] = sub_10031D6C0;
    aBlock[5] = v27;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100019200;
    aBlock[3] = &unk_1008EDF50;
    v28 = _Block_copy(aBlock);

    v29 = v25;
    static DispatchQoS.unspecified.getter();
    v38 = _swiftEmptyArrayStorage;
    sub_10031D8C4(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000F5104(&unk_100939E50, &unk_100791AD0);
    sub_10000CB90(&qword_100936EA0, &unk_100939E50, &unk_100791AD0);
    v30 = v34;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v28);
    (*(v35 + 8))(v9, v30);
    (*(v36 + 8))(v13, v37);
    v33(v22, v32);
  }
}

void sub_1003188A0(uint64_t a1, void *a2, double a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 90) == 1)
  {
    if (qword_100935EB8 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100006654(v11, qword_100941E18);
    v12 = a2;
    v34 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v34, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v35 = v15;
      *v14 = 136446210;
      v16 = [v12 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v17 = UUID.uuidString.getter();
      v19 = v18;
      (*(v7 + 8))(v10, v6);
      v20 = sub_10000668C(v17, v19, &v35);

      *(v14 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v34, v13, "Cancel delayed retry becaue migration client was dismissed {accountID: %{public}s}", v14, 0xCu);
      sub_10000607C(v15);
    }

    else
    {
      v33 = v34;
    }
  }

  else
  {
    if (qword_100935EB8 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100006654(v21, qword_100941E18);
    v22 = a2;
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v35 = v26;
      *v25 = 134349314;
      *(v25 + 4) = a3;
      *(v25 + 12) = 2082;
      v27 = [v22 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v28 = UUID.uuidString.getter();
      v30 = v29;
      (*(v7 + 8))(v10, v6);
      v31 = sub_10000668C(v28, v30, &v35);

      *(v25 + 14) = v31;
      _os_log_impl(&_mh_execute_header, v23, v24, "Retry migration after delay {delay: %{public}f, accountID: %{public}s}", v25, 0x16u);
      sub_10000607C(v26);
    }

    v32 = *(a1 + 48);
    os_unfair_lock_lock(v32);
    sub_100314078(0);
    os_unfair_lock_unlock(v32);
  }
}

void sub_100318CB0(uint64_t a1, uint64_t a2, unsigned int a3, int a4)
{
  v111 = a4;
  v112 = a3;
  v113 = a2;
  v6 = sub_1000F5104(&qword_100937508, &qword_100792DF8);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v106 - v8;
  Step = type metadata accessor for MigrateResponse.NextStep(0);
  v11 = *(Step - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(Step);
  v110 = &v106 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v109 = &v106 - v16;
  v17 = __chkstk_darwin(v15);
  v108 = &v106 - v18;
  v19 = __chkstk_darwin(v17);
  v107 = &v106 - v20;
  v21 = __chkstk_darwin(v19);
  v106 = &v106 - v22;
  __chkstk_darwin(v21);
  v24 = &v106 - v23;
  v25 = type metadata accessor for UUID();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  __chkstk_darwin(v25);
  v29 = &v106 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = v4;
  v30 = [*(v4 + 24) uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v31 = UUID.uuidString.getter();
  v115 = v32;
  (*(v26 + 8))(v29, v25);
  sub_100010364(a1, v9, &qword_100937508, &qword_100792DF8);
  if ((*(v11 + 48))(v9, 1, Step) == 1)
  {
    sub_1000050A4(v9, &qword_100937508, &qword_100792DF8);
    if (qword_100935EB8 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_100006654(v33, qword_100941E18);
    v34 = v115;

    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();

    v37 = os_log_type_enabled(v35, v36);
    v38 = v114;
    v39 = v31;
    v40 = v112;
    if (v37)
    {
      v34 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v117 = v41;
      *v34 = 136446210;
      *(v34 + 4) = sub_10000668C(v31, v115, &v117);
      _os_log_impl(&_mh_execute_header, v35, v36, "No next-step info from Server. Client will fallback to handle retry by itself {accountID: %{public}s}", v34, 0xCu);
      sub_10000607C(v41);
    }

    v42 = v113;
    if ((v111 & 1) == 0)
    {
      goto LABEL_9;
    }

    v43 = *(v38 + 80);
    v44 = __OFADD__(v43, 1);
    v45 = v43 + 1;
    if (!v44)
    {
      *(v38 + 80) = v45;
      sub_10031571C(sub_10031D990, v38);
LABEL_9:
      v46 = sub_100318344();

      v47 = Logger.logObject.getter();
      if (v46)
      {
        v48 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v47, v48))
        {
          v49 = swift_slowAlloc();
          v50 = swift_slowAlloc();
          v117 = v50;
          *v49 = 134349570;
          v51 = *(v38 + 80);
          *(v49 + 4) = *(v38 + 72);
          *(v49 + 12) = 2050;
          *(v49 + 14) = v51;

          *(v49 + 22) = 2082;
          *(v49 + 24) = sub_10000668C(v39, v115, &v117);
          _os_log_impl(&_mh_execute_header, v47, v48, "Client terminated migration after too many retries {invocationCount: %{public}ld, failureCount: %{public}ld, accountID: %{public}s}", v49, 0x20u);
          sub_10000607C(v50);
        }

        else
        {
        }

        v96 = objc_opt_self();
        v117 = 0;
        v118 = 0xE000000000000000;
        _StringGuts.grow(_:)(94);
        v97._countAndFlagsBits = 0xD000000000000022;
        v97._object = 0x80000001007F4EE0;
        String.append(_:)(v97);
        v116 = *(v38 + 72);
        v98._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v98);

        v99._object = 0x80000001007F4F10;
        v99._countAndFlagsBits = 0xD000000000000011;
        String.append(_:)(v99);
        v116 = *(v38 + 80);
        v100._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v100);

        v101._countAndFlagsBits = 0xD000000000000024;
        v101._object = 0x80000001007F4F30;
        String.append(_:)(v101);
        v102._countAndFlagsBits = v39;
        v102._object = v115;
        String.append(_:)(v102);

        v103._countAndFlagsBits = 46;
        v103._object = 0xE100000000000000;
        String.append(_:)(v103);
        v104 = String._bridgeToObjectiveC()();

        v105 = [v96 internalErrorWithDebugDescription:v104];

        *(v38 + 88) = 1;
        sub_10031571C(sub_10031D990, v38);
        sub_100318024(v105, 1);
        sub_100316840();
      }

      else
      {
        v79 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v47, v79))
        {
          v80 = swift_slowAlloc();
          v81 = swift_slowAlloc();
          v117 = v81;
          *v80 = 134349826;
          v82 = *&v42;
          if (v40)
          {
            v82 = 0.0;
          }

          *(v80 + 4) = v82;
          v83 = *(v38 + 80);
          *(v80 + 14) = *(v38 + 72);
          *(v80 + 12) = 2050;
          *(v80 + 22) = 2050;
          *(v80 + 24) = v83;

          *(v80 + 32) = 2082;
          v84 = sub_10000668C(v39, v115, &v117);

          *(v80 + 34) = v84;
          _os_log_impl(&_mh_execute_header, v47, v79, "Client will retry migration {delay: %{public}f, invocationCount: %{public}ld, failureCount: %{public}ld, accountID: %{public}s}", v80, 0x2Au);
          sub_10000607C(v81);
        }

        else
        {
        }

        sub_10031845C(v42, v40 & 1);
      }

      return;
    }

    __break(1u);
    goto LABEL_33;
  }

  sub_10031D7F4(v9, v24, type metadata accessor for MigrateResponse.NextStep);
  v34 = v24;
  if (v24[1] == 1)
  {
    v40 = v31;
    if (qword_100935EB8 == -1)
    {
LABEL_14:
      v52 = type metadata accessor for Logger();
      sub_100006654(v52, qword_100941E18);
      v53 = v106;
      sub_10031D6CC(v34, v106, type metadata accessor for MigrateResponse.NextStep);
      v54 = v107;
      sub_10031D6CC(v34, v107, type metadata accessor for MigrateResponse.NextStep);

      v55 = Logger.logObject.getter();
      v56 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        v58 = v34;
        v59 = swift_slowAlloc();
        v117 = v59;
        *v57 = 136446722;
        *(v57 + 4) = sub_10000668C(v40, v115, &v117);
        *(v57 + 12) = 1026;
        v60 = *(v53 + 8);
        sub_10031D85C(v53, type metadata accessor for MigrateResponse.NextStep);
        *(v57 + 14) = v60;
        *(v57 + 18) = 1026;
        v61 = v54;
        v62 = *(v54 + 12);
        sub_10031D85C(v61, type metadata accessor for MigrateResponse.NextStep);
        *(v57 + 20) = v62;
        _os_log_impl(&_mh_execute_header, v55, v56, "Server terminated migration after too many retries {accountID: %{public}s, invocationCount: %{public}d, failureCount: %{public}d}", v57, 0x18u);
        sub_10000607C(v59);
        v34 = v58;
      }

      else
      {
        sub_10031D85C(v54, type metadata accessor for MigrateResponse.NextStep);
        sub_10031D85C(v53, type metadata accessor for MigrateResponse.NextStep);
      }

      v85 = objc_opt_self();
      v117 = 0;
      v118 = 0xE000000000000000;
      _StringGuts.grow(_:)(94);
      v86._countAndFlagsBits = 0xD000000000000022;
      v86._object = 0x80000001007F4F60;
      String.append(_:)(v86);
      LODWORD(v116) = *(v34 + 2);
      v87._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v87);

      v88._object = 0x80000001007F4F10;
      v88._countAndFlagsBits = 0xD000000000000011;
      String.append(_:)(v88);
      LODWORD(v116) = *(v34 + 3);
      v89._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v89);

      v90._countAndFlagsBits = 0xD000000000000024;
      v90._object = 0x80000001007F4F30;
      String.append(_:)(v90);
      v91._countAndFlagsBits = v40;
      v91._object = v115;
      String.append(_:)(v91);

      v92._countAndFlagsBits = 46;
      v92._object = 0xE100000000000000;
      String.append(_:)(v92);
      v93 = String._bridgeToObjectiveC()();

      v94 = [v85 internalErrorWithDebugDescription:v93];

      v95 = v114;
      *(v114 + 88) = 1;
      sub_10031571C(sub_10031D990, v95);
      sub_100318024(v94, 1);
      sub_100316840();

      sub_10031D85C(v34, type metadata accessor for MigrateResponse.NextStep);
      return;
    }

LABEL_33:
    swift_once();
    goto LABEL_14;
  }

  v63 = v31;
  if (qword_100935EB8 != -1)
  {
    swift_once();
  }

  v64 = type metadata accessor for Logger();
  sub_100006654(v64, qword_100941E18);
  v65 = v108;
  sub_10031D6CC(v24, v108, type metadata accessor for MigrateResponse.NextStep);
  v66 = v24;
  v67 = v109;
  sub_10031D6CC(v66, v109, type metadata accessor for MigrateResponse.NextStep);
  v68 = v110;
  sub_10031D6CC(v34, v110, type metadata accessor for MigrateResponse.NextStep);

  v69 = Logger.logObject.getter();
  v70 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v117 = v72;
    *v71 = 67240962;
    v73 = v34;
    v74 = *(v65 + 4);
    sub_10031D85C(v65, type metadata accessor for MigrateResponse.NextStep);
    *(v71 + 4) = v74;
    *(v71 + 8) = 1026;
    v75 = v67;
    v76 = *(v67 + 8);
    sub_10031D85C(v75, type metadata accessor for MigrateResponse.NextStep);
    *(v71 + 10) = v76;
    *(v71 + 14) = 1026;
    v77 = *(v68 + 12);
    sub_10031D85C(v68, type metadata accessor for MigrateResponse.NextStep);
    *(v71 + 16) = v77;
    *(v71 + 20) = 2082;
    v78 = sub_10000668C(v63, v115, &v117);

    *(v71 + 22) = v78;
    v34 = v73;
    _os_log_impl(&_mh_execute_header, v69, v70, "Server instructed to retry migration {delay: %{public}d, invocationCount: %{public}d, failureCount: %{public}d, accountID: %{public}s}", v71, 0x1Eu);
    sub_10000607C(v72);
  }

  else
  {
    sub_10031D85C(v68, type metadata accessor for MigrateResponse.NextStep);
    sub_10031D85C(v67, type metadata accessor for MigrateResponse.NextStep);
    sub_10031D85C(v65, type metadata accessor for MigrateResponse.NextStep);
  }

  sub_10031845C(COERCE__INT64(*(v34 + 1)), 0);
  sub_10031D85C(v34, type metadata accessor for MigrateResponse.NextStep);
}

void sub_100319AC0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v185 = a2;
  v179 = a1;
  v4 = type metadata accessor for MigrateResponse.Error(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v167 = (&ObjCClassFromMetadata - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v6);
  v168 = &ObjCClassFromMetadata - v8;
  v164 = type metadata accessor for REMMigrationResultState();
  v163 = *(v164 - 8);
  v9 = *(v163 + 64);
  __chkstk_darwin(v164);
  v162 = &ObjCClassFromMetadata - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for MigrateResponse.Details(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v169 = &ObjCClassFromMetadata - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  Step = type metadata accessor for MigrateResponse.NextStep(0);
  v182 = *(Step - 8);
  v14 = *(v182 + 64);
  __chkstk_darwin(Step);
  v171 = (&ObjCClassFromMetadata - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_1000F5104(&qword_100937508, &qword_100792DF8);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v181 = &ObjCClassFromMetadata - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v165 = &ObjCClassFromMetadata - v21;
  v22 = __chkstk_darwin(v20);
  v166 = (&ObjCClassFromMetadata - v23);
  v24 = __chkstk_darwin(v22);
  v170 = &ObjCClassFromMetadata - v25;
  __chkstk_darwin(v24);
  v174 = &ObjCClassFromMetadata - v26;
  v27 = sub_1000F5104(&qword_100937500, &qword_100792DF0);
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27 - 8);
  v30 = &ObjCClassFromMetadata - v29;
  v176 = type metadata accessor for MigrateResponse.OneOf_Result(0);
  v173 = *(v176 - 8);
  v31 = *(v173 + 64);
  v32 = __chkstk_darwin(v176);
  v172 = &ObjCClassFromMetadata - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v175 = &ObjCClassFromMetadata - v34;
  v35 = type metadata accessor for JSONEncodingOptions();
  v177 = *(v35 - 8);
  v36 = *(v177 + 64);
  __chkstk_darwin(v35);
  v38 = &ObjCClassFromMetadata - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_1000F5104(&qword_100941F70, &qword_1007A2368);
  v40 = *(*(v39 - 8) + 64);
  __chkstk_darwin(v39 - 8);
  v42 = &ObjCClassFromMetadata - v41;
  v180 = type metadata accessor for MigrateResponse(0);
  v43 = *(v180 - 8);
  v44 = *(v43 + 64);
  __chkstk_darwin(v180);
  v178 = (&ObjCClassFromMetadata - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
  v46 = type metadata accessor for UUID();
  v47 = *(v46 - 8);
  v48 = *(v47 + 64);
  __chkstk_darwin(v46);
  v50 = &ObjCClassFromMetadata - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = [v3[3] uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v183 = UUID.uuidString.getter();
  v53 = v52;
  (*(v47 + 8))(v50, v46);
  if (*(v3 + 90) == 1)
  {
    if (qword_100935EB8 != -1)
    {
      swift_once();
    }

    v54 = type metadata accessor for Logger();
    sub_100006654(v54, qword_100941E18);

    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v186[0] = v58;
      *v57 = 136446210;
      v59 = sub_10000668C(v183, v53, v186);

      *(v57 + 4) = v59;
      _os_log_impl(&_mh_execute_header, v55, v56, "Migration client is told to dismiss. Ignore server response. {accountID: %{public}s}", v57, 0xCu);
      sub_10000607C(v58);
    }

    else
    {
    }

    return;
  }

  v60 = v3;
  sub_1000060C8(0, &qword_100936EB8, REMDaemonUserDefaults_ptr);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v61 = [ObjCClassFromMetadata daemonUserDefaults];
  v62 = [v61 cloudKitMigrationDelayAfterError];

  if (v62)
  {
    [v62 doubleValue];
    v64 = v63;

    v65 = v64;
    v66 = Step;
    if (v185)
    {
LABEL_9:
      if (qword_100935EB8 != -1)
      {
        swift_once();
      }

      v67 = type metadata accessor for Logger();
      sub_100006654(v67, qword_100941E18);

      swift_errorRetain();
      v68 = Logger.logObject.getter();
      v69 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        v186[0] = v72;
        *v70 = 138543618;
        v73 = _convertErrorToNSError(_:)();
        *(v70 + 4) = v73;
        *v71 = v73;
        *(v70 + 12) = 2082;
        v74 = v65;
        v75 = sub_10000668C(v183, v53, v186);

        *(v70 + 14) = v75;
        v65 = v74;
        _os_log_impl(&_mh_execute_header, v68, v69, "Migrate request failed {error: %{public}@, accountID: %{public}s}", v70, 0x16u);
        sub_1000050A4(v71, &unk_100938E70, &unk_100797230);

        sub_10000607C(v72);
      }

      else
      {
      }

      v77 = v181;
      (*(v182 + 56))(v181, 1, 1, v66);
LABEL_27:
      sub_100318CB0(v77, v65, 0, 1);
      sub_1000050A4(v77, &qword_100937508, &qword_100792DF8);
      return;
    }
  }

  else
  {
    v65 = 0x3FF0000000000000;
    v66 = Step;
    if (v185)
    {
      goto LABEL_9;
    }
  }

  sub_100010364(v179, v42, &qword_100941F70, &qword_1007A2368);
  v76 = v180;
  if ((*(v43 + 48))(v42, 1, v180) == 1)
  {
    sub_1000050A4(v42, &qword_100941F70, &qword_1007A2368);
LABEL_21:
    v83 = Step;
    if (qword_100935EB8 != -1)
    {
      swift_once();
    }

    v84 = type metadata accessor for Logger();
    sub_100006654(v84, qword_100941E18);

    v85 = Logger.logObject.getter();
    v86 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v85, v86))
    {
      v87 = v65;
      v88 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      v186[0] = v89;
      *v88 = 136446210;
      v90 = sub_10000668C(v183, v53, v186);

      *(v88 + 4) = v90;
      _os_log_impl(&_mh_execute_header, v85, v86, "Invalid response from migrate request {accountID: %{public}s}", v88, 0xCu);
      sub_10000607C(v89);

      v65 = v87;
    }

    else
    {
    }

    v77 = v181;
    (*(v182 + 56))(v181, 1, 1, v83);
    goto LABEL_27;
  }

  v185 = v65;
  v78 = v178;
  sub_10031D7F4(v42, v178, type metadata accessor for MigrateResponse);
  JSONEncodingOptions.init()();
  sub_10031D8C4(&qword_1009376B0, type metadata accessor for MigrateResponse);
  v79 = Message.jsonString(options:)();
  v81 = v80;
  v82 = v79;
  (*(v177 + 8))(v38, v35);
  sub_100010364(v78 + *(v76 + 20), v30, &qword_100937500, &qword_100792DF0);
  if ((*(v173 + 48))(v30, 1, v176) == 1)
  {

    sub_10031D85C(v78, type metadata accessor for MigrateResponse);
    sub_1000050A4(v30, &qword_100937500, &qword_100792DF0);
    v65 = v185;
    goto LABEL_21;
  }

  sub_10031D7F4(v30, v175, type metadata accessor for MigrateResponse.OneOf_Result);
  v91 = Step;
  if (qword_100935EB8 != -1)
  {
    swift_once();
  }

  v92 = type metadata accessor for Logger();
  v93 = sub_100006654(v92, qword_100941E18);

  v179 = v93;
  v94 = Logger.logObject.getter();
  v95 = static os_log_type_t.default.getter();

  v96 = os_log_type_enabled(v94, v95);
  v181 = v60;
  if (v96)
  {
    v97 = swift_slowAlloc();
    v186[0] = swift_slowAlloc();
    *v97 = 136446466;
    v98 = sub_10000668C(v82, v81, v186);

    *(v97 + 4) = v98;
    *(v97 + 12) = 2082;
    *(v97 + 14) = sub_10000668C(v183, v53, v186);
    _os_log_impl(&_mh_execute_header, v94, v95, "Migration service response received {json: %{public}s, accountID: %{public}s}", v97, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v99 = v182;
  v100 = v170;
  v101 = *(v182 + 56);
  v101(v174, 1, 1, v91);
  v102 = *(v180 + 32);
  sub_100010364(v178 + v102, v100, &qword_100937508, &qword_100792DF8);
  v103 = *(v99 + 48);
  if (v103(v100, 1, v91) == 1)
  {
    v104 = v171;
    *v171 = 0;
    *(v104 + 1) = 0;
    *(v104 + 1) = 0;
    v105 = v104 + *(v91 + 36);
    UnknownStorage.init()();
    if (v103(v100, 1, v91) != 1)
    {
      sub_1000050A4(v100, &qword_100937508, &qword_100792DF8);
    }
  }

  else
  {
    v104 = v171;
    sub_10031D7F4(v100, v171, type metadata accessor for MigrateResponse.NextStep);
  }

  v106 = v104;
  v107 = *v104;
  sub_10031D85C(v106, type metadata accessor for MigrateResponse.NextStep);
  if (v107)
  {
    v108 = v165;
    sub_100010364(v178 + v102, v165, &qword_100937508, &qword_100792DF8);
    v109 = v103(v108, 1, v91);
    v110 = v174;
    if (v109 == 1)
    {
      v111 = v166;
      *v166 = 0;
      *(v111 + 1) = 0;
      *(v111 + 1) = 0;
      v112 = v111 + *(v91 + 36);
      UnknownStorage.init()();
      sub_1000050A4(v110, &qword_100937508, &qword_100792DF8);
      if (v103(v108, 1, v91) != 1)
      {
        sub_1000050A4(v108, &qword_100937508, &qword_100792DF8);
      }
    }

    else
    {
      sub_1000050A4(v174, &qword_100937508, &qword_100792DF8);
      v111 = v166;
      sub_10031D7F4(v108, v166, type metadata accessor for MigrateResponse.NextStep);
    }

    v101(v111, 0, 1, v91);
    sub_100031B58(v111, v110, &qword_100937508, &qword_100792DF8);
  }

  v113 = v175;
  v114 = v172;
  sub_10031D6CC(v175, v172, type metadata accessor for MigrateResponse.OneOf_Result);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v115 = v168;
    sub_10031D7F4(v114, v168, type metadata accessor for MigrateResponse.Error);
    v116 = v167;
    sub_10031D6CC(v115, v167, type metadata accessor for MigrateResponse.Error);

    v117 = Logger.logObject.getter();
    v118 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v117, v118))
    {
      v119 = swift_slowAlloc();
      v186[0] = swift_slowAlloc();
      *v119 = 136446466;
      v120 = *v116;
      v121 = v116[1];

      sub_10031D85C(v116, type metadata accessor for MigrateResponse.Error);
      v122 = sub_10000668C(v120, v121, v186);

      *(v119 + 4) = v122;
      *(v119 + 12) = 2082;
      v123 = sub_10000668C(v183, v53, v186);

      *(v119 + 14) = v123;
      _os_log_impl(&_mh_execute_header, v117, v118, "Migration server error {error: %{public}s, accountID: %{public}s}", v119, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_10031D85C(v116, type metadata accessor for MigrateResponse.Error);
    }

    v129 = v174;
    sub_100318CB0(v174, v185, 0, 1);
    sub_10031D85C(v115, type metadata accessor for MigrateResponse.Error);
    sub_1000050A4(v129, &qword_100937508, &qword_100792DF8);
    v130 = v175;
    goto LABEL_64;
  }

  v124 = v169;
  sub_10031D7F4(v114, v169, type metadata accessor for MigrateResponse.Details);
  if (*(v124 + 8) == 1)
  {
    v125 = [ObjCClassFromMetadata daemonUserDefaults];
    v126 = [v125 cloudKitMigrationObserverPollingInterval];

    if (v126)
    {
      [v126 doubleValue];
      v128 = v127;
    }

    else
    {
      v128 = 5.0;
    }

    v153 = Logger.logObject.getter();
    v154 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v153, v154))
    {
      v155 = swift_slowAlloc();
      v156 = swift_slowAlloc();
      v186[0] = v156;
      *v155 = 134349314;
      *(v155 + 4) = v128;
      *(v155 + 12) = 2082;
      v157 = sub_10000668C(v183, v53, v186);

      *(v155 + 14) = v157;
      v124 = v169;
      _os_log_impl(&_mh_execute_header, v153, v154, "We are an observer and will poll again in a %{public}f seconds {accountID: %{public}s}", v155, 0x16u);
      sub_10000607C(v156);
    }

    else
    {
    }

    v158 = *&v128;
    v159 = v174;
    v160 = v174;
    goto LABEL_63;
  }

  v131 = *v178;
  v132 = v178[1];
  v133 = v163;
  v134 = v162;
  v135 = v164;
  (*(v163 + 104))(v162, enum case for REMMigrationResultState.complete(_:), v164);
  v136 = REMMigrationResultState.rawValue.getter();
  v138 = v137;
  (*(v133 + 8))(v134, v135);
  if (v131 == v136 && v132 == v138)
  {
  }

  else
  {
    v139 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v139 & 1) == 0)
    {
      v159 = v174;
      v160 = v174;
      v158 = 0x3FF0000000000000;
LABEL_63:
      sub_100318CB0(v160, v158, 0, 0);
      sub_10031D85C(v124, type metadata accessor for MigrateResponse.Details);
      sub_1000050A4(v159, &qword_100937508, &qword_100792DF8);
      v130 = v113;
LABEL_64:
      sub_10031D85C(v130, type metadata accessor for MigrateResponse.OneOf_Result);
      sub_10031D85C(v178, type metadata accessor for MigrateResponse);
      return;
    }
  }

  v140 = *(v124 + 12);
  if ((v140 & 0x80000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v141 = *(v124 + 16);
    if ((v141 & 0x80000000) == 0)
    {
      v142 = *v124;
      v143 = v178;
      v144 = (v178 + *(v180 + 24));
      v145 = v124;
      v146 = *v144;
      v147 = v144[1];
      v148 = objc_allocWithZone(REMMigrationResult);
      v149 = String._bridgeToObjectiveC()();
      v150 = String._bridgeToObjectiveC()();
      v151 = [v148 initWithState:v149 IsObserver:0 timeElapsed:v140 listsMigrated:v141 remindersMigrated:v150 log:v142];

      v152 = v151;
      sub_100318024(v151, 0);

      sub_10031D85C(v145, type metadata accessor for MigrateResponse.Details);
      sub_1000050A4(v174, &qword_100937508, &qword_100792DF8);
      sub_10031D85C(v113, type metadata accessor for MigrateResponse.OneOf_Result);
      sub_10031D85C(v143, type metadata accessor for MigrateResponse);
      return;
    }
  }

  __break(1u);
}

uint64_t sub_10031B1B4@<X0>(void *a1@<X8>)
{
  sub_1000F5104(&qword_10093A578, &qword_1007A1E10);
  result = NSManagedObjectContext.rem_performAndWait<A>(_:)();
  if (!v1)
  {
    *a1 = v4;
  }

  return result;
}

void sub_10031B23C(uint64_t a1, char a2, uint64_t a3)
{
  v6 = type metadata accessor for MigrateRequest.User(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000060C8(0, &qword_100936EB8, REMDaemonUserDefaults_ptr);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = [ObjCClassFromMetadata daemonUserDefaults];
  v12 = [v11 cloudKitMigrationSimulatedError];

  if (v12)
  {
    v13 = [v12 integerValue];

    if (v13 >= 1)
    {
      if (v13 >> 31)
      {
        __break(1u);
        return;
      }

      *(a1 + *(type metadata accessor for MigrateRequest(0) + 28)) = v13;
    }
  }

  v14 = [ObjCClassFromMetadata daemonUserDefaults];
  v15 = [v14 cloudKitMigrationDisableCleanUp];

  if (a2)
  {
    v16 = 8;
  }

  else
  {
    v16 = 0;
  }

  if (v15)
  {
    v17 = v16 | 0x10;
  }

  else
  {
    v17 = v16;
  }

  *(a1 + *(type metadata accessor for MigrateRequest(0) + 20)) = v17;
  sub_10031D6CC(a3, v9, type metadata accessor for MigrateRequest.User);
  sub_1000050A4(a1, &qword_1009374F0, &qword_1007A2380);
  sub_10031D7F4(v9, a1, type metadata accessor for MigrateRequest.User);
  v18 = type metadata accessor for MigrateRequest.OneOf_Source(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v18 - 8) + 56))(a1, 0, 1, v18);
}

uint64_t sub_10031B468(uint64_t a1)
{
  v2 = sub_1000F5104(&qword_100941F70, &qword_1007A2368);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v17 - v4;
  v6 = type metadata accessor for MigrateResponse(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000F5104(&qword_100941F78, &unk_1007A2370);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = (&v17 - v13);
  sub_100010364(a1, &v17 - v13, &qword_100941F78, &unk_1007A2370);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = *v14;
    (*(v7 + 56))(v5, 1, 1, v6);
    swift_errorRetain();
    sub_100319AC0(v5, v15);

    return sub_1000050A4(v5, &qword_100941F70, &qword_1007A2368);
  }

  else
  {
    sub_10031D7F4(v14, v10, type metadata accessor for MigrateResponse);
    sub_10031D6CC(v10, v5, type metadata accessor for MigrateResponse);
    (*(v7 + 56))(v5, 0, 1, v6);
    sub_100319AC0(v5, 0);
    sub_1000050A4(v5, &qword_100941F70, &qword_1007A2368);
    return sub_10031D85C(v10, type metadata accessor for MigrateResponse);
  }
}

void sub_10031B6FC(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

id sub_10031B768(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = String._bridgeToObjectiveC()();

  v10 = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v6;
}

unsigned __int8 *sub_10031B844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v72 = a1;
  v73 = a2;
  v74 = a3;
  v75 = a4;
  sub_10031D734();

  result = String.init<A>(_:)();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_1002F6844();
    v42 = v41;

    v7 = v42;
    if ((v42 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v9 = v71;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v24 = v9 - 1;
        if (v24)
        {
          v25 = a5 + 48;
          v26 = a5 + 55;
          v27 = a5 + 87;
          if (a5 > 10)
          {
            v25 = 58;
          }

          else
          {
            v27 = 97;
            v26 = 65;
          }

          if (result)
          {
            v15 = 0;
            v28 = result + 1;
            v17 = 1;
            do
            {
              v29 = *v28;
              if (v29 < 0x30 || v29 >= v25)
              {
                if (v29 < 0x41 || v29 >= v26)
                {
                  v20 = 0;
                  if (v29 < 0x61 || v29 >= v27)
                  {
                    goto LABEL_129;
                  }

                  v30 = -87;
                }

                else
                {
                  v30 = -55;
                }
              }

              else
              {
                v30 = -48;
              }

              v31 = v15 * a5;
              if ((v31 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_128;
              }

              v32 = v29 + v30;
              v23 = __CFADD__(v31, v32);
              v15 = v31 + v32;
              if (v23)
              {
                goto LABEL_128;
              }

              ++v28;
              --v24;
            }

            while (v24);
LABEL_47:
            v17 = 0;
            v20 = v15;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

LABEL_128:
        v20 = 0;
        v17 = 1;
        goto LABEL_129;
      }

      goto LABEL_133;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v33 = a5 + 48;
        v34 = a5 + 55;
        v35 = a5 + 87;
        if (a5 > 10)
        {
          v33 = 58;
        }

        else
        {
          v35 = 97;
          v34 = 65;
        }

        if (result)
        {
          v36 = 0;
          v17 = 1;
          do
          {
            v37 = *result;
            if (v37 < 0x30 || v37 >= v33)
            {
              if (v37 < 0x41 || v37 >= v34)
              {
                v20 = 0;
                if (v37 < 0x61 || v37 >= v35)
                {
                  goto LABEL_129;
                }

                v38 = -87;
              }

              else
              {
                v38 = -55;
              }
            }

            else
            {
              v38 = -48;
            }

            v39 = v36 * a5;
            if ((v39 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v40 = v37 + v38;
            v23 = __CFADD__(v39, v40);
            v36 = v39 + v40;
            if (v23)
            {
              goto LABEL_128;
            }

            ++result;
            --v9;
          }

          while (v9);
          v17 = 0;
          v20 = v36;
          goto LABEL_129;
        }

        goto LABEL_67;
      }

      goto LABEL_128;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          v15 = 0;
          v16 = result + 1;
          v17 = 1;
          while (1)
          {
            v18 = *v16;
            if (v18 < 0x30 || v18 >= v12)
            {
              if (v18 < 0x41 || v18 >= v13)
              {
                v20 = 0;
                if (v18 < 0x61 || v18 >= v14)
                {
                  goto LABEL_129;
                }

                v19 = -87;
              }

              else
              {
                v19 = -55;
              }
            }

            else
            {
              v19 = -48;
            }

            v21 = v15 * a5;
            if ((v21 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v22 = v18 + v19;
            v23 = v21 >= v22;
            v15 = v21 - v22;
            if (!v23)
            {
              goto LABEL_128;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_47;
            }
          }
        }

LABEL_67:
        v20 = 0;
        v17 = 0;
LABEL_129:

        LOBYTE(v72) = v17;
        return (v20 | (v17 << 32));
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v43 = HIBYTE(v7) & 0xF;
  v72 = v8;
  v73 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v43)
      {
        v45 = 0;
        v63 = a5 + 48;
        v64 = a5 + 55;
        v65 = a5 + 87;
        if (a5 > 10)
        {
          v63 = 58;
        }

        else
        {
          v65 = 97;
          v64 = 65;
        }

        v66 = &v72;
        v17 = 1;
        while (1)
        {
          v67 = *v66;
          if (v67 < 0x30 || v67 >= v63)
          {
            if (v67 < 0x41 || v67 >= v64)
            {
              v20 = 0;
              if (v67 < 0x61 || v67 >= v65)
              {
                goto LABEL_129;
              }

              v68 = -87;
            }

            else
            {
              v68 = -55;
            }
          }

          else
          {
            v68 = -48;
          }

          v69 = v45 * a5;
          if ((v69 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v70 = v67 + v68;
          v23 = __CFADD__(v69, v70);
          v45 = v69 + v70;
          if (v23)
          {
            goto LABEL_128;
          }

          v66 = (v66 + 1);
          if (!--v43)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v43)
    {
      v44 = v43 - 1;
      if (v44)
      {
        v45 = 0;
        v46 = a5 + 48;
        v47 = a5 + 55;
        v48 = a5 + 87;
        if (a5 > 10)
        {
          v46 = 58;
        }

        else
        {
          v48 = 97;
          v47 = 65;
        }

        v49 = &v72 + 1;
        v17 = 1;
        while (1)
        {
          v50 = *v49;
          if (v50 < 0x30 || v50 >= v46)
          {
            if (v50 < 0x41 || v50 >= v47)
            {
              v20 = 0;
              if (v50 < 0x61 || v50 >= v48)
              {
                goto LABEL_129;
              }

              v51 = -87;
            }

            else
            {
              v51 = -55;
            }
          }

          else
          {
            v51 = -48;
          }

          v52 = v45 * a5;
          if ((v52 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v53 = v50 + v51;
          v23 = v52 >= v53;
          v45 = v52 - v53;
          if (!v23)
          {
            goto LABEL_128;
          }

          ++v49;
          if (!--v44)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v43)
  {
    v54 = v43 - 1;
    if (v54)
    {
      v45 = 0;
      v55 = a5 + 48;
      v56 = a5 + 55;
      v57 = a5 + 87;
      if (a5 > 10)
      {
        v55 = 58;
      }

      else
      {
        v57 = 97;
        v56 = 65;
      }

      v58 = &v72 + 1;
      v17 = 1;
      do
      {
        v59 = *v58;
        if (v59 < 0x30 || v59 >= v55)
        {
          if (v59 < 0x41 || v59 >= v56)
          {
            v20 = 0;
            if (v59 < 0x61 || v59 >= v57)
            {
              goto LABEL_129;
            }

            v60 = -87;
          }

          else
          {
            v60 = -55;
          }
        }

        else
        {
          v60 = -48;
        }

        v61 = v45 * a5;
        if ((v61 & 0xFFFFFFFF00000000) != 0)
        {
          goto LABEL_128;
        }

        v62 = v59 + v60;
        v23 = __CFADD__(v61, v62);
        v45 = v61 + v62;
        if (v23)
        {
          goto LABEL_128;
        }

        ++v58;
        --v54;
      }

      while (v54);
LABEL_127:
      v17 = 0;
      v20 = v45;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_10031BDCC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v13 = 0;
    return v13 | (((a4 >> 60) & 1) << 40);
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v14[0] = a3;
    v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v14;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v11 = _StringObject.sharedUTF8.getter();
  }

  result = sub_10031CF04(v11, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v15 = BYTE4(result) & 1;
    v13 = result | ((BYTE4(result) & 1) << 32);
    return v13 | (((a4 >> 60) & 1) << 40);
  }

  return result;
}

void sub_10031BE94()
{
  v45 = type metadata accessor for UUID();
  v43 = *(v45 - 8);
  v0 = *(v43 + 64);
  __chkstk_darwin(v45);
  v41 = &v33 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1000F5104(&qword_100941F90, &qword_1007A2398);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v33 - v7;
  if (qword_100935EB8 != -1)
  {
    goto LABEL_26;
  }

  while (1)
  {
    v9 = type metadata accessor for Logger();
    sub_100006654(v9, qword_100941E18);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Notify all migration clients to dismiss", v12, 2u);
    }

    if (qword_100935EC8 != -1)
    {
      swift_once();
    }

    v34 = qword_100941E38;
    os_unfair_lock_lock(qword_100941E38);
    if (qword_100935EC0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v13 = *(off_100941E30 + 8);
    v36 = off_100941E30 + 64;
    v14 = 1 << *(off_100941E30 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & v13;
    v35 = (v14 + 63) >> 6;
    v37 = v43 + 32;
    v38 = v43 + 16;
    v44 = (v43 + 8);
    v42 = off_100941E30;

    v17 = 0;
    v39 = v8;
    v40 = v6;
    v18 = v45;
    if (v16)
    {
      break;
    }

LABEL_12:
    if (v35 <= v17 + 1)
    {
      v20 = v17 + 1;
    }

    else
    {
      v20 = v35;
    }

    v21 = v20 - 1;
    while (1)
    {
      v19 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v19 >= v35)
      {
        v32 = sub_1000F5104(&qword_100941F98, &unk_1007A23A0);
        (*(*(v32 - 8) + 56))(v6, 1, 1, v32);
        v16 = 0;
        goto LABEL_20;
      }

      v16 = *&v36[8 * v19];
      ++v17;
      if (v16)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_26:
    swift_once();
  }

  while (1)
  {
    v19 = v17;
LABEL_19:
    v22 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    v23 = v22 | (v19 << 6);
    v24 = v42;
    v25 = v43;
    v26 = v41;
    (*(v43 + 16))(v41, v42[6] + *(v43 + 72) * v23, v18);
    v27 = *(v24[7] + 8 * v23);
    v28 = sub_1000F5104(&qword_100941F98, &unk_1007A23A0);
    v29 = *(v28 + 48);
    v30 = *(v25 + 32);
    v6 = v40;
    v30(v40, v26, v18);
    *&v6[v29] = v27;
    (*(*(v28 - 8) + 56))(v6, 0, 1, v28);

    v21 = v19;
    v8 = v39;
LABEL_20:
    sub_100031B58(v6, v8, &qword_100941F90, &qword_1007A2398);
    v31 = sub_1000F5104(&qword_100941F98, &unk_1007A23A0);
    if ((*(*(v31 - 8) + 48))(v8, 1, v31) == 1)
    {
      break;
    }

    *(*&v8[*(v31 + 48)] + 90) = 1;

    (*v44)(v8, v45);
    v17 = v21;
    if (!v16)
    {
      goto LABEL_12;
    }
  }

  off_100941E30 = sub_10038EB8C(_swiftEmptyArrayStorage);

  os_unfair_lock_unlock(v34);
}

uint64_t sub_10031C3BC(void *a1)
{
  if (qword_100935EB8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100006654(v2, qword_100941E18);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Purge all migration clients' states", v5, 2u);
  }

  v6 = String._bridgeToObjectiveC()();
  v7 = [a1 newBackgroundContextWithAuthor:v6];

  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_10031D8BC;
  *(v9 + 24) = v8;
  v13[4] = sub_1000FDA90;
  v13[5] = v9;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_10000F160;
  v13[3] = &unk_1008EE040;
  v10 = _Block_copy(v13);
  v11 = v7;

  [v11 performBlockAndWait:v10];

  _Block_release(v10);
  LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

  if (v11)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10031C608(void *a1, void *a2)
{
  v5 = swift_slowAlloc();
  *(v2 + 56) = 0;
  *(v2 + 64) = -1;
  *(v2 + 104) = 0;
  *(v2 + 112) = 0;
  *(v2 + 96) = 0;
  *(v2 + 16) = a2;
  *(v2 + 24) = a1;
  *(v2 + 32) = 0;
  *(v2 + 40) = _swiftEmptyArrayStorage;
  *(v2 + 48) = v5;
  *v5 = 0;
  *(v2 + 72) = 0;
  *(v2 + 80) = 0;
  *(v2 + 86) = 0;
  v6 = objc_opt_self();
  v7 = a2;
  v8 = a1;
  v9 = [v6 defaultCenter];
  v10 = kReachabilityChangedNotification;
  v11 = objc_opt_self();

  v12 = [v11 sharedReachabilityForInternetConnection];
  [v9 addObserver:v2 selector:"reachabilityChangedWithNotification:" name:v10 object:v12];

  return v2;
}

void sub_10031C72C(void *a1, void *a2)
{
  v56 = a2;
  v3 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v55 - v5;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v57 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v55 - v13;
  __chkstk_darwin(v12);
  v16 = &v55 - v15;
  v17 = [objc_opt_self() sharedInstance];
  v18 = [v17 accountStore];

  v19 = [a1 uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  UUID.uuidString.getter();
  v59 = *(v8 + 8);
  v60 = v7;
  v59(v16, v7);
  v20 = String._bridgeToObjectiveC()();

  v58 = v18;
  v21 = [v18 accountWithIdentifier:v20];

  if (!v21)
  {
    __break(1u);
    goto LABEL_26;
  }

  v22 = [v21 displayAccount];

  if (!v22)
  {
LABEL_26:
    __break(1u);
    return;
  }

  v23 = [v22 identifier];

  if (!v23)
  {
LABEL_6:
    if (qword_100935EB8 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_100006654(v25, qword_100941E18);
    v26 = a1;
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    v29 = os_log_type_enabled(v27, v28);
    v30 = v57;
    if (v29)
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v31 = 138543362;
      *(v31 + 4) = v26;
      *v32 = v26;
      v26 = v26;
      _os_log_impl(&_mh_execute_header, v27, v28, "Migration: account ID not found in the ACAccount store, will try to migrate anyway but expect failure {accountID: %{public}@}", v31, 0xCu);
      sub_1000050A4(v32, &unk_100938E70, &unk_100797230);
    }

    v33 = v26;
    v34 = v60;
    goto LABEL_12;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  UUID.init(uuidString:)();

  v24 = v60;
  if ((*(v8 + 48))(v6, 1, v60) == 1)
  {

    sub_1000050A4(v6, &unk_100939D90, "8\n\r");
    goto LABEL_6;
  }

  (*(v8 + 32))(v14, v6, v24);
  sub_1000060C8(0, &qword_1009399F0, off_1008D4120);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v33 = [ObjCClassFromMetadata objectIDWithUUID:isa];

  v59(v14, v24);
  v34 = v24;
  v30 = v57;
LABEL_12:
  if (qword_100935EC8 != -1)
  {
    swift_once();
  }

  v37 = qword_100941E38;
  os_unfair_lock_lock(qword_100941E38);
  if (qword_100935EC0 != -1)
  {
    swift_once();
  }

  v38 = [v33 uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  swift_beginAccess();
  v39 = off_100941E30;
  if (*(off_100941E30 + 2) && (v40 = sub_100363F20(v30), (v41 & 1) != 0))
  {
    v42 = *(v39[7] + 8 * v40);
    swift_endAccess();

    v59(v30, v34);
  }

  else
  {
    swift_endAccess();
    v59(v30, v34);
    if (qword_100935EB8 != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    sub_100006654(v43, qword_100941E18);
    v44 = v33;
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      *v47 = 138543362;
      *(v47 + 4) = v44;
      *v48 = v44;
      v49 = v44;
      _os_log_impl(&_mh_execute_header, v45, v46, "Creating new migration client {accountID: %{public}@}", v47, 0xCu);
      sub_1000050A4(v48, &unk_100938E70, &unk_100797230);
    }

    type metadata accessor for RDMigrationClient();
    swift_allocObject();
    v50 = v44;
    v51 = v56;
    v52 = sub_10031C608(v50, v51);

    swift_retain_n();
    sub_10031571C(sub_10031D5AC, v52);

    v53 = [v50 uuid];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v61 = off_100941E30;
    off_100941E30 = 0x8000000000000000;
    sub_1002C86E0(v52, v16, isUniquelyReferenced_nonNull_native);
    v59(v16, v60);
    off_100941E30 = v61;
    swift_endAccess();
  }

  os_unfair_lock_unlock(v37);
}

uint64_t sub_10031CF04(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_1002F6C3C(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_104;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = String.UTF8View._foreignDistance(from:to:)();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_1002F6C3C(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_1002F6C3C(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_100;
  }

  if (v25 < a3 >> 16)
  {
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  result = String.UTF8View._foreignDistance(from:to:)();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_99;
  }

  if (v26 < v13)
  {
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v41 = a6 + 87;
        if (a6 > 10)
        {
          v42 = a6 + 55;
        }

        else
        {
          v41 = 97;
          v42 = 65;
        }

        if (a6 <= 10)
        {
          v43 = a6 + 48;
        }

        else
        {
          v43 = 58;
        }

        if (v27)
        {
          v32 = 0;
          v44 = v27 + 1;
          v45 = result - 1;
          do
          {
            v46 = *v44;
            if (v46 < 0x30 || v46 >= v43)
            {
              if (v46 < 0x41 || v46 >= v42)
              {
                v37 = 0;
                v38 = 1;
                if (v46 < 0x61 || v46 >= v41)
                {
                  return v37 | (v38 << 32);
                }

                v47 = -87;
              }

              else
              {
                v47 = -55;
              }
            }

            else
            {
              v47 = -48;
            }

            v48 = v32 * a6;
            if ((v48 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_96;
            }

            v49 = v46 + v47;
            v32 = v48 + v49;
            if (__CFADD__(v48, v49))
            {
              goto LABEL_96;
            }

            ++v44;
            --v45;
          }

          while (v45);
LABEL_94:
          v38 = 0;
          v37 = v32;
          return v37 | (v38 << 32);
        }

        goto LABEL_95;
      }

      goto LABEL_96;
    }

    goto LABEL_103;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v50 = a6 + 87;
      if (a6 > 10)
      {
        v51 = a6 + 55;
      }

      else
      {
        v50 = 97;
        v51 = 65;
      }

      if (a6 <= 10)
      {
        v52 = a6 + 48;
      }

      else
      {
        v52 = 58;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v53 = *v27;
          if (v53 < 0x30 || v53 >= v52)
          {
            if (v53 < 0x41 || v53 >= v51)
            {
              v37 = 0;
              v38 = 1;
              if (v53 < 0x61 || v53 >= v50)
              {
                return v37 | (v38 << 32);
              }

              v54 = -87;
            }

            else
            {
              v54 = -55;
            }
          }

          else
          {
            v54 = -48;
          }

          v55 = v32 * a6;
          if ((v55 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_96;
          }

          v56 = v53 + v54;
          v32 = v55 + v56;
          if (__CFADD__(v55, v56))
          {
            goto LABEL_96;
          }

          ++v27;
          if (!--result)
          {
            goto LABEL_94;
          }
        }
      }

      goto LABEL_95;
    }

LABEL_96:
    v37 = 0;
    v38 = 1;
    return v37 | (v38 << 32);
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 87;
      if (a6 > 10)
      {
        v30 = a6 + 55;
      }

      else
      {
        v29 = 97;
        v30 = 65;
      }

      if (a6 <= 10)
      {
        v31 = a6 + 48;
      }

      else
      {
        v31 = 58;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v31)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              v38 = 1;
              if (v35 < 0x61 || v35 >= v29)
              {
                return v37 | (v38 << 32);
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          v39 = v32 * a6;
          if ((v39 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_96;
          }

          v40 = v35 + v36;
          v32 = v39 - v40;
          if (v39 < v40)
          {
            goto LABEL_96;
          }

          ++v33;
          if (!--v34)
          {
            goto LABEL_94;
          }
        }
      }

LABEL_95:
      v37 = 0;
      v38 = 0;
      return v37 | (v38 << 32);
    }

    goto LABEL_96;
  }

LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
  return result;
}

void sub_10031D370(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  [a1 setQueuePriority:-4];
  [a1 setQualityOfService:17];
  if (a2)
  {
    v18[4] = a2;
    v18[5] = a3;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 1107296256;
    v18[2] = sub_10031B6FC;
    v18[3] = a4;
    v8 = _Block_copy(v18);
  }

  else
  {
    v8 = 0;
  }

  [a1 setRequestCompletedBlock:v8];
  _Block_release(v8);
  v9 = dispatch thunk of CKCodeOperation.codeService.getter();
  if (v9)
  {
    v10 = v9;
    CKCodeService.add<A, B>(_:)();
  }

  else
  {
    swift_getObjectType();
    if (qword_100935EB8 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100006654(v11, qword_100941E18);
    v10 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v18[0] = v14;
      *v13 = 136315138;
      v15 = _typeName(_:qualified:)();
      v17 = sub_10000668C(v15, v16, v18);

      *(v13 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v10, v12, "TantorMigrationAPIAsyncOperationClient.perform %s: codeService is nil", v13, 0xCu);
      sub_10000607C(v14);
    }
  }
}

uint64_t sub_10031D598(uint64_t result)
{
  if ((result & 0xFFFC) != 0)
  {
    return 4;
  }

  else
  {
    return result;
  }
}

void sub_10031D5C0()
{
  if ([objc_opt_self() isInternetReachable])
  {
    v1 = *(v0 + 48);
    os_unfair_lock_lock(v1);
    if (*(v0 + 92) == 1)
    {
      v2 = *(v0 + 93);
      *(v0 + 92) = 0;
      sub_100314078(v2);
    }

    os_unfair_lock_unlock(v1);
  }
}

uint64_t sub_10031D6CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_10031D734()
{
  result = qword_100941F80;
  if (!qword_100941F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100941F80);
  }

  return result;
}

void sub_10031D788(void *a1, char a2)
{
  if (a2 != -1)
  {
    sub_100067078(a1, a2 & 1);
  }
}

uint64_t sub_10031D7A0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, *(a1 + 8));
}

id sub_10031D7D4(id result, char a2)
{
  if (a2 != -1)
  {
    return sub_100066F20(result, a2 & 1);
  }

  return result;
}

uint64_t sub_10031D7F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10031D85C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10031D8C4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10031D90C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  sub_1003132A4(v1);
}

uint64_t sub_10031D9C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v4;
    sub_1002C72CC(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v21;
  }

  else
  {
    v13 = *v4;
    v14 = sub_100005F4C(a3, a4);
    LOBYTE(v13) = v15;

    if (v13)
    {
      v16 = *v5;
      v17 = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v5;
      v22 = *v5;
      if (!v17)
      {
        sub_100373664();
        v18 = v22;
      }

      v19 = *(*(v18 + 48) + 16 * v14 + 8);

      v20 = *(*(v18 + 56) + 16 * v14 + 8);

      result = sub_1003328B8(v14, v18);
      *v5 = v18;
    }
  }

  return result;
}

uint64_t sub_10031DB24(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a5)(void))
{
  v6 = v5;
  if (a1)
  {
    v11 = *v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v5;
    a4(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v5 = v23;
  }

  else
  {
    v15 = *v5;
    v16 = sub_100005F4C(a2, a3);
    LOBYTE(v15) = v17;

    if (v15)
    {
      v18 = *v6;
      v19 = swift_isUniquelyReferenced_nonNull_native();
      v20 = *v6;
      v24 = *v6;
      if (!v19)
      {
        a5();
        v20 = v24;
      }

      v21 = *(*(v20 + 48) + 16 * v16 + 8);

      v22 = *(*(v20 + 56) + 8 * v16);

      result = sub_100332708(v16, v20);
      *v6 = v20;
    }
  }

  return result;
}

uint64_t sub_10031DC2C(uint64_t a1, uint64_t a2)
{
  v5 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v18 - v7;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9, v12) == 1)
  {
    sub_1000050A4(a1, &unk_100939D90, "8\n\r");
    sub_10036922C(a2, v8);
    (*(v10 + 8))(a2, v9);
    return sub_1000050A4(v8, &unk_100939D90, "8\n\r");
  }

  else
  {
    (*(v10 + 32))(v14, a1, v9);
    v16 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v2;
    sub_1002C81B4(v14, a2, isUniquelyReferenced_nonNull_native);
    result = (*(v10 + 8))(a2, v9);
    *v2 = v19;
  }

  return result;
}

uint64_t sub_10031DE1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_100005EE0(a1, v10);
    v6 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    sub_1002C88F0(v10, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v9;
  }

  else
  {
    sub_1000050A4(a1, &qword_100939ED0, &qword_100791B10);
    sub_1003693C4(a2, a3, v10);

    return sub_1000050A4(v10, &qword_100939ED0, &qword_100791B10);
  }

  return result;
}

uint64_t sub_10031DEEC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a5)(void))
{
  v6 = v5;
  if (a1)
  {
    v11 = *v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v5;
    a4(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v5 = v22;
  }

  else
  {
    v15 = *v5;
    v16 = sub_100005F4C(a2, a3);
    LOBYTE(v15) = v17;

    if (v15)
    {
      v18 = *v6;
      v19 = swift_isUniquelyReferenced_nonNull_native();
      v20 = *v6;
      v23 = *v6;
      if (!v19)
      {
        a5();
        v20 = v23;
      }

      v21 = *(*(v20 + 48) + 16 * v16 + 8);

      result = sub_100332708(v16, v20);
      *v6 = v20;
    }
  }

  return result;
}

uint64_t sub_10031DFF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_100054B6C(a1, v10);
    v6 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    sub_1002C92F0(v10, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v9;
  }

  else
  {
    sub_1000050A4(a1, &qword_100942150, &qword_1007A25D0);
    sub_1003697B4(a2, a3, v10);

    return sub_1000050A4(v10, &qword_100942150, &qword_1007A25D0);
  }

  return result;
}

void sub_10031E0C4(uint64_t a1, char a2, void *a3)
{
  v4 = v3;
  v5 = *v3;
  if (a2)
  {
    v6 = sub_10002B924(a3);
    if (v7)
    {
      v8 = v6;
      v9 = *v4;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v4;
      v15 = *v4;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_100376430();
        v11 = v15;
      }

      sub_100333718(v8, v11);
      *v4 = v11;
    }

    else
    {
    }
  }

  else
  {
    v13 = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v4;
    sub_1002C95FC(a1, a3, v13);

    *v4 = v16;
  }
}

uint64_t sub_10031E1BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    sub_1002C9B04(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v19;
  }

  else
  {
    v11 = *v3;
    v12 = sub_100005F4C(a2, a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v20 = *v4;
      if (!v15)
      {
        sub_100376878();
        v16 = v20;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      v18 = *(*(v16 + 56) + 8 * v12);

      result = sub_100332708(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

uint64_t sub_10031E2B4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v2;
    sub_1002C9FE4(a1, a2, isUniquelyReferenced_nonNull_native);
    v8 = type metadata accessor for UUID();
    result = (*(*(v8 - 8) + 8))(a2, v8);
    *v2 = v23;
  }

  else
  {
    v10 = *v2;
    v11 = sub_100363F20(a2);
    if (v12)
    {
      v13 = v11;
      v14 = *v3;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v3;
      v24 = *v3;
      if (!v15)
      {
        sub_100376A38();
        v16 = v24;
      }

      v17 = *(v16 + 48);
      v18 = type metadata accessor for UUID();
      v19 = *(v18 - 8);
      v20 = *(v19 + 8);
      v20(v17 + *(v19 + 72) * v13, v18);

      sub_1003338A4(v13, v16);
      result = (v20)(a2, v18);
      *v3 = v16;
    }

    else
    {
      v21 = type metadata accessor for UUID();
      v22 = *(*(v21 - 8) + 8);

      return v22(a2, v21);
    }
  }

  return result;
}

uint64_t sub_10031E474(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_100054B6C(a1, v10);
    v4 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    sub_1002CA1DC(v10, a2, isUniquelyReferenced_nonNull_native);
    v6 = type metadata accessor for UUID();
    result = (*(*(v6 - 8) + 8))(a2, v6);
    *v2 = v9;
  }

  else
  {
    sub_1000050A4(a1, &qword_100940AC8, &qword_1007A0510);
    sub_100369A64(a2, v10);
    v8 = type metadata accessor for UUID();
    (*(*(v8 - 8) + 8))(a2, v8);
    return sub_1000050A4(v10, &qword_100940AC8, &qword_1007A0510);
  }

  return result;
}

uint64_t sub_10031E590(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v2;
    sub_1002CA5B0(a1, a2, isUniquelyReferenced_nonNull_native);
    v8 = type metadata accessor for UUID();
    result = (*(*(v8 - 8) + 8))(a2, v8);
    *v2 = v24;
  }

  else
  {
    v10 = *v2;
    v11 = sub_100363F20(a2);
    if (v12)
    {
      v13 = v11;
      v14 = *v3;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v3;
      v25 = *v3;
      if (!v15)
      {
        sub_100376F7C();
        v16 = v25;
      }

      v17 = *(v16 + 48);
      v18 = type metadata accessor for UUID();
      v19 = *(v18 - 8);
      v20 = *(v19 + 8);
      v20(v17 + *(v19 + 72) * v13, v18);
      v21 = *(*(v16 + 56) + 8 * v13);

      sub_1003338A4(v13, v16);
      result = (v20)(a2, v18);
      *v3 = v16;
    }

    else
    {
      v22 = type metadata accessor for UUID();
      v23 = *(*(v22 - 8) + 8);

      return v23(a2, v22);
    }
  }

  return result;
}

void sub_10031E750(uint64_t a1, void *a2)
{
  v3 = v2;
  if (a1)
  {
    v5 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v2;
    sub_1002CA7C4(a1, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v16;
  }

  else
  {
    v7 = *v2;
    v8 = sub_10002B924(a2);
    if (v9)
    {
      v10 = v8;
      v11 = *v3;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v3;
      v17 = *v3;
      if (!v12)
      {
        sub_100377574();
        v13 = v17;
      }

      v14 = *(*(v13 + 56) + 8 * v10);

      sub_100333718(v10, v13);

      *v3 = v13;
    }

    else
    {
    }
  }
}

void *sub_10031E854(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  v3 = _HashTable.startBucket.getter();
  if (v3 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v5 = sub_100334068(v3, *(a1 + 36), 0, a1);
  v6 = v5;
  return v5;
}

uint64_t sub_10031E8F4(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = __CocoaDictionary.startIndex.getter();
    v5 = v4;
    v6 = __CocoaDictionary.endIndex.getter();
    v8 = v7;
    v9 = static __CocoaDictionary.Index.== infix(_:_:)();
    sub_100010E34(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_100010E34(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v11 = -1 << *(a1 + 32);
    v3 = _HashTable.startBucket.getter();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_10014ABC4(&v14, v3, v5, v2 != 0, a1);
  v13 = v12;
  sub_100010E34(v3, v5, v2 != 0);
  return v13;
}

uint64_t sub_10031EA3C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, BOOL, uint64_t))
{
  v4 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v5 = __CocoaSet.startIndex.getter();
    v7 = v6;
    v8 = __CocoaSet.endIndex.getter();
    v10 = v9;
    v11 = static __CocoaSet.Index.== infix(_:_:)();
    sub_100010E34(v8, v10, 1);
    if (v11)
    {
LABEL_3:
      sub_100010E34(v5, v7, v4 != 0);
      return 0;
    }
  }

  else
  {
    v13 = -1 << *(a1 + 32);
    v5 = _HashTable.startBucket.getter();
    v7 = *(a1 + 36);
    if (v5 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  v14 = a2(v5, v7, v4 != 0, a1);
  sub_100010E34(v5, v7, v4 != 0);
  return v14;
}

uint64_t sub_10031EB60(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  v3 = _HashTable.startBucket.getter();
  if (v3 == 1 << *(a1 + 32))
  {
    return 0;
  }

  sub_1003340B8(v3, *(a1 + 36), 0, a1);
}

void *sub_10031EBC8(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  v3 = _HashTable.startBucket.getter();
  if (v3 == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_10014ADD8(&v5, v3, *(a1 + 36), 0, a1);
  }
}

uint64_t sub_10031EC48(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  v3 = _HashTable.startBucket.getter();
  if (v3 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v5 = sub_100411E50(v3, *(a1 + 36), 0, a1);

  return v5;
}

uint64_t sub_10031ECC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = -1 << *(a1 + 32);
  result = _HashTable.startBucket.getter();
  if (result == 1 << *(a1 + 32))
  {
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  else
  {
    v6 = *(a1 + 36);

    return sub_100411DD0(result, v6, a1, a2);
  }

  return result;
}

void *sub_10031ED4C(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  v3 = _HashTable.startBucket.getter();
  if (v3 == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_10014AE5C(&v5, v3, *(a1 + 36), 0, a1);
  }
}

void sub_10031EDCC(uint64_t a1, void (*a2)(uint64_t *, id *), uint64_t a3, uint64_t a4)
{
  v18 = a1;
  v6 = a4 + 64;
  v7 = 1 << *(a4 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a4 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  if (v9)
  {
    while (1)
    {
      v12 = v11;
LABEL_8:
      v13 = (v12 << 9) | (8 * __clz(__rbit64(v9)));
      v14 = *(*(a4 + 56) + v13);
      v17[0] = *(*(a4 + 48) + v13);
      v17[1] = v14;
      v15 = v17[0];

      a2(&v18, v17);
      if (v4)
      {
        break;
      }

      v9 &= v9 - 1;

      v11 = v12;
      if (!v9)
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
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v10)
      {

        return;
      }

      v9 = *(v6 + 8 * v12);
      ++v11;
      if (v9)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

uint64_t sub_10031EF28(uint64_t a1, void (*a2)(uint64_t *, void *), uint64_t a3, uint64_t a4)
{
  v20 = a1;
  v6 = a4 + 64;
  v7 = 1 << *(a4 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a4 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  if (v9)
  {
    while (1)
    {
      v13 = v12;
LABEL_8:
      v14 = __clz(__rbit64(v9)) | (v13 << 6);
      v15 = (*(a4 + 48) + 16 * v14);
      v16 = v15[1];
      v17 = *(*(a4 + 56) + 8 * v14);
      v19[0] = *v15;
      v19[1] = v16;
      v19[2] = v17;

      a2(&v20, v19);
      if (v4)
      {
        break;
      }

      v9 &= v9 - 1;

      v12 = v13;
      if (!v9)
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

      if (v13 >= v10)
      {

        return v20;
      }

      v9 = *(v6 + 8 * v13);
      ++v12;
      if (v9)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

id sub_10031F090(id result, void (*a2)(id *, id *), uint64_t a3, unint64_t a4)
{
  v13 = result;
  if (a4 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; result = v10)
  {
    for (j = 0; ; ++j)
    {
      if ((a4 & 0xC000000000000001) != 0)
      {
        result = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        result = *(a4 + 8 * j + 32);
      }

      v8 = result;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v12 = result;
      a2(&v13, &v12);

      if (v4)
      {
      }

      if (v9 == i)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    v10 = result;
    i = _CocoaArrayWrapper.endIndex.getter();
  }

  return result;
}

uint64_t sub_10031F1B8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 632) = v5;
  *(v6 + 624) = a5;
  *(v6 + 616) = a4;
  *(v6 + 73) = a3;
  *(v6 + 608) = a2;
  *(v6 + 600) = a1;
  *(v6 + 640) = *v5;
  v7 = type metadata accessor for Date();
  *(v6 + 648) = v7;
  v8 = *(v7 - 8);
  *(v6 + 656) = v8;
  *(v6 + 664) = *(v8 + 64);
  *(v6 + 672) = swift_task_alloc();
  *(v6 + 680) = swift_task_alloc();
  v9 = sub_1000F5104(&unk_100939D90, "8\n\r");
  *(v6 + 688) = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  *(v6 + 696) = swift_task_alloc();
  *(v6 + 704) = swift_task_alloc();
  *(v6 + 712) = swift_task_alloc();
  *(v6 + 720) = swift_task_alloc();
  v11 = *(*(sub_1000F5104(&qword_1009420F8, &unk_1007A2508) - 8) + 64) + 15;
  *(v6 + 728) = swift_task_alloc();
  v12 = type metadata accessor for UUID();
  *(v6 + 736) = v12;
  v13 = *(v12 - 8);
  *(v6 + 744) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 752) = swift_task_alloc();
  *(v6 + 760) = swift_task_alloc();
  *(v6 + 768) = swift_task_alloc();
  *(v6 + 776) = swift_task_alloc();
  *(v6 + 784) = swift_task_alloc();
  *(v6 + 792) = swift_task_alloc();
  v15 = type metadata accessor for DispatchTime();
  *(v6 + 800) = v15;
  v16 = *(v15 - 8);
  *(v6 + 808) = v16;
  v17 = *(v16 + 64) + 15;
  *(v6 + 816) = swift_task_alloc();
  v18 = type metadata accessor for REMTrialNamespace();
  *(v6 + 824) = v18;
  v19 = *(v18 - 8);
  *(v6 + 832) = v19;
  v20 = *(v19 + 64) + 15;
  *(v6 + 840) = swift_task_alloc();
  v21 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  *(v6 + 848) = v21;
  v22 = *(v21 - 8);
  *(v6 + 856) = v22;
  v23 = *(v22 + 64) + 15;
  *(v6 + 864) = swift_task_alloc();
  *(v6 + 872) = swift_task_alloc();
  v24 = *(sub_1000F5104(&unk_10093F420, &unk_100797AE0) - 8);
  *(v6 + 880) = v24;
  *(v6 + 888) = *(v24 + 64);
  *(v6 + 896) = swift_task_alloc();
  *(v6 + 904) = swift_task_alloc();

  return _swift_task_switch(sub_10031F590, 0, 0);
}

uint64_t sub_10031F590()
{
  v1 = *(v0 + 608);
  v2 = swift_allocObject();
  *(v0 + 912) = v2;
  v50 = v2;
  *(v2 + 16) = 0;
  v3 = swift_allocObject();
  *(v0 + 920) = v3;
  v52 = v3;
  *(v3 + 16) = _swiftEmptyDictionarySingleton;
  v4 = swift_allocObject();
  *(v0 + 928) = v4;
  v53 = v4;
  *(v4 + 16) = 0;
  v5 = swift_allocObject();
  *(v0 + 936) = v5;
  v49 = v5;
  *(v5 + 16) = _swiftEmptyArrayStorage;
  v6 = swift_allocObject();
  *(v0 + 944) = v6;
  v48 = v6;
  *(v6 + 16) = _swiftEmptyArrayStorage;
  v7 = swift_allocObject();
  *(v0 + 952) = v7;
  v47 = v7;
  *(v7 + 16) = _swiftEmptyDictionarySingleton;
  v8 = *(v1 + 40);
  *(v0 + 960) = v8;
  v9 = *(v1 + 48);
  *(v0 + 968) = v9;
  v42 = v8;
  v43 = v9;
  if (v9)
  {
    v10 = *(v0 + 904);

    Locale.init(identifier:)();
    v11 = 0;
    v46 = *(v0 + 608);
    v12 = v9;
  }

  else
  {
    v12 = 0;
    v11 = 1;
    v46 = v1;
  }

  *(v0 + 976) = v12;
  v13 = *(v0 + 904);
  v14 = *(v0 + 896);
  v15 = *(v0 + 888);
  v16 = *(v0 + 880);
  v41 = *(v0 + 856);
  v44 = *(v0 + 848);
  v45 = *(v0 + 872);
  v17 = *(v0 + 632);
  v18 = *(v0 + 624);
  v39 = v14;
  v40 = *(v0 + 73);
  v51 = *(v0 + 600);
  v19 = type metadata accessor for Locale();
  (*(*(v19 - 8) + 56))(v13, v11, 1, v19);
  v20 = swift_allocObject();
  swift_weakInit();
  sub_100010364(v13, v14, &unk_10093F420, &unk_100797AE0);
  v21 = *(v16 + 80);
  *(v0 + 76) = v21;
  v22 = (v21 + 128) & ~v21;
  v23 = v22 + v15;
  v24 = (v22 + v15) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v24 + 23) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v25 + 15) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  *(v0 + 984) = v27;
  *(v27 + 16) = v20;
  *(v27 + 24) = v18;
  v28 = *v46;
  v29 = v46[1];
  v30 = v46[2];
  *(v27 + 73) = *(v46 + 41);
  *(v27 + 48) = v29;
  *(v27 + 64) = v30;
  *(v27 + 32) = v28;
  *(v27 + 96) = v50;
  *(v27 + 104) = v52;
  *(v27 + 112) = v53;
  *(v27 + 120) = v51;
  sub_100031B58(v39, v27 + v22, &unk_10093F420, &unk_100797AE0);
  *(v27 + v23) = v40;
  *(v27 + v24 + 8) = v48;
  *(v27 + v25) = v47;
  v31 = (v27 + v26);
  *v31 = v42;
  v31[1] = v43;
  *(v27 + ((v26 + 23) & 0xFFFFFFFFFFFFFFF8)) = v49;
  *(v0 + 140) = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
  v32 = *(v41 + 104);
  *(v0 + 992) = v32;
  *(v0 + 1000) = (v41 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v32(v45);

  v33 = v18;
  sub_10033251C(v46, v0 + 16);
  v34 = async function pointer to NSManagedObjectContext.perform<A>(schedule:_:)[1];

  v35 = swift_task_alloc();
  *(v0 + 1008) = v35;
  *v35 = v0;
  v35[1] = sub_10031F9B8;
  v36 = *(v0 + 872);
  v37 = *(v0 + 624);

  return NSManagedObjectContext.perform<A>(schedule:_:)(v35, v36, sub_1003324F0, v27, &type metadata for () + 8);
}

uint64_t sub_10031F9B8()
{
  v2 = *v1;
  v3 = *(*v1 + 1008);
  v4 = *v1;
  v2[127] = v0;

  v5 = v2[123];
  v6 = v2[109];
  v7 = v2[107];
  v8 = v2[106];
  if (v0)
  {
    v9 = v2[123];

    (*(v7 + 8))(v6, v8);
    v10 = sub_100320134;
  }

  else
  {
    v11 = *(v7 + 8);
    v2[128] = v11;
    v2[129] = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v11(v6, v8);

    v10 = sub_10031FB84;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_10031FB84()
{
  v68 = v0;
  if (!*(v0 + 968))
  {
    v62 = *(v0 + 992);
    v63 = *(v0 + 1000);
    v61 = *(v0 + 140);
    v6 = *(v0 + 76);
    v65 = *(v0 + 952);
    v66 = *(v0 + 944);
    v57 = *(v0 + 912);
    v58 = *(v0 + 928);
    v7 = *(v0 + 904);
    v8 = *(v0 + 896);
    v51 = *(v0 + 888);
    v59 = *(v0 + 864);
    v60 = *(v0 + 848);
    v9 = *(v0 + 672);
    v55 = v9;
    v56 = *(v0 + 664);
    v10 = *(v0 + 656);
    v11 = *(v0 + 648);
    v53 = v8;
    v54 = v11;
    v12 = *(v0 + 632);
    v64 = *(v0 + 624);
    v13 = *(v0 + 616);
    v14 = *(v0 + 608);
    v52 = swift_allocObject();
    swift_weakInit();
    sub_100010364(v7, v8, &unk_10093F420, &unk_100797AE0);
    (*(v10 + 16))(v9, v13, v11);
    v15 = (v6 + 104) & ~v6;
    v16 = (v15 + v51 + 7) & 0xFFFFFFFFFFFFFFF8;
    v17 = (v16 + 15) & 0xFFFFFFFFFFFFFFF8;
    v18 = (v17 + 15) & 0xFFFFFFFFFFFFFFF8;
    v19 = (v18 + 15) & 0xFFFFFFFFFFFFFFF8;
    v20 = (v19 + *(v10 + 80) + 8) & ~*(v10 + 80);
    v21 = swift_allocObject();
    *(v0 + 1088) = v21;
    *(v21 + 16) = v52;
    *(v21 + 24) = v64;
    v22 = *v14;
    v23 = v14[1];
    v24 = v14[2];
    *(v21 + 73) = *(v14 + 41);
    *(v21 + 48) = v23;
    *(v21 + 64) = v24;
    *(v21 + 32) = v22;
    *(v21 + 96) = _swiftEmptyDictionarySingleton;
    sub_100031B58(v53, v21 + v15, &unk_10093F420, &unk_100797AE0);
    *(v21 + v16) = v66;
    *(v21 + v17) = v57;
    *(v21 + v18) = v65;
    *(v21 + v19) = v58;
    (*(v10 + 32))(v21 + v20, v55, v54);
    v62(v59, v61, v60);
    v25 = v64;
    sub_10033251C(v14, v0 + 80);
    v26 = async function pointer to NSManagedObjectContext.perform<A>(schedule:_:)[1];

    v27 = swift_task_alloc();
    *(v0 + 1096) = v27;
    *v27 = v0;
    v27[1] = sub_100322FDC;
    v28 = *(v0 + 864);
    v29 = *(v0 + 624);
    v30 = sub_100332578;
    v31 = &type metadata for () + 8;
    v32 = v21;

    return NSManagedObjectContext.perform<A>(schedule:_:)(v27, v28, v30, v32, v31);
  }

  v1 = *(v0 + 1016);
  v2 = type metadata accessor for REMTrialClient();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  REMTrialClient.init()();
  if (v1)
  {

    v5 = 0;
  }

  else
  {
    v33 = *(v0 + 840);
    v34 = *(v0 + 832);
    v35 = *(v0 + 824);
    (*(v34 + 104))(v33, enum case for REMTrialNamespace.grocery(_:), v35);
    dispatch thunk of REMTrialClient.deploymentId(for:)();
    v5 = v36;

    (*(v34 + 8))(v33, v35);
  }

  *(v0 + 1040) = v5;
  v37 = *(v0 + 936);
  v38 = *(v0 + 920);
  swift_beginAccess();
  *(v0 + 512) = *(v37 + 16);

  sub_1000F5104(&qword_1009420F0, &qword_1007A24F0);
  sub_10000CB48(&qword_100942100, &qword_1009420F0, &qword_1007A24F0);
  v39 = Sequence.mapToSet<A>(_:)();
  *(v0 + 1048) = v39;

  swift_beginAccess();
  v40 = *(v38 + 16);
  v41 = *(v40 + 16);
  if (v41)
  {
    v42 = sub_100368C88(v41, 0);
    v43 = *(_s9UtilitiesO47REMCDListSectionThreadSafePartialRepresentationVMa() - 8);
    sub_100279EBC(v67, v42 + ((*(v43 + 80) + 32) & ~*(v43 + 80)), v41, v40);
    v45 = v44;

    v27 = sub_10001B860();
    if (v45 == v41)
    {
      goto LABEL_12;
    }

    __break(1u);
    return NSManagedObjectContext.perform<A>(schedule:_:)(v27, v28, v30, v32, v31);
  }

  v42 = _swiftEmptyArrayStorage;
LABEL_12:
  *(v0 + 1056) = v42;
  v46 = *(v0 + 816);
  static DispatchTime.now()();
  v47 = swift_task_alloc();
  *(v0 + 1064) = v47;
  *v47 = v0;
  v47[1] = sub_10032030C;
  v48 = *(v0 + 632);
  v49 = *(v0 + 608);

  return sub_100334108(v39, v49);
}

uint64_t sub_100320134()
{
  v1 = v0[119];
  v2 = v0[118];
  v3 = v0[117];
  v4 = v0[116];
  v5 = v0[115];
  sub_1000050A4(v0[113], &unk_10093F420, &unk_100797AE0);

  v28 = v0[127];
  v6 = v0[114];
  v7 = v0[113];
  v8 = v0[112];
  v9 = v0[109];
  v10 = v0[108];
  v11 = v0[105];
  v12 = v0[102];
  v13 = v0[99];
  v14 = v0[98];
  v15 = v0[97];
  v18 = v0[96];
  v19 = v0[95];
  v20 = v0[94];
  v21 = v0[91];
  v22 = v0[90];
  v23 = v0[89];
  v24 = v0[88];
  v25 = v0[87];
  v26 = v0[85];
  v27 = v0[84];

  v16 = v0[1];

  return v16();
}

uint64_t sub_10032030C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 1064);
  v6 = *v2;
  *(v4 + 1072) = a1;
  *(v4 + 1080) = v1;

  v7 = *(v3 + 1056);
  v8 = *(v3 + 1048);

  if (v1)
  {
    v9 = sub_100321830;
  }

  else
  {
    v9 = sub_100320468;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_100320468()
{
  v239 = v0;
  v1 = *(v0 + 1072);
  if (!v1)
  {
    v1 = sub_10038E004(_swiftEmptyArrayStorage);
  }

  v2 = *(v0 + 816);
  v3 = *(v0 + 808);
  v4 = *(v0 + 800);
  static DispatchTime.secondsElapsed(since:)();

  sub_1001A5080(v5);

  (*(v3 + 8))(v2, v4);
  v6 = *(v0 + 928);
  v7 = *(v0 + 912);
  v8 = *(*(v0 + 936) + 16);
  v9 = *(v8 + 16);
  v213 = *(v0 + 632);

  swift_beginAccess();
  v10 = swift_beginAccess();
  v218 = v9;
  if (v9)
  {
    v15 = 0;
    v16 = *(v0 + 744);
    v196 = (v16 + 32);
    v225 = (v16 + 8);
    v195 = (v16 + 56);
    v192 = (*(v0 + 656) + 8);
    v193 = (v16 + 48);
    v200 = *(v0 + 608);
    v197 = v16;
    v220 = (v16 + 16);
    v17 = (v8 + 48);
    v18 = _swiftEmptyDictionarySingleton;
    v216 = v1;
    v214 = v8;
    while (1)
    {
      if (v15 >= *(v8 + 16))
      {
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
        return NSManagedObjectContext.perform<A>(schedule:_:)(v10, v11, v12, v13, v14);
      }

      v234 = v18;
      v20 = *(v0 + 912);
      v21 = *(v0 + 792);
      v22 = *(v17 - 1);
      v230 = v17;
      v23 = *v17;
      v24 = *(v17 - 2);

      v232 = v24;
      v25 = [v24 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v26 = *(v20 + 16);
      v236 = v23;
      if (!v26)
      {
        break;
      }

      v27 = *(v0 + 736);

      v28 = [v26 membershipByMemberIdentifier];
      sub_1000060C8(0, &qword_10093B450, REMMembership_ptr);
      sub_100334878(&qword_10093B410, &type metadata accessor for UUID);
      v29 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      if (!*(v29 + 16) || (v30 = sub_100363F20(*(v0 + 792)), (v31 & 1) == 0))
      {

        goto LABEL_18;
      }

      v227 = v15;
      v32 = *(v0 + 920);
      v33 = *(*(v29 + 56) + 8 * v30);

      if (!v33)
      {
        v35 = 0;
LABEL_37:
        v15 = v227;
        if (!*(v1 + 16))
        {
LABEL_38:
          v222 = v35;
          v65 = v1;

          v51 = *v220;
LABEL_39:
          v82 = *(v0 + 608);
          v51(*(v0 + 760), *(v0 + 792), *(v0 + 736));
          sub_10033251C(v82, v0 + 272);
          v83 = Logger.logObject.getter();
          v84 = static os_log_type_t.default.getter();
          sub_100332478(v82);
          v85 = os_log_type_enabled(v83, v84);
          v86 = *(v0 + 792);
          v87 = *(v0 + 760);
          v88 = *(v0 + 736);
          if (v85)
          {
            v228 = v15;
            v89 = *(v0 + 640);
            v90 = swift_slowAlloc();
            v91 = swift_slowAlloc();
            v238[0] = swift_slowAlloc();
            *v90 = 136446978;
            *(v0 + 496) = v89;
            sub_1000F5104(&qword_100942108, &unk_1007A2520);
            v92 = String.init<A>(describing:)();
            v208 = v86;
            v94 = sub_10000668C(v92, v93, v238);

            *(v90 + 4) = v94;
            *(v90 + 12) = 2048;
            *(v90 + 14) = v228;
            *(v90 + 22) = 2114;
            v95 = *(v200 + 8);
            *(v0 + 536) = v95;
            *(v90 + 24) = v95;
            *v91 = v95;
            *(v90 + 32) = 2082;
            sub_100010364(v0 + 536, v0 + 504, &unk_10093AF40, &unk_100795790);
            sub_100334878(&qword_10093F2A0, &type metadata accessor for UUID);
            v96 = dispatch thunk of CustomStringConvertible.description.getter();
            v98 = v97;
            v99 = *v225;
            (*v225)(v87, v88);
            v100 = v96;
            v15 = v228;
            v101 = sub_10000668C(v100, v98, v238);

            *(v90 + 34) = v101;
            _os_log_impl(&_mh_execute_header, v83, v84, "%{public}s: Did not auto-categorize reminder due to auto-categorizer having 0 predication for reminder title {index: %ld, listObjectID: %{public}@, reminderIdentifier: %{public}s}", v90, 0x2Au);
            sub_1000050A4(v91, &unk_100938E70, &unk_100797230);
            v8 = v214;

            swift_arrayDestroy();

            v10 = (v99)(v208, v88);
            v1 = v216;
            v18 = v234;
          }

          else
          {

            v19 = *v225;
            (*v225)(v87, v88);
            v10 = (v19)(v86, v88);
            v18 = v234;
            v1 = v65;
          }

          goto LABEL_6;
        }

        goto LABEL_19;
      }

      v34 = *(v32 + 16);

      v35 = v33;
      v36 = [v35 groupIdentifier];
      if (!v36)
      {
        v81 = *(v0 + 73);

        if ((v81 & 1) == 0)
        {
          goto LABEL_41;
        }

        goto LABEL_37;
      }

      v37 = *(v0 + 784);
      v38 = *(v0 + 776);
      v39 = *(v0 + 736);
      v40 = v36;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      (*v196)(v37, v38, v39);
      if (*(v34 + 16))
      {
        v41 = sub_100363F20(*(v0 + 784));
        if (v42)
        {
          v43 = v41;
          v203 = *(v0 + 736);
          v207 = *(v0 + 784);
          v44 = *(v0 + 728);
          v45 = *(v34 + 56);
          v46 = _s9UtilitiesO47REMCDListSectionThreadSafePartialRepresentationVMa();
          v47 = *(v46 - 8);
          sub_100193AB0(v45 + *(v47 + 72) * v43, v44);

          (*v225)(v207, v203);
          (*(v47 + 56))(v44, 0, 1, v46);
          sub_1000050A4(v44, &qword_1009420F8, &unk_1007A2508);

          v8 = v214;
LABEL_41:
          v102 = [v35 groupIdentifier];
          if (v102)
          {
            v103 = *(v0 + 712);
            v104 = v102;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            v105 = 0;
          }

          else
          {
            v105 = 1;
          }

          v106 = *(v0 + 928);
          v107 = *(v0 + 920);
          v108 = *(v0 + 904);
          v109 = *(v0 + 720);
          v110 = *(v0 + 712);
          (*v195)(v110, v105, 1, *(v0 + 736));
          sub_100031B58(v110, v109, &unk_100939D90, "8\n\r");
          v111 = *(v106 + 16);
          v112 = *(v107 + 16);
          v113 = v111;

          LOBYTE(v108) = sub_100192E28(v111, v216, v33, v112, v108, v22, v236);

          v194 = v108;
          v223 = v35;
          if (v108)
          {
            v114 = *(v0 + 904);
            v115 = *(v0 + 736);
            v116 = *(v0 + 720);
            v117 = *(v0 + 704);
            v118 = *(v0 + 680);
            *(v0 + 480) = v22;
            *(v0 + 488) = v236;
            sub_10013BCF4();
            v119 = StringProtocol.lowercased(with:)();
            v204 = v120;
            v209 = v119;
            sub_100010364(v116, v117, &unk_100939D90, "8\n\r");
            static Date.now.getter();
            if ((*v193)(v117, 1, v115) == 1)
            {
              isa = 0;
            }

            else
            {
              v122 = *(v0 + 736);
              v123 = *(v0 + 704);
              isa = UUID._bridgeToObjectiveC()().super.isa;
              (*v225)(v123, v122);
            }

            v189 = *(v0 + 960);
            v190 = *(v0 + 976);
            v124 = *(v0 + 952);
            v125 = *(v0 + 920);
            v126 = *(v0 + 680);
            v127 = *(v0 + 648);
            v185 = *(v0 + 632);
            v187 = *(v0 + 720);
            v128 = objc_allocWithZone(REMTimestampedUUID);
            v129 = Date._bridgeToObjectiveC()().super.isa;
            v130 = [v128 initWithIdentifier:isa modifiedOn:v129];

            (*v192)(v126, v127);
            swift_beginAccess();
            sub_10031DEEC(v130, v209, v204, sub_1002C8FA0, sub_10037572C);
            swift_endAccess();
            v131 = *(v125 + 16);

            sub_1003348C0(v22, v236, v33, v131, v187, v189, v190);

            v8 = v214;
            v35 = v223;
          }

          v132 = *(v0 + 792);
          v133 = *(v0 + 752);
          v134 = *(v0 + 736);
          v135 = *(v0 + 720);
          v136 = *(v0 + 696);
          v137 = *(v0 + 608);

          (*v220)(v133, v132, v134);
          sub_100010364(v135, v136, &unk_100939D90, "8\n\r");
          sub_10033251C(v137, v0 + 144);
          v138 = Logger.logObject.getter();
          LOBYTE(v132) = static os_log_type_t.default.getter();
          sub_100332478(v137);
          v139 = v132;
          v140 = os_log_type_enabled(v138, v132);
          v141 = *(v0 + 792);
          v142 = *(v0 + 752);
          v143 = *(v0 + 720);
          v205 = v143;
          v210 = *(v0 + 736);
          v144 = *(v0 + 696);
          if (v140)
          {
            v186 = *(v0 + 688);
            v145 = *(v0 + 640);
            v146 = swift_slowAlloc();
            v184 = swift_slowAlloc();
            v238[0] = swift_slowAlloc();
            *v146 = 136447234;
            *(v0 + 520) = v145;
            sub_1000F5104(&qword_100942108, &unk_1007A2520);
            v147 = String.init<A>(describing:)();
            v191 = v141;
            v149 = sub_10000668C(v147, v148, v238);

            *(v146 + 4) = v149;
            *(v146 + 12) = 2114;
            v150 = *(v200 + 8);
            *(v0 + 544) = v150;
            *(v146 + 14) = v150;
            *v184 = v150;
            type = v139;
            *(v146 + 22) = 2082;
            sub_100010364(v0 + 544, v0 + 528, &unk_10093AF40, &unk_100795790);
            sub_100334878(&qword_10093F2A0, &type metadata accessor for UUID);
            v151 = dispatch thunk of CustomStringConvertible.description.getter();
            v153 = v152;
            v188 = *v225;
            (*v225)(v142, v210);
            v154 = sub_10000668C(v151, v153, v238);

            *(v146 + 24) = v154;
            *(v146 + 32) = 2082;
            v155 = Optional.descriptionOrNil.getter();
            v157 = v156;
            sub_1000050A4(v144, &unk_100939D90, "8\n\r");
            v158 = sub_10000668C(v155, v157, v238);

            *(v146 + 34) = v158;
            *(v146 + 42) = 1026;
            *(v146 + 44) = v194 & 1;
            _os_log_impl(&_mh_execute_header, v138, type, "%{public}s: Skipped auto-categorizing reminder while checking local correction  {listObjectID: %{public}@, reminderIdentifier: %{public}s, sectionIdentifier: %{public}s, shouldUpdateAutoCategorizationLocalCorrections: %{BOOL,public}d}", v146, 0x30u);
            sub_1000050A4(v184, &unk_100938E70, &unk_100797230);

            swift_arrayDestroy();

            sub_1000050A4(v205, &unk_100939D90, "8\n\r");
            v10 = (v188)(v191, v210);
            v8 = v214;
          }

          else
          {

            sub_1000050A4(v144, &unk_100939D90, "8\n\r");
            v159 = *v225;
            (*v225)(v142, v210);
            sub_1000050A4(v205, &unk_100939D90, "8\n\r");
            v10 = (v159)(v141, v210);
          }

          v18 = v234;
          goto LABEL_32;
        }
      }

      v77 = *(v0 + 784);
      v78 = *(v0 + 736);
      v79 = *(v0 + 728);

      (*v225)(v77, v78);
      v80 = _s9UtilitiesO47REMCDListSectionThreadSafePartialRepresentationVMa();
      (*(*(v80 - 8) + 56))(v79, 1, 1, v80);
      sub_1000050A4(v79, &qword_1009420F8, &unk_1007A2508);

      v8 = v214;
      v15 = v227;
      v1 = v216;
      if (!*(v216 + 16))
      {
        goto LABEL_38;
      }

LABEL_19:
      v48 = sub_100005F4C(v22, v23);
      v50 = v49;

      v51 = *v220;
      if ((v50 & 1) == 0)
      {
        v222 = v35;
        v65 = v1;
        goto LABEL_39;
      }

      v52 = v1;
      v53 = *(v0 + 768);
      v54 = (*(v52 + 56) + 16 * v48);
      v56 = *v54;
      v55 = v54[1];
      v51(v53, *(v0 + 792), *(v0 + 736));

      v18 = v234;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v238[0] = v234;
      v10 = sub_100363F20(v53);
      v58 = *(v234 + 16);
      v59 = (v11 & 1) == 0;
      v60 = __OFADD__(v58, v59);
      v61 = v58 + v59;
      if (v60)
      {
        goto LABEL_61;
      }

      v62 = v11;
      v227 = v15;
      if (*(v234 + 24) >= v61)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v160 = v10;
          sub_100375740();
          v10 = v160;
          v18 = v238[0];
        }
      }

      else
      {
        v63 = *(v0 + 768);
        sub_10036E938(v61, isUniquelyReferenced_nonNull_native);
        v18 = v238[0];
        v10 = sub_100363F20(v63);
        if ((v62 & 1) != (v64 & 1))
        {
          v181 = *(v0 + 736);

          return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        }
      }

      v66 = *(v0 + 792);
      v67 = *(v0 + 768);
      v68 = *(v0 + 736);
      if (v62)
      {
        v69 = (v18[7] + 16 * v10);
        v70 = v69[1];
        *v69 = v56;
        v69[1] = v55;

        v71 = *v225;
        (*v225)(v67, v68);
        v10 = (v71)(v66, v68);
      }

      else
      {
        v18[(v10 >> 6) + 8] |= 1 << v10;
        v72 = v10;
        v51(v18[6] + *(v197 + 72) * v10, v67, v68);
        v73 = (v18[7] + 16 * v72);
        *v73 = v56;
        v73[1] = v55;

        v74 = *(v197 + 8);
        v74(v67, v68);
        v10 = (v74)(v66, v68);
        v75 = v18[2];
        v60 = __OFADD__(v75, 1);
        v76 = v75 + 1;
        if (v60)
        {
          goto LABEL_62;
        }

        v18[2] = v76;
      }

      v8 = v214;
LABEL_32:
      v15 = v227;
      v1 = v216;
LABEL_6:
      ++v15;
      v17 = v230 + 3;
      if (v218 == v15)
      {
        goto LABEL_54;
      }
    }

LABEL_18:
    v35 = 0;
    if (!*(v1 + 16))
    {
      goto LABEL_38;
    }

    goto LABEL_19;
  }

  v18 = _swiftEmptyDictionarySingleton;
LABEL_54:
  v161 = *(v0 + 1040);

  v231 = *(v0 + 992);
  v233 = *(v0 + 1000);
  v229 = *(v0 + 140);
  v162 = *(v0 + 76);
  v235 = *(v0 + 952);
  v237 = *(v0 + 944);
  v219 = *(v0 + 912);
  v221 = *(v0 + 928);
  v198 = *(v0 + 904);
  v163 = *(v0 + 896);
  v211 = v163;
  v201 = *(v0 + 888);
  v224 = *(v0 + 864);
  v226 = *(v0 + 848);
  v164 = *(v0 + 672);
  v215 = *(v0 + 664);
  v165 = *(v0 + 656);
  v166 = *(v0 + 648);
  v212 = v166;
  v167 = *(v0 + 632);
  v217 = *(v0 + 624);
  v168 = *(v0 + 616);
  v169 = *(v0 + 608);
  v206 = swift_allocObject();
  swift_weakInit();
  sub_100010364(v198, v163, &unk_10093F420, &unk_100797AE0);
  (*(v165 + 16))(v164, v168, v166);
  v170 = (v162 + 104) & ~v162;
  v202 = (v170 + v201 + 7) & 0xFFFFFFFFFFFFFFF8;
  v199 = (v202 + 15) & 0xFFFFFFFFFFFFFFF8;
  v171 = (v199 + 15) & 0xFFFFFFFFFFFFFFF8;
  v172 = (v171 + 15) & 0xFFFFFFFFFFFFFFF8;
  v173 = (v172 + *(v165 + 80) + 8) & ~*(v165 + 80);
  v174 = swift_allocObject();
  *(v0 + 1088) = v174;
  *(v174 + 16) = v206;
  *(v174 + 24) = v217;
  v175 = *v169;
  v176 = v169[1];
  v177 = v169[2];
  *(v174 + 73) = *(v169 + 41);
  *(v174 + 48) = v176;
  *(v174 + 64) = v177;
  *(v174 + 32) = v175;
  *(v174 + 96) = v18;
  sub_100031B58(v211, v174 + v170, &unk_10093F420, &unk_100797AE0);
  *(v174 + v202) = v237;
  *(v174 + v199) = v219;
  *(v174 + v171) = v235;
  *(v174 + v172) = v221;
  (*(v165 + 32))(v174 + v173, v164, v212);
  v231(v224, v229, v226);
  v178 = v217;
  sub_10033251C(v169, v0 + 80);
  v179 = async function pointer to NSManagedObjectContext.perform<A>(schedule:_:)[1];

  v10 = swift_task_alloc();
  *(v0 + 1096) = v10;
  *v10 = v0;
  *(v10 + 8) = sub_100322FDC;
  v11 = *(v0 + 864);
  v180 = *(v0 + 624);
  v12 = sub_100332578;
  v14 = &type metadata for () + 8;
  v13 = v174;

  return NSManagedObjectContext.perform<A>(schedule:_:)(v10, v11, v12, v13, v14);
}

uint64_t sub_100321830()
{
  v287 = v0;
  v1 = v0[135];
  v2 = v0[79];
  (*(v0[101] + 8))(v0[102], v0[100]);
  v3 = &unk_100974000;
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[135];
    v7 = v0[80];
    v8 = swift_slowAlloc();
    v286[0] = swift_slowAlloc();
    *v8 = 136446466;
    v0[72] = v7;
    sub_1000F5104(&qword_100942108, &unk_1007A2520);
    v9 = String.init<A>(describing:)();
    v11 = sub_10000668C(v9, v10, v286);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2082;
    swift_getErrorValue();
    v13 = v0[42];
    v12 = v0[43];
    v14 = v0[44];
    v15 = Error.rem_errorDescription.getter();
    v17 = sub_10000668C(v15, v16, v286);

    *(v8 + 14) = v17;
    v3 = &unk_100974000;
    _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s: Failed to predict categories of reminder titles {error: %{public}s}", v8, 0x16u);
    swift_arrayDestroy();
  }

  v18 = v0[76];
  v19 = v0[75];
  sub_10033251C(v18, (v0 + 26));

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  sub_100332478(v18);

  v248 = v0;
  if (os_log_type_enabled(v20, v21))
  {
    v22 = v0[80];
    v23 = v0[76];
    v24 = v0[75];
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v285 = swift_slowAlloc();
    *v25 = 136446722;
    v0[69] = v22;
    sub_1000F5104(&qword_100942108, &unk_1007A2520);
    v27 = String.init<A>(describing:)();
    v29 = sub_10000668C(v27, v28, &v285);

    *(v25 + 4) = v29;
    *(v25 + 12) = 2114;
    v30 = *(v23 + 8);
    v0[74] = v30;
    *(v25 + 14) = v30;
    *v26 = v30;
    *(v25 + 22) = 2082;
    v31 = *(v24 + 16);
    v32 = v0;
    if (v31)
    {
      v33 = v0[75];
      v286[0] = _swiftEmptyArrayStorage;
      sub_100010364((v32 + 74), (v32 + 70), &unk_10093AF40, &unk_100795790);
      specialized ContiguousArray.reserveCapacity(_:)();
      v34 = (v33 + 32);
      do
      {
        v35 = *v34;
        v34 += 3;
        v36 = v35;
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v37 = *(v286[0] + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        --v31;
      }

      while (v31);
    }

    else
    {
      sub_100010364((v0 + 74), (v0 + 71), &unk_10093AF40, &unk_100795790);
    }

    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    v38 = Array.description.getter();
    v40 = v39;

    v41 = sub_10000668C(v38, v40, &v285);

    *(v25 + 24) = v41;
    _os_log_impl(&_mh_execute_header, v20, v21, "%{public}s: Failed to predict categories of reminder titles {listObjectID: %{public}@, reminderIDs: %{public}s}", v25, 0x20u);
    sub_1000050A4(v26, &unk_100938E70, &unk_100797230);

    swift_arrayDestroy();

    v3 = &unk_100974000;
  }

  else
  {
  }

  v42 = v248;
  v43 = v248[135];
  v44 = sub_10038E004(_swiftEmptyArrayStorage);

  v45 = v248[116];
  v46 = v248[114];
  v47 = *(v248[117] + 16);
  v48 = *(v47 + 16);
  v261 = v3[425];
  v262 = v248[79];

  swift_beginAccess();
  v49 = swift_beginAccess();
  v266 = v47;
  v268 = v48;
  v264 = v44;
  if (v48)
  {
    v54 = 0;
    v55 = v248[93];
    v242 = (v55 + 32);
    v270 = (v55 + 8);
    v241 = (v55 + 56);
    v238 = (v248[82] + 8);
    v239 = (v55 + 48);
    v245 = v248[76];
    v243 = v55;
    v272 = (v55 + 16);
    v56 = (v47 + 48);
    v57 = _swiftEmptyDictionarySingleton;
    while (1)
    {
      if (v54 >= *(v47 + 16))
      {
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
        return NSManagedObjectContext.perform<A>(schedule:_:)(v49, v50, v51, v52, v53);
      }

      v283 = v54;
      v278 = v57;
      v59 = v42[114];
      v60 = v42[99];
      v61 = *(v56 - 1);
      v274 = v56;
      v62 = *v56;
      v63 = *(v56 - 2);

      v276 = v63;
      v64 = [v63 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v65 = *(v59 + 16);
      v281 = v62;
      if (!v65)
      {
        break;
      }

      v66 = v42[92];

      v67 = [v65 membershipByMemberIdentifier];
      sub_1000060C8(0, &qword_10093B450, REMMembership_ptr);
      sub_100334878(&qword_10093B410, &type metadata accessor for UUID);
      v68 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      if (!*(v68 + 16) || (v69 = sub_100363F20(v42[99]), (v70 & 1) == 0))
      {

LABEL_27:
        v74 = 0;
        goto LABEL_28;
      }

      v71 = v42[115];
      v72 = *(*(v68 + 56) + 8 * v69);

      if (v72)
      {
        v73 = *(v71 + 16);

        v74 = v72;
        v75 = [v74 groupIdentifier];
        if (v75)
        {
          v76 = v42[98];
          v77 = v42[97];
          v78 = v42[92];
          v79 = v75;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          (*v242)(v76, v77, v78);
          if (*(v73 + 16))
          {
            v80 = sub_100363F20(v42[98]);
            if (v81)
            {
              v82 = v80;
              v250 = v42[92];
              v254 = v42[98];
              v83 = v42[91];
              v84 = v74;
              v85 = *(v73 + 56);
              v86 = _s9UtilitiesO47REMCDListSectionThreadSafePartialRepresentationVMa();
              v87 = v62;
              v88 = *(v86 - 8);
              sub_100193AB0(v85 + *(v88 + 72) * v82, v83);

              (*v270)(v254, v250);
              v89 = v86;
              v42 = v248;
              (*(v88 + 56))(v83, 0, 1, v89);
              v62 = v87;
              sub_1000050A4(v83, &qword_1009420F8, &unk_1007A2508);

              v44 = v264;
LABEL_49:
              v143 = [v84 groupIdentifier];
              v259 = v84;
              if (v143)
              {
                v144 = v42[89];
                v145 = v143;
                static UUID._unconditionallyBridgeFromObjectiveC(_:)();

                v146 = 0;
              }

              else
              {
                v146 = 1;
              }

              v147 = v42[116];
              v148 = v42[115];
              v149 = v42[113];
              v150 = v42[90];
              v151 = v42[89];
              (*v241)(v151, v146, 1, v42[92]);
              sub_100031B58(v151, v150, &unk_100939D90, "8\n\r");
              v152 = *(v147 + 16);
              v153 = *(v148 + 16);
              v154 = v152;

              LOBYTE(v149) = sub_100192E28(v152, v44, v72, v153, v149, v61, v62);

              v155 = v62;
              v240 = v149;
              if (v149)
              {
                v156 = v42[113];
                v157 = v42[92];
                v158 = v42[90];
                v159 = v42[88];
                v160 = v42[85];
                v42[60] = v61;
                v42[61] = v155;
                sub_10013BCF4();
                v161 = StringProtocol.lowercased(with:)();
                v251 = v162;
                v256 = v161;
                sub_100010364(v158, v159, &unk_100939D90, "8\n\r");
                static Date.now.getter();
                if ((*v239)(v159, 1, v157) == 1)
                {
                  isa = 0;
                }

                else
                {
                  v164 = v42[92];
                  v165 = v42[88];
                  isa = UUID._bridgeToObjectiveC()().super.isa;
                  (*v270)(v165, v164);
                }

                v235 = v42[120];
                v236 = v42[122];
                v166 = v42[119];
                v167 = v42[115];
                v168 = v248[90];
                v169 = v248[85];
                v170 = v248[81];
                v233 = v248[79];
                v171 = objc_allocWithZone(REMTimestampedUUID);
                v172 = Date._bridgeToObjectiveC()().super.isa;
                v173 = [v171 initWithIdentifier:isa modifiedOn:v172];

                (*v238)(v169, v170);
                swift_beginAccess();
                sub_10031DEEC(v173, v256, v251, sub_1002C8FA0, sub_10037572C);
                swift_endAccess();
                v174 = *(v167 + 16);

                v175 = v168;
                v42 = v248;
                sub_1003348C0(v61, v281, v72, v174, v175, v235, v236);

                v44 = v264;
              }

              v176 = v42[99];
              v177 = v42[94];
              v178 = v42[92];
              v179 = v42[90];
              v180 = v42[87];
              v181 = v42[76];

              (*v272)(v177, v176, v178);
              sub_100010364(v179, v180, &unk_100939D90, "8\n\r");
              sub_10033251C(v181, (v42 + 18));
              v182 = Logger.logObject.getter();
              LOBYTE(v176) = static os_log_type_t.default.getter();
              sub_100332478(v181);
              v183 = v176;
              v184 = os_log_type_enabled(v182, v176);
              v185 = v42[99];
              v186 = v42[94];
              v187 = v42[90];
              v252 = v187;
              v257 = v42[92];
              v188 = v42[87];
              if (v184)
              {
                v234 = v42[86];
                v189 = v42[80];
                v190 = swift_slowAlloc();
                v231 = swift_slowAlloc();
                v286[0] = swift_slowAlloc();
                *v190 = 136447234;
                v42[65] = v189;
                sub_1000F5104(&qword_100942108, &unk_1007A2520);
                v191 = String.init<A>(describing:)();
                log = v182;
                v237 = v185;
                v193 = sub_10000668C(v191, v192, v286);

                *(v190 + 4) = v193;
                *(v190 + 12) = 2114;
                v194 = *(v245 + 8);
                v42[68] = v194;
                *(v190 + 14) = v194;
                *v231 = v194;
                type = v183;
                *(v190 + 22) = 2082;
                sub_100010364((v42 + 68), (v42 + 66), &unk_10093AF40, &unk_100795790);
                sub_100334878(&qword_10093F2A0, &type metadata accessor for UUID);
                v195 = dispatch thunk of CustomStringConvertible.description.getter();
                v197 = v196;
                v198 = *v270;
                (*v270)(v186, v257);
                v199 = sub_10000668C(v195, v197, v286);

                *(v190 + 24) = v199;
                *(v190 + 32) = 2082;
                v200 = Optional.descriptionOrNil.getter();
                v202 = v201;
                sub_1000050A4(v188, &unk_100939D90, "8\n\r");
                v203 = sub_10000668C(v200, v202, v286);

                *(v190 + 34) = v203;
                *(v190 + 42) = 1026;
                *(v190 + 44) = v240 & 1;
                _os_log_impl(&_mh_execute_header, log, type, "%{public}s: Skipped auto-categorizing reminder while checking local correction  {listObjectID: %{public}@, reminderIdentifier: %{public}s, sectionIdentifier: %{public}s, shouldUpdateAutoCategorizationLocalCorrections: %{BOOL,public}d}", v190, 0x30u);
                sub_1000050A4(v231, &unk_100938E70, &unk_100797230);

                swift_arrayDestroy();

                sub_1000050A4(v252, &unk_100939D90, "8\n\r");
                v49 = (v198)(v237, v257);
                v44 = v264;
              }

              else
              {

                sub_1000050A4(v188, &unk_100939D90, "8\n\r");
                v204 = *v270;
                (*v270)(v186, v257);
                sub_1000050A4(v252, &unk_100939D90, "8\n\r");
                v49 = (v204)(v185, v257);
              }

              v57 = v278;
              goto LABEL_44;
            }
          }

          v138 = v42[98];
          v139 = v42[92];
          v140 = v42[91];

          (*v270)(v138, v139);
          v141 = _s9UtilitiesO47REMCDListSectionThreadSafePartialRepresentationVMa();
          (*(*(v141 - 8) + 56))(v140, 1, 1, v141);
          sub_1000050A4(v140, &qword_1009420F8, &unk_1007A2508);

          v44 = v264;
          v47 = v266;
        }

        else
        {
          v84 = v74;
          v142 = *(v42 + 73);

          if ((v142 & 1) == 0)
          {
            goto LABEL_49;
          }

          v47 = v266;
          v74 = v84;
        }
      }

      else
      {
        v74 = 0;
        v47 = v266;
      }

LABEL_28:
      if (!*(v44 + 16))
      {

        v93 = *v272;
LABEL_35:
        v106 = v42[76];
        v93(v42[95], v42[99], v42[92]);
        sub_10033251C(v106, (v42 + 34));
        v107 = Logger.logObject.getter();
        v108 = static os_log_type_t.default.getter();
        sub_100332478(v106);
        v109 = os_log_type_enabled(v107, v108);
        v110 = v42[99];
        v111 = v42[95];
        v112 = v42[92];
        if (v109)
        {
          v113 = v42[80];
          v255 = v42[99];
          v114 = swift_slowAlloc();
          v115 = swift_slowAlloc();
          v286[0] = swift_slowAlloc();
          *v114 = 136446978;
          v42[62] = v113;
          sub_1000F5104(&qword_100942108, &unk_1007A2520);
          v116 = String.init<A>(describing:)();
          v118 = sub_10000668C(v116, v117, v286);

          *(v114 + 4) = v118;
          *(v114 + 12) = 2048;
          *(v114 + 14) = v283;
          *(v114 + 22) = 2114;
          v119 = *(v245 + 8);
          v42[67] = v119;
          *(v114 + 24) = v119;
          *v115 = v119;
          *(v114 + 32) = 2082;
          sub_100010364((v42 + 67), (v42 + 63), &unk_10093AF40, &unk_100795790);
          sub_100334878(&qword_10093F2A0, &type metadata accessor for UUID);
          v120 = dispatch thunk of CustomStringConvertible.description.getter();
          v122 = v121;
          v123 = *v270;
          (*v270)(v111, v112);
          v124 = v120;
          v47 = v266;
          v125 = sub_10000668C(v124, v122, v286);

          *(v114 + 34) = v125;
          _os_log_impl(&_mh_execute_header, v107, v108, "%{public}s: Did not auto-categorize reminder due to auto-categorizer having 0 predication for reminder title {index: %ld, listObjectID: %{public}@, reminderIdentifier: %{public}s}", v114, 0x2Au);
          sub_1000050A4(v115, &unk_100938E70, &unk_100797230);
          v44 = v264;

          swift_arrayDestroy();

          v49 = (v123)(v255, v112);
          v42 = v248;
        }

        else
        {

          v58 = *v270;
          (*v270)(v111, v112);
          v49 = (v58)(v110, v112);
        }

        v57 = v278;
        goto LABEL_15;
      }

      v90 = sub_100005F4C(v61, v62);
      v92 = v91;

      v93 = *v272;
      if ((v92 & 1) == 0)
      {
        goto LABEL_35;
      }

      v94 = v42[96];
      v95 = (*(v44 + 56) + 16 * v90);
      v97 = *v95;
      v96 = v95[1];
      v93(v94, v42[99], v42[92]);

      v57 = v278;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v286[0] = v278;
      v49 = sub_100363F20(v94);
      v99 = *(v278 + 16);
      v100 = (v50 & 1) == 0;
      v101 = __OFADD__(v99, v100);
      v102 = v99 + v100;
      if (v101)
      {
        goto LABEL_69;
      }

      v103 = v50;
      if (*(v278 + 24) >= v102)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v205 = v74;
          v206 = v49;
          sub_100375740();
          v49 = v206;
          v74 = v205;
          v57 = v286[0];
        }
      }

      else
      {
        v104 = v42[96];
        sub_10036E938(v102, isUniquelyReferenced_nonNull_native);
        v57 = v286[0];
        v49 = sub_100363F20(v104);
        if ((v103 & 1) != (v105 & 1))
        {
          v228 = v42[92];

          return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        }
      }

      v126 = v42[99];
      v127 = v42[96];
      v128 = v42[92];
      if (v103)
      {
        v129 = (v57[7] + 16 * v49);
        v130 = v129[1];
        *v129 = v97;
        v129[1] = v96;

        v131 = *v270;
        (*v270)(v127, v128);
        v49 = (v131)(v126, v128);
      }

      else
      {
        v57[(v49 >> 6) + 8] |= 1 << v49;
        v279 = v126;
        v132 = v74;
        v133 = v49;
        v93(v57[6] + *(v243 + 72) * v49, v127, v128);
        v134 = (v57[7] + 16 * v133);
        *v134 = v97;
        v134[1] = v96;

        v135 = *(v243 + 8);
        v135(v127, v128);
        v49 = (v135)(v279, v128);
        v136 = v57[2];
        v101 = __OFADD__(v136, 1);
        v137 = v136 + 1;
        if (v101)
        {
          goto LABEL_70;
        }

        v57[2] = v137;
      }

      v44 = v264;
LABEL_44:
      v47 = v266;
LABEL_15:
      v54 = v283 + 1;
      v56 = v274 + 3;
      if (v268 == v283 + 1)
      {
        goto LABEL_62;
      }
    }

    goto LABEL_27;
  }

  v57 = _swiftEmptyDictionarySingleton;
LABEL_62:
  v207 = v42[130];

  v277 = v42[124];
  v280 = v42[125];
  v275 = *(v42 + 35);
  v253 = *(v42 + 76);
  v282 = v42[119];
  v284 = v42[118];
  v267 = v42[114];
  v269 = v42[116];
  v208 = v42;
  v209 = v42[113];
  v210 = v208[112];
  v258 = v210;
  v246 = v208[111];
  v271 = v208[108];
  v273 = v208[106];
  v211 = v208[84];
  v263 = v208[83];
  v212 = v208[82];
  v213 = v208[81];
  v260 = v213;
  v214 = v208[79];
  v265 = v208[78];
  v215 = v208[77];
  v216 = v208[76];
  v249 = swift_allocObject();
  swift_weakInit();
  sub_100010364(v209, v210, &unk_10093F420, &unk_100797AE0);
  (*(v212 + 16))(v211, v215, v213);
  v217 = (v253 + 104) & ~v253;
  v247 = (v217 + v246 + 7) & 0xFFFFFFFFFFFFFFF8;
  v244 = (v247 + 15) & 0xFFFFFFFFFFFFFFF8;
  v218 = (v244 + 15) & 0xFFFFFFFFFFFFFFF8;
  v219 = (v218 + 15) & 0xFFFFFFFFFFFFFFF8;
  v220 = (v219 + *(v212 + 80) + 8) & ~*(v212 + 80);
  v221 = swift_allocObject();
  v208[136] = v221;
  *(v221 + 16) = v249;
  *(v221 + 24) = v265;
  v222 = *v216;
  v223 = v216[1];
  v224 = v216[2];
  *(v221 + 73) = *(v216 + 41);
  *(v221 + 48) = v223;
  *(v221 + 64) = v224;
  *(v221 + 32) = v222;
  *(v221 + 96) = v57;
  sub_100031B58(v258, v221 + v217, &unk_10093F420, &unk_100797AE0);
  *(v221 + v247) = v284;
  *(v221 + v244) = v267;
  *(v221 + v218) = v282;
  *(v221 + v219) = v269;
  (*(v212 + 32))(v221 + v220, v211, v260);
  v277(v271, v275, v273);
  v225 = v265;
  sub_10033251C(v216, (v208 + 10));
  v226 = async function pointer to NSManagedObjectContext.perform<A>(schedule:_:)[1];

  v49 = swift_task_alloc();
  v208[137] = v49;
  *v49 = v208;
  *(v49 + 8) = sub_100322FDC;
  v50 = v208[108];
  v227 = v208[78];
  v51 = sub_100332578;
  v53 = &type metadata for () + 8;
  v52 = v221;

  return NSManagedObjectContext.perform<A>(schedule:_:)(v49, v50, v51, v52, v53);
}

uint64_t sub_100322FDC()
{
  v2 = *v1;
  v3 = *(*v1 + 1096);
  v4 = *v1;
  *(*v1 + 1104) = v0;

  v5 = *(v2 + 1088);
  v6 = *(v2 + 1032);
  (*(v2 + 1024))(*(v2 + 864), *(v2 + 848));

  if (v0)
  {
    v7 = sub_10032334C;
  }

  else
  {
    v7 = sub_100323168;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100323168()
{
  v1 = v0[119];
  v2 = v0[118];
  v3 = v0[117];
  v4 = v0[116];
  v5 = v0[115];
  v6 = v0[114];
  v7 = v0[112];
  v8 = v0[109];
  v11 = v0[108];
  v12 = v0[105];
  v13 = v0[102];
  v14 = v0[99];
  v15 = v0[98];
  v16 = v0[97];
  v17 = v0[96];
  v18 = v0[95];
  v19 = v0[94];
  v20 = v0[91];
  v21 = v0[90];
  v22 = v0[89];
  v23 = v0[88];
  v24 = v0[87];
  v25 = v0[85];
  v26 = v0[84];
  sub_1000050A4(v0[113], &unk_10093F420, &unk_100797AE0);

  v9 = v0[1];

  return v9();
}

uint64_t sub_10032334C()
{
  v1 = v0[119];
  v2 = v0[118];
  v3 = v0[117];
  v4 = v0[116];
  v5 = v0[115];
  sub_1000050A4(v0[113], &unk_10093F420, &unk_100797AE0);

  v28 = v0[138];
  v6 = v0[114];
  v7 = v0[113];
  v8 = v0[112];
  v9 = v0[109];
  v10 = v0[108];
  v11 = v0[105];
  v12 = v0[102];
  v13 = v0[99];
  v14 = v0[98];
  v15 = v0[97];
  v18 = v0[96];
  v19 = v0[95];
  v20 = v0[94];
  v21 = v0[91];
  v22 = v0[90];
  v23 = v0[89];
  v24 = v0[88];
  v25 = v0[87];
  v26 = v0[85];
  v27 = v0[84];

  v16 = v0[1];

  return v16();
}

uint64_t sub_100323524(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 632) = v5;
  *(v6 + 624) = a5;
  *(v6 + 616) = a4;
  *(v6 + 73) = a3;
  *(v6 + 608) = a2;
  *(v6 + 600) = a1;
  *(v6 + 640) = *v5;
  v7 = type metadata accessor for Date();
  *(v6 + 648) = v7;
  v8 = *(v7 - 8);
  *(v6 + 656) = v8;
  *(v6 + 664) = *(v8 + 64);
  *(v6 + 672) = swift_task_alloc();
  *(v6 + 680) = swift_task_alloc();
  v9 = sub_1000F5104(&unk_100939D90, "8\n\r");
  *(v6 + 688) = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  *(v6 + 696) = swift_task_alloc();
  *(v6 + 704) = swift_task_alloc();
  *(v6 + 712) = swift_task_alloc();
  *(v6 + 720) = swift_task_alloc();
  v11 = *(*(sub_1000F5104(&qword_1009420F8, &unk_1007A2508) - 8) + 64) + 15;
  *(v6 + 728) = swift_task_alloc();
  v12 = type metadata accessor for UUID();
  *(v6 + 736) = v12;
  v13 = *(v12 - 8);
  *(v6 + 744) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 752) = swift_task_alloc();
  *(v6 + 760) = swift_task_alloc();
  *(v6 + 768) = swift_task_alloc();
  *(v6 + 776) = swift_task_alloc();
  *(v6 + 784) = swift_task_alloc();
  *(v6 + 792) = swift_task_alloc();
  v15 = type metadata accessor for REMAnalyticsEvent();
  *(v6 + 800) = v15;
  v16 = *(v15 - 8);
  *(v6 + 808) = v16;
  v17 = *(v16 + 64) + 15;
  *(v6 + 816) = swift_task_alloc();
  v18 = type metadata accessor for AutoCategorizeSessionType();
  *(v6 + 824) = v18;
  v19 = *(v18 - 8);
  *(v6 + 832) = v19;
  v20 = *(v19 + 64) + 15;
  *(v6 + 840) = swift_task_alloc();
  v21 = type metadata accessor for DispatchTime();
  *(v6 + 848) = v21;
  v22 = *(v21 - 8);
  *(v6 + 856) = v22;
  v23 = *(v22 + 64) + 15;
  *(v6 + 864) = swift_task_alloc();
  v24 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  *(v6 + 872) = v24;
  v25 = *(v24 - 8);
  *(v6 + 880) = v25;
  v26 = *(v25 + 64) + 15;
  *(v6 + 888) = swift_task_alloc();
  *(v6 + 896) = swift_task_alloc();
  v27 = *(sub_1000F5104(&unk_10093F420, &unk_100797AE0) - 8);
  *(v6 + 904) = v27;
  *(v6 + 912) = *(v27 + 64);
  *(v6 + 920) = swift_task_alloc();
  *(v6 + 928) = swift_task_alloc();

  return _swift_task_switch(sub_100323958, 0, 0);
}

uint64_t sub_100323958()
{
  v1 = *(v0 + 608);
  v2 = swift_allocObject();
  *(v0 + 936) = v2;
  v49 = v2;
  *(v2 + 16) = 0;
  v3 = swift_allocObject();
  *(v0 + 944) = v3;
  v51 = v3;
  *(v3 + 16) = _swiftEmptyDictionarySingleton;
  v4 = swift_allocObject();
  *(v0 + 952) = v4;
  v52 = v4;
  *(v4 + 16) = 0;
  v5 = swift_allocObject();
  *(v0 + 960) = v5;
  v48 = v5;
  *(v5 + 16) = _swiftEmptyArrayStorage;
  v6 = swift_allocObject();
  *(v0 + 968) = v6;
  v47 = v6;
  *(v6 + 16) = _swiftEmptyArrayStorage;
  v7 = swift_allocObject();
  *(v0 + 976) = v7;
  v46 = v7;
  *(v7 + 16) = _swiftEmptyDictionarySingleton;
  v9 = *(v1 + 40);
  v8 = *(v1 + 48);
  *(v0 + 984) = v8;
  v41 = v9;
  v42 = v8;
  if (v8)
  {
    v10 = *(v0 + 928);

    Locale.init(identifier:)();
    v11 = 0;
    v45 = *(v0 + 608);
  }

  else
  {
    v45 = v1;
    v11 = 1;
  }

  v12 = *(v0 + 928);
  v13 = *(v0 + 920);
  v14 = *(v0 + 912);
  v15 = *(v0 + 904);
  v40 = *(v0 + 880);
  v43 = *(v0 + 872);
  v44 = *(v0 + 896);
  v16 = *(v0 + 632);
  v17 = *(v0 + 624);
  v38 = v13;
  v39 = *(v0 + 73);
  v50 = *(v0 + 600);
  v18 = type metadata accessor for Locale();
  (*(*(v18 - 8) + 56))(v12, v11, 1, v18);
  v19 = swift_allocObject();
  swift_weakInit();
  sub_100010364(v12, v13, &unk_10093F420, &unk_100797AE0);
  v20 = *(v15 + 80);
  *(v0 + 76) = v20;
  v21 = (v20 + 128) & ~v20;
  v22 = v21 + v14;
  v23 = (v21 + v14) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v23 + 23) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v24 + 15) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  *(v0 + 992) = v26;
  *(v26 + 16) = v19;
  *(v26 + 24) = v17;
  v27 = *v45;
  v28 = v45[1];
  v29 = v45[2];
  *(v26 + 73) = *(v45 + 41);
  *(v26 + 48) = v28;
  *(v26 + 64) = v29;
  *(v26 + 32) = v27;
  *(v26 + 96) = v49;
  *(v26 + 104) = v51;
  *(v26 + 112) = v52;
  *(v26 + 120) = v50;
  sub_100031B58(v38, v26 + v21, &unk_10093F420, &unk_100797AE0);
  *(v26 + v22) = v39;
  *(v26 + v23 + 8) = v47;
  *(v26 + v24) = v46;
  v30 = (v26 + v25);
  *v30 = v41;
  v30[1] = v42;
  *(v26 + ((v25 + 23) & 0xFFFFFFFFFFFFFFF8)) = v48;
  *(v0 + 140) = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
  v31 = *(v40 + 104);
  *(v0 + 1000) = v31;
  *(v0 + 1008) = (v40 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v31(v44);

  v32 = v17;
  sub_10033251C(v45, v0 + 16);
  v33 = async function pointer to NSManagedObjectContext.perform<A>(schedule:_:)[1];

  v34 = swift_task_alloc();
  *(v0 + 1016) = v34;
  *v34 = v0;
  v34[1] = sub_100323D68;
  v35 = *(v0 + 896);
  v36 = *(v0 + 624);

  return NSManagedObjectContext.perform<A>(schedule:_:)(v34, v35, sub_1003362DC, v26, &type metadata for () + 8);
}

uint64_t sub_100323D68()
{
  v2 = *v1;
  v3 = *(*v1 + 1016);
  v4 = *v1;
  v2[128] = v0;

  v5 = v2[124];
  v6 = v2[112];
  v7 = v2[110];
  v8 = v2[109];
  if (v0)
  {
    v9 = v2[124];

    (*(v7 + 8))(v6, v8);
    v10 = sub_100324438;
  }

  else
  {
    v11 = *(v7 + 8);
    v2[129] = v11;
    v2[130] = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v11(v6, v8);

    v10 = sub_100323F34;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_100323F34()
{
  v61 = v0;
  if (!*(v0 + 984))
  {
    v54 = *(v0 + 1000);
    v55 = *(v0 + 1008);
    v53 = *(v0 + 140);
    v16 = *(v0 + 76);
    v57 = *(v0 + 976);
    v59 = *(v0 + 968);
    v49 = *(v0 + 936);
    v50 = *(v0 + 952);
    v17 = *(v0 + 928);
    v18 = *(v0 + 920);
    v43 = *(v0 + 912);
    v51 = *(v0 + 888);
    v52 = *(v0 + 872);
    v19 = *(v0 + 672);
    v47 = v19;
    v48 = *(v0 + 664);
    v20 = *(v0 + 656);
    v21 = *(v0 + 648);
    v45 = v18;
    v46 = v21;
    v22 = *(v0 + 632);
    v56 = *(v0 + 624);
    v23 = *(v0 + 616);
    v24 = *(v0 + 608);
    v44 = swift_allocObject();
    swift_weakInit();
    sub_100010364(v17, v18, &unk_10093F420, &unk_100797AE0);
    (*(v20 + 16))(v19, v23, v21);
    v25 = (v16 + 104) & ~v16;
    v26 = (v25 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
    v27 = (v26 + 15) & 0xFFFFFFFFFFFFFFF8;
    v28 = (v27 + 15) & 0xFFFFFFFFFFFFFFF8;
    v29 = (v28 + 15) & 0xFFFFFFFFFFFFFFF8;
    v30 = (v29 + *(v20 + 80) + 8) & ~*(v20 + 80);
    v31 = swift_allocObject();
    *(v0 + 1088) = v31;
    *(v31 + 16) = v44;
    *(v31 + 24) = v56;
    v32 = *v24;
    v33 = v24[1];
    v34 = v24[2];
    *(v31 + 73) = *(v24 + 41);
    *(v31 + 48) = v33;
    *(v31 + 64) = v34;
    *(v31 + 32) = v32;
    *(v31 + 96) = _swiftEmptyDictionarySingleton;
    sub_100031B58(v45, v31 + v25, &unk_10093F420, &unk_100797AE0);
    *(v31 + v26) = v59;
    *(v31 + v27) = v49;
    *(v31 + v28) = v57;
    *(v31 + v29) = v50;
    (*(v20 + 32))(v31 + v30, v47, v46);
    v54(v51, v53, v52);
    v35 = v56;
    sub_10033251C(v24, v0 + 80);
    v36 = async function pointer to NSManagedObjectContext.perform<A>(schedule:_:)[1];

    v11 = swift_task_alloc();
    *(v0 + 1096) = v11;
    *v11 = v0;
    v11[1] = sub_100327384;
    v12 = *(v0 + 888);
    v37 = *(v0 + 624);
    v13 = sub_100336410;
    v15 = &type metadata for () + 8;
    v14 = v31;

    return NSManagedObjectContext.perform<A>(schedule:_:)(v11, v12, v13, v14, v15);
  }

  v1 = *(v0 + 1024);
  v2 = *(v0 + 960);
  v3 = *(v0 + 944);
  swift_beginAccess();
  *(v0 + 512) = *(v2 + 16);

  sub_1000F5104(&qword_1009420F0, &qword_1007A24F0);
  sub_10000CB48(&qword_100942100, &qword_1009420F0, &qword_1007A24F0);
  v4 = Sequence.mapToSet<A>(_:)();
  *(v0 + 1048) = v4;

  swift_beginAccess();
  v5 = *(v3 + 16);
  v6 = *(v5 + 16);
  if (!v6)
  {
    v7 = _swiftEmptyArrayStorage;
    goto LABEL_9;
  }

  v58 = v4;
  v7 = sub_100368C88(v6, 0);
  v8 = *(_s9UtilitiesO47REMCDListSectionThreadSafePartialRepresentationVMa() - 8);
  sub_100279EBC(v60, v7 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v6, v5);
  v10 = v9;

  v11 = sub_10001B860();
  if (v10 != v6)
  {
    __break(1u);
    return NSManagedObjectContext.perform<A>(schedule:_:)(v11, v12, v13, v14, v15);
  }

  v4 = v58;
LABEL_9:
  *(v0 + 1056) = v7;
  v38 = *(v0 + 864);
  static DispatchTime.now()();
  v39 = swift_task_alloc();
  *(v0 + 1064) = v39;
  *v39 = v0;
  v39[1] = sub_100324620;
  v40 = *(v0 + 632);
  v41 = *(v0 + 608);

  return sub_100480978(v4, v41, v7);
}

uint64_t sub_100324438()
{
  v1 = v0[122];
  v2 = v0[121];
  v3 = v0[120];
  v4 = v0[119];
  v5 = v0[118];
  sub_1000050A4(v0[116], &unk_10093F420, &unk_100797AE0);

  v29 = v0[128];
  v6 = v0[117];
  v7 = v0[116];
  v8 = v0[115];
  v9 = v0[112];
  v10 = v0[111];
  v11 = v0[108];
  v12 = v0[105];
  v13 = v0[102];
  v14 = v0[99];
  v15 = v0[98];
  v18 = v0[97];
  v19 = v0[96];
  v20 = v0[95];
  v21 = v0[94];
  v22 = v0[91];
  v23 = v0[90];
  v24 = v0[89];
  v25 = v0[88];
  v26 = v0[87];
  v27 = v0[85];
  v28 = v0[84];

  v16 = v0[1];

  return v16();
}

uint64_t sub_100324620(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 1064);
  v6 = *v2;
  v4[134] = a1;
  v4[135] = v1;

  v7 = v3[132];
  if (v1)
  {
    v8 = v4[131];

    v9 = sub_100325C38;
  }

  else
  {

    v9 = sub_100324774;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_100324774()
{
  v250 = v0;
  v1 = *(v0 + 1072);
  if (!v1)
  {
    v1 = sub_10038E004(_swiftEmptyArrayStorage);
  }

  v2 = *(v0 + 1048);
  v239 = *(v0 + 864);
  v242 = *(v0 + 856);
  v246 = *(v0 + 848);
  v3 = *(v0 + 840);
  v4 = *(v0 + 832);
  v5 = *(v0 + 824);
  v6 = *(v0 + 816);
  v232 = *(v0 + 808);
  v236 = *(v0 + 800);
  v7 = *(v0 + 73);
  static DispatchTime.secondsElapsed(since:)();
  v9 = v8;
  v10 = *(v2 + 16);
  v222 = v10;

  v11 = *(v1 + 16);

  v220 = v1;
  v229 = *(sub_1001A5080(v12) + 16);

  v13 = &enum case for AutoCategorizeSessionType.initial(_:);
  v225 = v10 - v11;
  if (!v7)
  {
    v13 = &enum case for AutoCategorizeSessionType.postEnablement(_:);
  }

  v14 = v3;
  (*(v4 + 104))(v3, *v13, v5);
  type metadata accessor for REMAnalyticsManager();
  static REMAnalyticsManager.shared.getter();
  v15 = sub_1000F5104(&qword_100942140, &qword_1007A25C0);
  v16 = v15[12];
  v17 = v15[16];
  v18 = v15[20];
  v19 = v15[24];
  (*(v4 + 16))(v6, v14, v5);
  *(v6 + v16) = v9;
  *(v6 + v17) = v222;
  *(v6 + v18) = v229;
  *(v6 + v19) = v225;
  (*(v232 + 104))(v6, enum case for REMAnalyticsEvent.autoCategorizeSession(_:), v236);
  REMAnalyticsManager.post(event:)();

  (*(v232 + 8))(v6, v236);
  (*(v4 + 8))(v14, v5);
  (*(v242 + 8))(v239, v246);
  v20 = *(v0 + 952);
  v21 = *(v0 + 936);
  v215 = *(v0 + 632);
  v22 = *(*(v0 + 960) + 16);
  v23 = *(v22 + 16);

  swift_beginAccess();
  v24 = swift_beginAccess();
  v218 = v23;
  if (v23)
  {
    v29 = 0;
    v30 = *(v0 + 744);
    v200 = (v30 + 32);
    v201 = v30;
    v31 = (v30 + 8);
    v198 = (v30 + 56);
    v195 = (*(v0 + 656) + 8);
    v196 = (v30 + 48);
    v204 = *(v0 + 608);
    v223 = (v30 + 16);
    v32 = (v22 + 48);
    v33 = _swiftEmptyDictionarySingleton;
    v216 = v22;
    v230 = v31;
    while (1)
    {
      if (v29 >= *(v22 + 16))
      {
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
        return NSManagedObjectContext.perform<A>(schedule:_:)(v24, v25, v26, v27, v28);
      }

      v243 = v33;
      v35 = *(v0 + 936);
      v36 = *(v0 + 792);
      v37 = *(v32 - 1);
      v237 = v32;
      v38 = *v32;
      v39 = *(v32 - 2);

      v240 = v39;
      v40 = [v39 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v41 = *(v35 + 16);
      v247 = v38;
      if (v41)
      {
        v42 = *(v0 + 736);

        v43 = [v41 membershipByMemberIdentifier];
        sub_1000060C8(0, &qword_10093B450, REMMembership_ptr);
        sub_100334878(&qword_10093B410, &type metadata accessor for UUID);
        v44 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        if (*(v44 + 16) && (v45 = sub_100363F20(*(v0 + 792)), (v46 & 1) != 0))
        {
          v233 = v29;
          v47 = *(v0 + 944);
          v48 = *(*(v44 + 56) + 8 * v45);

          if (v48)
          {
            v49 = *(v47 + 16);

            v50 = v48;
            v51 = [v50 groupIdentifier];
            v226 = v50;
            if (v51)
            {
              v52 = *(v0 + 784);
              v53 = *(v0 + 776);
              v54 = *(v0 + 736);
              v55 = v51;
              static UUID._unconditionallyBridgeFromObjectiveC(_:)();

              (*v200)(v52, v53, v54);
              if (*(v49 + 16))
              {
                v56 = sub_100363F20(*(v0 + 784));
                if (v57)
                {
                  v58 = v56;
                  v207 = *(v0 + 736);
                  v210 = *(v0 + 784);
                  v59 = *(v0 + 728);
                  v60 = *(v49 + 56);
                  v61 = _s9UtilitiesO47REMCDListSectionThreadSafePartialRepresentationVMa();
                  v62 = *(v61 - 8);
                  sub_100193AB0(v60 + *(v62 + 72) * v58, v59);
                  v50 = v226;

                  (*v230)(v210, v207);
                  v63 = v61;
                  v31 = v230;
                  (*(v62 + 56))(v59, 0, 1, v63);
                  sub_1000050A4(v59, &qword_1009420F8, &unk_1007A2508);

                  v22 = v216;
LABEL_43:
                  v117 = [v50 groupIdentifier];
                  if (v117)
                  {
                    v118 = *(v0 + 712);
                    v119 = v117;
                    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

                    v120 = 0;
                  }

                  else
                  {
                    v120 = 1;
                  }

                  v121 = *(v0 + 952);
                  v122 = *(v0 + 944);
                  v123 = *(v0 + 928);
                  v124 = *(v0 + 720);
                  v125 = *(v0 + 712);
                  (*v198)(v125, v120, 1, *(v0 + 736));
                  sub_100031B58(v125, v124, &unk_100939D90, "8\n\r");
                  v126 = *(v121 + 16);
                  v127 = *(v122 + 16);
                  v128 = v126;

                  LOBYTE(v123) = sub_100192E28(v126, v220, v48, v127, v123, v37, v247);

                  v197 = v123;
                  if (v123)
                  {
                    v129 = *(v0 + 928);
                    v130 = *(v0 + 736);
                    v131 = *(v0 + 720);
                    v132 = *(v0 + 704);
                    v133 = *(v0 + 680);
                    *(v0 + 480) = v37;
                    *(v0 + 488) = v247;
                    sub_10013BCF4();
                    v134 = StringProtocol.lowercased(with:)();
                    v136 = v135;

                    sub_100010364(v131, v132, &unk_100939D90, "8\n\r");
                    static Date.now.getter();
                    if ((*v196)(v132, 1, v130) == 1)
                    {
                      isa = 0;
                    }

                    else
                    {
                      v138 = *(v0 + 736);
                      v139 = *(v0 + 704);
                      isa = UUID._bridgeToObjectiveC()().super.isa;
                      (*v31)(v139, v138);
                    }

                    v140 = *(v0 + 976);
                    v141 = *(v0 + 680);
                    v142 = *(v0 + 648);
                    v143 = objc_allocWithZone(REMTimestampedUUID);
                    v144 = Date._bridgeToObjectiveC()().super.isa;
                    v145 = [v143 initWithIdentifier:isa modifiedOn:v144];

                    (*v195)(v141, v142);
                    swift_beginAccess();
                    sub_10031DEEC(v145, v134, v136, sub_1002C8FA0, sub_10037572C);
                    swift_endAccess();
                    v22 = v216;
                    v31 = v230;
                  }

                  else
                  {
                  }

                  v146 = *(v0 + 720);
                  v147 = *(v0 + 696);
                  v148 = *(v0 + 608);
                  (*v223)(*(v0 + 752), *(v0 + 792), *(v0 + 736));
                  sub_100010364(v146, v147, &unk_100939D90, "8\n\r");
                  sub_10033251C(v148, v0 + 144);
                  v149 = Logger.logObject.getter();
                  LOBYTE(v146) = static os_log_type_t.default.getter();
                  sub_100332478(v148);
                  v150 = v146;
                  v151 = os_log_type_enabled(v149, v146);
                  v152 = *(v0 + 752);
                  v208 = *(v0 + 736);
                  v212 = *(v0 + 792);
                  v199 = *(v0 + 720);
                  v153 = *(v0 + 696);
                  if (v151)
                  {
                    v192 = *(v0 + 688);
                    type = v150;
                    v154 = *(v0 + 640);
                    v155 = swift_slowAlloc();
                    v191 = swift_slowAlloc();
                    v249[0] = swift_slowAlloc();
                    *v155 = 136447234;
                    *(v0 + 520) = v154;
                    sub_1000F5104(&qword_100942138, &qword_1007A25B8);
                    v156 = String.init<A>(describing:)();
                    v158 = sub_10000668C(v156, v157, v249);

                    *(v155 + 4) = v158;
                    *(v155 + 12) = 2114;
                    v159 = *(v204 + 8);
                    *(v0 + 544) = v159;
                    *(v155 + 14) = v159;
                    *v191 = v159;
                    *(v155 + 22) = 2082;
                    sub_100010364(v0 + 544, v0 + 528, &unk_10093AF40, &unk_100795790);
                    sub_100334878(&qword_10093F2A0, &type metadata accessor for UUID);
                    v160 = dispatch thunk of CustomStringConvertible.description.getter();
                    v162 = v161;
                    v193 = *v31;
                    (*v31)(v152, v208);
                    v163 = sub_10000668C(v160, v162, v249);

                    *(v155 + 24) = v163;
                    *(v155 + 32) = 2082;
                    v164 = Optional.descriptionOrNil.getter();
                    v166 = v165;
                    sub_1000050A4(v153, &unk_100939D90, "8\n\r");
                    v167 = sub_10000668C(v164, v166, v249);

                    *(v155 + 34) = v167;
                    *(v155 + 42) = 1026;
                    *(v155 + 44) = v197 & 1;
                    _os_log_impl(&_mh_execute_header, v149, type, "%{public}s: Skipped auto-categorizing reminder while checking local correction  {listObjectID: %{public}@, reminderIdentifier: %{public}s, sectionIdentifier: %{public}s, shouldUpdateAutoCategorizationLocalCorrections: %{BOOL,public}d}", v155, 0x30u);
                    sub_1000050A4(v191, &unk_100938E70, &unk_100797230);

                    swift_arrayDestroy();

                    sub_1000050A4(v199, &unk_100939D90, "8\n\r");
                    v24 = (v193)(v212, v208);
                    v22 = v216;
                  }

                  else
                  {

                    sub_1000050A4(v153, &unk_100939D90, "8\n\r");
                    v168 = *v31;
                    (*v31)(v152, v208);
                    sub_1000050A4(v199, &unk_100939D90, "8\n\r");
                    v24 = (v168)(v212, v208);
                  }

                  v33 = v243;
                  goto LABEL_42;
                }
              }

              v64 = *(v0 + 784);
              v65 = *(v0 + 736);
              v66 = *(v0 + 728);

              (*v31)(v64, v65);
              v67 = _s9UtilitiesO47REMCDListSectionThreadSafePartialRepresentationVMa();
              (*(*(v67 - 8) + 56))(v66, 1, 1, v67);
              v68 = v66;
              v50 = v226;
              sub_1000050A4(v68, &qword_1009420F8, &unk_1007A2508);

              v22 = v216;
            }

            else
            {
              v69 = *(v0 + 73);

              if ((v69 & 1) == 0)
              {
                goto LABEL_43;
              }
            }
          }

          else
          {
            v50 = 0;
          }

          v29 = v233;
        }

        else
        {

          v50 = 0;
        }
      }

      else
      {

        v50 = 0;
      }

      if (!*(v220 + 16))
      {
        v227 = v50;

        v73 = *v223;
LABEL_33:
        v87 = *(v0 + 608);
        v73(*(v0 + 760), *(v0 + 792), *(v0 + 736));
        sub_10033251C(v87, v0 + 272);
        v88 = Logger.logObject.getter();
        v89 = static os_log_type_t.default.getter();
        sub_100332478(v87);
        v90 = os_log_type_enabled(v88, v89);
        v91 = *(v0 + 792);
        v92 = *(v0 + 760);
        v93 = *(v0 + 736);
        if (v90)
        {
          v234 = v29;
          v94 = *(v0 + 640);
          v95 = swift_slowAlloc();
          v96 = swift_slowAlloc();
          v249[0] = swift_slowAlloc();
          *v95 = 136446978;
          *(v0 + 496) = v94;
          sub_1000F5104(&qword_100942138, &qword_1007A25B8);
          v97 = String.init<A>(describing:)();
          v211 = v91;
          v99 = sub_10000668C(v97, v98, v249);

          *(v95 + 4) = v99;
          *(v95 + 12) = 2048;
          *(v95 + 14) = v234;
          *(v95 + 22) = 2114;
          v100 = *(v204 + 8);
          *(v0 + 536) = v100;
          *(v95 + 24) = v100;
          *v96 = v100;
          *(v95 + 32) = 2082;
          sub_100010364(v0 + 536, v0 + 504, &unk_10093AF40, &unk_100795790);
          sub_100334878(&qword_10093F2A0, &type metadata accessor for UUID);
          v101 = dispatch thunk of CustomStringConvertible.description.getter();
          v103 = v102;
          v104 = *v230;
          (*v230)(v92, v93);
          v105 = v101;
          v29 = v234;
          v106 = sub_10000668C(v105, v103, v249);

          *(v95 + 34) = v106;
          _os_log_impl(&_mh_execute_header, v88, v89, "%{public}s: Did not auto-categorize reminder due to auto-categorizer having 0 predication for reminder title {index: %ld, listObjectID: %{public}@, reminderIdentifier: %{public}s}", v95, 0x2Au);
          sub_1000050A4(v96, &unk_100938E70, &unk_100797230);
          v22 = v216;

          swift_arrayDestroy();

          v24 = (v104)(v211, v93);
          v31 = v230;
        }

        else
        {

          v34 = *v31;
          (*v31)(v92, v93);
          v24 = (v34)(v91, v93);
        }

        v33 = v243;
        goto LABEL_9;
      }

      v70 = sub_100005F4C(v37, v38);
      v72 = v71;

      v73 = *v223;
      if ((v72 & 1) == 0)
      {
        v227 = v50;
        goto LABEL_33;
      }

      v74 = v50;
      v75 = *(v0 + 768);
      v76 = (*(v220 + 56) + 16 * v70);
      v78 = *v76;
      v77 = v76[1];
      v73(v75, *(v0 + 792), *(v0 + 736));

      v33 = v243;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v249[0] = v243;
      v24 = sub_100363F20(v75);
      v80 = *(v243 + 16);
      v81 = (v25 & 1) == 0;
      v82 = __OFADD__(v80, v81);
      v83 = v80 + v81;
      if (v82)
      {
        goto LABEL_64;
      }

      v84 = v25;
      v233 = v29;
      if (*(v243 + 24) >= v83)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v169 = v24;
          sub_100375740();
          v24 = v169;
          v33 = v249[0];
        }
      }

      else
      {
        v85 = *(v0 + 768);
        sub_10036E938(v83, isUniquelyReferenced_nonNull_native);
        v33 = v249[0];
        v24 = sub_100363F20(v85);
        if ((v84 & 1) != (v86 & 1))
        {
          v189 = *(v0 + 736);

          return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        }
      }

      v244 = *(v0 + 792);
      v107 = *(v0 + 768);
      v108 = *(v0 + 736);
      if (v84)
      {
        v109 = (v33[7] + 16 * v24);
        v110 = v109[1];
        *v109 = v78;
        v109[1] = v77;

        v111 = *v31;
        (*v31)(v107, v108);
        v24 = (v111)(v244, v108);
      }

      else
      {
        v33[(v24 >> 6) + 8] |= 1 << v24;
        v112 = v24;
        v73(v33[6] + *(v201 + 72) * v24, v107, v108);
        v113 = (v33[7] + 16 * v112);
        *v113 = v78;
        v113[1] = v77;

        v114 = *(v201 + 8);
        v31 = v230;
        v114(v107, v108);
        v24 = (v114)(v244, v108);
        v115 = v33[2];
        v82 = __OFADD__(v115, 1);
        v116 = v115 + 1;
        if (v82)
        {
          goto LABEL_65;
        }

        v33[2] = v116;
      }

      v22 = v216;
LABEL_42:
      v29 = v233;
LABEL_9:
      ++v29;
      v32 = v237 + 3;
      if (v218 == v29)
      {
        goto LABEL_57;
      }
    }
  }

  v33 = _swiftEmptyDictionarySingleton;
LABEL_57:

  v238 = *(v0 + 1000);
  v241 = *(v0 + 1008);
  v235 = *(v0 + 140);
  v170 = *(v0 + 76);
  v245 = *(v0 + 976);
  v248 = *(v0 + 968);
  v221 = *(v0 + 936);
  v224 = *(v0 + 952);
  v202 = *(v0 + 928);
  v171 = *(v0 + 920);
  v213 = v171;
  v205 = *(v0 + 912);
  v228 = *(v0 + 888);
  v231 = *(v0 + 872);
  v172 = *(v0 + 672);
  v217 = *(v0 + 664);
  v173 = *(v0 + 656);
  v174 = *(v0 + 648);
  v214 = v174;
  v175 = *(v0 + 632);
  v219 = *(v0 + 624);
  v176 = *(v0 + 616);
  v177 = *(v0 + 608);
  v209 = swift_allocObject();
  swift_weakInit();
  sub_100010364(v202, v171, &unk_10093F420, &unk_100797AE0);
  (*(v173 + 16))(v172, v176, v174);
  v178 = (v170 + 104) & ~v170;
  v206 = (v178 + v205 + 7) & 0xFFFFFFFFFFFFFFF8;
  v203 = (v206 + 15) & 0xFFFFFFFFFFFFFFF8;
  v179 = (v203 + 15) & 0xFFFFFFFFFFFFFFF8;
  v180 = (v179 + 15) & 0xFFFFFFFFFFFFFFF8;
  v181 = (v180 + *(v173 + 80) + 8) & ~*(v173 + 80);
  v182 = swift_allocObject();
  *(v0 + 1088) = v182;
  *(v182 + 16) = v209;
  *(v182 + 24) = v219;
  v183 = *v177;
  v184 = v177[1];
  v185 = v177[2];
  *(v182 + 73) = *(v177 + 41);
  *(v182 + 48) = v184;
  *(v182 + 64) = v185;
  *(v182 + 32) = v183;
  *(v182 + 96) = v33;
  sub_100031B58(v213, v182 + v178, &unk_10093F420, &unk_100797AE0);
  *(v182 + v206) = v248;
  *(v182 + v203) = v221;
  *(v182 + v179) = v245;
  *(v182 + v180) = v224;
  (*(v173 + 32))(v182 + v181, v172, v214);
  v238(v228, v235, v231);
  v186 = v219;
  sub_10033251C(v177, v0 + 80);
  v187 = async function pointer to NSManagedObjectContext.perform<A>(schedule:_:)[1];

  v24 = swift_task_alloc();
  *(v0 + 1096) = v24;
  *v24 = v0;
  *(v24 + 8) = sub_100327384;
  v25 = *(v0 + 888);
  v188 = *(v0 + 624);
  v26 = sub_100336410;
  v28 = &type metadata for () + 8;
  v27 = v182;

  return NSManagedObjectContext.perform<A>(schedule:_:)(v24, v25, v26, v27, v28);
}

uint64_t sub_100325C38()
{
  v269 = v0;
  v1 = v0[135];
  v2 = v0[79];
  (*(v0[107] + 8))(v0[108], v0[106]);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[135];
    v6 = v0[80];
    v7 = swift_slowAlloc();
    v268[0] = swift_slowAlloc();
    *v7 = 136446466;
    v0[72] = v6;
    sub_1000F5104(&qword_100942138, &qword_1007A25B8);
    v8 = String.init<A>(describing:)();
    v10 = sub_10000668C(v8, v9, v268);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2082;
    swift_getErrorValue();
    v12 = v0[42];
    v11 = v0[43];
    v13 = v0[44];
    v14 = Error.rem_errorDescription.getter();
    v16 = sub_10000668C(v14, v15, v268);

    *(v7 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s: Failed to predict categories of reminder titles {error: %{public}s}", v7, 0x16u);
    swift_arrayDestroy();
  }

  v17 = v0[76];
  v18 = v0[75];
  sub_10033251C(v17, (v0 + 26));

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  sub_100332478(v17);

  v234 = v0;
  if (os_log_type_enabled(v19, v20))
  {
    v21 = v0[80];
    v22 = v0[76];
    v23 = v0[75];
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v267 = swift_slowAlloc();
    *v24 = 136446722;
    v0[69] = v21;
    sub_1000F5104(&qword_100942138, &qword_1007A25B8);
    v26 = String.init<A>(describing:)();
    v28 = sub_10000668C(v26, v27, &v267);

    *(v24 + 4) = v28;
    *(v24 + 12) = 2114;
    v29 = *(v22 + 8);
    v0[74] = v29;
    *(v24 + 14) = v29;
    *v25 = v29;
    *(v24 + 22) = 2082;
    v30 = *(v23 + 16);
    v31 = v0;
    if (v30)
    {
      v32 = v0[75];
      v268[0] = _swiftEmptyArrayStorage;
      sub_100010364((v31 + 74), (v31 + 70), &unk_10093AF40, &unk_100795790);
      specialized ContiguousArray.reserveCapacity(_:)();
      v33 = (v32 + 32);
      do
      {
        v34 = *v33;
        v33 += 3;
        v35 = v34;
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v36 = *(v268[0] + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        --v30;
      }

      while (v30);
    }

    else
    {
      sub_100010364((v0 + 74), (v0 + 71), &unk_10093AF40, &unk_100795790);
    }

    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    v37 = Array.description.getter();
    v39 = v38;

    v40 = sub_10000668C(v37, v39, &v267);

    *(v24 + 24) = v40;
    _os_log_impl(&_mh_execute_header, v19, v20, "%{public}s: Failed to predict categories of reminder titles {listObjectID: %{public}@, reminderIDs: %{public}s}", v24, 0x20u);
    sub_1000050A4(v25, &unk_100938E70, &unk_100797230);

    swift_arrayDestroy();
  }

  else
  {
  }

  v41 = v234;
  v42 = v234[135];
  v43 = sub_10038E004(_swiftEmptyArrayStorage);

  v44 = v234[119];
  v45 = v234[117];
  v245 = v234[79];
  v46 = *(v234[120] + 16);
  v47 = *(v46 + 16);

  swift_beginAccess();
  v48 = swift_beginAccess();
  v249 = v46;
  v251 = v47;
  v247 = v43;
  if (v47)
  {
    v53 = 0;
    v54 = v234[93];
    v228 = (v54 + 32);
    v253 = (v54 + 8);
    v226 = (v54 + 56);
    v223 = (v234[82] + 8);
    v224 = (v54 + 48);
    v231 = v234[76];
    v229 = v54;
    v255 = (v54 + 16);
    v55 = (v46 + 48);
    v56 = _swiftEmptyDictionarySingleton;
    while (1)
    {
      if (v53 >= *(v46 + 16))
      {
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
        return NSManagedObjectContext.perform<A>(schedule:_:)(v48, v49, v50, v51, v52);
      }

      v262 = v56;
      v265 = v53;
      v58 = v41[117];
      v59 = v41[99];
      v60 = *(v55 - 1);
      v258 = v55;
      v61 = *v55;
      v62 = *(v55 - 2);

      v260 = v62;
      v63 = [v62 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v64 = *(v58 + 16);
      if (!v64)
      {
        break;
      }

      v65 = v41[92];

      v66 = [v64 membershipByMemberIdentifier];
      sub_1000060C8(0, &qword_10093B450, REMMembership_ptr);
      sub_100334878(&qword_10093B410, &type metadata accessor for UUID);
      v67 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      if (!*(v67 + 16) || (v68 = sub_100363F20(v41[99]), (v69 & 1) == 0))
      {

LABEL_27:
        v73 = 0;
        goto LABEL_28;
      }

      v70 = v41[118];
      v71 = *(*(v67 + 56) + 8 * v68);

      if (v71)
      {
        v72 = *(v70 + 16);

        v73 = v71;
        v74 = [v73 groupIdentifier];
        if (v74)
        {
          v75 = v41[98];
          v76 = v41[97];
          v77 = v41[92];
          v78 = v74;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          (*v228)(v75, v76, v77);
          if (*(v72 + 16))
          {
            v79 = sub_100363F20(v41[98]);
            if (v80)
            {
              v81 = v79;
              v236 = v41[92];
              v239 = v41[98];
              v82 = v41[91];
              v83 = v73;
              v84 = *(v72 + 56);
              v85 = _s9UtilitiesO47REMCDListSectionThreadSafePartialRepresentationVMa();
              v86 = v61;
              v87 = *(v85 - 8);
              sub_100193AB0(v84 + *(v87 + 72) * v81, v82);

              (*v253)(v239, v236);
              v88 = v85;
              v41 = v234;
              (*(v87 + 56))(v82, 0, 1, v88);
              v61 = v86;
              sub_1000050A4(v82, &qword_1009420F8, &unk_1007A2508);

              v43 = v247;
LABEL_49:
              v142 = [v83 groupIdentifier];
              v243 = v83;
              if (v142)
              {
                v143 = v41[89];
                v144 = v142;
                static UUID._unconditionallyBridgeFromObjectiveC(_:)();

                v145 = 0;
              }

              else
              {
                v145 = 1;
              }

              v146 = v41[119];
              v147 = v41[118];
              v148 = v41[116];
              v149 = v41[90];
              v150 = v41[89];
              (*v226)(v150, v145, 1, v41[92]);
              sub_100031B58(v150, v149, &unk_100939D90, "8\n\r");
              v151 = *(v146 + 16);
              v152 = *(v147 + 16);
              v153 = v151;

              LOBYTE(v148) = sub_100192E28(v151, v43, v71, v152, v148, v60, v61);

              v225 = v148;
              if (v148)
              {
                v154 = v41[116];
                v155 = v41[92];
                v156 = v41[90];
                v157 = v61;
                v158 = v41[88];
                v159 = v41[85];
                v41[60] = v60;
                v41[61] = v157;
                sub_10013BCF4();
                v160 = StringProtocol.lowercased(with:)();
                v162 = v161;

                sub_100010364(v156, v158, &unk_100939D90, "8\n\r");
                static Date.now.getter();
                if ((*v224)(v158, 1, v155) == 1)
                {
                  isa = 0;
                }

                else
                {
                  v164 = v41[92];
                  v165 = v41[88];
                  isa = UUID._bridgeToObjectiveC()().super.isa;
                  (*v253)(v165, v164);
                }

                v166 = v41[122];
                v167 = v41[85];
                v168 = v41[81];
                v169 = objc_allocWithZone(REMTimestampedUUID);
                v170 = Date._bridgeToObjectiveC()().super.isa;
                v171 = [v169 initWithIdentifier:isa modifiedOn:v170];

                (*v223)(v167, v168);
                swift_beginAccess();
                sub_10031DEEC(v171, v160, v162, sub_1002C8FA0, sub_10037572C);
                swift_endAccess();
                v43 = v247;
              }

              else
              {
              }

              v172 = v41[90];
              v173 = v41[87];
              v174 = v41[76];
              (*v255)(v41[94], v41[99], v41[92]);
              sub_100010364(v172, v173, &unk_100939D90, "8\n\r");
              sub_10033251C(v174, (v41 + 18));
              v175 = Logger.logObject.getter();
              LOBYTE(v172) = static os_log_type_t.default.getter();
              sub_100332478(v174);
              v176 = v172;
              v177 = os_log_type_enabled(v175, v172);
              v178 = v41[94];
              v237 = v41[92];
              v241 = v41[99];
              v227 = v41[90];
              v179 = v41[87];
              if (v177)
              {
                v222 = v41[86];
                v180 = v41[80];
                v181 = swift_slowAlloc();
                v221 = swift_slowAlloc();
                v268[0] = swift_slowAlloc();
                *v181 = 136447234;
                v41[65] = v180;
                sub_1000F5104(&qword_100942138, &qword_1007A25B8);
                v182 = String.init<A>(describing:)();
                v184 = sub_10000668C(v182, v183, v268);

                *(v181 + 4) = v184;
                *(v181 + 12) = 2114;
                v185 = *(v231 + 8);
                v41[68] = v185;
                *(v181 + 14) = v185;
                *v221 = v185;
                type = v176;
                *(v181 + 22) = 2082;
                sub_100010364((v41 + 68), (v41 + 66), &unk_10093AF40, &unk_100795790);
                sub_100334878(&qword_10093F2A0, &type metadata accessor for UUID);
                v186 = dispatch thunk of CustomStringConvertible.description.getter();
                v188 = v187;
                v189 = *v253;
                (*v253)(v178, v237);
                v190 = sub_10000668C(v186, v188, v268);

                *(v181 + 24) = v190;
                *(v181 + 32) = 2082;
                v191 = Optional.descriptionOrNil.getter();
                v193 = v192;
                sub_1000050A4(v179, &unk_100939D90, "8\n\r");
                v194 = sub_10000668C(v191, v193, v268);

                *(v181 + 34) = v194;
                *(v181 + 42) = 1026;
                *(v181 + 44) = v225 & 1;
                _os_log_impl(&_mh_execute_header, v175, type, "%{public}s: Skipped auto-categorizing reminder while checking local correction  {listObjectID: %{public}@, reminderIdentifier: %{public}s, sectionIdentifier: %{public}s, shouldUpdateAutoCategorizationLocalCorrections: %{BOOL,public}d}", v181, 0x30u);
                sub_1000050A4(v221, &unk_100938E70, &unk_100797230);

                swift_arrayDestroy();

                sub_1000050A4(v227, &unk_100939D90, "8\n\r");
                v48 = (v189)(v241, v237);
                v43 = v247;
              }

              else
              {

                sub_1000050A4(v179, &unk_100939D90, "8\n\r");
                v195 = *v253;
                (*v253)(v178, v237);
                sub_1000050A4(v227, &unk_100939D90, "8\n\r");
                v48 = (v195)(v241, v237);
              }

              v56 = v262;
              goto LABEL_44;
            }
          }

          v137 = v41[98];
          v138 = v41[92];
          v139 = v41[91];

          (*v253)(v137, v138);
          v140 = _s9UtilitiesO47REMCDListSectionThreadSafePartialRepresentationVMa();
          (*(*(v140 - 8) + 56))(v139, 1, 1, v140);
          sub_1000050A4(v139, &qword_1009420F8, &unk_1007A2508);

          v43 = v247;
          v46 = v249;
        }

        else
        {
          v83 = v73;
          v141 = *(v41 + 73);

          if ((v141 & 1) == 0)
          {
            goto LABEL_49;
          }

          v46 = v249;
          v73 = v83;
        }
      }

      else
      {
        v73 = 0;
        v46 = v249;
      }

LABEL_28:
      if (!*(v43 + 16))
      {

        v92 = *v255;
LABEL_35:
        v105 = v41[76];
        v92(v41[95], v41[99], v41[92]);
        sub_10033251C(v105, (v41 + 34));
        v106 = Logger.logObject.getter();
        v107 = static os_log_type_t.default.getter();
        sub_100332478(v105);
        v108 = os_log_type_enabled(v106, v107);
        v109 = v41[99];
        v110 = v41[95];
        v111 = v41[92];
        if (v108)
        {
          v112 = v41[80];
          v240 = v41[99];
          v113 = swift_slowAlloc();
          v114 = swift_slowAlloc();
          v268[0] = swift_slowAlloc();
          *v113 = 136446978;
          v41[62] = v112;
          sub_1000F5104(&qword_100942138, &qword_1007A25B8);
          v115 = String.init<A>(describing:)();
          v117 = sub_10000668C(v115, v116, v268);

          *(v113 + 4) = v117;
          *(v113 + 12) = 2048;
          *(v113 + 14) = v265;
          *(v113 + 22) = 2114;
          v118 = *(v231 + 8);
          v41[67] = v118;
          *(v113 + 24) = v118;
          *v114 = v118;
          *(v113 + 32) = 2082;
          sub_100010364((v41 + 67), (v41 + 63), &unk_10093AF40, &unk_100795790);
          sub_100334878(&qword_10093F2A0, &type metadata accessor for UUID);
          v119 = dispatch thunk of CustomStringConvertible.description.getter();
          v121 = v120;
          v122 = *v253;
          (*v253)(v110, v111);
          v123 = v119;
          v46 = v249;
          v124 = sub_10000668C(v123, v121, v268);

          *(v113 + 34) = v124;
          _os_log_impl(&_mh_execute_header, v106, v107, "%{public}s: Did not auto-categorize reminder due to auto-categorizer having 0 predication for reminder title {index: %ld, listObjectID: %{public}@, reminderIdentifier: %{public}s}", v113, 0x2Au);
          sub_1000050A4(v114, &unk_100938E70, &unk_100797230);
          v43 = v247;

          swift_arrayDestroy();

          v48 = (v122)(v240, v111);
          v41 = v234;
        }

        else
        {

          v57 = *v253;
          (*v253)(v110, v111);
          v48 = (v57)(v109, v111);
        }

        v56 = v262;
        goto LABEL_15;
      }

      v89 = sub_100005F4C(v60, v61);
      v91 = v90;

      v92 = *v255;
      if ((v91 & 1) == 0)
      {
        goto LABEL_35;
      }

      v93 = v41[96];
      v94 = (*(v43 + 56) + 16 * v89);
      v96 = *v94;
      v95 = v94[1];
      v92(v93, v41[99], v41[92]);

      v56 = v262;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v268[0] = v262;
      v48 = sub_100363F20(v93);
      v98 = *(v262 + 16);
      v99 = (v49 & 1) == 0;
      v100 = __OFADD__(v98, v99);
      v101 = v98 + v99;
      if (v100)
      {
        goto LABEL_70;
      }

      v102 = v49;
      if (*(v262 + 24) >= v101)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v196 = v73;
          v197 = v48;
          sub_100375740();
          v48 = v197;
          v73 = v196;
          v56 = v268[0];
        }
      }

      else
      {
        v103 = v41[96];
        sub_10036E938(v101, isUniquelyReferenced_nonNull_native);
        v56 = v268[0];
        v48 = sub_100363F20(v103);
        if ((v102 & 1) != (v104 & 1))
        {
          v218 = v41[92];

          return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        }
      }

      v125 = v41[99];
      v126 = v41[96];
      v127 = v41[92];
      if (v102)
      {
        v128 = (v56[7] + 16 * v48);
        v129 = v128[1];
        *v128 = v96;
        v128[1] = v95;

        v130 = *v253;
        (*v253)(v126, v127);
        v48 = (v130)(v125, v127);
      }

      else
      {
        v56[(v48 >> 6) + 8] |= 1 << v48;
        v263 = v125;
        v131 = v73;
        v132 = v48;
        v92(v56[6] + *(v229 + 72) * v48, v126, v127);
        v133 = (v56[7] + 16 * v132);
        *v133 = v96;
        v133[1] = v95;

        v134 = *(v229 + 8);
        v134(v126, v127);
        v48 = (v134)(v263, v127);
        v135 = v56[2];
        v100 = __OFADD__(v135, 1);
        v136 = v135 + 1;
        if (v100)
        {
          goto LABEL_71;
        }

        v56[2] = v136;
      }

      v43 = v247;
LABEL_44:
      v46 = v249;
LABEL_15:
      v53 = v265 + 1;
      v55 = v258 + 3;
      if (v251 == v265 + 1)
      {
        goto LABEL_63;
      }
    }

    goto LABEL_27;
  }

  v56 = _swiftEmptyDictionarySingleton;
LABEL_63:

  v259 = v41[125];
  v261 = v41[126];
  v257 = *(v41 + 35);
  v238 = *(v41 + 76);
  v264 = v41[122];
  v266 = v41[121];
  v250 = v41[117];
  v252 = v41[119];
  v198 = v41;
  v199 = v41[116];
  v200 = v198[115];
  v242 = v200;
  v232 = v198[114];
  v254 = v198[111];
  v256 = v198[109];
  v201 = v198[84];
  v246 = v198[83];
  v202 = v198[82];
  v203 = v198[81];
  v244 = v203;
  v204 = v198[79];
  v248 = v198[78];
  v205 = v198[77];
  v206 = v198[76];
  v235 = swift_allocObject();
  swift_weakInit();
  sub_100010364(v199, v200, &unk_10093F420, &unk_100797AE0);
  (*(v202 + 16))(v201, v205, v203);
  v207 = (v238 + 104) & ~v238;
  v233 = (v207 + v232 + 7) & 0xFFFFFFFFFFFFFFF8;
  v230 = (v233 + 15) & 0xFFFFFFFFFFFFFFF8;
  v208 = (v230 + 15) & 0xFFFFFFFFFFFFFFF8;
  v209 = (v208 + 15) & 0xFFFFFFFFFFFFFFF8;
  v210 = (v209 + *(v202 + 80) + 8) & ~*(v202 + 80);
  v211 = swift_allocObject();
  v198[136] = v211;
  *(v211 + 16) = v235;
  *(v211 + 24) = v248;
  v212 = *v206;
  v213 = v206[1];
  v214 = v206[2];
  *(v211 + 73) = *(v206 + 41);
  *(v211 + 48) = v213;
  *(v211 + 64) = v214;
  *(v211 + 32) = v212;
  *(v211 + 96) = v56;
  sub_100031B58(v242, v211 + v207, &unk_10093F420, &unk_100797AE0);
  *(v211 + v233) = v266;
  *(v211 + v230) = v250;
  *(v211 + v208) = v264;
  *(v211 + v209) = v252;
  (*(v202 + 32))(v211 + v210, v201, v244);
  v259(v254, v257, v256);
  v215 = v248;
  sub_10033251C(v206, (v198 + 10));
  v216 = async function pointer to NSManagedObjectContext.perform<A>(schedule:_:)[1];

  v48 = swift_task_alloc();
  v198[137] = v48;
  *v48 = v198;
  *(v48 + 8) = sub_100327384;
  v49 = v198[111];
  v217 = v198[78];
  v50 = sub_100336410;
  v52 = &type metadata for () + 8;
  v51 = v211;

  return NSManagedObjectContext.perform<A>(schedule:_:)(v48, v49, v50, v51, v52);
}

uint64_t sub_100327384()
{
  v2 = *v1;
  v3 = *(*v1 + 1096);
  v4 = *v1;
  *(*v1 + 1104) = v0;

  v5 = *(v2 + 1088);
  v6 = *(v2 + 1040);
  (*(v2 + 1032))(*(v2 + 888), *(v2 + 872));

  if (v0)
  {
    v7 = sub_100327700;
  }

  else
  {
    v7 = sub_100327510;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100327510()
{
  v1 = v0[122];
  v2 = v0[121];
  v3 = v0[120];
  v4 = v0[119];
  v5 = v0[118];
  v6 = v0[117];
  v7 = v0[115];
  v8 = v0[112];
  v11 = v0[111];
  v12 = v0[108];
  v13 = v0[105];
  v14 = v0[102];
  v15 = v0[99];
  v16 = v0[98];
  v17 = v0[97];
  v18 = v0[96];
  v19 = v0[95];
  v20 = v0[94];
  v21 = v0[91];
  v22 = v0[90];
  v23 = v0[89];
  v24 = v0[88];
  v25 = v0[87];
  v26 = v0[85];
  v27 = v0[84];
  sub_1000050A4(v0[116], &unk_10093F420, &unk_100797AE0);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100327700()
{
  v1 = v0[122];
  v2 = v0[121];
  v3 = v0[120];
  v4 = v0[119];
  v5 = v0[118];
  sub_1000050A4(v0[116], &unk_10093F420, &unk_100797AE0);

  v29 = v0[138];
  v6 = v0[117];
  v7 = v0[116];
  v8 = v0[115];
  v9 = v0[112];
  v10 = v0[111];
  v11 = v0[108];
  v12 = v0[105];
  v13 = v0[102];
  v14 = v0[99];
  v15 = v0[98];
  v18 = v0[97];
  v19 = v0[96];
  v20 = v0[95];
  v21 = v0[94];
  v22 = v0[91];
  v23 = v0[90];
  v24 = v0[89];
  v25 = v0[88];
  v26 = v0[87];
  v27 = v0[85];
  v28 = v0[84];

  v16 = v0[1];

  return v16();
}

void sub_1003278E8(uint64_t a1, void (**a2)(char *, uint64_t), uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v389 = a6;
  v410 = a4;
  v373 = sub_1000F5104(&unk_10093A3D0, &qword_100795770);
  v20 = *(*(v373 - 8) + 64);
  __chkstk_darwin(v373);
  v375 = &v331 - v21;
  v402 = type metadata accessor for REMAnalyticsEvent();
  v22 = *(v402 - 8);
  v23 = *(v22 + 8);
  __chkstk_darwin(v402);
  v401 = (&v331 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v395 = _s9UtilitiesO47REMCDListSectionThreadSafePartialRepresentationVMa();
  v388 = *(v395 - 8);
  v25 = *(v388 + 64);
  __chkstk_darwin(v395);
  v387 = &v331 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v399 = type metadata accessor for Date();
  v384 = *(v399 - 8);
  v27 = *(v384 + 8);
  __chkstk_darwin(v399);
  v374 = &v331 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v407 = &v331 - v30;
  v31 = sub_1000F5104(&qword_1009420F8, &unk_1007A2508);
  v32 = *(*(v31 - 8) + 64);
  __chkstk_darwin(v31 - 8);
  v393 = &v331 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v378 = &v331 - v35;
  v408 = type metadata accessor for Logger();
  v383 = *(v408 - 8);
  v36 = *(v383 + 8);
  __chkstk_darwin(v408);
  v376 = &v331 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v403 = &v331 - v39;
  __chkstk_darwin(v40);
  v394 = &v331 - v41;
  v396 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v42 = *(*(v396 - 8) + 64);
  __chkstk_darwin(v396);
  v386 = &v331 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v372 = &v331 - v45;
  __chkstk_darwin(v46);
  v370 = &v331 - v47;
  __chkstk_darwin(v48);
  v405 = &v331 - v49;
  __chkstk_darwin(v50);
  v379 = &v331 - v51;
  __chkstk_darwin(v52);
  v371 = &v331 - v53;
  __chkstk_darwin(v54);
  v385 = &v331 - v55;
  __chkstk_darwin(v56);
  v391 = &v331 - v57;
  __chkstk_darwin(v58);
  v398 = &v331 - v59;
  __chkstk_darwin(v60);
  v404 = &v331 - v61;
  v412 = type metadata accessor for UUID();
  v382 = *(v412 - 8);
  v62 = *(v382 + 64);
  __chkstk_darwin(v412);
  v381 = &v331 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v64);
  v369 = &v331 - v65;
  __chkstk_darwin(v66);
  v400 = &v331 - v67;
  __chkstk_darwin(v68);
  v406 = &v331 - v69;
  __chkstk_darwin(v70);
  v409 = &v331 - v71;
  __chkstk_darwin(v72);
  v377 = &v331 - v73;
  __chkstk_darwin(v74);
  v380 = &v331 - v75;
  __chkstk_darwin(v76);
  v390 = &v331 - v77;
  __chkstk_darwin(v78);
  v397 = &v331 - v79;
  __chkstk_darwin(v80);
  v413 = &v331 - v81;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v392 = a8;
    v367 = v22;
    v368 = a2;
    v83 = a7;
    v411 = Strong;
    v84 = *a3;
    v415 = 0;
    v85 = [a2 existingObjectWithID:v84 error:&v415];
    v86 = v415;
    if (v85)
    {
      v87 = v85;
      v366 = a5;
      objc_opt_self();
      v88 = swift_dynamicCastObjCClass();
      v89 = v86;
      if (!v88)
      {

        return;
      }

      v365 = v87;
      v90 = [v88 membershipsOfRemindersInSectionsAsData];
      v363 = a3;
      if (v90)
      {
        v91 = v90;
        v92 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v94 = v93;

        sub_1000060C8(0, &qword_1009440A0, REMMemberships_ptr);
        static REMJSONRepresentable.fromJSONData(_:)();
        if (v14)
        {

          sub_10001BBA0(v92, v94);

          return;
        }

        v97 = v83;
        sub_10001BBA0(v92, v94);
        v96 = v415;
      }

      else
      {
        v96 = 0;
        v97 = v83;
      }

      v98 = v410;
      swift_beginAccess();
      v99 = *(v98 + 16);
      *(v98 + 16) = v96;

      v100 = [v88 remObjectID];
      v101 = sub_100335590(v100, v368);
      if (v14)
      {

        return;
      }

      v102 = v101;

      v103 = v366;
      swift_beginAccess();
      v104 = *(v103 + 16);
      *(v103 + 16) = v102;

      v105 = [v88 autoCategorizationLocalCorrectionsAsData];
      if (v105)
      {
        v106 = v105;
        v107 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v109 = v108;

        sub_1000060C8(0, &unk_1009440B0, REMTextMemberships_ptr);
        static REMJSONRepresentable.fromJSONData(_:)();
        sub_10001BBA0(v107, v109);
        v110 = v415;
      }

      else
      {
        v110 = 0;
      }

      v111 = v389;
      swift_beginAccess();
      v112 = *(v111 + 16);
      *(v111 + 16) = v110;

      if (!v110)
      {

        swift_beginAccess();
        v330 = *(a14 + 16);
        *(a14 + 16) = v97;

        return;
      }

      v362 = a14;
      v113 = *(v97 + 16);
      if (v113)
      {
        v335 = 0;
        v349 = a13;
        v348 = a12;
        v333 = a9;
        v332 = a11;
        v342 = a10;
        v354 = OBJC_IVAR____TtC7remindd43RDGroceryOperationCategorizeRemindersInList_rdLog;
        v364 = v110;
        swift_beginAccess();
        swift_beginAccess();
        swift_beginAccess();
        v361 = (v382 + 56);
        v359 = (v382 + 16);
        v352 = (v383 + 8);
        v353 = (v383 + 16);
        v334 = (v382 + 32);
        v350 = (v382 + 48);
        v343 = (v384 + 8);
        v336 = (v388 + 48);
        v337 = (v388 + 56);
        v347 = 0x80000001007F5220;
        v346 = enum case for REMAnalyticsEvent.groceryPrediction(_:);
        v344 = v367 + 8;
        v345 = v367 + 104;
        v114 = (v97 + 48);
        *&v115 = 136446978;
        v338 = v115;
        *&v115 = 136447234;
        v331 = v115;
        v368 = (v382 + 8);
        while (1)
        {
          v389 = v113;
          v121 = *(v114 - 1);
          v122 = *v114;
          v123 = *(v114 - 2);

          v384 = v123;
          v124 = [v123 uuid];
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v415 = v121;
          v416 = v122;
          sub_10013BCF4();

          v125 = StringProtocol.lowercased(with:)();
          v127 = v126;
          v128 = [v364 memberships];
          sub_1000060C8(0, &qword_10093A540, REMTimestampedUUID_ptr);
          v129 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

          if (!*(v129 + 16) || (v130 = sub_100005F4C(v125, v127), (v131 & 1) == 0))
          {

            v143 = v362;
            swift_beginAccess();
            v144 = *(v143 + 16);
            v145 = v384;

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *(v143 + 16) = v144;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v144 = sub_100367C4C(0, *(v144 + 2) + 1, 1, v144);
              *(v143 + 16) = v144;
            }

            v148 = *(v144 + 2);
            v147 = *(v144 + 3);
            if (v148 >= v147 >> 1)
            {
              v144 = sub_100367C4C((v147 > 1), v148 + 1, 1, v144);
            }

            *(v144 + 2) = v148 + 1;
            v149 = &v144[24 * v148];
            *(v149 + 4) = v145;
            *(v149 + 5) = v121;
            *(v149 + 6) = v122;
            *(v143 + 16) = v144;
            swift_endAccess();

            (*v368)(v413, v412);
            goto LABEL_23;
          }

          v382 = v122;
          v132 = *(*(v129 + 56) + 8 * v130);

          v133 = [v132 identifier];
          v383 = v132;
          if (v133)
          {
            v134 = v404;
            v135 = v133;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            v360 = *v361;
            v360(v134, 0, 1, v412);
            sub_1000050A4(v134, &unk_100939D90, "8\n\r");
            v136 = *(v366 + 16);

            v137 = [v132 identifier];
            if (!v137)
            {
              __break(1u);
              return;
            }

            v138 = v137;

            v139 = v397;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            if (*(v136 + 16))
            {
              sub_100363F20(v139);
              v140 = v139;
              v142 = v141;
            }

            else
            {
              v140 = v139;
              v142 = 0;
            }

            v151 = v405;
            v152 = v412;
            v367 = *v368;
            v367(v140, v412);

            if ((v142 & 1) == 0)
            {
              v358 = v121;
              v169 = v394;
              (*v353)(v394, v411 + v354, v408);
              v170 = v390;
              (*v359)(v390, v413, v152);
              v171 = v383;
              v172 = v363;
              sub_10033251C(v363, &v415);
              v173 = Logger.logObject.getter();
              v174 = static os_log_type_t.default.getter();
              sub_100332478(v172);
              v383 = v171;

              LODWORD(v357) = v174;
              if (os_log_type_enabled(v173, v174))
              {
                v355 = v173;
                v175 = v170;
                v176 = swift_slowAlloc();
                v177 = swift_slowAlloc();
                v351 = swift_slowAlloc();
                v415 = v351;
                *v176 = v338;
                v414 = type metadata accessor for RDGroceryOperationCategorizeRemindersInList();
                sub_1000F5104(&qword_100942108, &unk_1007A2520);
                v178 = String.init<A>(describing:)();
                v180 = sub_10000668C(v178, v179, &v415);

                *(v176 + 4) = v180;
                *(v176 + 12) = 2114;
                v181 = *(v172 + 8);
                *(v176 + 14) = v181;
                v341 = v177;
                v177->isa = v181;
                *(v176 + 22) = 2082;
                sub_100334878(&qword_10093F2A0, &type metadata accessor for UUID);
                v182 = v181;
                v183 = dispatch thunk of CustomStringConvertible.description.getter();
                v185 = v184;
                v367(v175, v152);
                v186 = sub_10000668C(v183, v185, &v415);

                *(v176 + 24) = v186;
                *(v176 + 32) = 2082;
                v187 = [v383 identifier];
                if (v187)
                {
                  v188 = v386;
                  v189 = v187;
                  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

                  v190 = 0;
                }

                else
                {
                  v190 = 1;
                  v188 = v386;
                }

                v240 = v362;
                v241 = v382;
                v242 = v358;
                v360(v188, v190, 1, v412);
                v260 = Optional.descriptionOrNil.getter();
                v262 = v261;
                sub_1000050A4(v188, &unk_100939D90, "8\n\r");
                v263 = sub_10000668C(v260, v262, &v415);

                *(v176 + 34) = v263;
                v264 = v355;
                _os_log_impl(&_mh_execute_header, v355, v357, "%{public}s: The section in local correction does not exist on the device {listObjectID: %{public}@, reminderIdentifier: %{public}s, sectionIdentifier: %{public}s", v176, 0x2Au);
                sub_1000050A4(v341, &unk_100938E70, &unk_100797230);

                swift_arrayDestroy();

                (*v352)(v394, v408);
              }

              else
              {

                v367(v170, v152);
                (*v352)(v169, v408);
                v240 = v362;
                v241 = v382;
                v242 = v358;
              }

              swift_beginAccess();
              v265 = *(v240 + 16);
              v266 = v384;

              v267 = swift_isUniquelyReferenced_nonNull_native();
              *(v240 + 16) = v265;
              if ((v267 & 1) == 0)
              {
                v265 = sub_100367C4C(0, *(v265 + 2) + 1, 1, v265);
                *(v240 + 16) = v265;
              }

              v269 = *(v265 + 2);
              v268 = *(v265 + 3);
              if (v269 >= v268 >> 1)
              {
                v265 = sub_100367C4C((v268 > 1), v269 + 1, 1, v265);
              }

              *(v265 + 2) = v269 + 1;
              v270 = &v265[24 * v269];
              *(v270 + 4) = v266;
              *(v270 + 5) = v242;
              *(v270 + 6) = v241;
              *(v240 + 16) = v265;
              swift_endAccess();

              v367(v413, v412);
              goto LABEL_23;
            }

            v132 = v383;
          }

          else
          {

            v150 = v404;
            v360 = *v361;
            v360(v404, 1, 1, v412);
            sub_1000050A4(v150, &unk_100939D90, "8\n\r");
            v151 = v405;
          }

          v153 = *(v410 + 16);
          if (!v153)
          {
LABEL_50:
            v358 = 0;
            goto LABEL_53;
          }

          v154 = [v153 membershipByMemberIdentifier];
          sub_1000060C8(0, &qword_10093B450, REMMembership_ptr);
          sub_100334878(&qword_10093B410, &type metadata accessor for UUID);
          v155 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

          if (!*(v155 + 16) || (v156 = sub_100363F20(v413), (v157 & 1) == 0))
          {
            v358 = 0;
            goto LABEL_52;
          }

          v158 = *(*(v155 + 56) + 8 * v156);

          if (!v158)
          {
            goto LABEL_50;
          }

          v159 = *(v366 + 16);

          v358 = v158;
          v160 = v158;
          v161 = [v160 groupIdentifier];
          if (v161)
          {
            v162 = v377;
            v163 = v161;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            v164 = v380;
            (*v334)(v380, v162, v412);
            if (!*(v159 + 16) || (v165 = sub_100363F20(v164), (v166 & 1) == 0))
            {

              (*v368)(v164, v412);
              v271 = v378;
              (*v337)(v378, 1, 1, v395);
              sub_1000050A4(v271, &qword_1009420F8, &unk_1007A2508);
              v132 = v383;
LABEL_52:

LABEL_53:
              v191 = *v359;
              v192 = v412;
              (*v359)(v409, v413, v412);
              v193 = [v132 identifier];
              v355 = v191;
              if (v193)
              {
                v194 = v398;
                v195 = v193;
                static UUID._unconditionallyBridgeFromObjectiveC(_:)();

                v196 = 0;
              }

              else
              {
                v196 = 1;
                v194 = v398;
              }

              v197 = v350;
              v360(v194, v196, 1, v192);
              static Date.now.getter();
              v198.super.isa = UUID._bridgeToObjectiveC()().super.isa;
              v199 = (*v197)(v194, 1, v192);
              v356 = v114;
              if (v199 == 1)
              {
                isa = 0;
                v201 = v192;
                v202 = v368;
              }

              else
              {
                isa = UUID._bridgeToObjectiveC()().super.isa;
                v202 = v368;
                (*v368)(v194, v192);
                v201 = v192;
              }

              v203 = objc_allocWithZone(REMMembership);
              v204 = v407;
              v205 = Date._bridgeToObjectiveC()().super.isa;
              v206 = [v203 initWithMemberIdentifier:v198.super.isa groupIdentifier:isa isObsolete:0 modifiedOn:v205];

              (*v343)(v204, v399);
              v367 = *v202;
              v367(v409, v201);
              v207 = v342;
              swift_beginAccess();
              v208 = v206;
              specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
              if (*((*(v207 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v207 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                v329 = *((*(v207 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10);
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              swift_endAccess();
              v209 = *v353;
              v210 = v403;
              v357 = v208;
              v211 = v408;
              v209(v403, v411 + v354, v408);
              (v355)(v406, v413, v201);
              v212 = v383;
              v213 = v383;
              v214 = v363;
              sub_10033251C(v363, &v415);
              v215 = Logger.logObject.getter();
              v216 = static os_log_type_t.default.getter();
              sub_100332478(v214);
              v351 = v213;

              LODWORD(v355) = v216;
              v217 = os_log_type_enabled(v215, v216);
              v218 = &selRef_hack_willSaveHandled;
              if (v217)
              {
                v341 = v215;
                v219 = swift_slowAlloc();
                v220 = swift_slowAlloc();
                v340 = swift_slowAlloc();
                v415 = v340;
                *v219 = v338;
                v414 = type metadata accessor for RDGroceryOperationCategorizeRemindersInList();
                sub_1000F5104(&qword_100942108, &unk_1007A2520);
                v221 = String.init<A>(describing:)();
                v223 = sub_10000668C(v221, v222, &v415);
                v224 = v406;
                v225 = v223;

                *(v219 + 4) = v225;
                *(v219 + 12) = 2114;
                v226 = *(v214 + 8);
                *(v219 + 14) = v226;
                v339 = v220;
                *v220 = v226;
                *(v219 + 22) = 2082;
                sub_100334878(&qword_10093F2A0, &type metadata accessor for UUID);
                v227 = v226;
                v228 = dispatch thunk of CustomStringConvertible.description.getter();
                v230 = v229;
                v367(v224, v201);
                v231 = sub_10000668C(v228, v230, &v415);

                *(v219 + 24) = v231;
                *(v219 + 32) = 2082;
                v232 = [v351 identifier];
                if (v232)
                {
                  v233 = v391;
                  v234 = v232;
                  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

                  v235 = 0;
                  v236 = v403;
                }

                else
                {
                  v235 = 1;
                  v236 = v403;
                  v233 = v391;
                }

                v238 = v400;
                v243 = v341;
                v114 = v356;
                v239 = v412;
                v360(v233, v235, 1, v412);
                v244 = Optional.descriptionOrNil.getter();
                v245 = v233;
                v247 = v246;
                sub_1000050A4(v245, &unk_100939D90, "8\n\r");
                v248 = sub_10000668C(v244, v247, &v415);

                *(v219 + 34) = v248;
                _os_log_impl(&_mh_execute_header, v243, v355, "%{public}s: Auto-categorized reminder based on local corrections {listObjectID: %{public}@, reminderIdentifier: %{public}s, sectionIdentifier: %{public}s}", v219, 0x2Au);
                sub_1000050A4(v339, &unk_100938E70, &unk_100797230);

                swift_arrayDestroy();

                (*v352)(v236, v408);
                v212 = v383;
                v237 = v367;
                v218 = &selRef_hack_willSaveHandled;
              }

              else
              {

                v237 = v367;
                v367(v406, v201);
                (*v352)(v210, v211);
                v238 = v400;
                v239 = v201;
                v114 = v356;
              }

              goto LABEL_68;
            }

            v167 = v388;
            v168 = v378;
            sub_100193AB0(*(v159 + 56) + *(v388 + 72) * v165, v378);

            (*v368)(v380, v412);
            (*(v167 + 56))(v168, 0, 1, v395);
            sub_1000050A4(v168, &qword_1009420F8, &unk_1007A2508);

            v151 = v405;
          }

          else
          {

            if (v333)
            {
              goto LABEL_53;
            }
          }

          v272 = [v160 groupIdentifier];
          if (v272)
          {
            v273 = v371;
            v274 = v272;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            v275 = 0;
          }

          else
          {
            v275 = 1;
            v273 = v371;
          }

          v276 = 1;
          v360(v273, v275, 1, v412);
          sub_100031B58(v273, v385, &unk_100939D90, "8\n\r");
          v277 = [v383 identifier];
          v278 = v379;
          if (v277)
          {
            v279 = v277;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            v276 = 0;
          }

          v280 = v412;
          v360(v278, v276, 1, v412);
          v281 = *(v373 + 48);
          v282 = v375;
          sub_100010364(v385, v375, &unk_100939D90, "8\n\r");
          v367 = v281;
          sub_100010364(v278, &v281[v282], &unk_100939D90, "8\n\r");
          v283 = *v350;
          if ((*v350)(v282, 1, v280) == 1)
          {
            sub_1000050A4(v379, &unk_100939D90, "8\n\r");
            v284 = v283(v367 + v282, 1, v412);
            v285 = v381;
            v218 = &selRef_hack_willSaveHandled;
            if (v284 != 1)
            {
              goto LABEL_96;
            }

            sub_1000050A4(v282, &unk_100939D90, "8\n\r");
          }

          else
          {
            sub_100010364(v282, v151, &unk_100939D90, "8\n\r");
            v286 = v367;
            if (v283(v367 + v282, 1, v412) == 1)
            {
              sub_1000050A4(v379, &unk_100939D90, "8\n\r");
              (*v368)(v151, v412);
              v218 = &selRef_hack_willSaveHandled;
LABEL_96:
              sub_1000050A4(v282, &unk_10093A3D0, &qword_100795770);
LABEL_97:
              v415 = v121;
              v416 = v382;
              v367 = StringProtocol.lowercased(with:)();
              v288 = v287;
              v289 = v370;
              sub_100010364(v385, v370, &unk_100939D90, "8\n\r");
              static Date.now.getter();
              v290 = v412;
              if (v283(v289, 1, v412) == 1)
              {
                v291 = 0;
              }

              else
              {
                v291 = UUID._bridgeToObjectiveC()().super.isa;
                (*v368)(v289, v290);
              }

              v292 = v363;
              v293 = objc_allocWithZone(REMTimestampedUUID);
              v294 = v374;
              v295 = Date._bridgeToObjectiveC()().super.isa;
              v296 = [v293 initWithIdentifier:v291 modifiedOn:v295];

              (*v343)(v294, v399);
              swift_beginAccess();
              sub_10031DEEC(v296, v367, v288, sub_1002C8FA0, sub_10037572C);
              swift_endAccess();
              LODWORD(v360) = 1;
              v297 = v385;
              v285 = v381;
              goto LABEL_103;
            }

            v298 = *v334;
            v299 = v286 + v282;
            v367 = v283;
            v300 = v369;
            v301 = v412;
            v298(v369, v299, v412);
            sub_100334878(&qword_10093A3E0, &type metadata accessor for UUID);
            LODWORD(v360) = dispatch thunk of static Equatable.== infix(_:_:)();
            v302 = *v368;
            v303 = v300;
            v283 = v367;
            (*v368)(v303, v301);
            sub_1000050A4(v379, &unk_100939D90, "8\n\r");
            v302(v151, v301);
            sub_1000050A4(v375, &unk_100939D90, "8\n\r");
            v285 = v381;
            v218 = &selRef_hack_willSaveHandled;
            if ((v360 & 1) == 0)
            {
              goto LABEL_97;
            }
          }

          LODWORD(v360) = 0;
          v292 = v363;
          v297 = v385;
LABEL_103:
          v304 = v376;
          (*v353)(v376, v411 + v354, v408);
          v305 = v412;
          (*v359)(v285, v413, v412);
          v306 = v372;
          sub_100010364(v297, v372, &unk_100939D90, "8\n\r");
          sub_10033251C(v292, &v415);
          v307 = Logger.logObject.getter();
          v308 = static os_log_type_t.default.getter();
          sub_100332478(v292);
          v367 = v307;
          if (os_log_type_enabled(v307, v308))
          {
            v309 = swift_slowAlloc();
            v310 = swift_slowAlloc();
            v351 = v310;
            v357 = swift_slowAlloc();
            v415 = v357;
            *v309 = v331;
            v414 = type metadata accessor for RDGroceryOperationCategorizeRemindersInList();
            sub_1000F5104(&qword_100942108, &unk_1007A2520);
            v311 = String.init<A>(describing:)();
            LODWORD(v355) = v308;
            v313 = v306;
            v314 = sub_10000668C(v311, v312, &v415);

            *(v309 + 4) = v314;
            *(v309 + 12) = 2114;
            v315 = v363[1];
            v417 = v315;
            *(v309 + 14) = v315;
            *v310 = v315;
            *(v309 + 22) = 2082;
            sub_100010364(&v417, &v414, &unk_10093AF40, &unk_100795790);
            sub_100334878(&qword_10093F2A0, &type metadata accessor for UUID);
            v316 = v381;
            v317 = dispatch thunk of CustomStringConvertible.description.getter();
            v318 = v305;
            v319 = v317;
            v321 = v320;
            v322 = *v368;
            (*v368)(v316, v318);
            v323 = sub_10000668C(v319, v321, &v415);

            *(v309 + 24) = v323;
            *(v309 + 32) = 2082;
            v324 = Optional.descriptionOrNil.getter();
            v326 = v325;
            sub_1000050A4(v313, &unk_100939D90, "8\n\r");
            v327 = sub_10000668C(v324, v326, &v415);
            v237 = v322;

            *(v309 + 34) = v327;
            *(v309 + 42) = 1026;
            *(v309 + 44) = v360;
            v328 = v367;
            _os_log_impl(&_mh_execute_header, v367, v355, "%{public}s: Skipped auto-categorizing reminder {listObjectID: %{public}@, reminderIdentifier: %{public}s, sectionIdentifier: %{public}s, shouldUpdateAutoCategorizationLocalCorrections: %{BOOL,public}d}", v309, 0x30u);
            sub_1000050A4(v351, &unk_100938E70, &unk_100797230);

            swift_arrayDestroy();

            (*v352)(v376, v408);
            sub_1000050A4(v385, &unk_100939D90, "8\n\r");
            v239 = v412;
          }

          else
          {

            sub_1000050A4(v306, &unk_100939D90, "8\n\r");
            v237 = *v368;
            (*v368)(v381, v305);
            (*v352)(v304, v408);
            sub_1000050A4(v385, &unk_100939D90, "8\n\r");
            v239 = v305;
          }

          v238 = v400;
          v212 = v383;
LABEL_68:
          v249 = [v212 v218[64]];
          v367 = v237;
          if (v249)
          {
            v250 = v249;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            v251 = v366;
            swift_beginAccess();
            v252 = *(v251 + 16);
            if (*(v252 + 16))
            {
              v253 = sub_100363F20(v238);
              v254 = v393;
              if (v255)
              {
                sub_100193AB0(*(v252 + 56) + *(v388 + 72) * v253, v393);
                v256 = 0;
              }

              else
              {
                v256 = 1;
              }
            }

            else
            {
              v256 = 1;
              v254 = v393;
            }

            v257 = v395;
            (*v337)(v254, v256, 1, v395);
            if ((*v336)(v254, 1, v257))
            {
              sub_1000050A4(v254, &qword_1009420F8, &unk_1007A2508);
              swift_endAccess();
              v237(v238, v239);
              v116 = 0;
              v117 = 0;
            }

            else
            {
              v258 = v387;
              sub_100193AB0(v254, v387);
              sub_1000050A4(v254, &qword_1009420F8, &unk_1007A2508);
              swift_endAccess();
              v237(v238, v239);
              v259 = (v258 + *(v257 + 20));
              v116 = *v259;
              v117 = v259[1];

              sub_10033529C(v258);
            }
          }

          else
          {
            v116 = 0;
            v117 = 0;
          }

          type metadata accessor for REMAnalyticsManager();
          static REMAnalyticsManager.shared.getter();
          v118 = v401;
          *v401 = 0x726F436C61636F6CLL;
          v118[1] = 0xEF6E6F6974636572;
          *(v118 + 16) = 0;
          *(v118 + 17) = v415;
          *(v118 + 5) = *(&v415 + 3);
          v119 = v349;
          v118[3] = v348;
          v118[4] = v119;
          v118[5] = 0;
          v118[6] = 0;
          v118[7] = 0xD000000000000019;
          v118[8] = v347;
          v118[9] = v116;
          v118[10] = v117;
          v118[11] = 0;
          v118[12] = 0;
          v120 = v402;
          (*v345)(v118, v346, v402);

          REMAnalyticsManager.post(event:)();

          (*v344)(v118, v120);
          v367(v413, v412);
LABEL_23:
          v114 += 3;
          v113 = v389 - 1;
          if (v389 == 1)
          {

            return;
          }
        }
      }
    }

    else
    {
      v95 = v415;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }
}