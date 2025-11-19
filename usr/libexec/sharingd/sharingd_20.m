uint64_t sub_100382C8C()
{
  v58 = v0;
  v1 = *(v0 + 888);
  v2 = *(v0 + 880);
  v3 = *(v0 + 872);
  swift_willThrow();

  v4 = *(v0 + 888);
  v5 = _convertErrorToNSError(_:)();
  v6 = [v5 domain];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  if (v7 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v9 == v10)
  {
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v12 & 1) == 0)
    {
      if (qword_1009736B8 != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      sub_10000C4AC(v13, qword_10097A860);
      swift_errorRetain();
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        *v16 = 138412290;
        swift_errorRetain();
        v18 = _swift_stdlib_bridgeErrorToNSError();
        *(v16 + 4) = v18;
        *v17 = v18;
        _os_log_impl(&_mh_execute_header, v14, v15, "Unknown altDSID fetch error %@", v16, 0xCu);
        sub_100005508(v17, &qword_100975400, &qword_1007F65D0);
      }

      sub_10032B0C0();
      swift_allocError();
      *v19 = 2;
      *(v19 + 8) = 1;
LABEL_23:
      swift_willThrow();
      goto LABEL_24;
    }
  }

  v20 = [v5 userInfo];
  v21 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v22 = sub_1003CE294(v21);

  type metadata accessor for SFAirDropUserDefaults();
  v23 = static SFAirDropUserDefaults.shared.getter();
  v24 = SFAirDropUserDefaults.idmsDefaultBackoffMS.getter();

  sub_100285A50(v22, v24, (v0 + 192));
  v25 = *(v0 + 224);
  if (!v25)
  {
    if (qword_1009736B8 != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    sub_10000C4AC(v38, qword_10097A860);
    v39 = v5;
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v57[0] = swift_slowAlloc();
      v43 = v57[0];
      *v42 = 136315138;
      v44 = [v39 userInfo];
      static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v45 = Dictionary.description.getter();
      v47 = v46;

      v48 = sub_10000C4E4(v45, v47, v57);

      *(v42 + 4) = v48;
      _os_log_impl(&_mh_execute_header, v40, v41, "Unable to parse error response %s", v42, 0xCu);
      sub_10000C60C(v43);
    }

    sub_10032B0C0();
    swift_allocError();
    *v49 = 1;
    *(v49 + 8) = 1;
    goto LABEL_23;
  }

  v56 = v5;
  v26 = *(v0 + 208);
  *(v0 + 312) = *(v0 + 192);
  *(v0 + 328) = v26;
  *(v0 + 344) = v25;
  if (qword_1009736B8 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  sub_10000C4AC(v27, qword_10097A860);
  *(v0 + 576) = *(v0 + 320);
  *(v0 + 744) = *(v0 + 344);
  sub_10000FF90(v0 + 576, v0 + 688, &qword_100975100, &qword_1007FBA10);
  sub_10000FF90(v0 + 744, v0 + 776, &qword_100974C10, &qword_1007F7E58);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.error.getter();
  sub_100005508(v0 + 576, &qword_100975100, &qword_1007FBA10);
  sub_100005508(v0 + 744, &qword_100974C10, &qword_1007F7E58);
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v57[0] = v31;
    *v30 = 136315138;
    sub_10000FF90(v0 + 576, v0 + 496, &qword_100975100, &qword_1007FBA10);
    sub_10000FF90(v0 + 744, v0 + 768, &qword_100974C10, &qword_1007F7E58);
    v32 = sub_100284AC4();
    v34 = v33;
    sub_100005508(v0 + 576, &qword_100975100, &qword_1007FBA10);
    sub_100005508(v0 + 744, &qword_100974C10, &qword_1007F7E58);
    v35 = sub_10000C4E4(v32, v34, v57);

    *(v30 + 4) = v35;
    _os_log_impl(&_mh_execute_header, v28, v29, "Server altDSID fetch failure %s", v30, 0xCu);
    sub_10000C60C(v31);
  }

  v5 = v56;
  v36 = *(v0 + 336);
  sub_10032B0C0();
  swift_allocError();
  *v37 = v36;
  *(v37 + 8) = 0;
  swift_willThrow();
  sub_100005508(v0 + 576, &qword_100975100, &qword_1007FBA10);
  sub_100005508(v0 + 744, &qword_100974C10, &qword_1007F7E58);
LABEL_24:
  v50 = *(v0 + 856);
  v51 = *(v0 + 848);
  v52 = *(v0 + 840);
  v53 = *(v0 + 832);

  v54 = *(v0 + 8);

  return v54();
}

uint64_t sub_100383400(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_10002CDC0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_10028088C(&unk_10097A930, &unk_1007F9050);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    **(*(v4 + 64) + 40) = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    return _swift_continuation_throwingResume(v4);
  }
}

uint64_t sub_1003834F0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(*(sub_10028088C(&qword_100976160, &qword_1007F8770) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v5 = static AirDropActor.shared;
  v3[6] = static AirDropActor.shared;

  return _swift_task_switch(sub_1003835CC, v5, 0);
}

uint64_t sub_1003835CC()
{
  v1 = v0[3];
  v2 = (v0[4] + OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropIDMSService_appleIDState);
  v3 = v2[1];
  if (!v3)
  {
    v5 = v0[2];
    *v2 = v5;
    v2[1] = v1;
    sub_100371020(v5, v1);
    goto LABEL_14;
  }

  v4 = *v2;
  if (v3 == 1)
  {
    if (v1 == 1)
    {
      goto LABEL_14;
    }
  }

  else if (v1 >= 2)
  {
    if (v3 == v1 && v4 == v0[2])
    {
      goto LABEL_14;
    }

    v17 = *v2;
    v18 = v2[1];
    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      goto LABEL_14;
    }

    v1 = v0[3];
  }

  v6 = v0[2];
  *v2 = v6;
  v2[1] = v1;
  sub_100371020(v6, v1);
  sub_10037100C(v4, v3);
  type metadata accessor for SFAirDropUserDefaults();
  v7 = static SFAirDropUserDefaults.shared.getter();
  v8 = SFAirDropUserDefaults.privacyImprovements.getter();

  if (v8)
  {
    v10 = v0[5];
    v9 = v0[6];
    v11 = v0[4];
    v12 = type metadata accessor for TaskPriority();
    (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
    v13 = sub_100389AB0(&qword_100977C00, type metadata accessor for AirDropActor);
    v14 = swift_allocObject();
    v14[2] = v9;
    v14[3] = v13;
    v14[4] = v11;
    v15 = v11;

    sub_1002B3098(0, 0, v10, &unk_1007FDBE0, v14);
  }

LABEL_14:
  v19 = v0[5];

  v20 = v0[1];

  return v20();
}

void sub_1003837D0()
{
  v1 = v0;
  v2 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v11 - v4;
  type metadata accessor for SFAirDropUserDefaults();
  v6 = static SFAirDropUserDefaults.shared.getter();
  v7 = SFAirDropUserDefaults.privacyImprovements.getter();

  if (v7)
  {
    if ([*&v1[OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropIDMSService_deviceStatus] currentConsoleUser])
    {
      v8 = type metadata accessor for TaskPriority();
      (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
      v9 = swift_allocObject();
      v9[2] = 0;
      v9[3] = 0;
      v9[4] = v1;
      v10 = v1;
      sub_1002B3098(0, 0, v5, &unk_1007FDBD0, v9);
    }
  }
}

uint64_t sub_100383938()
{
  v1 = [*(v0[2] + OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropIDMSService_deviceStatus) myAppleID];
  if (v1)
  {
    v2 = v1;
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 1;
  }

  v0[3] = v3;
  v0[4] = v5;
  v6 = swift_task_alloc();
  v0[5] = v6;
  *v6 = v0;
  v6[1] = sub_100383A24;
  v7 = v0[2];

  return sub_1003834F0(v3, v5);
}

uint64_t sub_100383A24()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v6 = *v0;

  sub_10037100C(v3, v2);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t type metadata accessor for SDAirDropIDMSService()
{
  result = qword_10097A918;
  if (!qword_10097A918)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100383DD8()
{
  sub_100383ECC();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_100383ECC()
{
  if (!qword_100975F70)
  {
    type metadata accessor for UUID();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100975F70);
    }
  }
}

uint64_t sub_100383F24()
{
  v1[2] = v0;
  v2 = *(*(sub_10028088C(&qword_100976160, &qword_1007F8770) - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v3 = *(*(sub_10028088C(&qword_10097A7F0, &unk_1007FB600) - 8) + 64) + 15;
  v1[4] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v4 = static AirDropActor.shared;
  v1[5] = static AirDropActor.shared;

  return _swift_task_switch(sub_100384034, v4, 0);
}

uint64_t sub_100384034()
{
  v1 = v0[2];
  v2 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropIDMSService_idmsStore);
  v0[6] = v2;
  if (v2)
  {

    v3 = swift_task_alloc();
    v0[7] = v3;
    *v3 = v0;
    v3[1] = sub_1003842DC;

    return sub_100329C34();
  }

  else
  {
    v5 = v0[4];
    v6 = type metadata accessor for Date();
    (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
    sub_1003764E8(v5);
    v7 = OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropIDMSService_backoffRetryTask;
    if (*(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropIDMSService_backoffRetryTask))
    {
      v8 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropIDMSService_backoffRetryTask);

      Task.cancel()();

      v9 = *(v1 + v7);
    }

    *(v1 + v7) = 0;

    type metadata accessor for SFAirDropUserDefaults();
    v10 = static SFAirDropUserDefaults.shared.getter();
    v11 = SFAirDropUserDefaults.privacyImprovements.getter();

    if (v11)
    {
      v12 = v0[5];
      v14 = v0[2];
      v13 = v0[3];
      v15 = type metadata accessor for TaskPriority();
      (*(*(v15 - 8) + 56))(v13, 1, 1, v15);
      v16 = sub_100389AB0(&qword_100977C00, type metadata accessor for AirDropActor);
      v17 = swift_allocObject();
      v17[2] = v12;
      v17[3] = v16;
      v17[4] = v14;
      v18 = v14;

      sub_1002B3098(0, 0, v13, &unk_1007FDBF0, v17);
    }

    v20 = v0[3];
    v19 = v0[4];

    v21 = v0[1];

    return v21();
  }
}

uint64_t sub_1003842DC()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *v1;

  v5 = *(v2 + 48);
  v6 = *(v2 + 40);
  if (v0)
  {

    v7 = sub_100389CB4;
  }

  else
  {

    v7 = sub_100384438;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_100384438()
{
  v1 = v0[4];
  v2 = v0[2];
  v3 = type metadata accessor for Date();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  sub_1003764E8(v1);
  v4 = OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropIDMSService_backoffRetryTask;
  if (*(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropIDMSService_backoffRetryTask))
  {
    v5 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropIDMSService_backoffRetryTask);

    Task.cancel()();

    v6 = *(v2 + v4);
  }

  *(v2 + v4) = 0;

  type metadata accessor for SFAirDropUserDefaults();
  v7 = static SFAirDropUserDefaults.shared.getter();
  v8 = SFAirDropUserDefaults.privacyImprovements.getter();

  if (v8)
  {
    v9 = v0[5];
    v11 = v0[2];
    v10 = v0[3];
    v12 = type metadata accessor for TaskPriority();
    (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
    v13 = sub_100389AB0(&qword_100977C00, type metadata accessor for AirDropActor);
    v14 = swift_allocObject();
    v14[2] = v9;
    v14[3] = v13;
    v14[4] = v11;
    v15 = v11;

    sub_1002B3098(0, 0, v10, &unk_1007FDBF0, v14);
  }

  v17 = v0[3];
  v16 = v0[4];

  v18 = v0[1];

  return v18();
}

uint64_t sub_100384650()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100005C00;

  return sub_1003780A0();
}

uint64_t sub_100384704(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100005C04;

  return sub_10037DE80(a1, v4, v5, v7, v6);
}

void *sub_1003847C4(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, uint64_t))
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

    v10 = sub_100384A98(v9, a2, a3, a4, a5);

    return v10;
  }

  return result;
}

uint64_t sub_100384868(uint64_t result, uint64_t a2, Swift::Int a3, Swift::Int a4)
{
  v4 = *(result + 16);
  if (v4)
  {
    v7 = (result + 40);
    do
    {
      v9 = *(v7 - 1);
      v8 = *v7;
      swift_bridgeObjectRetain_n();

      sub_10046EF98(&v10, v9, v8, a3, a4);

      v7 += 2;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_10038491C(uint64_t result, uint64_t a2, uint64_t a3, Swift::Int a4, Swift::Int a5)
{
  v23 = a5;
  v5 = *(result + 16);
  if (v5)
  {
    v7 = 0;
    v8 = result + 32;
    v9 = a2 + 56;
    do
    {
      if (*(a2 + 16))
      {
        v10 = (v8 + 16 * v7);
        v12 = *v10;
        v11 = v10[1];
        v13 = *(a2 + 40);
        Hasher.init(_seed:)();

        String.hash(into:)();
        v14 = Hasher._finalize()();
        v15 = -1 << *(a2 + 32);
        v16 = v14 & ~v15;
        if ((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
        {
          v17 = ~v15;
          while (1)
          {
            v18 = (*(a2 + 48) + 16 * v16);
            v19 = *v18 == v12 && v18[1] == v11;
            if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              break;
            }

            v16 = (v16 + 1) & v17;
            if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
            {
              goto LABEL_3;
            }
          }

          v20 = v23;

          sub_10046EF98(&v22, v12, v11, a4, v20);
        }

LABEL_3:
      }

      ++v7;
    }

    while (v7 != v5);
  }

  return result;
}

uint64_t sub_100384A98(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, uint64_t))
{
  v24 = result;
  v25 = 0;
  v6 = 0;
  v29 = a3;
  v7 = a3 + 56;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 56);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_11:
    v15 = v12 | (v6 << 6);
    v16 = (*(v29 + 48) + 32 * v15);
    v17 = v16[1];
    v18 = v16[2];
    v19 = v16[3];
    v28[0] = *v16;
    v28[1] = v17;
    v28[2] = v18;
    v28[3] = v19;

    v20 = a5(v28, a4);

    if (v5)
    {
      return result;
    }

    if (v20)
    {
      *(v24 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      if (__OFADD__(v25++, 1))
      {
        __break(1u);
LABEL_16:
        v22 = v29;

        return sub_1006E3504(v24, a2, v25, v22);
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      goto LABEL_16;
    }

    v14 = *(v7 + 8 * v6);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100384C28(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t), unint64_t a4)
{
  v35 = a3;
  v7 = v4;
  v8 = a1;
  v9 = *(a1 + 32);
  v10 = v9 & 0x3F;
  v11 = ((1 << v9) + 63) >> 6;
  v12 = 8 * v11;
  v36 = a2;

  if (v10 > 0xD)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v31 = v11;
    v37 = v7;
    v33 = &v31;
    __chkstk_darwin(v13);
    v32 = &v31 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v32, v12);
    v34 = 0;
    v12 = 0;
    v14 = v8 + 56;
    v15 = 1 << *(v8 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    a4 = v16 & *(v8 + 56);
    v11 = (v15 + 63) >> 6;
    while (a4)
    {
      v17 = __clz(__rbit64(a4));
      a4 &= a4 - 1;
LABEL_12:
      v20 = v17 | (v12 << 6);
      v7 = v8;
      v21 = (*(v8 + 48) + 32 * v20);
      v22 = v21[1];
      v23 = v21[2];
      v24 = v21[3];
      v38[0] = *v21;
      v38[1] = v22;
      v38[2] = v23;
      v38[3] = v24;

      v25 = v37;
      v26 = v35(v38, v36);
      v37 = v25;
      if (v25)
      {

        swift_willThrow();
        goto LABEL_24;
      }

      v5 = v26;

      v8 = v7;
      if (v5)
      {
        *&v32[(v20 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v20;
        if (__OFADD__(v34++, 1))
        {
          __break(1u);
LABEL_17:
          v5 = sub_1006E3504(v32, v31, v34, v8);

          return v5;
        }
      }
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v11)
      {
        goto LABEL_17;
      }

      v19 = *(v14 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        a4 = (v19 - 1) & v19;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_21:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v29 = swift_slowAlloc();
  v30 = v36;

  v5 = sub_1003847C4(v29, v11, v8, v30, a4);

LABEL_24:

  return v5;
}

uint64_t sub_100384F38(uint64_t a1, uint64_t a2)
{
  v2[20] = a1;
  v2[21] = a2;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v3 = static AirDropActor.shared;
  v2[22] = static AirDropActor.shared;

  return _swift_task_switch(sub_100384FD8, v3, 0);
}

uint64_t sub_100384FD8()
{
  v119 = v0;
  v0[18] = &_swiftEmptySetSingleton;
  v0[19] = &_swiftEmptySetSingleton;
  v108 = (v0 + 19);
  v109 = (v0 + 18);
  v1 = v0[20];
  if (v1 >> 62)
  {
    goto LABEL_130;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v0[23] = v2;
  v3 = 0;
  if (v2)
  {
    v4 = 0;
    while (1)
    {
      v0[24] = v3;
      v5 = v0[20];
      if ((v5 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_125;
        }

        v6 = *(v5 + 8 * v4 + 32);
      }

      v0[25] = v6;
      v0[26] = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_124;
      }

      type metadata accessor for SDContactChangeHistoryAddEvent();
      v7 = swift_dynamicCastClass();
      if (v7)
      {
        v111 = v7;
        v8 = [*(v7 + 16) emailAddresses];
        sub_10028088C(&qword_10097A210, &qword_1007FDB90);
        v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v9 >> 62)
        {
          v0 = _CocoaArrayWrapper.endIndex.getter();
          v110 = v3;
          if (v0)
          {
LABEL_15:
            v10 = 0;
            v11 = _swiftEmptyArrayStorage;
            while (1)
            {
              if ((v9 & 0xC000000000000001) != 0)
              {
                v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (v10 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_121;
                }

                v12 = *(v9 + 8 * v10 + 32);
              }

              v13 = v12;
              v14 = (v10 + 1);
              if (__OFADD__(v10, 1))
              {
                break;
              }

              v15 = String.init(_:)([v12 value]);

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v11 = sub_10028E1C8(0, *(v11 + 2) + 1, 1, v11);
              }

              v17 = *(v11 + 2);
              v16 = *(v11 + 3);
              if (v17 >= v16 >> 1)
              {
                v11 = sub_10028E1C8((v16 > 1), v17 + 1, 1, v11);
              }

              *(v11 + 2) = v17 + 1;
              *&v11[16 * v17 + 32] = v15;
              ++v10;
              if (v14 == v0)
              {
                goto LABEL_33;
              }
            }

            __break(1u);
LABEL_121:
            __break(1u);
            goto LABEL_122;
          }
        }

        else
        {
          v0 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v110 = v3;
          if (v0)
          {
            goto LABEL_15;
          }
        }

        v11 = _swiftEmptyArrayStorage;
LABEL_33:

        v20 = [*(v111 + 16) phoneNumbers];
        v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v21 >> 62)
        {
          v114 = v21 & 0xFFFFFFFFFFFFFF8;
          v22 = _CocoaArrayWrapper.endIndex.getter();
          if (v22)
          {
LABEL_35:
            v0 = 0;
            v112 = _swiftEmptyArrayStorage;
LABEL_36:
            v23 = v0;
            while (1)
            {
              if ((v21 & 0xC000000000000001) != 0)
              {
                v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (v23 >= *(v114 + 16))
                {
                  goto LABEL_123;
                }

                v24 = *(v21 + 8 * v23 + 32);
              }

              v25 = v24;
              v0 = (v23 + 1);
              if (__OFADD__(v23, 1))
              {
                break;
              }

              v26 = [v24 value];
              v27 = [v26 stringValue];

              v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v30 = v29;

              v117[8] = v28;
              v117[9] = v30;
              String.init<A>(_:)();
              v31 = String._bridgeToObjectiveC()();

              v32 = sub_1001F26EC(v31);

              if (v32)
              {
                v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v35 = v34;

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v112 = sub_10028E1C8(0, *(v112 + 2) + 1, 1, v112);
                }

                v37 = *(v112 + 2);
                v36 = *(v112 + 3);
                if (v37 >= v36 >> 1)
                {
                  v112 = sub_10028E1C8((v36 > 1), v37 + 1, 1, v112);
                }

                *(v112 + 2) = v37 + 1;
                v38 = &v112[16 * v37];
                *(v38 + 4) = v33;
                *(v38 + 5) = v35;
                if (v0 != v22)
                {
                  goto LABEL_36;
                }

                goto LABEL_53;
              }

              ++v23;
              if (v0 == v22)
              {
                goto LABEL_53;
              }
            }

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
            goto LABEL_128;
          }
        }

        else
        {
          v114 = v21 & 0xFFFFFFFFFFFFFF8;
          v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v22)
          {
            goto LABEL_35;
          }
        }

        v112 = _swiftEmptyArrayStorage;
LABEL_53:

        v39 = [*(v111 + 16) identifier];
        v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v42 = v41;

        if (qword_1009736B8 != -1)
        {
          swift_once();
        }

        v43 = type metadata accessor for Logger();
        sub_10000C4AC(v43, qword_10097A860);

        v44 = Logger.logObject.getter();
        v45 = static os_log_type_t.debug.getter();

        v0 = v117;
        v3 = v110;
        if (os_log_type_enabled(v44, v45))
        {
          v46 = swift_slowAlloc();
          v47 = swift_slowAlloc();
          v118[0] = v47;
          *v46 = 136315138;
          *(v46 + 4) = sub_10000C4E4(v40, v42, v118);
          _os_log_impl(&_mh_execute_header, v44, v45, "Add contact event %s", v46, 0xCu);
          sub_10000C60C(v47);
        }

        sub_100384868(v11, v109, v40, v42);

        sub_100384868(v112, v108, v40, v42);
        swift_bridgeObjectRelease_n();
      }

      else
      {
        type metadata accessor for SDContactChangeHistoryUpdateEvent();
        v18 = swift_dynamicCastClass();
        if (v18)
        {
          v113 = v18;
          v52 = [*(v18 + 16) emailAddresses];
          sub_10028088C(&qword_10097A210, &qword_1007FDB90);
          v53 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          v54 = v53;
          if (v53 >> 62)
          {
            v55 = _CocoaArrayWrapper.endIndex.getter();
            v54 = v53;
          }

          else
          {
            v55 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v56 = _swiftEmptyArrayStorage;
          if (v55)
          {
            v57 = 0;
            v115 = v54 & 0xC000000000000001;
            v0 = (v54 & 0xFFFFFFFFFFFFFF8);
            v58 = v54;
            do
            {
              if (v115)
              {
                v59 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (v57 >= v0[2])
                {
                  goto LABEL_127;
                }

                v59 = *(v54 + 8 * v57 + 32);
              }

              v60 = v59;
              v61 = v57 + 1;
              if (__OFADD__(v57, 1))
              {
                goto LABEL_126;
              }

              v62 = String.init(_:)([v59 value]);

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v56 = sub_10028E1C8(0, *(v56 + 2) + 1, 1, v56);
              }

              v64 = *(v56 + 2);
              v63 = *(v56 + 3);
              if (v64 >= v63 >> 1)
              {
                v56 = sub_10028E1C8((v63 > 1), v64 + 1, 1, v56);
              }

              *(v56 + 2) = v64 + 1;
              *&v56[16 * v64 + 32] = v62;
              ++v57;
              v54 = v58;
            }

            while (v61 != v55);
          }

          v117[27] = v56;

          v65 = [*(v113 + 16) phoneNumbers];
          v66 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          if (v66 >> 62)
          {
            v67 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v67 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v117[28] = _swiftEmptyArrayStorage;
          if (!v67)
          {
LABEL_106:

            v94 = [*(v113 + 16) identifier];
            v95 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v97 = v96;

            v117[29] = v95;
            v117[30] = v97;
            if (qword_1009736B8 != -1)
            {
              swift_once();
            }

            v98 = type metadata accessor for Logger();
            sub_10000C4AC(v98, qword_10097A860);

            v99 = Logger.logObject.getter();
            v100 = static os_log_type_t.debug.getter();

            if (os_log_type_enabled(v99, v100))
            {
              v101 = swift_slowAlloc();
              v102 = swift_slowAlloc();
              v118[0] = v102;
              *v101 = 136315138;
              *(v101 + 4) = sub_10000C4E4(v95, v97, v118);
              _os_log_impl(&_mh_execute_header, v99, v100, "Update contact event %s", v101, 0xCu);
              sub_10000C60C(v102);
            }

            if (qword_1009735E8 != -1)
            {
              swift_once();
            }

            v50 = static IDMSActor.shared;
            v51 = sub_100385F08;
            goto LABEL_62;
          }

          v0 = 0;
          v116 = _swiftEmptyArrayStorage;
LABEL_84:
          v68 = v0;
          while (1)
          {
            if ((v66 & 0xC000000000000001) != 0)
            {
              v69 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v68 >= *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_129;
              }

              v69 = *(v66 + 8 * v68 + 32);
            }

            v70 = v69;
            v0 = (v68 + 1);
            if (__OFADD__(v68, 1))
            {
              break;
            }

            v71 = [v69 value];
            v72 = [v71 stringValue];

            v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v75 = v74;

            v117[8] = v73;
            v117[9] = v75;
            String.init<A>(_:)();
            v76 = String._bridgeToObjectiveC()();

            v77 = sub_1001F26EC(v76);

            if (v77)
            {
              v78 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v80 = v79;

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v116 = sub_10028E1C8(0, *(v116 + 2) + 1, 1, v116);
              }

              v82 = *(v116 + 2);
              v81 = *(v116 + 3);
              if (v82 >= v81 >> 1)
              {
                v116 = sub_10028E1C8((v81 > 1), v82 + 1, 1, v116);
              }

              *(v116 + 2) = v82 + 1;
              v83 = &v116[16 * v82];
              *(v83 + 4) = v78;
              *(v83 + 5) = v80;
              v117[28] = v116;
              if (v0 != v67)
              {
                goto LABEL_84;
              }

              goto LABEL_106;
            }

            ++v68;
            if (v0 == v67)
            {
              goto LABEL_106;
            }
          }

LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          v2 = _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_3;
        }

        type metadata accessor for SDContactChangeHistoryDeleteEvent();
        v19 = swift_dynamicCastClass();
        if (v19)
        {
          v84 = v19;
          if (qword_1009736B8 != -1)
          {
            swift_once();
          }

          v85 = type metadata accessor for Logger();
          sub_10000C4AC(v85, qword_10097A860);

          v86 = Logger.logObject.getter();
          v87 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v86, v87))
          {
            v88 = swift_slowAlloc();
            v89 = swift_slowAlloc();
            v118[0] = v89;
            *v88 = 136315138;
            v90 = *(v84 + 16);
            v91 = *(v84 + 24);

            v92 = sub_10000C4E4(v90, v91, v118);

            *(v88 + 4) = v92;
            _os_log_impl(&_mh_execute_header, v86, v87, "Delete contact event %s)", v88, 0xCu);
            sub_10000C60C(v89);
          }

          v117[31] = *(v84 + 16);
          v117[32] = *(v84 + 24);
          v93 = qword_1009735E8;

          if (v93 != -1)
          {
            swift_once();
          }

          v50 = static IDMSActor.shared;
          v51 = sub_100386F94;
          goto LABEL_62;
        }

        type metadata accessor for SDContactChangeHistoryDropEverythingEvent();
        if (swift_dynamicCastClass())
        {
          if (qword_1009736B8 != -1)
          {
            swift_once();
          }

          v103 = type metadata accessor for Logger();
          v0[33] = v103;
          sub_10000C4AC(v103, qword_10097A860);
          v104 = Logger.logObject.getter();
          v105 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v104, v105))
          {
            v106 = swift_slowAlloc();
            *v106 = 0;
            _os_log_impl(&_mh_execute_header, v104, v105, "Drop everything contact event", v106, 2u);
          }

          if (qword_1009735E8 != -1)
          {
            swift_once();
          }

          v50 = static IDMSActor.shared;
          v51 = sub_1003880C8;
          goto LABEL_62;
        }
      }

      v4 = v0[26];
      if (v4 == v0[23])
      {
        v49 = *v109;
        v48 = *v108;
        goto LABEL_59;
      }
    }
  }

  v48 = &_swiftEmptySetSingleton;
  v49 = &_swiftEmptySetSingleton;
LABEL_59:
  v0[35] = v48;
  v0[36] = v49;
  v0[34] = v3;
  if (qword_1009735E8 != -1)
  {
    swift_once();
  }

  v50 = static IDMSActor.shared;
  v51 = sub_1003882C8;
LABEL_62:

  return _swift_task_switch(v51, v50, 0);
}

uint64_t sub_100385F08()
{
  v2 = *(v0 + 232);
  v1 = *(v0 + 240);
  v4 = *(v0 + 168);
  v3 = *(v0 + 176);
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 16) = 0u;
  swift_beginAccess();

  v5 = *(v4 + 56);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v4 + 56);
  *(v4 + 56) = 0x8000000000000000;
  sub_10057AAF4((v0 + 16), v2, v1, isUniquelyReferenced_nonNull_native);

  *(v4 + 56) = v8;
  swift_endAccess();

  return _swift_task_switch(sub_100385FFC, v3, 0);
}

uint64_t sub_100385FFC()
{
  v128 = v0;
  v1 = v0[29];
  v2 = v0[30];
  v4 = v0[27];
  v3 = v0[28];
  v5 = v0[24];
  v6 = v0[25];

  sub_100384868(v4, (v0 + 18), v1, v2);

  sub_100384868(v3, (v0 + 19), v1, v2);
  swift_bridgeObjectRelease_n();

  v7 = v0[26];
  if (v7 == v0[23])
  {
LABEL_2:
    *(v0 + 35) = vextq_s8(*(v0 + 9), *(v0 + 9), 8uLL);
    v0[34] = v5;
    if (qword_1009735E8 != -1)
    {
LABEL_130:
      swift_once();
    }

    v8 = static IDMSActor.shared;
    v9 = sub_1003882C8;
  }

  else
  {
    v10 = &selRef_createWiFiRequest;
    p_opt_class_meths = &OBJC_PROTOCOL___BLSBacklightStateObserving.opt_class_meths;
    v126 = v0;
    while (1)
    {
      while (1)
      {
        v0[24] = v5;
        v12 = v0[20];
        if ((v12 & 0xC000000000000001) != 0)
        {
          v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v7 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_129;
          }

          v13 = *(v12 + 8 * v7 + 32);
        }

        v126[25] = v13;
        v126[26] = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          __break(1u);
          goto LABEL_121;
        }

        type metadata accessor for SDContactChangeHistoryAddEvent();
        v14 = swift_dynamicCastClass();
        if (!v14)
        {
          break;
        }

        v119 = v14;
        v17 = [*(v14 + 16) v10[340]];
        sub_10028088C(&qword_10097A210, &qword_1007FDB90);
        v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v18 >> 62)
        {
          v19 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v118 = v5;
        v20 = _swiftEmptyArrayStorage;
        if (v19)
        {
          v21 = 0;
          while (1)
          {
            if ((v18 & 0xC000000000000001) != 0)
            {
              v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v21 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_122;
              }

              v22 = *(v18 + 8 * v21 + 32);
            }

            v23 = v22;
            v24 = v21 + 1;
            if (__OFADD__(v21, 1))
            {
              break;
            }

            v25 = String.init(_:)([v22 value]);

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v20 = sub_10028E1C8(0, *(v20 + 2) + 1, 1, v20);
            }

            v27 = *(v20 + 2);
            v26 = *(v20 + 3);
            if (v27 >= v26 >> 1)
            {
              v20 = sub_10028E1C8((v26 > 1), v27 + 1, 1, v20);
            }

            *(v20 + 2) = v27 + 1;
            *&v20[16 * v27 + 32] = v25;
            ++v21;
            if (v24 == v19)
            {
              goto LABEL_34;
            }
          }

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
          __break(1u);
          goto LABEL_130;
        }

LABEL_34:

        v28 = [*(v119 + 16) phoneNumbers];
        v29 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v124 = v29 & 0xFFFFFFFFFFFFFF8;
        if (v29 >> 62)
        {
          v30 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v30)
        {
          v31 = 0;
          v122 = v29 & 0xC000000000000001;
          v120 = _swiftEmptyArrayStorage;
LABEL_38:
          v32 = v31;
          while (1)
          {
            if (v122)
            {
              v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v32 >= *(v124 + 16))
              {
                goto LABEL_124;
              }

              v33 = *(v29 + 8 * v32 + 32);
            }

            v34 = v33;
            v31 = v32 + 1;
            if (__OFADD__(v32, 1))
            {
              goto LABEL_123;
            }

            v35 = v20;
            v36 = v29;
            v37 = v30;
            v38 = [v33 value];
            v39 = [v38 stringValue];

            v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v42 = v41;

            v126[8] = v40;
            v126[9] = v42;
            String.init<A>(_:)();
            v43 = String._bridgeToObjectiveC()();

            v44 = sub_1001F26EC(v43);

            if (v44)
            {
              v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v48 = v47;

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v120 = sub_10028E1C8(0, *(v120 + 2) + 1, 1, v120);
              }

              v50 = *(v120 + 2);
              v49 = *(v120 + 3);
              if (v50 >= v49 >> 1)
              {
                v120 = sub_10028E1C8((v49 > 1), v50 + 1, 1, v120);
              }

              *(v120 + 2) = v50 + 1;
              v51 = &v120[16 * v50];
              *(v51 + 4) = v46;
              *(v51 + 5) = v48;
              v30 = v37;
              v45 = v31 == v37;
              v29 = v36;
              v20 = v35;
              if (v45)
              {
                goto LABEL_56;
              }

              goto LABEL_38;
            }

            ++v32;
            v30 = v37;
            v45 = v31 == v37;
            v29 = v36;
            v20 = v35;
            if (v45)
            {
              goto LABEL_56;
            }
          }
        }

        v120 = _swiftEmptyArrayStorage;
LABEL_56:

        v52 = [*(v119 + 16) identifier];
        v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v55 = v54;

        if (qword_1009736B8 != -1)
        {
          swift_once();
        }

        v56 = type metadata accessor for Logger();
        sub_10000C4AC(v56, qword_10097A860);

        v57 = Logger.logObject.getter();
        v58 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v57, v58))
        {
          v59 = swift_slowAlloc();
          v60 = swift_slowAlloc();
          v127[0] = v60;
          *v59 = 136315138;
          *(v59 + 4) = sub_10000C4E4(v53, v55, v127);
          _os_log_impl(&_mh_execute_header, v57, v58, "Add contact event %s", v59, 0xCu);
          sub_10000C60C(v60);
        }

        v5 = v118;
        sub_100384868(v20, (v126 + 18), v53, v55);

        sub_100384868(v120, (v126 + 19), v53, v55);
        swift_bridgeObjectRelease_n();
        v0 = v126;

        v7 = v126[26];
        p_opt_class_meths = (&OBJC_PROTOCOL___BLSBacklightStateObserving + 48);
        v10 = &selRef_createWiFiRequest;
        if (v7 == v126[23])
        {
          goto LABEL_2;
        }
      }

      type metadata accessor for SDContactChangeHistoryUpdateEvent();
      v15 = swift_dynamicCastClass();
      if (v15)
      {
        break;
      }

      type metadata accessor for SDContactChangeHistoryDeleteEvent();
      v16 = swift_dynamicCastClass();
      if (v16)
      {
        v94 = v16;
        if (p_opt_class_meths[215] != -1)
        {
          swift_once();
        }

        v95 = type metadata accessor for Logger();
        sub_10000C4AC(v95, qword_10097A860);

        v96 = Logger.logObject.getter();
        v97 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v96, v97))
        {
          v98 = swift_slowAlloc();
          v99 = swift_slowAlloc();
          v127[0] = v99;
          *v98 = 136315138;
          v100 = *(v94 + 16);
          v101 = *(v94 + 24);

          v102 = sub_10000C4E4(v100, v101, v127);

          *(v98 + 4) = v102;
          _os_log_impl(&_mh_execute_header, v96, v97, "Delete contact event %s)", v98, 0xCu);
          sub_10000C60C(v99);
        }

        v126[31] = *(v94 + 16);
        v126[32] = *(v94 + 24);
        v103 = qword_1009735E8;

        if (v103 != -1)
        {
          swift_once();
        }

        v8 = static IDMSActor.shared;
        v9 = sub_100386F94;
        goto LABEL_4;
      }

      type metadata accessor for SDContactChangeHistoryDropEverythingEvent();
      if (swift_dynamicCastClass())
      {
        if (p_opt_class_meths[215] != -1)
        {
          swift_once();
        }

        v113 = type metadata accessor for Logger();
        v126[33] = v113;
        sub_10000C4AC(v113, qword_10097A860);
        v114 = Logger.logObject.getter();
        v115 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v114, v115))
        {
          v116 = swift_slowAlloc();
          *v116 = 0;
          _os_log_impl(&_mh_execute_header, v114, v115, "Drop everything contact event", v116, 2u);
        }

        if (qword_1009735E8 != -1)
        {
          swift_once();
        }

        v8 = static IDMSActor.shared;
        v9 = sub_1003880C8;
        goto LABEL_4;
      }

      v0 = v126;
      v7 = v126[26];
      if (v7 == v126[23])
      {
        goto LABEL_2;
      }
    }

    v123 = v15;
    v61 = [*(v15 + 16) v10[340]];
    sub_10028088C(&qword_10097A210, &qword_1007FDB90);
    v62 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v62 >> 62)
    {
      v63 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v63 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v64 = _swiftEmptyArrayStorage;
    if (v63)
    {
      v65 = 0;
      v125 = v62 & 0xC000000000000001;
      v66 = v62 & 0xFFFFFFFFFFFFFF8;
      v67 = v62;
      do
      {
        if (v125)
        {
          v68 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v65 >= *(v66 + 16))
          {
            goto LABEL_126;
          }

          v68 = *(v62 + 8 * v65 + 32);
        }

        v69 = v68;
        v70 = v65 + 1;
        if (__OFADD__(v65, 1))
        {
          goto LABEL_125;
        }

        v71 = String.init(_:)([v68 value]);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v64 = sub_10028E1C8(0, *(v64 + 2) + 1, 1, v64);
        }

        v73 = *(v64 + 2);
        v72 = *(v64 + 3);
        if (v73 >= v72 >> 1)
        {
          v64 = sub_10028E1C8((v72 > 1), v73 + 1, 1, v64);
        }

        *(v64 + 2) = v73 + 1;
        *&v64[16 * v73 + 32] = v71;
        ++v65;
        v45 = v70 == v63;
        v62 = v67;
      }

      while (!v45);
    }

    v126[27] = v64;

    v74 = [*(v123 + 16) phoneNumbers];
    v75 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v75 >> 62)
    {
      v76 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v76 = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v126[28] = _swiftEmptyArrayStorage;
    if (v76)
    {
      v77 = 0;
      v121 = _swiftEmptyArrayStorage;
LABEL_84:
      v78 = v77;
      do
      {
        if ((v75 & 0xC000000000000001) != 0)
        {
          v79 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v78 >= *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_128;
          }

          v79 = *(v75 + 8 * v78 + 32);
        }

        v80 = v79;
        v77 = v78 + 1;
        if (__OFADD__(v78, 1))
        {
          goto LABEL_127;
        }

        v81 = [v79 value];
        v82 = [v81 stringValue];

        v83 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v85 = v84;

        v126[8] = v83;
        v126[9] = v85;
        String.init<A>(_:)();
        v86 = String._bridgeToObjectiveC()();

        v87 = sub_1001F26EC(v86);

        if (v87)
        {
          v88 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v90 = v89;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v121 = sub_10028E1C8(0, *(v121 + 2) + 1, 1, v121);
          }

          v92 = *(v121 + 2);
          v91 = *(v121 + 3);
          if (v92 >= v91 >> 1)
          {
            v121 = sub_10028E1C8((v91 > 1), v92 + 1, 1, v121);
          }

          *(v121 + 2) = v92 + 1;
          v93 = &v121[16 * v92];
          *(v93 + 4) = v88;
          *(v93 + 5) = v90;
          v126[28] = v121;
          if (v77 != v76)
          {
            goto LABEL_84;
          }

          break;
        }

        ++v78;
      }

      while (v77 != v76);
    }

    v104 = [*(v123 + 16) identifier];
    v105 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v107 = v106;

    v126[29] = v105;
    v126[30] = v107;
    if (qword_1009736B8 != -1)
    {
      swift_once();
    }

    v108 = type metadata accessor for Logger();
    sub_10000C4AC(v108, qword_10097A860);

    v109 = Logger.logObject.getter();
    v110 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v109, v110))
    {
      v111 = swift_slowAlloc();
      v112 = swift_slowAlloc();
      v127[0] = v112;
      *v111 = 136315138;
      *(v111 + 4) = sub_10000C4E4(v105, v107, v127);
      _os_log_impl(&_mh_execute_header, v109, v110, "Update contact event %s", v111, 0xCu);
      sub_10000C60C(v112);
    }

    if (qword_1009735E8 != -1)
    {
      swift_once();
    }

    v8 = static IDMSActor.shared;
    v9 = sub_100385F08;
  }

LABEL_4:

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_100386F94()
{
  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[21];
  swift_beginAccess();
  v4 = *(v3 + 56);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v3 + 56);
  v0[12] = v6;
  *(v3 + 56) = 0x8000000000000000;
  v7 = sub_100012854(v2, v1);
  v10 = *(v6 + 16);
  v11 = (v8 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
LABEL_16:
    v33 = v7;
    sub_1002D001C();
    v7 = v33;
LABEL_8:
    v18 = v0[12];
    v19 = v0[32];
    if (v1)
    {
      v20 = (v18[7] + 48 * v7);
      v21 = *v20;
      v22 = v20[1];
      v23 = v20[2];
      v24 = v20[3];
      v25 = v20[4];
      v26 = v20[5];
      *v20 = 0u;
      *(v20 + 1) = 0u;
      *(v20 + 2) = 0u;
      sub_100389AF8(v21, v22);
    }

    else
    {
      v27 = v0[31];
      v18[(v7 >> 6) + 8] |= 1 << v7;
      v28 = (v18[6] + 16 * v7);
      *v28 = v27;
      v28[1] = v19;
      v29 = (v18[7] + 48 * v7);
      v29[1] = 0u;
      v29[2] = 0u;
      *v29 = 0u;
      v30 = v18[2];
      v12 = __OFADD__(v30, 1);
      v31 = v30 + 1;
      if (v12)
      {
        __break(1u);
        return _swift_task_switch(v7, v8, v9);
      }

      v18[2] = v31;
    }

    v32 = v0[22];
    *(v0[21] + 56) = v18;
    swift_endAccess();
    v7 = sub_100387198;
    v8 = v32;
    v9 = 0;

    return _swift_task_switch(v7, v8, v9);
  }

  LOBYTE(v1) = v8;
  if (*(v6 + 24) >= v13)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

  v15 = v0[31];
  v14 = v0[32];
  sub_100574A44(v13, isUniquelyReferenced_nonNull_native);
  v16 = v0[12];
  v7 = sub_100012854(v15, v14);
  if ((v1 & 1) == (v8 & 1))
  {
    goto LABEL_8;
  }

  return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
}

uint64_t sub_100387198()
{
  v124 = v0;
  v1 = v0[25];

  v2 = v0[26];
  v3 = v0[24];
  if (v2 == v0[23])
  {
LABEL_2:
    *(v0 + 35) = vextq_s8(*(v0 + 9), *(v0 + 9), 8uLL);
    v0[34] = v3;
    if (qword_1009735E8 != -1)
    {
LABEL_130:
      swift_once();
    }

    v4 = static IDMSActor.shared;
    v5 = sub_1003882C8;
  }

  else
  {
    v6 = &selRef_createWiFiRequest;
    p_opt_class_meths = &OBJC_PROTOCOL___BLSBacklightStateObserving.opt_class_meths;
    v122 = v0;
    while (1)
    {
      while (1)
      {
        v0[24] = v3;
        v8 = v0[20];
        if ((v8 & 0xC000000000000001) != 0)
        {
          v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v2 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_129;
          }

          v9 = *(v8 + 8 * v2 + 32);
        }

        v122[25] = v9;
        v122[26] = v2 + 1;
        if (__OFADD__(v2, 1))
        {
          __break(1u);
          goto LABEL_121;
        }

        type metadata accessor for SDContactChangeHistoryAddEvent();
        v10 = swift_dynamicCastClass();
        if (!v10)
        {
          break;
        }

        v115 = v10;
        v13 = [*(v10 + 16) v6[340]];
        sub_10028088C(&qword_10097A210, &qword_1007FDB90);
        v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v14 >> 62)
        {
          v15 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v114 = v3;
        v16 = _swiftEmptyArrayStorage;
        if (v15)
        {
          v17 = 0;
          while (1)
          {
            if ((v14 & 0xC000000000000001) != 0)
            {
              v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v17 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_122;
              }

              v18 = *(v14 + 8 * v17 + 32);
            }

            v19 = v18;
            v20 = v17 + 1;
            if (__OFADD__(v17, 1))
            {
              break;
            }

            v21 = String.init(_:)([v18 value]);

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v16 = sub_10028E1C8(0, *(v16 + 2) + 1, 1, v16);
            }

            v23 = *(v16 + 2);
            v22 = *(v16 + 3);
            if (v23 >= v22 >> 1)
            {
              v16 = sub_10028E1C8((v22 > 1), v23 + 1, 1, v16);
            }

            *(v16 + 2) = v23 + 1;
            *&v16[16 * v23 + 32] = v21;
            ++v17;
            if (v20 == v15)
            {
              goto LABEL_34;
            }
          }

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
          __break(1u);
          goto LABEL_130;
        }

LABEL_34:

        v24 = [*(v115 + 16) phoneNumbers];
        v25 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v120 = v25 & 0xFFFFFFFFFFFFFF8;
        if (v25 >> 62)
        {
          v26 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v26)
        {
          v27 = 0;
          v118 = v25 & 0xC000000000000001;
          v116 = _swiftEmptyArrayStorage;
LABEL_38:
          v28 = v27;
          while (1)
          {
            if (v118)
            {
              v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v28 >= *(v120 + 16))
              {
                goto LABEL_124;
              }

              v29 = *(v25 + 8 * v28 + 32);
            }

            v30 = v29;
            v27 = v28 + 1;
            if (__OFADD__(v28, 1))
            {
              goto LABEL_123;
            }

            v31 = v16;
            v32 = v25;
            v33 = v26;
            v34 = [v29 value];
            v35 = [v34 stringValue];

            v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v38 = v37;

            v122[8] = v36;
            v122[9] = v38;
            String.init<A>(_:)();
            v39 = String._bridgeToObjectiveC()();

            v40 = sub_1001F26EC(v39);

            if (v40)
            {
              v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v44 = v43;

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v116 = sub_10028E1C8(0, *(v116 + 2) + 1, 1, v116);
              }

              v46 = *(v116 + 2);
              v45 = *(v116 + 3);
              if (v46 >= v45 >> 1)
              {
                v116 = sub_10028E1C8((v45 > 1), v46 + 1, 1, v116);
              }

              *(v116 + 2) = v46 + 1;
              v47 = &v116[16 * v46];
              *(v47 + 4) = v42;
              *(v47 + 5) = v44;
              v26 = v33;
              v41 = v27 == v33;
              v25 = v32;
              v16 = v31;
              if (v41)
              {
                goto LABEL_56;
              }

              goto LABEL_38;
            }

            ++v28;
            v26 = v33;
            v41 = v27 == v33;
            v25 = v32;
            v16 = v31;
            if (v41)
            {
              goto LABEL_56;
            }
          }
        }

        v116 = _swiftEmptyArrayStorage;
LABEL_56:

        v48 = [*(v115 + 16) identifier];
        v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v51 = v50;

        if (qword_1009736B8 != -1)
        {
          swift_once();
        }

        v52 = type metadata accessor for Logger();
        sub_10000C4AC(v52, qword_10097A860);

        v53 = Logger.logObject.getter();
        v54 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v53, v54))
        {
          v55 = swift_slowAlloc();
          v56 = swift_slowAlloc();
          v123[0] = v56;
          *v55 = 136315138;
          *(v55 + 4) = sub_10000C4E4(v49, v51, v123);
          _os_log_impl(&_mh_execute_header, v53, v54, "Add contact event %s", v55, 0xCu);
          sub_10000C60C(v56);
        }

        v3 = v114;
        sub_100384868(v16, (v122 + 18), v49, v51);

        sub_100384868(v116, (v122 + 19), v49, v51);
        swift_bridgeObjectRelease_n();
        v0 = v122;

        v2 = v122[26];
        p_opt_class_meths = (&OBJC_PROTOCOL___BLSBacklightStateObserving + 48);
        v6 = &selRef_createWiFiRequest;
        if (v2 == v122[23])
        {
          goto LABEL_2;
        }
      }

      type metadata accessor for SDContactChangeHistoryUpdateEvent();
      v11 = swift_dynamicCastClass();
      if (v11)
      {
        break;
      }

      type metadata accessor for SDContactChangeHistoryDeleteEvent();
      v12 = swift_dynamicCastClass();
      if (v12)
      {
        v90 = v12;
        if (p_opt_class_meths[215] != -1)
        {
          swift_once();
        }

        v91 = type metadata accessor for Logger();
        sub_10000C4AC(v91, qword_10097A860);

        v92 = Logger.logObject.getter();
        v93 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v92, v93))
        {
          v94 = swift_slowAlloc();
          v95 = swift_slowAlloc();
          v123[0] = v95;
          *v94 = 136315138;
          v96 = *(v90 + 16);
          v97 = *(v90 + 24);

          v98 = sub_10000C4E4(v96, v97, v123);

          *(v94 + 4) = v98;
          _os_log_impl(&_mh_execute_header, v92, v93, "Delete contact event %s)", v94, 0xCu);
          sub_10000C60C(v95);
        }

        v122[31] = *(v90 + 16);
        v122[32] = *(v90 + 24);
        v99 = qword_1009735E8;

        if (v99 != -1)
        {
          swift_once();
        }

        v4 = static IDMSActor.shared;
        v5 = sub_100386F94;
        goto LABEL_4;
      }

      type metadata accessor for SDContactChangeHistoryDropEverythingEvent();
      if (swift_dynamicCastClass())
      {
        if (p_opt_class_meths[215] != -1)
        {
          swift_once();
        }

        v109 = type metadata accessor for Logger();
        v122[33] = v109;
        sub_10000C4AC(v109, qword_10097A860);
        v110 = Logger.logObject.getter();
        v111 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v110, v111))
        {
          v112 = swift_slowAlloc();
          *v112 = 0;
          _os_log_impl(&_mh_execute_header, v110, v111, "Drop everything contact event", v112, 2u);
        }

        if (qword_1009735E8 != -1)
        {
          swift_once();
        }

        v4 = static IDMSActor.shared;
        v5 = sub_1003880C8;
        goto LABEL_4;
      }

      v0 = v122;
      v2 = v122[26];
      if (v2 == v122[23])
      {
        goto LABEL_2;
      }
    }

    v119 = v11;
    v57 = [*(v11 + 16) v6[340]];
    sub_10028088C(&qword_10097A210, &qword_1007FDB90);
    v58 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v58 >> 62)
    {
      v59 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v59 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v60 = _swiftEmptyArrayStorage;
    if (v59)
    {
      v61 = 0;
      v121 = v58 & 0xC000000000000001;
      v62 = v58 & 0xFFFFFFFFFFFFFF8;
      v63 = v58;
      do
      {
        if (v121)
        {
          v64 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v61 >= *(v62 + 16))
          {
            goto LABEL_126;
          }

          v64 = *(v58 + 8 * v61 + 32);
        }

        v65 = v64;
        v66 = v61 + 1;
        if (__OFADD__(v61, 1))
        {
          goto LABEL_125;
        }

        v67 = String.init(_:)([v64 value]);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v60 = sub_10028E1C8(0, *(v60 + 2) + 1, 1, v60);
        }

        v69 = *(v60 + 2);
        v68 = *(v60 + 3);
        if (v69 >= v68 >> 1)
        {
          v60 = sub_10028E1C8((v68 > 1), v69 + 1, 1, v60);
        }

        *(v60 + 2) = v69 + 1;
        *&v60[16 * v69 + 32] = v67;
        ++v61;
        v41 = v66 == v59;
        v58 = v63;
      }

      while (!v41);
    }

    v122[27] = v60;

    v70 = [*(v119 + 16) phoneNumbers];
    v71 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v71 >> 62)
    {
      v72 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v72 = *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v122[28] = _swiftEmptyArrayStorage;
    if (v72)
    {
      v73 = 0;
      v117 = _swiftEmptyArrayStorage;
LABEL_84:
      v74 = v73;
      do
      {
        if ((v71 & 0xC000000000000001) != 0)
        {
          v75 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v74 >= *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_128;
          }

          v75 = *(v71 + 8 * v74 + 32);
        }

        v76 = v75;
        v73 = v74 + 1;
        if (__OFADD__(v74, 1))
        {
          goto LABEL_127;
        }

        v77 = [v75 value];
        v78 = [v77 stringValue];

        v79 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v81 = v80;

        v122[8] = v79;
        v122[9] = v81;
        String.init<A>(_:)();
        v82 = String._bridgeToObjectiveC()();

        v83 = sub_1001F26EC(v82);

        if (v83)
        {
          v84 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v86 = v85;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v117 = sub_10028E1C8(0, *(v117 + 2) + 1, 1, v117);
          }

          v88 = *(v117 + 2);
          v87 = *(v117 + 3);
          if (v88 >= v87 >> 1)
          {
            v117 = sub_10028E1C8((v87 > 1), v88 + 1, 1, v117);
          }

          *(v117 + 2) = v88 + 1;
          v89 = &v117[16 * v88];
          *(v89 + 4) = v84;
          *(v89 + 5) = v86;
          v122[28] = v117;
          if (v73 != v72)
          {
            goto LABEL_84;
          }

          break;
        }

        ++v74;
      }

      while (v73 != v72);
    }

    v100 = [*(v119 + 16) identifier];
    v101 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v103 = v102;

    v122[29] = v101;
    v122[30] = v103;
    if (qword_1009736B8 != -1)
    {
      swift_once();
    }

    v104 = type metadata accessor for Logger();
    sub_10000C4AC(v104, qword_10097A860);

    v105 = Logger.logObject.getter();
    v106 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v105, v106))
    {
      v107 = swift_slowAlloc();
      v108 = swift_slowAlloc();
      v123[0] = v108;
      *v107 = 136315138;
      *(v107 + 4) = sub_10000C4E4(v101, v103, v123);
      _os_log_impl(&_mh_execute_header, v105, v106, "Update contact event %s", v107, 0xCu);
      sub_10000C60C(v108);
    }

    if (qword_1009735E8 != -1)
    {
      swift_once();
    }

    v4 = static IDMSActor.shared;
    v5 = sub_100385F08;
  }

LABEL_4:

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1003880C8()
{
  v1 = *(v0 + 168);
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = *(v1 + 104);
  v4 = *(v1 + 112);
  v5 = String._bridgeToObjectiveC()();
  v6 = [v2 objectForKey:v5];

  if (v6)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
  }

  v7 = *(v0 + 112);
  *(v0 + 64) = *(v0 + 96);
  *(v0 + 80) = v7;
  if (*(v0 + 88))
  {
    if (swift_dynamicCast())
    {
      v8 = *(v0 + 168);
      sub_100026AC0(*(v0 + 128), *(v0 + 136));
      *(v8 + 64) = 1;
      goto LABEL_13;
    }
  }

  else
  {
    sub_100005508(v0 + 64, &unk_1009746F0, &qword_1007F90B0);
  }

  if (qword_100973620 != -1)
  {
    swift_once();
  }

  sub_10000C4AC(*(v0 + 264), qword_100978850);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Contact history token nil - skipping db drop", v11, 2u);
  }

LABEL_13:
  v12 = *(v0 + 176);

  return _swift_task_switch(sub_100389CB0, v12, 0);
}

uint64_t sub_1003882C8()
{
  v2 = v0[35];
  v1 = v0[36];
  v3 = v0[34];
  v5 = v0[21];
  v4 = v0[22];

  v0[37] = sub_100384C28(v6, v5, sub_100325FD0, sub_100325FD0);

  v0[38] = sub_100384C28(v7, v5, sub_100326A24, sub_100326A24);

  return _swift_task_switch(sub_1003883BC, v4, 0);
}

uint64_t sub_1003883BC()
{
  v1 = v0[35];
  v2 = v0[36];

  v3 = v0[1];
  v4 = v0[37];
  v5 = v0[38];

  return v3(v4, v5);
}

uint64_t sub_100388428(uint64_t a1)
{
  *(v1 + 80) = a1;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v2 = static AirDropActor.shared;
  *(v1 + 88) = static AirDropActor.shared;

  return _swift_task_switch(sub_1003884F4, v2, 0);
}

uint64_t sub_1003884F4()
{
  if (qword_1009735E8 != -1)
  {
    swift_once();
  }

  v0 = static IDMSActor.shared;

  return _swift_task_switch(sub_1003885B8, v0, 0);
}

uint64_t sub_1003885B8()
{
  v2 = v0[10];
  v1 = v0[11];
  v0[12] = sub_100326E88();
  v0[13] = v3;

  return _swift_task_switch(sub_100388658, v1, 0);
}

uint64_t sub_100388658()
{
  v180 = v0;
  v1 = v0[12];
  if (*(v1 + 16) || *(v0[13] + 16))
  {
    v166 = [objc_allocWithZone(CNContactStore) init];
    sub_10028088C(&qword_100974F70, &unk_100804260);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1007FDA40;
    *(v2 + 32) = CNContactIdentifierKey;
    *(v2 + 40) = CNContactEmailAddressesKey;
    *(v2 + 48) = CNContactPhoneNumbersKey;
    v3 = v1 + 56;
    v4 = -1;
    v5 = -1 << *(v1 + 32);
    if (-v5 < 64)
    {
      v4 = ~(-1 << -v5);
    }

    v6 = v4 & *(v1 + 56);
    v7 = (63 - v5) >> 6;
    v8 = CNContactIdentifierKey;
    v9 = CNContactEmailAddressesKey;
    v10 = CNContactPhoneNumbersKey;

    v11 = 0;
    v177 = v0;
    v162 = v1 + 56;
    v159 = v1;
    v167 = v7;
    if (!v6)
    {
      while (1)
      {
LABEL_9:
        v12 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (v12 >= v7)
        {
          break;
        }

        v6 = *(v3 + 8 * v12);
        ++v11;
        if (v6)
        {
          v11 = v12;
          goto LABEL_13;
        }
      }

      v42 = v0[12];
      v43 = v0[13];

      v44 = v43 + 56;
      v45 = -1;
      v46 = -1 << *(v43 + 32);
      if (-v46 < 64)
      {
        v45 = ~(-1 << -v46);
      }

      v47 = v45 & *(v43 + 56);
      v48 = (63 - v46) >> 6;

      v49 = 0;
      v156 = v43;
      v160 = v43 + 56;
      v163 = v48;
      if (!v47)
      {
        while (1)
        {
LABEL_33:
          v50 = v49 + 1;
          if (__OFADD__(v49, 1))
          {
            goto LABEL_127;
          }

          if (v50 >= v48)
          {
            break;
          }

          v47 = *(v44 + 8 * v50);
          ++v49;
          if (v47)
          {
            v49 = v50;
            goto LABEL_37;
          }
        }

        v81 = v0[13];

        if (qword_1009736B8 == -1)
        {
LABEL_52:
          v82 = type metadata accessor for Logger();
          sub_10000C4AC(v82, qword_10097A860);
          v83 = &_swiftEmptySetSingleton;

          v84 = Logger.logObject.getter();
          v85 = static os_log_type_t.default.getter();
          v86 = &_swiftEmptySetSingleton & 0xC000000000000001;
          if (os_log_type_enabled(v84, v85))
          {
            v87 = swift_slowAlloc();
            *v87 = 134217984;
            if (v86)
            {
              v88 = __CocoaSet.count.getter();
            }

            else
            {
              v88 = *(&_swiftEmptySetSingleton + 2);
            }

            *(v87 + 4) = v88;

            _os_log_impl(&_mh_execute_header, v84, v85, "Found %ld total contacts matching retry handles", v87, 0xCu);
          }

          else
          {
          }

          v178 = &_swiftEmptySetSingleton;
          v179[0] = &_swiftEmptySetSingleton;
          if (v86)
          {
            __CocoaSet.makeIterator()();
            sub_100389A64();
            sub_100389AB0(&qword_100975090, sub_100389A64);
            Set.Iterator.init(_cocoa:)();
            v83 = v0[2];
            v89 = v0[3];
            v90 = v0[4];
            v91 = v0[5];
            v92 = v0[6];
          }

          else
          {
            v91 = 0;
            v89 = &_swiftEmptySetSingleton + 56;
            v93 = -1 << *(&_swiftEmptySetSingleton + 32);
            v94 = ~v93;
            v95 = -v93;
            if (v95 < 64)
            {
              v96 = ~(-1 << v95);
            }

            else
            {
              v96 = -1;
            }

            v92 = v96 & *(&_swiftEmptySetSingleton + 7);
            v90 = v94;
          }

          v97 = 0;
          v98 = (v90 + 64) >> 6;
          v157 = v89;
          v158 = v83;
          for (i = v98; ; v98 = i)
          {
            if ((v83 & 0x8000000000000000) != 0)
            {
              v110 = __CocoaSet.Iterator.next()();
              if (!v110 || (v0[9] = v110, sub_100389A64(), swift_dynamicCast(), v109 = v0[7], j = v91, v108 = v92, !v109))
              {
LABEL_113:
                v146 = v0[12];
                v145 = v0[13];

                sub_100027D64();
                v147 = v178;
                v148 = v179[0];
                goto LABEL_114;
              }
            }

            else
            {
              v105 = v91;
              v106 = v92;
              for (j = v91; !v106; ++v105)
              {
                j = v105 + 1;
                if (__OFADD__(v105, 1))
                {
                  goto LABEL_128;
                }

                if (j >= v98)
                {
                  goto LABEL_113;
                }

                v106 = *&v89[8 * j];
              }

              v108 = (v106 - 1) & v106;
              v109 = *(*(v83 + 48) + ((j << 9) | (8 * __clz(__rbit64(v106)))));
              if (!v109)
              {
                goto LABEL_113;
              }
            }

            v164 = j;
            v169 = v109;
            v111 = [v109 emailAddresses];
            sub_10028088C(&qword_10097A210, &qword_1007FDB90);
            v112 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

            v113 = v112;
            if (v112 >> 62)
            {
              v144 = v112;
              v0 = _CocoaArrayWrapper.endIndex.getter();
              v113 = v144;
            }

            else
            {
              v0 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v161 = v108;
            v165 = v97;
            if (v0)
            {
              v114 = 0;
              v175 = v113 & 0xC000000000000001;
              v115 = v113 & 0xFFFFFFFFFFFFFF8;
              v116 = _swiftEmptyArrayStorage;
              v117 = v113;
              while (1)
              {
                if (v175)
                {
                  v118 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                }

                else
                {
                  if (v114 >= *(v115 + 16))
                  {
                    goto LABEL_123;
                  }

                  v118 = *(v113 + 8 * v114 + 32);
                }

                v119 = v118;
                v120 = (v114 + 1);
                if (__OFADD__(v114, 1))
                {
                  break;
                }

                v121 = String.init(_:)([v118 value]);

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v116 = sub_10028E1C8(0, *(v116 + 2) + 1, 1, v116);
                }

                v123 = *(v116 + 2);
                v122 = *(v116 + 3);
                if (v123 >= v122 >> 1)
                {
                  v116 = sub_10028E1C8((v122 > 1), v123 + 1, 1, v116);
                }

                *(v116 + 2) = v123 + 1;
                *&v116[16 * v123 + 32] = v121;
                ++v114;
                v113 = v117;
                if (v120 == v0)
                {
                  goto LABEL_92;
                }
              }

              __break(1u);
LABEL_123:
              __break(1u);
              goto LABEL_124;
            }

            v116 = _swiftEmptyArrayStorage;
LABEL_92:

            v124 = [v169 phoneNumbers];
            v125 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

            if (v125 >> 62)
            {
              v176 = v125 & 0xFFFFFFFFFFFFFF8;
              v126 = _CocoaArrayWrapper.endIndex.getter();
              if (v126)
              {
LABEL_94:
                v127 = 0;
                v0 = (v125 & 0xC000000000000001);
                v172 = _swiftEmptyArrayStorage;
LABEL_95:
                v128 = v127;
                while (1)
                {
                  if (v0)
                  {
                    v129 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                  }

                  else
                  {
                    if (v128 >= *(v176 + 16))
                    {
                      goto LABEL_125;
                    }

                    v129 = *(v125 + 8 * v128 + 32);
                  }

                  v130 = v129;
                  v127 = v128 + 1;
                  if (__OFADD__(v128, 1))
                  {
                    break;
                  }

                  v131 = [v129 value];
                  v132 = [v131 stringValue];

                  v133 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v135 = v134;

                  v177[7] = v133;
                  v177[8] = v135;
                  String.init<A>(_:)();
                  v136 = String._bridgeToObjectiveC()();

                  v137 = sub_1001F26EC(v136);

                  if (v137)
                  {
                    v138 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v140 = v139;

                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v172 = sub_10028E1C8(0, *(v172 + 2) + 1, 1, v172);
                    }

                    v142 = *(v172 + 2);
                    v141 = *(v172 + 3);
                    if (v142 >= v141 >> 1)
                    {
                      v172 = sub_10028E1C8((v141 > 1), v142 + 1, 1, v172);
                    }

                    *(v172 + 2) = v142 + 1;
                    v143 = &v172[16 * v142];
                    *(v143 + 4) = v138;
                    *(v143 + 5) = v140;
                    if (v127 != v126)
                    {
                      goto LABEL_95;
                    }

                    goto LABEL_66;
                  }

                  ++v128;
                  if (v127 == v126)
                  {
                    goto LABEL_66;
                  }
                }

LABEL_124:
                __break(1u);
LABEL_125:
                __break(1u);
                goto LABEL_126;
              }
            }

            else
            {
              v176 = v125 & 0xFFFFFFFFFFFFFF8;
              v126 = *((v125 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v126)
              {
                goto LABEL_94;
              }
            }

            v172 = _swiftEmptyArrayStorage;
LABEL_66:
            v0 = v177;
            v100 = v177[12];
            v99 = v177[13];

            v101 = [v169 identifier];
            v102 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v104 = v103;

            v97 = v165;
            sub_10038491C(v116, v100, &v178, v102, v104);

            sub_10038491C(v172, v99, v179, v102, v104);
            swift_bridgeObjectRelease_n();

            v92 = v161;
            v91 = v164;
            v89 = v157;
            v83 = v158;
          }
        }

LABEL_129:
        swift_once();
        goto LABEL_52;
      }

LABEL_37:
      while (1)
      {
        v51 = __clz(__rbit64(v47));
        v47 &= v47 - 1;
        v52 = (*(v43 + 48) + ((v49 << 10) | (16 * v51)));
        v53 = *v52;
        v54 = v52[1];
        v55 = objc_allocWithZone(CNPhoneNumber);

        v168 = v53;
        v56 = String._bridgeToObjectiveC()();
        v57 = [v55 initWithStringValue:v56];

        v174 = v57;
        v58 = [objc_opt_self() predicateForContactsMatchingPhoneNumber:v57];
        sub_10028088C(&unk_10097A940, &unk_100807F40);
        isa = Array._bridgeToObjectiveC()().super.isa;
        v0[7] = 0;
        v171 = v58;
        v60 = [v166 unifiedContactsMatchingPredicate:v58 keysToFetch:isa error:v0 + 7];

        v61 = v0[7];
        if (!v60)
        {
          break;
        }

        sub_100389A64();
        v62 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
        v63 = v61;

        sub_10057EBEC(v64);

        if (qword_1009736B8 != -1)
        {
          swift_once();
        }

        v65 = type metadata accessor for Logger();
        sub_10000C4AC(v65, qword_10097A860);

        v66 = Logger.logObject.getter();
        v67 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v66, v67))
        {
          v68 = swift_slowAlloc();
          v69 = swift_slowAlloc();
          v179[0] = v69;
          *v68 = 134218242;
          if (v62 >> 62)
          {
            v70 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v70 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          *(v68 + 4) = v70;

          *(v68 + 12) = 2080;
          v71 = sub_10000C4E4(v168, v54, v179);

          *(v68 + 14) = v71;
          _os_log_impl(&_mh_execute_header, v66, v67, "Found %ld contacts for phone: %s", v68, 0x16u);
          sub_10000C60C(v69);

          v0 = v177;
          v43 = v156;
LABEL_32:
          v44 = v160;
          v48 = v163;
          if (!v47)
          {
            goto LABEL_33;
          }
        }

        else
        {
          swift_bridgeObjectRelease_n();

          v48 = v163;
          if (!v47)
          {
            goto LABEL_33;
          }
        }
      }

      v72 = v61;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      if (qword_1009736B8 != -1)
      {
        swift_once();
      }

      v73 = type metadata accessor for Logger();
      sub_10000C4AC(v73, qword_10097A860);

      swift_errorRetain();
      v74 = Logger.logObject.getter();
      v75 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v74, v75))
      {
        v76 = swift_slowAlloc();
        v77 = swift_slowAlloc();
        v78 = swift_slowAlloc();
        v179[0] = v78;
        *v76 = 136315394;
        v79 = sub_10000C4E4(v168, v54, v179);

        *(v76 + 4) = v79;
        *(v76 + 12) = 2112;
        swift_errorRetain();
        v80 = _swift_stdlib_bridgeErrorToNSError();
        *(v76 + 14) = v80;
        *v77 = v80;
        _os_log_impl(&_mh_execute_header, v74, v75, "Failed to fetch contacts for phone %s: %@", v76, 0x16u);
        sub_100005508(v77, &qword_100975400, &qword_1007F65D0);
        v0 = v177;

        sub_10000C60C(v78);
        v43 = v156;
      }

      else
      {
      }

      goto LABEL_32;
    }

LABEL_13:
    while (1)
    {
      v13 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v14 = (*(v1 + 48) + ((v11 << 10) | (16 * v13)));
      v15 = *v14;
      v16 = v14[1];
      v17 = objc_opt_self();

      v170 = v15;
      v18 = String._bridgeToObjectiveC()();
      v19 = [v17 predicateForContactsMatchingEmailAddress:v18];

      sub_10028088C(&unk_10097A940, &unk_100807F40);
      v20 = Array._bridgeToObjectiveC()().super.isa;
      v0[7] = 0;
      v173 = v19;
      v21 = [v166 unifiedContactsMatchingPredicate:v19 keysToFetch:v20 error:v0 + 7];

      v22 = v0[7];
      if (!v21)
      {
        break;
      }

      sub_100389A64();
      v23 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v22;

      sub_10057EBEC(v25);

      if (qword_1009736B8 != -1)
      {
        swift_once();
      }

      v26 = type metadata accessor for Logger();
      sub_10000C4AC(v26, qword_10097A860);

      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v179[0] = v30;
        *v29 = 134218242;
        if (v23 >> 62)
        {
          v31 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v31 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v29 + 4) = v31;

        *(v29 + 12) = 2080;
        v32 = sub_10000C4E4(v170, v16, v179);

        *(v29 + 14) = v32;
        _os_log_impl(&_mh_execute_header, v27, v28, "Found %ld contacts for email: %s", v29, 0x16u);
        sub_10000C60C(v30);

        v0 = v177;
        v1 = v159;
LABEL_8:
        v3 = v162;
        v7 = v167;
        if (!v6)
        {
          goto LABEL_9;
        }
      }

      else
      {
        swift_bridgeObjectRelease_n();

        v7 = v167;
        if (!v6)
        {
          goto LABEL_9;
        }
      }
    }

    v33 = v22;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1009736B8 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_10000C4AC(v34, qword_10097A860);

    swift_errorRetain();
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v179[0] = v39;
      *v37 = 136315394;
      v40 = sub_10000C4E4(v170, v16, v179);

      *(v37 + 4) = v40;
      *(v37 + 12) = 2112;
      swift_errorRetain();
      v41 = _swift_stdlib_bridgeErrorToNSError();
      *(v37 + 14) = v41;
      *v38 = v41;
      _os_log_impl(&_mh_execute_header, v35, v36, "Failed to fetch contacts for email %s: %@", v37, 0x16u);
      sub_100005508(v38, &qword_100975400, &qword_1007F65D0);
      v0 = v177;

      sub_10000C60C(v39);
      v1 = v159;
    }

    else
    {
    }

    goto LABEL_8;
  }

  if (qword_1009736B8 != -1)
  {
    swift_once();
  }

  v151 = type metadata accessor for Logger();
  sub_10000C4AC(v151, qword_10097A860);
  v152 = Logger.logObject.getter();
  v153 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v152, v153))
  {
    v154 = swift_slowAlloc();
    *v154 = 0;
    _os_log_impl(&_mh_execute_header, v152, v153, "No handles need retry", v154, 2u);
  }

  v147 = &_swiftEmptySetSingleton;
  v148 = &_swiftEmptySetSingleton;
LABEL_114:
  v149 = v0[1];

  return v149(v147, v148);
}

unint64_t sub_100389A64()
{
  result = qword_100975088;
  if (!qword_100975088)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100975088);
  }

  return result;
}

uint64_t sub_100389AB0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100389AF8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_100389B48(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C00;

  return sub_100383918(a1, v4, v5, v6);
}

uint64_t initializeBufferWithCopyOfBuffer for IDMSServiceError(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for IDMSServiceError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for IDMSServiceError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_100389C60(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100389C7C(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_100389D4C()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_1009A08E8);
  sub_10000C4AC(v0, qword_1009A08E8);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100389DCC()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_1009A0900);
  sub_10000C4AC(v0, qword_1009A0900);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100389E50()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_1009A0918);
  sub_10000C4AC(v0, qword_1009A0918);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100389ED0()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_1009A0930);
  sub_10000C4AC(v0, qword_1009A0930);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100389FA8()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_1009A0978);
  sub_10000C4AC(v0, qword_1009A0978);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10038A028()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_1009A0990);
  sub_10000C4AC(v0, qword_1009A0990);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10038A0A8()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_1009A09A8);
  sub_10000C4AC(v0, qword_1009A09A8);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10038A128()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_1009A09C0);
  sub_10000C4AC(v0, qword_1009A09C0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10038A1A8()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_1009A09D8);
  sub_10000C4AC(v0, qword_1009A09D8);
  return Logger.init(subsystem:category:)();
}

id sub_10038A2CC(uint64_t a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v5 = type metadata accessor for Logger();
  sub_100282710(v5, a2);
  sub_10000C4AC(v5, a2);
  result = a3();
  if (result)
  {
    return Logger.init(_:)();
  }

  __break(1u);
  return result;
}

uint64_t sub_10038A3A0(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for Logger();
  sub_100282710(v3, a2);
  sub_10000C4AC(v3, a2);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10038A418()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_10097A968);
  v1 = sub_10000C4AC(v0, qword_10097A968);
  if (qword_100973758 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A0A50);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

char *sub_10038A4E0(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v65 = a6;
  v66 = a1;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = v64 - v17;
  v6[OBJC_IVAR____TtC16DaemoniOSLibrary34SDAuthenticationPairingLockSession_requestArmingUI] = 0;
  v6[OBJC_IVAR____TtC16DaemoniOSLibrary34SDAuthenticationPairingLockSession_armingUITransportType] = 3;
  v19 = &v6[OBJC_IVAR____TtC16DaemoniOSLibrary34SDAuthenticationPairingLockSession_passcode];
  *v19 = a4;
  v19[1] = a5;
  v68 = a3;
  sub_1002A9938(a3, &v71);
  v20 = *(v12 + 16);
  v67 = a2;
  v21 = a2;
  v22 = v11;
  v20(v18, v21, v11);
  v23 = type metadata accessor for SDAuthenticationAKSPairingSession();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  v26 = swift_allocObject();
  *(v26 + OBJC_IVAR____TtC16DaemoniOSLibrary33SDAuthenticationAKSPairingSession_aksSession) = 0;
  v27 = objc_opt_self();

  result = [v27 sharedManager];
  if (result)
  {
    v29 = result;

    *(v26 + OBJC_IVAR____TtC16DaemoniOSLibrary33SDAuthenticationAKSPairingSession_aksManager) = v29;
    *(v26 + OBJC_IVAR____TtC16DaemoniOSLibrary33SDAuthenticationAKSPairingSession_role) = 0;
    sub_1000121F8(&v71, v26 + OBJC_IVAR____TtC16DaemoniOSLibrary33SDAuthenticationAKSPairingSession_peerDevice);
    (*(v12 + 32))(v26 + OBJC_IVAR____TtC16DaemoniOSLibrary33SDAuthenticationAKSPairingSession_sessionID, v18, v22);
    v30 = v65;
    *(v26 + OBJC_IVAR____TtC16DaemoniOSLibrary33SDAuthenticationAKSPairingSession_type) = v65;
    *&v6[OBJC_IVAR____TtC16DaemoniOSLibrary34SDAuthenticationPairingLockSession_aksPairingSession] = v26;
    v31 = v67;
    v20(v16, v67, v22);
    v32 = &v6[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_delegate];
    *v32 = 0u;
    *(v32 + 1) = 0u;
    *(v32 + 4) = 0;
    v33 = &v6[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_peerDevice];
    *v33 = 0u;
    *(v33 + 1) = 0u;
    *(v33 + 4) = 0;
    *&v6[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_responseTimer] = 0;
    v34 = v66;
    *&v6[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_queue] = v66;
    v20(&v6[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_sessionID], v16, v22);
    *&v6[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_type] = v30;
    v35 = type metadata accessor for SDAuthenticationSession();
    v70.receiver = v6;
    v70.super_class = v35;
    v66 = v34;
    v36 = objc_msgSendSuper2(&v70, "init");
    v37 = *(v12 + 8);
    v65 = v22;
    v38 = v22;
    v39 = v37;
    v37(v16, v38);
    v40 = v68;
    sub_1002A9938(v68, &v71);
    v41 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_peerDevice;
    swift_beginAccess();
    v42 = v36;
    sub_1002AF74C(&v71, v36 + v41);
    swift_endAccess();
    v43 = v12 + 8;
    if (qword_100973778 != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    sub_10000C4AC(v44, qword_10097A968);
    sub_1002A9938(v40, &v71);
    v45 = v42;
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v64[1] = v43;
      v49 = v48;
      v69[0] = swift_slowAlloc();
      *v49 = 136315650;
      v50 = UUID.uuidString.getter();
      v52 = sub_10000C4E4(v50, v51, v69);

      *(v49 + 4) = v52;
      *(v49 + 12) = 2080;
      v53 = v72;
      v54 = v73;
      sub_10002CDC0(&v71, v72);
      v55 = (*(v54 + 8))(v53, v54);
      if (v56)
      {
        v57 = v55;
      }

      else
      {
        v57 = 0xD000000000000015;
      }

      if (v56)
      {
        v58 = v56;
      }

      else
      {
        v58 = 0x8000000100789F30;
      }

      sub_10000C60C(&v71);
      v59 = sub_10000C4E4(v57, v58, v69);

      *(v49 + 14) = v59;
      *(v49 + 22) = 2080;
      v60 = *&v45[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_type];
      v61 = sub_100027340();
      v63 = sub_10000C4E4(v61, v62, v69);

      *(v49 + 24) = v63;
      _os_log_impl(&_mh_execute_header, v46, v47, "Begin SDAuthenticationPairingLockSession %s for device: %s with %s", v49, 0x20u);
      swift_arrayDestroy();

      sub_10000C60C(v68);
      v39(v67, v65);
    }

    else
    {

      sub_10000C60C(v40);
      v39(v31, v65);
      sub_10000C60C(&v71);
    }

    return v45;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10038AAC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[31] = a4;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v4[32] = v5;
  v6 = *(v5 - 8);
  v4[33] = v6;
  v7 = *(v6 + 64) + 15;
  v4[34] = swift_task_alloc();
  v8 = type metadata accessor for DispatchQoS();
  v4[35] = v8;
  v9 = *(v8 - 8);
  v4[36] = v9;
  v10 = *(v9 + 64) + 15;
  v4[37] = swift_task_alloc();

  return _swift_task_switch(sub_10038ABE4, 0, 0);
}

uint64_t sub_10038ABE4()
{
  v50 = v0;
  v1 = *(v0 + 248);
  if (*(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_type) == 8)
  {
    sub_10038BAA8(0, 0xF000000000000000);
    v13 = v12;
    v48 = v14;
    v15 = *(v0 + 248);
    v16 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_peerDevice;
    swift_beginAccess();
    sub_10000FF90(v15 + v16, v0 + 104, &qword_100982080, &unk_1007FDD30);
    if (*(v0 + 128))
    {
      v17 = *(v0 + 296);
      v18 = *(v0 + 272);
      v46 = *(v0 + 288);
      v47 = *(v0 + 280);
      v19 = *(v0 + 256);
      v20 = *(v0 + 264);
      v21 = *(v0 + 248);
      sub_1000121F8((v0 + 104), v0 + 64);
      v45 = *&v21[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_queue];
      sub_1002A9938(v0 + 64, v0 + 144);
      v22 = swift_allocObject();
      v22[2] = v21;
      v22[3] = v13;
      v22[4] = v48;
      sub_1000121F8((v0 + 144), (v22 + 5));
      *(v0 + 48) = sub_1003900E0;
      *(v0 + 56) = v22;
      *(v0 + 16) = _NSConcreteStackBlock;
      *(v0 + 24) = 1107296256;
      *(v0 + 32) = sub_100011678;
      *(v0 + 40) = &unk_1008DDC28;
      v23 = _Block_copy((v0 + 16));
      v24 = v21;
      sub_100294008(v13, v48);
      static DispatchQoS.unspecified.getter();
      *(v0 + 240) = _swiftEmptyArrayStorage;
      sub_10001432C(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags);
      sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
      sub_100013EB8();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v23);
      sub_10028BCC0(0, 0xF000000000000000);
      sub_100026AC0(v13, v48);
      (*(v20 + 8))(v18, v19);
      (*(v46 + 8))(v17, v47);
      sub_10000C60C((v0 + 64));
      v25 = *(v0 + 56);
    }

    else
    {
      sub_100005508(v0 + 104, &qword_100982080, &unk_1007FDD30);
      v32 = sub_100010F88(10, 0xD000000000000021, 0x800000010078DD80);
      v34 = v33;
      if (qword_100973778 != -1)
      {
        swift_once();
      }

      v35 = type metadata accessor for Logger();
      sub_10000C4AC(v35, qword_10097A968);

      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v49 = v39;
        *v38 = 136315138;
        v40 = sub_1000116BC(v32, v34);
        v42 = sub_10000C4E4(v40, v41, &v49);

        *(v38 + 4) = v42;
        _os_log_impl(&_mh_execute_header, v36, v37, "%s", v38, 0xCu);
        sub_10000C60C(v39);
      }

      sub_1000115C8();
      v43 = swift_allocError();
      *v44 = v32;
      *(v44 + 8) = v34;
      swift_willThrow();
      sub_100026AC0(v13, v48);
      sub_10028BCC0(0, 0xF000000000000000);
      *(v0 + 224) = v43;
      swift_errorRetain();
      sub_10028088C(&unk_10097A930, &unk_1007F9050);
      if (swift_dynamicCast())
      {
        v2 = *(v0 + 248);

        sub_10038C344(*(v0 + 208), *(v0 + 216));

        v3 = *(v0 + 224);
      }

      else
      {
        v6 = *(v0 + 224);

        *(v0 + 232) = v43;
        swift_errorRetain();
        type metadata accessor for SFAuthenticationErrorCode(0);
        v7 = swift_dynamicCast();
        v8 = *(v0 + 248);
        if (v7)
        {

          v9 = sub_100010F88(*(v0 + 344), 0, 0xE000000000000000);
          sub_10038C344(v9, v10);

          v11 = *(v0 + 232);
        }

        else
        {
          v26 = *(v0 + 232);

          v27 = sub_100010F88(10, 0, 0xE000000000000000);
          sub_10038C344(v27, v28);
        }
      }
    }

    v29 = *(v0 + 296);
    v30 = *(v0 + 272);

    v31 = *(v0 + 8);

    return v31();
  }

  else
  {
    *(v0 + 304) = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAuthenticationPairingLockSession_aksPairingSession);

    v4 = swift_task_alloc();
    *(v0 + 312) = v4;
    *v4 = v0;
    v4[1] = sub_10038B228;

    return sub_100678A54();
  }
}

uint64_t sub_10038B228(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 312);
  v8 = *v3;
  *(*v3 + 320) = v2;

  if (v2)
  {
    v9 = sub_10038B914;
  }

  else
  {
    v10 = v6[38];

    v6[41] = a2;
    v6[42] = a1;
    v9 = sub_10038B364;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_10038B364()
{
  v52 = v0;
  v2 = v0[41];
  v1 = v0[42];
  v3 = v0[40];
  v4 = v0[31];
  sub_10038BAA8(v1, v2);
  v7 = v3;
  if (v3)
  {
LABEL_2:
    sub_10028BCC0(v1, v2);
    v0[28] = v7;
    swift_errorRetain();
    sub_10028088C(&unk_10097A930, &unk_1007F9050);
    if (swift_dynamicCast())
    {
      v8 = v0[31];

      sub_10038C344(*(v0 + 52), v0[27]);

      v9 = v0[28];
    }

    else
    {
      v10 = v0[28];

      v0[29] = v7;
      swift_errorRetain();
      type metadata accessor for SFAuthenticationErrorCode(0);
      v11 = swift_dynamicCast();
      v12 = v0[31];
      if (v11)
      {

        v13 = sub_100010F88(*(v0 + 86), 0, 0xE000000000000000);
        sub_10038C344(v13, v14);

        v15 = v0[29];
      }

      else
      {
        v25 = v0[29];

        v26 = sub_100010F88(10, 0, 0xE000000000000000);
        sub_10038C344(v26, v27);
      }
    }

    goto LABEL_10;
  }

  v49 = v5;
  v50 = v6;
  v16 = v0[31];
  v17 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_peerDevice;
  swift_beginAccess();
  sub_10000FF90(v16 + v17, (v0 + 13), &qword_100982080, &unk_1007FDD30);
  if (!v0[16])
  {
    sub_100005508((v0 + 13), &qword_100982080, &unk_1007FDD30);
    v32 = sub_100010F88(10, 0xD000000000000021, 0x800000010078DD80);
    v34 = v33;
    if (qword_100973778 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_10000C4AC(v35, qword_10097A968);

    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v51 = v39;
      *v38 = 136315138;
      v40 = sub_1000116BC(v32, v34);
      v42 = sub_10000C4E4(v40, v41, &v51);

      *(v38 + 4) = v42;
      _os_log_impl(&_mh_execute_header, v36, v37, "%s", v38, 0xCu);
      sub_10000C60C(v39);
    }

    sub_1000115C8();
    v7 = swift_allocError();
    *v43 = v32;
    *(v43 + 8) = v34;
    swift_willThrow();
    sub_100026AC0(v49, v50);
    goto LABEL_2;
  }

  v18 = v0[37];
  v19 = v0[34];
  v47 = v0[36];
  v48 = v0[35];
  v46 = v0[33];
  v44 = v0[32];
  v20 = v0[31];
  sub_1000121F8((v0 + 13), (v0 + 8));
  v45 = *&v20[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_queue];
  sub_1002A9938((v0 + 8), (v0 + 18));
  v21 = swift_allocObject();
  v21[2] = v20;
  v21[3] = v49;
  v21[4] = v50;
  sub_1000121F8(v0 + 9, (v21 + 5));
  v0[6] = sub_1003900E0;
  v0[7] = v21;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100011678;
  v0[5] = &unk_1008DDC28;
  v22 = _Block_copy(v0 + 2);
  v23 = v20;
  sub_100294008(v49, v50);
  static DispatchQoS.unspecified.getter();
  v0[30] = _swiftEmptyArrayStorage;
  sub_10001432C(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags);
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_100013EB8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v22);
  sub_10028BCC0(v1, v2);
  sub_100026AC0(v49, v50);
  (*(v46 + 8))(v19, v44);
  (*(v47 + 8))(v18, v48);
  sub_10000C60C(v0 + 8);
  v24 = v0[7];

LABEL_10:
  v28 = v0[37];
  v29 = v0[34];

  v30 = v0[1];

  return v30();
}

uint64_t sub_10038B914()
{
  v1 = *(v0 + 304);

  v2 = *(v0 + 320);
  *(v0 + 224) = v2;
  swift_errorRetain();
  sub_10028088C(&unk_10097A930, &unk_1007F9050);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 248);

    sub_10038C344(*(v0 + 208), *(v0 + 216));

    v4 = *(v0 + 224);
  }

  else
  {
    v5 = *(v0 + 224);

    *(v0 + 232) = v2;
    swift_errorRetain();
    type metadata accessor for SFAuthenticationErrorCode(0);
    v6 = swift_dynamicCast();
    v7 = *(v0 + 248);
    if (v6)
    {

      v8 = sub_100010F88(*(v0 + 344), 0, 0xE000000000000000);
      sub_10038C344(v8, v9);

      v10 = *(v0 + 232);
    }

    else
    {
      v11 = *(v0 + 232);

      v12 = sub_100010F88(10, 0, 0xE000000000000000);
      sub_10038C344(v12, v13);
    }
  }

  v14 = *(v0 + 296);
  v15 = *(v0 + 272);

  v16 = *(v0 + 8);

  return v16();
}

void sub_10038BAA8(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v5 = [objc_allocWithZone(SDAuthenticationPairingRequest) init];
  v6 = v5;
  if (v5)
  {
    [v5 setVersion:1];
    v7 = v6;
    UUID.uuidString.getter();
    v8 = String._bridgeToObjectiveC()();

    [v7 setSessionID:v8];

    v9 = v7;
    if (a2 >> 60 == 15)
    {
      isa = 0;
    }

    else
    {
      isa = Data._bridgeToObjectiveC()().super.isa;
    }

    [v9 setLongTermKey:isa];

    if (HIDWORD(*(v3 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_type)))
    {
      __break(1u);
      return;
    }

    [v9 setType:?];
  }

  if (qword_100973778 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_10000C4AC(v11, qword_10097A968);
  v12 = v6;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138412290;
    *(v15 + 4) = v12;
    *v16 = v6;
    v17 = v12;
    _os_log_impl(&_mh_execute_header, v13, v14, "Generated pairing request %@", v15, 0xCu);
    sub_100005508(v16, &qword_100975400, &qword_1007F65D0);
  }

  if (v6 && (v18 = [v12 data]) != 0)
  {
    v19 = v18;
    static Data._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v20 = sub_100010F88(10, 0xD000000000000020, 0x800000010078DDB0);
    v22 = v21;

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v31 = v26;
      *v25 = 136315138;
      v27 = sub_1000116BC(v20, v22);
      v29 = sub_10000C4E4(v27, v28, &v31);

      *(v25 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v23, v24, "%s", v25, 0xCu);
      sub_10000C60C(v26);
    }

    sub_1000115C8();
    swift_allocError();
    *v30 = v20;
    *(v30 + 8) = v22;
    swift_willThrow();
  }
}

uint64_t sub_10038BE74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_delegate;
  swift_beginAccess();
  sub_10000FF90(a1 + v8, &v32, &qword_10097A9C8, &unk_1007FDD40);
  if (v33)
  {
    sub_1000121F8(&v32, v34);
    if (qword_100973778 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10000C4AC(v9, qword_10097A968);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Sending authentication pairing request", v12, 2u);
    }

    v13 = sub_10002CDC0(v34, v34[3]);
    if (*(a1 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAuthenticationPairingLockSession_requestArmingUI) == 1)
    {
      v14 = *(a1 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAuthenticationPairingLockSession_armingUITransportType);
    }

    else
    {
      v14 = sub_1004FE08C(*(a1 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_type));
    }

    v19 = *v13;
    if (qword_100973C48 != -1)
    {
      swift_once();
    }

    sub_10000C4AC(v9, qword_1009895D8);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v30 = a2;
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *&v32 = v23;
      *v22 = 136315138;
      v31 = a3;
      if (v14 <= 2u)
      {
        v25 = 0xEB0000000074656ELL;
        v24 = a4;
        if (v14)
        {
          if (v14 == 1)
          {
            v25 = 0xE800000000000000;
            v26 = 0x6C61636F4C736469;
          }

          else
          {
            v26 = 0x7265746E49736469;
          }
        }

        else
        {
          v25 = 0xEB00000000746E65;
          v26 = 0x674179627261656ELL;
        }
      }

      else
      {
        v24 = a4;
        if (v14 > 4u)
        {
          if (v14 == 5)
          {
            v25 = 0x80000001007888E0;
            v26 = 0xD000000000000010;
          }

          else
          {
            v25 = 0xED000068746F6F74;
            v26 = 0x65756C4265726F63;
          }
        }

        else if (v14 == 3)
        {
          v25 = 0xE900000000000054;
          v26 = 0x4274726F70706172;
        }

        else
        {
          v25 = 0xEB000000004C4457;
          v26 = 0x4174726F70706172;
        }
      }

      v27 = sub_10000C4E4(v26, v25, &v32);

      *(v22 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v20, v21, "Using transport type %s", v22, 0xCu);
      sub_10000C60C(v23);

      a4 = v24;
      a2 = v30;
      a3 = v31;
    }

    else
    {
    }

    v28 = *(v19 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_transportManager);
    sub_1005CCC7C(a2, a3, a4, 3u, v14);
    sub_10000C60C(v34);
  }

  else
  {
    sub_100005508(&v32, &qword_10097A9C8, &unk_1007FDD40);
    if (qword_100973778 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_10000C4AC(v15, qword_10097A968);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Warning: No delegate to send response to", v18, 2u);
    }
  }

  return sub_1004FD4B0(0, 1);
}

uint64_t sub_10038C344(int a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *&v2[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_queue];
  v16 = swift_allocObject();
  *(v16 + 16) = v2;
  *(v16 + 24) = a1;
  *(v16 + 32) = a2;
  aBlock[4] = sub_1003900F0;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100011678;
  aBlock[3] = &unk_1008DDC78;
  v17 = _Block_copy(aBlock);
  v18 = v2;

  static DispatchQoS.unspecified.getter();
  v20[1] = _swiftEmptyArrayStorage;
  sub_10001432C(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags);
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_100013EB8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);
  (*(v6 + 8))(v9, v5);
  (*(v11 + 8))(v14, v10);
}

void sub_10038C600(void *a1)
{
  v2 = v1;
  if (qword_100973778 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  v5 = sub_10000C4AC(v4, qword_10097A968);
  v6 = a1;
  v177 = v5;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    *(v9 + 4) = v6;
    *v10 = v6;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v7, v8, "Handling authentication pairing response: %@", v9, 0xCu);
    sub_100005508(v10, &qword_100975400, &qword_1007F65D0);
  }

  sub_1004FDD9C();
  if ([v6 hasErrorCode])
  {
    v12 = [v6 errorCode];
    _StringGuts.grow(_:)(32);

    v186 = 0xD00000000000001ELL;
    v187 = 0x800000010078DE50;
    v13 = SFAuthenticationErrorCodeToString();
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v17._countAndFlagsBits = v14;
    v17._object = v16;
    String.append(_:)(v17);

    v18 = 0xD00000000000001ELL;
    v19 = 0x800000010078DE50;
    v20 = v12;
LABEL_64:
    v95 = sub_100010F88(v20, v18, v19);
    v97 = v96;
    sub_1000115C8();
    v98 = swift_allocError();
    *v99 = v95;
    *(v99 + 8) = v97;
    swift_willThrow();
LABEL_65:
    *&v180 = v98;
    swift_errorRetain();
    sub_10028088C(&unk_10097A930, &unk_1007F9050);
    if (swift_dynamicCast())
    {

      sub_10038C344(v183, *(&v183 + 1));
    }

    else
    {

      *&v183 = v98;
      swift_errorRetain();
      type metadata accessor for SFAuthenticationErrorCode(0);
      if (swift_dynamicCast())
      {

        v100 = sub_100010F88(v180, 0, 0xE000000000000000);
      }

      else
      {

        v100 = sub_100010F88(10, 0, 0xE000000000000000);
      }

      sub_10038C344(v100, v101);
    }

    return;
  }

  v21 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_type;
  if (*(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_type) == 8)
  {
    v22 = [objc_opt_self() sharedTransport];
    if (!v22)
    {
      __break(1u);
      return;
    }

    v23 = v22;
    v24 = [v22 enabledAutoUnlockDevices];

    if (v24)
    {
      v165 = v6;
      v166 = v21;
      v163 = v4;
      v25 = sub_1000276B4(0, &qword_100974F60, SFAutoUnlockDevice_ptr);
      v26 = sub_10002764C();
      v27 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      v167 = v25;
      v168 = v27;
      if ((v27 & 0xC000000000000001) != 0)
      {
        swift_unknownObjectRetain();
        __CocoaSet.makeIterator()();
        Set.Iterator.init(_cocoa:)();
        v29 = v186;
        v28 = v187;
        v30 = v188;
        v31 = v189;
        v32 = v190;
      }

      else
      {
        v29 = v168;
        v35 = -1 << *(v168 + 32);
        v28 = (v168 + 56);
        v26 = ~v35;
        v36 = -v35;
        if (v36 < 64)
        {
          v37 = ~(-1 << v36);
        }

        else
        {
          v37 = -1;
        }

        v32 = (v37 & *(v168 + 56));

        v30 = v26;
        v31 = 0;
      }

      v164 = v30;
      v171 = (v30 + 64) >> 6;
      v38 = &unk_1007FDD30;
      v176 = v2;
      v169 = v28;
      isa = v29;
      while (1)
      {
        v39 = v32;
        v40 = v31;
        if (v29 < 0)
        {
          v44 = __CocoaSet.Iterator.next()();
          if (!v44 || (v182[0] = v44, swift_dynamicCast(), v43 = v183, v178 = v39, !v183))
          {
LABEL_47:
            sub_100027D64();

            *&v183 = 0;
            *(&v183 + 1) = 0xE000000000000000;
            _StringGuts.grow(_:)(26);
            v180 = v183;
            v60._countAndFlagsBits = 0xD000000000000018;
            v60._object = 0x800000010078DE30;
            String.append(_:)(v60);
            v61 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_peerDevice;
            swift_beginAccess();
            sub_10000FF90(v2 + v61, &v183, &qword_100982080, &unk_1007FDD30);
            v62 = v184;
            if (v184)
            {
              v63 = v185;
              v64 = sub_10002CDC0(&v183, v184);
              v65 = *(v62 - 8);
              v66 = *(v65 + 64);
              __chkstk_darwin(v64);
              v68 = &v162 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
              (*(v65 + 16))(v68);
              sub_100005508(&v183, &qword_100982080, &unk_1007FDD30);
              v69 = (*(v63 + 8))(v62, v63);
              v71 = v70;
              (*(v65 + 8))(v68, v62);
            }

            else
            {
              sub_100005508(&v183, &qword_100982080, &unk_1007FDD30);
              v69 = 0;
              v71 = 0;
            }

            *&v183 = v69;
            *(&v183 + 1) = v71;
            DefaultStringInterpolation.appendInterpolation<A>(_:)();

            v19 = *(&v180 + 1);
            v18 = v180;
            v20 = 33;
            goto LABEL_64;
          }
        }

        else
        {
          v41 = v31;
          v42 = v32;
          if (!v32)
          {
            while (1)
            {
              v31 = v41 + 1;
              if (__OFADD__(v41, 1))
              {
                break;
              }

              if (v31 >= v171)
              {
                goto LABEL_47;
              }

              v42 = v28[v31];
              ++v41;
              if (v42)
              {
                goto LABEL_29;
              }
            }

            __break(1u);
LABEL_104:
            v122 = 0xEB0000000074656ELL;
            if (v41)
            {
              if (v41 == 1)
              {
                v122 = 0xE800000000000000;
                v158 = 0x6C61636F4C736469;
              }

              else
              {
                v158 = 0x7265746E49736469;
              }
            }

            else
            {
              v122 = 0xEB00000000746E65;
              v158 = 0x674179627261656ELL;
            }

            goto LABEL_113;
          }

LABEL_29:
          v178 = ((v42 - 1) & v42);
          v43 = *(*(v29 + 48) + ((v31 << 9) | (8 * __clz(__rbit64(v42)))));
          if (!v43)
          {
            goto LABEL_47;
          }
        }

        v45 = [v43 uniqueID];
        v173 = v40;
        if (v45)
        {
          v46 = v45;
          v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v49 = v48;
        }

        else
        {
          v47 = 0;
          v49 = 0;
        }

        v172 = v39;
        v26 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_peerDevice;
        swift_beginAccess();
        sub_10000FF90(v2 + v26, &v183, &qword_100982080, &unk_1007FDD30);
        v50 = v184;
        if (!v184)
        {
          break;
        }

        v170 = v47;
        v51 = v185;
        v52 = sub_10002CDC0(&v183, v184);
        v175 = &v162;
        v53 = *(v50 - 8);
        v54 = *(v53 + 64);
        __chkstk_darwin(v52);
        v26 = &v162 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v53 + 16))(v26);
        sub_100005508(&v183, &qword_100982080, &unk_1007FDD30);
        v56 = (*(v51 + 8))(v50, v51);
        v58 = v57;
        (*(v53 + 8))(v26, v50);
        if (v49)
        {
          v2 = v176;
          v28 = v169;
          if (!v58)
          {
            goto LABEL_46;
          }

          if (v170 == v56 && v49 == v58)
          {

LABEL_52:

LABEL_53:
            sub_100027D64();

            v4 = v163;
            v6 = v165;
            v21 = v166;
            goto LABEL_54;
          }

          v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v29 = isa;
          v38 = &unk_1007FDD30;
          v32 = v178;
          if (v26)
          {
            goto LABEL_53;
          }
        }

        else
        {

          v2 = v176;
          v28 = v169;
          v29 = isa;
          v38 = &unk_1007FDD30;
          v32 = v178;
          if (!v58)
          {
            goto LABEL_53;
          }

LABEL_23:
        }
      }

      sub_100005508(&v183, &qword_100982080, &unk_1007FDD30);
      v2 = v176;
      if (!v49)
      {
        goto LABEL_52;
      }

LABEL_46:

      v29 = isa;
      v38 = &unk_1007FDD30;
      v32 = v178;
      goto LABEL_23;
    }

    v178 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v178, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v178, v33, "No devices enabled to unlock this device", v34, 2u);
    }
  }

  else
  {
LABEL_54:
    v72 = [v6 token];
    if (!v72)
    {
      v18 = 0x20676E697373694DLL;
      v19 = 0xED00006E656B6F74;
      v20 = 10;
      goto LABEL_64;
    }

    v166 = v21;
    v73 = v72;
    v40 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v74 = v6;
    v31 = v75;

    v165 = v74;
    if ([v74 hasLongTermKey] && *(v2 + v166) != 8 && (v76 = objc_msgSend(v165, "longTermKey")) != 0)
    {
      v77 = v76;
      v78 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v80 = v79;

      v81 = [objc_opt_self() sharedManager];
      v178 = v80;
      v175 = v78;
      v176 = v2;
      v163 = v4;
      if (v81)
      {
        v82 = v81;
        isa = Data._bridgeToObjectiveC()().super.isa;
        v83 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_peerDevice;
        swift_beginAccess();
        sub_10000FF90(v2 + v83, &v183, &qword_100982080, &unk_1007FDD30);
        v84 = v184;
        v172 = v31;
        if (v184)
        {
          v85 = v185;
          v86 = sub_10002CDC0(&v183, v184);
          v173 = &v162;
          v87 = *(v84 - 8);
          v88 = *(v87 + 64);
          __chkstk_darwin(v86);
          v90 = &v162 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v87 + 16))(v90);
          sub_100005508(&v183, &qword_100982080, &unk_1007FDD30);
          (*(v85 + 8))(v84, v85);
          v92 = v91;
          (*(v87 + 8))(v90, v84);
          if (v92)
          {
            v93 = String._bridgeToObjectiveC()();
          }

          else
          {
            v93 = 0;
          }

          v78 = v175;
          v2 = v176;
        }

        else
        {
          sub_100005508(&v183, &qword_100982080, &unk_1007FDD30);
          v93 = 0;
        }

        v80 = v178;
        v131 = v82;
        v132 = v82;
        v133 = isa;
        [v131 signAndStoreRemoteLTK:isa forDeviceID:v93];

        v31 = v172;
      }

      v134 = v78;
      v135 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAuthenticationPairingLockSession_aksPairingSession);
      isa = *(v135 + OBJC_IVAR____TtC16DaemoniOSLibrary33SDAuthenticationAKSPairingSession_aksManager);

      sub_100294008(v134, v80);
      sub_100294008(v40, v31);
      v136.super.isa = Data._bridgeToObjectiveC()().super.isa;
      v138 = *(v135 + OBJC_IVAR____TtC16DaemoniOSLibrary33SDAuthenticationAKSPairingSession_peerDevice + 24);
      v137 = *(v135 + OBJC_IVAR____TtC16DaemoniOSLibrary33SDAuthenticationAKSPairingSession_peerDevice + 32);
      v139 = sub_10002CDC0((v135 + OBJC_IVAR____TtC16DaemoniOSLibrary33SDAuthenticationAKSPairingSession_peerDevice), v138);
      v173 = &v162;
      v140 = *(v138 - 8);
      v141 = *(v140 + 64);
      __chkstk_darwin(v139);
      v143 = &v162 - v142;
      (*(v140 + 16))(&v162 - v142);
      (*(v137 + 8))(v138, v137);
      v145 = v144;
      (*(v140 + 8))(v143, v138);
      if (v145)
      {
        v146 = String._bridgeToObjectiveC()();
      }

      else
      {
        v146 = 0;
      }

      [(objc_class *)isa signAndStoreRemoteLTK:v136.super.isa forDeviceID:v146];

      sub_10067A2BC();
      v2 = v176;
      v4 = v163;
      sub_10067A7F8(v40, v31);
      v103 = v147;
      v148 = v175;
      v149 = v178;
      sub_100026AC0(v175, v178);

      sub_100026AC0(v40, v31);
      v104 = v148;
      v105 = v149;
    }

    else
    {
      v94 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAuthenticationPairingLockSession_aksPairingSession);
      sub_100294008(v40, v31);

      sub_10067B040();
      sub_10067A7F8(v40, v31);
      v103 = v102;

      v104 = v40;
      v105 = v31;
    }

    sub_100026AC0(v104, v105);
    if ([v165 hasRequestArmingUI])
    {
      v106 = Logger.logObject.getter();
      v107 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v106, v107))
      {
        v108 = swift_slowAlloc();
        *v108 = 0;
        _os_log_impl(&_mh_execute_header, v106, v107, "Got request to show arming UI on successful registration", v108, 2u);
      }

      v109 = [v165 requestArmingUI];
      *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAuthenticationPairingLockSession_requestArmingUI) = v109;
    }

    v176 = v2;
    v110 = [objc_allocWithZone(SDAuthenticationPairingCreateSecret) init];
    if (!v110)
    {
      v123 = sub_100010F88(10, 0xD00000000000002FLL, 0x800000010078DDE0);
      v125 = v124;
      sub_1000115C8();
      v98 = swift_allocError();
      *v126 = v123;
      *(v126 + 8) = v125;
      swift_willThrow();
      sub_100026AC0(v40, v31);

      goto LABEL_65;
    }

    v28 = v110;
    v111 = v176;
    UUID.uuidString.getter();
    v112 = String._bridgeToObjectiveC()();

    [v28 setSessionID:v112];

    [v28 setToken:v103];
    v113 = [v28 data];
    if (!v113)
    {
      v127 = sub_100010F88(10, 0xD000000000000020, 0x800000010078DDB0);
      v129 = v128;
      sub_1000115C8();
      v98 = swift_allocError();
      *v130 = v127;
      *(v130 + 8) = v129;
      swift_willThrow();
      sub_100026AC0(v40, v31);

      goto LABEL_65;
    }

    v178 = v103;
    v163 = v4;
    v114 = v113;
    v175 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v177 = v115;

    v116 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_peerDevice;
    swift_beginAccess();
    sub_10000FF90(v111 + v116, v182, &qword_100982080, &unk_1007FDD30);
    *&v180 = 0;
    *(&v180 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(30);

    *&v180 = 0xD00000000000001CLL;
    *(&v180 + 1) = 0x800000010078DE10;
    type metadata accessor for UUID();
    sub_10001432C(&qword_100978CE0, &type metadata accessor for UUID);
    v117._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v117);

    v118 = v180;
    sub_10000FF90(v182, &v180, &qword_100982080, &unk_1007FDD30);
    if (!v181)
    {
      sub_100005508(&v180, &qword_100982080, &unk_1007FDD30);
      v150 = sub_100010F88(10, v118, *(&v118 + 1));
      v152 = v151;
      sub_1000115C8();
      v98 = swift_allocError();
      *v153 = v150;
      *(v153 + 8) = v152;
      swift_willThrow();
      sub_100026AC0(v175, v177);

      sub_100026AC0(v40, v31);
      sub_100005508(v182, &qword_100982080, &unk_1007FDD30);
      goto LABEL_65;
    }

    sub_100005508(v182, &qword_100982080, &unk_1007FDD30);

    sub_1000121F8(&v180, &v183);
    v119 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_delegate;
    swift_beginAccess();
    sub_10000FF90(v111 + v119, v182, &qword_10097A9C8, &unk_1007FDD40);
    if (v182[3])
    {
      sub_1002A9938(v182, &v180);
      sub_100005508(v182, &qword_10097A9C8, &unk_1007FDD40);
      v120 = sub_10002CDC0(&v180, v181);
      v121 = v178;
      if (*(v111 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAuthenticationPairingLockSession_requestArmingUI) == 1)
      {
        LODWORD(v122) = *(v111 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAuthenticationPairingLockSession_armingUITransportType);
      }

      else
      {
        LODWORD(v122) = sub_1004FE08C(*(v111 + v166));
      }

      v156 = v163;
      v157 = *v120;
      if (qword_100973C48 != -1)
      {
        v161 = v163;
        swift_once();
        v156 = v161;
      }

      sub_10000C4AC(v156, qword_1009895D8);
      v26 = Logger.logObject.getter();
      LOBYTE(v38) = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v26, v38))
      {
        v173 = v157;
        v29 = swift_slowAlloc();
        v2 = swift_slowAlloc();
        v179 = v2;
        *v29 = 136315138;
        LODWORD(v41) = v122;
        LODWORD(isa) = v122;
        if (v122 <= 2u)
        {
          goto LABEL_104;
        }

        if (v122 > 4u)
        {
          if (v122 == 5)
          {
            v122 = 0x80000001007888E0;
            v158 = 0xD000000000000010;
          }

          else
          {
            v122 = 0xED000068746F6F74;
            v158 = 0x65756C4265726F63;
          }
        }

        else if (v122 == 3)
        {
          v122 = 0xE900000000000054;
          v158 = 0x4274726F70706172;
        }

        else
        {
          v122 = 0xEB000000004C4457;
          v158 = 0x4174726F70706172;
        }

LABEL_113:
        v159 = sub_10000C4E4(v158, v122, &v179);

        *(v29 + 4) = v159;
        _os_log_impl(&_mh_execute_header, v26, v38, "Using transport type %s", v29, 0xCu);
        sub_10000C60C(v2);

        v121 = v178;
        LOBYTE(v122) = isa;
        v157 = v173;
      }

      else
      {
      }

      v160 = *(v157 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_transportManager);
      v155 = v175;
      v154 = v177;
      sub_1005CCC7C(v175, v177, &v183, 6u, v122);
      sub_10000C60C(&v180);
    }

    else
    {
      sub_100005508(v182, &qword_10097A9C8, &unk_1007FDD40);
      v154 = v177;
      v121 = v178;
      v155 = v175;
    }

    sub_1004FD4B0(0, 1);
    sub_100026AC0(v155, v154);

    sub_100026AC0(v40, v31);
    sub_10000C60C(&v183);
  }
}

uint64_t sub_10038DD6C(void *a1)
{
  if (qword_100973778 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000C4AC(v3, qword_10097A968);
  v4 = a1;
  v5 = v1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v33[0] = v10;
    *v8 = 138412546;
    *(v8 + 4) = v4;
    *v9 = v4;
    *(v8 + 12) = 2080;
    v11 = v4;
    v12 = UUID.uuidString.getter();
    v14 = sub_10000C4E4(v12, v13, v33);

    *(v8 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v6, v7, "Received authentication pairing create record: %@ for sessionID %s", v8, 0x16u);
    sub_100005508(v9, &qword_100975400, &qword_1007F65D0);

    sub_10000C60C(v10);
  }

  sub_1004FDD9C();
  v15 = [v4 token];
  if (v15)
  {
    v16 = v15;
    v17 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v20 = [v4 requestArmingUI];
    v5[OBJC_IVAR____TtC16DaemoniOSLibrary34SDAuthenticationPairingLockSession_requestArmingUI] = v20;
    v21 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_type;
    if (*&v5[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_type] == 8)
    {
      sub_10038EA00(v17, v19);
    }

    else
    {
      sub_10038E22C(v17, v19);
    }

    if (*&v5[v21] == 5)
    {
      LOBYTE(v33[0]) = 1;
      sub_10038ED2C(0x100000000uLL);
    }

    v30 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_delegate;
    swift_beginAccess();
    sub_10000FF90(&v5[v30], v33, &qword_10097A9C8, &unk_1007FDD40);
    if (v33[3])
    {
      sub_1002A9938(v33, v32);
      sub_100005508(v33, &qword_10097A9C8, &unk_1007FDD40);
      v31 = sub_10002CDC0(v32, v32[3]);
      sub_1004DC544(v5, *v31);
      sub_100026AC0(v17, v19);
      return sub_10000C60C(v32);
    }

    else
    {
      sub_100026AC0(v17, v19);
      return sub_100005508(v33, &qword_10097A9C8, &unk_1007FDD40);
    }
  }

  else
  {
    v22 = sub_100010F88(10, 0xD00000000000002BLL, 0x800000010078DE70);
    v24 = v23;
    sub_1000115C8();
    v25 = swift_allocError();
    *v26 = v22;
    *(v26 + 8) = v24;
    swift_willThrow();
    v32[0] = v25;
    swift_errorRetain();
    sub_10028088C(&unk_10097A930, &unk_1007F9050);
    if (swift_dynamicCast())
    {

      sub_10038C344(v33[0], v33[1]);
    }

    else
    {

      v33[0] = v25;
      swift_errorRetain();
      type metadata accessor for SFAuthenticationErrorCode(0);
      if (swift_dynamicCast())
      {

        v28 = sub_100010F88(LODWORD(v32[0]), 0, 0xE000000000000000);
      }

      else
      {

        v28 = sub_100010F88(10, 0, 0xE000000000000000);
      }

      sub_10038C344(v28, v29);
    }
  }
}

void sub_10038E22C(uint64_t a1, unint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v8 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v57 - v10;
  v12 = *(v5 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAuthenticationPairingLockSession_aksPairingSession);
  v13 = *(v5 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAuthenticationPairingLockSession_passcode);
  v14 = *(v5 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAuthenticationPairingLockSession_passcode + 8);

  sub_100678E2C(a1, a2, v13, v14);

  if (!v4)
  {
    v15 = [objc_opt_self() sharedTransport];
    if (!v15)
    {
      __break(1u);
      return;
    }

    v16 = v15;
    v17 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_peerDevice;
    swift_beginAccess();
    sub_10000FF90(v5 + v17, &v59, &qword_100982080, &unk_1007FDD30);
    if (v61)
    {
      sub_10028088C(&unk_100985A70, &unk_10080CDC0);
      sub_1000276B4(0, &qword_10097F0C0, IDSDevice_ptr);
      if (swift_dynamicCast())
      {
        v18 = v57;
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      sub_100005508(&v59, &qword_100982080, &unk_1007FDD30);
      v18 = 0;
    }

    v19 = [v16 autoUnlockDeviceForIDSDevice:v18 cloudPaired:0 cached:0];

    v59 = 0;
    v60 = 0xE000000000000000;
    _StringGuts.grow(_:)(26);
    v57 = v59;
    v58 = v60;
    v20._countAndFlagsBits = 0x6369766544534449;
    v20._object = 0xED00002044492065;
    String.append(_:)(v20);
    sub_10000FF90(v5 + v17, &v59, &qword_100982080, &unk_1007FDD30);
    v21 = v61;
    if (v61)
    {
      v22 = v62;
      v23 = sub_10002CDC0(&v59, v61);
      v24 = *(v21 - 8);
      v25 = *(v24 + 64);
      __chkstk_darwin(v23);
      v27 = &v57 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v24 + 16))(v27);
      sub_100005508(&v59, &qword_100982080, &unk_1007FDD30);
      v28 = (*(v22 + 8))(v21, v22);
      v30 = v29;
      (*(v24 + 8))(v27, v21);
    }

    else
    {
      sub_100005508(&v59, &qword_100982080, &unk_1007FDD30);
      v28 = 0;
      v30 = 0;
    }

    v59 = v28;
    v60 = v30;
    DefaultStringInterpolation.appendInterpolation<A>(_:)();

    v31._countAndFlagsBits = 0x756F6620746F6E20;
    v31._object = 0xEB000000002E646ELL;
    String.append(_:)(v31);
    if (!v19)
    {
      v42 = sub_100010F88(10, v57, v58);
      v44 = v43;
      sub_1000115C8();
      swift_allocError();
      *v45 = v42;
      *(v45 + 8) = v44;
      swift_willThrow();
      return;
    }

    if ([v19 unlockEnabled])
    {
      v32 = [v19 bluetoothID];
      if (v32)
      {
        v33 = v32;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v34 = type metadata accessor for UUID();
        (*(*(v34 - 8) + 56))(v11, 0, 1, v34);
        sub_100005508(v11, &unk_100976120, &qword_1007F9260);
        if (qword_100973778 != -1)
        {
          swift_once();
        }

        v35 = type metadata accessor for Logger();
        sub_10000C4AC(v35, qword_10097A968);
        v36 = v19;
        v37 = Logger.logObject.getter();
        v38 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          v40 = swift_slowAlloc();
          *v39 = 138412290;
          *(v39 + 4) = v36;
          *v40 = v19;
          v41 = v36;
          _os_log_impl(&_mh_execute_header, v37, v38, "Enabled for device: %@", v39, 0xCu);
          sub_100005508(v40, &qword_100975400, &qword_1007F65D0);
        }

        if (qword_100973C50 != -1)
        {
          swift_once();
        }

        if (qword_1009A10A8)
        {
          sub_10069579C();
        }

LABEL_29:

        return;
      }

      v46 = type metadata accessor for UUID();
      (*(*(v46 - 8) + 56))(v11, 1, 1, v46);
      sub_100005508(v11, &unk_100976120, &qword_1007F9260);
    }

    if (qword_100973778 != -1)
    {
      swift_once();
    }

    v47 = type metadata accessor for Logger();
    sub_10000C4AC(v47, qword_10097A968);
    v36 = v19;
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      *v50 = 138412290;
      *(v50 + 4) = v36;
      *v51 = v19;
      v52 = v36;
      _os_log_impl(&_mh_execute_header, v48, v49, "Device not enabled: %@", v50, 0xCu);
      sub_100005508(v51, &qword_100975400, &qword_1007F65D0);
    }

    v53 = sub_100010F88(10, 0xD000000000000032, 0x800000010078DEA0);
    v55 = v54;
    sub_1000115C8();
    swift_allocError();
    *v56 = v53;
    *(v56 + 8) = v55;
    swift_willThrow();
    goto LABEL_29;
  }
}

void sub_10038EA00(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v7 = *&v4[OBJC_IVAR____TtC16DaemoniOSLibrary34SDAuthenticationPairingLockSession_aksPairingSession];

  v8 = sub_1006794BC(a1, a2);

  if (!v3)
  {

    if (qword_100973778 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10000C4AC(v9, qword_10097A968);
    v10 = v4;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v11, v12))
    {
      goto LABEL_11;
    }

    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v33 = v14;
    *v13 = 136315138;
    v15 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_peerDevice;
    swift_beginAccess();
    sub_10000FF90(&v10[v15], v30, &qword_100982080, &unk_1007FDD30);
    v16 = v31;
    if (v31)
    {
      v17 = v32;
      v18 = sub_10002CDC0(v30, v31);
      v28 = &v28;
      v29 = v14;
      v19 = *(v16 - 8);
      v20 = *(v19 + 64);
      __chkstk_darwin(v18);
      v22 = &v28 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v19 + 16))(v22);
      sub_100005508(v30, &qword_100982080, &unk_1007FDD30);
      v23 = (*(v17 + 8))(v16, v17);
      v25 = v24;
      (*(v19 + 8))(v22, v16);
      v14 = v29;
      if (v25)
      {
        v26 = v23;
LABEL_10:
        v27 = sub_10000C4E4(v26, v25, &v33);

        *(v13 + 4) = v27;
        _os_log_impl(&_mh_execute_header, v11, v12, "Finalized Registration for device %s", v13, 0xCu);
        sub_10000C60C(v14);

LABEL_11:

        return;
      }
    }

    else
    {
      sub_100005508(v30, &qword_100982080, &unk_1007FDD30);
    }

    v25 = 0xE90000000000003ELL;
    v26 = 0x676E697373696D3CLL;
    goto LABEL_10;
  }
}

void sub_10038ED2C(unint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = (&v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_queue);
  *v8 = v9;
  (*(v5 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v4);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  v12 = *(v5 + 8);
  v11 = (v5 + 8);
  v12(v8, v4);
  if ((v9 & 1) == 0)
  {
    __break(1u);
LABEL_43:
    swift_once();
    goto LABEL_21;
  }

  v13 = [objc_allocWithZone(SDAuthenticationConfirmation) init];
  v11 = v13;
  if (v13)
  {
    [v13 setVersion:1];
    v14 = v11;
    UUID.uuidString.getter();
    v15 = String._bridgeToObjectiveC()();

    [v14 setSessionID:v15];

    [v14 setSuccess:HIDWORD(a1) & 1];
    if ((a1 & 0x100000000) == 0)
    {
      [v14 setErrorCode:a1];
    }

    v16 = [v14 data];
    if (v16)
    {
      v17 = v16;
      v18 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;

      if (qword_100973778 != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      sub_10000C4AC(v21, qword_10097A968);
      v22 = v14;
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        *v25 = 138412290;
        *(v25 + 4) = v22;
        *v26 = v11;
        v27 = v22;
        _os_log_impl(&_mh_execute_header, v23, v24, "Sending confirmation: %@", v25, 0xCu);
        sub_100005508(v26, &qword_100975400, &qword_1007F65D0);
      }

      v28 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_peerDevice;
      swift_beginAccess();
      sub_10000FF90(v2 + v28, &v51, &qword_100982080, &unk_1007FDD30);
      if (v52)
      {
        sub_1000121F8(&v51, v53);
        v29 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_delegate;
        swift_beginAccess();
        sub_10000FF90(v2 + v29, &v51, &qword_10097A9C8, &unk_1007FDD40);
        if (v52)
        {
          sub_1002A9938(&v51, v50);
          sub_100005508(&v51, &qword_10097A9C8, &unk_1007FDD40);
          v30 = *sub_10002CDC0(v50, v50[3]);
          v31 = sub_1004FE08C(*(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_type));
          if (qword_100973C48 != -1)
          {
            swift_once();
          }

          sub_10000C4AC(v21, qword_1009895D8);
          v32 = Logger.logObject.getter();
          v33 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v32, v33))
          {
            v34 = swift_slowAlloc();
            v35 = swift_slowAlloc();
            v49 = v35;
            *v34 = 136315138;
            v48 = v30;
            if (v31 <= 2u)
            {
              v36 = 0xEB0000000074656ELL;
              if (v31)
              {
                if (v31 == 1)
                {
                  v36 = 0xE800000000000000;
                  v37 = 0x6C61636F4C736469;
                }

                else
                {
                  v37 = 0x7265746E49736469;
                }
              }

              else
              {
                v36 = 0xEB00000000746E65;
                v37 = 0x674179627261656ELL;
              }
            }

            else if (v31 > 4u)
            {
              if (v31 == 5)
              {
                v36 = 0x80000001007888E0;
                v37 = 0xD000000000000010;
              }

              else
              {
                v36 = 0xED000068746F6F74;
                v37 = 0x65756C4265726F63;
              }
            }

            else if (v31 == 3)
            {
              v36 = 0xE900000000000054;
              v37 = 0x4274726F70706172;
            }

            else
            {
              v36 = 0xEB000000004C4457;
              v37 = 0x4174726F70706172;
            }

            v46 = sub_10000C4E4(v37, v36, &v49);

            *(v34 + 4) = v46;
            _os_log_impl(&_mh_execute_header, v32, v33, "Using transport type %s", v34, 0xCu);
            sub_10000C60C(v35);

            v30 = v48;
          }

          else
          {
          }

          v47 = *(v30 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_transportManager);
          sub_1005CCC7C(v18, v20, v53, 2u, v31);
          sub_100026AC0(v18, v20);

          sub_10000C60C(v53);
          v44 = v50;
          goto LABEL_41;
        }

        sub_10000C60C(v53);

        sub_100026AC0(v18, v20);
        v45 = &v51;
      }

      else
      {
        sub_100005508(&v51, &qword_100982080, &unk_1007FDD30);
        v42 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_delegate;
        swift_beginAccess();
        sub_10000FF90(v2 + v42, v53, &qword_10097A9C8, &unk_1007FDD40);
        if (v53[3])
        {
          sub_1002A9938(v53, &v51);
          sub_100005508(v53, &qword_10097A9C8, &unk_1007FDD40);
          v43 = *sub_10002CDC0(&v51, v52);
          sub_1006D3874(v18, v20, 2u, *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_type));

          sub_100026AC0(v18, v20);
          v44 = &v51;
LABEL_41:
          sub_10000C60C(v44);
          return;
        }

        sub_100026AC0(v18, v20);
        v45 = v53;
      }

      sub_100005508(v45, &qword_10097A9C8, &unk_1007FDD40);
      return;
    }
  }

  else
  {
    [0 setSuccess:HIDWORD(a1) & 1];
  }

  if (qword_100973778 != -1)
  {
    goto LABEL_43;
  }

LABEL_21:
  v38 = type metadata accessor for Logger();
  sub_10000C4AC(v38, qword_10097A968);
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&_mh_execute_header, v39, v40, "Error converting confirmation to data", v41, 2u);
  }
}

uint64_t sub_10038F574()
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
    if (qword_100973778 == -1)
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
  sub_10000C4AC(v8, qword_10097A968);
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

  v17 = sub_100010F88(12, 0xD000000000000026, 0x800000010078DEE0);
  sub_10038C344(v17, v18);

  return sub_1004FDD9C();
}

uint64_t sub_10038F83C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_type;
  v7 = *(a1 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_type);
  v8 = SFDeviceClassCodeGet();
  v9 = sub_100027628(v7);
  v10 = sub_10000EF9C(8u, v9);

  if (v10)
  {
    if (!SFDeviceIsRealityDevice())
    {
      goto LABEL_6;
    }
  }

  else
  {
    v11 = sub_100027628(v7);
    v12 = sub_10000EF9C(v8, v11);

    if (!v12)
    {
      goto LABEL_6;
    }
  }

  if (*(a1 + v6) != 8)
  {
    goto LABEL_36;
  }

LABEL_6:
  v13 = [objc_allocWithZone(SDAuthenticationPairingResponse) init];
  v14 = v13;
  if (v13)
  {
    [v13 setVersion:1];
    v15 = v14;
    UUID.uuidString.getter();
    v16 = String._bridgeToObjectiveC()();

    [v15 setSessionID:v16];

    [v15 setErrorCode:a2];
    v17 = [v15 data];
    if (v17)
    {
      v18 = v17;
      v19 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;

      v22 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_peerDevice;
      swift_beginAccess();
      sub_10000FF90(a1 + v22, &v55, &qword_100982080, &unk_1007FDD30);
      if (v56)
      {
        sub_1000121F8(&v55, v57);
        v23 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_delegate;
        swift_beginAccess();
        sub_10000FF90(a1 + v23, &v55, &qword_10097A9C8, &unk_1007FDD40);
        if (v56)
        {
          sub_1002A9938(&v55, v54);
          sub_100005508(&v55, &qword_10097A9C8, &unk_1007FDD40);
          v24 = *sub_10002CDC0(v54, v54[3]);
          v25 = sub_1004FE08C(*(a1 + v6));
          if (qword_100973C48 != -1)
          {
            swift_once();
          }

          v26 = type metadata accessor for Logger();
          sub_10000C4AC(v26, qword_1009895D8);
          v27 = Logger.logObject.getter();
          v28 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v27, v28))
          {
            v52 = v28;
            v29 = swift_slowAlloc();
            v30 = swift_slowAlloc();
            v53 = v30;
            buf = v29;
            v50 = v24;
            *v29 = 136315138;
            v51 = v25;
            v48 = v30;
            if (v25 <= 2u)
            {
              v32 = 0xEB0000000074656ELL;
              if (v25)
              {
                v31 = v52;
                if (v25 == 1)
                {
                  v32 = 0xE800000000000000;
                  v33 = 0x6C61636F4C736469;
                }

                else
                {
                  v33 = 0x7265746E49736469;
                }
              }

              else
              {
                v32 = 0xEB00000000746E65;
                v33 = 0x674179627261656ELL;
                v31 = v52;
              }
            }

            else if (v25 > 4u)
            {
              v31 = v52;
              if (v25 == 5)
              {
                v32 = 0x80000001007888E0;
                v33 = 0xD000000000000010;
              }

              else
              {
                v32 = 0xED000068746F6F74;
                v33 = 0x65756C4265726F63;
              }
            }

            else
            {
              v31 = v52;
              if (v25 == 3)
              {
                v32 = 0xE900000000000054;
                v33 = 0x4274726F70706172;
              }

              else
              {
                v32 = 0xEB000000004C4457;
                v33 = 0x4174726F70706172;
              }
            }

            v41 = sub_10000C4E4(v33, v32, &v53);

            *(buf + 4) = v41;
            _os_log_impl(&_mh_execute_header, v27, v31, "Using transport type %s", buf, 0xCu);
            sub_10000C60C(v48);

            v25 = v51;
            v24 = v50;
          }

          else
          {
          }

          v42 = *(v24 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_transportManager);
          sub_1005CCC7C(v19, v21, v57, 4u, v25);
          sub_100026AC0(v19, v21);

          sub_10000C60C(v57);
          sub_10000C60C(v54);
        }

        else
        {
          sub_10000C60C(v57);

          sub_100026AC0(v19, v21);
          sub_100005508(&v55, &qword_10097A9C8, &unk_1007FDD40);
        }

        goto LABEL_36;
      }

      sub_100026AC0(v19, v21);
      sub_100005508(&v55, &qword_100982080, &unk_1007FDD30);
    }
  }

  if (qword_100973778 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  sub_10000C4AC(v34, qword_10097A968);
  v35 = v14;
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *v38 = 138412290;
    *(v38 + 4) = v35;
    *v39 = v14;
    v40 = v35;
    _os_log_impl(&_mh_execute_header, v36, v37, "Could not convert response to data: %@", v38, 0xCu);
    sub_100005508(v39, &qword_100975400, &qword_1007F65D0);
  }

  else
  {
  }

LABEL_36:
  v43 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_delegate;
  swift_beginAccess();
  sub_10000FF90(a1 + v43, v57, &qword_10097A9C8, &unk_1007FDD40);
  if (!v57[3])
  {
    return sub_100005508(v57, &qword_10097A9C8, &unk_1007FDD40);
  }

  sub_1002A9938(v57, &v55);
  sub_100005508(v57, &qword_10097A9C8, &unk_1007FDD40);
  v44 = sub_10002CDC0(&v55, v56);
  v45 = sub_1000116BC(a2, a3);
  sub_10045D928(a1, a2, v45, v46, *v44);

  return sub_10000C60C(&v55);
}

uint64_t sub_10038FF6C()
{
  v1 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAuthenticationPairingLockSession_passcode + 8);

  v2 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAuthenticationPairingLockSession_aksPairingSession);
}

uint64_t type metadata accessor for SDAuthenticationPairingLockSession()
{
  result = qword_10097A9B8;
  if (!qword_10097A9B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100390108()
{
  v1 = v0[14];

  v2 = v0[15];

  v3 = v0[16];

  sub_100016C08(v0 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication19VolumeUnlockManager_lastCarPlaySessionEndDate);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t _s19VolumeUnlockManagerCMa()
{
  result = qword_10097AA00;
  if (!qword_10097AA00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1003901B4()
{
  sub_1002A6BEC();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_10039026C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

void sub_100390318(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for SDAirDropSendConnection();
    sub_10039132C();
    Set.Iterator.init(_cocoa:)();
    v5 = v21;
    v6 = v22;
    v7 = v23;
    v8 = v24;
    v9 = v25;
  }

  else
  {
    v10 = -1 << *(a3 + 32);
    v6 = a3 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a3 + 56);

    v8 = 0;
  }

  v20 = v5;
  if (v5 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v13 = v8;
  v14 = v9;
  v15 = v8;
  if (v9)
  {
LABEL_12:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v5 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (v17)
    {
      do
      {
        v26 = v17;
        v18 = a1(&v26);

        if (v4)
        {
          break;
        }

        v5 = v20;
        if (v18)
        {
          break;
        }

        v8 = v15;
        v9 = v16;
        if ((v20 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (!__CocoaSet.Iterator.next()())
        {
          break;
        }

        type metadata accessor for SDAirDropSendConnection();
        swift_dynamicCast();
        v17 = v26;
        v15 = v8;
        v16 = v9;
      }

      while (v26);
    }

LABEL_20:
    sub_100027D64();
  }

  else
  {
    while (1)
    {
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v15 >= ((v7 + 64) >> 6))
      {
        goto LABEL_20;
      }

      v14 = *(v6 + 8 * v15);
      ++v13;
      if (v14)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_100390544(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = _CocoaArrayWrapper.endIndex.getter();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t sub_10039066C()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_10097AAF8);
  v1 = sub_10000C4AC(v0, qword_10097AAF8);
  if (qword_1009736D0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A08B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100390734(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_10002CDC0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_10028088C(&unk_10097A930, &unk_1007F9050);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    sub_100389A64();
    **(*(v4 + 64) + 40) = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    return _swift_continuation_throwingResume(v4);
  }
}

uint64_t sub_100390814(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_10039086C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[21] = a3;
  v4[22] = a4;
  v4[19] = a1;
  v4[20] = a2;
  return _swift_task_switch(sub_100390890, 0, 0);
}

uint64_t sub_100390890()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v0[23] = isa;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1003909DC;
  v5 = swift_continuation_init();
  v0[17] = sub_10028088C(&qword_10097AB10, &qword_100805450);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100390734;
  v0[13] = &unk_1008DDCA0;
  v0[14] = v5;
  [v3 contactsWithData:isa completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1003909DC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 192) = v2;
  if (v2)
  {
    v3 = sub_100391248;
  }

  else
  {
    v3 = sub_100390AEC;
  }

  return _swift_task_switch(v3, 0, 0);
}

void sub_100390AEC()
{
  v3 = v1 + 144;
  v2 = *(v1 + 144);
  if (!(v2 >> 62))
  {
    if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_27:
    v20 = *(v1 + 184);

    if (qword_100973780 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_10000C4AC(v21, qword_10097AAF8);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Failed to extract contact from vCardData", v24, 2u);
    }

    goto LABEL_32;
  }

LABEL_26:
  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_27;
  }

LABEL_3:
  v64 = v3;
  if ((v2 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    v4 = *(v2 + 32);
  }

  v5 = v4;
  v65 = v1;

  v6 = [v5 emailAddresses];
  v0 = sub_10028088C(&qword_10097A210, &qword_1007FDB90);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v1 = v7 & 0xFFFFFFFFFFFFFF8;
  if (!(v7 >> 62))
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v66 = v5;
    if (v8)
    {
      goto LABEL_8;
    }

LABEL_35:
    v68 = _swiftEmptyArrayStorage;
    goto LABEL_36;
  }

  v8 = _CocoaArrayWrapper.endIndex.getter();
  v66 = v5;
  if (!v8)
  {
    goto LABEL_35;
  }

LABEL_8:
  v2 = 0;
  v3 = v7 & 0xC000000000000001;
  v68 = _swiftEmptyArrayStorage;
  do
  {
    v9 = v2;
    while (1)
    {
      if (v3)
      {
        v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v10 = *(v7 + 8 * v9 + 32);
      }

      v11 = v10;
      v2 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v12 = [v10 value];
      v13 = CUNormalizeEmailAddress();

      if (v13)
      {
        break;
      }

      ++v9;
      if (v2 == v8)
      {
        goto LABEL_36;
      }
    }

    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v68 = sub_10028E1C8(0, *(v68 + 2) + 1, 1, v68);
    }

    v18 = *(v68 + 2);
    v17 = *(v68 + 3);
    if (v18 >= v17 >> 1)
    {
      v68 = sub_10028E1C8((v17 > 1), v18 + 1, 1, v68);
    }

    *(v68 + 2) = v18 + 1;
    v19 = &v68[16 * v18];
    *(v19 + 4) = v14;
    *(v19 + 5) = v16;
  }

  while (v2 != v8);
LABEL_36:

  v27 = [v66 phoneNumbers];
  v0 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v2 = v0 & 0xFFFFFFFFFFFFFF8;
  if (!(v0 >> 62))
  {
    v28 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v28)
    {
      goto LABEL_38;
    }

LABEL_60:
    v67 = _swiftEmptyArrayStorage;
    goto LABEL_61;
  }

LABEL_59:
  v28 = _CocoaArrayWrapper.endIndex.getter();
  if (!v28)
  {
    goto LABEL_60;
  }

LABEL_38:
  v29 = 0;
  v67 = _swiftEmptyArrayStorage;
  do
  {
    v30 = v29;
    while (1)
    {
      if ((v0 & 0xC000000000000001) != 0)
      {
        v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v30 >= *(v2 + 16))
        {
          goto LABEL_57;
        }

        v31 = *(v0 + 8 * v30 + 32);
      }

      v32 = v31;
      v29 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        __break(1u);
LABEL_57:
        __break(1u);
        goto LABEL_58;
      }

      v33 = [v31 value];
      v34 = [v33 stringValue];

      if (!v34)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v34 = String._bridgeToObjectiveC()();
      }

      v35 = CUNormalizePhoneNumber();

      if (v35)
      {
        break;
      }

      ++v30;
      if (v29 == v28)
      {
        goto LABEL_61;
      }
    }

    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v67 = sub_10028E1C8(0, *(v67 + 2) + 1, 1, v67);
    }

    v40 = *(v67 + 2);
    v39 = *(v67 + 3);
    if (v40 >= v39 >> 1)
    {
      v67 = sub_10028E1C8((v39 > 1), v40 + 1, 1, v67);
    }

    *(v67 + 2) = v40 + 1;
    v41 = &v67[16 * v40];
    *(v41 + 4) = v36;
    *(v41 + 5) = v38;
  }

  while (v29 != v28);
LABEL_61:
  v1 = v65;
  v42 = v65[22];

  if (v42)
  {
    v43 = v65[21];
    v44 = v65[22];

    v45 = String._bridgeToObjectiveC()();
    v46 = CUNormalizeEmailAddress();

    if (v46)
    {
      v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v49 = v48;

      v65[10] = v47;
      v65[11] = v49;
      v50 = swift_task_alloc();
      *(v50 + 16) = v64 - 64;
      v51 = sub_10039026C(sub_1003912B8, v50, v68);

      if (v51)
      {
LABEL_66:

        v25 = v65[21];
        v26 = v65[22];
        goto LABEL_74;
      }

      v52 = v65[21];
      v53 = String._bridgeToObjectiveC()();
      v54 = CUNormalizePhoneNumber();

      if (v54)
      {
        v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v57 = v56;

        v65[10] = v55;
        v65[11] = v57;
        v58 = swift_task_alloc();
        *(v58 + 16) = v64 - 64;
        v59 = sub_10039026C(sub_1003913A0, v58, v67);

        if (v59)
        {
          goto LABEL_66;
        }

        goto LABEL_68;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

LABEL_68:
  if (*(v67 + 2) != 1 && *(v68 + 2))
  {
    v60 = *(v68 + 4);
    v61 = *(v68 + 5);

    v26 = v61;
LABEL_73:
    v25 = v60;
    goto LABEL_74;
  }

  if (*(v67 + 2))
  {
    v60 = *(v67 + 4);
    v62 = *(v67 + 5);

    v26 = v62;
    goto LABEL_73;
  }

LABEL_32:
  v25 = 0;
  v26 = 0;
LABEL_74:
  v63 = *(v1 + 8);

  v63(v25, v26);
}

uint64_t sub_100391248()
{
  v1 = v0[23];
  v2 = v0[24];
  swift_willThrow();

  v3 = v0[1];
  v4 = v0[24];

  return v3();
}

uint64_t sub_1003912D4(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

unint64_t sub_10039132C()
{
  result = qword_10097AB18;
  if (!qword_10097AB18)
  {
    type metadata accessor for SDAirDropSendConnection();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097AB18);
  }

  return result;
}

uint64_t sub_1003913BC(uint64_t a1)
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

  return _swift_task_switch(sub_100391510, v9, 0);
}

void sub_100391510()
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
      v19 = sub_1003D9F30(&off_1008D6F68);
      (*(v5 + 8))(v16, v17);
      v20 = *(v7 + 16);
      *(v7 + 16) = v19;

      if (!*(v7 + 16))
      {

        sub_10032B298(&unk_1008D6F88);
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
        sub_10032B298(&unk_1008D6F88);

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

uint64_t sub_100391720@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

uint64_t sub_100391B8C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SDAirDropContentHandlerPodcastsLinks();
  result = swift_allocObject();
  *(result + 16) = 0;
  *a1 = result;
  return result;
}

uint64_t sub_100391BC4(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100289000;

  return sub_1003913BC(a1);
}

void sub_100391C84(uint64_t a1, char a2)
{
  v3 = *(SFAirDropReceive.AskRequest.urlItems.getter() + 16);

  sub_10028088C(&qword_1009775E0, &unk_1007FAD10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007F5670;
  *(inited + 32) = 0xD000000000000019;
  v5 = inited + 32;
  *(inited + 40) = 0x800000010078E010;
  *(inited + 48) = v3;
  sub_1003D8D18(inited, a2);
  swift_setDeallocating();
  sub_1003470A0(v5);
  v6 = String._bridgeToObjectiveC()();
  v7 = SFLocalizedStringForKey();

  if (v7)
  {

    static String._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10028088C(&unk_100978CC0, &qword_1007FAD20);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1007F5670;
    *(v8 + 56) = &type metadata for Int;
    *(v8 + 64) = &protocol witness table for Int;
    *(v8 + 32) = v3;
    static String.localizedStringWithFormat(_:_:)();
  }

  else
  {
    __break(1u);
  }
}

void *sub_100391DFC(uint64_t a1)
{
  v37 = type metadata accessor for UUID();
  v3 = *(v37 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v37);
  v36 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v6)
  {
    v29 = v1;
    v41 = _swiftEmptyArrayStorage;
    sub_10028FBDC(0, v6, 0);
    v40 = v41;
    v8 = a1 + 64;
    v9 = -1 << *(a1 + 32);
    result = _HashTable.startBucket.getter();
    v10 = result;
    v11 = 0;
    v34 = v3 + 8;
    v35 = v3 + 16;
    v30 = a1 + 72;
    v31 = v6;
    v32 = v3;
    v33 = a1 + 64;
    while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a1 + 32))
    {
      v13 = v10 >> 6;
      if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_22;
      }

      v38 = *(a1 + 36);
      v14 = v36;
      v15 = v37;
      (*(v3 + 16))(v36, *(a1 + 48) + *(v3 + 72) * v10, v37);
      v39 = UUID.description.getter();
      v17 = v16;
      result = (*(v3 + 8))(v14, v15);
      v18 = v40;
      v41 = v40;
      v20 = v40[2];
      v19 = v40[3];
      if (v20 >= v19 >> 1)
      {
        result = sub_10028FBDC((v19 > 1), v20 + 1, 1);
        v18 = v41;
      }

      v18[2] = v20 + 1;
      v21 = &v18[2 * v20];
      v21[4] = v39;
      v21[5] = v17;
      v12 = 1 << *(a1 + 32);
      if (v10 >= v12)
      {
        goto LABEL_23;
      }

      v8 = v33;
      v22 = *(v33 + 8 * v13);
      if ((v22 & (1 << v10)) == 0)
      {
        goto LABEL_24;
      }

      v40 = v18;
      if (v38 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v23 = v22 & (-2 << (v10 & 0x3F));
      if (v23)
      {
        v12 = __clz(__rbit64(v23)) | v10 & 0x7FFFFFFFFFFFFFC0;
        v3 = v32;
      }

      else
      {
        v24 = v13 << 6;
        v25 = v13 + 1;
        v26 = (v30 + 8 * v13);
        v3 = v32;
        while (v25 < (v12 + 63) >> 6)
        {
          v28 = *v26++;
          v27 = v28;
          v24 += 64;
          ++v25;
          if (v28)
          {
            result = sub_10000CDD4(v10, v38, 0);
            v12 = __clz(__rbit64(v27)) + v24;
            goto LABEL_4;
          }
        }

        result = sub_10000CDD4(v10, v38, 0);
      }

LABEL_4:
      ++v11;
      v10 = v12;
      if (v11 == v31)
      {
        return v40;
      }
    }

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

uint64_t sub_100392104(uint64_t a1, uint64_t a2)
{
  v315 = a2;
  v3 = sub_10028088C(&qword_100974CE0, &qword_1007F8240);
  v300 = *(v3 - 8);
  v4 = v300[8];
  v5 = __chkstk_darwin(v3);
  v305 = &v299 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v304 = &v299 - v7;
  v321 = sub_10028088C(&qword_10097AD38, &unk_1007FDF90);
  v8 = *(*(v321 - 8) + 64);
  __chkstk_darwin(v321);
  v10 = &v299 - v9;
  v11 = sub_10028088C(&qword_100974CE8, &qword_1007F8248);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v299 = &v299 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v353 = &v299 - v16;
  __chkstk_darwin(v15);
  v334 = &v299 - v17;
  v346 = sub_10028088C(&qword_10097AD40, &unk_1007FDFA0);
  v18 = *(*(v346 - 8) + 64);
  v19 = __chkstk_darwin(v346);
  v21 = &v299 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v19);
  v324 = (&v299 - v23);
  __chkstk_darwin(v22);
  v325 = &v299 - v24;
  v25 = type metadata accessor for SFNWInterfaceType();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v28 = __chkstk_darwin(v25);
  v347 = &v299 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v336 = &v299 - v31;
  v32 = __chkstk_darwin(v30);
  v306 = &v299 - v33;
  __chkstk_darwin(v32);
  v310 = &v299 - v34;
  v35 = sub_10028088C(&qword_100977DC0, &unk_1007FB320);
  v36 = *(*(v35 - 8) + 64);
  v37 = __chkstk_darwin(v35 - 8);
  v318 = &v299 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __chkstk_darwin(v37);
  v313 = &v299 - v40;
  v41 = __chkstk_darwin(v39);
  v327 = &v299 - v42;
  v43 = __chkstk_darwin(v41);
  v345 = &v299 - v44;
  v45 = __chkstk_darwin(v43);
  v301 = &v299 - v46;
  v47 = __chkstk_darwin(v45);
  v307 = &v299 - v48;
  v49 = __chkstk_darwin(v47);
  v316 = &v299 - v50;
  v51 = __chkstk_darwin(v49);
  v303 = &v299 - v52;
  v53 = __chkstk_darwin(v51);
  v312 = &v299 - v54;
  __chkstk_darwin(v53);
  v317 = &v299 - v55;
  v350 = type metadata accessor for UUID();
  v56 = *(v350 - 8);
  v57 = *(v56 + 64);
  v58 = __chkstk_darwin(v350);
  v344 = (&v299 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0));
  v60 = __chkstk_darwin(v58);
  v330 = &v299 - v61;
  v62 = __chkstk_darwin(v60);
  v342 = (&v299 - v63);
  __chkstk_darwin(v62);
  v337 = (&v299 - v64);
  v351 = sub_10028088C(&qword_10097AD48, &unk_1007FDFB0);
  v65 = *(*(v351 - 8) + 64);
  v66 = __chkstk_darwin(v351);
  i = &v299 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = __chkstk_darwin(v66);
  v328 = &v299 - v69;
  __chkstk_darwin(v68);
  v331 = (&v299 - v70);
  v329 = sub_100281500(_swiftEmptyArrayStorage);
  v71 = a1 + 64;
  v72 = 1 << *(a1 + 32);
  v73 = -1;
  if (v72 < 64)
  {
    v73 = ~(-1 << v72);
  }

  v74 = v73 & *(a1 + 64);
  v75 = (v72 + 63) >> 6;
  v332 = (v26 + 48);
  v354 = v26 + 32;
  v349 = (v26 + 56);
  v335 = v56 + 16;
  v340 = v56;
  v343 = (v56 + 8);
  v302 = v26 + 40;
  v314 = a1;

  v76 = 0;
  v341 = v3;
  v77 = v25;
  v348 = v25;
  v352 = v26;
  v320 = v10;
  v78 = v353;
  v308 = v21;
  v311 = v71;
  v309 = v75;
LABEL_8:
  if (v74)
  {
    goto LABEL_13;
  }

  while (1)
  {
    v83 = v76 + 1;
    if (__OFADD__(v76, 1))
    {
LABEL_130:
      __break(1u);
LABEL_131:
      __break(1u);
LABEL_132:
      __break(1u);
LABEL_133:
      __break(1u);
      goto LABEL_134;
    }

    if (v83 >= v75)
    {
      break;
    }

    v74 = *(v71 + 8 * v83);
    ++v76;
    if (v74)
    {
      v76 = v83;
LABEL_13:
      v84 = __clz(__rbit64(v74)) | (v76 << 6);
      v85 = v314;
      v86 = *(v314 + 48);
      v338 = type metadata accessor for SFAirDrop.TransferIdentifier();
      v87 = *(v338 - 1);
      v88 = v331;
      (*(v87 + 16))(v331, v86 + *(v87 + 72) * v84, v338);
      v89 = *(v85 + 56);
      v90 = type metadata accessor for SFAirDropSend.Transfer();
      v91 = *(v90 - 8);
      (*(v91 + 16))(v88 + *(v351 + 48), v89 + *(v91 + 72) * v84, v90);
      v92 = v328;
      sub_10000FF90(v88, v328, &qword_10097AD48, &unk_1007FDFB0);
      SFAirDrop.TransferIdentifier.id.getter();
      v93 = *(v87 + 8);
      v326 = v87 + 8;
      v93(v92, v338);
      v94 = v88;
      v95 = i;
      sub_10000FF90(v94, i, &qword_10097AD48, &unk_1007FDFB0);
      v96 = *(v351 + 48);
      v97 = v312;
      SFAirDropSend.Transfer.activeInterfaceType.getter();
      v98 = *(v91 + 8);
      v323 = v90;
      v322 = v91 + 8;
      v319 = v98;
      (v98)(v95 + v96, v90);
      v99 = *v332;
      v100 = v348;
      if ((*v332)(v97, 1, v348) == 1)
      {
        v101 = *v349;
        (*v349)(v317, 1, 1, v100);
        if (v99(v97, 1, v100) != 1)
        {
          sub_100005508(v97, &qword_100977DC0, &unk_1007FB320);
        }

        v100 = v348;
        v102 = v317;
      }

      else
      {
        v102 = v317;
        (*v354)(v317, v97, v100);
        v101 = *v349;
        (*v349)(v102, 0, 1, v100);
      }

      v71 = v311;
      v93(i, v338);
      if (v99(v102, 1, v100) == 1)
      {
        sub_100005508(v102, &qword_100977DC0, &unk_1007FB320);
        v103 = v337;
        v104 = v329;
        v105 = sub_10000EBD4(v337);
        if (v106)
        {
          v107 = v105;
          v338 = v101;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v356 = v104;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1002CFC48();
            v104 = v356;
          }

          v109 = *(v340 + 8);
          v110 = v350;
          v109(*(v104 + 48) + *(v340 + 72) * v107, v350);
          v79 = v303;
          v111 = v348;
          (*(v352 + 32))(v303, *(v104 + 56) + *(v352 + 72) * v107, v348);
          v329 = v104;
          sub_1002D4E48(v107, v104);
          v109(v337, v110);
          sub_100005508(v331, &qword_10097AD48, &unk_1007FDFB0);
          v78 = v353;
          (v338)(v79, 0, 1, v111);
        }

        else
        {
          (*v343)(v103, v350);
          sub_100005508(v331, &qword_10097AD48, &unk_1007FDFB0);
          v78 = v353;
          v79 = v303;
          v101(v303, 1, 1, v348);
        }

        v80 = v79;
        v81 = &qword_100977DC0;
        v82 = &unk_1007FB320;
LABEL_6:
        sub_100005508(v80, v81, v82);
        goto LABEL_7;
      }

      v112 = *v354;
      (*v354)(v310, v102, v100);
      v113 = v329;
      v77 = swift_isUniquelyReferenced_nonNull_native();
      v356 = v113;
      v114 = v337;
      v115 = sub_10000EBD4(v337);
      v117 = *(v113 + 16);
      v118 = (v116 & 1) == 0;
      v119 = __OFADD__(v117, v118);
      v120 = v117 + v118;
      if (v119)
      {
        goto LABEL_133;
      }

      v121 = v116;
      if (*(v113 + 24) >= v120)
      {
        if ((v77 & 1) == 0)
        {
          v130 = v115;
          sub_1002CFC48();
          v115 = v130;
        }
      }

      else
      {
        sub_100574574(v120, v77);
        v115 = sub_10000EBD4(v114);
        if ((v121 & 1) != (v122 & 1))
        {
LABEL_138:
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);

          __break(1u);
          return result;
        }
      }

      v78 = v353;
      v123 = v356;
      v329 = v356;
      if (v121)
      {
        (*(v352 + 40))(*(v356 + 56) + *(v352 + 72) * v115, v310, v348);
        (*v343)(v337, v350);
        v80 = v331;
        v81 = &qword_10097AD48;
        v82 = &unk_1007FDFB0;
        goto LABEL_6;
      }

      *(v356 + 8 * (v115 >> 6) + 64) |= 1 << v115;
      v124 = v340;
      v125 = v115;
      v77 = v337;
      v126 = v350;
      (*(v340 + 16))(*(v123 + 48) + *(v340 + 72) * v115, v337, v350);
      v112((*(v329 + 56) + *(v352 + 72) * v125), v310, v348);
      v127 = v329;
      (*(v124 + 8))(v77, v126);
      sub_100005508(v331, &qword_10097AD48, &unk_1007FDFB0);
      v128 = *(v127 + 16);
      v119 = __OFADD__(v128, 1);
      v129 = v128 + 1;
      if (v119)
      {
        goto LABEL_135;
      }

      *(v127 + 16) = v129;
LABEL_7:
      v75 = v309;
      v74 &= v74 - 1;
      (v319)(&v328[*(v351 + 48)], v323);
      v77 = v348;
      goto LABEL_8;
    }
  }

  v326 = sub_100281500(_swiftEmptyArrayStorage);
  v131 = (v315 + 64);
  v132 = 1 << *(v315 + 32);
  v133 = -1;
  if (v132 < 64)
  {
    v133 = ~(-1 << v132);
  }

  v134 = v133 & *(v315 + 64);
  v135 = (v132 + 63) >> 6;

  v136 = 0;
  v328 = v131;
  v323 = v135;
LABEL_40:
  if (v134)
  {
    goto LABEL_45;
  }

  while (1)
  {
    v141 = v136 + 1;
    if (__OFADD__(v136, 1))
    {
      goto LABEL_131;
    }

    if (v141 >= v135)
    {
      break;
    }

    v134 = *&v131[8 * v141];
    ++v136;
    if (v134)
    {
      v136 = v141;
LABEL_45:
      v142 = __clz(__rbit64(v134)) | (v136 << 6);
      v143 = v315;
      v144 = *(v315 + 48);
      v351 = type metadata accessor for SFAirDrop.TransferIdentifier();
      v145 = *(v351 - 8);
      v146 = v325;
      (*(v145 + 16))(v325, v144 + *(v145 + 72) * v142, v351);
      v147 = *(v143 + 56);
      v148 = type metadata accessor for SFAirDropReceive.Transfer();
      v149 = *(v148 - 1);
      (*(v149 + 16))(v146 + *(v346 + 48), v147 + *(v149 + 72) * v142, v148);
      v150 = v324;
      sub_10000FF90(v146, v324, &qword_10097AD40, &unk_1007FDFA0);
      SFAirDrop.TransferIdentifier.id.getter();
      v151 = *(v145 + 8);
      v338 = (v145 + 8);
      v151(v150, v351);
      v152 = v308;
      sub_10000FF90(v146, v308, &qword_10097AD40, &unk_1007FDFA0);
      v153 = *(v346 + 48);
      v154 = v307;
      SFAirDropReceive.Transfer.activeInterfaceType.getter();
      v155 = *(v149 + 8);
      v337 = v148;
      i = v149 + 8;
      v331 = v155;
      (v155)(v152 + v153, v148);
      v156 = *v332;
      v157 = v348;
      if ((*v332)(v154, 1, v348) == 1)
      {
        v158 = *v349;
        (*v349)(v316, 1, 1, v157);
        if (v156(v154, 1, v157) != 1)
        {
          sub_100005508(v154, &qword_100977DC0, &unk_1007FB320);
        }

        v157 = v348;
        v159 = v316;
      }

      else
      {
        v159 = v316;
        (*v354)(v316, v154, v157);
        v158 = *v349;
        (*v349)(v159, 0, 1, v157);
      }

      v151(v152, v351);
      if (v156(v159, 1, v157) != 1)
      {
        v171 = *v354;
        (*v354)(v306, v159, v157);
        v172 = v326;
        v77 = swift_isUniquelyReferenced_nonNull_native();
        v356 = v172;
        v173 = sub_10000EBD4(v342);
        v175 = *(v172 + 16);
        v176 = (v174 & 1) == 0;
        v119 = __OFADD__(v175, v176);
        v177 = v175 + v176;
        if (!v119)
        {
          v178 = v174;
          if (*(v172 + 24) >= v177)
          {
            if ((v77 & 1) == 0)
            {
              v187 = v173;
              sub_1002CFC48();
              v173 = v187;
            }
          }

          else
          {
            sub_100574574(v177, v77);
            v173 = sub_10000EBD4(v342);
            if ((v178 & 1) != (v179 & 1))
            {
              goto LABEL_138;
            }
          }

          v78 = v353;
          v180 = v356;
          v326 = v356;
          if (v178)
          {
            (*(v352 + 40))(*(v356 + 56) + *(v352 + 72) * v173, v306, v348);
            (*v343)(v342, v350);
            v138 = v325;
            v139 = &qword_10097AD40;
            v140 = &unk_1007FDFA0;
            goto LABEL_38;
          }

          v77 = v353;
          *(v356 + 8 * (v173 >> 6) + 64) |= 1 << v173;
          v181 = v340;
          v182 = v173;
          v183 = v342;
          v184 = v350;
          (*(v340 + 16))(*(v180 + 48) + *(v340 + 72) * v173, v342, v350);
          v171((*(v326 + 56) + *(v352 + 72) * v182), v306, v348);
          (*(v181 + 8))(v183, v184);
          sub_100005508(v325, &qword_10097AD40, &unk_1007FDFA0);
          v185 = *(v326 + 16);
          v119 = __OFADD__(v185, 1);
          v186 = v185 + 1;
          if (!v119)
          {
            *(v326 + 16) = v186;
            v78 = v77;
            goto LABEL_39;
          }

LABEL_136:
          __break(1u);
LABEL_137:
          swift_once();
          goto LABEL_115;
        }

LABEL_134:
        __break(1u);
LABEL_135:
        __break(1u);
        goto LABEL_136;
      }

      sub_100005508(v159, &qword_100977DC0, &unk_1007FB320);
      v160 = v342;
      v161 = v326;
      v162 = sub_10000EBD4(v342);
      if (v163)
      {
        v164 = v162;
        v351 = v158;
        v165 = swift_isUniquelyReferenced_nonNull_native();
        v356 = v161;
        v166 = v353;
        v167 = v161;
        if ((v165 & 1) == 0)
        {
          sub_1002CFC48();
          v167 = v356;
        }

        v168 = *(v340 + 8);
        v169 = v350;
        v168(*(v167 + 48) + *(v340 + 72) * v164, v350);
        v137 = v301;
        v170 = v348;
        (*(v352 + 32))(v301, *(v167 + 56) + *(v352 + 72) * v164, v348);
        v326 = v167;
        sub_1002D4E48(v164, v167);
        v168(v342, v169);
        sub_100005508(v325, &qword_10097AD40, &unk_1007FDFA0);
        v78 = v166;
        (v351)(v137, 0, 1, v170);
      }

      else
      {
        (*v343)(v160, v350);
        sub_100005508(v325, &qword_10097AD40, &unk_1007FDFA0);
        v78 = v353;
        v137 = v301;
        v158(v301, 1, 1, v348);
      }

      v138 = v137;
      v139 = &qword_100977DC0;
      v140 = &unk_1007FB320;
LABEL_38:
      sub_100005508(v138, v139, v140);
LABEL_39:
      v131 = v328;
      v135 = v323;
      v134 &= v134 - 1;
      (v331)(v324 + *(v346 + 48), v337);
      v77 = v348;
      goto LABEL_40;
    }
  }

  v188 = v329;

  v189 = v326;

  v190 = swift_isUniquelyReferenced_nonNull_native();
  v356 = v188;
  sub_10039C1A4(v189, sub_10039A428, 0, v190, &v356);
  v317 = 0;

  v191 = v356 + 64;
  v192 = 1 << *(v356 + 32);
  v193 = -1;
  if (v192 < 64)
  {
    v193 = ~(-1 << v192);
  }

  v194 = v193 & *(v356 + 64);
  v325 = (v192 + 63) >> 6;
  v346 = v352 + 16;
  v351 = v340 + 32;
  v337 = v300 + 7;
  v338 = v300 + 6;
  v342 = (v352 + 8);
  v319 = @"InterfaceChanged";
  v331 = v356;

  v195 = 0;
  v196 = v350;
  v197 = v77;
  for (i = v191; ; v191 = i)
  {
    if (!v194)
    {
      if (v325 <= v195 + 1)
      {
        v202 = v195 + 1;
      }

      else
      {
        v202 = v325;
      }

      v203 = v202 - 1;
      while (1)
      {
        v201 = v195 + 1;
        if (__OFADD__(v195, 1))
        {
          break;
        }

        if (v201 >= v325)
        {
          v194 = 0;
          v217 = 1;
          v195 = v203;
          v213 = v341;
          goto LABEL_83;
        }

        v194 = *(v191 + 8 * v201);
        ++v195;
        if (v194)
        {
          v200 = v197;
          v195 = v201;
          goto LABEL_82;
        }
      }

      __break(1u);
      goto LABEL_130;
    }

    v200 = v197;
    v201 = v195;
LABEL_82:
    v204 = __clz(__rbit64(v194));
    v194 &= v194 - 1;
    v205 = v204 | (v201 << 6);
    v206 = v331;
    v207 = v340;
    v208 = v330;
    (*(v340 + 16))(v330, v331[6] + *(v340 + 72) * v205, v196);
    v209 = *(v206 + 56);
    v210 = v352;
    v211 = v196;
    v212 = v336;
    (*(v352 + 16))(v336, v209 + *(v352 + 72) * v205, v200);
    v213 = v341;
    v214 = *(v341 + 48);
    v215 = *(v207 + 32);
    v78 = v353;
    v215(v353, v208, v211);
    v216 = *(v210 + 32);
    v197 = v200;
    v216(v78 + v214, v212, v200);
    v217 = 0;
LABEL_83:
    v218 = *v337;
    (*v337)(v78, v217, 1, v213);
    v219 = v334;
    sub_10002C4E4(v78, v334, &qword_100974CE8, &qword_1007F8248);
    v77 = *v338;
    if ((*v338)(v219, 1, v213) == 1)
    {
      break;
    }

    v220 = *(v213 + 48);
    v196 = v350;
    v221 = v344;
    (*v351)(v344, v219, v350);
    v222 = *v354;
    v223 = v347;
    (*v354)(v347, v219 + v220, v197);
    v224 = *(v339 + 64);
    if (!*(v224 + 16))
    {
      goto LABEL_69;
    }

    v225 = *(v339 + 64);

    v226 = sub_10000EBD4(v221);
    if ((v227 & 1) == 0)
    {

LABEL_69:
      (*v342)(v223, v197);
      (*v343)(v221, v196);
      v198 = v345;
      (*v349)(v345, 1, 1, v197);
      v199 = v198;
LABEL_70:
      sub_100005508(v199, &qword_100977DC0, &unk_1007FB320);
      goto LABEL_71;
    }

    v324 = v222;
    v228 = *(v224 + 56);
    v229 = v197;
    v322 = *(v352 + 72);
    v230 = *(v352 + 16);
    v231 = v352;
    v232 = v345;
    v230(v345, v228 + v322 * v226, v229);

    v233 = v229;
    v234 = *(v231 + 56);
    (v234)(v232, 0, 1, v229);
    v235 = v327;
    v323 = v230;
    v230(v327, v223, v233);
    v328 = v234;
    (v234)(v235, 0, 1, v233);
    v236 = v320;
    v237 = *(v321 + 48);
    v77 = &unk_1007FB320;
    sub_10000FF90(v232, v320, &qword_100977DC0, &unk_1007FB320);
    sub_10000FF90(v235, v236 + v237, &qword_100977DC0, &unk_1007FB320);
    v238 = *(v352 + 48);
    if (v238(v236, 1, v233) == 1)
    {
      sub_100005508(v235, &qword_100977DC0, &unk_1007FB320);
      if (v238(v236 + v237, 1, v233) == 1)
      {
        sub_100005508(v345, &qword_100977DC0, &unk_1007FB320);
        v197 = v348;
        (*v342)(v347, v348);
        v196 = v350;
        (*v343)(v344, v350);
        v199 = v236;
        goto LABEL_70;
      }

      goto LABEL_92;
    }

    v239 = v313;
    sub_10000FF90(v236, v313, &qword_100977DC0, &unk_1007FB320);
    if (v238(v236 + v237, 1, v233) == 1)
    {
      sub_100005508(v327, &qword_100977DC0, &unk_1007FB320);
      (*v342)(v239, v233);
LABEL_92:
      sub_100005508(v236, &qword_10097AD38, &unk_1007FDF90);
      goto LABEL_93;
    }

    v246 = v336;
    v324(v336, v236 + v237, v233);
    sub_10039C658(&qword_10097AD50, &type metadata accessor for SFNWInterfaceType);
    LODWORD(v324) = dispatch thunk of static Equatable.== infix(_:_:)();
    v77 = *v342;
    (*v342)(v246, v233);
    sub_100005508(v327, &qword_100977DC0, &unk_1007FB320);
    (v77)(v239, v233);
    sub_100005508(v236, &qword_100977DC0, &unk_1007FB320);
    v196 = v350;
    v247 = v347;
    if (v324)
    {
      sub_100005508(v345, &qword_100977DC0, &unk_1007FB320);
      v197 = v348;
      (v77)(v247, v348);
      (*v343)(v344, v196);
      goto LABEL_71;
    }

LABEL_93:
    v240 = v329;
    if (*(v329 + 16))
    {
      v241 = v344;
      v242 = sub_10000EBD4(v344);
      if (v243)
      {
        v323(v318, *(v240 + 56) + v242 * v322, v348);
        v244 = 0;
        v245 = &off_1008CE3B8;
      }

      else
      {
        v244 = 1;
        v245 = &off_1008CE3C0;
      }
    }

    else
    {
      v244 = 1;
      v245 = &off_1008CE3C0;
      v241 = v344;
    }

    v248 = v318;
    v249 = v348;
    (v328)(v318, v244, 1, v348);
    sub_100005508(v248, &qword_100977DC0, &unk_1007FB320);
    v77 = *v245;
    isa = UUID._bridgeToObjectiveC()().super.isa;
    v251 = v347;
    SFNWInterfaceType.description.getter();
    v252 = String._bridgeToObjectiveC()();

    sub_100086E1C(v77, v319, isa, v252, 0.0);

    v197 = v249;
    sub_100005508(v345, &qword_100977DC0, &unk_1007FB320);
    (*v342)(v251, v249);
    v196 = v350;
    (*v343)(v241, v350);
LABEL_71:
    v78 = v353;
  }

  v254 = v317;
  v255 = sub_10039A508(v253);
  v344 = v254;
  v345 = v255;

  v256 = *(v339 + 64);
  v257 = (v256 + 64);
  v258 = 1 << *(v256 + 32);
  v259 = -1;
  if (v258 < 64)
  {
    v259 = ~(-1 << v258);
  }

  v260 = v259 & *(v256 + 64);
  v261 = (v258 + 63) >> 6;
  LODWORD(v353) = enum case for SFNWInterfaceType.cellular(_:);
  v351 = v352 + 104;
  v354 = v256;
  swift_bridgeObjectRetain_n();
  v262 = 0;
  v349 = v257;
  v347 = v261;
  v263 = v348;
  if (!v260)
  {
LABEL_105:
    while (1)
    {
      v264 = v262 + 1;
      if (__OFADD__(v262, 1))
      {
        goto LABEL_132;
      }

      if (v264 >= v261)
      {

        v276 = v299;
        v277 = v299;
        v278 = 1;
        goto LABEL_112;
      }

      v260 = v257[v264];
      ++v262;
      if (v260)
      {
        goto LABEL_108;
      }
    }
  }

  while (1)
  {
    v264 = v262;
LABEL_108:
    v265 = __clz(__rbit64(v260)) | (v264 << 6);
    v266 = v354;
    v267 = v304;
    (*(v340 + 16))(v304, *(v354 + 48) + *(v340 + 72) * v265, v350);
    v268 = v352;
    v269 = *(v266 + 56) + *(v352 + 72) * v265;
    v270 = v341;
    (*(v352 + 16))(&v267[*(v341 + 48)], v269, v263);
    v271 = v267;
    v272 = v305;
    sub_10002C4E4(v271, v305, &qword_100974CE0, &qword_1007F8240);
    v273 = *(v270 + 48);
    v274 = *(v268 + 104);
    v275 = v336;
    v274(v336, v353, v263);
    LOBYTE(v273) = static SFNWInterfaceType.== infix(_:_:)();
    (*(v352 + 8))(v275, v263);
    if (v273)
    {
      break;
    }

    v260 &= v260 - 1;
    sub_100005508(v272, &qword_100974CE0, &qword_1007F8240);
    v262 = v264;
    v257 = v349;
    v261 = v347;
    if (!v260)
    {
      goto LABEL_105;
    }
  }

  v298 = v272;
  v276 = v299;
  sub_10002C4E4(v298, v299, &qword_100974CE0, &qword_1007F8240);
  v277 = v276;
  v278 = 0;
LABEL_112:
  v279 = v341;
  v218(v277, v278, 1, v341);

  v280 = (v77)(v276, 1, v279);
  sub_100005508(v276, &qword_100974CE8, &qword_1007F8248);
  v77 = v345;
  if (*(v345 + 16))
  {
    if (v280 != 1)
    {

      goto LABEL_127;
    }

    if (qword_100973628 != -1)
    {
      goto LABEL_137;
    }

LABEL_115:
    v281 = type metadata accessor for Logger();
    sub_10000C4AC(v281, qword_100978DC0);

    v282 = Logger.logObject.getter();
    v283 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v282, v283))
    {
      v284 = swift_slowAlloc();
      v285 = swift_slowAlloc();
      v356 = v285;
      *v284 = 136315138;
      v286 = sub_100391DFC(v77);

      v355 = v286;
      sub_10028088C(&unk_100976C20, &unk_1007F9D80);
      sub_100011630(&qword_10097F070, &unk_100976C20, &unk_1007F9D80);
      v287 = BidirectionalCollection<>.joined(separator:)();
      v289 = v288;

      v290 = sub_10000C4E4(v287, v289, &v356);

      *(v284 + 4) = v290;
      _os_log_impl(&_mh_execute_header, v282, v283, "Transfers using cellular: %s", v284, 0xCu);
      sub_10000C60C(v285);
    }

    else
    {
    }

    v295 = 1;
  }

  else
  {

    if (v280 == 1)
    {
      goto LABEL_127;
    }

    if (qword_100973628 != -1)
    {
      swift_once();
    }

    v291 = type metadata accessor for Logger();
    sub_10000C4AC(v291, qword_100978DC0);
    v292 = Logger.logObject.getter();
    v293 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v292, v293))
    {
      v294 = swift_slowAlloc();
      *v294 = 0;
      _os_log_impl(&_mh_execute_header, v292, v293, "Transfers stopped using cellular", v294, 2u);
    }

    v295 = 0;
  }

  sub_100637614(v295);
LABEL_127:
  v296 = *(v339 + 64);
  *(v339 + 64) = v331;
}

uint64_t sub_10039461C(uint64_t a1, uint64_t a2)
{
  v315 = a2;
  v3 = sub_10028088C(&qword_100974CE0, &qword_1007F8240);
  v300 = *(v3 - 8);
  v4 = v300[8];
  v5 = __chkstk_darwin(v3);
  v305 = &v299 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v304 = &v299 - v7;
  v321 = sub_10028088C(&qword_10097AD38, &unk_1007FDF90);
  v8 = *(*(v321 - 8) + 64);
  __chkstk_darwin(v321);
  v10 = &v299 - v9;
  v11 = sub_10028088C(&qword_100974CE8, &qword_1007F8248);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v299 = &v299 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v353 = &v299 - v16;
  __chkstk_darwin(v15);
  v334 = &v299 - v17;
  v346 = sub_10028088C(&qword_10097AD40, &unk_1007FDFA0);
  v18 = *(*(v346 - 8) + 64);
  v19 = __chkstk_darwin(v346);
  v21 = &v299 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v19);
  v324 = (&v299 - v23);
  __chkstk_darwin(v22);
  v325 = &v299 - v24;
  v25 = type metadata accessor for SFNWInterfaceType();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v28 = __chkstk_darwin(v25);
  v347 = &v299 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v336 = &v299 - v31;
  v32 = __chkstk_darwin(v30);
  v306 = &v299 - v33;
  __chkstk_darwin(v32);
  v310 = &v299 - v34;
  v35 = sub_10028088C(&qword_100977DC0, &unk_1007FB320);
  v36 = *(*(v35 - 8) + 64);
  v37 = __chkstk_darwin(v35 - 8);
  v318 = &v299 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __chkstk_darwin(v37);
  v313 = &v299 - v40;
  v41 = __chkstk_darwin(v39);
  v327 = &v299 - v42;
  v43 = __chkstk_darwin(v41);
  v345 = &v299 - v44;
  v45 = __chkstk_darwin(v43);
  v301 = &v299 - v46;
  v47 = __chkstk_darwin(v45);
  v307 = &v299 - v48;
  v49 = __chkstk_darwin(v47);
  v316 = &v299 - v50;
  v51 = __chkstk_darwin(v49);
  v303 = &v299 - v52;
  v53 = __chkstk_darwin(v51);
  v312 = &v299 - v54;
  __chkstk_darwin(v53);
  v317 = &v299 - v55;
  v350 = type metadata accessor for UUID();
  v56 = *(v350 - 8);
  v57 = *(v56 + 64);
  v58 = __chkstk_darwin(v350);
  v344 = (&v299 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0));
  v60 = __chkstk_darwin(v58);
  v330 = &v299 - v61;
  v62 = __chkstk_darwin(v60);
  v342 = (&v299 - v63);
  __chkstk_darwin(v62);
  v337 = (&v299 - v64);
  v351 = sub_10028088C(&qword_10097AD48, &unk_1007FDFB0);
  v65 = *(*(v351 - 8) + 64);
  v66 = __chkstk_darwin(v351);
  i = &v299 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = __chkstk_darwin(v66);
  v328 = &v299 - v69;
  __chkstk_darwin(v68);
  v331 = (&v299 - v70);
  v329 = sub_100281500(_swiftEmptyArrayStorage);
  v71 = a1 + 64;
  v72 = 1 << *(a1 + 32);
  v73 = -1;
  if (v72 < 64)
  {
    v73 = ~(-1 << v72);
  }

  v74 = v73 & *(a1 + 64);
  v75 = (v72 + 63) >> 6;
  v332 = (v26 + 48);
  v354 = v26 + 32;
  v349 = (v26 + 56);
  v335 = v56 + 16;
  v340 = v56;
  v343 = (v56 + 8);
  v302 = v26 + 40;
  v314 = a1;

  v76 = 0;
  v341 = v3;
  v77 = v25;
  v348 = v25;
  v352 = v26;
  v320 = v10;
  v78 = v353;
  v308 = v21;
  v311 = v71;
  v309 = v75;
LABEL_8:
  if (v74)
  {
    goto LABEL_13;
  }

  while (1)
  {
    v83 = v76 + 1;
    if (__OFADD__(v76, 1))
    {
LABEL_130:
      __break(1u);
LABEL_131:
      __break(1u);
LABEL_132:
      __break(1u);
LABEL_133:
      __break(1u);
      goto LABEL_134;
    }

    if (v83 >= v75)
    {
      break;
    }

    v74 = *(v71 + 8 * v83);
    ++v76;
    if (v74)
    {
      v76 = v83;
LABEL_13:
      v84 = __clz(__rbit64(v74)) | (v76 << 6);
      v85 = v314;
      v86 = *(v314 + 48);
      v338 = type metadata accessor for SFAirDrop.TransferIdentifier();
      v87 = *(v338 - 1);
      v88 = v331;
      (*(v87 + 16))(v331, v86 + *(v87 + 72) * v84, v338);
      v89 = *(v85 + 56);
      v90 = type metadata accessor for SFAirDropSend.Transfer();
      v91 = *(v90 - 8);
      (*(v91 + 16))(v88 + *(v351 + 48), v89 + *(v91 + 72) * v84, v90);
      v92 = v328;
      sub_10000FF90(v88, v328, &qword_10097AD48, &unk_1007FDFB0);
      SFAirDrop.TransferIdentifier.id.getter();
      v93 = *(v87 + 8);
      v326 = v87 + 8;
      v93(v92, v338);
      v94 = v88;
      v95 = i;
      sub_10000FF90(v94, i, &qword_10097AD48, &unk_1007FDFB0);
      v96 = *(v351 + 48);
      v97 = v312;
      SFAirDropSend.Transfer.activeInterfaceType.getter();
      v98 = *(v91 + 8);
      v323 = v90;
      v322 = v91 + 8;
      v319 = v98;
      (v98)(v95 + v96, v90);
      v99 = *v332;
      v100 = v348;
      if ((*v332)(v97, 1, v348) == 1)
      {
        v101 = *v349;
        (*v349)(v317, 1, 1, v100);
        if (v99(v97, 1, v100) != 1)
        {
          sub_100005508(v97, &qword_100977DC0, &unk_1007FB320);
        }

        v100 = v348;
        v102 = v317;
      }

      else
      {
        v102 = v317;
        (*v354)(v317, v97, v100);
        v101 = *v349;
        (*v349)(v102, 0, 1, v100);
      }

      v71 = v311;
      v93(i, v338);
      if (v99(v102, 1, v100) == 1)
      {
        sub_100005508(v102, &qword_100977DC0, &unk_1007FB320);
        v103 = v337;
        v104 = v329;
        v105 = sub_10000EBD4(v337);
        if (v106)
        {
          v107 = v105;
          v338 = v101;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v356 = v104;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1002CFC48();
            v104 = v356;
          }

          v109 = *(v340 + 8);
          v110 = v350;
          v109(*(v104 + 48) + *(v340 + 72) * v107, v350);
          v79 = v303;
          v111 = v348;
          (*(v352 + 32))(v303, *(v104 + 56) + *(v352 + 72) * v107, v348);
          v329 = v104;
          sub_1002D4E48(v107, v104);
          v109(v337, v110);
          sub_100005508(v331, &qword_10097AD48, &unk_1007FDFB0);
          v78 = v353;
          (v338)(v79, 0, 1, v111);
        }

        else
        {
          (*v343)(v103, v350);
          sub_100005508(v331, &qword_10097AD48, &unk_1007FDFB0);
          v78 = v353;
          v79 = v303;
          v101(v303, 1, 1, v348);
        }

        v80 = v79;
        v81 = &qword_100977DC0;
        v82 = &unk_1007FB320;
LABEL_6:
        sub_100005508(v80, v81, v82);
        goto LABEL_7;
      }

      v112 = *v354;
      (*v354)(v310, v102, v100);
      v113 = v329;
      v77 = swift_isUniquelyReferenced_nonNull_native();
      v356 = v113;
      v114 = v337;
      v115 = sub_10000EBD4(v337);
      v117 = *(v113 + 16);
      v118 = (v116 & 1) == 0;
      v119 = __OFADD__(v117, v118);
      v120 = v117 + v118;
      if (v119)
      {
        goto LABEL_133;
      }

      v121 = v116;
      if (*(v113 + 24) >= v120)
      {
        if ((v77 & 1) == 0)
        {
          v130 = v115;
          sub_1002CFC48();
          v115 = v130;
        }
      }

      else
      {
        sub_100574574(v120, v77);
        v115 = sub_10000EBD4(v114);
        if ((v121 & 1) != (v122 & 1))
        {
LABEL_138:
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);

          __break(1u);
          return result;
        }
      }

      v78 = v353;
      v123 = v356;
      v329 = v356;
      if (v121)
      {
        (*(v352 + 40))(*(v356 + 56) + *(v352 + 72) * v115, v310, v348);
        (*v343)(v337, v350);
        v80 = v331;
        v81 = &qword_10097AD48;
        v82 = &unk_1007FDFB0;
        goto LABEL_6;
      }

      *(v356 + 8 * (v115 >> 6) + 64) |= 1 << v115;
      v124 = v340;
      v125 = v115;
      v77 = v337;
      v126 = v350;
      (*(v340 + 16))(*(v123 + 48) + *(v340 + 72) * v115, v337, v350);
      v112((*(v329 + 56) + *(v352 + 72) * v125), v310, v348);
      v127 = v329;
      (*(v124 + 8))(v77, v126);
      sub_100005508(v331, &qword_10097AD48, &unk_1007FDFB0);
      v128 = *(v127 + 16);
      v119 = __OFADD__(v128, 1);
      v129 = v128 + 1;
      if (v119)
      {
        goto LABEL_135;
      }

      *(v127 + 16) = v129;
LABEL_7:
      v75 = v309;
      v74 &= v74 - 1;
      (v319)(&v328[*(v351 + 48)], v323);
      v77 = v348;
      goto LABEL_8;
    }
  }

  v326 = sub_100281500(_swiftEmptyArrayStorage);
  v131 = (v315 + 64);
  v132 = 1 << *(v315 + 32);
  v133 = -1;
  if (v132 < 64)
  {
    v133 = ~(-1 << v132);
  }

  v134 = v133 & *(v315 + 64);
  v135 = (v132 + 63) >> 6;

  v136 = 0;
  v328 = v131;
  v323 = v135;
LABEL_40:
  if (v134)
  {
    goto LABEL_45;
  }

  while (1)
  {
    v141 = v136 + 1;
    if (__OFADD__(v136, 1))
    {
      goto LABEL_131;
    }

    if (v141 >= v135)
    {
      break;
    }

    v134 = *&v131[8 * v141];
    ++v136;
    if (v134)
    {
      v136 = v141;
LABEL_45:
      v142 = __clz(__rbit64(v134)) | (v136 << 6);
      v143 = v315;
      v144 = *(v315 + 48);
      v351 = type metadata accessor for SFAirDrop.TransferIdentifier();
      v145 = *(v351 - 8);
      v146 = v325;
      (*(v145 + 16))(v325, v144 + *(v145 + 72) * v142, v351);
      v147 = *(v143 + 56);
      v148 = type metadata accessor for SFAirDropReceive.Transfer();
      v149 = *(v148 - 1);
      (*(v149 + 16))(v146 + *(v346 + 48), v147 + *(v149 + 72) * v142, v148);
      v150 = v324;
      sub_10000FF90(v146, v324, &qword_10097AD40, &unk_1007FDFA0);
      SFAirDrop.TransferIdentifier.id.getter();
      v151 = *(v145 + 8);
      v338 = (v145 + 8);
      v151(v150, v351);
      v152 = v308;
      sub_10000FF90(v146, v308, &qword_10097AD40, &unk_1007FDFA0);
      v153 = *(v346 + 48);
      v154 = v307;
      SFAirDropReceive.Transfer.activeInterfaceType.getter();
      v155 = *(v149 + 8);
      v337 = v148;
      i = v149 + 8;
      v331 = v155;
      (v155)(v152 + v153, v148);
      v156 = *v332;
      v157 = v348;
      if ((*v332)(v154, 1, v348) == 1)
      {
        v158 = *v349;
        (*v349)(v316, 1, 1, v157);
        if (v156(v154, 1, v157) != 1)
        {
          sub_100005508(v154, &qword_100977DC0, &unk_1007FB320);
        }

        v157 = v348;
        v159 = v316;
      }

      else
      {
        v159 = v316;
        (*v354)(v316, v154, v157);
        v158 = *v349;
        (*v349)(v159, 0, 1, v157);
      }

      v151(v152, v351);
      if (v156(v159, 1, v157) != 1)
      {
        v171 = *v354;
        (*v354)(v306, v159, v157);
        v172 = v326;
        v77 = swift_isUniquelyReferenced_nonNull_native();
        v356 = v172;
        v173 = sub_10000EBD4(v342);
        v175 = *(v172 + 16);
        v176 = (v174 & 1) == 0;
        v119 = __OFADD__(v175, v176);
        v177 = v175 + v176;
        if (!v119)
        {
          v178 = v174;
          if (*(v172 + 24) >= v177)
          {
            if ((v77 & 1) == 0)
            {
              v187 = v173;
              sub_1002CFC48();
              v173 = v187;
            }
          }

          else
          {
            sub_100574574(v177, v77);
            v173 = sub_10000EBD4(v342);
            if ((v178 & 1) != (v179 & 1))
            {
              goto LABEL_138;
            }
          }

          v78 = v353;
          v180 = v356;
          v326 = v356;
          if (v178)
          {
            (*(v352 + 40))(*(v356 + 56) + *(v352 + 72) * v173, v306, v348);
            (*v343)(v342, v350);
            v138 = v325;
            v139 = &qword_10097AD40;
            v140 = &unk_1007FDFA0;
            goto LABEL_38;
          }

          v77 = v353;
          *(v356 + 8 * (v173 >> 6) + 64) |= 1 << v173;
          v181 = v340;
          v182 = v173;
          v183 = v342;
          v184 = v350;
          (*(v340 + 16))(*(v180 + 48) + *(v340 + 72) * v173, v342, v350);
          v171((*(v326 + 56) + *(v352 + 72) * v182), v306, v348);
          (*(v181 + 8))(v183, v184);
          sub_100005508(v325, &qword_10097AD40, &unk_1007FDFA0);
          v185 = *(v326 + 16);
          v119 = __OFADD__(v185, 1);
          v186 = v185 + 1;
          if (!v119)
          {
            *(v326 + 16) = v186;
            v78 = v77;
            goto LABEL_39;
          }

LABEL_136:
          __break(1u);
LABEL_137:
          swift_once();
          goto LABEL_115;
        }

LABEL_134:
        __break(1u);
LABEL_135:
        __break(1u);
        goto LABEL_136;
      }

      sub_100005508(v159, &qword_100977DC0, &unk_1007FB320);
      v160 = v342;
      v161 = v326;
      v162 = sub_10000EBD4(v342);
      if (v163)
      {
        v164 = v162;
        v351 = v158;
        v165 = swift_isUniquelyReferenced_nonNull_native();
        v356 = v161;
        v166 = v353;
        v167 = v161;
        if ((v165 & 1) == 0)
        {
          sub_1002CFC48();
          v167 = v356;
        }

        v168 = *(v340 + 8);
        v169 = v350;
        v168(*(v167 + 48) + *(v340 + 72) * v164, v350);
        v137 = v301;
        v170 = v348;
        (*(v352 + 32))(v301, *(v167 + 56) + *(v352 + 72) * v164, v348);
        v326 = v167;
        sub_1002D4E48(v164, v167);
        v168(v342, v169);
        sub_100005508(v325, &qword_10097AD40, &unk_1007FDFA0);
        v78 = v166;
        (v351)(v137, 0, 1, v170);
      }

      else
      {
        (*v343)(v160, v350);
        sub_100005508(v325, &qword_10097AD40, &unk_1007FDFA0);
        v78 = v353;
        v137 = v301;
        v158(v301, 1, 1, v348);
      }

      v138 = v137;
      v139 = &qword_100977DC0;
      v140 = &unk_1007FB320;
LABEL_38:
      sub_100005508(v138, v139, v140);
LABEL_39:
      v131 = v328;
      v135 = v323;
      v134 &= v134 - 1;
      (v331)(v324 + *(v346 + 48), v337);
      v77 = v348;
      goto LABEL_40;
    }
  }

  v188 = v329;

  v189 = v326;

  v190 = swift_isUniquelyReferenced_nonNull_native();
  v356 = v188;
  sub_10039C1A4(v189, sub_10039A428, 0, v190, &v356);
  v317 = 0;

  v191 = v356 + 64;
  v192 = 1 << *(v356 + 32);
  v193 = -1;
  if (v192 < 64)
  {
    v193 = ~(-1 << v192);
  }

  v194 = v193 & *(v356 + 64);
  v325 = (v192 + 63) >> 6;
  v346 = v352 + 16;
  v351 = v340 + 32;
  v337 = v300 + 7;
  v338 = v300 + 6;
  v342 = (v352 + 8);
  v319 = @"InterfaceChanged";
  v331 = v356;

  v195 = 0;
  v196 = v350;
  v197 = v77;
  for (i = v191; ; v191 = i)
  {
    if (!v194)
    {
      if (v325 <= v195 + 1)
      {
        v202 = v195 + 1;
      }

      else
      {
        v202 = v325;
      }

      v203 = v202 - 1;
      while (1)
      {
        v201 = v195 + 1;
        if (__OFADD__(v195, 1))
        {
          break;
        }

        if (v201 >= v325)
        {
          v194 = 0;
          v217 = 1;
          v195 = v203;
          v213 = v341;
          goto LABEL_83;
        }

        v194 = *(v191 + 8 * v201);
        ++v195;
        if (v194)
        {
          v200 = v197;
          v195 = v201;
          goto LABEL_82;
        }
      }

      __break(1u);
      goto LABEL_130;
    }

    v200 = v197;
    v201 = v195;
LABEL_82:
    v204 = __clz(__rbit64(v194));
    v194 &= v194 - 1;
    v205 = v204 | (v201 << 6);
    v206 = v331;
    v207 = v340;
    v208 = v330;
    (*(v340 + 16))(v330, v331[6] + *(v340 + 72) * v205, v196);
    v209 = *(v206 + 56);
    v210 = v352;
    v211 = v196;
    v212 = v336;
    (*(v352 + 16))(v336, v209 + *(v352 + 72) * v205, v200);
    v213 = v341;
    v214 = *(v341 + 48);
    v215 = *(v207 + 32);
    v78 = v353;
    v215(v353, v208, v211);
    v216 = *(v210 + 32);
    v197 = v200;
    v216(v78 + v214, v212, v200);
    v217 = 0;
LABEL_83:
    v218 = *v337;
    (*v337)(v78, v217, 1, v213);
    v219 = v334;
    sub_10002C4E4(v78, v334, &qword_100974CE8, &qword_1007F8248);
    v77 = *v338;
    if ((*v338)(v219, 1, v213) == 1)
    {
      break;
    }

    v220 = *(v213 + 48);
    v196 = v350;
    v221 = v344;
    (*v351)(v344, v219, v350);
    v222 = *v354;
    v223 = v347;
    (*v354)(v347, v219 + v220, v197);
    v224 = *(v339 + 160);
    if (!*(v224 + 16))
    {
      goto LABEL_69;
    }

    v225 = *(v339 + 160);

    v226 = sub_10000EBD4(v221);
    if ((v227 & 1) == 0)
    {

LABEL_69:
      (*v342)(v223, v197);
      (*v343)(v221, v196);
      v198 = v345;
      (*v349)(v345, 1, 1, v197);
      v199 = v198;
LABEL_70:
      sub_100005508(v199, &qword_100977DC0, &unk_1007FB320);
      goto LABEL_71;
    }

    v324 = v222;
    v228 = *(v224 + 56);
    v229 = v197;
    v322 = *(v352 + 72);
    v230 = *(v352 + 16);
    v231 = v352;
    v232 = v345;
    v230(v345, v228 + v322 * v226, v229);

    v233 = v229;
    v234 = *(v231 + 56);
    (v234)(v232, 0, 1, v229);
    v235 = v327;
    v323 = v230;
    v230(v327, v223, v233);
    v328 = v234;
    (v234)(v235, 0, 1, v233);
    v236 = v320;
    v237 = *(v321 + 48);
    v77 = &unk_1007FB320;
    sub_10000FF90(v232, v320, &qword_100977DC0, &unk_1007FB320);
    sub_10000FF90(v235, v236 + v237, &qword_100977DC0, &unk_1007FB320);
    v238 = *(v352 + 48);
    if (v238(v236, 1, v233) == 1)
    {
      sub_100005508(v235, &qword_100977DC0, &unk_1007FB320);
      if (v238(v236 + v237, 1, v233) == 1)
      {
        sub_100005508(v345, &qword_100977DC0, &unk_1007FB320);
        v197 = v348;
        (*v342)(v347, v348);
        v196 = v350;
        (*v343)(v344, v350);
        v199 = v236;
        goto LABEL_70;
      }

      goto LABEL_92;
    }

    v239 = v313;
    sub_10000FF90(v236, v313, &qword_100977DC0, &unk_1007FB320);
    if (v238(v236 + v237, 1, v233) == 1)
    {
      sub_100005508(v327, &qword_100977DC0, &unk_1007FB320);
      (*v342)(v239, v233);
LABEL_92:
      sub_100005508(v236, &qword_10097AD38, &unk_1007FDF90);
      goto LABEL_93;
    }

    v246 = v336;
    v324(v336, v236 + v237, v233);
    sub_10039C658(&qword_10097AD50, &type metadata accessor for SFNWInterfaceType);
    LODWORD(v324) = dispatch thunk of static Equatable.== infix(_:_:)();
    v77 = *v342;
    (*v342)(v246, v233);
    sub_100005508(v327, &qword_100977DC0, &unk_1007FB320);
    (v77)(v239, v233);
    sub_100005508(v236, &qword_100977DC0, &unk_1007FB320);
    v196 = v350;
    v247 = v347;
    if (v324)
    {
      sub_100005508(v345, &qword_100977DC0, &unk_1007FB320);
      v197 = v348;
      (v77)(v247, v348);
      (*v343)(v344, v196);
      goto LABEL_71;
    }

LABEL_93:
    v240 = v329;
    if (*(v329 + 16))
    {
      v241 = v344;
      v242 = sub_10000EBD4(v344);
      if (v243)
      {
        v323(v318, *(v240 + 56) + v242 * v322, v348);
        v244 = 0;
        v245 = &off_1008CE3B8;
      }

      else
      {
        v244 = 1;
        v245 = &off_1008CE3C0;
      }
    }

    else
    {
      v244 = 1;
      v245 = &off_1008CE3C0;
      v241 = v344;
    }

    v248 = v318;
    v249 = v348;
    (v328)(v318, v244, 1, v348);
    sub_100005508(v248, &qword_100977DC0, &unk_1007FB320);
    v77 = *v245;
    isa = UUID._bridgeToObjectiveC()().super.isa;
    v251 = v347;
    SFNWInterfaceType.description.getter();
    v252 = String._bridgeToObjectiveC()();

    sub_100086E1C(v77, v319, isa, v252, 0.0);

    v197 = v249;
    sub_100005508(v345, &qword_100977DC0, &unk_1007FB320);
    (*v342)(v251, v249);
    v196 = v350;
    (*v343)(v241, v350);
LABEL_71:
    v78 = v353;
  }

  v254 = v317;
  v255 = sub_10039A508(v253);
  v344 = v254;
  v345 = v255;

  v256 = *(v339 + 160);
  v257 = (v256 + 64);
  v258 = 1 << *(v256 + 32);
  v259 = -1;
  if (v258 < 64)
  {
    v259 = ~(-1 << v258);
  }

  v260 = v259 & *(v256 + 64);
  v261 = (v258 + 63) >> 6;
  LODWORD(v353) = enum case for SFNWInterfaceType.cellular(_:);
  v351 = v352 + 104;
  v354 = v256;
  swift_bridgeObjectRetain_n();
  v262 = 0;
  v349 = v257;
  v347 = v261;
  v263 = v348;
  if (!v260)
  {
LABEL_105:
    while (1)
    {
      v264 = v262 + 1;
      if (__OFADD__(v262, 1))
      {
        goto LABEL_132;
      }

      if (v264 >= v261)
      {

        v276 = v299;
        v277 = v299;
        v278 = 1;
        goto LABEL_112;
      }

      v260 = v257[v264];
      ++v262;
      if (v260)
      {
        goto LABEL_108;
      }
    }
  }

  while (1)
  {
    v264 = v262;
LABEL_108:
    v265 = __clz(__rbit64(v260)) | (v264 << 6);
    v266 = v354;
    v267 = v304;
    (*(v340 + 16))(v304, *(v354 + 48) + *(v340 + 72) * v265, v350);
    v268 = v352;
    v269 = *(v266 + 56) + *(v352 + 72) * v265;
    v270 = v341;
    (*(v352 + 16))(&v267[*(v341 + 48)], v269, v263);
    v271 = v267;
    v272 = v305;
    sub_10002C4E4(v271, v305, &qword_100974CE0, &qword_1007F8240);
    v273 = *(v270 + 48);
    v274 = *(v268 + 104);
    v275 = v336;
    v274(v336, v353, v263);
    LOBYTE(v273) = static SFNWInterfaceType.== infix(_:_:)();
    (*(v352 + 8))(v275, v263);
    if (v273)
    {
      break;
    }

    v260 &= v260 - 1;
    sub_100005508(v272, &qword_100974CE0, &qword_1007F8240);
    v262 = v264;
    v257 = v349;
    v261 = v347;
    if (!v260)
    {
      goto LABEL_105;
    }
  }

  v298 = v272;
  v276 = v299;
  sub_10002C4E4(v298, v299, &qword_100974CE0, &qword_1007F8240);
  v277 = v276;
  v278 = 0;
LABEL_112:
  v279 = v341;
  v218(v277, v278, 1, v341);

  v280 = (v77)(v276, 1, v279);
  sub_100005508(v276, &qword_100974CE8, &qword_1007F8248);
  v77 = v345;
  if (*(v345 + 16))
  {
    if (v280 != 1)
    {

      goto LABEL_127;
    }

    if (qword_100973628 != -1)
    {
      goto LABEL_137;
    }

LABEL_115:
    v281 = type metadata accessor for Logger();
    sub_10000C4AC(v281, qword_100978DC0);

    v282 = Logger.logObject.getter();
    v283 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v282, v283))
    {
      v284 = swift_slowAlloc();
      v285 = swift_slowAlloc();
      v356 = v285;
      *v284 = 136315138;
      v286 = sub_100391DFC(v77);

      v355 = v286;
      sub_10028088C(&unk_100976C20, &unk_1007F9D80);
      sub_100011630(&qword_10097F070, &unk_100976C20, &unk_1007F9D80);
      v287 = BidirectionalCollection<>.joined(separator:)();
      v289 = v288;

      v290 = sub_10000C4E4(v287, v289, &v356);

      *(v284 + 4) = v290;
      _os_log_impl(&_mh_execute_header, v282, v283, "Transfers using cellular: %s", v284, 0xCu);
      sub_10000C60C(v285);
    }

    else
    {
    }

    v295 = 1;
  }

  else
  {

    if (v280 == 1)
    {
      goto LABEL_127;
    }

    if (qword_100973628 != -1)
    {
      swift_once();
    }

    v291 = type metadata accessor for Logger();
    sub_10000C4AC(v291, qword_100978DC0);
    v292 = Logger.logObject.getter();
    v293 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v292, v293))
    {
      v294 = swift_slowAlloc();
      *v294 = 0;
      _os_log_impl(&_mh_execute_header, v292, v293, "Transfers stopped using cellular", v294, 2u);
    }

    v295 = 0;
  }

  sub_100637614(v295);
LABEL_127:
  v296 = *(v339 + 160);
  *(v339 + 160) = v331;
}

uint64_t sub_100396B34()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_10097ABF8);
  v1 = sub_10000C4AC(v0, qword_10097ABF8);
  if (qword_1009736D0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A08B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100396BFC()
{
  v1 = v0;
  v2 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v23 - v4;
  if (qword_100973788 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000C4AC(v6, qword_10097ABF8);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "SDAirDropReceiveService start", v9, 2u);
  }

  *(v1[5] + 24) = &off_1008DDDA0;
  swift_unknownObjectWeakAssign();
  sub_10039C9A8();
  v10 = v1[12];
  v11 = v1[13];
  sub_10002CDC0(v1 + 9, v10);
  (*(v11 + 32))(v10, v11);
  sub_10027F290();
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
  v13 = qword_1009735E0;

  if (v13 != -1)
  {
    swift_once();
  }

  v14 = static AirDropActor.shared;
  v15 = sub_10039C658(&qword_100977C00, type metadata accessor for AirDropActor);
  v16 = swift_allocObject();
  v16[2] = v14;
  v16[3] = v15;
  v16[4] = v1;

  sub_1002B281C(0, 0, v5, &unk_1007FDF68, v16);

  sub_100637614(0);
  v17 = v1[20];
  v1[20] = &_swiftEmptyDictionarySingleton;

  swift_beginAccess();
  v18 = v1[17];
  if (v18)
  {
    v19 = v1[18];
    sub_10002F5B4((v1 + 14), v1[17]);
    v20 = *(v19 + 16);
    v21 = swift_unknownObjectRetain();
    v20(v21, &off_1008DDD90, v18, v19);
  }

  return swift_endAccess();
}

void sub_100396F18()
{
  v1 = v0;
  if (qword_100973788 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_10097ABF8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "SDAirDropReceiveService stop", v5, 2u);
  }

  v6 = *(v1 + 40);
  sub_10039CBE4();
}

uint64_t sub_100396FFC(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = type metadata accessor for Logger();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v6 = *(*(sub_10028088C(&qword_10097AD68, &unk_1007FDFE0) - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v7 = type metadata accessor for SFAirDropReceive.Transfer();
  v2[9] = v7;
  v8 = *(v7 - 8);
  v2[10] = v8;
  v9 = *(v8 + 64) + 15;
  v2[11] = swift_task_alloc();
  v10 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v2[12] = v10;
  v11 = *(v10 - 8);
  v2[13] = v11;
  v12 = *(v11 + 64) + 15;
  v2[14] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v13 = static AirDropActor.shared;
  v2[15] = static AirDropActor.shared;

  return _swift_task_switch(sub_1003971E8, v13, 0);
}

uint64_t sub_1003971E8()
{
  v64 = v0;
  if (qword_100973788 != -1)
  {
    swift_once();
  }

  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v4 = v0[3];
  sub_10000C4AC(v0[5], qword_10097ABF8);
  (*(v2 + 16))(v1, v4, v3);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[13];
  v8 = v0[14];
  v10 = v0[12];
  if (v7)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v63[0] = v12;
    *v11 = 136315138;
    sub_10039C658(&qword_100977BF0, &type metadata accessor for SFAirDrop.TransferIdentifier);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    (*(v9 + 8))(v8, v10);
    v16 = sub_10000C4E4(v13, v15, v63);

    *(v11 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v5, v6, "Canceling receive transfer %s", v11, 0xCu);
    sub_10000C60C(v12);
  }

  else
  {

    (*(v9 + 8))(v8, v10);
  }

  v17 = *(v0[4] + 48);
  CurrentValueSubject.value.getter();
  v18 = v0[2];
  if (!*(v18 + 16) || (v19 = v0[2], v20 = sub_100570848(v0[3]), (v21 & 1) == 0))
  {
    v31 = v0[7];
    v32 = v0[3];
    SFAirDrop.TransferIdentifier.stringValue.getter();
    sub_10054141C(8);

    v33 = static String._fromSubstring(_:)();
    v35 = v34;

    v63[0] = 0x2E706F7244726941;
    v63[1] = 0xE800000000000000;
    v36._countAndFlagsBits = v33;
    v36._object = v35;
    String.append(_:)(v36);

    Logger.init(subsystem:category:)();

    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = v0[12];
      v40 = v0[9];
      v41 = v0[6];
      v62 = v0[7];
      v42 = v0[5];
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v63[0] = v44;
      *v43 = 136315138;
      sub_10039C658(&qword_10097F350, &type metadata accessor for SFAirDrop.TransferIdentifier);
      v45 = Dictionary.Keys.description.getter();
      v47 = v46;

      v48 = sub_10000C4E4(v45, v47, v63);

      *(v43 + 4) = v48;
      _os_log_impl(&_mh_execute_header, v37, v38, "No receive transfer to cancel. Current transfer IDs: %s", v43, 0xCu);
      sub_10000C60C(v44);

      (*(v41 + 8))(v62, v42);
    }

    else
    {
      v50 = v0[6];
      v49 = v0[7];
      v51 = v0[5];

      (*(v50 + 8))(v49, v51);
    }

    v52 = type metadata accessor for SFAirDropReceive.Failure();
    sub_10039C658(&unk_10097A660, &type metadata accessor for SFAirDropReceive.Failure);
    swift_allocError();
    (*(*(v52 - 8) + 104))(v53, enum case for SFAirDropReceive.Failure.badRequest(_:), v52);
    swift_willThrow();
    v54 = v0[14];
    v55 = v0[11];
    v57 = v0[7];
    v56 = v0[8];

    v30 = v0[1];
    goto LABEL_14;
  }

  v22 = v0[8];
  (*(v0[10] + 16))(v0[11], *(v18 + 56) + *(v0[10] + 72) * v20, v0[9]);

  SFAirDropReceive.Transfer.cancelAction.getter();
  v23 = type metadata accessor for SFAirDrop.DeclineAction();
  v0[16] = v23;
  v24 = *(v23 - 8);
  v0[17] = v24;
  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    v25 = v0[8];
    (*(v0[10] + 8))(v0[11], v0[9]);
    sub_100005508(v25, &qword_10097AD68, &unk_1007FDFE0);
    v26 = v0[14];
    v27 = v0[11];
    v29 = v0[7];
    v28 = v0[8];

    v30 = v0[1];
LABEL_14:

    return v30();
  }

  v59 = async function pointer to SFAirDrop.DeclineAction.decline()[1];
  v60 = swift_task_alloc();
  v0[18] = v60;
  *v60 = v0;
  v60[1] = sub_1003978C0;
  v61 = v0[8];

  return SFAirDrop.DeclineAction.decline()();
}