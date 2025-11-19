uint64_t sub_10005B7EC()
{
  v0 = String.subscript.getter();
  v4 = sub_10005B86C(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_10005B86C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = Substring.UTF8View.distance(from:to:)();
  if (!v9)
  {
    v11 = _swiftEmptyArrayStorage;
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_100030AD0(v9, 0);
  v12 = sub_10005B9C4(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = static String._uncheckedFromUTF8(_:)();

    return v14;
  }

  __break(1u);
LABEL_11:
  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t sub_10005B9C4(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_10005BBE4(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_10005BBE4(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_10005BBE4(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = String.UTF8View._foreignIndex(_:offsetBy:)();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_10005BC60(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_10005BC6C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10005BCA4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000257F4;

  return sub_10002448C(a1, v5);
}

uint64_t sub_10005BD5C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000240AC;

  return sub_10002448C(a1, v5);
}

uint64_t sub_10005BE14(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10005BE64()
{
  v0 = type metadata accessor for Logger();
  sub_10002B76C(v0, qword_10009BF80);
  sub_10002AF48(v0, qword_10009BF80);
  static CPSConstants.logSubsystem.getter();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10005BED0()
{
  v0 = type metadata accessor for CUEnvironmentValues();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static CUEnvironmentValues.cpsBaseEnvironment.getter();
  v5 = type metadata accessor for CPSDaemonShim();
  v6 = objc_allocWithZone(v5);
  *&v6[OBJC_IVAR____TtC10companiond13CPSDaemonShim__dtDaemon] = 0;
  *&v6[OBJC_IVAR____TtC10companiond13CPSDaemonShim__cpsDaemon] = 0;
  (*(v1 + 16))(&v6[OBJC_IVAR____TtC10companiond13CPSDaemonShim__environment], v4, v0);
  v9.receiver = v6;
  v9.super_class = v5;
  v7 = objc_msgSendSuper2(&v9, "init");
  result = (*(v1 + 8))(v4, v0);
  static CPSDaemonShim.shared = v7;
  return result;
}

id CPSDaemonShim.__allocating_init(environment:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC10companiond13CPSDaemonShim__dtDaemon] = 0;
  *&v3[OBJC_IVAR____TtC10companiond13CPSDaemonShim__cpsDaemon] = 0;
  v4 = OBJC_IVAR____TtC10companiond13CPSDaemonShim__environment;
  v5 = type metadata accessor for CUEnvironmentValues();
  v6 = *(v5 - 8);
  (*(v6 + 16))(&v3[v4], a1, v5);
  v9.receiver = v3;
  v9.super_class = v1;
  v7 = objc_msgSendSuper2(&v9, "init");
  (*(v6 + 8))(a1, v5);
  return v7;
}

uint64_t *CPSDaemonShim.shared.unsafeMutableAddressor()
{
  if (qword_10009AD80 != -1)
  {
    swift_once();
  }

  return &static CPSDaemonShim.shared;
}

id static CPSDaemonShim.shared.getter()
{
  if (qword_10009AD80 != -1)
  {
    swift_once();
  }

  v1 = static CPSDaemonShim.shared;

  return v1;
}

id CPSDaemonShim.init(environment:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC10companiond13CPSDaemonShim__dtDaemon] = 0;
  *&v1[OBJC_IVAR____TtC10companiond13CPSDaemonShim__cpsDaemon] = 0;
  v4 = OBJC_IVAR____TtC10companiond13CPSDaemonShim__environment;
  v5 = type metadata accessor for CUEnvironmentValues();
  v6 = *(v5 - 8);
  (*(v6 + 16))(&v1[v4], a1, v5);
  v9.receiver = v1;
  v9.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v9, "init");
  (*(v6 + 8))(a1, v5);
  return v7;
}

Swift::Void __swiftcall CPSDaemonShim.activate()()
{
  v1 = v0;
  v2 = sub_100024EA8(&qword_10009B150, &qword_10006DC50);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v30 - v7;
  v9 = type metadata accessor for CUEnvironmentValues();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DTDaemon();
  v14 = OBJC_IVAR____TtC10companiond13CPSDaemonShim__environment;
  v15 = *(v10 + 16);
  v15(v13, v0 + OBJC_IVAR____TtC10companiond13CPSDaemonShim__environment, v9);
  v16 = DTDaemon.__allocating_init(environment:)();
  v17 = *(v0 + OBJC_IVAR____TtC10companiond13CPSDaemonShim__dtDaemon);
  *(v1 + OBJC_IVAR____TtC10companiond13CPSDaemonShim__dtDaemon) = v16;

  v15(v13, v1 + v14, v9);
  v18 = type metadata accessor for CPSDaemon();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  v21 = sub_100026640(v13);
  v22 = *(v1 + OBJC_IVAR____TtC10companiond13CPSDaemonShim__cpsDaemon);
  *(v1 + OBJC_IVAR____TtC10companiond13CPSDaemonShim__cpsDaemon) = v21;

  v23 = CUEnvironmentValues.dispatchQueue.getter();
  v24 = type metadata accessor for TaskPriority();
  v25 = *(v24 - 8);
  (*(v25 + 56))(v8, 1, 1, v24);
  v26 = swift_allocObject();
  *(v26 + 16) = v16;
  *(v26 + 24) = v21;
  sub_1000251F8(v8, v6);
  if ((*(v25 + 48))(v6, 1, v24) == 1)
  {
    sub_10005CF00(v6);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v25 + 8))(v6, v24);
  }

  v27 = sub_10005DCE8(&qword_10009B330, sub_10002B6E8);
  v28 = swift_allocObject();
  *(v28 + 16) = &unk_10006ED40;
  *(v28 + 24) = v26;
  v30[0] = 6;
  v30[1] = 0;
  v30[2] = v23;
  v30[3] = v27;

  v29 = v23;
  swift_task_create();
  sub_10005CF00(v8);
}

uint64_t sub_10005C690(uint64_t a1, uint64_t a2, void *a3)
{
  v3[2] = a3;
  v3[3] = *a3;
  v4 = *(*(sub_100024EA8(&qword_10009B150, &qword_10006DC50) - 8) + 64) + 15;
  v3[4] = swift_task_alloc();
  v5 = async function pointer to DTDaemon.activate()[1];
  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_10005C788;

  return DTDaemon.activate()();
}

uint64_t sub_10005C788()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 24);
  v4 = *(*v0 + 16);
  v8 = *v0;

  v1[6] = sub_10005DCE8(&qword_10009B140, type metadata accessor for CPSDaemon);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[7] = v6;
  v1[8] = v5;

  return _swift_task_switch(sub_10005C900, v6, v5);
}

uint64_t sub_10005C900()
{
  v1 = v0[2];
  v2 = *(v1 + 16);
  v0[9] = v2;
  if (v2)
  {
    if (v2 == 1)
    {
      v3 = v0[4];

      v4 = v0[1];

      return v4();
    }

    v15 = async function pointer to Task<>.value.getter[1];

    v13 = swift_task_alloc();
    v0[10] = v13;
    *v13 = v0;
    v14 = sub_10005CB04;
  }

  else
  {
    v6 = v0[6];
    v7 = v0[4];
    v8 = type metadata accessor for TaskPriority();
    (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
    v9 = swift_allocObject();
    v9[2] = v1;
    v9[3] = v6;
    v9[4] = v1;
    swift_retain_n();
    v10 = sub_100057714(0, 0, v7, &unk_10006DEF8, v9);
    v0[11] = v10;
    v11 = *(v1 + 16);
    *(v1 + 16) = v10;

    sub_10002AF38(v11);
    v12 = async function pointer to Task<>.value.getter[1];
    v13 = swift_task_alloc();
    v0[12] = v13;
    *v13 = v0;
    v14 = sub_10005CC8C;
  }

  v13[1] = v14;

  return Task<>.value.getter();
}

uint64_t sub_10005CB04()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v6 = *v0;

  v3 = *(v1 + 64);
  v4 = *(v1 + 56);

  return _swift_task_switch(sub_10005CC24, v4, v3);
}

uint64_t sub_10005CC24()
{
  sub_10002AF38(v0[9]);
  v1 = v0[4];

  v2 = v0[1];

  return v2();
}

uint64_t sub_10005CC8C()
{
  v1 = *v0;
  v2 = *(*v0 + 96);
  v6 = *v0;

  v3 = *(v1 + 64);
  v4 = *(v1 + 56);

  return _swift_task_switch(sub_10005CDAC, v4, v3);
}

uint64_t sub_10005CDAC()
{
  v1 = v0[11];

  v2 = v0[4];

  v3 = v0[1];

  return v3();
}

uint64_t sub_10005CE14()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10005CE54(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000257F4;

  return sub_10005C690(a1, v5, v4);
}

uint64_t sub_10005CF00(uint64_t a1)
{
  v2 = sub_100024EA8(&qword_10009B150, &qword_10006DC50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t CPSDaemonShim.handleXPCEvent(_:)(uint64_t a1)
{
  v2 = sub_100024EA8(&qword_10009B150, &qword_10006DC50);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v28 - v7;
  v9 = sub_100024EA8(&qword_10009B148, &qword_10006E0A0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v28 - v14;
  v35 = a1;
  swift_unknownObjectRetain();
  sub_100024EA8(&unk_10009B1A0, &qword_10006EAC0);
  CUSendableWrapper.init(_:)();
  v29 = CUEnvironmentValues.dispatchQueue.getter();
  v16 = type metadata accessor for TaskPriority();
  v17 = *(v16 - 8);
  (*(v17 + 56))(v8, 1, 1, v16);
  v18 = *(v10 + 16);
  v30 = v15;
  v18(v13, v15, v9);
  v19 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v20 = swift_allocObject();
  v21 = v28;
  *(v20 + 16) = v28;
  (*(v10 + 32))(v20 + v19, v13, v9);
  sub_1000251F8(v8, v6);
  LODWORD(v19) = (*(v17 + 48))(v6, 1, v16);
  v22 = v21;
  if (v19 == 1)
  {
    sub_10005CF00(v6);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v17 + 8))(v6, v16);
  }

  v23 = sub_10005DCE8(&qword_10009B330, sub_10002B6E8);
  v24 = swift_allocObject();
  *(v24 + 16) = &unk_10006ED58;
  *(v24 + 24) = v20;
  v31 = 6;
  v32 = 0;
  v25 = v29;
  v33 = v29;
  v34 = v23;

  v26 = v25;
  swift_task_create();
  sub_10005CF00(v8);

  return (*(v10 + 8))(v30, v9);
}

uint64_t sub_10005D384(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v4 = sub_100024EA8(&qword_10009B148, &qword_10006E0A0);
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();

  return _swift_task_switch(sub_10005D450, 0, 0);
}

uint64_t sub_10005D450()
{
  v26 = v0;
  v1 = *(v0[3] + OBJC_IVAR____TtC10companiond13CPSDaemonShim__cpsDaemon);
  v0[8] = v1;
  if (v1)
  {

    v2 = swift_task_alloc();
    v0[9] = v2;
    *v2 = v0;
    v2[1] = sub_10005D710;
    v3 = v0[4];

    return sub_100029FF4(v3);
  }

  else
  {
    if (qword_10009AD78 != -1)
    {
      swift_once();
    }

    v6 = v0[6];
    v5 = v0[7];
    v8 = v0[4];
    v7 = v0[5];
    v9 = type metadata accessor for Logger();
    sub_10002AF48(v9, qword_10009BF80);
    (*(v6 + 16))(v5, v8, v7);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    v12 = os_log_type_enabled(v10, v11);
    v13 = v0[6];
    v14 = v0[7];
    v15 = v0[5];
    if (v12)
    {
      v16 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v25 = v24;
      *v16 = 136315138;
      CUSendableWrapper.value.getter();
      v17 = v0[2];
      swift_getObjectType();
      v18 = OS_xpc_object.nestedDescription.getter();
      v20 = v19;
      swift_unknownObjectRelease();
      (*(v13 + 8))(v14, v15);
      v21 = sub_100030690(v18, v20, &v25);

      *(v16 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v10, v11, "XPC event ignored: no CPS daemon, %s", v16, 0xCu);
      sub_100024EF0(v24);
    }

    else
    {

      (*(v13 + 8))(v14, v15);
    }

    v22 = v0[7];

    v23 = v0[1];

    return v23();
  }
}

uint64_t sub_10005D710()
{
  v1 = *(*v0 + 72);
  v3 = *v0;

  return _swift_task_switch(sub_10005D80C, 0, 0);
}

uint64_t sub_10005D80C()
{
  v1 = v0[8];

  v2 = v0[7];

  v3 = v0[1];

  return v3();
}

id CPSDaemonShim.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10005DA00()
{
  v1 = sub_100024EA8(&qword_10009B148, &qword_10006E0A0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10005DAD0(uint64_t a1)
{
  v4 = *(sub_100024EA8(&qword_10009B148, &qword_10006E0A0) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000240AC;

  return sub_10005D384(a1, v6, v1 + v5);
}

uint64_t sub_10005DBC0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t type metadata accessor for CPSDaemonShim()
{
  result = qword_10009BFE0;
  if (!qword_10009BFE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10005DC4C()
{
  result = type metadata accessor for CUEnvironmentValues();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10005DCE8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10005DD30()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

void sub_10005DDBC(const char *a1)
{
  v2 = [NSString stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    sub_100003874();
    sub_10000389C(&_mh_execute_header, &_os_log_default, v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, @"completionHandler != ((void*)0)", v11, v12);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void sub_10005DEF8(const char *a1)
{
  v2 = [NSString stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    sub_100003874();
    sub_10000389C(&_mh_execute_header, &_os_log_default, v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, @"completionHandler != ((void*)0)", v11, v12);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void sub_10005DFEC(const char *a1)
{
  v2 = [NSString stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    sub_100003874();
    sub_10000389C(&_mh_execute_header, &_os_log_default, v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, @"passkeyAssertionOptions || passkeyRegistrationOptions", v11, v12);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void sub_10005E0E0(uint64_t a1)
{
  v1 = 138412290;
  v2 = a1;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Failed to fetch associated domains: %@", &v1, 0xCu);
}

void sub_10005E160(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to load application record: %@", &v2, 0xCu);
}

void sub_10005E1D8(uint64_t a1)
{
  v1 = 138412290;
  v2 = a1;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "CDBluetoothListener failed to create bluetooth device: %@", &v1, 0xCu);
}

void sub_10005E2F0(uint64_t a1)
{
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 208));
    sub_10005E5B4(a1);
    if (*(a1 + 160))
    {

      sub_10005E6C8(a1);
    }

    else
    {
      sub_10005E804(a1);
      v2 = *(a1 + 200);
      if (v2 == 2)
      {

        sub_1000073CC(a1);
      }

      else if (v2 == 1)
      {

        sub_10005E9D8(a1);
      }

      else
      {

        sub_10005E3C0(a1);
      }
    }
  }
}

void sub_10005E3C0(uint64_t a1)
{
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 208));
    if ((*(a1 + 122) & 1) == 0)
    {
      v3 = cps_session_log();
      if (sub_10000FA34(v3))
      {
        *v25 = 0;
        sub_10000F944(&_mh_execute_header, v4, v5, "Session invalidated.", v25);
      }

      v6 = sub_10005EAA0(a1);
      v7 = *(a1 + 16);
      if (v6)
      {
        v8 = v7;
      }

      else
      {
        [v7 invalidate];
        v8 = 0;
      }

      v9 = *(a1 + 16);
      *(a1 + 16) = 0;

      [*(a1 + 24) invalidate];
      v10 = *(a1 + 24);
      *(a1 + 24) = 0;

      [*(a1 + 32) invalidate];
      v11 = *(a1 + 32);
      *(a1 + 32) = 0;

      v12 = *(a1 + 80);
      *(a1 + 80) = 0;

      [*(a1 + 40) invalidate];
      v13 = *(a1 + 40);
      *(a1 + 40) = 0;

      [*(a1 + 48) invalidate];
      v14 = *(a1 + 48);
      *(a1 + 48) = 0;

      [*(a1 + 56) invalidate];
      v15 = *(a1 + 56);
      *(a1 + 56) = 0;

      [*(a1 + 64) invalidate];
      v16 = *(a1 + 64);
      *(a1 + 64) = 0;

      [*(a1 + 136) cancel];
      v17 = *(a1 + 136);
      *(a1 + 136) = 0;

      if ((*(a1 + 144) & 1) == 0 && (*(a1 + 120) & 1) == 0)
      {
        [*(a1 + 152) invalidate];
      }

      v18 = *(a1 + 152);
      *(a1 + 152) = 0;

      if (v6)
      {
        sub_10000F8B4();
        v22[1] = 3221225472;
        v22[2] = sub_1000075A8;
        v22[3] = &unk_10008A0A8;
        v23 = v8;
        v24 = a1;
        sub_10005EB44(a1, v23, v22);
        v20 = v23;
      }

      else
      {
        v19 = *(a1 + 232);
        if (!v19)
        {
LABEL_16:
          v21 = *(a1 + 240);
          *(a1 + 240) = 0;

          *(a1 + 122) = 1;
          return;
        }

        (*(v19 + 16))();
        v20 = *(a1 + 232);
        *(a1 + 232) = 0;
      }

      goto LABEL_16;
    }
  }
}

id sub_10005E5B4(id result)
{
  if (result)
  {
    v2 = result;
    v3 = cps_session_log();
    if (sub_10000FA34(v3))
    {
      *v15 = 0;
      sub_10000F944(&_mh_execute_header, v4, v5, "Starting system monitor.", v15);
    }

    v6 = objc_alloc_init(CUSystemMonitor);
    v7 = *(v2 + 5);
    *(v2 + 5) = v6;

    [*(v2 + 5) setDispatchQueue:*(v2 + 26)];
    v8 = *(v2 + 5);
    sub_10000F8D4();
    v14[0] = v9;
    v14[1] = 3221225472;
    v14[2] = sub_100009A3C;
    v14[3] = &unk_100089E20;
    v14[4] = v2;
    [v10 setScreenOnChangedHandler:v14];
    v11 = *(v2 + 5);
    sub_10000F8B4();
    v13[1] = 3221225472;
    v13[2] = sub_100009A44;
    v13[3] = &unk_100089E20;
    v13[4] = v2;
    [v12 setMeDeviceChangedHandler:v13];
    [*(v2 + 5) setMeDeviceUseFindMyLocate:1];
    return [*(v2 + 5) activateWithCompletion:&stru_10008A270];
  }

  return result;
}

void sub_10005E6C8(uint64_t a1)
{
  if (a1)
  {
    v2 = [*(a1 + 160) authType];
    if (v2 == 1)
    {

      sub_100009650(a1);
    }

    else if (v2 == 14)
    {

      sub_10005EF54(a1);
    }

    else
    {
      v3 = cps_session_log();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        [*(a1 + 160) authType];
        sub_10000F92C();
        sub_10000FA08(&_mh_execute_header, v3, v4, "Unknown local auth type: %ld", v5);
      }

      sub_10005E3C0(a1);
    }
  }
}

id sub_10005E804(id result)
{
  if (result)
  {
    v3 = result;
    v4 = cps_session_log();
    if (sub_10000FA34(v4))
    {
      v22[0] = 0;
      sub_10000F944(&_mh_execute_header, v5, v6, "Starting NearbyAction device discovery.", v22);
    }

    v7 = objc_alloc_init(SFDeviceDiscovery);
    v8 = *(v3 + 6);
    *(v3 + 6) = v7;

    [*(v3 + 6) setDispatchQueue:*(v3 + 26)];
    [*(v3 + 6) setChangeFlags:1];
    [*(v3 + 6) setDiscoveryFlags:16];
    v9 = *(v3 + 6);
    v10 = +[NSBundle mainBundle];
    [v10 bundleIdentifier];
    objc_claimAutoreleasedReturnValue();
    [sub_10000F96C() setPurpose:?];

    [*(v3 + 6) setScanRate:30];
    [*(v3 + 6) setRssiThreshold:-75];
    [*(v3 + 6) setOverrideScreenOff:1];
    v11 = *(v3 + 6);
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10000996C;
    v21[3] = &unk_10008A228;
    v21[4] = v3;
    [v11 setDeviceChangedHandler:v21];
    v12 = *(v3 + 6);
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100009974;
    v20[3] = &unk_10008A250;
    v20[4] = v3;
    [v12 setDeviceLostHandler:v20];
    v13 = *(v3 + 6);
    sub_10000F850();
    v16 = 3221225472;
    v17 = sub_10000997C;
    v18 = &unk_10008A080;
    v19 = v3;
    return [v14 activateWithCompletion:v15];
  }

  return result;
}

void sub_10005E9D8(uint64_t a1)
{
  if (a1)
  {
    v2 = objc_alloc_init(RPCompanionLinkDevice);
    [v2 setIdentifier:*(a1 + 192)];
    v3 = objc_alloc_init(RPCompanionLinkClient);
    v4 = *(a1 + 16);
    *(a1 + 16) = v3;

    [*(a1 + 16) setDispatchQueue:*(a1 + 208)];
    [*(a1 + 16) setControlFlags:0x80000103800];
    [*(a1 + 16) setDestinationDevice:v2];
    v5 = *(a1 + 16);
    sub_10000F850();
    sub_10000F960();
    v8 = sub_100007610;
    v9 = &unk_10008A080;
    v10 = a1;
    [v6 activateWithCompletion:v7];
  }
}

uint64_t sub_10005EAA0(uint64_t result)
{
  if (result)
  {
    if ((*(result + 176) & 1) != 0 || *(result + 177) != 1)
    {
      return 0;
    }

    else if (*(result + 184))
    {
      return 1;
    }

    else
    {
      v5 = v1;
      v6 = v2;
      v3 = cps_session_log();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        *v4 = 0;
        _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "CDProviderSession set _coupleToRequesterLifecycle to YES without providing finished message block.", v4, 2u);
      }

      return 0;
    }
  }

  return result;
}

void sub_10005EB44(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (a1)
  {
    v6 = *(a1 + 184);
    v7 = *(v6 + 16);
    v8 = a2;
    v9 = v7(v6);
    v10 = [v9 makeRapportDictionary];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = &__NSDictionary0__struct;
    }

    v13 = *(a1 + 128);
    sub_10000F850();
    sub_10000F960();
    v15 = sub_100009AB4;
    v16 = &unk_10008A0F8;
    v17 = v5;
    [v8 sendRequestID:@"com.apple.CompanionAuthentication.DidFinishAuth" request:v12 options:v13 responseHandler:v14];
  }
}

void sub_10005EC3C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = cps_session_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = v3;
      sub_10000FA08(&_mh_execute_header, v4, v5, "Authentication session failed: %@", &v8);
    }

    v6 = *(a1 + 224);
    if (v6)
    {
      if (v3)
      {
        (*(v6 + 16))(v6, v3);
      }

      else
      {
        v7 = [NSError errorWithDomain:CPSErrorDomain code:100 userInfo:0];
        (*(v6 + 16))(v6, v7);
      }
    }
  }
}

void sub_10005ED54(uint64_t a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v5 = cps_session_log();
    if (sub_10000FADC(v5))
    {
      sub_10000F97C();
      _os_log_impl(v6, v7, v8, v9, v10, 0xCu);
    }

    v11 = *(a1 + 216);
    if (v11)
    {
      (*(v11 + 16))(v11, v4);
    }
  }
}

void sub_10005EE18(uint64_t a1, void *a2, int a3, void *a4)
{
  v8 = a2;
  v9 = a4;
  v10 = v9;
  if (a1)
  {
    if (v9)
    {
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_1000090B4;
      v17[3] = &unk_10008A160;
      v17[4] = a1;
      v18 = v9;
      [v8 setActionHandler:v17];
    }

    if (a3)
    {
      sub_10000F850();
      sub_10000F960();
      v12 = sub_1000091D0;
      v13 = &unk_10008A1D8;
      v14 = a1;
      v16 = v10;
      v15 = v8;
      dispatch_async(&_dispatch_main_q, block);
    }

    else
    {
      objc_storeStrong((a1 + 24), a2);
      [v8 activate];
    }
  }
}

void sub_10005EF54(uint64_t a1)
{
  if (a1)
  {
    v3 = *(a1 + 160);
    v4 = sub_10000FA9C();
    v6 = sub_1000613A8(v4, v5);
    sub_10000F8B4();
    v8[1] = 3221225472;
    v8[2] = sub_10000DC40;
    v8[3] = &unk_10008A4E0;
    v8[4] = a1;
    v9 = v1;
    v7 = v1;
    sub_10005EE18(a1, v6, 1, v8);
  }
}

void sub_10005F000(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = v4;
  if (a1 && [v4 cad_matchesDeviceIdentifier:*(a1 + 192)])
  {
    v6 = cps_session_log();
    if (sub_10000FADC(v6))
    {
      sub_10000F97C();
      _os_log_impl(v7, v8, v9, v10, v11, 0xCu);
    }

    v12 = *(a1 + 200);
    if (v12 == 2)
    {
      if ([v5 deviceActionType] == 28)
      {
        goto LABEL_10;
      }
    }

    else if (v12 != 1 || [v5 deviceActionType] == 34)
    {
      goto LABEL_10;
    }

    v13 = cps_session_log();
    if (sub_10000FADC(v13))
    {
      sub_10000F97C();
      _os_log_impl(v14, v15, v16, v17, v18, 0xCu);
    }

    sub_10005E3C0(a1);
  }

LABEL_10:
}

void sub_10005F13C(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = v4;
  if (a1 && [v4 cad_matchesDeviceIdentifier:*(a1 + 192)])
  {
    v6 = cps_session_log();
    if (sub_10000FADC(v6))
    {
      sub_10000F97C();
      _os_log_impl(v7, v8, v9, v10, v11, 0xCu);
    }

    sub_10005E3C0(a1);
  }
}

void *sub_10005F204(void *result)
{
  if (result)
  {
    v2 = result;
    v3 = [result[5] screenOn];
    v4 = cps_session_log();
    if (sub_10000FADC(v4))
    {
      sub_10000F97C();
      _os_log_impl(v5, v6, v7, v8, v9, 8u);
    }

    if (v3)
    {
      v10 = cps_session_log();
      if (sub_10000FA34(v10))
      {
        sub_10000F894();
        _os_log_impl(v11, v12, v13, v14, v15, 2u);
      }

      return [v2[7] cancel];
    }

    else
    {
      return sub_10005F400(v2);
    }
  }

  return result;
}

void sub_10005F2FC(uint64_t a1)
{
  if (a1 && [*(a1 + 40) meDeviceValid])
  {
    v3 = cps_session_log();
    if (sub_10000FA34(v3))
    {
      [*(a1 + 40) meDeviceIsMe];
      sub_10000F894();
      _os_log_impl(v4, v5, v6, v7, v8, 8u);
    }

    [*(a1 + 64) invalidate];
    v9 = *(a1 + 64);
    *(a1 + 64) = 0;

    v10 = *(a1 + 168);
    if (v10)
    {
      v11 = [v10 authType];
      if (v11 == 15)
      {
        sub_100008324(a1);
      }

      else if (v11 == 19)
      {
        sub_1000086D4(a1);
      }

      else if (v11 == 18)
      {
        sub_100008564(a1);
      }
    }
  }
}

void *sub_10005F400(void *result)
{
  if (result)
  {
    v2 = result;
    v3 = cps_session_log();
    if (sub_10000FA34(v3))
    {
      v14[0] = 0;
      sub_10000F944(&_mh_execute_header, v4, v5, "Starting screen sleep timer.", v14);
    }

    if (!v2[7])
    {
      v6 = [[BSContinuousMachTimer alloc] initWithIdentifier:@"CDProviderSession.screenSleepTimer"];
      v7 = v2[7];
      v2[7] = v6;

      v8 = v2[7];
    }

    v9 = v2[26];
    sub_10000F850();
    sub_10000F960();
    v11 = sub_10005F4D4;
    v12 = &unk_10008A298;
    v13 = v2;
    return [v10 scheduleWithFireInterval:60.0 leewayInterval:1.0 queue:? handler:?];
  }

  return result;
}

void sub_10005F4D4(uint64_t a1)
{
  v3 = cps_session_log();
  if (sub_10000FA34(v3))
  {
    sub_10000F894();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
  }

  sub_10005E3C0(*(a1 + 32));
}

void *sub_10005F538(void *result)
{
  if (result)
  {
    v2 = result;
    v3 = cps_session_log();
    if (sub_10000FA34(v3))
    {
      v14[0] = 0;
      sub_10000F944(&_mh_execute_header, v4, v5, "Starting Me device timer.", v14);
    }

    if (!v2[8])
    {
      v6 = [[BSContinuousMachTimer alloc] initWithIdentifier:@"CDProviderSession.meDeviceTimer"];
      v7 = v2[8];
      v2[8] = v6;

      v8 = v2[8];
    }

    v9 = v2[26];
    sub_10000F850();
    sub_10000F960();
    v11 = sub_10005F608;
    v12 = &unk_10008A298;
    v13 = v2;
    return [v10 scheduleWithFireInterval:10.0 leewayInterval:1.0 queue:? handler:?];
  }

  return result;
}

void sub_10005F608(uint64_t a1)
{
  v3 = cps_session_log();
  if (sub_10000FA34(v3))
  {
    sub_10000F894();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
  }

  sub_10005E3C0(*(a1 + 32));
}

void sub_10005F66C(uint64_t a1)
{
  if (a1)
  {
    sub_10000FB08();
    v3 = v2;
    v4 = +[NSUUID UUID];
    v5 = [v4 UUIDString];

    v6 = objc_alloc_init(CDGetInfoRequest);
    [*(v3 + 96) ams_altDSID];
    objc_claimAutoreleasedReturnValue();
    sub_10000F9FC();
    v9 = sub_100009BF0(v7, v8);
    [(CDGetInfoRequest *)v6 setStoreAccountToken:v9];

    sub_10000FA74();
    sub_10000F850();
    sub_10000F960();
    v10 = sub_10000F870();
    sub_100008820(v10, v11, v12);

    sub_10000FAF4();
  }
}

void sub_10005F744(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = +[AMSDelegatePurchaseTask bagSubProfile];
    v8 = +[AMSDelegatePurchaseTask bagSubProfileVersion];
    v9 = [AMSBag bagForProfile:v7 profileVersion:v8];

    v10 = [[AMSDelegatePurchaseTask alloc] initWithDelegatePurchaseRequest:v5 bag:v9 account:a1[12]];
    v11 = a1[17];
    a1[17] = v10;

    v12 = cps_session_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = v5;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Submitting purchase request: %@", buf, 0xCu);
    }

    objc_initWeak(buf, a1);
    v13 = dispatch_get_global_queue(2, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000A1F4;
    block[3] = &unk_10008A360;
    block[4] = a1;
    objc_copyWeak(&v16, buf);
    v15 = v6;
    dispatch_async(v13, block);

    objc_destroyWeak(&v16);
    objc_destroyWeak(buf);
  }
}

void sub_10005F938(uint64_t a1)
{
  v3 = cps_session_log();
  if (sub_10000FA34(v3))
  {
    sub_10000F894();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
  }

  v9 = +[AMSDelegatePurchaseTask bagSubProfile];
  +[AMSDelegatePurchaseTask bagSubProfileVersion];
  objc_claimAutoreleasedReturnValue();
  v10 = [sub_10000FA8C() bagForProfile:? profileVersion:?];

  v11 = [[AMSOpenManageDevices alloc] initWithBag:v10];
  v12 = [v11 open];
  sub_10005E3C0(*(a1 + 32));
}

void sub_10005FA14(uint64_t a1)
{
  if (a1)
  {
    sub_10000FB08();
    v2 = v1;
    v3 = +[NSUUID UUID];
    v4 = [v3 UUIDString];

    v5 = +[CPSDevice currentDevice];
    v6 = objc_alloc_init(CDGetInfoRequest);
    v7 = [*(v2 + 96) ams_altDSID];
    v8 = sub_100009BF0(v7, v4);
    [(CDGetInfoRequest *)v6 setStoreAccountToken:v8];

    [(CDGetInfoRequest *)v6 setNonce:v4];
    [v5 buildVersion];
    objc_claimAutoreleasedReturnValue();
    [sub_10000F900() setDeviceBuildVersion:?];

    [v5 model];
    objc_claimAutoreleasedReturnValue();
    [sub_10000F900() setDeviceModel:?];

    sub_10000F850();
    sub_10000F960();
    v9 = sub_10000F8A4();
    sub_100008C2C(v9, v6, v10);

    sub_10000FAF4();
  }
}

void sub_10005FB44(uint64_t a1)
{
  if (a1)
  {
    sub_10000FB3C();
    v3 = v2;
    v4 = v1;
    v5 = objc_alloc_init(sub_10000FB80());
    sub_10000FB1C();
    [v6 setPurchaseResult:?];

    sub_10000FAC4(v7, v8, v9, v10, v11, v12, v13, v14, v42, v46);
    v15 = +[CPSDevice currentDevice];
    v16 = [v15 flags];
    sub_10000FAAC(v16, v17, v18, v19, v20, v21, v22, v23, v43, v47);
    v24 = [v15 model];
    [sub_10000F884(v24 v25];

    v32 = [v15 name];
    [sub_10000F884(v32 v33];

    v40 = sub_10000F9F0();
    sub_100008E10(v40, v41);
  }
}

void sub_10005FC18(uint64_t a1)
{
  if (a1)
  {
    sub_10000FB08();
    v3 = v2;
    v4 = +[NSUUID UUID];
    v5 = [v4 UUIDString];

    v6 = objc_alloc_init(CDGetInfoRequest);
    [*(v3 + 96) ams_altDSID];
    objc_claimAutoreleasedReturnValue();
    sub_10000F9FC();
    v9 = sub_100009BF0(v7, v8);
    [(CDGetInfoRequest *)v6 setStoreAccountToken:v9];

    sub_10000FA74();
    sub_10000F850();
    sub_10000F960();
    v10 = sub_10000F870();
    sub_100008820(v10, v11, v12);

    sub_10000FAF4();
  }
}

void sub_10005FCF0(uint64_t a1)
{
  if (a1)
  {
    sub_10000FB08();
    v2 = v1;
    v3 = +[NSUUID UUID];
    v4 = [v3 UUIDString];

    v5 = +[CPSDevice currentDevice];
    v6 = objc_alloc_init(CDGetInfoRequest);
    v7 = [*(v2 + 96) ams_altDSID];
    v8 = sub_100009BF0(v7, v4);
    [(CDGetInfoRequest *)v6 setStoreAccountToken:v8];

    [(CDGetInfoRequest *)v6 setNonce:v4];
    [v5 buildVersion];
    objc_claimAutoreleasedReturnValue();
    [sub_10000F900() setDeviceBuildVersion:?];

    [v5 model];
    objc_claimAutoreleasedReturnValue();
    [sub_10000F900() setDeviceModel:?];

    sub_10000F850();
    sub_10000F960();
    v9 = sub_10000F8A4();
    sub_100008C2C(v9, v6, v10);

    sub_10000FAF4();
  }
}

void sub_10005FE20(uint64_t a1)
{
  if (a1)
  {
    sub_10000FB3C();
    v3 = v2;
    v4 = v1;
    v5 = objc_alloc_init(sub_10000FB80());
    sub_10000FB1C();
    [v6 setAuthenticationResult:?];

    sub_10000FAC4(v7, v8, v9, v10, v11, v12, v13, v14, v42, v46);
    v15 = +[CPSDevice currentDevice];
    v16 = [v15 flags];
    sub_10000FAAC(v16, v17, v18, v19, v20, v21, v22, v23, v43, v47);
    v24 = [v15 model];
    [sub_10000F884(v24 v25];

    v32 = [v15 name];
    [sub_10000F884(v32 v33];

    v40 = sub_10000F9F0();
    sub_100008E10(v40, v41);
  }
}

void sub_10005FEF4(uint64_t a1)
{
  if (a1)
  {
    sub_10000FB08();
    v2 = +[NSUUID UUID];
    v3 = [v2 UUIDString];

    v4 = objc_alloc_init(CDGetInfoRequest);
    v5 = +[ACAccountStore defaultStore];
    v6 = [v5 aa_primaryAppleAccount];

    [v6 aa_altDSID];
    objc_claimAutoreleasedReturnValue();
    sub_10000F9FC();
    v9 = sub_100009BF0(v7, v8);
    sub_10000F9B8(v9);

    sub_10000FA74();
    sub_10000F850();
    sub_10000F960();
    v10 = sub_10000F870();
    sub_100008820(v10, v11, v12);

    sub_10000FAF4();
  }
}

void sub_10005FFE8(uint64_t a1)
{
  if (a1)
  {
    sub_10000FB08();
    v2 = +[NSUUID UUID];
    v3 = [v2 UUIDString];

    v4 = objc_alloc_init(CDGetInfoRequest);
    v5 = +[ACAccountStore defaultStore];
    v6 = [v5 aa_primaryAppleAccount];

    [v6 aa_altDSID];
    objc_claimAutoreleasedReturnValue();
    sub_10000F9FC();
    v9 = sub_100009BF0(v7, v8);
    sub_10000F9B8(v9);

    sub_10000FA74();
    sub_10000F850();
    sub_10000F960();
    v10 = sub_10000F870();
    sub_100008820(v10, v11, v12);

    sub_10000FAF4();
  }
}

void sub_1000600DC(uint64_t a1)
{
  if (a1)
  {
    sub_10000F850();
    sub_10000F960();
    v3 = sub_10000BC3C;
    v4 = &unk_10008A0D0;
    v5 = v1;
    sub_100008C2C(v1, 0, v2);
  }
}

void sub_100060138(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (a1)
  {
    v8 = objc_alloc_init(CDAppSignInDidFinishAuthRequest);
    objc_opt_self();
    objc_claimAutoreleasedReturnValue();
    v9 = sub_10000FA58();

    if (v9)
    {
      [v6 authorization];
      objc_claimAutoreleasedReturnValue();
      [sub_10000F900() setAppleIDAuthorization:?];
    }

    else
    {
      objc_opt_self();
      objc_claimAutoreleasedReturnValue();
      v10 = sub_10000FA58();

      if ((v10 & 1) == 0)
      {
        objc_opt_self();
        objc_claimAutoreleasedReturnValue();
        v14 = sub_10000FA58();

        if (v14)
        {
          [(CDAppSignInDidFinishAuthRequest *)v8 setPlatformKeyCredentialAssertion:v6];
        }

        else
        {
          objc_opt_self();
          objc_claimAutoreleasedReturnValue();
          v15 = sub_10000FA58();

          if (v15)
          {
            [(CDAppSignInDidFinishAuthRequest *)v8 setPlatformKeyCredentialRegistration:v6];
          }

          else
          {
            if (v6)
            {
              v16 = cps_session_log();
              if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
              {
                v17 = 138412290;
                v18 = v6;
                _os_log_fault_impl(&_mh_execute_header, v16, OS_LOG_TYPE_FAULT, "Unexpected credential type: %@", &v17, 0xCu);
              }
            }

            [(CDAppSignInDidFinishAuthRequest *)v8 setError:v7];
          }
        }

        goto LABEL_7;
      }

      v11 = [CASPasswordCredential alloc];
      v12 = [v6 user];
      v13 = [v6 password];
      v3 = [v11 initWithUser:v12 password:v13];

      [(CDAppSignInDidFinishAuthRequest *)v8 setPasswordCredential:v3];
    }

LABEL_7:
    sub_100008E10(a1, v8);
  }
}

void sub_100060360(uint64_t a1)
{
  if (a1)
  {
    sub_10000FB3C();
    v3 = v2;
    v4 = v1;
    v5 = objc_alloc_init(sub_10000FB80());
    sub_10000FB1C();
    [v6 setWebCallbackURL:?];

    sub_10000FAC4(v7, v8, v9, v10, v11, v12, v13, v14, v17, v18);
    v15 = sub_10000F9F0();
    sub_100008E10(v15, v16);
  }
}

void sub_1000603E4(uint64_t a1)
{
  if (a1)
  {
    sub_10000FB08();
    v2 = +[NSUUID UUID];
    v3 = [v2 UUIDString];

    v4 = objc_alloc_init(CDGetInfoRequest);
    v5 = +[ACAccountStore defaultStore];
    v6 = [v5 aa_primaryAppleAccount];

    [v6 aa_altDSID];
    objc_claimAutoreleasedReturnValue();
    sub_10000F9FC();
    v9 = sub_100009BF0(v7, v8);
    sub_10000F9B8(v9);

    sub_10000FA74();
    sub_10000F850();
    sub_10000F960();
    v10 = sub_10000F870();
    sub_100008C2C(v10, v11, v12);

    sub_10000FAF4();
  }
}

id sub_1000604D8(uint64_t a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v5 = [CDUserNotificationContent notificationContentForSystemService:*(a1 + 104)];
    if (v5)
    {
      v6 = *(a1 + 104);
      if (v6 == 2)
      {
        [v4 deviceName];
        objc_claimAutoreleasedReturnValue();
        [sub_10000F8F0() addBodyArgument:?];

        v6 = *(a1 + 104);
      }

      if (v6 == 3)
      {
        v2 = +[ACAccountStore defaultStore];
        v7 = [v2 aa_primaryAppleAccount];

        [v7 username];
        objc_claimAutoreleasedReturnValue();
        [sub_10000F8F0() addBodyArgument:?];

        [v4 deviceName];
        objc_claimAutoreleasedReturnValue();
        [sub_10000F8F0() addBodyArgument:?];

        v6 = *(a1 + 104);
      }

      if (v6 == 4)
      {
        [v4 deviceName];
        objc_claimAutoreleasedReturnValue();
        [sub_10000F8F0() addBodyArgument:?];
      }

      v8 = [CUUserNotificationSession cad_sessionWithContent:v5];
      [v8 setDispatchQueue:*(a1 + 208)];
      sub_10000F8D4();
      sub_10000F98C();
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void sub_100060674(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    v4 = a3;
    v44 = objc_alloc_init(CDSystemAuthenticationDidFinishAuthRequest);
    v5 = [(CDSystemAuthenticationDidFinishAuthRequest *)v44 setEnabled:a2];
    sub_10000FAC4(v5, v6, v7, v8, v9, v10, v11, v12, v40, v44);

    v13 = +[CPSDevice currentDevice];
    v14 = [v13 flags];
    sub_10000FAAC(v14, v15, v16, v17, v18, v19, v20, v21, v41, v45);
    v22 = [v13 model];
    [sub_10000F884(v22 v23];

    v30 = [v13 name];
    [sub_10000F884(v30 v31];

    v38 = sub_10000F9F0();
    sub_100008E10(v38, v39);
  }
}

void sub_100060760(uint64_t a1)
{
  if (a1)
  {
    sub_10000FB08();
    v2 = +[NSUUID UUID];
    v3 = [v2 UUIDString];

    v4 = objc_alloc_init(CDGetInfoRequest);
    v5 = +[ACAccountStore defaultStore];
    v6 = [v5 aa_primaryAppleAccount];

    [v6 aa_altDSID];
    objc_claimAutoreleasedReturnValue();
    sub_10000F9FC();
    v9 = sub_100009BF0(v7, v8);
    sub_10000F9B8(v9);

    sub_10000FA74();
    sub_10000F850();
    sub_10000F960();
    v10 = sub_10000F870();
    sub_100008C2C(v10, v11, v12);

    sub_10000FAF4();
  }
}

id sub_100060854(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = GestaltCopyAnswer();
    v5 = v4;
    if (!v4)
    {
      v5 = +[NSNull null];
    }

    v11[0] = v5;
    v6 = [v3 deviceName];
    v7 = v6;
    if (!v6)
    {
      v7 = +[NSNull null];
    }

    v11[1] = v7;
    v8 = [NSArray arrayWithObjects:v11 count:2];
    if (!v6)
    {
    }

    if (!v4)
    {
    }

    v9 = objc_alloc_init(CUUserNotificationSession);
    [v9 setFlags:1];
    [v9 setIdentifier:*(a1 + 192)];
    [v9 setBundleID:@"com.apple.CompanionNotifications"];
    [v9 setCategoryID:@"CDUserNotificationCategoryGeneric"];
    [v9 setTitleKey:@"Apple TV"];
    [v9 setBodyKey:@"Use your %@ to share from “%@”."];
    [v9 setBodyArguments:v8];
    [v9 setDispatchQueue:*(a1 + 208)];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void sub_100060A04(uint64_t a1, void *a2)
{
  if (a1)
  {
    v5 = a2;
    sub_100008A04(a1);
    v3 = sub_10000F9F0();
    sub_10000CD10(v3, v4);
  }
}

void sub_100060A60(uint64_t a1, void *a2)
{
  if (a1)
  {
    v3 = a2;
    v4 = objc_alloc_init(sub_10000FA4C());
    sub_10000FB68(v4, v5);

    v6 = sub_10000F9F0();
    sub_100008E10(v6, v7);
  }
}

void sub_100060AD0(uint64_t a1)
{
  if (a1)
  {
    sub_10000FB08();
    v2 = +[NSUUID UUID];
    v3 = [v2 UUIDString];

    v4 = objc_alloc_init(CDGetInfoRequest);
    v5 = +[ACAccountStore defaultStore];
    v6 = [v5 aa_primaryAppleAccount];

    [v6 aa_altDSID];
    objc_claimAutoreleasedReturnValue();
    sub_10000F9FC();
    v9 = sub_100009BF0(v7, v8);
    sub_10000F9B8(v9);

    sub_10000FA74();
    sub_10000F850();
    sub_10000F960();
    v10 = sub_10000F870();
    sub_100008C2C(v10, v11, v12);

    sub_10000FAF4();
  }
}

id sub_100060BC4(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = v4;
  if (a1)
  {
    v6 = +[CDUserNotificationContent restrictedAccessContentForRestrictionType:](CDUserNotificationContent, "restrictedAccessContentForRestrictionType:", [v4 restrictionType]);
    if (v6)
    {
      [v5 currentUserName];
      objc_claimAutoreleasedReturnValue();
      [sub_10000F8F0() addBodyArgument:?];

      [v5 deviceName];
      objc_claimAutoreleasedReturnValue();
      [sub_10000F8F0() addBodyArgument:?];

      v7 = [CUUserNotificationSession cad_sessionWithContent:v6];
      [v7 setDispatchQueue:*(a1 + 208)];
      sub_10000F8D4();
      sub_10000F98C();
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void sub_100060CE8(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    v4 = a3;
    v44 = objc_alloc_init(CDRestrictedAccesssDidFinishAuthRequest);
    v5 = [(CDRestrictedAccesssDidFinishAuthRequest *)v44 setApproved:a2];
    sub_10000FAC4(v5, v6, v7, v8, v9, v10, v11, v12, v40, v44);

    v13 = +[CPSDevice currentDevice];
    v14 = [v13 flags];
    sub_10000FAAC(v14, v15, v16, v17, v18, v19, v20, v21, v41, v45);
    v22 = [v13 model];
    [sub_10000F884(v22 v23];

    v30 = [v13 name];
    [sub_10000F884(v30 v31];

    v38 = sub_10000F9F0();
    sub_100008E10(v38, v39);
  }
}

void sub_100060ED8(uint64_t a1)
{
  if (a1)
  {
    v1 = objc_alloc_init(CDGetInfoRequest);
    sub_10000F850();
    sub_10000F960();
    v2 = sub_10000F8A4();
    sub_100008C2C(v2, v1, v3);
  }
}

id sub_100060F50(uint64_t a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v5 = +[CDUserNotificationContent tvProviderContent];
    if (v5)
    {
      [v4 providerName];
      objc_claimAutoreleasedReturnValue();
      [sub_10000F96C() addBodyArgument:?];

      [v4 deviceName];
      objc_claimAutoreleasedReturnValue();
      [sub_10000F96C() addBodyArgument:?];

      v6 = [CUUserNotificationSession cad_sessionWithContent:v5];
      [v6 setDispatchQueue:*(a1 + 208)];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_100061020(uint64_t a1)
{
  if (a1)
  {
    v1 = objc_alloc_init(CDGetInfoRequest);
    sub_10000F850();
    sub_10000F960();
    v2 = sub_10000F8A4();
    sub_100008C2C(v2, v1, v3);
  }
}

id sub_100061098(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = +[CDUserNotificationContent learnMoreContent];
    if (v4)
    {
      v5 = [v3 URL];
      v6 = [v5 host];
      v7 = [v5 path];
      v8 = [v6 stringByAppendingString:v7];

      [v4 addBodyArgument:v8];
      v9 = [v3 deviceName];
      [v4 addBodyArgument:v9];

      v10 = [CUUserNotificationSession cad_sessionWithContent:v4];
      [v10 setDispatchQueue:*(a1 + 208)];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void sub_1000611BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  sub_10000FB08();
  a20 = v22;
  a21 = v25;
  if (v23)
  {
    v26 = v23;
    v27 = v24;
    [sub_10000FA4C() defaultWorkspace];
    objc_claimAutoreleasedReturnValue();
    v28 = [sub_10000FB80() URL];

    a11 = FBSOpenApplicationOptionKeyPromptUnlockDevice;
    a12 = &__kCFBooleanTrue;
    [NSDictionary dictionaryWithObjects:&a12 forKeys:&a11 count:1];
    objc_claimAutoreleasedReturnValue();
    v29 = [sub_10000FA4C() openURL:v28 withOptions:v21];

    if ((v29 & 1) == 0)
    {
      v30 = cps_session_log();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        LODWORD(a9) = 138412290;
        *(&a9 + 4) = 0;
        sub_10000FA08(&_mh_execute_header, v30, v31, "Failed to open Learn More URL: %@", &a9);
      }
    }

    sub_1000612F4(v26);
  }

  sub_10000FAF4();
}

void sub_1000612F4(uint64_t a1)
{
  if (a1)
  {
    v32 = objc_alloc_init(CDLearnMoreDidFinishRequest);
    v2 = +[CPSDevice currentDevice];
    v3 = [v2 flags];
    sub_10000FAAC(v3, v4, v5, v6, v7, v8, v9, v10, v29, v32);
    v11 = [v2 model];
    [sub_10000F884(v11 v12];

    v19 = [v2 name];
    [sub_10000F884(v19 v20];

    v27 = sub_10000F9F0();
    sub_100008E10(v27, v28);
  }
}

id sub_1000613A8(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = v4;
  if (a1)
  {
    v6 = +[CDUserNotificationContent dedicatedCameraContentForDeviceType:](CDUserNotificationContent, "dedicatedCameraContentForDeviceType:", [v4 deviceType]);
    if (v6)
    {
      [v5 deviceName];
      objc_claimAutoreleasedReturnValue();
      [sub_10000F8F0() addBodyArgument:?];

      v7 = [CUUserNotificationSession cad_sessionWithContent:v6];
      [v7 setDispatchQueue:*(a1 + 208)];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void sub_100061468(uint64_t a1)
{
  [*(a1 + 32) invalidate];
  v2 = *(a1 + 40);

  sub_10005E3C0(v2);
}

void sub_1000615E8(uint64_t a1)
{
  if (a1)
  {
    v3 = +[CPSDevice currentDevice];
    v4 = objc_alloc_init(CDGetInfoRequest);
    -[CDGetInfoRequest setDeviceFlags:](v4, "setDeviceFlags:", [v3 flags]);
    [v3 model];
    objc_claimAutoreleasedReturnValue();
    [sub_10000F8F0() setDeviceModel:?];

    [v3 name];
    objc_claimAutoreleasedReturnValue();
    [sub_10000F8F0() setDeviceName:?];

    v5 = +[NSUUID UUID];
    v6 = [v5 UUIDString];

    v7 = +[ACAccountStore defaultStore];
    v8 = [v7 aa_primaryAppleAccount];

    v9 = [v8 aa_altDSID];
    v10 = sub_100009BF0(v9, v6);
    [(CDGetInfoRequest *)v4 setAppleAccountToken:v10];

    [(CDGetInfoRequest *)v4 setNonce:v6];
    sub_10000F850();
    sub_10000F960();
    v12 = sub_10000DF7C;
    v13 = &unk_10008A0D0;
    v14 = a1;
    sub_100008C2C(a1, v4, v11);
  }
}

id sub_10006176C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = +[CDUserNotificationContent continueOnContent];
    if (v7)
    {
      v8 = [v5 notificationTitleOverride];

      if (v8)
      {
        [v5 notificationTitleOverride];
        objc_claimAutoreleasedReturnValue();
        [sub_10000F900() setTitleKey:?];
      }

      else
      {
        [v5 deviceName];
        objc_claimAutoreleasedReturnValue();
        [sub_10000F900() addTitleArgument:?];
      }

      v10 = [v5 notificationBodyOverride];

      if (v10)
      {
        [v5 notificationBodyOverride];
        objc_claimAutoreleasedReturnValue();
        [sub_10000F900() setBodyKey:?];
      }

      else
      {
        v10 = [[LSApplicationRecord alloc] initWithBundleIdentifier:v6 allowPlaceholder:0 error:0];
        v11 = [v10 localizedName];
        v12 = v11;
        if (v11)
        {
          v13 = v11;
        }

        else
        {
          v13 = &stru_10008C138;
        }

        [v7 addBodyArgument:v13];
      }

      v14 = [v5 deviceModel];

      if (v14)
      {
        v15 = [v5 deviceModel];
        v16 = [UTType _typeWithDeviceModelCode:v15];

        v17 = [v16 identifier];
        v18 = [ISSymbol symbolForTypeIdentifier:v17 error:0];
        v19 = [v18 name];

        if (v19)
        {
          [v7 setIconSystemName:v19];
        }
      }

      v9 = [CUUserNotificationSession cad_sessionWithContent:v7];
      [v9 setDispatchQueue:*(a1 + 208)];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void sub_100061988(uint64_t a1, void *a2)
{
  if (a1)
  {
    v3 = a2;
    v4 = objc_alloc_init(sub_10000FA4C());
    sub_10000FB68(v4, v5);

    v6 = sub_10000F9F0();
    sub_100008E10(v6, v7);
  }
}

void sub_1000619F8(uint64_t a1)
{
  if (a1)
  {
    sub_10000FB08();
    v2 = +[NSUUID UUID];
    v3 = [v2 UUIDString];

    v4 = objc_alloc_init(CDGetInfoRequest);
    v5 = +[ACAccountStore defaultStore];
    v6 = [v5 aa_primaryAppleAccount];

    [v6 aa_altDSID];
    objc_claimAutoreleasedReturnValue();
    sub_10000F9FC();
    v9 = sub_100009BF0(v7, v8);
    sub_10000F9B8(v9);

    sub_10000FA74();
    sub_10000F850();
    sub_10000F960();
    v10 = sub_10000F870();
    sub_100008C2C(v10, v11, v12);

    sub_10000FAF4();
  }
}

id sub_100061AEC(uint64_t a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v5 = +[CDUserNotificationContent unrecognizedUserContent];
    if (v5)
    {
      [v4 deviceName];
      objc_claimAutoreleasedReturnValue();
      [sub_10000F96C() addBodyArgument:?];

      v6 = [CUUserNotificationSession cad_sessionWithContent:v5];
      [v6 setDispatchQueue:*(a1 + 208)];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_100061B9C(uint64_t a1, void *a2)
{
  if (a1)
  {
    v3 = a2;
    v4 = objc_alloc_init(sub_10000FA4C());
    sub_10000FB68(v4, v5);

    v6 = +[CPSDevice currentDevice];
    v7 = [v6 flags];
    sub_10000FAAC(v7, v8, v9, v10, v11, v12, v13, v14, v33, v36);
    v15 = [v6 model];
    [sub_10000F884(v15 v16];

    v23 = [v6 name];
    [sub_10000F884(v23 v24];

    v31 = sub_10000F9F0();
    sub_100008E10(v31, v32);
  }
}

void sub_100061C5C(uint64_t a1)
{
  v4 = cps_session_log();
  if (sub_10000FA34(v4))
  {
    sub_10000F894();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
  }

  [*(*(a1 + 32) + 48) invalidate];
  v10 = *(a1 + 32);
  v11 = *(v10 + 48);
  *(v10 + 48) = 0;

  v12 = *(a1 + 32);
  v15 = NSDebugDescriptionErrorKey;
  v16 = @"User canceled on notification.";
  [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  objc_claimAutoreleasedReturnValue();
  [sub_10000FA8C() errorWithDomain:? code:? userInfo:?];
  objc_claimAutoreleasedReturnValue();
  v13 = sub_10000FA9C();
  sub_100061B9C(v13, v14);
}

void sub_100061D78(uint64_t a1)
{
  if (a1)
  {
    sub_10000FB08();
    v2 = +[NSUUID UUID];
    v3 = [v2 UUIDString];

    v4 = objc_alloc_init(CDGetInfoRequest);
    v5 = +[ACAccountStore defaultStore];
    v6 = [v5 aa_primaryAppleAccount];

    [v6 aa_altDSID];
    objc_claimAutoreleasedReturnValue();
    sub_10000F9FC();
    v9 = sub_100009BF0(v7, v8);
    sub_10000F9B8(v9);

    sub_10000FA74();
    sub_10000F850();
    sub_10000F960();
    v10 = sub_10000F870();
    sub_100008C2C(v10, v11, v12);

    sub_10000FAF4();
  }
}

void sub_100061E6C(uint64_t a1)
{
  if (a1)
  {
    sub_10000FB3C();
    v3 = v2;
    v4 = v1;
    v5 = objc_alloc_init(sub_10000FB80());
    sub_10000FB1C();
    [v6 setValues:?];

    sub_10000FAC4(v7, v8, v9, v10, v11, v12, v13, v14, v42, v46);
    v15 = +[CPSDevice currentDevice];
    v16 = [v15 flags];
    sub_10000FAAC(v16, v17, v18, v19, v20, v21, v22, v23, v43, v47);
    v24 = [v15 model];
    [sub_10000F884(v24 v25];

    v32 = [v15 name];
    [sub_10000F884(v32 v33];

    v40 = sub_10000F9F0();
    sub_100008E10(v40, v41);
  }
}

void sub_100061F40(uint64_t a1)
{
  if (a1)
  {
    sub_10000FB08();
    v2 = +[NSUUID UUID];
    v3 = [v2 UUIDString];

    v4 = objc_alloc_init(CDGetInfoRequest);
    v5 = +[ACAccountStore defaultStore];
    v6 = [v5 aa_primaryAppleAccount];

    [v6 aa_altDSID];
    objc_claimAutoreleasedReturnValue();
    sub_10000F9FC();
    v9 = sub_100009BF0(v7, v8);
    sub_10000F9B8(v9);

    sub_10000FA74();
    sub_10000F850();
    sub_10000F960();
    v10 = sub_10000F870();
    sub_100008C2C(v10, v11, v12);

    sub_10000FAF4();
  }
}

id sub_100062034(uint64_t a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v5 = +[CDUserNotificationContent incomingCallsContent];
    if (v5)
    {
      [v4 deviceName];
      objc_claimAutoreleasedReturnValue();
      [sub_10000F96C() addBodyArgument:?];

      v6 = [CUUserNotificationSession cad_sessionWithContent:v5];
      [v6 setDispatchQueue:*(a1 + 208)];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_1000620E4(uint64_t a1, void *a2)
{
  if (a1)
  {
    v3 = a2;
    v4 = objc_alloc_init(sub_10000FA4C());
    sub_10000FB68(v4, v5);

    v6 = +[CPSDevice currentDevice];
    v7 = [v6 flags];
    sub_10000FAAC(v7, v8, v9, v10, v11, v12, v13, v14, v33, v36);
    v15 = [v6 model];
    [sub_10000F884(v15 v16];

    v23 = [v6 name];
    [sub_10000F884(v23 v24];

    v31 = sub_10000F9F0();
    sub_100008E10(v31, v32);
  }
}

void sub_1000621A4(uint64_t a1)
{
  v4 = cps_session_log();
  if (sub_10000FA34(v4))
  {
    sub_10000F894();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
  }

  [*(*(a1 + 32) + 48) invalidate];
  v10 = *(a1 + 32);
  v11 = *(v10 + 48);
  *(v10 + 48) = 0;

  v12 = *(a1 + 32);
  v15 = NSDebugDescriptionErrorKey;
  v16 = @"User canceled on notification.";
  [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  objc_claimAutoreleasedReturnValue();
  [sub_10000FA8C() errorWithDomain:? code:? userInfo:?];
  objc_claimAutoreleasedReturnValue();
  v13 = sub_10000FA9C();
  sub_1000620E4(v13, v14);
}

void sub_1000622C0()
{
  sub_10000FA28();
  sub_10000F938();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000623CC(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *a1 = 134217984;
  *(a1 + 4) = a2;
  sub_10000FA08(&_mh_execute_header, a3, a3, "Received unknown auth type: %ld", a1);
}

void sub_10006240C()
{
  sub_10000FA28();
  sub_10000F938();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100062448(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, a1, OS_LOG_TYPE_DEFAULT, "Continue On session: Me device is not this device.", v2, 2u);
  }
}

void sub_1000624A4(uint64_t a1)
{
  v3 = cps_session_log();
  if (sub_10000FA34(v3))
  {
    sub_10000F894();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
  }

  sub_10005E3C0(a1);
}

void sub_100062508(uint64_t a1)
{
  v3 = cps_session_log();
  if (sub_10000FA34(v3))
  {
    sub_10000F894();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
  }

  sub_10005E3C0(a1);
}

void sub_10006256C(uint64_t a1)
{
  v3 = cps_session_log();
  if (sub_10000FA34(v3))
  {
    sub_10000F894();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
  }

  sub_10005E3C0(a1);
}

void sub_1000625D0(void *a1)
{
  v3 = cps_session_log();
  if (sub_10000FA34(v3))
  {
    sub_10000F894();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
  }

  if (!a1[8])
  {
    sub_10005F538(a1);
  }
}

void sub_100062640(uint64_t a1)
{
  v3 = cps_session_log();
  if (sub_10000FA34(v3))
  {
    sub_10000F894();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
  }

  sub_10005E3C0(a1);
}

void sub_1000626A4(uint64_t a1)
{
  v3 = cps_session_log();
  if (sub_10000FA34(v3))
  {
    sub_10000F894();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
  }

  sub_10005E3C0(a1);
}

void sub_100062708(void *a1)
{
  v3 = cps_session_log();
  if (sub_10000FA34(v3))
  {
    sub_10000F894();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
  }

  if (!a1[8])
  {
    sub_10005F538(a1);
  }
}

void sub_100062848(NSObject *a1, void *a2)
{
  if (sub_10000FA34(a1))
  {
    sub_10000F894();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
  }

  *a2 = v2;
}

void sub_10006289C()
{
  sub_10000FA28();
  sub_10000F938();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100062940(uint64_t a1, uint64_t a2)
{
  v3 = [[CPSStorePurchaseResponse alloc] initWithPurchaseResult:a1];
  sub_10005ED54(a2, v3);
}

void sub_100062BAC(char *a1, uint64_t a2)
{
  v4 = [NSString stringWithFormat:@"Invalid condition not satisfying: %@", @"webRequest != ((void*)0)"];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    sub_10000FB80();
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    *buf = 138544642;
    v9 = a1;
    v10 = 2114;
    v11 = v6;
    v12 = 2048;
    v13 = a2;
    v14 = 2114;
    v15 = @"CDProviderSession.m";
    v16 = 1024;
    v17 = 1794;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  v7 = v4;
  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void sub_100062DB0()
{
  sub_10000FA28();
  sub_10000F938();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100062DEC()
{
  sub_10000FA28();
  sub_10000F938();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100062E90(uint64_t a1)
{
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 64));
    if ((*(a1 + 49) & 1) == 0)
    {
      *(a1 + 49) = 1;
      v2 = [*(a1 + 24) remoteObjectProxyWithErrorHandler:&stru_10008A670];
      [v2 cancel];

      [*(a1 + 16) invalidate];
      v3 = *(a1 + 16);
      *(a1 + 16) = 0;

      [*(a1 + 24) invalidate];
      v4 = *(a1 + 24);
      *(a1 + 24) = 0;

      [*(a1 + 32) invalidate];
      v5 = *(a1 + 32);
      *(a1 + 32) = 0;

      v6 = *(a1 + 56);
      if (v6)
      {
        v7 = sub_100010AA4(v6);
        v8(v7, 1, 0);
        v9 = *(a1 + 56);
        *(a1 + 56) = 0;
      }

      v10 = *(a1 + 128);
      if (v10)
      {
        v11 = NSErrorF();
        (*(v10 + 16))(v10, 0, v11);

        v12 = *(a1 + 128);
        *(a1 + 128) = 0;
      }

      v13 = *(a1 + 72);
      if (v13)
      {
        v14 = sub_100010AA4(v13);
        v15(v14);
        v16 = *(a1 + 72);
        *(a1 + 72) = 0;
      }
    }
  }
}

void sub_100062FE4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v9 = v3;
    *(a1 + 48) = 1;
    if (*(a1 + 88))
    {
      sub_100063090(a1);
      sub_100063100(a1);
      v7 = sub_100010AA4(v9);
      v8(v7, 0);
    }

    else
    {
      v4 = NSErrorWithOSStatusF();
      v5 = sub_100010AA4(v9);
      v6(v5, v4);
    }

    v3 = v9;
  }
}

id sub_100063090(id result)
{
  if (result)
  {
    v1 = result;
    v2 = +[NSXPCListener anonymousListener];
    v3 = *(v1 + 2);
    *(v1 + 2) = v2;

    [*(v1 + 2) _setQueue:*(v1 + 8)];
    [*(v1 + 2) setDelegate:v1];
    v4 = *(v1 + 2);

    return [v4 resume];
  }

  return result;
}

void sub_100063100(uint64_t a1)
{
  if (a1)
  {
    v7 = [[SBSRemoteAlertDefinition alloc] initWithServiceName:@"com.apple.CompanionViewService" viewControllerClassName:*(a1 + 88)];
    v2 = objc_alloc_init(SBSRemoteAlertConfigurationContext);
    v3 = [*(a1 + 16) endpoint];
    v4 = [v3 _endpoint];
    [v2 setXpcEndpoint:v4];

    sub_10006323C(a1);
    objc_claimAutoreleasedReturnValue();
    [sub_100010AB0() setUserInfo:?];

    v5 = [SBSRemoteAlertHandle newHandleWithDefinition:v7 configurationContext:v2];
    v6 = *(a1 + 32);
    *(a1 + 32) = v5;

    [*(a1 + 32) registerObserver:a1];
    [*(a1 + 32) activateWithContext:0];
  }
}

id *sub_100063200(id *a1)
{
  if (a1)
  {
    a1 = [a1[3] remoteObjectProxyWithErrorHandler:&stru_10008A670];
    v1 = vars8;
  }

  return a1;
}

void *sub_10006323C(void *a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = +[NSMutableDictionary dictionary];
    v3 = sub_1000632C0(v1);
    [v2 setObject:v3 forKeyedSubscript:@"presentationContextData"];

    v1 = [v2 copy];
  }

  return v1;
}

void *sub_1000632C0(void *a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = objc_alloc_init(CPSViewServicePresentationContext);
    [v2 setDeviceName:v1[10]];
    [v2 setSystemAuthenticationRequest:v1[13]];
    [v2 setWebAuthenticationRequest:v1[14]];
    [v2 setProxiedAppDomains:v1[15]];
    [v2 setSharingData:v1[12]];
    [v2 setRestrictedAccessRequest:v1[17]];
    [v2 setStoreAuthenticationRequest:v1[18]];
    [v2 setTvProviderRequest:v1[20]];
    [v2 setDedicatedCameraRequest:v1[21]];
    v6 = 0;
    v1 = [NSKeyedArchiver archivedDataWithRootObject:v2 requiringSecureCoding:1 error:&v6];
    v3 = v6;
    if (!v1)
    {
      v4 = cps_daemon_log();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v8 = v3;
        _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Failed to encode presentation context: %@", buf, 0xCu);
      }
    }
  }

  return v1;
}

void sub_100063440(uint64_t a1)
{
  v2 = sub_100010AC0(a1);
  if (v2)
  {
    v4 = sub_100010A94(v2);
    v5(v4, 2);
    sub_100010AD0();
    v3 = *(v1 + 32);
  }

  sub_100062E90(v3);
}

void sub_10006352C(uint64_t a1)
{
  v2 = sub_100010AC0(a1);
  if (v2)
  {
    v4 = sub_100010A94(v2);
    v5(v4, 2);
    sub_100010AD0();
    v3 = *(v1 + 32);
  }

  sub_100062E90(v3);
}

void sub_100063578(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 128);
  if (v3)
  {
    v4 = *(a1 + 40);
    v5 = sub_100010AA4(v3);
    v6(v5);
    v7 = *(a1 + 32);
    v8 = *(v7 + 128);
    *(v7 + 128) = 0;

    v2 = *(a1 + 32);
  }

  sub_100062E90(v2);
}

void sub_1000635DC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 128);
  if (v3)
  {
    v4 = sub_100010A94(v3);
    v5(v4, 0);
    v6 = *(a1 + 32);
    v7 = *(v6 + 128);
    *(v6 + 128) = 0;

    v2 = *(a1 + 32);
  }

  sub_100062E90(v2);
}

void sub_100063640(uint64_t a1)
{
  v2 = sub_100010AC0(a1);
  if (v2)
  {
    v4 = sub_100010A94(v2);
    v5(v4, 2);
    sub_100010AD0();
    v3 = *(v1 + 32);
  }

  sub_100062E90(v3);
}

void sub_10006368C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "remoteViewService proxy error: %@", &v2, 0xCu);
}

void sub_100063704(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "View service invalidated: %@, error: %@", &v3, 0x16u);
}

void sub_1000637E4(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to start rapport discovery: %@", &v2, 0xCu);
}

void sub_10006385C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Device found with nil IDS identifier: %@", &v2, 0xCu);
}

void sub_1000638D4(uint64_t a1)
{
  v1 = 138412290;
  v2 = a1;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Failed to archive: %@", &v1, 0xCu);
}

void sub_100063954(uint64_t a1)
{
  v1 = 138412290;
  v2 = a1;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Failed to unarchive: %@", &v1, 0xCu);
}

id sub_1000639D4(id a1, void *a2, void *a3)
{
  v5 = a3;
  if (a1)
  {
    v6 = a2;
    v7 = [a1 request];
    v8 = [v7 appleAccountAltDSID];
    v9 = v8;
    v10 = 0;
    if (v5 && v8)
    {
      v11 = [NSString stringWithFormat:@"%@+%@", v8, v5];
      v12 = [v11 dataUsingEncoding:4];
      if (v12)
      {
        v13 = malloc_type_malloc(0x40uLL, 0xFD9CD80CuLL);
        [v12 bytes];
        [v12 length];
        CryptoHashOneShot();
        v10 = [NSData dataWithBytesNoCopy:v13 length:64 freeWhenDone:1];
      }

      else
      {
        v10 = 0;
      }
    }

    a1 = [v10 isEqualToData:v6];
  }

  return a1;
}

uint64_t sub_100063B78(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = [a1 request];
    v8 = [v7 approversAppleAccountAltDSIDs];

    v13 = sub_10001AC2C(v9, v10, v11, v12);
    if (v13)
    {
      v14 = v13;
      v15 = MEMORY[0];
      while (2)
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (MEMORY[0] != v15)
          {
            objc_enumerationMutation(v8);
          }

          v17 = 0;
          if (v6 && *(8 * i))
          {
            v18 = [NSString stringWithFormat:@"%@+%@", *(8 * i), v6];
            v19 = [v18 dataUsingEncoding:4];
            if (v19)
            {
              v20 = malloc_type_malloc(0x40uLL, 0xFD9CD80CuLL);
              [v19 bytes];
              [v19 length];
              CryptoHashOneShot();
              v17 = [NSData dataWithBytesNoCopy:v20 length:64 freeWhenDone:1];
            }

            else
            {
              v17 = 0;
            }
          }

          if ([v17 isEqualToData:v5])
          {

            a1 = 1;
            goto LABEL_18;
          }
        }

        v14 = sub_10001AC2C(v21, v22, v23, v24);
        if (v14)
        {
          continue;
        }

        break;
      }
    }

    a1 = 0;
  }

LABEL_18:

  return a1;
}

void sub_100063DC4(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    sub_10000F8B4();
    v4[1] = 3221225472;
    v4[2] = sub_10001AF18;
    v4[3] = &unk_10008A7A8;
    v4[4] = a1;
    v5 = v3;
    [a1 _prepareForActivationWithCompletionHandler:v4];
  }
}

void sub_100063E44(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    [a1 _requireOwnerDevice];
    v4 = objc_alloc_init(RPCompanionLinkClient);
    v5 = *(a1 + 16);
    *(a1 + 16) = v4;

    [*(a1 + 16) setDispatchQueue:*(a1 + 64)];
    [a1 _configureRapportClient:*(a1 + 16)];
    v6 = *(a1 + 16);
    v32 = _NSConcreteStackBlock;
    v33 = 3221225472;
    v34 = sub_10001B078;
    v35 = &unk_10008A780;
    v36 = a1;
    sub_10001C0FC();
    [v7 cad_registerRequestID:? options:? requireOwnerDevice:? handler:?];
    v8 = *(a1 + 16);
    v27 = _NSConcreteStackBlock;
    v28 = 3221225472;
    v29 = sub_10001B444;
    v30 = &unk_10008A7D0;
    v31 = a1;
    sub_10001C0FC();
    [v9 cad_registerEventID:? options:? requireOwnerDevice:? handler:?];
    v10 = *(a1 + 16);
    v22 = _NSConcreteStackBlock;
    v23 = 3221225472;
    v24 = sub_10001B644;
    v25 = &unk_10008A780;
    v26 = a1;
    sub_10001C0FC();
    [v11 cad_registerRequestID:? options:? requireOwnerDevice:? handler:?];
    v12 = *(a1 + 16);
    v17 = _NSConcreteStackBlock;
    v18 = 3221225472;
    v19 = sub_10001B870;
    v20 = &unk_10008A7D0;
    v21 = a1;
    sub_10001C0FC();
    [v13 cad_registerEventID:? options:? requireOwnerDevice:? handler:?];
    v14 = *(a1 + 16);
    sub_10000F8B4();
    v15[1] = 3221225472;
    v15[2] = sub_10001BA44;
    v15[3] = &unk_10008A7A8;
    v15[4] = a1;
    v16 = v3;
    [v14 activateWithCompletion:v15];
  }
}

id sub_10006406C(id result)
{
  if (result)
  {
    v1 = result;
    v2 = objc_alloc_init(CDIDSService);
    v3 = *(v1 + 5);
    *(v1 + 5) = v2;

    [*(v1 + 5) setDispatchQueue:*(v1 + 8)];
    v4 = *(v1 + 5);

    return [v4 activate];
  }

  return result;
}

void sub_1000640CC(id *a1)
{
  if (a1)
  {
    v2 = [a1 _idsMessageRecipientUsernames];
    if ([v2 count])
    {
      [a1[5] sendMessage:0 toUsernames:v2];
    }

    else
    {
      v3 = cps_session_log();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        sub_10001C108(&_mh_execute_header, v4, v5, "IDS recipient usernames is nil or empty. Will not send message.", v6, v7, v8, v9, 0);
      }
    }
  }
}

void sub_100064160(id *a1)
{
  if (a1)
  {
    v2 = [a1 _idsMessageRecipientUsernames];
    if ([v2 count])
    {
      [a1[5] sendMessage:1 toUsernames:v2];
    }

    else
    {
      v3 = cps_session_log();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        sub_10001C108(&_mh_execute_header, v4, v5, "IDS recipient usernames is nil or empty. Will not send message.", v6, v7, v8, v9, 0);
      }
    }
  }
}

void sub_1000641F4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = objc_alloc_init(SFService);
    v5 = *(a1 + 24);
    *(a1 + 24) = v4;

    [*(a1 + 24) setDispatchQueue:*(a1 + 64)];
    [*(a1 + 24) setDeviceActionType:{objc_msgSend(a1, "_deviceActionType")}];
    v6 = *(a1 + 24);
    v7 = +[NSUUID UUID];
    v8 = [v7 UUIDString];
    [v6 setIdentifier:v8];

    [*(a1 + 24) setAdvertiseRate:50];
    v9 = *(a1 + 24);
    sub_10000F8B4();
    v10[1] = 3221225472;
    v10[2] = sub_10001BAAC;
    v10[3] = &unk_10008A7A8;
    v10[4] = a1;
    v11 = v3;
    [v9 activateWithCompletion:v10];
  }
}

void sub_100064308(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Rejecting get notif info request: %@", &v2, 0xCu);
}

void sub_100064380(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Authentication session failed: %@", &v2, 0xCu);
}

void *sub_1000643F8(void *a1, void *a2, void *a3)
{
  v5 = a3;
  if (a1)
  {
    v6 = a1[16];
    v7 = a2;
    v8 = [v6 ams_altDSID];
    v9 = v8;
    v10 = 0;
    if (v5 && v8)
    {
      v11 = [NSString stringWithFormat:@"%@+%@", v8, v5];
      v12 = [v11 dataUsingEncoding:4];
      if (v12)
      {
        v13 = malloc_type_malloc(0x40uLL, 0xFD9CD80CuLL);
        [v12 bytes];
        [v12 length];
        CryptoHashOneShot();
        v10 = [NSData dataWithBytesNoCopy:v13 length:64 freeWhenDone:1];
      }

      else
      {
        v10 = 0;
      }
    }

    a1 = [v10 isEqualToData:v7];
  }

  return a1;
}

void *sub_1000645BC(void *a1, void *a2, void *a3)
{
  v5 = a3;
  if (a1)
  {
    v6 = a1[16];
    v7 = a2;
    v8 = [v6 ams_altDSID];
    v9 = v8;
    v10 = 0;
    if (v5 && v8)
    {
      v11 = [NSString stringWithFormat:@"%@+%@", v8, v5];
      v12 = [v11 dataUsingEncoding:4];
      if (v12)
      {
        v13 = malloc_type_malloc(0x40uLL, 0xFD9CD80CuLL);
        [v12 bytes];
        [v12 length];
        CryptoHashOneShot();
        v10 = [NSData dataWithBytesNoCopy:v13 length:64 freeWhenDone:1];
      }

      else
      {
        v10 = 0;
      }
    }

    a1 = [v10 isEqualToData:v7];
  }

  return a1;
}

void sub_100064754(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to load legacy purchase request: %@", &v3, 0xCu);
}

void sub_1000647D0(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v8 = v3;
    v4 = [v3 domain];
    if ([v4 isEqualToString:CPSErrorDomain])
    {
      v5 = [v8 code];

      if (v5 == 104)
      {
        v6 = 2;
LABEL_7:
        v7 = [a1 request];
        +[CPSMetrics sendSystemSessionCompletedEvent:](CPSMetrics, "sendSystemSessionCompletedEvent:", [v7 service], v6);

        v3 = v8;
        goto LABEL_8;
      }
    }

    else
    {
    }

    v6 = 3;
    goto LABEL_7;
  }

LABEL_8:
}

void sub_100064978(uint64_t a1, void *a2)
{
  v20 = sub_100020CFC(a1, a2);
  v6 = v2;
  v7 = v3;
  if (v4)
  {
    if ([v20 hasStorePurchaseEntitlement])
    {
      WeakRetained = objc_loadWeakRetained((v4 + 16));
      sub_100020CD8(WeakRetained, v9, v10, v11, v12, v13, v14, v15, v19, v20);
    }

    else
    {
      sub_100020D3C();
      [v16 errorWithDomain:? code:? userInfo:?];
      objc_claimAutoreleasedReturnValue();
      v17 = sub_100020CC0();
      v18(v17);
    }
  }
}

void sub_100064A24(uint64_t a1, void *a2)
{
  v21 = sub_100020CFC(a1, a2);
  v5 = v2;
  v6 = v3;
  if (v4)
  {
    v7 = [v5 overrideBundleIdentifier];

    if (v7)
    {
      if ([v21 hasAppSignInOverrideBundleIdentifierEntitlement])
      {
        if (_BSIsInternalInstall())
        {
          goto LABEL_5;
        }

        v16 = CPSErrorDomain;
        v17 = 101;
      }

      else
      {
        v16 = CPSErrorDomain;
        v17 = 103;
      }

      [NSError errorWithDomain:v16 code:v17 userInfo:0];
      objc_claimAutoreleasedReturnValue();
      v18 = sub_100020CC0();
      v19(v18);
      goto LABEL_9;
    }

LABEL_5:
    WeakRetained = objc_loadWeakRetained((v4 + 16));
    sub_100020CD8(WeakRetained, v9, v10, v11, v12, v13, v14, v15, v20, v21);
LABEL_9:
  }
}

void sub_100064B18(uint64_t a1, void *a2)
{
  v20 = sub_100020CFC(a1, a2);
  v6 = v2;
  v7 = v3;
  if (v4)
  {
    if ([v20 hasSystemAuthenticationEntitlement])
    {
      WeakRetained = objc_loadWeakRetained((v4 + 16));
      sub_100020CD8(WeakRetained, v9, v10, v11, v12, v13, v14, v15, v19, v20);
    }

    else
    {
      sub_100020D3C();
      [v16 errorWithDomain:? code:? userInfo:?];
      objc_claimAutoreleasedReturnValue();
      v17 = sub_100020CC0();
      v18(v17);
    }
  }
}

void sub_100064BC4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a1)
  {
    v7 = sub_100020D48(a1, a2, a3, a4);
    v8 = v6;
    v9 = v5;
    WeakRetained = objc_loadWeakRetained((v4 + 16));
    sub_100020D18(WeakRetained);
  }
}

void sub_100064C3C(uint64_t a1, void *a2)
{
  v20 = sub_100020CFC(a1, a2);
  v6 = v2;
  v7 = v3;
  if (v4)
  {
    if ([v20 hasRestrictedAccessEntitlement])
    {
      WeakRetained = objc_loadWeakRetained((v4 + 16));
      sub_100020CD8(WeakRetained, v9, v10, v11, v12, v13, v14, v15, v19, v20);
    }

    else
    {
      sub_100020D3C();
      [v16 errorWithDomain:? code:? userInfo:?];
      objc_claimAutoreleasedReturnValue();
      v17 = sub_100020CC0();
      v18(v17);
    }
  }
}

void sub_100064CE8(uint64_t a1, void *a2)
{
  v20 = sub_100020CFC(a1, a2);
  v6 = v2;
  v7 = v3;
  if (v4)
  {
    if ([v20 hasStoreAuthenticationEntitlement])
    {
      WeakRetained = objc_loadWeakRetained((v4 + 16));
      sub_100020CD8(WeakRetained, v9, v10, v11, v12, v13, v14, v15, v19, v20);
    }

    else
    {
      sub_100020D3C();
      [v16 errorWithDomain:? code:? userInfo:?];
      objc_claimAutoreleasedReturnValue();
      v17 = sub_100020CC0();
      v18(v17);
    }
  }
}

void sub_100064D94(uint64_t a1, void *a2)
{
  v20 = sub_100020CFC(a1, a2);
  v6 = v2;
  v7 = v3;
  if (v4)
  {
    if ([v20 hasDedicatedCameraEntitlement])
    {
      WeakRetained = objc_loadWeakRetained((v4 + 16));
      sub_100020CD8(WeakRetained, v9, v10, v11, v12, v13, v14, v15, v19, v20);
    }

    else
    {
      sub_100020D3C();
      [v16 errorWithDomain:? code:? userInfo:?];
      objc_claimAutoreleasedReturnValue();
      v17 = sub_100020CC0();
      v18(v17);
    }
  }
}

void sub_100064E40(uint64_t a1, void *a2)
{
  v20 = sub_100020CFC(a1, a2);
  v6 = v2;
  v7 = v3;
  if (v4)
  {
    if ([v20 hasIncomingCallsEntitlement])
    {
      WeakRetained = objc_loadWeakRetained((v4 + 16));
      sub_100020CD8(WeakRetained, v9, v10, v11, v12, v13, v14, v15, v19, v20);
    }

    else
    {
      sub_100020D3C();
      [v16 errorWithDomain:? code:? userInfo:?];
      objc_claimAutoreleasedReturnValue();
      v17 = sub_100020CC0();
      v18(v17);
    }
  }
}

void sub_100064EEC(uint64_t a1, void *a2)
{
  v20 = sub_100020CFC(a1, a2);
  v6 = v2;
  v7 = v3;
  if (v4)
  {
    if ([v20 hasUserDefaultsEntitlement])
    {
      WeakRetained = objc_loadWeakRetained((v4 + 16));
      sub_100020CD8(WeakRetained, v9, v10, v11, v12, v13, v14, v15, v19, v20);
    }

    else
    {
      sub_100020D3C();
      [v16 errorWithDomain:? code:? userInfo:?];
      objc_claimAutoreleasedReturnValue();
      v17 = sub_100020CC0();
      v18(v17);
    }
  }
}

void sub_100064F98(void *a1, os_signpost_id_t a2, NSObject *a3)
{
  if (a2 - 1 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(a3))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, a3, OS_SIGNPOST_INTERVAL_BEGIN, a2, "StartAuthentication", "", v5, 2u);
  }
}

void sub_100065014()
{
  sub_10000F92C();
  sub_10000F938();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100065104()
{
  sub_10000F92C();
  sub_10000F938();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000651FC(NSObject *a1)
{
  v2 = *__error();
  v3 = __error();
  v4 = strerror(*v3);
  v5[0] = 67109378;
  v5[1] = v2;
  v6 = 2080;
  v7 = v4;
  _os_log_fault_impl(&_mh_execute_header, a1, OS_LOG_TYPE_FAULT, "_set_user_dir_suffix failed. Error code: %d, Error: %s", v5, 0x12u);
}

Swift::String __swiftcall CPSLocalizationKey.resolve()()
{
  v0 = CPSLocalizationKey.resolve()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}