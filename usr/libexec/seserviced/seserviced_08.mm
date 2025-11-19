uint64_t sub_1000C124C()
{
  v0 = type metadata accessor for Logger();
  sub_1000B6A94(v0, qword_10051B240);
  sub_1000958E4(v0, qword_10051B240);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000C12CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 152) = a4;
  *(v5 + 160) = a5;
  return _swift_task_switch(sub_1000C12EC, 0, 0);
}

uint64_t sub_1000C12EC()
{
  v1 = objc_opt_self();
  v2 = String._bridgeToObjectiveC()();
  v0[21] = v2;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1000C143C;
  v3 = swift_continuation_init();
  v0[17] = sub_100068FC4(&qword_100503460, &qword_10040B560);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1001861F4;
  v0[13] = &unk_1004C6BA8;
  v0[14] = v3;
  sub_1003AF710(v1, v2, v0 + 10);

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1000C143C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 176) = v2;
  if (v2)
  {
    v3 = sub_1000C1868;
  }

  else
  {
    v3 = sub_1000C154C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000C154C()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 144);

  sub_1000C1AA4();
  v4 = *(v0 + 152);
  v3 = *(v0 + 160);

  v6 = sub_1003AF3C4(v2, v5);
  v7 = [v6 casdCertificate];

  static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = objc_allocWithZone(type metadata accessor for SECHardwareInfoInternal());
  v9 = SECHardwareInfoInternal.init(hardwareReleaseVersionString:casdCertificate:)();
  v10 = qword_10051B258;
  qword_10051B258 = v9;
  v11 = v9;

  v4(v9, 0);
  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1000C1868()
{
  v20 = v0;
  v1 = v0[21];
  v2 = v0[22];
  swift_willThrow();

  v3 = v0[22];
  if (qword_100501940 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000958E4(v4, qword_100503448);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v7 = 136315394;
    *(v7 + 4) = sub_1002FFA0C(0xD000000000000019, 0x8000000100462920, &v19);
    *(v7 + 12) = 2112;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    *v8 = v10;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s Error %@ encountered while getting secure element", v7, 0x16u);
    sub_1000C2998(v8);

    sub_1000752F4(v9);
  }

  v11 = v0[22];
  v13 = v0[19];
  v12 = v0[20];
  sub_10009591C();
  v14 = swift_allocError();
  *v15 = 31;
  v13(0, v14);

  if (!v11)
  {
  }

  v17 = v0[1];

  return v17();
}

id sub_1000C1AA4()
{
  v1 = sub_10013044C(0xD000000000000018, 0x8000000100462970);
  if (v2 >> 60 == 15)
  {
    __break(1u);
  }

  v3 = v1;
  v4 = v2;
  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_10006A2D0(v3, v4);

  v6 = sub_1002B3B94(&off_1004C3B28);
  v8 = v7;
  v9 = Data._bridgeToObjectiveC()().super.isa;
  v81[0] = 0;
  v10 = sub_1003AE9C8(v0, v9, v81);

  if (!v10)
  {
    v32 = v81[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    return sub_10006A178(v6, v8);
  }

  v11 = v81[0];
  if (sub_1003B0984(v10) != 36864)
  {
    goto LABEL_63;
  }

  v12 = sub_1003B0934(v10);
  v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v16 = Data._bridgeToObjectiveC()().super.isa;
  sub_10006A178(v13, v15);
  v17 = objc_opt_self();
  v18 = [v17 TLVWithData:v16];

  if (!v18)
  {
LABEL_63:
    if (qword_100501940 != -1)
    {
      swift_once();
    }

    v58 = type metadata accessor for Logger();
    sub_1000958E4(v58, qword_100503448);
    v59 = v10;
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v81[0] = v75;
      *v62 = 136315138;
      v63 = sub_1003AAA78(v59);
      v64 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v78 = v6;
      v66 = v65;

      sub_100288788(v64, v66);
      sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      v80 = v8;
      sub_10007A2D0();
      v67 = BidirectionalCollection<>.joined(separator:)();
      v69 = v68;
      v70 = v66;
      v6 = v78;
      sub_10006A178(v64, v70);

      v71 = sub_1002FFA0C(v67, v69, v81);
      v8 = v80;

      *(v62 + 4) = v71;
      _os_log_impl(&_mh_execute_header, v60, v61, "Invalid TLV in jcopVersionRAPDU %s", v62, 0xCu);
      sub_1000752F4(v75);
    }

    sub_10009591C();
    swift_allocError();
    *v72 = 31;
    swift_willThrow();

    return sub_10006A178(v6, v8);
  }

  v19 = &selRef_mockFleetIntermediateCert;
  if ([v18 tag] != 254)
  {
LABEL_50:

    goto LABEL_63;
  }

  v79 = v8;
  result = [v18 children];
  if (!result)
  {
    goto LABEL_71;
  }

  v21 = result;
  v22 = sub_1000754A4();
  v23 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v23 >> 62))
  {
    if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_9;
    }

LABEL_57:

    goto LABEL_62;
  }

LABEL_56:
  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_57;
  }

LABEL_9:
  v76 = v22;
  if ((v23 & 0xC000000000000001) != 0)
  {
    v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_60;
    }

    v24 = *(v23 + 32);
  }

  v25 = v24;

  if ([v25 *(v19 + 3920)] != 57164)
  {

LABEL_62:
    v8 = v79;
    goto LABEL_63;
  }

  v74 = v25;
  v26 = [v25 value];
  if (v26)
  {
    v27 = v26;
    v28 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;

    v31.super.isa = Data._bridgeToObjectiveC()().super.isa;
    sub_10006A178(v28, v30);
  }

  else
  {
    v31.super.isa = 0;
  }

  v22 = v76;
  v33 = [v17 TLVsWithData:{v31.super.isa, v73}];

  if (!v33)
  {

    goto LABEL_62;
  }

  v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v73 = v18;
  if (!(v19 >> 62))
  {
    v23 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v23)
    {
      goto LABEL_21;
    }

    goto LABEL_61;
  }

LABEL_60:
  v23 = _CocoaArrayWrapper.endIndex.getter();
  if (!v23)
  {
LABEL_61:

    goto LABEL_62;
  }

LABEL_21:
  v34 = 0;
  v18 = (v19 & 0xC000000000000001);
  v17 = (v19 & 0xFFFFFFFFFFFFFF8);
  v77 = v19;
  while (1)
  {
    if (v18)
    {
      v22 = v6;
      v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v34 >= v17[2])
      {
        goto LABEL_55;
      }

      v22 = v6;
      v35 = *(v19 + 8 * v34 + 32);
    }

    v19 = v35;
    v6 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      __break(1u);
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    if ([v35 tag] == 131)
    {
      break;
    }

    ++v34;
    v36 = v6 == v23;
    v6 = v22;
    v19 = v77;
    if (v36)
    {
      goto LABEL_61;
    }
  }

  result = [v19 value];
  if (!result)
  {
    goto LABEL_72;
  }

  v37 = result;
  v38 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v40 = v39;

  v41 = v40 >> 62;
  v6 = v22;
  v18 = v73;
  if ((v40 >> 62) > 1)
  {
    v8 = v79;
    if (v41 != 2)
    {

      sub_10006A178(v38, v40);
      goto LABEL_63;
    }

    v43 = v38;
    v45 = v38 + 16;
    v38 = *(v38 + 16);
    v44 = *(v45 + 8);
    sub_10006A178(v43, v40);
    v42 = v44 - v38;
    if (!__OFSUB__(v44, v38))
    {
      goto LABEL_42;
    }

    __break(1u);
  }

  else
  {
    v8 = v79;
    if (!v41)
    {
      sub_10006A178(v38, v40);
      v42 = BYTE6(v40);
LABEL_43:
      if (v42 != 2)
      {

        goto LABEL_50;
      }

      result = [v19 value];
      if (!result)
      {
        goto LABEL_73;
      }

      v46 = result;
      v47 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v49 = v48;

      v50 = sub_1000CA97C(v47, v49);
      sub_10006A178(v47, v49);
      if ((v50 & 0x100) != 0)
      {
      }

      else
      {
        result = [v19 value];
        if (!result)
        {
          goto LABEL_74;
        }

        v51 = result;

        v52 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v54 = v53;

        LOWORD(v51) = sub_1000C2438(v52, v54);
        sub_10006A178(v52, v54);
        if ((v51 & 0x100) == 0)
        {
          v81[0] = 0x20504F434ALL;
          v81[1] = 0xE500000000000000;
          v55._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v55);

          v56._countAndFlagsBits = 46;
          v56._object = 0xE100000000000000;
          String.append(_:)(v56);
          v57._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v57);

          sub_10006A178(v6, v79);
          return v81[0];
        }
      }

      goto LABEL_62;
    }
  }

  result = sub_10006A178(v38, v40);
  LODWORD(v42) = HIDWORD(v38) - v38;
  if (!__OFSUB__(HIDWORD(v38), v38))
  {
    v42 = v42;
LABEL_42:
    v18 = v73;
    goto LABEL_43;
  }

  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
  return result;
}

void sub_1000C23C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = _convertErrorToNSError(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

uint64_t sub_1000C2438(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2 || *(a1 + 16) == *(a1 + 24))
    {
      goto LABEL_10;
    }
  }

  else
  {
    if (!v2)
    {
      if ((a2 & 0xFF000000000000) != 0)
      {
        v3 = BYTE6(a2);
        goto LABEL_12;
      }

LABEL_10:
      v4 = 0;
      v5 = 1;
      return v4 | (v5 << 8);
    }

    if (a1 == a1 >> 32)
    {
      goto LABEL_10;
    }
  }

  if (v2 == 2)
  {
    v3 = *(a1 + 24);
  }

  else
  {
    v3 = a1 >> 32;
  }

LABEL_12:
  result = v3 - 1;
  if (!__OFSUB__(v3, 1))
  {
    v4 = Data._Representation.subscript.getter();
    v5 = 0;
    return v4 | (v5 << 8);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000C24E0()
{
  v0 = type metadata accessor for Logger();
  sub_1000B6A94(v0, qword_100503448);
  v1 = sub_1000958E4(v0, qword_100503448);
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v2 = sub_1000958E4(v0, qword_10051B2C8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1000C25A8(void (**a1)(void, void, void))
{
  v2 = sub_100068FC4(&qword_100504250, &qword_10040D610);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v11 - v4;
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  v7 = qword_10051B258;
  if (qword_10051B258)
  {
    _Block_copy(a1);
    a1[2](a1, v7, 0);
  }

  else
  {
    v9 = type metadata accessor for TaskPriority();
    (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = sub_1000C2784;
    v10[5] = v6;
    _Block_copy(a1);

    sub_1001F9BE8(0, 0, v5, &unk_10040A8D8, v10);
  }
}

uint64_t sub_1000C274C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000C278C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000C27CC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000C288C;

  return sub_1000C12CC(a1, v4, v5, v7, v6);
}

uint64_t sub_1000C288C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1000C2998(uint64_t a1)
{
  v2 = sub_100068FC4(&unk_100503F70, &unk_10040B2E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000C2A00(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for Peer();
    sub_1000C4A9C();
    result = Set.Iterator.init(_cocoa:)();
    v1 = v23;
    v3 = v24;
    v4 = v25;
    v5 = v26;
    v6 = v27;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);

    v5 = 0;
  }

  v21 = _swiftEmptyArrayStorage;
  v22 = v1;
LABEL_8:
  v10 = v5;
  v11 = v6;
  while (1)
  {
    if (v1 < 0)
    {
      if (!__CocoaSet.Iterator.next()() || (type metadata accessor for Peer(), swift_dynamicCast(), v14 = v28, v5 = v10, v6 = v11, !v28))
      {
LABEL_24:
        sub_100093854();
        return v21;
      }

      goto LABEL_18;
    }

    v12 = v10;
    v13 = v11;
    v5 = v10;
    if (!v11)
    {
      break;
    }

LABEL_14:
    v6 = (v13 - 1) & v13;
    v14 = *(*(v1 + 48) + ((v5 << 9) | (8 * __clz(__rbit64(v13)))));

    if (!v14)
    {
      goto LABEL_24;
    }

LABEL_18:
    v15 = *(v14 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier);
    v16 = *(v14 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier + 8);
    sub_10006A2BC(v15, v16);

    v10 = v5;
    v11 = v6;
    v1 = v22;
    if (v16 >> 60 != 15)
    {
      v17 = v21;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_10012E5A4(0, *(v21 + 2) + 1, 1, v21);
        v17 = result;
      }

      v19 = *(v17 + 2);
      v18 = *(v17 + 3);
      if (v19 >= v18 >> 1)
      {
        result = sub_10012E5A4((v18 > 1), v19 + 1, 1, v17);
        v17 = result;
      }

      *(v17 + 2) = v19 + 1;
      v21 = v17;
      v20 = &v17[16 * v19];
      *(v20 + 4) = v15;
      *(v20 + 5) = v16;
      v1 = v22;
      goto LABEL_8;
    }
  }

  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= ((v4 + 64) >> 6))
    {
      goto LABEL_24;
    }

    v13 = *(v3 + 8 * v5);
    ++v12;
    if (v13)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000C2C88()
{
  v0 = type metadata accessor for AlishaExpress();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1000C2CC8();
  qword_10051B260 = result;
  return result;
}

uint64_t sub_1000C2CC8()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xD00000000000001BLL;
  *(v0 + 32) = 0x80000001004629F0;
  String.init(cString:)();
  Logger.init(subsystem:category:)();
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v3[4] = sub_1000C4DB4;
  v3[5] = v0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 1107296256;
  v3[2] = sub_100193978;
  v3[3] = &unk_1004C6BE0;
  v1 = _Block_copy(v3);

  os_state_add_handler();
  _Block_release(v1);
  return v0;
}

_DWORD *sub_1000C2E1C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v9 = &type metadata for Bool;
  LOBYTE(v8) = v2;
  sub_100075D50(&v8, v7);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v7, 0x6E696E6E75527369, 0xE900000000000067, isUniquelyReferenced_nonNull_native);
  sub_1001950D4(_swiftEmptyDictionarySingleton);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v5 = sub_100015DA0("alishaexpress.state", isa);

  return v5;
}

void sub_1000C2F00()
{
  v1 = v0;
  v2 = *v0;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = (&v21[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v8 = qword_10051B7F0;
  *v7 = qword_10051B7F0;
  (*(v4 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v3);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v7, v3);
  if ((v8 & 1) == 0)
  {
    __break(1u);
LABEL_14:
    swift_once();
LABEL_11:
    v21[3] = v2;
    v21[4] = &off_1004C6BD0;
    v21[0] = v1;

    v16 = sub_10013044C(0xD00000000000001ALL, 0x80000001004629D0);
    if (v17 >> 60 == 15)
    {
      __break(1u);
      swift_unexpectedError();
      __break(1u);
    }

    else
    {
      v18 = v16;
      v19 = v17;
      sub_1001BF594(v21, v16, v17);
      sub_10006A2D0(v18, v19);
      sub_1000752F4(v21);
      sub_1000C4AF4();
    }

    return;
  }

  v10 = *(v1 + 16);
  v11 = Logger.logObject.getter();
  if ((v10 & 1) == 0)
  {
    v14 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v11, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v11, v14, "Starting AlishaExpress", v15, 2u);
    }

    *(v1 + 16) = 1;
    if (qword_100501A58 == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_14;
  }

  v12 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "AlishaExpress is already running", v13, 2u);
  }
}

void sub_1000C3230()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = v3[8];
  __chkstk_darwin(v2);
  v6 = (&v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v7 = qword_10051B7F0;
  *v6 = qword_10051B7F0;
  v8 = enum case for DispatchPredicate.onQueue(_:);
  v9 = v3[13];
  v9(v6, enum case for DispatchPredicate.onQueue(_:), v2);
  v10 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  v11 = v3[1];
  v11(v6, v2);
  if ((v7 & 1) == 0)
  {
    __break(1u);
LABEL_15:
    swift_once();
    goto LABEL_8;
  }

  v26 = v10;
  v12 = *(v1 + 16);
  v13 = Logger.logObject.getter();
  if (v12 != 1)
  {
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v13, v22, "AlishaExpress is not running", v23, 2u);
    }

    return;
  }

  v25 = v1;
  v14 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Stopping AlishaExpress", v15, 2u);
  }

  if (qword_100501A58 != -1)
  {
    goto LABEL_15;
  }

LABEL_8:
  v24 = qword_10051B3F0;
  v16 = sub_10013044C(0xD00000000000001ALL, 0x80000001004629D0);
  if (v17 >> 60 != 15)
  {
    v18 = v16;
    v19 = v17;
    v20 = v26;
    *v6 = v26;
    v9(v6, v8, v2);
    v21 = v20;
    LOBYTE(v20) = _dispatchPreconditionTest(_:)();
    v11(v6, v2);
    if (v20)
    {
      v28 = 0;
      memset(v27, 0, sizeof(v27));
      swift_beginAccess();
      sub_100069E2C(v18, v19);
      sub_1000C5710(v27, v18, v19);
      swift_endAccess();
      sub_10006A2D0(v18, v19);
      *(v25 + 16) = 0;
      return;
    }

    __break(1u);
  }

  __break(1u);
}

void sub_1000C35A4()
{
  v0 = type metadata accessor for DispatchPredicate();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = (&v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D78 != -1)
  {
    swift_once();
  }

  v5 = sub_1000CAAC4();
  v6 = v5;
  if ((v5 & 0xC000000000000001) == 0)
  {
    if (*(v5 + 16))
    {
      goto LABEL_5;
    }

LABEL_11:

    if (qword_1005018F0 != -1)
    {
      swift_once();
    }

    if (qword_100501D90 != -1)
    {
      swift_once();
    }

    v10 = qword_10051B7F0;
    *v4 = qword_10051B7F0;
    (*(v1 + 104))(v4, enum case for DispatchPredicate.onQueue(_:), v0);
    v11 = v10;
    LOBYTE(v10) = _dispatchPreconditionTest(_:)();
    (*(v1 + 8))(v4, v0);
    if (v10)
    {
      if (qword_100501DA8 == -1)
      {
LABEL_17:
        sub_10034682C(0);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
    goto LABEL_17;
  }

  if (!__CocoaSet.count.getter())
  {
    goto LABEL_11;
  }

LABEL_5:
  v7 = objc_opt_self();
  sub_10004EBC8(v7, 3);
  v8 = sub_1000C2A00(v6);

  if (qword_1005018F0 != -1)
  {
    swift_once();
  }

  v9 = sub_1000E0074(v8);

  sub_100076084(v9);
}

uint64_t sub_1000C38C8()
{
  v1 = *(v0 + 4);

  v2 = OBJC_IVAR____TtC10seserviced13AlishaExpress_logger;
  v3 = type metadata accessor for Logger();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AlishaExpress()
{
  result = qword_100503498;
  if (!qword_100503498)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000C39C0()
{
  result = type metadata accessor for Logger();
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

void sub_1000C3A64(int64_t a1)
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = v3[8];
  __chkstk_darwin(v2);
  v6 = (&v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    goto LABEL_39;
  }

  while (1)
  {
    v7 = qword_10051B7F0;
    *v6 = qword_10051B7F0;
    v8 = enum case for DispatchPredicate.onQueue(_:);
    v10 = v3 + 13;
    v9 = v3[13];
    v9(v6, enum case for DispatchPredicate.onQueue(_:), v2);
    v11 = v7;
    v12 = _dispatchPreconditionTest(_:)();
    v14 = v3[1];
    ++v3;
    v13 = v14;
    v15 = (v14)(v6, v2);
    if (v12)
    {
      v50 = v11;
      v51 = v13;
      v52 = v9;
      if (qword_1005019E8 == -1)
      {
        goto LABEL_4;
      }
    }

    else
    {
      __break(1u);
    }

    v15 = swift_once();
LABEL_4:
    v16 = *(off_100504A68 + 3);
    __chkstk_darwin(v15);
    *(&v45 - 2) = sub_1000C49D4;
    *(&v45 - 1) = 0;
    os_unfair_lock_lock(v16 + 8);
    sub_1000C4A64(&v16[4], v57);
    os_unfair_lock_unlock(v16 + 8);
    if (LOBYTE(v57[0]) != 1)
    {
      return;
    }

    v46 = v8;
    v47 = v10;

    v17 = v53;
    v18 = a1;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.info.getter();

    v21 = os_log_type_enabled(v19, v20);
    v48 = v3;
    v49 = v2;
    v54 = v18;
    if (v21)
    {
      v22 = swift_slowAlloc();
      v3 = swift_slowAlloc();
      v57[0] = v3;
      *v22 = 136315138;
      v23 = sub_1001C337C();
      v25 = sub_1002FFA0C(v23, v24, v57);

      *(v22 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v19, v20, "%s", v22, 0xCu);
      sub_1000752F4(v3);
    }

    if (*(v17 + 16) != 1)
    {
      break;
    }

    if (qword_100501D78 != -1)
    {
      swift_once();
    }

    v26 = sub_1000CAAC4();
    v53 = v26;
    if ((v26 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      type metadata accessor for Peer();
      sub_1000C4A9C();
      Set.Iterator.init(_cocoa:)();
      v27 = v57[0];
      v2 = v57[1];
      v28 = v57[2];
      v29 = v57[3];
      v30 = v57[4];
    }

    else
    {
      v34 = -1 << *(v26 + 32);
      v2 = v26 + 56;
      v28 = ~v34;
      v35 = -v34;
      if (v35 < 64)
      {
        v36 = ~(-1 << v35);
      }

      else
      {
        v36 = -1;
      }

      v30 = v36 & *(v26 + 56);
      v29 = 0;
    }

    v45 = v28;
    v37 = (v28 + 64) >> 6;
    if (v27 < 0)
    {
      while (1)
      {
        v41 = __CocoaSet.Iterator.next()();
        if (!v41)
        {
          break;
        }

        v55 = v41;
        type metadata accessor for Peer();
        swift_dynamicCast();
        v40 = v56;
        a1 = v29;
        v3 = v30;
        if (!v56)
        {
          break;
        }

LABEL_28:
        v56 = v40;
        sub_1000C40B0(&v56, v54);

        v29 = a1;
        v30 = v3;
        if ((v27 & 0x8000000000000000) == 0)
        {
          goto LABEL_20;
        }
      }

LABEL_30:
      sub_100093854();

      if (*(v54 + 16) == 1)
      {
        sub_1000C4AF4();
        return;
      }

      if (qword_1005018F0 != -1)
      {
        swift_once();
      }

      v42 = v49;
      v43 = v50;
      *v6 = v50;
      v52(v6, v46, v42);
      v44 = v43;
      LOBYTE(v43) = _dispatchPreconditionTest(_:)();
      v51(v6, v42);
      if (v43)
      {
        if (qword_100501DA8 == -1)
        {
LABEL_36:
          sub_10034682C(0);
          return;
        }
      }

      else
      {
        __break(1u);
      }

      swift_once();
      goto LABEL_36;
    }

LABEL_20:
    v38 = v29;
    v39 = v30;
    a1 = v29;
    if (v30)
    {
LABEL_24:
      v3 = ((v39 - 1) & v39);
      v40 = *(*(v27 + 48) + ((a1 << 9) | (8 * __clz(__rbit64(v39)))));

      if (v40)
      {
        goto LABEL_28;
      }

      goto LABEL_30;
    }

    while (1)
    {
      a1 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        break;
      }

      if (a1 >= v37)
      {
        goto LABEL_30;
      }

      v39 = *(v2 + 8 * a1);
      ++v38;
      if (v39)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_39:
    swift_once();
  }

  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&_mh_execute_header, v31, v32, "Not running", v33, 2u);
  }
}

void sub_1000C40B0(unint64_t *a1, uint64_t a2)
{
  v56 = OBJC_IVAR____TtC10seserviced4Peer_expressState;
  v57 = *(*a1 + OBJC_IVAR____TtC10seserviced4Peer_expressState);
  v3 = *(a2 + 24);
  v6 = *(v3 + 56);
  v5 = v3 + 56;
  v4 = v6;
  v7 = 1 << *(*(a2 + 24) + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & v4;
  v58 = *a1;
  v60 = (*a1 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier);
  v61 = *(a2 + 24);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  while (v9)
  {
LABEL_9:
    v13 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v14 = (*(v61 + 48) + ((v11 << 10) | (16 * v13)));
    v15 = *v14;
    v2 = v14[1];
    v17 = *v60;
    v16 = v60[1];
    if (v2 >> 60 == 15)
    {
      if (v16 >> 60 == 15)
      {
        sub_100069E2C(v15, v2);
        sub_10006A2BC(v17, v16);

        sub_10006A2D0(v15, v2);
        goto LABEL_82;
      }

LABEL_13:
      sub_100069E2C(v15, v2);
      sub_10006A2BC(v17, v16);
      sub_10006A2D0(v15, v2);
      sub_10006A2D0(v17, v16);
    }

    else
    {
      if (v16 >> 60 == 15)
      {
        goto LABEL_13;
      }

      v18 = v2 >> 62;
      v19 = v16 >> 62;
      if (v2 >> 62 == 3)
      {
        if (v15)
        {
          v20 = 0;
        }

        else
        {
          v20 = v2 == 0xC000000000000000;
        }

        v21 = 0;
        v22 = v20 && v16 >> 62 == 3;
        if (v22 && !v17 && v16 == 0xC000000000000000)
        {
          goto LABEL_79;
        }

        goto LABEL_36;
      }

      if (v18 > 1)
      {
        if (v18 == 2)
        {
          v24 = *(v15 + 16);
          v23 = *(v15 + 24);
          v25 = __OFSUB__(v23, v24);
          v21 = v23 - v24;
          if (v25)
          {
            goto LABEL_104;
          }

          goto LABEL_36;
        }

        v21 = 0;
        if (v19 > 1)
        {
          goto LABEL_42;
        }

LABEL_37:
        if (v19)
        {
          LODWORD(v26) = HIDWORD(v17) - v17;
          if (__OFSUB__(HIDWORD(v17), v17))
          {
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            swift_once();
            goto LABEL_86;
          }

          v26 = v26;
        }

        else
        {
          v26 = BYTE6(v16);
        }

LABEL_44:
        if (v21 != v26)
        {
          goto LABEL_50;
        }

        if (v21 < 1)
        {
          goto LABEL_77;
        }

        if (v18 > 1)
        {
          if (v18 == 2)
          {
            v52 = *(v15 + 24);
            v54 = *(v15 + 16);
            sub_100069E2C(v15, v2);
            sub_10006A2BC(v17, v16);
            sub_100069E2C(v15, v2);
            sub_10006A2BC(v17, v16);
            v29 = __DataStorage._bytes.getter();
            if (v29)
            {
              v49 = v29;
              v30 = __DataStorage._offset.getter();
              v31 = v54;
              if (__OFSUB__(v54, v30))
              {
                goto LABEL_107;
              }

              v50 = v54 - v30 + v49;
            }

            else
            {
              v50 = 0;
              v31 = v54;
            }

            if (__OFSUB__(v52, v31))
            {
              goto LABEL_106;
            }

            __DataStorage._length.getter();
            v35 = v50;
            goto LABEL_66;
          }

          memset(v63, 0, 14);
          sub_100069E2C(v15, v2);
          sub_10006A2BC(v17, v16);
          sub_100069E2C(v15, v2);
          sub_10006A2BC(v17, v16);
        }

        else
        {
          if (v18)
          {
            if (v15 >> 32 < v15)
            {
              goto LABEL_105;
            }

            sub_100069E2C(v15, v2);
            sub_10006A2BC(v17, v16);
            sub_100069E2C(v15, v2);
            sub_10006A2BC(v17, v16);
            v32 = __DataStorage._bytes.getter();
            if (v32)
            {
              v51 = v32;
              v33 = __DataStorage._offset.getter();
              if (__OFSUB__(v15, v33))
              {
                goto LABEL_108;
              }

              v53 = v15 - v33 + v51;
            }

            else
            {
              v53 = 0;
            }

            __DataStorage._length.getter();
            v35 = v53;
LABEL_66:
            sub_10019F024(v35, v17, v16, v63);
            sub_10006A2D0(v17, v16);
            sub_10006A178(v15, v2);
            sub_10006A2D0(v17, v16);
            v34 = v63[0];
            goto LABEL_67;
          }

          v63[0] = v15;
          LOWORD(v63[1]) = v2;
          BYTE2(v63[1]) = BYTE2(v2);
          BYTE3(v63[1]) = BYTE3(v2);
          BYTE4(v63[1]) = BYTE4(v2);
          BYTE5(v63[1]) = BYTE5(v2);
          sub_100069E2C(v15, v2);
          sub_10006A2BC(v17, v16);
          sub_100069E2C(v15, v2);
          sub_10006A2BC(v17, v16);
        }

        sub_10019F024(v63, v17, v16, &v62);
        sub_10006A2D0(v17, v16);
        sub_10006A178(v15, v2);
        sub_10006A2D0(v17, v16);
        v34 = v62;
LABEL_67:
        sub_10006A2D0(v15, v2);
        if (v34)
        {
          goto LABEL_81;
        }
      }

      else
      {
        if (!v18)
        {
          v21 = BYTE6(v2);
          if (v19 <= 1)
          {
            goto LABEL_37;
          }

          goto LABEL_42;
        }

        LODWORD(v21) = HIDWORD(v15) - v15;
        if (__OFSUB__(HIDWORD(v15), v15))
        {
          goto LABEL_103;
        }

        v21 = v21;
LABEL_36:
        if (v19 <= 1)
        {
          goto LABEL_37;
        }

LABEL_42:
        if (v19 == 2)
        {
          v28 = *(v17 + 16);
          v27 = *(v17 + 24);
          v25 = __OFSUB__(v27, v28);
          v26 = v27 - v28;
          if (v25)
          {
            goto LABEL_102;
          }

          goto LABEL_44;
        }

        if (!v21)
        {
LABEL_77:
          sub_100069E2C(v15, v2);
          sub_10006A2BC(v17, v16);
          sub_10006A2D0(v17, v16);
          goto LABEL_80;
        }

LABEL_50:
        sub_100069E2C(v15, v2);
        sub_10006A2BC(v17, v16);
        sub_10006A2D0(v17, v16);
        sub_10006A2D0(v15, v2);
      }
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v10)
    {

      v9 = v58;
      *(v58 + v56) = 0;
      v36 = v57;
      goto LABEL_70;
    }

    v9 = *(v5 + 8 * v12);
    ++v11;
    if (v9)
    {
      v11 = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_79:
  sub_100069E2C(0, 0xC000000000000000);
  sub_10006A2BC(0, 0xC000000000000000);
  sub_10006A2D0(0, 0xC000000000000000);
  v15 = 0;
LABEL_80:
  sub_10006A2D0(v15, v2);
LABEL_81:

LABEL_82:
  v40 = *(a2 + 16);
  v9 = v58;
  *(v58 + v56) = v40;
  v36 = v57;
  if (v40 != 1)
  {
LABEL_70:
    if (v36 == 1 && *(v9 + OBJC_IVAR____TtC10seserviced4Peer_isConnected) == 1)
    {
      if (qword_100501B70 != -1)
      {
        swift_once();
      }

      v37 = qword_10051B5B0;

      v38 = sub_10024F2B4(v37, v9);

      v39 = sub_1000CA828(v38);

      if (v39)
      {
        sub_1002463FC();
        sub_100246268(0);
      }
    }

    return;
  }

  if (v57 == 1 || *(v58 + OBJC_IVAR____TtC10seserviced4Peer_isConnected) != 1)
  {
    return;
  }

  v11 = v59;
  if (qword_100501B60 != -1)
  {
    goto LABEL_109;
  }

LABEL_86:
  v41 = sub_1002B3B94(&off_1004C3B50);
  v43 = v42;
  v44 = sub_100239160(3, 17, v41, v42);
  v46 = v45;
  sub_10006A178(v41, v43);
  if (qword_100501960 != -1)
  {
    swift_once();
  }

  v47 = v11;
  sub_1000E71A0(v44, v46, v9);
  if (v11)
  {

    v47 = 0;
  }

  if (*(v9 + OBJC_IVAR____TtC10seserviced4Peer_pairingState) == 2)
  {
    v48 = sub_1000E7974(v9);
    if (v48 != 2 && (v48 & 1) == 0)
    {
      if (qword_100501B98 != -1)
      {
        swift_once();
      }

      sub_100251228(v9);
      if (v47)
      {
        sub_10006A178(v44, v46);

        return;
      }

      if (qword_100501BA0 != -1)
      {
        swift_once();
      }

      sub_1002558C4(0, v9);
    }
  }

  sub_10006A178(v44, v46);
}

unint64_t sub_1000C4A9C()
{
  result = qword_100503F20;
  if (!qword_100503F20)
  {
    type metadata accessor for Peer();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100503F20);
  }

  return result;
}

void sub_1000C4AF4()
{
  v0 = type metadata accessor for DispatchPredicate();
  v1 = *(v0 - 1);
  v2 = v1[8];
  __chkstk_darwin(v0);
  v4 = (&v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v5 = qword_10051B7F0;
  *v4 = qword_10051B7F0;
  v6 = enum case for DispatchPredicate.onQueue(_:);
  v7 = v1[13];
  v7(v4, enum case for DispatchPredicate.onQueue(_:), v0);
  v8 = v5;
  v9 = _dispatchPreconditionTest(_:)();
  v10 = v1[1];
  v10(v4, v0);
  if (v9)
  {
    if (qword_100501960 == -1)
    {
      goto LABEL_5;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_5:
  v11 = qword_10051B288;
  *v4 = v8;
  v7(v4, v6, v0);
  v12 = _dispatchPreconditionTest(_:)();
  v10(v4, v0);
  if ((v12 & 1) == 0)
  {
    __break(1u);
LABEL_18:
    v0 = sub_10012E6B0(0, v0[2] + 1, 1, v0);
    *(v11 + v12) = v0;
    goto LABEL_12;
  }

  v13 = *(v11 + OBJC_IVAR____TtC10seserviced6DSKBLE_centralState);
  v14 = v13 > 0xA;
  v15 = (1 << v13) & 0x430;
  if (!v14 && v15 != 0)
  {
    sub_1000C35A4();
    return;
  }

  v12 = OBJC_IVAR____TtC10seserviced6DSKBLE_closuresOnCentralState;
  swift_beginAccess();
  v0 = *(v11 + v12);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v11 + v12) = v0;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_12:
  v19 = v0[2];
  v18 = v0[3];
  if (v19 >= v18 >> 1)
  {
    v0 = sub_10012E6B0((v18 > 1), v19 + 1, 1, v0);
  }

  v0[2] = v19 + 1;
  v20 = &v0[3 * v19];
  *(v20 + 32) = 0;
  v20[5] = sub_1000C2C84;
  v20[6] = 0;
  *(v11 + v12) = v0;
  swift_endAccess();
}

uint64_t sub_1000C4DBC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000C4DD4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v6 = v5;
  v8 = *v5;
  if (a4)
  {
    v9 = sub_10008C808(a5);
    if (v10)
    {
      v11 = v9;
      v12 = *v6;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v6;
      v27 = *v6;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1003109EC();
        v14 = v27;
      }

      v15 = *(v14 + 48);
      v16 = type metadata accessor for UUID();
      v17 = *(v16 - 8);
      v18 = *(v17 + 8);
      v18(v15 + *(v17 + 72) * v11, v16);
      sub_1000DCF64(v11, v14);
      result = (v18)(a5, v16);
      *v6 = v14;
    }

    else
    {
      v25 = type metadata accessor for UUID();
      v26 = *(*(v25 - 8) + 8);

      return v26(a5, v25);
    }
  }

  else
  {
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v28 = *v6;
    sub_100314954(a1, a2, a3, a5, v23);
    v24 = type metadata accessor for UUID();
    result = (*(*(v24 - 8) + 8))(a5, v24);
    *v6 = v28;
  }

  return result;
}

uint64_t sub_1000C4FF0(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(uint64_t, uint64_t, unint64_t, uint64_t), void (*a5)(void))
{
  v6 = v5;
  if (a1)
  {
    v11 = *v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v5;
    a4(a1, a2, a3, isUniquelyReferenced_nonNull_native);
    result = sub_10006A178(a2, a3);
    *v5 = v23;
  }

  else
  {
    v15 = *v5;
    v16 = sub_10008C8DC(a2, a3);
    if (v17)
    {
      v18 = v16;
      v19 = *v6;
      v20 = swift_isUniquelyReferenced_nonNull_native();
      v21 = *v6;
      v24 = *v6;
      if (!v20)
      {
        a5();
        v21 = v24;
      }

      sub_10006A178(*(*(v21 + 48) + 16 * v18), *(*(v21 + 48) + 16 * v18 + 8));
      v22 = *(*(v21 + 56) + 8 * v18);

      sub_1000DDC00(v18, v21);
      result = sub_10006A178(a2, a3);
      *v6 = v21;
    }

    else
    {

      return sub_10006A178(a2, a3);
    }
  }

  return result;
}

uint64_t sub_1000C5158(int a1, uint64_t a2)
{
  v3 = v2;
  if ((a1 & 0x10000) != 0)
  {
    v10 = *v2;
    v11 = sub_10008C808(a2);
    if (v12)
    {
      v13 = v11;
      v14 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v3;
      v24 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_100310F28();
        v16 = v24;
      }

      v17 = *(v16 + 48);
      v18 = type metadata accessor for UUID();
      v19 = *(v18 - 8);
      v20 = *(v19 + 8);
      v20(v17 + *(v19 + 72) * v13, v18);
      sub_1000DD5AC(v13, v16);
      result = (v20)(a2, v18);
      *v3 = v16;
    }

    else
    {
      v21 = type metadata accessor for UUID();
      v22 = *(*(v21 - 8) + 8);

      return v22(a2, v21);
    }
  }

  else
  {
    v5 = *v2;
    v6 = a1;
    v7 = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v2;
    sub_100314E8C(v6, a2, v7);
    v8 = type metadata accessor for UUID();
    result = (*(*(v8 - 8) + 8))(a2, v8);
    *v2 = v23;
  }

  return result;
}

uint64_t sub_1000C5310(char a1, uint64_t a2)
{
  v3 = v2;
  v5 = *v2;
  if (a1 == 3)
  {
    v6 = sub_10008C808(a2);
    if (v7)
    {
      v8 = v6;
      v9 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v3;
      v22 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_100310CB8();
        v11 = v22;
      }

      v12 = *(v11 + 48);
      v13 = type metadata accessor for UUID();
      v14 = *(v13 - 8);
      v15 = *(v14 + 8);
      v15(v12 + *(v14 + 72) * v8, v13);
      sub_1000DD28C(v8, v11);
      result = (v15)(a2, v13);
      *v3 = v11;
    }

    else
    {
      v20 = type metadata accessor for UUID();
      v21 = *(*(v20 - 8) + 8);

      return v21(a2, v20);
    }
  }

  else
  {
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v3;
    sub_100314CF0(a1, a2, v18);
    v19 = type metadata accessor for UUID();
    result = (*(*(v19 - 8) + 8))(a2, v19);
    *v3 = v23;
  }

  return result;
}

uint64_t sub_1000C54CC(uint64_t a1, Swift::UInt a2)
{
  v3 = v2;
  if (*(a1 + 24))
  {
    sub_1000BC104(a1, v17);
    v5 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    result = sub_100315028(v17, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v15;
  }

  else
  {
    sub_100075768(a1, &qword_100502F08, &qword_10040A000);
    v8 = *v2;
    v9 = sub_10008C9C8(a2);
    if (v10)
    {
      v11 = v9;
      v12 = *v3;
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v3;
      v16 = *v3;
      if (!v13)
      {
        sub_100311198();
        v14 = v16;
      }

      sub_1000BC104((*(v14 + 56) + 40 * v11), v17);
      sub_1000DDA60(v11, v14);
      *v3 = v14;
    }

    else
    {
      v18 = 0;
      memset(v17, 0, sizeof(v17));
    }

    return sub_100075768(v17, &qword_100502F08, &qword_10040A000);
  }

  return result;
}

uint64_t sub_1000C55D8(uint64_t a1, Swift::UInt a2)
{
  v3 = v2;
  if (*(a1 + 24))
  {
    sub_1000BC104(a1, v17);
    v5 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    result = sub_1003152C8(v17, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v15;
  }

  else
  {
    sub_100075768(a1, &qword_1005031C8, &qword_10040A5D0);
    v8 = *v2;
    v9 = sub_10008C9C8(a2);
    if (v10)
    {
      v11 = v9;
      v12 = *v3;
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v3;
      v16 = *v3;
      if (!v13)
      {
        sub_1003114B0();
        v14 = v16;
      }

      sub_1000BC104((*(v14 + 56) + 40 * v11), v17);
      sub_1000DDA60(v11, v14);
      *v3 = v14;
    }

    else
    {
      v18 = 0;
      memset(v17, 0, sizeof(v17));
    }

    return sub_100075768(v17, &qword_1005031C8, &qword_10040A5D0);
  }

  return result;
}

uint64_t sub_1000C5710(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_1000BC104(a1, v10);
    v6 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    sub_100315484(v10, a2, a3, isUniquelyReferenced_nonNull_native);
    result = sub_10006A178(a2, a3);
    *v3 = v9;
  }

  else
  {
    sub_100075768(a1, &qword_100505FC0, &unk_10040DDF0);
    sub_10014545C(a2, a3, v10);
    sub_10006A178(a2, a3);
    return sub_100075768(v10, &qword_100505FC0, &unk_10040DDF0);
  }

  return result;
}

unint64_t sub_1000C57E8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, Swift::UInt a5)
{
  v6 = v5;
  if (a2)
  {
    v12 = *v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v5;
    result = sub_100315784(a1, a2, a3, a4, a5, isUniquelyReferenced_nonNull_native);
    *v5 = v24;
  }

  else
  {
    v15 = *v5;
    result = sub_10008C9C8(a5);
    if (v16)
    {
      v17 = result;
      v18 = *v6;
      v19 = swift_isUniquelyReferenced_nonNull_native();
      v20 = *v6;
      v25 = *v6;
      if (!v19)
      {
        sub_100311B20();
        v20 = v25;
      }

      v21 = *(v20 + 56) + 32 * v17;
      v22 = *(v21 + 8);
      v23 = *(v21 + 24);

      result = sub_1000DDF80(v17, v20);
      *v6 = v20;
    }
  }

  return result;
}

uint64_t sub_1000C58E0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_100315DC0(a1, a2, a3, isUniquelyReferenced_nonNull_native);
    result = sub_10006A178(a2, a3);
    *v3 = v18;
  }

  else
  {
    v11 = *v3;
    v12 = sub_10008C8DC(a2, a3);
    if (v13)
    {
      v14 = v12;
      v15 = *v4;
      v16 = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v4;
      v19 = *v4;
      if (!v16)
      {
        sub_100312350();
        v17 = v19;
      }

      sub_10006A178(*(*(v17 + 48) + 16 * v14), *(*(v17 + 48) + 16 * v14 + 8));

      sub_1000DDC00(v14, v17);
      result = sub_10006A178(a2, a3);
      *v4 = v17;
    }

    else
    {

      return sub_10006A178(a2, a3);
    }
  }

  return result;
}

uint64_t sub_1000C5A0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    sub_100315F3C(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v19;
  }

  else
  {
    v11 = *v3;
    v12 = sub_10008C908(a2, a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v20 = *v4;
      if (!v15)
      {
        sub_1003124BC();
        v16 = v20;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      v18 = *(*(v16 + 56) + 8 * v12);
      swift_unknownObjectRelease();
      result = sub_1000DE434(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

uint64_t sub_1000C5B04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_100068FC4(&qword_1005031F0, &unk_10040C4C0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v11) == 1)
  {
    sub_100075768(a1, &qword_1005031F0, &unk_10040C4C0);
    sub_1001457B8(a2, a3, v10);

    return sub_100075768(v10, &qword_1005031F0, &unk_10040C4C0);
  }

  else
  {
    (*(v12 + 32))(v15, a1, v11);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_10031669C(v15, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

void *sub_1000C5CDC(uint64_t a1)
{
  v25 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = __CocoaSet.count.getter();
    result = &_swiftEmptyArrayStorage;
    if (!v2)
    {
      return result;
    }

    v30 = &_swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    result = __CocoaSet.startIndex.getter();
    v27 = result;
    v28 = v4;
    v29 = 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v2 = *(a1 + 16);
  result = &_swiftEmptyArrayStorage;
  if (!v2)
  {
    return result;
  }

  v30 = &_swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  v5 = -1 << *(a1 + 32);
  result = _HashTable.startBucket.getter();
  v6 = *(a1 + 36);
  v27 = result;
  v28 = v6;
  v29 = 0;
LABEL_7:
  v7 = 0;
  while (v7 < v2)
  {
    if (__OFADD__(v7++, 1))
    {
      goto LABEL_31;
    }

    v11 = v27;
    v10 = v28;
    v12 = v29;
    sub_10008E990(v27, v28, v29, a1);
    v14 = v13;
    [v13 copyWithZone:0];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_10009393C(0, &qword_100503F00, SEEndPoint_ptr);
    swift_dynamicCast();

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    v15 = v30[2];
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    result = specialized ContiguousArray._endMutation()();
    if (v25)
    {
      if (!v12)
      {
        goto LABEL_35;
      }

      if (__CocoaSet.Index.handleBitPattern.getter())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      sub_100068FC4(&unk_100505FB0, &unk_10040DDE0);
      v8 = Set.Index._asCocoa.modify();
      __CocoaSet.formIndex(after:isUnique:)();
      result = v8(v26, 0);
      if (v7 == v2)
      {
LABEL_28:
        sub_1000937D4(v27, v28, v29);
        return v30;
      }
    }

    else
    {
      if (v12)
      {
        goto LABEL_36;
      }

      if ((v11 & 0x8000000000000000) != 0)
      {
        goto LABEL_32;
      }

      v16 = 1 << *(a1 + 32);
      if (v11 >= v16)
      {
        goto LABEL_32;
      }

      v17 = v11 >> 6;
      v18 = *(a1 + 56 + 8 * (v11 >> 6));
      if (((v18 >> v11) & 1) == 0)
      {
        goto LABEL_33;
      }

      if (*(a1 + 36) != v10)
      {
        goto LABEL_34;
      }

      v19 = v18 & (-2 << (v11 & 0x3F));
      if (v19)
      {
        v16 = __clz(__rbit64(v19)) | v11 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v20 = v17 << 6;
        v21 = v17 + 1;
        v22 = (a1 + 64 + 8 * v17);
        while (v21 < (v16 + 63) >> 6)
        {
          v24 = *v22++;
          v23 = v24;
          v20 += 64;
          ++v21;
          if (v24)
          {
            result = sub_1000937D4(v11, v10, 0);
            v16 = __clz(__rbit64(v23)) + v20;
            goto LABEL_27;
          }
        }

        result = sub_1000937D4(v11, v10, 0);
      }

LABEL_27:
      v27 = v16;
      v28 = v10;
      v29 = 0;
      if (v7 == v2)
      {
        goto LABEL_28;
      }
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
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

void *sub_1000C603C(uint64_t a1)
{
  v24 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = __CocoaSet.count.getter();
    result = _swiftEmptyArrayStorage;
    if (!v2)
    {
      return result;
    }

    v30 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    result = __CocoaSet.startIndex.getter();
    v27 = result;
    v28 = v4;
    v29 = 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v2 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return result;
  }

  v30 = _swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  v5 = -1 << *(a1 + 32);
  result = _HashTable.startBucket.getter();
  v6 = *(a1 + 36);
  v27 = result;
  v28 = v6;
  v29 = 0;
LABEL_7:
  v7 = 0;
  v23 = v2;
  while (v7 < v2)
  {
    if (__OFADD__(v7++, 1))
    {
      goto LABEL_31;
    }

    v11 = v27;
    v10 = v28;
    v12 = v29;
    sub_10008EDB4(v27, v28, v29, a1);
    type metadata accessor for Peer();

    sub_100068FC4(&qword_100503600, &qword_10040A9D8);
    swift_dynamicCast();
    [v25 copyWithZone:0];
    swift_unknownObjectRelease();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    swift_dynamicCast();

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    v13 = v30[2];
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    result = specialized ContiguousArray._endMutation()();
    if (v24)
    {
      if (!v12)
      {
        goto LABEL_35;
      }

      if (__CocoaSet.Index.handleBitPattern.getter())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      v2 = v23;
      sub_100068FC4(&qword_100502C08, &qword_100409CC8);
      v8 = Set.Index._asCocoa.modify();
      __CocoaSet.formIndex(after:isUnique:)();
      result = v8(v26, 0);
      if (v7 == v23)
      {
LABEL_28:
        sub_1000937D4(v27, v28, v29);
        return v30;
      }
    }

    else
    {
      if (v12)
      {
        goto LABEL_36;
      }

      if ((v11 & 0x8000000000000000) != 0)
      {
        goto LABEL_32;
      }

      v14 = 1 << *(a1 + 32);
      if (v11 >= v14)
      {
        goto LABEL_32;
      }

      v15 = v11 >> 6;
      v16 = *(a1 + 56 + 8 * (v11 >> 6));
      if (((v16 >> v11) & 1) == 0)
      {
        goto LABEL_33;
      }

      if (*(a1 + 36) != v10)
      {
        goto LABEL_34;
      }

      v17 = v16 & (-2 << (v11 & 0x3F));
      if (v17)
      {
        v14 = __clz(__rbit64(v17)) | v11 & 0x7FFFFFFFFFFFFFC0;
        v2 = v23;
      }

      else
      {
        v18 = v15 << 6;
        v19 = v15 + 1;
        v20 = (a1 + 64 + 8 * v15);
        v2 = v23;
        while (v19 < (v14 + 63) >> 6)
        {
          v22 = *v20++;
          v21 = v22;
          v18 += 64;
          ++v19;
          if (v22)
          {
            result = sub_1000937D4(v11, v10, 0);
            v14 = __clz(__rbit64(v21)) + v18;
            goto LABEL_27;
          }
        }

        result = sub_1000937D4(v11, v10, 0);
      }

LABEL_27:
      v27 = v14;
      v28 = v10;
      v29 = 0;
      if (v7 == v2)
      {
        goto LABEL_28;
      }
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
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

void *sub_1000C63FC(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  if (!v3)
  {
    return _swiftEmptyArrayStorage;
  }

  v4 = a1;
  sub_10019F3C0(0, v3, 0);
  v5 = v4 + 64;
  v6 = -1 << *(v4 + 32);
  result = _HashTable.startBucket.getter();
  v8 = result;
  v9 = 0;
  v28 = v4 + 72;
  v29 = v3;
  v30 = v4;
  v31 = v4 + 64;
  while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(v4 + 32))
  {
    v11 = v8 >> 6;
    if ((*(v5 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
    {
      goto LABEL_21;
    }

    v32 = v9;
    v34 = *(v4 + 36);
    v12 = (*(v4 + 48) + 16 * v8);
    v13 = *v12;
    v14 = v12[1];
    sub_100069E2C(*v12, v14);
    v33 = v2;
    sub_100288788(v13, v14);
    sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
    sub_10007A2D0();
    v15 = BidirectionalCollection<>.joined(separator:)();
    v17 = v16;

    result = sub_10006A178(v13, v14);
    v19 = _swiftEmptyArrayStorage[2];
    v18 = _swiftEmptyArrayStorage[3];
    if (v19 >= v18 >> 1)
    {
      result = sub_10019F3C0((v18 > 1), v19 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v19 + 1;
    v20 = &_swiftEmptyArrayStorage[2 * v19];
    v20[4] = v15;
    v20[5] = v17;
    v4 = v30;
    v5 = v31;
    v10 = 1 << *(v30 + 32);
    if (v8 >= v10)
    {
      goto LABEL_22;
    }

    v21 = *(v31 + 8 * v11);
    if ((v21 & (1 << v8)) == 0)
    {
      goto LABEL_23;
    }

    if (v34 != *(v30 + 36))
    {
      goto LABEL_24;
    }

    v22 = v21 & (-2 << (v8 & 0x3F));
    if (v22)
    {
      v10 = __clz(__rbit64(v22)) | v8 & 0x7FFFFFFFFFFFFFC0;
      v2 = v33;
    }

    else
    {
      v23 = v11 << 6;
      v24 = v11 + 1;
      v25 = (v28 + 8 * v11);
      v2 = v33;
      while (v24 < (v10 + 63) >> 6)
      {
        v27 = *v25++;
        v26 = v27;
        v23 += 64;
        ++v24;
        if (v27)
        {
          result = sub_1000937D4(v8, v34, 0);
          v10 = __clz(__rbit64(v26)) + v23;
          goto LABEL_4;
        }
      }

      result = sub_1000937D4(v8, v34, 0);
    }

LABEL_4:
    v9 = v32 + 1;
    v8 = v10;
    if (v32 + 1 == v29)
    {
      return _swiftEmptyArrayStorage;
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

uint64_t sub_1000C66AC(uint64_t a1, unint64_t a2, uint64_t a3)
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
              sub_100069E2C(v18, v17);
              sub_10019F024(v45, a1, a2, v44);
              sub_10006A178(v18, v17);
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

            sub_100069E2C(v18, v17);
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
            sub_10019F024(v35, v37, v38, v45);
            sub_10006A178(v18, v17);
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
            sub_100069E2C(v18, v17);
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
          sub_100069E2C(v18, v17);
          sub_10019F024(v45, a1, a2, v44);
          sub_10006A178(v18, v17);
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

BOOL sub_1000C6AD0(Swift::UInt a1, uint64_t a2)
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

uint64_t sub_1000C6B9C(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_1000C6C94(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (v8 = *(a2 + 40), sub_1000E0514(&unk_100507480, &type metadata accessor for UUID), v9 = dispatch thunk of Hashable._rawHashValue(seed:)(), v10 = -1 << *(a2 + 32), v11 = v9 & ~v10, v20 = a2 + 56, ((*(a2 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0))
  {
    v19 = a2;
    v12 = ~v10;
    v13 = v4 + 16;
    v14 = *(v4 + 16);
    v15 = *(v13 + 56);
    v16 = (v13 - 8);
    do
    {
      v14(v7, *(v19 + 48) + v15 * v11, v3);
      sub_1000E0514(&qword_100502C18, &type metadata accessor for UUID);
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v16)(v7, v3);
      if (v17)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v20 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

void sub_1000C6EAC()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    goto LABEL_34;
  }

  while (1)
  {
    v7 = qword_10051B7F0;
    *v6 = qword_10051B7F0;
    (*(v3 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v2);
    v8 = v7;
    LOBYTE(v7) = _dispatchPreconditionTest(_:)();
    (*(v3 + 8))(v6, v2);
    if (v7)
    {
      break;
    }

    __break(1u);
LABEL_36:
    swift_once();
LABEL_7:
    v6 = qword_10051B5B0;
    v13 = sub_100240640(qword_10051B5B0);
    sub_1000CB430(v13);
    v15 = v14;

    if (!v15)
    {
LABEL_32:
      sub_100240A9C(1);
      *(v1 + 16) = 0;
      return;
    }

    v31[2] = v6;
    if ((v15 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      type metadata accessor for UWBLyonSession();
      sub_1000E0514(&qword_100503628, type metadata accessor for UWBLyonSession);
      Set.Iterator.init(_cocoa:)();
      v16 = v33;
      v3 = v34;
      v2 = v35;
      v17 = v36;
      v18 = v37;
    }

    else
    {
      v21 = -1 << *(v15 + 32);
      v3 = v15 + 56;
      v2 = ~v21;
      v22 = -v21;
      if (v22 < 64)
      {
        v23 = ~(-1 << v22);
      }

      else
      {
        v23 = -1;
      }

      v18 = (v23 & *(v15 + 56));

      v17 = 0;
      v16 = v15;
    }

    v31[1] = v2;
    v24 = (v2 + 64) >> 6;
    while (v16 < 0)
    {
      v28 = __CocoaSet.Iterator.next()();
      if (!v28 || (v31[3] = v28, type metadata accessor for UWBLyonSession(), swift_dynamicCast(), v2 = v32, v27 = v17, v6 = v18, !v32))
      {
LABEL_31:
        sub_100093854();

        goto LABEL_32;
      }

LABEL_28:
      v29 = *(v2 + OBJC_IVAR____TtC10seserviced10UWBSession_peer);
      if (*v29 == _TtC10seserviced8LyonPeer && (*(v29 + OBJC_IVAR____TtC10seserviced8LyonPeer_uwbSessionID + 4) & 1) == 0)
      {
        v30 = *(v29 + OBJC_IVAR____TtC10seserviced8LyonPeer_uwbSessionID);

        sub_100241AFC(v30, 107);
      }

      sub_100241E60();
      sub_100246878();

      v17 = v27;
      v18 = v6;
    }

    v25 = v17;
    v26 = v18;
    v27 = v17;
    if (v18)
    {
LABEL_24:
      v6 = ((v26 - 1) & v26);
      v2 = *(*(v16 + 48) + ((v27 << 9) | (8 * __clz(__rbit64(v26)))));
      if (!v2)
      {
        goto LABEL_31;
      }

      goto LABEL_28;
    }

    while (1)
    {
      v27 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v27 >= v24)
      {
        goto LABEL_31;
      }

      v26 = *(v3 + 8 * v27);
      ++v25;
      if (v26)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_34:
    swift_once();
  }

  v9 = *(v1 + 16);
  v10 = Logger.logObject.getter();
  if (v9 == 1)
  {
    v11 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Stopping LyonUWB", v12, 2u);
    }

    if (qword_100501B70 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_36;
  }

  v19 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v10, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v10, v19, "LyonUWB is not running", v20, 2u);
  }
}

void sub_1000C7390(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = v4;
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = (&v132 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v14 = qword_10051B7F0;
  *v13 = qword_10051B7F0;
  (*(v10 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v9);
  v15 = v14;
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  (*(v10 + 8))(v13, v9);
  if ((v14 & 1) == 0)
  {
    __break(1u);
LABEL_72:
    swift_once();
    goto LABEL_6;
  }

  if (*(v3 + 16) != 1)
  {
    v18 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&_mh_execute_header, v18, v47, "LyonUWB is not running", v48, 2u);
    }

    goto LABEL_19;
  }

  if (qword_100501B70 != -1)
  {
    goto LABEL_72;
  }

LABEL_6:
  v16 = qword_10051B5B0;

  v17 = sub_10024F2B8(v16, a3);

  v18 = sub_1000CA858(v17, sub_10008EBB4);

  if (!v18)
  {
LABEL_21:
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&_mh_execute_header, v49, v50, "No active UWB Lyon session", v51, 2u);
    }

    sub_1000755A4();
    swift_allocError();
    *v52 = 0;
    swift_willThrow();
    return;
  }

  type metadata accessor for UWBLyonSession();
  v19 = swift_dynamicCastClass();
  if (!v19)
  {

    goto LABEL_21;
  }

  v136 = v19;
  sub_100069E2C(a1, a2);
  v20 = sub_1000939AC(a1, a2, 0, 0, 0);
  if (v5)
  {
LABEL_19:

    return;
  }

  v21 = v20;
  v22 = v20;
  v23 = OBJC_IVAR____TtC10seserviced7LyonUWB_logger;
  v135 = v3;
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.info.getter();
  v26 = os_log_type_enabled(v24, v25);
  LODWORD(v134) = v22;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v132 = v27;
    v133 = swift_slowAlloc();
    v138 = v133;
    *v27 = 136315138;
    v28 = sub_10024FED4(v22);
    v30 = a3;
    v31 = v23;
    v32 = v18;
    v33 = sub_1002FFA0C(v28, v29, &v138);

    v34 = v132;
    *(v132 + 1) = v33;
    v18 = v32;
    v23 = v31;
    a3 = v30;
    _os_log_impl(&_mh_execute_header, v24, v25, "Received Notification %s", v34, 0xCu);
    sub_1000752F4(v133);
  }

  if (v21 < 4u)
  {

    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v35, v36))
    {
LABEL_16:

      sub_1000755A4();
      swift_allocError();
      *v46 = 0;
      swift_willThrow();
      goto LABEL_19;
    }

    v37 = swift_slowAlloc();
    v138 = swift_slowAlloc();
    *v37 = 136315394;

    v38 = v18;
    v39 = UUID.uuidString.getter();
    v41 = v40;

    v42 = sub_1002FFA0C(v39, v41, &v138);

    *(v37 + 4) = v42;
    *(v37 + 12) = 2080;
    v43 = sub_10024FED4(v134);
    v45 = sub_1002FFA0C(v43, v44, &v138);
    v18 = v38;

    *(v37 + 14) = v45;
    _os_log_impl(&_mh_execute_header, v35, v36, "Peer %s received invalid notification %s", v37, 0x16u);
    swift_arrayDestroy();
    goto LABEL_14;
  }

  if (v21 == 5)
  {
    v69 = OBJC_IVAR____TtC10seserviced8LyonPeer_sessionState;
    v70 = *(a3 + OBJC_IVAR____TtC10seserviced8LyonPeer_sessionState);
    if (v70 <= 0xE)
    {
      v71 = 1 << v70;
      if ((v71 & 0x1880) != 0)
      {

        v72 = Logger.logObject.getter();
        v73 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v72, v73))
        {
          v74 = swift_slowAlloc();
          v75 = v18;
          v18 = swift_slowAlloc();
          v138 = v18;
          *v74 = 136315138;
          v137 = *(a3 + v69);
          v76 = String.init<A>(describing:)();
          v69 = sub_1002FFA0C(v76, v77, &v138);

          *(v74 + 4) = v69;
          _os_log_impl(&_mh_execute_header, v72, v73, "Received out of order rangingSessionSuspended when in %s", v74, 0xCu);
          sub_1000752F4(v18);
        }

        else
        {
        }

        v87 = *(a3 + OBJC_IVAR____TtC10seserviced8LyonPeer_analyticsData);
        v110 = v87[16];
        v66 = __CFADD__(v110, 1);
        v111 = v110 + 1;
        if (!v66)
        {
          goto LABEL_64;
        }

        __break(1u);
LABEL_59:
        sub_100241AFC(*v87, 201);

        *(a3 + v69) = 14;
        return;
      }

      if ((v71 & 0x4400) != 0)
      {
        v87 = (a3 + OBJC_IVAR____TtC10seserviced8LyonPeer_uwbSessionID);
        if (*(a3 + OBJC_IVAR____TtC10seserviced8LyonPeer_uwbSessionID + 4))
        {

          v35 = Logger.logObject.getter();
          v88 = static os_log_type_t.error.getter();

          if (!os_log_type_enabled(v35, v88))
          {
            goto LABEL_16;
          }

          v89 = swift_slowAlloc();
          v90 = v18;
          v91 = swift_slowAlloc();
          v138 = v91;
          *v89 = 136315138;

          v92 = UUID.uuidString.getter();
          v94 = v93;

          v95 = sub_1002FFA0C(v92, v94, &v138);

          *(v89 + 4) = v95;
          v96 = "Peer %s received suspended notification, but has no stored session ID";
          goto LABEL_52;
        }

        goto LABEL_59;
      }
    }

    v35 = Logger.logObject.getter();
    v112 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v35, v112))
    {
      goto LABEL_16;
    }

    v113 = swift_slowAlloc();
    v138 = swift_slowAlloc();
    *v113 = 136315394;
    v137 = *(a3 + v69);
    v114 = String.init<A>(describing:)();
    v115 = v18;
    v117 = sub_1002FFA0C(v114, v116, &v138);

    *(v113 + 4) = v117;
    *(v113 + 12) = 2080;

    v118 = UUID.uuidString.getter();
    v120 = v119;

    v121 = sub_1002FFA0C(v118, v120, &v138);

    *(v113 + 14) = v121;
    v18 = v115;
    v122 = "Received rangingSessionSuspended when in %s for %s";
    goto LABEL_69;
  }

  if (v21 != 4)
  {

    v78 = Logger.logObject.getter();
    v79 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v78, v79))
    {

      goto LABEL_19;
    }

    v80 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    v138 = v81;
    *v80 = 67109378;
    *(v80 + 4) = v134;
    *(v80 + 8) = 2080;

    v82 = v18;
    v83 = UUID.uuidString.getter();
    v85 = v84;

    v86 = sub_1002FFA0C(v83, v85, &v138);

    *(v80 + 10) = v86;
    _os_log_impl(&_mh_execute_header, v78, v79, "Not processing unknown ranging notification %u from peer %s", v80, 0x12u);
    sub_1000752F4(v81);

    return;
  }

  v53 = OBJC_IVAR____TtC10seserviced8LyonPeer_sessionState;
  v54 = *(a3 + OBJC_IVAR____TtC10seserviced8LyonPeer_sessionState);
  if (v54 <= 0xA)
  {
    if (v54 != 7)
    {
      if (v54 != 10)
      {
LABEL_67:

        v35 = Logger.logObject.getter();
        v112 = static os_log_type_t.error.getter();

        if (!os_log_type_enabled(v35, v112))
        {
          goto LABEL_16;
        }

        v113 = swift_slowAlloc();
        v138 = swift_slowAlloc();
        *v113 = 136315394;
        v137 = *(&v53->isa + a3);
        v124 = String.init<A>(describing:)();
        v125 = v18;
        v127 = sub_1002FFA0C(v124, v126, &v138);

        *(v113 + 4) = v127;
        *(v113 + 12) = 2080;

        v128 = UUID.uuidString.getter();
        v130 = v129;

        v131 = sub_1002FFA0C(v128, v130, &v138);

        *(v113 + 14) = v131;
        v18 = v125;
        v122 = "Received secureRangingOverUWBRadioFailed when in invalid state %s for %s";
LABEL_69:
        _os_log_impl(&_mh_execute_header, v35, v112, v122, v113, 0x16u);
        swift_arrayDestroy();
LABEL_14:

LABEL_15:

        goto LABEL_16;
      }

LABEL_49:
      v68 = (a3 + OBJC_IVAR____TtC10seserviced8LyonPeer_uwbSessionID);
      if ((*(a3 + OBJC_IVAR____TtC10seserviced8LyonPeer_uwbSessionID + 4) & 1) == 0)
      {
        if (v54 != 10)
        {
          *(a3 + OBJC_IVAR____TtC10seserviced8LyonPeer_sessionState) = 6;
          sub_1000C8E3C(a3);
          goto LABEL_19;
        }

        goto LABEL_66;
      }

      goto LABEL_50;
    }
  }

  else if (v54 != 11)
  {
    if (v54 != 14)
    {
      if (v54 == 12)
      {

        v55 = Logger.logObject.getter();
        v56 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v55, v56))
        {
          v57 = swift_slowAlloc();
          v58 = swift_slowAlloc();
          v134 = v18;
          v59 = v58;
          v138 = v58;
          *v57 = 136315138;

          v60 = UUID.uuidString.getter();
          v133 = v23;
          v62 = v61;

          v63 = sub_1002FFA0C(v60, v62, &v138);

          *(v57 + 4) = v63;
          _os_log_impl(&_mh_execute_header, v55, v56, "Received out of order secureRangingOverUWBRadioFailed when in pauseRangingRequested, discarding request sent to reader for %s", v57, 0xCu);
          sub_1000752F4(v59);
          v18 = v134;
        }

        if (qword_1005018F8 == -1)
        {
          goto LABEL_33;
        }

        goto LABEL_74;
      }

      goto LABEL_67;
    }

    goto LABEL_49;
  }

  v101 = Logger.logObject.getter();
  v102 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v101, v102))
  {
    v103 = swift_slowAlloc();
    v138 = swift_slowAlloc();
    *v103 = 136315394;
    v137 = *(&v53->isa + a3);
    v104 = String.init<A>(describing:)();
    v53 = v18;
    v106 = sub_1002FFA0C(v104, v105, &v138);

    *(v103 + 4) = v106;
    *(v103 + 12) = 2080;

    v107 = UUID.uuidString.getter();
    v109 = v108;

    v18 = sub_1002FFA0C(v107, v109, &v138);

    *(v103 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v101, v102, "Received out of order secureRangingOverUWBRadioFailed when in %s for %s", v103, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v87 = *(a3 + OBJC_IVAR____TtC10seserviced8LyonPeer_analyticsData);
  v123 = v87[16];
  v66 = __CFADD__(v123, 1);
  v111 = v123 + 1;
  if (!v66)
  {
LABEL_64:
    v87[16] = v111;
    return;
  }

  __break(1u);
LABEL_74:
  swift_once();
LABEL_33:
  sub_100081644(0, a3);
  v64 = *(a3 + OBJC_IVAR____TtC10seserviced8LyonPeer_analyticsData);
  v65 = *(v64 + 64);
  v66 = __CFADD__(v65, 1);
  v67 = v65 + 1;
  if (!v66)
  {
    *(v64 + 64) = v67;
    *(&v53->isa + a3) = 10;
    *(a3 + OBJC_IVAR____TtC10seserviced8LyonPeer_rangingIntentRequested) = 0;
    v68 = (a3 + OBJC_IVAR____TtC10seserviced8LyonPeer_uwbSessionID);
    if ((*(a3 + OBJC_IVAR____TtC10seserviced8LyonPeer_uwbSessionID + 4) & 1) == 0)
    {
LABEL_66:
      sub_100241AFC(*v68, 200);

      *(&v53->isa + a3) = 5;
      return;
    }

LABEL_50:

    v35 = Logger.logObject.getter();
    v88 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v35, v88))
    {
      goto LABEL_16;
    }

    v89 = swift_slowAlloc();
    v90 = v18;
    v91 = swift_slowAlloc();
    v138 = v91;
    *v89 = 136315138;

    v97 = UUID.uuidString.getter();
    v99 = v98;

    v100 = sub_1002FFA0C(v97, v99, &v138);

    *(v89 + 4) = v100;
    v96 = "Peer %s received secureRangingOverUWBRadioFailed notification, but has no stored session ID";
LABEL_52:
    _os_log_impl(&_mh_execute_header, v35, v88, v96, v89, 0xCu);
    sub_1000752F4(v91);
    v18 = v90;

    goto LABEL_15;
  }

  __break(1u);
}

void sub_1000C8420(uint64_t a1, __int16 a2)
{
  if (*(v2 + 16) != 1)
  {
    oslog = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(oslog, v7))
    {
      goto LABEL_13;
    }

    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = "LyonUWB is not running";
    goto LABEL_12;
  }

  if (qword_100501B70 != -1)
  {
    swift_once();
  }

  v5 = qword_10051B5B0;

  v6 = sub_10024F2B8(v5, a1);

  oslog = sub_1000CA858(v6, sub_10008EBB4);

  if (oslog)
  {
    type metadata accessor for UWBLyonSession();
    if (swift_dynamicCastClass())
    {
      sub_10024374C(*(a1 + OBJC_IVAR____TtC10seserviced8LyonPeer_readerStatus), a2);
      goto LABEL_13;
    }
  }

  oslog = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = "Session not available to report lock status";
LABEL_12:
    _os_log_impl(&_mh_execute_header, oslog, v7, v9, v8, 2u);
  }

LABEL_13:
}

void sub_1000C8608(__objc2_class **a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + 16) != 1 || *a1 != _TtC10seserviced8LyonPeer)
  {

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 67109120;
      *(v29 + 4) = *(v3 + 16);

      _os_log_impl(&_mh_execute_header, v27, v28, "LyonUWB isRunning: %{BOOL}d or could not cast as LyonPeer", v29, 8u);
    }

    else
    {
    }

    return;
  }

  v46 = v9;
  v12 = qword_100501B70;

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = qword_10051B5B0;

  v14 = sub_10024F2B8(v13, a1);

  v15 = sub_1000CA858(v14, sub_10008EBB4);

  if (v15)
  {
    type metadata accessor for UWBLyonSession();
    v16 = swift_dynamicCastClass();
    if (v16)
    {
      v45 = v16;

      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v47 = v44;
        v43 = v19;
        *v19 = 67109378;
        *(v19 + 4) = a2;
        *(v19 + 8) = 2080;
        v20 = v46;
        (*(v7 + 16))(v11, a1 + OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier, v46);
        sub_1000E0514(&qword_100504C70, &type metadata accessor for UUID);
        v42 = v17;
        v21 = dispatch thunk of CustomStringConvertible.description.getter();
        HIDWORD(v41) = v18;
        v23 = v22;
        (*(v7 + 8))(v11, v20);
        v24 = sub_1002FFA0C(v21, v23, &v47);

        v26 = v42;
        v25 = v43;
        *(v43 + 10) = v24;
        _os_log_impl(&_mh_execute_header, v26, BYTE4(v41), "Prefectching ursk for session %u in peer %s", v25, 0x12u);
        sub_1000752F4(v44);
      }

      else
      {
      }

      if (qword_100501CD0 != -1)
      {
        swift_once();
      }

      v38 = *(off_10050A240 + 4);
      v39 = __CFADD__(v38, 1);
      v40 = v38 + 1;
      if (v39)
      {
        __break(1u);
      }

      else
      {
        *(off_10050A240 + 4) = v40;
        sub_1002433B8(a2);
      }

      return;
    }
  }

  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v47 = v33;
    *v32 = 136315138;

    v34 = UUID.uuidString.getter();
    v36 = v35;

    v37 = sub_1002FFA0C(v34, v36, &v47);

    *(v32 + 4) = v37;
    _os_log_impl(&_mh_execute_header, v30, v31, "No session exists for peer %s", v32, 0xCu);
    sub_1000752F4(v33);
  }
}

void sub_1000C8B8C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10seserviced7LyonUWB_pendingTimeSyncEvents;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (*(v4 + 16) && (v5 = sub_10008C808(a1 + OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier), (v6 & 1) != 0))
  {
    v7 = (*(v4 + 56) + 24 * v5);
    v9 = *v7;
    v8 = v7[1];
    v10 = v7[2];
    swift_endAccess();
    if (qword_100501B70 != -1)
    {
      swift_once();
    }

    v11 = qword_10051B5B0;

    v12 = sub_10024F2B4(v11, a1);

    v13 = sub_1000CA858(v12, sub_10008EBB4);

    if (v13)
    {

      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v14, v15))
      {
        v24 = v9;
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v25 = v17;
        *v16 = 136315138;
        v18 = UUID.uuidString.getter();
        v20 = sub_1002FFA0C(v18, v19, &v25);

        *(v16 + 4) = v20;
        _os_log_impl(&_mh_execute_header, v14, v15, "Processing timesync for %s", v16, 0xCu);
        sub_1000752F4(v17);

        v9 = v24;
      }

      sub_100246580(v9, v8, v10);
    }

    else
    {
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&_mh_execute_header, v21, v22, "No active UWB Lyon session to do timesync for", v23, 2u);
      }
    }
  }

  else
  {
    swift_endAccess();
  }
}

void sub_1000C8E3C(uint64_t a1)
{
  v160 = a1;
  v2 = v1;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = v4[8];
  __chkstk_darwin(v3);
  v7 = (&v145 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v8 = qword_10051B7F0;
  *v7 = qword_10051B7F0;
  v9 = enum case for DispatchPredicate.onQueue(_:);
  v11 = (v4 + 13);
  v10 = v4[13];
  v10(v7, enum case for DispatchPredicate.onQueue(_:), v3);
  v12 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  v158 = v4[1];
  v158(v7, v3);
  if ((v8 & 1) == 0)
  {
    __break(1u);
    goto LABEL_62;
  }

  if (*(v2 + 16) != 1)
  {
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "LyonUWB is not running", v31, 2u);
    }

    return;
  }

  v157 = v10;
  if (*(v160 + OBJC_IVAR____TtC10seserviced8LyonPeer_hasError + 1) << 8 != 512)
  {

    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.info.getter();

    if (!os_log_type_enabled(v32, v33))
    {
      goto LABEL_30;
    }

    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v162[0] = v35;
    *v34 = 136315138;

    v36 = UUID.uuidString.getter();
    v38 = v37;

    v39 = sub_1002FFA0C(v36, v38, v162);

    *(v34 + 4) = v39;
    v40 = "%s already errored out, not sending device intent";
LABEL_29:
    _os_log_impl(&_mh_execute_header, v32, v33, v40, v34, 0xCu);
    sub_1000752F4(v35);

    goto LABEL_30;
  }

  if (qword_100501960 != -1)
  {
    swift_once();
  }

  v14 = sub_1000E7974(v160);
  if (v14 == 2 || (v14 & 1) != 0)
  {

    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.info.getter();

    if (!os_log_type_enabled(v32, v33))
    {
      goto LABEL_30;
    }

    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v162[0] = v35;
    *v34 = 136315138;

    v41 = UUID.uuidString.getter();
    v43 = v42;

    v44 = sub_1002FFA0C(v41, v43, v162);

    *(v34 + 4) = v44;
    v40 = "Not sending device intent: Not in closer state for %s";
    goto LABEL_29;
  }

  if (qword_100501B70 != -1)
  {
    swift_once();
  }

  v15 = qword_10051B5B0;
  v16 = v160;

  v156 = v15;
  v17 = sub_10024F2B8(v15, v16);

  v18 = sub_1000CA858(v17, sub_10008EBB4);

  if (!v18)
  {
    goto LABEL_27;
  }

  type metadata accessor for UWBLyonSession();
  v19 = swift_dynamicCastClass();
  if (!v19)
  {

LABEL_27:

    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v32, v33))
    {
      goto LABEL_30;
    }

    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v162[0] = v35;
    *v34 = 136315138;

    v45 = UUID.uuidString.getter();
    v47 = v46;

    v48 = sub_1002FFA0C(v45, v47, v162);

    *(v34 + 4) = v48;
    v40 = "Not sending device intent: No active UWB Lyon session for %s";
    goto LABEL_29;
  }

  v155 = v18;
  if (*(v19 + OBJC_IVAR____TtC10seserviced10UWBSession_state) != 4)
  {
    v49 = OBJC_IVAR____TtC10seserviced10UWBSession_state;
    v50 = v19;

    v51 = v155;
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = v51;
      v55 = swift_slowAlloc();
      v162[0] = swift_slowAlloc();
      *v55 = 136315394;
      LOBYTE(v163) = *(v50 + v49);
      v56 = String.init<A>(describing:)();
      v58 = sub_1002FFA0C(v56, v57, v162);

      *(v55 + 4) = v58;
      *(v55 + 12) = 2080;

      v59 = UUID.uuidString.getter();
      v61 = v60;

      v62 = sub_1002FFA0C(v59, v61, v162);

      *(v55 + 14) = v62;
      _os_log_impl(&_mh_execute_header, v52, v53, "Not sending device intent: UWB session is currently in state %s for %s", v55, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    return;
  }

  v20 = *(v160 + OBJC_IVAR____TtC10seserviced8LyonPeer_readerIdentifier + 8);
  if (v20 >> 60 == 15)
  {

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v162[0] = v24;
      *v23 = 136315138;

      v25 = UUID.uuidString.getter();
      v27 = v26;

      v28 = sub_1002FFA0C(v25, v27, v162);

      *(v23 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v21, v22, "Not sending device intent: No stored reader identifier for peer %s", v23, 0xCu);
      sub_1000752F4(v24);
    }

    return;
  }

  v154 = *(v160 + OBJC_IVAR____TtC10seserviced8LyonPeer_readerIdentifier);
  v63 = OBJC_IVAR____TtC10seserviced7LyonUWB_blockedReaderIdentifiers;
  swift_beginAccess();
  v152 = *(*(v2 + v63) + 16);
  sub_100069E2C(v154, v20);
  v153 = v20;
  if (v152)
  {
    sub_10008C8DC(v154, v20);
    v64 = v153;
    if (v65)
    {
      swift_endAccess();

      v66 = v154;
      sub_10006A2BC(v154, v64);
      v67 = v64;
      v32 = Logger.logObject.getter();
      v68 = static os_log_type_t.info.getter();
      sub_10006A2D0(v66, v64);

      if (!os_log_type_enabled(v32, v68))
      {

        sub_10006A2D0(v66, v64);
        return;
      }

      v69 = swift_slowAlloc();
      v162[0] = swift_slowAlloc();
      *v69 = 136315394;
      sub_100069E2C(v66, v64);
      v70 = Data.description.getter();
      v72 = v71;
      sub_10006A2D0(v66, v67);
      v73 = sub_1002FFA0C(v70, v72, v162);

      *(v69 + 4) = v73;
      *(v69 + 12) = 2080;

      v74 = UUID.uuidString.getter();
      v76 = v75;

      v77 = sub_1002FFA0C(v74, v76, v162);

      *(v69 + 14) = v77;
      _os_log_impl(&_mh_execute_header, v32, v68, "Not sending device intent: Ranging blocked for peer by Wallet for reader identifier %s for %s", v69, 0x16u);
      swift_arrayDestroy();

      sub_10006A2D0(v66, v67);
LABEL_30:

      return;
    }
  }

  swift_endAccess();
  if ((*(v160 + OBJC_IVAR____TtC10seserviced8LyonPeer_readerStatus) | 0x80) == 0x81)
  {

    v32 = Logger.logObject.getter();
    v78 = static os_log_type_t.info.getter();

    if (!os_log_type_enabled(v32, v78))
    {
LABEL_43:

      sub_10006A2D0(v154, v153);
      goto LABEL_30;
    }

    v79 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    v162[0] = v80;
    *v79 = 136315138;

    v81 = UUID.uuidString.getter();
    v83 = v82;

    v84 = sub_1002FFA0C(v81, v83, v162);

    *(v79 + 4) = v84;
    v85 = "Not sending device intent: Lock is unlocked for %s";
    goto LABEL_41;
  }

  *v7 = v12;
  v157(v7, v9, v3);
  v152 = v12;
  v86 = _dispatchPreconditionTest(_:)();
  v158(v7, v3);
  if ((v86 & 1) == 0)
  {
    __break(1u);
LABEL_79:
    swift_once();
LABEL_47:
    v88 = sub_1002A227C()[2];

    if (!v88)
    {

      v32 = Logger.logObject.getter();
      v78 = static os_log_type_t.info.getter();

      if (!os_log_type_enabled(v32, v78))
      {
        goto LABEL_43;
      }

      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v163 = v80;
      *v79 = 136315138;

      v102 = UUID.uuidString.getter();
      v104 = v103;

      v105 = sub_1002FFA0C(v102, v104, &v163);

      *(v79 + 4) = v105;
      v85 = "Not sending device intent: Ranging limit is currently exceeded, and no exception is set for %s";
LABEL_41:
      _os_log_impl(&_mh_execute_header, v32, v78, v85, v79, 0xCu);
      sub_1000752F4(v80);

LABEL_42:

      goto LABEL_43;
    }

    goto LABEL_48;
  }

  v12 = OBJC_IVAR____TtC10seserviced6DSKUWB_rangingLimitExceeded;
  v87 = v156;
  swift_beginAccess();
  if (sub_1000C6AD0(1uLL, *&v12[v87]))
  {
    if (qword_100501BF0 == -1)
    {
      goto LABEL_47;
    }

    goto LABEL_79;
  }

LABEL_48:
  v151 = v12;
  if (*(v160 + OBJC_IVAR____TtC10seserviced8LyonPeer_didFetchUrsk) == 1)
  {
    v13 = OBJC_IVAR____TtC10seserviced8LyonPeer_sessionState;
    v89 = *(v160 + OBJC_IVAR____TtC10seserviced8LyonPeer_sessionState);
    if (v89 == 14)
    {
      v148 = OBJC_IVAR____TtC10seserviced8LyonPeer_sessionState;
      v117 = [objc_opt_self() TLVWithTag:1 value:0];
      if (!v117)
      {
LABEL_84:
        __break(1u);
        return;
      }

      v118 = v117;
      v92 = [v117 asData];

      v93 = 11;
      if (!v92)
      {
LABEL_54:
        v149 = 0xF000000000000000;
        v150 = 0;
LABEL_68:
        v121 = v160;
        v122 = v148;
        *(&v148->isa + v160) = v93;
        v123 = v122;

        v124 = Logger.logObject.getter();
        v125 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v124, v125))
        {
          v126 = swift_slowAlloc();
          v146 = v125;
          v127 = v126;
          v147 = swift_slowAlloc();
          v163 = v147;
          *v127 = 136315394;
          v161 = *(&v123->isa + v121);
          v128 = String.init<A>(describing:)();
          v148 = v124;
          v130 = sub_1002FFA0C(v128, v129, &v163);

          *(v127 + 4) = v130;
          *(v127 + 12) = 2080;

          v131 = UUID.uuidString.getter();
          v133 = v132;

          v134 = sub_1002FFA0C(v131, v133, &v163);

          *(v127 + 14) = v134;
          v124 = v148;
          _os_log_impl(&_mh_execute_header, v148, v146, "Sending device intent in state: %s for peer %s", v127, 0x16u);
          swift_arrayDestroy();
        }

        v135 = v149;
        v136 = v150;
        if (qword_1005018F8 != -1)
        {
          swift_once();
        }

        if (v135 >> 60 != 15)
        {
          v137 = qword_10051B188;
          sub_100069E2C(v136, v135);
          v139 = v159;
          v138 = v160;
          v148 = v137;
          sub_100081ED8(2u, 1, v136, v135, v160);
          sub_10006A2D0(v136, v135);
          if (v139)
          {

            sub_10006A2D0(v154, v153);
            sub_10006A2D0(v136, v135);
            return;
          }

          v159 = 0;
          v140 = *(v138 + OBJC_IVAR____TtC10seserviced8LyonPeer_analyticsData);
          v141 = v152;
          *v7 = v152;
          v157(v7, v9, v3);
          v142 = v141;

          v143 = _dispatchPreconditionTest(_:)();
          v158(v7, v3);
          if (v143)
          {
            LOBYTE(v141) = sub_1000C6AD0(1uLL, *&v151[v156]);
            v11 = v154;
            if (qword_100501BF0 == -1)
            {
LABEL_77:
              v144 = sub_1002A227C();
              sub_1002F8EBC(v141 & 1, v144);

              sub_100081838(0, 0x6920656369766544, 0xED0000746E65746ELL, v160);
              sub_10006A2D0(v150, v149);

              sub_10006A2D0(v11, v153);
              return;
            }
          }

          else
          {
            __break(1u);
          }

          swift_once();
          goto LABEL_77;
        }

        __break(1u);
        goto LABEL_83;
      }

LABEL_67:
      v119 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v149 = v120;
      v150 = v119;

      goto LABEL_68;
    }

    if (v89 != 10)
    {
      if (v89 == 6)
      {
        v148 = OBJC_IVAR____TtC10seserviced8LyonPeer_sessionState;
        v90 = [objc_opt_self() TLVWithTag:0 value:0];
        if (!v90)
        {
LABEL_83:
          __break(1u);
          goto LABEL_84;
        }

        v91 = v90;
        v92 = [v90 asData];

        v93 = 7;
        if (!v92)
        {
          goto LABEL_54;
        }

        goto LABEL_67;
      }

LABEL_63:
      v106 = v13;
      v107 = v160;

      v32 = Logger.logObject.getter();
      v108 = static os_log_type_t.info.getter();

      if (!os_log_type_enabled(v32, v108))
      {
        goto LABEL_43;
      }

      v109 = swift_slowAlloc();
      v163 = swift_slowAlloc();
      *v109 = 136315394;
      v161 = *(v107 + v106);
      v110 = String.init<A>(describing:)();
      v112 = sub_1002FFA0C(v110, v111, &v163);

      *(v109 + 4) = v112;
      *(v109 + 12) = 2080;

      v113 = UUID.uuidString.getter();
      v115 = v114;

      v116 = sub_1002FFA0C(v113, v115, &v163);

      *(v109 + 14) = v116;
      _os_log_impl(&_mh_execute_header, v32, v108, "Not sending device intent - incorrect state %s for %s", v109, 0x16u);
      swift_arrayDestroy();

      goto LABEL_42;
    }

LABEL_62:
    *(v160 + OBJC_IVAR____TtC10seserviced8LyonPeer_rangingIntentRequested) = 0;
    goto LABEL_63;
  }

  v94 = Logger.logObject.getter();
  v95 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v94, v95))
  {
    v96 = swift_slowAlloc();
    v97 = swift_slowAlloc();
    v163 = v97;
    *v96 = 136315138;

    v98 = UUID.uuidString.getter();
    v100 = v99;

    v101 = sub_1002FFA0C(v98, v100, &v163);

    *(v96 + 4) = v101;
    _os_log_impl(&_mh_execute_header, v94, v95, "Not sending device intent: URSK not prefetched for %s", v96, 0xCu);
    sub_1000752F4(v97);
  }

  sub_10006A2D0(v154, v153);
}

void sub_1000CA2E8(void *a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = (&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v8 = qword_10051B7F0;
  *v7 = qword_10051B7F0;
  (*(v4 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v3);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v7, v3);
  if ((v8 & 1) == 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (*(v1 + 16) == 1)
  {
    if (qword_100501960 == -1)
    {
LABEL_6:
      v10 = qword_10051B288;

      sub_10011333C(a1, v10, a1, v1);

      return;
    }

LABEL_11:
    swift_once();
    goto LABEL_6;
  }

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Not running", v13, 2u);
  }
}

void sub_1000CA51C(uint64_t a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = (&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v8 = qword_10051B7F0;
  *v7 = qword_10051B7F0;
  (*(v4 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v3);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v7, v3);
  if ((v8 & 1) == 0)
  {
    __break(1u);
LABEL_19:
    swift_once();
    goto LABEL_6;
  }

  if (*(v1 + 16) != 1)
  {
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v12, v13))
    {
      goto LABEL_17;
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = "Not running";
LABEL_16:
    _os_log_impl(&_mh_execute_header, v12, v13, v15, v14, 2u);

    goto LABEL_17;
  }

  if (qword_100501B70 != -1)
  {
    goto LABEL_19;
  }

LABEL_6:
  v10 = qword_10051B5B0;

  v11 = sub_10024F2B8(v10, a1);

  v12 = sub_1000CA858(v11, sub_10008EBB4);

  if (!v12)
  {
LABEL_14:
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v12, v13))
    {
      goto LABEL_17;
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = "No session to cleanup";
    goto LABEL_16;
  }

  type metadata accessor for UWBLyonSession();
  if (!swift_dynamicCastClass())
  {

    goto LABEL_14;
  }

  if ((*(a1 + OBJC_IVAR____TtC10seserviced8LyonPeer_uwbSessionID + 4) & 1) == 0)
  {
    sub_100241AFC(*(a1 + OBJC_IVAR____TtC10seserviced8LyonPeer_uwbSessionID), 107);
  }

  sub_100241E60();
  sub_100246878();
LABEL_17:
}

uint64_t sub_1000CA858(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, BOOL, uint64_t))
{
  v4 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v5 = __CocoaSet.startIndex.getter();
    v7 = v6;
    v8 = __CocoaSet.endIndex.getter();
    v10 = v9;
    v11 = static __CocoaSet.Index.== infix(_:_:)();
    sub_1000937D4(v8, v10, 1);
    if (v11)
    {
LABEL_3:
      sub_1000937D4(v5, v7, v4 != 0);
      return 0;
    }
  }

  else
  {
    v13 = -1 << *(a1 + 32);
    v5 = _HashTable.startBucket.getter();
    v7 = *(a1 + 36);
    if (v5 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  v14 = a2(v5, v7, v4 != 0, a1);
  sub_1000937D4(v5, v7, v4 != 0);
  return v14;
}

uint64_t sub_1000CA97C(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 == 2 && *(a1 + 16) != *(a1 + 24))
    {
      goto LABEL_7;
    }

    goto LABEL_9;
  }

  if (!v2)
  {
    if ((a2 & 0xFF000000000000) != 0)
    {
      goto LABEL_7;
    }

LABEL_9:
    v3 = 0;
    v4 = 1;
    return v3 | (v4 << 8);
  }

  if (a1 == a1 >> 32)
  {
    goto LABEL_9;
  }

LABEL_7:
  v3 = Data._Representation.subscript.getter();
  v4 = 0;
  return v3 | (v4 << 8);
}

uint64_t sub_1000CAA04()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock(v1 + 8);
  sub_1000E1ED4(&v1[4], &v5);
  os_unfair_lock_unlock(v1 + 8);
  v2 = v5;
  if ((*(v0 + 16) & 1) == 0)
  {
    v3 = sub_1000C5CDC(v5);

    v2 = sub_1000E1FD8(v3, &qword_100503F00, SEEndPoint_ptr, &qword_100503608, sub_1000D5130);
  }

  return v2;
}

uint64_t sub_1000CAAC4()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock(v1 + 8);
  sub_1000E04E4(&v1[4], &v5);
  os_unfair_lock_unlock(v1 + 8);
  v2 = v5;
  if ((*(v0 + 16) & 1) == 0)
  {
    v3 = sub_1000C603C(v5);

    v2 = sub_1000DFF08(v3);
  }

  return v2;
}

uint64_t sub_1000CAB5C(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_1000E1E80();
  result = Set.init(minimumCapacity:)();
  v4 = 0;
  v15 = result;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  for (i = (v5 + 63) >> 6; v7; result = sub_10006A178(v14[0], v14[1]))
  {
    v9 = v4;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(a1 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];
    sub_100069E2C(*v11, v13);
    sub_1000D589C(v14, v12, v13);
  }

  while (1)
  {
    v9 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(a1 + 64 + 8 * v9);
    ++v4;
    if (v7)
    {
      v4 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000CAC80()
{
  v0 = type metadata accessor for LyonUWB();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1000CADF8();
  qword_10051B268 = result;
  return result;
}

uint64_t sub_1000CACC0()
{
  v0 = sub_100068FC4(&unk_100504880, &unk_10040A5B0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6[-v3];
  v6[15] = 1;
  v6[14] = 2;
  UserDefaultBacked.init(suiteName:key:initial:internalOnly:internalOnlyInitial:)();
  UserDefaultBacked.wrappedValue.getter();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_1000CADF8()
{
  *(v0 + 16) = 0;
  String.init(cString:)();
  Logger.init(subsystem:category:)();
  *(v0 + OBJC_IVAR____TtC10seserviced7LyonUWB_pendingTimeSyncEvents) = &_swiftEmptyDictionarySingleton;
  *(v0 + OBJC_IVAR____TtC10seserviced7LyonUWB_blockedReaderIdentifiers) = &_swiftEmptyDictionarySingleton;
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v3[4] = sub_1000E055C;
  v3[5] = v0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 1107296256;
  v3[2] = sub_100193978;
  v3[3] = &unk_1004C6CA8;
  v1 = _Block_copy(v3);

  os_state_add_handler();
  _Block_release(v1);
  return v0;
}

_DWORD *sub_1000CAF44()
{
  v1 = *(v0 + 16);
  v14 = &type metadata for Bool;
  LOBYTE(v13) = v1;
  sub_100075D50(&v13, v12);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v12, 0x6E696E6E75527369, 0xE900000000000067, isUniquelyReferenced_nonNull_native);
  v3 = OBJC_IVAR____TtC10seserviced7LyonUWB_blockedReaderIdentifiers;
  swift_beginAccess();
  v4 = *(v0 + v3);

  v6 = sub_1000C63FC(v5);

  v14 = sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
  *&v13 = v6;
  sub_100075D50(&v13, v12);
  v7 = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v12, 0xD000000000000018, 0x8000000100462A90, v7);
  if (qword_100501958 != -1)
  {
    swift_once();
  }

  v14 = &type metadata for Bool;
  LOBYTE(v13) = byte_10051B270;
  sub_100075D50(&v13, v12);
  v8 = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v12, 0xD000000000000010, 0x8000000100462AB0, v8);
  sub_1001950D4(&_swiftEmptyDictionarySingleton);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v10 = sub_100015DA0("lyonuwb.state", isa);

  return v10;
}

void sub_1000CB160()
{
  v1 = v0;
  v2 = *v0;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = (&v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v8 = qword_10051B7F0;
  *v7 = qword_10051B7F0;
  (*(v4 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v3);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v7, v3);
  if ((v8 & 1) == 0)
  {
    __break(1u);
LABEL_13:
    swift_once();
LABEL_11:
    v17[3] = v2;
    v17[4] = &off_1004C6C08;
    v17[0] = v1;

    sub_1002400AC(1uLL, v17);
    sub_100075768(v17, &qword_100502F08, &qword_10040A000);
    *(v1 + 16) = 1;
    return;
  }

  v10 = *(v1 + 16);
  v11 = Logger.logObject.getter();
  if ((v10 & 1) == 0)
  {
    v14 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v11, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v11, v14, "Starting LyonUWB", v15, 2u);
    }

    if (qword_100501B70 == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

  v12 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "LyonUWB is already running", v13, 2u);
  }
}

void sub_1000CB430(uint64_t a1)
{
  v1 = a1;
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) == 0)
  {
    if (*(a1 + 16))
    {
      goto LABEL_3;
    }

LABEL_5:
    v3 = &_swiftEmptySetSingleton;
    goto LABEL_6;
  }

  if (!__CocoaSet.count.getter())
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_100068FC4(&qword_100503630, &qword_10040A9F0);
  v3 = static _SetStorage.allocate(capacity:)();
LABEL_6:
  v41 = v3;
  if (type metadata accessor for UWBLyonSession() == &type metadata for String)
  {
    if (v2)
    {

      __CocoaSet.makeIterator()();
      type metadata accessor for UWBSession();
      sub_1000E0514(&qword_100507D00, type metadata accessor for UWBSession);
      Set.Iterator.init(_cocoa:)();
      v1 = v43;
      v7 = v44;
      v8 = v45;
      v9 = v46;
      v10 = v47;
    }

    else
    {
      v32 = -1 << *(v1 + 32);
      v7 = v1 + 56;
      v8 = ~v32;
      v33 = -v32;
      if (v33 < 64)
      {
        v34 = ~(-1 << v33);
      }

      else
      {
        v34 = -1;
      }

      v10 = v34 & *(v1 + 56);

      v9 = 0;
    }

    if (v1 < 0)
    {
      goto LABEL_49;
    }

    while (1)
    {
      v35 = v10;
      v36 = v9;
      if (!v10)
      {
        v37 = v9;
        do
        {
          v36 = v37 + 1;
          if (__OFADD__(v37, 1))
          {
            goto LABEL_60;
          }

          if (v36 >= ((v8 + 64) >> 6))
          {
LABEL_37:
            sub_100093854();
            return;
          }

          v35 = *(v7 + 8 * v36);
          ++v37;
        }

        while (!v35);
      }

      v38 = (v35 - 1) & v35;
      v39 = *(*(v1 + 48) + ((v36 << 9) | (8 * __clz(__rbit64(v35)))));
      while (1)
      {
        v40 = swift_dynamicCastClass();
        if (!v40)
        {

LABEL_57:
          sub_100093854();

          return;
        }

        sub_1000DEC48(v40);
        v9 = v36;
        v10 = v38;
        if ((v1 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_49:
        if (!__CocoaSet.Iterator.next()())
        {
          goto LABEL_37;
        }

        type metadata accessor for UWBSession();
        swift_dynamicCast();
        v39 = v42;
        v36 = v9;
        v38 = v10;
      }
    }
  }

  if (v2)
  {

    __CocoaSet.makeIterator()();
    type metadata accessor for UWBSession();
    sub_1000E0514(&qword_100507D00, type metadata accessor for UWBSession);
    Set.Iterator.init(_cocoa:)();
    v1 = v43;
    v4 = v44;
    v5 = v45;
    v2 = v46;
    v6 = v47;
  }

  else
  {
    v11 = -1 << *(v1 + 32);
    v4 = v1 + 56;
    v5 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v6 = v13 & *(v1 + 56);
  }

  v14 = (v5 + 64) >> 6;
  v15 = v3 + 56;
  while (v1 < 0)
  {
    if (!__CocoaSet.Iterator.next()())
    {
      goto LABEL_37;
    }

    type metadata accessor for UWBSession();
    swift_dynamicCast();
    v21 = v42;
    v18 = v2;
    v20 = v6;
LABEL_27:
    v22 = swift_dynamicCastClass();
    if (!v22)
    {

      goto LABEL_57;
    }

    v23 = v22;
    v24 = NSObject._rawHashValue(seed:)(*(v41 + 5));
    v25 = -1 << v41[32];
    v26 = v24 & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*&v15[8 * (v26 >> 6)]) != 0)
    {
      v16 = __clz(__rbit64((-1 << v26) & ~*&v15[8 * (v26 >> 6)])) | v26 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v28 = 0;
      v29 = (63 - v25) >> 6;
      do
      {
        if (++v27 == v29 && (v28 & 1) != 0)
        {
          __break(1u);
          goto LABEL_59;
        }

        v30 = v27 == v29;
        if (v27 == v29)
        {
          v27 = 0;
        }

        v28 |= v30;
        v31 = *&v15[8 * v27];
      }

      while (v31 == -1);
      v16 = __clz(__rbit64(~v31)) + (v27 << 6);
    }

    *&v15[(v16 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v16;
    *(*(v41 + 6) + 8 * v16) = v23;
    ++*(v41 + 2);
    v2 = v18;
    v6 = v20;
  }

  v17 = v6;
  v18 = v2;
  if (v6)
  {
LABEL_24:
    v20 = (v17 - 1) & v17;
    v42 = *(*(v1 + 48) + ((v18 << 9) | (8 * __clz(__rbit64(v17)))));
    v21 = v42;
    goto LABEL_27;
  }

  v19 = v2;
  while (1)
  {
    v18 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v18 >= v14)
    {
      goto LABEL_37;
    }

    v17 = *(v4 + 8 * v18);
    ++v19;
    if (v17)
    {
      goto LABEL_24;
    }
  }

LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
}

id sub_1000CB98C(uint64_t a1, uint64_t a2, __int16 a3)
{
  v5 = v3;
  LOWORD(v6) = a3;
  v7 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v9 = [v7 TLVsWithData:isa];

  if (!v9)
  {
    sub_1000755A4();
    swift_allocError();
    *v15 = 0;
    swift_willThrow();
    return v3;
  }

  sub_10009393C(0, &qword_100502418, SESTLV_ptr);
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v36 = _swiftEmptyArrayStorage;
  v35 = _swiftEmptyArrayStorage;
  v34 = 256;
  v32 = 0;
  v33 = 1;
  v31 = 256;
  if (v10 >> 62)
  {
    goto LABEL_34;
  }

  for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {

    if (!i)
    {
      break;
    }

    v28 = v6;
    v12 = 0;
    v6 = v10 & 0xC000000000000001;
    while (1)
    {
      if (v6)
      {
        v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_33;
        }

        v13 = *(v10 + 8 * v12 + 32);
      }

      v14 = v13;
      v3 = (v12 + 1);
      if (__OFADD__(v12, 1))
      {
        break;
      }

      v30 = v13;
      sub_1000CD1F4(&v30, &v36, &v35, &v34, &v32, v5, &v31);
      if (v4)
      {

        goto LABEL_26;
      }

      ++v12;
      if (v3 == i)
      {
        v16 = v36;
        LOWORD(v6) = v28;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    ;
  }

  v16 = _swiftEmptyArrayStorage;
LABEL_17:

  if (v16 >> 62)
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_23;
    }
  }

  else if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_23;
  }

  if (v35 >> 62)
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_23;
    }
  }

  else if (!*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_23;
  }

  if ((v34 & 0x100) == 0 && (v33 & 1) == 0)
  {
    v29 = v34;
    v22 = v32;
    if (HIBYTE(v31))
    {
      v23 = 0;
    }

    else
    {
      v23 = v31;
    }

    v24 = objc_allocWithZone(NIAcwgM1Msg);
    sub_10009393C(0, &qword_100504C80, NSNumber_ptr);
    v25 = v6;
    v26 = Array._bridgeToObjectiveC()().super.isa;
    v27 = Array._bridgeToObjectiveC()().super.isa;
    v3 = [v24 initWithSupportedUwbConfigIds:v26 supportedPulseShapeCombos:v27 channelBitmask:v29 uwbSessionId:v22 finalData2Bitmask:v23 selectedProtocolVersion:v25];

    return v3;
  }

LABEL_23:
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "expected values not found while parsng M1 message", v19, 2u);
  }

  sub_1000755A4();
  swift_allocError();
  *v20 = 2;
  swift_willThrow();
  v3 = v35;

LABEL_26:

  return v3;
}

id sub_1000CBDA8(uint64_t a1, void *a2)
{
  v5 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v7 = [v5 TLVsWithData:isa];

  v8 = &qword_100503000;
  if (!v7)
  {
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&_mh_execute_header, v55, v56, "Could not parse message for M1", v57, 2u);
    }

    sub_1000755A4();
    swift_allocError();
    *v58 = 0;
    return swift_willThrow();
  }

  v74 = a1;
  sub_10009393C(0, &qword_100502418, SESTLV_ptr);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v9 >> 62)
  {
LABEL_60:
    v10 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v87 = v8[166];
  if (!v10)
  {

LABEL_49:
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&_mh_execute_header, v59, v60, "expected values not found while parsing M3 message", v61, 2u);
    }

    sub_1000755A4();
    swift_allocError();
    *v62 = 2;
    return swift_willThrow();
  }

  v8 = v10;
  v73 = a2;
  v11 = 0;
  v75 = 0;
  v76 = 0;
  v77 = 0;
  v78 = 0;
  v85 = 1;
  v80 = 1;
  v81 = 1;
  v82 = 1;
  v83 = 1;
  v79 = 1;
  v84 = 1;
  v86 = v10;
  do
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_59;
      }

      v12 = *(v9 + 8 * v11 + 32);
    }

    a2 = v12;
    v13 = (v11 + 1);
    if (__OFADD__(v11, 1))
    {
      __break(1u);
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    v14 = [v12 tag];
    if (v14 <= 8)
    {
      switch(v14)
      {
        case 4:
          result = [a2 value];
          if (!result)
          {
            goto LABEL_67;
          }

          v31 = result;
          v32 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v34 = v33;

          v35 = sub_1000939AC(v32, v34, 0, 0, 1);
          if (v2)
          {
            goto LABEL_55;
          }

          BYTE4(v75) = v35;
          v85 = 0;
          break;
        case 6:
          result = [a2 value];
          if (!result)
          {
            goto LABEL_66;
          }

          v50 = result;
          v51 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v53 = v52;

          v54 = sub_1000939F8(v51, v53, 0, 0, 1);
          if (v2)
          {
            sub_10006A178(v51, v53);
LABEL_55:

            sub_100069E2C(v74, v73);
            v63 = Logger.logObject.getter();
            v64 = static os_log_type_t.error.getter();
            sub_10006A178(v74, v73);
            if (os_log_type_enabled(v63, v64))
            {
              v65 = swift_slowAlloc();
              v66 = swift_slowAlloc();
              v88 = v66;
              *v65 = 136315138;
              sub_100288788(v74, v73);
              sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
              sub_10007A2D0();
              v67 = BidirectionalCollection<>.joined(separator:)();
              v69 = v68;

              v70 = sub_1002FFA0C(v67, v69, &v88);

              *(v65 + 4) = v70;
              _os_log_impl(&_mh_execute_header, v63, v64, "Incorrectly formatted TLV while parsing for M3: %s", v65, 0xCu);
              sub_1000752F4(v66);
            }

            sub_1000755A4();
            swift_allocError();
            *v71 = 0;
            swift_willThrow();
          }

          v78 = v54;
          sub_10006A178(v51, v53);
          v79 = 0;
          break;
        case 8:
          result = [a2 value];
          if (!result)
          {
            goto LABEL_65;
          }

          v21 = result;
          v22 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v24 = v23;

          v25 = sub_1000939AC(v22, v24, 0, 0, 1);
          if (v2)
          {
            goto LABEL_55;
          }

          BYTE4(v77) = v25;
          v83 = 0;
          break;
        default:
          goto LABEL_32;
      }
    }

    else if (v14 > 10)
    {
      if (v14 == 11)
      {
        result = [a2 value];
        if (!result)
        {
          goto LABEL_62;
        }

        v45 = result;
        v46 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v48 = v47;

        v49 = sub_1000939AC(v46, v48, 0, 0, 1);
        if (v2)
        {
          goto LABEL_55;
        }

        LOBYTE(v77) = v49;
        v82 = 0;
      }

      else
      {
        if (v14 != 15)
        {
LABEL_32:
          v36 = a2;
          v37 = Logger.logObject.getter();
          v38 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v37, v38))
          {
            v39 = swift_slowAlloc();
            *v39 = 67109120;
            *(v39 + 4) = [v36 tag];

            _os_log_impl(&_mh_execute_header, v37, v38, "Ignoring nknown attribute tag %u in M3 message", v39, 8u);
            v8 = v86;
          }

          else
          {
          }

          goto LABEL_7;
        }

        result = [a2 value];
        if (!result)
        {
          __break(1u);
LABEL_62:
          __break(1u);
LABEL_63:
          __break(1u);
LABEL_64:
          __break(1u);
LABEL_65:
          __break(1u);
LABEL_66:
          __break(1u);
LABEL_67:
          __break(1u);
          return result;
        }

        v26 = result;
        v27 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v29 = v28;

        v30 = sub_1000939AC(v27, v29, 0, 0, 1);
        if (v2)
        {
          goto LABEL_55;
        }

        LOBYTE(v75) = v30;
        v84 = 0;
        v8 = v86;
      }
    }

    else if (v14 == 9)
    {
      result = [a2 value];
      if (!result)
      {
        goto LABEL_64;
      }

      v40 = result;
      v41 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v43 = v42;

      v44 = sub_1000939AC(v41, v43, 0, 0, 1);
      if (v2)
      {
        goto LABEL_55;
      }

      LOBYTE(v76) = v44;
      v80 = 0;
    }

    else
    {
      result = [a2 value];
      if (!result)
      {
        goto LABEL_63;
      }

      v16 = result;
      v17 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;

      v20 = sub_1000939AC(v17, v19, 0, 0, 1);
      if (v2)
      {
        goto LABEL_55;
      }

      BYTE4(v76) = v20;
      v81 = 0;
    }

LABEL_7:

    ++v11;
  }

  while (v13 != v8);

  if ((v85 | v80 | v81 | v82 | v79 | v83 | v84))
  {
    goto LABEL_49;
  }

  LOBYTE(v72) = v75;
  return [objc_allocWithZone(NIAcwgM3Msg) initWithSelectedRanMultiplier:BYTE4(v75) selectedNumChapsPerSlot:v76 numResponders:BYTE4(v76) numSlotsPerRound:v77 supportedSyncCodeIndexBitmask:v78 selectedHoppingConfigBitmask:BYTE4(v77) macMode:v72];
}

void sub_1000CC69C()
{
  v1 = v0;
  isa = Data._bridgeToObjectiveC()().super.isa;
  v3 = [objc_opt_self() TLVWithData:isa];

  if (v3)
  {
    if ([v3 tag] == 2)
    {
      v4 = [v3 value];
      if (v4)
      {
        v5 = v4;
        [v4 u32BE:0];

        return;
      }

      goto LABEL_24;
    }

    v1 = v3;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v10, v11))
    {

      v10 = v1;
LABEL_22:

      sub_1000755A4();
      swift_allocError();
      *v23 = 0;
      swift_willThrow();

      return;
    }

    v12 = swift_slowAlloc();
    *v12 = 67109376;
    *(v12 + 4) = [v1 tag];
    *(v12 + 8) = 2048;
    v13 = [v1 value];
    if (!v13)
    {
LABEL_25:

      __break(1u);
      return;
    }

    v14 = v13;
    v15 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    v18 = v17;
    v19 = v17 >> 62;
    if ((v17 >> 62) > 1)
    {
      if (v19 != 2)
      {
        sub_10006A178(v15, v17);
        v20 = 0;
        goto LABEL_21;
      }

      v22 = *(v15 + 16);
      v21 = *(v15 + 24);
      sub_10006A178(v15, v18);
      v20 = v21 - v22;
      if (!__OFSUB__(v21, v22))
      {
        goto LABEL_21;
      }

      __break(1u);
    }

    else if (!v19)
    {
      sub_10006A178(v15, v17);
      v20 = BYTE6(v17);
LABEL_21:
      *(v12 + 10) = v20;

      _os_log_impl(&_mh_execute_header, v10, v11, "Incorrect attribute id :%u of length : %ld", v12, 0x12u);

      goto LABEL_22;
    }

    sub_10006A178(v15, v18);
    LODWORD(v20) = HIDWORD(v15) - v15;
    if (__OFSUB__(HIDWORD(v15), v15))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v20 = v20;
    goto LABEL_21;
  }

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Could not parse request ranging message", v8, 2u);
  }

  sub_1000755A4();
  swift_allocError();
  *v9 = 0;
  swift_willThrow();
}

void sub_1000CC9AC()
{
  v1 = v0;
  isa = Data._bridgeToObjectiveC()().super.isa;
  v3 = [objc_opt_self() TLVWithData:isa];

  if (v3)
  {
    if ([v3 tag] == 17)
    {
      v4 = [v3 value];
      if (v4)
      {
        v5 = v4;
        v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v8 = v7;

        sub_1000939AC(v6, v8, 0, 0, 0);
        return;
      }

      goto LABEL_24;
    }

    v1 = v3;
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v13, v14))
    {

      v13 = v1;
LABEL_22:

      sub_1000755A4();
      swift_allocError();
      *v26 = 0;
      swift_willThrow();

      return;
    }

    v15 = swift_slowAlloc();
    *v15 = 67109376;
    *(v15 + 4) = [v1 tag];
    *(v15 + 8) = 2048;
    v16 = [v1 value];
    if (!v16)
    {
LABEL_25:

      __break(1u);
      return;
    }

    v17 = v16;
    v18 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    v21 = v20;
    v22 = v20 >> 62;
    if ((v20 >> 62) > 1)
    {
      if (v22 != 2)
      {
        sub_10006A178(v18, v20);
        v23 = 0;
        goto LABEL_21;
      }

      v25 = *(v18 + 16);
      v24 = *(v18 + 24);
      sub_10006A178(v18, v21);
      v23 = v24 - v25;
      if (!__OFSUB__(v24, v25))
      {
        goto LABEL_21;
      }

      __break(1u);
    }

    else if (!v22)
    {
      sub_10006A178(v18, v20);
      v23 = BYTE6(v20);
LABEL_21:
      *(v15 + 10) = v23;

      _os_log_impl(&_mh_execute_header, v13, v14, "Incorrect attribute id :%u of length :%ld", v15, 0x12u);

      goto LABEL_22;
    }

    sub_10006A178(v18, v21);
    LODWORD(v23) = HIDWORD(v18) - v18;
    if (__OFSUB__(HIDWORD(v18), v18))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v23 = v23;
    goto LABEL_21;
  }

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Could not parse message for suspend request", v11, 2u);
  }

  sub_1000755A4();
  swift_allocError();
  *v12 = 0;
  swift_willThrow();
}

void sub_1000CCCE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v44 = a2;
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = (&v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v14 = qword_10051B7F0;
  *v13 = qword_10051B7F0;
  (*(v10 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v9);
  v15 = v14;
  v16 = _dispatchPreconditionTest(_:)();
  (*(v10 + 8))(v13, v9);
  if ((v16 & 1) == 0)
  {
    __break(1u);
LABEL_19:
    swift_once();
    goto LABEL_8;
  }

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v43 = a3;
    v20 = v19;
    v21 = swift_slowAlloc();
    v46[0] = v21;
    *v20 = 136315138;

    v22 = UUID.uuidString.getter();
    v24 = v23;

    v25 = sub_1002FFA0C(v22, v24, v46);

    *(v20 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v17, v18, "Received BT TimeSync event for %s", v20, 0xCu);
    sub_1000752F4(v21);

    a3 = v43;
  }

  if (*(v5 + 16) != 1)
  {
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&_mh_execute_header, v40, v41, "LyonUWB is not running", v42, 2u);
    }

    return;
  }

  if (qword_100501B70 != -1)
  {
    goto LABEL_19;
  }

LABEL_8:
  v26 = qword_10051B5B0;

  v27 = sub_10024F2B8(v26, a4);

  v28 = sub_1000CA858(v27, sub_10008EBB4);

  if (v28)
  {
    if (*(a4 + OBJC_IVAR____TtC10seserviced8LyonPeer_sessionState) >= 5u)
    {
      sub_100246580(a1, v44, a3);

      return;
    }
  }

  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v46[0] = v32;
    *v31 = 136315138;
    LOBYTE(v45) = *(a4 + OBJC_IVAR____TtC10seserviced8LyonPeer_sessionState);
    v33 = String.init<A>(describing:)();
    v35 = sub_1002FFA0C(v33, v34, v46);

    *(v31 + 4) = v35;
    _os_log_impl(&_mh_execute_header, v29, v30, "Queuing timesync event as we are not ready to send in %s", v31, 0xCu);
    sub_1000752F4(v32);
  }

  v36 = OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier;
  v37 = OBJC_IVAR____TtC10seserviced7LyonUWB_pendingTimeSyncEvents;
  swift_beginAccess();
  v38 = *(v5 + v37);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v45 = *(v5 + v37);
  *(v5 + v37) = 0x8000000000000000;
  sub_100314954(a1, v44, a3, a4 + v36, isUniquelyReferenced_nonNull_native);
  *(v5 + v37) = v45;
  swift_endAccess();
}

void sub_1000CD1F4(id *a1, void *a2, void *a3, _BYTE *a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v13 = *a1;
  v14 = [*a1 tag];
  if (v14 <= 2)
  {
    if (v14)
    {
      if (v14 != 1)
      {
        if (v14 == 2)
        {
          v15 = [v13 value];
          if (v15)
          {
            v16 = v15;
            v17 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v19 = v18;

            v20 = sub_1000939F8(v17, v19, 0, 0, 1);
            sub_10006A178(v17, v19);
            if (!v7)
            {
              *a5 = v20;
              *(a5 + 4) = 0;
            }

            return;
          }

          goto LABEL_79;
        }

        goto LABEL_25;
      }

      v44 = [v13 value];
      if (!v44)
      {
LABEL_80:
        __break(1u);
        goto LABEL_81;
      }

      v45 = v44;
      a2 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v47 = v46;

      v31 = v47;
      v48 = v47 >> 62;
      if ((v47 >> 62) <= 1)
      {
        if (!v48)
        {
          sub_10006A178(a2, v47);
          v49 = BYTE6(v47);
LABEL_60:
          if (!v49)
          {
            return;
          }

          v76 = 0;
          while (1)
          {
            v77 = [v13 value];
            if (!v77)
            {
              break;
            }

            v78 = v77;
            v79 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v81 = v80;

            sub_1000939AC(v79, v81, v76, 0, 0);
            if (!v7)
            {
              UInt8._bridgeToObjectiveC()();
              specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
              if (*((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                v82 = *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              ++v76;
              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              if (v49 != v76)
              {
                continue;
              }
            }

            return;
          }

          goto LABEL_76;
        }

        sub_10006A178(a2, v47);
        if (__OFSUB__(HIDWORD(a2), a2))
        {
          goto LABEL_74;
        }

        v49 = HIDWORD(a2) - a2;
        goto LABEL_59;
      }

      if (v48 == 2)
      {
        v65 = a2[2];
        v64 = a2[3];
        sub_10006A178(a2, v31);
        v49 = v64 - v65;
        if (!__OFSUB__(v64, v65))
        {
LABEL_59:
          if ((v49 & 0x8000000000000000) == 0)
          {
            goto LABEL_60;
          }

          __break(1u);
          goto LABEL_72;
        }

        __break(1u);
LABEL_44:
        sub_10006A178(a3, v31);
        v66 = HIDWORD(a3) - a3;
        if (__OFSUB__(HIDWORD(a3), a3))
        {
LABEL_73:
          __break(1u);
LABEL_74:
          __break(1u);
LABEL_75:
          __break(1u);
LABEL_76:
          __break(1u);
          goto LABEL_77;
        }

        v33 = v66;
        if (v66 < 1)
        {
          return;
        }

        goto LABEL_46;
      }

      v75 = a2;
    }

    else
    {
      v27 = [v13 value];
      if (!v27)
      {
LABEL_77:
        __break(1u);
        goto LABEL_78;
      }

      v28 = v27;
      a3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v30 = v29;

      v31 = v30;
      v32 = v30 >> 62;
      if ((v30 >> 62) <= 1)
      {
        if (!v32)
        {
          sub_10006A178(a3, v30);
          v33 = BYTE6(v30);
          if (!BYTE6(v30))
          {
            return;
          }

          goto LABEL_46;
        }

        goto LABEL_44;
      }

      if (v32 == 2)
      {
        v63 = a3[2];
        v62 = a3[3];
        sub_10006A178(a3, v31);
        v33 = v62 - v63;
        if (__OFSUB__(v62, v63))
        {
LABEL_72:
          __break(1u);
          goto LABEL_73;
        }

        if (v33 < 1)
        {
          return;
        }

LABEL_46:
        v67 = 0;
        while (1)
        {
          v68 = __OFADD__(v67, 2) ? 0x7FFFFFFFFFFFFFFFLL : v67 + 2;
          v69 = [v13 value];
          if (!v69)
          {
            break;
          }

          v70 = v69;
          v71 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v73 = v72;

          sub_100090214(v71, v73, v67, 0, 0);
          sub_10006A178(v71, v73);
          if (!v7)
          {
            UInt16._bridgeToObjectiveC()();
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v74 = *((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v67 = v68;
            if (v68 < v33)
            {
              continue;
            }
          }

          return;
        }

        goto LABEL_75;
      }

      v75 = a3;
    }

    sub_10006A178(v75, v31);
    return;
  }

  switch(v14)
  {
    case 3:
      v34 = [v13 value];
      if (!v34)
      {
LABEL_78:
        __break(1u);
LABEL_79:
        __break(1u);
        goto LABEL_80;
      }

      v35 = v34;
      v36 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v38 = v37;

      v39 = sub_1000939AC(v36, v38, 0, 0, 1);
      if (!v7)
      {
        *a4 = v39;
        a4[1] = 0;
      }

      break;
    case 16:
      v50 = v13;
      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.info.getter();
      if (!os_log_type_enabled(v51, v52))
      {

        return;
      }

      v53 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v84 = v83;
      *v53 = 136315138;
      v54 = [v50 value];

      if (v54)
      {
        v55 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v57 = v56;

        sub_100288788(v55, v57);
        sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
        sub_10007A2D0();
        v58 = BidirectionalCollection<>.joined(separator:)();
        v60 = v59;
        sub_10006A178(v55, v57);

        v61 = sub_1002FFA0C(v58, v60, &v84);

        *(v53 + 4) = v61;
        _os_log_impl(&_mh_execute_header, v51, v52, "Ignoring vendor specific tag in M1 of value %s", v53, 0xCu);
        sub_1000752F4(v83);

        return;
      }

      goto LABEL_82;
    case 18:
      if (qword_100501958 != -1)
      {
        swift_once();
      }

      if (byte_10051B270 == 1)
      {
        v21 = [v13 value];
        if (!v21)
        {
LABEL_81:
          __break(1u);
LABEL_82:
          __break(1u);
          return;
        }

        v22 = v21;
        v23 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v25 = v24;

        v26 = sub_1000939AC(v23, v25, 0, 0, 1);
        if (!v7)
        {
          *a7 = v26;
          a7[1] = 0;
        }
      }

      break;
    default:
LABEL_25:
      v40 = v13;
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 67109120;
        *(v43 + 4) = [v40 tag];

        _os_log_impl(&_mh_execute_header, v41, v42, "Unknown attribute tag %u in M1 message", v43, 8u);
      }

      else
      {
      }

      return;
  }
}

void sub_1000CD958(void *a1, uint64_t a2, __objc2_class **a3)
{
  v5 = v3;
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = (&v103 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v14 = qword_10051B7F0;
  *v13 = qword_10051B7F0;
  (*(v10 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v9);
  v15 = v14;
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  (*(v10 + 8))(v13, v9);
  if ((v14 & 1) == 0)
  {
    __break(1u);
LABEL_42:
    swift_once();
LABEL_11:
    v28 = v4[49];
    v29 = sub_1000E22C4();
    sub_100080E48(a3, v29 & 0x1FF);

    return;
  }

  if (*(v5 + 16) != 1 || *a3 != _TtC10seserviced8LyonPeer)
  {

    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 67109120;
      *(v32 + 4) = *(v5 + 16);

      _os_log_impl(&_mh_execute_header, v30, v31, "LyonUWB isRunning: %{BOOL}d or could not cast as LyonPeer", v32, 8u);
    }

    else
    {
    }

    return;
  }

  p_class_meths = &OBJC_PROTOCOL___SESSessionInterface.class_meths;
  v4 = &unk_10051B000;
  if (a2)
  {
    v17 = *(a3 + OBJC_IVAR____TtC10seserviced8LyonPeer_analyticsData);
    *(v17 + 84) = 9;
    *(v17 + 88) = 0;
    swift_willThrow();

    goto LABEL_8;
  }

  if (!a1)
  {
    sub_1000755A4();
    swift_allocError();
    *v87 = 0;
    swift_willThrow();

    goto LABEL_8;
  }

  v33 = OBJC_IVAR____TtC10seserviced7LyonUWB_logger;

  v34 = a1;
  v103 = v33;
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v106 = v38;
    *v37 = 136315138;

    v39 = UUID.uuidString.getter();
    v40 = v34;
    v42 = v41;

    v43 = sub_1002FFA0C(v39, v42, &v106);
    v34 = v40;

    *(v37 + 4) = v43;
    _os_log_impl(&_mh_execute_header, v35, v36, "UWB Lyon session M2 message for %s", v37, 0xCu);
    sub_1000752F4(v38);
  }

  sub_100068FC4(&qword_100504060, &qword_10040B370);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_10040A950;
  LOWORD(v105) = __rev16([v34 selectedUwbConfigId]);
  v45 = sub_1002B1854(&v105, &v105 + 2);
  v47 = v46;
  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_10006A178(v45, v47);
  v49 = objc_opt_self();
  v50 = [v49 TLVWithTag:0 value:isa];

  if (!v50)
  {
    __break(1u);
    goto LABEL_44;
  }

  *(v44 + 32) = v50;
  LOBYTE(v105) = [v34 selectedPulseShapeCombo];
  v51 = sub_1002B1854(&v105, &v105 + 1);
  v53 = v52;
  v54 = Data._bridgeToObjectiveC()().super.isa;
  sub_10006A178(v51, v53);
  v55 = [v49 TLVWithTag:1 value:v54];

  if (!v55)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  *(v44 + 40) = v55;
  LOBYTE(v105) = [v34 selectedChannelBitmask];
  v56 = v34;
  v57 = sub_1002B1854(&v105, &v105 + 1);
  v59 = v58;
  v60 = Data._bridgeToObjectiveC()().super.isa;
  sub_10006A178(v57, v59);
  v61 = [v49 TLVWithTag:3 value:v60];

  if (!v61)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  *(v44 + 48) = v61;
  LODWORD(v105) = bswap32([v34 supportedSyncCodeIndexBitmask]);
  v62 = sub_1002B1854(&v105, &v105 + 4);
  v64 = v63;
  v65 = Data._bridgeToObjectiveC()().super.isa;
  sub_10006A178(v62, v64);
  v66 = [v49 TLVWithTag:6 value:v65];

  if (!v66)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  *(v44 + 56) = v66;
  LOBYTE(v105) = [v34 minRanMultiplier];
  v67 = sub_1002B1854(&v105, &v105 + 1);
  v69 = v68;
  v70 = Data._bridgeToObjectiveC()().super.isa;
  sub_10006A178(v67, v69);
  v71 = [v49 TLVWithTag:4 value:v70];

  if (!v71)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  *(v44 + 64) = v71;
  LOBYTE(v105) = [v34 supportedSlotBitmask];
  v72 = sub_1002B1854(&v105, &v105 + 1);
  v74 = v73;
  v75 = Data._bridgeToObjectiveC()().super.isa;
  sub_10006A178(v72, v74);
  v76 = [v49 TLVWithTag:5 value:v75];

  if (!v76)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  *(v44 + 72) = v76;
  LOBYTE(v105) = [v34 supportedHoppingConfigBitmask];
  v77 = sub_1002B1854(&v105, &v105 + 1);
  v79 = v78;
  v80 = Data._bridgeToObjectiveC()().super.isa;
  sub_10006A178(v77, v79);
  v81 = [v49 TLVWithTag:8 value:v80];

  v4 = &unk_10051B000;
  if (!v81)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  *(v44 + 80) = v81;
  v106 = v44;
  v104 = v56;
  if ([v56 selectedFinalData2Bitmask])
  {
    if (qword_100501958 != -1)
    {
      swift_once();
    }

    if (byte_10051B270 == 1)
    {
      LOBYTE(v105) = [v104 selectedFinalData2Bitmask];
      v82 = sub_1002B1854(&v105, &v105 + 1);
      v84 = v83;
      v85 = Data._bridgeToObjectiveC()().super.isa;
      sub_10006A178(v82, v84);
      v86 = [v49 TLVWithTag:18 value:v85];

      if (v86)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v106 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v106 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v102 = *((v106 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        goto LABEL_34;
      }

LABEL_50:
      __break(1u);
      return;
    }
  }

LABEL_34:
  sub_10009393C(0, &qword_100502418, SESTLV_ptr);
  v88 = Array._bridgeToObjectiveC()().super.isa;

  v89 = [v49 dataWithTLVs:v88];

  if (!v89)
  {

    v93 = Logger.logObject.getter();
    v94 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      v105 = v96;
      *v95 = 136315138;

      v97 = UUID.uuidString.getter();
      v99 = v98;

      v100 = sub_1002FFA0C(v97, v99, &v105);
      v4 = &unk_10051B000;

      *(v95 + 4) = v100;
      _os_log_impl(&_mh_execute_header, v93, v94, "UWB Lyon session M2 message for %s could not be created", v95, 0xCu);
      sub_1000752F4(v96);
    }

    p_class_meths = (&OBJC_PROTOCOL___SESSessionInterface + 32);
    sub_1000755A4();
    swift_allocError();
    *v101 = 0;
    swift_willThrow();

LABEL_8:

    swift_errorRetain();
    swift_errorRetain();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      *v20 = 136315394;

      v21 = UUID.uuidString.getter();
      v23 = v22;

      v24 = sub_1002FFA0C(v21, v23, &v106);

      *(v20 + 4) = v24;
      *(v20 + 12) = 2080;
      swift_getErrorValue();
      v25 = Error.localizedDescription.getter();
      v27 = sub_1002FFA0C(v25, v26, &v106);

      *(v20 + 14) = v27;
      _os_log_impl(&_mh_execute_header, v18, v19, "Failed to process M2 message for %s %s", v20, 0x16u);
      swift_arrayDestroy();
    }

    if (p_class_meths[287] == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_42;
  }

  v90 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v92 = v91;

  if (qword_1005018F8 != -1)
  {
    swift_once();
  }

  sub_100081ED8(1u, 1, v90, v92, a3);
  sub_100081644(1, a3);
  sub_100081838(0, 0xD000000000000012, 0x8000000100462B70, a3);

  sub_10006A178(v90, v92);
}

void sub_1000CE630(void *a1, uint64_t a2, __objc2_class **a3)
{
  v5 = v3;
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = (v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v14 = qword_10051B7F0;
  *v13 = qword_10051B7F0;
  (*(v10 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v9);
  v15 = v14;
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  (*(v10 + 8))(v13, v9);
  if ((v14 & 1) == 0)
  {
    __break(1u);
LABEL_33:
    swift_once();
LABEL_11:
    v28 = v4[49];
    v29 = sub_1000E22C4();
    sub_100080E48(a3, v29 & 0x1FF);

    return;
  }

  if (*(v5 + 16) != 1 || *a3 != _TtC10seserviced8LyonPeer)
  {

    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 67109120;
      *(v32 + 4) = *(v5 + 16);

      _os_log_impl(&_mh_execute_header, v30, v31, "LyonUWB isRunning: %{BOOL}d or could not cast as LyonPeer", v32, 8u);

      return;
    }

    goto LABEL_15;
  }

  p_class_meths = &OBJC_PROTOCOL___SESSessionInterface.class_meths;
  v4 = &unk_10051B000;
  if (a2)
  {
    v17 = *(a3 + OBJC_IVAR____TtC10seserviced8LyonPeer_analyticsData);
    *(v17 + 84) = 9;
    *(v17 + 88) = 0;
    swift_willThrow();

    goto LABEL_8;
  }

  if (!a1)
  {
    sub_1000755A4();
    swift_allocError();
    *v36 = 0;
    swift_willThrow();

    goto LABEL_8;
  }

  v33 = qword_1005018F8;

  v34 = a1;
  if (v33 != -1)
  {
    swift_once();
  }

  v35 = qword_10051B188;
  sub_100081644(1, a3);
  v37 = OBJC_IVAR____TtC10seserviced7LyonUWB_logger;

  v86[1] = v37;
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.info.getter();

  v40 = os_log_type_enabled(v38, v39);
  v86[2] = v35;
  v87 = v34;
  if (v40)
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v89 = v42;
    *v41 = 136315138;

    v43 = UUID.uuidString.getter();
    v45 = v44;

    v46 = sub_1002FFA0C(v43, v45, &v89);
    v34 = v87;

    *(v41 + 4) = v46;
    _os_log_impl(&_mh_execute_header, v38, v39, "UWB Lyon session M4 message for %s", v41, 0xCu);
    sub_1000752F4(v42);
  }

  v47 = objc_opt_self();
  sub_100068FC4(&qword_100504060, &qword_10040B370);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_10040A960;
  LODWORD(v89) = bswap32([v34 stsIndex0]);
  v49 = v34;
  v50 = sub_1002B1854(&v89, &v89 + 4);
  v52 = v51;
  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_10006A178(v50, v52);
  v88 = v47;
  v54 = [v47 TLVWithTag:12 value:isa];

  if (!v54)
  {
    __break(1u);
    goto LABEL_35;
  }

  *(v48 + 32) = v54;
  v89 = bswap64([v49 uwbTime0]);
  v55 = sub_1002B1854(&v89, &v90);
  v57 = v56;
  v58 = Data._bridgeToObjectiveC()().super.isa;
  sub_10006A178(v55, v57);
  v59 = [v88 TLVWithTag:13 value:v58];

  if (!v59)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  *(v48 + 40) = v59;
  LODWORD(v89) = bswap32([v49 hopKey]);
  v60 = sub_1002B1854(&v89, &v89 + 4);
  v62 = v61;
  v63 = Data._bridgeToObjectiveC()().super.isa;
  sub_10006A178(v60, v62);
  v64 = [v88 TLVWithTag:14 value:v63];

  if (!v64)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  *(v48 + 48) = v64;
  LOBYTE(v89) = [v49 selectedSyncCodeIndex];
  v65 = sub_1002B1854(&v89, &v89 + 1);
  v67 = v66;
  v68 = Data._bridgeToObjectiveC()().super.isa;
  sub_10006A178(v65, v67);
  v69 = [v88 TLVWithTag:7 value:v68];

  if (v69)
  {
    *(v48 + 56) = v69;
    sub_10009393C(0, &qword_100502418, SESTLV_ptr);
    v70 = Array._bridgeToObjectiveC()().super.isa;

    v71 = [v88 dataWithTLVs:v70];

    if (v71)
    {
      v72 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v74 = v73;

      sub_100081ED8(1u, 3, v72, v74, a3);
      v75 = v87;
      sub_10006A178(v72, v74);

      *(a3 + OBJC_IVAR____TtC10seserviced8LyonPeer_sessionState) = 10;
      *(a3 + OBJC_IVAR____TtC10seserviced8LyonPeer_rangingIntentRequested) = 0;
LABEL_15:

      return;
    }

    v76 = Logger.logObject.getter();
    v77 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v89 = v79;
      *v78 = 136315138;

      v80 = UUID.uuidString.getter();
      v82 = v81;

      v83 = sub_1002FFA0C(v80, v82, &v89);

      *(v78 + 4) = v83;
      _os_log_impl(&_mh_execute_header, v76, v77, "UWB Lyon session M4 message for %s could not be created", v78, 0xCu);
      sub_1000752F4(v79);
    }

    v4 = &unk_10051B000;
    p_class_meths = (&OBJC_PROTOCOL___SESSessionInterface + 32);
    v84 = v87;
    sub_1000755A4();
    swift_allocError();
    *v85 = 2;
    swift_willThrow();

LABEL_8:

    swift_errorRetain();
    swift_errorRetain();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      *v20 = 136315394;

      v21 = UUID.uuidString.getter();
      v23 = v22;

      v24 = sub_1002FFA0C(v21, v23, &v89);

      *(v20 + 4) = v24;
      *(v20 + 12) = 2080;
      swift_getErrorValue();
      v25 = Error.localizedDescription.getter();
      v27 = sub_1002FFA0C(v25, v26, &v89);

      *(v20 + 14) = v27;
      _os_log_impl(&_mh_execute_header, v18, v19, "Failed to process M4 message for %s %s", v20, 0x16u);
      swift_arrayDestroy();
    }

    if (p_class_meths[287] == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_33;
  }

LABEL_37:
  __break(1u);
}

void sub_1000CF0B8(void *a1, uint64_t a2, __objc2_class **a3)
{
  v5 = v3;
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = (&v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v14 = qword_10051B7F0;
  *v13 = qword_10051B7F0;
  (*(v10 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v9);
  v15 = v14;
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  (*(v10 + 8))(v13, v9);
  if ((v14 & 1) == 0)
  {
    __break(1u);
LABEL_27:
    swift_once();
LABEL_25:
    v61 = v4[49];
    v62 = sub_1000E22C4();
    sub_100080E48(a3, v62 & 0x1FF);

    return;
  }

  if (*(v5 + 16) != 1 || *a3 != _TtC10seserviced8LyonPeer)
  {

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 67109120;
      *(v19 + 4) = *(v5 + 16);

      _os_log_impl(&_mh_execute_header, v17, v18, "LyonUWB isRunning: %{BOOL}d or could not cast as LyonPeer", v19, 8u);
    }

    else
    {
    }

    return;
  }

  v4 = &unk_10051B000;
  if (a2)
  {
    v16 = *(a3 + OBJC_IVAR____TtC10seserviced8LyonPeer_analyticsData);
    *(v16 + 84) = 9;
    *(v16 + 88) = 0;
    swift_willThrow();

    goto LABEL_22;
  }

  if (!a1)
  {
    sub_1000755A4();
    swift_allocError();
    *v50 = 0;
    swift_willThrow();

LABEL_22:

    swift_errorRetain();
    swift_errorRetain();
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *&v67 = swift_slowAlloc();
      *v53 = 136315394;

      v54 = UUID.uuidString.getter();
      v56 = v55;

      v57 = sub_1002FFA0C(v54, v56, &v67);

      *(v53 + 4) = v57;
      *(v53 + 12) = 2080;
      swift_getErrorValue();
      v58 = Error.localizedDescription.getter();
      v60 = sub_1002FFA0C(v58, v59, &v67);

      *(v53 + 14) = v60;
      _os_log_impl(&_mh_execute_header, v51, v52, "Failed to process resume request for %s %s", v53, 0x16u);
      swift_arrayDestroy();
    }

    if (qword_1005018F8 == -1)
    {
      goto LABEL_25;
    }

    goto LABEL_27;
  }

  v20 = a1;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *&v67 = v24;
    *v23 = 136315138;

    v25 = UUID.uuidString.getter();
    v27 = v26;

    v28 = sub_1002FFA0C(v25, v27, &v67);

    *(v23 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v21, v22, "UWB Lyon session Ranging response message for %s", v23, 0xCu);
    sub_1000752F4(v24);
  }

  v67 = xmmword_1004098D0;
  v64 = v20;
  LODWORD(v65) = bswap32([v20 stsIndex0]);
  v29 = sub_1002B1854(&v65, &v65 + 4);
  v31 = v30;
  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_10006A178(v29, v31);
  v33 = objc_opt_self();
  v34 = [v33 TLVWithTag:12 value:isa];

  if (!v34)
  {
    __break(1u);
    goto LABEL_29;
  }

  v35 = [v34 asData];

  if (!v35)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v36 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v38 = v37;

  Data.append(_:)();
  sub_10006A178(v36, v38);
  v65 = bswap64([v64 uwbTime0]);
  v39 = sub_1002B1854(&v65, &v66);
  v41 = v40;
  v42 = Data._bridgeToObjectiveC()().super.isa;
  sub_10006A178(v39, v41);
  v43 = [v33 TLVWithTag:13 value:v42];

  if (!v43)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v44 = [v43 asData];

  if (!v44)
  {
LABEL_31:
    __break(1u);
    return;
  }

  v45 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v47 = v46;

  Data.append(_:)();
  sub_10006A178(v45, v47);
  *(a3 + OBJC_IVAR____TtC10seserviced8LyonPeer_sessionState) = 10;
  *(a3 + OBJC_IVAR____TtC10seserviced8LyonPeer_rangingIntentRequested) = 0;
  if (qword_1005018F8 != -1)
  {
    swift_once();
  }

  v48 = v67;
  sub_100081ED8(1u, 7, v67, *(&v67 + 1), a3);
  v49 = v64;
  sub_100081644(1, a3);

  sub_10006A178(v48, *(&v48 + 1));
}

void sub_1000CF8F4(int64_t a1)
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v30[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v10 = qword_10051B7F0;
  *v9 = qword_10051B7F0;
  (*(v6 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v5);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v9, v5);
  if ((v10 & 1) == 0)
  {
    __break(1u);
LABEL_23:
    swift_once();
LABEL_16:
    sub_100081ED8(1u, 4, v9, v5, a1);
    if (v2)
    {
      sub_10006A178(v9, v5);
    }

    else
    {
      sub_100081838(0, 0xD000000000000015, 0x8000000100462AF0, a1);
      sub_10006A178(v9, v5);
      *(a1 + v3) = 12;
    }

    return;
  }

  if (*(v1 + 16) != 1)
  {
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      v15 = "LyonUWB is not running";
      goto LABEL_10;
    }

LABEL_11:

    return;
  }

  if (*(a1 + OBJC_IVAR____TtC10seserviced8LyonPeer_uwbSessionID + 4))
  {
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      v15 = "UWB sessionID is not cached, cannot pause ranging";
LABEL_10:
      _os_log_impl(&_mh_execute_header, v12, v13, v15, v14, 2u);

      goto LABEL_11;
    }

    goto LABEL_11;
  }

  v3 = OBJC_IVAR____TtC10seserviced8LyonPeer_sessionState;
  if (*(a1 + OBJC_IVAR____TtC10seserviced8LyonPeer_sessionState) == 10)
  {
    v16 = [objc_opt_self() TLVWithTag:2 unsignedLongValue:bswap32(*(a1 + OBJC_IVAR____TtC10seserviced8LyonPeer_uwbSessionID))];
    if (v16)
    {
      v17 = v16;
      v18 = [v16 asData];

      if (v18)
      {
        v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v5 = v19;

        if (qword_1005018F8 == -1)
        {
          goto LABEL_16;
        }

        goto LABEL_23;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v22 = 136315394;
    v30[7] = *(a1 + v3);
    v23 = String.init<A>(describing:)();
    v25 = sub_1002FFA0C(v23, v24, &v31);

    *(v22 + 4) = v25;
    *(v22 + 12) = 2080;

    v26 = UUID.uuidString.getter();
    v28 = v27;

    v29 = sub_1002FFA0C(v26, v28, &v31);

    *(v22 + 14) = v29;
    _os_log_impl(&_mh_execute_header, v20, v21, "Device state is %s, not sending pause ranging request for %s", v22, 0x16u);
    swift_arrayDestroy();
  }
}

void sub_1000CFDD0(uint64_t a1, __objc2_class **a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = (v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v11 = qword_10051B7F0;
  *v10 = qword_10051B7F0;
  (*(v7 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v6);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v10, v6);
  if ((v11 & 1) == 0)
  {
    __break(1u);
LABEL_26:
    swift_once();
LABEL_7:
    v14 = qword_10051B168;
    sub_100073DEC(a2);
    if (!a1)
    {
      v35 = OBJC_IVAR____TtC10seserviced7LyonUWB_logger;

      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v46[1] = v35;
        v39 = v38;
        v40 = swift_slowAlloc();
        v47[0] = v40;
        *v39 = 136315138;

        v41 = UUID.uuidString.getter();
        v43 = v42;

        v44 = sub_1002FFA0C(v41, v43, v47);

        *(v39 + 4) = v44;
        _os_log_impl(&_mh_execute_header, v36, v37, "NI URSK prefetched for %s", v39, 0xCu);
        sub_1000752F4(v40);
      }

      v45 = *(v14 + OBJC_IVAR____TtC10seserviced6LyonSE_urskSlotManager);
      sub_100073178();
      *(a2 + OBJC_IVAR____TtC10seserviced8LyonPeer_didFetchUrsk) = 1;
      sub_1000C8E3C(a2);
      goto LABEL_21;
    }

    v15 = *(a2 + OBJC_IVAR____TtC10seserviced8LyonPeer_uwbSessionID);
    v16 = *(a2 + OBJC_IVAR____TtC10seserviced8LyonPeer_uwbSessionID + 4);

    swift_errorRetain();
    sub_100073170();
    sub_100073170();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      if (v16)
      {
        v19 = 0;
      }

      else
      {
        v19 = v15;
      }

      v20 = swift_slowAlloc();
      v47[0] = swift_slowAlloc();
      *v20 = 136315650;
      swift_getErrorValue();
      v21 = Error.localizedDescription.getter();
      v23 = sub_1002FFA0C(v21, v22, v47);

      *(v20 + 4) = v23;
      *(v20 + 12) = 2080;

      v24 = UUID.uuidString.getter();
      v26 = v25;

      v27 = sub_1002FFA0C(v24, v26, v47);

      *(v20 + 14) = v27;
      *(v20 + 22) = 1024;
      *(v20 + 24) = v19;
      _os_log_impl(&_mh_execute_header, v17, v18, "Failed to prefetch URSK %s for %s with session ID 0x%x", v20, 0x1Cu);
      swift_arrayDestroy();
    }

    if (qword_100501CD0 != -1)
    {
      swift_once();
    }

    v28 = *(off_10050A240 + 10);
    v29 = __CFADD__(v28, 1);
    v30 = v28 + 1;
    if (v29)
    {
      __break(1u);
    }

    else
    {
      *(off_10050A240 + 10) = v30;
      if (qword_1005018F8 == -1)
      {
LABEL_17:
        v31 = sub_1000E22C4();
        sub_100080E48(a2, v31 & 0x1FF);

        goto LABEL_21;
      }
    }

    swift_once();
    goto LABEL_17;
  }

  if (*(v3 + 16) == 1 && *a2 == _TtC10seserviced8LyonPeer)
  {
    v13 = qword_1005018E8;

    if (v13 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_26;
  }

  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 67109120;
    *(v34 + 4) = *(v3 + 16);

    _os_log_impl(&_mh_execute_header, v32, v33, "LyonUWB isRunning: %{BOOL}d or could not cast as LyonPeer", v34, 8u);

    return;
  }

LABEL_21:
}

void sub_1000D0564(void *a1, __objc2_class **a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = (&v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v11 = qword_10051B7F0;
  *v10 = qword_10051B7F0;
  (*(v7 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v6);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v10, v6);
  if (v11)
  {
    if (*(v3 + 16) != 1 || *a2 != _TtC10seserviced8LyonPeer)
    {

      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 67109120;
        *(v24 + 4) = *(v3 + 16);

        _os_log_impl(&_mh_execute_header, v22, v23, "LyonUWB isRunning: %{BOOL}d or could not cast as LyonPeer", v24, 8u);

        return;
      }

      goto LABEL_15;
    }

    if (a1)
    {
      v13 = a1;

      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v33 = v17;
        *v16 = 136316162;

        v18 = UUID.uuidString.getter();
        v20 = v19;

        v21 = sub_1002FFA0C(v18, v20, &v33);

        *(v16 + 4) = v21;
        *(v16 + 12) = 256;
        LOBYTE(v21) = [v13 lastBtRssiValue];

        *(v16 + 14) = v21;
        *(v16 + 15) = 1024;
        LODWORD(v21) = [v13 ioStateDisplacing];

        *(v16 + 17) = v21;
        *(v16 + 21) = 1024;
        LODWORD(v21) = [v13 explicitPAITriggered];

        *(v16 + 23) = v21;
        *(v16 + 27) = 1024;
        LODWORD(v21) = [v13 currentSFInBubble];

        *(v16 + 29) = v21;
        _os_log_impl(&_mh_execute_header, v14, v15, "AOP ZoneUpdate received for %s with lastBtRssiVal: %hhd, ioStateDisplacing: %{BOOL}d, explicitPAITriggered: %{BOOL}d, currentSFInBubble: %{BOOL}d", v16, 0x21u);
        sub_1000752F4(v17);

LABEL_14:
LABEL_15:

        return;
      }
    }

    else
    {

      v13 = Logger.logObject.getter();
      v25 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v13, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v33 = v27;
        *v26 = 136315138;

        v28 = UUID.uuidString.getter();
        v30 = v29;

        v31 = sub_1002FFA0C(v28, v30, &v33);

        *(v26 + 4) = v31;
        _os_log_impl(&_mh_execute_header, v13, v25, "Null AOP ZoneUpdate received for %s", v26, 0xCu);
        sub_1000752F4(v27);

        goto LABEL_14;
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1000D0AB0(void *a1, uint64_t a2, __objc2_class **a3)
{
  v5 = v3;
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = (v113 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v14 = qword_10051B7F0;
  *v13 = qword_10051B7F0;
  (*(v10 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v9);
  v15 = v14;
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  (*(v10 + 8))(v13, v9);
  if ((v14 & 1) == 0)
  {
    __break(1u);
LABEL_45:
    swift_once();
LABEL_37:
    v103 = v4[49];
    v104 = sub_1000E22C4();
    sub_100080E48(a3, v104 & 0x1FF);

    return;
  }

  if (v5[16] != 1 || *a3 != _TtC10seserviced8LyonPeer || !a3)
  {

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 67109120;
      *(v20 + 4) = v5[16];

      _os_log_impl(&_mh_execute_header, v18, v19, "LyonUWB isRunning: %{BOOL}d or could not cast as LyonPeer", v20, 8u);
    }

    else
    {
    }

    return;
  }

  if (*(a3 + OBJC_IVAR____TtC10seserviced8LyonPeer_hasError + 1) << 8 == 512)
  {
    p_class_meths = (&OBJC_PROTOCOL___SESSessionInterface + 32);
    v4 = &unk_10051B000;
    if (a2)
    {
      v17 = *(a3 + OBJC_IVAR____TtC10seserviced8LyonPeer_analyticsData);
      *(v17 + 84) = 9;
      *(v17 + 88) = 0;
      swift_willThrow();

      goto LABEL_34;
    }

    if (!a1)
    {
      sub_1000755A4();
      swift_allocError();
      *v82 = 0;
      swift_willThrow();

      goto LABEL_34;
    }

    v29 = OBJC_IVAR____TtC10seserviced7LyonUWB_logger;

    v30 = a1;
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.info.getter();
    v33 = os_log_type_enabled(v31, v32);
    v113[1] = v29;
    if (v33)
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v115 = v35;
      *v34 = 136315138;

      v36 = UUID.uuidString.getter();
      v38 = v37;

      v39 = sub_1002FFA0C(v36, v38, &v115);

      *(v34 + 4) = v39;
      _os_log_impl(&_mh_execute_header, v31, v32, "NI timesync message for %s", v34, 0xCu);
      sub_1000752F4(v35);
    }

    v40 = objc_opt_self();
    sub_100068FC4(&qword_100504060, &qword_10040B370);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_10040A950;
    v115 = bswap64([v30 deviceEventCount]);
    v42 = sub_1002B1854(&v115, &v116);
    v44 = v43;
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_10006A178(v42, v44);
    v46 = [v40 TLVWithTag:0 value:isa];

    if (v46)
    {
      *(v41 + 32) = v46;
      v115 = bswap64([v30 uwbDeviceTimeUs]);
      v47 = sub_1002B1854(&v115, &v116);
      v49 = v48;
      v50 = Data._bridgeToObjectiveC()().super.isa;
      sub_10006A178(v47, v49);
      v51 = [v40 TLVWithTag:1 value:v50];

      if (v51)
      {
        *(v41 + 40) = v51;
        LOBYTE(v115) = [v30 uwbDeviceTimeUncertainty];
        v52 = sub_1002B1854(&v115, &v115 + 1);
        v54 = v53;
        v55 = Data._bridgeToObjectiveC()().super.isa;
        sub_10006A178(v52, v54);
        v56 = [v40 TLVWithTag:2 value:v55];

        if (v56)
        {
          *(v41 + 48) = v56;
          LOBYTE(v115) = [v30 uwbClockSkewMeasurementAvailable];
          v57 = sub_1002B1854(&v115, &v115 + 1);
          v59 = v58;
          v60 = Data._bridgeToObjectiveC()().super.isa;
          sub_10006A178(v57, v59);
          v61 = [v40 TLVWithTag:3 value:v60];

          if (v61)
          {
            *(v41 + 56) = v61;
            LOWORD(v115) = __rev16([v30 deviceMaxPpm]);
            v62 = sub_1002B1854(&v115, &v115 + 2);
            v64 = v63;
            v65 = Data._bridgeToObjectiveC()().super.isa;
            sub_10006A178(v62, v64);
            v66 = [v40 TLVWithTag:4 value:v65];

            if (v66)
            {
              *(v41 + 64) = v66;
              LOBYTE(v115) = [v30 success];
              v67 = sub_1002B1854(&v115, &v115 + 1);
              v69 = v68;
              v70 = Data._bridgeToObjectiveC()().super.isa;
              sub_10006A178(v67, v69);
              v71 = [v40 TLVWithTag:5 value:v70];

              if (v71)
              {
                *(v41 + 72) = v71;
                v114 = v30;
                LOWORD(v115) = __rev16([v30 retryDelay]);
                v72 = sub_1002B1854(&v115, &v115 + 2);
                v74 = v73;
                v75 = Data._bridgeToObjectiveC()().super.isa;
                sub_10006A178(v72, v74);
                v76 = [v40 TLVWithTag:6 value:v75];

                p_class_meths = &OBJC_PROTOCOL___SESSessionInterface.class_meths;
                if (v76)
                {
                  *(v41 + 80) = v76;
                  sub_10009393C(0, &qword_100502418, SESTLV_ptr);
                  v77 = Array._bridgeToObjectiveC()().super.isa;

                  v78 = [v40 dataWithTLVs:v77];

                  v4 = &unk_10051B000;
                  if (v78)
                  {
                    v79 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
                    v81 = v80;

                    if (qword_1005018F8 != -1)
                    {
                      swift_once();
                    }

                    sub_100081ED8(3u, 0, v79, v81, a3);
                    if (*(a3 + OBJC_IVAR____TtC10seserviced8LyonPeer_sessionState) == 5)
                    {
                      *(a3 + OBJC_IVAR____TtC10seserviced8LyonPeer_sessionState) = 6;
                      sub_1000C8E3C(a3);
                      sub_10006A178(v79, v81);

                      return;
                    }

                    v105 = *(a3 + OBJC_IVAR____TtC10seserviced8LyonPeer_analyticsData);
                    v106 = *(v105 + 160);
                    v107 = __CFADD__(v106, 1);
                    v108 = v106 + 1;
                    if (v107)
                    {
                      __break(1u);
                    }

                    else
                    {
                      *(v105 + 160) = v108;
                      v109 = qword_100501CD0;

                      v5 = v114;
                      if (v109 == -1)
                      {
LABEL_42:
                        v110 = off_10050A240;
                        sub_10006A178(v79, v81);

                        v111 = v110[24];
                        v107 = __CFADD__(v111, 1);
                        v112 = v111 + 1;
                        if (v107)
                        {
                          __break(1u);
                        }

                        v110[24] = v112;
                        return;
                      }
                    }

                    swift_once();
                    goto LABEL_42;
                  }

                  v83 = Logger.logObject.getter();
                  v84 = static os_log_type_t.error.getter();

                  if (os_log_type_enabled(v83, v84))
                  {
                    v85 = swift_slowAlloc();
                    v86 = swift_slowAlloc();
                    v115 = v86;
                    *v85 = 136315138;

                    v87 = UUID.uuidString.getter();
                    v89 = v88;

                    v90 = sub_1002FFA0C(v87, v89, &v115);
                    v4 = &unk_10051B000;
                    p_class_meths = &OBJC_PROTOCOL___SESSessionInterface.class_meths;

                    *(v85 + 4) = v90;
                    _os_log_impl(&_mh_execute_header, v83, v84, "UWB Lyon session timesync message for %s could not be created", v85, 0xCu);
                    sub_1000752F4(v86);
                  }

                  sub_1000755A4();
                  swift_allocError();
                  *v91 = 0;
                  swift_willThrow();

LABEL_34:

                  swift_errorRetain();
                  swift_errorRetain();
                  v92 = Logger.logObject.getter();
                  v93 = static os_log_type_t.error.getter();

                  if (os_log_type_enabled(v92, v93))
                  {
                    v94 = swift_slowAlloc();
                    v95 = swift_slowAlloc();
                    v96 = p_class_meths;
                    v97 = swift_slowAlloc();
                    v115 = v97;
                    *v94 = 136315394;

                    v98 = UUID.uuidString.getter();
                    v100 = v99;

                    v101 = sub_1002FFA0C(v98, v100, &v115);

                    *(v94 + 4) = v101;
                    *(v94 + 12) = 2112;
                    swift_errorRetain();
                    v102 = _swift_stdlib_bridgeErrorToNSError();
                    *(v94 + 14) = v102;
                    *v95 = v102;
                    _os_log_impl(&_mh_execute_header, v92, v93, "Failed to process time sync for %s with %@", v94, 0x16u);
                    sub_100075768(v95, &unk_100503F70, &unk_10040B2E0);

                    sub_1000752F4(v97);
                    p_class_meths = v96;
                    v4 = &unk_10051B000;
                  }

                  if (p_class_meths[287] == -1)
                  {
                    goto LABEL_37;
                  }

                  goto LABEL_45;
                }

LABEL_55:
                __break(1u);
                return;
              }

LABEL_54:
              __break(1u);
              goto LABEL_55;
            }

LABEL_53:
            __break(1u);
            goto LABEL_54;
          }

LABEL_52:
          __break(1u);
          goto LABEL_53;
        }

LABEL_51:
        __break(1u);
        goto LABEL_52;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_51;
  }

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v115 = v24;
    *v23 = 136315138;

    v25 = UUID.uuidString.getter();
    v27 = v26;

    v28 = sub_1002FFA0C(v25, v27, &v115);

    *(v23 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v21, v22, "%s already errored out, ignoring timesync message", v23, 0xCu);
    sub_1000752F4(v24);
  }
}

void sub_1000D1840(int a1, void *a2, uint64_t *a3)
{
  v6 = *a3;
  if ((a1 & 0x10000) != 0)
  {
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v15[0] = v10;
      *v9 = 136315138;
      v16 = a1;
      sub_1000E1E2C();
      v11 = Error.localizedDescription.getter();
      v13 = sub_1002FFA0C(v11, v12, v15);

      *(v9 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v7, v8, "Failed to retrieve the BLE connection handle %s", v9, 0xCu);
      sub_1000752F4(v10);
    }

    if (qword_1005018F8 != -1)
    {
      swift_once();
    }

    sub_100080E48(a2, 0);
  }

  else
  {
    if (qword_100501B70 != -1)
    {
      v14 = *a3;
      swift_once();
      v6 = v14;
    }

    v15[3] = v6;
    v15[4] = &off_1004C6C48;
    v15[0] = a3;

    sub_1000752F4(v15);
  }
}

void sub_1000D1BA4(__objc2_class **a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = (&v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v9 = qword_10051B7F0;
  *v8 = qword_10051B7F0;
  (*(v5 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v4);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v8, v4);
  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v23 = v14;
    *v13 = 136315138;
    v15 = UUID.uuidString.getter();
    v17 = sub_1002FFA0C(v15, v16, &v23);

    *(v13 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v11, v12, "UWB Lyon session started running for %s", v13, 0xCu);
    sub_1000752F4(v14);
  }

  if (*(v2 + 16) == 1 && *a1 == _TtC10seserviced8LyonPeer)
  {
    v18 = qword_100501B58;

    if (v18 == -1)
    {
LABEL_9:
      sub_100223D5C(a1);
      goto LABEL_13;
    }

LABEL_15:
    swift_once();
    goto LABEL_9;
  }

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 67109120;
    *(v21 + 4) = *(v2 + 16);

    _os_log_impl(&_mh_execute_header, v19, v20, "LyonUWB isRunning: %{BOOL}d or could not cast as LyonPeer", v21, 8u);

    return;
  }

LABEL_13:
}

void sub_1000D1F18(char a1, __objc2_class **a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = (&v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v11 = qword_10051B7F0;
  *v10 = qword_10051B7F0;
  (*(v7 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v6);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v10, v6);
  if ((v11 & 1) == 0)
  {
    __break(1u);
LABEL_21:
    swift_once();
LABEL_18:
    sub_100080E48(a2, 1);
    goto LABEL_19;
  }

  if (*(v3 + 16) == 1 && *a2 == _TtC10seserviced8LyonPeer)
  {
    if ((a1 & 4) != 0)
    {
      v19 = *(a2 + OBJC_IVAR____TtC10seserviced8LyonPeer_analyticsData);
      *(v19 + 84) = 5;
      v14 = (v19 + 88);
    }

    else
    {
      v13 = *(a2 + OBJC_IVAR____TtC10seserviced8LyonPeer_analyticsData);
      v14 = (v13 + 88);
      if ((a1 & 2) != 0)
      {
        v15 = 6;
      }

      else
      {
        v15 = 9;
      }

      *(v13 + 84) = v15;
    }

    *v14 = 0;

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "UWB Lyon session suspended; disconnecting until uwb is resumed", v22, 2u);
    }

    sub_1000D2270(a2);
    if (qword_1005018F8 == -1)
    {
      goto LABEL_18;
    }

    goto LABEL_21;
  }

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 67109120;
    *(v18 + 4) = *(v3 + 16);

    _os_log_impl(&_mh_execute_header, v16, v17, "LyonUWB isRunning: %{BOOL}d or could not cast as LyonPeer", v18, 8u);

    return;
  }

LABEL_19:
}

void sub_1000D2270(int64_t a1)
{

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v20[0] = swift_slowAlloc();
    *v4 = 136315394;

    v5 = UUID.uuidString.getter();
    v7 = v6;

    v8 = sub_1002FFA0C(v5, v7, v20);

    *(v4 + 4) = v8;
    *(v4 + 12) = 2080;
    v19 = *(a1 + OBJC_IVAR____TtC10seserviced8LyonPeer_sessionState);
    v9 = String.init<A>(describing:)();
    v11 = sub_1002FFA0C(v9, v10, v20);

    *(v4 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "Sending NI ranging paused notification %s in state %s", v4, 0x16u);
    swift_arrayDestroy();
  }

  v12 = OBJC_IVAR____TtC10seserviced8LyonPeer_sessionState;
  if (*(a1 + OBJC_IVAR____TtC10seserviced8LyonPeer_sessionState) != 10)
  {
    goto LABEL_9;
  }

  if (qword_1005018F8 != -1)
  {
    swift_once();
  }

  v13 = [objc_opt_self() TLVWithTag:5 value:0];
  if (v13)
  {
    v14 = v13;
    v15 = [v13 asData];

    if (v15)
    {
      v16 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;

      sub_100081ED8(2u, 1, v16, v18, a1);
      sub_10006A178(v16, v18);
LABEL_9:
      *(a1 + v12) = 14;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1000D262C(__objc2_class **a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = (&v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v9 = qword_10051B7F0;
  *v8 = qword_10051B7F0;
  (*(v5 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v4);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v8, v4);
  if (v9)
  {
    if (*(v2 + 16) != 1 || *a1 != _TtC10seserviced8LyonPeer)
    {

      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 67109120;
        *(v21 + 4) = *(v2 + 16);

        _os_log_impl(&_mh_execute_header, v19, v20, "LyonUWB isRunning: %{BOOL}d or could not cast as LyonPeer", v21, 8u);

        return;
      }

      goto LABEL_11;
    }

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v23 = v14;
      *v13 = 136315138;

      v15 = UUID.uuidString.getter();
      v17 = v16;

      v18 = sub_1002FFA0C(v15, v17, &v23);

      *(v13 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v11, v12, "NI session resumed for %s", v13, 0xCu);
      sub_1000752F4(v14);

LABEL_11:

      return;
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1000D297C(int64_t a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = (&v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v8 = qword_10051B7F0;
  *v7 = qword_10051B7F0;
  (*(v4 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v3);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v7, v3);
  if ((v8 & 1) == 0)
  {
    __break(1u);
LABEL_29:
    swift_once();
LABEL_6:
    v10 = qword_10051B5B0;

    v11 = sub_10024F2B8(v10, a1);

    v12 = sub_1000CA858(v11, sub_10008EBB4);

    if (v12)
    {
      type metadata accessor for UWBLyonSession();
      if (swift_dynamicCastClass())
      {
        v13 = *(a1 + OBJC_IVAR____TtC10seserviced8LyonPeer_sessionState);
        if (v13 == 13 || v13 == 10)
        {
          if ((*(a1 + OBJC_IVAR____TtC10seserviced8LyonPeer_uwbSessionID + 4) & 1) == 0)
          {
            sub_100241AFC(*(a1 + OBJC_IVAR____TtC10seserviced8LyonPeer_uwbSessionID), 107);
            sub_1000D2270(a1);
LABEL_27:

            return;
          }

          v32 = Logger.logObject.getter();
          v33 = static os_log_type_t.default.getter();

          if (!os_log_type_enabled(v32, v33))
          {
LABEL_26:

            goto LABEL_27;
          }

          v15 = swift_slowAlloc();
          v16 = swift_slowAlloc();
          v40 = v16;
          *v15 = 136315138;

          v17 = UUID.uuidString.getter();
          v19 = v18;

          v20 = sub_1002FFA0C(v17, v19, &v40);

          *(v15 + 4) = v20;
          v21 = "Trying to pause ranging for %s with no uwbsessionID";
        }

        else
        {

          v32 = Logger.logObject.getter();
          v33 = static os_log_type_t.default.getter();

          if (!os_log_type_enabled(v32, v33))
          {
            goto LABEL_26;
          }

          v15 = swift_slowAlloc();
          v16 = swift_slowAlloc();
          v40 = v16;
          *v15 = 136315138;

          v35 = UUID.uuidString.getter();
          v37 = v36;

          v38 = sub_1002FFA0C(v35, v37, &v40);

          *(v15 + 4) = v38;
          v21 = "UWB session not ranging for %s, no need to pause";
        }

        _os_log_impl(&_mh_execute_header, v32, v33, v21, v15, 0xCu);
        sub_1000752F4(v16);

        goto LABEL_26;
      }
    }

    v12 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v12, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v40 = v27;
      *v26 = 136315138;

      v28 = UUID.uuidString.getter();
      v30 = v29;

      v31 = sub_1002FFA0C(v28, v30, &v40);

      *(v26 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v12, v25, "No active UWB Lyon session for %s, cannot pause ranging", v26, 0xCu);
      sub_1000752F4(v27);
    }

    goto LABEL_27;
  }

  if (*(v1 + 16) == 1)
  {
    if (qword_100501B70 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_29;
  }

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v22, v23, "LyonUWB is not running", v24, 2u);
  }
}

void sub_1000D2F30(uint64_t a1, unint64_t a2, double a3)
{
  v5 = v4;
  v6 = v3;
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = (&v142 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    goto LABEL_120;
  }

LABEL_2:
  v15 = qword_10051B7F0;
  *v14 = qword_10051B7F0;
  (*(v11 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v10);
  v16 = v15;
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  v17 = *(v11 + 8);
  v11 += 8;
  v17(v14, v10);
  if (v15)
  {
    if (*(v6 + 16) != 1)
    {
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&_mh_execute_header, v25, v26, "LyonUWB is not running", v27, 2u);
      }

      return;
    }

    v18 = sub_10013044C(a1, a2);
    if (v19 >> 60 == 15)
    {

      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        *&aBlock = v23;
        *v22 = 136315138;
        *(v22 + 4) = sub_1002FFA0C(a1, a2, &aBlock);
        _os_log_impl(&_mh_execute_header, v20, v21, "Trying to suspend ranging for invalied reader identifier %s", v22, 0xCu);
        sub_1000752F4(v23);
      }

      sub_1000755A4();
      swift_allocError();
      *v24 = 0;
      swift_willThrow();
      return;
    }

    v11 = v18;
    v28 = v19;
    v29 = v19 >> 62;
    v158 = v18;
    if ((v19 >> 62) > 1)
    {
      if (v29 != 2)
      {
        goto LABEL_30;
      }

      v31 = *(v18 + 16);
      v30 = *(v18 + 24);
      v32 = __OFSUB__(v30, v31);
      v33 = v30 - v31;
      if (v32)
      {
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
LABEL_130:
        __break(1u);
LABEL_131:
        __break(1u);
LABEL_132:
        __break(1u);
      }

      if (v33 != 32)
      {
        goto LABEL_30;
      }
    }

    else if (v29)
    {
      if (__OFSUB__(HIDWORD(v18), v18))
      {
        goto LABEL_124;
      }

      if (HIDWORD(v18) - v18 != 32)
      {
LABEL_30:
        v57 = Logger.logObject.getter();
        v58 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v57, v58))
        {
          v59 = swift_slowAlloc();
          v60 = swift_slowAlloc();
          *&aBlock = v60;
          *v59 = 136315394;
          v159 = sub_100288788(v11, v28);
          sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
          sub_10007A2D0();
          v61 = BidirectionalCollection<>.joined(separator:)();
          v63 = v62;

          v64 = sub_1002FFA0C(v61, v63, &aBlock);
          v11 = v158;

          *(v59 + 4) = v64;
          *(v59 + 12) = 2048;
          *(v59 + 14) = 32;
          _os_log_impl(&_mh_execute_header, v57, v58, "Reader Identifier of invalid length %s, expected %ld", v59, 0x16u);
          sub_1000752F4(v60);
        }

LABEL_33:
        sub_1000755A4();
        swift_allocError();
        *v65 = 0;
        swift_willThrow();
        v66 = v11;
        v67 = v28;
        goto LABEL_116;
      }
    }

    else if (BYTE6(v19) != 32)
    {
      goto LABEL_30;
    }

    v154 = v19 >> 62;
    v34 = OBJC_IVAR____TtC10seserviced7LyonUWB_blockedReaderIdentifiers;
    swift_beginAccess();
    if (*(*(v6 + v34) + 16))
    {
      sub_10008C8DC(v11, v28);
      if (v35)
      {
        swift_endAccess();
        v36 = Logger.logObject.getter();
        v37 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v36, v37))
        {
          v38 = swift_slowAlloc();
          *v38 = 0;
          _os_log_impl(&_mh_execute_header, v36, v37, "Trying to suspend ranging for reader identifier for which it is already suspended ", v38, 2u);
        }

        goto LABEL_33;
      }
    }

    v157 = v28;
    swift_endAccess();
    v39 = swift_allocObject();
    v39[2] = v6;
    v39[3] = v11;
    v39[4] = v157;
    v40 = objc_allocWithZone(SESTimer);
    v163 = sub_1000E396C;
    v164 = v39;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v41 = v157;
    v161 = sub_100080830;
    v162 = &unk_1004C6CF8;
    v42 = _Block_copy(&aBlock);

    sub_10006A2BC(v11, v41);
    v43 = sub_1003AE50C(v40, v16, v42);
    _Block_release(v42);

    sub_100069E2C(v11, v41);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.info.getter();
    sub_10006A2D0(v11, v41);
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v155 = swift_slowAlloc();
      *&aBlock = v155;
      *v46 = 136315394;
      v47 = sub_100288788(v158, v41);
      v156 = v43;
      v159 = v47;
      sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      sub_10007A2D0();
      LODWORD(v153) = v45;
      v48 = BidirectionalCollection<>.joined(separator:)();
      v50 = v49;
      v43 = v156;

      v51 = sub_1002FFA0C(v48, v50, &aBlock);

      *(v46 + 4) = v51;
      *(v46 + 12) = 2048;
      *(v46 + 14) = a3;
      _os_log_impl(&_mh_execute_header, v44, v153, "Blocking reader identifier %s from xpc command for %f seconds", v46, 0x16u);
      sub_1000752F4(v155);

      v11 = v158;
    }

    swift_beginAccess();
    sub_10006A2BC(v11, v41);
    v52 = v43;
    v53 = *(v6 + v34);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v159 = *(v6 + v34);
    *(v6 + v34) = 0x8000000000000000;
    v150 = v52;
    sub_100315DC0(v52, v11, v41, isUniquelyReferenced_nonNull_native);
    sub_10006A2D0(v11, v41);
    *(v6 + v34) = v159;
    swift_endAccess();
    if (qword_100501D78 == -1)
    {
      goto LABEL_26;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_26:
  v55 = sub_1000CAAC4();
  v10 = v55;
  if ((v55 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    type metadata accessor for Peer();
    sub_1000E0514(&qword_100503F20, type metadata accessor for Peer);
    Set.Iterator.init(_cocoa:)();
    v10 = v165;
    a1 = v166;
    v56 = v167;
    v14 = v168;
    a2 = v169;
  }

  else
  {
    v14 = 0;
    v68 = -1 << *(v55 + 32);
    a1 = v55 + 56;
    v56 = ~v68;
    v69 = -v68;
    if (v69 < 64)
    {
      v70 = ~(-1 << v69);
    }

    else
    {
      v70 = -1;
    }

    a2 = v70 & *(v55 + 56);
  }

  v149 = v56;
  v71 = (v56 + 64) >> 6;
  v72 = __OFSUB__(HIDWORD(v11), v11);
  v146 = v72;
  v145 = HIDWORD(v11) - v11;
  v148 = BYTE6(v157);
  if (v11)
  {
    v73 = 0;
  }

  else
  {
    v73 = v157 == 0xC000000000000000;
  }

  v74 = v73;
  v147 = v74;
  v156 = v10;
  v151 = v6;
  while (1)
  {
    if ((v10 & 0x8000000000000000) == 0)
    {
      v75 = v14;
      v76 = a2;
      v77 = v14;
      if (!a2)
      {
        while (1)
        {
          v77 = v75 + 1;
          if (__OFADD__(v75, 1))
          {
            break;
          }

          if (v77 >= v71)
          {
            goto LABEL_115;
          }

          v76 = *(a1 + 8 * v77);
          v75 = (v75 + 1);
          if (v76)
          {
            goto LABEL_54;
          }
        }

        __break(1u);
LABEL_120:
        swift_once();
        goto LABEL_2;
      }

LABEL_54:
      v78 = (v76 - 1) & v76;
      v79 = *(*(v10 + 48) + ((v77 << 9) | (8 * __clz(__rbit64(v76)))));

      if (!v79)
      {
        break;
      }

      goto LABEL_58;
    }

    v80 = __CocoaSet.Iterator.next()();
    if (!v80)
    {
      goto LABEL_115;
    }

    v159 = v80;
    type metadata accessor for Peer();
    swift_dynamicCast();
    v79 = aBlock;
    v77 = v14;
    v78 = a2;
    v10 = v156;
    if (!aBlock)
    {
      break;
    }

LABEL_58:
    if (*v79 == _TtC10seserviced8LyonPeer)
    {
      v155 = v5;
      v82 = *(v79 + OBJC_IVAR____TtC10seserviced8LyonPeer_readerIdentifier);
      v81 = *(v79 + OBJC_IVAR____TtC10seserviced8LyonPeer_readerIdentifier + 8);
      if (v81 >> 60 == 15)
      {
        v83 = v157;
        v84 = v158;
        sub_10006A2BC(v158, v157);
        sub_10006A2BC(v82, v81);
        v11 = v84;

        sub_10006A2D0(v82, v81);
        v85 = v83;
        v10 = v156;
        sub_10006A2D0(v84, v85);
        v14 = v77;
        a2 = v78;
        v6 = v151;
        v5 = v155;
      }

      else
      {
        v86 = v81 >> 62;
        v152 = v78;
        v153 = v81;
        if (v81 >> 62 == 3)
        {
          v87 = 0;
          if (v154 == 3 && !v82 && v81 == 0xC000000000000000)
          {
            if (v147)
            {
              sub_10006A2BC(0, 0xC000000000000000);
              sub_10006A2BC(0, 0xC000000000000000);
              sub_10006A2D0(0, 0xC000000000000000);
              v89 = v82;
              v90 = v153;
LABEL_95:
              sub_10006A2D0(v89, v90);
LABEL_96:
              sub_1000D297C(v79);
              goto LABEL_97;
            }

LABEL_94:
            v106 = v157;
            v107 = v158;
            sub_10006A2BC(v158, v157);
            v108 = v82;
            v89 = v82;
            v90 = v153;
            sub_10006A2BC(v108, v153);
            sub_10006A2D0(v107, v106);
            goto LABEL_95;
          }
        }

        else if (v86 > 1)
        {
          if (v86 == 2)
          {
            v92 = *(v82 + 16);
            v91 = *(v82 + 24);
            v32 = __OFSUB__(v91, v92);
            v87 = v91 - v92;
            if (v32)
            {
              goto LABEL_128;
            }
          }

          else
          {
            v87 = 0;
          }
        }

        else if (v86)
        {
          LODWORD(v87) = HIDWORD(v82) - v82;
          if (__OFSUB__(HIDWORD(v82), v82))
          {
            goto LABEL_127;
          }

          v87 = v87;
        }

        else
        {
          v87 = BYTE6(v81);
        }

        if (v154 > 1)
        {
          if (v154 == 2)
          {
            v95 = *(v158 + 16);
            v94 = *(v158 + 24);
            v32 = __OFSUB__(v94, v95);
            v93 = v94 - v95;
            if (v32)
            {
              goto LABEL_125;
            }

            goto LABEL_86;
          }

          if (v87)
          {
LABEL_93:
            v101 = v157;
            v102 = v158;
            sub_10006A2BC(v158, v157);
            v103 = v82;
            v104 = v82;
            v105 = v153;
            sub_10006A2BC(v103, v153);
            sub_10006A2D0(v102, v101);
            sub_10006A2D0(v104, v105);
            goto LABEL_97;
          }

          goto LABEL_94;
        }

        v93 = v148;
        if (v154)
        {
          v93 = v145;
          if (v146)
          {
            goto LABEL_126;
          }
        }

LABEL_86:
        if (v87 != v93)
        {
          goto LABEL_93;
        }

        if (v87 < 1)
        {
          goto LABEL_94;
        }

        if (v86 <= 1)
        {
          if (!v86)
          {
            *&aBlock = v82;
            v96 = v153;
            DWORD2(aBlock) = v153;
            WORD6(aBlock) = WORD2(v153);
            v143 = &aBlock + BYTE6(v153);
            v97 = v82;
            v98 = v157;
            v99 = v158;
            sub_10006A2BC(v158, v157);
            sub_10006A2BC(v97, v96);
            sub_10006A2BC(v99, v98);
            sub_10006A2BC(v97, v96);
            v100 = v155;
            sub_10019F024(&aBlock, v99, v98, &v159);
            v155 = v100;
            sub_10006A2D0(v99, v98);
            sub_10006A2D0(v97, v96);
            sub_10006A2D0(v99, v98);
            LOBYTE(v98) = v159;
            sub_10006A2D0(v97, v96);
            if (v98)
            {
              goto LABEL_96;
            }

            goto LABEL_97;
          }

          v142 = v82;
          v143 = ((v82 >> 32) - v82);
          if (v82 >> 32 < v82)
          {
            goto LABEL_129;
          }

          v119 = v157;
          v118 = v158;
          sub_10006A2BC(v158, v157);
          v120 = v153;
          sub_10006A2BC(v82, v153);
          sub_10006A2BC(v118, v119);
          sub_10006A2BC(v82, v120);
          v121 = __DataStorage._bytes.getter();
          v144 = v82;
          if (v121)
          {
            v122 = v121;
            v123 = __DataStorage._offset.getter();
            if (__OFSUB__(v142, v123))
            {
              goto LABEL_132;
            }

            v124 = v142 - v123 + v122;
          }

          else
          {
            v124 = 0;
          }

          v129 = v153;
          __DataStorage._length.getter();
          v137 = v124;
          v138 = v157;
          v139 = v158;
          v140 = v155;
          sub_10019F024(v137, v158, v157, &aBlock);
          v155 = v140;
          sub_10006A2D0(v139, v138);
          v128 = v144;
          sub_10006A2D0(v144, v129);
          sub_10006A2D0(v139, v138);
          v131 = aBlock;
          goto LABEL_113;
        }

        if (v86 != 2)
        {
          *(&aBlock + 6) = 0;
          *&aBlock = 0;
          v125 = v157;
          v126 = v158;
          sub_10006A2BC(v158, v157);
          v127 = v82;
          v128 = v82;
          v129 = v153;
          sub_10006A2BC(v127, v153);
          sub_10006A2BC(v126, v125);
          sub_10006A2BC(v128, v129);
          v130 = v155;
          sub_10019F024(&aBlock, v126, v125, &v159);
          v155 = v130;
          sub_10006A2D0(v126, v125);
          sub_10006A2D0(v128, v129);
          sub_10006A2D0(v126, v125);
          v131 = v159;
LABEL_113:
          sub_10006A2D0(v128, v129);
          if (v131)
          {
            goto LABEL_96;
          }

          goto LABEL_97;
        }

        v142 = a1;
        v109 = *(v82 + 16);
        v143 = *(v82 + 24);
        v110 = v82;
        v111 = v157;
        v112 = v158;
        sub_10006A2BC(v158, v157);
        v113 = v153;
        sub_10006A2BC(v110, v153);
        sub_10006A2BC(v112, v111);
        v144 = v110;
        sub_10006A2BC(v110, v113);
        v114 = __DataStorage._bytes.getter();
        if (v114)
        {
          v115 = v114;
          v116 = __DataStorage._offset.getter();
          if (__OFSUB__(v109, v116))
          {
            goto LABEL_131;
          }

          v117 = v109 - v116 + v115;
        }

        else
        {
          v117 = 0;
        }

        if (__OFSUB__(v143, v109))
        {
          goto LABEL_130;
        }

        v132 = v153;
        __DataStorage._length.getter();
        v133 = v157;
        v134 = v158;
        v135 = v155;
        sub_10019F024(v117, v158, v157, &aBlock);
        v155 = v135;
        sub_10006A2D0(v134, v133);
        v136 = v144;
        sub_10006A2D0(v144, v132);
        sub_10006A2D0(v134, v133);
        LOBYTE(v133) = aBlock;
        sub_10006A2D0(v136, v132);
        a1 = v142;
        if (v133)
        {
          goto LABEL_96;
        }

LABEL_97:

        v14 = v77;
        a2 = v152;
        v11 = v158;
        v5 = v155;
        v10 = v156;
      }
    }

    else
    {
      a2 = v78;

      v14 = v77;
      v11 = v158;
    }
  }

  v11 = v158;
LABEL_115:
  sub_100093854();
  v141 = v150;
  sub_1003AE618(v150, a3);

  v66 = v11;
  v67 = v157;
LABEL_116:
  sub_10006A2D0(v66, v67);
}

uint64_t sub_1000D40E8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_100069E2C(a2, a3);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  sub_10006A178(a2, a3);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136315138;
    sub_100288788(a2, a3);
    sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
    sub_10007A2D0();
    v9 = BidirectionalCollection<>.joined(separator:)();
    v11 = v10;

    v12 = sub_1002FFA0C(v9, v11, &v14);

    *(v7 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v5, v6, "Unblocking reader identifier %s from timer", v7, 0xCu);
    sub_1000752F4(v8);
  }

  swift_beginAccess();
  sub_100069E2C(a2, a3);
  sub_1000C58E0(0, a2, a3);
  return swift_endAccess();
}

void sub_1000D42BC(uint64_t a1, unint64_t a2)
{
  if (*(v2 + 16) != 1)
  {
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "LyonUWB is not running", v14, 2u);
    }

    goto LABEL_23;
  }

  v5 = sub_10013044C(a1, a2);
  if (v6 >> 60 == 15)
  {

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v50[0] = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_1002FFA0C(a1, a2, v50);
      _os_log_impl(&_mh_execute_header, v7, v8, "Trying to suspend ranging for invalied reader identifier %s", v9, 0xCu);
      sub_1000752F4(v10);
    }

    sub_1000755A4();
    swift_allocError();
    *v11 = 0;
    swift_willThrow();
    return;
  }

  v15 = v5;
  v16 = v6;
  v17 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v17 != 2)
    {
      goto LABEL_26;
    }

    v19 = *(v5 + 16);
    v18 = *(v5 + 24);
    v20 = __OFSUB__(v18, v19);
    v21 = v18 - v19;
    if (!v20)
    {
      if (v21 == 32)
      {
        goto LABEL_15;
      }

LABEL_26:
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v50[0] = v41;
        *v40 = 136315394;
        v50[4] = sub_100288788(v15, v16);
        sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
        sub_10007A2D0();
        v42 = BidirectionalCollection<>.joined(separator:)();
        v44 = v43;

        v45 = sub_1002FFA0C(v42, v44, v50);

        *(v40 + 4) = v45;
        *(v40 + 12) = 2048;
        *(v40 + 14) = 32;
        _os_log_impl(&_mh_execute_header, v38, v39, "Reader Identifier of invalid length %s, expected %ld", v40, 0x16u);
        sub_1000752F4(v41);
      }

      sub_1000755A4();
      swift_allocError();
      *v46 = 0;
      swift_willThrow();
      sub_10006A2D0(v15, v16);
      return;
    }

    __break(1u);
LABEL_30:
    __break(1u);
    return;
  }

  if (v17)
  {
    if (!__OFSUB__(HIDWORD(v5), v5))
    {
      if (HIDWORD(v5) - v5 == 32)
      {
        goto LABEL_15;
      }

      goto LABEL_26;
    }

    goto LABEL_30;
  }

  if (BYTE6(v6) != 32)
  {
    goto LABEL_26;
  }

LABEL_15:
  v22 = OBJC_IVAR____TtC10seserviced7LyonUWB_blockedReaderIdentifiers;
  swift_beginAccess();
  v23 = *(v2 + v22);
  if (!*(v23 + 16) || (v24 = *(v2 + v22), v25 = sub_10008C8DC(v15, v16), (v26 & 1) == 0))
  {
    swift_endAccess();
    v12 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v12, v36, "Given reader identifier was not in the block list; doing nothing", v37, 2u);
    }

    sub_10006A2D0(v15, v16);
LABEL_23:

    return;
  }

  v27 = *(*(v23 + 56) + 8 * v25);
  swift_endAccess();
  v28 = v27;
  sub_10006A2BC(v15, v16);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.info.getter();
  sub_10006A2D0(v15, v16);
  if (os_log_type_enabled(v29, v30))
  {
    v48 = v30;
    v31 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v50[0] = v47;
    *v31 = 136315138;
    sub_100069E2C(v15, v16);
    v32 = Data.description.getter();
    v49 = v28;
    v34 = v33;
    sub_10006A2D0(v15, v16);
    v35 = sub_1002FFA0C(v32, v34, v50);
    v28 = v49;

    *(v31 + 4) = v35;
    _os_log_impl(&_mh_execute_header, v29, v48, "Unblocking reader identifier %s from xpc command", v31, 0xCu);
    sub_1000752F4(v47);
  }

  sub_1003AE754(v28);
  swift_beginAccess();
  sub_1000C58E0(0, v15, v16);
  swift_endAccess();
}