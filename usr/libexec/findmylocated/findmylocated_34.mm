uint64_t sub_100374034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  v5 = type metadata accessor for ClientID();
  v4[5] = v5;
  v6 = *(v5 - 8);
  v4[6] = v6;
  v7 = *(v6 + 64) + 15;
  v4[7] = swift_task_alloc();
  v4[8] = swift_task_alloc();

  return _swift_task_switch(sub_100374104, 0, 0);
}

uint64_t sub_100374104()
{
  v23 = v0;
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[2];
  v5 = type metadata accessor for Logger();
  v0[9] = sub_10000A6F0(v5, qword_1005E0B28);
  v6 = *(v3 + 16);
  v0[10] = v6;
  v0[11] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[8];
  v11 = v0[5];
  v12 = v0[6];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = v21;
    *v13 = 136446210;
    sub_10001AEBC(&qword_1005B1F10, 255, &type metadata accessor for ClientID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v17 = *(v12 + 8);
    v17(v10, v11);
    v18 = sub_10000D01C(v14, v16, &v22);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "Sending location update to client %{public}s", v13, 0xCu);
    sub_100004984(v21);
  }

  else
  {

    v17 = *(v12 + 8);
    v17(v10, v11);
  }

  v0[12] = v17;
  v19 = v0[3];

  return _swift_task_switch(sub_100374358, v19, 0);
}

uint64_t sub_100374358()
{
  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  *(v1 + 16) = *(v0 + 24);
  v2 = async function pointer to withOnceCheckedThrowingContinuation<A>(function:_:)[1];
  v3 = swift_task_alloc();
  *(v0 + 112) = v3;
  *v3 = v0;
  v3[1] = sub_10037443C;

  return withOnceCheckedThrowingContinuation<A>(function:_:)(v3, 0xD000000000000017, 0x80000001004E7EC0, sub_10037F548, v1, &type metadata for () + 8);
}

uint64_t sub_10037443C()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v9 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = *(v2 + 24);
    v5 = sub_10037F50C;
  }

  else
  {
    v6 = *(v2 + 104);
    v7 = *(v2 + 24);

    v5 = sub_100374564;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100374580()
{
  v22 = v0;
  v1 = *(v0 + 88);
  v2 = *(v0 + 72);
  (*(v0 + 80))(*(v0 + 56), *(v0 + 16), *(v0 + 40));
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 96);
  v8 = *(v0 + 48);
  v7 = *(v0 + 56);
  v9 = *(v0 + 40);
  if (v5)
  {
    v20 = *(v0 + 96);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v11;
    *v10 = 136446210;
    sub_10001AEBC(&qword_1005B1F10, 255, &type metadata accessor for ClientID);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    v20(v7, v9);
    v15 = sub_10000D01C(v12, v14, &v21);

    *(v10 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v3, v4, "Successfully sent location update to client %{public}s", v10, 0xCu);
    sub_100004984(v11);
  }

  else
  {

    v6(v7, v9);
  }

  v17 = *(v0 + 56);
  v16 = *(v0 + 64);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_10037477C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = sub_10000368C;

  return sub_10035CB88(a5, a6);
}

uint64_t sub_100374828(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v7 = sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v22 - v9;
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_10000A6F0(v11, qword_1005E0B28);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23 = v15;
    *v14 = 136446466;
    *(v14 + 4) = sub_10000D01C(0xD000000000000022, 0x80000001004E7F60, &v23);
    *(v14 + 12) = 2048;
    *(v14 + 14) = *(a1 + 16);

    _os_log_impl(&_mh_execute_header, v12, v13, "%{public}s count:%ld", v14, 0x16u);
    sub_100004984(v15);
  }

  else
  {
  }

  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v10, 1, 1, v16);
  v17 = sub_10001AEBC(&qword_1005B23E0, 255, type metadata accessor for LocationService);
  v18 = swift_allocObject();
  v18[2] = v2;
  v18[3] = v17;
  v18[4] = v2;
  v18[5] = a1;
  swift_retain_n();

  sub_1001D7F30(0, 0, v10, &unk_1004D67F8, v18);

  v19 = *(v2 + OBJC_IVAR____TtC13findmylocated15LocationService_locationUpdateQueue);
  type metadata accessor for WorkItemQueue.WorkItem();
  v20 = swift_allocObject();
  v20[2] = v2;
  v20[3] = a1;
  v20[4] = v4;

  UUID.init()();
  WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
  dispatch thunk of WorkItemQueue.enqueue(_:)();
}

uint64_t sub_100374BE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v7 = type metadata accessor for AppNotificationEvent.EventType();
  v5[4] = v7;
  v8 = *(v7 - 8);
  v5[5] = v8;
  v9 = *(v8 + 64) + 15;
  v5[6] = swift_task_alloc();

  return _swift_task_switch(sub_100374CA4, a4, 0);
}

uint64_t sub_100374CA4()
{
  (*(v0[5] + 104))(v0[6], enum case for AppNotificationEvent.EventType.deleted(_:), v0[4]);
  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_100374D60;
  v2 = v0[6];
  v4 = v0[2];
  v3 = v0[3];

  return sub_100377160(v3, v2);
}

uint64_t sub_100374D60()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 32);
  v7 = *v0;

  (*(v3 + 8))(v2, v4);

  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_100374EB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_100374EDC, 0, 0);
}

uint64_t sub_100374EDC()
{
  v1 = *(v0 + 16);
  v2 = swift_allocObject();
  *(v0 + 40) = v2;
  *(v2 + 16) = v1;
  *(v2 + 24) = *(v0 + 24);
  v3 = async function pointer to withTimeout<A>(_:block:)[1];

  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = sub_1002B4918;

  return withTimeout<A>(_:block:)(v4, 0x40AAD21B3B700000, 3, &unk_1004D6820, v2, &type metadata for () + 8);
}

uint64_t sub_100374FF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[3] = a2;
  v5 = type metadata accessor for Handle();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = swift_task_alloc();
  v4[9] = v8;
  *v8 = v4;
  v8[1] = sub_1003750E4;

  return sub_100345BC0();
}

uint64_t sub_1003750E4(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 72);
  v11 = *v1;
  v3[10] = a1;

  v3[2] = a1;
  v3 += 2;
  v5 = async function pointer to Sequence.asyncMap<A>(_:)[1];
  v6 = swift_task_alloc();
  v3[9] = v6;
  v7 = sub_10004B564(&qword_1005B2428, &qword_1004D6830);
  v8 = type metadata accessor for UUID();
  v3[10] = v8;
  v9 = sub_10001DF0C(&qword_1005B2430, &qword_1005B2428, &qword_1004D6830);
  *v6 = v11;
  v6[1] = sub_1003752AC;

  return Sequence.asyncMap<A>(_:)(&unk_1004D6828, 0, v7, v8, v9);
}

uint64_t sub_1003752AC(uint64_t a1)
{
  v3 = *(*v2 + 88);
  v5 = *v2;
  *(*v2 + 104) = a1;

  if (v1)
  {
  }

  else
  {

    return _swift_task_switch(sub_1003753D4, 0, 0);
  }
}

uint64_t sub_1003753D4()
{
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 104);
  v2 = *(v0 + 80);
  v3 = *(v0 + 32);
  v4 = type metadata accessor for Logger();
  sub_10000A6F0(v4, qword_1005E0B28);
  swift_bridgeObjectRetain_n();

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 80);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v59 = v9;
    *v8 = 134218498;
    if (v7 >> 62)
    {
      if (*(v0 + 80) < 0)
      {
        v51 = *(v0 + 80);
      }

      v10 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v10 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v12 = *(v0 + 96);
    v11 = *(v0 + 104);
    v13 = *(v0 + 80);
    v14 = *(v0 + 32);
    *(v8 + 4) = v10;

    *(v8 + 12) = 2082;
    v15 = Array.description.getter();
    v17 = v16;

    v18 = sub_10000D01C(v15, v17, &v59);

    *(v8 + 14) = v18;
    *(v8 + 22) = 2048;
    v19 = *(v14 + 16);

    *(v8 + 24) = v19;

    _os_log_impl(&_mh_execute_header, v5, v6, "Send unavailable handles to clients[%ld]: %{public}s handles count:%ld", v8, 0x20u);
    sub_100004984(v9);
  }

  else
  {
    v20 = *(v0 + 104);
    v21 = *(v0 + 80);
    v22 = *(v0 + 32);
    swift_bridgeObjectRelease_n();
  }

  v23 = *(v0 + 32);
  v24 = *(v23 + 16);
  if (v24)
  {
    v25 = *(v0 + 56);
    v28 = *(v25 + 16);
    v26 = v25 + 16;
    v27 = v28;
    v57 = (v26 - 8);
    v29 = v23 + ((*(v26 + 64) + 32) & ~*(v26 + 64));
    v30 = *(v26 + 56);
    v54 = v28;
    v55 = v0;
    v53 = v30;
    v28(*(v0 + 64), v29, *(v0 + 48));
    while (1)
    {
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.default.getter();
      v39 = os_log_type_enabled(v37, v38);
      v40 = *(v0 + 64);
      v41 = *(v0 + 48);
      if (v39)
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v59 = v32;
        *v31 = 141558275;
        *(v31 + 4) = 1752392040;
        *(v31 + 12) = 2081;
        v56 = Handle.identifier.getter();
        v33 = v26;
        v35 = v34;
        (*v57)(v40, v41);
        v36 = sub_10000D01C(v56, v35, &v59);
        v26 = v33;
        v0 = v55;

        *(v31 + 14) = v36;
        _os_log_impl(&_mh_execute_header, v37, v38, "LocationService: send unavailable location update for handle: %{private,mask.hash}s", v31, 0x16u);
        sub_100004984(v32);
        v27 = v54;

        v30 = v53;
      }

      else
      {

        (*v57)(v40, v41);
      }

      v29 += v30;
      if (!--v24)
      {
        break;
      }

      v27(*(v0 + 64), v29, *(v0 + 48));
    }

    v42 = *(v0 + 80);
    v43 = *(v0 + 40);
    v44 = swift_task_alloc();
    *(v0 + 112) = v44;
    v45 = *(v0 + 24);
    *(v44 + 16) = v42;
    *(v44 + 24) = vextq_s8(v45, v45, 8uLL);
    *(v44 + 40) = v43;
    v46 = async function pointer to withThrowingTaskGroup<A, B>(of:returning:isolation:body:)[1];
    v47 = swift_task_alloc();
    *(v0 + 120) = v47;
    *v47 = v0;
    v47[1] = sub_1003758DC;

    return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)();
  }

  else
  {
    v48 = *(v0 + 80);

    v49 = *(v0 + 64);

    v50 = *(v0 + 8);

    return v50();
  }
}

uint64_t sub_1003758DC()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v6 = *(v2 + 112);
    v7 = *(v2 + 80);

    return _swift_task_switch(sub_1001EDDC4, 0, 0);
  }
}

uint64_t sub_100375A24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[12] = a5;
  v6[13] = a6;
  v6[10] = a3;
  v6[11] = a4;
  v6[9] = a2;
  v7 = *(*(sub_10004B564(&qword_1005A9690, &qword_1004C2A00) - 8) + 64) + 15;
  v6[14] = swift_task_alloc();
  v6[15] = swift_task_alloc();

  return _swift_task_switch(sub_100375AD4, 0, 0);
}

uint64_t sub_100375AD4()
{
  v1 = *(v0 + 80);
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v20 = *(v0 + 80);
    }

    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_20:
    v22 = *(v0 + 112);
    v21 = *(v0 + 120);

    v23 = *(v0 + 8);

    return v23();
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_20;
  }

LABEL_3:
  if (result >= 1)
  {
    v3 = 0;
    v26 = **(v0 + 72);
    v27 = result;
    v25 = v1 & 0xC000000000000001;
    v24 = *(v0 + 80) + 32;
    while (1)
    {
      if (v25)
      {
        v6 = *(v0 + 80);
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v7 = *(v24 + 8 * v3);
      }

      v8 = *(v0 + 112);
      v9 = *(v0 + 120);
      v10 = *(v0 + 88);
      v11 = type metadata accessor for TaskPriority();
      v12 = *(v11 - 8);
      v28 = *(v0 + 96);
      (*(v12 + 56))(v9, 1, 1, v11);
      v13 = swift_allocObject();
      *(v13 + 16) = 0;
      v14 = (v13 + 16);
      *(v13 + 24) = 0;
      *(v13 + 32) = v7;
      *(v13 + 40) = v10;
      *(v13 + 48) = v28;
      sub_100005F04(v9, v8, &qword_1005A9690, &qword_1004C2A00);
      LODWORD(v8) = (*(v12 + 48))(v8, 1, v11);

      v15 = *(v0 + 112);
      if (v8 == 1)
      {
        sub_100002CE0(*(v0 + 112), &qword_1005A9690, &qword_1004C2A00);
        if (!*v14)
        {
          goto LABEL_14;
        }
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*(v12 + 8))(v15, v11);
        if (!*v14)
        {
LABEL_14:
          v17 = 0;
          v19 = 0;
          goto LABEL_15;
        }
      }

      v16 = *(v13 + 24);
      swift_getObjectType();
      swift_unknownObjectRetain();
      v17 = dispatch thunk of Actor.unownedExecutor.getter();
      v19 = v18;
      swift_unknownObjectRelease();
LABEL_15:

      if (v19 | v17)
      {
        v4 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v17;
        *(v0 + 40) = v19;
      }

      else
      {
        v4 = 0;
      }

      ++v3;
      v5 = *(v0 + 120);
      *(v0 + 48) = 1;
      *(v0 + 56) = v4;
      *(v0 + 64) = v26;
      swift_task_create();

      sub_100002CE0(v5, &qword_1005A9690, &qword_1004C2A00);
      if (v27 == v3)
      {
        goto LABEL_20;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100375E34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = *(*(sub_10004B564(&qword_1005A9690, &qword_1004C2A00) - 8) + 64) + 15;
  v7[6] = swift_task_alloc();
  v9 = *(*(type metadata accessor for UUID() - 8) + 64) + 15;
  v7[7] = swift_task_alloc();
  v10 = type metadata accessor for ClientID();
  v7[8] = v10;
  v11 = *(v10 - 8);
  v7[9] = v11;
  v7[10] = *(v11 + 64);
  v7[11] = swift_task_alloc();
  v7[12] = swift_task_alloc();
  v7[13] = swift_task_alloc();

  return _swift_task_switch(sub_100375F7C, 0, 0);
}

uint64_t sub_100375F7C()
{
  static Task<>.checkCancellation()();
  v1 = *(v0[2] + 112);
  v2 = *(&async function pointer to dispatch thunk of FM.XPCSession.underlyingConnectionIdentity.getter + 1);
  v6 = (&async function pointer to dispatch thunk of FM.XPCSession.underlyingConnectionIdentity.getter + async function pointer to dispatch thunk of FM.XPCSession.underlyingConnectionIdentity.getter);
  v3 = swift_task_alloc();
  v0[14] = v3;
  *v3 = v0;
  v3[1] = sub_1003760B4;
  v4 = v0[7];

  return v6(v4);
}

uint64_t sub_1003760B4()
{
  v1 = *(*v0 + 112);
  v3 = *v0;

  return _swift_task_switch(sub_1003761B0, 0, 0);
}

uint64_t sub_1003761B0()
{
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  v7 = *(v0 + 16);
  v18 = *(v0 + 24);
  v19 = *(v0 + 40);
  ClientID.init(xpcConnectionID:)();
  v8 = *(v3 + 16);
  *(v0 + 120) = v8;
  *(v0 + 128) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v2, v1, v6);
  v9 = *(v3 + 80);
  *(v0 + 176) = v9;
  v10 = (v9 + 16) & ~v9;
  v11 = (v4 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = swift_allocObject();
  *(v0 + 136) = v13;
  v14 = *(v3 + 32);
  *(v0 + 144) = v14;
  *(v0 + 152) = (v3 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v14(v13 + v10, v2, v6);
  *(v13 + v11) = v7;
  *(v13 + v12) = v18;
  *(v13 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8)) = v19;
  v15 = async function pointer to withTimeout<A>(_:block:)[1];

  v16 = swift_task_alloc();
  *(v0 + 160) = v16;
  *v16 = v0;
  v16[1] = sub_100376378;

  return withTimeout<A>(_:block:)(v16, 0x8AC7230489E80000, 0, &unk_1004D6860, v13, &type metadata for () + 8);
}

uint64_t sub_100376378()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v7 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v4 = sub_10037654C;
  }

  else
  {
    v5 = *(v2 + 136);

    v4 = sub_100376494;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100376494()
{
  v1 = v0[12];
  v2 = v0[11];
  v4 = v0[6];
  v3 = v0[7];
  (*(v0[9] + 8))(v0[13], v0[8]);

  v5 = v0[1];

  return v5();
}

uint64_t sub_10037654C()
{
  v49 = v0;
  v1 = *(v0 + 136);

  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 168);
  v4 = *(v0 + 120);
  v3 = *(v0 + 128);
  v5 = *(v0 + 104);
  v6 = *(v0 + 88);
  v7 = *(v0 + 64);
  v8 = type metadata accessor for Logger();
  sub_10000A6F0(v8, qword_1005E0B28);
  v4(v6, v5, v7);
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v43 = *(v0 + 168);
    v11 = *(v0 + 88);
    v12 = *(v0 + 64);
    v13 = *(v0 + 72);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v48 = v45;
    *v14 = 136446466;
    sub_10001AEBC(&qword_1005B1F10, 255, &type metadata accessor for ClientID);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    v47 = *(v13 + 8);
    v47(v11, v12);
    v19 = sub_10000D01C(v16, v18, &v48);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2114;
    swift_errorRetain();
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 14) = v20;
    *v15 = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "sendToClients unavailableHandles %{public}s error: %{public}@", v14, 0x16u);
    sub_100002CE0(v15, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v45);
  }

  else
  {
    v21 = *(v0 + 88);
    v22 = *(v0 + 64);
    v23 = *(v0 + 72);

    v47 = *(v23 + 8);
    v47(v21, v22);
  }

  v44 = *(v0 + 152);
  v46 = *(v0 + 168);
  v24 = *(v0 + 176);
  v26 = *(v0 + 120);
  v25 = *(v0 + 128);
  v28 = *(v0 + 96);
  v27 = *(v0 + 104);
  v41 = *(v0 + 80);
  v42 = *(v0 + 144);
  v29 = *(v0 + 64);
  v30 = *(v0 + 48);
  v31 = *(v0 + 32);
  v32 = *(v0 + 16);
  v33 = type metadata accessor for TaskPriority();
  (*(*(v33 - 8) + 56))(v30, 1, 1, v33);
  v26(v28, v27, v29);
  v34 = swift_allocObject();
  *(v34 + 2) = 0;
  *(v34 + 3) = 0;
  *(v34 + 4) = v31;
  *(v34 + 5) = v32;
  v42(&v34[(v24 + 48) & ~v24], v28, v29);

  sub_1001D7F30(0, 0, v30, &unk_1004D6870, v34);

  v35 = *(v0 + 96);
  v36 = *(v0 + 88);
  v37 = *(v0 + 56);
  v38 = *(v0 + 48);
  v47(*(v0 + 104), *(v0 + 64));

  v39 = *(v0 + 8);

  return v39();
}

uint64_t sub_10037696C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  v5 = type metadata accessor for ClientID();
  v4[5] = v5;
  v6 = *(v5 - 8);
  v4[6] = v6;
  v7 = *(v6 + 64) + 15;
  v4[7] = swift_task_alloc();
  v4[8] = swift_task_alloc();

  return _swift_task_switch(sub_100376A3C, 0, 0);
}

uint64_t sub_100376A3C()
{
  v23 = v0;
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[2];
  v5 = type metadata accessor for Logger();
  v0[9] = sub_10000A6F0(v5, qword_1005E0B28);
  v6 = *(v3 + 16);
  v0[10] = v6;
  v0[11] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[8];
  v11 = v0[5];
  v12 = v0[6];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = v21;
    *v13 = 136446210;
    sub_10001AEBC(&qword_1005B1F10, 255, &type metadata accessor for ClientID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v17 = *(v12 + 8);
    v17(v10, v11);
    v18 = sub_10000D01C(v14, v16, &v22);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "Sending unavailableHandles to client %{public}s", v13, 0xCu);
    sub_100004984(v21);
  }

  else
  {

    v17 = *(v12 + 8);
    v17(v10, v11);
  }

  v0[12] = v17;
  v19 = v0[3];

  return _swift_task_switch(sub_100376C90, v19, 0);
}

uint64_t sub_100376C90()
{
  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  *(v1 + 16) = *(v0 + 24);
  v2 = async function pointer to withOnceCheckedThrowingContinuation<A>(function:_:)[1];
  v3 = swift_task_alloc();
  *(v0 + 112) = v3;
  *v3 = v0;
  v3[1] = sub_100376D74;

  return withOnceCheckedThrowingContinuation<A>(function:_:)(v3, 0xD00000000000001ALL, 0x80000001004E7EA0, sub_10037F544, v1, &type metadata for () + 8);
}

uint64_t sub_100376D74()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v9 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = *(v2 + 24);
    v5 = sub_1002B7418;
  }

  else
  {
    v6 = *(v2 + 104);
    v7 = *(v2 + 24);

    v5 = sub_100376E9C;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100376EB8()
{
  v22 = v0;
  v1 = *(v0 + 88);
  v2 = *(v0 + 72);
  (*(v0 + 80))(*(v0 + 56), *(v0 + 16), *(v0 + 40));
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 96);
  v8 = *(v0 + 48);
  v7 = *(v0 + 56);
  v9 = *(v0 + 40);
  if (v5)
  {
    v20 = *(v0 + 96);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v11;
    *v10 = 136446210;
    sub_10001AEBC(&qword_1005B1F10, 255, &type metadata accessor for ClientID);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    v20(v7, v9);
    v15 = sub_10000D01C(v12, v14, &v21);

    *(v10 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v3, v4, "Successfully sent unavailableHandles to client %{public}s", v10, 0xCu);
    sub_100004984(v11);
  }

  else
  {

    v6(v7, v9);
  }

  v17 = *(v0 + 56);
  v16 = *(v0 + 64);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1003770B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = sub_100003690;

  return sub_10035CB88(a5, a6);
}

uint64_t sub_100377160(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for AppNotificationEvent();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = type metadata accessor for AppNotificationEvent.EventType();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();
  v10 = type metadata accessor for Handle();
  v3[11] = v10;
  v11 = *(v10 - 8);
  v3[12] = v11;
  v12 = *(v11 + 64) + 15;
  v3[13] = swift_task_alloc();
  v13 = _s20PersonLocationEntityVMa();
  v3[14] = v13;
  v14 = async function pointer to static AppEntity.isObserved()[1];
  v15 = swift_task_alloc();
  v3[15] = v15;
  v16 = sub_10001AEBC(&qword_1005A8E50, 255, _s20PersonLocationEntityVMa);
  v3[16] = v16;
  *v15 = v3;
  v15[1] = sub_100377364;

  return static AppEntity.isObserved()(v13, v16);
}

uint64_t sub_100377364(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 120);
  v6 = *v2;
  *(v4 + 136) = v1;

  v7 = *(v4 + 32);
  if (v1)
  {
    v8 = sub_100377BD4;
  }

  else
  {
    *(v4 + 144) = a1 & 1;
    v8 = sub_1003774A4;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_1003774A4()
{
  v72 = v0;
  if (*(v0 + 144) == 1)
  {
    v1 = *(*(v0 + 16) + 16);
    if (v1)
    {
      v2 = 0;
      v3 = *(v0 + 96);
      v69 = (v3 + 8);
      v70 = (v3 + 16);
      v4 = _swiftEmptyArrayStorage;
      v67 = v3;
      v68 = v0;
      do
      {
        v66 = v4;
        while (1)
        {
          if (v2 >= v1)
          {
            __break(1u);
LABEL_39:
            __break(1u);
            goto LABEL_40;
          }

          v5 = v2 + 1;
          if (__OFADD__(v2, 1))
          {
            goto LABEL_39;
          }

          v6 = *(v0 + 16) + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v2;
          v7 = Handle.serverID.getter();
          if (v8)
          {
            break;
          }

          if (qword_1005A7EA8 != -1)
          {
            swift_once();
          }

          v9 = *(v0 + 104);
          v10 = *(v0 + 88);
          v11 = type metadata accessor for Logger();
          sub_10000A6F0(v11, qword_1005DFAB8);
          (*v70)(v9, v6, v10);
          v12 = Logger.logObject.getter();
          v13 = static os_log_type_t.default.getter();
          v14 = os_log_type_enabled(v12, v13);
          v15 = *(v0 + 104);
          v16 = *(v0 + 88);
          if (v14)
          {
            v17 = swift_slowAlloc();
            v71 = swift_slowAlloc();
            *v17 = 136446723;
            *(v17 + 4) = sub_10000D01C(0xD00000000000003DLL, 0x80000001004E7F20, &v71);
            *(v17 + 12) = 2160;
            *(v17 + 14) = 1752392040;
            *(v17 + 22) = 2085;
            v18 = Handle.identifier.getter();
            v19 = v1;
            v21 = v20;
            (*v69)(v15, v16);
            v22 = v18;
            v5 = v2 + 1;
            v23 = sub_10000D01C(v22, v21, &v71);
            v1 = v19;

            *(v17 + 24) = v23;
            _os_log_impl(&_mh_execute_header, v12, v13, "%{public}s: No serverID for user: %{sensitive,mask.hash}s", v17, 0x20u);
            swift_arrayDestroy();

            v3 = v67;
            v0 = v68;
          }

          else
          {

            (*v69)(v15, v16);
          }

          ++v2;
          if (v5 == v1)
          {
            v4 = v66;
            goto LABEL_26;
          }
        }

        v24 = v8;
        v25 = v7;
        v26 = v5;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v66 = sub_1001FC900(0, *(v66 + 2) + 1, 1, v66);
        }

        v28 = *(v66 + 2);
        v27 = *(v66 + 3);
        if (v28 >= v27 >> 1)
        {
          v4 = sub_1001FC900((v27 > 1), v28 + 1, 1, v66);
          v30 = v24;
          v29 = v25;
        }

        else
        {
          v29 = v25;
          v30 = v24;
          v4 = v66;
        }

        *(v4 + 2) = v28 + 1;
        v31 = &v4[16 * v28];
        *(v31 + 4) = v29;
        *(v31 + 5) = v30;
        v2 = v26;
      }

      while (v26 != v1);
LABEL_26:
      if (!*(v4 + 2))
      {
        goto LABEL_32;
      }
    }

    else
    {
      v4 = _swiftEmptyArrayStorage;
      if (!_swiftEmptyArrayStorage[2])
      {
LABEL_32:

        goto LABEL_35;
      }
    }

    v37 = v4;
    if (qword_1005A7EA8 != -1)
    {
      swift_once();
    }

    v39 = *(v0 + 72);
    v38 = *(v0 + 80);
    v40 = *(v0 + 64);
    v41 = *(v0 + 24);
    v42 = type metadata accessor for Logger();
    sub_10000A6F0(v42, qword_1005DFAB8);
    (*(v39 + 16))(v38, v41, v40);
    swift_bridgeObjectRetain_n();
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.default.getter();
    v45 = os_log_type_enabled(v43, v44);
    v47 = *(v0 + 72);
    v46 = *(v0 + 80);
    v48 = *(v0 + 64);
    if (v45)
    {
      v49 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      *v49 = 136446722;
      *(v49 + 4) = sub_10000D01C(0xD00000000000003DLL, 0x80000001004E7F20, &v71);
      *(v49 + 12) = 2080;
      v50 = AppNotificationEvent.EventType.rawValue.getter();
      v52 = v51;
      (*(v47 + 8))(v46, v48);
      v53 = sub_10000D01C(v50, v52, &v71);

      *(v49 + 14) = v53;
      *(v49 + 22) = 2050;
      v54 = *(v37 + 2);

      *(v49 + 24) = v54;

      _os_log_impl(&_mh_execute_header, v43, v44, "%{public}s: PersonLocationEntity sending %s for %{public}ld clients", v49, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
      swift_bridgeObjectRelease_n();

      (*(v47 + 8))(v46, v48);
    }

    v55 = *(v0 + 128);
    v57 = *(v0 + 48);
    v56 = *(v0 + 56);
    v58 = *(v0 + 40);
    v59 = *(v0 + 24);
    v60 = *(v0 + 112);
    static AppEntity.notificationEvent(for:identifiers:)();

    AppNotificationEvent.send()();
    (*(v57 + 8))(v56, v58);
  }

  else
  {
    if (qword_1005A7EA8 != -1)
    {
LABEL_40:
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_10000A6F0(v32, qword_1005DFAB8);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v71 = v36;
      *v35 = 136446210;
      *(v35 + 4) = sub_10000D01C(0xD00000000000003DLL, 0x80000001004E7F20, &v71);
      _os_log_impl(&_mh_execute_header, v33, v34, "%{public}s: PersonLocationEntity not observed", v35, 0xCu);
      sub_100004984(v36);
    }
  }

LABEL_35:
  v61 = *(v0 + 104);
  v62 = *(v0 + 80);
  v63 = *(v0 + 56);

  v64 = *(v0 + 8);

  return v64();
}

uint64_t sub_100377BD4()
{
  v17 = v0;
  if (qword_1005A7EA8 != -1)
  {
    swift_once();
  }

  v1 = v0[17];
  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005DFAB8);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[17];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v7 = 136446466;
    *(v7 + 4) = sub_10000D01C(0xD00000000000003DLL, 0x80000001004E7F20, &v16);
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    *v8 = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s Error: %{public}@", v7, 0x16u);
    sub_100002CE0(v8, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v9);
  }

  else
  {
  }

  v11 = v0[13];
  v12 = v0[10];
  v13 = v0[7];

  v14 = v0[1];

  return v14();
}

uint64_t sub_100377DF8()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 128);

  sub_100002CE0(v0 + OBJC_IVAR____TtC13findmylocated15LocationService_serviceDescription, &qword_1005B09F8, &qword_1004D23A8);
  v3 = *(v0 + OBJC_IVAR____TtC13findmylocated15LocationService_trampoline);

  v4 = *(v0 + OBJC_IVAR____TtC13findmylocated15LocationService_connectionPool);

  v5 = *(v0 + OBJC_IVAR____TtC13findmylocated15LocationService_xpcSessionManager);

  v6 = *(v0 + OBJC_IVAR____TtC13findmylocated15LocationService_workItemQueue);

  v7 = *(v0 + OBJC_IVAR____TtC13findmylocated15LocationService_locationUpdateQueue);

  v8 = *(v0 + OBJC_IVAR____TtC13findmylocated15LocationService_legacyLocationWorkItemQueue);

  v9 = *(v0 + OBJC_IVAR____TtC13findmylocated15LocationService_backgroundLocationsTimeoutManager);

  v10 = *(v0 + OBJC_IVAR____TtC13findmylocated15LocationService_subscriptions);

  v11 = *(v0 + OBJC_IVAR____TtC13findmylocated15LocationService_activeStewieClientXPCConnectionIDs);

  v12 = *(v0 + OBJC_IVAR____TtC13findmylocated15LocationService_legacyLocationSubscriptions);

  v13 = *(v0 + OBJC_IVAR____TtC13findmylocated15LocationService_legacyLocationTask);

  sub_100002CE0(v0 + OBJC_IVAR____TtC13findmylocated15LocationService_dataManagerStateStream, &qword_1005B0F00, &qword_1004D2F00);
  v14 = *(v0 + OBJC_IVAR____TtC13findmylocated15LocationService_inFlightLatestLocationTasks);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_100377F28()
{
  sub_100377DF8();

  return _swift_defaultActor_deallocate(v0);
}

void sub_100377F5C()
{
  sub_10024D88C();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1002B76C8();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1003780A4(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.initialLaunchProcessing()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for LocationService();
  *v5 = v2;
  v5[1] = sub_10000368C;

  return ActorServiceProtocol.initialLaunchProcessing()(v6, a2);
}

uint64_t sub_100378150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to ActorServiceProtocol.migrate(from:to:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for LocationService();
  *v9 = v4;
  v9[1] = sub_10000368C;

  return ActorServiceProtocol.migrate(from:to:)(a1, a2, v10, a4);
}

uint64_t sub_100378218(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.firstLaunchSinceReboot()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for LocationService();
  *v5 = v2;
  v5[1] = sub_10000368C;

  return ActorServiceProtocol.firstLaunchSinceReboot()(v6, a2);
}

uint64_t sub_1003782C4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000368C;

  return sub_100347334();
}

uint64_t sub_100378350()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100003690;

  return sub_1003486C8();
}

uint64_t sub_1003783DC()
{
  v1 = *v0;
  type metadata accessor for LocationService();
  sub_10001AEBC(&qword_1005A9308, 255, type metadata accessor for LocationService);
  return ActorServiceProtocol.description.getter();
}

uint64_t sub_10037857C(uint64_t a1)
{
  v4 = *(type metadata accessor for SecureLocationsStewie.ServiceState() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10000368C;

  return sub_10034178C(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_100378680(uint64_t a1)
{
  v4 = *(type metadata accessor for SecureLocationsStewie.ServiceState() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000368C;

  return sub_100341D60(a1, v6, v7, v1 + v5);
}

uint64_t sub_100378770(uint64_t a1)
{
  v2 = *(*v1 + 32);
  v3 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 40) = a1;

  return _swift_task_switch(sub_100378888, v3, 0);
}

uint64_t sub_100378888(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[5];
  if (v4 >> 62)
  {
    if (v4 < 0)
    {
      v8 = v3[5];
    }

    v5 = _CocoaArrayWrapper.endIndex.getter();
    v3[6] = v5;
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v3[6] = v5;
    if (v5)
    {
LABEL_3:
      if (v5 < 1)
      {
        __break(1u);
      }

      else
      {
        v6 = v3[5];
        v3[7] = 0;
        if ((v6 & 0xC000000000000001) != 0)
        {
          v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v7 = *(v6 + 32);
        }

        v3[8] = v7;
        v5 = sub_100378994;
        a2 = v7;
        a3 = 0;
      }

      return _swift_task_switch(v5, a2, a3);
    }
  }

  v9 = v3[5];

  v10 = v3[1];

  return v10();
}

uint64_t sub_100378994()
{
  v1 = v0[8];
  v2 = v0[2];
  v3 = swift_task_alloc();
  v0[9] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = async function pointer to withOnceCheckedThrowingContinuation<A>(function:_:)[1];
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_100378A84;

  return withOnceCheckedThrowingContinuation<A>(function:_:)(v5, 0xD00000000000001DLL, 0x80000001004E7E80, sub_10037F54C, v3, &type metadata for () + 8);
}

uint64_t sub_100378A84()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v9 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = *(v2 + 64);
    v5 = sub_100378CA8;
  }

  else
  {
    v7 = *(v2 + 64);
    v6 = *(v2 + 72);

    v5 = sub_100378BA8;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100378BC4()
{
  v1 = v0[8];

  v2 = v0[7] + 1;
  if (v2 == v0[6])
  {
    v3 = v0[5];

    v4 = v0[1];

    return v4();
  }

  else
  {
    v0[7] = v2;
    v6 = v0[5];
    if ((v6 & 0xC000000000000001) != 0)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v7 = *(v6 + 8 * v2 + 32);
    }

    v0[8] = v7;

    return _swift_task_switch(sub_100378994, v7, 0);
  }
}

uint64_t sub_100378CA8()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 24);

  return _swift_task_switch(sub_100378D14, v2, 0);
}

uint64_t sub_100378D14()
{
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v1 = v0[11];
  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005DFB98);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[11];
  v7 = v0[8];
  if (v5)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "Error updating Stewie service state: %@", v8, 0xCu);
    sub_100002CE0(v9, &qword_1005A9670, &unk_1004C2480);
  }

  else
  {
    v11 = v0[8];
  }

  v12 = v0[7] + 1;
  if (v12 == v0[6])
  {
    v13 = v0[5];

    v14 = v0[1];

    return v14();
  }

  else
  {
    v0[7] = v12;
    v16 = v0[5];
    if ((v16 & 0xC000000000000001) != 0)
    {
      v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v17 = *(v16 + 8 * v12 + 32);
    }

    v0[8] = v17;

    return _swift_task_switch(sub_100378994, v17, 0);
  }
}

uint64_t sub_100378F58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23 = a3;
  v24 = a1;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v13 = sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v21 - v15;
  v22 = &v21 - v15;
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  (*(v11 + 16))(&v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a6, v10);
  v18 = (*(v11 + 80) + 64) & ~*(v11 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = 0;
  *(v19 + 3) = 0;
  *(v19 + 4) = a2;
  *(v19 + 5) = v23;
  *(v19 + 6) = a4;
  *(v19 + 7) = a5;
  (*(v11 + 32))(&v19[v18], &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  *&v19[(v12 + v18 + 7) & 0xFFFFFFFFFFFFFFF8] = v24;

  sub_1001D7F30(0, 0, v22, &unk_1004D6A50, v19);
}

uint64_t sub_100379198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a8;
  v8[9] = v10;
  v8[6] = a5;
  v8[7] = a7;
  v8[5] = a4;
  return _swift_task_switch(sub_1003791C8, a4, 0);
}

uint64_t sub_1003791C8()
{
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[5];
  v6 = OBJC_IVAR____TtC13findmylocated15LocationService_inFlightLatestLocationTasks;
  swift_beginAccess();

  v7 = *(v5 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v5 + v6);
  *(v5 + v6) = 0x8000000000000000;
  sub_100454828(v4, v1, v3, v2, isUniquelyReferenced_nonNull_native);
  *(v5 + v6) = v11;
  swift_endAccess();
  v9 = v0[1];

  return v9();
}

uint64_t sub_100379318(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000368C;

  return sub_10034302C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1003793E0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000368C;

  return sub_1003434A8(a1, v4, v5, v6);
}

unint64_t sub_100379494()
{
  result = qword_1005B2408;
  if (!qword_1005B2408)
  {
    sub_10004B610(&qword_1005B2400, &qword_1004D67B8);
    sub_10001AEBC(&qword_1005AE858, 255, &type metadata accessor for Handle);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B2408);
  }

  return result;
}

uint64_t sub_10037958C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000368C;

  return sub_100342308(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100379654()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10037969C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000368C;

  return sub_100342784(a1, v4, v5, v6);
}

unint64_t sub_100379750()
{
  result = qword_1005B2410;
  if (!qword_1005B2410)
  {
    sub_10004B610(&qword_1005B04E8, &qword_1004D67E0);
    sub_10001AEBC(&qword_1005AE858, 255, &type metadata accessor for Handle);
    sub_10001AEBC(&qword_1005B2418, 255, &type metadata accessor for Location);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B2410);
  }

  return result;
}

void *sub_10037984C(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *), uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      v8 = a5;
      v9 = a4;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
      a4 = v9;
      a5 = v8;
    }

    v10 = sub_100338CD8(result, a2, a3, a4, a5);

    return v10;
  }

  return result;
}

unint64_t *sub_1003798DC(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
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

    v8 = sub_10037E020(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

uint64_t sub_100379978(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000368C;

  return sub_100374BE0(a1, v4, v5, v7, v6);
}

uint64_t sub_100379A38()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100003690;

  return sub_100374EB8(v2, v3, v4);
}

uint64_t sub_100379AE0(uint64_t a1, char a2)
{
  *(v2 + 24) = a2;
  *(v2 + 16) = a1;
  return _swift_task_switch(sub_100379B04, 0, 0);
}

uint64_t sub_100379B04()
{
  v15 = v0;
  if (*(v0 + 24))
  {
    v1 = *(v0 + 16);
    swift_errorRetain();
    if (qword_1005A84C8 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 16);
    v3 = type metadata accessor for Logger();
    sub_10000A6F0(v3, qword_1005E0B28);
    swift_errorRetain();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    sub_1002BC5B4(v2, 1);
    v6 = os_log_type_enabled(v4, v5);
    v7 = *(v0 + 16);
    if (v6)
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v14 = v10;
      *v8 = 136446466;
      *(v8 + 4) = sub_10000D01C(0xD000000000000023, 0x80000001004E7F90, &v14);
      *(v8 + 12) = 2114;
      swift_errorRetain();
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 14) = v11;
      *v9 = v11;
      _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s error: %{public}@", v8, 0x16u);
      sub_100002CE0(v9, &qword_1005A9670, &unk_1004C2480);

      sub_100004984(v10);

      sub_1002BC5B4(v7, 1);
    }

    else
    {

      sub_1002BC5B4(v7, 1);
    }
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_100379D28(uint64_t a1, char a2)
{
  *(v2 + 24) = a2;
  *(v2 + 16) = a1;
  return _swift_task_switch(sub_100379D4C, 0, 0);
}

uint64_t sub_100379D4C()
{
  v15 = v0;
  if (*(v0 + 24))
  {
    v1 = *(v0 + 16);
    swift_errorRetain();
    if (qword_1005A84C8 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 16);
    v3 = type metadata accessor for Logger();
    sub_10000A6F0(v3, qword_1005E0B28);
    swift_errorRetain();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    sub_1002BC5B4(v2, 1);
    v6 = os_log_type_enabled(v4, v5);
    v7 = *(v0 + 16);
    if (v6)
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v14 = v10;
      *v8 = 136446466;
      *(v8 + 4) = sub_10000D01C(0xD000000000000022, 0x80000001004E7F60, &v14);
      *(v8 + 12) = 2114;
      swift_errorRetain();
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 14) = v11;
      *v9 = v11;
      _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s error: %{public}@", v8, 0x16u);
      sub_100002CE0(v9, &qword_1005A9670, &unk_1004C2480);

      sub_100004984(v10);

      sub_1002BC5B4(v7, 1);
    }

    else
    {

      sub_1002BC5B4(v7, 1);
    }
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_100379F70(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000368C;

  return sub_100374FF0(a1, v4, v5, v6);
}

uint64_t sub_10037A024(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_10000368C;

  return sub_100375A24(a1, a2, v6, v7, v9, v8);
}

uint64_t sub_10037A0EC(uint64_t a1)
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
  v10[1] = sub_10000368C;

  return sub_100375E34(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_10037A1C0(uint64_t a1)
{
  v4 = *(type metadata accessor for ClientID() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + v6);
  v9 = *(v1 + v7);
  v10 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10000368C;

  return sub_10037696C(a1, v1 + v5, v8, v9);
}

uint64_t sub_10037A2F4(uint64_t a1)
{
  v4 = *(type metadata accessor for ClientID() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10000368C;

  return sub_1003770B4(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_10037A3F8()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10037A440(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000368C;

  return sub_100371C78(a1, v4, v5, v7, v6);
}

uint64_t sub_10037A500()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10000368C;

  return sub_10037203C(v2, v3, v4);
}

uint64_t sub_10037A5A8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000368C;

  return sub_100372290(a1, v4, v5, v6);
}

uint64_t sub_10037A65C(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_10000368C;

  return sub_1003731A4(a1, a2, v6, v7, v9, v8);
}

uint64_t sub_10037A724(void (*a1)(void), void (*a2)(void), uint64_t a3)
{
  v7 = v3[2];
  swift_unknownObjectRelease();
  v8 = v3[4];

  a1(v3[5]);
  a2(v3[6]);

  return _swift_deallocObject(v3, a3, 7);
}

uint64_t sub_10037A798(uint64_t a1)
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
  v10[1] = sub_10000368C;

  return sub_1003735B4(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_10037A86C()
{
  v1 = type metadata accessor for ClientID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  v8 = *(v0 + v6);

  return _swift_deallocObject(v0, ((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_10037A928(uint64_t a1)
{
  v4 = *(type metadata accessor for ClientID() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + v6);
  v9 = *(v1 + v7);
  v10 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10000368C;

  return sub_100374034(a1, v1 + v5, v8, v9);
}

uint64_t sub_10037AA5C(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 48) & ~v4;
  v6 = *(v3 + 64);
  v7 = *(v1 + 2);
  swift_unknownObjectRelease();
  v8 = *(v1 + 4);

  v9 = *(v1 + 5);

  (*(v3 + 8))(&v1[v5], v2);

  return _swift_deallocObject(v1, v5 + v6, v4 | 7);
}

uint64_t sub_10037AB38(uint64_t a1)
{
  v4 = *(type metadata accessor for ClientID() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10000368C;

  return sub_10037477C(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_10037AC3C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, void **a5, uint64_t a6)
{
  v88 = a5;
  v86 = a6;
  v87 = a4;
  Priority = type metadata accessor for LocatePriority();
  v82 = *(Priority - 8);
  v83 = Priority;
  v10 = *(v82 + 64);
  __chkstk_darwin(Priority);
  v81 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10004B564(&qword_1005B0690, &qword_1004D2018);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v74 - v14;
  v16 = type metadata accessor for Handle();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v85 = &v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v84 = &v74 - v22;
  v23 = __chkstk_darwin(v21);
  v25 = &v74 - v24;
  __chkstk_darwin(v23);
  v27 = &v74 - v26;
  swift_beginAccess();
  v28 = *a2;
  if (*(*a2 + 16) && (v29 = sub_1001FD93C(a1), (v30 & 1) != 0))
  {
    v80 = a1;
    v92 = *(*(v28 + 56) + 8 * v29);
    swift_endAccess();

    sub_1001AD0DC(a3, v15);
    sub_100002CE0(v15, &qword_1005B0690, &qword_1004D2018);
    v31 = v92;
    if (*(v92 + 16))
    {
      swift_beginAccess();
      v32 = *a2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v90 = *a2;
      *a2 = 0x8000000000000000;
      sub_100454A28(v31, v80, isUniquelyReferenced_nonNull_native);
      *a2 = v90;
    }

    else
    {

      if (qword_1005A84C8 != -1)
      {
        swift_once();
      }

      v40 = type metadata accessor for Logger();
      sub_10000A6F0(v40, qword_1005E0B28);
      v42 = v81;
      v41 = v82;
      v43 = v83;
      (*(v82 + 16))(v81, v87, v83);
      v44 = v80;
      v78 = *(v17 + 16);
      v79 = v17 + 16;
      v78(v25, v80, v16);
      v45 = Logger.logObject.getter();
      v77 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v45, v77))
      {
        v46 = swift_slowAlloc();
        v75 = v16;
        v47 = v41;
        v48 = v46;
        v76 = swift_slowAlloc();
        v91[0] = v76;
        *v48 = 136446979;
        *(v48 + 4) = sub_10000D01C(0xD00000000000002ELL, 0x80000001004E8110, v91);
        *(v48 + 12) = 2082;
        sub_10001AEBC(&qword_1005B2460, 255, &type metadata accessor for LocatePriority);
        v74 = v45;
        v49 = dispatch thunk of CustomStringConvertible.description.getter();
        v51 = v50;
        (*(v47 + 8))(v42, v43);
        v52 = sub_10000D01C(v49, v51, v91);
        v44 = v80;

        *(v48 + 14) = v52;
        *(v48 + 22) = 2160;
        *(v48 + 24) = 1752392040;
        *(v48 + 32) = 2081;
        v53 = Handle.identifier.getter();
        v55 = v54;
        v56 = v25;
        v57 = v75;
        (*(v17 + 8))(v56, v75);
        v58 = sub_10000D01C(v53, v55, v91);

        *(v48 + 34) = v58;
        v59 = v74;
        _os_log_impl(&_mh_execute_header, v74, v77, "%{public}s no more active session for %{public}s handle: %{private,mask.hash}s. Need to unsubscribe.", v48, 0x2Au);
        swift_arrayDestroy();
      }

      else
      {

        (*(v17 + 8))(v25, v16);
        (*(v41 + 8))(v42, v43);
        v57 = v16;
      }

      v60 = v84;
      v78(v84, v44, v57);
      v61 = v88;
      v62 = *v88;
      v63 = swift_isUniquelyReferenced_nonNull_native();
      *v61 = v62;
      if ((v63 & 1) == 0)
      {
        v62 = sub_1001FCA0C(0, v62[2] + 1, 1, v62);
        *v61 = v62;
      }

      v65 = v62[2];
      v64 = v62[3];
      if (v65 >= v64 >> 1)
      {
        v62 = sub_1001FCA0C(v64 > 1, v65 + 1, 1, v62);
        *v61 = v62;
      }

      v62[2] = v65 + 1;
      (*(v17 + 32))(v62 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v65, v60, v57);
      v66 = v85;
      v78(v85, v44, v57);
      swift_beginAccess();
      sub_1001466E8(0, v66);
    }

    swift_endAccess();
    swift_beginAccess();
    v67 = *a2;
    v68 = a2[1];
    v69 = a2[2];
    v70 = OBJC_IVAR____TtC13findmylocated15LocationService_subscriptions;
    v71 = v86;
    swift_beginAccess();

    v72 = *(v71 + v70);

    v73 = swift_isUniquelyReferenced_nonNull_native();
    v89 = *(v71 + v70);
    *(v71 + v70) = 0x8000000000000000;
    sub_100454430(v67, v68, v69, v87, v73);
    *(v71 + v70) = v89;
    return swift_endAccess();
  }

  else
  {
    swift_endAccess();
    (*(v17 + 16))(v27, a1, v16);
    v34 = v88;
    v35 = *v88;
    v36 = swift_isUniquelyReferenced_nonNull_native();
    *v34 = v35;
    if ((v36 & 1) == 0)
    {
      v35 = sub_1001FCA0C(0, v35[2] + 1, 1, v35);
      *v34 = v35;
    }

    v38 = v35[2];
    v37 = v35[3];
    if (v38 >= v37 >> 1)
    {
      v35 = sub_1001FCA0C(v37 > 1, v38 + 1, 1, v35);
      *v34 = v35;
    }

    v35[2] = v38 + 1;
    return (*(v17 + 32))(v35 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v38, v27, v16);
  }
}

void sub_10037B458(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Handle();
  v53 = *(v4 - 8);
  v54 = v4;
  v5 = *(v53 + 64);
  v6 = __chkstk_darwin(v4);
  v52 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v51 = &v47 - v8;
  v57 = type metadata accessor for Friend();
  v9 = *(v57 - 8);
  v10 = v9[8];
  v11 = __chkstk_darwin(v57);
  v56 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v55 = &v47 - v13;
  Priority = type metadata accessor for LocatePriority();
  v15 = *(Priority - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(Priority);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_10000A6F0(v19, qword_1005E0B28);
  (*(v15 + 16))(v18, a2, Priority);
  v20 = v9[2];
  v21 = v57;
  v20(v55, a1, v57);
  v20(v56, a1, v21);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v49 = v22;
    v25 = v24;
    v50 = swift_slowAlloc();
    v58 = v50;
    *v25 = 136447235;
    sub_10001AEBC(&qword_1005B2460, 255, &type metadata accessor for LocatePriority);
    v48 = v23;
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v27;
    (*(v15 + 8))(v18, Priority);
    v29 = sub_10000D01C(v26, v28, &v58);

    *(v25 + 4) = v29;
    *(v25 + 12) = 2160;
    *(v25 + 14) = 1752392040;
    *(v25 + 22) = 2081;
    v30 = v51;
    v31 = v55;
    Friend.handle.getter();
    v32 = Handle.identifier.getter();
    v34 = v33;
    v35 = v54;
    v47 = *(v53 + 8);
    v47(v30, v54);
    v53 = v9[1];
    v36 = v57;
    (v53)(v31, v57);
    v37 = sub_10000D01C(v32, v34, &v58);

    *(v25 + 24) = v37;
    *(v25 + 32) = 2160;
    *(v25 + 34) = 1752392040;
    *(v25 + 42) = 2081;
    v38 = v52;
    v39 = v56;
    Friend.handle.getter();
    v40 = Handle.serverID.getter();
    v42 = v41;
    v47(v38, v35);
    if (!v42)
    {
      v40 = 7104878;
      v42 = 0xE300000000000000;
    }

    (v53)(v39, v36);
    v43 = sub_10000D01C(v40, v42, &v58);

    *(v25 + 44) = v43;
    v44 = v49;
    _os_log_impl(&_mh_execute_header, v49, v48, "Unsubscribing %{public}s friend: %{private,mask.hash}s serverID: %{private,mask.hash}s", v25, 0x34u);
    swift_arrayDestroy();
  }

  else
  {

    v45 = v9[1];
    v46 = v57;
    v45(v56, v57);
    v45(v55, v46);
    (*(v15 + 8))(v18, Priority);
  }
}

uint64_t sub_10037B9E8(uint64_t a1)
{
  if ((a1 - 1) >= 0xE)
  {
    return 14;
  }

  else
  {
    return a1 - 1;
  }
}

uint64_t sub_10037B9FC()
{
  sub_1004BA244();
  if (v1)
  {
    return 10;
  }

  v2 = v0;
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000A6F0(v3, qword_1005E0B28);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = v2;
    _os_log_impl(&_mh_execute_header, v4, v5, "Using maxNumberOfResubscriptionsAllowed from defaults: %ld", v6, 0xCu);
  }

  return v2;
}

uint64_t sub_10037BB10(uint64_t a1)
{
  if ((a1 - 1) >= 0x13)
  {
    return 19;
  }

  else
  {
    return a1 - 1;
  }
}

void sub_10037BB24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v144 = a3;
  v117 = a1;
  v4 = sub_10004B564(&qword_1005AC640, &qword_1004C6EE0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v115 = v114 - v6;
  v122 = type metadata accessor for Handle();
  v141 = *(v122 - 8);
  v7 = *(v141 + 64);
  __chkstk_darwin(v122);
  v124 = v114 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v145 = v114 - v11;
  v12 = type metadata accessor for Date();
  v139 = *(v12 - 8);
  v13 = v139[8];
  v14 = __chkstk_darwin(v12);
  v135 = v114 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v140 = v114 - v17;
  __chkstk_darwin(v16);
  v19 = v114 - v18;
  v150 = type metadata accessor for Friend();
  v20 = *(v150 - 8);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v150);
  v118 = v114 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v143 = v114 - v25;
  __chkstk_darwin(v24);
  v149 = v114 - v26;
  v27 = type metadata accessor for SecureLocation();
  v28 = *(*(v27 - 8) + 64);
  v29 = __chkstk_darwin(v27 - 8);
  v31 = (v114 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v29);
  v33 = (v114 - v32);
  v146 = type metadata accessor for Location();
  v34 = *(v146 - 8);
  v35 = *(v34 + 64);
  v36 = __chkstk_darwin(v146);
  v116 = v114 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __chkstk_darwin(v36);
  v134 = v114 - v39;
  __chkstk_darwin(v38);
  v41 = v114 - v40;
  v42 = a2;
  v152 = a2;
  v43 = v144;

  v44 = v148;
  v45 = sub_100026ABC(sub_10037CB94, v151, v43);
  v133 = *(v45 + 16);
  if (v133)
  {
    v114[1] = v44;
    sub_10037EC58(v42, v33, type metadata accessor for SecureLocation);
    sub_100055ECC(v33, v41);
    v46 = 0;
    v144 = v20 + 16;
    v136 = (v139 + 6);
    v132 = (v139 + 4);
    v148 = (v139 + 1);
    v137 = (v34 + 16);
    v129 = (v139 + 2);
    v139 = (v20 + 8);
    v114[0] = v34;
    v138 = (v34 + 8);
    v120 = "cationsForHandles:)";
    v121 = (v141 + 8);
    *&v47 = 136447747;
    v119 = v47;
    v123 = v41;
    v48 = v45;
    v147 = v12;
    v131 = v20;
    v142 = v19;
    v130 = v45;
    while (1)
    {
      if (v46 >= *(v48 + 2))
      {
        __break(1u);
        goto LABEL_25;
      }

      v50 = &v48[(*(v20 + 80) + 32) & ~*(v20 + 80)];
      v51 = *(v20 + 72);
      v141 = v46;
      v34 = *(v20 + 16);
      (v34)(v149, &v50[v51 * v46], v150);
      v52 = v145;
      Friend.createdAt.getter();
      if ((*v136)(v52, 1, v12) == 1)
      {

        sub_100002CE0(v145, &unk_1005AE5B0, &qword_1004C32F0);
        goto LABEL_18;
      }

      (*v132)(v19, v145, v12);
      v53 = v140;
      Location.date.getter();
      v54 = static Date.< infix(_:_:)();
      v55 = v12;
      v56 = *v148;
      (*v148)(v53, v55);
      if ((v54 & 1) == 0)
      {
        break;
      }

      v57 = v137;
      if (qword_1005A84C8 != -1)
      {
        swift_once();
      }

      v58 = type metadata accessor for Logger();
      sub_10000A6F0(v58, qword_1005E0B28);
      v59 = v134;
      (*v57)(v134, v41, v146);
      (v34)(v143, v149, v150);
      v60 = v135;
      v19 = v142;
      v61 = v147;
      (*v129)(v135, v142, v147);
      v34 = Logger.logObject.getter();
      v62 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v34, v62))
      {
        v63 = swift_slowAlloc();
        v127 = swift_slowAlloc();
        v153 = v127;
        *v63 = v119;
        *(v63 + 4) = sub_10000D01C(0xD000000000000035, v120 | 0x8000000000000000, &v153);
        *(v63 + 12) = 2160;
        *(v63 + 14) = 1752392040;
        *(v63 + 22) = 2081;
        v64 = v140;
        v126 = v62;
        Location.date.getter();
        v65 = Date.localISO8601.getter();
        v66 = v61;
        v68 = v67;
        v56(v64, v66);
        v128 = *v138;
        v128(v59, v146);
        v69 = sub_10000D01C(v65, v68, &v153);

        *(v63 + 24) = v69;
        *(v63 + 32) = 2160;
        *(v63 + 34) = 1752392040;
        *(v63 + 42) = 2081;
        v70 = v124;
        v71 = v143;
        Friend.handle.getter();
        v72 = Handle.identifier.getter();
        v74 = v73;
        (*v121)(v70, v122);
        v125 = *v139;
        v125(v71, v150);
        v75 = sub_10000D01C(v72, v74, &v153);

        *(v63 + 44) = v75;
        *(v63 + 52) = 2160;
        *(v63 + 54) = 1752392040;
        *(v63 + 62) = 2081;
        v76 = Date.localISO8601.getter();
        v78 = v77;
        v79 = v147;
        v56(v60, v147);
        v80 = sub_10000D01C(v76, v78, &v153);

        *(v63 + 64) = v80;
        _os_log_impl(&_mh_execute_header, v34, v126, "%{public}s\ndrop older location with date: %{private,mask.hash}s\nfor handle:%{private,mask.hash}s\nwith creationDate:%{private,mask.hash}s", v63, 0x48u);
        v33 = v127;
        swift_arrayDestroy();

        v41 = v123;

        v56(v142, v79);
        v125(v149, v150);
        v19 = v142;
      }

      else
      {

        v56(v60, v61);
        v34 = v139;
        v33 = *v139;
        v49 = v150;
        (*v139)(v143, v150);
        v128 = *v138;
        v128(v59, v146);
        v56(v19, v61);
        v33(v149, v49);
      }

      v20 = v131;
      v46 = v141 + 1;
      v12 = v147;
      v48 = v130;
      if (v133 == v141 + 1)
      {
        v128(v41, v146);

        return;
      }
    }

    v56(v142, v147);

LABEL_18:
    v89 = v114[0];
    v90 = v124;
    Friend.handle.getter();
    v33 = *(v89 + 16);
    v91 = v115;
    v12 = v123;
    v92 = v146;
    (v33)(v115, v123, v146);
    (*(v89 + 56))(v91, 0, 1, v92);
    sub_100145824(v91, v90);
    v48 = v118;
    if (qword_1005A84C8 == -1)
    {
      goto LABEL_19;
    }

LABEL_25:
    swift_once();
LABEL_19:
    v93 = type metadata accessor for Logger();
    sub_10000A6F0(v93, qword_1005E0B28);
    (v34)(v48, v149, v150);
    v94 = v116;
    (v33)(v116, v12, v146);
    v95 = Logger.logObject.getter();
    v96 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v95, v96))
    {
      v97 = v94;
      v98 = swift_slowAlloc();
      v148 = swift_slowAlloc();
      v153 = v148;
      *v98 = 136447235;
      *(v98 + 4) = sub_10000D01C(0xD000000000000035, v120 | 0x8000000000000000, &v153);
      *(v98 + 12) = 2160;
      *(v98 + 14) = 1752392040;
      v99 = v146;
      *(v98 + 22) = 2081;
      v100 = v124;
      LODWORD(v145) = v96;
      Friend.handle.getter();
      v101 = Handle.identifier.getter();
      v103 = v102;
      (*v121)(v100, v122);
      v147 = *v139;
      v147(v48, v150);
      v104 = sub_10000D01C(v101, v103, &v153);

      *(v98 + 24) = v104;
      *(v98 + 32) = 2160;
      *(v98 + 34) = 1752392040;
      *(v98 + 42) = 2081;
      sub_10001AEBC(&qword_1005B2448, 255, &type metadata accessor for Location);
      v105 = dispatch thunk of CustomStringConvertible.description.getter();
      v107 = v106;
      v108 = *v138;
      (*v138)(v97, v99);
      v109 = sub_10000D01C(v105, v107, &v153);

      *(v98 + 44) = v109;
      _os_log_impl(&_mh_execute_header, v95, v145, "%{public}s mappedLocation:\nhandle: %{private,mask.hash}s\nlocation: %{private,mask.hash}s", v98, 0x34u);
      swift_arrayDestroy();

      v147(v149, v150);
      v108(v123, v99);
    }

    else
    {

      v110 = *v138;
      v111 = v146;
      (*v138)(v94, v146);
      v112 = *v139;
      v113 = v150;
      (*v139)(v48, v150);
      v112(v149, v113);
      v110(v12, v111);
    }
  }

  else
  {

    if (qword_1005A84C8 != -1)
    {
      swift_once();
    }

    v81 = type metadata accessor for Logger();
    sub_10000A6F0(v81, qword_1005E0B28);
    sub_10037EC58(v42, v31, type metadata accessor for SecureLocation);
    v82 = Logger.logObject.getter();
    v83 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      v153 = v85;
      *v84 = 141558275;
      *(v84 + 4) = 1752392040;
      *(v84 + 12) = 2081;
      v86 = *v31;
      v87 = v31[1];

      sub_10037EBF8(v31, type metadata accessor for SecureLocation);
      v88 = sub_10000D01C(v86, v87, &v153);

      *(v84 + 14) = v88;
      _os_log_impl(&_mh_execute_header, v82, v83, "Skipping unknown handle for ID: %{private,mask.hash}s", v84, 0x16u);
      sub_100004984(v85);
    }

    else
    {

      sub_10037EBF8(v31, type metadata accessor for SecureLocation);
    }
  }
}

uint64_t sub_10037CBD4(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for ClientID() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_10000368C;

  return sub_10036D01C(a1, v7, v8, v9, v10, v1 + v6);
}

void sub_10037CD0C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v39 = a4;
  v40 = a1;
  v41 = a3;
  v5 = type metadata accessor for Handle();
  v43 = *(v5 - 8);
  v6 = *(v43 + 64);
  __chkstk_darwin(v5);
  v42 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Priority = type metadata accessor for LocatePriority();
  v9 = *(Priority - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(Priority);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ClientID();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_10000A6F0(v18, qword_1005E0B28);
  (*(v14 + 16))(v17, a2, v13);
  (*(v9 + 16))(v12, v41, Priority);
  (*(v43 + 16))(v42, v40, v5);
  v19 = Logger.logObject.getter();
  LODWORD(v41) = static os_log_type_t.default.getter();
  v20 = (v14 + 8);
  if (os_log_type_enabled(v19, v41))
  {
    v21 = swift_slowAlloc();
    v38 = v5;
    v22 = v21;
    v40 = swift_slowAlloc();
    v44 = v40;
    *v22 = 136315907;
    sub_10001AEBC(&qword_1005B1F10, 255, &type metadata accessor for ClientID);
    v37 = v19;
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v24;
    (*v20)(v17, v13);
    v26 = sub_10000D01C(v23, v25, &v44);

    *(v22 + 4) = v26;
    *(v22 + 12) = 2082;
    sub_10001AEBC(&qword_1005B2460, 255, &type metadata accessor for LocatePriority);
    v27 = dispatch thunk of CustomStringConvertible.description.getter();
    v29 = v28;
    (*(v9 + 8))(v12, Priority);
    v30 = sub_10000D01C(v27, v29, &v44);

    *(v22 + 14) = v30;
    *(v22 + 22) = 2160;
    *(v22 + 24) = 1752392040;
    *(v22 + 32) = 2081;
    v31 = v42;
    v32 = Handle.identifier.getter();
    v34 = v33;
    (*(v43 + 8))(v31, v38);
    v35 = sub_10000D01C(v32, v34, &v44);

    *(v22 + 34) = v35;
    v36 = v37;
    _os_log_impl(&_mh_execute_header, v37, v41, v39, v22, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {

    (*(v43 + 8))(v42, v5);
    (*(v9 + 8))(v12, Priority);
    (*v20)(v17, v13);
  }
}

void sub_10037D208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a3;
  v36 = a2;
  Priority = type metadata accessor for LocatePriority();
  v7 = *(Priority - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(Priority);
  v10 = &v32[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for Handle();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v32[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_10000A6F0(v16, qword_1005E0B28);
  (*(v12 + 16))(v15, a1, v11);
  (*(v7 + 16))(v10, a4, Priority);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v38 = v35;
    *v19 = 141558787;
    *(v19 + 4) = 1752392040;
    *(v19 + 12) = 2081;
    v34 = v17;
    v20 = Handle.identifier.getter();
    v33 = v18;
    v22 = v21;
    (*(v12 + 8))(v15, v11);
    v23 = sub_10000D01C(v20, v22, &v38);

    *(v19 + 14) = v23;
    *(v19 + 22) = 2082;
    v24 = Duration.description.getter();
    v26 = sub_10000D01C(v24, v25, &v38);

    *(v19 + 24) = v26;
    *(v19 + 32) = 2082;
    sub_10001AEBC(&qword_1005B2460, 255, &type metadata accessor for LocatePriority);
    v27 = dispatch thunk of CustomStringConvertible.description.getter();
    v29 = v28;
    (*(v7 + 8))(v10, Priority);
    v30 = sub_10000D01C(v27, v29, &v38);

    *(v19 + 34) = v30;
    v31 = v34;
    _os_log_impl(&_mh_execute_header, v34, v33, "Scheduling resubscription for %{private,mask.hash}s after %{public}s priority: %{public}s", v19, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {

    (*(v7 + 8))(v10, Priority);
    (*(v12 + 8))(v15, v11);
  }
}

uint64_t sub_10037D5EC(uint64_t a1)
{
  v3 = v2;
  v4 = *(type metadata accessor for LocatePriority() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[4];
  v11 = v1[5];
  v12 = (v1 + v6);
  v13 = *v12;
  v14 = v12[1];
  v15 = *(v1 + v7);
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_10000368C;

  return sub_10036A648(a1, v8, v9, v10, v11, v1 + v5, v13, v14);
}

uint64_t sub_10037D748()
{
  v2 = *(type metadata accessor for LocatePriority() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);
  v8 = *(v0 + v4);
  v9 = *(v0 + v5);
  v10 = *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v1 + 16) = v11;
  *v11 = v1;
  v11[1] = sub_10000368C;

  return sub_10036AC10(v6, v7, v0 + v3, v8, v9);
}

uint64_t sub_10037D884(uint64_t a1, char a2)
{
  v6 = *(type metadata accessor for LocatePriority() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v2 + v8);
  v10 = *(v2 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_10000368C;

  return sub_10036BD2C(a1, a2 & 1, v2 + v7, v9);
}

uint64_t sub_10037D9AC(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(v3 + 64);
  v7 = *(v1 + 16);

  v8 = *(v1 + 24);

  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v5 + v6, v4 | 7);
}

uint64_t sub_10037DA80()
{
  v2 = *(type metadata accessor for LocatePriority() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10000368C;

  return sub_10036C9D4(v4, v5, v0 + v3);
}

uint64_t sub_10037DB5C(uint64_t a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  return result;
}

uint64_t sub_10037DB74(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000368C;

  return sub_100345214(a1);
}

uint64_t sub_10037DC3C(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_10000368C;

  return sub_100359074(a1, a2, v6, v7, v9, v8);
}

uint64_t sub_10037DD04(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10000368C;

  return sub_10035A140(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_10037DDEC(uint64_t a1, uint64_t a2)
{
  v4 = *(*(sub_10004B564(&qword_1005B2490, &unk_1004D6A28) - 8) + 80);

  return sub_10037166C(a1, a2);
}

uint64_t sub_10037DE9C(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_10000368C;

  return sub_100355BBC(a1, v7, v8, v9, v10, v1 + v6);
}

uint64_t sub_10037DFD4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10037E020(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a2;
  v50 = a4;
  v39 = a1;
  v49 = sub_10004B564(&qword_1005B2440, &qword_1004D68C0);
  v5 = *(*(v49 - 8) + 64);
  __chkstk_darwin(v49);
  v7 = &v38 - v6;
  v58 = type metadata accessor for Location();
  v8 = *(v58 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v58);
  v57 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Handle();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  result = __chkstk_darwin(v11);
  v56 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = 0;
  v53 = a3;
  v17 = *(a3 + 64);
  v42 = a3 + 64;
  v18 = 1 << *(a3 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v17;
  v40 = 0;
  v41 = (v18 + 63) >> 6;
  v46 = v12 + 16;
  v47 = v7;
  v44 = v8 + 16;
  v45 = v12;
  v48 = v8;
  v51 = (v12 + 8);
  v52 = (v8 + 8);
LABEL_5:
  while (v20)
  {
    v21 = __clz(__rbit64(v20));
    v55 = (v20 - 1) & v20;
LABEL_12:
    v24 = v21 | (v16 << 6);
    v25 = v53;
    v26 = *(v12 + 72);
    v27 = v53[6] + v26 * v24;
    v54 = *(v12 + 16);
    v54(v56, v27, v11);
    v28 = v25[7];
    v29 = *(v48 + 72);
    v43 = v24;
    v30 = *(v48 + 16);
    v31 = v57;
    v32 = v58;
    v30(v57, v28 + v29 * v24, v58);
    v33 = v47;
    (v54)(v47);
    v12 = v45;
    v30((v33 + *(v49 + 48)), v31, v32);
    v34 = v50;
    v35 = *(v50 + 16) + 1;
    do
    {
      if (!--v35)
      {
        sub_100002CE0(v33, &qword_1005B2440, &qword_1004D68C0);
        (*v52)(v57, v58);
        result = (*v51)(v56, v11);
        v20 = v55;
        goto LABEL_5;
      }

      v36 = (*(v12 + 80) + 32) & ~*(v12 + 80);
      sub_10001AEBC(&qword_1005A91B8, 255, &type metadata accessor for Handle);
      v34 += v26;
    }

    while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0);
    sub_100002CE0(v33, &qword_1005B2440, &qword_1004D68C0);
    (*v52)(v57, v58);
    result = (*v51)(v56, v11);
    v20 = v55;
    *(v39 + ((v43 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v43;
    if (__OFADD__(v40++, 1))
    {
      __break(1u);
      return sub_10023E060(v39, v38, v40, v53);
    }
  }

  v22 = v16;
  while (1)
  {
    v16 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v16 >= v41)
    {
      return sub_10023E060(v39, v38, v40, v53);
    }

    v23 = *(v42 + 8 * v16);
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v55 = (v23 - 1) & v23;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10037E49C(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v12 = swift_slowAlloc();

      v10 = sub_1003798DC(v12, v7, a1, a2);

      swift_bridgeObjectRelease_n();
      return v10;
    }
  }

  __chkstk_darwin(v9);
  bzero(&v13 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v8);

  v10 = sub_10037E020((&v13 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0)), v7, a1, a2);

  if (v2)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
  return v10;
}

uint64_t sub_10037E65C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v62 = a5;
  v9 = type metadata accessor for Location();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v54 = v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for Handle();
  v13 = *(v53 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v53);
  v16 = v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10004B564(&qword_1005B2480, &qword_1004D69F0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = v47 - v19;
  v21 = -1 << *(a1 + 32);
  v22 = ~v21;
  v23 = *(a1 + 64);
  v24 = -v21;
  v55 = a1;
  v56 = a1 + 64;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  else
  {
    v25 = -1;
  }

  v57 = v22;
  v58 = 0;
  v59 = v25 & v23;
  v60 = a2;
  v61 = a3;
  v51 = (v10 + 32);
  v52 = (v13 + 32);
  v48 = (v13 + 8);
  v49 = v13;
  v50 = v10;
  v47[3] = v10 + 40;

  v47[1] = a3;

  while (1)
  {
    sub_10039587C(v20);
    v26 = sub_10004B564(&qword_1005B01E0, &qword_1004D1768);
    if ((*(*(v26 - 8) + 48))(v20, 1, v26) == 1)
    {
      sub_10000E3F8();
    }

    v27 = *(v26 + 48);
    v28 = *v52;
    (*v52)(v16, v20, v53);
    v29 = *v51;
    v30 = v9;
    (*v51)(v54, &v20[v27], v9);
    v31 = *v62;
    v33 = sub_1001FD93C(v16);
    v34 = *(v31 + 16);
    v35 = (v32 & 1) == 0;
    v36 = v34 + v35;
    if (__OFADD__(v34, v35))
    {
      break;
    }

    v37 = v32;
    if (*(v31 + 24) >= v36)
    {
      if ((a4 & 1) == 0)
      {
        sub_1002034E4();
      }
    }

    else
    {
      v38 = v62;
      sub_10022D91C(v36, a4 & 1);
      v39 = *v38;
      v40 = sub_1001FD93C(v16);
      if ((v37 & 1) != (v41 & 1))
      {
        goto LABEL_19;
      }

      v33 = v40;
    }

    v42 = *v62;
    if (v37)
    {
      (*v48)(v16, v53);
      v9 = v30;
      (*(v50 + 40))(v42[7] + *(v50 + 72) * v33, v54, v30);
      a4 = 1;
    }

    else
    {
      v42[(v33 >> 6) + 8] |= 1 << v33;
      v28((v42[6] + *(v49 + 72) * v33), v16, v53);
      v9 = v30;
      v29((v42[7] + *(v50 + 72) * v33), v54, v30);
      v43 = v42[2];
      v44 = __OFADD__(v43, 1);
      v45 = v43 + 1;
      if (v44)
      {
        goto LABEL_18;
      }

      v42[2] = v45;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10037EAA8(uint64_t a1)
{
  v3 = v2;
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 64) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = v1[7];
  v12 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100003690;

  return sub_100379198(a1, v6, v7, v8, v9, v10, v11, v1 + v5);
}

uint64_t sub_10037EBF8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10037EC58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10037ECCC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10037ED50()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000368C;

  return sub_100349CC4();
}

uint64_t sub_10037EDEC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000368C;

  return sub_100349D54();
}

uint64_t sub_10037EE88()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10000368C;

  return sub_100349AAC(v2, v3);
}

uint64_t sub_10037EF30(void (*a1)(void), void (*a2)(void), uint64_t a3)
{
  a1(*(v3 + 16));
  a2(*(v3 + 24));

  return _swift_deallocObject(v3, a3, 7);
}

uint64_t sub_10037EF94()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10000368C;

  return sub_100349958(v2, v3);
}

uint64_t sub_10037F02C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10000368C;

  return sub_100347B68(v2);
}

uint64_t sub_10037F0C4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000368C;

  return sub_100347E48(a1, v5);
}

uint64_t sub_10037F16C(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 32));

  return _swift_deallocObject(v2, 40, 7);
}

uint64_t sub_10037F1C4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10000368C;

  return sub_100347DB8();
}

unint64_t sub_10037F2A0()
{
  result = qword_1005B24A8;
  if (!qword_1005B24A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B24A8);
  }

  return result;
}

unint64_t sub_10037F2F4()
{
  result = qword_1005B24B8;
  if (!qword_1005B24B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B24B8);
  }

  return result;
}

uint64_t sub_10037F348(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_10037F3D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10037F49C()
{
  result = qword_1005B24C0;
  if (!qword_1005B24C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B24C0);
  }

  return result;
}

uint64_t sub_10037F550()
{
  v17 = v0;
  v1 = v0[11];

  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v2 = v0[14];
  v3 = type metadata accessor for Logger();
  sub_10000A6F0(v3, qword_1005E0B28);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[14];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v8 = 136446723;
    *(v8 + 4) = sub_10000D01C(0xD00000000000001DLL, 0x80000001004E86C0, &v16);
    *(v8 + 12) = 2160;
    *(v8 + 14) = 1752392040;
    *(v8 + 22) = 2081;
    v0[2] = v7;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v9 = String.init<A>(describing:)();
    v11 = sub_10000D01C(v9, v10, &v16);

    *(v8 + 24) = v11;
    _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s error: %{private,mask.hash}s", v8, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v12 = v0[9];
  v13 = v0[6];

  v14 = v0[1];

  return v14(0);
}

uint64_t sub_10037F790(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = *(*(sub_10004B564(&qword_1005B2438, &qword_1004D68B0) - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v4 = type metadata accessor for ClientOrigin();
  v2[10] = v4;
  v5 = *(v4 - 8);
  v2[11] = v5;
  v6 = *(v5 + 64) + 15;
  v2[12] = swift_task_alloc();
  v7 = *(*(type metadata accessor for RequestOrigin() - 8) + 64) + 15;
  v2[13] = swift_task_alloc();
  v8 = *(*(sub_10004B564(&qword_1005A92D8, &qword_1004C2898) - 8) + 64) + 15;
  v2[14] = swift_task_alloc();
  Priority = type metadata accessor for LocatePriority();
  v2[15] = Priority;
  v10 = *(Priority - 8);
  v2[16] = v10;
  v11 = *(v10 + 64) + 15;
  v2[17] = swift_task_alloc();
  v12 = type metadata accessor for LocationRequest();
  v2[18] = v12;
  v13 = *(v12 - 8);
  v2[19] = v13;
  v14 = *(v13 + 64) + 15;
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v15 = type metadata accessor for Handle();
  v2[22] = v15;
  v16 = *(v15 - 8);
  v2[23] = v16;
  v17 = *(v16 + 64) + 15;
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v18 = type metadata accessor for Location();
  v2[28] = v18;
  v19 = *(v18 - 8);
  v2[29] = v19;
  v20 = *(v19 + 64) + 15;
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v21 = sub_10004B564(&qword_1005B2440, &qword_1004D68C0);
  v2[32] = v21;
  v22 = *(v21 - 8);
  v2[33] = v22;
  v23 = *(v22 + 64) + 15;
  v2[34] = swift_task_alloc();
  v24 = type metadata accessor for Date();
  v2[35] = v24;
  v25 = *(v24 - 8);
  v2[36] = v25;
  v26 = *(v25 + 64) + 15;
  v2[37] = swift_task_alloc();

  return _swift_task_switch(sub_10037FB68, v1, 0);
}

uint64_t sub_10037FB68()
{
  v42 = v0;
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v1 = v0[6];
  v2 = type metadata accessor for Logger();
  v0[38] = sub_10000A6F0(v2, qword_1005E0B28);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[22];
    v6 = v0[6];
    v7 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *v7 = 136446723;
    *(v7 + 4) = sub_10000D01C(0xD000000000000023, 0x80000001004E8690, &v41);
    *(v7 + 12) = 2160;
    *(v7 + 14) = 1752392040;
    *(v7 + 22) = 2081;
    v8 = Array.description.getter();
    v10 = sub_10000D01C(v8, v9, &v41);

    *(v7 + 24) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s handles: %{private,mask.hash}s", v7, 0x20u);
    swift_arrayDestroy();
  }

  v11 = *(v0[6] + 16);
  v0[39] = v11;
  if (v11)
  {
    v13 = v0[36];
    v12 = v0[37];
    v14 = v0[35];
    static Date.trustedNow.getter(v12);
    Date.timeIntervalSince1970.getter();
    v0[40] = v15;
    (*(v13 + 8))(v12, v14);
    v16 = swift_task_alloc();
    v0[41] = v16;
    *v16 = v0;
    v16[1] = sub_10037FF50;
    v17 = v0[6];
    v18 = v0[7];

    return sub_100029620(v17);
  }

  else
  {
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "start retrieve legacy location called with empty handles!", v22, 2u);
    }

    v40 = sub_1002087C4(_swiftEmptyArrayStorage);
    v23 = v0[37];
    v24 = v0[34];
    v26 = v0[30];
    v25 = v0[31];
    v28 = v0[26];
    v27 = v0[27];
    v29 = v0[24];
    v30 = v0[25];
    v32 = v0[20];
    v31 = v0[21];
    v34 = v0[17];
    v35 = v0[14];
    v36 = v0[13];
    v37 = v0[12];
    v38 = v0[9];
    v39 = v0[8];

    v33 = v0[1];

    return v33(v40);
  }
}

uint64_t sub_10037FF50(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 328);
  v6 = *v2;
  *(v4 + 336) = a1;
  *(v4 + 344) = v1;

  v7 = *(v3 + 56);
  if (v1)
  {
    v8 = sub_1003815A4;
  }

  else
  {
    v8 = sub_100380084;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100380084()
{
  v1 = *(v0 + 336);
  v68 = *(v0 + 256);
  v2 = v1 + 64;
  v3 = -1;
  v4 = -1 << *(v1 + 32);
  if (-v4 < 64)
  {
    v3 = ~(-1 << -v4);
  }

  v5 = v3 & *(v1 + 64);
  v6 = (63 - v4) >> 6;
  v66 = *(v0 + 184);
  v67 = *(v0 + 232);
  v69 = *(v0 + 336);

  v7 = 0;
  v64 = v6;
  v65 = v2;
  while (v5)
  {
LABEL_11:
    v9 = *(v0 + 272);
    v10 = *(v0 + 224);
    v82 = *(v0 + 48);
    v11 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v12 = v11 | (v7 << 6);
    v13 = *(v66 + 72);
    (*(v66 + 16))(v9, *(v69 + 48) + v13 * v12, *(v0 + 176));
    v75 = *(v68 + 48);
    v78 = v9;
    v71 = *(v67 + 16);
    v71(v9 + v75, *(v69 + 56) + *(v67 + 72) * v12, v10);
    v14 = v82 + ((*(v66 + 80) + 32) & ~*(v66 + 80));
    v15 = -1;
    do
    {
      if (++v15 == *(v0 + 312))
      {
        v6 = v64;
        v2 = v65;
        goto LABEL_5;
      }

      v16 = *(v0 + 272);
      v17 = *(v0 + 176);
      sub_1000095A8(&qword_1005A91B8, &type metadata accessor for Handle);
      v14 += v13;
    }

    while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0);
    v18 = *(v0 + 320);
    Location.timestamp.getter();
    v6 = v64;
    if (v18 - v19 < 60.0)
    {
      v20 = *(v0 + 272);
      v21 = *(v0 + 248);
      v71(v21, v78 + v75, *(v0 + 224));
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_100452B70(v21, v20, isUniquelyReferenced_nonNull_native);
    }

    v2 = v65;
LABEL_5:
    sub_100002CE0(*(v0 + 272), &qword_1005B2440, &qword_1004D68C0);
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      goto LABEL_38;
    }

    if (v8 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v8);
    ++v7;
    if (v5)
    {
      v7 = v8;
      goto LABEL_11;
    }
  }

  v23 = *(v0 + 336);

  *(v0 + 352) = _swiftEmptyDictionarySingleton;
  *(v0 + 360) = _swiftEmptyDictionarySingleton;
  v24 = *(v0 + 184);
  v25 = *(v24 + 72);
  v79 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v26 = *(v0 + 48) + v79;
  v83 = (v24 + 16);
  v73 = (v24 + 8);
  v27 = (v24 + 32);

  v28 = 0;
  v76 = v25;
  while (1)
  {
    v29 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    (*v83)(*(v0 + 216), v26, *(v0 + 176));
    if (_swiftEmptyDictionarySingleton[2] && (v30 = *(v0 + 216), , sub_1001FD93C(v30), LOBYTE(v30) = v31, , (v30 & 1) != 0))
    {
      (*v73)(*(v0 + 216), *(v0 + 176));
    }

    else
    {
      v32 = *v27;
      (*v27)(*(v0 + 208), *(v0 + 216), *(v0 + 176));
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10000E8E0(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v34 = _swiftEmptyArrayStorage[2];
      v33 = _swiftEmptyArrayStorage[3];
      if (v34 >= v33 >> 1)
      {
        sub_10000E8E0(v33 > 1, v34 + 1, 1);
      }

      v35 = *(v0 + 208);
      v36 = *(v0 + 176);
      _swiftEmptyArrayStorage[2] = v34 + 1;
      v37 = _swiftEmptyArrayStorage + v79 + v34 * v76;
      v25 = v76;
      v32(v37, v35, v36);
    }

    v26 += v25;
    ++v28;
    if (v29 == *(v0 + 312))
    {
      v38 = *(v0 + 48);

      if (_swiftEmptyArrayStorage[2])
      {
        v39 = *(v0 + 112);
        v41 = *(v0 + 96);
        v40 = *(v0 + 104);
        v42 = *(v0 + 88);
        v81 = *(v0 + 80);
        v84 = *(v0 + 168);
        (*(*(v0 + 128) + 104))(*(v0 + 136), enum case for LocatePriority.live(_:), *(v0 + 120));
        v43 = enum case for LegacyRefreshCommandReason.deepLocate(_:);
        refreshed = type metadata accessor for LegacyRefreshCommandReason();
        v45 = *(refreshed - 8);
        (*(v45 + 104))(v39, v43, refreshed);
        (*(v45 + 56))(v39, 0, 1, refreshed);
        (*(v42 + 104))(v41, enum case for ClientOrigin.other(_:), v81);
        RequestOrigin.init(_:)();
        LocationRequest.init(priority:origin:toHandles:reason:startRefreshingLocation:isCached:)();
        v46 = async function pointer to daemon.getter[1];
        v47 = swift_task_alloc();
        *(v0 + 368) = v47;
        *v47 = v0;
        v47[1] = sub_1003807D0;

        return daemon.getter();
      }

      v48 = *(v0 + 304);

      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        *v51 = 134217984;
        *(v51 + 4) = 0x404E000000000000;
        _os_log_impl(&_mh_execute_header, v49, v50, "All cached legacy locations < %fs. Just return cached loactions", v51, 0xCu);
      }

      v52 = *(v0 + 296);
      v53 = *(v0 + 272);
      v55 = *(v0 + 240);
      v54 = *(v0 + 248);
      v57 = *(v0 + 208);
      v56 = *(v0 + 216);
      v58 = *(v0 + 192);
      v59 = *(v0 + 200);
      v60 = *(v0 + 168);
      v70 = *(v0 + 160);
      v72 = *(v0 + 136);
      v74 = *(v0 + 112);
      v77 = *(v0 + 104);
      v80 = *(v0 + 96);
      v61 = *(v0 + 64);
      v85 = *(v0 + 72);

      v62 = *(v0 + 8);

      return v62(_swiftEmptyDictionarySingleton);
    }
  }

LABEL_38:
  __break(1u);
  return daemon.getter();
}

uint64_t sub_1003807D0(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 368);
  v12 = *v1;
  *(v3 + 376) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 384) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for CommandManager();
  v9 = sub_1000095A8(&unk_1005AFA50, &type metadata accessor for Daemon);
  v10 = sub_1000095A8(&qword_1005A90C8, type metadata accessor for CommandManager);
  *v6 = v12;
  v6[1] = sub_1003809AC;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1003809AC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 384);
  v6 = *(*v2 + 376);
  v7 = *v2;
  v4[49] = a1;
  v4[50] = v1;

  if (v1)
  {
    v8 = v4[7];
    v9 = sub_100381BA0;
  }

  else
  {
    v9 = sub_100380B00;
    v8 = a1;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_100380B00()
{
  v1 = v0[49];
  (*(v0[19] + 16))(v0[20], v0[21], v0[18]);
  v2 = OBJC_IVAR____TtC13findmylocated14CommandManager_coalescedCommands;
  swift_beginAccess();
  v3 = *(v1 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + v2) = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = sub_1000295F4(0, v3[2] + 1, 1, v3);
    *(v1 + v2) = v3;
  }

  v6 = v3[2];
  v5 = v3[3];
  if (v6 >= v5 >> 1)
  {
    v3 = sub_1000295F4(v5 > 1, v6 + 1, 1, v3);
  }

  v8 = v0[19];
  v7 = v0[20];
  v9 = v0[18];
  v3[2] = v6 + 1;
  (*(v8 + 32))(v3 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v6, v7, v9);
  *(v1 + v2) = v3;
  swift_endAccess();
  v10 = swift_task_alloc();
  v0[51] = v10;
  *v10 = v0;
  v10[1] = sub_100380C90;
  v11 = v0[49];

  return sub_100034580(1, 0, 0);
}

uint64_t sub_100380C90(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 408);
  v6 = *v2;
  *(v4 + 416) = a1;
  *(v4 + 424) = v1;

  v7 = *(v3 + 56);
  if (v1)
  {
    v8 = sub_100381438;
  }

  else
  {
    v8 = sub_100380DC4;
  }

  return _swift_task_switch(v8, v7, 0);
}

void sub_100380DC4()
{
  v95 = v0;
  v1 = v0[52];
  v2 = v0[38];

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[52];
    v6 = v0[28];
    v7 = v0[22];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v94 = v9;
    *v8 = 141558275;
    *(v8 + 4) = 1752392040;
    *(v8 + 12) = 2081;
    sub_1000095A8(&qword_1005A91B0, &type metadata accessor for Handle);
    v10 = Dictionary.description.getter();
    v12 = sub_10000D01C(v10, v11, &v94);

    *(v8 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v3, v4, "Server returned legacy locations < %{private,mask.hash}s", v8, 0x16u);
    sub_100004984(v9);
  }

  v13 = 0;
  v14 = v0[52];
  v15 = v0[33];
  v89 = v0[32];
  v16 = v0[29];
  v17 = *(v14 + 64);
  v74 = v14 + 64;
  v77 = v16;
  v78 = v14;
  v18 = -1;
  v19 = -1 << *(v14 + 32);
  if (-v19 < 64)
  {
    v18 = ~(-1 << -v19);
  }

  v20 = v18 & v17;
  v21 = (63 - v19) >> 6;
  v83 = (v15 + 56);
  v85 = (v16 + 16);
  v87 = (v16 + 32);
  v80 = (v16 + 8);
  v81 = (v15 + 48);
  v75 = v0[45];
  v76 = v21;
  v79 = v0[44];
LABEL_6:
  v29 = v13;
  if (v20)
  {
    while (1)
    {
      v30 = v29;
LABEL_15:
      v33 = v0[31];
      v34 = v0[28];
      v91 = v0[25];
      v35 = v0[22];
      v36 = v0[23];
      v37 = v0[8];
      v38 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
      v39 = v38 | (v30 << 6);
      v40 = *(v78 + 48) + *(v36 + 72) * v39;
      (*(v36 + 16))();
      (*(v77 + 16))(v33, *(v78 + 56) + *(v77 + 72) * v39, v34);
      v41 = *(v89 + 48);
      (*(v36 + 32))(v37, v91, v35);
      (*(v77 + 32))(v37 + v41, v33, v34);
      v42 = 0;
      v32 = v30;
      v21 = v76;
LABEL_16:
      v43 = v0[32];
      v45 = v0[8];
      v44 = v0[9];
      (*v83)(v45, v42, 1, v43);
      sub_100383444(v45, v44);
      if ((*v81)(v44, 1, v43) == 1)
      {
        break;
      }

      v92 = v32;
      v46 = v0[30];
      v47 = v0[28];
      v48 = v0[23];
      v49 = v0[9];
      v50 = v0[6];
      v51 = *(v89 + 48);
      v52 = *(v48 + 32);
      v48 += 32;
      v52(v0[24], v49, v0[22]);
      (*v87)(v46, v49 + v51, v47);
      v53 = v50 + ((*(v48 + 48) + 32) & ~*(v48 + 48));
      v54 = *(v48 + 40);
      v55 = -1;
      while (++v55 != v0[39])
      {
        v56 = v0[24];
        v57 = v0[22];
        sub_1000095A8(&qword_1005A91B8, &type metadata accessor for Handle);
        v53 += v54;
        if (dispatch thunk of static Equatable.== infix(_:_:)())
        {
          v23 = v0[30];
          v22 = v0[31];
          v24 = v0[28];
          v25 = v0[23];
          v26 = v0[24];
          v27 = v0[22];
          (*v85)(v22, v23, v24);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v94 = v79;
          sub_100452B70(v22, v26, isUniquelyReferenced_nonNull_native);
          (*v80)(v23, v24);
          (*(v25 + 8))(v26, v27);
          v79 = v94;
          v75 = v94;
          v13 = v92;
          goto LABEL_6;
        }
      }

      v58 = v0[23];
      v59 = v0[24];
      v60 = v0[22];
      (*v80)(v0[30], v0[28]);
      (*(v58 + 8))(v59, v60);
      v29 = v92;
      if (!v20)
      {
        goto LABEL_8;
      }
    }

    v61 = v0[52];
    v62 = v0[49];
    (*(v0[19] + 8))(v0[21], v0[18]);

    v63 = v0[37];
    v64 = v0[34];
    v66 = v0[30];
    v65 = v0[31];
    v68 = v0[26];
    v67 = v0[27];
    v69 = v0[24];
    v70 = v0[25];
    v71 = v0[21];
    v82 = v0[20];
    v84 = v0[17];
    v86 = v0[14];
    v88 = v0[13];
    v90 = v0[12];
    v72 = v0[8];
    v93 = v0[9];

    v73 = v0[1];

    v73(v75);
  }

  else
  {
LABEL_8:
    if (v21 <= v29 + 1)
    {
      v31 = v29 + 1;
    }

    else
    {
      v31 = v21;
    }

    v32 = v31 - 1;
    while (1)
    {
      v30 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v30 >= v21)
      {
        v20 = 0;
        v42 = 1;
        goto LABEL_16;
      }

      v20 = *(v74 + 8 * v30);
      ++v29;
      if (v20)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }
}

uint64_t sub_100381438()
{
  v1 = v0[49];

  v20 = v0[53];
  v2 = v0[45];
  v3 = v0[37];
  v4 = v0[34];
  v6 = v0[30];
  v5 = v0[31];
  v8 = v0[26];
  v7 = v0[27];
  v9 = v0[25];
  v13 = v0[24];
  v14 = v0[20];
  v15 = v0[17];
  v16 = v0[14];
  v17 = v0[13];
  v10 = v0[12];
  v18 = v0[9];
  v19 = v0[8];
  (*(v0[19] + 8))(v0[21], v0[18]);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1003815A4()
{
  v67 = v0;
  v1 = v0[43];
  v2 = v0[38];
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[43];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v66 = v7;
    *v6 = 136446210;
    v0[5] = v5;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v8 = String.init<A>(describing:)();
    v10 = sub_10000D01C(v8, v9, &v66);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "Fetch cached server location failed with error: %{public}s", v6, 0xCu);
    sub_100004984(v7);
  }

  else
  {
    v11 = v0[43];
  }

  v0[44] = _swiftEmptyDictionarySingleton;
  v0[45] = _swiftEmptyDictionarySingleton;
  v12 = v0[23];
  v13 = *(v12 + 72);
  v60 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = v0[6] + v60;
  v63 = (v12 + 16);
  v56 = (v12 + 8);
  v15 = (v12 + 32);

  v16 = 0;
  v17 = _swiftEmptyArrayStorage;
  v58 = v13;
  do
  {
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      return daemon.getter();
    }

    (*v63)(v0[27], v14, v0[22]);
    if (_swiftEmptyDictionarySingleton[2] && (v19 = v0[27], , sub_1001FD93C(v19), LOBYTE(v19) = v20, , (v19 & 1) != 0))
    {
      (*v56)(v0[27], v0[22]);
    }

    else
    {
      v21 = *v15;
      (*v15)(v0[26], v0[27], v0[22]);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v66 = v17;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_10000E8E0(0, v17[2] + 1, 1);
        v17 = v66;
      }

      v24 = v17[2];
      v23 = v17[3];
      if (v24 >= v23 >> 1)
      {
        sub_10000E8E0(v23 > 1, v24 + 1, 1);
        v17 = v66;
      }

      v25 = v0[26];
      v26 = v0[22];
      v17[2] = v24 + 1;
      v27 = v17 + v60 + v24 * v58;
      v13 = v58;
      v21(v27, v25, v26);
    }

    v14 += v13;
    ++v16;
  }

  while (v18 != v0[39]);
  v28 = v0[6];

  if (v17[2])
  {
    v29 = v0[14];
    v31 = v0[12];
    v30 = v0[13];
    v32 = v0[11];
    v61 = v0[10];
    v64 = v0[21];
    (*(v0[16] + 104))(v0[17], enum case for LocatePriority.live(_:), v0[15]);
    v33 = enum case for LegacyRefreshCommandReason.deepLocate(_:);
    refreshed = type metadata accessor for LegacyRefreshCommandReason();
    v35 = *(refreshed - 8);
    (*(v35 + 104))(v29, v33, refreshed);
    (*(v35 + 56))(v29, 0, 1, refreshed);
    (*(v32 + 104))(v31, enum case for ClientOrigin.other(_:), v61);
    RequestOrigin.init(_:)();
    LocationRequest.init(priority:origin:toHandles:reason:startRefreshingLocation:isCached:)();
    v36 = async function pointer to daemon.getter[1];
    v37 = swift_task_alloc();
    v0[46] = v37;
    *v37 = v0;
    v37[1] = sub_1003807D0;

    return daemon.getter();
  }

  v38 = v0[38];

  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 134217984;
    *(v41 + 4) = 0x404E000000000000;
    _os_log_impl(&_mh_execute_header, v39, v40, "All cached legacy locations < %fs. Just return cached loactions", v41, 0xCu);
  }

  v42 = v0[37];
  v43 = v0[34];
  v45 = v0[30];
  v44 = v0[31];
  v47 = v0[26];
  v46 = v0[27];
  v49 = v0[24];
  v48 = v0[25];
  v50 = v0[20];
  v51 = v0[21];
  v54 = v0[17];
  v55 = v0[14];
  v57 = v0[13];
  v59 = v0[12];
  v62 = v0[9];
  v65 = v0[8];

  v52 = v0[1];

  return v52(_swiftEmptyDictionarySingleton);
}

uint64_t sub_100381BA0()
{
  v19 = v0[50];
  v1 = v0[45];
  v2 = v0[37];
  v3 = v0[34];
  v5 = v0[30];
  v4 = v0[31];
  v7 = v0[26];
  v6 = v0[27];
  v8 = v0[25];
  v12 = v0[24];
  v13 = v0[20];
  v14 = v0[17];
  v15 = v0[14];
  v16 = v0[13];
  v9 = v0[12];
  v17 = v0[9];
  v18 = v0[8];
  (*(v0[19] + 8))(v0[21], v0[18]);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100381D04(uint64_t a1)
{
  v2 = *(*v1 + 168);
  v3 = *(*v1 + 160);
  v4 = *(*v1 + 152);
  v6 = *v1;
  *(*v1 + 176) = a1;

  return _swift_task_switch(sub_100381E38, v4, 0);
}

uint64_t sub_100381E38()
{
  v1 = v0[19];
  v2 = v0[9];
  v3 = OBJC_IVAR____TtC13findmylocated11DataManager_legacyLocationsForHandles;
  swift_beginAccess();
  v0[23] = *(v1 + v3);

  return _swift_task_switch(sub_100381ED8, v2, 0);
}

uint64_t sub_100381ED8()
{
  v1 = v0[22];
  v2 = v0[23];
  v4 = v0[18];
  v3 = v0[19];
  v5 = v0[17];
  v6 = v0[13];
  v7 = v0[10];

  v8 = sub_1003845C4(v2, v4, v1);

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();

  v9 = v0[1];

  return v9(v8);
}

uint64_t sub_100381FBC()
{
  v1 = v0[15];
  v2 = v0[13];

  v3 = v0[1];
  v4 = v0[17];

  return v3();
}

uint64_t sub_10038202C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 208);
  v6 = *v2;
  *(v4 + 216) = a1;
  *(v4 + 224) = v1;

  v7 = *(v3 + 32);
  if (v1)
  {
    v8 = sub_1003824FC;
  }

  else
  {
    v8 = sub_100382160;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100382160()
{
  v1 = *(v0 + 32);
  v27 = OBJC_IVAR____TtC13findmylocated15LocationService_legacyLocationTask;
  v28 = v1;
  if (*(v1 + OBJC_IVAR____TtC13findmylocated15LocationService_legacyLocationTask))
  {
    v2 = *(v1 + OBJC_IVAR____TtC13findmylocated15LocationService_legacyLocationTask);

    Task.cancel()();

    v1 = *(v0 + 32);
  }

  v25 = *(v0 + 160);
  v26 = *(v0 + 192);
  v3 = *(v0 + 232);
  v4 = *(v0 + 136);
  v23 = *(v0 + 144);
  v24 = *(v0 + 152);
  v5 = *(v0 + 120);
  v6 = *(v0 + 128);
  v8 = *(v0 + 72);
  v7 = *(v0 + 80);
  v9 = *(v0 + 64);
  v10 = *(v0 + 48);
  v22 = *(v0 + 40);
  v11 = *(v0 + 24);
  (*(v0 + 112))(v7, 1, 1, *(v0 + 104));
  v6(v8, v11, v10);
  v12 = (v3 + 32) & ~v3;
  v13 = (v12 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  *(v14 + 16) = v1;
  *(v14 + 24) = v23;
  v24(v14 + v12, v8, v10);
  *(v14 + v13) = v1;
  *(v14 + ((v13 + 15) & 0xFFFFFFFFFFFFFFF8)) = v22;
  swift_retain_n();
  v15 = sub_1001D7F30(0, 0, v7, &unk_1004D6E08, v14);

  v16 = *(v28 + v27);
  *(v28 + v27) = v15;

  v17 = *(v0 + 216);
  v19 = *(v0 + 72);
  v18 = *(v0 + 80);

  v20 = *(v0 + 8);

  return v20(v17);
}

uint64_t sub_100382340()
{
  v17 = v0;
  v1 = v0[25];
  v2 = v0[22];
  v3 = v0[12];

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = v7;
    *v6 = 141558275;
    *(v6 + 4) = 1752392040;
    *(v6 + 12) = 2081;
    v0[2] = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v8 = String.init<A>(describing:)();
    v10 = sub_10000D01C(v8, v9, &v16);

    *(v6 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "legacyRefreshLocation call failed: %{private,mask.hash}s", v6, 0x16u);
    sub_100004984(v7);
  }

  v11 = sub_1002087C4(_swiftEmptyArrayStorage);

  v13 = v0[9];
  v12 = v0[10];

  v14 = v0[1];

  return v14(v11);
}

uint64_t sub_1003824FC()
{
  v17 = v0;
  v1 = v0[28];
  v2 = v0[24];
  v3 = v0[12];

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = v7;
    *v6 = 141558275;
    *(v6 + 4) = 1752392040;
    *(v6 + 12) = 2081;
    v0[2] = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v8 = String.init<A>(describing:)();
    v10 = sub_10000D01C(v8, v9, &v16);

    *(v6 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "legacyRefreshLocation call failed: %{private,mask.hash}s", v6, 0x16u);
    sub_100004984(v7);
  }

  v11 = sub_1002087C4(_swiftEmptyArrayStorage);

  v13 = v0[9];
  v12 = v0[10];

  v14 = v0[1];

  return v14(v11);
}

uint64_t sub_1003826B8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v7 = v4[2];
    v8 = sub_10038286C;
  }

  else
  {
    v9 = v4[4];
    v10 = v4[2];

    v4[7] = a1;
    v8 = sub_1003827F8;
    v7 = v10;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_1003827F8()
{
  v1 = v0[2];
  sub_1003718C0(v0[7]);

  v2 = v0[1];

  return v2();
}

uint64_t sub_10038286C()
{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[6];

  return v2();
}

uint64_t sub_1003828D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v7 = type metadata accessor for LocationRequest();
  v5[4] = v7;
  v8 = *(v7 - 8);
  v5[5] = v8;
  v9 = *(v8 + 64) + 15;
  v5[6] = swift_task_alloc();
  v10 = type metadata accessor for ContinuousClock();
  v5[7] = v10;
  v11 = *(v10 - 8);
  v5[8] = v11;
  v12 = *(v11 + 64) + 15;
  v5[9] = swift_task_alloc();

  return _swift_task_switch(sub_1003829F0, a5, 0);
}

uint64_t sub_1003829F0()
{
  static Task<>.checkCancellation()();
  v1 = *(v0 + 72);
  static Clock<>.continuous.getter();
  v2 = swift_task_alloc();
  *(v0 + 80) = v2;
  *v2 = v0;
  v2[1] = sub_100382C58;
  v3 = *(v0 + 72);

  return sub_100291918(0x8155A43676E00000, 6, 0, 0, 1);
}

uint64_t sub_100382C58()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 64);
  v6 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 88) = v0;

  (*(v5 + 8))(v4, v6);
  v8 = *(v2 + 24);
  if (v0)
  {
    v9 = sub_100383064;
  }

  else
  {
    v9 = sub_100382DE0;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_100382DE0()
{
  v23 = v0;
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = v0[2];
  v5 = type metadata accessor for Logger();
  sub_10000A6F0(v5, qword_1005E0B28);
  (*(v2 + 16))(v1, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[5];
  v9 = v0[6];
  v11 = v0[4];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v22 = v13;
    *v12 = 141558275;
    *(v12 + 4) = 1752392040;
    *(v12 + 12) = 2081;
    sub_1000095A8(&qword_1005A9300, &type metadata accessor for LocationRequest);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_10000D01C(v14, v16, &v22);

    *(v12 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "Schedule next refresh call request: %{private,mask.hash}s", v12, 0x16u);
    sub_100004984(v13);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v18 = swift_task_alloc();
  v0[12] = v18;
  *v18 = v0;
  v18[1] = sub_100383218;
  v19 = v0[2];
  v20 = v0[3];

  return sub_100021604(v19);
}

uint64_t sub_100383064()
{
  v1 = v0[11];
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005E0B28);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "legacyLocationTask error: %{public}@", v5, 0xCu);
    sub_100002CE0(v6, &qword_1005A9670, &unk_1004C2480);
  }

  else
  {
  }

  v8 = v0[9];
  v9 = v0[6];

  v10 = v0[1];

  return v10();
}

uint64_t sub_100383218()
{
  v1 = *v0;
  v2 = *(*v0 + 96);
  v7 = *v0;

  v3 = *(v1 + 72);
  v4 = *(v1 + 48);

  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_100383358()
{
  v0 = type metadata accessor for Handle();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  Friend.handle.getter();
  v5 = static Handle.== infix(_:_:)();
  (*(v1 + 8))(v4, v0);
  return v5 & 1;
}

uint64_t sub_100383444(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004B564(&qword_1005B2438, &qword_1004D68B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t *sub_1003834B4(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v10 = sub_1003842BC(v9, a2, a3, a4, a5);
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();

    return v10;
  }

  return result;
}

uint64_t sub_10038356C(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 1;
  }

  v2 = *(a1 + 16);
  if (!v2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a1 + 32;
  v6 = a2 + 56;
  while (1)
  {
    if (!*(a2 + 16))
    {
      goto LABEL_5;
    }

    v7 = (v5 + 16 * v4);
    v9 = *v7;
    v8 = v7[1];
    v10 = *(a2 + 40);
    Hasher.init(_seed:)();

    String.hash(into:)();
    v11 = Hasher._finalize()();
    v12 = -1 << *(a2 + 32);
    v13 = v11 & ~v12;
    if ((*(v6 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
    {
      break;
    }

LABEL_4:

LABEL_5:
    if (++v4 == v2)
    {
      return 1;
    }
  }

  v14 = ~v12;
  while (1)
  {
    v15 = (*(a2 + 48) + 16 * v13);
    v16 = *v15 == v9 && v15[1] == v8;
    if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  return 0;
}

uint64_t sub_1003836B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v116 = a4;
  v111 = a2;
  v109 = type metadata accessor for Location();
  v107 = *(v109 - 8);
  v6 = *(v107 + 64);
  __chkstk_darwin(v109);
  v108 = &v102 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Handle();
  v117 = *(v8 - 8);
  v118 = v8;
  v9 = *(v117 + 64);
  v10 = __chkstk_darwin(v8);
  v12 = &v102 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v102 - v14;
  __chkstk_darwin(v13);
  v106 = &v102 - v16;
  v17 = sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v102 - v19;
  v21 = type metadata accessor for Date();
  v113 = *(v21 - 8);
  v114 = v21;
  v22 = *(v113 + 64);
  v23 = __chkstk_darwin(v21);
  v105 = &v102 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v110 = &v102 - v26;
  __chkstk_darwin(v25);
  v112 = &v102 - v27;
  v28 = sub_10004B564(&qword_1005A9188, &unk_1004D80D0);
  v29 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28 - 8);
  v31 = &v102 - v30;
  v32 = type metadata accessor for Friend();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  __chkstk_darwin(v32);
  v115 = &v102 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004B564(&qword_1005AFA60, &unk_1004CE390);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004C1900;
  *(inited + 32) = Handle.identifier.getter();
  *(inited + 40) = v37;
  v38 = Handle.siblingIdentifiers.getter();
  v119 = inited;
  sub_1002492B0(v38);
  v39 = sub_10023F00C(v119);

  LOBYTE(a3) = sub_10038356C(a3, v39);

  if (a3)
  {
    if (qword_1005A84C8 != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    sub_10000A6F0(v41, qword_1005E0B28);
    v43 = v117;
    v42 = v118;
    (*(v117 + 16))(v12, a1, v118);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v44, v45))
    {

      (*(v43 + 8))(v12, v42);
      return 0;
    }

    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v119 = v47;
    *v46 = 141558275;
    *(v46 + 4) = 1752392040;
    *(v46 + 12) = 2081;
    v48 = Handle.identifier.getter();
    v50 = v49;
    (*(v43 + 8))(v12, v42);
    v51 = sub_10000D01C(v48, v50, &v119);

    *(v46 + 14) = v51;
    _os_log_impl(&_mh_execute_header, v44, v45, "Not sending legacy location for handle: %{private,mask.hash}s\nsince current client is not interested", v46, 0x16u);
    sub_100004984(v47);

LABEL_11:

    return 0;
  }

  __chkstk_darwin(v40);
  *(&v102 - 2) = a1;
  sub_10044FE2C(sub_1003847E8, v116, v31);
  if ((*(v33 + 48))(v31, 1, v32) == 1)
  {
    sub_100002CE0(v31, &qword_1005A9188, &unk_1004D80D0);
    v52 = v117;
    if (qword_1005A84C8 != -1)
    {
      swift_once();
    }

    v53 = type metadata accessor for Logger();
    sub_10000A6F0(v53, qword_1005E0B28);
    v54 = v118;
    (*(v52 + 16))(v15, a1, v118);
    v44 = Logger.logObject.getter();
    v55 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v44, v55))
    {

      (*(v52 + 8))(v15, v54);
      return 0;
    }

    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v119 = v57;
    *v56 = 141558275;
    *(v56 + 4) = 1752392040;
    *(v56 + 12) = 2081;
    v58 = Handle.identifier.getter();
    v60 = v59;
    (*(v52 + 8))(v15, v54);
    v61 = sub_10000D01C(v58, v60, &v119);

    *(v56 + 14) = v61;
    _os_log_impl(&_mh_execute_header, v44, v55, "Not sending legacy location for handle: %{private,mask.hash}s\nsince handle is not following", v56, 0x16u);
    sub_100004984(v57);

    goto LABEL_11;
  }

  v62 = v115;
  (*(v33 + 32))(v115, v31, v32);
  Friend.createdAt.getter();
  v64 = v113;
  v63 = v114;
  if ((*(v113 + 48))(v20, 1, v114) == 1)
  {
    (*(v33 + 8))(v62, v32);
    sub_100002CE0(v20, &unk_1005AE5B0, &qword_1004C32F0);
    return 1;
  }

  v116 = v33;
  v66 = v112;
  (*(v64 + 32))(v112, v20, v63);
  v67 = v110;
  Location.date.getter();
  v68 = static Date.< infix(_:_:)();
  v69 = *(v64 + 8);
  v69(v67, v63);
  if (v68)
  {
    v104 = v69;
    if (qword_1005A84C8 != -1)
    {
      swift_once();
    }

    v70 = type metadata accessor for Logger();
    sub_10000A6F0(v70, qword_1005E0B28);
    v71 = v117;
    v72 = v106;
    v73 = a1;
    v74 = v118;
    (*(v117 + 16))(v106, v73, v118);
    v75 = v105;
    (*(v113 + 16))(v105, v112, v63);
    v77 = v107;
    v76 = v108;
    v78 = v109;
    (*(v107 + 16))(v108, v111, v109);
    v79 = Logger.logObject.getter();
    LODWORD(v113) = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v79, v113))
    {
      v80 = swift_slowAlloc();
      v111 = swift_slowAlloc();
      v119 = v111;
      *v80 = 141559299;
      *(v80 + 4) = 1752392040;
      *(v80 + 12) = 2081;
      v103 = v79;
      v81 = Handle.identifier.getter();
      v82 = v77;
      v84 = v83;
      (*(v71 + 8))(v72, v74);
      v85 = sub_10000D01C(v81, v84, &v119);

      *(v80 + 14) = v85;
      *(v80 + 22) = 2160;
      *(v80 + 24) = 1752392040;
      *(v80 + 32) = 2081;
      v86 = Date.localISO8601.getter();
      v88 = v87;
      v89 = v75;
      v90 = v114;
      v91 = v104;
      v104(v89, v114);
      v92 = sub_10000D01C(v86, v88, &v119);

      *(v80 + 34) = v92;
      *(v80 + 42) = 2160;
      *(v80 + 44) = 1752392040;
      *(v80 + 52) = 2081;
      v93 = v110;
      v94 = v108;
      Location.date.getter();
      v95 = Date.localISO8601.getter();
      v97 = v96;
      v91(v93, v90);
      (*(v82 + 8))(v94, v109);
      v98 = sub_10000D01C(v95, v97, &v119);

      *(v80 + 54) = v98;
      v99 = v103;
      _os_log_impl(&_mh_execute_header, v103, v113, "Drop older legacy location for handle: %{private,mask.hash}s\ncreateAt: %{private,mask.hash}s\nlocation timestamp: %{private,mask.hash}s", v80, 0x3Eu);
      swift_arrayDestroy();

      v91(v112, v90);
    }

    else
    {

      (*(v77 + 8))(v76, v78);
      v100 = v114;
      v101 = v104;
      v104(v75, v114);
      (*(v71 + 8))(v72, v74);
      v101(v112, v100);
    }

    (*(v116 + 8))(v115, v32);
    return 0;
  }

  v69(v66, v63);
  (*(v116 + 8))(v115, v32);
  return 1;
}

uint64_t sub_1003842BC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v33 = a2;
  v48 = a4;
  v49 = a5;
  v34 = a1;
  v47 = type metadata accessor for Location();
  v6 = *(v47 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v47);
  v45 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for Handle();
  v9 = *(*(v44 - 8) + 64);
  result = __chkstk_darwin(v44);
  v42 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = 0;
  v50 = a3;
  v14 = *(a3 + 64);
  v37 = a3 + 64;
  v15 = 1 << *(a3 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v14;
  v35 = 0;
  v36 = (v15 + 63) >> 6;
  v40 = v6 + 16;
  v41 = v11 + 16;
  v46 = v6;
  v43 = v11;
  v38 = v11 + 8;
  v39 = v6 + 8;
  v18 = v44;
  while (v17)
  {
    v19 = __clz(__rbit64(v17));
    v51 = (v17 - 1) & v17;
LABEL_11:
    v22 = v19 | (v13 << 6);
    v23 = v50;
    v25 = v42;
    v24 = v43;
    (*(v43 + 16))(v42, v50[6] + *(v43 + 72) * v22, v18);
    v26 = v46;
    v27 = v47;
    v28 = v22;
    v29 = v23[7] + *(v46 + 72) * v22;
    v30 = v45;
    (*(v46 + 16))(v45, v29, v47);
    LOBYTE(v23) = sub_1003836B8(v25, v30, v48, v49);
    (*(v26 + 8))(v30, v27);
    result = (*(v24 + 8))(v25, v18);
    v17 = v51;
    if (v23)
    {
      *(v34 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
      if (__OFADD__(v35++, 1))
      {
        __break(1u);
        return sub_10023E060(v34, v33, v35, v50);
      }
    }
  }

  v20 = v13;
  while (1)
  {
    v13 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v13 >= v36)
    {
      return sub_10023E060(v34, v33, v35, v50);
    }

    v21 = *(v37 + 8 * v13);
    ++v20;
    if (v21)
    {
      v19 = __clz(__rbit64(v21));
      v51 = (v21 - 1) & v21;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1003845C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a1 + 32);
  v8 = v7 & 0x3F;
  v9 = ((1 << v7) + 63) >> 6;
  v10 = 8 * v9;
  swift_bridgeObjectRetain_n();
  v11 = swift_bridgeObjectRetain_n();
  if (v8 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v14 = swift_slowAlloc();

      v12 = sub_1003834B4(v14, v9, a1, a2, a3);

      goto LABEL_6;
    }
  }

  __chkstk_darwin(v11);
  bzero(&v15 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0), v10);

  v12 = sub_1003842BC((&v15 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0)), v9, a1, a2, a3);

  if (v3)
  {
    swift_willThrow();
  }

LABEL_6:

  return v12;
}

uint64_t sub_100384808(uint64_t a1)
{
  v4 = *(type metadata accessor for LocationRequest() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + v6);
  v10 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100003690;

  return sub_1003828D0(a1, v7, v8, v1 + v5, v9);
}

uint64_t sub_100384940(uint64_t a1, void (*a2)(uint64_t *, unint64_t), uint64_t a3, uint64_t a4)
{
  v7 = 0;
  v11 = a1;
  v8 = *(a4 + 16);
  while (v8 != v7)
  {
    v9 = *(type metadata accessor for Handle() - 8);
    a2(&v11, a4 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v7++);
    if (v4)
    {
    }
  }

  return v11;
}

uint64_t sub_100384A24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v22 - v10;
  sub_100005F04(a1, v22 - v10, &qword_1005A9690, &qword_1004C2A00);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_100002CE0(v11, &qword_1005A9690, &qword_1004C2A00);
    if (*(a3 + 16))
    {
LABEL_3:
      v14 = *(a3 + 24);
      swift_getObjectType();
      swift_unknownObjectRetain();
      v15 = dispatch thunk of Actor.unownedExecutor.getter();
      v17 = v16;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v15 = 0;
  v17 = 0;
LABEL_6:
  v18 = *v4;
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  *(v19 + 24) = a3;
  sub_10004B564(&qword_1005B04E8, &qword_1004D67E0);
  v20 = (v17 | v15);
  if (v17 | v15)
  {
    v23[0] = 0;
    v23[1] = 0;
    v20 = v23;
    v23[2] = v15;
    v23[3] = v17;
  }

  v22[1] = 1;
  v22[2] = v20;
  v22[3] = v18;
  swift_task_create();
}

uint64_t sub_100384C4C(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t))
{
  v6 = sub_10004B564(&qword_1005AB4B0, &unk_1004C5410);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v13 - v8;
  v10 = type metadata accessor for SecureLocationsStewie.ServiceState();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v9, a1, v10);
  (*(v11 + 56))(v9, 0, 1, v10);
  a3(v9, a2);
  return sub_100002CE0(v9, &qword_1005AB4B0, &unk_1004C5410);
}

uint64_t sub_100384D84(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for ClientID();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_100384E44, v1, 0);
}

uint64_t sub_100384E44()
{
  v24 = v0;
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = v0[2];
  v5 = type metadata accessor for Logger();
  sub_10000A6F0(v5, qword_1005E0B28);
  (*(v2 + 16))(v1, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[5];
  v9 = v0[6];
  v11 = v0[4];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v23 = v13;
    *v12 = 136446210;
    sub_100016E78(&qword_1005B1F10, &type metadata accessor for ClientID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_10000D01C(v14, v16, &v23);

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "stopRefreshingLocation for all, clientID: %{public}s", v12, 0xCu);
    sub_100004984(v13);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v18 = sub_10035D2B8();
  v0[7] = v18;
  v19 = swift_task_alloc();
  v0[8] = v19;
  *v19 = v0;
  v19[1] = sub_1003850C4;
  v20 = v0[2];
  v21 = v0[3];

  return sub_10035DEBC(v20, v18);
}

uint64_t sub_1003850C4()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v6 = *v0;

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_1003851F0(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = type metadata accessor for ClientOrigin();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v6 = *(*(type metadata accessor for RequestOrigin() - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v7 = *(*(sub_10004B564(&qword_1005A92D8, &qword_1004C2898) - 8) + 64) + 15;
  v2[9] = swift_task_alloc();
  Priority = type metadata accessor for LocatePriority();
  v2[10] = Priority;
  v9 = *(Priority - 8);
  v2[11] = v9;
  v10 = *(v9 + 64) + 15;
  v2[12] = swift_task_alloc();
  v11 = type metadata accessor for LocationRequest();
  v2[13] = v11;
  v12 = *(v11 - 8);
  v2[14] = v12;
  v13 = *(v12 + 64) + 15;
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v14 = type metadata accessor for Friend();
  v2[17] = v14;
  v15 = *(v14 - 8);
  v2[18] = v15;
  v16 = *(v15 + 64) + 15;
  v2[19] = swift_task_alloc();
  v17 = type metadata accessor for Handle();
  v2[20] = v17;
  v18 = *(v17 - 8);
  v2[21] = v18;
  v19 = *(v18 + 64) + 15;
  v2[22] = swift_task_alloc();

  return _swift_task_switch(sub_100385490, v1, 0);
}

uint64_t sub_100385490()
{
  v10 = v0;
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 184) = sub_10000A6F0(v1, qword_1005E0B28);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v9 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_10000D01C(0xD000000000000032, 0x80000001004E88E0, &v9);
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s", v4, 0xCu);
    sub_100004984(v5);
  }

  v6 = async function pointer to daemon.getter[1];
  v7 = swift_task_alloc();
  *(v0 + 192) = v7;
  *v7 = v0;
  v7[1] = sub_100385640;

  return daemon.getter();
}

uint64_t sub_100385640(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 192);
  v12 = *v1;
  *(v3 + 200) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 208) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for DataManager(0);
  v9 = sub_100016E78(&unk_1005AFA50, &type metadata accessor for Daemon);
  v10 = sub_100016E78(&qword_1005A90D0, type metadata accessor for DataManager);
  *v6 = v12;
  v6[1] = sub_10038581C;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_10038581C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 208);
  v6 = *v2;
  v4[27] = a1;
  v4[28] = v1;

  if (v1)
  {
    v7 = v4[4];
    v8 = sub_1003863E8;
  }

  else
  {
    v9 = v4[25];

    v8 = sub_100385954;
    v7 = a1;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100385954()
{
  sub_10004B564(&qword_1005A92A8, &qword_1004C4330);
  v1 = type metadata accessor for HandleType();
  v2 = *(v1 - 8);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  v0[29] = v5;
  *(v5 + 16) = xmmword_1004C1900;
  (*(v2 + 104))(v5 + v4, enum case for HandleType.following(_:), v1);
  v6 = swift_task_alloc();
  v0[30] = v6;
  *v6 = v0;
  v6[1] = sub_100385AB8;
  v7 = v0[27];

  return sub_10001C61C(v5, 1);
}

uint64_t sub_100385AB8(uint64_t a1)
{
  v2 = *(*v1 + 240);
  v3 = *(*v1 + 232);
  v4 = *(*v1 + 32);
  v6 = *v1;
  *(*v1 + 248) = a1;

  return _swift_task_switch(sub_100385BEC, v4, 0);
}

uint64_t sub_100385BEC()
{
  v65 = v0;
  v1 = v0[31];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[21];
    v4 = v0[18];
    v64 = _swiftEmptyArrayStorage;
    sub_10000E8E0(0, v2, 0);
    v5 = _swiftEmptyArrayStorage;
    v6 = *(v4 + 16);
    v4 += 16;
    v7 = v1 + ((*(v4 + 64) + 32) & ~*(v4 + 64));
    v58 = *(v4 + 56);
    v60 = v6;
    v8 = (v4 - 8);
    do
    {
      v9 = v0[22];
      v10 = v0[19];
      v11 = v0[17];
      v60(v10, v7, v11);
      Friend.handle.getter();
      (*v8)(v10, v11);
      v64 = v5;
      v13 = v5[2];
      v12 = v5[3];
      if (v13 >= v12 >> 1)
      {
        sub_10000E8E0(v12 > 1, v13 + 1, 1);
        v5 = v64;
      }

      v14 = v0[22];
      v15 = v0[20];
      v5[2] = v13 + 1;
      (*(v3 + 32))(v5 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v13, v14, v15);
      v7 += v58;
      --v2;
    }

    while (v2);
    v16 = v0[31];
  }

  else
  {
    v17 = v0[31];

    v5 = _swiftEmptyArrayStorage;
  }

  if (v5[2])
  {
    v62 = v0[23];
    v18 = v0[16];
    v19 = v0[14];
    v59 = v0[13];
    v61 = v0[15];
    v20 = v0[9];
    v22 = v0[7];
    v21 = v0[8];
    v24 = v0[5];
    v23 = v0[6];
    (*(v0[11] + 104))(v0[12], enum case for LocatePriority.backgroundProactive(_:), v0[10]);
    refreshed = type metadata accessor for LegacyRefreshCommandReason();
    (*(*(refreshed - 8) + 56))(v20, 1, 1, refreshed);
    (*(v23 + 104))(v22, enum case for ClientOrigin.other(_:), v24);
    RequestOrigin.init(_:)();
    LocationRequest.init(priority:origin:toHandles:reason:startRefreshingLocation:isCached:)();
    (*(v19 + 16))(v61, v18, v59);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    v28 = os_log_type_enabled(v26, v27);
    v30 = v0[14];
    v29 = v0[15];
    v31 = v0[13];
    if (v28)
    {
      v32 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v64 = v63;
      *v32 = 136315138;
      sub_100016E78(&qword_1005A9300, &type metadata accessor for LocationRequest);
      v33 = dispatch thunk of CustomStringConvertible.description.getter();
      v35 = v34;
      v36 = *(v30 + 8);
      v36(v29, v31);
      v37 = sub_10000D01C(v33, v35, &v64);

      *(v32 + 4) = v37;
      _os_log_impl(&_mh_execute_header, v26, v27, "Location Service subscribeToBackgroundProactiveLocations: %s", v32, 0xCu);
      sub_100004984(v63);
    }

    else
    {

      v36 = *(v30 + 8);
      v36(v29, v31);
    }

    v0[32] = v36;
    v54 = swift_task_alloc();
    v0[33] = v54;
    *v54 = v0;
    v54[1] = sub_1003861B0;
    v55 = v0[16];
    v56 = v0[3];
    v57 = v0[4];

    return sub_100016580(v55, v56);
  }

  else
  {

    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v64 = v41;
      *v40 = 136446210;
      *(v40 + 4) = sub_10000D01C(0xD000000000000032, 0x80000001004E88E0, &v64);
      _os_log_impl(&_mh_execute_header, v38, v39, "Unable to %{public}s with empty followings", v40, 0xCu);
      sub_100004984(v41);
    }

    v42 = v0[27];
    v43 = sub_1002087C4(_swiftEmptyArrayStorage);

    v44 = v0[22];
    v45 = v0[19];
    v47 = v0[15];
    v46 = v0[16];
    v48 = v0[12];
    v50 = v0[8];
    v49 = v0[9];
    v51 = v0[7];

    v52 = v0[1];

    return v52(v43);
  }
}

uint64_t sub_1003861B0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 264);
  v6 = *v2;
  v4[34] = v1;

  v7 = v4[4];
  if (v1)
  {
    v8 = sub_1003864BC;
  }

  else
  {
    v4[35] = a1;
    v8 = sub_1003862EC;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_1003862EC()
{
  v1 = v0[32];
  v2 = v0[27];
  v3 = v0[16];
  v4 = v0[13];
  v5 = v0[14];

  v1(v3, v4);
  v6 = v0[35];
  v7 = v0[22];
  v8 = v0[19];
  v10 = v0[15];
  v9 = v0[16];
  v11 = v0[12];
  v13 = v0[8];
  v12 = v0[9];
  v14 = v0[7];

  v15 = v0[1];

  return v15(v6);
}

uint64_t sub_1003863E8()
{
  v1 = v0[25];
  v2 = v0[22];
  v3 = v0[19];
  v5 = v0[15];
  v4 = v0[16];
  v6 = v0[12];
  v8 = v0[8];
  v7 = v0[9];
  v9 = v0[7];

  v10 = v0[1];
  v11 = v0[28];

  return v10();
}

uint64_t sub_1003864BC()
{
  v28 = v0;
  v1 = v0[34];
  v2 = v0[23];
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[34];
    v6 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v6 = 136446466;
    *(v6 + 4) = sub_10000D01C(0xD000000000000032, 0x80000001004E88E0, &v27);
    *(v6 + 12) = 2082;
    v0[2] = v5;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v7 = String.init<A>(describing:)();
    v9 = sub_10000D01C(v7, v8, &v27);

    *(v6 + 14) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s failed with %{public}s", v6, 0x16u);
    swift_arrayDestroy();
  }

  v10 = v0[34];
  v11 = v0[32];
  v12 = v0[27];
  v13 = v0[16];
  v14 = v0[13];
  v15 = v0[14];
  v16 = sub_1002087C4(_swiftEmptyArrayStorage);

  v11(v13, v14);
  v17 = v0[22];
  v18 = v0[19];
  v20 = v0[15];
  v19 = v0[16];
  v21 = v0[12];
  v23 = v0[8];
  v22 = v0[9];
  v24 = v0[7];

  v25 = v0[1];

  return v25(v16);
}

uint64_t sub_100386720(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v93 = a3;
  v5 = sub_10004B564(&qword_1005B0690, &qword_1004D2018);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v89 = &v83 - v7;
  v92 = type metadata accessor for Handle();
  v85 = *(v92 - 8);
  v8 = *(v85 + 64);
  __chkstk_darwin(v92);
  v10 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  Priority = type metadata accessor for LocatePriority();
  v12 = *(Priority - 1);
  v13 = *(v12 + 64);
  __chkstk_darwin(Priority);
  v15 = &v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for ClientID();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v83 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  v22 = sub_10000A6F0(v21, qword_1005E0B28);
  (*(v17 + 16))(v20, a1, v16);
  (*(v12 + 16))(v15, v93, Priority);

  v86 = v22;
  v23 = a2;
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  v94 = Priority;
  v26 = a1;
  v27 = v25;

  LODWORD(v88) = v27;
  v28 = os_log_type_enabled(v24, v27);
  v90 = v26;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v87 = v24;
    v30 = v29;
    v98[0] = swift_slowAlloc();
    *v30 = 136315650;
    sub_100016E78(&qword_1005B1F10, &type metadata accessor for ClientID);
    v84 = v23;
    v31 = dispatch thunk of CustomStringConvertible.description.getter();
    v33 = v32;
    (*(v17 + 8))(v20, v16);
    v34 = sub_10000D01C(v31, v33, v98);

    *(v30 + 4) = v34;
    *(v30 + 12) = 2080;
    sub_100016E78(&qword_1005B2460, &type metadata accessor for LocatePriority);
    v35 = v94;
    v36 = dispatch thunk of CustomStringConvertible.description.getter();
    v38 = v37;
    (*(v12 + 8))(v15, v35);
    v39 = sub_10000D01C(v36, v38, v98);

    *(v30 + 14) = v39;
    *(v30 + 22) = 2080;
    v40 = v84;
    v41 = Array.description.getter();
    v43 = sub_10000D01C(v41, v42, v98);

    *(v30 + 24) = v43;
    v44 = v87;
    _os_log_impl(&_mh_execute_header, v87, v88, "Remove legacyLocationSubscriptions: client: %s priority: %s handles: %s", v30, 0x20u);
    swift_arrayDestroy();

    v45 = v93;
  }

  else
  {

    (*(v12 + 8))(v15, v94);
    (*(v17 + 8))(v20, v16);
    v40 = v23;
    v45 = v93;
  }

  v46 = OBJC_IVAR____TtC13findmylocated15LocationService_legacyLocationSubscriptions;
  v47 = v91;
  result = swift_beginAccess();
  v49 = *(v47 + v46);
  if (*(v49 + 16))
  {
    v50 = *(v47 + v46);

    v51 = sub_1001FDF60(v45);
    if (v52)
    {
      v53 = *(v49 + 56) + 24 * v51;
      v55 = *v53;
      v54 = *(v53 + 8);
      v56 = *(v53 + 16);

      v98[0] = v55;
      v98[1] = v54;
      v98[2] = v56;
      v57 = Logger.logObject.getter();
      v58 = static os_log_type_t.debug.getter();
      v59 = os_log_type_enabled(v57, v58);
      v87 = v56;
      if (v59)
      {
        v60 = swift_slowAlloc();
        v94 = swift_slowAlloc();
        v96 = v94;
        *v60 = 136315138;

        v61 = sub_100344994(v55, v54, v56);
        v63 = v62;

        v64 = sub_10000D01C(v61, v63, &v96);

        *(v60 + 4) = v64;
        _os_log_impl(&_mh_execute_header, v57, v58, "remove legacyLocationSubscriptions: %s", v60, 0xCu);
        sub_100004984(v94);
      }

      v65 = v92;
      v66 = *(v40 + 16);
      if (v66)
      {
        v88 = v54;
        v94 = *(v85 + 16);
        v67 = v40 + ((*(v85 + 80) + 32) & ~*(v85 + 80));
        v68 = *(v85 + 72);
        v69 = (v85 + 8);
        v86 = v10;
        (v94)(v10, v67, v92);
        while (1)
        {
          if (v55[2])
          {
            v75 = sub_1001FD93C(v10);
            if (v76)
            {
              v97 = *(v55[7] + 8 * v75);

              v77 = v89;
              sub_1001AD0DC(v90, v89);
              sub_100002CE0(v77, &qword_1005B0690, &qword_1004D2018);
              v78 = *(v97 + 16);

              if (!v78)
              {
                swift_beginAccess();
                v79 = sub_1001FD93C(v10);
                if (v80)
                {
                  v81 = v79;
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  v55 = v98[0];
                  v95 = v98[0];
                  if (!isUniquelyReferenced_nonNull_native)
                  {
                    sub_100205330();
                    v55 = v95;
                  }

                  (*v69)(v55[6] + v81 * v68, v92);
                  v70 = *(v55[7] + 8 * v81);

                  sub_1002016B4(v81, v55);
                  v98[0] = v55;
                }

                swift_endAccess();
              }

              v71 = v91;
              swift_beginAccess();
              v72 = v88;

              v73 = *(v71 + v46);
              v74 = swift_isUniquelyReferenced_nonNull_native();
              v95 = *(v71 + v46);
              *(v71 + v46) = 0x8000000000000000;
              sub_100454430(v55, v72, v87, v93, v74);
              *(v71 + v46) = v95;
              swift_endAccess();
              v65 = v92;
              v10 = v86;
            }
          }

          (*v69)(v10, v65);
          v67 += v68;
          if (!--v66)
          {
            break;
          }

          (v94)(v10, v67, v65);
        }
      }
    }
  }

  return result;
}

uint64_t sub_100386FAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a2;
  v4[4] = a3;
  v4[2] = a1;
  return _swift_task_switch(sub_100386FD0, v3, 0);
}

uint64_t sub_100386FD0()
{
  v14 = v0;
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v1 = v0[4];
  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005E0B28);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[3];
    v5 = v0[4];
    v7 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v7 = 136446723;
    *(v7 + 4) = sub_10000D01C(0xD00000000000001DLL, 0x80000001004E88A0, &v13);
    *(v7 + 12) = 2160;
    *(v7 + 14) = 1752392040;
    *(v7 + 22) = 2081;
    *(v7 + 24) = sub_10000D01C(v6, v5, &v13);
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s with payload: %{private,mask.hash}s", v7, 0x20u);
    swift_arrayDestroy();
  }

  v8 = swift_task_alloc();
  v0[5] = v8;
  *v8 = v0;
  v8[1] = sub_10034A390;
  v9 = v0[3];
  v10 = v0[4];
  v11 = v0[2];

  return sub_1003A809C(v11, v9, v10);
}

uint64_t sub_1003871E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(*(sub_10004B564(&qword_1005A9188, &unk_1004D80D0) - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  v6 = type metadata accessor for Friend();
  v4[7] = v6;
  v7 = *(v6 - 8);
  v4[8] = v7;
  v8 = *(v7 + 64) + 15;
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v9 = type metadata accessor for Handle();
  v4[14] = v9;
  v10 = *(v9 - 8);
  v4[15] = v10;
  v11 = *(v10 + 64) + 15;
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();

  return _swift_task_switch(sub_100387384, v3, 0);
}

uint64_t sub_100387384()
{
  v16 = v0;
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = type metadata accessor for Logger();
  v0[19] = sub_10000A6F0(v2, qword_1005E0B28);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[14];
    v6 = v0[2];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 141558275;
    *(v7 + 4) = 1752392040;
    *(v7 + 12) = 2081;
    v9 = Array.description.getter();
    v11 = sub_10000D01C(v9, v10, &v15);

    *(v7 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "stopRefreshingLocation for: %{private,mask.hash}s", v7, 0x16u);
    sub_100004984(v8);
  }

  v12 = async function pointer to daemon.getter[1];
  v13 = swift_task_alloc();
  v0[20] = v13;
  *v13 = v0;
  v13[1] = sub_100387570;

  return daemon.getter();
}

uint64_t sub_100387570(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 160);
  v12 = *v1;
  *(v3 + 168) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 176) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for DataManager(0);
  v9 = sub_100016E78(&unk_1005AFA50, &type metadata accessor for Daemon);
  v10 = sub_100016E78(&qword_1005A90D0, type metadata accessor for DataManager);
  *v6 = v12;
  v6[1] = sub_10038774C;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_10038774C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 176);
  v6 = *v2;
  v4[23] = a1;
  v4[24] = v1;

  if (v1)
  {
    v7 = v4[5];
    v8 = sub_100388744;
  }

  else
  {
    v9 = v4[21];

    v8 = sub_100387884;
    v7 = a1;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100387884()
{
  sub_10004B564(&qword_1005A92A8, &qword_1004C4330);
  v1 = type metadata accessor for HandleType();
  v2 = *(v1 - 8);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  v0[25] = v5;
  *(v5 + 16) = xmmword_1004C1900;
  (*(v2 + 104))(v5 + v4, enum case for HandleType.following(_:), v1);
  v6 = swift_task_alloc();
  v0[26] = v6;
  *v6 = v0;
  v6[1] = sub_1003879E8;
  v7 = v0[23];

  return sub_10001C61C(v5, 1);
}

uint64_t sub_1003879E8(uint64_t a1)
{
  v2 = *(*v1 + 208);
  v3 = *(*v1 + 200);
  v4 = *(*v1 + 40);
  v6 = *v1;
  *(*v1 + 216) = a1;

  return _swift_task_switch(sub_100387B1C, v4, 0);
}

uint64_t sub_100387B1C()
{
  v1 = v0[2];
  v47 = *(v1 + 16);
  if (v47)
  {
    v2 = 0;
    v46 = v0[27];
    v3 = v0[15];
    v4 = v0[8];
    v5 = *(v3 + 16);
    v3 += 16;
    v45 = v5;
    v44 = v1 + ((*(v3 + 64) + 32) & ~*(v3 + 64));
    v43 = *(v3 + 56);
    v6 = (v3 - 8);
    v52 = (v4 + 8);
    v48 = v4;
    v49 = (v4 + 32);
    v41 = (v4 + 48);
    v42 = (v4 + 56);
    v7 = _swiftEmptyArrayStorage;
    do
    {
      v50 = v7;
      v51 = v2;
      v45(v0[18], v44 + v2 * v43, v0[14]);
      v8 = *(v46 + 16);
      if (v8)
      {
        v9 = v0[27] + ((*(v48 + 80) + 32) & ~*(v48 + 80));
        v10 = *(v48 + 72);
        v11 = *(v48 + 16);
        while (1)
        {
          v13 = v0[17];
          v12 = v0[18];
          v14 = v0[14];
          v11(v0[12], v9, v0[7]);
          Friend.handle.getter();
          v15 = static Handle.== infix(_:_:)();
          v16 = *v6;
          (*v6)(v13, v14);
          if (v15)
          {
            break;
          }

          (*v52)(v0[12], v0[7]);
          v9 += v10;
          if (!--v8)
          {
            goto LABEL_9;
          }
        }

        v17 = v0[6];
        v18 = v0[7];
        (*v49)(v17, v0[12], v18);
        (*v42)(v17, 0, 1, v18);
      }

      else
      {
LABEL_9:
        (*v42)(v0[6], 1, 1, v0[7]);
        v16 = *v6;
      }

      v20 = v0[6];
      v19 = v0[7];
      v16(v0[18], v0[14]);
      v7 = v50;
      if ((*v41)(v20, 1, v19) == 1)
      {
        sub_100002CE0(v0[6], &qword_1005A9188, &unk_1004D80D0);
      }

      else
      {
        v21 = *v49;
        (*v49)(v0[13], v0[6], v0[7]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_1001FCB80(0, v50[2] + 1, 1, v50);
        }

        v23 = v7[2];
        v22 = v7[3];
        if (v23 >= v22 >> 1)
        {
          v7 = sub_1001FCB80(v22 > 1, v23 + 1, 1, v7);
        }

        v24 = v0[13];
        v25 = v0[7];
        v7[2] = v23 + 1;
        v21(v7 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v23, v24, v25);
      }

      v2 = v51 + 1;
    }

    while (v51 + 1 != v47);
    v1 = v0[2];
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  v0[28] = v7;
  v26 = v0[27];
  v27 = v0[19];
  v29 = v0[4];
  v28 = v0[5];
  v30 = v0[3];

  sub_100386720(v29, v1, v30);

  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();
  v33 = os_log_type_enabled(v31, v32);
  v34 = v0[5];
  if (v33)
  {
    v35 = swift_slowAlloc();
    *v35 = 134217984;
    v36 = *(sub_10002A170() + 2);

    *(v35 + 4) = v36;

    _os_log_impl(&_mh_execute_header, v31, v32, "stopRefreshingLocation LegacyRefresh handle count: %ld", v35, 0xCu);
  }

  else
  {
    v37 = v0[5];
  }

  v38 = swift_task_alloc();
  v0[29] = v38;
  *v38 = v0;
  v38[1] = sub_100387FA8;
  v39 = v0[5];

  return sub_100021A68();
}

uint64_t sub_100387FA8(char a1)
{
  v2 = *(*v1 + 232);
  v3 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 264) = a1;

  return _swift_task_switch(sub_1003880C0, v3, 0);
}

void sub_1003880C0()
{
  if ((*(v0 + 264) & 1) == 0)
  {
    v1 = *(v0 + 40);
    v2 = OBJC_IVAR____TtC13findmylocated15LocationService_legacyLocationTask;
    if (*(v1 + OBJC_IVAR____TtC13findmylocated15LocationService_legacyLocationTask))
    {
      v3 = *(v1 + OBJC_IVAR____TtC13findmylocated15LocationService_legacyLocationTask);

      Task.cancel()();

      v4 = *(v1 + v2);
    }

    v5 = *(v0 + 152);
    *(v1 + v2) = 0;

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Cancel next legacy location refresh task", v8, 2u);
    }
  }

  v9 = *(v0 + 224);
  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = 0;
    v12 = *(v0 + 64);
    v44 = (v12 + 32);
    v40 = *(v9 + 16);
    v42 = *(v0 + 224);
    while (v11 < *(v9 + 16))
    {
      v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
      v14 = *(v12 + 72);
      (*(v12 + 16))(*(v0 + 88), *(v0 + 224) + v13 + v14 * v11, *(v0 + 56));
      v15 = Friend.isSecureLocationCapable.getter();
      v16 = *(v0 + 88);
      if (v15)
      {
        v17 = *v44;
        (*v44)(*(v0 + 80), *(v0 + 88), *(v0 + 56));
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_100239354(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v19 = _swiftEmptyArrayStorage[2];
        v18 = _swiftEmptyArrayStorage[3];
        if (v19 >= v18 >> 1)
        {
          sub_100239354(v18 > 1, v19 + 1, 1);
        }

        v20 = *(v0 + 80);
        v21 = *(v0 + 56);
        _swiftEmptyArrayStorage[2] = v19 + 1;
        v17(_swiftEmptyArrayStorage + v13 + v19 * v14, v20, v21);
        v10 = v40;
        v9 = v42;
      }

      else
      {
        (*(v12 + 8))(*(v0 + 88), *(v0 + 56));
      }

      if (v10 == ++v11)
      {
        v22 = *(v0 + 224);
        goto LABEL_19;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    v23 = _swiftEmptyArrayStorage[2];
    if (v23)
    {
      v24 = *(v0 + 120);
      v25 = *(v0 + 64);
      sub_10000E8E0(0, v23, 0);
      v26 = *(v25 + 16);
      v25 += 16;
      v27 = _swiftEmptyArrayStorage + ((*(v25 + 64) + 32) & ~*(v25 + 64));
      v41 = *(v25 + 56);
      v43 = v26;
      v28 = (v25 - 8);
      do
      {
        v29 = *(v0 + 128);
        v30 = *(v0 + 72);
        v31 = *(v0 + 56);
        v43(v30, v27, v31);
        Friend.handle.getter();
        (*v28)(v30, v31);
        v33 = _swiftEmptyArrayStorage[2];
        v32 = _swiftEmptyArrayStorage[3];
        if (v33 >= v32 >> 1)
        {
          sub_10000E8E0(v32 > 1, v33 + 1, 1);
        }

        v34 = *(v0 + 128);
        v35 = *(v0 + 112);
        _swiftEmptyArrayStorage[2] = v33 + 1;
        (*(v24 + 32))(_swiftEmptyArrayStorage + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v33, v34, v35);
        v27 += v41;
        --v23;
      }

      while (v23);
    }

    *(v0 + 240) = _swiftEmptyArrayStorage;
    v36 = swift_task_alloc();
    *(v0 + 248) = v36;
    *v36 = v0;
    v36[1] = sub_100388518;
    v37 = *(v0 + 32);
    v38 = *(v0 + 40);
    v39 = *(v0 + 24);

    sub_100356174(_swiftEmptyArrayStorage, v39, v37);
  }
}

uint64_t sub_100388518()
{
  v2 = *v1;
  v3 = *(*v1 + 248);
  v4 = *(*v1 + 240);
  v5 = *v1;
  *(*v1 + 256) = v0;

  v6 = *(v2 + 40);
  if (v0)
  {
    v7 = sub_100388830;
  }

  else
  {
    v7 = sub_100388660;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_100388660()
{
  v1 = v0[23];
  v2 = v0[17];
  v3 = v0[18];
  v4 = v0[16];
  v6 = v0[12];
  v5 = v0[13];
  v8 = v0[10];
  v7 = v0[11];
  v9 = v0[9];
  v10 = v0[6];

  v11 = v0[1];

  return v11();
}

uint64_t sub_100388744()
{
  v13 = v0[24];
  v1 = v0[21];
  v3 = v0[17];
  v2 = v0[18];
  v4 = v0[16];
  v6 = v0[12];
  v5 = v0[13];
  v8 = v0[10];
  v7 = v0[11];
  v9 = v0[9];
  v10 = v0[6];

  v11 = v0[1];

  return v11();
}

uint64_t sub_100388830()
{
  v13 = v0[32];
  v1 = v0[23];
  v3 = v0[17];
  v2 = v0[18];
  v4 = v0[16];
  v6 = v0[12];
  v5 = v0[13];
  v8 = v0[10];
  v7 = v0[11];
  v9 = v0[9];
  v10 = v0[6];

  v11 = v0[1];

  return v11();
}

uint64_t sub_10038891C()
{
  v1 = *v0;
  v2 = *(*v0 + 392);
  v6 = *v0;

  v3 = async function pointer to daemon.getter[1];
  v4 = swift_task_alloc();
  *(v1 + 400) = v4;
  *v4 = v6;
  v4[1] = sub_100016968;

  return daemon.getter();
}

uint64_t sub_100388A48(uint64_t a1)
{
  v2 = *(*v1 + 448);
  v3 = *(*v1 + 440);
  v4 = *(*v1 + 40);
  v6 = *v1;
  *(*v1 + 456) = a1;

  return _swift_task_switch(sub_100388B7C, v4, 0);
}

uint64_t sub_100388B7C()
{
  v1 = v0[3];
  v2 = LocationRequest.toHandles.getter();
  v269 = v0;
  v234 = *(v2 + 16);
  if (v234)
  {
    v3 = 0;
    v231 = v0[57];
    v4 = v0[21];
    v5 = v0[12];
    v6 = *(v4 + 16);
    v4 += 16;
    v227 = v6;
    v224 = v2 + ((*(v4 + 64) + 32) & ~*(v4 + 64));
    v221 = *(v4 + 56);
    v7 = (v4 - 8);
    v259 = (v5 + 8);
    v237 = v5;
    v242 = (v5 + 32);
    v216 = (v5 + 48);
    v218 = (v5 + 56);
    v8 = _swiftEmptyArrayStorage;
    do
    {
      v248 = v3;
      v253 = v8;
      v227(v0[29], v224 + v3 * v221, v0[20]);
      v9 = *(v231 + 16);
      if (v9)
      {
        v10 = v0[57] + ((*(v237 + 80) + 32) & ~*(v237 + 80));
        v11 = *(v237 + 72);
        v12 = *(v237 + 16);
        while (1)
        {
          v13 = v0[29];
          v14 = v269[28];
          v15 = v269[20];
          v12(v269[18], v10, v269[11]);
          Friend.handle.getter();
          v16 = static Handle.== infix(_:_:)();
          v17 = *v7;
          v0 = v269;
          (*v7)(v14, v15);
          if (v16)
          {
            break;
          }

          (*v259)(v269[18], v269[11]);
          v10 += v11;
          if (!--v9)
          {
            goto LABEL_9;
          }
        }

        v18 = v269[10];
        v19 = v269[11];
        (*v242)(v18, v269[18], v19);
        (*v218)(v18, 0, 1, v19);
      }

      else
      {
LABEL_9:
        (*v218)(v0[10], 1, 1, v0[11]);
        v17 = *v7;
      }

      v21 = v0[10];
      v20 = v0[11];
      v17(v0[29], v0[20]);
      v8 = v253;
      if ((*v216)(v21, 1, v20) == 1)
      {
        sub_100002CE0(v0[10], &qword_1005A9188, &unk_1004D80D0);
      }

      else
      {
        v22 = *v242;
        (*v242)(v0[19], v0[10], v0[11]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1001FCB80(0, v253[2] + 1, 1, v253);
        }

        v24 = v8[2];
        v23 = v8[3];
        if (v24 >= v23 >> 1)
        {
          v8 = sub_1001FCB80(v23 > 1, v24 + 1, 1, v8);
        }

        v25 = v0[19];
        v26 = v0[11];
        v8[2] = v24 + 1;
        v22(v8 + ((*(v237 + 80) + 32) & ~*(v237 + 80)) + *(v237 + 72) * v24, v25, v26);
      }

      v3 = v248 + 1;
    }

    while (v248 + 1 != v234);
  }

  else
  {

    v8 = _swiftEmptyArrayStorage;
  }

  v27 = v0[57];

  v243 = v8[2];
  if (v243)
  {
    v29 = v0[37];
    v28 = v0[38];
    v254 = v8;
    v31 = v0[34];
    v30 = v0[35];
    v32 = v0[12];
    v33 = v0[3];
    LocationRequest.priority.getter();
    (*(v30 + 104))(v29, enum case for LocatePriority.backgroundProactive(_:), v31);
    sub_100016E78(&qword_1005B0210, &type metadata accessor for LocatePriority);
    v229 = dispatch thunk of static Equatable.== infix(_:_:)();
    v34 = *(v30 + 8);
    v35 = v254;
    v34(v29, v31);
    v232 = v34;
    v36 = (v34)(v28, v31);
    v44 = 0;
    v249 = (v32 + 8);
    v238 = (v32 + 32);
    v45 = _swiftEmptyArrayStorage;
    do
    {
      if (v44 >= *(v35 + 2))
      {
        __break(1u);
        goto LABEL_90;
      }

      v46 = (*(v32 + 80) + 32) & ~*(v32 + 80);
      v47 = *(v32 + 72);
      v260 = *(v32 + 16);
      v260(v269[17], &v35[v46 + v47 * v44], v269[11]);
      v48 = Friend.isSecureLocationCapable.getter();
      v49 = v269[17];
      if (v48)
      {
        v50 = *v238;
        (*v238)(v269[16], v269[17], v269[11]);
        v272 = v45;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_100239354(0, v45[2] + 1, 1);
          v45 = v272;
        }

        v52 = v45[2];
        v51 = v45[3];
        if (v52 >= v51 >> 1)
        {
          sub_100239354(v51 > 1, v52 + 1, 1);
          v45 = v272;
        }

        v53 = v269[16];
        v54 = v269[11];
        v45[2] = v52 + 1;
        v36 = v50(v45 + v46 + v52 * v47, v53, v54);
        v35 = v254;
      }

      else
      {
        v36 = (*v249)(v269[17], v269[11]);
      }

      ++v44;
    }

    while (v243 != v44);
    v55 = v45[2];
    if (v55)
    {
      v56 = v269[21];
      v272 = _swiftEmptyArrayStorage;
      sub_10000E8E0(0, v55, 0);
      v57 = _swiftEmptyArrayStorage;
      v225 = v46;
      v58 = v45 + v46;
      do
      {
        v59 = v269[27];
        v60 = v269[15];
        v61 = v57;
        v62 = v269[11];
        v260(v60, v58, v62);
        Friend.handle.getter();
        v63 = v62;
        v57 = v61;
        (*v249)(v60, v63);
        v272 = v61;
        v64 = v61[2];
        v65 = v57[3];
        if (v64 >= v65 >> 1)
        {
          sub_10000E8E0(v65 > 1, v64 + 1, 1);
          v57 = v272;
        }

        v66 = v269[27];
        v67 = v269[20];
        v57[2] = v64 + 1;
        (*(v56 + 32))(v57 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v64, v66, v67);
        v58 += v47;
        --v55;
      }

      while (v55);
      v235 = v57;

      v35 = v254;
      v46 = v225;
    }

    else
    {

      v235 = _swiftEmptyArrayStorage;
    }

    v85 = 0;
    v86 = &v35[v46];
    v87 = _swiftEmptyArrayStorage;
    while (v85 < *(v35 + 2))
    {
      v260(v269[14], v86, v269[11]);
      v88 = Friend.isLegacyLocationCapable.getter();
      v89 = v269[14];
      if (v88)
      {
        v90 = *v238;
        (*v238)(v269[13], v269[14], v269[11]);
        v272 = v87;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_100239354(0, v87[2] + 1, 1);
          v87 = v272;
        }

        v92 = v87[2];
        v91 = v87[3];
        if (v92 >= v91 >> 1)
        {
          sub_100239354(v91 > 1, v92 + 1, 1);
          v87 = v272;
        }

        v93 = v269[13];
        v94 = v269[11];
        v87[2] = v92 + 1;
        v36 = v90(v87 + v46 + v92 * v47, v93, v94);
        v35 = v254;
      }

      else
      {
        v36 = (*v249)(v269[14], v269[11]);
      }

      ++v85;
      v86 += v47;
      if (v243 == v85)
      {

        v95 = v87[2];
        if (v95)
        {
          v96 = v269;
          v97 = v269[21];
          v272 = _swiftEmptyArrayStorage;
          sub_10000E8E0(0, v95, 0);
          v98 = _swiftEmptyArrayStorage;
          v99 = v87 + v46;
          do
          {
            v100 = v96[26];
            v101 = v96[15];
            v102 = v96;
            v103 = v98;
            v104 = v102[11];
            v260(v101, v99, v104);
            Friend.handle.getter();
            v105 = v104;
            v98 = v103;
            (*v249)(v101, v105);
            v272 = v103;
            v106 = v103[2];
            v107 = v98[3];
            if (v106 >= v107 >> 1)
            {
              sub_10000E8E0(v107 > 1, v106 + 1, 1);
              v98 = v272;
            }

            v108 = v102[26];
            v109 = v102[20];
            v98[2] = v106 + 1;
            (*(v97 + 32))(v98 + ((*(v97 + 80) + 32) & ~*(v97 + 80)) + *(v97 + 72) * v106, v108, v109);
            v99 += v47;
            --v95;
            v96 = v102;
          }

          while (v95);
        }

        else
        {

          v98 = _swiftEmptyArrayStorage;
          v96 = v269;
        }

        v110 = v96[36];
        v111 = v96[9];
        v112 = v96[3];
        LocationRequest.priority.getter();
        LocationRequest.origin.getter();
        v266 = v98;
        if ((v229 & 1) == 0)
        {
        }

        v113 = v96[46];
        v256 = v96[47];
        v262 = v96[45];
        v223 = v96[43];
        v240 = v96[42];
        v245 = v96[41];
        v114 = v96[38];
        v251 = v96[39];
        v220 = v96[36];
        v115 = v96[34];
        v116 = v96[8];
        v117 = v96[9];
        v118 = v96[7];
        v119 = v269[3];
        LocationRequest.priority.getter();
        LocatePriority.reason.getter();
        v232(v114, v115);
        refreshed = type metadata accessor for LegacyRefreshCommandReason();
        v121 = *(*(refreshed - 8) + 56);
        v121(v118, 0, 1, refreshed);
        LocationRequest.init(priority:origin:toHandles:reason:startRefreshingLocation:isCached:)();
        LocationRequest.priority.getter();
        LocationRequest.origin.getter();
        v121(v118, 1, 1, refreshed);

        LocationRequest.init(priority:origin:toHandles:reason:startRefreshingLocation:isCached:)();
        v122 = v119;
        v123 = v269;
        v113(v245, v122, v251);
        v124 = Logger.logObject.getter();
        v125 = static os_log_type_t.default.getter();
        v126 = os_log_type_enabled(v124, v125);
        v127 = v269[48];
        v129 = v269[40];
        v128 = v269[41];
        v130 = v269[39];
        if (v126)
        {
          v131 = v269[38];
          v132 = v269[34];
          v133 = swift_slowAlloc();
          v263 = swift_slowAlloc();
          v272 = v263;
          *v133 = 136446210;
          v257 = v127;
          LocationRequest.priority.getter();
          sub_100016E78(&qword_1005B2460, &type metadata accessor for LocatePriority);
          v134 = dispatch thunk of CustomStringConvertible.description.getter();
          v136 = v135;
          v137 = v131;
          v123 = v269;
          v232(v137, v132);
          v257(v128, v130);
          v138 = sub_10000D01C(v134, v136, &v272);

          *(v133 + 4) = v138;
          _os_log_impl(&_mh_execute_header, v124, v125, "LocationService: Start Refresh Location with priority: %{public}s for", v133, 0xCu);
          sub_100004984(v263);
        }

        else
        {

          v127(v128, v130);
        }

        v139 = v123[45];

        v140 = Logger.logObject.getter();
        v141 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v140, v141))
        {
          v142 = swift_slowAlloc();
          *v142 = 134217984;
          v143 = v235[2];

          *(v142 + 4) = v143;

          _os_log_impl(&_mh_execute_header, v140, v141, "LocationService: validSecureLocationHandles count: %ld", v142, 0xCu);
        }

        else
        {
          swift_bridgeObjectRelease_n();
        }

        v144 = v123[45];

        v145 = Logger.logObject.getter();
        v146 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v145, v146))
        {
          v147 = swift_slowAlloc();
          *v147 = 134217984;
          v148 = v266[2];

          *(v147 + 4) = v148;

          _os_log_impl(&_mh_execute_header, v145, v146, "LocationService: legacyRefreshHandles count: %ld", v147, 0xCu);
        }

        else
        {
          swift_bridgeObjectRelease_n();
        }

        v149 = v123[43];
        v36 = LocationRequest.toHandles.getter();
        v150 = v36;
        v151 = *(v36 + 16);
        if (v151)
        {
          v152 = 0;
          v267 = v123[21];
          v258 = (v267 + 8);
          v241 = *(v36 + 16);
          while (v152 < *(v150 + 16))
          {
            v154 = v123[45];
            v155 = v123[25];
            v156 = v123[23];
            v157 = v123[20];
            v158 = *(v267 + 16);
            v158(v155, v150 + ((*(v267 + 80) + 32) & ~*(v267 + 80)) + *(v267 + 72) * v152, v157);
            v158(v156, v155, v157);
            v159 = Logger.logObject.getter();
            v160 = v123;
            v161 = static os_log_type_t.default.getter();
            v162 = os_log_type_enabled(v159, v161);
            v163 = v160[23];
            v164 = v160[20];
            if (v162)
            {
              v165 = swift_slowAlloc();
              v246 = swift_slowAlloc();
              v272 = v246;
              *v165 = 141558275;
              *(v165 + 4) = 1752392040;
              *(v165 + 12) = 2081;
              sub_100016E78(&qword_1005B02C8, &type metadata accessor for Handle);
              v166 = v150;
              v167 = dispatch thunk of CustomStringConvertible.description.getter();
              v169 = v168;
              v153 = *v258;
              (*v258)(v163, v164);
              v170 = v167;
              v150 = v166;
              v171 = sub_10000D01C(v170, v169, &v272);
              v151 = v241;

              *(v165 + 14) = v171;
              _os_log_impl(&_mh_execute_header, v159, v161, "LocationService: legacy location Request for: %{private,mask.hash}s", v165, 0x16u);
              sub_100004984(v246);
            }

            else
            {

              v153 = *v258;
              (*v258)(v163, v164);
            }

            ++v152;
            v123 = v269;
            v36 = (v153)(v269[25], v269[20]);
            if (v151 == v152)
            {
              goto LABEL_77;
            }
          }

          goto LABEL_91;
        }

LABEL_77:
        v172 = v123[42];

        v36 = LocationRequest.toHandles.getter();
        v173 = v36;
        v174 = *(v36 + 16);
        if (!v174)
        {
LABEL_84:

          if ((v229 & 1) == 0)
          {
            v195 = v123[43];
            v196 = v123[38];
            v197 = v123[34];
            v199 = v123[4];
            v198 = v123[5];
            v200 = v123[3];
            v201 = LocationRequest.toHandles.getter();
            LocationRequest.priority.getter();
            sub_10038A6B4(v199, v201, v196);

            v232(v196, v197);
          }

          v203 = v123[42];
          v202 = v123[43];
          v204 = v123[5];
          v205 = v123[6];
          v206 = v123[4];
          v207 = sub_10004B564(&qword_1005B04E8, &qword_1004D67E0);
          v208 = sub_100016E78(&qword_1005B23E0, type metadata accessor for LocationService);
          v209 = swift_task_alloc();
          v123[58] = v209;
          v209[2] = v202;
          v209[3] = v204;
          v209[4] = v203;
          v209[5] = v206;
          v209[6] = v205;
          v210 = async function pointer to withTaskGroup<A, B>(of:returning:isolation:body:)[1];
          v211 = swift_task_alloc();
          v123[59] = v211;
          *v211 = v123;
          v211[1] = sub_10038A1B8;
          v41 = &unk_1004D7098;
          v36 = (v123 + 2);
          v37 = v207;
          v38 = v207;
          v39 = v204;
          v40 = v208;
          v42 = v209;
          v43 = v207;

          return withTaskGroup<A, B>(of:returning:isolation:body:)(v36, v37, v38, v39, v40, v41, v42, v43);
        }

        v175 = 0;
        v264 = v123[21];
        v268 = (v264 + 8);
        v247 = *(v36 + 16);
        while (v175 < *(v173 + 16))
        {
          v177 = v123[45];
          v178 = v123[24];
          v179 = v123[22];
          v180 = v123[20];
          v181 = *(v264 + 16);
          v181(v178, v173 + ((*(v264 + 80) + 32) & ~*(v264 + 80)) + *(v264 + 72) * v175, v180);
          v181(v179, v178, v180);
          v182 = Logger.logObject.getter();
          v183 = v123;
          v184 = static os_log_type_t.default.getter();
          v185 = os_log_type_enabled(v182, v184);
          v186 = v183[22];
          v187 = v183[20];
          if (v185)
          {
            v188 = swift_slowAlloc();
            v252 = swift_slowAlloc();
            v272 = v252;
            *v188 = 141558275;
            *(v188 + 4) = 1752392040;
            *(v188 + 12) = 2081;
            sub_100016E78(&qword_1005B02C8, &type metadata accessor for Handle);
            v189 = v173;
            v190 = dispatch thunk of CustomStringConvertible.description.getter();
            v192 = v191;
            v176 = *v268;
            (*v268)(v186, v187);
            v193 = v190;
            v173 = v189;
            v194 = sub_10000D01C(v193, v192, &v272);
            v174 = v247;

            *(v188 + 14) = v194;
            _os_log_impl(&_mh_execute_header, v182, v184, "LocationService: secure location Request for: %{private,mask.hash}s", v188, 0x16u);
            sub_100004984(v252);
          }

          else
          {

            v176 = *v268;
            (*v268)(v186, v187);
          }

          ++v175;
          v123 = v269;
          v36 = (v176)(v269[24], v269[20]);
          if (v174 == v175)
          {
            goto LABEL_84;
          }
        }

        goto LABEL_92;
      }
    }

LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
    return withTaskGroup<A, B>(of:returning:isolation:body:)(v36, v37, v38, v39, v40, v41, v42, v43);
  }

  else
  {
    v68 = v0[45];

    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      *v71 = 0;
      _os_log_impl(&_mh_execute_header, v69, v70, "Start Refresh Location with empty handles", v71, 2u);
    }

    v72 = v0[53];

    v270 = sub_1002087C4(_swiftEmptyArrayStorage);

    v74 = v0[43];
    v73 = v0[44];
    v76 = v0[41];
    v75 = v0[42];
    v78 = v0[37];
    v77 = v0[38];
    v79 = v0[36];
    v81 = v0[32];
    v80 = v0[33];
    v82 = v0[29];
    v212 = v0[28];
    v213 = v0[27];
    v214 = v0[26];
    v215 = v0[25];
    v217 = v0[24];
    v219 = v0[23];
    v222 = v0[22];
    v226 = v0[19];
    v228 = v0[18];
    v230 = v0[17];
    v233 = v0[16];
    v236 = v0[15];
    v239 = v0[14];
    v244 = v0[13];
    v250 = v0[10];
    v255 = v0[9];
    v261 = v0[8];
    v265 = v0[7];

    v83 = v0[1];

    return v83(v270);
  }
}

uint64_t sub_10038A1B8()
{
  v1 = *(*v0 + 472);
  v2 = *(*v0 + 464);
  v3 = *(*v0 + 40);
  v5 = *v0;

  return _swift_task_switch(sub_10038A2E4, v3, 0);
}

uint64_t sub_10038A2E4()
{
  v1 = v0[53];
  v2 = v0[48];
  v3 = v0[42];
  v4 = v0[43];
  v5 = v0[39];
  v6 = v0[40];

  v37 = v0[2];
  v2(v3, v5);
  v2(v4, v5);
  v8 = v0[43];
  v7 = v0[44];
  v10 = v0[41];
  v9 = v0[42];
  v12 = v0[37];
  v11 = v0[38];
  v13 = v0[36];
  v15 = v0[32];
  v14 = v0[33];
  v16 = v0[29];
  v19 = v0[28];
  v20 = v0[27];
  v21 = v0[26];
  v22 = v0[25];
  v23 = v0[24];
  v24 = v0[23];
  v25 = v0[22];
  v26 = v0[19];
  v27 = v0[18];
  v28 = v0[17];
  v29 = v0[16];
  v30 = v0[15];
  v31 = v0[14];
  v32 = v0[13];
  v33 = v0[10];
  v34 = v0[9];
  v35 = v0[8];
  v36 = v0[7];

  v17 = v0[1];

  return v17(v37);
}

uint64_t sub_10038A4EC()
{
  v1 = v0[51];
  v3 = v0[43];
  v2 = v0[44];
  v5 = v0[41];
  v4 = v0[42];
  v7 = v0[37];
  v6 = v0[38];
  v8 = v0[36];
  v9 = v0[32];
  v10 = v0[33];
  v14 = v0[29];
  v15 = v0[28];
  v16 = v0[27];
  v17 = v0[26];
  v18 = v0[25];
  v19 = v0[24];
  v20 = v0[23];
  v21 = v0[22];
  v22 = v0[19];
  v23 = v0[18];
  v24 = v0[17];
  v25 = v0[16];
  v26 = v0[15];
  v27 = v0[14];
  v28 = v0[13];
  v29 = v0[10];
  v30 = v0[9];
  v31 = v0[8];
  v32 = v0[7];

  v11 = v0[1];
  v12 = v0[54];

  return v11();
}

uint64_t sub_10038A6B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v80 = a3;
  v5 = type metadata accessor for Handle();
  v92 = *(v5 - 8);
  v6 = *(v92 + 64);
  v7 = __chkstk_darwin(v5);
  v81 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v74 - v9;
  Priority = type metadata accessor for LocatePriority();
  v11 = *(Priority - 1);
  v12 = *(v11 + 64);
  __chkstk_darwin(Priority);
  v14 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for ClientID();
  v15 = *(v90 - 8);
  isa = v15[8].isa;
  v17 = __chkstk_darwin(v90);
  v89 = &v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v86 = &v74 - v20;
  __chkstk_darwin(v19);
  v22 = &v74 - v21;
  if (qword_1005A84C8 != -1)
  {
LABEL_23:
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  sub_10000A6F0(v23, qword_1005E0B28);
  v87 = v15[2].isa;
  v88 = v15 + 2;
  v87(v22, a1, v90);
  (*(v11 + 16))(v14, v80, Priority);

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();

  LODWORD(v82) = v25;
  v83 = v24;
  v26 = os_log_type_enabled(v24, v25);
  v84 = a2;
  v78 = v15;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    v95[0] = v76;
    *v27 = 136315650;
    sub_100016E78(&qword_1005B1F10, &type metadata accessor for ClientID);
    v28 = v90;
    v29 = dispatch thunk of CustomStringConvertible.description.getter();
    v77 = v10;
    v30 = a1;
    v32 = v31;
    v33 = v15[1].isa;
    v34 = v28;
    v85 = v33;
    v33(v22, v28);
    v35 = sub_10000D01C(v29, v32, v95);
    a1 = v30;

    *(v27 + 4) = v35;
    *(v27 + 12) = 2080;
    sub_100016E78(&qword_1005B2460, &type metadata accessor for LocatePriority);
    v36 = Priority;
    v37 = dispatch thunk of CustomStringConvertible.description.getter();
    v39 = v38;
    (*(v11 + 8))(v14, v36);
    v40 = sub_10000D01C(v37, v39, v95);

    *(v27 + 14) = v40;
    *(v27 + 22) = 2080;
    v10 = v77;
    v41 = Array.description.getter();
    v43 = sub_10000D01C(v41, v42, v95);

    *(v27 + 24) = v43;
    v44 = v83;
    _os_log_impl(&_mh_execute_header, v83, v82, "Track new legacyLocationSubscriptions: client: %s priority: %s handles: %s", v27, 0x20u);
    swift_arrayDestroy();

    v45 = v80;

    v14 = v34;
  }

  else
  {

    (*(v11 + 8))(v14, Priority);
    v14 = v90;
    v85 = v15[1].isa;
    v85(v22, v90);
    v45 = v80;
  }

  v46 = OBJC_IVAR____TtC13findmylocated15LocationService_legacyLocationSubscriptions;
  v47 = v79;
  v48 = swift_beginAccess();
  v49 = *(v47 + v46);
  v50 = v89;
  if (!*(v49 + 16))
  {
    goto LABEL_19;
  }

  v51 = *(v47 + v46);

  v52 = sub_1001FDF60(v45);
  if ((v53 & 1) == 0)
  {

LABEL_19:
    __chkstk_darwin(v48);
    *(&v74 - 2) = a1;
    v68 = v45;
    v11 = sub_100384940(_swiftEmptyDictionarySingleton, sub_10037DC20, (&v74 - 4), v84);
    v69 = 0;
    v70 = 0;
LABEL_21:
    swift_beginAccess();

    v71 = *(v47 + v46);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v93 = *(v47 + v46);
    *(v47 + v46) = 0x8000000000000000;
    sub_100454430(v11, v69, v70, v68, isUniquelyReferenced_nonNull_native);
    *(v47 + v46) = v93;
    swift_endAccess();
  }

  v77 = v46;
  v54 = (*(v49 + 56) + 24 * v52);
  v11 = *v54;
  v55 = v54[1];
  v75 = v54[2];
  v76 = v55;

  v15 = *(v84 + 16);
  if (!v15)
  {
LABEL_20:
    v69 = v76;

    v47 = v79;
    v68 = v80;
    v46 = v77;
    v70 = v75;
    goto LABEL_21;
  }

  Priority = *(v92 + 16);
  a2 = v84 + ((*(v92 + 80) + 32) & ~*(v92 + 80));
  v84 = *(v92 + 72);
  v92 += 16;
  v82 = (v92 - 8);
  v83 = v78 + 1;
  while (1)
  {
    v59 = v5;
    (Priority)(v10, a2, v5);
    v5 = a1;
    v87(v50, a1, v14);
    a1 = swift_isUniquelyReferenced_nonNull_native();
    v94 = v11;
    v22 = sub_1001FD93C(v10);
    v61 = *(v11 + 16);
    v62 = (v60 & 1) == 0;
    v63 = v61 + v62;
    if (__OFADD__(v61, v62))
    {
      __break(1u);
      goto LABEL_23;
    }

    v64 = v60;
    if (*(v11 + 24) >= v63)
    {
      if ((a1 & 1) == 0)
      {
        sub_100205330();
        v11 = v94;
      }

      goto LABEL_16;
    }

    sub_100231874(v63, a1);
    v11 = v94;
    v65 = sub_1001FD93C(v10);
    if ((v64 & 1) != (v66 & 1))
    {
      break;
    }

    v22 = v65;
LABEL_16:
    a1 = v5;
    v5 = v59;
    if ((v64 & 1) == 0)
    {
      v67 = v81;
      (Priority)(v81, v10, v59);
      sub_100234290(v22, v67, &_swiftEmptySetSingleton, v11);
    }

    v56 = *(v11 + 56) + 8 * v22;
    v57 = v86;
    v50 = v89;
    sub_10002F5B4(v86, v89);
    v58 = v57;
    v14 = v90;
    v85(v58, v90);
    (*v82)(v10, v59);
    a2 += v84;
    v15 = (v15 - 1);
    if (!v15)
    {
      goto LABEL_20;
    }
  }

  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10038AF7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a6;
  v7[10] = a7;
  v7[7] = a4;
  v7[8] = a5;
  v7[5] = a2;
  v7[6] = a3;
  v7[4] = a1;
  v9 = type metadata accessor for Location();
  v7[11] = v9;
  v10 = *(v9 - 8);
  v7[12] = v10;
  v11 = *(v10 + 64) + 15;
  v7[13] = swift_task_alloc();
  v7[14] = swift_task_alloc();
  v12 = type metadata accessor for Handle();
  v7[15] = v12;
  v13 = *(v12 - 8);
  v7[16] = v13;
  v14 = *(v13 + 64) + 15;
  v7[17] = swift_task_alloc();
  v7[18] = swift_task_alloc();
  v15 = *(*(sub_10004B564(&qword_1005B2438, &qword_1004D68B0) - 8) + 64) + 15;
  v7[19] = swift_task_alloc();
  v7[20] = swift_task_alloc();
  v16 = *(*(sub_10004B564(&qword_1005B2480, &qword_1004D69F0) - 8) + 64) + 15;
  v7[21] = swift_task_alloc();
  v17 = sub_10004B564(&qword_1005B2488, &qword_1004D69F8);
  v7[22] = v17;
  v18 = *(v17 - 8);
  v7[23] = v18;
  v19 = *(v18 + 64) + 15;
  v7[24] = swift_task_alloc();
  v20 = type metadata accessor for ClientID();
  v7[25] = v20;
  v21 = *(v20 - 8);
  v7[26] = v21;
  v7[27] = *(v21 + 64);
  v7[28] = swift_task_alloc();
  v22 = type metadata accessor for LocationRequest();
  v7[29] = v22;
  v23 = *(v22 - 8);
  v7[30] = v23;
  v7[31] = *(v23 + 64);
  v7[32] = swift_task_alloc();
  v24 = *(*(sub_10004B564(&qword_1005A9690, &qword_1004C2A00) - 8) + 64) + 15;
  v7[33] = swift_task_alloc();

  return _swift_task_switch(sub_10038B2A4, a4, 0);
}

uint64_t sub_10038B2A4()
{
  v2 = v0[32];
  v1 = v0[33];
  v4 = v0[30];
  v3 = v0[31];
  v5 = v0[29];
  v28 = v0[28];
  v29 = v0[27];
  v24 = v0[26];
  v27 = v0[25];
  v30 = v0[10];
  v31 = v0[24];
  v25 = v0[8];
  v26 = v0[9];
  v6 = v0[6];
  v32 = v0[7];
  v33 = v0[5];
  v7 = type metadata accessor for TaskPriority();
  v21 = *(*(v7 - 8) + 56);
  v21(v1, 1, 1, v7);
  v20 = *(v4 + 16);
  v20(v2, v6, v5);
  v23 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v8 = (v3 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  v22 = *(v4 + 32);
  v22(v9 + v23, v2, v5);
  *(v9 + v8) = v32;

  sub_100384A24(v1, &unk_1004D70A8, v9);
  sub_100002CE0(v1, &qword_1005A9690, &qword_1004C2A00);
  v21(v1, 1, 1, v7);
  v20(v2, v25, v5);
  (*(v24 + 16))(v28, v26, v27);
  v10 = (v8 + 8 + *(v24 + 80)) & ~*(v24 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  v22(v11 + v23, v2, v5);
  *(v11 + v8) = v32;
  (*(v24 + 32))(v11 + v10, v28, v27);
  *(v11 + ((v29 + v10 + 7) & 0xFFFFFFFFFFFFFFF8)) = v30;

  sub_100384A24(v1, &unk_1004D70B8, v11);
  sub_100002CE0(v1, &qword_1005A9690, &qword_1004C2A00);
  v12 = *v33;
  sub_10004B564(&qword_1005B04E8, &qword_1004D67E0);
  TaskGroup.makeAsyncIterator()();
  v13 = sub_100016E78(&qword_1005B23E0, type metadata accessor for LocationService);
  v0[34] = v13;
  v0[35] = _swiftEmptyDictionarySingleton;
  v14 = v0[7];
  v15 = async function pointer to TaskGroup.Iterator.next(isolation:)[1];
  v16 = swift_task_alloc();
  v0[36] = v16;
  *v16 = v0;
  v16[1] = sub_10002086C;
  v17 = v0[24];
  v18 = v0[22];

  return TaskGroup.Iterator.next(isolation:)(v0 + 2, v14, v13, v18);
}

uint64_t sub_10038B66C()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_10038B77C(uint64_t a1)
{
  v2 = *(*v1 + 32);
  v4 = *v1;
  *(*v1 + 40) = a1;

  return _swift_task_switch(sub_10038B87C, 0, 0);
}

uint64_t sub_10038B87C()
{
  v1 = v0[3];
  v0[2] = v0[5];
  sub_10004B564(&qword_1005B2510, &qword_1004D70C0);
  CheckedContinuation.resume(returning:)();
  v2 = v0[1];

  return v2();
}

uint64_t sub_10038B908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[3] = a1;
  v6[4] = a4;
  return _swift_task_switch(sub_10038B92C, 0, 0);
}

uint64_t sub_10038B92C()
{
  v1 = *(v0 + 32);
  v2 = *(LocationRequest.toHandles.getter() + 16);

  if (v2)
  {
    v3 = swift_task_alloc();
    *(v0 + 56) = v3;
    *v3 = v0;
    v3[1] = sub_10038BA1C;
    v5 = *(v0 + 40);
    v4 = *(v0 + 48);
    v6 = *(v0 + 32);

    return sub_100352198(v6, v4);
  }

  else
  {
    **(v0 + 24) = sub_1002087C4(_swiftEmptyArrayStorage);
    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_10038BA1C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v7 = sub_10038BB64;
  }

  else
  {
    *(v4 + 72) = a1;
    v7 = sub_10038BB44;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10038BB64()
{
  v16 = v0;
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 64);
  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005E0B28);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 64);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136446210;
    *(v0 + 16) = v5;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v8 = String.init<A>(describing:)();
    v10 = sub_10000D01C(v8, v9, &v15);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "Encrypted location refresh failed with %{public}s", v6, 0xCu);
    sub_100004984(v7);
  }

  v11 = *(v0 + 64);
  v12 = sub_1002087C4(_swiftEmptyArrayStorage);

  **(v0 + 24) = v12;
  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_10038BD40(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v3[6] = *v2;
  v4 = *(*(sub_10004B564(&qword_1005A9188, &unk_1004D80D0) - 8) + 64) + 15;
  v3[7] = swift_task_alloc();
  v5 = type metadata accessor for Friend();
  v3[8] = v5;
  v6 = *(v5 - 8);
  v3[9] = v6;
  v7 = *(v6 + 64) + 15;
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v8 = type metadata accessor for Handle();
  v3[17] = v8;
  v9 = *(v8 - 8);
  v3[18] = v9;
  v10 = *(v9 + 64) + 15;
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();

  return _swift_task_switch(sub_10038BF2C, v2, 0);
}

uint64_t sub_10038BF2C()
{
  v15 = v0;
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = type metadata accessor for Logger();
  v0[23] = sub_10000A6F0(v2, qword_1005E0B28);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[17];
    v6 = v0[3];
    v7 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v7 = 136446723;
    *(v7 + 4) = sub_10000D01C(0xD00000000000001ELL, 0x80000001004E88C0, &v14);
    *(v7 + 12) = 2160;
    *(v7 + 14) = 1752392040;
    *(v7 + 22) = 2081;
    v8 = Array.description.getter();
    v10 = sub_10000D01C(v8, v9, &v14);

    *(v7 + 24) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s handles: %{private,mask.hash}s", v7, 0x20u);
    swift_arrayDestroy();
  }

  v11 = async function pointer to daemon.getter[1];
  v12 = swift_task_alloc();
  v0[24] = v12;
  *v12 = v0;
  v12[1] = sub_10038C154;

  return daemon.getter();
}

uint64_t sub_10038C154(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 192);
  v12 = *v1;
  *(v3 + 200) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 208) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for DataManager(0);
  v9 = sub_100016E78(&unk_1005AFA50, &type metadata accessor for Daemon);
  v10 = sub_100016E78(&qword_1005A90D0, type metadata accessor for DataManager);
  *v6 = v12;
  v6[1] = sub_10038C330;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_10038C330(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 208);
  v6 = *v2;
  v4[27] = a1;
  v4[28] = v1;

  if (v1)
  {
    v7 = v4[5];
    v8 = sub_10038D61C;
  }

  else
  {
    v9 = v4[25];

    v8 = sub_10038C468;
    v7 = a1;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_10038C468()
{
  sub_10004B564(&qword_1005A92A8, &qword_1004C4330);
  v1 = type metadata accessor for HandleType();
  v2 = *(v1 - 8);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  v0[29] = v5;
  *(v5 + 16) = xmmword_1004C1900;
  (*(v2 + 104))(v5 + v4, enum case for HandleType.following(_:), v1);
  v6 = swift_task_alloc();
  v0[30] = v6;
  *v6 = v0;
  v6[1] = sub_10038C5CC;
  v7 = v0[27];

  return sub_10001C61C(v5, 1);
}

uint64_t sub_10038C5CC(uint64_t a1)
{
  v2 = *(*v1 + 240);
  v3 = *(*v1 + 232);
  v4 = *(*v1 + 40);
  v6 = *v1;
  *(*v1 + 248) = a1;

  return _swift_task_switch(sub_10038C700, v4, 0);
}

uint64_t sub_10038C700()
{
  v1 = v0[3];
  v123 = *(v1 + 16);
  if (v123)
  {
    v2 = 0;
    v121 = v0[31];
    v3 = v0[18];
    v4 = v0[9];
    v5 = *(v3 + 16);
    v3 += 16;
    v120 = v5;
    v119 = v1 + ((*(v3 + 64) + 32) & ~*(v3 + 64));
    v118 = *(v3 + 56);
    v6 = (v3 - 8);
    v134 = (v4 + 8);
    v125 = v4;
    v127 = (v4 + 32);
    v116 = (v4 + 48);
    v117 = (v4 + 56);
    v7 = _swiftEmptyArrayStorage;
    do
    {
      v129 = v2;
      v131 = v7;
      v120(v0[22], v119 + v2 * v118, v0[17]);
      v8 = *(v121 + 16);
      if (v8)
      {
        v9 = v0[31] + ((*(v125 + 80) + 32) & ~*(v125 + 80));
        v10 = *(v125 + 72);
        v11 = *(v125 + 16);
        while (1)
        {
          v13 = v0[21];
          v12 = v0[22];
          v14 = v0[17];
          v11(v0[15], v9, v0[8]);
          Friend.handle.getter();
          v15 = static Handle.== infix(_:_:)();
          v16 = *v6;
          (*v6)(v13, v14);
          if (v15)
          {
            break;
          }

          (*v134)(v0[15], v0[8]);
          v9 += v10;
          if (!--v8)
          {
            goto LABEL_9;
          }
        }

        v17 = v0[7];
        v18 = v0[8];
        (*v127)(v17, v0[15], v18);
        (*v117)(v17, 0, 1, v18);
      }

      else
      {
LABEL_9:
        (*v117)(v0[7], 1, 1, v0[8]);
        v16 = *v6;
      }

      v20 = v0[7];
      v19 = v0[8];
      v16(v0[22], v0[17]);
      v7 = v131;
      if ((*v116)(v20, 1, v19) == 1)
      {
        sub_100002CE0(v0[7], &qword_1005A9188, &unk_1004D80D0);
      }

      else
      {
        v21 = *v127;
        (*v127)(v0[16], v0[7], v0[8]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_1001FCB80(0, v131[2] + 1, 1, v131);
        }

        v23 = v7[2];
        v22 = v7[3];
        if (v23 >= v22 >> 1)
        {
          v7 = sub_1001FCB80(v22 > 1, v23 + 1, 1, v7);
        }

        v24 = v0[16];
        v25 = v0[8];
        v7[2] = v23 + 1;
        v21(v7 + ((*(v125 + 80) + 32) & ~*(v125 + 80)) + *(v125 + 72) * v23, v24, v25);
      }

      v2 = v129 + 1;
    }

    while (v129 + 1 != v123);
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  v26 = v0[31];

  v126 = v7[2];
  if (v126)
  {
    v35 = 0;
    v36 = v0[9];
    v130 = (v36 + 8);
    v124 = (v36 + 32);
    v37 = _swiftEmptyArrayStorage;
    v132 = v7;
    do
    {
      if (v35 >= v7[2])
      {
        __break(1u);
        goto LABEL_64;
      }

      v128 = (*(v36 + 80) + 32) & ~*(v36 + 80);
      v38 = *(v36 + 72);
      v135 = *(v36 + 16);
      v135(v0[14], v7 + v128 + v38 * v35, v0[8]);
      v39 = Friend.isSecureLocationCapable.getter();
      v40 = v0[14];
      if (v39)
      {
        v41 = *v124;
        (*v124)(v0[13], v0[14], v0[8]);
        v139 = v37;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_100239354(0, v37[2] + 1, 1);
          v37 = v139;
        }

        v43 = v37[2];
        v42 = v37[3];
        if (v43 >= v42 >> 1)
        {
          sub_100239354(v42 > 1, v43 + 1, 1);
          v37 = v139;
        }

        v44 = v0[13];
        v45 = v0[8];
        v37[2] = v43 + 1;
        v27 = v41(v37 + v128 + v43 * v38, v44, v45);
        v7 = v132;
      }

      else
      {
        v27 = (*v130)(v0[14], v0[8]);
      }

      ++v35;
    }

    while (v126 != v35);
    v46 = v37[2];
    if (v46)
    {
      v47 = v0[18];
      v139 = _swiftEmptyArrayStorage;
      sub_10000E8E0(0, v46, 0);
      v48 = _swiftEmptyArrayStorage;
      v49 = v37 + v128;
      do
      {
        v50 = v0[20];
        v51 = v0[12];
        v52 = v0[8];
        v135(v51, v49, v52);
        Friend.handle.getter();
        (*v130)(v51, v52);
        v139 = v48;
        v54 = v48[2];
        v53 = v48[3];
        if (v54 >= v53 >> 1)
        {
          sub_10000E8E0(v53 > 1, v54 + 1, 1);
          v48 = v139;
        }

        v55 = v0[20];
        v56 = v0[17];
        v48[2] = v54 + 1;
        (*(v47 + 32))(v48 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v54, v55, v56);
        v49 += v38;
        --v46;
      }

      while (v46);

      v7 = v132;
    }

    else
    {

      v48 = _swiftEmptyArrayStorage;
    }

    v75 = 0;
    v122 = v48;
    v0[32] = v48;
    v76 = v7 + v128;
    v77 = _swiftEmptyArrayStorage;
    while (v75 < v7[2])
    {
      v135(v0[11], v76, v0[8]);
      v78 = Friend.isLegacyLocationCapable.getter();
      v79 = v0[11];
      if (v78)
      {
        v80 = *v124;
        (*v124)(v0[10], v0[11], v0[8]);
        v139 = v77;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_100239354(0, v77[2] + 1, 1);
          v77 = v139;
        }

        v82 = v77[2];
        v81 = v77[3];
        if (v82 >= v81 >> 1)
        {
          sub_100239354(v81 > 1, v82 + 1, 1);
          v77 = v139;
        }

        v83 = v0[10];
        v84 = v0[8];
        v77[2] = v82 + 1;
        v27 = v80(v77 + v128 + v82 * v38, v83, v84);
        v7 = v132;
      }

      else
      {
        v27 = (*v130)(v0[11], v0[8]);
      }

      ++v75;
      v76 += v38;
      if (v126 == v75)
      {

        v85 = v77[2];
        if (v85)
        {
          v86 = v0[18];
          v139 = _swiftEmptyArrayStorage;
          sub_10000E8E0(0, v85, 0);
          v87 = _swiftEmptyArrayStorage;
          v88 = v77 + v128;
          do
          {
            v89 = v0[19];
            v90 = v0[12];
            v91 = v0[8];
            v135(v90, v88, v91);
            Friend.handle.getter();
            (*v130)(v90, v91);
            v139 = v87;
            v93 = v87[2];
            v92 = v87[3];
            if (v93 >= v92 >> 1)
            {
              sub_10000E8E0(v92 > 1, v93 + 1, 1);
              v87 = v139;
            }

            v94 = v0[19];
            v95 = v0[17];
            v87[2] = v93 + 1;
            (*(v86 + 32))(v87 + ((*(v86 + 80) + 32) & ~*(v86 + 80)) + *(v86 + 72) * v93, v94, v95);
            v88 += v38;
            --v85;
          }

          while (v85);
        }

        else
        {

          v87 = _swiftEmptyArrayStorage;
        }

        v0[33] = v87;
        v96 = v0[23];

        v97 = v122;

        v98 = Logger.logObject.getter();
        v99 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v98, v99))
        {
          v100 = v0[17];
          v101 = swift_slowAlloc();
          v139 = swift_slowAlloc();
          *v101 = 136447235;
          *(v101 + 4) = sub_10000D01C(0xD00000000000001ELL, 0x80000001004E88C0, &v139);
          *(v101 + 12) = 2160;
          *(v101 + 14) = 1752392040;
          *(v101 + 22) = 2081;
          v102 = Array.description.getter();
          v104 = sub_10000D01C(v102, v103, &v139);

          *(v101 + 24) = v104;
          v97 = v122;
          *(v101 + 32) = 2160;
          *(v101 + 34) = 1752392040;
          *(v101 + 42) = 2081;
          v105 = Array.description.getter();
          v107 = sub_10000D01C(v105, v106, &v139);

          *(v101 + 44) = v107;
          _os_log_impl(&_mh_execute_header, v98, v99, "%{public}s\nlegacy location handles: %{private,mask.hash}s\nsecure location request: %{private,mask.hash}s", v101, 0x34u);
          swift_arrayDestroy();
        }

        v108 = v0[5];
        v109 = v0[6];
        v110 = v0[4];
        v111 = sub_10004B564(&qword_1005B04E8, &qword_1004D67E0);
        v112 = sub_100016E78(&qword_1005B23E0, type metadata accessor for LocationService);
        v113 = swift_task_alloc();
        v0[34] = v113;
        v113[2] = v87;
        v113[3] = v108;
        v113[4] = v97;
        v113[5] = v110;
        v113[6] = v109;
        v114 = async function pointer to withTaskGroup<A, B>(of:returning:isolation:body:)[1];
        v115 = swift_task_alloc();
        v0[35] = v115;
        *v115 = v0;
        v115[1] = sub_10038D3A4;
        v32 = &unk_1004D7050;
        v27 = (v0 + 2);
        v28 = v111;
        v29 = v111;
        v30 = v108;
        v31 = v112;
        v33 = v113;
        v34 = v111;

        return withTaskGroup<A, B>(of:returning:isolation:body:)(v27, v28, v29, v30, v31, v32, v33, v34);
      }
    }

LABEL_64:
    __break(1u);
    return withTaskGroup<A, B>(of:returning:isolation:body:)(v27, v28, v29, v30, v31, v32, v33, v34);
  }

  else
  {
    v57 = v0[23];

    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v139 = v61;
      *v60 = 136446210;
      *(v60 + 4) = sub_10000D01C(0xD00000000000001ELL, 0x80000001004E88C0, &v139);
      _os_log_impl(&_mh_execute_header, v58, v59, "%{public}s no valid friend currently sharing locations with me yet", v60, 0xCu);
      sub_100004984(v61);
    }

    v62 = v0[27];
    v137 = sub_1002087C4(_swiftEmptyArrayStorage);

    v64 = v0[21];
    v63 = v0[22];
    v66 = v0[19];
    v65 = v0[20];
    v68 = v0[15];
    v67 = v0[16];
    v70 = v0[13];
    v69 = v0[14];
    v71 = v0[11];
    v72 = v0[12];
    v133 = v0[10];
    v136 = v0[7];

    v73 = v0[1];

    return v73(v137);
  }
}

uint64_t sub_10038D3A4()
{
  v1 = *(*v0 + 280);
  v2 = *(*v0 + 272);
  v3 = *(*v0 + 264);
  v4 = *(*v0 + 256);
  v5 = *(*v0 + 40);
  v7 = *v0;

  return _swift_task_switch(sub_10038D510, v5, 0);
}

uint64_t sub_10038D510()
{
  v1 = v0[27];

  v3 = v0[21];
  v2 = v0[22];
  v5 = v0[19];
  v4 = v0[20];
  v7 = v0[15];
  v6 = v0[16];
  v9 = v0[13];
  v8 = v0[14];
  v10 = v0[11];
  v11 = v0[12];
  v14 = v0[10];
  v15 = v0[7];
  v16 = v0[2];

  v12 = v0[1];

  return v12(v16);
}

uint64_t sub_10038D61C()
{
  v1 = v0[25];
  v2 = v0[21];
  v3 = v0[22];
  v5 = v0[19];
  v4 = v0[20];
  v7 = v0[15];
  v6 = v0[16];
  v9 = v0[13];
  v8 = v0[14];
  v10 = v0[12];
  v14 = v0[11];
  v15 = v0[10];
  v16 = v0[7];

  v11 = v0[1];
  v12 = v0[28];

  return v11();
}

uint64_t sub_10038D724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a6;
  v7[10] = a7;
  v7[7] = a4;
  v7[8] = a5;
  v7[5] = a2;
  v7[6] = a3;
  v7[4] = a1;
  v9 = type metadata accessor for Location();
  v7[11] = v9;
  v10 = *(v9 - 8);
  v7[12] = v10;
  v11 = *(v10 + 64) + 15;
  v7[13] = swift_task_alloc();
  v7[14] = swift_task_alloc();
  v12 = type metadata accessor for Handle();
  v7[15] = v12;
  v13 = *(v12 - 8);
  v7[16] = v13;
  v14 = *(v13 + 64) + 15;
  v7[17] = swift_task_alloc();
  v7[18] = swift_task_alloc();
  v15 = *(*(sub_10004B564(&qword_1005B2438, &qword_1004D68B0) - 8) + 64) + 15;
  v7[19] = swift_task_alloc();
  v7[20] = swift_task_alloc();
  v16 = *(*(sub_10004B564(&qword_1005B2480, &qword_1004D69F0) - 8) + 64) + 15;
  v7[21] = swift_task_alloc();
  v17 = sub_10004B564(&qword_1005B2488, &qword_1004D69F8);
  v7[22] = v17;
  v18 = *(v17 - 8);
  v7[23] = v18;
  v19 = *(v18 + 64) + 15;
  v7[24] = swift_task_alloc();
  v20 = type metadata accessor for ClientID();
  v7[25] = v20;
  v21 = *(v20 - 8);
  v7[26] = v21;
  v7[27] = *(v21 + 64);
  v7[28] = swift_task_alloc();
  v22 = *(*(sub_10004B564(&qword_1005A9690, &qword_1004C2A00) - 8) + 64) + 15;
  v7[29] = swift_task_alloc();

  return _swift_task_switch(sub_10038D9E8, a4, 0);
}

uint64_t sub_10038D9E8()
{
  v1 = v0[29];
  v2 = v0[26];
  v23 = v0[28];
  v24 = v0[27];
  v3 = v0[10];
  v20 = v3;
  v21 = v0[9];
  v22 = v0[25];
  v4 = v0[7];
  v25 = v0[8];
  v26 = v0[24];
  v5 = v0[5];
  v6 = v0[6];
  v7 = type metadata accessor for TaskPriority();
  v19 = *(*(v7 - 8) + 56);
  v19(v1, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v6;
  v8[5] = v4;
  v8[6] = v3;

  sub_100384A24(v1, &unk_1004D7060, v8);
  sub_100002CE0(v1, &qword_1005A9690, &qword_1004C2A00);
  v19(v1, 1, 1, v7);
  (*(v2 + 16))(v23, v21, v22);
  v9 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v10 = swift_allocObject();
  *(v10 + 2) = 0;
  *(v10 + 3) = 0;
  *(v10 + 4) = v25;
  *(v10 + 5) = v4;
  (*(v2 + 32))(&v10[v9], v23, v22);
  *&v10[(v24 + v9 + 7) & 0xFFFFFFFFFFFFFFF8] = v20;

  sub_100384A24(v1, &unk_1004D7070, v10);
  sub_100002CE0(v1, &qword_1005A9690, &qword_1004C2A00);
  v11 = *v5;
  sub_10004B564(&qword_1005B04E8, &qword_1004D67E0);
  TaskGroup.makeAsyncIterator()();
  v12 = sub_100016E78(&qword_1005B23E0, type metadata accessor for LocationService);
  v0[30] = v12;
  v0[31] = _swiftEmptyDictionarySingleton;
  v13 = v0[7];
  v14 = async function pointer to TaskGroup.Iterator.next(isolation:)[1];
  v15 = swift_task_alloc();
  v0[32] = v15;
  *v15 = v0;
  v15[1] = sub_10038DCFC;
  v16 = v0[24];
  v17 = v0[22];

  return TaskGroup.Iterator.next(isolation:)(v0 + 2, v13, v12, v17);
}

uint64_t sub_10038DCFC()
{
  v1 = *(*v0 + 256);
  v2 = *(*v0 + 56);
  v4 = *v0;

  return _swift_task_switch(sub_10038DE0C, v2, 0);
}

uint64_t sub_10038DE0C()
{
  v1 = v0[2];
  v2 = v0[31];
  if (v1)
  {
    v3 = v0[31];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v0[3] = v2;
    v80 = v1 + 64;
    v5 = -1;
    v6 = -1 << *(v1 + 32);
    if (-v6 < 64)
    {
      v5 = ~(-1 << -v6);
    }

    v7 = v5 & *(v1 + 64);
    v79 = (63 - v6) >> 6;
    v8 = v0[31];
    v81 = v1;

    for (i = 0; ; i = v87)
    {
      v90 = v8;
      v88 = isUniquelyReferenced_nonNull_native;
      if (!v7)
      {
        if (v79 <= i + 1)
        {
          v15 = i + 1;
        }

        else
        {
          v15 = v79;
        }

        while (1)
        {
          v14 = i + 1;
          if (__OFADD__(i, 1))
          {
            break;
          }

          if (v14 >= v79)
          {
            v87 = v15 - 1;
            v62 = v0[20];
            v63 = sub_10004B564(&qword_1005B2440, &qword_1004D68C0);
            (*(*(v63 - 8) + 56))(v62, 1, 1, v63);
            v7 = 0;
            goto LABEL_16;
          }

          v7 = *(v80 + 8 * v14);
          ++i;
          if (v7)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
        return TaskGroup.Iterator.next(isolation:)(v9, v10, v11, v12);
      }

      v14 = i;
LABEL_15:
      v16 = v0[20];
      v17 = v0[15];
      v18 = v0[16];
      v19 = v0[14];
      v20 = v0[12];
      v83 = v0[11];
      v86 = v0[18];
      v21 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v22 = v21 | (v14 << 6);
      v23 = *(v81 + 48) + *(v18 + 72) * v22;
      (*(v18 + 16))();
      (*(v20 + 16))(v19, *(v81 + 56) + *(v20 + 72) * v22, v83);
      v24 = sub_10004B564(&qword_1005B2440, &qword_1004D68C0);
      v25 = *(v24 + 48);
      (*(v18 + 32))(v16, v86, v17);
      (*(v20 + 32))(v16 + v25, v19, v83);
      (*(*(v24 - 8) + 56))(v16, 0, 1, v24);
      v87 = v14;
LABEL_16:
      v26 = v0[19];
      sub_1000176A8(v0[20], v26, &qword_1005B2438, &qword_1004D68B0);
      v27 = sub_10004B564(&qword_1005B2440, &qword_1004D68C0);
      v28 = (*(*(v27 - 8) + 48))(v26, 1, v27);
      v29 = v0[21];
      if (v28 == 1)
      {
        v30 = sub_10004B564(&qword_1005B01E0, &qword_1004D1768);
        (*(*(v30 - 8) + 56))(v29, 1, 1, v30);
      }

      else
      {
        v31 = v0[19];
        v33 = v0[15];
        v32 = v0[16];
        v34 = v0[12];
        v84 = v0[11];
        v35 = *(v27 + 48);
        v36 = sub_10004B564(&qword_1005B01E0, &qword_1004D1768);
        v37 = *(v36 + 48);
        (*(v32 + 16))(v29, v31, v33);
        (*(v34 + 16))(v29 + v37, v31 + v35, v84);
        sub_100002CE0(v31, &qword_1005B2440, &qword_1004D68C0);
        (*(*(v36 - 8) + 56))(v29, 0, 1, v36);
      }

      v38 = v0[21];
      v39 = sub_10004B564(&qword_1005B01E0, &qword_1004D1768);
      if ((*(*(v39 - 8) + 48))(v38, 1, v39) == 1)
      {

        v0[31] = v90;
        v64 = v0[30];
        v65 = v0[7];
        v66 = async function pointer to TaskGroup.Iterator.next(isolation:)[1];
        v67 = swift_task_alloc();
        v0[32] = v67;
        *v67 = v0;
        v67[1] = sub_10038DCFC;
        v68 = v0[24];
        v12 = v0[22];
        v9 = (v0 + 2);
        v10 = v65;
        v11 = v64;

        return TaskGroup.Iterator.next(isolation:)(v9, v10, v11, v12);
      }

      v40 = v0[17];
      v42 = v0[12];
      v41 = v0[13];
      v43 = v0[11];
      v44 = *(v39 + 48);
      v82 = *(v0[16] + 32);
      v82(v40, v38, v0[15]);
      v85 = *(v42 + 32);
      v85(v41, v38 + v44, v43);
      v45 = sub_1001FD93C(v40);
      v46 = v90[2];
      v47 = (v10 & 1) == 0;
      v9 = v46 + v47;
      if (__OFADD__(v46, v47))
      {
        goto LABEL_40;
      }

      v48 = v10;
      if (v90[3] >= v9)
      {
        if ((v88 & 1) == 0)
        {
          sub_1002034E4();
        }
      }

      else
      {
        v49 = v0[17];
        sub_10022D91C(v9, v88 & 1);
        v50 = v0[3];
        v51 = sub_1001FD93C(v49);
        if ((v48 & 1) != (v52 & 1))
        {
          v78 = v0[15];

          return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        }

        v45 = v51;
      }

      v8 = v0[3];
      v54 = v0[16];
      v53 = v0[17];
      v55 = v0[15];
      v57 = v0[12];
      v56 = v0[13];
      v58 = v0[11];
      if (v48)
      {
        (*(v54 + 8))(v0[17], v0[15]);
        v9 = (*(v57 + 40))(v8[7] + *(v57 + 72) * v45, v56, v58);
      }

      else
      {
        v8[(v45 >> 6) + 8] |= 1 << v45;
        v82(v8[6] + *(v54 + 72) * v45, v53, v55);
        v9 = (v85)(v8[7] + *(v57 + 72) * v45, v56, v58);
        v59 = v8[2];
        v60 = __OFADD__(v59, 1);
        v61 = v59 + 1;
        if (v60)
        {
          goto LABEL_41;
        }

        v8[2] = v61;
      }

      isUniquelyReferenced_nonNull_native = 1;
    }
  }

  v70 = v0[28];
  v69 = v0[29];
  v71 = v0[21];
  v73 = v0[19];
  v72 = v0[20];
  v74 = v0[17];
  v89 = v0[14];
  v91 = v0[13];
  v75 = v0[4];
  (*(v0[23] + 8))(v0[24], v0[22]);
  *v75 = v2;

  v76 = v0[1];

  return v76();
}

uint64_t sub_10038E5C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[3] = a1;
  v6 = type metadata accessor for Location();
  v5[6] = v6;
  v7 = *(v6 - 8);
  v5[7] = v7;
  v8 = *(v7 + 64) + 15;
  v5[8] = swift_task_alloc();
  v9 = type metadata accessor for Handle();
  v5[9] = v9;
  v10 = *(v9 - 8);
  v5[10] = v10;
  v11 = *(v10 + 64) + 15;
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  v12 = *(*(sub_10004B564(&qword_1005B2438, &qword_1004D68B0) - 8) + 64) + 15;
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();

  return _swift_task_switch(sub_10038E73C, 0, 0);
}

uint64_t sub_10038E73C()
{
  if (*(*(v0 + 32) + 16))
  {
    v1 = swift_task_alloc();
    *(v0 + 128) = v1;
    *v1 = v0;
    v1[1] = sub_10038E878;
    v2 = *(v0 + 32);
    v3 = *(v0 + 40);

    return sub_10037F790(v2);
  }

  else
  {
    v5 = sub_1002087C4(_swiftEmptyArrayStorage);
    v7 = *(v0 + 112);
    v6 = *(v0 + 120);
    v9 = *(v0 + 96);
    v8 = *(v0 + 104);
    v10 = *(v0 + 88);
    v11 = *(v0 + 64);
    **(v0 + 24) = v5;

    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_10038E878(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 128);
  v7 = *v2;
  *(v3 + 136) = a1;
  *(v3 + 144) = v1;

  if (v1)
  {
    v5 = sub_10038EF48;
  }

  else
  {
    v5 = sub_10038E98C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10038E98C()
{
  v64 = v0;
  v1 = *(v0 + 80);
  v2 = *(v0 + 136);
  v5 = *(v2 + 64);
  v4 = v2 + 64;
  v3 = v5;
  v6 = -1;
  v7 = -1 << *(*(v0 + 136) + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & v3;
  v49 = (63 - v7) >> 6;
  v60 = (v1 + 16);
  v59 = (v1 + 32);
  v50 = *(v0 + 56);
  v51 = *(v0 + 80);
  v55 = (v1 + 8);
  v52 = *(v0 + 136);

  v10 = 0;
  v56 = v4;
  while (v8)
  {
    v12 = v10;
LABEL_16:
    v15 = *(v0 + 112);
    v61 = *(v0 + 104);
    v16 = *(v0 + 64);
    v58 = *(v0 + 72);
    v17 = *(v0 + 48);
    v18 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v19 = v18 | (v12 << 6);
    v20 = *(v52 + 48) + *(v51 + 72) * v19;
    (*(v51 + 16))();
    (*(v50 + 16))(v16, *(v52 + 56) + *(v50 + 72) * v19, v17);
    v21 = sub_10004B564(&qword_1005B2440, &qword_1004D68C0);
    v22 = *(v21 + 48);
    (*(v51 + 32))(v15, v61, v58);
    (*(v50 + 32))(v15 + v22, v16, v17);
    (*(*(v21 - 8) + 56))(v15, 0, 1, v21);
LABEL_17:
    v23 = *(v0 + 120);
    sub_1000176A8(*(v0 + 112), v23, &qword_1005B2438, &qword_1004D68B0);
    v24 = sub_10004B564(&qword_1005B2440, &qword_1004D68C0);
    if ((*(*(v24 - 8) + 48))(v23, 1, v24) == 1)
    {
      v41 = *(v0 + 136);

      v43 = *(v0 + 112);
      v42 = *(v0 + 120);
      v45 = *(v0 + 96);
      v44 = *(v0 + 104);
      v46 = *(v0 + 88);
      v47 = *(v0 + 64);
      **(v0 + 24) = *(v0 + 136);

      v48 = *(v0 + 8);

      return v48();
    }

    (*v59)(*(v0 + 96), *(v0 + 120), *(v0 + 72));
    if (qword_1005A84C8 != -1)
    {
      swift_once();
    }

    v26 = *(v0 + 88);
    v25 = *(v0 + 96);
    v27 = *(v0 + 72);
    v28 = type metadata accessor for Logger();
    sub_10000A6F0(v28, qword_1005E0B28);
    (*v60)(v26, v25, v27);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    v31 = os_log_type_enabled(v29, v30);
    v32 = *(v0 + 88);
    v62 = *(v0 + 96);
    v33 = *(v0 + 72);
    if (v31)
    {
      v54 = v30;
      v34 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v63 = v57;
      *v34 = 141558275;
      *(v34 + 4) = 1752392040;
      *(v34 + 12) = 2081;
      v53 = Handle.identifier.getter();
      v36 = v35;
      v37 = *v55;
      (*v55)(v32, v33);
      v38 = sub_10000D01C(v53, v36, &v63);

      *(v34 + 14) = v38;
      _os_log_impl(&_mh_execute_header, v29, v54, "Get legacy latest location for handle: %{private,mask.hash}s", v34, 0x16u);
      sub_100004984(v57);

      v37(v62, v33);
    }

    else
    {

      v11 = *v55;
      (*v55)(v32, v33);
      v11(v62, v33);
    }

    result = (*(v50 + 8))(*(v0 + 120) + *(v24 + 48), *(v0 + 48));
    v4 = v56;
  }

  if (v49 <= v10 + 1)
  {
    v13 = v10 + 1;
  }

  else
  {
    v13 = v49;
  }

  v14 = v13 - 1;
  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= v49)
    {
      v39 = *(v0 + 112);
      v40 = sub_10004B564(&qword_1005B2440, &qword_1004D68C0);
      (*(*(v40 - 8) + 56))(v39, 1, 1, v40);
      v8 = 0;
      v10 = v14;
      goto LABEL_17;
    }

    v8 = *(v4 + 8 * v12);
    ++v10;
    if (v8)
    {
      v10 = v12;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10038EF48()
{
  v22 = v0;
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 144);
  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005E0B28);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 144);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v21 = v7;
    *v6 = 136446210;
    *(v0 + 16) = v5;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v8 = String.init<A>(describing:)();
    v10 = sub_10000D01C(v8, v9, &v21);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "Legacy location refresh failed with %{public}s", v6, 0xCu);
    sub_100004984(v7);
  }

  v11 = *(v0 + 144);
  v12 = sub_1002087C4(_swiftEmptyArrayStorage);

  v14 = *(v0 + 112);
  v13 = *(v0 + 120);
  v16 = *(v0 + 96);
  v15 = *(v0 + 104);
  v17 = *(v0 + 88);
  v18 = *(v0 + 64);
  **(v0 + 24) = v12;

  v19 = *(v0 + 8);

  return v19();
}