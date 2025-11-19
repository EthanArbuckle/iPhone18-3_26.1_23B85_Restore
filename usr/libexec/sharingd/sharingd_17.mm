void sub_1003365C8()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_osTransaction;
  if (*(v0 + OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_osTransaction))
  {
    swift_unknownObjectRetain();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Clearing Send OSTransaction", v5, 2u);
    }

    swift_unknownObjectRelease();
    v6 = *(v1 + v2);
    *(v1 + v2) = 0;
    swift_unknownObjectRelease();
  }

  v7 = v1 + OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_powerAssertion;
  if ((*(v1 + OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_powerAssertion + 4) & 1) == 0)
  {
    v8 = *v7;
    if (*v7)
    {
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v9, v10, "Clearing Send Power Assertion", v11, 2u);
      }

      IOPMAssertionRelease(v8);
      *v7 = 0;
      *(v7 + 4) = 1;
    }
  }
}

uint64_t sub_100336748(double a1)
{
  v3 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v26 - v5;
  v7 = type metadata accessor for SFAirDrop.DisplayPriority();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SFAirDropSend.Transfer();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_displayPriorityReturnToNormalTask;
  if (*(v1 + OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_displayPriorityReturnToNormalTask))
  {
    v18 = *(v1 + OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_displayPriorityReturnToNormalTask);

    Task.cancel()();
  }

  (*(v8 + 104))(v11, enum case for SFAirDrop.DisplayPriority.high(_:), v7);
  sub_1003353AC(v11, v16);
  (*(v8 + 8))(v11, v7);
  (*(v13 + 8))(v16, v12);
  v19 = type metadata accessor for TaskPriority();
  v20 = *(*(v19 - 8) + 56);
  v20(v6, 1, 1, v19);
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v22 = swift_allocObject();
  *(v22 + 16) = a1;
  *(v22 + 24) = v21;
  v23 = static Task<>.noThrow(priority:operation:)();

  sub_100005508(v6, &qword_100976160, &qword_1007F8770);
  v24 = *(v1 + v17);
  *(v1 + v17) = v23;

  v20(v6, 1, 1, v19);

  static Task<>.noThrow(priority:operation:)();

  return sub_100005508(v6, &qword_100976160, &qword_1007F8770);
}

uint64_t sub_100336AD4(double a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 48) = a3;
  *(v3 + 40) = a1;
  v4 = type metadata accessor for SFAirDrop.DisplayPriority();
  *(v3 + 56) = v4;
  v5 = *(v4 - 8);
  *(v3 + 64) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 72) = swift_task_alloc();
  v7 = *(*(sub_10028088C(&qword_100976460, &qword_1007F9730) - 8) + 64) + 15;
  *(v3 + 80) = swift_task_alloc();
  v8 = type metadata accessor for ContinuousClock();
  *(v3 + 88) = v8;
  v9 = *(v8 - 8);
  *(v3 + 96) = v9;
  v10 = *(v9 + 64) + 15;
  *(v3 + 104) = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v11 = static AirDropActor.shared;
  *(v3 + 112) = static AirDropActor.shared;

  return _swift_task_switch(sub_100336C68, v11, 0);
}

uint64_t sub_100336C68()
{
  v1 = v0[13];
  v2 = v0[5];
  v3 = static Duration.seconds(_:)();
  v5 = v4;
  static Clock<>.continuous.getter();
  v6 = swift_task_alloc();
  v0[15] = v6;
  *v6 = v0;
  v6[1] = sub_100336D44;
  v7 = v0[13];

  return sub_10002ED10(v3, v5, 0, 0, 1);
}

uint64_t sub_100336D44()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *(*v1 + 104);
  v5 = *(*v1 + 96);
  v6 = *(*v1 + 88);
  v7 = *v1;
  *(*v1 + 128) = v0;

  (*(v5 + 8))(v4, v6);
  v8 = *(v2 + 112);
  if (v0)
  {
    v9 = sub_100337038;
  }

  else
  {
    v9 = sub_100336ECC;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_100336ECC()
{
  v1 = v0[6];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v5 = v0[9];
    v4 = v0[10];
    v6 = v0[7];
    v7 = v0[8];
    (*(v7 + 104))(v5, enum case for SFAirDrop.DisplayPriority.normal(_:), v6);
    sub_1003353AC(v5, v4);

    (*(v7 + 8))(v5, v6);
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = v0[10];
  v10 = type metadata accessor for SFAirDropSend.Transfer();
  (*(*(v10 - 8) + 56))(v9, v8, 1, v10);
  sub_100005508(v9, &qword_100976460, &qword_1007F9730);
  v11 = v0[13];
  v12 = v0[9];
  v13 = v0[10];

  v14 = v0[1];

  return v14();
}

uint64_t sub_100337038()
{
  v1 = v0[16];

  v2 = v0[13];
  v3 = v0[9];
  v4 = v0[10];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1003370B4(uint64_t a1, uint64_t a2)
{
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  *(v2 + 16) = static AirDropActor.shared;
  v4 = async function pointer to Task.result.getter[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  *v5 = v2;
  v5[1] = sub_1003371B0;

  return Task.result.getter(v2 + 32, a2, &type metadata for () + 8, &type metadata for Never, &protocol witness table for Never);
}

uint64_t sub_1003371B0()
{
  v1 = *(*v0 + 24);
  v2 = *(*v0 + 16);
  v4 = *v0;

  return _swift_task_switch(sub_1003372C0, v2, 0);
}

id sub_100337304()
{
  v2.receiver = v0;
  v2.super_class = _s10BaseRunnerCMa_0();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t _s10BaseRunnerCMa_0()
{
  result = qword_100978E28;
  if (!qword_100978E28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100337520()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = type metadata accessor for SFAirDropSend.Request();
    if (v2 <= 0x3F)
    {
      v5 = *(result - 8) + 64;
      result = type metadata accessor for SFAirDropSend.Transfer();
      if (v3 <= 0x3F)
      {
        v6 = *(result - 8) + 64;
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

void sub_100337680()
{
  v1 = *(v0 + OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_subject);
  CurrentValueSubject.send(completion:)();
  sub_1003365C8();
}

uint64_t sub_1003376CC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100005C00;

  return sub_100336AD4(v4, a1, v5);
}

uint64_t sub_10033777C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100005C04;

  return sub_1003370B4(a1, v1);
}

uint64_t sub_100337818(uint64_t a1, uint64_t a2)
{
  v4 = sub_10028088C(&qword_100977DC0, &unk_1007FB320);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100337888(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1003378D0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C00;

  return sub_100334D18(a1, v4, v5, v6);
}

uint64_t sub_100337988()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_100978E38);
  sub_10000C4AC(v0, qword_100978E38);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100337A64(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = type metadata accessor for NWEndpoint();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (NWEndpoint.nw.getter())
  {
    if (a2())
    {
      v9 = String.init(cString:)();
      v11 = v10;
      swift_unknownObjectRelease();
      v12 = HIBYTE(v11) & 0xF;
      if ((v11 & 0x2000000000000000) == 0)
      {
        v12 = v9 & 0xFFFFFFFFFFFFLL;
      }

      if (v12)
      {
        return v9;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
    if (qword_100973630 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000C4AC(v14, qword_100978E38);
    (*(v5 + 16))(v8, a1, v4);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v24 = v18;
      *v17 = 136315138;
      v19 = NWEndpoint.debugDescription.getter();
      v21 = v20;
      (*(v5 + 8))(v8, v4);
      v22 = sub_10000C4E4(v19, v21, &v24);

      *(v17 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v15, v16, "Could not convert endpoint to nw_endpoint %s", v17, 0xCu);
      sub_10000C60C(v18);
    }

    else
    {

      (*(v5 + 8))(v8, v4);
    }
  }

  return 0;
}

uint64_t sub_100337D08()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_100978E50);
  v1 = sub_10000C4AC(v0, qword_100978E50);
  if (qword_1009736D0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A08B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100337DD0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = type metadata accessor for SFAirDropReceive.AskRequest();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();
  v9 = type metadata accessor for URL();
  v2[10] = v9;
  v10 = *(v9 - 8);
  v2[11] = v10;
  v11 = *(v10 + 64) + 15;
  v2[12] = swift_task_alloc();
  v12 = type metadata accessor for SFAirDrop.TransferType();
  v2[13] = v12;
  v13 = *(v12 - 8);
  v2[14] = v13;
  v14 = *(v13 + 64) + 15;
  v2[15] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v15 = static AirDropActor.shared;

  return _swift_task_switch(sub_100337FDC, v15, 0);
}

uint64_t sub_100337FDC()
{
  v60 = v0;
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  v4 = v0[2];
  SFAirDropReceive.AskRequest.type.getter();
  LOBYTE(v4) = SFAirDrop.TransferType.isLinks.getter();
  (*(v2 + 8))(v1, v3);
  if (v4)
  {
    v5 = v0[11];
    v6 = v0[2];
    v7 = SFAirDropReceive.AskRequest.urlItems.getter();
    v8 = 0;
    v9 = v7 + 56;
    v10 = -1;
    v11 = -1 << *(v7 + 32);
    if (-v11 < 64)
    {
      v10 = ~(-1 << -v11);
    }

    v12 = v10 & *(v7 + 56);
    v13 = (63 - v11) >> 6;
    v57 = v7;
    while (v12)
    {
LABEL_10:
      v15 = v0[12];
      v16 = v0[10];
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      (*(v5 + 16))(v15, *(v57 + 48) + *(v5 + 72) * (v17 | (v8 << 6)), v16);
      URL.scheme.getter();
      v19 = v18;
      (*(v5 + 8))(v15, v16);
      if (v19)
      {
        String.lowercased()();

        v20 = String._bridgeToObjectiveC()();

        MyFriendsLink = SFIsFindMyFriendsLink();

        if ((MyFriendsLink & 1) == 0)
        {

          goto LABEL_13;
        }
      }
    }

    while (1)
    {
      v14 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v14 >= v13)
      {

        v23 = objc_allocWithZone(LSApplicationRecord);
        v24 = sub_10066F3F8(0xD000000000000010, 0x800000010078C590, 1);
        v45 = v0[3];
        v46 = *(v45 + 16);
        *(v45 + 16) = v24;

        goto LABEL_18;
      }

      v12 = *(v9 + 8 * v14);
      ++v8;
      if (v12)
      {
        v8 = v14;
        goto LABEL_10;
      }
    }

    __break(1u);
    swift_once();
    v26 = v0[8];
    v25 = v0[9];
    v27 = v0[7];
    v28 = v0[2];
    v29 = type metadata accessor for Logger();
    sub_10000C4AC(v29, qword_100978E50);
    (*(v26 + 16))(v25, v28, v27);
    swift_errorRetain();
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();

    v32 = os_log_type_enabled(v30, v31);
    v33 = v0[8];
    v34 = v0[9];
    v35 = v0[7];
    if (v32)
    {
      v37 = v0[5];
      v36 = v0[6];
      v38 = v0[4];
      v56 = v31;
      v39 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v59 = v58;
      *v39 = 136315394;
      v54 = v30;
      SFAirDropReceive.AskRequest.id.getter();
      sub_1002891F4();
      v53 = dispatch thunk of CustomStringConvertible.description.getter();
      v40 = v35;
      v42 = v41;
      (*(v37 + 8))(v36, v38);
      (*(v33 + 8))(v34, v40);
      v43 = sub_10000C4E4(v53, v42, &v59);

      *(v39 + 4) = v43;
      *(v39 + 12) = 2112;
      swift_errorRetain();
      v44 = _swift_stdlib_bridgeErrorToNSError();
      *(v39 + 14) = v44;
      *v55 = v44;
      _os_log_impl(&_mh_execute_header, v54, v56, "Failed to get FindMy app for ask request %s: %@", v39, 0x16u);
      sub_100005508(v55, &qword_100975400, &qword_1007F65D0);

      sub_10000C60C(v58);
    }

    else
    {

      (*(v33 + 8))(v34, v35);
    }

LABEL_18:
    v22 = *(v0[3] + 16) != 0;
  }

  else
  {
LABEL_13:
    v22 = 0;
  }

  v47 = v0[15];
  v48 = v0[12];
  v49 = v0[9];
  v50 = v0[6];

  v51 = v0[1];

  return v51(v22);
}

uint64_t sub_1003384B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v33 - v10;
  v12 = *(a1 + 16);
  v36 = *(v2 + 16);
  v13 = v36;
  v34 = a1;
  v35 = v12;
  if (v12)
  {
    v15 = *(v5 + 16);
    v14 = v5 + 16;
    v39 = (*(v14 + 64) + 32) & ~*(v14 + 64);
    v16 = a1 + v39;
    v17 = *(v14 + 56);
    v42 = (v14 + 16);
    v43 = v15;
    v38 = (v14 - 8);
    v18 = _swiftEmptyArrayStorage;
    v40 = v9;
    v41 = v14;
    v15(v11, a1 + v39, v4);
    while (1)
    {
      if (URL.isFileURL.getter())
      {
        (*v38)(v11, v4);
      }

      else
      {
        v19 = *v42;
        (*v42)(v9, v11, v4);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v44 = v18;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10028FAB4(0, v18[2] + 1, 1);
          v18 = v44;
        }

        v22 = v18[2];
        v21 = v18[3];
        if (v22 >= v21 >> 1)
        {
          sub_10028FAB4(v21 > 1, v22 + 1, 1);
          v18 = v44;
        }

        v18[2] = v22 + 1;
        v23 = v18 + v39 + v22 * v17;
        v9 = v40;
        v19(v23, v40, v4);
      }

      v16 += v17;
      if (!--v12)
      {
        break;
      }

      v43(v11, v16, v4);
    }
  }

  else
  {
    v18 = _swiftEmptyArrayStorage;
  }

  v24 = v18[2];
  if (v24)
  {
    if (v24 != v35)
    {
      if (qword_1009737B0 != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for Logger();
      sub_10000C4AC(v25, qword_10097B528);
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&_mh_execute_header, v26, v27, "Asked to view mixed files and links, only viewing links", v28, 2u);
      }
    }

    v44 = 0;
    v29 = swift_allocObject();
    v30 = v36;
    *(v29 + 16) = v18;
    *(v29 + 24) = v30;
  }

  else
  {

    v44 = 0;
    v31 = swift_allocObject();
    *(v31 + 16) = v36;
    *(v31 + 24) = 1;
    *(v31 + 32) = v34;
  }

  return SFProgressTask.init(_:initialProgress:operation:file:line:)();
}

uint64_t sub_100338924@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SDAirDropContentHandlerFindMyFriendsLinks();
  result = swift_allocObject();
  *(result + 16) = 0;
  *a1 = result;
  return result;
}

uint64_t sub_10033895C(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100289000;

  return sub_100337DD0(a1);
}

void sub_1003389F4(uint64_t a1, char a2)
{
  sub_1003D8D18(&off_1008D6DB0, a2);
  sub_100005508(&unk_1008D6DD0, &qword_100981D40, &unk_1007FA6C0);
  v2 = String._bridgeToObjectiveC()();
  v3 = SFLocalizedStringForKey();

  if (v3)
  {

    static String._unconditionallyBridgeFromObjectiveC(_:)();

    static String.localizedStringWithFormat(_:_:)();
  }

  else
  {
    __break(1u);
  }
}

__n128 sub_100338AE0(uint64_t a1, uint64_t a2)
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

uint64_t sub_100338B04(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 72);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100338B4C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 72) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100338BC4()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

unint64_t sub_100338CD0@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100339300(*a1);
  *a2 = result;
  return result;
}

void sub_100338D00(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEF4449656C707041;
  v4 = 0x7265766965636552;
  v5 = 0xD000000000000010;
  v6 = 0x80000001007884A0;
  v7 = 0x80000001007884C0;
  if (v2 != 4)
  {
    v7 = 0x80000001007884E0;
  }

  if (v2 != 3)
  {
    v5 = 0xD000000000000013;
    v6 = v7;
  }

  v8 = 0xD000000000000010;
  v9 = 0x8000000100788460;
  if (v2 != 1)
  {
    v8 = 0xD000000000000015;
    v9 = 0x8000000100788480;
  }

  if (*v1)
  {
    v4 = v8;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v5;
  }

  if (*v1 > 2u)
  {
    v3 = v6;
  }

  *a1 = v10;
  a1[1] = v3;
}

unint64_t sub_100338DD4()
{
  v1 = *v0;
  v2 = 0x7265766965636552;
  v3 = 0xD000000000000010;
  if (v1 != 3)
  {
    v3 = 0xD000000000000013;
  }

  v4 = 0xD000000000000010;
  if (v1 != 1)
  {
    v4 = 0xD000000000000015;
  }

  if (*v0)
  {
    v2 = v4;
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

unint64_t sub_100338EA4@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100339300(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100338ECC(uint64_t a1)
{
  v2 = sub_10033984C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100338F08(uint64_t a1)
{
  v2 = sub_10033984C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100338F44(void *a1)
{
  v3 = v1;
  v5 = sub_10028088C(&qword_100978F50, &qword_1007FC4B8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18[-v8 - 8];
  v10 = a1[4];
  sub_10002CDC0(a1, a1[3]);
  sub_10033984C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v20) = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    v23 = *(v3 + 1);
    v20 = *(v3 + 1);
    v19 = 1;
    sub_100339908(&v23, v18);
    sub_1002F3198();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_10028BCC0(v20, *(&v20 + 1));
    v22 = *(v3 + 2);
    v20 = *(v3 + 2);
    v19 = 2;
    sub_100320328(&v22, v18);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100026AC0(v20, *(&v20 + 1));
    v20 = *(v3 + 3);
    v21 = v20;
    v19 = 3;
    sub_100320328(&v21, v18);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100026AC0(v20, *(&v20 + 1));
    v13 = v3[8];
    v14 = v3[9];
    LOBYTE(v20) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = v3[10];
    LOBYTE(v20) = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

double sub_1003391E8@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10033934C(a1, v7);
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

uint64_t sub_10033925C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  _StringGuts.grow(_:)(44);
  v3._object = 0x800000010078C5B0;
  v3._countAndFlagsBits = 0xD00000000000002ALL;
  String.append(_:)(v3);
  sub_1002A9924(v1, v2);
  sub_1002F4C88();
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  sub_10028BCC0(v1, v2);
  return 0;
}

unint64_t sub_100339300(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1008D7808, v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10033934C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10028088C(&qword_100978F40, &qword_1007FC4B0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v27 - v8;
  v10 = a1[4];
  sub_10002CDC0(a1, a1[3]);
  sub_10033984C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_10000C60C(a1);

    return sub_10028BCC0(0, 0xF000000000000000);
  }

  else
  {
    LOBYTE(v42) = 0;
    v11 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v13 = v12;
    v14 = v11;
    LOBYTE(v36) = 1;
    v34 = sub_1002F309C();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v31 = v14;
    v30 = a2;
    v15 = v42;
    v16 = v43;
    sub_10028BCC0(0, 0xF000000000000000);
    LOBYTE(v36) = 2;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v35 = v42;
    v29 = v43;
    LOBYTE(v36) = 3;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v34 = v42;
    v33 = v43;
    LOBYTE(v42) = 4;
    v17 = KeyedDecodingContainer.decode(_:forKey:)();
    v32 = v18;
    v28 = v17;
    v53 = 5;
    v19 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v6 + 8))(v9, v5);
    *&v36 = v31;
    *(&v36 + 1) = v13;
    *&v37 = v15;
    v20 = v35;
    *(&v37 + 1) = v16;
    *&v38 = v35;
    v21 = v29;
    *(&v38 + 1) = v29;
    *&v39 = v34;
    v22 = v28;
    *(&v39 + 1) = v33;
    *&v40 = v28;
    *(&v40 + 1) = v32;
    v41 = v19;
    sub_1003398A0(&v36, &v42);
    sub_10000C60C(a1);
    v42 = v31;
    v43 = v13;
    v44 = v15;
    v45 = v16;
    v46 = v20;
    v47 = v21;
    v48 = v34;
    v49 = v33;
    v50 = v22;
    v51 = v32;
    v52 = v19;
    result = sub_1003398D8(&v42);
    v24 = v39;
    v25 = v30;
    *(v30 + 32) = v38;
    *(v25 + 48) = v24;
    *(v25 + 64) = v40;
    *(v25 + 80) = v41;
    v26 = v37;
    *v25 = v36;
    *(v25 + 16) = v26;
  }

  return result;
}

unint64_t sub_10033984C()
{
  result = qword_100978F48;
  if (!qword_100978F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100978F48);
  }

  return result;
}

uint64_t sub_100339908(uint64_t a1, uint64_t a2)
{
  v4 = sub_10028088C(&qword_100974E10, &qword_1007FC4C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10033998C()
{
  result = qword_100978F58;
  if (!qword_100978F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100978F58);
  }

  return result;
}

unint64_t sub_1003399E4()
{
  result = qword_100978F60;
  if (!qword_100978F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100978F60);
  }

  return result;
}

unint64_t sub_100339A3C()
{
  result = qword_100978F68;
  if (!qword_100978F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100978F68);
  }

  return result;
}

uint64_t sub_100339A90(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for URL();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = type metadata accessor for SFAirDrop.TransferType();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v9 = static AirDropActor.shared;

  return _swift_task_switch(sub_100339BE4, v9, 0);
}

void sub_100339BE4()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = v0[2];
  SFAirDropReceive.AskRequest.type.getter();
  LOBYTE(v4) = SFAirDrop.TransferType.isLinks.getter();
  (*(v2 + 8))(v1, v3);
  if (v4)
  {
    v5 = v0[5];
    v6 = v0[2];
    v7 = v0[3];
    v8 = SFAirDropReceive.AskRequest.urlItems.getter();
    v9 = 0;
    v10 = v8 + 56;
    v11 = -1;
    v12 = -1 << *(v8 + 32);
    if (-v12 < 64)
    {
      v11 = ~(-1 << -v12);
    }

    v13 = v11 & *(v8 + 56);
    v14 = (63 - v12) >> 6;
    v25 = v8;
    while (v13)
    {
      v15 = v9;
LABEL_11:
      v16 = v0[6];
      v17 = v0[4];
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      (*(v5 + 16))(v16, *(v25 + 48) + *(v5 + 72) * (v18 | (v15 << 6)), v17);
      v19 = sub_1003D9F30(&off_1008D6E18);
      (*(v5 + 8))(v16, v17);
      v20 = *(v7 + 16);
      *(v7 + 16) = v19;

      if (!*(v7 + 16))
      {

        sub_10032B298("com.apple.Maps");
        goto LABEL_13;
      }
    }

    while (1)
    {
      v15 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v15 >= v14)
      {
        sub_10032B298("com.apple.Maps");

        v21 = 1;
        goto LABEL_15;
      }

      v13 = *(v10 + 8 * v15);
      ++v9;
      if (v13)
      {
        v9 = v15;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:
    v21 = 0;
LABEL_15:
    v22 = v0[9];
    v23 = v0[6];

    v24 = v0[1];

    v24(v21);
  }
}

uint64_t sub_100339DF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v33 - v10;
  v12 = *(a1 + 16);
  v36 = *(v2 + 16);
  v13 = v36;
  v34 = a1;
  v35 = v12;
  if (v12)
  {
    v15 = *(v5 + 16);
    v14 = v5 + 16;
    v39 = (*(v14 + 64) + 32) & ~*(v14 + 64);
    v16 = a1 + v39;
    v17 = *(v14 + 56);
    v42 = (v14 + 16);
    v43 = v15;
    v38 = (v14 - 8);
    v18 = _swiftEmptyArrayStorage;
    v40 = v9;
    v41 = v14;
    v15(v11, a1 + v39, v4);
    while (1)
    {
      if (URL.isFileURL.getter())
      {
        (*v38)(v11, v4);
      }

      else
      {
        v19 = *v42;
        (*v42)(v9, v11, v4);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v44 = v18;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10028FAB4(0, v18[2] + 1, 1);
          v18 = v44;
        }

        v22 = v18[2];
        v21 = v18[3];
        if (v22 >= v21 >> 1)
        {
          sub_10028FAB4(v21 > 1, v22 + 1, 1);
          v18 = v44;
        }

        v18[2] = v22 + 1;
        v23 = v18 + v39 + v22 * v17;
        v9 = v40;
        v19(v23, v40, v4);
      }

      v16 += v17;
      if (!--v12)
      {
        break;
      }

      v43(v11, v16, v4);
    }
  }

  else
  {
    v18 = _swiftEmptyArrayStorage;
  }

  v24 = v18[2];
  if (v24)
  {
    if (v24 != v35)
    {
      if (qword_1009737B0 != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for Logger();
      sub_10000C4AC(v25, qword_10097B528);
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&_mh_execute_header, v26, v27, "Asked to view mixed files and links, only viewing links", v28, 2u);
      }
    }

    v44 = 0;
    v29 = swift_allocObject();
    v30 = v36;
    *(v29 + 16) = v18;
    *(v29 + 24) = v30;
  }

  else
  {

    v44 = 0;
    v31 = swift_allocObject();
    *(v31 + 16) = v36;
    *(v31 + 24) = 1;
    *(v31 + 32) = v34;
  }

  return SFProgressTask.init(_:initialProgress:operation:file:line:)();
}

uint64_t sub_10033A260@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SDAirDropContentHandlerMapsLinks();
  result = swift_allocObject();
  *(result + 16) = 0;
  *a1 = result;
  return result;
}

uint64_t sub_10033A298(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100289000;

  return sub_100339A90(a1);
}

uint64_t sub_10033A358(uint64_t a1, int a2)
{
  v3 = sub_10028088C(&qword_100974DF8, &qword_10080F350);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v38 - v5;
  v7 = type metadata accessor for SFAirDropReceive.AskRequest.AdvancedItemsDescription();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v38 - v13;
  v15 = *(SFAirDropReceive.AskRequest.urlItems.getter() + 16);

  SFAirDropReceive.AskRequest.itemsDescriptionAdvanced.getter();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_100005508(v6, &qword_100974DF8, &qword_10080F350);
    goto LABEL_11;
  }

  LODWORD(v38[0]) = a2;
  v16 = *(v8 + 32);
  v16(v14, v6, v7);
  v16(v12, v14, v7);
  if ((*(v8 + 88))(v12, v7) != enum case for SFAirDropReceive.AskRequest.AdvancedItemsDescription.maps(_:))
  {
    (*(v8 + 8))(v12, v7);
    LOBYTE(a2) = v38[0];
    goto LABEL_11;
  }

  (*(v8 + 96))(v12, v7);
  v17 = *(v12 + 1);
  v18 = *(v12 + 2);

  v19 = SFAirDropReceive.AskRequest.itemsDescription.getter();
  LOBYTE(a2) = v38[0];
  if (!v20)
  {
LABEL_11:
    sub_10028088C(&qword_1009775E0, &unk_1007FAD10);
    inited = swift_initStackObject();
    v38[0] = xmmword_1007F5670;
    *(inited + 16) = xmmword_1007F5670;
    *(inited + 32) = 0x4E494C5F5350414DLL;
    v27 = inited + 32;
    *(inited + 40) = 0xE90000000000004BLL;
    *(inited + 48) = v15;
    sub_1003D8D18(inited, a2 & 1);
    swift_setDeallocating();
    sub_100005508(v27, &qword_100981D40, &unk_1007FA6C0);
    v18 = String._bridgeToObjectiveC()();
    v28 = SFLocalizedStringForKey();

    if (v28)
    {

      static String._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10028088C(&unk_100978CC0, &qword_1007FAD20);
      v29 = swift_allocObject();
      *(v29 + 16) = v38[0];
      *(v29 + 56) = &type metadata for Int;
      *(v29 + 64) = &protocol witness table for Int;
      *(v29 + 32) = v15;
LABEL_13:
      v30 = static String.localizedStringWithFormat(_:_:)();

      return v30;
    }

    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v15 != 1)
  {

    goto LABEL_11;
  }

  if (v18 > 1)
  {
    if (v18 == 2)
    {
      v21 = v19;
      v22 = v20;
      sub_10028088C(&qword_1009775E0, &unk_1007FAD10);
      v23 = swift_initStackObject();
      *(v23 + 16) = xmmword_1007F5670;
      *(v23 + 32) = 0xD000000000000015;
      v24 = v23 + 32;
      v25 = "MAPS_LINK_DROPPED_PIN";
      goto LABEL_18;
    }

    if (v18 == 3)
    {
      v21 = v19;
      v22 = v20;
      sub_10028088C(&qword_1009775E0, &unk_1007FAD10);
      v23 = swift_initStackObject();
      *(v23 + 16) = xmmword_1007F5670;
      *(v23 + 32) = 0x4E494C5F5350414DLL;
      v24 = v23 + 32;
      v32 = 0xED0000494F505F4BLL;
LABEL_21:
      *(v23 + 40) = v32;
      *(v23 + 48) = 1;
      v18 = sub_1003D8D18(v23, a2 & 1);
      swift_setDeallocating();
      sub_100005508(v24, &qword_100981D40, &unk_1007FA6C0);
      v33 = String._bridgeToObjectiveC()();

      v34 = SFLocalizedStringForKey();

      if (v34)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        sub_10028088C(&unk_100978CC0, &qword_1007FAD20);
        v35 = swift_allocObject();
        *(v35 + 16) = xmmword_1007F5670;
        *(v35 + 56) = &type metadata for String;
        *(v35 + 64) = sub_100026764();
        *(v35 + 32) = v21;
        *(v35 + 40) = v22;
        goto LABEL_13;
      }

      goto LABEL_24;
    }
  }

  else
  {
    if (!v18)
    {
      v21 = v19;
      v22 = v20;
      sub_10028088C(&qword_1009775E0, &unk_1007FAD10);
      v23 = swift_initStackObject();
      *(v23 + 16) = xmmword_1007F5670;
      *(v23 + 32) = 0xD00000000000001ALL;
      v24 = v23 + 32;
      v25 = "MAPS_LINK_CURRENT_LOCATION";
LABEL_18:
      v32 = (v25 - 32) | 0x8000000000000000;
      goto LABEL_21;
    }

    if (v18 == 1)
    {
      v21 = v19;
      v22 = v20;
      sub_10028088C(&qword_1009775E0, &unk_1007FAD10);
      v23 = swift_initStackObject();
      *(v23 + 16) = xmmword_1007F5670;
      *(v23 + 32) = 0xD000000000000014;
      v24 = v23 + 32;
      v25 = "MAPS_LINK_DIRECTIONS";
      goto LABEL_18;
    }
  }

LABEL_25:
  v40 = 0;
  v41 = 0xE000000000000000;
  _StringGuts.grow(_:)(32);
  v36._countAndFlagsBits = 0x6E696C207370614DLL;
  v36._object = 0xEF2065707974206BLL;
  String.append(_:)(v36);
  v39 = v18;
  type metadata accessor for SFAirDropMapsLinkType(0);
  _print_unlocked<A, B>(_:_:)();
  v37._countAndFlagsBits = 0x20746F6E20736920;
  v37._object = 0xEF64656C646E6168;
  String.append(_:)(v37);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10033A9F0()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_100979048);
  v1 = sub_10000C4AC(v0, qword_100979048);
  if (qword_100973758 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A0A50);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10033AAB8()
{
  v1 = *v0;
  v2 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v9 - v4;
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v0;
  v7[5] = v1;

  sub_1002B3098(0, 0, v5, &unk_1007FCC30, v7);
}

uint64_t sub_10033ABE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v6 = *(*(sub_10028088C(&qword_100976160, &qword_1007F8770) - 8) + 64) + 15;
  v5[11] = swift_task_alloc();

  return _swift_task_switch(sub_10033AC84, 0, 0);
}

uint64_t sub_10033AC84()
{
  v26 = v0;
  v1 = v0[11];
  v2 = type metadata accessor for TaskPriority();
  v24 = *(v0 + 9);
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *(v3 + 32) = v24;

  v4 = sub_1002B3098(0, 0, v1, &unk_1007FCC40, v3);
  v5 = *(v24 + 40);
  *(v24 + 40) = v4;

  if (qword_100973640 != -1)
  {
    swift_once();
  }

  v6 = v0[9];
  v7 = type metadata accessor for Logger();
  sub_10000C4AC(v7, qword_100979048);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v0[9];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v25 = v12;
    *v11 = 136315138;
    v0[8] = v10;
    type metadata accessor for SDAuthenticationNearbyActionAdvertiser();

    v13 = String.init<A>(describing:)();
    v15 = sub_10000C4E4(v13, v14, &v25);

    *(v11 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v8, v9, "%s Starting NearbyActionV1 advertise", v11, 0xCu);
    sub_10000C60C(v12);
  }

  v16 = v0[11];
  v17 = *(v0[9] + 24);
  v18 = String._bridgeToObjectiveC()();
  [v17 setLabel:v18];

  [v17 setIdentifier:SFServiceIdentifierAutoUnlock];
  [v17 setDeviceActionType:55];
  [v17 setAdvertiseRate:30];
  v19 = swift_allocObject();
  swift_weakInit();
  v0[6] = sub_1003463E8;
  v0[7] = v19;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_1005CC610;
  v0[5] = &unk_1008DC8A8;
  v20 = _Block_copy(v0 + 2);
  v21 = v0[7];

  [v17 activateWithCompletion:v20];
  _Block_release(v20);

  v22 = v0[1];

  return v22();
}

uint64_t sub_10033B028()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100005C04;

  return sub_10033B62C(60);
}

void sub_10033B0BC(uint64_t a1)
{
  if (a1)
  {
    if (qword_100973640 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_10000C4AC(v1, qword_100979048);

    swift_errorRetain();
    oslog = Logger.logObject.getter();
    v2 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v20 = v5;
      *v3 = 136315394;
      swift_beginAccess();
      swift_weakLoadStrong();
      sub_10028088C(&qword_100979A30, &qword_1007FCC48);
      v6 = String.init<A>(describing:)();
      v8 = sub_10000C4E4(v6, v7, &v20);

      *(v3 + 4) = v8;
      *(v3 + 12) = 2112;
      swift_errorRetain();
      v9 = _swift_stdlib_bridgeErrorToNSError();
      *(v3 + 14) = v9;
      *v4 = v9;
      _os_log_impl(&_mh_execute_header, oslog, v2, "%s: Encountered error while trying to activate NearbyAction advertiser: %@", v3, 0x16u);
      sub_100005508(v4, &qword_100975400, &qword_1007F65D0);

      sub_10000C60C(v5);
    }

    else
    {
    }
  }

  else
  {
    if (qword_100973640 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10000C4AC(v10, qword_100979048);

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v21 = v14;
      *v13 = 136315138;
      swift_beginAccess();
      swift_weakLoadStrong();
      sub_10028088C(&qword_100979A30, &qword_1007FCC48);
      v15 = String.init<A>(describing:)();
      v17 = sub_10000C4E4(v15, v16, &v21);

      *(v13 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v11, v12, "%s: Started NearbyAction advertiser", v13, 0xCu);
      sub_10000C60C(v14);
    }

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      *(Strong + 16) = 1;
    }
  }
}

id sub_10033B470()
{
  v1 = v0;
  if (qword_100973640 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_100979048);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v1;
    v13 = v6;
    *v5 = 136315138;
    type metadata accessor for SDAuthenticationNearbyActionAdvertiser();

    v7 = String.init<A>(describing:)();
    v9 = sub_10000C4E4(v7, v8, &v13);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s: Stopping advertiser", v5, 0xCu);
    sub_10000C60C(v6);
  }

  if (*(v1 + 40))
  {
    v10 = *(v1 + 40);

    Task.cancel()();
  }

  result = [*(v1 + 24) invalidate];
  *(v1 + 16) = 0;
  return result;
}

uint64_t sub_10033B62C(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = type metadata accessor for ContinuousClock.Instant();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v6 = type metadata accessor for ContinuousClock();
  v2[9] = v6;
  v7 = *(v6 - 8);
  v2[10] = v7;
  v8 = *(v7 + 64) + 15;
  v2[11] = swift_task_alloc();

  return _swift_task_switch(sub_10033B754, 0, 0);
}

uint64_t sub_10033B754()
{
  v25 = v0;
  v1 = v0[11];
  ContinuousClock.init()();
  if (qword_100973640 != -1)
  {
    swift_once();
  }

  v2 = v0[4];
  v3 = type metadata accessor for Logger();
  v0[12] = sub_10000C4AC(v3, qword_100979048);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[3];
    v6 = v0[4];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v24 = v9;
    *v8 = 136315394;
    v0[2] = v6;
    type metadata accessor for SDAuthenticationNearbyActionAdvertiser();

    v10 = String.init<A>(describing:)();
    v12 = sub_10000C4E4(v10, v11, &v24);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2048;
    *(v8 + 14) = v7;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s: Starting timer for %ld sec", v8, 0x16u);
    sub_10000C60C(v9);
  }

  v13 = v0[7];
  v14 = v0[8];
  v15 = v0[5];
  v16 = v0[6];
  v17 = v0[3];
  static ContinuousClock.now.getter();
  ContinuousClock.Instant.advanced(by:)();
  v18 = *(v16 + 8);
  v0[13] = v18;
  v0[14] = (v16 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v18(v13, v15);
  v19 = async function pointer to ContinuousClock.sleep(until:tolerance:)[1];
  v20 = swift_task_alloc();
  v0[15] = v20;
  *v20 = v0;
  v20[1] = sub_10033B9D4;
  v21 = v0[11];
  v22 = v0[8];

  return ContinuousClock.sleep(until:tolerance:)(v22, 0, 0, 1);
}

uint64_t sub_10033B9D4()
{
  v2 = *(*v1 + 120);
  v3 = *(*v1 + 112);
  v4 = *(*v1 + 104);
  v5 = *(*v1 + 64);
  v6 = *(*v1 + 40);
  v9 = *v1;
  *(*v1 + 128) = v0;

  v4(v5, v6);
  if (v0)
  {
    v7 = sub_10033BC00;
  }

  else
  {
    v7 = sub_10033BB54;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10033BB54()
{
  v2 = v0[10];
  v1 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[7];
  v6 = v0[4];
  sub_10033BDA4();
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_10033BC00()
{
  v1 = v0[16];
  v2 = v0[12];
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[16];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Ran into error creating timer: %@", v7, 0xCu);
    sub_100005508(v8, &qword_100975400, &qword_1007F65D0);
  }

  else
  {
  }

  v11 = v0[10];
  v10 = v0[11];
  v13 = v0[8];
  v12 = v0[9];
  v14 = v0[7];
  v15 = v0[4];
  sub_10033BDA4();
  (*(v11 + 8))(v10, v12);

  v16 = v0[1];

  return v16();
}

id sub_10033BDA4()
{
  if (qword_100973640 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000C4AC(v0, qword_100979048);

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v9 = v4;
    *v3 = 136315138;
    type metadata accessor for SDAuthenticationNearbyActionAdvertiser();

    v5 = String.init<A>(describing:)();
    v7 = sub_10000C4E4(v5, v6, &v9);

    *(v3 + 4) = v7;
    _os_log_impl(&_mh_execute_header, v1, v2, "%s: Timer fired", v3, 0xCu);
    sub_10000C60C(v4);
  }

  return sub_10033B470();
}

uint64_t sub_10033BF1C()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t sub_10033BFA8()
{
  v18 = v0;
  v1 = v0;
  v2 = v0 + 10;
  if (qword_100973640 != -1)
  {
    swift_once();
  }

  v3 = v1[18];
  v4 = type metadata accessor for Logger();
  v1[19] = sub_10000C4AC(v4, qword_100979048);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v1[18];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136315138;
    v1[10] = v7;
    type metadata accessor for SDAuthenticationNearbyInfoAdvertiser();

    v10 = String.init<A>(describing:)();
    v12 = sub_10000C4E4(v10, v11, &v17);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s Starting NearbyInfo advertise", v8, 0xCu);
    sub_10000C60C(v9);
  }

  v13 = *(v1[18] + 16);
  v14 = String._bridgeToObjectiveC()();
  [v13 setLabel:v14];

  [v13 setAdvertiseRate:40];
  v1[2] = v1;
  v1[3] = sub_10033C264;
  v15 = swift_continuation_init();
  v1[17] = sub_10028088C(&qword_10097B520, &qword_1007FCC20);
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_100638A98;
  v1[13] = &unk_1008DC808;
  v1[14] = v15;
  [v13 activateWithCompletion:v2];

  return _swift_continuation_await(v1 + 2);
}

uint64_t sub_10033C264()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 160) = v2;
  if (v2)
  {
    v3 = sub_10033C4EC;
  }

  else
  {
    v3 = sub_10033C374;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10033C374()
{
  v14 = v0;
  v2 = v0[18];
  v1 = v0[19];

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[18];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    v0[10] = v5;
    type metadata accessor for SDAuthenticationNearbyInfoAdvertiser();

    v8 = String.init<A>(describing:)();
    v10 = sub_10000C4E4(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s: Started NearbyInfo advertiser", v6, 0xCu);
    sub_10000C60C(v7);
  }

  *(v0[18] + 24) = 1;
  v11 = v0[1];

  return v11();
}

uint64_t sub_10033C4EC()
{
  v1 = *(v0 + 160);
  swift_willThrow();
  v2 = *(v0 + 8);
  v3 = *(v0 + 160);

  return v2();
}

id sub_10033C558()
{
  v1 = v0;
  if (qword_100973640 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_100979048);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    type metadata accessor for SDAuthenticationNearbyInfoAdvertiser();

    v7 = String.init<A>(describing:)();
    v9 = sub_10000C4E4(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s: Stopping advertiser", v5, 0xCu);
    sub_10000C60C(v6);
  }

  result = [*(v1 + 16) invalidate];
  *(v1 + 24) = 0;
  return result;
}

uint64_t sub_10033C6DC()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10033C738(uint64_t a1)
{
  v3 = [objc_allocWithZone(CBDiscovery) init];
  *(v1 + 16) = v3;
  v4 = v3;
  v5 = String._bridgeToObjectiveC()();
  [v4 setLabel:v5];

  [*(v1 + 16) setUseCase:131088];
  [*(v1 + 16) setBleRSSIThresholdHint:4294967236];
  [*(v1 + 16) setBleScanRate:0];
  v6 = *(v1 + 16);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v6 setDeviceFilter:isa];

  *(v1 + 24) = a1;
  return v1;
}

uint64_t sub_10033C86C()
{
  v17 = v0;
  v1 = v0;
  v2 = v0 + 10;
  if (qword_100973640 != -1)
  {
    swift_once();
  }

  v3 = v1[18];
  v4 = type metadata accessor for Logger();
  sub_10000C4AC(v4, qword_100979048);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v1[18];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136315138;
    v1[10] = v7;
    type metadata accessor for SDAuthenticationBioArmScanner();

    v10 = String.init<A>(describing:)();
    v12 = sub_10000C4E4(v10, v11, &v16);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s: Scan starting", v8, 0xCu);
    sub_10000C60C(v9);
  }

  v13 = *(v1[18] + 16);
  v1[2] = v1;
  v1[3] = sub_10033CAD0;
  v14 = swift_continuation_init();
  v1[17] = sub_10028088C(&qword_10097B520, &qword_1007FCC20);
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_100638A98;
  v1[13] = &unk_1008DC7E0;
  v1[14] = v14;
  [v13 activateWithCompletion:v2];

  return _swift_continuation_await(v1 + 2);
}

uint64_t sub_10033CAD0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 152) = v2;
  if (v2)
  {
    v3 = sub_10033CBF8;
  }

  else
  {
    v3 = sub_10033CBE0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10033CBF8()
{
  v1 = *(v0 + 152);
  swift_willThrow();
  v2 = *(v0 + 8);
  v3 = *(v0 + 152);

  return v2();
}

id sub_10033CC64()
{
  v1 = v0;
  if (qword_100973640 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_100979048);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    type metadata accessor for SDAuthenticationBioArmScanner();

    v7 = String.init<A>(describing:)();
    v9 = sub_10000C4E4(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s: Scan stopping", v5, 0xCu);
    sub_10000C60C(v6);
  }

  return [*(v1 + 16) invalidate];
}

void sub_10033CDE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10028088C(&qword_100975E78, &qword_1007F90E8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = aBlock - v7;
  v9 = *(a2 + 16);
  v10 = swift_allocObject();
  swift_weakInit();
  (*(v5 + 16))(v8, a1, v4);
  v11 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  (*(v5 + 32))(v12 + v11, v8, v4);
  aBlock[4] = sub_100345AA8;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100035F94;
  aBlock[3] = &unk_1008DC5B0;
  v13 = _Block_copy(aBlock);

  [v9 setDeviceFoundHandler:v13];
  _Block_release(v13);
}

void sub_10033CFC0(void *a1)
{
  v2 = sub_10028088C(&qword_1009799F8, &qword_1007FCB88);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v74 = (&v71 - v5);
  if (qword_100973640 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000C4AC(v6, qword_100979048);

  v7 = a1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v72 = v9;
    v11 = v10;
    v71 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v78 = v73;
    *v11 = 136315394;
    swift_beginAccess();
    v76[0] = swift_weakLoadStrong();
    sub_10028088C(&qword_100979A08, &qword_1007FCBD0);
    v12 = String.init<A>(describing:)();
    v14 = v2;
    v15 = sub_10000C4E4(v12, v13, &v78);

    *(v11 + 4) = v15;
    v2 = v14;
    *(v11 + 12) = 2112;
    *(v11 + 14) = v7;
    v16 = v71;
    *v71 = v7;
    v17 = v7;
    _os_log_impl(&_mh_execute_header, v8, v72, "%s: Found unfiltered device: %@", v11, 0x16u);
    sub_100005508(v16, &qword_100975400, &qword_1007F65D0);

    sub_10000C60C(v73);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    v20 = [v7 identifier];
    if (v20)
    {
      v21 = v20;
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v23;

      if (*(*(v19 + 24) + 16))
      {
        v76[0] = v22;
        v76[1] = v24;
        __chkstk_darwin(v25);
        *(&v71 - 2) = v76;
        v27 = sub_10039026C(sub_100345B28, (&v71 - 4), v26);

        if ((v27 & 1) == 0)
        {

          v28 = v7;

          v29 = Logger.logObject.getter();
          v30 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v29, v30))
          {
            v31 = swift_slowAlloc();
            v32 = swift_slowAlloc();
            v74 = swift_slowAlloc();
            v77 = v74;
            *v31 = 136315650;
            swift_beginAccess();
            v75 = swift_weakLoadStrong();
            sub_10028088C(&qword_100979A08, &qword_1007FCBD0);
            v33 = String.init<A>(describing:)();
            v35 = sub_10000C4E4(v33, v34, &v77);

            *(v31 + 4) = v35;
            *(v31 + 12) = 2080;
            v36 = *(v19 + 24);

            v37 = Array.description.getter();
            v39 = v38;

            v40 = sub_10000C4E4(v37, v39, &v77);

            *(v31 + 14) = v40;
            *(v31 + 22) = 2112;
            *(v31 + 24) = v28;
            *v32 = v28;
            v41 = v28;
            _os_log_impl(&_mh_execute_header, v29, v30, "%s: Ignoring device not in device filter. Filter: %s, device: %@", v31, 0x20u);
            sub_100005508(v32, &qword_100975400, &qword_1007F65D0);

            swift_arrayDestroy();
          }

          v42 = v28;
          v43 = Logger.logObject.getter();
          v44 = static os_log_type_t.debug.getter();

          if (!os_log_type_enabled(v43, v44))
          {
            goto LABEL_24;
          }

          v45 = swift_slowAlloc();
          v46 = swift_slowAlloc();
          v77 = v46;
          *v45 = 136315138;
          v47 = [v42 idsDeviceID];
          if (v47)
          {
            v48 = v47;
            v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v51 = v50;
          }

          else
          {
            v51 = 0x8000000100789F30;
            v49 = 0xD000000000000015;
          }

          v70 = sub_10000C4E4(v49, v51, &v77);

          *(v45 + 4) = v70;
          _os_log_impl(&_mh_execute_header, v43, v44, "Ids id: %s", v45, 0xCu);
          sub_10000C60C(v46);

          goto LABEL_23;
        }
      }

      else
      {
      }

      v76[0] = v7;
      v68 = v7;
      sub_10028088C(&qword_100975E78, &qword_1007F90E8);
      v69 = v74;
      AsyncStream.Continuation.yield(_:)();

      (*(v3 + 8))(v69, v2);
      return;
    }

    v59 = v7;
    v43 = Logger.logObject.getter();
    v60 = static os_log_type_t.debug.getter();

    if (!os_log_type_enabled(v43, v60))
    {
LABEL_24:

      return;
    }

    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v77 = v63;
    *v61 = 136315394;
    swift_beginAccess();
    v75 = swift_weakLoadStrong();
    sub_10028088C(&qword_100979A08, &qword_1007FCBD0);
    v64 = String.init<A>(describing:)();
    v66 = sub_10000C4E4(v64, v65, &v77);

    *(v61 + 4) = v66;
    *(v61 + 12) = 2112;
    *(v61 + 14) = v59;
    *v62 = v59;
    v67 = v59;
    _os_log_impl(&_mh_execute_header, v43, v60, "%s: Ignoring device without identifier: %@", v61, 0x16u);
    sub_100005508(v62, &qword_100975400, &qword_1007F65D0);

    sub_10000C60C(v63);

LABEL_23:

    goto LABEL_24;
  }

  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v77 = v55;
    *v54 = 136315138;
    swift_beginAccess();
    v75 = swift_weakLoadStrong();
    sub_10028088C(&qword_100979A08, &qword_1007FCBD0);
    v56 = String.init<A>(describing:)();
    v58 = sub_10000C4E4(v56, v57, &v77);

    *(v54 + 4) = v58;
    _os_log_impl(&_mh_execute_header, v52, v53, "%s: self isn't initialized", v54, 0xCu);
    sub_10000C60C(v55);
  }
}

uint64_t sub_10033D940()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100005C04;

  return sub_10033C84C();
}

uint64_t sub_10033D9D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[15] = a4;
  v5[16] = a5;
  v6 = sub_10028088C(&qword_1009799F8, &qword_1007FCB88);
  v5[17] = v6;
  v7 = *(v6 - 8);
  v5[18] = v7;
  v8 = *(v7 + 64) + 15;
  v5[19] = swift_task_alloc();
  v9 = sub_10028088C(&qword_100975E20, &unk_1007FCB90);
  v5[20] = v9;
  v10 = *(v9 - 8);
  v5[21] = v10;
  v11 = *(v10 + 64) + 15;
  v5[22] = swift_task_alloc();
  v12 = sub_10028088C(&qword_100975E28, &qword_1007F9060);
  v5[23] = v12;
  v13 = *(v12 - 8);
  v5[24] = v13;
  v14 = *(v13 + 64) + 15;
  v5[25] = swift_task_alloc();
  v15 = sub_10028088C(&qword_100979A00, &qword_1007FCBA0);
  v5[26] = v15;
  v16 = *(v15 - 8);
  v5[27] = v16;
  v17 = *(v16 + 64) + 15;
  v5[28] = swift_task_alloc();

  return _swift_task_switch(sub_10033DBD4, 0, 0);
}

uint64_t sub_10033DBD4()
{
  v1 = v0[28];
  v3 = v0[24];
  v2 = v0[25];
  v5 = v0[22];
  v4 = v0[23];
  v6 = v0[20];
  v7 = v0[21];
  v8 = v0[15];
  sub_1000276B4(0, &unk_10097CA20, CBDevice_ptr);
  (*(v7 + 104))(v5, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v6);
  AsyncStream.init(_:bufferingPolicy:_:)();
  AsyncStream.makeAsyncIterator()();
  (*(v3 + 8))(v2, v4);
  swift_beginAccess();
  swift_beginAccess();
  v9 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v10 = swift_task_alloc();
  v0[29] = v10;
  *v10 = v0;
  v10[1] = sub_10033DD6C;
  v11 = v0[28];
  v12 = v0[26];

  return AsyncStream.Iterator.next(isolation:)(v0 + 11, 0, 0, v12);
}

uint64_t sub_10033DD6C()
{
  v1 = *(*v0 + 232);
  v3 = *v0;

  return _swift_task_switch(sub_10033DE68, 0, 0);
}

uint64_t sub_10033DE68()
{
  v83 = v0;
  v1 = *(v0 + 88);
  if (v1)
  {
    if (([*(v0 + 88) nearbyInfoFlags] & 0x20) == 0)
    {
      if (qword_100973640 != -1)
      {
        swift_once();
      }

      v2 = type metadata accessor for Logger();
      sub_10000C4AC(v2, qword_100979048);
      v3 = Logger.logObject.getter();
      v4 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v3, v4))
      {
        goto LABEL_18;
      }

      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Device isn't advertising watchLocked. Ignoring", v5, 2u);
LABEL_17:

LABEL_18:

LABEL_57:
      v76 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
      v77 = swift_task_alloc();
      *(v0 + 232) = v77;
      *v77 = v0;
      v77[1] = sub_10033DD6C;
      v78 = *(v0 + 224);
      v79 = *(v0 + 208);

      return AsyncStream.Iterator.next(isolation:)(v0 + 88, 0, 0, v79);
    }

    v11 = [v1 idsDeviceID];
    if (v11)
    {
      v12 = *(v0 + 120);
      v13 = v11;
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;

      v17 = *(v12 + 32);
      if (*(v17 + 16))
      {
        v18 = *(v12 + 32);

        v19 = sub_100012854(v14, v16);
        if (v20)
        {
          v21 = *(*(v17 + 56) + v19);
        }

        else
        {
          v21 = 0x80;
        }
      }

      else
      {
        v21 = 0x80;
      }

      v32 = *(v0 + 120);
      v81 = [v1 rssi];
      v33 = *(v32 + 40);
      if (*(v33 + 16))
      {
        v34 = *(v33 + 40);
        Hasher.init(_seed:)();

        String.hash(into:)();
        v35 = Hasher._finalize()();
        v36 = -1 << *(v33 + 32);
        v37 = v35 & ~v36;
        if ((*(v33 + 56 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v37))
        {
          v38 = ~v36;
          while (1)
          {
            v39 = (*(v33 + 48) + 16 * v37);
            v40 = *v39 == v14 && v39[1] == v16;
            if (v40 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              break;
            }

            v37 = (v37 + 1) & v38;
            if (((*(v33 + 56 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v37) & 1) == 0)
            {
              goto LABEL_31;
            }
          }

          if (v81 <= v21)
          {

            if (qword_100973640 == -1)
            {
LABEL_44:
              v56 = type metadata accessor for Logger();
              sub_10000C4AC(v56, qword_100979048);
              v57 = v1;
              v3 = Logger.logObject.getter();
              v58 = static os_log_type_t.default.getter();

              if (!os_log_type_enabled(v3, v58))
              {

                goto LABEL_57;
              }

              v59 = swift_slowAlloc();
              v60 = swift_slowAlloc();
              *v59 = 16777986;
              *(v59 + 4) = v21;
              *(v59 + 5) = 256;
              *(v59 + 7) = v81;
              *(v59 + 8) = 2112;
              *(v59 + 10) = v57;
              *v60 = v1;
              v1 = v57;
              _os_log_impl(&_mh_execute_header, v3, v58, "Ignoring device due to lower RSSI (old: %hhd, new: %hhd). Device: %@", v59, 0x12u);
              sub_100005508(v60, &qword_100975400, &qword_1007F65D0);

              goto LABEL_17;
            }

LABEL_61:
            swift_once();
            goto LABEL_44;
          }
        }

        else
        {
LABEL_31:
        }
      }

      v41 = *(v0 + 120);
      swift_beginAccess();
      v42 = *(v41 + 32);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v44 = *(v41 + 32);
      *(v0 + 104) = v44;
      *(v41 + 32) = 0x8000000000000000;
      v45 = sub_100012854(v14, v16);
      v47 = *(v44 + 16);
      v48 = (v46 & 1) == 0;
      v49 = __OFADD__(v47, v48);
      v50 = v47 + v48;
      if (!v49)
      {
        v51 = v46;
        if (*(v44 + 24) >= v50)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v61 = v45;
            sub_1002D01E8();
            v45 = v61;
            if (v51)
            {
              goto LABEL_42;
            }

LABEL_50:
            v55 = *(v0 + 104);
            v55[(v45 >> 6) + 8] |= 1 << v45;
            v62 = (v55[6] + 16 * v45);
            *v62 = v14;
            v62[1] = v16;
            *(v55[7] + v45) = v81;
            v63 = v55[2];
            v49 = __OFADD__(v63, 1);
            v64 = v63 + 1;
            if (!v49)
            {
              v55[2] = v64;
              goto LABEL_52;
            }

            __break(1u);
            goto LABEL_61;
          }
        }

        else
        {
          sub_100574D60(v50, isUniquelyReferenced_nonNull_native);
          v52 = *(v0 + 104);
          v45 = sub_100012854(v14, v16);
          if ((v51 & 1) != (v53 & 1))
          {

            return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          }
        }

        if (v51)
        {
LABEL_42:
          v54 = v45;

          v55 = *(v0 + 104);
          *(v55[7] + v54) = v81;
LABEL_52:
          *(*(v0 + 120) + 32) = v55;
          swift_endAccess();
          if (qword_100973640 != -1)
          {
            swift_once();
          }

          v65 = type metadata accessor for Logger();
          sub_10000C4AC(v65, qword_100979048);
          v66 = v1;
          v67 = Logger.logObject.getter();
          v68 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v67, v68))
          {
            v69 = swift_slowAlloc();
            v70 = swift_slowAlloc();
            *v69 = 138412290;
            *(v69 + 4) = v66;
            *v70 = v1;
            v71 = v66;
            _os_log_impl(&_mh_execute_header, v67, v68, "Found unarmed device! %@", v69, 0xCu);
            sub_100005508(v70, &qword_100975400, &qword_1007F65D0);
          }

          v73 = *(v0 + 144);
          v72 = *(v0 + 152);
          v74 = *(v0 + 128);
          v75 = *(v0 + 136);

          *(v0 + 112) = v66;
          sub_10028088C(&qword_100975E78, &qword_1007F90E8);
          AsyncStream.Continuation.yield(_:)();
          (*(v73 + 8))(v72, v75);
          goto LABEL_57;
        }

        goto LABEL_50;
      }

      __break(1u);
    }

    else if (qword_100973640 == -1)
    {
LABEL_15:
      v22 = *(v0 + 120);
      v23 = type metadata accessor for Logger();
      sub_10000C4AC(v23, qword_100979048);
      v24 = v1;

      v3 = Logger.logObject.getter();
      v25 = static os_log_type_t.debug.getter();

      if (!os_log_type_enabled(v3, v25))
      {

        goto LABEL_57;
      }

      v26 = *(v0 + 120);
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v82 = v80;
      *v27 = 136315394;
      *(v0 + 96) = v26;
      type metadata accessor for SDAuthenticationBioArmNearbyInfoScanner();

      v29 = String.init<A>(describing:)();
      v31 = sub_10000C4E4(v29, v30, &v82);

      *(v27 + 4) = v31;
      *(v27 + 12) = 2112;
      *(v27 + 14) = v24;
      *v28 = v1;
      v1 = v24;
      _os_log_impl(&_mh_execute_header, v3, v25, "%s: Ignoring device with IDS device ID: %@", v27, 0x16u);
      sub_100005508(v28, &qword_100975400, &qword_1007F65D0);

      sub_10000C60C(v80);

      goto LABEL_17;
    }

    swift_once();
    goto LABEL_15;
  }

  v6 = *(v0 + 200);
  v7 = *(v0 + 176);
  v8 = *(v0 + 152);
  (*(*(v0 + 216) + 8))(*(v0 + 224), *(v0 + 208));

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_10033E774()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);
}

uint64_t sub_10033E7A4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t sub_10033E838()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100005C00;

  return sub_10033C84C();
}

uint64_t sub_10033E8C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_10028088C(&qword_100975E78, &qword_1007F90E8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v20 - v10;
  v12 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v20 - v14;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  (*(v8 + 16))(v11, a1, v7);
  v17 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v18 = swift_allocObject();
  *(v18 + 2) = 0;
  *(v18 + 3) = 0;
  *(v18 + 4) = a2;
  (*(v8 + 32))(&v18[v17], v11, v7);

  sub_1002B3098(0, 0, v15, a4, v18);
}

uint64_t sub_10033EAB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v6 = sub_10028088C(&qword_1009799F8, &qword_1007FCB88);
  v5[8] = v6;
  v7 = *(v6 - 8);
  v5[9] = v7;
  v8 = *(v7 + 64) + 15;
  v5[10] = swift_task_alloc();
  v9 = sub_10028088C(&qword_100975E20, &unk_1007FCB90);
  v5[11] = v9;
  v10 = *(v9 - 8);
  v5[12] = v10;
  v11 = *(v10 + 64) + 15;
  v5[13] = swift_task_alloc();
  v12 = sub_10028088C(&qword_100975E28, &qword_1007F9060);
  v5[14] = v12;
  v13 = *(v12 - 8);
  v5[15] = v13;
  v14 = *(v13 + 64) + 15;
  v5[16] = swift_task_alloc();
  v15 = sub_10028088C(&qword_100979A00, &qword_1007FCBA0);
  v5[17] = v15;
  v16 = *(v15 - 8);
  v5[18] = v16;
  v17 = *(v16 + 64) + 15;
  v5[19] = swift_task_alloc();

  return _swift_task_switch(sub_10033ECB4, 0, 0);
}

uint64_t sub_10033ECB4()
{
  v1 = v0[19];
  v3 = v0[15];
  v2 = v0[16];
  v5 = v0[13];
  v4 = v0[14];
  v6 = v0[11];
  v7 = v0[12];
  v8 = v0[6];
  sub_1000276B4(0, &unk_10097CA20, CBDevice_ptr);
  (*(v7 + 104))(v5, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v6);
  AsyncStream.init(_:bufferingPolicy:_:)();
  AsyncStream.makeAsyncIterator()();
  (*(v3 + 8))(v2, v4);
  v9 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v10 = swift_task_alloc();
  v0[20] = v10;
  *v10 = v0;
  v10[1] = sub_10033EE24;
  v11 = v0[19];
  v12 = v0[17];

  return AsyncStream.Iterator.next(isolation:)(v0 + 2, 0, 0, v12);
}

uint64_t sub_10033EE24()
{
  v1 = *(*v0 + 160);
  v3 = *v0;

  return _swift_task_switch(sub_10033EF20, 0, 0);
}

uint64_t sub_10033EF20()
{
  v42 = v0;
  v1 = *(v0 + 16);
  if (v1)
  {
    if ([*(v0 + 16) nearbyActionType] == 55)
    {
      if (qword_100973640 != -1)
      {
        swift_once();
      }

      v2 = *(v0 + 48);
      v3 = type metadata accessor for Logger();
      sub_10000C4AC(v3, qword_100979048);

      v4 = v1;
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v5, v6))
      {
        v7 = *(v0 + 48);
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v41 = v39;
        *v8 = 136315394;
        *(v0 + 40) = v7;
        type metadata accessor for SDAuthenticationBioArmNearbyActionScanner();

        v10 = String.init<A>(describing:)();
        v12 = sub_10000C4E4(v10, v11, &v41);

        *(v8 + 4) = v12;
        *(v8 + 12) = 2112;
        *(v8 + 14) = v4;
        *v9 = v1;
        v13 = v4;
        _os_log_impl(&_mh_execute_header, v5, v6, "%s: Needs arming! NearbyActionV1 Device: %@", v8, 0x16u);
        sub_100005508(v9, &qword_100975400, &qword_1007F65D0);

        sub_10000C60C(v39);
      }

      v15 = *(v0 + 72);
      v14 = *(v0 + 80);
      v16 = *(v0 + 56);
      v17 = *(v0 + 64);
      *(v0 + 32) = v4;
      sub_10028088C(&qword_100975E78, &qword_1007F90E8);
      AsyncStream.Continuation.yield(_:)();
      (*(v15 + 8))(v14, v17);
    }

    else
    {
      if (qword_100973640 != -1)
      {
        swift_once();
      }

      v23 = *(v0 + 48);
      v24 = type metadata accessor for Logger();
      sub_10000C4AC(v24, qword_100979048);

      v25 = v1;
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = *(v0 + 48);
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v41 = v40;
        *v29 = 136315394;
        *(v0 + 24) = v28;
        type metadata accessor for SDAuthenticationBioArmNearbyActionScanner();

        v31 = String.init<A>(describing:)();
        v33 = sub_10000C4E4(v31, v32, &v41);

        *(v29 + 4) = v33;
        *(v29 + 12) = 2112;
        *(v29 + 14) = v25;
        *v30 = v1;
        v34 = v25;
        _os_log_impl(&_mh_execute_header, v26, v27, "%s: Device %@ does not have AUAction bit set", v29, 0x16u);
        sub_100005508(v30, &qword_100975400, &qword_1007F65D0);

        sub_10000C60C(v40);
      }

      else
      {
      }
    }

    v35 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
    v36 = swift_task_alloc();
    *(v0 + 160) = v36;
    *v36 = v0;
    v36[1] = sub_10033EE24;
    v37 = *(v0 + 152);
    v38 = *(v0 + 136);

    return AsyncStream.Iterator.next(isolation:)(v0 + 16, 0, 0, v38);
  }

  else
  {
    v18 = *(v0 + 128);
    v19 = *(v0 + 104);
    v20 = *(v0 + 80);
    (*(*(v0 + 144) + 8))(*(v0 + 152), *(v0 + 136));

    v21 = *(v0 + 8);

    return v21();
  }
}

uint64_t sub_10033F434(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10028088C(&qword_100979A10, &qword_1007FCBF8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v15 - v7;
  if (qword_100973640 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000C4AC(v9, qword_100979048);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Scanning for found devices", v12, 2u);
  }

  sub_1000276B4(0, &qword_100979A18, RPCompanionLinkDevice_ptr);
  v13 = (*(v5 + 104))(v8, enum case for AsyncThrowingStream.Continuation.BufferingPolicy.unbounded<A, B>(_:), v4);
  __chkstk_darwin(v13);
  *(&v15 - 4) = a1;
  *(&v15 - 3) = v2;
  *(&v15 - 16) = 1;
  return AsyncThrowingStream.init<>(_:bufferingPolicy:_:)();
}

void sub_10033F650(char *a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = sub_10028088C(&qword_100979A20, &qword_1007FCC00);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v50 - v11;
  v13 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v50 - v15;
  v54 = v10;
  if (a2 < 1)
  {
    if (qword_100973640 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_10000C4AC(v24, qword_100979048);

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v55 = a3;
      aBlock = v52;
      *v27 = 136315138;
      type metadata accessor for SDAuthenticationNearbyInfoTemporaryScanner();
      v53 = v12;

      v28 = String.init<A>(describing:)();
      v30 = v8;
      v31 = a1;
      v32 = a4;
      v33 = sub_10000C4E4(v28, v29, &aBlock);
      v12 = v53;

      *(v27 + 4) = v33;
      a4 = v32;
      a1 = v31;
      v8 = v30;
      _os_log_impl(&_mh_execute_header, v25, v26, "%s: Scanning indefinitely", v27, 0xCu);
      sub_10000C60C(v52);
    }
  }

  else
  {
    v17 = type metadata accessor for TaskPriority();
    (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
    (*(v9 + 16))(v12, a1, v8);
    v18 = *(v9 + 80);
    v53 = v8;
    v19 = a1;
    v20 = a4;
    v21 = (v18 + 48) & ~v18;
    v22 = swift_allocObject();
    v22[2] = 0;
    v22[3] = 0;
    v22[4] = a3;
    v22[5] = a2;
    v23 = v22 + v21;
    a4 = v20;
    a1 = v19;
    v8 = v53;
    (*(v9 + 32))(v23, v12, v53);

    sub_1002B3098(0, 0, v16, &unk_1007FCC10, v22);
  }

  v52 = *(a3 + 16);
  v53 = a1;
  v35 = *(v9 + 16);
  v34 = v9 + 16;
  v51 = v35;
  v35(v12, a1, v8);
  v36 = *(v34 + 64);
  v50 = ~v36;
  v37 = (v36 + 24) & ~v36;
  v38 = v12;
  v39 = a3;
  v40 = (v34 + 16);
  if (a4)
  {
    v41 = swift_allocObject();
    *(v41 + 16) = v39;
    v42 = *v40;
    (*v40)(v41 + v37, v38, v8);
    v60 = sub_1003460B0;
    v61 = v41;
    aBlock = _NSConcreteStackBlock;
    v57 = 1107296256;
    v58 = sub_100035F94;
    v59 = &unk_1008DC790;
    v43 = _Block_copy(&aBlock);

    v44 = &selRef_setDeviceFoundHandler_;
  }

  else
  {
    v45 = swift_allocObject();
    *(v45 + 16) = v39;
    v42 = *v40;
    (*v40)(v45 + v37, v38, v8);
    v60 = sub_100345F68;
    v61 = v45;
    aBlock = _NSConcreteStackBlock;
    v57 = 1107296256;
    v58 = sub_100035F94;
    v59 = &unk_1008DC6F0;
    v43 = _Block_copy(&aBlock);

    v44 = &selRef_setDeviceLostHandler_;
  }

  v46 = v52;
  [v52 *v44];
  _Block_release(v43);
  v51(v38, v53, v8);
  v47 = (v36 + 16) & v50;
  v48 = swift_allocObject();
  v42(v48 + v47, v38, v8);
  v60 = sub_100345F74;
  v61 = v48;
  aBlock = _NSConcreteStackBlock;
  v57 = 1107296256;
  v58 = sub_1005CC610;
  v59 = &unk_1008DC740;
  v49 = _Block_copy(&aBlock);

  [v46 activateWithCompletion:v49];
  _Block_release(v49);
}

uint64_t sub_10033FCA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  v7 = type metadata accessor for ContinuousClock();
  v6[8] = v7;
  v8 = *(v7 - 8);
  v6[9] = v8;
  v9 = *(v8 + 64) + 15;
  v6[10] = swift_task_alloc();

  return _swift_task_switch(sub_10033FD6C, 0, 0);
}

uint64_t sub_10033FD6C()
{
  v21 = v0;
  if (qword_100973640 != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = type metadata accessor for Logger();
  v0[11] = sub_10000C4AC(v2, qword_100979048);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[5];
    v6 = v0[6];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v20 = v8;
    *v7 = 136315394;
    v0[4] = v5;
    type metadata accessor for SDAuthenticationNearbyInfoTemporaryScanner();

    v9 = String.init<A>(describing:)();
    v11 = sub_10000C4E4(v9, v10, &v20);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2048;
    *(v7 + 14) = v6;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s: Scanning for %ld seconds", v7, 0x16u);
    sub_10000C60C(v8);
  }

  v12 = v0[10];
  v13 = v0[6];
  v14 = 1000000000000000000 * v13;
  v15 = (v13 * 0xDE0B6B3A7640000uLL) >> 64;
  v16 = (v13 >> 63) & 0xF21F494C589C0000;
  static Clock<>.continuous.getter();
  v17 = swift_task_alloc();
  v0[12] = v17;
  *v17 = v0;
  v17[1] = sub_10033FFB8;
  v18 = v0[10];

  return sub_10002ED10(v14, v16 + v15, 0, 0, 1);
}

uint64_t sub_10033FFB8()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *v1;

  v5 = v2[10];
  v6 = v2[9];
  v7 = v2[8];
  if (v0)
  {

    (*(v6 + 8))(v5, v7);
    v8 = sub_100346410;
  }

  else
  {
    (*(v6 + 8))(v5, v7);
    v8 = sub_100340150;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_100340150()
{
  v16 = v0;
  v0[2] = 0;
  v1 = v0[11];
  v2 = v0[7];
  v3 = v0[5];
  sub_10028088C(&qword_100979A20, &qword_1007FCC00);
  AsyncThrowingStream.Continuation.finish(throwing:)();

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[5];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136315138;
    v0[3] = v6;
    type metadata accessor for SDAuthenticationNearbyInfoTemporaryScanner();

    v9 = String.init<A>(describing:)();
    v11 = sub_10000C4E4(v9, v10, &v15);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s: Finished scanning", v7, 0xCu);
    sub_10000C60C(v8);
  }

  v12 = v0[10];
  [*(v0[5] + 16) invalidate];

  v13 = v0[1];

  return v13();
}

uint64_t sub_10034030C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v7 = sub_10028088C(&qword_100979A28, &qword_1007FCC18);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v25 - v10;
  if (qword_100973640 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_10000C4AC(v12, qword_100979048);

  v13 = a1;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v28 = v11;
    v17 = v16;
    v18 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v29 = a2;
    v30 = v27;
    *v17 = 136315394;
    type metadata accessor for SDAuthenticationNearbyInfoTemporaryScanner();
    v26 = a4;

    v19 = String.init<A>(describing:)();
    v21 = sub_10000C4E4(v19, v20, &v30);

    *(v17 + 4) = v21;
    *(v17 + 12) = 2112;
    *(v17 + 14) = v13;
    *v18 = v13;
    v22 = v13;
    _os_log_impl(&_mh_execute_header, v14, v15, v26, v17, 0x16u);
    sub_100005508(v18, &qword_100975400, &qword_1007F65D0);

    sub_10000C60C(v27);

    v11 = v28;
  }

  v30 = v13;
  v23 = v13;
  sub_10028088C(&qword_100979A20, &qword_1007FCC00);
  AsyncThrowingStream.Continuation.yield(_:)();
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1003405D8(uint64_t result)
{
  if (result)
  {
    swift_errorRetain();
    sub_10028088C(&qword_100979A20, &qword_1007FCC00);
    return AsyncThrowingStream.Continuation.finish(throwing:)();
  }

  return result;
}

uint64_t sub_100340678()
{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_100340994;
  }

  else
  {
    v3 = sub_10034078C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1003407A8()
{
  v19 = v0;
  v1 = v0[6];
  (*(v0[8] + 8))(v0[9], v0[7]);
  v2 = type metadata accessor for Notification();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) != 1)
  {
    sub_100005508(v0[6], &qword_1009799D0, &unk_1007FCB10);
  }

  v3 = v0[10];
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[11];
  if (v6)
  {
    v8 = v0[5];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v9 = 136315138;
    v0[3] = v8;
    sub_10028088C(&qword_1009799D8, &qword_1007FCB20);
    v11 = String.init<A>(describing:)();
    v13 = sub_10000C4E4(v11, v12, &v18);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s: Finished waiting for keys to load", v9, 0xCu);
    sub_10000C60C(v10);
  }

  v14 = v0[9];
  v15 = v0[6];

  v16 = v0[1];

  return v16();
}

uint64_t sub_100340994()
{
  *(v0 + 16) = *(v0 + 104);
  sub_10028088C(&unk_10097A930, &unk_1007F9050);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_100340A20(uint64_t a1, uint64_t a2)
{
  v4 = sub_10028088C(&qword_100975E78, &qword_1007F90E8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v24 = &v24 - v7;
  v8 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v24 - v10;
  v12 = sub_10028088C(&qword_1009799F0, &qword_1007FCB50);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v24 - v14;
  v16 = *(v5 + 16);
  v16(&v24 - v14, a1, v4);
  (*(v5 + 56))(v15, 0, 1, v4);
  v17 = OBJC_IVAR____TtC16DaemoniOSLibrary36SDAuthenticationBioArmUnarmedDevices_streamContinuation;
  swift_beginAccess();
  sub_1003454E4(v15, a2 + v17);
  swift_endAccess();
  swift_allocObject();
  swift_weakInit();
  v18 = a1;
  AsyncStream.Continuation.onTermination.setter();
  v19 = type metadata accessor for TaskPriority();
  (*(*(v19 - 8) + 56))(v11, 1, 1, v19);
  v20 = v24;
  v16(v24, v18, v4);
  v21 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v22 = swift_allocObject();
  *(v22 + 2) = 0;
  *(v22 + 3) = 0;
  *(v22 + 4) = a2;
  (*(v5 + 32))(&v22[v21], v20, v4);

  sub_1002B3098(0, 0, v11, &unk_1007FCB60, v22);
}

uint64_t sub_100340D20()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    if (*(result + OBJC_IVAR____TtC16DaemoniOSLibrary36SDAuthenticationBioArmUnarmedDevices_nearbyInfoScanner))
    {
      v2 = *(result + OBJC_IVAR____TtC16DaemoniOSLibrary36SDAuthenticationBioArmUnarmedDevices_nearbyInfoScanner);

      sub_10033CC64();
    }

    if (*(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary36SDAuthenticationBioArmUnarmedDevices_nearbyActionScanner))
    {
      v3 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary36SDAuthenticationBioArmUnarmedDevices_nearbyActionScanner);

      sub_10033CC64();
    }
  }

  return result;
}

uint64_t sub_100340DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = sub_10028088C(&qword_100975E78, &qword_1007F90E8);
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v5[9] = *(v7 + 64);
  v5[10] = swift_task_alloc();
  v8 = *(*(sub_10028088C(&qword_100976160, &qword_1007F8770) - 8) + 64) + 15;
  v5[11] = swift_task_alloc();

  return _swift_task_switch(sub_100340EC8, 0, 0);
}

id sub_100340EC8()
{
  result = [objc_opt_self() sharedMonitor];
  *(v0 + 96) = result;
  if (result)
  {
    v2 = swift_task_alloc();
    *(v0 + 104) = v2;
    *v2 = v0;
    v2[1] = sub_100340F84;

    return sub_10002DCF0();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100340F84()
{
  v1 = *v0;
  v2 = *(*v0 + 104);
  v3 = *(*v0 + 96);
  v6 = *v0;

  type metadata accessor for SDAuthenticationStatusMonitor();
  v4 = swift_task_alloc();
  *(v1 + 112) = v4;
  *v4 = v6;
  v4[1] = sub_1003410D0;

  return sub_100026DBC();
}

uint64_t sub_1003410D0()
{
  v1 = *(*v0 + 112);
  v3 = *v0;

  return _swift_task_switch(sub_1003411CC, 0, 0);
}

uint64_t sub_1003411CC()
{
  v61 = v0;
  if (qword_100973C50 != -1)
  {
    swift_once();
  }

  if (qword_1009A10A8)
  {
    v58 = qword_1009A10A8;
    v1 = sub_100693628();
    if (qword_100973640 != -1)
    {
      swift_once();
    }

    v2 = v0[5];
    v3 = type metadata accessor for Logger();
    sub_10000C4AC(v3, qword_100979048);

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = v0[5];
      v7 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      *v7 = 136315394;
      v0[4] = v6;
      type metadata accessor for SDAuthenticationBioArmUnarmedDevices();

      v8 = String.init<A>(describing:)();
      v10 = sub_10000C4E4(v8, v9, &v60);

      *(v7 + 4) = v10;
      *(v7 + 12) = 2080;
      v11 = Array.description.getter();
      v13 = sub_10000C4E4(v11, v12, &v60);

      *(v7 + 14) = v13;
      _os_log_impl(&_mh_execute_header, v4, v5, "%s: Looking for lock devices %s", v7, 0x16u);
      swift_arrayDestroy();
    }

    if (v1[2])
    {
      v14 = v0[10];
      v15 = v0[11];
      v16 = v0[9];
      v51 = v1;
      v59 = v0;
      v17 = v0[8];
      v18 = v59[7];
      v19 = v59[6];
      v56 = v19;
      v52 = v59[5];
      v54 = type metadata accessor for TaskPriority();
      v57 = *(*(v54 - 8) + 56);
      v20 = v15;
      v57(v15, 1, 1, v54);
      v55 = *(v17 + 16);
      v55(v14, v19, v18);
      v21 = *(v17 + 80);
      v22 = (v21 + 40) & ~v21;
      v23 = swift_allocObject();
      *(v23 + 2) = 0;
      *(v23 + 3) = 0;
      *(v23 + 4) = v51;
      v53 = *(v17 + 32);
      v53(&v23[v22], v14, v18);
      *&v23[(v16 + v22 + 7) & 0xFFFFFFFFFFFFFFF8] = v52;

      sub_1002B3098(0, 0, v20, &unk_1007FCB70, v23);

      v57(v20, 1, 1, v54);
      v55(v14, v56, v18);
      v24 = (v21 + 48) & ~v21;
      v25 = swift_allocObject();
      *(v25 + 2) = 0;
      *(v25 + 3) = 0;
      *(v25 + 4) = v51;
      *(v25 + 5) = v52;
      v53(&v25[v24], v14, v18);
      v0 = v59;

      sub_1002B3098(0, 0, v20, &unk_1007FCB80, v25);
    }

    else
    {
      v36 = v0[5];

      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = v0[5];
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v60 = v41;
        *v40 = 136315138;
        v0[3] = v39;
        type metadata accessor for SDAuthenticationBioArmUnarmedDevices();

        v42 = String.init<A>(describing:)();
        v44 = sub_10000C4E4(v42, v43, &v60);

        *(v40 + 4) = v44;
        _os_log_impl(&_mh_execute_header, v37, v38, "%s: No lock devices. Terminating stream", v40, 0xCu);
        sub_10000C60C(v41);
      }

      v46 = v0[6];
      v45 = v0[7];
      AsyncStream.Continuation.finish()();
    }
  }

  else
  {
    if (qword_100973640 != -1)
    {
      swift_once();
    }

    v26 = v0[5];
    v27 = type metadata accessor for Logger();
    sub_10000C4AC(v27, qword_100979048);

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = v0[5];
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v60 = v32;
      *v31 = 136315138;
      v0[2] = v30;
      type metadata accessor for SDAuthenticationBioArmUnarmedDevices();

      v33 = String.init<A>(describing:)();
      v35 = sub_10000C4E4(v33, v34, &v60);

      *(v31 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v28, v29, "%s: Authentication manager isn't running. Not scanning", v31, 0xCu);
      sub_10000C60C(v32);
    }
  }

  v48 = v0[10];
  v47 = v0[11];

  v49 = v0[1];

  return v49();
}

uint64_t sub_100341898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  v7 = sub_10028088C(&qword_1009799F8, &qword_1007FCB88);
  v6[8] = v7;
  v8 = *(v7 - 8);
  v6[9] = v8;
  v9 = *(v8 + 64) + 15;
  v6[10] = swift_task_alloc();
  v10 = *(*(sub_10028088C(&qword_100976160, &qword_1007F8770) - 8) + 64) + 15;
  v6[11] = swift_task_alloc();
  v11 = sub_10028088C(&qword_100975E20, &unk_1007FCB90);
  v6[12] = v11;
  v12 = *(v11 - 8);
  v6[13] = v12;
  v13 = *(v12 + 64) + 15;
  v6[14] = swift_task_alloc();
  v14 = sub_10028088C(&qword_100975E28, &qword_1007F9060);
  v6[15] = v14;
  v15 = *(v14 - 8);
  v6[16] = v15;
  v16 = *(v15 + 64) + 15;
  v6[17] = swift_task_alloc();
  v17 = sub_10028088C(&qword_100979A00, &qword_1007FCBA0);
  v6[18] = v17;
  v18 = *(v17 - 8);
  v6[19] = v18;
  v19 = *(v18 + 64) + 15;
  v6[20] = swift_task_alloc();

  return _swift_task_switch(sub_100341AD8, 0, 0);
}

uint64_t sub_100341AD8()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[14];
  v19 = v0[15];
  v20 = v0[20];
  v5 = v0[12];
  v4 = v0[13];
  v6 = v0[11];
  v7 = v0[5];
  type metadata accessor for SDAuthenticationBioArmNearbyActionScanner();
  v8 = swift_allocObject();

  sub_10033C738(v9);
  v10 = *(v8 + 16);

  [v10 setDiscoveryFlags:0x2000000];
  [*(v8 + 16) setBleRSSIThresholdHint:4294967206];
  [*(v8 + 16) setBleScanRate:20];
  [*(v8 + 16) setBleScanRateScreenOff:20];
  [*(v8 + 16) setDiscoveryFlags:34078720];
  v11 = *(v8 + 16);

  [v11 addDiscoveryType:6];

  sub_1000276B4(0, &unk_10097CA20, CBDevice_ptr);
  (*(v4 + 104))(v3, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v5);
  AsyncStream.init(_:bufferingPolicy:_:)();
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v8;
  sub_1002B281C(0, 0, v6, &unk_1007FCBE0, v13);

  AsyncStream.makeAsyncIterator()();
  (*(v2 + 8))(v1, v19);
  v14 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v15 = swift_task_alloc();
  v0[21] = v15;
  *v15 = v0;
  v15[1] = sub_100341D90;
  v16 = v0[20];
  v17 = v0[18];

  return AsyncStream.Iterator.next(isolation:)(v0 + 2, 0, 0, v17);
}

uint64_t sub_100341D90()
{
  v1 = *(*v0 + 168);
  v3 = *v0;

  return _swift_task_switch(sub_100341E8C, 0, 0);
}

uint64_t sub_100341E8C()
{
  v31 = v0;
  v1 = v0[2];
  if (v1)
  {
    v0[3] = v1;
    v3 = v0[9];
    v2 = v0[10];
    v4 = v0[8];
    v5 = v0[6];
    v6 = v1;
    sub_10028088C(&qword_100975E78, &qword_1007F90E8);
    AsyncStream.Continuation.yield(_:)();
    (*(v3 + 8))(v2, v4);
    if (qword_100973640 != -1)
    {
      swift_once();
    }

    v7 = v0[7];
    v8 = type metadata accessor for Logger();
    sub_10000C4AC(v8, qword_100979048);
    v9 = v6;

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = v0[7];
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v30 = v29;
      *v13 = 136315394;
      v0[4] = v12;
      type metadata accessor for SDAuthenticationBioArmUnarmedDevices();

      v15 = String.init<A>(describing:)();
      v17 = sub_10000C4E4(v15, v16, &v30);

      *(v13 + 4) = v17;
      *(v13 + 12) = 2112;
      *(v13 + 14) = v9;
      *v14 = v1;
      v18 = v9;
      _os_log_impl(&_mh_execute_header, v10, v11, "%s: Yielded NearbyAction device: %@", v13, 0x16u);
      sub_100005508(v14, &qword_100975400, &qword_1007F65D0);

      sub_10000C60C(v29);
    }

    else
    {
    }

    v25 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
    v26 = swift_task_alloc();
    v0[21] = v26;
    *v26 = v0;
    v26[1] = sub_100341D90;
    v27 = v0[20];
    v28 = v0[18];

    return AsyncStream.Iterator.next(isolation:)(v0 + 2, 0, 0, v28);
  }

  else
  {
    v19 = v0[17];
    v20 = v0[14];
    v22 = v0[10];
    v21 = v0[11];
    (*(v0[19] + 8))(v0[20], v0[18]);

    v23 = v0[1];

    return v23();
  }
}

uint64_t sub_1003421F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  v7 = sub_10028088C(&qword_1009799F8, &qword_1007FCB88);
  v6[8] = v7;
  v8 = *(v7 - 8);
  v6[9] = v8;
  v9 = *(v8 + 64) + 15;
  v6[10] = swift_task_alloc();
  v10 = *(*(sub_10028088C(&qword_100976160, &qword_1007F8770) - 8) + 64) + 15;
  v6[11] = swift_task_alloc();
  v11 = sub_10028088C(&qword_100975E20, &unk_1007FCB90);
  v6[12] = v11;
  v12 = *(v11 - 8);
  v6[13] = v12;
  v13 = *(v12 + 64) + 15;
  v6[14] = swift_task_alloc();
  v14 = sub_10028088C(&qword_100975E28, &qword_1007F9060);
  v6[15] = v14;
  v15 = *(v14 - 8);
  v6[16] = v15;
  v16 = *(v15 + 64) + 15;
  v6[17] = swift_task_alloc();
  v17 = sub_10028088C(&qword_100979A00, &qword_1007FCBA0);
  v6[18] = v17;
  v18 = *(v17 - 8);
  v6[19] = v18;
  v19 = *(v18 + 64) + 15;
  v6[20] = swift_task_alloc();

  return _swift_task_switch(sub_100342430, 0, 0);
}

uint64_t sub_100342430()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[14];
  v19 = v0[15];
  v20 = v0[20];
  v5 = v0[12];
  v4 = v0[13];
  v6 = v0[11];
  v8 = v0[5];
  v7 = v0[6];
  type metadata accessor for SDAuthenticationBioArmNearbyInfoScanner();
  v9 = swift_allocObject();
  v0[21] = v9;
  *(v9 + 32) = sub_100281970(_swiftEmptyArrayStorage);
  *(v9 + 40) = &_swiftEmptySetSingleton;

  sub_10033C738(v10);
  [*(v9 + 16) setDiscoveryFlags:64];
  [*(v9 + 16) setBleScanRate:30];
  v11 = *(v7 + OBJC_IVAR____TtC16DaemoniOSLibrary36SDAuthenticationBioArmUnarmedDevices_nearbyInfoScanner);
  *(v7 + OBJC_IVAR____TtC16DaemoniOSLibrary36SDAuthenticationBioArmUnarmedDevices_nearbyInfoScanner) = v9;

  sub_1000276B4(0, &unk_10097CA20, CBDevice_ptr);
  (*(v4 + 104))(v3, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v5);
  AsyncStream.init(_:bufferingPolicy:_:)();
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v9;

  sub_1002B281C(0, 0, v6, &unk_1007FCBB0, v13);

  AsyncStream.makeAsyncIterator()();
  (*(v2 + 8))(v1, v19);
  v14 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v15 = swift_task_alloc();
  v0[22] = v15;
  *v15 = v0;
  v15[1] = sub_1003426C0;
  v16 = v0[20];
  v17 = v0[18];

  return AsyncStream.Iterator.next(isolation:)(v0 + 2, 0, 0, v17);
}

uint64_t sub_1003426C0()
{
  v1 = *(*v0 + 176);
  v3 = *v0;

  return _swift_task_switch(sub_1003427BC, 0, 0);
}

uint64_t sub_1003427BC()
{
  v32 = v0;
  v1 = v0[2];
  if (v1)
  {
    v0[3] = v1;
    v3 = v0[9];
    v2 = v0[10];
    v4 = v0[7];
    v5 = v0[8];
    v6 = v1;
    sub_10028088C(&qword_100975E78, &qword_1007F90E8);
    AsyncStream.Continuation.yield(_:)();
    (*(v3 + 8))(v2, v5);
    if (qword_100973640 != -1)
    {
      swift_once();
    }

    v7 = v0[6];
    v8 = type metadata accessor for Logger();
    sub_10000C4AC(v8, qword_100979048);
    v9 = v6;

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = v0[6];
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v31 = v30;
      *v13 = 136315394;
      v0[4] = v12;
      type metadata accessor for SDAuthenticationBioArmUnarmedDevices();

      v15 = String.init<A>(describing:)();
      v17 = sub_10000C4E4(v15, v16, &v31);

      *(v13 + 4) = v17;
      *(v13 + 12) = 2112;
      *(v13 + 14) = v9;
      *v14 = v1;
      v18 = v9;
      _os_log_impl(&_mh_execute_header, v10, v11, "%s: Yielded NearbyInfo device: %@", v13, 0x16u);
      sub_100005508(v14, &qword_100975400, &qword_1007F65D0);

      sub_10000C60C(v30);
    }

    else
    {
    }

    v26 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
    v27 = swift_task_alloc();
    v0[22] = v27;
    *v27 = v0;
    v27[1] = sub_1003426C0;
    v28 = v0[20];
    v29 = v0[18];

    return AsyncStream.Iterator.next(isolation:)(v0 + 2, 0, 0, v29);
  }

  else
  {
    v19 = v0[21];
    v20 = v0[17];
    v21 = v0[14];
    v23 = v0[10];
    v22 = v0[11];
    (*(v0[19] + 8))(v0[20], v0[18]);

    v24 = v0[1];

    return v24();
  }
}

uint64_t sub_100342B28(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_100342B4C, 0, 0);
}

uint64_t sub_100342B4C()
{
  v1 = [*(v0 + 24) identifier];
  if (v1)
  {
    v2 = v1;
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v6 = *(v0 + 16);
  *v6 = v3;
  v6[1] = v5;
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100342BF0(uint64_t a1, uint64_t *a2)
{
  v2[2] = a1;
  v4 = *(*(sub_10028088C(&unk_100976120, &qword_1007F9260) - 8) + 64) + 15;
  v5 = swift_task_alloc();
  v6 = *a2;
  v7 = a2[1];
  v2[3] = v5;
  v2[4] = v6;
  v2[5] = v7;

  return _swift_task_switch(sub_100342C98, 0, 0);
}

void sub_100342C98()
{
  v1 = v0[2];
  Date.init()();
  v2 = [objc_opt_self() sharedTransport];
  if (!v2)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  v3 = v2;
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[3];
  UUID.init(uuidString:)();
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  isa = 0;
  if ((*(v8 + 48))(v6, 1, v7) != 1)
  {
    v10 = v0[3];
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v8 + 8))(v10, v7);
  }

  v11 = [v3 idsDeviceForBluetoothID:isa];

  if (!v11)
  {
    goto LABEL_9;
  }

  v13 = v0[2];
  v12 = v0[3];
  v14 = sub_10028088C(&qword_100975E50, &qword_1007F9078);
  v15 = (v13 + *(v14 + 48));
  v15[3] = sub_1000276B4(0, &qword_10097F0C0, IDSDevice_ptr);
  v15[4] = &off_1008EA2C0;
  *v15 = v11;
  (*(*(v14 - 8) + 56))(v13, 0, 1, v14);

  v16 = v0[1];

  v16();
}

void sub_100342E84()
{
  v1 = v0;
  v2 = sub_10028088C(&qword_1009799F0, &qword_1007FCB50);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v29 - v4;
  v6 = sub_10028088C(&qword_100975E78, &qword_1007F90E8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v29 - v9;
  if (qword_100973640 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_10000C4AC(v11, qword_100979048);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v31 = v7;
    v15 = v14;
    v16 = swift_slowAlloc();
    v30 = v10;
    v17 = v16;
    v33 = v0;
    v34[0] = v16;
    *v15 = 136315138;
    type metadata accessor for SDAuthenticationBioArmUnarmedDevices();

    v18 = String.init<A>(describing:)();
    v20 = sub_10000C4E4(v18, v19, v34);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v12, v13, "%s: Stopping", v15, 0xCu);
    sub_10000C60C(v17);
    v10 = v30;

    v7 = v31;
  }

  v21 = OBJC_IVAR____TtC16DaemoniOSLibrary36SDAuthenticationBioArmUnarmedDevices_streamContinuation;
  swift_beginAccess();
  sub_100345EEC(v0 + v21, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_100005508(v5, &qword_1009799F0, &qword_1007FCB50);

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v32 = v1;
      v33 = v25;
      *v24 = 136315138;
      type metadata accessor for SDAuthenticationBioArmUnarmedDevices();

      v26 = String.init<A>(describing:)();
      v28 = sub_10000C4E4(v26, v27, &v33);

      *(v24 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v22, v23, "%s: No continuation to stop", v24, 0xCu);
      sub_10000C60C(v25);
    }
  }

  else
  {
    (*(v7 + 32))(v10, v5, v6);
    AsyncStream.Continuation.finish()();
    (*(v7 + 8))(v10, v6);
  }
}

uint64_t sub_100343278()
{
  sub_100005508(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary36SDAuthenticationBioArmUnarmedDevices_streamContinuation, &qword_1009799F0, &qword_1007FCB50);
  v1 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary36SDAuthenticationBioArmUnarmedDevices_nearbyInfoScanner);

  v2 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary36SDAuthenticationBioArmUnarmedDevices_nearbyActionScanner);
}

uint64_t sub_1003432D8()
{
  v1 = OBJC_IVAR____TtC16DaemoniOSLibrary36SDAuthenticationBioArmUnarmedDevices_streamContinuation;

  sub_100005508(v0 + v1, &qword_1009799F0, &qword_1007FCB50);
  v2 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary36SDAuthenticationBioArmUnarmedDevices_nearbyInfoScanner);

  v3 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary36SDAuthenticationBioArmUnarmedDevices_nearbyActionScanner);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SDAuthenticationBioArmUnarmedDevices()
{
  result = qword_100979738;
  if (!qword_100979738)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1003433DC()
{
  sub_100343478();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_100343478()
{
  if (!qword_100979748)
  {
    sub_100280938(&qword_100975E78, &qword_1007F90E8);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100979748);
    }
  }
}

uint64_t sub_1003434E4(void *a1, char a2)
{
  *(v2 + 16) = &_swiftEmptyDictionarySingleton;
  *(v2 + 24) = 0;
  v5 = (v2 + 16);
  *(v2 + 32) = 1;
  *(v2 + 36) = IOPMConnectionGetSystemCapabilities();
  *(v2 + 40) = a1;
  *(v2 + 48) = a2 & 1;
  v6 = objc_opt_self();
  v7 = a1;
  v8 = [v6 standardUserDefaults];
  v9 = String._bridgeToObjectiveC()();
  v10 = [v8 dictionaryForKey:v9];

  if (v10)
  {
    v11 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v12 = sub_1003438B0(v11);

    if (v12)
    {
      swift_beginAccess();
      v13 = *v5;
      *v5 = v12;
    }
  }

  sub_100344C38();

  return v2;
}

unint64_t sub_10034364C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10028088C(&qword_1009799E0, &qword_1007FCB28);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v14 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v14 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v14);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v15 = __clz(__rbit64(v5)) | (v14 << 6);
        v16 = (*(a1 + 48) + 16 * v15);
        v17 = *v16;
        v18 = v16[1];
        sub_10000C5B0(*(a1 + 56) + 32 * v15, v28);
        *&v27 = v17;
        *(&v27 + 1) = v18;
        v25[2] = v27;
        v26[0] = v28[0];
        v26[1] = v28[1];
        v19 = v27;
        sub_1000106E0(v26, v25);

        sub_10028088C(&qword_1009799E8, &qword_1007FCB30);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        result = sub_100012854(v19, *(&v19 + 1));
        if (v20)
        {
          v9 = v2[6] + 16 * result;
          v10 = *(v9 + 8);
          *v9 = v19;
          v11 = result;

          v12 = v2[7];
          v13 = *(v12 + 8 * v11);
          *(v12 + 8 * v11) = v24;

          v8 = v14;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v19;
          *(v2[7] + 8 * result) = v24;
          v21 = v2[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_24;
          }

          v2[2] = v23;
          v8 = v14;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v14 = v8;
      }

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

unint64_t sub_1003438B0(uint64_t a1)
{
  v2 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v57 - v4;
  v69 = sub_10028088C(&qword_1009750E8, &qword_1007FBB20);
  v6 = *(*(v69 - 8) + 64);
  __chkstk_darwin(v69);
  v68 = &v57 - v7;
  v67 = sub_10028088C(&qword_1009799C8, &unk_1007FCAE8);
  v8 = *(*(v67 - 8) + 64);
  __chkstk_darwin(v67);
  v66 = (&v57 - v9);
  v10 = type metadata accessor for Date();
  v71 = *(v10 - 8);
  v11 = *(v71 + 64);
  v12 = __chkstk_darwin(v10);
  v14 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v65 = &v57 - v16;
  __chkstk_darwin(v15);
  v64 = &v57 - v17;
  v73 = a1;
  if (*(a1 + 16))
  {
    sub_10028088C(&unk_1009763A0, &unk_1007F9590);
    v18 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v18 = &_swiftEmptyDictionarySingleton;
  }

  v19 = v73 + 64;
  v20 = 1 << *(v73 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(v73 + 64);
  v23 = (v20 + 63) >> 6;
  v70 = (v71 + 56);
  v72 = (v71 + 32);
  v58 = v18 + 8;
  v59 = v71 + 40;

  v25 = 0;
  v62 = v5;
  v61 = v19;
  v60 = v23;
  v63 = v14;
  while (1)
  {
    if (!v22)
    {
      while (1)
      {
        v28 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          break;
        }

        if (v28 >= v23)
        {

          return v18;
        }

        v22 = *(v19 + 8 * v28);
        ++v25;
        if (v22)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
      return result;
    }

    v28 = v25;
LABEL_14:
    v29 = __clz(__rbit64(v22)) | (v28 << 6);
    v30 = (*(v73 + 48) + 16 * v29);
    v31 = *v30;
    v32 = v30[1];
    sub_10000C5B0(*(v73 + 56) + 32 * v29, v78);
    *&v77 = v31;
    *(&v77 + 1) = v32;
    v75[2] = v77;
    v76[0] = v78[0];
    v76[1] = v78[1];
    v33 = v32;
    v74 = v77;
    sub_1000106E0(v76, v75);

    if (!swift_dynamicCast())
    {
      break;
    }

    v22 &= v22 - 1;
    (*v70)(v5, 0, 1, v10);
    v34 = v5;
    v35 = *v72;
    v36 = v65;
    (*v72)(v65, v34, v10);
    v37 = *(v69 + 48);
    v38 = v10;
    v39 = v68;
    v35(&v68[v37], v36, v38);
    v40 = v67;
    v41 = *(v67 + 48);
    v42 = v33;
    v43 = v66;
    *v66 = v74;
    v43[1] = v42;
    v44 = &v39[v37];
    v10 = v38;
    v45 = v63;
    v35(v43 + v41, v44, v10);
    v46 = *(v40 + 48);
    v47 = *v43;
    v48 = v43[1];
    v49 = v43 + v46;
    v50 = v64;
    v35(v64, v49, v10);
    v35(v45, v50, v10);
    result = sub_100012854(v47, v48);
    v51 = result;
    if (v52)
    {
      v26 = (v18[6] + 16 * result);
      v27 = v26[1];
      *v26 = v47;
      v26[1] = v48;

      result = (*(v71 + 40))(v18[7] + *(v71 + 72) * v51, v45, v10);
    }

    else
    {
      if (v18[2] >= v18[3])
      {
        goto LABEL_23;
      }

      *(v58 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v53 = (v18[6] + 16 * result);
      *v53 = v47;
      v53[1] = v48;
      result = (v35)(v18[7] + *(v71 + 72) * result, v45, v10);
      v54 = v18[2];
      v55 = __OFADD__(v54, 1);
      v56 = v54 + 1;
      if (v55)
      {
        goto LABEL_24;
      }

      v18[2] = v56;
    }

    v25 = v28;
    v5 = v62;
    v19 = v61;
    v23 = v60;
  }

  (*v70)(v5, 1, 1, v10);
  sub_100005508(v5, &qword_10097A7F0, &unk_1007FB600);

  return 0;
}

unint64_t sub_100343EBC()
{
  v0 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v0 + 16) = 128;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0u;
  *(v0 + 144) = 0u;
  *(v0 + 32) = 0u;
  if (IOPMGetCapabilitiesDescription())
  {
    v2 = sub_100345E10(v0, v1);

    return v2;
  }

  else
  {

    _StringGuts.grow(_:)(32);

    v4._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v4);

    v5._countAndFlagsBits = 41;
    v5._object = 0xE100000000000000;
    String.append(_:)(v5);
    return 0xD00000000000001DLL;
  }
}

uint64_t sub_100343FE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a4;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v4[11] = v5;
  v6 = *(v5 - 8);
  v4[12] = v6;
  v7 = *(v6 + 64) + 15;
  v4[13] = swift_task_alloc();
  v8 = type metadata accessor for DispatchQoS();
  v4[14] = v8;
  v9 = *(v8 - 8);
  v4[15] = v9;
  v10 = *(v9 + 64) + 15;
  v4[16] = swift_task_alloc();

  return _swift_task_switch(sub_1003440FC, 0, 0);
}

id sub_1003440FC()
{
  result = [objc_opt_self() sharedMonitor];
  *(v0 + 136) = result;
  if (result)
  {
    v2 = swift_task_alloc();
    *(v0 + 144) = v2;
    *v2 = v0;
    v2[1] = sub_1003441B8;

    return sub_10002DCF0();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1003441B8()
{
  v1 = *v0;
  v2 = *(*v0 + 144);
  v3 = *(*v0 + 136);
  v6 = *v0;

  type metadata accessor for SDAuthenticationStatusMonitor();
  v4 = swift_task_alloc();
  *(v1 + 152) = v4;
  *v4 = v6;
  v4[1] = sub_100344304;

  return sub_100026DBC();
}

uint64_t sub_100344304()
{
  v1 = *(*v0 + 152);
  v3 = *v0;

  return _swift_task_switch(sub_100344400, 0, 0);
}

uint64_t sub_100344400()
{
  v24 = v0;
  if (qword_100973640 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_100979048);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[10];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v23 = v7;
    *v6 = 136315138;
    v0[9] = v5;
    type metadata accessor for SDAuthenticationRegistrationManager();

    v8 = String.init<A>(describing:)();
    v10 = sub_10000C4E4(v8, v9, &v23);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s: Performing Registration when booted", v6, 0xCu);
    sub_10000C60C(v7);
  }

  v12 = v0[15];
  v11 = v0[16];
  v13 = v0[13];
  v14 = v0[11];
  v15 = v0[12];
  v16 = v0[10];
  v21 = *(v16 + 40);
  v22 = v0[14];
  v0[6] = sub_1003454E0;
  v0[7] = v16;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100011678;
  v0[5] = &unk_1008DC448;
  v17 = _Block_copy(v0 + 2);

  static DispatchQoS.unspecified.getter();
  v0[8] = _swiftEmptyArrayStorage;
  sub_10001429C(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags);
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_100013EB8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);
  (*(v15 + 8))(v13, v14);
  (*(v12 + 8))(v11, v22);
  v18 = v0[7];

  v19 = v0[1];

  return v19();
}

uint64_t sub_100344728()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v38 = *(v7 - 8);
  v39 = v7;
  v8 = *(v38 + 64);
  __chkstk_darwin(v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = (&v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = v1[5];
  *v15 = v16;
  (*(v12 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v11);
  v17 = v16;
  v18 = _dispatchPreconditionTest(_:)();
  result = (*(v12 + 8))(v15, v11);
  if (v18)
  {
    if (qword_100973C50 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  result = swift_once();
LABEL_3:
  if (qword_1009A10A8)
  {
    v20 = qword_100973640;
    v21 = qword_1009A10A8;
    if (v20 != -1)
    {
      swift_once();
    }

    v37 = v3;
    v22 = type metadata accessor for Logger();
    sub_10000C4AC(v22, qword_100979048);

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v36 = v2;
      v27 = v26;
      v40 = v1;
      aBlock[0] = v26;
      *v25 = 136315138;
      type metadata accessor for SDAuthenticationRegistrationManager();

      v28 = String.init<A>(describing:)();
      v30 = sub_10000C4E4(v28, v29, aBlock);

      *(v25 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v23, v24, "%s: Starting registration", v25, 0xCu);
      sub_10000C60C(v27);
      v2 = v36;
    }

    v31 = *&v21[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_queue];
    v32 = swift_allocObject();
    *(v32 + 16) = v21;
    *(v32 + 24) = v1;
    aBlock[4] = sub_100345EC0;
    aBlock[5] = v32;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100011678;
    aBlock[3] = &unk_1008DC6A0;
    v33 = _Block_copy(aBlock);
    v34 = v21;

    static DispatchQoS.unspecified.getter();
    v40 = _swiftEmptyArrayStorage;
    sub_10001429C(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags);
    sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
    sub_100013EB8();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v33);
    (*(v37 + 8))(v6, v2);
    (*(v38 + 8))(v10, v39);
  }

  return result;
}

void sub_100344C38()
{
  v1 = v0;
  if (qword_100973640 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_100979048);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v1;
    v12 = v6;
    *v5 = 136315138;
    type metadata accessor for SDAuthenticationRegistrationManager();

    v7 = String.init<A>(describing:)();
    v9 = sub_10000C4E4(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s: Adding Observer for keyBagChanged", v5, 0xCu);
    sub_10000C60C(v6);
  }

  v10 = [objc_opt_self() defaultCenter];
  if (qword_100973680 != -1)
  {
    swift_once();
  }

  [v10 addObserver:v1 selector:v11 name:v12 object:?];
}

uint64_t sub_100344E30(uint64_t a1, unint64_t a2)
{
  v4 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v41 = &v33[-v6];
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v33[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v14 = &v33[-v13];
  static Date.now.getter();
  if (qword_100973640 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_10000C4AC(v15, qword_100979048);
  v39 = *(v8 + 16);
  v39(v12, v14, v7);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v37 = a1;
    v19 = v18;
    v35 = swift_slowAlloc();
    v42[0] = v35;
    *v19 = 136315394;
    *(v19 + 4) = sub_10000C4E4(v37, a2, v42);
    *(v19 + 12) = 2080;
    sub_10001429C(&qword_100983290, &type metadata accessor for Date);
    v34 = v17;
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v36 = a2;
    v22 = v21;
    v23 = *(v8 + 8);
    v40 = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v23(v12, v7);
    v24 = sub_10000C4E4(v20, v22, v42);
    a2 = v36;

    *(v19 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v16, v34, "Updating last used for device %s to %s", v19, 0x16u);
    swift_arrayDestroy();

    a1 = v37;

    v25 = v23;
  }

  else
  {

    v25 = *(v8 + 8);
    v40 = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v25(v12, v7);
  }

  v26 = v41;
  v39(v41, v14, v7);
  (*(v8 + 56))(v26, 0, 1, v7);
  v27 = v38;
  swift_beginAccess();

  sub_1002B1544(v26, a1, a2);
  swift_endAccess();
  v28 = [objc_opt_self() standardUserDefaults];
  v29 = *(v27 + 16);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v31 = String._bridgeToObjectiveC()();
  [v28 setObject:isa forKey:v31];

  return (v25)(v14, v7);
}

void sub_1003452C0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);
}

uint64_t sub_1003452F0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return swift_deallocClassInstance();
}

unint64_t sub_100345384()
{
  result = qword_1009799A8;
  if (!qword_1009799A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009799A8);
  }

  return result;
}

unint64_t sub_1003453DC()
{
  result = qword_1009799B0;
  if (!qword_1009799B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009799B0);
  }

  return result;
}

unint64_t sub_100345434()
{
  result = qword_1009799B8;
  if (!qword_1009799B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009799B8);
  }

  return result;
}

unint64_t sub_10034548C()
{
  result = qword_1009799C0;
  if (!qword_1009799C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009799C0);
  }

  return result;
}

uint64_t sub_1003454E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10028088C(&qword_1009799F0, &qword_1007FCB50);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10034555C(uint64_t a1)
{
  v4 = *(sub_10028088C(&qword_100975E78, &qword_1007F90E8) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100005C04;

  return sub_100340DBC(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_100345660(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_10028088C(&qword_100975E78, &qword_1007F90E8) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_100005C00;

  return sub_100341898(a1, v7, v8, v9, v1 + v6, v10);
}

uint64_t sub_1003457A0(uint64_t a1)
{
  v4 = *(sub_10028088C(&qword_100975E78, &qword_1007F90E8) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100005C00;

  return sub_1003421F0(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_1003458E8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100005C04;

  return sub_10033D940();
}

uint64_t sub_10034599C(uint64_t a1)
{
  v4 = *(sub_10028088C(&qword_100975E78, &qword_1007F90E8) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100005C00;

  return sub_10033D9D0(a1, v6, v7, v8, v1 + v5);
}

void sub_100345AA8(void *a1)
{
  v3 = *(*(sub_10028088C(&qword_100975E78, &qword_1007F90E8) - 8) + 80);
  v4 = *(v1 + 16);

  sub_10033CFC0(a1);
}

uint64_t sub_100345B80()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100005C00;

  return sub_10033E838();
}

uint64_t sub_100345C34()
{
  v1 = sub_10028088C(&qword_100975E78, &qword_1007F90E8);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + 32);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_100345D0C(uint64_t a1)
{
  v4 = *(sub_10028088C(&qword_100975E78, &qword_1007F90E8) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100005C00;

  return sub_10033EAB0(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_100345E10(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    if (!*(a1 + 32))
    {
      return static String._fromUTF8Repairing(_:)(a1 + 32, 0);
    }

    a2 = 0;
    v3 = v2 - 1;
    while (v3 != a2)
    {
      if (!*(a1 + 33 + a2++))
      {
        a1 += 32;
        return static String._fromUTF8Repairing(_:)(a1, a2);
      }
    }

    __break(1u);
  }

  __break(1u);
  return static String._fromUTF8Repairing(_:)(a1, a2);
}

uint64_t sub_100345E5C(void (*a1)(void), uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  a1(*(v2 + 24));

  return a2(v2, 32, 7);
}

void sub_100345EC0()
{
  v1 = *(*(v0 + 24) + 48);
  v2 = *(v0 + 16);
  sub_1006949E0(v1);
}

uint64_t sub_100345EEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10028088C(&qword_1009799F0, &qword_1007FCB50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100345F74(uint64_t a1)
{
  v2 = *(*(sub_10028088C(&qword_100979A20, &qword_1007FCC00) - 8) + 80);

  return sub_1003405D8(a1);
}

uint64_t sub_100345FF0(uint64_t *a1, uint64_t *a2)
{
  v3 = sub_10028088C(a1, a2);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(v2 + 16);

  (*(v4 + 8))(v2 + v5, v3);

  return _swift_deallocObject(v2, v5 + v6);
}

uint64_t sub_100346140(uint64_t a1)
{
  v4 = *(sub_10028088C(&qword_100979A20, &qword_1007FCC00) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100005C00;

  return sub_10033FCA8(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_100346268(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100005C00;

  return sub_10033ABE8(a1, v4, v5, v7, v6);
}

uint64_t sub_100346328()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100005C00;

  return sub_10033B028();
}

unint64_t SDAirDropHashError.description.getter(unsigned __int8 a1)
{
  v1 = 0x65442065726F7453;
  v2 = 0xD00000000000001BLL;
  if (a1 != 4)
  {
    v2 = 0x6D694C2065746152;
  }

  if (a1 == 3)
  {
    v2 = 0xD000000000000018;
  }

  if (a1 == 1)
  {
    v1 = 0xD000000000000010;
  }

  if (!a1)
  {
    v1 = 0xD000000000000010;
  }

  if (a1 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

Swift::Int SDAirDropHashError.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

unint64_t sub_1003465A0()
{
  result = qword_100979A38;
  if (!qword_100979A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100979A38);
  }

  return result;
}

uint64_t sub_10034660C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for URL();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = type metadata accessor for SFAirDrop.TransferType();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v9 = static AirDropActor.shared;

  return _swift_task_switch(sub_100346760, v9, 0);
}

void sub_100346760()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = v0[2];
  SFAirDropReceive.AskRequest.type.getter();
  LOBYTE(v4) = SFAirDrop.TransferType.isLinks.getter();
  (*(v2 + 8))(v1, v3);
  if (v4)
  {
    v5 = v0[5];
    v6 = v0[2];
    v7 = v0[3];
    v8 = SFAirDropReceive.AskRequest.urlItems.getter();
    v9 = 0;
    v10 = v8 + 56;
    v11 = -1;
    v12 = -1 << *(v8 + 32);
    if (-v12 < 64)
    {
      v11 = ~(-1 << -v12);
    }

    v13 = v11 & *(v8 + 56);
    v14 = (63 - v12) >> 6;
    v25 = v8;
    while (v13)
    {
      v15 = v9;
LABEL_11:
      v16 = v0[6];
      v17 = v0[4];
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      (*(v5 + 16))(v16, *(v25 + 48) + *(v5 + 72) * (v18 | (v15 << 6)), v17);
      v19 = sub_1003D9F30(&off_1008D6F28);
      (*(v5 + 8))(v16, v17);
      v20 = *(v7 + 16);
      *(v7 + 16) = v19;

      if (!*(v7 + 16))
      {

        swift_arrayDestroy();
        goto LABEL_13;
      }
    }

    while (1)
    {
      v15 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v15 >= v14)
      {
        swift_arrayDestroy();

        v21 = 1;
        goto LABEL_15;
      }

      v13 = *(v10 + 8 * v15);
      ++v9;
      if (v13)
      {
        v9 = v15;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:
    v21 = 0;
LABEL_15:
    v22 = v0[9];
    v23 = v0[6];

    v24 = v0[1];

    v24(v21);
  }
}

uint64_t sub_100346988@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v33 - v10;
  v12 = *(a1 + 16);
  v36 = *(v2 + 16);
  v13 = v36;
  v34 = a1;
  v35 = v12;
  if (v12)
  {
    v15 = *(v5 + 16);
    v14 = v5 + 16;
    v39 = (*(v14 + 64) + 32) & ~*(v14 + 64);
    v16 = a1 + v39;
    v17 = *(v14 + 56);
    v42 = (v14 + 16);
    v43 = v15;
    v38 = (v14 - 8);
    v18 = _swiftEmptyArrayStorage;
    v40 = v9;
    v41 = v14;
    v15(v11, a1 + v39, v4);
    while (1)
    {
      if (URL.isFileURL.getter())
      {
        (*v38)(v11, v4);
      }

      else
      {
        v19 = *v42;
        (*v42)(v9, v11, v4);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v44 = v18;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10028FAB4(0, v18[2] + 1, 1);
          v18 = v44;
        }

        v22 = v18[2];
        v21 = v18[3];
        if (v22 >= v21 >> 1)
        {
          sub_10028FAB4(v21 > 1, v22 + 1, 1);
          v18 = v44;
        }

        v18[2] = v22 + 1;
        v23 = v18 + v39 + v22 * v17;
        v9 = v40;
        v19(v23, v40, v4);
      }

      v16 += v17;
      if (!--v12)
      {
        break;
      }

      v43(v11, v16, v4);
    }
  }

  else
  {
    v18 = _swiftEmptyArrayStorage;
  }

  v24 = v18[2];
  if (v24)
  {
    if (v24 != v35)
    {
      if (qword_1009737B0 != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for Logger();
      sub_10000C4AC(v25, qword_10097B528);
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&_mh_execute_header, v26, v27, "Asked to view mixed files and links, only viewing links", v28, 2u);
      }
    }

    v44 = 0;
    v29 = swift_allocObject();
    v30 = v36;
    *(v29 + 16) = v18;
    *(v29 + 24) = v30;
  }

  else
  {

    v44 = 0;
    v31 = swift_allocObject();
    *(v31 + 16) = v36;
    *(v31 + 24) = 1;
    *(v31 + 32) = v34;
  }

  return SFProgressTask.init(_:initialProgress:operation:file:line:)();
}

uint64_t sub_100346DF4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SDAirDropContentHandlerAppStoreLinks();
  result = swift_allocObject();
  *(result + 16) = 0;
  *a1 = result;
  return result;
}

uint64_t sub_100346E2C(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100289000;

  return sub_10034660C(a1);
}

void sub_100346EEC(uint64_t a1, char a2)
{
  v3 = SFAirDropReceive.AskRequest.itemsDescription.getter();
  if (v4)
  {
    v5 = v3;
    v6 = v4;
    sub_1003D8D18(&off_1008D6B80, a2 & 1);
    sub_1003470A0(&unk_1008D6BA0);
    v7 = String._bridgeToObjectiveC()();
    v8 = SFLocalizedStringForKey();

    if (v8)
    {

      static String._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10028088C(&unk_100978CC0, &qword_1007FAD20);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1007F5670;
      *(v9 + 56) = &type metadata for String;
      *(v9 + 64) = sub_100026764();
      *(v9 + 32) = v5;
      *(v9 + 40) = v6;
      static String.localizedStringWithFormat(_:_:)();

LABEL_6:

      return;
    }

    __break(1u);
  }

  else
  {
    sub_1003D8D18(&off_1008D6BB8, a2 & 1);
    sub_1003470A0(&unk_1008D6BD8);
    v10 = String._bridgeToObjectiveC()();
    v11 = SFLocalizedStringForKey();

    if (v11)
    {

      static String._unconditionallyBridgeFromObjectiveC(_:)();

      static String.localizedStringWithFormat(_:_:)();
      goto LABEL_6;
    }
  }

  __break(1u);
}

uint64_t sub_1003470A0(uint64_t a1)
{
  v2 = sub_10028088C(&qword_100981D40, &unk_1007FA6C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100347108()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_100979B18);
  v1 = sub_10000C4AC(v0, qword_100979B18);
  if (qword_100973758 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A0A50);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_100347204(uint64_t (*a1)(void), Class *a2)
{
  v4 = *(a1(0) + 28);
  v5 = *(v2 + v4);
  if (v5)
  {
    v6 = *(v2 + v4);
LABEL_5:
    v8 = v5;
    return v6;
  }

  result = [objc_allocWithZone(*a2) init];
  if (result)
  {
    *(v2 + v4) = result;
    v6 = result;
    v5 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_100347284@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_10028088C(&qword_100975660, &qword_1007FA820);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1007F8830;
  if (qword_100973650 != -1)
  {
    swift_once();
  }

  *(v7 + 56) = &type metadata for SDAuthentication.Operation.CheckLocalSecurityPolicy;
  *(v7 + 64) = &off_10097BD58;
  *(v7 + 96) = &type metadata for SDAuthentication.Operation.IncludeLongTermKeyAndAKSTokenInMessage;
  *(v7 + 104) = &off_10097BFE8;
  *(v7 + 136) = &type metadata for SDAuthentication.Operation.BuildMessageHeader;
  *(v7 + 144) = &off_10097BE18;
  *a3 = v7;
  v8 = _s22VisionUnlockiOSPairingV27HandlePairingRequestContextVMa(0);
  *(a3 + *(v8 + 28)) = 0;
  v36 = v8;
  *(a3 + *(v8 + 32)) = 4;
  if (qword_100973648 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000C4AC(v9, qword_100979B18);
  v10 = a1;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v33 = a3;
    v34 = v3;
    v35 = a2;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v37 = v14;
    *v13 = 136315138;
    v15 = [v10 sessionID];
    if (v15)
    {
      v16 = v15;
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;
    }

    else
    {
      v17 = 0xD000000000000015;
      v19 = 0x8000000100789F30;
    }

    v20 = sub_10000C4E4(v17, v19, &v37);

    *(v13 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v11, v12, "Process PairingRequest SessionID: %s", v13, 0xCu);
    sub_10000C60C(v14);

    a2 = v35;
    a3 = v33;
  }

  else
  {
  }

  v21 = [v10 longTermKey];
  if (v21)
  {
    v22 = v21;
    v23 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    v26 = (a3 + *(v36 + 24));
    *v26 = v23;
    v26[1] = v25;
    v27 = _s22VisionUnlockiOSPairingV17InitialKeyContextVMa(0);
    sub_10034A1C0(a2 + *(v27 + 20), a3 + *(v36 + 20), type metadata accessor for SDAuthenticationSessionMetrics);
    return sub_10034A228(a2, _s22VisionUnlockiOSPairingV17InitialKeyContextVMa);
  }

  else
  {
    v29 = sub_100010F88(10, 0xD000000000000015, 0x800000010078CD90);
    v31 = v30;
    sub_1000115C8();
    swift_allocError();
    *v32 = v29;
    *(v32 + 8) = v31;
    swift_willThrow();

    sub_10034A228(a2, _s22VisionUnlockiOSPairingV17InitialKeyContextVMa);
  }
}

id sub_100347660()
{
  v1 = *(_s22VisionUnlockiOSPairingV28HandlePairingResponseContextVMa(0) + 36);
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = *(v0 + v1);
LABEL_5:
    v5 = v2;
    return v3;
  }

  result = [objc_allocWithZone(SDAuthenticationPairingCreateSecret) init];
  if (result)
  {
    *(v0 + v1) = result;
    v3 = result;
    v2 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1003476D0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_10028088C(&qword_100975660, &qword_1007FA820);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1007F8830;
  if (qword_100973650 != -1)
  {
    swift_once();
  }

  *(v6 + 56) = &type metadata for SDAuthentication.Operation.SignAndStoreRemoteLTK;
  *(v6 + 64) = &off_10097BFD0;
  *(v6 + 96) = &type metadata for SDAuthentication.Operation.BuildMessageHeader;
  *(v6 + 104) = &off_10097BE18;
  *(v6 + 136) = &type metadata for SDAuthentication.Operation.EnableDynamicStore;
  *(v6 + 144) = &off_10097BFB8;
  *a3 = v6;
  v7 = _s22VisionUnlockiOSPairingV28HandlePairingResponseContextVMa(0);
  v44 = a3 + v7[6];
  *v44 = xmmword_1007F8A80;
  *(a3 + v7[9]) = 0;
  *(a3 + v7[10]) = 6;
  if (qword_100973648 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000C4AC(v8, qword_100979B18);
  v9 = a1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = a2;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    *(v13 + 4) = v9;
    *v14 = v9;
    v15 = v9;
    _os_log_impl(&_mh_execute_header, v10, v11, "Handling authentication pairing response: %@", v13, 0xCu);
    sub_100005508(v14, &qword_100975400, &qword_1007F65D0);

    a2 = v12;
  }

  v16 = [v9 token];
  if (v16)
  {
    v17 = v16;
    v18 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    v21 = [v9 longTermKey];
    if (v21)
    {
      v22 = v21;
      v23 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = a2;
      v26 = v25;

      v27 = (a3 + v7[8]);
      *v27 = v18;
      v27[1] = v20;
      v28 = (a3 + v7[7]);
      *v28 = v23;
      v28[1] = v26;
      v29 = _s22VisionUnlockiOSPairingV18InitialLockContextVMa(0);
      v30 = (v24 + *(v29 + 24));
      v31 = *v30;
      v32 = v30[1];
      v33 = *v44;
      v34 = *(v44 + 1);
      sub_1002A9924(*v30, v32);
      sub_10028BCC0(v33, v34);
      *v44 = v31;
      *(v44 + 1) = v32;
      sub_10034A1C0(v24 + *(v29 + 20), a3 + v7[5], type metadata accessor for SDAuthenticationSessionMetrics);
      return sub_10034A228(v24, _s22VisionUnlockiOSPairingV18InitialLockContextVMa);
    }

    v40 = sub_100010F88(10, 0xD000000000000013, 0x800000010078CDB0);
    v42 = v41;
    sub_1000115C8();
    swift_allocError();
    *v43 = v40;
    *(v43 + 8) = v42;
    swift_willThrow();
    sub_100026AC0(v18, v20);
  }

  else
  {
    v36 = sub_100010F88(10, 0x20676E697373694DLL, 0xED00006E656B6F74);
    v38 = v37;
    sub_1000115C8();
    swift_allocError();
    *v39 = v36;
    *(v39 + 8) = v38;
    swift_willThrow();
  }

  sub_10034A228(a2, _s22VisionUnlockiOSPairingV18InitialLockContextVMa);

  return sub_10028BCC0(*v44, *(v44 + 1));
}

uint64_t sub_100347B44@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_10028088C(&qword_100975660, &qword_1007FA820);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1007FA7E0;
  if (qword_100973650 != -1)
  {
    swift_once();
  }

  *(v6 + 56) = &type metadata for SDAuthentication.Operation.StepPairingCreateSecret;
  *(v6 + 64) = &off_10097BFA0;
  *(v6 + 96) = &type metadata for SDAuthentication.Operation.BuildMessageHeader;
  *(v6 + 104) = &off_10097BE18;
  *(v6 + 136) = &type metadata for SDAuthentication.Operation.RecordPairing;
  *(v6 + 144) = &off_10097BF88;
  *(v6 + 176) = &type metadata for SDAuthentication.Operation.EnableDynamicStore;
  *(v6 + 184) = &off_10097BFB8;
  *a3 = v6;
  SecretContextVMa = _s22VisionUnlockiOSPairingV32HandlePairingCreateSecretContextVMa(0);
  *(a3 + *(SecretContextVMa + 28)) = 0;
  v35 = SecretContextVMa;
  *(a3 + *(SecretContextVMa + 32)) = 5;
  if (qword_100973648 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000C4AC(v8, qword_100979B18);
  v9 = a1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v33 = a3;
    v34 = a2;
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v36 = v32;
    *v12 = 138412546;
    *(v12 + 4) = v9;
    *v13 = v9;
    *(v12 + 12) = 2080;
    v14 = [v9 sessionID];
    if (v14)
    {
      v15 = v14;
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;
    }

    else
    {
      v18 = 0x8000000100789F30;
      v16 = 0xD000000000000015;
    }

    v19 = sub_10000C4E4(v16, v18, &v36);

    *(v12 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v10, v11, "Received authentication pairing create secret: %@ for sessionID %s", v12, 0x16u);
    sub_100005508(v13, &qword_100975400, &qword_1007F65D0);

    sub_10000C60C(v32);

    a2 = v34;
    a3 = v33;
  }

  else
  {
  }

  v20 = [v9 token];
  if (v20)
  {
    v21 = v20;
    v22 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    v25 = (a3 + *(v35 + 24));
    *v25 = v22;
    v25[1] = v24;
    v26 = _s22VisionUnlockiOSPairingV27HandlePairingRequestContextVMa(0);
    sub_10034A1C0(a2 + *(v26 + 20), a3 + *(v35 + 20), type metadata accessor for SDAuthenticationSessionMetrics);
    return sub_10034A228(a2, _s22VisionUnlockiOSPairingV27HandlePairingRequestContextVMa);
  }

  else
  {
    v28 = sub_100010F88(10, 0x20676E697373694DLL, 0xED00006E656B6F74);
    v30 = v29;
    sub_1000115C8();
    swift_allocError();
    *v31 = v28;
    *(v31 + 8) = v30;
    swift_willThrow();

    sub_10034A228(a2, _s22VisionUnlockiOSPairingV27HandlePairingRequestContextVMa);
  }
}

uint64_t sub_100347F84(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), Class *a4)
{
  v4 = sub_100347204(a3, a4);
  v5 = [v4 data];

  if (v5)
  {
    v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

    return v6;
  }

  else
  {
    v8 = sub_100010F88(10, 0xD00000000000001ALL, 0x8000000100789BF0);
    v10 = v9;
    sub_1000115C8();
    swift_allocError();
    *v11 = v8;
    *(v11 + 8) = v10;
    return swift_willThrow();
  }
}

id sub_10034805C()
{
  v1 = *(_s22VisionUnlockiOSPairingV32HandlePairingCreateRecordContextVMa(0) + 32);
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = *(v0 + v1);
LABEL_5:
    v5 = v2;
    return v3;
  }

  result = [objc_allocWithZone(SDAuthenticationConfirmation) init];
  if (result)
  {
    *(v0 + v1) = result;
    v3 = result;
    v2 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1003480CC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_10028088C(&qword_100975660, &qword_1007FA820);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1007F8830;
  if (qword_100973650 != -1)
  {
    swift_once();
  }

  *(v6 + 56) = &type metadata for SDAuthentication.Operation.StepPairingCreateRecordWithPasscode;
  *(v6 + 64) = &off_10097BF70;
  *(v6 + 96) = &type metadata for SDAuthentication.Operation.RecordPairing;
  *(v6 + 104) = &off_10097BF88;
  *(v6 + 136) = &type metadata for SDAuthentication.Operation.SendConfirmation;
  *(v6 + 144) = &off_10097C270;
  *a3 = v6;
  RecordContextVMa = _s22VisionUnlockiOSPairingV32HandlePairingCreateRecordContextVMa(0);
  v8 = (a3 + RecordContextVMa[6]);
  *v8 = xmmword_1007F8A80;
  *(a3 + RecordContextVMa[8]) = 0;
  v43 = a3;
  *(a3 + RecordContextVMa[9]) = 2;
  if (qword_100973648 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000C4AC(v9, qword_100979B18);
  v10 = a1;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v41 = v8;
    v42 = a2;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v44 = v40;
    *v13 = 138412546;
    *(v13 + 4) = v10;
    v39 = v14;
    *v14 = v10;
    *(v13 + 12) = 2080;
    v15 = [v10 sessionID];
    if (v15)
    {
      v16 = v15;
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;
    }

    else
    {
      v17 = 0xD000000000000015;
      v19 = 0x8000000100789F30;
    }

    v20 = sub_10000C4E4(v17, v19, &v44);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v11, v12, "Received authentication pairing create record: %@ for sessionID %s", v13, 0x16u);
    sub_100005508(v39, &qword_100975400, &qword_1007F65D0);

    sub_10000C60C(v40);

    v8 = v41;
    a2 = v42;
  }

  else
  {
  }

  v21 = [v10 token];
  if (v21)
  {
    v22 = v21;
    v23 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    v26 = (v43 + RecordContextVMa[7]);
    *v26 = v23;
    v26[1] = v25;
    v27 = _s22VisionUnlockiOSPairingV28HandlePairingResponseContextVMa(0);
    v28 = (a2 + *(v27 + 24));
    v29 = *v28;
    v30 = v28[1];
    v31 = v8;
    v32 = *v8;
    v33 = v31[1];
    sub_1002A9924(*v28, v30);
    sub_10028BCC0(v32, v33);
    *v31 = v29;
    v31[1] = v30;
    sub_10034A1C0(a2 + *(v27 + 20), v43 + RecordContextVMa[5], type metadata accessor for SDAuthenticationSessionMetrics);
    return sub_10034A228(a2, _s22VisionUnlockiOSPairingV28HandlePairingResponseContextVMa);
  }

  else
  {
    v35 = sub_100010F88(10, 0xD000000000000053, 0x800000010078CDD0);
    v37 = v36;
    sub_1000115C8();
    swift_allocError();
    *v38 = v35;
    *(v38 + 8) = v37;
    swift_willThrow();

    sub_10034A228(a2, _s22VisionUnlockiOSPairingV28HandlePairingResponseContextVMa);

    return sub_10028BCC0(*v8, v8[1]);
  }
}

uint64_t sub_100348518(uint64_t a1, uint64_t a2, void (*a3)(void, void))
{
  v4 = (v3 + *(a1 + 24));
  v5 = *v4;
  a3(*v4, v4[1]);
  return v5;
}

uint64_t sub_100348588(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v3 = a3();
  v4 = [v3 data];

  if (v4)
  {
    v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

    return v5;
  }

  else
  {
    v7 = sub_100010F88(10, 0xD00000000000001ALL, 0x8000000100789BF0);
    v9 = v8;
    sub_1000115C8();
    swift_allocError();
    *v10 = v7;
    *(v10 + 8) = v9;
    return swift_willThrow();
  }
}

uint64_t sub_10034865C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_10028088C(&qword_100975660, &qword_1007FA820);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1007F5670;
  if (qword_100973650 != -1)
  {
    swift_once();
  }

  *(v6 + 56) = &type metadata for SDAuthentication.Operation.HandleSucceededResult;
  *(v6 + 64) = &off_10097C258;
  *a3 = v6;
  if ([a1 hasSuccess])
  {
    v7 = *(_s22VisionUnlockiOSPairingV32HandlePairingCreateSecretContextVMa(0) + 20);
    v8 = _s22VisionUnlockiOSPairingV25HandleConfirmationContextVMa(0);
    sub_10034A1C0(a2 + v7, a3 + *(v8 + 20), type metadata accessor for SDAuthenticationSessionMetrics);
    LOBYTE(v7) = [a1 success];

    result = sub_10034A228(a2, _s22VisionUnlockiOSPairingV32HandlePairingCreateSecretContextVMa);
    *(a3 + *(v8 + 24)) = v7;
  }

  else
  {
    v10 = sub_100010F88(1, 0xD000000000000016, 0x8000000100789BD0);
    v12 = v11;
    sub_1000115C8();
    swift_allocError();
    *v13 = v10;
    *(v13 + 8) = v12;
    swift_willThrow();

    sub_10034A228(a2, _s22VisionUnlockiOSPairingV32HandlePairingCreateSecretContextVMa);
  }

  return result;
}

uint64_t sub_100348830@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for SDAuthenticationCommonOperationInput();
  v7 = *(*(v6 - 1) + 64);
  v8 = __chkstk_darwin(v6);
  v10 = &v35[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __chkstk_darwin(v8);
  v13 = &v35[-v12];
  __chkstk_darwin(v11);
  v15 = &v35[-v14];
  v16 = _s22VisionUnlockiOSPairingV4FlowVMa(0);
  *(a3 + v16[6]) = _swiftEmptyArrayStorage;
  *(a3 + v16[7]) = _swiftEmptyArrayStorage;
  sub_1002A9938(a1, a3 + v16[5]);
  sub_10034A1C0(a2, a3, type metadata accessor for SDAuthenticationCommonOperationInput);
  if (qword_100973648 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_10000C4AC(v17, qword_100979B18);
  sub_10034A1C0(a2, v15, type metadata accessor for SDAuthenticationCommonOperationInput);
  sub_10034A1C0(a2, v13, type metadata accessor for SDAuthenticationCommonOperationInput);
  sub_10034A1C0(a2, v10, type metadata accessor for SDAuthenticationCommonOperationInput);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v39 = v37;
    *v20 = 136315650;
    v21 = v6[6];
    type metadata accessor for UUID();
    v36 = v19;
    sub_100349CFC();
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v38 = a1;
    v24 = v23;
    sub_10034A228(v15, type metadata accessor for SDAuthenticationCommonOperationInput);
    v25 = sub_10000C4E4(v22, v24, &v39);

    *(v20 + 4) = v25;
    *(v20 + 12) = 2080;
    v26 = *&v13[v6[7]];
    v27 = sub_100027340();
    v29 = v28;
    sub_10034A228(v13, type metadata accessor for SDAuthenticationCommonOperationInput);
    v30 = sub_10000C4E4(v27, v29, &v39);

    *(v20 + 14) = v30;
    *(v20 + 22) = 2080;
    if (v10[v6[8]])
    {
      v31 = 7955787;
    }

    else
    {
      v31 = 1801678668;
    }

    if (v10[v6[8]])
    {
      v32 = 0xE300000000000000;
    }

    else
    {
      v32 = 0xE400000000000000;
    }

    sub_10034A228(v10, type metadata accessor for SDAuthenticationCommonOperationInput);
    v33 = sub_10000C4E4(v31, v32, &v39);

    *(v20 + 24) = v33;
    _os_log_impl(&_mh_execute_header, v18, v36, "Begin SDAuthenticationPairingFlow %s with %s role %s", v20, 0x20u);
    swift_arrayDestroy();

    sub_10034A228(a2, type metadata accessor for SDAuthenticationCommonOperationInput);
    return sub_10000C60C(v38);
  }

  else
  {

    sub_10034A228(a2, type metadata accessor for SDAuthenticationCommonOperationInput);
    sub_10000C60C(a1);
    sub_10034A228(v10, type metadata accessor for SDAuthenticationCommonOperationInput);
    sub_10034A228(v13, type metadata accessor for SDAuthenticationCommonOperationInput);
    return sub_10034A228(v15, type metadata accessor for SDAuthenticationCommonOperationInput);
  }
}

void sub_100348C20(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v148 = a2;
  v143 = a3;
  v121 = _s22VisionUnlockiOSPairingV25HandleConfirmationContextVMa(0);
  v4 = *(*(v121 - 8) + 64);
  __chkstk_darwin(v121);
  v125 = (&v121 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_10028088C(&qword_100979D50, &qword_1007FCF28);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v130 = &v121 - v8;
  RecordContextVMa = _s22VisionUnlockiOSPairingV32HandlePairingCreateRecordContextVMa(0);
  v9 = *(*(RecordContextVMa - 8) + 64);
  __chkstk_darwin(RecordContextVMa);
  v129 = (&v121 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_10028088C(&qword_100979D58, &qword_1007FCF30);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v136 = &v121 - v13;
  SecretContextVMa = _s22VisionUnlockiOSPairingV32HandlePairingCreateSecretContextVMa(0);
  v128 = *(SecretContextVMa - 8);
  v14 = *(v128 + 64);
  v15 = __chkstk_darwin(SecretContextVMa);
  v123 = &v121 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v124 = &v121 - v18;
  __chkstk_darwin(v17);
  v135 = (&v121 - v19);
  v20 = sub_10028088C(&qword_100979D60, &qword_1007FCF38);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v142 = &v121 - v22;
  v137 = _s22VisionUnlockiOSPairingV28HandlePairingResponseContextVMa(0);
  v134 = *(v137 - 8);
  v23 = *(v134 + 64);
  v24 = __chkstk_darwin(v137);
  v126 = &v121 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v127 = &v121 - v27;
  __chkstk_darwin(v26);
  v141 = (&v121 - v28);
  v29 = sub_10028088C(&qword_100979D68, &qword_1007FCF40);
  v30 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v29 - 8);
  v32 = &v121 - v31;
  v33 = _s22VisionUnlockiOSPairingV18InitialLockContextVMa(0);
  v145 = *(v33 - 8);
  v146 = v33;
  v34 = *(v145 + 64);
  v35 = __chkstk_darwin(v33);
  v139 = &v121 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v140 = &v121 - v37;
  v144 = _s22VisionUnlockiOSPairingV27HandlePairingRequestContextVMa(0);
  v138 = *(v144 - 8);
  v38 = *(v138 + 64);
  v39 = __chkstk_darwin(v144);
  v132 = &v121 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __chkstk_darwin(v39);
  v133 = &v121 - v42;
  __chkstk_darwin(v41);
  v44 = (&v121 - v43);
  v45 = sub_10028088C(&qword_100979D70, &qword_1007FCF48);
  v46 = *(*(v45 - 8) + 64);
  __chkstk_darwin(v45 - 8);
  v48 = &v121 - v47;
  v49 = _s22VisionUnlockiOSPairingV17InitialKeyContextVMa(0);
  v50 = *(v49 - 8);
  v51 = *(v50 + 64);
  v52 = __chkstk_darwin(v49);
  v54 = &v121 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v52);
  v56 = &v121 - v55;
  sub_1002A9938(a1, v149);
  sub_10028088C(&qword_1009819F0, &unk_1007FAAA0);
  sub_1000276B4(0, &unk_100979C38, off_1008C8D28);
  if (swift_dynamicCast())
  {
    v57 = v150;
    sub_1002A9938(v148, v149);
    sub_10028088C(&qword_1009758D8, &unk_1007F8C30);
    v58 = swift_dynamicCast();
    v59 = *(v50 + 56);
    if (!v58)
    {
      v59(v48, 1, 1, v49);
      sub_100005508(v48, &qword_100979D70, &qword_1007FCF48);
      v73 = sub_100010F88(10, 0xD000000000000046, 0x8000000100789AA0);
      v75 = v74;
      sub_1000115C8();
      swift_allocError();
      *v76 = v73;
      *(v76 + 8) = v75;
      swift_willThrow();

      return;
    }

    v59(v48, 0, 1, v49);
    sub_10034A288(v48, v56, _s22VisionUnlockiOSPairingV17InitialKeyContextVMa);
    sub_10034A1C0(v56, v54, _s22VisionUnlockiOSPairingV17InitialKeyContextVMa);
    v60 = v57;
    v61 = v147;
    sub_100347284(v60, v54, v44);
    if (v61)
    {
      sub_10034A228(v56, _s22VisionUnlockiOSPairingV17InitialKeyContextVMa);

      return;
    }

    v93 = v143;
    v143[3] = v144;
    v93[4] = &off_1008DCDF8;
    v94 = sub_10002F604(v93);
    sub_10034A288(v44, v94, _s22VisionUnlockiOSPairingV27HandlePairingRequestContextVMa);

    v95 = _s22VisionUnlockiOSPairingV17InitialKeyContextVMa;
    v96 = v56;
    goto LABEL_35;
  }

  v62 = v148;
  sub_1002A9938(a1, v149);
  sub_1000276B4(0, &qword_100979D78, off_1008C8D30);
  if (swift_dynamicCast())
  {
    v63 = v150;
    sub_1002A9938(v62, v149);
    sub_10028088C(&qword_1009758D8, &unk_1007F8C30);
    v64 = v146;
    v65 = swift_dynamicCast();
    v66 = *(v145 + 56);
    if (v65)
    {
      v66(v32, 0, 1, v64);
      v67 = v140;
      sub_10034A288(v32, v140, _s22VisionUnlockiOSPairingV18InitialLockContextVMa);
      v68 = v139;
      sub_10034A1C0(v67, v139, _s22VisionUnlockiOSPairingV18InitialLockContextVMa);
      v69 = v63;
      v70 = v141;
      v71 = v147;
      sub_1003476D0(v69, v68, v141);
      if (v71)
      {
        v72 = _s22VisionUnlockiOSPairingV18InitialLockContextVMa;
LABEL_25:
        sub_10034A228(v67, v72);

        return;
      }

      v104 = v143;
      v143[3] = v137;
      v104[4] = &off_1008DCE10;
      v105 = sub_10002F604(v104);
      sub_10034A288(v70, v105, _s22VisionUnlockiOSPairingV28HandlePairingResponseContextVMa);

      v106 = _s22VisionUnlockiOSPairingV18InitialLockContextVMa;
      goto LABEL_34;
    }

    v66(v32, 1, 1, v64);
    sub_100005508(v32, &qword_100979D68, &qword_1007FCF40);
    v84 = "sult, message may be replayed";
    v85 = 0xD000000000000047;
LABEL_31:
    v113 = sub_100010F88(10, v85, v84 | 0x8000000000000000);
    v115 = v114;
    sub_1000115C8();
    swift_allocError();
    *v116 = v113;
    *(v116 + 8) = v115;
    swift_willThrow();

    return;
  }

  sub_1002A9938(a1, v149);
  sub_1000276B4(0, &qword_100979D80, off_1008C8D18);
  if (!swift_dynamicCast())
  {
    sub_1002A9938(a1, v149);
    sub_1000276B4(0, &qword_100979D88, off_1008C8D10);
    if (swift_dynamicCast())
    {
      v63 = v150;
      sub_1002A9938(v62, v149);
      sub_10028088C(&qword_1009758D8, &unk_1007F8C30);
      v87 = v136;
      v86 = v137;
      v88 = swift_dynamicCast();
      v89 = *(v134 + 56);
      if (v88)
      {
        v89(v87, 0, 1, v86);
        v67 = v127;
        sub_10034A288(v87, v127, _s22VisionUnlockiOSPairingV28HandlePairingResponseContextVMa);
        v90 = v126;
        sub_10034A1C0(v67, v126, _s22VisionUnlockiOSPairingV28HandlePairingResponseContextVMa);
        v69 = v63;
        v91 = v129;
        v92 = v147;
        sub_1003480CC(v69, v90, v129);
        if (v92)
        {
          v72 = _s22VisionUnlockiOSPairingV28HandlePairingResponseContextVMa;
          goto LABEL_25;
        }

        v117 = v143;
        v143[3] = RecordContextVMa;
        v117[4] = &off_1008DCE40;
        v118 = sub_10002F604(v117);
        sub_10034A288(v91, v118, _s22VisionUnlockiOSPairingV32HandlePairingCreateRecordContextVMa);

        v106 = _s22VisionUnlockiOSPairingV28HandlePairingResponseContextVMa;
        goto LABEL_34;
      }

      v89(v87, 1, 1, v86);
      sub_100005508(v87, &qword_100979D58, &qword_1007FCF30);
      v84 = "ssage may be replayed";
      v85 = 0xD000000000000051;
    }

    else
    {
      sub_1002A9938(a1, v149);
      sub_1000276B4(0, &qword_1009758D0, off_1008C8D08);
      if (!swift_dynamicCast())
      {
        v107 = sub_100010F88(10, 0xD00000000000003ALL, 0x800000010078CC30);
        v109 = v108;
        sub_1000115C8();
        swift_allocError();
        *v110 = v107;
        *(v110 + 8) = v109;
        swift_willThrow();
        return;
      }

      v63 = v150;
      sub_1002A9938(v62, v149);
      sub_10028088C(&qword_1009758D8, &unk_1007F8C30);
      v97 = v130;
      v98 = SecretContextVMa;
      v99 = swift_dynamicCast();
      v100 = *(v128 + 56);
      if (v99)
      {
        v100(v97, 0, 1, v98);
        v67 = v124;
        sub_10034A288(v97, v124, _s22VisionUnlockiOSPairingV32HandlePairingCreateSecretContextVMa);
        v101 = v123;
        sub_10034A1C0(v67, v123, _s22VisionUnlockiOSPairingV32HandlePairingCreateSecretContextVMa);
        v69 = v63;
        v102 = v125;
        v103 = v147;
        sub_10034865C(v69, v101, v125);
        if (v103)
        {
          v72 = _s22VisionUnlockiOSPairingV32HandlePairingCreateSecretContextVMa;
          goto LABEL_25;
        }

        v119 = v143;
        v143[3] = v121;
        v119[4] = &off_1008DCE58;
        v120 = sub_10002F604(v119);
        sub_10034A288(v102, v120, _s22VisionUnlockiOSPairingV25HandleConfirmationContextVMa);

        v106 = _s22VisionUnlockiOSPairingV32HandlePairingCreateSecretContextVMa;
        goto LABEL_34;
      }

      v100(v97, 1, 1, v98);
      sub_100005508(v97, &qword_100979D50, &qword_1007FCF28);
      v84 = "for VisionUnlockiOSPairing";
      v85 = 0xD000000000000055;
    }

    goto LABEL_31;
  }

  v63 = v150;
  sub_1002A9938(v62, v149);
  sub_10028088C(&qword_1009758D8, &unk_1007F8C30);
  v77 = v142;
  v78 = v144;
  v79 = swift_dynamicCast();
  v80 = *(v138 + 56);
  if (!v79)
  {
    v80(v77, 1, 1, v78);
    sub_100005508(v77, &qword_100979D60, &qword_1007FCF38);
    v84 = "e may be replayed";
    v85 = 0xD000000000000050;
    goto LABEL_31;
  }

  v80(v77, 0, 1, v78);
  v67 = v133;
  sub_10034A288(v77, v133, _s22VisionUnlockiOSPairingV27HandlePairingRequestContextVMa);
  v81 = v132;
  sub_10034A1C0(v67, v132, _s22VisionUnlockiOSPairingV27HandlePairingRequestContextVMa);
  v69 = v63;
  v82 = v135;
  v83 = v147;
  sub_100347B44(v69, v81, v135);
  if (v83)
  {
    v72 = _s22VisionUnlockiOSPairingV27HandlePairingRequestContextVMa;
    goto LABEL_25;
  }

  v111 = v143;
  v143[3] = SecretContextVMa;
  v111[4] = &off_1008DCE28;
  v112 = sub_10002F604(v111);
  sub_10034A288(v82, v112, _s22VisionUnlockiOSPairingV32HandlePairingCreateSecretContextVMa);

  v106 = _s22VisionUnlockiOSPairingV27HandlePairingRequestContextVMa;
LABEL_34:
  v95 = v106;
  v96 = v67;
LABEL_35:
  sub_10034A228(v96, v95);
}

unint64_t sub_100349CFC()
{
  result = qword_100978CE0;
  if (!qword_100978CE0)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100978CE0);
  }

  return result;
}

void sub_100349D7C()
{
  type metadata accessor for SDAuthenticationCommonOperationInput();
  if (v0 <= 0x3F)
  {
    sub_100349E3C();
    if (v1 <= 0x3F)
    {
      sub_1002F9C34(319, &qword_1009756D8, &type metadata for AuthenticationPolicies, &type metadata accessor for Array);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_100349E3C()
{
  result = qword_1009756D0;
  if (!qword_1009756D0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1009756D0);
  }

  return result;
}

void sub_100349EE8()
{
  sub_1002A6B2C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for SDAuthenticationSessionMetrics();
    if (v1 <= 0x3F)
    {
      sub_1002F9C34(319, &unk_100978AB0, &type metadata for Data, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_1002A6C94(319, &qword_100979C30, &unk_100979C38, off_1008C8D28);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10034A028()
{
  sub_1002A6B2C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for SDAuthenticationSessionMetrics();
    if (v1 <= 0x3F)
    {
      sub_1002A6C94(319, &qword_100979CE0, &unk_100979CE8, off_1008C8D38);
      if (v2 <= 0x3F)
      {
        sub_1002F9C34(319, &unk_100978AB0, &type metadata for Data, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_10034A1C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10034A228(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10034A288(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_10034A35C()
{
  sub_1002A6B2C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for SDAuthenticationSessionMetrics();
    if (v1 <= 0x3F)
    {
      sub_1002F9C34(319, &unk_100978AB0, &type metadata for Data, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_1002A6C94(319, &unk_100979EA0, &qword_100979D80, off_1008C8D18);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10034A488()
{
  sub_1002A6B2C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for SDAuthenticationSessionMetrics();
    if (v1 <= 0x3F)
    {
      sub_1002F9C34(319, &unk_100978AB0, &type metadata for Data, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_1002A6C94(319, &unk_100975B40, &qword_1009758D0, off_1008C8D08);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10034A5D8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, uint64_t *a6)
{
  sub_1002A6B2C();
  if (v9 <= 0x3F)
  {
    type metadata accessor for SDAuthenticationSessionMetrics();
    if (v10 <= 0x3F)
    {
      sub_1002A6C94(319, a4, a5, a6);
      if (v11 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_10034A6B8(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for SDAuthenticationSessionMetrics();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_10034A778(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for SDAuthenticationSessionMetrics();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10034A81C()
{
  sub_1002A6B2C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for SDAuthenticationSessionMetrics();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_10034A8C8()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_10097A140);
  v1 = sub_10000C4AC(v0, qword_10097A140);
  if (qword_1009736D0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A08B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

BOOL sub_10034A990(void *a1)
{
  v2 = sub_10028088C(&qword_10097A220, &unk_1007FD280);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v73 - v7;
  v9 = [a1 emailAddresses];
  sub_10028088C(&qword_10097A210, &qword_1007FDB90);
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v10 >> 62)
  {
    v11 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = [a1 phoneNumbers];
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v13 >> 62)
  {
    v14 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (__OFADD__(v11, v14))
  {
    __break(1u);
LABEL_33:
    v17 = _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_9;
  }

  if (v11 + v14 != 1)
  {
    return 0;
  }

  v15 = [a1 postalAddresses];
  v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v16 >> 62)
  {
    goto LABEL_33;
  }

  v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_9:

  if (v17)
  {
    return 0;
  }

  v18 = [a1 urlAddresses];
  v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v20 = v19 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (v20)
  {
    return 0;
  }

  v21 = [a1 contactRelations];
  v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v23 = v22 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (v23)
  {
    return 0;
  }

  v24 = [a1 socialProfiles];
  v25 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v26 = v25 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (v26)
  {
    return 0;
  }

  v27 = [a1 instantMessageAddresses];
  v28 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v29 = v28 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (v29)
  {
    return 0;
  }

  v30 = [a1 dates];
  v31 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v31 >> 62))
  {
    v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v32)
    {
      goto LABEL_24;
    }

    return 0;
  }

  v72 = _CocoaArrayWrapper.endIndex.getter();

  if (v72)
  {
    return 0;
  }

LABEL_24:
  v33 = [a1 birthday];
  if (v33)
  {
    v34 = v33;
    static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

    v35 = type metadata accessor for DateComponents();
    (*(*(v35 - 8) + 56))(v8, 0, 1, v35);
    v36 = v8;
LABEL_28:
    sub_100005508(v36, &qword_10097A220, &unk_1007FD280);
    return 0;
  }

  v37 = type metadata accessor for DateComponents();
  v38 = *(*(v37 - 8) + 56);
  v38(v8, 1, 1, v37);
  sub_100005508(v8, &qword_10097A220, &unk_1007FD280);
  v39 = [a1 nonGregorianBirthday];
  if (v39)
  {
    v40 = v39;
    static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

    v38(v6, 0, 1, v37);
    v36 = v6;
    goto LABEL_28;
  }

  v38(v6, 1, 1, v37);
  sub_100005508(v6, &qword_10097A220, &unk_1007FD280);
  v42 = [a1 note];
  v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v45 = v44;

  v46 = HIBYTE(v45) & 0xF;
  if ((v45 & 0x2000000000000000) == 0)
  {
    v46 = v43 & 0xFFFFFFFFFFFFLL;
  }

  if (v46)
  {
    return 0;
  }

  v47 = [a1 middleName];
  v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v50 = v49;

  v51 = HIBYTE(v50) & 0xF;
  if ((v50 & 0x2000000000000000) == 0)
  {
    v51 = v48 & 0xFFFFFFFFFFFFLL;
  }

  if (v51)
  {
    return 0;
  }

  v52 = [a1 nickname];
  v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v55 = v54;

  v56 = HIBYTE(v55) & 0xF;
  if ((v55 & 0x2000000000000000) == 0)
  {
    v56 = v53 & 0xFFFFFFFFFFFFLL;
  }

  if (v56)
  {
    return 0;
  }

  v57 = [a1 organizationName];
  v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v60 = v59;

  v61 = HIBYTE(v60) & 0xF;
  if ((v60 & 0x2000000000000000) == 0)
  {
    v61 = v58 & 0xFFFFFFFFFFFFLL;
  }

  if (v61)
  {
    return 0;
  }

  v62 = [a1 departmentName];
  v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v65 = v64;

  v66 = HIBYTE(v65) & 0xF;
  if ((v65 & 0x2000000000000000) == 0)
  {
    v66 = v63 & 0xFFFFFFFFFFFFLL;
  }

  if (v66)
  {
    return 0;
  }

  v67 = [a1 jobTitle];
  v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v70 = v69;

  v71 = HIBYTE(v70) & 0xF;
  if ((v70 & 0x2000000000000000) == 0)
  {
    v71 = v68 & 0xFFFFFFFFFFFFLL;
  }

  return v71 == 0;
}

uint64_t sub_10034B0A4(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_10002CDC0((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    sub_10028088C(&unk_10097A930, &unk_1007F9050);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return _swift_continuation_throwingResumeWithError(v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_10034B1A0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SDAirDropContentHandlerExchange();
  result = swift_allocObject();
  *a1 = result;
  return result;
}

uint64_t sub_10034B1D4(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for SFAirDrop.TransferType();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v5 = static AirDropActor.shared;

  return _swift_task_switch(sub_10034B2CC, v5, 0);
}

uint64_t sub_10034B2CC()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[2];
  v4 = v0[3];
  SFAirDropReceive.AskRequest.type.getter();
  v5 = SFAirDrop.TransferType.isOnlyExchange.getter();
  (*(v2 + 8))(v1, v4);

  v6 = v0[1];

  return v6(v5 & 1);
}

void sub_10034B36C(uint64_t a1, char a2)
{
  sub_1003D8D18(&off_1008D6AA0, a2);
  sub_100005508(&unk_1008D6AC0, &qword_100981D40, &unk_1007FA6C0);
  v2 = String._bridgeToObjectiveC()();
  v3 = SFLocalizedStringForKey();

  if (v3)
  {

    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10034B410(uint64_t a1, char a2)
{
  *(v2 + 449) = a2;
  *(v2 + 240) = a1;
  v3 = sub_10028088C(&qword_100976900, &unk_1007FD250);
  *(v2 + 248) = v3;
  v4 = *(v3 - 8);
  *(v2 + 256) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 264) = swift_task_alloc();
  v6 = *(*(sub_10028088C(&unk_100974E00, &qword_1007F8940) - 8) + 64) + 15;
  *(v2 + 272) = swift_task_alloc();
  v7 = type metadata accessor for URL();
  *(v2 + 280) = v7;
  v8 = *(v7 - 8);
  *(v2 + 288) = v8;
  v9 = *(v8 + 64) + 15;
  *(v2 + 296) = swift_task_alloc();
  *(v2 + 304) = swift_task_alloc();
  v10 = type metadata accessor for URLQueryItem();
  *(v2 + 312) = v10;
  v11 = *(v10 - 8);
  *(v2 + 320) = v11;
  v12 = *(v11 + 64) + 15;
  *(v2 + 328) = swift_task_alloc();
  v13 = type metadata accessor for URLComponents();
  *(v2 + 336) = v13;
  v14 = *(v13 - 8);
  *(v2 + 344) = v14;
  v15 = *(v14 + 64) + 15;
  *(v2 + 352) = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v16 = static AirDropActor.shared;
  *(v2 + 360) = static AirDropActor.shared;

  return _swift_task_switch(sub_10034B674, v16, 0);
}

uint64_t sub_10034B674()
{
  v121 = v0;
  v1 = v0[30];
  SFAirDrop.ContactInfo.vcard.getter();
  v2 = vCardContactProvider.init(data:)();
  v4 = v3;
  v5 = vCardContactProvider.contacts()();
  sub_100026AC0(v2, v4);
  if (!(v5 >> 62))
  {
    if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_62:

    if (qword_100973658 == -1)
    {
LABEL_63:
      v98 = type metadata accessor for Logger();
      sub_10000C4AC(v98, qword_10097A140);
      v99 = Logger.logObject.getter();
      v100 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v99, v100))
      {
        v101 = swift_slowAlloc();
        *v101 = 0;
        _os_log_impl(&_mh_execute_header, v99, v100, "Failed to import contact which could not be deserialized", v101, 2u);
      }

      v102 = type metadata accessor for SFAirDropReceive.Failure();
      sub_100010738(&unk_10097A660, &type metadata accessor for SFAirDropReceive.Failure);
      swift_allocError();
      (*(*(v102 - 8) + 104))(v103, enum case for SFAirDropReceive.Failure.moveToAppFailed(_:), v102);
      swift_willThrow();
      goto LABEL_66;
    }

LABEL_71:
    swift_once();
    goto LABEL_63;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_62;
  }

LABEL_3:
  if ((v5 & 0xC000000000000001) == 0)
  {
    if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v6 = *(v5 + 32);
      goto LABEL_6;
    }

    __break(1u);
    goto LABEL_71;
  }

  v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_6:
  v7 = v6;
  v0[46] = v6;

  if (sub_10034A990(v7))
  {
    v117 = [objc_allocWithZone(SFContactInfo) init];
    v0[47] = v117;
    v8 = [v7 emailAddresses];
    sub_10028088C(&qword_10097A210, &qword_1007FDB90);
    v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v9 >> 62)
    {
      v10 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v10)
    {
      v120 = _swiftEmptyArrayStorage;
      sub_10028FBDC(0, v10 & ~(v10 >> 63), 0);
      if (v10 < 0)
      {
        __break(1u);
LABEL_75:
        __break(1u);
        goto LABEL_76;
      }

      v11 = 0;
      v12 = v120;
      do
      {
        if ((v9 & 0xC000000000000001) != 0)
        {
          v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v13 = *(v9 + 8 * v11 + 32);
        }

        v14 = v13;
        v15 = [v13 value];
        v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = v17;

        v120 = v12;
        v20 = v12[2];
        v19 = v12[3];
        v2 = (v20 + 1);
        if (v20 >= v19 >> 1)
        {
          sub_10028FBDC((v19 > 1), v20 + 1, 1);
          v12 = v120;
        }

        ++v11;
        v12[2] = v2;
        v21 = &v12[2 * v20];
        v21[4] = v16;
        v21[5] = v18;
      }

      while (v10 != v11);

      if (v12[2])
      {
        goto LABEL_26;
      }
    }

    else
    {

      v12 = _swiftEmptyArrayStorage;
      if (_swiftEmptyArrayStorage[2])
      {
LABEL_26:
        v2 = v12[4];
        v29 = v12[5];

        v30 = String._bridgeToObjectiveC()();

LABEL_29:
        [v117 setEmailAddress:v30];

        v31 = [v7 phoneNumbers];
        v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v7 >> 62)
        {
          v32 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v32 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (!v32)
        {

          v34 = _swiftEmptyArrayStorage;
          if (_swiftEmptyArrayStorage[2])
          {
LABEL_41:
            v45 = v34[4];
            v46 = v34[5];

            v47 = String._bridgeToObjectiveC()();

LABEL_46:
            [v117 setPhoneNumber:v47];

            v51 = [objc_allocWithZone(SFClient) init];
            v0[48] = v51;
            v0[2] = v0;
            v0[7] = v0 + 28;
            v0[3] = sub_10034C45C;
            v52 = swift_continuation_init();
            v0[17] = sub_10028088C(&qword_10097A218, &unk_1007FD270);
            v0[10] = _NSConcreteStackBlock;
            v0[11] = 1107296256;
            v0[12] = sub_10034B0A4;
            v0[13] = &unk_1008DCF00;
            v0[14] = v52;
            [v51 findContact:v117 completion:v0 + 10];

            return _swift_continuation_await(v0 + 2);
          }

LABEL_45:

          v47 = 0;
          goto LABEL_46;
        }

        v120 = _swiftEmptyArrayStorage;
        sub_10028FBDC(0, v32 & ~(v32 >> 63), 0);
        if ((v32 & 0x8000000000000000) == 0)
        {
          v33 = 0;
          v34 = v120;
          do
          {
            if ((v7 & 0xC000000000000001) != 0)
            {
              v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v35 = *(v7 + 8 * v33 + 32);
            }

            v36 = v35;
            v37 = [v35 value];
            v38 = [v37 stringValue];

            v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v41 = v40;

            v120 = v34;
            v43 = v34[2];
            v42 = v34[3];
            if (v43 >= v42 >> 1)
            {
              sub_10028FBDC((v42 > 1), v43 + 1, 1);
              v34 = v120;
            }

            ++v33;
            v34[2] = v43 + 1;
            v44 = &v34[2 * v43];
            v44[4] = v39;
            v44[5] = v41;
          }

          while (v32 != v33);

          if (v34[2])
          {
            goto LABEL_41;
          }

          goto LABEL_45;
        }

        goto LABEL_75;
      }
    }

    v30 = 0;
    goto LABEL_29;
  }

  if (qword_100973658 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_10000C4AC(v10, qword_10097A140);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v22, v23, "Creating a new contact because many fields are being shared", v24, 2u);
  }

  [v0[46] mutableCopy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10034E374();
  swift_dynamicCast();
  v25 = v0[26];
  CNMutableContact.saveToContactStore()();
  if (v26)
  {
    v27 = v0;
    v28 = v0[46];

    v0 = v27;
LABEL_66:
    v104 = v0[44];
    v105 = v0[41];
    v107 = v0[37];
    v106 = v0[38];
    v109 = v0[33];
    v108 = v0[34];

    v110 = v0[1];

    return v110();
  }

  v48 = [v25 identifier];
  v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v50;

  v0[50] = v49;
  v0[51] = v7;
  if (*(v0 + 449))
  {

LABEL_58:
    v89 = v0[44];
    v90 = v0[41];
    v92 = v0[37];
    v91 = v0[38];
    v94 = v0[33];
    v93 = v0[34];

    v95 = v0[1];
    v96 = v0[50];
    v97 = v0[51];

    return v95(v96, v97);
  }

  v53 = v0[44];
  v2 = v0;
  v56 = v0 + 40;
  v54 = v0[40];
  v55 = v56[1];
  v114 = v2[39];
  v57 = v2[36];
  v118 = v2[35];
  v58 = v2[34];
  URLComponents.init()();
  URLComponents.scheme.setter();
  URLComponents.host.setter();

  v112 = v49;
  URLQueryItem.init(name:value:)();

  sub_10028088C(&unk_100975000, &unk_1007FD260);
  v59 = *(v54 + 72);
  v60 = (*(v54 + 80) + 32) & ~*(v54 + 80);
  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_1007F5670;
  (*(v54 + 16))(v61 + v60, v55, v114);
  URLComponents.queryItems.setter();
  URLComponents.url.getter();
  if ((*(v57 + 48))(v58, 1, v118) == 1)
  {
    sub_100005508(v2[34], &unk_100974E00, &qword_1007F8940);
    if (qword_100973658 == -1)
    {
LABEL_51:
      sub_10000C4AC(v10, qword_10097A140);
      v62 = Logger.logObject.getter();
      v63 = static os_log_type_t.error.getter();
      v64 = os_log_type_enabled(v62, v63);
      v65 = v2[46];
      v67 = v2[43];
      v66 = v2[44];
      v68 = v2;
      v70 = v2[41];
      v69 = v2[42];
      v71 = v2[40];
      v116 = v68;
      v72 = v68[39];
      if (v64)
      {
        v119 = v70;
        v73 = swift_slowAlloc();
        v115 = v66;
        v74 = swift_slowAlloc();
        v120 = v74;
        *v73 = 136315138;

        v113 = v69;
        v75 = sub_10000C4E4(v112, v7, &v120);

        *(v73 + 4) = v75;
        _os_log_impl(&_mh_execute_header, v62, v63, "Failed to create URL to launch Contacts for contact ID %s", v73, 0xCu);
        sub_10000C60C(v74);

        (*(v71 + 8))(v119, v72);
        (*(v67 + 8))(v115, v113);
      }

      else
      {

        (*(v71 + 8))(v70, v72);
        (*(v67 + 8))(v66, v69);
      }

      v0 = v116;
      goto LABEL_58;
    }

LABEL_76:
    swift_once();
    goto LABEL_51;
  }

  v76 = v2[38];
  v77 = v2[35];
  v78 = v2[36];
  v79 = v2[33];
  (*(v78 + 32))(v76, v2[34], v77);
  sub_10028088C(&unk_100974FD0, &qword_10080E9A0);
  v80 = *(v78 + 72);
  v81 = (*(v78 + 80) + 32) & ~*(v78 + 80);
  v82 = swift_allocObject();
  *(v82 + 16) = xmmword_1007F5670;
  v83 = *(v78 + 16);
  v2[52] = v83;
  v2[53] = (v78 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v83(v82 + v81, v76, v77);
  v2[27] = 0;
  v84 = swift_allocObject();
  *(v84 + 16) = v82;
  *(v84 + 24) = 0;
  SFProgressTask.init(_:initialProgress:operation:file:line:)();
  v85 = async function pointer to SFProgressTask.finalValue.getter[1];
  v86 = swift_task_alloc();
  v2[54] = v86;
  *v86 = v2;
  v86[1] = sub_10034D2A8;
  v87 = v2[33];
  v88 = v2[31];

  return SFProgressTask.finalValue.getter(v2 + 56, v88);
}

uint64_t sub_10034C45C()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 392) = v3;
  v4 = *(v1 + 360);
  if (v3)
  {
    v5 = sub_10034D7C8;
  }

  else
  {
    v5 = sub_10034C57C;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10034C57C()
{
  v83 = v0;
  v1 = *(v0 + 224);
  if (qword_100973658 != -1)
  {
    swift_once();
  }

  v80 = type metadata accessor for Logger();
  sub_10000C4AC(v80, qword_10097A140);
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v82[0] = v6;
    *v5 = 136315138;
    v7 = [v2 contactIdentifier];
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

    v12 = sub_10000C4E4(v9, v11, v82);

    *(v5 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v3, v4, "Showing existing contact {fetchedContactInfo.contactIdentifier: %s}", v5, 0xCu);
    sub_10000C60C(v6);
  }

  v13 = [v2 contactIdentifier];
  if (v13)
  {
    v14 = v13;
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0;
  }

  v18 = *(v0 + 376);
  *(v0 + 192) = v15;
  *(v0 + 200) = v17;
  v82[0] = 0;
  v82[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(63);
  v19._countAndFlagsBits = 0xD00000000000003CLL;
  v19._object = 0x800000010078CEA0;
  String.append(_:)(v19);
  v20 = [v18 description];
  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  v24._countAndFlagsBits = v21;
  v24._object = v23;
  String.append(_:)(v24);

  v25._countAndFlagsBits = 125;
  v25._object = 0xE100000000000000;
  String.append(_:)(v25);
  sub_10028088C(&qword_100975100, &qword_1007FBA10);
  Optional.tryUnwrap(_:file:line:)();
  v26 = *(v0 + 384);
  v27 = *(v0 + 376);

  v29 = *(v0 + 176);
  v28 = *(v0 + 184);
  *(v0 + 400) = v29;
  *(v0 + 408) = v28;
  if (*(v0 + 449))
  {

LABEL_13:
    v30 = *(v0 + 352);
    v31 = *(v0 + 328);
    v33 = *(v0 + 296);
    v32 = *(v0 + 304);
    v35 = *(v0 + 264);
    v34 = *(v0 + 272);

    v36 = *(v0 + 8);
    v37 = *(v0 + 400);
    v38 = *(v0 + 408);

    return v36(v37, v38);
  }

  v40 = *(v0 + 352);
  v41 = *(v0 + 320);
  v42 = *(v0 + 328);
  v43 = *(v0 + 312);
  v44 = *(v0 + 288);
  v78 = *(v0 + 280);
  v45 = *(v0 + 272);
  URLComponents.init()();
  URLComponents.scheme.setter();
  URLComponents.host.setter();

  v75 = v29;
  URLQueryItem.init(name:value:)();

  sub_10028088C(&unk_100975000, &unk_1007FD260);
  v46 = *(v41 + 72);
  v47 = (*(v41 + 80) + 32) & ~*(v41 + 80);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_1007F5670;
  (*(v41 + 16))(v48 + v47, v42, v43);
  URLComponents.queryItems.setter();
  URLComponents.url.getter();
  if ((*(v44 + 48))(v45, 1, v78) == 1)
  {
    sub_100005508(*(v0 + 272), &unk_100974E00, &qword_1007F8940);
    if (qword_100973658 != -1)
    {
      swift_once();
    }

    sub_10000C4AC(v80, qword_10097A140);
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.error.getter();
    v51 = os_log_type_enabled(v49, v50);
    v81 = *(v0 + 368);
    v52 = *(v0 + 344);
    v53 = *(v0 + 352);
    v55 = *(v0 + 328);
    v54 = *(v0 + 336);
    v57 = *(v0 + 312);
    v56 = *(v0 + 320);
    if (v51)
    {
      v79 = *(v0 + 328);
      v58 = swift_slowAlloc();
      v77 = v53;
      v59 = swift_slowAlloc();
      v82[0] = v59;
      *v58 = 136315138;

      v60 = sub_10000C4E4(v75, v28, v82);
      v76 = v54;
      v61 = v60;

      *(v58 + 4) = v61;
      _os_log_impl(&_mh_execute_header, v49, v50, "Failed to create URL to launch Contacts for contact ID %s", v58, 0xCu);
      sub_10000C60C(v59);

      (*(v56 + 8))(v79, v57);
      (*(v52 + 8))(v77, v76);
    }

    else
    {

      (*(v56 + 8))(v55, v57);
      (*(v52 + 8))(v53, v54);
    }

    goto LABEL_13;
  }

  v62 = *(v0 + 304);
  v63 = *(v0 + 280);
  v64 = *(v0 + 288);
  v65 = *(v0 + 264);
  (*(v64 + 32))(v62, *(v0 + 272), v63);
  sub_10028088C(&unk_100974FD0, &qword_10080E9A0);
  v66 = *(v64 + 72);
  v67 = (*(v64 + 80) + 32) & ~*(v64 + 80);
  v68 = swift_allocObject();
  *(v68 + 16) = xmmword_1007F5670;
  v69 = *(v64 + 16);
  *(v0 + 416) = v69;
  *(v0 + 424) = (v64 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v69(v68 + v67, v62, v63);
  *(v0 + 216) = 0;
  v70 = swift_allocObject();
  *(v70 + 16) = v68;
  *(v70 + 24) = 0;
  SFProgressTask.init(_:initialProgress:operation:file:line:)();
  v71 = async function pointer to SFProgressTask.finalValue.getter[1];
  v72 = swift_task_alloc();
  *(v0 + 432) = v72;
  *v72 = v0;
  v72[1] = sub_10034D2A8;
  v73 = *(v0 + 264);
  v74 = *(v0 + 248);

  return SFProgressTask.finalValue.getter(v0 + 448, v74);
}

uint64_t sub_10034D2A8()
{
  v2 = *v1;
  v3 = *(*v1 + 432);
  v4 = *v1;
  *(*v1 + 440) = v0;

  v5 = *(v2 + 360);
  if (v0)
  {
    v6 = sub_10034E228;
  }

  else
  {
    v6 = sub_10034D3D4;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10034D3D4()
{
  v60 = v0;
  if (*(v0 + 448))
  {
    v1 = *(v0 + 344);
    v55 = *(v0 + 336);
    v57 = *(v0 + 352);
    v53 = *(v0 + 328);
    v3 = *(v0 + 312);
    v2 = *(v0 + 320);
    v4 = *(v0 + 304);
    v6 = *(v0 + 280);
    v5 = *(v0 + 288);
    v7 = *(v0 + 256);
    v8 = *(v0 + 264);
    v9 = *(v0 + 248);

    (*(v7 + 8))(v8, v9);
    (*(v5 + 8))(v4, v6);
    (*(v2 + 8))(v53, v3);
    (*(v1 + 8))(v57, v55);
  }

  else
  {
    if (qword_100973658 != -1)
    {
      swift_once();
    }

    v11 = *(v0 + 416);
    v10 = *(v0 + 424);
    v12 = *(v0 + 296);
    v13 = *(v0 + 304);
    v14 = *(v0 + 280);
    v15 = type metadata accessor for Logger();
    sub_10000C4AC(v15, qword_10097A140);
    v11(v12, v13, v14);
    v16 = Logger.logObject.getter();
    v49 = static os_log_type_t.error.getter();
    v17 = os_log_type_enabled(v16, v49);
    v18 = *(v0 + 368);
    v19 = *(v0 + 344);
    v20 = *(v0 + 352);
    v21 = *(v0 + 336);
    v56 = *(v0 + 328);
    v58 = *(v0 + 320);
    v22 = *(v0 + 296);
    v52 = *(v0 + 304);
    v54 = *(v0 + 312);
    v24 = *(v0 + 280);
    v23 = *(v0 + 288);
    v25 = *(v0 + 256);
    v26 = *(v0 + 248);
    v50 = v26;
    v51 = *(v0 + 264);
    if (v17)
    {
      v47 = *(v0 + 368);
      v27 = swift_slowAlloc();
      v48 = v19;
      v28 = swift_slowAlloc();
      v59 = v28;
      *v27 = 136315138;
      sub_100010738(&qword_100975160, &type metadata accessor for URL);
      v45 = v21;
      v46 = v20;
      v29 = dispatch thunk of CustomStringConvertible.description.getter();
      v31 = v30;
      v32 = *(v23 + 8);
      v32(v22, v24);
      v33 = sub_10000C4E4(v29, v31, &v59);

      *(v27 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v16, v49, "Failed to launch Contacts for URL %s", v27, 0xCu);
      sub_10000C60C(v28);

      (*(v25 + 8))(v51, v50);
      v32(v52, v24);
      (*(v58 + 8))(v56, v54);
      (*(v48 + 8))(v46, v45);
    }

    else
    {

      v34 = *(v23 + 8);
      v34(v22, v24);
      (*(v25 + 8))(v51, v50);
      v34(v52, v24);
      (*(v58 + 8))(v56, v54);
      (*(v19 + 8))(v20, v21);
    }
  }

  v35 = *(v0 + 352);
  v36 = *(v0 + 328);
  v38 = *(v0 + 296);
  v37 = *(v0 + 304);
  v40 = *(v0 + 264);
  v39 = *(v0 + 272);

  v41 = *(v0 + 8);
  v42 = *(v0 + 400);
  v43 = *(v0 + 408);

  return v41(v42, v43);
}

uint64_t sub_10034D7C8()
{
  v103 = v0;
  v1 = *(v0 + 384);
  v2 = *(v0 + 392);
  swift_willThrow();

  v3 = *(v0 + 392);
  v4 = _convertErrorToNSError(_:)();
  v5 = [v4 domain];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
  {
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v11 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  if ([v4 code] != -6727)
  {
LABEL_13:
    if (qword_100973658 != -1)
    {
      swift_once();
    }

    v23 = *(v0 + 376);
    v24 = type metadata accessor for Logger();
    sub_10000C4AC(v24, qword_10097A140);
    v25 = v23;
    swift_errorRetain();
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();

    v28 = os_log_type_enabled(v26, v27);
    v29 = *(v0 + 376);
    if (v28)
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v102[0] = v32;
      *v30 = 136315394;
      *(v0 + 232) = v3;
      swift_errorRetain();
      sub_10028088C(&unk_10097A930, &unk_1007F9050);
      v33 = String.init<A>(describing:)();
      v99 = v4;
      v35 = sub_10000C4E4(v33, v34, v102);

      *(v30 + 4) = v35;
      *(v30 + 12) = 2112;
      *(v30 + 14) = v29;
      *v31 = v29;
      v36 = v29;
      _os_log_impl(&_mh_execute_header, v26, v27, "Error fetching contact. Creating a new one {error: %s, predicateContactInfo: %@}", v30, 0x16u);
      sub_100005508(v31, &qword_100975400, &qword_1007F65D0);

      sub_10000C60C(v32);
    }

    else
    {
    }

    goto LABEL_19;
  }

  if (qword_100973658 != -1)
  {
    swift_once();
  }

  v12 = *(v0 + 376);
  v13 = type metadata accessor for Logger();
  sub_10000C4AC(v13, qword_10097A140);
  v14 = v12;
  swift_errorRetain();
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  v17 = os_log_type_enabled(v15, v16);
  v18 = *(v0 + 376);
  if (v17)
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v19 = 138412546;
    *(v19 + 4) = v18;
    *v20 = v18;
    *(v19 + 12) = 2112;
    v21 = v18;
    swift_errorRetain();
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v19 + 14) = v22;
    v20[1] = v22;
    _os_log_impl(&_mh_execute_header, v15, v16, "Contact not found. Creating a new one {predicateContactInfo: %@, error: %@}", v19, 0x16u);
    sub_10028088C(&qword_100975400, &qword_1007F65D0);
    swift_arrayDestroy();
  }

  else
  {
  }

LABEL_19:
  [*(v0 + 368) mutableCopy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10034E374();
  swift_dynamicCast();
  v37 = *(v0 + 208);
  CNMutableContact.saveToContactStore()();
  if (v38)
  {
    v39 = *(v0 + 368);

    v40 = *(v0 + 352);
    v41 = *(v0 + 328);
    v43 = *(v0 + 296);
    v42 = *(v0 + 304);
    v45 = *(v0 + 264);
    v44 = *(v0 + 272);

    v46 = *(v0 + 8);

    return v46();
  }

  v48 = [v37 identifier];
  v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v51 = v50;

  *(v0 + 400) = v49;
  *(v0 + 408) = v51;
  if (*(v0 + 449))
  {

LABEL_25:
    v52 = *(v0 + 352);
    v53 = *(v0 + 328);
    v55 = *(v0 + 296);
    v54 = *(v0 + 304);
    v57 = *(v0 + 264);
    v56 = *(v0 + 272);

    v58 = *(v0 + 8);
    v59 = *(v0 + 400);
    v60 = *(v0 + 408);

    return v58(v59, v60);
  }

  v61 = *(v0 + 352);
  v62 = *(v0 + 320);
  v63 = *(v0 + 328);
  v64 = *(v0 + 288);
  v97 = *(v0 + 312);
  v100 = *(v0 + 280);
  v65 = *(v0 + 272);
  URLComponents.init()();
  URLComponents.scheme.setter();
  URLComponents.host.setter();

  URLQueryItem.init(name:value:)();

  sub_10028088C(&unk_100975000, &unk_1007FD260);
  v66 = *(v62 + 72);
  v67 = (*(v62 + 80) + 32) & ~*(v62 + 80);
  v68 = swift_allocObject();
  *(v68 + 16) = xmmword_1007F5670;
  (*(v62 + 16))(v68 + v67, v63, v97);
  URLComponents.queryItems.setter();
  URLComponents.url.getter();
  if ((*(v64 + 48))(v65, 1, v100) == 1)
  {
    sub_100005508(*(v0 + 272), &unk_100974E00, &qword_1007F8940);
    if (qword_100973658 != -1)
    {
      swift_once();
    }

    v69 = type metadata accessor for Logger();
    sub_10000C4AC(v69, qword_10097A140);
    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.error.getter();
    v72 = os_log_type_enabled(v70, v71);
    v73 = *(v0 + 368);
    v75 = *(v0 + 344);
    v74 = *(v0 + 352);
    v76 = *(v0 + 336);
    v98 = v73;
    v101 = *(v0 + 328);
    v78 = *(v0 + 312);
    v77 = *(v0 + 320);
    if (v72)
    {
      v96 = *(v0 + 336);
      v79 = swift_slowAlloc();
      v95 = v74;
      v80 = swift_slowAlloc();
      v102[0] = v80;
      *v79 = 136315138;

      v81 = sub_10000C4E4(v49, v51, v102);

      *(v79 + 4) = v81;
      _os_log_impl(&_mh_execute_header, v70, v71, "Failed to create URL to launch Contacts for contact ID %s", v79, 0xCu);
      sub_10000C60C(v80);

      (*(v77 + 8))(v101, v78);
      (*(v75 + 8))(v95, v96);
    }

    else
    {

      (*(v77 + 8))(v101, v78);
      (*(v75 + 8))(v74, v76);
    }

    goto LABEL_25;
  }

  v82 = *(v0 + 304);
  v83 = *(v0 + 280);
  v84 = *(v0 + 288);
  v85 = *(v0 + 264);
  (*(v84 + 32))(v82, *(v0 + 272), v83);
  sub_10028088C(&unk_100974FD0, &qword_10080E9A0);
  v86 = *(v84 + 72);
  v87 = (*(v84 + 80) + 32) & ~*(v84 + 80);
  v88 = swift_allocObject();
  *(v88 + 16) = xmmword_1007F5670;
  v89 = *(v84 + 16);
  *(v0 + 416) = v89;
  *(v0 + 424) = (v84 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v89(v88 + v87, v82, v83);
  *(v0 + 216) = 0;
  v90 = swift_allocObject();
  *(v90 + 16) = v88;
  *(v90 + 24) = 0;
  SFProgressTask.init(_:initialProgress:operation:file:line:)();
  v91 = async function pointer to SFProgressTask.finalValue.getter[1];
  v92 = swift_task_alloc();
  *(v0 + 432) = v92;
  *v92 = v0;
  v92[1] = sub_10034D2A8;
  v93 = *(v0 + 264);
  v94 = *(v0 + 248);

  return SFProgressTask.finalValue.getter(v0 + 448, v94);
}

uint64_t sub_10034E228()
{
  v1 = *(v0 + 344);
  v21 = *(v0 + 352);
  v22 = *(v0 + 408);
  v19 = *(v0 + 328);
  v20 = *(v0 + 336);
  v3 = *(v0 + 312);
  v2 = *(v0 + 320);
  v4 = *(v0 + 304);
  v6 = *(v0 + 280);
  v5 = *(v0 + 288);
  v7 = *(v0 + 256);
  v8 = *(v0 + 264);
  v9 = *(v0 + 248);

  (*(v7 + 8))(v8, v9);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v19, v3);
  (*(v1 + 8))(v21, v20);

  v10 = *(v0 + 440);
  v11 = *(v0 + 352);
  v12 = *(v0 + 328);
  v14 = *(v0 + 296);
  v13 = *(v0 + 304);
  v16 = *(v0 + 264);
  v15 = *(v0 + 272);

  v17 = *(v0 + 8);

  return v17();
}

unint64_t sub_10034E374()
{
  result = qword_10097A208;
  if (!qword_10097A208)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10097A208);
  }

  return result;
}

uint64_t sub_10034E3C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[25] = a4;
  v5[26] = a5;
  v5[23] = a2;
  v5[24] = a3;
  v5[22] = a1;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v6 = static AirDropActor.shared;
  v5[27] = static AirDropActor.shared;

  return _swift_task_switch(sub_10034E468, v6, 0);
}

uint64_t sub_10034E468()
{
  v1 = v0[22];
  v3 = *v1;
  v2 = v1[1];
  v0[28] = v2;
  if (!v2)
  {
    goto LABEL_8;
  }

  v4 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v4 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    v0[32] = v2;
    v0[33] = v3;
    v0[34] = v1[10];
    v0[35] = v1[4];
    v0[36] = v1[5];
    v0[37] = v1[6];
    v0[38] = v1[7];
    v0[39] = v1[8];
    v0[40] = v1[9];

    return _swift_task_switch(sub_10034EBA0, 0, 0);
  }

  else
  {
LABEL_8:
    v5 = v0[24];
    if (v5 >> 60 == 15)
    {
      v6 = qword_100973658;

      if (v6 != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      sub_10000C4AC(v7, qword_10097A140);
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v8, v9, "Missing vCardData to resolve missing appleID", v10, 2u);
      }

      v11 = type metadata accessor for SFAirDropReceive.Failure();
      sub_100010738(&unk_10097A660, &type metadata accessor for SFAirDropReceive.Failure);
      swift_allocError();
      (*(*(v11 - 8) + 104))(v12, enum case for SFAirDropReceive.Failure.badRequest(_:), v11);
      swift_willThrow();

      v13 = v0[1];

      return v13();
    }

    else
    {
      v14 = v0[23];

      sub_1002A9924(v14, v5);
      v15 = swift_task_alloc();
      v0[29] = v15;
      *v15 = v0;
      v15[1] = sub_10034E790;
      v17 = v0[23];
      v16 = v0[24];

      return sub_10039086C(v17, v16, 0, 0);
    }
  }
}

uint64_t sub_10034E790(uint64_t a1, uint64_t a2)
{
  v5 = *v3;
  v6 = *v3;
  v6[18] = v3;
  v6[19] = a1;
  v6[20] = a2;
  v6[21] = v2;
  v7 = v5[29];
  v8 = *v3;
  v6[30] = v2;

  v9 = v5[27];
  if (v2)
  {
    v10 = sub_10034E8D4;
  }

  else
  {
    v6[31] = a2;
    v10 = sub_10034E944;
  }

  return _swift_task_switch(v10, v9, 0);
}

uint64_t sub_10034E8D4()
{
  v1 = v0[28];
  sub_10028BCC0(v0[23], v0[24]);

  v2 = v0[30];
  v3 = v0[1];

  return v3();
}

uint64_t sub_10034E944()
{
  v1 = v0[31];
  v2 = v0[28];
  sub_10028BCC0(v0[23], v0[24]);

  if (v1)
  {
    v3 = v0[19];
    v0[32] = v0[31];
    v0[33] = v3;
    v4 = v0[22];
    v0[34] = v4[10];
    v0[35] = v4[4];
    v0[36] = v4[5];
    v0[37] = v4[6];
    v0[38] = v4[7];
    v0[39] = v4[8];
    v0[40] = v4[9];

    return _swift_task_switch(sub_10034EBA0, 0, 0);
  }

  else
  {
    if (qword_100973658 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000C4AC(v5, qword_10097A140);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Missing appleID to import identity", v8, 2u);
    }

    v9 = type metadata accessor for SFAirDropReceive.Failure();
    sub_100010738(&unk_10097A660, &type metadata accessor for SFAirDropReceive.Failure);
    swift_allocError();
    (*(*(v9 - 8) + 104))(v10, enum case for SFAirDropReceive.Failure.badRequest(_:), v9);
    swift_willThrow();

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_10034EBA0()
{
  v18 = v0[39];
  v19 = v0[40];
  v2 = v0[37];
  v1 = v0[38];
  v4 = v0[35];
  v3 = v0[36];
  v5 = v0[33];
  v20 = v0[34];
  v6 = v0[32];
  v7 = v0[25];
  v8 = v0[26];
  v21 = [objc_allocWithZone(RPClient) init];
  v0[41] = v21;
  v9 = [objc_allocWithZone(RPIdentity) init];
  v0[42] = v9;
  [v9 setType:6];
  v10 = String._bridgeToObjectiveC()();
  [v9 setAccountID:v10];

  v11 = String._bridgeToObjectiveC()();
  [v9 setContactID:v11];

  isa = Data._bridgeToObjectiveC()().super.isa;
  [v9 setDeviceIRKData:isa];

  v13 = Data._bridgeToObjectiveC()().super.isa;
  [v9 setEdPKData:v13];

  v14 = String._bridgeToObjectiveC()();
  [v9 setIdsDeviceID:v14];

  [v9 setSendersKnownAlias:0];
  if (v20)
  {
    [v9 setFeatureFlags:v0[34]];
  }

  v15 = objc_opt_self();
  v0[2] = v0;
  v0[3] = sub_10034EE3C;
  v16 = swift_continuation_init();
  v0[17] = sub_10028088C(&qword_10097B520, &qword_1007FCC20);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100638A98;
  v0[13] = &unk_1008DCF28;
  v0[14] = v16;
  [v15 addOrUpdateIdentityWithClient:v21 identity:v9 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10034EE3C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 344) = v2;
  if (v2)
  {
    v3 = sub_10034F0FC;
  }

  else
  {
    v3 = sub_10034EF4C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10034EF4C()
{
  v15 = v0;
  if (qword_100973780 != -1)
  {
    swift_once();
  }

  v1 = v0[26];
  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_10097AAF8);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[42];
  if (v5)
  {
    v8 = v0[25];
    v7 = v0[26];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v14 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_10000C4E4(v8, v7, &v14);
    _os_log_impl(&_mh_execute_header, v3, v4, "Added/updated identity for contact %s", v9, 0xCu);
    sub_10000C60C(v10);
  }

  v11 = v0[41];
  v12 = v0[27];
  [v11 invalidate];

  return _swift_task_switch(sub_10034F1F8, v12, 0);
}

uint64_t sub_10034F0FC()
{
  v2 = v0[42];
  v1 = v0[43];
  v3 = v0[41];
  v4 = v0[27];
  swift_willThrow();

  [v3 invalidate];

  return _swift_task_switch(sub_10034F194, v4, 0);
}

uint64_t sub_10034F194()
{
  v1 = v0[32];

  v2 = v0[43];
  v3 = v0[1];

  return v3();
}

uint64_t sub_10034F1F8()
{
  v1 = *(v0 + 256);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10034F264@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_1002825FC(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_10034F2A4()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_10097A228);
  v1 = sub_10000C4AC(v0, qword_10097A228);
  if (qword_100973758 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A0A50);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_10034F36C()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100973660 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000C4AC(v6, qword_10097A228);
  v7 = v0;
  v19 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v19, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v9 = 136315138;
    v11 = OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_lastLockDate;
    swift_beginAccess();
    if ((*(v2 + 48))(&v7[v11], 1, v1))
    {
      v12 = 0x800000010078D270;
      v13 = 0xD000000000000016;
    }

    else
    {
      (*(v2 + 16))(v5, &v7[v11], v1);
      v15 = Date.description.getter();
      v12 = v16;
      (*(v2 + 8))(v5, v1);
      v13 = v15;
    }

    v17 = sub_10000C4E4(v13, v12, &v20);

    *(v9 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v19, v8, "Storing last device locked as %s", v9, 0xCu);
    sub_10000C60C(v10);
  }

  else
  {
    v14 = v19;
  }
}

double sub_10034F610()
{
  result = 3600.0;
  qword_10097A240 = 0x40AC200000000000;
  return result;
}

void sub_10034F628()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100973660 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000C4AC(v6, qword_10097A228);
  v7 = v0;
  v19 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v19, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v9 = 136315138;
    v11 = OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_lastUnlockedAndOnWristDate;
    swift_beginAccess();
    if ((*(v2 + 48))(&v7[v11], 1, v1))
    {
      v12 = 0x800000010078D290;
      v13 = 0xD000000000000029;
    }

    else
    {
      (*(v2 + 16))(v5, &v7[v11], v1);
      v15 = Date.description.getter();
      v12 = v16;
      (*(v2 + 8))(v5, v1);
      v13 = v15;
    }

    v17 = sub_10000C4E4(v13, v12, &v20);

    *(v9 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v19, v8, "Storing last device unlocked and on wrist as %s", v9, 0xCu);
    sub_10000C60C(v10);
  }

  else
  {
    v14 = v19;
  }
}

BOOL sub_10034F8CC()
{
  v1 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v25 - v3;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_lastUnlockDate;
  swift_beginAccess();
  sub_1002E4E88(v0 + v10, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_100016C08(v4);
    return 0;
  }

  (*(v6 + 32))(v9, v4, v5);
  v11 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_deviceUnlockedGenerator);
  if (v11)
  {
    v12 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_deviceUnlockedGenerator + 8);

    v14 = v11(v13);
    sub_100015D04(v11);
    if (v14)
    {
      (*(v6 + 8))(v9, v5);
      return 1;
    }
  }

  v16 = [objc_opt_self() standardUserDefaults];
  v17 = String._bridgeToObjectiveC()();
  v18 = [v16 BOOLForKey:v17];

  if (v18)
  {
    if (qword_100973660 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_10000C4AC(v19, qword_10097A228);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "### TESTING ONLY: pretendNotUnlockedRecently is set, returning false for unlockedWithinLast6_5Hrs", v22, 2u);
    }

    (*(v6 + 8))(v9, v5);
    return 0;
  }

  Date.timeIntervalSinceNow.getter();
  v24 = v23;
  (*(v6 + 8))(v9, v5);
  return v24 >= -23400.0;
}

BOOL sub_10034FC18()
{
  v1 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v22 - v3;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_lastLockDate;
  swift_beginAccess();
  sub_1002E4E88(v0 + v10, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_100016C08(v4);
    return 0;
  }

  (*(v6 + 32))(v9, v4, v5);
  v11 = [objc_opt_self() standardUserDefaults];
  v12 = String._bridgeToObjectiveC()();
  v13 = [v11 BOOLForKey:v12];

  if (v13)
  {
    if (qword_100973660 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000C4AC(v14, qword_10097A228);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "### TESTING ONLY: expireEscrowTokens is set, returning phone was locked for more than 1 hr", v17, 2u);
    }

    (*(v6 + 8))(v9, v5);
    return 0;
  }

  Date.timeIntervalSinceNow.getter();
  v20 = v19;
  if (qword_100973668 != -1)
  {
    swift_once();
  }

  v21 = *&qword_10097A240;
  (*(v6 + 8))(v9, v5);
  return v20 >= -v21;
}

char *sub_10034FF38(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v95 = &v94 - v6;
  v7 = OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_lastUnlockDate;
  v8 = type metadata accessor for Date();
  v9 = *(*(v8 - 8) + 56);
  v9(&v1[v7], 1, 1, v8);
  v9(&v1[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_lastLockDate], 1, 1, v8);
  v10 = &v1[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_wristDetectionGenerator];
  *v10 = 0;
  v10[1] = 0;
  v11 = &v1[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_deviceUnlockedGenerator];
  *v11 = 0;
  v11[1] = 0;
  v12 = &v1[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_deviceBiolockedGenerator];
  *v12 = 0;
  v12[1] = 0;
  v13 = &v1[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_deviceHasPasscodeGenerator];
  *v13 = 0;
  v13[1] = 0;
  v14 = &v1[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_sleepModeGenerator];
  *v14 = 0;
  v14[1] = 0;
  v15 = &v1[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_lostModeGenerator];
  *v15 = 0;
  v15[1] = 0;
  v16 = &v1[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_motionGenerator];
  *v16 = 0;
  v16[1] = 0;
  v17 = &v1[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_faceIDEnabledGenerator];
  *v17 = 0;
  v17[1] = 0;
  v18 = &v1[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_raiseToWakeHandler];
  *v18 = 0;
  v18[1] = 0;
  v19 = &v1[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_lastUnlockedByPairedUnlockGenerator];
  *v19 = 0;
  v19[1] = 0;
  v20 = &v1[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_deviceIsBioUnarmedGenerator];
  *v20 = 0;
  v20[1] = 0;
  v21 = &v1[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_deviceIsInClassDGenerator];
  *v21 = 0;
  v21[1] = 0;
  v22 = &v1[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_deviceIsInAssertDelayGenerator];
  *v22 = 0;
  v22[1] = 0;
  v23 = &v1[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_deviceIsWaitingForGuestModeApprovalGenerator];
  *v23 = 0;
  v23[1] = 0;
  v24 = &v1[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_deviceIsInGuestModeGenerator];
  *v24 = 0;
  v24[1] = 0;
  v25 = &v1[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_deviceIsMeDeviceGenerator];
  *v25 = 0;
  v25[1] = 0;
  *&v1[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_raiseToWakeTimes] = _swiftEmptyArrayStorage;
  v1[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_allowsLenientMotionConditions] = 0;
  *&v1[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_pearlDevice] = 0;
  v9(&v1[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_lastUnlockedAndOnWristDate], 1, 1, v8);
  *&v1[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_queue] = a1;
  v97.receiver = v1;
  v97.super_class = ObjectType;
  v96 = a1;
  v26 = objc_msgSendSuper2(&v97, "init");
  v27 = &v26[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_wristDetectionGenerator];
  v28 = *&v26[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_wristDetectionGenerator];
  v29 = *&v26[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_wristDetectionGenerator + 8];
  *v27 = variable initialization expression of HeadphoneProxFeatureClient.delegate;
  v27[1] = 0;
  v30 = v26;
  sub_100015D04(v28);
  v31 = &v30[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_deviceUnlockedGenerator];
  v32 = *&v30[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_deviceUnlockedGenerator];
  v33 = *&v30[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_deviceUnlockedGenerator + 8];
  *v31 = sub_100015DF4;
  v31[1] = 0;
  sub_100015D04(v32);
  v34 = &v30[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_deviceBiolockedGenerator];
  v35 = *&v30[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_deviceBiolockedGenerator];
  v36 = *&v30[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_deviceBiolockedGenerator + 8];
  *v34 = sub_1003506BC;
  v34[1] = 0;
  sub_100015D04(v35);
  v37 = &v30[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_deviceHasPasscodeGenerator];
  v38 = *&v30[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_deviceHasPasscodeGenerator];
  v39 = *&v30[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_deviceHasPasscodeGenerator + 8];
  *v37 = sub_1003506D8;
  v37[1] = 0;
  sub_100015D04(v38);
  v40 = &v30[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_sleepModeGenerator];
  v41 = *&v30[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_sleepModeGenerator];
  v42 = *&v30[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_sleepModeGenerator + 8];
  *v40 = sub_100350738;
  v40[1] = 0;
  sub_100015D04(v41);
  v43 = &v30[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_lostModeGenerator];
  v44 = *&v30[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_lostModeGenerator];
  v45 = *&v30[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_lostModeGenerator + 8];
  *v43 = sub_100350754;
  v43[1] = 0;
  sub_100015D04(v44);
  v46 = swift_allocObject();
  *(v46 + 16) = v30;
  v47 = &v30[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_motionGenerator];
  v48 = *&v30[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_motionGenerator];
  v49 = *&v30[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_motionGenerator + 8];
  *v47 = &unk_1007FD350;
  *(v47 + 1) = v46;
  v50 = v30;
  sub_100015D04(v48);
  v51 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v52 = &v50[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_faceIDEnabledGenerator];
  v53 = *&v50[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_faceIDEnabledGenerator];
  v54 = *&v50[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_faceIDEnabledGenerator + 8];
  *v52 = sub_1003561BC;
  v52[1] = v51;

  sub_100015D04(v53);

  v55 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v56 = &v50[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_raiseToWakeHandler];
  v57 = *&v50[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_raiseToWakeHandler];
  v58 = *&v50[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_raiseToWakeHandler + 8];
  *v56 = sub_1003561C4;
  v56[1] = v55;

  sub_100015D04(v57);

  v59 = &v50[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_lastUnlockedByPairedUnlockGenerator];
  v60 = *&v50[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_lastUnlockedByPairedUnlockGenerator];
  v61 = *&v50[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_lastUnlockedByPairedUnlockGenerator + 8];
  *v59 = sub_100016C70;
  v59[1] = 0;
  sub_100015D04(v60);
  v62 = &v50[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_deviceIsBioUnarmedGenerator];
  v63 = *&v50[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_deviceIsBioUnarmedGenerator];
  v64 = *&v50[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_deviceIsBioUnarmedGenerator + 8];
  *v62 = sub_100351650;
  v62[1] = 0;
  sub_100015D04(v63);
  v65 = &v50[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_deviceIsInClassDGenerator];
  v66 = *&v50[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_deviceIsInClassDGenerator];
  v67 = *&v50[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_deviceIsInClassDGenerator + 8];
  *v65 = sub_1003516EC;
  v65[1] = 0;
  sub_100015D04(v66);
  v68 = &v50[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_deviceIsInAssertDelayGenerator];
  v69 = *&v50[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_deviceIsInAssertDelayGenerator];
  v70 = *&v50[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_deviceIsInAssertDelayGenerator + 8];
  *v68 = sub_100351708;
  v68[1] = 0;
  sub_100015D04(v69);
  v71 = *v31;
  if (*v31)
  {
    v72 = v31[1];

    v74 = (v71)(v73);
    sub_100015D04(v71);
    if (v74)
    {
      v75 = v95;
      Date.init()();
      v9(v75, 0, 1, v8);
      v76 = OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_lastUnlockDate;
      swift_beginAccess();
      sub_1003561CC(v75, &v50[v76]);
      swift_endAccess();
    }
  }

  v77 = &v50[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_deviceIsWaitingForGuestModeApprovalGenerator];
  v78 = *&v50[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_deviceIsWaitingForGuestModeApprovalGenerator];
  v79 = *&v50[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_deviceIsWaitingForGuestModeApprovalGenerator + 8];
  *v77 = &unk_1007FD358;
  *(v77 + 1) = 0;
  sub_100015D04(v78);
  v80 = &v50[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_deviceIsInGuestModeGenerator];
  v81 = *&v50[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_deviceIsInGuestModeGenerator];
  v82 = *&v50[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_deviceIsInGuestModeGenerator + 8];
  *v80 = &unk_1007FD360;
  *(v80 + 1) = 0;
  sub_100015D04(v81);
  v83 = &v50[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_deviceIsMeDeviceGenerator];
  v84 = *&v50[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_deviceIsMeDeviceGenerator];
  v85 = *&v50[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_deviceIsMeDeviceGenerator + 8];
  *v83 = sub_100351928;
  v83[1] = 0;
  sub_100015D04(v84);
  v86 = objc_opt_self();
  v87 = [v86 defaultCenter];
  v88 = qword_100973680;
  v89 = v50;
  if (v88 != -1)
  {
    swift_once();
  }

  [v87 addObserver:v89 selector:"handleKeyBagStateChanged" name:qword_1009A07D0 object:0];

  v90 = [v86 defaultCenter];
  v91 = qword_100973698;
  v92 = v89;
  if (v91 != -1)
  {
    swift_once();
  }

  [v90 addObserver:v92 selector:"handleOnWristStateChanged" name:qword_1009A07E8 object:0];

  sub_100013728(sub_10035623C, &unk_1008DCFC8);
  return v92;
}

id sub_1003506D8()
{
  result = [objc_opt_self() sharedMonitor];
  if (result)
  {
    v1 = result;
    v2 = [result deviceKeyBagDisabled];

    return (v2 ^ 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100350790()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[3] = v2;
  *(v2 + 16) = v1;
  v3 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_100350884;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 5, 0, 0, 0x6575712874696E69, 0xEC000000293A6575, sub_100356244, v2, &type metadata for Bool);
}

uint64_t sub_100350884()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v4 = *v0;

  return _swift_task_switch(sub_10035099C, 0, 0);
}

void sub_1003509B4(uint64_t a1, uint64_t a2)
{
  v23 = a2;
  v24 = a1;
  v2 = sub_10028088C(&qword_10097A2B0, &qword_1007FD370);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v23 - v5;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = objc_allocWithZone(SDUnlockMotionDetector);
  v13 = [v12 initWithUnlockType:{1, v23}];
  v14 = [objc_opt_self() sharedLockManager];
  if (v14)
  {
    v15 = v14;
    v16 = [v14 wristOnDate];

    if (v16)
    {
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v17.super.isa = Date._bridgeToObjectiveC()().super.isa;
      (*(v8 + 8))(v11, v7);
    }

    else
    {
      v17.super.isa = 0;
    }

    [v13 setWristOnDate:v17.super.isa];

    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();
    (*(v3 + 16))(v6, v24, v2);
    v19 = (*(v3 + 80) + 24) & ~*(v3 + 80);
    v20 = swift_allocObject();
    *(v20 + 16) = v18;
    (*(v3 + 32))(v20 + v19, v6, v2);
    *(v20 + ((v4 + v19 + 7) & 0xFFFFFFFFFFFFFFF8)) = v13;
    aBlock[4] = sub_10035624C;
    aBlock[5] = v20;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100011678;
    aBlock[3] = &unk_1008DD018;
    v21 = _Block_copy(aBlock);
    v22 = v13;

    [v22 setMotionDetectedHandler:v21];
    _Block_release(v21);
    [v22 activate];
  }

  else
  {
    __break(1u);
  }
}

id sub_100350CF4(uint64_t a1, uint64_t a2, void *a3)
{
  v28 = a2;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v31 = *(v4 - 8);
  v5 = *(v31 + 64);
  __chkstk_darwin(v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v29 = *(v8 - 8);
  v30 = v8;
  v9 = *(v29 + 64);
  __chkstk_darwin(v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10028088C(&qword_10097A2B0, &qword_1007FD370);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v26 - v15;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    v27 = *(Strong + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_queue);

    (*(v13 + 16))(v16, v28, v12);
    v19 = a3;
    v20 = (*(v13 + 80) + 16) & ~*(v13 + 80);
    v21 = swift_allocObject();
    v22 = v21 + v20;
    a3 = v19;
    (*(v13 + 32))(v22, v16, v12);
    aBlock[4] = sub_1003562E8;
    aBlock[5] = v21;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100011678;
    aBlock[3] = &unk_1008DD068;
    v23 = _Block_copy(aBlock);
    static DispatchQoS.unspecified.getter();
    v32 = _swiftEmptyArrayStorage;
    sub_100013E70(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags);
    sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
    sub_100013EB8();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v24 = v27;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v23);

    (*(v31 + 8))(v7, v4);
    (*(v29 + 8))(v11, v30);
  }

  return [a3 invalidate];
}