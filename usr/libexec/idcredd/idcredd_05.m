uint64_t sub_100093F10(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100094008;

  return v7(a1);
}

uint64_t sub_100094008()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

id sub_100094100(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  v11 = OBJC_IVAR____TtC7idcredd23PresentmentSessionProxy_flow;
  *&v3[OBJC_IVAR____TtC7idcredd23PresentmentSessionProxy_flow] = 0;
  defaultLogger()();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v18[1] = a1;
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Creating PresentmentSessionProxy", v14, 2u);
  }

  (*(v7 + 8))(v10, v6);
  result = os_transaction_create();
  if (result)
  {
    *&v3[OBJC_IVAR____TtC7idcredd23PresentmentSessionProxy_jetsamTransaction] = result;
    swift_unknownObjectWeakAssign();
    *&v3[OBJC_IVAR____TtC7idcredd23PresentmentSessionProxy_partitions] = _swiftEmptyArrayStorage;
    v16 = *&v3[v11];
    *&v3[v11] = 0;

    *&v3[OBJC_IVAR____TtC7idcredd23PresentmentSessionProxy_dataContainer] = a2;
    v17 = type metadata accessor for PresentmentSessionProxy();
    v19.receiver = v3;
    v19.super_class = v17;
    return objc_msgSendSuper2(&v19, "init");
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000942F4(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v9 = a1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 67109120;
    *(v12 + 4) = [v9 processIdentifier];

    _os_log_impl(&_mh_execute_header, v10, v11, "Presentment listener connection received from %d", v12, 8u);
  }

  else
  {

    v10 = v9;
  }

  (*(v5 + 8))(v8, v4);
  sub_10005684C(0, &qword_100201DA8, NSXPCInterface_ptr);
  v13 = static NSXPCInterface.presentmentXPC.getter();
  [v9 setExportedInterface:v13];

  v14 = *(v2 + OBJC_IVAR____TtC7idcredd19PresentmentListener_dataContainer);
  objc_allocWithZone(type metadata accessor for PresentmentSessionProxy());
  v15 = v9;

  v16 = sub_100094100(v15, v14);

  [v15 setExportedObject:v16];
  v24 = sub_10008E5B4;
  v25 = 0;
  aBlock = _NSConcreteStackBlock;
  v21 = 1107296256;
  v22 = sub_10008E148;
  v23 = &unk_1001F7428;
  v17 = _Block_copy(&aBlock);
  [v15 setInvalidationHandler:v17];
  _Block_release(v17);
  v24 = sub_10008E5C0;
  v25 = 0;
  aBlock = _NSConcreteStackBlock;
  v21 = 1107296256;
  v22 = sub_10008E148;
  v23 = &unk_1001F7450;
  v18 = _Block_copy(&aBlock);
  [v15 setInterruptionHandler:v18];
  _Block_release(v18);
  [v15 resume];
  return 1;
}

uint64_t sub_100094614()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000105C8;

  return sub_100093410(v2, v3, v4);
}

uint64_t sub_1000946C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100094738(uint64_t a1)
{
  v2 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000947A0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000947D8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000105C8;

  return sub_100093F10(a1, v5);
}

uint64_t sub_100094890(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000104D4;

  return sub_100093F10(a1, v5);
}

uint64_t sub_100094948()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000105C8;

  return sub_100092A40(v2, v3, v4);
}

uint64_t sub_1000949FC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000105C8;

  return sub_1000921DC(v2, v3, v4);
}

uint64_t sub_100094AB0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000105C8;

  return sub_100091978(v2, v3, v4);
}

uint64_t sub_100094B64()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000104D4;

  return sub_100090F78(v2, v3, v4);
}

uint64_t sub_100094C1C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000105C8;

  return sub_100090930(v2, v3, v4);
}

uint64_t sub_100094CD0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000105C8;

  return sub_10008FCE0(v2, v3, v4);
}

uint64_t sub_100094D88()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100094DC8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000105C8;

  return sub_10008F340(v2, v3, v4);
}

uint64_t sub_100094E7C()
{
  v1[2] = v0;
  v2 = type metadata accessor for DIPError.Code();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();

  return _swift_task_switch(sub_100094FA4, 0, 0);
}

uint64_t sub_100094FA4()
{
  v1 = v0[9];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "PresentmentSessionProxy generateTransportKey", v4, 2u);
  }

  v5 = v0[9];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[2];

  v9 = *(v7 + 8);
  v0[10] = v9;
  v9(v5, v6);
  sub_1000934EC();
  v18 = *(v0[2] + OBJC_IVAR____TtC7idcredd23PresentmentSessionProxy_flow);
  v0[11] = v18;
  if (v18)
  {

    v19 = swift_task_alloc();
    v0[12] = v19;
    *v19 = v0;
    v19[1] = sub_100095324;

    return sub_10009EA7C(0, 0xF000000000000000);
  }

  else
  {
    (*(v0[4] + 104))(v0[5], enum case for DIPError.Code.badLogic(_:), v0[3]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v11 = v0[9];
    v10 = v0[10];
    v13 = v0[7];
    v12 = v0[8];
    v15 = v0[5];
    v14 = v0[6];
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v10(v12, v14);
    sub_10005684C(0, &qword_100201BD0, NSError_ptr);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static NSError.mapFromError(_:domain:mapper:)();

    swift_willThrow();

    v16 = v0[1];

    return v16();
  }
}

uint64_t sub_100095324(uint64_t a1, uint64_t a2)
{
  v6 = *(*v3 + 96);
  v7 = *v3;
  v7[13] = v2;

  if (v2)
  {

    return _swift_task_switch(sub_1000954AC, 0, 0);
  }

  else
  {
    v8 = v7[11];
    v10 = v7[8];
    v9 = v7[9];
    v11 = v7[5];

    v12 = v7[1];

    return v12(a1, a2);
  }
}

uint64_t sub_1000954AC()
{
  v1 = v0[11];

  v2 = v0[13];
  v4 = v0[9];
  v3 = v0[10];
  v6 = v0[7];
  v5 = v0[8];
  v7 = v0[5];
  v8 = v0[6];
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v3(v5, v8);
  sub_10005684C(0, &qword_100201BD0, NSError_ptr);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static NSError.mapFromError(_:domain:mapper:)();

  swift_willThrow();

  v9 = v0[1];

  return v9();
}

uint64_t sub_1000955F8()
{
  _Block_release(*(v0 + 40));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100095648()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1000105C8;

  return sub_10008EF08(v2, v3, v4, v5, v6);
}

uint64_t sub_100095710(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000957A0(uint64_t *a1)
{
  v2 = type metadata accessor for ISO18013IssuerSignedItem();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  v8 = a1[1];
  sub_100004E70(&qword_1002004D8, &qword_1001ACBF0);
  CBOREncodedCBOR.value.getter();
  v9 = ISO18013IssuerSignedItem.elementIdentifier.getter();
  v11 = v10;
  (*(v3 + 8))(v6, v2);
  if (v7 == v9 && v8 == v11)
  {
    v13 = 1;
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v13 & 1;
}

uint64_t sub_1000958E4(id *a1)
{
  v2 = type metadata accessor for ISO18013IssuerSignedItem();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*a1 elementIdentifier];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  sub_100004E70(&qword_1002004D8, &qword_1001ACBF0);
  CBOREncodedCBOR.value.getter();
  v11 = ISO18013IssuerSignedItem.elementIdentifier.getter();
  v13 = v12;
  (*(v3 + 8))(v6, v2);
  if (v8 == v11 && v10 == v13)
  {
    v15 = 1;
  }

  else
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v15 & 1;
}

void sub_100095A58(void **a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v60 = a3;
  v56 = a2;
  v4 = type metadata accessor for CredentialPresentmentElementRequestInfo.IntentToStore();
  v58 = *(v4 - 8);
  v59 = v4;
  v5 = *(v58 + 64);
  v6 = __chkstk_darwin(v4);
  v57 = (&v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v6);
  v55 = &v52 - v8;
  v9 = type metadata accessor for Logger();
  v53 = *(v9 - 8);
  v54 = v9;
  v10 = *(v53 + 64);
  __chkstk_darwin(v9);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ISO18013IssuerSignedItem();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  v19 = [v18 elementIdentifier];
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  sub_100004E70(&qword_1002004D8, &qword_1001ACBF0);
  CBOREncodedCBOR.value.getter();
  v23 = ISO18013IssuerSignedItem.elementIdentifier.getter();
  v25 = v24;
  (*(v14 + 8))(v17, v13);
  if (v20 == v23 && v22 == v25)
  {
  }

  else
  {
    v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v27 & 1) == 0)
    {
      *v60 = v18;
      v28 = v18;
      return;
    }
  }

  defaultLogger()();
  v29 = v18;
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v61 = v33;
    *v32 = 136315138;
    v34 = [v29 elementIdentifier];
    v35 = v29;
    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;

    v39 = v36;
    v29 = v35;
    v40 = sub_10010150C(v39, v38, &v61);

    *(v32 + 4) = v40;
    _os_log_impl(&_mh_execute_header, v30, v31, "Updating intent to retain for %s to true because it is the destination of a fallback", v32, 0xCu);
    sub_100005090(v33);
  }

  (*(v53 + 8))(v12, v54);
  v41 = v59;
  v42 = v57;
  v43 = v55;
  CredentialPresentmentElementRequestInfo.intentToStore.getter();
  v44 = v58;
  (*(v58 + 32))(v42, v43, v41);
  v45 = (*(v44 + 88))(v42, v41);
  v46 = v45;
  v47 = enum case for CredentialPresentmentElementRequestInfo.IntentToStore.mayStore(_:);
  if (v45 == enum case for CredentialPresentmentElementRequestInfo.IntentToStore.mayStore(_:))
  {
    (*(v44 + 96))(v42, v41);
    v48 = *v42;
    v49 = 1;
  }

  else if (v45 == enum case for CredentialPresentmentElementRequestInfo.IntentToStore.willNotStore(_:))
  {
    v48 = 0;
    v49 = 2;
  }

  else if (v45 == enum case for CredentialPresentmentElementRequestInfo.IntentToStore.displayOnly(_:))
  {
    v48 = 0;
    v49 = 3;
  }

  else
  {
    (*(v44 + 8))(v42, v41);
    v49 = 0;
    v48 = 0;
  }

  v50 = [v29 elementIdentifier];
  if (!v50)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v50 = String._bridgeToObjectiveC()();

    if (v46 == v47)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (v46 != v47)
  {
LABEL_19:
    v48 = NSNotFound.getter();
  }

LABEL_20:
  v51 = [objc_allocWithZone(DCPresentmentRequestedElement) initWithElementIdentifier:v50 intentToRetain:v49 retentionPeriod:v48];

  *v60 = v51;
}

uint64_t sub_100095FC8(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(BOOL, unint64_t, uint64_t), uint64_t (*a6)(void))
{
  v9 = v6;
  v26 = a1;
  v27 = a2;
  v25 = a4(0);
  v11 = *(v25 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v25);
  v14 = &v22 - v13;
  v15 = *(a3 + 16);
  v16 = _swiftEmptyArrayStorage;
  if (!v15)
  {
    return v16;
  }

  v28 = _swiftEmptyArrayStorage;
  v22 = a5;
  a5(0, v15, 0);
  v16 = v28;
  v17 = *(a6(0) - 8);
  v18 = a3 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
  v24 = v11 + 32;
  v23 = *(v17 + 72);
  while (1)
  {
    v26(v18);
    if (v9)
    {
      break;
    }

    v9 = 0;
    v28 = v16;
    v20 = v16[2];
    v19 = v16[3];
    if (v20 >= v19 >> 1)
    {
      v22(v19 > 1, v20 + 1, 1);
      v16 = v28;
    }

    v16[2] = v20 + 1;
    (*(v11 + 32))(v16 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v20, v14, v25);
    v18 += v23;
    if (!--v15)
    {
      return v16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000961E8(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = _swiftEmptyArrayStorage;
  if (!v5)
  {
    return v6;
  }

  v16 = _swiftEmptyArrayStorage;
  sub_10010A8D8(0, v5, 0);
  v6 = _swiftEmptyArrayStorage;
  for (i = (a3 + 32); ; ++i)
  {
    v14 = *i;

    a1(&v15, &v14);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v10 = v15;
    v16 = v6;
    v12 = v6[2];
    v11 = v6[3];
    if (v12 >= v11 >> 1)
    {
      sub_10010A8D8((v11 > 1), v12 + 1, 1);
      v6 = v16;
    }

    v6[2] = v12 + 1;
    v6[v12 + 4] = v10;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100096314(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v19 = a1;
  v20 = a2;
  v18 = type metadata accessor for DocumentRequest();
  v6 = *(v18 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v18);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  v11 = _swiftEmptyArrayStorage;
  if (!v10)
  {
    return v11;
  }

  v22 = _swiftEmptyArrayStorage;
  sub_10010A918(0, v10, 0);
  v11 = v22;
  v12 = (a3 + 32);
  v17[1] = v6 + 32;
  while (1)
  {
    v13 = *v12++;
    v21 = v13;
    v19(&v21);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v22 = v11;
    v15 = v11[2];
    v14 = v11[3];
    if (v15 >= v14 >> 1)
    {
      sub_10010A918(v14 > 1, v15 + 1, 1);
      v11 = v22;
    }

    v11[2] = v15 + 1;
    (*(v6 + 32))(v11 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15, v9, v18);
    if (!--v10)
    {
      return v11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000964C4(int a1, int a2)
{
  v77 = a2;
  v76 = a1;
  v3 = type metadata accessor for DIPError.Code();
  v80 = *(v3 - 8);
  v81 = v3;
  v4 = *(v80 + 64);
  __chkstk_darwin(v3);
  v82 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for ISO18013ReaderRequest.DeviceRequestInfo();
  v71 = *(v72 - 8);
  v6 = *(v71 + 64);
  __chkstk_darwin(v72);
  v70 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100004E70(&qword_1002014E8, &qword_1001AB870);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v73 = &v69 - v10;
  v75 = sub_100004E70(&qword_1002014F0, &qword_1001AB878);
  v74 = *(v75 - 8);
  v11 = *(v74 + 64);
  __chkstk_darwin(v75);
  v69 = &v69 - v12;
  v96 = sub_100004E70(&qword_100201498, &qword_1001AB828);
  v13 = *(*(v96 - 8) + 64);
  v14 = __chkstk_darwin(v96);
  v16 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v69 - v17;
  v19 = sub_100004E70(&qword_1002014A0, &qword_1001AB830);
  v20 = *(*(v19 - 8) + 64);
  v21 = __chkstk_darwin(v19);
  v88 = &v69 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v99 = &v69 - v23;
  v24 = type metadata accessor for ISO18013Version();
  v25 = *(v24 - 8);
  v26 = v25[8];
  v27 = __chkstk_darwin(v24);
  v29 = &v69 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v27);
  v32 = &v69 - v31;
  __chkstk_darwin(v30);
  v95 = &v69 - v33;
  ISO18013ReaderRequest.version.getter();
  static ISO18013ReaderRequest.supportedVersion.getter();
  static ISO18013ReaderRequest.supportedVersionSecondEdition.getter();
  v94 = sub_100099774(&qword_1002014C0, &type metadata accessor for ISO18013Version);
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if ((result & 1) == 0)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    return result;
  }

  v90 = v2;
  v35 = v25[4];
  v92 = v32;
  v35(v18, v32, v24);
  v36 = v96;
  v37 = &v18[*(v96 + 48)];
  v87 = v29;
  v35(v37, v29, v24);
  sub_100096FA0(v18, v16);
  v91 = *(v36 + 48);
  v93 = v19;
  v38 = v99;
  v35(v99, v16, v24);
  v39 = v25[1];
  v39(&v91[v16], v24);
  v86 = v18;
  sub_100097010(v18, v16);
  v40 = *(v36 + 48);
  v79 = *(v93 + 36);
  v83 = v25 + 4;
  v84 = v35;
  v35((v38 + v79), &v16[v40], v24);
  v85 = v16;
  v91 = (v25 + 1);
  v89 = v39;
  v39(v16, v24);
  v41 = v95;
  if (dispatch thunk of static Comparable.<= infix(_:_:)())
  {
    v42 = v99;
    v43 = dispatch thunk of static Comparable.< infix(_:_:)();
    sub_10000A0D4(v42, &qword_1002014A0, &qword_1001AB830);
    if (v43)
    {
      v89(v41, v24);
      v44 = v76 & 1;
      v45 = v77;
      return sub_100097080(v45, v44);
    }
  }

  else
  {
    sub_10000A0D4(v99, &qword_1002014A0, &qword_1001AB830);
  }

  v46 = v92;
  static ISO18013ReaderRequest.supportedVersionSecondEdition.getter();
  v47 = v87;
  static ISO18013ReaderRequest.nextMajorUnsupportedVersion.getter();
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if ((result & 1) == 0)
  {
    goto LABEL_19;
  }

  v48 = v86;
  v49 = v84;
  v84(v86, v46, v24);
  v50 = v96;
  v49(v48 + *(v96 + 48), v47, v24);
  v51 = v85;
  sub_100096FA0(v48, v85);
  v52 = *(v50 + 48);
  v53 = v88;
  v49(v88, v51, v24);
  v54 = (v51 + v52);
  v55 = v89;
  v89(v54, v24);
  v56 = v48;
  v57 = v95;
  sub_100097010(v56, v51);
  v49(v53 + *(v93 + 36), (v51 + *(v50 + 48)), v24);
  v55(v51, v24);
  if ((dispatch thunk of static Comparable.<= infix(_:_:)() & 1) == 0)
  {
    sub_10000A0D4(v53, &qword_1002014A0, &qword_1001AB830);
    v55(v57, v24);
    goto LABEL_13;
  }

  v58 = dispatch thunk of static Comparable.< infix(_:_:)();
  sub_10000A0D4(v53, &qword_1002014A0, &qword_1001AB830);
  v55(v57, v24);
  if ((v58 & 1) == 0)
  {
LABEL_13:
    v97 = 0;
    v98 = 0xE000000000000000;
    _StringGuts.grow(_:)(37);

    v97 = 0xD000000000000023;
    v98 = 0x80000001001B3C80;
    v62 = v92;
    ISO18013ReaderRequest.version.getter();
    sub_100099774(&qword_1002014C8, &type metadata accessor for ISO18013Version);
    v63._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v63);

    v55(v62, v24);
    (*(v80 + 104))(v82, enum case for DIPError.Code.idcsUnsupportedReaderRequestVersion(_:), v81);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100099774(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    return swift_willThrow();
  }

  v59 = v73;
  ISO18013ReaderRequest.deviceRequestInfo.getter();
  v60 = v74;
  v61 = v75;
  if ((*(v74 + 48))(v59, 1, v75) == 1)
  {
    sub_10000A0D4(v59, &qword_1002014E8, &qword_1001AB870);
    v44 = v76 & 1;
    v45 = v77;
    return sub_100097080(v45, v44);
  }

  v64 = v69;
  (*(v60 + 32))(v69, v59, v61);
  v65 = v70;
  CBOREncodedCBOR.value.getter();
  v66 = v78;
  v67 = sub_1000973D0(v65, v77);
  if (v66)
  {
    (*(v71 + 8))(v65, v72);
    return (*(v60 + 8))(v64, v61);
  }

  else
  {
    v68 = v67;
    (*(v71 + 8))(v65, v72);
    (*(v60 + 8))(v64, v61);
    return v68;
  }
}

uint64_t sub_100096FA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004E70(&qword_100201498, &qword_1001AB828);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100097010(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004E70(&qword_100201498, &qword_1001AB828);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100097080(char a1, char a2)
{
  v36 = type metadata accessor for DocumentRequest();
  v5 = *(v36 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v36);
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = ISO18013ReaderRequest.docRequests.getter();
  v38 = v2;
  v39 = a1;
  v10 = sub_100095FC8(sub_100099940, v37, v9, &type metadata accessor for DocumentRequest, sub_10010A918, &type metadata accessor for ISO18013ReaderRequest.DocRequest);

  v11 = &off_1001AA000;
  if (a2)
  {
    sub_100004E70(&qword_100201EC0, &qword_1001ACC48);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1001AA160;
    *(v12 + 32) = v10;
  }

  else
  {
    v13 = *(v10 + 16);
    if (v13)
    {
      v40 = _swiftEmptyArrayStorage;
      sub_10010A8D8(0, v13, 0);
      v15 = *(v5 + 16);
      v14 = v5 + 16;
      v16 = v40;
      v17 = *(v14 + 64);
      v33 = v17;
      v34 = v15;
      v18 = (v17 + 32) & ~v17;
      v31[1] = v10;
      v19 = v10 + v18;
      v20 = *(v14 + 56);
      v35 = v14;
      v21 = (v14 + 16);
      v32 = xmmword_1001AA160;
      do
      {
        v22 = v36;
        v34(v8, v19, v36);
        sub_100004E70(&qword_100201EB0, &qword_1001ACC38);
        v23 = swift_allocObject();
        *(v23 + 16) = v32;
        (*v21)(v23 + v18, v8, v22);
        v40 = v16;
        v25 = v16[2];
        v24 = v16[3];
        if (v25 >= v24 >> 1)
        {
          sub_10010A8D8((v24 > 1), v25 + 1, 1);
          v16 = v40;
        }

        v16[2] = v25 + 1;
        v16[v25 + 4] = v23;
        v19 += v20;
        --v13;
      }

      while (v13);

      v11 = &off_1001AA000;
    }

    else
    {
    }
  }

  sub_100004E70(&qword_100201EB8, &qword_1001ACC40);
  v26 = *(type metadata accessor for CredentialPresentmentRequest.UseCase() - 8);
  v27 = *(v26 + 72);
  v28 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = *(v11 + 22);
  CredentialPresentmentRequest.UseCase.init(documentRequests:isMandatory:)();
  return v29;
}

uint64_t sub_1000973D0(uint64_t a1, int a2)
{
  v52 = a2;
  v55 = type metadata accessor for DIPError.Code();
  v3 = *(v55 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v55);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ISO18013ReaderRequest.UseCase();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v51 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v38 - v12;
  v14 = ISO18013ReaderRequest.DeviceRequestInfo.useCases.getter();
  if (!v14)
  {
    goto LABEL_21;
  }

  v56 = v14;
  v54 = v6;
  sub_100004E70(&qword_100201E48, &qword_1001ACBF8);
  sub_1000464D0(&qword_100201E50, &qword_100201E48, &qword_1001ACBF8);
  Collection.nilIfEmpty.getter();
  v6 = v54;

  v16 = v58;
  if (!v58)
  {
LABEL_21:
    (*(v3 + 104))(v6, enum case for DIPError.Code.idcsInvalidReaderRequest(_:), v55);
    v33 = sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100099774(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    v35 = 0x80000001001B7520;
    v36 = 61;
    v34 = 0xD000000000000033;
LABEL_23:
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    return v33;
  }

  v17 = *(v58 + 16);
  v48 = v2;
  v49 = v17;
  if (v17)
  {
    v18 = 0;
    v50 = (v8 + 8);
    v47 = v8 + 16;
    while (1)
    {
      if (v18 >= *(v16 + 16))
      {
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
        return result;
      }

      v19 = v16 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
      v45 = *(v8 + 72);
      v46 = v19;
      v20 = *(v8 + 16);
      v20(v13, v19 + v45 * v18, v7);
      v21 = *(ISO18013ReaderRequest.UseCase.documentSets.getter() + 16);

      if (!v21)
      {
        break;
      }

      ++v18;
      v22 = ISO18013ReaderRequest.UseCase.documentSets.getter();
      v23 = *(v22 + 16);
      v24 = 32;
      while (v23)
      {
        v25 = *(*(v22 + v24) + 16);
        v24 += 8;
        --v23;
        if (!v25)
        {
          (*v50)(v13, v7);

          goto LABEL_22;
        }
      }

      v26 = *v50;
      result = (*v50)(v13, v7);
      if (v18 == v49)
      {
        v27 = 0;
        v42 = v26;
        while (v27 < *(v16 + 16))
        {
          v20(v51, v46 + v45 * v27, v7);
          v39 = v27 + 1;
          v28 = ISO18013ReaderRequest.UseCase.documentSets.getter();
          v40 = *(ISO18013ReaderRequest.docRequests.getter() + 16);

          v29 = 0;
          v43 = v28;
          v41 = *(v28 + 16);
          while (1)
          {
            v30 = v42;
            if (v41 == v29)
            {
              break;
            }

            if (v29 >= *(v43 + 16))
            {
              goto LABEL_27;
            }

            v31 = *(v43 + 8 * v29 + 32);
            v44 = v29 + 1;
            v56 = 0;
            v57 = v40;
            v58 = v31;
            sub_100004E70(&qword_100201E58, &qword_1001ACC00);
            sub_100004E70(&qword_100201E60, &qword_1001ACC08);
            sub_1000997BC();
            sub_1000464D0(&qword_100201E78, &qword_100201E60, &qword_1001ACC08);
            result = Collection<>.contains<A>(_:)();
            v29 = v44;
            v32 = v54;
            if ((result & 1) == 0)
            {

              v42(v51, v7);
              (*(v3 + 104))(v32, enum case for DIPError.Code.idcsInvalidReaderRequest(_:), v55);
              v33 = sub_10002688C(_swiftEmptyArrayStorage);
              type metadata accessor for DIPError();
              sub_100099774(&qword_100200200, &type metadata accessor for DIPError);
              swift_allocError();
              v35 = 0x80000001001B7520;
              v36 = 74;
              v34 = 0xD000000000000033;
              goto LABEL_23;
            }
          }

          result = v30(v51, v7);
          v27 = v39;
          if (v39 == v49)
          {
            goto LABEL_20;
          }
        }

        goto LABEL_28;
      }
    }

    (*v50)(v13, v7);
LABEL_22:

    (*(v3 + 104))(v6, enum case for DIPError.Code.idcsInvalidReaderRequest(_:), v55);
    v33 = sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100099774(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    v35 = 0x80000001001B7520;
    v36 = 66;
    v34 = 0xD000000000000033;
    goto LABEL_23;
  }

LABEL_20:
  __chkstk_darwin(result);
  v36 = v53;
  v37 = v52;
  v33 = sub_100095FC8(sub_10009989C, &v34, v16, &type metadata accessor for CredentialPresentmentRequest.UseCase, sub_10010A95C, &type metadata accessor for ISO18013ReaderRequest.UseCase);

  return v33;
}

uint64_t sub_100097BC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  LODWORD(v120) = a3;
  v118 = a2;
  v110 = a1;
  v91[4] = a4;
  v114 = type metadata accessor for CredentialPresentmentElementRequestInfo.IntentToStore();
  v119 = *(v114 - 8);
  v4 = *(v119 + 64);
  v5 = __chkstk_darwin(v114);
  v107 = (v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v106 = (v91 - v7);
  v113 = type metadata accessor for CredentialPresentmentElementRequestInfo();
  v115 = *(v113 - 8);
  v8 = *(v115 + 64);
  v9 = __chkstk_darwin(v113);
  v112 = v91 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v111 = v91 - v11;
  v12 = sub_100004E70(&qword_100201E80, &qword_1001ACF40);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = v91 - v14;
  v116 = type metadata accessor for ISO18013ReaderRequest.ItemsRequest();
  v16 = *(v116 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v116);
  v117 = v91 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = v91 - v20;
  v22 = sub_100004E70(&qword_1002014F8, &qword_1001AB880);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = __chkstk_darwin(v22);
  v27 = v91 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v29 = v91 - v28;
  ISO18013ReaderRequest.DocRequest.itemsRequest.getter();
  CBOREncodedCBOR.value.getter();
  v30 = *(v23 + 8);
  v30(v29, v22);
  v91[2] = ISO18013ReaderRequest.ItemsRequest.docType.getter();
  v91[1] = v31;
  v32 = *(v16 + 8);
  v33 = v21;
  v34 = v116;
  v32(v33, v116);
  v35 = type metadata accessor for Locale.Region();
  v36 = *(*(v35 - 8) + 56);
  v91[3] = v15;
  v36(v15, 1, 1, v35);
  ISO18013ReaderRequest.DocRequest.itemsRequest.getter();
  v37 = v117;
  CBOREncodedCBOR.value.getter();
  v30(v27, v22);
  v38 = ISO18013ReaderRequest.ItemsRequest.namespaces.getter();
  v32(v37, v34);
  v39 = ISO18013ReaderRequest.interpretWillNotRetainIntentAsDisplayOnly.getter();
  sub_100004E70(&qword_100201EA0, &qword_1001ACC28);
  result = static _DictionaryStorage.copy(original:)();
  v41 = 0;
  v42 = *(v38 + 64);
  v93 = v38 + 64;
  v96 = v38;
  v43 = 1 << *(v38 + 32);
  if (v43 < 64)
  {
    v44 = ~(-1 << v43);
  }

  else
  {
    v44 = -1;
  }

  v45 = v44 & v42;
  v92 = (v43 + 63) >> 6;
  LODWORD(v110) = (v120 == 0) & v39;
  v104 = enum case for CredentialPresentmentElementRequestInfo.IntentToStore.willNotStore(_:);
  v109 = (v119 + 104);
  v103 = enum case for CredentialPresentmentElementRequestInfo.IntentToStore.mayStore(_:);
  v102 = enum case for CredentialPresentmentElementRequestInfo.IntentToStore.displayOnly(_:);
  v108 = v115 + 32;
  v94 = result + 64;
  v95 = result;
  v46 = v111;
  if (v45)
  {
    while (1)
    {
      v47 = __clz(__rbit64(v45));
      v97 = (v45 - 1) & v45;
LABEL_11:
      v98 = v41;
      v50 = v47 | (v41 << 6);
      v51 = *(v96 + 56);
      v52 = (*(v96 + 48) + 16 * v50);
      v53 = v52[1];
      v100 = *v52;
      v101 = v50;
      v54 = *(v51 + 8 * v50);
      sub_100004E70(&qword_100201EA8, &qword_1001ACC30);
      v55 = static _DictionaryStorage.copy(original:)();
      v56 = v55;
      v57 = *(v54 + 64);
      v105 = v54 + 64;
      v58 = 1 << *(v54 + 32);
      v59 = v58 < 64 ? ~(-1 << v58) : -1;
      v60 = v59 & v57;
      v61 = (v58 + 63) >> 6;
      v116 = v55 + 64;
      v99 = v53;

      v118 = v54;

      v62 = 0;
      v117 = v56;
      if (v60)
      {
        break;
      }

LABEL_16:
      v65 = v62;
      while (1)
      {
        v62 = v65 + 1;
        if (__OFADD__(v65, 1))
        {
          __break(1u);
          goto LABEL_36;
        }

        if (v62 >= v61)
        {
          break;
        }

        v66 = *(v105 + 8 * v62);
        ++v65;
        if (v66)
        {
          v63 = __clz(__rbit64(v66));
          v64 = (v66 - 1) & v66;
          goto LABEL_21;
        }
      }

      v85 = v101;
      *(v94 + ((v101 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v101;
      v86 = v95;
      v87 = (*(v95 + 48) + 16 * v85);
      v88 = v99;
      *v87 = v100;
      v87[1] = v88;
      *(*(v86 + 56) + 8 * v85) = v56;
      v89 = *(v86 + 16);
      v83 = __OFADD__(v89, 1);
      v90 = v89 + 1;
      if (v83)
      {
        goto LABEL_38;
      }

      *(v86 + 16) = v90;
      v41 = v98;
      v45 = v97;
      if (!v97)
      {
        goto LABEL_6;
      }
    }

    while (1)
    {
      v63 = __clz(__rbit64(v60));
      v64 = (v60 - 1) & v60;
LABEL_21:
      v67 = v63 | (v62 << 6);
      v68 = (*(v118 + 48) + 16 * v67);
      v69 = *v68;
      v70 = v68[1];
      v71 = *(*(v118 + 56) + v67);
      v119 = v64;
      v120 = v69;
      if (v110)
      {
        v72 = v102;
        if (v71)
        {
          *v106 = 0;
          v72 = v103;
        }

        (*v109)(v106, v72, v114);
      }

      else
      {
        v73 = v104;
        if (v71)
        {
          *v107 = 0;
          v73 = v103;
        }

        (*v109)(v107, v73, v114);
      }

      v74 = v112;
      CredentialPresentmentElementRequestInfo.init(intentToStore:)();
      v75 = v115;
      v76 = *(v115 + 32);
      v77 = v74;
      v78 = v113;
      v76(v46, v77, v113);
      *(v116 + ((v67 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v67;
      v79 = v117;
      v80 = (*(v117 + 6) + 16 * v67);
      *v80 = v120;
      v80[1] = v70;
      v81 = v78;
      v56 = v79;
      result = (v76)(*(v79 + 7) + *(v75 + 72) * v67, v46, v81);
      v82 = *(v56 + 2);
      v83 = __OFADD__(v82, 1);
      v84 = v82 + 1;
      if (v83)
      {
        break;
      }

      *(v56 + 2) = v84;
      v60 = v119;
      if (!v119)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
LABEL_6:
    v48 = v41;
    while (1)
    {
      v41 = v48 + 1;
      if (__OFADD__(v48, 1))
      {
        break;
      }

      if (v41 >= v92)
      {

        sub_100099964(_swiftEmptyArrayStorage);
        return DocumentRequest.init(alternativeElements:docType:issuerIdentifiers:regionCode:namespaces:)();
      }

      v49 = *(v93 + 8 * v41);
      ++v48;
      if (v49)
      {
        v47 = __clz(__rbit64(v49));
        v97 = (v49 - 1) & v49;
        goto LABEL_11;
      }
    }

LABEL_36:
    __break(1u);
  }

  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_100098440(uint64_t a1, uint64_t a2, char a3)
{
  v5 = ISO18013ReaderRequest.UseCase.documentSets.getter();
  v7[2] = a2;
  v8 = a3;
  sub_1000961E8(sub_1000998C0, v7, v5);

  ISO18013ReaderRequest.UseCase.mandatory.getter();
  return CredentialPresentmentRequest.UseCase.init(documentRequests:isMandatory:)();
}

uint64_t sub_1000984E4@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v26 = a3;
  v24 = a4;
  v25 = type metadata accessor for ISO18013ReaderRequest.ItemsRequest();
  v23 = *(v25 - 8);
  v6 = *(v23 + 64);
  __chkstk_darwin(v25);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100004E70(&qword_1002014F8, &qword_1001AB880);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v22 - v12;
  v14 = type metadata accessor for ISO18013ReaderRequest.DocRequest();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a1;
  v22[1] = a2;
  result = ISO18013ReaderRequest.docRequests.getter();
  if ((v19 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v19 < *(result + 16))
  {
    (*(v15 + 16))(v18, result + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v19, v14);

    ISO18013ReaderRequest.DocRequest.itemsRequest.getter();
    (*(v15 + 8))(v18, v14);
    CBOREncodedCBOR.value.getter();
    (*(v10 + 8))(v13, v9);
    v21 = ISO18013ReaderRequest.interpretWillNotRetainIntentAsDisplayOnly.getter();
    sub_100098798(v21 & 1, v26, v24);
    return (*(v23 + 8))(v8, v25);
  }

  __break(1u);
  return result;
}

uint64_t sub_100098798@<X0>(int a1@<W0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v143 = a2;
  v144 = a1;
  v139[1] = a3;
  v163 = type metadata accessor for CredentialPresentmentElementRequestInfo.IntentToStore();
  v142 = *(v163 - 8);
  v4 = *(v142 + 64);
  v5 = __chkstk_darwin(v163);
  v159 = (v139 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v158 = (v139 - v7);
  v162 = type metadata accessor for CredentialPresentmentElementRequestInfo();
  v164 = *(v162 - 8);
  v8 = *(v164 + 64);
  v9 = __chkstk_darwin(v162);
  v161 = v139 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v160 = v139 - v11;
  v12 = sub_100004E70(&qword_100201E80, &qword_1001ACF40);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v145 = v139 - v14;
  v187 = type metadata accessor for ISO18013ReaderRequest.ElementReference();
  v15 = *(v187 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v187);
  v184 = v139 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = type metadata accessor for DocumentRequest.DataElement();
  v18 = *(v186 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v186);
  v174 = v139 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_100004E70(&qword_100201E88, &qword_1001ACC10);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v140 = v139 - v23;
  v141 = v3;
  v24 = ISO18013ReaderRequest.ItemsRequest.alternativeElements.getter();
  sub_100004E70(&qword_100201E90, &qword_1001ACC18);
  result = static _DictionaryStorage.copy(original:)();
  v149 = result;
  v26 = 0;
  v27 = *(v24 + 64);
  v147 = v24 + 64;
  v150 = v24;
  v28 = 1 << *(v24 + 32);
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  else
  {
    v29 = -1;
  }

  v30 = v29 & v27;
  v146 = (v28 + 63) >> 6;
  v173 = v15;
  v182 = (v15 + 8);
  v183 = v15 + 16;
  v185 = v18;
  v181 = (v18 + 32);
  v148 = result + 64;
  if (!v30)
  {
LABEL_6:
    v32 = v26;
    while (1)
    {
      v26 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        goto LABEL_83;
      }

      if (v26 >= v146)
      {
        break;
      }

      v33 = *(v147 + 8 * v26);
      ++v32;
      if (v33)
      {
        v31 = __clz(__rbit64(v33));
        v151 = (v33 - 1) & v33;
        goto LABEL_11;
      }
    }

    v165 = ISO18013ReaderRequest.ItemsRequest.docType.getter();
    v157 = v83;
    v84 = v140;
    ISO18013ReaderRequest.ItemsRequest.requestInfo.getter();
    v85 = type metadata accessor for ISO18013ReaderRequest.DocRequestInfo();
    v86 = *(v85 - 8);
    if ((*(v86 + 48))(v84, 1, v85) == 1)
    {
      sub_10000A0D4(v84, &qword_100201E88, &qword_1001ACC10);
      v87 = v144;
      v88 = v143;
      v89 = v142;
    }

    else
    {
      v90 = ISO18013ReaderRequest.DocRequestInfo.issuerIdentifiers.getter();
      (*(v86 + 8))(v84, v85);
      v87 = v144;
      v88 = v143;
      v89 = v142;
      if (v90)
      {
LABEL_46:
        v156 = sub_10010D848(v90);

        v91 = type metadata accessor for Locale.Region();
        (*(*(v91 - 8) + 56))(v145, 1, 1, v91);
        v92 = ISO18013ReaderRequest.ItemsRequest.namespaces.getter();
        sub_100004E70(&qword_100201EA0, &qword_1001ACC28);
        result = static _DictionaryStorage.copy(original:)();
        v93 = 0;
        v94 = *(v92 + 64);
        v166 = v92 + 64;
        v170 = v92;
        v95 = 1 << *(v92 + 32);
        if (v95 < 64)
        {
          v96 = ~(-1 << v95);
        }

        else
        {
          v96 = -1;
        }

        v97 = v96 & v94;
        v98 = (v95 + 63) >> 6;
        LODWORD(v182) = (v88 == 0) & v87;
        LODWORD(v178) = enum case for CredentialPresentmentElementRequestInfo.IntentToStore.willNotStore(_:);
        v181 = (v89 + 104);
        LODWORD(v176) = enum case for CredentialPresentmentElementRequestInfo.IntentToStore.mayStore(_:);
        LODWORD(v177) = enum case for CredentialPresentmentElementRequestInfo.IntentToStore.displayOnly(_:);
        v180 = (v164 + 32);
        v168 = result + 64;
        v169 = result;
        v167 = v98;
        if (!v97)
        {
LABEL_51:
          v100 = v93;
          while (1)
          {
            v93 = v100 + 1;
            if (__OFADD__(v100, 1))
            {
              goto LABEL_84;
            }

            if (v93 >= v98)
            {

              return DocumentRequest.init(alternativeElements:docType:issuerIdentifiers:regionCode:namespaces:)();
            }

            v101 = *(v166 + 8 * v93);
            ++v100;
            if (v101)
            {
              v99 = __clz(__rbit64(v101));
              v171 = (v101 - 1) & v101;
              goto LABEL_56;
            }
          }
        }

LABEL_50:
        v99 = __clz(__rbit64(v97));
        v171 = (v97 - 1) & v97;
LABEL_56:
        v172 = v93;
        v102 = v99 | (v93 << 6);
        v103 = *(v170 + 56);
        v104 = (*(v170 + 48) + 16 * v102);
        v105 = v104[1];
        v174 = *v104;
        v175 = v102;
        v106 = *(v103 + 8 * v102);
        sub_100004E70(&qword_100201EA8, &qword_1001ACC30);
        v107 = static _DictionaryStorage.copy(original:)();
        v108 = *(v106 + 8);
        v179 = v106 + 64;
        v109 = 1 << v106[32];
        if (v109 < 64)
        {
          v110 = ~(-1 << v109);
        }

        else
        {
          v110 = -1;
        }

        v111 = v110 & v108;
        v112 = (v109 + 63) >> 6;
        v187 = v107;
        v183 = v107 + 64;
        v173 = v105;

        v184 = v106;

        v113 = 0;
        if (!v111)
        {
LABEL_61:
          v115 = v113;
          while (1)
          {
            v113 = v115 + 1;
            if (__OFADD__(v115, 1))
            {
              goto LABEL_82;
            }

            if (v113 >= v112)
            {

              v133 = v175;
              *(v168 + ((v175 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v175;
              v134 = v169;
              v135 = (*(v169 + 48) + 16 * v133);
              v136 = v173;
              *v135 = v174;
              v135[1] = v136;
              *(*(v134 + 56) + 8 * v133) = v187;
              v137 = *(v134 + 16);
              v75 = __OFADD__(v137, 1);
              v138 = v137 + 1;
              if (v75)
              {
                goto LABEL_88;
              }

              *(v134 + 16) = v138;
              v97 = v171;
              v93 = v172;
              v98 = v167;
              if (v171)
              {
                goto LABEL_50;
              }

              goto LABEL_51;
            }

            v116 = *&v179[8 * v113];
            ++v115;
            if (v116)
            {
              v114 = __clz(__rbit64(v116));
              v185 = (v116 - 1) & v116;
              goto LABEL_66;
            }
          }
        }

        while (1)
        {
          v114 = __clz(__rbit64(v111));
          v185 = (v111 - 1) & v111;
LABEL_66:
          v117 = v114 | (v113 << 6);
          v118 = *(v184 + 7);
          v119 = (*(v184 + 6) + 16 * v117);
          v120 = v119[1];
          v186 = *v119;
          if (v182)
          {
            v121 = v177;
            if (*(v118 + v117))
            {
              *v158 = 0;
              v121 = v176;
            }

            (*v181)(v158, v121, v163);
          }

          else
          {
            v122 = v178;
            if (*(v118 + v117))
            {
              *v159 = 0;
              v122 = v176;
            }

            (*v181)(v159, v122, v163);
          }

          v123 = v161;
          CredentialPresentmentElementRequestInfo.init(intentToStore:)();
          v124 = v164;
          v125 = *(v164 + 32);
          v126 = v160;
          v127 = v123;
          v128 = v162;
          v125(v160, v127, v162);
          *(v183 + ((v117 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v117;
          v129 = v187;
          v130 = (*(v187 + 48) + 16 * v117);
          *v130 = v186;
          v130[1] = v120;
          result = (v125)(*(v129 + 56) + *(v124 + 72) * v117, v126, v128);
          v131 = *(v129 + 16);
          v75 = __OFADD__(v131, 1);
          v132 = v131 + 1;
          if (v75)
          {
            goto LABEL_86;
          }

          *(v187 + 16) = v132;
          v111 = v185;
          if (!v185)
          {
            goto LABEL_61;
          }
        }
      }
    }

    v90 = _swiftEmptyArrayStorage;
    goto LABEL_46;
  }

LABEL_5:
  v31 = __clz(__rbit64(v30));
  v151 = (v30 - 1) & v30;
LABEL_11:
  v152 = v26;
  v34 = v31 | (v26 << 6);
  v35 = *(v150 + 56);
  v36 = (*(v150 + 48) + 16 * v34);
  v37 = v36[1];
  v154 = *v36;
  v155 = v34;
  v38 = *(v35 + 8 * v34);
  sub_100004E70(&qword_100201E98, &qword_1001ACC20);
  v39 = static _DictionaryStorage.copy(original:)();
  v40 = v39;
  v41 = *(v38 + 64);
  v157 = v38 + 64;
  v42 = 1 << *(v38 + 32);
  if (v42 < 64)
  {
    v43 = ~(-1 << v42);
  }

  else
  {
    v43 = -1;
  }

  v172 = v43 & v41;
  v156 = (v42 + 63) >> 6;
  v165 = v39 + 64;
  v153 = v37;

  v168 = v38;

  v44 = 0;
  v166 = v40;
  v45 = v172;
  if (v172)
  {
    goto LABEL_15;
  }

  while (2)
  {
    v48 = v44;
    do
    {
      v44 = v48 + 1;
      if (__OFADD__(v48, 1))
      {
        goto LABEL_81;
      }

      if (v44 >= v156)
      {

        v77 = v155;
        *(v148 + ((v155 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v155;
        v78 = v149;
        v79 = (*(v149 + 48) + 16 * v77);
        v80 = v153;
        *v79 = v154;
        v79[1] = v80;
        *(*(v78 + 56) + 8 * v77) = v40;
        v81 = *(v78 + 16);
        v75 = __OFADD__(v81, 1);
        v82 = v81 + 1;
        if (v75)
        {
          goto LABEL_87;
        }

        *(v78 + 16) = v82;
        v26 = v152;
        v30 = v151;
        if (!v151)
        {
          goto LABEL_6;
        }

        goto LABEL_5;
      }

      v49 = *(v157 + 8 * v44);
      ++v48;
    }

    while (!v49);
    v46 = __clz(__rbit64(v49));
    v47 = (v49 - 1) & v49;
LABEL_21:
    v50 = v46 | (v44 << 6);
    v171 = v44;
    v172 = v47;
    v51 = *(v168 + 56);
    v52 = (*(v168 + 48) + 16 * v50);
    v53 = v52[1];
    v169 = *v52;
    v170 = v50;
    v54 = *(v51 + 8 * v50);
    v55 = *(v54 + 16);
    if (v55)
    {
      v189 = _swiftEmptyArrayStorage;
      v167 = v53;

      result = sub_10010AA04(0, v55, 0);
      v56 = 0;
      v57 = v189;
      v176 = v54;
      v177 = v54 + 32;
      v175 = v55;
      while (v56 < *(v54 + 16))
      {
        v58 = *(v177 + 8 * v56);
        v59 = *(v58 + 16);
        if (v59)
        {
          v179 = v56;
          v180 = v57;
          v188 = _swiftEmptyArrayStorage;

          sub_10010AA44(0, v59, 0);
          v60 = v188;
          v61 = v174;
          v62 = v173[80];
          v178 = v58;
          v63 = v58 + ((v62 + 32) & ~v62);
          v64 = *(v173 + 9);
          v65 = *(v173 + 2);
          do
          {
            v66 = v184;
            v67 = v187;
            v65(v184, v63, v187);
            ISO18013ReaderRequest.ElementReference.namespace.getter();
            ISO18013ReaderRequest.ElementReference.elementIdentifier.getter();
            DocumentRequest.DataElement.init(namespace:identifier:)();
            (*v182)(v66, v67);
            v188 = v60;
            v69 = v60[2];
            v68 = v60[3];
            if (v69 >= v68 >> 1)
            {
              sub_10010AA44(v68 > 1, v69 + 1, 1);
              v61 = v174;
              v60 = v188;
            }

            v60[2] = v69 + 1;
            (*(v185 + 32))(v60 + ((*(v185 + 80) + 32) & ~*(v185 + 80)) + *(v185 + 72) * v69, v61, v186);
            v63 += v64;
            --v59;
          }

          while (v59);

          v55 = v175;
          v54 = v176;
          v56 = v179;
          v57 = v180;
        }

        else
        {
          v60 = _swiftEmptyArrayStorage;
        }

        v189 = v57;
        v71 = v57[2];
        v70 = v57[3];
        if (v71 >= v70 >> 1)
        {
          result = sub_10010AA04((v70 > 1), v71 + 1, 1);
          v57 = v189;
        }

        ++v56;
        v57[2] = v71 + 1;
        v57[v71 + 4] = v60;
        if (v56 == v55)
        {

          result = v167;
          goto LABEL_36;
        }
      }

      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
      break;
    }

    v57 = _swiftEmptyArrayStorage;
LABEL_36:
    v72 = v170;
    *(v165 + ((v170 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v170;
    v40 = v166;
    v73 = (*(v166 + 48) + 16 * v72);
    *v73 = v169;
    v73[1] = result;
    *(*(v40 + 56) + 8 * v72) = v57;
    v74 = *(v40 + 16);
    v75 = __OFADD__(v74, 1);
    v76 = v74 + 1;
    v44 = v171;
    if (!v75)
    {
      *(v40 + 16) = v76;
      v45 = v172;
      if (!v172)
      {
        continue;
      }

LABEL_15:
      v46 = __clz(__rbit64(v45));
      v47 = (v45 - 1) & v45;
      goto LABEL_21;
    }

    break;
  }

  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
  return result;
}

unint64_t sub_100099644(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_1000996BC(a1, a2, v6);
}

unint64_t sub_1000996BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_100099774(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000997BC()
{
  result = qword_100201E68;
  if (!qword_100201E68)
  {
    sub_100021ED0(&qword_100201E58, &qword_1001ACC00);
    sub_100099848();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100201E68);
  }

  return result;
}

unint64_t sub_100099848()
{
  result = qword_100201E70;
  if (!qword_100201E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100201E70);
  }

  return result;
}

uint64_t sub_1000998C0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 24);
  v5 = *a1;
  v7[2] = *(v2 + 16);
  v8 = v4;
  result = sub_100096314(sub_10009991C, v7, v5);
  *a2 = result;
  return result;
}

unint64_t sub_100099964(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004E70(&qword_100201E90, &qword_1001ACC18);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100099644(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_100099A68()
{
  v65 = type metadata accessor for ISO18013KnownNamespaces();
  v1 = *(v65 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v65);
  v64 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MDLRequestValidator();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v56 - v14;
  defaultLogger()();
  v66 = v0;
  sub_10009A054(v0, v7);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  v18 = os_log_type_enabled(v16, v17);
  v58 = v8;
  v59 = v13;
  v60 = v9;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v69 = v20;
    *v19 = 136315138;
    v21 = DocumentRequest.docType.getter();
    v22 = v1;
    v24 = v23;
    sub_10009A0B8(v7);
    v25 = sub_10010150C(v21, v24, &v69);
    v1 = v22;

    *(v19 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v16, v17, "Validating doctype %s", v19, 0xCu);
    sub_100005090(v20);

    v57 = *(v60 + 8);
  }

  else
  {

    sub_10009A0B8(v7);
    v57 = *(v9 + 8);
  }

  v57(v15, v8);
  result = DocumentRequest.namespaces.getter();
  v27 = 0;
  v29 = result + 64;
  v28 = *(result + 64);
  v67 = result;
  v30 = 1 << *(result + 32);
  v31 = -1;
  if (v30 < 64)
  {
    v31 = ~(-1 << v30);
  }

  v32 = v31 & v28;
  v33 = (v30 + 63) >> 6;
  v63 = enum case for ISO18013KnownNamespaces.iso18013_5_1(_:);
  v61 = (v1 + 8);
  v62 = (v1 + 104);
  if ((v31 & v28) != 0)
  {
    do
    {
LABEL_11:
      v35 = __clz(__rbit64(v32)) | (v27 << 6);
      v36 = *(v67 + 56);
      v37 = (*(v67 + 48) + 16 * v35);
      v38 = v37[1];
      v68 = *v37;
      v39 = *(v36 + 8 * v35);
      v40 = v64;
      v41 = v65;
      (*v62)(v64, v63, v65);

      v42 = ISO18013KnownNamespaces.rawValue.getter();
      v44 = v43;
      (*v61)(v40, v41);
      v45 = v42;
      v46 = v68;
      if (v45 == v68 && v44 == v38)
      {
      }

      else
      {
        v48 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v48 & 1) == 0)
        {

          goto LABEL_19;
        }
      }

      v49 = sub_10009A114(v39);

      if ((v49 & 1) == 0)
      {
        v50 = v59;
        defaultLogger()();

        v51 = Logger.logObject.getter();
        v52 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v51, v52))
        {
          v53 = swift_slowAlloc();
          v54 = swift_slowAlloc();
          v69 = v54;
          *v53 = 136315138;
          v55 = sub_10010150C(v46, v38, &v69);

          *(v53 + 4) = v55;
          _os_log_impl(&_mh_execute_header, v51, v52, "Validation for namespace %s has failed", v53, 0xCu);
          sub_100005090(v54);
        }

        else
        {
        }

        v57(v50, v58);
        return 0;
      }

LABEL_19:
      v32 &= v32 - 1;
    }

    while (v32);
  }

  while (1)
  {
    v34 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v34 >= v33)
    {

      return 1;
    }

    v32 = *(v29 + 8 * v34);
    ++v27;
    if (v32)
    {
      v27 = v34;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for MDLRequestValidator()
{
  result = qword_100201F20;
  if (!qword_100201F20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10009A054(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MDLRequestValidator();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10009A0B8(uint64_t a1)
{
  v2 = type metadata accessor for MDLRequestValidator();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10009A114(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v22 = *(v2 - 8);
  v3 = *(v22 + 64);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  v12 = 0;
  while (v8)
  {
LABEL_10:
    v14 = (*(a1 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v8)))));
    v15 = *v14;
    v16 = v14[1];

    LOBYTE(v15) = static ISO18013_5_1_ElementIdentifier.isAgeOverElement(_:)();

    if ((v15 & 1) != 0 && __OFADD__(v11++, 1))
    {
      __break(1u);
LABEL_14:

      return 1;
    }

    v8 &= v8 - 1;
    if (v11 >= 3)
    {
      defaultLogger()();
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 134217984;
        *(v20 + 4) = v11;
        _os_log_impl(&_mh_execute_header, v18, v19, "Rejecting request because it contains %ld age over elements", v20, 0xCu);
      }

      (*(v22 + 8))(v5, v2);
      return 0;
    }
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v9)
    {
      goto LABEL_14;
    }

    v8 = *(a1 + 64 + 8 * v13);
    ++v12;
    if (v8)
    {
      v12 = v13;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10009A368(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DocumentRequest();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10009A3E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DocumentRequest();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_10009A458()
{
  type metadata accessor for DocumentRequest();
  if (v0 <= 0x3F)
  {
    type metadata accessor for DCPresentmentType(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_10009A4DC()
{
  v0 = sub_100004E70(&qword_100201488, &qword_1001ACFD0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v16 - v2;
  v4 = type metadata accessor for DIPError.Code();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v16 - v10;
  DIPError.Code.init(rawValue:)();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_10008C18C(v3);
    return -5000;
  }

  (*(v5 + 32))(v11, v3, v4);
  (*(v5 + 16))(v9, v11, v4);
  v13 = (*(v5 + 88))(v9, v4);
  if (v13 == enum case for DIPError.Code.missingEntitlement(_:))
  {
    goto LABEL_5;
  }

  if (v13 == enum case for DIPError.Code.invalidStoredData(_:))
  {
    goto LABEL_7;
  }

  if (v13 == enum case for DIPError.Code.idcsUnauthorizedPartition(_:))
  {
LABEL_5:
    (*(v5 + 8))(v11, v4);
    return -5002;
  }

  if (v13 == enum case for DIPError.Code.idcsInvalidPayload(_:) || v13 == enum case for DIPError.Code.idcsMissingPresentmentKey(_:))
  {
    goto LABEL_7;
  }

  if (v13 == enum case for DIPError.Code.idcsPreconditionNotMet(_:))
  {
    (*(v5 + 8))(v11, v4);
    return -5003;
  }

  if (v13 == enum case for DIPError.Code.idcsInvalidPresentmentKey(_:))
  {
LABEL_7:
    (*(v5 + 8))(v11, v4);
    return -5004;
  }

  else if (v13 == enum case for DIPError.Code.idcsInvalidPresentmentRequestSessionEstablishment(_:) || v13 == enum case for DIPError.Code.idcsInvalidPresentmentRequestSessionTranscript(_:) || v13 == enum case for DIPError.Code.idcsInvalidReaderRequest(_:))
  {
    (*(v5 + 8))(v11, v4);
    return -5101;
  }

  else if (v13 == enum case for DIPError.Code.idcsPresentmentSessionKeyDerivationFailed(_:) || v13 == enum case for DIPError.Code.idcsPresentmentRequestDecryptionFailed(_:))
  {
    (*(v5 + 8))(v11, v4);
    return -5103;
  }

  else if (v13 == enum case for DIPError.Code.idcsUnsupportedReaderRequestVersion(_:))
  {
    (*(v5 + 8))(v11, v4);
    return -5102;
  }

  else if (v13 == enum case for DIPError.Code.idcsSessionKeyNotDerived(_:))
  {
    (*(v5 + 8))(v11, v4);
    return -5005;
  }

  else if (v13 == enum case for DIPError.Code.idcsMissingReaderAuth(_:))
  {
    (*(v5 + 8))(v11, v4);
    return -5104;
  }

  else if (v13 == enum case for DIPError.Code.idcsMissingReaderAuthCerts(_:) || v13 == enum case for DIPError.Code.idcsMisformattedReaderAuthCerts(_:) || v13 == enum case for DIPError.Code.idcsUntrustedReaderAuthCertificate(_:) || v13 == enum case for DIPError.Code.idcsMissingReaderCommonName(_:) || v13 == enum case for DIPError.Code.idcsMissingReaderOrganization(_:) || v13 == enum case for DIPError.Code.idcsUnknownReaderAuthAlgorithm(_:) || v13 == enum case for DIPError.Code.idcsMisformattedReaderAuthSignature(_:) || v13 == enum case for DIPError.Code.idcsInvalidReaderAuthSignature(_:))
  {
    (*(v5 + 8))(v11, v4);
    return -5105;
  }

  else if (v13 == enum case for DIPError.Code.idcsInvalidPresentmentSelection(_:))
  {
    (*(v5 + 8))(v11, v4);
    return -5106;
  }

  else
  {
    if (v13 != enum case for DIPError.Code.idcsMissingAuthDataInPresentmentSelection(_:))
    {
      v15 = *(v5 + 8);
      v15(v11, v4);
      v15(v9, v4);
      return -5000;
    }

    (*(v5 + 8))(v11, v4);
    return -5107;
  }
}

void *sub_10009AB90(uint64_t a1)
{
  v3 = type metadata accessor for PresentmentProposal();
  v26 = *(v3 - 8);
  v4 = *(v26 + 64);
  __chkstk_darwin(v3 - 8);
  v25 = (&v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v6)
  {
    v23 = v1;
    v29 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v8 = -1 << *(a1 + 32);
    v27 = a1 + 64;
    result = _HashTable.startBucket.getter();
    v9 = result;
    v10 = 0;
    v28 = *(a1 + 36);
    v24 = a1 + 72;
    while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(a1 + 32))
    {
      v12 = v9 >> 6;
      if ((*(v27 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
      {
        goto LABEL_21;
      }

      if (v28 != *(a1 + 36))
      {
        goto LABEL_22;
      }

      v13 = v25;
      sub_10009DE88(*(a1 + 56) + *(v26 + 72) * v9, v25, type metadata accessor for PresentmentProposal);
      v14 = *v13;
      sub_10009DEF0(v13, type metadata accessor for PresentmentProposal);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v15 = v29[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = specialized ContiguousArray._endMutation()();
      v11 = 1 << *(a1 + 32);
      if (v9 >= v11)
      {
        goto LABEL_23;
      }

      v16 = *(v27 + 8 * v12);
      if ((v16 & (1 << v9)) == 0)
      {
        goto LABEL_24;
      }

      if (v28 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v17 = v16 & (-2 << (v9 & 0x3F));
      if (v17)
      {
        v11 = __clz(__rbit64(v17)) | v9 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v18 = v12 << 6;
        v19 = v12 + 1;
        v20 = (v24 + 8 * v12);
        while (v19 < (v11 + 63) >> 6)
        {
          v22 = *v20++;
          v21 = v22;
          v18 += 64;
          ++v19;
          if (v22)
          {
            result = sub_1000468A0(v9, v28, 0);
            v11 = __clz(__rbit64(v21)) + v18;
            goto LABEL_4;
          }
        }

        result = sub_1000468A0(v9, v28, 0);
      }

LABEL_4:
      ++v10;
      v9 = v11;
      if (v10 == v6)
      {
        return v29;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

void *sub_10009AE54()
{
  v0 = type metadata accessor for SESKeystore();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  v3 = SESKeystore.init()();
  v4 = type metadata accessor for SEPairingManager();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  v7 = SEPairingManager.init()();
  v8 = type metadata accessor for GenericPasswordKeychainWrapper();
  v27 = v8;
  v28 = &off_1001F4DE8;
  v26[0] = swift_allocObject();
  v9 = type metadata accessor for SyncableKeyStoreProvider();
  v10 = swift_allocObject();
  v11 = sub_1000129AC(v26, v8);
  v12 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = (&v26[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14);
  v16 = *v14;
  v10[5] = v8;
  v10[6] = &off_1001F4DE8;
  v10[2] = v16;

  sub_100005090(v26);
  v27 = v9;
  v28 = &off_1001F5068;
  v26[0] = v10;
  type metadata accessor for CredentialKeyManager();
  v17 = swift_allocObject();
  v18 = sub_1000129AC(v26, v9);
  v19 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v18);
  v21 = (&v26[-1] - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v22 + 16))(v21);
  v23 = sub_1000F20BC(v3, v7, *v21, v17);

  sub_100005090(v26);
  return v23;
}

uint64_t sub_10009B0AC(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = type metadata accessor for DIPError.Code();
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();
  v6 = sub_100004E70(&qword_100202108, &qword_1001ACD20);
  v2[10] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v8 = *(*(sub_100004E70(&qword_100202100, &qword_1001ACD18) - 8) + 64) + 15;
  v2[14] = swift_task_alloc();
  v9 = type metadata accessor for PresentmentRequestInterpretation(0);
  v2[15] = v9;
  v10 = *(v9 - 8);
  v2[16] = v10;
  v11 = *(v10 + 64) + 15;
  v2[17] = swift_task_alloc();
  v12 = type metadata accessor for Logger();
  v2[18] = v12;
  v13 = *(v12 - 8);
  v2[19] = v13;
  v14 = *(v13 + 64) + 15;
  v2[20] = swift_task_alloc();

  return _swift_task_switch(sub_10009B2B0, 0, 0);
}

uint64_t sub_10009B2B0()
{
  v1 = v0[20];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "PresentmentFlow interpretRequest", v4, 2u);
  }

  v6 = v0[19];
  v5 = v0[20];
  v7 = v0[18];
  v8 = v0[6];

  (*(v6 + 8))(v5, v7);
  v0[21] = *(v8 + 104);

  v9 = swift_task_alloc();
  v0[22] = v9;
  *v9 = v0;
  v9[1] = sub_10009B408;
  v10 = v0[17];
  v11 = v0[5];

  return sub_1000A402C(v10, v11);
}

uint64_t sub_10009B408()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v7 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v4 = sub_10009B96C;
  }

  else
  {
    v5 = *(v2 + 168);

    v4 = sub_10009B524;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10009B524()
{
  v1 = v0;
  v4 = v0 + 16;
  v3 = v0[16];
  v2 = v4[1];
  v6 = v1[14];
  v5 = v1[15];
  v7 = v1[6];
  sub_10009DE88(v2, v6, type metadata accessor for PresentmentRequestInterpretation);
  (*(v3 + 56))(v6, 0, 1, v5);
  v8 = OBJC_IVAR____TtC7idcredd15PresentmentFlow_requestInterpretation;
  swift_beginAccess();
  sub_10009DE18(v6, v7 + v8);
  swift_endAccess();
  v9._countAndFlagsBits = 0x6639646364353638;
  v10._object = 0x80000001001B79C0;
  v9._object = 0xE800000000000000;
  v10._countAndFlagsBits = 0xD00000000000004FLL;
  logMilestone(tag:description:)(v9, v10);
  v11 = *v2;
  v12 = *(*v2 + 16);
  if (v12)
  {
    v54 = v1[11];
    v55 = v1[12];
    v53 = v1[10];

    specialized ContiguousArray.reserveCapacity(_:)();
    v13 = v11 + 64;
    v14 = -1 << *(v11 + 32);
    result = _HashTable.startBucket.getter();
    v16 = result;
    v17 = 0;
    v49 = v11 + 72;
    v50 = v12;
    v51 = v1;
    v52 = v11 + 64;
    while ((v16 & 0x8000000000000000) == 0 && v16 < 1 << *(v11 + 32))
    {
      if ((*(v13 + 8 * (v16 >> 6)) & (1 << v16)) == 0)
      {
        goto LABEL_23;
      }

      v58 = v16 >> 6;
      v21 = v1[12];
      v20 = v1[13];
      v56 = v17;
      v57 = *(v11 + 36);
      v22 = *(v53 + 48);
      v23 = v1[11];
      v24 = *(v11 + 56);
      v25 = (*(v11 + 48) + 16 * v16);
      v26 = v11;
      v27 = *v25;
      v28 = v25[1];
      v29 = type metadata accessor for PresentmentProposal();
      sub_10009DE88(v24 + *(*(v29 - 8) + 72) * v16, v20 + v22, type metadata accessor for PresentmentProposal);
      *v21 = v27;
      v11 = v26;
      *(v55 + 8) = v28;
      sub_10009DF50(v20 + v22, v21 + *(v53 + 48), type metadata accessor for PresentmentProposal);
      sub_10009DFB8(v21, v23);
      v30 = *(v54 + 8);

      v31 = *(v53 + 48);
      v32 = *(v23 + v31);
      sub_10009DEF0(v23 + v31, type metadata accessor for PresentmentProposal);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v33 = _swiftEmptyArrayStorage[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = specialized ContiguousArray._endMutation()();
      v18 = 1 << *(v26 + 32);
      if (v16 >= v18)
      {
        goto LABEL_24;
      }

      v13 = v52;
      v34 = *(v52 + 8 * v58);
      if ((v34 & (1 << v16)) == 0)
      {
        goto LABEL_25;
      }

      if (v57 != *(v26 + 36))
      {
        goto LABEL_26;
      }

      v35 = v34 & (-2 << (v16 & 0x3F));
      if (v35)
      {
        v18 = __clz(__rbit64(v35)) | v16 & 0x7FFFFFFFFFFFFFC0;
        v19 = v50;
        v1 = v51;
      }

      else
      {
        v36 = v58 << 6;
        v19 = v50;
        v37 = (v49 + 8 * v58);
        v38 = v58 + 1;
        v1 = v51;
        while (v38 < (v18 + 63) >> 6)
        {
          v40 = *v37++;
          v39 = v40;
          v36 += 64;
          ++v38;
          if (v40)
          {
            result = sub_1000468A0(v16, v57, 0);
            v18 = __clz(__rbit64(v39)) + v36;
            goto LABEL_4;
          }
        }

        result = sub_1000468A0(v16, v57, 0);
      }

LABEL_4:
      v17 = v56 + 1;
      v16 = v18;
      if (v56 + 1 == v19)
      {
        sub_10009DEF0(v1[17], type metadata accessor for PresentmentRequestInterpretation);

        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
    sub_10009DEF0(v1[17], type metadata accessor for PresentmentRequestInterpretation);
LABEL_19:
    v41 = v1[20];
    v42 = v1[17];
    v44 = v1[13];
    v43 = v1[14];
    v46 = v1[11];
    v45 = v1[12];
    v47 = v1[9];

    v48 = v1[1];

    return v48(_swiftEmptyArrayStorage);
  }

  return result;
}

uint64_t sub_10009B96C()
{
  v1 = v0[23];
  v3 = v0[20];
  v2 = v0[21];
  v4 = v0[17];
  v5 = v0[14];
  v11 = v0[13];
  v12 = v0[12];
  v13 = v0[11];
  v7 = v0[8];
  v6 = v0[9];
  v8 = v0[7];

  (*(v7 + 104))(v6, enum case for DIPError.Code.internalError(_:), v8);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100008E7C();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v9 = v0[1];

  return v9();
}

uint64_t sub_10009BB10(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = type metadata accessor for DIPError.Code();
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();
  v6 = *(*(sub_100004E70(&qword_100202100, &qword_1001ACD18) - 8) + 64) + 15;
  v2[10] = swift_task_alloc();
  v7 = type metadata accessor for PresentmentRequestInterpretation(0);
  v2[11] = v7;
  v8 = *(v7 - 8);
  v2[12] = v8;
  v9 = *(v8 + 64) + 15;
  v2[13] = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  v2[14] = v10;
  v11 = *(v10 - 8);
  v2[15] = v11;
  v12 = *(v11 + 64) + 15;
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_10009BCC0, 0, 0);
}

uint64_t sub_10009BCC0()
{
  v1 = v0[16];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "PresentmentFlow interpretCredentialRequest", v4, 2u);
  }

  v6 = v0[15];
  v5 = v0[16];
  v7 = v0[14];
  v8 = v0[6];

  (*(v6 + 8))(v5, v7);
  v0[17] = *(v8 + 104);

  v9 = swift_task_alloc();
  v0[18] = v9;
  *v9 = v0;
  v9[1] = sub_10009BE18;
  v10 = v0[13];
  v11 = v0[5];

  return sub_1000A5360(v10, v11);
}

uint64_t sub_10009BE18()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v7 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v4 = sub_10009C0B8;
  }

  else
  {
    v5 = *(v2 + 136);

    v4 = sub_10009BF34;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10009BF34()
{
  v1 = v0[19];
  v2 = v0[16];
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[10];
  v6 = v0[11];
  v7 = v0[9];
  v8 = v0[6];
  sub_10009DE88(v3, v5, type metadata accessor for PresentmentRequestInterpretation);
  (*(v4 + 56))(v5, 0, 1, v6);
  v9 = OBJC_IVAR____TtC7idcredd15PresentmentFlow_requestInterpretation;
  swift_beginAccess();
  sub_10009DE18(v5, v8 + v9);
  swift_endAccess();
  v10._countAndFlagsBits = 0x6639646364353638;
  v11._object = 0x80000001001B7930;
  v10._object = 0xE800000000000000;
  v11._countAndFlagsBits = 0xD000000000000062;
  logMilestone(tag:description:)(v10, v11);
  v12 = *v3;

  v14 = sub_10009AB90(v13);

  sub_10009DEF0(v3, type metadata accessor for PresentmentRequestInterpretation);

  v15 = v0[1];

  return v15(v14);
}

uint64_t sub_10009C0B8()
{
  v1 = v0[19];
  v3 = v0[16];
  v2 = v0[17];
  v4 = v0[13];
  v6 = v0[9];
  v5 = v0[10];
  v7 = v0[7];
  v8 = v0[8];

  (*(v8 + 104))(v6, enum case for DIPError.Code.internalError(_:), v7);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100008E7C();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v9 = v0[1];

  return v9();
}

uint64_t sub_10009C240(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = type metadata accessor for DIPError.Code();
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();
  v6 = *(*(sub_100004E70(&qword_100202100, &qword_1001ACD18) - 8) + 64) + 15;
  v2[10] = swift_task_alloc();
  v7 = type metadata accessor for PresentmentRequestInterpretation(0);
  v2[11] = v7;
  v8 = *(v7 - 8);
  v2[12] = v8;
  v9 = *(v8 + 64) + 15;
  v2[13] = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  v2[14] = v10;
  v11 = *(v10 - 8);
  v2[15] = v11;
  v12 = *(v11 + 64) + 15;
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_10009C3F0, 0, 0);
}

uint64_t sub_10009C3F0()
{
  v1 = v0[16];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "PresentmentFlow buildCredentialResponse", v4, 2u);
  }

  v6 = v0[15];
  v5 = v0[16];
  v7 = v0[14];
  v8 = v0[11];
  v9 = v0[12];
  v10 = v0[10];
  v11 = v0[6];

  (*(v6 + 8))(v5, v7);
  v12 = OBJC_IVAR____TtC7idcredd15PresentmentFlow_requestInterpretation;
  swift_beginAccess();
  sub_10009DDA8(v11 + v12, v10);
  if ((*(v9 + 48))(v10, 1, v8) == 1)
  {
    v13 = v0[9];
    v14 = v0[7];
    v15 = v0[8];
    sub_10000A0D4(v0[10], &qword_100202100, &qword_1001ACD18);
    v25 = *(v15 + 104);
    v25(v13, enum case for DIPError.Code.idcsPreconditionNotMet(_:), v14);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v16 = v0[16];
    v24 = v0[13];
    v17 = v0[10];
    v25(v0[9], enum case for DIPError.Code.internalError(_:), v0[7]);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v18 = v0[1];

    return v18();
  }

  else
  {
    v20 = v0[6];
    sub_10009DF50(v0[10], v0[13], type metadata accessor for PresentmentRequestInterpretation);
    v0[17] = *(v20 + 112);

    v21 = swift_task_alloc();
    v0[18] = v21;
    *v21 = v0;
    v21[1] = sub_10009C7E4;
    v22 = v0[13];
    v23 = v0[5];

    return sub_1000C0A7C(v23, v22);
  }
}

uint64_t sub_10009C7E4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 144);
  v6 = *v2;
  v4[19] = v1;

  v7 = v4[17];

  if (v1)
  {
    v8 = sub_10009C9D8;
  }

  else
  {
    v4[20] = a1;
    v8 = sub_10009C928;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_10009C928()
{
  v1 = v0[16];
  v3 = v0[9];
  v2 = v0[10];
  sub_10009DEF0(v0[13], type metadata accessor for PresentmentRequestInterpretation);

  v4 = v0[1];
  v5 = v0[20];

  return v4(v5);
}

uint64_t sub_10009C9D8()
{
  v1 = v0[8];
  sub_10009DEF0(v0[13], type metadata accessor for PresentmentRequestInterpretation);
  v2 = v0[19];
  v3 = v0[16];
  v4 = v0[13];
  v5 = v0[10];
  (*(v1 + 104))(v0[9], enum case for DIPError.Code.internalError(_:), v0[7]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100008E7C();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v6 = v0[1];

  return v6();
}

uint64_t sub_10009CB78(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for DIPError.Code();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();

  return _swift_task_switch(sub_10009CC94, 0, 0);
}

uint64_t sub_10009CC94()
{
  v1 = v0[9];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "PresentmentFlow buildErrorResponse", v4, 2u);
  }

  v6 = v0[8];
  v5 = v0[9];
  v7 = v0[7];
  v8 = v0[3];

  (*(v6 + 8))(v5, v7);
  v0[10] = *(v8 + 112);

  v9 = swift_task_alloc();
  v0[11] = v9;
  *v9 = v0;
  v9[1] = sub_10009CDE8;
  v10 = v0[2];

  return sub_1000C61BC(v10);
}

uint64_t sub_10009CDE8(uint64_t a1, uint64_t a2)
{
  v6 = *(*v3 + 88);
  v7 = *v3;
  v7[12] = v2;

  if (v2)
  {

    return _swift_task_switch(sub_10009CF58, 0, 0);
  }

  else
  {
    v9 = v7[9];
    v8 = v7[10];
    v10 = v7[6];

    v11 = v7[1];

    return v11(a1, a2);
  }
}

uint64_t sub_10009CF58()
{
  v1 = v0[12];
  v3 = v0[9];
  v2 = v0[10];
  v5 = v0[5];
  v4 = v0[6];
  v6 = v0[4];

  (*(v5 + 104))(v4, enum case for DIPError.Code.internalError(_:), v6);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100008E7C();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v7 = v0[1];

  return v7();
}

uint64_t sub_10009D0BC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for DIPError.Code();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();

  return _swift_task_switch(sub_10009D1DC, 0, 0);
}

uint64_t sub_10009D1DC()
{
  v1 = v0[10];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "PresentmentFlow interpretGenericDataRequest", v4, 2u);
  }

  v6 = v0[9];
  v5 = v0[10];
  v7 = v0[8];
  v8 = v0[4];

  (*(v6 + 8))(v5, v7);
  v0[11] = *(v8 + 104);

  v9 = swift_task_alloc();
  v0[12] = v9;
  *v9 = v0;
  v9[1] = sub_10009D330;
  v11 = v0[2];
  v10 = v0[3];

  return sub_1000B9620(v11, v10);
}

uint64_t sub_10009D330(uint64_t a1, uint64_t a2)
{
  v6 = *(*v3 + 96);
  v7 = *v3;
  v7[13] = v2;

  if (v2)
  {

    return _swift_task_switch(sub_10009D4A0, 0, 0);
  }

  else
  {
    v9 = v7[10];
    v8 = v7[11];
    v10 = v7[7];

    v11 = v7[1];

    return v11(a1, a2);
  }
}

uint64_t sub_10009D4A0()
{
  v1 = v0[13];
  v3 = v0[10];
  v2 = v0[11];
  v5 = v0[6];
  v4 = v0[7];
  v6 = v0[5];

  (*(v5 + 104))(v4, enum case for DIPError.Code.internalError(_:), v6);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100008E7C();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v7 = v0[1];

  return v7();
}

uint64_t sub_10009D60C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for DIPError.Code();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();

  return _swift_task_switch(sub_10009D72C, 0, 0);
}

uint64_t sub_10009D72C()
{
  v1 = v0[10];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "PresentmentFlow buildGenericDataResponse", v4, 2u);
  }

  v6 = v0[9];
  v5 = v0[10];
  v7 = v0[8];
  v8 = v0[4];

  (*(v6 + 8))(v5, v7);
  v0[11] = *(v8 + 112);

  v9 = swift_task_alloc();
  v0[12] = v9;
  *v9 = v0;
  v9[1] = sub_10009D880;
  v11 = v0[2];
  v10 = v0[3];

  return sub_1000C72A8(v11, v10);
}

uint64_t sub_10009D880(uint64_t a1, uint64_t a2)
{
  v6 = *(*v3 + 96);
  v7 = *v3;
  v7[13] = v2;

  if (v2)
  {

    return _swift_task_switch(sub_10009D9F0, 0, 0);
  }

  else
  {
    v9 = v7[10];
    v8 = v7[11];
    v10 = v7[7];

    v11 = v7[1];

    return v11(a1, a2);
  }
}

uint64_t sub_10009D9F0()
{
  v1 = v0[13];
  v3 = v0[10];
  v2 = v0[11];
  v5 = v0[6];
  v4 = v0[7];
  v6 = v0[5];

  (*(v5 + 104))(v4, enum case for DIPError.Code.internalError(_:), v6);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100008E7C();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v7 = v0[1];

  return v7();
}

void *sub_10009DB54()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  v5 = v0[12];

  v6 = v0[13];

  v7 = v0[14];

  sub_10000A0D4(v0 + OBJC_IVAR____TtC7idcredd15PresentmentFlow_requestInterpretation, &qword_100202100, &qword_1001ACD18);
  v8 = *(v0 + OBJC_IVAR____TtC7idcredd15PresentmentFlow_credentialKeyManager);

  return v0;
}

uint64_t sub_10009DBD4()
{
  sub_10009DB54();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PresentmentFlow()
{
  result = qword_100201F88;
  if (!qword_100201F88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10009DC80()
{
  sub_10009DD50();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_10009DD50()
{
  if (!qword_100201F98)
  {
    type metadata accessor for PresentmentRequestInterpretation(255);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100201F98);
    }
  }
}

uint64_t sub_10009DDA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004E70(&qword_100202100, &qword_1001ACD18);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10009DE18(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004E70(&qword_100202100, &qword_1001ACD18);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10009DE88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10009DEF0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10009DF50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10009DFB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004E70(&qword_100202108, &qword_1001ACD20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10009E028(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v133 = a6;
  v134 = a7;
  v128 = a4;
  v129 = a5;
  v127 = a3;
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v131 = &v125 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v125 - v16;
  v18 = OBJC_IVAR____TtC7idcredd15PresentmentFlow_requestInterpretation;
  v19 = type metadata accessor for PresentmentRequestInterpretation(0);
  (*(*(v19 - 8) + 56))(v8 + v18, 1, 1, v19);
  defaultLogger()();

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();

  v22 = os_log_type_enabled(v20, v21);
  *&v132 = a2;
  v130 = v12;
  if (v22)
  {
    v23 = swift_slowAlloc();
    *&v126 = swift_slowAlloc();
    *&v135 = v126;
    *v23 = 136315394;
    v24 = Array.description.getter();
    v26 = sub_10010150C(v24, v25, &v135);

    *(v23 + 4) = v26;
    *(v23 + 12) = 2080;
    v27 = DCPresentmentTypeToString();
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = a1;
    v30 = v11;
    v32 = v31;

    v33 = v28;
    a2 = v132;
    v34 = sub_10010150C(v33, v32, &v135);
    v11 = v30;
    a1 = v29;

    *(v23 + 14) = v34;
    _os_log_impl(&_mh_execute_header, v20, v21, "PresentmentFlow init with partitions = %s, type = %s", v23, 0x16u);
    swift_arrayDestroy();

    v12 = v130;
  }

  v35 = *(v12 + 8);
  v35(v17, v11);
  v36 = v127;
  if (v127)
  {
    v37 = v127;
    defaultLogger()();
    v38 = v37;
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v43 = v36;
      v44 = v11;
      v45 = v42;
      *v41 = 138412290;
      *(v41 + 4) = v38;
      *v42 = v43;
      v46 = v38;
      _os_log_impl(&_mh_execute_header, v39, v40, "Presentment session options: %@", v41, 0xCu);
      sub_10000A0D4(v45, &qword_1002003B8, &unk_1001AB850);
      v11 = v44;
    }

    v35(v131, v11);
    v47 = [v38 sessionEncryptionMode];
    v48 = [v38 readerAuthenticationPolicy];
    v49 = [v38 elementFallbackModes];
    v50 = [v38 messageEncodingFormat];

    *(v8 + 56) = v47;
    *(v8 + 64) = v48;
    *(v8 + 72) = v49;
    *(v8 + 80) = v50;
    *(v8 + 88) = 0;
  }

  else
  {
    *(v8 + 72) = 0u;
    *(v8 + 56) = 0u;
    *(v8 + 88) = 1;
  }

  v51 = sub_10010D640(a1);

  *(v8 + 16) = v51;
  *(v8 + 24) = a2;
  v52 = v128;
  v53 = v129;
  *(v8 + 32) = v128;
  if (v53)
  {
    v54 = v53;
  }

  else
  {
    v55 = v52;
    swift_retain_n();
    v56 = sub_10009AE54();
    v57 = type metadata accessor for BiometricsHelper();
    v58 = *(v57 + 48);
    v59 = *(v57 + 52);
    swift_allocObject();
    v60 = BiometricsHelper.init()();
    v136 = type metadata accessor for DeviceInformationProvider();
    v137 = &protocol witness table for DeviceInformationProvider;
    sub_10001A9A4(&v135);
    DeviceInformationProvider.init()();
    type metadata accessor for BiometricStorage();
    v54 = swift_allocObject();
    v54[2] = v55;
    v54[8] = v56;
    type metadata accessor for AppleIDVManager();
    sub_1000215BC(v54 + 3);
    v54[9] = v60;
    sub_10001AA08(&v135, (v54 + 10));
  }

  *(v8 + 40) = v54;
  type metadata accessor for ACLFetcher();
  v61 = swift_allocObject();
  *(v61 + 16) = v54;
  type metadata accessor for AppleIDVManager();
  swift_retain_n();
  sub_1000215BC((v61 + 24));
  *(v8 + 48) = v61;
  v62 = *(v8 + 24);
  v63 = *(v8 + 56);
  v64 = *(v8 + 64);
  v65 = *(v8 + 72);
  v66 = *(v8 + 80);
  v67 = *(v8 + 88);
  type metadata accessor for PresentmentSessionCryptor();
  v68 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v68 + 160) = 0;
  *(v68 + 112) = v62;
  *(v68 + 120) = v63;
  *(v68 + 128) = v64;
  *(v68 + 136) = v65;
  *(v68 + 144) = v66;
  *(v68 + 152) = v67;
  *(v8 + 96) = v68;
  v69 = type metadata accessor for SEPairingManager();
  v70 = *(v69 + 48);
  v71 = *(v69 + 52);
  swift_allocObject();
  v72 = v134;

  v73 = SEPairingManager.init()();
  v74 = type metadata accessor for GenericPasswordKeychainWrapper();
  v75 = swift_allocObject();
  v136 = v74;
  v137 = &off_1001F4DE8;
  *&v135 = v75;
  v76 = type metadata accessor for SyncableKeyStoreProvider();
  v77 = swift_allocObject();
  v78 = sub_1000129AC(&v135, v74);
  v79 = *(*(v74 - 8) + 64);
  __chkstk_darwin(v78);
  v81 = (&v125 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v82 + 16))(v81);
  v83 = *v81;
  v77[5] = v74;
  v77[6] = &off_1001F4DE8;
  v77[2] = v83;
  sub_100005090(&v135);
  v136 = v76;
  v137 = &off_1001F5068;
  *&v135 = v77;
  type metadata accessor for CredentialKeyManager();
  v84 = swift_allocObject();
  v85 = sub_1000129AC(&v135, v76);
  v86 = *(*(v76 - 8) + 64);
  __chkstk_darwin(v85);
  v88 = (&v125 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v89 + 16))(v88);
  v90 = sub_1000F20BC(v72, v73, *v88, v84);
  sub_100005090(&v135);
  *(v8 + OBJC_IVAR____TtC7idcredd15PresentmentFlow_credentialKeyManager) = v90;
  v91 = *(v8 + 16);
  LODWORD(v131) = *(v8 + 88);
  v92 = *(v8 + 32);
  v93 = *(v8 + 96);
  v94 = *(v8 + 48);
  type metadata accessor for PresentmentKeySelectionProvider();
  v129 = swift_allocObject();
  v130 = type metadata accessor for ReaderMetadataProvider(0);
  v95 = type metadata accessor for PayloadProcessorBuilder();
  v136 = v95;
  v137 = &off_1001F78E8;
  *&v135 = v133;
  v96 = type metadata accessor for PresentmentRequestInterpreter(0);
  v97 = *(v96 + 48);
  v98 = *(v96 + 52);
  v99 = swift_allocObject();
  v100 = *(v8 + 56);
  v125 = *(v8 + 72);
  v126 = v100;
  v101 = sub_1000129AC(&v135, v95);
  v127 = &v125;
  v128 = v95;
  v102 = *(*(v95 - 8) + 64);
  __chkstk_darwin(v101);
  v104 = (&v125 - ((v103 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v105 + 16))(v104);
  v106 = *v104;
  v107 = (v99 + OBJC_IVAR____TtC7idcredd29PresentmentRequestInterpreter_payloadProcessorBuilder);
  v107[3] = v95;
  v107[4] = &off_1001F78E8;
  *v107 = v106;
  v108 = OBJC_IVAR____TtC7idcredd29PresentmentRequestInterpreter_identityReaderAuthenticator;
  v109 = type metadata accessor for IdentityReaderAuthenticator(0);
  (*(*(v109 - 8) + 56))(v99 + v108, 1, 1, v109);
  v110 = v132;
  *(v99 + 24) = v93;
  *(v99 + 32) = v110;
  *(v99 + 16) = v91;
  v111 = v126;
  *(v99 + 56) = v125;
  *(v99 + 40) = v111;
  *(v99 + 72) = v131;
  *(v99 + 80) = v92;
  *(v99 + 88) = v94;
  *(v99 + OBJC_IVAR____TtC7idcredd29PresentmentRequestInterpreter_credentialKeyManager) = v90;
  v112 = v130;
  *(v99 + OBJC_IVAR____TtC7idcredd29PresentmentRequestInterpreter_presentmentKeySelectionProvider) = v129;
  v113 = (v99 + OBJC_IVAR____TtC7idcredd29PresentmentRequestInterpreter_readerMetadataProvider);
  *v113 = v112;
  v113[1] = &off_1001F7740;

  v114 = v133;

  sub_100005090(&v135);
  *(v8 + 104) = v99;
  v132 = *(v8 + 56);
  v115 = *(v8 + 72);
  v116 = *(v8 + 80);
  LOBYTE(v108) = *(v8 + 88);
  v118 = *(v8 + 24);
  v117 = *(v8 + 32);
  v119 = *(v8 + 96);
  v121 = *(v8 + 40);
  v120 = *(v8 + 48);
  type metadata accessor for PresentmentResponseBuilder();
  v122 = swift_allocObject();
  *(v122 + 16) = v118;
  *(v122 + 24) = v132;
  *(v122 + 40) = v115;
  *(v122 + 48) = v116;
  *(v122 + 56) = v108;
  *(v122 + 64) = v117;
  *(v122 + 72) = v119;
  *(v122 + 112) = v128;
  *(v122 + 80) = v120;
  *(v122 + 88) = v114;
  *(v122 + 136) = v121;
  v123 = v134;
  *(v122 + 120) = &off_1001F78E8;
  *(v122 + 128) = v123;
  *(v8 + 112) = v122;

  return v8;
}

uint64_t sub_10009EA7C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for DIPError.Code();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();

  return _swift_task_switch(sub_10009EB9C, 0, 0);
}

uint64_t sub_10009EB9C()
{
  v1 = v0[10];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "PresentmentFlow generateTransportKey", v4, 2u);
  }

  v6 = v0[9];
  v5 = v0[10];
  v7 = v0[8];
  v8 = v0[4];

  (*(v6 + 8))(v5, v7);
  v9 = *(v8 + 96);
  v0[11] = v9;

  return _swift_task_switch(sub_10009ECBC, v9, 0);
}

uint64_t sub_10009ECBC()
{
  v1 = v0[11];
  v2 = sub_1000DFA34(v0[2], v0[3]);
  v0[12] = 0;
  v3 = v2;
  v5 = v4;
  v6 = v0[11];

  v0[13] = v5;
  v0[14] = v3;

  return _swift_task_switch(sub_10009ED60, 0, 0);
}

uint64_t sub_10009ED60()
{
  v1 = v0[10];
  v2 = v0[7];
  v3._countAndFlagsBits = 0x6165306264333232;
  v4._object = 0x80000001001B7A50;
  v3._object = 0xE800000000000000;
  v4._countAndFlagsBits = 0xD00000000000004BLL;
  logMilestone(tag:description:)(v3, v4);

  v5 = v0[1];
  v7 = v0[13];
  v6 = v0[14];

  return v5(v6, v7);
}

uint64_t sub_10009EE08()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];
  v5 = v0[6];
  v4 = v0[7];
  v6 = v0[5];

  (*(v5 + 104))(v4, enum case for DIPError.Code.internalError(_:), v6);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100008E7C();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v7 = v0[1];

  return v7();
}

unint64_t sub_10009EF98(unint64_t result)
{
  if (result)
  {
    v1 = result;
    swift_stdlib_random();
    result = (0 * v1) >> 64;
    if (-v1 % v1)
    {
      while (1)
      {
        swift_stdlib_random();
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10009F024(char *a1, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, void *a6)
{
  v195 = a4;
  v192 = a1;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  isa = v11[8].isa;
  v13 = __chkstk_darwin(v10);
  v188 = v185 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v193 = v185 - v16;
  v17 = __chkstk_darwin(v15);
  v190 = v185 - v18;
  v19 = __chkstk_darwin(v17);
  v194 = v185 - v20;
  v21 = __chkstk_darwin(v19);
  v191 = v185 - v22;
  v23 = __chkstk_darwin(v21);
  v186 = v185 - v24;
  v25 = __chkstk_darwin(v23);
  v189 = v185 - v26;
  v27 = __chkstk_darwin(v25);
  v187 = v185 - v28;
  __chkstk_darwin(v27);
  v30 = v185 - v29;
  defaultLogger()();

  v31 = a6;
  sub_100032EBC(a2, a3);
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.debug.getter();
  v201 = a5;

  v203 = a2;
  sub_10001C120(a2, a3);
  LODWORD(v196) = v33;
  v34 = os_log_type_enabled(v32, v33);
  v197 = a3;
  v198 = v11;
  v35 = a3 >> 60;
  v199 = v10;
  v200 = v31;
  if (v34)
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *&v206 = v37;
    *v36 = 136315650;
    v38 = [v31 credentialIdentifier];
    v185[1] = v37;
    if (v38)
    {
      v39 = v38;
      v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v42 = v41;
    }

    else
    {
      v40 = 0;
      v42 = 0xE000000000000000;
    }

    countAndFlagsBits = 0x3E6C696E3CLL;
    v45 = sub_10010150C(v40, v42, &v206);

    *(v36 + 4) = v45;
    *(v36 + 12) = 2080;
    if (v201)
    {
      v46 = v195;
    }

    else
    {
      v46 = 0x3E6C696E3CLL;
    }

    object = 0xE500000000000000;
    if (v201)
    {
      v48 = v201;
    }

    else
    {
      v48 = 0xE500000000000000;
    }

    v49 = sub_10010150C(v46, v48, &v206);

    *(v36 + 14) = v49;
    *(v36 + 22) = 2080;
    v43 = v197;
    if (v35 <= 0xE)
    {
      v50 = Data.base16EncodedString()();
      countAndFlagsBits = v50._countAndFlagsBits;
      object = v50._object;
    }

    v51 = sub_10010150C(countAndFlagsBits, object, &v206);

    *(v36 + 24) = v51;
    _os_log_impl(&_mh_execute_header, v32, v196, "PresentmentKeySelectionProvider selectPresentmentKey credential = %s, relyingPartyIdentifier = %s, requiredPublicKeyIdentifier = %s", v36, 0x20u);
    swift_arrayDestroy();

    v10 = v199;
    v196 = v198[1].isa;
    v196(v30, v199);
  }

  else
  {

    v196 = v11[1].isa;
    v196(v30, v10);
    v43 = v197;
  }

  v53 = v202;
  v52 = v203;
  if (v35 <= 0xE)
  {
    v74 = v10;
    sub_100009708(v203, v43);
    sub_10005A084();
    if (v53)
    {
      sub_10001C120(v52, v43);
      return v32;
    }

    v76 = v75;
    if (!(v75 >> 62))
    {
      v32 = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_27:
      v54 = v203;
      v202 = v53;
      if (!v32)
      {
LABEL_103:

        v109 = v189;
        defaultLogger()();
        sub_100032EBC(v54, v43);
        v110 = v54;
        v111 = Logger.logObject.getter();
        v112 = static os_log_type_t.debug.getter();
        sub_10001C120(v110, v43);
        if (os_log_type_enabled(v111, v112))
        {
          v113 = v43;
          v114 = swift_slowAlloc();
          v115 = v109;
          v116 = swift_slowAlloc();
          *&v206 = v116;
          *v114 = 136315138;
          v117 = Data.base16EncodedString()();
          v118 = sub_10010150C(v117._countAndFlagsBits, v117._object, &v206);

          *(v114 + 4) = v118;
          _os_log_impl(&_mh_execute_header, v111, v112, "No key was found with matching public key identifier %s", v114, 0xCu);
          sub_100005090(v116);

          sub_10001C120(v110, v113);
          v119 = v199;
          v120 = v115;
        }

        else
        {
          sub_10001C120(v110, v43);

          v120 = v109;
          v119 = v74;
        }

        v196(v120, v119);
        return 0;
      }

      v53 = 0;
      v201 = v76 & 0xC000000000000001;
      if (v203)
      {
        v77 = 0;
      }

      else
      {
        v77 = v43 == 0xC000000000000000;
      }

      v78 = !v77;
      LODWORD(v193) = v78;
      v194 = (v76 & 0xFFFFFFFFFFFFFF8);
      v195 = v43 >> 62;
      v79 = __OFSUB__(HIDWORD(v203), v203);
      LODWORD(v191) = v79;
      v190 = (HIDWORD(v203) - v203);
      v192 = BYTE6(v43);
      v200 = v76;
      while (1)
      {
        if (v201)
        {
          v80 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v53 >= *(v194 + 2))
          {
            goto LABEL_182;
          }

          v80 = *(v76 + 8 * v53 + 32);
        }

        v81 = v80;
        v10 = v53 + 1;
        if (__OFADD__(v53, 1))
        {
          goto LABEL_178;
        }

        v82 = [v80 publicKeyIdentifier];
        if (v82)
        {
          v83 = v82;
          v52 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v76 = v84;

          if (v76 >> 60 != 15)
          {
            v85 = v76 >> 62;
            if (v76 >> 62 == 3)
            {
              if (v52)
              {
                v86 = 0;
              }

              else
              {
                v86 = v76 == 0xC000000000000000;
              }

              v88 = !v86 || v195 < 3;
              if (((v88 | v193) & 1) == 0)
              {
                sub_100032EBC(0, 0xC000000000000000);
                sub_10001C120(0, 0xC000000000000000);
                v52 = 0;
                goto LABEL_155;
              }

              v89 = 0;
              v90 = v203;
            }

            else if (v85 > 1)
            {
              v90 = v203;
              if (v85 == 2)
              {
                v92 = *(v52 + 16);
                v91 = *(v52 + 24);
                v93 = __OFSUB__(v91, v92);
                v89 = v91 - v92;
                if (v93)
                {
                  goto LABEL_232;
                }
              }

              else
              {
                v89 = 0;
              }
            }

            else
            {
              v90 = v203;
              if (v85)
              {
                LODWORD(v89) = HIDWORD(v52) - v52;
                if (__OFSUB__(HIDWORD(v52), v52))
                {
                  goto LABEL_233;
                }

                v89 = v89;
              }

              else
              {
                v89 = BYTE6(v76);
              }
            }

            if (v195 > 1)
            {
              if (v195 == 2)
              {
                v96 = *(v90 + 16);
                v95 = *(v90 + 24);
                v93 = __OFSUB__(v95, v96);
                v94 = (v95 - v96);
                if (v93)
                {
                  goto LABEL_186;
                }

                goto LABEL_77;
              }

              if (!v89)
              {
LABEL_153:
                sub_100032EBC(v90, v43);
                sub_10001C120(v90, v43);
LABEL_155:
                sub_10001C120(v52, v76);
LABEL_156:

                v136 = v187;
                defaultLogger()();
                v137 = v203;
                sub_100032EBC(v203, v43);
                v32 = v81;
                v138 = Logger.logObject.getter();
                v139 = static os_log_type_t.debug.getter();

                sub_10001C120(v137, v43);
                if (!os_log_type_enabled(v138, v139))
                {
                  sub_10001C120(v137, v43);

                  v146 = v136;
                  v147 = v74;
                  goto LABEL_173;
                }

                v140 = swift_slowAlloc();
                *&v206 = swift_slowAlloc();
                *v140 = 136315394;
                v141 = [v32 identifier];
                if (v141)
                {
                  v142 = v141;
                  v143 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v145 = v144;
                }

                else
                {
                  v143 = 0x3E6C696E3CLL;
                  v145 = 0xE500000000000000;
                }

                v155 = sub_10010150C(v143, v145, &v206);

                *(v140 + 4) = v155;
                *(v140 + 12) = 2080;
                v156 = v203;
                v157 = v197;
                v158 = Data.base16EncodedString()();
                v159 = sub_10010150C(v158._countAndFlagsBits, v158._object, &v206);

                *(v140 + 14) = v159;
                _os_log_impl(&_mh_execute_header, v138, v139, "Found key %s with matching public key identifier %s", v140, 0x16u);
                swift_arrayDestroy();

                sub_10001C120(v156, v157);
                v146 = v187;
                goto LABEL_172;
              }
            }

            else
            {
              v94 = v192;
              if (v195)
              {
                v94 = v190;
                if (v191)
                {
                  goto LABEL_185;
                }
              }

LABEL_77:
              if (v89 == v94)
              {
                if (v89 < 1)
                {
                  goto LABEL_153;
                }

                if (v85 > 1)
                {
                  if (v85 != 2)
                  {
                    *(&v206 + 6) = 0;
                    *&v206 = 0;
                    sub_100032EBC(v90, v43);
                    sub_100032EBC(v90, v43);
                    sub_100032EBC(v52, v76);
LABEL_99:
                    v108 = v202;
                    sub_100100058(&v206, v90, v43, &v204);
                    v202 = v108;
                    if (v108)
                    {
                      goto LABEL_239;
                    }

                    sub_10001C120(v90, v43);
                    sub_10001C120(v52, v76);
                    sub_10001C120(v90, v43);
                    v107 = v204;
                    goto LABEL_101;
                  }

                  v97 = *(v52 + 16);
                  v188 = *(v52 + 24);
                  sub_100032EBC(v90, v43);
                  sub_100032EBC(v90, v43);
                  sub_100032EBC(v52, v76);
                  v98 = __DataStorage._bytes.getter();
                  if (v98)
                  {
                    v99 = __DataStorage._offset.getter();
                    if (__OFSUB__(v97, v99))
                    {
                      goto LABEL_236;
                    }

                    v98 += v97 - v99;
                  }

                  if (__OFSUB__(v188, v97))
                  {
                    goto LABEL_235;
                  }

                  __DataStorage._length.getter();
                  v100 = v98;
                  v101 = v202;
                  v90 = v203;
                  v43 = v197;
                  sub_100100058(v100, v203, v197, &v206);
                  v202 = v101;
                  if (v101)
                  {
                    goto LABEL_239;
                  }

                  sub_10001C120(v90, v43);
                  sub_10001C120(v52, v76);
                  sub_10001C120(v90, v43);
                  v102 = v206;
                  sub_10001C120(v52, v76);
                  v74 = v199;
                  if (v102)
                  {
                    goto LABEL_156;
                  }
                }

                else
                {
                  if (!v85)
                  {
                    *&v206 = v52;
                    WORD4(v206) = v76;
                    BYTE10(v206) = BYTE2(v76);
                    BYTE11(v206) = BYTE3(v76);
                    BYTE12(v206) = BYTE4(v76);
                    BYTE13(v206) = BYTE5(v76);
                    sub_100032EBC(v203, v43);
                    sub_100032EBC(v203, v43);
                    sub_100032EBC(v52, v76);
                    v90 = v203;
                    goto LABEL_99;
                  }

                  v188 = ((v52 >> 32) - v52);
                  if (v52 >> 32 < v52)
                  {
                    goto LABEL_234;
                  }

                  sub_100032EBC(v90, v43);
                  sub_100032EBC(v90, v43);
                  sub_100032EBC(v52, v76);
                  v103 = __DataStorage._bytes.getter();
                  if (v103)
                  {
                    v104 = __DataStorage._offset.getter();
                    if (__OFSUB__(v52, v104))
                    {
                      goto LABEL_237;
                    }

                    v103 += v52 - v104;
                  }

                  v74 = v199;
                  __DataStorage._length.getter();
                  v105 = v103;
                  v106 = v202;
                  v90 = v203;
                  v43 = v197;
                  sub_100100058(v105, v203, v197, &v206);
                  v202 = v106;
                  if (v106)
                  {
                    goto LABEL_239;
                  }

                  sub_10001C120(v90, v43);
                  sub_10001C120(v52, v76);
                  sub_10001C120(v90, v43);
                  v107 = v206;
LABEL_101:
                  sub_10001C120(v52, v76);
                  if (v107)
                  {
                    goto LABEL_156;
                  }
                }

LABEL_102:

                v54 = v203;
                goto LABEL_40;
              }
            }

            sub_100032EBC(v90, v43);
            sub_10001C120(v90, v43);
            sub_10001C120(v52, v76);
            goto LABEL_102;
          }

          v54 = v203;
        }

        else
        {
          v52 = 0;
          v76 = 0xF000000000000000;
        }

        sub_100032EBC(v54, v43);

        sub_10001C120(v52, v76);
        sub_10001C120(v54, v43);
LABEL_40:
        v76 = v200;
        ++v53;
        if (v10 == v32)
        {
          goto LABEL_103;
        }
      }
    }

LABEL_187:
    v32 = _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_27;
  }

  v43 = v201;
  if (v201)
  {
    v54 = v200;
    v55 = [v200 credentialIdentifier];
    if (v55)
    {
      v56 = v54;
      v57 = v55;
      v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v60 = v59;

      *&v206 = v58;
      *(&v206 + 1) = v60;
      v61._countAndFlagsBits = 11565;
      v61._object = 0xE200000000000000;
      String.append(_:)(v61);
      v62._countAndFlagsBits = v195;
      v62._object = v43;
      String.append(_:)(v62);
      v63 = v206;
      v64 = sub_100056960(v206, *(&v206 + 1));
      if (v53)
      {
        *&v206 = 0;
        *(&v206 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(31);

        *&v206 = 0xD00000000000001DLL;
        *(&v206 + 1) = 0x80000001001B4DB0;
        String.append(_:)(v63);

        v65 = v188;
        defaultLogger()();
        DIPRecordError(_:message:log:)();

        v66 = v65;
        v67 = v199;
        v196(v66, v199);
        v32 = 0;
        v53 = 0;
      }

      else
      {
        v32 = v64;

        if (v32)
        {
          v52 = v32;
          v127 = [v52 presentmentKeys];
          if (v127)
          {
            v128 = v127;
            v129 = [v127 anyObject];

            if (v129)
            {
              _bridgeAnyObjectToAny(_:)();
              swift_unknownObjectRelease();
            }

            else
            {
              v204 = 0u;
              v205 = 0u;
            }

            v67 = v199;
            v206 = v204;
            v207 = v205;
            if (*(&v205 + 1))
            {
              type metadata accessor for StoredCryptoKey();
              if (swift_dynamicCast())
              {
                v148 = v204;
                v149 = [v204 payload];
                if (v149)
                {

                  v76 = v186;
                  defaultLogger()();

                  v32 = v148;
                  v54 = Logger.logObject.getter();
                  LOBYTE(v74) = static os_log_type_t.debug.getter();

                  if (!os_log_type_enabled(v54, v74))
                  {

                    v196(v76, v199);
                    return v32;
                  }

                  v202 = 0;
                  v10 = swift_slowAlloc();
                  *&v206 = swift_slowAlloc();
                  *v10 = 136315394;
                  v150 = [v32 identifier];
                  if (v150)
                  {
                    v151 = v150;
                    v152 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v154 = v153;

                    v76 = v186;
                    goto LABEL_180;
                  }

LABEL_179:
                  v152 = 0x3E6C696E3CLL;
                  v154 = 0xE500000000000000;
LABEL_180:
                  v160 = sub_10010150C(v152, v154, &v206);

                  *(v10 + 4) = v160;
                  *(v10 + 12) = 2080;
                  *(v10 + 14) = sub_10010150C(v195, v201, &v206);
                  _os_log_impl(&_mh_execute_header, v54, v74, "Found key %s with relying party identifier %s", v10, 0x16u);
                  swift_arrayDestroy();

                  v146 = v76;
LABEL_172:
                  v147 = v199;
LABEL_173:
                  v196(v146, v147);
                  return v32;
                }
              }

              else
              {
              }

              goto LABEL_20;
            }
          }

          else
          {

            v206 = 0u;
            v207 = 0u;
            v67 = v199;
          }

          sub_10000B5B4(&v206);
        }

        else
        {
          v67 = v199;
        }
      }

LABEL_20:
      v68 = v191;
      defaultLogger()();

      v52 = Logger.logObject.getter();
      v69 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v52, v69))
      {
        v70 = swift_slowAlloc();
        v10 = 0;
        v71 = swift_slowAlloc();
        *&v206 = v71;
        *v70 = 136315138;
        *(v70 + 4) = sub_10010150C(v195, v43, &v206);
        _os_log_impl(&_mh_execute_header, v52, v69, "No existing RP found for relying party identifier %s", v70, 0xCu);
        sub_100005090(v71);
        v53 = 0;

        v72 = v199;
        v73 = v68;
      }

      else
      {

        v73 = v68;
        v72 = v67;
      }

      v196(v73, v72);
      v54 = v56;
    }
  }

  else
  {
    v54 = v200;
  }

  sub_10005A084();
  if (v53)
  {
    return v32;
  }

  v32 = v121;
  *&v206 = _swiftEmptyArrayStorage;
  if (v121 >> 62)
  {
    v74 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v74 = *((v121 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v123 = _swiftEmptyArrayStorage;
  v202 = 0;
  if (!v74)
  {
    v74 = _swiftEmptyArrayStorage;
    goto LABEL_130;
  }

  v124 = 0;
  v76 = v32 & 0xFFFFFFFFFFFFFF8;
  do
  {
    if ((v32 & 0xC000000000000001) != 0)
    {
      v125 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v124 >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_177;
      }

      v125 = *(v32 + 8 * v124 + 32);
    }

    v10 = v125;
    v52 = v124 + 1;
    if (__OFADD__(v124, 1))
    {
      __break(1u);
LABEL_177:
      __break(1u);
LABEL_178:
      __break(1u);
      goto LABEL_179;
    }

    v126 = [v125 payload];
    if (v126)
    {

      v54 = &v206;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v43 = *(v206 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    else
    {
    }

    ++v124;
  }

  while (v52 != v74);
  v74 = v206;
  v123 = _swiftEmptyArrayStorage;
LABEL_130:

  if (v74 < 0 || (v74 & 0x4000000000000000) != 0)
  {
    v130 = _CocoaArrayWrapper.endIndex.getter();
    if (!v130)
    {
      goto LABEL_190;
    }

LABEL_133:
    v76 = v74 & 0xC000000000000001;
    if ((v74 & 0xC000000000000001) != 0)
    {
      v131 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*(v74 + 16))
      {
        __break(1u);
        goto LABEL_229;
      }

      v131 = *(v74 + 32);
    }

    v132 = v131;
    if (v130 == 1)
    {
LABEL_137:
      v133 = v132;
LABEL_138:
      v134 = [v133 timesUsed];

      v123 = _swiftEmptyArrayStorage;
      goto LABEL_191;
    }

    v53 = 1;
    while (1)
    {
      if (v76)
      {
        v135 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if ((v53 & 0x8000000000000000) != 0)
        {
          goto LABEL_183;
        }

        if (v53 >= *(v74 + 16))
        {
          goto LABEL_184;
        }

        v135 = *(v74 + 8 * v53 + 32);
      }

      v133 = v135;
      v52 = v53 + 1;
      if (__OFADD__(v53, 1))
      {
        break;
      }

      v43 = [v135 timesUsed];
      if (v43 < [v132 timesUsed])
      {

        v132 = v133;
        ++v53;
        if (v52 == v130)
        {
          goto LABEL_138;
        }
      }

      else
      {

        ++v53;
        if (v52 == v130)
        {
          goto LABEL_137;
        }
      }
    }

    __break(1u);
LABEL_182:
    __break(1u);
LABEL_183:
    __break(1u);
LABEL_184:
    __break(1u);
LABEL_185:
    __break(1u);
LABEL_186:
    __break(1u);
    goto LABEL_187;
  }

  v130 = *(v74 + 16);
  if (v130)
  {
    goto LABEL_133;
  }

LABEL_190:
  v134 = 0;
LABEL_191:
  defaultLogger()();
  v161 = Logger.logObject.getter();
  v162 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v161, v162))
  {
    v43 = swift_slowAlloc();
    *v43 = 134217984;
    *(v43 + 4) = v134;
    _os_log_impl(&_mh_execute_header, v161, v162, "Minimum key times used is %lld", v43, 0xCu);
  }

  v203 = v198 + 1;
  v196(v194, v199);
  *&v206 = _swiftEmptyArrayStorage;
  if (!v130)
  {
LABEL_205:

    v52 = v193;
    v162 = v190;
    if (v123 < 0 || (v123 & 0x4000000000000000) != 0)
    {
      goto LABEL_220;
    }

    v165 = *(v123 + 16);
    v74 = v199;
    if (v165)
    {
      goto LABEL_208;
    }

    goto LABEL_224;
  }

  v163 = 0;
  while (1)
  {
    if ((v74 & 0xC000000000000001) != 0)
    {
      v164 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v163 >= *(v74 + 16))
      {
        goto LABEL_219;
      }

      v164 = *(v74 + 8 * v163 + 32);
    }

    v162 = v164;
    v123 = v163 + 1;
    if (__OFADD__(v163, 1))
    {
      break;
    }

    if ([v164 timesUsed] == v134)
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v43 = *(v206 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    else
    {
    }

    ++v163;
    if (v123 == v130)
    {
      v123 = v206;
      goto LABEL_205;
    }
  }

  __break(1u);
LABEL_219:
  __break(1u);
LABEL_220:
  v181 = _CocoaArrayWrapper.endIndex.getter();
  v74 = v199;
  if (!v181)
  {
LABEL_224:

    defaultLogger()();
    v182 = Logger.logObject.getter();
    v183 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v182, v183))
    {
      v184 = swift_slowAlloc();
      *v184 = 0;
      _os_log_impl(&_mh_execute_header, v182, v183, "No keys have minimum times used; this should not happen", v184, 2u);
    }

    v196(v162, v74);
    return 0;
  }

  v90 = v123;
  v165 = _CocoaArrayWrapper.endIndex.getter();
  if ((v165 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_239:
    result = sub_10001C120(v90, v43);
    __break(1u);
    return result;
  }

  v74 = v199;
  v52 = v193;
  if (!v165)
  {
    __break(1u);
    goto LABEL_224;
  }

LABEL_208:
  v166 = sub_10009EF98(v165);
  if ((v123 & 0xC000000000000001) != 0)
  {
LABEL_229:
    v167 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_212;
  }

  if ((v166 & 0x8000000000000000) != 0)
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
  }

  if (v166 >= *(v123 + 16))
  {
    goto LABEL_231;
  }

  v167 = *(v123 + 8 * v166 + 32);
LABEL_212:
  v168 = v167;

  defaultLogger()();
  v169 = v168;
  v170 = v52;
  v32 = v169;
  v171 = Logger.logObject.getter();
  v172 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v171, v172))
  {
    v173 = swift_slowAlloc();
    v174 = swift_slowAlloc();
    *&v206 = v174;
    *v173 = 136315138;
    v175 = [v32 identifier];
    if (v175)
    {
      v176 = v175;
      v177 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v179 = v178;
    }

    else
    {
      v177 = 0x3E6C696E3CLL;
      v179 = 0xE500000000000000;
    }

    v180 = sub_10010150C(v177, v179, &v206);

    *(v173 + 4) = v180;
    _os_log_impl(&_mh_execute_header, v171, v172, "Selected random key %s", v173, 0xCu);
    sub_100005090(v174);

    v196(v193, v199);
  }

  else
  {

    v196(v170, v74);
  }

  return v32;
}

void sub_1000A09B0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, void *a7)
{
  v36 = type metadata accessor for DIPError.Code();
  v32 = *(v36 - 8);
  v15 = *(v32 + 64);
  __chkstk_darwin(v36);
  v33 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10005634C(a4, a5);
  if (v7)
  {
    v19 = v32;
    v18 = v33;
LABEL_3:
    (*(v19 + 104))(v18, enum case for DIPError.Code.internalError(_:), v36);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    return;
  }

  if (!v17)
  {
    v34 = 0;
    v35 = 0xE000000000000000;
    _StringGuts.grow(_:)(33);

    v34 = 0xD00000000000001FLL;
    v35 = 0x80000001001B7B70;
    v24._countAndFlagsBits = a4;
    v24._object = a5;
    String.append(_:)(v24);
    v19 = v32;
    v18 = v33;
    (*(v32 + 104))(v33, enum case for DIPError.Code.invalidStoredData(_:), v36);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    goto LABEL_3;
  }

  if (a7)
  {
    v20 = v17;
    v34 = a2;
    v35 = a3;

    v21._countAndFlagsBits = 11565;
    v21._object = 0xE200000000000000;
    String.append(_:)(v21);
    v22._countAndFlagsBits = a6;
    v22._object = a7;
    String.append(_:)(v22);
    v23 = sub_100056960(v34, v35);
    if (v23)
    {
      v25 = v20;
      v26 = v23;

      v27 = v26;
    }

    else
    {
      type metadata accessor for StoredRelyingParty();
      v26 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext:*(a1 + 16)];
      v28 = String._bridgeToObjectiveC()();

      [v26 setRelyingPartyIdentifier:v28];

      v25 = v20;
      v27 = 0;
    }

    v29 = v27;
    [v26 addPresentmentKeysObject:v25];

    v17 = v25;
  }

  v30 = v17;
  v31 = [v17 timesUsed];
  if (__OFADD__(v31, 1))
  {
    __break(1u);
  }

  else
  {
    [v30 setTimesUsed:v31 + 1];
  }
}

uint64_t sub_1000A0DEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v7 = Hasher._finalize()();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

BOOL sub_1000A0EE4(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = *(a2 + 40);
  v5 = static Hasher._hash(seed:_:)();
  v6 = -1 << *(a2 + 32);
  v7 = v5 & ~v6;
  if (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  do
  {
    v9 = *(*(a2 + 48) + 8 * v7);
    result = v9 == a1;
    if (v9 == a1)
    {
      break;
    }

    v7 = (v7 + 1) & v8;
  }

  while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  return result;
}

BOOL sub_1000A0F8C(unsigned __int8 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a1;
  v4 = *(a2 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v3);
  v5 = Hasher._finalize()();
  v6 = -1 << *(a2 + 32);
  v7 = v5 & ~v6;
  if (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  do
  {
    v9 = *(*(a2 + 48) + v7);
    result = v9 == v3;
    if (v9 == v3)
    {
      break;
    }

    v7 = (v7 + 1) & v8;
  }

  while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  return result;
}

BOOL sub_1000A1058(Swift::UInt a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = *(a2 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v5 = Hasher._finalize()();
  v6 = -1 << *(a2 + 32);
  v7 = v5 & ~v6;
  if (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  do
  {
    v9 = *(*(a2 + 48) + 8 * v7);
    result = v9 == a1;
    if (v9 == a1)
    {
      break;
    }

    v7 = (v7 + 1) & v8;
  }

  while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  return result;
}

uint64_t sub_1000A1124(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v415 = a2;
  v410 = type metadata accessor for CredentialPresentmentElementRequestInfo.IntentToStore();
  v7 = *(v410 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v410);
  v387 = (&v371 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __chkstk_darwin(v9);
  v386 = &v371 - v12;
  __chkstk_darwin(v11);
  v395 = &v371 - v13;
  v14 = sub_100004E70(&qword_100202428, &qword_1001ACEB0);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v401 = &v371 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v402 = &v371 - v18;
  v423 = type metadata accessor for CredentialPresentmentElementRequestInfo();
  v19 = *(v423 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v423);
  v424 = &v371 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v412 = &v371 - v24;
  __chkstk_darwin(v23);
  v425 = &v371 - v25;
  v459 = type metadata accessor for ISO18013IssuerSignedItem();
  v26 = *(v459 - 8);
  v27 = *(v26 + 64);
  v28 = __chkstk_darwin(v459);
  v422 = &v371 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v421 = &v371 - v31;
  v32 = __chkstk_darwin(v30);
  v380 = &v371 - v33;
  v34 = __chkstk_darwin(v32);
  v385 = &v371 - v35;
  __chkstk_darwin(v34);
  v455 = &v371 - v36;
  v429 = type metadata accessor for Logger();
  v37 = *(v429 - 8);
  v38 = *(v37 + 64);
  v39 = __chkstk_darwin(v429);
  v398 = &v371 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v443 = &v371 - v41;
  v42 = a3;
  v461 = sub_100004E70(&qword_1002004D8, &qword_1001ACBF0);
  v43 = *(*(v461 - 8) + 64);
  v44 = __chkstk_darwin(v461);
  v438 = &v371 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __chkstk_darwin(v44);
  v400 = &v371 - v47;
  v48 = __chkstk_darwin(v46);
  v384 = &v371 - v49;
  v50 = __chkstk_darwin(v48);
  v453 = &v371 - v51;
  v52 = __chkstk_darwin(v50);
  v440 = &v371 - v53;
  v54 = __chkstk_darwin(v52);
  v464 = &v371 - v55;
  v56 = __chkstk_darwin(v54);
  v444 = &v371 - v57;
  __chkstk_darwin(v56);
  v411 = &v371 - v59;
  v60 = *(a1 + 56);
  v393 = a1 + 56;
  v61 = 1 << *(a1 + 32);
  if (v61 < 64)
  {
    v62 = ~(-1 << v61);
  }

  else
  {
    v62 = -1;
  }

  v63 = v62 & v60;
  v392 = (v61 + 63) >> 6;
  v469[1] = v58 + 16;
  v457 = v58 + 32;
  v458 = (v26 + 8);
  v460 = v58;
  v467 = (v58 + 8);
  v428 = (v37 + 8);
  v403 = (v19 + 16);
  v416 = (v19 + 56);
  v379 = (v19 + 32);
  v406 = enum case for CredentialPresentmentElementRequestInfo.IntentToStore.willNotStore(_:);
  v394 = (v7 + 104);
  v417 = (v19 + 48);
  v383 = (v7 + 32);
  v382 = (v7 + 88);
  v399 = enum case for CredentialPresentmentElementRequestInfo.IntentToStore.mayStore(_:);
  v373 = enum case for CredentialPresentmentElementRequestInfo.IntentToStore.displayOnly(_:);
  v372 = (v7 + 8);
  v378 = (v7 + 96);
  v64 = a4;
  v374 = v19;
  v397 = (v19 + 8);

  v391 = a1;

  v405 = 0;
  v404 = 0;
  v65 = 0;
  *&v66 = 136315394;
  v377 = v66;
  *&v66 = 136315650;
  v418 = v66;
  v462 = xmmword_1001AA160;
  v442 = v42;
LABEL_5:
  if (v63)
  {
    v439 = v42;
    v67 = v65;
    v68 = v461;
  }

  else
  {
    v68 = v461;
    do
    {
      v67 = v65 + 1;
      if (__OFADD__(v65, 1))
      {
        goto LABEL_239;
      }

      if (v67 >= v392)
      {

        sub_10000ED48(v405);
        sub_10000ED48(v404);
        return v442;
      }

      v63 = *(v393 + 8 * v67);
      ++v65;
    }

    while (!v63);
    v439 = v42;
  }

  v376 = (v63 - 1) & v63;
  v375 = v67;
  v69 = (*(v391 + 48) + 48 * (__clz(__rbit64(v63)) | (v67 << 6)));
  v70 = v69[1];
  v390 = *v69;
  v71 = v69[3];
  v381 = v69[2];
  v72 = v69[4];
  v73 = v69[5];
  v74 = *(v72 + 64);
  v445 = v72 + 64;
  v75 = 1 << *(v72 + 32);
  if (v75 < 64)
  {
    v76 = ~(-1 << v75);
  }

  else
  {
    v76 = -1;
  }

  v77 = v76 & v74;
  v396 = (v75 + 63) >> 6;
  v447 = v72;
  swift_bridgeObjectRetain_n();
  v434 = v70;

  v432 = v71;

  v446 = v73;

  v78 = 0;
  while (1)
  {
    if (!v77)
    {
      while (1)
      {
        v79 = v78 + 1;
        if (__OFADD__(v78, 1))
        {
          goto LABEL_238;
        }

        if (v79 >= v396)
        {
          break;
        }

        v77 = *(v445 + 8 * v79);
        ++v78;
        if (v77)
        {
          goto LABEL_21;
        }
      }

      v65 = v375;
      v42 = v439;
      v63 = v376;
      goto LABEL_5;
    }

    v79 = v78;
LABEL_21:
    v389 = (v77 - 1) & v77;
    v388 = v79;
    v80 = __clz(__rbit64(v77)) | (v79 << 6);
    v81 = (*(v447 + 48) + 16 * v80);
    v82 = *(*(v447 + 56) + 8 * v80);
    v83 = v81[1];
    v427 = *v81;
    v84 = v82 + 56;
    v85 = 1 << *(v82 + 32);
    v86 = v85 < 64 ? ~(-1 << v85) : -1;
    v87 = v86 & *(v82 + 56);
    v88 = (v85 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v430 = v83;
    v89 = v88;

    v90 = 0;
    v408 = v82 + 56;
    v407 = v88;
    v409 = v82;
    if (v87)
    {
      break;
    }

    while (1)
    {
LABEL_25:
      v91 = v90 + 1;
      if (__OFADD__(v90, 1))
      {
        goto LABEL_237;
      }

      if (v91 >= v89)
      {
        break;
      }

      v87 = *(v84 + 8 * v91);
      ++v90;
      if (v87)
      {
        v90 = v91;
        goto LABEL_29;
      }
    }

    v78 = v388;
    v77 = v389;
  }

LABEL_29:
  v414 = (v87 - 1) & v87;
  v413 = v90;
  v92 = *(v82 + 48);
  v93 = v460;
  v468 = *(v460 + 72);
  v94 = v411;
  v469[0] = *(v460 + 16);
  (v469[0])(v411, v92 + v468 * (__clz(__rbit64(v87)) | (v90 << 6)), v68);
  v456 = *(v93 + 32);
  v456(v444, v94, v68);
  v95 = v442 + 64;
  v96 = 1 << *(v442 + 32);
  if (v96 < 64)
  {
    v97 = ~(-1 << v96);
  }

  else
  {
    v97 = -1;
  }

  v449 = v97 & *(v442 + 64);
  v437 = (v96 + 63) >> 6;

  v99 = 0;
  v448 = v98;
  v431 = v95;
  while (1)
  {
LABEL_34:
    v450 = v64;
    v68 = v446;
    v100 = v449;
    if (!v449)
    {
      while (1)
      {
        v101 = v99 + 1;
        if (__OFADD__(v99, 1))
        {
          goto LABEL_233;
        }

        if (v101 >= v437)
        {
          break;
        }

        v100 = *(v95 + 8 * v101);
        ++v99;
        if (v100)
        {
          goto LABEL_39;
        }
      }

      v209 = v448;
      if (*(v448 + 16) && (v210 = sub_100099644(v427, v430), (v211 & 1) != 0))
      {
        v212 = *(*(*(v209 + 56) + 8 * v210) + 16);

        v466 = -v212;
        v214 = -1;
        v470 = v213;
        v215 = v213;
        v68 = v461;
        do
        {
          LODWORD(v465) = v466 + v214 != -1;
          if (v466 + v214 == -1)
          {
            break;
          }

          if (++v214 >= *(v470 + 16))
          {
            goto LABEL_240;
          }

          (v469[0])(v438, v215 + ((*(v460 + 80) + 32) & ~*(v460 + 80)), v68);
          v217 = v421;
          CBOREncodedCBOR.value.getter();
          v471 = ISO18013IssuerSignedItem.elementIdentifier.getter();
          v219 = v218;
          v220 = *v458;
          v221 = v217;
          v222 = v459;
          (*v458)(v221, v459);
          v223 = v422;
          CBOREncodedCBOR.value.getter();
          v224 = ISO18013IssuerSignedItem.elementIdentifier.getter();
          v226 = v225;
          v220(v223, v222);
          if (v471 == v224 && v219 == v226)
          {

            (*v467)(v438, v461);
            break;
          }

          v215 += v468;
          v216 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v68 = v461;
          (*v467)(v438, v461);
        }

        while ((v216 & 1) == 0);

        v64 = v450;
        v209 = v448;
        v227 = v465;
        if (!*(v450 + 16))
        {
          goto LABEL_126;
        }
      }

      else
      {
        v227 = 0;
        if (!v64[2])
        {
          goto LABEL_126;
        }
      }

      v228 = sub_100099644(v427, v430);
      v209 = v448;
      if (v229)
      {
        v230 = *(v64[7] + 8 * v228);
        __chkstk_darwin(v228);
        *(&v371 - 2) = v444;

        v231 = v426;
        v232 = sub_100120DA4(sub_1000BAE7C, (&v371 - 4), v230);
        v426 = v231;

        if (v227)
        {
          v233 = &v475;
LABEL_142:
          v442 = *(v233 - 32);
          goto LABEL_143;
        }

LABEL_128:
        v234 = v430;
        (v469[0])(v400, v444, v461);
        sub_10000ED48(v405);
        v68 = v439;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v472[0] = v68;
        v237 = sub_100099644(v427, v234);
        v238 = *(v68 + 16);
        v239 = (v236 & 1) == 0;
        v240 = v238 + v239;
        if (__OFADD__(v238, v239))
        {
          goto LABEL_243;
        }

        v241 = v236;
        if (*(v68 + 24) < v240)
        {
          sub_100108418(v240, isUniquelyReferenced_nonNull_native);
          v68 = v472[0];
          v242 = sub_100099644(v427, v430);
          if ((v241 & 1) != (v243 & 1))
          {
            goto LABEL_250;
          }

          v237 = v242;
          v244 = v472[0];
          if (v241)
          {
            goto LABEL_137;
          }

LABEL_135:
          v244[(v237 >> 6) + 8] |= 1 << v237;
          v245 = (v244[6] + 16 * v237);
          v246 = v430;
          *v245 = v427;
          v245[1] = v246;
          *(v244[7] + 8 * v237) = _swiftEmptyArrayStorage;
          v247 = v244[2];
          v248 = __OFADD__(v247, 1);
          v249 = v247 + 1;
          if (v248)
          {
            goto LABEL_245;
          }

          v244[2] = v249;

          goto LABEL_137;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          v244 = v472[0];
          if ((v236 & 1) == 0)
          {
            goto LABEL_135;
          }
        }

        else
        {
          v68 = v472;
          sub_100109AB0();
          v244 = v472[0];
          if ((v241 & 1) == 0)
          {
            goto LABEL_135;
          }
        }

LABEL_137:
        v439 = v244;
        v250 = v244[7];
        v251 = *(v250 + 8 * v237);
        v252 = swift_isUniquelyReferenced_nonNull_native();
        *(v250 + 8 * v237) = v251;
        if ((v252 & 1) == 0)
        {
          v251 = sub_100100C9C(0, *(v251 + 2) + 1, 1, v251);
          *(v250 + 8 * v237) = v251;
        }

        v254 = *(v251 + 2);
        v253 = *(v251 + 3);
        if (v254 >= v253 >> 1)
        {
          v251 = sub_100100C9C(v253 > 1, v254 + 1, 1, v251);
          *(v250 + 8 * v237) = v251;
        }

        *(v251 + 2) = v254 + 1;
        v456(&v251[((*(v460 + 80) + 32) & ~*(v460 + 80)) + v254 * v468], v400, v461);
        v405 = sub_1000BDCF8;
        v233 = v469;
        goto LABEL_142;
      }

LABEL_126:
      v232 = 0;
      if (v227)
      {
        v442 = v209;
LABEL_143:
        v255 = DocumentRequest.namespaces.getter();
        if (*(v255 + 16) && (v256 = sub_100099644(v390, v434), (v257 & 1) != 0) && (v258 = *(*(v255 + 56) + 8 * v256), , , *(v258 + 16)) && (v259 = sub_100099644(v381, v432), (v260 & 1) != 0))
        {
          v261 = v374;
          v262 = v402;
          v263 = v423;
          (*(v374 + 16))(v402, *(v258 + 56) + *(v374 + 72) * v259, v423);

          v264 = *(v261 + 56);
          v264(v262, 0, 1, v263);
          (*(v261 + 32))(v425, v262, v263);
          v265 = v410;
        }

        else
        {

          v264 = *v416;
          v266 = v402;
          v267 = v423;
          (*v416)(v402, 1, 1, v423);
          v265 = v410;
          (*v394)(v395, v406, v410);
          CredentialPresentmentElementRequestInfo.init(intentToStore:)();
          if ((*v417)(v266, 1, v267) != 1)
          {
            sub_10000A0D4(v266, &qword_100202428, &qword_1001ACEB0);
          }
        }

        v268 = DocumentRequest.namespaces.getter();
        if (!*(v268 + 16) || (v269 = sub_100099644(v427, v430), (v270 & 1) == 0))
        {

          v280 = v401;
          v282 = v423;
          v264(v401, 1, 1, v423);
          goto LABEL_156;
        }

        v271 = *(*(v268 + 56) + 8 * v269);

        v272 = v380;
        CBOREncodedCBOR.value.getter();
        v273 = ISO18013IssuerSignedItem.elementIdentifier.getter();
        v275 = v274;
        (*v458)(v272, v459);
        if (*(v271 + 16))
        {
          v276 = sub_100099644(v273, v275);
          v278 = v277;

          if (v278)
          {
            v279 = *(v271 + 56) + *(v374 + 72) * v276;
            v280 = v401;
            (*(v374 + 16))(v401, v279, v423);

            v281 = 0;
            goto LABEL_160;
          }
        }

        else
        {
        }

        v281 = 1;
        v280 = v401;
LABEL_160:
        v282 = v423;
        v264(v280, v281, 1, v423);
        v284 = (*v417)(v280, 1, v282);
        v265 = v410;
        if (v284 != 1)
        {
          v283 = v412;
          (*v379)(v412, v280, v282);
          goto LABEL_162;
        }

LABEL_156:
        v283 = v412;
        (*v403)(v412, v425, v282);
        if ((*v417)(v280, 1, v282) != 1)
        {
          sub_10000A0D4(v280, &qword_100202428, &qword_1001ACEB0);
        }

LABEL_162:
        v285 = v425;
        CredentialPresentmentElementRequestInfo.merging(_:)();
        if (v232)
        {
          sub_1000BD16C(&qword_100202450, &type metadata accessor for CredentialPresentmentElementRequestInfo);
          v286 = v423;
          if (dispatch thunk of static Equatable.== infix(_:_:)())
          {
            v287 = *v397;
            (*v397)(v424, v286);
            v287(v283, v286);
            v287(v285, v286);
LABEL_184:
            v64 = v450;
LABEL_185:
            v68 = v461;
            v307 = v467;
            goto LABEL_203;
          }

          v294 = v450;
          if (!*(v450 + 16) || (v295 = sub_100099644(v427, v430), (v296 & 1) == 0))
          {
            v305 = *v397;
            v306 = v423;
            (*v397)(v424, v423);
            v305(v412, v306);
            v305(v425, v306);
            goto LABEL_184;
          }

          v297 = *(*(v294 + 56) + 8 * v295);
          if (v297 >> 62)
          {
            if (v297 < 0)
            {
              v347 = *(*(v294 + 56) + 8 * v295);
            }

            v298 = _CocoaArrayWrapper.endIndex.getter();
            if (v298)
            {
LABEL_171:
              v472[0] = _swiftEmptyArrayStorage;

              v68 = v472;
              specialized ContiguousArray.reserveCapacity(_:)();
              if (v298 < 0)
              {
                goto LABEL_247;
              }

              v299 = 0;
              while (1)
              {
                v300 = v299 + 1;
                if (__OFADD__(v299, 1))
                {
                  goto LABEL_241;
                }

                if ((v297 & 0xC000000000000001) != 0)
                {
                  v301 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                }

                else
                {
                  if (v299 >= *((v297 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_242;
                  }

                  v301 = *(v297 + 8 * v299 + 32);
                }

                v68 = v301;
                v474 = v301;
                v302 = v426;
                sub_100095A58(&v474, v424, &v476);
                v426 = v302;
                if (v302)
                {
                  goto LABEL_249;
                }

                v68 = v472;
                specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
                v303 = *(v472[0] + 16);
                specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
                specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                specialized ContiguousArray._endMutation()();
                ++v299;
                if (v300 == v298)
                {

                  v304 = v472[0];
                  goto LABEL_213;
                }
              }
            }
          }

          else
          {
            v298 = *((v297 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v298)
            {
              goto LABEL_171;
            }
          }

          v304 = _swiftEmptyArrayStorage;
LABEL_213:
          v68 = v450;
          v348 = swift_isUniquelyReferenced_nonNull_native();
          v472[0] = v68;
          v349 = sub_100099644(v427, v430);
          v351 = *(v68 + 16);
          v352 = (v350 & 1) == 0;
          v248 = __OFADD__(v351, v352);
          v353 = v351 + v352;
          if (v248)
          {
            goto LABEL_246;
          }

          v354 = v350;
          if (*(v68 + 24) < v353)
          {
            sub_100108A98(v353, v348);
            v349 = sub_100099644(v427, v430);
            if ((v354 & 1) != (v355 & 1))
            {
              goto LABEL_250;
            }

            v356 = v424;
            v357 = v472[0];
            if ((v354 & 1) == 0)
            {
              goto LABEL_217;
            }

LABEL_221:
            v364 = v357[7];
            v365 = *(v364 + 8 * v349);
            *(v364 + 8 * v349) = v304;

            v366 = *v397;
            v367 = v356;
            v368 = v423;
            (*v397)(v367, v423);
            v366(v412, v368);
            v366(v425, v368);
            v64 = v357;
            goto LABEL_185;
          }

          v356 = v424;
          if (v348)
          {
            v357 = v472[0];
            if (v350)
            {
              goto LABEL_221;
            }
          }

          else
          {
            v369 = v349;
            sub_100109EF8();
            v356 = v424;
            v349 = v369;
            v357 = v472[0];
            if (v354)
            {
              goto LABEL_221;
            }
          }

LABEL_217:
          v357[(v349 >> 6) + 8] |= 1 << v349;
          v358 = (v357[6] + 16 * v349);
          v359 = v430;
          *v358 = v427;
          v358[1] = v359;
          *(v357[7] + 8 * v349) = v304;
          v360 = *v397;

          v361 = v356;
          v68 = v423;
          v360(v361, v423);
          v360(v412, v68);
          v360(v425, v68);
          v362 = v357[2];
          v248 = __OFADD__(v362, 1);
          v363 = v362 + 1;
          if (v248)
          {
            goto LABEL_248;
          }

          v64 = v357;
          v357[2] = v363;
          goto LABEL_185;
        }

        v288 = v386;
        CredentialPresentmentElementRequestInfo.intentToStore.getter();
        v289 = v387;
        (*v383)(v387, v288, v265);
        v290 = (*v382)(v289, v265);
        v291 = v290;
        if (v290 == v399)
        {
          (*v378)(v289, v265);
          v292 = *v289;
          v293 = 1;
        }

        else if (v290 == v406)
        {
          v292 = 0;
          v293 = 2;
        }

        else if (v290 == v373)
        {
          v292 = 0;
          v293 = 3;
        }

        else
        {
          (*v372)(v289, v265);
          v293 = 0;
          v292 = 0;
        }

        v308 = v385;
        CBOREncodedCBOR.value.getter();
        ISO18013IssuerSignedItem.elementIdentifier.getter();
        v309 = *v458;
        (*v458)(v308, v459);
        if (v291 != v399)
        {
          v292 = NSNotFound.getter();
        }

        v310 = objc_allocWithZone(DCPresentmentRequestedElement);
        v311 = String._bridgeToObjectiveC()();

        v312 = [v310 initWithElementIdentifier:v311 intentToRetain:v293 retentionPeriod:v292];

        sub_10000ED48(v404);
        v68 = v450;
        v313 = swift_isUniquelyReferenced_nonNull_native();
        v472[0] = v68;
        v314 = sub_100099644(v427, v430);
        v316 = *(v68 + 16);
        v317 = (v315 & 1) == 0;
        v248 = __OFADD__(v316, v317);
        v318 = v316 + v317;
        v319 = v384;
        if (v248)
        {
          goto LABEL_244;
        }

        v320 = v315;
        if (*(v68 + 24) >= v318)
        {
          if ((v313 & 1) == 0)
          {
            v346 = v314;
            sub_100109EF8();
            v314 = v346;
            v322 = v472[0];
            if (v320)
            {
              goto LABEL_198;
            }

            goto LABEL_197;
          }
        }

        else
        {
          sub_100108A98(v318, v313);
          v314 = sub_100099644(v427, v430);
          if ((v320 & 1) != (v321 & 1))
          {
            goto LABEL_250;
          }
        }

        v322 = v472[0];
        if (v320)
        {
LABEL_198:
          v450 = v322;
          v324 = (*(v322 + 56) + 8 * v314);
          v325 = v312;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((*v324 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v324 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v345 = *((*v324 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          defaultLogger()();
          (v469[0])(v319, v444, v461);

          v471 = v325;

          v326 = v432;

          v327 = v326;
          v328 = Logger.logObject.getter();
          v329 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v328, v329))
          {
            v330 = swift_slowAlloc();
            v331 = v309;
            v470 = swift_slowAlloc();
            v472[0] = v470;
            *v330 = v377;

            v332 = sub_10010150C(v381, v327, v472);

            *(v330 + 4) = v332;
            *(v330 + 12) = 2080;
            v333 = v455;
            v334 = v461;
            CBOREncodedCBOR.value.getter();
            v335 = ISO18013IssuerSignedItem.elementIdentifier.getter();
            v336 = v319;
            v338 = v337;
            v331(v333, v459);
            v307 = v467;
            (*v467)(v336, v334);
            v339 = sub_10010150C(v335, v338, v472);

            *(v330 + 14) = v339;
            _os_log_impl(&_mh_execute_header, v328, v329, "Adding element due to %s fallback: %s", v330, 0x16u);
            swift_arrayDestroy();

            (*v428)(v398, v429);
            v340 = *v397;
            v341 = v423;
            (*v397)(v424, v423);
            v340(v412, v341);
            v340(v425, v341);
            v404 = sub_1000BDCF8;
            v64 = v450;
            v68 = v461;
          }

          else
          {

            v307 = v467;
            v342 = v461;
            (*v467)(v319, v461);
            (*v428)(v398, v429);
            v343 = *v397;
            v344 = v423;
            (*v397)(v424, v423);
            v343(v412, v344);
            v343(v425, v344);
            v404 = sub_1000BDCF8;
            v64 = v450;
            v68 = v342;
          }

LABEL_203:
          v82 = v409;
          v84 = v408;
          v89 = v407;
          (*v307)(v444, v68);
          v87 = v414;
          v90 = v413;
          if (v414)
          {
            goto LABEL_29;
          }

          goto LABEL_25;
        }

LABEL_197:
        v323 = v314;
        sub_100112C68(v314, v427, v430, _swiftEmptyArrayStorage, v322);

        v314 = v323;
        goto LABEL_198;
      }

      goto LABEL_128;
    }

    v101 = v99;
LABEL_39:
    v449 = v100;
    v102 = *(v442 + 48);
    v441 = v101;
    v103 = (v102 + ((v101 << 10) | (16 * __clz(__rbit64(v100)))));
    v104 = *v103;
    v105 = v103[1];
    v106 = *(v446 + 16);
    v452 = v105;
    v451 = v104;
    if (!v106)
    {
      v108 = &_swiftEmptySetSingleton;
      v109 = v448;
      goto LABEL_43;
    }

    v107 = sub_100099644(v104, v105);
    v108 = &_swiftEmptySetSingleton;
    v109 = v448;
    if (v110)
    {
      v108 = *(*(v446 + 56) + 8 * v107);
LABEL_43:
    }

    v111 = *(v109 + 16);
    v463 = v108;
    if (v111 && (v112 = sub_100099644(v451, v452), v68 = v448, (v113 & 1) != 0))
    {
      v114 = *(*(*(v448 + 56) + 8 * v112) + 16);

      v465 = v114;
      if (v114)
      {
        v116 = 0;
        v117 = v115;
        v118 = _swiftEmptyArrayStorage;
        v119 = v461;
        v120 = v440;
        v454 = v115;
        while (v116 < *(v115 + 16))
        {
          v470 = v117;
          v471 = v118;
          v466 = (*(v460 + 80) + 32) & ~*(v460 + 80);
          (v469[0])(v120, v117 + v466, v119);
          v476 = v463;
          sub_100004E70(&qword_1002004F8, &qword_1001AAFA8);
          v122 = swift_allocObject();
          *(v122 + 16) = v462;
          v123 = v455;
          CBOREncodedCBOR.value.getter();
          v124 = ISO18013IssuerSignedItem.elementIdentifier.getter();
          v126 = v125;
          (*v458)(v123, v459);
          *(v122 + 32) = v124;
          *(v122 + 40) = v126;
          v474 = v122;
          sub_100004E70(&qword_100201D00, &unk_1001ACF10);
          sub_100004E70(&qword_100201580, &qword_1001AB980);
          sub_100055454(&qword_100202440, &qword_100201D00, &unk_1001ACF10);
          sub_100055454(&qword_100202448, &qword_100201580, &qword_1001AB980);
          v68 = Collection<>.contains<A>(_:)();

          if (v68)
          {
            v119 = v461;
            (*v467)(v120, v461);
            v121 = v468;
            v118 = v471;
          }

          else
          {
            v119 = v461;
            v456(v453, v120, v461);
            v118 = v471;
            v127 = swift_isUniquelyReferenced_nonNull_native();
            v472[0] = v118;
            if ((v127 & 1) == 0)
            {
              v68 = v472;
              sub_10010A758(0, v118[2] + 1, 1);
              v120 = v440;
              v119 = v461;
              v118 = v472[0];
            }

            v121 = v468;
            v129 = v118[2];
            v128 = v118[3];
            if (v129 >= v128 >> 1)
            {
              v68 = v472;
              sub_10010A758(v128 > 1, v129 + 1, 1);
              v121 = v468;
              v120 = v440;
              v119 = v461;
              v118 = v472[0];
            }

            v118[2] = v129 + 1;
            v456(v118 + v466 + v129 * v121, v453, v119);
          }

          ++v116;
          v117 = v470 + v121;
          v115 = v454;
          if (v465 == v116)
          {
            goto LABEL_62;
          }
        }

LABEL_234:
        __break(1u);
        goto LABEL_235;
      }

      v118 = _swiftEmptyArrayStorage;
LABEL_62:

      v138 = v452;

      v139 = v439;
      v140 = swift_isUniquelyReferenced_nonNull_native();
      v472[0] = v139;
      sub_1001217B4(v118, v451, v138, v140);

      v439 = v472[0];
      v448 = v472[0];
      v108 = v463;
    }

    else
    {
      v130 = v452;

      v131 = sub_100099644(v451, v130);
      v133 = v132;

      if (v133)
      {
        v134 = v439;
        v135 = swift_isUniquelyReferenced_nonNull_native();
        v472[0] = v134;
        if (!v135)
        {
          sub_100109AB0();
          v134 = v472[0];
        }

        v136 = *(*(v134 + 48) + 16 * v131 + 8);

        v137 = *(*(v134 + 56) + 8 * v131);

        sub_10000C01C(v131, v134);
        v439 = v134;
        v448 = v134;
      }
    }

    v141 = v450;
    if (!*(v450 + 16) || (v142 = sub_100099644(v451, v452), (v143 & 1) == 0))
    {
      v156 = v452;

      v157 = v141;
      v158 = sub_100099644(v451, v156);
      v160 = v159;

      if (v160)
      {
        v161 = swift_isUniquelyReferenced_nonNull_native();
        v472[0] = v157;
        if (!v161)
        {
          sub_100109EF8();
          v157 = v472[0];
        }

        v450 = v157;
        v162 = *(*(v157 + 48) + 16 * v158 + 8);

        v163 = *(*(v157 + 56) + 8 * v158);

        sub_10000C01C(v158, v157);
      }

      goto LABEL_85;
    }

    v144 = *(*(v141 + 56) + 8 * v142);
    v472[0] = _swiftEmptyArrayStorage;
    v68 = v144 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v144 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v145 = v451;

    if (v68)
    {
      break;
    }

    v164 = _swiftEmptyArrayStorage;
LABEL_84:

    v165 = v452;

    v166 = v450;
    v167 = swift_isUniquelyReferenced_nonNull_native();
    v472[0] = v166;
    sub_100121834(v164, v145, v165, v167);

    v450 = v472[0];
LABEL_85:
    v449 &= v449 - 1;
    defaultLogger()();
    v168 = v447;

    v169 = v452;

    v170 = Logger.logObject.getter();
    v171 = static os_log_type_t.debug.getter();

    v172 = v170;

    v433 = v171;
    if (os_log_type_enabled(v170, v171))
    {
      v68 = swift_slowAlloc();
      v419 = swift_slowAlloc();
      v476 = v419;
      *v68 = v418;
      v173 = sub_10010150C(v451, v169, &v476);

      *(v68 + 4) = v173;
      v420 = v68;
      *(v68 + 12) = 2080;
      v474 = _swiftEmptyArrayStorage;
      v174 = 1 << *(v168 + 32);
      if (v174 < 64)
      {
        v175 = ~(-1 << v174);
      }

      else
      {
        v175 = -1;
      }

      v176 = v175 & *(v168 + 64);
      v177 = (v174 + 63) >> 6;
      swift_bridgeObjectRetain_n();
      v178 = 0;
      v436 = v172;
      v435 = v177;
      while (v176)
      {
LABEL_96:
        v181 = __clz(__rbit64(v176)) | (v178 << 6);
        v182 = *(*(v168 + 48) + 16 * v181 + 8);
        v183 = *(*(v168 + 56) + 8 * v181);
        KeyPath = swift_getKeyPath();
        v185 = *(v183 + 16);
        if (v185)
        {
          v466 = KeyPath;
          v452 = v176;
          v454 = v178;
          v473 = _swiftEmptyArrayStorage;
          v451 = v182;

          sub_10010A6B4(0, v185, 0);
          v186 = v473;
          v187 = v183 + 56;
          v188 = -1 << *(v183 + 32);
          v189 = _HashTable.startBucket.getter();
          v68 = v461;
          v190 = v183;
          v465 = v183 + 56;
          while ((v189 & 0x8000000000000000) == 0 && v189 < 1 << *(v190 + 32))
          {
            if ((*(v187 + 8 * (v189 >> 6)) & (1 << v189)) == 0)
            {
              goto LABEL_228;
            }

            v470 = v185;
            LODWORD(v471) = *(v190 + 36);
            v191 = *(v190 + 48) + v189 * v468;
            v192 = v190;
            v193 = v464;
            (v469[0])(v464, v191, v68);
            swift_getAtKeyPath();
            (*v467)(v193, v68);
            v194 = v472[0];
            v195 = v472[1];
            v196 = v186;
            v473 = v186;
            v198 = v186[2];
            v197 = v186[3];
            if (v198 >= v197 >> 1)
            {
              sub_10010A6B4((v197 > 1), v198 + 1, 1);
              v68 = v461;
              v196 = v473;
            }

            v196[2] = v198 + 1;
            v199 = &v196[2 * v198];
            v199[4] = v194;
            v199[5] = v195;
            if (v189 >= -(-1 << *(v192 + 32)))
            {
              goto LABEL_229;
            }

            v187 = v465;
            if ((*(v465 + 8 * (v189 >> 6)) & (1 << v189)) == 0)
            {
              goto LABEL_230;
            }

            v190 = v192;
            if (v471 != *(v192 + 36))
            {
              goto LABEL_231;
            }

            v186 = v196;
            v189 = _HashTable.occupiedBucket(after:)();
            v185 = v470 - 1;
            if (v470 == 1)
            {

              v177 = v435;
              v178 = v454;
              v176 = v452;
              v179 = v186;
              v172 = v436;
              goto LABEL_90;
            }
          }

          __break(1u);
LABEL_228:
          __break(1u);
LABEL_229:
          __break(1u);
LABEL_230:
          __break(1u);
LABEL_231:
          __break(1u);
          goto LABEL_232;
        }

        v179 = _swiftEmptyArrayStorage;
LABEL_90:
        v176 &= v176 - 1;
        v68 = &v474;
        sub_1000FC91C(v179);
        v168 = v447;
      }

      while (1)
      {
        v180 = v178 + 1;
        if (__OFADD__(v178, 1))
        {
          break;
        }

        if (v180 >= v177)
        {

          v200 = Array.description.getter();
          v202 = v201;

          v203 = sub_10010150C(v200, v202, &v476);

          v204 = v420;
          *(v420 + 14) = v203;
          *(v204 + 22) = 2080;
          v205 = Set.description.getter();
          v207 = v206;

          v208 = sub_10010150C(v205, v207, &v476);

          *(v204 + 24) = v208;
          _os_log_impl(&_mh_execute_header, v172, v433, "Removing elements from namespace %s due to fallback %s: %s", v204, 0x20u);
          swift_arrayDestroy();

          (*v428)(v443, v429);
          v99 = v441;
          v64 = v450;
          v95 = v431;
          goto LABEL_34;
        }

        v176 = *(v445 + 8 * v180);
        ++v178;
        if (v176)
        {
          v178 = v180;
          goto LABEL_96;
        }
      }

LABEL_232:
      __break(1u);
LABEL_233:
      __break(1u);
      goto LABEL_234;
    }

    (*v428)(v443, v429);
    v99 = v441;
    v95 = v431;
    v64 = v450;
  }

  v146 = 0;
  v470 = v144 & 0xC000000000000001;
  v465 = v144;
  v466 = v144 & 0xFFFFFFFFFFFFFF8;
  v454 = v68;
  while (1)
  {
    if (v470)
    {
      v148 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v146 >= *(v466 + 16))
      {
        goto LABEL_236;
      }

      v148 = *(v144 + 8 * v146 + 32);
    }

    v149 = v148;
    v150 = v146 + 1;
    if (__OFADD__(v146, 1))
    {
      break;
    }

    v476 = v108;
    sub_100004E70(&qword_1002004F8, &qword_1001AAFA8);
    v151 = swift_allocObject();
    *(v151 + 16) = v462;
    v152 = [v149 elementIdentifier];
    v153 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v155 = v154;

    *(v151 + 32) = v153;
    *(v151 + 40) = v155;
    v474 = v151;
    sub_100004E70(&qword_100201D00, &unk_1001ACF10);
    v471 = v149;
    sub_100004E70(&qword_100201580, &qword_1001AB980);
    sub_100055454(&qword_100202440, &qword_100201D00, &unk_1001ACF10);
    sub_100055454(&qword_100202448, &qword_100201580, &qword_1001AB980);
    LOBYTE(v152) = Collection<>.contains<A>(_:)();

    if (v152)
    {
    }

    else
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v147 = *(v472[0] + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    v144 = v465;
    v68 = v454;
    ++v146;
    v108 = v463;
    if (v150 == v454)
    {
      v164 = v472[0];
      v145 = v451;
      goto LABEL_84;
    }
  }

LABEL_235:
  __break(1u);
LABEL_236:
  __break(1u);
LABEL_237:
  __break(1u);
LABEL_238:
  __break(1u);
LABEL_239:
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
  __break(1u);
LABEL_246:
  __break(1u);
LABEL_247:
  __break(1u);
LABEL_248:
  __break(1u);
LABEL_249:

  __break(1u);
LABEL_250:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1000A402C(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  v4 = type metadata accessor for DIPError.Code();
  v3[9] = v4;
  v5 = *(v4 - 8);
  v3[10] = v5;
  v6 = *(v5 + 64) + 15;
  v3[11] = swift_task_alloc();
  v7 = *(*(type metadata accessor for PresentmentRequestInterpreter.ReaderAuthResult(0) - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v8 = *(*(sub_100004E70(&qword_100202370, &qword_1001ACE68) - 8) + 64) + 15;
  v3[13] = swift_task_alloc();
  v9 = type metadata accessor for ISO18013ReaderRequest();
  v3[14] = v9;
  v10 = *(v9 - 8);
  v3[15] = v10;
  v11 = *(v10 + 64) + 15;
  v3[16] = swift_task_alloc();
  v12 = type metadata accessor for Logger();
  v3[17] = v12;
  v13 = *(v12 - 8);
  v3[18] = v13;
  v14 = *(v13 + 64) + 15;
  v3[19] = swift_task_alloc();

  return _swift_task_switch(sub_1000A420C, 0, 0);
}

uint64_t sub_1000A420C()
{
  v1 = *(v0 + 152);
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "PresentmentRequestInterpreter interpretRequest: DCPresentmentRequest", v4, 2u);
  }

  v6 = *(v0 + 144);
  v5 = *(v0 + 152);
  v7 = *(v0 + 136);
  v8 = *(v0 + 56);

  (*(v6 + 8))(v5, v7);
  v9 = [v8 sessionEstablishment];
  v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  *(v0 + 160) = v10;
  *(v0 + 168) = v12;
  v13 = [v8 sessionTranscript];
  if (v13)
  {
    v14 = v13;
    v15 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    *(v0 + 16) = v15;
    *(v0 + 24) = v17;
    sub_1000BD220();
    Collection.nilIfEmpty.getter();
    sub_1000092BC(v15, v17);
    v19 = *(v0 + 32);
    v18 = *(v0 + 40);
  }

  else
  {
    v19 = 0;
    v18 = 0xF000000000000000;
  }

  *(v0 + 176) = v19;
  *(v0 + 184) = v18;
  v20 = [*(v0 + 56) sessionEncryptionIntermediateKeyMaterial];
  if (v20)
  {
    v21 = v20;
    v22 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;
  }

  else
  {
    v22 = 0;
    v24 = 0xF000000000000000;
  }

  *(v0 + 192) = v22;
  *(v0 + 200) = v24;
  v25 = swift_task_alloc();
  *(v0 + 208) = v25;
  *v25 = v0;
  v25[1] = sub_1000A4454;
  v26 = *(v0 + 128);
  v27 = *(v0 + 104);
  v28 = *(v0 + 64);

  return sub_1000A6FBC(v26, v27, v10, v12, v19, v18, v22, v24);
}

uint64_t sub_1000A4454()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v4 = *v1;
  *(*v1 + 216) = v0;

  v5 = v2[23];
  v6 = v2[22];
  v7 = v2[21];
  v8 = v2[20];
  sub_10001C120(v2[24], v2[25]);
  sub_10001C120(v6, v5);
  sub_1000092BC(v8, v7);
  if (v0)
  {
    v9 = sub_1000A4DB0;
  }

  else
  {
    v9 = sub_1000A460C;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_1000A460C()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = DCPresentmentRequest.relyingPartyIdentifier.getter();
  v5 = v4;
  *(v0 + 224) = v4;
  v6 = *(v2 + 48);
  *(v0 + 232) = *(v2 + 64);
  v7 = *(v2 + 72);
  *(v0 + 296) = v7;
  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = v6;
  }

  v9 = swift_task_alloc();
  *(v0 + 240) = v9;
  *v9 = v0;
  v9[1] = sub_1000A46EC;
  v10 = *(v0 + 128);
  v11 = *(v0 + 96);
  v12 = *(v0 + 104);
  v13 = *(v0 + 64);

  return sub_1000A86D4(v11, v10, v3, v5, v8, v12);
}

uint64_t sub_1000A46EC()
{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v4 = *v1;
  *(*v1 + 248) = v0;

  v5 = *(v2 + 224);

  if (v0)
  {
    v6 = sub_1000A4F68;
  }

  else
  {
    v6 = sub_1000A4820;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1000A4820()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 128);
  v3 = sub_1000964C4((*(v0 + 232) == 1) & ~*(v0 + 296), *(*(v0 + 96) + 24));
  *(v0 + 256) = v3;
  if (v1)
  {
    v5 = *(v0 + 120);
    v4 = *(v0 + 128);
    v7 = *(v0 + 104);
    v6 = *(v0 + 112);
    sub_1000BB9CC(*(v0 + 96), type metadata accessor for PresentmentRequestInterpreter.ReaderAuthResult);
    sub_10000A0D4(v7, &qword_100202370, &qword_1001ACE68);
    (*(v5 + 8))(v4, v6);
    v8 = *(v0 + 152);
    v9 = *(v0 + 128);
    v10 = *(v0 + 104);
    v24 = *(v0 + 96);
    (*(*(v0 + 80) + 104))(*(v0 + 88), enum case for DIPError.Code.internalError(_:), *(v0 + 72));
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000BD16C(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v11 = *(v0 + 8);

    return v11();
  }

  else
  {
    v13 = v3;
    v14 = [*(v0 + 56) requiredPublicKeyIdentifier];
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

    *(v0 + 264) = v16;
    *(v0 + 272) = v18;
    v19 = swift_task_alloc();
    *(v0 + 280) = v19;
    *v19 = v0;
    v19[1] = sub_1000A4B30;
    v20 = *(v0 + 96);
    v21 = *(v0 + 104);
    v22 = *(v0 + 64);
    v23 = *(v0 + 48);

    return sub_1000A5DD0(v23, v13, v20, v16, v18, v21);
  }
}

uint64_t sub_1000A4B30()
{
  v2 = *v1;
  v3 = *(*v1 + 280);
  v4 = *v1;
  *(*v1 + 288) = v0;

  v5 = v2[34];
  v6 = v2[33];
  v7 = v2[32];
  if (v0)
  {
    sub_10001C120(v6, v5);

    v8 = sub_1000A5154;
  }

  else
  {

    sub_10001C120(v6, v5);
    v8 = sub_1000A4CB8;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_1000A4CB8()
{
  v1 = v0[19];
  v3 = v0[15];
  v2 = v0[16];
  v5 = v0[13];
  v4 = v0[14];
  v6 = v0[11];
  sub_1000BB9CC(v0[12], type metadata accessor for PresentmentRequestInterpreter.ReaderAuthResult);
  sub_10000A0D4(v5, &qword_100202370, &qword_1001ACE68);
  (*(v3 + 8))(v2, v4);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1000A4DB0()
{
  v1 = v0[27];
  v2 = v0[19];
  v3 = v0[16];
  v4 = v0[13];
  v7 = v0[12];
  (*(v0[10] + 104))(v0[11], enum case for DIPError.Code.internalError(_:), v0[9]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1000BD16C(&qword_100200200, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v5 = v0[1];

  return v5();
}

uint64_t sub_1000A4F68()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  sub_10000A0D4(v0[13], &qword_100202370, &qword_1001ACE68);
  (*(v2 + 8))(v1, v3);
  v4 = v0[31];
  v5 = v0[19];
  v6 = v0[16];
  v7 = v0[13];
  v10 = v0[12];
  (*(v0[10] + 104))(v0[11], enum case for DIPError.Code.internalError(_:), v0[9]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1000BD16C(&qword_100200200, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v8 = v0[1];

  return v8();
}

uint64_t sub_1000A5154()
{
  v2 = v0[15];
  v1 = v0[16];
  v4 = v0[13];
  v3 = v0[14];
  sub_1000BB9CC(v0[12], type metadata accessor for PresentmentRequestInterpreter.ReaderAuthResult);
  sub_10000A0D4(v4, &qword_100202370, &qword_1001ACE68);
  (*(v2 + 8))(v1, v3);
  v5 = v0[36];
  v6 = v0[19];
  v7 = v0[16];
  v8 = v0[13];
  v11 = v0[12];
  (*(v0[10] + 104))(v0[11], enum case for DIPError.Code.internalError(_:), v0[9]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1000BD16C(&qword_100200200, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v9 = v0[1];

  return v9();
}

uint64_t sub_1000A5360(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for DIPError.Code();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = *(*(sub_100004E70(&qword_100202370, &qword_1001ACE68) - 8) + 64) + 15;
  v3[8] = swift_task_alloc();
  v8 = *(*(type metadata accessor for PresentmentRequestInterpreter.ReaderAuthResult(0) - 8) + 64) + 15;
  v3[9] = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  v3[10] = v9;
  v10 = *(v9 - 8);
  v3[11] = v10;
  v11 = *(v10 + 64) + 15;
  v3[12] = swift_task_alloc();

  return _swift_task_switch(sub_1000A54E4, 0, 0);
}

uint64_t sub_1000A54E4()
{
  v1 = v0[12];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "PresentmentRequestInterpreter interpretRequest: DCPresentmentRequest", v4, 2u);
  }

  v6 = v0[11];
  v5 = v0[12];
  v7 = v0[10];
  v8 = v0[4];

  (*(v6 + 8))(v5, v7);
  if (*(v8 + 72))
  {
    v9 = 0;
  }

  else
  {
    v9 = *(v8 + 48);
  }

  v10 = swift_task_alloc();
  v0[13] = v10;
  *v10 = v0;
  v10[1] = sub_1000A563C;
  v11 = v0[9];
  v12 = v0[3];
  v13 = v0[4];

  return sub_1000AB1C0(v11, v12, v9);
}

uint64_t sub_1000A563C()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_1000A5A64;
  }

  else
  {
    v3 = sub_1000A5750;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000A5750()
{
  v1 = v0[8];
  v2 = v0[3];
  v3 = CredentialPresentmentRequest.useCases.getter();
  v0[15] = v3;
  v4 = type metadata accessor for ISO18013SessionTranscript();
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);
  v5 = swift_task_alloc();
  v0[16] = v5;
  *v5 = v0;
  v5[1] = sub_1000A5854;
  v7 = v0[8];
  v6 = v0[9];
  v8 = v0[4];
  v9 = v0[2];

  return sub_1000A5DD0(v9, v3, v6, 0, 0xF000000000000000, v7);
}

uint64_t sub_1000A5854()
{
  v2 = *(*v1 + 128);
  v3 = *(*v1 + 120);
  v4 = *(*v1 + 64);
  v7 = *v1;
  *(*v1 + 136) = v0;

  sub_10000A0D4(v4, &qword_100202370, &qword_1001ACE68);

  if (v0)
  {
    v5 = sub_1000A5C0C;
  }

  else
  {
    v5 = sub_1000A59B8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000A59B8()
{
  v1 = v0[12];
  v2 = v0[8];
  v3 = v0[7];
  sub_1000BB9CC(v0[9], type metadata accessor for PresentmentRequestInterpreter.ReaderAuthResult);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000A5A64()
{
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[8];
  v4 = v0[9];
  (*(v0[6] + 104))(v0[7], enum case for DIPError.Code.internalError(_:), v0[5]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1000BD16C(&qword_100200200, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v5 = v0[1];

  return v5();
}

uint64_t sub_1000A5C0C()
{
  sub_1000BB9CC(v0[9], type metadata accessor for PresentmentRequestInterpreter.ReaderAuthResult);
  v1 = v0[17];
  v2 = v0[12];
  v3 = v0[8];
  v4 = v0[9];
  (*(v0[6] + 104))(v0[7], enum case for DIPError.Code.internalError(_:), v0[5]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1000BD16C(&qword_100200200, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v5 = v0[1];

  return v5();
}

uint64_t sub_1000A5DD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[15] = a6;
  v7[16] = v6;
  v7[13] = a4;
  v7[14] = a5;
  v7[11] = a2;
  v7[12] = a3;
  v7[10] = a1;
  v8 = *(type metadata accessor for PresentmentProposal() - 8);
  v7[17] = v8;
  v9 = *(v8 + 64) + 15;
  v7[18] = swift_task_alloc();
  v7[19] = swift_task_alloc();
  v10 = type metadata accessor for DIPError.Code();
  v7[20] = v10;
  v11 = *(v10 - 8);
  v7[21] = v11;
  v12 = *(v11 + 64) + 15;
  v7[22] = swift_task_alloc();
  v13 = *(*(type metadata accessor for DIPSignpost.Config() - 8) + 64) + 15;
  v7[23] = swift_task_alloc();
  v14 = type metadata accessor for DIPSignpost();
  v7[24] = v14;
  v15 = *(v14 - 8);
  v7[25] = v15;
  v16 = *(v15 + 64) + 15;
  v7[26] = swift_task_alloc();
  v17 = type metadata accessor for Logger();
  v7[27] = v17;
  v18 = *(v17 - 8);
  v7[28] = v18;
  v19 = *(v18 + 64) + 15;
  v7[29] = swift_task_alloc();

  return _swift_task_switch(sub_1000A5FE4, 0, 0);
}

uint64_t sub_1000A5FE4()
{
  v1 = v0[29];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "PresentmentRequestInterpreter interpretRequest : CredentialPresentmentRequest", v4, 2u);
  }

  v6 = v0[28];
  v5 = v0[29];
  v8 = v0[26];
  v7 = v0[27];
  v9 = v0[23];

  (*(v6 + 8))(v5, v7);
  static IDCSSignposts.presentmentInterpretRequest.getter();
  DIPSignpost.init(_:)();
  v10 = swift_task_alloc();
  v0[30] = v10;
  *v10 = v0;
  v10[1] = sub_1000A613C;
  v11 = v0[16];
  v12 = v0[11];

  return sub_1000ACCF8(v12);
}

uint64_t sub_1000A613C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 240);
  v7 = *v2;
  *(v3 + 248) = a1;
  *(v3 + 256) = v1;

  if (v1)
  {
    v5 = sub_1000A6BCC;
  }

  else
  {
    v5 = sub_1000A6250;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000A6250()
{
  v1 = sub_1000E91B0(v0[31], *(v0[16] + 32));
  result = (v1 + 4);
  v3 = -v1[2];
  v4 = -1;
  while (v3 + v4 != -1)
  {
    if (++v4 >= v1[2])
    {
      __break(1u);
      return result;
    }

    v5 = result + 40;
    sub_10001A940(result, (v0 + 2));
    sub_100009278(v0 + 2, v0[5]);
    v6 = sub_100099A68();
    sub_100005090(v0 + 2);
    result = v5;
    if ((v6 & 1) == 0)
    {
      v7 = v0[31];
      v35 = v0[26];
      v9 = v0[21];
      v8 = v0[22];
      v10 = v0[20];

      (*(v9 + 104))(v8, enum case for DIPError.Code.idcsRestrictedElementRequested(_:), v10);
      sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_1000BD16C(&qword_100200200, &type metadata accessor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      DIPSignpost.end(workflowID:isBackground:)(0, 2);
      v34 = v0[29];
      v11 = v0[23];
      v12 = v0[21];
      v13 = v0[22];
      v14 = v0[20];
      v36 = v0[19];
      v15 = v0[18];
      (*(v0[25] + 8))(v0[26], v0[24]);
      (*(v12 + 104))(v13, enum case for DIPError.Code.internalError(_:), v14);
      swift_errorRetain();
      sub_10002688C(_swiftEmptyArrayStorage);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();

      v16 = v0[1];

      return v16();
    }
  }

  v17 = v0[16];
  v18 = v0[12];

  v19 = *(v17 + 48);
  v20 = *(v17 + 72);
  if (*(v18 + 16))
  {
    v21 = SecCertificateRef.derRepresentation.getter();
    v23 = v22;
  }

  else
  {
    v21 = 0;
    v23 = 0xF000000000000000;
  }

  if (v20)
  {
    v19 = 0;
  }

  v0[33] = v21;
  v0[34] = v23;
  v24 = v0[12];
  v25 = *v24;
  v26 = *(v24 + 8);
  v27 = v24 + *(type metadata accessor for PresentmentRequestInterpreter.ReaderAuthResult(0) + 32);
  v28 = *(v24 + 24);
  v29 = swift_task_alloc();
  v0[35] = v29;
  *v29 = v0;
  v29[1] = sub_1000A668C;
  v30 = v0[31];
  v31 = v0[16];
  v32 = v0[13];
  v33 = v0[14];

  return sub_1000ADDC8(v30, v32, v33, v19, v21, v23, v25, v26);
}

uint64_t sub_1000A668C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 280);
  v6 = *v2;
  v4[36] = a1;
  v4[37] = v1;

  v7 = v3[34];
  v8 = v3[33];
  v9 = v3[31];
  if (v1)
  {
    sub_10001C120(v8, v7);

    v10 = sub_1000A6DC4;
  }

  else
  {

    sub_10001C120(v8, v7);
    v10 = sub_1000A681C;
  }

  return _swift_task_switch(v10, 0, 0);
}

unint64_t sub_1000A681C()
{
  v1 = v0[36];
  result = sub_10010D068(_swiftEmptyArrayStorage);
  v3 = result;
  v43 = v1;
  v4 = *(v1 + 16);
  if (v4)
  {
    v5 = 0;
    v41 = v0[17];
    v39 = v0[36] + ((*(v41 + 80) + 32) & ~*(v41 + 80));
    while (1)
    {
      if (v5 >= *(v43 + 16))
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
        return result;
      }

      v8 = v0[18];
      v7 = v0[19];
      v9 = *(v41 + 72);
      sub_1000BCFA8(v39 + v9 * v5, v7, type metadata accessor for PresentmentProposal);
      v10 = [*v7 credentialIdentifier];
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      sub_1000BBB18(v7, v8, type metadata accessor for PresentmentProposal);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      result = sub_100099644(v11, v13);
      v16 = v3[2];
      v17 = (v15 & 1) == 0;
      v18 = __OFADD__(v16, v17);
      v19 = v16 + v17;
      if (v18)
      {
        goto LABEL_23;
      }

      v20 = v15;
      if (v3[3] < v19)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_11;
      }

      v26 = result;
      sub_100109F0C();
      result = v26;
      v22 = v0[18];
      if (v20)
      {
LABEL_3:
        v6 = result;

        result = sub_1000BD1BC(v22, v3[7] + v6 * v9);
        goto LABEL_4;
      }

LABEL_12:
      v3[(result >> 6) + 8] |= 1 << result;
      v23 = (v3[6] + 16 * result);
      *v23 = v11;
      v23[1] = v13;
      result = sub_1000BBB18(v22, v3[7] + result * v9, type metadata accessor for PresentmentProposal);
      v24 = v3[2];
      v18 = __OFADD__(v24, 1);
      v25 = v24 + 1;
      if (v18)
      {
        goto LABEL_24;
      }

      v3[2] = v25;
LABEL_4:
      if (v4 == ++v5)
      {
        goto LABEL_16;
      }
    }

    sub_100108AAC(v19, isUniquelyReferenced_nonNull_native);
    result = sub_100099644(v11, v13);
    if ((v20 & 1) != (v21 & 1))
    {

      return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    }

LABEL_11:
    v22 = v0[18];
    if (v20)
    {
      goto LABEL_3;
    }

    goto LABEL_12;
  }

LABEL_16:
  v27 = v0[36];
  v28 = v0[29];
  v29 = v0[25];
  v30 = v0[26];
  v31 = v0[24];
  v38 = v0[23];
  v40 = v0[22];
  v42 = v0[19];
  v44 = v0[18];
  v33 = v0[15];
  v32 = v0[16];
  v34 = v0[10];

  v35 = type metadata accessor for PresentmentRequestInterpretation(0);
  sub_100046360(v33, v34 + *(v35 + 20), &qword_100202370, &qword_1001ACE68);
  v36 = OBJC_IVAR____TtC7idcredd29PresentmentRequestInterpreter_identityReaderAuthenticator;
  swift_beginAccess();
  sub_100046360(v32 + v36, v34 + *(v35 + 24), &qword_100202378, &unk_1001ACE70);
  *v34 = v3;
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v29 + 8))(v30, v31);

  v37 = v0[1];

  return v37();
}

uint64_t sub_1000A6BCC()
{
  v1 = v0[26];
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  v2 = v0[32];
  v3 = v0[29];
  v4 = v0[23];
  v6 = v0[21];
  v5 = v0[22];
  v7 = v0[19];
  v8 = v0[20];
  v11 = v0[18];
  (*(v0[25] + 8))(v0[26], v0[24]);
  (*(v6 + 104))(v5, enum case for DIPError.Code.internalError(_:), v8);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1000BD16C(&qword_100200200, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v9 = v0[1];

  return v9();
}

uint64_t sub_1000A6DC4()
{
  v1 = v0[26];
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  v2 = v0[37];
  v3 = v0[29];
  v4 = v0[23];
  v6 = v0[21];
  v5 = v0[22];
  v7 = v0[19];
  v8 = v0[20];
  v11 = v0[18];
  (*(v0[25] + 8))(v0[26], v0[24]);
  (*(v6 + 104))(v5, enum case for DIPError.Code.internalError(_:), v8);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1000BD16C(&qword_100200200, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v9 = v0[1];

  return v9();
}

uint64_t sub_1000A6FBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[9] = a8;
  v9[10] = v8;
  v9[7] = a6;
  v9[8] = a7;
  v9[5] = a4;
  v9[6] = a5;
  v9[3] = a2;
  v9[4] = a3;
  v9[2] = a1;
  v10 = type metadata accessor for ISO18013ReaderRequest();
  v9[11] = v10;
  v11 = *(v10 - 8);
  v9[12] = v11;
  v12 = *(v11 + 64) + 15;
  v9[13] = swift_task_alloc();
  v9[14] = swift_task_alloc();
  v13 = type metadata accessor for ISO18013SessionEstablishment();
  v9[15] = v13;
  v14 = *(v13 - 8);
  v9[16] = v14;
  v15 = *(v14 + 64) + 15;
  v9[17] = swift_task_alloc();
  v9[18] = swift_task_alloc();
  v16 = *(*(type metadata accessor for DIPSignpost.Config() - 8) + 64) + 15;
  v9[19] = swift_task_alloc();
  v17 = type metadata accessor for DIPSignpost();
  v9[20] = v17;
  v18 = *(v17 - 8);
  v9[21] = v18;
  v19 = *(v18 + 64) + 15;
  v9[22] = swift_task_alloc();
  v9[23] = swift_task_alloc();
  v20 = type metadata accessor for DIPError.Code();
  v9[24] = v20;
  v21 = *(v20 - 8);
  v9[25] = v21;
  v22 = *(v21 + 64) + 15;
  v9[26] = swift_task_alloc();
  v23 = *(*(sub_100004E70(&qword_1002024E0, &qword_1001ACFF0) - 8) + 64) + 15;
  v9[27] = swift_task_alloc();
  v9[28] = swift_task_alloc();
  v9[29] = swift_task_alloc();
  v24 = type metadata accessor for ISO18013CodingKeyFormat();
  v9[30] = v24;
  v25 = *(v24 - 8);
  v9[31] = v25;
  v26 = *(v25 + 64) + 15;
  v9[32] = swift_task_alloc();
  v9[33] = swift_task_alloc();
  v27 = type metadata accessor for Logger();
  v9[34] = v27;
  v28 = *(v27 - 8);
  v9[35] = v28;
  v29 = *(v28 + 64) + 15;
  v9[36] = swift_task_alloc();
  v9[37] = swift_task_alloc();

  return _swift_task_switch(sub_1000A7310, 0, 0);
}

uint64_t sub_1000A7310()
{
  v1 = v0[37];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "PresentmentRequestInterpreter extractReaderRequest", v4, 2u);
  }

  v5 = v0[37];
  v6 = v0[34];
  v7 = v0[35];
  v8 = v0[10];

  v9 = *(v7 + 8);
  v0[38] = v9;
  v9(v5, v6);
  v10 = type metadata accessor for CBORDecoder();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v0[39] = CBORDecoder.init()();
  v13 = v0[33];
  v50 = v9;
  if (*(v8 + 72))
  {
    (*(v0[31] + 104))(v13, enum case for ISO18013CodingKeyFormat.standard(_:), v0[30]);
  }

  else
  {
    v15 = v0[31];
    v14 = v0[32];
    v16 = v0[30];
    sub_1000E1028(*(v0[10] + 64), v14);
    (*(v15 + 32))(v13, v14, v16);
  }

  v18 = v0[35];
  v17 = v0[36];
  v19 = v0[33];
  v20 = v0[34];
  v21 = v0[9];
  v23 = v0[4];
  v22 = v0[5];
  CBORDecoder.codingKeyFormat.setter();
  defaultLogger()();
  v24 = swift_task_alloc();
  *(v24 + 16) = v23;
  *(v24 + 24) = v22;
  Logger.sensitive(_:)();

  v0[40] = (v18 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v50(v17, v20);
  v25 = v0[36];
  if (v21 >> 60 == 15)
  {
    v26 = v0[36];
    defaultLogger()();
    Logger.sensitive(_:)();
  }

  else
  {
    v28 = v0[8];
    v27 = v0[9];
    sub_100009708(v28, v27);
    defaultLogger()();
    v29 = swift_task_alloc();
    *(v29 + 16) = v28;
    *(v29 + 24) = v27;
    Logger.sensitive(_:)();
    sub_10001C120(v28, v27);
  }

  v30 = v0[7];
  v50(v0[36], v0[34]);
  v31 = v0[28];
  if (v30 >> 60 == 15)
  {
    v32 = sub_100004E70(&qword_1002024E8, &qword_1001ACFF8);
    (*(*(v32 - 8) + 56))(v31, 1, 1, v32);
  }

  else
  {
    v34 = v0[6];
    v33 = v0[7];
    v35 = *(v10 + 48);
    v36 = *(v10 + 52);
    swift_allocObject();
    CBORDecoder.init()();
    v37 = sub_100004E70(&qword_1002024E8, &qword_1001ACFF8);
    sub_100055454(&qword_100202500, &qword_1002024E8, &qword_1001ACFF8);
    dispatch thunk of CBORDecoder.decode<A>(_:from:)();

    (*(*(v37 - 8) + 56))(v0[28], 0, 1, v37);
  }

  v38 = v0[23];
  v39 = v0[19];
  v40 = v0[17];
  v41 = v0[15];
  v43 = v0[4];
  v42 = v0[5];
  sub_100046524(v0[28], v0[29], &qword_1002024E0, &qword_1001ACFF0);
  static IDCSSignposts.presentmentDecodeSessionEstablishment.getter();
  DIPSignpost.init(_:)();
  sub_1000BD16C(&qword_1002024F0, &type metadata accessor for ISO18013SessionEstablishment);
  dispatch thunk of CBORDecoder.decode<A>(_:from:)();
  v0[41] = 0;
  v44 = v0[23];
  v45 = v0[10];
  (*(v0[16] + 32))(v0[18], v0[17], v0[15]);
  v46._countAndFlagsBits = 0x6232653638363036;
  v47._countAndFlagsBits = 0xD000000000000061;
  v47._object = 0x80000001001B8680;
  v46._object = 0xE800000000000000;
  logMilestone(tag:description:)(v46, v47);
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  v48 = *(v45 + 24);
  v0[42] = v48;

  return _swift_task_switch(sub_1000A7B88, v48, 0);
}

uint64_t sub_1000A7B88()
{
  v2 = v0[41];
  v1 = v0[42];
  v3 = sub_1000DD01C(v0[18], v0[6], v0[7], v0[8], v0[9]);
  v0[43] = v2;
  v0[44] = v3;
  v0[45] = v4;
  if (v2)
  {
    v5 = sub_1000A8384;
  }

  else
  {
    v5 = sub_1000A7C20;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000A7C20()
{
  v2 = v0[44];
  v1 = v0[45];
  v86 = v0[43];
  v3 = v0[40];
  v4 = v0[38];
  v5 = v0[36];
  v6 = v0[34];
  v73 = v0[22];
  v7 = v0[19];
  v78 = v0[13];
  v81 = v0[39];
  v8 = v0[11];
  v9._countAndFlagsBits = 0x3738393861336365;
  v10._countAndFlagsBits = 0xD000000000000053;
  v10._object = 0x80000001001B86F0;
  v9._object = 0xE800000000000000;
  logMilestone(tag:description:)(v9, v10);
  defaultLogger()();
  v11 = swift_task_alloc();
  *(v11 + 16) = v2;
  *(v11 + 24) = v1;
  Logger.sensitive(_:)();

  v4(v5, v6);
  static IDCSSignposts.presentmentDecodeReaderRequest.getter();
  DIPSignpost.init(_:)();
  sub_1000BD16C(&qword_1002024F8, &type metadata accessor for ISO18013ReaderRequest);
  dispatch thunk of CBORDecoder.decode<A>(_:from:)();
  if (v86)
  {
    v58 = v0[44];
    v59 = v0[45];
    v57 = v0[39];
    v87 = v0[29];
    v82 = v0[23];
    v12 = v0[21];
    v62 = v0[20];
    v65 = v0[22];
    v13 = v0[16];
    v69 = v0[15];
    v74 = v0[18];
    (*(v0[25] + 104))(v0[26], enum case for DIPError.Code.idcsInvalidReaderRequest(_:), v0[24]);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000BD16C(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    sub_1000092BC(v58, v59);

    v14 = *(v12 + 8);
    v14(v65, v62);
    (*(v13 + 8))(v74, v69);
    v14(v82, v62);
    sub_10000A0D4(v87, &qword_1002024E0, &qword_1001ACFF0);
    v16 = v0[36];
    v15 = v0[37];
    v18 = v0[32];
    v17 = v0[33];
    v20 = v0[28];
    v19 = v0[29];
    v22 = v0[26];
    v21 = v0[27];
    v23 = v0[22];
    v24 = v0[23];
    v66 = v0[19];
    v70 = v0[18];
    v75 = v0[17];
    v83 = v0[14];
    v88 = v0[13];

    v25 = v0[1];
  }

  else
  {
    v26 = v0[29];
    v27 = v0[27];
    v28 = v0[22];
    v29 = v0[14];
    v30 = v0[11];
    v31 = v0[12];
    v32 = v0[2];
    (*(v31 + 32))(v29, v0[13], v30);
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    (*(v31 + 16))(v32, v29, v30);
    sub_100046360(v26, v27, &qword_1002024E0, &qword_1001ACFF0);
    v33 = sub_100004E70(&qword_1002024E8, &qword_1001ACFF8);
    v34 = *(v33 - 8);
    v35 = (*(v34 + 48))(v27, 1, v33);
    v60 = v0[44];
    v63 = v0[45];
    v36 = v0[39];
    v89 = v0[29];
    v37 = v0[27];
    v38 = v0[21];
    v79 = v0[20];
    v84 = v0[23];
    v76 = v0[18];
    v39 = v0[16];
    v67 = v0[22];
    v71 = v0[15];
    v40 = v0[14];
    v42 = v0[11];
    v41 = v0[12];
    if (v35 == 1)
    {

      sub_1000092BC(v60, v63);
      (*(v41 + 8))(v40, v42);
      v43 = *(v38 + 8);
      v43(v67, v79);
      (*(v39 + 8))(v76, v71);
      v43(v84, v79);
      sub_10000A0D4(v89, &qword_1002024E0, &qword_1001ACFF0);
      sub_10000A0D4(v37, &qword_1002024E0, &qword_1001ACFF0);
      v44 = 1;
    }

    else
    {
      v45 = v0[3];
      CBOREncodedCBOR.value.getter();

      sub_1000092BC(v60, v63);
      (*(v41 + 8))(v40, v42);
      v46 = *(v38 + 8);
      v46(v67, v79);
      (*(v39 + 8))(v76, v71);
      v46(v84, v79);
      sub_10000A0D4(v89, &qword_1002024E0, &qword_1001ACFF0);
      (*(v34 + 8))(v37, v33);
      v44 = 0;
    }

    v47 = v0[36];
    v48 = v0[37];
    v50 = v0[32];
    v49 = v0[33];
    v52 = v0[28];
    v51 = v0[29];
    v53 = v0[27];
    v61 = v0[26];
    v64 = v0[23];
    v68 = v0[22];
    v72 = v0[19];
    v77 = v0[18];
    v80 = v0[17];
    v85 = v0[14];
    v90 = v0[13];
    v54 = v0[3];
    v55 = type metadata accessor for ISO18013SessionTranscript();
    (*(*(v55 - 8) + 56))(v54, v44, 1, v55);

    v25 = v0[1];
  }

  return v25();
}

uint64_t sub_1000A8384()
{
  v1 = v0[39];
  v2 = v0[29];
  v3 = v0[23];
  v4 = v0[20];
  v5 = v0[21];
  v6 = v0[18];
  v7 = v0[15];
  v8 = v0[16];

  (*(v8 + 8))(v6, v7);
  (*(v5 + 8))(v3, v4);
  sub_10000A0D4(v2, &qword_1002024E0, &qword_1001ACFF0);
  v10 = v0[36];
  v9 = v0[37];
  v12 = v0[32];
  v11 = v0[33];
  v14 = v0[28];
  v13 = v0[29];
  v16 = v0[26];
  v15 = v0[27];
  v17 = v0[22];
  v18 = v0[23];
  v21 = v0[19];
  v22 = v0[18];
  v23 = v0[17];
  v24 = v0[14];
  v25 = v0[13];
  v26 = v0[43];

  v19 = v0[1];

  return v19();
}

unint64_t sub_1000A8508()
{
  _StringGuts.grow(_:)(40);

  v0 = Data.base16EncodedString()();
  String.append(_:)(v0);

  return 0xD000000000000026;
}

unint64_t sub_1000A8598()
{
  _StringGuts.grow(_:)(44);

  v0 = Data.base16EncodedString()();
  String.append(_:)(v0);

  return 0xD00000000000002ALL;
}

unint64_t sub_1000A8644()
{
  _StringGuts.grow(_:)(30);

  v0 = Data.base16EncodedString()();
  String.append(_:)(v0);

  return 0xD00000000000001CLL;
}

uint64_t sub_1000A86D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[82] = v6;
  v7[81] = a6;
  v7[80] = a5;
  v7[79] = a4;
  v7[78] = a3;
  v7[77] = a2;
  v7[76] = a1;
  v8 = type metadata accessor for DIPError.Code();
  v7[83] = v8;
  v9 = *(v8 - 8);
  v7[84] = v9;
  v10 = *(v9 + 64) + 15;
  v7[85] = swift_task_alloc();
  v11 = type metadata accessor for ISO18013ReaderRequest.DocRequest();
  v7[86] = v11;
  v12 = *(v11 - 8);
  v7[87] = v12;
  v13 = *(v12 + 64) + 15;
  v7[88] = swift_task_alloc();
  v14 = *(*(sub_100004E70(&qword_1002014D0, &unk_1001AD120) - 8) + 64) + 15;
  v7[89] = swift_task_alloc();
  v15 = *(*(sub_100004E70(&qword_100202378, &unk_1001ACE70) - 8) + 64) + 15;
  v7[90] = swift_task_alloc();
  v16 = *(*(sub_100004E70(&qword_100201560, &unk_1001AB910) - 8) + 64) + 15;
  v7[91] = swift_task_alloc();
  v7[92] = swift_task_alloc();
  v17 = type metadata accessor for ISO18013ReaderRequest();
  v7[93] = v17;
  v18 = *(v17 - 8);
  v7[94] = v18;
  v19 = *(v18 + 64) + 15;
  v7[95] = swift_task_alloc();
  v7[96] = swift_task_alloc();
  v20 = type metadata accessor for IdentityReaderAuthenticator(0);
  v7[97] = v20;
  v21 = *(v20 - 8);
  v7[98] = v21;
  v22 = *(v21 + 64) + 15;
  v7[99] = swift_task_alloc();
  v23 = *(*(sub_100004E70(&qword_100202370, &qword_1001ACE68) - 8) + 64) + 15;
  v7[100] = swift_task_alloc();
  v24 = type metadata accessor for ISO18013SessionTranscript();
  v7[101] = v24;
  v25 = *(v24 - 8);
  v7[102] = v25;
  v26 = *(v25 + 64) + 15;
  v7[103] = swift_task_alloc();
  v7[104] = swift_task_alloc();
  v27 = *(*(sub_100004E70(&qword_1002019B0, &unk_1001ABDD0) - 8) + 64) + 15;
  v7[105] = swift_task_alloc();
  v7[106] = swift_task_alloc();
  v28 = *(*(type metadata accessor for DIPSignpost.Config() - 8) + 64) + 15;
  v7[107] = swift_task_alloc();
  v29 = type metadata accessor for DIPSignpost();
  v7[108] = v29;
  v30 = *(v29 - 8);
  v7[109] = v30;
  v31 = *(v30 + 64) + 15;
  v7[110] = swift_task_alloc();
  v32 = type metadata accessor for Logger();
  v7[111] = v32;
  v33 = *(v32 - 8);
  v7[112] = v33;
  v34 = *(v33 + 64) + 15;
  v7[113] = swift_task_alloc();
  v7[114] = swift_task_alloc();
  v7[115] = swift_task_alloc();
  v7[116] = swift_task_alloc();
  v7[117] = swift_task_alloc();
  v7[118] = swift_task_alloc();

  return _swift_task_switch(sub_1000A8B84, 0, 0);
}

uint64_t sub_1000A8B84()
{
  v1 = v0[118];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "PresentmentRequestInterpreter performReaderAuth for readerRequest", v4, 2u);
  }

  v5 = v0[118];
  v6 = v0[112];
  v7 = v0[111];
  v8 = v0[110];
  v9 = v0[107];
  v10 = v0[80];

  v11 = *(v6 + 8);
  v0[119] = v11;
  v11(v5, v7);
  static IDCSSignposts.presentmentReaderAuth.getter();
  DIPSignpost.init(_:)();
  if (v10 != 1)
  {
    if (!v10)
    {
      v12 = v0[117];
      defaultLogger()();
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&_mh_execute_header, v13, v14, "Skipping reader authentication because session policy is set to none", v15, 2u);
      }

      v16 = v0[117];
      v17 = v0[112];
      v18 = v0[111];
      v19 = v0[79];

      v11(v16, v18);
      if (v19)
      {
        v20 = v0[106];
        v21 = v0[105];
        v22 = v0[79];
        v23 = v0[78];
        v24 = type metadata accessor for URL();
        v25 = *(v24 - 8);
        v26 = *(v25 + 56);
        v26(v20, 1, 1, v24);
        v26(v21, 1, 1, v24);
        v27 = String._bridgeToObjectiveC()();
        v28 = *(v25 + 48);
        v30 = 0;
        if (v28(v20, 1, v24) != 1)
        {
          v31 = v0[106];
          URL._bridgeToObjectiveC()(v29);
          v30 = v32;
          (*(v25 + 8))(v31, v24);
        }

        v33 = v0[105];
        if (v28(v33, 1, v24) == 1)
        {
          v35 = 0;
        }

        else
        {
          URL._bridgeToObjectiveC()(v34);
          v35 = v85;
          (*(v25 + 8))(v33, v24);
        }

        v84 = [objc_allocWithZone(DCPresentmentProposalReaderMetadata) initWithIdentifier:v27 organization:0 organizationalUnit:0 iconData:0 iconURL:v30 iconMediaType:0 privacyPolicyURL:v35 merchantCategoryCode:0];
      }

      else
      {
        v84 = 0;
      }

      v86 = v0[110];
      v87 = v0[76];
      v88 = *(type metadata accessor for PresentmentRequestInterpreter.ReaderAuthResult(0) + 32);
      v89 = type metadata accessor for DIPError();
      (*(*(v89 - 8) + 56))(v87 + v88, 1, 1, v89);
      *(v87 + 8) = 0;
      *(v87 + 16) = 0;
      *v87 = v84;
      *(v87 + 24) = 3;
      DIPSignpost.end(workflowID:isBackground:)(0, 2);
      v90 = v0[118];
      v91 = v0[117];
      v92 = v0[116];
      v93 = v0[115];
      v94 = v0[114];
      v95 = v0[113];
      v96 = v0[107];
      v97 = v0[106];
      v100 = v0[105];
      v102 = v0[104];
      v104 = v0[103];
      v106 = v0[100];
      v108 = v0[99];
      v110 = v0[96];
      v112 = v0[95];
      v114 = v0[92];
      v116 = v0[91];
      v117 = v0[90];
      v119 = v0[89];
      v121 = v0[88];
      v123 = v0[85];
      (*(v0[109] + 8))(v0[110], v0[108]);

      v69 = v0[1];
      goto LABEL_25;
    }

    v122 = v0[110];
    v51 = v0[85];
    v52 = v0[84];
    v53 = v0[83];
    v54 = v0[80];
    _StringGuts.grow(_:)(40);

    v55 = DCCredentialReaderAuthenticationPolicyToString();
    v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v58 = v57;

    v59._countAndFlagsBits = v56;
    v59._object = v58;
    String.append(_:)(v59);

    (*(v52 + 104))(v51, enum case for DIPError.Code.idcsInvalidReaderAuthenticationPolicy(_:), v53);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000BD16C(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
LABEL_17:
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    v60 = v0[118];
    v61 = v0[117];
    v62 = v0[116];
    v63 = v0[115];
    v64 = v0[114];
    v65 = v0[113];
    v66 = v0[107];
    v67 = v0[106];
    v98 = v0[105];
    v99 = v0[104];
    v101 = v0[103];
    v103 = v0[100];
    v105 = v0[99];
    v107 = v0[96];
    v109 = v0[95];
    v111 = v0[92];
    v113 = v0[91];
    v115 = v0[90];
    v68 = v0[89];
    v118 = v0[88];
    v120 = v0[85];
    (*(v0[109] + 8))(v0[110], v0[108]);

    v69 = v0[1];
LABEL_25:

    return v69();
  }

  v36 = v0[116];
  defaultLogger()();
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&_mh_execute_header, v37, v38, "Performing optional identity reader authentication policy", v39, 2u);
  }

  v40 = v0[116];
  v41 = v0[112];
  v42 = v0[111];
  v43 = v0[102];
  v44 = v0[101];
  v45 = v0[100];
  v46 = v0[81];

  v11(v40, v42);
  sub_100046360(v46, v45, &qword_100202370, &qword_1001ACE68);
  if ((*(v43 + 48))(v45, 1, v44) == 1)
  {
    v47 = v0[110];
    v48 = v0[85];
    v49 = v0[84];
    v50 = v0[83];
    sub_10000A0D4(v0[100], &qword_100202370, &qword_1001ACE68);
    (*(v49 + 104))(v48, enum case for DIPError.Code.idcsInvalidPresentmentRequestSessionTranscript(_:), v50);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000BD16C(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    goto LABEL_17;
  }

  v70 = v0[104];
  v71 = v0[103];
  v72 = v0[102];
  v73 = v0[101];
  v74 = v0[99];
  v75 = v0[96];
  v76 = v0[94];
  v77 = v0[93];
  v78 = v0[77];
  (*(v72 + 32))(v70, v0[100], v73);
  v79 = *(v76 + 16);
  v0[120] = v79;
  v0[121] = (v76 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v79(v75, v78, v77);
  (*(v72 + 16))(v71, v70, v73);
  sub_100035AB8(v75, v71, v74);
  v80 = swift_task_alloc();
  v0[122] = v80;
  *v80 = v0;
  v80[1] = sub_1000A96B4;
  v81 = v0[99];
  v82 = v0[91];

  return sub_100035F7C((v0 + 2), v82);
}

uint64_t sub_1000A96B4()
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 976);
  v5 = *v1;
  *(v3 + 984) = v0;
  v15 = *(v3 + 32);
  v11 = *(v3 + 48);
  v12 = *(v3 + 16);
  v13 = *(v3 + 96);
  v14 = *(v3 + 64);
  v10 = *(v3 + 80);
  v6 = *(v2 + 112);
  v7 = *(v3 + 120);

  if (v0)
  {
    v8 = sub_1000AAD30;
  }

  else
  {
    *(v3 + 128) = v12;
    *(v3 + 144) = v15;
    *(v3 + 160) = v11;
    *(v3 + 176) = v14;
    *(v3 + 192) = v10;
    *(v3 + 208) = v13;
    *(v3 + 224) = v6;
    *(v3 + 232) = v7;
    v8 = sub_1000A9838;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_1000A9838()
{
  v224 = v0;
  sub_100046524(*(v0 + 728), *(v0 + 736), &qword_100201560, &unk_1001AB910);
  v221 = v0 + 128;
  if (*(v0 + 128))
  {
    v1 = *(v0 + 176);
    v214 = *(v0 + 168);
    v3 = *(v0 + 152);
    v2 = *(v0 + 160);
    v5 = *(v0 + 136);
    v4 = *(v0 + 144);
  }

  else
  {
    v6 = [objc_opt_self() standardUserDefaults];
    v7._countAndFlagsBits = 0xD000000000000021;
    v7._object = 0x80000001001B83A0;
    v8 = NSUserDefaults.internalBool(forKey:)(v7);

    if (v8)
    {
      v9 = *(v0 + 920);
      defaultLogger()();
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v10, v11, "Using mock reader metadata due to user defaults setting", v12, 2u);
      }

      v13 = *(v0 + 952);
      v14 = *(v0 + 920);
      v15 = *(v0 + 896);
      v16 = *(v0 + 888);

      v13(v14, v16);
      v4 = 0x80000001001B8520;
      v2 = 0x80000001001B8540;
      v1 = 0x80000001001B8560;
      v3 = 0xD000000000000011;
      v214 = 0xD000000000000018;
      v5 = 0xD000000000000010;
    }

    else
    {
      v5 = 0;
      v4 = 0;
      v3 = 0;
      v2 = 0;
      v214 = 0;
      v1 = 0;
    }
  }

  v17 = *(v0 + 784);
  v18 = *(v0 + 776);
  v19 = *(v0 + 720);
  v20 = *(v0 + 656);
  sub_1000BCFA8(*(v0 + 792), v19, type metadata accessor for IdentityReaderAuthenticator);
  (*(v17 + 56))(v19, 0, 1, v18);
  v21 = OBJC_IVAR____TtC7idcredd29PresentmentRequestInterpreter_identityReaderAuthenticator;
  swift_beginAccess();
  sub_1000BD010(v19, v20 + v21, &qword_100202378, &unk_1001ACE70);
  swift_endAccess();
  v22._countAndFlagsBits = 0x3461653530636166;
  v23._countAndFlagsBits = 0xD00000000000005ELL;
  v23._object = 0x80000001001B83D0;
  v22._object = 0xE800000000000000;
  logMilestone(tag:description:)(v22, v23);
  if (v4)
  {
    *(v0 + 352) = v5;
    *(v0 + 360) = v4;
    *(v0 + 368) = v3;
    *(v0 + 376) = v2;
    *(v0 + 384) = v214;
    *(v0 + 392) = v1;
    v24 = *(v0 + 128);
    v25 = *(v0 + 656);
    v206 = v24;
    if (v24)
    {
      v26 = v24;
      v27 = *(v25 + OBJC_IVAR____TtC7idcredd29PresentmentRequestInterpreter_readerMetadataProvider);
      v28 = *(v25 + OBJC_IVAR____TtC7idcredd29PresentmentRequestInterpreter_readerMetadataProvider + 8);
      type metadata accessor for SecCertificate(0);
      v24 = &protocol witness table for SecCertificateRef;
    }

    else
    {
      v26 = 0;
      v29 = 0;
      v27 = *(v25 + OBJC_IVAR____TtC7idcredd29PresentmentRequestInterpreter_readerMetadataProvider);
      v28 = *(v25 + OBJC_IVAR____TtC7idcredd29PresentmentRequestInterpreter_readerMetadataProvider + 8);
      v223[1] = 0;
      v223[2] = 0;
    }

    v215 = *(v0 + 984);
    v43 = *(v0 + 968);
    v44 = *(v0 + 960);
    v45 = *(v0 + 760);
    v46 = *(v0 + 744);
    v47 = *(v0 + 616);
    v223[0] = v26;
    v223[3] = v29;
    v223[4] = v24;
    v44(v45, v47, v46);
    if (*(v0 + 128))
    {
      v48 = *(v0 + 232);
    }

    else
    {
      v48 = 3;
    }

    v210 = v26;
    v49 = static Locale.preferredLanguages.getter();
    v50 = *(v28 + 8);
    *(v0 + 520) = v27;
    *(v0 + 528) = v28;
    sub_10001A9A4((v0 + 496));
    v50(v223, v45, v0 + 352, v48, v49, v27, v28);
    v51 = (*(v28 + 16))(v27, v28);
    if (v215)
    {
      sub_10000A0D4(*(v0 + 736), &qword_100201560, &unk_1001AB910);
      sub_10000A0D4(v221, &qword_1002024D8, &qword_1001ACFD8);

      sub_100005090((v0 + 496));
      v211 = *(v0 + 832);
      v216 = *(v0 + 880);
      v52 = *(v0 + 816);
      v53 = *(v0 + 808);
      v54 = *(v0 + 792);
      (*(*(v0 + 672) + 104))(*(v0 + 680), enum case for DIPError.Code.internalError(_:), *(v0 + 664));
      swift_errorRetain();
      sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_1000BD16C(&qword_100200200, &type metadata accessor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();

      sub_1000BB9CC(v54, type metadata accessor for IdentityReaderAuthenticator);
      (*(v52 + 8))(v211, v53);
      DIPSignpost.end(workflowID:isBackground:)(0, 2);
      v55 = *(v0 + 944);
      v56 = *(v0 + 936);
      v57 = *(v0 + 928);
      v58 = *(v0 + 920);
      v59 = *(v0 + 912);
      v60 = *(v0 + 904);
      v61 = *(v0 + 856);
      v62 = *(v0 + 848);
      v168 = *(v0 + 840);
      v169 = *(v0 + 832);
      v172 = *(v0 + 824);
      v175 = *(v0 + 800);
      v180 = *(v0 + 792);
      v184 = *(v0 + 768);
      v189 = *(v0 + 760);
      v193 = *(v0 + 736);
      v198 = *(v0 + 728);
      v201 = *(v0 + 720);
      v63 = *(v0 + 712);
      v212 = *(v0 + 704);
      v217 = *(v0 + 680);
      (*(*(v0 + 872) + 8))(*(v0 + 880), *(v0 + 864));

      v64 = *(v0 + 8);
      goto LABEL_58;
    }

    v65 = v51;
    v66 = *(v0 + 952);
    v67 = *(v0 + 912);
    v68 = *(v0 + 896);
    v69 = *(v0 + 888);
    defaultLogger()();
    *(swift_task_alloc() + 16) = v65;
    Logger.sensitive(_:)();

    v66(v67, v69);
    if (*(v0 + 128))
    {
      v70 = *(v0 + 232);
    }

    else
    {
      v70 = 3;
    }

    v218 = v70;
    v71 = [v65 identifier];
    if (!v71)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v72 = String._bridgeToObjectiveC()();

      v71 = v72;
    }

    v194 = v71;
    v73 = [v65 organization];
    if (v73)
    {
      v74 = v73;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v76 = v75;
    }

    else
    {
      v76 = 0;
    }

    v202 = v65;
    v104 = *(v0 + 128);
    if (v104)
    {
      v185 = v76;
      v105 = *(v0 + 184);
      v106 = *(v0 + 192);
      v107 = *(v0 + 208);
      v108 = *(v0 + 224);
      if (v106)
      {
        v109 = *(v0 + 192);
      }

      v176 = *(v0 + 176);
      v113 = *(v0 + 160);
      v114 = *(v0 + 144);
      v115 = *(v0 + 216);
      v116 = *(v0 + 200);
      sub_1000BD0BC(v105, v106);
      sub_100046360(v0 + 128, v0 + 240, &qword_1002024D8, &qword_1001ACFD8);

      sub_1000BD10C(v105, v106);
      if (v106)
      {
      }

      else
      {
        v107 = 0;
      }

      if (v185)
      {
LABEL_48:
        v110 = String._bridgeToObjectiveC()();

        if (v106)
        {
LABEL_49:
          v111 = String._bridgeToObjectiveC()();

          if (v107)
          {
            goto LABEL_50;
          }

          goto LABEL_43;
        }

LABEL_42:
        v111 = 0;
        if (v107)
        {
LABEL_50:
          v112 = String._bridgeToObjectiveC()();

          goto LABEL_51;
        }

LABEL_43:
        v112 = 0;
LABEL_51:
        v117 = *(v0 + 912);
        v118 = *(v0 + 888);
        v190 = *(v0 + 832);
        v119 = *(v0 + 816);
        v181 = *(v0 + 952);
        v186 = *(v0 + 808);
        v177 = *(v0 + 792);
        v120 = [objc_allocWithZone(DCPresentmentProposalReaderAnalytics) initWithTrusted:v218 != 3 untrustedIdentifier:v194 untrustedOrganization:v110 untrustedIssuerIdentifier:v111 untrustedIssuerOrganization:v112];

        defaultLogger()();
        *(swift_task_alloc() + 16) = v120;
        Logger.sensitive(_:)();
        sub_10000A0D4(v221, &qword_1002024D8, &qword_1001ACFD8);

        v181(v117, v118);
        sub_1000BB9CC(v177, type metadata accessor for IdentityReaderAuthenticator);
        (*(v119 + 8))(v190, v186);
        v121 = v206;
        if (v218)
        {

          v121 = 0;
        }

        v122 = *(v0 + 880);
        v123 = *(v0 + 736);
        v124 = *(v0 + 608);
        v125 = type metadata accessor for PresentmentRequestInterpreter.ReaderAuthResult(0);
        sub_100046524(v123, v124 + *(v125 + 32), &qword_100201560, &unk_1001AB910);
        *v124 = v202;
        *(v124 + 8) = v120;
        *(v124 + 16) = v121;
        *(v124 + 24) = v218;
        sub_100005090((v0 + 496));
        goto LABEL_57;
      }
    }

    else
    {
      v107 = 0;
      v106 = 0;
      if (v76)
      {
        goto LABEL_48;
      }
    }

    v110 = 0;
    if (v106)
    {
      goto LABEL_49;
    }

    goto LABEL_42;
  }

  v30 = *(v0 + 616);
  v31 = ISO18013ReaderRequest.docRequests.getter();
  if (!*(v31 + 16))
  {
    v77 = *(v0 + 832);
    v78 = *(v0 + 816);
    v79 = *(v0 + 808);
    v80 = *(v0 + 792);

    v81 = v0 + 128;
LABEL_55:
    sub_10000A0D4(v81, &qword_1002024D8, &qword_1001ACFD8);
    sub_1000BB9CC(v80, type metadata accessor for IdentityReaderAuthenticator);
    (*(v78 + 8))(v77, v79);
    goto LABEL_56;
  }

  v32 = *(v0 + 712);
  v33 = *(v0 + 704);
  v34 = *(v0 + 696);
  v35 = *(v0 + 688);
  (*(v34 + 16))(v33, v31 + ((*(v34 + 80) + 32) & ~*(v34 + 80)), v35);

  ISO18013ReaderRequest.DocRequest.readerAuth.getter();
  (*(v34 + 8))(v33, v35);
  v36 = type metadata accessor for COSE_Sign1();
  v37 = *(v36 - 8);
  if ((*(v37 + 48))(v32, 1, v36) == 1)
  {
    v38 = *(v0 + 832);
    v39 = *(v0 + 816);
    v40 = *(v0 + 808);
    v41 = *(v0 + 792);
    v42 = *(v0 + 712);
    sub_10000A0D4(v221, &qword_1002024D8, &qword_1001ACFD8);
    sub_1000BB9CC(v41, type metadata accessor for IdentityReaderAuthenticator);
    (*(v39 + 8))(v38, v40);
    sub_10000A0D4(v42, &qword_1002014D0, &unk_1001AD120);
    goto LABEL_56;
  }

  v82 = *(v0 + 712);
  v83 = COSE_Sign1.x509Chain.getter();
  (*(v37 + 8))(v82, v36);
  if (!v83)
  {
    v77 = *(v0 + 832);
    v78 = *(v0 + 816);
    v79 = *(v0 + 808);
    v80 = *(v0 + 792);
    v81 = v0 + 128;
    goto LABEL_55;
  }

  v84 = v0 + 128;
  if (!v83[2])
  {
    v140 = *(v0 + 832);
    v141 = *(v0 + 816);
    v142 = *(v0 + 808);
    v143 = *(v0 + 792);

    sub_10000A0D4(v221, &qword_1002024D8, &qword_1001ACFD8);
    sub_1000BB9CC(v143, type metadata accessor for IdentityReaderAuthenticator);
    (*(v141 + 8))(v140, v142);
    goto LABEL_56;
  }

  v86 = v83[4];
  v85 = v83[5];
  sub_100009708(v86, v85);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v88 = SecCertificateCreateWithData(0, isa);

  if (!v88)
  {
    v144 = *(v0 + 832);
    v145 = *(v0 + 816);
    v146 = *(v0 + 808);
    v147 = *(v0 + 792);

    sub_1000092BC(v86, v85);
    sub_10000A0D4(v221, &qword_1002024D8, &qword_1001ACFD8);
    sub_1000BB9CC(v147, type metadata accessor for IdentityReaderAuthenticator);
    (*(v145 + 8))(v144, v146);
    goto LABEL_56;
  }

  v213 = v86;
  v219 = v85;
  v89 = v83[2];
  if (v89 <= 1)
  {

    v94 = 0;
    v148 = 0;
    v95 = *(v0 + 984);
  }

  else
  {
    v90 = &v83[2 * v89 + 4];
    v91 = *(v90 - 16);
    v92 = *(v90 - 8);
    sub_100009708(v91, v92);

    v93 = Data._bridgeToObjectiveC()().super.isa;
    sub_1000092BC(v91, v92);
    v94 = SecCertificateCreateWithData(kCFAllocatorDefault, v93);

    v95 = *(v0 + 984);
    if (!v94)
    {
LABEL_68:
      v148 = 0;
      goto LABEL_69;
    }

    v96 = v94;
    sub_100021A34((v0 + 448));
    if (v95)
    {
      v97 = *(v0 + 904);

      defaultLogger()();
      swift_errorRetain();
      v98 = Logger.logObject.getter();
      v99 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v98, v99))
      {
        v100 = swift_slowAlloc();
        v101 = swift_slowAlloc();
        *v100 = 138412290;
        swift_errorRetain();
        v102 = _swift_stdlib_bridgeErrorToNSError();
        *(v100 + 4) = v102;
        *v101 = v102;
        _os_log_impl(&_mh_execute_header, v98, v99, "Failed to extract distinguished names from reader certificate's root issuer (non-fatal): %@", v100, 0xCu);
        sub_10000A0D4(v101, &qword_1002003B8, &unk_1001AB850);
        v84 = v0 + 128;

        v103 = v98;
      }

      else
      {
        v103 = v96;
        v96 = v98;
      }

      v151 = *(v0 + 896) + 8;
      (*(v0 + 952))(*(v0 + 904), *(v0 + 888));
      v95 = 0;
      v94 = 0;
      goto LABEL_68;
    }

    v149 = *(v0 + 448);
    v148 = *(v0 + 456);
    v150 = *(v0 + 464);
    v94 = *(v0 + 472);
    *(v0 + 560) = *(v0 + 480);
    sub_10000A0D4(v0 + 560, &qword_1002014B0, &unk_1001ACFE0);
  }

LABEL_69:
  v152 = v88;
  sub_100021A34((v84 + 272));
  if (!v95)
  {

    v157 = *(v0 + 400);
    v158 = *(v0 + 408);
    *(v84 + 448) = *(v0 + 416);
    v159 = String._bridgeToObjectiveC()();
    if (*(v0 + 584))
    {
      v160 = *(v84 + 448);
      v161 = String._bridgeToObjectiveC()();
    }

    else
    {
      v161 = 0;
    }

    if (v148)
    {
      v162 = String._bridgeToObjectiveC()();
    }

    else
    {
      v162 = 0;
    }

    if (v94)
    {
      v163 = String._bridgeToObjectiveC()();
    }

    else
    {
      v163 = 0;
    }

    v164 = *(v0 + 912);
    v171 = *(v0 + 896);
    v174 = *(v0 + 888);
    v183 = *(v0 + 952);
    v188 = *(v0 + 816);
    v192 = *(v0 + 808);
    v197 = *(v0 + 832);
    v179 = *(v0 + 792);
    v205 = *(v0 + 736);
    v209 = *(v0 + 880);
    v165 = *(v0 + 608);
    v166 = [objc_allocWithZone(DCPresentmentProposalReaderAnalytics) initWithTrusted:0 untrustedIdentifier:v159 untrustedOrganization:v161 untrustedIssuerIdentifier:v162 untrustedIssuerOrganization:v163];

    sub_10000A0D4(v0 + 576, &qword_1002014B0, &unk_1001ACFE0);
    *(v0 + 592) = *(v0 + 432);
    sub_10000A0D4(v0 + 592, &qword_1002014B0, &unk_1001ACFE0);
    defaultLogger()();
    *(swift_task_alloc() + 16) = v166;
    Logger.sensitive(_:)();
    sub_1000092BC(v213, v219);

    sub_10000A0D4(v221, &qword_1002024D8, &qword_1001ACFD8);

    v183(v164, v174);
    sub_1000BB9CC(v179, type metadata accessor for IdentityReaderAuthenticator);
    (*(v188 + 8))(v197, v192);
    v167 = type metadata accessor for PresentmentRequestInterpreter.ReaderAuthResult(0);
    sub_100046524(v205, v165 + *(v167 + 32), &qword_100201560, &unk_1001AB910);
    *v165 = 0;
    *(v165 + 8) = v166;
    *(v165 + 16) = 0;
    *(v165 + 24) = 3;
    goto LABEL_57;
  }

  v153 = *(v0 + 912);
  v154 = *(v0 + 896);
  v155 = *(v0 + 888);
  v208 = *(v0 + 832);
  v156 = *(v0 + 816);
  v200 = *(v0 + 952);
  v204 = *(v0 + 808);
  v196 = *(v0 + 792);

  defaultLogger()();
  DIPRecordError(_:message:log:)();
  sub_1000092BC(v213, v219);

  sub_10000A0D4(v84, &qword_1002024D8, &qword_1001ACFD8);
  v200(v153, v155);
  sub_1000BB9CC(v196, type metadata accessor for IdentityReaderAuthenticator);
  (*(v156 + 8))(v208, v204);
LABEL_56:
  v126 = *(v0 + 880);
  v127 = *(v0 + 736);
  v128 = *(v0 + 608);
  v129 = type metadata accessor for PresentmentRequestInterpreter.ReaderAuthResult(0);
  sub_100046524(v127, v128 + *(v129 + 32), &qword_100201560, &unk_1001AB910);
  *(v128 + 8) = 0;
  *(v128 + 16) = 0;
  *v128 = 0;
  *(v128 + 24) = 3;
LABEL_57:
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  v130 = *(v0 + 944);
  v131 = *(v0 + 936);
  v132 = *(v0 + 928);
  v133 = *(v0 + 920);
  v134 = *(v0 + 912);
  v135 = *(v0 + 904);
  v136 = *(v0 + 856);
  v137 = *(v0 + 848);
  v170 = *(v0 + 840);
  v173 = *(v0 + 832);
  v178 = *(v0 + 824);
  v182 = *(v0 + 800);
  v187 = *(v0 + 792);
  v191 = *(v0 + 768);
  v195 = *(v0 + 760);
  v199 = *(v0 + 736);
  v203 = *(v0 + 728);
  v207 = *(v0 + 720);
  v138 = *(v0 + 712);
  v220 = *(v0 + 704);
  v222 = *(v0 + 680);
  (*(*(v0 + 872) + 8))(*(v0 + 880), *(v0 + 864));

  v64 = *(v0 + 8);
LABEL_58:

  return v64();
}

uint64_t sub_1000AAD30()
{
  v1 = v0[123];
  v26 = v0[104];
  v28 = v0[110];
  v2 = v0[102];
  v3 = v0[101];
  v4 = v0[99];
  (*(v0[84] + 104))(v0[85], enum case for DIPError.Code.internalError(_:), v0[83]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1000BD16C(&qword_100200200, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  sub_1000BB9CC(v4, type metadata accessor for IdentityReaderAuthenticator);
  (*(v2 + 8))(v26, v3);
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  v5 = v0[118];
  v6 = v0[117];
  v7 = v0[116];
  v8 = v0[115];
  v9 = v0[114];
  v10 = v0[113];
  v11 = v0[107];
  v12 = v0[106];
  v15 = v0[105];
  v16 = v0[104];
  v17 = v0[103];
  v18 = v0[100];
  v19 = v0[99];
  v20 = v0[96];
  v21 = v0[95];
  v22 = v0[92];
  v23 = v0[91];
  v24 = v0[90];
  v25 = v0[89];
  v27 = v0[88];
  v29 = v0[85];
  (*(v0[109] + 8))(v0[110], v0[108]);

  v13 = v0[1];

  return v13();
}

unint64_t sub_1000AB060(void *a1)
{
  _StringGuts.grow(_:)(46);

  v2 = [a1 description];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6._countAndFlagsBits = v3;
  v6._object = v5;
  String.append(_:)(v6);

  return 0xD00000000000002CLL;
}

unint64_t sub_1000AB110(void *a1)
{
  _StringGuts.grow(_:)(47);

  v2 = [a1 description];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6._countAndFlagsBits = v3;
  v6._object = v5;
  String.append(_:)(v6);

  return 0xD00000000000002DLL;
}

uint64_t sub_1000AB1C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[37] = a3;
  v4[38] = v3;
  v4[35] = a1;
  v4[36] = a2;
  v5 = *(*(sub_100004E70(&qword_100202378, &unk_1001ACE70) - 8) + 64) + 15;
  v4[39] = swift_task_alloc();
  v6 = type metadata accessor for Certificate();
  v4[40] = v6;
  v7 = *(v6 - 8);
  v4[41] = v7;
  v8 = *(v7 + 64) + 15;
  v4[42] = swift_task_alloc();
  v4[43] = swift_task_alloc();
  v9 = *(*(sub_100004E70(&qword_100201560, &unk_1001AB910) - 8) + 64) + 15;
  v4[44] = swift_task_alloc();
  v4[45] = swift_task_alloc();
  v10 = type metadata accessor for DIPError.Code();
  v4[46] = v10;
  v11 = *(v10 - 8);
  v4[47] = v11;
  v12 = *(v11 + 64) + 15;
  v4[48] = swift_task_alloc();
  v13 = type metadata accessor for IdentityReaderAuthenticator(0);
  v4[49] = v13;
  v14 = *(v13 - 8);
  v4[50] = v14;
  v15 = *(v14 + 64) + 15;
  v4[51] = swift_task_alloc();
  v16 = *(*(sub_100004E70(&qword_1002019B0, &unk_1001ABDD0) - 8) + 64) + 15;
  v4[52] = swift_task_alloc();
  v4[53] = swift_task_alloc();
  v17 = type metadata accessor for SessionType();
  v4[54] = v17;
  v18 = *(v17 - 8);
  v4[55] = v18;
  v19 = *(v18 + 64) + 15;
  v4[56] = swift_task_alloc();
  v4[57] = swift_task_alloc();
  v4[58] = swift_task_alloc();
  v20 = *(*(type metadata accessor for DIPSignpost.Config() - 8) + 64) + 15;
  v4[59] = swift_task_alloc();
  v21 = type metadata accessor for DIPSignpost();
  v4[60] = v21;
  v22 = *(v21 - 8);
  v4[61] = v22;
  v23 = *(v22 + 64) + 15;
  v4[62] = swift_task_alloc();
  v24 = type metadata accessor for Logger();
  v4[63] = v24;
  v25 = *(v24 - 8);
  v4[64] = v25;
  v26 = *(v25 + 64) + 15;
  v4[65] = swift_task_alloc();
  v4[66] = swift_task_alloc();
  v4[67] = swift_task_alloc();
  v4[68] = swift_task_alloc();

  return _swift_task_switch(sub_1000AB584, 0, 0);
}

uint64_t sub_1000AB584()
{
  v1 = v0[68];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "PresentmentRequestInterpreter performReaderAuth for credentialRequest", v4, 2u);
  }

  v5 = v0[68];
  v6 = v0[63];
  v7 = v0[64];
  v8 = v0[62];
  v9 = v0[59];
  v10 = v0[37];

  v11 = *(v7 + 8);
  v11(v5, v6);
  static IDCSSignposts.presentmentReaderAuth.getter();
  DIPSignpost.init(_:)();
  if (v10 != 1)
  {
    if (!v10)
    {
      v12 = v0[67];
      defaultLogger()();
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&_mh_execute_header, v13, v14, "Skipping reader authentication because session policy is set to none", v15, 2u);
      }

      v16 = v0[67];
      v17 = v0[63];
      v18 = v0[64];
      v19 = v0[58];
      v21 = v0[54];
      v20 = v0[55];
      v149 = v0[53];
      v154 = v0[52];
      v22 = v0[36];

      v11(v16, v17);
      CredentialPresentmentRequest.sessionType.getter();
      SessionType.identifier.getter();
      (*(v20 + 8))(v19, v21);
      v23 = type metadata accessor for URL();
      v24 = *(v23 - 8);
      v25 = *(v24 + 56);
      v25(v149, 1, 1, v23);
      v25(v154, 1, 1, v23);
      v26 = String._bridgeToObjectiveC()();

      v27 = *(v24 + 48);
      v29 = 0;
      if (v27(v149, 1, v23) != 1)
      {
        v30 = v0[53];
        URL._bridgeToObjectiveC()(v28);
        v29 = v31;
        (*(v24 + 8))(v30, v23);
      }

      v32 = v0[52];
      if (v27(v32, 1, v23) == 1)
      {
        v34 = 0;
      }

      else
      {
        URL._bridgeToObjectiveC()(v33);
        v34 = v68;
        (*(v24 + 8))(v32, v23);
      }

      v69 = v0[62];
      v70 = v0[35];
      v71 = [objc_allocWithZone(DCPresentmentProposalReaderMetadata) initWithIdentifier:v26 organization:0 organizationalUnit:0 iconData:0 iconURL:v29 iconMediaType:0 privacyPolicyURL:v34 merchantCategoryCode:0];

      v72 = *(type metadata accessor for PresentmentRequestInterpreter.ReaderAuthResult(0) + 32);
      v73 = type metadata accessor for DIPError();
      (*(*(v73 - 8) + 56))(v70 + v72, 1, 1, v73);
      *(v70 + 8) = 0;
      *(v70 + 16) = 0;
      *v70 = v71;
      *(v70 + 24) = 3;
      DIPSignpost.end(workflowID:isBackground:)(0, 2);
      v74 = v0[68];
      v75 = v0[67];
      v76 = v0[66];
      v77 = v0[65];
      v78 = v0[59];
      v80 = v0[57];
      v79 = v0[58];
      v81 = v0[56];
      v130 = v0[53];
      v132 = v0[52];
      v135 = v0[51];
      v138 = v0[48];
      v141 = v0[45];
      v144 = v0[44];
      v147 = v0[43];
      v151 = v0[42];
      v157 = v0[39];
      (*(v0[61] + 8))(v0[62], v0[60]);

      v67 = v0[1];
      goto LABEL_20;
    }

    v155 = v0[62];
    v52 = v0[47];
    v51 = v0[48];
    v53 = v0[46];
    v54 = v0[37];
    _StringGuts.grow(_:)(40);

    v55 = DCCredentialReaderAuthenticationPolicyToString();
    v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v58 = v57;

    v59._countAndFlagsBits = v56;
    v59._object = v58;
    String.append(_:)(v59);

    (*(v52 + 104))(v51, enum case for DIPError.Code.idcsInvalidReaderAuthenticationPolicy(_:), v53);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000BD16C(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    goto LABEL_16;
  }

  v35 = v0[66];
  defaultLogger()();
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&_mh_execute_header, v36, v37, "Performing optional identity reader authentication policy", v38, 2u);
  }

  v39 = v0[66];
  v40 = v0[63];
  v41 = v0[64];
  v42 = v0[57];
  v43 = v0[54];
  v44 = v0[55];
  v45 = v0[36];

  v11(v39, v40);
  CredentialPresentmentRequest.sessionType.getter();
  v46 = (*(v44 + 88))(v42, v43);
  if (v46 == enum case for SessionType.digital(_:))
  {
    v47 = v0[62];
    v49 = v0[47];
    v48 = v0[48];
    v50 = v0[46];
    (*(v0[55] + 8))(v0[57], v0[54]);
    (*(v49 + 104))(v48, enum case for DIPError.Code.idcsInvalidPayload(_:), v50);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000BD16C(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
LABEL_16:
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
LABEL_17:
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    v60 = v0[68];
    v61 = v0[67];
    v62 = v0[66];
    v63 = v0[65];
    v64 = v0[59];
    v66 = v0[57];
    v65 = v0[58];
    v128 = v0[56];
    v129 = v0[53];
    v131 = v0[52];
    v134 = v0[51];
    v137 = v0[48];
    v140 = v0[45];
    v143 = v0[44];
    v146 = v0[43];
    v150 = v0[42];
    v156 = v0[39];
    (*(v0[61] + 8))(v0[62], v0[60]);

    v67 = v0[1];
LABEL_20:

    return v67();
  }

  if (v46 != enum case for SessionType.web(_:))
  {
    v109 = v0[62];
    v110 = v0[56];
    v111 = v0[54];
    v112 = v0[55];
    v113 = v0[47];
    v114 = v0[48];
    v153 = v0[46];
    v159 = v0[57];
    v115 = v0[36];
    _StringGuts.grow(_:)(80);
    v0[33] = 0;
    v0[34] = 0xE000000000000000;
    v116._countAndFlagsBits = 0xD000000000000022;
    v116._object = 0x80000001001B8340;
    String.append(_:)(v116);
    CredentialPresentmentRequest.sessionType.getter();
    _print_unlocked<A, B>(_:_:)();
    v117 = *(v112 + 8);
    v117(v110, v111);
    v118._object = 0x80000001001B8370;
    v118._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v118);
    v145 = v0[34];
    v148 = v0[33];
    (*(v113 + 104))(v114, enum case for DIPError.Code.idcsInvalidPayload(_:), v153);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000BD16C(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v117(v159, v111);
    goto LABEL_17;
  }

  v83 = v0[57];
  (*(v0[55] + 96))(v83, v0[54]);
  v84 = v83[1];
  v136 = *v83;
  v85 = *(v83[2] + 16);
  if (!v85)
  {

    v89 = _swiftEmptyArrayStorage;
LABEL_49:
    v119 = v0[51];
    v120 = v0[49];
    v121 = v0[36];
    v122 = CredentialPresentmentRequest.allDocumentTypes.getter();
    v123 = (v119 + v120[6]);
    v123[3] = type metadata accessor for DateProvider();
    v123[4] = &protocol witness table for DateProvider;
    sub_10001A9A4(v123);
    DateProvider.init()();
    *(v119 + v120[7]) = 0;
    *(v119 + v120[8]) = 3;
    *v119 = v122;
    v124 = (v119 + v120[5]);
    *v124 = v136;
    v124[1] = v84;
    v124[2] = v89;
    type metadata accessor for IdentityReaderAuthenticator.Request(0);
    swift_storeEnumTagMultiPayload();
    v125 = swift_task_alloc();
    v0[69] = v125;
    *v125 = v0;
    v125[1] = sub_1000AC4E4;
    v126 = v0[51];
    v127 = v0[44];

    return sub_100035F7C((v0 + 2), v127);
  }

  v133 = v83[1];
  v86 = v0[41];
  v139 = v83[2];
  result = sub_10010A858(0, v85, 0);
  v87 = v139;
  v88 = 0;
  v89 = _swiftEmptyArrayStorage;
  v142 = v85;
  while (v88 < *(v87 + 16))
  {
    v158 = v88;
    v90 = *(v139 + 32 + 8 * v88);

    v91 = decodeCertificateChain(fromDER:)();
    v92 = v91;
    if (v91 >> 62)
    {
      v93 = _CocoaArrayWrapper.endIndex.getter();
      if (!v93)
      {
LABEL_42:

        goto LABEL_43;
      }
    }

    else
    {
      v93 = *((v91 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v93)
      {
        goto LABEL_42;
      }
    }

    result = sub_10010A9C0(0, v93 & ~(v93 >> 63), 0);
    if (v93 < 0)
    {
      goto LABEL_53;
    }

    v152 = v89;
    if ((v92 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v93; ++i)
      {
        v95 = v0[43];
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        Certificate.init(_:)();
        v97 = _swiftEmptyArrayStorage[2];
        v96 = _swiftEmptyArrayStorage[3];
        if (v97 >= v96 >> 1)
        {
          sub_10010A9C0(v96 > 1, v97 + 1, 1);
        }

        v98 = v0[43];
        v99 = v0[40];
        _swiftEmptyArrayStorage[2] = v97 + 1;
        (*(v86 + 32))(_swiftEmptyArrayStorage + ((*(v86 + 80) + 32) & ~*(v86 + 80)) + *(v86 + 72) * v97, v98, v99);
      }
    }

    else
    {
      v100 = 32;
      do
      {
        v101 = v0[42];
        v102 = *(v92 + v100);
        Certificate.init(_:)();
        v104 = _swiftEmptyArrayStorage[2];
        v103 = _swiftEmptyArrayStorage[3];
        if (v104 >= v103 >> 1)
        {
          sub_10010A9C0(v103 > 1, v104 + 1, 1);
        }

        v105 = v0[42];
        v106 = v0[40];
        _swiftEmptyArrayStorage[2] = v104 + 1;
        (*(v86 + 32))(_swiftEmptyArrayStorage + ((*(v86 + 80) + 32) & ~*(v86 + 80)) + *(v86 + 72) * v104, v105, v106);
        v100 += 8;
        --v93;
      }

      while (v93);
    }

    v89 = v152;
    v87 = v139;
LABEL_43:
    v108 = v89[2];
    v107 = v89[3];
    if (v108 >= v107 >> 1)
    {
      result = sub_10010A858((v107 > 1), v108 + 1, 1);
      v87 = v139;
    }

    v88 = v158 + 1;
    v89[2] = v108 + 1;
    v89[v108 + 4] = _swiftEmptyArrayStorage;
    if (v158 + 1 == v142)
    {

      goto LABEL_49;
    }
  }

  __break(1u);
LABEL_53:
  __break(1u);
  return result;
}