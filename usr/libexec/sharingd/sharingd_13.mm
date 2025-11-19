uint64_t sub_1002D8418(uint64_t a1, void *a2)
{
  v4 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v15 - v6;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = qword_1009735E0;
  swift_unknownObjectRetain();
  v10 = a2;
  if (v9 != -1)
  {
    swift_once();
  }

  v11 = static AirDropActor.shared;
  v12 = sub_100005358(&qword_100977C00, type metadata accessor for AirDropActor);
  v13 = swift_allocObject();
  v13[2] = v11;
  v13[3] = v12;
  v13[4] = a1;
  v13[5] = v10;

  sub_1002B2DEC(0, 0, v7, &unk_1007F9670, v13);
}

uint64_t sub_1002D85C0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_1002D8608(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100005C04;

  return sub_1002C7E24(a1, v4, v5, v7, v6);
}

uint64_t sub_1002D86C8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_1002D8708(void (*a1)(void), uint64_t a2)
{
  v5 = *(v2 + 16);
  swift_unknownObjectRelease();
  a1(*(v2 + 32));

  return _swift_deallocObject(v2, a2);
}

uint64_t sub_1002D8774(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100005C00;

  return sub_1002C6FC8(a1, v4, v5, v6, v7, v9);
}

uint64_t sub_1002D8848(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C00;

  return sub_1002C21B0(a1, v4, v5, v6);
}

uint64_t sub_1002D88FC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C00;

  return sub_1002C1FD8(a1, v4, v5, v6);
}

uint64_t sub_1002D89B0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C00;

  return sub_1002C1884(a1, v4, v5, v6);
}

uint64_t sub_1002D8A64(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C00;

  return sub_1002C1668(a1, v4, v5, v6);
}

uint64_t sub_1002D8B18()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_1002D8BA8()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_100976480);
  v1 = sub_10000C4AC(v0, qword_100976480);
  if (qword_1009736D0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A08B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1002D8D00()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *&v0[OBJC_IVAR____TtC16DaemoniOSLibrary32SDAirDropReceiveClassroomHandler_queue];
  v12 = swift_allocObject();
  *(v12 + 16) = v0;
  aBlock[4] = sub_1002DC8D8;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100011678;
  aBlock[3] = &unk_1008DA450;
  v13 = _Block_copy(aBlock);
  v14 = v0;
  static DispatchQoS.unspecified.getter();
  v16[1] = _swiftEmptyArrayStorage;
  sub_100014254(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags);
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_100013EB8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);
  (*(v2 + 8))(v5, v1);
  (*(v7 + 8))(v10, v6);
}

uint64_t sub_1002D8FA0(uint64_t a1)
{
  v49 = type metadata accessor for SDAirDropReceiveClassroomHandler.Continuation();
  v47 = *(v49 - 8);
  v2 = *(v47 + 64);
  __chkstk_darwin(v49);
  v51 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10028088C(&qword_1009765B0, &qword_1007F97B8);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v50 = (&v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v6);
  v9 = &v43 - v8;
  v10 = OBJC_IVAR____TtC16DaemoniOSLibrary32SDAirDropReceiveClassroomHandler_continuations;
  swift_beginAccess();
  v43 = v10;
  v44 = a1;
  v11 = *(a1 + v10);
  v12 = v9;
  v13 = *(v11 + 64);
  v45 = v11 + 64;
  v14 = 1 << *(v11 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v13;
  v17 = (v14 + 63) >> 6;
  v48 = v11;

  v19 = 0;
  v46 = v9;
  v20 = &unk_1007F97C0;
  if (v16)
  {
    while (1)
    {
      v21 = v19;
LABEL_12:
      v24 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v25 = v24 | (v21 << 6);
      v26 = (*(v48 + 48) + 16 * v25);
      v27 = *v26;
      v28 = v26[1];
      v29 = v51;
      sub_1002DC8E0(*(v48 + 56) + *(v47 + 72) * v25, v51);
      v30 = sub_10028088C(&qword_1009765B8, v20);
      v31 = *(v30 + 48);
      v32 = v50;
      *v50 = v27;
      v32[1] = v28;
      sub_1002DC944(v29, v32 + v31);
      (*(*(v30 - 8) + 56))(v32, 0, 1, v30);

      v23 = v21;
      v33 = v20;
      v34 = v32;
      v12 = v46;
LABEL_13:
      sub_1002DC9A8(v34, v12);
      v35 = sub_10028088C(&qword_1009765B8, v33);
      if ((*(*(v35 - 8) + 48))(v12, 1, v35) == 1)
      {
        break;
      }

      v36 = *(v12 + 8);

      v37 = v51;
      sub_1002DC944(v12 + *(v35 + 48), v51);
      sub_10028088C(&qword_1009764E8, &qword_1007F9790);
      SFProgressContinuation.cancel(_:)();
      v38 = *(v37 + *(v49 + 20));
      Task.cancel()();
      result = sub_1002DCA18(v37);
      v19 = v23;
      v20 = v33;
      if (!v16)
      {
        goto LABEL_5;
      }
    }

    v41 = sub_100280464(_swiftEmptyArrayStorage);
    v42 = *(v44 + v43);
    *(v44 + v43) = v41;
  }

  else
  {
LABEL_5:
    if (v17 <= v19 + 1)
    {
      v22 = v19 + 1;
    }

    else
    {
      v22 = v17;
    }

    v23 = v22 - 1;
    while (1)
    {
      v21 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v21 >= v17)
      {
        v33 = v20;
        v39 = sub_10028088C(&qword_1009765B8, v20);
        v40 = v50;
        (*(*(v39 - 8) + 56))(v50, 1, 1, v39);
        v34 = v40;
        v16 = 0;
        goto LABEL_13;
      }

      v16 = *(v45 + 8 * v21);
      ++v19;
      if (v16)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1002D93A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v38 = a2;
  v39 = a3;
  v42 = type metadata accessor for DispatchWorkItemFlags();
  v44 = *(v42 - 8);
  v6 = *(v44 + 64);
  __chkstk_darwin(v42);
  v40 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for DispatchQoS();
  v41 = *(v43 - 8);
  v8 = *(v41 + 64);
  __chkstk_darwin(v43);
  v37 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for URL();
  v33 = v10;
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SFAirDropReceive.AskResponse();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = *(v4 + OBJC_IVAR____TtC16DaemoniOSLibrary32SDAirDropReceiveClassroomHandler_queue);
  (*(v15 + 16))(v17, a1, v14);
  (*(v11 + 16))(v13, v35, v10);
  v18 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v19 = (v16 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 15) & 0xFFFFFFFFFFFFFFF8;
  v21 = (*(v11 + 80) + v20 + 16) & ~*(v11 + 80);
  v22 = swift_allocObject();
  (*(v15 + 32))(v22 + v18, v17, v14);
  v23 = v33;
  v24 = v34;
  *(v22 + v19) = v34;
  v25 = (v22 + v20);
  v26 = v39;
  *v25 = v38;
  v25[1] = v26;
  (*(v11 + 32))(v22 + v21, v13, v23);
  aBlock[4] = sub_1002DD054;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100011678;
  aBlock[3] = &unk_1008DA608;
  v27 = _Block_copy(aBlock);
  v28 = v24;

  v29 = v37;
  static DispatchQoS.unspecified.getter();
  v45 = _swiftEmptyArrayStorage;
  sub_100014254(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags);
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_100013EB8();
  v30 = v40;
  v31 = v42;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v27);
  (*(v44 + 8))(v30, v31);
  (*(v41 + 8))(v29, v43);
}

uint64_t sub_1002D982C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30[1] = a4;
  v6 = type metadata accessor for SFAirDropReceive.AcceptContext();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SFAirDropReceive.AskResponse();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v15, a1, v11);
  v16 = (*(v12 + 88))(v15, v11);
  if (v16 == enum case for SFAirDropReceive.AskResponse.accept(_:))
  {
    (*(v12 + 96))(v15, v11);
    v17 = sub_10028088C(&qword_1009765E8, &qword_100808D60);
    (*(v7 + 32))(v10, &v15[*(v17 + 48)], v6);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v19 = Strong;
      v20 = String._bridgeToObjectiveC()();
      URL._bridgeToObjectiveC()(v21);
      v23 = v22;
      [v19 alertManager:a2 acceptingTransferWithRecordID:v20 withDestinationURL:v22 shouldExtractMediaFromPhotosBundlesForRecordID:SFAirDropReceive.AcceptContext.shouldExtractMedia.getter() & 1];
      swift_unknownObjectRelease();
    }

    (*(v7 + 8))(v10, v6);
    v24 = type metadata accessor for SFAirDropReceive.ItemDestination();
    return (*(*(v24 - 8) + 8))(v15, v24);
  }

  if (v16 == enum case for SFAirDropReceive.AskResponse.decline(_:))
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    v26 = result;
    v27 = String._bridgeToObjectiveC()();
    [v26 alertManager:a2 cancelingTransferWithRecordID:v27 withFailureReason:0];
    goto LABEL_14;
  }

  if (v16 == enum case for SFAirDropReceive.AskResponse.error(_:))
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    v28 = result;
    v27 = String._bridgeToObjectiveC()();
    [v28 alertManager:a2 cancelingTransferWithRecordID:v27 withFailureReason:1];
    goto LABEL_14;
  }

  if (v16 != enum case for SFAirDropReceive.AskResponse.mixedTypes(_:))
  {
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
    return result;
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v29 = result;
    v27 = String._bridgeToObjectiveC()();
    [v29 alertManager:a2 cancelingTransferWithRecordID:v27 withFailureReason:2];
LABEL_14:

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1002D9BF8@<X0>(uint64_t result@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (!a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (!a3)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v4 = result;

  v7.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  SFAirDropReceive.AskRequest.init(recordID:initialInfo:)(v4, a2, v7.super.isa, a4);
  v8 = type metadata accessor for SFAirDropReceive.AskRequest();
  v9 = *(*(v8 - 8) + 56);

  return v9(a4, 0, 1, v8);
}

uint64_t sub_1002D9EAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[0] = *&v3[OBJC_IVAR____TtC16DaemoniOSLibrary32SDAirDropReceiveClassroomHandler_queue];
  v17 = swift_allocObject();
  v17[2] = a1;
  v17[3] = a2;
  v17[4] = v3;
  v17[5] = a3;
  aBlock[4] = sub_1002DCF0C;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100011678;
  aBlock[3] = &unk_1008DA590;
  v18 = _Block_copy(aBlock);

  v19 = v3;
  static DispatchQoS.unspecified.getter();
  v21[1] = _swiftEmptyArrayStorage;
  sub_100014254(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags);
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_100013EB8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);
  (*(v8 + 8))(v11, v7);
  (*(v13 + 8))(v16, v12);
}

Class sub_1002DA170(uint64_t a1, void *a2, char *a3, objc_class *a4)
{
  v113 = a4;
  v111 = type metadata accessor for SDAirDropReceiveClassroomHandler.Continuation();
  v109 = *(v111 - 8);
  v7 = *(v109 + 64);
  __chkstk_darwin(v111);
  v101 = &v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v102 = &v91 - v11;
  v98 = type metadata accessor for SFAirDrop.Progress();
  v96 = *(v98 - 8);
  v12 = *(v96 + 64);
  __chkstk_darwin(v98);
  v97 = &v91 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_10028088C(&qword_1009764E8, &qword_1007F9790);
  v100 = *(v103 - 8);
  v14 = *(v100 + 64);
  __chkstk_darwin(v103);
  v106 = &v91 - v15;
  v16 = sub_10028088C(&unk_100976430, &unk_1007F9640);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v99 = &v91 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v108 = &v91 - v20;
  v21 = sub_10028088C(&unk_1009765D0, &unk_1007F97D0);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v24 = &v91 - v23;
  v25 = type metadata accessor for SFAirDropReceive.AskRequest();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v28 = __chkstk_darwin(v25);
  v105 = &v91 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v28);
  v95 = &v91 - v30;
  __chkstk_darwin(v29);
  v32 = &v91 - v31;
  if (qword_100973568 != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for Logger();
  v34 = sub_10000C4AC(v33, qword_100976480);

  v107 = v34;
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();

  v37 = os_log_type_enabled(v35, v36);
  v112 = a3;
  if (v37)
  {
    v38 = swift_slowAlloc();
    v104 = v32;
    v94 = v26;
    v110 = v25;
    v39 = v38;
    v40 = swift_slowAlloc();
    v114[0] = v40;
    *v39 = 136315138;
    v41 = a1;
    if (a2)
    {
      v42 = a2;
    }

    else
    {
      a1 = 0xD000000000000015;
      v42 = 0x8000000100789F30;
    }

    v43 = sub_10000C4E4(a1, v42, v114);

    *(v39 + 4) = v43;
    a1 = v41;
    _os_log_impl(&_mh_execute_header, v35, v36, "Incoming transfer %s from senderNode", v39, 0xCu);
    sub_10000C60C(v40);

    v25 = v110;
    v26 = v94;
    v32 = v104;
  }

  sub_1002D9BF8(a1, a2, v113, v24);
  if ((*(v26 + 48))(v24, 1, v25) == 1)
  {
    return sub_100005508(v24, &unk_1009765D0, &unk_1007F97D0);
  }

  v94 = a1;
  v45 = *(v26 + 32);
  result = (v45)(v32, v24, v25);
  if (!a2)
  {
    __break(1u);
    goto LABEL_23;
  }

  v46 = OBJC_IVAR____TtC16DaemoniOSLibrary32SDAirDropReceiveClassroomHandler_continuations;
  v47 = v112;
  swift_beginAccess();
  v48 = *&v47[v46];
  v49 = *(v48 + 16);
  v50 = v108;
  v93 = a2;
  v92 = v45;
  if (v49 && (v51 = sub_100012854(v94, a2), (v52 & 1) != 0))
  {
    v53 = *(v48 + 56);
    v54 = v109;
    sub_1002DC8E0(v53 + *(v109 + 72) * v51, v50);
    v55 = 0;
  }

  else
  {
    v55 = 1;
    v54 = v109;
  }

  v56 = v111;
  v109 = *(v54 + 56);
  (v109)(v50, v55, 1, v111);
  swift_endAccess();
  LODWORD(v56) = (*(v54 + 48))(v50, 1, v56);
  sub_100005508(v50, &unk_100976430, &unk_1007F9640);
  if (v56 == 1)
  {
    result = v113;
    if (v113)
    {
      v110 = v25;
      result = Dictionary._bridgeToObjectiveC()().super.isa;
      if (kSFOperationReceiverClassroomDestination)
      {
        v57 = result;
        sub_1000276B4(0, &unk_100974E30, NSURL_ptr);
        NSDictionary.sf_value<A>(_:as:file:line:)();
        v108 = v114[0];
        (*(v96 + 104))(v97, enum case for SFAirDrop.Progress.notStarted(_:), v98);
        sub_10028088C(&qword_100975610, &qword_1007F89B0);
        SFProgressContinuation.init(_:initialProgress:file:line:)();
        v71 = type metadata accessor for TaskPriority();
        (*(*(v71 - 8) + 56))(v102, 1, 1, v71);
        v72 = *(v26 + 16);
        v113 = v57;
        v73 = v95;
        v74 = v32;
        v104 = v32;
        v75 = v110;
        v72(v95, v74, v110);
        v76 = (*(v26 + 80) + 24) & ~*(v26 + 80);
        v77 = (v27 + v76 + 7) & 0xFFFFFFFFFFFFFFF8;
        v78 = swift_allocObject();
        v79 = v112;
        *(v78 + 16) = v112;
        v107 = v46;
        v80 = v79;
        v92(v78 + v76, v73, v75);
        v81 = (v78 + v77);
        v82 = v93;
        *v81 = v94;
        v81[1] = v82;
        v83 = v108;
        *(v78 + ((v77 + 23) & 0xFFFFFFFFFFFFFFF8)) = v108;

        v84 = v80;
        v108 = v83;
        v85 = v102;
        v86 = static Task<>.noThrow(priority:operation:)();

        sub_100005508(v85, &qword_100976160, &qword_1007F8770);
        v88 = v100;
        v87 = v101;
        (*(v100 + 16))(v101, v106, v103);
        v89 = v111;
        *(v87 + *(v111 + 20)) = v86;
        v90 = v99;
        sub_1002DC8E0(v87, v99);
        (v109)(v90, 0, 1, v89);
        swift_beginAccess();

        sub_1002B014C(v90, v94, v82);
        swift_endAccess();

        sub_1002DCA18(v87);
        (*(v88 + 8))(v106, v103);
        return (*(v26 + 8))(v104, v110);
      }

      goto LABEL_24;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    return result;
  }

  v58 = v105;
  (*(v26 + 16))(v105, v32, v25);
  v59 = v25;
  v60 = Logger.logObject.getter();
  v61 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v60, v61))
  {
    v62 = v26;
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v114[0] = v64;
    *v63 = 136315138;
    sub_100014254(&unk_1009765E0, &type metadata accessor for SFAirDropReceive.AskRequest);
    v65 = dispatch thunk of CustomStringConvertible.description.getter();
    v67 = v66;
    v68 = *(v62 + 8);
    v68(v58, v59);
    v69 = sub_10000C4E4(v65, v67, v114);

    *(v63 + 4) = v69;
    _os_log_impl(&_mh_execute_header, v60, v61, "Repeated ask requests for the same transfer. Dropping {askInfo: %s}", v63, 0xCu);
    sub_10000C60C(v64);

    return (v68)(v32, v59);
  }

  else
  {

    v70 = *(v26 + 8);
    v70(v58, v59);
    return (v70)(v32, v59);
  }
}

uint64_t sub_1002DADA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[3] = a3;
  v6[4] = a4;
  v6[2] = a2;
  v7 = type metadata accessor for URL();
  v6[7] = v7;
  v8 = *(v7 - 8);
  v6[8] = v8;
  v9 = *(v8 + 64) + 15;
  v6[9] = swift_task_alloc();
  v10 = type metadata accessor for SFAirDropReceive.AskResponse();
  v6[10] = v10;
  v11 = *(v10 - 8);
  v6[11] = v11;
  v12 = *(v11 + 64) + 15;
  v6[12] = swift_task_alloc();

  return _swift_task_switch(sub_1002DAECC, 0, 0);
}

void sub_1002DAECC()
{
  v1 = v0[5];
  if (v1)
  {
    v2 = *(v0[2] + OBJC_IVAR____TtC16DaemoniOSLibrary32SDAirDropReceiveClassroomHandler_stateMachine);
    v3 = swift_task_alloc();
    v0[13] = v3;
    *v3 = v0;
    v3[1] = sub_1002DAF88;
    v4 = v0[12];
    v5 = v0[3];
    v6 = v0[4];
    v7 = v0[2];

    sub_10053714C(v4, v7, v5, v6, v1);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1002DAF88()
{
  v1 = *(*v0 + 104);
  v3 = *v0;

  return _swift_task_switch(sub_1002DB084, 0, 0);
}

uint64_t sub_1002DB084()
{
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[7];
  v6 = v0[8];
  v8 = v0[5];
  v7 = v0[6];
  v9 = v0[4];
  v10 = v0[2];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1002D93A8(v1, v9, v8, v4);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);

  v11 = v0[1];

  return v11();
}

void sub_1002DB18C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SDAirDropReceiveClassroomHandler.Continuation();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v23 - v12;
  if (a3)
  {
    v14 = OBJC_IVAR____TtC16DaemoniOSLibrary32SDAirDropReceiveClassroomHandler_continuations;
    swift_beginAccess();
    v15 = *(a1 + v14);
    if (*(v15 + 16) && (v16 = sub_100012854(a2, a3), (v17 & 1) != 0))
    {
      sub_1002DC8E0(*(v15 + 56) + *(v7 + 72) * v16, v11);
      sub_1002DC944(v11, v13);
      swift_endAccess();
      sub_10028088C(&qword_1009764E8, &qword_1007F9790);
      SFProgressContinuation.cancel(_:)();
      v18 = *&v13[*(v6 + 20)];
      Task.cancel()();
      sub_1002DCA18(v13);
    }

    else
    {
      swift_endAccess();
      if (qword_100973568 != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      sub_10000C4AC(v19, qword_100976480);
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&_mh_execute_header, v20, v21, "Received progress event after continuation had been cleared. Dropping.", v22, 2u);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1002DB418(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SDAirDropReceiveClassroomHandler.Continuation();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v25 - v12;
  if (a3)
  {
    v14 = OBJC_IVAR____TtC16DaemoniOSLibrary32SDAirDropReceiveClassroomHandler_continuations;
    swift_beginAccess();
    v15 = *(a1 + v14);
    if (*(v15 + 16) && (v16 = sub_100012854(a2, a3), (v17 & 1) != 0))
    {
      sub_1002DC8E0(*(v15 + 56) + *(v7 + 72) * v16, v11);
      sub_1002DC944(v11, v13);
      swift_endAccess();
      v18 = type metadata accessor for SFAirDropReceive.Failure();
      sub_100014254(&unk_10097A660, &type metadata accessor for SFAirDropReceive.Failure);
      swift_allocError();
      (*(*(v18 - 8) + 104))(v19, enum case for SFAirDropReceive.Failure.senderCancelled(_:), v18);
      sub_10028088C(&qword_1009764E8, &qword_1007F9790);
      SFProgressContinuation.fail(with:)();

      v20 = *&v13[*(v6 + 20)];
      Task.cancel()();
      sub_1002DCA18(v13);
    }

    else
    {
      swift_endAccess();
      if (qword_100973568 != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      sub_10000C4AC(v21, qword_100976480);
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&_mh_execute_header, v22, v23, "Receive error event after continuation has been cleared. Dropping.", v24, 2u);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1002DB740(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3)
  {
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;
    if (!a4)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v14 = 0;
  v16 = 0;
  if (a4)
  {
LABEL_3:
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

LABEL_4:
  v17 = a1;
  sub_1002DCA80(v14, v16, a5, a6, a7, a8);
}

uint64_t sub_1002DB820(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v41 = a3;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v42 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100973568 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_10000C4AC(v16, qword_100976480);

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v37 = v4;
    v20 = v19;
    v21 = swift_slowAlloc();
    v40 = a1;
    v22 = v21;
    aBlock[0] = v21;
    *v20 = 136315138;
    v38 = v13;
    v39 = v11;
    if (a2)
    {
      v23 = v40;
    }

    else
    {
      v23 = 0xD000000000000015;
    }

    v24 = v12;
    v25 = v7;
    v26 = v8;
    if (a2)
    {
      v27 = a2;
    }

    else
    {
      v27 = 0x8000000100789F30;
    }

    v28 = sub_10000C4E4(v23, v27, aBlock);
    v8 = v26;
    v7 = v25;
    v12 = v24;
    v11 = v39;

    *(v20 + 4) = v28;
    v13 = v38;
    _os_log_impl(&_mh_execute_header, v17, v18, "finishedEvent {recordID: %s}", v20, 0xCu);
    sub_10000C60C(v22);
    a1 = v40;

    v4 = v37;
  }

  v29 = *&v4[OBJC_IVAR____TtC16DaemoniOSLibrary32SDAirDropReceiveClassroomHandler_queue];
  v30 = swift_allocObject();
  v30[2] = v4;
  v30[3] = a1;
  v31 = v41;
  v30[4] = a2;
  v30[5] = v31;
  aBlock[4] = sub_1002DCA74;
  aBlock[5] = v30;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100011678;
  aBlock[3] = &unk_1008DA4A0;
  v32 = _Block_copy(aBlock);

  v33 = v4;
  v34 = v42;
  static DispatchQoS.unspecified.getter();
  v43 = _swiftEmptyArrayStorage;
  sub_100014254(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags);
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_100013EB8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v32);
  (*(v8 + 8))(v11, v7);
  (*(v13 + 8))(v34, v12);
}

void sub_1002DBC6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v43 = &v42 - v14;
  v49 = type metadata accessor for NSFastEnumerationIterator();
  v44 = *(v49 - 8);
  v15 = *(v44 + 64);
  __chkstk_darwin(v49);
  v50 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for SDAirDropReceiveClassroomHandler.Continuation();
  v17 = *(v46 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v46);
  v21 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v48 = &v42 - v22;
  if (!a3)
  {
    goto LABEL_27;
  }

  v23 = OBJC_IVAR____TtC16DaemoniOSLibrary32SDAirDropReceiveClassroomHandler_continuations;
  swift_beginAccess();
  v24 = *(a1 + v23);
  if (*(v24 + 16) && (v25 = sub_100012854(a2, a3), (v26 & 1) != 0))
  {
    sub_1002DC8E0(*(v24 + 56) + *(v17 + 72) * v25, v21);
    sub_1002DC944(v21, v48);
    swift_endAccess();
    if (!a4)
    {
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v27.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
    if (!kSFOperationItemsKey)
    {
LABEL_29:
      __break(1u);
      return;
    }

    isa = v27.super.isa;
    sub_1000276B4(0, &qword_1009765C0, NSArray_ptr);
    NSDictionary.sf_value<A>(_:as:file:line:)();

    v33 = v53;
    v34 = [v53 count];
    v55 = _swiftEmptyArrayStorage;
    sub_10028FAB4(0, v34 & ~(v34 >> 63), 0);
    v35 = v55;
    v42 = v33;
    NSArray.makeIterator()();
    if (v34 < 0)
    {
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    if (v34)
    {
      v45 = v9 + 32;
      v47 = sub_100014254(&qword_1009765C8, &type metadata accessor for NSFastEnumerationIterator);
      do
      {
        dispatch thunk of IteratorProtocol.next()();
        if (!v54)
        {
          goto LABEL_26;
        }

        tryCast<A>(_:as:description:file:line:)();
        sub_10000C60C(&v53);
        v55 = v35;
        v37 = v35[2];
        v36 = v35[3];
        if (v37 >= v36 >> 1)
        {
          sub_10028FAB4(v36 > 1, v37 + 1, 1);
          v35 = v55;
        }

        v35[2] = v37 + 1;
        (*(v9 + 32))(v35 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v37, v13, v8);
      }

      while (--v34);
    }

    sub_100014254(&qword_1009765C8, &type metadata accessor for NSFastEnumerationIterator);
    dispatch thunk of IteratorProtocol.next()();
    if (v52)
    {
      v47 = v9 + 32;
      v38 = v43;
      do
      {
        sub_1000106E0(&v51, &v53);
        tryCast<A>(_:as:description:file:line:)();
        sub_10000C60C(&v53);
        v55 = v35;
        v40 = v35[2];
        v39 = v35[3];
        if (v40 >= v39 >> 1)
        {
          sub_10028FAB4(v39 > 1, v40 + 1, 1);
          v35 = v55;
        }

        v35[2] = v40 + 1;
        (*(v9 + 32))(v35 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v40, v38, v8);
        dispatch thunk of IteratorProtocol.next()();
      }

      while (v52);
    }

    (*(v44 + 8))(v50, v49);
    sub_100005508(&v51, &unk_1009746F0, &qword_1007F90B0);
    *&v53 = v35;
    sub_10028088C(&qword_1009764E8, &qword_1007F9790);
    v41 = v48;
    SFProgressContinuation.finish(with:)();

    sub_1002DCA18(v41);
  }

  else
  {
    swift_endAccess();
    if (qword_100973568 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_10000C4AC(v29, qword_100976480);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "Received finish after continuation had been cleared. Dropping.", v32, 2u);
    }
  }
}

uint64_t sub_1002DC574(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  v6 = a4;
  if (a3)
  {
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
    if (!v6)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = 0;
  v10 = 0;
  if (a4)
  {
LABEL_3:
    v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

LABEL_4:
  v11 = a1;
  a5(v8, v10, v6);
}

uint64_t type metadata accessor for SDAirDropReceiveClassroomHandler.Continuation()
{
  result = qword_100976548;
  if (!qword_100976548)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002DC77C()
{
  sub_1002DC800();
  if (v0 <= 0x3F)
  {
    sub_1002DC874();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1002DC800()
{
  if (!qword_100976558)
  {
    type metadata accessor for SFAirDrop.Progress();
    sub_100280938(&qword_100975610, &qword_1007F89B0);
    v0 = type metadata accessor for SFProgressContinuation();
    if (!v1)
    {
      atomic_store(v0, &qword_100976558);
    }
  }
}

void sub_1002DC874()
{
  if (!qword_100976568)
  {
    v0 = type metadata accessor for Task();
    if (!v1)
    {
      atomic_store(v0, &qword_100976568);
    }
  }
}

uint64_t sub_1002DC8E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SDAirDropReceiveClassroomHandler.Continuation();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002DC944(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SDAirDropReceiveClassroomHandler.Continuation();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002DC9A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10028088C(&qword_1009765B0, &qword_1007F97B8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002DCA18(uint64_t a1)
{
  v2 = type metadata accessor for SDAirDropReceiveClassroomHandler.Continuation();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1002DCA80(uint64_t a1, unint64_t a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v46 = a1;
  v47 = a5;
  v44 = a4;
  v9 = v6;
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for DispatchQoS();
  v16 = *(v45 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v45);
  v48 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100973568 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_10000C4AC(v19, qword_100976480);

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v40 = a6;
    v23 = v22;
    v24 = swift_slowAlloc();
    v41 = v9;
    v25 = v24;
    aBlock[0] = v24;
    *v23 = 136315138;
    v42 = v16;
    v43 = v15;
    v39 = a3;
    v26 = v46;
    if (a2)
    {
      v27 = v46;
    }

    else
    {
      v27 = 0xD000000000000015;
    }

    v28 = v11;
    v29 = v12;
    if (a2)
    {
      v30 = a2;
    }

    else
    {
      v30 = 0x8000000100789F30;
    }

    v31 = sub_10000C4E4(v27, v30, aBlock);
    v12 = v29;
    v11 = v28;
    v15 = v43;

    *(v23 + 4) = v31;
    v16 = v42;
    _os_log_impl(&_mh_execute_header, v20, v21, v39, v23, 0xCu);
    sub_10000C60C(v25);
    v9 = v41;

    a6 = v40;
  }

  else
  {

    v26 = v46;
  }

  v32 = *&v9[OBJC_IVAR____TtC16DaemoniOSLibrary32SDAirDropReceiveClassroomHandler_queue];
  v33 = swift_allocObject();
  v33[2] = v9;
  v33[3] = v26;
  v33[4] = a2;
  aBlock[4] = v47;
  aBlock[5] = v33;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100011678;
  aBlock[3] = a6;
  v34 = _Block_copy(aBlock);

  v35 = v9;
  v36 = v48;
  static DispatchQoS.unspecified.getter();
  v49 = _swiftEmptyArrayStorage;
  sub_100014254(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags);
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_100013EB8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v34);
  (*(v12 + 8))(v15, v11);
  (*(v16 + 8))(v36, v45);
}

uint64_t sub_1002DCEC0()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_1002DCF18(uint64_t a1)
{
  v4 = *(type metadata accessor for SFAirDropReceive.AskRequest() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + 16);
  v9 = (v1 + v6);
  v10 = *v9;
  v11 = v9[1];
  v12 = *(v1 + v7);
  v13 = swift_task_alloc();
  *(v2 + 16) = v13;
  *v13 = v2;
  v13[1] = sub_100005C04;

  return sub_1002DADA8(a1, v8, v1 + v5, v10, v11, v12);
}

uint64_t sub_1002DD054()
{
  v1 = *(type metadata accessor for SFAirDropReceive.AskResponse() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(type metadata accessor for URL() - 8);
  v6 = *(v0 + v3);
  v7 = *(v0 + v4);
  v8 = *(v0 + v4 + 8);
  v9 = v0 + ((v4 + *(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1002D982C(v0 + v2, v6, v7, v8);
}

uint64_t sub_1002DD168()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002DDC10();
  v11 = static OS_dispatch_queue.main.getter();
  aBlock[4] = sub_1002DDCC0;
  v15 = v0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100011678;
  aBlock[3] = &unk_1008DA6C0;
  v12 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1002DDC68();
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_100013EB8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);

  (*(v2 + 8))(v5, v1);
  return (*(v7 + 8))(v10, v6);
}

void sub_1002DD3D8()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1002DDC10();
  *v6 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v2);
  v7 = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v6, v2);
  if ((v7 & 1) == 0)
  {
    __break(1u);
    return;
  }

  if (v1[2])
  {
    if (v1[3])
    {
      goto LABEL_4;
    }
  }

  else
  {
    v8 = [objc_allocWithZone(UINotificationFeedbackGenerator) init];
    v9 = v1[2];
    v1[2] = v8;

    if (v1[3])
    {
LABEL_4:
      if (v1[4])
      {
        return;
      }

LABEL_8:
      v12 = [objc_allocWithZone(UISelectionFeedbackGenerator) init];
      v13 = v1[4];
      v1[4] = v12;

      return;
    }
  }

  v10 = [objc_allocWithZone(UIImpactFeedbackGenerator) init];
  v11 = v1[3];
  v1[3] = v10;

  if (!v1[4])
  {
    goto LABEL_8;
  }
}

uint64_t sub_1002DD584(char a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002DDC10();
  v12 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = a1;
  aBlock[4] = sub_1002DDC5C;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100011678;
  aBlock[3] = &unk_1008DA698;
  v15 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1002DDC68();
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_100013EB8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

void sub_1002DD82C(uint64_t a1, unsigned __int8 a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (qword_1009736C8 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000C4AC(v5, qword_1009A08A0);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v21 = v9;
      *v8 = 136315138;
      v10 = String.init<A>(describing:)();
      v12 = sub_10000C4E4(v10, v11, &v21);

      *(v8 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v6, v7, "Firing haptics for %s", v8, 0xCu);
      sub_10000C60C(v9);
    }

    sub_1002DD3D8();
    v13 = *(v4 + 16);
    if (v13 && *(v4 + 24) && *(v4 + 32))
    {
      if (a2 > 2u)
      {
        if (a2 == 3)
        {
          [objc_opt_self() playAlertForType:12];
        }

        else if (a2 == 4)
        {
          [v13 notificationOccurred:2];
        }

        else
        {
          [v13 notificationOccurred:1];
        }
      }

      else if (a2)
      {
        if (a2 == 1)
        {
          [*(v4 + 24) impactOccurred];
        }

        else
        {
          [v13 notificationOccurred:0];
        }
      }

      else
      {
        [*(v4 + 32) selectionChanged];
      }
    }

    else
    {
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&_mh_execute_header, v14, v15, "SDAirDropiOSHapticsManager's FeedbackGenerators are nil when trying to fire haptics", v16, 2u);
      }
    }
  }

  else
  {
    if (qword_1009736C8 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_10000C4AC(v17, qword_1009A08A0);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "SDAirDropiOSHapticsManager is nil when trying to fire haptics", v20, 2u);
    }
  }
}

uint64_t sub_1002DDBA0()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1002DDC10()
{
  result = qword_10097A620;
  if (!qword_10097A620)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10097A620);
  }

  return result;
}

unint64_t sub_1002DDC68()
{
  result = qword_100976140;
  if (!qword_100976140)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100976140);
  }

  return result;
}

uint64_t sub_1002DDCCC(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  v3 = type metadata accessor for SFAirDropReceive.ItemDestination();
  v2[12] = v3;
  v4 = *(v3 - 8);
  v2[13] = v4;
  v5 = *(v4 + 64) + 15;
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v6 = type metadata accessor for SFAirDropReceive.Transfer.State();
  v2[16] = v6;
  v7 = *(v6 - 8);
  v2[17] = v7;
  v8 = *(v7 + 64) + 15;
  v2[18] = swift_task_alloc();
  v9 = *(*(sub_10028088C(&qword_100976928, &qword_1007F98A8) - 8) + 64) + 15;
  v2[19] = swift_task_alloc();
  v10 = type metadata accessor for SFAirDropReceive.Transfer();
  v2[20] = v10;
  v11 = *(v10 - 8);
  v2[21] = v11;
  v12 = *(v11 + 64) + 15;
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v13 = *(*(sub_10028088C(&qword_100976908, &unk_100801D60) - 8) + 64) + 15;
  v2[24] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v14 = static AirDropActor.shared;
  v2[25] = static AirDropActor.shared;

  return _swift_task_switch(sub_1002DDF08, v14, 0);
}

uint64_t sub_1002DDF08()
{
  v1 = v0[23];
  v2 = v0[19];
  v3 = v0[11];
  v4 = OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_contentHandler;
  swift_beginAccess();
  sub_1002A9938(v3 + v4, (v0 + 2));
  v5 = v0[5];
  v6 = v0[6];
  sub_10002CDC0(v0 + 2, v5);
  v7 = *(v3 + OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_subject);
  CurrentValueSubject.value.getter();
  v8 = sub_10028088C(&qword_1009764E8, &qword_1007F9790);
  (*(*(v8 - 8) + 56))(v2, 1, 1, v8);
  v9 = swift_task_alloc();
  v0[26] = v9;
  *v9 = v0;
  v9[1] = sub_1002DE06C;
  v11 = v0[23];
  v10 = v0[24];
  v12 = v0[19];

  return sub_100586750(v10, v11, v12, v5, v6);
}

uint64_t sub_1002DE06C()
{
  v2 = *v1;
  v3 = (*v1)[26];
  v4 = *v1;
  v2[27] = v0;

  v5 = v2[25];
  v6 = v2[23];
  v7 = v2[21];
  v8 = v2[20];
  sub_100005508(v2[19], &qword_100976928, &qword_1007F98A8);
  v11 = *(v7 + 8);
  v10 = v7 + 8;
  v9 = v11;
  if (v0)
  {
    v9(v6, v8);
    v12 = sub_1002DEB40;
  }

  else
  {
    v2[28] = v9;
    v2[29] = v10 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v9(v6, v8);
    v12 = sub_1002DE248;
  }

  return _swift_task_switch(v12, v5, 0);
}

uint64_t sub_1002DE248()
{
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[24];
  v4 = v0[22];
  v5 = v0[20];
  v7 = v0[17];
  v6 = v0[18];
  v8 = v0[16];
  v9 = v0[11];
  sub_10000C60C(v0 + 2);
  v10 = sub_10028088C(&qword_100974E70, &qword_1007FE3F0);
  (*(*(v10 - 8) + 16))(v6, v3, v10);
  (*(v7 + 104))(v6, enum case for SFAirDropReceive.Transfer.State.waitingForAskResponse(_:), v8);
  sub_100687AF8(v6, v4);
  (*(v7 + 8))(v6, v8);
  v2(v4, v5);

  return _swift_task_switch(sub_1002DE38C, 0, 0);
}

uint64_t sub_1002DE38C()
{
  v1 = v0[24];
  v2 = swift_task_alloc();
  v0[30] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[31] = v3;
  *(v3 + 16) = v1;
  v4 = async function pointer to withTaskCancellationHandler<A>(operation:onCancel:isolation:)[1];
  v5 = swift_task_alloc();
  v0[32] = v5;
  *v5 = v0;
  v5[1] = sub_1002DE494;
  v6 = v0[15];
  v7 = v0[12];

  return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v6, &unk_1007F98B0, v2, sub_1002E3960, v3, 0, 0, v7);
}

uint64_t sub_1002DE494()
{
  v2 = *v1;
  v3 = *(*v1 + 256);
  v10 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v4 = sub_1002DE91C;
    v5 = 0;
  }

  else
  {
    v7 = v2[30];
    v6 = v2[31];
    v8 = v2[25];

    v4 = sub_1002DE5C4;
    v5 = v8;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_1002DE5C4()
{
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[13];
  (*(v3 + 104))(v1, enum case for SFAirDropReceive.ItemDestination.noItem(_:), v2);
  sub_1002E3918(&qword_100976930, &type metadata accessor for SFAirDropReceive.ItemDestination);
  v4 = dispatch thunk of static Equatable.== infix(_:_:)();
  v5 = *(v3 + 8);
  v5(v1, v2);
  v6 = v0[24];
  v7 = v0[15];
  if (v4)
  {
    v8 = v0[12];
    type metadata accessor for CancellationError();
    sub_1002E3918(&unk_10097A6B0, &type metadata accessor for CancellationError);
    swift_allocError();
    CancellationError.init()();
    swift_willThrow();
    v5(v7, v8);
    sub_100005508(v6, &qword_100976908, &unk_100801D60);
    v9 = v0[11] + OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_log;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Classroom AskRequest declined", v12, 2u);
    }

    v13 = &enum case for SFAirDropReceive.AskResponse.decline(_:);
  }

  else
  {
    v14 = v0[12];
    v15 = v0[13];
    v16 = v0[10];
    v17 = *(sub_10028088C(&qword_1009765E8, &qword_100808D60) + 48);
    (*(v15 + 16))(v16, v7, v14);
    SFAirDropReceive.AcceptContext.init(shouldExtractMedia:customPayload:)();
    v5(v7, v14);
    sub_100005508(v6, &qword_100976908, &unk_100801D60);
    v13 = &enum case for SFAirDropReceive.AskResponse.accept(_:);
  }

  v18 = v0[23];
  v19 = v0[24];
  v20 = v0[22];
  v22 = v0[18];
  v21 = v0[19];
  v24 = v0[14];
  v23 = v0[15];
  v25 = v0[10];
  v26 = *v13;
  v27 = type metadata accessor for SFAirDropReceive.AskResponse();
  (*(*(v27 - 8) + 104))(v25, v26, v27);

  v28 = v0[1];

  return v28();
}

uint64_t sub_1002DE91C()
{
  v2 = v0[30];
  v1 = v0[31];
  v3 = v0[25];

  return _swift_task_switch(sub_1002DE990, v3, 0);
}

uint64_t sub_1002DE990()
{
  sub_100005508(v0[24], &qword_100976908, &unk_100801D60);
  v1 = v0[33];
  v2 = v0[11] + OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_log;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Classroom AskRequest declined", v5, 2u);
  }

  v6 = v0[23];
  v7 = v0[24];
  v8 = v0[22];
  v10 = v0[18];
  v9 = v0[19];
  v12 = v0[14];
  v11 = v0[15];
  v13 = v0[10];
  v14 = enum case for SFAirDropReceive.AskResponse.decline(_:);
  v15 = type metadata accessor for SFAirDropReceive.AskResponse();
  (*(*(v15 - 8) + 104))(v13, v14, v15);

  v16 = v0[1];

  return v16();
}

uint64_t sub_1002DEB40()
{
  sub_10000C60C(v0 + 2);
  v1 = v0[27];
  v2 = v0[11] + OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_log;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Classroom AskRequest declined", v5, 2u);
  }

  v6 = v0[23];
  v7 = v0[24];
  v8 = v0[22];
  v10 = v0[18];
  v9 = v0[19];
  v12 = v0[14];
  v11 = v0[15];
  v13 = v0[10];
  v14 = enum case for SFAirDropReceive.AskResponse.decline(_:);
  v15 = type metadata accessor for SFAirDropReceive.AskResponse();
  (*(*(v15 - 8) + 104))(v13, v14, v15);

  v16 = v0[1];

  return v16();
}

uint64_t sub_1002DECE0(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 336) = a5;
  *(v6 + 344) = v5;
  *(v6 + 320) = a3;
  *(v6 + 328) = a4;
  *(v6 + 721) = a2;
  *(v6 + 312) = a1;
  v7 = type metadata accessor for SFAirDropReceive.Failure();
  *(v6 + 352) = v7;
  v8 = *(v7 - 8);
  *(v6 + 360) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 368) = swift_task_alloc();
  v10 = sub_10028088C(&qword_100976900, &unk_1007FD250);
  *(v6 + 376) = v10;
  v11 = *(v10 - 8);
  *(v6 + 384) = v11;
  v12 = *(v11 + 64) + 15;
  *(v6 + 392) = swift_task_alloc();
  v13 = type metadata accessor for SFAirDropReceive.Transfer.State();
  *(v6 + 400) = v13;
  v14 = *(v13 - 8);
  *(v6 + 408) = v14;
  v15 = *(v14 + 64) + 15;
  *(v6 + 416) = swift_task_alloc();
  *(v6 + 424) = swift_task_alloc();
  v16 = *(*(sub_10028088C(&qword_100976908, &unk_100801D60) - 8) + 64) + 15;
  *(v6 + 432) = swift_task_alloc();
  v17 = type metadata accessor for SFAirDropReceive.ItemDestination();
  *(v6 + 440) = v17;
  v18 = *(v17 - 8);
  *(v6 + 448) = v18;
  v19 = *(v18 + 64) + 15;
  *(v6 + 456) = swift_task_alloc();
  *(v6 + 464) = swift_task_alloc();
  *(v6 + 472) = swift_task_alloc();
  *(v6 + 480) = swift_task_alloc();
  *(v6 + 488) = swift_task_alloc();
  *(v6 + 496) = swift_task_alloc();
  *(v6 + 504) = swift_task_alloc();
  v20 = type metadata accessor for SFAirDrop.TransferType();
  *(v6 + 512) = v20;
  v21 = *(v20 - 8);
  *(v6 + 520) = v21;
  v22 = *(v21 + 64) + 15;
  *(v6 + 528) = swift_task_alloc();
  *(v6 + 536) = swift_task_alloc();
  v23 = type metadata accessor for SFAirDropReceive.AskRequest();
  *(v6 + 544) = v23;
  v24 = *(v23 - 8);
  *(v6 + 552) = v24;
  v25 = *(v24 + 64) + 15;
  *(v6 + 560) = swift_task_alloc();
  *(v6 + 568) = swift_task_alloc();
  v26 = type metadata accessor for SFAirDropReceive.Transfer();
  *(v6 + 576) = v26;
  v27 = *(v26 - 8);
  *(v6 + 584) = v27;
  v28 = *(v27 + 64) + 15;
  *(v6 + 592) = swift_task_alloc();
  *(v6 + 600) = swift_task_alloc();
  *(v6 + 608) = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v29 = static AirDropActor.shared;
  *(v6 + 616) = static AirDropActor.shared;

  return _swift_task_switch(sub_1002DF0D8, v29, 0);
}

uint64_t sub_1002DF0D8()
{
  v193 = v0;
  v1 = *(v0 + 608);
  v2 = *(v0 + 584);
  v3 = *(v0 + 576);
  v4 = *(v0 + 568);
  v5 = *(v0 + 552);
  v6 = *(v0 + 544);
  v7 = *(v0 + 536);
  v8 = *(v0 + 520);
  v186 = *(v0 + 512);
  v177 = *(*(v0 + 344) + OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_subject);
  CurrentValueSubject.value.getter();
  SFAirDropReceive.Transfer.askRequest.getter();
  v9 = *(v2 + 8);
  *(v0 + 624) = v9;
  *(v0 + 632) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v182 = v9;
  v9(v1, v3);
  SFAirDropReceive.AskRequest.type.getter();
  v10 = *(v5 + 8);
  v10(v4, v6);
  v11 = SFAirDrop.TransferType.isLinks.getter();
  v12 = *(v8 + 8);
  v12(v7, v186);
  if ((v11 & 1) == 0)
  {
    v187 = v10;
    v13 = *(v0 + 600);
    v14 = *(v0 + 576);
    v15 = *(v0 + 560);
    v16 = *(v0 + 544);
    v17 = *(v0 + 528);
    v170 = *(v0 + 512);
    CurrentValueSubject.value.getter();
    SFAirDropReceive.Transfer.askRequest.getter();
    v182(v13, v14);
    SFAirDropReceive.AskRequest.type.getter();
    v18 = v16;
    v19 = v12;
    v187(v15, v18);
    v20 = SFAirDrop.TransferType.isFiles.getter();
    v12(v17, v170);
    if ((v20 & 1) == 0)
    {
      v54 = *(v0 + 344);

      v55 = Logger.logObject.getter();
      v56 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v55, v56))
      {
        v57 = *(v0 + 600);
        v58 = *(v0 + 560);
        v153 = *(v0 + 576);
        v157 = *(v0 + 544);
        v59 = *(v0 + 528);
        v60 = *(v0 + 512);
        v61 = swift_slowAlloc();
        v162 = v19;
        v62 = swift_slowAlloc();
        v192[0] = v62;
        *v61 = 136315138;
        CurrentValueSubject.value.getter();
        SFAirDropReceive.Transfer.askRequest.getter();
        v182(v57, v153);
        SFAirDropReceive.AskRequest.type.getter();
        v187(v58, v157);
        sub_1002E3918(&unk_100989320, &type metadata accessor for SFAirDrop.TransferType);
        v63 = dispatch thunk of CustomStringConvertible.description.getter();
        v65 = v64;
        v162(v59, v60);
        v66 = sub_10000C4E4(v63, v65, v192);

        *(v61 + 4) = v66;
        _os_log_impl(&_mh_execute_header, v55, v56, "Classroom Ask open/move SKIP. {type: %s}", v61, 0xCu);
        sub_10000C60C(v62);
      }

      goto LABEL_12;
    }
  }

  v21 = *(v0 + 344);
  v22 = OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_contentHandler;
  swift_beginAccess();
  sub_1002A9938(v21 + v22, v0 + 56);
  sub_10028088C(&qword_1009892F0, &qword_1007F9888);
  sub_10028088C(&qword_100976910, &unk_100808E80);
  if (!swift_dynamicCast())
  {
    v44 = *(v0 + 344);
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
    *(v0 + 128) = 0;
    sub_100005508(v0 + 96, &qword_100976918, &qword_1007F9890);

    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v192[0] = v48;
      *v47 = 136315138;
      sub_1002A9938(v21 + v22, v0 + 136);
      sub_10002CDC0((v0 + 136), *(v0 + 160));
      DynamicType = swift_getDynamicType();
      v50 = *(v0 + 168);
      sub_10000C60C((v0 + 136));
      *(v0 + 288) = DynamicType;
      *(v0 + 296) = v50;
      sub_10028088C(&qword_100976920, &qword_100808E90);
      v51 = String.init<A>(describing:)();
      v53 = sub_10000C4E4(v51, v52, v192);

      *(v47 + 4) = v53;
      _os_log_impl(&_mh_execute_header, v45, v46, "Classroom Ask open/move SKIP. {handler: %s}", v47, 0xCu);
      sub_10000C60C(v48);
    }

LABEL_12:
    v67 = *(v0 + 328);
    (*(*(v0 + 448) + 16))(*(v0 + 312), *(v0 + 336), *(v0 + 440));

    v189 = 0;
    v183 = *(v0 + 328);
LABEL_13:
    v68 = *(v0 + 608);
    v69 = *(v0 + 600);
    v70 = *(v0 + 592);
    v71 = *(v0 + 568);
    v72 = *(v0 + 560);
    v73 = *(v0 + 536);
    v74 = *(v0 + 528);
    v76 = *(v0 + 496);
    v75 = *(v0 + 504);
    v77 = *(v0 + 488);
    v149 = *(v0 + 480);
    v151 = *(v0 + 472);
    v154 = *(v0 + 464);
    v158 = *(v0 + 456);
    v163 = *(v0 + 432);
    v167 = *(v0 + 424);
    v171 = *(v0 + 416);
    v173 = *(v0 + 392);
    v178 = *(v0 + 368);

    v78 = *(v0 + 8);

    return v78(v189, v183);
  }

  v23 = *(v0 + 504);
  v25 = *(v0 + 440);
  v24 = *(v0 + 448);
  v26 = *(v0 + 336);
  v27 = *(v0 + 344);
  sub_1000121F8((v0 + 96), v0 + 16);
  *(v0 + 640) = OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_log;
  v28 = *(v24 + 16);
  *(v0 + 648) = v28;
  *(v0 + 656) = (v24 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v28(v23, v26, v25);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();
  v31 = os_log_type_enabled(v29, v30);
  v32 = *(v0 + 504);
  v188 = v28;
  if (v31)
  {
    v33 = *(v0 + 496);
    v166 = v21;
    v35 = *(v0 + 440);
    v34 = *(v0 + 448);
    v36 = swift_slowAlloc();
    v156 = swift_slowAlloc();
    v192[0] = v156;
    *v36 = 136315138;
    v188(v33, v32, v35);
    v37 = String.init<A>(describing:)();
    v161 = v22;
    v39 = v38;
    v40 = *(v34 + 8);
    v41 = v35;
    v21 = v166;
    v40(v32, v41);
    v42 = v37;
    v28 = v188;
    v43 = sub_10000C4E4(v42, v39, v192);
    v22 = v161;

    *(v36 + 4) = v43;
    _os_log_impl(&_mh_execute_header, v29, v30, "Classroom Ask open/move START. {destination: %s}", v36, 0xCu);
    sub_10000C60C(v156);
  }

  else
  {
    v80 = *(v0 + 440);
    v81 = *(v0 + 448);

    v40 = *(v81 + 8);
    v40(v32, v80);
  }

  *(v0 + 664) = v40;
  v82 = *(v0 + 721);
  v28(*(v0 + 488), *(v0 + 336), *(v0 + 440));
  if (v82)
  {
    v83 = *(v0 + 344) + *(v0 + 640);
    v84 = Logger.logObject.getter();
    v85 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v84, v85))
    {
      v86 = *(v0 + 656);
      v87 = *(v0 + 648);
      v89 = *(v0 + 488);
      v88 = *(v0 + 496);
      v90 = *(v0 + 472);
      v91 = *(v0 + 440);
      v179 = *(v0 + 448);
      v184 = *(v0 + 664);
      v92 = swift_slowAlloc();
      v190 = swift_slowAlloc();
      v192[0] = v190;
      *v92 = 136315138;
      swift_beginAccess();
      v87(v88, v89, v91);
      v87(v90, v88, v91);
      v93 = String.init<A>(describing:)();
      v95 = v94;
      v184(v88, v91);
      v96 = sub_10000C4E4(v93, v95, v192);

      *(v92 + 4) = v96;
      _os_log_impl(&_mh_execute_header, v84, v85, "Classroom Ask open/move END - accepted {destination: %s}", v92, 0xCu);
      sub_10000C60C(v190);
    }

    v152 = *(v0 + 656);
    v97 = *(v0 + 648);
    v174 = *(v0 + 624);
    v180 = *(v0 + 632);
    v164 = *(v0 + 600);
    v168 = *(v0 + 576);
    v98 = *(v0 + 488);
    v172 = *(v0 + 464);
    v99 = *(v0 + 440);
    v185 = *(v0 + 456);
    v191 = *(v0 + 448);
    v100 = *(v0 + 408);
    v101 = *(v0 + 416);
    v159 = *(v0 + 344);
    v102 = *(v0 + 320);
    v148 = *(v0 + 328);
    v150 = *(v0 + 400);
    v103 = sub_10028088C(&unk_100974E60, &qword_100808EC0);
    v104 = *(v103 + 48);
    v105 = *(v103 + 64);
    swift_beginAccess();
    v97(v101, v98, v99);
    *(v101 + v104) = v102;
    *(v101 + v105) = v148;
    (*(v100 + 104))(v101, enum case for SFAirDropReceive.Transfer.State.opening(_:), v150);

    sub_100687AF8(v101, v164);
    (*(v100 + 8))(v101, v150);
    v174(v164, v168);
    v97(v172, v98, v99);
    v97(v185, v172, v99);
    v106 = (*(v191 + 88))(v185, v99);
    if (v106 == enum case for SFAirDropReceive.ItemDestination.customApp(_:))
    {
      v107 = *(v0 + 456);
      (*(*(v0 + 448) + 96))(v107, *(v0 + 440));
      v108 = *v107;
      v109 = v107[1];
      v110 = *(v0 + 664);
      v111 = *(v0 + 464);
      v112 = *(v0 + 440);
      v113 = *(v0 + 448);
      if (v108 == 0xD000000000000034 && 0x800000010078AA10 == v109)
      {

        v110(v111, v112);
LABEL_31:
        v134 = *(v0 + 664);
        v135 = *(v0 + 656);
        v136 = *(v0 + 488);
        v137 = *(v0 + 440);
        v138 = *(v0 + 328);
        (*(v0 + 648))(*(v0 + 312), v136, v137);

        v134(v136, v137);
        sub_10000C60C((v0 + 16));
        v183 = *(v0 + 328);
        v189 = 1;
        goto LABEL_13;
      }

      v133 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v110(v111, v112);
      if (v133)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v121 = v106;
      v122 = enum case for SFAirDropReceive.ItemDestination.noItem(_:);
      v123 = *(v0 + 448) + 8;
      (*(v0 + 664))(*(v0 + 464), *(v0 + 440));
      if (v121 == v122)
      {
        goto LABEL_31;
      }

      (*(v0 + 664))(*(v0 + 456), *(v0 + 440));
    }

    v139 = *(v0 + 488);
    v140 = *(v0 + 392);
    v141 = *(v0 + 328);
    v142 = *(v0 + 40);
    v143 = *(v0 + 48);
    sub_10002CDC0((v0 + 16), v142);
    (*(v143 + 8))(v141, v139, v142, v143);
    v144 = async function pointer to SFProgressTask.finalValue.getter[1];
    v145 = swift_task_alloc();
    *(v0 + 704) = v145;
    *v145 = v0;
    v145[1] = sub_1002E11A0;
    v146 = *(v0 + 392);
    v147 = *(v0 + 376);

    return SFProgressTask.finalValue.getter(v0 + 720, v147);
  }

  else
  {
    v114 = *(v0 + 592);
    v115 = *(v0 + 432);
    v116 = *(v0 + 328);
    v175 = *(v0 + 336);
    v117 = *(v0 + 320);
    sub_1002A9938(v21 + v22, v0 + 176);
    v118 = *(v0 + 200);
    v119 = *(v0 + 208);
    sub_10002CDC0((v0 + 176), v118);
    CurrentValueSubject.value.getter();
    sub_100588474(v114, v116, 0, v175, v118, v119, v115);
    v120 = *(v0 + 440);
    v124 = *(v0 + 424);
    v125 = *(v0 + 408);
    v165 = *(v0 + 400);
    v169 = *(v0 + 576);
    v126 = *(v0 + 336);
    v176 = *(v0 + 344);
    v181 = *(v0 + 600);
    v127 = *(v0 + 320);
    v155 = *(v0 + 328);
    v160 = *(v0 + 432);
    (v182)(*(v0 + 592));
    sub_10000C60C((v0 + 176));
    v128 = sub_10028088C(&unk_10097C670, &qword_100805110);
    v129 = v128[12];
    v130 = v128[16];
    v131 = v128[20];
    v188(v124, v126, v120);
    *(v124 + v129) = v127;
    *(v124 + v130) = v155;
    v132 = sub_10028088C(&qword_100974E70, &qword_1007FE3F0);
    (*(*(v132 - 8) + 16))(v124 + v131, v160, v132);
    (*(v125 + 104))(v124, enum case for SFAirDropReceive.Transfer.State.waitingForOpenResponse(_:), v165);

    sub_100687AF8(v124, v181);
    v182(v181, v169);

    return _swift_task_switch(sub_1002E0398, 0, 0);
  }
}

uint64_t sub_1002E0398()
{
  v1 = v0[54];
  v2 = swift_task_alloc();
  v0[84] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[85] = v3;
  *(v3 + 16) = v1;
  v4 = async function pointer to withTaskCancellationHandler<A>(operation:onCancel:isolation:)[1];
  v5 = swift_task_alloc();
  v0[86] = v5;
  *v5 = v0;
  v5[1] = sub_1002E04A0;
  v6 = v0[60];
  v7 = v0[55];

  return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v6, &unk_1007F9898, v2, sub_1002E3870, v3, 0, 0, v7);
}

uint64_t sub_1002E04A0()
{
  v2 = *v1;
  v3 = *(*v1 + 688);
  v10 = *v1;
  *(*v1 + 696) = v0;

  if (v0)
  {
    v4 = sub_1002E0C78;
    v5 = 0;
  }

  else
  {
    v6 = v2[85];
    v7 = v2[84];
    v8 = v2[77];

    v4 = sub_1002E05D4;
    v5 = v8;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_1002E05D4()
{
  v92 = v0;
  v1 = v0[60];
  v2 = v0[61];
  v3 = v0[55];
  v4 = v0[56];
  v5 = v0[54];
  (*(v0[51] + 8))(v0[53], v0[50]);
  sub_100005508(v5, &qword_100976908, &unk_100801D60);
  (*(v4 + 40))(v2, v1, v3);
  v6 = v0[43] + v0[80];
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[82];
    v10 = v0[81];
    v12 = v0[61];
    v11 = v0[62];
    v13 = v0[59];
    v14 = v0[55];
    v82 = v0[56];
    v85 = v0[83];
    v15 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    v91 = v88;
    *v15 = 136315138;
    swift_beginAccess();
    v10(v11, v12, v14);
    v10(v13, v11, v14);
    v16 = String.init<A>(describing:)();
    v18 = v17;
    v85(v11, v14);
    v19 = sub_10000C4E4(v16, v18, &v91);

    *(v15 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v7, v8, "Classroom Ask open/move END - accepted {destination: %s}", v15, 0xCu);
    sub_10000C60C(v88);
  }

  v69 = v0[82];
  v20 = v0[81];
  v80 = v0[78];
  v83 = v0[79];
  v74 = v0[75];
  v76 = v0[72];
  v21 = v0[61];
  v78 = v0[58];
  v22 = v0[55];
  v86 = v0[57];
  v89 = v0[56];
  v23 = v0[51];
  v24 = v0[52];
  v72 = v0[43];
  v25 = v0[40];
  v67 = v0[41];
  v68 = v0[50];
  v26 = sub_10028088C(&unk_100974E60, &qword_100808EC0);
  v27 = *(v26 + 48);
  v28 = *(v26 + 64);
  swift_beginAccess();
  v20(v24, v21, v22);
  *(v24 + v27) = v25;
  *(v24 + v28) = v67;
  (*(v23 + 104))(v24, enum case for SFAirDropReceive.Transfer.State.opening(_:), v68);

  sub_100687AF8(v24, v74);
  (*(v23 + 8))(v24, v68);
  v80(v74, v76);
  v20(v78, v21, v22);
  v20(v86, v78, v22);
  v29 = (*(v89 + 88))(v86, v22);
  if (v29 == enum case for SFAirDropReceive.ItemDestination.customApp(_:))
  {
    v30 = v0[57];
    (*(v0[56] + 96))(v30, v0[55]);
    v31 = *v30;
    v32 = v30[1];
    v33 = v0[83];
    v34 = v0[58];
    v35 = v0[55];
    v36 = v0[56];
    if (v31 == 0xD000000000000034 && 0x800000010078AA10 == v32)
    {

      v33(v34, v35);
LABEL_10:
      v41 = v0[83];
      v42 = v0[82];
      v43 = v0[61];
      v44 = v0[55];
      v45 = v0[41];
      (v0[81])(v0[39], v43, v44);

      v41(v43, v44);
      sub_10000C60C(v0 + 2);
      v90 = v0[41];
      v46 = v0[76];
      v47 = v0[75];
      v48 = v0[74];
      v49 = v0[71];
      v50 = v0[70];
      v51 = v0[67];
      v52 = v0[66];
      v54 = v0[62];
      v53 = v0[63];
      v55 = v0[61];
      v70 = v0[60];
      v71 = v0[59];
      v73 = v0[58];
      v75 = v0[57];
      v77 = v0[54];
      v79 = v0[53];
      v81 = v0[52];
      v84 = v0[49];
      v87 = v0[46];

      v56 = v0[1];

      return v56(1, v90);
    }

    v40 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v33(v34, v35);
    if (v40)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v37 = v29;
    v38 = enum case for SFAirDropReceive.ItemDestination.noItem(_:);
    v39 = v0[56] + 8;
    (v0[83])(v0[58], v0[55]);
    if (v37 == v38)
    {
      goto LABEL_10;
    }

    (v0[83])(v0[57], v0[55]);
  }

  v58 = v0[61];
  v59 = v0[49];
  v60 = v0[41];
  v61 = v0[5];
  v62 = v0[6];
  sub_10002CDC0(v0 + 2, v61);
  (*(v62 + 8))(v60, v58, v61, v62);
  v63 = async function pointer to SFProgressTask.finalValue.getter[1];
  v64 = swift_task_alloc();
  v0[88] = v64;
  *v64 = v0;
  v64[1] = sub_1002E11A0;
  v65 = v0[49];
  v66 = v0[47];

  return SFProgressTask.finalValue.getter(v0 + 90, v66);
}

uint64_t sub_1002E0C78()
{
  v1 = v0[85];
  v2 = v0[84];
  v3 = v0[77];

  return _swift_task_switch(sub_1002E0CF0, v3, 0);
}

uint64_t sub_1002E0CF0()
{
  v1 = v0[83];
  v2 = v0[61];
  v3 = v0[55];
  v4 = v0[56];
  v5 = v0[54];
  (*(v0[51] + 8))(v0[53], v0[50]);
  sub_100005508(v5, &qword_100976908, &unk_100801D60);
  v1(v2, v3);
  v6 = v0[46];
  v7 = v0[44];
  v0[38] = v0[87];
  swift_errorRetain();
  sub_10028088C(&unk_10097A930, &unk_1007F9050);
  if (swift_dynamicCast())
  {
    v8 = (*(v0[45] + 88))(v0[46], v0[44]);
    if (v8 == enum case for SFAirDropReceive.Failure.declined(_:))
    {
      v9 = v0[80];
      v10 = v0[43];

      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        v14 = "Classroom Ask open/move END - Declined. Not opening or moving";
LABEL_8:
        _os_log_impl(&_mh_execute_header, v11, v12, v14, v13, 2u);

        goto LABEL_9;
      }

      goto LABEL_9;
    }

    if (v8 == enum case for SFAirDropReceive.Failure.askNotHandled(_:))
    {
      v15 = v0[80];
      v16 = v0[43];

      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        v14 = "Classroom Ask open/move END - Not handled. Not opening or moving";
        goto LABEL_8;
      }

LABEL_9:
      v17 = v0[82];
      v18 = v0[81];
      v19 = v0[55];
      v20 = v0[42];
      v21 = v0[39];

      v18(v21, v20, v19);
      v22 = v0[38];

      sub_10000C60C(v0 + 2);
      v23 = v0[76];
      v24 = v0[75];
      v25 = v0[74];
      v26 = v0[71];
      v27 = v0[70];
      v28 = v0[67];
      v29 = v0[66];
      v31 = v0[62];
      v30 = v0[63];
      v32 = v0[61];
      v47 = v0[60];
      v49 = v0[59];
      v51 = v0[58];
      v53 = v0[57];
      v55 = v0[54];
      v57 = v0[53];
      v59 = v0[52];
      v61 = v0[49];
      v63 = v0[46];

      v33 = v0[1];

      return v33(0, _swiftEmptyArrayStorage);
    }

    (*(v0[45] + 8))(v0[46], v0[44]);
  }

  v35 = v0[76];
  v36 = v0[75];
  v37 = v0[74];
  v38 = v0[71];
  v39 = v0[70];
  v40 = v0[67];
  v41 = v0[66];
  v42 = v0[63];
  v45 = v0[62];
  v46 = v0[61];
  v48 = v0[60];
  v50 = v0[59];
  v52 = v0[58];
  v54 = v0[57];
  v56 = v0[54];
  v58 = v0[53];
  v60 = v0[52];
  v62 = v0[49];
  v64 = v0[46];
  v43 = v0[38];

  sub_10000C60C(v0 + 2);

  v44 = v0[1];

  return v44(0);
}

uint64_t sub_1002E11A0()
{
  v2 = *v1;
  v3 = *(*v1 + 704);
  v4 = *v1;
  *(*v1 + 712) = v0;

  v5 = v2[77];
  (*(v2[48] + 8))(v2[49], v2[47]);
  if (v0)
  {
    v6 = sub_1002E14E4;
  }

  else
  {
    v6 = sub_1002E131C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1002E131C()
{
  v1 = *(v0 + 664);
  v2 = *(v0 + 656);
  v3 = *(v0 + 488);
  v4 = *(v0 + 440);
  v5 = *(v0 + 328);
  v28 = *(v0 + 720);
  (*(v0 + 648))(*(v0 + 312), v3, v4);

  v1(v3, v4);
  sub_10000C60C((v0 + 16));
  v27 = *(v0 + 328);
  v6 = *(v0 + 608);
  v7 = *(v0 + 600);
  v8 = *(v0 + 592);
  v9 = *(v0 + 568);
  v10 = *(v0 + 560);
  v11 = *(v0 + 536);
  v12 = *(v0 + 528);
  v14 = *(v0 + 496);
  v13 = *(v0 + 504);
  v15 = *(v0 + 488);
  v18 = *(v0 + 480);
  v19 = *(v0 + 472);
  v20 = *(v0 + 464);
  v21 = *(v0 + 456);
  v22 = *(v0 + 432);
  v23 = *(v0 + 424);
  v24 = *(v0 + 416);
  v25 = *(v0 + 392);
  v26 = *(v0 + 368);

  v16 = *(v0 + 8);

  return v16(v28, v27);
}

uint64_t sub_1002E14E4()
{
  v1 = *(v0 + 448) + 8;
  (*(v0 + 664))(*(v0 + 488), *(v0 + 440));
  v2 = *(v0 + 368);
  v3 = *(v0 + 352);
  *(v0 + 304) = *(v0 + 712);
  swift_errorRetain();
  sub_10028088C(&unk_10097A930, &unk_1007F9050);
  if (swift_dynamicCast())
  {
    v4 = (*(*(v0 + 360) + 88))(*(v0 + 368), *(v0 + 352));
    if (v4 == enum case for SFAirDropReceive.Failure.declined(_:))
    {
      v5 = *(v0 + 640);
      v6 = *(v0 + 344);

      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        v10 = "Classroom Ask open/move END - Declined. Not opening or moving";
LABEL_8:
        _os_log_impl(&_mh_execute_header, v7, v8, v10, v9, 2u);

        goto LABEL_9;
      }

      goto LABEL_9;
    }

    if (v4 == enum case for SFAirDropReceive.Failure.askNotHandled(_:))
    {
      v11 = *(v0 + 640);
      v12 = *(v0 + 344);

      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        v10 = "Classroom Ask open/move END - Not handled. Not opening or moving";
        goto LABEL_8;
      }

LABEL_9:
      v13 = *(v0 + 656);
      v14 = *(v0 + 648);
      v15 = *(v0 + 440);
      v16 = *(v0 + 336);
      v17 = *(v0 + 312);

      v14(v17, v16, v15);
      v18 = *(v0 + 304);

      sub_10000C60C((v0 + 16));
      v19 = *(v0 + 608);
      v20 = *(v0 + 600);
      v21 = *(v0 + 592);
      v22 = *(v0 + 568);
      v23 = *(v0 + 560);
      v24 = *(v0 + 536);
      v25 = *(v0 + 528);
      v27 = *(v0 + 496);
      v26 = *(v0 + 504);
      v28 = *(v0 + 488);
      v43 = *(v0 + 480);
      v45 = *(v0 + 472);
      v47 = *(v0 + 464);
      v49 = *(v0 + 456);
      v51 = *(v0 + 432);
      v53 = *(v0 + 424);
      v55 = *(v0 + 416);
      v57 = *(v0 + 392);
      v59 = *(v0 + 368);

      v29 = *(v0 + 8);

      return v29(0, _swiftEmptyArrayStorage);
    }

    (*(*(v0 + 360) + 8))(*(v0 + 368), *(v0 + 352));
  }

  v31 = *(v0 + 608);
  v32 = *(v0 + 600);
  v33 = *(v0 + 592);
  v34 = *(v0 + 568);
  v35 = *(v0 + 560);
  v36 = *(v0 + 536);
  v37 = *(v0 + 528);
  v38 = *(v0 + 504);
  v41 = *(v0 + 496);
  v42 = *(v0 + 488);
  v44 = *(v0 + 480);
  v46 = *(v0 + 472);
  v48 = *(v0 + 464);
  v50 = *(v0 + 456);
  v52 = *(v0 + 432);
  v54 = *(v0 + 424);
  v56 = *(v0 + 416);
  v58 = *(v0 + 392);
  v60 = *(v0 + 368);
  v39 = *(v0 + 304);

  sub_10000C60C((v0 + 16));

  v40 = *(v0 + 8);

  return v40(0);
}

uint64_t sub_1002E195C()
{
  v1 = *(v0 + OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine15ClassroomRunner_recordID + 8);
}

uint64_t sub_1002E19A0()
{
  v0 = sub_100687998();
  v1 = *(v0 + OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine15ClassroomRunner_classroomHandler);

  v2 = *(v0 + OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine15ClassroomRunner_recordID + 8);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t _s15ClassroomRunnerCMa()
{
  result = qword_1009766C8;
  if (!qword_1009766C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1002E1ADC(uint64_t a1, uint64_t a2)
{
  v3[28] = a2;
  v3[29] = v2;
  v3[27] = a1;
  v4 = type metadata accessor for SFAirDropReceive.Failure();
  v3[30] = v4;
  v5 = *(v4 - 8);
  v3[31] = v5;
  v6 = *(v5 + 64) + 15;
  v3[32] = swift_task_alloc();
  v7 = *(*(sub_10028088C(&unk_1009892C0, &qword_10080F030) - 8) + 64) + 15;
  v3[33] = swift_task_alloc();
  v8 = *(*(sub_10028088C(&qword_10097A7F0, &unk_1007FB600) - 8) + 64) + 15;
  v3[34] = swift_task_alloc();
  v9 = *(*(sub_10028088C(&unk_1009892D0, &qword_1007F9870) - 8) + 64) + 15;
  v3[35] = swift_task_alloc();
  v10 = type metadata accessor for SFAirDropReceive.ItemDestination();
  v3[36] = v10;
  v11 = *(v10 - 8);
  v3[37] = v11;
  v12 = *(v11 + 64) + 15;
  v3[38] = swift_task_alloc();
  v13 = sub_10028088C(&unk_100989310, &qword_1007F9878);
  v3[39] = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  v15 = sub_10028088C(&qword_1009768F0, &unk_100808F60);
  v3[42] = v15;
  v16 = *(*(v15 - 8) + 64) + 15;
  v3[43] = swift_task_alloc();
  v17 = type metadata accessor for SFAirDropReceive.Transfer.State();
  v3[44] = v17;
  v18 = *(v17 - 8);
  v3[45] = v18;
  v19 = *(v18 + 64) + 15;
  v3[46] = swift_task_alloc();
  v20 = type metadata accessor for Date();
  v3[47] = v20;
  v21 = *(v20 - 8);
  v3[48] = v21;
  v22 = *(v21 + 64) + 15;
  v3[49] = swift_task_alloc();
  v3[50] = swift_task_alloc();
  v23 = type metadata accessor for SFAirDrop.DeclineAction();
  v3[51] = v23;
  v24 = *(v23 - 8);
  v3[52] = v24;
  v25 = *(v24 + 64) + 15;
  v3[53] = swift_task_alloc();
  v26 = type metadata accessor for SFAirDropReceive.AskRequest();
  v3[54] = v26;
  v27 = *(v26 - 8);
  v3[55] = v27;
  v28 = *(v27 + 64) + 15;
  v3[56] = swift_task_alloc();
  v29 = type metadata accessor for SFAirDropReceive.Transfer();
  v3[57] = v29;
  v30 = *(v29 - 8);
  v3[58] = v30;
  v31 = *(v30 + 64) + 15;
  v3[59] = swift_task_alloc();
  v32 = sub_10028088C(&qword_1009768F8, &unk_1008092B0);
  v3[60] = v32;
  v33 = *(v32 - 8);
  v3[61] = v33;
  v34 = *(v33 + 64) + 15;
  v3[62] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v35 = static AirDropActor.shared;
  v3[63] = static AirDropActor.shared;

  return _swift_task_switch(sub_1002E1FA4, v35, 0);
}

uint64_t sub_1002E1FA4()
{
  v34 = *(v0 + 496);
  v1 = *(v0 + 472);
  v47 = *(v0 + 464);
  v2 = *(v0 + 448);
  v45 = *(v0 + 456);
  v31 = *(v0 + 440);
  v32 = *(v0 + 432);
  v35 = *(v0 + 424);
  v41 = *(v0 + 416);
  v42 = *(v0 + 408);
  v36 = *(v0 + 400);
  v38 = *(v0 + 368);
  v43 = *(v0 + 360);
  v44 = *(v0 + 352);
  v37 = *(v0 + 296);
  v3 = *(v0 + 232);
  v39 = *(v0 + 224);
  v40 = *(v0 + 288);
  v4 = *(v0 + 216);
  sub_10028088C(&qword_1009764E8, &qword_1007F9790);
  SFProgressContinuation.task.getter();
  v5 = OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_contentHandler;
  *(v0 + 512) = OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_contentHandler;
  swift_beginAccess();
  sub_1002A9938(v3 + v5, v0 + 16);
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);
  sub_10002CDC0((v0 + 16), v6);
  v8 = *(v3 + OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_subject);
  CurrentValueSubject.value.getter();
  SFAirDropReceive.Transfer.askRequest.getter();
  v46 = *(v47 + 8);
  *(v0 + 520) = v46;
  *(v0 + 528) = (v47 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v46(v1, v45);
  v33 = (*(v7 + 56))(v2, 1, v6, v7);
  v10 = v9;
  *(v0 + 536) = v33;
  *(v0 + 544) = v9;
  (*(v31 + 8))(v2, v32);
  sub_10000C60C((v0 + 16));
  sub_1002A9938(v3 + v5, v0 + 56);
  v11 = *(v0 + 80);
  v12 = *(v0 + 88);
  sub_10002CDC0((v0 + 56), v11);
  CurrentValueSubject.value.getter();
  v13 = type metadata accessor for SFAirDrop.Progress();
  *(v0 + 552) = v13;
  v14 = sub_10028088C(&qword_100975610, &qword_1007F89B0);
  sub_100587FBC(v1, 0x726566736E617274, 0xEC000000676E6972, v34, v11, v13, v14, v12, v35);
  v46(v1, v45);
  sub_10000C60C((v0 + 56));
  static Date.now.getter();
  v15 = sub_10028088C(&qword_10097C680, &unk_100808F80);
  *(v0 + 560) = v15;
  v16 = v15[12];
  v17 = (v38 + v15[16]);
  v18 = v15[20];
  v19 = *(v37 + 16);
  *(v0 + 568) = v19;
  *(v0 + 576) = (v37 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v19(v38, v39, v40);
  v20 = enum case for SFAirDrop.Progress.transferringIndeterminate(_:);
  v21 = *(v13 - 8);
  v22 = *(v21 + 104);
  *(v0 + 584) = v22;
  *(v0 + 592) = (v21 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v22(v38 + v16, v20, v13);
  *v17 = v33;
  v17[1] = v10;
  v23 = *(v41 + 16);
  *(v0 + 600) = v23;
  *(v0 + 608) = (v41 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v23(v38 + v18, v35, v42);
  *(v0 + 760) = enum case for SFAirDropReceive.Transfer.State.transferring(_:);
  v24 = *(v43 + 104);
  *(v0 + 616) = v24;
  *(v0 + 624) = (v43 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v24(v38);

  sub_100687AF8(v38, v1);
  v25 = *(v43 + 8);
  *(v0 + 632) = v25;
  *(v0 + 640) = (v43 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v25(v38, v44);
  v46(v1, v45);
  v26 = async function pointer to SFProgressTask.finalValue.getter[1];
  v27 = swift_task_alloc();
  *(v0 + 648) = v27;
  *v27 = v0;
  v27[1] = sub_1002E2404;
  v28 = *(v0 + 496);
  v29 = *(v0 + 480);

  return SFProgressTask.finalValue.getter(v0 + 208, v29);
}

uint64_t sub_1002E2404()
{
  v2 = *v1;
  v3 = *(*v1 + 648);
  v9 = *v1;
  *(*v1 + 656) = v0;

  if (v0)
  {
    v4 = *(v2 + 544);
    v5 = *(v2 + 504);

    v6 = sub_1002E3398;
    v7 = v5;
  }

  else
  {
    v7 = *(v2 + 504);
    v6 = sub_1002E252C;
  }

  return _swift_task_switch(v6, v7, 0);
}

uint64_t sub_1002E252C()
{
  v44 = *(v0 + 632);
  v45 = *(v0 + 640);
  v37 = *(v0 + 616);
  v38 = *(v0 + 624);
  v36 = *(v0 + 760);
  v34 = *(v0 + 600);
  v35 = *(v0 + 608);
  v32 = *(v0 + 584);
  v33 = *(v0 + 592);
  v1 = *(v0 + 576);
  v2 = *(v0 + 568);
  v3 = *(v0 + 560);
  v4 = *(v0 + 552);
  v31 = *(v0 + 544);
  v30 = *(v0 + 536);
  v43 = *(v0 + 528);
  v42 = *(v0 + 520);
  v5 = *(v0 + 472);
  v41 = *(v0 + 456);
  v6 = *(v0 + 424);
  v28 = *(v0 + 408);
  v48 = *(v0 + 400);
  v40 = *(v0 + 392);
  v7 = *(v0 + 368);
  v46 = *(v0 + 376);
  v8 = *(v0 + 352);
  v9 = *(v0 + 288);
  v10 = *(v0 + 208);
  *(v0 + 664) = v10;
  v11 = v3[12];
  v12 = (v7 + v3[16]);
  v13 = v3[20];
  v29 = *(v0 + 232);
  v2(v7, *(v0 + 224), v9);
  *(v7 + v11) = v10;
  v32(v7 + v11, enum case for SFAirDrop.Progress.completed(_:), v4);
  *v12 = v30;
  v12[1] = v31;
  v34(v7 + v13, v6, v28);
  v37(v7, v36, v8);
  v39 = v10;

  sub_100687AF8(v7, v5);
  v44(v7, v8);
  v42(v5, v41);
  static Date.now.getter();
  sub_1002E3918(&qword_10097E910, &type metadata accessor for Date);
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v15 = *(v0 + 392);
    v16 = *(v0 + 376);
    v17 = *(v0 + 384);
    v18 = *(v0 + 344);
    v49 = *(v0 + 336);
    v20 = *(v0 + 320);
    v19 = *(v0 + 328);
    v21 = *(v0 + 312);
    (*(v17 + 16))(v19, *(v0 + 400), v16);
    v22 = *(v17 + 32);
    v22(v19 + *(v21 + 48), v15, v16);
    sub_1002E36F0(v19, v20);
    v47 = *(v21 + 48);
    v22(v18, v20, v16);
    v23 = *(v17 + 8);
    *(v0 + 672) = v23;
    *(v0 + 680) = (v17 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v23(v20 + v47, v16);
    sub_1002E3760(v19, v20);
    v22(v18 + *(v49 + 36), v20 + *(v21 + 48), v16);
    v23(v20, v16);
    ClosedRange<>.interval.getter();
    *(v0 + 688) = v24;
    sub_100005508(v18, &qword_1009768F0, &unk_100808F60);
    v25 = swift_task_alloc();
    *(v0 + 696) = v25;
    *v25 = v0;
    v25[1] = sub_1002E28A4;
    v26 = *(v0 + 224);
    v27 = *(v0 + 232);

    return sub_100688640(v39, v26);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1002E28A4(uint64_t a1, double a2)
{
  v6 = *v3;
  v7 = *(*v3 + 696);
  v8 = *v3;
  *(v6 + 704) = a1;
  *(v6 + 712) = v2;

  if (v2)
  {
    v9 = *(v6 + 664);
    v10 = *(v6 + 504);

    return _swift_task_switch(sub_1002E34B8, v10, 0);
  }

  else
  {
    v11 = *(v6 + 688) + a2;
    v12 = swift_task_alloc();
    *(v6 + 720) = v12;
    *v12 = v8;
    v12[1] = sub_1002E2A60;
    v13 = *(v6 + 664);
    v14 = *(v6 + 304);
    v15 = *(v6 + 224);
    v16 = *(v6 + 232);

    return sub_1002DECE0(v14, 1, v13, a1, v15);
  }
}

uint64_t sub_1002E2A60(uint64_t a1, uint64_t a2)
{
  v5 = *v3;
  v6 = *(*v3 + 720);
  v7 = *v3;
  *(*v3 + 728) = v2;

  if (v2)
  {
    v8 = v5[88];
    v9 = v5[83];
    v10 = v5[63];

    v11 = sub_1002E35D4;
    v12 = v10;
  }

  else
  {
    v12 = v5[63];
    v5[92] = a2;
    v11 = sub_1002E2BAC;
  }

  return _swift_task_switch(v11, v12, 0);
}

uint64_t sub_1002E2BAC()
{
  v43 = v0[92];
  v40 = v0[88];
  v63 = v0[85];
  v59 = v0[84];
  v38 = v0[83];
  v46 = v0[79];
  v47 = v0[80];
  v41 = v0[77];
  v42 = v0[78];
  v35 = v0[71];
  v36 = v0[72];
  v50 = v0[66];
  v49 = v0[65];
  v44 = v0[64];
  v61 = v0[62];
  v55 = v0[61];
  v57 = v0[60];
  v37 = v0[59];
  v48 = v0[57];
  v53 = v0[51];
  v54 = v0[53];
  v51 = v0[50];
  v52 = v0[52];
  v1 = v0[47];
  v2 = v0[48];
  v3 = v0[46];
  v34 = v0[44];
  v33 = v0[38];
  v45 = v0[37];
  v4 = enum case for SFAirDropReceive.Transfer.Metrics.TransferResult.success(_:);
  v5 = v0[35];
  v32 = v0[36];
  v6 = v0[34];
  v39 = v0[33];
  v7 = v0[29];
  v8 = type metadata accessor for SFAirDropReceive.Transfer.Metrics.TransferResult();
  v9 = *(v8 - 8);
  (*(v9 + 104))(v5, v4, v8);
  (*(v9 + 56))(v5, 0, 1, v8);
  v10 = OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_metrics;
  swift_beginAccess();
  SFAirDropReceive.Transfer.Metrics.result.setter();
  swift_endAccess();
  static Date.now.getter();
  (*(v2 + 56))(v6, 0, 1, v1);
  swift_beginAccess();
  SFAirDropReceive.Transfer.Metrics.endDate.setter();
  swift_endAccess();
  v11 = sub_10028088C(&unk_10097E9B0, &unk_100808D90);
  v12 = v11[12];
  v13 = (v3 + v11[16]);
  v30 = v11[24];
  v31 = v11[20];
  v14 = v11[28];
  v15 = type metadata accessor for SFAirDropReceive.Transfer.Metrics();
  (*(*(v15 - 8) + 16))(v3, v7 + v10, v15);
  v35(v3 + v12, v33, v32);
  *v13 = 0;
  v13[1] = 0;
  *(v3 + v31) = v38;
  *(v3 + v30) = v40;
  *(v3 + v14) = v43;
  v41(v3, enum case for SFAirDropReceive.Transfer.State.completedSuccessfully(_:), v34);
  sub_100687AF8(v3, v37);
  v46(v3, v34);
  sub_1002A9938(v7 + v44, (v0 + 12));
  v16 = v0[15];
  v17 = v0[16];
  sub_10002CDC0(v0 + 12, v16);
  v35(v39, v33, v32);
  (*(v45 + 56))(v39, 0, 1, v32);
  (*(v17 + 96))(v37, 1, v39, v16, v17);
  sub_100005508(v39, &unk_1009892C0, &qword_10080F030);
  v49(v37, v48);
  sub_10000C60C(v0 + 12);
  (*(v45 + 8))(v33, v32);
  v59(v51, v1);
  (*(v52 + 8))(v54, v53);
  (*(v55 + 8))(v61, v57);
  v18 = v0[62];
  v19 = v0[59];
  v20 = v0[56];
  v21 = v0[53];
  v23 = v0[49];
  v22 = v0[50];
  v24 = v0[46];
  v25 = v0[43];
  v27 = v0[40];
  v26 = v0[41];
  v56 = v0[38];
  v58 = v0[35];
  v60 = v0[34];
  v62 = v0[33];
  v64 = v0[32];

  v28 = v0[1];

  return v28();
}

uint64_t sub_1002E3094()
{
  v1 = *(*v0 + 752);
  v2 = *(*v0 + 528);
  v3 = *(*v0 + 520);
  v4 = *(*v0 + 504);
  v5 = *(*v0 + 472);
  v6 = *(*v0 + 456);
  v7 = *(*v0 + 256);
  v8 = *(*v0 + 248);
  v9 = *(*v0 + 240);
  v11 = *v0;

  (*(v8 + 8))(v7, v9);
  v3(v5, v6);

  return _swift_task_switch(sub_1002E326C, v4, 0);
}

uint64_t sub_1002E326C()
{
  v1 = v0[93];

  v2 = v0[62];
  v3 = v0[59];
  v4 = v0[56];
  v5 = v0[53];
  v7 = v0[49];
  v6 = v0[50];
  v8 = v0[46];
  v9 = v0[43];
  v11 = v0[40];
  v10 = v0[41];
  v14 = v0[38];
  v15 = v0[35];
  v16 = v0[34];
  v17 = v0[33];
  v18 = v0[32];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1002E3398()
{
  v2 = v0[61];
  v1 = v0[62];
  v3 = v0[60];
  v5 = v0[52];
  v4 = v0[53];
  v6 = v0[51];
  (*(v0[48] + 8))(v0[50], v0[47]);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  v0[93] = v0[82];
  v7 = v0[32];
  swift_errorRetain();
  SFAirDropReceive.Failure.init(_:)();
  v8 = swift_task_alloc();
  v0[94] = v8;
  *v8 = v0;
  v8[1] = sub_1002E3094;
  v9 = v0[59];
  v10 = v0[32];
  v11 = v0[29];

  return sub_10068E200(v9, v10);
}

uint64_t sub_1002E34B8()
{
  v1 = *(v0 + 680);
  v3 = *(v0 + 488);
  v2 = *(v0 + 496);
  v4 = *(v0 + 480);
  v6 = *(v0 + 416);
  v5 = *(v0 + 424);
  v7 = *(v0 + 408);
  (*(v0 + 672))(*(v0 + 400), *(v0 + 376));
  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);
  *(v0 + 744) = *(v0 + 712);
  v8 = *(v0 + 256);
  swift_errorRetain();
  SFAirDropReceive.Failure.init(_:)();
  v9 = swift_task_alloc();
  *(v0 + 752) = v9;
  *v9 = v0;
  v9[1] = sub_1002E3094;
  v10 = *(v0 + 472);
  v11 = *(v0 + 256);
  v12 = *(v0 + 232);

  return sub_10068E200(v10, v11);
}

uint64_t sub_1002E35D4()
{
  v1 = *(v0 + 680);
  v3 = *(v0 + 488);
  v2 = *(v0 + 496);
  v4 = *(v0 + 480);
  v6 = *(v0 + 416);
  v5 = *(v0 + 424);
  v7 = *(v0 + 408);
  (*(v0 + 672))(*(v0 + 400), *(v0 + 376));
  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);
  *(v0 + 744) = *(v0 + 728);
  v8 = *(v0 + 256);
  swift_errorRetain();
  SFAirDropReceive.Failure.init(_:)();
  v9 = swift_task_alloc();
  *(v0 + 752) = v9;
  *v9 = v0;
  v9[1] = sub_1002E3094;
  v10 = *(v0 + 472);
  v11 = *(v0 + 256);
  v12 = *(v0 + 232);

  return sub_10068E200(v10, v11);
}

uint64_t sub_1002E36F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10028088C(&unk_100989310, &qword_1007F9878);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002E3760(uint64_t a1, uint64_t a2)
{
  v4 = sub_10028088C(&unk_100989310, &qword_1007F9878);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002E37D0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100005C00;

  return sub_10052F744(a1, v4);
}

uint64_t sub_1002E3878(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100005C04;

  return sub_10052F744(a1, v4);
}

uint64_t sub_1002E3918(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1002E3964()
{
  v1 = v0[15];

  v2 = v0[17];

  sub_10000C60C(v0 + 18);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1002E39D0()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_100976A18);
  v1 = sub_10000C4AC(v0, qword_100976A18);
  if (qword_100973758 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A0A50);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_1002E3A98()
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
    if (qword_100973570 == -1)
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
  sub_10000C4AC(v8, qword_100976A18);
  v9 = v0;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    *(v12 + 4) = v9;
    *v13 = v9;
    v14 = v9;
    _os_log_impl(&_mh_execute_header, v10, v11, "SDAuthenticationAuthSession: Invalidating %@", v12, 0xCu);
    sub_10028924C(v13);
  }

  if (*&v9[OBJC_IVAR____TtC16DaemoniOSLibrary27SDAuthenticationAuthSession_rangingSession])
  {
    v15 = *&v9[OBJC_IVAR____TtC16DaemoniOSLibrary27SDAuthenticationAuthSession_rangingSession];

    sub_100431124();
  }

  v16 = *&v9[OBJC_IVAR____TtC16DaemoniOSLibrary27SDAuthenticationAuthSession_wifiRequest];
  if (v16)
  {
    v17 = objc_opt_self();
    v18 = v16;
    v19 = [v17 sharedManager];
    [v19 cancelWiFiRequest:v18];
  }
}

uint64_t sub_1002E3D2C()
{
  v1 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAuthenticationAuthSession_rangingSession);

  v2 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAuthenticationAuthSession_AWDLInfo);
  v3 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAuthenticationAuthSession_AWDLInfo + 8);

  return sub_100026AC0(v2, v3);
}

id sub_1002E3D80()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SDAuthenticationAuthSession();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for SDAuthenticationAuthSession()
{
  result = qword_100976A58;
  if (!qword_100976A58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1002E3EBC()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_100976A68);
  v1 = sub_10000C4AC(v0, qword_100976A68);
  if (qword_100973700 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A0948);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_1002E3F84(void *a1)
{
  if (a1)
  {
    v2 = objc_opt_self();
    v21 = 0;
    v3 = a1;
    v4 = [v2 archivedDataWithRootObject:v3 requiringSecureCoding:1 error:&v21];
    v5 = v21;
    if (v4)
    {
      v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;

      v9 = [objc_opt_self() standardUserDefaults];
      isa = Data._bridgeToObjectiveC()().super.isa;
      v11 = String._bridgeToObjectiveC()();
      [v9 setObject:isa forKey:v11];

      sub_100026AC0(v6, v8);
    }

    else
    {
      v13 = v5;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      if (qword_100973578 != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      sub_10000C4AC(v14, qword_100976A68);
      swift_errorRetain();
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        *v17 = 138412290;
        swift_errorRetain();
        v19 = _swift_stdlib_bridgeErrorToNSError();
        *(v17 + 4) = v19;
        *v18 = v19;
        _os_log_impl(&_mh_execute_header, v15, v16, "Failed to persist current pseudonym with error: %@", v17, 0xCu);
        sub_100005508(v18, &qword_100975400, &qword_1007F65D0);
      }

      else
      {
      }
    }
  }

  else
  {
    v12 = [objc_opt_self() standardUserDefaults];
    v20 = String._bridgeToObjectiveC()();
    [v12 removeObjectForKey:?];
  }
}

uint64_t sub_1002E42DC(uint64_t a1)
{
  v2 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v17 - v4;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002E4E88(a1, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_100005508(v5, &qword_10097A7F0, &unk_1007FB600);
    v11 = [objc_opt_self() standardUserDefaults];
    v12 = String._bridgeToObjectiveC()();
    [v11 removeObjectForKey:v12];

    return sub_100005508(a1, &qword_10097A7F0, &unk_1007FB600);
  }

  else
  {
    (*(v7 + 32))(v10, v5, v6);
    v14 = [objc_opt_self() standardUserDefaults];
    isa = Date._bridgeToObjectiveC()().super.isa;
    v16 = String._bridgeToObjectiveC()();
    [v14 setObject:isa forKey:v16];

    sub_100005508(a1, &qword_10097A7F0, &unk_1007FB600);
    return (*(v7 + 8))(v10, v6);
  }
}

void sub_1002E4564(void *a1)
{
  v1 = a1;
  if (a1[2])
  {
    v2 = sub_100280660(_swiftEmptyArrayStorage);
    v3 = v1 + 64;
    v4 = 1 << v1[32];
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(v1 + 8);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    v53 = v1;
    while (v6)
    {
      v11 = v8;
LABEL_12:
      v12 = __clz(__rbit64(v6)) | (v11 << 6);
      v13 = *(v1 + 7);
      v14 = (*(v1 + 6) + 16 * v12);
      v16 = *v14;
      v15 = v14[1];
      v17 = *(v13 + 8 * v12);

      v18 = v17;
      v19 = String._bridgeToObjectiveC()();
      if ((v2 & 0xC000000000000001) != 0)
      {
        if (v2 >= 0)
        {
          v2 &= 0xFFFFFFFFFFFFFF8uLL;
        }

        v20 = v18;
        v21 = __CocoaDictionary.count.getter();
        if (__OFADD__(v21, 1))
        {
          goto LABEL_38;
        }

        v2 = sub_1002E4C2C(v2, v21 + 1);
      }

      else
      {
        v22 = v18;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v55 = v2;
      v24 = sub_100570804(v19);
      v26 = *(v2 + 16);
      v27 = (v25 & 1) == 0;
      v28 = __OFADD__(v26, v27);
      v29 = v26 + v27;
      if (v28)
      {
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        swift_once();
        goto LABEL_33;
      }

      v30 = v25;
      if (*(v2 + 24) >= v29)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v34 = v24;
          sub_1002CEAFC();
          v24 = v34;
        }
      }

      else
      {
        sub_100572B88(v29, isUniquelyReferenced_nonNull_native);
        v24 = sub_100570804(v19);
        if ((v30 & 1) != (v31 & 1))
        {
          sub_1000276B4(0, &qword_100974E28, NSString_ptr);
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return;
        }
      }

      v6 &= v6 - 1;
      v2 = v55;
      if (v30)
      {
        v9 = v55[7];
        v10 = *(v9 + 8 * v24);
        *(v9 + 8 * v24) = v18;
      }

      else
      {
        v55[(v24 >> 6) + 8] |= 1 << v24;
        *(*(v2 + 48) + 8 * v24) = v19;
        *(*(v2 + 56) + 8 * v24) = v18;

        v32 = *(v2 + 16);
        v28 = __OFADD__(v32, 1);
        v33 = v32 + 1;
        if (v28)
        {
          goto LABEL_39;
        }

        *(v2 + 16) = v33;
      }

      v8 = v11;
      v1 = v53;
    }

    while (1)
    {
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v7)
      {
        break;
      }

      v6 = *&v3[8 * v11];
      ++v8;
      if (v6)
      {
        goto LABEL_12;
      }
    }

    v35 = objc_opt_self();
    sub_1000276B4(0, &qword_100974E28, NSString_ptr);
    sub_1000276B4(0, &qword_100976A88, IDSPseudonym_ptr);
    sub_1002A5510();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v55 = 0;
    v37 = [v35 archivedDataWithRootObject:isa requiringSecureCoding:1 error:&v55];

    v38 = v55;
    if (v37)
    {
      v39 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v41 = v40;

      v42 = [objc_opt_self() standardUserDefaults];
      v43 = Data._bridgeToObjectiveC()().super.isa;
      v44 = String._bridgeToObjectiveC()();
      [v42 setObject:v43 forKey:v44];

      sub_100026AC0(v39, v41);
      return;
    }

    v46 = v38;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_100973578 != -1)
    {
      goto LABEL_40;
    }

LABEL_33:
    v47 = type metadata accessor for Logger();
    sub_10000C4AC(v47, qword_100976A68);
    swift_errorRetain();
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      *v50 = 138412290;
      swift_errorRetain();
      v52 = _swift_stdlib_bridgeErrorToNSError();
      *(v50 + 4) = v52;
      *v51 = v52;
      _os_log_impl(&_mh_execute_header, v48, v49, "Failed to persist pseudonyms to revoke error: %@", v50, 0xCu);
      sub_100005508(v51, &qword_100975400, &qword_1007F65D0);
    }

    else
    {
    }
  }

  else
  {

    v45 = [objc_opt_self() standardUserDefaults];
    v54 = String._bridgeToObjectiveC()();
    [v45 removeObjectForKey:?];
  }
}

void (*sub_1002E4B8C(void *a1))(void **a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_10002E624();
  return sub_1002E4BD4;
}

void sub_1002E4BD4(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = *a1;

    sub_1002E4564(v4);
  }

  else
  {
    sub_1002E4564(*a1);
  }
}

Swift::Int sub_1002E4C2C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_10028088C(&qword_100974970, &unk_1007F9750);
    v2 = static _DictionaryStorage.convert(_:capacity:)();
    v19 = v2;
    __CocoaDictionary.makeIterator()();
    v3 = __CocoaDictionary.Iterator.next()();
    if (v3)
    {
      v4 = v3;
      sub_1000276B4(0, &qword_100974E28, NSString_ptr);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_1000276B4(0, &qword_100976A88, IDSPseudonym_ptr);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_100572B88(v12 + 1, 1);
        }

        v2 = v19;
        result = NSObject._rawHashValue(seed:)(*(v19 + 40));
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = __CocoaDictionary.Iterator.next()();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptyDictionarySingleton;
  }

  return v2;
}

uint64_t sub_1002E4E88(uint64_t a1, uint64_t a2)
{
  v4 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002E4EF8()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_1009A06B8);
  sub_10000C4AC(v0, qword_1009A06B8);
  return Logger.init(subsystem:category:)();
}

uint64_t HeadphoneProxFeatureClient.delegate.setter()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*HeadphoneProxFeatureClient.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC16DaemoniOSLibrary26HeadphoneProxFeatureClient_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1002E5170;
}

void sub_1002E5170(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  v5 = *(*a1 + 32) + *(*a1 + 40);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v6 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

char *sub_1002E51F0()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC16DaemoniOSLibrary26HeadphoneProxFeatureClient_manager;
  type metadata accessor for HeadphoneProxFeatureManager();
  *&v0[v2] = static HeadphoneProxFeatureManager.shared.getter();
  swift_unknownObjectWeakInit();
  v7.receiver = v0;
  v7.super_class = ObjectType;
  v3 = objc_msgSendSuper2(&v7, "init");
  v4 = *&v3[OBJC_IVAR____TtC16DaemoniOSLibrary26HeadphoneProxFeatureClient_manager];
  sub_1002E57E0();
  v5 = v3;

  dispatch thunk of HeadphoneProxFeatureManager.delegate.setter();

  return v5;
}

uint64_t HeadphoneProxFeatureClient.readyToShow(device:features:)(void *a1)
{
  if (qword_100973580 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_1009A06B8);
  v3 = a1;

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v19[0] = swift_slowAlloc();
    *v6 = 136315394;
    v7 = [v3 bluetoothAddress];
    if (v7)
    {
      v8 = v7;
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;
    }

    else
    {
      v11 = 0x8000000100789F30;
      v9 = 0xD000000000000015;
    }

    v12 = sub_10000C4E4(v9, v11, v19);

    *(v6 + 4) = v12;
    *(v6 + 12) = 2080;
    v13 = Array.description.getter();
    v15 = sub_10000C4E4(v13, v14, v19);

    *(v6 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v4, v5, "HeadphoneProxFeatureService: [Sharing] Features Ready To Show: Device: %s, Features: %s", v6, 0x16u);
    swift_arrayDestroy();
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v17 = result;
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v17 readyToShowWithDevice:v3 features:isa];

    return swift_unknownObjectRelease();
  }

  return result;
}

Swift::Bool __swiftcall HeadphoneProxFeatureClient.shouldShowWhatsNewCard(deviceAddress:)(Swift::String deviceAddress)
{
  object = deviceAddress._object;
  countAndFlagsBits = deviceAddress._countAndFlagsBits;
  v4 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary26HeadphoneProxFeatureClient_manager);
  v5 = dispatch thunk of HeadphoneProxFeatureManager.shouldShowWhatsNewCard(deviceAddress:)();
  if (qword_100973580 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000C4AC(v6, qword_1009A06B8);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v9 = 136315394;
    *(v9 + 4) = sub_10000C4E4(countAndFlagsBits, object, &v14);
    *(v9 + 12) = 2080;
    if (v5)
    {
      v10 = 5457241;
    }

    else
    {
      v10 = 20302;
    }

    if (v5)
    {
      v11 = 0xE300000000000000;
    }

    else
    {
      v11 = 0xE200000000000000;
    }

    v12 = sub_10000C4E4(v10, v11, &v14);

    *(v9 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v7, v8, "HeadphoneProxFeatureService: [Sharing] Should Show Whats New Card for Device: %s -> %s", v9, 0x16u);
    swift_arrayDestroy();
  }

  return v5 & 1;
}

unint64_t sub_1002E57E0()
{
  result = qword_100976AD0;
  if (!qword_100976AD0)
  {
    type metadata accessor for HeadphoneProxFeatureClient();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100976AD0);
  }

  return result;
}

uint64_t sub_1002E5834()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_100976AD8);
  v1 = sub_10000C4AC(v0, qword_100976AD8);
  if (qword_100973758 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A0A50);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1002E58FC(void *a1)
{
  v2 = v1;
  swift_defaultActor_initialize();
  *(v2 + 120) = -1;
  *(v2 + 124) = 0;
  *(v2 + 112) = a1;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = String.utf8CString.getter();
  v5 = a1;

  swift_beginAccess();
  v6 = notify_register_check((v4 + 32), (v2 + 120));
  swift_endAccess();

  if (v6)
  {
    if (qword_100973588 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000C4AC(v7, qword_100976AD8);

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v18[0] = swift_slowAlloc();
      *v10 = 136315650;
      _s19EnabledStateMonitorCMa();

      v11 = String.init<A>(describing:)();
      v13 = sub_10000C4E4(v11, v12, v18);

      *(v10 + 4) = v13;
      *(v10 + 12) = 2080;
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = sub_10000C4E4(v14, v15, v18);

      *(v10 + 14) = v16;
      *(v10 + 22) = 1024;
      *(v10 + 24) = v6;
      _os_log_impl(&_mh_execute_header, v8, v9, "%s: notify_register_check(%s) failed with error %u", v10, 0x1Cu);
      swift_arrayDestroy();
    }
  }

  return v2;
}

uint64_t sub_1002E5B4C()
{
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

__n128 sub_1002E5BB4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1002E5BC8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1002E5C10(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

id sub_1002E5C74()
{
  if (qword_100973588 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000C4AC(v0, qword_100976AD8);

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v9 = v4;
    *v3 = 136315138;
    _s19EnabledStateMonitorCMa();

    v5 = String.init<A>(describing:)();
    v7 = sub_10000C4E4(v5, v6, &v9);

    *(v3 + 4) = v7;
    _os_log_impl(&_mh_execute_header, v1, v2, "%s: start", v3, 0xCu);
    sub_10000C60C(v4);
  }

  return sub_1002E5DEC();
}

id sub_1002E5DEC()
{
  v1 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = aBlock - v3;
  result = [objc_opt_self() sharedMonitor];
  if (result)
  {
    v6 = result;
    v7 = [result deviceKeyBagUnlocked];

    if (v7)
    {
      goto LABEL_6;
    }

    result = [objc_opt_self() sharedManager];
    if (result)
    {
      v8 = result;
      v9 = [result localAttestedLTK];

      if (!v9)
      {
        if (qword_1009737D0 != -1)
        {
LABEL_23:
          swift_once();
        }

        v16 = 0;
        v17 = *(qword_1009A0B08 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKManager_localLTKByKeyClass);
        v18 = 1 << *(v17 + 32);
        v19 = -1;
        if (v18 < 64)
        {
          v19 = ~(-1 << v18);
        }

        v20 = v19 & *(v17 + 64);
        v21 = (v18 + 63) >> 6;
        do
        {
          if (!v20)
          {
            while (1)
            {
              v22 = v16 + 1;
              if (__OFADD__(v16, 1))
              {
                break;
              }

              if (v22 >= v21)
              {
                goto LABEL_6;
              }

              v20 = *(v17 + 64 + 8 * v22);
              ++v16;
              if (v20)
              {
                v16 = v22;
                goto LABEL_18;
              }
            }

            __break(1u);
            goto LABEL_23;
          }

          v22 = v16;
LABEL_18:
          v23 = __clz(__rbit64(v20));
          v20 &= v20 - 1;
        }

        while ((*(*(*(v17 + 56) + ((v22 << 9) | (8 * v23))) + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication13LTKCollection_ltksLoaded) & 1) != 0);
        v24 = [objc_opt_self() defaultCenter];
        if (qword_100973678 != -1)
        {
          swift_once();
        }

        v25 = qword_1009A07C8;
        v26 = [objc_opt_self() mainQueue];
        aBlock[4] = sub_1002E70DC;
        aBlock[5] = v0;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1002E679C;
        aBlock[3] = &unk_1008DA800;
        v27 = _Block_copy(aBlock);

        v28 = [v24 addObserverForName:v25 object:0 queue:v26 usingBlock:v27];
        _Block_release(v27);
        swift_unknownObjectRelease();

        return sub_1002E6890();
      }

      v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;

      sub_100026AC0(v10, v12);
LABEL_6:
      v13 = type metadata accessor for TaskPriority();
      (*(*(v13 - 8) + 56))(v4, 1, 1, v13);
      v14 = sub_1002E70E4();
      v15 = swift_allocObject();
      v15[2] = v0;
      v15[3] = v14;
      v15[4] = v0;
      swift_retain_n();
      sub_1002B3098(0, 0, v4, &unk_1007F9D18, v15);

      return sub_1002E6890();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1002E61E0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100005C04;

  return sub_1002E6270();
}

uint64_t sub_1002E6290()
{
  v15 = v0;
  if (qword_100973588 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_100976AD8);

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
    _s19EnabledStateMonitorCMa();

    v8 = String.init<A>(describing:)();
    v10 = sub_10000C4E4(v8, v9, &v14);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s: handleFirstUnlock", v6, 0xCu);
    sub_10000C60C(v7);
  }

  v11 = swift_task_alloc();
  v0[4] = v11;
  *v11 = v0;
  v11[1] = sub_1002E6474;
  v12 = v0[3];

  return sub_1002E71EC();
}

uint64_t sub_1002E6474()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v4 = *v0;

  return _swift_task_switch(sub_1002E6584, v2, 0);
}

uint64_t sub_1002E65A4(uint64_t a1, uint64_t a2)
{
  v3 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v10 - v5;
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a2;

  sub_1002B3098(0, 0, v6, &unk_1007F9D58, v8);
}

uint64_t sub_1002E66D0()
{
  if (*(v0[2] + 124))
  {
    v1 = v0[1];

    return v1();
  }

  else
  {
    v3 = swift_task_alloc();
    v0[3] = v3;
    *v3 = v0;
    v3[1] = sub_1002963B0;
    v4 = v0[2];

    return sub_1002E6270();
  }
}

uint64_t sub_1002E679C(uint64_t a1)
{
  v2 = type metadata accessor for Notification();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  v8(v6);

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1002E6890()
{
  v1 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v24 - v3;
  v5 = sub_10028088C(&qword_100976BE0, &qword_1007F9D30);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v9 = __chkstk_darwin(v8);
  v11 = &v24 - v10;
  result = __chkstk_darwin(v9);
  v14 = &v24 - v13;
  if (qword_100973C50 != -1)
  {
    result = swift_once();
  }

  if (qword_1009A10A8)
  {
    v24 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    v25 = v4;
    v27 = v0;
    v15 = *(v6 + 16);
    v15(v11, qword_1009A10A8 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_enabledDevicesChangedStream, v5);
    v16 = *(v6 + 32);
    v26 = v14;
    v16(v14, v11, v5);
    v17 = type metadata accessor for TaskPriority();
    (*(*(v17 - 8) + 56))(v4, 1, 1, v17);
    v18 = v24;
    v15(v24, v14, v5);
    v19 = sub_1002E70E4();
    v20 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v21 = (v7 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
    v22 = swift_allocObject();
    v23 = v27;
    *(v22 + 16) = v27;
    *(v22 + 24) = v19;
    v16((v22 + v20), v18, v5);
    *(v22 + v21) = v23;
    swift_retain_n();
    sub_1002B3098(0, 0, v25, &unk_1007F9D40, v22);

    return (*(v6 + 8))(v26, v5);
  }

  return result;
}

uint64_t sub_1002E6B84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v7 = sub_10028088C(&qword_100976BE8, &qword_1007F9D48);
  v5[8] = v7;
  v8 = *(v7 - 8);
  v5[9] = v8;
  v9 = *(v8 + 64) + 15;
  v5[10] = swift_task_alloc();

  return _swift_task_switch(sub_1002E6C54, a5, 0);
}

uint64_t sub_1002E6C54()
{
  v1 = v0[10];
  v2 = v0[6];
  sub_10028088C(&qword_100976BE0, &qword_1007F9D30);
  AsyncStream.makeAsyncIterator()();
  v3 = sub_1002E70E4();
  v0[11] = v3;
  v4 = v0[7];
  v5 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v6 = swift_task_alloc();
  v0[12] = v6;
  *v6 = v0;
  v6[1] = sub_1002E6D38;
  v7 = v0[10];
  v8 = v0[8];

  return AsyncStream.Iterator.next(isolation:)(v0 + 2, v4, v3, v8);
}

uint64_t sub_1002E6D38()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 56);
  v4 = *v0;

  return _swift_task_switch(sub_1002E6E48, v2, 0);
}

uint64_t sub_1002E6E48()
{
  v1 = *(v0 + 40);
  if (v1 == 255)
  {
    (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    sub_1002E86B0(*(v0 + 16), *(v0 + 24), *(v0 + 32), v1);
    v2 = swift_task_alloc();
    *(v0 + 104) = v2;
    *v2 = v0;
    v2[1] = sub_1002E6F44;
    v3 = *(v0 + 56);

    return sub_1002E71EC();
  }
}

uint64_t sub_1002E6F44()
{
  v1 = *v0;
  v2 = *(*v0 + 104);
  v3 = *v0;

  v4 = v1[11];
  v5 = v1[7];
  v6 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v7 = swift_task_alloc();
  v1[12] = v7;
  *v7 = v3;
  v7[1] = sub_1002E6D38;
  v8 = v1[10];
  v9 = v1[8];

  return AsyncStream.Iterator.next(isolation:)(v1 + 2, v5, v4, v9);
}

unint64_t sub_1002E70E4()
{
  result = qword_100976BD8;
  if (!qword_100976BD8)
  {
    _s19EnabledStateMonitorCMa();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100976BD8);
  }

  return result;
}

uint64_t sub_1002E7138()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100005C00;

  return sub_1002E61E0();
}

uint64_t sub_1002E720C()
{
  v51 = v0;
  v1 = v0[11];
  swift_beginAccess();
  if (*(v1 + 120) == -1)
  {
    if (qword_100973588 != -1)
    {
      swift_once();
    }

    v2 = v0[11];
    v3 = type metadata accessor for Logger();
    sub_10000C4AC(v3, qword_100976AD8);

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = v0[11];
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v50 = v8;
      *v7 = 136315138;
      v0[10] = v6;
      _s19EnabledStateMonitorCMa();

      v9 = String.init<A>(describing:)();
      v11 = sub_10000C4E4(v9, v10, &v50);

      *(v7 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v4, v5, "%s: notify token is invalid, notify_set_state will likely not work correctly", v7, 0xCu);
      sub_10000C60C(v8);
    }
  }

  if (qword_100973C50 != -1)
  {
    swift_once();
  }

  v12 = qword_1009A10A8;
  v0[12] = qword_1009A10A8;
  if (v12)
  {
    v12;
    v13 = swift_task_alloc();
    v0[13] = v13;
    *v13 = v0;
    v13[1] = sub_1002E78C8;

    return sub_100693878();
  }

  else
  {
    if (qword_100973588 != -1)
    {
      swift_once();
    }

    v15 = v0[11];
    v16 = type metadata accessor for Logger();
    sub_10000C4AC(v16, qword_100976AD8);

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = v0[11];
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v50 = v21;
      *v20 = 136315138;
      v0[7] = v19;
      _s19EnabledStateMonitorCMa();

      v22 = String.init<A>(describing:)();
      v24 = sub_10000C4E4(v22, v23, &v50);

      *(v20 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v17, v18, "%s: Not enabled, updated state to 0", v20, 0xCu);
      sub_10000C60C(v21);
    }

    v25 = notify_set_state(*(v0[11] + 120), 0);
    if (v25)
    {
      v26 = v25;
      v27 = v0[11];

      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = v0[11];
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v50 = v32;
        *v31 = 136315650;
        v0[6] = v30;
        _s19EnabledStateMonitorCMa();

        v33 = String.init<A>(describing:)();
        v35 = sub_10000C4E4(v33, v34, &v50);

        *(v31 + 4) = v35;
        *(v31 + 12) = 2048;
        *(v31 + 14) = 0;
        *(v31 + 22) = 1024;
        *(v31 + 24) = v26;
        _os_log_impl(&_mh_execute_header, v28, v29, "%s: notify_set_state(%ld) failed with error %u", v31, 0x1Cu);
        sub_10000C60C(v32);
      }
    }

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = String.utf8CString.getter();

    v37 = notify_post((v36 + 32));

    if (v37)
    {
      if (qword_100973588 != -1)
      {
        swift_once();
      }

      v38 = v0[11];
      sub_10000C4AC(v16, qword_100976AD8);

      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = v0[11];
        v42 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        *v42 = 136315650;
        v0[5] = v41;
        _s19EnabledStateMonitorCMa();

        v43 = String.init<A>(describing:)();
        v45 = sub_10000C4E4(v43, v44, &v50);

        *(v42 + 4) = v45;
        *(v42 + 12) = 2080;
        v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v48 = sub_10000C4E4(v46, v47, &v50);

        *(v42 + 14) = v48;
        *(v42 + 22) = 1024;
        *(v42 + 24) = v37;
        _os_log_impl(&_mh_execute_header, v39, v40, "%s: notify_post(%s) failed with error %u", v42, 0x1Cu);
        swift_arrayDestroy();
      }
    }

    v49 = v0[1];

    return v49();
  }
}

uint64_t sub_1002E78C8(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 104);
  v7 = *v2;

  v8 = *(v4 + 88);
  if (v1)
  {

    v9 = sub_1002E80E4;
  }

  else
  {
    *(v5 + 112) = a1;
    v9 = sub_1002E7A0C;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_1002E7A0C()
{
  v58 = v0;
  v1 = v0[14];
  v2 = v0[12];
  v3 = [v1 count];

  if (v3 < 1)
  {
    if (qword_100973588 != -1)
    {
      swift_once();
    }

    v25 = v0[11];
    v26 = type metadata accessor for Logger();
    sub_10000C4AC(v26, qword_100976AD8);

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = v0[11];
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v57 = v31;
      *v30 = 136315138;
      v0[7] = v29;
      _s19EnabledStateMonitorCMa();

      v32 = String.init<A>(describing:)();
      v34 = sub_10000C4E4(v32, v33, &v57);

      *(v30 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v27, v28, "%s: Not enabled, updated state to 0", v30, 0xCu);
      sub_10000C60C(v31);
    }

    v35 = notify_set_state(*(v0[11] + 120), 0);
    if (v35)
    {
      v15 = v35;
      v36 = v0[11];

      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v17, v18))
      {
        v37 = v0[11];
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v57 = v21;
        *v20 = 136315650;
        v0[6] = v37;
        _s19EnabledStateMonitorCMa();

        v38 = String.init<A>(describing:)();
        v40 = sub_10000C4E4(v38, v39, &v57);

        *(v20 + 4) = v40;
        *(v20 + 12) = 2048;
        *(v20 + 14) = 0;
        goto LABEL_16;
      }

LABEL_17:
    }
  }

  else
  {
    if (qword_100973588 != -1)
    {
      swift_once();
    }

    v4 = v0[11];
    v5 = type metadata accessor for Logger();
    sub_10000C4AC(v5, qword_100976AD8);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = v0[11];
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v57 = v10;
      *v9 = 136315394;
      v0[9] = v8;
      _s19EnabledStateMonitorCMa();

      v11 = String.init<A>(describing:)();
      v13 = sub_10000C4E4(v11, v12, &v57);

      *(v9 + 4) = v13;
      *(v9 + 12) = 2048;
      *(v9 + 14) = 1;
      _os_log_impl(&_mh_execute_header, v6, v7, "%s: updated state to %ld", v9, 0x16u);
      sub_10000C60C(v10);
    }

    v14 = notify_set_state(*(v0[11] + 120), 1uLL);
    if (v14)
    {
      v15 = v14;
      v16 = v0[11];

      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = v0[11];
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v57 = v21;
        *v20 = 136315650;
        v0[8] = v19;
        _s19EnabledStateMonitorCMa();

        v22 = String.init<A>(describing:)();
        v24 = sub_10000C4E4(v22, v23, &v57);

        *(v20 + 4) = v24;
        *(v20 + 12) = 2048;
        *(v20 + 14) = 1;
LABEL_16:
        *(v20 + 22) = 1024;
        *(v20 + 24) = v15;
        _os_log_impl(&_mh_execute_header, v17, v18, "%s: notify_set_state(%ld) failed with error %u", v20, 0x1Cu);
        sub_10000C60C(v21);

        goto LABEL_17;
      }

      goto LABEL_17;
    }
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v41 = String.utf8CString.getter();

  v42 = notify_post((v41 + 32));

  if (v42)
  {
    if (qword_100973588 != -1)
    {
      swift_once();
    }

    v43 = v0[11];
    v44 = type metadata accessor for Logger();
    sub_10000C4AC(v44, qword_100976AD8);

    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = v0[11];
      v48 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      *v48 = 136315650;
      v0[5] = v47;
      _s19EnabledStateMonitorCMa();

      v49 = String.init<A>(describing:)();
      v51 = sub_10000C4E4(v49, v50, &v57);

      *(v48 + 4) = v51;
      *(v48 + 12) = 2080;
      v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v54 = sub_10000C4E4(v52, v53, &v57);

      *(v48 + 14) = v54;
      *(v48 + 22) = 1024;
      *(v48 + 24) = v42;
      _os_log_impl(&_mh_execute_header, v45, v46, "%s: notify_post(%s) failed with error %u", v48, 0x1Cu);
      swift_arrayDestroy();
    }
  }

  v55 = v0[1];

  return v55();
}

uint64_t sub_1002E80E4()
{
  v38 = v0;

  if (qword_100973588 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 88);
  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_100976AD8);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 88);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v37 = v7;
    *v6 = 136315138;
    *(v0 + 56) = v5;
    _s19EnabledStateMonitorCMa();

    v8 = String.init<A>(describing:)();
    v10 = sub_10000C4E4(v8, v9, &v37);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s: Not enabled, updated state to 0", v6, 0xCu);
    sub_10000C60C(v7);
  }

  v11 = notify_set_state(*(*(v0 + 88) + 120), 0);
  if (v11)
  {
    v12 = v11;
    v13 = *(v0 + 88);

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = *(v0 + 88);
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v37 = v18;
      *v17 = 136315650;
      *(v0 + 48) = v16;
      _s19EnabledStateMonitorCMa();

      v19 = String.init<A>(describing:)();
      v21 = sub_10000C4E4(v19, v20, &v37);

      *(v17 + 4) = v21;
      *(v17 + 12) = 2048;
      *(v17 + 14) = 0;
      *(v17 + 22) = 1024;
      *(v17 + 24) = v12;
      _os_log_impl(&_mh_execute_header, v14, v15, "%s: notify_set_state(%ld) failed with error %u", v17, 0x1Cu);
      sub_10000C60C(v18);
    }
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = String.utf8CString.getter();

  v23 = notify_post((v22 + 32));

  if (v23)
  {
    if (qword_100973588 != -1)
    {
      swift_once();
    }

    v24 = *(v0 + 88);
    sub_10000C4AC(v2, qword_100976AD8);

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = *(v0 + 88);
      v28 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *v28 = 136315650;
      *(v0 + 40) = v27;
      _s19EnabledStateMonitorCMa();

      v29 = String.init<A>(describing:)();
      v31 = sub_10000C4E4(v29, v30, &v37);

      *(v28 + 4) = v31;
      *(v28 + 12) = 2080;
      v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v34 = sub_10000C4E4(v32, v33, &v37);

      *(v28 + 14) = v34;
      *(v28 + 22) = 1024;
      *(v28 + 24) = v23;
      _os_log_impl(&_mh_execute_header, v25, v26, "%s: notify_post(%s) failed with error %u", v28, 0x1Cu);
      swift_arrayDestroy();
    }
  }

  v35 = *(v0 + 8);

  return v35();
}

uint64_t sub_1002E8584(uint64_t a1)
{
  v4 = *(sub_10028088C(&qword_100976BE0, &qword_1007F9D30) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100005C04;

  return sub_1002E6B84(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1002E86B0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 != -1)
  {
    return sub_1002E86C8();
  }

  return result;
}

uint64_t sub_1002E86D0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C00;

  return sub_1002E66B0(a1, v4, v5, v6);
}

void *sub_1002E8784(uint64_t a1, unint64_t a2)
{
  v3 = a2 >> 62;
  v25 = HIDWORD(a1);
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      v4 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v3 != 2)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v4 = v5 - v6;
  if (__OFSUB__(v5, v6))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_62;
    }

    v4 = HIDWORD(a1) - a1;
  }

LABEL_10:
  v7 = _swiftEmptyArrayStorage;
  if (v4)
  {
    v40 = _swiftEmptyArrayStorage;
    v26 = a2 >> 62;
    sub_10028FC3C(0, v4 & ~(v4 >> 63), 0);
    v9 = v26;
    v8 = a1;
    if (v26)
    {
      if (v26 == 2)
      {
        v10 = *(a1 + 16);
      }

      else
      {
        v10 = a1;
      }
    }

    else
    {
      v10 = 0;
    }

    if (v4 < 0)
    {
      goto LABEL_61;
    }

    v11 = 0;
    v7 = v40;
    do
    {
      if (v9 == 2)
      {
        if (v10 < *(v8 + 16))
        {
          goto LABEL_53;
        }

        v12 = *(v8 + 24);
      }

      else if (v9 == 1)
      {
        v12 = a1 >> 32;
        if (v10 < a1)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v12 = BYTE6(a2);
        if (v10 < 0)
        {
          goto LABEL_54;
        }
      }

      if (v10 >= v12)
      {
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
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
      }

      if (v9 == 2)
      {
        if (v10 < *(v8 + 16))
        {
          goto LABEL_55;
        }

        if (v10 >= *(v8 + 24))
        {
          goto LABEL_58;
        }

        v17 = __DataStorage._bytes.getter();
        if (!v17)
        {
          goto LABEL_64;
        }

        v14 = v17;
        v18 = __DataStorage._offset.getter();
        v16 = v10 - v18;
        if (__OFSUB__(v10, v18))
        {
          goto LABEL_60;
        }
      }

      else
      {
        if (v9 != 1)
        {
          if (v10 >= BYTE6(a2))
          {
            goto LABEL_56;
          }

          v28 = v8;
          v29 = BYTE2(v8);
          v30 = BYTE3(v8);
          v31 = v25;
          v32 = BYTE5(v8);
          v33 = BYTE6(v8);
          v34 = HIBYTE(v8);
          v35 = a2;
          v36 = BYTE2(a2);
          v37 = BYTE3(a2);
          v38 = BYTE4(a2);
          v39 = BYTE5(a2);
          v19 = *(&v28 + v10);
          goto LABEL_42;
        }

        if (v10 < a1 || v10 >= a1 >> 32)
        {
          goto LABEL_57;
        }

        v13 = __DataStorage._bytes.getter();
        if (!v13)
        {
          goto LABEL_63;
        }

        v14 = v13;
        v15 = __DataStorage._offset.getter();
        v16 = v10 - v15;
        if (__OFSUB__(v10, v15))
        {
          goto LABEL_59;
        }
      }

      v19 = *(v14 + v16);
      v9 = v26;
      v8 = a1;
LABEL_42:
      if (v11 == &_mh_execute_header)
      {
        goto LABEL_51;
      }

      v20 = v19 << (v11 & 0x18);
      if (v11 <= 0x1F)
      {
        v21 = v20;
      }

      else
      {
        v21 = 0;
      }

      v40 = v7;
      v23 = v7[2];
      v22 = v7[3];
      if (v23 >= v22 >> 1)
      {
        sub_10028FC3C((v22 > 1), v23 + 1, 1);
        v9 = v26;
        v8 = a1;
        v7 = v40;
      }

      v7[2] = v23 + 1;
      *(v7 + v23 + 8) = v21;
      ++v10;
      v11 = (v11 + 8);
      --v4;
    }

    while (v4);
  }

  return v7;
}

uint64_t sub_1002E8AD4(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a8;
  v45 = a1;
  v46 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(a1);
  v47 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  v16 = *(v49 + 64);
  v17 = __chkstk_darwin(AssociatedTypeWitness);
  v19 = &v34 - v18;
  v20 = *(*(a4 - 8) + 64);
  __chkstk_darwin(v17);
  v43 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_getAssociatedTypeWitness();
  v37 = *(v22 - 8);
  v38 = v22;
  v23 = *(v37 + 64);
  __chkstk_darwin(v22);
  v25 = &v34 - v24;
  v26 = dispatch thunk of Collection.count.getter();
  if (!v26)
  {
    return static Array._allocateUninitialized(_:)();
  }

  v48 = v26;
  v52 = ContiguousArray.init()();
  v39 = type metadata accessor for ContiguousArray();
  ContiguousArray.reserveCapacity(_:)(v48);
  result = dispatch thunk of Collection.startIndex.getter();
  if ((v48 & 0x8000000000000000) == 0)
  {
    v34 = v11;
    v35 = a5;
    v28 = 0;
    v40 = (v49 + 16);
    v41 = (v49 + 8);
    v42 = v8;
    while (!__OFADD__(v28, 1))
    {
      v49 = v28 + 1;
      v29 = dispatch thunk of Collection.subscript.read();
      v30 = v19;
      v31 = v19;
      v32 = AssociatedTypeWitness;
      (*v40)(v30);
      v29(v51, 0);
      v33 = v50;
      v45(v31, v47);
      if (v33)
      {
        (*v41)(v31, v32);
        (*(v37 + 8))(v25, v38);

        return (*(v34 + 32))(v36, v47, v35);
      }

      v50 = 0;
      (*v41)(v31, v32);
      ContiguousArray.append(_:)();
      result = dispatch thunk of Collection.formIndex(after:)();
      ++v28;
      v19 = v31;
      if (v49 == v48)
      {
        (*(v37 + 8))(v25, v38);
        return v52;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void URL.realPathURL()(NSURL *a1@<X8>)
{
  URL._bridgeToObjectiveC()(a1);
  v3 = v2;
  v4 = CFURLCopyFileSystemPath(v2, kCFURLPOSIXPathStyle);

  if (v4)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = String.utf8CString.getter();

    v6 = realpath_DARWIN_EXTSN((v5 + 32), 0);

    if (!v6)
    {
      goto LABEL_9;
    }

    String.init(cString:)();
    free(v6);
    v7 = String.utf8CString.getter();
    v8 = strlen((v7 + 32));

    v9 = URL.isDirectory()();
    if (v10)
    {

      return;
    }

    v12 = v9;
    v13 = String.utf8CString.getter();

    v14 = CFURLCreateFromFileSystemRepresentation(0, (v13 + 32), v8, v12);

    if (v14)
    {
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v15 = type metadata accessor for URL();
      (*(*(v15 - 8) + 56))(a1, 0, 1, v15);
    }

    else
    {
LABEL_9:
      v16 = type metadata accessor for URL();
      (*(*(v16 - 8) + 56))(a1, 1, 1, v16);
    }
  }

  else
  {
    v11 = type metadata accessor for URL();
    (*(*(v11 - 8) + 56))(a1, 1, 1, v11);
  }
}

uint64_t SDRunState.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x7472617453746F6ELL;
  v2 = 0x6574656C706D6F63;
  v3 = 0x64656C696166;
  if (a1 != 3)
  {
    v3 = 1885956979;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 0x6572676F72506E69;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

Swift::Int sub_1002E9200()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1002E92E0()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_1002E93AC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1002E9488@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s16DaemoniOSLibrary10SDRunStateO8rawValueACSgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

void sub_1002E94B8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0x7472617453746F6ELL;
  v4 = 0xE900000000000064;
  v5 = 0x6574656C706D6F63;
  v6 = 0xE600000000000000;
  v7 = 0x64656C696166;
  if (v2 != 3)
  {
    v7 = 1885956979;
    v6 = 0xE400000000000000;
  }

  if (v2 != 2)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0xEA00000000007373;
  if (*v1)
  {
    v3 = 0x6572676F72506E69;
  }

  else
  {
    v8 = 0xEA00000000006465;
  }

  if (*v1 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v5;
  }

  if (*v1 <= 1u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v4;
  }

  *a1 = v9;
  a1[1] = v10;
}

uint64_t Optional<A>.description.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(a1);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9, v11);
  if ((*(v2 + 48))(v9, 1, v1) == 1)
  {
    v16 = 0;
    v17 = 0xE000000000000000;
    _StringGuts.grow(_:)(17);

    v16 = 0x6C616E6F6974704FLL;
    v17 = 0xE90000000000003CLL;
    v12._countAndFlagsBits = _typeName(_:qualified:)();
    String.append(_:)(v12);

    v13._countAndFlagsBits = 0x656E6F6E2E3ELL;
    v13._object = 0xE600000000000000;
    String.append(_:)(v13);
    return v16;
  }

  else
  {
    (*(v2 + 32))(v6, v9, v1);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    (*(v2 + 8))(v6, v1);
    return v15;
  }
}

uint64_t sub_1002E977C()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

Swift::Int sub_1002E97B4()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_1002E97F8()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t sub_1002E9838@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  v53 = a7;
  v54 = *(a3 - 8);
  v13 = *(v54 + 64);
  __chkstk_darwin(a1);
  v52 = v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = v15;
  v50 = *(*(*(v15 + 8) + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = *(*(AssociatedTypeWitness - 8) + 64);
  __chkstk_darwin(AssociatedTypeWitness);
  v47 = v42 - v17;
  v56 = a6;
  v18 = *(*(a6 + 8) + 8);
  v19 = *(v18 + 8);
  v20 = type metadata accessor for EnumeratedSequence();
  v44 = *(v20 - 8);
  v45 = v20;
  v21 = *(v44 + 64);
  __chkstk_darwin(v20);
  v23 = v42 - v22;
  v46 = a1;
  v51 = a4;
  v24 = dispatch thunk of Collection.count.getter();
  v25 = a2;
  v26 = a5;
  result = dispatch thunk of static FixedWidthInteger.bitWidth.getter();
  v28 = v24 * result;
  if ((v24 * result) >> 64 == (v24 * result) >> 63)
  {
    v29 = v55;
    if (v28 == dispatch thunk of static FixedWidthInteger.bitWidth.getter())
    {
      v30 = v51;
      v31 = Sequence.enumerated()();
      v42[1] = v42;
      __chkstk_darwin(v31);
      v43 = v25;
      v42[-6] = v25;
      v42[-5] = a3;
      v42[-4] = v30;
      v42[-3] = v26;
      v32 = v26;
      v33 = v56;
      v42[-2] = v29;
      v42[-1] = v33;
      v61 = v18;
      v34 = v45;
      WitnessTable = swift_getWitnessTable();
      v36 = v49;
      v38 = sub_1002E8AD4(sub_1002F52E0, &v42[-8], v34, a3, &type metadata for Never, WitnessTable, &protocol witness table for Never, v37);
      v49 = v38;
      v46 = v36;
      (*(v44 + 8))(v23, v34);
      v57 = v38;
      swift_getAssociatedConformanceWitness();
      dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
      v39 = v52;
      v40 = dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
      __chkstk_darwin(v40);
      v42[-6] = v43;
      v42[-5] = a3;
      v42[-4] = v30;
      v42[-3] = v32;
      v41 = v56;
      v42[-2] = v29;
      v42[-1] = v41;
      type metadata accessor for Array();
      swift_getWitnessTable();
      Sequence.reduce<A>(_:_:)();
      (*(v54 + 8))(v39, a3);
    }

    else
    {
      v57 = v25;
      v58 = a3;
      v59 = v26;
      v60 = v29;
      type metadata accessor for IntegerPacker.PackError();
      swift_getWitnessTable();
      swift_allocError();
      return swift_willThrow();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1002E9CE8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, char *a5@<X5>, uint64_t a6@<X8>)
{
  v42 = a6;
  v44 = a2;
  v45 = a5;
  v49 = a4;
  v46 = a1;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v10 = *(*(TupleTypeMetadata2 - 8) + 64);
  v11 = __chkstk_darwin(TupleTypeMetadata2);
  v13 = v40 - v12;
  v14 = *(a3 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v11);
  v47 = v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v48 = v40 - v19;
  v20 = __chkstk_darwin(v18);
  v22 = v40 - v21;
  v23 = __chkstk_darwin(v20);
  v25 = v40 - v24;
  __chkstk_darwin(v23);
  v43 = v40 - v26;
  (*(v27 + 16))(v13, a1, TupleTypeMetadata2);
  v28 = *(TupleTypeMetadata2 + 48);
  v29 = *(v45 + 1);
  v30 = *(a4 + 8);
  dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
  v50 = 0;
  v31 = sub_1002F5340();
  dispatch thunk of BinaryInteger.init<A>(_:)();
  dispatch thunk of static BinaryInteger.~ prefix(_:)();
  v32 = *(v14 + 8);
  v32(v22, a3);
  v50 = dispatch thunk of static FixedWidthInteger.bitWidth.getter();
  v45 = v25;
  v40[1] = v31;
  dispatch thunk of static BinaryInteger.<< infix<A>(_:_:)();
  v33 = v47;
  v41 = v22;
  v34 = v43;
  dispatch thunk of static BinaryInteger.~ prefix(_:)();
  dispatch thunk of static BinaryInteger.& infix(_:_:)();
  v35 = v33;
  v32(v33, a3);
  v36 = *v46;
  result = dispatch thunk of static FixedWidthInteger.bitWidth.getter();
  if ((v36 * result) >> 64 == (v36 * result) >> 63)
  {
    v50 = v36 * result;
    v38 = v35;
    dispatch thunk of BinaryInteger.init<A>(_:)();
    v39 = v48;
    dispatch thunk of static BinaryInteger.<< infix<A>(_:_:)();
    v32(v38, a3);
    v32(v39, a3);
    v32(v41, a3);
    v32(v45, a3);
    return (v32)(v34, a3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1002EA0E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v70 = a3;
  v88 = a2;
  v89 = a8;
  v13 = *(*(a8 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v96 = *(TupleTypeMetadata2 - 8);
  v15 = *(v96 + 8);
  v16 = __chkstk_darwin(TupleTypeMetadata2);
  v84 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v83 = &v66 - v18;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v82 = type metadata accessor for Range();
  v91 = *(v82 - 8);
  v19 = *(v91 + 8);
  __chkstk_darwin(v82);
  v81 = &v66 - v20;
  v90 = swift_getAssociatedTypeWitness();
  v71 = *(v90 - 8);
  v21 = *(v71 + 64);
  v22 = __chkstk_darwin(v90);
  v80 = &v66 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v79 = &v66 - v25;
  v97 = AssociatedTypeWitness;
  v75 = *(AssociatedTypeWitness - 8);
  v26 = *(v75 + 64);
  v27 = __chkstk_darwin(v24);
  v86 = &v66 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v30 = &v66 - v29;
  v92 = a1;
  v93 = a5;
  v31 = v70;
  v87 = v13;
  v32 = dispatch thunk of Collection.count.getter();
  v69 = a6;
  result = dispatch thunk of static FixedWidthInteger.bitWidth.getter();
  v34 = v32 * result;
  if ((v32 * result) >> 64 != (v32 * result) >> 63)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  result = dispatch thunk of static FixedWidthInteger.bitWidth.getter();
  if (!result)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (v34 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_20;
  }

  if (v34 % result)
  {
    v99 = v31;
    v100 = a4;
    v101 = v69;
    v102 = a7;
    type metadata accessor for IntegerPacker.PackError();
    swift_getWitnessTable();
    swift_allocError();
    swift_willThrow();
  }

  else
  {
    v66 = a7;
    v67 = a4;
    v99 = static Array._allocateUninitialized(_:)();
    v36 = v93;
    dispatch thunk of Collection.startIndex.getter();
    v37 = (v75 + 8);
    v77 = (v75 + 16);
    v76 = (v96 + 16);
    v75 += 32;
    v74 = (v96 + 32);
    v73 = (v91 + 8);
    v72 = (v71 + 16);
    v71 += 8;
    v38 = v86;
    v78 = v30;
    v95 = v37;
    while (1)
    {
      dispatch thunk of Collection.endIndex.getter();
      v39 = v97;
      v40 = dispatch thunk of static Comparable.< infix(_:_:)();
      v41 = *v37;
      v42 = (*v37)(v38, v39);
      v96 = v41;
      if ((v40 & 1) == 0)
      {
        break;
      }

      dispatch thunk of RandomAccessCollection.index(_:offsetBy:)();
      result = dispatch thunk of static Comparable.<= infix(_:_:)();
      if ((result & 1) == 0)
      {
        __break(1u);
        goto LABEL_18;
      }

      v43 = *v77;
      v44 = v83;
      v45 = v97;
      (*v77)(v83, v30, v97);
      v46 = TupleTypeMetadata2;
      v43(&v44[*(TupleTypeMetadata2 + 48)], v38, v45);
      v47 = v84;
      (*v76)(v84, v44, v46);
      v48 = *(v46 + 48);
      v49 = *v75;
      v50 = v81;
      (*v75)(v81, v47, v45);
      v91 = v49;
      v51 = &v47[v48];
      v52 = v96;
      (v96)(v51, v45);
      (*v74)(v47, v44, v46);
      v53 = v82;
      v49(&v50[*(v82 + 36)], &v47[*(v46 + 48)], v45);
      v54 = v78;
      v52(v47, v45);
      v55 = v79;
      dispatch thunk of Collection.subscript.getter();
      (*v73)(v50, v53);
      v56 = v90;
      (*v72)(v80, v55, v90);
      type metadata accessor for Array();
      v38 = v86;
      Array.append(_:)();
      v37 = v95;
      (*v71)(v55, v56);
      (v96)(v54, v45);
      v30 = v54;
      v91(v54, v38, v45);
      v36 = v93;
    }

    v103 = v99;
    __chkstk_darwin(v42);
    v34 = (&v66 - 10);
    v57 = v67;
    *(&v66 - 8) = v70;
    *(&v66 - 7) = v57;
    v58 = v69;
    *(&v66 - 6) = v36;
    *(&v66 - 5) = v58;
    v59 = v88;
    v60 = v89;
    *(&v66 - 4) = v66;
    *(&v66 - 3) = v60;
    *(&v66 - 2) = v59;
    v61 = type metadata accessor for Array();
    v62 = sub_10028088C(&unk_10097A930, &unk_1007F9050);
    WitnessTable = swift_getWitnessTable();
    v64 = v68;
    v65 = sub_1002E8AD4(sub_1002F54A0, (&v66 - 10), v61, v57, v62, WitnessTable, &protocol self-conformance witness table for Error, &v98);
    if (!v64)
    {
      v34 = v65;
    }

    (v96)(v30, v97);
  }

  return v34;
}

uint64_t sub_1002EA9CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X5>, uint64_t a5@<X7>, uint64_t a6@<X8>, void *a7)
{
  v12 = *(*(a5 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  result = sub_1002E9838(a1, a2, a3, AssociatedTypeWitness, a4, AssociatedConformanceWitness, a6);
  if (v16)
  {
    *a7 = v16;
  }

  return result;
}

uint64_t PushableTimer.__allocating_init(fireAt:noLaterThan:queue:handler:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v11 = *(v5 + 48);
  v12 = *(v5 + 52);
  swift_allocObject();
  v13 = sub_1002F1D34(a1, a2, a3, a4, a5);

  return v13;
}

uint64_t PushableTimer.init(fireAt:noLaterThan:queue:handler:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_1002F1D34(a1, a2, a3, a4, a5);

  return v6;
}

uint64_t sub_1002EAB84@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for DispatchTimeInterval.never(_:);
  v3 = type metadata accessor for DispatchTimeInterval();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1002EABF8@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  v2 = enum case for DispatchTimeInterval.nanoseconds(_:);
  v3 = type metadata accessor for DispatchTimeInterval();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t PushableTimer.reschedule(deadline:)(uint64_t a1)
{
  v37 = type metadata accessor for DispatchTimeInterval();
  v34 = *(v37 - 8);
  v3 = *(v34 + 64);
  v4 = __chkstk_darwin(v37);
  v36 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v35 = &v32 - v6;
  v7 = sub_10028088C(&qword_100976C00, &unk_1007F9D70);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v32 - v9;
  v11 = type metadata accessor for DispatchTime();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v32 - v17;
  sub_1002F17FC(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary13PushableTimer_noLaterThan, v10);
  v19 = *(v12 + 48);
  if (v19(v10, 1, v11) == 1)
  {
    static DispatchTime.distantFuture.getter();
    v20 = v19(v10, 1, v11);
    v21 = v12;
    if (v20 != 1)
    {
      sub_100005508(v10, &qword_100976C00, &unk_1007F9D70);
    }
  }

  else
  {
    (*(v12 + 32))(v16, v10, v11);
    v21 = v12;
  }

  sub_1002F30F0(&qword_100976C08, &type metadata accessor for DispatchTime);
  v22 = dispatch thunk of static Comparable.< infix(_:_:)();
  v33 = v18;
  if (v22)
  {
    (*(v21 + 32))(v18, v16, v11);
  }

  else
  {
    (*(v21 + 8))(v16, v11);
    (*(v21 + 16))(v18, a1, v11);
  }

  v23 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary13PushableTimer_timer);
  swift_getObjectType();
  v25 = v34;
  v24 = v35;
  v26 = *(v34 + 104);
  v27 = v37;
  v26(v35, enum case for DispatchTimeInterval.never(_:), v37);
  v28 = v36;
  *v36 = 0;
  v26(v28, enum case for DispatchTimeInterval.nanoseconds(_:), v27);
  v29 = v33;
  OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)();
  v30 = *(v25 + 8);
  v30(v28, v27);
  v30(v24, v27);
  return (*(v21 + 8))(v29, v11);
}

Swift::Void __swiftcall PushableTimer.resume()()
{
  v1 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary13PushableTimer_timer);
  swift_getObjectType();
  OS_dispatch_source.resume()();
}

Swift::Void __swiftcall PushableTimer.cancel()()
{
  v1 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary13PushableTimer_timer);
  swift_getObjectType();
  OS_dispatch_source.cancel()();
}

uint64_t PushableTimer.deinit()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary13PushableTimer_timer);
  swift_getObjectType();
  OS_dispatch_source.cancel()();
  sub_100005508(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary13PushableTimer_noLaterThan, &qword_100976C00, &unk_1007F9D70);
  swift_unknownObjectRelease();
  return v1;
}

uint64_t PushableTimer.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC16DaemoniOSLibrary13PushableTimer_timer;
  v2 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary13PushableTimer_timer);
  swift_getObjectType();
  OS_dispatch_source.cancel()();
  sub_100005508(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary13PushableTimer_noLaterThan, &qword_100976C00, &unk_1007F9D70);
  v3 = *(v0 + v1);
  swift_unknownObjectRelease();
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t SDB389BubbleMonitor.allDevices.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
}

uint64_t SDB389BubbleMonitor.allDevices.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

void *SDB389BubbleMonitor.queue.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

void SDB389BubbleMonitor.queue.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  *(v1 + 24) = a1;
}

uint64_t SDB389BubbleMonitor.updateHandler.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  sub_1000387D0(v1);
  return v1;
}

uint64_t SDB389BubbleMonitor.updateHandler.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return sub_100015D04(v5);
}

uint64_t SDB389BubbleMonitor.lostHandler.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  sub_1000387D0(v1);
  return v1;
}

uint64_t SDB389BubbleMonitor.lostHandler.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 48);
  v6 = *(v2 + 56);
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return sub_100015D04(v5);
}

unint64_t SDB389BubbleMonitor.closestB389sInBubble.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 80);
  v2 = *(v1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_10029434C(*(v1 + 16), 0);
  v4 = sub_100291BEC(&v7, v3 + 4, v2, v1);
  swift_bridgeObjectRetain_n();
  sub_100027D64();
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    v3 = _swiftEmptyArrayStorage;
  }

  v7 = v3;
  sub_1002EFF80(&v7);
  v5 = sub_1002EB6C4(v7);

  return v5;
}

unint64_t sub_1002EB6C4(uint64_t a1)
{
  if (!(a1 >> 62))
  {
    v1 = a1 & 0xFFFFFFFFFFFFFF8;
    goto LABEL_3;
  }

  while (1)
  {
    v18 = a1;
    v19 = _CocoaArrayWrapper.endIndex.getter();
    if (v19)
    {
      v20 = v19;
      v1 = sub_10029434C(v19, 0);
      sub_1004060E0(v1 + 32, v20, v18);
      v22 = v21;

      if (v22 != v20)
      {
        __break(1u);
        goto LABEL_38;
      }

      goto LABEL_3;
    }

    while (1)
    {

      v1 = _swiftEmptyArrayStorage;
LABEL_3:
      if ((v1 & 0x8000000000000000) == 0 && (v1 & 0x4000000000000000) == 0)
      {
        v2 = *(v1 + 16);
        v3 = v2 >> 1;
        goto LABEL_6;
      }

LABEL_38:
      a1 = _CocoaArrayWrapper.endIndex.getter();
      if (a1 >= -1)
      {
        break;
      }

      __break(1u);
    }

    v2 = a1;
    v3 = a1 / 2;
LABEL_6:
    if (v2 + 1 < 3)
    {
      return v1;
    }

    v5 = -v3;
    v6 = 4;
    while (1)
    {
      v7 = v2 - (v6 - 3);
      if (__OFSUB__(v2, v6 - 3))
      {
        break;
      }

      a1 = v6 - 4;
      if (v6 - 4 != v7)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (a1 < 0)
          {
            goto LABEL_31;
          }

          v8 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (a1 >= v8)
          {
            goto LABEL_32;
          }

          if (v7 >= v8)
          {
            goto LABEL_33;
          }

          v9 = *(v1 + 8 * v7 + 32);
          v10 = *(v1 + 8 * v6);
          v11 = v9;
        }

        v12 = v11;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
        {
          v1 = sub_1002D8B8C(v1);
          v13 = (v1 >> 62) & 1;
        }

        else
        {
          LODWORD(v13) = 0;
        }

        v14 = v1 & 0xFFFFFFFFFFFFFF8;
        v15 = *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v6);
        *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v6) = v12;

        if ((v1 & 0x8000000000000000) != 0 || v13)
        {
          a1 = sub_1002D8B8C(v1);
          v1 = a1;
          v14 = a1 & 0xFFFFFFFFFFFFFF8;
          if ((v7 & 0x8000000000000000) != 0)
          {
LABEL_29:
            __break(1u);
            break;
          }
        }

        else if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_29;
        }

        if (v7 >= *(v14 + 16))
        {
          goto LABEL_34;
        }

        v16 = v14 + 8 * v7;
        v17 = *(v16 + 32);
        *(v16 + 32) = v10;
      }

      ++v6;
      if (v5 + v6 == 4)
      {
        return v1;
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
  }
}

uint64_t sub_1002EB8D4(uint64_t a1)
{
  *(v1 + 16) = sub_100280868(_swiftEmptyArrayStorage);
  *(v1 + 24) = CUMainQueue();
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = [objc_allocWithZone(SFDeviceDiscovery) init];
  v3 = sub_100280868(_swiftEmptyArrayStorage);
  *(v1 + 72) = a1;
  *(v1 + 80) = v3;
  return v1;
}

void sub_1002EB954(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + 64);
  [v6 setChangeFlags:13];
  [v6 setDiscoveryFlags:2];
  swift_beginAccess();
  if (*(v3 + 24))
  {
    [v6 setDispatchQueue:?];
    v7 = String._bridgeToObjectiveC()();
    [v6 setPurpose:v7];

    v17 = sub_1002F544C;
    v18 = v3;
    aBlock = _NSConcreteStackBlock;
    v14 = 1107296256;
    v15 = sub_100035F94;
    v16 = &unk_1008DAA10;
    v8 = _Block_copy(&aBlock);

    [v6 setDeviceFoundHandler:v8];
    _Block_release(v8);
    v17 = sub_1002F5454;
    v18 = v3;
    aBlock = _NSConcreteStackBlock;
    v14 = 1107296256;
    v15 = sub_1005F11E0;
    v16 = &unk_1008DAA38;
    v9 = _Block_copy(&aBlock);

    [v6 setDeviceChangedHandler:v9];
    _Block_release(v9);
    v17 = sub_1002F545C;
    v18 = v3;
    aBlock = _NSConcreteStackBlock;
    v14 = 1107296256;
    v15 = sub_100035F94;
    v16 = &unk_1008DAA60;
    v10 = _Block_copy(&aBlock);

    [v6 setDeviceLostHandler:v10];
    _Block_release(v10);
    v11 = swift_allocObject();
    *(v11 + 16) = a1;
    *(v11 + 24) = a2;
    v17 = sub_1002F5464;
    v18 = v11;
    aBlock = _NSConcreteStackBlock;
    v14 = 1107296256;
    v15 = sub_1005CC610;
    v16 = &unk_1008DAAB0;
    v12 = _Block_copy(&aBlock);

    [v6 activateWithCompletion:v12];
    _Block_release(v12);
  }

  else
  {
    __break(1u);
  }
}

id sub_1002EBC70(void *a1, void *a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v36 - v11;
  __chkstk_darwin(v10);
  v14 = &v36 - v13;
  result = [a1 identifier];
  if (!result)
  {
    return result;
  }

  v16 = result;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v5 + 32))(v14, v12, v4);
  v17 = [a1 bleDevice];
  if (!v17)
  {
    goto LABEL_15;
  }

  v18 = v17;
  v19 = [v17 advertisementFields];
  if (!v19)
  {
    goto LABEL_14;
  }

  v20 = v19;
  v21 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v37 = 0x65707954627573;
  v38 = 0xE700000000000000;
  AnyHashable.init<A>(_:)();
  if (!*(v21 + 16) || (v22 = sub_100570754(v39), (v23 & 1) == 0))
  {

    sub_100285E74(v39);
LABEL_14:

    goto LABEL_15;
  }

  sub_10000C5B0(*(v21 + 56) + 32 * v22, v40);
  sub_100285E74(v39);

  if ((swift_dynamicCast() & 1) == 0 || v37 != 9 && v37 != 5)
  {
    goto LABEL_14;
  }

  swift_beginAccess();
  v24 = a1;
  v25 = a2[2];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v40[0] = a2[2];
  a2[2] = 0x8000000000000000;
  sub_100579DA0(v24, v14, isUniquelyReferenced_nonNull_native);
  a2[2] = v40[0];
  swift_endAccess();
  v27 = a2[9];
  if ((v27 & 0x8000000000000000) == 0)
  {
    goto LABEL_14;
  }

  v28 = [v18 rssi];

  if ((v28 & 0x8000000000000000) == 0)
  {
LABEL_15:
    (*(v5 + 16))(v9, v14, v4);
    goto LABEL_16;
  }

  v29 = sub_1002F548C(v28, v27);
  (*(v5 + 16))(v9, v14, v4);
  if (v29 < 0)
  {
LABEL_16:
    swift_beginAccess();
    sub_1002B0908(0, v9);
    goto LABEL_17;
  }

  swift_beginAccess();
  sub_1002B0908(0, v9);
  v30 = v24;
  v31 = a2[10];
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v40[0] = a2[10];
  a2[10] = 0x8000000000000000;
  sub_100579DA0(v30, v14, v32);
  a2[10] = v40[0];
LABEL_17:
  swift_endAccess();
  swift_beginAccess();
  v33 = a2[4];
  if (v33)
  {
    v34 = a2[5];

    v33(v35);
    sub_100015D04(v33);
  }

  return (*(v5 + 8))(v14, v4);
}

void sub_1002EC088(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [*(a3 + 64) deviceFoundHandler];
  if (v4)
  {
    v5 = v4;
    (*(v4 + 2))(v4, a1);

    _Block_release(v5);
  }
}

id sub_1002EC0F8(void *a1, void *a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v23[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __chkstk_darwin(v7);
  v12 = &v23[-v11];
  __chkstk_darwin(v10);
  v14 = &v23[-v13];
  result = [a1 identifier];
  if (result)
  {
    v16 = result;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v5 + 32))(v14, v12, v4);
    v17 = *(v5 + 16);
    v17(v9, v14, v4);
    swift_beginAccess();
    sub_1002B0908(0, v9);
    swift_endAccess();
    v17(v9, v14, v4);
    swift_beginAccess();
    sub_1002B0908(0, v9);
    swift_endAccess();
    swift_beginAccess();
    v18 = a2[4];
    if (v18)
    {
      v19 = a2[5];

      v18(v20);
      sub_100015D04(v18);
    }

    swift_beginAccess();
    v21 = a2[6];
    if (v21)
    {
      v22 = a2[7];

      v21(v14);
      sub_100015D04(v21);
    }

    return (*(v5 + 8))(v14, v4);
  }

  return result;
}

uint64_t sub_1002EC364()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v19 = *(v2 - 8);
  v3 = *(v19 + 64);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v17 = *(v6 - 8);
  v18 = v6;
  v7 = *(v17 + 64);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_beginAccess();
  v11 = *(v0 + 24);
  if (v11)
  {
    aBlock[4] = sub_1002F543C;
    aBlock[5] = v1;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100011678;
    aBlock[3] = &unk_1008DA9E8;
    v12 = _Block_copy(aBlock);
    v13 = v11;

    static DispatchQoS.unspecified.getter();
    v20 = _swiftEmptyArrayStorage;
    sub_1002F30F0(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags);
    sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
    sub_100011630(&qword_100976150, &unk_1009765A0, &qword_1007F97B0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v12);

    (*(v19 + 8))(v5, v2);
    (*(v17 + 8))(v9, v18);

    swift_beginAccess();
    v14 = *(v1 + 32);
    v15 = *(v1 + 40);
    *(v1 + 32) = 0;
    *(v1 + 40) = 0;
    return sub_100015D04(v14);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t SDB389BubbleMonitor.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);
  sub_100015D04(*(v0 + 32));
  v3 = *(v0 + 56);
  sub_100015D04(*(v0 + 48));

  v4 = *(v0 + 80);

  return v0;
}

uint64_t SDB389BubbleMonitor.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);
  sub_100015D04(*(v0 + 32));
  v3 = *(v0 + 56);
  sub_100015D04(*(v0 + 48));

  v4 = *(v0 + 80);

  return swift_deallocClassInstance();
}

uint64_t b389VersionString(from:)(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100973738 != -1)
  {
    swift_once();
  }

  v9 = sub_10000C4AC(v4, qword_1009A09F0);
  (*(v5 + 16))(v8, v9, v4);
  sub_100294008(a1, a2);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v36 = v5;
    v37 = v4;
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v38[0] = v13;
    *v12 = 136315138;
    isa = Data._bridgeToObjectiveC()().super.isa;
    v15 = SFHexStringForData();

    if (!v15)
    {
      result = sub_100026AC0(a1, a2);
      __break(1u);
      return result;
    }

    sub_100026AC0(a1, a2);
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v19 = sub_10000C4E4(v16, v18, v38);

    *(v12 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v10, v11, "b389VersionString from %s", v12, 0xCu);
    sub_10000C60C(v13);

    v5 = v36;
    v4 = v37;
  }

  else
  {

    sub_100026AC0(a1, a2);
  }

  v20 = sub_1002F186C(a1, a2);
  v21 = (v20 >> 20) & 0xF;
  v22 = HIWORD(v20) & 0xF;
  v23 = v20 >> 4;
  sub_10028088C(&qword_1009750C0, &qword_1007F90F0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1007F8830;
  LOBYTE(v38[0]) = v21;
  *(v24 + 32) = dispatch thunk of CustomStringConvertible.description.getter();
  *(v24 + 40) = v25;
  LOBYTE(v38[0]) = v22;
  *(v24 + 48) = dispatch thunk of CustomStringConvertible.description.getter();
  *(v24 + 56) = v26;
  LOWORD(v38[0]) = v23;
  *(v24 + 64) = dispatch thunk of CustomStringConvertible.description.getter();
  *(v24 + 72) = v27;
  v38[0] = v24;
  sub_10028088C(&unk_100976C20, &unk_1007F9D80);
  sub_100011630(&qword_10097F070, &unk_100976C20, &unk_1007F9D80);
  v28 = BidirectionalCollection<>.joined(separator:)();
  v30 = v29;

  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v38[0] = v34;
    *v33 = 136315138;
    *(v33 + 4) = sub_10000C4E4(v28, v30, v38);
    _os_log_impl(&_mh_execute_header, v31, v32, "Result version: %s", v33, 0xCu);
    sub_10000C60C(v34);
  }

  (*(v5 + 8))(v8, v4);
  return v28;
}

unint64_t sub_1002ED098(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 6580592;
    v7 = 1701080941;
    v8 = 0x646F43726F6C6F63;
    if (a1 != 3)
    {
      v8 = 0x7375655A7369;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x6C65646F6DLL;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0xD000000000000011;
    v2 = 0x6D614E6E65766967;
    if (a1 != 9)
    {
      v2 = 0x6E69766172676E65;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x5079726574746162;
    v4 = 0x5479726574746162;
    if (a1 != 6)
    {
      v4 = 0x6572685469737372;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1002ED218(void *a1)
{
  v3 = v1;
  v5 = sub_10028088C(&qword_1009772F8, &qword_1007FA198);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v30[-v8];
  v10 = a1[4];
  sub_10002CDC0(a1, a1[3]);
  sub_1002F4BCC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  LOBYTE(v31) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v12 = *(v3 + 1);
    v13 = *(v3 + 2);
    LOBYTE(v31) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v14 = type metadata accessor for B389PresentationConfig(0);
    v15 = v14[6];
    LOBYTE(v31) = 2;
    type metadata accessor for B389PresentationConfig.Mode(0);
    sub_1002F30F0(&qword_100977300, type metadata accessor for B389PresentationConfig.Mode);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v16 = *(v3 + v14[7]);
    LOBYTE(v31) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v17 = *(v3 + v14[8]);
    LOBYTE(v31) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v18 = *(v3 + v14[9]);
    LOBYTE(v31) = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    v19 = *(v3 + v14[10]);
    LOBYTE(v31) = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
    v20 = *(v3 + v14[11]);
    LOBYTE(v31) = 7;
    KeyedEncodingContainer.encode(_:forKey:)();
    v21 = v3 + v14[12];
    v22 = *v21;
    v23 = v21[8];
    LOBYTE(v31) = 8;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v24 = (v3 + v14[13]);
    v25 = *v24;
    v26 = v24[1];
    LOBYTE(v31) = 9;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v27 = (v3 + v14[14]);
    v28 = v27[1];
    v31 = *v27;
    v32 = v28;
    v30[15] = 10;
    sub_1002A9924(v31, v28);
    sub_1002F3198();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_10028BCC0(v31, v32);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1002ED578@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for B389PresentationConfig.Mode(0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_10028088C(&qword_1009772E0, &qword_1007FA190);
  v9 = *(v36 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v36);
  v12 = &v33 - v11;
  v13 = type metadata accessor for B389PresentationConfig(0);
  v14 = *(*(v13 - 8) + 64);
  v37 = __chkstk_darwin(v13);
  v38 = (&v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = (v38 + v37[14]);
  v39 = a1;
  v40 = v16;
  *v16 = xmmword_1007F8A80;
  v17 = a1[4];
  sub_10002CDC0(a1, a1[3]);
  sub_1002F4BCC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_10000C60C(v39);

    return sub_10028BCC0(*v40, *(v40 + 1));
  }

  else
  {
    v34 = a2;
    v35 = v9;
    LOBYTE(v41) = 0;
    v18 = KeyedDecodingContainer.decode(_:forKey:)();
    v19 = v38;
    *v38 = v18;
    LOBYTE(v41) = 1;
    *(v19 + 1) = KeyedDecodingContainer.decode(_:forKey:)();
    *(v19 + 2) = v20;
    LOBYTE(v41) = 2;
    sub_1002F30F0(&qword_1009772F0, type metadata accessor for B389PresentationConfig.Mode);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v21 = v37;
    sub_1002F5394(v8, v19 + v37[6], type metadata accessor for B389PresentationConfig.Mode);
    LOBYTE(v41) = 3;
    *(v19 + v21[7]) = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v41) = 4;
    *(v19 + v21[8]) = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    LOBYTE(v41) = 5;
    *(v19 + v21[9]) = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v41) = 6;
    *(v19 + v21[10]) = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    LOBYTE(v41) = 7;
    *(v19 + v21[11]) = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v41) = 8;
    v22 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v23 = v38 + v37[12];
    *v23 = v22;
    v23[8] = v24 & 1;
    LOBYTE(v41) = 9;
    v25 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v26 = (v38 + v37[13]);
    *v26 = v25;
    v26[1] = v27;
    v43 = 10;
    sub_1002F309C();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v35 + 8))(v12, v36);
    v28 = v41;
    v29 = v42;
    v30 = v40;
    sub_10028BCC0(*v40, *(v40 + 1));
    *v30 = v28;
    v30[1] = v29;
    v31 = v38;
    sub_1002F4C20(v38, v34, type metadata accessor for B389PresentationConfig);
    sub_10000C60C(v39);
    return sub_1002F3138(v31, type metadata accessor for B389PresentationConfig);
  }
}

uint64_t sub_1002EDB3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1002F2BDC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1002EDB70(uint64_t a1)
{
  v2 = sub_1002F4BCC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002EDBAC(uint64_t a1)
{
  v2 = sub_1002F4BCC();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_1002EDC2C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1002EDCFC()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_1002EDDB8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1002EDE84@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1002F2F84(*a1);
  *a2 = result;
  return result;
}

void sub_1002EDEB4(uint64_t *a1@<X8>)
{
  v2 = 0xEE00726569666974;
  v3 = 0x6E65644965736163;
  v4 = 0xE900000000000067;
  v5 = 0x69666E6F4363666ELL;
  if (*v1 != 2)
  {
    v5 = 0x69746C754D7369;
    v4 = 0xE700000000000000;
  }

  if (*v1)
  {
    v3 = 0x444955557462;
    v2 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_1002EDF40()
{
  v1 = 0x6E65644965736163;
  v2 = 0x69666E6F4363666ELL;
  if (*v0 != 2)
  {
    v2 = 0x69746C754D7369;
  }

  if (*v0)
  {
    v1 = 0x444955557462;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1002EDFC8@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1002F2F84(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1002EDFF0(uint64_t a1)
{
  v2 = sub_1002F2FF4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002EE02C(uint64_t a1)
{
  v2 = sub_1002F2FF4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1002EE068@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v3 = type metadata accessor for UUID();
  v38 = *(v3 - 8);
  v4 = *(v38 + 64);
  __chkstk_darwin(v3);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10028088C(&qword_100977260, &qword_1007FA158);
  v39 = *(v7 - 8);
  v8 = *(v39 + 64);
  __chkstk_darwin(v7);
  v10 = &v37 - v9;
  v11 = type metadata accessor for B389PresentationConfig.Mode(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v16 = a1[4];
  v42 = a1;
  sub_10002CDC0(a1, v15);
  sub_1002F2FF4();
  v17 = v41;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v17)
  {
    return sub_10000C60C(v42);
  }

  v18 = v6;
  v19 = v3;
  v41 = v14;
  v21 = v39;
  v20 = v40;
  LOBYTE(v43) = 0;
  v22 = KeyedDecodingContainer.decode(_:forKey:)();
  v23 = v10;
  switch(v22)
  {
    case 0:
      LOBYTE(v43) = 3;
      v30 = KeyedDecodingContainer.decode(_:forKey:)();
      (*(v21 + 8))(v10, v7);
      v34 = v41;
      *v41 = v30 & 1;
      v25 = v20;
      goto LABEL_13;
    case 1:
      v37 = v11;
      LOBYTE(v43) = 1;
      sub_1002F30F0(&qword_100977288, &type metadata accessor for UUID);
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      LOBYTE(v43) = 3;
      v32 = KeyedDecodingContainer.decode(_:forKey:)();
      (*(v21 + 8))(v10, v7);
      v33 = *(sub_10028088C(&unk_100977290, &unk_1007FA160) + 48);
      v34 = v41;
      (*(v38 + 32))(v41, v18, v19);
      *(v34 + v33) = v32 & 1;
      v25 = v20;
LABEL_13:
      swift_storeEnumTagMultiPayload();
      sub_1002F5394(v34, v25, type metadata accessor for B389PresentationConfig.Mode);
      return sub_10000C60C(v42);
    case 2:
      v45 = 2;
      sub_1002F309C();
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v25 = v20;
      v26 = v7;
      v28 = v43;
      v27 = v44;
      sub_1000276B4(0, &qword_100977280, NSKeyedUnarchiver_ptr);
      sub_1000276B4(0, &unk_100977150, SFB389NFCPromptConfiguration_ptr);
      v29 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
      if (!v29)
      {
        sub_1002F3048();
        swift_allocError();
        *v36 = 0;
        swift_willThrow();
        sub_100026AC0(v28, v27);
        (*(v21 + 8))(v23, v26);
        return sub_10000C60C(v42);
      }

      v35 = v29;
      (*(v21 + 8))(v23, v26);
      sub_100026AC0(v28, v27);
      v34 = v41;
      *v41 = v35;
      goto LABEL_13;
  }

  sub_1002F3048();
  swift_allocError();
  *v31 = 1;
  swift_willThrow();
  (*(v21 + 8))(v10, v7);
  return sub_10000C60C(v42);
}

uint64_t sub_1002EE5D8(void *a1)
{
  v2 = v1;
  v4 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v64 = &v62 - v6;
  v7 = type metadata accessor for B389PresentationConfig.Mode(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7);
  v62 = (&v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __chkstk_darwin(v9);
  v66 = &v62 - v12;
  v13 = __chkstk_darwin(v11);
  v63 = &v62 - v14;
  v15 = __chkstk_darwin(v13);
  v65 = &v62 - v16;
  v17 = __chkstk_darwin(v15);
  v19 = &v62 - v18;
  __chkstk_darwin(v17);
  v21 = &v62 - v20;
  v22 = sub_10028088C(&qword_1009772A0, &qword_1007FA170);
  v68 = *(v22 - 8);
  v23 = *(v68 + 64);
  __chkstk_darwin(v22);
  v25 = &v62 - v24;
  v26 = a1[4];
  sub_10002CDC0(a1, a1[3]);
  sub_1002F2FF4();
  v69 = v25;
  v27 = v2;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_1002F4C20(v2, v21, type metadata accessor for B389PresentationConfig.Mode);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v29 = type metadata accessor for UUID();
      (*(*(v29 - 8) + 8))(v21, v29);
    }

    else
    {
      sub_1002F3138(v21, type metadata accessor for B389PresentationConfig.Mode);
    }
  }

  v30 = v22;
  v31 = v67;
  LOBYTE(v71[0]) = 0;
  v32 = v69;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v31)
  {
    return (*(v68 + 8))(v32, v22);
  }

  sub_1002F4C20(v2, v19, type metadata accessor for B389PresentationConfig.Mode);
  v34 = swift_getEnumCaseMultiPayload();
  v35 = v66;
  if (v34)
  {
    if (v34 == 1)
    {
      v36 = type metadata accessor for UUID();
      (*(*(v36 - 8) + 8))(v19, v36);
    }

    else
    {
      sub_1002F3138(v19, type metadata accessor for B389PresentationConfig.Mode);
    }

    v37 = v65;
    sub_1002F4C20(v2, v65, type metadata accessor for B389PresentationConfig.Mode);
    v38 = swift_getEnumCaseMultiPayload();
    if (!v38)
    {
      v42 = v68;
      goto LABEL_23;
    }

    if (v38 != 1)
    {
      sub_1002F3138(v37, type metadata accessor for B389PresentationConfig.Mode);
      v42 = v68;
      goto LABEL_23;
    }

    v39 = type metadata accessor for UUID();
    (*(*(v39 - 8) + 8))(v37, v39);
  }

  v40 = v63;
  sub_1002F4C20(v2, v63, type metadata accessor for B389PresentationConfig.Mode);
  v41 = swift_getEnumCaseMultiPayload();
  if (v41)
  {
    v42 = v68;
    if (v41 == 1)
    {
      v43 = v40[*(sub_10028088C(&unk_100977290, &unk_1007FA160) + 48)];
      v44 = type metadata accessor for UUID();
      (*(*(v44 - 8) + 8))(v40, v44);
      v27 = v2;
    }

    else
    {
      sub_1002F3138(v40, type metadata accessor for B389PresentationConfig.Mode);
    }
  }

  else
  {
    v45 = *v40;
    v42 = v68;
  }

  LOBYTE(v71[0]) = 3;
  KeyedEncodingContainer.encode(_:forKey:)();
LABEL_23:
  v46 = v27;
  sub_1002F4C20(v27, v35, type metadata accessor for B389PresentationConfig.Mode);
  v47 = swift_getEnumCaseMultiPayload();
  v48 = type metadata accessor for UUID();
  v49 = *(v48 - 8);
  v50 = v49;
  if (v47 == 1)
  {
    v51 = v64;
    (*(v49 + 32))(v64, v35, v48);
    (*(v50 + 56))(v51, 0, 1, v48);
  }

  else
  {
    v51 = v64;
    (*(v49 + 56))(v64, 1, 1, v48);
    sub_1002F3138(v35, type metadata accessor for B389PresentationConfig.Mode);
  }

  LOBYTE(v71[0]) = 1;
  sub_1002F30F0(&qword_1009772A8, &type metadata accessor for UUID);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  sub_100005508(v51, &unk_100976120, &qword_1007F9260);
  v52 = v62;
  sub_1002F4C20(v46, v62, type metadata accessor for B389PresentationConfig.Mode);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v53 = *v52;
    v54 = objc_opt_self();
    v71[0] = 0;
    v55 = [v54 archivedDataWithRootObject:v53 requiringSecureCoding:1 error:v71];
    v56 = v71[0];
    if (v55)
    {
      v57 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v59 = v58;

      v71[0] = v57;
      v71[1] = v59;
      v70 = 2;
      sub_1002F3198();
      v60 = v69;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v42 + 8))(v60, v30);

      return sub_100026AC0(v57, v59);
    }

    v61 = v56;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  else
  {
    sub_1002F3138(v52, type metadata accessor for B389PresentationConfig.Mode);
  }

  return (*(v42 + 8))(v69, v30);
}

void *sub_1002EEE6C()
{
  result = sub_1002811D0(_swiftEmptyArrayStorage);
  off_100976BF0 = result;
  return result;
}

uint64_t sub_1002EEE94()
{
  sub_10028088C(&qword_1009806F0, &unk_1007FD5C0);
  result = swift_allocObject();
  *(result + 16) = 0;
  qword_100976BF8 = result;
  return result;
}

uint64_t sub_1002EEED4(uint64_t a1)
{
  if (qword_100973598 != -1)
  {
    a1 = swift_once();
  }

  v2 = qword_100976BF8;
  __chkstk_darwin(a1);

  os_unfair_lock_lock(v2 + 4);
  sub_1002F5418(v3);
  os_unfair_lock_unlock(v2 + 4);

  v4 = *(v1 + 24);

  return v1;
}

uint64_t sub_1002EEFB4(uint64_t a1)
{
  if (qword_100973590 != -1)
  {
    swift_once();
  }

  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  swift_beginAccess();
  v4 = off_100976BF0;
  if (*(off_100976BF0 + 2))
  {
    v5 = sub_100012854(v2, v3);
    if (v6)
    {
      v7 = *(v4[7] + 8 * v5);
    }
  }

  swift_endAccess();
  sub_10028088C(&unk_100977350, &unk_1007FA1D0);
  result = Optional.unwrap(_:file:line:)();
  v9 = v11 - 1;
  if (v11 == 1)
  {
    swift_beginAccess();

    sub_1002B0930(0, 1, v2, v3);
  }

  else
  {
    if (!v11)
    {
      __break(1u);
      return result;
    }

    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = off_100976BF0;
    off_100976BF0 = 0x8000000000000000;
    sub_100579DC8(v9, v2, v3, isUniquelyReferenced_nonNull_native);
    off_100976BF0 = v12;
  }

  return swift_endAccess();
}

unint64_t sub_1002EF184(Swift::String *a1)
{
  _StringGuts.grow(_:)(23);

  String.append(_:)(a1[1]);
  return 0xD000000000000015;
}

uint64_t sub_1002EF1F4(uint64_t a1)
{
  sub_1002EEED4(a1);

  return swift_deallocClassInstance();
}

uint64_t URL.fileUTType()()
{
  v1 = type metadata accessor for URLResourceValues();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10028088C(&qword_100976C30, &qword_1007F8818);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007F5670;
  *(inited + 32) = NSURLContentTypeKey;
  v7 = NSURLContentTypeKey;
  sub_1002F13BC(inited);
  swift_setDeallocating();
  sub_1002F3138(inited + 32, type metadata accessor for URLResourceKey);
  URL.resourceValues(forKeys:)();

  if (!v0)
  {
    URLResourceValues.contentType.getter();
    return (*(v2 + 8))(v5, v1);
  }

  return result;
}

Swift::String_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> URL.fileTypeIdentifier()()
{
  v2 = type metadata accessor for URLResourceValues();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10028088C(&qword_100976C30, &qword_1007F8818);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007F5670;
  *(inited + 32) = NSURLTypeIdentifierKey;
  v8 = NSURLTypeIdentifierKey;
  sub_1002F13BC(inited);
  swift_setDeallocating();
  sub_1002F3138(inited + 32, type metadata accessor for URLResourceKey);
  URL.resourceValues(forKeys:)();

  if (!v1)
  {
    v0 = URLResourceValues.typeIdentifier.getter();
    inited = v9;
    (*(v3 + 8))(v6, v2);
  }

  v10 = v0;
  v11 = inited;
  result.value._object = v11;
  result.value._countAndFlagsBits = v10;
  return result;
}

Swift::Int_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> URL.fileSize()()
{
  v0 = sub_1002EF714(&NSURLFileSizeKey, &URLResourceValues.fileSize.getter);
  result.value = v0;
  result.is_nil = v1;
  return result;
}

Swift::Bool __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> URL.isDirectory()()
{
  v2 = type metadata accessor for URLResourceValues();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10028088C(&qword_100976C30, &qword_1007F8818);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007F5670;
  *(inited + 32) = NSURLIsDirectoryKey;
  v8 = NSURLIsDirectoryKey;
  sub_1002F13BC(inited);
  swift_setDeallocating();
  sub_1002F3138(inited + 32, type metadata accessor for URLResourceKey);
  URL.resourceValues(forKeys:)();

  if (!v1)
  {
    v0 = URLResourceValues.isDirectory.getter();
    (*(v3 + 8))(v6, v2);
  }

  return v0 & 1;
}

Swift::Int_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> URL.availableStorage()()
{
  v0 = sub_1002EF714(&NSURLVolumeAvailableCapacityKey, &URLResourceValues.volumeAvailableCapacity.getter);
  result.value = v0;
  result.is_nil = v1;
  return result;
}

uint64_t (*sub_1002EF714(void **a1, uint64_t (*a2)(uint64_t)))(uint64_t)
{
  v5 = type metadata accessor for URLResourceValues();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10028088C(&qword_100976C30, &qword_1007F8818);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007F5670;
  v11 = *a1;
  *(inited + 32) = *a1;
  v12 = v11;
  sub_1002F13BC(inited);
  swift_setDeallocating();
  sub_1002F3138(inited + 32, type metadata accessor for URLResourceKey);
  URL.resourceValues(forKeys:)();

  if (!v2)
  {
    a2 = a2(v13);
    (*(v6 + 8))(v9, v5);
  }

  return a2;
}

uint64_t Sequence.batch(size:)(uint64_t a1, uint64_t a2)
{
  v29 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v27 = *(AssociatedTypeWitness - 8);
  v4 = v27[8];
  __chkstk_darwin(AssociatedTypeWitness);
  v6 = &v25 - v5;
  v7 = type metadata accessor for Optional();
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = &v25 - v10;
  v12 = *(a2 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v9);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v25 = *(v16 - 8);
  v17 = *(v25 + 64);
  __chkstk_darwin(v16);
  v19 = &v25 - v18;
  type metadata accessor for Array();
  v32 = Array.init()();
  v31 = Array.init()();
  (*(v12 + 16))(v15, v28, a2);
  dispatch thunk of Sequence.makeIterator()();
  v20 = v27;
  swift_getAssociatedConformanceWitness();
  dispatch thunk of IteratorProtocol.next()();
  v28 = v20[6];
  if (v28(v11, 1, AssociatedTypeWitness) != 1)
  {
    v22 = v20[4];
    v26 = v11;
    v27 = v22;
    (v22)(v6, v11, AssociatedTypeWitness);
    while (1)
    {
      Array.append(_:)();
      v23 = v31;
      if (Array.count.getter() > v29)
      {
        v30 = v23;
        type metadata accessor for Array();

        v11 = v26;
        Array.append(_:)();
        Array.removeAll(keepingCapacity:)(0);
      }

      dispatch thunk of IteratorProtocol.next()();
      if (v28(v11, 1, AssociatedTypeWitness) == 1)
      {
        break;
      }

      (v27)(v6, v11, AssociatedTypeWitness);
    }
  }

  (*(v25 + 8))(v19, v16);
  v21 = v31;
  v30 = v31;
  swift_getWitnessTable();
  if (Collection.isEmpty.getter())
  {
  }

  else
  {
    v30 = v21;
    type metadata accessor for Array();
    Array.append(_:)();
  }

  return v32;
}

uint64_t SDAsyncSemaphore.deinit()
{
  v1 = *(v0 + 120);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t SDAsyncSemaphore.__deallocating_deinit()
{
  v1 = *(v0 + 120);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1002EFD6C@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() defaultManager];
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 containerURLForSecurityApplicationGroupIdentifier:v3];

  if (v4)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = type metadata accessor for URL();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

uint64_t sub_1002EFF80(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1004978CC(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1002EFFFC(v6);
  return specialized ContiguousArray._endMutation()();
}

void sub_1002EFFFC(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_1000276B4(0, &unk_100977380, SFDevice_ptr);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_1002F0254(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1002F0110(0, v2, 1, a1);
  }
}

void sub_1002F0110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v22 = *a4;
    v4 = *a4 + 8 * a3 - 8;
    v5 = a1 - a3;
LABEL_5:
    v20 = v4;
    v21 = a3;
    v6 = *(v22 + 8 * a3);
    v19 = v5;
    while (1)
    {
      v7 = *v4;
      v8 = v6;
      v9 = v7;
      v10 = [v8 bleDevice];
      if (!v10)
      {
        break;
      }

      v11 = v10;
      v12 = [v10 rssiFloor];

      v13 = [v9 bleDevice];
      if (!v13)
      {
        goto LABEL_14;
      }

      v14 = v13;
      v15 = [v13 rssiFloor];

      if (v12 < v15)
      {
        if (!v22)
        {
          goto LABEL_15;
        }

        v16 = *v4;
        v6 = *(v4 + 8);
        *v4 = v6;
        *(v4 + 8) = v16;
        v4 -= 8;
        if (!__CFADD__(v5++, 1))
        {
          continue;
        }
      }

      a3 = v21 + 1;
      v4 = v20 + 8;
      v5 = v19 - 1;
      if (v21 + 1 == a2)
      {
        return;
      }

      goto LABEL_5;
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
  }
}

void sub_1002F0254(id **a1, uint64_t a2, id *a3, uint64_t a4)
{
  v6 = v5;
  v7 = a3;
  v8 = a3[1];
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = _swiftEmptyArrayStorage;
    v11 = &selRef_awdlInfoForPeerWithServiceName_;
    v12 = &selRef_retryRequestForError_;
    while (1)
    {
      v13 = v9;
      v14 = v9 + 1;
      v113 = v9;
      if (v9 + 1 < v8)
      {
        v108 = v10;
        v110 = v6;
        v15 = *v7;
        v16 = *(*v7 + v9);
        v17 = *(*v7 + v14);
        v18 = v16;
        v19 = [v17 v11[59]];
        if (!v19)
        {
          goto LABEL_138;
        }

        v20 = v19;
        v118 = [v19 v12[14]];

        v21 = [v18 v11[59]];
        if (!v21)
        {
LABEL_139:
          __break(1u);
          goto LABEL_140;
        }

        v22 = v21;
        v116 = [v21 v12[14]];

        v4 = v113 + 2;
        v23 = &v15[8 * v113 + 16];
        while (v8 != v4)
        {
          v24 = *(v23 - 1);
          v25 = *v23;
          v26 = v24;
          v27 = [v25 bleDevice];
          if (!v27)
          {
            goto LABEL_133;
          }

          v28 = v27;
          v29 = [v27 rssiFloor];

          v30 = [v26 bleDevice];
          if (!v30)
          {
            goto LABEL_132;
          }

          v31 = v30;
          v14 = v118 < v116;
          v32 = [v30 rssiFloor];

          ++v4;
          ++v23;
          if (v118 < v116 == v29 >= v32)
          {
            v8 = v4 - 1;
            break;
          }
        }

        v10 = v108;
        v6 = v110;
        v7 = a3;
        v11 = &selRef_awdlInfoForPeerWithServiceName_;
        v13 = v113;
        v33 = 8 * v113;
        if (v118 >= v116)
        {
          goto LABEL_21;
        }

        if (v8 < v113)
        {
          goto LABEL_125;
        }

        if (v113 >= v8)
        {
LABEL_21:
          v14 = v8;
          v12 = &selRef_retryRequestForError_;
        }

        else
        {
          v34 = 8 * v8 - 8;
          v35 = v8;
          v36 = v113;
          v12 = &selRef_retryRequestForError_;
          do
          {
            if (v36 != --v35)
            {
              v37 = *a3;
              if (!*a3)
              {
                goto LABEL_135;
              }

              v38 = *&v37[v33];
              *&v37[v33] = *&v37[v34];
              *&v37[v34] = v38;
            }

            ++v36;
            v34 -= 8;
            v33 += 8;
          }

          while (v36 < v35);
          v14 = v8;
        }
      }

      v39 = v7[1];
      if (v14 < v39)
      {
        if (__OFSUB__(v14, v13))
        {
          goto LABEL_124;
        }

        if (v14 - v13 < a4)
        {
          v40 = (v13 + a4);
          if (__OFADD__(v13, a4))
          {
            goto LABEL_126;
          }

          if (v40 >= v39)
          {
            v40 = v7[1];
          }

          if (v40 < v13)
          {
LABEL_127:
            __break(1u);
            goto LABEL_128;
          }

          if (v14 != v40)
          {
            v109 = v10;
            v111 = v6;
            v41 = *v7;
            v42 = *v7 + 8 * v14 - 8;
            v4 = v13 - v14;
            v114 = v40;
            do
            {
              v117 = v42;
              v119 = v14;
              v43 = *&v41[8 * v14];
              v115 = v4;
              while (1)
              {
                v44 = *v42;
                v45 = v43;
                v46 = v44;
                v47 = [v45 bleDevice];
                if (!v47)
                {
                  goto LABEL_130;
                }

                v48 = v47;
                v49 = [v47 v12[14]];

                v50 = [v46 bleDevice];
                if (!v50)
                {
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
                  __break(1u);
LABEL_137:
                  __break(1u);
LABEL_138:
                  __break(1u);
                  goto LABEL_139;
                }

                v51 = v50;
                v52 = [v50 v12[14]];

                if (v49 >= v52)
                {
                  break;
                }

                if (!v41)
                {
                  goto LABEL_131;
                }

                v53 = *v42;
                v43 = *(v42 + 8);
                *v42 = v43;
                *(v42 + 8) = v53;
                v42 -= 8;
                v54 = __CFADD__(v4++, 1);
                v12 = &selRef_retryRequestForError_;
                if (v54)
                {
                  goto LABEL_33;
                }
              }

              v12 = &selRef_retryRequestForError_;
LABEL_33:
              v14 = v119 + 1;
              v42 = v117 + 8;
              v4 = v115 - 1;
            }

            while ((v119 + 1) != v114);
            v14 = v114;
            v10 = v109;
            v6 = v111;
            v7 = a3;
            v11 = &selRef_awdlInfoForPeerWithServiceName_;
            v13 = v113;
          }
        }
      }

      if (v14 < v13)
      {
        goto LABEL_123;
      }

      v55 = v10;
      v120 = v14;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v10 = v55;
      }

      else
      {
        v10 = sub_10028E6A8(0, *(v55 + 2) + 1, 1, v55);
      }

      v4 = *(v10 + 2);
      v56 = *(v10 + 3);
      v57 = v4 + 1;
      if (v4 >= v56 >> 1)
      {
        v10 = sub_10028E6A8((v56 > 1), v4 + 1, 1, v10);
      }

      *(v10 + 2) = v57;
      v58 = &v10[16 * v4];
      *(v58 + 4) = v113;
      *(v58 + 5) = v14;
      v14 = *a1;
      if (!*a1)
      {
        goto LABEL_137;
      }

      if (v4)
      {
        while (1)
        {
          v59 = v57 - 1;
          if (v57 >= 4)
          {
            break;
          }

          if (v57 == 3)
          {
            v60 = *(v10 + 4);
            v61 = *(v10 + 5);
            v70 = __OFSUB__(v61, v60);
            v62 = v61 - v60;
            v63 = v70;
LABEL_63:
            if (v63)
            {
              goto LABEL_112;
            }

            v76 = &v10[16 * v57];
            v78 = *v76;
            v77 = *(v76 + 1);
            v79 = __OFSUB__(v77, v78);
            v80 = v77 - v78;
            v81 = v79;
            if (v79)
            {
              goto LABEL_115;
            }

            v82 = &v10[16 * v59 + 32];
            v84 = *v82;
            v83 = *(v82 + 1);
            v70 = __OFSUB__(v83, v84);
            v85 = v83 - v84;
            if (v70)
            {
              goto LABEL_118;
            }

            if (__OFADD__(v80, v85))
            {
              goto LABEL_119;
            }

            if (v80 + v85 >= v62)
            {
              if (v62 < v85)
              {
                v59 = v57 - 2;
              }

              goto LABEL_84;
            }

            goto LABEL_77;
          }

          v86 = &v10[16 * v57];
          v88 = *v86;
          v87 = *(v86 + 1);
          v70 = __OFSUB__(v87, v88);
          v80 = v87 - v88;
          v81 = v70;
LABEL_77:
          if (v81)
          {
            goto LABEL_114;
          }

          v89 = &v10[16 * v59];
          v91 = *(v89 + 4);
          v90 = *(v89 + 5);
          v70 = __OFSUB__(v90, v91);
          v92 = v90 - v91;
          if (v70)
          {
            goto LABEL_117;
          }

          if (v92 < v80)
          {
            goto LABEL_3;
          }

LABEL_84:
          v4 = v59 - 1;
          if (v59 - 1 >= v57)
          {
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
            __break(1u);
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
            goto LABEL_127;
          }

          if (!*v7)
          {
            goto LABEL_134;
          }

          v97 = v10;
          v98 = *&v10[16 * v4 + 32];
          v99 = *&v10[16 * v59 + 40];
          sub_1002F09BC(*v7 + v98, *v7 + *&v10[16 * v59 + 32], *v7 + v99, v14);
          if (v6)
          {
            goto LABEL_106;
          }

          if (v99 < v98)
          {
            goto LABEL_108;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v97 = sub_1004973B4(v97);
          }

          if (v4 >= *(v97 + 2))
          {
            goto LABEL_109;
          }

          v100 = &v97[16 * v4];
          *(v100 + 4) = v98;
          *(v100 + 5) = v99;
          sub_100497328(v59);
          v10 = v97;
          v57 = *(v97 + 2);
          v11 = &selRef_awdlInfoForPeerWithServiceName_;
          if (v57 <= 1)
          {
            goto LABEL_3;
          }
        }

        v64 = &v10[16 * v57 + 32];
        v65 = *(v64 - 64);
        v66 = *(v64 - 56);
        v70 = __OFSUB__(v66, v65);
        v67 = v66 - v65;
        if (v70)
        {
          goto LABEL_110;
        }

        v69 = *(v64 - 48);
        v68 = *(v64 - 40);
        v70 = __OFSUB__(v68, v69);
        v62 = v68 - v69;
        v63 = v70;
        if (v70)
        {
          goto LABEL_111;
        }

        v71 = &v10[16 * v57];
        v73 = *v71;
        v72 = *(v71 + 1);
        v70 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v70)
        {
          goto LABEL_113;
        }

        v70 = __OFADD__(v62, v74);
        v75 = v62 + v74;
        if (v70)
        {
          goto LABEL_116;
        }

        if (v75 >= v67)
        {
          v93 = &v10[16 * v59 + 32];
          v95 = *v93;
          v94 = *(v93 + 1);
          v70 = __OFSUB__(v94, v95);
          v96 = v94 - v95;
          if (v70)
          {
            goto LABEL_120;
          }

          if (v62 < v96)
          {
            v59 = v57 - 2;
          }

          goto LABEL_84;
        }

        goto LABEL_63;
      }

LABEL_3:
      v8 = v7[1];
      v9 = v120;
      if (v120 >= v8)
      {
        goto LABEL_95;
      }
    }
  }

  v10 = _swiftEmptyArrayStorage;
LABEL_95:
  v14 = v7;
  v7 = *a1;
  if (*a1)
  {
    v4 = v10;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v101 = v4;
    }

    else
    {
LABEL_128:
      v101 = sub_1004973B4(v4);
    }

    v4 = *(v101 + 2);
    if (v4 >= 2)
    {
      while (*v14)
      {
        v102 = *&v101[16 * v4];
        v103 = v101;
        v104 = *&v101[16 * v4 + 24];
        sub_1002F09BC((*v14 + 8 * v102), (*v14 + 8 * *&v101[16 * v4 + 16]), (*v14 + 8 * v104), v7);
        if (v6)
        {
          goto LABEL_106;
        }

        if (v104 < v102)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v103 = sub_1004973B4(v103);
        }

        if (v4 - 2 >= *(v103 + 2))
        {
          goto LABEL_122;
        }

        v105 = &v103[16 * v4];
        *v105 = v102;
        *(v105 + 1) = v104;
        sub_100497328(v4 - 1);
        v101 = v103;
        v4 = *(v103 + 2);
        if (v4 <= 1)
        {
          goto LABEL_106;
        }
      }

      goto LABEL_136;
    }

LABEL_106:
  }

  else
  {
LABEL_140:
    __break(1u);
  }
}

uint64_t sub_1002F09BC(id *__src, id *__dst, id *a3, id *a4)
{
  v4 = a3;
  v5 = __dst;
  v6 = __dst - __src;
  v7 = __dst - __src + 7;
  if (__dst - __src >= 0)
  {
    v7 = __dst - __src;
  }

  v8 = v7 >> 3;
  v9 = a3 - __dst;
  v10 = a3 - __dst + 7;
  if (a3 - __dst >= 0)
  {
    v10 = a3 - __dst;
  }

  v11 = v10 >> 3;
  if (v8 >= v10 >> 3)
  {
    if (a4 != __dst || &__dst[v11] <= a4)
    {
      v31 = a4;
      memmove(a4, __dst, 8 * v11);
      v5 = __dst;
      a4 = v31;
    }

    v48 = a4;
    v15 = &a4[v11];
    if (v9 < 8)
    {
      v12 = a4;
    }

    else
    {
      v12 = a4;
      if (v5 > __src)
      {
        while (1)
        {
          v44 = v5;
          v33 = v5 - 1;
          --v4;
          v34 = v15;
          v47 = v33;
          while (1)
          {
            v50 = v15;
            v35 = *--v34;
            v36 = *v33;
            v37 = v35;
            v38 = v36;
            result = [v37 bleDevice];
            if (!result)
            {
              goto LABEL_49;
            }

            v39 = result;
            v40 = [result rssiFloor];

            result = [v38 bleDevice];
            if (!result)
            {
              goto LABEL_48;
            }

            v41 = result;
            v42 = [result rssiFloor];

            v43 = v4 + 1;
            if (v40 < v42)
            {
              break;
            }

            v33 = v47;
            if (v43 != v50)
            {
              *v4 = *v34;
            }

            --v4;
            v15 = v34;
            if (v34 <= v48)
            {
              v15 = v34;
              v12 = v48;
              v30 = v44;
              goto LABEL_42;
            }
          }

          v15 = v50;
          v30 = v47;
          if (v43 != v44)
          {
            *v4 = *v47;
          }

          v12 = v48;
          if (v50 > v48)
          {
            v5 = v47;
            if (v47 > __src)
            {
              continue;
            }
          }

          goto LABEL_42;
        }
      }
    }

    v30 = v5;
LABEL_42:
    if (v30 != v12 || v30 >= (v12 + ((v15 - v12 + (v15 - v12 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
    {
      memmove(v30, v12, 8 * ((v15 - v12) / 8));
    }

    return 1;
  }

  v12 = a4;
  v13 = __src;
  if (a4 != __src || &__src[v8] <= a4)
  {
    memmove(a4, __src, 8 * v8);
    v5 = __dst;
  }

  v15 = &v12[v8];
  if (v6 < 8 || v5 >= v4)
  {
LABEL_21:
    v30 = v13;
    goto LABEL_42;
  }

  v16 = &selRef_retryRequestForError_;
  v46 = v4;
  v49 = &v12[v8];
  while (1)
  {
    v17 = v13;
    v18 = v5;
    v19 = v12;
    v20 = *v12;
    v21 = *v5;
    v22 = v20;
    result = [v21 bleDevice];
    if (!result)
    {
      break;
    }

    v24 = result;
    v25 = [result v16[14]];

    result = [v22 bleDevice];
    if (!result)
    {
      goto LABEL_47;
    }

    v26 = result;
    v27 = [result v16[14]];

    if (v25 >= v27)
    {
      v28 = v19;
      v12 = v19 + 1;
      v29 = v17;
      v5 = v18;
      if (v17 == v19)
      {
        goto LABEL_19;
      }

LABEL_18:
      *v29 = *v28;
      goto LABEL_19;
    }

    v28 = v18;
    v5 = v18 + 1;
    v29 = v17;
    v12 = v19;
    if (v17 != v18)
    {
      goto LABEL_18;
    }

LABEL_19:
    v13 = v29 + 1;
    v15 = v49;
    v16 = &selRef_retryRequestForError_;
    if (v12 >= v49 || v5 >= v46)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
  return result;
}

uint64_t sub_1002F0D64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v37 = *(v4 - 8);
  v38 = v4;
  v5 = *(v37 + 64);
  __chkstk_darwin(v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for B389PresentationConfig.Mode(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8);
  v12 = (&v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __chkstk_darwin(v10);
  v15 = &v37 - v14;
  __chkstk_darwin(v13);
  v17 = &v37 - v16;
  v18 = sub_10028088C(&qword_1009772D0, &qword_1007FA188);
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18 - 8);
  v22 = &v37 - v21;
  v23 = &v37 + *(v20 + 56) - v21;
  sub_1002F4C20(a1, &v37 - v21, type metadata accessor for B389PresentationConfig.Mode);
  sub_1002F4C20(a2, v23, type metadata accessor for B389PresentationConfig.Mode);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_1002F4C20(v22, v17, type metadata accessor for B389PresentationConfig.Mode);
    if (!swift_getEnumCaseMultiPayload())
    {
      v32 = *v17 ^ *v23;
      goto LABEL_8;
    }

    goto LABEL_13;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_1002F4C20(v22, v12, type metadata accessor for B389PresentationConfig.Mode);
    v34 = *v12;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v35 = *v23;
      sub_1000276B4(0, &qword_1009772D8, NSObject_ptr);
      v33 = static NSObject.== infix(_:_:)();

      sub_1002F3138(v22, type metadata accessor for B389PresentationConfig.Mode);
      return v33 & 1;
    }

    goto LABEL_13;
  }

  sub_1002F4C20(v22, v15, type metadata accessor for B389PresentationConfig.Mode);
  v25 = *(sub_10028088C(&unk_100977290, &unk_1007FA160) + 48);
  v26 = v15[v25];
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v37 + 8))(v15, v38);
LABEL_13:
    sub_100005508(v22, &qword_1009772D0, &qword_1007FA188);
LABEL_14:
    v33 = 0;
    return v33 & 1;
  }

  v27 = v23[v25];
  v29 = v37;
  v28 = v38;
  (*(v37 + 32))(v7, v23, v38);
  v30 = static UUID.== infix(_:_:)();
  v31 = *(v29 + 8);
  v31(v7, v28);
  v31(v15, v28);
  if ((v30 & 1) == 0)
  {
    sub_1002F3138(v22, type metadata accessor for B389PresentationConfig.Mode);
    goto LABEL_14;
  }

  v32 = v26 ^ v27;
LABEL_8:
  sub_1002F3138(v22, type metadata accessor for B389PresentationConfig.Mode);
  v33 = v32 ^ 1;
  return v33 & 1;
}

BOOL sub_1002F1160(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for B389PresentationConfig(0);
  if ((sub_1002F0D64(a1 + v5[6], a2 + v5[6]) & 1) == 0 || *(a1 + v5[7]) != *(a2 + v5[7]) || *(a1 + v5[8]) != *(a2 + v5[8]) || *(a1 + v5[9]) != *(a2 + v5[9]) || *(a1 + v5[10]) != *(a2 + v5[10]) || *(a1 + v5[11]) != *(a2 + v5[11]))
  {
    return 0;
  }

  v6 = v5[12];
  v7 = (a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = *(a2 + v6 + 8);
  if (v8)
  {
    if (!v10)
    {
      return 0;
    }
  }

  else
  {
    if (*v7 != *v9)
    {
      LOBYTE(v10) = 1;
    }

    if (v10)
    {
      return 0;
    }
  }

  v12 = v5[13];
  v13 = (a1 + v12);
  v14 = *(a1 + v12 + 8);
  v15 = (a2 + v12);
  v16 = v15[1];
  if (v14)
  {
    if (!v16 || (*v13 != *v15 || v14 != v16) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v16)
  {
    return 0;
  }

  v17 = v5[14];
  v19 = *(a1 + v17);
  v18 = *(a1 + v17 + 8);
  v20 = (a2 + v17);
  v22 = *v20;
  v21 = v20[1];
  if (v18 >> 60 != 15)
  {
    if (v21 >> 60 == 15)
    {
      goto LABEL_31;
    }

    sub_1002A9924(v19, v18);
    sub_1002A9924(v22, v21);
    v23 = sub_100331508(v19, v18, v22, v21);
    sub_10028BCC0(v22, v21);
    sub_10028BCC0(v19, v18);
    return (v23 & 1) != 0;
  }

  if (v21 >> 60 != 15)
  {
LABEL_31:
    sub_1002A9924(v19, v18);
    sub_1002A9924(v22, v21);
    sub_10028BCC0(v19, v18);
    sub_10028BCC0(v22, v21);
    return 0;
  }

  sub_1002A9924(v19, v18);
  sub_1002A9924(v22, v21);
  sub_10028BCC0(v19, v18);
  return 1;
}

void *sub_1002F13BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10028088C(&qword_100977368, &qword_1007FA1E8);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v27 = v1;
    v28 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v28 + 8 * v4);
      v8 = *(v3 + 40);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      v29 = v7;
      String.hash(into:)();
      v9 = Hasher._finalize()();

      v11 = -1 << *(v3 + 32);
      v12 = v9 & ~v11;
      v13 = v12 >> 6;
      v14 = *(v5 + 8 * (v12 >> 6));
      v15 = 1 << v12;
      if (((1 << v12) & v14) == 0)
      {
        goto LABEL_15;
      }

      v16 = ~v11;
      do
      {
        v17 = *(*(v3 + 48) + 8 * v12);
        v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = v19;
        if (v18 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v20 == v21)
        {

LABEL_4:
          v6 = v27;
          goto LABEL_5;
        }

        v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v23)
        {

          goto LABEL_4;
        }

        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *(v5 + 8 * (v12 >> 6));
        v15 = 1 << v12;
      }

      while (((1 << v12) & v14) != 0);
      v6 = v27;
LABEL_15:
      *(v5 + 8 * v13) = v15 | v14;
      *(*(v3 + 48) + 8 * v12) = v29;
      v24 = *(v3 + 16);
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v26;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_1002F15B0(uint64_t result, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      goto LABEL_15;
    }

    v5 = *(result + 16);
    v4 = *(result + 24);
    v6 = __OFSUB__(v4, v5);
    v3 = v4 - v5;
    if (!v6)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v2)
  {
    v3 = BYTE6(a2);
    goto LABEL_10;
  }

  LODWORD(v3) = HIDWORD(result) - result;
  if (__OFSUB__(HIDWORD(result), result))
  {
    goto LABEL_31;
  }

  v3 = v3;
LABEL_10:
  if ((v3 - 0x1000000000000000) >> 61 == 7)
  {
    if ((v3 & 0x1FFFFFFFFFFFFFFFLL) == 2)
    {
      v7 = sub_100549DA4(result, a2);
      v8 = v7[1].u64[0];
      if (v8)
      {
        if (v8 < 4)
        {
          v9 = 0;
          LODWORD(v10) = 0;
LABEL_26:
          v21 = v8 - v9;
          v22 = &v7[2] + v9;
          do
          {
            v23 = *v22++;
            v10 = (v23 | v10);
            --v21;
          }

          while (v21);
LABEL_28:

          return v10;
        }

        if (v8 >= 0x10)
        {
          v9 = v8 & 0x7FFFFFFFFFFFFFF0;
          v11 = v7 + 3;
          v12 = 0uLL;
          v13 = v8 & 0x7FFFFFFFFFFFFFF0;
          v14 = 0uLL;
          do
          {
            v12 = vorrq_s8(v11[-1], v12);
            v14 = vorrq_s8(*v11, v14);
            v11 += 2;
            v13 -= 16;
          }

          while (v13);
          v15 = vorrq_s8(v14, v12);
          *v15.i8 = vorr_s8(*v15.i8, *&vextq_s8(v15, v15, 8uLL));
          v10 = (v15.i32[0] | v15.i32[1] | ((v15.i64[0] | HIDWORD(v15.i64[0])) >> 16));
          if (v8 == v9)
          {
            goto LABEL_28;
          }

          if ((v8 & 0xC) == 0)
          {
            goto LABEL_26;
          }
        }

        else
        {
          LOWORD(v10) = 0;
          v9 = 0;
        }

        v16 = v9;
        v9 = v8 & 0x7FFFFFFFFFFFFFFCLL;
        v17 = v10;
        v18 = (&v7[2] + 2 * v16);
        v19 = v16 - (v8 & 0x7FFFFFFFFFFFFFFCLL);
        do
        {
          v20 = *v18++;
          v17 = vorr_s8(v20, v17);
          v19 += 4;
        }

        while (v19);
        v10 = (v17.i32[0] | v17.i32[1] | ((*&v17 | HIDWORD(*&v17)) >> 16));
        if (v8 == v9)
        {
          goto LABEL_28;
        }

        goto LABEL_26;
      }

      return 0;
    }

LABEL_15:
    v10 = &unk_1007FA1B0;
    sub_10028088C(&unk_1009832C0, &unk_1007FA1B0);
    sub_100011630(&unk_100977330, &unk_1009832C0, &unk_1007FA1B0);
    swift_allocError();
    swift_willThrow();
    return v10;
  }

  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

unint64_t _s16DaemoniOSLibrary10SDRunStateO8rawValueACSgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1008D75F8, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1002F17FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10028088C(&qword_100976C00, &unk_1007F9D70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002F186C(uint64_t result, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      goto LABEL_15;
    }

    v5 = *(result + 16);
    v4 = *(result + 24);
    v6 = __OFSUB__(v4, v5);
    v3 = v4 - v5;
    if (!v6)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v2)
  {
    v3 = BYTE6(a2);
    goto LABEL_10;
  }

  LODWORD(v3) = HIDWORD(result) - result;
  if (__OFSUB__(HIDWORD(result), result))
  {
    goto LABEL_25;
  }

  v3 = v3;
LABEL_10:
  if ((v3 - 0x1000000000000000) >> 61 == 7)
  {
    if ((v3 & 0x1FFFFFFFFFFFFFFFLL) == 4)
    {
      v7 = sub_1002E8784(result, a2);
      v8 = v7[1].u64[0];
      if (v8)
      {
        if (v8 > 7)
        {
          v9 = v8 & 0x7FFFFFFFFFFFFFF8;
          v11 = v7 + 3;
          v12 = 0uLL;
          v13 = v8 & 0x7FFFFFFFFFFFFFF8;
          v14 = 0uLL;
          do
          {
            v12 = vorrq_s8(v11[-1], v12);
            v14 = vorrq_s8(*v11, v14);
            v11 += 2;
            v13 -= 8;
          }

          while (v13);
          v15 = vorrq_s8(v14, v12);
          v16 = vorr_s8(*v15.i8, *&vextq_s8(v15, v15, 8uLL));
          v10 = (v16.i32[0] | v16.i32[1]);
          if (v8 == v9)
          {
            goto LABEL_22;
          }
        }

        else
        {
          v9 = 0;
          LODWORD(v10) = 0;
        }

        v17 = v8 - v9;
        v18 = &v7[2].i32[v9];
        do
        {
          v19 = *v18++;
          v10 = v19 | v10;
          --v17;
        }

        while (v17);
LABEL_22:

        return v10;
      }

      return 0;
    }

LABEL_15:
    v10 = &unk_1007FA1F0;
    sub_10028088C(&qword_100977370, &unk_1007FA1F0);
    sub_100011630(&qword_100977378, &qword_100977370, &unk_1007FA1F0);
    swift_allocError();
    swift_willThrow();
    return v10;
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}