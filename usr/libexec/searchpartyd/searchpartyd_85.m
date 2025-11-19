uint64_t sub_1008EC550(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  v3 = *(a2 + 16);
  return swift_getAssociatedConformanceWitness();
}

unint64_t sub_1008EC570@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = [a1 overflowFlag];
  sub_1000C3258();
  v5 = FixedWidthInteger.data.getter();
  sub_10002EA98(1, v5, v6, &v36);
  v7 = v36;
  v8 = v37;
  v9 = sub_1010BEBB0(v36, v37);
  result = sub_100016590(v7, v8);
  if (!v2)
  {
    v11 = sub_1010BE640(6u, v9);
    if (sub_1010BE640(1u, v9))
    {
      v12 = 765;
    }

    else
    {
      v12 = 0;
    }

    if (sub_1010BE640(3u, v9))
    {
      v13 = 765;
    }

    else
    {
      v13 = 0;
    }

    if (sub_1010BE640(2u, v9))
    {
      v14 = 765;
    }

    else
    {
      v14 = 0;
    }

    v15 = sub_1010BE640(5u, v9);
    v34 = sub_1010BE640(0, v9);
    v33 = sub_1010BE640(4u, v9);
    v32 = sub_1010BE640(7u, v9);
    result = [a1 crashCount];
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (!(result >> 16))
    {
      if (v11)
      {
        v16 = 255;
      }

      else
      {
        v16 = 0;
      }

      v17 = v16 + result;
      if ((v17 & 0x10000) == 0)
      {
        result = [a1 multiTime];
        if ((result & 0x8000000000000000) == 0)
        {
          v31 = result;
          result = [a1 nearOwnerTime];
          if ((result & 0x8000000000000000) == 0)
          {
            v29 = result;
            v30 = v17;
            result = [a1 wildTime];
            if ((result & 0x8000000000000000) == 0)
            {
              v18 = result;
              result = [a1 soundCount];
              if ((result & 0x8000000000000000) == 0)
              {
                if (!HIDWORD(result))
                {
                  v28 = v18;
                  if (v15)
                  {
                    v19 = 510;
                  }

                  else
                  {
                    v19 = 0;
                  }

                  v20 = result + v19;
                  if (!__CFADD__(result, v19))
                  {
                    result = [a1 soundTime];
                    if ((result & 0x8000000000000000) == 0)
                    {
                      if (!HIDWORD(result))
                      {
                        if (v34)
                        {
                          v21 = 510;
                        }

                        else
                        {
                          v21 = 0;
                        }

                        v22 = result + v21;
                        if (!__CFADD__(result, v21))
                        {
                          result = [a1 rangingCount];
                          if ((result & 0x8000000000000000) == 0)
                          {
                            if (!HIDWORD(result))
                            {
                              v35 = v22;
                              if (v33)
                              {
                                v23 = 510;
                              }

                              else
                              {
                                v23 = 0;
                              }

                              v24 = result + v23;
                              if (!__CFADD__(result, v23))
                              {
                                result = [a1 rangingTime];
                                if ((result & 0x8000000000000000) == 0)
                                {
                                  if (!HIDWORD(result))
                                  {
                                    if (v32)
                                    {
                                      v25 = 510;
                                    }

                                    else
                                    {
                                      v25 = 0;
                                    }

                                    v26 = __CFADD__(result, v25);
                                    v27 = result + v25;
                                    if (!v26)
                                    {
                                      *a2 = xmmword_10138BBF0;
                                      *(a2 + 16) = v9;
                                      *(a2 + 18) = v30;
                                      *(a2 + 24) = v31 + v12;
                                      *(a2 + 32) = v29 + v13;
                                      *(a2 + 40) = v28 + v14;
                                      *(a2 + 48) = v20;
                                      *(a2 + 52) = v35;
                                      *(a2 + 56) = v24;
                                      *(a2 + 60) = v27;
                                      *(a2 + 64) = 2;
                                      return result;
                                    }

LABEL_63:
                                    __break(1u);
                                    return result;
                                  }

LABEL_62:
                                  __break(1u);
                                  goto LABEL_63;
                                }

LABEL_61:
                                __break(1u);
                                goto LABEL_62;
                              }

LABEL_60:
                              __break(1u);
                              goto LABEL_61;
                            }

LABEL_59:
                            __break(1u);
                            goto LABEL_60;
                          }

LABEL_58:
                          __break(1u);
                          goto LABEL_59;
                        }

LABEL_57:
                        __break(1u);
                        goto LABEL_58;
                      }

LABEL_56:
                      __break(1u);
                      goto LABEL_57;
                    }

LABEL_55:
                    __break(1u);
                    goto LABEL_56;
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

LABEL_50:
          __break(1u);
          goto LABEL_51;
        }

LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    __break(1u);
    goto LABEL_48;
  }

  return result;
}

uint64_t sub_1008EC8B4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1008EC964(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

unint64_t sub_1008EC8E0(uint64_t a1)
{
  *(a1 + 8) = sub_1008EC910();
  result = sub_10059C0F0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1008EC910()
{
  result = qword_1016ADA08;
  if (!qword_1016ADA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016ADA08);
  }

  return result;
}

uint64_t sub_1008EC964(uint64_t *a1)
{
  v3 = a1[4];
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryDecoding.container()();
  v4 = v13[4];
  sub_10015049C(v13, v13[3]);
  v5 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  if (!v1)
  {
    v7 = v5;
    v8 = v6;
    sub_100017D5C(v5, v6);
    v9 = sub_100314594(v7, v8);
    if (v10 >> 60 != 15)
    {
      v4 = v9;
      sub_100016590(v7, v8);
      sub_100007BAC(v13);
      sub_100007BAC(a1);
      return v4;
    }

    v4 = type metadata accessor for BinaryEncodingError();
    sub_100205404();
    swift_allocError();
    (*(*(v4 - 8) + 104))(v11, enum case for BinaryEncodingError.encodingError(_:), v4);
    swift_willThrow();
    sub_100016590(v7, v8);
  }

  sub_100007BAC(v13);
  sub_100007BAC(a1);
  return v4;
}

uint64_t sub_1008ECAD0()
{
  v0 = IOServiceMatching("IOPMPowerSource");
  if (!v0)
  {
    sub_10039722C();
    v9 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    return 0;
  }

  v1 = v0;
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v1);
  if (!MatchingService || (v3 = MatchingService, v4 = String._bridgeToObjectiveC()(), CFProperty = IORegistryEntryCreateCFProperty(v3, v4, kCFAllocatorDefault, 0), v4, !CFProperty))
  {
    sub_10039722C();
    v10 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

LABEL_11:
    return 0;
  }

  v6 = CFGetTypeID(CFProperty);
  if (v6 != CFBooleanGetTypeID())
  {
    goto LABEL_9;
  }

  swift_unknownObjectRetain();
  swift_dynamicCast();
  if (v15)
  {
    sub_10039722C();
    v7 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    swift_unknownObjectRelease();
    return 3;
  }

  v11 = String._bridgeToObjectiveC()();
  v12 = IORegistryEntryCreateCFProperty(v3, v11, kCFAllocatorDefault, 0);

  if (!v12)
  {
LABEL_9:
    sub_10039722C();
    v10 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

LABEL_10:
    swift_unknownObjectRelease();
    goto LABEL_11;
  }

  v13 = CFGetTypeID(v12);
  if (v13 != CFBooleanGetTypeID())
  {
    sub_10039722C();
    v10 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    swift_unknownObjectRelease();
    goto LABEL_10;
  }

  swift_unknownObjectRetain();
  swift_dynamicCast();
  sub_10039722C();
  v14 = static OS_os_log.default.getter();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  if (v15)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_1008ECF28(uint64_t a1, int a2)
{
  v5 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v75 - v7;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v80 = v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v12);
  v79 = v75 - v14;
  v15 = __chkstk_darwin(v13);
  v17 = v75 - v16;
  __chkstk_darwin(v15);
  v19 = v75 - v18;
  v20 = sub_10030DB78();
  sub_10030BB60(v20, v8);

  v21 = (*(v10 + 48))(v8, 1, v9);
  v82 = a1;
  v81 = a2;
  if (v21 == 1)
  {
    v22 = sub_10000B3A8(v8, &unk_101696900, &unk_10138B1E0);
  }

  else
  {
    v77 = *(v10 + 32);
    v78 = v2;
    v77(v19, v8, v9);
    Date.addingTimeInterval(_:)();
    v23 = static Date.< infix(_:_:)();
    v24 = *(v10 + 8);
    v24(v17, v9);
    if (v23)
    {
      v75[1] = type metadata accessor for Transaction();
      v76 = v24;
      v25 = *(v10 + 16);
      v25(v17, a1, v9);
      v25(v79, v19, v9);
      v26 = *(v10 + 80);
      v27 = (v26 + 25) & ~v26;
      v75[0] = (v11 + v26 + v27) & ~v26;
      v28 = swift_allocObject();
      *(v28 + 16) = v78;
      v29 = v81;
      *(v28 + 24) = v81;
      v30 = v28 + v27;
      v31 = v77;
      v77(v30, v17, v9);
      v31(v28 + v75[0], v79, v9);
      LOBYTE(a2) = v29;

      static Transaction.asyncTask(name:block:)();

      v22 = v76(v19, v9);
    }

    else
    {
      v22 = (v24)(v19, v9);
      LOBYTE(a2) = v81;
    }
  }

  v32 = 0x5779726574746162;
  v33 = 0xEB00000000694669;
  if (a2 != 2)
  {
    v32 = 0x4379726574746162;
    v33 = 0xEB000000006C6C65;
  }

  v34 = 0x6C65437265776F70;
  v35 = 0xE90000000000006CLL;
  if (!a2)
  {
    v34 = 0x4669577265776F70;
    v35 = 0xE900000000000069;
  }

  if (a2 <= 1u)
  {
    v36 = v34;
  }

  else
  {
    v36 = v32;
  }

  if (a2 <= 1u)
  {
    v37 = v35;
  }

  else
  {
    v37 = v33;
  }

  v38 = sub_10030E76C(v22);
  if (*(v38 + 16))
  {
    v39 = sub_100771D58(v36, v37);
    v41 = v40;

    if (v41)
    {
      v42 = *(*(v38 + 56) + 8 * v39);
    }

    else
    {
      v42 = _swiftEmptyArrayStorage;
    }
  }

  else
  {

    v42 = _swiftEmptyArrayStorage;
  }

  v43 = v80;
  (*(v10 + 16))(v80, v82, v9);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v42 = sub_100A5B6F8(0, v42[2] + 1, 1, v42);
  }

  v45 = v42[2];
  v44 = v42[3];
  if (v45 >= v44 >> 1)
  {
    v42 = sub_100A5B6F8(v44 > 1, v45 + 1, 1, v42);
  }

  v42[2] = v45 + 1;
  v46 = *(v10 + 32);
  v47 = v42 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v45;
  v80 = v9;
  v46(v47, v43, v9);
  v48 = 0x5779726574746162;
  v49 = 0xEB00000000694669;
  if (a2 != 2)
  {
    v48 = 0x4379726574746162;
    v49 = 0xEB000000006C6C65;
  }

  v50 = 0x6C65437265776F70;
  v51 = 0xE90000000000006CLL;
  if (!a2)
  {
    v50 = 0x4669577265776F70;
    v51 = 0xE900000000000069;
  }

  if (a2 <= 1u)
  {
    v52 = v50;
  }

  else
  {
    v52 = v48;
  }

  if (a2 <= 1u)
  {
    v53 = v51;
  }

  else
  {
    v53 = v49;
  }

  v55 = sub_10030E76C(v54);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v83 = v55;
  sub_100FFBD6C(v42, v52, v53, isUniquelyReferenced_nonNull_native);

  v57 = objc_opt_self();
  v58 = [v57 standardUserDefaults];
  sub_1000BC4D4(&qword_1016ADB40, &unk_1013C4ED8);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v60 = String._bridgeToObjectiveC()();
  [v58 setObject:isa forKey:v60];

  sub_10030E76C(v61);
  v62 = [v57 standardUserDefaults];
  v63 = Dictionary._bridgeToObjectiveC()().super.isa;

  v64 = String._bridgeToObjectiveC()();
  [v62 setObject:v63 forKey:v64];

  static os_log_type_t.default.getter();
  if (qword_101695070 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v65 = swift_allocObject();
  v66 = v65;
  *(v65 + 16) = xmmword_10138B360;
  if (v81 > 1u)
  {
    if (v81 == 2)
    {
      v67 = 0x5779726574746162;
      v69 = 6899305;
    }

    else
    {
      v67 = 0x4379726574746162;
      v69 = 7105637;
    }

    v68 = v69 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
  }

  else
  {
    v67 = 0x4669577265776F70;
    v68 = 0xE900000000000069;
    if (v81)
    {
      v67 = 0x6C65437265776F70;
      v68 = 0xE90000000000006CLL;
    }
  }

  *(v65 + 56) = &type metadata for String;
  v70 = sub_100008C00();
  v66[8] = v70;
  v66[4] = v67;
  v66[5] = v68;
  sub_1008F6EA8(&qword_1016969A0, 255, &type metadata accessor for Date);
  v71 = dispatch thunk of CustomStringConvertible.description.getter();
  v66[12] = &type metadata for String;
  v66[13] = v70;
  v66[9] = v71;
  v66[10] = v72;
  v73 = v42[2];

  v66[17] = &type metadata for Int;
  v66[18] = &protocol witness table for Int;
  v66[14] = v73;
  os_log(_:dso:log:_:_:)();
}

uint64_t sub_1008ED7E8(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  *(v4 + 64) = a2;
  *(v4 + 16) = a1;
  return _swift_task_switch(sub_1008ED810, 0, 0);
}

uint64_t sub_1008ED810()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for AnalyticsEvent(0);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  v5 = swift_allocObject();
  *(v0 + 40) = v5;
  swift_defaultActor_initialize();
  *(v5 + 14) = sub_100907BEC(_swiftEmptyArrayStorage);
  UUID.init()();
  v6 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_startTime;
  v7 = type metadata accessor for DispatchTime();
  v8 = *(*(v7 - 8) + 56);
  v8(&v5[v6], 1, 1, v7);
  v8(&v5[OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_endTime], 1, 1, v7);
  *(v5 + 15) = 0xD000000000000033;
  *(v5 + 16) = 0x8000000101364940;

  return _swift_task_switch(sub_1008ED970, v5, 0);
}

uint64_t sub_1008ED970()
{
  sub_101170CAC(*(v0 + 40), *(v0 + 16));
  v1 = *(v0 + 16);

  type metadata accessor for AnalyticsPublisher();
  *(v0 + 48) = swift_allocObject();
  swift_defaultActor_initialize();
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v2[1] = sub_1008EDA50;
  v3 = *(v0 + 40);

  return sub_101163F78(v3);
}

uint64_t sub_1008EDA50()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return _swift_task_switch(sub_1008EDB68, 0, 0);
}

uint64_t sub_1008EDB68(uint64_t a1)
{
  sub_10030E76C(a1);

  v2 = [objc_opt_self() standardUserDefaults];
  sub_1000BC4D4(&qword_1016ADB40, &unk_1013C4ED8);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v4 = String._bridgeToObjectiveC()();
  [v2 setObject:isa forKey:v4];

  static os_log_type_t.default.getter();
  if (qword_101695070 != -1)
  {
    swift_once();
  }

  v5 = *(v1 + 64);
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v6 = swift_allocObject();
  v7 = v6;
  *(v6 + 16) = xmmword_101391790;
  if (v5 > 1)
  {
    if (v5 == 2)
    {
      v8 = 0xEB00000000694669;
      v9 = 0x5779726574746162;
    }

    else
    {
      v8 = 0xEB000000006C6C65;
      v9 = 0x4379726574746162;
    }
  }

  else
  {
    v8 = 0xE900000000000069;
    if (v5)
    {
      v8 = 0xE90000000000006CLL;
      v9 = 0x6C65437265776F70;
    }

    else
    {
      v9 = 0x4669577265776F70;
    }
  }

  v11 = *(v1 + 32);
  v10 = *(v1 + 40);
  v12 = *(v1 + 24);
  *(v6 + 56) = &type metadata for String;
  v13 = sub_100008C00();
  v7[8] = v13;
  v7[4] = v9;
  v7[5] = v8;
  type metadata accessor for Date();
  sub_1008F6EA8(&qword_1016969A0, 255, &type metadata accessor for Date);
  v14 = dispatch thunk of CustomStringConvertible.description.getter();
  v7[12] = &type metadata for String;
  v7[13] = v13;
  v7[9] = v14;
  v7[10] = v15;
  v16 = dispatch thunk of CustomStringConvertible.description.getter();
  v7[17] = &type metadata for String;
  v7[18] = v13;
  v7[14] = v16;
  v7[15] = v17;
  sub_10030E76C(v16);
  v18 = Dictionary.description.getter();
  v20 = v19;

  v7[22] = &type metadata for String;
  v7[23] = v13;
  v7[19] = v18;
  v7[20] = v20;
  os_log(_:dso:log:_:_:)();

  v21 = *(v1 + 8);

  return v21();
}

uint64_t sub_1008EDE88()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177B5F0);
  v1 = sub_1000076D4(v0, qword_10177B5F0);
  if (qword_1016954D0 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_10177CDF0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1008EDF50(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = *v1;
  return _swift_task_switch(sub_1008EDF98, v1, 0);
}

uint64_t sub_1008EDF98()
{
  if (qword_101694A60 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177B5F0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Received publish event trigger.", v4, 2u);
  }

  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[3];

  v9 = sub_1008F6EA8(&qword_1016ADB18, v8, type metadata accessor for FindMyNetworkPublisherService);
  v10 = swift_task_alloc();
  v0[6] = v10;
  v10[2] = v5;
  v10[3] = v7;
  v10[4] = v6;
  v11 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v12 = swift_task_alloc();
  v0[7] = v12;
  v13 = sub_1000BC4D4(&qword_1016ADB30, &qword_1013C4EA0);
  *v12 = v0;
  v12[1] = sub_1008EE19C;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 2, v5, v9, 0xD000000000000018, 0x80000001013648C0, sub_1008F6C38, v10, v13);
}

uint64_t sub_1008EE19C()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v9 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = *(v2 + 32);
    v5 = sub_1008EE2C4;
  }

  else
  {
    v6 = *(v2 + 48);
    v7 = *(v2 + 32);

    v5 = sub_10077EDE4;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1008EE2C4()
{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

uint64_t sub_1008EE328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a4;
  v7 = sub_1000BC4D4(&qword_1016ADB38, &unk_1013C4EA8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v23 - v10;
  v12 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v23 - v14;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  (*(v8 + 16))(v11, a1, v7);
  v18 = sub_1008F6EA8(&qword_1016ADB18, v17, type metadata accessor for FindMyNetworkPublisherService);
  v19 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  v20 = (v9 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 2) = a2;
  *(v21 + 3) = v18;
  *(v21 + 4) = a2;
  *(v21 + 5) = a3;
  (*(v8 + 32))(&v21[v19], v11, v7);
  *&v21[v20] = v24;

  swift_retain_n();
  sub_10025EDD4(0, 0, v15, &unk_1013C4EC0, v21);
}

uint64_t sub_1008EE580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v9 = sub_1000BC4D4(&qword_1016ADB38, &unk_1013C4EA8);
  v7[9] = v9;
  v10 = *(v9 - 8);
  v7[10] = v10;
  v7[11] = *(v10 + 64);
  v7[12] = swift_task_alloc();

  return _swift_task_switch(sub_1008EE65C, a4, 0);
}

uint64_t sub_1008EE65C()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[9];
  v4 = v0[10];
  v6 = v0[5];
  v5 = v0[6];
  v7 = *(v6 + 136);
  v0[2] = 0x6873696C627550;
  v8 = v0[7];
  v15 = v0[8];
  v0[3] = 0xE700000000000000;
  (*(v4 + 16))(v1, v8, v3);
  v9 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v10 = (v2 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = swift_allocObject();
  v0[13] = v11;
  *(v11 + 16) = v6;
  *(v11 + 24) = v5;
  (*(v4 + 32))(v11 + v9, v1, v3);
  *(v11 + v10) = v15;
  v12 = *(&async function pointer to dispatch thunk of AsyncKeyedThrottle.throttle(key:block:skipBlock:) + 1);
  v16 = &async function pointer to dispatch thunk of AsyncKeyedThrottle.throttle(key:block:skipBlock:) + async function pointer to dispatch thunk of AsyncKeyedThrottle.throttle(key:block:skipBlock:);

  v13 = swift_task_alloc();
  v0[14] = v13;
  *v13 = v0;
  v13[1] = sub_1008EE814;

  return (v16)(v0 + 2, &unk_1013C4ED0, v11, sub_1008F67D0, 0);
}

uint64_t sub_1008EE814()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *v1;
  v4[15] = v0;

  if (v0)
  {
    v5 = v4[5];

    return _swift_task_switch(sub_1008EE978, v5, 0);
  }

  else
  {
    v6 = v4[12];

    v7 = v4[1];

    return v7();
  }
}

uint64_t sub_1008EE978()
{
  if (qword_101694A60 != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177B5F0);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[15];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "Throttled publish event threw error: %{public}@.", v6, 0xCu);
    sub_10000B3A8(v7, &qword_10169BB30, &unk_10138B3C0);
  }

  v9 = v0[15];
  v10 = v0[9];
  v11 = v0[7];

  v0[4] = v9;
  CheckedContinuation.resume(throwing:)();
  v12 = v0[12];

  v13 = v0[1];

  return v13();
}

uint64_t sub_1008EEB28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  v4 = *(*(sub_1000BC4D4(&unk_101696900, &unk_10138B1E0) - 8) + 64) + 15;
  v3[7] = swift_task_alloc();
  v5 = type metadata accessor for Date();
  v3[8] = v5;
  v6 = *(v5 - 8);
  v3[9] = v6;
  v7 = *(v6 + 64) + 15;
  v3[10] = swift_task_alloc();

  return _swift_task_switch(sub_1008EEC24, 0, 0);
}

uint64_t sub_1008EEC24()
{
  if (qword_101694A60 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[11] = sub_1000076D4(v1, qword_10177B5F0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Publish event is executing.", v4, 2u);
  }

  v6 = v0[9];
  v5 = v0[10];
  v8 = v0[7];
  v7 = v0[8];

  type metadata accessor for FindMyNetworkPublishDateProvider();
  v0[12] = swift_allocObject();
  swift_defaultActor_initialize();
  static Date.trustedNow.getter(v5);
  (*(v6 + 16))(v8, v5, v7);
  (*(v6 + 56))(v8, 0, 1, v7);
  sub_1008F68DC(v8);
  v9 = swift_task_alloc();
  v0[13] = v9;
  *v9 = v0;
  v9[1] = sub_1008EEDF0;
  v10 = v0[4];

  return sub_1008F4148();
}

uint64_t sub_1008EEDF0()
{
  v2 = *(*v1 + 104);
  v3 = *v1;
  v3[14] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1008EF84C, 0, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v3[15] = v4;
    *v4 = v3;
    v4[1] = sub_1008EEF5C;
    v5 = v3[4];

    return sub_1008F2DA0();
  }
}

uint64_t sub_1008EEF5C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 120);
  v7 = *v2;
  *(v3 + 128) = a1;
  *(v3 + 136) = v1;

  if (v1)
  {
    v5 = sub_1008EF8F4;
  }

  else
  {
    v5 = sub_1008EF070;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1008EF070()
{
  v1 = v0[16];
  v2 = v0[11];

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[16];
  if (v5)
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = *(v6 + 16);

    _os_log_impl(&_mh_execute_header, v3, v4, "Publish found %ld observations to publish.", v7, 0xCu);
  }

  else
  {
    v8 = v0[16];
  }

  v9 = swift_task_alloc();
  v0[18] = v9;
  *v9 = v0;
  v9[1] = sub_1008EF1B0;
  v10 = v0[16];
  v11 = v0[4];

  return sub_1008EFF7C(v10);
}

uint64_t sub_1008EF1B0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 144);
  v7 = *v2;
  *(v3 + 152) = a1;
  *(v3 + 160) = v1;

  if (v1)
  {
    v5 = sub_1008EF99C;
  }

  else
  {
    v5 = sub_1008EF2C4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1008EF2C4()
{
  v1 = v0[5];
  if (v1)
  {
    v2 = v0[5];

    v3 = swift_task_alloc();
    v0[21] = v3;
    *v3 = v0;
    v3[1] = sub_1008EF550;
    v4 = v0[16];
    v5 = v0[4];

    return sub_1008F4D8C(v1, v4, 0);
  }

  else
  {
    v7 = v0[16];
    v8 = v0[11];

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    v11 = os_log_type_enabled(v9, v10);
    v12 = v0[16];
    if (v11)
    {
      v13 = swift_slowAlloc();
      *v13 = 134217984;
      v14 = *(v12 + 16);

      *(v13 + 4) = v14;

      _os_log_impl(&_mh_execute_header, v9, v10, "Published %ld observations to Find My network.", v13, 0xCu);
    }

    else
    {
      v15 = v0[16];
      swift_bridgeObjectRelease_n();
    }

    v16 = v0[19];
    v17 = v0[12];
    v19 = v0[9];
    v18 = v0[10];
    v20 = v0[8];
    v21 = v0[6];
    v22 = sub_1011298C8(&off_10160CE00);
    v23 = sub_1008ECAD0();
    v24 = sub_10112C0E0(v23, v22);

    v25 = sub_1000DD810();
    if (v25)
    {
      v26 = 2;
    }

    else
    {
      v26 = 3;
    }

    if (v24)
    {
      v27 = v26;
    }

    else
    {
      v27 = (v25 & 1) == 0;
    }

    sub_1008ECF28(v18, v27);
    v0[3] = v16;
    v28 = v16;
    sub_1000BC4D4(&qword_1016ADB38, &unk_1013C4EA8);
    CheckedContinuation.resume(returning:)();

    (*(v19 + 8))(v18, v20);
    v29 = v0[10];
    v30 = v0[7];

    v31 = v0[1];

    return v31(1);
  }
}

uint64_t sub_1008EF550()
{
  v1 = *(*v0 + 168);
  v3 = *v0;

  return _swift_task_switch(sub_1008EF64C, 0, 0);
}

uint64_t sub_1008EF64C()
{
  v1 = v0[5];

  v2 = v0[16];
  v3 = v0[11];

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[16];
  if (v6)
  {
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    v9 = *(v7 + 16);

    *(v8 + 4) = v9;

    _os_log_impl(&_mh_execute_header, v4, v5, "Published %ld observations to Find My network.", v8, 0xCu);
  }

  else
  {
    v10 = v0[16];
    swift_bridgeObjectRelease_n();
  }

  v11 = v0[19];
  v12 = v0[12];
  v14 = v0[9];
  v13 = v0[10];
  v15 = v0[8];
  v16 = v0[6];
  v17 = sub_1011298C8(&off_10160CE00);
  v18 = sub_1008ECAD0();
  v19 = sub_10112C0E0(v18, v17);

  v20 = sub_1000DD810();
  if (v20)
  {
    v21 = 2;
  }

  else
  {
    v21 = 3;
  }

  if (v19)
  {
    v22 = v21;
  }

  else
  {
    v22 = (v20 & 1) == 0;
  }

  sub_1008ECF28(v13, v22);
  v0[3] = v11;
  v23 = v11;
  sub_1000BC4D4(&qword_1016ADB38, &unk_1013C4EA8);
  CheckedContinuation.resume(returning:)();

  (*(v14 + 8))(v13, v15);
  v24 = v0[10];
  v25 = v0[7];

  v26 = v0[1];

  return v26(1);
}

uint64_t sub_1008EF84C()
{
  v1 = v0[14];
  v2 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  v6 = v0[7];
  v5 = v0[8];

  (*(v4 + 8))(v3, v5);

  v7 = v0[1];

  return v7(0);
}

uint64_t sub_1008EF8F4()
{
  v1 = v0[17];
  v2 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  v6 = v0[7];
  v5 = v0[8];

  (*(v4 + 8))(v3, v5);

  v7 = v0[1];

  return v7(0);
}

uint64_t sub_1008EF99C()
{
  v1 = v0[5];
  v2 = v0[20];
  if (v1)
  {
    v3 = v0[5];

    swift_errorRetain();
    v4 = swift_task_alloc();
    v0[22] = v4;
    *v4 = v0;
    v4[1] = sub_1008EFC48;
    v5 = v0[16];
    v6 = v0[4];

    return sub_1008F4D8C(v1, v5, v2);
  }

  else
  {
    v8 = v0[16];
    v9 = v0[11];

    swift_errorRetain();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = v0[20];
      v13 = v0[16];
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 134218242;
      v16 = *(v13 + 16);

      *(v14 + 4) = v16;

      *(v14 + 12) = 2114;
      swift_errorRetain();
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 14) = v17;
      *v15 = v17;
      _os_log_impl(&_mh_execute_header, v10, v11, "Failed to publish %ld observations to Find My network. %{public}@.", v14, 0x16u);
      sub_10000B3A8(v15, &qword_10169BB30, &unk_10138B3C0);
    }

    else
    {
      v18 = v0[16];
      swift_bridgeObjectRelease_n();
    }

    v19 = v0[12];
    v21 = v0[9];
    v20 = v0[10];
    v22 = v0[8];
    v23 = v0[6];
    v0[2] = v0[20];
    swift_errorRetain();
    sub_1000BC4D4(&qword_1016ADB38, &unk_1013C4EA8);
    CheckedContinuation.resume(throwing:)();

    (*(v21 + 8))(v20, v22);
    v24 = v0[10];
    v25 = v0[7];

    v26 = v0[1];

    return v26(1);
  }
}

uint64_t sub_1008EFC48()
{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 160);
  v4 = *v0;

  return _swift_task_switch(sub_1008EFD60, 0, 0);
}

uint64_t sub_1008EFD60()
{
  v1 = v0[5];

  v2 = v0[20];
  v3 = v0[16];
  v4 = v0[11];

  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[20];
    v8 = v0[16];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 134218242;
    v11 = *(v8 + 16);

    *(v9 + 4) = v11;

    *(v9 + 12) = 2114;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v12;
    *v10 = v12;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to publish %ld observations to Find My network. %{public}@.", v9, 0x16u);
    sub_10000B3A8(v10, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
    v13 = v0[16];
    swift_bridgeObjectRelease_n();
  }

  v14 = v0[12];
  v16 = v0[9];
  v15 = v0[10];
  v17 = v0[8];
  v18 = v0[6];
  v0[2] = v0[20];
  swift_errorRetain();
  sub_1000BC4D4(&qword_1016ADB38, &unk_1013C4EA8);
  CheckedContinuation.resume(throwing:)();

  (*(v16 + 8))(v15, v17);
  v19 = v0[10];
  v20 = v0[7];

  v21 = v0[1];

  return v21(1);
}

uint64_t sub_1008EFF7C(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = *(*(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8) + 64) + 15;
  v2[9] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v2[10] = v4;
  v5 = *(v4 - 8);
  v2[11] = v5;
  v6 = *(v5 + 64) + 15;
  v2[12] = swift_task_alloc();
  v7 = type metadata accessor for FMNServerInteractionController.FMNResponseFields();
  v2[13] = v7;
  v8 = *(v7 - 8);
  v2[14] = v8;
  v9 = *(v8 + 64) + 15;
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v10 = *(*(sub_1000BC4D4(&qword_1016985F0, &unk_10139D780) - 8) + 64) + 15;
  v2[17] = swift_task_alloc();
  v11 = type metadata accessor for SubmitEndpoint();
  v2[18] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();

  return _swift_task_switch(sub_1008F0150, v1, 0);
}

uint64_t sub_1008F0150()
{
  if (*(v0[7] + 16))
  {
    v1 = *(v0[8] + 128);

    v2 = swift_task_alloc();
    v0[21] = v2;
    *v2 = v0;
    v2[1] = sub_1008F0374;
    v3 = v0[7];

    return (sub_101295A14)(v3, v1);
  }

  else
  {
    if (qword_101694A60 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000076D4(v5, qword_10177B5F0);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "No observations to publish.", v8, 2u);
    }

    v10 = v0[19];
    v9 = v0[20];
    v12 = v0[16];
    v11 = v0[17];
    v13 = v0[15];
    v14 = v0[12];
    v15 = v0[9];

    v16 = v0[1];

    return v16(0);
  }
}

uint64_t sub_1008F0374(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*v4 + 168);
  v6 = *v4;
  v6[22] = a1;
  v6[23] = a2;
  v6[24] = a3;

  if (v3)
  {
    v8 = v6[19];
    v7 = v6[20];
    v10 = v6[16];
    v9 = v6[17];
    v11 = v6[15];
    v12 = v6[12];
    v13 = v6[9];

    v14 = v6[1];

    return v14();
  }

  else
  {
    v16 = v6[8];

    return _swift_task_switch(sub_1008F0518, v16, 0);
  }
}

uint64_t sub_1008F0518()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[22];
  v5 = v0[19];
  v4 = v0[20];
  v6 = v0[17];
  v7 = v0[18];
  type metadata accessor for AnonymousCrowdSourceNetworkURLComponents();
  swift_allocObject();
  *v4 = sub_100280910();
  v8 = *(v7 + 20);
  v9 = enum case for FMNAccountType.none(_:);
  v10 = type metadata accessor for FMNAccountType();
  (*(*(v10 - 8) + 104))(v4 + v8, v9, v10);
  v11 = type metadata accessor for SearchPartyURLSessionFactory(0);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v14 = type metadata accessor for FMNMockingPreferences();
  (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
  v15 = FMNURLSessionFactory.init(mockSessionCreationBlock:preferences:)();
  v16 = type metadata accessor for ServerInteractionController(0);
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  v19 = swift_allocObject();
  sub_10001BB38(v4, v5, type metadata accessor for SubmitEndpoint);
  v0[25] = sub_100623214(v5, v15, v19);
  sub_1000344F4(v4, type metadata accessor for SubmitEndpoint);
  v0[5] = &type metadata for SubmitUploadv2;
  v0[6] = sub_1008F6B90();
  v0[2] = v3;
  v0[3] = v2;
  v0[4] = v1;

  sub_100017D5C(v2, v1);
  v20 = swift_task_alloc();
  v0[26] = v20;
  *v20 = v0;
  v20[1] = sub_1008F0750;
  v21 = v0[16];

  return sub_1004E682C(v21, (v0 + 2));
}

uint64_t sub_1008F0750()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v8 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v4 = *(v2 + 64);
    v5 = sub_1008F2214;
  }

  else
  {
    v6 = *(v2 + 64);
    sub_100007BAC((v2 + 16));
    v5 = sub_1008F0878;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1008F0878()
{
  v1 = v0[16];
  if ((FMNServerInteractionController.FMNResponseFields.statusCode.getter() - 300) >= 0xFFFFFFFFFFFFFF9CLL)
  {
    v15 = async function pointer to daemon.getter[1];
    v16 = swift_task_alloc();
    v0[28] = v16;
    *v16 = v0;
    v16[1] = sub_1008F0B74;

    return daemon.getter();
  }

  else
  {
    if (qword_101694A58 != -1)
    {
      swift_once();
    }

    v2 = v0[15];
    v3 = v0[16];
    v4 = v0[13];
    v5 = v0[14];
    v6 = type metadata accessor for Logger();
    sub_1000076D4(v6, qword_10177B5D8);
    (*(v5 + 16))(v2, v3, v4);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    v9 = os_log_type_enabled(v7, v8);
    v11 = v0[14];
    v10 = v0[15];
    v12 = v0[13];
    if (v9)
    {
      v13 = swift_slowAlloc();
      *v13 = 134217984;
      v14 = FMNServerInteractionController.FMNResponseFields.statusCode.getter();
      v34 = *(v11 + 8);
      v34(v10, v12);
      *(v13 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v7, v8, "Failed to publish payloads. Got %ld.", v13, 0xCu);
    }

    else
    {
      v34 = *(v11 + 8);
      v34(v0[15], v0[13]);
    }

    v17 = v7;
    v19 = v0[24];
    v18 = v0[25];
    v21 = v0[22];
    v20 = v0[23];
    v22 = v0[16];
    v23 = v0[13];

    sub_1008F6BE4();
    swift_allocError();
    *v24 = 0;
    swift_willThrow();

    sub_100016590(v20, v19);
    v34(v22, v23);
    v26 = v0[19];
    v25 = v0[20];
    v28 = v0[16];
    v27 = v0[17];
    v29 = v0[15];
    v30 = v0[12];
    v31 = v0[9];

    v32 = v0[1];

    return v32();
  }
}

uint64_t sub_1008F0B74(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 224);
  v12 = *v1;
  v3[29] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[30] = v6;
  v7 = type metadata accessor for Daemon();
  v3[31] = v7;
  v8 = type metadata accessor for ObservationStoreService();
  v3[32] = v8;
  v9 = sub_1008F6EA8(&qword_1016AA400, 255, &type metadata accessor for Daemon);
  v3[33] = v9;
  v10 = sub_1008F6EA8(&qword_1016AA450, 255, type metadata accessor for ObservationStoreService);
  v3[34] = v10;
  *v6 = v12;
  v6[1] = sub_1008F0D70;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1008F0D70(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 240);
  v6 = *v2;
  v4[35] = a1;
  v4[36] = v1;

  if (v1)
  {
    v7 = v4[8];

    return _swift_task_switch(sub_1008F1074, v7, 0);
  }

  else
  {
    v8 = v4[29];

    v9 = swift_task_alloc();
    v4[37] = v9;
    *v9 = v6;
    v9[1] = sub_1008F0F00;
    v10 = v4[7];

    return sub_1010CDD28(v10);
  }
}

uint64_t sub_1008F0F00()
{
  v2 = *(*v1 + 296);
  v3 = *v1;
  v3[38] = v0;

  if (v0)
  {
    v4 = v3[8];

    return _swift_task_switch(sub_1008F22F8, v4, 0);
  }

  else
  {
    v5 = v3[35];

    v6 = async function pointer to daemon.getter[1];
    v7 = swift_task_alloc();
    v3[39] = v7;
    *v7 = v3;
    v7[1] = sub_1008F1254;

    return daemon.getter();
  }
}

uint64_t sub_1008F1074()
{
  v1 = v0[36];
  v2 = v0[29];

  if (qword_101694A60 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177B5F0);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to delete observations: %{public}@.", v6, 0xCu);
    sub_10000B3A8(v7, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v9 = async function pointer to daemon.getter[1];
  v10 = swift_task_alloc();
  v0[39] = v10;
  *v10 = v0;
  v10[1] = sub_1008F1254;

  return daemon.getter();
}

uint64_t sub_1008F1254(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 312);
  v5 = *v1;
  v3[40] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[41] = v7;
  *v7 = v5;
  v7[1] = sub_1008F13E0;
  v8 = v3[34];
  v9 = v3[33];
  v10 = v3[32];
  v11 = v3[31];

  return ActorServiceDaemon.getService<A>()(v11, v10, v9, v8);
}

uint64_t sub_1008F13E0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 328);
  v6 = *v2;
  v4[42] = a1;
  v4[43] = v1;

  if (v1)
  {
    v7 = v4[8];

    return _swift_task_switch(sub_1008F1698, v7, 0);
  }

  else
  {
    v8 = v4[40];

    v9 = swift_task_alloc();
    v4[44] = v9;
    *v9 = v6;
    v9[1] = sub_1008F1570;
    v10 = v4[7];

    return sub_1010CDED8(v10);
  }
}

uint64_t sub_1008F1570()
{
  v2 = *v1;
  v3 = *(*v1 + 352);
  v9 = *v1;
  *(*v1 + 360) = v0;

  if (v0)
  {
    v4 = *(v2 + 64);
    v5 = sub_1008F24D8;
  }

  else
  {
    v6 = *(v2 + 336);
    v7 = *(v2 + 64);

    v5 = sub_1008F1CF4;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1008F1698()
{
  v1 = v0[43];
  v2 = v0[40];

  if (qword_101694A60 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177B5F0);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to mark observations published: %{public}@.", v6, 0xCu);
    sub_10000B3A8(v7, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v9 = v0[16];
  v10 = FMNServerInteractionController.FMNResponseFields.responseHeaders.getter();
  v11 = sub_1008F2B34(v10);

  if (v11[2] && (v12 = sub_100771D58(0xD000000000000014, 0x800000010135BB50), (v13 & 1) != 0))
  {
    v14 = v0[10];
    v15 = v0[11];
    v16 = v0[9];
    v17 = (v11[7] + 16 * v12);
    v18 = *v17;
    v19 = v17[1];

    UUID.init(uuidString:)();

    if ((*(v15 + 48))(v16, 1, v14) == 1)
    {
      sub_10000B3A8(v0[9], &qword_1016980D0, &unk_10138F3B0);
    }

    else
    {
      v42 = v0[22];
      (*(v0[11] + 32))(v0[12], v0[9], v0[10]);
      v43 = sub_1008F2B34(v42);
      if (v43[2] && (v44 = sub_100771D58(0x2D656C7070612D78, 0xED0000316E676973), (v45 & 1) != 0))
      {
        v46 = (v43[7] + 16 * v44);
        v47 = *v46;
        v48 = v46[1];

        v49 = Data.init(base64Encoded:options:)();
        v51 = v50;

        if (v51 >> 60 == 15)
        {
          (*(v0[11] + 8))(v0[12], v0[10]);
        }

        else
        {
          isa = Data._bridgeToObjectiveC()().super.isa;
          v56 = SecCertificateCreateWithData(0, isa);

          if (v56)
          {
            v57 = SecCertificateCopySubjectPublicKeyInfoSHA256Digest();
            if (v57)
            {
              v66 = v0[25];
              v67 = v0[22];
              v71 = v0[24];
              v72 = v0[14];
              v73 = v0[13];
              v74 = v0[16];
              v65 = v0[12];
              v68 = v0[11];
              v69 = v0[23];
              v70 = v0[10];
              v58 = v57;
              v59 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
              v61 = v60;

              v62 = objc_allocWithZone(SPPublishResult);
              v63 = UUID._bridgeToObjectiveC()().super.isa;
              v64 = Data._bridgeToObjectiveC()().super.isa;
              v32 = [v62 initWithRequestUUID:v63 aaaPubKeyHash:v64];
              sub_100006654(v49, v51);

              sub_100016590(v59, v61);

              sub_100016590(v69, v71);
              (*(v68 + 8))(v65, v70);
              (*(v72 + 8))(v74, v73);
              goto LABEL_17;
            }

            (*(v0[11] + 8))(v0[12], v0[10]);
          }

          else
          {
            (*(v0[11] + 8))(v0[12], v0[10]);
          }

          sub_100006654(v49, v51);
        }
      }

      else
      {
        v53 = v0[11];
        v52 = v0[12];
        v54 = v0[10];

        (*(v53 + 8))(v52, v54);
      }
    }
  }

  else
  {
  }

  if (qword_101694A60 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v3, qword_10177B5F0);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();
  v22 = os_log_type_enabled(v20, v21);
  v23 = v0[24];
  v24 = v0[25];
  v26 = v0[22];
  v25 = v0[23];
  v27 = v0[16];
  v29 = v0[13];
  v28 = v0[14];
  if (v22)
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "Failed to parse X-Apple-Sign1 header", v30, 2u);

    sub_100016590(v25, v23);
  }

  else
  {
    v31 = v0[22];

    sub_100016590(v25, v23);
  }

  (*(v28 + 8))(v27, v29);
  v32 = 0;
LABEL_17:
  v34 = v0[19];
  v33 = v0[20];
  v36 = v0[16];
  v35 = v0[17];
  v37 = v0[15];
  v38 = v0[12];
  v39 = v0[9];

  v40 = v0[1];

  return v40(v32);
}

uint64_t sub_1008F1CF4()
{
  v1 = v0[16];
  v2 = FMNServerInteractionController.FMNResponseFields.responseHeaders.getter();
  v3 = sub_1008F2B34(v2);

  if (v3[2] && (v4 = sub_100771D58(0xD000000000000014, 0x800000010135BB50), (v5 & 1) != 0))
  {
    v6 = v0[10];
    v7 = v0[11];
    v8 = v0[9];
    v9 = (v3[7] + 16 * v4);
    v10 = *v9;
    v11 = v9[1];

    UUID.init(uuidString:)();

    if ((*(v7 + 48))(v8, 1, v6) == 1)
    {
      sub_10000B3A8(v0[9], &qword_1016980D0, &unk_10138F3B0);
    }

    else
    {
      v35 = v0[22];
      (*(v0[11] + 32))(v0[12], v0[9], v0[10]);
      v36 = sub_1008F2B34(v35);
      if (v36[2] && (v37 = sub_100771D58(0x2D656C7070612D78, 0xED0000316E676973), (v38 & 1) != 0))
      {
        v39 = (v36[7] + 16 * v37);
        v40 = *v39;
        v41 = v39[1];

        v42 = Data.init(base64Encoded:options:)();
        v44 = v43;

        if (v44 >> 60 == 15)
        {
          (*(v0[11] + 8))(v0[12], v0[10]);
        }

        else
        {
          isa = Data._bridgeToObjectiveC()().super.isa;
          v49 = SecCertificateCreateWithData(0, isa);

          if (v49)
          {
            v50 = SecCertificateCopySubjectPublicKeyInfoSHA256Digest();
            if (v50)
            {
              v59 = v0[25];
              v60 = v0[22];
              v64 = v0[24];
              v65 = v0[14];
              v66 = v0[13];
              v67 = v0[16];
              v58 = v0[12];
              v61 = v0[11];
              v62 = v0[23];
              v63 = v0[10];
              v51 = v50;
              v52 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
              v54 = v53;

              v55 = objc_allocWithZone(SPPublishResult);
              v56 = UUID._bridgeToObjectiveC()().super.isa;
              v57 = Data._bridgeToObjectiveC()().super.isa;
              v25 = [v55 initWithRequestUUID:v56 aaaPubKeyHash:v57];
              sub_100006654(v42, v44);

              sub_100016590(v52, v54);

              sub_100016590(v62, v64);
              (*(v61 + 8))(v58, v63);
              (*(v65 + 8))(v67, v66);
              goto LABEL_12;
            }

            (*(v0[11] + 8))(v0[12], v0[10]);
          }

          else
          {
            (*(v0[11] + 8))(v0[12], v0[10]);
          }

          sub_100006654(v42, v44);
        }
      }

      else
      {
        v46 = v0[11];
        v45 = v0[12];
        v47 = v0[10];

        (*(v46 + 8))(v45, v47);
      }
    }
  }

  else
  {
  }

  if (qword_101694A60 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_1000076D4(v12, qword_10177B5F0);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();
  v15 = os_log_type_enabled(v13, v14);
  v16 = v0[24];
  v17 = v0[25];
  v19 = v0[22];
  v18 = v0[23];
  v20 = v0[16];
  v22 = v0[13];
  v21 = v0[14];
  if (v15)
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Failed to parse X-Apple-Sign1 header", v23, 2u);

    sub_100016590(v18, v16);
  }

  else
  {
    v24 = v0[22];

    sub_100016590(v18, v16);
  }

  (*(v21 + 8))(v20, v22);
  v25 = 0;
LABEL_12:
  v27 = v0[19];
  v26 = v0[20];
  v29 = v0[16];
  v28 = v0[17];
  v30 = v0[15];
  v31 = v0[12];
  v32 = v0[9];

  v33 = v0[1];

  return v33(v25);
}

uint64_t sub_1008F2214()
{
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[22];
  v4 = v0[23];

  sub_100016590(v4, v1);

  sub_100007BAC(v0 + 2);
  v5 = v0[27];
  v7 = v0[19];
  v6 = v0[20];
  v9 = v0[16];
  v8 = v0[17];
  v10 = v0[15];
  v11 = v0[12];
  v12 = v0[9];

  v13 = v0[1];

  return v13();
}

uint64_t sub_1008F22F8()
{
  v1 = v0[38];
  v2 = v0[35];

  if (qword_101694A60 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177B5F0);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to delete observations: %{public}@.", v6, 0xCu);
    sub_10000B3A8(v7, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v9 = async function pointer to daemon.getter[1];
  v10 = swift_task_alloc();
  v0[39] = v10;
  *v10 = v0;
  v10[1] = sub_1008F1254;

  return daemon.getter();
}

uint64_t sub_1008F24D8()
{
  v1 = v0[45];
  v2 = v0[42];

  if (qword_101694A60 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177B5F0);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to mark observations published: %{public}@.", v6, 0xCu);
    sub_10000B3A8(v7, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v9 = v0[16];
  v10 = FMNServerInteractionController.FMNResponseFields.responseHeaders.getter();
  v11 = sub_1008F2B34(v10);

  if (v11[2] && (v12 = sub_100771D58(0xD000000000000014, 0x800000010135BB50), (v13 & 1) != 0))
  {
    v14 = v0[10];
    v15 = v0[11];
    v16 = v0[9];
    v17 = (v11[7] + 16 * v12);
    v18 = *v17;
    v19 = v17[1];

    UUID.init(uuidString:)();

    if ((*(v15 + 48))(v16, 1, v14) == 1)
    {
      sub_10000B3A8(v0[9], &qword_1016980D0, &unk_10138F3B0);
    }

    else
    {
      v42 = v0[22];
      (*(v0[11] + 32))(v0[12], v0[9], v0[10]);
      v43 = sub_1008F2B34(v42);
      if (v43[2] && (v44 = sub_100771D58(0x2D656C7070612D78, 0xED0000316E676973), (v45 & 1) != 0))
      {
        v46 = (v43[7] + 16 * v44);
        v47 = *v46;
        v48 = v46[1];

        v49 = Data.init(base64Encoded:options:)();
        v51 = v50;

        if (v51 >> 60 == 15)
        {
          (*(v0[11] + 8))(v0[12], v0[10]);
        }

        else
        {
          isa = Data._bridgeToObjectiveC()().super.isa;
          v56 = SecCertificateCreateWithData(0, isa);

          if (v56)
          {
            v57 = SecCertificateCopySubjectPublicKeyInfoSHA256Digest();
            if (v57)
            {
              v66 = v0[25];
              v67 = v0[22];
              v71 = v0[24];
              v72 = v0[14];
              v73 = v0[13];
              v74 = v0[16];
              v65 = v0[12];
              v68 = v0[11];
              v69 = v0[23];
              v70 = v0[10];
              v58 = v57;
              v59 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
              v61 = v60;

              v62 = objc_allocWithZone(SPPublishResult);
              v63 = UUID._bridgeToObjectiveC()().super.isa;
              v64 = Data._bridgeToObjectiveC()().super.isa;
              v32 = [v62 initWithRequestUUID:v63 aaaPubKeyHash:v64];
              sub_100006654(v49, v51);

              sub_100016590(v59, v61);

              sub_100016590(v69, v71);
              (*(v68 + 8))(v65, v70);
              (*(v72 + 8))(v74, v73);
              goto LABEL_17;
            }

            (*(v0[11] + 8))(v0[12], v0[10]);
          }

          else
          {
            (*(v0[11] + 8))(v0[12], v0[10]);
          }

          sub_100006654(v49, v51);
        }
      }

      else
      {
        v53 = v0[11];
        v52 = v0[12];
        v54 = v0[10];

        (*(v53 + 8))(v52, v54);
      }
    }
  }

  else
  {
  }

  if (qword_101694A60 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v3, qword_10177B5F0);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();
  v22 = os_log_type_enabled(v20, v21);
  v23 = v0[24];
  v24 = v0[25];
  v26 = v0[22];
  v25 = v0[23];
  v27 = v0[16];
  v29 = v0[13];
  v28 = v0[14];
  if (v22)
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "Failed to parse X-Apple-Sign1 header", v30, 2u);

    sub_100016590(v25, v23);
  }

  else
  {
    v31 = v0[22];

    sub_100016590(v25, v23);
  }

  (*(v28 + 8))(v27, v29);
  v32 = 0;
LABEL_17:
  v34 = v0[19];
  v33 = v0[20];
  v36 = v0[16];
  v35 = v0[17];
  v37 = v0[15];
  v38 = v0[12];
  v39 = v0[9];

  v40 = v0[1];

  return v40(v32);
}

void *sub_1008F2B34(uint64_t a1)
{
  v1 = a1 + 64;
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;

  v6 = 0;
  v32 = v1;
  while (v4)
  {
    v10 = v6;
LABEL_11:
    v11 = (v10 << 10) | (16 * __clz(__rbit64(v4)));
    v12 = (*(a1 + 48) + v11);
    v13 = *v12;
    v14 = v12[1];
    v15 = (*(a1 + 56) + v11);
    v16 = v15[1];
    v34 = *v15;
    v17 = String.lowercased()();
    swift_bridgeObjectRetain_n();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = sub_100771D58(v17._countAndFlagsBits, v17._object);
    v21 = _swiftEmptyDictionarySingleton[2];
    v22 = (v20 & 1) == 0;
    v23 = __OFADD__(v21, v22);
    v24 = v21 + v22;
    if (v23)
    {
      goto LABEL_22;
    }

    v25 = v20;
    if (_swiftEmptyDictionarySingleton[3] >= v24)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v30 = v19;
        sub_1010056F4();
        v19 = v30;
      }
    }

    else
    {
      sub_100FE6F1C(v24, isUniquelyReferenced_nonNull_native);
      v19 = sub_100771D58(v17._countAndFlagsBits, v17._object);
      if ((v25 & 1) != (v26 & 1))
      {
        goto LABEL_24;
      }
    }

    v4 &= v4 - 1;
    if (v25)
    {
      v7 = v19;

      v8 = (_swiftEmptyDictionarySingleton[7] + 16 * v7);
      v9 = v8[1];
      *v8 = v34;
      v8[1] = v16;
    }

    else
    {
      _swiftEmptyDictionarySingleton[(v19 >> 6) + 8] |= 1 << v19;
      *(_swiftEmptyDictionarySingleton[6] + 16 * v19) = v17;
      v27 = (_swiftEmptyDictionarySingleton[7] + 16 * v19);
      *v27 = v34;
      v27[1] = v16;

      v28 = _swiftEmptyDictionarySingleton[2];
      v23 = __OFADD__(v28, 1);
      v29 = v28 + 1;
      if (v23)
      {
        goto LABEL_23;
      }

      _swiftEmptyDictionarySingleton[2] = v29;
    }

    v6 = v10;
    v1 = v32;
  }

  while (1)
  {
    v10 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v10 >= v5)
    {

      return _swiftEmptyDictionarySingleton;
    }

    v4 = *(v1 + 8 * v10);
    ++v6;
    if (v4)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1008F2DA0()
{
  v1[5] = v0;
  v2 = *(*(sub_1000BC4D4(&qword_1016AA430, &unk_101392650) - 8) + 64) + 15;
  v1[6] = swift_task_alloc();
  v3 = type metadata accessor for ObservedAdvertisement(0);
  v1[7] = v3;
  v4 = *(v3 - 8);
  v1[8] = v4;
  v5 = *(v4 + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();

  return _swift_task_switch(sub_1008F2EA4, v0, 0);
}

uint64_t sub_1008F2EA4()
{
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  *(v0 + 88) = qword_10177B348;

  return _swift_task_switch(sub_1008F2F40, 0, 0);
}

uint64_t sub_1008F2F40()
{
  v1 = *(v0 + 88);
  v2 = async function pointer to unsafeBlocking<A>(_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 96) = v3;
  *v3 = v0;
  v3[1] = sub_1008F3004;
  v4 = *(v0 + 88);

  return unsafeBlocking<A>(_:)(v0 + 32, sub_1000D2BE0, v4, &type metadata for Configuration);
}

uint64_t sub_1008F3004()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 88);
  v4 = *v0;

  return _swift_task_switch(sub_1008F311C, 0, 0);
}

uint64_t sub_1008F311C()
{
  v1 = v0[5];
  v0[13] = v0[4];
  return _swift_task_switch(sub_1008F313C, v1, 0);
}

uint64_t sub_1008F313C()
{
  v0[14] = sub_101073C2C(v0[13]);

  v1 = async function pointer to daemon.getter[1];
  v2 = swift_task_alloc();
  v0[15] = v2;
  *v2 = v0;
  v2[1] = sub_1008F31E4;

  return daemon.getter();
}

uint64_t sub_1008F31E4(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 120);
  v12 = *v1;
  v3[16] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[17] = v6;
  v7 = type metadata accessor for Daemon();
  v3[18] = v7;
  v8 = type metadata accessor for ObservationStoreService();
  v3[19] = v8;
  v9 = sub_1008F6EA8(&qword_1016AA400, 255, &type metadata accessor for Daemon);
  v3[20] = v9;
  v10 = sub_1008F6EA8(&qword_1016AA450, 255, type metadata accessor for ObservationStoreService);
  v3[21] = v10;
  *v6 = v12;
  v6[1] = sub_1008F33E0;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1008F33E0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 136);
  v6 = *v2;
  v4[22] = a1;
  v4[23] = v1;

  if (v1)
  {
    v7 = v4[5];

    return _swift_task_switch(sub_1008F3698, v7, 0);
  }

  else
  {
    v8 = v4[16];

    v9 = swift_task_alloc();
    v4[24] = v9;
    *v9 = v6;
    v9[1] = sub_1008F3570;
    v10 = v4[14];

    return sub_1010CED94(v10);
  }
}

uint64_t sub_1008F3570(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 192);
  v10 = *v2;
  v3[25] = a1;
  v3[26] = v1;

  if (v1)
  {
    v5 = v3[5];
    v6 = sub_1008F402C;
  }

  else
  {
    v7 = v3[22];
    v8 = v3[5];

    v6 = sub_1008F3720;
    v5 = v8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1008F3698()
{
  v1 = v0[16];

  v2 = v0[23];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[6];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1008F3720()
{
  v2 = *(v0 + 112);
  v3 = *(*(v0 + 200) + 16);
  v4 = __OFSUB__(v2, v3);
  v5 = v2 - v3;
  v6 = v4;
  *(v0 + 16) = v5;
  *(v0 + 24) = v6;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    v7 = async function pointer to daemon.getter[1];
    v8 = swift_task_alloc();
    *(v0 + 216) = v8;
    *v8 = v0;
    v8[1] = sub_1008F37D4;
  }

  return daemon.getter();
}

uint64_t sub_1008F37D4(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 216);
  v5 = *v1;
  v3[28] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[29] = v7;
  *v7 = v5;
  v7[1] = sub_1008F3960;
  v8 = v3[21];
  v9 = v3[20];
  v10 = v3[19];
  v11 = v3[18];

  return ActorServiceDaemon.getService<A>()(v11, v10, v9, v8);
}

uint64_t sub_1008F3960(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 232);
  v6 = *v2;
  *(*v2 + 240) = a1;

  if (v1)
  {
    v7 = v4[28];
    v8 = v4[25];

    v10 = v4[9];
    v9 = v4[10];
    v11 = v4[6];

    v12 = *(v6 + 8);

    return v12();
  }

  else
  {
    v14 = v4[28];
    v15 = v4[2];

    v16 = swift_task_alloc();
    v4[31] = v16;
    *v16 = v6;
    v16[1] = sub_1008F3B20;

    return sub_1010CF0A8(v15 & ~(v15 >> 63), 0);
  }
}

uint64_t sub_1008F3B20(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 248);
  v10 = *v2;
  v3[32] = a1;
  v3[33] = v1;

  if (v1)
  {
    v5 = v3[5];
    v6 = sub_1008F40B4;
  }

  else
  {
    v7 = v3[30];
    v8 = v3[5];

    v6 = sub_1008F3C48;
    v5 = v8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1008F3C48()
{
  v1 = v0[32];
  v36 = v0[25];

  sub_100398430(v2);
  v3 = v36;
  v4 = *(v36 + 16);
  v35 = v0;
  if (v4)
  {
    v5 = 0;
    v33 = v0[8];
    v34 = v0[7];
    v32 = *(v36 + 16);
    while (v5 < *(v3 + 16))
    {
      v6 = v0[10];
      v7 = v0[6];
      v8 = (*(v33 + 80) + 32) & ~*(v33 + 80);
      v9 = *(v33 + 72);
      sub_10001BB38(v3 + v8 + v9 * v5, v6, type metadata accessor for ObservedAdvertisement);
      sub_1000D2A70(v6 + *(v34 + 48), v7, &qword_1016AA430, &unk_101392650);
      v10 = type metadata accessor for ObservedAdvertisement.Location(0);
      LODWORD(v6) = (*(*(v10 - 8) + 48))(v7, 1, v10);
      v0 = v35;
      sub_10000B3A8(v7, &qword_1016AA430, &unk_101392650);
      v11 = v35[10];
      if (v6 == 1)
      {
        sub_1000344F4(v11, type metadata accessor for ObservedAdvertisement);
      }

      else
      {
        sub_1008F6B2C(v11, v35[9]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1011245F0(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v13 = _swiftEmptyArrayStorage[2];
        v12 = _swiftEmptyArrayStorage[3];
        if (v13 >= v12 >> 1)
        {
          sub_1011245F0(v12 > 1, v13 + 1, 1);
        }

        v14 = v35[9];
        _swiftEmptyArrayStorage[2] = v13 + 1;
        sub_1008F6B2C(v14, _swiftEmptyArrayStorage + v8 + v13 * v9);
        v4 = v32;
      }

      ++v5;
      v3 = v36;
      if (v4 == v5)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:

    if (qword_101694A60 == -1)
    {
      goto LABEL_13;
    }
  }

  swift_once();
LABEL_13:
  v15 = v0[32];
  v16 = v0[25];
  v17 = type metadata accessor for Logger();
  sub_1000076D4(v17, qword_10177B5F0);
  swift_retain_n();

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  v20 = os_log_type_enabled(v18, v19);
  v21 = v0[32];
  v22 = v0[25];
  if (v20)
  {
    v23 = swift_slowAlloc();
    *v23 = 134218496;
    v24 = *(v21 + 16);

    *(v23 + 4) = v24;

    *(v23 + 12) = 2048;
    v25 = *(v22 + 16);

    *(v23 + 14) = v25;

    *(v23 + 22) = 2048;
    v26 = _swiftEmptyArrayStorage[2];

    *(v23 + 24) = v26;

    _os_log_impl(&_mh_execute_header, v18, v19, "Reconciled = %ld, Anonymous = %ld, with location: %ld.", v23, 0x20u);
  }

  else
  {

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
  }

  v28 = v35[9];
  v27 = v35[10];
  v29 = v35[6];

  v30 = v35[1];

  return v30(_swiftEmptyArrayStorage);
}

uint64_t sub_1008F402C()
{
  v1 = v0[22];

  v2 = v0[26];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[6];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1008F40B4()
{
  v1 = v0[30];
  v2 = v0[25];

  v3 = v0[33];
  v5 = v0[9];
  v4 = v0[10];
  v6 = v0[6];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1008F4168()
{
  if (qword_101694A60 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 32) = sub_1000076D4(v1, qword_10177B5F0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Purge observations start.", v4, 2u);
  }

  v5 = async function pointer to daemon.getter[1];
  v6 = swift_task_alloc();
  *(v0 + 40) = v6;
  *v6 = v0;
  v6[1] = sub_1008F42B8;

  return daemon.getter();
}

uint64_t sub_1008F42B8(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 40);
  v12 = *v1;
  *(v3 + 48) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 56) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for ObservationStoreService();
  v9 = sub_1008F6EA8(&qword_1016AA400, 255, &type metadata accessor for Daemon);
  v10 = sub_1008F6EA8(&qword_1016AA450, 255, type metadata accessor for ObservationStoreService);
  *v6 = v12;
  v6[1] = sub_1008F449C;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1008F449C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 56);
  v10 = *v2;
  v3[8] = a1;
  v3[9] = v1;

  if (v1)
  {
    v5 = v3[3];
    v6 = sub_1008F4BFC;
  }

  else
  {
    v7 = v3[6];
    v8 = v3[3];

    v6 = sub_1008F45C4;
    v5 = v8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1008F45C4()
{
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = v0[9];
  v3 = *(qword_10177B348 + 40);
  OS_dispatch_queue.sync<A>(execute:)();
  v0[10] = v2;
  v0[11] = sub_1010749D4(v0[2]);

  return _swift_task_switch(sub_1008F46AC, v1, 0);
}

uint64_t sub_1008F46AC()
{
  v1 = v0[10];
  v2 = v0[8];
  sub_1010D1AD8(v0[11]);
  v0[12] = v1;
  v3 = v0[11];
  if (v1)
  {
    v4 = v0[3];

    return _swift_task_switch(sub_1008F4C60, v4, 0);
  }

  else
  {

    v5 = swift_task_alloc();
    v0[13] = v5;
    *v5 = v0;
    v5[1] = sub_1008F47A4;
    v6 = v0[8];

    return sub_1010CE4F4();
  }
}

uint64_t sub_1008F47A4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 104);
  v6 = *v2;
  *(v4 + 112) = a1;
  *(v4 + 120) = v1;

  v7 = *(v3 + 24);
  if (v1)
  {
    v8 = sub_1008F4CC4;
  }

  else
  {
    v8 = sub_1008F48D8;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_1008F48D8()
{
  v1 = v0[4];
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[14];
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "Deleted %lld redundant reconciled observations.", v5, 0xCu);
  }

  v6 = swift_task_alloc();
  v0[16] = v6;
  *v6 = v0;
  v6[1] = sub_1008F49F0;
  v7 = v0[8];

  return sub_1010CCED0();
}

uint64_t sub_1008F49F0()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *v1;
  *(*v1 + 136) = v0;

  v5 = *(v2 + 24);
  if (v0)
  {
    v6 = sub_1008F4D28;
  }

  else
  {
    v6 = sub_1008F4B1C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1008F4B1C()
{
  v1 = v0[4];
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Purge observations finished.", v4, 2u);
  }

  v5 = v0[8];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1008F4BFC()
{
  v1 = v0[6];

  v2 = v0[9];
  v3 = v0[1];

  return v3();
}

uint64_t sub_1008F4C60()
{
  v1 = v0[8];

  v2 = v0[12];
  v3 = v0[1];

  return v3();
}

uint64_t sub_1008F4CC4()
{
  v1 = v0[8];

  v2 = v0[15];
  v3 = v0[1];

  return v3();
}

uint64_t sub_1008F4D28()
{
  v1 = v0[8];

  v2 = v0[17];
  v3 = v0[1];

  return v3();
}

uint64_t sub_1008F4D8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for UUID();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = *(type metadata accessor for ObservedAdvertisement(0) - 8);
  v4[9] = v8;
  v9 = *(v8 + 64) + 15;
  v4[10] = swift_task_alloc();

  return _swift_task_switch(sub_1008F4EA8, v3, 0);
}

uint64_t sub_1008F4EA8()
{
  v1 = v0[3];

  v2 = swift_task_alloc();
  v0[11] = v2;
  *v2 = v0;
  v2[1] = sub_1008F4F5C;
  v4 = v0[2];
  v3 = v0[3];

  return sub_10117B344(v4, v3);
}

uint64_t sub_1008F4F5C()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 24);
  v5 = *v1;

  if (v0)
  {
  }

  v2[12] = type metadata accessor for AnalyticsPublisher();
  v2[13] = swift_allocObject();
  swift_defaultActor_initialize();
  v6 = swift_task_alloc();
  v2[14] = v6;
  *v6 = v5;
  v6[1] = sub_1008F50E0;
  v7 = v2[2];

  return sub_101163F78(v7);
}

uint64_t sub_1008F50E0()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 104);
  v3 = *(*v0 + 40);
  v5 = *v0;

  return _swift_task_switch(sub_1008F520C, v3, 0);
}

uint64_t sub_1008F520C()
{
  v1 = *(v0 + 24);
  v2 = *(v1 + 16);
  *(v0 + 120) = v2;
  if (v2)
  {
    v3 = *(v0 + 32);
    v4 = *(v0 + 16);
    v5 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_identifier;
    *(v0 + 128) = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_identifier;
    v7 = *(v0 + 64);
    v6 = *(v0 + 72);
    v8 = *(v6 + 80);
    *(v0 + 192) = v8;
    *(v0 + 136) = *(v6 + 72);
    *(v0 + 144) = 0;
    v9 = *(v0 + 80);
    v10 = *(v0 + 48);
    v11 = *(v0 + 56);
    sub_10001BB38(v1 + ((v8 + 32) & ~v8), v9, type metadata accessor for ObservedAdvertisement);
    (*(v11 + 16))(v7, v4 + v5, v10);
    v12 = type metadata accessor for AnalyticsEvent(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    *(v0 + 152) = v15;
    swift_defaultActor_initialize();
    *(v15 + 14) = sub_100907BEC(_swiftEmptyArrayStorage);
    UUID.init()();
    v16 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_startTime;
    v17 = type metadata accessor for DispatchTime();
    v18 = *(*(v17 - 8) + 56);
    v18(&v15[v16], 1, 1, v17);
    v18(&v15[OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_endTime], 1, 1, v17);
    *(v15 + 15) = 0xD000000000000038;
    *(v15 + 16) = 0x8000000101364550;
    v19 = swift_task_alloc();
    *(v0 + 160) = v19;
    *(v19 + 16) = v9;
    *(v19 + 24) = v7;
    *(v19 + 32) = v3 == 0;
    *(v19 + 40) = v3;
    v20 = swift_task_alloc();
    *(v0 + 168) = v20;
    *v20 = v0;
    v20[1] = sub_1008F54B0;

    return sub_101162604(&unk_1013C4E88, v19);
  }

  else
  {
    v22 = *(v0 + 80);
    v23 = *(v0 + 64);

    v24 = *(v0 + 8);

    return v24();
  }
}

uint64_t sub_1008F54B0()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v4 = *v1;

  if (v0)
  {
  }

  v5 = v2[20];
  v6 = v2[12];

  v2[22] = swift_allocObject();
  swift_defaultActor_initialize();
  v7 = swift_task_alloc();
  v2[23] = v7;
  *v7 = v4;
  v7[1] = sub_1008F5614;
  v8 = v2[19];

  return sub_101163F78(v8);
}

uint64_t sub_1008F5614()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 176);
  v3 = *(*v0 + 40);
  v5 = *v0;

  return _swift_task_switch(sub_1008F5740, v3, 0);
}

uint64_t sub_1008F5740()
{
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v3 = *(v0 + 120);
  v4 = *(v0 + 80);
  v6 = *(v0 + 56);
  v5 = *(v0 + 64);
  v7 = *(v0 + 48);

  (*(v6 + 8))(v5, v7);
  sub_1000344F4(v4, type metadata accessor for ObservedAdvertisement);
  if (v2 + 1 == v3)
  {
    v8 = *(v0 + 80);
    v9 = *(v0 + 64);

    v10 = *(v0 + 8);

    return v10();
  }

  else
  {
    v12 = *(v0 + 136);
    v13 = *(v0 + 144) + 1;
    *(v0 + 144) = v13;
    v14 = *(v0 + 128);
    v15 = *(v0 + 80);
    v17 = *(v0 + 56);
    v16 = *(v0 + 64);
    v18 = *(v0 + 48);
    v19 = *(v0 + 32);
    v20 = *(v0 + 16);
    sub_10001BB38(*(v0 + 24) + ((*(v0 + 192) + 32) & ~*(v0 + 192)) + v12 * v13, v15, type metadata accessor for ObservedAdvertisement);
    (*(v17 + 16))(v16, v20 + v14, v18);
    v21 = type metadata accessor for AnalyticsEvent(0);
    v22 = *(v21 + 48);
    v23 = *(v21 + 52);
    v24 = swift_allocObject();
    *(v0 + 152) = v24;
    swift_defaultActor_initialize();
    *(v24 + 14) = sub_100907BEC(_swiftEmptyArrayStorage);
    UUID.init()();
    v25 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_startTime;
    v26 = type metadata accessor for DispatchTime();
    v27 = *(*(v26 - 8) + 56);
    v27(&v24[v25], 1, 1, v26);
    v27(&v24[OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_endTime], 1, 1, v26);
    *(v24 + 15) = 0xD000000000000038;
    *(v24 + 16) = 0x8000000101364550;
    v28 = swift_task_alloc();
    *(v0 + 160) = v28;
    *(v28 + 16) = v15;
    *(v28 + 24) = v16;
    *(v28 + 32) = v19 == 0;
    *(v28 + 40) = v19;
    v29 = swift_task_alloc();
    *(v0 + 168) = v29;
    *v29 = v0;
    v29[1] = sub_1008F54B0;

    return sub_101162604(&unk_1013C4E88, v28);
  }
}

uint64_t sub_1008F5A48()
{
  v1 = *(*(v0 + 176) + 16);
  v2 = sub_10117B278(v1);
  sub_1000BC4D4(&qword_101696C90, &qword_10138B5D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10138BBE0;
  *(inited + 32) = 0xD000000000000010;
  *(inited + 40) = 0x800000010134AD70;
  *(inited + 72) = &type metadata for Int;
  v4 = sub_1000DFAD8();
  *(inited + 80) = v4;
  *(inited + 48) = v1;
  *(inited + 88) = 2;
  *(inited + 96) = 0xD000000000000015;
  *(inited + 104) = 0x80000001013648A0;
  *(inited + 136) = &type metadata for Int;
  *(inited + 144) = v4;
  *(inited + 112) = v2;
  *(inited + 152) = 2;
  v5 = sub_100907D24(inited);
  swift_setDeallocating();
  sub_1000BC4D4(&qword_101696CA0, &qword_10138B5D8);
  swift_arrayDestroy();
  v6 = *(v0 + 8);

  return v6(v5);
}

uint64_t sub_1008F5B98(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 640) = a4;
  *(v4 + 696) = a3;
  *(v4 + 632) = a2;
  *(v4 + 624) = a1;
  v5 = *(*(sub_1000BC4D4(&qword_1016AA430, &unk_101392650) - 8) + 64) + 15;
  *(v4 + 648) = swift_task_alloc();
  v6 = *(*(sub_1000BC4D4(&unk_101696900, &unk_10138B1E0) - 8) + 64) + 15;
  *(v4 + 656) = swift_task_alloc();
  v7 = type metadata accessor for Date();
  *(v4 + 664) = v7;
  v8 = *(v7 - 8);
  *(v4 + 672) = v8;
  v9 = *(v8 + 64) + 15;
  *(v4 + 680) = swift_task_alloc();
  *(v4 + 688) = swift_task_alloc();

  return _swift_task_switch(sub_1008F5CE0, 0, 0);
}

uint64_t sub_1008F5CE0()
{
  v62 = v0;
  v1 = *(v0 + 648);
  v2 = *(v0 + 624);
  v3 = type metadata accessor for ObservedAdvertisement(0);
  sub_1000D2A70(v2 + *(v3 + 48), v1, &qword_1016AA430, &unk_101392650);
  v4 = type metadata accessor for ObservedAdvertisement.Location(0);
  v5 = (*(*(v4 - 8) + 48))(v1, 1, v4);
  v6 = *(v0 + 688);
  v7 = *(v0 + 672);
  v8 = *(v0 + 664);
  v9 = *(v0 + 656);
  v10 = *(v0 + 648);
  if (v5 == 1)
  {
    sub_10000B3A8(v10, &qword_1016AA430, &unk_101392650);
    (*(v7 + 56))(v9, 1, 1, v8);
    static Date.distantPast.getter();
    if ((*(v7 + 48))(v9, 1, v8) != 1)
    {
      sub_10000B3A8(*(v0 + 656), &unk_101696900, &unk_10138B1E0);
    }
  }

  else
  {
    v11 = v10 + *(v4 + 28);
    v12 = *(v0 + 648);
    (*(v7 + 16))(*(v0 + 656), v11, *(v0 + 664));
    sub_1000344F4(v12, type metadata accessor for ObservedAdvertisement.Location);
    (*(v7 + 56))(v9, 0, 1, v8);
    (*(v7 + 32))(v6, v9, v8);
  }

  v13 = *(v0 + 688);
  v14 = *(v0 + 680);
  v15 = *(v0 + 672);
  v16 = *(v0 + 664);
  v55 = *(v0 + 640);
  v54 = *(v0 + 696);
  v17 = *(v0 + 632);
  v18 = *(v0 + 624);
  v19 = *(v3 + 44);
  Date.timeIntervalSince(_:)();
  v21 = v20;
  static Date.trustedNow.getter(v14);
  Date.timeIntervalSince(_:)();
  v23 = v22;
  v56 = *(v15 + 8);
  v56(v14, v16);
  sub_1000BC4D4(&qword_101696C90, &qword_10138B5D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1013B62D0;
  *(inited + 32) = 0x496E6F6973736573;
  *(inited + 40) = 0xE900000000000044;
  v25 = UUID.uuidString.getter();
  v27 = v26;
  *(inited + 72) = &type metadata for String;
  v28 = sub_1000DF96C();
  *(inited + 80) = v28;
  *(inited + 48) = v25;
  *(inited + 56) = v27;
  *(inited + 88) = 1;
  *(inited + 96) = 0xD000000000000016;
  *(inited + 104) = 0x8000000101364590;
  *(inited + 136) = &type metadata for Double;
  v29 = sub_1000DFA84();
  *(inited + 144) = v29;
  *(inited + 112) = v21;
  *(inited + 152) = 3;
  *(inited + 160) = 0xD000000000000015;
  *(inited + 168) = 0x80000001013645B0;
  *(inited + 200) = &type metadata for Double;
  *(inited + 208) = v29;
  *(inited + 176) = v23;
  *(inited + 216) = 3;
  *(inited + 224) = 0x7942737574617473;
  *(inited + 232) = 0xEA00000000006574;
  LOBYTE(v27) = *(v18 + 32);
  *(inited + 264) = &type metadata for UInt8;
  *(inited + 272) = sub_1002E2724();
  *(inited + 240) = v27;
  *(inited + 280) = 2;
  *(inited + 288) = 0xD000000000000015;
  *(inited + 296) = 0x80000001013559E0;
  *(inited + 328) = &type metadata for Int;
  v30 = sub_1000DFAD8();
  *(inited + 336) = v30;
  *(inited + 304) = 0;
  *(inited + 344) = 2;
  *(inited + 352) = 0x7265747461426E6FLL;
  *(inited + 360) = 0xE900000000000079;
  v31 = sub_1011298C8(&off_10160CE28);
  v32 = sub_1008ECAD0();
  v33 = sub_10112C0E0(v32, v31);

  *(inited + 368) = v33 & 1;
  *(inited + 408) = 0;
  *(inited + 416) = 0x696669576E6FLL;
  *(inited + 424) = 0xE600000000000000;
  *(inited + 432) = sub_1000DD810() & 1;
  *(inited + 472) = 0;
  *(inited + 480) = 0x6563637553646964;
  *(inited + 488) = 0xEA00000000006465;
  *(inited + 496) = v54;
  *(inited + 536) = 0;
  v34 = sub_100907D24(inited);
  swift_setDeallocating();
  sub_1000BC4D4(&qword_101696CA0, &qword_10138B5D8);
  swift_arrayDestroy();
  v35 = *(v0 + 688);
  v36 = *(v0 + 664);
  if (v55)
  {
    v37 = *(v0 + 640);
    swift_getErrorValue();
    v38 = *(v0 + 560);
    v39 = *(v0 + 568);
    v40 = *(v0 + 576);
    swift_errorRetain();
    *&v57 = Error.domain.getter();
    *(&v57 + 1) = v41;
    v58 = &type metadata for String;
    v59 = v28;
    v60 = 1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v61 = v34;
    sub_100FFC070(&v57, 0x6D6F44726F727265, 0xEB000000006E6961, isUniquelyReferenced_nonNull_native);
    v43 = v61;
    swift_getErrorValue();
    v44 = *(v0 + 584);
    v45 = *(v0 + 592);
    v46 = *(v0 + 600);
    *&v57 = Error.code.getter();
    v58 = &type metadata for Int;
    v59 = v30;
    v60 = 2;
    v47 = swift_isUniquelyReferenced_nonNull_native();
    v61 = v43;
    sub_100FFC070(&v57, 0x646F43726F727265, 0xE900000000000065, v47);

    v56(v35, v36);
    v34 = v61;
  }

  else
  {
    v56(v35, v36);
  }

  v48 = *(v0 + 688);
  v49 = *(v0 + 680);
  v50 = *(v0 + 656);
  v51 = *(v0 + 648);

  v52 = *(v0 + 8);

  return v52(v34);
}

uint64_t sub_1008F6300()
{
  v1 = v0[15];

  v2 = v0[16];

  v3 = v0[17];

  sub_100007BAC(v0 + 18);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1008F6374(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.initialLaunchProcessing()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  MyNetworkPublisherService = type metadata accessor for FindMyNetworkPublisherService();
  *v5 = v2;
  v5[1] = sub_100014744;

  return ActorServiceProtocol.initialLaunchProcessing()(MyNetworkPublisherService, a2);
}

uint64_t sub_1008F641C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to ActorServiceProtocol.migrate(from:to:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  MyNetworkPublisherService = type metadata accessor for FindMyNetworkPublisherService();
  *v9 = v4;
  v9[1] = sub_100014744;

  return ActorServiceProtocol.migrate(from:to:)(a1, a2, MyNetworkPublisherService, a4);
}

uint64_t sub_1008F64E0(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.firstLaunchSinceReboot()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  MyNetworkPublisherService = type metadata accessor for FindMyNetworkPublisherService();
  *v5 = v2;
  v5[1] = sub_100014650;

  return ActorServiceProtocol.firstLaunchSinceReboot()(MyNetworkPublisherService, a2);
}

uint64_t sub_1008F6588(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.startup()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  MyNetworkPublisherService = type metadata accessor for FindMyNetworkPublisherService();
  *v5 = v2;
  v5[1] = sub_100014744;

  return ActorServiceProtocol.startup()(MyNetworkPublisherService, a2);
}

uint64_t sub_1008F6630(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.run()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  MyNetworkPublisherService = type metadata accessor for FindMyNetworkPublisherService();
  *v5 = v2;
  v5[1] = sub_100014650;

  return ActorServiceProtocol.run()(MyNetworkPublisherService, a2);
}

uint64_t sub_1008F66D8()
{
  v1 = *v0;
  type metadata accessor for FindMyNetworkPublisherService();
  sub_1008F6EA8(&unk_10169BA60, v2, type metadata accessor for FindMyNetworkPublisherService);
  return ActorServiceProtocol.description.getter();
}

uint64_t sub_1008F67D0()
{
  if (qword_101694A60 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000076D4(v0, qword_10177B5F0);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Publish in progress, throttled for delay.", v3, 2u);
  }

  sub_1008F6BE4();
  swift_allocError();
  *v4 = 1;
  return swift_willThrow();
}

uint64_t sub_1008F68DC(uint64_t a1)
{
  v2 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v12 - v4;
  v6 = [objc_opt_self() standardUserDefaults];
  sub_1000D2A70(a1, v5, &unk_101696900, &unk_10138B1E0);
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  isa = 0;
  if ((*(v8 + 48))(v5, 1, v7) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v8 + 8))(v5, v7);
  }

  v10 = String._bridgeToObjectiveC()();
  [v6 setObject:isa forKey:v10];

  swift_unknownObjectRelease();
  return sub_10000B3A8(a1, &unk_101696900, &unk_10138B1E0);
}

uint64_t sub_1008F6A7C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1001BBA4C;

  return sub_1008F5B98(v2, v3, v4, v5);
}

uint64_t sub_1008F6B2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ObservedAdvertisement(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1008F6B90()
{
  result = qword_1016ADB20;
  if (!qword_1016ADB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016ADB20);
  }

  return result;
}

unint64_t sub_1008F6BE4()
{
  result = qword_1016ADB28;
  if (!qword_1016ADB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016ADB28);
  }

  return result;
}

uint64_t sub_1008F6C44(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1000BC4D4(&qword_1016ADB38, &unk_1013C4EA8) - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_100014744;

  return sub_1008EE580(a1, v7, v8, v9, v10, v1 + v6, v11);
}

uint64_t sub_1008F6D88()
{
  v2 = *(sub_1000BC4D4(&qword_1016ADB38, &unk_1013C4EA8) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1001BA6C8;

  return sub_1008EEB28(v4, v5, v0 + v3);
}

uint64_t sub_1008F6EA8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1008F6EF0()
{
  v2 = *(type metadata accessor for Date() - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 25) & ~v3;
  v5 = (*(v2 + 64) + v3 + v4) & ~v3;
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_100014650;

  return sub_1008ED7E8(v6, v7, v0 + v4, v0 + v5);
}

unint64_t sub_1008F7018()
{
  result = qword_1016ADB48;
  if (!qword_1016ADB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016ADB48);
  }

  return result;
}

uint64_t sub_1008F706C()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100044B3C(v3, qword_10177B608);
  sub_1000076D4(v0, qword_10177B608);
  if (qword_101694C10 != -1)
  {
    swift_once();
  }

  v6 = sub_1000076D4(v0, qword_10177BA58);
  (*(v1 + 16))(v5, v6, v0);
  URL.appendingPathComponent(_:isDirectory:)();
  return (*(v1 + 8))(v5, v0);
}

uint64_t sub_1008F71C8()
{
  v0 = type metadata accessor for UUID();
  sub_100044B3C(v0, qword_10177B620);
  sub_1000076D4(v0, qword_10177B620);
  return UUID.init(uuid:)();
}

uint64_t sub_1008F7250(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x546E6F6973736573;
  v4 = 0xEC0000006E656B6FLL;
  if (v2 != 1)
  {
    v3 = 0x6E6F697461657263;
    v4 = 0xEC00000065746144;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x696669746E656469;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEA00000000007265;
  }

  v7 = 0x546E6F6973736573;
  v8 = 0xEC0000006E656B6FLL;
  if (*a2 != 1)
  {
    v7 = 0x6E6F697461657263;
    v8 = 0xEC00000065746144;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x696669746E656469;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEA00000000007265;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_1008F7374()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1008F742C()
{
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_1008F74D0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1008F7584@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1008F8220(*a1);
  *a2 = result;
  return result;
}

void sub_1008F75B4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000007265;
  v4 = 0xEC0000006E656B6FLL;
  v5 = 0x546E6F6973736573;
  if (v2 != 1)
  {
    v5 = 0x6E6F697461657263;
    v4 = 0xEC00000065746144;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x696669746E656469;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1008F7628()
{
  v1 = 0x546E6F6973736573;
  if (*v0 != 1)
  {
    v1 = 0x6E6F697461657263;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x696669746E656469;
  }
}

unint64_t sub_1008F7698@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1008F8220(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1008F76C0(uint64_t a1)
{
  v2 = sub_1008F7FAC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1008F76FC(uint64_t a1)
{
  v2 = sub_1008F7FAC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1008F7738(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016ADBF8, &qword_1013C5040);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17[-v8];
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_1008F7FAC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17[15] = 0;
  type metadata accessor for UUID();
  sub_1008F8000(&qword_101698330, &type metadata accessor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = type metadata accessor for SessionTokenRecord();
    v12 = (v3 + *(v11 + 20));
    v13 = *v12;
    v14 = v12[1];
    v17[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = *(v11 + 24);
    v17[13] = 2;
    type metadata accessor for Date();
    sub_1008F8000(&unk_101697F60, &type metadata accessor for Date);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1008F796C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v30 = type metadata accessor for Date();
  v28 = *(v30 - 8);
  v4 = *(v28 + 64);
  __chkstk_darwin(v30);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for UUID();
  v32 = *(v35 - 8);
  v7 = *(v32 + 64);
  __chkstk_darwin(v35);
  v33 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1000BC4D4(&qword_1016ADC08, &qword_1013C5048);
  v31 = *(v34 - 8);
  v9 = *(v31 + 64);
  __chkstk_darwin(v34);
  v11 = &v26 - v10;
  v12 = type metadata accessor for SessionTokenRecord();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_1008F7FAC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v27 = v15;
  v18 = v31;
  v17 = v32;
  v38 = 0;
  sub_1008F8000(&qword_101698300, &type metadata accessor for UUID);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v17 + 32))(v27, v33, v35);
  v37 = 1;
  v19 = KeyedDecodingContainer.decode(_:forKey:)();
  v33 = v12;
  v20 = &v27[*(v12 + 20)];
  *v20 = v19;
  v20[1] = v21;
  v36 = 2;
  sub_1008F8000(&qword_101697F40, &type metadata accessor for Date);
  v22 = v6;
  v23 = v30;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v18 + 8))(v11, v34);
  v24 = v27;
  (*(v28 + 32))(&v27[*(v33 + 6)], v22, v23);
  sub_1008F8048(v24, v29);
  sub_100007BAC(a1);
  return sub_1008F80AC(v24);
}

uint64_t type metadata accessor for SessionTokenRecord()
{
  result = qword_1016ADBA8;
  if (!qword_1016ADBA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1008F7E9C()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Date();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1008F7F28(uint64_t a1)
{
  *(a1 + 8) = sub_1008F8000(&qword_1016ADBE8, type metadata accessor for SessionTokenRecord);
  result = sub_1008F8000(&qword_1016ADBF0, type metadata accessor for SessionTokenRecord);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1008F7FAC()
{
  result = qword_1016ADC00;
  if (!qword_1016ADC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016ADC00);
  }

  return result;
}

uint64_t sub_1008F8000(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1008F8048(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionTokenRecord();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1008F80AC(uint64_t a1)
{
  v2 = type metadata accessor for SessionTokenRecord();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1008F811C()
{
  result = qword_1016ADC10;
  if (!qword_1016ADC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016ADC10);
  }

  return result;
}

unint64_t sub_1008F8174()
{
  result = qword_1016ADC18;
  if (!qword_1016ADC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016ADC18);
  }

  return result;
}

unint64_t sub_1008F81CC()
{
  result = qword_1016ADC20;
  if (!qword_1016ADC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016ADC20);
  }

  return result;
}

unint64_t sub_1008F8220(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10160AEF0, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1008F826C@<X0>(uint64_t a1@<X8>)
{
  if (qword_101694A78 != -1)
  {
    swift_once();
  }

  v2 = qword_10177B640;
  v3 = *algn_10177B648;
  *a1 = qword_10177B640;
  *(a1 + 8) = v3;
  *(a1 + 16) = 3;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0x408C200000000000;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0x406E000000000000;
  *(a1 + 56) = 0;
  *(a1 + 64) = &off_1016072E0;
  *(a1 + 72) = 1;
  *(a1 + 80) = 0xD000000000000012;
  *(a1 + 88) = 0x8000000101351C20;
  *(a1 + 96) = 1;
  *(a1 + 104) = 0;
  *(a1 + 105) = 256;
  *(a1 + 112) = 60;
  *(a1 + 120) = 0;
  *(a1 + 128) = 15;
  *(a1 + 136) = 0;
  *(a1 + 144) = 1440;
  *(a1 + 152) = 0;
  *(a1 + 160) = 200;
  *(a1 + 168) = 0;
  *(a1 + 176) = 3;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0x4000000000000000;
  *(a1 + 200) = 0;
  *(a1 + 208) = 60;
  *(a1 + 216) = 0;
  *(a1 + 224) = 60;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0x40F5180000000000;
  *(a1 + 248) = 0;
  *(a1 + 256) = 5;
  *(a1 + 264) = 0;
  *(a1 + 272) = 604800;
  *(a1 + 280) = 0;
  *(a1 + 288) = 43200;
  *(a1 + 296) = 0;
  *(a1 + 304) = 24;
  *(a1 + 312) = 0;
  *(a1 + 313) = 1;
  sub_100017D5C(v2, v3);
  if (qword_101694A80 != -1)
  {
    swift_once();
  }

  *(a1 + 320) = qword_10177B650;
  *(a1 + 328) = 4;
  *(a1 + 336) = 0;
  *(a1 + 344) = 24;
  *(a1 + 352) = 0;
  *(a1 + 360) = 1440;
  *(a1 + 368) = 0;
  *(a1 + 376) = 1200;
  *(a1 + 384) = 0;
  *(a1 + 392) = 600;
  *(a1 + 400) = 0;
  *(a1 + 408) = 8640;
  *(a1 + 416) = 0;
  *(a1 + 424) = 8640;
  *(a1 + 432) = 0;
  *(a1 + 440) = 2880;
  *(a1 + 448) = 0;
  *(a1 + 456) = 10080;
  *(a1 + 464) = 0;
  *(a1 + 472) = 2880;
  *(a1 + 480) = 0;
  *(a1 + 481) = 1;
  *(a1 + 488) = 5;
  *(a1 + 496) = 0;
  *(a1 + 504) = 3;
  *(a1 + 512) = 0;
  *(a1 + 520) = 10;
  *(a1 + 528) = 0;
  *(a1 + 536) = 1200;
  *(a1 + 544) = 0;
  *(a1 + 552) = 10080;
  *(a1 + 560) = 0;
  *(a1 + 568) = 600;
  *(a1 + 576) = 0;
  *(a1 + 584) = 1440;
  *(a1 + 592) = 0;

  *(a1 + 600) = sub_10090C0AC();
  *(a1 + 608) = 0x403E000000000000;
  *(a1 + 616) = 0;
  *(a1 + 624) = 0x408C200000000000;
  *(a1 + 632) = 0;
  if (qword_101694A88 != -1)
  {
    swift_once();
  }

  v4 = qword_10177B658;
  *(a1 + 640) = qword_10177B658;
  v5 = qword_101694A90;
  v6 = v4;
  if (v5 != -1)
  {
    swift_once();
  }

  *(a1 + 648) = qword_10177B660;
  *(a1 + 672) = 7;
  *(a1 + 680) = 0;
  *(a1 + 656) = 20;
  *(a1 + 664) = 0;
  *(a1 + 688) = 300;
  *(a1 + 696) = 0;
  *(a1 + 704) = 60;
  *(a1 + 712) = 0;
  *(a1 + 720) = 1440;
  *(a1 + 728) = 0;
  *(a1 + 729) = 1;
  v7 = qword_101694A98;

  if (v7 != -1)
  {
    swift_once();
  }

  v116[4] = xmmword_10177B6B0;
  v116[5] = unk_10177B6C0;
  v116[6] = xmmword_10177B6D0;
  v116[0] = xmmword_10177B670;
  v116[1] = unk_10177B680;
  v116[2] = xmmword_10177B690;
  v116[3] = *&qword_10177B6A0;
  v8 = type metadata accessor for DefaultConfigurationLayer();
  v9 = (a1 + v8[70]);
  v10 = unk_10177B6C0;
  v9[4] = xmmword_10177B6B0;
  v9[5] = v10;
  v9[6] = xmmword_10177B6D0;
  v11 = unk_10177B680;
  *v9 = xmmword_10177B670;
  v9[1] = v11;
  v12 = *&qword_10177B6A0;
  v9[2] = xmmword_10177B690;
  v9[3] = v12;
  v13 = v8[60];
  v14 = type metadata accessor for UUID();
  (*(*(v14 - 8) + 56))(a1 + v13, 1, 1, v14);
  v15 = v8[61];
  v16 = type metadata accessor for Date();
  v17 = *(*(v16 - 8) + 56);
  v17(a1 + v15, 1, 1, v16);
  v18 = a1 + v8[62];
  *v18 = 0;
  *(v18 + 8) = 1;
  v17(a1 + v8[63], 1, 1, v16);
  v19 = a1 + v8[64];
  *v19 = 48;
  *(v19 + 8) = 0;
  v20 = a1 + v8[65];
  *v20 = 48;
  *(v20 + 8) = 0;
  v21 = a1 + v8[66];
  *v21 = 0x4010000000000000;
  *(v21 + 8) = 0;
  v22 = a1 + v8[67];
  *v22 = 0x4004CCCCCCCCCCCDLL;
  *(v22 + 8) = 0;
  strcpy((a1 + v8[68]), "333333\a@");
  v23 = a1 + v8[69];
  *v23 = 0x3FF999999999999ALL;
  *(v23 + 8) = 0;
  *(a1 + v8[71]) = 1;
  *(a1 + v8[72]) = 1;
  *(a1 + v8[73]) = 0;
  v24 = a1 + v8[74];
  *v24 = 0x4092C00000000000;
  *(v24 + 8) = 0;
  v25 = a1 + v8[75];
  *v25 = 0x4082C00000000000;
  *(v25 + 8) = 0;
  v26 = a1 + v8[76];
  *v26 = 0x4092C00000000000;
  *(v26 + 8) = 0;
  v27 = a1 + v8[77];
  *v27 = 0x4082C00000000000;
  *(v27 + 8) = 0;
  v28 = a1 + v8[78];
  *v28 = 0x40B0E00000000000;
  *(v28 + 8) = 0;
  v29 = a1 + v8[79];
  *v29 = 0x4150266000000000;
  *(v29 + 8) = 0;
  v30 = a1 + v8[80];
  *v30 = 0x4122750000000000;
  *(v30 + 8) = 0;
  v31 = a1 + v8[81];
  *v31 = 0x40AC200000000000;
  *(v31 + 8) = 0;
  v32 = a1 + v8[82];
  *v32 = 60;
  *(v32 + 8) = 0;
  v33 = (a1 + v8[83]);
  *v33 = 0xD000000000000010;
  v33[1] = 0x80000001013649F0;
  v34 = a1 + v8[84];
  *v34 = 43200;
  *(v34 + 8) = 0;
  v35 = (a1 + v8[85]);
  *v35 = 0xD000000000000019;
  v35[1] = 0x8000000101364A10;
  v36 = a1 + v8[86];
  *v36 = 43200;
  *(v36 + 8) = 0;
  sub_1003914C0(v116, &v115);
  if (qword_101694AA0 != -1)
  {
    swift_once();
  }

  *(a1 + v8[87]) = qword_10177B6E0;
  v37 = (a1 + v8[88]);
  *v37 = 0xD000000000000018;
  v37[1] = 0x8000000101364A30;
  v38 = a1 + v8[89];
  *v38 = 0x404E000000000000;
  *(v38 + 8) = 0;
  *(a1 + v8[90]) = 1;
  *(a1 + v8[91]) = 1;
  *(a1 + v8[92]) = 1;
  *(a1 + v8[93]) = 1;
  v39 = a1 + v8[94];
  *v39 = 150;
  *(v39 + 8) = 0;
  v40 = a1 + v8[95];
  *v40 = 15;
  *(v40 + 8) = 0;
  v41 = a1 + v8[96];
  *v41 = 5;
  *(v41 + 8) = 0;
  v42 = a1 + v8[97];
  *v42 = 120;
  *(v42 + 8) = 0;
  v43 = a1 + v8[98];
  *v43 = 24;
  *(v43 + 8) = 0;
  v44 = a1 + v8[99];
  *v44 = 0x4049000000000000;
  *(v44 + 8) = 0;
  v45 = a1 + v8[100];
  *v45 = 0x4024000000000000;
  *(v45 + 8) = 0;
  v46 = a1 + v8[101];
  *v46 = 0x4044000000000000;
  *(v46 + 8) = 0;
  v47 = a1 + v8[102];
  *v47 = 32;
  *(v47 + 8) = 0;
  v48 = a1 + v8[103];
  *v48 = 12;
  *(v48 + 8) = 0;
  v49 = a1 + v8[104];
  *v49 = 32;
  *(v49 + 8) = 0;
  v50 = a1 + v8[105];
  *v50 = 0x4034000000000000;
  *(v50 + 8) = 0;
  v51 = a1 + v8[106];
  *v51 = 0x403E000000000000;
  *(v51 + 8) = 0;
  v52 = a1 + v8[107];
  *v52 = 7;
  *(v52 + 8) = 0;
  v53 = a1 + v8[108];
  *v53 = 30;
  *(v53 + 8) = 0;
  v54 = a1 + v8[109];
  *v54 = 60;
  *(v54 + 8) = 0;
  v55 = a1 + v8[110];
  *v55 = 30;
  *(v55 + 8) = 0;
  v56 = a1 + v8[111];
  *v56 = 14;
  *(v56 + 8) = 0;
  v57 = a1 + v8[112];
  *v57 = 4320;
  *(v57 + 8) = 0;
  v58 = a1 + v8[113];
  *v58 = 2160;
  *(v58 + 8) = 0;
  v59 = a1 + v8[114];
  *v59 = 2160;
  *(v59 + 8) = 0;
  v60 = a1 + v8[115];
  *v60 = 0x405E000000000000;
  *(v60 + 8) = 0;
  *(a1 + v8[116]) = 1;
  v61 = a1 + v8[117];
  *v61 = 0x4122750000000000;
  *(v61 + 8) = 0;
  v62 = a1 + v8[118];
  *v62 = 0x4000000000000000;
  *(v62 + 8) = 0;
  v63 = a1 + v8[119];
  *v63 = 50;
  *(v63 + 8) = 0;
  *(a1 + v8[120]) = 1;
  *(a1 + v8[121]) = 1;
  *(a1 + v8[122]) = 1;
  v64 = a1 + v8[123];
  *v64 = 86400;
  *(v64 + 8) = 0;
  v65 = a1 + v8[124];
  *v65 = 0x4014000000000000;
  *(v65 + 8) = 0;
  v66 = a1 + v8[125];
  *v66 = 0x408C200000000000;
  *(v66 + 8) = 0;
  v67 = a1 + v8[126];
  *v67 = 96;
  *(v67 + 8) = 0;
  v68 = a1 + v8[127];
  *v68 = 0;
  *(v68 + 8) = 0;
  v69 = a1 + v8[128];
  *v69 = 96;
  *(v69 + 8) = 0;
  v70 = a1 + v8[129];
  *v70 = 0;
  *(v70 + 8) = 0;
  v71 = a1 + v8[130];
  *v71 = 0x40F5180000000000;
  *(v71 + 8) = 0;
  *(a1 + v8[131]) = 1;
  v72 = a1 + v8[132];
  *v72 = 0x404E000000000000;
  *(v72 + 8) = 0;
  *(a1 + v8[133]) = &off_101607438;
  v73 = a1 + v8[134];
  *v73 = 0x4143C68000000000;
  *(v73 + 8) = 0;
  *(a1 + v8[135]) = 1;
  v74 = qword_101694AA8;

  if (v74 != -1)
  {
    swift_once();
  }

  *(a1 + v8[136]) = qword_10177B6E8;
  *(a1 + v8[137]) = 0;
  v75 = a1 + v8[138];
  *v75 = 0x3FB999999999999ALL;
  *(v75 + 8) = 0;
  v76 = a1 + v8[139];
  *v76 = 0x40F5180000000000;
  *(v76 + 8) = 0;
  *(a1 + v8[140]) = 1;
  *(a1 + v8[141]) = 0;
  v77 = a1 + v8[142];
  *v77 = 6;
  *(v77 + 8) = 0;
  v78 = a1 + v8[143];
  *v78 = 8;
  *(v78 + 8) = 0;
  v79 = a1 + v8[144];
  *v79 = 165;
  *(v79 + 8) = 0;
  v80 = a1 + v8[145];
  *v80 = 32;
  *(v80 + 8) = 0;
  v81 = a1 + v8[146];
  *v81 = 32;
  *(v81 + 8) = 0;
  v82 = a1 + v8[147];
  *v82 = 200;
  *(v82 + 8) = 0;
  v83 = a1 + v8[148];
  *v83 = 5;
  *(v83 + 8) = 0;
  v84 = a1 + v8[149];
  *v84 = 32;
  *(v84 + 8) = 0;
  v85 = a1 + v8[150];
  *v85 = 1160;
  *(v85 + 8) = 0;
  v86 = a1 + v8[151];
  *v86 = 7;
  *(v86 + 8) = 0;
  v87 = a1 + v8[152];
  *v87 = 3;
  *(v87 + 8) = 0;
  v88 = a1 + v8[153];
  *v88 = 3;
  *(v88 + 8) = 0;
  v89 = a1 + v8[154];
  *v89 = 30;
  *(v89 + 8) = 0;
  v90 = a1 + v8[155];
  *v90 = 300;
  *(v90 + 8) = 0;
  v91 = a1 + v8[156];
  *v91 = 2160;
  *(v91 + 8) = 0;
  v92 = a1 + v8[157];
  *v92 = 1200;
  *(v92 + 8) = 0;
  v93 = a1 + v8[158];
  *v93 = 0x404E000000000000;
  *(v93 + 8) = 0;
  v94 = a1 + v8[159];
  *v94 = 0x4132750000000000;
  *(v94 + 8) = 0;
  *(a1 + v8[160]) = 0;
  v95 = a1 + v8[161];
  *v95 = 0x408A400000000000;
  *(v95 + 8) = 0;
  v96 = a1 + v8[162];
  *v96 = 0x405E000000000000;
  *(v96 + 8) = 0;
  v97 = a1 + v8[163];
  *v97 = 0x4122750000000000;
  *(v97 + 8) = 0;
  v98 = (a1 + v8[164]);
  *v98 = 0xD00000000000001BLL;
  v98[1] = 0x8000000101364A50;
  v99 = a1 + v8[165];
  *v99 = 32;
  *(v99 + 8) = 0;
  *(a1 + v8[166]) = 0;
  v100 = a1 + v8[167];
  *v100 = 0x40AC200000000000;
  *(v100 + 8) = 0;
  *(a1 + v8[168]) = 0;
  v101 = a1 + v8[169];
  *v101 = 0x40AC200000000000;
  *(v101 + 8) = 0;
  v102 = a1 + v8[170];
  *v102 = 0x409C200000000000;
  *(v102 + 8) = 0;
  *(a1 + v8[171]) = 0;
  v103 = a1 + v8[172];
  *v103 = 2;
  *(v103 + 4) = 0;
  v104 = a1 + v8[173];
  *v104 = 10;
  *(v104 + 8) = 0;
  v105 = a1 + v8[174];
  *v105 = 0x404E000000000000;
  *(v105 + 8) = 0;
  v106 = a1 + v8[175];
  *v106 = 0x4034000000000000;
  *(v106 + 8) = 0;
  v107 = a1 + v8[176];
  *v107 = 0x4014000000000000;
  *(v107 + 8) = 0;
  v108 = a1 + v8[177];
  *v108 = 0x408C200000000000;
  *(v108 + 8) = 0;
  v109 = a1 + v8[178];
  *v109 = 0x408C200000000000;
  *(v109 + 8) = 0;
  v110 = a1 + v8[179];
  *v110 = 0x404E000000000000;
  *(v110 + 8) = 0;
  *(a1 + v8[180]) = 1;
  v111 = a1 + v8[181];
  *v111 = 0x40F5180000000000;
  *(v111 + 8) = 0;
  v112 = a1 + v8[182];
  *v112 = 0x4122750000000000;
  *(v112 + 8) = 0;
  *(a1 + v8[183]) = 176;
  v113 = a1 + v8[184];
  *v113 = 0x404E000000000000;
  *(v113 + 8) = 0;
}

uint64_t sub_1008F9008@<X0>(uint64_t *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = a1[3];
  v7 = a1[4];
  sub_1000035D0(a1, v6);
  *a3 = (*(v7 + 8))(v6, v7);
  *(a3 + 8) = v8;
  *(a3 + 25) = a2;
  v9 = a1[3];
  v10 = a1[4];
  sub_1000035D0(a1, v9);
  *(a3 + 16) = (*(v10 + 16))(v9, v10);
  *(a3 + 24) = v11 & 1;
  v12 = a1[3];
  v13 = a1[4];
  sub_1000035D0(a1, v12);
  *(a3 + 32) = (*(v13 + 24))(v12, v13);
  *(a3 + 40) = v14 & 1;
  v15 = a1[3];
  v16 = a1[4];
  sub_1000035D0(a1, v15);
  *(a3 + 48) = (*(v16 + 32))(v15, v16);
  *(a3 + 56) = v17 & 1;
  v18 = a1[3];
  v19 = a1[4];
  sub_1000035D0(a1, v18);
  *(a3 + 57) = (*(v19 + 40))(v18, v19);
  v20 = a1[3];
  v21 = a1[4];
  sub_1000035D0(a1, v20);
  *(a3 + 64) = (*(v21 + 48))(v20, v21);
  v22 = a1[3];
  v23 = a1[4];
  sub_1000035D0(a1, v22);
  *(a3 + 72) = (*(v23 + 56))(v22, v23);
  v24 = a1[3];
  v25 = a1[4];
  sub_1000035D0(a1, v24);
  *(a3 + 80) = (*(v25 + 64))(v24, v25);
  *(a3 + 88) = v26;
  v27 = a1[3];
  v28 = a1[4];
  sub_1000035D0(a1, v27);
  *(a3 + 96) = (*(v28 + 80))(v27, v28);
  *(a3 + 104) = v29 & 1;
  v30 = a1[3];
  v31 = a1[4];
  sub_1000035D0(a1, v30);
  *(a3 + 105) = (*(v31 + 72))(v30, v31);
  v32 = a1[3];
  v33 = a1[4];
  sub_1000035D0(a1, v32);
  *(a3 + 106) = (*(v33 + 88))(v32, v33);
  v34 = a1[3];
  v35 = a1[4];
  sub_1000035D0(a1, v34);
  *(a3 + 112) = (*(v35 + 96))(v34, v35);
  *(a3 + 120) = v36 & 1;
  v37 = a1[3];
  v38 = a1[4];
  sub_1000035D0(a1, v37);
  *(a3 + 128) = (*(v38 + 104))(v37, v38);
  *(a3 + 136) = v39 & 1;
  v40 = a1[3];
  v41 = a1[4];
  sub_1000035D0(a1, v40);
  *(a3 + 144) = (*(v41 + 112))(v40, v41);
  *(a3 + 152) = v42 & 1;
  v43 = a1[3];
  v44 = a1[4];
  sub_1000035D0(a1, v43);
  *(a3 + 160) = (*(v44 + 120))(v43, v44);
  *(a3 + 168) = v45 & 1;
  v46 = a1[3];
  v47 = a1[4];
  sub_1000035D0(a1, v46);
  *(a3 + 176) = (*(v47 + 128))(v46, v47);
  *(a3 + 184) = v48 & 1;
  v49 = a1[3];
  v50 = a1[4];
  sub_1000035D0(a1, v49);
  *(a3 + 192) = (*(v50 + 136))(v49, v50);
  *(a3 + 200) = v51 & 1;
  v52 = a1[3];
  v53 = a1[4];
  sub_1000035D0(a1, v52);
  *(a3 + 208) = (*(v53 + 144))(v52, v53);
  *(a3 + 216) = v54 & 1;
  v55 = a1[3];
  v56 = a1[4];
  sub_1000035D0(a1, v55);
  *(a3 + 224) = (*(v56 + 152))(v55, v56);
  *(a3 + 232) = v57 & 1;
  v58 = a1[3];
  v59 = a1[4];
  sub_1000035D0(a1, v58);
  *(a3 + 240) = (*(v59 + 160))(v58, v59);
  *(a3 + 248) = v60 & 1;
  v61 = a1[3];
  v62 = a1[4];
  sub_1000035D0(a1, v61);
  *(a3 + 256) = (*(v62 + 168))(v61, v62);
  *(a3 + 264) = v63 & 1;
  v64 = a1[3];
  v65 = a1[4];
  sub_1000035D0(a1, v64);
  *(a3 + 272) = (*(v65 + 176))(v64, v65);
  *(a3 + 280) = v66 & 1;
  v67 = a1[3];
  v68 = a1[4];
  sub_1000035D0(a1, v67);
  *(a3 + 288) = (*(v68 + 184))(v67, v68);
  *(a3 + 296) = v69 & 1;
  v70 = a1[3];
  v71 = a1[4];
  sub_1000035D0(a1, v70);
  *(a3 + 304) = (*(v71 + 192))(v70, v71);
  *(a3 + 312) = v72 & 1;
  v73 = a1[3];
  v74 = a1[4];
  sub_1000035D0(a1, v73);
  *(a3 + 313) = (*(v74 + 200))(v73, v74);
  v75 = a1[3];
  v76 = a1[4];
  sub_1000035D0(a1, v75);
  *(a3 + 320) = (*(v76 + 208))(v75, v76);
  v77 = a1[3];
  v78 = a1[4];
  sub_1000035D0(a1, v77);
  *(a3 + 328) = (*(v78 + 216))(v77, v78);
  *(a3 + 336) = v79 & 1;
  v80 = a1[3];
  v81 = a1[4];
  sub_1000035D0(a1, v80);
  *(a3 + 344) = (*(v81 + 224))(v80, v81);
  *(a3 + 352) = v82 & 1;
  v83 = a1[3];
  v84 = a1[4];
  sub_1000035D0(a1, v83);
  *(a3 + 360) = (*(v84 + 232))(v83, v84);
  *(a3 + 368) = v85 & 1;
  v86 = a1[3];
  v87 = a1[4];
  sub_1000035D0(a1, v86);
  *(a3 + 376) = (*(v87 + 240))(v86, v87);
  *(a3 + 384) = v88 & 1;
  v89 = a1[3];
  v90 = a1[4];
  sub_1000035D0(a1, v89);
  *(a3 + 392) = (*(v90 + 248))(v89, v90);
  *(a3 + 400) = v91 & 1;
  v92 = a1[3];
  v93 = a1[4];
  sub_1000035D0(a1, v92);
  *(a3 + 408) = (*(v93 + 256))(v92, v93);
  *(a3 + 416) = v94 & 1;
  v95 = a1[3];
  v96 = a1[4];
  sub_1000035D0(a1, v95);
  *(a3 + 424) = (*(v96 + 264))(v95, v96);
  *(a3 + 432) = v97 & 1;
  v98 = a1[3];
  v99 = a1[4];
  sub_1000035D0(a1, v98);
  *(a3 + 440) = (*(v99 + 264))(v98, v99);
  *(a3 + 448) = v100 & 1;
  v101 = a1[3];
  v102 = a1[4];
  sub_1000035D0(a1, v101);
  *(a3 + 456) = (*(v102 + 280))(v101, v102);
  *(a3 + 464) = v103 & 1;
  v104 = a1[3];
  v105 = a1[4];
  sub_1000035D0(a1, v104);
  *(a3 + 472) = (*(v105 + 288))(v104, v105);
  *(a3 + 480) = v106 & 1;
  v107 = a1[3];
  v108 = a1[4];
  sub_1000035D0(a1, v107);
  *(a3 + 481) = (*(v108 + 296))(v107, v108);
  v109 = a1[3];
  v110 = a1[4];
  sub_1000035D0(a1, v109);
  *(a3 + 488) = (*(v110 + 304))(v109, v110);
  *(a3 + 496) = v111 & 1;
  v112 = a1[3];
  v113 = a1[4];
  sub_1000035D0(a1, v112);
  *(a3 + 504) = (*(v113 + 312))(v112, v113);
  *(a3 + 512) = v114 & 1;
  v115 = a1[3];
  v116 = a1[4];
  sub_1000035D0(a1, v115);
  *(a3 + 520) = (*(v116 + 320))(v115, v116);
  *(a3 + 528) = v117 & 1;
  v118 = a1[3];
  v119 = a1[4];
  sub_1000035D0(a1, v118);
  *(a3 + 536) = (*(v119 + 328))(v118, v119);
  *(a3 + 544) = v120 & 1;
  v121 = a1[3];
  v122 = a1[4];
  sub_1000035D0(a1, v121);
  *(a3 + 552) = (*(v122 + 336))(v121, v122);
  *(a3 + 560) = v123 & 1;
  v124 = a1[3];
  v125 = a1[4];
  sub_1000035D0(a1, v124);
  *(a3 + 568) = (*(v125 + 344))(v124, v125);
  *(a3 + 576) = v126 & 1;
  v127 = a1[3];
  v128 = a1[4];
  sub_1000035D0(a1, v127);
  *(a3 + 584) = (*(v128 + 352))(v127, v128);
  *(a3 + 592) = v129 & 1;
  v130 = a1[3];
  v131 = a1[4];
  sub_1000035D0(a1, v130);
  *(a3 + 600) = (*(v131 + 360))(v130, v131);
  v132 = a1[3];
  v133 = a1[4];
  sub_1000035D0(a1, v132);
  *(a3 + 608) = (*(v133 + 368))(v132, v133);
  *(a3 + 616) = v134 & 1;
  v135 = a1[3];
  v136 = a1[4];
  sub_1000035D0(a1, v135);
  *(a3 + 624) = (*(v136 + 376))(v135, v136);
  *(a3 + 632) = v137 & 1;
  v138 = a1[3];
  v139 = a1[4];
  sub_1000035D0(a1, v138);
  *(a3 + 640) = (*(v139 + 384))(v138, v139);
  v140 = a1[3];
  v141 = a1[4];
  sub_1000035D0(a1, v140);
  *(a3 + 648) = (*(v141 + 392))(v140, v141);
  v142 = a1[3];
  v143 = a1[4];
  sub_1000035D0(a1, v142);
  *(a3 + 656) = (*(v143 + 400))(v142, v143);
  *(a3 + 664) = v144 & 1;
  v145 = a1[3];
  v146 = a1[4];
  sub_1000035D0(a1, v145);
  *(a3 + 672) = (*(v146 + 408))(v145, v146);
  *(a3 + 680) = v147 & 1;
  v148 = a1[3];
  v149 = a1[4];
  sub_1000035D0(a1, v148);
  *(a3 + 688) = (*(v149 + 416))(v148, v149);
  *(a3 + 696) = v150 & 1;
  v151 = a1[3];
  v152 = a1[4];
  sub_1000035D0(a1, v151);
  *(a3 + 704) = (*(v152 + 424))(v151, v152);
  *(a3 + 712) = v153 & 1;
  v154 = a1[3];
  v155 = a1[4];
  sub_1000035D0(a1, v154);
  *(a3 + 720) = (*(v155 + 432))(v154, v155);
  *(a3 + 728) = v156 & 1;
  v157 = a1[3];
  v158 = a1[4];
  sub_1000035D0(a1, v157);
  *(a3 + 729) = (*(v158 + 440))(v157, v158);
  v159 = a1[3];
  v160 = a1[4];
  sub_1000035D0(a1, v159);
  v161 = *(v160 + 448);
  v162 = type metadata accessor for DefaultConfigurationLayer();
  v163 = a3 + v162[60];
  v161(v159, v160);
  v164 = a1[3];
  v165 = a1[4];
  sub_1000035D0(a1, v164);
  v166 = a3 + v162[61];
  (*(v165 + 456))(v164, v165);
  v167 = a1[3];
  v168 = a1[4];
  sub_1000035D0(a1, v167);
  v169 = (*(v168 + 464))(v167, v168);
  v170 = a3 + v162[62];
  *v170 = v169;
  *(v170 + 8) = v171 & 1;
  v172 = a1[3];
  v173 = a1[4];
  sub_1000035D0(a1, v172);
  v174 = a3 + v162[63];
  (*(v173 + 472))(v172, v173);
  v175 = a1[3];
  v176 = a1[4];
  sub_1000035D0(a1, v175);
  v177 = (*(v176 + 480))(v175, v176);
  v178 = a3 + v162[64];
  *v178 = v177;
  *(v178 + 8) = v179 & 1;
  v180 = a1[3];
  v181 = a1[4];
  sub_1000035D0(a1, v180);
  v182 = (*(v181 + 488))(v180, v181);
  v183 = a3 + v162[65];
  *v183 = v182;
  *(v183 + 8) = v184 & 1;
  v185 = a1[3];
  v186 = a1[4];
  sub_1000035D0(a1, v185);
  v187 = (*(v186 + 496))(v185, v186);
  v188 = a3 + v162[66];
  *v188 = v187;
  *(v188 + 8) = v189 & 1;
  v190 = a1[3];
  v191 = a1[4];
  sub_1000035D0(a1, v190);
  v192 = (*(v191 + 504))(v190, v191);
  v193 = a3 + v162[67];
  *v193 = v192;
  *(v193 + 8) = v194 & 1;
  v195 = a1[3];
  v196 = a1[4];
  sub_1000035D0(a1, v195);
  v197 = (*(v196 + 512))(v195, v196);
  v198 = a3 + v162[68];
  *v198 = v197;
  *(v198 + 8) = v199 & 1;
  v200 = a1[3];
  v201 = a1[4];
  sub_1000035D0(a1, v200);
  v202 = (*(v201 + 520))(v200, v201);
  v203 = a3 + v162[69];
  *v203 = v202;
  *(v203 + 8) = v204 & 1;
  v205 = a1[3];
  v206 = a1[4];
  sub_1000035D0(a1, v205);
  (*(v206 + 528))(v708, v205, v206);
  v207 = (a3 + v162[70]);
  v208 = v708[5];
  v207[4] = v708[4];
  v207[5] = v208;
  v207[6] = v708[6];
  v209 = v708[1];
  *v207 = v708[0];
  v207[1] = v209;
  v210 = v708[3];
  v207[2] = v708[2];
  v207[3] = v210;
  v211 = a1[3];
  v212 = a1[4];
  sub_1000035D0(a1, v211);
  *(a3 + v162[71]) = (*(v212 + 536))(v211, v212);
  v213 = a1[3];
  v214 = a1[4];
  sub_1000035D0(a1, v213);
  *(a3 + v162[72]) = (*(v214 + 544))(v213, v214);
  v215 = a1[3];
  v216 = a1[4];
  sub_1000035D0(a1, v215);
  *(a3 + v162[73]) = (*(v216 + 552))(v215, v216);
  v217 = a1[3];
  v218 = a1[4];
  sub_1000035D0(a1, v217);
  v219 = (*(v218 + 560))(v217, v218);
  v220 = a3 + v162[74];
  *v220 = v219;
  *(v220 + 8) = v221 & 1;
  v222 = a1[3];
  v223 = a1[4];
  sub_1000035D0(a1, v222);
  v224 = (*(v223 + 568))(v222, v223);
  v225 = a3 + v162[75];
  *v225 = v224;
  *(v225 + 8) = v226 & 1;
  v227 = a1[3];
  v228 = a1[4];
  sub_1000035D0(a1, v227);
  v229 = (*(v228 + 576))(v227, v228);
  v230 = a3 + v162[76];
  *v230 = v229;
  *(v230 + 8) = v231 & 1;
  v232 = a1[3];
  v233 = a1[4];
  sub_1000035D0(a1, v232);
  v234 = (*(v233 + 584))(v232, v233);
  v235 = a3 + v162[77];
  *v235 = v234;
  *(v235 + 8) = v236 & 1;
  v237 = a1[3];
  v238 = a1[4];
  sub_1000035D0(a1, v237);
  v239 = (*(v238 + 592))(v237, v238);
  v240 = a3 + v162[78];
  *v240 = v239;
  *(v240 + 8) = v241 & 1;
  v242 = a1[3];
  v243 = a1[4];
  sub_1000035D0(a1, v242);
  v244 = (*(v243 + 600))(v242, v243);
  v245 = a3 + v162[79];
  *v245 = v244;
  *(v245 + 8) = v246 & 1;
  v247 = a1[3];
  v248 = a1[4];
  sub_1000035D0(a1, v247);
  v249 = (*(v248 + 608))(v247, v248);
  v250 = a3 + v162[80];
  *v250 = v249;
  *(v250 + 8) = v251 & 1;
  v252 = a1[3];
  v253 = a1[4];
  sub_1000035D0(a1, v252);
  v254 = (*(v253 + 616))(v252, v253);
  v255 = a3 + v162[81];
  *v255 = v254;
  *(v255 + 8) = v256 & 1;
  v257 = a1[3];
  v258 = a1[4];
  sub_1000035D0(a1, v257);
  v259 = (*(v258 + 624))(v257, v258);
  v260 = a3 + v162[82];
  *v260 = v259;
  *(v260 + 8) = v261 & 1;
  v262 = a1[3];
  v263 = a1[4];
  sub_1000035D0(a1, v262);
  v264 = (*(v263 + 632))(v262, v263);
  v265 = (a3 + v162[83]);
  *v265 = v264;
  v265[1] = v266;
  v267 = a1[3];
  v268 = a1[4];
  sub_1000035D0(a1, v267);
  v269 = (*(v268 + 640))(v267, v268);
  v270 = a3 + v162[84];
  *v270 = v269;
  *(v270 + 8) = v271 & 1;
  v272 = a1[3];
  v273 = a1[4];
  sub_1000035D0(a1, v272);
  v274 = (*(v273 + 648))(v272, v273);
  v275 = (a3 + v162[85]);
  *v275 = v274;
  v275[1] = v276;
  v277 = a1[3];
  v278 = a1[4];
  sub_1000035D0(a1, v277);
  v279 = (*(v278 + 656))(v277, v278);
  v280 = a3 + v162[86];
  *v280 = v279;
  *(v280 + 8) = v281 & 1;
  v282 = a1[3];
  v283 = a1[4];
  sub_1000035D0(a1, v282);
  *(a3 + v162[87]) = (*(v283 + 664))(v282, v283);
  v284 = a1[3];
  v285 = a1[4];
  sub_1000035D0(a1, v284);
  v286 = (*(v285 + 672))(v284, v285);
  v287 = (a3 + v162[88]);
  *v287 = v286;
  v287[1] = v288;
  v289 = a1[3];
  v290 = a1[4];
  sub_1000035D0(a1, v289);
  v291 = (*(v290 + 680))(v289, v290);
  v292 = a3 + v162[89];
  *v292 = v291;
  *(v292 + 8) = v293 & 1;
  v294 = a1[3];
  v295 = a1[4];
  sub_1000035D0(a1, v294);
  v296 = (*(v295 + 720))(v294, v295);
  v297 = a3 + v162[94];
  *v297 = v296;
  *(v297 + 8) = v298 & 1;
  v299 = a1[3];
  v300 = a1[4];
  sub_1000035D0(a1, v299);
  v301 = (*(v300 + 728))(v299, v300);
  v302 = a3 + v162[95];
  *v302 = v301;
  *(v302 + 8) = v303 & 1;
  v304 = a1[3];
  v305 = a1[4];
  sub_1000035D0(a1, v304);
  v306 = (*(v305 + 736))(v304, v305);
  v307 = a3 + v162[96];
  *v307 = v306;
  *(v307 + 8) = v308 & 1;
  v309 = a1[3];
  v310 = a1[4];
  sub_1000035D0(a1, v309);
  v311 = (*(v310 + 744))(v309, v310);
  v312 = a3 + v162[97];
  *v312 = v311;
  *(v312 + 8) = v313 & 1;
  v314 = a1[3];
  v315 = a1[4];
  sub_1000035D0(a1, v314);
  v316 = (*(v315 + 752))(v314, v315);
  v317 = a3 + v162[98];
  *v317 = v316;
  *(v317 + 8) = v318 & 1;
  v319 = a1[3];
  v320 = a1[4];
  sub_1000035D0(a1, v319);
  v321 = (*(v320 + 760))(v319, v320);
  v322 = a3 + v162[99];
  *v322 = v321;
  *(v322 + 8) = v323 & 1;
  v324 = a1[3];
  v325 = a1[4];
  sub_1000035D0(a1, v324);
  v326 = (*(v325 + 768))(v324, v325);
  v327 = a3 + v162[100];
  *v327 = v326;
  *(v327 + 8) = v328 & 1;
  v329 = a1[3];
  v330 = a1[4];
  sub_1000035D0(a1, v329);
  v331 = (*(v330 + 776))(v329, v330);
  v332 = a3 + v162[101];
  *v332 = v331;
  *(v332 + 8) = v333 & 1;
  v334 = a1[3];
  v335 = a1[4];
  sub_1000035D0(a1, v334);
  v336 = (*(v335 + 784))(v334, v335);
  v337 = a3 + v162[102];
  *v337 = v336;
  *(v337 + 8) = v338 & 1;
  v339 = a1[3];
  v340 = a1[4];
  sub_1000035D0(a1, v339);
  v341 = (*(v340 + 792))(v339, v340);
  v342 = a3 + v162[103];
  *v342 = v341;
  *(v342 + 8) = v343 & 1;
  v344 = a1[3];
  v345 = a1[4];
  sub_1000035D0(a1, v344);
  v346 = (*(v345 + 800))(v344, v345);
  v347 = a3 + v162[104];
  *v347 = v346;
  *(v347 + 8) = v348 & 1;
  v349 = a1[3];
  v350 = a1[4];
  sub_1000035D0(a1, v349);
  *(a3 + v162[90]) = (*(v350 + 688))(v349, v350);
  v351 = a1[3];
  v352 = a1[4];
  sub_1000035D0(a1, v351);
  *(a3 + v162[91]) = (*(v352 + 696))(v351, v352);
  v353 = a1[3];
  v354 = a1[4];
  sub_1000035D0(a1, v353);
  *(a3 + v162[92]) = (*(v354 + 704))(v353, v354);
  v355 = a1[3];
  v356 = a1[4];
  sub_1000035D0(a1, v355);
  *(a3 + v162[93]) = (*(v356 + 712))(v355, v356);
  v357 = a1[3];
  v358 = a1[4];
  sub_1000035D0(a1, v357);
  v359 = (*(v358 + 808))(v357, v358);
  v360 = a3 + v162[105];
  *v360 = v359;
  *(v360 + 8) = v361 & 1;
  v362 = a1[3];
  v363 = a1[4];
  sub_1000035D0(a1, v362);
  v364 = (*(v363 + 816))(v362, v363);
  v365 = a3 + v162[106];
  *v365 = v364;
  *(v365 + 8) = v366 & 1;
  v367 = a1[3];
  v368 = a1[4];
  sub_1000035D0(a1, v367);
  v369 = (*(v368 + 824))(v367, v368);
  v370 = a3 + v162[107];
  *v370 = v369;
  *(v370 + 8) = v371 & 1;
  v372 = a1[3];
  v373 = a1[4];
  sub_1000035D0(a1, v372);
  v374 = (*(v373 + 832))(v372, v373);
  v375 = a3 + v162[108];
  *v375 = v374;
  *(v375 + 8) = v376 & 1;
  v377 = a1[3];
  v378 = a1[4];
  sub_1000035D0(a1, v377);
  v379 = (*(v378 + 840))(v377, v378);
  v380 = a3 + v162[109];
  *v380 = v379;
  *(v380 + 8) = v381 & 1;
  v382 = a1[3];
  v383 = a1[4];
  sub_1000035D0(a1, v382);
  v384 = (*(v383 + 848))(v382, v383);
  v385 = a3 + v162[110];
  *v385 = v384;
  *(v385 + 8) = v386 & 1;
  v387 = a1[3];
  v388 = a1[4];
  sub_1000035D0(a1, v387);
  v389 = (*(v388 + 856))(v387, v388);
  v390 = a3 + v162[111];
  *v390 = v389;
  *(v390 + 8) = v391 & 1;
  v392 = a1[3];
  v393 = a1[4];
  sub_1000035D0(a1, v392);
  v394 = (*(v393 + 864))(v392, v393);
  v395 = a3 + v162[112];
  *v395 = v394;
  *(v395 + 8) = v396 & 1;
  v397 = a1[3];
  v398 = a1[4];
  sub_1000035D0(a1, v397);
  v399 = (*(v398 + 872))(v397, v398);
  v400 = a3 + v162[113];
  *v400 = v399;
  *(v400 + 8) = v401 & 1;
  v402 = a1[3];
  v403 = a1[4];
  sub_1000035D0(a1, v402);
  v404 = (*(v403 + 880))(v402, v403);
  v405 = a3 + v162[114];
  *v405 = v404;
  *(v405 + 8) = v406 & 1;
  v407 = a1[3];
  v408 = a1[4];
  sub_1000035D0(a1, v407);
  v409 = (*(v408 + 888))(v407, v408);
  v410 = a3 + v162[115];
  *v410 = v409;
  *(v410 + 8) = v411 & 1;
  v412 = a1[3];
  v413 = a1[4];
  sub_1000035D0(a1, v412);
  *(a3 + v162[116]) = (*(v413 + 896))(v412, v413);
  v414 = a1[3];
  v415 = a1[4];
  sub_1000035D0(a1, v414);
  v416 = (*(v415 + 904))(v414, v415);
  v417 = a3 + v162[117];
  *v417 = v416;
  *(v417 + 8) = v418 & 1;
  v419 = a1[3];
  v420 = a1[4];
  sub_1000035D0(a1, v419);
  v421 = (*(v420 + 912))(v419, v420);
  v422 = a3 + v162[118];
  *v422 = v421;
  *(v422 + 8) = v423 & 1;
  v424 = a1[3];
  v425 = a1[4];
  sub_1000035D0(a1, v424);
  v426 = (*(v425 + 920))(v424, v425);
  v427 = a3 + v162[119];
  *v427 = v426;
  *(v427 + 8) = v428 & 1;
  v429 = a1[3];
  v430 = a1[4];
  sub_1000035D0(a1, v429);
  *(a3 + v162[120]) = (*(v430 + 928))(v429, v430);
  v431 = a1[3];
  v432 = a1[4];
  sub_1000035D0(a1, v431);
  *(a3 + v162[121]) = (*(v432 + 936))(v431, v432);
  v433 = a1[3];
  v434 = a1[4];
  sub_1000035D0(a1, v433);
  *(a3 + v162[122]) = (*(v434 + 944))(v433, v434);
  v435 = a1[3];
  v436 = a1[4];
  sub_1000035D0(a1, v435);
  v437 = (*(v436 + 952))(v435, v436);
  v438 = a3 + v162[123];
  *v438 = v437;
  *(v438 + 8) = v439 & 1;
  v440 = a1[3];
  v441 = a1[4];
  sub_1000035D0(a1, v440);
  v442 = (*(v441 + 960))(v440, v441);
  v443 = a3 + v162[124];
  *v443 = v442;
  *(v443 + 8) = v444 & 1;
  v445 = a1[3];
  v446 = a1[4];
  sub_1000035D0(a1, v445);
  v447 = (*(v446 + 968))(v445, v446);
  v448 = a3 + v162[125];
  *v448 = v447;
  *(v448 + 8) = v449 & 1;
  v450 = a1[3];
  v451 = a1[4];
  sub_1000035D0(a1, v450);
  v452 = (*(v451 + 976))(v450, v451);
  v453 = a3 + v162[126];
  *v453 = v452;
  *(v453 + 8) = v454 & 1;
  v455 = a1[3];
  v456 = a1[4];
  sub_1000035D0(a1, v455);
  v457 = (*(v456 + 984))(v455, v456);
  v458 = a3 + v162[127];
  *v458 = v457;
  *(v458 + 8) = v459 & 1;
  v460 = a1[3];
  v461 = a1[4];
  sub_1000035D0(a1, v460);
  v462 = (*(v461 + 992))(v460, v461);
  v463 = a3 + v162[128];
  *v463 = v462;
  *(v463 + 8) = v464 & 1;
  v465 = a1[3];
  v466 = a1[4];
  sub_1000035D0(a1, v465);
  v467 = (*(v466 + 1000))(v465, v466);
  v468 = a3 + v162[129];
  *v468 = v467;
  *(v468 + 8) = v469 & 1;
  v470 = a1[3];
  v471 = a1[4];
  sub_1000035D0(a1, v470);
  v472 = (*(v471 + 1008))(v470, v471);
  v473 = a3 + v162[130];
  *v473 = v472;
  *(v473 + 8) = v474 & 1;
  v475 = a1[3];
  v476 = a1[4];
  sub_1000035D0(a1, v475);
  *(a3 + v162[131]) = (*(v476 + 1016))(v475, v476);
  v477 = a1[3];
  v478 = a1[4];
  sub_1000035D0(a1, v477);
  v479 = (*(v478 + 1024))(v477, v478);
  v480 = a3 + v162[132];
  *v480 = v479;
  *(v480 + 8) = v481 & 1;
  v482 = a1[3];
  v483 = a1[4];
  sub_1000035D0(a1, v482);
  *(a3 + v162[133]) = (*(v483 + 1032))(v482, v483);
  v484 = a1[3];
  v485 = a1[4];
  sub_1000035D0(a1, v484);
  v486 = (*(v485 + 1040))(v484, v485);
  v487 = a3 + v162[134];
  *v487 = v486;
  *(v487 + 8) = v488 & 1;
  v489 = a1[3];
  v490 = a1[4];
  sub_1000035D0(a1, v489);
  *(a3 + v162[135]) = (*(v490 + 1048))(v489, v490);
  v491 = a1[3];
  v492 = a1[4];
  sub_1000035D0(a1, v491);
  *(a3 + v162[136]) = (*(v492 + 1056))(v491, v492);
  v493 = a1[3];
  v494 = a1[4];
  sub_1000035D0(a1, v493);
  *(a3 + v162[137]) = (*(v494 + 1064))(v493, v494);
  v495 = a1[3];
  v496 = a1[4];
  sub_1000035D0(a1, v495);
  v497 = (*(v496 + 1072))(v495, v496);
  v498 = a3 + v162[138];
  *v498 = v497;
  *(v498 + 8) = v499 & 1;
  v500 = a1[3];
  v501 = a1[4];
  sub_1000035D0(a1, v500);
  v502 = (*(v501 + 1080))(v500, v501);
  v503 = a3 + v162[139];
  *v503 = v502;
  *(v503 + 8) = v504 & 1;
  v505 = a1[3];
  v506 = a1[4];
  sub_1000035D0(a1, v505);
  *(a3 + v162[140]) = (*(v506 + 1088))(v505, v506);
  v507 = a1[3];
  v508 = a1[4];
  sub_1000035D0(a1, v507);
  *(a3 + v162[141]) = (*(v508 + 1096))(v507, v508);
  v509 = a1[3];
  v510 = a1[4];
  sub_1000035D0(a1, v509);
  v511 = (*(v510 + 1104))(v509, v510);
  v512 = a3 + v162[142];
  *v512 = v511;
  *(v512 + 8) = v513 & 1;
  v514 = a1[3];
  v515 = a1[4];
  sub_1000035D0(a1, v514);
  v516 = (*(v515 + 1112))(v514, v515);
  v517 = a3 + v162[143];
  *v517 = v516;
  *(v517 + 8) = v518 & 1;
  v519 = a1[3];
  v520 = a1[4];
  sub_1000035D0(a1, v519);
  v521 = (*(v520 + 1120))(v519, v520);
  v522 = a3 + v162[144];
  *v522 = v521;
  *(v522 + 8) = v523 & 1;
  v524 = a1[3];
  v525 = a1[4];
  sub_1000035D0(a1, v524);
  v526 = (*(v525 + 1128))(v524, v525);
  v527 = a3 + v162[145];
  *v527 = v526;
  *(v527 + 8) = v528 & 1;
  v529 = a1[3];
  v530 = a1[4];
  sub_1000035D0(a1, v529);
  v531 = (*(v530 + 1136))(v529, v530);
  v532 = a3 + v162[146];
  *v532 = v531;
  *(v532 + 8) = v533 & 1;
  v534 = a1[3];
  v535 = a1[4];
  sub_1000035D0(a1, v534);
  v536 = (*(v535 + 1144))(v534, v535);
  v537 = a3 + v162[147];
  *v537 = v536;
  *(v537 + 8) = v538 & 1;
  v539 = a1[3];
  v540 = a1[4];
  sub_1000035D0(a1, v539);
  v541 = (*(v540 + 1152))(v539, v540);
  v542 = a3 + v162[148];
  *v542 = v541;
  *(v542 + 8) = v543 & 1;
  v544 = a1[3];
  v545 = a1[4];
  sub_1000035D0(a1, v544);
  v546 = (*(v545 + 1160))(v544, v545);
  v547 = a3 + v162[149];
  *v547 = v546;
  *(v547 + 8) = v548 & 1;
  v549 = a1[3];
  v550 = a1[4];
  sub_1000035D0(a1, v549);
  v551 = (*(v550 + 1168))(v549, v550);
  v552 = a3 + v162[150];
  *v552 = v551;
  *(v552 + 8) = v553 & 1;
  v554 = a1[3];
  v555 = a1[4];
  sub_1000035D0(a1, v554);
  v556 = (*(v555 + 1176))(v554, v555);
  v557 = a3 + v162[151];
  *v557 = v556;
  *(v557 + 8) = v558 & 1;
  v559 = a1[3];
  v560 = a1[4];
  sub_1000035D0(a1, v559);
  v561 = (*(v560 + 1184))(v559, v560);
  v562 = a3 + v162[152];
  *v562 = v561;
  *(v562 + 8) = v563 & 1;
  v564 = a1[3];
  v565 = a1[4];
  sub_1000035D0(a1, v564);
  v566 = (*(v565 + 1192))(v564, v565);
  v567 = a3 + v162[153];
  *v567 = v566;
  *(v567 + 8) = v568 & 1;
  v569 = a1[3];
  v570 = a1[4];
  sub_1000035D0(a1, v569);
  v571 = (*(v570 + 1200))(v569, v570);
  v572 = a3 + v162[154];
  *v572 = v571;
  *(v572 + 8) = v573 & 1;
  v574 = a1[3];
  v575 = a1[4];
  sub_1000035D0(a1, v574);
  v576 = (*(v575 + 1208))(v574, v575);
  v577 = a3 + v162[155];
  *v577 = v576;
  *(v577 + 8) = v578 & 1;
  v579 = a1[3];
  v580 = a1[4];
  sub_1000035D0(a1, v579);
  v581 = (*(v580 + 1216))(v579, v580);
  v582 = a3 + v162[156];
  *v582 = v581;
  *(v582 + 8) = v583 & 1;
  v584 = a1[3];
  v585 = a1[4];
  sub_1000035D0(a1, v584);
  v586 = (*(v585 + 1224))(v584, v585);
  v587 = a3 + v162[157];
  *v587 = v586;
  *(v587 + 8) = v588 & 1;
  v589 = a1[3];
  v590 = a1[4];
  sub_1000035D0(a1, v589);
  v591 = (*(v590 + 1232))(v589, v590);
  v592 = a3 + v162[158];
  *v592 = v591;
  *(v592 + 8) = v593 & 1;
  v594 = a1[3];
  v595 = a1[4];
  sub_1000035D0(a1, v594);
  v596 = (*(v595 + 1240))(v594, v595);
  v597 = a3 + v162[159];
  *v597 = v596;
  *(v597 + 8) = v598 & 1;
  v599 = a1[3];
  v600 = a1[4];
  sub_1000035D0(a1, v599);
  *(a3 + v162[160]) = (*(v600 + 1248))(v599, v600);
  v601 = a1[3];
  v602 = a1[4];
  sub_1000035D0(a1, v601);
  v603 = (*(v602 + 1256))(v601, v602);
  v604 = a3 + v162[161];
  *v604 = v603;
  *(v604 + 8) = v605 & 1;
  v606 = a1[3];
  v607 = a1[4];
  sub_1000035D0(a1, v606);
  v608 = (*(v607 + 1264))(v606, v607);
  v609 = a3 + v162[162];
  *v609 = v608;
  *(v609 + 8) = v610 & 1;
  v611 = a1[3];
  v612 = a1[4];
  sub_1000035D0(a1, v611);
  v613 = (*(v612 + 1272))(v611, v612);
  v614 = a3 + v162[163];
  *v614 = v613;
  *(v614 + 8) = v615 & 1;
  v616 = a1[3];
  v617 = a1[4];
  sub_1000035D0(a1, v616);
  v618 = (*(v617 + 1280))(v616, v617);
  v619 = (a3 + v162[164]);
  *v619 = v618;
  v619[1] = v620;
  v621 = a1[3];
  v622 = a1[4];
  sub_1000035D0(a1, v621);
  v623 = (*(v622 + 1288))(v621, v622);
  v624 = a3 + v162[165];
  *v624 = v623;
  *(v624 + 8) = v625 & 1;
  v626 = a1[3];
  v627 = a1[4];
  sub_1000035D0(a1, v626);
  *(a3 + v162[166]) = (*(v627 + 1296))(v626, v627);
  v628 = a1[3];
  v629 = a1[4];
  sub_1000035D0(a1, v628);
  v630 = (*(v629 + 1304))(v628, v629);
  v631 = a3 + v162[167];
  *v631 = v630;
  *(v631 + 8) = v632 & 1;
  v633 = a1[3];
  v634 = a1[4];
  sub_1000035D0(a1, v633);
  *(a3 + v162[168]) = (*(v634 + 1312))(v633, v634);
  v635 = a1[3];
  v636 = a1[4];
  sub_1000035D0(a1, v635);
  v637 = (*(v636 + 1320))(v635, v636);
  v638 = a3 + v162[169];
  *v638 = v637;
  *(v638 + 8) = v639 & 1;
  v640 = a1[3];
  v641 = a1[4];
  sub_1000035D0(a1, v640);
  v642 = (*(v641 + 1328))(v640, v641);
  v643 = a3 + v162[170];
  *v643 = v642;
  *(v643 + 8) = v644 & 1;
  v645 = a1[3];
  v646 = a1[4];
  sub_1000035D0(a1, v645);
  *(a3 + v162[171]) = (*(v646 + 1336))(v645, v646);
  v647 = a1[3];
  v648 = a1[4];
  sub_1000035D0(a1, v647);
  v649 = (*(v648 + 1344))(v647, v648);
  v650 = a3 + v162[172];
  *v650 = v649;
  *(v650 + 4) = BYTE4(v649) & 1;
  v651 = a1[3];
  v652 = a1[4];
  sub_1000035D0(a1, v651);
  v653 = (*(v652 + 1352))(v651, v652);
  v654 = a3 + v162[173];
  *v654 = v653;
  *(v654 + 8) = v655 & 1;
  v656 = a1[3];
  v657 = a1[4];
  sub_1000035D0(a1, v656);
  v658 = (*(v657 + 1360))(v656, v657);
  v659 = a3 + v162[174];
  *v659 = v658;
  *(v659 + 8) = v660 & 1;
  v661 = a1[3];
  v662 = a1[4];
  sub_1000035D0(a1, v661);
  v663 = (*(v662 + 1368))(v661, v662);
  v664 = a3 + v162[175];
  *v664 = v663;
  *(v664 + 8) = v665 & 1;
  v666 = a1[3];
  v667 = a1[4];
  sub_1000035D0(a1, v666);
  v668 = (*(v667 + 1376))(v666, v667);
  v669 = a3 + v162[176];
  *v669 = v668;
  *(v669 + 8) = v670 & 1;
  v671 = a1[3];
  v672 = a1[4];
  sub_1000035D0(a1, v671);
  v673 = (*(v672 + 1384))(v671, v672);
  v674 = a3 + v162[177];
  *v674 = v673;
  *(v674 + 8) = v675 & 1;
  v676 = a1[3];
  v677 = a1[4];
  sub_1000035D0(a1, v676);
  v678 = (*(v677 + 1392))(v676, v677);
  v679 = a3 + v162[178];
  *v679 = v678;
  *(v679 + 8) = v680 & 1;
  v681 = a1[3];
  v682 = a1[4];
  sub_1000035D0(a1, v681);
  v683 = (*(v682 + 1400))(v681, v682);
  v684 = a3 + v162[179];
  *v684 = v683;
  *(v684 + 8) = v685 & 1;
  v686 = a1[3];
  v687 = a1[4];
  sub_1000035D0(a1, v686);
  *(a3 + v162[180]) = (*(v687 + 1408))(v686, v687);
  v688 = a1[3];
  v689 = a1[4];
  sub_1000035D0(a1, v688);
  v690 = (*(v689 + 1416))(v688, v689);
  v691 = a3 + v162[181];
  *v691 = v690;
  *(v691 + 8) = v692 & 1;
  v693 = a1[3];
  v694 = a1[4];
  sub_1000035D0(a1, v693);
  v695 = (*(v694 + 1424))(v693, v694);
  v696 = a3 + v162[182];
  *v696 = v695;
  *(v696 + 8) = v697 & 1;
  v698 = a1[3];
  v699 = a1[4];
  sub_1000035D0(a1, v698);
  v700 = (*(v699 + 1432))(v698, v699);
  v701 = (a3 + v162[183]);
  *v701 = v700;
  v701[1] = HIBYTE(v700) & 1;
  v702 = a1[3];
  v703 = a1[4];
  sub_1000035D0(a1, v702);
  v704 = (*(v703 + 1440))(v702, v703);
  v705 = a3 + v162[184];
  *v705 = v704;
  *(v705 + 8) = v706 & 1;

  return sub_100007BAC(a1);
}

unint64_t sub_1008FBCCC(char a1)
{
  result = 0x754E6C6169726573;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x656372756F73;
      break;
    case 3:
      result = 0x496873696C627570;
      break;
    case 4:
    case 51:
      result = 0xD000000000000012;
      break;
    case 6:
    case 27:
    case 67:
    case 77:
    case 79:
    case 99:
    case -125:
    case -76:
      result = 0xD000000000000015;
      break;
    case 7:
      result = 0x74537265646E6966;
      break;
    case 8:
      result = 0x74736F486E736361;
      break;
    case 9:
    case 54:
    case -80:
      result = 0xD000000000000011;
      break;
    case 10:
    case 26:
    case 69:
    case 84:
    case -113:
    case -95:
      result = 0xD000000000000014;
      break;
    case 12:
    case 24:
    case 28:
    case 106:
    case 116:
    case -120:
    case -89:
      result = 0xD00000000000001FLL;
      break;
    case 13:
    case 25:
    case 30:
    case 38:
    case 41:
    case 75:
    case 90:
    case 93:
    case -97:
      result = 0xD000000000000021;
      break;
    case 14:
    case 34:
      result = 0xD00000000000002ALL;
      break;
    case 15:
    case 81:
    case 88:
    case 100:
    case 117:
    case -105:
    case -83:
    case -77:
      result = 0xD000000000000018;
      break;
    case 16:
    case 61:
    case 64:
    case 65:
    case -99:
    case -92:
    case -90:
    case -85:
      result = 0xD00000000000001ELL;
      break;
    case 17:
    case 49:
    case 57:
    case 98:
    case -114:
      result = 0xD000000000000016;
      break;
    case 18:
    case 40:
    case 50:
    case 58:
    case 76:
    case 108:
    case -94:
      result = 0xD000000000000017;
      break;
    case 19:
    case 92:
    case -106:
      result = 0xD000000000000024;
      break;
    case 20:
      result = 0xD00000000000003ALL;
      break;
    case 21:
      result = 0xD000000000000043;
      break;
    case 22:
    case 32:
    case 44:
    case 46:
    case 53:
    case 62:
    case 63:
    case 70:
    case 71:
    case 78:
    case 107:
    case 113:
    case -110:
      result = 0xD00000000000001CLL;
      break;
    case 23:
    case 73:
    case 126:
      result = 0xD000000000000028;
      break;
    case 29:
    case 31:
    case 33:
    case 43:
    case 91:
    case 97:
    case 104:
    case -108:
    case -107:
    case -101:
    case -82:
      result = 0xD000000000000023;
      break;
    case 35:
    case 42:
    case 72:
    case 82:
    case 105:
      result = 0xD000000000000025;
      break;
    case 36:
      result = 0xD00000000000002CLL;
      break;
    case 37:
      result = 0xD00000000000001DLL;
      break;
    case 39:
      result = 0xD00000000000001DLL;
      break;
    case 45:
      result = 0x65746143656C6F72;
      break;
    case 47:
      result = 0xD000000000000026;
      break;
    case 48:
      result = 0x5365636976726573;
      break;
    case 52:
    case 101:
    case 110:
    case 111:
    case 115:
    case -111:
    case -91:
    case -88:
      result = 0xD00000000000001ALL;
      break;
    case 55:
    case 66:
    case 83:
    case 85:
    case 89:
      result = 0xD000000000000013;
      break;
    case 56:
      result = 0x63616542666C6573;
      break;
    case 59:
      result = 0x5279654B7473616CLL;
      break;
    case 60:
      result = 0xD00000000000001DLL;
      break;
    case 68:
      result = 0x724473776F6C6C61;
      break;
    case 74:
    case 95:
    case 112:
    case -121:
    case -100:
    case -93:
      result = 0xD000000000000020;
      break;
    case 80:
    case 114:
    case 121:
    case -123:
    case -109:
    case -86:
      result = 0xD000000000000022;
      break;
    case 86:
    case 119:
    case 127:
    case -104:
      result = 0xD00000000000002BLL;
      break;
    case 87:
      result = 0x6941656C65487369;
      break;
    case 94:
      result = 0xD00000000000001DLL;
      break;
    case 96:
    case 103:
    case 118:
    case -119:
      result = 0xD000000000000019;
      break;
    case 102:
      result = 0xD00000000000001DLL;
      break;
    case 109:
      result = 0xD00000000000001DLL;
      break;
    case 120:
    case -112:
      result = 0xD00000000000001BLL;
      break;
    case 122:
    case 124:
    case -126:
      result = 0xD000000000000032;
      break;
    case 123:
    case 125:
      result = 0xD000000000000031;
      break;
    case -128:
      result = 0xD00000000000001DLL;
      break;
    case -127:
      result = 0xD00000000000001DLL;
      break;
    case -124:
      result = 0xD00000000000001DLL;
      break;
    case -122:
      result = 0xD00000000000001DLL;
      break;
    case -116:
    case -115:
      result = 0x657261685378616DLL;
      break;
    case -103:
    case -87:
      result = 0xD00000000000002DLL;
      break;
    case -102:
      result = 0xD00000000000001DLL;
      break;
    case -98:
      result = 0xD00000000000001DLL;
      break;
    case -84:
      result = 0xD00000000000001DLL;
      break;
    case -81:
      result = 0xD000000000000029;
      break;
    case -79:
      result = 0xD00000000000001DLL;
      break;
    case -78:
      result = 0xD00000000000001DLL;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_1008FC978(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016AE298, &qword_1013C56C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v433 - v8;
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_10090CCEC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *(v3 + 8);
  *&v444 = *v3;
  *(&v444 + 1) = v11;
  LOBYTE(v437) = 0;
  sub_10002E98C(v444, v11);
  sub_1000E3190();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (v2)
  {
    sub_100006654(v444, *(&v444 + 1));
    return (*(v6 + 8))(v9, v5);
  }

  else
  {
    v13 = v6;
    sub_100006654(v444, *(&v444 + 1));
    v14 = *(v3 + 16);
    v15 = *(v3 + 24);
    LOBYTE(v444) = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v444) = *(v3 + 25);
    LOBYTE(v437) = 2;
    sub_10090CF94();
    v16 = v5;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v17 = *(v3 + 32);
    v18 = *(v3 + 40);
    LOBYTE(v444) = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v19 = *(v3 + 48);
    v20 = *(v3 + 56);
    LOBYTE(v444) = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v21 = *(v3 + 57);
    LOBYTE(v444) = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    *&v444 = *(v3 + 64);
    LOBYTE(v437) = 6;
    sub_1000BC4D4(&qword_1016B0470, &qword_10138EB80);
    sub_100758BE4(&qword_1016B2860);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v22 = *(v3 + 72);
    LOBYTE(v444) = 7;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v23 = *(v3 + 80);
    v24 = *(v3 + 88);
    LOBYTE(v444) = 8;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v25 = *(v3 + 96);
    v26 = *(v3 + 104);
    LOBYTE(v444) = 9;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v27 = v9;
    v28 = v3;
    v29 = *(v3 + 105);
    LOBYTE(v444) = 10;
    v30 = v27;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v31 = *(v3 + 106);
    LOBYTE(v444) = 11;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v32 = *(v3 + 112);
    v33 = *(v3 + 120);
    LOBYTE(v444) = 12;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v34 = *(v3 + 128);
    v35 = *(v3 + 136);
    LOBYTE(v444) = 13;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v36 = *(v3 + 144);
    v37 = *(v3 + 152);
    LOBYTE(v444) = 14;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v38 = *(v3 + 160);
    v39 = *(v3 + 168);
    LOBYTE(v444) = 15;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v40 = *(v3 + 176);
    v41 = *(v3 + 184);
    LOBYTE(v444) = 16;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v42 = *(v3 + 192);
    v43 = *(v3 + 200);
    LOBYTE(v444) = 17;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v44 = *(v3 + 208);
    v45 = *(v3 + 216);
    LOBYTE(v444) = 18;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v46 = *(v3 + 224);
    v47 = *(v3 + 232);
    LOBYTE(v444) = 19;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v48 = *(v3 + 240);
    v49 = *(v3 + 248);
    LOBYTE(v444) = 20;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v50 = *(v3 + 256);
    v51 = *(v3 + 264);
    LOBYTE(v444) = 21;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v52 = *(v3 + 272);
    v53 = *(v3 + 280);
    LOBYTE(v444) = 22;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v54 = *(v3 + 288);
    v55 = *(v3 + 296);
    LOBYTE(v444) = 23;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v56 = *(v3 + 304);
    v57 = *(v3 + 312);
    LOBYTE(v444) = 24;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v58 = *(v3 + 313);
    LOBYTE(v444) = 25;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    *&v444 = *(v3 + 320);
    LOBYTE(v437) = 26;
    sub_1000BC4D4(&qword_101697E90, &qword_10138EB50);
    sub_10090CFE8();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v59 = *(v3 + 328);
    v60 = *(v3 + 336);
    LOBYTE(v444) = 27;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v61 = *(v3 + 344);
    v62 = *(v3 + 352);
    LOBYTE(v444) = 28;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v63 = *(v3 + 360);
    v64 = *(v3 + 368);
    LOBYTE(v444) = 29;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v65 = *(v3 + 376);
    v66 = *(v3 + 384);
    LOBYTE(v444) = 30;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v67 = *(v3 + 392);
    v68 = *(v3 + 400);
    LOBYTE(v444) = 31;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v69 = *(v3 + 408);
    v70 = *(v3 + 416);
    LOBYTE(v444) = 32;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v71 = *(v3 + 424);
    v72 = *(v3 + 432);
    LOBYTE(v444) = 33;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v73 = *(v3 + 440);
    v74 = *(v3 + 448);
    LOBYTE(v444) = 34;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v75 = *(v3 + 456);
    v76 = *(v3 + 464);
    LOBYTE(v444) = 35;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v77 = *(v3 + 472);
    v78 = *(v3 + 480);
    LOBYTE(v444) = 36;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v79 = *(v3 + 481);
    LOBYTE(v444) = 37;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v80 = *(v3 + 488);
    v81 = *(v3 + 496);
    LOBYTE(v444) = 38;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v82 = *(v3 + 504);
    v83 = *(v3 + 512);
    LOBYTE(v444) = 39;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v84 = *(v3 + 520);
    v85 = *(v3 + 528);
    LOBYTE(v444) = 40;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v86 = *(v3 + 536);
    v87 = *(v3 + 544);
    LOBYTE(v444) = 41;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v88 = *(v3 + 552);
    v89 = *(v3 + 560);
    LOBYTE(v444) = 42;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v90 = *(v3 + 568);
    v91 = *(v3 + 576);
    LOBYTE(v444) = 43;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v92 = *(v3 + 584);
    v93 = *(v3 + 592);
    LOBYTE(v444) = 44;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    *&v444 = *(v3 + 600);
    LOBYTE(v437) = 45;
    sub_1000BC4D4(&qword_101697EA0, &qword_10138EB60);
    sub_10090D0F8(&qword_1016AE2C0, sub_10090D170);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v94 = *(v3 + 608);
    v95 = *(v3 + 616);
    LOBYTE(v444) = 46;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v96 = *(v3 + 624);
    v97 = *(v3 + 632);
    LOBYTE(v444) = 47;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    *&v444 = *(v3 + 640);
    LOBYTE(v437) = 48;
    type metadata accessor for SPServiceState(0);
    sub_10090D1C4(&qword_1016AE2D0, type metadata accessor for SPServiceState);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *&v444 = *(v3 + 648);
    LOBYTE(v437) = 49;
    sub_1000BC4D4(&qword_101697E78, &qword_1013F0760);
    sub_10090CEA4(&qword_1016AE2D8, &qword_1016AE2E0);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v98 = *(v3 + 656);
    v99 = *(v3 + 664);
    LOBYTE(v444) = 50;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v100 = *(v3 + 672);
    v101 = *(v3 + 680);
    LOBYTE(v444) = 51;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v102 = *(v3 + 688);
    v103 = *(v3 + 696);
    LOBYTE(v444) = 52;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v104 = *(v3 + 704);
    v105 = *(v3 + 712);
    LOBYTE(v444) = 53;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v106 = *(v3 + 720);
    v107 = *(v3 + 728);
    LOBYTE(v444) = 54;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v108 = *(v3 + 729);
    LOBYTE(v444) = 55;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v109 = type metadata accessor for DefaultConfigurationLayer();
    v110 = v109[60];
    LOBYTE(v444) = 56;
    type metadata accessor for UUID();
    sub_10090D1C4(&qword_101698330, &type metadata accessor for UUID);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v111 = v109[61];
    LOBYTE(v444) = 57;
    type metadata accessor for Date();
    v452 = sub_10090D1C4(&unk_101697F60, &type metadata accessor for Date);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v112 = (v28 + v109[62]);
    v113 = *v112;
    v114 = *(v112 + 8);
    LOBYTE(v444) = 58;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v115 = v109[63];
    LOBYTE(v444) = 59;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v116 = (v28 + v109[64]);
    v117 = *v116;
    v118 = *(v116 + 8);
    LOBYTE(v444) = 60;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v119 = (v28 + v109[65]);
    v120 = *v119;
    v121 = *(v119 + 8);
    LOBYTE(v444) = 61;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v122 = (v28 + v109[66]);
    v123 = *v122;
    v124 = *(v122 + 8);
    LOBYTE(v444) = 62;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v125 = (v28 + v109[67]);
    v126 = *v125;
    v127 = *(v125 + 8);
    LOBYTE(v444) = 63;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v128 = (v28 + v109[68]);
    v129 = *v128;
    v130 = *(v128 + 8);
    LOBYTE(v444) = 64;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v131 = (v28 + v109[69]);
    v132 = *v131;
    v133 = *(v131 + 8);
    v451 = 65;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v134 = (v28 + v109[70]);
    v135 = v134[4];
    v136 = v134[2];
    v447 = v134[3];
    v448 = v135;
    v137 = v134[4];
    v138 = v134[6];
    v449 = v134[5];
    v450 = v138;
    v139 = *v134;
    v140 = v134[2];
    v445 = v134[1];
    v446 = v140;
    v141 = *v134;
    v441 = v137;
    v442 = v449;
    v443 = v134[6];
    v444 = v141;
    v437 = v139;
    v438 = v445;
    v439 = v136;
    v440 = v447;
    v436 = 66;
    sub_1000D2A70(&v444, v435, &qword_1016ADCE8, &qword_1013C53A0);
    sub_10090D20C();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v435[4] = v441;
    v435[5] = v442;
    v435[6] = v443;
    v435[0] = v437;
    v435[1] = v438;
    v435[2] = v439;
    v435[3] = v440;
    sub_10000B3A8(v435, &qword_1016ADCE8, &qword_1013C53A0);
    v142 = *(v28 + v109[71]);
    LOBYTE(v434) = 67;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v143 = *(v28 + v109[72]);
    LOBYTE(v434) = 68;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v144 = *(v28 + v109[73]);
    LOBYTE(v434) = 69;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v145 = (v28 + v109[74]);
    v146 = *v145;
    v147 = *(v145 + 8);
    LOBYTE(v434) = 70;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v148 = (v28 + v109[75]);
    v149 = *v148;
    v150 = *(v148 + 8);
    LOBYTE(v434) = 71;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v151 = (v28 + v109[76]);
    v152 = *v151;
    v153 = *(v151 + 8);
    LOBYTE(v434) = 72;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v154 = (v28 + v109[77]);
    v155 = *v154;
    v156 = *(v154 + 8);
    LOBYTE(v434) = 73;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v157 = (v28 + v109[78]);
    v158 = *v157;
    v159 = *(v157 + 8);
    LOBYTE(v434) = 74;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v160 = (v28 + v109[79]);
    v161 = *v160;
    v162 = *(v160 + 8);
    LOBYTE(v434) = 75;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v163 = (v28 + v109[80]);
    v164 = *v163;
    v165 = *(v163 + 8);
    LOBYTE(v434) = 76;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v166 = (v28 + v109[81]);
    v167 = *v166;
    v168 = *(v166 + 8);
    LOBYTE(v434) = 77;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v169 = (v28 + v109[82]);
    v170 = *v169;
    v171 = *(v169 + 8);
    LOBYTE(v434) = 78;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v172 = (v28 + v109[83]);
    v173 = *v172;
    v174 = v172[1];
    LOBYTE(v434) = 79;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v175 = (v28 + v109[84]);
    v176 = *v175;
    v177 = *(v175 + 8);
    LOBYTE(v434) = 80;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v178 = (v28 + v109[85]);
    v179 = *v178;
    v180 = v178[1];
    LOBYTE(v434) = 81;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v181 = (v28 + v109[86]);
    v182 = *v181;
    v183 = *(v181 + 8);
    LOBYTE(v434) = 82;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v434 = *(v28 + v109[87]);
    BYTE4(v433) = 83;
    v184 = sub_1000BC4D4(&qword_101697E40, qword_1013C5620);
    sub_100391400(&qword_10169EA40);
    v452 = v184;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v185 = (v28 + v109[88]);
    v186 = *v185;
    v187 = v185[1];
    LOBYTE(v434) = 84;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v188 = (v28 + v109[89]);
    v189 = *v188;
    v190 = *(v188 + 8);
    LOBYTE(v434) = 85;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v191 = *(v28 + v109[90]);
    LOBYTE(v434) = 86;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v192 = *(v28 + v109[91]);
    LOBYTE(v434) = 87;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v193 = *(v28 + v109[92]);
    LOBYTE(v434) = 88;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v194 = *(v28 + v109[93]);
    LOBYTE(v434) = 89;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v195 = (v28 + v109[94]);
    v196 = *v195;
    v197 = *(v195 + 8);
    LOBYTE(v434) = 90;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v198 = (v28 + v109[95]);
    v199 = *v198;
    v200 = *(v198 + 8);
    LOBYTE(v434) = 91;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v201 = (v28 + v109[96]);
    v202 = *v201;
    v203 = *(v201 + 8);
    LOBYTE(v434) = 92;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v204 = (v28 + v109[97]);
    v205 = *v204;
    v206 = *(v204 + 8);
    LOBYTE(v434) = 93;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v207 = (v28 + v109[98]);
    v208 = *v207;
    v209 = *(v207 + 8);
    LOBYTE(v434) = 94;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v210 = (v28 + v109[99]);
    v211 = *v210;
    v212 = *(v210 + 8);
    LOBYTE(v434) = 95;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v213 = (v28 + v109[100]);
    v214 = *v213;
    v215 = *(v213 + 8);
    LOBYTE(v434) = 96;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v216 = (v28 + v109[101]);
    v217 = *v216;
    v218 = *(v216 + 8);
    LOBYTE(v434) = 97;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v219 = (v28 + v109[102]);
    v220 = *v219;
    v221 = *(v219 + 8);
    LOBYTE(v434) = 98;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v222 = (v28 + v109[103]);
    v223 = *v222;
    v224 = *(v222 + 8);
    LOBYTE(v434) = 99;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v225 = (v28 + v109[104]);
    v226 = *v225;
    v227 = *(v225 + 8);
    LOBYTE(v434) = 100;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v228 = (v28 + v109[105]);
    v229 = *v228;
    v230 = *(v228 + 8);
    LOBYTE(v434) = 101;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v231 = (v28 + v109[106]);
    v232 = *v231;
    v233 = *(v231 + 8);
    LOBYTE(v434) = 102;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v234 = (v28 + v109[107]);
    v235 = *v234;
    v236 = *(v234 + 8);
    LOBYTE(v434) = 103;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v237 = (v28 + v109[108]);
    v238 = *v237;
    v239 = *(v237 + 8);
    LOBYTE(v434) = 104;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v240 = (v28 + v109[109]);
    v241 = *v240;
    v242 = *(v240 + 8);
    LOBYTE(v434) = 105;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v243 = (v28 + v109[110]);
    v244 = *v243;
    v245 = *(v243 + 8);
    LOBYTE(v434) = 106;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v246 = (v28 + v109[111]);
    v247 = *v246;
    v248 = *(v246 + 8);
    LOBYTE(v434) = 107;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v249 = (v28 + v109[112]);
    v250 = *v249;
    v251 = *(v249 + 8);
    LOBYTE(v434) = 108;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v252 = (v28 + v109[113]);
    v253 = *v252;
    v254 = *(v252 + 8);
    LOBYTE(v434) = 109;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v255 = (v28 + v109[114]);
    v256 = *v255;
    v257 = *(v255 + 8);
    LOBYTE(v434) = 110;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v258 = (v28 + v109[115]);
    v259 = *v258;
    v260 = *(v258 + 8);
    LOBYTE(v434) = 111;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v261 = *(v28 + v109[116]);
    LOBYTE(v434) = 112;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v262 = (v28 + v109[117]);
    v263 = *v262;
    v264 = *(v262 + 8);
    LOBYTE(v434) = 113;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v265 = (v28 + v109[118]);
    v266 = *v265;
    v267 = *(v265 + 8);
    LOBYTE(v434) = 114;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v268 = (v28 + v109[119]);
    v269 = *v268;
    v270 = *(v268 + 8);
    LOBYTE(v434) = 115;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v271 = *(v28 + v109[120]);
    LOBYTE(v434) = 116;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v272 = *(v28 + v109[121]);
    LOBYTE(v434) = 117;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v273 = *(v28 + v109[122]);
    LOBYTE(v434) = 118;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v274 = (v28 + v109[123]);
    v275 = *v274;
    v276 = *(v274 + 8);
    LOBYTE(v434) = 119;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v277 = (v28 + v109[124]);
    v278 = *v277;
    v279 = *(v277 + 8);
    LOBYTE(v434) = 120;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v280 = (v28 + v109[125]);
    v281 = *v280;
    v282 = *(v280 + 8);
    LOBYTE(v434) = 121;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v283 = (v28 + v109[126]);
    v284 = *v283;
    v285 = *(v283 + 8);
    LOBYTE(v434) = 122;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v286 = (v28 + v109[127]);
    v287 = *v286;
    v288 = *(v286 + 8);
    LOBYTE(v434) = 123;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v289 = (v28 + v109[128]);
    v290 = *v289;
    v291 = *(v289 + 8);
    LOBYTE(v434) = 124;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v292 = (v28 + v109[129]);
    v293 = *v292;
    v294 = *(v292 + 8);
    LOBYTE(v434) = 125;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v295 = (v28 + v109[130]);
    v296 = *v295;
    v297 = *(v295 + 8);
    LOBYTE(v434) = 126;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v298 = *(v28 + v109[131]);
    LOBYTE(v434) = 127;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v299 = (v28 + v109[132]);
    v300 = *v299;
    v301 = *(v299 + 8);
    LOBYTE(v434) = 0x80;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v434 = *(v28 + v109[133]);
    BYTE4(v433) = -127;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v302 = (v28 + v109[134]);
    v303 = *v302;
    v304 = *(v302 + 8);
    LOBYTE(v434) = -126;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v305 = *(v28 + v109[135]);
    LOBYTE(v434) = -125;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v434 = *(v28 + v109[136]);
    BYTE4(v433) = -124;
    sub_1000BC4D4(&qword_101697E28, &qword_10138EA70);
    sub_10090D260(&qword_1016AE2F0);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v306 = *(v28 + v109[137]);
    LOBYTE(v434) = -123;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v307 = (v28 + v109[138]);
    v308 = *v307;
    v309 = *(v307 + 8);
    LOBYTE(v434) = -122;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v310 = (v28 + v109[139]);
    v311 = *v310;
    v312 = *(v310 + 8);
    LOBYTE(v434) = -121;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v313 = *(v28 + v109[140]);
    LOBYTE(v434) = -120;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v314 = *(v28 + v109[141]);
    LOBYTE(v434) = -119;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v315 = (v28 + v109[142]);
    v316 = *v315;
    v317 = *(v315 + 8);
    LOBYTE(v434) = -118;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v318 = (v28 + v109[143]);
    v319 = *v318;
    v320 = *(v318 + 8);
    LOBYTE(v434) = -117;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v321 = (v28 + v109[144]);
    v322 = *v321;
    v323 = *(v321 + 8);
    LOBYTE(v434) = -116;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v324 = (v28 + v109[145]);
    v325 = *v324;
    v326 = *(v324 + 8);
    LOBYTE(v434) = -115;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v327 = (v28 + v109[146]);
    v328 = *v327;
    v329 = *(v327 + 8);
    LOBYTE(v434) = -114;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v330 = (v28 + v109[147]);
    v331 = *v330;
    v332 = *(v330 + 8);
    LOBYTE(v434) = -113;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v333 = (v28 + v109[148]);
    v334 = *v333;
    v335 = *(v333 + 8);
    LOBYTE(v434) = -112;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v336 = (v28 + v109[149]);
    v337 = *v336;
    v338 = *(v336 + 8);
    LOBYTE(v434) = -111;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v339 = (v28 + v109[150]);
    v340 = *v339;
    v341 = *(v339 + 8);
    LOBYTE(v434) = -110;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v342 = (v28 + v109[151]);
    v343 = *v342;
    v344 = *(v342 + 8);
    LOBYTE(v434) = -109;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v345 = (v28 + v109[152]);
    v346 = *v345;
    v347 = *(v345 + 8);
    LOBYTE(v434) = -108;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v348 = (v28 + v109[153]);
    v349 = *v348;
    v350 = *(v348 + 8);
    LOBYTE(v434) = -107;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v351 = (v28 + v109[154]);
    v352 = *v351;
    v353 = *(v351 + 8);
    LOBYTE(v434) = -106;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v354 = (v28 + v109[155]);
    v355 = *v354;
    v356 = *(v354 + 8);
    LOBYTE(v434) = -105;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v357 = (v28 + v109[156]);
    v358 = *v357;
    v359 = *(v357 + 8);
    LOBYTE(v434) = -104;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v360 = (v28 + v109[157]);
    v361 = *v360;
    v362 = *(v360 + 8);
    LOBYTE(v434) = -103;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v363 = (v28 + v109[158]);
    v364 = *v363;
    v365 = *(v363 + 8);
    LOBYTE(v434) = -102;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v366 = (v28 + v109[159]);
    v367 = *v366;
    v368 = *(v366 + 8);
    LOBYTE(v434) = -101;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v369 = *(v28 + v109[160]);
    LOBYTE(v434) = -100;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v370 = (v28 + v109[161]);
    v371 = *v370;
    v372 = *(v370 + 8);
    LOBYTE(v434) = -99;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v373 = (v28 + v109[162]);
    v374 = *v373;
    v375 = *(v373 + 8);
    LOBYTE(v434) = -98;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v376 = (v28 + v109[163]);
    v377 = *v376;
    v378 = *(v376 + 8);
    LOBYTE(v434) = -97;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v379 = (v28 + v109[164]);
    v380 = *v379;
    v381 = v379[1];
    LOBYTE(v434) = -96;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v382 = (v28 + v109[165]);
    v383 = *v382;
    v384 = *(v382 + 8);
    LOBYTE(v434) = -95;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v385 = *(v28 + v109[166]);
    LOBYTE(v434) = -94;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v386 = (v28 + v109[167]);
    v387 = *v386;
    v388 = *(v386 + 8);
    LOBYTE(v434) = -93;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v389 = *(v28 + v109[168]);
    LOBYTE(v434) = -92;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v390 = (v28 + v109[169]);
    v391 = *v390;
    v392 = *(v390 + 8);
    LOBYTE(v434) = -91;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v393 = (v28 + v109[170]);
    v394 = *v393;
    v395 = *(v393 + 8);
    LOBYTE(v434) = -90;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v396 = *(v28 + v109[171]);
    LOBYTE(v434) = -89;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v397 = (v28 + v109[172]);
    v398 = *v397;
    LOBYTE(v397) = *(v397 + 4);
    LOBYTE(v434) = -88;
    BYTE4(v433) = v397;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v399 = (v28 + v109[173]);
    v400 = *v399;
    v401 = *(v399 + 8);
    LOBYTE(v434) = -87;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v402 = (v28 + v109[174]);
    v403 = *v402;
    v404 = *(v402 + 8);
    LOBYTE(v434) = -86;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v405 = (v28 + v109[175]);
    v406 = *v405;
    v407 = *(v405 + 8);
    LOBYTE(v434) = -85;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v408 = (v28 + v109[176]);
    v409 = *v408;
    v410 = *(v408 + 8);
    LOBYTE(v434) = -84;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v411 = (v28 + v109[177]);
    v412 = *v411;
    v413 = *(v411 + 8);
    LOBYTE(v434) = -83;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v414 = (v28 + v109[178]);
    v415 = *v414;
    v416 = *(v414 + 8);
    LOBYTE(v434) = -82;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v417 = (v28 + v109[179]);
    v418 = *v417;
    v419 = *(v417 + 8);
    LOBYTE(v434) = -81;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v420 = *(v28 + v109[180]);
    LOBYTE(v434) = -80;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v421 = (v28 + v109[181]);
    v422 = *v421;
    v423 = *(v421 + 8);
    LOBYTE(v434) = -79;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v424 = (v28 + v109[182]);
    v425 = *v424;
    v426 = *(v424 + 8);
    LOBYTE(v434) = -78;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v427 = (v28 + v109[183]);
    v428 = *v427;
    v429 = v427[1];
    LOBYTE(v434) = -77;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v430 = (v28 + v109[184]);
    v431 = *v430;
    v432 = *(v430 + 8);
    LOBYTE(v434) = -76;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    return (*(v13 + 8))(v30, v16);
  }
}

void sub_1008FF11C(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v443 = a2;
  v3 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = v441 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v441 - v8;
  v10 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = v441 - v12;
  v446 = sub_1000BC4D4(&qword_1016AE240, &qword_1013C56B8);
  v444 = *(v446 - 8);
  v14 = *(v444 + 64);
  __chkstk_darwin(v446);
  v16 = v441 - v15;
  v17 = type metadata accessor for DefaultConfigurationLayer();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  v20 = v441 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1[3];
  v22 = a1[4];
  v448 = a1;
  sub_1000035D0(a1, v21);
  sub_10090CCEC();
  v445 = v16;
  v23 = v447;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v23)
  {
    sub_100007BAC(v448);
  }

  else
  {
    v24 = v13;
    v25 = v444;
    v442 = v17;
    v447 = v20;
    LOBYTE(v449) = 0;
    sub_1000E307C();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v26 = v447;
    *v447 = v450;
    LOBYTE(v450) = 1;
    *(v26 + 2) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v26[24] = v27 & 1;
    LOBYTE(v449) = 2;
    sub_10090CD40();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v26[25] = v450;
    LOBYTE(v450) = 3;
    *(v26 + 4) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v26[40] = v28 & 1;
    LOBYTE(v450) = 4;
    *(v26 + 6) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v26[56] = v29 & 1;
    LOBYTE(v450) = 5;
    v26[57] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v441[3] = sub_1000BC4D4(&qword_1016B0470, &qword_10138EB80);
    LOBYTE(v449) = 6;
    sub_100758BE4(&qword_1016A8A58);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    *(v26 + 8) = v450;
    LOBYTE(v450) = 7;
    v26[72] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    LOBYTE(v450) = 8;
    v30 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v31 = v447;
    *(v447 + 10) = v30;
    *(v31 + 11) = v32;
    LOBYTE(v450) = 9;
    v33 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v34 = v447;
    *(v447 + 12) = v33;
    v34[104] = v35 & 1;
    LOBYTE(v450) = 10;
    v447[105] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    LOBYTE(v450) = 11;
    v447[106] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    LOBYTE(v450) = 12;
    v36 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v37 = v447;
    *(v447 + 14) = v36;
    v37[120] = v38 & 1;
    LOBYTE(v450) = 13;
    v39 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v40 = v447;
    *(v447 + 16) = v39;
    v40[136] = v41 & 1;
    LOBYTE(v450) = 14;
    v42 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v43 = v447;
    *(v447 + 18) = v42;
    v43[152] = v44 & 1;
    LOBYTE(v450) = 15;
    v45 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v46 = v447;
    *(v447 + 20) = v45;
    v46[168] = v47 & 1;
    LOBYTE(v450) = 16;
    v48 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v49 = v447;
    *(v447 + 22) = v48;
    v49[184] = v50 & 1;
    LOBYTE(v450) = 17;
    v51 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v52 = v447;
    *(v447 + 24) = v51;
    v52[200] = v53 & 1;
    LOBYTE(v450) = 18;
    v54 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v55 = v447;
    *(v447 + 26) = v54;
    v55[216] = v56 & 1;
    LOBYTE(v450) = 19;
    v57 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v58 = v447;
    *(v447 + 28) = v57;
    v58[232] = v59 & 1;
    LOBYTE(v450) = 20;
    v60 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v61 = v447;
    *(v447 + 30) = v60;
    v61[248] = v62 & 1;
    LOBYTE(v450) = 21;
    v63 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v64 = v447;
    *(v447 + 32) = v63;
    v64[264] = v65 & 1;
    LOBYTE(v450) = 22;
    v66 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v67 = v447;
    *(v447 + 34) = v66;
    v67[280] = v68 & 1;
    LOBYTE(v450) = 23;
    v69 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v70 = v447;
    *(v447 + 36) = v69;
    v70[296] = v71 & 1;
    LOBYTE(v450) = 24;
    v72 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v73 = v447;
    *(v447 + 38) = v72;
    v73[312] = v74 & 1;
    LOBYTE(v450) = 25;
    v447[313] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    sub_1000BC4D4(&qword_101697E90, &qword_10138EB50);
    LOBYTE(v449) = 26;
    sub_10090CD94();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    *(v447 + 40) = v450;
    LOBYTE(v450) = 27;
    v75 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v76 = v447;
    *(v447 + 41) = v75;
    v76[336] = v77 & 1;
    LOBYTE(v450) = 28;
    v78 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v79 = v447;
    *(v447 + 43) = v78;
    v79[352] = v80 & 1;
    LOBYTE(v450) = 29;
    v81 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v82 = v447;
    *(v447 + 45) = v81;
    v82[368] = v83 & 1;
    LOBYTE(v450) = 30;
    v84 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v85 = v447;
    *(v447 + 47) = v84;
    v85[384] = v86 & 1;
    LOBYTE(v450) = 31;
    v87 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v88 = v447;
    *(v447 + 49) = v87;
    v88[400] = v89 & 1;
    LOBYTE(v450) = 32;
    v90 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v91 = v447;
    *(v447 + 51) = v90;
    v91[416] = v92 & 1;
    LOBYTE(v450) = 33;
    v93 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v94 = v447;
    *(v447 + 53) = v93;
    v94[432] = v95 & 1;
    LOBYTE(v450) = 34;
    v96 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v97 = v447;
    *(v447 + 55) = v96;
    v97[448] = v98 & 1;
    LOBYTE(v450) = 35;
    v99 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v100 = v447;
    *(v447 + 57) = v99;
    v100[464] = v101 & 1;
    LOBYTE(v450) = 36;
    v102 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v103 = v447;
    *(v447 + 59) = v102;
    v103[480] = v104 & 1;
    LOBYTE(v450) = 37;
    v447[481] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    LOBYTE(v450) = 38;
    v105 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v106 = v447;
    *(v447 + 61) = v105;
    v106[496] = v107 & 1;
    LOBYTE(v450) = 39;
    v108 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v109 = v447;
    *(v447 + 63) = v108;
    v109[512] = v110 & 1;
    LOBYTE(v450) = 40;
    v111 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v112 = v447;
    *(v447 + 65) = v111;
    v112[528] = v113 & 1;
    LOBYTE(v450) = 41;
    v114 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v115 = v447;
    *(v447 + 67) = v114;
    v115[544] = v116 & 1;
    LOBYTE(v450) = 42;
    v117 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v118 = v447;
    *(v447 + 69) = v117;
    v118[560] = v119 & 1;
    LOBYTE(v450) = 43;
    v120 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v121 = v447;
    *(v447 + 71) = v120;
    v121[576] = v122 & 1;
    LOBYTE(v450) = 44;
    v123 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v124 = v447;
    *(v447 + 73) = v123;
    v124[592] = v125 & 1;
    sub_1000BC4D4(&qword_101697EA0, &qword_10138EB60);
    LOBYTE(v449) = 45;
    sub_10090D0F8(&qword_1016A81B8, sub_1007413FC);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    *(v447 + 75) = v450;
    LOBYTE(v450) = 46;
    v126 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v127 = v447;
    *(v447 + 76) = v126;
    v127[616] = v128 & 1;
    LOBYTE(v450) = 47;
    v129 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v130 = v447;
    *(v447 + 78) = v129;
    v130[632] = v131 & 1;
    type metadata accessor for SPServiceState(0);
    LOBYTE(v449) = 48;
    sub_10090D1C4(&qword_1016AE270, type metadata accessor for SPServiceState);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    *(v447 + 80) = v450;
    sub_1000BC4D4(&qword_101697E78, &qword_1013F0760);
    LOBYTE(v449) = 49;
    sub_10090CEA4(&qword_1016AE278, &qword_1016AE280);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    *(v447 + 81) = v450;
    LOBYTE(v450) = 50;
    v132 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v133 = v447;
    *(v447 + 82) = v132;
    v133[664] = v134 & 1;
    LOBYTE(v450) = 51;
    v135 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v136 = v447;
    *(v447 + 84) = v135;
    v136[680] = v137 & 1;
    LOBYTE(v450) = 52;
    v138 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v139 = v447;
    *(v447 + 86) = v138;
    v139[696] = v140 & 1;
    LOBYTE(v450) = 53;
    v141 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v142 = v447;
    *(v447 + 88) = v141;
    v142[712] = v143 & 1;
    LOBYTE(v450) = 54;
    v144 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v145 = v447;
    *(v447 + 90) = v144;
    v145[728] = v146 & 1;
    LOBYTE(v450) = 55;
    v447[729] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    type metadata accessor for UUID();
    LOBYTE(v450) = 56;
    sub_10090D1C4(&qword_101698300, &type metadata accessor for UUID);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_1000D2AD8(v24, &v447[v442[60]], &qword_1016980D0, &unk_10138F3B0);
    type metadata accessor for Date();
    LOBYTE(v450) = 57;
    sub_10090D1C4(&qword_101697F40, &type metadata accessor for Date);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_1000D2AD8(v9, &v447[v442[61]], &unk_101696900, &unk_10138B1E0);
    LOBYTE(v450) = 58;
    v147 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v148 = &v447[v442[62]];
    *v148 = v147;
    v148[8] = v149 & 1;
    LOBYTE(v450) = 59;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_1000D2AD8(v7, &v447[v442[63]], &unk_101696900, &unk_10138B1E0);
    LOBYTE(v450) = 60;
    v150 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v151 = &v447[v442[64]];
    *v151 = v150;
    v151[8] = v152 & 1;
    LOBYTE(v450) = 61;
    v153 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v154 = &v447[v442[65]];
    *v154 = v153;
    v154[8] = v155 & 1;
    LOBYTE(v450) = 62;
    v156 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v157 = &v447[v442[66]];
    *v157 = v156;
    v157[8] = v158 & 1;
    LOBYTE(v450) = 63;
    v159 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v160 = &v447[v442[67]];
    *v160 = v159;
    v160[8] = v161 & 1;
    LOBYTE(v450) = 64;
    v162 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v163 = &v447[v442[68]];
    *v163 = v162;
    v163[8] = v164 & 1;
    LOBYTE(v450) = 65;
    v165 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v166 = &v447[v442[69]];
    *v166 = v165;
    v166[8] = v167 & 1;
    v458 = 66;
    sub_10090CF40();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v168 = &v447[v442[70]];
    v169 = v455;
    *(v168 + 4) = v454;
    *(v168 + 5) = v169;
    *(v168 + 6) = v456;
    v170 = v451;
    *v168 = v450;
    *(v168 + 1) = v170;
    v171 = v453;
    *(v168 + 2) = v452;
    *(v168 + 3) = v171;
    LOBYTE(v449) = 67;
    v447[v442[71]] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    LOBYTE(v449) = 68;
    v447[v442[72]] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    LOBYTE(v449) = 69;
    v447[v442[73]] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    LOBYTE(v449) = 70;
    v172 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v173 = &v447[v442[74]];
    *v173 = v172;
    v173[8] = v174 & 1;
    LOBYTE(v449) = 71;
    v175 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v176 = &v447[v442[75]];
    *v176 = v175;
    v176[8] = v177 & 1;
    LOBYTE(v449) = 72;
    v178 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v179 = &v447[v442[76]];
    *v179 = v178;
    v179[8] = v180 & 1;
    LOBYTE(v449) = 73;
    v181 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v182 = &v447[v442[77]];
    *v182 = v181;
    v182[8] = v183 & 1;
    LOBYTE(v449) = 74;
    v184 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v185 = &v447[v442[78]];
    *v185 = v184;
    v185[8] = v186 & 1;
    LOBYTE(v449) = 75;
    v187 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v188 = &v447[v442[79]];
    *v188 = v187;
    v188[8] = v189 & 1;
    LOBYTE(v449) = 76;
    v190 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v191 = &v447[v442[80]];
    *v191 = v190;
    v191[8] = v192 & 1;
    LOBYTE(v449) = 77;
    v193 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v194 = &v447[v442[81]];
    *v194 = v193;
    v194[8] = v195 & 1;
    LOBYTE(v449) = 78;
    v196 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v197 = &v447[v442[82]];
    *v197 = v196;
    v197[8] = v198 & 1;
    LOBYTE(v449) = 79;
    v199 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v200 = &v447[v442[83]];
    *v200 = v199;
    v200[1] = v201;
    LOBYTE(v449) = 80;
    v202 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v203 = &v447[v442[84]];
    *v203 = v202;
    v203[8] = v204 & 1;
    LOBYTE(v449) = 81;
    v205 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v206 = &v447[v442[85]];
    *v206 = v205;
    v206[1] = v207;
    LOBYTE(v449) = 82;
    v208 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v209 = &v447[v442[86]];
    *v209 = v208;
    v209[8] = v210 & 1;
    sub_1000BC4D4(&qword_101697E40, qword_1013C5620);
    v457 = 83;
    sub_100391400(&qword_10169EA80);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    *&v447[v442[87]] = v449;
    LOBYTE(v449) = 84;
    v211 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v212 = &v447[v442[88]];
    *v212 = v211;
    v212[1] = v213;
    LOBYTE(v449) = 85;
    v214 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v215 = &v447[v442[89]];
    *v215 = v214;
    v215[8] = v216 & 1;
    LOBYTE(v449) = 86;
    v447[v442[90]] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    LOBYTE(v449) = 87;
    v447[v442[91]] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    LOBYTE(v449) = 88;
    v447[v442[92]] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    LOBYTE(v449) = 89;
    v447[v442[93]] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    LOBYTE(v449) = 90;
    v217 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v218 = &v447[v442[94]];
    *v218 = v217;
    v218[8] = v219 & 1;
    LOBYTE(v449) = 91;
    v220 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v221 = &v447[v442[95]];
    *v221 = v220;
    v221[8] = v222 & 1;
    LOBYTE(v449) = 92;
    v223 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v224 = &v447[v442[96]];
    *v224 = v223;
    v224[8] = v225 & 1;
    LOBYTE(v449) = 93;
    v226 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v227 = &v447[v442[97]];
    *v227 = v226;
    v227[8] = v228 & 1;
    LOBYTE(v449) = 94;
    v229 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v230 = &v447[v442[98]];
    *v230 = v229;
    v230[8] = v231 & 1;
    LOBYTE(v449) = 95;
    v232 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v233 = &v447[v442[99]];
    *v233 = v232;
    v233[8] = v234 & 1;
    LOBYTE(v449) = 96;
    v235 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v236 = &v447[v442[100]];
    *v236 = v235;
    v236[8] = v237 & 1;
    LOBYTE(v449) = 97;
    v238 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v239 = &v447[v442[101]];
    *v239 = v238;
    v239[8] = v240 & 1;
    LOBYTE(v449) = 98;
    v241 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v242 = &v447[v442[102]];
    *v242 = v241;
    v242[8] = v243 & 1;
    LOBYTE(v449) = 99;
    v244 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v245 = &v447[v442[103]];
    *v245 = v244;
    v245[8] = v246 & 1;
    LOBYTE(v449) = 100;
    v247 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v248 = &v447[v442[104]];
    *v248 = v247;
    v248[8] = v249 & 1;
    LOBYTE(v449) = 101;
    v250 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v251 = &v447[v442[105]];
    *v251 = v250;
    v251[8] = v252 & 1;
    LOBYTE(v449) = 102;
    v253 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v254 = &v447[v442[106]];
    *v254 = v253;
    v254[8] = v255 & 1;
    LOBYTE(v449) = 103;
    v256 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v257 = &v447[v442[107]];
    *v257 = v256;
    v257[8] = v258 & 1;
    LOBYTE(v449) = 104;
    v259 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v260 = &v447[v442[108]];
    *v260 = v259;
    v260[8] = v261 & 1;
    LOBYTE(v449) = 105;
    v262 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v263 = &v447[v442[109]];
    *v263 = v262;
    v263[8] = v264 & 1;
    LOBYTE(v449) = 106;
    v265 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v266 = &v447[v442[110]];
    *v266 = v265;
    v266[8] = v267 & 1;
    LOBYTE(v449) = 107;
    v268 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v269 = &v447[v442[111]];
    *v269 = v268;
    v269[8] = v270 & 1;
    LOBYTE(v449) = 108;
    v271 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v272 = &v447[v442[112]];
    *v272 = v271;
    v272[8] = v273 & 1;
    LOBYTE(v449) = 109;
    v274 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v275 = &v447[v442[113]];
    *v275 = v274;
    v275[8] = v276 & 1;
    LOBYTE(v449) = 110;
    v277 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v278 = &v447[v442[114]];
    *v278 = v277;
    v278[8] = v279 & 1;
    LOBYTE(v449) = 111;
    v280 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v281 = &v447[v442[115]];
    *v281 = v280;
    v281[8] = v282 & 1;
    LOBYTE(v449) = 112;
    v447[v442[116]] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    LOBYTE(v449) = 113;
    v283 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v284 = &v447[v442[117]];
    *v284 = v283;
    v284[8] = v285 & 1;
    LOBYTE(v449) = 114;
    v286 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v287 = &v447[v442[118]];
    *v287 = v286;
    v287[8] = v288 & 1;
    LOBYTE(v449) = 115;
    v289 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v290 = &v447[v442[119]];
    *v290 = v289;
    v290[8] = v291 & 1;
    LOBYTE(v449) = 116;
    v447[v442[120]] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    LOBYTE(v449) = 117;
    v447[v442[121]] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    LOBYTE(v449) = 118;
    v447[v442[122]] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    LOBYTE(v449) = 119;
    v292 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v293 = &v447[v442[123]];
    *v293 = v292;
    v293[8] = v294 & 1;
    LOBYTE(v449) = 120;
    v295 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v296 = &v447[v442[124]];
    *v296 = v295;
    v296[8] = v297 & 1;
    LOBYTE(v449) = 121;
    v298 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v299 = &v447[v442[125]];
    *v299 = v298;
    v299[8] = v300 & 1;
    LOBYTE(v449) = 122;
    v301 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v302 = &v447[v442[126]];
    *v302 = v301;
    v302[8] = v303 & 1;
    LOBYTE(v449) = 123;
    v304 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v305 = &v447[v442[127]];
    *v305 = v304;
    v305[8] = v306 & 1;
    LOBYTE(v449) = 124;
    v307 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v308 = &v447[v442[128]];
    *v308 = v307;
    v308[8] = v309 & 1;
    LOBYTE(v449) = 125;
    v310 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v311 = &v447[v442[129]];
    *v311 = v310;
    v311[8] = v312 & 1;
    LOBYTE(v449) = 126;
    v313 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v314 = &v447[v442[130]];
    *v314 = v313;
    v314[8] = v315 & 1;
    LOBYTE(v449) = 127;
    v447[v442[131]] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    LOBYTE(v449) = 0x80;
    v316 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v317 = &v447[v442[132]];
    *v317 = v316;
    v317[8] = v318 & 1;
    v457 = -127;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    *&v447[v442[133]] = v449;
    LOBYTE(v449) = -126;
    v319 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v320 = &v447[v442[134]];
    *v320 = v319;
    v320[8] = v321 & 1;
    LOBYTE(v449) = -125;
    v447[v442[135]] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    sub_1000BC4D4(&qword_101697E28, &qword_10138EA70);
    v457 = -124;
    sub_10090D260(&qword_1016AE290);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    *&v447[v442[136]] = v449;
    LOBYTE(v449) = -123;
    v447[v442[137]] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    LOBYTE(v449) = -122;
    v322 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v323 = &v447[v442[138]];
    *v323 = v322;
    v323[8] = v324 & 1;
    LOBYTE(v449) = -121;
    v325 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v326 = &v447[v442[139]];
    *v326 = v325;
    v326[8] = v327 & 1;
    LOBYTE(v449) = -120;
    v447[v442[140]] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    LOBYTE(v449) = -119;
    v447[v442[141]] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    LOBYTE(v449) = -118;
    v328 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v329 = &v447[v442[142]];
    *v329 = v328;
    v329[8] = v330 & 1;
    LOBYTE(v449) = -117;
    v331 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v332 = &v447[v442[143]];
    *v332 = v331;
    v332[8] = v333 & 1;
    LOBYTE(v449) = -116;
    v334 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v335 = &v447[v442[144]];
    *v335 = v334;
    v335[8] = v336 & 1;
    LOBYTE(v449) = -115;
    v337 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v338 = &v447[v442[145]];
    *v338 = v337;
    v338[8] = v339 & 1;
    LOBYTE(v449) = -114;
    v340 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v341 = &v447[v442[146]];
    *v341 = v340;
    v341[8] = v342 & 1;
    LOBYTE(v449) = -113;
    v343 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v344 = &v447[v442[147]];
    *v344 = v343;
    v344[8] = v345 & 1;
    LOBYTE(v449) = -112;
    v346 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v347 = &v447[v442[148]];
    *v347 = v346;
    v347[8] = v348 & 1;
    LOBYTE(v449) = -111;
    v349 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v350 = &v447[v442[149]];
    *v350 = v349;
    v350[8] = v351 & 1;
    LOBYTE(v449) = -110;
    v352 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v353 = &v447[v442[150]];
    *v353 = v352;
    v353[8] = v354 & 1;
    LOBYTE(v449) = -109;
    v355 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v356 = &v447[v442[151]];
    *v356 = v355;
    v356[8] = v357 & 1;
    LOBYTE(v449) = -108;
    v358 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v359 = &v447[v442[152]];
    *v359 = v358;
    v359[8] = v360 & 1;
    LOBYTE(v449) = -107;
    v361 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v362 = &v447[v442[153]];
    *v362 = v361;
    v362[8] = v363 & 1;
    LOBYTE(v449) = -106;
    v364 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v365 = &v447[v442[154]];
    *v365 = v364;
    v365[8] = v366 & 1;
    LOBYTE(v449) = -105;
    v367 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v368 = &v447[v442[155]];
    *v368 = v367;
    v368[8] = v369 & 1;
    LOBYTE(v449) = -104;
    v370 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v371 = &v447[v442[156]];
    *v371 = v370;
    v371[8] = v372 & 1;
    LOBYTE(v449) = -103;
    v373 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v374 = &v447[v442[157]];
    *v374 = v373;
    v374[8] = v375 & 1;
    LOBYTE(v449) = -102;
    v376 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v377 = &v447[v442[158]];
    *v377 = v376;
    v377[8] = v378 & 1;
    LOBYTE(v449) = -101;
    v379 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v380 = &v447[v442[159]];
    *v380 = v379;
    v380[8] = v381 & 1;
    LOBYTE(v449) = -100;
    v447[v442[160]] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    LOBYTE(v449) = -99;
    v382 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v383 = &v447[v442[161]];
    *v383 = v382;
    v383[8] = v384 & 1;
    LOBYTE(v449) = -98;
    v385 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v386 = &v447[v442[162]];
    *v386 = v385;
    v386[8] = v387 & 1;
    LOBYTE(v449) = -97;
    v388 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v389 = &v447[v442[163]];
    *v389 = v388;
    v389[8] = v390 & 1;
    LOBYTE(v449) = -96;
    v391 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v392 = &v447[v442[164]];
    *v392 = v391;
    v392[1] = v393;
    LOBYTE(v449) = -95;
    v394 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v395 = &v447[v442[165]];
    *v395 = v394;
    v395[8] = v396 & 1;
    LOBYTE(v449) = -94;
    v447[v442[166]] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    LOBYTE(v449) = -93;
    v397 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v398 = &v447[v442[167]];
    *v398 = v397;
    v398[8] = v399 & 1;
    LOBYTE(v449) = -92;
    v447[v442[168]] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    LOBYTE(v449) = -91;
    v400 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v401 = &v447[v442[169]];
    *v401 = v400;
    v401[8] = v402 & 1;
    LOBYTE(v449) = -90;
    v403 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v404 = &v447[v442[170]];
    *v404 = v403;
    v404[8] = v405 & 1;
    LOBYTE(v449) = -89;
    v447[v442[171]] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    LOBYTE(v449) = -88;
    v406 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v407 = &v447[v442[172]];
    *v407 = v406;
    v407[4] = BYTE4(v406) & 1;
    LOBYTE(v449) = -87;
    v408 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v409 = &v447[v442[173]];
    *v409 = v408;
    v409[8] = v410 & 1;
    LOBYTE(v449) = -86;
    v411 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v412 = &v447[v442[174]];
    *v412 = v411;
    v412[8] = v413 & 1;
    LOBYTE(v449) = -85;
    v414 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v415 = &v447[v442[175]];
    *v415 = v414;
    v415[8] = v416 & 1;
    LOBYTE(v449) = -84;
    v417 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v418 = &v447[v442[176]];
    *v418 = v417;
    v418[8] = v419 & 1;
    LOBYTE(v449) = -83;
    v420 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v421 = &v447[v442[177]];
    *v421 = v420;
    v421[8] = v422 & 1;
    LOBYTE(v449) = -82;
    v423 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v424 = &v447[v442[178]];
    *v424 = v423;
    v424[8] = v425 & 1;
    LOBYTE(v449) = -81;
    v426 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v427 = &v447[v442[179]];
    *v427 = v426;
    v427[8] = v428 & 1;
    LOBYTE(v449) = -80;
    v447[v442[180]] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    LOBYTE(v449) = -79;
    v429 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v430 = &v447[v442[181]];
    *v430 = v429;
    v430[8] = v431 & 1;
    LOBYTE(v449) = -78;
    v432 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v433 = &v447[v442[182]];
    *v433 = v432;
    v433[8] = v434 & 1;
    LOBYTE(v449) = -77;
    v435 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v436 = &v447[v442[183]];
    *v436 = v435;
    v436[1] = HIBYTE(v435) & 1;
    LOBYTE(v449) = -76;
    v437 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    LOBYTE(v26) = v438;
    (*(v25 + 8))(v445, v446);
    v439 = v447;
    v440 = &v447[v442[184]];
    *v440 = v437;
    v440[8] = v26 & 1;
    sub_100041EB0(v439, v443);
    sub_100007BAC(v448);
    sub_100041F5C(v439);
  }
}

uint64_t sub_100902CFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10090D528(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100902D30(uint64_t a1)
{
  v2 = sub_10090CCEC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100902D6C(uint64_t a1)
{
  v2 = sub_10090CCEC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100902DA8()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t sub_100902DB4()
{
  result = *(v0 + 32);
  v2 = *(v0 + 40);
  return result;
}

uint64_t sub_100902DC0()
{
  result = *(v0 + 48);
  v2 = *(v0 + 56);
  return result;
}

uint64_t sub_100902DE4()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return v1;
}

uint64_t sub_100902E1C()
{
  result = *(v0 + 96);
  v2 = *(v0 + 104);
  return result;
}

uint64_t sub_100902E30()
{
  result = *(v0 + 112);
  v2 = *(v0 + 120);
  return result;
}

uint64_t sub_100902E3C()
{
  result = *(v0 + 128);
  v2 = *(v0 + 136);
  return result;
}

uint64_t sub_100902E48()
{
  result = *(v0 + 144);
  v2 = *(v0 + 152);
  return result;
}

uint64_t sub_100902E54()
{
  result = *(v0 + 160);
  v2 = *(v0 + 168);
  return result;
}

uint64_t sub_100902E60()
{
  result = *(v0 + 176);
  v2 = *(v0 + 184);
  return result;
}

uint64_t sub_100902E6C()
{
  result = *(v0 + 192);
  v2 = *(v0 + 200);
  return result;
}

uint64_t sub_100902E78()
{
  result = *(v0 + 224);
  v2 = *(v0 + 232);
  return result;
}

uint64_t sub_100902E84()
{
  result = *(v0 + 240);
  v2 = *(v0 + 248);
  return result;
}

uint64_t sub_100902E90()
{
  result = *(v0 + 256);
  v2 = *(v0 + 264);
  return result;
}

uint64_t sub_100902E9C()
{
  result = *(v0 + 272);
  v2 = *(v0 + 280);
  return result;
}

uint64_t sub_100902EA8()
{
  result = *(v0 + 288);
  v2 = *(v0 + 296);
  return result;
}

uint64_t sub_100902EB4()
{
  result = *(v0 + 304);
  v2 = *(v0 + 312);
  return result;
}

uint64_t sub_100902ED0()
{
  result = *(v0 + 328);
  v2 = *(v0 + 336);
  return result;
}

uint64_t sub_100902EDC()
{
  result = *(v0 + 344);
  v2 = *(v0 + 352);
  return result;
}

uint64_t sub_100902EE8()
{
  result = *(v0 + 360);
  v2 = *(v0 + 368);
  return result;
}

uint64_t sub_100902EF4()
{
  result = *(v0 + 376);
  v2 = *(v0 + 384);
  return result;
}

uint64_t sub_100902F00()
{
  result = *(v0 + 392);
  v2 = *(v0 + 400);
  return result;
}

uint64_t sub_100902F0C()
{
  result = *(v0 + 408);
  v2 = *(v0 + 416);
  return result;
}

uint64_t sub_100902F18()
{
  result = *(v0 + 424);
  v2 = *(v0 + 432);
  return result;
}

uint64_t sub_100902F24()
{
  result = *(v0 + 440);
  v2 = *(v0 + 448);
  return result;
}

uint64_t sub_100902F30()
{
  result = *(v0 + 456);
  v2 = *(v0 + 464);
  return result;
}

uint64_t sub_100902F3C()
{
  result = *(v0 + 472);
  v2 = *(v0 + 480);
  return result;
}

uint64_t sub_100902F50()
{
  result = *(v0 + 488);
  v2 = *(v0 + 496);
  return result;
}

uint64_t sub_100902F5C()
{
  result = *(v0 + 504);
  v2 = *(v0 + 512);
  return result;
}

uint64_t sub_100902F68()
{
  result = *(v0 + 520);
  v2 = *(v0 + 528);
  return result;
}

uint64_t sub_100902F74()
{
  result = *(v0 + 536);
  v2 = *(v0 + 544);
  return result;
}

uint64_t sub_100902F80()
{
  result = *(v0 + 552);
  v2 = *(v0 + 560);
  return result;
}

uint64_t sub_100902F8C()
{
  result = *(v0 + 568);
  v2 = *(v0 + 576);
  return result;
}

uint64_t sub_100902F98()
{
  result = *(v0 + 584);
  v2 = *(v0 + 592);
  return result;
}

uint64_t sub_100902FAC()
{
  result = *(v0 + 608);
  v2 = *(v0 + 616);
  return result;
}

uint64_t sub_100902FB8()
{
  result = *(v0 + 624);
  v2 = *(v0 + 632);
  return result;
}

void *sub_100902FC4()
{
  v1 = *(v0 + 640);
  v2 = v1;
  return v1;
}

uint64_t sub_100902FF4()
{
  result = *(v0 + 656);
  v2 = *(v0 + 664);
  return result;
}

uint64_t sub_100903000()
{
  result = *(v0 + 672);
  v2 = *(v0 + 680);
  return result;
}

uint64_t sub_10090300C()
{
  result = *(v0 + 688);
  v2 = *(v0 + 696);
  return result;
}

uint64_t sub_100903018()
{
  result = *(v0 + 704);
  v2 = *(v0 + 712);
  return result;
}

uint64_t sub_100903024()
{
  result = *(v0 + 720);
  v2 = *(v0 + 728);
  return result;
}

uint64_t sub_1009030A0(uint64_t a1)
{
  v2 = (v1 + *(a1 + 248));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_1009030E8(uint64_t a1)
{
  v2 = (v1 + *(a1 + 256));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_1009030FC(uint64_t a1)
{
  v2 = (v1 + *(a1 + 260));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_100903110(uint64_t a1)
{
  v2 = (v1 + *(a1 + 264));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_100903124(uint64_t a1)
{
  v2 = (v1 + *(a1 + 268));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_100903138(uint64_t a1)
{
  v2 = (v1 + *(a1 + 272));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_10090314C(uint64_t a1)
{
  v2 = (v1 + *(a1 + 276));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_1009031B8(uint64_t a1)
{
  v2 = (v1 + *(a1 + 296));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_1009031CC(uint64_t a1)
{
  v2 = (v1 + *(a1 + 300));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_1009031E0(uint64_t a1)
{
  v2 = (v1 + *(a1 + 304));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_1009031F4(uint64_t a1)
{
  v2 = (v1 + *(a1 + 308));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_100903208(uint64_t a1)
{
  v2 = (v1 + *(a1 + 312));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_10090321C(uint64_t a1)
{
  v2 = (v1 + *(a1 + 316));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_100903230(uint64_t a1)
{
  v2 = (v1 + *(a1 + 320));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_100903244(uint64_t a1)
{
  v2 = (v1 + *(a1 + 324));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_100903258(uint64_t a1)
{
  v2 = (v1 + *(a1 + 328));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_10090326C(uint64_t a1)
{
  v2 = (v1 + *(a1 + 332));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_1009032A4(uint64_t a1)
{
  v2 = (v1 + *(a1 + 336));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_1009032B8(uint64_t a1)
{
  v2 = (v1 + *(a1 + 340));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_1009032F0(uint64_t a1)
{
  v2 = (v1 + *(a1 + 344));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_100903310(uint64_t a1)
{
  v2 = (v1 + *(a1 + 352));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_100903348(uint64_t a1)
{
  v2 = (v1 + *(a1 + 356));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_10090338C(uint64_t a1)
{
  v2 = (v1 + *(a1 + 376));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_1009033A0(uint64_t a1)
{
  v2 = (v1 + *(a1 + 380));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_1009033B4(uint64_t a1)
{
  v2 = (v1 + *(a1 + 384));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_1009033C8(uint64_t a1)
{
  v2 = (v1 + *(a1 + 388));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_1009033DC(uint64_t a1)
{
  v2 = (v1 + *(a1 + 392));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_1009033F0(uint64_t a1)
{
  v2 = (v1 + *(a1 + 396));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_100903404(uint64_t a1)
{
  v2 = (v1 + *(a1 + 400));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_100903418(uint64_t a1)
{
  v2 = (v1 + *(a1 + 404));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_10090342C(uint64_t a1)
{
  v2 = (v1 + *(a1 + 408));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_100903440(uint64_t a1)
{
  v2 = (v1 + *(a1 + 412));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_100903454(uint64_t a1)
{
  v2 = (v1 + *(a1 + 416));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_100903468(uint64_t a1)
{
  v2 = (v1 + *(a1 + 420));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_10090347C(uint64_t a1)
{
  v2 = (v1 + *(a1 + 424));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_100903490(uint64_t a1)
{
  v2 = (v1 + *(a1 + 428));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_1009034A4(uint64_t a1)
{
  v2 = (v1 + *(a1 + 432));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_1009034B8(uint64_t a1)
{
  v2 = (v1 + *(a1 + 436));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_1009034CC(uint64_t a1)
{
  v2 = (v1 + *(a1 + 440));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_1009034E0(uint64_t a1)
{
  v2 = (v1 + *(a1 + 444));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_1009034F4(uint64_t a1)
{
  v2 = (v1 + *(a1 + 448));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_100903508(uint64_t a1)
{
  v2 = (v1 + *(a1 + 452));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_10090351C(uint64_t a1)
{
  v2 = (v1 + *(a1 + 456));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_100903530(uint64_t a1)
{
  v2 = (v1 + *(a1 + 460));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_100903550(uint64_t a1)
{
  v2 = (v1 + *(a1 + 468));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_100903564(uint64_t a1)
{
  v2 = (v1 + *(a1 + 472));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_100903578(uint64_t a1)
{
  v2 = (v1 + *(a1 + 476));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_1009035B0(uint64_t a1)
{
  v2 = (v1 + *(a1 + 492));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_1009035C4(uint64_t a1)
{
  v2 = (v1 + *(a1 + 496));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_1009035D8(uint64_t a1)
{
  v2 = (v1 + *(a1 + 500));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_1009035EC(uint64_t a1)
{
  v2 = (v1 + *(a1 + 504));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_100903600(uint64_t a1)
{
  v2 = (v1 + *(a1 + 508));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_100903614(uint64_t a1)
{
  v2 = (v1 + *(a1 + 512));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_100903628(uint64_t a1)
{
  v2 = (v1 + *(a1 + 516));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_10090363C(uint64_t a1)
{
  v2 = (v1 + *(a1 + 520));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_10090365C(uint64_t a1)
{
  v2 = (v1 + *(a1 + 528));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_10090367C(uint64_t a1)
{
  v2 = (v1 + *(a1 + 536));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_1009036B4(uint64_t a1)
{
  v2 = (v1 + *(a1 + 552));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_1009036C8(uint64_t a1)
{
  v2 = (v1 + *(a1 + 556));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_1009036F4(uint64_t a1)
{
  v2 = (v1 + *(a1 + 568));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_100903708(uint64_t a1)
{
  v2 = (v1 + *(a1 + 572));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_10090371C(uint64_t a1)
{
  v2 = (v1 + *(a1 + 576));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_100903730(uint64_t a1)
{
  v2 = (v1 + *(a1 + 580));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_100903744(uint64_t a1)
{
  v2 = (v1 + *(a1 + 584));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_100903758(uint64_t a1)
{
  v2 = (v1 + *(a1 + 588));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_10090376C(uint64_t a1)
{
  v2 = (v1 + *(a1 + 592));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_100903780(uint64_t a1)
{
  v2 = (v1 + *(a1 + 596));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_100903794(uint64_t a1)
{
  v2 = (v1 + *(a1 + 600));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_1009037A8(uint64_t a1)
{
  v2 = (v1 + *(a1 + 604));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_1009037BC(uint64_t a1)
{
  v2 = (v1 + *(a1 + 608));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_1009037D0(uint64_t a1)
{
  v2 = (v1 + *(a1 + 612));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_1009037E4(uint64_t a1)
{
  v2 = (v1 + *(a1 + 616));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_1009037F8(uint64_t a1)
{
  v2 = (v1 + *(a1 + 620));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_10090380C(uint64_t a1)
{
  v2 = (v1 + *(a1 + 624));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_100903820(uint64_t a1)
{
  v2 = (v1 + *(a1 + 628));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_100903834(uint64_t a1)
{
  v2 = (v1 + *(a1 + 632));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_100903848(uint64_t a1)
{
  v2 = (v1 + *(a1 + 636));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_100903868(uint64_t a1)
{
  v2 = (v1 + *(a1 + 644));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_10090387C(uint64_t a1)
{
  v2 = (v1 + *(a1 + 648));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_100903890(uint64_t a1)
{
  v2 = (v1 + *(a1 + 652));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_1009038A4(uint64_t a1)
{
  v2 = (v1 + *(a1 + 656));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_1009038DC(uint64_t a1)
{
  v2 = (v1 + *(a1 + 660));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_1009038FC(uint64_t a1)
{
  v2 = (v1 + *(a1 + 668));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_10090391C(uint64_t a1)
{
  v2 = (v1 + *(a1 + 676));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_100903930(uint64_t a1)
{
  v2 = (v1 + *(a1 + 680));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_100903978(uint64_t a1)
{
  v2 = (v1 + *(a1 + 692));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_10090398C(uint64_t a1)
{
  v2 = (v1 + *(a1 + 696));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_1009039A0(uint64_t a1)
{
  v2 = (v1 + *(a1 + 700));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_1009039B4(uint64_t a1)
{
  v2 = (v1 + *(a1 + 704));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_1009039C8(uint64_t a1)
{
  v2 = (v1 + *(a1 + 708));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_1009039DC(uint64_t a1)
{
  v2 = (v1 + *(a1 + 712));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_1009039F0(uint64_t a1)
{
  v2 = (v1 + *(a1 + 716));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_100903A10(uint64_t a1)
{
  v2 = (v1 + *(a1 + 724));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_100903A24(uint64_t a1)
{
  v2 = (v1 + *(a1 + 728));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_100903A58(uint64_t a1)
{
  v2 = (v1 + *(a1 + 736));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_100903AA0()
{
  sub_10090416C(&off_1016072A8);
  sub_10000B3A8(&unk_1016072C8, &qword_1016ADC80, &qword_1013C52D8);
  v0 = Dictionary<>.dataRepresentation.getter();
  v2 = v1;

  qword_10177B640 = v0;
  *algn_10177B648 = v2;
  return result;
}

uint64_t sub_100903B4C()
{
  sub_1000BC4D4(&qword_1016ADC38, &qword_1013C5298);
  v0 = (sub_1000BC4D4(&qword_1016ADC40, &qword_1013C52A0) - 8);
  v1 = *(*v0 + 72);
  v2 = (*(*v0 + 80) + 32) & ~*(*v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_101385D80;
  v23 = v3 + v2;
  v4 = v3 + v2 + v0[14];
  *(v3 + v2) = 1;
  v22 = sub_100904268(&off_101607340);
  sub_1000BC4D4(&qword_1016ADC48, &qword_1013C52A8);
  swift_arrayDestroy();
  sub_1000BC4D4(&qword_1016ADC50, &qword_1013C52B0);
  v5 = sub_1000BC4D4(&qword_1016ADC58, &qword_1013C52B8);
  v6 = *(*(v5 - 8) + 72);
  v7 = (*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10138C0D0;
  v9 = (v8 + v7);
  v10 = *(v5 + 48);
  *v9 = 0x656E6F685069;
  v9[1] = 0xE600000000000000;
  SystemVersionNumber.init(stringLiteral:)();
  v11 = (v9 + v6);
  v12 = *(v5 + 48);
  *v11 = 1684099177;
  v11[1] = 0xE400000000000000;
  SystemVersionNumber.init(stringLiteral:)();
  v13 = (v9 + 2 * v6);
  v14 = *(v5 + 48);
  *v13 = 0x506B6F6F4263614DLL;
  v13[1] = 0xEA00000000006F72;
  SystemVersionNumber.init(stringLiteral:)();
  v15 = (v9 + 3 * v6);
  v16 = *(v5 + 48);
  *v15 = 0x416B6F6F4263614DLL;
  v15[1] = 0xEA00000000007269;
  SystemVersionNumber.init(stringLiteral:)();
  v17 = (v9 + 4 * v6);
  v18 = *(v5 + 48);
  *v17 = 1685016681;
  v17[1] = 0xE400000000000000;
  SystemVersionNumber.init(stringLiteral:)();
  v19 = sub_100904364(v8);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *v4 = 1;
  *(v4 + 8) = v22;
  *(v4 + 16) = 0;
  *(v4 + 24) = v19;
  *(v4 + 32) = 0;
  LODWORD(v6) = *(type metadata accessor for FeatureSupportMatrix() + 36);
  sub_10088D764();
  sub_10090C518();
  CustomCodableKeyDictionary.init(wrappedValue:)();
  v20 = sub_100904550(v3);
  swift_setDeallocating();
  sub_10000B3A8(v23, &qword_1016ADC40, &qword_1013C52A0);
  result = swift_deallocClassInstance();
  qword_10177B650 = v20;
  return result;
}

id sub_100903F18()
{
  sub_1000BC4D4(&qword_10169EFF8, &qword_1013C5290);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_101385D80;
  v1 = SPDisabledReasoniCloudSignedOut;
  *(v0 + 32) = SPDisabledReasoniCloudSignedOut;
  qword_10177B660 = v0;

  return v1;
}

double sub_100903F80()
{
  xmmword_10177B670 = xmmword_1013C51A0;
  unk_10177B680 = xmmword_1013C51B0;
  xmmword_10177B690 = xmmword_1013C51C0;
  qword_10177B6A0 = &off_1016073D8;
  result = 0.0;
  *algn_10177B6A8 = 0u;
  *(&xmmword_10177B6B0 + 8) = 0u;
  unk_10177B6C8 = 0u;
  *(&xmmword_10177B6D0 + 1) = 0;
  return result;
}

void *sub_100903FCC()
{
  result = sub_100527B94();
  qword_10177B6E0 = result;
  return result;
}

uint64_t sub_100903FEC()
{
  v0 = sub_100904734(&off_101607470);
  result = sub_10000B3A8(&unk_101607490, &qword_1016ADC28, &qword_1013C5280);
  qword_10177B6E8 = v0;
  return result;
}

unint64_t sub_10090403C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000BC4D4(&unk_1016B1490, &unk_1013C5310);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000D2A70(v4, &v13, &unk_101695C20, &unk_101386D90);
      v5 = v13;
      v6 = v14;
      result = sub_100771D58(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_10004D07C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

unint64_t sub_10090416C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000BC4D4(&qword_1016ADC88, &qword_1013C52E0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100771D58(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
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

unint64_t sub_100904268(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000BC4D4(&qword_1016ADC78, &qword_1013C52D0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100771D58(v5, v6);
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

unint64_t sub_100904364(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_1016ADC58, &qword_1013C52B8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1000BC4D4(&qword_1016ADC70, &qword_1013C52C8);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1000D2A70(v10, v6, &qword_1016ADC58, &qword_1013C52B8);
      v12 = *v6;
      v13 = v6[1];
      result = sub_100771D58(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = type metadata accessor for SystemVersionNumber();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_100904550(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_1016ADC40, &qword_1013C52A0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v21 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1000BC4D4(&qword_1016ADC68, &qword_1013C52C0);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1000D2A70(v10, v6, &qword_1016ADC40, &qword_1013C52A0);
      v12 = *v6;
      result = sub_100771D84(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = v12;
      v16 = v8[7];
      v17 = type metadata accessor for FeatureSupportMatrix();
      result = sub_10090C57C(&v6[v9], v16 + *(*(v17 - 8) + 72) * v15, type metadata accessor for FeatureSupportMatrix);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_100904734(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000BC4D4(&qword_1016ADC30, &qword_1013C5288);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100771D58(v5, v6);
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

uint64_t sub_100904838(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Date();
  v747 = *(v4 - 8);
  v5 = *(v747 + 64);
  __chkstk_darwin(v4);
  v746 = &v735 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v744 = &v735 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v741 = &v735 - v11;
  v743 = sub_1000BC4D4(&unk_1016B1660, &unk_10138CE10);
  v12 = *(*(v743 - 8) + 64);
  v13 = __chkstk_darwin(v743);
  v745 = &v735 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v742 = &v735 - v15;
  v16 = type metadata accessor for UUID();
  v739 = *(v16 - 8);
  v740 = v16;
  v17 = *(v739 + 64);
  __chkstk_darwin(v16);
  v738 = &v735 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = &v735 - v21;
  v23 = sub_1000BC4D4(&qword_1016AF880, &unk_10138CE20);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23);
  v26 = &v735 - v25;
  v28 = *a1;
  v27 = a1[1];
  v748 = a1;
  v29 = *a2;
  v30 = a2[1];
  if (v27 >> 60 == 15)
  {
    if (v30 >> 60 == 15)
    {
      v737 = v4;
      v31 = a2;
      sub_10002E98C(v28, v27);
      sub_10002E98C(v29, v30);
      sub_100006654(v28, v27);
      goto LABEL_9;
    }

LABEL_5:
    sub_10002E98C(v28, v27);
    sub_10002E98C(v29, v30);
    sub_100006654(v28, v27);
    sub_100006654(v29, v30);
    return 0;
  }

  if (v30 >> 60 == 15)
  {
    goto LABEL_5;
  }

  v737 = v4;
  v31 = a2;
  sub_10002E98C(v28, v27);
  sub_10002E98C(v29, v30);
  v33 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v28, v27, v29, v30);
  sub_100006654(v29, v30);
  sub_100006654(v28, v27);
  if ((v33 & 1) == 0)
  {
    return 0;
  }

LABEL_9:
  v34 = v748;
  v35 = *(v31 + 24);
  if (v748[3])
  {
    if (!*(v31 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (v748[2] != v31[2])
    {
      v35 = 1;
    }

    if (v35)
    {
      return 0;
    }
  }

  if ((sub_10076C508(*(v748 + 25), *(v31 + 25)) & 1) == 0)
  {
    return 0;
  }

  v36 = *(v31 + 40);
  if (v34[5])
  {
    if (!*(v31 + 40))
    {
      return 0;
    }
  }

  else
  {
    if (*(v34 + 4) != *(v31 + 4))
    {
      v36 = 1;
    }

    if (v36)
    {
      return 0;
    }
  }

  v37 = *(v31 + 56);
  if (v34[7])
  {
    if (!*(v31 + 56))
    {
      return 0;
    }
  }

  else
  {
    if (*(v34 + 6) != *(v31 + 6))
    {
      v37 = 1;
    }

    if (v37)
    {
      return 0;
    }
  }

  v38 = *(v34 + 57);
  v39 = *(v31 + 57);
  if (v38 == 2)
  {
    if (v39 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v39 == 2 || ((v39 ^ v38) & 1) != 0)
    {
      return result;
    }
  }

  v40 = v748;
  v41 = v748[8];
  v42 = v31[8];
  if (v41)
  {
    if (!v42 || (sub_10038ED80(v41, v42) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v42)
  {
    return 0;
  }

  v43 = *(v40 + 72);
  v44 = *(v31 + 72);
  if (v43 == 2)
  {
    if (v44 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v44 == 2 || ((v44 ^ v43) & 1) != 0)
    {
      return result;
    }
  }

  v45 = v748;
  v46 = v748[11];
  v47 = v31[11];
  if (v46)
  {
    if (!v47 || (v748[10] != v31[10] || v46 != v47) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v47)
  {
    return 0;
  }

  v48 = *(v31 + 104);
  if (v45[13])
  {
    if (!*(v31 + 104))
    {
      return 0;
    }
  }

  else
  {
    if (v45[12] != v31[12])
    {
      v48 = 1;
    }

    if (v48)
    {
      return 0;
    }
  }

  v49 = *(v45 + 105);
  v50 = *(v31 + 105);
  if (v49 == 2)
  {
    if (v50 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v50 == 2 || ((v50 ^ v49) & 1) != 0)
    {
      return result;
    }
  }

  v51 = *(v748 + 106);
  v52 = *(v31 + 106);
  if (v51 == 2)
  {
    if (v52 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v52 == 2 || ((v52 ^ v51) & 1) != 0)
    {
      return result;
    }
  }

  v53 = *(v31 + 120);
  if (v748[15])
  {
    if (!*(v31 + 120))
    {
      return 0;
    }
  }

  else
  {
    if (v748[14] != v31[14])
    {
      v53 = 1;
    }

    if (v53)
    {
      return 0;
    }
  }

  v54 = v31;
  v55 = *(v31 + 136);
  if (v748[17])
  {
    if (!*(v31 + 136))
    {
      return 0;
    }
  }

  else
  {
    if (v748[16] != v31[16])
    {
      v55 = 1;
    }

    if (v55)
    {
      return 0;
    }
  }

  v56 = *(v31 + 152);
  if (v748[19])
  {
    if (!*(v31 + 152))
    {
      return 0;
    }
  }

  else
  {
    if (v748[18] != v31[18])
    {
      v56 = 1;
    }

    if (v56)
    {
      return 0;
    }
  }

  v57 = *(v31 + 168);
  if (v748[21])
  {
    if (!*(v31 + 168))
    {
      return 0;
    }
  }

  else
  {
    if (v748[20] != v31[20])
    {
      v57 = 1;
    }

    if (v57)
    {
      return 0;
    }
  }

  v58 = *(v31 + 184);
  if (v748[23])
  {
    if (!*(v31 + 184))
    {
      return 0;
    }
  }

  else
  {
    if (v748[22] != v31[22])
    {
      v58 = 1;
    }

    if (v58)
    {
      return 0;
    }
  }

  v59 = *(v31 + 200);
  if (v748[25])
  {
    if (!*(v31 + 200))
    {
      return 0;
    }
  }

  else
  {
    if (*(v748 + 24) != *(v31 + 24))
    {
      v59 = 1;
    }

    if (v59)
    {
      return 0;
    }
  }

  v60 = *(v31 + 216);
  if (v748[27])
  {
    if (!*(v31 + 216))
    {
      return 0;
    }
  }

  else
  {
    if (v748[26] != v31[26])
    {
      v60 = 1;
    }

    if (v60)
    {
      return 0;
    }
  }

  v61 = *(v31 + 232);
  if (v748[29])
  {
    if (!*(v31 + 232))
    {
      return 0;
    }
  }

  else
  {
    if (v748[28] != v31[28])
    {
      v61 = 1;
    }

    if (v61)
    {
      return 0;
    }
  }

  v62 = *(v31 + 248);
  if (v748[31])
  {
    if (!*(v31 + 248))
    {
      return 0;
    }
  }

  else
  {
    if (*(v748 + 30) != *(v31 + 30))
    {
      v62 = 1;
    }

    if (v62)
    {
      return 0;
    }
  }

  v63 = *(v31 + 264);
  if (v748[33])
  {
    if (!*(v31 + 264))
    {
      return 0;
    }
  }

  else
  {
    if (v748[32] != v31[32])
    {
      v63 = 1;
    }

    if (v63)
    {
      return 0;
    }
  }

  v64 = *(v31 + 280);
  if (v748[35])
  {
    if (!*(v31 + 280))
    {
      return 0;
    }
  }

  else
  {
    if (v748[34] != v31[34])
    {
      v64 = 1;
    }

    if (v64)
    {
      return 0;
    }
  }

  v65 = *(v31 + 296);
  if (v748[37])
  {
    if (!*(v31 + 296))
    {
      return 0;
    }
  }

  else
  {
    if (v748[36] != v31[36])
    {
      v65 = 1;
    }

    if (v65)
    {
      return 0;
    }
  }

  v66 = *(v31 + 312);
  if (v748[39])
  {
    if (!*(v31 + 312))
    {
      return 0;
    }
  }

  else
  {
    if (v748[38] != v31[38])
    {
      v66 = 1;
    }

    if (v66)
    {
      return 0;
    }
  }

  v67 = *(v748 + 313);
  v68 = *(v31 + 313);
  if (v67 == 2)
  {
    if (v68 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v68 == 2 || ((v68 ^ v67) & 1) != 0)
    {
      return result;
    }
  }

  v69 = v748[40];
  v70 = v31[40];
  if (v69)
  {
    if (!v70)
    {
      return 0;
    }

    v71 = v31[40];

    v72 = sub_100DE6F58(v69, v70);

    if ((v72 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v70)
  {
    return 0;
  }

  v73 = *(v31 + 336);
  if (v748[42])
  {
    if (!*(v31 + 336))
    {
      return 0;
    }
  }

  else
  {
    if (v748[41] != v31[41])
    {
      v73 = 1;
    }

    if (v73)
    {
      return 0;
    }
  }

  v74 = *(v31 + 352);
  if (v748[44])
  {
    if (!*(v31 + 352))
    {
      return 0;
    }
  }

  else
  {
    if (v748[43] != v31[43])
    {
      v74 = 1;
    }

    if (v74)
    {
      return 0;
    }
  }

  v75 = *(v31 + 368);
  if (v748[46])
  {
    if (!*(v31 + 368))
    {
      return 0;
    }
  }

  else
  {
    if (v748[45] != v31[45])
    {
      v75 = 1;
    }

    if (v75)
    {
      return 0;
    }
  }

  v76 = *(v31 + 384);
  if (v748[48])
  {
    if (!*(v31 + 384))
    {
      return 0;
    }
  }

  else
  {
    if (v748[47] != v31[47])
    {
      v76 = 1;
    }

    if (v76)
    {
      return 0;
    }
  }

  v77 = *(v31 + 400);
  if (v748[50])
  {
    if (!*(v31 + 400))
    {
      return 0;
    }
  }

  else
  {
    if (v748[49] != v31[49])
    {
      v77 = 1;
    }

    if (v77)
    {
      return 0;
    }
  }

  v78 = *(v31 + 416);
  if (v748[52])
  {
    if (!*(v31 + 416))
    {
      return 0;
    }
  }

  else
  {
    if (v748[51] != v31[51])
    {
      v78 = 1;
    }

    if (v78)
    {
      return 0;
    }
  }

  v79 = *(v31 + 432);
  if (v748[54])
  {
    if (!*(v31 + 432))
    {
      return 0;
    }
  }

  else
  {
    if (v748[53] != v31[53])
    {
      v79 = 1;
    }

    if (v79)
    {
      return 0;
    }
  }

  v80 = *(v31 + 448);
  if (v748[56])
  {
    if (!*(v31 + 448))
    {
      return 0;
    }
  }

  else
  {
    if (v748[55] != v31[55])
    {
      v80 = 1;
    }

    if (v80)
    {
      return 0;
    }
  }

  v81 = *(v31 + 464);
  if (v748[58])
  {
    if (!*(v31 + 464))
    {
      return 0;
    }
  }

  else
  {
    if (v748[57] != v31[57])
    {
      v81 = 1;
    }

    if (v81)
    {
      return 0;
    }
  }

  v82 = *(v31 + 480);
  if (v748[60])
  {
    if (!*(v31 + 480))
    {
      return 0;
    }
  }

  else
  {
    if (v748[59] != v31[59])
    {
      v82 = 1;
    }

    if (v82)
    {
      return 0;
    }
  }

  v83 = *(v748 + 481);
  v84 = *(v31 + 481);
  if (v83 == 2)
  {
    if (v84 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v84 == 2 || ((v84 ^ v83) & 1) != 0)
    {
      return result;
    }
  }

  v85 = *(v31 + 496);
  if (v748[62])
  {
    if (!*(v31 + 496))
    {
      return 0;
    }
  }

  else
  {
    if (v748[61] != v31[61])
    {
      v85 = 1;
    }

    if (v85)
    {
      return 0;
    }
  }

  v86 = *(v31 + 512);
  if (v748[64])
  {
    if (!*(v31 + 512))
    {
      return 0;
    }
  }

  else
  {
    if (v748[63] != v31[63])
    {
      v86 = 1;
    }

    if (v86)
    {
      return 0;
    }
  }

  v87 = *(v31 + 528);
  if (v748[66])
  {
    if (!*(v31 + 528))
    {
      return 0;
    }
  }

  else
  {
    if (v748[65] != v31[65])
    {
      v87 = 1;
    }

    if (v87)
    {
      return 0;
    }
  }

  v88 = *(v31 + 544);
  if (v748[68])
  {
    if (!*(v31 + 544))
    {
      return 0;
    }
  }

  else
  {
    if (v748[67] != v31[67])
    {
      v88 = 1;
    }

    if (v88)
    {
      return 0;
    }
  }

  v89 = *(v31 + 560);
  if (v748[70])
  {
    if (!*(v31 + 560))
    {
      return 0;
    }
  }

  else
  {
    if (v748[69] != v31[69])
    {
      v89 = 1;
    }

    if (v89)
    {
      return 0;
    }
  }

  v90 = *(v31 + 576);
  if (v748[72])
  {
    if (!*(v31 + 576))
    {
      return 0;
    }
  }

  else
  {
    if (v748[71] != v31[71])
    {
      v90 = 1;
    }

    if (v90)
    {
      return 0;
    }
  }

  v91 = *(v31 + 592);
  if (v748[74])
  {
    if (!*(v31 + 592))
    {
      return 0;
    }
  }

  else
  {
    if (v748[73] != v31[73])
    {
      v91 = 1;
    }

    if (v91)
    {
      return 0;
    }
  }

  v92 = v748[75];
  v93 = v31[75];
  if (v92)
  {
    if (!v93 || (sub_10038F634(v92, v93) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v93)
  {
    return 0;
  }

  v94 = *(v31 + 616);
  if (v748[77])
  {
    if (!*(v31 + 616))
    {
      return 0;
    }
  }

  else
  {
    if (*(v748 + 76) != *(v31 + 76))
    {
      v94 = 1;
    }

    if (v94)
    {
      return 0;
    }
  }

  v95 = *(v31 + 632);
  if (v748[79])
  {
    if (!*(v31 + 632))
    {
      return 0;
    }
  }

  else
  {
    if (*(v748 + 78) != *(v31 + 78))
    {
      v95 = 1;
    }

    if (v95)
    {
      return 0;
    }
  }

  v96 = v31[80];
  if (v748[80])
  {
    if (!v96)
    {
      return 0;
    }

    v97 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v99 = v98;
    if (v97 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v99 == v100)
    {
    }

    else
    {
      v101 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v101 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v96)
  {
    return 0;
  }

  v102 = v748[81];
  v103 = v31[81];
  if (v102)
  {
    if (!v103)
    {
      return 0;
    }

    v104 = v31[81];

    v105 = sub_10038F7B4(v102, v103);

    if ((v105 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v103)
  {
    return 0;
  }

  v106 = *(v31 + 664);
  if (v748[83])
  {
    if (!*(v31 + 664))
    {
      return 0;
    }
  }

  else
  {
    if (v748[82] != v31[82])
    {
      v106 = 1;
    }

    if (v106)
    {
      return 0;
    }
  }

  v107 = *(v31 + 680);
  if (v748[85])
  {
    if (!*(v31 + 680))
    {
      return 0;
    }
  }

  else
  {
    if (v748[84] != v31[84])
    {
      v107 = 1;
    }

    if (v107)
    {
      return 0;
    }
  }

  v108 = *(v31 + 696);
  if (v748[87])
  {
    if (!*(v31 + 696))
    {
      return 0;
    }
  }

  else
  {
    if (v748[86] != v31[86])
    {
      v108 = 1;
    }

    if (v108)
    {
      return 0;
    }
  }

  v109 = *(v31 + 712);
  if (v748[89])
  {
    if (!*(v31 + 712))
    {
      return 0;
    }
  }

  else
  {
    if (v748[88] != v31[88])
    {
      v109 = 1;
    }

    if (v109)
    {
      return 0;
    }
  }

  v110 = *(v31 + 728);
  if (v748[91])
  {
    if (!*(v31 + 728))
    {
      return 0;
    }
  }

  else
  {
    if (v748[90] != v31[90])
    {
      v110 = 1;
    }

    if (v110)
    {
      return 0;
    }
  }

  v111 = *(v748 + 729);
  v112 = *(v31 + 729);
  if (v111 == 2)
  {
    if (v112 != 2)
    {
      return 0;
    }

LABEL_326:
    v736 = type metadata accessor for DefaultConfigurationLayer();
    v113 = v736[60];
    v114 = *(v23 + 48);
    sub_1000D2A70(v748 + v113, v26, &qword_1016980D0, &unk_10138F3B0);
    sub_1000D2A70(v31 + v113, &v26[v114], &qword_1016980D0, &unk_10138F3B0);
    v115 = *(v739 + 48);
    if (v115(v26, 1, v740) == 1)
    {
      if (v115(&v26[v114], 1, v740) == 1)
      {
        sub_10000B3A8(v26, &qword_1016980D0, &unk_10138F3B0);
        goto LABEL_333;
      }
    }

    else
    {
      sub_1000D2A70(v26, v22, &qword_1016980D0, &unk_10138F3B0);
      if (v115(&v26[v114], 1, v740) != 1)
      {
        v117 = v739;
        v116 = v740;
        v118 = &v26[v114];
        v119 = v738;
        (*(v739 + 32))(v738, v118, v740);
        sub_10090D1C4(&qword_1016984A0, &type metadata accessor for UUID);
        v120 = dispatch thunk of static Equatable.== infix(_:_:)();
        v121 = *(v117 + 8);
        v121(v119, v116);
        v121(v22, v116);
        sub_10000B3A8(v26, &qword_1016980D0, &unk_10138F3B0);
        if ((v120 & 1) == 0)
        {
          return 0;
        }

LABEL_333:
        v122 = v736[61];
        v123 = v742;
        v124 = *(v743 + 48);
        sub_1000D2A70(v748 + v122, v742, &unk_101696900, &unk_10138B1E0);
        sub_1000D2A70(v54 + v122, v123 + v124, &unk_101696900, &unk_10138B1E0);
        v740 = *(v747 + 48);
        if (v740(v123, 1, v737) == 1)
        {
          if (v740(v742 + v124, 1, v737) == 1)
          {
            sub_10000B3A8(v742, &unk_101696900, &unk_10138B1E0);
            goto LABEL_340;
          }
        }

        else
        {
          v125 = v742;
          sub_1000D2A70(v742, v741, &unk_101696900, &unk_10138B1E0);
          if (v740(v125 + v124, 1, v737) != 1)
          {
            v127 = v746;
            v126 = v747;
            v128 = v742;
            v129 = v737;
            (*(v747 + 32))(v746, v742 + v124, v737);
            sub_10090D1C4(&qword_101698290, &type metadata accessor for Date);
            v130 = v741;
            v131 = dispatch thunk of static Equatable.== infix(_:_:)();
            v132 = *(v126 + 8);
            v132(v127, v129);
            v132(v130, v129);
            sub_10000B3A8(v128, &unk_101696900, &unk_10138B1E0);
            if ((v131 & 1) == 0)
            {
              return 0;
            }

LABEL_340:
            v133 = v736[62];
            v134 = (v748 + v133);
            v135 = *(v748 + v133 + 8);
            v136 = (v54 + v133);
            v137 = *(v54 + v133 + 8);
            if (v135)
            {
              if (!v137)
              {
                return 0;
              }
            }

            else
            {
              if (*v134 != *v136)
              {
                LOBYTE(v137) = 1;
              }

              if (v137)
              {
                return 0;
              }
            }

            v138 = v736[63];
            v139 = *(v743 + 48);
            v140 = v745;
            sub_1000D2A70(v748 + v138, v745, &unk_101696900, &unk_10138B1E0);
            sub_1000D2A70(v54 + v138, v140 + v139, &unk_101696900, &unk_10138B1E0);
            if (v740(v140, 1, v737) == 1)
            {
              if (v740(v745 + v139, 1, v737) == 1)
              {
                sub_10000B3A8(v745, &unk_101696900, &unk_10138B1E0);
                goto LABEL_353;
              }
            }

            else
            {
              v141 = v745;
              sub_1000D2A70(v745, v744, &unk_101696900, &unk_10138B1E0);
              if (v740(v141 + v139, 1, v737) != 1)
              {
                v142 = v747;
                v143 = v745;
                v144 = v745 + v139;
                v145 = v746;
                v146 = v737;
                (*(v747 + 32))(v746, v144, v737);
                sub_10090D1C4(&qword_101698290, &type metadata accessor for Date);
                v147 = v744;
                v148 = dispatch thunk of static Equatable.== infix(_:_:)();
                v149 = *(v142 + 8);
                v149(v145, v146);
                v149(v147, v146);
                sub_10000B3A8(v143, &unk_101696900, &unk_10138B1E0);
                if ((v148 & 1) == 0)
                {
                  return 0;
                }

LABEL_353:
                v150 = v736[64];
                v151 = (v748 + v150);
                v152 = *(v748 + v150 + 8);
                v153 = (v54 + v150);
                v154 = *(v54 + v150 + 8);
                if (v152)
                {
                  if (!v154)
                  {
                    return 0;
                  }
                }

                else
                {
                  if (*v151 != *v153)
                  {
                    LOBYTE(v154) = 1;
                  }

                  if (v154)
                  {
                    return 0;
                  }
                }

                v155 = v736[65];
                v156 = (v748 + v155);
                v157 = *(v748 + v155 + 8);
                v158 = (v54 + v155);
                v159 = *(v54 + v155 + 8);
                if (v157)
                {
                  if (!v159)
                  {
                    return 0;
                  }
                }

                else
                {
                  if (*v156 != *v158)
                  {
                    LOBYTE(v159) = 1;
                  }

                  if (v159)
                  {
                    return 0;
                  }
                }

                v160 = v736[66];
                v161 = (v748 + v160);
                v162 = *(v748 + v160 + 8);
                v163 = (v54 + v160);
                v164 = *(v54 + v160 + 8);
                if (v162)
                {
                  if (!v164)
                  {
                    return 0;
                  }
                }

                else
                {
                  if (*v161 != *v163)
                  {
                    LOBYTE(v164) = 1;
                  }

                  if (v164)
                  {
                    return 0;
                  }
                }

                v165 = v736[67];
                v166 = (v748 + v165);
                v167 = *(v748 + v165 + 8);
                v168 = (v54 + v165);
                v169 = *(v54 + v165 + 8);
                if (v167)
                {
                  if (!v169)
                  {
                    return 0;
                  }
                }

                else
                {
                  if (*v166 != *v168)
                  {
                    LOBYTE(v169) = 1;
                  }

                  if (v169)
                  {
                    return 0;
                  }
                }

                v170 = v736[68];
                v171 = (v748 + v170);
                v172 = *(v748 + v170 + 8);
                v173 = (v54 + v170);
                v174 = *(v54 + v170 + 8);
                if (v172)
                {
                  if (!v174)
                  {
                    return 0;
                  }
                }

                else
                {
                  if (*v171 != *v173)
                  {
                    LOBYTE(v174) = 1;
                  }

                  if (v174)
                  {
                    return 0;
                  }
                }

                v175 = v736[69];
                v176 = (v748 + v175);
                v177 = *(v748 + v175 + 8);
                v178 = (v54 + v175);
                v179 = *(v54 + v175 + 8);
                if (v177)
                {
                  if (!v179)
                  {
                    return 0;
                  }
                }

                else
                {
                  if (*v176 != *v178)
                  {
                    LOBYTE(v179) = 1;
                  }

                  if (v179)
                  {
                    return 0;
                  }
                }

                v180 = v736[70];
                v181 = v748 + v180;
                v182 = *(v748 + v180 + 80);
                v777 = *(v748 + v180 + 64);
                v778 = v182;
                v183 = *(v748 + v180 + 96);
                v184 = *(v748 + v180 + 16);
                v774[0] = *(v748 + v180);
                v774[1] = v184;
                v185 = *(v748 + v180 + 48);
                v187 = *(v748 + v180);
                v186 = *(v748 + v180 + 16);
                v775 = *(v748 + v180 + 32);
                v776 = v185;
                v188 = (v54 + v180);
                v189 = *v188;
                v190 = v188[1];
                v779 = v183;
                v780[0] = v189;
                v191 = v188[6];
                v783 = v188[5];
                v784 = v191;
                v192 = v188[4];
                v781 = v188[3];
                v782 = v192;
                v193 = v188[2];
                v780[1] = v190;
                v780[2] = v193;
                v771 = v187;
                v772 = v186;
                v773 = v775;
                v194 = v185;
                v195 = *(v181 + 72);
                v767 = *(v181 + 56);
                v768 = v195;
                v769 = *(v181 + 88);
                v770 = *(v181 + 13);
                if (v185)
                {
                  if (v781)
                  {
                    v196 = v188[1];
                    v749[0] = *v188;
                    v749[1] = v196;
                    v750 = v188[2];
                    *&v751[0] = v781;
                    *(v751 + 8) = *(v188 + 56);
                    *(&v751[1] + 8) = *(v188 + 72);
                    *(&v751[2] + 8) = *(v188 + 88);
                    *(&v751[3] + 1) = *(v188 + 13);
                    v758 = v749[0];
                    v759 = v196;
                    v761[2] = v751[2];
                    v761[3] = v751[3];
                    v761[0] = v751[0];
                    v761[1] = v751[1];
                    v760 = v750;
                    v197 = *v181;
                    v198 = *(v181 + 2);
                    v785[1] = *(v181 + 1);
                    v785[2] = v198;
                    v785[0] = v197;
                    v199 = *(v181 + 56);
                    v200 = *(v181 + 72);
                    v201 = *(v181 + 88);
                    v202 = *(v181 + 13);
                    v789 = v201;
                    v788 = v200;
                    v787 = v199;
                    v790 = v202;
                    v786 = v185;
                    sub_1000D2A70(v774, v752, &qword_1016ADCE8, &qword_1013C53A0);
                    sub_1000D2A70(v780, v752, &qword_1016ADCE8, &qword_1013C53A0);
                    v203 = _s12searchpartyd19AllMacBeaconConfigsV23__derived_struct_equalsySbAC_ACtFZ_0(v785, &v758);
                    sub_10000B3A8(v749, &qword_1016ADCE8, &qword_1013C53A0);
                    v752[0] = v771;
                    v752[1] = v772;
                    v752[2] = v773;
                    v754 = v767;
                    v755 = v768;
                    v756 = v769;
                    v753 = v194;
                    v757 = v770;
                    sub_10000B3A8(v752, &qword_1016ADCE8, &qword_1013C53A0);
                    if (!v203)
                    {
                      return 0;
                    }

                    goto LABEL_396;
                  }
                }

                else if (!v781)
                {
                  v209 = *(v181 + 1);
                  v758 = *v181;
                  v759 = v209;
                  v760 = *(v181 + 2);
                  *(v761 + 8) = *(v181 + 56);
                  *(&v761[1] + 8) = *(v181 + 72);
                  *(&v761[2] + 8) = *(v181 + 88);
                  v210 = *(v181 + 13);
                  *&v761[0] = 0;
                  *(&v761[3] + 1) = v210;
                  sub_1000D2A70(v774, v785, &qword_1016ADCE8, &qword_1013C53A0);
                  sub_1000D2A70(v780, v785, &qword_1016ADCE8, &qword_1013C53A0);
                  sub_10000B3A8(&v758, &qword_1016ADCE8, &qword_1013C53A0);
LABEL_396:
                  v211 = v736[71];
                  v212 = *(v748 + v211);
                  v213 = *(v54 + v211);
                  if (v212 == 2)
                  {
                    if (v213 != 2)
                    {
                      return 0;
                    }
                  }

                  else if (v213 == 2 || ((v213 ^ v212) & 1) != 0)
                  {
                    return 0;
                  }

                  v214 = v736[72];
                  v215 = *(v748 + v214);
                  v216 = *(v54 + v214);
                  if (v215 == 2)
                  {
                    if (v216 != 2)
                    {
                      return 0;
                    }
                  }

                  else if (v216 == 2 || ((v216 ^ v215) & 1) != 0)
                  {
                    return 0;
                  }

                  v217 = v736[73];
                  v218 = *(v748 + v217);
                  v219 = *(v54 + v217);
                  if (v218 == 2)
                  {
                    if (v219 != 2)
                    {
                      return 0;
                    }
                  }

                  else if (v219 == 2 || ((v219 ^ v218) & 1) != 0)
                  {
                    return 0;
                  }

                  v220 = v736[74];
                  v221 = (v748 + v220);
                  v222 = *(v748 + v220 + 8);
                  v223 = (v54 + v220);
                  v224 = *(v54 + v220 + 8);
                  if (v222)
                  {
                    if (!v224)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    if (*v221 != *v223)
                    {
                      LOBYTE(v224) = 1;
                    }

                    if (v224)
                    {
                      return 0;
                    }
                  }

                  v225 = v736[75];
                  v226 = (v748 + v225);
                  v227 = *(v748 + v225 + 8);
                  v228 = (v54 + v225);
                  v229 = *(v54 + v225 + 8);
                  if (v227)
                  {
                    if (!v229)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    if (*v226 != *v228)
                    {
                      LOBYTE(v229) = 1;
                    }

                    if (v229)
                    {
                      return 0;
                    }
                  }

                  v230 = v736[76];
                  v231 = (v748 + v230);
                  v232 = *(v748 + v230 + 8);
                  v233 = (v54 + v230);
                  v234 = *(v54 + v230 + 8);
                  if (v232)
                  {
                    if (!v234)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    if (*v231 != *v233)
                    {
                      LOBYTE(v234) = 1;
                    }

                    if (v234)
                    {
                      return 0;
                    }
                  }

                  v235 = v736[77];
                  v236 = (v748 + v235);
                  v237 = *(v748 + v235 + 8);
                  v238 = (v54 + v235);
                  v239 = *(v54 + v235 + 8);
                  if (v237)
                  {
                    if (!v239)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    if (*v236 != *v238)
                    {
                      LOBYTE(v239) = 1;
                    }

                    if (v239)
                    {
                      return 0;
                    }
                  }

                  v240 = v736[78];
                  v241 = (v748 + v240);
                  v242 = *(v748 + v240 + 8);
                  v243 = (v54 + v240);
                  v244 = *(v54 + v240 + 8);
                  if (v242)
                  {
                    if (!v244)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    if (*v241 != *v243)
                    {
                      LOBYTE(v244) = 1;
                    }

                    if (v244)
                    {
                      return 0;
                    }
                  }

                  v245 = v736[79];
                  v246 = (v748 + v245);
                  v247 = *(v748 + v245 + 8);
                  v248 = (v54 + v245);
                  v249 = *(v54 + v245 + 8);
                  if (v247)
                  {
                    if (!v249)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    if (*v246 != *v248)
                    {
                      LOBYTE(v249) = 1;
                    }

                    if (v249)
                    {
                      return 0;
                    }
                  }

                  v250 = v736[80];
                  v251 = (v748 + v250);
                  v252 = *(v748 + v250 + 8);
                  v253 = (v54 + v250);
                  v254 = *(v54 + v250 + 8);
                  if (v252)
                  {
                    if (!v254)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    if (*v251 != *v253)
                    {
                      LOBYTE(v254) = 1;
                    }

                    if (v254)
                    {
                      return 0;
                    }
                  }

                  v255 = v736[81];
                  v256 = (v748 + v255);
                  v257 = *(v748 + v255 + 8);
                  v258 = (v54 + v255);
                  v259 = *(v54 + v255 + 8);
                  if (v257)
                  {
                    if (!v259)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    if (*v256 != *v258)
                    {
                      LOBYTE(v259) = 1;
                    }

                    if (v259)
                    {
                      return 0;
                    }
                  }

                  v260 = v736[82];
                  v261 = (v748 + v260);
                  v262 = *(v748 + v260 + 8);
                  v263 = (v54 + v260);
                  v264 = *(v54 + v260 + 8);
                  if (v262)
                  {
                    if (!v264)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    if (*v261 != *v263)
                    {
                      LOBYTE(v264) = 1;
                    }

                    if (v264)
                    {
                      return 0;
                    }
                  }

                  v265 = v736[83];
                  v266 = (v748 + v265);
                  v267 = *(v748 + v265 + 8);
                  v268 = (v54 + v265);
                  v269 = v268[1];
                  if (v267)
                  {
                    if (!v269 || (*v266 != *v268 || v267 != v269) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                    {
                      return 0;
                    }
                  }

                  else if (v269)
                  {
                    return 0;
                  }

                  v270 = v736[84];
                  v271 = (v748 + v270);
                  v272 = *(v748 + v270 + 8);
                  v273 = (v54 + v270);
                  v274 = *(v54 + v270 + 8);
                  if (v272)
                  {
                    if (!v274)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    if (*v271 != *v273)
                    {
                      LOBYTE(v274) = 1;
                    }

                    if (v274)
                    {
                      return 0;
                    }
                  }

                  v275 = v736[85];
                  v276 = (v748 + v275);
                  v277 = *(v748 + v275 + 8);
                  v278 = (v54 + v275);
                  v279 = v278[1];
                  if (v277)
                  {
                    if (!v279 || (*v276 != *v278 || v277 != v279) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                    {
                      return 0;
                    }
                  }

                  else if (v279)
                  {
                    return 0;
                  }

                  v280 = v736[86];
                  v281 = (v748 + v280);
                  v282 = *(v748 + v280 + 8);
                  v283 = (v54 + v280);
                  v284 = *(v54 + v280 + 8);
                  if (v282)
                  {
                    if (!v284)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    if (*v281 != *v283)
                    {
                      LOBYTE(v284) = 1;
                    }

                    if (v284)
                    {
                      return 0;
                    }
                  }

                  v285 = v736[87];
                  v286 = *(v748 + v285);
                  v287 = *(v54 + v285);
                  if (v286)
                  {
                    if (!v287 || (sub_10038F898(v286, v287) & 1) == 0)
                    {
                      return 0;
                    }
                  }

                  else if (v287)
                  {
                    return 0;
                  }

                  v288 = v736[88];
                  v289 = (v748 + v288);
                  v290 = *(v748 + v288 + 8);
                  v291 = (v54 + v288);
                  v292 = v291[1];
                  if (v290)
                  {
                    if (!v292 || (*v289 != *v291 || v290 != v292) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                    {
                      return 0;
                    }
                  }

                  else if (v292)
                  {
                    return 0;
                  }

                  v293 = v736[89];
                  v294 = (v748 + v293);
                  v295 = *(v748 + v293 + 8);
                  v296 = (v54 + v293);
                  v297 = *(v54 + v293 + 8);
                  if (v295)
                  {
                    if (!v297)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    if (*v294 != *v296)
                    {
                      LOBYTE(v297) = 1;
                    }

                    if (v297)
                    {
                      return 0;
                    }
                  }

                  v298 = v736[90];
                  v299 = *(v748 + v298);
                  v300 = *(v54 + v298);
                  if (v299 == 2)
                  {
                    if (v300 != 2)
                    {
                      return 0;
                    }
                  }

                  else if (v300 == 2 || ((v300 ^ v299) & 1) != 0)
                  {
                    return 0;
                  }

                  v301 = v736[91];
                  v302 = *(v748 + v301);
                  v303 = *(v54 + v301);
                  if (v302 == 2)
                  {
                    if (v303 != 2)
                    {
                      return 0;
                    }
                  }

                  else if (v303 == 2 || ((v303 ^ v302) & 1) != 0)
                  {
                    return 0;
                  }

                  v304 = v736[92];
                  v305 = *(v748 + v304);
                  v306 = *(v54 + v304);
                  if (v305 == 2)
                  {
                    if (v306 != 2)
                    {
                      return 0;
                    }
                  }

                  else if (v306 == 2 || ((v306 ^ v305) & 1) != 0)
                  {
                    return 0;
                  }

                  v307 = v736[93];
                  v308 = *(v748 + v307);
                  v309 = *(v54 + v307);
                  if (v308 == 2)
                  {
                    if (v309 != 2)
                    {
                      return 0;
                    }
                  }

                  else if (v309 == 2 || ((v309 ^ v308) & 1) != 0)
                  {
                    return 0;
                  }

                  v310 = v736[94];
                  v311 = (v748 + v310);
                  v312 = *(v748 + v310 + 8);
                  v313 = (v54 + v310);
                  v314 = *(v54 + v310 + 8);
                  if (v312)
                  {
                    if (!v314)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    if (*v311 != *v313)
                    {
                      LOBYTE(v314) = 1;
                    }

                    if (v314)
                    {
                      return 0;
                    }
                  }

                  v315 = v736[95];
                  v316 = (v748 + v315);
                  v317 = *(v748 + v315 + 8);
                  v318 = (v54 + v315);
                  v319 = *(v54 + v315 + 8);
                  if (v317)
                  {
                    if (!v319)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    if (*v316 != *v318)
                    {
                      LOBYTE(v319) = 1;
                    }

                    if (v319)
                    {
                      return 0;
                    }
                  }

                  v320 = v736[96];
                  v321 = (v748 + v320);
                  v322 = *(v748 + v320 + 8);
                  v323 = (v54 + v320);
                  v324 = *(v54 + v320 + 8);
                  if (v322)
                  {
                    if (!v324)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    if (*v321 != *v323)
                    {
                      LOBYTE(v324) = 1;
                    }

                    if (v324)
                    {
                      return 0;
                    }
                  }

                  v325 = v736[97];
                  v326 = (v748 + v325);
                  v327 = *(v748 + v325 + 8);
                  v328 = (v54 + v325);
                  v329 = *(v54 + v325 + 8);
                  if (v327)
                  {
                    if (!v329)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    if (*v326 != *v328)
                    {
                      LOBYTE(v329) = 1;
                    }

                    if (v329)
                    {
                      return 0;
                    }
                  }

                  v330 = v736[98];
                  v331 = (v748 + v330);
                  v332 = *(v748 + v330 + 8);
                  v333 = (v54 + v330);
                  v334 = *(v54 + v330 + 8);
                  if (v332)
                  {
                    if (!v334)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    if (*v331 != *v333)
                    {
                      LOBYTE(v334) = 1;
                    }

                    if (v334)
                    {
                      return 0;
                    }
                  }

                  v335 = v736[99];
                  v336 = (v748 + v335);
                  v337 = *(v748 + v335 + 8);
                  v338 = (v54 + v335);
                  v339 = *(v54 + v335 + 8);
                  if (v337)
                  {
                    if (!v339)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    if (*v336 != *v338)
                    {
                      LOBYTE(v339) = 1;
                    }

                    if (v339)
                    {
                      return 0;
                    }
                  }

                  v340 = v736[100];
                  v341 = (v748 + v340);
                  v342 = *(v748 + v340 + 8);
                  v343 = (v54 + v340);
                  v344 = *(v54 + v340 + 8);
                  if (v342)
                  {
                    if (!v344)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    if (*v341 != *v343)
                    {
                      LOBYTE(v344) = 1;
                    }

                    if (v344)
                    {
                      return 0;
                    }
                  }

                  v345 = v736[101];
                  v346 = (v748 + v345);
                  v347 = *(v748 + v345 + 8);
                  v348 = (v54 + v345);
                  v349 = *(v54 + v345 + 8);
                  if (v347)
                  {
                    if (!v349)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    if (*v346 != *v348)
                    {
                      LOBYTE(v349) = 1;
                    }

                    if (v349)
                    {
                      return 0;
                    }
                  }

                  v350 = v736[102];
                  v351 = (v748 + v350);
                  v352 = *(v748 + v350 + 8);
                  v353 = (v54 + v350);
                  v354 = *(v54 + v350 + 8);
                  if (v352)
                  {
                    if (!v354)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    if (*v351 != *v353)
                    {
                      LOBYTE(v354) = 1;
                    }

                    if (v354)
                    {
                      return 0;
                    }
                  }

                  v355 = v736[103];
                  v356 = (v748 + v355);
                  v357 = *(v748 + v355 + 8);
                  v358 = (v54 + v355);
                  v359 = *(v54 + v355 + 8);
                  if (v357)
                  {
                    if (!v359)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    if (*v356 != *v358)
                    {
                      LOBYTE(v359) = 1;
                    }

                    if (v359)
                    {
                      return 0;
                    }
                  }

                  v360 = v736[104];
                  v361 = (v748 + v360);
                  v362 = *(v748 + v360 + 8);
                  v363 = (v54 + v360);
                  v364 = *(v54 + v360 + 8);
                  if (v362)
                  {
                    if (!v364)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    if (*v361 != *v363)
                    {
                      LOBYTE(v364) = 1;
                    }

                    if (v364)
                    {
                      return 0;
                    }
                  }

                  v365 = v736[105];
                  v366 = (v748 + v365);
                  v367 = *(v748 + v365 + 8);
                  v368 = (v54 + v365);
                  v369 = *(v54 + v365 + 8);
                  if (v367)
                  {
                    if (!v369)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    if (*v366 != *v368)
                    {
                      LOBYTE(v369) = 1;
                    }

                    if (v369)
                    {
                      return 0;
                    }
                  }

                  v370 = v736[106];
                  v371 = (v748 + v370);
                  v372 = *(v748 + v370 + 8);
                  v373 = (v54 + v370);
                  v374 = *(v54 + v370 + 8);
                  if (v372)
                  {
                    if (!v374)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    if (*v371 != *v373)
                    {
                      LOBYTE(v374) = 1;
                    }

                    if (v374)
                    {
                      return 0;
                    }
                  }

                  v375 = v736[107];
                  v376 = (v748 + v375);
                  v377 = *(v748 + v375 + 8);
                  v378 = (v54 + v375);
                  v379 = *(v54 + v375 + 8);
                  if (v377)
                  {
                    if (!v379)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    if (*v376 != *v378)
                    {
                      LOBYTE(v379) = 1;
                    }

                    if (v379)
                    {
                      return 0;
                    }
                  }

                  v380 = v736[108];
                  v381 = (v748 + v380);
                  v382 = *(v748 + v380 + 8);
                  v383 = (v54 + v380);
                  v384 = *(v54 + v380 + 8);
                  if (v382)
                  {
                    if (!v384)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    if (*v381 != *v383)
                    {
                      LOBYTE(v384) = 1;
                    }

                    if (v384)
                    {
                      return 0;
                    }
                  }

                  v385 = v736[109];
                  v386 = (v748 + v385);
                  v387 = *(v748 + v385 + 8);
                  v388 = (v54 + v385);
                  v389 = *(v54 + v385 + 8);
                  if (v387)
                  {
                    if (!v389)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    if (*v386 != *v388)
                    {
                      LOBYTE(v389) = 1;
                    }

                    if (v389)
                    {
                      return 0;
                    }
                  }

                  v390 = v736[110];
                  v391 = (v748 + v390);
                  v392 = *(v748 + v390 + 8);
                  v393 = (v54 + v390);
                  v394 = *(v54 + v390 + 8);
                  if (v392)
                  {
                    if (!v394)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    if (*v391 != *v393)
                    {
                      LOBYTE(v394) = 1;
                    }

                    if (v394)
                    {
                      return 0;
                    }
                  }

                  v395 = v736[111];
                  v396 = (v748 + v395);
                  v397 = *(v748 + v395 + 8);
                  v398 = (v54 + v395);
                  v399 = *(v54 + v395 + 8);
                  if (v397)
                  {
                    if (!v399)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    if (*v396 != *v398)
                    {
                      LOBYTE(v399) = 1;
                    }

                    if (v399)
                    {
                      return 0;
                    }
                  }

                  v400 = v736[112];
                  v401 = (v748 + v400);
                  v402 = *(v748 + v400 + 8);
                  v403 = (v54 + v400);
                  v404 = *(v54 + v400 + 8);
                  if (v402)
                  {
                    if (!v404)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    if (*v401 != *v403)
                    {
                      LOBYTE(v404) = 1;
                    }

                    if (v404)
                    {
                      return 0;
                    }
                  }

                  v405 = v736[113];
                  v406 = (v748 + v405);
                  v407 = *(v748 + v405 + 8);
                  v408 = (v54 + v405);
                  v409 = *(v54 + v405 + 8);
                  if (v407)
                  {
                    if (!v409)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    if (*v406 != *v408)
                    {
                      LOBYTE(v409) = 1;
                    }

                    if (v409)
                    {
                      return 0;
                    }
                  }

                  v410 = v736[114];
                  v411 = (v748 + v410);
                  v412 = *(v748 + v410 + 8);
                  v413 = (v54 + v410);
                  v414 = *(v54 + v410 + 8);
                  if (v412)
                  {
                    if (!v414)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    if (*v411 != *v413)
                    {
                      LOBYTE(v414) = 1;
                    }

                    if (v414)
                    {
                      return 0;
                    }
                  }

                  v415 = v736[115];
                  v416 = (v748 + v415);
                  v417 = *(v748 + v415 + 8);
                  v418 = (v54 + v415);
                  v419 = *(v54 + v415 + 8);
                  if (v417)
                  {
                    if (!v419)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    if (*v416 != *v418)
                    {
                      LOBYTE(v419) = 1;
                    }

                    if (v419)
                    {
                      return 0;
                    }
                  }

                  v420 = v736[116];
                  v421 = *(v748 + v420);
                  v422 = *(v54 + v420);
                  if (v421 == 2)
                  {
                    if (v422 != 2)
                    {
                      return 0;
                    }
                  }

                  else if (v422 == 2 || ((v422 ^ v421) & 1) != 0)
                  {
                    return 0;
                  }

                  v423 = v736[117];
                  v424 = (v748 + v423);
                  v425 = *(v748 + v423 + 8);
                  v426 = (v54 + v423);
                  v427 = *(v54 + v423 + 8);
                  if (v425)
                  {
                    if (!v427)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    if (*v424 != *v426)
                    {
                      LOBYTE(v427) = 1;
                    }

                    if (v427)
                    {
                      return 0;
                    }
                  }

                  v428 = v736[118];
                  v429 = (v748 + v428);
                  v430 = *(v748 + v428 + 8);
                  v431 = (v54 + v428);
                  v432 = *(v54 + v428 + 8);
                  if (v430)
                  {
                    if (!v432)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    if (*v429 != *v431)
                    {
                      LOBYTE(v432) = 1;
                    }

                    if (v432)
                    {
                      return 0;
                    }
                  }

                  v433 = v736[119];
                  v434 = (v748 + v433);
                  v435 = *(v748 + v433 + 8);
                  v436 = (v54 + v433);
                  v437 = *(v54 + v433 + 8);
                  if (v435)
                  {
                    if (!v437)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    if (*v434 != *v436)
                    {
                      LOBYTE(v437) = 1;
                    }

                    if (v437)
                    {
                      return 0;
                    }
                  }

                  v438 = v736[120];
                  v439 = *(v748 + v438);
                  v440 = *(v54 + v438);
                  if (v439 == 2)
                  {
                    if (v440 != 2)
                    {
                      return 0;
                    }
                  }

                  else if (v440 == 2 || ((v440 ^ v439) & 1) != 0)
                  {
                    return 0;
                  }

                  v441 = v736[121];
                  v442 = *(v748 + v441);
                  v443 = *(v54 + v441);
                  if (v442 == 2)
                  {
                    if (v443 != 2)
                    {
                      return 0;
                    }
                  }

                  else if (v443 == 2 || ((v443 ^ v442) & 1) != 0)
                  {
                    return 0;
                  }

                  v444 = v736[122];
                  v445 = *(v748 + v444);
                  v446 = *(v54 + v444);
                  if (v445 == 2)
                  {
                    if (v446 != 2)
                    {
                      return 0;
                    }
                  }

                  else if (v446 == 2 || ((v446 ^ v445) & 1) != 0)
                  {
                    return 0;
                  }

                  v447 = v736[123];
                  v448 = (v748 + v447);
                  v449 = *(v748 + v447 + 8);
                  v450 = (v54 + v447);
                  v451 = *(v54 + v447 + 8);
                  if (v449)
                  {
                    if (!v451)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    if (*v448 != *v450)
                    {
                      LOBYTE(v451) = 1;
                    }

                    if (v451)
                    {
                      return 0;
                    }
                  }

                  v452 = v736[124];
                  v453 = (v748 + v452);
                  v454 = *(v748 + v452 + 8);
                  v455 = (v54 + v452);
                  v456 = *(v54 + v452 + 8);
                  if (v454)
                  {
                    if (!v456)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    if (*v453 != *v455)
                    {
                      LOBYTE(v456) = 1;
                    }

                    if (v456)
                    {
                      return 0;
                    }
                  }

                  v457 = v736[125];
                  v458 = (v748 + v457);
                  v459 = *(v748 + v457 + 8);
                  v460 = (v54 + v457);
                  v461 = *(v54 + v457 + 8);
                  if (v459)
                  {
                    if (!v461)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    if (*v458 != *v460)
                    {
                      LOBYTE(v461) = 1;
                    }

                    if (v461)
                    {
                      return 0;
                    }
                  }

                  v462 = v736[126];
                  v463 = (v748 + v462);
                  v464 = *(v748 + v462 + 8);
                  v465 = (v54 + v462);
                  v466 = *(v54 + v462 + 8);
                  if (v464)
                  {
                    if (!v466)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    if (*v463 != *v465)
                    {
                      LOBYTE(v466) = 1;
                    }

                    if (v466)
                    {
                      return 0;
                    }
                  }

                  v467 = v736[127];
                  v468 = (v748 + v467);
                  v469 = *(v748 + v467 + 8);
                  v470 = (v54 + v467);
                  v471 = *(v54 + v467 + 8);
                  if (v469)
                  {
                    if (!v471)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    if (*v468 != *v470)
                    {
                      LOBYTE(v471) = 1;
                    }

                    if (v471)
                    {
                      return 0;
                    }
                  }

                  v472 = v736[128];
                  v473 = (v748 + v472);
                  v474 = *(v748 + v472 + 8);
                  v475 = (v54 + v472);
                  v476 = *(v54 + v472 + 8);
                  if (v474)
                  {
                    if (!v476)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    if (*v473 != *v475)
                    {
                      LOBYTE(v476) = 1;
                    }

                    if (v476)
                    {
                      return 0;
                    }
                  }

                  v477 = v736[129];
                  v478 = (v748 + v477);
                  v479 = *(v748 + v477 + 8);
                  v480 = (v54 + v477);
                  v481 = *(v54 + v477 + 8);
                  if (v479)
                  {
                    if (!v481)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    if (*v478 != *v480)
                    {
                      LOBYTE(v481) = 1;
                    }

                    if (v481)
                    {
                      return 0;
                    }
                  }

                  v482 = v736[130];
                  v483 = (v748 + v482);
                  v484 = *(v748 + v482 + 8);
                  v485 = (v54 + v482);
                  v486 = *(v54 + v482 + 8);
                  if (v484)
                  {
                    if (!v486)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    if (*v483 != *v485)
                    {
                      LOBYTE(v486) = 1;
                    }

                    if (v486)
                    {
                      return 0;
                    }
                  }

                  v487 = v736[131];
                  v488 = *(v748 + v487);
                  v489 = *(v54 + v487);
                  if (v488 == 2)
                  {
                    if (v489 != 2)
                    {
                      return 0;
                    }
                  }

                  else if (v489 == 2 || ((v489 ^ v488) & 1) != 0)
                  {
                    return 0;
                  }

                  v490 = v736[132];
                  v491 = (v748 + v490);
                  v492 = *(v748 + v490 + 8);
                  v493 = (v54 + v490);
                  v494 = *(v54 + v490 + 8);
                  if (v492)
                  {
                    if (!v494)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    if (*v491 != *v493)
                    {
                      LOBYTE(v494) = 1;
                    }

                    if (v494)
                    {
                      return 0;
                    }
                  }

                  v495 = v736[133];
                  v496 = *(v748 + v495);
                  v497 = *(v54 + v495);
                  if (v496)
                  {
                    if (!v497 || (sub_10038F898(v496, v497) & 1) == 0)
                    {
                      return 0;
                    }
                  }

                  else if (v497)
                  {
                    return 0;
                  }

                  v498 = v736[134];
                  v499 = (v748 + v498);
                  v500 = *(v748 + v498 + 8);
                  v501 = (v54 + v498);
                  v502 = *(v54 + v498 + 8);
                  if (v500)
                  {
                    if (!v502)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    if (*v499 != *v501)
                    {
                      LOBYTE(v502) = 1;
                    }

                    if (v502)
                    {
                      return 0;
                    }
                  }

                  v503 = v736[135];
                  v504 = *(v748 + v503);
                  v505 = *(v54 + v503);
                  if (v504 == 2)
                  {
                    if (v505 != 2)
                    {
                      return 0;
                    }
                  }

                  else if (v505 == 2 || ((v505 ^ v504) & 1) != 0)
                  {
                    return 0;
                  }

                  v506 = v736[136];
                  v507 = *(v748 + v506);
                  v508 = *(v54 + v506);
                  if (v507)
                  {
                    if (!v508)
                    {
                      return 0;
                    }

                    v509 = *(v54 + v506);

                    v510 = sub_100DE7510(v507, v508);

                    if ((v510 & 1) == 0)
                    {
                      return 0;
                    }
                  }

                  else if (v508)
                  {
                    return 0;
                  }

                  v511 = v736[137];
                  v512 = *(v748 + v511);
                  v513 = *(v54 + v511);
                  if (v512 == 2)
                  {
                    if (v513 != 2)
                    {
                      return 0;
                    }
                  }

                  else if (v513 == 2 || ((v513 ^ v512) & 1) != 0)
                  {
                    return 0;
                  }

                  v514 = v736[138];
                  v515 = (v748 + v514);
                  v516 = *(v748 + v514 + 8);
                  v517 = (v54 + v514);
                  v518 = *(v54 + v514 + 8);
                  if (v516)
                  {
                    if (!v518)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    if (*v515 != *v517)
                    {
                      LOBYTE(v518) = 1;
                    }

                    if (v518)
                    {
                      return 0;
                    }
                  }

                  v519 = v736[139];
                  v520 = (v748 + v519);
                  v521 = *(v748 + v519 + 8);
                  v522 = (v54 + v519);
                  v523 = *(v54 + v519 + 8);
                  if (v521)
                  {
                    if (!v523)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    if (*v520 != *v522)
                    {
                      LOBYTE(v523) = 1;
                    }

                    if (v523)
                    {
                      return 0;
                    }
                  }

                  v524 = v736[140];
                  v525 = *(v748 + v524);
                  v526 = *(v54 + v524);
                  if (v525 == 2)
                  {
                    if (v526 != 2)
                    {
                      return 0;
                    }
                  }

                  else if (v526 == 2 || ((v526 ^ v525) & 1) != 0)
                  {
                    return 0;
                  }

                  v527 = v736[141];
                  v528 = *(v748 + v527);
                  v529 = *(v54 + v527);
                  if (v528 == 2)
                  {
                    if (v529 != 2)
                    {
                      return 0;
                    }
                  }

                  else if (v529 == 2 || ((v529 ^ v528) & 1) != 0)
                  {
                    return 0;
                  }

                  v530 = v736[142];
                  v531 = (v748 + v530);
                  v532 = *(v748 + v530 + 8);
                  v533 = (v54 + v530);
                  v534 = *(v54 + v530 + 8);
                  if (v532)
                  {
                    if (!v534)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    if (*v531 != *v533)
                    {
                      LOBYTE(v534) = 1;
                    }

                    if (v534)
                    {
                      return 0;
                    }
                  }

                  v535 = v736[143];
                  v536 = (v748 + v535);
                  v537 = *(v748 + v535 + 8);
                  v538 = (v54 + v535);
                  v539 = *(v54 + v535 + 8);
                  if (v537)
                  {
                    if (!v539)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    if (*v536 != *v538)
                    {
                      LOBYTE(v539) = 1;
                    }

                    if (v539)
                    {
                      return 0;
                    }
                  }

                  v540 = v736[144];
                  v541 = (v748 + v540);
                  v542 = *(v748 + v540 + 8);
                  v543 = (v54 + v540);
                  v544 = *(v54 + v540 + 8);
                  if (v542)
                  {
                    if (!v544)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    if (*v541 != *v543)
                    {
                      LOBYTE(v544) = 1;
                    }

                    if (v544)
                    {
                      return 0;
                    }
                  }

                  v545 = v736[145];
                  v546 = (v748 + v545);
                  v547 = *(v748 + v545 + 8);
                  v548 = (v54 + v545);
                  v549 = *(v54 + v545 + 8);
                  if (v547)
                  {
                    if (!v549)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    if (*v546 != *v548)
                    {
                      LOBYTE(v549) = 1;
                    }

                    if (v549)
                    {
                      return 0;
                    }
                  }

                  v550 = v736[146];
                  v551 = (v748 + v550);
                  v552 = *(v748 + v550 + 8);
                  v553 = (v54 + v550);
                  v554 = *(v54 + v550 + 8);
                  if (v552)
                  {
                    if (!v554)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    if (*v551 != *v553)
                    {
                      LOBYTE(v554) = 1;
                    }

                    if (v554)
                    {
                      return 0;
                    }
                  }

                  v555 = v736[147];
                  v556 = (v748 + v555);
                  v557 = *(v748 + v555 + 8);
                  v558 = (v54 + v555);
                  v559 = *(v54 + v555 + 8);
                  if (v557)
                  {
                    if (!v559)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    if (*v556 != *v558)
                    {
                      LOBYTE(v559) = 1;
                    }

                    if (v559)
                    {
                      return 0;
                    }
                  }

                  v560 = v736[148];
                  v561 = (v748 + v560);
                  v562 = *(v748 + v560 + 8);
                  v563 = (v54 + v560);
                  v564 = *(v54 + v560 + 8);
                  if (v562)
                  {
                    if (!v564)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    if (*v561 != *v563)
                    {
                      LOBYTE(v564) = 1;
                    }

                    if (v564)
                    {
                      return 0;
                    }
                  }

                  v565 = v736[149];
                  v566 = (v748 + v565);
                  v567 = *(v748 + v565 + 8);
                  v568 = (v54 + v565);
                  v569 = *(v54 + v565 + 8);
                  if (v567)
                  {
                    if (!v569)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    if (*v566 != *v568)
                    {
                      LOBYTE(v569) = 1;
                    }

                    if (v569)
                    {
                      return 0;
                    }
                  }

                  v570 = v736[150];
                  v571 = (v748 + v570);
                  v572 = *(v748 + v570 + 8);
                  v573 = (v54 + v570);
                  v574 = *(v54 + v570 + 8);
                  if (v572)
                  {
                    if (!v574)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    if (*v571 != *v573)
                    {
                      LOBYTE(v574) = 1;
                    }

                    if (v574)
                    {
                      return 0;
                    }
                  }

                  v575 = v736[151];
                  v576 = (v748 + v575);
                  v577 = *(v748 + v575 + 8);
                  v578 = (v54 + v575);
                  v579 = *(v54 + v575 + 8);
                  if (v577)
                  {
                    if (!v579)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    if (*v576 != *v578)
                    {
                      LOBYTE(v579) = 1;
                    }

                    if (v579)
                    {
                      return 0;
                    }
                  }

                  v580 = v736[152];
                  v581 = (v748 + v580);
                  v582 = *(v748 + v580 + 8);
                  v583 = (v54 + v580);
                  v584 = *(v54 + v580 + 8);
                  if (v582)
                  {
                    if (!v584)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    if (*v581 != *v583)
                    {
                      LOBYTE(v584) = 1;
                    }

                    if (v584)
                    {
                      return 0;
                    }
                  }

                  v585 = v736[153];
                  v586 = (v748 + v585);
                  v587 = *(v748 + v585 + 8);
                  v588 = (v54 + v585);
                  v589 = *(v54 + v585 + 8);
                  if (v587)
                  {
                    if (!v589)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    if (*v586 != *v588)
                    {
                      LOBYTE(v589) = 1;
                    }

                    if (v589)
                    {
                      return 0;
                    }
                  }

                  v590 = v736[154];
                  v591 = (v748 + v590);
                  v592 = *(v748 + v590 + 8);
                  v593 = (v54 + v590);
                  v594 = *(v54 + v590 + 8);
                  if (v592)
                  {
                    if (!v594)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    if (*v591 != *v593)
                    {
                      LOBYTE(v594) = 1;
                    }

                    if (v594)
                    {
                      return 0;
                    }
                  }

                  v595 = v736[155];
                  v596 = (v748 + v595);
                  v597 = *(v748 + v595 + 8);
                  v598 = (v54 + v595);
                  v599 = *(v54 + v595 + 8);
                  if (v597)
                  {
                    if (!v599)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    if (*v596 != *v598)
                    {
                      LOBYTE(v599) = 1;
                    }

                    if (v599)
                    {
                      return 0;
                    }
                  }

                  v600 = v736[156];
                  v601 = (v748 + v600);
                  v602 = *(v748 + v600 + 8);
                  v603 = (v54 + v600);
                  v604 = *(v54 + v600 + 8);
                  if (v602)
                  {
                    if (!v604)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    if (*v601 != *v603)
                    {
                      LOBYTE(v604) = 1;
                    }

                    if (v604)
                    {
                      return 0;
                    }
                  }

                  v605 = v736[157];
                  v606 = (v748 + v605);
                  v607 = *(v748 + v605 + 8);
                  v608 = (v54 + v605);
                  v609 = *(v54 + v605 + 8);
                  if (v607)
                  {
                    if (!v609)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    if (*v606 != *v608)
                    {
                      LOBYTE(v609) = 1;
                    }

                    if (v609)
                    {
                      return 0;
                    }
                  }

                  v610 = v736[158];
                  v611 = (v748 + v610);
                  v612 = *(v748 + v610 + 8);
                  v613 = (v54 + v610);
                  v614 = *(v54 + v610 + 8);
                  if (v612)
                  {
                    if (!v614)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    if (*v611 != *v613)
                    {
                      LOBYTE(v614) = 1;
                    }

                    if (v614)
                    {
                      return 0;
                    }
                  }

                  v615 = v736[159];
                  v616 = (v748 + v615);
                  v617 = *(v748 + v615 + 8);
                  v618 = (v54 + v615);
                  v619 = *(v54 + v615 + 8);
                  if (v617)
                  {
                    if (!v619)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    if (*v616 != *v618)
                    {
                      LOBYTE(v619) = 1;
                    }

                    if (v619)
                    {
                      return 0;
                    }
                  }

                  v620 = v736[160];
                  v621 = *(v748 + v620);
                  v622 = *(v54 + v620);
                  if (v621 == 2)
                  {
                    if (v622 != 2)
                    {
                      return 0;
                    }
                  }

                  else if (v622 == 2 || ((v622 ^ v621) & 1) != 0)
                  {
                    return 0;
                  }

                  v623 = v736[161];
                  v624 = (v748 + v623);
                  v625 = *(v748 + v623 + 8);
                  v626 = (v54 + v623);
                  v627 = *(v54 + v623 + 8);
                  if (v625)
                  {
                    if (!v627)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    if (*v624 != *v626)
                    {
                      LOBYTE(v627) = 1;
                    }

                    if (v627)
                    {
                      return 0;
                    }
                  }

                  v628 = v736[162];
                  v629 = (v748 + v628);
                  v630 = *(v748 + v628 + 8);
                  v631 = (v54 + v628);
                  v632 = *(v54 + v628 + 8);
                  if (v630)
                  {
                    if (!v632)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    if (*v629 != *v631)
                    {
                      LOBYTE(v632) = 1;
                    }

                    if (v632)
                    {
                      return 0;
                    }
                  }

                  v633 = v736[163];
                  v634 = (v748 + v633);
                  v635 = *(v748 + v633 + 8);
                  v636 = (v54 + v633);
                  v637 = *(v54 + v633 + 8);
                  if (v635)
                  {
                    if (!v637)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    if (*v634 != *v636)
                    {
                      LOBYTE(v637) = 1;
                    }

                    if (v637)
                    {
                      return 0;
                    }
                  }

                  v638 = v736[164];
                  v639 = (v748 + v638);
                  v640 = *(v748 + v638 + 8);
                  v641 = (v54 + v638);
                  v642 = v641[1];
                  if (v640)
                  {
                    if (!v642 || (*v639 != *v641 || v640 != v642) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                    {
                      return 0;
                    }

LABEL_944:
                    v643 = v736[165];
                    v644 = (v748 + v643);
                    v645 = *(v748 + v643 + 8);
                    v646 = (v54 + v643);
                    v647 = *(v54 + v643 + 8);
                    if (v645)
                    {
                      if (!v647)
                      {
                        return 0;
                      }
                    }

                    else
                    {
                      if (*v644 != *v646)
                      {
                        LOBYTE(v647) = 1;
                      }

                      if (v647)
                      {
                        return 0;
                      }
                    }

                    v648 = v736[166];
                    v649 = *(v748 + v648);
                    v650 = *(v54 + v648);
                    if (v649 == 2)
                    {
                      if (v650 != 2)
                      {
                        return 0;
                      }
                    }

                    else if (v650 == 2 || ((v650 ^ v649) & 1) != 0)
                    {
                      return 0;
                    }

                    v651 = v736[167];
                    v652 = (v748 + v651);
                    v653 = *(v748 + v651 + 8);
                    v654 = (v54 + v651);
                    v655 = *(v54 + v651 + 8);
                    if (v653)
                    {
                      if (!v655)
                      {
                        return 0;
                      }
                    }

                    else
                    {
                      if (*v652 != *v654)
                      {
                        LOBYTE(v655) = 1;
                      }

                      if (v655)
                      {
                        return 0;
                      }
                    }

                    v656 = v736[168];
                    v657 = *(v748 + v656);
                    v658 = *(v54 + v656);
                    if (v657 == 2)
                    {
                      if (v658 != 2)
                      {
                        return 0;
                      }
                    }

                    else if (v658 == 2 || ((v658 ^ v657) & 1) != 0)
                    {
                      return 0;
                    }

                    v659 = v736[169];
                    v660 = (v748 + v659);
                    v661 = *(v748 + v659 + 8);
                    v662 = (v54 + v659);
                    v663 = *(v54 + v659 + 8);
                    if (v661)
                    {
                      if (!v663)
                      {
                        return 0;
                      }
                    }

                    else
                    {
                      if (*v660 != *v662)
                      {
                        LOBYTE(v663) = 1;
                      }

                      if (v663)
                      {
                        return 0;
                      }
                    }

                    v664 = v736[170];
                    v665 = (v748 + v664);
                    v666 = *(v748 + v664 + 8);
                    v667 = (v54 + v664);
                    v668 = *(v54 + v664 + 8);
                    if (v666)
                    {
                      if (!v668)
                      {
                        return 0;
                      }
                    }

                    else
                    {
                      if (*v665 != *v667)
                      {
                        LOBYTE(v668) = 1;
                      }

                      if (v668)
                      {
                        return 0;
                      }
                    }

                    v669 = v736[171];
                    v670 = *(v748 + v669);
                    v671 = *(v54 + v669);
                    if (v670 == 2)
                    {
                      if (v671 != 2)
                      {
                        return 0;
                      }
                    }

                    else if (v671 == 2 || ((v671 ^ v670) & 1) != 0)
                    {
                      return 0;
                    }

                    v672 = v736[172];
                    v673 = (v748 + v672);
                    v674 = *(v748 + v672 + 4);
                    v675 = (v54 + v672);
                    v676 = *(v54 + v672 + 4);
                    if (v674)
                    {
                      if (!v676)
                      {
                        return 0;
                      }
                    }

                    else
                    {
                      if (*v673 != *v675)
                      {
                        LOBYTE(v676) = 1;
                      }

                      if (v676)
                      {
                        return 0;
                      }
                    }

                    v677 = v736[173];
                    v678 = (v748 + v677);
                    v679 = *(v748 + v677 + 8);
                    v680 = (v54 + v677);
                    v681 = *(v54 + v677 + 8);
                    if (v679)
                    {
                      if (!v681)
                      {
                        return 0;
                      }
                    }

                    else
                    {
                      if (*v678 != *v680)
                      {
                        LOBYTE(v681) = 1;
                      }

                      if (v681)
                      {
                        return 0;
                      }
                    }

                    v682 = v736[174];
                    v683 = (v748 + v682);
                    v684 = *(v748 + v682 + 8);
                    v685 = (v54 + v682);
                    v686 = *(v54 + v682 + 8);
                    if (v684)
                    {
                      if (!v686)
                      {
                        return 0;
                      }
                    }

                    else
                    {
                      if (*v683 != *v685)
                      {
                        LOBYTE(v686) = 1;
                      }

                      if (v686)
                      {
                        return 0;
                      }
                    }

                    v687 = v736[175];
                    v688 = (v748 + v687);
                    v689 = *(v748 + v687 + 8);
                    v690 = (v54 + v687);
                    v691 = *(v54 + v687 + 8);
                    if (v689)
                    {
                      if (!v691)
                      {
                        return 0;
                      }
                    }

                    else
                    {
                      if (*v688 != *v690)
                      {
                        LOBYTE(v691) = 1;
                      }

                      if (v691)
                      {
                        return 0;
                      }
                    }

                    v692 = v736[176];
                    v693 = (v748 + v692);
                    v694 = *(v748 + v692 + 8);
                    v695 = (v54 + v692);
                    v696 = *(v54 + v692 + 8);
                    if (v694)
                    {
                      if (!v696)
                      {
                        return 0;
                      }
                    }

                    else
                    {
                      if (*v693 != *v695)
                      {
                        LOBYTE(v696) = 1;
                      }

                      if (v696)
                      {
                        return 0;
                      }
                    }

                    v697 = v736[177];
                    v698 = (v748 + v697);
                    v699 = *(v748 + v697 + 8);
                    v700 = (v54 + v697);
                    v701 = *(v54 + v697 + 8);
                    if (v699)
                    {
                      if (!v701)
                      {
                        return 0;
                      }
                    }

                    else
                    {
                      if (*v698 != *v700)
                      {
                        LOBYTE(v701) = 1;
                      }

                      if (v701)
                      {
                        return 0;
                      }
                    }

                    v702 = v736[178];
                    v703 = (v748 + v702);
                    v704 = *(v748 + v702 + 8);
                    v705 = (v54 + v702);
                    v706 = *(v54 + v702 + 8);
                    if (v704)
                    {
                      if (!v706)
                      {
                        return 0;
                      }
                    }

                    else
                    {
                      if (*v703 != *v705)
                      {
                        LOBYTE(v706) = 1;
                      }

                      if (v706)
                      {
                        return 0;
                      }
                    }

                    v707 = v736[179];
                    v708 = (v748 + v707);
                    v709 = *(v748 + v707 + 8);
                    v710 = (v54 + v707);
                    v711 = *(v54 + v707 + 8);
                    if (v709)
                    {
                      if (!v711)
                      {
                        return 0;
                      }
                    }

                    else
                    {
                      if (*v708 != *v710)
                      {
                        LOBYTE(v711) = 1;
                      }

                      if (v711)
                      {
                        return 0;
                      }
                    }

                    v712 = v736[180];
                    v713 = *(v748 + v712);
                    v714 = *(v54 + v712);
                    if (v713 == 2)
                    {
                      if (v714 != 2)
                      {
                        return 0;
                      }
                    }

                    else if (v714 == 2 || ((v714 ^ v713) & 1) != 0)
                    {
                      return 0;
                    }

                    v715 = v736[181];
                    v716 = (v748 + v715);
                    v717 = *(v748 + v715 + 8);
                    v718 = (v54 + v715);
                    v719 = *(v54 + v715 + 8);
                    if (v717)
                    {
                      if (!v719)
                      {
                        return 0;
                      }
                    }

                    else
                    {
                      if (*v716 != *v718)
                      {
                        LOBYTE(v719) = 1;
                      }

                      if (v719)
                      {
                        return 0;
                      }
                    }

                    v720 = v736[182];
                    v721 = (v748 + v720);
                    v722 = *(v748 + v720 + 8);
                    v723 = (v54 + v720);
                    v724 = *(v54 + v720 + 8);
                    if (v722)
                    {
                      if (!v724)
                      {
                        return 0;
                      }
                    }

                    else
                    {
                      if (*v721 != *v723)
                      {
                        LOBYTE(v724) = 1;
                      }

                      if (v724)
                      {
                        return 0;
                      }
                    }

                    v725 = v736[183];
                    v726 = v748 + v725;
                    v727 = *(v748 + v725 + 1);
                    v728 = v54 + v725;
                    v729 = *(v54 + v725 + 1);
                    if (v727)
                    {
                      if (!v729)
                      {
                        return 0;
                      }
                    }

                    else
                    {
                      if (*v726 != *v728)
                      {
                        LOBYTE(v729) = 1;
                      }

                      if (v729)
                      {
                        return 0;
                      }
                    }

                    v730 = v736[184];
                    v731 = (v748 + v730);
                    v732 = *(v748 + v730 + 8);
                    v733 = (v54 + v730);
                    v734 = *(v54 + v730 + 8);
                    if (v732)
                    {
                      if (!v734)
                      {
                        return 0;
                      }
                    }

                    else
                    {
                      if (*v731 != *v733)
                      {
                        LOBYTE(v734) = 1;
                      }

                      if (v734)
                      {
                        return 0;
                      }
                    }

                    return 1;
                  }

                  if (!v642)
                  {
                    goto LABEL_944;
                  }

                  return 0;
                }

                v204 = *(v181 + 1);
                v758 = *v181;
                v759 = v204;
                v760 = *(v181 + 2);
                *(v761 + 8) = *(v181 + 56);
                *(&v761[1] + 8) = *(v181 + 72);
                *(&v761[2] + 8) = *(v181 + 88);
                v205 = *(v181 + 13);
                *&v761[0] = v185;
                *(&v761[3] + 1) = v205;
                v206 = *v188;
                v207 = v188[2];
                v761[5] = v188[1];
                v761[6] = v207;
                v761[4] = v206;
                v208 = *(v188 + 13);
                v762 = v781;
                v766 = v208;
                v765 = *(v188 + 88);
                v764 = *(v188 + 72);
                v763 = *(v188 + 56);
                sub_1000D2A70(v774, v785, &qword_1016ADCE8, &qword_1013C53A0);
                sub_1000D2A70(v780, v785, &qword_1016ADCE8, &qword_1013C53A0);
                sub_10000B3A8(&v758, &qword_1016ADCF0, &qword_1013C53A8);
                return 0;
              }

              (*(v747 + 8))(v744, v737);
            }

            sub_10000B3A8(v745, &unk_1016B1660, &unk_10138CE10);
            return 0;
          }

          (*(v747 + 8))(v741, v737);
        }

        sub_10000B3A8(v742, &unk_1016B1660, &unk_10138CE10);
        return 0;
      }

      (*(v739 + 8))(v22, v740);
    }

    sub_10000B3A8(v26, &qword_1016AF880, &unk_10138CE20);
    return 0;
  }

  result = 0;
  if (v112 != 2 && ((v112 ^ v111) & 1) == 0)
  {
    goto LABEL_326;
  }

  return result;
}