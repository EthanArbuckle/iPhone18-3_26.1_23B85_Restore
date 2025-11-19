uint64_t sub_100071538(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(uint64_t))
{
  v5 = *a1;
  if (!*a1)
  {
    return a4(0);
  }

  v8 = *a1;
  swift_errorRetain();
  if (qword_1000DBA20 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100007DE8(v9, qword_1000E6D48);
  swift_errorRetain();

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v12 = 136315394;
    *(v12 + 4) = sub_1000170D4(a2, a3, &v17);
    *(v12 + 12) = 2080;
    swift_getErrorValue();
    v13 = Error.localizedDescription.getter();
    v15 = sub_1000170D4(v13, v14, &v17);

    *(v12 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v10, v11, "Tempo /unregister failed for id=%s - %s", v12, 0x16u);
    swift_arrayDestroy();
  }

  swift_errorRetain();
  a4(v5);
}

void sub_1000717D0(uint64_t a1, uint64_t a2, void (**a3)(void, void))
{
  v85 = type metadata accessor for Date();
  v6 = *(v85 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v85);
  v84 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100003998(&qword_1000DDB38, &qword_1000AC630);
  v77 = *(v9 - 8);
  v78 = v9;
  v10 = *(v77 + 64);
  __chkstk_darwin(v9);
  v76 = &v69 - v11;
  v12 = sub_100003998(&qword_1000DDB40, &qword_1000AC638);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v79 = &v69 - v15;
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  v17 = *(a2 + OBJC_IVAR____TtC7sportsd26SportsKitRequestXPCSession_bundleId + 8);
  if (!v17)
  {
    goto LABEL_16;
  }

  v18 = HIBYTE(v17) & 0xF;
  v83 = *(a2 + OBJC_IVAR____TtC7sportsd26SportsKitRequestXPCSession_bundleId);
  if ((v17 & 0x2000000000000000) == 0)
  {
    v18 = v83 & 0xFFFFFFFFFFFFLL;
  }

  if (!v18)
  {
LABEL_16:
    _Block_copy(a3);
    if (qword_1000DBA20 == -1)
    {
LABEL_17:
      v57 = type metadata accessor for Logger();
      sub_100007DE8(v57, qword_1000E6D48);
      v58 = Logger.logObject.getter();
      v59 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        *v60 = 0;
        _os_log_impl(&_mh_execute_header, v58, v59, "Tempo /unregister missing process bundle id", v60, 2u);
      }

      sub_100029E04(1u, 0xD000000000000019, 0x80000001000B2590);
      v61 = _convertErrorToNSError(_:)();
      (a3)[2](a3, v61);

      _Block_release(a3);
      return;
    }

LABEL_27:
    swift_once();
    goto LABEL_17;
  }

  v70 = v13;
  v71 = v12;
  _Block_copy(a3);
  v19 = qword_1000DBA10;

  if (v19 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_100007DE8(v20, qword_1000E6D18);

  v21 = Logger.logObject.getter();
  v22 = a1;
  v23 = static os_log_type_t.debug.getter();

  v24 = os_log_type_enabled(v21, v23);
  v73 = v16;
  v74 = a3;
  v75 = a2;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v91[0] = v26;
    *v25 = 136315138;
    v27 = Array.description.getter();
    v29 = sub_1000170D4(v27, v28, v91);

    *(v25 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v21, v23, "SportsKitRequestXPCSession: Unregistering for events %s", v25, 0xCu);
    sub_100008A94(v26);
  }

  v30 = *(v22 + 16);
  v72 = v22;
  if (v30)
  {
    v94 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v82 = v75 + OBJC_IVAR____TtC7sportsd26SportsKitRequestXPCSession_subscriptionOperation;
    v31 = *(v75 + OBJC_IVAR____TtC7sportsd26SportsKitRequestXPCSession_subscriptionOperation + 40);
    v80 = (v6 + 8);
    v81 = v31;
    v32 = (v22 + 40);
    while (1)
    {
      v34 = *(v32 - 1);
      v33 = *v32;
      v35 = v82;
      sub_10000A898(v82, v91);
      sub_10000A898(v35 + 96, &v92);
      sub_10000A898(v35 + 136, v93);
      a3 = v81;
      v91[5] = v81;
      v93[5] = v83;
      v93[6] = v17;
      v93[7] = v34;
      v93[8] = v33;

      v36 = v84;
      Date.init()();
      Date.timeIntervalSince1970.getter();
      v38 = v37;
      (*v80)(v36, v85);
      v39 = v38 * 1000.0;
      if (COERCE__INT64(fabs(v38 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        break;
      }

      if (v39 <= -1.0)
      {
        goto LABEL_25;
      }

      if (v39 >= 1.84467441e19)
      {
        goto LABEL_26;
      }

      v93[9] = v39;
      v40 = type metadata accessor for ActivityAuthorization();
      v41 = [objc_allocWithZone(v40) init];
      v42 = sub_1000499E0();
      v86 = v43;
      v90[3] = v40;
      v90[4] = &off_1000D1900;
      v90[0] = v41;
      type metadata accessor for ActivityCapUtility();
      v44 = v30;
      v45 = v17;
      v46 = swift_allocObject();
      v47 = sub_10000B90C(v90, v40);
      v48 = *(*(v40 - 1) + 64);
      v49 = __chkstk_darwin(v47);
      v51 = (&v69 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v52 + 16))(v51, v49);
      v53 = *v51;
      v88 = v40;
      v89 = &off_1000D1900;

      *&v87 = v53;
      sub_10000AC3C(&v87, v46 + 16);
      v54 = v86;
      *(v46 + 56) = v42;
      *(v46 + 64) = v54;
      sub_100008A94(v90);
      v93[10] = v46;
      v17 = v45;
      sub_10002F5FC();
      sub_10003248C(v91);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v55 = v94[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v32 += 2;
      v30 = v44 - 1;
      if (v44 == 1)
      {

        v56 = v94;
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v56 = _swiftEmptyArrayStorage;
LABEL_23:
  v91[0] = v56;
  sub_100003998(&qword_1000DCC18, &qword_1000AB790);
  sub_100003998(&qword_1000DDB58, &unk_1000AC650);
  sub_10000A6FC(&qword_1000DCC20, &qword_1000DCC18, &qword_1000AB790);
  sub_10000A6FC(&qword_1000DDB60, &qword_1000DDB58, &unk_1000AC650);
  v62 = v76;
  Publishers.MergeMany.init<A>(_:)();
  sub_10000A6FC(&qword_1000DDB68, &qword_1000DDB38, &qword_1000AC630);
  v63 = v78;
  v64 = v79;
  Publisher.collect()();
  (*(v77 + 8))(v62, v63);
  v65 = swift_allocObject();
  v67 = v72;
  v66 = v73;
  v65[2] = sub_100079304;
  v65[3] = v66;
  v65[4] = v67;
  sub_10000A6FC(&qword_1000DDB70, &qword_1000DDB40, &qword_1000AC638);

  v68 = v71;
  Publisher.sink(receiveCompletion:receiveValue:)();

  (*(v70 + 8))(v64, v68);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  _Block_release(v74);
}

uint64_t sub_100072478(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_1000DBA10 != -1)
  {
    sub_10007932C();
  }

  v6 = type metadata accessor for Logger();
  sub_10005B0AC(v6, qword_1000E6D18);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "SportsKitRequestXPCSession: Unsubscribing from all events", v9, 2u);
    sub_10005AFC4();
  }

  v10 = v3 + OBJC_IVAR____TtC7sportsd26SportsKitRequestXPCSession_subscriptionOperation;
  sub_10000A898(v3 + OBJC_IVAR____TtC7sportsd26SportsKitRequestXPCSession_subscriptionOperation, v14);
  sub_10000A898(v10 + 96, &v15);
  sub_100032104();
  sub_10005B070();
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;

  sub_100003998(&qword_1000DCC18, &qword_1000AB790);
  sub_10007934C();
  sub_10000A6FC(v12, &qword_1000DCC18, &qword_1000AB790);
  Publisher.sink(receiveCompletion:receiveValue:)();

  sub_100079128(v14);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

uint64_t sub_10007266C(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  if (!*a1)
  {
    return a2(0);
  }

  v4 = *a1;
  swift_errorRetain();
  if (qword_1000DBA20 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100007DE8(v5, qword_1000E6D48);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = Error.localizedDescription.getter();
    v12 = sub_1000170D4(v10, v11, &v14);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "Tempo /unregister all failed - %s", v8, 0xCu);
    sub_100008A94(v9);
  }

  swift_errorRetain();
  a2(v3);
}

uint64_t sub_1000728C0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v49 = type metadata accessor for Date();
  v9 = sub_10000AC48(v49);
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v9);
  sub_10000ADA0();
  v51 = v15 - v14;
  refreshed = type metadata accessor for SportsManager.RefreshOptions();
  v16 = sub_10000AC48(refreshed);
  v50 = v17;
  v19 = *(v18 + 64);
  __chkstk_darwin(v16);
  sub_10000ADA0();
  v47 = v21 - v20;
  v48 = type metadata accessor for SubscriptionRefreshOperation();
  sub_10000ACDC(v48);
  v23 = *(v22 + 64);
  __chkstk_darwin(v24);
  sub_10000ADA0();
  v27 = v26 - v25;
  if (qword_1000DBA10 != -1)
  {
    sub_10007932C();
  }

  v28 = type metadata accessor for Logger();
  sub_10005B0AC(v28, qword_1000E6D18);

  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.debug.getter();

  v46 = a1;
  if (sub_100079564())
  {
    v45 = v30;
    v31 = swift_slowAlloc();
    v55[0] = swift_slowAlloc();
    *v31 = 136315394;
    *(v31 + 4) = sub_1000170D4(a1, a2, v55);
    *(v31 + 12) = 2080;
    v32 = String.init<A>(reflecting:)();
    v34 = a2;
    v35 = sub_1000170D4(v32, v33, v55);

    *(v31 + 14) = v35;
    a2 = v34;
    _os_log_impl(&_mh_execute_header, v29, v45, "SportsKitRequestXPCSession: Refreshing event '%s' with options %s", v31, 0x16u);
    swift_arrayDestroy();
    sub_10000B008();
    sub_10000B008();
  }

  v36 = v6 + OBJC_IVAR____TtC7sportsd26SportsKitRequestXPCSession_subscriptionOperation;
  SportsManager.RefreshOptions.init(rawValue:)();
  v37 = *(v36 + 40);
  v38 = *(v36 + 48);
  sub_10000A898(v36 + 96, v27 + 16);
  (*(v50 + 16))(v27 + *(v48 + 36), v47, refreshed);
  *v27 = v37;
  *(v27 + 8) = v38;
  *(v27 + 56) = v46;
  *(v27 + 64) = a2;
  *(v27 + 72) = 1;
  v39 = *(v48 + 40);

  Date.init()();
  sub_10008C99C();
  v41 = v40;
  (*(v11 + 8))(v51, v49);
  (*(v50 + 8))(v47, refreshed);
  *(v27 + v39) = v41;
  v55[0] = sub_1000A25EC();
  sub_10005B070();
  v42 = swift_allocObject();
  *(v42 + 16) = a4;
  *(v42 + 24) = a5;

  sub_100003998(&qword_1000DCC18, &qword_1000AB790);
  sub_10007934C();
  sub_10000A6FC(v43, &qword_1000DCC18, &qword_1000AB790);
  Publisher.sink(receiveCompletion:receiveValue:)();

  sub_100079224(v27, type metadata accessor for SubscriptionRefreshOperation);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

uint64_t sub_100072D90()
{
  if (qword_1000DBA80 != -1)
  {
    sub_1000794D0();
  }

  return sub_10009E64C();
}

void sub_100072E38(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (**a6)(void, void))
{
  v45 = a1;
  v46 = a2;
  v9 = sub_100003998(&qword_1000DC5A0, &unk_1000AB0E0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9 - 8);
  v13 = &v40 - v12;
  v14 = swift_allocObject();
  *(v14 + 16) = a6;
  v15 = *(a5 + OBJC_IVAR____TtC7sportsd26SportsKitRequestXPCSession_bundleId + 8);
  if (!v15)
  {
    goto LABEL_6;
  }

  v16 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v16 = *(a5 + OBJC_IVAR____TtC7sportsd26SportsKitRequestXPCSession_bundleId) & 0xFFFFFFFFFFFFLL;
  }

  if (v16)
  {
    v17 = v14;
    v42 = *(a5 + OBJC_IVAR____TtC7sportsd26SportsKitRequestXPCSession_bundleId);
    v18 = swift_allocObject();
    v43 = v10;
    v44 = v18;
    v19 = v18;
    swift_unknownObjectWeakInit();
    v20 = swift_allocObject();
    v21 = v45;
    v22 = v46;
    v20[2] = v19;
    v20[3] = v21;
    v40 = sub_100079304;
    v20[4] = v22;
    v20[5] = sub_100079304;
    v20[6] = v17;
    v23 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_10000A744(a4, v13, &qword_1000DC5A0, &unk_1000AB0E0);
    v24 = *(v43 + 80);
    v41 = a6;
    v25 = (v24 + 40) & ~v24;
    v26 = (v11 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
    v43 = a5;
    v27 = swift_allocObject();
    v28 = v42;
    v27[2] = v23;
    v27[3] = v28;
    v27[4] = v15;
    sub_100078DFC(v13, v27 + v25);
    v29 = (v27 + v26);
    *v29 = v45;
    v29[1] = v22;
    v30 = (v27 + ((v26 + 23) & 0xFFFFFFFFFFFFFFF8));
    v31 = v40;
    *v30 = v40;
    v30[1] = v17;
    v32 = swift_allocObject();
    *(v32 + 16) = v31;
    *(v32 + 24) = v17;
    swift_retain_n();
    swift_bridgeObjectRetain_n();
    v33 = v41;
    _Block_copy(v41);

    sub_100074480(sub_100078CB4, v20, sub_100078E6C, v27, sub_100078F4C, v32);

    _Block_release(v33);
  }

  else
  {
LABEL_6:
    _Block_copy(a6);
    if (qword_1000DBA10 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_100007DE8(v34, qword_1000E6D18);

    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v47 = v38;
      *v37 = 136315138;
      *(v37 + 4) = sub_1000170D4(v45, v46, &v47);
      _os_log_impl(&_mh_execute_header, v35, v36, "SportsKitRequestXPCSession: Creating activity for event %s, missing process bundle id", v37, 0xCu);
      sub_100008A94(v38);
    }

    sub_100029E04(1u, 0xD000000000000019, 0x80000001000B2590);
    v39 = _convertErrorToNSError(_:)();
    (a6)[2](a6, v39);

    _Block_release(a6);
  }
}

void sub_1000732F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_1000795F0();
  a17 = v18;
  a18 = v19;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = sub_100003998(&qword_1000DC5A0, &unk_1000AB0E0);
  v31 = *(*(v30 - 8) + 64);
  __chkstk_darwin(v30 - 8);
  v33 = &a9 - v32;
  v34 = type metadata accessor for Date();
  sub_100008E2C(v33, 1, 1, v34);
  _Block_copy(v21);
  sub_100072E38(v29, v27, v25, v33, v23, v21);
  sub_10000A7A8(v33, &qword_1000DC5A0, &unk_1000AB0E0);
  _Block_release(v21);
  sub_100079604();
}

uint64_t sub_100073484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  return _swift_task_switch(sub_1000734AC, 0, 0);
}

uint64_t sub_1000734AC()
{
  sub_10001C524();
  v1 = *(sub_1000793B8(*(v0 + 16)) + 16);
  sub_100064354();
  v9 = v2 + *v2;
  v4 = *(v3 + 4);
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  *v5 = v0;
  v6 = sub_100079398(v5);

  return v7(v6);
}

uint64_t sub_1000735AC()
{
  sub_10001BEC4();
  sub_10001BF54();
  sub_10001BED0();
  *v3 = v2;
  v5 = *(v4 + 56);
  v6 = *v1;
  sub_10001BE74();
  *v7 = v6;
  *(v8 + 64) = v0;

  sub_10001C740();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_1000736A8()
{
  sub_10001C370();
  if (qword_1000DBA38 != -1)
  {
    sub_10005AD5C();
  }

  v2 = *(v0 + 32);
  v3 = type metadata accessor for Logger();
  sub_100007DE8(v3, qword_1000E6D90);
  sub_10001C418();

  v4 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  sub_1000643EC();

  if (sub_100079564())
  {
    v6 = *(v0 + 24);
    v5 = *(v0 + 32);
    sub_10001C4D0();
    sub_10007951C();
    sub_100079594();
    *(v1 + 4) = sub_1000794A0(4.8149e-34, v7);
    sub_100079480(&_mh_execute_header, v8, v9, "Started live activity for event %s with app intent");
    sub_1000793E0();
    sub_10005AFC4();
  }

  v10 = *(v0 + 48);
  (*(v0 + 40))(0);
  sub_10001BEDC();

  return v11();
}

uint64_t sub_1000737BC()
{
  sub_10001C524();
  if (qword_1000DBA38 != -1)
  {
    sub_10005AD5C();
  }

  v3 = v1[8];
  v4 = type metadata accessor for Logger();
  sub_100007DE8(v4, qword_1000E6D90);
  sub_10001C418();
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  sub_1000643EC();

  if (os_log_type_enabled(v5, v0))
  {
    v6 = v1[8];
    sub_10001C4D0();
    v7 = sub_100079548();
    *v2 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v2 + 4) = v8;
    *v7 = v8;
    sub_10006442C(&_mh_execute_header, v9, v10, "Cannot start live activity: %@");
    sub_10000A7A8(v7, &unk_1000DD790, &unk_1000AB7A0);
    sub_10005AFC4();
    sub_10000B008();
  }

  v11 = v1[8];
  v13 = v1[5];
  v12 = v1[6];

  swift_errorRetain();
  v13(v11);

  sub_10001BEDC();

  return v14();
}

void sub_10007391C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  v94 = a8;
  v93 = a7;
  v97 = a6;
  v96 = a5;
  ActivityOperation = type metadata accessor for SubscriptionCreateActivityOperation();
  v11 = *(*(ActivityOperation - 8) + 64);
  __chkstk_darwin(ActivityOperation);
  v13 = &v85[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_100003998(&qword_1000DC5A0, &unk_1000AB0E0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v85[-v16];
  v18 = type metadata accessor for Date();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v85[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v23);
  v25 = &v85[-v24];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v90 = v25;
    v95 = Strong;

    v89 = a2;
    v101._countAndFlagsBits = a2;
    v27 = a3;
    v101._object = a3;
    v28 = sub_10004B99C(v101);
    if (v28 == 4)
    {
      goto LABEL_7;
    }

    v29 = v28;
    if (qword_1000DB9E8 != -1)
    {
      swift_once();
    }

    if ((sub_100049DE4(v29, qword_1000E6CF8) & 1) == 0)
    {
LABEL_7:
      v30 = sub_1000499E0();
      v27 = v31;
    }

    else
    {

      v30 = v89;
    }

    sub_10000A744(a4, v17, &qword_1000DC5A0, &unk_1000AB0E0);
    v32 = sub_100008B84(v17, 1, v18);
    v33 = v90;
    v91 = v27;
    if (v32 == 1)
    {
      sub_10000A7A8(v17, &qword_1000DC5A0, &unk_1000AB0E0);
      if (qword_1000DBA10 != -1)
      {
        swift_once();
      }

      v34 = type metadata accessor for Logger();
      sub_100007DE8(v34, qword_1000E6D18);

      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v99[0] = v38;
        *v37 = 136315138;
        *(v37 + 4) = sub_1000170D4(v96, v97, v99);
        _os_log_impl(&_mh_execute_header, v35, v36, "SportsKitRequestXPCSession: Creating activity for event %s", v37, 0xCu);
        sub_100008A94(v38);
      }

      v39 = v95;
    }

    else
    {
      v88 = a4;
      (*(v19 + 32))(v90, v17, v18);
      if (qword_1000DBA10 != -1)
      {
        swift_once();
      }

      v40 = type metadata accessor for Logger();
      sub_100007DE8(v40, qword_1000E6D18);
      (*(v19 + 16))(v22, v33, v18);
      v41 = v22;

      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v89 = v30;
        v45 = v44;
        v87 = swift_slowAlloc();
        v99[0] = v87;
        *v45 = 136315394;
        *(v45 + 4) = sub_1000170D4(v96, v97, v99);
        *(v45 + 12) = 2080;
        sub_100078F9C(&qword_1000DE690, &type metadata accessor for Date);
        v86 = v43;
        v46 = dispatch thunk of CustomStringConvertible.description.getter();
        v48 = v47;
        v49 = *(v19 + 8);
        v49(v41, v18);
        v50 = sub_1000170D4(v46, v48, v99);

        *(v45 + 14) = v50;
        _os_log_impl(&_mh_execute_header, v42, v86, "SportsKitRequestXPCSession: Scheduling activity for event %s, scheduled date: %s", v45, 0x16u);
        swift_arrayDestroy();

        v30 = v89;

        v49(v33, v18);
      }

      else
      {

        v51 = *(v19 + 8);
        v51(v22, v18);
        v51(v33, v18);
      }

      v39 = v95;
      a4 = v88;
    }

    v52 = *&v39[OBJC_IVAR____TtC7sportsd26SportsKitRequestXPCSession_activityCapUtility];

    v53 = sub_100066914();

    if (v53)
    {
      v54 = 1;
    }

    else
    {
      v54 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    sub_10000BC30(&v39[OBJC_IVAR____TtC7sportsd26SportsKitRequestXPCSession_subscriptionOperation], v99);
    sub_10000BC30(v99, v13);
    sub_10006F7C0(v13 + 23);
    if (qword_1000DB9B8 != -1)
    {
      swift_once();
    }

    v55 = qword_1000E6CC0;
    *(v13 + 31) = type metadata accessor for BagProvider();
    *(v13 + 32) = &off_1000D0860;
    *(v13 + 28) = v55;
    v56 = type metadata accessor for AccountManager();
    v57 = swift_allocObject();
    *(v13 + 36) = v56;
    *(v13 + 37) = &off_1000D0550;
    *(v13 + 33) = v57;
    v58 = v99[5];
    sub_10000A898(&v100, (v13 + 312));
    if (v54)
    {
      v59 = 0;
    }

    else
    {
      v59 = _stringCompareWithSmolCheck(_:_:expecting:)() ^ 1;
    }

    v60 = ActivityOperation;
    sub_10000A744(a4, &v13[*(ActivityOperation + 48)], &qword_1000DC5A0, &unk_1000AB0E0);
    *(v13 + 38) = v58;
    v13[352] = v59 & 1;
    *(v13 + 45) = 0;
    *(v13 + 46) = 0;
    *(v13 + 47) = 0;
    *(v13 + 48) = 1;
    *(v13 + 392) = 0u;
    *(v13 + 408) = 0u;
    *(v13 + 424) = 0u;
    *(v13 + 440) = 0u;
    *(v13 + 456) = 0u;
    *(v13 + 60) = 0;
    *(v13 + 61) = 0;
    *(v13 + 59) = 1;
    v13[496] = 0;
    v61 = &v13[v60[13]];
    *v61 = 0xD000000000000011;
    v61[1] = 0x80000001000B0480;
    v62 = &v13[v60[14]];
    v63 = v91;
    *v62 = v30;
    v62[1] = v63;
    v64 = &v13[v60[15]];
    v65 = v96;
    v66 = v97;
    *v64 = v96;
    v64[1] = v66;
    v13[v60[16]] = v54 & 1;
    ActivityOperation = v60[17];
    v67 = type metadata accessor for ActivityAuthorization();
    v68 = objc_allocWithZone(v67);

    v69 = [v68 init];
    v70 = sub_1000499E0();
    v72 = v71;
    v98[4] = &off_1000D1900;
    v98[3] = v67;
    v98[0] = v69;
    type metadata accessor for ActivityCapUtility();
    v73 = swift_allocObject();
    v74 = sub_10000B90C(v98, v67);
    v75 = *(*(v67 - 1) + 64);
    v76 = __chkstk_darwin(v74);
    v78 = &v85[-((v77 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v79 + 16))(v78, v76);
    v80 = *v78;
    v73[5] = v67;
    v73[6] = &off_1000D1900;
    v73[7] = v70;
    v73[2] = v80;
    v73[8] = v72;
    sub_100008A94(v98);

    sub_10000BCF0(v99);
    *&v13[ActivityOperation] = v73;
    v81 = sub_10008CAA4(0);
    sub_100079224(v13, type metadata accessor for SubscriptionCreateActivityOperation);
    v98[0] = v81;
    v82 = swift_allocObject();
    v82[2] = v65;
    v82[3] = v66;
    v83 = v94;
    v82[4] = v93;
    v82[5] = v83;

    sub_100003998(&qword_1000DCC18, &qword_1000AB790);
    sub_10000A6FC(&qword_1000DCC20, &qword_1000DCC18, &qword_1000AB790);
    Publisher.sink(receiveCompletion:receiveValue:)();

    v84 = v95;
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();
  }
}

uint64_t sub_100074480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = sub_100003998(&qword_1000DC5A8, &qword_1000AAFD0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v21 - v15;
  v17 = type metadata accessor for TaskPriority();
  sub_100008E2C(v16, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = v6;
  v18[5] = a1;
  v18[6] = a2;
  v18[7] = a3;
  v18[8] = a4;
  v18[9] = a5;
  v18[10] = a6;
  v19 = v6;

  sub_10004A77C();
}

uint64_t sub_100074704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_10001C594();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_10007957C();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = a1;
  v10[4] = a2;
  v10[5] = a4;
  v10[6] = a5;
  sub_10001C594();
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_10007957C();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = a1;
  v12[4] = a2;
  v12[5] = a4;
  v12[6] = a5;
  sub_10005B070();
  v13 = swift_allocObject();
  *(v13 + 16) = a4;
  *(v13 + 24) = a5;
  swift_retain_n();
  swift_bridgeObjectRetain_n();

  sub_100074480(sub_1000789E8, v10, sub_100078A34, v12, sub_100079300, v13);
}

void sub_1000748C4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = _convertErrorToNSError(_:)();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

uint64_t sub_100074928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  return _swift_task_switch(sub_100074950, 0, 0);
}

uint64_t sub_100074950()
{
  sub_10001C524();
  v1 = *(sub_1000793B8(*(v0 + 16)) + 24);
  sub_100064354();
  v9 = v2 + *v2;
  v4 = *(v3 + 4);
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  *v5 = v0;
  v6 = sub_100079398(v5);

  return v7(v6);
}

uint64_t sub_100074A50()
{
  sub_10001BEC4();
  sub_10001BF54();
  sub_10001BED0();
  *v3 = v2;
  v5 = *(v4 + 56);
  v6 = *v1;
  sub_10001BE74();
  *v7 = v6;
  *(v8 + 64) = v0;

  sub_10001C740();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_100074B4C()
{
  sub_10001C370();
  if (qword_1000DBA38 != -1)
  {
    sub_10005AD5C();
  }

  v2 = *(v0 + 32);
  v3 = type metadata accessor for Logger();
  sub_100007DE8(v3, qword_1000E6D90);
  sub_10001C418();

  v4 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  sub_1000643EC();

  if (sub_100079564())
  {
    v6 = *(v0 + 24);
    v5 = *(v0 + 32);
    sub_10001C4D0();
    sub_10007951C();
    sub_100079594();
    *(v1 + 4) = sub_1000794A0(4.8149e-34, v7);
    sub_100079480(&_mh_execute_header, v8, v9, "Ended live activity for event %s with app intent");
    sub_1000793E0();
    sub_10005AFC4();
  }

  v10 = *(v0 + 48);
  (*(v0 + 40))(0);
  sub_10001BEDC();

  return v11();
}

uint64_t sub_100074C60()
{
  sub_10001C524();
  if (qword_1000DBA38 != -1)
  {
    sub_10005AD5C();
  }

  v3 = v1[8];
  v4 = type metadata accessor for Logger();
  sub_100007DE8(v4, qword_1000E6D90);
  sub_10001C418();
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  sub_1000643EC();

  if (os_log_type_enabled(v5, v0))
  {
    v6 = v1[8];
    sub_10001C4D0();
    v7 = sub_100079548();
    *v2 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v2 + 4) = v8;
    *v7 = v8;
    sub_10006442C(&_mh_execute_header, v9, v10, "Cannot end live activity: %@");
    sub_10000A7A8(v7, &unk_1000DD790, &unk_1000AB7A0);
    sub_10005AFC4();
    sub_10000B008();
  }

  v11 = v1[8];
  v13 = v1[5];
  v12 = v1[6];

  swift_errorRetain();
  v13(v11);

  sub_10001BEDC();

  return v14();
}

void sub_100074DC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100003998(&qword_1000DC5A8, &qword_1000AAFD0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v21 - v11;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v15 = type metadata accessor for TaskPriority();
    sub_100008E2C(v12, 1, 1, v15);
    v16 = qword_1000DB9F0;

    v17 = v14;

    if (v16 != -1)
    {
      swift_once();
    }

    v18 = qword_1000E6D00;
    v19 = sub_100078F9C(&qword_1000DDA50, type metadata accessor for LiveActivityActor);
    v20 = swift_allocObject();
    v20[2] = v18;
    v20[3] = v19;
    v20[4] = a2;
    v20[5] = a3;
    v20[6] = v17;
    v20[7] = a4;
    v20[8] = a5;

    sub_10004A77C();
  }
}

uint64_t sub_100074F8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[33] = a7;
  v8[34] = a8;
  v8[31] = a5;
  v8[32] = a6;
  v8[30] = a4;
  if (qword_1000DB9F0 != -1)
  {
    swift_once();
  }

  v9 = qword_1000E6D00;

  return _swift_task_switch(sub_10007502C, v9, 0);
}

uint64_t sub_10007502C()
{
  if (qword_1000DBA10 != -1)
  {
    sub_10007932C();
  }

  v2 = v0[31];
  v3 = type metadata accessor for Logger();
  sub_100007DE8(v3, qword_1000E6D18);
  sub_10001C418();

  v4 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  sub_1000643EC();

  if (sub_100079564())
  {
    v6 = v0[30];
    v5 = v0[31];
    sub_10001C4D0();
    sub_10007951C();
    sub_100079594();
    *(v1 + 4) = sub_1000794A0(4.8149e-34, v7);
    sub_100079480(&_mh_execute_header, v8, v9, "SportsKitRequestXPCSession: Destroying activity for event %s");
    sub_1000793E0();
    sub_10005AFC4();
  }

  v11 = v0[33];
  v10 = v0[34];
  v12 = v0[31];
  v13 = v0[30];
  sub_10000BC30(v0[32] + OBJC_IVAR____TtC7sportsd26SportsKitRequestXPCSession_subscriptionOperation, (v0 + 2));
  v0[25] = 0xD000000000000011;
  v0[26] = 0x80000001000B0480;
  v0[27] = v13;
  v0[28] = v12;

  v0[29] = sub_10009BC68();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = v12;
  v14[4] = v11;
  v14[5] = v10;

  sub_100003998(&qword_1000DCC18, &qword_1000AB790);
  sub_10007934C();
  sub_10000A6FC(v15, &qword_1000DCC18, &qword_1000AB790);
  Publisher.sink(receiveCompletion:receiveValue:)();

  sub_100078B54((v0 + 2));
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  sub_10001BEDC();

  return v16();
}

uint64_t sub_10007528C(uint64_t *a1, uint64_t a2, unint64_t a3, void (*a4)(void), uint64_t a5, const char *a6, const char *a7)
{
  v10 = *a1;
  if (*a1)
  {
    v12 = *a1;
    swift_errorRetain();
    if (qword_1000DBA38 != -1)
    {
      sub_10005AD5C();
    }

    v13 = type metadata accessor for Logger();
    sub_10005B0AC(v13, qword_1000E6D90);
    swift_errorRetain();

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v26 = a4;
      v16 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v16 = 136315394;
      *(v16 + 4) = sub_1000170D4(a2, a3, &v27);
      *(v16 + 12) = 2080;
      swift_getErrorValue();
      v17 = Error.localizedDescription.getter();
      v19 = sub_1000170D4(v17, v18, &v27);

      *(v16 + 14) = v19;
      _os_log_impl(&_mh_execute_header, v14, v15, a6, v16, 0x16u);
      swift_arrayDestroy();
      sub_10000B008();
      a4 = v26;
      sub_10000B008();
    }

    swift_errorRetain();
    a4(v10);
  }

  else
  {
    if (qword_1000DBA38 != -1)
    {
      sub_10005AD5C();
    }

    v22 = type metadata accessor for Logger();
    sub_10005B0AC(v22, qword_1000E6D90);

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();

    if (sub_100079564())
    {
      v25 = sub_10001C4D0();
      v27 = swift_slowAlloc();
      *v25 = 136315138;
      *(v25 + 4) = sub_1000170D4(a2, a3, &v27);
      _os_log_impl(&_mh_execute_header, v23, v24, a7, v25, 0xCu);
      sub_1000793E0();
      sub_10000B008();
    }

    return (a4)(0);
  }
}

void sub_100075548()
{
  sub_1000795F0();
  v1 = v0;
  v3 = v2;
  if (qword_1000DBA38 != -1)
  {
    sub_10005AD5C();
  }

  v4 = type metadata accessor for Logger();
  sub_10005B0AC(v4, qword_1000E6D90);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = sub_10001C4D0();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "Cannot check if app intents are supported: %@", v7, 0xCu);
    sub_10000A7A8(v8, &unk_1000DD790, &unk_1000AB7A0);
    sub_10000B008();
    sub_10005AFC4();
  }

  v1(v3);
  sub_100079604();
}

uint64_t sub_1000756B4()
{
  sub_1000795F0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  sub_10001C594();
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_10007957C();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = v7;
  v9[4] = v5;
  v9[5] = v3;
  v9[6] = v1;
  v10 = swift_allocObject();
  v10[2] = v7;
  v10[3] = v5;
  v10[4] = v3;
  v10[5] = v1;
  sub_10005B070();
  v11 = swift_allocObject();
  *(v11 + 16) = v3;
  *(v11 + 24) = v1;
  swift_retain_n();
  swift_bridgeObjectRetain_n();

  sub_100074480(sub_1000786D0, v9, sub_1000786F0, v10, sub_1000786FC, v11);

  sub_100079604();
}

uint64_t sub_100075834()
{
  sub_1000795F0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = _Block_copy(v8);
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  sub_10001C594();
  v13 = swift_allocObject();
  *(v13 + 16) = v9;
  v14 = v7;
  v1(v10, v12, v5, v3, v13);

  sub_100079604();
}

void sub_1000758F0()
{
  sub_1000795F0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_100003998(&qword_1000DC5A8, &qword_1000AAFD0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v16 - v10;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v14 = type metadata accessor for TaskPriority();
    sub_100008E2C(v11, 1, 1, v14);
    v15 = swift_allocObject();
    v15[2] = 0;
    v15[3] = 0;
    v15[4] = v13;
    v15[5] = v7;
    v15[6] = v5;
    v15[7] = v3;
    v15[8] = v1;

    sub_10004A77C();
  }

  sub_100079604();
}

uint64_t sub_100075A1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  return _swift_task_switch(sub_100075A44, 0, 0);
}

uint64_t sub_100075A44()
{
  sub_10001C524();
  v1 = *(sub_1000793B8(*(v0 + 16)) + 32);
  sub_100064354();
  v9 = v2 + *v2;
  v4 = *(v3 + 4);
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  *v5 = v0;
  v6 = sub_100079398(v5);

  return v7(v6);
}

uint64_t sub_100075B44()
{
  sub_10001BEC4();
  sub_10001BF54();
  sub_10001BED0();
  *v3 = v2;
  v5 = *(v4 + 56);
  *v3 = *v1;
  *(v2 + 72) = v6;
  *(v2 + 64) = v0;

  sub_10001C740();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_100075C4C()
{
  sub_10001BF48();
  if (qword_1000DBA38 != -1)
  {
    sub_10005AD5C();
  }

  v1 = type metadata accessor for Logger();
  sub_10005B0AC(v1, qword_1000E6D90);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 72);
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "Live activity exists: %{BOOL}d", v5, 8u);
    sub_10000B008();
  }

  v6 = *(v0 + 72);
  v8 = *(v0 + 40);
  v7 = *(v0 + 48);

  v8(v6);
  sub_10001BEDC();

  return v9();
}

uint64_t sub_100075D60()
{
  sub_10001C524();
  if (qword_1000DBA38 != -1)
  {
    sub_10005AD5C();
  }

  v3 = v1[8];
  v4 = type metadata accessor for Logger();
  sub_100007DE8(v4, qword_1000E6D90);
  sub_10001C418();
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  sub_1000643EC();

  if (os_log_type_enabled(v5, v0))
  {
    v6 = v1[8];
    sub_10001C4D0();
    v7 = sub_100079548();
    *v2 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v2 + 4) = v8;
    *v7 = v8;
    sub_10006442C(&_mh_execute_header, v9, v10, "Cannot check for live activity: %@");
    sub_10000A7A8(v7, &unk_1000DD790, &unk_1000AB7A0);
    sub_10005AFC4();
    sub_10000B008();
  }

  v11 = v1[8];
  v13 = v1[5];
  v12 = v1[6];

  v13(0);

  sub_10001BEDC();

  return v14();
}

uint64_t sub_100075EB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100003998(&qword_1000DC5A8, &qword_1000AAFD0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v15 - v10;
  v12 = type metadata accessor for TaskPriority();
  sub_100008E2C(v11, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = a1;
  v13[5] = a2;
  v13[6] = a3;
  v13[7] = a4;

  sub_10004A77C();
}

uint64_t sub_100075FB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return _swift_task_switch(sub_100075FDC, 0, 0);
}

uint64_t sub_100075FDC()
{
  sub_10001C370();
  if (qword_1000DBA10 != -1)
  {
    sub_10007932C();
  }

  v2 = v0[3];
  v3 = type metadata accessor for Logger();
  sub_100007DE8(v3, qword_1000E6D18);
  sub_10001C418();

  v4 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  sub_1000643EC();

  if (sub_100079564())
  {
    v6 = v0[2];
    v5 = v0[3];
    sub_10001C4D0();
    sub_10007951C();
    sub_100079594();
    *(v1 + 4) = sub_1000794A0(4.8149e-34, v7);
    sub_100079480(&_mh_execute_header, v8, v9, "SportsKitRequestXPCSession: Checking activity for event %s");
    sub_1000793E0();
    sub_10005AFC4();
  }

  if (qword_1000DBA00 != -1)
  {
    swift_once();
  }

  v0[6] = qword_1000E6D10;
  if (qword_1000DB9F0 != -1)
  {
    swift_once();
  }

  v10 = qword_1000E6D00;

  return _swift_task_switch(sub_10007615C, v10, 0);
}

uint64_t sub_10007615C()
{
  sub_10001BEC4();
  v1 = *(v0 + 48);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  *(v0 + 56) = sub_100052954();
  sub_10001C740();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1000761C8()
{
  sub_10001BEC4();
  v1 = *(v0 + 40);
  (*(v0 + 32))(*(v0 + 56));
  sub_10001BEDC();

  return v2();
}

uint64_t sub_100076228(uint64_t a1, uint64_t (*a2)(void))
{
  if (qword_1000DBA38 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100007DE8(v3, qword_1000E6D90);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Cannot check if app intents are supported: %@", v6, 0xCu);
    sub_10000A7A8(v7, &unk_1000DD790, &unk_1000AB7A0);
  }

  return a2(0);
}

uint64_t sub_1000763C8()
{
  sub_1000795F0();
  v1 = v0;
  v3 = v2;
  v5 = _Block_copy(v4);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  sub_10001C594();
  *(swift_allocObject() + 16) = v5;
  v9 = v3;
  v1(v6, v8);

  sub_100079604();
}

void sub_10007647C(uint64_t a1, void (**a2)(void, void))
{
  if (qword_1000DBA00 != -1)
  {
    swift_once();
  }

  v3 = sub_1000499E0();
  v5 = sub_10004F60C(v3, v4);

  a2[2](a2, v5 & 1);

  _Block_release(a2);
}

uint64_t sub_100076580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = v10;
  v8[8] = v11;
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  return _swift_task_switch(sub_1000765B4, 0, 0);
}

uint64_t sub_1000765B4()
{
  sub_10001C524();
  v3 = *(sub_1000793B8(*(v2 + 16)) + 8);
  sub_100064354();
  v9 = (v4 + *v4);
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  *(v2 + 72) = v7;
  *v7 = v2;
  v7[1] = sub_1000766C4;

  return v9(v0, v1);
}

uint64_t sub_1000766C4()
{
  sub_10001BF48();
  v3 = v2;
  sub_10001BF54();
  v5 = v4;
  sub_10001BED0();
  *v6 = v5;
  v8 = *(v7 + 72);
  v9 = *v1;
  sub_10001BE74();
  *v10 = v9;
  *(v5 + 80) = v0;

  if (!v0)
  {
    *(v5 + 88) = v3 & 1;
  }

  sub_10001C740();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_1000767D8()
{
  sub_10001BEC4();
  v1[12] = v2;
  v1[13] = v0;
  v3 = *(*(sub_100003998(&qword_1000DE688, &qword_1000AE6A0) - 8) + 64) + 15;
  v1[14] = swift_task_alloc();
  v4 = type metadata accessor for CloudChannelSubscription.Demand();
  v1[15] = v4;
  sub_10000AC84(v4);
  v1[16] = v5;
  v7 = *(v6 + 64) + 15;
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  sub_10001C740();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_1000768CC()
{
  v1 = *(v0 + 96);
  v4 = *(v1 + 64);
  v3 = v1 + 64;
  v2 = v4;
  v5 = -1;
  v6 = -1 << *(*(v0 + 96) + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & v2;
  v8 = (63 - v6) >> 6;
  v35 = *(v0 + 128);
  v36 = (v35 + 32);
  v37 = *(v0 + 96);

  v10 = 0;
  v38 = _swiftEmptyArrayStorage;
  while (1)
  {
    v11 = v10;
    *(v0 + 152) = v38;
    if (!v7)
    {
      break;
    }

LABEL_8:
    v13 = *(v0 + 112);
    v12 = *(v0 + 120);
    v14 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v15 = v14 | (v10 << 6);
    v16 = (*(v37 + 48) + 16 * v15);
    v17 = *v16;
    v18 = v16[1];
    v19 = *(*(v37 + 56) + 8 * v15);

    CloudChannelSubscription.Demand.init(key:value:)();
    if (sub_100008B84(v13, 1, v12) == 1)
    {
      result = sub_10000A7A8(*(v0 + 112), &qword_1000DE688, &qword_1000AE6A0);
    }

    else
    {
      v21 = *(v0 + 136);
      v20 = *(v0 + 144);
      v22 = *(v0 + 120);
      v23 = *v36;
      (*v36)(v20, *(v0 + 112), v22);
      v23(v21, v20, v22);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = v38[2];
        sub_100016CFC();
        v38 = v29;
      }

      v24 = v38[2];
      v25 = v24 + 1;
      if (v24 >= v38[3] >> 1)
      {
        sub_100016CFC();
        v25 = v24 + 1;
        v38 = v30;
      }

      v26 = *(v0 + 136);
      v27 = *(v0 + 120);
      v38[2] = v25;
      result = (v23)(v38 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v24, v26, v27);
    }
  }

  while (1)
  {
    v10 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      return result;
    }

    if (v10 >= v8)
    {
      break;
    }

    v7 = *(v3 + 8 * v10);
    ++v11;
    if (v7)
    {
      goto LABEL_8;
    }
  }

  v31 = *(v0 + 96);
  v32 = *(v0 + 104);

  *(v0 + 56) = v38;
  *(v0 + 72) = 0;
  *(v0 + 80) = 0;
  *(v0 + 64) = 0;
  *(v0 + 88) = 0;
  sub_100079430((v32 + OBJC_IVAR____TtC7sportsd26SportsKitRequestXPCSession_subscriptionOperation));
  sub_10000ACDC(v7);
  (*(v33 + 16))();
  sub_1000795D0();
  v34 = swift_task_alloc();
  *(v0 + 160) = v34;
  *v34 = v0;
  sub_100079538(v34);

  return sub_100011358();
}

uint64_t sub_100076BD0()
{
  sub_10001BF48();
  sub_10001BF54();
  v3 = v2;
  sub_10001BED0();
  *v4 = v3;
  v6 = *(v5 + 160);
  v7 = *(v5 + 152);
  v8 = *v1;
  sub_10001BE74();
  *v9 = v8;
  v3[21] = v0;

  if (v0)
  {
    sub_10001C740();

    return _swift_task_switch(v10, v11, v12);
  }

  else
  {
    v14 = v3[17];
    v13 = v3[18];
    v15 = v3[14];
    sub_100008A94(v3 + 2);

    sub_10001BEDC();

    return v16();
  }
}

uint64_t sub_100076D3C()
{
  sub_10001BF48();
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[14];
  sub_100008A94(v0 + 2);

  sub_10001BEDC();
  v5 = v0[21];

  return v4();
}

uint64_t sub_100076E48(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  sub_100003998(&qword_1000DC400, &qword_1000AAEC0);
  v3[4] = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  a3;
  v5 = swift_task_alloc();
  v3[5] = v5;
  *v5 = v3;
  v5[1] = sub_100076F3C;

  return sub_1000767D8();
}

uint64_t sub_100076F3C()
{
  sub_10001C524();
  v2 = v0;
  v3 = *v1;
  v4 = *v1;
  sub_10001BE74();
  *v5 = v4;
  v6 = v3[5];
  v7 = v3[4];
  v8 = v3[2];
  v9 = *v1;
  *v5 = *v1;

  v10 = v3[3];
  if (v2)
  {
    v11 = _convertErrorToNSError(_:)();

    v12 = sub_1000794F0();
    v13(v12, v11);
  }

  else
  {
    v14 = sub_1000794F0();
    v15(v14, 0);
  }

  _Block_release(v4[3]);
  v16 = v9[1];

  return v16();
}

uint64_t sub_1000770C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003998(&qword_1000DC5A8, &qword_1000AAFD0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v12 - v6;
  v8 = type metadata accessor for TaskPriority();
  sub_100008E2C(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a1;
  v9[5] = a2;
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = &unk_1000AE630;
  v10[5] = v9;
  sub_100077EB8(0, 0, v7, &unk_1000AE640, v10);
}

uint64_t sub_1000771D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[15] = a4;
  v5[16] = v4;
  v5[13] = a2;
  v5[14] = a3;
  v5[12] = a1;
  return sub_100079470();
}

uint64_t sub_1000771EC()
{
  sub_10001BF48();
  sub_100079500();
  *(v1 + 88) = 1;
  sub_100079430((v2 + OBJC_IVAR____TtC7sportsd26SportsKitRequestXPCSession_subscriptionOperation));
  sub_10000ACDC(v0);
  (*(v3 + 16))();
  sub_1000795D0();
  v4 = swift_task_alloc();
  *(v1 + 136) = v4;
  *v4 = v1;
  sub_100079538(v4);

  return sub_100011358();
}

uint64_t sub_1000772C4()
{
  sub_10001BEC4();
  sub_10001BF54();
  v3 = v2;
  sub_10001BED0();
  *v4 = v3;
  v6 = *(v5 + 136);
  v7 = *v1;
  sub_10001BE74();
  *v8 = v7;
  *(v3 + 144) = v0;

  if (v0)
  {
    sub_10001C740();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    sub_100008A94((v3 + 16));
    sub_10001BEDC();

    return v12();
  }
}

uint64_t sub_100077404(int a1, int a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v4[4] = v7;
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  v4[5] = v10;
  a4;
  v12 = swift_task_alloc();
  v4[6] = v12;
  *v12 = v4;
  v12[1] = sub_1000792BC;

  return sub_1000771D0(v6, v8, v9, v11);
}

uint64_t sub_100077500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[15] = a4;
  v5[16] = v4;
  v5[13] = a2;
  v5[14] = a3;
  v5[12] = a1;
  return sub_100079470();
}

uint64_t sub_10007751C()
{
  sub_10001BF48();
  sub_100079500();
  *(v1 + 88) = 2;
  sub_100079430((v2 + OBJC_IVAR____TtC7sportsd26SportsKitRequestXPCSession_subscriptionOperation));
  sub_10000ACDC(v0);
  (*(v3 + 16))();
  sub_1000795D0();
  v4 = swift_task_alloc();
  *(v1 + 136) = v4;
  *v4 = v1;
  sub_100079538(v4);

  return sub_100011358();
}

uint64_t sub_1000775F4()
{
  sub_10001BEC4();
  sub_10001BF54();
  v3 = v2;
  sub_10001BED0();
  *v4 = v3;
  v6 = *(v5 + 136);
  v7 = *v1;
  sub_10001BE74();
  *v8 = v7;
  *(v3 + 144) = v0;

  if (v0)
  {
    sub_10001C740();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    sub_100008A94((v3 + 16));
    sub_10001BEDC();

    return v12();
  }
}

uint64_t sub_100077714()
{
  sub_10001BEC4();
  sub_100008A94((v0 + 16));
  sub_10001BEDC();
  v2 = *(v0 + 144);

  return v1();
}

uint64_t sub_100077790(void *a1, int a2, void *a3, void *a4, void *aBlock, uint64_t a6, uint64_t a7)
{
  v11 = _Block_copy(aBlock);
  sub_1000794C0();
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = v11;
  v12[5] = a1;
  v13 = a3;
  v14 = a4;
  v15 = a1;

  return sub_1000770C0(a7, v12);
}

uint64_t sub_100077814(int a1, int a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v4[4] = v7;
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  v4[5] = v10;
  a4;
  v12 = swift_task_alloc();
  v4[6] = v12;
  *v12 = v4;
  v12[1] = sub_100077910;

  return sub_100077500(v6, v8, v9, v11);
}

uint64_t sub_100077910()
{
  sub_10001C370();
  v2 = v0;
  v3 = *v1;
  v4 = *v1;
  sub_10001BE74();
  *v5 = v4;
  v6 = v3[6];
  v7 = v3[5];
  v8 = v3[4];
  v9 = v3[2];
  v10 = *v1;
  *v5 = *v1;

  v11 = v3[3];
  if (v2)
  {
    v12 = _convertErrorToNSError(_:)();

    v13 = sub_1000794F0();
    v14(v13, v12);
  }

  else
  {
    v15 = sub_1000794F0();
    v16(v15, 0);
  }

  _Block_release(v4[3]);
  v17 = v10[1];

  return v17();
}

uint64_t sub_100077ABC()
{
  sub_10001C524();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = sub_100079424(v5);
  *v6 = v7;
  v8 = sub_100079374(v6);

  return v9(v8);
}

uint64_t sub_100077B58(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_100045D48;

  return v7();
}

uint64_t sub_100077C44()
{
  sub_10001C524();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = sub_100079424(v5);
  *v6 = v7;
  v8 = sub_100079374(v6);

  return v9(v8);
}

uint64_t sub_100077CE0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_100011504;

  return v8();
}

uint64_t sub_100077DC8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  v3 = sub_1000794C0();

  return _swift_deallocObject(v3, v4, v5);
}

uint64_t sub_100077E00()
{
  sub_10001C524();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = sub_10003FBF8(v5);
  *v6 = v7;
  v6[1] = sub_100045D48;
  v8 = sub_100079364();

  return v9(v8);
}

uint64_t sub_100077EB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100003998(&qword_1000DC5A8, &qword_1000AAFD0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v25 - v11;
  sub_10000A744(a3, v25 - v11, &qword_1000DC5A8, &qword_1000AAFD0);
  v13 = type metadata accessor for TaskPriority();
  if (sub_100008B84(v12, 1, v13) == 1)
  {
    sub_10000A7A8(v12, &qword_1000DC5A8, &qword_1000AAFD0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  if (*(a5 + 16))
  {
    v14 = *(a5 + 24);
    v15 = *(a5 + 16);
    swift_getObjectType();
    swift_unknownObjectRetain();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_10000A7A8(a3, &qword_1000DC5A8, &qword_1000AAFD0);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10000A7A8(a3, &qword_1000DC5A8, &qword_1000AAFD0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_100078194(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10007828C;

  return v7(a1);
}

uint64_t sub_10007828C()
{
  sub_10001BEC4();
  sub_10001BF54();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_10001BE74();
  *v4 = v3;

  sub_10001BEDC();

  return v5();
}

uint64_t sub_100078370()
{
  sub_10001BF48();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_10003FBF8(v3);
  *v4 = v5;
  v4[1] = sub_100045D48;
  v6 = sub_100079364();

  return v7(v6);
}

uint64_t sub_100078414()
{
  sub_10001BF48();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_10003FBF8(v3);
  *v4 = v5;
  v4[1] = sub_100011504;
  v6 = sub_100079364();

  return v7(v6);
}

uint64_t sub_1000784B8()
{
  _Block_release(*(v0 + 32));

  v1 = sub_1000794C0();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_100078500()
{
  sub_10001C524();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = sub_100079424(v5);
  *v6 = v7;
  v8 = sub_100079374(v6);

  return v9(v8);
}

uint64_t sub_10007859C()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000785E4()
{
  sub_10001BF48();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = sub_100079424(v4);
  *v5 = v6;
  v5[1] = sub_100045D48;

  return sub_100076E48(v1, v2, v3);
}

uint64_t sub_10007869C()
{
  swift_unknownObjectWeakDestroy();
  sub_10001C594();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_100078704()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  v4 = *(v0 + 80);

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_10007875C(uint64_t a1)
{
  v3 = v1[3];
  v15 = v1[2];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  v9 = v1[8];
  v8 = v1[9];
  v10 = v1[10];
  v11 = swift_task_alloc();
  v12 = sub_10003FBF8(v11);
  *v12 = v13;
  v12[1] = sub_100045D48;

  return sub_100076580(a1, v15, v3, v4, v5, v6, v7, v9);
}

uint64_t sub_100078848()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[7];

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100078890()
{
  sub_10001C370();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v6 = v0[6];
  v5 = v0[7];
  v7 = swift_task_alloc();
  v8 = sub_10003FBF8(v7);
  *v8 = v9;
  v10 = sub_100079308(v8);

  return sub_100075FB8(v10, v11, v12, v13, v14, v15, v5);
}

uint64_t sub_10007893C()
{
  sub_1000795B8();
  sub_10001C370();
  sub_100064384();
  v0 = swift_task_alloc();
  v1 = sub_10003FBF8(v0);
  *v1 = v2;
  sub_100079308(v1);
  sub_100079588();
  sub_1000795A0();

  return sub_100075A1C(v3, v4, v5, v6, v7, v8, v9, v10);
}

void sub_100078A08()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  sub_1000758F0();
}

uint64_t sub_100078A44()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  v3 = *(v0 + 64);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100078A94()
{
  sub_1000795B8();
  sub_10001C370();
  sub_100064384();
  v0 = swift_task_alloc();
  v1 = sub_10003FBF8(v0);
  *v1 = v2;
  sub_100079308(v1);
  sub_100079588();
  sub_1000795A0();

  return sub_100074F8C(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_100078BA8()
{
  sub_1000795B8();
  sub_10001C370();
  sub_100064384();
  v0 = swift_task_alloc();
  v1 = sub_10003FBF8(v0);
  *v1 = v2;
  sub_100079308(v1);
  sub_100079588();
  sub_1000795A0();

  return sub_100074928(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_100078C38()
{
  _Block_release(*(v0 + 16));
  sub_10001C594();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_100078C70()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  sub_10007957C();

  return _swift_deallocObject(v4, v5, v6);
}

uint64_t sub_100078CD4()
{
  v1 = sub_100003998(&qword_1000DC5A0, &unk_1000AB0E0);
  sub_10000AC84(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v6 = *(v5 + 64);
  v7 = *(v0 + 16);

  v8 = *(v0 + 32);

  v9 = type metadata accessor for Date();
  if (!sub_100008B84(v0 + v4, 1, v9))
  {
    sub_10000ACDC(v9);
    (*(v10 + 8))(v0 + v4, v9);
  }

  v11 = (v6 + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 23) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v0 + v11 + 8);

  v14 = *(v0 + v12 + 8);

  return _swift_deallocObject(v0, v12 + 16, v3 | 7);
}

uint64_t sub_100078DFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003998(&qword_1000DC5A0, &unk_1000AB0E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_100078E6C()
{
  v1 = sub_100003998(&qword_1000DC5A0, &unk_1000AB0E0);
  sub_10000AC84(v1);
  v3 = v2;
  v5 = v4;
  v6 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = v0[2];
  v10 = v0[3];
  v11 = v0[4];
  v12 = (v0 + v7);
  v13 = *v12;
  v14 = v12[1];
  v15 = *(v0 + v8);
  v16 = *(v0 + v8 + 8);

  sub_10007391C(v9, v10, v11, v0 + v6, v13, v14, v15, v16);
}

uint64_t sub_100078F18()
{
  v1 = *(v0 + 24);

  sub_10005B070();

  return _swift_deallocObject(v2, v3, v4);
}

void sub_100078F4C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_100075548();
}

uint64_t sub_100078F9C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100078FE4()
{
  sub_100008A94((v0 + 24));
  v1 = *(v0 + 64);
  swift_unknownObjectRelease();
  sub_100008A94((v0 + 72));

  return _swift_deallocObject(v0, 112, 7);
}

void sub_100079034(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();
  [a3 set_sourceApplicationBundleIdentifier:v4];
}

uint64_t sub_100079090()
{
  sub_1000795B8();
  sub_10001C370();
  sub_100064384();
  v0 = swift_task_alloc();
  v1 = sub_10003FBF8(v0);
  *v1 = v2;
  sub_100079308(v1);
  sub_100079588();
  sub_1000795A0();

  return sub_100073484(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10007917C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000791E0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = sub_1000794C0();

  return _swift_deallocObject(v3, v4, v5);
}

uint64_t sub_100079224(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_10000ACDC(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_10007932C()
{

  return swift_once();
}

uint64_t sub_100079374(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t sub_100079398(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 32);
  return *(v2 + 24);
}

uint64_t sub_1000793B8@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 + v1 + 32);
  sub_100008614((a1 + v1), *(a1 + v1 + 24));
  return v2;
}

uint64_t sub_1000793E0()
{
  sub_100008A94(v0);
}

uint64_t *sub_100079430(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  sub_100008614(a1, v2);
  v1[5] = v2;
  v1[6] = *(v3 + 8);

  return sub_10003F5B0(v1 + 2);
}

void sub_100079480(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

uint64_t sub_1000794A0(float a1, uint64_t a2, ...)
{
  va_start(va, a2);
  *v4 = a1;

  return sub_1000170D4(v3, v2, va);
}

uint64_t sub_1000794D0()
{

  return swift_once();
}

__n128 sub_100079500()
{
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v3 = *(v0 + 112);
  result = *(v0 + 96);
  *(v0 + 56) = result;
  *(v0 + 72) = v3;
  *(v0 + 80) = v2;
  return result;
}

uint64_t sub_10007951C()
{

  return swift_slowAlloc();
}

uint64_t sub_100079548()
{

  return swift_slowAlloc();
}

BOOL sub_100079564()
{

  return os_log_type_enabled(v1, v0);
}

uint64_t *sub_1000795D0()
{
  result = sub_100008614((v0 + 16), *(v0 + 40));
  v2 = *result;
  return result;
}

unint64_t sub_100079618(uint64_t a1, char a2)
{
  v3 = v2;
  if (*(a1 + 24) == 1)
  {
    sub_10001EF70(a1, &qword_1000DE878, &qword_1000AE970);
    v5 = *v2;
    v6 = sub_1000175AC(a2);
    if (v7)
    {
      v8 = v6;
      v9 = *v3;
      swift_isUniquelyReferenced_nonNull_native();
      sub_10007BF08();
      v10 = sub_100003998(&qword_1000DD7C0, &unk_1000AC128);
      sub_10007BF1C(v10, v11, v12, v13, v14, v15, v16, v17, v24, v25);
      v18 = (*(v26 + 56) + 32 * v8);
      v19 = v18[1];
      v28 = *v18;
      v29 = v19;
      sub_100003998(&qword_1000DBD08, &qword_1000AA690);
      sub_10001DA90();
      _NativeDictionary._delete(at:)();
      *v3 = v26;
    }

    else
    {
      v28 = 0uLL;
      *&v29 = 0;
      *(&v29 + 1) = 1;
    }

    return sub_10001EF70(&v28, &qword_1000DE878, &qword_1000AE970);
  }

  else
  {
    v20 = *(a1 + 16);
    v28 = *a1;
    v29 = v20;
    v21 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v2;
    result = sub_1000869D0(&v28, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v27;
  }

  return result;
}

uint64_t sub_10007975C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100003998(&qword_1000DE868, &qword_1000AE960);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v15 - v6;
  v8 = type metadata accessor for DatedSubscribers();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_100008B84(a1, 1, v8) == 1)
  {
    sub_10001EF70(a1, &qword_1000DE868, &qword_1000AE960);
    sub_10007BA04(v7);

    return sub_10001EF70(v7, &qword_1000DE868, &qword_1000AE960);
  }

  else
  {
    (*(v9 + 32))(v12, a1, v8);
    v14 = *v2;
    swift_isUniquelyReferenced_nonNull_native();
    v16 = *v2;
    sub_100086EA0();

    *v2 = v16;
  }

  return result;
}

uint64_t sub_100079928()
{
  type metadata accessor for WatchlistSuppressionActor();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  qword_1000E6DE0 = v0;
  return result;
}

uint64_t sub_100079988()
{
  if (qword_1000DBA58 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1000799E4(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for WatchlistSuppressionActor();

  return static GlobalActor.sharedUnownedExecutor.getter(v3, a2);
}

unint64_t sub_100079A1C()
{
  _StringGuts.grow(_:)(21);

  sub_10007B6D4();
  v0._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v0);

  return 0xD000000000000013;
}

unint64_t sub_100079ABC(char a1)
{
  if (a1)
  {
    return 0xD000000000000017;
  }

  else
  {
    return 0xD000000000000020;
  }
}

void *sub_100079B08()
{
  type metadata accessor for WatchlistSuppressNotificationsXPCConnectionManager();
  swift_allocObject();
  result = sub_100079B44();
  qword_1000E6DE8 = result;
  return result;
}

void *sub_100079B44()
{
  v0[2] = 0;
  type metadata accessor for PersistentStore();
  v0[3] = PersistentStore.__allocating_init()();

  v1 = dispatch thunk of PersistentStore.retrieveSuppressionTally()();

  v0[4] = v1;
  return v0;
}

void sub_100079BA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007B148();
  if (!v4)
  {
    goto LABEL_4;
  }

  v5 = v4;
  v20 = sub_100079E04;
  v21 = 0;
  v16 = _NSConcreteStackBlock;
  v17 = 1107296256;
  sub_10007BEF4();
  v18 = v6;
  v19 = &unk_1000D3930;
  v7 = _Block_copy(&v16);

  v8 = [v5 remoteObjectProxyWithErrorHandler:v7];
  _Block_release(v7);

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100003998(&qword_1000DE860, &qword_1000AE958);
  if (swift_dynamicCast())
  {
    v9 = v16;
    v10 = String._bridgeToObjectiveC()();
    sub_10001C594();
    v11 = swift_allocObject();
    swift_weakInit();
    v12 = swift_allocObject();
    v12[2] = sub_100039B6C;
    v12[3] = 0;
    v12[4] = v11;
    v12[5] = a1;
    v12[6] = a2;
    v20 = sub_10007B8B8;
    v21 = v12;
    v16 = _NSConcreteStackBlock;
    v17 = 1107296256;
    v18 = sub_10007A520;
    v19 = &unk_1000D3980;
    v13 = _Block_copy(&v16);

    [v9 suppressNotificationsFor:v10 completion:v13];
    _Block_release(v13);
    swift_unknownObjectRelease();
  }

  else
  {
LABEL_4:
    sub_10007B72C();
    v14 = sub_10007BF3C();
    *v15 = 0;
    sub_100039B6C(v14);
  }
}

void sub_100079E04(uint64_t a1)
{
  if (qword_1000DBA10 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100007DE8(v2, qword_1000E6D18);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v7 = Error.localizedDescription.getter();
    v9 = sub_1000170D4(v7, v8, &v10);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Watchlist XPC Error: %s", v5, 0xCu);
    sub_100008A94(v6);
  }

  sub_100039B6C(a1);
}

void sub_100079F7C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_100079FE4(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v58 = a6;
  v10 = type metadata accessor for Date();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v12 = sub_100003998(&qword_1000DE868, &qword_1000AE960);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v50 - v17;
  __chkstk_darwin(v19);
  v21 = &v50 - v20;
  __chkstk_darwin(v22);
  v24 = &v50 - v23;
  v25 = type metadata accessor for DatedSubscribers();
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25);
  v32 = __chkstk_darwin(v27);
  if (a1)
  {
    return (a2)(a1, v32);
  }

  v51 = v15;
  v52 = v18;
  v50 = v31;
  v55 = &v50 - v29;
  v56 = a5;
  v53 = v28;
  v54 = a3;
  v57 = v30;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v34 = result;
    swift_beginAccess();
    v35 = *(v34 + 32);
    if (*(v35 + 16))
    {
      v36 = *(v34 + 32);

      v37 = sub_100017538();
      if (v38)
      {
        v39 = v53;
        (*(v57 + 16))(v24, *(v35 + 56) + *(v57 + 72) * v37, v53);
        v40 = v24;
        v41 = 0;
      }

      else
      {
        v40 = v24;
        v41 = 1;
        v39 = v53;
      }

      sub_100008E2C(v40, v41, 1, v39);
    }

    else
    {
      v42 = v53;
      sub_100008E2C(v24, 1, 1, v53);

      v39 = v42;
    }

    v43 = v52;
    sub_10007B8C8(v24, v21);
    if (sub_100008B84(v21, 1, v39) == 1)
    {
      Date.init()();
      v44 = v55;
      DatedSubscribers.init(subscriberCount:lastSubscription:)();

      sub_10001EF70(v21, &qword_1000DE868, &qword_1000AE960);
    }

    else
    {

      v44 = v55;
      (*(v57 + 32))(v55, v21, v39);
    }

    static DatedSubscribers.+ infix(_:_:)();
    sub_100008E2C(v43, 0, 1, v39);
    swift_beginAccess();
    sub_10007975C(v43);
    swift_endAccess();
    if (sub_10007B0AC())
    {
      a2();

      return (*(v57 + 8))(v44, v39);
    }

    else
    {
      v45 = *(v34 + 32);

      v46 = v51;
      sub_10007C014(v45, v51);

      if (sub_100008B84(v46, 1, v39) == 1)
      {
        (*(v57 + 8))(v44, v39);

        return sub_10001EF70(v46, &qword_1000DE868, &qword_1000AE960);
      }

      else
      {
        v47 = v57;
        v48 = v50;
        (*(v57 + 32))(v50, v46, v39);
        if (DatedSubscribers.subscriberCount.getter() >= 2)
        {
          (a2)(0);
        }

        v49 = *(v47 + 8);
        v49(v48, v39);
        return (v49)(v55, v39);
      }
    }
  }

  return result;
}

void sub_10007A520(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_10007A58C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, void), uint64_t a5)
{
  v11 = sub_100003998(&qword_1000DE868, &qword_1000AE960);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v54 - v13;
  v15 = type metadata accessor for DatedSubscribers();
  v16 = sub_10002677C(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  __chkstk_darwin(v16);
  v60 = v21;
  v61 = &v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v54 - v23;
  v25 = swift_allocObject();
  v26 = a4;
  *(v25 + 16) = a4;
  *(v25 + 24) = a5;
  v65 = v25;
  swift_beginAccess();
  v27 = *(a3 + 32);

  v62 = a1;
  v64 = a2;
  sub_10007C014(v27, v14);

  if (sub_100008B84(v14, 1, v5) != 1)
  {
    v59 = a5;
    v30 = *(v18 + 32);
    v63 = v24;
    v30();
    v31 = sub_10007B148();
    if (v31)
    {
      v32 = v31;
      v58 = v18;
      v33 = swift_allocObject();
      v34 = sub_10007BEDC(v33);
      v70 = sub_10007BB8C;
      v71 = v34;
      sub_10007BEBC();
      v67 = 1107296256;
      sub_10007BEF4();
      v68 = v35;
      v69 = &unk_1000D39F8;
      v36 = _Block_copy(&aBlock);

      v37 = [v32 remoteObjectProxyWithErrorHandler:v36];
      _Block_release(v36);

      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      sub_100003998(&qword_1000DE860, &qword_1000AE958);
      if (swift_dynamicCast())
      {
        v57 = aBlock;
        v38 = v5;
        v39 = v62;
        v55 = v30;
        v56 = String._bridgeToObjectiveC()();
        sub_10001C594();
        v40 = swift_allocObject();
        swift_weakInit();
        v41 = v58;
        v42 = v61;
        v43 = v38;
        (*(v58 + 16))(v61, v63, v38);
        v44 = (*(v41 + 80) + 40) & ~*(v41 + 80);
        v45 = (v60 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
        v46 = swift_allocObject();
        v47 = sub_10007BEDC(v46);
        *(v47 + 32) = v40;
        (v55)(v47 + v44, v42, v43);
        v48 = (v46 + v45);
        *v48 = v39;
        v48[1] = v64;
        v70 = sub_10007BC68;
        v71 = v46;
        sub_10007BEBC();
        v67 = 1107296256;
        v68 = sub_10007A520;
        v69 = &unk_1000D3A48;
        v49 = _Block_copy(&aBlock);

        v50 = v56;
        [v57 enableNotificationsFor:v56 completion:v49];
        _Block_release(v49);
        swift_unknownObjectRelease();

        (*(v41 + 8))(v63, v43);
        goto LABEL_8;
      }

      v18 = v58;
    }

    sub_10007B72C();
    v51 = sub_10007BF3C();
    *v52 = 0;
    sub_100031590(v51, v26);

    (*(v18 + 8))(v63, v5);
    goto LABEL_8;
  }

  sub_10001EF70(v14, &qword_1000DE868, &qword_1000AE960);
  sub_10007B72C();
  v28 = sub_10007BF3C();
  *v29 = 0;
  sub_100031590(v28, v26);

LABEL_8:
}

uint64_t sub_10007AAD4(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  if (qword_1000DBA10 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100007DE8(v4, qword_1000E6D18);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v9 = Error.localizedDescription.getter();
    v11 = sub_1000170D4(v9, v10, &v13);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "Watchlist XPC Error: %s", v7, 0xCu);
    sub_100008A94(v8);
  }

  return a2(a1);
}

uint64_t sub_10007AC64(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = sub_100003998(&qword_1000DE868, &qword_1000AE960);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = v35 - v16;
  v18 = type metadata accessor for DatedSubscribers();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18);
  v24 = __chkstk_darwin(v20);
  v26 = v35 - v25;
  if (a1)
  {
    return (a2)(a1, v24);
  }

  v36 = v22;
  v37 = v21;
  v35[0] = v23;
  v35[1] = a3;
  v35[2] = a7;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v28 = result;
    if (DatedSubscribers.subscriberCount.getter() >= 1)
    {
      static DatedSubscribers.- infix(_:_:)();
      v29 = v36;
      v30 = v37;
      (*(v36 + 16))(v17, v26, v37);
      sub_100008E2C(v17, 0, 1, v30);
      swift_beginAccess();

      sub_10007975C(v17);
      swift_endAccess();
      if (DatedSubscribers.subscriberCount.getter() >= 1)
      {
        if (sub_10007B0AC())
        {
          a2();
        }

        else
        {
          a2();
        }

        return (*(v36 + 8))(v26, v37);
      }

      (*(v29 + 8))(v26, v30);
    }

    swift_beginAccess();
    v31 = *(v28 + 32);

    sub_10007C014(v31, v14);

    v32 = v37;
    if (sub_100008B84(v14, 1, v37) == 1)
    {
      sub_10001EF70(v14, &qword_1000DE868, &qword_1000AE960);
LABEL_14:
      (a2)(0);
    }

    v33 = v36;
    v34 = v35[0];
    (*(v36 + 32))(v35[0], v14, v32);
    if (DatedSubscribers.subscriberCount.getter())
    {
      (*(v33 + 8))(v34, v32);
      goto LABEL_14;
    }

    swift_beginAccess();
    sub_10007BA04(v17);
    sub_10001EF70(v17, &qword_1000DE868, &qword_1000AE960);
    swift_endAccess();
    if (sub_10007B0AC())
    {
      a2();
    }

    else
    {
      a2();
    }

    return (*(v36 + 8))(v35[0], v37);
  }

  return result;
}

uint64_t sub_10007B0AC()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  v2 = *(v0 + 32);

  dispatch thunk of PersistentStore.persistSuppressionTally(_:)();

  return 0;
}

void *sub_10007B148()
{
  v1 = v0;
  v2 = *(v0 + 16);
  if (!v2)
  {
    sub_10007B7D8();
    v3 = sub_10007B384(0xD000000000000018, 0x80000001000B2730, 4096);
    v4 = *(v1 + 16);
    *(v1 + 16) = v3;
    v5 = v3;

    if (v5)
    {
      v6 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL____TtP7sportsd51WatchlistSuppressNotificationsXPCConnectionProtocol_];
      [v5 setRemoteObjectInterface:v6];
    }

    v7 = *(v1 + 16);
    if (!v7)
    {
      goto LABEL_7;
    }

    v21 = sub_10007B400;
    v22 = 0;
    v17 = _NSConcreteStackBlock;
    v18 = 1107296256;
    v19 = sub_10007B4E8;
    v20 = &unk_1000D38B8;
    v8 = _Block_copy(&v17);
    v9 = v7;
    [v9 setInterruptionHandler:v8];
    _Block_release(v8);

    v10 = *(v1 + 16);
    if (v10)
    {
      sub_10001C594();
      v11 = swift_allocObject();
      swift_weakInit();
      v21 = sub_10007B868;
      v22 = v11;
      v17 = _NSConcreteStackBlock;
      v18 = 1107296256;
      v19 = sub_10007B4E8;
      v20 = &unk_1000D3908;
      v12 = _Block_copy(&v17);
      v13 = v10;

      [v13 setInvalidationHandler:v12];
      _Block_release(v12);

      v14 = *(v1 + 16);
    }

    else
    {
LABEL_7:
      v14 = 0;
    }

    [v14 resume];
    v2 = *(v1 + 16);
  }

  v15 = v2;
  return v2;
}

id sub_10007B384(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = String._bridgeToObjectiveC()();

  v6 = [v4 initWithMachServiceName:v5 options:a3];

  return v6;
}

void sub_10007B400()
{
  if (qword_1000DBA10 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100007DE8(v0, qword_1000E6D18);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "Watchlist suppression connection interrupted. This should be recoverable.", v2, 2u);
  }
}

uint64_t sub_10007B4E8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void sub_10007B52C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (qword_1000DBA10 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100007DE8(v2, qword_1000E6D18);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Watchlist suppression connection invalidated.", v5, 2u);
    }

    v6 = *(v1 + 16);
    *(v1 + 16) = 0;
  }
}

uint64_t sub_10007B648()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return v0;
}

uint64_t sub_10007B678()
{
  sub_10007B648();

  return _swift_deallocClassInstance(v0, 40, 7);
}

unint64_t sub_10007B6D4()
{
  result = qword_1000DE840;
  if (!qword_1000DE840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE840);
  }

  return result;
}

unint64_t sub_10007B72C()
{
  result = qword_1000DE848;
  if (!qword_1000DE848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE848);
  }

  return result;
}

unint64_t sub_10007B784()
{
  result = qword_1000DE850;
  if (!qword_1000DE850)
  {
    type metadata accessor for WatchlistSuppressionActor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE850);
  }

  return result;
}

unint64_t sub_10007B7D8()
{
  result = qword_1000DE858;
  if (!qword_1000DE858)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000DE858);
  }

  return result;
}

uint64_t sub_10007B81C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10007B834()
{
  swift_weakDestroy();
  sub_10001C594();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10007B870()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10007B8C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003998(&qword_1000DE868, &qword_1000AE960);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10007B938()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_100017538();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  v6 = *v1;
  swift_isUniquelyReferenced_nonNull_native();
  sub_10007BF08();
  v7 = sub_100003998(&qword_1000DE880, &qword_1000AE978);
  sub_10007BF1C(v7, v8, v9, v10, v11, v12, v13, v14, v18, v19);
  v15 = *(*(v20 + 48) + 16 * v5 + 8);

  v16 = *(*(v20 + 56) + 8 * v5);
  sub_100003998(&qword_1000DDAB0, &unk_1000AE980);
  _NativeDictionary._delete(at:)();
  *v1 = v20;
  return v16;
}

uint64_t sub_10007BA04@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_100017538();
  if (v6)
  {
    v7 = v5;
    v8 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v2;
    v10 = *(*v2 + 24);
    sub_100003998(&qword_1000DE870, &qword_1000AE968);
    _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v10);
    v11 = *(*(v18 + 48) + 16 * v7 + 8);

    v12 = *(v18 + 56);
    v13 = type metadata accessor for DatedSubscribers();
    (*(*(v13 - 8) + 32))(a1, v12 + *(*(v13 - 8) + 72) * v7, v13);
    _NativeDictionary._delete(at:)();
    *v2 = v18;
    v14 = a1;
    v15 = 0;
    v16 = v13;
  }

  else
  {
    v16 = type metadata accessor for DatedSubscribers();
    v14 = a1;
    v15 = 1;
  }

  return sub_100008E2C(v14, v15, 1, v16);
}

uint64_t sub_10007BB4C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10007BB94()
{
  v2 = type metadata accessor for DatedSubscribers();
  sub_10002677C(v2);
  v4 = v3;
  v5 = *(v3 + 80);
  v6 = (v5 + 40) & ~v5;
  v8 = (*(v7 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 24);

  v10 = *(v1 + 32);

  (*(v4 + 8))(v1 + v6, v0);
  v11 = *(v1 + v8 + 8);

  return _swift_deallocObject(v1, v8 + 16, v5 | 7);
}

uint64_t sub_10007BC68(uint64_t a1)
{
  v3 = *(type metadata accessor for DatedSubscribers() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];

  return sub_10007AC64(a1, v5, v6, v7, v1 + v4, v9, v10);
}

_BYTE *sub_10007BD20(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x10007BDECLL);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10007BE24()
{
  result = qword_1000DE888;
  if (!qword_1000DE888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE888);
  }

  return result;
}

uint64_t sub_10007BEDC(uint64_t result)
{
  *(result + 16) = sub_10007BB84;
  *(result + 24) = v1;
  return result;
}

BOOL sub_10007BF1C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v10, v11);
}

uint64_t sub_10007BF3C()
{

  return swift_allocError();
}

double sub_10007BF54@<D0>(uint64_t a1@<X2>, _OWORD *a2@<X8>)
{
  if (*(a1 + 16) && (v3 = sub_100017538(), (v4 & 1) != 0))
  {
    v5 = sub_10008365C(v3);

    sub_10001B798(v5, v6);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

unint64_t sub_10007BFB0@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (*(a2 + 16))
  {
    result = sub_1000175AC(result);
    if (v5)
    {
      return sub_10008341C(*(a2 + 56) + 32 * result, a3, &qword_1000DBD08, &qword_1000AA690);
    }
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  a3[3] = 1;
  return result;
}

void *sub_10007C02C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_100017538();
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
  v7 = v6;
  return v6;
}

uint64_t sub_10007C074(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    v4 = sub_100017538();
    if (v5)
    {
      v6 = (*(a3 + 56) + 16 * v4);
      v7 = *v6;
      v8 = v6[1];
    }
  }

  return sub_10001C53C();
}

uint64_t sub_10007C0C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_100017538();
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
}

double sub_10007C118@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (*(a2 + 16) && (v4 = sub_100017634(a1), (v5 & 1) != 0))
  {
    v6 = sub_10008365C(v4);

    sub_10001B798(v6, v7);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

void *sub_10007C174(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_100017678();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(a2 + 56) + 8 * v3);
  v6 = v5;
  return v5;
}

uint64_t sub_10007C1D4@<X0>(uint64_t a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  if (*(a1 + 16) && (v6 = sub_100017538(), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(a1 + 56);
    v10 = a2(0);
    sub_10001C2AC(v10);
    (*(v11 + 16))(a3, v9 + *(v11 + 72) * v8, v10);
    sub_10005B354();
    v15 = v10;
  }

  else
  {
    a2(0);
    sub_100045E00();
  }

  return sub_100008E2C(v12, v13, v14, v15);
}

uint64_t sub_10007C29C(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_100017744();
  if (v4)
  {
    return *(*(a2 + 56) + 8 * v3);
  }

  else
  {
    return 0;
  }
}

double sub_10007C2F4@<D0>(char a1@<W0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (*(a2 + 16) && (v4 = sub_1000175AC(a1), (v5 & 1) != 0))
  {
    v6 = sub_10008365C(v4);

    sub_10001B798(v6, v7);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

BOOL sub_10007C350(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

void sub_10007C37C()
{
  sub_1000643A8();
  v89 = v0;
  v82 = v2;
  v83 = v1;
  v84 = v4;
  v85 = v3;
  v86 = v5;
  v6 = type metadata accessor for Date();
  v7 = sub_10001C3C4(v6);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  sub_10000DC58();
  v81 = v10;
  sub_10001F268();
  v11 = type metadata accessor for SportsActivityAttributes.EventInfo();
  v12 = sub_10001C3C4(v11);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  sub_10000DC58();
  v88 = v15;
  v16 = sub_100003998(&qword_1000DD218, &unk_1000ABE10);
  v17 = sub_10001C3C4(v16);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  sub_1000499AC();
  v80 = v20;
  sub_1000498EC();
  __chkstk_darwin(v21);
  v23 = v70 - v22;
  v92 = type metadata accessor for SportingEventSubscription.Metadata();
  v24 = sub_10000AC48(v92);
  v26 = v25;
  v28 = *(v27 + 64);
  __chkstk_darwin(v24);
  sub_10000DC58();
  v90 = v29;
  sub_10001F268();
  v30 = type metadata accessor for Sport();
  v31 = sub_10000AC48(v30);
  v33 = v32;
  v35 = *(v34 + 64);
  __chkstk_darwin(v31);
  sub_1000499AC();
  v87 = v36;
  sub_1000498EC();
  __chkstk_darwin(v37);
  sub_1000498F8();
  v91 = v38;
  sub_1000498EC();
  __chkstk_darwin(v39);
  v41 = v70 - v40;
  v42 = SportingEventSubscription.sportingEventDetails.getter();
  v43 = SportingEvent.clock.getter();

  v44 = SportingEventCurrentClock.current.getter();
  v45 = dispatch thunk of SportingEventClock.isCountingDown.getter();

  if (v45 == 2)
  {
    SportingEventSubscription.sport.getter();
    Sport.init(rawValue:)();
    v79 = Sport.isClockCountingDown.getter();
    v46 = v33;
    (*(v33 + 8))(v41, v30);
  }

  else
  {
    v79 = v45;
    v46 = v33;
  }

  v47 = v30;
  SportingEventSubscription.metadata.getter();
  if (sub_100008B84(v23, 1, v92) == 1)
  {
    sub_10001BB44(v23, &qword_1000DD218, &unk_1000ABE10);
    sub_10007F78C();
    swift_allocError();
    *v48 = 0;
    swift_willThrow();
  }

  else
  {
    v49 = v90;
    (*(v26 + 32))(v90, v23, v92);
    SportingEventSubscription.sport.getter();
    v50 = v91;
    Sport.init(rawValue:)();
    v51 = v89;
    v52 = sub_10007FC68();
    if (v51)
    {
      (*(v46 + 8))(v50, v47);
      (*(v26 + 8))(v49, v92);
    }

    else
    {
      v89 = v52;
      v53 = SportingEventSubscription.canonicalId.getter();
      v76 = v54;
      v77 = v53;
      v78 = v46;
      (*(v46 + 16))(v87, v50, v47);
      v55 = SportingEventSubscription.leagueId.getter();
      v74 = v56;
      v75 = v55;
      v57 = SportingEventSubscription.Metadata.localizedLeagueName.getter();
      v72 = v58;
      v73 = v57;
      sub_10007FFA4();
      v59 = SportingEventSubscription.canonicalId.getter();
      v61 = v60;
      v62 = v80;
      (*(v26 + 16))(v80, v49, v92);
      sub_10005B354();
      sub_100008E2C(v63, v64, v65, v92);
      sub_1000858E0(v85, v84, v59, v61);
      v71 = v47;
      v67 = v66;

      sub_10001BB44(v62, &qword_1000DD218, &unk_1000ABE10);
      v68 = 0xE000000000000000;
      if (v67)
      {
        v68 = v67;
      }

      v80 = v68;
      v70[1] = SportingEventSubscription.Metadata.preGameTitle.getter();
      v70[0] = v69;
      SportingEventSubscription.Metadata.shortTitle.getter();
      static Date.now.getter();

      SportsActivityAttributes.init(canonicalId:sport:leagueId:leagueName:contenders:eventInfo:clockIsCountingDown:eventURL:preGameTitle:shortTitle:createdDate:bundleId:languageTag:)();
      (*(v78 + 8))(v91, v71);
      (*(v26 + 8))(v49, v92);
    }
  }

  sub_1000643C0();
}

void sub_10007C8C8()
{
  sub_1000643A8();
  v52 = v1;
  v53 = v0;
  v54 = v3;
  v55 = v2;
  v56 = v4;
  v50 = type metadata accessor for Date();
  v5 = sub_10001C2AC(v50);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  sub_10000DC58();
  v51 = v8;
  v9 = sub_100003998(&qword_1000DD218, &unk_1000ABE10);
  sub_10001C3C4(v9);
  v11 = *(v10 + 64);
  sub_10000ACFC();
  __chkstk_darwin(v12);
  v14 = v49 - v13;
  v15 = sub_100003998(&qword_1000DC5A0, &unk_1000AB0E0);
  sub_10001C3C4(v15);
  v17 = *(v16 + 64);
  sub_10000ACFC();
  __chkstk_darwin(v18);
  sub_10008364C();
  v19 = type metadata accessor for SportsActivityAttributes.EventInfo();
  v20 = sub_10001C3C4(v19);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  sub_10000ADA0();
  v23 = type metadata accessor for Sport();
  v24 = sub_10000AC48(v23);
  v26 = v25;
  v28 = *(v27 + 64);
  __chkstk_darwin(v24);
  sub_10000ADA0();
  v31 = v30 - v29;
  v32 = SportingEventSubscription.sportingEventDetails.getter();
  v33 = dispatch thunk of SportingEvent.competitors.getter();

  v34 = sub_10001BE20(v33);

  if (v34)
  {
    v35 = SportingEventSubscription.canonicalId.getter();
    v49[1] = v36;
    v49[2] = v35;
    (*(v26 + 104))(v31, enum case for Sport.unknown(_:), v23);
    SportingEventSubscription.leagueId.getter();
    v49[0] = v37;
    sub_100045E00();
    sub_100008E2C(v38, v39, v40, v50);
    SportsActivityAttributes.EventInfo.init(startDate:)();
    v41 = SportingEventSubscription.canonicalId.getter();
    v43 = v42;
    SportingEventSubscription.metadata.getter();
    sub_1000858E0(v55, v54, v41, v43);
    sub_1000836AC();

    sub_10001BB44(v14, &qword_1000DD218, &unk_1000ABE10);
    static Date.now.getter();

    SportsActivityAttributes.init(canonicalId:sport:leagueId:leagueName:contenders:eventInfo:clockIsCountingDown:eventURL:preGameTitle:shortTitle:createdDate:bundleId:languageTag:)();
  }

  else
  {
    if (qword_1000DBA38 != -1)
    {
      sub_10005AD5C();
    }

    v44 = type metadata accessor for Logger();
    sub_100007DE8(v44, qword_1000E6D90);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&_mh_execute_header, v45, v46, "Competitors cannot be empty", v47, 2u);
    }

    sub_10007F78C();
    swift_allocError();
    *v48 = 0;
    swift_willThrow();
  }

  sub_1000643C0();
}

uint64_t sub_10007CCA0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X3>, int a5@<W4>, int a6@<W5>, int a7@<W6>, uint64_t a8@<X8>)
{
  v287 = a7;
  LODWORD(v278) = a6;
  v275 = a5;
  v252 = a4;
  v296 = a3;
  v276 = a2;
  v277 = a8;
  v10 = sub_100003998(&qword_1000DC5A0, &unk_1000AB0E0);
  sub_10001C3C4(v10);
  v12 = *(v11 + 64);
  sub_10000ACFC();
  __chkstk_darwin(v13);
  sub_100045DAC(v244 - v14);
  v272 = type metadata accessor for URL();
  v15 = sub_10000AC48(v272);
  v271 = v16;
  v18 = *(v17 + 64);
  __chkstk_darwin(v15);
  sub_10000DC58();
  sub_100045DAC(v19);
  v282 = type metadata accessor for Date();
  v20 = sub_10000AC48(v282);
  v266 = v21;
  v23 = *(v22 + 64);
  __chkstk_darwin(v20);
  sub_1000499AC();
  sub_1000835D8();
  __chkstk_darwin(v24);
  sub_10008360C();
  sub_100045DAC(v25);
  v265 = type metadata accessor for SportsActivityContentState.EventInfoState();
  v26 = sub_10000AC48(v265);
  v263 = v27;
  v29 = *(v28 + 64);
  __chkstk_darwin(v26);
  sub_10000DC58();
  v267 = v30;
  v31 = sub_100003998(&qword_1000DDA70, &qword_1000AC4F0);
  sub_10001C3C4(v31);
  v33 = *(v32 + 64);
  sub_10000ACFC();
  __chkstk_darwin(v34);
  v286 = v244 - v35;
  v36 = sub_100003998(&qword_1000DDA78, &qword_1000AC4F8);
  sub_10001C3C4(v36);
  v38 = *(v37 + 64);
  sub_10000ACFC();
  __chkstk_darwin(v39);
  sub_100045DAC(v244 - v40);
  v274 = type metadata accessor for SportsActivityContentState();
  v41 = sub_10000AC48(v274);
  v273 = v42;
  v44 = *(v43 + 64);
  __chkstk_darwin(v41);
  sub_1000499AC();
  sub_1000835D8();
  __chkstk_darwin(v45);
  sub_10008360C();
  sub_100045DAC(v46);
  v251 = type metadata accessor for SportingEventPlayLevel();
  v47 = sub_10000AC48(v251);
  v250 = v48;
  v50 = *(v49 + 64);
  __chkstk_darwin(v47);
  sub_10000DC58();
  sub_100045DAC(v51);
  v280 = type metadata accessor for SportingEventProgressStatus();
  v52 = sub_10000AC48(v280);
  v279 = v53;
  v55 = *(v54 + 64);
  __chkstk_darwin(v52);
  sub_1000499AC();
  sub_1000835D8();
  __chkstk_darwin(v56);
  sub_10008360C();
  sub_100045DAC(v57);
  v288 = type metadata accessor for SportsActivityPlay();
  v58 = sub_10000AC48(v288);
  v289 = v59;
  v61 = *(v60 + 64);
  __chkstk_darwin(v58);
  sub_1000499AC();
  sub_1000835D8();
  __chkstk_darwin(v62);
  sub_1000498F8();
  sub_1000835D8();
  __chkstk_darwin(v63);
  sub_10008360C();
  v295 = v64;
  v298 = sub_100003998(&qword_1000DE898, &qword_1000AEB70);
  v65 = sub_10001C2AC(v298);
  v67 = *(v66 + 64);
  __chkstk_darwin(v65);
  sub_1000499AC();
  sub_1000835D8();
  __chkstk_darwin(v68);
  sub_1000498F8();
  sub_1000835D8();
  __chkstk_darwin(v69);
  sub_1000498F8();
  sub_1000835D8();
  __chkstk_darwin(v70);
  sub_1000498F8();
  sub_1000835D8();
  __chkstk_darwin(v71);
  sub_1000498F8();
  sub_1000835D8();
  __chkstk_darwin(v72);
  sub_10008360C();
  v301 = v73;
  sub_10001F268();
  v74 = type metadata accessor for RunningClockComponentsFormatter.DataSource();
  v75 = sub_10001C3C4(v74);
  v77 = *(v76 + 64);
  __chkstk_darwin(v75);
  sub_10000ADA0();
  v78 = type metadata accessor for SportsActivityGenericClock();
  v79 = sub_10000AC48(v78);
  v258 = v80;
  v82 = *(v81 + 64);
  __chkstk_darwin(v79);
  sub_10000ADA0();
  sub_10008364C();
  v83 = type metadata accessor for SportsActivityClock();
  v84 = sub_10000AC48(v83);
  v299 = v85;
  v300 = v84;
  v87 = *(v86 + 64);
  __chkstk_darwin(v84);
  sub_1000499AC();
  sub_1000835D8();
  __chkstk_darwin(v88);
  sub_1000498F8();
  sub_1000835D8();
  __chkstk_darwin(v89);
  v91 = v244 - v90;
  __chkstk_darwin(v92);
  sub_10008360C();
  v297 = v93;
  sub_10001F268();
  v94 = type metadata accessor for Sport();
  v95 = sub_10000AC48(v94);
  v97 = v96;
  v99 = *(v98 + 64);
  __chkstk_darwin(v95);
  sub_100045D70();
  v102 = v100 - v101;
  __chkstk_darwin(v103);
  v105 = v244 - v104;
  SportingEventSubscription.sport.getter();
  Sport.init(rawValue:)();
  v106 = *(v97 + 16);
  v291 = v105;
  v106(v102, v105, v94);
  v292 = v97;
  v293 = v94;
  v107 = v97;
  v108 = a1;
  v109 = (*(v107 + 88))(v102, v94);
  v294 = a1;
  if (v109 == enum case for Sport.baseball(_:))
  {
    sub_10008170C(v91);
    v110 = v296;
    v78 = v300;
    v111 = v301;
    v105 = v299;
LABEL_12:
    v116 = v297;
    goto LABEL_13;
  }

  if (v109 == enum case for Sport.basketball(_:) || v109 == enum case for Sport.football(_:) || v109 == enum case for Sport.hockey(_:))
  {
    v108 = v294;
    SportingEventSubscription.createRunningClockDataSource(preferStaticClock:)();
    SportsActivityGenericClock.init(runningClockDataSource:)();
    (*(v258 + 32))(v91, v8, v78);
    v114 = sub_100083678();
    v115(v114);
    v110 = v296;
    v111 = v301;
    goto LABEL_12;
  }

  v116 = v297;
  v108 = v294;
  if (v109 == enum case for Sport.soccer(_:))
  {
    sub_100080E6C(v294, v278 & 1, v91);
    v110 = v296;
    v78 = v300;
    v111 = v301;
    v105 = v299;
  }

  else
  {
    v139 = sub_100083678();
    v140(v139);
    v141 = sub_1000836D8(v292);
    v142(v141);
    v110 = v296;
    v111 = v301;
  }

LABEL_13:
  v117 = v298;
  (*(v105 + 4))(v116, v91, v78);
  v118 = v290;
  sub_100084CC0(v111, v111 + *(v117 + 48), v108, v110);
  v119 = v118;
  if (v118)
  {
    (*(v105 + 1))(v116, v78);
    return (*(v292 + 8))(v291, v293);
  }

  if (SportingEventSubscription.shouldDisplayPlayByPlay.getter())
  {
    v121 = SportingEventSubscription.sportingEventDetails.getter();
    SportingEvent.progressStatus.getter();

    sub_10008366C();
    v123 = *(v122 + 88);
    v124 = sub_1000835FC();
    v126 = v125(v124);
    if (v126 == enum case for SportingEventProgressStatus.inProgress(_:))
    {
      sub_100081B8C(v110, v252, v295);
    }

    else if (v126 == enum case for SportingEventProgressStatus.final(_:))
    {
      v143 = SportingEventSubscription.mostRecentPlay.getter();
      v144 = v250;
      v145 = v249;
      v146 = v251;
      (*(v250 + 104))(v249, enum case for SportingEventPlayLevel.all(_:), v251);
      sub_10007C174(v145, v143);
      sub_1000836B8();

      (*(v144 + 8))(v145, v146);
      if (v110)
      {
        v147 = v110;
        SportingEventPlay.playDescription.getter();

        v119 = 0;
      }

      SportsActivityPlay.init(isLeftBarVisible:isRightBarVisible:isPlay:text:)();

      v78 = v300;
    }

    else
    {
      static SportsActivityPlay.empty.getter();
      sub_10008366C();
      v241 = *(v240 + 8);
      v242 = sub_1000835FC();
      v243(v242);
    }
  }

  else
  {
    static SportsActivityPlay.empty.getter();
  }

  v127 = sub_100083690();
  *(v127 + 16) = 0;
  v249 = v127 + 16;
  v128 = sub_100083690();
  *(v128 + 16) = SportingEventSubscription.shouldDisplayPlayByPlay.getter() & 1;
  v252 = (v128 + 16);
  v129 = sub_100083690();
  *(v129 + 16) = 1;
  v248 = (v129 + 16);
  v251 = v119;
  v250 = v127;
  v258 = v128;
  v257 = v129;
  if (v287)
  {
    sub_10007FBE4(v127, v129, v128);
    v253 = 0;
    sub_1000835E8();
    v130 = v283;
  }

  else
  {
    v131 = SportingEventSubscription.sportingEventDetails.getter();
    SportingEvent.progressStatus.getter();

    sub_10008366C();
    v133 = *(v132 + 88);
    v134 = sub_1000835FC();
    v136 = v135(v134);
    v130 = v283;
    if (v136 != enum case for SportingEventProgressStatus.preGame(_:))
    {
      v148 = v136 == enum case for SportingEventProgressStatus.inProgress(_:) || v136 == enum case for SportingEventProgressStatus.statusBreak(_:);
      v138 = v301;
      if (!v148)
      {
        *v252 = 0;
        v149 = *(v279 + 1);
        v150 = sub_1000835FC();
        v151(v150);
      }

      v253 = 1;
      sub_1000835E8();
      v137 = v259;
      goto LABEL_36;
    }

    sub_10007FBE4(v127, v257, v258);
    v253 = 0;
    sub_1000835E8();
  }

  v137 = v259;
  v138 = v301;
LABEL_36:
  if (qword_1000DBA38 != -1)
  {
    sub_10005AD5C();
  }

  v152 = type metadata accessor for Logger();
  sub_100007DE8(v152, qword_1000E6D90);
  v153 = v299;
  v154 = *(v299 + 2);
  v279 = v299 + 16;
  v278 = v154;
  (v154)(v137, v116, v78);
  v155 = v108[2];
  v290 = (v108 + 2);
  v280 = v155;
  v155(v130, v295, v127);
  sub_10008341C(v138, v284, &qword_1000DE898, &qword_1000AEB70);
  v156 = v138;
  v157 = v281;
  sub_10008341C(v156, v281, &qword_1000DE898, &qword_1000AEB70);
  v158 = v294;
  v159 = Logger.logObject.getter();
  v160 = static os_log_type_t.debug.getter();

  v161 = os_log_type_enabled(v159, v160);
  v259 = v158;
  if (v161)
  {
    v162 = swift_slowAlloc();
    v246 = swift_slowAlloc();
    v302 = v246;
    *v162 = 136316162;
    v245 = v159;
    v163 = v158;
    v164 = SportingEventSubscription.canonicalId.getter();
    v166 = v165;
    sub_1000170D4(v164, v165, &v302);
    sub_10001C1DC();

    *(v162 + 4) = v163;
    *(v162 + 12) = 2080;
    sub_1000836E4(v285);
    v167 = v300;
    sub_10008366C();
    v278();
    sub_10001C53C();
    String.init<A>(reflecting:)();
    sub_1000836AC();
    v168 = sub_1000836D8(v153);
    v294 = v169;
    (v169)(v168, v167);
    v170 = sub_10001C53C();
    sub_1000170D4(v170, v171, v172);
    sub_1000836B8();

    *(v162 + 14) = v166;
    *(v162 + 22) = 2080;
    sub_1000836E4(&v286);
    sub_1000836C4();
    v173();
    String.init<A>(describing:)();
    sub_1000836AC();
    v174 = sub_1000836D8(v289);
    v283 = v175;
    v175(v174, v127);
    v176 = sub_10001C53C();
    sub_1000170D4(v176, v177, v178);
    sub_1000836B8();

    v247 = v162;
    *(v162 + 24) = v166;
    *(v162 + 32) = 2080;
    v179 = v284;
    v180 = v256;
    sub_10008341C(v284, v256, &qword_1000DE898, &qword_1000AEB70);
    v181 = *(v298 + 48);
    v182 = SportsActivityContender.scoreEntries.getter();
    v183 = type metadata accessor for SportsActivityContender();
    sub_10001C2AC(v183);
    v185 = *(v184 + 8);
    v185(v180, v183);
    v185(v180 + v181, v183);
    v254 = type metadata accessor for SportingEventCompetitorScoreStatisticType.StatisticName();
    v186 = sub_1000832D4(&qword_1000DC4C0, &type metadata accessor for SportingEventCompetitorScoreStatisticType.StatisticName);
    v187 = v281;
    v244[1] = v186;
    v188 = Dictionary.description.getter();
    v255 = v160;
    v189 = v188;
    v191 = v190;

    sub_10001BB44(v179, &qword_1000DE898, &qword_1000AEB70);
    sub_1000170D4(v189, v191, &v302);
    sub_10001C1DC();

    v192 = v247;
    *(v247 + 34) = v182;
    *(v192 + 42) = 2080;
    sub_10008341C(v187, v180, &qword_1000DE898, &qword_1000AEB70);
    v193 = *(v298 + 48);
    SportsActivityContender.scoreEntries.getter();
    v185(v180 + v193, v183);
    v185(v180, v183);
    v127 = v288;
    v194 = Dictionary.description.getter();
    v196 = v195;

    sub_10001BB44(v187, &qword_1000DE898, &qword_1000AEB70);
    v197 = sub_1000170D4(v194, v196, &v302);

    v198 = v247;
    *(v247 + 44) = v197;
    v199 = v245;
    _os_log_impl(&_mh_execute_header, v245, v255, "Creating activity content for event '%s':\n    clock: %s,\n    play: %s,\n    scoreA: %s,\n    scoreB: %s", v198, 0x34u);
    swift_arrayDestroy();

    v200 = v282;
    v201 = v300;
  }

  else
  {

    sub_10001BB44(v157, &qword_1000DE898, &qword_1000AEB70);
    sub_10001BB44(v284, &qword_1000DE898, &qword_1000AEB70);
    v202 = v283;
    v283 = *(v289 + 8);
    v283(v202, v127);
    v203 = sub_1000836D8(v153);
    v201 = v300;
    v294 = v204;
    (v204)(v203, v300);
    v200 = v282;
  }

  sub_10008366C();
  v278();
  sub_10005B354();
  sub_100008E2C(v205, v206, v207, v201);
  sub_1000836E4(&v303);
  sub_1000836C4();
  v208();
  sub_10005B354();
  sub_100008E2C(v209, v210, v211, v127);
  v212 = v296[4];
  sub_100008614(v296, v296[3]);
  v213 = *(v212 + 24);
  v214 = v262;
  v215 = sub_10001C1DC();
  v216(v215, v212);
  v217 = v264;
  static Date.now.getter();
  v218 = static Date.> infix(_:_:)();
  v219 = *(v266 + 8);
  v219(v217, v200);
  v219(v214, v200);
  v220 = &enum case for SportsActivityContentState.EventInfoState.preGame(_:);
  if ((v218 & 1) == 0)
  {
    v220 = &enum case for SportsActivityContentState.EventInfoState.startingSoon(_:);
  }

  (*(v263 + 104))(v267, *v220, v265);
  sub_1000836E4(&v280);
  swift_beginAccess();
  v221 = *v218;
  v222 = v248;
  swift_beginAccess();
  v223 = *v222;
  v224 = v301;
  v225 = v260;
  sub_10008341C(v301, v260, &qword_1000DE898, &qword_1000AEB70);
  v226 = v261;
  sub_10008341C(v224, v261, &qword_1000DE898, &qword_1000AEB70);
  v227 = v252;
  swift_beginAccess();
  LOBYTE(v227) = *v227;
  v228 = *(v298 + 48);
  (*(v271 + 16))(v269, v276, v272);
  v229 = v270;
  SportsActivityContentState.init(clock:play:eventInfoState:isClockVisible:isEventInfoVisible:isScoreVisible:contenderA:contenderB:shouldDisplayPlayByPlay:shouldShowWatchAlertUI:subscriptionContainerURL:isWaitingForUserConsent:)();
  v230 = type metadata accessor for SportsActivityContender();
  sub_10001C2AC(v230);
  v232 = *(v231 + 8);
  v232(v226, v230);
  v232(v225 + v228, v230);
  v233 = v273;
  v234 = v274;
  (*(v273 + 16))(v268, v229, v274);
  v235 = SportingEventSubscription.heartbeatSessionsTTLSeconds.getter();
  if (v236)
  {
    sub_100045E00();
    sub_100008E2C(v237, v238, v239, v282);
  }

  else
  {
    sub_10007FAD0(*&v235);
  }

  sub_1000832D4(&qword_1000DDA90, &type metadata accessor for SportsActivityContentState);
  sub_1000832D4(&qword_1000DDA98, &type metadata accessor for SportsActivityContentState);
  sub_1000832D4(&qword_1000DDAA0, &type metadata accessor for SportsActivityContentState);
  ActivityContent.init(state:staleDate:relevanceScore:)();
  (*(v233 + 8))(v229, v234);
  v283(v295, v288);
  sub_10001BB44(v301, &qword_1000DE898, &qword_1000AEB70);
  (v294)(v297, v300);
  (*(v292 + 8))(v291, v293);
}

void sub_10007E3F4()
{
  sub_1000643A8();
  v101 = v1;
  v2 = type metadata accessor for AlertConfiguration.AlertSound();
  v3 = sub_10001C3C4(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  sub_10000ADA0();
  sub_10008364C();
  v6 = type metadata accessor for LocalizedStringResource();
  v7 = sub_10001C3C4(v6);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  sub_1000499AC();
  sub_1000498EC();
  __chkstk_darwin(v10);
  sub_10008360C();
  sub_10001F268();
  v11 = type metadata accessor for SportingEventCompetitorScoreStatisticType.StatisticName();
  v12 = sub_10000AC48(v11);
  v96 = v13;
  v97 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v12);
  sub_1000499AC();
  v95 = v16;
  sub_1000498EC();
  __chkstk_darwin(v17);
  sub_10008360C();
  v94 = v18;
  sub_10001F268();
  v19 = type metadata accessor for SportingEventPlayLevel();
  v20 = sub_10000AC48(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  __chkstk_darwin(v20);
  sub_10000ADA0();
  v27 = v26 - v25;
  v28 = type metadata accessor for Sport();
  v29 = sub_10000AC48(v28);
  v98 = v30;
  v99 = v29;
  v32 = *(v31 + 64);
  __chkstk_darwin(v29);
  sub_10000DC58();
  v100 = v33;
  sub_10001F268();
  v34 = type metadata accessor for SportingEventProgressStatus();
  v35 = sub_10000AC48(v34);
  v37 = v36;
  v39 = *(v38 + 64);
  __chkstk_darwin(v35);
  sub_10000ADA0();
  v42 = v41 - v40;
  if ((SportingEventSubscription.shouldDisplayPlayByPlay.getter() & 1) == 0)
  {
    type metadata accessor for AlertConfiguration();
    sub_100045E00();
    sub_100008E2C(v57, v58, v59, v60);
    goto LABEL_18;
  }

  v43 = SportingEventSubscription.sportingEventDetails.getter();
  SportingEvent.progressStatus.getter();

  if ((*(v37 + 88))(v42, v34) != enum case for SportingEventProgressStatus.preGame(_:))
  {
    v91 = v37;
    v92 = v42;
    v93 = v34;
    SportingEventSubscription.sport.getter();
    v61 = v100;
    Sport.init(rawValue:)();
    v62 = SportingEventSubscription.mostRecentPlay.getter();
    (*(v22 + 104))(v27, enum case for SportingEventPlayLevel.alerts(_:), v19);
    v63 = sub_10007C174(v27, v62);

    (*(v22 + 8))(v27, v19);
    if (v63)
    {
      v64 = v101[4];
      sub_100008614(v101, v101[3]);
      v65 = *(v64 + 32);
      v66 = sub_10001C1DC();
      v68 = v67(v66, v64);
      v69 = *(v68 + 16);
      if (v69)
      {
        sub_100017B68(0, v69, 0);
        v70 = v68 + 32;
        do
        {
          sub_10000BC8C(v70, v103);
          v71 = v103[4];
          sub_100008614(v103, v103[3]);
          v72 = *(v71 + 8);
          v73 = sub_10001C1DC();
          v75 = v74(v73, v71);
          v77 = v76;
          sub_100008A94(v103);
          v79 = _swiftEmptyArrayStorage[2];
          v78 = _swiftEmptyArrayStorage[3];
          if (v79 >= v78 >> 1)
          {
            sub_100017B68((v78 > 1), v79 + 1, 1);
          }

          _swiftEmptyArrayStorage[2] = v79 + 1;
          v80 = &_swiftEmptyArrayStorage[2 * v79];
          v80[4] = v75;
          v80[5] = v77;
          v70 += 40;
          --v69;
        }

        while (v69);

        v61 = v100;
      }

      else
      {
      }

      v82 = sub_1000846DC(v63, v61, _swiftEmptyArrayStorage);
      if (!v0)
      {
        v84 = v82;
        v85 = v83;

        Sport.scoreStatisticName.getter();
        sub_10007C29C(v94, v84);

        v102 = *(v96 + 8);
        v102(v94, v97);

        Sport.scoreStatisticName.getter();
        sub_10007C29C(v95, v85);

        v102(v95, v97);
        v103[0] = dispatch thunk of CustomStringConvertible.description.getter();
        v103[1] = v86;
        v87._countAndFlagsBits = 45;
        v87._object = 0xE100000000000000;
        String.append(_:)(v87);
        v88._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v88);

        v89._countAndFlagsBits = 32;
        v89._object = 0xE100000000000000;
        String.append(_:)(v89);
        v90._countAndFlagsBits = SportingEventPlay.playDescription.getter();
        String.append(_:)(v90);

        (*(v98 + 8))(v100, v99);
        (*(v91 + 8))(v92, v93);
        v44 = v101;
        goto LABEL_4;
      }

      (*(v98 + 8))(v61, v99);
    }

    else
    {
      sub_10007F78C();
      swift_allocError();
      *v81 = 3;
      swift_willThrow();
      (*(v98 + 8))(v100, v99);
    }

    (*(v91 + 8))(v92, v93);
    goto LABEL_18;
  }

  v44 = v101;
  v45 = v101[4];
  sub_100008614(v101, v101[3]);
  v46 = *(v45 + 16);
  v47 = sub_10001C1DC();
  v48(v47, v45);
LABEL_4:
  v49 = v44[4];
  sub_100008614(v44, v44[3]);
  v50 = *(v49 + 8);
  v51 = sub_10001C1DC();
  v52(v51, v49);
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  static AlertConfiguration.AlertSound.default.getter();
  AlertConfiguration.init(title:body:sound:)();
  type metadata accessor for AlertConfiguration();
  sub_10005B354();
  sub_100008E2C(v53, v54, v55, v56);
LABEL_18:
  sub_1000643C0();
}

void sub_10007EB70()
{
  sub_1000643A8();
  v89 = v1;
  v90 = v0;
  v88 = v2;
  v3 = type metadata accessor for Locale();
  v4 = sub_10001C3C4(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  sub_10000DC58();
  v85 = v7;
  sub_10001F268();
  v8 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v9 = sub_10000AC48(v8);
  v86 = v10;
  v87 = v9;
  v12 = *(v11 + 64);
  __chkstk_darwin(v9);
  sub_10000DC58();
  v84 = v13;
  sub_10001F268();
  v14 = type metadata accessor for String.LocalizationValue();
  v15 = sub_10001C3C4(v14);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  sub_10000ADA0();
  v20 = v19 - v18;
  v21 = type metadata accessor for LocalizedStringResource();
  v22 = sub_10001C3C4(v21);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  sub_100045D70();
  v27 = v25 - v26;
  __chkstk_darwin(v28);
  v30 = v75 - v29;
  v31 = type metadata accessor for AlertConfiguration.AlertSound();
  v32 = sub_10000AC48(v31);
  v34 = v33;
  v36 = *(v35 + 64);
  __chkstk_darwin(v32);
  sub_100045D70();
  v39 = v37 - v38;
  __chkstk_darwin(v40);
  v42 = v75 - v41;
  v43 = sub_1000499E0();
  v45 = v44;
  objc_allocWithZone(LSApplicationRecord);
  v46 = v90;
  v47 = sub_100058D5C(v43, v45, 1);
  if (v46)
  {

LABEL_3:
    v48 = type metadata accessor for AlertConfiguration();
    v49 = v89;
    v50 = 1;
LABEL_4:
    sub_100008E2C(v49, v50, 1, v48);
    sub_1000643C0();
    return;
  }

  v79 = v20;
  v80 = v39;
  v82 = v31;
  v83 = v42;
  v81 = v30;
  v90 = v27;
  if (!v47)
  {
    goto LABEL_3;
  }

  v51 = v47;
  v52 = SportingEventSubscription.sportingEventDetails.getter();
  v53 = dispatch thunk of SportingEvent.alertUpdates.getter();

  if (!v53)
  {

    goto LABEL_3;
  }

  if (!sub_10001BE20(v53))
  {

    goto LABEL_3;
  }

  if ((v53 & 0xC000000000000001) != 0)
  {
    v56 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v55 = v34;
    v54 = v86;
    goto LABEL_11;
  }

  v54 = v86;
  if (*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v55 = v34;
    v56 = *(v53 + 32);
LABEL_11:

    v57 = SportingEventAlertUpdate.alert.getter();

    v58 = SportingEventAlert.title.getter();
    v59 = SportingEventAlertText.arguments.getter();

    v77 = sub_10007F7E0(v59, v51);

    v60 = SportingEventAlert.body.getter();
    v61 = SportingEventAlertText.arguments.getter();

    v86 = sub_10007F7E0(v61, v51);

    SportingEventAlert.sound.getter();
    v78 = v55;
    if (v62)
    {
      static AlertConfiguration.AlertSound.named(_:)();
    }

    else
    {
      static AlertConfiguration.AlertSound.default.getter();
    }

    v63 = v84;
    v64 = SportingEventAlert.title.getter();
    SportingEventAlertText.key.getter();

    String.LocalizationValue.init(_:)();
    v88 = v51;
    v65 = [v88 URL];
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v91 = enum case for LocalizedStringResource.BundleDescription.atURL(_:);
    v75[0] = v54[13];
    (v75[0])(v63);
    static Locale.current.getter();
    v76 = v57;
    sub_100083618();
    v66 = String.init(localized:)();
    v75[1] = v67;
    v75[2] = v66;
    v68 = SportingEventAlert.body.getter();
    SportingEventAlertText.key.getter();

    String.LocalizationValue.init(_:)();
    v69 = v88;
    v70 = [v88 URL];

    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    (v75[0])(v63, v91, v87);
    static Locale.current.getter();
    sub_100083618();
    String.init(localized:)();
    sub_1000836AC();
    sub_10007F3F4(v77);

    String.init(format:arguments:)();

    LocalizedStringResource.init(stringLiteral:)();
    sub_10007F3F4(v86);

    sub_10001C53C();
    String.init(format:arguments:)();

    LocalizedStringResource.init(stringLiteral:)();
    v71 = v78;
    v72 = v82;
    v73 = v83;
    (*(v78 + 16))(v80, v83, v82);
    v74 = v89;
    AlertConfiguration.init(title:body:sound:)();

    (*(v71 + 8))(v73, v72);
    v48 = type metadata accessor for AlertConfiguration();
    v49 = v74;
    v50 = 0;
    goto LABEL_4;
  }

  __break(1u);
}

unint64_t sub_10007F184(char a1)
{
  result = 0xD00000000000001DLL;
  switch(a1)
  {
    case 1:
      result = 0xD00000000000002CLL;
      break;
    case 2:
      result = 0xD000000000000024;
      break;
    case 3:
      result = 0xD00000000000001BLL;
      break;
    case 4:
      result = 0xD000000000000016;
      break;
    default:
      return result;
  }

  return result;
}

void *sub_10007F23C(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  v23 = a3;
  v4 = a2(0);
  sub_10000AC48(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_10000ACFC();
  __chkstk_darwin(v9);
  v11 = &v22 - v10;
  v12 = *(a1 + 16);
  v13 = _swiftEmptyArrayStorage;
  if (v12)
  {
    v27 = _swiftEmptyArrayStorage;
    sub_100017C20(0, v12, 0);
    v13 = v27;
    v16 = *(v6 + 16);
    v14 = v6 + 16;
    v15 = v16;
    v17 = a1 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
    v22 = *(v14 + 56);
    do
    {
      v15(v11, v17, v4);
      v27 = v13;
      v19 = v13[2];
      v18 = v13[3];
      if (v19 >= v18 >> 1)
      {
        sub_100017C20(v18 > 1, v19 + 1, 1);
      }

      v25 = v4;
      v26 = v23;
      v20 = sub_10003F5B0(&v24);
      v15(v20, v11, v4);
      v13 = v27;
      v27[2] = v19 + 1;
      sub_10000A8F8(&v24, &v13[5 * v19 + 4]);
      (*(v14 - 8))(v11, v4);
      v17 += v22;
      --v12;
    }

    while (v12);
  }

  return v13;
}

void *sub_10007F3F4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v13 = _swiftEmptyArrayStorage;
    sub_100017C60(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      v13 = v2;
      v7 = v2[2];
      v8 = v2[3];

      if (v7 >= v8 >> 1)
      {
        sub_100017C60(v8 > 1, v7 + 1, 1);
        v2 = v13;
      }

      v11 = &type metadata for String;
      v12 = sub_1000833C8();
      *&v10 = v6;
      *(&v10 + 1) = v5;
      v2[2] = v7 + 1;
      sub_10000A8F8(&v10, &v2[5 * v7 + 4]);
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_10007F544@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100003998(&qword_1000DC5A0, &unk_1000AB0E0);
  sub_10001C3C4(v2);
  v4 = *(v3 + 64);
  sub_10000ACFC();
  __chkstk_darwin(v5);
  v7 = &v19 - v6;
  v8 = type metadata accessor for SportsActivityAttributes.EventInfo();
  v9 = sub_10000AC48(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v9);
  sub_10000ADA0();
  v16 = v15 - v14;
  SportsActivityAttributes.eventInfo.getter();
  SportsActivityAttributes.EventInfo.startDate.getter();
  (*(v11 + 8))(v16, v8);
  v17 = type metadata accessor for Date();
  if (sub_100008B84(v7, 1, v17) != 1)
  {
    return (*(*(v17 - 8) + 32))(a1, v7, v17);
  }

  Date.init()();
  result = sub_100008B84(v7, 1, v17);
  if (result != 1)
  {
    return sub_10001BB44(v7, &qword_1000DC5A0, &unk_1000AB0E0);
  }

  return result;
}

uint64_t sub_10007F6E0(uint64_t (*a1)(void), uint64_t (*a2)(void), uint64_t a3)
{
  v5 = a1();
  sub_10007F23C(v5, a2, a3);
  sub_1000836B8();

  return a3;
}

unint64_t sub_10007F78C()
{
  result = qword_1000DE890;
  if (!qword_1000DE890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE890);
  }

  return result;
}

void *sub_10007F7E0(uint64_t a1, void *a2)
{
  v34 = a2;
  v3 = type metadata accessor for Locale();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v33 = &v29[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v32 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v6 = *(v32 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v32);
  v9 = &v29[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for String.LocalizationValue();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v31 = &v29[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for LocalizedStringResource();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  if (!a1)
  {
    return _swiftEmptyArrayStorage;
  }

  v15 = *(a1 + 16);
  v16 = _swiftEmptyArrayStorage;
  if (v15)
  {
    v35 = _swiftEmptyArrayStorage;
    sub_100017B68(0, v15, 0);
    v16 = v35;
    v30 = enum case for LocalizedStringResource.BundleDescription.atURL(_:);
    v17 = (v6 + 104);
    v18 = (a1 + 40);
    do
    {
      v19 = *(v18 - 1);
      v20 = *v18;
      swift_bridgeObjectRetain_n();
      String.LocalizationValue.init(_:)();
      v21 = [v34 URL];
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      (*v17)(v9, v30, v32);
      static Locale.current.getter();
      LocalizedStringResource.init(_:table:locale:bundle:comment:)();
      v22 = String.init(localized:)();
      v24 = v23;

      v35 = v16;
      v26 = v16[2];
      v25 = v16[3];
      if (v26 >= v25 >> 1)
      {
        sub_100017B68((v25 > 1), v26 + 1, 1);
        v16 = v35;
      }

      v16[2] = v26 + 1;
      v27 = &v16[2 * v26];
      v27[4] = v22;
      v27[5] = v24;
      v18 += 2;
      --v15;
    }

    while (v15);
  }

  return v16;
}

uint64_t sub_10007FAD0(double a1)
{
  v2 = type metadata accessor for Date();
  v3 = sub_10000AC48(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  sub_10000ADA0();
  v10 = v9 - v8;
  if (a1 <= 0.0)
  {
    sub_100045E00();

    return sub_100008E2C(v15, v16, v17, v2);
  }

  else
  {
    Date.init()();
    Date.addingTimeInterval(_:)();
    (*(v5 + 8))(v10, v2);
    sub_10005B354();
    return sub_100008E2C(v11, v12, v13, v2);
  }
}

uint64_t sub_10007FBE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  *(a1 + 16) = 1;
  swift_beginAccess();
  *(a2 + 16) = 0;
  result = swift_beginAccess();
  *(a3 + 16) = 0;
  return result;
}

uint64_t sub_10007FC68()
{
  v2 = type metadata accessor for SportingEventSubscription.Competitor();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v22 - v8;
  v10 = *(SportingEventSubscription.Metadata.competitors.getter() + 16);

  if (v10 != 2)
  {
    sub_10007F78C();
    swift_allocError();
    *v20 = 1;
    swift_willThrow();
    return v1;
  }

  result = SportingEventSubscription.Metadata.competitors.getter();
  if (*(result + 16))
  {
    v23 = v0;
    v12 = *(v3 + 16);
    v13 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v12(v9, result + v13, v2);

    result = SportingEventSubscription.Metadata.competitors.getter();
    if (*(result + 16) >= 2uLL)
    {
      v12(v6, result + v13 + *(v3 + 72), v2);

      sub_100003998(&qword_1000DE8E0, &unk_1000AEBB0);
      v14 = *(type metadata accessor for SportsActivityAttributes.Contender() - 8);
      v24 = v6;
      v15 = *(v14 + 72);
      v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
      v1 = swift_allocObject();
      *(v1 + 16) = xmmword_1000AB460;
      v17 = v1 + v16;
      v18 = v23;
      sub_1000801C4(v17);
      if (v18)
      {
        v19 = *(v3 + 8);
        v19(v24, v2);
        v19(v9, v2);
        *(v1 + 16) = 0;
      }

      else
      {
        sub_1000801C4(v17 + v15);
        v21 = *(v3 + 8);
        v21(v24, v2);
        v21(v9, v2);
      }

      return v1;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10007FFA4()
{
  v0 = sub_100003998(&qword_1000DC5A0, &unk_1000AB0E0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v16 - v2;
  v4 = sub_100003998(&qword_1000DD218, &unk_1000ABE10);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v16 - v6;
  v8 = type metadata accessor for SportingEventSubscription.Metadata();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  SportingEventSubscription.metadata.getter();
  if (sub_100008B84(v7, 1, v8) == 1)
  {
    sub_10001BB44(v7, &qword_1000DD218, &unk_1000ABE10);
    v13 = type metadata accessor for Date();
    sub_100008E2C(v3, 1, 1, v13);
    return SportsActivityAttributes.EventInfo.init(startDate:)();
  }

  else
  {
    (*(v9 + 32))(v12, v7, v8);
    SportingEventSubscription.Metadata.eventStartDate.getter();
    v15 = type metadata accessor for Date();
    sub_100008E2C(v3, 0, 1, v15);
    SportsActivityAttributes.EventInfo.init(startDate:)();
    return (*(v9 + 8))(v12, v8);
  }
}

uint64_t sub_1000801C4@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v1 = type metadata accessor for SportsActivityAttributes.Contender.LogoFilePaths();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v29 = v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100003998(&unk_1000DD7B0, &qword_1000AC150);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v28 - v6;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v28 - v14;
  __chkstk_darwin(v16);
  v18 = v28 - v17;
  SportingEventSubscription.Competitor.localLogoUrl.getter();
  if (v19)
  {
    URL.init(string:)();

    if (sub_100008B84(v7, 1, v8) == 1)
    {
      sub_10001BB44(v7, &unk_1000DD7B0, &qword_1000AC150);
    }

    else
    {
      (*(v9 + 32))(v18, v7, v8);
      URL.lastPathComponent.getter();
      v20 = [objc_opt_self() defaultManager];
      NSFileManager.currentContainerURL.getter();

      URL.appendingPathComponent(_:)();

      v21 = *(v9 + 8);
      v21(v12, v8);
      URL.path.getter();
      v21(v15, v8);
      v21(v18, v8);
    }
  }

  v22 = SportingEventSubscription.Competitor.canonicalId.getter();
  v28[4] = v23;
  v28[5] = v22;
  v24 = SportingEventSubscription.Competitor.teamColorHex.getter();
  v28[2] = v25;
  v28[3] = v24;
  SportingEventSubscription.Competitor.abbreviation.getter();
  v28[1] = v26;
  SportingEventSubscription.Competitor.name.getter();
  sub_100080524(v29);
  SportingEventSubscription.Competitor.isHome.getter();
  SportingEventSubscription.Competitor.ordinal.getter();
  return SportsActivityAttributes.Contender.init(canonicalId:colorHex:abbreviation:name:localLogoURL:logoFilePaths:isHome:ordinal:)();
}

uint64_t sub_100080524@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for URL();
  v75 = *(v2 - 8);
  v3 = *(v75 + 64);
  __chkstk_darwin(v2);
  v73 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v74 = &v70 - v6;
  v7 = sub_100003998(&unk_1000DD7B0, &qword_1000AC150);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v70 - v12;
  v14 = sub_100003998(&qword_1000DD250, &unk_1000AEBC0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v70 - v16;
  v18 = type metadata accessor for SportingEventSubscription.Competitor.LogoFilePaths();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v76 = &v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v70 - v23;
  __chkstk_darwin(v25);
  v27 = &v70 - v26;
  SportingEventSubscription.Competitor.logoFilePaths.getter();
  if (sub_100008B84(v17, 1, v18) != 1)
  {
    (*(v19 + 32))(v27, v17, v18);
    SportingEventSubscription.Competitor.LogoFilePaths.smallSize.getter();
    v33 = &unk_1000DB000;
    v77 = v19;
    v78 = v18;
    v72 = a1;
    if (v34)
    {
      URL.init(string:)();

      if (sub_100008B84(v13, 1, v2) != 1)
      {
        URL.lastPathComponent.getter();
        v46 = *(v75 + 8);
        v46(v13, v2);
        v47 = [objc_opt_self() defaultManager];
        v48 = v73;
        NSFileManager.currentContainerURL.getter();

        v49 = v74;
        URL.appendingPathComponent(_:)();

        v46(v48, v2);
        v71 = URL.path.getter();
        v45 = v50;
        v46(v49, v2);
        v19 = v77;
        v18 = v78;
        goto LABEL_23;
      }

      sub_10001BB44(v13, &unk_1000DD7B0, &qword_1000AC150);
      v33 = &unk_1000DB000;
    }

    if (v33[327] != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_100007DE8(v35, qword_1000E6D90);
    (*(v19 + 16))(v24, v27, v18);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v79 = v39;
      *v38 = 136315138;
      v40 = SportingEventSubscription.Competitor.LogoFilePaths.smallSize.getter();
      if (v41)
      {
        v42 = v40;
      }

      else
      {
        v42 = 7104878;
      }

      if (v41)
      {
        v43 = v41;
      }

      else
      {
        v43 = 0xE300000000000000;
      }

      (*(v77 + 8))(v24, v78);
      v44 = sub_1000170D4(v42, v43, &v79);
      v18 = v78;

      *(v38 + 4) = v44;
      _os_log_impl(&_mh_execute_header, v36, v37, "Failed to normalize logo path for small size at %s", v38, 0xCu);
      sub_100008A94(v39);
      v19 = v77;
    }

    else
    {

      (*(v19 + 8))(v24, v18);
    }

    v71 = 0;
    v45 = 0;
LABEL_23:
    SportingEventSubscription.Competitor.LogoFilePaths.defaultSize.getter();
    URL.init(string:)();

    v51 = sub_100008B84(v10, 1, v2);
    v52 = v76;
    if (v51 == 1)
    {
      sub_10001BB44(v10, &unk_1000DD7B0, &qword_1000AC150);
      if (qword_1000DBA38 != -1)
      {
        swift_once();
      }

      v53 = type metadata accessor for Logger();
      sub_100007DE8(v53, qword_1000E6D90);
      (*(v19 + 16))(v52, v27, v18);
      v54 = Logger.logObject.getter();
      v55 = v19;
      v56 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v54, v56))
      {
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v79 = v58;
        *v57 = 136315138;
        v59 = SportingEventSubscription.Competitor.LogoFilePaths.defaultSize.getter();
        v61 = v60;
        (*(v55 + 8))(v52, v78);
        v62 = sub_1000170D4(v59, v61, &v79);

        *(v57 + 4) = v62;
        _os_log_impl(&_mh_execute_header, v54, v56, "Failed to normalize logo path for default size at %s", v57, 0xCu);
        sub_100008A94(v58);
        v18 = v78;
      }

      else
      {

        (*(v55 + 8))(v52, v18);
      }

      v68 = 0;
    }

    else
    {
      URL.lastPathComponent.getter();
      v63 = *(v75 + 8);
      v63(v10, v2);
      v64 = [objc_opt_self() defaultManager];
      v65 = v73;
      NSFileManager.currentContainerURL.getter();

      v66 = v74;
      v18 = v78;
      URL.appendingPathComponent(_:)();

      v63(v65, v2);
      URL.path.getter();
      v68 = v67;
      v63(v66, v2);
    }

    if (v45 || (SportingEventSubscription.Competitor.LogoFilePaths.smallSize.getter(), v69))
    {
      if (v68)
      {
LABEL_35:
        SportsActivityAttributes.Contender.LogoFilePaths.init(smallSize:defaultSize:)();
        return (*(v77 + 8))(v27, v18);
      }
    }

    else if (v68)
    {
      goto LABEL_35;
    }

    SportingEventSubscription.Competitor.LogoFilePaths.defaultSize.getter();
    goto LABEL_35;
  }

  sub_10001BB44(v17, &qword_1000DD250, &unk_1000AEBC0);
  if (qword_1000DBA38 != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  sub_100007DE8(v28, qword_1000E6D90);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&_mh_execute_header, v29, v30, "Failed to normalize logos, missing LogoFilePaths.", v31, 2u);
  }

  return SportsActivityAttributes.Contender.LogoFilePaths.init(smallSize:defaultSize:)();
}

void *sub_100080E6C@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  LODWORD(v79) = a2;
  v78 = a3;
  v4 = type metadata accessor for SportingEventClockPeriodType();
  v73 = *(v4 - 8);
  v74 = v4;
  v5 = *(v73 + 64);
  __chkstk_darwin(v4);
  v68 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_100003998(&qword_1000DE8A0, &qword_1000AEB78);
  v7 = *(*(v72 - 8) + 64);
  __chkstk_darwin(v72);
  v9 = &v68 - v8;
  v10 = sub_100003998(&qword_1000DE8A8, &qword_1000AEB80);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v71 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v68 - v14;
  __chkstk_darwin(v16);
  v18 = &v68 - v17;
  v19 = type metadata accessor for SportingEventProgressStatus();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v68 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v68 - v25;
  v27 = sub_100003998(&qword_1000DE8B0, &qword_1000AEB88);
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27 - 8);
  v80 = &v68 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v32 = &v68 - v31;
  v33 = type metadata accessor for RunningClockComponentsFormatter.DataSource();
  v76 = *(v33 - 8);
  v77 = v33;
  v34 = *(v76 + 64);
  __chkstk_darwin(v33);
  v75 = &v68 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v38 = &v68 - v37;
  v70 = a1;
  SportingEventSubscription.createRunningClockDataSource(preferStaticClock:)();
  v39 = type metadata accessor for PenaltyShootoutsViewModel();
  v79 = v32;
  v69 = v39;
  sub_100008E2C(v32, 1, 1, v39);
  RunningClockComponentsFormatter.DataSource.progressStatus.getter();
  (*(v20 + 104))(v23, enum case for SportingEventProgressStatus.inProgress(_:), v19);
  LOBYTE(a1) = sub_100064D7C(v26, v23);
  v40 = *(v20 + 8);
  v40(v23, v19);
  v40(v26, v19);
  if ((a1 & 1) == 0)
  {
    goto LABEL_23;
  }

  RunningClockComponentsFormatter.DataSource.periodType.getter();
  v42 = v73;
  v41 = v74;
  (*(v73 + 104))(v15, enum case for SportingEventClockPeriodType.shootouts(_:), v74);
  sub_100008E2C(v15, 0, 1, v41);
  v43 = *(v72 + 48);
  sub_10008341C(v18, v9, &qword_1000DE8A8, &qword_1000AEB80);
  sub_10008341C(v15, &v9[v43], &qword_1000DE8A8, &qword_1000AEB80);
  if (sub_100008B84(v9, 1, v41) == 1)
  {
    sub_10001BB44(v15, &qword_1000DE8A8, &qword_1000AEB80);
    sub_10001BB44(v18, &qword_1000DE8A8, &qword_1000AEB80);
    if (sub_100008B84(&v9[v43], 1, v41) == 1)
    {
      sub_10001BB44(v9, &qword_1000DE8A8, &qword_1000AEB80);
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  v44 = v71;
  sub_10008341C(v9, v71, &qword_1000DE8A8, &qword_1000AEB80);
  if (sub_100008B84(&v9[v43], 1, v41) == 1)
  {
    sub_10001BB44(v15, &qword_1000DE8A8, &qword_1000AEB80);
    sub_10001BB44(v18, &qword_1000DE8A8, &qword_1000AEB80);
    (*(v42 + 8))(v44, v41);
LABEL_7:
    sub_10001BB44(v9, &qword_1000DE8A0, &qword_1000AEB78);
LABEL_23:
    v62 = v76;
    v63 = v77;
    (*(v76 + 16))(v75, v38, v77);
    v64 = v79;
    sub_10008341C(v79, v80, &qword_1000DE8B0, &qword_1000AEB88);
    v65 = v78;
    SportsActivitySoccerClock.init(runningClockDataSource:penaltyShootoutsViewModel:)();
    sub_10001BB44(v64, &qword_1000DE8B0, &qword_1000AEB88);
    (*(v62 + 8))(v38, v63);
    v66 = enum case for SportsActivityClock.soccer(_:);
    v67 = type metadata accessor for SportsActivityClock();
    return (*(*(v67 - 8) + 104))(v65, v66, v67);
  }

  v45 = v68;
  (*(v42 + 32))(v68, &v9[v43], v41);
  sub_1000832D4(&qword_1000DE8B8, &type metadata accessor for SportingEventClockPeriodType);
  LODWORD(v72) = dispatch thunk of static Equatable.== infix(_:_:)();
  v46 = *(v42 + 8);
  v46(v45, v41);
  sub_10001BB44(v15, &qword_1000DE8A8, &qword_1000AEB80);
  sub_10001BB44(v18, &qword_1000DE8A8, &qword_1000AEB80);
  v46(v44, v41);
  sub_10001BB44(v9, &qword_1000DE8A8, &qword_1000AEB80);
  if ((v72 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_9:
  v47 = SportingEventSubscription.sportingEventDetails.getter();
  v48 = dispatch thunk of SportingEvent.competitors.getter();

  v49 = sub_10001BE20(v48);
  if (!v49)
  {

LABEL_22:
    v60 = v80;
    PenaltyShootoutsViewModel.init(contextualShootouts:)();
    v61 = v79;
    sub_10001BB44(v79, &qword_1000DE8B0, &qword_1000AEB88);
    sub_100008E2C(v60, 0, 1, v69);
    sub_100083264(v60, v61);
    goto LABEL_23;
  }

  v50 = v49;
  v74 = v38;
  v81 = _swiftEmptyArrayStorage;
  result = sub_100017C00(0, v49 & ~(v49 >> 63), 0);
  if ((v50 & 0x8000000000000000) == 0)
  {
    v52 = 0;
    v53 = v81;
    do
    {
      if ((v48 & 0xC000000000000001) != 0)
      {
        v54 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v54 = *(v48 + 8 * v52 + 32);
      }

      v55 = v54;
      v56 = SportingEventCompetitorContainer.competitor.getter();
      v57 = SportingEventCompetitor.contextualShootouts()();

      if (!v57)
      {
        v57 = _swiftEmptyArrayStorage;
      }

      v81 = v53;
      v59 = v53[2];
      v58 = v53[3];
      if (v59 >= v58 >> 1)
      {
        sub_100017C00((v58 > 1), v59 + 1, 1);
        v53 = v81;
      }

      ++v52;
      v53[2] = v59 + 1;
      v53[v59 + 4] = v57;
    }

    while (v50 != v52);

    v38 = v74;
    goto LABEL_22;
  }

  __break(1u);
  return result;
}

uint64_t sub_10008170C@<X0>(uint64_t a1@<X8>)
{
  v41 = a1;
  v1 = type metadata accessor for RunningClockComponentsFormatter.DataSource();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v38 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SportsActivityBaseballClock();
  v39 = *(v4 - 8);
  v40 = v4;
  v5 = *(v39 + 64);
  __chkstk_darwin(v4);
  v37 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SportingEventProgressStatus();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v34 - v13;
  v15 = type metadata accessor for BaseballClockFormatter.FormattedComponents();
  v35 = *(v15 - 8);
  v36 = v15;
  v16 = *(v35 + 64);
  __chkstk_darwin(v15);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for BaseballClockFormatter();
  static BaseballClockFormatter.formattedComponents(subscription:)();
  sub_100003998(&qword_1000DE8C0, &unk_1000AEB90);
  v19 = swift_allocObject();
  v34 = xmmword_1000AB130;
  *(v19 + 16) = xmmword_1000AB130;
  v20 = BaseballClockFormatter.FormattedComponents.activeBases.getter();
  v21 = sub_10007C350(1, v20);

  *(v19 + 32) = v21;
  v22 = BaseballClockFormatter.FormattedComponents.activeBases.getter();
  v23 = sub_10007C350(2, v22);

  *(v19 + 33) = v23;
  v24 = BaseballClockFormatter.FormattedComponents.activeBases.getter();
  v25 = sub_10007C350(3, v24);

  *(v19 + 34) = v25;
  v26 = swift_allocObject();
  *(v26 + 16) = v34;
  *(v26 + 32) = BaseballClockFormatter.FormattedComponents.outs.getter() > 0;
  *(v26 + 33) = BaseballClockFormatter.FormattedComponents.outs.getter() > 1;
  *(v26 + 34) = BaseballClockFormatter.FormattedComponents.outs.getter() > 2;
  v27 = SportingEventSubscription.sportingEventDetails.getter();
  SportingEvent.progressStatus.getter();

  (*(v8 + 104))(v11, enum case for SportingEventProgressStatus.inProgress(_:), v7);
  sub_100064D7C(v14, v11);
  v28 = *(v8 + 8);
  v28(v11, v7);
  v28(v14, v7);
  BaseballClockFormatter.FormattedComponents.pitchCount.getter();
  SportingEventSubscription.createRunningClockDataSource(preferStaticClock:)();
  v29 = v37;
  SportsActivityBaseballClock.init(basesActiveStates:outsActiveStates:ballsAndStrikes:isActiveBaseVisible:runningClockDataSource:)();
  (*(v35 + 8))(v18, v36);
  v30 = v41;
  (*(v39 + 32))(v41, v29, v40);
  v31 = enum case for SportsActivityClock.baseball(_:);
  v32 = type metadata accessor for SportsActivityClock();
  return (*(*(v32 - 8) + 104))(v30, v31, v32);
}

void sub_100081B8C(void *a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v38[1] = a3;
  v38[0] = a1;
  v4 = sub_100003998(&qword_1000DDA80, &qword_1000AC500);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v38 - v6;
  v8 = type metadata accessor for SportingEventPlayLevel();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v38 - v14;
  sub_10008341C(a2, v7, &qword_1000DDA80, &qword_1000AC500);
  if (sub_100008B84(v7, 1, v8) == 1)
  {
    sub_10001BB44(v7, &qword_1000DDA80, &qword_1000AC500);
  }

  else
  {
    (*(v9 + 32))(v15, v7, v8);
    v16 = SportingEventSubscription.mostRecentPlay.getter();
    v17 = sub_10007C174(v15, v16);

    (*(v9 + 8))(v15, v8);
    if (v17)
    {
      goto LABEL_5;
    }
  }

  v18 = SportingEventSubscription.mostRecentPlay.getter();
  (*(v9 + 104))(v12, enum case for SportingEventPlayLevel.all(_:), v8);
  v17 = sub_10007C174(v12, v18);

  (*(v9 + 8))(v12, v8);
  if (!v17)
  {
    static SportsActivityPlay.empty.getter();
    return;
  }

LABEL_5:
  v19 = dispatch thunk of SportingEventPlay.competitors.getter();
  v20 = sub_10001BE20(v19);

  if (v20 != 2)
  {
    v36 = 2;
LABEL_19:
    sub_10007F78C();
    swift_allocError();
    *v37 = v36;
    swift_willThrow();

    return;
  }

  v21 = v38[0][3];
  v22 = v38[0][4];
  sub_100008614(v38[0], v21);
  v23 = *(v22 + 32);
  v24 = *(v23(v21, v22) + 16);

  if (v24 != 2)
  {
    v36 = 1;
    goto LABEL_19;
  }

  v25 = v23(v21, v22);
  if (*(v25 + 16))
  {
    sub_10000BC8C(v25 + 32, v39);

    v26 = dispatch thunk of SportingEventPlay.competitors.getter();
    __chkstk_darwin(v26);
    v38[-2] = v39;

    v40 = sub_100082FD8(v27);
    v28 = v38[2];
    sub_100082258(sub_10008331C, &v38[-4]);
    if (v28)
    {
      goto LABEL_27;
    }

    v29 = v40;
    if ((v40 & 0xC000000000000001) == 0)
    {
      v30 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v30)
      {
        v31 = *(v40 + 32);
        if (v30 != 1)
        {
          v32 = v31;
          v33 = v29[5];
          goto LABEL_13;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
LABEL_27:

      __break(1u);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_13:
  v34 = v33;

  v35 = dispatch thunk of SportingEventCompetitorContainer.isActive.getter();
  if (v35 == 2 || (v35 & 1) == 0)
  {
    dispatch thunk of SportingEventCompetitorContainer.isActive.getter();
  }

  SportingEventPlay.playDescription.getter();
  SportsActivityPlay.init(isLeftBarVisible:isRightBarVisible:isPlay:text:)();

  sub_100008A94(v39);
}

uint64_t sub_100082034(uint64_t *a1, uint64_t *a2, void *a3)
{
  v4 = *a1;
  v5 = *a2;
  v6 = SportingEventCompetitorContainer.competitor.getter();
  v7 = SportingEventCompetitor.canonicalId.getter();
  v9 = v8;

  v10 = a3[3];
  v11 = a3[4];
  sub_100008614(a3, v10);
  v12 = *(v11 + 8);
  if (v7 == v12(v10, v11) && v9 == v13)
  {
  }

  else
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v16 = 0;
    if ((v15 & 1) == 0)
    {
      return v16 & 1;
    }
  }

  v17 = SportingEventCompetitorContainer.competitor.getter();
  v18 = SportingEventCompetitor.canonicalId.getter();
  v20 = v19;

  if (v18 == v12(v10, v11) && v20 == v21)
  {

    v16 = 0;
  }

  else
  {
    v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v16 = v23 ^ 1;
  }

  return v16 & 1;
}

uint64_t sub_1000821B8(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    if (result)
    {
      type metadata accessor for SportingEventCompetitorContainer();
      result = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *((result & 0xFFFFFFFFFFFFFF8) + 0x10) = v1;
    }

    else
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return result;
}

unint64_t sub_100082234(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100082258(uint64_t (*a1)(id *, void **), uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_100083350(v6);
    *v3 = v6;
  }

  v9 = *(v6 + 16);
  sub_1000822F0(a1, a2);
  return specialized ContiguousArray._endMutation()();
}

void sub_1000822F0(uint64_t (*a1)(id *, void **), uint64_t a2)
{
  v6 = v2[1];
  v7 = _minimumMergeRunLength(_:)(v6);
  if (v7 < v6)
  {
    v8 = v7;
    v9 = sub_1000821B8(v6 / 2);
    v11[0] = v10;
    v11[1] = (v6 / 2);
    sub_1000824E8(v11, v12, v2, a1, a2, v8);
    if (v3)
    {
      if (v6 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v6 < -1)
    {
LABEL_12:
      __break(1u);
      return;
    }

    *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

    return;
  }

LABEL_5:
  if (v6 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v6)
  {
    sub_1000823E8(0, v6, 1, a1);
  }
}

void sub_1000823E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void **, void **))
{
  if (a3 != a2)
  {
    v7 = *v4;
    v8 = (*v4 + 8 * a3 - 8);
    v9 = a1 - a3;
LABEL_4:
    v19 = v8;
    v20 = a3;
    v10 = *(v7 + 8 * a3);
    v18 = v9;
    while (1)
    {
      v22 = v10;
      v21 = *v8;
      v11 = v21;
      v12 = v10;
      v13 = v11;
      v14 = a4(&v22, &v21);

      if (v5)
      {
        break;
      }

      if (v14)
      {
        if (!v7)
        {
          __break(1u);
          return;
        }

        v15 = *v8;
        v10 = v8[1];
        *v8 = v10;
        v8[1] = v15;
        --v8;
        if (!__CFADD__(v9++, 1))
        {
          continue;
        }
      }

      a3 = v20 + 1;
      v8 = v19 + 1;
      v9 = v18 - 1;
      if (v20 + 1 != a2)
      {
        goto LABEL_4;
      }

      return;
    }
  }
}

void sub_1000824E8(char **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(id *, void **), uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = _swiftEmptyArrayStorage;
LABEL_94:
    v112 = *a1;
    if (*a1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_129;
      }

      goto LABEL_96;
    }

    goto LABEL_138;
  }

  v9 = 0;
  v10 = _swiftEmptyArrayStorage;
  while (1)
  {
    v11 = v9;
    v12 = v9 + 1;
    if (v9 + 1 < v8)
    {
      v13 = *a3;
      v14 = v9 + 1;
      v116 = *(*a3 + 8 * v12);
      v115 = *(v13 + 8 * v9);
      v15 = v115;
      v16 = v116;
      v17 = v15;
      LODWORD(v112) = a4(&v116, &v115);
      if (v7)
      {

        goto LABEL_106;
      }

      v106 = v10;

      v109 = 8 * v11;
      v18 = (v13 + 8 * v11 + 16);
      v104 = v11;
      v19 = v11 + 2;
      v12 = v14;
      while (1)
      {
        v20 = v12;
        v21 = v19;
        if (v12 + 1 >= v8)
        {
          break;
        }

        v22 = v8;
        v23 = *(v18 - 1);
        v116 = *v18;
        v115 = v23;
        v24 = v116;
        v25 = v23;
        v26 = a4(&v116, &v115);

        v27 = v112 ^ v26;
        ++v18;
        v12 = v20 + 1;
        v19 = v21 + 1;
        v8 = v22;
        v7 = 0;
        if (v27)
        {
          goto LABEL_10;
        }
      }

      v12 = v8;
LABEL_10:
      if (v112)
      {
        if (v12 < v104)
        {
          goto LABEL_132;
        }

        v28 = v104 <= v20;
        v10 = v106;
        v11 = v104;
        if (v28)
        {
          if (v8 >= v21)
          {
            v29 = v21;
          }

          else
          {
            v29 = v8;
          }

          v30 = 8 * v29 - 8;
          v31 = v12;
          v32 = v104;
          v33 = v109;
          do
          {
            if (v32 != --v31)
            {
              v34 = *a3;
              if (!*a3)
              {
                goto LABEL_136;
              }

              v35 = *(v34 + v33);
              *(v34 + v33) = *(v34 + v30);
              *(v34 + v30) = v35;
            }

            ++v32;
            v30 -= 8;
            v33 += 8;
          }

          while (v32 < v31);
        }
      }

      else
      {
        v11 = v104;
        v10 = v106;
      }
    }

    v36 = a3[1];
    if (v12 < v36)
    {
      if (__OFSUB__(v12, v11))
      {
        goto LABEL_128;
      }

      if (v12 - v11 < a6)
      {
        if (__OFADD__(v11, a6))
        {
          __break(1u);
        }

        else
        {
          if (v11 + a6 >= v36)
          {
            v37 = a3[1];
          }

          else
          {
            v37 = v11 + a6;
          }

          if (v37 >= v11)
          {
            if (v12 == v37)
            {
              goto LABEL_33;
            }

            v80 = v11;
            v81 = *a3;
            v82 = (*a3 + 8 * v12 - 8);
            v105 = v80;
            v107 = v10;
            v83 = (v80 - v12);
            v102 = v37;
            while (1)
            {
              v111 = v12;
              v112 = v83;
              v84 = *(v81 + 8 * v12);
              v85 = v82;
              do
              {
                v116 = v84;
                v115 = *v82;
                v86 = v115;
                v87 = v84;
                v17 = v86;
                v88 = a4(&v116, &v115);
                if (v7)
                {

LABEL_106:
                  return;
                }

                v89 = v88;

                if ((v89 & 1) == 0)
                {
                  break;
                }

                if (!v81)
                {
                  goto LABEL_135;
                }

                v90 = *v82;
                v84 = v82[1];
                *v82 = v84;
                v82[1] = v90;
                --v82;
              }

              while (!__CFADD__(v83++, 1));
              v12 = v111 + 1;
              v82 = v85 + 1;
              v83 = v112 - 1;
              if (v111 + 1 == v102)
              {
                v12 = v102;
                v11 = v105;
                v10 = v107;
                goto LABEL_33;
              }
            }
          }
        }

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
        goto LABEL_137;
      }
    }

LABEL_33:
    if (v12 < v11)
    {
      goto LABEL_127;
    }

    v110 = v12;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v92 = *(v10 + 2);
      sub_100016B2C();
      v10 = v93;
    }

    v38 = *(v10 + 2);
    v39 = v38 + 1;
    v40 = v11;
    if (v38 >= *(v10 + 3) >> 1)
    {
      sub_100016B2C();
      v10 = v94;
    }

    *(v10 + 2) = v39;
    v41 = v10 + 32;
    v42 = &v10[16 * v38 + 32];
    *v42 = v40;
    *(v42 + 1) = v110;
    v112 = *a1;
    if (!*a1)
    {
LABEL_137:
      __break(1u);
LABEL_138:
      __break(1u);
      return;
    }

    if (v38)
    {
      break;
    }

LABEL_82:
    v8 = a3[1];
    v9 = v110;
    if (v110 >= v8)
    {
      goto LABEL_94;
    }
  }

  while (1)
  {
    v43 = v39 - 1;
    v44 = &v41[16 * v39 - 16];
    v45 = &v10[16 * v39];
    if (v39 >= 4)
    {
      v50 = &v41[16 * v39];
      v51 = *(v50 - 8);
      v52 = *(v50 - 7);
      v56 = __OFSUB__(v52, v51);
      v53 = v52 - v51;
      if (v56)
      {
        goto LABEL_115;
      }

      v55 = *(v50 - 6);
      v54 = *(v50 - 5);
      v56 = __OFSUB__(v54, v55);
      v48 = v54 - v55;
      v49 = v56;
      if (v56)
      {
        goto LABEL_116;
      }

      v57 = *(v45 + 1);
      v58 = v57 - *v45;
      if (__OFSUB__(v57, *v45))
      {
        goto LABEL_118;
      }

      v56 = __OFADD__(v48, v58);
      v59 = v48 + v58;
      if (v56)
      {
        goto LABEL_121;
      }

      if (v59 >= v53)
      {
        v73 = *v44;
        v72 = *(v44 + 1);
        v56 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v56)
        {
          goto LABEL_126;
        }

        if (v48 < v74)
        {
          v43 = v39 - 2;
        }

        goto LABEL_75;
      }

      goto LABEL_53;
    }

    if (v39 == 3)
    {
      v46 = *(v10 + 4);
      v47 = *(v10 + 5);
      v56 = __OFSUB__(v47, v46);
      v48 = v47 - v46;
      v49 = v56;
LABEL_53:
      if (v49)
      {
        goto LABEL_117;
      }

      v61 = *v45;
      v60 = *(v45 + 1);
      v62 = __OFSUB__(v60, v61);
      v63 = v60 - v61;
      v64 = v62;
      if (v62)
      {
        goto LABEL_120;
      }

      v65 = *(v44 + 1);
      v66 = v65 - *v44;
      if (__OFSUB__(v65, *v44))
      {
        goto LABEL_123;
      }

      if (__OFADD__(v63, v66))
      {
        goto LABEL_125;
      }

      if (v63 + v66 >= v48)
      {
        if (v48 < v66)
        {
          v43 = v39 - 2;
        }

        goto LABEL_75;
      }

      goto LABEL_68;
    }

    if (v39 < 2)
    {
      goto LABEL_119;
    }

    v68 = *v45;
    v67 = *(v45 + 1);
    v56 = __OFSUB__(v67, v68);
    v63 = v67 - v68;
    v64 = v56;
LABEL_68:
    if (v64)
    {
      goto LABEL_122;
    }

    v70 = *v44;
    v69 = *(v44 + 1);
    v56 = __OFSUB__(v69, v70);
    v71 = v69 - v70;
    if (v56)
    {
      goto LABEL_124;
    }

    if (v71 < v63)
    {
      goto LABEL_82;
    }

LABEL_75:
    if (v43 - 1 >= v39)
    {
      break;
    }

    if (!*a3)
    {
      goto LABEL_133;
    }

    v75 = &v41[16 * v43 - 16];
    v76 = *v75;
    v77 = &v41[16 * v43];
    v78 = *(v77 + 1);
    sub_100082BAC((*a3 + 8 * *v75), (*a3 + 8 * *v77), (*a3 + 8 * v78), v112, a4);
    if (v7)
    {
      goto LABEL_104;
    }

    if (v78 < v76)
    {
      goto LABEL_109;
    }

    v79 = v10;
    v10 = *(v10 + 2);
    if (v43 > v10)
    {
      goto LABEL_110;
    }

    *v75 = v76;
    *(v75 + 1) = v78;
    if (v43 >= v10)
    {
      goto LABEL_111;
    }

    v39 = (v10 - 1);
    memmove(&v41[16 * v43], v77 + 16, 16 * &v10[-v43 - 1]);
    *(v79 + 2) = v10 - 1;
    v28 = v10 > 2;
    v10 = v79;
    if (!v28)
    {
      goto LABEL_82;
    }
  }

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
  v10 = sub_100082EC4(v10);
LABEL_96:
  v95 = v10 + 16;
  v96 = *(v10 + 2);
  while (v96 >= 2)
  {
    if (!*a3)
    {
      goto LABEL_134;
    }

    v97 = v10;
    v98 = &v10[16 * v96];
    v10 = *v98;
    v99 = &v95[2 * v96];
    v100 = v99[1];
    sub_100082BAC((*a3 + 8 * *v98), (*a3 + 8 * *v99), (*a3 + 8 * v100), v112, a4);
    if (v7)
    {
      break;
    }

    if (v100 < v10)
    {
      goto LABEL_112;
    }

    if (v96 - 2 >= *v95)
    {
      goto LABEL_113;
    }

    *v98 = v10;
    *(v98 + 1) = v100;
    v101 = *v95 - v96;
    if (*v95 < v96)
    {
      goto LABEL_114;
    }

    v96 = *v95 - 1;
    memmove(v99, v99 + 2, 16 * v101);
    *v95 = v96;
    v10 = v97;
  }

LABEL_104:
}

uint64_t sub_100082BAC(char *a1, char *a2, char *a3, char *a4, uint64_t (*a5)(id *, void **))
{
  v6 = a4;
  v7 = a1;
  v8 = (a2 - a1) / 8;
  v9 = (a3 - a2) / 8;
  if (v8 >= v9)
  {
    sub_100016F60(a2, (a3 - a2) / 8, a4);
    v29 = a2;
    v13 = &v6[v9];
    v30 = -v6;
    v31 = a3;
    v53 = -v6;
    __src = v6;
LABEL_15:
    v32 = v29 - 1;
    --v31;
    v33 = v13 + v30;
    v55 = v29;
    while (1)
    {
      if (v13 <= v6 || v29 <= v7)
      {
LABEL_29:
        v45 = v13 - v6;
        v46 = v29 < v6 || v29 >= &v6[v45];
        if (v46 || v29 != v6)
        {
          v47 = 8 * v45;
          v48 = v6;
          goto LABEL_47;
        }

        return 1;
      }

      v56 = v33;
      v35 = v7;
      v36 = v13;
      v37 = v13 - 1;
      v60 = *(v13 - 1);
      v38 = v32;
      v59 = *v32;
      v39 = v59;
      v40 = v60;
      v41 = v39;
      v42 = a5(&v60, &v59);
      if (v5)
      {
        break;
      }

      v43 = v42;

      v44 = (v31 + 1);
      if (v43)
      {
        v6 = __src;
        v29 = v38;
        v7 = v35;
        v13 = v36;
        v30 = v53;
        if (v44 != v55)
        {
          *v31 = *v38;
          v29 = v38;
        }

        goto LABEL_15;
      }

      v7 = v35;
      v29 = v55;
      v32 = v38;
      if (v36 != v44)
      {
        *v31 = *v37;
      }

      --v31;
      v33 = v56 - 8;
      v13 = v37;
      v6 = __src;
    }

    v29 = v55;
    v48 = __src;
    v51 = v55 < __src || v55 >= &__src[v56 / 8];
    if (v51 || v55 != __src)
    {
      v47 = 8 * (v56 / 8);
      goto LABEL_47;
    }
  }

  else
  {
    v10 = v5;
    sub_100016F60(a1, (a2 - a1) / 8, a4);
    v12 = a2;
    v13 = &v6[v8];
    v14 = a3;
    while (1)
    {
      if (v6 >= v13 || v12 >= v14)
      {
        v29 = v7;
        goto LABEL_29;
      }

      v16 = v13;
      v17 = v7;
      v18 = v12;
      v60 = *v12;
      v19 = v6;
      v20 = *v6;
      v59 = v20;
      v21 = v60;
      v22 = v20;
      v23 = a5(&v60, &v59);
      if (v10)
      {
        break;
      }

      v24 = v23;

      if (v24)
      {
        v10 = 0;
        v25 = v18;
        v12 = v18 + 1;
        v26 = v17;
        v27 = v17 == v18;
        v6 = v19;
      }

      else
      {
        v10 = 0;
        v25 = v19;
        v6 = v19 + 1;
        v26 = v17;
        v27 = v17 == v19;
        v12 = v18;
      }

      v14 = a3;
      v13 = v16;
      if (!v27)
      {
        *v26 = *v25;
      }

      v7 = (v26 + 1);
    }

    v48 = v19;
    v49 = v16 - v19;
    v50 = v17 < v19 || v17 >= &v19[v49];
    if (v50 || v17 != v19)
    {
      v47 = 8 * v49;
      v29 = v17;
LABEL_47:
      memmove(v29, v48, v47);
    }
  }

  return 1;
}

char *sub_100082ED8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100003998(&qword_1000DC4A0, &qword_1000AEBA0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

void *sub_100082FD8(unint64_t a1)
{
  if (a1 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
    if (v4)
    {
      v5 = v4;
      v2 = sub_100016DD4(v4, 0);
      sub_10008306C((v2 + 4), v5, a1);
      v7 = v6;

      if (v7 == v5)
      {
        return v2;
      }

      __break(1u);
    }

    return _swiftEmptyArrayStorage;
  }

  return (a1 & 0xFFFFFFFFFFFFFF8);
}

uint64_t sub_10008306C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_10001BE20(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        type metadata accessor for SportingEventCompetitorContainer();
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_100083364();
        for (i = 0; i != v7; ++i)
        {
          sub_100003998(&qword_1000DE8C8, &qword_1000AEBA8);
          v9 = sub_1000831D0(v12, i, a3);
          v11 = *v10;
          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void (*sub_1000831D0(void *a1, unint64_t a2, uint64_t a3))(id *a1)
{
  v6 = sub_100082224(a3);
  sub_100082234(a2, v6, a3);
  if (v6)
  {
    v7 = *(a3 + 8 * a2 + 32);
  }

  else
  {
    v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  *a1 = v7;
  return sub_10008325C;
}

uint64_t sub_100083264(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003998(&qword_1000DE8B0, &qword_1000AEB88);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000832D4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100083364()
{
  result = qword_1000DE8D0;
  if (!qword_1000DE8D0)
  {
    sub_1000089A8(&qword_1000DE8C8, &qword_1000AEBA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE8D0);
  }

  return result;
}

unint64_t sub_1000833C8()
{
  result = qword_1000DE8D8;
  if (!qword_1000DE8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE8D8);
  }

  return result;
}

uint64_t sub_10008341C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_100003998(a3, a4);
  sub_10001C2AC(v5);
  v7 = *(v6 + 16);
  v8 = sub_10001C53C();
  v9(v8);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for ActivityDataProviderError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x100083544);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_100083580()
{
  result = qword_1000DE8E8;
  if (!qword_1000DE8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE8E8);
  }

  return result;
}

uint64_t sub_1000835FC()
{
  result = v0;
  v3 = *(v1 - 336);
  return result;
}

uint64_t sub_100083618()
{

  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t sub_100083678()
{
  v2 = *(v1 - 176);
  v3 = *(*(v1 - 184) + 104);
  return v0;
}

uint64_t sub_100083690()
{

  return swift_allocObject();
}

unint64_t sub_1000836F0()
{
  v0 = swift_slowAlloc();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v2 = [(objc_class *)isa bytes];
  v3 = isa;
  result = Data.count.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (HIDWORD(result))
  {
LABEL_7:
    __break(1u);
    return result;
  }

  CC_SHA1(v2, result, v0);
  v5 = Data.init(bytes:count:)();
  v7 = v6;
  v8 = [objc_opt_self() createBagForSubProfile];
  if (!v8)
  {
    sub_10008387C();
    v8 = sub_100020A74();
  }

  v9 = objc_opt_self();
  v10 = Data._bridgeToObjectiveC()().super.isa;
  v11 = [v9 signaturePromiseFromData:v10 type:1 bag:v8];

  sub_100008BAC(v5, v7);
  return v11;
}

unint64_t sub_10008387C()
{
  result = qword_1000DC968;
  if (!qword_1000DC968)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000DC968);
  }

  return result;
}

uint64_t sub_1000838C0()
{
  v0 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v0 >= 0x31)
  {
    return 49;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_100083914(char a1)
{
  result = 7368801;
  switch(a1)
  {
    case 1:
      result = 0x7041746E65696C63;
      break;
    case 2:
      result = 0x7542746E65696C63;
      break;
    case 3:
      result = 0x6163696E6F6E6163;
      break;
    case 4:
      result = 0x707954746E657665;
      break;
    case 5:
      result = 0x5574736575716572;
      break;
    case 6:
      sub_10008412C();
      result = v4 | 6;
      break;
    case 7:
    case 30:
    case 43:
      v7 = 5;
      goto LABEL_37;
    case 8:
    case 33:
      sub_10008412C();
      result = v6 | 2;
      break;
    case 9:
      sub_10008412C();
      result = v3 | 8;
      break;
    case 10:
      result = 0xD000000000000010;
      break;
    case 11:
      result = 0x74726F7073;
      break;
    case 12:
      result = 0x6163696669746F6ELL;
      break;
    case 13:
    case 18:
    case 44:
      sub_10008412C();
      result = v5 | 7;
      break;
    case 14:
    case 19:
    case 38:
      v7 = 9;
LABEL_37:
      result = v7 | 0xD000000000000010;
      break;
    case 15:
      result = 0xD000000000000010;
      break;
    case 16:
      result = 0x6556726576726573;
      break;
    case 17:
    case 28:
    case 29:
    case 36:
    case 48:
      sub_10008412C();
      result = v8 | 3;
      break;
    case 20:
    case 26:
    case 37:
    case 41:
      sub_10008412C();
      result = v9 | 1;
      break;
    case 21:
      result = 0x6172747369676572;
      break;
    case 22:
      result = 0xD000000000000010;
      break;
    case 23:
      result = 0x646F43726F727265;
      break;
    case 24:
      result = 0x6D6F44726F727265;
      break;
    case 25:
      result = 0x616552726F727265;
      break;
    case 27:
      result = 0xD000000000000010;
      break;
    case 31:
      result = 0x6174536863746566;
      break;
    case 32:
      result = 0x506B726F7774656ELL;
      break;
    case 34:
      result = 0xD000000000000010;
      break;
    case 35:
      result = 0x65736E6F70736572;
      break;
    case 39:
      result = 0x6F43737574617473;
      break;
    case 40:
      result = 0x4D74736575716572;
      break;
    case 42:
      result = 0x6E65674172657375;
      break;
    case 45:
      result = 0x6D614E746E657665;
      break;
    case 46:
      result = 0x73736572676F7270;
      break;
    case 47:
      result = 0x6552646568636163;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100083EEC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1000838C0();
  *a2 = result;
  return result;
}

unint64_t sub_100083F1C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_100083914(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t getEnumTagSinglePayload for SportsMetricsKey(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xD0)
  {
    if (a2 + 48 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 48) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 49;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x31;
  v5 = v6 - 49;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SportsMetricsKey(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 48 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 48) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xD0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xCF)
  {
    v6 = ((a2 - 208) >> 8) + 1;
    *result = a2 + 48;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x10008409CLL);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 48;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1000840D8()
{
  result = qword_1000DE988;
  if (!qword_1000DE988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE988);
  }

  return result;
}

uint64_t sub_100084140()
{
  sub_100003998(&qword_1000DC820, &unk_1000ABED0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000AB130;
  *(inited + 32) = 23;
  v1 = sub_100067F70();
  *(inited + 64) = &type metadata for Int;
  *(inited + 40) = v1;
  *(inited + 72) = 24;
  v2 = sub_100067DE8();
  *(inited + 104) = &type metadata for String;
  *(inited + 80) = v2;
  *(inited + 88) = v3;
  *(inited + 112) = 25;
  type metadata accessor for ApiAgentError();
  sub_100084234();
  v4 = Error.localizedDescription.getter();
  *(inited + 144) = &type metadata for String;
  *(inited + 120) = v4;
  *(inited + 128) = v5;
  sub_100003998(&qword_1000DBD08, &qword_1000AA690);
  sub_10001DA90();
  return Dictionary.init(dictionaryLiteral:)();
}

unint64_t sub_100084234()
{
  result = qword_1000DD730;
  if (!qword_1000DD730)
  {
    type metadata accessor for ApiAgentError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DD730);
  }

  return result;
}

id sub_1000842C0()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 BOOLForKey:v1];

  return v2;
}

uint64_t sub_100084324()
{
  v0 = sub_100003998(&qword_1000DCF70, &unk_1000AB920);
  v1 = sub_10000AC48(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1);
  v7 = &v24[-v6];
  v8 = sub_100003998(&qword_1000DEA30, &qword_1000AED90);
  v9 = sub_10000AC48(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v9);
  v15 = &v24[-v14];
  type metadata accessor for ContainerConstants();
  v16 = static ContainerConstants.defaultSuiteName.getter();
  v18 = v17;
  v19 = objc_allocWithZone(NSUserDefaults);
  v20 = sub_100058E38(v16, v18);
  if (v20)
  {
    v21 = v20;
    swift_getKeyPath();
    _KeyValueCodingAndObservingPublishing<>.publisher<A>(for:options:)();

    sub_10000A6FC(&qword_1000DEA40, &qword_1000DEA30, &qword_1000AED90);
    v22 = Publisher.eraseToAnyPublisher()();

    (*(v11 + 8))(v15, v8);
  }

  else
  {
    v24[15] = 0;
    Just.init(_:)();
    sub_10000A6FC(&qword_1000DEA38, &qword_1000DCF70, &unk_1000AB920);
    v22 = Publisher.eraseToAnyPublisher()();
    (*(v3 + 8))(v7, v0);
  }

  return v22;
}

id sub_1000845BC@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 filteringEnabled];
  *a2 = result;
  return result;
}

void sub_1000845F0(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v6 = sub_10001BE20(a3);
  for (i = 0; v6 != i; ++i)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      v8 = *(a3 + 8 * i + 32);
    }

    v9 = v8;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_15:
      __break(1u);
      return;
    }

    v11 = v8;
    v10 = a1(&v11);
    if (v3)
    {

      return;
    }

    if (v10)
    {
      return;
    }
  }
}

uint64_t sub_1000846DC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v81 = a2;
  v83 = a1;
  v4 = type metadata accessor for SportingEventCompetitorScoreStatisticType.StatisticName();
  v5 = sub_10000AC48(v4);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  sub_1000499AC();
  v91 = v8;
  sub_1000498EC();
  __chkstk_darwin(v9);
  v12 = &v74 - v11;
  v80 = *(a3 + 16);
  if (v80)
  {
    v13 = 0;
    v14 = a3 + 32;
    v78 = enum case for SportingEventCompetitorScoreStatisticType.StatisticName.shootout(_:);
    v77 = v10 + 104;
    v15 = _swiftEmptyArrayStorage;
    v79 = v10;
    v88 = (v10 + 8);
    v76 = xmmword_1000AB460;
    v86 = v4;
    v87 = v10 + 16;
    v75 = a3 + 32;
    do
    {
      v16 = (v14 + 16 * v13);
      v18 = *v16;
      v17 = v16[1];
      v84 = v13 + 1;
      v85 = v15;

      v19 = dispatch thunk of SportingEventPlay.competitors.getter();
      v89 = sub_10001BE20(v19);
      v90 = v19;
      v20 = 0;
      a3 = v19 & 0xC000000000000001;
      v21 = v19 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v89 == v20)
        {

          sub_10007F78C();
          v68 = swift_allocError();
          sub_1000873B4(v68, v69);
          goto LABEL_40;
        }

        if (a3)
        {
          v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v20 >= *(v21 + 16))
          {
            goto LABEL_44;
          }

          v22 = *(v90 + 8 * v20 + 32);
        }

        if (__OFADD__(v20, 1))
        {
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }

        v92 = v22;
        v23 = SportingEventCompetitorContainer.competitor.getter();
        v24 = SportingEventCompetitor.canonicalId.getter();
        v26 = v25;

        if (v24 == v18 && v26 == v17)
        {
          break;
        }

        v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v28)
        {
          goto LABEL_17;
        }

        ++v20;
      }

LABEL_17:

      sub_100003998(&qword_1000DEA50, &qword_1000AEDC8);
      v29 = v79;
      v30 = *(v79 + 72);
      v31 = (*(v79 + 80) + 32) & ~*(v79 + 80);
      v32 = swift_allocObject();
      *(v32 + 16) = v76;
      v82 = v32;
      v33 = v32 + v31;
      Sport.scoreStatisticName.getter();
      v34 = *(v29 + 104);
      v89 = v33;
      v90 = v30;
      v35 = v33 + v30;
      v36 = v86;
      v34(v35, v78, v86);
      v37 = 0;
      v38 = 0;
      v39 = *(v29 + 16);
      v40 = &_swiftEmptyDictionarySingleton;
      do
      {
        v41 = v37;
        v39(v12, v89 + v38 * v90, v36);
        v42 = dispatch thunk of SportingEventCompetitorContainer.getScoreEntry(name:)();
        if (v42)
        {
          v43 = v42;
          SportingEventCompetitorScoreEntry.value.getter();

          v39(v91, v12, v36);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v93 = v40;
          sub_100017744();
          v47 = *(v40 + 2);
          v48 = (v46 & 1) == 0;
          v49 = v47 + v48;
          if (__OFADD__(v47, v48))
          {
            __break(1u);
            goto LABEL_43;
          }

          v50 = v45;
          v51 = v46;
          sub_100003998(&qword_1000DEA58, &qword_1000AEDD0);
          v52 = &v93;
          if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v49))
          {
            v52 = v93;
            sub_100017744();
            if ((v51 & 1) != (v54 & 1))
            {
              goto LABEL_46;
            }

            v50 = v53;
          }

          v40 = v93;
          if (v51)
          {
            sub_100087368();
            v36 = v86;
            v52(v91, v86);
            v55 = sub_10008737C();
            (v52)(v55);
          }

          else
          {
            *(v93 + (v50 >> 6) + 8) |= 1 << v50;
            v59 = v91;
            v36 = v86;
            v39((*(v40 + 6) + v50 * v90), v91, v86);
            sub_100087368();
            v52(v59, v36);
            v60 = sub_10008737C();
            (v52)(v60);
            v61 = *(v40 + 2);
            v62 = __OFADD__(v61, 1);
            v63 = v61 + 1;
            if (v62)
            {
              goto LABEL_45;
            }

            *(v40 + 2) = v63;
          }
        }

        else
        {
          v56 = *v88;
          v57 = sub_10008737C();
          v58(v57);
        }

        v37 = 1;
        v38 = 1;
      }

      while ((v41 & 1) == 0);
      swift_setDeallocating();
      sub_100086810();
      v15 = v85;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v65 = v15[2];
        sub_100016C08();
        v15 = v66;
      }

      a3 = v15[2];
      v64 = a3 + 1;
      if (a3 >= v15[3] >> 1)
      {
        sub_100016C08();
        v15 = v67;
      }

      v15[2] = v64;
      v15[a3 + 4] = v40;
      v13 = v84;
      v14 = v75;
    }

    while (v84 != v80);
  }

  else
  {
    v15 = _swiftEmptyArrayStorage;
    v64 = _swiftEmptyArrayStorage[2];
  }

  if (v64 == 2)
  {
    a3 = v15[4];
    v70 = v15[5];
  }

  else
  {
    sub_10007F78C();
    v71 = swift_allocError();
    sub_1000873B4(v71, v72);
LABEL_40:
  }

  return a3;
}

uint64_t sub_100084CC0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v139 = a1;
  v140 = a2;
  v7 = sub_100003998(&qword_1000DE8A8, &qword_1000AEB80);
  v8 = sub_10001C3C4(v7);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  sub_1000499AC();
  sub_1000835D8();
  __chkstk_darwin(v11);
  sub_10008360C();
  v136 = v12;
  sub_10001F268();
  v143 = type metadata accessor for SportingEventProgressStatus();
  v13 = sub_10000AC48(v143);
  v138 = v14;
  v16 = *(v15 + 64);
  __chkstk_darwin(v13);
  sub_1000499AC();
  v142 = v17;
  sub_1000498EC();
  __chkstk_darwin(v18);
  sub_10008360C();
  v137 = v19;
  v20 = sub_100003998(&qword_1000DEA48, &qword_1000AEDC0);
  v21 = sub_10001C3C4(v20);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v25 = &v123 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v123 - v27;
  v141 = type metadata accessor for SportingEventCompetitorWinOutcome();
  v29 = sub_10000AC48(v141);
  v134 = v30;
  v32 = *(v31 + 64);
  __chkstk_darwin(v29);
  sub_1000499AC();
  sub_1000835D8();
  __chkstk_darwin(v33);
  sub_1000835D8();
  __chkstk_darwin(v34);
  sub_10008360C();
  v133 = v35;
  sub_10001F268();
  v146 = type metadata accessor for SportingEventCompetitorScoreStatisticType.StatisticName();
  v36 = sub_10000AC48(v146);
  v144 = v37;
  v39 = *(v38 + 64);
  __chkstk_darwin(v36);
  sub_1000499AC();
  sub_1000835D8();
  __chkstk_darwin(v40);
  v42 = &v123 - v41;
  v43 = type metadata accessor for Sport();
  v44 = sub_10000AC48(v43);
  v147 = v45;
  v148 = v44;
  v47 = *(v46 + 64);
  __chkstk_darwin(v44);
  sub_100087338();
  v49 = a4[3];
  v48 = a4[4];
  v50 = sub_100045DF4();
  sub_100008614(v50, v51);
  v52 = *((*(v48 + 32))(v49, v48) + 16);

  if (v52 != 2)
  {
    sub_10007F78C();
    swift_allocError();
    *v64 = 1;
    return swift_willThrow();
  }

  SportingEventSubscription.sport.getter();
  v145 = v4;
  Sport.init(rawValue:)();
  v53 = SportingEventSubscription.sportingEventDetails.getter();
  v54 = a4[4];
  sub_100008614(a4, a4[3]);
  v55 = sub_100087350();
  result = v56(v55);
  if (*(result + 16))
  {
    sub_10000BC8C(result + 32, &v150);

    v58 = a4[4];
    sub_100008614(a4, a4[3]);
    v59 = sub_100087350();
    result = v60(v59);
    if (*(result + 16) >= 2uLL)
    {
      sub_10000BC8C(result + 72, v149);

      v61 = v153;
      v62 = sub_100085FB8(a3, a4);
      if (v61)
      {
        (*(v147 + 8))(v145, v148);

        sub_100008A94(v149);
        return sub_100008A94(&v150);
      }

      v65 = v62;
      v66 = v63;
      v125 = v25;

      Sport.scoreStatisticName.getter();
      v67 = sub_10008737C();
      sub_10007C29C(v67, v68);
      v129 = v65;

      v69 = v144 + 8;
      v70 = *(v144 + 8);
      v70(v42, v146);

      Sport.scoreStatisticName.getter();
      sub_10007C29C(v42, v66);
      v128 = v66;

      v71 = sub_100087388();
      v127 = v69;
      v126 = v70;
      (v70)(v71);
      v72 = dispatch thunk of SportingEvent.competitors.getter();
      __chkstk_darwin(v72);
      *(&v123 - 2) = &v150;
      sub_1000845F0(sub_100087288, (&v123 - 4), v72);
      sub_1000873D4();
      v153 = v53;
      if (v53)
      {
        dispatch thunk of SportingEventCompetitorContainer.winOutcome.getter();

        v73 = sub_100087304();
        v74 = v141;
        v76 = sub_100008B84(v73, v75, v141);
        v77 = v143;
        if (v76 != 1)
        {
          v78 = v133;
          v124 = *(v134 + 32);
          v124(v133, v28, v74);
          v79 = dispatch thunk of SportingEvent.competitors.getter();
          __chkstk_darwin(v79);
          *(&v123 - 2) = v149;
          sub_1000845F0(sub_1000865B8, (&v123 - 4), v79);
          sub_1000873D4();
          v28 = v125;
          dispatch thunk of SportingEventCompetitorContainer.winOutcome.getter();

          v80 = sub_100087304();
          v82 = sub_100008B84(v80, v81, v74);
          v83 = v142;
          if (v82 != 1)
          {
            v110 = v130;
            v124(v130, v28, v74);
            v111 = enum case for SportingEventCompetitorWinOutcome.win(_:);
            v112 = v78;
            v113 = v134;
            v114 = *(v134 + 104);
            v115 = v131;
            v114(v131, enum case for SportingEventCompetitorWinOutcome.win(_:), v74);
            sub_100064E90(v112, v115);
            v116 = *(v113 + 8);
            v116(v115, v74);
            v114(v115, v111, v74);
            sub_100064E90(v110, v115);
            v116(v115, v74);
            v116(v110, v74);
            v116(v133, v74);
            v107 = v147;
            v106 = v148;
            goto LABEL_23;
          }

          (*(v134 + 8))(v78, v74);
          v84 = v138;
LABEL_13:
          v87 = v137;
          sub_10001BB44(v28, &qword_1000DEA48, &qword_1000AEDC0);
          SportingEvent.progressStatus.getter();
          v88 = *(v84 + 104);
          v88(v83, enum case for SportingEventProgressStatus.final(_:), v77);
          v89 = sub_100064D7C(v87, v83);
          v90 = *(v84 + 8);
          v91 = sub_100087388();
          v90(v91);
          v92 = sub_100045DF4();
          v90(v92);
          if ((v89 & 1) == 0)
          {
            SportingEvent.progressStatus.getter();
            v88(v83, enum case for SportingEventProgressStatus.forfeit(_:), v77);
            v93 = sub_100064D7C(v87, v83);
            v94 = sub_100087388();
            v90(v94);
            v95 = sub_100045DF4();
            v90(v95);
            if ((v93 & 1) == 0)
            {
              v107 = v147;
              v106 = v148;
LABEL_23:
              v117 = v151;
              v118 = v152;
              sub_100008614(&v150, v151);
              (*(v118 + 8))(v117, v118);

              SportsActivityContender.init(canonicalId:scoreEntries:isWinnerIndicatorVisible:)();
              v119 = v149[4];
              sub_100008614(v149, v149[3]);
              v120 = *(v119 + 8);
              v121 = sub_100045DF4();
              v122(v121);

              SportsActivityContender.init(canonicalId:scoreEntries:isWinnerIndicatorVisible:)();

              (*(v107 + 8))(v145, v106);
              sub_100008A94(v149);
              return sub_100008A94(&v150);
            }
          }

          v96 = SportingEvent.clock.getter();
          v97 = SportingEventCurrentClock.current.getter();

          v98 = SportingEventClock.period.getter();
          v99 = v136;
          dispatch thunk of SportingEventClockPeriod.type.getter();

          v100 = type metadata accessor for SportingEventClockPeriodType();
          v101 = sub_100087304();
          if (sub_100008B84(v101, v102, v100) != 1)
          {
            v103 = v132;
            sub_1000459F8(v99, v132, &qword_1000DE8A8, &qword_1000AEB80);
            v104 = *(v100 - 8);
            if ((*(v104 + 88))(v103, v100) == enum case for SportingEventClockPeriodType.shootouts(_:))
            {
              v105 = v135;
              (*(v144 + 104))(v135, enum case for SportingEventCompetitorScoreStatisticType.StatisticName.shootout(_:), v146);
LABEL_21:
              sub_10001BB44(v99, &qword_1000DE8A8, &qword_1000AEB80);
              v108 = v129;

              sub_10007C29C(v105, v108);

              v109 = v128;

              sub_10007C29C(v105, v109);

              v126(v105, v146);
              v107 = v147;
              v106 = v148;
              goto LABEL_23;
            }

            (*(v104 + 8))(v103, v100);
          }

          v105 = v135;
          Sport.scoreStatisticName.getter();
          goto LABEL_21;
        }
      }

      else
      {
        v85 = sub_100087304();
        sub_100008E2C(v85, v86, 1, v141);
        v77 = v143;
      }

      v84 = v138;
      v83 = v142;
      goto LABEL_13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000858E0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v75 = a3;
  v76 = a4;
  v81 = a1;
  v6 = sub_100003998(&unk_1000DD7B0, &qword_1000AC150);
  v7 = sub_10001C3C4(v6);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  sub_1000499AC();
  v74 = v10;
  sub_1000498EC();
  __chkstk_darwin(v11);
  sub_10008360C();
  v73 = v12;
  sub_10001F268();
  v13 = type metadata accessor for URLQueryItem();
  v14 = sub_10000AC48(v13);
  v82 = v15;
  v83 = v14;
  v17 = *(v16 + 64);
  __chkstk_darwin(v14);
  sub_1000499AC();
  v78 = v18;
  sub_1000498EC();
  __chkstk_darwin(v19);
  sub_10008360C();
  v77 = v20;
  sub_10001F268();
  v21 = type metadata accessor for URLComponents();
  v22 = sub_10000AC48(v21);
  v79 = v23;
  v80 = v22;
  v25 = *(v24 + 64);
  __chkstk_darwin(v22);
  v27 = &v72 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v30 = &v72 - v29;
  v31 = sub_100003998(&qword_1000DD218, &unk_1000ABE10);
  v32 = sub_10001C3C4(v31);
  v34 = *(v33 + 64);
  __chkstk_darwin(v32);
  v36 = &v72 - v35;
  v37 = type metadata accessor for SportingEventSubscription.Metadata();
  v38 = sub_10000AC48(v37);
  v40 = v39;
  v42 = *(v41 + 64);
  __chkstk_darwin(v38);
  sub_100087338();
  v43 = sub_100087388();
  sub_1000459F8(v43, v44, &qword_1000DD218, &unk_1000ABE10);
  if (sub_100008B84(v36, 1, v37) == 1)
  {
    sub_10001BB44(v36, &qword_1000DD218, &unk_1000ABE10);
    if (qword_1000DBA38 != -1)
    {
      swift_once();
    }

    v45 = type metadata accessor for Logger();
    sub_100007DE8(v45, qword_1000E6D90);
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&_mh_execute_header, v46, v47, "Cannot create event deeplink URL, metadata is missing", v48, 2u);
    }

    return 0;
  }

  else
  {
    (*(v40 + 32))(v4, v36, v37);

    v84._countAndFlagsBits = v81;
    v84._object = a2;
    v50 = sub_10004B99C(v84);
    v51 = v40;
    if (v50 == 2)
    {
      URLComponents.init()();
      sub_100087320();
      URLComponents.scheme.setter();
      sub_100087394();

      sub_1000872B8();
      v62 = v78;
      URLQueryItem.init(name:value:)();

      sub_100003998(&qword_1000DC590, &unk_1000AAFC0);
      v63 = v82;
      v64 = *(v82 + 72);
      v65 = (*(v82 + 80) + 32) & ~*(v82 + 80);
      v66 = swift_allocObject();
      *(v66 + 16) = xmmword_1000AA5B0;
      v67 = v62;
      v68 = v83;
      (*(v63 + 16))(v66 + v65, v67, v83);
      URLComponents.queryItems.setter();
      v69 = v74;
      URLComponents.url.getter();
      v70 = type metadata accessor for URL();
      if (sub_100008B84(v69, 1, v70) == 1)
      {
        sub_10001BB44(v69, &unk_1000DD7B0, &qword_1000AC150);
        v49 = 0;
      }

      else
      {
        v49 = URL.absoluteString.getter();
        (*(*(v70 - 8) + 8))(v69, v70);
      }

      (*(v63 + 8))(v78, v68);
      (*(v79 + 8))(v27, v80);
    }

    else
    {
      v53 = v82;
      v52 = v83;
      if (v50 == 1)
      {
        URLComponents.init()();
        sub_100087320();
        URLComponents.scheme.setter();
        sub_100087394();

        sub_1000872B8();
        v54 = v77;
        URLQueryItem.init(name:value:)();

        sub_100003998(&qword_1000DC590, &unk_1000AAFC0);
        v55 = *(v53 + 72);
        v56 = (*(v53 + 80) + 32) & ~*(v53 + 80);
        v57 = swift_allocObject();
        *(v57 + 16) = xmmword_1000AA5B0;
        (*(v53 + 16))(v57 + v56, v54, v52);
        URLComponents.queryItems.setter();
        v58 = v73;
        URLComponents.url.getter();
        v59 = type metadata accessor for URL();
        v60 = sub_100087304();
        if (sub_100008B84(v60, v61, v59) == 1)
        {
          sub_10001BB44(v58, &unk_1000DD7B0, &qword_1000AC150);
          v49 = 0;
        }

        else
        {
          v49 = URL.absoluteString.getter();
          (*(*(v59 - 8) + 8))(v58, v59);
        }

        (*(v53 + 8))(v77, v52);
        (*(v79 + 8))(v30, v80);
      }

      else
      {
        v49 = SportingEventSubscription.Metadata.eventURL.getter();
      }
    }

    (*(v51 + 8))(v4, v37);
  }

  return v49;
}

uint64_t sub_100085FB8(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for SportingEventCompetitorScoreStatisticType.StatisticName();
  v5 = *(v4 - 8);
  v63 = v4;
  v64 = v5;
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for Sport();
  v54 = *(v55 - 8);
  v9 = *(v54 + 64);
  __chkstk_darwin(v55);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a2[3];
  v13 = a2[4];
  sub_100008614(a2, v12);
  v14 = *(v13 + 32);
  v15 = *(v14(v12, v13) + 16);

  if (v15 != 2)
  {
    sub_10007F78C();
    swift_allocError();
    *v49 = 1;
    swift_willThrow();
    return v12;
  }

  SportingEventSubscription.sport.getter();
  Sport.init(rawValue:)();
  result = v14(v12, v13);
  v62 = *(result + 16);
  if (v62)
  {
    v17 = 0;
    v59 = result + 32;
    v58 = enum case for SportingEventCompetitorScoreStatisticType.StatisticName.shootout(_:);
    v57 = v64 + 104;
    v68 = (v64 + 8);
    v69 = v64 + 16;
    v18 = _swiftEmptyArrayStorage;
    v56 = xmmword_1000AB460;
    v70 = a1;
    v60 = result;
    v61 = v11;
    while (v17 < *(result + 16))
    {
      v66 = v17;
      v67 = v18;
      sub_10000BC8C(v59 + 40 * v17, v73);
      sub_100003998(&qword_1000DEA50, &qword_1000AEDC8);
      v19 = v64;
      v20 = *(v64 + 72);
      v21 = (*(v64 + 80) + 32) & ~*(v64 + 80);
      v22 = swift_allocObject();
      *(v22 + 16) = v56;
      v65 = v22;
      v23 = v22 + v21;
      Sport.scoreStatisticName.getter();
      v24 = *(v19 + 104);
      v71 = v23;
      v72 = v20;
      v25 = v23 + v20;
      v26 = v63;
      v24(v25, v58, v63);
      v27 = 0;
      v28 = 0;
      v29 = *(v19 + 16);
      v30 = &_swiftEmptyDictionarySingleton;
      do
      {
        v31 = v27;
        v29(v8, v71 + v28 * v72, v26);
        v32 = v74;
        v33 = v75;
        sub_100008614(v73, v74);
        v34 = (*(v33 + 8))(v32, v33);
        v36 = v35;
        v37 = SportingEventSubscription.sportingEventDetails.getter();
        sub_1000865D8(v34, v36);
        v39 = v38;
        v40 = v26;
        v42 = v41;

        if (v42)
        {
          (*v68)(v8, v40);
        }

        else
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v76 = v30;
          sub_100086BF0(v39, v8, isUniquelyReferenced_nonNull_native);
          (*v68)(v8, v40);
          v30 = v76;
        }

        v26 = v40;
        v27 = 1;
        v28 = 1;
      }

      while ((v31 & 1) == 0);
      swift_setDeallocating();
      sub_100086810();
      v18 = v67;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v46 = v18[2];
        sub_100016C08();
        v18 = v47;
      }

      v11 = v61;
      v44 = v66;
      v45 = v18[2];
      if (v45 >= v18[3] >> 1)
      {
        sub_100016C08();
        v18 = v48;
      }

      v17 = v44 + 1;
      v18[2] = v45 + 1;
      v18[v45 + 4] = v30;
      sub_100008A94(v73);
      result = v60;
      if (v17 == v62)
      {

        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v18 = _swiftEmptyArrayStorage;
LABEL_18:
  v50 = v18[2];
  if (!v50)
  {
    goto LABEL_23;
  }

  if (v50 != 1)
  {
    v12 = v18[4];
    v51 = v18[5];
    v52 = *(v54 + 8);

    v52(v11, v55);

    return v12;
  }

LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1000864E4(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = SportingEventCompetitorContainer.competitor.getter();
  v5 = SportingEventCompetitor.canonicalId.getter();
  v7 = v6;

  v8 = a2[3];
  v9 = a2[4];
  sub_100008614(a2, v8);
  if (v5 == (*(v9 + 8))(v8, v9) && v7 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v12 & 1;
}

void sub_1000865D8(uint64_t a1, uint64_t a2)
{
  v4 = dispatch thunk of SportingEvent.competitors.getter();
  v5 = sub_10001BE20(v4);
  for (i = 0; ; ++i)
  {
    if (v5 == i)
    {

      return;
    }

    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_20;
      }

      v7 = *(v4 + 8 * i + 32);
    }

    v8 = v7;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      return;
    }

    v9 = SportingEventCompetitorContainer.competitor.getter();
    v10 = SportingEventCompetitor.canonicalId.getter();
    v12 = v11;

    if (v10 == a1 && v12 == a2)
    {
      break;
    }

    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v14)
    {
      goto LABEL_16;
    }
  }

LABEL_16:

  v15 = dispatch thunk of SportingEventCompetitorContainer.getScoreEntry(name:)();

  if (v15)
  {
    SportingEventCompetitorScoreEntry.value.getter();
  }
}

uint64_t sub_100086754()
{
  v1 = *(v0 + 16);
  swift_arrayDestroy();

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_1000867C0(uint64_t *a1, uint64_t *a2)
{
  v3 = *(v2 + 16);
  sub_100003998(a1, a2);
  swift_arrayDestroy();

  return _swift_deallocClassInstance(v2, 32, 7);
}

uint64_t sub_100086810()
{
  v1 = *(*(type metadata accessor for SportingEventCompetitorScoreStatisticType.StatisticName() - 8) + 80);
  v2 = *(v0 + 16);
  swift_arrayDestroy();

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_100086888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_100017538();
  sub_1000872A4(v13, v14);
  if (v17)
  {
    __break(1u);
    goto LABEL_13;
  }

  v18 = v15;
  v19 = v16;
  sub_100003998(&qword_1000DE2C0, &unk_1000ADAA0);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a5 & 1, v12))
  {
    goto LABEL_5;
  }

  v20 = *v6;
  v21 = sub_100017538();
  if ((v19 & 1) != (v22 & 1))
  {
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v18 = v21;
LABEL_5:
  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v18);
    v25 = v24[1];
    *v24 = a1;
    v24[1] = a2;
  }

  else
  {
    sub_100086FD4(v18, a3, a4, a1, a2, v23);
  }
}

unint64_t sub_1000869D0(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1000175AC(a2);
  sub_1000872A4(v8, v9);
  if (v11)
  {
    __break(1u);
LABEL_12:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v12 = v10;
  sub_100003998(&qword_1000DD7C0, &unk_1000AC128);
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(a3 & 1, v7))
  {
    v13 = *v4;
    sub_1000175AC(a2);
    if ((v12 & 1) != (v14 & 1))
    {
      goto LABEL_12;
    }
  }

  if (v12)
  {
    v15 = *(*v4 + 56);
    sub_100079604();

    return sub_100045358(v16, v17);
  }

  else
  {
    sub_100079604();

    return sub_100087020(v20, v21, v22, v23);
  }
}

_OWORD *sub_100086AE0()
{
  v4 = v1;
  v5 = sub_1000872D8();
  sub_1000872A4(v5, v6);
  if (v9)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = v7;
  v11 = v8;
  sub_100003998(&qword_1000DEA68, &unk_1000AFC00);
  v12 = sub_100087310();
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(v12, v13))
  {
    goto LABEL_5;
  }

  v14 = *v1;
  v15 = sub_100017538();
  if ((v11 & 1) != (v16 & 1))
  {
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v10 = v15;
LABEL_5:
  v17 = *v4;
  if (v11)
  {
    sub_100008A94((v17[7] + 32 * v10));
    sub_100079604();

    return sub_100008EA8(v18, v19);
  }

  else
  {
    sub_10008706C(v10, v3, v2, v0, v17);
    sub_100079604();
  }
}

void sub_100086BF0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for SportingEventCompetitorScoreStatisticType.StatisticName();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  sub_100017744();
  v16 = *(v13 + 16);
  v17 = (v15 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_10;
  }

  v19 = v14;
  v20 = v15;
  sub_100003998(&qword_1000DEA58, &qword_1000AEDD0);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a3 & 1, v18))
  {
    goto LABEL_5;
  }

  v21 = *v4;
  sub_100017744();
  if ((v20 & 1) != (v23 & 1))
  {
LABEL_10:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v19 = v22;
LABEL_5:
  v24 = *v4;
  if (v20)
  {
    *(v24[7] + 8 * v19) = a1;
  }

  else
  {
    (*(v9 + 16))(v12, a2, v8);
    sub_1000870D8(v19, v12, a1, v24);
  }
}

uint64_t sub_100086D80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_100017538();
  sub_1000872A4(v9, v10);
  if (v13)
  {
    __break(1u);
    goto LABEL_13;
  }

  v14 = v11;
  v15 = v12;
  sub_100003998(&qword_1000DE880, &qword_1000AE978);
  v16 = sub_100087310();
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(v16, v17))
  {
    goto LABEL_5;
  }

  v18 = *v4;
  v19 = sub_100017538();
  if ((v15 & 1) != (v20 & 1))
  {
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v14 = v19;
LABEL_5:
  v21 = *v4;
  if (v15)
  {
    v22 = v21[7];
    v23 = *(v22 + 8 * v14);
    *(v22 + 8 * v14) = a1;
    sub_100079604();
  }

  else
  {
    sub_100087190(v14, a2, a3, a1, v21);
    sub_100079604();
  }
}

uint64_t sub_100086EA0()
{
  v4 = v1;
  v5 = sub_1000872D8();
  sub_1000872A4(v5, v6);
  if (v9)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = v7;
  v11 = v8;
  sub_100003998(&qword_1000DE870, &qword_1000AE968);
  v12 = sub_100087310();
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v12, v13))
  {
    v14 = *v1;
    v15 = sub_100017538();
    if ((v11 & 1) == (v16 & 1))
    {
      v10 = v15;
      goto LABEL_5;
    }

LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_5:
  v17 = *v4;
  if (v11)
  {
    v18 = v17[7];
    v19 = type metadata accessor for DatedSubscribers();
    sub_10001C2AC(v19);
    v21 = *(v20 + 40);
    v22 = v18 + *(v20 + 72) * v10;
    sub_100079604();

    __asm { BRAA            X3, X16 }
  }

  sub_1000871D8(v10, v3, v2, v0, v17);
  sub_100079604();
}

unint64_t sub_100086FD4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

unint64_t sub_100087020(unint64_t result, char a2, _OWORD *a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2;
  v4 = (a4[7] + 32 * result);
  v5 = a3[1];
  *v4 = *a3;
  v4[1] = v5;
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

_OWORD *sub_10008706C(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_100008EA8(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_1000870D8(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for SportingEventCompetitorScoreStatisticType.StatisticName();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

unint64_t sub_100087190(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_1000871D8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for DatedSubscribers();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

unint64_t sub_1000872D8()
{
  v2 = *v0;

  return sub_100017538();
}

uint64_t sub_100087394()
{

  return URLComponents.host.setter(0x746E657665, 0xE500000000000000);
}

uint64_t sub_1000873B4(uint64_t a1, _BYTE *a2)
{
  *a2 = 2;

  return swift_willThrow();
}

uint64_t sub_1000873D4()
{
  *(v1 - 344) = v0;
}

uint64_t sub_1000873FC(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 144))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}