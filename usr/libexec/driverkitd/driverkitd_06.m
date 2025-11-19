void *sub_10007442C@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_10007444C()
{
  v1 = *(v0 + 3);

  v2 = OBJC_IVAR____TtCC10driverkitd23DextLaunchThreadManager27DextLaunchDebuggingMetadata_timeInfo;
  v3 = type metadata accessor for Date();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_100074500(uint64_t a1, uint64_t a2)
{
  if (*(*a1 + 16) == *(*a2 + 16) && *(*a1 + 24) == *(*a2 + 24))
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t sub_10007452C()
{
  type metadata accessor for DextLaunchThreadManager();
  v0 = swift_allocObject();
  if (os_variant_allows_internal_security_policies())
  {
    sub_100003CDC(&qword_100136B60, &qword_1000F90B8);
    v1 = swift_allocObject();
    *(v1 + 16) = 8;
    *(v1 + 24) = sub_100041508(&_swiftEmptyArrayStorage);
    sub_100003CDC(&qword_100136B68, &qword_1000F90C0);
    v2 = swift_allocObject();
    *(v2 + 16) = 0;
    *(v2 + 24) = 0;
    *(v2 + 32) = 0;
    *(v1 + 32) = v2;
    sub_100003CDC(&unk_100136B70, &qword_1000F90C8);
    result = swift_allocObject();
    *(result + 24) = 0;
    *(result + 16) = v1;
  }

  else
  {
    result = 0;
  }

  *(v0 + 16) = result;
  qword_10014E8A0 = v0;
  return result;
}

void sub_100074610(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(v3 + 16);
  if (v6)
  {
    __chkstk_darwin(a1);

    os_unfair_lock_lock((v6 + 24));
    sub_100074CA4((v6 + 16));
    os_unfair_lock_unlock((v6 + 24));
  }

  else
  {
    if (qword_100133B08 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_1000144F0(v8, qword_10014EA58);

    v12 = Logger.logObject.getter();
    v9 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v12, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v13 = v11;
      *v10 = 136315394;
      *(v10 + 4) = sub_1000E3AF8(a1, a2, &v13);
      *(v10 + 12) = 2048;
      *(v10 + 14) = a3 & 1;
      _os_log_impl(&_mh_execute_header, v12, v9, "Skipping addBreadcrumbForDextWithIdentifier for %s %ld", v10, 0x16u);
      sub_100003C90(v11);
    }

    else
    {
    }
  }
}

uint64_t sub_100074808(uint64_t *a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = type metadata accessor for DextLaunchThreadManager.DextLaunchDebuggingMetadata();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;

  static Date.now.getter();
  *(v11 + OBJC_IVAR____TtCC10driverkitd23DextLaunchThreadManager27DextLaunchDebuggingMetadata_semaphore) = dispatch_semaphore_create(0);
  *(v11 + OBJC_IVAR____TtCC10driverkitd23DextLaunchThreadManager27DextLaunchDebuggingMetadata_context) = a4 & 1;
  v12 = *a1;
  sub_100073B08(v11);
}

uint64_t sub_1000748EC()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DextLaunchThreadManager.DextLaunchDebuggingMetadata()
{
  result = qword_100136A90;
  if (!qword_100136A90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10007499C()
{
  result = type metadata accessor for Date();
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

unint64_t sub_100074A64()
{
  result = qword_100136B48;
  if (!qword_100136B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100136B48);
  }

  return result;
}

uint64_t sub_100074AB8(uint64_t a1)
{
  result = sub_100074C5C(&qword_100136B50, type metadata accessor for DextLaunchThreadManager.DextLaunchDebuggingMetadata);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100074B10()
{
  result = qword_100133C58;
  if (!qword_100133C58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100133C58);
  }

  return result;
}

unint64_t sub_100074B5C(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  result = String.index(_:offsetBy:limitedBy:)();
  if (v4)
  {
    result = 15;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_12;
  }

  return String.subscript.getter();
}

uint64_t sub_100074C44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100074C5C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100074CC4()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = v0;
    swift_beginAccess();
    v3 = *sub_100003C4C((v1 + 16), *(v1 + 40));

    sub_1000DF818(v6);
    swift_endAccess();

    v4 = *(v2 + 16);
    if (v4)
    {
      v5 = *(v4 + 64);

      sub_100068B00(v5, sub_100075310, v2);

      sub_100003C90(v6);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_100074D98(void *a1)
{
  v3 = type metadata accessor for XPCUtil();
  ObjectType = swift_getObjectType();
  if (sub_1000CAD08(a1, v3, ObjectType))
  {
    sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1000F3160;
    sub_100003CDC(&qword_100136C78, &unk_1000F9120);
    _print_unlocked<A, B>(_:_:)();
    *(v5 + 56) = &type metadata for String;
    v6 = sub_100003D24();
    *(v5 + 64) = v6;
    *(v5 + 32) = 0;
    *(v5 + 40) = 0xE000000000000000;
    sub_10001491C();
    v7 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    v8 = swift_unknownObjectRetain();
    v9 = sub_1000CB1D4(v8);
    if (v10)
    {
      v11 = v10;
      if (v9)
      {
        goto LABEL_24;
      }

      v12 = *(v10 + 16);
      if (v12)
      {

        v13 = (v11 + 40);
        do
        {
          v14 = *(v13 - 1);
          v15 = *v13;
          v16 = swift_allocObject();
          *(v16 + 16) = xmmword_1000F3160;
          *(v16 + 56) = &type metadata for String;
          *(v16 + 64) = v6;
          *(v16 + 32) = v14;
          *(v16 + 40) = v15;

          v17 = static OS_os_log.default.getter();
          static os_log_type_t.default.getter();
          os_log(_:dso:log:type:_:)();

          v13 += 2;
          --v12;
        }

        while (v12);
      }

      v18 = *(v1 + 16);
      if (v18)
      {
        v19 = *(v18 + 72);

        _StringGuts.grow(_:)(26);

        v20 = 0x80000001001075B0;
        v21 = 0xD000000000000018;
LABEL_23:
        v45 = v21;
        v46 = v20;
        sub_100003CDC(&qword_100136C80, &qword_1000F39B0);
        sub_100018594();
        v40 = BidirectionalCollection<>.joined(separator:)();
        v42 = v41;

        v43._countAndFlagsBits = v40;
        v43._object = v42;
        String.append(_:)(v43);

        sub_100085800(v45, v46);

LABEL_24:

        return;
      }

      __break(1u);
    }

    else
    {
      v27 = swift_unknownObjectRetain();
      v28 = sub_1000CB4F8(v27);
      if (!v29)
      {
        v31 = static OS_os_log.default.getter();
        static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)();

        return;
      }

      v30 = v29;
      if (v28)
      {
        goto LABEL_24;
      }

      v32 = *(v29 + 16);
      if (v32)
      {

        v33 = (v30 + 40);
        do
        {
          v34 = *(v33 - 1);
          v35 = *v33;
          v36 = swift_allocObject();
          *(v36 + 16) = xmmword_1000F3160;
          *(v36 + 56) = &type metadata for String;
          *(v36 + 64) = v6;
          *(v36 + 32) = v34;
          *(v36 + 40) = v35;

          v37 = static OS_os_log.default.getter();
          static os_log_type_t.default.getter();
          os_log(_:dso:log:type:_:)();

          v33 += 2;
          --v32;
        }

        while (v32);
      }

      v38 = *(v1 + 16);
      if (v38)
      {
        v39 = *(v38 + 72);

        _StringGuts.grow(_:)(28);

        v20 = 0x8000000100107550;
        v21 = 0xD00000000000001ALL;
        goto LABEL_23;
      }
    }

    __break(1u);
    return;
  }

  type = xpc_get_type(a1);
  xpc_type_get_name(type);
  v23 = String.init(cString:)();
  v25 = v24;
  static os_log_type_t.error.getter();
  sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1000F3160;
  *(v26 + 56) = &type metadata for String;
  *(v26 + 64) = sub_100003D24();
  *(v26 + 32) = v23;
  *(v26 + 40) = v25;
  sub_10001491C();
  v44 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)();
}

uint64_t sub_100075314()
{
  v1 = type metadata accessor for POSIXError();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 24);
  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 valueForEntitlement:v7];

  if (v8)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
  }

  v15[0] = v13;
  v15[1] = v14;
  if (!*(&v14 + 1))
  {
    sub_10000A184(v15, &qword_1001343C8, &unk_1000F3CA0);
LABEL_9:
    static os_log_type_t.error.getter();
    sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1000F3160;
    v11 = [v6 processIdentifier];
    *(v10 + 56) = &type metadata for Int32;
    *(v10 + 64) = &protocol witness table for Int32;
    *(v10 + 32) = v11;
    sub_100009FEC(0, &qword_100133C50, OS_os_log_ptr);
    v12 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();

    LODWORD(v15[0]) = 1;
    sub_1000B50B0(_swiftEmptyArrayStorage);
    sub_10007848C(&qword_100135F28, &type metadata accessor for POSIXError);
    _BridgedStoredNSError.init(_:userInfo:)();
    POSIXError._nsError.getter();
    (*(v2 + 8))(v5, v1);
    return swift_willThrow();
  }

  result = swift_dynamicCast();
  if ((result & 1) == 0 || (v16 & 1) == 0)
  {
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_1000755E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[0] = type metadata accessor for DispatchQoS();
  v11 = *(v20[0] - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v20[0]);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(*(v3 + 16) + 64);
  v16 = swift_allocObject();
  v16[2] = v3;
  v16[3] = a1;
  v16[4] = a2;
  aBlock[4] = sub_100078404;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10006CCB0;
  aBlock[3] = &unk_100129CF8;
  v17 = _Block_copy(aBlock);
  v18 = v15;

  static DispatchQoS.unspecified.getter();
  v20[1] = _swiftEmptyArrayStorage;
  sub_10007848C(&unk_100133CA0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100003CDC(&unk_100137370, &unk_1000F32E0);
  sub_100078428();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);

  (*(v7 + 8))(v10, v6);
  (*(v11 + 8))(v14, v20[0]);
}

uint64_t sub_1000758A8(uint64_t a1, void (*a2)(unint64_t))
{
  v4 = type metadata accessor for OSSignpostID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_signpost_type_t.event.getter();
  sub_100009FEC(0, &qword_100133C50, OS_os_log_ptr);
  v9 = static OS_os_log.default.getter();
  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:)();

  (*(v5 + 8))(v8, v4);
  sub_100075314();
  v10 = *(a1 + 16);
  v11 = sub_10008F8D0();
  a2(v11);
}

void sub_100075B80(uint64_t a1, NSString a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    a2 = String._bridgeToObjectiveC()();
  }

  v5 = a2;
  (*(a4 + 16))(a4);
}

void sub_100075C48(uint64_t a1, char a2, void (*a3)(void))
{
  if (a2)
  {
    static os_log_type_t.error.getter();
    sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1000F3160;
    swift_errorRetain();
    sub_100003CDC(&qword_1001372F0, &unk_1000F39D0);
    v5 = String.init<A>(describing:)();
    v7 = v6;
    *(v4 + 56) = &type metadata for String;
    *(v4 + 64) = sub_100003D24();
    *(v4 + 32) = v5;
    *(v4 + 40) = v7;
    sub_100009FEC(0, &qword_100133C50, OS_os_log_ptr);
    v8 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();

    v9 = _convertErrorToNSError(_:)();
    a3();
  }

  else
  {
    (a3)(0);
  }
}

uint64_t sub_100076D5C()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

void sub_100076DC0(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  type metadata accessor for DriverKitDaemonXPCRequestDelegate();
  swift_allocObject();
  v6 = sub_1000782D0(v5, a2);

  *a3 = v6;
}

uint64_t sub_100076E30()
{
  v0 = String.subscript.getter();
  v4 = sub_100076EB0(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_100076EB0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
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
  v11 = sub_1000E3A84(v9, 0);
  v12 = sub_100077008(v15, (v11 + 4), v10, a1, a2, a3, a4);

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

unint64_t sub_100077008(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_10004630C(v12, a6, a7);
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

    result = sub_10004630C(v12, a6, a7);
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

unsigned __int8 *sub_100077228(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_100076E30();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

unsigned __int8 *sub_1000777B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v64 = a1;
  v65 = a2;
  v66 = a3;
  v67 = a4;
  sub_10006B82C();

  result = String.init<A>(_:)();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_100076E30();
    v37 = v36;

    v7 = v37;
    if ((v37 & 0x2000000000000000) == 0)
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
      v9 = v63;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v21 = v9 - 1;
        if (v21)
        {
          v22 = a5 + 48;
          v23 = a5 + 55;
          v24 = a5 + 87;
          if (a5 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v15 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v19 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_127;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              v28 = v15 * a5;
              if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
              {
                goto LABEL_126;
              }

              v15 = v28 + (v26 + v27);
              if (__OFADD__(v28, (v26 + v27)))
              {
                goto LABEL_126;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_46:
            v19 = v15;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v19 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v29 = a5 + 48;
        v30 = a5 + 55;
        v31 = a5 + 87;
        if (a5 > 10)
        {
          v29 = 58;
        }

        else
        {
          v31 = 97;
          v30 = 65;
        }

        if (result)
        {
          v32 = 0;
          do
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v29)
            {
              if (v33 < 0x41 || v33 >= v30)
              {
                v19 = 0;
                if (v33 < 0x61 || v33 >= v31)
                {
                  goto LABEL_127;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            v35 = v32 * a5;
            if ((v32 * a5) >> 64 != (v32 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v32 = v35 + (v33 + v34);
            if (__OFADD__(v35, (v33 + v34)))
            {
              goto LABEL_126;
            }

            ++result;
            --v9;
          }

          while (v9);
          v19 = v35 + (v33 + v34);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
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
          while (1)
          {
            v17 = *v16;
            if (v17 < 0x30 || v17 >= v12)
            {
              if (v17 < 0x41 || v17 >= v13)
              {
                v19 = 0;
                if (v17 < 0x61 || v17 >= v14)
                {
                  goto LABEL_127;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            v20 = v15 * a5;
            if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v15 = v20 - (v17 + v18);
            if (__OFSUB__(v20, (v17 + v18)))
            {
              goto LABEL_126;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v19 = 0;
LABEL_127:

        return v19;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v38 = HIBYTE(v7) & 0xF;
  v64 = v8;
  v65 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v38)
      {
        v40 = 0;
        v56 = a5 + 48;
        v57 = a5 + 55;
        v58 = a5 + 87;
        if (a5 > 10)
        {
          v56 = 58;
        }

        else
        {
          v58 = 97;
          v57 = 65;
        }

        v59 = &v64;
        while (1)
        {
          v60 = *v59;
          if (v60 < 0x30 || v60 >= v56)
          {
            if (v60 < 0x41 || v60 >= v57)
            {
              v19 = 0;
              if (v60 < 0x61 || v60 >= v58)
              {
                goto LABEL_127;
              }

              v61 = -87;
            }

            else
            {
              v61 = -55;
            }
          }

          else
          {
            v61 = -48;
          }

          v62 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v62 + (v60 + v61);
          if (__OFADD__(v62, (v60 + v61)))
          {
            goto LABEL_126;
          }

          v59 = (v59 + 1);
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v38)
    {
      v39 = v38 - 1;
      if (v39)
      {
        v40 = 0;
        v41 = a5 + 48;
        v42 = a5 + 55;
        v43 = a5 + 87;
        if (a5 > 10)
        {
          v41 = 58;
        }

        else
        {
          v43 = 97;
          v42 = 65;
        }

        v44 = &v64 + 1;
        while (1)
        {
          v45 = *v44;
          if (v45 < 0x30 || v45 >= v41)
          {
            if (v45 < 0x41 || v45 >= v42)
            {
              v19 = 0;
              if (v45 < 0x61 || v45 >= v43)
              {
                goto LABEL_127;
              }

              v46 = -87;
            }

            else
            {
              v46 = -55;
            }
          }

          else
          {
            v46 = -48;
          }

          v47 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v47 - (v45 + v46);
          if (__OFSUB__(v47, (v45 + v46)))
          {
            goto LABEL_126;
          }

          ++v44;
          if (!--v39)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v38)
  {
    v48 = v38 - 1;
    if (v48)
    {
      v40 = 0;
      v49 = a5 + 48;
      v50 = a5 + 55;
      v51 = a5 + 87;
      if (a5 > 10)
      {
        v49 = 58;
      }

      else
      {
        v51 = 97;
        v50 = 65;
      }

      v52 = &v64 + 1;
      do
      {
        v53 = *v52;
        if (v53 < 0x30 || v53 >= v49)
        {
          if (v53 < 0x41 || v53 >= v50)
          {
            v19 = 0;
            if (v53 < 0x61 || v53 >= v51)
            {
              goto LABEL_127;
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

        v55 = v40 * a5;
        if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
        {
          goto LABEL_126;
        }

        v40 = v55 + (v53 + v54);
        if (__OFADD__(v55, (v53 + v54)))
        {
          goto LABEL_126;
        }

        ++v52;
        --v48;
      }

      while (v48);
LABEL_125:
      v19 = v40;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

unsigned __int8 *sub_100077D4C(uint64_t a1, uint64_t a2, int64_t a3)
{
  v68 = a1;
  v69 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_100076E30();
    v38 = v37;

    v5 = v38;
    if ((v38 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v67;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v21 = v7 - 1;
        if (v21)
        {
          v22 = a3 + 48;
          v23 = a3 + 55;
          v24 = a3 + 87;
          if (a3 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v13 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v17 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_129;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              if (!is_mul_ok(v13, a3))
              {
                goto LABEL_128;
              }

              v28 = v13 * a3;
              v29 = v26 + v27;
              v20 = __CFADD__(v28, v29);
              v13 = v28 + v29;
              if (v20)
              {
                goto LABEL_128;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_66:
            v17 = v13;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

        goto LABEL_128;
      }

      goto LABEL_133;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v30 = a3 + 48;
        v31 = a3 + 55;
        v32 = a3 + 87;
        if (a3 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (result)
        {
          v13 = 0;
          while (1)
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v30)
            {
              if (v33 < 0x41 || v33 >= v31)
              {
                v17 = 0;
                if (v33 < 0x61 || v33 >= v32)
                {
                  goto LABEL_129;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v35 = v13 * a3;
            v36 = v33 + v34;
            v20 = __CFADD__(v35, v36);
            v13 = v35 + v36;
            if (v20)
            {
              goto LABEL_128;
            }

            ++result;
            if (!--v7)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_67;
      }

LABEL_128:
      v17 = 0;
      goto LABEL_129;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_129;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v18 = v13 * a3;
            v19 = v15 + v16;
            v20 = v18 >= v19;
            v13 = v18 - v19;
            if (!v20)
            {
              goto LABEL_128;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_66;
            }
          }
        }

LABEL_67:
        v17 = 0;
LABEL_129:

        return v17;
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

  v39 = HIBYTE(v5) & 0xF;
  v68 = v6;
  v69 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v39)
      {
        v41 = 0;
        v59 = a3 + 48;
        v60 = a3 + 55;
        v61 = a3 + 87;
        if (a3 > 10)
        {
          v59 = 58;
        }

        else
        {
          v61 = 97;
          v60 = 65;
        }

        v62 = &v68;
        while (1)
        {
          v63 = *v62;
          if (v63 < 0x30 || v63 >= v59)
          {
            if (v63 < 0x41 || v63 >= v60)
            {
              v17 = 0;
              if (v63 < 0x61 || v63 >= v61)
              {
                goto LABEL_129;
              }

              v64 = -87;
            }

            else
            {
              v64 = -55;
            }
          }

          else
          {
            v64 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v65 = v41 * a3;
          v66 = v63 + v64;
          v20 = __CFADD__(v65, v66);
          v41 = v65 + v66;
          if (v20)
          {
            goto LABEL_128;
          }

          v62 = (v62 + 1);
          if (!--v39)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        v41 = 0;
        v42 = a3 + 48;
        v43 = a3 + 55;
        v44 = a3 + 87;
        if (a3 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v68 + 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v17 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_129;
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

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v48 = v41 * a3;
          v49 = v46 + v47;
          v20 = v48 >= v49;
          v41 = v48 - v49;
          if (!v20)
          {
            goto LABEL_128;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v39)
  {
    v50 = v39 - 1;
    if (v50)
    {
      v41 = 0;
      v51 = a3 + 48;
      v52 = a3 + 55;
      v53 = a3 + 87;
      if (a3 > 10)
      {
        v51 = 58;
      }

      else
      {
        v53 = 97;
        v52 = 65;
      }

      v54 = &v68 + 1;
      do
      {
        v55 = *v54;
        if (v55 < 0x30 || v55 >= v51)
        {
          if (v55 < 0x41 || v55 >= v52)
          {
            v17 = 0;
            if (v55 < 0x61 || v55 >= v53)
            {
              goto LABEL_129;
            }

            v56 = -87;
          }

          else
          {
            v56 = -55;
          }
        }

        else
        {
          v56 = -48;
        }

        if (!is_mul_ok(v41, a3))
        {
          goto LABEL_128;
        }

        v57 = v41 * a3;
        v58 = v55 + v56;
        v20 = __CFADD__(v57, v58);
        v41 = v57 + v58;
        if (v20)
        {
          goto LABEL_128;
        }

        ++v54;
        --v50;
      }

      while (v50);
LABEL_127:
      v17 = v41;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_1000782D0(uint64_t a1, void *a2)
{
  v3 = v2;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1000F3160;

  v6 = [a2 processIdentifier];
  *(v5 + 56) = &type metadata for Int32;
  *(v5 + 64) = &protocol witness table for Int32;
  *(v5 + 32) = v6;
  sub_100009FEC(0, &qword_100133C50, OS_os_log_ptr);
  v7 = static OS_os_log.default.getter();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  return v3;
}

uint64_t sub_1000783C4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100078410(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100078428()
{
  result = qword_100133CB0;
  if (!qword_100133CB0)
  {
    sub_100009FA4(&unk_100137370, &unk_1000F32E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133CB0);
  }

  return result;
}

uint64_t sub_10007848C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000784D4(uint64_t a1, uint64_t a2)
{
  sub_100009FEC(0, &qword_100133C50, OS_os_log_ptr);
  v4 = static OS_os_log.default.getter();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v5 = *(*(*(a1 + 16) + 104) + 64);

  OS_dispatch_queue.sync<A>(execute:)();

  v6 = type metadata accessor for PropertyListEncoder();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  sub_10007A508();
  v9 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v11 = v10;

  sub_1000146C4(v9, v11);
  isa = Data._bridgeToObjectiveC()().super.isa;
  (*(a2 + 16))(a2, isa, 0);

  sub_1000128D8(v9, v11);
  return sub_1000128D8(v9, v11);
}

uint64_t sub_100078A14(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  *(v11 + 16) = a4;
  v12 = type metadata accessor for PropertyListDecoder();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  _Block_copy(a4);
  PropertyListDecoder.init()();
  sub_100067F14();
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

  v15 = v29;
  v27 = v28;
  v16 = v30;
  v17 = v31;
  v26 = v32;
  v18 = *(*(a3 + 16) + 96);
  v19 = swift_allocObject();
  *(v19 + 16) = sub_10007A494;
  *(v19 + 24) = v11;
  updated = type metadata accessor for ApprovalStateUpdateRequest();
  v21 = *(updated + 48);
  v22 = *(updated + 52);
  v23 = swift_allocObject();
  *(v23 + 16) = v27;
  *(v23 + 24) = v15;
  *(v23 + 32) = v16;
  *(v23 + 40) = v17;
  *(v23 + 48) = v26;
  *(v23 + 56) = sub_10007A4E0;
  *(v23 + 64) = v19;

  sub_1000146B0(v16, v17);

  static Date.now.getter();
  (*(v7 + 32))(v23 + OBJC_IVAR____TtC10driverkitd26ApprovalStateUpdateRequest_timestamp, v10, v6);
  sub_100088B34(v23);

  sub_100014988();
}

uint64_t sub_100078DBC(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  v198 = a8;
  v196 = a6;
  v14 = type metadata accessor for LookupSpec();
  v15 = *(*(v14 - 1) + 64);
  __chkstk_darwin(v14);
  v17 = (&v187 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100075314();
  *&v197 = 0;
  v193 = v14;
  v194 = v17;
  v195 = a2;
  v191 = a5;
  v192 = a3;
  v18 = *(a7 + 16);
  swift_beginAccess();
  v19 = *sub_100003C4C(v18 + 2, v18[5]);
  sub_1000DF65C(v215);
  v20 = sub_100003C4C(v215, *&v215[24]);
  swift_endAccess();
  v21 = *v20;
  v22 = sub_10006AA20();
  if (!v23)
  {
    sub_100003C90(v215);
LABEL_10:
    sub_10001449C();
    v27 = swift_allocError();
    *v32 = 0xD000000000000017;
    *(v32 + 8) = 0x80000001001076D0;
    v33 = *&v215[48];
    v35 = *&v215[16];
    v34 = *&v215[32];
    *(v32 + 16) = *v215;
    *(v32 + 32) = v35;
    *(v32 + 48) = v34;
    *(v32 + 64) = v33;
    *(v32 + 72) = 2;
    swift_willThrow();
    goto LABEL_11;
  }

  v24 = v22;
  v25 = v23;
  sub_100003C90(v215);
  v26 = v24 == 0x657361656C6572 && v25 == 0xE700000000000000;
  if (v26 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

LABEL_8:
    sub_10001449C();
    v27 = swift_allocError();
    *v28 = 0xD00000000000002DLL;
    *(v28 + 8) = 0x8000000100107850;
    v29 = *&v215[48];
    v31 = *&v215[16];
    v30 = *&v215[32];
    *(v28 + 16) = *v215;
    *(v28 + 32) = v31;
    *(v28 + 48) = v30;
    *(v28 + 64) = v29;
    *(v28 + 72) = 9;
    swift_willThrow();
    sub_100014978(0);
    goto LABEL_11;
  }

  v40 = sub_100080A7C(v24, v25);
  if (v40 == 5)
  {
    goto LABEL_10;
  }

  if (!v40)
  {
    sub_100014968(0);
    goto LABEL_8;
  }

  v190 = v40;
  v41 = *(*(v18[10] + 56) + 656);

  os_unfair_lock_lock((v41 + 72));
  v42 = *(v41 + 32);
  v219[0] = *(v41 + 16);
  v219[1] = v42;
  v219[2] = *(v41 + 48);
  v220 = *(v41 + 64);
  sub_100013848(v219, v215);
  os_unfair_lock_unlock((v41 + 72));

  v43 = a1;
  v45 = v194;
  v44 = v195;
  *v194 = v43;
  *(v45 + 8) = v44;
  swift_storeEnumTagMultiPayload();

  sub_100056FA0(v45, 0, 0, v215);
  v46 = *v215;
  v211 = *&v215[40];
  v212 = v216;
  v213 = v217;
  v214 = v218;
  v209 = *&v215[8];
  v210 = *&v215[24];
  sub_1000138A4(v219);
  if (v218)
  {
    *&v208[0] = v46;
    *(&v208[1] + 8) = v210;
    *(&v208[2] + 8) = v211;
    *(&v208[3] + 8) = v212;
    *(&v208[4] + 8) = v213;
    *(v208 + 8) = v209;
    sub_10005B2E8();
    swift_willThrowTypedImpl();
    v201 = v208[2];
    v202[0] = v208[3];
    v202[1] = v208[4];
    v203 = *&v208[5];
    v199 = v208[0];
    v200 = v208[1];
    sub_10005B33C(&v199);
    sub_100059150(v45);
    *&v204 = 0;
    *(&v204 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(44);

    *&v204 = 0xD000000000000029;
    *(&v204 + 1) = 0x80000001001076F0;
    v47._countAndFlagsBits = v43;
    v47._object = v44;
    String.append(_:)(v47);
    v48._countAndFlagsBits = 46;
    v48._object = 0xE100000000000000;
    String.append(_:)(v48);
    v49 = v204;
    sub_10001449C();
    v27 = swift_allocError();
    *v50 = v49;
    v51 = v207;
    v52 = v206;
    v53 = v205;
    *(v50 + 16) = v204;
    *(v50 + 32) = v53;
    *(v50 + 48) = v52;
    *(v50 + 64) = v51;
    *(v50 + 72) = 10;
    swift_willThrow();
LABEL_49:
    sub_100041BBC(v190);
LABEL_11:
    v36 = v198;
LABEL_12:
    *&v204 = v27;
    swift_errorRetain();
    sub_100003CDC(&qword_1001372F0, &unk_1000F39D0);
    if (swift_dynamicCast())
    {

      v208[2] = v201;
      v208[3] = v202[0];
      *(&v208[3] + 9) = *(v202 + 9);
      v208[0] = v199;
      v208[1] = v200;
      v37 = sub_1000AC3E4();
      (*(v36 + 16))(v36, 0, v37);

      sub_10001465C(v208);
    }

    else
    {

      v38 = _convertErrorToNSError(_:)();
      (*(v36 + 16))(v36, 0, v38);
    }
  }

  sub_100059150(v45);
  v54 = *(v46 + 24);
  if (*v54 == _TtC10driverkitd15DriverExtension)
  {
    v55 = *(v46 + 24);
  }

  else
  {
    v55 = 0;
  }

  if (*v54 != _TtC10driverkitd15DriverExtension)
  {
    *&v199 = 0;
    *(&v199 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(39);

    *&v199 = 0x6F696E7365747845;
    *(&v199 + 1) = 0xEA0000000000206ELL;
    v76._countAndFlagsBits = v43;
    v76._object = v195;
    String.append(_:)(v76);
    v77._countAndFlagsBits = 0xD00000000000001BLL;
    v77._object = 0x8000000100107720;
    String.append(_:)(v77);
    v78 = v199;
    sub_10001449C();
    v27 = swift_allocError();
    *v79 = v78;
    v80 = *&v202[0];
    v82 = v200;
    v81 = v201;
    *(v79 + 16) = v199;
    *(v79 + 32) = v82;
    *(v79 + 48) = v81;
    *(v79 + 64) = v80;
    *(v79 + 72) = 9;
    swift_willThrow();
LABEL_48:
    sub_10000A184(v215, &qword_100135A78, &unk_1000F59C8);
    goto LABEL_49;
  }

  v56 = *(v18[10] + 56);
  v57 = *(v56 + 176);
  v58 = *(v56 + 184);
  v194 = *(v46 + 24);

  sub_100024FF4(v57, v58, 0xD000000000000012, 0x8000000100104610, &v204);

  if (!*(&v205 + 1))
  {
    sub_10000A184(&v204, &qword_1001343C8, &unk_1000F3CA0);
    goto LABEL_47;
  }

  sub_100003CDC(&qword_100134FD0, &unk_1000F4E80);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_47:
    *&v199 = 0;
    *(&v199 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(52);
    v83._countAndFlagsBits = 0x6F69736E65747845;
    v83._object = 0xEA0000000000206ELL;
    String.append(_:)(v83);
    v84._countAndFlagsBits = v43;
    v84._object = v195;
    String.append(_:)(v84);
    v85._countAndFlagsBits = 0xD000000000000028;
    v85._object = 0x8000000100107740;
    String.append(_:)(v85);
    v86 = v199;
    sub_10001449C();
    v27 = swift_allocError();
    *v87 = v86;
    v88 = *&v202[0];
    v90 = v200;
    v89 = v201;
    *(v87 + 16) = v199;
    *(v87 + 32) = v90;
    *(v87 + 48) = v89;
    *(v87 + 64) = v88;
    *(v87 + 72) = 9;
    swift_willThrow();

    goto LABEL_48;
  }

  v195 = v55;
  v189 = v18;
  v59 = v199;
  v60 = v199 + 64;
  v61 = 1 << *(v199 + 32);
  v62 = -1;
  if (v61 < 64)
  {
    v62 = ~(-1 << v61);
  }

  v63 = v62 & *(v199 + 64);
  v64 = (v61 + 63) >> 6;

  v65 = 0;
  v193 = _swiftEmptyArrayStorage;
  while (v63)
  {
LABEL_37:
    v67 = __clz(__rbit64(v63));
    v63 &= v63 - 1;
    v46 = *(*(v59 + 56) + ((v65 << 9) | (8 * v67)));
    if (*(v46 + 16))
    {

      v68 = sub_100061588(0xD000000000000010, 0x8000000100107770);
      if (v69)
      {
        sub_10000B430(*(v46 + 56) + 32 * v68, &v199);

        result = swift_dynamicCast();
        if (result)
        {
          v46 = *(&v204 + 1);
          if (*(&v204 + 1))
          {
            v187 = v204;
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = sub_100030EA0(0, *(v193 + 2) + 1, 1, v193);
              v193 = result;
            }

            v71 = *(v193 + 2);
            v70 = *(v193 + 3);
            v188 = v71 + 1;
            v72 = v71;
            if (v71 >= v70 >> 1)
            {
              result = sub_100030EA0((v70 > 1), v188, 1, v193);
              v193 = result;
            }

            v73 = v193;
            v74 = v187;
            *(v193 + 2) = v188;
            v75 = &v73[16 * v72];
            *(v75 + 4) = v74;
            *(v75 + 5) = v46;
          }
        }
      }

      else
      {
      }
    }
  }

  while (1)
  {
    v66 = v65 + 1;
    if (__OFADD__(v65, 1))
    {
      __break(1u);
      goto LABEL_206;
    }

    if (v66 >= v64)
    {
      break;
    }

    v63 = *(v60 + 8 * v66);
    ++v65;
    if (v63)
    {
      v65 = v66;
      goto LABEL_37;
    }
  }

  v91 = sub_1000EB930(v193);

  v92 = v192;
  v93 = a4;
  if ((sub_1000814E8(v192, a4, v91) & 1) == 0)
  {
    *&v199 = 0;
    *(&v199 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(71);
    v106._countAndFlagsBits = 0xD000000000000011;
    v106._object = 0x8000000100107790;
    String.append(_:)(v106);
    v107._countAndFlagsBits = v92;
    v107._object = a4;
    String.append(_:)(v107);
    v108._countAndFlagsBits = 0xD000000000000032;
    v108._object = 0x80000001001077B0;
    String.append(_:)(v108);
    v109 = Set.description.getter();
    v111 = v110;

    v112._countAndFlagsBits = v109;
    v112._object = v111;
    String.append(_:)(v112);

    v113 = v199;
    sub_10001449C();
    v27 = swift_allocError();
    *v114 = v113;
    v115 = *&v202[0];
    v117 = v200;
    v116 = v201;
    *(v114 + 16) = v199;
    *(v114 + 32) = v117;
    *(v114 + 48) = v116;
    *(v114 + 64) = v115;
    *(v114 + 72) = 9;
    swift_willThrow();

    sub_10000A184(v215, &qword_100135A78, &unk_1000F59C8);
    sub_100041BBC(v190);
    goto LABEL_11;
  }

  v94 = v196;
  if (!v196)
  {
    *&v199 = 0;
    swift_stdlib_random();
    v101 = v199;
    goto LABEL_74;
  }

  v65 = HIBYTE(v196) & 0xF;
  v95 = v191;
  v46 = v191 & 0xFFFFFFFFFFFFLL;
  if ((v196 & 0x2000000000000000) != 0)
  {
    v96 = HIBYTE(v196) & 0xF;
  }

  else
  {
    v96 = v191 & 0xFFFFFFFFFFFFLL;
  }

  v97 = v195;
  if (!v96)
  {
    goto LABEL_204;
  }

  if ((v196 & 0x1000000000000000) != 0)
  {
    v159 = v196;
    v160 = v191;

    v101 = sub_100077D4C(v160, v159, 10);
    LOBYTE(v160) = v161;

    if (v160)
    {
      v162 = v196;

      v163 = v191;
      v101 = sub_100077D4C(v191, v162, 16);
      v165 = v164;

      v95 = v163;
      v94 = v162;
      v92 = v192;
      v97 = v195;
      if (v165)
      {
        goto LABEL_204;
      }

      v93 = a4;
      goto LABEL_210;
    }

    v93 = a4;
    v92 = v192;
LABEL_74:
    v97 = v195;
    goto LABEL_210;
  }

  if ((v196 & 0x2000000000000000) != 0)
  {
    *&v199 = v191;
    *(&v199 + 1) = v196 & 0xFFFFFFFFFFFFFFLL;
    if (v191 == 43)
    {
      if (!v65)
      {
LABEL_220:
        __break(1u);
        goto LABEL_221;
      }

      v124 = v65 - 1;
      if (v65 == 1)
      {
        goto LABEL_206;
      }

      v101 = 0;
      v125 = &v199 + 1;
      v93 = a4;
      v92 = v192;
      v97 = v195;
      while (1)
      {
        v126 = *v125 - 48;
        if (v126 > 9)
        {
          break;
        }

        if (!is_mul_ok(v101, 0xAuLL))
        {
          goto LABEL_206;
        }

        v104 = __CFADD__(10 * v101, v126);
        v101 = 10 * v101 + v126;
        if (v104)
        {
          goto LABEL_206;
        }

        v105 = 0;
        ++v125;
        --v124;
        v93 = a4;
        v92 = v192;
        v97 = v195;
        if (!v124)
        {
          goto LABEL_121;
        }
      }
    }

    else if (v191 == 45)
    {
      if (!v65)
      {
LABEL_218:
        __break(1u);
        goto LABEL_219;
      }

      v118 = v65 - 1;
      if (v65 == 1)
      {
        goto LABEL_206;
      }

      v101 = 0;
      v119 = &v199 + 1;
      v93 = a4;
      v92 = v192;
      v97 = v195;
      while (1)
      {
        v120 = *v119 - 48;
        if (v120 > 9)
        {
          break;
        }

        if (!is_mul_ok(v101, 0xAuLL))
        {
          goto LABEL_206;
        }

        v104 = 10 * v101 >= v120;
        v101 = 10 * v101 - v120;
        if (!v104)
        {
          goto LABEL_206;
        }

        v105 = 0;
        ++v119;
        --v118;
        v93 = a4;
        v92 = v192;
        v97 = v195;
        if (!v118)
        {
          goto LABEL_121;
        }
      }
    }

    else if (v65)
    {
      v101 = 0;
      v128 = &v199;
      v129 = HIBYTE(v196) & 0xF;
      while (1)
      {
        v130 = *v128 - 48;
        if (v130 > 9)
        {
          break;
        }

        if (!is_mul_ok(v101, 0xAuLL))
        {
          goto LABEL_206;
        }

        v104 = __CFADD__(10 * v101, v130);
        v101 = 10 * v101 + v130;
        if (v104)
        {
          goto LABEL_206;
        }

        v105 = 0;
        ++v128;
        --v129;
        v93 = a4;
        v92 = v192;
        v97 = v195;
        if (!v129)
        {
          goto LABEL_121;
        }
      }
    }

LABEL_120:
    v101 = 0;
    v105 = 1;
    goto LABEL_121;
  }

  if ((v191 & 0x1000000000000000) != 0)
  {
    result = (v196 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v98 = v191 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    result = _StringObject.sharedUTF8.getter();
  }

  v99 = *result;
  if (v99 == 43)
  {
    if (v98 < 1)
    {
LABEL_219:
      __break(1u);
      goto LABEL_220;
    }

    v121 = v98 - 1;
    if (v98 == 1)
    {
      goto LABEL_206;
    }

    if (!result)
    {
      goto LABEL_111;
    }

    v101 = 0;
    v122 = (result + 1);
    v93 = a4;
    v92 = v192;
    v97 = v195;
    while (1)
    {
      v123 = *v122 - 48;
      if (v123 > 9)
      {
        goto LABEL_120;
      }

      if (!is_mul_ok(v101, 0xAuLL))
      {
        goto LABEL_206;
      }

      v104 = __CFADD__(10 * v101, v123);
      v101 = 10 * v101 + v123;
      if (v104)
      {
        goto LABEL_206;
      }

      v105 = 0;
      ++v122;
      --v121;
      v93 = a4;
      v92 = v192;
      v97 = v195;
      if (!v121)
      {
        goto LABEL_121;
      }
    }
  }

  if (v99 != 45)
  {
    if (!v98)
    {
      goto LABEL_206;
    }

    if (!result)
    {
      goto LABEL_111;
    }

    v101 = 0;
    v93 = a4;
    v92 = v192;
    v97 = v195;
    while (1)
    {
      v127 = *result - 48;
      if (v127 > 9)
      {
        goto LABEL_120;
      }

      if (!is_mul_ok(v101, 0xAuLL))
      {
        goto LABEL_206;
      }

      v104 = __CFADD__(10 * v101, v127);
      v101 = 10 * v101 + v127;
      if (v104)
      {
        goto LABEL_206;
      }

      v105 = 0;
      ++result;
      --v98;
      v93 = a4;
      v92 = v192;
      v97 = v195;
      if (!v98)
      {
        goto LABEL_121;
      }
    }
  }

  if (v98 < 1)
  {
    __break(1u);
    goto LABEL_218;
  }

  v100 = v98 - 1;
  if (v98 == 1)
  {
LABEL_206:
    v101 = 0;
    v105 = 1;
    goto LABEL_112;
  }

  if (result)
  {
    v101 = 0;
    v102 = (result + 1);
    v93 = a4;
    v92 = v192;
    v97 = v195;
    while (1)
    {
      v103 = *v102 - 48;
      if (v103 > 9)
      {
        goto LABEL_120;
      }

      if (!is_mul_ok(v101, 0xAuLL))
      {
        goto LABEL_206;
      }

      v104 = 10 * v101 >= v103;
      v101 = 10 * v101 - v103;
      if (!v104)
      {
        goto LABEL_206;
      }

      v105 = 0;
      ++v102;
      --v100;
      v93 = a4;
      v92 = v192;
      v97 = v195;
      if (!v100)
      {
        goto LABEL_121;
      }
    }
  }

LABEL_111:
  v101 = 0;
  v105 = 0;
LABEL_112:
  v93 = a4;
  v92 = v192;
  v97 = v195;
LABEL_121:
  LOBYTE(v204) = v105;
  if ((v105 & 1) == 0)
  {
    goto LABEL_210;
  }

  if ((v196 & 0x2000000000000000) != 0)
  {
    *&v199 = v191;
    *(&v199 + 1) = v196 & 0xFFFFFFFFFFFFFFLL;
    if (v191 == 43)
    {
      if (!v65)
      {
LABEL_224:
        __break(1u);
        return result;
      }

      v132 = v65 - 1;
      if (v65 != 1)
      {
        v101 = 0;
        v142 = &v199 + 1;
        while (1)
        {
          v143 = *v142;
          v144 = v143 - 48;
          if ((v143 - 48) >= 0xA)
          {
            if ((v143 - 65) < 6)
            {
              v144 = v143 - 55;
            }

            else
            {
              if ((v143 - 97) > 5)
              {
                break;
              }

              v144 = v143 - 87;
            }
          }

          if (v101 >> 60)
          {
            break;
          }

          v101 = 16 * v101 + v144;
          ++v142;
          if (!--v132)
          {
            goto LABEL_203;
          }
        }
      }
    }

    else if (v191 == 45)
    {
      if (!v65)
      {
LABEL_222:
        __break(1u);
        goto LABEL_223;
      }

      v132 = v65 - 1;
      if (v65 != 1)
      {
        v101 = 0;
        v136 = &v199 + 1;
        while (1)
        {
          v137 = *v136;
          v138 = v137 - 48;
          if ((v137 - 48) >= 0xA)
          {
            if ((v137 - 65) < 6)
            {
              v138 = v137 - 55;
            }

            else
            {
              if ((v137 - 97) > 5)
              {
                break;
              }

              v138 = v137 - 87;
            }
          }

          if (v101 >> 60)
          {
            break;
          }

          v104 = 16 * v101 >= v138;
          v101 = 16 * v101 - v138;
          if (!v104)
          {
            break;
          }

          ++v136;
          if (!--v132)
          {
            goto LABEL_203;
          }
        }
      }
    }

    else if (v65)
    {
      v101 = 0;
      v147 = &v199;
      while (1)
      {
        v148 = *v147;
        v149 = v148 - 48;
        if ((v148 - 48) >= 0xA)
        {
          if ((v148 - 65) < 6)
          {
            v149 = v148 - 55;
          }

          else
          {
            if ((v148 - 97) > 5)
            {
              break;
            }

            v149 = v148 - 87;
          }
        }

        if (v101 >> 60)
        {
          break;
        }

        v101 = 16 * v101 + v149;
        ++v147;
        if (!--v65)
        {
          goto LABEL_191;
        }
      }
    }

LABEL_202:
    v101 = 0;
    LOBYTE(v132) = 1;
    goto LABEL_203;
  }

  if ((v191 & 0x1000000000000000) != 0)
  {
    result = (v196 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = _StringObject.sharedUTF8.getter();
    v46 = v186;
  }

  v131 = *result;
  if (v131 == 43)
  {
    if (v46 < 1)
    {
LABEL_223:
      __break(1u);
      goto LABEL_224;
    }

    v132 = v46 - 1;
    if (v46 == 1)
    {
      goto LABEL_202;
    }

    if (!result)
    {
      goto LABEL_190;
    }

    v101 = 0;
    v139 = (result + 1);
    while (1)
    {
      v140 = *v139;
      v141 = v140 - 48;
      if ((v140 - 48) >= 0xA)
      {
        if ((v140 - 65) < 6)
        {
          v141 = v140 - 55;
        }

        else
        {
          if ((v140 - 97) > 5)
          {
            goto LABEL_202;
          }

          v141 = v140 - 87;
        }
      }

      if (v101 >> 60)
      {
        goto LABEL_202;
      }

      v101 = 16 * v101 + v141;
      ++v139;
      if (!--v132)
      {
        goto LABEL_203;
      }
    }
  }

  if (v131 != 45)
  {
    if (!v46)
    {
      goto LABEL_202;
    }

    if (!result)
    {
      goto LABEL_190;
    }

    v101 = 0;
    while (1)
    {
      v145 = *result;
      v146 = v145 - 48;
      if ((v145 - 48) >= 0xA)
      {
        if ((v145 - 65) < 6)
        {
          v146 = v145 - 55;
        }

        else
        {
          if ((v145 - 97) > 5)
          {
            goto LABEL_202;
          }

          v146 = v145 - 87;
        }
      }

      if (v101 >> 60)
      {
        goto LABEL_202;
      }

      v101 = 16 * v101 + v146;
      ++result;
      if (!--v46)
      {
        goto LABEL_191;
      }
    }
  }

  if (v46 < 1)
  {
LABEL_221:
    __break(1u);
    goto LABEL_222;
  }

  v132 = v46 - 1;
  if (v46 == 1)
  {
    goto LABEL_202;
  }

  if (result)
  {
    v101 = 0;
    v133 = (result + 1);
    while (1)
    {
      v134 = *v133;
      v135 = v134 - 48;
      if ((v134 - 48) >= 0xA)
      {
        if ((v134 - 65) < 6)
        {
          v135 = v134 - 55;
        }

        else
        {
          if ((v134 - 97) > 5)
          {
            goto LABEL_202;
          }

          v135 = v134 - 87;
        }
      }

      if (v101 >> 60)
      {
        goto LABEL_202;
      }

      v104 = 16 * v101 >= v135;
      v101 = 16 * v101 - v135;
      if (!v104)
      {
        goto LABEL_202;
      }

      ++v133;
      if (!--v132)
      {
        goto LABEL_203;
      }
    }
  }

LABEL_190:
  v101 = 0;
LABEL_191:
  LOBYTE(v132) = 0;
LABEL_203:
  LOBYTE(v204) = v132;
  v93 = a4;
  v95 = v191;
  v92 = v192;
  v97 = v195;
  v94 = v196;
  if (v132)
  {
LABEL_204:
    *&v199 = 0;
    *(&v199 + 1) = 0xE000000000000000;
    v150 = v94;
    v151 = v95;
    _StringGuts.grow(_:)(32);

    *&v199 = 543646036;
    *(&v199 + 1) = 0xE400000000000000;
    v152._countAndFlagsBits = v151;
    v152._object = v150;
    String.append(_:)(v152);
    v153._countAndFlagsBits = 0xD00000000000001ALL;
    v153._object = 0x8000000100107830;
    String.append(_:)(v153);
    v154 = v199;
    sub_10001449C();
    v27 = swift_allocError();
    *v155 = v154;
    v156 = *&v202[0];
    v158 = v200;
    v157 = v201;
    *(v155 + 16) = v199;
    *(v155 + 32) = v158;
    *(v155 + 48) = v157;
    *(v155 + 64) = v156;
    *(v155 + 72) = 9;
    swift_willThrow();
    sub_100041BBC(v190);

    sub_10000A184(v215, &qword_100135A78, &unk_1000F59C8);
LABEL_212:
    v36 = v198;
    goto LABEL_12;
  }

LABEL_210:
  *&v201 = 0;
  v199 = 0u;
  v200 = 0u;
  v166 = v197;
  v167 = sub_100075E50(v97, v92, v93, v101, 0, 0, &v199);
  if (v166)
  {
    v27 = v166;
    sub_10000A184(&v199, &unk_100137390, &unk_1000F4E70);
    sub_10000A184(v215, &qword_100135A78, &unk_1000F59C8);

    sub_100041BBC(v190);
    goto LABEL_212;
  }

  v168 = v167;
  sub_10000A184(&v199, &unk_100137390, &unk_1000F4E70);
  *&v199 = 0;
  *(&v199 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(76);
  v169._countAndFlagsBits = 0x646568636E75614CLL;
  v169._object = 0xEE00207478656420;
  String.append(_:)(v169);

  v170 = sub_1000D7374();
  v172 = v171;

  v173._countAndFlagsBits = v170;
  v173._object = v172;
  String.append(_:)(v173);

  v174._countAndFlagsBits = 0xD000000000000017;
  v174._object = 0x80000001001077F0;
  String.append(_:)(v174);
  v175._countAndFlagsBits = v92;
  v175._object = v93;
  String.append(_:)(v175);
  v176._countAndFlagsBits = 0x20676174202CLL;
  v176._object = 0xE600000000000000;
  String.append(_:)(v176);
  sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
  v177 = swift_allocObject();
  v197 = xmmword_1000F3160;
  *(v177 + 16) = xmmword_1000F3160;
  *(v177 + 56) = &type metadata for UInt64;
  *(v177 + 64) = &protocol witness table for UInt64;
  *(v177 + 32) = v101;
  v178._countAndFlagsBits = String.init(format:_:)();
  String.append(_:)(v178);

  v179._object = 0x8000000100107810;
  v179._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v179);
  v180 = swift_allocObject();
  *(v180 + 16) = v197;
  *(v180 + 56) = &type metadata for UInt32;
  *(v180 + 64) = &protocol witness table for UInt32;
  *(v180 + 32) = 0;
  v181._countAndFlagsBits = String.init(format:_:)();
  String.append(_:)(v181);

  v182._countAndFlagsBits = 0x20646970203ALL;
  v182._object = 0xE600000000000000;
  String.append(_:)(v182);
  LODWORD(v204) = v168;
  v183._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v183);

  v184._countAndFlagsBits = 10;
  v184._object = 0xE100000000000000;
  String.append(_:)(v184);
  v185 = String._bridgeToObjectiveC()();
  (*(v198 + 16))(v198, v185, 0);

  sub_100041BBC(v190);

  sub_10000A184(v215, &qword_100135A78, &unk_1000F59C8);
}

uint64_t sub_10007A3EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003CDC(&unk_100137390, &unk_1000F4E70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10007A45C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10007A4A8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_10007A508()
{
  result = qword_100136DD0;
  if (!qword_100136DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100136DD0);
  }

  return result;
}

uint64_t sub_10007A578()
{
  v1 = [*v0 bundleIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void sub_10007A5E0()
{
  v1 = [*v0 URL];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
}

uint64_t sub_10007A64C()
{
  v1 = [*v0 driverExtensionPaths];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_10007A6B4(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = [*v3 *a3];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  return v6;
}

uint64_t sub_10007A718()
{
  v1 = *(v0 + 16);
  if (v1 == 2)
  {
    if (qword_100133B38 != -1)
    {
      swift_once();
    }

    LOBYTE(v1) = byte_100138870;
    *(v0 + 16) = byte_100138870;
  }

  return v1 & 1;
}

uint64_t sub_10007A7AC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  if (URL.isFileURL.getter())
  {
    URL.path.getter();

    v4._object = 0x8000000100107C50;
    v4._countAndFlagsBits = 0xD000000000000019;
    v5 = String.hasPrefix(_:)(v4);

    if (v5)
    {
      v6 = String.count.getter();
      sub_1000C8AF4(v6);
    }

    v7._countAndFlagsBits = 47;
    v7._object = 0xE100000000000000;
    if (String.hasPrefix(_:)(v7))
    {
      URL.hasDirectoryPath.getter();
      URL.init(fileURLWithPath:isDirectory:)();
    }

    else
    {

      v11 = type metadata accessor for URL();
      return (*(*(v11 - 8) + 16))(a1, v2, v11);
    }
  }

  else
  {
    v9 = type metadata accessor for URL();
    v10 = *(*(v9 - 8) + 16);

    return v10(a1, v1, v9);
  }
}

uint64_t sub_10007AD60(void *a1, uint64_t a2, int a3)
{
  v28 = a2;
  v27 = a3;
  v5 = sub_100003CDC(&unk_1001389D0, &qword_1000F4F60);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v9 = &v26[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v26[-v10];
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v26[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v31 = v3;
  if ((*(v3 + 648) & 4) == 0)
  {
    v17 = *sub_100003C4C((v31 + 16), *(v31 + 40));
    sub_1000E05F8(v30);
    v18 = a1[3];
    v19 = a1[4];
    sub_100003C4C(a1, v18);
    (*(v19 + 64))(v18, v19);
    URL.path.getter();

    (*(v13 + 8))(v16, v12);
    sub_100003C90(v30);
  }

  v20 = a1[3];
  v21 = a1[4];
  sub_100003C4C(a1, v20);
  (*(v21 + 64))(v20, v21);
  sub_10007A7AC(v11);
  (*(v13 + 8))(v16, v12);
  v22 = *(v13 + 56);
  v22(v11, 0, 1, v12);
  v22(v9, 1, 1, v12);
  v23 = v29;
  v24 = sub_100028620(a1, 0, v11, v9, v28, v27 & 1);
  sub_10007B024(v9);
  sub_10007B024(v11);
  if (!v23)
  {
    sub_10007A940(v24);
  }

  return v24;
}

uint64_t sub_10007B024(uint64_t a1)
{
  v2 = sub_100003CDC(&unk_1001389D0, &qword_1000F4F60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10007B08C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = result;
    v7 = 0;
    v8 = _swiftEmptyArrayStorage;
    v12 = *(a3 + 16);
    v13 = result;
    while (v7 < *(a3 + 16))
    {
      v11 = *(a3 + v7 + 32);
      v14 = v11;
      result = v6(&v14);
      if (v3)
      {

        goto LABEL_15;
      }

      if (result)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v15 = v8;
        if ((result & 1) == 0)
        {
          result = sub_1000636AC(0, v8[2] + 1, 1);
          v8 = v15;
        }

        v10 = v8[2];
        v9 = v8[3];
        if (v10 >= v9 >> 1)
        {
          result = sub_1000636AC((v9 > 1), v10 + 1, 1);
          v8 = v15;
        }

        v8[2] = v10 + 1;
        *(v8 + v10 + 32) = v11;
        v5 = v12;
        v6 = v13;
      }

      if (v5 == ++v7)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_15:

    return v8;
  }

  return result;
}

uint64_t sub_10007B1E4(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v40 = type metadata accessor for URL();
  v7 = *(*(v40 - 8) + 64);
  v8 = __chkstk_darwin(v40);
  v37 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v39 = &v29 - v12;
  v36 = *(a3 + 16);
  if (v36)
  {
    v13 = 0;
    v33 = (v11 + 8);
    v34 = (v11 + 32);
    v35 = v11 + 16;
    v38 = _swiftEmptyArrayStorage;
    v31 = a2;
    v32 = a3;
    v30 = a1;
    while (v13 < *(a3 + 16))
    {
      v14 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v15 = *(v11 + 72);
      v16 = a3;
      v17 = a3 + v14 + v15 * v13;
      v18 = v11;
      v19 = a1;
      v20 = v39;
      (*(v11 + 16))(v39, v17, v40);
      v21 = v20;
      a1 = v19;
      v22 = v19(v21);
      if (v3)
      {
        (*v33)(v39, v40);
        v28 = v38;

        return v28;
      }

      if (v22)
      {
        v23 = *v34;
        (*v34)(v37, v39, v40);
        v24 = v38;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v41 = v24;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1000635C4(0, v24[2] + 1, 1);
          v24 = v41;
        }

        v27 = v24[2];
        v26 = v24[3];
        if (v27 >= v26 >> 1)
        {
          sub_1000635C4(v26 > 1, v27 + 1, 1);
          v24 = v41;
        }

        v24[2] = v27 + 1;
        v38 = v24;
        result = (v23)(v24 + v14 + v27 * v15, v37, v40);
        a3 = v32;
        a1 = v30;
      }

      else
      {
        result = (*v33)(v39, v40);
        a3 = v16;
      }

      ++v13;
      v11 = v18;
      if (v36 == v13)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v38 = _swiftEmptyArrayStorage;
LABEL_14:

    return v38;
  }

  return result;
}

void *sub_10007B4B4(uint64_t (*a1)(uint64_t *), void *a2, unint64_t a3)
{
  v5 = a3;
  v22 = _swiftEmptyArrayStorage;
  if (a3 >> 62)
  {
LABEL_18:
    v8 = _CocoaArrayWrapper.endIndex.getter();
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
LABEL_3:
      v9 = 0;
      v19 = v5 & 0xFFFFFFFFFFFFFF8;
      v20 = v5 & 0xC000000000000001;
      v18 = v5;
      while (1)
      {
        if (v20)
        {
          v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
LABEL_14:
            __break(1u);
LABEL_15:

            return v3;
          }
        }

        else
        {
          if (v9 >= *(v19 + 16))
          {
            __break(1u);
            goto LABEL_18;
          }

          v10 = *(v5 + 8 * v9 + 32);

          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            goto LABEL_14;
          }
        }

        v21 = v10;
        v3 = a2;
        v12 = a1(&v21);
        if (v4)
        {
          goto LABEL_15;
        }

        if (v12)
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v13 = v8;
          v14 = a1;
          v15 = a2;
          v16 = v22[2];
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          a2 = v15;
          a1 = v14;
          v8 = v13;
          v5 = v18;
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v3 = &v22;
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        ++v9;
        if (v11 == v8)
        {
          v3 = v22;
          goto LABEL_20;
        }
      }
    }
  }

  v3 = _swiftEmptyArrayStorage;
LABEL_20:

  return v3;
}

uint64_t sub_10007BCC0(uint64_t *a1)
{
  v2 = *a1;
  if ((*(v1 + 648) & 2) != 0)
  {
    v9 = *(v2 + 16);
    if ((v9 & 1) == 0)
    {
      *(v2 + 16) = v9 | 1;
    }

    return 1;
  }

  v4 = **(v2 + 24);
  if (v4 == _TtC10driverkitd15KernelExtension)
  {
    v5 = qword_100133B50;

    if (v5 != -1)
    {
      swift_once();
    }

    v6 = &qword_10014EAC8;
    v7 = 168;
    v8 = 160;
  }

  else
  {
    if (v4 != _TtC10driverkitd15DriverExtension)
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    v10 = qword_100133B58;

    if (v10 != -1)
    {
      swift_once();
    }

    v6 = &qword_10014EAD0;
    v7 = 184;
    v8 = 176;
  }

  v11 = *v6;

  v12 = *(v1 + v8);
  v13 = *(v1 + v7);

  sub_100003CDC(&qword_100136E90, &qword_1000F9258);
  inited = swift_initStackObject();
  v51 = xmmword_1000F3160;
  *(inited + 16) = xmmword_1000F3160;
  *(inited + 32) = 1751347809;
  v15 = inited + 32;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = v12;
  *(inited + 56) = v13;
  v16 = sub_10003EB54(inited);
  swift_setDeallocating();
  sub_10000A184(v15, &qword_100134FE8, &qword_1000F4E98);
  *(&v53 + 1) = type metadata accessor for RealizedInfo(0);
  *&v54 = &off_100127850;
  *&v52 = v2;
  v50 = v2;

  v17 = sub_10007CDA8(v16);

  __chkstk_darwin(v18);
  v46[2] = &v52;
  v46[3] = v17;
  v19 = sub_10007B4B4(sub_1000800F0, v46, v11);

  if (!(v19 >> 62))
  {
    v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v20)
    {
      goto LABEL_14;
    }

    goto LABEL_27;
  }

  v20 = _CocoaArrayWrapper.endIndex.getter();
  if (!v20)
  {
LABEL_27:

    sub_100003C90(&v52);
    sub_10007D000(a1);
    v44 = *(v50 + 16);
    if ((v44 & 1) == 0)
    {
      *(v50 + 16) = v44 | 1;
    }

    sub_10007CB58(a1);
    return 1;
  }

LABEL_14:
  sub_100003C90(&v52);
  v21 = *(v50 + 24);

  v22 = sub_1000D7374();
  v24 = v23;

  *&v52 = _swiftEmptyArrayStorage;
  v25 = &v52;
  sub_1000635A4(0, v20 & ~(v20 >> 63), 0);
  if (v20 < 0)
  {
    __break(1u);
  }

  else
  {
    v47 = v24;
    v48 = v22;
    v49 = a1;
    v26 = 0;
    v22 = v52;
    v27 = v19;
    *&v51 = v19 & 0xC000000000000001;
    v28 = v19;
    v29 = v20;
    do
    {
      if (v51)
      {
        v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v30 = *(v27 + 8 * v26 + 32);
      }

      v31 = *(v30 + 16);
      v32 = *(v30 + 24);

      *&v52 = v22;
      v34 = *(v22 + 16);
      v33 = *(v22 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_1000635A4((v33 > 1), v34 + 1, 1);
        v22 = v52;
      }

      ++v26;
      *(v22 + 16) = v34 + 1;
      v35 = v22 + 16 * v34;
      *(v35 + 32) = v31;
      *(v35 + 40) = v32;
      v27 = v28;
    }

    while (v29 != v26);

    v19 = OBJC_IVAR____TtC10driverkitd12RealizedInfo_validationErrors;
    v2 = v50;
    swift_beginAccess();
    v25 = *(v2 + v19);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v19) = v25;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_23;
    }
  }

  v25 = sub_1000319F4(0, *(v25 + 2) + 1, 1, v25);
  *(v2 + v19) = v25;
LABEL_23:
  v37 = v49;
  v39 = *(v25 + 2);
  v38 = *(v25 + 3);
  if (v39 >= v38 >> 1)
  {
    v25 = sub_1000319F4((v38 > 1), v39 + 1, 1, v25);
  }

  *(v25 + 2) = v39 + 1;
  v40 = &v25[80 * v39];
  v41 = v47;
  *(v40 + 4) = v48;
  *(v40 + 5) = v41;
  *(v40 + 6) = v22;
  v42 = v52;
  v43 = v53;
  *(v40 + 88) = v54;
  *(v40 + 72) = v43;
  *(v40 + 56) = v42;
  v40[104] = 18;
  *(v2 + v19) = v25;
  swift_endAccess();
  sub_10007CB58(v37);
  return 0;
}

uint64_t sub_10007C5D8(uint64_t a1)
{
  v3 = 0xD000000000000012;
  v4 = swift_allocObject();
  v5 = v4;
  v6 = *(v1 + 648);
  v7 = *a1;
  v8 = *(*a1 + 16);
  v9 = v8 & 0x200400;
  if ((v6 & 1) == 0)
  {
    if (v9)
    {
      v10 = "Apple prefix trusted";
      v3 = 0xD000000000000018;
LABEL_4:
      v11 = v10 | 0x8000000000000000;
      *(v5 + 16) = v3;
      *(v5 + 24) = v10 | 0x8000000000000000;
      goto LABEL_5;
    }

    if ((v6 & 0x100) != 0)
    {
      v23 = *(v7 + 24);

      sub_1000D7374();
      v24._countAndFlagsBits = 0x6C7070612E6D6F63;
      v24._object = 0xE900000000000065;
      v25 = String.hasPrefix(_:)(v24);

      if (v25)
      {
        v26 = *(v7 + 16);
        if ((v26 & 0x2000) == 0)
        {
          *(v7 + 16) = v26 | 0x2000;
        }

        v27 = 0x8000000100107D50;
        v28 = 0xD000000000000014;
LABEL_28:
        *(v5 + 16) = v28;
        *(v5 + 24) = v27;
        goto LABEL_47;
      }
    }

    sub_1000138F8(*(v7 + 24) + 24, &v44);
    v30 = BYTE8(v46);
    sub_100013954(&v44);
    if (v30 == 1)
    {
      v31 = *(v7 + 24);

      sub_1000D7374();
      v32._countAndFlagsBits = 0x6C7070612E6D6F63;
      v32._object = 0xE900000000000065;
      v33 = String.hasPrefix(_:)(v32);

      if (!v33)
      {
        v10 = "Platform binary trusted";
        v3 = 0xD00000000000001ELL;
        goto LABEL_4;
      }

      v34 = *(v7 + 16);
      if ((v34 & 0x2000) == 0)
      {
        *(v7 + 16) = v34 | 0x2000;
      }

      v27 = 0x8000000100107D20;
      v28 = 0xD000000000000020;
      goto LABEL_28;
    }

    sub_100014894(v7 + 32, &v48, &unk_100137390, &unk_1000F4E70);
    if (!v49)
    {
      sub_10000A184(&v48, &unk_100137390, &unk_1000F4E70);
      v10 = " in built-in deny list";
      goto LABEL_4;
    }

    sub_100009F34(&v48, &v44);
    v35 = sub_100003C4C(&v44, *(&v45 + 1));
    v36 = *(*v35 + 32);
    if (v36)
    {
      if (v36 == 1)
      {
        v37 = *(v7 + 16) & 0x1800;
        if (v37)
        {
          v38 = 0xD000000000000016;
        }

        else
        {
          v38 = 0xD000000000000012;
        }

        if ((*(v7 + 16) & 0x1800) != 0)
        {
          v39 = "Bad code signature";
        }

        else
        {
          v39 = " in built-in deny list";
        }

        v11 = v39 | 0x8000000000000000;
        *(v5 + 16) = v38;
        *(v5 + 24) = v39 | 0x8000000000000000;
        sub_100003C90(&v44);
        if (!v37)
        {
LABEL_5:
          v12 = OBJC_IVAR____TtC10driverkitd12RealizedInfo_validationErrors;
          swift_beginAccess();
          v13 = *(v7 + v12);

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v7 + v12) = v13;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v13 = sub_1000319F4(0, *(v13 + 2) + 1, 1, v13);
            *(v7 + v12) = v13;
          }

          v16 = *(v13 + 2);
          v15 = *(v13 + 3);
          if (v16 >= v15 >> 1)
          {
            v13 = sub_1000319F4((v15 > 1), v16 + 1, 1, v13);
          }

          *(v13 + 2) = v16 + 1;
          v17 = &v13[80 * v16];
          *(v17 + 4) = v3;
          *(v17 + 5) = v11;
          v18 = v44;
          v19 = v45;
          v20 = v46;
          *(v17 + 12) = v47;
          *(v17 + 4) = v19;
          *(v17 + 5) = v20;
          *(v17 + 3) = v18;
          v17[104] = 31;
          *(v7 + v12) = v13;
          swift_endAccess();
          v21 = 0;
          v22 = *(v7 + 16);
          if ((v22 & 0x20) != 0)
          {
            goto LABEL_11;
          }

          goto LABEL_10;
        }

LABEL_47:
        v22 = *(v7 + 16);
        if ((v22 & 0x10) == 0)
        {
          v22 |= 0x10uLL;
          *(v7 + 16) = v22;
        }

        v21 = 1;
        if ((v22 & 0x20) != 0)
        {
          goto LABEL_11;
        }

LABEL_10:
        *(v7 + 16) = v22 | 0x20;
LABEL_11:
        sub_10007FDBC(a1, v5);

        return v21;
      }

      v41 = *(*v35 + 24);
      *&v48 = 0;
      *(&v48 + 1) = 0xE000000000000000;

      _StringGuts.grow(_:)(17);

      *&v48 = 0x204449206D616554;
      *(&v48 + 1) = 0xEF203A64696C6176;
      v42._countAndFlagsBits = v41;
      v42._object = v36;
      String.append(_:)(v42);
      sub_10003E118(v41, v36);
      v43 = *(&v48 + 1);
      *(v5 + 16) = v48;
      *(v5 + 24) = v43;
    }

    else
    {
      v40 = *(v7 + 16);
      if ((v40 & 0x2000) == 0)
      {
        *(v7 + 16) = v40 | 0x2000;
      }

      *(v5 + 16) = 0xD000000000000017;
      *(v5 + 24) = 0x8000000100107CE0;
    }

    sub_100003C90(&v44);
    goto LABEL_47;
  }

  if (v9)
  {
    *(v4 + 16) = 0xD000000000000018;
    *(v4 + 24) = 0x8000000100107D70;
    sub_10007FDBC(a1, v4);

    return 0;
  }

  else
  {
    if ((v8 & 0x10) == 0)
    {
      *(v7 + 16) = v8 | 0x10;
    }

    *(v4 + 16) = 0xD000000000000022;
    *(v4 + 24) = 0x8000000100107D90;
    sub_10007FDBC(a1, v4);

    return 1;
  }
}

uint64_t sub_10007CA90(uint64_t *a1)
{
  v2 = *a1;
  if ((*(v1 + 648) & 8) != 0)
  {
    v6 = *(v2 + 16);
    if ((v6 & 0x100) == 0)
    {
      v5 = v6 | 0x100;
      goto LABEL_7;
    }

    return 1;
  }

  swift_beginAccess();
  sub_100014894(v2 + 80, v8, &qword_100135090, &qword_1000F4F58);
  v3 = v8[3];
  sub_10000A184(v8, &qword_100135090, &qword_1000F4F58);
  v4 = *(v2 + 16);
  if (v3)
  {
    if ((~v4 & 0x300) != 0)
    {
      v5 = v4 | 0x300;
LABEL_7:
      *(v2 + 16) = v5;
      return 1;
    }

    return 1;
  }

  result = 0;
  if ((v4 & 0x200) == 0)
  {
    *(v2 + 16) = v4 | 0x200;
  }

  return result;
}

uint64_t sub_10007CB58(uint64_t *a1)
{
  v2 = type metadata accessor for OSSignpostID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  v8 = *(*a1 + 16);
  if ((v8 & 2) == 0)
  {
    *(v7 + 16) = v8 | 2;
    v7 = *a1;
  }

  v9 = *(v7 + 24);

  v10 = sub_1000D7374();
  v12 = v11;

  if (qword_100133B10 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for OSSignposter();
  sub_1000144F0(v13, qword_10014EA70);

  static OSSignpostID.exclusive.getter();
  v14 = OSSignposter.logHandle.getter();
  v15 = static os_signpost_type_t.event.getter();

  if (OS_os_log.signpostsEnabled.getter())
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v22 = v17;
    *v16 = 136315138;
    v18 = sub_1000E3AF8(v10, v12, &v22);

    *(v16 + 4) = v18;
    v19 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, v15, v19, "ExtensionValidation", "Validated: %s", v16, 0xCu);
    sub_100003C90(v17);
  }

  else
  {
  }

  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_10007CDA8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100003CDC(&qword_100134FD8, &qword_1000FAEC0);
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
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = (v13 << 10) | (16 * v14);
        v16 = (*(a1 + 48) + v15);
        v18 = *v16;
        v17 = v16[1];
        v19 = (*(a1 + 56) + v15);
        v25 = *v19;
        v26 = v19[1];

        swift_dynamicCast();
        sub_10000B48C(&v27, v29);
        sub_10000B48C(v29, v30);
        sub_10000B48C(v30, &v28);
        result = sub_100061588(v18, v17);
        if (v20)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v18;
          v9[1] = v17;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          sub_100003C90(v12);
          result = sub_10000B48C(&v28, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v21 = (v2[6] + 16 * result);
          *v21 = v18;
          v21[1] = v17;
          result = sub_10000B48C(&v28, (v2[7] + 32 * result));
          v22 = v2[2];
          v23 = __OFADD__(v22, 1);
          v24 = v22 + 1;
          if (v23)
          {
            goto LABEL_21;
          }

          v2[2] = v24;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

void sub_10007D000(uint64_t *a1)
{
  v4 = sub_100003CDC(&unk_1001389D0, &qword_1000F4F60);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v221 - v6;
  v8 = type metadata accessor for URL();
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8);
  v12 = &v221 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v221 - v14;
  v16 = __chkstk_darwin(v13);
  v19 = &v221 - v18;
  v20 = *(v1 + 648);
  if ((v20 & 0x8000) != 0)
  {
    static os_log_type_t.info.getter();
    sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1000F3160;
    *(v25 + 56) = &type metadata for String;
    *(v25 + 64) = sub_100003D24();
    *(v25 + 32) = 0xD000000000000015;
    *(v25 + 40) = 0x80000001001082B0;
LABEL_5:
    sub_10001491C();
LABEL_6:
    v26 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();
LABEL_7:

    return;
  }

  v230 = v17;
  *&v231 = v16;
  v21 = *a1;
  sub_1000138F8(*(v21 + 24) + 24, &v234);
  v22 = BYTE8(v236);
  sub_100013954(&v234);
  if (v22 == 1)
  {
    v234._countAndFlagsBits = 0;
    v234._object = 0xE000000000000000;
    _StringGuts.grow(_:)(56);
    v238 = v234;
    v23._countAndFlagsBits = 0xD000000000000036;
    v23._object = 0x8000000100108270;
    String.append(_:)(v23);
    v24 = sub_1000138F8(*(v21 + 24) + 24, &v234);
LABEL_10:
    v27._countAndFlagsBits = sub_1000DAD64(v24);
    String.append(_:)(v27);

    sub_100013954(&v234);
    v28 = v238;
    static os_log_type_t.info.getter();
    sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_1000F3160;
    *(v29 + 56) = &type metadata for String;
    *(v29 + 64) = sub_100003D24();
    *(v29 + 32) = v28;
    sub_10001491C();

    v30 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();

    return;
  }

  sub_1000138F8(*(v21 + 24) + 24, &v234);
  if (BYTE8(v236) == 2)
  {
    v234._countAndFlagsBits = 0;
    v234._object = 0xE000000000000000;
    _StringGuts.grow(_:)(34);

    *&v238 = 0xD000000000000020;
    *(&v238 + 1) = 0x8000000100108240;
    v24 = sub_1000138F8(*(v21 + 24) + 24, &v234);
    goto LABEL_10;
  }

  sub_100013954(&v234);
  sub_1000138F8(*(v21 + 24) + 24, &v238);
  if (v240)
  {
    sub_100013954(&v238);
    sub_10001449C();
    swift_allocError();
    *v31 = 0xD000000000000020;
    *(v31 + 8) = 0x8000000100107EB0;
    v32 = v237;
    v33 = v236;
    v34 = v235;
    *(v31 + 16) = v234;
    *(v31 + 32) = v34;
    *(v31 + 48) = v33;
    *(v31 + 64) = v32;
    *(v31 + 72) = 19;
    swift_willThrow();
LABEL_63:
    static os_log_type_t.info.getter();
    sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
    v103 = swift_allocObject();
    v104 = v103;
    v105 = xmmword_1000F3160;
    goto LABEL_64;
  }

  v226 = v2;
  sub_100009F34(&v238, &v241);
  sub_100009F34(&v241, &v244);
  v35 = v245;
  v36 = v246;
  sub_100003C4C(&v244, v245);
  v37 = *(v36 + 64);
  v227 = v1;
  v37(v35, v36);
  v38 = URL.path.getter();
  v39 = v227;
  v229 = v38;
  v41 = v40;
  v42 = *(v230 + 8);
  v225 = v230 + 8;
  v224 = v42;
  v42(v19, v231);
  if ((v20 & 4) == 0)
  {
    v43 = v39[49];
    sub_100003CDC(&qword_1001342F0, &qword_1000F3AB0);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_1000F3C80;
    v45 = v39[51];
    *(v44 + 32) = v39[50];
    *(v44 + 40) = v45;
    v46 = v39[52];
    v47 = v39[53];
    *(v44 + 48) = v46;
    *(v44 + 56) = v47;
    v234._countAndFlagsBits = v43;

    sub_100030728(v44);
    *&v228 = v234._countAndFlagsBits;
    v48 = v245;
    v49 = v246;
    sub_100003C4C(&v244, v245);
    v50 = (*(v49 + 16))(v48, v49);
    if (v51 == 1)
    {
      v221 = 1;
      *&v223 = v50;
      v222 = v7;
      v52 = v41;
      v84 = (v228 + 40);
      v85 = -*(v228 + 16);
      v86 = -1;
      while (v85 + v86 != -1)
      {
        if (++v86 >= *(v228 + 16))
        {
LABEL_72:
          __break(1u);
LABEL_73:
          sub_100003C90(&v241);
          v234._countAndFlagsBits = 0;
          v234._object = 0xE000000000000000;
          _StringGuts.grow(_:)(40);

          v234._countAndFlagsBits = 0xD000000000000026;
          v234._object = 0x8000000100108030;
          v215._countAndFlagsBits = v229;
          v215._object = v228;
          String.append(_:)(v215);
          goto LABEL_39;
        }

        v87 = v84 + 2;
        v88 = *(v84 - 1);
        v89 = *v84;

        v90._countAndFlagsBits = v88;
        v90._object = v89;
        v91 = String.hasPrefix(_:)(v90);

        v84 = v87;
        if (v91)
        {
          goto LABEL_25;
        }
      }

      v234._countAndFlagsBits = 0;
      v234._object = 0xE000000000000000;
      _StringGuts.grow(_:)(112);
      v119._countAndFlagsBits = 0xD00000000000001DLL;
      v119._object = 0x8000000100108180;
      String.append(_:)(v119);
      v120 = v246;
      sub_100003C4C(&v244, v245);
      v121 = *(v120 + 8);
      v122._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v122);

      v123._countAndFlagsBits = 0xD00000000000004FLL;
      v123._object = 0x80000001001081A0;
      String.append(_:)(v123);
      *&v238 = v228;
      sub_100003CDC(&qword_100136C80, &qword_1000F39B0);
      sub_100018594();
      v124 = BidirectionalCollection<>.joined(separator:)();
      v126 = v125;

      v127._countAndFlagsBits = 9;
      v127._object = 0xE100000000000000;
      v128 = String.init(repeating:count:)(v127, 1);
      countAndFlagsBits = v128._countAndFlagsBits;
      object = v128._object;
      *&v238 = v124;
      *(&v238 + 1) = v126;
      *&v241 = 10;
      *(&v241 + 1) = 0xE100000000000000;
      v232 = 10;
      v233 = 0xE100000000000000;
      String.append(_:)(v128);
      sub_100012814();
      v131 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v133 = v132;

      v238 = __PAIR128__(object, countAndFlagsBits);

      v134._countAndFlagsBits = v131;
      v134._object = v133;
      String.append(_:)(v134);

      String.append(_:)(v238);

      v135 = v234;
      sub_10001449C();
      swift_allocError();
      *v136 = v135;
      v137 = v237;
      v138 = v236;
      v139 = v235;
      *(v136 + 16) = v234;
      *(v136 + 32) = v139;
      *(v136 + 48) = v138;
      *(v136 + 64) = v137;
      *(v136 + 72) = 19;
      swift_willThrow();
      v82 = v223;
      v83 = 1;
LABEL_35:
      sub_100041A00(v82, v83);
      sub_100003C90(&v244);
      static os_log_type_t.info.getter();
      sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
      v140 = swift_allocObject();
      *(v140 + 16) = xmmword_1000F3160;
      *(v140 + 56) = &type metadata for String;
      *(v140 + 64) = sub_100003D24();
      *(v140 + 32) = 0x726F727245;
      *(v140 + 40) = 0xE500000000000000;
      sub_10001491C();
      v26 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)();
      goto LABEL_7;
    }

    if (v51)
    {
      v106 = v50;
      v107 = v51;

      sub_100041A00(v106, v107);
      v234._countAndFlagsBits = 0;
      v234._object = 0xE000000000000000;
      _StringGuts.grow(_:)(45);

      v234._countAndFlagsBits = 0x20656C646E7542;
      v234._object = 0xE700000000000000;
      v108 = v246;
      sub_100003C4C(&v244, v245);
      v109 = *(v108 + 8);
      v110._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v110);

      v111._countAndFlagsBits = 0xD000000000000024;
      v111._object = 0x8000000100107F20;
      String.append(_:)(v111);
      v112 = v234;
      sub_10001449C();
      swift_allocError();
      *v113 = v112;
      v114 = v237;
      v115 = v236;
      v116 = v235;
      *(v113 + 16) = v234;
      *(v113 + 32) = v116;
      *(v113 + 48) = v115;
      *(v113 + 64) = v114;
      v117 = 9;
LABEL_61:
      *(v113 + 72) = v117;
      swift_willThrow();
      goto LABEL_62;
    }

    v221 = 0;
    *&v223 = v50;
    v222 = v7;
    v52 = v41;
    v53 = (v228 + 40);
    v54 = -*(v228 + 16);
    v55 = -1;
    while (v54 + v55 != -1)
    {
      if (++v55 >= *(v228 + 16))
      {
        __break(1u);
        goto LABEL_72;
      }

      v56 = v53 + 2;
      v57 = *(v53 - 1);
      v58 = *v53;

      v59._countAndFlagsBits = v57;
      v59._object = v58;
      v60 = String.hasPrefix(_:)(v59);

      v53 = v56;
      if (v60)
      {

        v234._countAndFlagsBits = 0;
        v234._object = 0xE000000000000000;
        _StringGuts.grow(_:)(111);
        v61._countAndFlagsBits = 0xD00000000000001DLL;
        v61._object = 0x8000000100108180;
        String.append(_:)(v61);
        v62 = v246;
        sub_100003C4C(&v244, v245);
        v63 = *(v62 + 8);
        v64._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v64);

        v65._countAndFlagsBits = 0xD00000000000004ELL;
        v65._object = 0x80000001001081F0;
        String.append(_:)(v65);
        *&v238 = v228;
        sub_100003CDC(&qword_100136C80, &qword_1000F39B0);
        sub_100018594();
        v66 = BidirectionalCollection<>.joined(separator:)();
        v68 = v67;

        v69._countAndFlagsBits = 9;
        v69._object = 0xE100000000000000;
        v70 = String.init(repeating:count:)(v69, 1);
        v71 = v70._countAndFlagsBits;
        v72 = v70._object;
        *&v238 = v66;
        *(&v238 + 1) = v68;
        *&v241 = 10;
        *(&v241 + 1) = 0xE100000000000000;
        v232 = 10;
        v233 = 0xE100000000000000;
        String.append(_:)(v70);
        sub_100012814();
        v73 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
        v75 = v74;

        v238 = __PAIR128__(v72, v71);

        v76._countAndFlagsBits = v73;
        v76._object = v75;
        String.append(_:)(v76);

        String.append(_:)(v238);

        v77 = v234;
        sub_10001449C();
        swift_allocError();
        *v78 = v77;
        v79 = v237;
        v80 = v236;
        v81 = v235;
        *(v78 + 16) = v234;
        *(v78 + 32) = v81;
        *(v78 + 48) = v80;
        *(v78 + 64) = v79;
        *(v78 + 72) = 19;
        swift_willThrow();
        v82 = v223;
        v83 = 0;
        goto LABEL_35;
      }
    }

LABEL_25:

    sub_100041A00(v223, v221);
    v41 = v52;
    v7 = v222;
    v39 = v227;
  }

  LOBYTE(v232) = 0;
  if ((v20 & 0x40000) == 0)
  {
    v92 = v229;
    goto LABEL_55;
  }

  v93 = *sub_100003C4C(v39 + 2, v39[5]);
  sub_1000DF9D4(&v234);
  v95 = *(&v235 + 1);
  v94 = v236;
  *&v228 = sub_100003C4C(&v234, *(&v235 + 1));
  v96 = v245;
  v97 = v246;
  sub_100003C4C(&v244, v245);
  (*(v97 + 64))(v96, v97);
  sub_100003CDC(&qword_100136E98, &qword_1000F9260);
  v98 = swift_allocObject();
  v223 = xmmword_1000F3160;
  *(v98 + 16) = xmmword_1000F3160;
  *(v98 + 32) = NSURLIsSymbolicLinkKey;
  v99 = NSURLIsSymbolicLinkKey;
  v100 = sub_100080134(v98);
  swift_setDeallocating();
  sub_100080328(v98 + 32);
  swift_deallocClassInstance();
  v101 = v226;
  (*(v94 + 192))(&v238, v15, v100, v95, v94);
  if (v101)
  {
    v224(v15, v231);

    v102 = &v234;
LABEL_30:
    sub_100003C90(&v102->_countAndFlagsBits);
    sub_100003C90(&v244);
    static os_log_type_t.info.getter();
    sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
    v103 = swift_allocObject();
    v104 = v103;
    v105 = v223;
LABEL_64:
    *(v103 + 16) = v105;
    *(v103 + 56) = &type metadata for String;
    v104[8] = sub_100003D24();
    v104[4] = 0x726F727245;
    v104[5] = 0xE500000000000000;
    goto LABEL_5;
  }

  v224(v15, v231);

  sub_100003C90(&v234._countAndFlagsBits);
  sub_100003C4C(&v238, v239);
  v118 = URLResourceValues.isSymbolicLink.getter();
  v226 = 0;
  if (v118 == 2)
  {
    v92 = v229;
  }

  else
  {
    v92 = v229;
    if (v118)
    {
      v234._countAndFlagsBits = v229;
      *&v228 = v41;
      v234._object = v41;
      *&v241 = 3092014;
      *(&v241 + 1) = 0xE300000000000000;
      sub_100012814();
      v141 = StringProtocol.contains<A>(_:)();
      v142 = v227;
      if ((v141 & 1) == 0)
      {
        v155 = v227[48];
        v156 = (v155 + 40);
        v157 = -*(v155 + 16);
        v158 = -1;
        while (v157 + v158 != -1)
        {
          if (++v158 >= *(v155 + 16))
          {
            __break(1u);
          }

          v159 = v156 + 2;
          v161 = *(v156 - 1);
          v160 = *v156;

          v162._countAndFlagsBits = v161;
          v162._object = v160;
          v163 = String.hasPrefix(_:)(v162);

          v156 = v159;
          if (v163)
          {
            v164 = *sub_100003C4C(v142 + 2, v142[5]);
            sub_1000DF9D4(&v241);
            v165 = v242;
            v166 = v243;
            sub_100003C4C(&v241, v242);
            v167 = v226;
            v168 = (*(v166 + 152))(v229, v228, v165, v166);
            if (v167)
            {

              sub_100003C90(&v241);
              goto LABEL_41;
            }

            v226 = 0;
            v222 = v169;
            if (v169)
            {
              v92 = v168;
              sub_100003C90(&v241);
              v170 = v227[46];
              v171 = (v170 + 40);
              v172 = -*(v170 + 16);
              v173 = -1;
              while (1)
              {
                if (v172 + v173 == -1)
                {
                  v234._countAndFlagsBits = 0;
                  v234._object = 0xE000000000000000;
                  _StringGuts.grow(_:)(96);
                  v216._countAndFlagsBits = 0x5520656C646E7542;
                  v216._object = 0xEB00000000204C52;
                  String.append(_:)(v216);
                  v217._countAndFlagsBits = v229;
                  v217._object = v228;
                  String.append(_:)(v217);

                  v218._countAndFlagsBits = 0xD000000000000011;
                  v218._object = 0x80000001001080A0;
                  String.append(_:)(v218);
                  v219._countAndFlagsBits = v92;
                  v219._object = v222;
                  String.append(_:)(v219);

                  v220._countAndFlagsBits = 0xD000000000000040;
                  v220._object = 0x80000001001080C0;
                  String.append(_:)(v220);
                  goto LABEL_40;
                }

                if (++v173 >= *(v170 + 16))
                {
                  break;
                }

                v174 = v171 + 2;
                v176 = *(v171 - 1);
                v175 = *v171;

                v177._countAndFlagsBits = v176;
                v177._object = v175;
                v178 = String.hasPrefix(_:)(v177);

                v171 = v174;
                if (v178)
                {
                  sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
                  v179 = swift_allocObject();
                  *(v179 + 16) = xmmword_1000F3C80;
                  *(v179 + 56) = &type metadata for String;
                  v180 = sub_100003D24();
                  v181 = v228;
                  *(v179 + 32) = v229;
                  *(v179 + 40) = v181;
                  *(v179 + 96) = &type metadata for String;
                  *(v179 + 104) = v180;
                  *(v179 + 64) = v180;
                  *(v179 + 72) = v92;
                  v41 = v222;
                  *(v179 + 80) = v222;
                  sub_10001491C();

                  v182 = static OS_os_log.default.getter();
                  static os_log_type_t.default.getter();
                  os_log(_:dso:log:type:_:)();

                  goto LABEL_54;
                }
              }

              __break(1u);
              return;
            }

            goto LABEL_73;
          }
        }
      }

      v234._countAndFlagsBits = 0;
      v234._object = 0xE000000000000000;
      _StringGuts.grow(_:)(115);
      v143._countAndFlagsBits = 0x5520656C646E7542;
      v143._object = 0xEB00000000204C52;
      String.append(_:)(v143);
      v144._countAndFlagsBits = v229;
      v144._object = v228;
      String.append(_:)(v144);

      v145._countAndFlagsBits = 0xD000000000000064;
      v145._object = 0x8000000100108110;
      String.append(_:)(v145);
      *&v241 = v142[48];

      sub_100003CDC(&qword_100136C80, &qword_1000F39B0);
      sub_100018594();
      v146 = BidirectionalCollection<>.joined(separator:)();
      v148 = v147;

      v149._countAndFlagsBits = v146;
      v149._object = v148;
      String.append(_:)(v149);
LABEL_39:

LABEL_40:
      v150 = v234;
      sub_10001449C();
      swift_allocError();
      *v151 = v150;
      v152 = v237;
      v153 = v236;
      v154 = v235;
      *(v151 + 16) = v234;
      *(v151 + 32) = v154;
      *(v151 + 48) = v153;
      *(v151 + 64) = v152;
      *(v151 + 72) = 19;
      swift_willThrow();
LABEL_41:
      v102 = &v238;
      goto LABEL_30;
    }
  }

LABEL_54:
  v39 = v227;
  sub_100003C90(&v238);
LABEL_55:
  v183 = *sub_100003C4C(v39 + 2, v39[5]);
  sub_1000DF9D4(&v234);
  v184 = *(&v235 + 1);
  v185 = v236;
  sub_100003C4C(&v234, *(&v235 + 1));
  if (((*(v185 + 136))(v92, v41, &v232, v184, v185) & 1) == 0)
  {
    sub_100003C90(&v234._countAndFlagsBits);
    goto LABEL_60;
  }

  v186 = v232;
  sub_100003C90(&v234._countAndFlagsBits);
  if ((v186 & 1) == 0)
  {
LABEL_60:
    v234._countAndFlagsBits = 0;
    v234._object = 0xE000000000000000;
    _StringGuts.grow(_:)(32);

    v234._countAndFlagsBits = 0x5520656C646E7542;
    v234._object = 0xEB00000000204C52;
    v192._countAndFlagsBits = v92;
    v192._object = v41;
    String.append(_:)(v192);

    v193._countAndFlagsBits = 0xD000000000000013;
    v193._object = 0x8000000100107F50;
    String.append(_:)(v193);
    v194 = v234;
    sub_10001449C();
    swift_allocError();
    *v113 = v194;
    v195 = v237;
    v196 = v236;
    v197 = v235;
    *(v113 + 16) = v234;
    *(v113 + 32) = v197;
    *(v113 + 48) = v196;
    *(v113 + 64) = v195;
    v117 = 19;
    goto LABEL_61;
  }

  v187 = *sub_100003C4C(v227 + 2, v227[5]);
  sub_1000DF9D4(&v234);
  v188 = *(&v235 + 1);
  v189 = v236;
  sub_100003C4C(&v234, *(&v235 + 1));
  v190 = v226;
  v191 = (*(v189 + 224))(v92, v41, v188, v189);
  if (v190)
  {

    sub_100003C90(&v234._countAndFlagsBits);
LABEL_62:
    sub_100003C90(&v244);
    goto LABEL_63;
  }

  if ((v191 & 1) == 0)
  {
    v210 = v92;
    sub_100003C90(&v234._countAndFlagsBits);
LABEL_70:
    v229 = sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
    v211 = swift_allocObject();
    v228 = xmmword_1000F3160;
    *(v211 + 16) = xmmword_1000F3160;
    *(v211 + 56) = &type metadata for String;
    v212 = sub_100003D24();
    *(v211 + 64) = v212;
    *(v211 + 32) = v210;
    *(v211 + 40) = v41;
    sub_10001491C();

    v213 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    URL.init(fileURLWithPath:)();

    (*(v230 + 56))(v7, 1, 1, v231);
    sub_10007EC48(v12, v7);
    sub_10000A184(v7, &unk_1001389D0, &qword_1000F4F60);
    v224(v12, v231);
    sub_100003C90(&v244);
    static os_log_type_t.info.getter();
    v214 = swift_allocObject();
    *(v214 + 16) = v228;
    *(v214 + 56) = &type metadata for String;
    *(v214 + 64) = v212;
    *(v214 + 32) = 0xD000000000000015;
    *(v214 + 40) = 0x8000000100107FA0;
    goto LABEL_6;
  }

  v198 = v245;
  v199 = v246;
  sub_100003C4C(&v244, v245);
  v200 = (*(v199 + 16))(v198, v199);
  v202 = v201;
  sub_100003C90(&v234._countAndFlagsBits);
  if (v202 != 1)
  {
    v210 = v92;
    sub_100041A00(v200, v202);
    goto LABEL_70;
  }

  static os_log_type_t.info.getter();
  sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
  v203 = swift_allocObject();
  v231 = xmmword_1000F3160;
  *(v203 + 16) = xmmword_1000F3160;
  *(v203 + 56) = &type metadata for String;
  v204 = sub_100003D24();
  v205 = v41;
  v206 = v204;
  *(v203 + 64) = v204;
  *(v203 + 32) = v92;
  *(v203 + 40) = v205;
  sub_10001491C();
  v207 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)();

  sub_100003C90(&v244);
  static os_log_type_t.info.getter();
  v208 = swift_allocObject();
  *(v208 + 16) = v231;
  *(v208 + 56) = &type metadata for String;
  *(v208 + 64) = v206;
  *(v208 + 32) = 0xD000000000000026;
  *(v208 + 40) = 0x8000000100108000;
  v209 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)();
}

uint64_t sub_10007EC48(unint64_t a1, uint64_t a2)
{
  v4 = sub_100003CDC(&unk_1001389D0, &qword_1000F4F60);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v52 - v6;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = v52 - v14;
  sub_100014894(a2, v7, &unk_1001389D0, &qword_1000F4F60);
  v16 = *(v9 + 48);
  if (v16(v7, 1, v8) == 1)
  {
    (*(v9 + 16))(v15, a1, v8);
    v17 = a1;
    if (v16(v7, 1, v8) != 1)
    {
      sub_10000A184(v7, &unk_1001389D0, &qword_1000F4F60);
    }
  }

  else
  {
    (*(v9 + 32))(v15, v7, v8);
    v17 = a1;
  }

  v66 = _swiftEmptyArrayStorage;
  v18 = URL.path.getter();
  v19 = v67;
  v20 = v56;
  sub_10007F34C(v18, v21);
  if (!v20)
  {
    v56 = v17;
    v55 = v15;
    v54 = v8;

    goto LABEL_11;
  }

  v65 = v20;
  swift_errorRetain();
  sub_100003CDC(&qword_1001372F0, &unk_1000F39D0);
  if (!swift_dynamicCast())
  {
    goto LABEL_20;
  }

  *&v60[9] = *(v64 + 9);
  v59 = v63;
  *v60 = v64[0];
  v58 = v62;
  v57 = v61;
  if (BYTE8(v64[1]) != 19)
  {
    sub_10001465C(&v57);
LABEL_20:

    swift_willThrow();
    (*(v9 + 8))(v15, v8);
  }

  v22 = sub_1000319F4(0, 1, 1, _swiftEmptyArrayStorage);
  v24 = *(v22 + 2);
  v23 = *(v22 + 3);
  v25 = (v24 + 1);
  if (v24 >= v23 >> 1)
  {
    goto LABEL_25;
  }

  while (1)
  {
    v56 = v17;
    v55 = v15;
    v54 = v8;
    *(v22 + 2) = v25;
    v26 = &v22[80 * v24];
    *(v26 + 2) = v57;
    v27 = v58;
    v28 = v59;
    v29 = *v60;
    *(v26 + 89) = *&v60[9];
    *(v26 + 4) = v28;
    *(v26 + 5) = v29;
    *(v26 + 3) = v27;
    v66 = v22;

LABEL_11:
    v30 = *sub_100003C4C((v19 + 16), *(v19 + 40));
    sub_1000DF9D4(&v61);
    v31 = v63;
    v53 = *(&v62 + 1);
    v52[1] = sub_100003C4C(&v61, *(&v62 + 1));
    sub_100003CDC(&qword_100136E98, &qword_1000F9260);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_1000F7EC0;
    *(v32 + 32) = NSURLPathKey;
    *(v32 + 40) = NSURLIsDirectoryKey;
    *(v32 + 48) = NSURLIsSymbolicLinkKey;
    v33 = *(v31 + 24);
    v34 = NSURLPathKey;
    v35 = NSURLIsDirectoryKey;
    v36 = NSURLIsSymbolicLinkKey;
    v19 = v33(v55, v32, 1, v53, v31);

    sub_100003C90(&v61);
    v15 = *(v19 + 16);
    v8 = v54;
    if (!v15)
    {
      break;
    }

    v17 = 0;
    v24 = v9 + 16;
    v25 = (v9 + 8);
    while (1)
    {
      v23 = *(v19 + 16);
      if (v17 >= v23)
      {
        break;
      }

      (*(v9 + 16))(v13, v19 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v17, v8);
      sub_10007F748(v13, v67, v56, &v66);
      ++v17;
      (*v25)(v13, v8);
      if (v15 == v17)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_25:
    v22 = sub_1000319F4((v23 > 1), v25, 1, v22);
  }

LABEL_15:
  v37 = v66;
  v38 = *(v66 + 2);
  if (!v38)
  {
    (*(v9 + 8))(v55, v8);
  }

  v40 = v55;
  if (v38 != 1)
  {
    sub_10001449C();
    swift_allocError();
    *v47 = v37;
    v48 = v63;
    v49 = v64[0];
    v50 = v62;
    *(v47 + 8) = v61;
    *(v47 + 56) = v49;
    *(v47 + 40) = v48;
    *(v47 + 24) = v50;
    *(v47 + 72) = 0;
    swift_willThrow();
    v51 = *(v9 + 8);

    v51(v40, v8);
  }

  if (v37[2])
  {
    v41 = *(v37 + 3);
    v42 = *(v37 + 5);
    v63 = *(v37 + 4);
    v64[0] = v42;
    *(v64 + 9) = *(v37 + 89);
    v61 = *(v37 + 2);
    v62 = v41;
    sub_10001449C();
    swift_allocError();
    *v43 = v61;
    v45 = v63;
    v44 = v64[0];
    v46 = v62;
    *(v43 + 57) = *(v64 + 9);
    v43[2] = v45;
    v43[3] = v44;
    v43[1] = v46;
    swift_willThrow();
    sub_1000419A4(&v61, &v57);
    (*(v9 + 8))(v40, v8);
  }

  __break(1u);
  return result;
}

uint64_t sub_10007F34C(uint64_t a1, void *a2)
{
  v6 = *sub_100003C4C((v2 + 16), *(v2 + 40));
  sub_1000DF9D4(&v28);
  v7 = *(&v29 + 1);
  v8 = v30;
  sub_100003C4C(&v28, *(&v29 + 1));
  v9 = (*(v8 + 72))(a1, a2, v7, v8);
  result = sub_100003C90(&v28);
  if (!v3)
  {
    if (*(v9 + 16) && (v11 = sub_100061814(NSFileOwnerAccountID), (v12 & 1) != 0) && (sub_10000B430(*(v9 + 56) + 32 * v11, &v28), (swift_dynamicCast() & 1) != 0) && *(v9 + 16) && (v13 = sub_100061814(NSFileGroupOwnerAccountID), (v14 & 1) != 0) && (sub_10000B430(*(v9 + 56) + 32 * v13, &v28), (swift_dynamicCast() & 1) != 0) && *(v9 + 16) && (v15 = sub_100061814(NSFilePosixPermissions), (v16 & 1) != 0))
    {
      sub_10000B430(*(v9 + 56) + 32 * v15, &v28);

      if (swift_dynamicCast())
      {
        if (!v27)
        {
          S_IWOTH.getter();
          return S_IWGRP.getter();
        }

        *&v28 = 0;
        *(&v28 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(47);

        *&v28 = 0xD000000000000013;
        *(&v28 + 1) = 0x8000000100108370;
        v23._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v23);

        v24._countAndFlagsBits = 58;
        v24._object = 0xE100000000000000;
        String.append(_:)(v24);
        v25._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v25);

        v26._countAndFlagsBits = 0xD000000000000015;
        v26._object = 0x8000000100108390;
        String.append(_:)(v26);
        goto LABEL_15;
      }
    }

    else
    {
    }

    *&v28 = 0;
    *(&v28 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(40);

    *&v28 = 0xD000000000000026;
    *(&v28 + 1) = 0x8000000100108340;
LABEL_15:
    v17._countAndFlagsBits = a1;
    v17._object = a2;
    String.append(_:)(v17);
    v18 = v28;
    sub_10001449C();
    swift_allocError();
    *v19 = v18;
    v20 = v31;
    v21 = v30;
    v22 = v29;
    *(v19 + 16) = v28;
    *(v19 + 32) = v22;
    *(v19 + 48) = v21;
    *(v19 + 64) = v20;
    *(v19 + 72) = 19;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_10007F748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v57 = a4;
  v59 = a3;
  v6 = sub_100003CDC(&unk_1001389D0, &qword_1000F4F60);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v58 = &v57 - v8;
  v9 = *sub_100003C4C((a2 + 16), *(a2 + 40));
  sub_1000DF9D4(&v65);
  v11 = *(&v66 + 1);
  v10 = v67;
  sub_100003C4C(&v65, *(&v66 + 1));
  sub_100003CDC(&qword_100136E98, &qword_1000F9260);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000F3C80;
  *(inited + 32) = NSURLIsDirectoryKey;
  *(inited + 40) = NSURLIsSymbolicLinkKey;
  v13 = NSURLIsDirectoryKey;
  v14 = NSURLIsSymbolicLinkKey;
  v15 = sub_100080134(inited);
  swift_setDeallocating();
  type metadata accessor for URLResourceKey(0);
  swift_arrayDestroy();
  v16 = v72;
  (*(v10 + 192))(v70, a1, v15, v11, v10);

  result = sub_100003C90(&v65);
  if (!v16)
  {
    v18 = v58;
    v19 = v59;
    sub_100003C4C(v70, v71);
    v20 = URLResourceValues.isSymbolicLink.getter();
    if (v20 == 2 || (v20 & 1) == 0)
    {
      sub_100003C4C(v70, v71);
      v24 = URLResourceValues.isDirectory.getter();
      if (v24 == 2 || (v24 & 1) == 0)
      {
        v26 = URL.path.getter();
        sub_10007F34C(v26, v27);
LABEL_24:

        return sub_100003C90(v70);
      }

      URL.absoluteURL.getter();
      v25 = type metadata accessor for URL();
      (*(*(v25 - 8) + 56))(v18, 0, 1, v25);
      sub_10007EC48(v19, v18);
      sub_10000A184(v18, &unk_1001389D0, &qword_1000F4F60);
      return sub_100003C90(v70);
    }

    v21 = *sub_100003C4C((a2 + 16), *(a2 + 40));
    sub_1000DF9D4(&v61);
    v22 = v63;
    sub_100003C4C(&v61, *(&v62 + 1));
    v23 = URL.path.getter();
    v40 = (*(v22 + 152))(v23);
    v42 = v41;

    if (v42)
    {
      sub_100003C90(&v61);
      v43._countAndFlagsBits = URL.path.getter();
      v44 = String.hasPrefix(_:)(v43);

      if (v44)
      {
        goto LABEL_24;
      }

      *&v65 = 0;
      *(&v65 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(103);
      v45._countAndFlagsBits = 0xD000000000000034;
      v45._object = 0x80000001001082D0;
      String.append(_:)(v45);
      v46._countAndFlagsBits = URL.path.getter();
      String.append(_:)(v46);

      v47._countAndFlagsBits = 0x2073746E696F7020;
      v47._object = 0xEB00000000206F74;
      String.append(_:)(v47);
      v48._countAndFlagsBits = v40;
      v48._object = v42;
      String.append(_:)(v48);

      v49._object = 0x8000000100108310;
      v49._countAndFlagsBits = 0xD000000000000022;
      String.append(_:)(v49);
    }

    else
    {
      sub_100003C90(&v61);
      *&v65 = 0;
      *(&v65 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(40);

      *&v65 = 0xD000000000000026;
      *(&v65 + 1) = 0x8000000100108030;
    }

    v50._countAndFlagsBits = URL.path.getter();
    String.append(_:)(v50);

    v51 = v65;
    sub_10001449C();
    v52 = swift_allocError();
    *v53 = v51;
    v54 = *&v68[0];
    v56 = v66;
    v55 = v67;
    *(v53 + 16) = v65;
    *(v53 + 32) = v56;
    *(v53 + 48) = v55;
    *(v53 + 64) = v54;
    *(v53 + 72) = 19;
    swift_willThrow();
    v69 = v52;
    swift_errorRetain();
    sub_100003CDC(&qword_1001372F0, &unk_1000F39D0);
    if (swift_dynamicCast())
    {
      *(v64 + 9) = *(v68 + 9);
      v63 = v67;
      v64[0] = v68[0];
      v61 = v65;
      v62 = v66;
      if (!BYTE8(v68[1]))
      {
        v37 = v61;

        v38 = v57;
        v60 = *v57;

        sub_100030C90(v37);
        v39 = *v38;
        *v38 = v60;

LABEL_18:

        return sub_100003C90(v70);
      }

      if (BYTE8(v68[1]) == 19)
      {

        v28 = v57;
        v29 = *v57;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v28 = v29;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v29 = sub_1000319F4(0, *(v29 + 2) + 1, 1, v29);
          *v28 = v29;
        }

        v32 = *(v29 + 2);
        v31 = *(v29 + 3);
        if (v32 >= v31 >> 1)
        {
          v29 = sub_1000319F4((v31 > 1), v32 + 1, 1, v29);
          *v28 = v29;
        }

        *(v29 + 2) = v32 + 1;
        v33 = &v29[80 * v32];
        *(v33 + 2) = v61;
        v34 = v62;
        v35 = v63;
        v36 = v64[0];
        *(v33 + 89) = *(v64 + 9);
        *(v33 + 4) = v35;
        *(v33 + 5) = v36;
        *(v33 + 3) = v34;
        goto LABEL_18;
      }

      sub_10001465C(&v61);
    }

    swift_willThrow();
    return sub_100003C90(v70);
  }

  return result;
}

uint64_t sub_10007FDBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OSSignpostID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*a1 + 24);

  v10 = sub_1000D7374();
  v12 = v11;

  if (qword_100133B10 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for OSSignposter();
  sub_1000144F0(v13, qword_10014EA70);

  static OSSignpostID.exclusive.getter();
  v14 = OSSignposter.logHandle.getter();
  v15 = static os_signpost_type_t.event.getter();

  if (OS_os_log.signpostsEnabled.getter())
  {
    v16 = swift_slowAlloc();
    v25 = v4;
    v17 = v16;
    v26 = swift_slowAlloc();
    *v17 = 136315394;
    v18 = sub_1000E3AF8(v10, v12, &v26);

    *(v17 + 4) = v18;
    *(v17 + 12) = 2080;
    swift_beginAccess();
    v19 = *(a2 + 16);
    v20 = *(a2 + 24);

    v21 = sub_1000E3AF8(v19, v20, &v26);

    *(v17 + 14) = v21;
    v22 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, v15, v22, "ExtensionAuthentication", "Authenticated: %s with result: %s", v17, 0x16u);
    swift_arrayDestroy();

    return (*(v5 + 8))(v8, v25);
  }

  else
  {

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_100080074()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

BOOL sub_1000800F0(uint64_t a1)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = *(*a1 + 40);
  return ((*(*a1 + 32))(v3, v2) & 1) == 0;
}

void *sub_100080134(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003CDC(&qword_100136EA0, &qword_1000F9268);
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

uint64_t sub_100080328(uint64_t a1)
{
  type metadata accessor for URLResourceKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100080384()
{
  result = qword_100136EA8;
  if (!qword_100136EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100136EA8);
  }

  return result;
}

uint64_t sub_100080480(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  result = *a2;
  if (*a2)
  {
    result = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *a3 = result;
    *a4 = v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10008050C(uint64_t result)
{
  if (result > 1)
  {
    switch(result)
    {
      case 2:
        return 0x67756265645FLL;
      case 3:
        return 0x6E6173616B5FLL;
      case 4:
        return 0x637261657365725FLL;
    }

    return sub_10008050C(*(result + 16));
  }

  if (result)
  {
    if (result == 1)
    {
      return 0x706F6C657665645FLL;
    }

    return sub_10008050C(*(result + 16));
  }

  return result;
}

uint64_t sub_1000805C4(uint64_t a1, void *a2)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      if (a1 != 1)
      {
        goto LABEL_17;
      }

      if (a2 == 1)
      {
        return 1;
      }
    }

    else if (!a2)
    {
      return 1;
    }

    return 0;
  }

  switch(a1)
  {
    case 2:
      return a2 == 2;
    case 3:
      return a2 == 3;
    case 4:
      return a2 == 4;
  }

LABEL_17:
  if (a2 < 5)
  {
    return 0;
  }

  v3 = *(a1 + 24);
  v2 = *(a1 + 32);
  v4 = a2[3];
  v5 = a2[4];
  if ((sub_1000805C4(*(a1 + 16), a2[2]) & 1) == 0)
  {
    return 0;
  }

  if (v3 == v4 && v2 == v5)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_1000806C0(uint64_t a1, void *a2)
{
  v3 = 5;
  do
  {
    if (a1 <= 1)
    {
      if (!a1)
      {
        if (a2)
        {
          v3 = 0;
          goto LABEL_27;
        }

        return 0;
      }

      if (a1 == 1)
      {
        if (a2 != 1)
        {
          v3 = 1;
          goto LABEL_27;
        }

        return 0;
      }
    }

    else
    {
      switch(a1)
      {
        case 2:
          if (a2 != 2)
          {
            v3 = 2;
            goto LABEL_27;
          }

          return 0;
        case 3:
          if (a2 != 3)
          {
            v3 = 3;
            goto LABEL_27;
          }

          return 0;
        case 4:
          if (a2 != 4)
          {
            v3 = 4;
LABEL_27:
            v11 = 5;
            if (a2 < 5)
            {
              v11 = a2;
            }

            return v3 < v11;
          }

          return 0;
      }
    }

    if (a2 < 5)
    {
      goto LABEL_27;
    }

    v5 = *(a1 + 24);
    v4 = *(a1 + 32);
    a1 = *(a1 + 16);
    v7 = a2[2];
    v6 = a2[3];
    v8 = a2[4];
    v9 = sub_1000805C4(a1, v7);
    a2 = v7;
  }

  while ((v9 & 1) == 0);
  if (v5 == v6 && v4 == v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 0;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_1000808A4()
{
  v1 = *v0;
  if (*v0 <= 1)
  {
    if (!v1)
    {
      return 0x657361656C6572;
    }

    if (v1 == 1)
    {
      return 0x6D706F6C65766564;
    }
  }

  else
  {
    switch(v1)
    {
      case 2:
        return 0x6775626564;
      case 3:
        return 0x6E6173616BLL;
      case 4:
        return 0x6863726165736572;
    }
  }

  v4 = *(v1 + 24);
  v3 = *(v1 + 32);

  return v4;
}

void *sub_100080988@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

uint64_t sub_100080994@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_1000809B0(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

Swift::Int sub_1000809E0()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100080A2C()
{
  v1 = *v0;
  v2 = v0[1];
  return String.hash(into:)();
}

Swift::Int sub_100080A34()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100080A7C(uint64_t a1, uint64_t a2)
{
  if (!a1 && a2 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D706F6C65766564 && a2 == 0xEB00000000746E65 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6775626564 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6173616BLL && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6863726165736572 && a2 == 0xE800000000000000)
  {

    return 4;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_100080C1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1 == 0x657361656C6572 && a2 == 0xE700000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    result = sub_100080A7C(a1, a2);
    if (result == 5)
    {

      return 5;
    }

    else if (a4)
    {
      v10 = result;
      result = swift_allocObject();
      *(result + 16) = v10;
      *(result + 24) = a3;
      *(result + 32) = a4;
    }
  }

  return result;
}

uint64_t sub_100080CEC()
{
  if (*(v0 + 16) >= 5uLL)
  {
  }

  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100080D34(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_100080D7C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_100080DC8(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100080DE0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFA && *(a1 + 8))
  {
    return (*a1 + 2147483643);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 4;
  if (v4 >= 6)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100080E38(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFB)
  {
    *result = 0;
    *result = a2 - 2147483643;
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 4;
    }
  }

  return result;
}

void *sub_100080E88(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

unint64_t sub_100080EEC()
{
  result = qword_100136EF8;
  if (!qword_100136EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100136EF8);
  }

  return result;
}

unint64_t sub_100080F44()
{
  result = qword_100136F00;
  if (!qword_100136F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100136F00);
  }

  return result;
}

uint64_t sub_100080FC8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100009FA4(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10008101C(uint64_t a1)
{
  v3 = type metadata accessor for DriverBinEntry();
  v43 = *(v3 - 8);
  v44 = v3;
  v4 = *(v43 + 64);
  __chkstk_darwin(v3);
  v42 = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  v12 = _swiftEmptyArrayStorage;
  if (!v11)
  {
    return v12;
  }

  v40 = v10;
  v34[1] = v1;
  v47 = _swiftEmptyArrayStorage;
  sub_1000635C4(0, v11, 0);
  v12 = v47;
  v13 = a1 + 64;
  v14 = -1 << *(a1 + 32);
  result = _HashTable.startBucket.getter();
  v16 = v7;
  v17 = result;
  v18 = 0;
  v41 = v16;
  v38 = v16 + 32;
  v39 = (v16 + 16);
  v35 = a1 + 72;
  v36 = v11;
  v37 = a1 + 64;
  while ((v17 & 0x8000000000000000) == 0 && v17 < 1 << *(a1 + 32))
  {
    v20 = v17 >> 6;
    if ((*(v13 + 8 * (v17 >> 6)) & (1 << v17)) == 0)
    {
      goto LABEL_21;
    }

    v21 = *(a1 + 36);
    v45 = v18;
    v46 = v21;
    v22 = v42;
    sub_10008E708(*(a1 + 56) + *(v43 + 72) * v17, v42, type metadata accessor for DriverBinEntry);
    v23 = v40;
    (*v39)(v40, v22 + *(v44 + 28), v6);
    sub_10008E6A8(v22, type metadata accessor for DriverBinEntry);
    v47 = v12;
    v24 = v6;
    v26 = v12[2];
    v25 = v12[3];
    if (v26 >= v25 >> 1)
    {
      sub_1000635C4(v25 > 1, v26 + 1, 1);
      v12 = v47;
    }

    v12[2] = v26 + 1;
    result = (*(v41 + 32))(v12 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v26, v23, v24);
    v19 = 1 << *(a1 + 32);
    if (v17 >= v19)
    {
      goto LABEL_22;
    }

    v6 = v24;
    v13 = v37;
    v27 = *(v37 + 8 * v20);
    if ((v27 & (1 << v17)) == 0)
    {
      goto LABEL_23;
    }

    if (v46 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v28 = v27 & (-2 << (v17 & 0x3F));
    if (v28)
    {
      v19 = __clz(__rbit64(v28)) | v17 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v29 = v20 << 6;
      v30 = v20 + 1;
      v31 = (v35 + 8 * v20);
      while (v30 < (v19 + 63) >> 6)
      {
        v33 = *v31++;
        v32 = v33;
        v29 += 64;
        ++v30;
        if (v33)
        {
          result = sub_1000147E0(v17, v46, 0);
          v19 = __clz(__rbit64(v32)) + v29;
          goto LABEL_4;
        }
      }

      result = sub_1000147E0(v17, v46, 0);
    }

LABEL_4:
    v18 = v45 + 1;
    v17 = v19;
    if (v45 + 1 == v36)
    {
      return v12;
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
  return result;
}

BOOL sub_1000813E4(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {

    v2 = __CocoaSet.contains(_:)();

    return v2 & 1;
  }

  else if (*(a2 + 16) && (v4 = *(a2 + 40), Hasher.init(_seed:)(), v7 = *(a1 + 16), Hasher._combine(_:)(v7), v8 = Hasher._finalize()(), v9 = -1 << *(a2 + 32), v10 = v8 & ~v9, ((*(a2 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0))
  {
    v11 = ~v9;
    do
    {
      v12 = *(*(*(a2 + 48) + 8 * v10) + 16);
      result = v12 == v7;
      if (v12 == v7)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(a2 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t sub_1000814E8(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_1000815E0(uint64_t *a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v2 = a2;
  v4 = *(a2 + 40);
  Hasher.init(_seed:)();
  v5 = *a1;
  v6 = a1[1];
  String.hash(into:)();
  v7 = *(a1 + 16);
  String.hash(into:)();

  v57 = a1[4] >> 60;
  v58 = a1[4];
  v59 = a1[3];
  if (v57 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
  }

  v8 = Hasher._finalize()();
  v9 = -1 << *(v2 + 32);
  v10 = v8 & ~v9;
  v62 = v2 + 56;
  if (((*(v2 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
    return 0;
  }

  v60 = v6;
  v61 = ~v9;
  if (v59)
  {
    v11 = 0;
  }

  else
  {
    v11 = v58 == 0xC000000000000000;
  }

  v12 = !v11;
  v55 = v12;
  v56 = v58 >> 62;
  v13 = __OFSUB__(HIDWORD(v59), v59);
  v53 = v13;
  v54 = v2;
  while (1)
  {
    v15 = *(v2 + 48) + 40 * v10;
    v16 = *(v15 + 16);
    v18 = *(v15 + 24);
    v17 = *(v15 + 32);
    if (*v15 != v5 || *(v15 + 8) != v6)
    {
      v20 = *(v15 + 8);
      if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    if (v16 > 2)
    {
      v22 = 0xE200000000000000;
      if (v16 == 3)
      {
        v21 = 20805;
        if (v7 <= 2)
        {
          goto LABEL_31;
        }
      }

      else if (v16 == 4)
      {
        v21 = 21575;
        if (v7 <= 2)
        {
          goto LABEL_31;
        }
      }

      else
      {
        v21 = 17735;
        if (v7 <= 2)
        {
          goto LABEL_31;
        }
      }
    }

    else if (v16)
    {
      if (v16 == 1)
      {
        v21 = 21580;
      }

      else
      {
        v21 = 17740;
      }

      v22 = 0xE200000000000000;
      if (v7 <= 2)
      {
LABEL_31:
        if (v7)
        {
          if (v7 == 1)
          {
            v23 = 21580;
          }

          else
          {
            v23 = 17740;
          }

          v24 = 0xE200000000000000;
        }

        else
        {
          v24 = 0xE300000000000000;
          v23 = 7958081;
        }

        goto LABEL_48;
      }
    }

    else
    {
      v22 = 0xE300000000000000;
      v21 = 7958081;
      if (v7 <= 2)
      {
        goto LABEL_31;
      }
    }

    v25 = 21575;
    if (v7 != 4)
    {
      v25 = 17735;
    }

    v23 = v7 == 3 ? 20805 : v25;
    v24 = 0xE200000000000000;
LABEL_48:
    v26 = v5;
    if (v21 == v23 && v22 == v24)
    {

      sub_1000146B0(v18, v17);
    }

    else
    {
      v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

      sub_1000146B0(v18, v17);

      if ((v27 & 1) == 0)
      {

        sub_100014528(v18, v17);
LABEL_56:
        v5 = v26;
        goto LABEL_18;
      }
    }

    if (v17 >> 60 == 15)
    {
      sub_1000146B0(v18, v17);
      v14 = v58;
      sub_1000146B0(v59, v58);

      sub_100014528(v18, v17);
      v5 = v26;
      if (v57 > 0xE)
      {
        goto LABEL_114;
      }

      goto LABEL_17;
    }

    if (v57 <= 0xE)
    {
      break;
    }

    sub_1000146B0(v18, v17);
    v14 = v58;
    sub_1000146B0(v59, v58);

    sub_100014528(v18, v17);
    v5 = v26;
LABEL_17:
    sub_100014528(v18, v17);
    sub_100014528(v59, v14);
LABEL_18:
    v6 = v60;
LABEL_19:
    v10 = (v10 + 1) & v61;
    if (((*(v62 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      return 0;
    }
  }

  v28 = v17 >> 62;
  v5 = v26;
  if (v17 >> 62 == 3)
  {
    if (v18)
    {
      v29 = 0;
    }

    else
    {
      v29 = v17 == 0xC000000000000000;
    }

    v31 = !v29 || v58 >> 62 != 3;
    if (((v31 | v55) & 1) == 0)
    {
      sub_1000146B0(0, 0xC000000000000000);
      sub_1000146B0(0, 0xC000000000000000);
      sub_100014528(0, 0xC000000000000000);

      sub_100014528(0, 0xC000000000000000);
      v51 = 0;
      v52 = 0xC000000000000000;
      goto LABEL_115;
    }

LABEL_83:
    v32 = 0;
    if (v56 > 1)
    {
      goto LABEL_84;
    }

LABEL_80:
    v36 = BYTE6(v58);
    if (v56)
    {
      v36 = HIDWORD(v59) - v59;
      if (v53)
      {
        goto LABEL_118;
      }
    }
  }

  else
  {
    if (v28 <= 1)
    {
      if (v28)
      {
        LODWORD(v32) = HIDWORD(v18) - v18;
        if (__OFSUB__(HIDWORD(v18), v18))
        {
          goto LABEL_119;
        }

        v32 = v32;
        if (v56 > 1)
        {
          goto LABEL_84;
        }
      }

      else
      {
        v32 = BYTE6(v17);
        if (v56 > 1)
        {
          goto LABEL_84;
        }
      }

      goto LABEL_80;
    }

    if (v28 != 2)
    {
      goto LABEL_83;
    }

    v34 = *(v18 + 16);
    v33 = *(v18 + 24);
    v35 = __OFSUB__(v33, v34);
    v32 = v33 - v34;
    if (v35)
    {
      goto LABEL_120;
    }

    if (v56 <= 1)
    {
      goto LABEL_80;
    }

LABEL_84:
    if (v56 != 2)
    {
      if (v32)
      {
LABEL_92:
        sub_1000146B0(v18, v17);
        sub_1000146B0(v59, v58);
        sub_100014528(v59, v58);

        sub_100014528(v18, v17);
        sub_100014528(v18, v17);
        goto LABEL_18;
      }

LABEL_113:
      sub_1000146B0(v18, v17);
      sub_1000146B0(v59, v58);
      sub_100014528(v59, v58);

      sub_100014528(v18, v17);
LABEL_114:
      v51 = v18;
      v52 = v17;
LABEL_115:
      sub_100014528(v51, v52);
      return 1;
    }

    v38 = *(v59 + 16);
    v37 = *(v59 + 24);
    v35 = __OFSUB__(v37, v38);
    v36 = v37 - v38;
    if (v35)
    {
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
    }
  }

  if (v32 != v36)
  {
    goto LABEL_92;
  }

  if (v32 < 1)
  {
    goto LABEL_113;
  }

  if (v28 > 1)
  {
    if (v28 == 2)
    {
      v42 = *(v18 + 16);
      v41 = *(v18 + 24);
      sub_1000146B0(v18, v17);
      sub_1000146B0(v59, v58);
      sub_1000146B0(v59, v58);
      v43 = __DataStorage._bytes.getter();
      if (v43)
      {
        v44 = __DataStorage._offset.getter();
        if (__OFSUB__(v42, v44))
        {
          goto LABEL_123;
        }

        v43 += v42 - v44;
      }

      if (__OFSUB__(v41, v42))
      {
        goto LABEL_122;
      }

      __DataStorage._length.getter();
      sub_100045F4C(v43, v59, v58, v64);
      sub_100014528(v59, v58);

      sub_100014528(v18, v17);
      sub_100014528(v59, v58);
      v45 = v64[0];
      sub_100014528(v18, v17);
      if (v45)
      {
        return 1;
      }

      v5 = v26;
      goto LABEL_111;
    }

    *&v64[6] = 0;
    *v64 = 0;
    sub_1000146B0(v18, v17);
    sub_1000146B0(v59, v58);
    sub_1000146B0(v59, v58);
    sub_100045F4C(v64, v59, v58, v63);
    sub_100014528(v59, v58);

    sub_100014528(v18, v17);
    v39 = v59;
    v40 = v58;
LABEL_110:
    sub_100014528(v39, v40);
    v49 = v63[0];
    sub_100014528(v18, v17);
    if (v49)
    {
      return 1;
    }

LABEL_111:
    v2 = v54;
    goto LABEL_18;
  }

  if (!v28)
  {
    *v64 = v18;
    *&v64[8] = v17;
    v64[10] = BYTE2(v17);
    v64[11] = BYTE3(v17);
    v64[12] = BYTE4(v17);
    v64[13] = BYTE5(v17);
    sub_1000146B0(v18, v17);
    sub_1000146B0(v59, v58);
    sub_1000146B0(v59, v58);
    sub_100045F4C(v64, v59, v58, v63);
    sub_100014528(v59, v58);

    sub_100014528(v18, v17);
    v39 = v59;
    v40 = v58;
    goto LABEL_110;
  }

  if (v18 >> 32 < v18)
  {
    goto LABEL_121;
  }

  sub_1000146B0(v18, v17);
  sub_1000146B0(v59, v58);
  sub_1000146B0(v59, v58);
  v46 = __DataStorage._bytes.getter();
  if (v46)
  {
    v47 = __DataStorage._offset.getter();
    if (__OFSUB__(v18, v47))
    {
      goto LABEL_124;
    }

    v46 += v18 - v47;
  }

  __DataStorage._length.getter();
  sub_100045F4C(v46, v59, v58, v64);
  sub_100014528(v59, v58);

  sub_100014528(v18, v17);
  sub_100014528(v59, v58);
  v48 = v64[0];
  sub_100014528(v18, v17);
  if ((v48 & 1) == 0)
  {
    v2 = v54;
    goto LABEL_56;
  }

  return 1;
}

uint64_t sub_100081F78(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    v6 = *(a3 + 40);
    Hasher.init(_seed:)();
    Data.hash(into:)();
    v7 = Hasher._finalize()();
    v8 = a3 + 56;
    v9 = -1 << *(a3 + 32);
    v10 = v7 & ~v9;
    if ((*(a3 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
    {
      v11 = ~v9;
      if (a1)
      {
        v12 = 0;
      }

      else
      {
        v12 = a2 == 0xC000000000000000;
      }

      v13 = !v12;
      v43 = v13;
      v14 = a2 >> 62;
      v15 = __OFSUB__(HIDWORD(a1), a1);
      v40 = v15;
      v38 = a2;
      v39 = HIDWORD(a1) - a1;
      v41 = v11;
      v42 = BYTE6(a2);
      v37 = a1;
      while (1)
      {
        v16 = (*(a3 + 48) + 16 * v10);
        v18 = *v16;
        v17 = v16[1];
        v19 = v17 >> 62;
        if (v17 >> 62 == 3)
        {
          break;
        }

        if (v19 > 1)
        {
          if (v19 != 2)
          {
            goto LABEL_37;
          }

          v25 = *(v18 + 16);
          v24 = *(v18 + 24);
          v26 = __OFSUB__(v24, v25);
          v23 = v24 - v25;
          if (v26)
          {
            goto LABEL_67;
          }

          if (v14 <= 1)
          {
            goto LABEL_34;
          }
        }

        else if (v19)
        {
          LODWORD(v23) = HIDWORD(v18) - v18;
          if (__OFSUB__(HIDWORD(v18), v18))
          {
            goto LABEL_68;
          }

          v23 = v23;
          if (v14 <= 1)
          {
LABEL_34:
            v27 = v42;
            if (v14)
            {
              v27 = v39;
              if (v40)
              {
                goto LABEL_66;
              }
            }

            goto LABEL_40;
          }
        }

        else
        {
          v23 = BYTE6(v17);
          if (v14 <= 1)
          {
            goto LABEL_34;
          }
        }

LABEL_38:
        if (v14 != 2)
        {
          if (!v23)
          {
            return 1;
          }

          goto LABEL_14;
        }

        v29 = *(a1 + 16);
        v28 = *(a1 + 24);
        v26 = __OFSUB__(v28, v29);
        v27 = v28 - v29;
        if (v26)
        {
          __break(1u);
LABEL_66:
          __break(1u);
LABEL_67:
          __break(1u);
LABEL_68:
          __break(1u);
LABEL_69:
          __break(1u);
LABEL_70:
          __break(1u);
LABEL_71:
          __break(1u);
LABEL_72:
          __break(1u);
        }

LABEL_40:
        if (v23 == v27)
        {
          if (v23 < 1)
          {
            return 1;
          }

          if (v19 <= 1)
          {
            if (!v19)
            {
              *v45 = v18;
              *&v45[8] = v17;
              v45[10] = BYTE2(v17);
              v45[11] = BYTE3(v17);
              v45[12] = BYTE4(v17);
              v45[13] = BYTE5(v17);
              sub_1000146C4(v18, v17);
              sub_100045F4C(v45, a1, a2, v44);
              sub_1000128D8(v18, v17);
              if (v44[0])
              {
                return 1;
              }

LABEL_61:
              v11 = v41;
              goto LABEL_14;
            }

            if (v18 >> 32 < v18)
            {
              goto LABEL_69;
            }

            sub_1000146C4(v18, v17);
            v32 = __DataStorage._bytes.getter();
            if (v32)
            {
              v34 = __DataStorage._offset.getter();
              if (__OFSUB__(v18, v34))
              {
                goto LABEL_72;
              }

              v32 += v18 - v34;
            }

LABEL_59:
            __DataStorage._length.getter();
            v35 = v32;
            a1 = v37;
            a2 = v38;
            sub_100045F4C(v35, v37, v38, v45);
            sub_1000128D8(v18, v17);
            if (v45[0])
            {
              return 1;
            }

            v8 = a3 + 56;
            goto LABEL_61;
          }

          if (v19 == 2)
          {
            v31 = *(v18 + 16);
            v30 = *(v18 + 24);
            sub_1000146C4(v18, v17);
            v32 = __DataStorage._bytes.getter();
            if (v32)
            {
              v33 = __DataStorage._offset.getter();
              if (__OFSUB__(v31, v33))
              {
                goto LABEL_71;
              }

              v32 += v31 - v33;
            }

            if (__OFSUB__(v30, v31))
            {
              goto LABEL_70;
            }

            goto LABEL_59;
          }

          *&v45[6] = 0;
          *v45 = 0;
          sub_1000146C4(v18, v17);
          sub_100045F4C(v45, a1, a2, v44);
          sub_1000128D8(v18, v17);
          if (v44[0])
          {
            return 1;
          }
        }

LABEL_14:
        v10 = (v10 + 1) & v11;
        if (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
        {
          return 0;
        }
      }

      if (v18)
      {
        v20 = 0;
      }

      else
      {
        v20 = v17 == 0xC000000000000000;
      }

      v22 = !v20 || v14 < 3;
      if (((v22 | v43) & 1) == 0)
      {
        return 1;
      }

LABEL_37:
      v23 = 0;
      if (v14 <= 1)
      {
        goto LABEL_34;
      }

      goto LABEL_38;
    }
  }

  return 0;
}

uint64_t sub_10008239C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE300000000000000;
  v4 = 20805;
  v5 = 21575;
  if (a1 != 4)
  {
    v5 = 17735;
  }

  if (a1 != 3)
  {
    v4 = v5;
  }

  v6 = 21580;
  if (a1 != 1)
  {
    v6 = 17740;
  }

  if (a1)
  {
    v3 = 0xE200000000000000;
  }

  else
  {
    v6 = 7958081;
  }

  if (a1 <= 2u)
  {
    v7 = v6;
  }

  else
  {
    v7 = v4;
  }

  if (v2 <= 2)
  {
    v8 = v3;
  }

  else
  {
    v8 = 0xE200000000000000;
  }

  if (a2 > 2u)
  {
    v9 = 0xE200000000000000;
    if (a2 == 3)
    {
      if (v7 != 20805)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      if (v7 != 21575)
      {
        goto LABEL_34;
      }
    }

    else if (v7 != 17735)
    {
LABEL_34:
      v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_35;
    }
  }

  else if (a2)
  {
    v9 = 0xE200000000000000;
    if (a2 == 1)
    {
      if (v7 != 21580)
      {
        goto LABEL_34;
      }
    }

    else if (v7 != 17740)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v9 = 0xE300000000000000;
    if (v7 != 7958081)
    {
      goto LABEL_34;
    }
  }

  if (v8 != v9)
  {
    goto LABEL_34;
  }

  v10 = 1;
LABEL_35:

  return v10 & 1;
}

uint64_t sub_1000824F4(uint64_t a1, unint64_t a2)
{
  v195 = a2;
  v190 = a1;
  v168 = type metadata accessor for OSSignpostError();
  v172 = *(v168 - 8);
  v3 = *(v172 + 64);
  __chkstk_darwin(v168);
  v167 = &v166 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v197 = type metadata accessor for UUID();
  v5 = *(v197 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v197);
  v8 = &v166 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = type metadata accessor for OSSignpostID();
  v175 = *(v174 - 8);
  v9 = v175[8];
  v10 = __chkstk_darwin(v174);
  v173 = &v166 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v166 - v13;
  __chkstk_darwin(v12);
  v16 = &v166 - v15;
  v17 = type metadata accessor for DispatchPredicate();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = (&v166 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v194 = v2;
  isa = v2[13].isa;
  *v21 = isa;
  (*(v18 + 104))(v21, enum case for DispatchPredicate.onQueue(_:), v17);
  v23 = isa;
  v24 = _dispatchPreconditionTest(_:)();
  (*(v18 + 8))(v21, v17);
  if ((v24 & 1) == 0)
  {
    goto LABEL_104;
  }

  if (qword_100133A80 != -1)
  {
LABEL_105:
    swift_once();
  }

  v25 = type metadata accessor for OSSignposter();
  v26 = sub_1000144F0(v25, qword_100138798);
  if (qword_100133A88 != -1)
  {
    swift_once();
  }

  v27 = v174;
  v28 = sub_1000144F0(v174, qword_1001387B0);
  v29 = v175[2];
  v29(v16, v28, v27);
  v171 = v26;
  v30 = OSSignposter.logHandle.getter();
  v31 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    v33 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v30, v31, v33, "State refresh", "", v32, 2u);
  }

  v34 = v174;
  v29(v14, v16, v174);
  v35 = type metadata accessor for OSSignpostIntervalState();
  v36 = *(v35 + 48);
  v37 = *(v35 + 52);
  swift_allocObject();
  v169 = OSSignpostIntervalState.init(id:isOpen:)();
  v38 = v175[1];
  ++v175;
  v170 = v38;
  v38(v16, v34);
  UUID.init()();
  v189 = UUID.uuidString.getter();
  v196 = v39;
  (*(v5 + 8))(v8, v197);
  v40 = swift_allocObject();
  *(v40 + 16) = _swiftEmptyArrayStorage;
  v41 = swift_allocObject();
  *(v41 + 16) = &_swiftEmptySetSingleton;
  v42 = swift_allocObject();
  *(v42 + 16) = &_swiftEmptySetSingleton;
  v177 = type metadata accessor for StateManagerWrapper();
  v43 = swift_allocObject();
  *(v43 + 16) = v194;
  *(v43 + 24) = &off_100126EF0;

  v14 = sub_1000C5A64(v43, v41, v42, v40);

  if (v14)
  {
    swift_beginAccess();
    v44 = *(v40 + 16);

    v182 = sub_10008DD24(v45);

    v202 = &_swiftEmptySetSingleton;
    v5 = v195;
    if (qword_100133AC0 != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for Logger();
    v47 = sub_1000144F0(v46, qword_10014E980);
    v8 = v196;

    v197 = v47;
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v200 = swift_slowAlloc();
      *v50 = 136315394;
      *(v50 + 4) = sub_1000E3AF8(v189, v196, &v200);
      *(v50 + 12) = 2080;
      *(v50 + 14) = sub_1000E3AF8(v190, v5, &v200);
      _os_log_impl(&_mh_execute_header, v48, v49, "State refresh (id: %s, reason: %s): starting", v50, 0x16u);
      swift_arrayDestroy();

      v8 = v196;
    }

    v16 = v182;
    v51 = swift_allocObject();
    *(v51 + 16) = v194;
    *(v51 + 24) = &off_100126EF0;

    sub_1000E402C(&v200, v51);

    if (v16 >> 62)
    {
      v53 = _CocoaArrayWrapper.endIndex.getter();
      if (v53)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v53 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v53)
      {
LABEL_14:
        v54 = 0;
        v55 = v16 & 0xC000000000000001;
        v179 = v16 & 0xFFFFFFFFFFFFFF8;
        v178 = v16 + 32;
        *&v52 = 136315650;
        v176 = v52;
        *&v52 = 136315906;
        v186 = v52;
        v181 = v53;
        v180 = v16 & 0xC000000000000001;
        while (1)
        {
          if (v55)
          {
            v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v56 = __OFADD__(v54++, 1);
            if (v56)
            {
              goto LABEL_102;
            }
          }

          else
          {
            if (v54 >= *(v179 + 16))
            {
              goto LABEL_103;
            }

            v14 = *(v178 + 8 * v54);

            v56 = __OFADD__(v54++, 1);
            if (v56)
            {
              goto LABEL_102;
            }
          }

          v57 = v202;
          if ((v202 & 0xC000000000000001) != 0)
          {

            v58 = __CocoaSet.contains(_:)();
            v59 = v14;

            if (v58)
            {
              goto LABEL_24;
            }

LABEL_15:

            if (v54 == v53)
            {
              break;
            }
          }

          else
          {
            if (!*(v202 + 16))
            {
              goto LABEL_15;
            }

            v89 = *(v202 + 40);
            Hasher.init(_seed:)();
            v90 = *(v14 + 16);
            Hasher._combine(_:)(v90);
            v91 = Hasher._finalize()();
            v92 = -1 << *(v57 + 32);
            v93 = v91 & ~v92;
            if (((*(v57 + 56 + ((v93 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v93) & 1) == 0)
            {
              goto LABEL_15;
            }

            v59 = v14;
            v94 = ~v92;
            while (*(*(*(v57 + 48) + 8 * v93) + 16) != v90)
            {
              v93 = (v93 + 1) & v94;
              if (((*(v57 + 56 + ((v93 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v93) & 1) == 0)
              {
                goto LABEL_15;
              }
            }

LABEL_24:
            v184 = v54;
            v14 = *(v59 + 16);
            v60 = *(v59 + 24);
            v183 = v59;
            swift_unknownObjectRetain_n();

            v61 = Logger.logObject.getter();
            v62 = static os_log_type_t.default.getter();
            swift_unknownObjectRelease();

            if (os_log_type_enabled(v61, v62))
            {
              v63 = v8;
              v64 = swift_slowAlloc();
              v200 = swift_slowAlloc();
              *v64 = v176;
              *(v64 + 4) = sub_1000E3AF8(v189, v63, &v200);
              *(v64 + 12) = 2080;
              *(v64 + 14) = sub_1000E3AF8(v190, v5, &v200);
              *(v64 + 22) = 2080;
              swift_getObjectType();
              v65 = sub_1000C5A1C();
              v67 = sub_1000E3AF8(v65, v66, &v200);

              *(v64 + 24) = v67;
              _os_log_impl(&_mh_execute_header, v61, v62, "State refresh (id: %s, reason: %s): Notifying %s of state update", v64, 0x20u);
              swift_arrayDestroy();
            }

            v16 = v14;
            ObjectType = swift_getObjectType();
            v69 = *(v60 + 40);
            v193 = ObjectType;
            v70 = v69(ObjectType, v60);
            v191 = v60;
            if (v70)
            {
              v71 = v70;
              v8 = v196;

              swift_unknownObjectRetain();
              v72 = Logger.logObject.getter();
              v73 = static os_log_type_t.default.getter();
              swift_unknownObjectRelease();

              v74 = os_log_type_enabled(v72, v73);
              v185 = v16;
              if (v74)
              {
                LODWORD(v192) = v73;
                v194 = v72;
                v75 = swift_slowAlloc();
                v187 = swift_slowAlloc();
                v199 = v187;
                *v75 = v186;
                *(v75 + 4) = sub_1000E3AF8(v189, v8, &v199);
                *(v75 + 12) = 2080;
                *(v75 + 14) = sub_1000E3AF8(v190, v5, &v199);
                *(v75 + 22) = 2080;
                v76 = sub_1000C5A1C();
                v78 = sub_1000E3AF8(v76, v77, &v199);

                *(v75 + 24) = v78;
                v188 = v75;
                *(v75 + 32) = 2080;
                v79 = *(v71 + 16);
                if (v79)
                {
                  v198 = _swiftEmptyArrayStorage;
                  sub_1000635A4(0, v79, 0);
                  v80 = v198;
                  v81 = (v71 + 40);
                  do
                  {
                    v82 = *(v81 - 1);
                    v83 = *v81;
                    v200 = 538976288;
                    v201 = 0xE400000000000000;

                    v84._countAndFlagsBits = v82;
                    v84._object = v83;
                    String.append(_:)(v84);

                    v86 = v200;
                    v85 = v201;
                    v198 = v80;
                    v16 = v80[2];
                    v87 = v80[3];
                    if (v16 >= v87 >> 1)
                    {
                      sub_1000635A4((v87 > 1), v16 + 1, 1);
                      v80 = v198;
                    }

                    v80[2] = v16 + 1;
                    v88 = &v80[2 * v16];
                    v88[4] = v86;
                    v88[5] = v85;
                    v81 += 2;
                    --v79;
                  }

                  while (v79);

                  v5 = v195;
                  v8 = v196;
                }

                else
                {

                  v80 = _swiftEmptyArrayStorage;
                }

                v200 = v80;
                sub_100003CDC(&qword_100136C80, &qword_1000F39B0);
                sub_10001455C(&qword_100134288, &qword_100136C80, &qword_1000F39B0);
                v101 = BidirectionalCollection<>.joined(separator:)();
                v103 = v102;

                v104 = sub_1000E3AF8(v101, v103, &v199);

                v105 = v188;
                *(v188 + 34) = v104;
                v106 = v194;
                _os_log_impl(&_mh_execute_header, v194, v192, "State refresh (id: %s, reason: %s): %s updated state:\n%s", v105, 0x2Au);
                swift_arrayDestroy();

                v14 = v177;
                v60 = v191;
              }

              else
              {

                v14 = v177;
              }

              v107 = (*(v60 + 16))(v193, v60);
              v108 = *(v107 + 16);
              if (v108)
              {
                v200 = _swiftEmptyArrayStorage;
                specialized ContiguousArray.reserveCapacity(_:)();
                v109 = 32;
                do
                {
                  *(swift_allocObject() + 16) = *(v107 + v109);
                  swift_unknownObjectRetain();
                  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
                  v16 = *(v200 + 16);
                  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
                  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                  specialized ContiguousArray._endMutation()();
                  v109 += 16;
                  --v108;
                }

                while (v108);

                v110 = v200;
                v8 = v196;
                if (!(v200 >> 62))
                {
LABEL_52:
                  v111 = *((v110 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  if (v111)
                  {
                    goto LABEL_53;
                  }

LABEL_68:
                  swift_unknownObjectRelease();

                  goto LABEL_90;
                }
              }

              else
              {

                v110 = _swiftEmptyArrayStorage;
                if (!(_swiftEmptyArrayStorage >> 62))
                {
                  goto LABEL_52;
                }
              }

              v111 = _CocoaArrayWrapper.endIndex.getter();
              if (!v111)
              {
                goto LABEL_68;
              }

LABEL_53:
              v192 = v110;
              v194 = v111;
              if ((v110 & 0xC000000000000001) != 0)
              {
                v16 = 0;
                while (1)
                {
                  while (1)
                  {
                    v112 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                    v56 = __OFADD__(v16++, 1);
                    if (v56)
                    {
                      __break(1u);
LABEL_101:
                      __break(1u);
LABEL_102:
                      __break(1u);
LABEL_103:
                      __break(1u);
LABEL_104:
                      __break(1u);
                      goto LABEL_105;
                    }

                    v14 = v112;
                    v113 = v202;
                    if ((v202 & 0xC000000000000001) != 0)
                    {
                      break;
                    }

                    if (!*(v202 + 16))
                    {
                      goto LABEL_65;
                    }

                    v115 = *(v202 + 40);
                    Hasher.init(_seed:)();
                    Hasher._combine(_:)(*(v14 + 16));
                    v116 = Hasher._finalize()();
                    v117 = -1 << *(v113 + 32);
                    v118 = v116 & ~v117;
                    if (((*(v113 + 56 + ((v118 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v118) & 1) == 0)
                    {
                      goto LABEL_65;
                    }

                    v119 = ~v117;
                    while (*(*(*(v113 + 48) + 8 * v118) + 16) != *(v14 + 16))
                    {
                      v118 = (v118 + 1) & v119;
                      if (((*(v113 + 56 + ((v118 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v118) & 1) == 0)
                      {
                        goto LABEL_65;
                      }
                    }

LABEL_55:
                    swift_unknownObjectRelease();
                    if (v16 == v111)
                    {
                      goto LABEL_68;
                    }
                  }

                  swift_unknownObjectRetain();
                  v114 = __CocoaSet.contains(_:)();
                  swift_unknownObjectRelease();
                  if (v114)
                  {
                    goto LABEL_55;
                  }

LABEL_65:

                  swift_unknownObjectRetain();
                  swift_unknownObjectRetain();
                  v120 = Logger.logObject.getter();
                  v121 = static os_log_type_t.default.getter();
                  swift_unknownObjectRelease();
                  swift_unknownObjectRelease();

                  if (os_log_type_enabled(v120, v121))
                  {
                    v122 = swift_slowAlloc();
                    v200 = swift_slowAlloc();
                    *v122 = v186;
                    *(v122 + 4) = sub_1000E3AF8(v189, v8, &v200);
                    *(v122 + 12) = 2080;
                    *(v122 + 14) = sub_1000E3AF8(v190, v195, &v200);
                    *(v122 + 22) = 2080;
                    v123 = sub_1000C5A1C();
                    v125 = sub_1000E3AF8(v123, v124, &v200);

                    *(v122 + 24) = v125;
                    *(v122 + 32) = 2080;
                    v126 = *(v14 + 16);
                    v127 = *(v14 + 24);
                    swift_getObjectType();
                    v128 = sub_1000C5A1C();
                    v130 = sub_1000E3AF8(v128, v129, &v200);

                    *(v122 + 34) = v130;
                    v8 = v196;
                    _os_log_impl(&_mh_execute_header, v120, v121, "State refresh (id: %s, reason: %s): %s updated state, will notify subscriber: %s", v122, 0x2Au);
                    swift_arrayDestroy();

                    v5 = v195;
                  }

                  sub_1000E402C(&v200, v14);

                  v111 = v194;
                  if (v16 == v194)
                  {
                    goto LABEL_68;
                  }
                }
              }

              v8 = 0;
              v188 = v110 & 0xFFFFFFFFFFFFFF8;
              v187 = v110 + 32;
              while (2)
              {
                if (v8 >= *(v188 + 16))
                {
                  goto LABEL_101;
                }

                v16 = *(v187 + 8 * v8);
                v131 = v202;
                if ((v202 & 0xC000000000000001) != 0)
                {
                  v132 = *(v187 + 8 * v8);
                  swift_retain_n();
                  v133 = __CocoaSet.contains(_:)();

                  if (v133)
                  {
                  }

                  else
                  {
LABEL_85:
                    v139 = v5;
                    v140 = v196;

                    swift_unknownObjectRetain();

                    v14 = Logger.logObject.getter();
                    v141 = static os_log_type_t.default.getter();

                    swift_unknownObjectRelease();

                    if (os_log_type_enabled(v14, v141))
                    {
                      v142 = swift_slowAlloc();
                      v200 = swift_slowAlloc();
                      *v142 = v186;
                      *(v142 + 4) = sub_1000E3AF8(v189, v140, &v200);
                      *(v142 + 12) = 2080;
                      *(v142 + 14) = sub_1000E3AF8(v190, v139, &v200);
                      *(v142 + 22) = 2080;
                      v143 = sub_1000C5A1C();
                      v145 = sub_1000E3AF8(v143, v144, &v200);

                      *(v142 + 24) = v145;
                      *(v142 + 32) = 2080;
                      v146 = *(v16 + 16);
                      v147 = *(v16 + 24);
                      swift_getObjectType();
                      v148 = sub_1000C5A1C();
                      v150 = sub_1000E3AF8(v148, v149, &v200);

                      *(v142 + 34) = v150;
                      v5 = v195;
                      _os_log_impl(&_mh_execute_header, v14, v141, "State refresh (id: %s, reason: %s): %s updated state, will notify subscriber: %s", v142, 0x2Au);
                      swift_arrayDestroy();

                      v111 = v194;
                    }

                    else
                    {

                      v5 = v139;
                    }

                    sub_1000E402C(&v200, v16);
                  }
                }

                else
                {
                  if (!*(v202 + 16) || (v134 = *(v202 + 40), Hasher.init(_seed:)(), Hasher._combine(_:)(*(v16 + 16)), v135 = Hasher._finalize()(), v136 = -1 << *(v131 + 32), v137 = v135 & ~v136, ((*(v131 + 56 + ((v137 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v137) & 1) == 0))
                  {
LABEL_84:

                    goto LABEL_85;
                  }

                  v138 = ~v136;
                  while (*(*(*(v131 + 48) + 8 * v137) + 16) != *(v16 + 16))
                  {
                    v137 = (v137 + 1) & v138;
                    if (((*(v131 + 56 + ((v137 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v137) & 1) == 0)
                    {
                      goto LABEL_84;
                    }
                  }
                }

                if (++v8 == v111)
                {
                  swift_unknownObjectRelease();

                  v8 = v196;
                  goto LABEL_90;
                }

                continue;
              }
            }

            v8 = v196;

            swift_unknownObjectRetain();
            v95 = Logger.logObject.getter();
            v96 = static os_log_type_t.default.getter();
            swift_unknownObjectRelease();

            if (os_log_type_enabled(v95, v96))
            {
              v97 = swift_slowAlloc();
              v200 = swift_slowAlloc();
              *v97 = v176;
              *(v97 + 4) = sub_1000E3AF8(v189, v196, &v200);
              *(v97 + 12) = 2080;
              *(v97 + 14) = sub_1000E3AF8(v190, v5, &v200);
              *(v97 + 22) = 2080;
              v98 = sub_1000C5A1C();
              v100 = sub_1000E3AF8(v98, v99, &v200);

              *(v97 + 24) = v100;
              _os_log_impl(&_mh_execute_header, v95, v96, "State refresh (id: %s, reason: %s): %s did not update state", v97, 0x20u);
              swift_arrayDestroy();

              v8 = v196;

              swift_unknownObjectRelease();
            }

            else
            {
              swift_unknownObjectRelease();
            }

LABEL_90:
            v16 = v182;
            v53 = v181;
            v54 = v184;
            v55 = v180;
            if (v184 == v181)
            {
              break;
            }
          }
        }
      }
    }

    v151 = Logger.logObject.getter();
    v152 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v151, v152))
    {
      v153 = swift_slowAlloc();
      v200 = swift_slowAlloc();
      *v153 = 136315394;
      v154 = sub_1000E3AF8(v189, v8, &v200);

      *(v153 + 4) = v154;
      *(v153 + 12) = 2080;
      *(v153 + 14) = sub_1000E3AF8(v190, v5, &v200);
      _os_log_impl(&_mh_execute_header, v151, v152, "State refresh (id: %s, reason: %s): completed", v153, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v155 = v172;
    v156 = v173;
    v157 = OSSignposter.logHandle.getter();
    OSSignpostIntervalState.signpostID.getter();
    v158 = static os_signpost_type_t.end.getter();
    if (OS_os_log.signpostsEnabled.getter())
    {

      v159 = v167;
      checkForErrorAndConsumeState(state:)();

      v160 = v168;
      if ((*(v155 + 88))(v159, v168) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v161 = "[Error] Interval already ended";
      }

      else
      {
        (*(v155 + 8))(v159, v160);
        v161 = "";
      }

      v162 = swift_slowAlloc();
      *v162 = 0;
      v163 = v173;
      v164 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v157, v158, v164, "State refresh", v161, v162, 2u);
      v156 = v163;
    }

    return v170(v156, v174);
  }

  else
  {

    __break(1u);
  }

  return result;
}

uint64_t sub_100083E80(uint64_t a1, unint64_t a2)
{
  v195 = a2;
  v190 = a1;
  v168 = type metadata accessor for OSSignpostError();
  v172 = *(v168 - 8);
  v3 = *(v172 + 64);
  __chkstk_darwin(v168);
  v167 = &v166 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v197 = type metadata accessor for UUID();
  v5 = *(v197 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v197);
  v8 = &v166 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = type metadata accessor for OSSignpostID();
  v175 = *(v174 - 8);
  v9 = v175[8];
  v10 = __chkstk_darwin(v174);
  v173 = &v166 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v166 - v13;
  __chkstk_darwin(v12);
  v16 = &v166 - v15;
  v17 = type metadata accessor for DispatchPredicate();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = (&v166 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v194 = v2;
  isa = v2[8].isa;
  *v21 = isa;
  (*(v18 + 104))(v21, enum case for DispatchPredicate.onQueue(_:), v17);
  v23 = isa;
  v24 = _dispatchPreconditionTest(_:)();
  (*(v18 + 8))(v21, v17);
  if ((v24 & 1) == 0)
  {
    goto LABEL_104;
  }

  if (qword_100133A80 != -1)
  {
LABEL_105:
    swift_once();
  }

  v25 = type metadata accessor for OSSignposter();
  v26 = sub_1000144F0(v25, qword_100138798);
  if (qword_100133A88 != -1)
  {
    swift_once();
  }

  v27 = v174;
  v28 = sub_1000144F0(v174, qword_1001387B0);
  v29 = v175[2];
  v29(v16, v28, v27);
  v171 = v26;
  v30 = OSSignposter.logHandle.getter();
  v31 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    v33 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v30, v31, v33, "State refresh", "", v32, 2u);
  }

  v34 = v174;
  v29(v14, v16, v174);
  v35 = type metadata accessor for OSSignpostIntervalState();
  v36 = *(v35 + 48);
  v37 = *(v35 + 52);
  swift_allocObject();
  v169 = OSSignpostIntervalState.init(id:isOpen:)();
  v38 = v175[1];
  ++v175;
  v170 = v38;
  v38(v16, v34);
  UUID.init()();
  v189 = UUID.uuidString.getter();
  v196 = v39;
  (*(v5 + 8))(v8, v197);
  v40 = swift_allocObject();
  *(v40 + 16) = _swiftEmptyArrayStorage;
  v41 = swift_allocObject();
  *(v41 + 16) = &_swiftEmptySetSingleton;
  v42 = swift_allocObject();
  *(v42 + 16) = &_swiftEmptySetSingleton;
  v177 = type metadata accessor for StateManagerWrapper();
  v43 = swift_allocObject();
  *(v43 + 16) = v194;
  *(v43 + 24) = &off_1001273C8;

  v14 = sub_1000C5A64(v43, v41, v42, v40);

  if (v14)
  {
    swift_beginAccess();
    v44 = *(v40 + 16);

    v182 = sub_10008DD24(v45);

    v202 = &_swiftEmptySetSingleton;
    v5 = v195;
    if (qword_100133AC0 != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for Logger();
    v47 = sub_1000144F0(v46, qword_10014E980);
    v8 = v196;

    v197 = v47;
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v200 = swift_slowAlloc();
      *v50 = 136315394;
      *(v50 + 4) = sub_1000E3AF8(v189, v196, &v200);
      *(v50 + 12) = 2080;
      *(v50 + 14) = sub_1000E3AF8(v190, v5, &v200);
      _os_log_impl(&_mh_execute_header, v48, v49, "State refresh (id: %s, reason: %s): starting", v50, 0x16u);
      swift_arrayDestroy();

      v8 = v196;
    }

    v16 = v182;
    v51 = swift_allocObject();
    *(v51 + 16) = v194;
    *(v51 + 24) = &off_1001273C8;

    sub_1000E402C(&v200, v51);

    if (v16 >> 62)
    {
      v53 = _CocoaArrayWrapper.endIndex.getter();
      if (v53)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v53 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v53)
      {
LABEL_14:
        v54 = 0;
        v55 = v16 & 0xC000000000000001;
        v179 = v16 & 0xFFFFFFFFFFFFFF8;
        v178 = v16 + 32;
        *&v52 = 136315650;
        v176 = v52;
        *&v52 = 136315906;
        v186 = v52;
        v181 = v53;
        v180 = v16 & 0xC000000000000001;
        while (1)
        {
          if (v55)
          {
            v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v56 = __OFADD__(v54++, 1);
            if (v56)
            {
              goto LABEL_102;
            }
          }

          else
          {
            if (v54 >= *(v179 + 16))
            {
              goto LABEL_103;
            }

            v14 = *(v178 + 8 * v54);

            v56 = __OFADD__(v54++, 1);
            if (v56)
            {
              goto LABEL_102;
            }
          }

          v57 = v202;
          if ((v202 & 0xC000000000000001) != 0)
          {

            v58 = __CocoaSet.contains(_:)();
            v59 = v14;

            if (v58)
            {
              goto LABEL_24;
            }

LABEL_15:

            if (v54 == v53)
            {
              break;
            }
          }

          else
          {
            if (!*(v202 + 16))
            {
              goto LABEL_15;
            }

            v89 = *(v202 + 40);
            Hasher.init(_seed:)();
            v90 = *(v14 + 16);
            Hasher._combine(_:)(v90);
            v91 = Hasher._finalize()();
            v92 = -1 << *(v57 + 32);
            v93 = v91 & ~v92;
            if (((*(v57 + 56 + ((v93 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v93) & 1) == 0)
            {
              goto LABEL_15;
            }

            v59 = v14;
            v94 = ~v92;
            while (*(*(*(v57 + 48) + 8 * v93) + 16) != v90)
            {
              v93 = (v93 + 1) & v94;
              if (((*(v57 + 56 + ((v93 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v93) & 1) == 0)
              {
                goto LABEL_15;
              }
            }

LABEL_24:
            v184 = v54;
            v14 = *(v59 + 16);
            v60 = *(v59 + 24);
            v183 = v59;
            swift_unknownObjectRetain_n();

            v61 = Logger.logObject.getter();
            v62 = static os_log_type_t.default.getter();
            swift_unknownObjectRelease();

            if (os_log_type_enabled(v61, v62))
            {
              v63 = v8;
              v64 = swift_slowAlloc();
              v200 = swift_slowAlloc();
              *v64 = v176;
              *(v64 + 4) = sub_1000E3AF8(v189, v63, &v200);
              *(v64 + 12) = 2080;
              *(v64 + 14) = sub_1000E3AF8(v190, v5, &v200);
              *(v64 + 22) = 2080;
              swift_getObjectType();
              v65 = sub_1000C5A1C();
              v67 = sub_1000E3AF8(v65, v66, &v200);

              *(v64 + 24) = v67;
              _os_log_impl(&_mh_execute_header, v61, v62, "State refresh (id: %s, reason: %s): Notifying %s of state update", v64, 0x20u);
              swift_arrayDestroy();
            }

            v16 = v14;
            ObjectType = swift_getObjectType();
            v69 = *(v60 + 40);
            v193 = ObjectType;
            v70 = v69(ObjectType, v60);
            v191 = v60;
            if (v70)
            {
              v71 = v70;
              v8 = v196;

              swift_unknownObjectRetain();
              v72 = Logger.logObject.getter();
              v73 = static os_log_type_t.default.getter();
              swift_unknownObjectRelease();

              v74 = os_log_type_enabled(v72, v73);
              v185 = v16;
              if (v74)
              {
                LODWORD(v192) = v73;
                v194 = v72;
                v75 = swift_slowAlloc();
                v187 = swift_slowAlloc();
                v199 = v187;
                *v75 = v186;
                *(v75 + 4) = sub_1000E3AF8(v189, v8, &v199);
                *(v75 + 12) = 2080;
                *(v75 + 14) = sub_1000E3AF8(v190, v5, &v199);
                *(v75 + 22) = 2080;
                v76 = sub_1000C5A1C();
                v78 = sub_1000E3AF8(v76, v77, &v199);

                *(v75 + 24) = v78;
                v188 = v75;
                *(v75 + 32) = 2080;
                v79 = *(v71 + 16);
                if (v79)
                {
                  v198 = _swiftEmptyArrayStorage;
                  sub_1000635A4(0, v79, 0);
                  v80 = v198;
                  v81 = (v71 + 40);
                  do
                  {
                    v82 = *(v81 - 1);
                    v83 = *v81;
                    v200 = 538976288;
                    v201 = 0xE400000000000000;

                    v84._countAndFlagsBits = v82;
                    v84._object = v83;
                    String.append(_:)(v84);

                    v86 = v200;
                    v85 = v201;
                    v198 = v80;
                    v16 = v80[2];
                    v87 = v80[3];
                    if (v16 >= v87 >> 1)
                    {
                      sub_1000635A4((v87 > 1), v16 + 1, 1);
                      v80 = v198;
                    }

                    v80[2] = v16 + 1;
                    v88 = &v80[2 * v16];
                    v88[4] = v86;
                    v88[5] = v85;
                    v81 += 2;
                    --v79;
                  }

                  while (v79);

                  v5 = v195;
                  v8 = v196;
                }

                else
                {

                  v80 = _swiftEmptyArrayStorage;
                }

                v200 = v80;
                sub_100003CDC(&qword_100136C80, &qword_1000F39B0);
                sub_10001455C(&qword_100134288, &qword_100136C80, &qword_1000F39B0);
                v101 = BidirectionalCollection<>.joined(separator:)();
                v103 = v102;

                v104 = sub_1000E3AF8(v101, v103, &v199);

                v105 = v188;
                *(v188 + 34) = v104;
                v106 = v194;
                _os_log_impl(&_mh_execute_header, v194, v192, "State refresh (id: %s, reason: %s): %s updated state:\n%s", v105, 0x2Au);
                swift_arrayDestroy();

                v14 = v177;
                v60 = v191;
              }

              else
              {

                v14 = v177;
              }

              v107 = (*(v60 + 16))(v193, v60);
              v108 = *(v107 + 16);
              if (v108)
              {
                v200 = _swiftEmptyArrayStorage;
                specialized ContiguousArray.reserveCapacity(_:)();
                v109 = 32;
                do
                {
                  *(swift_allocObject() + 16) = *(v107 + v109);
                  swift_unknownObjectRetain();
                  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
                  v16 = *(v200 + 16);
                  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
                  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                  specialized ContiguousArray._endMutation()();
                  v109 += 16;
                  --v108;
                }

                while (v108);

                v110 = v200;
                v8 = v196;
                if (!(v200 >> 62))
                {
LABEL_52:
                  v111 = *((v110 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  if (v111)
                  {
                    goto LABEL_53;
                  }

LABEL_68:
                  swift_unknownObjectRelease();

                  goto LABEL_90;
                }
              }

              else
              {

                v110 = _swiftEmptyArrayStorage;
                if (!(_swiftEmptyArrayStorage >> 62))
                {
                  goto LABEL_52;
                }
              }

              v111 = _CocoaArrayWrapper.endIndex.getter();
              if (!v111)
              {
                goto LABEL_68;
              }

LABEL_53:
              v192 = v110;
              v194 = v111;
              if ((v110 & 0xC000000000000001) != 0)
              {
                v16 = 0;
                while (1)
                {
                  while (1)
                  {
                    v112 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                    v56 = __OFADD__(v16++, 1);
                    if (v56)
                    {
                      __break(1u);
LABEL_101:
                      __break(1u);
LABEL_102:
                      __break(1u);
LABEL_103:
                      __break(1u);
LABEL_104:
                      __break(1u);
                      goto LABEL_105;
                    }

                    v14 = v112;
                    v113 = v202;
                    if ((v202 & 0xC000000000000001) != 0)
                    {
                      break;
                    }

                    if (!*(v202 + 16))
                    {
                      goto LABEL_65;
                    }

                    v115 = *(v202 + 40);
                    Hasher.init(_seed:)();
                    Hasher._combine(_:)(*(v14 + 16));
                    v116 = Hasher._finalize()();
                    v117 = -1 << *(v113 + 32);
                    v118 = v116 & ~v117;
                    if (((*(v113 + 56 + ((v118 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v118) & 1) == 0)
                    {
                      goto LABEL_65;
                    }

                    v119 = ~v117;
                    while (*(*(*(v113 + 48) + 8 * v118) + 16) != *(v14 + 16))
                    {
                      v118 = (v118 + 1) & v119;
                      if (((*(v113 + 56 + ((v118 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v118) & 1) == 0)
                      {
                        goto LABEL_65;
                      }
                    }

LABEL_55:
                    swift_unknownObjectRelease();
                    if (v16 == v111)
                    {
                      goto LABEL_68;
                    }
                  }

                  swift_unknownObjectRetain();
                  v114 = __CocoaSet.contains(_:)();
                  swift_unknownObjectRelease();
                  if (v114)
                  {
                    goto LABEL_55;
                  }

LABEL_65:

                  swift_unknownObjectRetain();
                  swift_unknownObjectRetain();
                  v120 = Logger.logObject.getter();
                  v121 = static os_log_type_t.default.getter();
                  swift_unknownObjectRelease();
                  swift_unknownObjectRelease();

                  if (os_log_type_enabled(v120, v121))
                  {
                    v122 = swift_slowAlloc();
                    v200 = swift_slowAlloc();
                    *v122 = v186;
                    *(v122 + 4) = sub_1000E3AF8(v189, v8, &v200);
                    *(v122 + 12) = 2080;
                    *(v122 + 14) = sub_1000E3AF8(v190, v195, &v200);
                    *(v122 + 22) = 2080;
                    v123 = sub_1000C5A1C();
                    v125 = sub_1000E3AF8(v123, v124, &v200);

                    *(v122 + 24) = v125;
                    *(v122 + 32) = 2080;
                    v126 = *(v14 + 16);
                    v127 = *(v14 + 24);
                    swift_getObjectType();
                    v128 = sub_1000C5A1C();
                    v130 = sub_1000E3AF8(v128, v129, &v200);

                    *(v122 + 34) = v130;
                    v8 = v196;
                    _os_log_impl(&_mh_execute_header, v120, v121, "State refresh (id: %s, reason: %s): %s updated state, will notify subscriber: %s", v122, 0x2Au);
                    swift_arrayDestroy();

                    v5 = v195;
                  }

                  sub_1000E402C(&v200, v14);

                  v111 = v194;
                  if (v16 == v194)
                  {
                    goto LABEL_68;
                  }
                }
              }

              v8 = 0;
              v188 = v110 & 0xFFFFFFFFFFFFFF8;
              v187 = v110 + 32;
              while (2)
              {
                if (v8 >= *(v188 + 16))
                {
                  goto LABEL_101;
                }

                v16 = *(v187 + 8 * v8);
                v131 = v202;
                if ((v202 & 0xC000000000000001) != 0)
                {
                  v132 = *(v187 + 8 * v8);
                  swift_retain_n();
                  v133 = __CocoaSet.contains(_:)();

                  if (v133)
                  {
                  }

                  else
                  {
LABEL_85:
                    v139 = v5;
                    v140 = v196;

                    swift_unknownObjectRetain();

                    v14 = Logger.logObject.getter();
                    v141 = static os_log_type_t.default.getter();

                    swift_unknownObjectRelease();

                    if (os_log_type_enabled(v14, v141))
                    {
                      v142 = swift_slowAlloc();
                      v200 = swift_slowAlloc();
                      *v142 = v186;
                      *(v142 + 4) = sub_1000E3AF8(v189, v140, &v200);
                      *(v142 + 12) = 2080;
                      *(v142 + 14) = sub_1000E3AF8(v190, v139, &v200);
                      *(v142 + 22) = 2080;
                      v143 = sub_1000C5A1C();
                      v145 = sub_1000E3AF8(v143, v144, &v200);

                      *(v142 + 24) = v145;
                      *(v142 + 32) = 2080;
                      v146 = *(v16 + 16);
                      v147 = *(v16 + 24);
                      swift_getObjectType();
                      v148 = sub_1000C5A1C();
                      v150 = sub_1000E3AF8(v148, v149, &v200);

                      *(v142 + 34) = v150;
                      v5 = v195;
                      _os_log_impl(&_mh_execute_header, v14, v141, "State refresh (id: %s, reason: %s): %s updated state, will notify subscriber: %s", v142, 0x2Au);
                      swift_arrayDestroy();

                      v111 = v194;
                    }

                    else
                    {

                      v5 = v139;
                    }

                    sub_1000E402C(&v200, v16);
                  }
                }

                else
                {
                  if (!*(v202 + 16) || (v134 = *(v202 + 40), Hasher.init(_seed:)(), Hasher._combine(_:)(*(v16 + 16)), v135 = Hasher._finalize()(), v136 = -1 << *(v131 + 32), v137 = v135 & ~v136, ((*(v131 + 56 + ((v137 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v137) & 1) == 0))
                  {
LABEL_84:

                    goto LABEL_85;
                  }

                  v138 = ~v136;
                  while (*(*(*(v131 + 48) + 8 * v137) + 16) != *(v16 + 16))
                  {
                    v137 = (v137 + 1) & v138;
                    if (((*(v131 + 56 + ((v137 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v137) & 1) == 0)
                    {
                      goto LABEL_84;
                    }
                  }
                }

                if (++v8 == v111)
                {
                  swift_unknownObjectRelease();

                  v8 = v196;
                  goto LABEL_90;
                }

                continue;
              }
            }

            v8 = v196;

            swift_unknownObjectRetain();
            v95 = Logger.logObject.getter();
            v96 = static os_log_type_t.default.getter();
            swift_unknownObjectRelease();

            if (os_log_type_enabled(v95, v96))
            {
              v97 = swift_slowAlloc();
              v200 = swift_slowAlloc();
              *v97 = v176;
              *(v97 + 4) = sub_1000E3AF8(v189, v196, &v200);
              *(v97 + 12) = 2080;
              *(v97 + 14) = sub_1000E3AF8(v190, v5, &v200);
              *(v97 + 22) = 2080;
              v98 = sub_1000C5A1C();
              v100 = sub_1000E3AF8(v98, v99, &v200);

              *(v97 + 24) = v100;
              _os_log_impl(&_mh_execute_header, v95, v96, "State refresh (id: %s, reason: %s): %s did not update state", v97, 0x20u);
              swift_arrayDestroy();

              v8 = v196;

              swift_unknownObjectRelease();
            }

            else
            {
              swift_unknownObjectRelease();
            }

LABEL_90:
            v16 = v182;
            v53 = v181;
            v54 = v184;
            v55 = v180;
            if (v184 == v181)
            {
              break;
            }
          }
        }
      }
    }

    v151 = Logger.logObject.getter();
    v152 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v151, v152))
    {
      v153 = swift_slowAlloc();
      v200 = swift_slowAlloc();
      *v153 = 136315394;
      v154 = sub_1000E3AF8(v189, v8, &v200);

      *(v153 + 4) = v154;
      *(v153 + 12) = 2080;
      *(v153 + 14) = sub_1000E3AF8(v190, v5, &v200);
      _os_log_impl(&_mh_execute_header, v151, v152, "State refresh (id: %s, reason: %s): completed", v153, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v155 = v172;
    v156 = v173;
    v157 = OSSignposter.logHandle.getter();
    OSSignpostIntervalState.signpostID.getter();
    v158 = static os_signpost_type_t.end.getter();
    if (OS_os_log.signpostsEnabled.getter())
    {

      v159 = v167;
      checkForErrorAndConsumeState(state:)();

      v160 = v168;
      if ((*(v155 + 88))(v159, v168) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v161 = "[Error] Interval already ended";
      }

      else
      {
        (*(v155 + 8))(v159, v160);
        v161 = "";
      }

      v162 = swift_slowAlloc();
      *v162 = 0;
      v163 = v173;
      v164 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v157, v158, v164, "State refresh", v161, v162, 2u);
      v156 = v163;
    }

    return v170(v156, v174);
  }

  else
  {

    __break(1u);
  }

  return result;
}

uint64_t sub_10008580C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v201 = a3;
  v204 = a2;
  v197 = a1;
  v175 = type metadata accessor for OSSignpostError();
  v179 = *(v175 - 8);
  v4 = *(v179 + 64);
  __chkstk_darwin(v175);
  v174 = &v173 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UUID();
  v203 = *(v6 - 8);
  v7 = *(v203 + 64);
  __chkstk_darwin(v6);
  v9 = &v173 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = type metadata accessor for OSSignpostID();
  v182 = *(v181 - 8);
  v10 = v182[8];
  v11 = __chkstk_darwin(v181);
  v180 = &v173 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v15 = &v173 - v14;
  __chkstk_darwin(v13);
  v17 = &v173 - v16;
  v18 = type metadata accessor for DispatchPredicate();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = (&v173 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v200 = v3;
  v23 = *(v3 + 56);
  *v22 = v23;
  (*(v19 + 104))(v22, enum case for DispatchPredicate.onQueue(_:), v18);
  v24 = v23;
  v25 = _dispatchPreconditionTest(_:)();
  (*(v19 + 8))(v22, v18);
  if ((v25 & 1) == 0)
  {
    goto LABEL_95;
  }

  if (qword_100133A80 != -1)
  {
LABEL_96:
    swift_once();
  }

  v26 = type metadata accessor for OSSignposter();
  v27 = sub_1000144F0(v26, qword_100138798);
  if (qword_100133A88 != -1)
  {
    swift_once();
  }

  v28 = v181;
  v29 = sub_1000144F0(v181, qword_1001387B0);
  v30 = v182[2];
  v30(v17, v29, v28);
  v178 = v27;
  v31 = OSSignposter.logHandle.getter();
  v32 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v33 = v6;
    v34 = swift_slowAlloc();
    *v34 = 0;
    v35 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v31, v32, v35, "State refresh", "", v34, 2u);
    v6 = v33;
  }

  v36 = v181;
  v30(v15, v17, v181);
  v37 = type metadata accessor for OSSignpostIntervalState();
  v38 = *(v37 + 48);
  v39 = *(v37 + 52);
  swift_allocObject();
  v176 = OSSignpostIntervalState.init(id:isOpen:)();
  v40 = v182[1];
  ++v182;
  v177 = v40;
  v40(v17, v36);
  UUID.init()();
  v196 = UUID.uuidString.getter();
  v202 = v41;
  (*(v203 + 8))(v9, v6);
  v42 = swift_allocObject();
  *(v42 + 16) = _swiftEmptyArrayStorage;
  v43 = swift_allocObject();
  *(v43 + 16) = &_swiftEmptySetSingleton;
  v44 = swift_allocObject();
  *(v44 + 16) = &_swiftEmptySetSingleton;
  v184 = type metadata accessor for StateManagerWrapper();
  v45 = swift_allocObject();
  v47 = v200;
  v46 = v201;
  *(v45 + 16) = v200;
  *(v45 + 24) = v46;

  v15 = sub_1000C5A64(v45, v43, v44, v42);

  if (v15)
  {
    swift_beginAccess();
    v48 = *(v42 + 16);

    v6 = sub_10008DD24(v49);

    v209 = &_swiftEmptySetSingleton;
    if (qword_100133AC0 != -1)
    {
      swift_once();
    }

    v50 = type metadata accessor for Logger();
    v51 = sub_1000144F0(v50, qword_10014E980);
    v52 = v202;

    v203 = v51;
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.default.getter();

    v17 = &type metadata for Any;
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v207 = swift_slowAlloc();
      *v55 = 136315394;
      *(v55 + 4) = sub_1000E3AF8(v196, v52, &v207);
      *(v55 + 12) = 2080;
      *(v55 + 14) = sub_1000E3AF8(v197, v204, &v207);
      _os_log_impl(&_mh_execute_header, v53, v54, "State refresh (id: %s, reason: %s): starting", v55, 0x16u);
      swift_arrayDestroy();
    }

    v56 = swift_allocObject();
    v57 = v201;
    *(v56 + 16) = v47;
    *(v56 + 24) = v57;

    sub_1000E402C(&v207, v56);

    if (v6 >> 62)
    {
      v9 = _CocoaArrayWrapper.endIndex.getter();
      v59 = v202;
      if (v9)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v9 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v59 = v202;
      if (v9)
      {
LABEL_14:
        v60 = 0;
        v61 = v6 & 0xC000000000000001;
        v186 = v6 & 0xFFFFFFFFFFFFFF8;
        v185 = v6 + 32;
        *&v58 = 136315650;
        v183 = v58;
        *&v58 = 136315906;
        v193 = v58;
        v189 = v6;
        v188 = v9;
        v187 = v6 & 0xC000000000000001;
        do
        {
          if (v61)
          {
            v62 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v60 >= *(v186 + 16))
            {
              goto LABEL_94;
            }

            v63 = *(v185 + 8 * v60);
          }

          v64 = v62;
          v65 = __OFADD__(v60++, 1);
          if (v65)
          {
            goto LABEL_93;
          }

          v66 = v209;
          if ((v209 & 0xC000000000000001) != 0)
          {
            v67 = v62;

            v68 = __CocoaSet.contains(_:)();
            v69 = v67;

            if ((v68 & 1) == 0)
            {
              goto LABEL_15;
            }
          }

          else
          {
            if (!*(v209 + 16))
            {
LABEL_15:

              continue;
            }

            v15 = v17;
            v99 = *(v209 + 40);
            v100 = v64;
            Hasher.init(_seed:)();
            v101 = *(v100 + 16);
            Hasher._combine(_:)(v101);
            v102 = Hasher._finalize()();
            v103 = -1 << *(v66 + 32);
            v104 = v102 & ~v103;
            if (((*(v66 + 56 + ((v104 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v104) & 1) == 0)
            {

              v17 = v15;
              continue;
            }

            v69 = v100;
            v105 = ~v103;
            v17 = v15;
            while (*(*(*(v66 + 48) + 8 * v104) + 16) != v101)
            {
              v104 = (v104 + 1) & v105;
              if (((*(v66 + 56 + ((v104 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v104) & 1) == 0)
              {
                goto LABEL_15;
              }
            }
          }

          v191 = v60;
          v70 = *(v69 + 16);
          v71 = *(v69 + 24);
          v190 = v69;
          swift_unknownObjectRetain_n();

          v72 = Logger.logObject.getter();
          v73 = static os_log_type_t.default.getter();
          swift_unknownObjectRelease();

          if (os_log_type_enabled(v72, v73))
          {
            v74 = v59;
            v75 = swift_slowAlloc();
            v207 = swift_slowAlloc();
            *v75 = v183;
            *(v75 + 4) = sub_1000E3AF8(v196, v74, &v207);
            *(v75 + 12) = 2080;
            *(v75 + 14) = sub_1000E3AF8(v197, v204, &v207);
            *(v75 + 22) = 2080;
            swift_getObjectType();
            v76 = sub_1000C5A1C();
            v78 = sub_1000E3AF8(v76, v77, &v207);

            *(v75 + 24) = v78;
            _os_log_impl(&_mh_execute_header, v72, v73, "State refresh (id: %s, reason: %s): Notifying %s of state update", v75, 0x20u);
            swift_arrayDestroy();
          }

          v9 = v70;
          ObjectType = swift_getObjectType();
          v80 = *(v71 + 40);
          v200 = ObjectType;
          v81 = v80(ObjectType, v71);
          v198 = v71;
          if (!v81)
          {
            v59 = v202;

            swift_unknownObjectRetain();
            v106 = Logger.logObject.getter();
            v107 = static os_log_type_t.default.getter();
            swift_unknownObjectRelease();

            v15 = v70;
            if (!os_log_type_enabled(v106, v107))
            {
              swift_unknownObjectRelease();

              goto LABEL_89;
            }

            v108 = swift_slowAlloc();
            v207 = swift_slowAlloc();
            *v108 = v183;
            *(v108 + 4) = sub_1000E3AF8(v196, v202, &v207);
            *(v108 + 12) = 2080;
            *(v108 + 14) = sub_1000E3AF8(v197, v204, &v207);
            *(v108 + 22) = 2080;
            v109 = sub_1000C5A1C();
            v111 = sub_1000E3AF8(v109, v110, &v207);

            *(v108 + 24) = v111;
            _os_log_impl(&_mh_execute_header, v106, v107, "State refresh (id: %s, reason: %s): %s did not update state", v108, 0x20u);
            v17 = &type metadata for Any;
            swift_arrayDestroy();

            v59 = v202;

            swift_unknownObjectRelease();

            goto LABEL_90;
          }

          v82 = v81;
          v59 = v202;

          swift_unknownObjectRetain();
          v6 = Logger.logObject.getter();
          v83 = static os_log_type_t.default.getter();
          swift_unknownObjectRelease();

          v84 = os_log_type_enabled(v6, v83);
          v192 = v9;
          if (v84)
          {
            LODWORD(v201) = v83;
            v85 = swift_slowAlloc();
            v195 = swift_slowAlloc();
            v206 = v195;
            *v85 = v193;
            *(v85 + 4) = sub_1000E3AF8(v196, v59, &v206);
            *(v85 + 12) = 2080;
            *(v85 + 14) = sub_1000E3AF8(v197, v204, &v206);
            *(v85 + 22) = 2080;
            v86 = sub_1000C5A1C();
            v88 = sub_1000E3AF8(v86, v87, &v206);

            *(v85 + 24) = v88;
            v199 = v85;
            *(v85 + 32) = 2080;
            v89 = *(v82 + 16);
            if (v89)
            {
              v194 = v6;
              v205 = _swiftEmptyArrayStorage;
              sub_1000635A4(0, v89, 0);
              v90 = v205;
              v91 = (v82 + 40);
              do
              {
                v92 = *(v91 - 1);
                v93 = *v91;
                v207 = 538976288;
                v208 = 0xE400000000000000;

                v94._countAndFlagsBits = v92;
                v94._object = v93;
                String.append(_:)(v94);

                v96 = v207;
                v95 = v208;
                v205 = v90;
                v9 = v90[2];
                v97 = v90[3];
                if (v9 >= v97 >> 1)
                {
                  sub_1000635A4((v97 > 1), v9 + 1, 1);
                  v90 = v205;
                }

                v90[2] = v9 + 1;
                v98 = &v90[2 * v9];
                v98[4] = v96;
                v98[5] = v95;
                v91 += 2;
                --v89;
              }

              while (v89);

              v59 = v202;
              v6 = v194;
            }

            else
            {

              v90 = _swiftEmptyArrayStorage;
            }

            v207 = v90;
            sub_100003CDC(&qword_100136C80, &qword_1000F39B0);
            sub_10001455C(&qword_100134288, &qword_100136C80, &qword_1000F39B0);
            v112 = BidirectionalCollection<>.joined(separator:)();
            v114 = v113;

            v115 = sub_1000E3AF8(v112, v114, &v206);

            v116 = v199;
            *(v199 + 34) = v115;
            _os_log_impl(&_mh_execute_header, v6, v201, "State refresh (id: %s, reason: %s): %s updated state:\n%s", v116, 0x2Au);
            swift_arrayDestroy();

            v17 = v184;
            v71 = v198;
          }

          else
          {

            v17 = v184;
          }

          v117 = (*(v71 + 16))(v200, v71);
          v118 = *(v117 + 16);
          if (v118)
          {
            v207 = _swiftEmptyArrayStorage;
            specialized ContiguousArray.reserveCapacity(_:)();
            v119 = 32;
            do
            {
              *(swift_allocObject() + 16) = *(v117 + v119);
              swift_unknownObjectRetain();
              specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
              v9 = *(v207 + 16);
              specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
              specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              specialized ContiguousArray._endMutation()();
              v119 += 16;
              --v118;
            }

            while (v118);

            v120 = v207;
            v59 = v202;
            if (v207 >> 62)
            {
LABEL_70:
              v15 = _CocoaArrayWrapper.endIndex.getter();
              if (!v15)
              {
LABEL_68:
                swift_unknownObjectRelease();

                goto LABEL_89;
              }

              goto LABEL_53;
            }
          }

          else
          {

            v120 = _swiftEmptyArrayStorage;
            if (_swiftEmptyArrayStorage >> 62)
            {
              goto LABEL_70;
            }
          }

          v15 = *((v120 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v15)
          {
            goto LABEL_68;
          }

LABEL_53:
          v199 = v120;
          v201 = v15;
          if ((v120 & 0xC000000000000001) != 0)
          {
            v9 = 0;
            while (1)
            {
              while (1)
              {
                v121 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                v65 = __OFADD__(v9++, 1);
                if (v65)
                {
                  __break(1u);
LABEL_92:
                  __break(1u);
LABEL_93:
                  __break(1u);
LABEL_94:
                  __break(1u);
LABEL_95:
                  __break(1u);
                  goto LABEL_96;
                }

                v17 = v121;
                v122 = v209;
                if ((v209 & 0xC000000000000001) != 0)
                {
                  break;
                }

                if (!*(v209 + 16))
                {
                  goto LABEL_65;
                }

                v124 = *(v209 + 40);
                Hasher.init(_seed:)();
                Hasher._combine(_:)(*(v17 + 2));
                v125 = Hasher._finalize()();
                v126 = -1 << *(v122 + 32);
                v127 = v125 & ~v126;
                if (((*(v122 + 56 + ((v127 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v127) & 1) == 0)
                {
                  goto LABEL_65;
                }

                v128 = ~v126;
                while (*(*(*(v122 + 48) + 8 * v127) + 16) != *(v17 + 2))
                {
                  v127 = (v127 + 1) & v128;
                  if (((*(v122 + 56 + ((v127 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v127) & 1) == 0)
                  {
                    goto LABEL_65;
                  }
                }

LABEL_55:
                swift_unknownObjectRelease();
                if (v9 == v15)
                {
                  goto LABEL_68;
                }
              }

              swift_unknownObjectRetain();
              v123 = __CocoaSet.contains(_:)();
              swift_unknownObjectRelease();
              if (v123)
              {
                goto LABEL_55;
              }

LABEL_65:

              swift_unknownObjectRetain();
              swift_unknownObjectRetain();
              v129 = Logger.logObject.getter();
              v130 = static os_log_type_t.default.getter();
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();

              if (os_log_type_enabled(v129, v130))
              {
                v6 = swift_slowAlloc();
                v207 = swift_slowAlloc();
                *v6 = v193;
                *(v6 + 4) = sub_1000E3AF8(v196, v59, &v207);
                *(v6 + 12) = 2080;
                *(v6 + 14) = sub_1000E3AF8(v197, v204, &v207);
                *(v6 + 22) = 2080;
                v131 = sub_1000C5A1C();
                v133 = sub_1000E3AF8(v131, v132, &v207);

                *(v6 + 24) = v133;
                *(v6 + 32) = 2080;
                v134 = *(v17 + 2);
                v135 = *(v17 + 3);
                swift_getObjectType();
                v136 = sub_1000C5A1C();
                v138 = sub_1000E3AF8(v136, v137, &v207);

                *(v6 + 34) = v138;
                v59 = v202;
                _os_log_impl(&_mh_execute_header, v129, v130, "State refresh (id: %s, reason: %s): %s updated state, will notify subscriber: %s", v6, 0x2Au);
                swift_arrayDestroy();
              }

              sub_1000E402C(&v207, v17);

              v15 = v201;
              if (v9 == v201)
              {
                goto LABEL_68;
              }
            }
          }

          v139 = 0;
          v195 = v120 & 0xFFFFFFFFFFFFFF8;
          v194 = v120 + 32;
          do
          {
            if (v139 >= *(v195 + 16))
            {
              goto LABEL_92;
            }

            v9 = *(v194 + 8 * v139);
            v140 = v209;
            if ((v209 & 0xC000000000000001) != 0)
            {
              v141 = *(v194 + 8 * v139);
              swift_retain_n();
              v142 = __CocoaSet.contains(_:)();

              if (v142)
              {

                goto LABEL_74;
              }

              goto LABEL_85;
            }

            if (!*(v209 + 16) || (v143 = *(v209 + 40), Hasher.init(_seed:)(), Hasher._combine(_:)(*(v9 + 16)), v144 = Hasher._finalize()(), v145 = -1 << *(v140 + 32), v146 = v144 & ~v145, ((*(v140 + 56 + ((v146 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v146) & 1) == 0))
            {
LABEL_84:

LABEL_85:
              v148 = v204;
              v6 = v202;

              swift_unknownObjectRetain();

              v17 = Logger.logObject.getter();
              v149 = static os_log_type_t.default.getter();

              swift_unknownObjectRelease();

              if (os_log_type_enabled(v17, v149))
              {
                v150 = swift_slowAlloc();
                v207 = swift_slowAlloc();
                *v150 = v193;
                *(v150 + 4) = sub_1000E3AF8(v196, v6, &v207);
                *(v150 + 12) = 2080;
                *(v150 + 14) = sub_1000E3AF8(v197, v148, &v207);
                *(v150 + 22) = 2080;
                v151 = sub_1000C5A1C();
                v153 = sub_1000E3AF8(v151, v152, &v207);

                *(v150 + 24) = v153;
                *(v150 + 32) = 2080;
                v154 = *(v9 + 16);
                v155 = *(v9 + 24);
                swift_getObjectType();
                v156 = sub_1000C5A1C();
                v6 = sub_1000E3AF8(v156, v157, &v207);

                *(v150 + 34) = v6;
                _os_log_impl(&_mh_execute_header, v17, v149, "State refresh (id: %s, reason: %s): %s updated state, will notify subscriber: %s", v150, 0x2Au);
                swift_arrayDestroy();

                v15 = v201;
              }

              sub_1000E402C(&v207, v9);

              goto LABEL_74;
            }

            v147 = ~v145;
            while (*(*(*(v140 + 48) + 8 * v146) + 16) != *(v9 + 16))
            {
              v146 = (v146 + 1) & v147;
              if (((*(v140 + 56 + ((v146 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v146) & 1) == 0)
              {
                goto LABEL_84;
              }
            }

LABEL_74:
            ++v139;
          }

          while (v139 != v15);
          swift_unknownObjectRelease();

          v59 = v202;
LABEL_89:
          v17 = &type metadata for Any;
LABEL_90:
          v6 = v189;
          v9 = v188;
          v60 = v191;
          v61 = v187;
        }

        while (v60 != v9);
      }
    }

    v158 = Logger.logObject.getter();
    v159 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v158, v159))
    {
      v160 = swift_slowAlloc();
      v207 = swift_slowAlloc();
      *v160 = 136315394;
      v161 = sub_1000E3AF8(v196, v59, &v207);

      *(v160 + 4) = v161;
      *(v160 + 12) = 2080;
      *(v160 + 14) = sub_1000E3AF8(v197, v204, &v207);
      _os_log_impl(&_mh_execute_header, v158, v159, "State refresh (id: %s, reason: %s): completed", v160, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v162 = v179;
    v163 = v180;
    v164 = OSSignposter.logHandle.getter();
    OSSignpostIntervalState.signpostID.getter();
    v165 = static os_signpost_type_t.end.getter();
    if (OS_os_log.signpostsEnabled.getter())
    {

      v166 = v174;
      checkForErrorAndConsumeState(state:)();

      v167 = v175;
      if ((*(v162 + 88))(v166, v175) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v168 = "[Error] Interval already ended";
      }

      else
      {
        (*(v162 + 8))(v166, v167);
        v168 = "";
      }

      v169 = swift_slowAlloc();
      *v169 = 0;
      v170 = v180;
      v171 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v164, v165, v171, "State refresh", v168, v169, 2u);
      v163 = v170;
    }

    return v177(v163, v181);
  }

  else
  {

    __break(1u);
  }

  return result;
}