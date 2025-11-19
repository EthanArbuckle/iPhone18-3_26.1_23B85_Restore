uint64_t sub_10059EEE0(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22[0] = a5;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DispatchQoS();
  v14 = *(v23 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v23);
  v17 = v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[1] = *&v5[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_queue];
  v18 = swift_allocObject();
  *(v18 + 16) = v5;
  *(v18 + 24) = a1;
  *(v18 + 32) = a2;
  aBlock[4] = a4;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100011678;
  aBlock[3] = v22[0];
  v19 = _Block_copy(aBlock);
  v20 = v5;

  static DispatchQoS.unspecified.getter();
  v24 = &_swiftEmptyArrayStorage;
  sub_10001432C(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags);
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_100013EB8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);
  (*(v10 + 8))(v13, v9);
  (*(v14 + 8))(v17, v23);
}

void sub_10059F194(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = [objc_allocWithZone(SDAuthenticationPairingResponse) init];
  v7 = v6;
  p_opt_class_meths = &OBJC_PROTOCOL___BLSBacklightStateObserving.opt_class_meths;
  if (v6)
  {
    [v6 setVersion:1];
    v9 = v7;
    UUID.uuidString.getter();
    v10 = String._bridgeToObjectiveC()();

    [v9 setSessionID:v10];

    [v9 setErrorCode:a1];
    v11 = [v9 data];
    if (v11)
    {
      v12 = v11;
      v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      v16 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_peerDevice;
      swift_beginAccess();
      sub_10000FF90(v3 + v16, &v54, &qword_100982080, &unk_1007FDD30);
      if (v55)
      {
        sub_1000121F8(&v54, v56);
        v17 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_delegate;
        swift_beginAccess();
        sub_10000FF90(v3 + v17, &v54, &qword_10097A9C8, &unk_1007FDD40);
        if (v55)
        {
          sub_1002A9938(&v54, v53);
          sub_100005508(&v54, &qword_10097A9C8, &unk_1007FDD40);
          v18 = sub_10002CDC0(v53, v53[3]);
          if (*(v3 + OBJC_IVAR____TtC16DaemoniOSLibrary33SDAuthenticationPairingKeySession_requestArmingUI) == 1)
          {
            v19 = *(v3 + OBJC_IVAR____TtC16DaemoniOSLibrary33SDAuthenticationPairingKeySession_armingUITransportType);
          }

          else
          {
            v19 = sub_1004FE08C(*(v3 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_type));
          }

          v51 = *v18;
          if (qword_100973C48 != -1)
          {
            swift_once();
          }

          v38 = type metadata accessor for Logger();
          sub_10000C4AC(v38, qword_1009895D8);
          v39 = Logger.logObject.getter();
          v40 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v39, v40))
          {
            v41 = swift_slowAlloc();
            v42 = swift_slowAlloc();
            v52 = v42;
            *v41 = 136315138;
            v43 = v19;
            v50 = v19;
            v48 = v42;
            buf = v41;
            if (v19 <= 2u)
            {
              v44 = 0xEB0000000074656ELL;
              if (v43)
              {
                if (v43 == 1)
                {
                  v44 = 0xE800000000000000;
                  v45 = 0x6C61636F4C736469;
                }

                else
                {
                  v45 = 0x7265746E49736469;
                }
              }

              else
              {
                v44 = 0xEB00000000746E65;
                v45 = 0x674179627261656ELL;
              }
            }

            else if (v19 > 4u)
            {
              if (v19 == 5)
              {
                v44 = 0x80000001007888E0;
                v45 = 0xD000000000000010;
              }

              else
              {
                v44 = 0xED000068746F6F74;
                v45 = 0x65756C4265726F63;
              }
            }

            else if (v19 == 3)
            {
              v44 = 0xE900000000000054;
              v45 = 0x4274726F70706172;
            }

            else
            {
              v44 = 0xEB000000004C4457;
              v45 = 0x4174726F70706172;
            }

            v46 = sub_10000C4E4(v45, v44, &v52);

            *(buf + 4) = v46;
            _os_log_impl(&_mh_execute_header, v39, v40, "Using transport type %s", buf, 0xCu);
            sub_10000C60C(v48);

            v19 = v50;
          }

          else
          {
          }

          v47 = *(v51 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_transportManager);
          sub_1005CCC7C(v13, v15, v56, 4u, v19);
          sub_100026AC0(v13, v15);
          sub_10000C60C(v56);
          sub_10000C60C(v53);
          p_opt_class_meths = (&OBJC_PROTOCOL___BLSBacklightStateObserving + 48);
        }

        else
        {
          sub_10000C60C(v56);
          sub_100026AC0(v13, v15);
          sub_100005508(&v54, &qword_10097A9C8, &unk_1007FDD40);
        }

        goto LABEL_13;
      }

      sub_100026AC0(v13, v15);
      sub_100005508(&v54, &qword_100982080, &unk_1007FDD30);
    }
  }

  if (qword_100973AC0 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_10000C4AC(v20, qword_100984130);
  v21 = v7;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v24 = 138412290;
    *(v24 + 4) = v21;
    *v25 = v7;
    v26 = v21;
    _os_log_impl(&_mh_execute_header, v22, v23, "Could not convert response to data: %@", v24, 0xCu);
    sub_100005508(v25, &qword_100975400, &qword_1007F65D0);
  }

LABEL_13:
  v27 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_delegate;
  swift_beginAccess();
  sub_10000FF90(v3 + v27, v56, &qword_10097A9C8, &unk_1007FDD40);
  if (v56[3])
  {
    sub_1002A9938(v56, &v54);
    sub_100005508(v56, &qword_10097A9C8, &unk_1007FDD40);
    v28 = sub_10002CDC0(&v54, v55);
    v29 = sub_1000116BC(a1, a2);
    sub_100463010(v3, a1, v29, v30, *v28);

    sub_10000C60C(&v54);
  }

  else
  {
    sub_100005508(v56, &qword_10097A9C8, &unk_1007FDD40);
  }

  if (p_opt_class_meths[344] != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  sub_10000C4AC(v31, qword_100984130);

  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v34 = 138412290;
    sub_1000115C8();
    swift_allocError();
    *v36 = a1;
    *(v36 + 8) = a2;

    v37 = _swift_stdlib_bridgeErrorToNSError();
    *(v34 + 4) = v37;
    *v35 = v37;
    _os_log_impl(&_mh_execute_header, v32, v33, "Session failed with error: %@", v34, 0xCu);
    sub_100005508(v35, &qword_100975400, &qword_1007F65D0);
  }
}

uint64_t sub_10059F98C()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = (&v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *&v0[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_queue];
  *v5 = v6;
  (*(v2 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v1);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v5, v1);
  if (v6)
  {
    if (qword_100973AC0 == -1)
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
  v8 = type metadata accessor for Logger();
  sub_10000C4AC(v8, qword_100984130);
  v9 = v0;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v21 = v13;
    *v12 = 136315138;
    type metadata accessor for UUID();
    sub_10001432C(&qword_100978CE0, &type metadata accessor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = sub_10000C4E4(v14, v15, &v21);

    *(v12 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v10, v11, "Response timer fired for %s", v12, 0xCu);
    sub_10000C60C(v13);
  }

  v17 = sub_100010F88(12, 0xD000000000000035, 0x80000001007968D0);
  sub_10059EEE0(v17, v18, &unk_1008E8560, sub_10059FFF4, &unk_1008E8578);

  return sub_1004FDD9C();
}

uint64_t sub_10059FC78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_delegate;
  swift_beginAccess();
  sub_10000FF90(a1 + v6, v12, &qword_10097A9C8, &unk_1007FDD40);
  if (!v13)
  {
    return sub_100005508(v12, &qword_10097A9C8, &unk_1007FDD40);
  }

  sub_1002A9938(v12, v11);
  sub_100005508(v12, &qword_10097A9C8, &unk_1007FDD40);
  v7 = sub_10002CDC0(v11, v11[3]);
  v8 = sub_1000116BC(a2, a3);
  sub_100463010(a1, a2, v8, v9, *v7);

  return sub_10000C60C(v11);
}

uint64_t type metadata accessor for SDAuthenticationPairingKeySession()
{
  result = qword_100984180;
  if (!qword_100984180)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10059FE74(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for AuthenticationSecurityRequest(0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = v1[2];
  v10 = v1[3];
  v11 = v1[4];
  v12 = *(v1 + v7);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100005C04;

  return sub_100598E04(a1, v9, v10, v11, v1 + v6, v12, v1 + v8);
}

void sub_10059FFC4()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 16);
  sub_10059F194(v1, v2);
}

id sub_1005A0004()
{
  sub_1004FDD9C();
  if (qword_100973AC0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v2 = sub_10000C4AC(v1, qword_100984130);
  v3 = v0;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();

  if (!os_log_type_enabled(v4, v5))
  {

    goto LABEL_11;
  }

  v42[1] = v2;
  v6 = swift_slowAlloc();
  v43[0] = swift_slowAlloc();
  *v6 = 136315394;
  v7 = UUID.uuidString.getter();
  v9 = sub_10000C4E4(v7, v8, v43);

  *(v6 + 4) = v9;
  *(v6 + 12) = 2080;
  v10 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_peerDevice;
  swift_beginAccess();
  sub_10000FF90(&v3[v10], v44, &qword_100982080, &unk_1007FDD30);
  v11 = v45;
  if (!v45)
  {
    sub_100005508(v44, &qword_100982080, &unk_1007FDD30);
    goto LABEL_9;
  }

  v12 = v46;
  v13 = sub_10002CDC0(v44, v45);
  v42[0] = v42;
  v14 = *(v11 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v17);
  sub_100005508(v44, &qword_100982080, &unk_1007FDD30);
  v18 = (*(v12 + 8))(v11, v12);
  v20 = v19;
  (*(v14 + 8))(v17, v11);
  if (!v20)
  {
LABEL_9:

    v20 = 0x8000000100789F30;
    v21 = 0xD000000000000015;
    goto LABEL_10;
  }

  v21 = v18;
LABEL_10:
  v22 = sub_10000C4E4(v21, v20, v43);

  *(v6 + 14) = v22;
  _os_log_impl(&_mh_execute_header, v4, v5, "Setting pairing ID: %s for device: %s", v6, 0x16u);
  swift_arrayDestroy();

LABEL_11:
  result = [objc_opt_self() sharedManager];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v24 = result;
  UUID.uuidString.getter();
  v25 = String._bridgeToObjectiveC()();

  v26 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_peerDevice;
  swift_beginAccess();
  sub_10000FF90(&v3[v26], v44, &qword_100982080, &unk_1007FDD30);
  v27 = v45;
  if (!v45)
  {
    sub_100005508(v44, &qword_100982080, &unk_1007FDD30);
    goto LABEL_16;
  }

  v28 = v46;
  v29 = sub_10002CDC0(v44, v45);
  v30 = *(v27 - 8);
  v31 = *(v30 + 64);
  __chkstk_darwin(v29);
  v33 = v42 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v30 + 16))(v33);
  sub_100005508(v44, &qword_100982080, &unk_1007FDD30);
  (*(v28 + 8))(v27, v28);
  v35 = v34;
  (*(v30 + 8))(v33, v27);
  if (!v35)
  {
LABEL_16:
    v36 = 0;
    goto LABEL_17;
  }

  v36 = String._bridgeToObjectiveC()();

LABEL_17:
  [v24 setPairingID:v25 forWatchID:{v36, v42[0]}];

  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&_mh_execute_header, v37, v38, "Pairing enabled", v39, 2u);
  }

  if (*&v3[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_type] != 8)
  {
    if (qword_100973C50 != -1)
    {
      swift_once();
    }

    if (qword_1009A10A8)
    {
      sub_10069579C();
    }
  }

  v40 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_delegate;
  swift_beginAccess();
  sub_10000FF90(&v3[v40], v44, &qword_10097A9C8, &unk_1007FDD40);
  if (!v45)
  {
    return sub_100005508(v44, &qword_10097A9C8, &unk_1007FDD40);
  }

  sub_1002A9938(v44, v43);
  sub_100005508(v44, &qword_10097A9C8, &unk_1007FDD40);
  v41 = sub_10002CDC0(v43, v43[3]);
  sub_1004E2F7C(v3, *v41);
  return sub_10000C60C(v43);
}

uint64_t sub_1005A06B4()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_100984190);
  v1 = sub_10000C4AC(v0, qword_100984190);
  if (qword_100973728 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A09C0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_1005A0840(uint64_t a1, unint64_t a2)
{
  v4 = [objc_allocWithZone(CNChangeHistoryFetchRequest) init];
  v5 = a2;
  v6 = v4;
  if (v5 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
  }

  [v6 setStartingToken:isa];

  [v6 setShouldUnifyResults:1];
  [v6 setIncludeGroupChanges:0];
  if (qword_100973A30 != -1)
  {
    swift_once();
  }

  sub_10028088C(&unk_10097A940, &unk_100807F40);
  v8 = Array._bridgeToObjectiveC()().super.isa;
  [v6 setAdditionalContactKeyDescriptors:v8];

  v9 = sub_1005A0E98(v6);
  if (v2)
  {
    return v10;
  }

  else
  {
    return v9;
  }
}

uint64_t sub_1005A09A0(uint64_t a1, unint64_t a2)
{
  if (qword_100973A38 != -1)
  {
    swift_once();
  }

  v5 = objc_allocWithZone(CNContactFetchRequest);
  sub_10028088C(&unk_10097A940, &unk_100807F40);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v7 = [v5 initWithKeysToFetch:isa];

  v8 = objc_opt_self();
  sub_10028088C(&qword_1009750C0, &qword_1007F90F0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1007F5670;
  *(v9 + 32) = a1;
  *(v9 + 40) = a2;

  v10 = Array._bridgeToObjectiveC()().super.isa;

  v11 = [v8 predicateForContactsWithIdentifiers:v10];

  [v7 setPredicate:v11];
  v29 = 0;
  v12 = *(v2 + 32);
  v13 = swift_allocObject();
  *(v13 + 16) = &v29;
  v14 = swift_allocObject();
  v14[2] = sub_1005A15F4;
  v14[3] = v13;
  aBlock[4] = sub_1005A1630;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1005A0E3C;
  aBlock[3] = &unk_1008E8620;
  v15 = _Block_copy(aBlock);

  aBlock[0] = 0;
  v16 = [v12 enumerateContactsWithFetchRequest:v7 error:aBlock usingBlock:v15];
  _Block_release(v15);
  v17 = aBlock[0];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_12:
    swift_once();
    goto LABEL_7;
  }

  if (v16)
  {

    goto LABEL_10;
  }

  _convertNSErrorToError(_:)();

  swift_willThrow();
  if (qword_100973AC8 != -1)
  {
    goto LABEL_12;
  }

LABEL_7:
  v19 = type metadata accessor for Logger();
  sub_10000C4AC(v19, qword_100984190);

  swift_errorRetain();
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v22 = 136315394;
    *(v22 + 4) = sub_10000C4E4(a1, a2, aBlock);
    *(v22 + 12) = 2080;
    swift_getErrorValue();
    v23 = Error.localizedDescription.getter();
    v25 = sub_10000C4E4(v23, v24, aBlock);

    *(v22 + 14) = v25;
    _os_log_impl(&_mh_execute_header, v20, v21, "Failed to find contact with contact identifier %s, error: %s", v22, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

LABEL_10:
  v26 = v29;

  return v26;
}

void sub_1005A0E3C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = a2;
  v3();
}

id sub_1005A0E98(uint64_t a1)
{
  v2 = *(v1 + 32);
  v15 = 0;
  v3 = sub_1001EA974(a1, v2, &v15);
  v4 = v3;
  v5 = v15;
  if (v15)
  {
    v15;
  }

  else
  {
    if (v3)
    {
      v6 = [(SDContactFetchResult *)v3 events];
      sub_1005A1194();
      v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v8 = [(SDContactFetchResult *)v4 currentHistoryToken];
      static Data._unconditionallyBridgeFromObjectiveC(_:)();

      v5 = sub_1005A11E0(v7);

      return v5;
    }

    if (qword_100973AC8 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10000C4AC(v10, qword_100984190);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Fetch result should not be nil since no error was reported", v13, 2u);
    }

    sub_1005A1140();
    swift_allocError();
    *v14 = 104;
  }

  swift_willThrow();

  return v5;
}

uint64_t sub_1005A10D4()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = sub_1001F26EC(v0);

  if (!v1)
  {
    return 0;
  }

  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

unint64_t sub_1005A1140()
{
  result = qword_1009845A0;
  if (!qword_1009845A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009845A0);
  }

  return result;
}

unint64_t sub_1005A1194()
{
  result = qword_1009845A8;
  if (!qword_1009845A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1009845A8);
  }

  return result;
}

unint64_t sub_1005A11E0(unint64_t result)
{
  v1 = result;
  v35 = _swiftEmptyArrayStorage;
  if (result >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v2 = result;
    if (result)
    {
      goto LABEL_3;
    }

    return _swiftEmptyArrayStorage;
  }

  v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

LABEL_3:
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = _swiftEmptyArrayStorage;
    v5 = &NSURLAuthenticationMethodServerTrust_ptr;
    v6 = &NSURLAuthenticationMethodServerTrust_ptr;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v11 = *(v1 + 8 * v3 + 32);
      }

      v12 = v11;
      v13 = v5[57];
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        type metadata accessor for SDContactChangeHistoryDropEverythingEvent();
        swift_allocObject();
      }

      else
      {
        v14 = v6[55];
        objc_opt_self();
        v15 = swift_dynamicCastObjCClass();
        if (v15)
        {
          v16 = [v15 contact];
          type metadata accessor for SDContactChangeHistoryAddEvent();
        }

        else
        {
          objc_opt_self();
          v17 = swift_dynamicCastObjCClass();
          if (v17)
          {
            v18 = v6;
            v19 = [v17 contactIdentifier];
            v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v22 = v21;

            type metadata accessor for SDContactChangeHistoryDeleteEvent();
            v23 = swift_allocObject();
            *(v23 + 16) = v20;
            *(v23 + 24) = v22;
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v31 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

            v4 = v35;
            v6 = v18;
            v5 = &NSURLAuthenticationMethodServerTrust_ptr;
            goto LABEL_7;
          }

          objc_opt_self();
          v24 = swift_dynamicCastObjCClass();
          if (!v24)
          {
            if (qword_100973AC8 != -1)
            {
              swift_once();
            }

            v25 = type metadata accessor for Logger();
            sub_10000C4AC(v25, qword_100984190);
            v26 = v12;
            v27 = Logger.logObject.getter();
            v28 = static os_log_type_t.debug.getter();

            if (os_log_type_enabled(v27, v28))
            {
              v7 = swift_slowAlloc();
              v33 = swift_slowAlloc();
              v34 = v33;
              *v7 = 136315138;
              swift_getObjectType();
              v8 = _typeName(_:qualified:)();
              v32 = v26;
              v10 = sub_10000C4E4(v8, v9, &v34);

              *(v7 + 4) = v10;
              _os_log_impl(&_mh_execute_header, v27, v28, "Ignore event %s", v7, 0xCu);
              sub_10000C60C(v33);
            }

            else
            {
            }

            v6 = &NSURLAuthenticationMethodServerTrust_ptr;
            goto LABEL_7;
          }

          v16 = [v24 contact];
          type metadata accessor for SDContactChangeHistoryUpdateEvent();
        }

        *(swift_allocObject() + 16) = v16;
      }

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v29 = v6;
        v30 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v6 = v29;
        v5 = &NSURLAuthenticationMethodServerTrust_ptr;
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v4 = v35;
LABEL_7:
      if (v2 == ++v3)
      {
        return v4;
      }
    }
  }

  __break(1u);
  return result;
}

void sub_1005A15F4(void *a1, _BYTE *a2)
{
  v4 = *(v2 + 16);
  v5 = *v4;
  *v4 = a1;
  v6 = a1;

  *a2 = 1;
}

uint64_t sub_1005A1630()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

__n128 sub_1005A165C(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1005A1688(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1005A16D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _s10AskRequestVMa()
{
  result = qword_100984620;
  if (!qword_100984620)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1005A17AC()
{
  sub_1005A1960(319, &qword_10097F178, &type metadata accessor for SFAirDrop.TransferIdentifier);
  if (v0 <= 0x3F)
  {
    sub_1005A1960(319, &qword_100984630, &type metadata accessor for SFAirDrop.TransferType);
    if (v1 <= 0x3F)
    {
      sub_1002F2B90(319, &unk_100978AB0);
      if (v2 <= 0x3F)
      {
        sub_1002F2B90(319, qword_1009771F0);
        if (v3 <= 0x3F)
        {
          sub_10030A92C(319, &qword_100984638, &unk_100976C20, &unk_1007F9D80);
          if (v4 <= 0x3F)
          {
            sub_10030A92C(319, &qword_100984640, &unk_100984648, &qword_10080BC00);
            if (v5 <= 0x3F)
            {
              sub_1002F2B90(319, &qword_100975790);
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_1005A1960(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

__n128 sub_1005A19B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1005A19D8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 82))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1005A1A20(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 82) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 82) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_1005A1A88(void (*a1)(void *__return_ptr), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = _swiftEmptyArrayStorage;
  if (v4)
  {
    v27 = _swiftEmptyArrayStorage;
    sub_10028FDE8(0, v4, 0);
    v5 = _swiftEmptyArrayStorage;
    v8 = *(type metadata accessor for URL() - 8);
    v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v10 = *(v8 + 72);
    (a1)(v25, a3 + v9, &v24);
    if (v3)
    {
    }

    else
    {
      for (i = a3 + v10 + v9; ; i = v16)
      {
        v23 = v26;
        v21 = v25[3];
        v22 = v25[4];
        v19 = v25[1];
        v20 = v25[2];
        v18 = v25[0];
        v27 = v5;
        v14 = v5[2];
        v13 = v5[3];
        if (v14 >= v13 >> 1)
        {
          v17 = i;
          sub_10028FDE8((v13 > 1), v14 + 1, 1);
          i = v17;
          v5 = v27;
        }

        v5[2] = v14 + 1;
        v15 = &v5[11 * v14];
        *(v15 + 2) = v18;
        *(v15 + 3) = v19;
        *(v15 + 56) = v23;
        *(v15 + 5) = v21;
        *(v15 + 6) = v22;
        *(v15 + 4) = v20;
        if (!--v4)
        {
          break;
        }

        v16 = i + v10;
        a1(v25);
      }
    }
  }

  return v5;
}

uint64_t sub_1005A1C54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = a8;
  v8[11] = v27;
  v8[8] = a6;
  v8[9] = a7;
  v8[6] = a4;
  v8[7] = a5;
  v8[4] = a2;
  v8[5] = a3;
  v8[3] = a1;
  v9 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v8[12] = v9;
  v10 = *(v9 - 8);
  v8[13] = v10;
  v11 = *(v10 + 64) + 15;
  v8[14] = swift_task_alloc();
  v12 = type metadata accessor for SFAirDropSend.ItemMetadata();
  v8[15] = v12;
  v13 = *(v12 - 8);
  v8[16] = v13;
  v14 = *(v13 + 64) + 15;
  v8[17] = swift_task_alloc();
  v8[18] = swift_task_alloc();
  v15 = *(*(sub_10028088C(&qword_10097B548, &qword_1007FE968) - 8) + 64) + 15;
  v8[19] = swift_task_alloc();
  v16 = type metadata accessor for SFAirDrop.TransferType();
  v8[20] = v16;
  v17 = *(v16 - 8);
  v8[21] = v17;
  v18 = *(v17 + 64) + 15;
  v8[22] = swift_task_alloc();
  v8[23] = swift_task_alloc();
  v19 = type metadata accessor for URL();
  v8[24] = v19;
  v20 = *(v19 - 8);
  v8[25] = v20;
  v21 = *(v20 + 64) + 15;
  v8[26] = swift_task_alloc();
  v22 = type metadata accessor for SFSecurityScopedURL();
  v8[27] = v22;
  v23 = *(v22 - 8);
  v8[28] = v23;
  v24 = *(v23 + 64) + 15;
  v8[29] = swift_task_alloc();
  v8[30] = swift_task_alloc();
  v8[31] = swift_task_alloc();

  return _swift_task_switch(sub_1005A1F04, 0, 0);
}

uint64_t sub_1005A1F04()
{
  v253 = v0;
  v3 = v0[7];
  v2 = v0[8];
  v4 = sub_10046AB74();
  v223 = v5;
  v226 = v4;
  v0[32] = v4;
  v0[33] = v5;
  v249 = v0;
  v229 = v2;
  if (v2)
  {
    v6 = v0[8];
  }

  else
  {
    v7 = v0[4];
    v8 = SFAirDropSend.Request.urls.getter();
    if (!v8)
    {
      goto LABEL_26;
    }

    v6 = v8;
    v9 = v0[8];
  }

  v10 = *(v6 + 16);

  v245 = v10;
  if (!v10)
  {
    v13 = _swiftEmptyArrayStorage;
LABEL_17:

    v27 = *(v13 + 2);
    if (v27)
    {
      v28 = v0[28];
      v242 = *(v28 + 16);
      v29 = &v13[(*(v28 + 80) + 32) & ~*(v28 + 80)];
      v236 = (v0[25] + 8);
      v239 = *(v28 + 72);
      v232 = (v28 + 8);
      v1 = _swiftEmptyArrayStorage;
      do
      {
        v30 = v0[30];
        v31 = v1;
        v32 = v0[26];
        v33 = v0[27];
        v34 = v0[24];
        v242(v30, v29, v33);
        SFSecurityScopedURL.url.getter();
        v35 = URL.absoluteString.getter();
        v37 = v36;
        (*v236)(v32, v34);
        v38 = v33;
        v1 = v31;
        (*v232)(v30, v38);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v1 = sub_10028E1C8(0, *(v31 + 2) + 1, 1, v31);
        }

        v40 = *(v1 + 2);
        v39 = *(v1 + 3);
        if (v40 >= v39 >> 1)
        {
          v1 = sub_10028E1C8((v39 > 1), v40 + 1, 1, v1);
        }

        *(v1 + 2) = v40 + 1;
        v41 = &v1[16 * v40];
        *(v41 + 4) = v35;
        *(v41 + 5) = v37;
        v29 += v239;
        --v27;
        v0 = v249;
      }

      while (v27);

LABEL_27:
      v0[34] = v1;
      if (qword_100973AD0 == -1)
      {
        goto LABEL_28;
      }

      goto LABEL_85;
    }

LABEL_26:
    v1 = _swiftEmptyArrayStorage;
    goto LABEL_27;
  }

  v11 = 0;
  v12 = v0[28];
  v238 = (v0[25] + 8);
  v235 = (v12 + 32);
  v13 = _swiftEmptyArrayStorage;
  while (v11 < *(v6 + 16))
  {
    v14 = v13;
    v15 = v0[26];
    v16 = v0[24];
    v17 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v1 = v6;
    v18 = v6 + v17;
    v19 = *(v12 + 72);
    (*(v12 + 16))(v0[31], v18 + v19 * v11, v0[27]);
    SFSecurityScopedURL.url.getter();
    v20 = URL.isFileURL.getter();
    (*v238)(v15, v16);
    v21 = v0[31];
    if (v20)
    {
      (*(v12 + 8))(v0[31], v0[27]);
      v13 = v14;
    }

    else
    {
      v22 = *v235;
      (*v235)(v0[29], v0[31], v0[27]);
      v13 = v14;
      v252[0] = v14;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10028FE08(0, *(v14 + 16) + 1, 1);
        v13 = v252[0];
      }

      v24 = *(v13 + 2);
      v23 = *(v13 + 3);
      if (v24 >= v23 >> 1)
      {
        sub_10028FE08(v23 > 1, v24 + 1, 1);
        v13 = v252[0];
      }

      v0 = v249;
      v25 = v249[29];
      v26 = v249[27];
      *(v13 + 2) = v24 + 1;
      v22(&v13[v17 + v24 * v19], v25, v26);
    }

    ++v11;
    v6 = v1;
    if (v245 == v11)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_85:
  swift_once();
LABEL_28:
  v42 = type metadata accessor for Logger();
  v0[35] = sub_10000C4AC(v42, qword_1009845B0);

  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v252[0] = v46;
    *v45 = 134218499;
    *(v45 + 4) = *(v1 + 2);

    *(v45 + 12) = 2160;
    *(v45 + 14) = 1752392040;
    *(v45 + 22) = 2081;
    v47 = Array.description.getter();
    v49 = sub_10000C4E4(v47, v48, v252);
    v0 = v249;

    *(v45 + 24) = v49;
    _os_log_impl(&_mh_execute_header, v43, v44, "Adding URL items (count=%ld) to request: %{private,mask.hash}s", v45, 0x20u);
    sub_10000C60C(v46);
  }

  else
  {
  }

  v50 = v0[9];
  if (v50)
  {
    goto LABEL_34;
  }

  if (v229)
  {
    v50 = v0[8];
LABEL_34:

LABEL_35:
    v0[36] = v50;
    v0[37] = v50;
    v51 = v0;
    v52 = v0[23];
    v53 = v0[21];
    v54 = v51[20];
    v55 = v51[4];

    SFAirDropSend.Request.type.getter();
    LOBYTE(v55) = SFAirDrop.TransferType.isOnlyExchange.getter();
    (*(v53 + 8))(v52, v54);
    if (v55)
    {

      v56 = Logger.logObject.getter();
      v57 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        *v58 = 0;
        _os_log_impl(&_mh_execute_header, v56, v57, "Adding empty file info to request for exchange only send request", v58, 2u);
      }

      v246 = _swiftEmptyArrayStorage;
      goto LABEL_39;
    }

    if (*(v50 + 16))
    {
      v70 = v249[27];
      v71 = v249[28];
      v72 = v249[19];
      v73 = v249[11];
      v247 = *(v249 + 9);
      (*(v71 + 16))(v72, v50 + ((*(v71 + 80) + 32) & ~*(v71 + 80)), v70);
      (*(v71 + 56))(v72, 0, 1, v70);
      sub_100005508(v72, &qword_10097B548, &qword_1007FE968);
      v74 = swift_task_alloc();
      v249[38] = v74;
      *(v74 + 16) = v247;
      *(v74 + 32) = v73;
      v75 = async function pointer to static SFSecurityScopedURL.withAccess<A>(to:body:)[1];
      v76 = swift_task_alloc();
      v249[39] = v76;
      v77 = sub_10028088C(&unk_100984648, &qword_10080BC00);
      *v76 = v249;
      v76[1] = sub_1005A3244;
      v78 = &unk_10080BDE0;
      v79 = v249 + 2;
      v80 = v50;
      v81 = v74;

      return static SFSecurityScopedURL.withAccess<A>(to:body:)(v79, v80, v78, v81, v77);
    }

    v90 = v249[28];
    v248 = v249[27];
    v91 = v249[19];
    v93 = v249[10];
    v92 = v249[11];
    v95 = v249[8];
    v94 = v249[9];
    v96 = v249[6];
    swift_bridgeObjectRelease_n();

    sub_1003C426C(v94);

    (*(v90 + 56))(v91, 1, 1, v248);
    sub_100005508(v91, &qword_10097B548, &qword_1007FE968);
    v97 = Logger.logObject.getter();
    v98 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v97, v98))
    {
      v99 = swift_slowAlloc();
      *v99 = 0;
      _os_log_impl(&_mh_execute_header, v97, v98, "Send request claims to provide URLs but provides none", v99, 2u);
    }

    v0 = v249;
    goto LABEL_54;
  }

  v116 = v0[4];
  v117 = SFAirDropSend.Request.urls.getter();
  if (v117)
  {
    v50 = v117;
    goto LABEL_35;
  }

  v152 = v0[4];
  v153 = SFAirDropSend.Request.urlsMetadata.getter();
  if (!v153)
  {
    v186 = v0[6];

    v97 = Logger.logObject.getter();
    v187 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v97, v187))
    {
      goto LABEL_54;
    }

    v188 = swift_slowAlloc();
    *v188 = 0;
    v189 = "Send request does not provide either file URLs or file metadata";
LABEL_81:
    _os_log_impl(&_mh_execute_header, v97, v187, v189, v188, 2u);
    v0 = v249;

    goto LABEL_54;
  }

  v154 = *(v153 + 16);
  if (v154)
  {
    v155 = v0[16];
    v156 = v153;
    sub_10028FDE8(0, v154, 0);
    v246 = _swiftEmptyArrayStorage;
    v157 = *(v155 + 16);
    v155 += 16;
    v221 = v157;
    v158 = v156 + ((*(v155 + 64) + 32) & ~*(v155 + 64));
    v217 = *(v155 + 56);
    v219 = (v155 - 8);
    for (i = v154 - 1; ; --i)
    {
      v159 = v0[17];
      v160 = v0[18];
      v161 = v0[15];
      v225 = v158;
      v221(v160);
      (v221)(v159, v160, v161);
      v162 = SFAirDropSend.ItemMetadata.fileName.getter();
      v237 = v163;
      v241 = v162;
      v164 = SFAirDropSend.ItemMetadata.fileType.getter();
      v231 = v165;
      v234 = v164;
      v166 = SFAirDropSend.ItemMetadata.fileSubType.getter();
      v228 = v167;
      v168 = SFAirDropSend.ItemMetadata.fileSize.getter();
      v169 = SFAirDropSend.ItemMetadata.fileBOMPath.getter();
      v171 = v170;
      v172 = SFAirDropSend.ItemMetadata.fileIsDirectory.getter();
      v173 = *v219;
      (*v219)(v159, v161);
      v173(v160, v161);
      v174 = v246;
      v176 = v246[2];
      v175 = v246[3];
      if (v176 >= v175 >> 1)
      {
        sub_10028FDE8((v175 > 1), v176 + 1, 1);
        v174 = v246;
      }

      v174[2] = v176 + 1;
      v177 = &v174[11 * v176];
      v177[4] = v241;
      v177[5] = v237;
      v177[6] = v234;
      v177[7] = v231;
      v177[8] = v166;
      v177[9] = v228;
      v177[10] = v168;
      *(v177 + 88) = 0;
      *(v177 + 89) = *v251;
      *(v177 + 23) = *&v251[3];
      v177[12] = v169;
      v177[13] = v171;
      *(v177 + 112) = v172 & 1;
      *(v177 + 113) = 0;
      v246 = v174;
      if (!i)
      {
        break;
      }

      v158 = v225 + v217;
      v0 = v249;
    }

    v178 = v174;
    v179 = Logger.logObject.getter();
    v180 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v179, v180))
    {
      v181 = swift_slowAlloc();
      v182 = swift_slowAlloc();
      v252[0] = v182;
      *v181 = 134218499;
      *(v181 + 4) = v178[2];

      *(v181 + 12) = 2160;
      *(v181 + 14) = 1752392040;
      *(v181 + 22) = 2081;
      v183 = Array.description.getter();
      v185 = sub_10000C4E4(v183, v184, v252);

      *(v181 + 24) = v185;
      _os_log_impl(&_mh_execute_header, v179, v180, "Adding file info (count=%ld) to request: %{private,mask.hash}s", v181, 0x20u);
      sub_10000C60C(v182);
    }

    else
    {
    }

LABEL_39:
    v59 = v249[23];
    v60 = v249[20];
    v61 = v249[21];
    v62 = v249[4];
    v63 = SFAirDropSend.Request.itemPreviewData.getter();
    v65 = v64;
    SFAirDropSend.Request.type.getter();
    LOBYTE(v62) = SFAirDrop.TransferType.isOnlyExchange.getter();
    v233 = *(v61 + 8);
    v233(v59, v60);
    if ((v62 & 1) != 0 || (v66 = [v249[7] computerName]) == 0)
    {
      v240 = 0;
      v69 = 0;
    }

    else
    {
      v67 = v66;
      v240 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v69 = v68;
    }

    v82 = v249[35];
    sub_1002A9924(v63, v65);
    v83 = Logger.logObject.getter();
    v84 = static os_log_type_t.default.getter();
    sub_10028BCC0(v63, v65);
    if (os_log_type_enabled(v83, v84))
    {
      v85 = v69;
      v86 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v252[0] = v87;
      *v86 = 136315138;
      if (v65 >> 60 == 15)
      {
        v88 = 0x8000000100796C40;
        v89 = 0xD000000000000016;
      }

      else
      {
        v89 = Data.description.getter();
        v88 = v118;
      }

      v119 = sub_10000C4E4(v89, v88, v252);

      *(v86 + 4) = v119;
      _os_log_impl(&_mh_execute_header, v83, v84, "Adding preview data to request %s", v86, 0xCu);
      sub_10000C60C(v87);

      v69 = v85;
    }

    else
    {
    }

    v120 = v249[22];
    v121 = v249[14];
    v122 = v249[4];
    SFAirDropSend.Request.id.getter();
    SFAirDropSend.Request.type.getter();
    v123 = SFAirDropSend.Request.requestSource.getter();
    v227 = v124;
    v230 = v123;
    if (v69)
    {
      v220 = v69;
    }

    else
    {
      v125 = String._bridgeToObjectiveC()();
      v126 = SFLocalizedStringForKey();

      if (!v126)
      {
LABEL_87:
        __break(1u);
        return static SFSecurityScopedURL.withAccess<A>(to:body:)(v79, v80, v78, v81, v77);
      }

      v240 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v220 = v127;
    }

    v128 = v249;
    v222 = v65;
    v224 = v63;
    v129 = v249[7];

    v79 = [v129 modelName];
    v130 = v79;
    if (v79)
    {
      v205 = v249[32];
      v206 = v249[33];
      v209 = v249[34];
      v210 = v249[31];
      v211 = v249[30];
      v212 = v249[29];
      v213 = v249[26];
      v214 = v249[23];
      v131 = v249[21];
      v195 = v249[20];
      v196 = v249[22];
      v215 = v249[19];
      v216 = v249[18];
      v218 = v249[17];
      v250 = v249[14];
      v191 = v128[13];
      v132 = v128[11];
      v243 = v128[12];
      v134 = v128[9];
      v133 = v128[10];
      v135 = v128[8];
      v202 = v128[5];
      v203 = v128[6];
      v136 = v128[3];
      v197 = v128[7];
      v198 = v128[4];

      sub_1003C426C(v134);

      v137 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v193 = v138;
      v194 = v137;

      v139 = SFAirDropSend.Request.customPayload.getter();
      v207 = v140;
      v208 = v139;
      v141 = _s10AskRequestVMa();
      v192 = v141[11];
      v201 = v141[12];
      v199 = (v136 + v141[13]);
      v142 = v136 + v141[14];
      *v142 = xmmword_1007F8A80;
      v200 = v136 + v141[15];
      *v200 = xmmword_1007F8A80;
      v204 = v141[16];
      v143 = v136 + v141[17];
      *v143 = xmmword_1007F8A80;
      (*(v191 + 16))(v136, v250, v243);
      (*(v191 + 56))(v136, 0, 1, v243);
      v144 = v141[5];
      (*(v131 + 16))(v136 + v144, v196, v195);
      (*(v131 + 56))(v136 + v144, 0, 1, v195);

      v145 = (v136 + v141[6]);
      *v145 = v205;
      v145[1] = v206;
      v146 = (v136 + v141[8]);
      *v146 = v230;
      v146[1] = v227;
      v147 = (v136 + v141[7]);
      *v147 = v202;
      v147[1] = v203;
      v148 = (v136 + v141[9]);
      *v148 = v240;
      v148[1] = v220;
      v149 = (v136 + v141[10]);
      *v149 = v194;
      v149[1] = v193;
      *(v136 + v192) = v209;
      v150 = type metadata accessor for SFAirDropSend.Request();
      (*(*(v150 - 8) + 8))(v198, v150);
      v233(v196, v195);
      (*(v191 + 8))(v250, v243);
      *(v136 + v201) = v246;
      *v199 = 0;
      v199[1] = 0;
      sub_10028BCC0(*v142, *(v142 + 8));
      *v142 = v224;
      *(v142 + 8) = v222;
      sub_10028BCC0(*v200, *(v200 + 8));
      *v200 = xmmword_1007F8A80;
      *(v136 + v204) = 0;
      sub_10028BCC0(*v143, *(v143 + 8));
      *v143 = v208;
      *(v143 + 8) = v207;

      v115 = v128[1];
      goto LABEL_65;
    }

    __break(1u);
    goto LABEL_87;
  }

  v190 = v0[6];

  v97 = Logger.logObject.getter();
  v187 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v97, v187))
  {
    v188 = swift_slowAlloc();
    *v188 = 0;
    v189 = "Send request claims to provide file metadata but provides none";
    goto LABEL_81;
  }

LABEL_54:
  v100 = v0[7];
  v101 = v0[4];

  v102 = type metadata accessor for SFAirDropSend.Failure();
  sub_1005AB7FC(&qword_1009755A0, &type metadata accessor for SFAirDropSend.Failure);
  swift_allocError();
  (*(*(v102 - 8) + 104))(v103, enum case for SFAirDropSend.Failure.badRequest(_:), v102);
  swift_willThrow();
  sub_10028BCC0(v226, v223);

  v104 = type metadata accessor for SFAirDropSend.Request();
  (*(*(v104 - 8) + 8))(v101, v104);
  v106 = v0[30];
  v105 = v0[31];
  v107 = v0[29];
  v108 = v0[26];
  v110 = v0[22];
  v109 = v0[23];
  v112 = v0[18];
  v111 = v0[19];
  v113 = v0[17];
  v114 = v0[14];

  v115 = v0[1];
LABEL_65:

  return v115();
}

uint64_t sub_1005A3244()
{
  v2 = *v1;
  v3 = *(*v1 + 312);
  v4 = *v1;
  v2[40] = v0;

  v5 = v2[38];
  v6 = v2[36];
  if (v0)
  {
    v7 = v2[34];
    v9 = v2[10];
    v8 = v2[11];
    v11 = v2[8];
    v10 = v2[9];
    v12 = v2[6];

    sub_1003C426C(v10);

    v13 = sub_1005A39E0;
  }

  else
  {
    v14 = v2[36];

    v13 = sub_1005A33F8;
  }

  return _swift_task_switch(v13, 0, 0);
}

void sub_1005A33F8()
{
  v92 = v0;
  v1 = *(v0 + 16);
  v84 = *(v0 + 296);
  v2 = *(v0 + 184);
  v3 = *(v0 + 160);
  v4 = *(v0 + 168);
  v5 = *(v0 + 32);
  v6 = SFAirDropSend.Request.itemPreviewData.getter();
  v8 = v7;
  SFAirDropSend.Request.type.getter();
  LOBYTE(v5) = SFAirDrop.TransferType.isOnlyExchange.getter();
  v86 = *(v4 + 8);
  v86(v2, v3);
  if ((v5 & 1) != 0 || (v9 = [*(v0 + 56) computerName]) == 0)
  {
    v88 = 0;
    v12 = 0;
  }

  else
  {
    v10 = v9;
    v88 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;
  }

  v13 = *(v0 + 280);
  sub_1002A9924(v6, v8);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  sub_10028BCC0(v6, v8);
  v87 = v1;
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v91 = v17;
    *v16 = 136315138;
    if (v8 >> 60 == 15)
    {
      v18 = 0x8000000100796C40;
      v19 = 0xD000000000000016;
    }

    else
    {
      v19 = Data.description.getter();
      v18 = v20;
    }

    v21 = sub_10000C4E4(v19, v18, &v91);

    *(v16 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v14, v15, "Adding preview data to request %s", v16, 0xCu);
    sub_10000C60C(v17);
  }

  v22 = *(v0 + 176);
  v23 = *(v0 + 112);
  v24 = *(v0 + 32);
  SFAirDropSend.Request.id.getter();
  SFAirDropSend.Request.type.getter();
  v25 = SFAirDropSend.Request.requestSource.getter();
  v83 = v26;
  if (v12)
  {
    v79 = v12;
  }

  else
  {
    v27 = v25;
    v28 = String._bridgeToObjectiveC()();
    v29 = SFLocalizedStringForKey();

    if (!v29)
    {
LABEL_19:
      __break(1u);
      return;
    }

    v88 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v79 = v30;

    v25 = v27;
  }

  v80 = v25;
  v81 = v8;
  v82 = v6;
  v31 = *(v0 + 56);

  v32 = [v31 modelName];
  if (!v32)
  {
    __break(1u);
    goto LABEL_19;
  }

  v67 = *(v0 + 256);
  v68 = *(v0 + 264);
  v70 = *(v0 + 272);
  v71 = *(v0 + 248);
  v72 = *(v0 + 240);
  v73 = *(v0 + 232);
  v74 = *(v0 + 208);
  v75 = *(v0 + 184);
  v33 = *(v0 + 168);
  v57 = *(v0 + 160);
  v58 = *(v0 + 176);
  v76 = *(v0 + 152);
  v77 = *(v0 + 144);
  v78 = *(v0 + 136);
  v34 = *(v0 + 104);
  v35 = *(v0 + 88);
  v89 = *(v0 + 96);
  v90 = *(v0 + 112);
  v36 = *(v0 + 72);
  v37 = *(v0 + 80);
  v38 = *(v0 + 64);
  v64 = *(v0 + 40);
  v65 = *(v0 + 48);
  v39 = *(v0 + 24);
  v59 = *(v0 + 56);
  v60 = *(v0 + 32);

  sub_1003C426C(v36);

  v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v55 = v41;
  v56 = v40;

  v85 = SFAirDropSend.Request.customPayload.getter();
  v69 = v42;
  v43 = _s10AskRequestVMa();
  v54 = v43[11];
  v63 = v43[12];
  v61 = (v39 + v43[13]);
  v44 = v39 + v43[14];
  *v44 = xmmword_1007F8A80;
  v62 = v39 + v43[15];
  *v62 = xmmword_1007F8A80;
  v66 = v43[16];
  v45 = v39 + v43[17];
  *v45 = xmmword_1007F8A80;
  (*(v34 + 16))(v39, v90, v89);
  (*(v34 + 56))(v39, 0, 1, v89);
  v46 = v43[5];
  (*(v33 + 16))(v39 + v46, v58, v57);
  (*(v33 + 56))(v39 + v46, 0, 1, v57);

  v47 = (v39 + v43[6]);
  *v47 = v67;
  v47[1] = v68;
  v48 = (v39 + v43[8]);
  *v48 = v80;
  v48[1] = v83;
  v49 = (v39 + v43[7]);
  *v49 = v64;
  v49[1] = v65;
  v50 = (v39 + v43[9]);
  *v50 = v88;
  v50[1] = v79;
  v51 = (v39 + v43[10]);
  *v51 = v56;
  v51[1] = v55;
  *(v39 + v54) = v70;
  v52 = type metadata accessor for SFAirDropSend.Request();
  (*(*(v52 - 8) + 8))(v60, v52);
  v86(v58, v57);
  (*(v34 + 8))(v90, v89);
  *(v39 + v63) = v87;
  *v61 = 0;
  v61[1] = 0;
  sub_10028BCC0(*v44, *(v44 + 8));
  *v44 = v82;
  *(v44 + 8) = v81;
  sub_10028BCC0(*v62, *(v62 + 8));
  *v62 = xmmword_1007F8A80;
  *(v39 + v66) = 0;
  sub_10028BCC0(*v45, *(v45 + 8));
  *v45 = v85;
  *(v45 + 8) = v69;

  v53 = *(v0 + 8);

  v53();
}

uint64_t sub_1005A39E0()
{
  v1 = v0[7];
  v2 = v0[4];
  sub_10028BCC0(v0[32], v0[33]);

  v3 = type metadata accessor for SFAirDropSend.Request();
  (*(*(v3 - 8) + 8))(v2, v3);
  v16 = v0[40];
  v5 = v0[30];
  v4 = v0[31];
  v6 = v0[29];
  v7 = v0[26];
  v9 = v0[22];
  v8 = v0[23];
  v11 = v0[18];
  v10 = v0[19];
  v12 = v0[17];
  v13 = v0[14];

  v14 = v0[1];

  return v14();
}

uint64_t sub_1005A3B18()
{
  v1 = v0;
  if (IsAppleInternalBuild())
  {
    _StringGuts.grow(_:)(222);
    v2._countAndFlagsBits = 0x75716572204B5341;
    v2._object = 0xEF20444920747365;
    String.append(_:)(v2);
    type metadata accessor for SFAirDrop.TransferIdentifier();
    sub_1005AB7FC(&qword_100977BF0, &type metadata accessor for SFAirDrop.TransferIdentifier);
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v3._countAndFlagsBits = 0x206570795420;
    v3._object = 0xE600000000000000;
    String.append(_:)(v3);
    v4 = _s10AskRequestVMa();
    v5 = v4[5];
    type metadata accessor for SFAirDrop.TransferType();
    sub_1005AB7FC(&unk_100989320, &type metadata accessor for SFAirDrop.TransferType);
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v6._countAndFlagsBits = 0x207265646E655320;
    v6._object = 0xE800000000000000;
    String.append(_:)(v6);
    String.append(_:)(*(v1 + v4[7]));
    v7._countAndFlagsBits = 0x22206D4E202CLL;
    v7._object = 0xE600000000000000;
    String.append(_:)(v7);
    String.append(_:)(*(v1 + v4[9]));
    v8._countAndFlagsBits = 0x20644D202C22;
    v8._object = 0xE600000000000000;
    String.append(_:)(v8);
    String.append(_:)(*(v1 + v4[10]));
    v9._countAndFlagsBits = 0x6574496C7275202CLL;
    v9._object = 0xEC000000203A736DLL;
    String.append(_:)(v9);
    v37 = *(v1 + v4[11]);
    sub_10028088C(&unk_100976C20, &unk_1007F9D80);
    sub_1005A71C8(&qword_1009846A8, &unk_100976C20, &unk_1007F9D80);
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v10._countAndFlagsBits = 0x3A73656C6966202CLL;
    v10._object = 0xE900000000000020;
    String.append(_:)(v10);
    v38 = *(v1 + v4[12]);
    sub_10028088C(&unk_100984648, &qword_10080BC00);
    sub_1005A71C8(&qword_1009846B0, &unk_100984648, &qword_10080BC00);
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v11._countAndFlagsBits = 0xD00000000000001CLL;
    v11._object = 0x8000000100796B00;
    String.append(_:)(v11);
    LOBYTE(v38) = *(v1 + v4[16]);
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v12._countAndFlagsBits = 0xD000000000000014;
    v12._object = 0x8000000100796B20;
    String.append(_:)(v12);
    v39 = *(v1 + v4[13]);
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v13._countAndFlagsBits = 0x6349656C6966202CLL;
    v13._object = 0xEC000000203A6E6FLL;
    String.append(_:)(v13);
    v40 = *(v1 + v4[14]);
    sub_1002A9924(v40, *(&v40 + 1));
    sub_1002F4C88();
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    sub_10028BCC0(v40, *(&v40 + 1));
    v14._object = 0x8000000100796B40;
    v14._countAndFlagsBits = 0xD000000000000011;
    String.append(_:)(v14);
    v41 = *(v1 + v4[15]);
    sub_1002A9924(v41, *(&v41 + 1));
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    sub_10028BCC0(v41, *(&v41 + 1));
    v15._countAndFlagsBits = 0xD000000000000014;
    v15._object = 0x8000000100796B60;
    String.append(_:)(v15);
    v42 = *(v1 + v4[6]);
    sub_1002A9924(v42, *(&v42 + 1));
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    sub_10028BCC0(v42, *(&v42 + 1));
    v16._countAndFlagsBits = 0xD000000000000012;
    v16._object = 0x8000000100796B80;
    String.append(_:)(v16);
    v43 = *(v1 + v4[8]);
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
  }

  else
  {
    _StringGuts.grow(_:)(214);
    v17._countAndFlagsBits = 0x75716572204B5341;
    v17._object = 0xEF20444920747365;
    String.append(_:)(v17);
    type metadata accessor for SFAirDrop.TransferIdentifier();
    sub_1005AB7FC(&qword_100977BF0, &type metadata accessor for SFAirDrop.TransferIdentifier);
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v18._countAndFlagsBits = 0x206570795420;
    v18._object = 0xE600000000000000;
    String.append(_:)(v18);
    v4 = _s10AskRequestVMa();
    v19 = v4[5];
    type metadata accessor for SFAirDrop.TransferType();
    sub_1005AB7FC(&unk_100989320, &type metadata accessor for SFAirDrop.TransferType);
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v20._countAndFlagsBits = 0x207265646E655320;
    v20._object = 0xE800000000000000;
    String.append(_:)(v20);
    String.append(_:)(*(v1 + v4[7]));
    v21._countAndFlagsBits = 0x22206D4E202CLL;
    v21._object = 0xE600000000000000;
    String.append(_:)(v21);
    String.append(_:)(*(v1 + v4[9]));
    v22._countAndFlagsBits = 0x20644D202C22;
    v22._object = 0xE600000000000000;
    String.append(_:)(v22);
    String.append(_:)(*(v1 + v4[10]));
    v23._countAndFlagsBits = 0xD000000000000012;
    v23._object = 0x8000000100796BC0;
    String.append(_:)(v23);
    v24 = *(v1 + v4[11]);
    if (v24)
    {
      v25 = *(v24 + 16);
    }

    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v26._countAndFlagsBits = 0x2E73656C6966202CLL;
    v26._object = 0xEF203A746E756F63;
    String.append(_:)(v26);
    v27 = *(v1 + v4[12]);
    if (v27)
    {
      v28 = *(v27 + 16);
    }

    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v29._countAndFlagsBits = 0xD00000000000001CLL;
    v29._object = 0x8000000100796B00;
    String.append(_:)(v29);
    v44 = *(v1 + v4[16]);
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v30._countAndFlagsBits = 0xD000000000000014;
    v30._object = 0x8000000100796B20;
    String.append(_:)(v30);
    v45 = *(v1 + v4[13]);
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v31._countAndFlagsBits = 0x6349656C6966202CLL;
    v31._object = 0xEC000000203A6E6FLL;
    String.append(_:)(v31);
    v46 = *(v1 + v4[14]);
    sub_1002A9924(v46, *(&v46 + 1));
    sub_1002F4C88();
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    sub_10028BCC0(v46, *(&v46 + 1));
    v32._object = 0x8000000100796B40;
    v32._countAndFlagsBits = 0xD000000000000011;
    String.append(_:)(v32);
    v47 = *(v1 + v4[15]);
    sub_1002A9924(v47, *(&v47 + 1));
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    sub_10028BCC0(v47, *(&v47 + 1));
    v33._countAndFlagsBits = 0xD000000000000014;
    v33._object = 0x8000000100796B60;
    String.append(_:)(v33);
    v48 = *(v1 + v4[6]);
    sub_1002A9924(v48, *(&v48 + 1));
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    sub_10028BCC0(v48, *(&v48 + 1));
  }

  v34._object = 0x8000000100796BA0;
  v34._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v34);
  v35 = (v1 + v4[17]);
  v49 = *v35;
  v50 = v35[1];
  sub_1002A9924(*v35, v50);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  sub_10028BCC0(v49, v50);
  return 0;
}

uint64_t sub_1005A43F8()
{
  *&v12 = 0;
  *(&v12 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(118);
  v11 = v12;
  v1._countAndFlagsBits = 0xD000000000000011;
  v1._object = 0x8000000100796BE0;
  String.append(_:)(v1);
  String.append(_:)(*v0);
  v2._countAndFlagsBits = 0x20644D202C22;
  v2._object = 0xE600000000000000;
  String.append(_:)(v2);
  String.append(_:)(*(v0 + 16));
  v3._countAndFlagsBits = 0xD00000000000001ALL;
  v3._object = 0x8000000100796C00;
  String.append(_:)(v3);
  LOBYTE(v12) = *(v0 + 32);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v4._countAndFlagsBits = 0x736553736469202CLL;
  v4._object = 0xEF2044496E6F6973;
  String.append(_:)(v4);
  v12 = *(v0 + 40);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v5._countAndFlagsBits = 0x6F6475657370202CLL;
  v5._object = 0xEC000000206D796ELL;
  String.append(_:)(v5);
  v12 = *(v0 + 56);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v6._countAndFlagsBits = 0x6F5468737570202CLL;
  v6._object = 0xEC000000206E656BLL;
  String.append(_:)(v6);
  v12 = *(v0 + 72);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v7._object = 0x8000000100796C20;
  v7._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v7);
  v12 = *(v0 + 88);
  v10 = *(v0 + 88);
  sub_10000FF90(&v12, &v9, &qword_100974E10, &qword_1007FC4C0);
  sub_1002F4C88();
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  sub_10028BCC0(v10, *(&v10 + 1));
  return v11;
}

uint64_t sub_1005A4624()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_1009845B0);
  v1 = sub_10000C4AC(v0, qword_1009845B0);
  if (qword_1009736D0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A08B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

unint64_t sub_1005A46EC(char a1)
{
  result = 0x726566736E617254;
  switch(a1)
  {
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x44497265646E6553;
      break;
    case 4:
      result = 0x4449656C646E7542;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    case 6:
      result = 0x6F4D7265646E6553;
      break;
    case 7:
      result = 0x736D657449;
      break;
    case 8:
      result = 0x73656C6946;
      break;
    case 9:
      result = 0xD000000000000010;
      break;
    case 10:
      result = 0x6E6F6349656C6946;
      break;
    case 11:
      result = 0x6C69466C6C616D53;
      break;
    case 12:
      result = 0xD000000000000013;
      break;
    case 13:
      result = 0x61506D6F74737543;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1005A4888(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1005A46EC(*a1);
  v5 = v4;
  if (v3 == sub_1005A46EC(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_1005A4910()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_1005A46EC(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1005A4974()
{
  sub_1005A46EC(*v0);
  String.hash(into:)();
}

Swift::Int sub_1005A49C8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_1005A46EC(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1005A4A28@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1005A88E4(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1005A4A58@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1005A46EC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1005A4AA0@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1005A88E4(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1005A4AC8(uint64_t a1)
{
  v2 = sub_1005AAF1C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005A4B04(uint64_t a1)
{
  v2 = sub_1005AAF1C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1005A4B40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for URL();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();

  return _swift_task_switch(sub_1005A4C20, 0, 0);
}

void sub_1005A4C20()
{
  v49 = v0;
  v1 = *(v0 + 24);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 64);
    v6 = *(v3 + 16);
    v4 = v3 + 16;
    v5 = v6;
    v7 = v1 + ((*(v4 + 64) + 32) & ~*(v4 + 64));
    v8 = *(v4 + 56);
    v46 = (*(v4 + 64) + 32) & ~*(v4 + 64);
    v9 = (v4 + 16);
    v10 = _swiftEmptyArrayStorage;
    v47 = v6;
    v6(*(v0 + 88), v7, *(v0 + 56));
    while (1)
    {
      v11 = URL.isFileURL.getter();
      v12 = *(v0 + 88);
      if (v11)
      {
        v13 = *v9;
        (*v9)(*(v0 + 80), *(v0 + 88), *(v0 + 56));
        v48 = v10;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_10028FAB4(0, v10[2] + 1, 1);
          v10 = v48;
        }

        v15 = v10[2];
        v14 = v10[3];
        if (v15 >= v14 >> 1)
        {
          sub_10028FAB4(v14 > 1, v15 + 1, 1);
          v10 = v48;
        }

        v16 = *(v0 + 80);
        v17 = *(v0 + 56);
        v10[2] = v15 + 1;
        v13(v10 + v46 + v15 * v8, v16, v17);
        v5 = v47;
      }

      else
      {
        (*(v4 - 8))(*(v0 + 88), *(v0 + 56));
      }

      v7 += v8;
      if (!--v2)
      {
        break;
      }

      v5(*(v0 + 88), v7, *(v0 + 56));
    }
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v10[2])
  {
    v18 = *(v0 + 56);
    isa = Array._bridgeToObjectiveC()().super.isa;
    v20 = sub_1001F0874(isa);

    if (!v20)
    {
      __break(1u);
      return;
    }

    v21 = *(v0 + 72);
    v22 = *(v0 + 32);
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v23 = *(v0 + 72);
    if (v22)
    {
      v24 = *(v0 + 48);
      v25 = swift_task_alloc();
      v26 = *(v0 + 32);
      *(v25 + 16) = v23;
      *(v25 + 24) = v26;
      *(v25 + 40) = v24;
      v27 = sub_1005AB778;
    }

    else
    {
      v25 = swift_task_alloc();
      *(v25 + 16) = v23;
      v27 = sub_1005AB758;
    }

    v28 = sub_1005A1A88(v27, v25, v10);
    v30 = *(v0 + 64);
    v29 = *(v0 + 72);
    v31 = *(v0 + 56);

    (*(v30 + 8))(v29, v31);
  }

  else
  {
    v28 = _swiftEmptyArrayStorage;
  }

  if (qword_100973AD0 != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  sub_10000C4AC(v32, qword_1009845B0);

  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = *(v0 + 56);
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v48 = v37;
    *v36 = 134218499;
    *(v36 + 4) = v10[2];

    *(v36 + 12) = 2160;
    *(v36 + 14) = 1752392040;
    *(v36 + 22) = 2081;
    v38 = Array.description.getter();
    v40 = v39;

    v41 = sub_10000C4E4(v38, v40, &v48);

    *(v36 + 24) = v41;
    _os_log_impl(&_mh_execute_header, v33, v34, "Adding file items (count=%ld) to request: %{private,mask.hash}s", v36, 0x20u);
    sub_10000C60C(v37);
  }

  else
  {
  }

  v43 = *(v0 + 80);
  v42 = *(v0 + 88);
  v44 = *(v0 + 72);
  **(v0 + 16) = v28;

  v45 = *(v0 + 8);

  v45();
}

double sub_1005A50B4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, void *a4@<X5>, uint64_t a5@<X8>)
{
  v25 = a4;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v25 - v15;
  v17 = *(v10 + 16);
  v17(&v25 - v15, a1, v9);
  v17(v14, a2, v9);
  if (*(a3 + 16) && (v18 = sub_100570988(a1), (v19 & 1) != 0))
  {
    v20 = *(*(a3 + 56) + v18);
  }

  else
  {
    v20 = 0;
  }

  v21 = v28;
  sub_1005AA000(v16, v14, v20, v26);
  if (v21)
  {
    *v25 = v21;
  }

  else
  {
    v23 = v26[3];
    *(a5 + 32) = v26[2];
    *(a5 + 48) = v23;
    *(a5 + 64) = v26[4];
    *(a5 + 80) = v27;
    result = *v26;
    v24 = v26[1];
    *a5 = v26[0];
    *(a5 + 16) = v24;
  }

  return result;
}

double sub_1005A5250@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v23 = a3;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v20 - v14;
  v16 = *(v9 + 16);
  v16(&v20 - v14, a1, v8);
  v16(v13, a2, v8);
  sub_1005AA000(v15, v13, 0, v21);
  if (v4)
  {
    *v23 = v4;
  }

  else
  {
    v18 = v21[3];
    *(a4 + 32) = v21[2];
    *(a4 + 48) = v18;
    *(a4 + 64) = v21[4];
    *(a4 + 80) = v22;
    result = *v21;
    v19 = v21[1];
    *a4 = v21[0];
    *(a4 + 16) = v19;
  }

  return result;
}

uint64_t sub_1005A53C8(void *a1)
{
  v3 = v1;
  v5 = sub_10028088C(&qword_100984708, &qword_10080BDB8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v38 - v8;
  v10 = a1[4];
  sub_10002CDC0(a1, a1[3]);
  sub_1005AAF1C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v40) = 0;
  type metadata accessor for SFAirDrop.TransferIdentifier();
  sub_1005AB7FC(&qword_10097F1F0, &type metadata accessor for SFAirDrop.TransferIdentifier);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v2)
  {
    v11 = _s10AskRequestVMa();
    v12 = v11[5];
    LOBYTE(v40) = 1;
    type metadata accessor for SFAirDrop.TransferType();
    sub_1005AB7FC(&qword_100984710, &type metadata accessor for SFAirDrop.TransferType);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v13 = (v3 + v11[6]);
    v14 = v13[1];
    v40 = *v13;
    v41 = v14;
    v39 = 2;
    sub_1002A9924(v40, v14);
    sub_1002F3198();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_10028BCC0(v40, v41);
    v15 = (v3 + v11[7]);
    v16 = *v15;
    v17 = v15[1];
    LOBYTE(v40) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v18 = (v3 + v11[8]);
    v19 = *v18;
    v20 = v18[1];
    LOBYTE(v40) = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v21 = (v3 + v11[9]);
    v22 = *v21;
    v23 = v21[1];
    LOBYTE(v40) = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    v24 = (v3 + v11[10]);
    v25 = *v24;
    v26 = v24[1];
    LOBYTE(v40) = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
    v40 = *(v3 + v11[11]);
    v39 = 7;
    sub_10028088C(&unk_100976C20, &unk_1007F9D80);
    sub_1005AB02C(&qword_100984718);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v40 = *(v3 + v11[12]);
    v39 = 8;
    sub_10028088C(&unk_100984648, &qword_10080BC00);
    sub_1005AB098(&qword_100984720, sub_1005AB110);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v27 = (v3 + v11[13]);
    v28 = *v27;
    v29 = v27[1];
    LOBYTE(v40) = 9;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v31 = (v3 + v11[14]);
    v32 = v31[1];
    v40 = *v31;
    v41 = v32;
    v39 = 10;
    sub_1002A9924(v40, v32);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_10028BCC0(v40, v41);
    v33 = (v3 + v11[15]);
    v34 = v33[1];
    v40 = *v33;
    v41 = v34;
    v39 = 11;
    sub_1002A9924(v40, v34);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_10028BCC0(v40, v41);
    v35 = *(v3 + v11[16]);
    LOBYTE(v40) = 12;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v36 = (v3 + v11[17]);
    v37 = v36[1];
    v40 = *v36;
    v41 = v37;
    v39 = 13;
    sub_1002A9924(v40, v37);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_10028BCC0(v40, v41);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1005A593C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v3 = sub_10028088C(&qword_100977BD8, &qword_1007FAE38);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v50 - v5;
  v7 = sub_10028088C(&unk_100977BE0, &unk_1007FAE40);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v50 - v9;
  v53 = sub_10028088C(&qword_1009846D8, &qword_10080BDB0);
  v11 = *(v53 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v53);
  v14 = &v50 - v13;
  v15 = _s10AskRequestVMa();
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15);
  v19 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = &v19[v17[14]];
  *v20 = xmmword_1007F8A80;
  v58 = &v19[v17[15]];
  v59 = v20;
  *v58 = xmmword_1007F8A80;
  v21 = &v19[v17[17]];
  v56 = a1;
  v57 = v21;
  *v21 = xmmword_1007F8A80;
  v22 = a1[4];
  sub_10002CDC0(a1, a1[3]);
  sub_1005AAF1C();
  v54 = v14;
  v23 = v55;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v23)
  {
    sub_10000C60C(v56);

    sub_10028BCC0(*v59, *(v59 + 1));
    sub_10028BCC0(*v58, *(v58 + 1));
    return sub_10028BCC0(*v57, *(v57 + 1));
  }

  else
  {
    v55 = v19;
    v51 = v15;
    type metadata accessor for SFAirDrop.TransferIdentifier();
    LOBYTE(v60) = 0;
    sub_1005AB7FC(&qword_10097F1E0, &type metadata accessor for SFAirDrop.TransferIdentifier);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v24 = v55;
    sub_10002C4E4(v10, v55, &unk_100977BE0, &unk_1007FAE40);
    type metadata accessor for SFAirDrop.TransferType();
    LOBYTE(v60) = 1;
    sub_1005AB7FC(&qword_1009846E8, &type metadata accessor for SFAirDrop.TransferType);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v25 = v51;
    sub_10002C4E4(v6, v24 + v51[5], &qword_100977BD8, &qword_1007FAE38);
    v61 = 2;
    sub_1002F309C();
    v50 = 0;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    *(v24 + v25[6]) = v60;
    LOBYTE(v60) = 3;
    v26 = KeyedDecodingContainer.decode(_:forKey:)();
    v27 = (v24 + v25[7]);
    *v27 = v26;
    v27[1] = v28;
    LOBYTE(v60) = 4;
    v29 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v30 = (v24 + v25[8]);
    *v30 = v29;
    v30[1] = v31;
    LOBYTE(v60) = 5;
    v32 = KeyedDecodingContainer.decode(_:forKey:)();
    v33 = (v24 + v25[9]);
    *v33 = v32;
    v33[1] = v34;
    LOBYTE(v60) = 6;
    v35 = KeyedDecodingContainer.decode(_:forKey:)();
    v36 = (v24 + v25[10]);
    *v36 = v35;
    v36[1] = v37;
    sub_10028088C(&unk_100976C20, &unk_1007F9D80);
    v61 = 7;
    sub_1005AB02C(&qword_1009846F0);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v38 = v25[11];
    v50 = v60;
    *(v24 + v38) = v60;
    sub_10028088C(&unk_100984648, &qword_10080BC00);
    v61 = 8;
    sub_1005AB098(&qword_1009846F8, sub_1005AAF70);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    *&v55[v25[12]] = v60;
    LOBYTE(v60) = 9;
    v39 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v40 = &v55[v51[13]];
    *v40 = v39;
    v40[1] = v41;
    v61 = 10;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v42 = v60;
    v43 = v59;
    sub_10028BCC0(*v59, *(v59 + 1));
    *v43 = v42;
    v61 = 11;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v44 = v60;
    v45 = v58;
    sub_10028BCC0(*v58, *(v58 + 1));
    *v45 = v44;
    LOBYTE(v60) = 12;
    v55[v51[16]] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v61 = 13;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v11 + 8))(v54, v53);
    v46 = v60;
    v47 = v57;
    sub_10028BCC0(*v57, *(v57 + 1));
    *v47 = v46;
    v48 = v55;
    sub_1005AAFC4(v55, v52, _s10AskRequestVMa);
    sub_10000C60C(v56);
    return sub_1005AB79C(v48, _s10AskRequestVMa);
  }
}

uint64_t sub_1005A6448()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

unint64_t sub_1005A656C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1005AA8FC(*a1);
  *a2 = result;
  return result;
}

void sub_1005A659C(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC00000044496E6FLL;
  v4 = 0x6973736553534449;
  v5 = 0xD000000000000011;
  v6 = 0x8000000100788800;
  if (v2 != 5)
  {
    v5 = 0xD000000000000015;
    v6 = 0x8000000100788820;
  }

  v7 = 0xD000000000000011;
  if (v2 != 3)
  {
    v4 = 0xD000000000000011;
    v3 = 0x80000001007887E0;
  }

  if (*v1 > 4u)
  {
    v4 = v5;
    v3 = v6;
  }

  v8 = 0x8000000100788580;
  v9 = 0xD000000000000014;
  v10 = 0x80000001007885E0;
  if (v2 != 1)
  {
    v7 = 0xD000000000000017;
    v10 = 0x80000001007887B0;
  }

  if (*v1)
  {
    v9 = v7;
    v8 = v10;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v9;
  }

  else
  {
    v14 = v4;
  }

  if (v12 ^ v13 | v11)
  {
    v3 = v8;
  }

  *a1 = v14;
  a1[1] = v3;
}

unint64_t sub_1005A6688()
{
  v1 = *v0;
  v2 = 0x6973736553534449;
  v3 = 0xD000000000000011;
  if (v1 != 5)
  {
    v3 = 0xD000000000000015;
  }

  v4 = 0xD000000000000011;
  if (v1 != 3)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0 > 4u)
  {
    v2 = v3;
  }

  v5 = 0xD000000000000014;
  if (v1 != 1)
  {
    v4 = 0xD000000000000017;
  }

  if (*v0)
  {
    v5 = v4;
  }

  if (*v0 <= 2u)
  {
    return v5;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1005A6770@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1005AA8FC(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1005A6798(uint64_t a1)
{
  v2 = sub_1005AAEC8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005A67D4(uint64_t a1)
{
  v2 = sub_1005AAEC8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1005A6810(void *a1)
{
  v3 = v1;
  v5 = sub_10028088C(&qword_1009846D0, &qword_10080BDA8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v24[-v8 - 8];
  v10 = a1[4];
  sub_10002CDC0(a1, a1[3]);
  sub_1005AAEC8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v25) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    LOBYTE(v25) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = *(v3 + 32);
    LOBYTE(v25) = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v16 = v3[5];
    v17 = v3[6];
    LOBYTE(v25) = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v18 = v3[7];
    v19 = v3[8];
    LOBYTE(v25) = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v20 = v3[9];
    v21 = v3[10];
    LOBYTE(v25) = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v25 = *(v3 + 11);
    v26 = v25;
    v24[23] = 6;
    sub_10000FF90(&v26, v24, &qword_100974E10, &qword_1007FC4C0);
    sub_1002F3198();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_10028BCC0(v25, *(&v25 + 1));
  }

  return (*(v6 + 8))(v9, v5);
}

__n128 sub_1005A6A98@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1005AA948(a1, v7);
  if (!v2)
  {
    v5 = v7[5];
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v5;
    *(a2 + 96) = v8;
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
    result = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = result;
  }

  return result;
}

uint64_t sub_1005A6B2C()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

unint64_t sub_1005A6C64@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1005AB164(*a1);
  *a2 = result;
  return result;
}

void sub_1005A6C94(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x656D614E656C6946;
  v5 = 0xEF79726F74636572;
  v6 = 0x69447349656C6946;
  if (v2 != 5)
  {
    v6 = 0xD000000000000019;
    v5 = 0x8000000100788880;
  }

  v7 = 0xE800000000000000;
  v8 = 0x657A6953656C6946;
  if (v2 != 3)
  {
    v8 = 0x506D6F42656C6946;
    v7 = 0xEB00000000687461;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE800000000000000;
  v10 = 0x65707954656C6946;
  if (v2 != 1)
  {
    v10 = 0x54627553656C6946;
    v9 = 0xEB00000000657079;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

unint64_t sub_1005A6D94()
{
  v1 = *v0;
  v2 = 0x656D614E656C6946;
  v3 = 0x69447349656C6946;
  if (v1 != 5)
  {
    v3 = 0xD000000000000019;
  }

  v4 = 0x657A6953656C6946;
  if (v1 != 3)
  {
    v4 = 0x506D6F42656C6946;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x65707954656C6946;
  if (v1 != 1)
  {
    v5 = 0x54627553656C6946;
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

unint64_t sub_1005A6E90@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1005AB164(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1005A6EB8(uint64_t a1)
{
  v2 = sub_1005AB640();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005A6EF4(uint64_t a1)
{
  v2 = sub_1005AB640();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1005A6F30(void *a1)
{
  v3 = v1;
  v5 = sub_10028088C(&qword_100984740, &qword_10080BDC8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v24[-v8];
  v10 = a1[4];
  sub_10002CDC0(a1, a1[3]);
  sub_1005AB640();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  v24[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v14 = v3[3];
  v24[14] = 1;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v15 = v3[4];
  v16 = v3[5];
  v24[13] = 2;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v17 = v3[6];
  v18 = *(v3 + 56);
  v24[12] = 3;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v19 = v3[8];
  v20 = v3[9];
  v24[11] = 4;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v21 = *(v3 + 80);
  v24[10] = 5;
  KeyedEncodingContainer.encode(_:forKey:)();
  v23 = *(v3 + 81);
  v24[9] = 6;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v6 + 8))(v9, v5);
}

double sub_1005A7154@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1005AB1B0(a1, v7);
  if (!v2)
  {
    v5 = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v8;
    result = *v7;
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_1005A71C8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100280938(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1005A721C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[50] = a5;
  v6[51] = v5;
  v6[48] = a3;
  v6[49] = a4;
  v6[46] = a1;
  v6[47] = a2;
  v7 = *(*(sub_10028088C(&qword_100974DF8, &qword_10080F350) - 8) + 64) + 15;
  v6[52] = swift_task_alloc();
  v8 = type metadata accessor for UUID();
  v6[53] = v8;
  v9 = *(v8 - 8);
  v6[54] = v9;
  v10 = *(v9 + 64) + 15;
  v6[55] = swift_task_alloc();
  v11 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v6[56] = v11;
  v12 = *(v11 - 8);
  v6[57] = v12;
  v13 = *(v12 + 64) + 15;
  v6[58] = swift_task_alloc();
  v14 = *(*(sub_10028088C(&unk_100976120, &qword_1007F9260) - 8) + 64) + 15;
  v6[59] = swift_task_alloc();
  v6[60] = swift_task_alloc();
  v15 = type metadata accessor for SDAirDropServerConnection(0);
  v6[61] = v15;
  v16 = *(*(v15 - 8) + 64) + 15;
  v6[62] = swift_task_alloc();
  v6[63] = swift_task_alloc();
  v17 = *(*(sub_10028088C(&qword_100977BD8, &qword_1007FAE38) - 8) + 64) + 15;
  v6[64] = swift_task_alloc();
  v18 = type metadata accessor for SFAirDrop.TransferType();
  v6[65] = v18;
  v19 = *(v18 - 8);
  v6[66] = v19;
  v20 = *(v19 + 64) + 15;
  v6[67] = swift_task_alloc();
  v6[68] = swift_task_alloc();
  v6[69] = swift_task_alloc();
  v21 = *(*(sub_10028088C(&qword_1009846B8, &qword_10080BD98) - 8) + 64) + 15;
  v6[70] = swift_task_alloc();
  v22 = type metadata accessor for SFAirDropReceive.AskRequest.ItemInfo();
  v6[71] = v22;
  v23 = *(v22 - 8);
  v6[72] = v23;
  v24 = *(v23 + 64) + 15;
  v6[73] = swift_task_alloc();
  v6[74] = swift_task_alloc();
  v25 = *(*(sub_10028088C(&unk_100974E00, &qword_1007F8940) - 8) + 64) + 15;
  v6[75] = swift_task_alloc();
  v26 = type metadata accessor for URL();
  v6[76] = v26;
  v27 = *(v26 - 8);
  v6[77] = v27;
  v28 = *(v27 + 64) + 15;
  v6[78] = swift_task_alloc();

  return _swift_task_switch(sub_1005A75D8, 0, 0);
}

uint64_t sub_1005A75D8()
{
  v123 = v0;
  v1 = *(v0 + 408);
  result = _s10AskRequestVMa();
  *(v0 + 632) = result;
  v3 = *(v1 + *(result + 44));
  v108 = result;
  if (v3)
  {
    v114 = *(v3 + 16);
    if (v114)
    {
      v4 = 0;
      v5 = *(v0 + 616);
      v6 = (v5 + 48);
      v109 = v5;
      v111 = (v5 + 32);
      v7 = (v3 + 40);
      v8 = _swiftEmptyArrayStorage;
      while (v4 < *(v3 + 16))
      {
        v9 = v8;
        v10 = *(v0 + 608);
        v11 = *(v0 + 600);
        v13 = *(v7 - 1);
        v12 = *v7;

        URL.init(string:)();

        if ((*v6)(v11, 1, v10) == 1)
        {
          result = sub_100005508(*(v0 + 600), &unk_100974E00, &qword_1007F8940);
          v8 = v9;
        }

        else
        {
          v14 = *v111;
          (*v111)(*(v0 + 624), *(v0 + 600), *(v0 + 608));
          v8 = v9;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = sub_10028E2D4(0, v9[2] + 1, 1, v9);
          }

          v16 = v8[2];
          v15 = v8[3];
          if (v16 >= v15 >> 1)
          {
            v8 = sub_10028E2D4(v15 > 1, v16 + 1, 1, v8);
          }

          v17 = *(v0 + 624);
          v18 = *(v0 + 608);
          v8[2] = v16 + 1;
          result = v14(v8 + ((*(v109 + 80) + 32) & ~*(v109 + 80)) + *(v109 + 72) * v16, v17, v18);
        }

        ++v4;
        v7 += 2;
        if (v114 == v4)
        {
          v1 = *(v0 + 408);
          result = v108;
          goto LABEL_15;
        }
      }

      __break(1u);
      goto LABEL_60;
    }
  }

  v8 = _swiftEmptyArrayStorage;
LABEL_15:
  *(v0 + 640) = v8;
  v19 = *(v1 + *(result + 48));
  if (v19)
  {
    v20 = *(v19 + 16);
    if (v20)
    {
      v21 = 0;
      v22 = *(v0 + 576);
      v23 = (v19 + 32);
      v24 = (v22 + 48);
      v106 = v22;
      v112 = (v22 + 32);
      v115 = _swiftEmptyArrayStorage;
      v107 = v19;
      v105 = (v22 + 48);
      v110 = v8;
      while (v21 < *(v19 + 16))
      {
        v25 = *(v0 + 560);
        v26 = v23[1];
        *(v0 + 16) = *v23;
        *(v0 + 32) = v26;
        v28 = v23[3];
        v27 = v23[4];
        v29 = v23[2];
        *(v0 + 96) = *(v23 + 40);
        *(v0 + 64) = v28;
        *(v0 + 80) = v27;
        *(v0 + 48) = v29;
        v30 = v23[3];
        v119 = v23[2];
        v120 = v30;
        v121 = v23[4];
        v122 = *(v23 + 40);
        v31 = v23[1];
        v117 = *v23;
        v118 = v31;
        sub_1002A56F0(v0 + 16, v0 + 104);
        sub_1005A86E0(&v117, v25);
        v32 = *(v0 + 568);
        v33 = *(v0 + 560);
        v34 = v120;
        *(v0 + 312) = v119;
        *(v0 + 328) = v34;
        *(v0 + 344) = v121;
        *(v0 + 360) = v122;
        v35 = v118;
        *(v0 + 280) = v117;
        *(v0 + 296) = v35;
        sub_1002A574C(v0 + 280);
        if ((*v24)(v33, 1, v32) == 1)
        {
          result = sub_100005508(*(v0 + 560), &qword_1009846B8, &qword_10080BD98);
        }

        else
        {
          v36 = v20;
          v37 = *(v0 + 592);
          v38 = *(v0 + 584);
          v39 = *(v0 + 568);
          v40 = *v112;
          (*v112)(v37, *(v0 + 560), v39);
          v40(v38, v37, v39);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v115 = sub_10028EBC0(0, v115[2] + 1, 1, v115);
          }

          v42 = v115[2];
          v41 = v115[3];
          v20 = v36;
          if (v42 >= v41 >> 1)
          {
            v115 = sub_10028EBC0(v41 > 1, v42 + 1, 1, v115);
          }

          v24 = v105;
          v43 = *(v0 + 584);
          v44 = *(v0 + 568);
          v115[2] = v42 + 1;
          result = (v40)(v115 + ((*(v106 + 80) + 32) & ~*(v106 + 80)) + *(v106 + 72) * v42, v43, v44);
          v19 = v107;
        }

        ++v21;
        v23 = (v23 + 88);
        v8 = v110;
        if (v20 == v21)
        {
          goto LABEL_28;
        }
      }

LABEL_60:
      __break(1u);
      return result;
    }
  }

  v115 = _swiftEmptyArrayStorage;
LABEL_28:
  *(v0 + 648) = v115;
  if (v115[2] || !v8[2])
  {
    v45 = &enum case for SFAirDrop.TransferType.files(_:);
  }

  else
  {
    v45 = &enum case for SFAirDrop.TransferType.links(_:);
  }

  v46 = *(v0 + 528);
  v47 = *(v0 + 520);
  v48 = *(v0 + 512);
  v49 = *(v0 + 408);
  (*(v46 + 104))(*(v0 + 552), *v45, v47);
  sub_10000FF90(v49 + v108[5], v48, &qword_100977BD8, &qword_1007FAE38);
  v50 = *(v46 + 48);
  if (v50(v48, 1, v47) == 1)
  {
    v51 = *(v0 + 520);
    v52 = *(v0 + 512);
    (*(*(v0 + 528) + 16))(*(v0 + 544), *(v0 + 552), v51);
    if (v50(v52, 1, v51) != 1)
    {
      sub_100005508(*(v0 + 512), &qword_100977BD8, &qword_1007FAE38);
    }
  }

  else
  {
    (*(*(v0 + 528) + 32))(*(v0 + 544), *(v0 + 512), *(v0 + 520));
  }

  v53 = (*(v0 + 408) + v108[6]);
  v54 = v53[1];
  if (v54 >> 60 != 15)
  {
    v66 = *v53;
    v67 = *(v0 + 488);
    sub_1005AAFC4(*(v0 + 392), *(v0 + 504), type metadata accessor for SDAirDropServerConnection);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v69 = *(v0 + 504);
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v70 = *(v0 + 384);
        sub_100294008(v66, v54);
        sub_1005AB79C(v69, type metadata accessor for SDAirDropServerConnection);
        v71 = sub_10046C07C(v70);
        sub_10028BCC0(v66, v54);
      }

      else
      {
        v74 = *(v0 + 424);
        v75 = *(v0 + 432);
        v76 = *(v0 + 384);
        v77 = *v69;
        sub_100294008(v66, v54);

        v78 = *(sub_10028088C(&unk_10097A650, &qword_1007FD780) + 48);
        v71 = sub_10046C07C(v76);
        sub_10028BCC0(v66, v54);
        (*(v75 + 8))(&v69[v78], v74);
      }
    }

    else
    {
      v72 = *(v0 + 384);
      v73 = *v69;
      sub_100294008(v66, v54);
      v71 = sub_10046C644();
      sub_10028BCC0(v66, v54);
    }

    v79 = v53[1];
    if (v79 >> 60 == 15)
    {
      v64 = 0;
      v57 = 0;
      v56 = 0;
      v55 = 0;
      if ((v71 & 1) == 0)
      {
        goto LABEL_38;
      }

LABEL_50:
      v58 = *(v0 + 408);
      v59 = v108;
      v88 = (v58 + v108[9]);
      v62 = *v88;
      v89 = v88[1];

      v65 = 1;
      goto LABEL_54;
    }

    v80 = *v53;
    v81 = *(v0 + 488);
    sub_1005AAFC4(*(v0 + 392), *(v0 + 496), type metadata accessor for SDAirDropServerConnection);
    v82 = swift_getEnumCaseMultiPayload();
    v83 = *(v0 + 496);
    if (v82)
    {
      if (v82 == 1)
      {
        v84 = *(v0 + 384);
        sub_100294008(v80, v79);
        sub_1005AB79C(v83, type metadata accessor for SDAirDropServerConnection);
        v56 = sub_10046B604(v84);
        v57 = v85;
        v62 = v86;
        v64 = v87;
        sub_10028BCC0(v80, v79);
        v55 = 0;
        if (v71)
        {
          goto LABEL_50;
        }
      }

      else
      {
        v99 = *(v0 + 432);
        v116 = *(v0 + 424);
        v100 = *(v0 + 384);
        v101 = *v83;
        sub_100294008(v80, v79);

        v113 = *(sub_10028088C(&unk_10097A650, &qword_1007FD780) + 48);
        v56 = sub_10046B604(v100);
        v57 = v102;
        v62 = v103;
        v64 = v104;
        sub_10028BCC0(v80, v79);
        (*(v99 + 8))(&v83[v113], v116);
        v55 = 0;
        if (v71)
        {
          goto LABEL_50;
        }
      }
    }

    else
    {
      v90 = *(v0 + 384);
      v91 = *v83;
      sub_100294008(v80, v79);
      sub_10046BAA4(v90, &v117);
      v55 = *(&v117 + 1);
      v57 = *(&v118 + 1);
      v56 = v118;
      v64 = *(&v119 + 1);
      v62 = v119;

      sub_10028BCC0(v80, v79);
      if (v71)
      {
        goto LABEL_50;
      }
    }

    if (v64)
    {

      v65 = 0;
      v58 = *(v0 + 408);
      v59 = v108;
      goto LABEL_54;
    }

    goto LABEL_38;
  }

  v55 = 0;
  v56 = 0;
  v57 = 0;
LABEL_38:
  v58 = *(v0 + 408);
  v59 = v108;
  v60 = (v58 + v108[9]);
  v62 = *v60;
  v61 = v60[1];

  v64 = 0;
  v65 = 0;
LABEL_54:
  *(v0 + 696) = v63;
  *(v0 + 688) = v62;
  *(v0 + 98) = v65;
  *(v0 + 680) = v55;
  *(v0 + 672) = v56;
  *(v0 + 664) = v57;
  *(v0 + 656) = v64;
  sub_10039D0AC();
  v92 = static NSUserDefaults.airdrop.getter();
  *(v0 + 99) = SFAirDropUserDefaults.alwaysAutoAccept.getter() & 1;

  v93 = (v58 + v59[7]);
  v95 = *v93;
  v94 = v93[1];
  v96 = swift_task_alloc();
  *(v0 + 704) = v96;
  *v96 = v0;
  v96[1] = sub_1005A7FF4;
  v97 = *(v0 + 480);
  v98 = *(v0 + 400);

  return sub_1004924A4(v97, v95, v94, v56, v57);
}

uint64_t sub_1005A7FF4()
{
  v1 = *(*v0 + 704);
  v3 = *v0;

  return _swift_task_switch(sub_1005A80F0, 0, 0);
}

uint64_t sub_1005A80F0()
{
  v1 = *(v0 + 544);
  if ((SFAirDrop.TransferType.isOnlyExchange.getter() & 1) == 0)
  {
    v2 = *(v0 + 408) + *(*(v0 + 632) + 60);
    v3 = *(v2 + 8);
    if (v3 >> 60 != 15)
    {
      v11 = *v2;
      sub_100294008(*v2, *(v2 + 8));
      isa = Data._bridgeToObjectiveC()().super.isa;
      v13 = sub_100117BCC(isa);

      if (v13)
      {
        v14 = v13;
        sub_10028BCC0(v11, v3);
      }

      else
      {
        sub_10028BCC0(v11, v3);
      }
    }
  }

  v4 = *(v0 + 544);
  if ((SFAirDrop.TransferType.isOnlyExchange.getter() & 1) == 0)
  {
    v5 = *(v0 + 408) + *(*(v0 + 632) + 56);
    v6 = *(v5 + 8);
    if (v6 >> 60 != 15)
    {
      v7 = *v5;
      sub_100294008(*v5, *(v5 + 8));
      v8 = Data._bridgeToObjectiveC()().super.isa;
      v9 = sub_100117BCC(v8);

      if (v9)
      {
        v10 = v9;
        sub_10028BCC0(v7, v6);
      }

      else
      {
        sub_10028BCC0(v7, v6);
      }
    }
  }

  v15 = *(v0 + 680);
  v16 = *(v0 + 656);
  v17 = *(v0 + 632);
  v18 = *(v0 + 544);
  v19 = *(v0 + 536);
  v20 = *(v0 + 528);
  v21 = *(v0 + 520);
  v22 = *(v0 + 408);
  (*(*(v0 + 456) + 16))(*(v0 + 464), *(v0 + 376), *(v0 + 448));
  (*(v20 + 16))(v19, v18, v21);

  v23 = (v22 + *(v17 + 32));
  if (v23[1])
  {
    v76 = v23[1];
    v77 = *v23;
  }

  v24 = *(v0 + 632);
  v25 = *(v0 + 472);
  v26 = *(v0 + 424);
  v27 = *(v0 + 432);
  v28 = *(v0 + 408);
  v29 = (v28 + *(v24 + 36));
  v30 = v29[1];
  v74 = *v29;
  v31 = (v28 + *(v24 + 40));
  v32 = v31[1];
  v73 = *v31;
  sub_10000FF90(*(v0 + 480), v25, &unk_100976120, &qword_1007F9260);
  LODWORD(v25) = (*(v27 + 48))(v25, 1, v26);

  if (v25 == 1)
  {
    v33 = (v0 + 440);
    v34 = *(v0 + 440);
    sub_100005508(*(v0 + 472), &unk_100976120, &qword_1007F9260);
    UUID.init()();
  }

  else
  {
    v33 = (v0 + 472);
  }

  v35 = *v33;
  v36 = *(v0 + 99);
  v55 = *(v0 + 688);
  v56 = *(v0 + 696);
  v37 = *(v0 + 98);
  v60 = *(v0 + 672);
  v59 = *(v0 + 664);
  v51 = *(v0 + 648);
  v38 = *(v0 + 640);
  v39 = *(v0 + 632);
  v64 = *(v0 + 624);
  v65 = *(v0 + 600);
  v66 = *(v0 + 592);
  v67 = *(v0 + 584);
  v68 = *(v0 + 560);
  v62 = *(v0 + 544);
  v63 = *(v0 + 552);
  v57 = *(v0 + 536);
  v52 = *(v0 + 528);
  v61 = *(v0 + 520);
  v69 = *(v0 + 512);
  v70 = *(v0 + 504);
  v71 = *(v0 + 496);
  v58 = *(v0 + 480);
  v72 = *(v0 + 472);
  v54 = *(v0 + 464);
  v40 = *(v0 + 432);
  v75 = *(v0 + 440);
  v41 = *(v0 + 416);
  v42 = *(v0 + 424);
  v43 = *(v0 + 408);
  v53 = *(v0 + 368);
  UUID.uuidString.getter();
  (*(v40 + 8))(v35, v42);
  v44 = (v43 + *(v39 + 52));
  v46 = *v44;
  v45 = v44[1];
  v47 = type metadata accessor for SFAirDropReceive.AskRequest.AdvancedItemsDescription();
  (*(*(v47 - 8) + 56))(v41, 1, 1, v47);

  sub_1002929F0(v38);

  sub_100292B8C(v51);

  sub_1002A9924(*(v43 + *(v39 + 68)), *(v43 + *(v39 + 68) + 8));
  SFAirDropReceive.AskRequest.init(id:type:transferTypes:canAutoAccept:verifiableIdentity:senderIsMe:contactIdentifier:senderBundleID:senderComputerName:senderModelName:senderEmail:senderEmailHash:senderCompositeName:senderFirstName:senderLastName:senderID:senderIcon:smallPreviewImage:previewImage:itemsDescription:itemsDescriptionAdvanced:urlItems:items:customPayload:)();
  sub_100005508(v58, &unk_100976120, &qword_1007F9260);
  v48 = *(v52 + 8);
  v48(v62, v61);
  v48(v63, v61);

  v49 = *(v0 + 8);

  return v49();
}

uint64_t sub_1005A86E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a2;
  if (*(a1 + 24))
  {
    v3 = *a1;
    v4 = *(a1 + 8);
    v5 = *(a1 + 16);
    v6 = *(a1 + 40);
    v18 = *(a1 + 32);
    v7 = *(a1 + 80);
    v8 = *(a1 + 81);
    if (*(a1 + 72))
    {
      v9 = *(a1 + 64);
    }

    else
    {

      v15._countAndFlagsBits = v3;
      v15._object = v4;
      String.append(_:)(v15);
    }

    v2 = a2;
    SFAirDropReceive.AskRequest.ItemInfo.init(convertMediaFormats:fileBomPath:fileIsDirectory:fileName:fileSubType:fileType:)();
    v14 = 0;
  }

  else
  {
    if (qword_100973AD0 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10000C4AC(v10, qword_1009845B0);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Missing fileType for ASK", v13, 2u);
    }

    v14 = 1;
  }

  v16 = type metadata accessor for SFAirDropReceive.AskRequest.ItemInfo();
  return (*(*(v16 - 8) + 56))(v2, v14, 1, v16);
}

unint64_t sub_1005A88E4(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1008D7E60, v2);

  if (v3 >= 0xE)
  {
    return 14;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1005A8930(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v210 = a1;
  v211 = a3;
  v209 = 0;
  v4 = sub_10028088C(&qword_100975180, &qword_100805430);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v192 = &v186 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v202 = &v186 - v9;
  __chkstk_darwin(v8);
  v214 = &v186 - v10;
  v195 = type metadata accessor for URLResourceValues();
  v194 = *(v195 - 8);
  v11 = *(v194 + 64);
  v12 = __chkstk_darwin(v195);
  v193 = &v186 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v197 = &v186 - v14;
  v212 = type metadata accessor for URL();
  v215 = *(v212 - 8);
  v15 = v215[8];
  v16 = __chkstk_darwin(v212);
  v201 = &v186 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v196 = &v186 - v19;
  __chkstk_darwin(v18);
  v198 = &v186 - v20;
  v21 = sub_10028088C(&unk_100974E00, &qword_1007F8940);
  v22 = *(*(v21 - 8) + 64);
  v23 = __chkstk_darwin(v21 - 8);
  v206 = &v186 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v189 = &v186 - v26;
  v27 = __chkstk_darwin(v25);
  v29 = &v186 - v28;
  v30 = __chkstk_darwin(v27);
  v199 = &v186 - v31;
  v32 = __chkstk_darwin(v30);
  v190 = &v186 - v33;
  v34 = __chkstk_darwin(v32);
  v188 = &v186 - v35;
  v36 = __chkstk_darwin(v34);
  v38 = &v186 - v37;
  v39 = __chkstk_darwin(v36);
  v41 = &v186 - v40;
  v42 = __chkstk_darwin(v39);
  v205 = &v186 - v43;
  __chkstk_darwin(v42);
  v207 = &v186 - v44;
  v45 = type metadata accessor for UTType();
  v46 = *(v45 - 8);
  v47 = *(v46 + 64);
  v48 = __chkstk_darwin(v45);
  v187 = &v186 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __chkstk_darwin(v48);
  v191 = &v186 - v51;
  v52 = __chkstk_darwin(v50);
  v200 = &v186 - v53;
  __chkstk_darwin(v52);
  v55 = &v186 - v54;
  v56 = [objc_opt_self() contentType];
  static UTType._unconditionallyBridgeFromObjectiveC(_:)();

  v57 = UTType.identifier.getter();
  v59 = v58;
  v213 = v46;
  v60 = *(v46 + 8);
  v208 = v45;
  v61 = v45;
  v62 = v211;
  v204 = v46 + 8;
  v203 = v60;
  v60(v55, v61);
  v216 = a2;
  if (v57 == a2 && v59 == v62)
  {
  }

  else
  {
    v63 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v63 & 1) == 0)
    {
      v205 = 0;
      v206 = 0;
      v75 = 0;
      v71 = v212;
      v76 = v213;
      v77 = v208;
      goto LABEL_43;
    }
  }

  v64 = objc_allocWithZone(PFAssetBundle);
  URL._bridgeToObjectiveC()(v65);
  v67 = v66;
  v68 = [v64 initWithAssetBundleAtURL:v66];

  v69 = v215[7];
  v70 = v207;
  v71 = v212;
  v69(v207, 1, 1, v212);
  if (v68)
  {
    if ([v68 mediaType] == 2)
    {
      v72 = [v68 fullSizeVideoURL];
      if (v72)
      {
        v73 = v72;
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v74 = 0;
      }

      else
      {
        v74 = 1;
      }

      v81 = v215;
      v69(v38, v74, 1, v71);
      sub_10002C4E4(v38, v41, &unk_100974E00, &qword_1007F8940);
      v82 = v81[6];
      if (v82(v41, 1, v71) == 1)
      {
        v83 = [v68 videoURL];
        if (v83)
        {
          v84 = v188;
          v85 = v83;
          static URL._unconditionallyBridgeFromObjectiveC(_:)();

          v86 = 0;
        }

        else
        {
          v86 = 1;
          v84 = v188;
        }

        sub_100005508(v70, &unk_100974E00, &qword_1007F8940);
        v98 = v86;
        v99 = v212;
        v69(v84, v98, 1, v212);
        sub_10002C4E4(v84, v205, &unk_100974E00, &qword_1007F8940);
        if (v82(v41, 1, v99) != 1)
        {
          sub_100005508(v41, &unk_100974E00, &qword_1007F8940);
        }

        v71 = v212;
        v88 = v205;
      }

      else
      {
        sub_100005508(v70, &unk_100974E00, &qword_1007F8940);
        v87 = v205;
        (v81[4])(v205, v41, v71);
        v69(v87, 0, 1, v71);
        v88 = v87;
      }
    }

    else
    {
      if ([v68 mediaType] != 1)
      {
        goto LABEL_32;
      }

      v78 = [v68 fullSizePhotoURL];
      if (v78)
      {
        v79 = v78;
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v80 = 0;
      }

      else
      {
        v80 = 1;
      }

      v89 = v199;
      v90 = v189;
      v69(v29, v80, 1, v71);
      sub_10002C4E4(v29, v89, &unk_100974E00, &qword_1007F8940);
      v91 = v215;
      v92 = v215[6];
      if (v92(v89, 1, v71) == 1)
      {
        v93 = [v68 photoURL];
        if (v93)
        {
          v94 = v93;
          static URL._unconditionallyBridgeFromObjectiveC(_:)();

          v95 = 0;
        }

        else
        {
          v95 = 1;
        }

        sub_100005508(v207, &unk_100974E00, &qword_1007F8940);
        v69(v90, v95, 1, v71);
        v100 = v190;
        sub_10002C4E4(v90, v190, &unk_100974E00, &qword_1007F8940);
        v101 = v199;
        if (v92(v199, 1, v71) != 1)
        {
          sub_100005508(v101, &unk_100974E00, &qword_1007F8940);
        }

        v88 = v100;
        v70 = v207;
      }

      else
      {
        v70 = v207;
        sub_100005508(v207, &unk_100974E00, &qword_1007F8940);
        v96 = v91[4];
        v97 = v190;
        v96(v190, v89, v71);
        v69(v97, 0, 1, v71);
        v88 = v97;
      }
    }

    sub_10002C4E4(v88, v70, &unk_100974E00, &qword_1007F8940);
  }

LABEL_32:
  v199 = v68;
  v102 = v206;
  sub_10000FF90(v70, v206, &unk_100974E00, &qword_1007F8940);
  v103 = v215;
  v104 = (v215[6])(v102, 1, v71);
  v77 = v208;
  v76 = v213;
  if (v104 == 1)
  {
    sub_100005508(v70, &unk_100974E00, &qword_1007F8940);

    sub_100005508(v102, &unk_100974E00, &qword_1007F8940);
    v205 = 0;
    v206 = 0;
    v75 = 1;
  }

  else
  {
    v105 = v198;
    (v103[4])(v198, v102, v71);
    sub_10028088C(&qword_100976C30, &qword_1007F8818);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1007F5670;
    *(inited + 32) = NSURLTypeIdentifierKey;
    v107 = NSURLTypeIdentifierKey;
    sub_1002F13BC(inited);
    swift_setDeallocating();
    sub_1005AB79C(inited + 32, type metadata accessor for URLResourceKey);
    v108 = v197;
    v109 = v209;
    URL.resourceValues(forKeys:)();
    if (v109)
    {

      if (qword_100973AD0 != -1)
      {
        swift_once();
      }

      v110 = type metadata accessor for Logger();
      sub_10000C4AC(v110, qword_1009845B0);
      v111 = v103[2];
      v112 = v103;
      v113 = v196;
      v111(v196, v105, v71);
      swift_errorRetain();
      v114 = Logger.logObject.getter();
      v115 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v114, v115))
      {
        v116 = swift_slowAlloc();
        v209 = v109;
        v117 = v116;
        v118 = swift_slowAlloc();
        v119 = swift_slowAlloc();
        v217 = v119;
        *v117 = 136315394;
        sub_1005AB7FC(&qword_100975160, &type metadata accessor for URL);
        v120 = v115;
        v121 = dispatch thunk of CustomStringConvertible.description.getter();
        v123 = v122;
        v124 = v215[1];
        v124(v113, v212);
        v125 = sub_10000C4E4(v121, v123, &v217);

        *(v117 + 4) = v125;
        *(v117 + 12) = 2112;
        swift_errorRetain();
        v126 = _swift_stdlib_bridgeErrorToNSError();
        *(v117 + 14) = v126;
        *v118 = v126;
        _os_log_impl(&_mh_execute_header, v114, v120, "Subtype for asset bundle couldn't be determined for URL: %s. Error: %@", v117, 0x16u);
        sub_100005508(v118, &qword_100975400, &qword_1007F65D0);

        sub_10000C60C(v119);

        v77 = v208;

        v124(v198, v212);
        v71 = v212;
        v76 = v213;
        v127 = v207;
      }

      else
      {

        v129 = v112[1];
        v129(v113, v71);
        v129(v105, v71);
        v127 = v70;
      }

      sub_100005508(v127, &unk_100974E00, &qword_1007F8940);
      v205 = 0;
      v206 = 0;
      v209 = 0;
    }

    else
    {
      v209 = 0;

      v205 = URLResourceValues.typeIdentifier.getter();
      v206 = v128;
      (*(v194 + 8))(v108, v195);

      (v103[1])(v105, v71);
      sub_100005508(v70, &unk_100974E00, &qword_1007F8940);
    }

    v75 = 1;
    v62 = v211;
  }

LABEL_43:
  v130 = v62;
  v131 = String._bridgeToObjectiveC()();
  v132 = 1;
  v133 = [objc_opt_self() _typeWithIdentifier:v131 allowUndeclared:1];

  v134 = *(v76 + 56);
  if (v133)
  {
    v135 = v202;
    v134(v202, 1, 1, v77);
    sub_1005AB7FC(&qword_100975188, &type metadata accessor for UTType);
    dispatch thunk of static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:)();

    v136 = v135;
    v76 = v213;
    if ((*(v213 + 48))(v136, 1, v77) != 1)
    {
      (*(v76 + 32))(v214, v136, v77);
      v132 = 0;
    }
  }

  v137 = v214;
  v134(v214, v132, 1, v77);
  if (v75)
  {
    v138 = v137;
LABEL_70:
    sub_100005508(v138, &qword_100975180, &qword_100805430);
    return v205;
  }

  v139 = v200;
  static UTType.livePhoto.getter();
  v140 = UTType.identifier.getter();
  v142 = v141;
  v203(v139, v77);
  if (v140 == v216 && v142 == v130)
  {

    v143 = v201;
  }

  else
  {
    v144 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v143 = v201;
    if ((v144 & 1) == 0)
    {
      v169 = v214;
      v170 = v192;
      sub_10000FF90(v214, v192, &qword_100975180, &qword_100805430);
      if ((*(v76 + 48))(v170, 1, v77) == 1)
      {
        sub_100005508(v169, &qword_100975180, &qword_100805430);
        v138 = v170;
        goto LABEL_70;
      }

      v171 = v191;
      static UTType.livePhoto.getter();
      v172 = UTType.conforms(to:)();
      v173 = v171;
      v174 = v203;
      v203(v173, v77);
      v174(v170, v77);
      if ((v172 & 1) == 0)
      {
LABEL_69:
        v138 = v214;
        goto LABEL_70;
      }
    }
  }

  v145 = objc_allocWithZone(PFVideoComplement);
  URL._bridgeToObjectiveC()(v146);
  v148 = v147;
  v149 = [v145 initWithBundleAtURL:v147];

  if (!v149)
  {
    goto LABEL_69;
  }

  v150 = [v149 imagePath];
  if (!v150)
  {
    sub_100005508(v214, &qword_100975180, &qword_100805430);

    return v205;
  }

  v151 = v150;
  v152 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v154 = v153;

  URL.init(fileURLWithPath:)();
  sub_10028088C(&qword_100976C30, &qword_1007F8818);
  v155 = swift_initStackObject();
  *(v155 + 16) = xmmword_1007F5670;
  *(v155 + 32) = NSURLTypeIdentifierKey;
  v156 = NSURLTypeIdentifierKey;
  sub_1002F13BC(v155);
  swift_setDeallocating();
  sub_1005AB79C(v155 + 32, type metadata accessor for URLResourceKey);
  v157 = v193;
  v158 = v209;
  URL.resourceValues(forKeys:)();
  if (v158)
  {

    (v215[1])(v143, v71);
    if (qword_100973AD0 != -1)
    {
      swift_once();
    }

    v159 = type metadata accessor for Logger();
    sub_10000C4AC(v159, qword_1009845B0);

    swift_errorRetain();
    v160 = Logger.logObject.getter();
    v161 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v160, v161))
    {
      v162 = swift_slowAlloc();
      v163 = swift_slowAlloc();
      v164 = swift_slowAlloc();
      v165 = v152;
      v166 = v164;
      v217 = v164;
      *v162 = 136315394;
      v167 = sub_10000C4E4(v165, v154, &v217);

      *(v162 + 4) = v167;
      *(v162 + 12) = 2112;
      swift_errorRetain();
      v168 = _swift_stdlib_bridgeErrorToNSError();
      *(v162 + 14) = v168;
      *v163 = v168;
      _os_log_impl(&_mh_execute_header, v160, v161, "Subtype for live photo couldn't be determined for URL: %s. Error: %@", v162, 0x16u);
      sub_100005508(v163, &qword_100975400, &qword_1007F65D0);

      sub_10000C60C(v166);
    }

    else
    {
    }

    goto LABEL_69;
  }

  v175 = URLResourceValues.typeIdentifier.getter();
  v177 = v176;
  (*(v194 + 8))(v157, v195);
  (v215[1])(v143, v71);

  v178 = v187;
  static UTType.jpeg.getter();
  v179 = UTType.identifier.getter();
  v181 = v180;
  v203(v178, v77);
  if (!v177)
  {

    goto LABEL_75;
  }

  if (v175 != v179 || v177 != v181)
  {
    v183 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v183)
    {
      goto LABEL_74;
    }

LABEL_75:
    v184 = v191;
    static UTType.heic.getter();
    goto LABEL_76;
  }

LABEL_74:
  v184 = v191;
  static UTType.jpeg.getter();
LABEL_76:
  v185 = UTType.identifier.getter();

  v203(v184, v77);
  sub_100005508(v214, &qword_100975180, &qword_100805430);
  return v185;
}

uint64_t sub_1005AA000@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t *a4@<X8>)
{
  v77 = a3;
  v86 = a2;
  v78 = a4;
  v6 = type metadata accessor for URLResourceValues();
  v7 = *(v6 - 8);
  v84 = v6;
  v85 = v7;
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v72 - v12;
  v81 = sub_10028088C(&qword_100975180, &qword_100805430);
  v14 = *(*(v81 - 1) + 64);
  __chkstk_darwin(v81);
  v83 = v72 - v15;
  v16 = type metadata accessor for UTType();
  v80 = *(v16 - 8);
  v17 = *(v80 + 64);
  __chkstk_darwin(v16);
  v82 = v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10028088C(&qword_100976C30, &qword_1007F8818);
  inited = swift_initStackObject();
  v79 = xmmword_1007F5670;
  *(inited + 16) = xmmword_1007F5670;
  *(inited + 32) = NSURLContentTypeKey;
  v21 = NSURLContentTypeKey;
  sub_1002F13BC(inited);
  swift_setDeallocating();
  sub_1005AB79C(inited + 32, type metadata accessor for URLResourceKey);
  v87 = a1;
  URL.resourceValues(forKeys:)();
  if (v4)
  {

    v22 = type metadata accessor for URL();
    v23 = *(*(v22 - 8) + 8);
    v23(v86, v22);
    return (v23)(v87, v22);
  }

  else
  {
    v76 = v16;
    v72[1] = v19;
    v73 = v11;

    v25 = v83;
    URLResourceValues.contentType.getter();
    v27 = v85 + 8;
    v26 = *(v85 + 8);
    v26(v13, v84);
    v89 = 0;
    v90 = 0xE000000000000000;
    _StringGuts.grow(_:)(34);

    v89 = 0xD00000000000001FLL;
    v90 = 0x8000000100796C60;
    v28 = type metadata accessor for URL();
    v74 = sub_1005AB7FC(&qword_100975160, &type metadata accessor for URL);
    v29._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v29);

    v30._countAndFlagsBits = 125;
    v30._object = 0xE100000000000000;
    String.append(_:)(v30);
    v75 = "Failed to get fileUTType {url: ";
    v31 = v82;
    Optional.tryUnwrap(_:file:line:)();
    v81 = v26;
    v85 = v27;
    sub_100005508(v25, &qword_100975180, &qword_100805430);

    v32 = UTType.identifier.getter();
    v34 = v33;
    (*(v80 + 8))(v31, v76);
    v35 = v32;
    v82 = sub_1005A8930(v87, v32, v34);
    v83 = v36;
    URL._bridgeToObjectiveC()(v37);
    v39 = v38;
    URL._bridgeToObjectiveC()(v40);
    v42 = v41;
    v43 = sub_1001F09CC(v39, v41);

    v88 = v43;
    v89 = 0;
    v90 = 0xE000000000000000;
    _StringGuts.grow(_:)(61);
    v44._countAndFlagsBits = 0xD000000000000025;
    v44._object = 0x8000000100796CE0;
    String.append(_:)(v44);
    v45._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v45);

    v46._countAndFlagsBits = 0xD000000000000013;
    v46._object = 0x8000000100796D10;
    String.append(_:)(v46);
    v47._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v47);

    v48._countAndFlagsBits = 125;
    v48._object = 0xE100000000000000;
    String.append(_:)(v48);
    sub_10028088C(&qword_100984748, &qword_10080BDE8);
    Optional.tryUnwrap(_:file:line:)();
    v75 = v35;
    v80 = v34;
    v76 = v28;

    v49 = v91;
    v50 = String.init(cString:)();
    v52 = v51;
    free(v49);
    v53 = URL.lastPathComponent.getter();
    v55 = v54;
    v56 = swift_initStackObject();
    *(v56 + 16) = v79;
    *(v56 + 32) = NSURLFileSizeKey;
    v57 = NSURLFileSizeKey;
    sub_1002F13BC(v56);
    swift_setDeallocating();
    sub_1005AB79C(v56 + 32, type metadata accessor for URLResourceKey);
    v58 = v73;
    URL.resourceValues(forKeys:)();
    *&v79 = v50;

    v59 = URLResourceValues.fileSize.getter();
    v61 = v60;
    v81(v58, v84);
    v62 = URL.isDirectory()();
    if (v63)
    {

      v64 = v76;
      v65 = *(*(v76 - 8) + 8);
      v65(v86, v76);
      return (v65)(v87, v64);
    }

    else
    {
      v66 = v62;
      if (v61)
      {
        v67 = 0;
      }

      else
      {
        v67 = v59;
      }

      v68 = v76;
      v69 = *(*(v76 - 8) + 8);
      v69(v86, v76);
      result = (v69)(v87, v68);
      v70 = v77 & 1;
      v71 = v78;
      *v78 = v53;
      v71[1] = v55;
      v71[2] = v75;
      v71[3] = v80;
      v71[4] = v82;
      v71[5] = v83;
      v71[6] = v67;
      *(v71 + 56) = 0;
      *(v71 + 57) = v89;
      *(v71 + 15) = *(&v89 + 3);
      v71[8] = v79;
      v71[9] = v52;
      *(v71 + 80) = v66;
      *(v71 + 81) = v70;
    }
  }

  return result;
}

unint64_t sub_1005AA8FC(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1008D7FD0, v2);

  if (v3 >= 7)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1005AA948@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10028088C(&qword_1009846C0, &qword_10080BDA0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v28 - v8;
  v10 = a1[4];
  sub_10002CDC0(a1, a1[3]);
  sub_1005AAEC8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000C60C(a1);
  }

  LOBYTE(v45[0]) = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v37 = v12;
  LOBYTE(v45[0]) = 1;
  *&v36 = KeyedDecodingContainer.decode(_:forKey:)();
  *(&v36 + 1) = v13;
  LOBYTE(v45[0]) = 2;
  v14 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  LOBYTE(v45[0]) = 3;
  v15 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v35 = v16;
  v31 = v15;
  LOBYTE(v45[0]) = 4;
  v34 = 0;
  v30 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v33 = v17;
  LOBYTE(v45[0]) = 5;
  v29 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v32 = v18;
  v58 = 6;
  sub_1002F309C();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  v34 = v55;
  v28 = v56;
  *&v38 = v11;
  v19 = v37;
  *(&v38 + 1) = v37;
  v20 = v36;
  v39 = v36;
  v21 = *(&v36 + 1);
  v57 = v14;
  LOBYTE(v40) = v14;
  *(&v40 + 1) = v31;
  *&v41 = v35;
  v22 = v33;
  *(&v41 + 1) = v30;
  *&v42 = v33;
  v23 = v32;
  *(&v42 + 1) = v29;
  *&v43 = v32;
  *(&v43 + 1) = v55;
  v44 = v56;
  sub_1003C34C8(&v38, v45);
  sub_10000C60C(a1);
  v45[0] = v11;
  v45[1] = v19;
  v45[2] = v20;
  v45[3] = v21;
  v46 = v57;
  v47 = v31;
  v48 = v35;
  v49 = v30;
  v50 = v22;
  v51 = v29;
  v52 = v23;
  v53 = v34;
  v54 = v28;
  result = sub_10030D74C(v45);
  v25 = v43;
  *(a2 + 64) = v42;
  *(a2 + 80) = v25;
  *(a2 + 96) = v44;
  v26 = v39;
  *a2 = v38;
  *(a2 + 16) = v26;
  v27 = v41;
  *(a2 + 32) = v40;
  *(a2 + 48) = v27;
  return result;
}

unint64_t sub_1005AAEC8()
{
  result = qword_1009846C8;
  if (!qword_1009846C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009846C8);
  }

  return result;
}

unint64_t sub_1005AAF1C()
{
  result = qword_1009846E0;
  if (!qword_1009846E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009846E0);
  }

  return result;
}

unint64_t sub_1005AAF70()
{
  result = qword_100984700;
  if (!qword_100984700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100984700);
  }

  return result;
}

uint64_t sub_1005AAFC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1005AB02C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_100280938(&unk_100976C20, &unk_1007F9D80);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1005AB098(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100280938(&unk_100984648, &qword_10080BC00);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1005AB110()
{
  result = qword_100984728;
  if (!qword_100984728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100984728);
  }

  return result;
}

unint64_t sub_1005AB164(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1008D8098, v2);

  if (v3 >= 7)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1005AB1B0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10028088C(&qword_100984730, &qword_10080BDC0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v25 - v8;
  v10 = a1[4];
  sub_10002CDC0(a1, a1[3]);
  sub_1005AB640();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000C60C(a1);
  }

  LOBYTE(v39[0]) = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v32 = v12;
  LOBYTE(v39[0]) = 1;
  *&v31 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(&v31 + 1) = v13;
  LOBYTE(v39[0]) = 2;
  v30 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v15 = v14;
  LOBYTE(v39[0]) = 3;
  v28 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v49 = v16 & 1;
  LOBYTE(v39[0]) = 4;
  v27 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v29 = v17;
  LOBYTE(v39[0]) = 5;
  v26 = KeyedDecodingContainer.decode(_:forKey:)();
  v50 = 6;
  v18 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v26 &= 1u;
  (*(v6 + 8))(v9, v5);
  *&v33 = v11;
  *(&v33 + 1) = v32;
  v34 = v31;
  *&v35 = v30;
  *(&v35 + 1) = v15;
  *&v36 = v28;
  v19 = v49;
  BYTE8(v36) = v49;
  v20 = v27;
  v21 = v29;
  *&v37 = v27;
  *(&v37 + 1) = v29;
  LOBYTE(v38) = v26;
  HIBYTE(v38) = v18;
  sub_1002A56F0(&v33, v39);
  sub_10000C60C(a1);
  v39[0] = v11;
  v39[1] = v32;
  v40 = v31;
  v41 = v30;
  v42 = v15;
  v43 = v28;
  v44 = v19;
  v45 = v20;
  v46 = v21;
  v47 = v26;
  v48 = v18;
  result = sub_1002A574C(v39);
  v23 = v36;
  *(a2 + 32) = v35;
  *(a2 + 48) = v23;
  *(a2 + 64) = v37;
  *(a2 + 80) = v38;
  v24 = v34;
  *a2 = v33;
  *(a2 + 16) = v24;
  return result;
}

unint64_t sub_1005AB640()
{
  result = qword_100984738;
  if (!qword_100984738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100984738);
  }

  return result;
}

uint64_t sub_1005AB694(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_100005C04;

  return sub_1005A4B40(a1, a2, v6, v7, v8);
}

double sub_1005AB778@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3[3];
  v5 = v3[5];
  return sub_1005A50B4(a1, v3[2], v3[4], a2, a3);
}

uint64_t sub_1005AB79C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1005AB7FC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1005AB878()
{
  result = qword_100984750;
  if (!qword_100984750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100984750);
  }

  return result;
}

unint64_t sub_1005AB8D0()
{
  result = qword_100984758;
  if (!qword_100984758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100984758);
  }

  return result;
}

unint64_t sub_1005AB928()
{
  result = qword_100984760;
  if (!qword_100984760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100984760);
  }

  return result;
}

unint64_t sub_1005AB980()
{
  result = qword_100984768;
  if (!qword_100984768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100984768);
  }

  return result;
}

unint64_t sub_1005AB9D8()
{
  result = qword_100984770;
  if (!qword_100984770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100984770);
  }

  return result;
}

unint64_t sub_1005ABA30()
{
  result = qword_100984778;
  if (!qword_100984778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100984778);
  }

  return result;
}

unint64_t sub_1005ABA88()
{
  result = qword_100984780;
  if (!qword_100984780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100984780);
  }

  return result;
}

unint64_t sub_1005ABAE0()
{
  result = qword_100984788;
  if (!qword_100984788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100984788);
  }

  return result;
}

unint64_t sub_1005ABB38()
{
  result = qword_100984790;
  if (!qword_100984790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100984790);
  }

  return result;
}

unint64_t sub_1005ABBAC()
{
  result = qword_100984798;
  if (!qword_100984798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100984798);
  }

  return result;
}

void sub_1005ABC38()
{
  sub_1005ABE6C(319, &qword_100980590, &type metadata accessor for NWConnection);
  if (v0 <= 0x3F)
  {
    sub_1005ABCC8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1005ABCC8()
{
  if (!qword_100984840)
  {
    type metadata accessor for NWConnection();
    type metadata accessor for UUID();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_100984840);
    }
  }
}

void sub_1005ABD5C()
{
  sub_1005ABE6C(319, &qword_1009848F0, sub_1005ABE08);
  if (v0 <= 0x3F)
  {
    sub_1005ABE6C(319, &unk_100984900, &type metadata accessor for SFAirDrop.TransferIdentifier);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

unint64_t sub_1005ABE08()
{
  result = qword_1009848F8;
  if (!qword_1009848F8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1009848F8);
  }

  return result;
}

void sub_1005ABE6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1005ABEB8(uint64_t a1, uint64_t a2)
{
  v3[20] = a2;
  v3[21] = v2;
  v3[19] = a1;
  v4 = type metadata accessor for UUID();
  v3[22] = v4;
  v5 = *(v4 - 8);
  v3[23] = v5;
  v6 = *(v5 + 64) + 15;
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v7 = *(*(sub_10028088C(&unk_100977BE0, &unk_1007FAE40) - 8) + 64) + 15;
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v8 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v3[28] = v8;
  v9 = *(v8 - 8);
  v3[29] = v9;
  v10 = *(v9 + 64) + 15;
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v11 = *(*(type metadata accessor for SDAirDropMessage() - 8) + 64) + 15;
  v3[32] = swift_task_alloc();
  v12 = type metadata accessor for SDAirDropServerConnection(0);
  v3[33] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();

  return _swift_task_switch(sub_1005AC0B4, 0, 0);
}

uint64_t sub_1005AC0B4()
{
  if (qword_100973AD8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[38] = sub_10000C4AC(v1, qword_1009847A0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Ready to receive AirDrop Message", v4, 2u);
  }

  v5 = v0[37];
  v6 = v0[33];
  v7 = v0[21];

  sub_1005AE94C(v7, v5, type metadata accessor for SDAirDropServerConnection);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v9 = *v5;
  v0[39] = v9;
  if (EnumCaseMultiPayload >= 2)
  {
    v10 = v0[37];
    v11 = v0[22];
    v12 = v0[23];
    v13 = sub_10028088C(&unk_10097A650, &qword_1007FD780);
    (*(v12 + 8))(v10 + *(v13 + 48), v11);
  }

  v14 = swift_task_alloc();
  v0[40] = v14;
  *(v14 + 16) = v9;
  *(v14 + 24) = 0;
  v15 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v16 = swift_task_alloc();
  v0[41] = v16;
  *v16 = v0;
  v16[1] = sub_1005AC2E0;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0xD000000000000027, 0x8000000100796E60, sub_1005AFFB4, v14, &type metadata for SDNWHTTPMessage);
}

uint64_t sub_1005AC2E0()
{
  v2 = *v1;
  v3 = *(*v1 + 328);
  v7 = *v1;
  *(*v1 + 336) = v0;

  if (v0)
  {
    v4 = sub_1005ACE70;
  }

  else
  {
    v5 = *(v2 + 320);

    v4 = sub_1005AC3FC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1005AC3FC()
{
  v1 = *(v0 + 312);

  v2 = *(v0 + 32);
  *(v0 + 136) = v2;
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  *(v0 + 344) = v3;
  *(v0 + 352) = v2;
  v6 = *(v0 + 40);
  v5 = *(v0 + 48);
  *(v0 + 360) = v6;
  *(v0 + 368) = v5;
  v7 = *(v0 + 56);
  *(v0 + 144) = v6;
  v8 = v4 == 0x64616F6C70552FLL && v3 == 0xE700000000000000;
  if (!v8 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    v26 = *(v0 + 288);
    v27 = *(v0 + 264);
    sub_1005AE94C(*(v0 + 168), v26, type metadata accessor for SDAirDropServerConnection);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v29 = *v26;
    *(v0 + 376) = v29;
    if (EnumCaseMultiPayload > 1)
    {
      v87 = v6;
      v88 = *(v0 + 288);
      v89 = *(v0 + 176);
      v90 = *(v0 + 184);
      v91 = *(sub_10028088C(&unk_10097A650, &qword_1007FD780) + 48);
      sub_100294008(v2, v87);
      (*(v90 + 8))(v88 + v91, v89);
    }

    else
    {
      sub_100294008(v2, v6);
    }

    v92 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
    v93 = swift_task_alloc();
    *(v0 + 384) = v93;
    *v93 = v0;
    v93[1] = sub_1005ACF70;
    v22 = &type metadata for SDNWHTTPMessage;
    v20 = sub_1005AFFBC;
    v15 = v0 + 64;
    v19 = 0x8000000100796E90;
    v16 = 0;
    v17 = 0;
    v18 = 0xD000000000000014;
    v21 = v29;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v15, v16, v17, v18, v19, v20, v21, v22);
  }

  v129 = v5;
  v131 = v3;
  v128 = v6;
  sub_100294008(v2, v6);
  v9 = *(v0 + 336);
  v10 = *(v0 + 304);
  v12 = *(v0 + 136);
  v11 = *(v0 + 144);
  sub_100294008(v12, v11);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  if (!os_log_type_enabled(v13, v14))
  {
    sub_100026AC0(v12, v11);
    goto LABEL_21;
  }

  v127 = v2;
  v15 = swift_slowAlloc();
  v23 = v15;
  *v15 = 134217984;
  v24 = v11 >> 62;
  if ((v11 >> 62) > 1)
  {
    if (v24 != 2)
    {
      v25 = 0;
      goto LABEL_20;
    }

    v31 = *(v12 + 16);
    v30 = *(v12 + 24);
    v32 = __OFSUB__(v30, v31);
    v25 = v30 - v31;
    if (!v32)
    {
      goto LABEL_20;
    }

    __break(1u);
    goto LABEL_17;
  }

  if (v24)
  {
LABEL_17:
    LODWORD(v25) = HIDWORD(v12) - v12;
    if (!__OFSUB__(HIDWORD(v12), v12))
    {
      v25 = v25;
      goto LABEL_20;
    }

    __break(1u);
    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v15, v16, v17, v18, v19, v20, v21, v22);
  }

  v25 = BYTE6(v11);
LABEL_20:
  *(v15 + 4) = v25;
  sub_100026AC0(v12, v11);
  _os_log_impl(&_mh_execute_header, v13, v14, "Received HTTP message data %ld", v23, 0xCu);

  v2 = v127;
LABEL_21:
  v33 = *(v0 + 256);

  swift_beginAccess();
  sub_1006767B8(v4, v131, v129, v7, *(v0 + 136), *(v0 + 144), v33);
  if (!v9)
  {
    v45 = *(v0 + 264);
    sub_1005AE94C(*(v0 + 168), *(v0 + 280), type metadata accessor for SDAirDropServerConnection);
    v46 = swift_getEnumCaseMultiPayload();
    v47 = *(v0 + 280);
    if (v46)
    {
      if (v46 == 1)
      {
        v48 = *(v0 + 256);
        v49 = *(v0 + 224);
        v50 = *(v0 + 232);
        v51 = *(v0 + 208);
        sub_1005AFF54(v47, type metadata accessor for SDAirDropServerConnection);
        sub_100566750(v51);
        if ((*(v50 + 48))(v51, 1, v49) == 1)
        {
          v52 = *(v0 + 304);
          sub_10047997C(*(v0 + 208));
          v53 = Logger.logObject.getter();
          v54 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v53, v54))
          {
            v55 = swift_slowAlloc();
            *v55 = 0;
            _os_log_impl(&_mh_execute_header, v53, v54, "Missing request transferID", v55, 2u);
LABEL_46:

            goto LABEL_48;
          }

          goto LABEL_48;
        }

        v94 = *(v0 + 256);
        v96 = *(v0 + 232);
        v95 = *(v0 + 240);
        v97 = *(v0 + 224);
        v98 = *(v0 + 208);
        v99 = v2;
        v101 = *(v0 + 152);
        v100 = *(v0 + 160);
        sub_100026AC0(*(v0 + 136), *(v0 + 144));

        sub_100026AC0(v99, v128);
        swift_unknownObjectRelease();
        v102 = *(v96 + 32);
        v102(v95, v98, v97);
        sub_1005B000C(v94, v101);
        v102(v100, v95, v97);
        type metadata accessor for SDAirDropServerConnectionIdentity(0);
      }

      else
      {
        v76 = *(v0 + 256);
        v78 = *(v0 + 192);
        v77 = *(v0 + 200);
        v79 = *(v0 + 176);
        v80 = *(v0 + 184);
        v81 = v2;
        v83 = *(v0 + 152);
        v82 = *(v0 + 160);
        v84 = *v47;
        v85 = *(v0 + 280);

        v86 = sub_10028088C(&unk_10097A650, &qword_1007FD780);
        (*(v80 + 32))(v77, v85 + *(v86 + 48), v79);
        sub_1005AE94C(v76, v83, type metadata accessor for SDAirDropMessage);
        (*(v80 + 16))(v78, v77, v79);
        SFAirDrop.TransferIdentifier.init(_:)();
        (*(v80 + 8))(v77, v79);
        sub_1005AFF54(v76, type metadata accessor for SDAirDropMessage);
        sub_100026AC0(*(v0 + 136), *(v0 + 144));

        sub_100026AC0(v81, v128);
        swift_unknownObjectRelease();
        type metadata accessor for SDAirDropServerConnectionIdentity(0);
      }
    }

    else
    {
      v56 = *(v0 + 264);
      v57 = *(v0 + 272);
      v58 = *(v0 + 168);
      sub_1005AFF54(v47, type metadata accessor for SDAirDropServerConnection);
      sub_1005AE94C(v58, v57, type metadata accessor for SDAirDropServerConnection);
      v59 = swift_getEnumCaseMultiPayload();
      v60 = *v57;
      if (v59 >= 2)
      {
        v61 = *(v0 + 272);
        v62 = *(v0 + 176);
        v63 = *(v0 + 184);
        v64 = sub_10028088C(&unk_10097A650, &qword_1007FD780);
        (*(v63 + 8))(v61 + *(v64 + 48), v62);
      }

      v65 = NWConnection.nw.getter();

      v66 = nw_protocol_copy_http_connection_definition();
      v67 = nw_connection_copy_protocol_metadata(v65, v66);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      if (!v67)
      {
        v114 = *(v0 + 304);
        v53 = Logger.logObject.getter();
        v115 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v53, v115))
        {
          v116 = swift_slowAlloc();
          *v116 = 0;
          _os_log_impl(&_mh_execute_header, v53, v115, "Missing connection definition", v116, 2u);
          goto LABEL_46;
        }

LABEL_48:
        v124 = *(v0 + 256);

        v125 = type metadata accessor for SFAirDropReceive.Failure();
        sub_1005AFFC4(&unk_10097A660, &type metadata accessor for SFAirDropReceive.Failure);
        swift_allocError();
        (*(*(v125 - 8) + 104))(v126, enum case for SFAirDropReceive.Failure.badRequest(_:), v125);
        swift_willThrow();
        sub_1005AFF54(v124, type metadata accessor for SDAirDropMessage);
        goto LABEL_22;
      }

      v68 = *(v0 + 256);
      v69 = *(v0 + 224);
      v70 = *(v0 + 232);
      v71 = *(v0 + 216);
      sub_100566750(v71);
      sub_100026AC0(*(v0 + 136), *(v0 + 144));

      sub_100026AC0(v2, v128);
      swift_unknownObjectRelease();
      v72 = (*(v70 + 48))(v71, 1, v69);
      v73 = *(v0 + 256);
      if (v72 == 1)
      {
        v75 = *(v0 + 152);
        v74 = *(v0 + 160);
        sub_10047997C(*(v0 + 216));
        sub_1005B000C(v73, v75);
        *v74 = v67;
      }

      else
      {
        v117 = *(v0 + 248);
        v118 = *(v0 + 224);
        v119 = *(v0 + 232);
        v120 = *(v0 + 216);
        v122 = *(v0 + 152);
        v121 = *(v0 + 160);
        swift_unknownObjectRelease();
        v123 = *(v119 + 32);
        v123(v117, v120, v118);
        sub_1005B000C(v73, v122);
        v123(v121, v117, v118);
      }

      type metadata accessor for SDAirDropServerConnectionIdentity(0);
    }

    swift_storeEnumTagMultiPayload();
    v104 = *(v0 + 288);
    v103 = *(v0 + 296);
    v106 = *(v0 + 272);
    v105 = *(v0 + 280);
    v108 = *(v0 + 248);
    v107 = *(v0 + 256);
    v109 = *(v0 + 240);
    v111 = *(v0 + 208);
    v110 = *(v0 + 216);
    v112 = *(v0 + 200);
    v132 = *(v0 + 192);

    v44 = *(v0 + 8);
    goto LABEL_41;
  }

LABEL_22:
  sub_100026AC0(*(v0 + 136), *(v0 + 144));

  sub_100026AC0(v2, v128);
  swift_unknownObjectRelease();
  v35 = *(v0 + 288);
  v34 = *(v0 + 296);
  v37 = *(v0 + 272);
  v36 = *(v0 + 280);
  v39 = *(v0 + 248);
  v38 = *(v0 + 256);
  v40 = *(v0 + 240);
  v42 = *(v0 + 208);
  v41 = *(v0 + 216);
  v43 = *(v0 + 200);
  v130 = *(v0 + 192);

  v44 = *(v0 + 8);
LABEL_41:

  return v44();
}

uint64_t sub_1005ACE70()
{
  v2 = v0[39];
  v1 = v0[40];

  v4 = v0[36];
  v3 = v0[37];
  v6 = v0[34];
  v5 = v0[35];
  v8 = v0[31];
  v7 = v0[32];
  v9 = v0[30];
  v11 = v0[26];
  v10 = v0[27];
  v12 = v0[25];
  v15 = v0[24];
  v16 = v0[42];

  v13 = v0[1];

  return v13();
}

uint64_t sub_1005ACF70()
{
  v2 = *(*v1 + 384);
  v5 = *v1;
  *(*v1 + 392) = v0;

  if (v0)
  {
    v3 = sub_1005AD95C;
  }

  else
  {
    v3 = sub_1005AD084;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1005AD084()
{
  v2 = *(v0 + 368);
  v1 = *(v0 + 376);
  v4 = *(v0 + 352);
  v3 = *(v0 + 360);
  v5 = *(v0 + 344);

  v6 = *(v0 + 72);
  v110 = *(v0 + 64);
  v8 = *(v0 + 80);
  v7 = *(v0 + 88);
  v9 = *(v0 + 96);
  v10 = *(v0 + 104);

  sub_100026AC0(v4, v3);
  swift_unknownObjectRelease();
  v112 = v8;
  Data.append(_:)();
  v11 = *(v0 + 392);
  v12 = *(v0 + 304);
  v14 = *(v0 + 136);
  v13 = *(v0 + 144);
  sub_100294008(v14, v13);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  if (!os_log_type_enabled(v15, v16))
  {
    sub_100026AC0(v14, v13);
    v21 = v7;
    v22 = v9;
    goto LABEL_14;
  }

  v109 = v7;
  result = swift_slowAlloc();
  v18 = result;
  *result = 134217984;
  v19 = v13 >> 62;
  if ((v13 >> 62) > 1)
  {
    if (v19 != 2)
    {
      v20 = 0;
      goto LABEL_13;
    }

    v24 = *(v14 + 16);
    v23 = *(v14 + 24);
    v25 = __OFSUB__(v23, v24);
    v20 = v23 - v24;
    if (!v25)
    {
      goto LABEL_13;
    }

    __break(1u);
LABEL_10:
    LODWORD(v20) = HIDWORD(v14) - v14;
    if (__OFSUB__(HIDWORD(v14), v14))
    {
      __break(1u);
      return result;
    }

    v20 = v20;
    goto LABEL_13;
  }

  if (v19)
  {
    goto LABEL_10;
  }

  v20 = BYTE6(v13);
LABEL_13:
  *(result + 4) = v20;
  sub_100026AC0(v14, v13);
  _os_log_impl(&_mh_execute_header, v15, v16, "Received HTTP message data %ld", v18, 0xCu);

  v21 = v109;
  v22 = v9;
LABEL_14:
  v26 = *(v0 + 256);

  swift_beginAccess();
  sub_1006767B8(v110, v6, v22, v10, *(v0 + 136), *(v0 + 144), v26);
  if (!v11)
  {
    v38 = *(v0 + 264);
    sub_1005AE94C(*(v0 + 168), *(v0 + 280), type metadata accessor for SDAirDropServerConnection);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v40 = *(v0 + 280);
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v41 = *(v0 + 256);
        v42 = *(v0 + 224);
        v43 = *(v0 + 232);
        v44 = *(v0 + 208);
        sub_1005AFF54(v40, type metadata accessor for SDAirDropServerConnection);
        sub_100566750(v44);
        if ((*(v43 + 48))(v44, 1, v42) == 1)
        {
          v45 = *(v0 + 304);
          sub_10047997C(*(v0 + 208));
          v46 = Logger.logObject.getter();
          v47 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v46, v47))
          {
            v48 = swift_slowAlloc();
            *v48 = 0;
            v49 = "Missing request transferID";
LABEL_35:
            _os_log_impl(&_mh_execute_header, v46, v47, v49, v48, 2u);

            goto LABEL_36;
          }

          goto LABEL_36;
        }

        v111 = *(v0 + 256);
        v82 = *(v0 + 232);
        v81 = *(v0 + 240);
        v83 = *(v0 + 224);
        v84 = *(v0 + 208);
        v86 = *(v0 + 152);
        v85 = *(v0 + 160);
        sub_100026AC0(*(v0 + 136), *(v0 + 144));

        sub_100026AC0(v112, v21);
        swift_unknownObjectRelease();
        v87 = *(v82 + 32);
        v87(v81, v84, v83);
        sub_1005B000C(v111, v86);
        v87(v85, v81, v83);
        type metadata accessor for SDAirDropServerConnectionIdentity(0);
      }

      else
      {
        v70 = *(v0 + 256);
        v72 = *(v0 + 192);
        v71 = *(v0 + 200);
        v73 = *(v0 + 176);
        v74 = *(v0 + 184);
        v76 = *(v0 + 152);
        v75 = *(v0 + 160);
        v77 = *v40;
        v78 = v21;
        v79 = *(v0 + 280);

        v80 = sub_10028088C(&unk_10097A650, &qword_1007FD780);
        (*(v74 + 32))(v71, v79 + *(v80 + 48), v73);
        sub_1005AE94C(v70, v76, type metadata accessor for SDAirDropMessage);
        (*(v74 + 16))(v72, v71, v73);
        SFAirDrop.TransferIdentifier.init(_:)();
        (*(v74 + 8))(v71, v73);
        sub_1005AFF54(v70, type metadata accessor for SDAirDropMessage);
        sub_100026AC0(*(v0 + 136), *(v0 + 144));

        sub_100026AC0(v112, v78);
        swift_unknownObjectRelease();
        type metadata accessor for SDAirDropServerConnectionIdentity(0);
      }
    }

    else
    {
      v50 = *(v0 + 264);
      v51 = *(v0 + 272);
      v52 = *(v0 + 168);
      sub_1005AFF54(v40, type metadata accessor for SDAirDropServerConnection);
      sub_1005AE94C(v52, v51, type metadata accessor for SDAirDropServerConnection);
      v53 = swift_getEnumCaseMultiPayload();
      v54 = *v51;
      if (v53 >= 2)
      {
        v55 = *(v0 + 272);
        v56 = *(v0 + 176);
        v57 = *(v0 + 184);
        v58 = sub_10028088C(&unk_10097A650, &qword_1007FD780);
        (*(v57 + 8))(v55 + *(v58 + 48), v56);
      }

      v59 = NWConnection.nw.getter();

      v60 = nw_protocol_copy_http_connection_definition();
      v61 = nw_connection_copy_protocol_metadata(v59, v60);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      if (!v61)
      {
        v98 = *(v0 + 304);
        v46 = Logger.logObject.getter();
        v47 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          *v48 = 0;
          v49 = "Missing connection definition";
          goto LABEL_35;
        }

LABEL_36:
        v99 = *(v0 + 256);

        v100 = type metadata accessor for SFAirDropReceive.Failure();
        sub_1005AFFC4(&unk_10097A660, &type metadata accessor for SFAirDropReceive.Failure);
        swift_allocError();
        (*(*(v100 - 8) + 104))(v101, enum case for SFAirDropReceive.Failure.badRequest(_:), v100);
        swift_willThrow();
        sub_1005AFF54(v99, type metadata accessor for SDAirDropMessage);
        goto LABEL_15;
      }

      v62 = *(v0 + 256);
      v63 = *(v0 + 224);
      v64 = *(v0 + 232);
      v65 = *(v0 + 216);
      sub_100566750(v65);
      sub_100026AC0(*(v0 + 136), *(v0 + 144));

      sub_100026AC0(v112, v21);
      swift_unknownObjectRelease();
      v66 = (*(v64 + 48))(v65, 1, v63);
      v67 = *(v0 + 256);
      if (v66 == 1)
      {
        v69 = *(v0 + 152);
        v68 = *(v0 + 160);
        sub_10047997C(*(v0 + 216));
        sub_1005B000C(v67, v69);
        *v68 = v61;
      }

      else
      {
        v102 = *(v0 + 248);
        v103 = *(v0 + 224);
        v104 = *(v0 + 232);
        v105 = *(v0 + 216);
        v107 = *(v0 + 152);
        v106 = *(v0 + 160);
        swift_unknownObjectRelease();
        v108 = *(v104 + 32);
        v108(v102, v105, v103);
        sub_1005B000C(v67, v107);
        v108(v106, v102, v103);
      }

      type metadata accessor for SDAirDropServerConnectionIdentity(0);
    }

    swift_storeEnumTagMultiPayload();
    v89 = *(v0 + 288);
    v88 = *(v0 + 296);
    v91 = *(v0 + 272);
    v90 = *(v0 + 280);
    v93 = *(v0 + 248);
    v92 = *(v0 + 256);
    v94 = *(v0 + 240);
    v96 = *(v0 + 208);
    v95 = *(v0 + 216);
    v97 = *(v0 + 200);
    v114 = *(v0 + 192);

    v37 = *(v0 + 8);
    goto LABEL_30;
  }

LABEL_15:
  sub_100026AC0(*(v0 + 136), *(v0 + 144));

  sub_100026AC0(v112, v21);
  swift_unknownObjectRelease();
  v28 = *(v0 + 288);
  v27 = *(v0 + 296);
  v30 = *(v0 + 272);
  v29 = *(v0 + 280);
  v32 = *(v0 + 248);
  v31 = *(v0 + 256);
  v33 = *(v0 + 240);
  v35 = *(v0 + 208);
  v34 = *(v0 + 216);
  v36 = *(v0 + 200);
  v113 = *(v0 + 192);

  v37 = *(v0 + 8);
LABEL_30:

  return v37();
}

uint64_t sub_1005AD95C()
{
  v2 = v0[46];
  v1 = v0[47];
  v4 = v0[44];
  v3 = v0[45];
  v5 = v0[43];

  sub_100026AC0(v0[17], v0[18]);

  sub_100026AC0(v4, v3);
  swift_unknownObjectRelease();
  v7 = v0[36];
  v6 = v0[37];
  v9 = v0[34];
  v8 = v0[35];
  v11 = v0[31];
  v10 = v0[32];
  v12 = v0[30];
  v14 = v0[26];
  v13 = v0[27];
  v15 = v0[25];
  v18 = v0[24];
  v19 = v0[49];

  v16 = v0[1];

  return v16();
}

unint64_t sub_1005ADA80()
{
  v1 = v0;
  v2 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SDAirDropServerConnectionIdentity(0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = (v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1005AE94C(v1, v10, type metadata accessor for SDAirDropServerConnectionIdentity);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v3 + 32))(v6, v10, v2);
      v21 = 0;
      v22 = 0xE000000000000000;
      _StringGuts.grow(_:)(24);

      v12 = 0x8000000100796D70;
      v13 = 0xD000000000000015;
    }

    else
    {
      (*(v3 + 32))(v6, v10, v2);
      v21 = 0;
      v22 = 0xE000000000000000;
      _StringGuts.grow(_:)(21);

      v12 = 0x8000000100796D50;
      v13 = 0xD000000000000012;
    }

    v21 = v13;
    v22 = v12;
    sub_1005AFFC4(&qword_100977BF0, &type metadata accessor for SFAirDrop.TransferIdentifier);
    v17._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v17);

    v18._countAndFlagsBits = 41;
    v18._object = 0xE100000000000000;
    String.append(_:)(v18);
    v16 = v21;
    (*(v3 + 8))(v6, v2);
  }

  else
  {
    v14 = *v10;
    v21 = 0;
    v22 = 0xE000000000000000;
    _StringGuts.grow(_:)(39);
    v15._countAndFlagsBits = 0xD000000000000025;
    v15._object = 0x8000000100796D90;
    String.append(_:)(v15);
    v20[1] = v14;
    sub_10028088C(&qword_100984938, &qword_10080C2F8);
    _print_unlocked<A, B>(_:_:)();
    swift_unknownObjectRelease();
    return v21;
  }

  return v16;
}

uint64_t sub_1005ADD74(int a1)
{
  v2 = v1;
  v39 = a1;
  v3 = type metadata accessor for SDAirDropServerConnection(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3);
  v7 = v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = v38 - v9;
  v11 = __chkstk_darwin(v8);
  v13 = v38 - v12;
  __chkstk_darwin(v11);
  v15 = v38 - v14;
  if (qword_100973AD8 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_10000C4AC(v16, qword_1009847A0);
  sub_1005AE94C(v1, v15, type metadata accessor for SDAirDropServerConnection);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v38[0] = v1;
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v40 = v20;
    *v19 = 136315394;
    sub_1005AE94C(v15, v13, type metadata accessor for SDAirDropServerConnection);
    v38[1] = v3;
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v22 = *v13;
    if (EnumCaseMultiPayload >= 2)
    {
      v23 = *(sub_10028088C(&unk_10097A650, &qword_1007FD780) + 48);
      v24 = type metadata accessor for UUID();
      (*(*(v24 - 8) + 8))(&v13[v23], v24);
    }

    v25 = NWConnection.debugDescription.getter();
    v27 = v26;

    sub_1005AFF54(v15, type metadata accessor for SDAirDropServerConnection);
    v28 = sub_10000C4E4(v25, v27, &v40);

    *(v19 + 4) = v28;
    *(v19 + 12) = 1024;
    LOBYTE(v28) = v39;
    *(v19 + 14) = v39 & 1;
    _os_log_impl(&_mh_execute_header, v17, v18, "Cancelling connection %s forced %{BOOL}d", v19, 0x12u);
    sub_10000C60C(v20);

    v2 = v38[0];
    if ((v28 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else
  {

    sub_1005AFF54(v15, type metadata accessor for SDAirDropServerConnection);
    if ((v39 & 1) == 0)
    {
LABEL_7:
      sub_1005AE94C(v2, v7, type metadata accessor for SDAirDropServerConnection);
      v29 = swift_getEnumCaseMultiPayload();
      v30 = *v7;
      if (v29 >= 2)
      {
        v31 = *(sub_10028088C(&unk_10097A650, &qword_1007FD780) + 48);
        v32 = type metadata accessor for UUID();
        (*(*(v32 - 8) + 8))(&v7[v31], v32);
      }

      NWConnection.cancel()();
    }
  }

  sub_1005AE94C(v2, v10, type metadata accessor for SDAirDropServerConnection);
  v33 = swift_getEnumCaseMultiPayload();
  v34 = *v10;
  if (v33 >= 2)
  {
    v35 = *(sub_10028088C(&unk_10097A650, &qword_1007FD780) + 48);
    v36 = type metadata accessor for UUID();
    (*(*(v36 - 8) + 8))(&v10[v35], v36);
  }

  NWConnection.forceCancel()();
}

uint64_t sub_1005AE1BC()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_1009847A0);
  v1 = sub_10000C4AC(v0, qword_1009847A0);
  if (qword_1009736D0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A08B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1005AE288(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for SDAirDropServerConnection(0);
  v2[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[5] = swift_task_alloc();
  v5 = *(*(type metadata accessor for SDAirDropMessage() - 8) + 64) + 15;
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_1005AE348, 0, 0);
}

uint64_t sub_1005AE348()
{
  v31 = v0;
  if (qword_100973AD8 != -1)
  {
    swift_once();
  }

  v1 = v0[6];
  v2 = v0[2];
  v3 = type metadata accessor for Logger();
  sub_10000C4AC(v3, qword_1009847A0);
  sub_1005AE94C(v2, v1, type metadata accessor for SDAirDropMessage);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[6];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v30 = v9;
    *v8 = 136315138;
    v10 = sub_100562218();
    v12 = v11;
    sub_1005AFF54(v7, type metadata accessor for SDAirDropMessage);
    v13 = sub_10000C4E4(v10, v12, &v30);

    *(v8 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "Sending response message %s", v8, 0xCu);
    sub_10000C60C(v9);
  }

  else
  {

    sub_1005AFF54(v7, type metadata accessor for SDAirDropMessage);
  }

  v14 = v0[5];
  sub_1005AE94C(v0[3], v14, type metadata accessor for SDAirDropServerConnection);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v16 = *v14;
  v0[7] = *v14;
  if (EnumCaseMultiPayload >= 2)
  {
    v17 = v0[5];
    v18 = *(sub_10028088C(&unk_10097A650, &qword_1007FD780) + 48);
    v19 = type metadata accessor for UUID();
    (*(*(v19 - 8) + 8))(v17 + v18, v19);
  }

  v20 = v0[2];
  v21 = sub_100674350();
  v0[8] = v21;
  v22 = sub_1006749CC();
  v0[9] = v22;
  v0[10] = v23;
  v24 = v22;
  v25 = v23;
  v26 = swift_task_alloc();
  v0[11] = v26;
  *(v26 + 16) = v16;
  *(v26 + 24) = v24;
  *(v26 + 32) = v25;
  *(v26 + 40) = v21;
  *(v26 + 48) = 1;
  v27 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v28 = swift_task_alloc();
  v0[12] = v28;
  *v28 = v0;
  v28[1] = sub_1005AE6F4;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)();
}

uint64_t sub_1005AE6F4()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v7 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = sub_1005AE8B0;
  }

  else
  {
    v5 = *(v2 + 88);

    v4 = sub_1005AE810;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1005AE810()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[7];
  v4 = v0[8];
  v6 = v0[5];
  v5 = v0[6];

  sub_100026AC0(v1, v2);
  swift_unknownObjectRelease();

  v7 = v0[1];

  return v7();
}

uint64_t sub_1005AE8B0()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[7];
  sub_100026AC0(v0[9], v0[10]);
  swift_unknownObjectRelease();

  v4 = v0[13];
  v6 = v0[5];
  v5 = v0[6];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1005AE94C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1005AE9B4()
{
  v1[2] = v0;
  v2 = type metadata accessor for SDAirDropServerConnection(0);
  v1[3] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[4] = swift_task_alloc();

  return _swift_task_switch(sub_1005AEA48, 0, 0);
}

uint64_t sub_1005AEA48()
{
  if (qword_100973AD8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C4AC(v1, qword_1009847A0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Sending unauthorized error response", v4, 2u);
  }

  v6 = v0[3];
  v5 = v0[4];
  v7 = v0[2];

  v0[5] = nw_http_response_create_well_known();
  metadata_for_response = nw_http_create_metadata_for_response();
  v0[6] = metadata_for_response;
  v9 = nw_content_context_create("unauthorized response");
  v0[7] = v9;
  nw_content_context_set_metadata_for_protocol(v9, metadata_for_response);
  sub_1005AE94C(v7, v5, type metadata accessor for SDAirDropServerConnection);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v11 = *v5;
  v0[8] = *v5;
  if (EnumCaseMultiPayload >= 2)
  {
    v12 = v0[4];
    v13 = *(sub_10028088C(&unk_10097A650, &qword_1007FD780) + 48);
    v14 = type metadata accessor for UUID();
    (*(*(v14 - 8) + 8))(v12 + v13, v14);
  }

  v15 = swift_task_alloc();
  v0[9] = v15;
  *(v15 + 16) = v11;
  *(v15 + 24) = xmmword_1007F8A80;
  *(v15 + 40) = v9;
  *(v15 + 48) = 1;
  v16 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v17 = swift_task_alloc();
  v0[10] = v17;
  *v17 = v0;
  v17[1] = sub_1005AECD8;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v17, 0, 0, 0xD000000000000029, 0x800000010078B5E0, sub_1003CDFDC, v15, &type metadata for () + 8);
}

uint64_t sub_1005AECD8()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v7 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = sub_1005B0074;
  }

  else
  {
    v5 = *(v2 + 72);

    v4 = sub_1005B007C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1005AEDF4()
{
  v1[2] = v0;
  v2 = type metadata accessor for SDAirDropServerConnection(0);
  v1[3] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[4] = swift_task_alloc();

  return _swift_task_switch(sub_1005AEE88, 0, 0);
}

uint64_t sub_1005AEE88()
{
  if (qword_100973AD8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C4AC(v1, qword_1009847A0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Sending unsupported error response", v4, 2u);
  }

  v6 = v0[3];
  v5 = v0[4];
  v7 = v0[2];

  v0[5] = nw_http_response_create_well_known();
  metadata_for_response = nw_http_create_metadata_for_response();
  v0[6] = metadata_for_response;
  v9 = nw_content_context_create("unsupported response");
  v0[7] = v9;
  nw_content_context_set_metadata_for_protocol(v9, metadata_for_response);
  sub_1005AE94C(v7, v5, type metadata accessor for SDAirDropServerConnection);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v11 = *v5;
  v0[8] = *v5;
  if (EnumCaseMultiPayload >= 2)
  {
    v12 = v0[4];
    v13 = *(sub_10028088C(&unk_10097A650, &qword_1007FD780) + 48);
    v14 = type metadata accessor for UUID();
    (*(*(v14 - 8) + 8))(v12 + v13, v14);
  }

  v15 = swift_task_alloc();
  v0[9] = v15;
  *(v15 + 16) = v11;
  *(v15 + 24) = xmmword_1007F8A80;
  *(v15 + 40) = v9;
  *(v15 + 48) = 1;
  v16 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v17 = swift_task_alloc();
  v0[10] = v17;
  *v17 = v0;
  v17[1] = sub_1005AECD8;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v17, 0, 0, 0xD000000000000029, 0x800000010078B5E0, sub_1003CDFDC, v15, &type metadata for () + 8);
}

uint64_t sub_1005AF118()
{
  v1[2] = v0;
  v2 = type metadata accessor for SDAirDropServerConnection(0);
  v1[3] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[4] = swift_task_alloc();

  return _swift_task_switch(sub_1005AF1AC, 0, 0);
}

uint64_t sub_1005AF1AC()
{
  if (qword_100973AD8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C4AC(v1, qword_1009847A0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Sending insufficient storage error response", v4, 2u);
  }

  v6 = v0[3];
  v5 = v0[4];
  v7 = v0[2];

  v0[5] = nw_http_response_create();
  metadata_for_response = nw_http_create_metadata_for_response();
  v0[6] = metadata_for_response;
  v9 = nw_content_context_create("insufficient storage response");
  v0[7] = v9;
  nw_content_context_set_metadata_for_protocol(v9, metadata_for_response);
  sub_1005AE94C(v7, v5, type metadata accessor for SDAirDropServerConnection);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v11 = *v5;
  v0[8] = *v5;
  if (EnumCaseMultiPayload >= 2)
  {
    v12 = v0[4];
    v13 = *(sub_10028088C(&unk_10097A650, &qword_1007FD780) + 48);
    v14 = type metadata accessor for UUID();
    (*(*(v14 - 8) + 8))(v12 + v13, v14);
  }

  v15 = swift_task_alloc();
  v0[9] = v15;
  *(v15 + 16) = v11;
  *(v15 + 24) = xmmword_1007F8A80;
  *(v15 + 40) = v9;
  *(v15 + 48) = 1;
  v16 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v17 = swift_task_alloc();
  v0[10] = v17;
  *v17 = v0;
  v17[1] = sub_1005AECD8;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v17, 0, 0, 0xD000000000000029, 0x800000010078B5E0, sub_1003CDFDC, v15, &type metadata for () + 8);
}

uint64_t sub_1005AF444()
{
  v1[2] = v0;
  v2 = type metadata accessor for SDAirDropServerConnection(0);
  v1[3] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[4] = swift_task_alloc();

  return _swift_task_switch(sub_1005AF4D8, 0, 0);
}

uint64_t sub_1005AF4D8()
{
  if (qword_100973AD8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C4AC(v1, qword_1009847A0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Sending server error response", v4, 2u);
  }

  v6 = v0[3];
  v5 = v0[4];
  v7 = v0[2];

  v0[5] = nw_http_response_create_well_known();
  metadata_for_response = nw_http_create_metadata_for_response();
  v0[6] = metadata_for_response;
  v9 = nw_content_context_create("server error response");
  v0[7] = v9;
  nw_content_context_set_metadata_for_protocol(v9, metadata_for_response);
  sub_1005AE94C(v7, v5, type metadata accessor for SDAirDropServerConnection);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v11 = *v5;
  v0[8] = *v5;
  if (EnumCaseMultiPayload >= 2)
  {
    v12 = v0[4];
    v13 = *(sub_10028088C(&unk_10097A650, &qword_1007FD780) + 48);
    v14 = type metadata accessor for UUID();
    (*(*(v14 - 8) + 8))(v12 + v13, v14);
  }

  v15 = swift_task_alloc();
  v0[9] = v15;
  *(v15 + 16) = v11;
  *(v15 + 24) = xmmword_1007F8A80;
  *(v15 + 40) = v9;
  *(v15 + 48) = 1;
  v16 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v17 = swift_task_alloc();
  v0[10] = v17;
  *v17 = v0;
  v17[1] = sub_1005AF768;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v17, 0, 0, 0xD000000000000029, 0x800000010078B5E0, sub_1003CDFDC, v15, &type metadata for () + 8);
}

uint64_t sub_1005AF768()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v7 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = sub_1005AF92C;
  }

  else
  {
    v5 = *(v2 + 72);

    v4 = sub_1005AF884;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1005AF884()
{
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  v5 = v0[4];
  v6 = v0[2];

  sub_1005ADD74(0);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v7 = v0[1];

  return v7();
}

uint64_t sub_1005AF92C()
{
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  v6 = v0[4];
  v5 = v0[5];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v7 = v0[1];
  v8 = v0[11];

  return v7();
}

uint64_t sub_1005AF9D0()
{
  v1[8] = v0;
  v2 = type metadata accessor for SDAirDropServerConnection(0);
  v1[9] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();

  return _swift_task_switch(sub_1005AFA70, 0, 0);
}

uint64_t sub_1005AFA70()
{
  v1 = v0[11];
  v2 = v0[9];
  sub_1005AE94C(v0[8], v1, type metadata accessor for SDAirDropServerConnection);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v4 = *v1;
  v0[12] = *v1;
  if (EnumCaseMultiPayload >= 2)
  {
    v5 = v0[11];
    v6 = *(sub_10028088C(&unk_10097A650, &qword_1007FD780) + 48);
    v7 = type metadata accessor for UUID();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  v8 = v0[9];
  sub_1005AE94C(v0[8], v0[10], type metadata accessor for SDAirDropServerConnection);
  v9 = swift_getEnumCaseMultiPayload();
  v10 = v0[10];
  if (v9)
  {
    if (v9 == 1)
    {
      sub_1005AFF54(v10, type metadata accessor for SDAirDropServerConnection);
    }

    else
    {
      v12 = *v10;
      v13 = v0[10];

      v14 = *(sub_10028088C(&unk_10097A650, &qword_1007FD780) + 48);
      v15 = type metadata accessor for UUID();
      (*(*(v15 - 8) + 8))(v13 + v14, v15);
    }

    v11 = 3145728;
  }

  else
  {
    sub_1005AFF54(v10, type metadata accessor for SDAirDropServerConnection);
    v11 = 0x20000;
  }

  v16 = swift_task_alloc();
  v0[13] = v16;
  *(v16 + 16) = v4;
  *(v16 + 24) = v11;
  v17 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v18 = swift_task_alloc();
  v0[14] = v18;
  *v18 = v0;
  v18[1] = sub_1005AFCDC;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0xD000000000000027, 0x8000000100796E60, sub_1005B0080, v16, &type metadata for SDNWHTTPMessage);
}

uint64_t sub_1005AFCDC()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v7 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = sub_1005AFEC8;
  }

  else
  {
    v5 = *(v2 + 104);

    v4 = sub_1005AFDF8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1005AFDF8()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 80);

  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 56);
  sub_100294008(v4, v5);

  sub_100026AC0(v4, v5);
  swift_unknownObjectRelease();

  v7 = *(v0 + 8);

  return v7(v4, v5, v6);
}

uint64_t sub_1005AFEC8()
{
  v2 = v0[12];
  v1 = v0[13];
  v4 = v0[10];
  v3 = v0[11];

  v5 = v0[1];
  v6 = v0[15];

  return v5();
}

uint64_t sub_1005AFF54(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1005AFFC4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1005B000C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SDAirDropMessage();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005B0084()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_100984940);
  v1 = sub_10000C4AC(v0, qword_100984940);
  if (qword_100973758 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A0A50);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1005B014C()
{
  _s22VisionUnlockiOSManagerCMa();
  v0 = swift_allocObject();
  result = sub_1005B01B0();
  qword_1009A0C98 = v0;
  return result;
}

uint64_t sub_1005B01B0()
{
  v1 = v0;
  v14 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v2 = *(v14 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v14);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OS_dispatch_queue.Attributes();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  swift_defaultActor_initialize();
  v10 = sub_1000276B4(0, &qword_10097A620, OS_dispatch_queue_ptr);
  v13[0] = "g.triggerUpsellFlow";
  v13[1] = v10;
  static DispatchQoS.unspecified.getter();
  v15 = _swiftEmptyArrayStorage;
  sub_1005BCE80(&qword_100973C60, 255, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10028088C(&unk_10097A630, &unk_1007F5680);
  sub_10044EDD8(&qword_100973C70, &unk_10097A630, &unk_1007F5680);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v2 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v14);
  *(v0 + 112) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v0 + 120) = 4;
  *(v0 + 128) = sub_1005B0188;
  *(v0 + 136) = 0;
  _s28VisionUnlockiOSUpsellManagerCMa();
  v11 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v11 + 112) = &_swiftEmptySetSingleton;
  *(v11 + 120) = 0;
  *(v11 + 128) = xmmword_10080C350;
  *(v11 + 144) = xmmword_10080C360;
  *(v11 + 160) = 0x8000000100797350;
  *(v11 + 168) = 0xD00000000000003CLL;
  *(v11 + 176) = 0x8000000100797390;
  *(v1 + 144) = v11;
  return v1;
}

uint64_t sub_1005B04B0()
{
  v1 = *(v0 + 136);

  v2 = *(v0 + 144);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1005B051C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v6 = *(*(sub_10028088C(&qword_100976160, &qword_1007F8770) - 8) + 64) + 15;
  v4[3] = swift_task_alloc();
  v7 = type metadata accessor for SFPlatform();
  v4[4] = v7;
  v8 = *(v7 - 8);
  v4[5] = v8;
  v9 = *(v8 + 64) + 15;
  v4[6] = swift_task_alloc();

  return _swift_task_switch(sub_1005B0618, a4, 0);
}

uint64_t sub_1005B0618()
{
  v1 = *(*(v0 + 16) + 144);
  *(v0 + 56) = v1;
  return _swift_task_switch(sub_1005B063C, v1, 0);
}

uint64_t sub_1005B063C()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  static SFPlatform.iOS.getter();
  v4 = static SFPlatform.isPlatform(_:)();
  (*(v2 + 8))(v1, v3);
  if (v4)
  {
    v5 = v0[7];
    v6 = v0[3];
    sub_1005B8E50();
    v7 = type metadata accessor for TaskPriority();
    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
    v9 = sub_1005BCE80(&qword_100984C00, v8, _s28VisionUnlockiOSUpsellManagerCMa);
    v10 = swift_allocObject();
    v10[2] = v5;
    v10[3] = v9;
    v10[4] = v5;
    swift_retain_n();
    sub_1002B3098(0, 0, v6, &unk_10080C580, v10);
  }

  v11 = v0[6];
  v12 = v0[3];

  v13 = v0[1];

  return v13();
}

void sub_1005B07C4()
{
  v1 = v0;
  out_token = 0;
  sub_1000276B4(0, &qword_10097A620, OS_dispatch_queue_ptr);
  v2 = static OS_dispatch_queue.main.getter();
  v14 = sub_1005BCB28;
  v15 = v0;
  v10 = _NSConcreteStackBlock;
  v11 = 1107296256;
  v12 = sub_1006935D4;
  v13 = &unk_1008E89B8;
  v3 = _Block_copy(&v10);

  notify_register_dispatch("com.apple.sharingd.postiPhoneUnlockedByVisionNotification", &out_token, v2, v3);
  _Block_release(v3);

  v4 = static OS_dispatch_queue.main.getter();
  v14 = sub_1005B0BE0;
  v15 = 0;
  v10 = _NSConcreteStackBlock;
  v11 = 1107296256;
  v12 = sub_1006935D4;
  v13 = &unk_1008E89E0;
  v5 = _Block_copy(&v10);
  notify_register_dispatch("com.apple.sharingd.visionunlockios.postupsell", &out_token, v4, v5);
  _Block_release(v5);

  v6 = static OS_dispatch_queue.main.getter();
  v14 = sub_1005B1064;
  v15 = 0;
  v10 = _NSConcreteStackBlock;
  v11 = 1107296256;
  v12 = sub_1006935D4;
  v13 = &unk_1008E8A08;
  v7 = _Block_copy(&v10);
  notify_register_dispatch("com.apple.sharingd.visionunlockios.clearupsell", &out_token, v6, v7);
  _Block_release(v7);

  v8 = static OS_dispatch_queue.main.getter();
  v14 = sub_1005BCB74;
  v15 = v1;
  v10 = _NSConcreteStackBlock;
  v11 = 1107296256;
  v12 = sub_1006935D4;
  v13 = &unk_1008E8A30;
  v9 = _Block_copy(&v10);

  notify_register_dispatch("com.apple.sharing.triggerUpsellFlow", &out_token, v8, v9);
  _Block_release(v9);
}

uint64_t sub_1005B0AAC()
{
  if (qword_100973AE0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C4AC(v1, qword_100984940);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "postiPhoneUnlockedByVisionNotification by command line", v4, 2u);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1005B0C1C()
{
  if (qword_100973AE0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C4AC(v1, qword_100984940);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "com.apple.sharingd.visionunlockios.postupsell by command line", v4, 2u);
  }

  v5 = objc_opt_self();
  *(v0 + 16) = v5;
  v6 = [v5 standardUserDefaults];
  v7 = String._bridgeToObjectiveC()();
  *(v0 + 40) = [v6 BOOLForKey:v7];

  v8 = [v5 standardUserDefaults];
  v9 = String._bridgeToObjectiveC()();
  [v8 setBool:1 forKey:v9];

  if (qword_100973AE8 != -1)
  {
    swift_once();
  }

  *(v0 + 24) = *(qword_1009A0C98 + 144);

  v10 = swift_task_alloc();
  *(v0 + 32) = v10;
  *v10 = v0;
  v10[1] = sub_1005B0E8C;

  return sub_1005B6250(0x69766544656B6146, 0xEA00000000006563);
}

uint64_t sub_1005B0E8C()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v4 = *v0;

  return _swift_task_switch(sub_1005B0FA4, 0, 0);
}

uint64_t sub_1005B0FA4()
{
  v1 = *(v0 + 40);
  v2 = [*(v0 + 16) standardUserDefaults];
  v3 = String._bridgeToObjectiveC()();
  [v2 setBool:v1 forKey:v3];

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1005B1084(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v11 - v6;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  sub_1002B3098(0, 0, v7, a3, v9);
}

uint64_t sub_1005B118C()
{
  if (qword_100973AE0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C4AC(v1, qword_100984940);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "com.apple.sharingd.visionunlockios.clearupsell by command line", v4, 2u);
  }

  if (qword_100973AE8 != -1)
  {
    swift_once();
  }

  v5 = *(qword_1009A0C98 + 144);
  *(v0 + 16) = v5;

  return _swift_task_switch(sub_1005B12F4, v5, 0);
}

uint64_t sub_1005B12F4()
{
  v1 = *(v0 + 16);
  sub_1005B8E50();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1005B135C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void, void, char *, uint64_t, void *))
{
  v8 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v17 - v10;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v14 = sub_1005BCE80(&qword_100984BD0, v13, _s22VisionUnlockiOSManagerCMa);
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = v14;
  v15[4] = a2;
  swift_retain_n();
  a5(0, 0, v11, a4, v15);
}

uint64_t sub_1005B14C8()
{
  if (qword_100973AE0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C4AC(v1, qword_100984940);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "handleUpsellNotificationTapped by command line", v4, 2u);
  }

  v5 = *(v0 + 16);

  v6 = *(v5 + 144);
  *(v0 + 24) = v6;

  return _swift_task_switch(sub_1005B15EC, v6, 0);
}

uint64_t sub_1005B15EC()
{
  v1 = *(v0 + 24);
  sub_1005B8F1C();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1005B164C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[37] = a8;
  v8[38] = v17;
  v8[35] = a6;
  v8[36] = a7;
  v8[33] = a4;
  v8[34] = a5;
  v10 = sub_10028088C(&qword_100975E70, &unk_1007F90A0);
  v8[39] = v10;
  v11 = *(v10 - 8);
  v8[40] = v11;
  v12 = *(v11 + 64) + 15;
  v8[41] = swift_task_alloc();
  v13 = _s7RequestVMa();
  v8[42] = v13;
  v14 = *(v13 - 8);
  v8[43] = v14;
  v8[44] = *(v14 + 64);
  v8[45] = swift_task_alloc();
  v8[46] = swift_task_alloc();

  return _swift_task_switch(sub_1005B179C, a4, 0);
}

uint64_t sub_1005B179C()
{
  *(v0 + 104) = 0;
  *(v0 + 88) = 0u;
  *(v0 + 72) = 0u;
  v1 = swift_task_alloc();
  *(v0 + 376) = v1;
  *v1 = v0;
  v1[1] = sub_1005B1844;
  v3 = *(v0 + 264);
  v2 = *(v0 + 272);

  return sub_1005B2C0C(v0 + 112, v2);
}

uint64_t sub_1005B1844()
{
  v2 = *v1;
  v3 = *(*v1 + 376);
  v4 = *v1;
  *(*v1 + 384) = v0;

  v5 = *(v2 + 264);
  if (v0)
  {
    v6 = sub_1005B2374;
  }

  else
  {
    v6 = sub_1005B1970;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1005B1970()
{
  v1 = *(v0 + 384);
  v2 = *(v0 + 272);
  v3 = *(v0 + 280);
  sub_100005508(v0 + 72, &qword_100982080, &unk_1007FDD30);
  sub_1002A9938(v0 + 112, v0 + 72);
  sub_1005BAC70(v2, v3, v0 + 16);
  if (!v1)
  {
    v11 = *(v0 + 360);
    v10 = *(v0 + 368);
    v12 = *(v0 + 344);
    v13 = *(v0 + 352);
    v14 = *(v0 + 336);
    v60 = *(v0 + 328);
    v15 = *(v0 + 296);
    v16 = *(v0 + 304);
    v17 = *(v0 + 288);
    v18 = type metadata accessor for UUID();
    (*(*(v18 - 8) + 16))(v10, v17, v18);
    sub_1002A9938(v0 + 112, v10 + v14[5]);
    v19 = v10 + v14[6];
    v20 = *(v0 + 64);
    v22 = *(v0 + 32);
    v21 = *(v0 + 48);
    *v19 = *(v0 + 16);
    *(v19 + 16) = v22;
    *(v19 + 32) = v21;
    *(v19 + 48) = v20;
    *(v10 + v14[7]) = v15;
    swift_unknownObjectRetain();
    UUID.uuidString.getter();
    *(v0 + 65) = 0;
    sub_1005C0854(v10, v11, _s7RequestVMa);
    v23 = (*(v12 + 80) + 24) & ~*(v12 + 80);
    v24 = swift_allocObject();
    *(v24 + 16) = v16;
    sub_1005C08BC(v11, v24 + v23, _s7RequestVMa);
    v25 = v16;
    withProgressTask<A, B>(_:initialProgress:operation:)();

    v26 = async function pointer to SFProgressTask.finalValue.getter[1];
    v27 = swift_task_alloc();
    *(v0 + 392) = v27;
    *v27 = v0;
    v27[1] = sub_1005B1FC4;
    v28 = *(v0 + 328);
    v29 = *(v0 + 312);
    v30 = v0 + 66;

    return SFProgressTask.finalValue.getter(v30, v29);
  }

  sub_10000C60C((v0 + 112));
  *(v0 + 408) = v1;
  if (qword_100973C50 != -1)
  {
    swift_once();
  }

  v4 = qword_1009A10A8;
  *(v0 + 416) = qword_1009A10A8;
  if (!v4)
  {
    goto LABEL_28;
  }

  v5 = v4;
  v6 = _convertErrorToNSError(_:)();
  *(v0 + 424) = v6;
  *(v0 + 248) = v1;
  swift_errorRetain();
  sub_10028088C(&unk_10097A930, &unk_1007F9050);
  type metadata accessor for SFAuthenticationErrorCode(0);
  if (swift_dynamicCast())
  {
    v7 = *(v0 + 68);
    v8 = 0;
    v9 = 0xE000000000000000;
LABEL_19:
    v44 = sub_100010F88(v7, v8, v9);
LABEL_20:
    v31 = v44;
    v32 = v45;
    goto LABEL_21;
  }

  *(v0 + 256) = v1;
  swift_errorRetain();
  if ((swift_dynamicCast() & 1) == 0)
  {
    v33 = [v6 domain];
    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v35;

    if (v34 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v36 == v37)
    {
    }

    else
    {
      v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v38 & 1) == 0)
      {
        v59 = _convertErrorToNSError(_:)();
        v44 = sub_1004FFBC4(v59, 10);
        goto LABEL_20;
      }
    }

    v30 = [v6 code];
    if ((v30 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v39 = v30;
      if (!HIDWORD(v30))
      {
        v40 = [v6 localizedDescription];
        v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v43 = v42;

        v7 = v39;
        v8 = v41;
        v9 = v43;
        goto LABEL_19;
      }
    }

    __break(1u);
    return SFProgressTask.finalValue.getter(v30, v29);
  }

  v31 = *(v0 + 232);
  v32 = *(v0 + 240);
LABEL_21:
  v46 = *(v0 + 288);

  sub_100695FD8(v46, v31, v32);

  v47 = [objc_opt_self() standardUserDefaults];
  v48 = String._bridgeToObjectiveC()();
  v49 = [v47 BOOLForKey:v48];

  if (v49)
  {
    sub_1005BAE94(*(v0 + 288), v31, v32);
  }

  sub_10000FF90(v0 + 72, v0 + 192, &qword_100982080, &unk_1007FDD30);
  if (*(v0 + 216))
  {
    sub_1002AF998((v0 + 192), v0 + 152);
    v50 = swift_task_alloc();
    *(v0 + 432) = v50;
    *v50 = v0;
    v50[1] = sub_1005B21BC;
    v51 = *(v0 + 280);
    v52 = *(v0 + 264);

    return sub_1005B4740(v51, v0 + 152, v31);
  }

  sub_100005508(v0 + 192, &qword_100982080, &unk_1007FDD30);
LABEL_28:
  v54 = *(v0 + 408);

  sub_100005508(v0 + 72, &qword_100982080, &unk_1007FDD30);
  v56 = *(v0 + 360);
  v55 = *(v0 + 368);
  v57 = *(v0 + 328);

  v58 = *(v0 + 8);

  return v58();
}

uint64_t sub_1005B1FC4()
{
  v2 = *v1;
  v3 = *(*v1 + 392);
  v4 = *v1;
  *(*v1 + 400) = v0;

  v5 = *(v2 + 264);
  if (v0)
  {
    v6 = sub_1005B27A0;
  }

  else
  {
    v6 = sub_1005B20F0;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1005B20F0()
{
  v1 = v0[46];
  (*(v0[40] + 8))(v0[41], v0[39]);
  sub_1005C0A1C(v1, _s7RequestVMa);
  sub_10000C60C(v0 + 14);
  sub_100005508((v0 + 9), &qword_100982080, &unk_1007FDD30);
  v3 = v0[45];
  v2 = v0[46];
  v4 = v0[41];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1005B21BC()
{
  v1 = *(*v0 + 432);
  v2 = *(*v0 + 264);
  v4 = *v0;

  return _swift_task_switch(sub_1005B22CC, v2, 0);
}

uint64_t sub_1005B22CC()
{
  v1 = *(v0 + 416);

  sub_10000C60C((v0 + 152));
  v2 = *(v0 + 408);

  sub_100005508(v0 + 72, &qword_100982080, &unk_1007FDD30);
  v4 = *(v0 + 360);
  v3 = *(v0 + 368);
  v5 = *(v0 + 328);

  v6 = *(v0 + 8);

  return v6();
}

unint64_t sub_1005B2374()
{
  v1 = *(v0 + 384);
  *(v0 + 408) = v1;
  if (qword_100973C50 != -1)
  {
    swift_once();
  }

  v2 = qword_1009A10A8;
  *(v0 + 416) = qword_1009A10A8;
  if (!v2)
  {
    goto LABEL_24;
  }

  v3 = v2;
  v4 = _convertErrorToNSError(_:)();
  *(v0 + 424) = v4;
  *(v0 + 248) = v1;
  swift_errorRetain();
  sub_10028088C(&unk_10097A930, &unk_1007F9050);
  type metadata accessor for SFAuthenticationErrorCode(0);
  if (swift_dynamicCast())
  {
    v5 = *(v0 + 68);
    v6 = 0;
    v7 = 0xE000000000000000;
LABEL_15:
    v22 = sub_100010F88(v5, v6, v7);
LABEL_16:
    v8 = v22;
    v9 = v23;
    goto LABEL_17;
  }

  *(v0 + 256) = v1;
  swift_errorRetain();
  if ((swift_dynamicCast() & 1) == 0)
  {
    v10 = [v4 domain];
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    if (v11 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v13 == v14)
    {
    }

    else
    {
      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v15 & 1) == 0)
      {
        v36 = _convertErrorToNSError(_:)();
        v22 = sub_1004FFBC4(v36, 10);
        goto LABEL_16;
      }
    }

    result = [v4 code];
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v17 = result;
      if (!HIDWORD(result))
      {
        v18 = [v4 localizedDescription];
        v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v21 = v20;

        v5 = v17;
        v6 = v19;
        v7 = v21;
        goto LABEL_15;
      }
    }

    __break(1u);
    return result;
  }

  v8 = *(v0 + 232);
  v9 = *(v0 + 240);
LABEL_17:
  v24 = *(v0 + 288);

  sub_100695FD8(v24, v8, v9);

  v25 = [objc_opt_self() standardUserDefaults];
  v26 = String._bridgeToObjectiveC()();
  v27 = [v25 BOOLForKey:v26];

  if (v27)
  {
    sub_1005BAE94(*(v0 + 288), v8, v9);
  }

  sub_10000FF90(v0 + 72, v0 + 192, &qword_100982080, &unk_1007FDD30);
  if (*(v0 + 216))
  {
    sub_1002AF998((v0 + 192), v0 + 152);
    v28 = swift_task_alloc();
    *(v0 + 432) = v28;
    *v28 = v0;
    v28[1] = sub_1005B21BC;
    v29 = *(v0 + 280);
    v30 = *(v0 + 264);

    return sub_1005B4740(v29, v0 + 152, v8);
  }

  sub_100005508(v0 + 192, &qword_100982080, &unk_1007FDD30);
LABEL_24:
  v31 = *(v0 + 408);

  sub_100005508(v0 + 72, &qword_100982080, &unk_1007FDD30);
  v33 = *(v0 + 360);
  v32 = *(v0 + 368);
  v34 = *(v0 + 328);

  v35 = *(v0 + 8);

  return v35();
}

unint64_t sub_1005B27A0()
{
  v1 = *(v0 + 368);
  (*(*(v0 + 320) + 8))(*(v0 + 328), *(v0 + 312));
  sub_1005C0A1C(v1, _s7RequestVMa);
  sub_10000C60C((v0 + 112));
  v2 = *(v0 + 400);
  *(v0 + 408) = v2;
  if (qword_100973C50 != -1)
  {
    swift_once();
  }

  v3 = qword_1009A10A8;
  *(v0 + 416) = qword_1009A10A8;
  if (!v3)
  {
    goto LABEL_24;
  }

  v4 = v3;
  v5 = _convertErrorToNSError(_:)();
  *(v0 + 424) = v5;
  *(v0 + 248) = v2;
  swift_errorRetain();
  sub_10028088C(&unk_10097A930, &unk_1007F9050);
  type metadata accessor for SFAuthenticationErrorCode(0);
  if (swift_dynamicCast())
  {
    v6 = *(v0 + 68);
    v7 = 0;
    v8 = 0xE000000000000000;
LABEL_15:
    v23 = sub_100010F88(v6, v7, v8);
LABEL_16:
    v9 = v23;
    v10 = v24;
    goto LABEL_17;
  }

  *(v0 + 256) = v2;
  swift_errorRetain();
  if ((swift_dynamicCast() & 1) == 0)
  {
    v11 = [v5 domain];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    if (v12 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v14 == v15)
    {
    }

    else
    {
      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v16 & 1) == 0)
      {
        v37 = _convertErrorToNSError(_:)();
        v23 = sub_1004FFBC4(v37, 10);
        goto LABEL_16;
      }
    }

    result = [v5 code];
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v18 = result;
      if (!HIDWORD(result))
      {
        v19 = [v5 localizedDescription];
        v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v22 = v21;

        v6 = v18;
        v7 = v20;
        v8 = v22;
        goto LABEL_15;
      }
    }

    __break(1u);
    return result;
  }

  v9 = *(v0 + 232);
  v10 = *(v0 + 240);
LABEL_17:
  v25 = *(v0 + 288);

  sub_100695FD8(v25, v9, v10);

  v26 = [objc_opt_self() standardUserDefaults];
  v27 = String._bridgeToObjectiveC()();
  v28 = [v26 BOOLForKey:v27];

  if (v28)
  {
    sub_1005BAE94(*(v0 + 288), v9, v10);
  }

  sub_10000FF90(v0 + 72, v0 + 192, &qword_100982080, &unk_1007FDD30);
  if (*(v0 + 216))
  {
    sub_1002AF998((v0 + 192), v0 + 152);
    v29 = swift_task_alloc();
    *(v0 + 432) = v29;
    *v29 = v0;
    v29[1] = sub_1005B21BC;
    v30 = *(v0 + 280);
    v31 = *(v0 + 264);

    return sub_1005B4740(v30, v0 + 152, v9);
  }

  sub_100005508(v0 + 192, &qword_100982080, &unk_1007FDD30);
LABEL_24:
  v32 = *(v0 + 408);

  sub_100005508(v0 + 72, &qword_100982080, &unk_1007FDD30);
  v34 = *(v0 + 360);
  v33 = *(v0 + 368);
  v35 = *(v0 + 328);

  v36 = *(v0 + 8);

  return v36();
}

uint64_t sub_1005B2C0C(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  return _swift_task_switch(sub_1005B2C30, v2, 0);
}

uint64_t sub_1005B2C30()
{
  if (qword_100973C50 != -1)
  {
    swift_once();
  }

  v1 = qword_1009A10A8;
  *(v0 + 120) = qword_1009A10A8;
  if (!v1)
  {
    v13 = sub_100010F88(10, 0xD000000000000011, 0x80000001007975E0);
    v15 = v14;
    sub_1000115C8();
    swift_allocError();
    *v16 = v13;
    *(v16 + 8) = v15;
    swift_willThrow();
    v12 = *(v0 + 8);
    goto LABEL_9;
  }

  v2 = *(v0 + 104);
  if (v2)
  {
    v3 = v1;
    v4 = [v2 idsDeviceID];
    if (v4)
    {
      v5 = v4;
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;

      v10 = *&v3[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_idsDeviceForUniqueID];
      v9 = *&v3[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_idsDeviceForUniqueID + 8];

      v10(v6, v8);

      if (*(v0 + 80))
      {
        v11 = *(v0 + 96);

        sub_1002AF998((v0 + 56), v11);
        v12 = *(v0 + 8);
LABEL_9:

        return v12();
      }

      sub_100005508(v0 + 56, &qword_100982080, &unk_1007FDD30);
    }
  }

  else
  {
    v18 = v1;
  }

  v19 = swift_task_alloc();
  *(v0 + 128) = v19;
  *v19 = v0;
  v19[1] = sub_1005B2E78;
  v20 = *(v0 + 112);

  return sub_1005B307C(v0 + 16);
}

uint64_t sub_1005B2E78()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *v1;
  *(*v1 + 136) = v0;

  v5 = *(v2 + 112);
  if (v0)
  {
    v6 = sub_1005B3018;
  }

  else
  {
    v6 = sub_1005B2FA4;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1005B2FA4()
{
  v1 = *(v0 + 96);

  sub_1002AF998((v0 + 16), v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1005B3018()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1005B307C(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v3 = sub_10028088C(&qword_100984BF0, &unk_10080C560);
  v2[14] = v3;
  v4 = *(v3 - 8);
  v2[15] = v4;
  v5 = *(v4 + 64) + 15;
  v2[16] = swift_task_alloc();
  v6 = sub_10028088C(&qword_100984BF8, &qword_1008106E0);
  v2[17] = v6;
  v7 = *(v6 - 8);
  v2[18] = v7;
  v8 = *(v7 + 64) + 15;
  v2[19] = swift_task_alloc();

  return _swift_task_switch(sub_1005B31B0, v1, 0);
}

uint64_t sub_1005B31B0()
{
  if (qword_100973C50 != -1)
  {
LABEL_33:
    swift_once();
  }

  v1 = qword_1009A10A8;
  v0[20] = qword_1009A10A8;
  if (v1)
  {
    v2 = *(v0[13] + 120);
    v3 = v1;
    v4 = sub_100695AC4(v2, 5);
    v10 = sub_1002AF074(v4);

    if ((v10 & 0x8000000000000000) != 0 || (v10 & 0x4000000000000000) != 0)
    {
      v11 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v11 = *(v10 + 16);
    }

    v12 = _swiftEmptyArrayStorage;
    v0[21] = _swiftEmptyArrayStorage;
    if (v11)
    {
      v13 = 0;
      do
      {
        v14 = v13;
        while (1)
        {
          if ((v10 & 0xC000000000000001) != 0)
          {
            v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v14 >= *(v10 + 16))
            {
              goto LABEL_32;
            }

            v15 = *(v10 + 8 * v14 + 32);
          }

          v16 = v15;
          v13 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            __break(1u);
LABEL_32:
            __break(1u);
            goto LABEL_33;
          }

          v17 = [v15 uniqueID];
          if (v17)
          {
            break;
          }

          ++v14;
          if (v13 == v11)
          {
            goto LABEL_26;
          }
        }

        v44 = v3;
        v18 = v17;
        v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v43 = v20;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_10028E1C8(0, *(v12 + 2) + 1, 1, v12);
        }

        v22 = *(v12 + 2);
        v21 = *(v12 + 3);
        if (v22 >= v21 >> 1)
        {
          v12 = sub_10028E1C8((v21 > 1), v22 + 1, 1, v12);
        }

        *(v12 + 2) = v22 + 1;
        v23 = &v12[16 * v22];
        v3 = v44;
        *(v23 + 4) = v19;
        *(v23 + 5) = v43;
        v0[21] = v12;
      }

      while (v13 != v11);
    }

LABEL_26:

    v24 = *&v3[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_queue];
    type metadata accessor for SDAuthenticationNearbyInfoTemporaryScanner();
    v25 = swift_allocObject();
    v0[22] = v25;
    v26 = objc_allocWithZone(RPCompanionLinkClient);
    v27 = v24;
    v28 = [v26 init];
    *(v25 + 16) = v28;
    v29 = v28;
    [v29 setControlFlags:2];
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v29 setDeviceFilter:isa];

    v31 = *(v25 + 16);
    if (([v31 controlFlags] & 0x10000) != 0)
    {
      v32 = v31;
      [v32 setBleScreenOffScanRate:20];
    }

    v33 = v0[19];
    v35 = v0[16];
    v34 = v0[17];

    sub_10033F434(5);
    AsyncThrowingStream.makeAsyncIterator()();
    v37 = sub_1005BCE80(&qword_100984BD0, v36, _s22VisionUnlockiOSManagerCMa);
    v0[23] = v37;
    v38 = v0[13];
    v39 = _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTu[1];
    v40 = swift_task_alloc();
    v0[24] = v40;
    *v40 = v0;
    v40[1] = sub_1005B375C;
    v41 = v0[16];
    v42 = v0[14];

    return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v0 + 9, v38, v37, v42, v0 + 10);
  }

  else
  {
    type metadata accessor for SFAuthenticationErrorCode(0);
    sub_1005BCE80(&qword_100981FF0, 255, type metadata accessor for SFAuthenticationErrorCode);
    swift_allocError();
    *v5 = 10;
    swift_willThrow();
    v6 = v0[19];
    v7 = v0[16];

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_1005B375C()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v9 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v4 = *(v2 + 168);
    v5 = *(v2 + 104);

    v6 = sub_1005B3E80;
    v7 = v5;
  }

  else
  {
    v7 = *(v2 + 104);
    v6 = sub_1005B3884;
  }

  return _swift_task_switch(v6, v7, 0);
}

uint64_t sub_1005B3884()
{
  v1 = *(v0 + 72);
  if (!v1)
  {
    v8 = *(v0 + 168);
    (*(*(v0 + 120) + 8))(*(v0 + 128), *(v0 + 112));

    goto LABEL_5;
  }

  v2 = v1;
  v3 = [v2 idsDeviceIdentifier];
  if (v3)
  {
    v4 = v3;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xE000000000000000;
  }

  v22 = *(v0 + 200);
  v23 = *(v0 + 168);
  *(v0 + 56) = v5;
  *(v0 + 64) = v7;
  v24 = swift_task_alloc();
  *(v24 + 16) = v0 + 56;
  LOBYTE(v22) = sub_10039026C(sub_100345B28, v24, v23);

  if (v22)
  {
    v25 = *(v0 + 104);
    v26 = *(v25 + 136);
    if ((*(v25 + 128))(v2))
    {
      v27 = *(v0 + 168);

      v28 = [v2 idsDeviceIdentifier];

      if (v28)
      {
        v29 = *(v0 + 160);
        v31 = *(v0 + 120);
        v30 = *(v0 + 128);
        v32 = *(v0 + 112);
        v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v35 = v34;

        (*(v31 + 8))(v30, v32);
        v37 = *(v29 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_idsDeviceForUniqueID);
        v36 = *(v29 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_idsDeviceForUniqueID + 8);

        v37(v33, v35);

        v38 = *(v0 + 176);
        v39 = *(v0 + 152);
        v40 = *(v0 + 160);
        v41 = *(v0 + 136);
        v42 = *(v0 + 144);
        if (*(v0 + 40))
        {
          v43 = *(v0 + 128);
          v44 = *(v0 + 96);
          (*(v42 + 8))(*(v0 + 152), *(v0 + 136));

          sub_1002AF998((v0 + 16), v44);

          v20 = *(v0 + 8);
          goto LABEL_7;
        }

        sub_100005508(v0 + 16, &qword_100982080, &unk_1007FDD30);
        v56 = sub_100010F88(10, 0xD000000000000032, 0x8000000100797670);
        v58 = v57;
        sub_1000115C8();
        swift_allocError();
        *v59 = v56;
        *(v59 + 8) = v58;
        swift_willThrow();

        (*(v42 + 8))(v39, v41);
LABEL_6:
        v18 = *(v0 + 152);
        v19 = *(v0 + 128);

        v20 = *(v0 + 8);
LABEL_7:

        return v20();
      }

      (*(*(v0 + 120) + 8))(*(v0 + 128), *(v0 + 112));

LABEL_5:
      v9 = *(v0 + 176);
      v10 = *(v0 + 152);
      v11 = *(v0 + 160);
      v12 = *(v0 + 136);
      v13 = *(v0 + 144);
      v14 = sub_100010F88(20, 0xD00000000000003CLL, 0x8000000100797630);
      v16 = v15;
      sub_1000115C8();
      swift_allocError();
      *v17 = v14;
      *(v17 + 8) = v16;
      swift_willThrow();

      (*(v13 + 8))(v10, v12);
      goto LABEL_6;
    }

    if (qword_100973AE0 != -1)
    {
      swift_once();
    }

    v45 = type metadata accessor for Logger();
    sub_10000C4AC(v45, qword_100984940);
    v46 = v2;
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      *(v0 + 88) = v50;
      *v49 = 136315394;
      v51 = [v46 idsDeviceIdentifier];
      if (v51)
      {
        v52 = v51;
        v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v55 = v54;
      }

      else
      {
        v53 = 0xD000000000000015;
        v55 = 0x8000000100789F30;
      }

      v60 = sub_10000C4E4(v53, v55, (v0 + 88));

      *(v49 + 4) = v60;
      *(v49 + 12) = 1024;
      v61 = [v46 activityLevel];

      *(v49 + 14) = v61;
      _os_log_impl(&_mh_execute_header, v47, v48, "Ignoring paired %s because its screen is off (activity level: %d)", v49, 0x12u);
      sub_10000C60C(v50);
    }

    else
    {
    }
  }

  else
  {
  }

  v62 = *(v0 + 184);
  v63 = *(v0 + 104);
  v64 = _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTu[1];
  v65 = swift_task_alloc();
  *(v0 + 192) = v65;
  *v65 = v0;
  v65[1] = sub_1005B375C;
  v66 = *(v0 + 128);
  v67 = *(v0 + 112);

  return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v0 + 72, v63, v62, v67, v0 + 80);
}

uint64_t sub_1005B3E80()
{
  v1 = v0[22];
  v2 = v0[19];
  v3 = v0[20];
  v4 = v0[17];
  v5 = v0[18];
  v7 = v0[15];
  v6 = v0[16];
  v8 = v0[14];

  (*(v7 + 8))(v6, v8);
  (*(v5 + 8))(v2, v4);
  v9 = v0[10];
  v10 = v0[19];
  v11 = v0[16];

  v12 = v0[1];

  return v12();
}

void sub_1005B3F54(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v25 - v6;
  if (*(a1 + 16))
  {
    v8 = sub_100012854(0x496E6F6973736573, 0xE900000000000044);
    if (v9)
    {
      v28 = *(*(a1 + 56) + 8 * v8);
      swift_unknownObjectRetain();
      if (swift_dynamicCast())
      {
        v10 = v27;
        if (*(a1 + 16))
        {
          v11 = v26;
          v12 = sub_100012854(0x726F727265, 0xE500000000000000);
          if (v13)
          {
            v26 = *(*(a1 + 56) + 8 * v12);
            swift_unknownObjectRetain();
            if (swift_dynamicCast())
            {
              if (*(a1 + 16))
              {
                v14 = v28;
                v15 = sub_100012854(0x6567617373656DLL, 0xE700000000000000);
                if (v16)
                {
                  v28 = *(*(a1 + 56) + 8 * v15);
                  swift_unknownObjectRetain();
                  if (swift_dynamicCast())
                  {
                    v17 = v26;
                    v18 = v27;
                    v19 = type metadata accessor for TaskPriority();
                    (*(*(v19 - 8) + 56))(v7, 1, 1, v19);
                    v20 = swift_allocObject();
                    *(v20 + 16) = 0;
                    *(v20 + 24) = 0;
                    *(v20 + 32) = v2;
                    *(v20 + 40) = v11;
                    *(v20 + 48) = v10;
                    *(v20 + 56) = v14;
                    *(v20 + 64) = v17;
                    *(v20 + 72) = v18;

                    sub_1005B4480(0, 0, v7, &unk_10080C4E0, v20);

                    sub_100005508(v7, &qword_100976160, &qword_1007F8770);
                    return;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  if (qword_100973AE0 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_10000C4AC(v21, qword_100984940);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v22, v23, "Got invalid visionOS unlock failure notification content. Not creating a radar.", v24, 2u);
  }
}

uint64_t sub_1005B4270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8)
{
  *(v8 + 32) = a8;
  *(v8 + 40) = v10;
  *(v8 + 64) = a7;
  *(v8 + 16) = a5;
  *(v8 + 24) = a6;
  return _swift_task_switch(sub_1005B42A0, 0, 0);
}

uint64_t sub_1005B42A0()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 64);

  v4 = sub_100010F88(v3, v1, v2);
  v6 = v5;
  *(v0 + 48) = v5;
  v7 = swift_task_alloc();
  *(v0 + 56) = v7;
  *v7 = v0;
  v7[1] = sub_1005B4370;
  v9 = *(v0 + 16);
  v8 = *(v0 + 24);

  return sub_1005BB0A4(v9, v8, v4, v6);
}

uint64_t sub_1005B4370()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1005B4480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_10000FF90(a3, v27 - v11, &qword_100976160, &qword_1007F8770);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_100005508(v12, &qword_100976160, &qword_1007F8770);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_1005B4740(uint64_t a1, uint64_t a2, int a3)
{
  *(v4 + 32) = a3;
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  return _swift_task_switch(sub_1005B4764, v3, 0);
}

uint64_t sub_1005B4764()
{
  v1 = *(v0 + 16);
  v2 = SFDeviceClassCodeGet();
  v3 = sub_100027628(v1);
  v4 = sub_10000EF9C(8u, v3);

  if (v4)
  {
    if (!SFDeviceIsRealityDevice())
    {
      goto LABEL_11;
    }
  }

  else
  {
    v5 = sub_100027628(*(v0 + 16));
    v6 = sub_10000EF9C(v2, v5);

    if (!v6)
    {
      goto LABEL_11;
    }
  }

  v7 = *(v0 + 32);
  if (v7 == 34 || v7 == 11)
  {
    if (qword_100973C50 != -1)
    {
      swift_once();
    }

    v8 = qword_1009A10A8;
    if (qword_1009A10A8)
    {
      v9 = *(v0 + 24);
      v10 = sub_1004FE8E0(*(v0 + 16));
      v11 = v9[3];
      v12 = v9[4];
      v13 = sub_10002CDC0(v9, v11);
      sub_1006E668C(v10 & 1, 18, v13, v8, v11, v12);
    }
  }

LABEL_11:
  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1005B48DC()
{
  v15 = v0;
  if (qword_100973AE0 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_100984940);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[3];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315138;
    v0[2] = v5;
    _s28VisionUnlockiOSUpsellManagerCMa();

    v8 = String.init<A>(describing:)();
    v10 = sub_10000C4E4(v8, v9, &v14);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s: started", v6, 0xCu);
    sub_10000C60C(v7);
  }

  v11 = swift_task_alloc();
  v0[4] = v11;
  *v11 = v0;
  v11[1] = sub_100530FC8;
  v12 = v0[3];

  return sub_1005B4AC0();
}

uint64_t sub_1005B4AC0()
{
  v1[8] = v0;
  v2 = sub_10028088C(&qword_100984C08, &qword_100810190);
  v1[9] = v2;
  v3 = *(v2 - 8);
  v1[10] = v3;
  v4 = *(v3 + 64) + 15;
  v1[11] = swift_task_alloc();
  v5 = *(*(sub_10028088C(&qword_100984C10, &qword_10080C600) - 8) + 64) + 15;
  v1[12] = swift_task_alloc();
  v6 = sub_10028088C(&qword_100984C18, &qword_10080C608);
  v1[13] = v6;
  v7 = *(v6 - 8);
  v1[14] = v7;
  v8 = *(v7 + 64) + 15;
  v1[15] = swift_task_alloc();
  v9 = sub_10028088C(&qword_100984C20, &qword_10080C610);
  v1[16] = v9;
  v10 = *(v9 - 8);
  v1[17] = v10;
  v11 = *(v10 + 64) + 15;
  v1[18] = swift_task_alloc();

  return _swift_task_switch(sub_1005B4C94, v0, 0);
}

uint64_t sub_1005B4C94()
{
  v1 = v0[18];
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[13];
  v0[5] = &type metadata for RapportDeviceSequenceProvider;
  v0[6] = &off_1009895A8;
  v0[2] = 2;
  sub_10002CDC0(v0 + 2, &type metadata for RapportDeviceSequenceProvider);
  off_1009895B8();
  AsyncThrowingStream.makeAsyncIterator()();
  (*(v3 + 8))(v2, v4);
  v6 = sub_1005BCE80(&qword_100984C00, v5, _s28VisionUnlockiOSUpsellManagerCMa);
  v0[19] = v6;
  v7 = v0[8];
  v8 = _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTu[1];
  v9 = swift_task_alloc();
  v0[20] = v9;
  *v9 = v0;
  v9[1] = sub_1005B4E18;
  v10 = v0[18];
  v11 = v0[16];
  v12 = v0[12];

  return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v12, v7, v6, v11, v0 + 7);
}

uint64_t sub_1005B4E18()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v7 = *v1;

  v4 = *(v2 + 64);
  if (v0)
  {
    v5 = sub_1005B50F0;
  }

  else
  {
    v5 = sub_1005B4F2C;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1005B4F2C()
{
  v1 = v0[12];
  if ((*(v0[10] + 48))(v1, 1, v0[9]) == 1)
  {
    (*(v0[17] + 8))(v0[18], v0[16]);
    v2 = v0[18];
    v3 = v0[15];
    v5 = v0[11];
    v4 = v0[12];
    sub_100005508((v0 + 2), &qword_100984C28, &qword_10080C618);

    v6 = v0[1];

    return v6();
  }

  else
  {
    v8 = v0[11];
    v9 = v0[8];
    sub_10002C4E4(v1, v8, &qword_100984C08, &qword_100810190);
    sub_1005B52EC(v8);
    sub_100005508(v8, &qword_100984C08, &qword_100810190);
    v10 = v0[19];
    v11 = v0[8];
    v12 = _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTu[1];
    v13 = swift_task_alloc();
    v0[20] = v13;
    *v13 = v0;
    v13[1] = sub_1005B4E18;
    v14 = v0[18];
    v15 = v0[16];
    v16 = v0[12];

    return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v16, v11, v10, v15, v0 + 7);
  }
}

uint64_t sub_1005B50F0()
{
  (*(v0[17] + 8))(v0[18], v0[16]);
  v1 = v0[7];
  if (qword_100973AE0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_100984940);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "Encountered error trying to discover devices: %@", v5, 0xCu);
    sub_100005508(v6, &qword_100975400, &qword_1007F65D0);
  }

  else
  {
  }

  v8 = v0[18];
  v9 = v0[15];
  v11 = v0[11];
  v10 = v0[12];
  sub_100005508((v0 + 2), &qword_100984C28, &qword_10080C618);

  v12 = v0[1];

  return v12();
}

uint64_t sub_1005B52EC(uint64_t a1)
{
  v2 = type metadata accessor for AuthenticationDevice();
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = (&v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __chkstk_darwin(v4);
  v63 = (&v63 - v8);
  v9 = __chkstk_darwin(v7);
  v11 = (&v63 - v10);
  v12 = __chkstk_darwin(v9);
  v14 = (&v63 - v13);
  v15 = __chkstk_darwin(v12);
  v17 = (&v63 - v16);
  __chkstk_darwin(v15);
  v19 = (&v63 - v18);
  v20 = sub_10028088C(&qword_100984C08, &qword_100810190);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20);
  v23 = &v63 - v22;
  sub_10000FF90(a1, &v63 - v22, &qword_100984C08, &qword_100810190);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1005C08BC(v23, v14, type metadata accessor for AuthenticationDevice);
      v25 = v64;
      if (qword_100973AE0 != -1)
      {
        swift_once();
      }

      v26 = type metadata accessor for Logger();
      sub_10000C4AC(v26, qword_100984940);
      sub_1005C0854(v14, v11, type metadata accessor for AuthenticationDevice);

      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v65 = v25;
        v66 = v30;
        *v29 = 136315394;
        _s28VisionUnlockiOSUpsellManagerCMa();

        v31 = String.init<A>(describing:)();
        v33 = sub_10000C4E4(v31, v32, &v66);

        *(v29 + 4) = v33;
        *(v29 + 12) = 2080;
        if (v11[1])
        {
          v34 = *v11;
          v35 = v11[1];
        }

        else
        {
          v34 = 0xD000000000000015;
          v35 = 0x8000000100789F30;
        }

        sub_1005C0A1C(v11, type metadata accessor for AuthenticationDevice);
        v59 = sub_10000C4E4(v34, v35, &v66);

        *(v29 + 14) = v59;
        _os_log_impl(&_mh_execute_header, v27, v28, "%s: Device changed %s", v29, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        sub_1005C0A1C(v11, type metadata accessor for AuthenticationDevice);
      }

      sub_1005B5B54(v14);
      v19 = v14;
    }

    else
    {
      v47 = v63;
      sub_1005C08BC(v23, v63, type metadata accessor for AuthenticationDevice);
      v48 = v64;
      if (qword_100973AE0 != -1)
      {
        swift_once();
      }

      v49 = type metadata accessor for Logger();
      sub_10000C4AC(v49, qword_100984940);
      sub_1005C0854(v47, v6, type metadata accessor for AuthenticationDevice);

      v50 = Logger.logObject.getter();
      v51 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v65 = v48;
        v66 = v53;
        *v52 = 136315394;
        _s28VisionUnlockiOSUpsellManagerCMa();

        v54 = String.init<A>(describing:)();
        v56 = sub_10000C4E4(v54, v55, &v66);

        *(v52 + 4) = v56;
        *(v52 + 12) = 2080;
        if (v6[1])
        {
          v57 = *v6;
          v58 = v6[1];
        }

        else
        {
          v57 = 0xD000000000000015;
          v58 = 0x8000000100789F30;
        }

        sub_1005C0A1C(v6, type metadata accessor for AuthenticationDevice);
        v61 = sub_10000C4E4(v57, v58, &v66);

        *(v52 + 14) = v61;
        _os_log_impl(&_mh_execute_header, v50, v51, "%s: Device lost %s", v52, 0x16u);
        swift_arrayDestroy();

        v47 = v63;
      }

      else
      {

        sub_1005C0A1C(v6, type metadata accessor for AuthenticationDevice);
      }

      sub_1005B6150(v47);
      v19 = v47;
    }
  }

  else
  {
    sub_1005C08BC(v23, v19, type metadata accessor for AuthenticationDevice);
    if (qword_100973AE0 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    sub_10000C4AC(v36, qword_100984940);
    sub_1005C0854(v19, v17, type metadata accessor for AuthenticationDevice);
    v37 = v64;

    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v65 = v37;
      v66 = v41;
      *v40 = 136315394;
      _s28VisionUnlockiOSUpsellManagerCMa();

      v42 = String.init<A>(describing:)();
      v44 = sub_10000C4E4(v42, v43, &v66);

      *(v40 + 4) = v44;
      *(v40 + 12) = 2080;
      if (v17[1])
      {
        v45 = *v17;
        v46 = v17[1];
      }

      else
      {
        v45 = 0xD000000000000015;
        v46 = 0x8000000100789F30;
      }

      sub_1005C0A1C(v17, type metadata accessor for AuthenticationDevice);
      v60 = sub_10000C4E4(v45, v46, &v66);

      *(v40 + 14) = v60;
      _os_log_impl(&_mh_execute_header, v38, v39, "%s: Device found %s", v40, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_1005C0A1C(v17, type metadata accessor for AuthenticationDevice);
    }

    sub_1005B5B54(v19);
  }

  return sub_1005C0A1C(v19, type metadata accessor for AuthenticationDevice);
}

void sub_1005B5B54(uint64_t *a1)
{
  v2 = v1;
  v4 = type metadata accessor for AuthenticationDevice();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v8 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v36 - v9;
  v11 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v36 - v13;
  if (a1[3])
  {
    v15 = a1[2];
    v37 = String.lowercased()();
    strcpy(v38, "realitydevice");
    HIWORD(v38[1]) = -4864;
    sub_10001229C();
    v16 = StringProtocol.contains<A>(_:)();

    if (v16)
    {
      if ([*(a1 + *(v4 + 48)) activityLevel] >= 7)
      {
        v29 = a1[1];
        if (v29)
        {
          v30 = *a1;
          swift_beginAccess();

          sub_10046DAAC(v38, v30, v29);
          swift_endAccess();

          v31 = type metadata accessor for TaskPriority();
          (*(*(v31 - 8) + 56))(v14, 1, 1, v31);
          sub_1005C0854(a1, v10, type metadata accessor for AuthenticationDevice);
          v33 = sub_1005BCE80(&qword_100984C00, v32, _s28VisionUnlockiOSUpsellManagerCMa);
          v34 = (*(v5 + 80) + 40) & ~*(v5 + 80);
          v35 = swift_allocObject();
          v35[2] = v2;
          v35[3] = v33;
          v35[4] = v2;
          sub_1005C08BC(v10, v35 + v34, type metadata accessor for AuthenticationDevice);
          swift_retain_n();
          sub_1002B3098(0, 0, v14, &unk_10080C5F0, v35);
        }

        else
        {
          __break(1u);
        }
      }

      else
      {
        if (qword_100973AE0 != -1)
        {
          swift_once();
        }

        v17 = type metadata accessor for Logger();
        sub_10000C4AC(v17, qword_100984940);
        sub_1005C0854(a1, v8, type metadata accessor for AuthenticationDevice);

        v18 = Logger.logObject.getter();
        v19 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          v37._countAndFlagsBits = swift_slowAlloc();
          *v20 = 136315394;
          v38[0] = v2;
          _s28VisionUnlockiOSUpsellManagerCMa();

          v21 = String.init<A>(describing:)();
          v23 = sub_10000C4E4(v21, v22, &v37._countAndFlagsBits);

          *(v20 + 4) = v23;
          *(v20 + 12) = 2080;
          v24 = [*&v8[*(v4 + 48)] description];
          v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v27 = v26;

          sub_1005C0A1C(v8, type metadata accessor for AuthenticationDevice);
          v28 = sub_10000C4E4(v25, v27, &v37._countAndFlagsBits);

          *(v20 + 14) = v28;
          _os_log_impl(&_mh_execute_header, v18, v19, "%s: Device lost because screen turned off %s", v20, 0x16u);
          swift_arrayDestroy();
        }

        else
        {

          sub_1005C0A1C(v8, type metadata accessor for AuthenticationDevice);
        }

        sub_1005B6150(a1);
      }
    }
  }
}

uint64_t sub_1005B607C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_1005B609C, a4, 0);
}

void sub_1005B609C()
{
  v1 = v0[3];
  v2 = v1[1];
  if (v2)
  {
    v3 = *v1;
    v4 = swift_task_alloc();
    v0[4] = v4;
    *v4 = v0;
    v4[1] = sub_10052F858;
    v5 = v0[2];

    sub_1005B6250(v3, v2);
  }

  else
  {
    __break(1u);
  }
}

void sub_1005B6150(uint64_t *a1)
{
  if (a1[3])
  {
    v2 = v1;
    v4 = a1[2];
    String.lowercased()();
    sub_10001229C();
    v5 = StringProtocol.contains<A>(_:)();

    if (v5)
    {
      v6 = a1[1];
      if (v6)
      {
        v7 = *a1;
        swift_beginAccess();
        sub_10036DB18(v7, v6);
        swift_endAccess();

        if (!*(*(v2 + 112) + 16))
        {
          sub_1005B8E50();
        }
      }

      else
      {
        __break(1u);
      }
    }
  }
}

uint64_t sub_1005B6250(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  return _swift_task_switch(sub_1005B6274, v2, 0);
}

uint64_t sub_1005B6274()
{
  v25 = v0;
  if (*(*(v0 + 48) + 120))
  {
    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v3 = [objc_opt_self() standardUserDefaults];
    v4 = String._bridgeToObjectiveC()();
    v5 = [v3 BOOLForKey:v4];
    *(v0 + 72) = v5;

    if (v5)
    {
      if (qword_100973AE0 != -1)
      {
        swift_once();
      }

      v6 = type metadata accessor for Logger();
      sub_10000C4AC(v6, qword_100984940);
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v7, v8, "### TESTING ONLY: showing upsell notification regardless of state because ignorePairingWhenShowingUpsellNotification is set", v9, 2u);
      }
    }

    if (qword_100973AE0 != -1)
    {
      swift_once();
    }

    v10 = *(v0 + 48);
    v11 = type metadata accessor for Logger();
    *(v0 + 56) = sub_10000C4AC(v11, qword_100984940);

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = *(v0 + 48);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v24 = v16;
      *v15 = 136315138;
      *(v0 + 24) = v14;
      _s28VisionUnlockiOSUpsellManagerCMa();

      v17 = String.init<A>(describing:)();
      v19 = sub_10000C4E4(v17, v18, &v24);

      *(v15 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v12, v13, "%s: Post if necessary", v15, 0xCu);
      sub_10000C60C(v16);
    }

    v20 = swift_task_alloc();
    *(v0 + 64) = v20;
    *v20 = v0;
    v20[1] = sub_1005B65C8;
    v21 = *(v0 + 40);
    v22 = *(v0 + 48);
    v23 = *(v0 + 32);

    return sub_1005B6898(v23, v21);
  }
}

uint64_t sub_1005B65C8(char a1)
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 73) = a1;

  return _swift_task_switch(sub_1005B66E0, v3, 0);
}

uint64_t sub_1005B66E0()
{
  v16 = v0;
  if ((*(v0 + 72) & 1) != 0 || *(v0 + 73))
  {
    v2 = *(v0 + 48);
    v1 = *(v0 + 56);

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = *(v0 + 48);
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v15 = v7;
      *v6 = 136315138;
      *(v0 + 16) = v5;
      _s28VisionUnlockiOSUpsellManagerCMa();

      v8 = String.init<A>(describing:)();
      v10 = sub_10000C4E4(v8, v9, &v15);

      *(v6 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v3, v4, "%s: Posting!!", v6, 0xCu);
      sub_10000C60C(v7);
    }

    v11 = *(v0 + 48);
    v12 = [objc_opt_self() sharedManager];
    [v12 visionUnlockiOSUpsellPostIfNeeded];

    *(v11 + 120) = 1;
    sub_1005B8670();
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1005B6898(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  return _swift_task_switch(sub_1005B68BC, v2, 0);
}

id sub_1005B68BC()
{
  v49 = v0;
  result = [objc_opt_self() sharedMonitor];
  if (result)
  {
    v2 = result;
    v3 = [result deviceKeyBagLocked];

    if (!v3)
    {
      goto LABEL_14;
    }

    if (qword_100973AE0 != -1)
    {
      swift_once();
    }

    v4 = v0[10];
    v5 = type metadata accessor for Logger();
    v0[11] = sub_10000C4AC(v5, qword_100984940);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = v0[10];
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v48 = v10;
      *v9 = 136315138;
      v0[7] = v8;
      _s28VisionUnlockiOSUpsellManagerCMa();

      v11 = String.init<A>(describing:)();
      v13 = sub_10000C4E4(v11, v12, &v48);

      *(v9 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v6, v7, "%s: keybag unlocked", v9, 0xCu);
      sub_10000C60C(v10);
    }

    v14 = v0[10];
    if ((sub_1005B73CC() & 1) == 0)
    {
      goto LABEL_14;
    }

    v15 = v0[10];

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = v0[10];
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v48 = v20;
      *v19 = 136315138;
      v0[6] = v18;
      _s28VisionUnlockiOSUpsellManagerCMa();

      v21 = String.init<A>(describing:)();
      v23 = sub_10000C4E4(v21, v22, &v48);

      *(v19 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v16, v17, "%s: not previously enabled", v19, 0xCu);
      sub_10000C60C(v20);
    }

    v24 = v0[10];
    if (!sub_1005B7594())
    {
      goto LABEL_14;
    }

    v25 = v0[10];

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = v0[10];
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v48 = v30;
      *v29 = 136315138;
      v0[5] = v28;
      _s28VisionUnlockiOSUpsellManagerCMa();

      v31 = String.init<A>(describing:)();
      v33 = sub_10000C4E4(v31, v32, &v48);

      *(v29 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v26, v27, "%s: under dismissal limit", v29, 0xCu);
      sub_10000C60C(v30);
    }

    if ((sub_1005BA908(v0[8], v0[9]) & 1) == 0)
    {
      v35 = v0[10];

      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = v0[10];
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v48 = v40;
        *v39 = 136315138;
        v0[4] = v38;
        _s28VisionUnlockiOSUpsellManagerCMa();

        v41 = String.init<A>(describing:)();
        v43 = sub_10000C4E4(v41, v42, &v48);

        *(v39 + 4) = v43;
        _os_log_impl(&_mh_execute_header, v36, v37, "%s: feature not enabled", v39, 0xCu);
        sub_10000C60C(v40);
      }

      v44 = swift_task_alloc();
      v0[12] = v44;
      *v44 = v0;
      v44[1] = sub_1005B6E40;
      v45 = v0[9];
      v46 = v0[10];
      v47 = v0[8];

      return sub_1005B7770(v47, v45);
    }

    else
    {
LABEL_14:
      v34 = v0[1];

      return v34(0);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1005B6E40(char a1)
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 112) = a1;

  return _swift_task_switch(sub_1005B6F58, v3, 0);
}

uint64_t sub_1005B6F58()
{
  v16 = v0;
  if (*(v0 + 112) == 1)
  {
    v2 = *(v0 + 80);
    v1 = *(v0 + 88);

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = *(v0 + 80);
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v15 = v7;
      *v6 = 136315138;
      *(v0 + 24) = v5;
      _s28VisionUnlockiOSUpsellManagerCMa();

      v8 = String.init<A>(describing:)();
      v10 = sub_10000C4E4(v8, v9, &v15);

      *(v6 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v3, v4, "%s: device eligible", v6, 0xCu);
      sub_10000C60C(v7);
    }

    v11 = swift_task_alloc();
    *(v0 + 104) = v11;
    *v11 = v0;
    v11[1] = sub_1005B7140;
    v12 = *(v0 + 80);

    return sub_1005B7F0C();
  }

  else
  {
    v14 = *(v0 + 8);

    return v14(0);
  }
}

uint64_t sub_1005B7140(char a1)
{
  v2 = *(*v1 + 104);
  v3 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 113) = a1;

  return _swift_task_switch(sub_1005B7258, v3, 0);
}

uint64_t sub_1005B7258()
{
  v15 = v0;
  v1 = *(v0 + 113);
  if (v1 == 1)
  {
    v3 = *(v0 + 80);
    v2 = *(v0 + 88);

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(v0 + 80);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v14 = v8;
      *v7 = 136315138;
      *(v0 + 16) = v6;
      _s28VisionUnlockiOSUpsellManagerCMa();

      v9 = String.init<A>(describing:)();
      v11 = sub_10000C4E4(v9, v10, &v14);

      *(v7 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v4, v5, "%s: security policies pass", v7, 0xCu);
      sub_10000C60C(v8);
    }
  }

  v12 = *(v0 + 8);

  return v12(v1);
}

uint64_t sub_1005B73CC()
{
  v1 = v0;
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = *(v1 + 168);
  v4 = *(v1 + 176);
  v5 = String._bridgeToObjectiveC()();
  v6 = [v2 BOOLForKey:v5];

  if (v6)
  {
    if (qword_100973AE0 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000C4AC(v7, qword_100984940);

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v16 = v11;
      *v10 = 136315138;
      _s28VisionUnlockiOSUpsellManagerCMa();

      v12 = String.init<A>(describing:)();
      v14 = sub_10000C4E4(v12, v13, &v16);

      *(v10 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v8, v9, "%s: previously enabled", v10, 0xCu);
      sub_10000C60C(v11);
    }
  }

  return v6 ^ 1;
}