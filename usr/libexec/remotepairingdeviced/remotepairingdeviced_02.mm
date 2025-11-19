uint64_t sub_100039310()
{
  sub_100036E54();
  sub_1000207B0();
}

uint64_t sub_100039488()
{
  static os_log_type_t.default.getter();
  os_log(_:dso:log:_:_:)();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10003961C();
  }

  return result;
}

uint64_t sub_100039510(unsigned __int8 a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    notify_post([kRemotePairingTrustedHostsUpdatedNotificationName UTF8String]);
    if (a1 <= 2u)
    {
      notify_post([**(&off_100090320 + a1) UTF8String]);
    }
  }

  return result;
}

uint64_t sub_1000395C0()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_10003D2D0();
  }

  return xpc_transaction_exit_clean();
}

void sub_10003961C()
{
  v0 = sub_1000381EC();
  v22 = *(v0 + 16);
  if (!v22)
  {

    return;
  }

  v1 = 0;
  v20 = v0;
  v21 = v0 + 32;
LABEL_3:
  if (v1 >= *(v0 + 16))
  {
    goto LABEL_24;
  }

  sub_100022260(v21 + 40 * v1, v24);
  v2 = v25;
  v3 = v26;
  sub_10001355C(v24, v25);
  v4 = (*(v3 + 16))(v2, v3);
  sub_10000CADC(v24);
  if ((v4 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    type metadata accessor for ControlChannelConnection();
    sub_10003FFC8();
    sub_10000D128(&unk_10009BE10, 255, v5);
    Set.Iterator.init(_cocoa:)();
    v4 = v27;
    v6 = v28;
    v8 = v29;
    v7 = v30;
    v9 = v31;
  }

  else
  {
    v7 = 0;
    v6 = v4 + 56;
    v10 = *(v4 + 56);
    v8 = ~(-1 << *(v4 + 32));
    sub_100040110();
    v9 = v11 & v12;
  }

  ++v1;
  if (v4 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v13 = v7;
    v14 = v7;
    if (!v9)
    {
      break;
    }

LABEL_12:
    sub_100040048();
    v17 = v16 & v15;
    v19 = *(*(v4 + 48) + ((v14 << 9) | (8 * v18)));

    if (!v19)
    {
LABEL_18:
      sub_1000134CC();
      v0 = v20;
      if (v1 == v22)
      {

        return;
      }

      goto LABEL_3;
    }

    while (1)
    {
      dispatch thunk of ControlChannelConnection.pushDeviceInfoChangesToHost()();

      v7 = v14;
      v9 = v17;
      if ((v4 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (__CocoaSet.Iterator.next()())
      {
        type metadata accessor for ControlChannelConnection();
        swift_dynamicCast();
        v14 = v7;
        v17 = v9;
        if (v23)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v14 >= ((v8 + 64) >> 6))
    {
      goto LABEL_18;
    }

    ++v13;
    if (*(v6 + 8 * v14))
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
}

void sub_1000398A0(uint64_t a1, uint64_t a2)
{
  sub_10000CBD0();
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  v5[2] = v4;
  v5[3] = a1;
  v5[4] = a2;
  v8[4] = sub_10003DF8C;
  v8[5] = v5;
  sub_100036518();
  v8[1] = 1107296256;
  v8[2] = sub_1000499CC;
  v8[3] = &unk_100090258;
  v6 = _Block_copy(v8);

  v7 = String.utf8CString.getter();
  xpc_activity_register((v7 + 32), XPC_ACTIVITY_CHECK_IN, v6);

  _Block_release(v6);
}

void sub_1000399B8()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + 16);

    __chkstk_darwin(v2);
    sub_100013414(&unk_10009A940, &qword_100077D98);
    OS_dispatch_queue.sync<A>(execute:)();
  }
}

uint64_t sub_100039AB0@<X0>(_xpc_activity_s *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, BOOL *a4@<X8>)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v9 = result;
  if (result)
  {
    sub_100039B4C(a1, a2, a3);
  }

  *a4 = v9 == 0;
  return result;
}

void sub_100039B4C(_xpc_activity_s *a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 16);
  OS_dispatch_queue.assertOnQueueHierarchy()();
  if (!xpc_activity_get_state(a1))
  {
    v15 = static os_log_type_t.default.getter();
    v16 = qword_10009CED0;
    if (!os_log_type_enabled(qword_10009CED0, v15))
    {
      return;
    }

    sub_10000D054();
    v17 = swift_slowAlloc();
    sub_10000CCCC();
    v18 = swift_slowAlloc();
    v25 = v18;
    *v17 = 136446210;
    *(v17 + 4) = sub_1000400C8(v18);
    v19 = "Received check in event in for XPC activity %{public}s";
    goto LABEL_9;
  }

  if (xpc_activity_get_state(a1) != 2)
  {
    return;
  }

  if (!xpc_activity_should_defer(a1))
  {
    v20 = static os_log_type_t.default.getter();
    v16 = qword_10009CED0;
    if (os_log_type_enabled(qword_10009CED0, v20))
    {
      sub_10000D054();
      v21 = swift_slowAlloc();
      sub_10000CCCC();
      v22 = swift_slowAlloc();
      v25 = v22;
      *v21 = 136446210;
      *(v21 + 4) = sub_1000400C8(v22);
      _os_log_impl(&_mh_execute_header, v16, v20, "XPC activity %{public}s fired", v21, 0xCu);
      sub_10000CADC(v22);
      sub_100015FBC();

      sub_100015FBC();
    }

    v23 = a2 == 0xD00000000000002ELL && 0x800000010007EC80 == a3;
    if (v23 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      sub_100039EFC();
      return;
    }

    v24 = a2 == 0xD00000000000002BLL && 0x800000010007ECB0 == a3;
    if (v24 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      sub_1000388DC();
      sub_100055F64();

      return;
    }

    v15 = static os_log_type_t.fault.getter();
    if (!os_log_type_enabled(v16, v15))
    {
      return;
    }

    sub_10000D054();
    v17 = swift_slowAlloc();
    sub_10000CCCC();
    v18 = swift_slowAlloc();
    v25 = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_1000400C8(v18);
    v19 = "Received event for unexpected XPC activity %s";
LABEL_9:
    _os_log_impl(&_mh_execute_header, v16, v15, v19, v17, 0xCu);
    sub_10000CADC(v18);
    sub_100015FBC();

    goto LABEL_10;
  }

  if (!xpc_activity_set_state(a1, 3))
  {
    v8 = static os_log_type_t.fault.getter();
    v9 = qword_10009CED0;
    if (sub_100040190(v8))
    {
      sub_10000D054();
      v10 = swift_slowAlloc();
      sub_10000CCCC();
      v11 = swift_slowAlloc();
      v25 = v11;
      *v10 = 136315138;
      swift_unknownObjectRetain();
      sub_100013414(&unk_100099CE0, &qword_100077D90);
      v12 = String.init<A>(describing:)();
      v14 = sub_10000C600(v12, v13, &v25);

      *(v10 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v9, v8, "Failed to defer activity %s", v10, 0xCu);
      sub_10000CADC(v11);
      sub_10003FFE0();

LABEL_10:
      sub_100015FBC();
    }
  }
}

void sub_100039EFC()
{
  sub_10000D060();
  v38 = sub_100013414(&qword_1000999E8, &unk_100077D60);
  v1 = sub_10000CC04(v38);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v39 = &v32 - v4;
  v5 = sub_1000381EC();
  v35 = *(v5 + 16);
  if (!v35)
  {
    goto LABEL_21;
  }

  v41 = sub_1000118F0(0, &qword_100098ED0, OS_os_log_ptr);
  v6 = 0;
  v34 = v5 + 32;
  *&v7 = 136315394;
  v36 = v7;
  v37 = v0;
  v33 = v5;
  while (2)
  {
    if (v6 >= *(v5 + 16))
    {
LABEL_23:
      __break(1u);
      return;
    }

    v42 = v6;
    sub_100022260(v34 + 40 * v6, v47);
    static os_log_type_t.info.getter();
    v8 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();

    v9 = v48;
    v10 = v49;
    sub_10001355C(v47, v48);
    v11 = (*(v10 + 16))(v9, v10);
    sub_10000CADC(v47);
    if ((v11 & 0xC000000000000001) != 0)
    {
      __CocoaSet.makeIterator()();
      type metadata accessor for ControlChannelConnection();
      sub_10003FFC8();
      sub_10000D128(&unk_10009BE10, 255, v12);
      sub_10000D4B0();
      Set.Iterator.init(_cocoa:)();
      v11 = v50;
      v13 = v51;
      v14 = v52;
      v15 = v53;
      v16 = v54;
    }

    else
    {
      v15 = 0;
      v17 = -1 << *(v11 + 32);
      v13 = v11 + 56;
      v18 = *(v11 + 56);
      sub_100040110();
      v16 = v19 & v20;
    }

    ++v42;
    v43 = v11;
    v40 = v14;
    v21 = (v14 + 64) >> 6;
    while (v11 < 0)
    {
      v29 = __CocoaSet.Iterator.next()();
      if (!v29)
      {
        goto LABEL_20;
      }

      v45 = v29;
      type metadata accessor for ControlChannelConnection();
      swift_dynamicCast();
      v23 = v15;
      v26 = v16;
      if (!v46)
      {
        goto LABEL_20;
      }

LABEL_17:
      v44 = v26;
      v30 = dispatch thunk of ControlChannelConnection.resolvedIdentity.getter();
      if (v30)
      {
        v31 = v30;
        sub_100036E54();
        sub_100021370(v31);
      }

      v15 = v23;
      v11 = v43;
      v16 = v44;
    }

    v22 = v15;
    v23 = v15;
    if (!v16)
    {
      while (1)
      {
        v23 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        if (v23 >= v21)
        {
          goto LABEL_20;
        }

        ++v22;
        if (*(v13 + 8 * v23))
        {
          goto LABEL_13;
        }
      }

      __break(1u);
      goto LABEL_23;
    }

LABEL_13:
    sub_100040048();
    v26 = v25 & v24;
    v28 = *(*(v11 + 48) + ((v23 << 9) | (8 * v27)));

    if (v28)
    {
      goto LABEL_17;
    }

LABEL_20:
    sub_100040164();
    sub_1000134CC();
    v6 = v42;
    v5 = v33;
    if (v42 != v35)
    {
      continue;
    }

    break;
  }

LABEL_21:

  static os_log_type_t.default.getter();
  os_log(_:dso:log:_:_:)();
  sub_100036E54();
  sub_1000207B0();

  sub_1000135A0();
}

void sub_10003A57C()
{
  sub_10000D600();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v44 = v6;
  v42 = v7;
  v8 = type metadata accessor for PinNotificationEvent();
  v9 = sub_10000CBBC(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v9);
  sub_10000CBDC();
  v16 = (v15 - v14);
  v17 = static os_log_type_t.error.getter();
  v41 = qword_10009CED0;
  if (os_log_type_enabled(qword_10009CED0, v17))
  {
    sub_10000D054();
    v18 = swift_slowAlloc();
    sub_10000CCCC();
    v19 = swift_slowAlloc();
    *&v43[0] = v19;
    *v18 = 136315138;
    v20 = sub_10000CD1C();
    *(v18 + 4) = sub_10000C600(v20, v21, v22);
    _os_log_impl(&_mh_execute_header, v41, v17, ">>>>> show pin: %s", v18, 0xCu);
    sub_10000CADC(v19);
    sub_10003FFE0();

    sub_100015FBC();
  }

  v23 = v1[19];
  if (!v23)
  {
    goto LABEL_9;
  }

  v24 = v1[20];
  *v16 = v42;
  v16[1] = v44;
  v16[2] = v5;
  v16[3] = v3;
  (*(v11 + 104))(v16, enum case for PinNotificationEvent.show(_:), v8);

  sub_100010E30(v23);

  v25 = v23(v16);
  (*(v11 + 8))(v16, v8);
  if ((v25 & 1) == 0)
  {
    sub_10000FAC8(v23);
LABEL_9:
    sub_100013414(&unk_10009A910, &unk_100077D80);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100077390;
    v33 = kCFUserNotificationAlertHeaderKey;
    sub_100013414(&qword_10009A478, &qword_100077B60);
    sub_100035E40();
    AnyHashable.init<A>(_:)();
    *(inited + 96) = &type metadata for String;
    *(inited + 72) = 0x72696170206E6950;
    *(inited + 80) = 0xEB00000000676E69;
    v34 = kCFUserNotificationAlertMessageKey;
    AnyHashable.init<A>(_:)();
    _StringGuts.grow(_:)(36);

    strcpy(v43, "Enter the PIN ");
    HIBYTE(v43[0]) = -18;
    v35._countAndFlagsBits = sub_10000CD1C();
    String.append(_:)(v35);
    v36._object = 0x800000010007EBC0;
    v36._countAndFlagsBits = 0xD000000000000014;
    String.append(_:)(v36);
    v37 = v43[0];
    *(inited + 168) = &type metadata for String;
    *(inited + 144) = v37;
    sub_10000D4B0();
    Dictionary.init(dictionaryLiteral:)();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v39 = CFUserNotificationCreate(0, 0.0, 0x23uLL, 0, isa);

    v40 = v1[18];
    v1[18] = v39;

    static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)();
    goto LABEL_10;
  }

  v26 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v41, v26))
  {
    sub_10000D054();
    v27 = swift_slowAlloc();
    sub_10000CCCC();
    v28 = swift_slowAlloc();
    *&v43[0] = v28;
    *v27 = 136315138;
    v29 = sub_10000CD1C();
    *(v27 + 4) = sub_10000C600(v29, v30, v31);
    _os_log_impl(&_mh_execute_header, v41, v26, ">>>>> used custom pin handler: %s", v27, 0xCu);
    sub_10000CADC(v28);
    sub_100015FBC();

    sub_10003FFE0();
  }

  sub_10000FAC8(v23);
LABEL_10:
  sub_100016010();
}

void sub_10003AA34()
{
  sub_100040098();
  v2 = type metadata accessor for PinNotificationEvent();
  v3 = sub_10000CBBC(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  sub_10000CBDC();
  v10 = v9 - v8;
  v11 = *(v1 + 152);
  if (v11)
  {
    v12 = *(v0 + 160);
    (*(v5 + 104))(v10, enum case for PinNotificationEvent.hide(_:), v2);

    v11(v10);
    sub_10000FAC8(v11);
    (*(v5 + 8))(v10, v2);
  }

  v13 = *(v0 + 144);
  if (v13)
  {
    CFUserNotificationCancel(v13);
    v14 = *(v0 + 144);
    *(v0 + 144) = 0;
  }
}

uint64_t sub_10003AB4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_10000D09C();
  v11 = v10;
  swift_retain_n();
  v12 = v11;
  v13 = sub_100036DDC();
  sub_100040080();
  sub_10005B81C(v14, v15, v16, v17, v18, v19, v13, v12, a8, a9, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, vars0, vars8);
}

void sub_10003AC04()
{
  sub_10000D060();
  v3 = v2;
  v31 = v4;
  v6 = v5;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = sub_10000CBBC(v7);
  v34 = v9;
  v11 = *(v10 + 64);
  __chkstk_darwin(v8);
  sub_10003FFB0();
  v12 = type metadata accessor for DispatchQoS();
  v13 = sub_10000CBBC(v12);
  v32 = v14;
  v33 = v13;
  v16 = *(v15 + 64);
  __chkstk_darwin(v13);
  sub_10000CBDC();
  v19 = v18 - v17;
  v20 = sub_100040164();
  v22 = sub_100013414(v20, v21);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22 - 8);
  sub_100040144();
  sub_10003DE84(v6, v1, &qword_10009A908, &qword_100078DC0);
  v25 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = v31;
  *(v26 + 24) = v3;
  sub_10003DED0(v1, v26 + v25, &qword_10009A908, &qword_100078DC0);
  v35[4] = sub_10003DF1C;
  v35[5] = v26;
  sub_10001ACF4();
  v35[1] = 1107296256;
  sub_10000EE28();
  v35[2] = v27;
  v35[3] = &unk_100090208;
  v28 = _Block_copy(v35);

  static DispatchQoS.unspecified.getter();
  sub_10000D94C();
  sub_10000D128(v29, 255, v30);
  sub_100013414(&unk_100099840, &unk_100077350);
  sub_100028120(&qword_10009A8F0, &unk_100099840, &unk_100077350);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v28);
  (*(v34 + 8))(v0, v7);
  (*(v32 + 8))(v19, v33);

  sub_1000135A0();
}

uint64_t sub_10003AF0C()
{
  sub_10000D09C();
  sub_100036D60();
  sub_100040080();
  sub_10003299C();
}

uint64_t sub_10003AF80()
{
  sub_100036D60();
  sub_1000328D0();
}

void sub_10003AFBC()
{
  sub_10000D600();
  v75 = type metadata accessor for HostDeletionTarget();
  v2 = sub_10000CBBC(v75);
  v84 = v3;
  v5 = *(v4 + 64);
  __chkstk_darwin(v2);
  sub_10000CBDC();
  v79 = v7 - v6;
  v8 = sub_100013414(&qword_1000999E8, &unk_100077D60);
  v9 = sub_10000D368(v8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  sub_10000EDF0();
  v14 = v12 - v13;
  __chkstk_darwin(v15);
  v17 = &v71 - v16;
  v18 = type metadata accessor for UUID();
  v19 = sub_10000CBBC(v18);
  v81 = v20;
  v22 = *(v21 + 64);
  __chkstk_darwin(v19);
  sub_10000EDF0();
  v25 = v23 - v24;
  __chkstk_darwin(v26);
  v28 = &v71 - v27;
  sub_100036E54();
  sub_10001E884();
  v30 = v29;

  if (!v1)
  {
    v74 = v28;
    v76 = v14;
    v77 = v25;
    v83 = 0;
    v72 = v18;
    v78 = v0;
    v31 = sub_10004997C(v30);
    for (i = 0; v31 != i; ++i)
    {
      if ((v30 & 0xC000000000000001) != 0)
      {
        v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (i >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_40;
        }

        v33 = *(v30 + 8 * i + 32);
      }

      v34 = v33;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
        return;
      }

      if (CUPairedPeer.isPairedForAutomation.getter())
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v35 = _swiftEmptyArrayStorage[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }
    }

    v36 = sub_10004997C(_swiftEmptyArrayStorage);
    v37 = 0;
    v82 = _swiftEmptyArrayStorage & 0xC000000000000001;
    v80 = _swiftEmptyArrayStorage;
    v73 = (v81 + 32);
    v38 = v72;
LABEL_14:
    v39 = v76;
    while (1)
    {
      v40 = v84;
      if (v36 == v37)
      {
        break;
      }

      if (v82)
      {
        v41 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v37 >= _swiftEmptyArrayStorage[2])
        {
          goto LABEL_42;
        }

        v41 = _swiftEmptyArrayStorage[v37 + 4];
      }

      v42 = v41;
      if (__OFADD__(v37, 1))
      {
        goto LABEL_41;
      }

      v43 = [v41 identifier];
      if (v43)
      {
        v44 = v43;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v45 = 0;
      }

      else
      {
        v45 = 1;
      }

      sub_1000223E8(v39, v45, 1, v38);
      sub_10003DED0(v39, v17, &qword_1000999E8, &unk_100077D60);
      if (sub_100022484(v17, 1, v38) != 1)
      {
        v46 = *v73;
        (*v73)(v74, v17, v38);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1000542A4(0, v80[2] + 1, 1, v80);
          v80 = v52;
        }

        v48 = v80[2];
        v47 = v80[3];
        if (v48 >= v47 >> 1)
        {
          sub_1000542A4(v47 > 1, v48 + 1, 1, v80);
          v80 = v53;
        }

        v80[2] = (v48 + 1);
        sub_100040058();
        v46((v50 + v49 + *(v51 + 72) * v48), v74, v38);
        ++v37;
        goto LABEL_14;
      }

      sub_100022560(v17, &qword_1000999E8, &unk_100077D60);
      ++v37;
    }

    v54 = 0;
    v55 = v80;
    v82 = v80[2];
    LODWORD(v76) = enum case for HostDeletionTarget.singleHost(_:);
    v56 = (v40 + 104);
    v57 = (v40 + 8);
    v84 = v81 + 8;
    v58 = v75;
    while (1)
    {
      if (v82 == v54)
      {

        goto LABEL_38;
      }

      if (v54 >= v55[2])
      {
        goto LABEL_43;
      }

      sub_100040058();
      v62 = *(v61 + 16);
      v63 = v77;
      v62(v77, v59 + v60 + *(v61 + 72) * v54, v38);
      v64 = v38;
      v65 = v79;
      v62(v79, v63, v64);
      (*v56)(v65, v76, v58);
      v66 = v83;
      sub_10003BB40(v65);
      v83 = v66;
      if (v66)
      {
        break;
      }

      ++v54;
      (*v57)(v65, v58);
      v67 = sub_100040150();
      v68(v67);
      v38 = v64;
      v55 = v80;
    }

    (*v57)(v65, v58);
    v69 = sub_100040150();
    v70(v69);
  }

LABEL_38:
  sub_100016010();
}

uint64_t sub_10003B570(uint64_t a1)
{
  v57 = type metadata accessor for ControlChannelConnection.State();
  v3 = *(v57 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v57);
  v56 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = v1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for ControlChannelConnection();
    sub_10000D128(&unk_10009BE10, 255, &type metadata accessor for ControlChannelConnection);
    Set.Iterator.init(_cocoa:)();
    a1 = v59;
    v6 = v60;
    v7 = v61;
    v8 = v62;
    v9 = v63;
  }

  else
  {
    v10 = -1 << *(a1 + 32);
    v6 = a1 + 56;
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

    v9 = v12 & *(a1 + 56);

    v8 = 0;
  }

  v42 = v7;
  v55 = enum case for ControlChannelConnection.State.preparingPairingSession(_:);
  v13 = (v3 + 88);
  v53 = enum case for ControlChannelConnection.State.upgradeLockdownPairingInProgress(_:);
  v54 = enum case for ControlChannelConnection.State.setUpManualPairingInProgress(_:);
  v51 = enum case for ControlChannelConnection.State.notStarted(_:);
  v52 = enum case for ControlChannelConnection.State.deviceRequestUserPairingConsentInProgress(_:);
  v49 = enum case for ControlChannelConnection.State.handshakeInProgress(_:);
  v50 = enum case for ControlChannelConnection.State.transportStarting(_:);
  v47 = enum case for ControlChannelConnection.State.authenticated(_:);
  v48 = enum case for ControlChannelConnection.State.verifyManualPairingInProgress(_:);
  v45 = enum case for ControlChannelConnection.State.invalidated(_:);
  v46 = enum case for ControlChannelConnection.State.unauthenticated(_:);
  v40 = (v3 + 8);
  v39 = enum case for ControlChannelConnection.State.hostRequestPeerInfoInProgress(_:);
  v41 = (v3 + 96);
  v38 = enum case for ControlChannelConnection.State.deviceAwaitingPairVerify(_:);
  v44 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (a1 < 0)
    {
      v17 = __CocoaSet.Iterator.next()();
      if (!v17 || (v58 = v17, type metadata accessor for ControlChannelConnection(), swift_dynamicCast(), !v64))
      {
LABEL_51:
        sub_1000134CC();
        return v44;
      }

      goto LABEL_17;
    }

    v14 = v8;
    v15 = v9;
    if (!v9)
    {
      break;
    }

LABEL_13:
    v9 = (v15 - 1) & v15;
    v16 = *(*(a1 + 48) + ((v8 << 9) | (8 * __clz(__rbit64(v15)))));

    if (!v16)
    {
      goto LABEL_51;
    }

LABEL_17:
    v18 = v56;
    dispatch thunk of ControlChannelConnection.state.getter();
    v19 = (*v13)(v18, v57);
    if (v19 == v55)
    {
      v25 = v56;
      (*v41)(v56, v57);
      v26 = sub_100013414(&qword_10009A8B0, &qword_100077D40);
      v27 = &v25[*(v26 + 48)];
      v28 = v27[1];
      sub_10000FAC8(*v27);
      sub_10000ECF4(*&v25[*(v26 + 64)], *&v25[*(v26 + 64) + 8]);
      v29 = type metadata accessor for PairingData.Kind();
      (*(*(v29 - 8) + 8))(v25, v29);
LABEL_45:
      v30 = 3;
LABEL_46:

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v33 = v44[2];
        sub_100054418();
        v44 = v34;
      }

      v31 = v44[2];
      if (v31 >= v44[3] >> 1)
      {
        sub_100054418();
        v44 = v35;
      }

      v32 = v44;
      v44[2] = (v31 + 1);
      v32[v31 + 4] = v30;
    }

    else
    {
      if (v19 == v54 || v19 == v53 || v19 == v52)
      {
        (*v40)(v56, v57);
        v30 = 4;
        goto LABEL_46;
      }

      if (v19 == v51 || v19 == v50 || v19 == v49 || v19 == v48)
      {
        goto LABEL_45;
      }

      if (v19 == v47)
      {
        v30 = 5;
        goto LABEL_46;
      }

      if (v19 == v46)
      {
        v30 = 2;
        goto LABEL_46;
      }

      if (v19 != v45)
      {
        if (v19 == v39 || v19 != v38)
        {
          goto LABEL_53;
        }

        goto LABEL_45;
      }
    }
  }

  while (1)
  {
    v8 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v8 >= ((v7 + 64) >> 6))
    {
      goto LABEL_51;
    }

    v15 = *(v6 + 8 * v8);
    ++v14;
    if (v15)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_53:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void sub_10003BB40()
{
  sub_10000D600();
  v110 = v1;
  v111 = v0;
  v109 = v2;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = sub_10000CBBC(v3);
  v103 = v5;
  v104 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v4);
  sub_10000CBDC();
  v101 = v9 - v8;
  sub_10002F608();
  v102 = type metadata accessor for DispatchQoS();
  v10 = sub_10000CBBC(v102);
  v100 = v11;
  v13 = *(v12 + 64);
  __chkstk_darwin(v10);
  sub_10000CBDC();
  v99 = v15 - v14;
  sub_10002F608();
  v16 = type metadata accessor for UUID();
  v17 = sub_10000CBBC(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v17);
  v105 = &v97 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v22);
  v98 = &v97 - v24;
  __chkstk_darwin(v23);
  v26 = &v97 - v25;
  v27 = sub_100013414(&qword_1000999E8, &unk_100077D60);
  v28 = sub_10000D368(v27);
  v30 = *(v29 + 64);
  __chkstk_darwin(v28);
  sub_10000EDF0();
  v106 = (v31 - v32);
  v34 = __chkstk_darwin(v33);
  v36 = &v97 - v35;
  __chkstk_darwin(v34);
  v38 = &v97 - v37;
  v39 = type metadata accessor for HostDeletionTarget();
  v40 = sub_10000CBBC(v39);
  v42 = v41;
  v44 = *(v43 + 64);
  __chkstk_darwin(v40);
  sub_10000CBDC();
  v47 = v46 - v45;
  (*(v42 + 16))(v46 - v45, v109, v39);
  v48 = (*(v42 + 88))(v47, v39);
  if (v48 == enum case for HostDeletionTarget.singleHost(_:))
  {
    (*(v42 + 96))(v47, v39);
    v107 = v19;
    v49 = *(v19 + 32);
    v50 = v47;
    v51 = v16;
    (v49)(v26, v50, v16);
    v52 = v111;
    sub_100036E54();
    v53 = v110;
    sub_1000215B4();
    v108 = v26;
    if (v53)
    {
      v54 = v16;

      v21 = *(v107 + 8);
    }

    else
    {
      sub_10001F1E0();
      v60 = v59;
      v110 = 0;

      v97 = v60;
      v61 = CUPairedPeer.associatedLockdownHostBUID.getter();
      v54 = v16;
      v63 = v107;
      if (v62)
      {
        v64 = v62;
        v109 = *(v52 + 24);
        v65 = v61;
        (*(v107 + 16))(v98, v108, v51);
        v66 = (*(v63 + 80) + 32) & ~*(v63 + 80);
        v67 = swift_allocObject();
        *(v67 + 16) = v65;
        *(v67 + 24) = v64;
        v54 = v51;
        sub_100040068();
        v49();
        v114 = sub_10003DE24;
        v115 = v67;
        v112[0] = _NSConcreteStackBlock;
        v112[1] = 1107296256;
        sub_10000EE28();
        v112[2] = v68;
        v113 = &unk_1000901B8;
        v98 = _Block_copy(v112);
        v69 = v99;
        static DispatchQoS.unspecified.getter();
        sub_10000D94C();
        sub_10000D128(v70, 255, v71);
        v21 = sub_100013414(&unk_100099840, &unk_100077350);
        sub_100028120(&qword_10009A8F0, &unk_100099840, &unk_100077350);
        v72 = v101;
        v73 = v104;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v74 = v98;
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        v63 = v107;
        _Block_release(v74);
        (v103[1].isa)(v72, v73);
        (*(v100 + 8))(v69, v102);
      }

      v75 = static os_log_type_t.default.getter();
      v76 = qword_10009CED0;
      v77 = v63 + 16;
      v104 = *(v63 + 16);
      v104(v105, v108, v54);
      if (os_log_type_enabled(v76, v75))
      {
        sub_10000D054();
        v78 = swift_slowAlloc();
        v103 = v76;
        v79 = v78;
        sub_10000CCCC();
        v80 = swift_slowAlloc();
        LODWORD(v102) = v75;
        v81 = v80;
        v112[0] = v80;
        *v79 = 136315138;
        v82 = UUID.uuidString.getter();
        v109 = v77;
        v84 = v83;
        v85 = sub_1000400FC();
        v21(v85);
        v86 = sub_10000C600(v82, v84, v112);
        v77 = v109;

        *(v79 + 4) = v86;
        _os_log_impl(&_mh_execute_header, v103, v102, "Deleting pairing record for host %s", v79, 0xCu);
        sub_10000CADC(v81);
        sub_100015FBC();

        sub_100015FBC();
      }

      else
      {
        v87 = sub_1000400FC();
        v21(v87);
      }

      v88 = v110;
      v89 = v106;
      v90 = *(v111 + 48);
      v104(v106, v108, v54);
      sub_1000223E8(v89, 0, 1, v54);

      sub_10002012C();
      if (!v88)
      {
        sub_100022560(v89, &qword_1000999E8, &unk_100077D60);

        v91 = sub_1000381EC();
        v92 = *(v91 + 16);
        if (v92)
        {
          v105 = v91;
          v106 = v21;
          v109 = v77;
          v110 = 0;
          v93 = v91 + 32;
          v94 = v108;
          v95 = v104;
          do
          {
            sub_100022260(v93, v112);
            sub_10001355C(v112, v113);
            v95(v36, v94, v54);
            sub_1000223E8(v36, 0, 1, v54);
            sub_100036590();
            sub_100022560(v36, &qword_1000999E8, &unk_100077D60);
            sub_10000CADC(v112);
            v93 += 40;
            --v92;
          }

          while (v92);

          v21 = v106;
        }

        else
        {
        }

        sub_100036DDC();
        v96 = v108;
        sub_10005FA30();

        (v21)(v96, v54);
        goto LABEL_15;
      }

      sub_100022560(v89, &qword_1000999E8, &unk_100077D60);
    }

    (v21)(v108, v54);
LABEL_15:
    sub_100016010();
    return;
  }

  v55 = v110;
  if (v48 == enum case for HostDeletionTarget.all(_:))
  {
    static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)();
    sub_100036E54();
    sub_1000223E8(v38, 1, 1, v16);
    sub_10002012C();
    sub_100022560(v38, &qword_1000999E8, &unk_100077D60);

    v110 = v55;
    if (!v55)
    {
      v56 = sub_1000381EC();
      v57 = *(v56 + 16);
      if (v57)
      {
        v109 = v56;
        v58 = v56 + 32;
        do
        {
          sub_100022260(v58, v112);
          sub_10001355C(v112, v113);
          sub_1000223E8(v36, 1, 1, v16);
          sub_100040068();
          sub_100036590();
          sub_100022560(v36, &qword_1000999E8, &unk_100077D60);
          sub_10000CADC(v112);
          v58 += 40;
          --v57;
        }

        while (v57);
      }

      sub_100036DDC();
      sub_10005F680();
    }

    goto LABEL_15;
  }

  if (v48 == enum case for HostDeletionTarget.nonAutomationHosts(_:))
  {
    sub_10003AFBC();
    goto LABEL_15;
  }

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_10003C590(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = String._bridgeToObjectiveC()();
  v12 = lockdown_unpair_host_by_id();

  if (v12)
  {
    v13 = static os_log_type_t.error.getter();
    v14 = qword_10009CED0;
    (*(v7 + 16))(v10, a3, v6);
    if (os_log_type_enabled(v14, v13))
    {
      v15 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v15 = 136446466;
      *(v15 + 4) = sub_10000C600(a1, a2, &v21);
      *(v15 + 12) = 2082;
      v16 = UUID.uuidString.getter();
      v18 = v17;
      (*(v7 + 8))(v10, v6);
      v19 = sub_10000C600(v16, v18, &v21);

      *(v15 + 14) = v19;
      _os_log_impl(&_mh_execute_header, v14, v13, "Failed to delete lockdown record with host buid %{public}s associated with RemotePairing record %{public}s", v15, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      (*(v7 + 8))(v10, v6);
    }
  }
}

void sub_10003C7C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_10000D600();
  a19 = v21;
  a20 = v22;
  v23 = sub_100013414(&qword_10009A8B8, &qword_100077D48);
  v24 = sub_10000D368(v23);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  v28 = &v60 - v27;
  v29 = type metadata accessor for PairedHostInfo();
  v30 = sub_10000CBBC(v29);
  v32 = v31;
  v34 = *(v33 + 64);
  __chkstk_darwin(v30);
  sub_10000EDF0();
  v37 = (v35 - v36);
  __chkstk_darwin(v38);
  v40 = &v60 - v39;
  sub_100036E54();
  sub_10001E884();
  v42 = v41;
  v43 = v20;

  if (v20)
  {
LABEL_18:
    sub_100016010();
  }

  else
  {
    v61 = v40;
    v44 = sub_10004997C(v42);
    v45 = 0;
    v66 = v42 & 0xC000000000000001;
    v67 = v44;
    v65 = v42 & 0xFFFFFFFFFFFFFF8;
    v63 = v32;
    v46 = (v32 + 32);
    v47 = _swiftEmptyArrayStorage;
    v62 = v37;
    while (1)
    {
      if (v67 == v45)
      {

        goto LABEL_18;
      }

      if (v66)
      {
        v48 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v45 >= *(v65 + 16))
        {
          goto LABEL_20;
        }

        v48 = *(v42 + 8 * v45 + 32);
      }

      v49 = v48;
      if (__OFADD__(v45, 1))
      {
        break;
      }

      a10 = v48;
      sub_10003CAB8(&a10, v28);

      if (sub_100022484(v28, 1, v29) == 1)
      {
        sub_100022560(v28, &qword_10009A8B8, &qword_100077D48);
      }

      else
      {
        v64 = v43;
        v50 = v42;
        v51 = *v46;
        v52 = v61;
        (*v46)(v61, v28, v29);
        v51(v37, v52, v29);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1000542E0(0, v47[2] + 1, 1, v47);
          v47 = v58;
        }

        v54 = v47[2];
        v53 = v47[3];
        if (v54 >= v53 >> 1)
        {
          sub_1000542E0(v53 > 1, v54 + 1, 1, v47);
          v47 = v59;
        }

        v47[2] = (v54 + 1);
        sub_100040058();
        v57 = v47 + v55 + *(v56 + 72) * v54;
        v37 = v62;
        v51(v57, v62, v29);
        v42 = v50;
        v43 = v64;
      }

      ++v45;
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }
}

uint64_t sub_10003CAB8@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100013414(&unk_10009A8C0, &unk_100077D50);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v53 = v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v51 = v47 - v8;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = v47 - v16;
  __chkstk_darwin(v15);
  v19 = v47 - v18;
  v20 = *a1;
  v21 = sub_10003DDC8(*a1, &selRef_name);
  v23 = 0x6E776F6E6B6E55;
  if (v22)
  {
    v23 = v21;
  }

  v52 = v23;
  if (v22)
  {
    v24 = v22;
  }

  else
  {
    v24 = 0xE700000000000000;
  }

  v25 = sub_10003DDC8(v20, &selRef_model);
  v55 = a2;
  if (v26)
  {
    v50 = v25;
    v54 = v26;
    goto LABEL_17;
  }

  v27 = sub_10003DD44(v20);
  if (!v27)
  {
    v59 = 0u;
    v60 = 0u;
    goto LABEL_16;
  }

  v28 = v27;
  v56 = 0x6C65646F6DLL;
  v57 = 0xE500000000000000;
  AnyHashable.init<A>(_:)();
  sub_10004C5C0(v28, &v59);

  sub_10002269C(v58);
  if (!*(&v60 + 1))
  {
LABEL_16:
    sub_100022560(&v59, &qword_100099A00, &qword_100077540);
    v54 = 0;
    v50 = 0;
    goto LABEL_17;
  }

  v29 = swift_dynamicCast();
  v30 = v58[0];
  v31 = v58[1];
  if (!v29)
  {
    v31 = 0;
  }

  v54 = v31;
  if (!v29)
  {
    v30 = 0;
  }

  v50 = v30;
LABEL_17:
  v32 = CUPairedPeer.serialNumber.getter();
  if (v33)
  {
    v49 = v32;
    v34 = v20;
    goto LABEL_26;
  }

  v34 = v20;
  v35 = sub_10003DD44(v20);
  if (!v35)
  {
    v59 = 0u;
    v60 = 0u;
    goto LABEL_25;
  }

  v36 = v35;
  sub_1000118F0(0, &qword_10009A8D0, CUPairedPeer_ptr);
  v56 = static CUPairedPeer.serialNumberInfoKey.getter();
  v57 = v37;
  AnyHashable.init<A>(_:)();
  sub_10004C5C0(v36, &v59);

  sub_10002269C(v58);
  if (!*(&v60 + 1))
  {
LABEL_25:
    sub_100022560(&v59, &qword_100099A00, &qword_100077540);
    v49 = 0;
    goto LABEL_26;
  }

  v38 = swift_dynamicCast();
  v39 = v58[0];
  if (!v38)
  {
    v39 = 0;
  }

  v49 = v39;
LABEL_26:
  v40 = [v34 identifier];
  if (v40)
  {
    v41 = v40;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v42 = *(v10 + 32);
    v48 = v24;
    v42(v19, v17, v9);
    v47[1] = CUPairedPeer.isPairedForAutomation.getter();
    (*(v10 + 16))(v14, v19, v9);
    sub_10006A564(v51);
    CUPairedPeer.initialPairingTime.getter();
    v43 = v55;
    PairedHostInfo.init(name:identifier:lastUsed:initialPairingTime:pairedForAutomation:model:serialNumber:)();
    (*(v10 + 8))(v19, v9);
    v44 = 0;
  }

  else
  {

    static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)();
    v44 = 1;
    v43 = v55;
  }

  v45 = type metadata accessor for PairedHostInfo();
  return sub_1000223E8(v43, v44, 1, v45);
}

uint64_t sub_10003CFD4@<X0>(uint64_t a1@<X8>)
{
  sub_100036D60();
  sub_100032460(a1);
}

uint64_t sub_10003D018()
{
  sub_100037040();
  v1 = v0;
  swift_beginAccess();
  v2 = *(v1 + 24);

  v3 = static os_log_type_t.debug.getter();
  v4 = qword_10009CED0;
  if (sub_100040190(v3))
  {

    sub_10000D054();
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    if ((v2 & 0xC000000000000001) != 0)
    {
      v6 = __CocoaSet.count.getter();
    }

    else
    {
      v6 = *(v2 + 16);
    }

    *(v5 + 4) = v6;

    sub_10000D624(&_mh_execute_header, v7, v3, "Determining USB host trust state across %ld control channels");
    sub_10003FFE0();
  }

  v8 = sub_10003B570(v2);

  v9 = sub_10003D20C(v8);
  v11 = v10;

  v12 = static os_log_type_t.default.getter();
  v13 = v12;
  if (v11)
  {
    os_log(_:dso:log:_:_:)();
    return 1;
  }

  else if (os_log_type_enabled(v4, v12))
  {
    sub_10000D054();
    v14 = swift_slowAlloc();
    sub_10000CCCC();
    v15 = swift_slowAlloc();
    v21 = v15;
    *v14 = 136315138;
    v16 = RPUSBConnectedHostTrustState.description.getter();
    v18 = sub_10000C600(v16, v17, &v21);

    *(v14 + 4) = v18;
    sub_10000D624(&_mh_execute_header, v19, v13, "Overall USB host trust state is %s");
    sub_10000CADC(v15);
    sub_100015FBC();

    sub_10003FFE0();
  }

  return v9;
}

uint64_t sub_10003D20C(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return 0;
  }

  v2 = a1[4];
  v3 = v1 - 1;
  if (v1 != 1)
  {
    v4 = a1 + 5;
    do
    {
      v6 = *v4++;
      v5 = v6;
      if (static RPUSBConnectedHostTrustState.< infix(_:_:)())
      {
        v2 = v5;
      }

      --v3;
    }

    while (v3);
  }

  return v2;
}

uint64_t sub_10003D284(char a1)
{
  sub_100037544();
  if (a1)
  {
    sub_10005875C();
  }

  else
  {
    sub_1000584FC();
  }
}

uint64_t sub_10003D2D0()
{
  v0 = sub_1000381EC();
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = v0 + 32;
    do
    {
      sub_100022260(v2, v6);
      v3 = v7;
      v4 = v8;
      sub_10001355C(v6, v7);
      (*(v4 + 32))(v3, v4);
      sub_10000CADC(v6);
      v2 += 40;
      --v1;
    }

    while (v1);
  }

  sub_100036DDC();
  sub_10005F7D4();
}

void sub_10003D394()
{
  v1 = *(v0 + 16);
  sub_100036518();
  v3[1] = 1107296256;
  v3[2] = sub_1000499CC;
  v3[3] = &unk_100090168;
  v2 = _Block_copy(v3);

  xpc_set_event_stream_handler("com.apple.notifyd.matching", v1, v2);
  _Block_release(v2);
}

uint64_t sub_10003D440(void *a1)
{
  v2 = XPC_EVENT_KEY_NAME.getter();
  if (xpc_dictionary_get_string(a1, v2))
  {
    v4 = String.init(cString:)();
    v5 = v3;
    v6 = v4 == 0xD000000000000025 && 0x800000010007E8A0 == v3;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      static os_log_type_t.default.getter();
      os_log(_:dso:log:_:_:)();
      sub_1000388DC();
      sub_100055F64();
LABEL_18:
    }

    v8 = v4 == 0xD00000000000002FLL && 0x800000010007E8D0 == v5;
    if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      static os_log_type_t.default.getter();
      os_log(_:dso:log:_:_:)();
      sub_100037850();
      sub_100044C50();
LABEL_17:

      sub_100038170();
      sub_100027634();
      goto LABEL_18;
    }

    v9 = v4 == 0xD000000000000036 && 0x800000010007E900 == v5;
    if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      static os_log_type_t.default.getter();
      os_log(_:dso:log:_:_:)();
      sub_100036F94();
      sub_100015560();
      goto LABEL_17;
    }

    v10 = v4 == 0xD00000000000002FLL && 0x800000010007E940 == v5;
    if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      static os_log_type_t.default.getter();
      os_log(_:dso:log:_:_:)();
      sub_100037850();
      sub_100044C50();
      goto LABEL_18;
    }

    v11 = static os_log_type_t.error.getter();
    v12 = qword_10009CED0;
    if (os_log_type_enabled(qword_10009CED0, v11))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v16 = v14;
      *v13 = 136315138;
      v15 = sub_10000C600(v4, v5, &v16);

      *(v13 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v12, v11, "Received unknown notifyd launch event: %s", v13, 0xCu);
      sub_10000CADC(v14);
    }

    else
    {
    }
  }

  else
  {
    static os_log_type_t.error.getter();

    return os_log(_:dso:log:_:_:)();
  }
}

uint64_t sub_10003D834()
{
  sub_1000118F0(0, &qword_100098ED0, OS_os_log_ptr);
  result = OS_os_log.init(subsystem:category:)();
  qword_10009CEE8 = result;
  return result;
}

void sub_10003D8A8()
{
  v1 = *(v0 + 16);
  sub_10000CBD0();
  v2 = swift_allocObject();
  swift_weakInit();
  v5[4] = sub_10003DD34;
  v5[5] = v2;
  sub_100036518();
  v5[1] = 1107296256;
  v5[2] = sub_10003D9C8;
  v5[3] = &unk_100090140;
  v3 = _Block_copy(v5);

  v4 = os_state_add_handler();
  _Block_release(v3);
  *(v0 + 168) = v4;
  *(v0 + 176) = 0;
}

uint64_t sub_10003D96C()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_10003DA18();
  }

  return 0;
}

uint64_t sub_10003D9C8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = v4(a2);

  return v5;
}

uint64_t sub_10003DA18()
{
  v0 = sub_1000381EC();
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = v0 + 32;
    do
    {
      sub_100022260(v2, v6);
      v3 = v7;
      v4 = v8;
      sub_10001355C(v6, v7);
      if (qword_100098EA8 != -1)
      {
        sub_10003FFF0();
        swift_once();
      }

      (*(v4 + 40))(qword_10009CEE8, v3, v4);
      sub_10000CADC(v6);
      v2 += 40;
      --v1;
    }

    while (v1);
  }

  sub_100036DDC();
  if (qword_100098EA8 != -1)
  {
    sub_10003FFF0();
    swift_once();
  }

  sub_1000608D8(qword_10009CEE8);
}

uint64_t sub_10003DB3C()
{
  if ((*(v0 + 176) & 1) == 0)
  {
    v1 = *(v0 + 168);
    os_state_remove_handler();
  }

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 48);

  v5 = *(v0 + 56);

  v6 = *(v0 + 64);

  v7 = *(v0 + 72);

  v8 = *(v0 + 80);

  v9 = *(v0 + 88);

  v10 = *(v0 + 96);

  v11 = *(v0 + 104);

  v12 = *(v0 + 112);

  v13 = *(v0 + 120);

  v14 = *(v0 + 128);
  swift_unknownObjectRelease();
  v15 = *(v0 + 136);

  v16 = *(v0 + 160);
  sub_10000FAC8(*(v0 + 152));
  return v0;
}

uint64_t sub_10003DBF4()
{
  sub_10003DB3C();

  return _swift_deallocClassInstance(v0, 177, 7);
}

uint64_t sub_10003DD44(void *a1)
{
  v1 = [a1 info];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_10003DDC8(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return sub_10000D4B0();
}

void sub_10003DE24()
{
  v1 = type metadata accessor for UUID();
  sub_10000D368(v1);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = v0 + ((*(v2 + 80) + 32) & ~*(v2 + 80));

  sub_10003C590(v3, v4, v5);
}

uint64_t sub_10003DE84(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_100040170(a1, a2, a3, a4);
  sub_10000CC04(v5);
  v7 = *(v6 + 16);
  v8 = sub_10000D4B0();
  v9(v8);
  return v4;
}

uint64_t sub_10003DED0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_100040170(a1, a2, a3, a4);
  sub_10000CC04(v5);
  v7 = *(v6 + 32);
  v8 = sub_10000D4B0();
  v9(v8);
  return v4;
}

uint64_t sub_10003DF1C()
{
  v1 = sub_100013414(&qword_10009A908, &qword_100078DC0);
  sub_10000D368(v1);
  v3 = *(v0 + 24);
  return (*(v0 + 16))(v0 + ((*(v2 + 80) + 32) & ~*(v2 + 80)));
}

void sub_10003DF8C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  sub_1000399B8();
}

uint64_t sub_10003DFD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a4 + 56) = type metadata accessor for LockStateManager();
  *(a4 + 64) = &off_100091068;
  *(a4 + 24) = a2;
  *(a4 + 32) = a3;
  *(a4 + 72) = 0;
  *(a4 + 80) = a1;
  *(a4 + 16) = &_swiftEmptySetSingleton;
  return a4;
}

void *sub_10003E034(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InProcessIRKGenerator();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v20[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for LockStateManager();
  v20[3] = v9;
  v20[4] = &off_100091068;
  v20[0] = a2;
  type metadata accessor for SystemKeychainPairingManager();
  v10 = swift_allocObject();
  v11 = sub_10003EA8C(v20, v9);
  v12 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = (&v20[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14);
  v16 = *v14;
  (*(v5 + 16))(v8, a1, v4);
  v17 = sub_10003E214(v8, v16, v10);
  (*(v5 + 8))(a1, v4);
  sub_10000CADC(v20);
  return v17;
}

void *sub_10003E214(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for InProcessIRKGenerator();
  a3[6] = v6;
  a3[7] = &protocol witness table for InProcessIRKGenerator;
  v7 = sub_10003FEF8(a3 + 3);
  (*(*(v6 - 8) + 32))(v7, a1, v6);
  a3[11] = type metadata accessor for LockStateManager();
  a3[12] = &off_100091068;
  a3[8] = a2;
  a3[2] = &_swiftEmptyArrayStorage;
  a3[13] = 0;
  return a3;
}

void *sub_10003E2C0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v45 = a7;
  v46 = a8;
  v43 = a9;
  v44 = a6;
  v14 = type metadata accessor for UUID();
  v47 = *(v14 - 8);
  v48 = v14;
  v15 = *(v47 + 64);
  __chkstk_darwin(v14);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for LockdownStateService();
  v50[3] = v18;
  v50[4] = &off_10008F8B8;
  v50[0] = a3;
  v19 = type metadata accessor for MetadataService();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  v22 = swift_allocObject();
  v23 = sub_10003EA8C(v50, v18);
  v24 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v23);
  v26 = (&v43 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v27 + 16))(v26);
  v28 = *v26;
  v49[3] = v18;
  v49[4] = &off_10008F8B8;
  v49[0] = v28;
  sub_1000118F0(0, &qword_100098ED0, OS_os_log_ptr);
  v29 = OS_os_log.init(subsystem:category:)();
  v22[19] = 0;
  v22[3] = 0;
  v22[4] = 0;
  v22[2] = v29;
  v30 = OBJC_IVAR____TtC20remotepairingdeviced15MetadataService__deviceInfoIncludingSensitiveKeys;
  v31 = type metadata accessor for PeerDeviceInfo();
  sub_1000223E8(v22 + v30, 1, 1, v31);
  sub_1000223E8(v22 + OBJC_IVAR____TtC20remotepairingdeviced15MetadataService__deviceInfoExcludingSensitiveKeys, 1, 1, v31);
  *(v22 + OBJC_IVAR____TtC20remotepairingdeviced15MetadataService__userAssignedNameDarwinNotificationToken) = -1;
  *(v22 + OBJC_IVAR____TtC20remotepairingdeviced15MetadataService__developerModeStatusDarwinNotificationToken) = -1;
  v22[5] = a1;
  v22[6] = &off_100090B20;
  sub_100022260(v49, (v22 + 7));
  v22[12] = a2;
  v22[13] = a4;
  v32 = v44;
  v33 = v45;
  v22[14] = a5;
  v22[15] = v32;
  v34 = v46;
  v22[16] = v33;
  v22[17] = v34;
  v22[18] = v43;
  v35 = swift_allocObject();
  swift_weakInit();
  v36 = *(a1 + 56);
  v37 = *(a1 + 64);
  *(a1 + 56) = sub_10003EADC;
  *(a1 + 64) = v35;

  v38 = a2;

  sub_10000FAC8(v36);

  v39 = sub_10001355C(v22 + 7, v22[10]);
  v40 = swift_allocObject();
  swift_weakInit();

  v41 = *v39;

  sub_100027E04(sub_10003EAE4, v40, v17);

  (*(v47 + 8))(v17, v48);
  sub_10000CADC(v49);

  sub_10000CADC(v50);
  return v22;
}

uint64_t sub_10003E688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a4 + 88) = type metadata accessor for RemotePairingDeviceService();
  v9 = sub_10000D128(&qword_10009A988, v8, type metadata accessor for RemotePairingDeviceService);
  *(a4 + 16) = &_swiftEmptySetSingleton;
  *(a4 + 24) = 0;
  *(a4 + 32) = 0;
  *(a4 + 40) = 0;
  *(a4 + 48) = 2;
  *(a4 + 96) = v9;
  *(a4 + 104) = a2;
  *(a4 + 56) = a3;
  *(a4 + 64) = a1;
  return a4;
}

uint64_t sub_10003E71C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v24 = a4;
  v25 = a3;
  v23 = a2;
  v9 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v21 = *(v9 - 8);
  v22 = v9;
  v10 = *(v21 + 64);
  __chkstk_darwin(v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for OS_dispatch_queue.Attributes();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v15 = type metadata accessor for DispatchQoS();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v31 = type metadata accessor for RemotePairingDeviceService();
  v32 = sub_10000D128(&qword_10009A980, v17, type metadata accessor for RemotePairingDeviceService);
  *&v30 = a1;
  v28 = type metadata accessor for LockStateManager();
  v29 = &off_100091068;
  *&v27 = a5;
  *(a6 + 16) = xmmword_100077BA0;
  *(a6 + 32) = 0x800000010007EEE0;
  v20[1] = sub_1000118F0(0, &qword_10009A990, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  v26 = &_swiftEmptyArrayStorage;
  sub_10000D128(&qword_100099DB0, 255, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100013414(&qword_10009A960, &unk_100077B40);
  sub_100028120(&qword_100099DB8, &qword_10009A960, &unk_100077B40);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v21 + 104))(v12, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v22);
  *(a6 + 40) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(a6 + 48) = &_swiftEmptySetSingleton;
  *(a6 + 56) = &_swiftEmptyArrayStorage;
  *(a6 + 64) = &_swiftEmptyArrayStorage;
  *(a6 + 72) = 0;
  *(a6 + 74) = 1;
  *(a6 + 208) = 0;
  *(a6 + 216) = 0;
  *(a6 + 184) = 0;
  *(a6 + 192) = 0;
  *(a6 + 200) = 0;
  *(a6 + 224) = Dictionary.init(dictionaryLiteral:)();
  sub_100010E18(&v30, a6 + 144);
  v18 = v24;
  *(a6 + 136) = v23;
  *(a6 + 80) = v18;
  sub_100010E18(&v27, a6 + 88);
  *(a6 + 128) = v25;
  return a6;
}

uint64_t sub_10003EA8C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_10003EAEC(void *a1, uint64_t a2, char a3, uint64_t a4)
{
  v14[3] = type metadata accessor for LockStateManager();
  v14[4] = &off_100091068;
  v14[0] = a2;
  type metadata accessor for UUID();
  type metadata accessor for Tunnel();
  sub_10000D128(&unk_10009BE40, 255, &type metadata accessor for UUID);
  *(a4 + 24) = Dictionary.init(dictionaryLiteral:)();
  *(a4 + 32) = a1;
  *(a4 + 80) = a3;
  sub_100022260(v14, a4 + 40);
  type metadata accessor for RemotePairingDeviceXPCServer();
  v13 = a1;
  v8 = static MachServiceNames.tunnelManagementService.getter();
  v10 = sub_10002F960(v8, v9, *(a4 + 32));
  *(a4 + 16) = v10;
  v11 = *(v10 + 16);
  type metadata accessor for RemotePairingErrorCodingWrapper();
  type metadata accessor for RemoteUnlockDeviceKeyForTunnelRequest();
  type metadata accessor for RemoteUnlockDeviceKeyForTunnelResponse();
  sub_10000D128(&qword_10009AA30, 255, &type metadata accessor for RemoteUnlockDeviceKeyForTunnelRequest);
  sub_10000D128(&qword_10009AA38, 255, &type metadata accessor for RemoteUnlockDeviceKeyForTunnelRequest);
  sub_10000D128(&qword_10009AA40, 255, &type metadata accessor for RemoteUnlockDeviceKeyForTunnelResponse);
  sub_10000D128(&qword_10009AA48, 255, &type metadata accessor for RemoteUnlockDeviceKeyForTunnelResponse);
  sub_10000D128(&qword_10009A138, 255, &type metadata accessor for RemotePairingErrorCodingWrapper);

  dispatch thunk of CodableDispatcher.register<A, B, C>(errorWrapperType:handler:)();

  sub_10000CADC(v14);
  return a4;
}

uint64_t sub_10003EDC0(void *a1, uint64_t a2, char a3)
{
  v6 = type metadata accessor for LockStateManager();
  v16[3] = v6;
  v16[4] = &off_100091068;
  v16[0] = a2;
  type metadata accessor for DeviceTunnelManager();
  v7 = swift_allocObject();
  v8 = sub_10003EA8C(v16, v6);
  v9 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v16[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11);
  v13 = sub_10003EAEC(a1, *v11, a3, v7);
  sub_10000CADC(v16);
  return v13;
}

uint64_t sub_10003EEEC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = type metadata accessor for SystemKeychainPairingManager();
  v15[4] = sub_10000D128(&qword_100099CF0, 255, type metadata accessor for SystemKeychainPairingManager);
  v15[0] = a2;
  *(a4 + 40) = a1;
  if (a3)
  {
    v8 = a1;
    v9 = a3;
  }

  else
  {
    type metadata accessor for RemotePairingDeviceXPCServer();
    v10 = a1;
    v11 = static MachServiceNames.deviceInitiatedPairingService.getter();
    v9 = sub_10002F960(v11, v12, *(a4 + 40));
  }

  *(a4 + 48) = v9;
  sub_100022260(v15, a4 + 56);
  *(a4 + 24) = 0;
  *(a4 + 32) = 0;
  *(a4 + 16) = 0;
  v13 = *(v9 + 16);
  type metadata accessor for RemotePairingErrorCodingWrapper();
  swift_allocObject();
  swift_weakInit();
  type metadata accessor for BrowseForPairableHostRequest();
  type metadata accessor for EmptyResponse();
  sub_10000D128(&qword_10009A968, 255, &type metadata accessor for BrowseForPairableHostRequest);
  sub_10000D128(&unk_10009A970, 255, &type metadata accessor for BrowseForPairableHostRequest);
  sub_10000D128(&qword_10009A128, 255, &type metadata accessor for EmptyResponse);
  sub_10000D128(&qword_10009A130, 255, &type metadata accessor for EmptyResponse);
  sub_10000D128(&qword_10009A138, 255, &type metadata accessor for RemotePairingErrorCodingWrapper);

  dispatch thunk of CodableDispatcher.register<A, B, C>(errorWrapperType:handler:)();

  sub_10000CADC(v15);
  return a4;
}

uint64_t sub_10003F1CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, void, uint64_t))
{
  sub_10000D09C();
  v10 = v9;
  v12 = v11;
  v21 = type metadata accessor for LockStateManager();
  v22 = &off_100091068;
  v20[0] = v7;
  v6(0);
  v13 = swift_allocObject();
  sub_10003EA8C(v20, v21);
  sub_10000CC38();
  v15 = *(v14 + 64);
  __chkstk_darwin(v16);
  sub_10003FFB0();
  (*(v17 + 16))(v6);
  v18 = a6(v12, v10, *v6, v13);
  sub_10000CADC(v20);
  return v18;
}

uint64_t sub_10003F2F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a2;
  v33 = a1;
  v6 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v30 = *(v6 - 8);
  v31 = v6;
  v7 = *(v30 + 64);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for OS_dispatch_queue.Attributes();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v12 = type metadata accessor for DispatchQoS();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v35[3] = type metadata accessor for LockStateManager();
  v35[4] = &off_100091068;
  v35[0] = a3;
  type metadata accessor for SystemXPCPeerConnection();
  sub_10000D128(&unk_10009A0E0, 255, &type metadata accessor for SystemXPCPeerConnection);
  *(a4 + 32) = Dictionary.init(dictionaryLiteral:)();
  *(a4 + 96) = 0;
  v29 = sub_1000118F0(0, &qword_10009A990, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  v34 = _swiftEmptyArrayStorage;
  sub_10000D128(&qword_100099DB0, 255, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100013414(&qword_10009A960, &unk_100077B40);
  sub_100028120(&qword_100099DB8, &qword_10009A960, &unk_100077B40);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v30 + 104))(v9, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v31);
  *(a4 + 104) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v15 = v32;
  v14 = v33;
  *(a4 + 40) = v32;
  *(a4 + 16) = v14;
  *(a4 + 24) = &off_1000900D8;
  type metadata accessor for RemotePairingDeviceXPCServer();
  v29 = v15;

  v16 = static MachServiceNames.pairingManagementService.getter();
  *(a4 + 48) = sub_10002F960(v16, v17, *(a4 + 40));
  sub_100022260(v35, a4 + 56);
  v18 = *(a4 + 16);
  v19 = *(v18 + 152);
  v20 = *(v18 + 160);
  *(v18 + 152) = sub_10003FE48;
  *(v18 + 160) = a4;
  swift_unknownObjectRetain();
  swift_retain_n();
  sub_10000FAC8(v19);
  swift_unknownObjectRelease();

  v21 = *(*(a4 + 48) + 16);
  type metadata accessor for RemotePairingErrorCodingWrapper();
  type metadata accessor for DeletePairedHostRecordRequest();
  v30 = type metadata accessor for EmptyResponse();
  sub_10000D128(&qword_10009A998, 255, &type metadata accessor for DeletePairedHostRecordRequest);
  sub_10000D128(&qword_10009A9A0, 255, &type metadata accessor for DeletePairedHostRecordRequest);
  v32 = sub_10000D128(&qword_10009A128, 255, &type metadata accessor for EmptyResponse);
  v31 = sub_10000D128(&qword_10009A130, 255, &type metadata accessor for EmptyResponse);
  sub_10000D128(&qword_10009A138, 255, &type metadata accessor for RemotePairingErrorCodingWrapper);

  dispatch thunk of CodableDispatcher.register<A, B, C>(errorWrapperType:handler:)();

  v22 = *(*(a4 + 48) + 16);
  type metadata accessor for ListPairedHostRecordRequest();
  type metadata accessor for ListPairedHostRecordResponse();
  sub_10000D128(&qword_10009A9A8, 255, &type metadata accessor for ListPairedHostRecordRequest);
  sub_10000D128(&qword_10009A9B0, 255, &type metadata accessor for ListPairedHostRecordRequest);
  sub_10000D128(&qword_10009A9B8, 255, &type metadata accessor for ListPairedHostRecordResponse);
  sub_10000D128(&qword_10009A9C0, 255, &type metadata accessor for ListPairedHostRecordResponse);

  dispatch thunk of CodableDispatcher.register<A, B, C>(errorWrapperType:handler:)();

  v23 = *(*(a4 + 48) + 16);
  type metadata accessor for CreateWirelessPairingSessionRequest();
  sub_10000D128(&qword_10009A9C8, 255, &type metadata accessor for CreateWirelessPairingSessionRequest);
  sub_10000D128(&qword_10009A9D0, 255, &type metadata accessor for CreateWirelessPairingSessionRequest);

  dispatch thunk of CodableDispatcher.register<A, B, C>(errorWrapperType:handler:)();

  v24 = *(*(a4 + 48) + 16);
  type metadata accessor for FetchNetworkPairingSessionIDRequest();
  type metadata accessor for FetchNetworkPairingSessionIDResponse();
  sub_10000D128(&qword_10009A9D8, 255, &type metadata accessor for FetchNetworkPairingSessionIDRequest);
  sub_10000D128(&qword_10009A9E0, 255, &type metadata accessor for FetchNetworkPairingSessionIDRequest);
  sub_10000D128(&qword_10009A9E8, 255, &type metadata accessor for FetchNetworkPairingSessionIDResponse);
  sub_10000D128(&qword_10009A9F0, 255, &type metadata accessor for FetchNetworkPairingSessionIDResponse);

  dispatch thunk of CodableDispatcher.register<A, B, C>(errorWrapperType:handler:)();

  v25 = *(*(a4 + 48) + 16);
  type metadata accessor for QueryUSBConnectedHostTrustStateRequest();
  type metadata accessor for RPUSBConnectedHostTrustState(0);
  sub_10000D128(&qword_10009A9F8, 255, &type metadata accessor for QueryUSBConnectedHostTrustStateRequest);
  sub_10000D128(&qword_10009AA00, 255, &type metadata accessor for QueryUSBConnectedHostTrustStateRequest);
  sub_10000D128(&qword_10009AA08, 255, type metadata accessor for RPUSBConnectedHostTrustState);
  sub_10000D128(&qword_10009AA10, 255, type metadata accessor for RPUSBConnectedHostTrustState);

  dispatch thunk of CodableDispatcher.register<A, B, C>(errorWrapperType:handler:)();

  v26 = *(*(a4 + 48) + 16);
  type metadata accessor for AllowPromptlessPairingWithHostRequest();
  sub_10000D128(&qword_10009AA18, 255, &type metadata accessor for AllowPromptlessPairingWithHostRequest);
  sub_10000D128(&unk_10009AA20, 255, &type metadata accessor for AllowPromptlessPairingWithHostRequest);

  dispatch thunk of CodableDispatcher.register<A, B, C>(errorWrapperType:handler:)();

  sub_10000CADC(v35);
  return a4;
}

uint64_t *sub_10003FEF8(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_1000400A4()
{

  return OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
}

uint64_t sub_1000400C8(uint64_t a1, ...)
{
  va_start(va, a1);

  return sub_10000C600(v2, v1, va);
}

uint64_t sub_1000400E4(uint64_t a1)
{

  return sub_100022560(a1, v2, v1);
}

uint64_t sub_100040170(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_100013414(a3, a4);
}

BOOL sub_100040190(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_1000401A8(uint64_t a1, char a2)
{
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return v2;
}

void sub_1000401BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + 32);
  if (*(v3 + 40) == 1)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = a2;
    *(v7 + 24) = a3;
    sub_10000D2AC();
    v11 = 1107296256;
    v12 = sub_10000DC24;
    v13 = &unk_100090450;
    v8 = _Block_copy(&v10);

    nw_listener_set_new_connection_group_handler(v6, v8);
  }

  else
  {
    v9 = swift_allocObject();
    *(v9 + 16) = a2;
    *(v9 + 24) = a3;
    sub_10000D2AC();
    v11 = 1107296256;
    v12 = sub_10000DC24;
    v13 = &unk_100090400;
    v8 = _Block_copy(&v10);

    nw_listener_set_new_connection_handler(v6, v8);
  }

  _Block_release(v8);
}

void sub_10004030C(NSObject *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v4 + 32);
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = a2;
  v10[4] = a3;
  v10[5] = v4;
  sub_10000D2AC();
  v12[1] = 1107296256;
  v12[2] = sub_100040988;
  v12[3] = &unk_1000903B0;
  v11 = _Block_copy(v12);

  nw_listener_set_state_changed_handler(v8, v11);
  _Block_release(v11);
  nw_listener_set_queue(v8, a1);
  nw_listener_start(v8);
}

NSObject *sub_100040420(int a1, uint64_t a2, uint64_t a3, void (*a4)(unint64_t), uint64_t a5, uint64_t a6)
{
  v36[0] = a5;
  v10 = type metadata accessor for POSIXError();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for RemotePairingError();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v18 = result;
    if (a1 == 4)
    {
      static os_log_type_t.default.getter();
      sub_100013414(&qword_1000999F0, &unk_100077530);
      v22 = a4;
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_100077360;
      v37 = v18;
      swift_unknownObjectRetain();
      sub_100013414(&unk_10009AB10, &unk_100077E38);
      v24 = String.init<A>(describing:)();
      v26 = v25;
      *(v23 + 56) = &type metadata for String;
      *(v23 + 64) = sub_100022420();
      *(v23 + 32) = v24;
      *(v23 + 40) = v26;
      os_log(_:dso:log:_:_:)();

      LODWORD(v37) = 89;
      sub_10004FD70(_swiftEmptyArrayStorage);
      sub_100040A8C(&unk_10009AB20, &type metadata accessor for POSIXError);
      _BridgedStoredNSError.init(_:userInfo:)();
      v27 = POSIXError._nsError.getter();
      (*(v11 + 8))(v14, v10);
      v22(v27 | 0x8000000000000000);

      return swift_unknownObjectRelease();
    }

    if (a1 != 3)
    {
      if (a1 == 2)
      {
        port = nw_listener_get_port(result);
        static os_log_type_t.default.getter();
        sub_100013414(&qword_1000999F0, &unk_100077530);
        v20 = swift_allocObject();
        *(v20 + 16) = xmmword_100077360;
        *(v20 + 56) = &type metadata for UInt16;
        *(v20 + 64) = &protocol witness table for UInt16;
        *(v20 + 32) = port;
        os_log(_:dso:log:_:_:)();

        a4(port);
      }

      return swift_unknownObjectRelease();
    }

    if (a2)
    {
      swift_getObjectType();
      v21 = sub_10004F6F4();
    }

    else
    {
      sub_100040A8C(&unk_10009A0D0, &type metadata accessor for RemotePairingError);
      static Error<>.unknown.getter();
      sub_100040A8C(&qword_100099850, &type metadata accessor for RemotePairingError);
      v21 = swift_allocError();
      Error<>.init(_:_:)();
    }

    v28 = static os_log_type_t.error.getter();
    v29 = qword_10009CED0;
    if (os_log_type_enabled(qword_10009CED0, v28))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v36[1] = a2;
      v37 = v31;
      *v30 = 136446210;
      swift_unknownObjectRetain();
      sub_100013414(&unk_10009B750, qword_100077E48);
      v32 = String.init<A>(describing:)();
      v34 = a4;
      v35 = sub_10000C600(v32, v33, &v37);

      *(v30 + 4) = v35;
      a4 = v34;
      _os_log_impl(&_mh_execute_header, v29, v28, "Server listener failed with error: %{public}s", v30, 0xCu);
      sub_10000CADC(v31);
    }

    nw_listener_cancel(*(a6 + 32));
    swift_errorRetain();
    a4(v21 | 0x8000000000000000);
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100040988(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  swift_unknownObjectRetain();
  v6(a2, a3);

  return swift_unknownObjectRelease();
}

void *sub_1000409F8()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[3];
  swift_unknownObjectRelease();
  v3 = v0[4];
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_100040A28()
{
  sub_1000409F8();

  return _swift_deallocClassInstance(v0, 41, 7);
}

uint64_t sub_100040A8C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100040AD4(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(a1, 0);
}

uint64_t sub_100040B00(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(a1, 1);
}

nw_path_t sub_100040B38()
{
  result = nw_connection_copy_current_path(*(v0 + 32));
  if (result)
  {
    if (nw_path_copy_interface())
    {
      swift_unknownObjectRetain();
      subtype = nw_interface_get_subtype();
      swift_unknownObjectRelease_n();
      swift_unknownObjectRelease();
      return (subtype == 1002);
    }

    else
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100040BB0()
{
  v0 = type metadata accessor for AtomicCounter();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = AtomicCounter.init()();
  qword_10009AB30 = result;
  return result;
}

double sub_100040BF0@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_100040C00(uint64_t a1)
{
  v2 = v1;
  *(v1 + 40) = 512;
  *(v1 + 32) = a1;
  v3 = qword_100098EB0;
  swift_unknownObjectRetain();
  if (v3 != -1)
  {
    swift_once();
  }

  dispatch thunk of AtomicCounter.next()();
  v4._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v4);
  swift_unknownObjectRelease();

  *(v2 + 16) = 762340212;
  *(v2 + 24) = 0xE400000000000000;
  return v2;
}

void sub_100040CD4(NSObject *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v4 + 32);
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = a2;
  v10[4] = a3;
  v12[4] = sub_100041C10;
  v12[5] = v10;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_100050144;
  v12[3] = &unk_1000904C8;
  v11 = _Block_copy(v12);

  nw_connection_set_state_changed_handler(v8, v11);
  _Block_release(v11);
  nw_connection_set_queue(v8, a1);
  nw_connection_start(v8);
}

uint64_t sub_100040DFC(int a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *), uint64_t a5)
{
  v72 = a5;
  v73 = a4;
  v7 = type metadata accessor for RemotePairingError();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for ControlChannelTransportEvent();
  v11 = *(v74 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v74);
  v14 = (v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v16 = result;
    v70[1] = v10;
    v70[2] = v7;
    v17 = static os_log_type_t.default.getter();
    v18 = qword_10009CED0;
    if (os_log_type_enabled(qword_10009CED0, v17))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v71 = v11;
      v76 = v20;
      *v19 = 136446466;
      v21 = v18;
      v22 = v14;
      v23 = v16;
      v25 = *(v16 + 16);
      v24 = *(v16 + 24);

      v26 = sub_10000C600(v25, v24, &v76);

      *(v19 + 4) = v26;
      *(v19 + 12) = 2082;
      LODWORD(v75) = a1;
      type metadata accessor for nw_connection_state_t(0);
      v27 = String.init<A>(describing:)();
      v29 = sub_10000C600(v27, v28, &v76);
      v16 = v23;
      v14 = v22;
      v18 = v21;

      *(v19 + 14) = v29;
      _os_log_impl(&_mh_execute_header, v21, v17, "%{public}s: Connection state changed to %{public}s", v19, 0x16u);
      swift_arrayDestroy();
      v11 = v71;
    }

    if (a1 == 1)
    {
      v47 = v18;
      if (a2)
      {
        swift_getObjectType();
        v48 = sub_10004F6F4();
      }

      else
      {
        sub_100041C1C(&unk_10009A0D0, 255, &type metadata accessor for RemotePairingError);
        static Error<>.networkingError.getter();
        sub_100041C1C(&qword_100099850, 255, &type metadata accessor for RemotePairingError);
        v48 = swift_allocError();
        Error<>.init(_:_:)();
      }

      v60 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v18, v60))
      {
        v61 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        *v61 = 136446466;
        v71 = v11;
        v70[0] = v14;
        v62 = v16;
        v63 = *(v16 + 16);
        v64 = *(v16 + 24);

        v65 = sub_10000C600(v63, v64, &v76);

        *(v61 + 4) = v65;
        *(v61 + 12) = 2082;
        v75 = v48;
        swift_errorRetain();
        sub_100013414(&unk_10009A930, &unk_100077080);
        v66 = String.init<A>(describing:)();
        v68 = sub_10000C600(v66, v67, &v76);
        v11 = v71;

        *(v61 + 14) = v68;
        v16 = v62;
        v14 = v70[0];
        _os_log_impl(&_mh_execute_header, v47, v60, "%{public}s: Connection failed with error %{public}s", v61, 0x16u);
        swift_arrayDestroy();
      }

      *v14 = v48;
      v69 = v74;
      (*(v11 + 104))(v14, enum case for ControlChannelTransportEvent.error(_:), v74);
      swift_errorRetain();
      v73(v14);
      (*(v11 + 8))(v14, v69);
      nw_connection_cancel(*(v16 + 32));
    }

    else if (a1 == 4)
    {
      v45 = v18;
      if (a2)
      {
        swift_getObjectType();
        v46 = sub_10004F6F4();
      }

      else
      {
        sub_100041C1C(&unk_10009A0D0, 255, &type metadata accessor for RemotePairingError);
        static Error<>.networkingError.getter();
        sub_100041C1C(&qword_100099850, 255, &type metadata accessor for RemotePairingError);
        v46 = swift_allocError();
        Error<>.init(_:_:)();
      }

      v51 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v18, v51))
      {
        v52 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        *v52 = 136446466;
        v71 = v11;
        v70[0] = v14;
        v53 = *(v16 + 16);
        v54 = *(v16 + 24);

        v55 = sub_10000C600(v53, v54, &v76);

        *(v52 + 4) = v55;
        *(v52 + 12) = 2082;
        v75 = v46;
        swift_errorRetain();
        sub_100013414(&unk_10009A930, &unk_100077080);
        v56 = String.init<A>(describing:)();
        v58 = sub_10000C600(v56, v57, &v76);
        v11 = v71;

        *(v52 + 14) = v58;
        v14 = v70[0];
        _os_log_impl(&_mh_execute_header, v45, v51, "%{public}s: Connection failed with error %{public}s", v52, 0x16u);
        swift_arrayDestroy();
      }

      *v14 = v46;
      v59 = v74;
      (*(v11 + 104))(v14, enum case for ControlChannelTransportEvent.error(_:), v74);
      swift_errorRetain();
      v73(v14);

      return (*(v11 + 8))(v14, v59);
    }

    else
    {
      if (a1 == 3)
      {
        v30 = v18;
        v31 = *(v16 + 32);
        swift_getObjectType();
        swift_unknownObjectRetain();
        v32 = sub_10004F940();
        swift_unknownObjectRelease();
        if (v32)
        {
          v33 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v30, v33))
          {
            v34 = swift_slowAlloc();
            v76 = swift_slowAlloc();
            *v34 = 136446466;
            v35 = v11;
            v70[0] = v14;
            v36 = v16;
            v37 = *(v16 + 16);
            v38 = *(v16 + 24);

            v39 = sub_10000C600(v37, v38, &v76);

            *(v34 + 4) = v39;
            *(v34 + 12) = 2082;
            v75 = *(v36 + 32);
            swift_unknownObjectRetain();
            sub_100013414(&qword_10009ACC8, &unk_100077FB0);
            v40 = String.init<A>(describing:)();
            v42 = sub_10000C600(v40, v41, &v76);
            v11 = v35;

            *(v34 + 14) = v42;
            v16 = v36;
            v14 = v70[0];
            _os_log_impl(&_mh_execute_header, v30, v33, "%{public}s: Rejecting control channel connection originating from local machine: %{public}s", v34, 0x16u);
            swift_arrayDestroy();
          }

          sub_100041C1C(&unk_10009A0D0, 255, &type metadata accessor for RemotePairingError);
          static Error<>.networkingError.getter();
          sub_100041C1C(&qword_100099850, 255, &type metadata accessor for RemotePairingError);
          v43 = swift_allocError();
          Error<>.init(_:_:)();
          *v14 = v43;
          v44 = v74;
          (*(v11 + 104))(v14, enum case for ControlChannelTransportEvent.error(_:), v74);
          v73(v14);
          (*(v11 + 8))(v14, v44);
          nw_connection_cancel(*(v16 + 32));
        }

        else
        {
          v49 = v74;
          (*(v11 + 104))(v14, enum case for ControlChannelTransportEvent.transportStarted(_:), v74);
          v73(v14);
          (*(v11 + 8))(v14, v49);
          type metadata accessor for NWObjcConnectionControlChannelTransport();
          sub_100041C1C(&qword_10009ACC0, v50, type metadata accessor for NWObjcConnectionControlChannelTransport);
          JSONDataBasedControlChannelTransport.startReceivingMessages(usingEventHandler:)();
        }
      }
    }
  }

  return result;
}

uint64_t sub_1000419EC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_100041A14()
{
  sub_1000419EC();

  return _swift_deallocClassInstance(v0, 42, 7);
}

uint64_t sub_100041A74()
{
  v1 = *(*v0 + 16);
  v2 = *(*v0 + 24);

  return v1;
}

uint64_t sub_100041AD8()
{
  v1 = *v0;
  swift_getWitnessTable();
  return JSONDataBasedControlChannelTransport.send(message:invokingCompletionHandlerOn:completion:)();
}

uint64_t sub_100041C1C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100041C64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  *(v3 + 16) = 0;
  *(v3 + 24) = a1;

  dispatch thunk of XPCConnection.withUnsafeUnderlyingConnection<A>(_:)();
  _StringGuts.grow(_:)(65);
  v7._object = 0x800000010007F450;
  v7._countAndFlagsBits = 0xD00000000000003FLL;
  String.append(_:)(v7);
  v8._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v8);

  String.utf8CString.getter();

  v9 = os_transaction_create();

  if (v9)
  {

    v4[4] = v9;
    v4[5] = a2;
    v4[6] = a3;
    return v4;
  }

  else
  {
    __break(1u);

    v11 = v4[3];

    type metadata accessor for PairableHostsBrowseRegistration();
    result = swift_deallocPartialClassInstance();
    __break(1u);
  }

  return result;
}

uint64_t sub_100041DCC()
{
  v1 = v0;
  *(v0 + 16) = 1;
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v2();
  v4 = *(v1 + 24);
  return dispatch thunk of XPCConnection.cancel()();
}

uint64_t sub_100041E08()
{
  v1 = type metadata accessor for DeviceServiceEvent();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v5 = __chkstk_darwin(v4);
  __chkstk_darwin(v5);
  v7 = &v13 - v6;
  sub_10002A3F0();
  (*(v2 + 104))(v7, enum case for DeviceServiceEvent.pairableHostFound(_:), v1);
  v8 = *(v0 + 24);
  sub_100042494(&unk_10009ADD0, 255, &type metadata accessor for DeviceServiceEvent);
  sub_100042494(&unk_10009A0F0, 255, &type metadata accessor for DeviceServiceEvent);
  sub_10000D288();
  XPCConnection.send<A>(value:)();
  v9 = *(v2 + 8);
  v10 = sub_10000D288();
  return v11(v10);
}

void *sub_1000421A8()
{
  v1 = v0[3];

  v2 = v0[4];
  swift_unknownObjectRelease();
  v3 = v0[6];

  return v0;
}

uint64_t sub_1000421D8()
{
  sub_1000421A8();

  return _swift_deallocClassInstance(v0, 56, 7);
}

Swift::Int sub_100042230()
{
  Hasher.init(_seed:)();
  type metadata accessor for PairableHostsBrowseRegistration();
  sub_100042494(&unk_10009BF30, v0, type metadata accessor for PairableHostsBrowseRegistration);
  HashableByObjectIdentity.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000422D8()
{
  v1 = *v0;
  swift_getWitnessTable();
  return HashableByObjectIdentity.hash(into:)();
}

Swift::Int sub_100042330()
{
  Hasher.init(_seed:)();
  v1 = *v0;
  swift_getWitnessTable();
  HashableByObjectIdentity.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100042398(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getWitnessTable();

  return static HashableByObjectIdentity.== infix(_:_:)();
}

uint64_t sub_100042494(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void (*sub_1000424DC(void (*result)(char *__return_ptr, uint64_t *, char *), uint64_t a2, uint64_t a3, unint64_t a4))(char *__return_ptr, uint64_t *, char *)
{
  v4 = result;
  switch(a4 >> 62)
  {
    case 1uLL:
      v7 = a3 >> 32;
      if (a3 >> 32 >= a3)
      {
        v6 = a3;
        goto LABEL_9;
      }

      __break(1u);
      return result;
    case 2uLL:
      v6 = *(a3 + 16);
      v7 = *(a3 + 24);
LABEL_9:
      v8 = sub_1000495D0(v6, v7, v4);
      return (v8 & 1);
    case 3uLL:
      a3 = 0;
      v5 = 0;
      goto LABEL_5;
    default:
      v5 = a4 & 0xFFFFFFFFFFFFFFLL;
LABEL_5:
      v8 = sub_10004953C(result, a2, a3, v5);
      return (v8 & 1);
  }
}

uint64_t sub_100042584()
{
  v1 = v0;
  v2 = static os_log_type_t.default.getter();
  v3 = qword_10009CED0;
  result = os_log_type_enabled(qword_10009CED0, v2);
  if (result)
  {

    v5 = swift_slowAlloc();
    *v5 = 134217984;
    swift_beginAccess();
    v6 = *(v1 + 48);
    if ((v6 & 0xC000000000000001) != 0)
    {
      if (v6 < 0)
      {
        v7 = *(v1 + 48);
      }

      v8 = *(v1 + 48);

      v9 = __CocoaSet.count.getter();
    }

    else
    {
      v9 = *(v6 + 16);
    }

    *(v5 + 4) = v9;

    _os_log_impl(&_mh_execute_header, v3, v2, "TCP connected peers updated. Total count: %ld", v5, 0xCu);
  }

  return result;
}

uint64_t sub_100042690()
{
  sub_10000D488();
  v1 = *(v0 + 48);
}

uint64_t sub_1000426C0(uint64_t result)
{
  v2 = *(result + 16);
  if (*(*(v1 + 224) + 16))
  {
    if (!v2)
    {
      return sub_100046B58();
    }
  }

  else if (v2)
  {
    return sub_100046DB8();
  }

  return result;
}

uint64_t sub_1000426E4(uint64_t a1)
{
  v2 = *(v1 + 224);
  *(v1 + 224) = a1;
  sub_1000426C0(v2);
}

NSObject *sub_100042724()
{
  v3[4] = sub_1000427E0;
  v3[5] = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 1107296256;
  v3[2] = sub_1000499CC;
  v3[3] = &unk_100090A48;
  v0 = _Block_copy(v3);
  v1 = create_nw_parameters_for_tcp(v0);
  _Block_release(v0);
  nw_parameters_prohibit_interface_type(v1, nw_interface_type_cellular);
  nw_parameters_prohibit_interface_type(v1, nw_interface_type_loopback);
  return v1;
}

void sub_1000427E0(NSObject *a1)
{
  nw_tcp_options_set_connection_timeout(a1, 0xAu);
  nw_tcp_options_set_retransmit_connection_drop_time(a1, 0x14u);
  nw_tcp_options_set_enable_keepalive(a1, 1);
  nw_tcp_options_set_keepalive_interval(a1, 0xAu);

  nw_tcp_options_set_keepalive_idle_time(a1, 0x96u);
}

void sub_100042844()
{
  sub_100049A9C();
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = sub_10000CBBC(v2);
  v65 = v4;
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  sub_10000CBDC();
  v9 = v8 - v7;
  v10 = type metadata accessor for DispatchQoS();
  v11 = sub_10000CBBC(v10);
  v63 = v12;
  v14 = *(v13 + 64);
  __chkstk_darwin(v11);
  sub_10000CBDC();
  sub_10001ADE0();
  v15 = *(v0 + 80);
  OS_dispatch_queue.assertOnQueueHierarchy()();
  sub_10000CBD0();
  v16 = swift_allocObject();
  v17 = v0;
  swift_weakInit();
  v71 = sub_100049894;
  v72 = v16;
  v68[0] = _NSConcreteStackBlock;
  v68[1] = 1107296256;
  v69 = sub_1000499CC;
  v70 = &unk_100090930;
  v18 = _Block_copy(v68);

  xpc_activity_register("com.apple.dt.remotepairing.updatebonjour", XPC_ACTIVITY_CHECK_IN, v18);
  _Block_release(v18);
  v71 = nullsub_1;
  v72 = 0;
  v68[0] = _NSConcreteStackBlock;
  sub_1000499D4();
  v69 = v19;
  v70 = &unk_100090958;
  v20 = _Block_copy(v68);
  xpc_set_event_stream_handler("com.apple.bonjour.registration", v15, v20);
  _Block_release(v20);
  v71 = sub_100043194;
  v72 = 0;
  v68[0] = _NSConcreteStackBlock;
  sub_1000499D4();
  v69 = v21;
  v70 = &unk_100090980;
  v22 = _Block_copy(v68);
  xpc_set_event_stream_handler("com.apple.bluetooth.discovery", v15, v22);
  _Block_release(v22);
  v23 = sub_100049A40();
  v67 = 0;
  v24 = launch_activate_socket("TCPControlChannelSocket", v23, &v67);
  if (v24)
  {
    v25 = v24;
    v26 = static os_log_type_t.error.getter();
    v27 = qword_10009CED0;
    if (sub_100040190(v26))
    {
      v28 = sub_100049A40();
      *v28 = 67109120;
      *(v28 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v27, v26, "NetworkControlChannelService: failed to fetch sockets from launchd. Received result %d", v28, 8u);
      sub_100049A00();
    }
  }

  else
  {
    v59 = v10;
    v60 = v9;
    v66 = v2;
    v55 = *v23;
    if (v67)
    {
      v57 = (v65 + 8);
      v56 = (v63 + 8);
      v29 = 4 * v67;
      v30 = v55;
      v58 = v17;
      do
      {
        v31 = *v30;
        if (socket_deny_cellular(*v30))
        {
          sub_1000118F0(0, &qword_100099830, OS_dispatch_source_ptr);
          v32 = static OS_dispatch_source.makeReadSource(fileDescriptor:queue:)();
          ObjectType = swift_getObjectType();
          sub_10000CBD0();
          v34 = swift_allocObject();
          swift_weakInit();
          v35 = swift_allocObject();
          *(v35 + 16) = v34;
          *(v35 + 24) = v32;
          v64 = v31;
          *(v35 + 32) = v31;
          sub_10000CC48(v35);
          v69 = v36;
          v70 = &unk_1000909D0;
          v37 = _Block_copy(v68);

          swift_unknownObjectRetain();
          j_j___s8Dispatch0A3QoSV11unspecifiedACvgZ(ObjectType);
          sub_10001AC88(ObjectType);
          sub_100049A70();
          OS_dispatch_source.setEventHandler(qos:flags:handler:)();
          _Block_release(v37);
          v62 = *v57;
          (*v57)(v60, v66);
          v61 = *v56;
          (*v56)(v1, v59);

          sub_10000CBD0();
          v38 = swift_allocObject();
          *(v38 + 16) = v32;
          sub_10000CC48(v38);
          v69 = v39;
          v70 = &unk_100090A20;
          v40 = _Block_copy(v68);
          swift_unknownObjectRetain();
          j_j___s8Dispatch0A3QoSV11unspecifiedACvgZ(ObjectType);
          sub_10001AC88(ObjectType);
          sub_100049A70();
          OS_dispatch_source.setCancelHandler(qos:flags:handler:)();
          _Block_release(v40);
          v62(v60, v66);
          v61(v1, v59);

          OS_dispatch_source.resume()();
          v41 = *(v58 + 56);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v17 = v58;
          *(v58 + 56) = v41;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v47 = *(v41 + 16);
            sub_100054854();
            v41 = v48;
            *(v58 + 56) = v48;
          }

          v43 = *(v41 + 16);
          if (v43 >= *(v41 + 24) >> 1)
          {
            sub_100054854();
            v41 = v49;
          }

          *(v41 + 16) = v43 + 1;
          *(v41 + 4 * v43 + 32) = v64;
          *(v58 + 56) = v41;
          swift_beginAccess();
          swift_unknownObjectRetain();
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((*(v58 + 64) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v58 + 64) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          swift_endAccess();
          swift_unknownObjectRelease();
        }

        else
        {
          v44 = static os_log_type_t.error.getter();
          v45 = qword_10009CED0;
          if (sub_10000CD2C(v44))
          {
            v46 = sub_100049A40();
            *v46 = 67109120;
            *(v46 + 4) = v31;
            _os_log_impl(&_mh_execute_header, v45, v44, "NetworkControlChannelService: Failed to set restrictions on socket %d", v46, 8u);
            sub_10000D8D4();
          }
        }

        ++v30;
        v29 -= 4;
      }

      while (v29);
    }

    v50 = *(v17 + 56);
    if (*(v50 + 16))
    {
      v51 = sub_100048C44(*(v50 + 32));
      *(v17 + 72) = v51;
      *(v17 + 74) = BYTE2(v51) & 1;
    }

    v52 = *(v17 + 136);
    sub_10000CBD0();
    v53 = swift_allocObject();
    swift_weakInit();

    sub_100020070(sub_10004989C, v53);

    v54 = *sub_10001355C((v17 + 88), *(v17 + 112));

    sub_1000552F4();
    sub_10000D8D4();
  }

  sub_10000D8D4();
  sub_100049A24();
}

void sub_10004302C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + 80);

    __chkstk_darwin(v2);
    sub_100013414(&unk_10009A940, &qword_100077D98);
    OS_dispatch_queue.sync<A>(execute:)();
  }
}

uint64_t sub_100043110@<X0>(_xpc_activity_s *a1@<X1>, BOOL *a2@<X8>)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v5 = result;
  if (result)
  {
    sub_100044B94(a1);
  }

  *a2 = v5 == 0;
  return result;
}

uint64_t sub_100043194()
{
  static os_log_type_t.info.getter();

  return os_log(_:dso:log:_:_:)();
}

uint64_t sub_1000431E4(uint64_t a1, uint64_t a2, int a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100043750(result, a3);
  }

  return result;
}

uint64_t sub_100043244()
{
  v0 = static os_log_type_t.error.getter();
  v1 = qword_10009CED0;
  result = os_log_type_enabled(qword_10009CED0, v0);
  if (result)
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v8 = v4;
    *v3 = 136315138;
    swift_unknownObjectRetain();
    sub_100013414(&qword_10009B118, &unk_1000781E0);
    v5 = String.init<A>(describing:)();
    v7 = sub_10000C600(v5, v6, &v8);

    *(v3 + 4) = v7;
    _os_log_impl(&_mh_execute_header, v1, v0, "NetworkControlChannelService: listener source %s cancelled", v3, 0xCu);
    sub_10000CADC(v4);
  }

  return result;
}

uint64_t sub_10004335C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100044C50();
    sub_100045C80();
  }

  return result;
}

void sub_1000433E0()
{
  sub_10000D060();
  v2 = v1;
  v36 = type metadata accessor for ControlChannelConnection.InvalidationReason();
  v3 = sub_10000CBBC(v36);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  sub_10000CBDC();
  v35 = v9 - v8;
  if ((*(v1 + 216) & 1) == 0)
  {
    *(v1 + 216) = 1;
    sub_10000D488();
    v11 = *(v1 + 64);
    v12 = sub_100049430(v11);
    if (v12)
    {
      v13 = v12;
      if (v12 < 1)
      {
LABEL_32:
        __break(1u);
        return;
      }

      v0 = v11 & 0xC000000000000001;

      v14 = 0;
      do
      {
        if (v0)
        {
          v1 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v1 = *(v11 + 8 * v14 + 32);
          swift_unknownObjectRetain();
        }

        ++v14;
        swift_getObjectType();
        OS_dispatch_source.cancel()();
        swift_unknownObjectRelease();
      }

      while (v13 != v14);
    }

    sub_10000D488();
    v15 = *(v2 + 48);
    if ((v15 & 0xC000000000000001) != 0)
    {
      if (v15 < 0)
      {
        v1 = v15;
      }

      else
      {
        v1 = v15 & 0xFFFFFFFFFFFFFF8;
      }

      __CocoaSet.makeIterator()();
      sub_10000EB18();
      type metadata accessor for ControlChannelConnection();
      sub_1000499E8();
      sub_10000D170(v16, v17);
      sub_1000228C0();
      Set.Iterator.init(_cocoa:)();
      v15 = v38;
      v18 = v39;
      v0 = v40;
      v19 = v41;
      v20 = v42;
    }

    else
    {
      v21 = -1 << *(v15 + 32);
      v18 = v15 + 56;
      v22 = *(v15 + 56);
      sub_100049A58();
      v20 = v23 & v24;

      v19 = 0;
    }

    v25 = (v0 + 64) >> 6;
    v34 = enum case for ControlChannelConnection.InvalidationReason.serviceShutdown(_:);
    v26 = (v5 + 104);
    v27 = (v5 + 8);
    if (v15 < 0)
    {
      goto LABEL_26;
    }

    while (1)
    {
      v28 = v19;
      v29 = v20;
      v30 = v19;
      if (!v20)
      {
        break;
      }

LABEL_24:
      v31 = __clz(__rbit64(v29));
      v32 = (v29 - 1) & v29;
      v33 = *(v15 + 48);
      sub_10000D3B0(v31);
      if (!v1)
      {
LABEL_30:
        sub_1000134CC();
        sub_1000135A0();
        return;
      }

      while (1)
      {
        (*v26)(v35, v34, v36);
        dispatch thunk of ControlChannelConnection.invalidate(for:)();

        (*v27)(v35, v36);
        v19 = v30;
        v20 = v32;
        if ((v15 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_26:
        if (__CocoaSet.Iterator.next()())
        {
          type metadata accessor for ControlChannelConnection();
          swift_dynamicCast();
          v1 = v37;
          v30 = v19;
          v32 = v20;
          if (v37)
          {
            continue;
          }
        }

        goto LABEL_30;
      }
    }

    while (1)
    {
      v30 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v30 >= v25)
      {
        goto LABEL_30;
      }

      v29 = *(v18 + 8 * v30);
      ++v28;
      if (v29)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
    goto LABEL_32;
  }

  static os_log_type_t.error.getter();
  sub_1000135A0();

  os_log(_:dso:log:_:_:)();
}

uint64_t sub_100043750(uint64_t a1, int a2)
{
  v4 = *(*(sub_100013414(&unk_10009B108, &qword_1000781D8) - 8) + 64);
  sub_10000D8B0();
  __chkstk_darwin(v5);
  sub_10001ADE0();
  v6 = static os_log_type_t.info.getter();
  v7 = qword_10009CED0;
  if (sub_100040190(v6))
  {
    v8 = sub_100049A40();
    *v8 = 67109120;
    *(v8 + 4) = a2;
    _os_log_impl(&_mh_execute_header, v7, v6, "Dispatch source event handler fired for listening socket %d", v8, 8u);
    sub_10000D8D4();
  }

  v9 = accept(a2, 0, 0);
  if (v9 < 0)
  {
    v12 = static os_log_type_t.error.getter();
    result = sub_100040190(v12);
    if (result)
    {
      v13 = swift_slowAlloc();
      v14 = sub_10000D464();
      v18 = v14;
      *v13 = 67109378;
      *(v13 + 4) = a2;
      *(v13 + 8) = 2080;
      static POSIXError.current.getter();
      v15 = String.init<A>(describing:)();
      v17 = sub_10000C600(v15, v16, &v18);

      *(v13 + 10) = v17;
      _os_log_impl(&_mh_execute_header, v7, v12, "NetworkControlChannelService: error accepting connection from listening socket %d: %s", v13, 0x12u);
      sub_10000CADC(v14);
      sub_10000D8D4();
      return sub_10000D8D4();
    }
  }

  else
  {
    v10 = v9;
    static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)();

    return sub_10004770C(0, v2, v10, v2);
  }

  return result;
}

uint64_t sub_100043970(char a1, int a2)
{
  v4 = sub_100013414(&unk_10009B108, &qword_1000781D8);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  if ((a1 & 1) == 0)
  {
    result = close(a2);
    if (result != -1)
    {
      return result;
    }

    v8 = static os_log_type_t.error.getter();
    v9 = qword_10009CED0;
    result = os_log_type_enabled(qword_10009CED0, v8);
    if (!result)
    {
      return result;
    }

    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v22 = v11;
    *v10 = 136446210;
    static POSIXError.current.getter();
    v12 = String.init<A>(describing:)();
    v14 = sub_10000C600(v12, v13, &v22);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v9, v8, "Received error closing rejected socket: %{public}s", v10, 0xCu);
    sub_10000CADC(v11);
  }

  sub_100042724();
  v6 = _remotepairing_nw_connection_create_with_connected_socket_and_parameters();
  swift_unknownObjectRelease();
  if (!v6)
  {
    static os_log_type_t.error.getter();
    v15 = qword_10009CED0;
    os_log(_:dso:log:_:_:)();
    result = close(a2);
    if (result != -1)
    {
      return result;
    }

    v16 = static os_log_type_t.error.getter();
    result = os_log_type_enabled(v15, v16);
    if (!result)
    {
      return result;
    }

    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v22 = v18;
    *v17 = 136446210;
    static POSIXError.current.getter();
    v19 = String.init<A>(describing:)();
    v21 = sub_10000C600(v19, v20, &v22);

    *(v17 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v15, v16, "Received error closing socket: %{public}s", v17, 0xCu);
    sub_10000CADC(v18);
  }

  sub_100047F40();

  return swift_unknownObjectRelease();
}

uint64_t sub_100043C4C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 80);

  OS_dispatch_queue.assertOnQueueHierarchy()();
  if (!remotePairingIsEnabled())
  {
    static os_log_type_t.default.getter();
LABEL_12:
    os_log(_:dso:log:_:_:)();
    static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)();
  }

  if ((static Defaults.deviceAllowTCPControlChannels.getter() & 1) == 0 || !sub_1000454A0() || !RPIdentity)
  {
    static os_log_type_t.error.getter();
    goto LABEL_12;
  }

  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  v33 = 8;
  v6 = sysctlbyname("security.mac.amfi.developer_mode_status", (v5 + 16), &v33, 0, 0);
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = v6;
  v8 = static os_log_type_t.error.getter();
  v9 = qword_10009CED0;
  if (!os_log_type_enabled(qword_10009CED0, v8))
  {
    goto LABEL_9;
  }

  v10 = swift_slowAlloc();
  v11 = swift_slowAlloc();
  aBlock[0] = v11;
  *v10 = 136446210;
  if (strerror(v7))
  {
    v12 = String.init(cString:)();
    v14 = sub_10000C600(v12, v13, aBlock);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v9, v8, "Failed to fetch developer mode status: (%{public}s)", v10, 0xCu);
    sub_10000CADC(v11);

LABEL_9:
    v31 = *(a1 + 40);
    v15 = swift_allocObject();
    v15[2] = v5;
    v15[3] = a1;
    v15[4] = sub_1000497C0;
    v15[5] = a2;
    aBlock[4] = sub_1000499D0;
    aBlock[5] = v15;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100050100;
    aBlock[3] = &unk_1000908B8;
    v28 = _Block_copy(aBlock);
    v29 = type metadata accessor for DispatchQoS();
    v30 = v27;
    v16 = *(v29 - 8);
    v17 = *(v16 + 64);
    __chkstk_darwin(v29);
    v19 = v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);

    static DispatchQoS.unspecified.getter();
    v20 = type metadata accessor for DispatchWorkItemFlags();
    v27[2] = v27;
    v21 = *(v20 - 8);
    v22 = *(v21 + 64);
    __chkstk_darwin(v20);
    v27[1] = v5;
    v24 = v27 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
    v32 = _swiftEmptyArrayStorage;
    sub_10000D170(&unk_10009A8E0, &type metadata accessor for DispatchWorkItemFlags);
    sub_100013414(&unk_100099840, &unk_100077350);
    sub_100028120(&qword_10009A8F0, &unk_100099840, &unk_100077350);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v25 = v28;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v25);
    (*(v21 + 8))(v24, v20);
    (*(v16 + 8))(v19, v29);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000441F8(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  *(v10 + 32) = a4;
  *(v10 + 40) = a5;
  v11 = *(a1 + 80);

  OS_dispatch_queue.assertOnQueueHierarchy()();
  if (!remotePairingIsEnabled())
  {
    static os_log_type_t.default.getter();
LABEL_12:
    os_log(_:dso:log:_:_:)();
    sub_100047BA0(0, a2 & 1, a3, a4, a5);

    goto LABEL_13;
  }

  if ((static Defaults.deviceAllowTCPControlChannels.getter() & 1) == 0 || !sub_1000454A0() || !RPIdentity)
  {
    static os_log_type_t.error.getter();
    goto LABEL_12;
  }

  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  v43 = 8;
  v13 = sysctlbyname("security.mac.amfi.developer_mode_status", (v12 + 16), &v43, 0, 0);
  v41 = v12;
  if (!v13)
  {
    goto LABEL_9;
  }

  v14 = v13;
  v15 = static os_log_type_t.error.getter();
  v16 = qword_10009CED0;
  if (!os_log_type_enabled(qword_10009CED0, v15))
  {
    goto LABEL_9;
  }

  v17 = swift_slowAlloc();
  v18 = swift_slowAlloc();
  aBlock[0] = v18;
  *v17 = 136446210;
  if (strerror(v14))
  {
    v19 = String.init(cString:)();
    v21 = sub_10000C600(v19, v20, aBlock);

    *(v17 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v16, v15, "Failed to fetch developer mode status: (%{public}s)", v17, 0xCu);
    sub_10000CADC(v18);

    v12 = v41;
LABEL_9:
    v40 = *(a1 + 40);
    v22 = swift_allocObject();
    v22[2] = v12;
    v22[3] = a1;
    v22[4] = sub_10004949C;
    v22[5] = v10;
    aBlock[4] = sub_1000494AC;
    aBlock[5] = v22;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100050100;
    aBlock[3] = &unk_1000906B0;
    v36 = _Block_copy(aBlock);
    v38 = type metadata accessor for DispatchQoS();
    v39 = &v33;
    v37 = *(v38 - 8);
    v23 = *(v37 + 64);
    __chkstk_darwin(v38);
    v34 = &v33 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);

    static DispatchQoS.unspecified.getter();
    v25 = type metadata accessor for DispatchWorkItemFlags();
    v35 = &v33;
    v26 = *(v25 - 8);
    v27 = *(v26 + 64);
    __chkstk_darwin(v25);
    v29 = &v33 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
    v42 = _swiftEmptyArrayStorage;
    sub_10000D170(&unk_10009A8E0, &type metadata accessor for DispatchWorkItemFlags);
    sub_100013414(&unk_100099840, &unk_100077350);
    sub_100028120(&qword_10009A8F0, &unk_100099840, &unk_100077350);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v30 = v34;
    v31 = v36;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v31);
    (*(v26 + 8))(v29, v25);
    (*(v37 + 8))(v30, v38);

LABEL_13:
  }

  __break(1u);
  return result;
}

uint64_t sub_1000447CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v23 = *(v8 - 8);
  v9 = *(v23 + 64);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DispatchQoS();
  v12 = *(v22 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v22);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_10006ACDC() & 1) != 0 && ((lockdown_wifi_sync_enabled() & 1) != 0 || (lockdown_wifi_debug_enabled()) || (swift_beginAccess(), *(a1 + 16)))
  {
    v16 = *(a2 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = a3;
    *(v17 + 24) = a4;
    v29 = sub_100049984;
    v30 = v17;
    aBlock = _NSConcreteStackBlock;
    v26 = 1107296256;
    v27 = sub_100050100;
    v28 = &unk_100090750;
    v18 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    v24 = _swiftEmptyArrayStorage;
  }

  else
  {
    static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)();
    v19 = *(a2 + 80);
    v20 = swift_allocObject();
    *(v20 + 16) = a3;
    *(v20 + 24) = a4;
    v29 = sub_100049980;
    v30 = v20;
    aBlock = _NSConcreteStackBlock;
    v26 = 1107296256;
    v27 = sub_100050100;
    v28 = &unk_100090700;
    v18 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    v24 = _swiftEmptyArrayStorage;
  }

  sub_10000D170(&unk_10009A8E0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100013414(&unk_100099840, &unk_100077350);
  sub_100028120(&qword_10009A8F0, &unk_100099840, &unk_100077350);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);
  (*(v23 + 8))(v11, v8);
  (*(v12 + 8))(v15, v22);
}

uint64_t sub_100044B94(_xpc_activity_s *a1)
{
  v3 = *(v1 + 80);
  OS_dispatch_queue.assertOnQueueHierarchy()();
  state = xpc_activity_get_state(a1);
  static os_log_type_t.info.getter();
  if (state)
  {
    os_log(_:dso:log:_:_:)();

    return sub_100044C50();
  }

  else
  {

    return os_log(_:dso:log:_:_:)();
  }
}

uint64_t sub_100044C50()
{
  v1 = v0;
  v2 = *(v0 + 80);
  OS_dispatch_queue.assertOnQueueHierarchy()();
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  String.utf8CString.getter();
  xpc_set_event();

  return sub_100043C4C(v5, v1);
}

uint64_t sub_100044CBC(char a1, uint64_t a2)
{
  v4 = type metadata accessor for XPCDictionary();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for BonjourService();
  v45 = *(v9 - 8);
  v10 = *(v45 + 64);
  __chkstk_darwin(v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for BonjourAdvertFlags();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for UUID();
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18);
  v23 = &v35 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) != 0 && *(a2 + 74) != 1)
  {
    v43 = v21;
    v44 = v20;
    v39 = v8;
    v40 = v5;
    v41 = v4;
    v42 = v23;
    v38 = *(a2 + 72);
    UUID.init()();
    aBlock = _swiftEmptyArrayStorage;
    sub_10000D170(&qword_10009B0E8, &type metadata accessor for BonjourAdvertFlags);
    sub_100013414(&qword_10009B0F0, &qword_1000781D0);
    v25 = v42;
    sub_100028120(&qword_10009B0F8, &qword_10009B0F0, &qword_1000781D0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    sub_1000455CC();
    v27 = v26;
    (*(v14 + 8))(v17, v13);
    if (v27)
    {
      static os_log_type_t.default.getter();
      os_log(_:dso:log:_:_:)();
      v37 = a2;
      v28 = v41;
      v35 = swift_allocBox();
      v30 = v29;
      XPCDictionary.init()();
      aBlock = 0;
      LOBYTE(v47) = 0;
      sub_100049810();
      v36 = v27;
      XPCDictionary.subscript.setter();
      v31 = v45;
      (*(v45 + 104))(v12, enum case for BonjourService.default(_:), v9);
      BonjourService.rawValue.getter();
      (*(v31 + 8))(v12, v9);
      XPCDictionary.subscript.setter();
      aBlock = 0;
      LOBYTE(v47) = 0;
      XPCDictionary.subscript.setter();
      aBlock = v38;
      LOBYTE(v47) = 0;
      XPCDictionary.subscript.setter();
      UUID.uuidString.getter();
      XPCDictionary.subscript.setter();
      v50 = sub_100049864;
      v51 = v35;
      aBlock = _NSConcreteStackBlock;
      v47 = 1107296256;
      v48 = sub_1000453EC;
      v49 = &unk_1000908E0;
      v32 = _Block_copy(&aBlock);

      nw_txt_record_access_bytes(v36, v32);
      _Block_release(v32);
      swift_beginAccess();
      v34 = v39;
      v33 = v40;
      (*(v40 + 16))(v39, v30, v28);
      XPCDictionary.withUnsafeUnderlyingDictionary<A>(_:)();
      swift_unknownObjectRelease();
      (*(v33 + 8))(v34, v28);
      (*(v43 + 8))(v25, v44);
    }

    else
    {
      return (*(v43 + 8))(v25, v44);
    }
  }

  else
  {
    static os_log_type_t.error.getter();

    return os_log(_:dso:log:_:_:)();
  }
}

uint64_t sub_100045344()
{
  type metadata accessor for XPCDictionary();
  swift_projectBox();
  Data.init(bytes:count:)();
  swift_beginAccess();
  XPCDictionary.subscript.setter();
  swift_endAccess();
  return 1;
}

uint64_t sub_1000453EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  LOBYTE(a3) = v6(a2, a3);

  return a3 & 1;
}

uint64_t sub_100045448(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  v3 = *(a2 + 32);
  String.utf8CString.getter();
  xpc_set_event();
}

BOOL sub_1000454A0()
{
  v1 = *(v0 + 136);
  sub_10001E884();
  v3 = sub_100049430(v2);

  return v3 != 0;
}

void sub_1000455CC()
{
  sub_10000D060();
  sub_10000EB18();
  v2 = type metadata accessor for UUID();
  v3 = sub_10000CBBC(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  sub_10000CBDC();
  v10 = v9 - v8;
  v11 = type metadata accessor for String.Encoding();
  v12 = sub_10000CBBC(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  __chkstk_darwin(v12);
  sub_10000CBDC();
  sub_10001ADE0();
  v42 = v0;
  UUID.uuidString.getter();
  static String.Encoding.utf8.getter();
  v17 = String.data(using:allowLossyConversion:)();
  v19 = v18;

  v20 = v1;
  v21 = v19;
  (*(v14 + 8))(v20, v11);
  if (v19 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    v22 = *(v0 + 136);
    v23 = sub_10001FE84();
    v39 = v24;
    v40 = v21;
    v41 = v17;
    nw_txt_record_create_dictionary();
    v25 = static os_log_type_t.debug.getter();
    v26 = qword_10009CED0;
    (*(v5 + 16))(v10, v42, v2);
    if (os_log_type_enabled(v26, v25))
    {
      v27 = sub_10000D030();
      v43 = sub_10000D464();
      *v27 = 136446210;
      sub_10000D170(&qword_10009B0E0, &type metadata accessor for UUID);
      v38 = v23;
      v28 = v26;
      dispatch thunk of CustomStringConvertible.description.getter();
      (*(v5 + 8))(v10, v2);
      v29 = sub_1000228C0();
      v32 = sub_10000C600(v29, v30, v31);

      *(v27 + 4) = v32;
      v33 = v28;
      v23 = v38;
      _os_log_impl(&_mh_execute_header, v33, v25, "NetworkControlChannelService: Creating new bonjour advertisment with UUID=%{public}s", v27, 0xCu);
      sub_10000CADC(v43);
      sub_100049A00();
      sub_10000D8D4();
    }

    else
    {
      (*(v5 + 8))(v10, v2);
    }

    swift_getObjectType();
    static NetworkPairingKeys.identifier.getter();
    UUID.uuidString.getter();
    sub_10000D56C();
    static NetworkPairingKeys.authTag.getter();
    Data.base64EncodedString(options:)(0);
    sub_10000D56C();
    type metadata accessor for ControlChannelConnectionWireProtocolVersion();
    v34 = static ControlChannelConnectionWireProtocolVersion.current.getter();
    v35 = [v34 description];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static NetworkPairingKeys.wireProtocolVersion.getter();
    sub_10000D56C();
    v36 = static ControlChannelConnectionWireProtocolVersion.minimumSupported.getter();
    v37 = [v36 description];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static NetworkPairingKeys.minimumSupportedWireProtocolVersion.getter();
    sub_1000228C0();
    sub_10000D56C();
    static NetworkPairingKeys.flags.getter();
    BonjourAdvertFlags.rawValue.getter();
    sub_100049748();
    BinaryInteger.description.getter();
    sub_10000D56C();
    sub_10000ECF4(v41, v40);
    sub_10000DF50(v23, v39);
    sub_1000135A0();
  }
}

void sub_100045AC4()
{
  sub_10000D060();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = type metadata accessor for String.Encoding();
  v8 = sub_10000CBBC(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  __chkstk_darwin(v8);
  sub_10000CBDC();
  v15 = v14 - v13;
  static String.Encoding.utf8.getter();
  v16 = String.data(using:allowLossyConversion:)();
  v18 = v17;
  (*(v10 + 8))(v15, v7);
  if (v18 >> 60 == 15)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {

    __chkstk_darwin(v19);
    *&v22[-48] = v2;
    *&v22[-40] = v0;
    *&v22[-32] = v6;
    *&v22[-24] = v4;
    v20 = v16;
    v21 = v18;
    sub_1000424DC(sub_10004979C, &v22[-64], v16, v18);

    sub_10000ECF4(v16, v18);
    sub_1000135A0();
  }
}

void sub_100045C80()
{
  sub_100049A9C();
  if (!CBDiscovery)
  {
    static os_log_type_t.default.getter();
LABEL_8:
    sub_100049A24();

    os_log(_:dso:log:_:_:)();
    return;
  }

  v2 = v0;
  if (remotePairingIsEnabled())
  {
    if ((static Defaults.deviceAllowBluetoothDeviceDiscovery.getter() & 1) != 0 && sub_1000454A0())
    {
      if (!*(v0 + 184))
      {
        v7 = type metadata accessor for XPCDictionary();
        v8 = sub_10000CBBC(v7);
        v10 = v9;
        v12 = *(v11 + 64);
        __chkstk_darwin(v8);
        sub_10000CBDC();
        sub_10001ADE0();
        sub_100013414(&qword_10009B0A8, &qword_1000781B8);
        v13 = swift_allocObject();
        *(v13 + 16) = xmmword_100077390;
        *(v13 + 56) = &type metadata for String;
        strcpy((v13 + 32), "discoveryFlags");
        *(v13 + 47) = -18;
        v14 = sub_100013414(&qword_10009B0B0, &unk_1000781C0);
        *(v13 + 64) = &off_10008EAC8;
        *(v13 + 88) = v14;
        *(v13 + 96) = 0x526E616353656C62;
        *(v13 + 104) = 0xEB00000000657461;
        *(v13 + 152) = &type metadata for String;
        *(v13 + 120) = &type metadata for String;
        *(v13 + 128) = 0x756F72676B636142;
        *(v13 + 136) = 0xEA0000000000646ELL;
        sub_1000118F0(0, &qword_10009B0B8, NSDictionary_ptr);
        NSDictionary.init(dictionaryLiteral:)();
        v15 = XPCDictionary.init(nsDictionary:)();
        __chkstk_darwin(v15);
        XPCDictionary.withUnsafeUnderlyingDictionary<A>(_:)();
        v16 = [objc_allocWithZone(CBDiscovery) init];
        [v16 setDiscoveryFlags:33685504];
        [v16 setDispatchQueue:*(v2 + 80)];
        [v16 setBleScanRate:20];
        [v16 setBleScanRateScreenOff:20];
        v25 = sub_10004952C;
        v26 = v2;
        v21 = _NSConcreteStackBlock;
        v22 = 1107296256;
        v23 = sub_10000C200;
        v24 = &unk_100090818;
        v17 = _Block_copy(&v21);

        [v16 setDeviceFoundHandler:v17];
        _Block_release(v17);
        v25 = sub_100049534;
        v26 = v2;
        v21 = _NSConcreteStackBlock;
        v22 = 1107296256;
        v23 = sub_10000C200;
        v24 = &unk_100090840;
        v18 = _Block_copy(&v21);

        [v16 setDeviceLostHandler:v18];
        _Block_release(v18);
        v25 = sub_100046940;
        v26 = 0;
        v21 = _NSConcreteStackBlock;
        v22 = 1107296256;
        v23 = sub_100046AEC;
        v24 = &unk_100090868;
        v19 = _Block_copy(&v21);
        [v16 activateWithCompletion:v19];
        _Block_release(v19);
        (*(v10 + 8))(v1, v7);
        v20 = *(v2 + 184);
        *(v2 + 184) = v16;

        sub_100049A24();
        return;
      }

      static os_log_type_t.info.getter();
      goto LABEL_8;
    }

    static os_log_type_t.error.getter();
  }

  else
  {
    static os_log_type_t.default.getter();
  }

  os_log(_:dso:log:_:_:)();
  String.utf8CString.getter();
  xpc_set_event();

  [*(v0 + 184) invalidate];
  v4 = *(v0 + 184);
  *(v0 + 184) = 0;
  sub_100049A24();
}

uint64_t sub_100046244()
{
  String.utf8CString.getter();
  xpc_set_event();
}

uint64_t sub_1000462A0(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for Data.HexStringEncodingOptions();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_100049684(a1, &selRef_identifier);
  if (v10)
  {
    v11 = result;
    v12 = static os_log_type_t.default.getter();
    sub_1000118F0(0, &qword_100098ED0, OS_os_log_ptr);
    v13 = static OS_os_log.default.getter();
    if (os_log_type_enabled(v13, v12))
    {
      v29 = v5;
      v31 = v12;
      v32 = v11;
      v33 = a2;
      v14 = 0x6E776F6E6B6E553CLL;
      v15 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *&v36 = v30;
      *v15 = 136315394;
      v16 = sub_100049684(a1, &selRef_name);
      if (!v17)
      {
        v16 = 0x6E776F6E6B6E553CLL;
      }

      v18 = 0xE90000000000003ELL;
      if (v17)
      {
        v19 = v17;
      }

      else
      {
        v19 = 0xE90000000000003ELL;
      }

      v20 = sub_10000C600(v16, v19, &v36);

      *(v15 + 4) = v20;
      *(v15 + 12) = 2080;
      v21 = sub_1000496E4(a1);
      if (v22 >> 60 != 15)
      {
        v23 = v21;
        v24 = v22;
        static Data.HexStringEncodingOptions.bluetoothAddress.getter();
        v14 = Data.hexEncodedString(options:)();
        v18 = v25;
        sub_10000ECF4(v23, v24);
        (*(v29 + 8))(v8, v4);
      }

      v26 = sub_10000C600(v14, v18, &v36);

      *(v15 + 14) = v26;
      _os_log_impl(&_mh_execute_header, v13, v31, "Discovered NearbyAction trigger from device (name=%s, address=%s)", v15, 0x16u);
      swift_arrayDestroy();

      a2 = v33;
    }

    else
    {
    }

    v37 = sub_1000118F0(0, &qword_10009B0C8, CBDevice_ptr);
    *&v36 = a1;
    v27 = *(a2 + 224);
    sub_10000E8A4(&v36, &v35);
    v28 = a1;

    swift_isUniquelyReferenced_nonNull_native();
    v34 = v27;
    sub_100068B8C();

    return sub_1000426E4(v34);
  }

  return result;
}

uint64_t sub_1000465B8(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for Data.HexStringEncodingOptions();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_100049684(a1, &selRef_identifier);
  if (v10)
  {
    v11 = result;
    v12 = v10;
    v13 = static os_log_type_t.default.getter();
    sub_1000118F0(0, &qword_100098ED0, OS_os_log_ptr);
    v14 = static OS_os_log.default.getter();
    if (os_log_type_enabled(v14, v13))
    {
      v35 = v5;
      v37 = v13;
      v38 = v11;
      v39 = a2;
      v15 = 0x6E776F6E6B6E553CLL;
      v16 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *&v41[0] = v36;
      *v16 = 136315394;
      v17 = sub_100049684(a1, &selRef_name);
      if (!v18)
      {
        v17 = 0x6E776F6E6B6E553CLL;
      }

      v19 = 0xE90000000000003ELL;
      if (v18)
      {
        v20 = v18;
      }

      else
      {
        v20 = 0xE90000000000003ELL;
      }

      v21 = sub_10000C600(v17, v20, v41);

      *(v16 + 4) = v21;
      *(v16 + 12) = 2080;
      v22 = sub_1000496E4(a1);
      if (v23 >> 60 != 15)
      {
        v24 = v22;
        v25 = v23;
        static Data.HexStringEncodingOptions.bluetoothAddress.getter();
        v15 = Data.hexEncodedString(options:)();
        v19 = v26;
        sub_10000ECF4(v24, v25);
        (*(v35 + 8))(v8, v4);
      }

      a2 = v39;
      v27 = sub_10000C600(v15, v19, v41);

      *(v16 + 14) = v27;
      _os_log_impl(&_mh_execute_header, v14, v37, "Lost NearbyAction trigger from device (name=%s, address=%s)", v16, 0x16u);
      swift_arrayDestroy();

      v11 = v38;
    }

    else
    {
    }

    v28 = *(a2 + 224);

    v29 = sub_10004FEF0(v11, v12);
    if (v30)
    {
      v31 = v29;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v40 = v28;
      v33 = *(v28 + 24);
      sub_100013414(&qword_10009B0C0, &unk_100077550);
      _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v33);
      v28 = v40;
      v34 = *(*(v40 + 48) + 16 * v31 + 8);

      sub_10000E8A4((*(v28 + 56) + 32 * v31), v41);
      _NativeDictionary._delete(at:)();
    }

    else
    {
      memset(v41, 0, sizeof(v41));
    }

    sub_100030708(v41, &qword_100099A00, &qword_100077540);
    return sub_1000426E4(v28);
  }

  return result;
}

uint64_t sub_100046940(uint64_t a1)
{
  if (a1)
  {
    swift_errorRetain();
    v1 = static os_log_type_t.error.getter();
    v2 = qword_10009CED0;
    if (os_log_type_enabled(qword_10009CED0, v1))
    {
      v3 = swift_slowAlloc();
      v4 = swift_slowAlloc();
      v9 = v4;
      *v3 = 136315138;
      swift_getErrorValue();
      v5 = Error.localizedDescription.getter();
      v7 = sub_10000C600(v5, v6, &v9);

      *(v3 + 4) = v7;
      _os_log_impl(&_mh_execute_header, v2, v1, "Bluetooth discovery activation failed: %s", v3, 0xCu);
      sub_10000CADC(v4);
    }

    else
    {
    }
  }

  else
  {
    static os_log_type_t.default.getter();

    return os_log(_:dso:log:_:_:)();
  }
}

void sub_100046AEC(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_100046B58()
{
  v1 = v0;
  v2 = *(*(sub_100013414(&qword_1000999E8, &unk_100077D60) - 8) + 64);
  sub_10000D8B0();
  __chkstk_darwin(v3);
  v5 = &v20 - v4;
  static os_log_type_t.default.getter();
  v6 = qword_10009CED0;
  os_log(_:dso:log:_:_:)();
  v7 = *(v0 + 192);
  if (!v7)
  {
    v8 = type metadata accessor for WiFiKeepAlive();
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v7 = WiFiKeepAlive.init(reason:)();
    v11 = *(v0 + 192);
  }

  *(v1 + 192) = v7;

  v12 = String._bridgeToObjectiveC()();
  v13 = String._bridgeToObjectiveC()();
  v14 = String._bridgeToObjectiveC()();
  swift_beginAccess();
  v15 = IOPMAssertionCreateWithDescription(v12, v13, v14, 0, 0, 0.0, 0, (v1 + 200));
  swift_endAccess();

  if (v15)
  {
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v16))
    {
      v17 = sub_100049A40();
      *v17 = 67109120;
      *(v17 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v6, v16, "Failed to create power assertion for NearbyAction: %d", v17, 8u);
      sub_10000D8D4();
    }
  }

  UUID.init()();
  v18 = type metadata accessor for UUID();
  sub_1000223E8(v5, 0, 1, v18);
  sub_100046F58();
  return sub_100030708(v5, &qword_1000999E8, &unk_100077D60);
}

uint64_t sub_100046DB8()
{
  v1 = *(*(sub_100013414(&qword_1000999E8, &unk_100077D60) - 8) + 64);
  sub_10000D8B0();
  __chkstk_darwin(v2);
  v4 = &v8 - v3;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:_:_:)();
  v5 = *(v0 + 192);
  *(v0 + 192) = 0;

  sub_100046EA4();
  v6 = type metadata accessor for UUID();
  sub_1000223E8(v4, 1, 1, v6);
  sub_100046F58();
  return sub_100030708(v4, &qword_1000999E8, &unk_100077D60);
}

uint64_t sub_100046EA4()
{
  swift_beginAccess();
  result = *(v0 + 200);
  if (result)
  {
    result = IOPMAssertionRelease(result);
    if (result)
    {
      v2 = result;
      v3 = static os_log_type_t.error.getter();
      result = os_log_type_enabled(qword_10009CED0, v3);
      if (result)
      {
        v4 = sub_100049A40();
        *v4 = 67109120;
        v4[1] = v2;
        sub_100049AB8(&_mh_execute_header, v5, v6, "Failed to release power assertion for NearbyAction: %d");
        result = sub_10000D8D4();
      }
    }

    *(v0 + 200) = 0;
  }

  return result;
}

void sub_100046F58()
{
  sub_100049A9C();
  v2 = v0;
  sub_10000EB18();
  v3 = type metadata accessor for BonjourService();
  v4 = sub_10000CBBC(v3);
  v53 = v5;
  v7 = *(v6 + 64);
  __chkstk_darwin(v4);
  sub_10000CBDC();
  v10 = v9 - v8;
  v11 = type metadata accessor for BonjourAdvertFlags();
  v12 = sub_10000CBBC(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  __chkstk_darwin(v12);
  sub_10000CBDC();
  v19 = v18 - v17;
  v20 = *(*(sub_100013414(&qword_1000999E8, &unk_100077D60) - 8) + 64);
  sub_10000D8B0();
  __chkstk_darwin(v21);
  sub_10001ADE0();
  v22 = type metadata accessor for UUID();
  v23 = sub_10000CBBC(v22);
  v54 = v24;
  v26 = *(v25 + 64);
  __chkstk_darwin(v23);
  sub_10000CBDC();
  v29 = v28 - v27;
  v30 = *(v0 + 208);
  if (v30)
  {
    nw_listener_cancel(v30);
    v31 = *(v0 + 208);
    *(v0 + 208) = 0;
    swift_unknownObjectRelease();
  }

  v32 = sub_1000228C0();
  sub_1000225B8(v32, v33);
  if (sub_100022484(v1, 1, v22) != 1)
  {
    (*(v54 + 32))(v29, v1, v22);
    static BonjourAdvertFlags.onDemand.getter();
    sub_1000455CC();
    v35 = v34;
    (*(v14 + 8))(v19, v11);
    if (!v35)
    {
      (*(v54 + 8))(v29, v22);
      goto LABEL_16;
    }

    v36 = sub_100042724();
    nw_parameters_set_no_wake_from_sleep();
    v37 = [objc_opt_self() currentState];
    if (v37)
    {
      v38 = v37;
      v39 = [v37 supportsDataTransfer];

      if (v39)
      {
        static os_log_type_t.debug.getter();
        os_log(_:dso:log:_:_:)();
        nw_parameters_set_include_peer_to_peer(v36, 1);
      }
    }

    v40 = nw_listener_create(v36);
    if (v40)
    {
      v41 = v40;
      v52 = v35;
      UUID.uuidString.getter();
      (*(v53 + 104))(v10, enum case for BonjourService.default(_:), v3);
      BonjourService.rawValue.getter();
      (*(v53 + 8))(v10, v3);
      v42 = String.utf8CString.getter();

      v43 = String.utf8CString.getter();

      bonjour_service = nw_advertise_descriptor_create_bonjour_service((v42 + 32), (v43 + 32), 0);

      if (bonjour_service)
      {
        nw_advertise_descriptor_set_txt_record_object(bonjour_service, v52);
        nw_listener_set_advertise_descriptor(v41, bonjour_service);
        v59 = sub_100047528;
        v60 = 0;
        v55 = _NSConcreteStackBlock;
        v56 = 1107296256;
        v57 = sub_100040988;
        v58 = &unk_1000905C0;
        v45 = _Block_copy(&v55);
        nw_listener_set_state_changed_handler(v41, v45);
        _Block_release(v45);
        v59 = sub_10004948C;
        v60 = v2;
        v55 = _NSConcreteStackBlock;
        v56 = 1107296256;
        v57 = sub_10000DC24;
        v58 = &unk_1000905E8;
        v46 = _Block_copy(&v55);

        nw_listener_set_new_connection_handler(v41, v46);
        _Block_release(v46);
        nw_listener_set_queue(v41, *(v2 + 80));
        nw_listener_start(v41);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v47 = sub_100049A88();
        v48(v47);
        v49 = *(v2 + 208);
        *(v2 + 208) = v41;
        swift_unknownObjectRelease();
        goto LABEL_16;
      }

      static os_log_type_t.error.getter();
      os_log(_:dso:log:_:_:)();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

    else
    {
      static os_log_type_t.error.getter();
      os_log(_:dso:log:_:_:)();
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
    v50 = sub_100049A88();
    v51(v50);
    goto LABEL_16;
  }

  sub_100030708(v1, &qword_1000999E8, &unk_100077D60);
LABEL_16:
  sub_100049A24();
}

uint64_t sub_100047528(int a1, void *a2)
{
  v4 = static os_log_type_t.default.getter();
  v5 = qword_10009CED0;
  result = os_log_type_enabled(qword_10009CED0, v4);
  if (result)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 67109378;
    *(v7 + 4) = a1;
    *(v7 + 8) = 2080;
    if (a2)
    {
      v9 = [a2 description];
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;
    }

    else
    {
      v12 = 0xE600000000000000;
      v10 = 0x29656E6F6E28;
    }

    v13 = sub_10000C600(v10, v12, &v14);

    *(v7 + 10) = v13;
    _os_log_impl(&_mh_execute_header, v5, v4, "Bluetooth discovery bonjour listener state changed: %u, error: %s", v7, 0x12u);
    sub_10000CADC(v8);
  }

  return result;
}

uint64_t sub_100047678(NSObject *a1, uint64_t a2)
{
  swift_unknownObjectRetain();

  return sub_100047954(1, a2, a1, a2);
}

void sub_1000476C8(char a1, nw_connection_t connection)
{
  if (a1)
  {
    sub_100047F40();
  }

  else
  {

    nw_connection_cancel(connection);
  }
}

uint64_t sub_10004770C(char a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  v9 = *(a2 + 80);

  OS_dispatch_queue.assertOnQueueHierarchy()();
  swift_beginAccess();
  v10 = *(a2 + 48);

  v12 = sub_100061FD0(v11);

  if (v12 > 39)
  {
    v13 = static os_log_type_t.error.getter();
    v14 = qword_10009CED0;
    if (os_log_type_enabled(qword_10009CED0, v13))
    {

      v15 = swift_slowAlloc();
      *v15 = 134217984;
      v16 = *(a2 + 48);
      if ((v16 & 0xC000000000000001) != 0)
      {
        if (v16 < 0)
        {
          v17 = *(a2 + 48);
        }

        v18 = *(a2 + 48);

        v19 = __CocoaSet.count.getter();
      }

      else
      {
        v19 = *(v16 + 16);
      }

      *(v15 + 4) = v19;

      _os_log_impl(&_mh_execute_header, v14, v13, "Rejecting incoming TCP connection as we already have %ld TCP peers", v15, 0xCu);
    }

    goto LABEL_14;
  }

  if (remotePairingIsEnabled() & 1) == 0 || (*(a2 + 216))
  {
    static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)();
LABEL_14:
    sub_100043970(0, a3);
    goto LABEL_15;
  }

  sub_1000441F8(a2, a1 & 1, a2, sub_100049888, v8);
LABEL_15:
}

uint64_t sub_100047954(char a1, uint64_t a2, NSObject *a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  v9 = *(a2 + 80);
  swift_unknownObjectRetain();

  OS_dispatch_queue.assertOnQueueHierarchy()();
  swift_beginAccess();
  v10 = *(a2 + 48);

  v12 = sub_100061FD0(v11);

  if (v12 > 39)
  {
    v13 = static os_log_type_t.error.getter();
    v14 = qword_10009CED0;
    if (os_log_type_enabled(qword_10009CED0, v13))
    {

      v15 = swift_slowAlloc();
      *v15 = 134217984;
      v16 = *(a2 + 48);
      if ((v16 & 0xC000000000000001) != 0)
      {
        if (v16 < 0)
        {
          v17 = *(a2 + 48);
        }

        v18 = *(a2 + 48);

        v19 = __CocoaSet.count.getter();
      }

      else
      {
        v19 = *(v16 + 16);
      }

      *(v15 + 4) = v19;

      _os_log_impl(&_mh_execute_header, v14, v13, "Rejecting incoming TCP connection as we already have %ld TCP peers", v15, 0xCu);
    }

    goto LABEL_14;
  }

  if (remotePairingIsEnabled() & 1) == 0 || (*(a2 + 216))
  {
    static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)();
LABEL_14:
    nw_connection_cancel(a3);
    goto LABEL_15;
  }

  sub_1000441F8(a2, a1 & 1, a2, sub_100049494, v8);
LABEL_15:
  swift_unknownObjectRelease();
}

uint64_t sub_100047BA0(char a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v26 = *(v10 - 8);
  v11 = *(v26 + 64);
  __chkstk_darwin(v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for DispatchQoS();
  v14 = *(v25 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v25);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 & 1) != 0 || (a1)
  {
    v21 = *(a3 + 80);
    v22 = swift_allocObject();
    *(v22 + 16) = a4;
    *(v22 + 24) = a5;
    v32 = sub_1000494E4;
    v33 = v22;
    aBlock = _NSConcreteStackBlock;
    v29 = 1107296256;
    v30 = sub_100050100;
    v31 = &unk_1000907F0;
    v20 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    v27 = _swiftEmptyArrayStorage;
  }

  else
  {
    static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)();
    v18 = *(a3 + 80);
    v19 = swift_allocObject();
    *(v19 + 16) = a4;
    *(v19 + 24) = a5;
    v32 = sub_1000494B8;
    v33 = v19;
    aBlock = _NSConcreteStackBlock;
    v29 = 1107296256;
    v30 = sub_100050100;
    v31 = &unk_1000907A0;
    v20 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    v27 = _swiftEmptyArrayStorage;
  }

  sub_10000D170(&unk_10009A8E0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100013414(&unk_100099840, &unk_100077350);
  sub_100028120(&qword_10009A8F0, &unk_100099840, &unk_100077350);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);
  (*(v26 + 8))(v13, v10);
  (*(v14 + 8))(v17, v25);
}

void sub_100047F40()
{
  sub_10000D060();
  v1 = v0;
  v37 = type metadata accessor for ControlChannelConnection.Options();
  v2 = sub_10000CBBC(v37);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  sub_10000CBDC();
  v9 = v8 - v7;
  v10 = type metadata accessor for ControlChannelConnection.Options.Device();
  v11 = sub_10000CBBC(v10);
  v13 = v12;
  v38 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v11);
  sub_10000CBDC();
  v18 = v17 - v16;
  v19 = v0[10];
  OS_dispatch_queue.assertOnQueueHierarchy()();
  ControlChannelConnection.Options.Device.init(allowsPairSetup:allowsPinlessPairing:allowsIncomingTunnelConnections:allowsPromptlessAutomationPairingUpgrade:allowsSharingSensitiveInfo:)();
  v20 = type metadata accessor for NWObjcConnectionControlChannelTransport();
  swift_allocObject();
  v21 = swift_unknownObjectRetain();
  v22 = sub_100040C00(v21);
  v41 = v20;
  v42 = sub_10000D170(&unk_10009ACB0, type metadata accessor for NWObjcConnectionControlChannelTransport);
  v40 = v22;
  (*(v13 + 16))(v9, v18, v10);
  (*(v4 + 104))(v9, enum case for ControlChannelConnection.Options.device(_:), v37);
  v23 = v0[17];
  v39[3] = type metadata accessor for SystemKeychainPairingManager();
  v39[4] = sub_10000D170(&qword_100099CF0, type metadata accessor for SystemKeychainPairingManager);
  v39[0] = v23;
  v24 = type metadata accessor for ControlChannelConnection();

  v25 = v19;

  static ControlChannelConnection.defaultMaxReconnectionAttempts.getter();
  v26 = *(v24 + 48);
  v27 = *(v24 + 52);
  swift_allocObject();
  v28 = ControlChannelConnection.init(transport:queue:options:maxReconnectionAttempts:pairingDataStorageProvider:peerWireProtocolVersion:)();
  v29 = v1[16];
  v41 = type metadata accessor for MetadataService();
  v42 = sub_10000D170(&qword_10009B090, type metadata accessor for MetadataService);
  v40 = v29;

  dispatch thunk of ControlChannelConnection.customDeviceMetadataProvider.setter();
  sub_100022260((v1 + 18), &v40);
  dispatch thunk of ControlChannelConnection.tunnelListenerCreator.setter();
  swift_beginAccess();

  sub_10006463C(v39, v28);
  swift_endAccess();

  sub_100042584();
  sub_10000CBD0();
  v30 = swift_allocObject();
  swift_weakInit();
  sub_10000CBD0();
  v31 = swift_allocObject();
  swift_weakInit();
  v32 = swift_allocObject();
  *(v32 + 16) = v30;
  *(v32 + 24) = v31;

  dispatch thunk of ControlChannelConnection.invalidationHandler.setter();

  sub_10000CBD0();
  v33 = swift_allocObject();
  swift_weakInit();
  sub_10000CBD0();
  v34 = swift_allocObject();
  swift_weakInit();

  v35 = swift_allocObject();
  *(v35 + 16) = v34;
  *(v35 + 24) = v33;

  dispatch thunk of ControlChannelConnection._connectionSetupCompleteHandler.setter();

  v36 = *sub_10001355C(v1 + 11, v1[14]);

  sub_100055598();

  (*(v38 + 8))(v18, v10);
  sub_1000135A0();
}

uint64_t sub_10004843C()
{
  v0 = type metadata accessor for ControlChannelConnectionError.Code();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v37 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v36 = &v33 - v5;
  v6 = type metadata accessor for ControlChannelConnectionError();
  v38 = *(v6 - 8);
  v39 = v6;
  v7 = *(v38 + 64);
  v8 = __chkstk_darwin(v6);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v33 - v11;
  v13 = type metadata accessor for RemotePairingError();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100013414(&qword_10009B098, &qword_1000781B0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = (&v33 - v20);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v35 = v1;
    swift_beginAccess();
    if (!swift_weakLoadStrong())
    {
    }

    swift_beginAccess();
    sub_10000CE94();
    swift_endAccess();

    sub_100042584();
    dispatch thunk of ControlChannelConnection.invalidationReason.getter();
    v23 = type metadata accessor for ControlChannelConnection.InvalidationReason();
    if (sub_100022484(v21, 1, v23) == 1)
    {

      return sub_100030708(v21, &qword_10009B098, &qword_1000781B0);
    }

    v34 = v0;
    v24 = *(v23 - 8);
    if ((*(v24 + 88))(v21, v23) == enum case for ControlChannelConnection.InvalidationReason.internalError(_:))
    {
      (*(v24 + 96))(v21, v23);
      v25 = *v21;
      swift_errorRetain();
      sub_10000D170(&unk_10009A0D0, &type metadata accessor for RemotePairingError);
      static Error<>.networkingError.getter();
      v26 = static _Error.~= infix(_:_:)();

      (*(v14 + 8))(v17, v13);
      if (v26)
      {
LABEL_8:
        static os_log_type_t.default.getter();
        os_log(_:dso:log:_:_:)();
        sub_100044C50();
      }

      v42 = v25;
      swift_errorRetain();
      sub_100013414(&unk_10009A930, &unk_100077080);
      v27 = v39;
      if (swift_dynamicCast())
      {
        v33 = v25;
        (*(v38 + 32))(v10, v12, v27);
        v28 = v36;
        ControlChannelConnectionError.code.getter();
        v29 = v34;
        v30 = v35;
        v31 = v37;
        (*(v35 + 104))(v37, enum case for ControlChannelConnectionError.Code.transportError(_:), v34);
        sub_10000D170(&qword_10009B0A0, &type metadata accessor for ControlChannelConnectionError.Code);
        dispatch thunk of RawRepresentable.rawValue.getter();
        dispatch thunk of RawRepresentable.rawValue.getter();
        v32 = *(v30 + 8);
        v32(v31, v29);
        v32(v28, v29);
        (*(v38 + 8))(v10, v27);
        if (v41 == v40)
        {

          goto LABEL_8;
        }
      }
    }

    else
    {

      return (*(v24 + 8))(v21, v23);
    }
  }

  return result;
}

uint64_t sub_100048AAC()
{
  v0 = type metadata accessor for ControlChannelConnection.InvalidationReason();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v6 = dispatch thunk of ControlChannelConnection.resolvedIdentity.getter();
      if (v6)
      {
        v7 = v6;
        if ((sub_100069E94() & 1) == 0)
        {
          (*(v1 + 104))(v4, enum case for ControlChannelConnection.InvalidationReason.peerUnpaired(_:), v0);
          dispatch thunk of ControlChannelConnection.invalidate(for:)();

          return (*(v1 + 8))(v4, v0);
        }
      }
    }
  }

  return result;
}

uint64_t sub_100048C44(int a1)
{
  v2 = swift_slowAlloc();
  v21 = 128;
  v3 = getsockname(a1, v2, &v21);
  if (v3)
  {
    v4 = v3;
    v5 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(qword_10009CED0, v5))
    {
LABEL_5:
      sub_10000D8D4();
      v9 = 0;
      v10 = 1;
      return v9 | (v10 << 16);
    }

    v6 = sub_100049A40();
    *v6 = 67109120;
    v6[1] = v4;
    sub_100049AB8(&_mh_execute_header, v7, v8, "Unable to resolve port for listening socket. getsockname returned %d");
LABEL_4:
    sub_10000D8D4();
    goto LABEL_5;
  }

  v11 = *(v2 + 1);
  if (v11 != 2 && v11 != 30)
  {
    v17 = static os_log_type_t.error.getter();
    v18 = qword_10009CED0;
    if (!sub_10000CD2C(v17))
    {
      goto LABEL_5;
    }

    v20 = swift_slowAlloc();
    *v20 = 16777472;
    v20[4] = *(v2 + 1);
    _os_log_impl(&_mh_execute_header, v18, v17, "Unknown socket family %hhu", v20, 5u);
    goto LABEL_4;
  }

  v9 = bswap32(*(v2 + 2)) >> 16;
  v13 = static os_log_type_t.default.getter();
  v14 = qword_10009CED0;
  if (sub_10000CD2C(v13))
  {
    v15 = swift_slowAlloc();
    *v15 = 33554688;
    *(v15 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v14, v13, "Resolved listening port for network control channel service: %hu", v15, 6u);
    sub_100049A00();
  }

  sub_10000D8D4();
  v10 = 0;
  return v9 | (v10 << 16);
}

uint64_t sub_100048E30()
{
  sub_100046EA4();
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  v3 = *(v0 + 56);

  v4 = *(v0 + 64);

  sub_10000CADC((v0 + 88));
  v5 = *(v0 + 128);

  v6 = *(v0 + 136);

  sub_10000CADC((v0 + 144));

  v7 = *(v0 + 192);

  v8 = *(v0 + 208);
  swift_unknownObjectRelease();
  v9 = *(v0 + 224);

  return v0;
}

uint64_t sub_100048EBC()
{
  sub_100048E30();

  return _swift_deallocClassInstance(v0, 232, 7);
}

uint64_t sub_100048F14(NSObject *a1)
{
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(a1, v4))
  {

    v5 = swift_slowAlloc();
    *v5 = 67109376;
    *(v5 + 4) = *(v2 + 184) != 0;
    *(v5 + 8) = 2048;
    sub_10000D488();
    v6 = *(v2 + 48);
    if ((v6 & 0xC000000000000001) != 0)
    {
      if (v6 < 0)
      {
        v7 = *(v2 + 48);
      }

      v8 = *(v2 + 48);

      v9 = __CocoaSet.count.getter();
    }

    else
    {
      v9 = *(v6 + 16);
    }

    *(v5 + 10) = v9;

    _os_log_impl(&_mh_execute_header, a1, v4, "NetworkControlChannelService state: ble enabled = %{BOOL}d, connection count = %ld", v5, 0x12u);
    sub_100049A00();
  }

  sub_10000D488();
  v10 = *(v2 + 48);
  if ((v10 & 0xC000000000000001) != 0)
  {
    if (v10 < 0)
    {
      v2 = *(v2 + 48);
    }

    else
    {
      v2 = v10 & 0xFFFFFFFFFFFFFF8;
    }

    __CocoaSet.makeIterator()();
    sub_10000EB18();
    type metadata accessor for ControlChannelConnection();
    sub_1000499E8();
    sub_10000D170(v11, v12);
    result = Set.Iterator.init(_cocoa:)();
    v10 = v39[4];
    v14 = v39[5];
    v1 = v39[6];
    v15 = v39[7];
    v16 = v39[8];
  }

  else
  {
    v17 = -1 << *(v10 + 32);
    v14 = v10 + 56;
    v18 = *(v10 + 56);
    sub_100049A58();
    v16 = v19 & v20;

    v15 = 0;
  }

  v21 = (v1 + 64) >> 6;
  while (v10 < 0)
  {
    if (!__CocoaSet.Iterator.next()())
    {
      return sub_1000134CC();
    }

    type metadata accessor for ControlChannelConnection();
    swift_dynamicCast();
    v2 = v39[0];
    v24 = v15;
    v26 = v16;
    if (!v39[0])
    {
      return sub_1000134CC();
    }

LABEL_24:
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(a1, v28))
    {
      v29 = sub_10000D030();
      v38 = sub_10000D464();
      v39[0] = v38;
      *v29 = 136446210;
      type metadata accessor for ControlChannelConnection();

      v30 = String.init<A>(describing:)();
      v37 = v26;
      v32 = v21;
      v33 = v14;
      v34 = v10;
      v35 = a1;
      v36 = sub_10000C600(v30, v31, v39);

      *(v29 + 4) = v36;
      a1 = v35;
      v10 = v34;
      v14 = v33;
      v21 = v32;
      _os_log_impl(&_mh_execute_header, a1, v28, "NetworkControlChannelService control channel connection: %{public}s", v29, 0xCu);
      sub_10000CADC(v38);
      sub_10000D8D4();
      sub_10000D8D4();

      v15 = v24;
      v16 = v37;
    }

    else
    {

      v15 = v24;
      v16 = v26;
    }
  }

  v22 = v15;
  v23 = v16;
  v24 = v15;
  if (v16)
  {
LABEL_20:
    v25 = __clz(__rbit64(v23));
    v26 = (v23 - 1) & v23;
    v27 = *(v10 + 48);
    sub_10000D3B0(v25);
    if (!v2)
    {
      return sub_1000134CC();
    }

    goto LABEL_24;
  }

  while (1)
  {
    v24 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v24 >= v21)
    {
      return sub_1000134CC();
    }

    v23 = *(v14 + 8 * v24);
    ++v22;
    if (v23)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100049338@<X0>(uint64_t result@<X0>, NSObject *a2@<X2>, _BYTE *a3@<X8>)
{
  if (result)
  {
    v4 = result;
    v6 = Data.count.getter();
    v7 = String.utf8CString.getter();
    LOBYTE(v4) = nw_txt_record_set_key(a2, (v7 + 32), v4, v6);

    *a3 = v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_1000493E4(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

uint64_t sub_100049430(uint64_t a1)
{
  if (!(a1 >> 62))
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (a1 >= 0)
  {
    a1 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  return _CocoaArrayWrapper.endIndex.getter(a1);
}

uint64_t sub_10004947C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_10004843C();
}

uint64_t sub_100049484()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_100048AAC();
}

uint64_t sub_1000494B8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1(0);
}

uint64_t sub_1000494E4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1(1);
}

uint64_t sub_100049510()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_100046244();
}

uint64_t sub_10004953C(void (*a1)(char *__return_ptr, uint64_t *, char *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a3;
  v10 = WORD2(a4);
  v9 = a4;
  a1(&v7, &v8, &v8 + BYTE6(a4));
  if (!v4)
  {
    v5 = v7;
  }

  return v5 & 1;
}

uint64_t sub_1000495D0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t, uint64_t))
{
  result = __DataStorage._bytes.getter();
  v8 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_15:
      __break(1u);
      return result;
    }

    v8 += a1 - result;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_15;
  }

  v11 = __DataStorage._length.getter();
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  v13 = v12 + v8;
  if (v8)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  a3(&v16, v8, v14);
  if (!v3)
  {
    v15 = v16;
  }

  return v15 & 1;
}

uint64_t sub_100049684(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

uint64_t sub_1000496E4(void *a1)
{
  v1 = [a1 btAddressData];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

unint64_t sub_100049748()
{
  result = qword_10009B0D8;
  if (!qword_10009B0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009B0D8);
  }

  return result;
}

uint64_t sub_10004979C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 32);
  v5 = *(v2 + 40);
  v6 = *(v2 + 48);
  v7 = *(v2 + 56);
  return sub_100049338(a1, *(v2 + 24), a2);
}

uint64_t sub_1000497C8()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

unint64_t sub_100049810()
{
  result = qword_10009B100;
  if (!qword_10009B100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009B100);
  }

  return result;
}

uint64_t sub_1000498A4(void (*a1)(void), void (*a2)(void), uint64_t a3)
{
  a1(*(v3 + 16));
  a2(*(v3 + 24));

  return _swift_deallocObject(v3, a3, 7);
}

uint64_t sub_100049A00()
{
}

uint64_t sub_100049A40()
{

  return swift_slowAlloc();
}

uint64_t sub_100049A88()
{
  v2 = *(*(v1 - 152) + 8);
  result = v0;
  v4 = *(v1 - 176);
  return result;
}

void sub_100049AB8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 8u);
}

uint64_t sub_100049B34(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a2();
  }

  return result;
}

void sub_100049B94()
{
  v1 = v0;
  v2 = v0[5];
  sub_10004CD30();
  v3 = v1[15];
  v4 = v1[16];
  v5 = v1[12];
  v6 = swift_allocObject();
  swift_weakInit();
  v20 = sub_10004C154;
  v21 = v6;
  v16 = _NSConcreteStackBlock;
  v17 = 1107296256;
  v18 = sub_10005014C;
  v19 = &unk_100090A98;
  v7 = _Block_copy(&v16);

  v8 = String.utf8CString.getter();
  v9 = OBJC_IVAR____TtC20remotepairingdeviced15MetadataService__userAssignedNameDarwinNotificationToken;
  sub_10001ADBC();
  swift_beginAccess();
  notify_register_dispatch((v8 + 32), (v1 + v9), v5, v7);
  swift_endAccess();

  _Block_release(v7);
  v10 = v1[17];
  v11 = v1[18];
  v12 = swift_allocObject();
  swift_weakInit();
  v20 = sub_10004C184;
  v21 = v12;
  v16 = _NSConcreteStackBlock;
  v17 = 1107296256;
  v18 = sub_10005014C;
  v19 = &unk_100090AC0;
  v13 = _Block_copy(&v16);

  v14 = String.utf8CString.getter();
  v15 = OBJC_IVAR____TtC20remotepairingdeviced15MetadataService__developerModeStatusDarwinNotificationToken;
  sub_10001ADBC();
  swift_beginAccess();
  notify_register_dispatch((v14 + 32), (v1 + v15), v5, v13);
  swift_endAccess();

  _Block_release(v13);
}

uint64_t sub_100049DB0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a3();
  }

  return result;
}

void sub_100049E10(int a1@<W0>, uint64_t a2@<X8>)
{
  v4 = v3;
  v7 = type metadata accessor for RemotePairingError();
  v8 = sub_10000CC04(v7);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  sub_10000CBDC();
  v11 = type metadata accessor for PeerDeviceInfo();
  v12 = sub_10000CBBC(v11);
  v164 = v13;
  v15 = *(v14 + 64);
  __chkstk_darwin(v12);
  sub_10000CBDC();
  v155 = v17 - v16;
  v177 = type metadata accessor for AuxiliaryMetadataItem();
  v18 = sub_10000CBBC(v177);
  v167 = v19;
  v21 = *(v20 + 64);
  __chkstk_darwin(v18);
  sub_10000CBDC();
  v170 = v23 - v22;
  v24 = sub_100013414(&qword_10009B328, &unk_100078450);
  v25 = sub_10000D368(v24);
  v27 = *(v26 + 64);
  __chkstk_darwin(v25);
  sub_10000D2F8();
  v169 = v28;
  sub_100022894();
  __chkstk_darwin(v29);
  v166 = &v137 - v30;
  v31 = sub_100013414(&qword_10009B320, &unk_1000782F0);
  v32 = sub_10000D368(v31);
  v34 = *(v33 + 64);
  __chkstk_darwin(v32);
  sub_10000D2F8();
  v154 = v35;
  sub_100022894();
  __chkstk_darwin(v36);
  v38 = &v137 - v37;
  v156 = a1;
  if (a1)
  {
    v39 = OBJC_IVAR____TtC20remotepairingdeviced15MetadataService__deviceInfoIncludingSensitiveKeys;
  }

  else
  {
    v39 = OBJC_IVAR____TtC20remotepairingdeviced15MetadataService__deviceInfoExcludingSensitiveKeys;
  }

  v40 = v2 + v39;
  swift_beginAccess();
  sub_10004BE34(v40, v38, &qword_10009B320, &unk_1000782F0);
  if (sub_100022484(v38, 1, v11) != 1)
  {
    (*(v164 + 32))(a2, v38, v11);
    return;
  }

  sub_100022560(v38, &qword_10009B320, &unk_1000782F0);
  v41 = String._bridgeToObjectiveC()();
  v42 = MGCopyAnswer();

  if (!v42)
  {
    goto LABEL_34;
  }

  v153 = v2;
  *&v172 = v42;
  if ((sub_10000D964() & 1) == 0)
  {
    goto LABEL_34;
  }

  v43 = *(&v175 + 1);
  v151 = v175;
  v44 = String._bridgeToObjectiveC()();
  v45 = MGCopyAnswer();

  if (!v45 || (v152 = v43, *&v172 = v45, (sub_10000D964() & 1) == 0))
  {
LABEL_33:

LABEL_34:
    sub_10004BD80(&unk_10009A0D0);
    static Error<>.dataCorrupted.getter();
    sub_10004BD80(&qword_100099850);
    swift_allocError();
    Error<>.init(_:_:)();
    swift_willThrow();
    return;
  }

  v46 = *(&v175 + 1);
  v145 = v175;
  v47 = String._bridgeToObjectiveC()();
  v48 = MGCopyAnswer();

  if (!v48 || (*&v172 = v48, (sub_10000D964() & 1) == 0))
  {

    goto LABEL_33;
  }

  v140 = v46;
  v144 = *(&v175 + 1);
  v138 = v175;
  v49 = v153;
  sub_10004B6D0();
  v50 = objc_allocWithZone(type metadata accessor for DeviceKeyValueStore());
  v165 = DeviceKeyValueStore.init(copyingValuesFrom:)();
  v51 = v49[5];
  v139 = sub_10004C6C8();
  v54 = v52 + 64;
  v53 = *(v52 + 64);
  v55 = *(v52 + 32);
  sub_10004C1FC();
  v58 = v57 & v56;
  v60 = (v59 + 63) >> 6;
  v157 = v167 + 16;
  v168 = (v167 + 32);
  v159 = (v167 + 8);
  v148 = v61;

  v62 = 0;
  v143 = v4;
  v142 = a2;
  v141 = v11;
  v63 = v166;
  v146 = v60;
  v147 = v54;
  if (!v58)
  {
    goto LABEL_13;
  }

  while (2)
  {
    v64 = v62;
LABEL_16:
    v150 = (v58 - 1) & v58;
    v149 = v64;
    v65 = __clz(__rbit64(v58)) | (v64 << 6);
    v66 = (*(v148 + 48) + 16 * v65);
    v67 = *(*(v148 + 56) + 8 * v65);
    v68 = v66[1];
    v161 = *v66;
    v70 = v67 + 64;
    v69 = *(v67 + 64);
    v71 = *(v67 + 32);
    sub_10004C1FC();
    v74 = v73 & v72;
    v163 = (v75 + 63) >> 6;
    v162 = v76;

    v158 = v67;

    v77 = 0;
    for (i = v67 + 64; ; v70 = i)
    {
      if (!v74)
      {
        v79 = v169;
        while (1)
        {
          v78 = v77 + 1;
          if (__OFADD__(v77, 1))
          {
            break;
          }

          if (v78 >= v163)
          {
            v100 = sub_100013414(&qword_10009B330, &unk_100078300);
            sub_1000223E8(v79, 1, 1, v100);
            v74 = 0;
            goto LABEL_25;
          }

          v74 = *(v70 + 8 * v78);
          ++v77;
          if (v74)
          {
            v77 = v78;
            goto LABEL_24;
          }
        }

        __break(1u);
        goto LABEL_38;
      }

      v78 = v77;
LABEL_24:
      v80 = __clz(__rbit64(v74));
      v74 &= v74 - 1;
      v81 = *(v158 + 56);
      v82 = (*(v158 + 48) + 16 * (v80 | (v78 << 6)));
      v84 = *v82;
      v83 = v82[1];
      v85 = v167;
      v86 = *(v167 + 72);
      v87 = *(v167 + 16);
      v88 = sub_10004C234();
      v89(v88);
      v90 = sub_100013414(&qword_10009B330, &unk_100078300);
      v91 = *(v90 + 48);
      v92 = v169;
      *v169 = v84;
      *(v92 + 1) = v83;
      v79 = v92;
      (*(v85 + 32))(&v92[v91], a2, &type metadata for Swift.AnyObject);
      sub_1000223E8(v79, 0, 1, v90);

      v63 = v166;
LABEL_25:
      sub_10004BDC4(v79, v63);
      v93 = sub_100013414(&qword_10009B330, &unk_100078300);
      if (sub_100022484(v63, 1, v93) == 1)
      {
        break;
      }

      v94 = *v63;
      v95 = v63[1];
      v96 = *(v93 + 48);
      v97 = *v168;
      v98 = sub_10004C234();
      v99(v98);

      sub_10004AB68(&v175);
      dispatch thunk of DeviceKeyValueStore.setValue(_:_:_:sensitive:)();

      sub_10000CADC(&v175);
      (*v159)(a2, &type metadata for Swift.AnyObject);
    }

    v62 = v149;
    v49 = v153;
    v54 = v147;
    v60 = v146;
    v58 = v150;
    if (v150)
    {
      continue;
    }

    break;
  }

  while (1)
  {
LABEL_13:
    v64 = v62 + 1;
    if (__OFADD__(v62, 1))
    {
      goto LABEL_64;
    }

    if (v64 >= v60)
    {
      break;
    }

    v58 = *(v54 + 8 * v64);
    ++v62;
    if (v58)
    {
      goto LABEL_16;
    }
  }

  v101 = *sub_10001355C(v49 + 7, v49[10]);
  v102 = sub_100027F7C();
  v103 = sub_10004B5B4(v102 & 0xFFFFFF);
  v177 = v103;
  if (v103)
  {
    v104 = v103;
    goto LABEL_39;
  }

LABEL_38:
  v104 = Dictionary.init(dictionaryLiteral:)();
LABEL_39:
  v105 = *(v104 + 64);
  v106 = *(v104 + 32);
  sub_10004C218();
  v109 = v108 & v107;
  v111 = (v110 + 63) >> 6;
  v170 = v112;

  v113 = 0;
  if (!v109)
  {
    goto LABEL_41;
  }

  do
  {
    v114 = v113;
LABEL_45:
    v115 = __clz(__rbit64(v109));
    v109 &= v109 - 1;
    v116 = v115 | (v114 << 6);
    v117 = (*(v104 + 48) + 16 * v116);
    v119 = *v117;
    v118 = v117[1];
    sub_10000CA80(*(v104 + 56) + 32 * v116, &v171);
    *&v172 = v119;
    *(&v172 + 1) = v118;
    sub_10000E8A4(&v171, &v173);

LABEL_46:
    v175 = v172;
    v176[0] = v173;
    v176[1] = v174;
    if (!*(&v172 + 1))
    {
      v120 = v177 != 0;

      *(&v176[0] + 1) = &type metadata for Bool;
      LOBYTE(v175) = v139 && v120;
      dispatch thunk of DeviceKeyValueStore.setValue(_:_:_:sensitive:)();
      sub_10000CADC(&v175);
      v121 = String._bridgeToObjectiveC()();
      v122 = MGCopyAnswer();

      v123 = v143;
      v124 = v142;
      v125 = v141;
      v126 = v153;
      v127 = v156;
      if (v122)
      {
        objc_opt_self();
        v128 = swift_dynamicCastObjCClass();
        if (v128)
        {
          [v128 unsignedLongLongValue];
          swift_unknownObjectRelease();
LABEL_55:
          if ((v127 & 1) == 0)
          {

            v138 = 0;
            v144 = 0xE000000000000000;
          }

          v130 = v165;
          dispatch thunk of DeviceKeyValueStore.data(includeSensitive:)();
          if (v123)
          {
          }

          else
          {
            v131 = v155;
            PeerDeviceInfo.init(name:model:udid:ecid:deviceKVSData:deviceKVSIncludesSensitiveInfo:)();

            v132 = v164;
            v133 = v125;
            v134 = v154;
            (*(v164 + 16))();
            sub_1000223E8(v134, 0, 1, v133);
            if (v127)
            {
              v135 = OBJC_IVAR____TtC20remotepairingdeviced15MetadataService__deviceInfoIncludingSensitiveKeys;
            }

            else
            {
              v135 = OBJC_IVAR____TtC20remotepairingdeviced15MetadataService__deviceInfoExcludingSensitiveKeys;
            }

            v136 = v153;
            sub_10001ADBC();
            swift_beginAccess();
            sub_10004BD10(v134, v136 + v135);
            swift_endAccess();
            (*(v132 + 32))(v124, v131, v133);
          }

          return;
        }

        swift_unknownObjectRelease();
      }

      static os_log_type_t.info.getter();
      v129 = v126[2];
      os_log(_:dso:log:_:_:)();
      goto LABEL_55;
    }

    sub_10000E8A4(v176, &v172);
    dispatch thunk of DeviceKeyValueStore.setValue(_:_:_:sensitive:)();

    sub_10000CADC(&v172);
  }

  while (v109);
LABEL_41:
  while (1)
  {
    v114 = v113 + 1;
    if (__OFADD__(v113, 1))
    {
      break;
    }

    if (v114 >= v111)
    {
      v109 = 0;
      v173 = 0u;
      v174 = 0u;
      v172 = 0u;
      goto LABEL_46;
    }

    v109 = *(v104 + 64 + 8 * v114);
    ++v113;
    if (v109)
    {
      v113 = v114;
      goto LABEL_45;
    }
  }

  __break(1u);
LABEL_64:
  __break(1u);
}

_OWORD *sub_10004AB68@<X0>(_OWORD *a1@<X8>)
{
  v125 = a1;
  v122 = sub_100013414(&qword_10009B330, &unk_100078300);
  v2 = sub_10000CC04(v122);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  sub_10000D2F8();
  v121 = v5;
  sub_100022894();
  __chkstk_darwin(v6);
  v123 = (&v113 - v7);
  v8 = type metadata accessor for AuxiliaryMetadataItem();
  v9 = sub_10000CBBC(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v9);
  sub_10000D2F8();
  v117 = v14;
  sub_100022894();
  __chkstk_darwin(v15);
  v124 = &v113 - v16;
  sub_100022894();
  __chkstk_darwin(v17);
  v116 = (&v113 - v18);
  sub_100022894();
  v20 = __chkstk_darwin(v19);
  v22 = (&v113 - v21);
  v23 = __chkstk_darwin(v20);
  v25 = &v113 - v24;
  v26 = __chkstk_darwin(v23);
  v28 = &v113 - v27;
  v29 = __chkstk_darwin(v26);
  v31 = &v113 - v30;
  v32 = __chkstk_darwin(v29);
  v34 = &v113 - v33;
  __chkstk_darwin(v32);
  v36 = &v113 - v35;
  v37 = *(v11 + 16);
  v38 = v1;
  v40 = v39;
  v37(&v113 - v35, v38, v39);
  v41 = (*(v11 + 88))(v36, v40);
  if (v41 == enum case for AuxiliaryMetadataItem.BOOLean(_:))
  {
    v37(v34, v36, v40);
    (*(v11 + 96))(v34, v40);
    LOBYTE(v127) = *(*v34 + 16);
    goto LABEL_7;
  }

  v118 = v36;
  v119 = v37;
  v120 = v11;
  if (v41 == enum case for AuxiliaryMetadataItem.int(_:))
  {
    sub_10004C1CC();
    v42();
    sub_10004C1BC();
    v43(v31, v40);
    v127 = *(*v31 + 16);
    goto LABEL_7;
  }

  if (v41 == enum case for AuxiliaryMetadataItem.float(_:))
  {
    sub_10004C1CC();
    v44();
    sub_10004C1BC();
    v45(v28, v40);
    v127 = *(*v28 + 16);
LABEL_7:
    if (sub_10004C1DC())
    {
      sub_10000E8A4(v126, v129);
LABEL_9:

LABEL_10:
      (*(v11 + 8))(v36, v40);
      return sub_10000E8A4(v129, v125);
    }

LABEL_48:

    goto LABEL_49;
  }

  if (v41 == enum case for AuxiliaryMetadataItem.string(_:))
  {
    sub_10004C1CC();
    v47();
    sub_10004C1BC();
    v48(v25, v40);
    v49 = *(*v25 + 24);
    v127 = *(*v25 + 16);
    v128 = v49;

    if (sub_10004C1DC())
    {
      sub_10000E8A4(v126, v129);

      goto LABEL_10;
    }

    goto LABEL_45;
  }

  if (v41 == enum case for AuxiliaryMetadataItem.data(_:))
  {
    sub_10004C1CC();
    v50();
    sub_10004C1BC();
    v51 = sub_10000D4B0();
    v52(v51);
    v53 = *v22;
    v54 = *(v53 + 24);
    v127 = *(v53 + 16);
    v128 = v54;
    sub_10000E228(v127, v54);
    if (sub_10004C1DC())
    {
      sub_10000E8A4(v126, v129);
      sub_10000DF50(v127, v128);
      goto LABEL_9;
    }

LABEL_47:
    sub_10000DF50(v127, v128);
    goto LABEL_48;
  }

  v55 = v40;
  v115 = v40;
  if (v41 != enum case for AuxiliaryMetadataItem.array(_:))
  {
    if (v41 != enum case for AuxiliaryMetadataItem.dictionary(_:))
    {
LABEL_49:
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    v72 = v117;
    v119(v117, v118, v55);
    v73 = v120 + 96;
    (*(v120 + 96))(v72, v55);
    v113 = *v72;
    v74 = *(v113 + 16);

    v75 = Dictionary.init(dictionaryLiteral:)();
    v76 = sub_100013414(&qword_100099A20, &unk_100078310);
    *(v125 + 3) = v76;
    v78 = v74 + 64;
    v77 = *(v74 + 8);
    v79 = v74[32];
    sub_10004C218();
    v82 = v81 & v80;
    v84 = (v83 + 63) >> 6;
    v117 = (v73 - 88);
    v124 = v74;

    v85 = 0;
    v116 = (v74 + 64);
    v114 = v84;
    if (v82)
    {
      goto LABEL_30;
    }

    do
    {
LABEL_26:
      v86 = v85 + 1;
      if (__OFADD__(v85, 1))
      {
        __break(1u);
        goto LABEL_43;
      }

      if (v86 >= v84)
      {

        *v125 = v75;
        return (*v117)(v118, v55);
      }

      v82 = *&v78[8 * v86];
      ++v85;
    }

    while (!v82);
    v85 = v86;
LABEL_30:
    while (1)
    {
      v87 = __clz(__rbit64(v82)) | (v85 << 6);
      v88 = v123;
      v89 = (*(v124 + 6) + 16 * v87);
      v90 = *v89;
      v91 = v89[1];
      v119((v123 + *(v122 + 48)), (*(v124 + 7) + *(v120 + 72) * v87), v55);
      *v88 = v90;
      v88[1] = v91;
      v92 = v121;
      sub_10004BE34(v88, v121, &qword_10009B330, &unk_100078300);
      v94 = *v92;
      v93 = v92[1];

      sub_10004AB68(v129, v95);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v126[0] = v75;
      v97 = sub_10004FEF0(v94, v93);
      v99 = v75[2];
      v100 = (v98 & 1) == 0;
      v101 = v99 + v100;
      if (__OFADD__(v99, v100))
      {
        break;
      }

      v102 = v97;
      v103 = v98;
      sub_100013414(&qword_10009B0C0, &unk_100077550);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v101))
      {
        v104 = sub_10004FEF0(v94, v93);
        if ((v103 & 1) != (v105 & 1))
        {
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          goto LABEL_47;
        }

        v102 = v104;
      }

      if (v103)
      {

        v75 = *&v126[0];
        v106 = (*(*&v126[0] + 56) + 32 * v102);
        sub_10000CADC(v106);
        sub_10000E8A4(v129, v106);
        sub_100022560(v123, &qword_10009B330, &unk_100078300);
      }

      else
      {
        v75 = *&v126[0];
        *(*&v126[0] + 8 * (v102 >> 6) + 64) |= 1 << v102;
        v107 = (v75[6] + 16 * v102);
        *v107 = v94;
        v107[1] = v93;
        sub_10000E8A4(v129, (v75[7] + 32 * v102));
        sub_100022560(v123, &qword_10009B330, &unk_100078300);
        v108 = v75[2];
        v109 = __OFADD__(v108, 1);
        v110 = v108 + 1;
        if (v109)
        {
          goto LABEL_44;
        }

        v75[2] = v110;
      }

      v55 = v115;
      v78 = v116;
      v84 = v114;
      v82 &= v82 - 1;
      (*v117)(v121 + *(v122 + 48), v115);
      if (!v82)
      {
        goto LABEL_26;
      }
    }

LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:

    goto LABEL_49;
  }

  v56 = v116;
  v57 = v119;
  v119(v116, v118, v40);
  v58 = v120;
  (*(v120 + 96))(v56, v40);
  v59 = *v56;
  v60 = *(*v56 + 16);
  v61 = *(v60 + 16);
  v62 = _swiftEmptyArrayStorage;
  if (v61)
  {
    v123 = v59;
    *&v126[0] = _swiftEmptyArrayStorage;

    sub_10004BF18(0, v61, 0);
    v62 = *&v126[0];
    v63 = (*(v58 + 80) + 32) & ~*(v58 + 80);
    v122 = v60;
    v64 = v60 + v63;
    v65 = *(v58 + 72);
    v66 = (v58 + 8);
    do
    {
      v67 = v124;
      v68 = v115;
      v69 = v57(v124, v64, v115);
      sub_10004AB68(v129, v69);
      (*v66)(v67, v68);
      *&v126[0] = v62;
      v71 = v62[2];
      v70 = v62[3];
      if (v71 >= v70 >> 1)
      {
        sub_10004BF18((v70 > 1), v71 + 1, 1);
        v62 = *&v126[0];
      }

      v62[2] = (v71 + 1);
      sub_10000E8A4(v129, &v62[4 * v71 + 4]);
      v64 += v65;
      --v61;
    }

    while (v61);
  }

  v111 = sub_100013414(&qword_100099A30, &qword_100078320);
  v112 = v125;
  *(v125 + 3) = v111;

  *v112 = v62;
  return (*(v120 + 8))(v118, v115);
}

uint64_t sub_10004B5B4(int a1)
{
  if (a1 == 2)
  {
    return 0;
  }

  if (a1 != 3)
  {
    sub_100013414(&qword_100099A08, &qword_100077548);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000773B0;
    *(inited + 32) = 0xD000000000000013;
    *(inited + 40) = 0x8000000100080670;
    *(inited + 48) = BYTE1(a1) & 1;
    *(inited + 72) = &type metadata for Bool;
    *(inited + 80) = 0xD000000000000015;
    *(inited + 88) = 0x8000000100080690;
    *(inited + 96) = a1 & 1;
    *(inited + 120) = &type metadata for Bool;
    *(inited + 128) = 0xD000000000000011;
    *(inited + 136) = 0x80000001000806B0;
    *(inited + 168) = &type metadata for Bool;
    *(inited + 144) = BYTE2(a1) & 1;
  }

  return Dictionary.init(dictionaryLiteral:)();
}

id sub_10004B6D0()
{
  v1 = v0[19];
  if (v1)
  {
    v2 = v0[19];
  }

  else
  {
    v3 = v0;
    v4 = v0[13];
    v5 = v0[14];
    v6 = v4();
    v7 = v3[19];
    v3[19] = v6;
    v2 = v6;

    v1 = 0;
  }

  v8 = v1;
  return v2;
}

uint64_t sub_10004B74C()
{
  v1 = sub_100013414(&qword_10009B320, &unk_1000782F0);
  v2 = sub_10000D368(v1);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v16 - v5;
  static os_log_type_t.default.getter();
  v7 = v0[2];
  os_log(_:dso:log:_:_:)();
  v8 = v0[19];
  v0[19] = 0;

  type metadata accessor for PeerDeviceInfo();
  sub_10000EE54();
  v9 = OBJC_IVAR____TtC20remotepairingdeviced15MetadataService__deviceInfoIncludingSensitiveKeys;
  sub_10001ADBC();
  swift_beginAccess();
  sub_10004BD10(v6, v0 + v9);
  swift_endAccess();
  sub_10000EE54();
  v10 = OBJC_IVAR____TtC20remotepairingdeviced15MetadataService__deviceInfoExcludingSensitiveKeys;
  sub_10001ADBC();
  swift_beginAccess();
  sub_10004BD10(v6, v0 + v10);
  result = swift_endAccess();
  v12 = v0[3];
  if (v12)
  {
    v13 = v0[4];

    v12(v14);
    v15 = sub_10000D4B0();
    return sub_10000FAC8(v15);
  }

  return result;
}

uint64_t sub_10004B8AC()
{
  v1 = sub_100013414(&qword_10009B320, &unk_1000782F0);
  v2 = sub_10000D368(v1);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v15 - v5;
  static os_log_type_t.default.getter();
  v7 = v0[2];
  os_log(_:dso:log:_:_:)();
  type metadata accessor for PeerDeviceInfo();
  sub_10000EE54();
  v8 = OBJC_IVAR____TtC20remotepairingdeviced15MetadataService__deviceInfoIncludingSensitiveKeys;
  sub_10001ADBC();
  swift_beginAccess();
  sub_10004BD10(v6, v0 + v8);
  swift_endAccess();
  sub_10000EE54();
  v9 = OBJC_IVAR____TtC20remotepairingdeviced15MetadataService__deviceInfoExcludingSensitiveKeys;
  sub_10001ADBC();
  swift_beginAccess();
  sub_10004BD10(v6, v0 + v9);
  result = swift_endAccess();
  v11 = v0[3];
  if (v11)
  {
    v12 = v0[4];

    v11(v13);
    v14 = sub_10000D4B0();
    return sub_10000FAC8(v14);
  }

  return result;
}

uint64_t sub_10004B9E0()
{
  v1 = OBJC_IVAR____TtC20remotepairingdeviced15MetadataService__userAssignedNameDarwinNotificationToken;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 != -1)
  {
    notify_cancel(v2);
    *(v0 + v1) = -1;
  }

  v3 = OBJC_IVAR____TtC20remotepairingdeviced15MetadataService__developerModeStatusDarwinNotificationToken;
  swift_beginAccess();
  v4 = *(v0 + v3);
  if (v4 != -1)
  {
    notify_cancel(v4);
    *(v0 + v3) = -1;
  }

  v5 = *(v0 + 32);
  sub_10000FAC8(*(v0 + 24));
  v6 = *(v0 + 40);
  swift_unknownObjectRelease();
  sub_10000CADC((v0 + 56));

  v7 = *(v0 + 112);

  v8 = *(v0 + 128);

  v9 = *(v0 + 144);

  sub_100022560(v0 + OBJC_IVAR____TtC20remotepairingdeviced15MetadataService__deviceInfoIncludingSensitiveKeys, &qword_10009B320, &unk_1000782F0);
  sub_100022560(v0 + OBJC_IVAR____TtC20remotepairingdeviced15MetadataService__deviceInfoExcludingSensitiveKeys, &qword_10009B320, &unk_1000782F0);
  return v0;
}

uint64_t sub_10004BB00()
{
  sub_10004B9E0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for MetadataService()
{
  result = qword_10009B168;
  if (!qword_10009B168)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10004BBAC()
{
  sub_10004BC94();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_10004BC94()
{
  if (!qword_10009B178)
  {
    type metadata accessor for PeerDeviceInfo();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10009B178);
    }
  }
}

uint64_t sub_10004BD10(uint64_t a1, uint64_t a2)
{
  v4 = sub_100013414(&qword_10009B320, &unk_1000782F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004BD80(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RemotePairingError();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10004BDC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100013414(&qword_10009B328, &unk_100078450);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004BE34(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_100013414(a3, a4);
  sub_10000CC04(v5);
  v7 = *(v6 + 16);
  v8 = sub_10000D4B0();
  v9(v8);
  return a2;
}

void *sub_10004BE90(void *a1, int64_t a2, char a3)
{
  result = sub_10004BF38(a1, a2, a3, *v3, &qword_10009B340, &unk_100078330, sub_100054F8C);
  *v3 = result;
  return result;
}

void *sub_10004BED4(void *a1, int64_t a2, char a3)
{
  result = sub_10004BF38(a1, a2, a3, *v3, &qword_10009B348, &qword_100078340, sub_100054F8C);
  *v3 = result;
  return result;
}

id *sub_10004BF18(id *a1, int64_t a2, char a3)
{
  result = sub_10004C050(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10004BF38(void *result, int64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(uint64_t, int64_t, void *))
{
  v9 = result;
  if ((a3 & 1) == 0)
  {
    v11 = a2;
    goto LABEL_8;
  }

  v10 = *(a4 + 24);
  v11 = v10 >> 1;
  if ((v10 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v11 + 0x4000000000000000 >= 0)
  {
    v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
    if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v11 = a2;
    }

LABEL_8:
    v12 = *(a4 + 16);
    if (v11 <= v12)
    {
      v13 = *(a4 + 16);
    }

    else
    {
      v13 = v11;
    }

    if (v13)
    {
      sub_100013414(a5, a6);
      v14 = swift_allocObject();
      v15 = j__malloc_size(v14);
      v14[2] = v12;
      v14[3] = 2 * ((v15 - 32) / 16);
      if (v9)
      {
LABEL_13:
        a7(a4 + 32, v12, v14 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v14;
      }
    }

    else
    {
      v14 = &_swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_100013414(&unk_100099DC0, &unk_100077860);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

id *sub_10004C050(id *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_100013414(&qword_10009B338, &qword_100078328);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      v10[2] = v8;
      v10[3] = (2 * ((v11 - 32) / 32));
      if (v5)
      {
LABEL_13:
        sub_100054A30((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_10004C1DC()
{

  return swift_dynamicCast();
}

uint64_t sub_10004C234()
{
  result = *(v0 - 248);
  v2 = *(v0 - 72);
  return result;
}

_OWORD *sub_10004C248(uint64_t a1, int a2)
{
  v3 = v2;
  if (*(a1 + 24))
  {
    sub_10000E8A4(a1, v16);
    v5 = *v2;
    swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    result = sub_100069218();
    *v2 = v14;
  }

  else
  {
    sub_100022560(a1, &qword_100099A00, &qword_100077540);
    v7 = *v2;
    v8 = sub_100064190(a2);
    if (v9)
    {
      v10 = v8;
      v11 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v15 = *v3;
      v13 = *(*v3 + 24);
      sub_100013414(&qword_10009BE90, &qword_100078468);
      _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v13);
      sub_10000E8A4((*(v15 + 56) + 32 * v10), v16);
      _NativeDictionary._delete(at:)();
      *v3 = v15;
    }

    else
    {
      memset(v16, 0, sizeof(v16));
    }

    return sub_100022560(v16, &qword_100099A00, &qword_100077540);
  }

  return result;
}

uint64_t sub_10004C390(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_100013414(&qword_10009B4E8, &qword_100078440);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v24 - v10;
  v12 = type metadata accessor for XPCEventPublisher.Token();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_100022484(a1, 1, v12) == 1)
  {
    sub_100022560(a1, &qword_10009B4E8, &qword_100078440);
    sub_10006889C();

    return sub_100022560(v11, &qword_10009B4E8, &qword_100078440);
  }

  else
  {
    (*(v13 + 32))(v16, a1, v12);
    v18 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1000694B8(v16, a2, a3, isUniquelyReferenced_nonNull_native, v20, v21, v22, v23, v24[0], *v4);

    *v4 = v24[1];
  }

  return result;
}

double sub_10004C55C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_10004FEF0(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_10000CA80(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

double sub_10004C5C0@<D0>(uint64_t a1@<X1>, _OWORD *a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_100063FD8(), (v5 & 1) != 0))
  {
    v6 = *(a1 + 56) + 32 * v4;

    sub_10000CA80(v6, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_10004C624(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_100064018();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(a2 + 56) + 8 * v3);
}

uint64_t sub_10004C674(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_10004FEF0(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
}

BOOL sub_10004C6C8()
{
  if (*(v0 + 72) == 1)
  {
    sub_10000EB00();
    swift_beginAccess();
    v1 = *(*(v0 + 96) + 16);
    sub_10000EB00();
    swift_beginAccess();
    v2 = v1 == *(*(v0 + 80) + 16);
  }

  else
  {
    v2 = 0;
  }

  sub_10000EB00();
  swift_beginAccess();
  v3 = *(v0 + 96);

  return v2;
}

uint64_t sub_10004C75C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  sub_10004F60C();
  *(v4 + 16) = OS_os_log.init(subsystem:category:)();
  type metadata accessor for XPCEventPublisher.Token();
  sub_10004F67C(&qword_10009BE50, &type metadata accessor for XPCEventPublisher.Token);
  *(v4 + 56) = 0;
  *(v4 + 64) = 0;
  *(v4 + 72) = 0;
  *(v4 + 80) = Dictionary.init(dictionaryLiteral:)();
  sub_10004F6E8();
  *(v4 + 88) = Dictionary.init(dictionaryLiteral:)();
  sub_100013414(&qword_10009B500, &qword_100078460);
  sub_10004F6E8();
  *(v4 + 96) = Dictionary.init(dictionaryLiteral:)();
  v10 = static AuxiliaryMetadataProvider.XPCKeys.xpcEventStreamName.getter();
  v12 = v11;
  v13 = *(a3 + 8);
  v14 = a1;
  v15 = v13(v10, v12, v14, a2, a3);
  if (v15)
  {
    v5[4] = v15;
    v5[5] = a3;
    v5[3] = v14;
    if (a4)
    {
      v16 = v14;
      swift_unknownObjectRetain();
      v17 = a4;
    }

    else
    {
      type metadata accessor for RemotePairingDeviceXPCServer();
      v18 = v14;
      swift_unknownObjectRetain();
      v19 = static MachServiceNames.auxiliaryMetadata.getter();
      v17 = sub_10002F960(v19, v20, v18);
    }

    v5[6] = v17;
    sub_10000CBD0();
    swift_allocObject();
    swift_weakInit();

    dispatch thunk of XPCEventPublisher.setErrorHandler(_:)();

    sub_10000CBD0();
    swift_allocObject();
    swift_weakInit();

    dispatch thunk of XPCEventPublisher.setHandler(_:)();

    v21 = *(v5[6] + 16);
    sub_10000CBD0();
    swift_allocObject();
    swift_weakInit();

    type metadata accessor for AuxiliaryMetadataUpdate();
    type metadata accessor for EmptyResponse();
    sub_10004F67C(&qword_10009B508, &type metadata accessor for AuxiliaryMetadataUpdate);
    sub_10004F67C(&qword_10009B510, &type metadata accessor for AuxiliaryMetadataUpdate);
    sub_10004F67C(&qword_10009A128, &type metadata accessor for EmptyResponse);
    sub_10004F67C(&qword_10009A130, &type metadata accessor for EmptyResponse);
    dispatch thunk of CodableDispatcher.register<A, B>(handler:)();

    swift_unknownObjectRelease();

    return v5;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_10004CBBC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10004EEBC();
  }

  return result;
}

uint64_t sub_10004CC1C(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10004D9B4(a1);
  }

  return result;
}

uint64_t sub_10004CC7C(NSObject *a1)
{
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    return EmptyResponse.init()();
  }

  v3 = *(sub_100013414(&qword_100099488, &unk_100077650) + 48);
  sub_10004CD64(a1);

  if (!v1)
  {
    return EmptyResponse.init()();
  }

  return result;
}

uint64_t sub_10004CD30()
{
  v1 = v0;
  v2 = *(v0 + 32);
  dispatch thunk of XPCEventPublisher.activate()();
  v3 = *(*(v1 + 48) + 24);
  return dispatch thunk of XPCConnection.activate()();
}

uint64_t sub_10004CD64(NSObject *a1)
{
  v130 = a1;
  v126 = type metadata accessor for RemotePairingError();
  v2 = sub_10000CC04(v126);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  sub_10000CBDC();
  v127 = (v6 - v5);
  v7 = type metadata accessor for AuxiliaryMetadataUpdate();
  v8 = sub_10000CBBC(v7);
  v128 = v9;
  v11 = *(v10 + 64);
  __chkstk_darwin(v8);
  sub_10000EDF0();
  v14 = v12 - v13;
  v16 = __chkstk_darwin(v15);
  v18 = &v120 - v17;
  __chkstk_darwin(v16);
  sub_10000D984();
  __chkstk_darwin(v19);
  sub_10000D984();
  __chkstk_darwin(v20);
  sub_10000D984();
  __chkstk_darwin(v21);
  v124 = &v120 - v22;
  v23 = type metadata accessor for XPCDictionary();
  v24 = sub_10000CBBC(v23);
  v26 = v25;
  v28 = *(v27 + 64);
  __chkstk_darwin(v24);
  sub_10000CBDC();
  v31 = v30 - v29;
  XPCDictionary.auditToken.getter();
  v123 = v1;
  if (v134)
  {
    v125 = -1;
  }

  else
  {
    v125 = audit_token_t.processIdentifier.getter();
  }

  XPCDictionary.entitlements.getter();
  v32 = XPCDictionary.subscript.getter();
  (*(v26 + 8))(v31, v23);
  if (v32 == 2 || (v32 & 1) == 0)
  {
    v66 = static os_log_type_t.error.getter();
    v67 = v128;
    v68 = *(v129 + 16);
    (*(v128 + 16))(v14, v130, v7);
    if (os_log_type_enabled(v68, v66))
    {
      v69 = swift_slowAlloc();
      sub_10000CCCC();
      v70 = swift_slowAlloc();
      v133[0] = v70;
      *v69 = 136315394;
      v71 = AuxiliaryMetadataUpdate.domain.getter();
      v72 = v67;
      v74 = v73;
      (*(v72 + 8))(v14, v7);
      v75 = sub_10000C600(v71, v74, v133);

      *(v69 + 4) = v75;
      sub_10000CC80();
      sub_10000D4BC(&_mh_execute_header, v76, v77, "Received metadata update for domain %s from unentitled client pid/%d. Rejecting");
      sub_10000CADC(v70);
      sub_100015FBC();

      sub_10000EE00();
    }

    else
    {
      (*(v67 + 8))(v14, v7);
    }

    sub_10004F6C4();
    sub_10004F67C(v78, v66);
    static Error<>.permissionDenied.getter();
    v133[0] = 0;
    v133[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(83);
    v79._countAndFlagsBits = 0xD000000000000031;
    v79._object = 0x8000000100080820;
    String.append(_:)(v79);
    v80._countAndFlagsBits = AuxiliaryMetadataUpdate.domain.getter();
    String.append(_:)(v80);

    v81._countAndFlagsBits = 0xD00000000000001ELL;
    v81._object = 0x8000000100080860;
    String.append(_:)(v81);
    v82._object = 0x80000001000807F0;
    v82._countAndFlagsBits = 0xD00000000000002BLL;
    String.append(_:)(v82);
    sub_10004F67C(&qword_100099850, v66);
    swift_allocError();
    goto LABEL_16;
  }

  v33 = v129;
  sub_10000EB00();
  swift_beginAccess();
  v34 = v33[11];

  v35 = AuxiliaryMetadataUpdate.domain.getter();
  if (!*(v34 + 16))
  {

    goto LABEL_19;
  }

  sub_10004FEF0(v35, v36);
  v38 = v37;

  if ((v38 & 1) == 0)
  {
LABEL_19:
    v83 = static os_log_type_t.error.getter();
    v84 = v33[2];
    v85 = v128;
    (*(v128 + 16))(v18, v130, v7);
    if (os_log_type_enabled(v84, v83))
    {
      v86 = swift_slowAlloc();
      sub_10000CCCC();
      v87 = v85;
      v88 = swift_slowAlloc();
      v132[0] = v88;
      *v86 = 136315394;
      v89 = AuxiliaryMetadataUpdate.domain.getter();
      v91 = v90;
      (*(v87 + 8))(v18, v7);
      v92 = sub_10000C600(v89, v91, v132);

      *(v86 + 4) = v92;
      sub_10000CC80();
      sub_10000D4BC(&_mh_execute_header, v93, v94, "Received metadata update for domain %s from client pid/%d without associated subscription. Rejecting");
      sub_10000CADC(v88);
      sub_100015FBC();

      sub_10000EE00();
    }

    else
    {
      (*(v85 + 8))(v18, v7);
    }

    static RemotePairingError.invalidInput.getter();
    v132[0] = 0;
    v132[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(84);
    v95._countAndFlagsBits = 0xD000000000000025;
    v95._object = 0x8000000100080880;
    String.append(_:)(v95);
    v96._countAndFlagsBits = AuxiliaryMetadataUpdate.domain.getter();
    String.append(_:)(v96);

    v97._countAndFlagsBits = 0xD00000000000002DLL;
    v97._object = 0x80000001000808B0;
    String.append(_:)(v97);
    sub_10004F6C4();
    sub_10004F67C(v98, 0xD00000000000002BLL);
    swift_allocError();
    sub_10004F67C(&unk_10009A0D0, 0xD00000000000002BLL);
LABEL_16:
    Error<>.init(_:_:)();
    return swift_willThrow();
  }

  v39 = AuxiliaryMetadataUpdate.domain.getter();
  v41 = v40;
  sub_10000EB00();
  swift_beginAccess();
  v42 = v33[12];

  v43 = sub_10004C674(v39, v41, v42);

  v44 = AuxiliaryMetadataUpdate.metadata.getter();
  v45 = v128;
  if (v43)
  {
    v46 = sub_10004F06C(v43, v44);

    v47 = v124;
    if (v46)
    {
      v48 = static os_log_type_t.default.getter();
      v49 = v33[2];
      v50 = *(v45 + 16);
      v51 = v122;
      v50(v122, v130, v7);
      v52 = sub_10000D584(&v136);
      (v50)(v52);
      if (os_log_type_enabled(v49, v48))
      {
        v53 = swift_slowAlloc();
        v121 = v7;
        v54 = v53;
        v131[0] = swift_slowAlloc();
        *v54 = 136315650;
        v55 = AuxiliaryMetadataUpdate.domain.getter();
        v130 = v49;
        v56 = v51;
        v58 = v57;
        v59 = *(v45 + 8);
        v59(v56, v7);
        v60 = sub_10000C600(v55, v58, v131);

        *(v54 + 4) = v60;
        sub_10000CC80();
        *(v54 + 18) = 2080;
        AuxiliaryMetadataUpdate.metadata.getter();
        type metadata accessor for AuxiliaryMetadataItem();
        v61 = Dictionary.description.getter();
        v63 = v62;

        v59(v7, v121);
        v64 = sub_10000C600(v61, v63, v131);

        *(v54 + 20) = v64;
        _os_log_impl(&_mh_execute_header, v130, v48, "Received metadata update for domain %s from pid/%d but there is no change since last update: %s", v54, 0x1Cu);
        swift_arrayDestroy();
        sub_100015FBC();

        sub_10000EE00();
      }

      else
      {
        v119 = *(v45 + 8);
        v119(v7, v7);
        return (v119)(v51, v7);
      }
    }
  }

  else
  {

    v47 = v124;
  }

  v99 = static os_log_type_t.default.getter();
  v100 = v33[2];
  v101 = *(v45 + 16);
  v101(v47, v130, v7);
  v102 = sub_10000D584(&v137);
  (v101)(v102);
  LODWORD(v126) = v99;
  v127 = v100;
  if (os_log_type_enabled(v100, v99))
  {
    v103 = swift_slowAlloc();
    v131[0] = swift_slowAlloc();
    *v103 = 136315650;
    v104 = v124;
    v105 = AuxiliaryMetadataUpdate.domain.getter();
    v107 = v106;
    v108 = *(v45 + 8);
    v108(v104, v7);
    v109 = sub_10000C600(v105, v107, v131);

    *(v103 + 4) = v109;
    sub_10000CC80();
    *(v103 + 18) = 2080;
    AuxiliaryMetadataUpdate.metadata.getter();
    type metadata accessor for AuxiliaryMetadataItem();
    v110 = Dictionary.description.getter();
    v112 = v111;

    v108(v7, v7);
    v33 = v129;
    v113 = sub_10000C600(v110, v112, v131);

    *(v103 + 20) = v113;
    _os_log_impl(&_mh_execute_header, v127, v126, "Received metadata update for domain %s from pid/%d: %s", v103, 0x1Cu);
    swift_arrayDestroy();
    sub_100015FBC();

    sub_10000EE00();
  }

  else
  {
    v114 = *(v45 + 8);
    v114(v7, v7);
    v114(v124, v7);
  }

  AuxiliaryMetadataUpdate.domain.getter();
  AuxiliaryMetadataUpdate.metadata.getter();
  sub_10001ADBC();
  swift_beginAccess();
  v115 = v33[12];
  swift_isUniquelyReferenced_nonNull_native();
  v135 = v33[12];
  sub_10006972C();
  v33[12] = v135;

  result = swift_endAccess();
  v116 = v33[7];
  if (v116)
  {
    v117 = v33[8];

    v116(v118);
    return sub_10000FAC8(v116);
  }

  return result;
}

uint64_t sub_10004D9B4(uint64_t a1)
{
  v2 = type metadata accessor for XPCDictionary();
  v3 = sub_10000CBBC(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  sub_10000CBDC();
  v10 = v9 - v8;
  v11 = type metadata accessor for XPCEventPublisher.Token();
  v12 = sub_10000CBBC(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  __chkstk_darwin(v12);
  sub_10000EDF0();
  v62 = (v17 - v18);
  __chkstk_darwin(v19);
  v21 = &v61 - v20;
  v22 = type metadata accessor for XPCEventPublisher.SubscriptionAction();
  v23 = sub_10000CBBC(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  __chkstk_darwin(v23);
  sub_10000CBDC();
  v30 = v29 - v28;
  (*(v25 + 16))(v29 - v28, a1, v22);
  v31 = *(v25 + 88);
  v32 = sub_10004F6DC();
  result = v33(v32);
  if (result == enum case for XPCEventPublisher.SubscriptionAction.add(_:))
  {
    v35 = *(v25 + 96);
    v36 = sub_10004F6DC();
    v37(v36);
    v38 = *(sub_100013414(&qword_10009B4F0, &qword_100078448) + 48);
    v39 = *(v14 + 32);
    v40 = sub_10004F6E8();
    v41(v40);
    (*(v5 + 32))(v10, v30 + v38, v2);
    sub_10004DD88(v21, v10);
    (*(v5 + 8))(v10, v2);
    return (*(v14 + 8))(v21, v11);
  }

  v42 = v63;
  if (result == enum case for XPCEventPublisher.SubscriptionAction.remove(_:))
  {
    v43 = *(v25 + 96);
    v44 = sub_10004F6DC();
    v45(v44);
    v46 = *(v14 + 32);
    v21 = v62;
    v47 = sub_10004F6E8();
    v48(v47);
    sub_10001ADBC();
    swift_beginAccess();
    v49 = sub_1000689D0(v21);
    v51 = v50;
    swift_endAccess();
    if (v51)
    {
      sub_10001ADBC();
      swift_beginAccess();
      sub_100068AD8(v49, v51);
      swift_endAccess();

      v52 = *(v42 + 56);
      if (v52)
      {
        v53 = *(v42 + 64);

        v52(v54);
        sub_10000FAC8(v52);
      }
    }

    return (*(v14 + 8))(v21, v11);
  }

  if (result == enum case for XPCEventPublisher.SubscriptionAction.initialBarrier(_:))
  {
    *(v63 + 72) = 1;
    v55 = *(v42 + 56);
    if (v55)
    {
      v56 = *(v42 + 64);

      v55(v57);
      return sub_10000FAC8(v55);
    }
  }

  else
  {
    v58 = *(v25 + 8);
    v59 = sub_10004F6DC();
    return v60(v59);
  }

  return result;
}

uint64_t sub_10004DD88(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v46 = a1;
  v5 = type metadata accessor for XPCDictionary();
  v6 = sub_10000CBBC(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  sub_10000EDF0();
  v13 = (v11 - v12);
  __chkstk_darwin(v14);
  v16 = &v46 - v15;
  v17 = sub_100013414(&qword_10009B4E8, &qword_100078440);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v46 - v19;
  static AuxiliaryMetadataProvider.XPCKeys.domainKey.getter();
  v21 = XPCDictionary.subscript.getter();
  v23 = v22;

  if (v23)
  {
    sub_10000EB00();
    swift_beginAccess();
    if (*(v3[11] + 16) && (v24 = v3[11], , sub_10004FEF0(v21, v23), v26 = v25, , (v26 & 1) != 0))
    {
      v27 = static os_log_type_t.fault.getter();
      v28 = v3[2];
      if (os_log_type_enabled(v28, v27))
      {
        v29 = sub_10000D030();
        sub_10000CCCC();
        v30 = swift_slowAlloc();
        v48 = v30;
        *v29 = 136446210;
        v31 = sub_10000C600(v21, v23, &v48);

        *(v29 + 4) = v31;
        _os_log_impl(&_mh_execute_header, v28, v27, "Multiple subscribers have registered for ownership of domain %{public}s. Ignoring additional subscriber.", v29, 0xCu);
        sub_10000CADC(v30);
        sub_10000EE00();

LABEL_10:
        sub_100015FBC();
      }
    }

    else
    {
      sub_10001ADBC();
      swift_beginAccess();

      v32 = v3[10];
      swift_isUniquelyReferenced_nonNull_native();
      v47 = v3[10];
      v33 = v46;
      sub_1000695E4();
      v3[10] = v47;
      swift_endAccess();
      v34 = type metadata accessor for XPCEventPublisher.Token();
      sub_10000CC04(v34);
      (*(v35 + 16))(v20, v33, v34);
      sub_1000223E8(v20, 0, 1, v34);
      sub_10001ADBC();
      swift_beginAccess();

      sub_10004C390(v20, v21, v23);
      swift_endAccess();
      sub_10004E1BC(v33, v21, v23);
    }
  }

  v37 = static os_log_type_t.fault.getter();
  v38 = v3[2];
  v39 = *(v8 + 16);
  v39(v16, a2, v5);
  if (os_log_type_enabled(v38, v37))
  {
    v40 = sub_10000D030();
    sub_10000CCCC();
    v41 = swift_slowAlloc();
    v49 = v41;
    *v40 = 136315138;
    v39(v13, v16, v5);
    v42 = String.init<A>(describing:)();
    v44 = v43;
    (*(v8 + 8))(v16, v5);
    v45 = sub_10000C600(v42, v44, &v49);

    *(v40 + 4) = v45;
    _os_log_impl(&_mh_execute_header, v38, v37, "Invalid XPC event subscription descriptor. Could not read target domain from descriptor dictionary %s", v40, 0xCu);
    sub_10000CADC(v41);
    sub_100015FBC();

    goto LABEL_10;
  }

  return (*(v8 + 8))(v16, v5);
}

uint64_t sub_10004E1BC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v35 = *v3;
  v36 = a1;
  v33 = type metadata accessor for XPCEventPublisher.Token();
  v7 = sub_10000CBBC(v33);
  v9 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v7);
  v12 = v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for XPCDictionary();
  v13 = sub_10000CBBC(v34);
  v32 = v14;
  v16 = *(v15 + 64);
  __chkstk_darwin(v13);
  sub_10000CBDC();
  v19 = v18 - v17;
  XPCDictionary.init()();
  static AuxiliaryMetadataProvider.XPCKeys.domainKey.getter();

  v37 = a3;
  XPCDictionary.subscript.setter();
  v20 = static os_log_type_t.default.getter();
  v21 = v4[2];
  if (os_log_type_enabled(v21, v20))
  {
    v22 = sub_10000D030();
    sub_10000CCCC();
    v23 = swift_slowAlloc();
    v38 = v23;
    *v22 = 136446210;
    *(v22 + 4) = sub_10000C600(a2, v37, &v38);
    _os_log_impl(&_mh_execute_header, v21, v20, "Firing event to request metadata for domain %{public}s", v22, 0xCu);
    sub_10000CADC(v23);
    sub_100015FBC();

    sub_10000EE00();
  }

  v24 = v4[4];
  v31[1] = v4[3];
  v31[2] = v24;
  sub_10000CBD0();
  v25 = swift_allocObject();
  swift_weakInit();
  v26 = v33;
  (*(v9 + 16))(v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v36, v33);
  v27 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v28 = (v11 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  *(v29 + 2) = v25;
  *(v29 + 3) = a2;
  *(v29 + 4) = v37;
  (*(v9 + 32))(&v29[v27], v12, v26);
  *&v29[v28] = v35;

  dispatch thunk of XPCEventPublisher.fire(event:forToken:replyQueue:replyHandler:)();

  (*(v32 + 8))(v19, v34);
}

uint64_t sub_10004E4E8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v83 = a5;
  v86 = a4;
  v87 = a3;
  v85 = type metadata accessor for XPCError();
  v6 = *(v85 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v85);
  v10 = &v78[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __chkstk_darwin(v8);
  v82 = &v78[-v12];
  v13 = __chkstk_darwin(v11);
  v81 = &v78[-v14];
  v15 = __chkstk_darwin(v13);
  v84 = &v78[-v16];
  __chkstk_darwin(v15);
  v88 = &v78[-v17];
  v18 = type metadata accessor for XPCDictionary();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v18);
  v23 = &v78[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v21);
  v25 = &v78[-v24];
  v26 = sub_100013414(&unk_1000994A0, &unk_100077090);
  v27 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26);
  v29 = &v78[-v28];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v31 = result;
  sub_10004F59C(a1, v29);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v19 + 32))(v25, v29, v18);
    XPCDictionary.entitlements.getter();
    v51 = XPCDictionary.subscript.getter();
    v52 = *(v19 + 8);
    v52(v23, v18);
    if (v51 == 2 || (v51 & 1) == 0)
    {
      v53 = static os_log_type_t.fault.getter();
      v54 = *(v31 + 16);
      if (os_log_type_enabled(v54, v53))
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v90[0] = v56;
        *v55 = 136315138;
        *(v55 + 4) = sub_10000C600(v87, v86, v90);
        v57 = "Binary registered as metadata provider for domain %s does not have required entitlement";
        goto LABEL_14;
      }
    }

    else
    {
      v53 = static os_log_type_t.default.getter();
      v54 = *(v31 + 16);
      if (os_log_type_enabled(v54, v53))
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v90[0] = v56;
        *v55 = 136446210;
        *(v55 + 4) = sub_10000C600(v87, v86, v90);
        v57 = "Received response to request for metadata for domain %{public}s";
LABEL_14:
        _os_log_impl(&_mh_execute_header, v54, v53, v57, v55, 0xCu);
        sub_10000CADC(v56);
      }
    }

    v52(v25, v18);
  }

  v32 = v6;
  v33 = v88;
  v34 = v85;
  (*(v6 + 32))(v88, v29, v85);
  swift_beginAccess();
  if (!*(*(v31 + 80) + 16) || (v35 = *(v31 + 80), , sub_1000641D8(), v37 = v36, , (v37 & 1) == 0))
  {
    v58 = static os_log_type_t.error.getter();
    v59 = *(v31 + 16);
    v60 = *(v6 + 16);
    v60(v10, v33, v34);
    if (os_log_type_enabled(v59, v58))
    {
      v61 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v89 = v83;
      *v61 = 136446466;
      *(v61 + 4) = sub_10000C600(v87, v86, &v89);
      *(v61 + 12) = 2080;
      v60(v84, v10, v34);
      v62 = String.init<A>(describing:)();
      v64 = v63;
      v65 = *(v32 + 8);
      v65(v10, v34);
      v66 = sub_10000C600(v62, v64, &v89);

      *(v61 + 14) = v66;
      _os_log_impl(&_mh_execute_header, v59, v58, "Received error response to request for metadata for domain %{public}s from now-unregistered subscriber: %s. Not retrying", v61, 0x16u);
      swift_arrayDestroy();

      v65(v88, v34);
    }

    else
    {
      v67 = *(v6 + 8);
      v67(v10, v34);
      v67(v33, v34);
    }
  }

  v38 = v84;
  static XPCError.connectionInvalid.getter();
  sub_10004F67C(&qword_10009B4E0, &type metadata accessor for XPCError);
  v39 = static _Error.~= infix(_:_:)();
  v40 = *(v32 + 8);
  v40(v38, v34);
  v41 = static os_log_type_t.error.getter();
  v80 = *(v31 + 16);
  v42 = *(v32 + 16);
  if (v39)
  {
    v43 = v81;
    v42(v81, v33, v34);
    if (os_log_type_enabled(v80, v41))
    {
      v44 = swift_slowAlloc();
      v79 = v41;
      v45 = v44;
      v89 = swift_slowAlloc();
      *v45 = 136446466;
      *(v45 + 4) = sub_10000C600(v87, v86, &v89);
      *(v45 + 12) = 2080;
      v42(v84, v43, v34);
      v46 = String.init<A>(describing:)();
      v48 = v47;
      v40(v43, v34);
      v49 = sub_10000C600(v46, v48, &v89);

      *(v45 + 14) = v49;
      _os_log_impl(&_mh_execute_header, v80, v79, "Received XPC_ERRROR_CONNECTION_INVALID response to request for metadata for domain %{public}s: %s. Not retrying", v45, 0x16u);
      swift_arrayDestroy();

      v50 = v88;
    }

    else
    {
      v40(v43, v34);
      v50 = v33;
    }

    v40(v50, v34);
  }

  v68 = v82;
  v42(v82, v33, v34);
  if (os_log_type_enabled(v80, v41))
  {
    v69 = swift_slowAlloc();
    v79 = v41;
    v70 = v69;
    v81 = swift_slowAlloc();
    v89 = v81;
    *v70 = 136446466;
    v71 = v86;
    *(v70 + 4) = sub_10000C600(v87, v86, &v89);
    *(v70 + 12) = 2080;
    v42(v84, v68, v34);
    v72 = String.init<A>(describing:)();
    v74 = v73;
    v40(v68, v34);
    v75 = sub_10000C600(v72, v74, &v89);

    *(v70 + 14) = v75;
    v76 = v71;
    v77 = v87;
    _os_log_impl(&_mh_execute_header, v80, v79, "Received error response to request for metadata for domain %{public}s: %s. Retrying", v70, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v40(v68, v34);
    v76 = v86;
    v77 = v87;
  }

  sub_10004E1BC(v83, v77, v76);

  return (v40)(v88, v34);
}

uint64_t sub_10004EEBC()
{
  v1 = static os_log_type_t.fault.getter();
  v2 = *(v0 + 16);
  result = os_log_type_enabled(v2, v1);
  if (result)
  {
    v4 = sub_10000D030();
    sub_10000CCCC();
    v5 = swift_slowAlloc();
    v9 = v5;
    *v4 = 136315138;
    swift_errorRetain();
    sub_100013414(&unk_10009A930, &unk_100077080);
    v6 = String.init<A>(describing:)();
    v8 = sub_10000C600(v6, v7, &v9);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v1, "Received error from metadata XPC event publisher: %s", v4, 0xCu);
    sub_10000CADC(v5);
    sub_100015FBC();

    sub_100015FBC();
  }

  return result;
}

uint64_t sub_10004EFBC()
{
  v1 = *(v0 + 32);
  swift_unknownObjectRelease();
  v2 = *(v0 + 48);

  v3 = *(v0 + 64);
  sub_10000FAC8(*(v0 + 56));
  v4 = *(v0 + 80);

  v5 = *(v0 + 88);

  v6 = *(v0 + 96);

  return v0;
}

uint64_t sub_10004F014()
{
  sub_10004EFBC();

  return _swift_deallocClassInstance(v0, 104, 7);
}

uint64_t sub_10004F06C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AuxiliaryMetadataItem();
  v68 = *(v4 - 8);
  v5 = *(v68 + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v67 = &v57 - v9;
  v10 = sub_100013414(&qword_10009B328, &unk_100078450);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v63 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v12);
  v61 = (&v57 - v15);
  v62 = a2;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(v62 + 16))
  {
    return 0;
  }

  v16 = 0;
  v58 = a1;
  v19 = *(a1 + 64);
  v18 = a1 + 64;
  v17 = v19;
  v20 = 1 << *(v18 - 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v17;
  v23 = (v20 + 63) >> 6;
  v64 = v68 + 16;
  v65 = (v68 + 32);
  v59 = (v68 + 8);
  v60 = v8;
  while (v22)
  {
    v66 = (v22 - 1) & v22;
    v24 = __clz(__rbit64(v22)) | (v16 << 6);
LABEL_13:
    v28 = (*(v58 + 48) + 16 * v24);
    v29 = *v28;
    v30 = v28[1];
    v32 = v67;
    v31 = v68;
    (*(v68 + 16))(v67, *(v58 + 56) + *(v68 + 72) * v24, v4);
    v33 = sub_100013414(&qword_10009B330, &unk_100078300);
    v34 = *(v33 + 48);
    v35 = v63;
    *v63 = v29;
    *(v35 + 1) = v30;
    v25 = v35;
    (*(v31 + 32))(&v35[v34], v32, v4);
    sub_1000223E8(v25, 0, 1, v33);

LABEL_14:
    v36 = v25;
    v37 = v61;
    sub_10004BDC4(v36, v61);
    v38 = sub_100013414(&qword_10009B330, &unk_100078300);
    v39 = sub_100022484(v37, 1, v38);
    v40 = v39 == 1;
    if (v39 == 1)
    {
      return v40;
    }

    v41 = *(v38 + 48);
    v43 = *v37;
    v42 = v37[1];
    v44 = v62;
    v45 = v60;
    (*v65)(v60, v37 + v41, v4);
    v46 = sub_10004FEF0(v43, v42);
    v48 = v47;

    if ((v48 & 1) == 0)
    {
      (*v59)(v45, v4);
      return 0;
    }

    v49 = v68;
    v50 = *(v44 + 56) + *(v68 + 72) * v46;
    v51 = v4;
    v52 = v67;
    (*(v68 + 16))(v67, v50, v51);
    sub_10004F67C(&qword_10009B4F8, &type metadata accessor for AuxiliaryMetadataItem);
    v53 = dispatch thunk of static Equatable.== infix(_:_:)();
    v54 = *(v49 + 8);
    v55 = v52;
    v4 = v51;
    v54(v55, v51);
    result = (v54)(v45, v51);
    v22 = v66;
    if ((v53 & 1) == 0)
    {
      return v40;
    }
  }

  v25 = v63;
  while (1)
  {
    v26 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v26 >= v23)
    {
      v56 = sub_100013414(&qword_10009B330, &unk_100078300);
      sub_1000223E8(v25, 1, 1, v56);
      v66 = 0;
      goto LABEL_14;
    }

    v27 = *(v18 + 8 * v26);
    ++v16;
    if (v27)
    {
      v66 = (v27 - 1) & v27;
      v24 = __clz(__rbit64(v27)) | (v26 << 6);
      v16 = v26;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10004F4F8(uint64_t a1)
{
  v3 = *(type metadata accessor for XPCEventPublisher.Token() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_10004E4E8(a1, v5, v6, v7, v1 + v4);
}

uint64_t sub_10004F59C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100013414(&unk_1000994A0, &unk_100077090);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10004F60C()
{
  result = qword_100098ED0;
  if (!qword_100098ED0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100098ED0);
  }

  return result;
}

uint64_t sub_10004F67C(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_10004F6F4()
{
  v1 = type metadata accessor for POSIXError();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  error_domain = nw_error_get_error_domain(v0);
  if (error_domain - 2 >= 2)
  {
    if (error_domain != nw_error_domain_posix || (nw_error_get_error_code(v0), v13 = POSIXErrorCode.init(rawValue:)(), (v13 & 0x100000000) != 0))
    {
      type metadata accessor for RemotePairingError();
      sub_10004FEA8(&qword_100099850, &type metadata accessor for RemotePairingError);
      v14 = swift_allocError();
      sub_10004FEA8(&unk_10009A0D0, &type metadata accessor for RemotePairingError);
      static Error<>.unknown.getter();
    }

    else
    {
      v15[3] = v13;
      sub_10004FD70(&_swiftEmptyArrayStorage);
      sub_10004FEA8(&unk_10009AB20, &type metadata accessor for POSIXError);
      _BridgedStoredNSError.init(_:userInfo:)();
      v14 = POSIXError._nsError.getter();
      (*(v2 + 8))(v5, v1);
    }

    return v14;
  }

  else
  {
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
    error_code = nw_error_get_error_code(v0);
    v11 = objc_allocWithZone(NSError);
    return sub_10004FCC0(v7, v9, error_code, 0);
  }
}

BOOL sub_10004F940()
{
  v1 = nw_connection_copy_current_path(v0);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = (nw_path_is_local() & 1) != 0 || nw_path_uses_interface_type(v2, nw_interface_type_loopback);
  swift_unknownObjectRelease();
  return v3;
}

void OS_nw_connection.receive(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  sub_10000D2AC();
  sub_10000EE74();
  v8[2] = v6;
  v8[3] = &unk_100090C68;
  v7 = _Block_copy(v8);

  nw_connection_receive_message(v2, v7);
  _Block_release(v7);
}

uint64_t sub_10004FA4C()
{
  v1 = nw_protocol_copy_quic_definition();
  v2 = nw_connection_copy_protocol_metadata(v0, v1);
  result = swift_unknownObjectRelease();
  if (v2)
  {
    stream_type = nw_quic_get_stream_type(v2);
    swift_unknownObjectRelease();
    return stream_type == 3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10004FAB4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, unint64_t, uint64_t))
{
  v8 = type metadata accessor for RemotePairingError();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  if (a1 && (v18 = sub_10000E8B4(), *&v17 = a1, sub_10000E8A4(&v17, v19), sub_10000E8A4(v19, &v17), v10 = a1, (swift_dynamicCast() & 1) != 0))
  {
    v11 = 0;
    v13 = v15;
    v12 = v16;
  }

  else
  {
    if (a4)
    {
      swift_unknownObjectRetain();
      v13 = sub_10004F6F4();
      swift_unknownObjectRelease();
    }

    else
    {
      sub_10004FEA8(&unk_10009A0D0, &type metadata accessor for RemotePairingError);
      static Error<>.dataCorrupted.getter();
      sub_10004FEA8(&qword_100099850, &type metadata accessor for RemotePairingError);
      v13 = swift_allocError();
      Error<>.init(_:_:)();
    }

    v12 = 0;
    v11 = 1;
  }

  a5(v13, v12, v11);
  return sub_10000ED08(v13, v12, v11);
}

id sub_10004FCC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = String._bridgeToObjectiveC()();

  if (a4)
  {
    v8.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v8.super.isa = 0;
  }

  v9 = [v4 initWithDomain:v7 code:a3 userInfo:v8.super.isa];

  return v9;
}

unint64_t sub_10004FD70(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = &_swiftEmptyDictionarySingleton;
LABEL_9:

    return v3;
  }

  sub_100013414(&qword_10009B518, &qword_100078470);
  v2 = static _DictionaryStorage.allocate(capacity:)();
  v3 = v2;
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = v2 + 64;
  v6 = a1 + 32;

  while (1)
  {
    sub_10004FF68(v6, &v15);
    v7 = v15;
    v8 = v16;
    result = sub_10004FEF0(v15, v16);
    if (v10)
    {
      break;
    }

    *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
    v11 = (v3[6] + 16 * result);
    *v11 = v7;
    v11[1] = v8;
    result = sub_10000E8A4(&v17, (v3[7] + 32 * result));
    v12 = v3[2];
    v13 = __OFADD__(v12, 1);
    v14 = v12 + 1;
    if (v13)
    {
      goto LABEL_12;
    }

    v3[2] = v14;
    v6 += 48;
    if (!--v4)
    {

      return v3;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_10004FEA8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10004FEF0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_10004FFD8(a1, a2, v6);
}

uint64_t sub_10004FF68(uint64_t a1, uint64_t a2)
{
  v4 = sub_100013414(&qword_10009B520, &qword_100078478);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10004FFD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

id sub_100050094()
{
  type metadata accessor for ControlChannelConnection();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  qword_10009CEF0 = result;
  return result;
}

uint64_t sub_100050100(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_10005014C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_1000501A0()
{
  if (!nw_connection_copy_current_path(*(v0 + OBJC_IVAR____TtC20remotepairingdeviced29NWObjcTunnelConnectionWrapper_connection)))
  {
    return 0;
  }

  v1 = nw_path_copy_interface();
  if (!v1)
  {
    swift_unknownObjectRelease();
    return 0;
  }

  nw_interface_get_name(v1);
  v2 = String.init(cString:)();
  v4 = v3;
  v5 = static os_log_type_t.info.getter();
  v6 = qword_10009CED0;
  if (os_log_type_enabled(qword_10009CED0, v5))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v10 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_10000C600(v2, v4, &v10);
    _os_log_impl(&_mh_execute_header, v6, v5, "Tunnel connection path interface name: %s", v7, 0xCu);
    sub_10000CADC(v8);
    sub_10000D8D4();
    sub_10000D8D4();
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_1000502DC(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + 16) = xmmword_1000770A0;
  *(v3 + 32) = static IPv6Header.minHeaderLength.getter();
  *(v3 + 40) = 0x80000;
  type metadata accessor for TunnelConnectionIdentifierCategory();
  Identifier.init()();
  *(v3 + OBJC_IVAR____TtC20remotepairingdeviced29NWObjcTunnelConnectionWrapper_connection) = a1;
  *(v3 + OBJC_IVAR____TtC20remotepairingdeviced29NWObjcTunnelConnectionWrapper__allowLocalConnectionsOnly) = a2;
  *(v3 + OBJC_IVAR____TtC20remotepairingdeviced29NWObjcTunnelConnectionWrapper_peerConnectionsInfo) = a3;
  return v3;
}

void sub_100050384(NSObject *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v4 + OBJC_IVAR____TtC20remotepairingdeviced29NWObjcTunnelConnectionWrapper_connection);
  sub_10000CBD0();
  v9 = swift_allocObject();
  swift_weakInit();
  v19 = sub_100054CEC;
  v20 = v9;
  sub_100054FC0();
  v16 = 1107296256;
  v17 = sub_1000507A8;
  v18 = &unk_100090D48;
  v10 = _Block_copy(&v15);

  nw_connection_set_viability_changed_handler(v8, v10);
  _Block_release(v10);
  sub_10000CBD0();
  v11 = swift_allocObject();
  swift_weakInit();
  sub_10000CBD0();
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100055004();
  v13 = swift_allocObject();
  v13[2] = v11;
  v13[3] = v12;
  v13[4] = a2;
  v13[5] = a3;
  v19 = sub_100054CF4;
  v20 = v13;
  v15 = _NSConcreteStackBlock;
  v16 = 1107296256;
  v17 = sub_100050144;
  v18 = &unk_100090DC0;
  v14 = _Block_copy(&v15);

  nw_connection_set_state_changed_handler(v8, v14);
  _Block_release(v14);
  nw_connection_set_queue(v8, a1);
  nw_connection_start(v8);
}

uint64_t sub_10005055C(char a1)
{
  v2 = sub_100013414(&qword_10009B730, &unk_100078A80);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v17 - v5;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    if ((a1 & 1) == 0)
    {
      v9 = static os_log_type_t.error.getter();
      v10 = qword_10009CED0;
      if (os_log_type_enabled(qword_10009CED0, v9))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v17 = v12;
        *v11 = 136446210;
        (*(v3 + 16))(v6, v8 + OBJC_IVAR____TtC20remotepairingdeviced29NWObjcTunnelConnectionWrapper_identifier, v2);
        sub_100035F9C(&qword_10009B738, &qword_10009B730, &unk_100078A80);
        v13 = dispatch thunk of CustomStringConvertible.description.getter();
        v15 = v14;
        (*(v3 + 8))(v6, v2);
        v16 = sub_10000C600(v13, v15, &v17);

        *(v11 + 4) = v16;
        _os_log_impl(&_mh_execute_header, v10, v9, "%{public}s: Cancelling tunnel connection as it is no longer viable", v11, 0xCu);
        sub_10000CADC(v12);
      }

      nw_connection_cancel(*(v8 + OBJC_IVAR____TtC20remotepairingdeviced29NWObjcTunnelConnectionWrapper_connection));
    }
  }

  return result;
}

uint64_t sub_1000507A8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_1000507FC(int a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *))
{
  v8 = type metadata accessor for TunnelConnectionState();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v14 = result;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v16 = Strong;
      switch(a1)
      {
        case 1:
        case 4:
          v23 = static os_log_type_t.error.getter();
          v22[1] = qword_10009CED0;
          sub_100013414(&qword_1000999F0, &unk_100077530);
          v18 = swift_allocObject();
          *(v18 + 16) = xmmword_100077360;
          v24 = a2;
          swift_unknownObjectRetain();
          sub_100013414(&unk_10009B750, qword_100077E48);
          v19 = String.init<A>(describing:)();
          v21 = v20;
          *(v18 + 56) = &type metadata for String;
          *(v18 + 64) = sub_100022420();
          *(v18 + 32) = v19;
          *(v18 + 40) = v21;
          os_log(_:dso:log:_:_:)();

          goto LABEL_10;
        case 3:
          swift_getObjectType();
          if (sub_10004F940() && *(v14 + OBJC_IVAR____TtC20remotepairingdeviced29NWObjcTunnelConnectionWrapper__allowLocalConnectionsOnly) != 1)
          {
            static os_log_type_t.error.getter();
LABEL_5:
            os_log(_:dso:log:_:_:)();
LABEL_10:
            nw_connection_cancel(v16);
            v17 = &enum case for TunnelConnectionState.stopped(_:);
          }

          else
          {
            static os_log_type_t.default.getter();
            os_log(_:dso:log:_:_:)();
            v17 = &enum case for TunnelConnectionState.ready(_:);
          }

          (*(v9 + 104))(v12, *v17, v8);
          a5(v12);
          swift_unknownObjectRelease();

          result = (*(v9 + 8))(v12, v8);
          break;
        case 5:
          static os_log_type_t.default.getter();
          goto LABEL_5;
        default:
          static os_log_type_t.default.getter();
          os_log(_:dso:log:_:_:)();
          swift_unknownObjectRelease();
      }
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_100050C50()
{
  v1 = *v0;
  _StringGuts.grow(_:)(26);

  swift_getMetatypeMetadata();
  v2._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 32;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  sub_100013414(&qword_10009B730, &unk_100078A80);
  sub_100035F9C(&qword_10009B738, &qword_10009B730, &unk_100078A80);
  v4._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v4);

  v5._object = 0x8000000100080B90;
  v5._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v5);
  v6 = *(v0 + OBJC_IVAR____TtC20remotepairingdeviced29NWObjcTunnelConnectionWrapper_connection);
  v7 = nw_connection_copy_connected_remote_endpoint();
  if (v7)
  {
    v8 = [v7 description];
    swift_unknownObjectRelease();
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
  }

  else
  {
    v11 = 0xE600000000000000;
    v9 = 0x3E656E6F6E3CLL;
  }

  v12._countAndFlagsBits = v9;
  v12._object = v11;
  String.append(_:)(v12);

  v13._countAndFlagsBits = 32032;
  v13._object = 0xE200000000000000;
  String.append(_:)(v13);
  return 60;
}

uint64_t sub_100050E34()
{
  sub_10000ECF4(*(v0 + 16), *(v0 + 24));
  v1 = OBJC_IVAR____TtC20remotepairingdeviced29NWObjcTunnelConnectionWrapper_identifier;
  v2 = sub_100013414(&qword_10009B730, &unk_100078A80);
  sub_10000CC04(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(v0 + OBJC_IVAR____TtC20remotepairingdeviced29NWObjcTunnelConnectionWrapper_connection);
  swift_unknownObjectRelease();
  v5 = *(v0 + OBJC_IVAR____TtC20remotepairingdeviced29NWObjcTunnelConnectionWrapper_peerConnectionsInfo);

  return v0;
}

void sub_100050F00()
{
  sub_100019960();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100050FEC()
{
  v1 = *v0;
  sub_10000DBDC(&unk_10009B760, type metadata accessor for NWObjcTunnelConnectionWrapper);
  return StreamBasedTunnelConnection.send(controlMessage:completion:)();
}

uint64_t sub_100051078()
{
  v1 = *v0;
  sub_10000DBDC(&unk_10009B760, type metadata accessor for NWObjcTunnelConnectionWrapper);
  return StreamBasedTunnelConnection.receiveControlMessage(completion:)();
}

uint64_t sub_100051160(__int16 a1, __int16 a2)
{
  if (a1 == 2)
  {
    return a2 == 2;
  }

  if (a1 == 3)
  {
    return a2 == 3;
  }

  if ((a2 & 0xFE) == 2)
  {
    return 0;
  }

  if ((a2 ^ a1))
  {
    return 0;
  }

  else
  {
    return ((a2 & 0x100) == 0) ^ ((a1 & 0x100) >> 8);
  }
}

uint64_t sub_1000511D8()
{
  v1 = *(v0 + OBJC_IVAR____TtC20remotepairingdeviced22NWQUICTunnelConnection_datagramStream);
  if (!v1)
  {
    return 1280;
  }

  v2 = *(v0 + OBJC_IVAR____TtC20remotepairingdeviced22NWQUICTunnelConnection_datagramStream);
  swift_unknownObjectRetain();
  v3 = nw_protocol_copy_quic_definition();
  v4 = nw_connection_copy_protocol_metadata(v1, v3);
  result = swift_unknownObjectRelease();
  if (v4)
  {
    stream_usable_datagram_frame_size = nw_quic_get_stream_usable_datagram_frame_size(v4);
    v7 = static os_log_type_t.default.getter();
    v8 = qword_10009CED0;
    if (os_log_type_enabled(qword_10009CED0, v7))
    {
      v9 = swift_slowAlloc();
      *v9 = 134217984;
      *(v9 + 4) = stream_usable_datagram_frame_size;
      _os_log_impl(&_mh_execute_header, v8, v7, "Tunnel MTU datagaram = %ld", v9, 0xCu);
      sub_10000D8D4();
    }

    if (!stream_usable_datagram_frame_size)
    {
      type metadata accessor for VirtualInterface();
      LOWORD(stream_usable_datagram_frame_size) = static VirtualInterface.minSupportedMTU.getter();
    }

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return stream_usable_datagram_frame_size;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000512FC()
{
  if (!*(v0 + OBJC_IVAR____TtC20remotepairingdeviced22NWQUICTunnelConnection_datagramStream))
  {
    static os_log_type_t.fault.getter();
    os_log(_:dso:log:_:_:)();
    return 0;
  }

  v1 = *(v0 + OBJC_IVAR____TtC20remotepairingdeviced22NWQUICTunnelConnection_datagramStream);
  v2 = swift_unknownObjectRetain();
  if (!nw_connection_copy_current_path(v2))
  {
LABEL_9:
    swift_unknownObjectRelease();
    return 0;
  }

  v3 = nw_path_copy_interface();
  if (!v3)
  {
    swift_unknownObjectRelease();
    goto LABEL_9;
  }

  nw_interface_get_name(v3);
  v4 = String.init(cString:)();
  v6 = v5;
  v7 = static os_log_type_t.default.getter();
  v8 = qword_10009CED0;
  if (os_log_type_enabled(qword_10009CED0, v7))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v12 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_10000C600(v4, v6, &v12);
    _os_log_impl(&_mh_execute_header, v8, v7, "Tunnel connection path interface name: %s", v9, 0xCu);
    sub_10000CADC(v10);
    sub_10000D8D4();
    sub_10000D8D4();
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v4;
}

uint64_t sub_100051490()
{
  v1 = type metadata accessor for TunnelConnectionState();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  result = __chkstk_darwin(v1);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + 16);
  if (v7 == 3)
  {
    v10 = (v0 + OBJC_IVAR____TtC20remotepairingdeviced22NWQUICTunnelConnection_stateChangeHandler);
    v11 = *(v0 + OBJC_IVAR____TtC20remotepairingdeviced22NWQUICTunnelConnection_stateChangeHandler);
    if (v11)
    {
      v12 = v10[1];
      (*(v2 + 104))(v6, enum case for TunnelConnectionState.stopped(_:), v1);

      v11(v6);
      sub_10000FAC8(v11);
      (*(v2 + 8))(v6, v1);
      v13 = *v10;
    }

    else
    {
      v13 = 0;
    }

    v14 = v10[1];
    *v10 = 0;
    v10[1] = 0;
    return sub_10000FAC8(v13);
  }

  else if (v7 == 2)
  {
    v8 = *(v0 + OBJC_IVAR____TtC20remotepairingdeviced22NWQUICTunnelConnection_stateChangeHandler);
    if (v8)
    {
      v9 = *(v0 + OBJC_IVAR____TtC20remotepairingdeviced22NWQUICTunnelConnection_stateChangeHandler + 8);
      (*(v2 + 104))(v6, enum case for TunnelConnectionState.ready(_:), v1);

      v8(v6);
      sub_10000FAC8(v8);
      return (*(v2 + 8))(v6, v1);
    }
  }

  return result;
}

uint64_t sub_100051658(uint64_t a1, char a2, uint64_t a3)
{
  type metadata accessor for TunnelConnectionIdentifierCategory();
  Identifier.init()();
  *(v3 + OBJC_IVAR____TtC20remotepairingdeviced22NWQUICTunnelConnection_nonDatagramStream) = 0;
  *(v3 + OBJC_IVAR____TtC20remotepairingdeviced22NWQUICTunnelConnection_datagramStream) = 0;
  v7 = (v3 + OBJC_IVAR____TtC20remotepairingdeviced22NWQUICTunnelConnection_stateChangeHandler);
  *v7 = 0;
  v7[1] = 0;
  *(v3 + 16) = 0;
  *(v3 + OBJC_IVAR____TtC20remotepairingdeviced22NWQUICTunnelConnection_group) = a1;
  *(v3 + OBJC_IVAR____TtC20remotepairingdeviced22NWQUICTunnelConnection__allowLocalConnectionsOnly) = a2;
  *(v3 + OBJC_IVAR____TtC20remotepairingdeviced22NWQUICTunnelConnection_peerConnectionsInfo) = a3;
  return v3;
}

void sub_100051704(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for TunnelPacket();
  v8 = sub_10000CBBC(v7);
  v53 = v9;
  v11 = *(v10 + 64);
  __chkstk_darwin(v8);
  v13 = v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100013414(&qword_10009B788, &qword_100078788);
  v15 = sub_10000CC04(v14);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v51 = (v47 - v18);
  v19 = sub_100013414(&unk_10009B790, &qword_100078790);
  v20 = *(*(v19 - 8) + 64);
  v21 = __chkstk_darwin(v19 - 8);
  v57 = v47 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = v47 - v23;
  v25 = *(v3 + OBJC_IVAR____TtC20remotepairingdeviced22NWQUICTunnelConnection_datagramStream);
  if (v25)
  {
    v26 = *(a1 + 16);
    if (v26 >> 60)
    {
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
    }

    else
    {
      v48 = a2;
      v49 = a3;
      v52 = a1;
      v47[1] = v25;
      swift_unknownObjectRetain_n();
      v27 = swift_slowAlloc();
      v28 = 0;
      v50 = v53 + 16;
      v55 = (v53 + 32);
      v56 = v27;
      v54 = (v53 + 8);
      while (1)
      {
        v29 = v57;
        if (v28 == v26)
        {
          v30 = 1;
          v28 = v26;
        }

        else
        {
          if (v28 >= v26)
          {
            __break(1u);
LABEL_18:
            __break(1u);
            goto LABEL_19;
          }

          if (__OFADD__(v28, 1))
          {
            goto LABEL_18;
          }

          v31 = v53;
          v32 = v51;
          v33 = v52 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v28;
          v34 = *(v14 + 48);
          *v51 = v28;
          (*(v31 + 16))(v32 + v34, v33, v7);
          sub_100054F04(v32, v29, &qword_10009B788, &qword_100078788);
          v30 = 0;
          ++v28;
        }

        sub_1000223E8(v29, v30, 1, v14);
        sub_100054F04(v29, v24, &unk_10009B790, &qword_100078790);
        if (sub_100022484(v24, 1, v14) == 1)
        {
          break;
        }

        v35 = v26;
        v36 = *v24;
        (*v55)(v13, &v24[*(v14 + 48)], v7);
        v37 = TunnelPacket.packetData.getter();
        v38 = v13;
        v40 = v39;
        isa = Data._bridgeToObjectiveC()().super.isa;
        sub_10000DF50(v37, v40);
        v42 = NWCreateDispatchDataFromNSData();

        if (!v42)
        {
          goto LABEL_21;
        }

        *(v56 + 8 * v36) = v42;
        (*v54)(v38, v7);
        v26 = v35;
        v13 = v38;
      }

      if (HIDWORD(v26))
      {
        goto LABEL_20;
      }

      sub_100055004();
      v43 = swift_allocObject();
      v44 = v52;
      v43[2] = v56;
      v43[3] = v44;
      v45 = v49;
      v43[4] = v48;
      v43[5] = v45;
      aBlock[4] = sub_100054F64;
      aBlock[5] = v43;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10005014C;
      aBlock[3] = &unk_100091040;
      v46 = _Block_copy(aBlock);

      nw_connection_write_multiple();
      swift_unknownObjectRelease_n();
      _Block_release(v46);
    }
  }

  else
  {
    static os_log_type_t.error.getter();

    os_log(_:dso:log:_:_:)();
  }
}