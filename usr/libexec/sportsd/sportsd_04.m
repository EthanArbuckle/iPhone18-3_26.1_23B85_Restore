uint64_t sub_10005D40C(uint64_t a1)
{
  FullApsMessageOperation = type metadata accessor for SubscriptionFetchFullApsMessageOperation();
  (*(*(FullApsMessageOperation - 8) + 8))(a1, FullApsMessageOperation);
  return a1;
}

uint64_t sub_10005D468()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10005D4B0()
{
  v1 = *(v0 + 16);

  sub_100008A94((v0 + 32));
  v2 = *(v0 + 72);
  swift_unknownObjectRelease();
  sub_100008A94((v0 + 80));
  sub_100008A94((v0 + 120));

  return _swift_deallocObject(v0, 160, 7);
}

uint64_t sub_10005D520()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10005D574(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for URL();
    v9 = a1 + *(a3 + 28);

    return sub_100008B84(v9, a2, v8);
  }
}

void *sub_10005D610(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for URL();
    v8 = v5 + *(a4 + 28);

    return sub_100008E2C(v8, a2, a2, v7);
  }

  return result;
}

unint64_t sub_10005D690()
{
  result = type metadata accessor for DataRepository();
  if (v1 <= 0x3F)
  {
    result = sub_10005D748();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for URL();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_10005D748()
{
  result = qword_1000DD370;
  if (!qword_1000DD370)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1000DD370);
  }

  return result;
}

uint64_t sub_10005D7BC(uint64_t a1, uint64_t a2)
{
  if (qword_1000DBA00 != -1)
  {
    swift_once();
  }

  return sub_10004F60C(a1, a2) & 1;
}

uint64_t sub_10005D854()
{
  sub_10000BCF0(v0 + OBJC_IVAR____TtC7sportsd31DirectActivityRequestXPCSession_subscriptionOperation);
  sub_100008A94((v0 + OBJC_IVAR____TtC7sportsd31DirectActivityRequestXPCSession_liveActivityAppIntentService));
  v1 = *(v0 + OBJC_IVAR____TtC7sportsd31DirectActivityRequestXPCSession_cancellables);

  v2 = *(v0 + OBJC_IVAR____TtC7sportsd31DirectActivityRequestXPCSession_areLiveActivitiesEnabledForBundleId + 8);

  v3 = *(v0 + OBJC_IVAR____TtC7sportsd31DirectActivityRequestXPCSession_autostartStatus + 8);
}

id sub_10005D8CC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  if (qword_1000DBA10 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100007DE8(v3, qword_1000E6D18);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Connection closed.", v6, 2u);
    sub_10000B008();
  }

  v8.receiver = v1;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, "dealloc");
}

uint64_t sub_10005DA7C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a4;
  sub_10005DB10(a1, a2, 0, sub_1000642C0, v7);
}

uint64_t sub_10005DB10(uint64_t a1, unint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  ObjectType = swift_getObjectType();
  v12 = sub_1000499E0();
  v14 = v13;
  v15 = *(v5 + OBJC_IVAR____TtC7sportsd31DirectActivityRequestXPCSession_areLiveActivitiesEnabledForBundleId);
  v16 = *(v5 + OBJC_IVAR____TtC7sportsd31DirectActivityRequestXPCSession_areLiveActivitiesEnabledForBundleId + 8);
  if (v15())
  {
    sub_100064344();
    v35 = v12;
    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v34 = ObjectType;
    v18 = a1;
    v19 = swift_allocObject();
    v19[2] = v17;
    v19[3] = v18;
    v19[4] = a2;
    v19[5] = a4;
    v19[6] = a5;
    sub_100064344();
    v20 = a5;
    v21 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v22 = swift_allocObject();
    v23 = v14;
    v24 = a4;
    v25 = v22;
    v22[2] = v21;
    v22[3] = v18;
    v22[4] = a2;
    v22[5] = a3;
    v22[6] = v24;
    v22[7] = v20;
    v22[8] = v35;
    v22[9] = v23;
    v22[10] = v34;
    sub_10005B070();
    v26 = swift_allocObject();
    *(v26 + 16) = v24;
    *(v26 + 24) = v20;

    swift_retain_n();
    swift_bridgeObjectRetain_n();

    sub_10005F504(sub_100062D00, v19, sub_100062DA4, v25, sub_100062DDC, v26);
  }

  else
  {
    if (qword_1000DBA38 != -1)
    {
      sub_10005AD5C();
    }

    v28 = type metadata accessor for Logger();
    sub_100007DE8(v28, qword_1000E6D90);

    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = a1;
      v32 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *v32 = 136315394;
      *(v32 + 4) = sub_1000170D4(v31, a2, &v36);
      *(v32 + 12) = 2080;
      *(v32 + 14) = sub_1000170D4(v12, v14, &v36);
      _os_log_impl(&_mh_execute_header, v29, v30, "Skipping activity for event %s because live activities are not enabled for %s", v32, 0x16u);
      swift_arrayDestroy();
      sub_10000B008();
      sub_10000B008();
    }

    sub_100045BF8();
    swift_allocError();
    *v33 = v12;
    v33[1] = v14;
    a4();
  }
}

uint64_t sub_10005DF38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  return _swift_task_switch(sub_10005DF60, 0, 0);
}

uint64_t sub_10005DF60()
{
  sub_10001C524();
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC7sportsd31DirectActivityRequestXPCSession_liveActivityAppIntentService);
  v2 = v1[4];
  sub_100008614(v1, v1[3]);
  v3 = *(sub_10001C418() + 40);
  sub_100064354();
  v10 = (v4 + *v4);
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  *(v0 + 56) = v7;
  *v7 = v0;
  v8 = sub_1000643D8(v7);

  return v10(v8);
}

uint64_t sub_10005E080()
{
  sub_10001BEC4();
  sub_10001BF54();
  sub_10001BED0();
  *v3 = v2;
  v5 = *(v4 + 56);
  *v3 = *v1;
  *(v2 + 72) = v6;
  *(v2 + 64) = v0;

  if (v0)
  {
    v7 = sub_10005E304;
  }

  else
  {
    v7 = sub_10005E18C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10005E18C()
{
  sub_10001C370();
  if (qword_1000DBA38 != -1)
  {
    sub_10005AD5C();
  }

  v2 = *(v1 + 32);
  v3 = type metadata accessor for Logger();
  sub_100007DE8(v3, qword_1000E6D90);
  sub_10001C418();

  v4 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  sub_1000643EC();

  if (os_log_type_enabled(v4, v0))
  {
    sub_10006446C();
    v5 = swift_slowAlloc();
    v13 = sub_10006444C(4.8151e-34, v5, v6, v7, v8, v9, v10, v11, v12, v5);
    sub_1000643F8(v13);
    sub_10006440C(&_mh_execute_header, v14, v15, "Should suppress game start notification for %s: %{BOOL}d");
    sub_100008A94(v5);
    sub_10000B008();
    sub_10005AFC4();
  }

  if (*(v1 + 72))
  {
    v16 = 0;
  }

  else
  {
    sub_100045BF8();
    v16 = swift_allocError();
    *v17 = xmmword_1000AC890;
  }

  v18 = *(v1 + 48);
  (*(v1 + 40))(v16);

  sub_10001BEDC();

  return v19();
}

uint64_t sub_10005E304()
{
  sub_10001C524();
  if (qword_1000DBA38 != -1)
  {
    sub_10005AD5C();
  }

  v2 = v1[8];
  v3 = type metadata accessor for Logger();
  sub_100007DE8(v3, qword_1000E6D90);
  sub_10001C418();
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  sub_1000643EC();

  if (os_log_type_enabled(v4, v0))
  {
    v5 = v1[8];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    sub_10006442C(&_mh_execute_header, v9, v10, "Cannot check if activity should be suppressed: %@");
    sub_10001EF70(v7, &unk_1000DD790, &unk_1000AB7A0);
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

void sub_10005E478(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void (*a5)(void), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v72 = a7;
  v14 = sub_100003998(&qword_1000DC5A0, &unk_1000AB0E0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v66 - v16;
  ActivityOperation = type metadata accessor for SubscriptionCreateActivityOperation();
  v19 = *(*(ActivityOperation - 1) + 64);
  __chkstk_darwin(ActivityOperation);
  v21 = &v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v23 = Strong;
    v71 = a6;
    v73 = a2;
    if (sub_10005EB6C(a2, a3, a4))
    {
      v24 = a5;
      if (qword_1000DBA38 != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for Logger();
      sub_100007DE8(v25, qword_1000E6D90);

      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.debug.getter();

      v28 = os_log_type_enabled(v26, v27);
      v29 = v73;
      if (v28)
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        __src[0] = v31;
        *v30 = 136315138;
        *(v30 + 4) = sub_1000170D4(v29, a3, __src);
        _os_log_impl(&_mh_execute_header, v26, v27, "Skipping activity for event %s since it is suppressed from autostart", v30, 0xCu);
        sub_100008A94(v31);
      }

      sub_100045BF8();
      swift_allocError();
      *v32 = xmmword_1000AC890;
      v24();
    }

    else
    {
      v70 = a5;
      v33 = v23 + OBJC_IVAR____TtC7sportsd31DirectActivityRequestXPCSession_subscriptionOperation;
      sub_10005ECC8(a4, __src);
      v34 = sub_10005EF2C(a4);
      v68 = v35;
      v67 = v36;
      v66 = v37;
      v38 = type metadata accessor for Date();
      sub_100008E2C(v17, 1, 1, v38);
      sub_10000BC30(v33, v21);
      sub_10006F7C0(v21 + 23);
      v69 = v23;
      if (qword_1000DB9B8 != -1)
      {
        swift_once();
      }

      v39 = qword_1000E6CC0;
      *(v21 + 31) = type metadata accessor for BagProvider();
      *(v21 + 32) = &off_1000D0860;
      *(v21 + 28) = v39;
      v40 = type metadata accessor for AccountManager();
      v41 = swift_allocObject();
      *(v21 + 36) = v40;
      *(v21 + 37) = &off_1000D0550;
      *(v21 + 33) = v41;
      v42 = *(v33 + 40);
      sub_10000BC8C(v33 + 56, (v21 + 312));
      sub_10003FA5C(v17, &v21[ActivityOperation[12]], &qword_1000DC5A0, &unk_1000AB0E0);
      *(v21 + 38) = v42;
      v21[352] = 0;
      memcpy(v21 + 360, __src, 0x68uLL);
      v43 = v68;
      *(v21 + 58) = v34;
      *(v21 + 59) = v43;
      v44 = v66;
      *(v21 + 60) = v67;
      *(v21 + 61) = v44;
      v21[496] = 1;
      v45 = &v21[ActivityOperation[13]];
      *v45 = 0xD000000000000011;
      *(v45 + 1) = 0x80000001000B0480;
      v46 = &v21[ActivityOperation[14]];
      *v46 = v72;
      *(v46 + 1) = a8;
      v47 = &v21[ActivityOperation[15]];
      *v47 = v73;
      *(v47 + 1) = a3;
      v21[ActivityOperation[16]] = 1;
      v72 = ActivityOperation[17];
      v48 = type metadata accessor for ActivityAuthorization();
      v49 = objc_allocWithZone(v48);

      v50 = [v49 init];
      v51 = sub_1000499E0();
      v53 = v52;
      v74[3] = v48;
      v74[4] = &off_1000D1900;
      v74[0] = v50;
      type metadata accessor for ActivityCapUtility();
      v54 = swift_allocObject();
      v55 = sub_10000B90C(v74, v48);
      v56 = *(*(v48 - 1) + 64);
      v57 = __chkstk_darwin(v55);
      v59 = (&v66 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v60 + 16))(v59, v57);
      v61 = *v59;
      v54[5] = v48;
      v54[6] = &off_1000D1900;
      v54[7] = v51;
      v54[2] = v61;
      v54[8] = v53;
      sub_100008A94(v74);

      sub_10001EF70(v17, &qword_1000DC5A0, &unk_1000AB0E0);
      *&v21[v72] = v54;
      v62 = sub_10008CAA4(0);
      sub_10005A71C(v21);
      v74[0] = v62;
      v63 = swift_allocObject();
      v64 = v71;
      v63[2] = v70;
      v63[3] = v64;
      v63[4] = v73;
      v63[5] = a3;

      sub_100003998(&qword_1000DCC18, &qword_1000AB790);
      sub_10002F198();
      Publisher.sink(receiveCompletion:receiveValue:)();

      v65 = v69;
      swift_beginAccess();
      AnyCancellable.store(in:)();
      swift_endAccess();
    }
  }
}

BOOL sub_10005EB6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + OBJC_IVAR____TtC7sportsd31DirectActivityRequestXPCSession_autostartStatus);
  v8 = *(v3 + OBJC_IVAR____TtC7sportsd31DirectActivityRequestXPCSession_autostartStatus + 8);
  v9 = v7(0, 0);
  v10 = sub_1000154A0(v9);
  if (sub_100049B40(a1, a2, v10) || (sub_1000601D0(a3), v12 = sub_100060344(v10, v11), , (v12 & 1) == 0))
  {

    return 1;
  }

  else
  {
    sub_10005ECC8(a3, v16);
    if (v17 == 1 || (v19 = v18, sub_10003FA5C(&v19, v15, &qword_1000DDD90, &qword_1000AC8F0), sub_10001EF70(v16, &qword_1000DDD98, &qword_1000AC8F8), !*(&v19 + 1)))
    {

      return 0;
    }

    else
    {
      v13 = sub_100049B40(v19, *(&v19 + 1), v10);

      sub_10001EF70(&v19, &qword_1000DDD90, &qword_1000AC8F0);
    }
  }

  return v13;
}

uint64_t sub_10005ECC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (!a1)
  {
    v25 = 0u;
    v26 = 0u;
    goto LABEL_6;
  }

  *&v27 = 0xD000000000000015;
  *(&v27 + 1) = 0x80000001000B21D0;
  AnyHashable.init<A>(_:)();
  sub_10007C118(v23, a1, &v25);
  sub_10001BAF0(v23);
  if (!*(&v26 + 1))
  {
LABEL_6:
    result = sub_10001EF70(&v25, &qword_1000DBD08, &qword_1000AA690);
LABEL_8:
    v22 = 0;
    v16 = xmmword_1000AC240;
    v17 = 0uLL;
    v18 = 0uLL;
    v19 = 0uLL;
    v20 = 0uLL;
    v21 = 0uLL;
    goto LABEL_9;
  }

  sub_100008EA8(&v25, &v27);
  v4 = objc_opt_self();
  sub_100008614(&v27, v28);
  v5 = _bridgeAnythingToObjectiveC<A>(_:)();
  *&v23[0] = 0;
  v6 = [v4 dataWithJSONObject:v5 options:0 error:v23];
  sub_10001C418();
  swift_unknownObjectRelease();
  v7 = *&v23[0];
  if (!v4)
  {
    v14 = v7;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    result = sub_100008A94(&v27);
    goto LABEL_8;
  }

  v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11 = type metadata accessor for JSONDecoder();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  sub_100062E98();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  sub_100008BAC(v8, v10);
  result = sub_100008A94(&v27);
  v17 = v23[0];
  v16 = v23[1];
  v18 = v23[2];
  v19 = v23[3];
  v20 = v23[4];
  v21 = v23[5];
  v22 = v24;
LABEL_9:
  *a2 = v17;
  *(a2 + 16) = v16;
  *(a2 + 32) = v18;
  *(a2 + 48) = v19;
  *(a2 + 64) = v20;
  *(a2 + 80) = v21;
  *(a2 + 96) = v22;
  return result;
}

uint64_t sub_10005EF2C(uint64_t a1)
{
  if (!a1)
  {
    v16 = 0u;
    v17 = 0u;
    goto LABEL_6;
  }

  AnyHashable.init<A>(_:)();
  sub_10007C118(v14, a1, &v16);
  sub_10001BAF0(v14);
  if (!*(&v17 + 1))
  {
LABEL_6:
    sub_10001EF70(&v16, &qword_1000DBD08, &qword_1000AA690);
    return 0;
  }

  sub_100008EA8(&v16, v14);
  v2 = objc_opt_self();
  v3 = v15;
  sub_100008614(v14, v15);
  v4 = _bridgeAnythingToObjectiveC<A>(_:)();
  *&v16 = 0;
  v5 = [v2 dataWithJSONObject:v4 options:0 error:&v16];
  sub_10001C418();
  swift_unknownObjectRelease();
  v6 = v16;
  if (v3)
  {
    static Data._unconditionallyBridgeFromObjectiveC(_:)();

    v7 = type metadata accessor for JSONDecoder();
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    swift_allocObject();
    JSONDecoder.init()();
    sub_100062E44();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    v11 = sub_10006439C();
    sub_100008BAC(v11, v12);
    sub_100008A94(v14);
    return v16;
  }

  v10 = v6;
  _convertNSErrorToError(_:)();

  swift_willThrow();

  sub_100008A94(v14);
  return 0;
}

uint64_t sub_10005F154(uint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = *a1;
  if (*a1)
  {
    v19 = *a1;
    swift_errorRetain();
    sub_100003998(&qword_1000DC470, &qword_1000AA620);
    if (swift_dynamicCast())
    {
      if (v18 == 2)
      {

        v6 = 0;
        return a2(v6);
      }

      sub_100062E30(v17, v18);
    }

    if (qword_1000DBA38 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100007DE8(v9, qword_1000E6D90);
    swift_errorRetain();

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v12 = 136315394;
      *(v12 + 4) = sub_1000170D4(a4, a5, &v17);
      *(v12 + 12) = 2080;
      swift_getErrorValue();
      v13 = Error.localizedDescription.getter();
      v15 = sub_1000170D4(v13, v14, &v17);

      *(v12 + 14) = v15;
      _os_log_impl(&_mh_execute_header, v10, v11, "Failed to create activity for canonical ID: %s - %s", v12, 0x16u);
      swift_arrayDestroy();
    }
  }

  return a2(v6);
}

uint64_t sub_10005F398(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  if (qword_1000DBA38 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100007DE8(v4, qword_1000E6D90);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "Cannot check if app intents are supported: %@", v7, 0xCu);
    sub_10001EF70(v8, &unk_1000DD790, &unk_1000AB7A0);
  }

  return a2(a1);
}

uint64_t sub_10005F504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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

uint64_t sub_10005F72C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = a1;
  v9[4] = a2;
  v9[5] = a3;
  v9[6] = a4;
  sub_10005B070();
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = a4;
  sub_10005B070();
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = a4;
  swift_retain_n();

  sub_10005F504(sub_1000608E4, v9, sub_100060938, v10, sub_100060940, v11);
}

uint64_t sub_10005F87C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(*(sub_100003998(&qword_1000DC5A8, &qword_1000AAFD0) - 8) + 64);
  sub_10000ACFC();
  __chkstk_darwin(v11);
  sub_100064364();
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v13 = result;
    v14 = type metadata accessor for TaskPriority();
    sub_100008E2C(v5, 1, 1, v14);
    v15 = swift_allocObject();
    v15[2] = 0;
    v15[3] = 0;
    v15[4] = v13;
    v15[5] = a2;
    v15[6] = a3;
    v15[7] = a4;
    v15[8] = a5;

    sub_10004A77C();
  }

  return result;
}

uint64_t sub_10005F9A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  return _swift_task_switch(sub_10005F9CC, 0, 0);
}

uint64_t sub_10005F9CC()
{
  sub_10001C524();
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC7sportsd31DirectActivityRequestXPCSession_liveActivityAppIntentService);
  v2 = v1[4];
  sub_100008614(v1, v1[3]);
  v3 = *(sub_10001C418() + 40);
  sub_100064354();
  v10 = (v4 + *v4);
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  *(v0 + 56) = v7;
  *v7 = v0;
  v8 = sub_1000643D8(v7);

  return v10(v8);
}

uint64_t sub_10005FAEC()
{
  sub_10001BEC4();
  sub_10001BF54();
  sub_10001BED0();
  *v3 = v2;
  v5 = *(v4 + 56);
  *v3 = *v1;
  *(v2 + 72) = v6;
  *(v2 + 64) = v0;

  if (v0)
  {
    v7 = sub_10005FD2C;
  }

  else
  {
    v7 = sub_10005FBF8;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10005FBF8()
{
  sub_10001C370();
  if (qword_1000DBA38 != -1)
  {
    sub_10005AD5C();
  }

  v2 = *(v1 + 32);
  v3 = type metadata accessor for Logger();
  sub_100007DE8(v3, qword_1000E6D90);
  sub_10001C418();

  v4 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  sub_1000643EC();

  if (os_log_type_enabled(v4, v0))
  {
    sub_10006446C();
    v5 = swift_slowAlloc();
    v13 = sub_10006444C(4.8151e-34, v5, v6, v7, v8, v9, v10, v11, v12, v5);
    sub_1000643F8(v13);
    sub_10006440C(&_mh_execute_header, v14, v15, "Should suppress sentiment notification for %s: %{BOOL}d");
    sub_100008A94(v5);
    sub_10000B008();
    sub_10005AFC4();
  }

  v16 = *(v1 + 48);
  (*(v1 + 40))(*(v1 + 72));
  sub_10001BEDC();

  return v17();
}

uint64_t sub_10005FD2C()
{
  sub_10001C524();
  if (qword_1000DBA38 != -1)
  {
    sub_10005AD5C();
  }

  v2 = v1[8];
  v3 = type metadata accessor for Logger();
  sub_100007DE8(v3, qword_1000E6D90);
  sub_10001C418();
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  sub_1000643EC();

  if (os_log_type_enabled(v4, v0))
  {
    v5 = v1[8];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    sub_10006442C(&_mh_execute_header, v9, v10, "Cannot check if notification should be suppressed: %@");
    sub_10001EF70(v7, &unk_1000DD790, &unk_1000AB7A0);
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

uint64_t sub_10005FE90(uint64_t (*a1)(void))
{
  if (qword_1000DBA38 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100007DE8(v2, qword_1000E6D90);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Suppressing sentiment notification as app intents are not supported", v5, 2u);
  }

  return a1(0);
}

uint64_t sub_10005FF88(uint64_t a1, uint64_t (*a2)(void))
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
    sub_10001EF70(v7, &unk_1000DD790, &unk_1000AB7A0);
  }

  return a2(0);
}

void sub_1000601D0(uint64_t a1)
{
  sub_10005ECC8(a1, v14);
  if (v15 != 1)
  {
    v17 = v16;
    sub_10003FA5C(&v17, v13, &qword_1000DDDA0, &qword_1000AC900);
    sub_10001EF70(v14, &qword_1000DDD98, &qword_1000AC8F8);
    v1 = v17;
    if (v17)
    {
      v2 = 0;
      v3 = *(v17 + 16);
      v4 = (v17 + 40);
      v5 = _swiftEmptyArrayStorage;
      while (1)
      {
        if (v3 == v2)
        {
          sub_10001EF70(&v17, &qword_1000DDDA0, &qword_1000AC900);
          sub_100015240(v5);
          return;
        }

        if (v2 >= *(v1 + 16))
        {
          break;
        }

        v7 = *(v4 - 1);
        v6 = *v4;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = v5[2];
          sub_100016520();
          v5 = v11;
        }

        v8 = v5[2];
        if (v8 >= v5[3] >> 1)
        {
          sub_100016520();
          v5 = v12;
        }

        v5[2] = v8 + 1;
        v9 = &v5[2 * v8];
        v9[4] = v7;
        v9[5] = v6;
        v4 += 9;
        ++v2;
      }

      __break(1u);
    }
  }
}

uint64_t sub_100060344(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = *(a1 + 16);
  if (!v3)
  {
    return 1;
  }

  if (v2 >= v3)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  v5 = v4 + 56;
  if (v2 >= v3)
  {
    v6 = a2;
  }

  else
  {
    v6 = a1;
  }

  v7 = 1 << *(v4 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v4 + 56);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
LABEL_13:
  while (v9)
  {
    v13 = v9;
LABEL_19:
    v9 = (v13 - 1) & v13;
    if (*(v6 + 16))
    {
      v25 = v4;
      v15 = (*(v4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v13)))));
      v17 = *v15;
      v16 = v15[1];
      v18 = *(v6 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      v19 = Hasher._finalize()();
      v20 = ~(-1 << *(v6 + 32));
      do
      {
        v21 = v19 & v20;
        if (((*(v6 + 56 + (((v19 & v20) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v19 & v20)) & 1) == 0)
        {

          v4 = v25;
          goto LABEL_13;
        }

        v22 = (*(v6 + 48) + 16 * v21);
        if (*v22 == v17 && v22[1] == v16)
        {
          break;
        }

        v24 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v19 = v21 + 1;
      }

      while ((v24 & 1) == 0);

      return 0;
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v10)
    {

      return 1;
    }

    v13 = *(v5 + 8 * v14);
    ++v12;
    if (v13)
    {
      v12 = v14;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10006051C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = v10;
  v8[8] = v11;
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  return _swift_task_switch(sub_100060550, 0, 0);
}

uint64_t sub_100060550()
{
  sub_10001C524();
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC7sportsd31DirectActivityRequestXPCSession_liveActivityAppIntentService);
  v2 = v1[3];
  v3 = v1[4];
  sub_100008614(v1, v2);
  v4 = *(sub_10001C418() + 8);
  sub_100064354();
  v10 = (v5 + *v5);
  v7 = *(v6 + 4);
  v8 = swift_task_alloc();
  *(v0 + 72) = v8;
  *v8 = v0;
  v8[1] = sub_100060670;

  return v10(v2, v3);
}

uint64_t sub_100060670(char a1)
{
  sub_10001BF54();
  v5 = v4;
  sub_10001BED0();
  *v6 = v5;
  v8 = *(v7 + 72);
  v9 = *v2;
  sub_10001BED0();
  *v10 = v9;
  *(v5 + 80) = v1;

  if (v1)
  {
    v11 = sub_100060810;
  }

  else
  {
    *(v5 + 88) = a1 & 1;
    v11 = sub_100060790;
  }

  return _swift_task_switch(v11, 0, 0);
}

uint64_t sub_100060790()
{
  sub_10001BEC4();
  v1 = 48;
  if (*(v0 + 88))
  {
    v1 = 32;
  }

  v2 = 40;
  if (*(v0 + 88))
  {
    v2 = 24;
  }

  v3 = *(v0 + v1);
  (*(v0 + v2))();
  sub_10001BEDC();

  return v4();
}

uint64_t sub_100060810()
{
  sub_10001BEC4();
  v1 = *(v0 + 64);
  (*(v0 + 56))(*(v0 + 80));

  sub_10001BEDC();

  return v2();
}

uint64_t sub_10006087C()
{
  _Block_release(*(v0 + 16));
  v1 = sub_100064344();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_1000608B4()
{
  swift_unknownObjectWeakDestroy();
  v0 = sub_100064344();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_100060904()
{
  v1 = *(v0 + 24);

  sub_10005B070();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_100060948()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  v4 = *(v0 + 80);

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_1000609A0()
{
  v1 = v0[3];
  v20 = v0[2];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v7 = v0[8];
  v6 = v0[9];
  v8 = v0[10];
  v9 = swift_task_alloc();
  v10 = sub_10003FBF8(v9);
  *v10 = v11;
  v10[1] = sub_1000642A8;
  sub_100064310();

  return sub_10006051C(v12, v13, v14, v15, v16, v17, v18, v7);
}

uint64_t sub_100060A7C(uint64_t a1, uint64_t a2)
{
  if (a1 == 7107189 && a2 == 0xE300000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_100060B04(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6163696E6F6E6163 && a2 == 0xEB0000000064496CLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6169766572626261 && a2 == 0xEC0000006E6F6974;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6F676F4C6D616574 && a2 == 0xE800000000000000;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x756F72676B636162 && a2 == 0xEF726F6C6F43646ELL;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 1701670760 && a2 == 0xE400000000000000)
        {

          return 4;
        }

        else
        {
          v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_100060CBC(char a1)
{
  result = 0x6163696E6F6E6163;
  switch(a1)
  {
    case 1:
      result = 0x6169766572626261;
      break;
    case 2:
      result = 0x6F676F4C6D616574;
      break;
    case 3:
      result = 0x756F72676B636162;
      break;
    case 4:
      result = 1701670760;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100060D80(void *a1)
{
  v3 = v1;
  v5 = sub_100003998(&qword_1000DDE00, &qword_1000ACB70);
  sub_10000AC48(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_10000ACFC();
  __chkstk_darwin(v10);
  sub_100064374();
  v11 = a1[4];
  sub_100008614(a1, a1[3]);
  sub_1000634DC();
  sub_10006448C();
  v12 = *v3;
  v13 = v3[1];
  sub_100064328();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v14 = v3[2];
    v15 = v3[3];
    sub_100064328();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v23 = *(v3 + 2);
    sub_100063600();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v16 = v3[6];
    v17 = v3[7];
    sub_100064328();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v18 = *(v3 + 64);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  v19 = *(v7 + 8);
  v20 = sub_10006439C();
  return v21(v20);
}

void sub_100060F3C()
{
  sub_1000643A8();
  v2 = v1;
  v4 = v3;
  v5 = sub_100003998(&qword_1000DDDE8, &qword_1000ACB68);
  sub_10000AC48(v5);
  v7 = *(v6 + 64);
  sub_10000ACFC();
  __chkstk_darwin(v8);
  v9 = v2[4];
  sub_100008614(v2, v2[3]);
  sub_1000634DC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    sub_100008A94(v2);
  }

  else
  {
    sub_100064334();
    v10 = KeyedDecodingContainer.decode(_:forKey:)();
    v24 = v11;
    LOBYTE(v26) = 1;
    sub_100064334();
    v12 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v23 = v13;
    v21 = v12;
    LOBYTE(v25[0]) = 2;
    sub_100063544();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v20 = v26;
    v19 = v27;
    LOBYTE(v26) = 3;
    sub_100064334();
    v18 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v22 = v14;
    sub_100064334();
    v15 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v16 = sub_100064300();
    v17(v16);
    v25[0] = v10;
    v25[1] = v24;
    v25[2] = v21;
    v25[3] = v23;
    v25[4] = v20;
    v25[5] = v19;
    v25[6] = v18;
    v25[7] = v22;
    LOBYTE(v25[8]) = v15;
    sub_100063598(v25, &v26);
    sub_100008A94(v2);
    v26 = v10;
    v27 = v24;
    v28 = v21;
    v29 = v23;
    v30 = v20;
    v31 = v19;
    v32 = v18;
    v33 = v22;
    v34 = v15;
    sub_1000635D0(&v26);
    memcpy(v4, v25, 0x41uLL);
  }

  sub_1000643C0();
}

uint64_t sub_100061298(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000014 && 0x80000001000B2210 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x54656D6147657270 && a2 == 0xEC000000656C7469;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x74695474726F6873 && a2 == 0xEA0000000000656CLL;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x74697465706D6F63 && a2 == 0xEB0000000073726FLL;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x644974726F7073 && a2 == 0xE700000000000000;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x644965756761656CLL && a2 == 0xE800000000000000;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x64496E6F69746361 && a2 == 0xE800000000000000)
            {

              return 6;
            }

            else
            {
              v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1000614E8(char a1)
{
  result = 0x54656D6147657270;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      v3 = 0x5474726F6873;
      goto LABEL_6;
    case 3:
      v3 = 0x7465706D6F63;
LABEL_6:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x7469000000000000;
      break;
    case 4:
      result = 0x644974726F7073;
      break;
    case 5:
      result = 0x644965756761656CLL;
      break;
    case 6:
      result = 0x64496E6F69746361;
      break;
    default:
      result = 0xD000000000000014;
      break;
  }

  return result;
}

uint64_t sub_1000615E4(void *a1)
{
  v3 = v1;
  v5 = sub_100003998(&qword_1000DDE10, &qword_1000ACB78);
  sub_10000AC48(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_10000ACFC();
  __chkstk_darwin(v10);
  sub_100064374();
  v11 = a1[4];
  sub_100008614(a1, a1[3]);
  sub_1000633CC();
  sub_10006448C();
  v12 = *v3;
  v13 = *(v3 + 8);
  sub_1000642E0();
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    v14 = v3[2];
    v15 = v3[3];
    sub_1000642E0();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v16 = v3[4];
    v17 = v3[5];
    sub_1000642E0();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v28 = v3[6];
    sub_100003998(&qword_1000DDDD0, &qword_1000ACB60);
    sub_100063654(&qword_1000DDE18, sub_1000636CC);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v18 = v3[7];
    v19 = v3[8];
    sub_1000642E0();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v20 = v3[9];
    v21 = v3[10];
    sub_1000642E0();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v22 = v3[11];
    v23 = v3[12];
    sub_1000642E0();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  v24 = *(v7 + 8);
  v25 = sub_10006439C();
  return v26(v25);
}

void sub_100061814()
{
  sub_1000643A8();
  v2 = v1;
  v4 = v3;
  v5 = sub_100003998(&qword_1000DDDC0, &qword_1000ACB58);
  sub_10000AC48(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_10000ACFC();
  __chkstk_darwin(v10);
  v12 = &v29 - v11;
  v13 = v2[4];
  sub_100008614(v2, v2[3]);
  sub_1000633CC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    sub_100008A94(v2);
  }

  else
  {
    LOBYTE(v39) = 0;
    sub_1000642CC();
    v14 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v52 = v15 & 1;
    LOBYTE(v39) = 1;
    sub_1000642CC();
    v16 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v37 = v17;
    LOBYTE(v39) = 2;
    sub_1000642CC();
    v34 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v36 = v18;
    sub_100003998(&qword_1000DDDD0, &qword_1000ACB60);
    LOBYTE(v38[0]) = 3;
    sub_100063654(&qword_1000DDDD8, sub_100063420);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v33 = v39;
    LOBYTE(v39) = 4;
    sub_1000642CC();
    v31 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v32 = v16;
    v35 = v19;
    LOBYTE(v39) = 5;
    sub_1000642CC();
    v20 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v22 = v21;
    v30 = v20;
    v23 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v24 = v12;
    v26 = v25;
    (*(v7 + 8))(v24, v5);
    v38[0] = v14;
    HIDWORD(v29) = v52;
    LOBYTE(v38[1]) = v52;
    v38[2] = v32;
    v27 = v37;
    v38[3] = v37;
    v38[4] = v34;
    v28 = v36;
    v38[5] = v36;
    v38[6] = v33;
    v38[7] = v31;
    v38[8] = v35;
    v38[9] = v30;
    v38[10] = v22;
    v38[11] = v23;
    v38[12] = v26;
    sub_100063474(v38, &v39);
    sub_100008A94(v2);
    v39 = v14;
    v40 = BYTE4(v29);
    v41 = v32;
    v42 = v27;
    v43 = v34;
    v44 = v28;
    v45 = v33;
    v46 = v31;
    v47 = v35;
    v48 = v30;
    v49 = v22;
    v50 = v23;
    v51 = v26;
    sub_1000634AC(&v39);
    memcpy(v4, v38, 0x68uLL);
  }

  sub_1000643C0();
}

BOOL sub_100061D00(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1000CF2F8, v2);

  return v3 != 0;
}

void sub_100061D48()
{
  sub_1000643A8();
  v1 = v0;
  v16[1] = v2;
  v4 = v3;
  v7 = sub_100003998(v5, v6);
  sub_10000AC48(v7);
  v9 = v8;
  v11 = *(v10 + 64);
  sub_10000ACFC();
  __chkstk_darwin(v12);
  v14 = v16 - v13;
  v15 = v4[4];
  sub_100008614(v4, v4[3]);
  v1();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  (*(v9 + 8))(v14, v7);
  sub_1000643C0();
}

void sub_100061E70()
{
  sub_1000643A8();
  v3 = v2;
  v5 = v4;
  v8 = sub_100003998(v6, v7);
  sub_10000AC48(v8);
  v14 = v9;
  v11 = *(v10 + 64);
  sub_10000ACFC();
  __chkstk_darwin(v12);
  sub_100064364();
  v13 = v5[4];
  sub_100008614(v5, v5[3]);
  v3();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v0)
  {
    KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    (*(v14 + 8))(v1, v8);
  }

  sub_100008A94(v5);
  sub_1000643C0();
}

uint64_t sub_100061FB4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64496E6F69746361 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001000B21F0 == a2)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

Swift::Int sub_1000620C4(char a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 & 1);
  return Hasher._finalize()();
}

uint64_t sub_10006210C(char a1)
{
  if (a1)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0x64496E6F69746361;
  }
}

void sub_100062148()
{
  sub_1000643A8();
  v2 = v1;
  v3 = sub_100003998(&qword_1000DDE28, &qword_1000ACB80);
  sub_10000AC48(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_10000ACFC();
  __chkstk_darwin(v8);
  sub_100064374();
  v9 = v2[4];
  sub_100008614(v2, v2[3]);
  sub_100063324();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_100064328();
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v0)
  {
    sub_100063720();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  v10 = *(v5 + 8);
  v11 = sub_10006439C();
  v12(v11);
  sub_1000643C0();
}

uint64_t sub_1000622A8(uint64_t *a1)
{
  v3 = sub_100003998(&qword_1000DDDA8, &qword_1000ACB50);
  sub_10000AC48(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_10000ACFC();
  __chkstk_darwin(v8);
  sub_100064364();
  v9 = a1[4];
  sub_100008614(a1, a1[3]);
  sub_100063324();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v11 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  sub_100063378();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v5 + 8))(v1, v3);
  sub_100008A94(a1);
  return v11;
}

Swift::Int sub_100062470()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t sub_1000624B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100060A7C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1000624E0(uint64_t a1)
{
  v2 = sub_100063F38();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10006251C(uint64_t a1)
{
  v2 = sub_100063F38();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_10006259C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_100061D48();
}

uint64_t sub_1000625EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100060B04(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100062634@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100060CB4();
  *a1 = result;
  return result;
}

uint64_t sub_10006265C(uint64_t a1)
{
  v2 = sub_1000634DC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100062698(uint64_t a1)
{
  v2 = sub_1000634DC();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1000626D4(void *a1@<X8>)
{
  sub_100060F3C();
  if (!v1)
  {
    memcpy(a1, __src, 0x41uLL);
  }
}

Swift::Int sub_10006276C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_1000627B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100061298(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000627E0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10000C8B4();
  *a1 = result;
  return result;
}

uint64_t sub_100062808(uint64_t a1)
{
  v2 = sub_1000633CC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100062844(uint64_t a1)
{
  v2 = sub_1000633CC();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_100062880(void *a1@<X8>)
{
  sub_100061814();
  if (!v1)
  {
    memcpy(a1, __src, 0x68uLL);
  }
}

BOOL sub_1000628F4@<W0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100061D00(*a1);
  *a2 = result;
  return result;
}

BOOL sub_100062964@<W0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100061D00(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100062990(uint64_t a1)
{
  v2 = sub_100063EE4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000629CC(uint64_t a1)
{
  v2 = sub_100063EE4();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_100062A4C(void *a1@<X8>)
{
  sub_100061E70();
  if (!v1)
  {
    *a1 = v3;
    a1[1] = v4;
  }
}

void sub_100062A88()
{
  v1 = *v0;
  v2 = v0[1];
  sub_100061D48();
}

uint64_t sub_100062AE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100061FB4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100062B08@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100062084();
  *a1 = result;
  return result;
}

uint64_t sub_100062B30(uint64_t a1)
{
  v2 = sub_100063324();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100062B6C(uint64_t a1)
{
  v2 = sub_100063324();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100062BA8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1000622A8(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

void sub_100062BD8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_100062148();
}

uint64_t sub_100062BFC()
{
  sub_10001C370();
  sub_100064384();
  v1 = swift_task_alloc();
  v2 = sub_10003FBF8(v1);
  *v2 = v3;
  v2[1] = sub_1000642A8;
  sub_100064310();

  return sub_10005F9A4(v4, v5, v6, v7, v8, v9, v10, v0);
}

uint64_t sub_100062CB8()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100062D4C()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[7];

  v5 = v0[9];

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_100062DE4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100062E30(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0xA)
  {
  }

  return result;
}

unint64_t sub_100062E44()
{
  result = qword_1000DDD80;
  if (!qword_1000DDD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DDD80);
  }

  return result;
}

unint64_t sub_100062E98()
{
  result = qword_1000DDD88;
  if (!qword_1000DDD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DDD88);
  }

  return result;
}

uint64_t sub_100062EEC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100062F3C()
{
  sub_10001C370();
  sub_100064384();
  v1 = swift_task_alloc();
  v2 = sub_10003FBF8(v1);
  *v2 = v3;
  v2[1] = sub_100062FEC;
  sub_100064310();

  return sub_10005DF38(v4, v5, v6, v7, v8, v9, v10, v0);
}

uint64_t sub_100062FEC()
{
  sub_10001BEC4();
  sub_10001BF54();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_10001BED0();
  *v4 = v3;

  sub_10001BEDC();

  return v5();
}

uint64_t sub_1000630D0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000630FC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 65))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_10006313C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000631A4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 104))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000631F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 104) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 104) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_100063270(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 32))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000632C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_100063324()
{
  result = qword_1000DDDB0;
  if (!qword_1000DDDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DDDB0);
  }

  return result;
}

unint64_t sub_100063378()
{
  result = qword_1000DDDB8;
  if (!qword_1000DDDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DDDB8);
  }

  return result;
}

unint64_t sub_1000633CC()
{
  result = qword_1000DDDC8;
  if (!qword_1000DDDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DDDC8);
  }

  return result;
}

unint64_t sub_100063420()
{
  result = qword_1000DDDE0;
  if (!qword_1000DDDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DDDE0);
  }

  return result;
}

unint64_t sub_1000634DC()
{
  result = qword_1000DDDF0;
  if (!qword_1000DDDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DDDF0);
  }

  return result;
}

uint64_t sub_100063530(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

unint64_t sub_100063544()
{
  result = qword_1000DDDF8;
  if (!qword_1000DDDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DDDF8);
  }

  return result;
}

unint64_t sub_100063600()
{
  result = qword_1000DDE08;
  if (!qword_1000DDE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DDE08);
  }

  return result;
}

uint64_t sub_100063654(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1000089A8(&qword_1000DDDD0, &qword_1000ACB60);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000636CC()
{
  result = qword_1000DDE20;
  if (!qword_1000DDE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DDE20);
  }

  return result;
}

unint64_t sub_100063720()
{
  result = qword_1000DDE30;
  if (!qword_1000DDE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DDE30);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LiveActivityAutostartContent.Competitor.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for LiveActivityAutostartContent.Competitor.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1000638C8);
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

_BYTE *storeEnumTagSinglePayload for LiveActivityAutostartContent.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
        JUMPOUT(0x1000639CCLL);
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LiveActivityAutostartAction.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x100063AD0);
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

uint64_t sub_100063B18(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100063B70(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_100063BD0()
{
  result = qword_1000DDE38;
  if (!qword_1000DDE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DDE38);
  }

  return result;
}

unint64_t sub_100063C28()
{
  result = qword_1000DDE40;
  if (!qword_1000DDE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DDE40);
  }

  return result;
}

unint64_t sub_100063C80()
{
  result = qword_1000DDE48;
  if (!qword_1000DDE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DDE48);
  }

  return result;
}

unint64_t sub_100063CD8()
{
  result = qword_1000DDE50;
  if (!qword_1000DDE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DDE50);
  }

  return result;
}

unint64_t sub_100063D30()
{
  result = qword_1000DDE58;
  if (!qword_1000DDE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DDE58);
  }

  return result;
}

unint64_t sub_100063D88()
{
  result = qword_1000DDE60;
  if (!qword_1000DDE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DDE60);
  }

  return result;
}

unint64_t sub_100063DE0()
{
  result = qword_1000DDE68;
  if (!qword_1000DDE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DDE68);
  }

  return result;
}

unint64_t sub_100063E38()
{
  result = qword_1000DDE70;
  if (!qword_1000DDE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DDE70);
  }

  return result;
}

unint64_t sub_100063E90()
{
  result = qword_1000DDE78;
  if (!qword_1000DDE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DDE78);
  }

  return result;
}

unint64_t sub_100063EE4()
{
  result = qword_1000DDE88;
  if (!qword_1000DDE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DDE88);
  }

  return result;
}

unint64_t sub_100063F38()
{
  result = qword_1000DDE98;
  if (!qword_1000DDE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DDE98);
  }

  return result;
}

_BYTE *sub_100063FA4(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x100064040);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_100064078()
{
  result = qword_1000DDEB0;
  if (!qword_1000DDEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DDEB0);
  }

  return result;
}

unint64_t sub_1000640D0()
{
  result = qword_1000DDEB8;
  if (!qword_1000DDEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DDEB8);
  }

  return result;
}

unint64_t sub_100064128()
{
  result = qword_1000DDEC0;
  if (!qword_1000DDEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DDEC0);
  }

  return result;
}

unint64_t sub_100064180()
{
  result = qword_1000DDEC8;
  if (!qword_1000DDEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DDEC8);
  }

  return result;
}

unint64_t sub_1000641D8()
{
  result = qword_1000DDED0;
  if (!qword_1000DDED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DDED0);
  }

  return result;
}

unint64_t sub_100064230()
{
  result = qword_1000DDED8;
  if (!qword_1000DDED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DDED8);
  }

  return result;
}

void sub_100064384()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[8];
}

uint64_t sub_1000643D8(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 32);
  return *(v2 + 24);
}

uint64_t sub_1000643F8(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 1024;
  *(v1 + 14) = v2;
  return result;
}

void sub_10006440C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0x12u);
}

void sub_10006442C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v4, a4, v5, 0xCu);
}

uint64_t sub_10006444C(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *v12 = a1;

  return sub_1000170D4(v11, v10, &a10);
}

uint64_t sub_10006446C()
{
  v2 = *(v0 + 72);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);

  return swift_slowAlloc();
}

uint64_t sub_10006448C()
{

  return dispatch thunk of Encoder.container<A>(keyedBy:)();
}

uint64_t sub_1000644B8(unsigned __int8 a1, char a2)
{
  v2 = 0xEC0000006E6F6974;
  v3 = 0x6172747369676572;
  v4 = a1;
  v5 = 0x6172747369676572;
  v6 = 0xEC0000006E6F6974;
  switch(v4)
  {
    case 1:
      v5 = 0x7473696765726E75;
      v7 = 0x6E6F69746172;
      goto LABEL_4;
    case 2:
      v6 = 0xE800000000000000;
      v5 = 0x6C6C416863746566;
      break;
    case 3:
      v5 = 0x61684364756F6C63;
      v6 = 0xEC0000006C656E6ELL;
      break;
    case 4:
      v5 = 0x4D7370416C6C7566;
      v7 = 0x656761737365;
LABEL_4:
      v6 = v7 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = 0x7473696765726E75;
      v8 = 0x6E6F69746172;
      goto LABEL_10;
    case 2:
      v2 = 0xE800000000000000;
      v3 = 0x6C6C416863746566;
      break;
    case 3:
      v3 = 0x61684364756F6C63;
      v2 = 0xEC0000006C656E6ELL;
      break;
    case 4:
      v3 = 0x4D7370416C6C7566;
      v8 = 0x656761737365;
LABEL_10:
      v2 = v8 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1000666B8();
  }

  return v10 & 1;
}

uint64_t sub_100064690(char a1)
{
  if (a1)
  {
    v1 = 0xE800000000000000;
  }

  else
  {
    v1 = 0xEA0000000000746ELL;
  }

  sub_10006679C();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_10006669C();
  }

  return v8 & 1;
}

uint64_t sub_100064724(char a1)
{
  if (a1)
  {
    v1 = 0xE400000000000000;
  }

  else
  {
    v1 = 0xE300000000000000;
  }

  sub_10006679C();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_10006669C();
  }

  return v8 & 1;
}

uint64_t sub_1000647A4(unsigned __int8 a1, char a2)
{
  v2 = 0xEC00000076742E65;
  v3 = 0x6C7070612E6D6F63;
  v4 = a1;
  v5 = 0x6C7070612E6D6F63;
  v6 = 0xEC00000076742E65;
  switch(v4)
  {
    case 1:
      v7 = "com.apple.sports";
      goto LABEL_4;
    case 2:
      v6 = 0x80000001000B0400;
      v5 = 0xD000000000000011;
      break;
    case 3:
      break;
    default:
      v7 = "sor";
LABEL_4:
      v6 = v7 | 0x8000000000000000;
      v5 = 0xD000000000000010;
      break;
  }

  switch(a2)
  {
    case 1:
      v8 = "com.apple.sports";
      goto LABEL_9;
    case 2:
      v2 = 0x80000001000B0400;
      v3 = 0xD000000000000011;
      break;
    case 3:
      break;
    default:
      v8 = "sor";
LABEL_9:
      v2 = v8 | 0x8000000000000000;
      v3 = 0xD000000000000010;
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1000666B8();
  }

  return v10 & 1;
}

uint64_t sub_1000648F4(char a1)
{
  if (a1)
  {
    v1 = 0xE300000000000000;
  }

  else
  {
    v1 = 0xE400000000000000;
  }

  sub_10006679C();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_10006669C();
  }

  return v8 & 1;
}

uint64_t sub_10006498C(unsigned __int8 a1, char a2)
{
  v2 = 0xEB00000000504250;
  v3 = 0x5F4D554944415453;
  v4 = a1;
  v5 = 0x5F4D554944415453;
  v6 = 0xEB00000000504250;
  switch(v4)
  {
    case 1:
      v6 = 0x80000001000B0520;
      v5 = 0xD000000000000021;
      break;
    case 2:
      break;
    case 3:
      v6 = 0x80000001000B0550;
      v5 = 0xD000000000000019;
      break;
    case 4:
      v6 = 0x80000001000B0570;
      v5 = 0xD000000000000018;
      break;
    case 5:
      v5 = 0x4B434F4C435F5654;
      v6 = 0xEE0045524F43535FLL;
      break;
    default:
      v6 = 0x80000001000B0500;
      v5 = 0xD000000000000012;
      break;
  }

  switch(a2)
  {
    case 1:
      v2 = 0x80000001000B0520;
      v3 = 0xD000000000000021;
      break;
    case 2:
      break;
    case 3:
      v2 = 0x80000001000B0550;
      v3 = 0xD000000000000019;
      break;
    case 4:
      v2 = 0x80000001000B0570;
      v3 = 0xD000000000000018;
      break;
    case 5:
      sub_100066788();
      break;
    default:
      v2 = 0x80000001000B0500;
      v3 = 0xD000000000000012;
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000666B8();
  }

  return v8 & 1;
}

uint64_t sub_100064B60(unsigned __int8 a1, char a2)
{
  v2 = 0x6C616974696E69;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x6E69747563657865;
    }

    else
    {
      v4 = 0x64656873696E6966;
    }

    if (v3 == 1)
    {
      v5 = 0xE900000000000067;
    }

    else
    {
      v5 = 0xE800000000000000;
    }
  }

  else
  {
    v5 = 0xE700000000000000;
    v4 = 0x6C616974696E69;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x6E69747563657865;
    }

    else
    {
      v2 = 0x64656873696E6966;
    }

    if (a2 == 1)
    {
      v6 = 0xE900000000000067;
    }

    else
    {
      v6 = 0xE800000000000000;
    }
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

uint64_t sub_100064C7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3();
  v7 = v6;
  if (v5 == (a3)(a2) && v7 == v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_10006669C();
  }

  return v10 & 1;
}

uint64_t sub_100064DC4(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  a3(0);
  sub_100066604(a4, a5);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v12 == v10 && v13 == v11)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000666B8();
  }

  return v8 & 1;
}

Swift::Int sub_100064EE4(char a1)
{
  sub_100066718();
  Hasher._combine(_:)(a1 & 1);
  return Hasher._finalize()();
}

Swift::Int sub_100064F30()
{
  sub_100066718();
  sub_100065350();
  return Hasher._finalize()();
}

Swift::Int sub_100064F7C()
{
  sub_100066718();
  sub_1000666D4();
  return Hasher._finalize()();
}

Swift::Int sub_100064FC4(char a1)
{
  sub_100066718();
  if (a1)
  {
    v2 = 404;
  }

  else
  {
    v2 = 3328;
  }

  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

Swift::Int sub_100065018(char a1)
{
  sub_100066718();
  Hasher._combine(_:)(qword_1000AD2B0[a1]);
  return Hasher._finalize()();
}

Swift::Int sub_1000650B4(Swift::UInt a1)
{
  sub_100066718();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

Swift::Int sub_10006510C(uint64_t a1, void (*a2)(uint64_t))
{
  sub_100066718();
  a2(a1);
  sub_100066730();

  return Hasher._finalize()();
}

uint64_t sub_10006515C()
{
  String.hash(into:)();
}

uint64_t sub_100065284()
{
  String.hash(into:)();
}

uint64_t sub_1000652F4()
{
  String.hash(into:)();
}

uint64_t sub_100065350()
{
  String.hash(into:)();
}

uint64_t sub_100065428()
{
  String.hash(into:)();
}

uint64_t sub_10006549C(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
    case 3:
    case 4:
      sub_100066688();
      break;
    case 5:
      sub_100066788();
      break;
    default:
      break;
  }

  String.hash(into:)();
}

uint64_t sub_10006559C()
{
  String.hash(into:)();
}

uint64_t sub_100065644(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  a3(a2);
  String.hash(into:)();
}

void sub_100065720(uint64_t a1, char a2)
{
  if (a2)
  {
    v2 = 404;
  }

  else
  {
    v2 = 3328;
  }

  Hasher._combine(_:)(v2);
}

Swift::Int sub_100065754()
{
  sub_100066770();
  if (v0)
  {
    v1 = 404;
  }

  else
  {
    v1 = 3328;
  }

  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10006579C(uint64_t a1, char a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_1000AD2B0[a2]);
  return Hasher._finalize()();
}

Swift::Int sub_100065814()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_1000658E8()
{
  sub_100066770();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_100065958()
{
  sub_100066770();
  sub_100065350();
  return Hasher._finalize()();
}

Swift::Int sub_100065994(uint64_t a1, Swift::UInt a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2);
  return Hasher._finalize()();
}

Swift::Int sub_1000659D8()
{
  sub_100066770();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_100065A40()
{
  sub_100066770();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_100065ABC()
{
  Hasher.init(_seed:)();
  sub_1000666D4();
  return Hasher._finalize()();
}

Swift::Int sub_100065AF4(uint64_t a1, char a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2 & 1);
  return Hasher._finalize()();
}

Swift::Int sub_100065B50(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  Hasher.init(_seed:)();
  a3(a2);
  sub_100066730();

  return Hasher._finalize()();
}

uint64_t sub_100065BA4()
{
  v0 = sub_100065C3C();
  if (!v0)
  {
    sub_100066700();
    goto LABEL_6;
  }

  if (v0 != 1)
  {
    sub_100066674();
LABEL_6:
    sub_100066660();
    v1 = sub_100066754();

    if ((v1 & 1) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

LABEL_7:

  return sub_100065C9C(2);
}

uint64_t sub_100065C3C()
{
  v1 = OBJC_IVAR____TtC7sportsd14AsyncOperation_lock;
  sub_1000667A8();
  os_unfair_lock_lock((v0 + v1));
  v2 = *(v0 + OBJC_IVAR____TtC7sportsd14AsyncOperation__state);
  os_unfair_lock_unlock((v0 + v1));
  swift_endAccess();
  return v2;
}

uint64_t sub_100065C9C(char a1)
{
  LOBYTE(v2) = a1;
  if (qword_1000DBA08 != -1)
  {
LABEL_21:
    swift_once();
  }

  v3 = off_1000DDEE0;
  v5 = off_1000DDEE0 + 56;
  v4 = *(off_1000DDEE0 + 7);
  v6 = *(off_1000DDEE0 + 32);
  sub_10001F24C();
  v9 = v8 & v7;
  v11 = (v10 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v12 = 0;
  if (!v9)
  {
    goto LABEL_4;
  }

  do
  {
    v13 = v12;
LABEL_8:
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v15 = (v3[6] + ((v13 << 10) | (16 * v14)));
    v16 = *v15;
    v17 = v15[1];

    v18 = String._bridgeToObjectiveC()();
    [v1 willChangeValueForKey:v18];
  }

  while (v9);
  while (1)
  {
LABEL_4:
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    if (v13 >= v11)
    {
      break;
    }

    v9 = *&v5[8 * v13];
    ++v12;
    if (v9)
    {
      v12 = v13;
      goto LABEL_8;
    }
  }

  v19 = OBJC_IVAR____TtC7sportsd14AsyncOperation_lock;
  sub_1000667A8();
  os_unfair_lock_lock(&v1[v19]);
  v1[OBJC_IVAR____TtC7sportsd14AsyncOperation__state] = v2;
  os_unfair_lock_unlock(&v1[v19]);
  swift_endAccess();
  v2 = off_1000DDEE0;
  v21 = off_1000DDEE0 + 56;
  v20 = *(off_1000DDEE0 + 7);
  v22 = *(off_1000DDEE0 + 32);
  sub_10001F24C();
  v25 = v24 & v23;
  v27 = (v26 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v28 = 0;
  if (!v25)
  {
    goto LABEL_12;
  }

  do
  {
    v29 = v28;
LABEL_16:
    v30 = __clz(__rbit64(v25));
    v25 &= v25 - 1;
    v31 = (v2[6] + ((v29 << 10) | (16 * v30)));
    v32 = *v31;
    v33 = v31[1];

    v34 = String._bridgeToObjectiveC()();
    [v1 didChangeValueForKey:v34];
  }

  while (v25);
  while (1)
  {
LABEL_12:
    v29 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      goto LABEL_20;
    }

    if (v29 >= v27)
    {
      break;
    }

    v25 = *&v21[8 * v29];
    ++v28;
    if (v25)
    {
      v28 = v29;
      goto LABEL_16;
    }
  }
}

unint64_t sub_100065EF4(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1000CF330, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100065F40(char a1)
{
  if (!a1)
  {
    return 0x6C616974696E69;
  }

  if (a1 == 1)
  {
    return 0x6E69747563657865;
  }

  return 0x64656873696E6966;
}

unint64_t sub_100065FC0@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100065EF4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100065FF0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100065F40(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

id sub_10006601C()
{
  *&v0[OBJC_IVAR____TtC7sportsd14AsyncOperation_lock] = 0;
  v0[OBJC_IVAR____TtC7sportsd14AsyncOperation__state] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AsyncOperation();
  return objc_msgSendSuper2(&v2, "init");
}

void *sub_10006608C()
{
  result = sub_1000592AC(&off_1000CF230);
  off_1000DDEE0 = result;
  return result;
}

uint64_t sub_1000660F0()
{
  v0 = sub_100065C3C();
  if (!v0)
  {
    sub_100066700();
LABEL_6:
    sub_100066660();
    v1 = sub_100066754();
    goto LABEL_7;
  }

  if (v0 != 1)
  {
    sub_100066674();
    goto LABEL_6;
  }

  v1 = 1;
LABEL_7:

  return v1 & 1;
}

uint64_t sub_100066190()
{
  if ([v0 isCancelled])
  {
    v1 = sub_100065C3C();
    if (v1)
    {
      if (v1 == 1)
      {

        goto LABEL_8;
      }

      sub_100066674();
    }

    sub_100066660();
    v2 = sub_100066754();

    if ((v2 & 1) == 0)
    {
      v3 = 1;
      return v3 & 1;
    }
  }

LABEL_8:
  if (sub_100065C3C() > 1u)
  {
    v3 = 1;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v3 & 1;
}

uint64_t sub_1000662A8()
{
  result = [v0 isCancelled];
  if ((result & 1) == 0)
  {
    sub_100065C9C(1);
    v2 = *((swift_isaMask & *v0) + 0xA8);

    return v2();
  }

  return result;
}

id sub_1000663C4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AsyncOperation();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t getEnumTagSinglePayload for AsyncOperation.ExecutionState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AsyncOperation.ExecutionState(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
        JUMPOUT(0x100066574);
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1000665B0()
{
  result = qword_1000DDF20;
  if (!qword_1000DDF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DDF20);
  }

  return result;
}

uint64_t sub_100066604(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10006669C()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_1000666B8()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_1000666D4()
{

  return String.hash(into:)();
}

uint64_t sub_100066718()
{

  return Hasher.init(_seed:)();
}

uint64_t sub_100066730()
{

  return String.hash(into:)();
}

uint64_t sub_100066754()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_100066770()
{

  return Hasher.init(_seed:)();
}

uint64_t sub_1000667A8()
{

  return swift_beginAccess();
}

uint64_t *sub_1000667C8()
{
  sub_100008A94(v0 + 2);
  sub_100008A94(v0 + 7);
  v1 = v0[12];

  v2 = v0[13];

  v3 = v0[14];

  return v0;
}

uint64_t sub_100066808()
{
  sub_1000667C8();

  return _swift_deallocClassInstance(v0, 120, 7);
}

uint64_t sub_100066868(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 120))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_1000668A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100066914()
{
  v1 = sub_100008614(v0 + 2, v0[5]);
  v3 = v0[7];
  v2 = v0[8];
  v4 = *v1;
  return dispatch thunk of ActivityAuthorization.areFrequentPushesEnabled(for:)() & 1;
}

uint64_t sub_100066950()
{
  sub_100008A94((v0 + 16));
  v1 = *(v0 + 64);

  return _swift_deallocClassInstance(v0, 72, 7);
}

uint64_t sub_1000669B4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t (*)(void), uint64_t))
{
  String.utf8CString.getter();
  v4 = os_transaction_create();

  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  swift_unknownObjectRetain_n();
  a3(nullsub_1, v5);
  swift_unknownObjectRelease_n();
}

uint64_t sub_100066A64()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100066A9C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v10 = type metadata accessor for URL();
  v11 = sub_10000AC48(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v11);
  (*(v13 + 16))(v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v10, v16);
  v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = a4;
  *(v18 + 24) = a5;
  (*(v13 + 32))(v18 + v17, v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  v19 = (v18 + ((v15 + v17 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v19 = a2;
  v19[1] = a3;
  v20 = sub_100003998(&qword_1000DE150, &unk_1000AD3A8);
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  v23 = a4;
  v24 = a5;

  v27[1] = Future.init(_:)();
  sub_100067080();
  v25 = Publisher.eraseToAnyPublisher()();

  return v25;
}

void sub_100066C5C(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v32 = a6;
  v33 = a4;
  v31 = a1;
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for URLRequest();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v15, a5, v11, v19);
  URLRequest.init(url:cachePolicy:timeoutInterval:)();
  isa = URLRequest._bridgeToObjectiveC()().super.isa;
  (*(v17 + 8))(v21, v16);
  v23 = swift_allocObject();
  v24 = v32;
  v23[2] = v31;
  v23[3] = a2;
  v23[4] = v24;
  v23[5] = a7;
  v25 = v33;
  v23[6] = a3;
  v23[7] = v25;
  aBlock[4] = sub_100067B74;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100067BA4;
  aBlock[3] = &unk_1000D27D8;
  v26 = _Block_copy(aBlock);

  v27 = a3;
  v28 = v25;

  v29 = [v27 downloadTaskWithRequest:isa completionHandler:v26];
  _Block_release(v26);

  [v29 resume];
}

uint64_t sub_100066EF4()
{
  v1 = type metadata accessor for URL();
  sub_10000AC48(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v3 + 8))(v0 + v5, v1);
  v8 = *(v0 + v7 + 8);

  return _swift_deallocObject(v0, v7 + 16, v4 | 7);
}

void sub_100066FCC(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for URL() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  v9 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];

  sub_100066C5C(a1, a2, v7, v8, v2 + v6, v10, v11);
}

unint64_t sub_100067080()
{
  result = qword_1000DE158;
  if (!qword_1000DE158)
  {
    sub_1000089A8(&qword_1000DE150, &unk_1000AD3A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE158);
  }

  return result;
}

uint64_t sub_1000670E4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *), uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, void *a9)
{
  v95 = a5;
  v96 = a4;
  v13 = sub_100003998(&qword_1000DE160, &unk_1000AD3B8);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = (&v90 - v15);
  v17 = sub_100003998(&unk_1000DD7B0, &qword_1000AC150);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v90 - v19;
  v21 = type metadata accessor for URL();
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21);
  v24 = &v90 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v28 = &v90 - v27;
  if (a3)
  {
    swift_errorRetain();
    if (qword_1000DBA20 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_100007DE8(v29, qword_1000E6D48);
    swift_errorRetain();
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v97 = v33;
      *v32 = 136315138;
      swift_getErrorValue();
      v34 = Error.localizedDescription.getter();
      v36 = sub_1000170D4(v34, v35, &v97);

      *(v32 + 4) = v36;
      _os_log_impl(&_mh_execute_header, v30, v31, "Could not download image. %s", v32, 0xCu);
      sub_100008A94(v33);
    }

    *v16 = a3;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v96(v16);

    return sub_10001EF70(v16, &qword_1000DE160, &unk_1000AD3B8);
  }

  v94 = v26;
  sub_100067CEC(a1, v20);
  if (sub_100008B84(v20, 1, v21) == 1)
  {
    sub_10001EF70(v20, &unk_1000DD7B0, &qword_1000AC150);
    v37 = objc_allocWithZone(NSError);
    *v16 = sub_100029EF8(0xD00000000000001FLL, 0x80000001000B23A0, 512, 0);
    swift_storeEnumTagMultiPayload();
    v96(v16);
    return sub_10001EF70(v16, &qword_1000DE160, &unk_1000AD3B8);
  }

  (*(v94 + 32))(v28, v20, v21);
  URL.init(fileURLWithPath:)();
  v39 = String._bridgeToObjectiveC()();
  v40 = [a9 fileExistsAtPath:v39];

  if ((v40 & 1) == 0)
  {
    URL._bridgeToObjectiveC()(v41);
    v67 = v66;
    URL._bridgeToObjectiveC()(v68);
    v70 = v69;
    v97 = 0;
    v71 = [a9 moveItemAtURL:v67 toURL:v69 error:&v97];

    v53 = v97;
    if (!v71)
    {
      v84 = v97;
      v85 = _convertNSErrorToError(_:)();

      swift_willThrow();
      v86 = *(v94 + 8);
      v86(v24, v21);
      *v16 = v85;
      swift_storeEnumTagMultiPayload();
      swift_errorRetain();
      v96(v16);

      sub_10001EF70(v16, &qword_1000DE160, &unk_1000AD3B8);
      return (v86)(v28, v21);
    }

    goto LABEL_18;
  }

  URL._bridgeToObjectiveC()(v41);
  v43 = v42;
  v97 = 0;
  v44 = [a9 removeItemAtURL:v42 error:&v97];

  if (!v44)
  {
    v73 = v97;
    v74 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1000DBA28 != -1)
    {
      swift_once();
    }

    v75 = type metadata accessor for Logger();
    sub_100007DE8(v75, qword_1000E6D60);

    swift_errorRetain();
    v76 = Logger.logObject.getter();
    v77 = static os_log_type_t.error.getter();

    v93 = v76;
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v91 = v74;
      v80 = v79;
      v92 = swift_slowAlloc();
      v97 = v92;
      *v78 = 136315394;
      *(v78 + 4) = sub_1000170D4(a6, a7, &v97);
      *(v78 + 12) = 2112;
      swift_errorRetain();
      v81 = _swift_stdlib_bridgeErrorToNSError();
      *(v78 + 14) = v81;
      *v80 = v81;
      v82 = v77;
      v83 = v93;
      _os_log_impl(&_mh_execute_header, v93, v82, "Could not remove existing file at path %s before moving new file in. Error: %@", v78, 0x16u);
      sub_10001EF70(v80, &unk_1000DD790, &unk_1000AB7A0);

      sub_100008A94(v92);
    }

    else
    {
    }

    goto LABEL_25;
  }

  v45 = v97;
  URL._bridgeToObjectiveC()(v46);
  v48 = v47;
  URL._bridgeToObjectiveC()(v49);
  v51 = v50;
  v97 = 0;
  v52 = [a9 moveItemAtURL:v48 toURL:v50 error:&v97];

  v53 = v97;
  if (v52)
  {
LABEL_18:
    v72 = v53;
LABEL_25:
    v87 = v94;
    (*(v94 + 16))(v16, v24, v21);
    swift_storeEnumTagMultiPayload();
    v96(v16);
    sub_10001EF70(v16, &qword_1000DE160, &unk_1000AD3B8);
    v88 = *(v87 + 8);
    v88(v24, v21);
    return (v88)(v28, v21);
  }

  v54 = v97;
  v55 = _convertNSErrorToError(_:)();

  swift_willThrow();
  if (qword_1000DBA28 != -1)
  {
    swift_once();
  }

  v56 = type metadata accessor for Logger();
  sub_100007DE8(v56, qword_1000E6D60);

  swift_errorRetain();
  v57 = Logger.logObject.getter();
  v58 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v91 = v57;
    v60 = v59;
    v61 = swift_slowAlloc();
    v93 = v55;
    v62 = v61;
    v92 = swift_slowAlloc();
    v97 = v92;
    *v60 = 136315394;
    *(v60 + 4) = sub_1000170D4(a6, a7, &v97);
    *(v60 + 12) = 2112;
    swift_errorRetain();
    v63 = _swift_stdlib_bridgeErrorToNSError();
    *(v60 + 14) = v63;
    *v62 = v63;
    v64 = v58;
    v65 = v91;
    _os_log_impl(&_mh_execute_header, v91, v64, "Could not move new file after successfully removing existing file at path %s. Error: %@", v60, 0x16u);
    sub_10001EF70(v62, &unk_1000DD790, &unk_1000AB7A0);
    v55 = v93;

    sub_100008A94(v92);
  }

  else
  {
  }

  *v16 = v55;
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  v96(v16);

  sub_10001EF70(v16, &qword_1000DE160, &unk_1000AD3B8);
  v89 = *(v94 + 8);
  v89(v24, v21);
  return (v89)(v28, v21);
}

uint64_t sub_100067B24()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100067BA4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = sub_100003998(&unk_1000DD7B0, &qword_1000AC150);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v19 - v10;
  v13 = *(a1 + 32);
  v12 = *(a1 + 40);
  if (a2)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = type metadata accessor for URL();
    v15 = 0;
  }

  else
  {
    v14 = type metadata accessor for URL();
    v15 = 1;
  }

  sub_100008E2C(v11, v15, 1, v14);

  v16 = a3;
  v17 = a4;
  v13(v11, a3, a4);

  return sub_10001EF70(v11, &unk_1000DD7B0, &qword_1000AC150);
}

uint64_t sub_100067CD4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100067CEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003998(&unk_1000DD7B0, &qword_1000AC150);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100067D5C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_100067D9C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100067DE8()
{
  v1 = type metadata accessor for ApiAgentError();
  v2 = sub_10001C2AC(v1);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  sub_100069864(v5, v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0xD00000000000001CLL;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v8 = sub_100003998(&qword_1000DD728, &qword_1000AC1B0);
      sub_100068E88(v0 + *(v8 + 48));
      result = 0xD00000000000001BLL;
      break;
    case 2:
      return result;
    case 4:
      result = 0xD00000000000001DLL;
      break;
    default:
      result = 0xD000000000000019;
      break;
  }

  return result;
}

uint64_t sub_100067F70()
{
  v1 = type metadata accessor for ApiAgentError();
  v2 = sub_10001C2AC(v1);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  sub_100069864(v5, v10);
  v6 = -1200;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v7 = *v0;
      v8 = sub_100003998(&qword_1000DD728, &qword_1000AC1B0);
      v6 = qword_1000ADA88[v7];
      sub_100068E88(&v0[*(v8 + 48)]);
      break;
    case 2u:
      return v6;
    case 3u:
    case 4u:
      v6 = -1000;
      break;
    default:
      if (*v0)
      {
        v6 = 404;
      }

      else
      {
        v6 = 3328;
      }

      break;
  }

  return v6;
}

uint64_t sub_100068068()
{
  v1 = type metadata accessor for ApiAgentError();
  v2 = sub_10001C2AC(v1);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100068E24(v0, v6);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v22 = *v6;
      v23 = *(sub_100003998(&qword_1000DD728, &qword_1000AC1B0) + 48);
      sub_100003998(&qword_1000DCB50, &qword_1000B00D0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1000AA5B0;
      *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 40) = v25;
      v29 = v22;
      sub_100068C48();
      v26 = Error.localizedDescription.getter();
      *(inited + 72) = &type metadata for String;
      *(inited + 48) = v26;
      *(inited + 56) = v27;
      v20 = Dictionary.init(dictionaryLiteral:)();
      sub_100068E88(&v6[v23]);
      return v20;
    case 2u:
      sub_100003998(&qword_1000DCB50, &qword_1000B00D0);
      v14 = swift_initStackObject();
      *(v14 + 16) = xmmword_1000AA5B0;
      *(v14 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(v14 + 40) = v15;
      sub_100068D50();
      goto LABEL_6;
    case 3u:
      sub_100003998(&qword_1000DCB50, &qword_1000B00D0);
      v16 = swift_initStackObject();
      *(v16 + 16) = xmmword_1000AA5B0;
      *(v16 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(v16 + 40) = v17;
      sub_100068CA0();
      goto LABEL_6;
    case 4u:
      sub_100003998(&qword_1000DCB50, &qword_1000B00D0);
      v12 = swift_initStackObject();
      *(v12 + 16) = xmmword_1000AA5B0;
      *(v12 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(v12 + 40) = v13;
      sub_100068BF0();
LABEL_6:
      v18 = Error.localizedDescription.getter();
      sub_1000698AC(v18, v19, &type metadata for String);
      break;
    default:
      v7 = *v6;
      sub_100003998(&qword_1000DCB50, &qword_1000B00D0);
      v8 = swift_initStackObject();
      *(v8 + 16) = xmmword_1000AA5B0;
      *(v8 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(v8 + 40) = v9;
      v29 = v7;
      sub_100068CF8();
      v10 = Error.localizedDescription.getter();
      *(v8 + 72) = &type metadata for String;
      *(v8 + 48) = v10;
      *(v8 + 56) = v11;
      break;
  }

  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t sub_1000683B4(uint64_t a1)
{
  v2 = sub_100068EF0(&qword_1000DE190);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_10006840C(uint64_t a1)
{
  v2 = sub_100068EF0(&qword_1000DE190);

  return Error<>._code.getter(a1, v2);
}

BOOL sub_10006847C@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100068464(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100068500(uint64_t a1)
{
  v2 = sub_100068F34();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_100068568(uint64_t a1)
{
  if (a1 == 404)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (a1 == 3328)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_100068580(char a1)
{
  if (a1)
  {
    return 404;
  }

  else
  {
    return 3328;
  }
}

uint64_t sub_1000685B8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100068568(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000685E4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100068580(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_100068610()
{
  sub_100003998(&qword_1000DCB50, &qword_1000B00D0);
  inited = swift_initStackObject();
  sub_100069830(inited, xmmword_1000AA5B0);
  v1 = String.init<A>(describing:)();
  sub_1000698AC(v1, v2, &type metadata for String);
  return sub_100069890();
}

uint64_t sub_1000686D8(uint64_t a1)
{
  v2 = sub_100068FDC();

  return Error<>._domain.getter(a1, v2);
}

BOOL sub_10006874C@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10006869C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100068788(uint64_t a1)
{
  if (a1 == -1011)
  {
    v1 = 2;
  }

  else
  {
    v1 = 3;
  }

  if (a1 == -1016)
  {
    v2 = 1;
  }

  else
  {
    v2 = v1;
  }

  if (a1 == -2000)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_10006880C(uint64_t a1)
{
  v2 = sub_100069084();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_100068898@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100068788(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000688C4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000687B0(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_1000688F0()
{
  sub_100003998(&qword_1000DCB50, &qword_1000B00D0);
  inited = swift_initStackObject();
  sub_100069830(inited, xmmword_1000AA5B0);
  v1 = String.init<A>(describing:)();
  sub_1000698AC(v1, v2, &type metadata for String);
  return sub_100069890();
}

uint64_t sub_1000689A8(uint64_t a1)
{
  v2 = sub_10006912C();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_100068A10(uint64_t a1, uint64_t a2, void (*a3)(void), void (*a4)(void))
{
  a3();
  a4();
  sub_100002660();
  v5 = sub_1000698B8();

  return Error<>._code.getter(v5);
}

uint64_t sub_100068A6C()
{
  sub_100003998(&qword_1000DCB50, &qword_1000B00D0);
  inited = swift_initStackObject();
  sub_100069830(inited, xmmword_1000AA5B0);
  v1 = String.init<A>(describing:)();
  sub_1000698AC(v1, v2, &type metadata for String);
  return sub_100069890();
}

uint64_t sub_100068B28(uint64_t a1)
{
  v2 = sub_1000691D4();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_100068B90(uint64_t a1, uint64_t a2, void (*a3)(void), void (*a4)(void))
{
  a3();
  a4();
  sub_100002660();
  v5 = sub_1000698B8();

  return Error<>._code.getter(v5);
}

unint64_t sub_100068BF0()
{
  result = qword_1000DE168;
  if (!qword_1000DE168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE168);
  }

  return result;
}

unint64_t sub_100068C48()
{
  result = qword_1000DE170;
  if (!qword_1000DE170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE170);
  }

  return result;
}

unint64_t sub_100068CA0()
{
  result = qword_1000DE178;
  if (!qword_1000DE178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE178);
  }

  return result;
}

unint64_t sub_100068CF8()
{
  result = qword_1000DE180;
  if (!qword_1000DE180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE180);
  }

  return result;
}

unint64_t sub_100068D50()
{
  result = qword_1000DE188;
  if (!qword_1000DE188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE188);
  }

  return result;
}

uint64_t type metadata accessor for ApiAgentError()
{
  result = qword_1000DE258;
  if (!qword_1000DE258)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100068E24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ApiAgentError();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100068E88(uint64_t a1)
{
  v2 = sub_100003998(&qword_1000DD720, &qword_1000AA648);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100068EF0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ApiAgentError();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100068F34()
{
  result = qword_1000DE198;
  if (!qword_1000DE198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE198);
  }

  return result;
}

unint64_t sub_100068F88()
{
  result = qword_1000DE1A0;
  if (!qword_1000DE1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE1A0);
  }

  return result;
}

unint64_t sub_100068FDC()
{
  result = qword_1000DE1A8;
  if (!qword_1000DE1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE1A8);
  }

  return result;
}

unint64_t sub_100069030()
{
  result = qword_1000DE1B0;
  if (!qword_1000DE1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE1B0);
  }

  return result;
}

unint64_t sub_100069084()
{
  result = qword_1000DE1B8;
  if (!qword_1000DE1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE1B8);
  }

  return result;
}

unint64_t sub_1000690D8()
{
  result = qword_1000DE1C0;
  if (!qword_1000DE1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE1C0);
  }

  return result;
}

unint64_t sub_10006912C()
{
  result = qword_1000DE1C8;
  if (!qword_1000DE1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE1C8);
  }

  return result;
}

unint64_t sub_100069180()
{
  result = qword_1000DE1D0;
  if (!qword_1000DE1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE1D0);
  }

  return result;
}

unint64_t sub_1000691D4()
{
  result = qword_1000DE1D8;
  if (!qword_1000DE1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE1D8);
  }

  return result;
}

unint64_t sub_100069228()
{
  result = qword_1000DE1E0;
  if (!qword_1000DE1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE1E0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ApiAgentError.AMSBagError(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x10006935CLL);
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

_BYTE *storeEnumTagSinglePayload for ApiAgentError.DataTaskError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
        JUMPOUT(0x100069470);
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1000694A8(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x100069544);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

void sub_100069584()
{
  sub_1000695F0();
  if (v0 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_1000695F0()
{
  if (!qword_1000DE268)
  {
    sub_1000089A8(&qword_1000DD720, &qword_1000AA648);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1000DE268);
    }
  }
}

unint64_t sub_100069668()
{
  result = qword_1000DE298;
  if (!qword_1000DE298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE298);
  }

  return result;
}

unint64_t sub_1000696C0()
{
  result = qword_1000DE2A0;
  if (!qword_1000DE2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE2A0);
  }

  return result;
}

unint64_t sub_100069718()
{
  result = qword_1000DE2A8;
  if (!qword_1000DE2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE2A8);
  }

  return result;
}

unint64_t sub_100069770()
{
  result = qword_1000DE2B0;
  if (!qword_1000DE2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE2B0);
  }

  return result;
}

unint64_t sub_1000697C8()
{
  result = qword_1000DE2B8;
  if (!qword_1000DE2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE2B8);
  }

  return result;
}

__n128 *sub_100069830(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 1868983913;
  result[2].n128_u64[1] = 0xE400000000000000;
  return result;
}

uint64_t sub_100069864@<X0>(uint64_t a1@<X8>, uint64_t a2)
{

  return sub_100068E24(v2, &a2 - ((a1 + 15) & 0xFFFFFFFFFFFFFFF0));
}

uint64_t sub_100069890()
{

  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t sub_1000698AC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3[9] = a3;
  v3[6] = result;
  v3[7] = a2;
  return result;
}

uint64_t sub_1000698CC()
{
  v7 = 0x2079654B697041;
  v8 = 0xE700000000000000;
  if (qword_1000DB968 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = static Secrets.tempoAPIKey;
  v0 = qword_1000E6C10;

  v2._countAndFlagsBits = v1;
  v2._object = v0;
  String.append(_:)(v2);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100086888(v7, v8, 0x7A69726F68747541, 0xED00006E6F697461, isUniquelyReferenced_nonNull_native);
  v4 = sub_100069A14();
  v5 = swift_isUniquelyReferenced_nonNull_native();
  v7 = &_swiftEmptyDictionarySingleton;
  sub_100069B8C(v4, sub_100069E64, 0, v5, &v7);
  return v7;
}

void *sub_100069A14()
{
  v0 = type metadata accessor for Locale();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = &_swiftEmptyDictionarySingleton;
  sub_100086888(0xD000000000000010, 0x80000001000B2460, 0x2D746E65746E6F43, 0xEC00000065707954, isUniquelyReferenced_nonNull_native);
  v6 = v13;
  static Locale.autoupdatingCurrent.getter();
  v7 = Locale.identifier.getter();
  v9 = v8;
  (*(v1 + 8))(v4, v0);
  v10 = swift_isUniquelyReferenced_nonNull_native();
  v13 = v6;
  sub_100086888(v7, v9, 0xD000000000000010, 0x80000001000B2480, v10);
  return v13;
}

uint64_t sub_100069B8C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v53 = a5;
  sub_1000A23BC(v52);
  v6 = v52[1];
  v7 = v52[3];
  v8 = v52[4];
  v47 = v52[5];
  v48 = v52[0];
  v9 = (v52[2] + 64) >> 6;

  v45 = v9;
  v46 = v6;
  if (v8)
  {
    while (1)
    {
      v49 = a4;
      v10 = v7;
LABEL_8:
      v12 = (v10 << 10) | (16 * __clz(__rbit64(v8)));
      v13 = (*(v48 + 48) + v12);
      v14 = *v13;
      v15 = v13[1];
      v16 = (*(v48 + 56) + v12);
      v17 = *v16;
      v18 = v16[1];
      v51[0] = v14;
      v51[1] = v15;
      v51[2] = v17;
      v51[3] = v18;

      v47(v50, v51);

      v20 = v50[0];
      v19 = v50[1];
      v21 = v50[2];
      v22 = v50[3];
      v23 = *v53;
      v25 = sub_100017538();
      v26 = *(v23 + 16);
      v27 = (v24 & 1) == 0;
      if (__OFADD__(v26, v27))
      {
        break;
      }

      v28 = v24;
      if (*(v23 + 24) >= v26 + v27)
      {
        if ((v49 & 1) == 0)
        {
          sub_100003998(&qword_1000DE2C0, &unk_1000ADAA0);
          _NativeDictionary.copy()();
        }
      }

      else
      {
        v29 = v53;
        sub_1000A199C();
        v30 = *v29;
        v31 = sub_100017538();
        if ((v28 & 1) != (v32 & 1))
        {
          goto LABEL_24;
        }

        v25 = v31;
      }

      v8 &= v8 - 1;
      v33 = *v53;
      if (v28)
      {
        v34 = (v33[7] + 16 * v25);
        v36 = *v34;
        v35 = v34[1];

        v37 = (v33[7] + 16 * v25);
        v38 = v37[1];
        *v37 = v36;
        v37[1] = v35;
      }

      else
      {
        v33[(v25 >> 6) + 8] |= 1 << v25;
        v39 = (v33[6] + 16 * v25);
        *v39 = v20;
        v39[1] = v19;
        v40 = (v33[7] + 16 * v25);
        *v40 = v21;
        v40[1] = v22;
        v41 = v33[2];
        v42 = __OFADD__(v41, 1);
        v43 = v41 + 1;
        if (v42)
        {
          goto LABEL_23;
        }

        v33[2] = v43;
      }

      a4 = 1;
      v7 = v10;
      v9 = v45;
      v6 = v46;
      if (!v8)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v11 = v7;
    while (1)
    {
      v10 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v10 >= v9)
      {
        sub_10001B8A0();
      }

      v8 = *(v6 + 8 * v10);
      ++v11;
      if (v8)
      {
        v49 = a4;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100069E64@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1000A162C(v7, *a1, a1[1], a1[2], a1[3]);
  v4 = v7[0];
  v5 = v7[1];
  *a2 = result;
  a2[1] = v6;
  a2[2] = v4;
  a2[3] = v5;
  return result;
}

void sub_100069EA8(char a1)
{
  switch(a1)
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
      return;
    default:
      sub_10006E3B0();
      break;
  }
}

uint64_t sub_100069F9C()
{
  v1 = *(v0 + 40);
  if (!v1)
  {
    return 2;
  }

  if (!*(v1 + 16))
  {
    return 2;
  }

  v2 = sub_100017538();
  if ((v3 & 1) == 0)
  {
    return 2;
  }

  v4 = *(*(v1 + 56) + 8 * v2);
  v5 = *(v4 + 16);

  v7 = (v4 + 56);
  v8 = -v5;
  v9 = -1;
  do
  {
    if (v8 + v9 == -1)
    {

      return 2;
    }

    if (++v9 >= *(v4 + 16))
    {
      __break(1u);
      return result;
    }

    v11 = *(v7 - 1);
    v10 = *v7;
    if (*(v7 - 3) == 0x495349565F504250 && *(v7 - 2) == 0xEB00000000454C42)
    {
      break;
    }

    v7 += 4;
    result = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  while ((result & 1) == 0);

  if (!v10)
  {
    return 2;
  }

  if (v11 == 1702195828 && v10 == 0xE400000000000000)
  {
    v14 = 1;
  }

  else
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v14 & 1;
}

unint64_t sub_10006A0E0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1000CF398, v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10006A150@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10006A0E0(*a1);
  *a2 = result;
  return result;
}

void sub_10006A180(void *a1@<X8>)
{
  sub_100069EA8(*v1);
  *a1 = v3;
  a1[1] = v4;
}

uint64_t sub_10006A1AC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x80000001000B24A0 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000012 && 0x80000001000B24C0 == a2;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000013 && 0x80000001000B24E0 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x4C70656544707061 && a2 == 0xEE004C52556B6E69)
      {

        return 3;
      }

      else
      {
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_10006A31C(char a1)
{
  result = 0x4C70656544707061;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      return result;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

void sub_10006A3D0()
{
  sub_1000643A8();
  v3 = v2;
  v4 = sub_100003998(&qword_1000DE4E8, &qword_1000ADEA8);
  sub_10000AC48(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_10000ACFC();
  __chkstk_darwin(v9);
  sub_100064374();
  v10 = v3[4];
  sub_100008614(v3, v3[3]);
  sub_10006D8C0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_100003998(&qword_1000DC480, &unk_1000AB420);
  sub_10006E324(&unk_1000DE438);
  sub_10006E258();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v0)
  {
    sub_10006E258();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_10006E258();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_10006E258();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  (*(v6 + 8))(v1, v4);
  sub_1000643C0();
}

void sub_10006A574()
{
  sub_1000643A8();
  v2 = v1;
  v3 = sub_100003998(&qword_1000DE4D8, &qword_1000ADEA0);
  sub_10000AC48(v3);
  v5 = *(v4 + 64);
  sub_10000ACFC();
  __chkstk_darwin(v6);
  sub_100064364();
  v7 = v2[3];
  v8 = v2[4];
  sub_10006E3E8(v2);
  sub_10006D8C0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v0)
  {
    sub_100003998(&qword_1000DC480, &unk_1000AB420);
    sub_10006E348(&qword_1000DD178);
    sub_10006E234();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_10006E234();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_10006E234();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_10006E234();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v9 = sub_10006E28C();
    v10(v9);
  }

  sub_100008A94(v2);
  sub_1000643C0();
}

uint64_t sub_10006A7B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65727574616566 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_10006A878(char a1)
{
  if (a1)
  {
    return 0x65756C6176;
  }

  else
  {
    return 0x65727574616566;
  }
}

void sub_10006A8AC()
{
  sub_1000643A8();
  v3 = v2;
  v5 = v4;
  v8 = sub_100003998(v6, v7);
  sub_10000AC48(v8);
  v10 = v9;
  v12 = *(v11 + 64);
  sub_10000ACFC();
  __chkstk_darwin(v13);
  sub_100064364();
  v14 = v5[4];
  sub_100008614(v5, v5[3]);
  v3();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v0)
  {
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  (*(v10 + 8))(v1, v8);
  sub_1000643C0();
}

void sub_10006A9F8()
{
  sub_1000643A8();
  v2 = v1;
  v4 = v3;
  v7 = sub_100003998(v5, v6);
  sub_10000AC48(v7);
  v9 = *(v8 + 64);
  sub_10000ACFC();
  __chkstk_darwin(v10);
  sub_100064364();
  v11 = v4[4];
  sub_100008614(v4, v4[3]);
  v2();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v0)
  {
    KeyedDecodingContainer.decode(_:forKey:)();
    KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v12 = sub_10006E28C();
    v13(v12);
  }

  sub_100008A94(v4);
  sub_1000643C0();
}

unint64_t sub_10006ABA8(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1000CF448, v2);

  if (v3 >= 8)
  {
    return 8;
  }

  else
  {
    return v3;
  }
}

void sub_10006ABFC(char a1)
{
  switch(a1)
  {
    case 4:
      sub_10006E3B0();
      break;
    default:
      return;
  }
}

uint64_t sub_10006AD14(void *a1)
{
  v4 = v1;
  v6 = sub_100003998(&qword_1000DE450, &qword_1000ADE78);
  sub_10000AC48(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  sub_10000ACFC();
  __chkstk_darwin(v11);
  sub_100064374();
  v12 = a1[3];
  v13 = a1[4];
  sub_10006E3E8(a1);
  sub_10006CE10();
  sub_10006448C();
  v23 = *v4;
  v27 = *(v4 + 1);
  v28 = v4[3];
  sub_10006D444();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v14 = v4[7];
    v15 = *(v4 + 64);
    sub_1000642E0();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v16 = v4[9];
    v17 = *(v4 + 80);
    sub_1000642E0();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v24 = v4[4];
    sub_100003998(&qword_1000DE338, &qword_1000ADB38);
    sub_10006D498();
    sub_10006E278();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v25 = v4[5];
    sub_100003998(&qword_1000DE348, &qword_1000ADB40);
    sub_10006D608();
    sub_10006E278();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v26 = v4[6];
    sub_100003998(&qword_1000DE358, &qword_1000ADB48);
    sub_10006D718();
    sub_10006E278();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v18 = v4[11];
    v19 = v4[12];
    sub_1000642E0();
    KeyedEncodingContainer.encode(_:forKey:)();
    v20 = *(_s20RegistrationResponseVMa() + 44);
    type metadata accessor for SportingEventViewContext();
    sub_10006E2F8();
    sub_10006D7D4(v21);
    sub_10006E278();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v3, v6);
}

void sub_10006AFE8()
{
  sub_1000643A8();
  v2 = v1;
  v30 = v3;
  v4 = *(*(sub_100003998(&qword_1000DD228, &qword_1000ABE40) - 8) + 64);
  sub_10000ACFC();
  __chkstk_darwin(v5);
  v7 = &v28 - v6;
  v8 = sub_100003998(&qword_1000DE3B8, &qword_1000ADE40);
  v9 = sub_10000AC48(v8);
  v31 = v10;
  v32 = v9;
  v12 = *(v11 + 64);
  sub_10000ACFC();
  __chkstk_darwin(v13);
  v14 = _s20RegistrationResponseVMa();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = v2[3];
  v19 = v2[4];
  v33 = v2;
  sub_10006E3E8(v2);
  sub_10006CE10();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    sub_100008A94(v33);
  }

  else
  {
    v28 = v14;
    v29 = v7;
    sub_10006CE64();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v20 = v36;
    *v17 = v34;
    *(v17 + 8) = v35;
    *(v17 + 3) = v20;
    sub_10006E310(1);
    *(v17 + 7) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v17[64] = v21 & 1;
    sub_10006E310(2);
    *(v17 + 9) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v17[80] = v22 & 1;
    sub_100003998(&qword_1000DE338, &qword_1000ADB38);
    sub_10006CEB8();
    sub_10006E2CC();
    *(v17 + 4) = v34;
    sub_100003998(&qword_1000DE348, &qword_1000ADB40);
    sub_10006CFC8();
    sub_10006E2CC();
    *(v17 + 5) = v34;
    sub_100003998(&qword_1000DE358, &qword_1000ADB48);
    sub_10006D138();
    sub_10006E2CC();
    *(v17 + 6) = v34;
    sub_10006E310(6);
    *(v17 + 11) = KeyedDecodingContainer.decode(_:forKey:)();
    *(v17 + 12) = v23;
    type metadata accessor for SportingEventViewContext();
    LOBYTE(v34) = 7;
    sub_10006E2F8();
    sub_10006D7D4(v24);
    v25 = v29;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v26 = sub_10006E2AC();
    v27(v26);
    sub_10006D1F4(v25, &v17[*(v28 + 44)]);
    sub_100008D68(v17, v30);
    sub_100008A94(v33);
    sub_10006D264(v17);
  }

  sub_1000643C0();
}

uint64_t sub_10006B4E4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6556746E65696C63 && a2 == 0xED00006E6F697372;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6556616D65686373 && a2 == 0xED00006E6F697372;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6E656B6F74 && a2 == 0xE500000000000000;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 1701869940 && a2 == 0xE400000000000000;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x746163696C707061 && a2 == 0xEB000000006E6F69;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6163696E6F6E6163 && a2 == 0xEC0000007364496CLL;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6574656D61726170 && a2 == 0xEA00000000007372;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0x656469727265766FLL && a2 == 0xE800000000000000)
              {

                return 7;
              }

              else
              {
                v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_10006B780(char a1)
{
  result = 0x6556746E65696C63;
  switch(a1)
  {
    case 1:
      result = 0x6556616D65686373;
      break;
    case 2:
      result = 0x6E656B6F74;
      break;
    case 3:
      result = 1701869940;
      break;
    case 4:
      result = 0x746163696C707061;
      break;
    case 5:
      result = 0x6163696E6F6E6163;
      break;
    case 6:
      result = 0x6574656D61726170;
      break;
    case 7:
      result = 0x656469727265766FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10006B894(void *a1)
{
  v4 = v1;
  v6 = sub_100003998(&qword_1000DE420, &qword_1000ADE58);
  sub_10000AC48(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  sub_10000ACFC();
  __chkstk_darwin(v11);
  sub_100064374();
  v12 = a1[3];
  v13 = a1[4];
  sub_10006E3E8(a1);
  sub_10006D2C0();
  sub_10006448C();
  v14 = *v4;
  v15 = v4[1];
  sub_1000642E0();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v16 = v4[2];
    v17 = v4[3];
    sub_1000642E0();
    KeyedEncodingContainer.encode(_:forKey:)();
    v18 = v4[4];
    v19 = v4[5];
    sub_1000642E0();
    KeyedEncodingContainer.encode(_:forKey:)();
    v20 = v4[6];
    v21 = v4[7];
    sub_1000642E0();
    KeyedEncodingContainer.encode(_:forKey:)();
    v22 = v4[8];
    v23 = v4[9];
    sub_1000642E0();
    KeyedEncodingContainer.encode(_:forKey:)();
    v26 = v4[10];
    sub_100003998(&qword_1000DC420, &unk_1000ADE60);
    sub_10006D314(&unk_1000DE430);
    sub_10006E278();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v27 = v4[11];
    sub_100003998(&qword_1000DC480, &unk_1000AB420);
    sub_10006E324(&unk_1000DE438);
    sub_10006E278();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v24 = *(v4 + 96);
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v8 + 8))(v3, v6);
}

void sub_10006BB04()
{
  sub_1000643A8();
  v2 = v1;
  v4 = v3;
  v5 = sub_100003998(&qword_1000DE440, &qword_1000ADE70);
  sub_10000AC48(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_10000ACFC();
  __chkstk_darwin(v10);
  v12 = &v28 - v11;
  v13 = v2[4];
  sub_100008614(v2, v2[3]);
  sub_10006D2C0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    sub_100008A94(v2);
  }

  else
  {
    LOBYTE(v40[0]) = 0;
    sub_10006E2BC();
    v14 = KeyedDecodingContainer.decode(_:forKey:)();
    v16 = v15;
    LOBYTE(v40[0]) = 1;
    sub_10006E2BC();
    v33 = KeyedDecodingContainer.decode(_:forKey:)();
    v38 = v17;
    LOBYTE(v40[0]) = 2;
    sub_10006E2BC();
    v32 = KeyedDecodingContainer.decode(_:forKey:)();
    v37 = v18;
    LOBYTE(v40[0]) = 3;
    sub_10006E2BC();
    v29 = KeyedDecodingContainer.decode(_:forKey:)();
    v30 = v14;
    v36 = v19;
    LOBYTE(v40[0]) = 4;
    sub_10006E2BC();
    v20 = KeyedDecodingContainer.decode(_:forKey:)();
    v31 = v21;
    v28 = v20;
    sub_100003998(&qword_1000DC420, &unk_1000ADE60);
    LOBYTE(v39[0]) = 5;
    sub_10006D314(&unk_1000DE448);
    sub_10006E36C();
    v35 = v40[0];
    sub_100003998(&qword_1000DC480, &unk_1000AB420);
    LOBYTE(v39[0]) = 6;
    sub_10006E348(&qword_1000DD178);
    sub_10006E36C();
    v34 = v40[0];
    sub_10006E2BC();
    v22 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v7 + 8))(v12, v5);
    v42 = v22 & 1;
    v39[0] = v30;
    v39[1] = v16;
    v39[2] = v33;
    v23 = v38;
    v39[3] = v38;
    v39[4] = v32;
    v24 = v37;
    v39[5] = v37;
    v39[6] = v29;
    v25 = v36;
    v39[7] = v36;
    v39[8] = v28;
    v26 = v31;
    v27 = v35;
    v39[9] = v31;
    v39[10] = v35;
    v39[11] = v34;
    LOBYTE(v39[12]) = v42;
    sub_10006D3DC(v39, v40);
    sub_100008A94(v2);
    v40[0] = v30;
    v40[1] = v16;
    v40[2] = v33;
    v40[3] = v23;
    v40[4] = v32;
    v40[5] = v24;
    v40[6] = v29;
    v40[7] = v25;
    v40[8] = v28;
    v40[9] = v26;
    v40[10] = v27;
    v40[11] = v34;
    v41 = v42;
    sub_10006D414(v40);
    memcpy(v4, v39, 0x61uLL);
  }

  sub_1000643C0();
}

uint64_t sub_10006C084@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10006A1AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10006C0AC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10006A314();
  *a1 = result;
  return result;
}

uint64_t sub_10006C0D4(uint64_t a1)
{
  v2 = sub_10006D8C0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10006C110(uint64_t a1)
{
  v2 = sub_10006D8C0();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_10006C14C(void *a1@<X8>)
{
  sub_10006A574();
  if (!v1)
  {
    *a1 = v3;
    a1[1] = v4;
    a1[2] = v5;
    a1[3] = v6;
  }
}

void sub_10006C17C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_10006A3D0();
}

uint64_t sub_10006C19C(uint64_t a1)
{
  v2 = sub_10006D86C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10006C1D8(uint64_t a1)
{
  v2 = sub_10006D86C();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_10006C258()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_10006A8AC();
}

uint64_t sub_10006C2D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10006A7B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10006C2FC(uint64_t a1)
{
  v2 = sub_10006D818();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10006C338(uint64_t a1)
{
  v2 = sub_10006D818();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_10006C3B8(void *a1@<X8>)
{
  sub_10006A9F8();
  if (!v1)
  {
    *a1 = v3;
    a1[1] = v4;
    a1[2] = v5;
    a1[3] = v6;
  }
}

void sub_10006C3F8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_10006A8AC();
}

unint64_t sub_10006C474@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10006ABA8(*a1);
  *a2 = result;
  return result;
}

void sub_10006C4A4(void *a1@<X8>)
{
  sub_10006ABFC(*v1);
  *a1 = v3;
  a1[1] = v4;
}

uint64_t sub_10006C4EC@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_10006ABF4(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10006C520(uint64_t a1)
{
  v2 = sub_10006CE10();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10006C55C(uint64_t a1)
{
  v2 = sub_10006CE10();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10006C5D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10006B4E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10006C5F8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10006B778();
  *a1 = result;
  return result;
}

uint64_t sub_10006C620(uint64_t a1)
{
  v2 = sub_10006D2C0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10006C65C(uint64_t a1)
{
  v2 = sub_10006D2C0();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_10006C698(void *a1@<X8>)
{
  sub_10006BB04();
  if (!v1)
  {
    memcpy(a1, __src, 0x61uLL);
  }
}

uint64_t sub_10006C704(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 97))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_10006C744(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 97) = 1;
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

    *(result + 97) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10006C7C4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100003998(&qword_1000DD228, &qword_1000ABE40);
    v9 = a1 + *(a3 + 44);

    return sub_100008B84(v9, a2, v8);
  }
}

void *sub_10006C86C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_100003998(&qword_1000DD228, &qword_1000ABE40);
    v8 = v5 + *(a4 + 44);

    return sub_100008E2C(v8, a2, a2, v7);
  }

  return result;
}

uint64_t _s20RegistrationResponseVMa()
{
  result = qword_1000DE320;
  if (!qword_1000DE320)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10006C944()
{
  sub_10006CA78(319, &qword_1000DE330, &qword_1000DE338, &qword_1000ADB38);
  if (v0 <= 0x3F)
  {
    sub_10006CA78(319, &qword_1000DE340, &qword_1000DE348, &qword_1000ADB40);
    if (v1 <= 0x3F)
    {
      sub_10006CA78(319, &qword_1000DE350, &qword_1000DE358, &qword_1000ADB48);
      if (v2 <= 0x3F)
      {
        sub_10006CACC();
        if (v3 <= 0x3F)
        {
          sub_10006CB1C();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_10006CA78(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_1000089A8(a3, a4);
    v5 = type metadata accessor for Optional();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_10006CACC()
{
  if (!qword_1000DE360)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DE360);
    }
  }
}

void sub_10006CB1C()
{
  if (!qword_1000DE368)
  {
    type metadata accessor for SportingEventViewContext();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DE368);
    }
  }
}

uint64_t sub_10006CB8C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_10006CBCC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ApplicationType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
    if (a2 + 5 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 5) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ApplicationType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
        JUMPOUT(0x10006CD80);
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10006CDBC()
{
  result = qword_1000DE3B0;
  if (!qword_1000DE3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE3B0);
  }

  return result;
}

unint64_t sub_10006CE10()
{
  result = qword_1000DE3C0;
  if (!qword_1000DE3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE3C0);
  }

  return result;
}

unint64_t sub_10006CE64()
{
  result = qword_1000DE3C8;
  if (!qword_1000DE3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE3C8);
  }

  return result;
}

unint64_t sub_10006CEB8()
{
  result = qword_1000DE3D0;
  if (!qword_1000DE3D0)
  {
    sub_1000089A8(&qword_1000DE338, &qword_1000ADB38);
    sub_10006D554(&unk_1000DE3D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE3D0);
  }

  return result;
}

unint64_t sub_10006CF74()
{
  result = qword_1000DE3E8;
  if (!qword_1000DE3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE3E8);
  }

  return result;
}

unint64_t sub_10006CFC8()
{
  result = qword_1000DE3F0;
  if (!qword_1000DE3F0)
  {
    sub_1000089A8(&qword_1000DE348, &qword_1000ADB40);
    sub_10006D084(&unk_1000DE3F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE3F0);
  }

  return result;
}

unint64_t sub_10006D084(uint64_t a1)
{
  result = sub_10006E39C(a1);
  if (!result)
  {
    sub_10006E3BC();
    sub_1000089A8(&qword_1000DE400, &qword_1000ADE50);
    v2();
    result = sub_10006E3C8();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_10006D0E4()
{
  result = qword_1000DE408;
  if (!qword_1000DE408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE408);
  }

  return result;
}

unint64_t sub_10006D138()
{
  result = qword_1000DE410;
  if (!qword_1000DE410)
  {
    sub_1000089A8(&qword_1000DE358, &qword_1000ADB48);
    sub_10006D7D4(&unk_1000DBD30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE410);
  }

  return result;
}

uint64_t sub_10006D1F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003998(&qword_1000DD228, &qword_1000ABE40);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006D264(uint64_t a1)
{
  v2 = _s20RegistrationResponseVMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10006D2C0()
{
  result = qword_1000DE428;
  if (!qword_1000DE428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE428);
  }

  return result;
}

unint64_t sub_10006D314(uint64_t a1)
{
  result = sub_10006E39C(a1);
  if (!result)
  {
    sub_10006E3BC();
    sub_1000089A8(&qword_1000DC420, &unk_1000ADE60);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_10006D378(uint64_t a1)
{
  result = sub_10006E39C(a1);
  if (!result)
  {
    sub_10006E3BC();
    sub_1000089A8(&qword_1000DC480, &unk_1000AB420);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_10006D444()
{
  result = qword_1000DE458;
  if (!qword_1000DE458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE458);
  }

  return result;
}

unint64_t sub_10006D498()
{
  result = qword_1000DE460;
  if (!qword_1000DE460)
  {
    sub_1000089A8(&qword_1000DE338, &qword_1000ADB38);
    sub_10006D554(&unk_1000DE468);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE460);
  }

  return result;
}

unint64_t sub_10006D554(uint64_t a1)
{
  result = sub_10006E39C(a1);
  if (!result)
  {
    sub_10006E3BC();
    sub_1000089A8(&qword_1000DE3E0, &qword_1000ADE48);
    v2();
    result = sub_10006E3C8();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_10006D5B4()
{
  result = qword_1000DE470;
  if (!qword_1000DE470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE470);
  }

  return result;
}

unint64_t sub_10006D608()
{
  result = qword_1000DE478;
  if (!qword_1000DE478)
  {
    sub_1000089A8(&qword_1000DE348, &qword_1000ADB40);
    sub_10006D084(&unk_1000DE480);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE478);
  }

  return result;
}

unint64_t sub_10006D6C4()
{
  result = qword_1000DE488;
  if (!qword_1000DE488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE488);
  }

  return result;
}

unint64_t sub_10006D718()
{
  result = qword_1000DE490;
  if (!qword_1000DE490)
  {
    sub_1000089A8(&qword_1000DE358, &qword_1000ADB48);
    sub_10006D7D4(&unk_1000DE498);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE490);
  }

  return result;
}

unint64_t sub_10006D7D4(uint64_t a1)
{
  result = sub_10006E39C(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_10006D818()
{
  result = qword_1000DE4B0;
  if (!qword_1000DE4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE4B0);
  }

  return result;
}

unint64_t sub_10006D86C()
{
  result = qword_1000DE4C8;
  if (!qword_1000DE4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE4C8);
  }

  return result;
}

unint64_t sub_10006D8C0()
{
  result = qword_1000DE4E0;
  if (!qword_1000DE4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE4E0);
  }

  return result;
}

_BYTE *_s20RegistrationResponseV5LinksV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
        JUMPOUT(0x10006D9E0);
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_10006DA30(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x10006DAF8);
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
          result = sub_10006E3A8(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_10006DB4C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
    if (a2 + 7 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 7) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_10006DBD8(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
        JUMPOUT(0x10006DCA0);
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
          result = sub_10006E3A8(result, a2 + 7);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10006DCDC()
{
  result = qword_1000DE4F0;
  if (!qword_1000DE4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE4F0);
  }

  return result;
}

unint64_t sub_10006DD34()
{
  result = qword_1000DE4F8;
  if (!qword_1000DE4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE4F8);
  }

  return result;
}

unint64_t sub_10006DD8C()
{
  result = qword_1000DE500;
  if (!qword_1000DE500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE500);
  }

  return result;
}

unint64_t sub_10006DDE4()
{
  result = qword_1000DE508;
  if (!qword_1000DE508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE508);
  }

  return result;
}

unint64_t sub_10006DE3C()
{
  result = qword_1000DE510;
  if (!qword_1000DE510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE510);
  }

  return result;
}

unint64_t sub_10006DE94()
{
  result = qword_1000DE518;
  if (!qword_1000DE518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE518);
  }

  return result;
}

unint64_t sub_10006DEEC()
{
  result = qword_1000DE520;
  if (!qword_1000DE520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE520);
  }

  return result;
}

unint64_t sub_10006DF44()
{
  result = qword_1000DE528;
  if (!qword_1000DE528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE528);
  }

  return result;
}

unint64_t sub_10006DF9C()
{
  result = qword_1000DE530;
  if (!qword_1000DE530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE530);
  }

  return result;
}

unint64_t sub_10006DFF4()
{
  result = qword_1000DE538;
  if (!qword_1000DE538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE538);
  }

  return result;
}

unint64_t sub_10006E04C()
{
  result = qword_1000DE540;
  if (!qword_1000DE540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE540);
  }

  return result;
}

unint64_t sub_10006E0A4()
{
  result = qword_1000DE548;
  if (!qword_1000DE548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE548);
  }

  return result;
}

unint64_t sub_10006E0FC()
{
  result = qword_1000DE550;
  if (!qword_1000DE550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE550);
  }

  return result;
}

unint64_t sub_10006E154()
{
  result = qword_1000DE558;
  if (!qword_1000DE558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE558);
  }

  return result;
}

unint64_t sub_10006E1AC()
{
  result = qword_1000DE560;
  if (!qword_1000DE560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE560);
  }

  return result;
}

uint64_t sub_10006E2CC()
{

  return KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
}

unint64_t sub_10006E324(uint64_t a1)
{

  return sub_10006D378(a1);
}

unint64_t sub_10006E348(uint64_t a1)
{

  return sub_10006D378(a1);
}

uint64_t sub_10006E36C()
{

  return KeyedDecodingContainer.decode<A>(_:forKey:)();
}

uint64_t sub_10006E3C8()
{

  return swift_getWitnessTable();
}

double sub_10006E404@<D0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() sharedScheduler];
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 taskRequestForIdentifier:v3];

  if (!v4 || (sub_10006E9B0(), sub_100003998(&qword_1000DE570, &qword_1000AE508), (swift_dynamicCast() & 1) == 0))
  {
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

void sub_10006E4E8(uint64_t a1)
{
  v2 = [objc_opt_self() sharedScheduler];
  v14 = 0;
  LODWORD(a1) = [v2 submitTaskRequest:a1 error:&v14];

  v3 = v14;
  if (a1)
  {

    v4 = v3;
  }

  else
  {
    v5 = v14;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1000DBA10 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100007DE8(v6, qword_1000E6D18);
    swift_errorRetain();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v14 = v10;
      *v9 = 136315138;
      swift_getErrorValue();
      v11 = Error.localizedDescription.getter();
      v13 = sub_1000170D4(v11, v12, &v14);

      *(v9 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v7, v8, "Error sbmitting task request: %s", v9, 0xCu);
      sub_100008A94(v10);
    }

    else
    {
    }
  }
}

void sub_10006E750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = [objc_opt_self() sharedScheduler];
  v7 = String._bridgeToObjectiveC()();
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  v10[4] = sub_10006E940;
  v10[5] = v8;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_1000112F0;
  v10[3] = &unk_1000D3168;
  v9 = _Block_copy(v10);

  [v6 registerForTaskWithIdentifier:v7 usingQueue:0 launchHandler:v9];
  _Block_release(v9);
}

uint64_t sub_10006E884(void *a1, void (*a2)(id (*)(id result), uint64_t))
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  v5 = a1;
  a2(sub_10006E998, v4);
}

uint64_t sub_10006E908()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10006E948(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10006E960()
{

  return _swift_deallocObject(v0, 24, 7);
}

id sub_10006E998(id result)
{
  if (result)
  {
    return [*(v1 + 16) setTaskCompleted];
  }

  return result;
}

unint64_t sub_10006E9B0()
{
  result = qword_1000DE568;
  if (!qword_1000DE568)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000DE568);
  }

  return result;
}

uint64_t *sub_10006EA1C(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_10006EB70(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for Logger();
  sub_10006EA1C(v3, a2);
  sub_100007DE8(v3, a2);
  return Logger.init(subsystem:category:)();
}

void sub_10006EBF8()
{
  type metadata accessor for PersistentStore();
  v0 = PersistentStore.__allocating_init()();
  v1 = objc_allocWithZone(type metadata accessor for ActivityAuthorization());

  v2 = [v1 init];
  v3 = sub_10006F460(v0, v2);

  qword_1000E6DD8 = v3;
}

uint64_t sub_10006EC84()
{
  v1 = v0;
  v2 = v0[19];
  if (sub_100066914())
  {
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    result = 0;
    if ((v3 & 1) == 0)
    {
      return result;
    }
  }

  v5 = v1[18];
  sub_100008614(v1 + 14, v1[17]);
  v6 = dispatch thunk of PersistentStorable.allEventSubscriptionsToConsumers(isConventionalOrUnified:)();
  v8 = v6 + 64;
  v7 = *(v6 + 64);
  v9 = *(v6 + 32);
  sub_10006F7A8();
  v12 = v11 & v10;
  v45 = 0;
  v46 = (v13 + 63) >> 6;
  v51 = 0x80000001000B0480;
  v14 = 0;

  while (1)
  {
    if (v12)
    {
      goto LABEL_10;
    }

    do
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
      }

      if (v15 >= v46)
      {

        return 0;
      }

      v12 = *(v8 + 8 * v15);
      ++v14;
    }

    while (!v12);
    v14 = v15;
LABEL_10:
    v16 = *(*(v6 + 56) + ((v14 << 9) | (8 * __clz(__rbit64(v12)))));
    v17 = *(v16 + 32);
    v18 = v17 & 0x3F;
    v19 = ((1 << v17) + 63) >> 6;
    v20 = 8 * v19;

    if (v18 <= 0xD)
    {
LABEL_11:
      v48 = &v44;
      v49 = v19;
      __chkstk_darwin(v21);
      v22 = &v44 - ((v20 + 15) & 0x3FFFFFFFFFFFFFF0);
      bzero(v22, v20);
      v50 = 0;
      v23 = 0;
      v24 = *(v16 + 56);
      v25 = *(v16 + 32);
      sub_10006F7A8();
      v28 = v27 & v26;
      v30 = (v29 + 63) >> 6;
      while (1)
      {
        if (v28)
        {
          v31 = __clz(__rbit64(v28));
          v28 &= v28 - 1;
          goto LABEL_19;
        }

        v32 = v23;
        do
        {
          v23 = v32 + 1;
          if (__OFADD__(v32, 1))
          {
            __break(1u);
            goto LABEL_35;
          }

          if (v23 >= v30)
          {
            v37 = sub_100018FEC(v22, v49, v50, v16);
            v6 = v47;
            goto LABEL_26;
          }

          v33 = *(v16 + 56 + 8 * v23);
          ++v32;
        }

        while (!v33);
        v31 = __clz(__rbit64(v33));
        v28 = (v33 - 1) & v33;
LABEL_19:
        v34 = v31 | (v23 << 6);
        v35 = (*(v16 + 48) + 16 * v34);
        if ((*v35 != 0xD000000000000011 || v51 != v35[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          *&v22[(v34 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v34;
          if (__OFADD__(v50++, 1))
          {
            goto LABEL_36;
          }
        }
      }
    }

    if (swift_stdlib_isStackAllocationSafe())
    {

      goto LABEL_11;
    }

    v39 = v19;
    v40 = swift_slowAlloc();

    v41 = v39;
    v42 = v45;
    v43 = sub_10006F25C(v40, v41, v16, sub_10006F07C);
    v45 = v42;
    if (v42)
    {
      break;
    }

    v37 = v43;
    swift_bridgeObjectRelease_n();

LABEL_26:
    v12 &= v12 - 1;
    v38 = *(v37 + 16);

    if (v38)
    {

      return 1;
    }
  }

  swift_bridgeObjectRelease_n();

  __break(1u);
  return result;
}

uint64_t sub_10006F07C(void *a1)
{
  if (*a1 == 0xD000000000000011 && 0x80000001000B0480 == a1[1])
  {
    v2 = 0;
  }

  else
  {
    v2 = _stringCompareWithSmolCheck(_:_:expecting:)() ^ 1;
  }

  return v2 & 1;
}

uint64_t sub_10006F0F0()
{
  sub_100008A94((v0 + 112));
  v1 = *(v0 + 152);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_10006F120()
{
  sub_10006F0F0();

  return _swift_defaultActor_deallocate(v0);
}

unint64_t sub_10006F174()
{
  result = qword_1000DE630;
  if (!qword_1000DE630)
  {
    type metadata accessor for SubscriptionInspectionUtility();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE630);
  }

  return result;
}

uint64_t sub_10006F1C8()
{
  if (qword_1000DBA50 != -1)
  {
    swift_once();
  }
}

uint64_t sub_10006F224(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for SubscriptionInspectionUtility();

  return static GlobalActor.sharedUnownedExecutor.getter(v3, a2);
}

void *sub_10006F25C(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_10006F2EC(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_10006F2EC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  v25 = a3;
  v22 = 0;
  v21 = result;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = (*(v25 + 48) + 16 * v14);
    v16 = v15[1];
    v24[0] = *v15;
    v24[1] = v16;

    v17 = a4(v24);

    if (v4)
    {
      return result;
    }

    if (v17)
    {
      *(v21 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
LABEL_16:
        v19 = v25;

        return sub_100018FEC(v21, a2, v22, v19);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_16;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10006F460(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityAuthorization();
  v15[3] = v4;
  v15[4] = &off_1000D1900;
  v15[0] = a2;
  type metadata accessor for SubscriptionInspectionUtility();
  v5 = swift_allocObject();
  v6 = sub_10000B90C(v15, v4);
  v7 = *(*(v4 - 8) + 64);
  v8 = __chkstk_darwin(v6);
  v10 = (&v15[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v11 + 16))(v10, v8);
  v12 = sub_10006F578(a1, *v10, v5);
  sub_100008A94(v15);
  return v12;
}

uint64_t sub_10006F578(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31[3] = type metadata accessor for PersistentStore();
  v31[4] = &protocol witness table for PersistentStore;
  v31[0] = a1;
  v6 = type metadata accessor for ActivityAuthorization();
  v30[3] = v6;
  v30[4] = &off_1000D1900;
  v30[0] = a2;
  swift_defaultActor_initialize();
  sub_10000BC8C(v31, a3 + 112);
  sub_10000BC8C(v30, v28);
  v7 = sub_1000499E0();
  v9 = v8;
  v10 = v29;
  v11 = sub_10000B90C(v28, v29);
  v12 = *(*(v10 - 8) + 64);
  v13 = __chkstk_darwin(v11);
  v15 = (v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15, v13);
  v17 = *v15;
  v27[3] = v6;
  v27[4] = &off_1000D1900;
  v27[0] = v17;
  type metadata accessor for ActivityCapUtility();
  v18 = swift_allocObject();
  v19 = sub_10000B90C(v27, v6);
  v20 = *(*(v6 - 8) + 64);
  v21 = __chkstk_darwin(v19);
  v23 = (v27 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v24 + 16))(v23, v21);
  v25 = *v23;
  v18[5] = v6;
  v18[6] = &off_1000D1900;
  v18[2] = v25;
  v18[7] = v7;
  v18[8] = v9;
  sub_100008A94(v27);
  sub_100008A94(v31);
  sub_100008A94(v30);
  sub_100008A94(v28);
  *(a3 + 152) = v18;
  return a3;
}

uint64_t sub_10006F7C0@<X0>(void *a1@<X8>)
{
  v2 = sub_1000499E0();
  v4 = v3;
  v5 = [objc_opt_self() defaultSessionConfiguration];
  v6 = [objc_allocWithZone(AMSURLSession) initWithConfiguration:v5];

  if (qword_1000DBA80 != -1)
  {
    sub_1000794D0();
  }

  v7 = qword_1000E6E10;
  v17[3] = type metadata accessor for SportsPerformanceMeasurement();
  v17[4] = &off_1000D4A78;
  v17[0] = v7;
  a1[3] = &type metadata for ApiAgent;
  a1[4] = &off_1000D18E8;
  v8 = swift_allocObject();
  *a1 = v8;
  v9 = qword_1000DB9B8;

  if (v9 != -1)
  {
    swift_once();
  }

  v10 = *(qword_1000E6CC0 + 16);
  v11 = [v6 configuration];
  sub_100079034(v2, v4, v11);

  v12 = [v6 configuration];
  v13 = [objc_opt_self() currentProcess];

  v14 = [objc_allocWithZone(AMSURLRequestEncoder) initWithBag:v10];
  [v14 setUrlKnownToBeTrusted:0];
  v8[6] = sub_10000A854();
  v8[7] = &off_1000D0658;
  v8[3] = v14;
  sub_10000A898(v17, (v8 + 9));
  v15 = [objc_allocWithZone(type metadata accessor for AMSTaskDelegate()) init];

  v8[2] = v6;
  v8[8] = v15;
  return sub_100008A94(v17);
}

uint64_t sub_10006FA44()
{
  sub_10000BCF0(v0 + OBJC_IVAR____TtC7sportsd26SportsKitRequestXPCSession_subscriptionOperation);
  v1 = *(v0 + OBJC_IVAR____TtC7sportsd26SportsKitRequestXPCSession_cancellables);

  v2 = *(v0 + OBJC_IVAR____TtC7sportsd26SportsKitRequestXPCSession_bundleId + 8);

  sub_100008A94((v0 + OBJC_IVAR____TtC7sportsd26SportsKitRequestXPCSession_liveActivityAppIntentService));
  v3 = *(v0 + OBJC_IVAR____TtC7sportsd26SportsKitRequestXPCSession_activityCapUtility);
}

id sub_10006FAB8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  if (qword_1000DBA10 != -1)
  {
    sub_10007932C();
  }

  v3 = type metadata accessor for Logger();
  sub_10005B0AC(v3, qword_1000E6D18);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Connection closed.", v6, 2u);
    sub_10000B008();
  }

  v8.receiver = v1;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, "dealloc");
}

void sub_10006FC50(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v147 = a5;
  v159 = a1;
  v160 = a3;
  v158 = a2;
  v10 = type metadata accessor for Date();
  v153 = *(v10 - 8);
  v154 = v10;
  v11 = *(v153 + 64);
  __chkstk_darwin(v10);
  v152 = &v137 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for UUID();
  v149 = *(v13 - 8);
  v150 = v13;
  v14 = *(v149 + 64);
  __chkstk_darwin(v13);
  v148 = &v137 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100003998(&qword_1000DD210, &qword_1000ABE08);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v156 = &v137 - v18;
  v19 = type metadata accessor for SportingEventSubscriptionRequest.ContextKey();
  v145 = *(v19 - 8);
  v146 = v19;
  v20 = *(v145 + 64);
  __chkstk_darwin(v19);
  v144 = &v137 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v143 = &v137 - v23;
  __chkstk_darwin(v24);
  v142 = &v137 - v25;
  __chkstk_darwin(v26);
  v28 = &v137 - v27;
  v151 = type metadata accessor for SubscriptionRegisterOperation(0);
  v29 = *(*(v151 - 8) + 64);
  __chkstk_darwin(v151);
  v155 = &v137 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for SportingEventSubscriptionRequest.SubscriptionType();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  __chkstk_darwin(v31);
  v35 = &v137 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v38 = &v137 - v37;
  v39 = sub_100003998(&qword_1000DE698, &unk_1000AE720);
  v40 = *(*(v39 - 8) + 64);
  __chkstk_darwin(v39 - 8);
  v42 = &v137 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v45 = &v137 - v44;
  v161 = swift_allocObject();
  v162 = a7;
  *(v161 + 16) = a7;
  v157 = a6;
  v46 = *(a6 + OBJC_IVAR____TtC7sportsd26SportsKitRequestXPCSession_bundleId + 8);
  if (!v46)
  {
    goto LABEL_7;
  }

  v47 = *(a6 + OBJC_IVAR____TtC7sportsd26SportsKitRequestXPCSession_bundleId);
  v48 = HIBYTE(v46) & 0xF;
  if ((v46 & 0x2000000000000000) == 0)
  {
    v48 = v47 & 0xFFFFFFFFFFFFLL;
  }

  if (v48)
  {
    _Block_copy(v162);

    SportingEventSubscriptionRequest.SubscriptionType.init(rawValue:)();
    sub_10000A744(v45, v42, &qword_1000DE698, &unk_1000AE720);
    if (sub_100008B84(v42, 1, v31) == 1)
    {
      sub_10000A7A8(v45, &qword_1000DE698, &unk_1000AE720);
LABEL_15:

      if (qword_1000DBA20 != -1)
      {
        swift_once();
      }

      v57 = type metadata accessor for Logger();
      sub_100007DE8(v57, qword_1000E6D48);

      v58 = Logger.logObject.getter();
      v59 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        v163[0] = v61;
        *v60 = 136315138;
        *(v60 + 4) = sub_1000170D4(v160, a4, v163);
        _os_log_impl(&_mh_execute_header, v58, v59, "Tempo /register invalid subscriptionType: %s", v60, 0xCu);
        sub_100008A94(v61);
      }

      v62 = v162;
      sub_100029E04(1u, 0xD000000000000019, 0x80000001000B25E0);
      v63 = _convertErrorToNSError(_:)();
      v62[2](v62, v63);

      v55 = v62;
      goto LABEL_13;
    }

    (*(v32 + 32))(v38, v42, v31);
    (*(v32 + 16))(v35, v38, v31);
    v56 = sub_100070C50(v35);
    (*(v32 + 8))(v38, v31);
    sub_10000A7A8(v45, &qword_1000DE698, &unk_1000AE720);
    if (v56 == 6)
    {
      goto LABEL_15;
    }

    v65 = v158;
    v64 = v159;
    v66 = HIBYTE(v158) & 0xF;
    if ((v158 & 0x2000000000000000) == 0)
    {
      v66 = v159 & 0xFFFFFFFFFFFFLL;
    }

    if (v66)
    {
      if (qword_1000DBA10 != -1)
      {
        swift_once();
      }

      v67 = type metadata accessor for Logger();
      sub_100007DE8(v67, qword_1000E6D18);

      v68 = Logger.logObject.getter();
      v69 = static os_log_type_t.debug.getter();

      v70 = os_log_type_enabled(v68, v69);
      v141 = v47;
      v140 = v56;
      if (v70)
      {
        v71 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        v163[0] = v72;
        *v71 = 136315138;
        *(v71 + 4) = sub_1000170D4(v64, v65, v163);
        _os_log_impl(&_mh_execute_header, v68, v69, "SportsKitRequestXPCSession: Registering for event '%s'", v71, 0xCu);
        sub_100008A94(v72);
      }

      v137 = v157 + OBJC_IVAR____TtC7sportsd26SportsKitRequestXPCSession_subscriptionOperation;
      v74 = v145;
      v73 = v146;
      v75 = *(v145 + 104);
      v75(v28, enum case for SportingEventSubscriptionRequest.ContextKey.leagueId(_:), v146);
      v76 = SportingEventSubscriptionRequest.ContextKey.rawValue.getter();
      v78 = v77;
      v79 = *(v74 + 8);
      v79(v28, v73);
      v80 = v147;
      v160 = sub_10007C074(v76, v78, v147);
      v145 = v81;

      v82 = v142;
      v75(v142, enum case for SportingEventSubscriptionRequest.ContextKey.sportId(_:), v73);
      v83 = SportingEventSubscriptionRequest.ContextKey.rawValue.getter();
      v85 = v84;
      v79(v82, v73);
      v142 = sub_10007C074(v83, v85, v80);
      v139 = v86;

      v87 = v143;
      v75(v143, enum case for SportingEventSubscriptionRequest.ContextKey.source(_:), v73);
      v88 = SportingEventSubscriptionRequest.ContextKey.rawValue.getter();
      v90 = v89;
      v79(v87, v73);
      v143 = sub_10007C074(v88, v90, v80);
      v138 = v91;

      v92 = v144;
      v75(v144, enum case for SportingEventSubscriptionRequest.ContextKey.leagueAbbreviation(_:), v73);
      v93 = SportingEventSubscriptionRequest.ContextKey.rawValue.getter();
      v95 = v94;
      v79(v92, v73);
      v96 = sub_10007C074(v93, v95, v80);
      v146 = v97;
      v147 = v96;

      v98 = type metadata accessor for SubscriptionRegisterOperation.PreferredData(0);
      v99 = v156;
      sub_100008E2C(v156, 1, 1, v98);
      v100 = v137;
      v101 = v155;
      sub_10000A898(v137, v155);
      v102 = *(v100 + 40);
      v103 = *(v100 + 48);
      sub_10000A898(v100 + 96, v101 + 56);
      sub_10000A898(v100 + 136, v101 + 96);
      v104 = v151;
      sub_10000A744(v99, v101 + *(v151 + 72), &qword_1000DD210, &qword_1000ABE08);
      sub_100003998(&qword_1000DC430, &qword_1000AA610);
      v105 = swift_allocObject();
      *(v105 + 16) = xmmword_1000AB460;
      v106 = v158;
      *(v105 + 32) = v159;
      *(v105 + 40) = v106;

      v107 = v148;
      UUID.init()();
      v108 = UUID.uuidString.getter();
      v110 = v109;
      (*(v149 + 8))(v107, v150);
      *(v105 + 48) = v108;
      *(v105 + 56) = v110;
      v163[0] = v105;
      sub_100003998(&qword_1000DC420, &unk_1000ADE60);
      sub_10000A6FC(&qword_1000DC428, &qword_1000DC420, &unk_1000ADE60);
      v111 = BidirectionalCollection<>.joined(separator:)();
      v113 = v112;

      *(v101 + 40) = v102;
      *(v101 + 48) = v103;
      *(v101 + 136) = v141;
      *(v101 + 144) = v46;
      v115 = v159;
      v114 = v160;
      *(v101 + 152) = v159;
      *(v101 + 160) = v106;
      *(v101 + 168) = 0;
      *(v101 + 176) = 0;
      v116 = v145;
      *(v101 + 184) = v114;
      *(v101 + 192) = v116;
      v117 = v139;
      *(v101 + 200) = v142;
      *(v101 + 208) = v117;
      v118 = v138;
      *(v101 + 216) = v143;
      *(v101 + 224) = v118;
      *(v101 + 232) = 0;
      v119 = v146;
      *(v101 + 240) = v147;
      *(v101 + 248) = v119;
      *(v101 + 256) = v140;
      v120 = v104[19];

      v121 = v152;
      Date.init()();
      sub_10008C99C();
      v123 = v122;
      (*(v153 + 8))(v121, v154);
      sub_10000A7A8(v156, &qword_1000DD210, &qword_1000ABE08);
      *(v101 + v120) = v123;
      v124 = (v101 + v104[20]);
      *v124 = v111;
      v124[1] = v113;
      v125 = v101 + v104[21];
      strcpy(v125, "com.apple.tv");
      *(v125 + 13) = 0;
      *(v125 + 14) = -5120;
      v163[0] = sub_1000351E0();
      v126 = swift_allocObject();
      v127 = v115;
      v126[2] = v115;
      v126[3] = v106;
      v128 = v161;
      v126[4] = sub_100079304;
      v126[5] = v128;
      v129 = swift_allocObject();
      v129[2] = v127;
      v129[3] = v106;
      v129[4] = sub_100079304;
      v129[5] = v128;
      swift_bridgeObjectRetain_n();
      swift_retain_n();
      sub_100003998(&qword_1000DCC18, &qword_1000AB790);
      sub_10000A6FC(&qword_1000DCC20, &qword_1000DCC18, &qword_1000AB790);
      Publisher.sink(receiveCompletion:receiveValue:)();

      sub_100079224(v101, type metadata accessor for SubscriptionRegisterOperation);
      swift_beginAccess();
      AnyCancellable.store(in:)();
      swift_endAccess();

      v55 = v162;
    }

    else
    {

      if (qword_1000DBA20 != -1)
      {
        swift_once();
      }

      v130 = type metadata accessor for Logger();
      sub_100007DE8(v130, qword_1000E6D48);
      v131 = Logger.logObject.getter();
      v132 = static os_log_type_t.error.getter();
      v133 = os_log_type_enabled(v131, v132);
      v134 = v162;
      if (v133)
      {
        v135 = swift_slowAlloc();
        *v135 = 0;
        _os_log_impl(&_mh_execute_header, v131, v132, "Tempo /register missing event canonical id", v135, 2u);
      }

      sub_100029E04(1u, 0xD00000000000001ALL, 0x80000001000B2600);
      v136 = _convertErrorToNSError(_:)();
      v134[2](v134, v136);

      v55 = v134;
    }
  }

  else
  {
LABEL_7:
    v49 = v162;
    _Block_copy(v162);
    if (qword_1000DBA20 != -1)
    {
      swift_once();
    }

    v50 = type metadata accessor for Logger();
    sub_100007DE8(v50, qword_1000E6D48);
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&_mh_execute_header, v51, v52, "Tempo /register missing process bundle id", v53, 2u);
    }

    sub_100029E04(1u, 0xD000000000000019, 0x80000001000B2590);
    v54 = _convertErrorToNSError(_:)();
    v49[2](v49, v54);

    v55 = v49;
  }

LABEL_13:
  _Block_release(v55);
}

uint64_t sub_100070C50(uint64_t a1)
{
  v2 = type metadata accessor for SportingEventSubscriptionRequest.SubscriptionType();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 88))(a1, v2);
  if (v4 == enum case for SportingEventSubscriptionRequest.SubscriptionType.liveStatistics(_:))
  {
    return 0;
  }

  if (v4 == enum case for SportingEventSubscriptionRequest.SubscriptionType.playByPlay(_:))
  {
    return 1;
  }

  if (v4 == enum case for SportingEventSubscriptionRequest.SubscriptionType.tvClockScore(_:))
  {
    return 5;
  }

  (*(v3 + 8))(a1, v2);
  return 6;
}

uint64_t *sub_100070D50(uint64_t *result, uint64_t a2, unint64_t a3, void (*a4)(uint64_t))
{
  v4 = *result;
  if (*result)
  {
    v8 = *result;
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
      v16 = swift_slowAlloc();
      *v12 = 136315394;
      *(v12 + 4) = sub_1000170D4(a2, a3, &v16);
      *(v12 + 12) = 2080;
      swift_getErrorValue();
      v13 = Error.localizedDescription.getter();
      v15 = sub_1000170D4(v13, v14, &v16);

      *(v12 + 14) = v15;
      _os_log_impl(&_mh_execute_header, v10, v11, "Tempo /register failed for id=%s with error=%s", v12, 0x16u);
      swift_arrayDestroy();
    }

    swift_errorRetain();
    a4(v4);
  }

  return result;
}

uint64_t sub_100070F48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  type metadata accessor for SportsSubscriptionState();

  static SportsSubscriptionState.activeSubscriptionEventId.setter();
  return a4(0);
}

void sub_1000710A8(uint64_t a1, unint64_t a2, uint64_t a3, void (**a4)(void, void))
{
  v8 = swift_allocObject();
  *(v8 + 16) = a4;
  v9 = *(a3 + OBJC_IVAR____TtC7sportsd26SportsKitRequestXPCSession_bundleId + 8);
  if (!v9)
  {
    goto LABEL_10;
  }

  v10 = *(a3 + OBJC_IVAR____TtC7sportsd26SportsKitRequestXPCSession_bundleId);
  v11 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v11 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (v11)
  {
    _Block_copy(a4);
    v12 = qword_1000DBA10;

    if (v12 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100007DE8(v13, qword_1000E6D18);

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v26 = a1;
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v27[0] = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_1000170D4(v26, a2, v27);
      _os_log_impl(&_mh_execute_header, v14, v15, "SportsKitRequestXPCSession: Unregistering for event '%s'", v16, 0xCu);
      sub_100008A94(v17);

      a1 = v26;
    }

    sub_10001F338(v10, v9, a1, a2, v27);

    v18 = v28;
    v19 = v29;
    sub_100008614(v27, v28);
    (*(v19 + 8))(v18, v19);
    v20 = swift_allocObject();
    v20[2] = a1;
    v20[3] = a2;
    v20[4] = sub_100079304;
    v20[5] = v8;

    sub_100003998(&qword_1000DCC18, &qword_1000AB790);
    sub_10000A6FC(&qword_1000DCC20, &qword_1000DCC18, &qword_1000AB790);
    Publisher.sink(receiveCompletion:receiveValue:)();

    sub_100008A94(v27);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    _Block_release(a4);
  }

  else
  {
LABEL_10:
    _Block_copy(a4);
    if (qword_1000DBA20 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100007DE8(v21, qword_1000E6D48);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Tempo /unregister missing process bundle id", v24, 2u);
    }

    sub_100029E04(1u, 0xD000000000000019, 0x80000001000B2590);
    v25 = _convertErrorToNSError(_:)();
    (a4)[2](a4, v25);

    _Block_release(a4);
  }
}