uint64_t sub_10007547C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = type metadata accessor for ContinuousClock.Instant();
  *(v6 + 64) = v12;
  v13 = *(v12 - 8);
  *(v6 + 72) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return _swift_task_switch(sub_10007557C, 0, 0);
}

uint64_t sub_10007557C()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = type metadata accessor for ContinuousClock();
  v7 = sub_100075934(&qword_1000B79F0, &type metadata accessor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  sub_100075934(&qword_1000B8D50, &type metadata accessor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = async function pointer to dispatch thunk of Clock.sleep(until:tolerance:)[1];
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_10007570C;
  v11 = v0[11];
  v12 = v0[7];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v11, v0 + 2, v6, v7);
}

uint64_t sub_10007570C()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 64);
  v7 = *v1;
  v7[15] = v0;

  v4(v5, v6);
  if (v0)
  {

    return _swift_task_switch(sub_1000758C8, 0, 0);
  }

  else
  {
    v9 = v7[10];
    v8 = v7[11];

    v10 = v7[1];

    return v10();
  }
}

uint64_t sub_1000758C8()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

uint64_t sub_100075934(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10007597C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000759B4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100011E6C;

  return sub_10002CA20(a1, v5);
}

uint64_t getEnumTagSinglePayload for SpamDecisioningManager.SpamDecisioningInput.MessageType(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for SpamDecisioningManager.SpamDecisioningInput.MessageType(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_100075B58()
{
  result = qword_1000B8D58;
  if (!qword_1000B8D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B8D58);
  }

  return result;
}

uint64_t sub_100075BB0(uint64_t a1)
{
  v2[28] = a1;
  v2[29] = v1;
  v3 = type metadata accessor for SenderLookUpDecisioningComponent.SenderLookUpInput(0);
  v2[30] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[31] = swift_task_alloc();

  return _swift_task_switch(sub_100075C44, 0, 0);
}

uint64_t sub_100075C44()
{
  v1 = v0[28];
  v2 = v1 + *(v0[30] + 20);
  v3 = *(v2 + 32);
  v4 = *(v2 + 40);
  v5 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v5 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    if (sub_10007693C(v0[28]))
    {
      v6 = objc_allocWithZone(CMLClientConfig);
      v7 = String._bridgeToObjectiveC()();
      v8 = String._bridgeToObjectiveC()();
      v9 = [v6 initWithUseCase:v7 sourceApplicationBundleIdentifier:v8];
      v0[32] = v9;

      v10 = [objc_allocWithZone(CMLKeywordPIRClient) initWithClientConfig:v9];
      v0[33] = v10;
      v11 = String._bridgeToObjectiveC()();
      v0[34] = v11;
      v0[2] = v0;
      v0[7] = v0 + 24;
      v0[3] = sub_100076048;
      v12 = swift_continuation_init();
      v0[17] = sub_100002074(&qword_1000B8E50, &unk_100093070);
      v0[10] = _NSConcreteStackBlock;
      v0[11] = 1107296256;
      v0[12] = sub_10007654C;
      v0[13] = &unk_1000B1288;
      v0[14] = v12;
      [v10 requestDataByStringKeyword:v11 completionHandler:v0 + 10];

      return _swift_continuation_await(v0 + 2);
    }

    v21 = v0[29];
    v22 = static os_log_type_t.default.getter();
    v19 = 0x800000010009A010;
    v20 = 0xD00000000000002CLL;
    sub_10005E11C(v22, 0xD00000000000002CLL, 0x800000010009A010, 0xD000000000000065, 0x800000010009A040, 50);
  }

  else
  {
    v13 = v0[31];
    v27 = v0[29];
    v14 = static os_log_type_t.error.getter();
    _StringGuts.grow(_:)(21);

    sub_1000771E8(v1, v13);
    v15._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v15);

    v16._countAndFlagsBits = 32032;
    v16._object = 0xE200000000000000;
    String.append(_:)(v16);
    sub_10005E11C(v14, 0xD000000000000011, 0x800000010009A100, 0xD000000000000065, 0x800000010009A040, 45);

    _StringGuts.grow(_:)(21);

    sub_1000771E8(v1, v13);
    v17._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v17);

    v18._countAndFlagsBits = 32032;
    v18._object = 0xE200000000000000;
    String.append(_:)(v18);
    v20 = 0xD000000000000011;
    v19 = 0x800000010009A100;
  }

  sub_10000B6B0();
  swift_allocError();
  *v23 = v20;
  *(v23 + 8) = v19;
  *(v23 + 16) = 0;
  swift_willThrow();
  v24 = v0[31];

  v25 = v0[1];

  return v25(0);
}

uint64_t sub_100076048()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 280) = v2;
  if (v2)
  {
    v3 = sub_10007631C;
  }

  else
  {
    v3 = sub_100076158;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100076158()
{
  v2 = *(v0 + 192);
  v1 = *(v0 + 200);

  v3 = v1 >> 62;
  if ((v1 >> 62) > 1)
  {
    if (v3 != 2 || *(v2 + 16) == *(v2 + 24))
    {
      goto LABEL_13;
    }

    goto LABEL_7;
  }

  if (v3)
  {
    if (v2 == v2 >> 32)
    {
LABEL_13:

      goto LABEL_14;
    }

LABEL_7:
    if (v3 == 2)
    {
      v5 = *(v2 + 16);
      v6 = __DataStorage._bytes.getter();
      if (!v6)
      {
LABEL_27:
        __DataStorage._length.getter();
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      v7 = v6;
      v8 = __DataStorage._offset.getter();
      if (!__OFSUB__(v5, v8))
      {
        v9 = (v5 - v8 + v7);
        __DataStorage._length.getter();
        if (!v9)
        {
          goto LABEL_28;
        }

LABEL_19:
        v16 = *(v0 + 264);
        v4 = *v9;

        goto LABEL_20;
      }
    }

    else
    {
      if (v2 <= v2 >> 32)
      {
        v12 = __DataStorage._bytes.getter();
        if (!v12)
        {
LABEL_29:
          result = __DataStorage._length.getter();
          __break(1u);
          goto LABEL_30;
        }

        v13 = v12;
        v14 = __DataStorage._offset.getter();
        if (!__OFSUB__(v2, v14))
        {
          v9 = (v2 - v14 + v13);
          result = __DataStorage._length.getter();
          if (!v9)
          {
LABEL_30:
            __break(1u);
            return result;
          }

          goto LABEL_19;
        }

        goto LABEL_26;
      }

      __break(1u);
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if ((v1 & 0xFF000000000000) != 0)
  {

    v4 = v2;
LABEL_20:
    sub_100005A28(v2, v1);
    v11 = v4 != 0;
    goto LABEL_21;
  }

LABEL_14:
  v10 = *(v0 + 256);
  sub_100005A28(v2, v1);

  v11 = 0;
LABEL_21:
  v17 = *(v0 + 248);

  v18 = *(v0 + 8);

  return v18(v11);
}

uint64_t sub_10007631C()
{
  v2 = v0[34];
  v1 = v0[35];
  v3 = v0[29];
  swift_willThrow();

  v4 = static os_log_type_t.default.getter();
  _StringGuts.grow(_:)(45);

  swift_getErrorValue();
  v6 = v0[18];
  v5 = v0[19];
  v7 = v0[20];
  v8._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v8);

  v9._countAndFlagsBits = 32032;
  v9._object = 0xE200000000000000;
  String.append(_:)(v9);
  sub_10005E11C(v4, 0xD000000000000029, 0x800000010009A0D0, 0xD000000000000065, 0x800000010009A040, 62);

  v10 = sub_100076DE4();
  if (v12 == -1)
  {
    v19 = v0[35];
    v18 = v0[32];
    v17 = v0[33];
    _StringGuts.grow(_:)(45);

    swift_getErrorValue();
    v21 = v0[21];
    v20 = v0[22];
    v22 = v0[23];
    v23._countAndFlagsBits = Error.localizedDescription.getter();
    String.append(_:)(v23);

    v24._countAndFlagsBits = 32032;
    v24._object = 0xE200000000000000;
    String.append(_:)(v24);
    v13 = 0xD000000000000029;
    v14 = 0x800000010009A0D0;
    v15 = 13;
  }

  else
  {
    v13 = v10;
    v14 = v11;
    v15 = v12;
    v16 = v0[35];
    v18 = v0[32];
    v17 = v0[33];
  }

  sub_10000B6B0();
  swift_allocError();
  *v25 = v13;
  *(v25 + 8) = v14;
  *(v25 + 16) = v15;
  swift_willThrow();

  v26 = v0[31];

  v27 = v0[1];

  return v27(0);
}

uint64_t sub_10007654C(uint64_t a1, void *a2, void *a3)
{
  v5 = *sub_1000111EC((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100002074(&qword_1000B6CC0, &qword_100091740);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    v9 = a2;
    v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v13 = *(*(v5 + 64) + 40);
    *v13 = v10;
    v13[1] = v12;

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_100076634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if ((a1 != 5456722 || a2 != 0xE300000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    if (a1 == 0x6567617373654D69 && a2 == 0xE800000000000000)
    {
      a8 = a7;
    }

    else
    {
      a8 = a7;
      if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        if (a1 == 5459283 && a2 == 0xE300000000000000)
        {
          a8 = a6;
        }

        else
        {
          v17 = 0;
          a8 = a6;
          if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            goto LABEL_13;
          }
        }
      }
    }
  }

  v17 = sub_100021018(a3, a4, a8);
LABEL_13:
  v18 = *(a9 + *(type metadata accessor for SenderLookUpDecisioningComponent.SenderLookUpInput(0) + 20) + 105);
  if (v18 > 1)
  {
    if (v18 == 2)
    {
      a5 = (a5 >> 8) & 1;
    }

    else
    {
      a5 = 0;
    }
  }

  else if (v18)
  {
    a5 = HIWORD(a5) & 1;
  }

  return v17 & a5 & 1;
}

uint64_t sub_1000767B0()
{
  v1 = *(v0 + 2);

  v2 = OBJC_IVAR____TtC13frauddefensed32SenderLookUpDecisioningComponent_logger;
  v3 = type metadata accessor for Logger();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_10007687C()
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

uint64_t sub_10007693C(uint64_t a1)
{
  v2 = type metadata accessor for SenderLookUpDecisioningComponent.SenderLookUpInput(0);
  v3 = *(*(v2 - 8) + 64);
  v5 = __chkstk_darwin(v2, v4);
  v46 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5, v7);
  v51 = &v45 - v8;
  v9 = type metadata accessor for Locale();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9, v12);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100002074(&qword_1000B6A68, &qword_10008F6F0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8, v17);
  v19 = &v45 - v18;
  v20 = *(a1 + *(type metadata accessor for SpamDecisioningAsset(0) + 32));
  v21 = *(v20 + 320);
  v48 = *(v20 + 321);
  v49 = *(v20 + 322);
  v50 = v21;
  v22 = *(v20 + 328);
  v23 = *(v20 + 336);
  v24 = *(v20 + 344);
  static Locale.current.getter();
  Locale.region.getter();
  (*(v10 + 8))(v14, v9);
  v25 = type metadata accessor for Locale.Region();
  v26 = *(v25 - 8);
  if ((*(v26 + 48))(v19, 1, v25) == 1)
  {
    sub_100077298(v19);
    v27 = 0xE700000000000000;
    v47 = 0x6E776F6E6B6E75;
  }

  else
  {
    v47 = Locale.Region.identifier.getter();
    v27 = v28;
    (*(v26 + 8))(v19, v25);
  }

  v29 = v51;
  sub_1000771E8(a1, v51);
  v30 = v46;
  sub_1000771E8(a1, v46);
  v31 = v29 + *(v2 + 20);
  v33 = *(v31 + 16);
  v32 = *(v31 + 24);
  v54 = v33;
  v55 = v32;
  v52 = 5456722;
  v53 = 0xE300000000000000;
  sub_10001C1B8();
  if (StringProtocol.contains<A>(_:)())
  {
    v34 = v48 ? 256 : 0;
    v35 = v34 | v50;
    v36 = v49 ? 0x10000 : 0;
    if (sub_100076634(5456722, 0xE300000000000000, v47, v27, v35 | v36, v22, v23, v24, v30))
    {
      goto LABEL_20;
    }
  }

  v54 = v33;
  v55 = v32;
  v52 = 0x6567617373654D69;
  v53 = 0xE800000000000000;
  if (StringProtocol.contains<A>(_:)() & 1) != 0 && (!v48 ? (v37 = 0) : (v37 = 256), (v38 = v37 | v50, !v49) ? (v39 = 0) : (v39 = 0x10000), (sub_100076634(0x6567617373654D69, 0xE800000000000000, v47, v27, v38 | v39, v22, v23, v24, v30)))
  {
LABEL_20:
    v40 = 1;
  }

  else
  {
    v54 = v33;
    v55 = v32;
    v52 = 5459283;
    v53 = 0xE300000000000000;
    if (StringProtocol.contains<A>(_:)())
    {
      if (v48)
      {
        v41 = 256;
      }

      else
      {
        v41 = 0;
      }

      v42 = v41 | v50;
      if (v49)
      {
        v43 = 0x10000;
      }

      else
      {
        v43 = 0;
      }

      v40 = sub_100076634(5459283, 0xE300000000000000, v47, v27, v42 | v43, v22, v23, v24, v30);
    }

    else
    {
      v40 = 0;
    }
  }

  sub_100077300(v30);
  sub_100077300(v51);
  return v40 & 1;
}

unint64_t sub_100076DE4()
{
  v0 = _convertErrorToNSError(_:)();
  v1 = [v0 userInfo];
  v2 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v2 + 16))
  {

    goto LABEL_12;
  }

  v5 = sub_100057F68(v3, v4);
  v7 = v6;

  if ((v7 & 1) == 0)
  {
LABEL_12:

    goto LABEL_13;
  }

  sub_100005BBC(*(v2 + 56) + 32 * v5, v18);

  sub_10007724C();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_13:

    return 0;
  }

  v8 = [v17 domain];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  if ((v9 != 0xD000000000000010 || 0x800000010009A120 != v11) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    if (v9 == 0xD000000000000016 && 0x800000010009A140 == v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v14 = [v17 code];

      if (v14 == 29)
      {
        return 0xD000000000000042;
      }

      if (v14 == 8)
      {
        return 0xD000000000000033;
      }

      if (v14 == 7)
      {
        return 0xD00000000000003BLL;
      }

      return 0xD00000000000002CLL;
    }

    if (v9 == 0xD000000000000012 && 0x800000010009A160 == v11)
    {

      goto LABEL_36;
    }

    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v15)
    {
LABEL_36:
      v16 = [v17 code];

      if (v16 == 4097)
      {
        return 0xD00000000000003DLL;
      }

      else
      {
        return 0xD00000000000003ALL;
      }
    }

    return 0;
  }

  v12 = [v17 code];

  if (v12 > -1004)
  {
    if (v12 != -1003)
    {
      if (v12 == -1001)
      {
        return 0xD00000000000003ALL;
      }

      return 0xD000000000000031;
    }

    return 0xD00000000000003CLL;
  }

  else
  {
    if (v12 != -1009)
    {
      if (v12 == -1004)
      {
        return 0xD000000000000038;
      }

      return 0xD000000000000031;
    }

    return 0xD00000000000003BLL;
  }
}

uint64_t sub_1000771E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SenderLookUpDecisioningComponent.SenderLookUpInput(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10007724C()
{
  result = qword_1000B8E58;
  if (!qword_1000B8E58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000B8E58);
  }

  return result;
}

uint64_t sub_100077298(uint64_t a1)
{
  v2 = sub_100002074(&qword_1000B6A68, &qword_10008F6F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100077300(uint64_t a1)
{
  v2 = type metadata accessor for SenderLookUpDecisioningComponent.SenderLookUpInput(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100077380(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SpamDecisioningAsset(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100077454(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SpamDecisioningAsset(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_100077510()
{
  result = type metadata accessor for SpamDecisioningAsset(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

double sub_100077584@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_100057F68(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_100005BBC(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

double sub_1000775E8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_100057F68(a1, a2), (v7 & 1) != 0))
  {
    sub_100011DFC(*(a3 + 56) + 40 * v6, a4, &qword_1000B6A00, &qword_10008F6B0);
  }

  else
  {
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    *&result = 1;
    *(a4 + 24) = xmmword_10008F650;
  }

  return result;
}

void *sub_100077658(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_100049DCC(*(a1 + 16), 0);
  v4 = sub_100087D9C(&v6, v3 + 4, v2, a1);
  sub_10000BAD4();
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return &_swiftEmptyArrayStorage;
  }

  return v3;
}

char *sub_1000776E8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_100049E50(*(a1 + 16), 0);
  v4 = *(type metadata accessor for NemesisError() - 8);
  v5 = sub_100087EF4(&v7, &v3[(*(v4 + 80) + 32) & ~*(v4 + 80)], v2, a1);
  sub_10000BAD4();
  if (v5 != v2)
  {
    __break(1u);
LABEL_4:

    return &_swiftEmptyArrayStorage;
  }

  return v3;
}

uint64_t sub_1000777B0()
{
  v1[14] = v0;
  v2 = type metadata accessor for SpamDecisioningAsset(0);
  v1[15] = v2;
  v3 = *(v2 - 8);
  v1[16] = v3;
  v4 = *(v3 + 64) + 15;
  v1[17] = swift_task_alloc();
  v5 = *(*(sub_100002074(&qword_1000B6CB8, &unk_10008F9F0) - 8) + 64) + 15;
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v6 = *(*(sub_100002074(&qword_1000B9058, &qword_100093140) - 8) + 64) + 15;
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v7 = type metadata accessor for UAFAssetManager.AssetInfo(0);
  v1[25] = v7;
  v8 = *(v7 - 8);
  v1[26] = v8;
  v9 = *(v8 + 64) + 15;
  v1[27] = swift_task_alloc();

  return _swift_task_switch(sub_100077978, 0, 0);
}

uint64_t sub_100077978()
{
  v1 = v0[14];
  v0[28] = OBJC_IVAR____TtC13frauddefensed22SpamDecisioningManager_logger;
  v2 = static os_log_type_t.default.getter();
  sub_10005E11C(v2, 0xD000000000000031, 0x80000001000956C0, 0xD00000000000005BLL, 0x8000000100095700, 543);
  sub_100082B5C();
  v3 = sub_10005163C();

  if (v3)
  {
    v4 = static os_log_type_t.debug.getter();
    sub_10005E11C(v4, 0xD000000000000040, 0x800000010009ACE0, 0xD00000000000005BLL, 0x8000000100095700, 44);
    v5 = v0[27];
    v6 = v0[23];
    v7 = v0[24];
    v9 = v0[21];
    v8 = v0[22];
    v11 = v0[19];
    v10 = v0[20];
    v13 = v0[17];
    v12 = v0[18];

    v14 = v0[1];

    return v14();
  }

  else
  {
    v16 = v0[14];
    v17 = static os_log_type_t.default.getter();
    sub_10005E11C(v17, 0xD000000000000054, 0x8000000100095760, 0xD00000000000005BLL, 0x8000000100095700, 547);
    v18 = OBJC_IVAR____TtC13frauddefensed22SpamDecisioningManager____lazy_storage___uafAssetManager;
    v0[29] = OBJC_IVAR____TtC13frauddefensed22SpamDecisioningManager____lazy_storage___uafAssetManager;
    v0[30] = *(v16 + v18);

    v19 = swift_task_alloc();
    v0[31] = v19;
    *v19 = v0;
    v19[1] = sub_100077BAC;

    return sub_100051B58();
  }
}

uint64_t sub_100077BAC()
{
  v2 = *v1;
  v3 = *(*v1 + 248);
  v7 = *v1;
  *(*v1 + 256) = v0;

  if (v0)
  {
    v4 = sub_100078BEC;
  }

  else
  {
    v5 = *(v2 + 240);

    v4 = sub_100077CC8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100077CC8()
{
  sub_100054AB0();
  if (v1)
  {

LABEL_3:
    v2 = v0[28];
    v3 = v0[25];
    v4 = v0[26];
    v5 = v0[19];
    v6 = v0[14];
    v7 = static os_log_type_t.default.getter();
    sub_10005E11C(v7, 0xD000000000000045, 0x800000010009A980, 0xD00000000000005BLL, 0x8000000100095700, 64);
    (*(v4 + 56))(v5, 1, 1, v3);
    v8 = swift_task_alloc();
    v0[38] = v8;
    *v8 = v0;
    v8[1] = sub_1000785A0;
    v9 = v0[23];
    v10 = v0[19];

    return sub_1000122EC(v9, v10);
  }

  if (qword_1000B6658 != -1)
  {
    swift_once();
  }

  if (qword_1000B7C78)
  {
    v12 = qword_1000B7C78;
    v13 = String._bridgeToObjectiveC()();
    v14 = [v12 BOOLForKey:v13];

    if (v14)
    {
      goto LABEL_3;
    }
  }

  v0[33] = *(v0[14] + v0[29]);

  v15 = swift_task_alloc();
  v0[34] = v15;
  *v15 = v0;
  v15[1] = sub_100077F34;
  v16 = v0[27];

  return sub_1000505B8(v16);
}

uint64_t sub_100077F34()
{
  v2 = *v1;
  v3 = *(*v1 + 272);
  v7 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    v4 = sub_10007911C;
  }

  else
  {
    v5 = *(v2 + 264);

    v4 = sub_100078050;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100078050()
{
  v1 = v0[26];
  v2 = v0[25];
  v3 = v0[20];
  sub_100088834(v0[27], v3, type metadata accessor for UAFAssetManager.AssetInfo);
  (*(v1 + 56))(v3, 0, 1, v2);
  v4 = swift_task_alloc();
  v0[36] = v4;
  *v4 = v0;
  v4[1] = sub_100078138;
  v5 = v0[24];
  v6 = v0[20];

  return sub_1000122EC(v5, v6);
}

uint64_t sub_100078138()
{
  v2 = *(*v1 + 288);
  v5 = *v1;
  *(*v1 + 296) = v0;

  if (v0)
  {
    v3 = sub_100079248;
  }

  else
  {
    v3 = sub_10007824C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10007824C()
{
  v1 = v0[24];
  v2 = v0[15];
  v3 = v0[16];
  v4 = v0[14];
  sub_10008956C(v0[27], type metadata accessor for UAFAssetManager.AssetInfo);
  (*(v3 + 56))(v1, 0, 1, v2);
  v5 = OBJC_IVAR____TtC13frauddefensed22SpamDecisioningManager_spamAsset;
  swift_beginAccess();
  sub_100087CF4(v1, v4 + v5);
  swift_endAccess();
  v6 = v0[22];
  v7 = v0[15];
  v8 = v0[16];
  v9 = v0[14];
  v10 = OBJC_IVAR____TtC13frauddefensed22SpamDecisioningManager_spamAsset;
  swift_beginAccess();
  sub_100011DFC(v9 + v10, v6, &qword_1000B9058, &qword_100093140);
  v11 = (*(v8 + 48))(v6, 1, v7);
  v12 = v0[14];
  if (v11 == 1)
  {
    v13 = v0[28];
    sub_10000BC10(v0[22], &qword_1000B9058, &qword_100093140);
    v14 = static os_log_type_t.error.getter();
    sub_10005E11C(v14, 0xD000000000000029, 0x800000010009ACB0, 0xD00000000000005BLL, 0x8000000100095700, 69);
    sub_10000B6B0();
    swift_allocError();
    *v15 = 0xD000000000000029;
    *(v15 + 8) = 0x800000010009ACB0;
    *(v15 + 16) = 2;
    swift_willThrow();
    v16 = v0[27];
    v18 = v0[23];
    v17 = v0[24];
    v20 = v0[21];
    v19 = v0[22];
    v22 = v0[19];
    v21 = v0[20];
    v24 = v0[17];
    v23 = v0[18];

    v25 = v0[1];

    return v25();
  }

  else
  {
    v27 = v0[17];
    sub_1000887CC(v0[22], v27, type metadata accessor for SpamDecisioningAsset);
    v28 = sub_100088414();
    v29 = swift_task_alloc();
    v0[40] = v29;
    *(v29 + 16) = v28 & 1;
    *(v29 + 17) = BYTE1(v28) & 1;
    *(v29 + 18) = BYTE2(v28) & 1;
    *(v29 + 24) = v12;
    *(v29 + 32) = v27;
    v30 = async function pointer to withThrowingTaskGroup<A, B>(of:returning:isolation:body:)[1];
    v31 = swift_task_alloc();
    v0[41] = v31;
    *v31 = v0;
    v31[1] = sub_1000789E8;

    return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)(v31, &type metadata for () + 8, &type metadata for () + 8, 0, 0, &unk_1000931D8, v29, &type metadata for () + 8);
  }
}

uint64_t sub_1000785A0()
{
  v2 = *(*v1 + 304);
  v5 = *v1;
  *(*v1 + 312) = v0;

  if (v0)
  {
    v3 = sub_100079464;
  }

  else
  {
    v3 = sub_1000786B4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000786B4()
{
  v1 = v0[23];
  v2 = v0[14];
  (*(v0[16] + 56))(v1, 0, 1, v0[15]);
  v3 = OBJC_IVAR____TtC13frauddefensed22SpamDecisioningManager_spamAsset;
  swift_beginAccess();
  sub_100087CF4(v1, v2 + v3);
  swift_endAccess();
  v4 = v0[22];
  v5 = v0[15];
  v6 = v0[16];
  v7 = v0[14];
  v8 = OBJC_IVAR____TtC13frauddefensed22SpamDecisioningManager_spamAsset;
  swift_beginAccess();
  sub_100011DFC(v7 + v8, v4, &qword_1000B9058, &qword_100093140);
  v9 = (*(v6 + 48))(v4, 1, v5);
  v10 = v0[14];
  if (v9 == 1)
  {
    v11 = v0[28];
    sub_10000BC10(v0[22], &qword_1000B9058, &qword_100093140);
    v12 = static os_log_type_t.error.getter();
    sub_10005E11C(v12, 0xD000000000000029, 0x800000010009ACB0, 0xD00000000000005BLL, 0x8000000100095700, 69);
    sub_10000B6B0();
    swift_allocError();
    *v13 = 0xD000000000000029;
    *(v13 + 8) = 0x800000010009ACB0;
    *(v13 + 16) = 2;
    swift_willThrow();
    v14 = v0[27];
    v16 = v0[23];
    v15 = v0[24];
    v18 = v0[21];
    v17 = v0[22];
    v20 = v0[19];
    v19 = v0[20];
    v22 = v0[17];
    v21 = v0[18];

    v23 = v0[1];

    return v23();
  }

  else
  {
    v25 = v0[17];
    sub_1000887CC(v0[22], v25, type metadata accessor for SpamDecisioningAsset);
    v26 = sub_100088414();
    v27 = swift_task_alloc();
    v0[40] = v27;
    *(v27 + 16) = v26 & 1;
    *(v27 + 17) = BYTE1(v26) & 1;
    *(v27 + 18) = BYTE2(v26) & 1;
    *(v27 + 24) = v10;
    *(v27 + 32) = v25;
    v28 = async function pointer to withThrowingTaskGroup<A, B>(of:returning:isolation:body:)[1];
    v29 = swift_task_alloc();
    v0[41] = v29;
    *v29 = v0;
    v29[1] = sub_1000789E8;

    return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)(v29, &type metadata for () + 8, &type metadata for () + 8, 0, 0, &unk_1000931D8, v27, &type metadata for () + 8);
  }
}

uint64_t sub_1000789E8()
{
  v2 = *v1;
  v3 = *(*v1 + 328);
  v7 = *v1;
  *(*v1 + 336) = v0;

  if (v0)
  {
    v4 = sub_100079538;
  }

  else
  {
    v5 = *(v2 + 320);

    v4 = sub_100078B04;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100078B04()
{
  sub_10008956C(v0[17], type metadata accessor for SpamDecisioningAsset);
  v1 = v0[27];
  v2 = v0[23];
  v3 = v0[24];
  v5 = v0[21];
  v4 = v0[22];
  v7 = v0[19];
  v6 = v0[20];
  v9 = v0[17];
  v8 = v0[18];

  v10 = v0[1];

  return v10();
}

uint64_t sub_100078BEC()
{
  v1 = v0[30];

  v2 = v0[32];
  v3 = v0[27];
  v5 = v0[23];
  v4 = v0[24];
  v7 = v0[21];
  v6 = v0[22];
  v9 = v0[19];
  v8 = v0[20];
  v11 = v0[17];
  v10 = v0[18];

  v12 = v0[1];

  return v12();
}

uint64_t sub_100078CC8()
{
  v2 = *(*v1 + 352);
  v5 = *v1;
  *(*v1 + 360) = v0;

  if (v0)
  {
    v3 = sub_100079388;
  }

  else
  {
    v3 = sub_100078DDC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100078DDC()
{
  v1 = v0[43];
  v2 = v0[21];
  v3 = v0[15];
  v4 = v0[16];
  v5 = v0[14];

  (*(v4 + 56))(v2, 0, 1, v3);
  v6 = OBJC_IVAR____TtC13frauddefensed22SpamDecisioningManager_spamAsset;
  swift_beginAccess();
  sub_100087CF4(v2, v5 + v6);
  swift_endAccess();
  v7 = v0[22];
  v8 = v0[15];
  v9 = v0[16];
  v10 = v0[14];
  v11 = OBJC_IVAR____TtC13frauddefensed22SpamDecisioningManager_spamAsset;
  swift_beginAccess();
  sub_100011DFC(v10 + v11, v7, &qword_1000B9058, &qword_100093140);
  v12 = (*(v9 + 48))(v7, 1, v8);
  v13 = v0[14];
  if (v12 == 1)
  {
    v14 = v0[28];
    sub_10000BC10(v0[22], &qword_1000B9058, &qword_100093140);
    v15 = static os_log_type_t.error.getter();
    sub_10005E11C(v15, 0xD000000000000029, 0x800000010009ACB0, 0xD00000000000005BLL, 0x8000000100095700, 69);
    sub_10000B6B0();
    swift_allocError();
    *v16 = 0xD000000000000029;
    *(v16 + 8) = 0x800000010009ACB0;
    *(v16 + 16) = 2;
    swift_willThrow();
    v17 = v0[27];
    v19 = v0[23];
    v18 = v0[24];
    v21 = v0[21];
    v20 = v0[22];
    v23 = v0[19];
    v22 = v0[20];
    v25 = v0[17];
    v24 = v0[18];

    v26 = v0[1];

    return v26();
  }

  else
  {
    v28 = v0[17];
    sub_1000887CC(v0[22], v28, type metadata accessor for SpamDecisioningAsset);
    v29 = sub_100088414();
    v30 = swift_task_alloc();
    v0[40] = v30;
    *(v30 + 16) = v29 & 1;
    *(v30 + 17) = BYTE1(v29) & 1;
    *(v30 + 18) = BYTE2(v29) & 1;
    *(v30 + 24) = v13;
    *(v30 + 32) = v28;
    v31 = async function pointer to withThrowingTaskGroup<A, B>(of:returning:isolation:body:)[1];
    v32 = swift_task_alloc();
    v0[41] = v32;
    *v32 = v0;
    v32[1] = sub_1000789E8;

    return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)(v32, &type metadata for () + 8, &type metadata for () + 8, 0, 0, &unk_1000931D8, v30, &type metadata for () + 8);
  }
}

uint64_t sub_10007911C()
{
  v1 = v0[33];

  v0[43] = v0[35];
  v2 = v0[28];
  v3 = v0[25];
  v4 = v0[26];
  v5 = v0[18];
  v6 = v0[14];
  v7 = static os_log_type_t.debug.getter();
  sub_10005E11C(v7, 0xD00000000000002ELL, 0x80000001000987C0, 0xD00000000000005BLL, 0x8000000100095700, 58);
  (*(v4 + 56))(v5, 1, 1, v3);
  v8 = swift_task_alloc();
  v0[44] = v8;
  *v8 = v0;
  v8[1] = sub_100078CC8;
  v9 = v0[21];
  v10 = v0[18];

  return sub_1000122EC(v9, v10);
}

uint64_t sub_100079248()
{
  sub_10008956C(v0[27], type metadata accessor for UAFAssetManager.AssetInfo);
  v0[43] = v0[37];
  v1 = v0[28];
  v2 = v0[25];
  v3 = v0[26];
  v4 = v0[18];
  v5 = v0[14];
  v6 = static os_log_type_t.debug.getter();
  sub_10005E11C(v6, 0xD00000000000002ELL, 0x80000001000987C0, 0xD00000000000005BLL, 0x8000000100095700, 58);
  (*(v3 + 56))(v4, 1, 1, v2);
  v7 = swift_task_alloc();
  v0[44] = v7;
  *v7 = v0;
  v7[1] = sub_100078CC8;
  v8 = v0[21];
  v9 = v0[18];

  return sub_1000122EC(v8, v9);
}

uint64_t sub_100079388()
{
  v1 = v0[43];

  v2 = v0[45];
  v3 = v0[27];
  v5 = v0[23];
  v4 = v0[24];
  v7 = v0[21];
  v6 = v0[22];
  v9 = v0[19];
  v8 = v0[20];
  v11 = v0[17];
  v10 = v0[18];

  v12 = v0[1];

  return v12();
}

uint64_t sub_100079464()
{
  v1 = v0[39];
  v2 = v0[27];
  v4 = v0[23];
  v3 = v0[24];
  v6 = v0[21];
  v5 = v0[22];
  v8 = v0[19];
  v7 = v0[20];
  v10 = v0[17];
  v9 = v0[18];

  v11 = v0[1];

  return v11();
}

uint64_t sub_100079538()
{
  v1 = v0[40];
  v2 = v0[17];

  sub_10008956C(v2, type metadata accessor for SpamDecisioningAsset);
  v3 = v0[42];
  v4 = v0[27];
  v6 = v0[23];
  v5 = v0[24];
  v8 = v0[21];
  v7 = v0[22];
  v10 = v0[19];
  v9 = v0[20];
  v12 = v0[17];
  v11 = v0[18];

  v13 = v0[1];

  return v13();
}

uint64_t sub_100079634(uint64_t a1)
{
  v2[283] = v1;
  v2[282] = a1;
  v3 = *(*(sub_100002074(&qword_1000B9060, &qword_100093150) - 8) + 64) + 15;
  v2[284] = swift_task_alloc();
  v2[285] = swift_task_alloc();
  v4 = type metadata accessor for Locale();
  v2[286] = v4;
  v5 = *(v4 - 8);
  v2[287] = v5;
  v6 = *(v5 + 64) + 15;
  v2[288] = swift_task_alloc();
  v2[289] = swift_task_alloc();
  v7 = *(*(sub_100002074(&qword_1000B6A68, &qword_10008F6F0) - 8) + 64) + 15;
  v2[290] = swift_task_alloc();
  v2[291] = swift_task_alloc();
  v8 = type metadata accessor for NemesisError();
  v2[292] = v8;
  v9 = *(v8 - 8);
  v2[293] = v9;
  v10 = *(v9 + 64) + 15;
  v2[294] = swift_task_alloc();
  v2[295] = swift_task_alloc();
  v2[296] = swift_task_alloc();
  v11 = type metadata accessor for UUID();
  v2[297] = v11;
  v12 = *(v11 - 8);
  v2[298] = v12;
  v13 = *(v12 + 64) + 15;
  v2[299] = swift_task_alloc();
  v14 = type metadata accessor for LogicGraphDecisioningComponent.LogicGraphInput(0);
  v2[300] = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  v2[301] = swift_task_alloc();
  v2[302] = swift_task_alloc();
  v16 = type metadata accessor for SpamDecisioningAsset(0);
  v2[303] = v16;
  v17 = *(v16 - 8);
  v2[304] = v17;
  v18 = *(v17 + 64) + 15;
  v2[305] = swift_task_alloc();
  v19 = *(*(sub_100002074(&qword_1000B6CB8, &unk_10008F9F0) - 8) + 64) + 15;
  v2[306] = swift_task_alloc();
  v2[307] = swift_task_alloc();
  v2[308] = swift_task_alloc();
  v2[309] = swift_task_alloc();
  v2[310] = swift_task_alloc();
  v2[311] = swift_task_alloc();
  v2[312] = swift_task_alloc();
  v2[313] = swift_task_alloc();
  v2[314] = swift_task_alloc();
  v2[315] = swift_task_alloc();
  v2[316] = swift_task_alloc();
  v20 = *(*(sub_100002074(&qword_1000B9058, &qword_100093140) - 8) + 64) + 15;
  v2[317] = swift_task_alloc();
  v2[318] = swift_task_alloc();
  v2[319] = swift_task_alloc();
  v2[320] = swift_task_alloc();
  v21 = type metadata accessor for UAFAssetManager.AssetInfo(0);
  v2[321] = v21;
  v22 = *(v21 - 8);
  v2[322] = v22;
  v23 = *(v22 + 64) + 15;
  v2[323] = swift_task_alloc();
  v2[324] = swift_task_alloc();

  return _swift_task_switch(sub_100079A68, 0, 0);
}

uint64_t sub_100079A68()
{
  v1 = v0[283];
  v0[325] = OBJC_IVAR____TtC13frauddefensed22SpamDecisioningManager_logger;
  v2 = static os_log_type_t.default.getter();
  sub_10005E11C(v2, 0xD000000000000031, 0x80000001000956C0, 0xD00000000000005BLL, 0x8000000100095700, 543);
  sub_100082B5C();
  v3 = sub_10005163C();

  if ((v3 & 1) == 0)
  {
    v6 = static os_log_type_t.default.getter();
    sub_10005E11C(v6, 0xD000000000000054, 0x8000000100095760, 0xD00000000000005BLL, 0x8000000100095700, 547);
    v7 = static os_log_type_t.error.getter();
    v8 = 0x800000010009A520;
    v9 = 0xD00000000000002ALL;
    sub_10005E11C(v7, 0xD00000000000002ALL, 0x800000010009A520, 0xD00000000000005BLL, 0x8000000100095700, 110);
    v10 = 14;
LABEL_22:
    sub_10000B6B0();
    swift_allocError();
    *v28 = v9;
    *(v28 + 8) = v8;
    *(v28 + 16) = v10;
    swift_willThrow();
    v29 = v0[324];
    v30 = v0[323];
    v31 = v0[320];
    v32 = v0[319];
    v33 = v0[318];
    v34 = v0[317];
    v35 = v0[316];
    v36 = v0[315];
    v37 = v0[314];
    v38 = v0[313];
    v45 = v0[312];
    v46 = v0[311];
    v47 = v0[310];
    v48 = v0[309];
    v49 = v0[308];
    v50 = v0[307];
    v51 = v0[306];
    v52 = v0[305];
    v53 = v0[302];
    v54 = v0[301];
    v55 = v0[299];
    v56 = v0[296];
    v57 = v0[295];
    v58 = v0[294];
    v59 = v0[291];
    v60 = v0[290];
    v61 = v0[289];
    v62 = v0[288];
    v63 = v0[285];
    v64 = v0[284];

    v39 = v0[1];

    return v39();
  }

  v4 = v0[282];
  v5 = *(v4 + 56);
  if ((v5 & 0x2000000000000000) != 0)
  {
    if ((v5 & 0xF00000000000000) == 0)
    {
      goto LABEL_21;
    }
  }

  else if ((*(v4 + 48) & 0xFFFFFFFFFFFFLL) == 0)
  {
    goto LABEL_21;
  }

  v11 = *(v4 + 40);
  if ((v11 & 0x2000000000000000) != 0)
  {
    if ((v11 & 0xF00000000000000) == 0)
    {
      goto LABEL_21;
    }
  }

  else if ((*(v4 + 32) & 0xFFFFFFFFFFFFLL) == 0)
  {
    goto LABEL_21;
  }

  v12 = *(v4 + 24);
  if ((v12 & 0x2000000000000000) != 0)
  {
    if ((v12 & 0xF00000000000000) != 0)
    {
      goto LABEL_15;
    }

LABEL_21:
    v25 = static os_log_type_t.error.getter();
    v26._countAndFlagsBits = sub_100086FE0();
    String.append(_:)(v26);

    v27._countAndFlagsBits = 32032;
    v27._object = 0xE200000000000000;
    String.append(_:)(v27);
    sub_10005E11C(v25, 0xD00000000000002ELL, 0x800000010009A550, 0xD00000000000005BLL, 0x8000000100095700, 118);

    v10 = 0;
    v8 = 0x800000010009A580;
    v9 = 0xD00000000000002BLL;
    goto LABEL_22;
  }

  if ((*(v4 + 16) & 0xFFFFFFFFFFFFLL) == 0)
  {
    goto LABEL_21;
  }

LABEL_15:
  if (*(v4 + 105) == 3)
  {
    goto LABEL_21;
  }

  v13 = static os_log_type_t.default.getter();
  v14._countAndFlagsBits = sub_100086FE0();
  String.append(_:)(v14);

  v15._countAndFlagsBits = 32032;
  v15._object = 0xE200000000000000;
  String.append(_:)(v15);
  sub_10005E11C(v13, 0xD000000000000018, 0x800000010009A5B0, 0xD00000000000005BLL, 0x8000000100095700, 122);

  sub_100054AB0();
  if (v16)
  {

LABEL_18:
    v17 = v0[322];
    v18 = v0[321];
    v19 = v0[315];
    v20 = static os_log_type_t.default.getter();
    sub_10005E11C(v20, 0xD000000000000045, 0x800000010009A980, 0xD00000000000005BLL, 0x8000000100095700, 138);
    (*(v17 + 56))(v19, 1, 1, v18);
    v21 = swift_task_alloc();
    v0[331] = v21;
    *v21 = v0;
    v21[1] = sub_10007ACE0;
    v22 = v0[319];
    v23 = v0[315];

    return sub_1000122EC(v22, v23);
  }

  if (qword_1000B6658 != -1)
  {
    swift_once();
  }

  if (qword_1000B7C78)
  {
    v40 = qword_1000B7C78;
    v41 = String._bridgeToObjectiveC()();
    v42 = [v40 BOOLForKey:v41];

    if (v42)
    {
      goto LABEL_18;
    }
  }

  v0[326] = *(v0[283] + OBJC_IVAR____TtC13frauddefensed22SpamDecisioningManager____lazy_storage___uafAssetManager);

  v43 = swift_task_alloc();
  v0[327] = v43;
  *v43 = v0;
  v43[1] = sub_10007A118;
  v44 = v0[324];

  return sub_1000505B8(v44);
}

uint64_t sub_10007A118()
{
  v2 = *v1;
  v3 = *(*v1 + 2616);
  v7 = *v1;
  *(*v1 + 2624) = v0;

  if (v0)
  {
    v4 = sub_100080674;
  }

  else
  {
    v5 = *(v2 + 2608);

    v4 = sub_10007A234;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10007A234()
{
  v1 = v0[322];
  v2 = v0[321];
  v3 = v0[316];
  sub_100088834(v0[324], v3, type metadata accessor for UAFAssetManager.AssetInfo);
  (*(v1 + 56))(v3, 0, 1, v2);
  v4 = swift_task_alloc();
  v0[329] = v4;
  *v4 = v0;
  v4[1] = sub_10007A320;
  v5 = v0[320];
  v6 = v0[316];

  return sub_1000122EC(v5, v6);
}

uint64_t sub_10007A320()
{
  v2 = *(*v1 + 2632);
  v5 = *v1;
  *(*v1 + 2640) = v0;

  if (v0)
  {
    v3 = sub_1000807A4;
  }

  else
  {
    v3 = sub_10007A434;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10007A434()
{
  v94 = v0;
  v1 = *(v0 + 2560);
  v2 = *(v0 + 2432);
  v3 = *(v0 + 2424);
  v4 = *(v0 + 2264);
  sub_10008956C(*(v0 + 2592), type metadata accessor for UAFAssetManager.AssetInfo);
  (*(v2 + 56))(v1, 0, 1, v3);
  v5 = OBJC_IVAR____TtC13frauddefensed22SpamDecisioningManager_spamAsset;
  swift_beginAccess();
  sub_100087CF4(v1, v4 + v5);
  swift_endAccess();
  v6 = *(v0 + 2544);
  v7 = *(v0 + 2432);
  v8 = *(v0 + 2424);
  v9 = *(v0 + 2264);
  v10 = OBJC_IVAR____TtC13frauddefensed22SpamDecisioningManager_spamAsset;
  swift_beginAccess();
  sub_100011DFC(v9 + v10, v6, &qword_1000B9058, &qword_100093140);
  v11 = (*(v7 + 48))(v6, 1, v8);
  v12 = *(v0 + 2264);
  if (v11 == 1)
  {
    v13 = *(v0 + 2600);
    sub_10000BC10(*(v0 + 2544), &qword_1000B9058, &qword_100093140);
    v14 = static os_log_type_t.error.getter();
    sub_10005E11C(v14, 0xD000000000000049, 0x800000010009A5D0, 0xD00000000000005BLL, 0x8000000100095700, 144);
    sub_10000B6B0();
    swift_allocError();
    *v15 = 0xD000000000000049;
    *(v15 + 8) = 0x800000010009A5D0;
    *(v15 + 16) = 14;
    swift_willThrow();
LABEL_7:
    v32 = *(v0 + 2592);
    v33 = *(v0 + 2584);
    v34 = *(v0 + 2560);
    v35 = *(v0 + 2552);
    v36 = *(v0 + 2544);
    v37 = *(v0 + 2536);
    v38 = *(v0 + 2528);
    v39 = *(v0 + 2520);
    v40 = *(v0 + 2512);
    v41 = *(v0 + 2504);
    v71 = *(v0 + 2496);
    v72 = *(v0 + 2488);
    v73 = *(v0 + 2480);
    v74 = *(v0 + 2472);
    v75 = *(v0 + 2464);
    v76 = *(v0 + 2456);
    v77 = *(v0 + 2448);
    v78 = *(v0 + 2440);
    v79 = *(v0 + 2416);
    v80 = *(v0 + 2408);
    v81 = *(v0 + 2392);
    v82 = *(v0 + 2368);
    v83 = *(v0 + 2360);
    v84 = *(v0 + 2352);
    v85 = *(v0 + 2328);
    v86 = *(v0 + 2320);
    v87 = *(v0 + 2312);
    v88 = *(v0 + 2304);
    v89 = *(v0 + 2280);
    v90 = *(v0 + 2272);

    v42 = *(v0 + 8);

    return v42();
  }

  v16 = *(v0 + 2256);
  sub_1000887CC(*(v0 + 2544), *(v0 + 2440), type metadata accessor for SpamDecisioningAsset);
  if ((sub_100084050(v16) & 1) == 0)
  {
    v23 = *(v0 + 2600);
    v24 = *(v0 + 2440);
    v25 = *(v0 + 2264);
    v26 = *(v0 + 2256);
    v27 = static os_log_type_t.default.getter();
    v91 = 0;
    v92 = 0xE000000000000000;
    _StringGuts.grow(_:)(52);
    v28._countAndFlagsBits = 0xD000000000000030;
    v28._object = 0x800000010009A620;
    String.append(_:)(v28);
    v29._countAndFlagsBits = sub_100086FE0();
    String.append(_:)(v29);

    v30._countAndFlagsBits = 32032;
    v30._object = 0xE200000000000000;
    String.append(_:)(v30);
    sub_10005E11C(v27, 0, 0xE000000000000000, 0xD00000000000005BLL, 0x8000000100095700, 149);

    sub_10000B6B0();
    swift_allocError();
    *v31 = 0xD00000000000002DLL;
    *(v31 + 8) = 0x800000010009A660;
    *(v31 + 16) = 16;
    swift_willThrow();
    sub_10008956C(v24, type metadata accessor for SpamDecisioningAsset);
    goto LABEL_7;
  }

  v17 = *(v0 + 2576);
  v18 = *(v0 + 2568);
  v19 = *(v0 + 2512);
  v20 = *(v0 + 2440);
  v21 = swift_allocObject();
  *(v0 + 2664) = v21;
  *(v21 + 16) = &_swiftEmptyDictionarySingleton;
  sub_100011DFC(v20, v19, &qword_1000B6CB8, &unk_10008F9F0);
  v22 = *(v17 + 48);
  *(v0 + 2672) = v22;
  *(v0 + 2680) = (v17 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v22(v19, 1, v18) == 1)
  {
    sub_10000BC10(*(v0 + 2512), &qword_1000B6CB8, &unk_10008F9F0);
    v93 = &type metadata for String;
    v91 = 0;
    v92 = 0xE000000000000000;
    sub_100056920(&v91, 0x666E497465737361, 0xE90000000000006FLL);
  }

  else
  {
    v44 = *(v0 + 2584);
    sub_1000887CC(*(v0 + 2512), v44, type metadata accessor for UAFAssetManager.AssetInfo);
    v93 = &type metadata for String;
    v91 = sub_100053230();
    v92 = v45;
    sub_100056920(&v91, 0x666E497465737361, 0xE90000000000006FLL);
    sub_10008956C(v44, type metadata accessor for UAFAssetManager.AssetInfo);
  }

  v46 = sub_100088414();
  *(v0 + 122) = v46 & 1;
  *(v0 + 123) = BYTE1(v46) & 1;
  *(v0 + 124) = BYTE2(v46) & 1;
  if ((~v46 & 0x10100) != 0 || (v46 & 1) == 0)
  {
    *(v0 + 2736) = &_swiftEmptySetSingleton;
    *(v0 + 2728) = &_swiftEmptyArrayStorage;
    v63 = *(v0 + 2664);
    v64 = *(v0 + 2440);
    v65 = *(v0 + 2264);
    v66 = *(v0 + 2256);
    v67 = swift_allocObject();
    *(v0 + 2744) = v67;
    *(v67 + 16) = 2;
    *(v67 + 24) = 0u;
    *(v67 + 40) = 0u;
    *(v67 + 56) = 1;
    *(v67 + 64) = 0u;
    *(v67 + 80) = 0u;
    *(v67 + 96) = 0u;
    *(v67 + 112) = 0u;
    *(v67 + 128) = 0;
    v68 = swift_task_alloc();
    *(v0 + 2752) = v68;
    v68[2] = v0 + 122;
    v68[3] = v65;
    v68[4] = v64;
    v68[5] = v66;
    v68[6] = v63;
    v68[7] = v67;
    v69 = async function pointer to withThrowingTaskGroup<A, B>(of:returning:isolation:body:)[1];
    v70 = swift_task_alloc();
    *(v0 + 2760) = v70;
    *v70 = v0;
    v70[1] = sub_10007D14C;
    v96 = &type metadata for () + 8;

    return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)(v70, &type metadata for () + 8, &type metadata for () + 8, 0, 0, &unk_100093160, v68, &type metadata for () + 8);
  }

  else
  {
    v47 = *(v0 + 2416);
    v48 = *(v0 + 2400);
    v49 = *(v0 + 2392);
    v50 = *(v0 + 2384);
    v51 = *(v0 + 2376);
    v52 = *(v0 + 2264);
    v53 = *(v0 + 2256);
    sub_100088834(*(v0 + 2440), v47, type metadata accessor for SpamDecisioningAsset);
    sub_1000886EC(v53, v0 + 128);
    v54 = sub_100011724(&_swiftEmptyArrayStorage);
    v55 = (v47 + v48[5]);
    v56 = *(v53 + 90);
    v58 = v53[4];
    v57 = v53[5];
    v55[3] = v53[3];
    v55[4] = v58;
    v55[5] = v57;
    *(v55 + 90) = v56;
    v60 = v53[1];
    v59 = v53[2];
    *v55 = *v53;
    v55[1] = v60;
    v55[2] = v59;
    *(v47 + v48[6]) = v54;
    *(v47 + v48[7]) = 0;
    UUID.init()();
    *(v0 + 2688) = UUID.uuidString.getter();
    *(v0 + 2696) = v61;
    (*(v50 + 8))(v49, v51);
    v62 = *(v52 + OBJC_IVAR____TtC13frauddefensed22SpamDecisioningManager_signpostsManager);
    *(v0 + 2704) = v62;

    return _swift_task_switch(sub_10007B680, v62, 0);
  }
}

uint64_t sub_10007ACE0()
{
  v2 = *(*v1 + 2648);
  v5 = *v1;
  *(*v1 + 2656) = v0;

  if (v0)
  {
    v3 = sub_100080B00;
  }

  else
  {
    v3 = sub_10007ADF4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10007ADF4()
{
  v92 = v0;
  v1 = *(v0 + 2552);
  v2 = *(v0 + 2264);
  (*(*(v0 + 2432) + 56))(v1, 0, 1, *(v0 + 2424));
  v3 = OBJC_IVAR____TtC13frauddefensed22SpamDecisioningManager_spamAsset;
  swift_beginAccess();
  sub_100087CF4(v1, v2 + v3);
  swift_endAccess();
  v4 = *(v0 + 2544);
  v5 = *(v0 + 2432);
  v6 = *(v0 + 2424);
  v7 = *(v0 + 2264);
  v8 = OBJC_IVAR____TtC13frauddefensed22SpamDecisioningManager_spamAsset;
  swift_beginAccess();
  sub_100011DFC(v7 + v8, v4, &qword_1000B9058, &qword_100093140);
  v9 = (*(v5 + 48))(v4, 1, v6);
  v10 = *(v0 + 2264);
  if (v9 == 1)
  {
    v11 = *(v0 + 2600);
    sub_10000BC10(*(v0 + 2544), &qword_1000B9058, &qword_100093140);
    v12 = static os_log_type_t.error.getter();
    sub_10005E11C(v12, 0xD000000000000049, 0x800000010009A5D0, 0xD00000000000005BLL, 0x8000000100095700, 144);
    sub_10000B6B0();
    swift_allocError();
    *v13 = 0xD000000000000049;
    *(v13 + 8) = 0x800000010009A5D0;
    *(v13 + 16) = 14;
    swift_willThrow();
LABEL_7:
    v30 = *(v0 + 2592);
    v31 = *(v0 + 2584);
    v32 = *(v0 + 2560);
    v33 = *(v0 + 2552);
    v34 = *(v0 + 2544);
    v35 = *(v0 + 2536);
    v36 = *(v0 + 2528);
    v37 = *(v0 + 2520);
    v38 = *(v0 + 2512);
    v39 = *(v0 + 2504);
    v69 = *(v0 + 2496);
    v70 = *(v0 + 2488);
    v71 = *(v0 + 2480);
    v72 = *(v0 + 2472);
    v73 = *(v0 + 2464);
    v74 = *(v0 + 2456);
    v75 = *(v0 + 2448);
    v76 = *(v0 + 2440);
    v77 = *(v0 + 2416);
    v78 = *(v0 + 2408);
    v79 = *(v0 + 2392);
    v80 = *(v0 + 2368);
    v81 = *(v0 + 2360);
    v82 = *(v0 + 2352);
    v83 = *(v0 + 2328);
    v84 = *(v0 + 2320);
    v85 = *(v0 + 2312);
    v86 = *(v0 + 2304);
    v87 = *(v0 + 2280);
    v88 = *(v0 + 2272);

    v40 = *(v0 + 8);

    return v40();
  }

  v14 = *(v0 + 2256);
  sub_1000887CC(*(v0 + 2544), *(v0 + 2440), type metadata accessor for SpamDecisioningAsset);
  if ((sub_100084050(v14) & 1) == 0)
  {
    v21 = *(v0 + 2600);
    v22 = *(v0 + 2440);
    v23 = *(v0 + 2264);
    v24 = *(v0 + 2256);
    v25 = static os_log_type_t.default.getter();
    v89 = 0;
    v90 = 0xE000000000000000;
    _StringGuts.grow(_:)(52);
    v26._countAndFlagsBits = 0xD000000000000030;
    v26._object = 0x800000010009A620;
    String.append(_:)(v26);
    v27._countAndFlagsBits = sub_100086FE0();
    String.append(_:)(v27);

    v28._countAndFlagsBits = 32032;
    v28._object = 0xE200000000000000;
    String.append(_:)(v28);
    sub_10005E11C(v25, 0, 0xE000000000000000, 0xD00000000000005BLL, 0x8000000100095700, 149);

    sub_10000B6B0();
    swift_allocError();
    *v29 = 0xD00000000000002DLL;
    *(v29 + 8) = 0x800000010009A660;
    *(v29 + 16) = 16;
    swift_willThrow();
    sub_10008956C(v22, type metadata accessor for SpamDecisioningAsset);
    goto LABEL_7;
  }

  v15 = *(v0 + 2576);
  v16 = *(v0 + 2568);
  v17 = *(v0 + 2512);
  v18 = *(v0 + 2440);
  v19 = swift_allocObject();
  *(v0 + 2664) = v19;
  *(v19 + 16) = &_swiftEmptyDictionarySingleton;
  sub_100011DFC(v18, v17, &qword_1000B6CB8, &unk_10008F9F0);
  v20 = *(v15 + 48);
  *(v0 + 2672) = v20;
  *(v0 + 2680) = (v15 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v20(v17, 1, v16) == 1)
  {
    sub_10000BC10(*(v0 + 2512), &qword_1000B6CB8, &unk_10008F9F0);
    v91 = &type metadata for String;
    v89 = 0;
    v90 = 0xE000000000000000;
    sub_100056920(&v89, 0x666E497465737361, 0xE90000000000006FLL);
  }

  else
  {
    v42 = *(v0 + 2584);
    sub_1000887CC(*(v0 + 2512), v42, type metadata accessor for UAFAssetManager.AssetInfo);
    v91 = &type metadata for String;
    v89 = sub_100053230();
    v90 = v43;
    sub_100056920(&v89, 0x666E497465737361, 0xE90000000000006FLL);
    sub_10008956C(v42, type metadata accessor for UAFAssetManager.AssetInfo);
  }

  v44 = sub_100088414();
  *(v0 + 122) = v44 & 1;
  *(v0 + 123) = BYTE1(v44) & 1;
  *(v0 + 124) = BYTE2(v44) & 1;
  if ((~v44 & 0x10100) != 0 || (v44 & 1) == 0)
  {
    *(v0 + 2736) = &_swiftEmptySetSingleton;
    *(v0 + 2728) = &_swiftEmptyArrayStorage;
    v61 = *(v0 + 2664);
    v62 = *(v0 + 2440);
    v63 = *(v0 + 2264);
    v64 = *(v0 + 2256);
    v65 = swift_allocObject();
    *(v0 + 2744) = v65;
    *(v65 + 16) = 2;
    *(v65 + 24) = 0u;
    *(v65 + 40) = 0u;
    *(v65 + 56) = 1;
    *(v65 + 64) = 0u;
    *(v65 + 80) = 0u;
    *(v65 + 96) = 0u;
    *(v65 + 112) = 0u;
    *(v65 + 128) = 0;
    v66 = swift_task_alloc();
    *(v0 + 2752) = v66;
    v66[2] = v0 + 122;
    v66[3] = v63;
    v66[4] = v62;
    v66[5] = v64;
    v66[6] = v61;
    v66[7] = v65;
    v67 = async function pointer to withThrowingTaskGroup<A, B>(of:returning:isolation:body:)[1];
    v68 = swift_task_alloc();
    *(v0 + 2760) = v68;
    *v68 = v0;
    v68[1] = sub_10007D14C;
    v94 = &type metadata for () + 8;

    return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)(v68, &type metadata for () + 8, &type metadata for () + 8, 0, 0, &unk_100093160, v66, &type metadata for () + 8);
  }

  else
  {
    v45 = *(v0 + 2416);
    v46 = *(v0 + 2400);
    v47 = *(v0 + 2392);
    v48 = *(v0 + 2384);
    v49 = *(v0 + 2376);
    v50 = *(v0 + 2264);
    v51 = *(v0 + 2256);
    sub_100088834(*(v0 + 2440), v45, type metadata accessor for SpamDecisioningAsset);
    sub_1000886EC(v51, v0 + 128);
    v52 = sub_100011724(&_swiftEmptyArrayStorage);
    v53 = (v45 + v46[5]);
    v54 = *(v51 + 90);
    v56 = v51[4];
    v55 = v51[5];
    v53[3] = v51[3];
    v53[4] = v56;
    v53[5] = v55;
    *(v53 + 90) = v54;
    v58 = v51[1];
    v57 = v51[2];
    *v53 = *v51;
    v53[1] = v58;
    v53[2] = v57;
    *(v45 + v46[6]) = v52;
    *(v45 + v46[7]) = 0;
    UUID.init()();
    *(v0 + 2688) = UUID.uuidString.getter();
    *(v0 + 2696) = v59;
    (*(v48 + 8))(v47, v49);
    v60 = *(v50 + OBJC_IVAR____TtC13frauddefensed22SpamDecisioningManager_signpostsManager);
    *(v0 + 2704) = v60;

    return _swift_task_switch(sub_10007B680, v60, 0);
  }
}

uint64_t sub_10007B680()
{
  v1 = *(v0 + 2704);
  sub_10006C4A8("filteringLogicGraph", 19, 2, *(v0 + 2688), *(v0 + 2696), 0);

  return _swift_task_switch(sub_10007B704, 0, 0);
}

uint64_t sub_10007B704()
{
  v1 = *(v0[283] + OBJC_IVAR____TtC13frauddefensed22SpamDecisioningManager_logicGraphDecisioningComponent);
  v2 = swift_task_alloc();
  v0[339] = v2;
  *v2 = v0;
  v2[1] = sub_10007B7AC;
  v3 = v0[302];

  return sub_100006178((v0 + 191), v3);
}

uint64_t sub_10007B7AC()
{
  v2 = *v1;
  v3 = *(*v1 + 2712);
  v8 = *v1;
  *(*v1 + 2720) = v0;

  if (v0)
  {
    v4 = *(v2 + 2696);

    v5 = sub_100080D10;
    v6 = 0;
  }

  else
  {
    v6 = *(v2 + 2704);
    v5 = sub_10007B8D0;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_10007B8D0()
{
  v1 = *(v0 + 2704);
  sub_10006C4A8("filteringLogicGraph", 19, 2, *(v0 + 2688), *(v0 + 2696), 1);

  return _swift_task_switch(sub_10007B960, 0, 0);
}

uint64_t sub_10007D14C()
{
  v2 = *v1;
  v3 = *(*v1 + 2760);
  v4 = *v1;
  v2[346] = v0;

  v5 = v2[344];
  if (v0)
  {
    v6 = v2[342];
    v7 = v2[341];

    v8 = sub_1000812FC;
  }

  else
  {

    v8 = sub_10007D2A0;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_10007DF50()
{
  v1 = *(v0 + 2800);
  sub_10006C4A8("decisioningLogicGraph", 21, 2, *(v0 + 2784), *(v0 + 2792), 0);

  return _swift_task_switch(sub_10007DFD4, 0, 0);
}

uint64_t sub_10007DFD4()
{
  v1 = *(v0[283] + OBJC_IVAR____TtC13frauddefensed22SpamDecisioningManager_logicGraphDecisioningComponent);
  v2 = swift_task_alloc();
  v0[351] = v2;
  *v2 = v0;
  v2[1] = sub_10007E07C;
  v3 = v0[301];

  return sub_100006178((v0 + 186), v3);
}

uint64_t sub_10007E07C()
{
  v2 = *v1;
  v3 = *(*v1 + 2808);
  v11 = *v1;
  *(*v1 + 2816) = v0;

  if (v0)
  {
    v4 = v2[349];
    v5 = v2[347];
    v6 = v2[342];
    v7 = v2[341];

    v8 = sub_100081540;
    v9 = 0;
  }

  else
  {
    v9 = v2[350];
    v8 = sub_10007E1CC;
  }

  return _swift_task_switch(v8, v9, 0);
}

uint64_t sub_10007E1CC()
{
  v1 = *(v0 + 2800);
  sub_10006C4A8("decisioningLogicGraph", 21, 2, *(v0 + 2784), *(v0 + 2792), 1);

  return _swift_task_switch(sub_10007E25C, 0, 0);
}

uint64_t sub_10007FCC8()
{
  v2 = *(*v1 + 2832);
  v5 = *v1;
  *(*v1 + 2840) = v0;

  if (v0)
  {
    v3 = sub_1000808E8;
  }

  else
  {
    v3 = sub_10007FDDC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10007FDDC()
{
  v95 = v0;
  v1 = *(v0 + 2824);
  v2 = *(v0 + 2536);
  v3 = *(v0 + 2432);
  v4 = *(v0 + 2424);
  v5 = *(v0 + 2264);

  (*(v3 + 56))(v2, 0, 1, v4);
  v6 = OBJC_IVAR____TtC13frauddefensed22SpamDecisioningManager_spamAsset;
  swift_beginAccess();
  sub_100087CF4(v2, v5 + v6);
  swift_endAccess();
  v7 = *(v0 + 2544);
  v8 = *(v0 + 2432);
  v9 = *(v0 + 2424);
  v10 = *(v0 + 2264);
  v11 = OBJC_IVAR____TtC13frauddefensed22SpamDecisioningManager_spamAsset;
  swift_beginAccess();
  sub_100011DFC(v10 + v11, v7, &qword_1000B9058, &qword_100093140);
  v12 = (*(v8 + 48))(v7, 1, v9);
  v13 = *(v0 + 2264);
  if (v12 == 1)
  {
    v14 = *(v0 + 2600);
    sub_10000BC10(*(v0 + 2544), &qword_1000B9058, &qword_100093140);
    v15 = static os_log_type_t.error.getter();
    sub_10005E11C(v15, 0xD000000000000049, 0x800000010009A5D0, 0xD00000000000005BLL, 0x8000000100095700, 144);
    sub_10000B6B0();
    swift_allocError();
    *v16 = 0xD000000000000049;
    *(v16 + 8) = 0x800000010009A5D0;
    *(v16 + 16) = 14;
    swift_willThrow();
LABEL_7:
    v33 = *(v0 + 2592);
    v34 = *(v0 + 2584);
    v35 = *(v0 + 2560);
    v36 = *(v0 + 2552);
    v37 = *(v0 + 2544);
    v38 = *(v0 + 2536);
    v39 = *(v0 + 2528);
    v40 = *(v0 + 2520);
    v41 = *(v0 + 2512);
    v42 = *(v0 + 2504);
    v72 = *(v0 + 2496);
    v73 = *(v0 + 2488);
    v74 = *(v0 + 2480);
    v75 = *(v0 + 2472);
    v76 = *(v0 + 2464);
    v77 = *(v0 + 2456);
    v78 = *(v0 + 2448);
    v79 = *(v0 + 2440);
    v80 = *(v0 + 2416);
    v81 = *(v0 + 2408);
    v82 = *(v0 + 2392);
    v83 = *(v0 + 2368);
    v84 = *(v0 + 2360);
    v85 = *(v0 + 2352);
    v86 = *(v0 + 2328);
    v87 = *(v0 + 2320);
    v88 = *(v0 + 2312);
    v89 = *(v0 + 2304);
    v90 = *(v0 + 2280);
    v91 = *(v0 + 2272);

    v43 = *(v0 + 8);

    return v43();
  }

  v17 = *(v0 + 2256);
  sub_1000887CC(*(v0 + 2544), *(v0 + 2440), type metadata accessor for SpamDecisioningAsset);
  if ((sub_100084050(v17) & 1) == 0)
  {
    v24 = *(v0 + 2600);
    v25 = *(v0 + 2440);
    v26 = *(v0 + 2264);
    v27 = *(v0 + 2256);
    v28 = static os_log_type_t.default.getter();
    v92 = 0;
    v93 = 0xE000000000000000;
    _StringGuts.grow(_:)(52);
    v29._countAndFlagsBits = 0xD000000000000030;
    v29._object = 0x800000010009A620;
    String.append(_:)(v29);
    v30._countAndFlagsBits = sub_100086FE0();
    String.append(_:)(v30);

    v31._countAndFlagsBits = 32032;
    v31._object = 0xE200000000000000;
    String.append(_:)(v31);
    sub_10005E11C(v28, 0, 0xE000000000000000, 0xD00000000000005BLL, 0x8000000100095700, 149);

    sub_10000B6B0();
    swift_allocError();
    *v32 = 0xD00000000000002DLL;
    *(v32 + 8) = 0x800000010009A660;
    *(v32 + 16) = 16;
    swift_willThrow();
    sub_10008956C(v25, type metadata accessor for SpamDecisioningAsset);
    goto LABEL_7;
  }

  v18 = *(v0 + 2576);
  v19 = *(v0 + 2568);
  v20 = *(v0 + 2512);
  v21 = *(v0 + 2440);
  v22 = swift_allocObject();
  *(v0 + 2664) = v22;
  *(v22 + 16) = &_swiftEmptyDictionarySingleton;
  sub_100011DFC(v21, v20, &qword_1000B6CB8, &unk_10008F9F0);
  v23 = *(v18 + 48);
  *(v0 + 2672) = v23;
  *(v0 + 2680) = (v18 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v23(v20, 1, v19) == 1)
  {
    sub_10000BC10(*(v0 + 2512), &qword_1000B6CB8, &unk_10008F9F0);
    v94 = &type metadata for String;
    v92 = 0;
    v93 = 0xE000000000000000;
    sub_100056920(&v92, 0x666E497465737361, 0xE90000000000006FLL);
  }

  else
  {
    v45 = *(v0 + 2584);
    sub_1000887CC(*(v0 + 2512), v45, type metadata accessor for UAFAssetManager.AssetInfo);
    v94 = &type metadata for String;
    v92 = sub_100053230();
    v93 = v46;
    sub_100056920(&v92, 0x666E497465737361, 0xE90000000000006FLL);
    sub_10008956C(v45, type metadata accessor for UAFAssetManager.AssetInfo);
  }

  v47 = sub_100088414();
  *(v0 + 122) = v47 & 1;
  *(v0 + 123) = BYTE1(v47) & 1;
  *(v0 + 124) = BYTE2(v47) & 1;
  if ((~v47 & 0x10100) != 0 || (v47 & 1) == 0)
  {
    *(v0 + 2736) = &_swiftEmptySetSingleton;
    *(v0 + 2728) = &_swiftEmptyArrayStorage;
    v64 = *(v0 + 2664);
    v65 = *(v0 + 2440);
    v66 = *(v0 + 2264);
    v67 = *(v0 + 2256);
    v68 = swift_allocObject();
    *(v0 + 2744) = v68;
    *(v68 + 16) = 2;
    *(v68 + 24) = 0u;
    *(v68 + 40) = 0u;
    *(v68 + 56) = 1;
    *(v68 + 64) = 0u;
    *(v68 + 80) = 0u;
    *(v68 + 96) = 0u;
    *(v68 + 112) = 0u;
    *(v68 + 128) = 0;
    v69 = swift_task_alloc();
    *(v0 + 2752) = v69;
    v69[2] = v0 + 122;
    v69[3] = v66;
    v69[4] = v65;
    v69[5] = v67;
    v69[6] = v64;
    v69[7] = v68;
    v70 = async function pointer to withThrowingTaskGroup<A, B>(of:returning:isolation:body:)[1];
    v71 = swift_task_alloc();
    *(v0 + 2760) = v71;
    *v71 = v0;
    v71[1] = sub_10007D14C;
    v97 = &type metadata for () + 8;

    return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)(v71, &type metadata for () + 8, &type metadata for () + 8, 0, 0, &unk_100093160, v69, &type metadata for () + 8);
  }

  else
  {
    v48 = *(v0 + 2416);
    v49 = *(v0 + 2400);
    v50 = *(v0 + 2392);
    v51 = *(v0 + 2384);
    v52 = *(v0 + 2376);
    v53 = *(v0 + 2264);
    v54 = *(v0 + 2256);
    sub_100088834(*(v0 + 2440), v48, type metadata accessor for SpamDecisioningAsset);
    sub_1000886EC(v54, v0 + 128);
    v55 = sub_100011724(&_swiftEmptyArrayStorage);
    v56 = (v48 + v49[5]);
    v57 = *(v54 + 90);
    v59 = v54[4];
    v58 = v54[5];
    v56[3] = v54[3];
    v56[4] = v59;
    v56[5] = v58;
    *(v56 + 90) = v57;
    v61 = v54[1];
    v60 = v54[2];
    *v56 = *v54;
    v56[1] = v61;
    v56[2] = v60;
    *(v48 + v49[6]) = v55;
    *(v48 + v49[7]) = 0;
    UUID.init()();
    *(v0 + 2688) = UUID.uuidString.getter();
    *(v0 + 2696) = v62;
    (*(v51 + 8))(v50, v52);
    v63 = *(v53 + OBJC_IVAR____TtC13frauddefensed22SpamDecisioningManager_signpostsManager);
    *(v0 + 2704) = v63;

    return _swift_task_switch(sub_10007B680, v63, 0);
  }
}

uint64_t sub_100080674()
{
  v1 = v0[326];

  v0[353] = v0[328];
  v2 = v0[325];
  v3 = v0[322];
  v4 = v0[321];
  v5 = v0[308];
  v6 = v0[283];
  v7 = static os_log_type_t.debug.getter();
  sub_10005E11C(v7, 0xD00000000000002ELL, 0x80000001000987C0, 0xD00000000000005BLL, 0x8000000100095700, 132);
  (*(v3 + 56))(v5, 1, 1, v4);
  v8 = swift_task_alloc();
  v0[354] = v8;
  *v8 = v0;
  v8[1] = sub_10007FCC8;
  v9 = v0[317];
  v10 = v0[308];

  return sub_1000122EC(v9, v10);
}

uint64_t sub_1000807A4()
{
  sub_10008956C(v0[324], type metadata accessor for UAFAssetManager.AssetInfo);
  v0[353] = v0[330];
  v1 = v0[325];
  v2 = v0[322];
  v3 = v0[321];
  v4 = v0[308];
  v5 = v0[283];
  v6 = static os_log_type_t.debug.getter();
  sub_10005E11C(v6, 0xD00000000000002ELL, 0x80000001000987C0, 0xD00000000000005BLL, 0x8000000100095700, 132);
  (*(v2 + 56))(v4, 1, 1, v3);
  v7 = swift_task_alloc();
  v0[354] = v7;
  *v7 = v0;
  v7[1] = sub_10007FCC8;
  v8 = v0[317];
  v9 = v0[308];

  return sub_1000122EC(v8, v9);
}

uint64_t sub_1000808E8()
{
  v1 = v0[353];

  v34 = v0[355];
  v2 = v0[324];
  v3 = v0[323];
  v4 = v0[320];
  v5 = v0[319];
  v6 = v0[318];
  v7 = v0[317];
  v8 = v0[316];
  v9 = v0[315];
  v10 = v0[314];
  v11 = v0[313];
  v14 = v0[312];
  v15 = v0[311];
  v16 = v0[310];
  v17 = v0[309];
  v18 = v0[308];
  v19 = v0[307];
  v20 = v0[306];
  v21 = v0[305];
  v22 = v0[302];
  v23 = v0[301];
  v24 = v0[299];
  v25 = v0[296];
  v26 = v0[295];
  v27 = v0[294];
  v28 = v0[291];
  v29 = v0[290];
  v30 = v0[289];
  v31 = v0[288];
  v32 = v0[285];
  v33 = v0[284];

  v12 = v0[1];

  return v12();
}

uint64_t sub_100080B00()
{
  v33 = v0[332];
  v1 = v0[324];
  v2 = v0[323];
  v3 = v0[320];
  v4 = v0[319];
  v5 = v0[318];
  v6 = v0[317];
  v7 = v0[316];
  v8 = v0[315];
  v9 = v0[314];
  v10 = v0[313];
  v13 = v0[312];
  v14 = v0[311];
  v15 = v0[310];
  v16 = v0[309];
  v17 = v0[308];
  v18 = v0[307];
  v19 = v0[306];
  v20 = v0[305];
  v21 = v0[302];
  v22 = v0[301];
  v23 = v0[299];
  v24 = v0[296];
  v25 = v0[295];
  v26 = v0[294];
  v27 = v0[291];
  v28 = v0[290];
  v29 = v0[289];
  v30 = v0[288];
  v31 = v0[285];
  v32 = v0[284];

  v11 = v0[1];

  return v11();
}

uint64_t sub_100080D10()
{
  sub_10008956C(v0[302], type metadata accessor for LogicGraphDecisioningComponent.LogicGraphInput);
  v1 = v0[340];
  v46 = v0[334];
  v47 = v0[335];
  v2 = v0[325];
  v45 = v0[321];
  v3 = v0[307];
  v44 = v0[305];
  v4 = v0[293];
  v50 = v0[292];
  v48 = v0[285];
  v5 = v0[283];
  v6 = static os_log_type_t.error.getter();
  _StringGuts.grow(_:)(53);
  v7._object = 0x800000010009A8C0;
  v7._countAndFlagsBits = 0xD000000000000031;
  String.append(_:)(v7);
  swift_getErrorValue();
  v8 = v0[256];
  v9 = v0[257];
  v10 = v0[258];
  v11._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v11);

  v12._countAndFlagsBits = 32032;
  v12._object = 0xE200000000000000;
  String.append(_:)(v12);
  sub_10005E11C(v6, 0, 0xE000000000000000, 0xD00000000000005BLL, 0x8000000100095700, 255);

  sub_100002074(&qword_1000B6CC8, &unk_10008F950);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_10008F850;
  *(v13 + 32) = 1701869940;
  *(v13 + 40) = 0xE400000000000000;
  *(v13 + 48) = String._bridgeToObjectiveC()();
  *(v13 + 56) = 0xD000000000000010;
  *(v13 + 64) = 0x800000010009A7D0;
  sub_100011DFC(v44, v3, &qword_1000B6CB8, &unk_10008F9F0);
  v14 = v46(v3, 1, v45) != 1;
  sub_100011CC4();
  sub_10000BC10(v3, &qword_1000B6CB8, &unk_10008F9F0);
  *(v13 + 72) = NSNumber.init(BOOLeanLiteral:)(v14);
  v15 = sub_100011A78(v13);
  swift_setDeallocating();
  sub_100002074(&qword_1000B6CD0, &qword_100092B90);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v0[267] = v1;
  swift_errorRetain();
  sub_100002074(&qword_1000B6CC0, &qword_100091740);
  v16 = swift_dynamicCast();
  v17 = *(v4 + 56);
  if (v16)
  {
    v18 = v0[295];
    v19 = v0[293];
    v20 = v0[292];
    v21 = v0[285];
    v22 = v0[283];
    v17(v21, 0, 1, v20);
    (*(v19 + 32))(v18, v21, v20);
    v23 = *(v22 + OBJC_IVAR____TtC13frauddefensed22SpamDecisioningManager_analyticsManager);
    v24 = NemesisError.metric.getter();
    sub_100056EF0(2, v15, v24, v25);

    (*(v19 + 8))(v18, v20);
  }

  else
  {
    v26 = v0[285];
    v27 = v0[283];
    v17(v26, 1, 1, v0[292]);
    sub_10000BC10(v26, &qword_1000B9060, &qword_100093150);
    _StringGuts.grow(_:)(53);
    v28._object = 0x800000010009A8C0;
    v28._countAndFlagsBits = 0xD000000000000031;
    String.append(_:)(v28);
    swift_getErrorValue();
    v29 = v0[223];
    v30 = v0[224];
    v31 = v0[225];
    v32._countAndFlagsBits = Error.localizedDescription.getter();
    String.append(_:)(v32);

    v33._countAndFlagsBits = 32032;
    v33._object = 0xE200000000000000;
    String.append(_:)(v33);
    v34 = *(v27 + OBJC_IVAR____TtC13frauddefensed22SpamDecisioningManager_analyticsManager);

    sub_100056EF0(2, v15, 0x6F6974617265706FLL, 0xEF64656C6961466ELL);
  }

  v0[342] = &_swiftEmptySetSingleton;
  v0[341] = &_swiftEmptyArrayStorage;
  v35 = v0[333];
  v36 = v0[305];
  v37 = v0[283];
  v38 = v0[282];
  v39 = swift_allocObject();
  v0[343] = v39;
  *(v39 + 16) = 2;
  *(v39 + 24) = 0u;
  *(v39 + 40) = 0u;
  *(v39 + 56) = 1;
  *(v39 + 64) = 0u;
  *(v39 + 80) = 0u;
  *(v39 + 96) = 0u;
  *(v39 + 112) = 0u;
  *(v39 + 128) = 0;
  v40 = swift_task_alloc();
  v0[344] = v40;
  v40[2] = v0 + 122;
  v40[3] = v37;
  v40[4] = v36;
  v40[5] = v38;
  v40[6] = v35;
  v40[7] = v39;
  v41 = async function pointer to withThrowingTaskGroup<A, B>(of:returning:isolation:body:)[1];
  v42 = swift_task_alloc();
  v0[345] = v42;
  *v42 = v0;
  v42[1] = sub_10007D14C;

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)(v42, &type metadata for () + 8, &type metadata for () + 8, 0, 0, &unk_100093160, v40, &type metadata for () + 8);
}

uint64_t sub_1000812FC()
{
  v1 = v0[343];
  v2 = v0[333];
  v3 = v0[305];

  sub_10008956C(v3, type metadata accessor for SpamDecisioningAsset);
  v36 = v0[346];
  v4 = v0[324];
  v5 = v0[323];
  v6 = v0[320];
  v7 = v0[319];
  v8 = v0[318];
  v9 = v0[317];
  v10 = v0[316];
  v11 = v0[315];
  v12 = v0[314];
  v13 = v0[313];
  v16 = v0[312];
  v17 = v0[311];
  v18 = v0[310];
  v19 = v0[309];
  v20 = v0[308];
  v21 = v0[307];
  v22 = v0[306];
  v23 = v0[305];
  v24 = v0[302];
  v25 = v0[301];
  v26 = v0[299];
  v27 = v0[296];
  v28 = v0[295];
  v29 = v0[294];
  v30 = v0[291];
  v31 = v0[290];
  v32 = v0[289];
  v33 = v0[288];
  v34 = v0[285];
  v35 = v0[284];

  v14 = v0[1];

  return v14();
}

uint64_t sub_100082358(uint64_t a1)
{
  v86 = a1;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  v85 = &v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC13frauddefensed22SpamDecisioningManager_spamAsset;
  v8 = type metadata accessor for SpamDecisioningAsset(0);
  (*(*(v8 - 8) + 56))(v1 + v7, 1, 1, v8);
  v87 = v1;
  *(v1 + OBJC_IVAR____TtC13frauddefensed22SpamDecisioningManager____lazy_storage___uafAssetManager) = 0;
  v9 = OBJC_IVAR____TtC13frauddefensed22SpamDecisioningManager_senderLookUpDecisioningComponent;
  v10 = type metadata accessor for SenderLookUpDecisioningComponent(0);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  v13 = swift_allocObject();
  v14 = sub_100002074(&qword_1000B9078, &qword_1000931B8);
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  v17 = swift_allocObject();
  v18 = type metadata accessor for LookUpOperation();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  v21 = swift_allocObject();
  *(v21 + 16) = 1;
  v22 = OBJC_IVAR____TtC13frauddefensed15LookUpOperation_logger;
  if (qword_1000B66A0 != -1)
  {
    swift_once();
  }

  v23 = sub_100003448(v2, qword_1000B93B8);
  v24 = *(v3 + 16);
  v24(v21 + v22, v23, v2);
  v17[2] = v21;
  v24(v17 + *(*v17 + 104), v23, v2);
  *(v13 + 16) = v17;
  v25 = OBJC_IVAR____TtC13frauddefensed32SenderLookUpDecisioningComponent_logger;
  if (qword_1000B66B0 != -1)
  {
    swift_once();
  }

  v26 = sub_100003448(v2, qword_1000B93E8);
  v24(v13 + v25, v26, v2);
  v27 = v87;
  *(v87 + v9) = v13;
  v28 = OBJC_IVAR____TtC13frauddefensed22SpamDecisioningManager_logicGraphDecisioningComponent;
  v29 = type metadata accessor for LogicGraphDecisioningComponent(0);
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  v32 = swift_allocObject();
  v24(v32 + OBJC_IVAR____TtC13frauddefensed30LogicGraphDecisioningComponent_logger, v26, v2);
  *(v27 + v28) = v32;
  v33 = OBJC_IVAR____TtC13frauddefensed22SpamDecisioningManager_analyticsManager;
  v34 = type metadata accessor for DaemonAnalyticsManager();
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  v37 = swift_allocObject();
  v38 = OBJC_IVAR____TtC13frauddefensed22DaemonAnalyticsManager_logger;
  if (qword_1000B66A8 != -1)
  {
    swift_once();
  }

  v39 = sub_100003448(v2, qword_1000B93D0);
  v24(v37 + v38, v39, v2);
  v40 = OBJC_IVAR____TtC13frauddefensed22DaemonAnalyticsManager_eligibilityManager;
  v41 = type metadata accessor for EligibilityManager();
  v42 = *(v41 + 48);
  v43 = *(v41 + 52);
  v44 = swift_allocObject();
  *(v44 + 16) = 0;
  v45 = OBJC_IVAR____TtC13frauddefensed18EligibilityManager_logger;
  if (qword_1000B6690 != -1)
  {
    swift_once();
  }

  v46 = sub_100003448(v2, qword_1000B9388);
  v24(v44 + v45, v46, v2);
  *(v37 + v40) = v44;
  v47 = v87;
  *(v87 + v33) = v37;
  v48 = OBJC_IVAR____TtC13frauddefensed22SpamDecisioningManager_signpostsManager;
  v49 = type metadata accessor for SignpostsManager(0);
  v50 = *(v49 + 48);
  v51 = *(v49 + 52);
  v52 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v52 + 112) = &_swiftEmptyDictionarySingleton;
  if (qword_1000B66C8 != -1)
  {
    swift_once();
  }

  v53 = sub_100003448(v2, qword_1000B9430);
  v24(v85, v53, v2);
  OSSignposter.init(logger:)();
  v24(v52 + OBJC_IVAR____TtC13frauddefensed16SignpostsManager_logger, v39, v2);
  *(v47 + v48) = v52;
  v24(v47 + OBJC_IVAR____TtC13frauddefensed22SpamDecisioningManager_logger, v26, v2);
  v54 = v86;
  sub_100011DFC(v86, &v91, &qword_1000B9080, &qword_1000931C0);
  if (v92)
  {
    sub_100011DD4(&v91, v93);
    sub_100043EA4(v93, &v91);
    v55 = v92;
    v56 = sub_100010F28(&v91, v92);
    v57 = *(*(v55 - 8) + 64);
    __chkstk_darwin(v56, v56);
    v59 = (&v84 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v60 + 16))(v59);
    v89 = &type metadata for SignatureAnalysisDecisioningComponentProvider;
    v90 = &off_1000B0938;
    *v88 = *v59;
    v61 = type metadata accessor for SignatureAnalysisDecisioningComponent(0);
    v62 = *(v61 + 48);
    v63 = *(v61 + 52);
    v64 = swift_allocObject();
    v65 = sub_100010F28(v88, &type metadata for SignatureAnalysisDecisioningComponentProvider);
    __chkstk_darwin(v65, v65);
    v67 = (&v84 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v68 + 16))(v67);
    v69 = sub_100010FC8(*v67, v67[1], v64);
    sub_10000BC10(v54, &qword_1000B9080, &qword_1000931C0);
    sub_100003558(v93);
    sub_100003558(v88);
    sub_100003558(&v91);
  }

  else
  {
    sub_10000BC10(&v91, &qword_1000B9080, &qword_1000931C0);
    v70 = sub_100010D3C(0);
    v71 = type metadata accessor for SignaturesSQLiteManager();
    v72 = *(v71 + 48);
    v73 = *(v71 + 52);
    swift_allocObject();
    v74 = sub_10006D3FC(0, 0);
    v93[3] = &type metadata for SignatureAnalysisDecisioningComponentProvider;
    v93[4] = &off_1000B0938;
    v93[0] = v70;
    v93[1] = v74;
    v75 = type metadata accessor for SignatureAnalysisDecisioningComponent(0);
    v76 = *(v75 + 48);
    v77 = *(v75 + 52);
    v78 = swift_allocObject();
    v79 = sub_100010F28(v93, &type metadata for SignatureAnalysisDecisioningComponentProvider);
    __chkstk_darwin(v79, v79);
    v81 = (&v84 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v82 + 16))(v81);
    v69 = sub_100010FC8(*v81, v81[1], v78);
    sub_10000BC10(v54, &qword_1000B9080, &qword_1000931C0);
    sub_100003558(v93);
  }

  *(v47 + 16) = v69;
  return v47;
}

char *sub_100082B5C()
{
  v1 = OBJC_IVAR____TtC13frauddefensed22SpamDecisioningManager____lazy_storage___uafAssetManager;
  if (*(v0 + OBJC_IVAR____TtC13frauddefensed22SpamDecisioningManager____lazy_storage___uafAssetManager))
  {
    v2 = *(v0 + OBJC_IVAR____TtC13frauddefensed22SpamDecisioningManager____lazy_storage___uafAssetManager);
  }

  else
  {
    v3 = type metadata accessor for UAFAssetManager(0);
    v4 = *(v3 + 48);
    v5 = *(v3 + 52);
    v2 = swift_allocObject();
    v6 = OBJC_IVAR____TtC13frauddefensed15UAFAssetManager_logger;
    if (qword_1000B66B8 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    v8 = sub_100003448(v7, qword_1000B9400);
    (*(*(v7 - 8) + 16))(&v2[v6], v8, v7);
    *(v2 + 2) = 0xD000000000000019;
    *(v2 + 3) = 0x8000000100094840;
    *(v2 + 4) = 0xD000000000000022;
    *(v2 + 5) = 0x8000000100094860;
    *(v2 + 6) = 0xD000000000000023;
    *(v2 + 7) = 0x8000000100094890;
    *(v2 + 8) = 0x6D6170732E6B74;
    *(v2 + 9) = 0xE700000000000000;
    v9 = *(v0 + v1);
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_100082CC8(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 24) = a4;
  *(v5 + 32) = a5;
  *(v5 + 112) = a3;
  *(v5 + 16) = a2;
  v6 = *(type metadata accessor for SpamDecisioningAsset(0) - 8);
  *(v5 + 40) = v6;
  *(v5 + 48) = *(v6 + 64);
  *(v5 + 56) = swift_task_alloc();
  v7 = *(*(sub_100002074(&qword_1000B7580, &qword_10008EEC0) - 8) + 64) + 15;
  *(v5 + 64) = swift_task_alloc();

  return _swift_task_switch(sub_100082DCC, 0, 0);
}

uint64_t sub_100082DCC()
{
  v1 = *(v0 + 112);
  if (v1)
  {
    v8 = *(v0 + 64);
    v9 = *(v0 + 16);
    v10 = *(v0 + 24);
    v11 = type metadata accessor for TaskPriority();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
    v12 = *(v10 + OBJC_IVAR____TtC13frauddefensed22SpamDecisioningManager_senderLookUpDecisioningComponent);
    v13 = swift_allocObject();
    v13[2] = 0;
    v13[3] = 0;
    v13[4] = v12;

    sub_100048A98(v8, &unk_100093208, v13);
    sub_10000BC10(v8, &qword_1000B7580, &qword_10008EEC0);
    v1 = *(v0 + 112);
    if ((v1 & 0x100) == 0)
    {
LABEL_3:
      if ((v1 & 0x10000) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((v1 & 0x100) == 0)
  {
    goto LABEL_3;
  }

  v15 = *(v0 + 56);
  v14 = *(v0 + 64);
  v17 = *(v0 + 40);
  v16 = *(v0 + 48);
  v19 = *(v0 + 24);
  v18 = *(v0 + 32);
  v20 = *(v0 + 16);
  v21 = type metadata accessor for TaskPriority();
  (*(*(v21 - 8) + 56))(v14, 1, 1, v21);
  v22 = *(v19 + 16);
  sub_100088834(v18, v15, type metadata accessor for SpamDecisioningAsset);
  v23 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  sub_1000887CC(v15, v24 + v23, type metadata accessor for SpamDecisioningAsset);
  *(v24 + ((v16 + v23 + 7) & 0xFFFFFFFFFFFFFFF8)) = v22;

  sub_100048A98(v14, &unk_1000931F8, v24);
  sub_10000BC10(v14, &qword_1000B7580, &qword_10008EEC0);
  if ((*(v0 + 112) & 0x10000) != 0)
  {
LABEL_4:
    v2 = *(v0 + 64);
    v3 = *(v0 + 16);
    v4 = *(v0 + 24);
    v5 = type metadata accessor for TaskPriority();
    (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
    v6 = *(v4 + OBJC_IVAR____TtC13frauddefensed22SpamDecisioningManager_logicGraphDecisioningComponent);
    v7 = swift_allocObject();
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = v6;

    sub_100048A98(v2, &unk_1000931E8, v7);
    sub_10000BC10(v2, &qword_1000B7580, &qword_10008EEC0);
  }

LABEL_5:

  return _swift_task_switch(sub_1000830D0, 0, 0);
}

uint64_t sub_1000830D0()
{
  *(v0 + 72) = **(v0 + 16);
  *(v0 + 80) = sub_100002074(&qword_1000B6CC0, &qword_100091740);
  if (ThrowingTaskGroup.isEmpty.getter())
  {
    v2 = *(v0 + 56);
    v1 = *(v0 + 64);

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    *(v0 + 88) = 0;
    v5 = async function pointer to ThrowingTaskGroup.next(isolation:)[1];
    v6 = swift_task_alloc();
    *(v0 + 96) = v6;
    v7 = sub_100002074(&qword_1000B7A50, &qword_1000931B0);
    *v6 = v0;
    v6[1] = sub_10008321C;
    v8 = *(v0 + 16);

    return ThrowingTaskGroup.next(isolation:)(v0 + 116, 0, 0, v7);
  }
}

uint64_t sub_10008321C()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v6 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = sub_10008348C;
  }

  else
  {
    *(v2 + 117) = *(v2 + 116);
    v4 = sub_100083338;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100083338()
{
  if (*(v0 + 117))
  {
    v1 = *(v0 + 80);
    v2 = *(v0 + 88);
    v3 = *(v0 + 72);
    if (ThrowingTaskGroup.isEmpty.getter())
    {
      v4 = *(v0 + 56);
      v5 = *(v0 + 64);
      if (v2)
      {
        swift_willThrow();
      }

      v6 = *(v0 + 8);

      return v6();
    }

    *(v0 + 88) = v2;
  }

  v8 = async function pointer to ThrowingTaskGroup.next(isolation:)[1];
  v9 = swift_task_alloc();
  *(v0 + 96) = v9;
  v10 = sub_100002074(&qword_1000B7A50, &qword_1000931B0);
  *v9 = v0;
  v9[1] = sub_10008321C;
  v11 = *(v0 + 16);

  return ThrowingTaskGroup.next(isolation:)(v0 + 116, 0, 0, v10);
}

uint64_t sub_10008348C()
{
  v1 = v0[13];
  if (v0[11])
  {
    v2 = v0[13];

    v1 = v0[11];
  }

  v3 = v0[9];
  v4 = v0[10];
  if (ThrowingTaskGroup.isEmpty.getter())
  {
    v5 = v0[7];
    v6 = v0[8];
    if (v1)
    {
      swift_willThrow();
    }

    v7 = v0[1];

    return v7();
  }

  else
  {
    v0[11] = v1;
    v9 = async function pointer to ThrowingTaskGroup.next(isolation:)[1];
    v10 = swift_task_alloc();
    v0[12] = v10;
    v11 = sub_100002074(&qword_1000B7A50, &qword_1000931B0);
    *v10 = v0;
    v10[1] = sub_10008321C;
    v12 = v0[2];

    return ThrowingTaskGroup.next(isolation:)(v0 + 116, 0, 0, v11);
  }
}

uint64_t sub_10008360C()
{
  v1 = *(v0 + 16);
  v2 = static os_log_type_t.default.getter();
  sub_10005E11C(v2, 0xD00000000000002ALL, 0x800000010009AD30, 0xD000000000000065, 0x800000010009A040, 33);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1000836B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for SignatureAnalysisDecisioningComponent.SignatureAnalysisSetupInput(0);
  v5[4] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[5] = swift_task_alloc();

  return _swift_task_switch(sub_10008374C, 0, 0);
}

uint64_t sub_10008374C()
{
  v1 = v0[4];
  v2 = v0[5];
  sub_100088834(v0[2], v2, type metadata accessor for SpamDecisioningAsset);
  *(v2 + *(v1 + 20)) = 1;
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = sub_100083814;
  v4 = v0[5];
  v5 = v0[3];

  return sub_100033DE4(v4);
}

uint64_t sub_100083814()
{
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = sub_1000839AC;
  }

  else
  {
    v3 = sub_100083928;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100083928()
{
  sub_10008956C(*(v0 + 40), type metadata accessor for SignatureAnalysisDecisioningComponent.SignatureAnalysisSetupInput);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000839AC()
{
  sub_10008956C(v0[5], type metadata accessor for SignatureAnalysisDecisioningComponent.SignatureAnalysisSetupInput);

  v1 = v0[1];
  v2 = v0[7];

  return v1();
}

uint64_t sub_100083A50()
{
  v1 = *(v0 + 16);
  v2 = static os_log_type_t.default.getter();
  sub_10005E11C(v2, 0xD00000000000001CLL, 0x800000010009AD60, 0xD000000000000063, 0x8000000100094070, 30);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100083AFC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  if (a1)
  {
    swift_getObjectType();
    v4 = dispatch thunk of Actor.unownedExecutor.getter();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v3[5] = v4;
  v3[6] = v6;

  return _swift_task_switch(sub_100083B90, v4, v6);
}

uint64_t sub_100083B90()
{
  *(v0 + 56) = **(v0 + 32);
  *(v0 + 64) = sub_100002074(&qword_1000B6CC0, &qword_100091740);
  if (ThrowingTaskGroup.isEmpty.getter())
  {
    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    *(v0 + 72) = 0;
    v3 = async function pointer to ThrowingTaskGroup.next(isolation:)[1];
    v4 = swift_task_alloc();
    *(v0 + 80) = v4;
    v5 = sub_100002074(&qword_1000B7A50, &qword_1000931B0);
    *v4 = v0;
    v4[1] = sub_100083CC8;
    v6 = *(v0 + 24);
    v7 = *(v0 + 32);
    v8 = *(v0 + 16);

    return ThrowingTaskGroup.next(isolation:)(v0 + 96, v8, v6, v5);
  }
}

uint64_t sub_100083CC8()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v8 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = *(v2 + 40);
    v5 = *(v2 + 48);
    v6 = sub_100083F14;
  }

  else
  {
    *(v2 + 97) = *(v2 + 96);
    v4 = *(v2 + 40);
    v5 = *(v2 + 48);
    v6 = sub_100083DE4;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_100083DE4()
{
  if (*(v0 + 97))
  {
    v1 = *(v0 + 64);
    v2 = *(v0 + 72);
    v3 = *(v0 + 56);
    if (ThrowingTaskGroup.isEmpty.getter())
    {
      if (v2)
      {
        swift_willThrow();
      }

      v4 = *(v0 + 8);

      return v4();
    }

    *(v0 + 72) = v2;
  }

  v6 = async function pointer to ThrowingTaskGroup.next(isolation:)[1];
  v7 = swift_task_alloc();
  *(v0 + 80) = v7;
  v8 = sub_100002074(&qword_1000B7A50, &qword_1000931B0);
  *v7 = v0;
  v7[1] = sub_100083CC8;
  v9 = *(v0 + 24);
  v10 = *(v0 + 32);
  v11 = *(v0 + 16);

  return ThrowingTaskGroup.next(isolation:)(v0 + 96, v11, v9, v8);
}

uint64_t sub_100083F14()
{
  v1 = v0[11];
  if (v0[9])
  {
    v2 = v0[11];

    v1 = v0[9];
  }

  v3 = v0[7];
  v4 = v0[8];
  if (ThrowingTaskGroup.isEmpty.getter())
  {
    if (v1)
    {
      swift_willThrow();
    }

    v5 = v0[1];

    return v5();
  }

  else
  {
    v0[9] = v1;
    v7 = async function pointer to ThrowingTaskGroup.next(isolation:)[1];
    v8 = swift_task_alloc();
    v0[10] = v8;
    v9 = sub_100002074(&qword_1000B7A50, &qword_1000931B0);
    *v8 = v0;
    v8[1] = sub_100083CC8;
    v10 = v0[3];
    v11 = v0[4];
    v12 = v0[2];

    return ThrowingTaskGroup.next(isolation:)(v0 + 12, v12, v10, v9);
  }
}

uint64_t sub_100084050(uint64_t a1)
{
  v54 = a1;
  v2 = type metadata accessor for Locale();
  v52 = *(v2 - 8);
  v53 = v2;
  v3 = *(v52 + 64);
  __chkstk_darwin(v2, v4);
  v6 = &v48[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_100002074(&qword_1000B6A68, &qword_10008F6F0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8, v9);
  v11 = &v48[-v10];
  v12 = sub_100002074(&qword_1000B9058, &qword_100093140);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8, v14);
  v16 = &v48[-v15];
  v17 = type metadata accessor for SpamDecisioningAsset(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17, v20);
  v22 = &v48[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = OBJC_IVAR____TtC13frauddefensed22SpamDecisioningManager_spamAsset;
  swift_beginAccess();
  sub_100011DFC(v1 + v23, v16, &qword_1000B9058, &qword_100093140);
  if ((*(v18 + 48))(v16, 1, v17) != 1)
  {
    sub_1000887CC(v16, v22, type metadata accessor for SpamDecisioningAsset);
    v25 = *&v22[*(v17 + 32)];
    v26 = *(v25 + 352);
    v49 = *(v25 + 353);
    v50 = *(v25 + 354);
    v51 = v26;
    v27 = *(v25 + 360);
    v28 = *(v25 + 368);
    v29 = *(v25 + 376);

    static Locale.current.getter();
    Locale.region.getter();
    (*(v52 + 8))(v6, v53);
    v30 = type metadata accessor for Locale.Region();
    v31 = *(v30 - 8);
    if ((*(v31 + 48))(v11, 1, v30) == 1)
    {
      sub_10000BC10(v11, &qword_1000B6A68, &qword_10008F6F0);
      v32 = 0xE700000000000000;
      v33 = 0x6E776F6E6B6E75;
    }

    else
    {
      v33 = Locale.Region.identifier.getter();
      v32 = v34;
      (*(v31 + 8))(v11, v30);
    }

    v35 = v54;
    v58 = *(v54 + 16);
    v57 = *(v54 + 16);
    v55 = 5456722;
    v56 = 0xE300000000000000;
    sub_10001C1B8();
    swift_bridgeObjectRetain_n();
    if (StringProtocol.contains<A>(_:)() & 1) != 0 && (!v49 ? (v36 = 0) : (v36 = 256), (v37 = v36 | v51, !v50) ? (v38 = 0) : (v38 = 0x10000), (sub_100086A30(5456722, 0xE300000000000000, v33, v32, v37 | v38, v27, v28, v29, v35)))
    {

      sub_100026E0C(&v58);
    }

    else
    {
      v57 = v58;
      v55 = 0x6567617373654D69;
      v56 = 0xE800000000000000;
      v39 = StringProtocol.contains<A>(_:)();
      sub_100026E0C(&v58);
      if ((v39 & 1) == 0 || (!v49 ? (v40 = 0) : (v40 = 256), (v41 = v40 | v51, !v50) ? (v42 = 0) : (v42 = 0x10000), (sub_100086A30(0x6567617373654D69, 0xE800000000000000, v33, v32, v41 | v42, v27, v28, v29, v54) & 1) == 0))
      {
        v57 = v58;
        v55 = 5459283;
        v56 = 0xE300000000000000;
        v43 = StringProtocol.contains<A>(_:)();
        sub_100026E0C(&v58);
        if (v43)
        {
          if (v49)
          {
            v44 = 256;
          }

          else
          {
            v44 = 0;
          }

          v45 = v44 | v51;
          if (v50)
          {
            v46 = 0x10000;
          }

          else
          {
            v46 = 0;
          }

          v24 = sub_100086A30(5459283, 0xE300000000000000, v33, v32, v45 | v46, v27, v28, v29, v54);
        }

        else
        {

          v24 = 0;
        }

        goto LABEL_34;
      }
    }

    sub_100026E0C(&v58);
    v24 = 1;
LABEL_34:
    sub_10008956C(v22, type metadata accessor for SpamDecisioningAsset);
    return v24 & 1;
  }

  sub_10000BC10(v16, &qword_1000B9058, &qword_100093140);
  v24 = 0;
  return v24 & 1;
}

uint64_t sub_100084690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[35] = a7;
  v8[36] = a8;
  v8[33] = a5;
  v8[34] = a6;
  v8[31] = a3;
  v8[32] = a4;
  v8[30] = a2;
  v9 = *(type metadata accessor for SpamDecisioningAsset(0) - 8);
  v8[37] = v9;
  v8[38] = *(v9 + 64);
  v8[39] = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  v8[40] = v10;
  v11 = *(v10 - 8);
  v8[41] = v11;
  v8[42] = *(v11 + 64);
  v8[43] = swift_task_alloc();
  v12 = *(*(sub_100002074(&qword_1000B7580, &qword_10008EEC0) - 8) + 64) + 15;
  v8[44] = swift_task_alloc();

  return _swift_task_switch(sub_1000847FC, 0, 0);
}

uint64_t sub_1000847FC()
{
  v1 = v0[31];
  if (*v1 == 1)
  {
    v2 = v0[43];
    v3 = v0[44];
    v73 = v3;
    v4 = v0[41];
    v6 = v0[39];
    v5 = v0[40];
    v49 = v5;
    v51 = v2;
    v47 = v6;
    v55 = v0[38];
    v59 = v0[42];
    v53 = v0[37];
    v69 = v0[35];
    v71 = v0[36];
    v7 = v0[33];
    v8 = v0[34];
    v9 = v0[32];
    v75 = v0[30];
    v10 = type metadata accessor for TaskPriority();
    (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
    v65 = *(v9 + OBJC_IVAR____TtC13frauddefensed22SpamDecisioningManager_senderLookUpDecisioningComponent);
    v67 = *(v9 + OBJC_IVAR____TtC13frauddefensed22SpamDecisioningManager_analyticsManager);
    v63 = *(v9 + OBJC_IVAR____TtC13frauddefensed22SpamDecisioningManager_signpostsManager);
    (*(v4 + 16))(v2, v9 + OBJC_IVAR____TtC13frauddefensed22SpamDecisioningManager_logger, v5);
    sub_100088834(v7, v6, type metadata accessor for SpamDecisioningAsset);
    v11 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v12 = (v59 + *(v53 + 80) + v11) & ~*(v53 + 80);
    v13 = (v55 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
    v60 = (v13 + 113) & 0xFFFFFFFFFFFFFFF8;
    v56 = (v60 + 15) & 0xFFFFFFFFFFFFFFF8;
    v14 = (v56 + 15) & 0xFFFFFFFFFFFFFFF8;
    v15 = (v14 + 15) & 0xFFFFFFFFFFFFFFF8;
    v16 = swift_allocObject();
    *(v16 + 16) = 0;
    *(v16 + 24) = 0;
    (*(v4 + 32))(v16 + v11, v51, v49);
    sub_1000887CC(v47, v16 + v12, type metadata accessor for SpamDecisioningAsset);
    v17 = (v16 + v13);
    v19 = v8[1];
    v18 = v8[2];
    *v17 = *v8;
    v17[1] = v19;
    v17[2] = v18;
    v21 = v8[4];
    v20 = v8[5];
    v22 = v8[3];
    *(v17 + 90) = *(v8 + 90);
    v17[4] = v21;
    v17[5] = v20;
    v17[3] = v22;
    *(v16 + v60) = v63;
    *(v16 + v56) = v65;
    *(v16 + v14) = v69;
    *(v16 + v15) = v71;
    *(v16 + ((v15 + 15) & 0xFFFFFFFFFFFFFFF8)) = v67;

    sub_1000886EC(v8, (v0 + 16));

    sub_100048A98(v73, &unk_1000931A0, v16);
    sub_10000BC10(v73, &qword_1000B7580, &qword_10008EEC0);
    v1 = v0[31];
  }

  if (v1[1] == 1)
  {
    v23 = v0[43];
    v24 = v0[44];
    v74 = v24;
    v25 = v0[41];
    v26 = v0[39];
    v27 = v0[40];
    v50 = v27;
    v52 = v23;
    v48 = v26;
    v57 = v0[38];
    v61 = v0[42];
    v54 = v0[37];
    v70 = v0[35];
    v72 = v0[36];
    v28 = v0[33];
    v29 = v0[34];
    v30 = v0[32];
    v76 = v0[30];
    v31 = type metadata accessor for TaskPriority();
    (*(*(v31 - 8) + 56))(v24, 1, 1, v31);
    v66 = *(v30 + 16);
    v68 = *(v30 + OBJC_IVAR____TtC13frauddefensed22SpamDecisioningManager_analyticsManager);
    v64 = *(v30 + OBJC_IVAR____TtC13frauddefensed22SpamDecisioningManager_signpostsManager);
    (*(v25 + 16))(v23, v30 + OBJC_IVAR____TtC13frauddefensed22SpamDecisioningManager_logger, v27);
    sub_100088834(v28, v26, type metadata accessor for SpamDecisioningAsset);
    v32 = (*(v25 + 80) + 32) & ~*(v25 + 80);
    v33 = (v61 + *(v54 + 80) + v32) & ~*(v54 + 80);
    v34 = (v57 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
    v62 = (v34 + 113) & 0xFFFFFFFFFFFFFFF8;
    v58 = (v62 + 15) & 0xFFFFFFFFFFFFFFF8;
    v35 = (v58 + 15) & 0xFFFFFFFFFFFFFFF8;
    v36 = (v35 + 15) & 0xFFFFFFFFFFFFFFF8;
    v37 = swift_allocObject();
    *(v37 + 16) = 0;
    *(v37 + 24) = 0;
    (*(v25 + 32))(v37 + v32, v52, v50);
    sub_1000887CC(v48, v37 + v33, type metadata accessor for SpamDecisioningAsset);
    v38 = (v37 + v34);
    v40 = v29[1];
    v39 = v29[2];
    *v38 = *v29;
    v38[1] = v40;
    v38[2] = v39;
    v42 = v29[4];
    v41 = v29[5];
    v43 = v29[3];
    *(v38 + 90) = *(v29 + 90);
    v38[4] = v42;
    v38[5] = v41;
    v38[3] = v43;
    *(v37 + v62) = v64;
    *(v37 + v58) = v66;
    *(v37 + v35) = v70;
    *(v37 + v36) = v72;
    *(v37 + ((v36 + 15) & 0xFFFFFFFFFFFFFFF8)) = v68;
    sub_1000886EC(v29, (v0 + 2));

    sub_100048A98(v74, &unk_100093190, v37);
    sub_10000BC10(v74, &qword_1000B7580, &qword_10008EEC0);
  }

  v44 = swift_task_alloc();
  v0[45] = v44;
  *v44 = v0;
  v44[1] = sub_100084DA4;
  v45 = v0[30];

  return sub_100083AFC(0, 0);
}

uint64_t sub_100084DA4()
{
  v1 = *(*v0 + 360);
  v2 = *(*v0 + 352);
  v3 = *(*v0 + 344);
  v4 = *(*v0 + 312);
  v7 = *v0;

  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_100084EF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 384) = v17;
  *(v8 + 368) = v16;
  *(v8 + 352) = a7;
  *(v8 + 360) = a8;
  *(v8 + 336) = a5;
  *(v8 + 344) = a6;
  *(v8 + 328) = a4;
  v9 = type metadata accessor for UUID();
  *(v8 + 392) = v9;
  v10 = *(v9 - 8);
  *(v8 + 400) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 408) = swift_task_alloc();
  v12 = type metadata accessor for SenderLookUpDecisioningComponent.SenderLookUpInput(0);
  *(v8 + 416) = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  *(v8 + 424) = swift_task_alloc();

  return _swift_task_switch(sub_100085000, 0, 0);
}

uint64_t sub_100085000()
{
  v2 = v0[52];
  v1 = v0[53];
  v4 = v0[50];
  v3 = v0[51];
  v5 = v0[49];
  v7 = v0[43];
  v6 = v0[44];
  v8 = v0[41];
  v9 = v0[42];
  v10 = static os_log_type_t.debug.getter();
  sub_10005E11C(v10, 0xD00000000000002ELL, 0x800000010009A9D0, 0xD00000000000005BLL, 0x8000000100095700, 283);
  sub_100088834(v9, v1, type metadata accessor for SpamDecisioningAsset);
  v11 = (v1 + *(v2 + 20));
  v13 = v7[1];
  v12 = v7[2];
  *v11 = *v7;
  v11[1] = v13;
  v11[2] = v12;
  v14 = v7[3];
  v15 = v7[4];
  v16 = v7[5];
  *(v11 + 90) = *(v7 + 90);
  v11[4] = v15;
  v11[5] = v16;
  v11[3] = v14;
  sub_1000886EC(v7, (v0 + 2));
  UUID.init()();
  v0[54] = UUID.uuidString.getter();
  v0[55] = v17;
  (*(v4 + 8))(v3, v5);

  return _swift_task_switch(sub_10008515C, v6, 0);
}

uint64_t sub_10008515C()
{
  v1 = *(v0 + 352);
  sub_10006C4A8("senderLookUp", 12, 2, *(v0 + 432), *(v0 + 440), 0);
  v2 = swift_task_alloc();
  *(v0 + 448) = v2;
  *v2 = v0;
  v2[1] = sub_100085214;
  v3 = *(v0 + 424);
  v4 = *(v0 + 360);

  return sub_100075BB0(v3);
}

uint64_t sub_100085214(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 448);
  v6 = *v2;
  *(*v2 + 456) = v1;

  if (v1)
  {
    v7 = sub_1000856C4;
    v8 = 0;
  }

  else
  {
    v8 = *(v4 + 352);
    *(v4 + 122) = a1 & 1;
    v7 = sub_10008534C;
  }

  return _swift_task_switch(v7, v8, 0);
}

uint64_t sub_10008534C()
{
  v1 = *(v0 + 352);
  sub_10006C4A8("senderLookUp", 12, 2, *(v0 + 432), *(v0 + 440), 1);

  return _swift_task_switch(sub_1000853D8, 0, 0);
}

uint64_t sub_1000856C4()
{
  v1 = *(v0 + 456);
  v2 = *(v0 + 440);
  v3 = *(v0 + 328);

  v4 = static os_log_type_t.error.getter();
  _StringGuts.grow(_:)(67);
  v5._object = 0x800000010009AA10;
  v5._countAndFlagsBits = 0xD00000000000003FLL;
  String.append(_:)(v5);
  swift_getErrorValue();
  v7 = *(v0 + 184);
  v6 = *(v0 + 192);
  v8 = *(v0 + 200);
  v9._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v9);

  v10._countAndFlagsBits = 32032;
  v10._object = 0xE200000000000000;
  String.append(_:)(v10);
  sub_10005E11C(v4, 0, 0xE000000000000000, 0xD00000000000005BLL, 0x8000000100095700, 308);

  *(v0 + 312) = v1;
  swift_errorRetain();
  sub_100002074(&qword_1000B6CC0, &qword_100091740);
  if (swift_dynamicCast())
  {
    v11 = *(v0 + 456);
    v12 = *(v0 + 384);
    v13 = *(v0 + 280);
    v14 = *(v0 + 288);
    v15 = *(v0 + 296);
    v16 = sub_10004F2E4(v13, v14, v15);
    v18 = v17;
    sub_100011CAC(v13, v14, v15);
    sub_100056EF0(0, 0, v16, v18);
  }

  else
  {
    v19 = *(v0 + 456);
    v20 = *(v0 + 384);
    _StringGuts.grow(_:)(67);
    v21._object = 0x800000010009AA10;
    v21._countAndFlagsBits = 0xD00000000000003FLL;
    String.append(_:)(v21);
    swift_getErrorValue();
    v23 = *(v0 + 208);
    v22 = *(v0 + 216);
    v24 = *(v0 + 224);
    v25._countAndFlagsBits = Error.localizedDescription.getter();
    String.append(_:)(v25);

    v26._countAndFlagsBits = 32032;
    v26._object = 0xE200000000000000;
    String.append(_:)(v26);

    sub_100056EF0(0, 0, 0xD000000000000013, 0x8000000100097030);
  }

  v27 = *(v0 + 408);
  v28 = *(v0 + 328);
  sub_10008956C(*(v0 + 424), type metadata accessor for SenderLookUpDecisioningComponent.SenderLookUpInput);
  v29 = static os_log_type_t.debug.getter();
  sub_10005E11C(v29, 0xD00000000000002ELL, 0x800000010009AA50, 0xD00000000000005BLL, 0x8000000100095700, 285);

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_1000859BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 1288) = v17;
  *(v8 + 1272) = v16;
  *(v8 + 1264) = a8;
  *(v8 + 1256) = a7;
  *(v8 + 1248) = a6;
  *(v8 + 1240) = a5;
  *(v8 + 1232) = a4;
  v9 = type metadata accessor for UUID();
  *(v8 + 1296) = v9;
  v10 = *(v9 - 8);
  *(v8 + 1304) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 1312) = swift_task_alloc();
  v12 = type metadata accessor for SignatureAnalysisDecisioningComponent.SignatureAnalysisInput(0);
  *(v8 + 1320) = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  *(v8 + 1328) = swift_task_alloc();

  return _swift_task_switch(sub_100085AD4, 0, 0);
}

uint64_t sub_100085AD4()
{
  v1 = v0[166];
  v2 = v0[165];
  v3 = v0[164];
  v4 = v0[163];
  v5 = v0[162];
  v6 = v0[157];
  v7 = v0[156];
  v8 = v0[155];
  v9 = v0[154];
  v10 = static os_log_type_t.debug.getter();
  sub_10005E11C(v10, 0xD000000000000033, 0x800000010009AAD0, 0xD00000000000005BLL, 0x8000000100095700, 323);
  sub_100088834(v8, v1, type metadata accessor for SpamDecisioningAsset);
  v11 = (v1 + *(v2 + 20));
  v12 = *(v7 + 90);
  v14 = v7[4];
  v13 = v7[5];
  v11[3] = v7[3];
  v11[4] = v14;
  v11[5] = v13;
  *(v11 + 90) = v12;
  v16 = v7[1];
  v15 = v7[2];
  *v11 = *v7;
  v11[1] = v16;
  v11[2] = v15;
  *(v1 + *(v2 + 24)) = 1;
  sub_1000886EC(v7, (v0 + 2));
  UUID.init()();
  v0[167] = UUID.uuidString.getter();
  v0[168] = v17;
  (*(v4 + 8))(v3, v5);

  return _swift_task_switch(sub_100085C50, v6, 0);
}

uint64_t sub_100085C50()
{
  v1 = *(v0 + 1256);
  sub_10006C4A8("signatureAnalysis", 17, 2, *(v0 + 1336), *(v0 + 1344), 0);
  v2 = swift_task_alloc();
  *(v0 + 1352) = v2;
  *v2 = v0;
  v2[1] = sub_100085D10;
  v3 = *(v0 + 1328);
  v4 = *(v0 + 1264);

  return sub_100036B44(v0 + 128, v3);
}

uint64_t sub_100085D10()
{
  v2 = *v1;
  v3 = *(*v1 + 1352);
  v11 = *v1;
  *(*v1 + 1360) = v0;

  if (v0)
  {
    v4 = *(v2 + 1344);

    v5 = sub_100086668;
    v6 = 0;
  }

  else
  {
    v6 = *(v2 + 1256);
    v7 = *(v2 + 208);
    *(v2 + 304) = *(v2 + 192);
    *(v2 + 320) = v7;
    *(v2 + 329) = *(v2 + 217);
    v8 = *(v2 + 144);
    *(v2 + 240) = *(v2 + 128);
    *(v2 + 256) = v8;
    v9 = *(v2 + 176);
    *(v2 + 272) = *(v2 + 160);
    *(v2 + 288) = v9;
    v5 = sub_100085E58;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_100085E58()
{
  v1 = *(v0 + 1256);
  sub_10006C4A8("signatureAnalysis", 17, 2, *(v0 + 1336), *(v0 + 1344), 1);

  return _swift_task_switch(sub_100085EE8, 0, 0);
}

uint64_t sub_100085EE8()
{
  v67 = v0;
  v1 = v0 + 968;
  v2 = *(v0 + 1232);
  v3 = static os_log_type_t.default.getter();
  v64 = 0;
  v65 = 0xE000000000000000;
  _StringGuts.grow(_:)(82);
  v4._countAndFlagsBits = 0xD00000000000004ELL;
  v4._object = 0x800000010009ABC0;
  String.append(_:)(v4);
  v5 = *(v0 + 208);
  *(v0 + 416) = *(v0 + 192);
  *(v0 + 432) = v5;
  *(v0 + 441) = *(v0 + 217);
  v6 = *(v0 + 144);
  *(v0 + 352) = *(v0 + 128);
  *(v0 + 368) = v6;
  v7 = *(v0 + 176);
  *(v0 + 384) = *(v0 + 160);
  *(v0 + 400) = v7;
  sub_10004D5D0(v0 + 128, v0 + 464);
  v8._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v8);

  v9._countAndFlagsBits = 32032;
  v9._object = 0xE200000000000000;
  String.append(_:)(v9);
  sub_10005E11C(v3, v64, v65, 0xD00000000000005BLL, 0x8000000100095700, 336);

  v10 = *(v0 + 128);
  v11 = *(v0 + 160);
  if (v11)
  {
    v63 = *(v0 + 1272);
    v13 = *(v0 + 168);
    v12 = *(v0 + 176);
    v15 = *(v0 + 144);
    v14 = *(v0 + 152);
    v16 = *(v0 + 136);
    *(v0 + 800) = v10 & 1;
    *(v0 + 804) = HIDWORD(v10);
    *(v0 + 808) = v16 & 1;
    *(v0 + 812) = HIDWORD(v16);
    *(v0 + 816) = v15 & 1;
    *(v0 + 824) = v14;
    *(v0 + 832) = v11;
    *(v0 + 840) = v13;
    *(v0 + 848) = v12;
    *(v0 + 856) = v10;
    *(v0 + 864) = v16;
    *(v0 + 872) = v15;
    *(v0 + 880) = v14;
    *(v0 + 888) = v11;
    *(v0 + 896) = v13;
    *(v0 + 904) = v12;
    v17 = sub_10005DFD8(v0 + 856, v0 + 912);
    v18 = sub_10005C37C(v17);
    v19 = v10;
    v10 = v20;
    v1 = v0 + 968;
    sub_10004D630(v19, v16, v15, v14, v11);
    v66 = &type metadata for String;
    v64 = v18;
    v65 = v10;
    LOBYTE(v10) = v19;
    swift_beginAccess();
    sub_100056920(&v64, 0xD000000000000019, 0x800000010009A730);
    swift_endAccess();
  }

  v21 = *(v0 + 1280);
  swift_beginAccess();
  v22 = *(v21 + 24);
  v23 = *(v21 + 56);
  *(v0 + 592) = *(v21 + 40);
  *(v0 + 608) = v23;
  *(v0 + 576) = v22;
  v24 = *(v21 + 72);
  v25 = *(v21 + 88);
  v26 = *(v21 + 104);
  *(v0 + 665) = *(v21 + 113);
  *(v0 + 640) = v25;
  *(v0 + 656) = v26;
  *(v0 + 624) = v24;
  v28 = *(v0 + 304);
  v27 = *(v0 + 320);
  v29 = *(v0 + 329);
  *(v21 + 72) = *(v0 + 288);
  *(v21 + 113) = v29;
  *(v21 + 104) = v27;
  *(v21 + 88) = v28;
  v30 = *(v0 + 240);
  v31 = *(v0 + 256);
  *(v21 + 56) = *(v0 + 272);
  *(v21 + 40) = v31;
  *(v21 + 24) = v30;
  sub_10004D5D0(v0 + 128, v0 + 688);
  sub_10000BC10(v0 + 576, &qword_1000B9068, &qword_100093168);
  sub_100002074(&qword_1000B6CC8, &unk_10008F950);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_10008F850;
  *(v32 + 32) = 0x79745F6863746566;
  *(v32 + 40) = 0xEA00000000006570;
  *(v32 + 48) = String._bridgeToObjectiveC()();
  *(v32 + 56) = 0x6374616D5F646964;
  *(v32 + 64) = 0xE900000000000068;
  sub_100011CC4();
  *(v32 + 72) = NSNumber.init(BOOLeanLiteral:)((v11 != 0) & v10);
  v33 = sub_100011A78(v32);
  swift_setDeallocating();
  sub_100002074(&qword_1000B6CD0, &qword_100092B90);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(v1 + 32) = *(v0 + 216);
  v34 = *(v0 + 200);
  *v1 = *(v0 + 184);
  *(v1 + 16) = v34;
  v35 = *(v0 + 1000);
  if (v35 >> 8 < 0xFF)
  {
    v36 = *(v0 + 976);
    v37 = *(v0 + 984);
    if ((v35 & 0x100) != 0)
    {
      sub_10004F2E4(*(v0 + 968), v36, *(v0 + 984));
      sub_100011DFC(v1, v0 + 1008, &qword_1000B9070, &qword_1000931A8);
      v50 = String._bridgeToObjectiveC()();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v64 = v33;
      sub_10005B524(v50, 0x726F727265, 0xE500000000000000, isUniquelyReferenced_nonNull_native);
    }

    else
    {
      v38 = *(v0 + 985) | ((*(v0 + 989) | (*(v0 + 991) << 16)) << 32);
      v39 = *(v0 + 992);
      *(v0 + 1368) = v35;
      v40 = sub_10005BC54(v36);
      sub_100056BB0(v40);
      sub_100011DFC(v1, v0 + 1048, &qword_1000B9070, &qword_1000931A8);
      v41 = String._bridgeToObjectiveC()();

      v42 = swift_isUniquelyReferenced_nonNull_native();
      v64 = v33;
      sub_10005B524(v41, 0x5F64656863746566, 0xED0000746E756F63, v42);
      v43 = v64;
      v44 = sub_10005BD48();
      sub_100056D70(v44);
      v45 = String._bridgeToObjectiveC()();

      v46 = swift_isUniquelyReferenced_nonNull_native();
      v64 = v43;
      sub_10005B524(v45, 0xD000000000000010, 0x80000001000946B0, v46);
      v47 = v64;
      isa = NSNumber.init(BOOLeanLiteral:)(*(v0 + 1368)).super.super.isa;
      v49 = swift_isUniquelyReferenced_nonNull_native();
      v64 = v47;
      sub_10005B524(isa, 0xD00000000000001BLL, 0x80000001000946D0, v49);
    }

    sub_10000BC10(v1, &qword_1000B9070, &qword_1000931A8);
    sub_10004D588(v0 + 128);
    v33 = v64;
    if (*(v0 + 232))
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  sub_10004D588(v0 + 128);
  if ((*(v0 + 232) & 1) == 0)
  {
LABEL_10:
    v52 = sub_10005BC54(*(v0 + 224));
    sub_100056BB0(v52);
    v53 = String._bridgeToObjectiveC()();

    v54 = swift_isUniquelyReferenced_nonNull_native();
    v64 = v33;
    sub_10005B524(v53, 0xD000000000000013, 0x8000000100094690, v54);
    v33 = v64;
  }

LABEL_11:
  v55 = *(v0 + 1328);
  v56 = *(v0 + 1288);
  sub_100056EF0(1, v33, 0, 0);

  sub_10008956C(v55, type metadata accessor for SignatureAnalysisDecisioningComponent.SignatureAnalysisInput);
  v57 = *(v0 + 1328);
  v58 = *(v0 + 1312);
  v59 = *(v0 + 1232);
  v60 = static os_log_type_t.debug.getter();
  sub_10005E11C(v60, 0xD000000000000033, 0x800000010009AB80, 0xD00000000000005BLL, 0x8000000100095700, 325);

  v61 = *(v0 + 8);

  return v61();
}

uint64_t sub_100086668()
{
  v1 = *(v0 + 1360);
  v2 = *(v0 + 1232);
  sub_10008956C(*(v0 + 1328), type metadata accessor for SignatureAnalysisDecisioningComponent.SignatureAnalysisInput);
  v3 = static os_log_type_t.error.getter();
  _StringGuts.grow(_:)(72);
  v4._object = 0x800000010009AB30;
  v4._countAndFlagsBits = 0xD000000000000044;
  String.append(_:)(v4);
  swift_getErrorValue();
  v5 = *(v0 + 1088);
  v6 = *(v0 + 1096);
  v7 = *(v0 + 1104);
  v8._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v8);

  v9._countAndFlagsBits = 32032;
  v9._object = 0xE200000000000000;
  String.append(_:)(v9);
  sub_10005E11C(v3, 0, 0xE000000000000000, 0xD00000000000005BLL, 0x8000000100095700, 367);

  sub_100002074(&qword_1000B6CC8, &unk_10008F950);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_10008F580;
  *(v10 + 32) = 0x79745F6863746566;
  *(v10 + 40) = 0xEA00000000006570;
  *(v10 + 48) = String._bridgeToObjectiveC()();
  v11 = sub_100011A78(v10);
  swift_setDeallocating();
  sub_10000BC10(v10 + 32, &qword_1000B6CD0, &qword_100092B90);
  swift_deallocClassInstance();
  *(v0 + 1216) = v1;
  swift_errorRetain();
  sub_100002074(&qword_1000B6CC0, &qword_100091740);
  if (swift_dynamicCast())
  {
    v12 = *(v0 + 1360);
    v13 = *(v0 + 1288);
    v14 = *(v0 + 1184);
    v15 = *(v0 + 1192);
    v16 = *(v0 + 1200);
    v17 = sub_10004F2E4(v14, v15, v16);
    v19 = v18;
    sub_100011CAC(v14, v15, v16);
    sub_100056EF0(1, v11, v17, v19);
  }

  else
  {
    v20 = *(v0 + 1360);
    v21 = *(v0 + 1288);
    _StringGuts.grow(_:)(72);
    v22._object = 0x800000010009AB30;
    v22._countAndFlagsBits = 0xD000000000000044;
    String.append(_:)(v22);
    swift_getErrorValue();
    v23 = *(v0 + 1112);
    v24 = *(v0 + 1120);
    v25 = *(v0 + 1128);
    v26._countAndFlagsBits = Error.localizedDescription.getter();
    String.append(_:)(v26);

    v27._countAndFlagsBits = 32032;
    v27._object = 0xE200000000000000;
    String.append(_:)(v27);

    sub_100056EF0(1, v11, 0xD000000000000018, 0x8000000100097050);
  }

  v28 = *(v0 + 1328);
  v29 = *(v0 + 1312);
  v30 = *(v0 + 1232);
  v31 = static os_log_type_t.debug.getter();
  sub_10005E11C(v31, 0xD000000000000033, 0x800000010009AB80, 0xD00000000000005BLL, 0x8000000100095700, 325);

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_100086A30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if ((a1 != 5456722 || a2 != 0xE300000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    if (a1 == 0x6567617373654D69 && a2 == 0xE800000000000000)
    {
      a8 = a7;
    }

    else
    {
      a8 = a7;
      if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        if (a1 == 5459283 && a2 == 0xE300000000000000)
        {
          a8 = a6;
        }

        else
        {
          v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v18 = 0;
          a8 = a6;
          if ((v17 & 1) == 0)
          {
            goto LABEL_13;
          }
        }
      }
    }
  }

  v18 = sub_100021018(a3, a4, a8);
LABEL_13:
  if (*(a9 + 105) > 1u)
  {
    if (*(a9 + 105) == 2)
    {
      a5 = (a5 >> 8) & 1;
    }

    else
    {
      a5 = 0;
    }
  }

  else if (*(a9 + 105))
  {
    a5 = HIWORD(a5) & 1;
  }

  return v18 & a5 & 1;
}

Swift::Int sub_100086B9C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100086BF8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100086C40@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_1000AE4B8, *a1);

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_100086CA8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 1684104562;
  if (v2 != 1)
  {
    v4 = 0x646579616C6564;
    v3 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6C617669727261;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0xE400000000000000;
  v8 = 1684104562;
  if (*a2 != 1)
  {
    v8 = 0x646579616C6564;
    v7 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6C617669727261;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE700000000000000;
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

Swift::Int sub_100086D9C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100086E38()
{
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_100086EC0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100086F58@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100088F88(*a1);
  *a2 = result;
  return result;
}

void sub_100086F88(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE400000000000000;
  v5 = 1684104562;
  if (v2 != 1)
  {
    v5 = 0x646579616C6564;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6C617669727261;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

void sub_10008728C()
{
  if (v0[1])
  {
    v1 = *v0;
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v2 = v0[2];
  v3 = v0[3];
  String.hash(into:)();
  v4 = v0[4];
  v5 = v0[5];
  String.hash(into:)();
  v6 = v0[6];
  v7 = v0[7];
  String.hash(into:)();
  if (v0[9])
  {
    v8 = v0[8];
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    v9 = v0[10];
    if (v9)
    {
      goto LABEL_6;
    }

LABEL_13:
    Hasher._combine(_:)(0);
    if (v0[12])
    {
      goto LABEL_10;
    }

LABEL_14:
    Hasher._combine(_:)(0);
    if (v0[13])
    {
      goto LABEL_11;
    }

    goto LABEL_15;
  }

  Hasher._combine(_:)(0);
  v9 = v0[10];
  if (!v9)
  {
    goto LABEL_13;
  }

LABEL_6:
  Hasher._combine(_:)(1u);
  v10 = *(v9 + 16);
  Hasher._combine(_:)(v10);
  if (v10)
  {
    v11 = (v9 + 40);
    do
    {
      v12 = *(v11 - 1);
      v13 = *v11;

      String.hash(into:)();

      v11 += 2;
      --v10;
    }

    while (v10);
  }

  if (!v0[12])
  {
    goto LABEL_14;
  }

LABEL_10:
  v14 = v0[11];
  Hasher._combine(_:)(1u);
  String.hash(into:)();
  if (v0[13])
  {
LABEL_11:
    Hasher._combine(_:)(0);
    goto LABEL_16;
  }

LABEL_15:
  Hasher._combine(_:)(1u);
  String.hash(into:)();
LABEL_16:
  v15 = *(v0 + 105);
  if (v15 == 3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }
}

Swift::Int sub_1000874A8()
{
  Hasher.init(_seed:)();
  sub_10008728C();
  return Hasher._finalize()();
}

Swift::Int sub_1000874EC()
{
  Hasher.init(_seed:)();
  sub_10008728C();
  return Hasher._finalize()();
}

BOOL sub_10008752C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[5];
  v10[4] = a1[4];
  v11[0] = v2;
  *(v11 + 10) = *(a1 + 90);
  v3 = a1[1];
  v10[0] = *a1;
  v10[1] = v3;
  v4 = a1[3];
  v10[2] = a1[2];
  v10[3] = v4;
  v5 = a2[1];
  v12[0] = *a2;
  v12[1] = v5;
  v6 = a2[2];
  v7 = a2[3];
  *&v13[10] = *(a2 + 90);
  v8 = a2[5];
  v12[4] = a2[4];
  *v13 = v8;
  v12[2] = v6;
  v12[3] = v7;
  return sub_100088198(v10, v12);
}

uint64_t sub_100087598(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x6D617053746F6ELL;
  if (v2 != 1)
  {
    v4 = 1852989815;
    v3 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1835102323;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE700000000000000;
  v8 = 0x6D617053746F6ELL;
  if (*a2 != 1)
  {
    v8 = 1852989815;
    v7 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1835102323;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE400000000000000;
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

Swift::Int sub_100087684()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100087718()
{
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_100087798()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100087828@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100089984(*a1);
  *a2 = result;
  return result;
}

void sub_100087858(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x6D617053746F6ELL;
  if (v2 != 1)
  {
    v5 = 1852989815;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1835102323;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_100087A14()
{
  v1 = *(v0 + 16);

  sub_10000BC10(v0 + OBJC_IVAR____TtC13frauddefensed22SpamDecisioningManager_spamAsset, &qword_1000B9058, &qword_100093140);
  v2 = *(v0 + OBJC_IVAR____TtC13frauddefensed22SpamDecisioningManager____lazy_storage___uafAssetManager);

  v3 = *(v0 + OBJC_IVAR____TtC13frauddefensed22SpamDecisioningManager_senderLookUpDecisioningComponent);

  v4 = *(v0 + OBJC_IVAR____TtC13frauddefensed22SpamDecisioningManager_logicGraphDecisioningComponent);

  v5 = *(v0 + OBJC_IVAR____TtC13frauddefensed22SpamDecisioningManager_analyticsManager);

  v6 = *(v0 + OBJC_IVAR____TtC13frauddefensed22SpamDecisioningManager_signpostsManager);

  v7 = OBJC_IVAR____TtC13frauddefensed22SpamDecisioningManager_logger;
  v8 = type metadata accessor for Logger();
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  return v0;
}

uint64_t sub_100087AEC()
{
  sub_100087A14();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SpamDecisioningManager()
{
  result = qword_1000B8F50;
  if (!qword_1000B8F50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100087B98()
{
  sub_100087C84();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = type metadata accessor for Logger();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_100087C84()
{
  if (!qword_1000B8F60)
  {
    type metadata accessor for SpamDecisioningAsset(255);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1000B8F60);
    }
  }
}

uint64_t sub_100087CF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002074(&qword_1000B9058, &qword_100093140);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100087D64()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

void *sub_100087D9C(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_100087EF4(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v43 = type metadata accessor for NemesisError();
  v45 = *(v43 - 8);
  v8 = *(v45 + 64);
  v10 = __chkstk_darwin(v43, v9);
  v44 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v10, v12);
  v42 = &v36 - v14;
  v15 = a4 + 56;
  v16 = -1 << *(a4 + 32);
  if (-v16 < 64)
  {
    v17 = ~(-1 << -v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v34 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v15;
    *(a1 + 16) = ~v16;
    *(a1 + 24) = v34;
    *(a1 + 32) = v18;
    return a3;
  }

  if (!a3)
  {
    v34 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v36 = -1 << *(a4 + 32);
    v37 = a1;
    result = 0;
    v19 = 0;
    v20 = (63 - v16) >> 6;
    v38 = v45 + 32;
    v39 = v45 + 16;
    a1 = 1;
    v40 = a4 + 56;
    v41 = a3;
    v21 = v42;
    while (v18)
    {
      v47 = a2;
LABEL_15:
      v24 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v46 = v19;
      v25 = a4;
      v26 = *(a4 + 48);
      v27 = v44;
      v28 = v45;
      v29 = *(v45 + 72);
      v30 = v43;
      (*(v45 + 16))(v44, v26 + v29 * (v24 | (v19 << 6)), v43);
      v31 = *(v28 + 32);
      v31(v21, v27, v30);
      v32 = v47;
      v31(v47, v21, v30);
      a3 = v41;
      if (a1 == v41)
      {
        v16 = v36;
        a1 = v37;
        a4 = v25;
        v34 = v46;
        v15 = v40;
        goto LABEL_25;
      }

      a2 = &v32[v29];
      result = a1;
      v33 = __OFADD__(a1++, 1);
      a4 = v25;
      v19 = v46;
      v15 = v40;
      if (v33)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v22 = v19;
    while (1)
    {
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v23 >= v20)
      {
        break;
      }

      v18 = *(v15 + 8 * v23);
      ++v22;
      if (v18)
      {
        v47 = a2;
        v19 = v23;
        goto LABEL_15;
      }
    }

    v18 = 0;
    if (v20 <= v19 + 1)
    {
      v35 = v19 + 1;
    }

    else
    {
      v35 = v20;
    }

    v34 = v35 - 1;
    a3 = result;
    v16 = v36;
    a1 = v37;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

BOOL sub_100088198(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  v5 = *(a2 + 8);
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = *a1;
    v7 = *a1 == *a2 && v4 == v5;
    if (!v7 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v8 = a1[2] == *(a2 + 16) && a1[3] == *(a2 + 24);
  if (!v8 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (a1[4] != *(a2 + 32) || a1[5] != *(a2 + 40)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (a1[6] != *(a2 + 48) || a1[7] != *(a2 + 56)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v9 = a1[9];
  v10 = *(a2 + 72);
  if (v9)
  {
    if (!v10 || (a1[8] != *(a2 + 64) || v9 != v10) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  v11 = a1[10];
  v12 = *(a2 + 80);
  if (v11)
  {
    if (!v12 || (sub_10002FBE4(v11, v12) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v12)
  {
    return 0;
  }

  v13 = a1[12];
  v14 = *(a2 + 96);
  if (v13)
  {
    if (!v14 || (a1[11] != *(a2 + 88) || v13 != v14) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v14)
  {
    return 0;
  }

  v15 = *(a2 + 104);
  if (a1[13])
  {
    if ((*(a2 + 104) & 1) == 0)
    {
      return 0;
    }
  }

  else if (*(a2 + 104))
  {
    return 0;
  }

  v16 = *(a1 + 105);
  v17 = *(a2 + 105);
  if (v16 == 3)
  {
    return v17 == 3;
  }

  if (v17 == 3)
  {
    return 0;
  }

  v19 = 0x6C617669727261;
  if (*(a1 + 105))
  {
    if (v16 == 1)
    {
      v20 = 0xE400000000000000;
      v21 = 1684104562;
    }

    else
    {
      v20 = 0xE700000000000000;
      v21 = 0x646579616C6564;
    }
  }

  else
  {
    v20 = 0xE700000000000000;
    v21 = 0x6C617669727261;
  }

  if (v17)
  {
    if (v17 == 1)
    {
      v22 = 0xE400000000000000;
      v19 = 1684104562;
    }

    else
    {
      v22 = 0xE700000000000000;
      v19 = 0x646579616C6564;
    }
  }

  else
  {
    v22 = 0xE700000000000000;
  }

  if (v21 == v19 && v20 == v22)
  {
  }

  else
  {
    v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v23 & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_100088414()
{
  if (qword_1000B6658 != -1)
  {
    swift_once();
  }

  if (!qword_1000B7C78)
  {
    goto LABEL_10;
  }

  v0 = qword_1000B7C78;
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 BOOLForKey:v1];

  if (v2)
  {
    v3 = 0;
    v4 = 0;
LABEL_11:
    v8 = 1;
    return v3 | v4 | v8;
  }

  v5 = v0;
  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 BOOLForKey:v6];

  if ((v7 & 1) == 0)
  {
    v9 = v5;
    v10 = String._bridgeToObjectiveC()();
    v11 = [v9 BOOLForKey:v10];

    if (v11)
    {
      v8 = 0;
      v3 = 0;
      v4 = 0x10000;
      return v3 | v4 | v8;
    }

LABEL_10:
    v4 = 0x10000;
    v3 = 256;
    goto LABEL_11;
  }

  v8 = 0;
  v4 = 0;
  v3 = 256;
  return v3 | v4 | v8;
}

uint64_t sub_1000885A4()
{
  v1 = *(v0 + 56);
  if (v1)
  {
    if (v1 == 1)
    {
      goto LABEL_6;
    }

    v2 = *(v0 + 72);
  }

  v3 = *(v0 + 112);
  if (v3 >> 8 <= 0xFE)
  {
    sub_10004D68C(*(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), v3, BYTE1(v3) & 1);
  }

LABEL_6:

  return _swift_deallocObject(v0, 129, 7);
}

uint64_t sub_100088610(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v11 = v2[6];
  v10 = v2[7];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_100011E6C;

  return sub_100084690(a1, a2, v6, v7, v8, v9, v11, v10);
}

uint64_t sub_1000887CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100088834(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000888A0(uint64_t a1)
{
  v3 = v2;
  v4 = *(type metadata accessor for Logger() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(type metadata accessor for SpamDecisioningAsset(0) - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 113) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF8;
  v21 = *(v1 + 24);
  v22 = *(v1 + 16);
  v14 = *(v1 + v10);
  v15 = *(v1 + v11);
  v16 = *(v1 + v12);
  v17 = *(v1 + v13);
  v18 = *(v1 + ((v13 + 15) & 0xFFFFFFFFFFFFFFF8));
  v19 = swift_task_alloc();
  *(v3 + 16) = v19;
  *v19 = v3;
  v19[1] = sub_100011E6C;

  return sub_1000859BC(a1, v22, v21, v1 + v5, v1 + v8, v1 + v9, v14, v15);
}

uint64_t sub_100088A7C()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for SpamDecisioningAsset(0);
  v7 = *(*(v6 - 1) + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(*(v6 - 1) + 64);
  v10 = *(v0 + 16);
  swift_unknownObjectRelease();
  v43 = *(v2 + 8);
  v44 = v1;
  v43(v0 + v4, v1);
  v11 = v0 + v8;
  v12 = type metadata accessor for UAFAssetManager.AssetInfo(0);
  if (!(*(*(v12 - 8) + 48))(v0 + v8, 1, v12))
  {
    v13 = *(v11 + 8);

    v14 = *(v12 + 20);
    v15 = type metadata accessor for URL();
    (*(*(v15 - 8) + 8))(v11 + v14, v15);
    v16 = *(v11 + *(v12 + 24) + 8);
  }

  v17 = (v9 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 113) & 0xFFFFFFFFFFFFFFF8;
  v39 = (v18 + 15) & 0xFFFFFFFFFFFFFFF8;
  v40 = (v39 + 15) & 0xFFFFFFFFFFFFFFF8;
  v41 = (v40 + 15) & 0xFFFFFFFFFFFFFFF8;
  v42 = v3 | v7;
  v19 = v6[5];
  v20 = type metadata accessor for LogicGraphAsset();
  v21 = *(*(v20 - 8) + 8);
  v21(v11 + v19, v20);
  v21(v11 + v6[6], v20);
  v22 = *(v11 + v6[7]);

  v23 = *(v11 + v6[8]);

  v24 = *(v11 + v6[9]);

  v43(v11 + v6[10], v44);
  v25 = *(v0 + v17 + 8);

  v26 = *(v0 + v17 + 24);

  v27 = *(v0 + v17 + 40);

  v28 = *(v0 + v17 + 56);

  v29 = *(v0 + v17 + 72);

  v30 = *(v0 + v17 + 80);

  v31 = *(v0 + v17 + 96);

  v32 = *(v0 + v18);

  v33 = *(v0 + v39);

  v34 = *(v0 + v40);

  v35 = *(v0 + v41);

  v36 = (v41 + 15) & 0xFFFFFFFFFFFFFFF8;
  v37 = *(v0 + v36);

  return _swift_deallocObject(v0, v36 + 8, v42 | 7);
}

uint64_t sub_100088DAC(uint64_t a1)
{
  v3 = v2;
  v4 = *(type metadata accessor for Logger() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(type metadata accessor for SpamDecisioningAsset(0) - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 113) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF8;
  v21 = *(v1 + 24);
  v22 = *(v1 + 16);
  v14 = *(v1 + v10);
  v15 = *(v1 + v11);
  v16 = *(v1 + v12);
  v17 = *(v1 + v13);
  v18 = *(v1 + ((v13 + 15) & 0xFFFFFFFFFFFFFFF8));
  v19 = swift_task_alloc();
  *(v3 + 16) = v19;
  *v19 = v3;
  v19[1] = sub_100011E6C;

  return sub_100084EF4(a1, v22, v21, v1 + v5, v1 + v8, v1 + v9, v14, v15);
}

unint64_t sub_100088F88(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1000AE2A8, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100088FD4(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 18))
  {
    v6 = 0x10000;
  }

  else
  {
    v6 = 0;
  }

  if (*(v2 + 17))
  {
    v7 = 256;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7 | *(v2 + 16);
  v10 = *(v2 + 24);
  v9 = *(v2 + 32);
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_100002A54;

  return sub_100082CC8(a1, a2, v8 | v6, v10, v9);
}

uint64_t sub_1000890C0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100011E6C;

  return sub_100083A30(a1, v4, v5, v6);
}

uint64_t sub_100089174()
{
  v1 = type metadata accessor for SpamDecisioningAsset(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = v0 + v3;
  v7 = type metadata accessor for UAFAssetManager.AssetInfo(0);
  if (!(*(*(v7 - 8) + 48))(v0 + v3, 1, v7))
  {
    v8 = *(v6 + 8);

    v9 = *(v7 + 20);
    v10 = type metadata accessor for URL();
    (*(*(v10 - 8) + 8))(v6 + v9, v10);
    v11 = *(v6 + *(v7 + 24) + 8);
  }

  v12 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = v1[5];
  v14 = type metadata accessor for LogicGraphAsset();
  v15 = *(*(v14 - 8) + 8);
  v15(v6 + v13, v14);
  v15(v6 + v1[6], v14);
  v16 = *(v6 + v1[7]);

  v17 = *(v6 + v1[8]);

  v18 = *(v6 + v1[9]);

  v19 = v1[10];
  v20 = type metadata accessor for Logger();
  (*(*(v20 - 8) + 8))(v6 + v19, v20);
  v21 = *(v0 + v12);

  return _swift_deallocObject(v0, v12 + 8, v2 | 7);
}

uint64_t sub_100089398(uint64_t a1)
{
  v4 = *(type metadata accessor for SpamDecisioningAsset(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100011E6C;

  return sub_1000836B8(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1000894B8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100011E6C;

  return sub_1000835EC(a1, v4, v5, v6);
}

uint64_t sub_10008956C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

__n128 sub_1000895DC(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 90) = *(a2 + 90);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_100089608(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 106))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100089650(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 106) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 106) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000896C0()
{
  result = qword_1000B9088;
  if (!qword_1000B9088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B9088);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for SpamDecisioningManager.SpamDecisioningComponents(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for SpamDecisioningManager.SpamDecisioningComponents(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }
  }

  v4 = *a1;
  v5 = v4 >= 2;
  v6 = (v4 + 2147483646) & 0x7FFFFFFF;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for SpamDecisioningManager.SpamDecisioningComponents(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *result = a2 + 1;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

unint64_t sub_100089880()
{
  result = qword_1000B9090;
  if (!qword_1000B9090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B9090);
  }

  return result;
}

unint64_t sub_1000898D8()
{
  result = qword_1000B9098;
  if (!qword_1000B9098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B9098);
  }

  return result;
}

unint64_t sub_100089930()
{
  result = qword_1000B90A0;
  if (!qword_1000B90A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B90A0);
  }

  return result;
}

unint64_t sub_100089984(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1000AE4F0, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000899E0(uint64_t a1)
{
  *(v2 + 328) = a1;
  *(v2 + 336) = v1;

  return _swift_task_switch(sub_100089A70, v1, 0);
}

uint64_t sub_100089A70()
{
  v1 = *(v0 + 328);
  v2 = objc_opt_self();
  *(v0 + 344) = v2;
  v3 = [v2 sharedScheduler];
  v4 = v1[3];
  v5 = v1[4];
  sub_1000111EC(v1, v4);
  (*(v5 + 8))(v4, v5);
  v6 = String._bridgeToObjectiveC()();

  v7 = [v3 taskRequestForIdentifier:v6];

  if (v7)
  {
    v8 = *(v0 + 328);
    v9 = *(v0 + 336);

    v10 = static os_log_type_t.debug.getter();
    _StringGuts.grow(_:)(46);

    v12 = v1[3];
    v11 = v1[4];
    sub_1000111EC(v8, v12);
    v13._countAndFlagsBits = (*(v11 + 8))(v12, v11);
    String.append(_:)(v13);

    v14._countAndFlagsBits = 32032;
    v14._object = 0xE200000000000000;
    String.append(_:)(v14);
    sub_10005E11C(v10, 0xD00000000000002ALL, 0x800000010009AFE0, 0xD00000000000005ELL, 0x800000010009AE30, 71);

    v15 = *(v0 + 8);
LABEL_3:

    return v15();
  }

  sub_100043EA4(*(v0 + 328), v0 + 56);
  sub_100002074(&qword_1000B9178, &qword_100093718);
  sub_100002074(&qword_1000B9180, &qword_100093720);
  if (swift_dynamicCast())
  {
    sub_100011DD4((v0 + 96), v0 + 16);
    v17 = *(v0 + 40);
    v18 = *(v0 + 48);
    sub_1000111EC((v0 + 16), v17);
    (*(*(v18 + 8) + 8))(v17);
    v19 = objc_allocWithZone(BGRepeatingSystemTaskRequest);
    v20 = String._bridgeToObjectiveC()();

    v21 = [v19 initWithIdentifier:v20];
    *(v0 + 352) = v21;

    v22 = v21;
    [v22 setPriority:2];
    [v22 setRequiresNetworkConnectivity:1];
    [v22 setRequiresExternalPower:1];
    v23 = *sub_1000111EC((v0 + 16), *(v0 + 40));
    v24 = swift_task_alloc();
    *(v0 + 360) = v24;
    *v24 = v0;
    v24[1] = sub_10008A16C;

    return sub_10000C474();
  }

  else
  {
    v25 = *(v0 + 328);
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
    *(v0 + 128) = 0;
    sub_10000BC10(v0 + 96, &qword_1000B9188, &qword_100093728);
    sub_100043EA4(v25, v0 + 176);
    sub_100002074(&qword_1000B9190, &qword_100093730);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v38 = *(v0 + 336);
      *(v0 + 216) = 0u;
      *(v0 + 232) = 0u;
      *(v0 + 248) = 0;
      sub_10000BC10(v0 + 216, &qword_1000B9198, &qword_100093738);
      v39 = static os_log_type_t.error.getter();
      sub_10005E11C(v39, 0xD000000000000036, 0x800000010009AF50, 0xD00000000000005ELL, 0x800000010009AE30, 98);
      sub_10000B6B0();
      swift_allocError();
      *v40 = 0xD000000000000036;
      *(v40 + 8) = 0x800000010009AF50;
      *(v40 + 16) = 2;
      swift_willThrow();
      v15 = *(v0 + 8);
      goto LABEL_3;
    }

    v26 = *(v0 + 328);
    sub_100011DD4((v0 + 216), v0 + 136);
    v28 = v1[3];
    v27 = v1[4];
    sub_1000111EC(v26, v28);
    (*(v27 + 8))(v28, v27);
    v29 = objc_allocWithZone(BGNonRepeatingSystemTaskRequest);
    v30 = String._bridgeToObjectiveC()();

    v31 = [v29 initWithIdentifier:v30];
    *(v0 + 392) = v31;

    v32 = v31;
    [v32 setPriority:2];
    [v32 setRequiresNetworkConnectivity:1];
    [v32 setRequiresExternalPower:1];
    v33 = *(v0 + 160);
    v34 = *(v0 + 168);
    sub_1000111EC((v0 + 136), v33);
    v35 = *(v34 + 8);
    v41 = (*(v35 + 16) + **(v35 + 16));
    v36 = *(*(v35 + 16) + 4);
    v37 = swift_task_alloc();
    *(v0 + 400) = v37;
    *v37 = v0;
    v37[1] = sub_10008A914;

    return v41(v33, v35);
  }
}

uint64_t sub_10008A16C(double a1)
{
  v2 = *(*v1 + 360);
  v3 = *(*v1 + 336);
  v5 = *v1;
  *(*v1 + 368) = a1;

  return _swift_task_switch(sub_10008A2AC, v3, 0);
}

uint64_t sub_10008A2AC()
{
  v1 = *(v0 + 328);
  [*(v0 + 352) setInterval:*(v0 + 368)];
  v2 = v1[3];
  v3 = v1[4];
  sub_1000111EC(v1, v2);
  v7 = (*(v3 + 16) + **(v3 + 16));
  v4 = *(*(v3 + 16) + 4);
  v5 = swift_task_alloc();
  *(v0 + 376) = v5;
  *v5 = v0;
  v5[1] = sub_10008A410;

  return v7(v2, v3);
}

uint64_t sub_10008A410(double a1)
{
  v2 = *(*v1 + 376);
  v3 = *(*v1 + 336);
  v5 = *v1;
  *(*v1 + 384) = a1;

  return _swift_task_switch(sub_10008A550, v3, 0);
}

uint64_t sub_10008A550()
{
  v1 = *(v0 + 352);
  [v1 setRandomInitialDelay:*(v0 + 384)];
  [v1 setMinDurationBetweenInstances:3600.0];

  v2 = v1;
  sub_100003558((v0 + 16));
  v3 = *(v0 + 352);
  v4 = [*(v0 + 344) sharedScheduler];
  *(v0 + 304) = 0;
  v5 = [v4 submitTaskRequest:v3 error:v0 + 304];

  v6 = *(v0 + 304);
  v7 = *(v0 + 336);
  if (v5)
  {
    v8 = v6;
    v9 = static os_log_type_t.debug.getter();
    _StringGuts.grow(_:)(42);

    v10 = [v3 description];
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    v14._countAndFlagsBits = v11;
    v14._object = v13;
    String.append(_:)(v14);

    v15._countAndFlagsBits = 32032;
    v15._object = 0xE200000000000000;
    String.append(_:)(v15);
    sub_10005E11C(v9, 0xD000000000000026, 0x800000010009AFB0, 0xD00000000000005ELL, 0x800000010009AE30, 104);
  }

  else
  {
    v17 = v6;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    LOBYTE(v17) = static os_log_type_t.error.getter();
    _StringGuts.grow(_:)(35);

    swift_getErrorValue();
    v19 = *(v0 + 256);
    v18 = *(v0 + 264);
    v20 = *(v0 + 272);
    v21._countAndFlagsBits = Error.localizedDescription.getter();
    String.append(_:)(v21);

    v22._countAndFlagsBits = 32032;
    v22._object = 0xE200000000000000;
    String.append(_:)(v22);
    sub_10005E11C(v17, 0xD00000000000001FLL, 0x800000010009AF90, 0xD00000000000005ELL, 0x800000010009AE30, 106);

    _StringGuts.grow(_:)(35);

    swift_getErrorValue();
    v24 = *(v0 + 280);
    v23 = *(v0 + 288);
    v25 = *(v0 + 296);
    v26._countAndFlagsBits = Error.localizedDescription.getter();
    String.append(_:)(v26);

    v27._countAndFlagsBits = 32032;
    v27._object = 0xE200000000000000;
    String.append(_:)(v27);
    sub_10000B6B0();
    swift_allocError();
    *v28 = 0xD00000000000001FLL;
    *(v28 + 8) = 0x800000010009AF90;
    *(v28 + 16) = 2;
    swift_willThrow();
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_10008A914(double a1)
{
  v2 = *(*v1 + 400);
  v3 = *(*v1 + 336);
  v5 = *v1;
  *(*v1 + 408) = a1;

  return _swift_task_switch(sub_10008AA54, v3, 0);
}

uint64_t sub_10008AA54()
{
  v1 = *(v0 + 408);
  if (v1 < 0.0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
  }

  if ((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_7;
  }

  *(v0 + 416) = sub_10008C9CC(0x20000000000001uLL);
  v2 = *sub_1000111EC((v0 + 136), *(v0 + 160));
  v3 = swift_task_alloc();
  *(v0 + 424) = v3;
  *v3 = v0;
  v3[1] = sub_10008AB54;

  return sub_1000664B0();
}

uint64_t sub_10008AB54(double a1)
{
  v2 = *(*v1 + 424);
  v3 = *(*v1 + 336);
  v5 = *v1;
  *(*v1 + 432) = a1;

  return _swift_task_switch(sub_10008AC94, v3, 0);
}

uint64_t sub_10008AC94()
{
  v1 = *(v0 + 416);
  v2 = *(v0 + 408);
  v3 = *(v0 + 392);
  v4 = v2 * vcvtd_n_f64_u64(v1, 0x35uLL) + 0.0;
  if (v1 != 0x20000000000000)
  {
    v2 = v4;
  }

  [*(v0 + 392) setScheduleAfter:*(v0 + 432) + v2];

  v5 = v3;
  sub_100003558((v0 + 136));
  v6 = *(v0 + 392);
  v7 = [*(v0 + 344) sharedScheduler];
  *(v0 + 304) = 0;
  v8 = [v7 submitTaskRequest:v6 error:v0 + 304];

  v9 = *(v0 + 304);
  v10 = *(v0 + 336);
  if (v8)
  {
    v11 = v9;
    v12 = static os_log_type_t.debug.getter();
    _StringGuts.grow(_:)(42);

    v13 = [v6 description];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v17._countAndFlagsBits = v14;
    v17._object = v16;
    String.append(_:)(v17);

    v18._countAndFlagsBits = 32032;
    v18._object = 0xE200000000000000;
    String.append(_:)(v18);
    sub_10005E11C(v12, 0xD000000000000026, 0x800000010009AFB0, 0xD00000000000005ELL, 0x800000010009AE30, 104);
  }

  else
  {
    v20 = v9;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    LOBYTE(v20) = static os_log_type_t.error.getter();
    _StringGuts.grow(_:)(35);

    swift_getErrorValue();
    v22 = *(v0 + 256);
    v21 = *(v0 + 264);
    v23 = *(v0 + 272);
    v24._countAndFlagsBits = Error.localizedDescription.getter();
    String.append(_:)(v24);

    v25._countAndFlagsBits = 32032;
    v25._object = 0xE200000000000000;
    String.append(_:)(v25);
    sub_10005E11C(v20, 0xD00000000000001FLL, 0x800000010009AF90, 0xD00000000000005ELL, 0x800000010009AE30, 106);

    _StringGuts.grow(_:)(35);

    swift_getErrorValue();
    v27 = *(v0 + 280);
    v26 = *(v0 + 288);
    v28 = *(v0 + 296);
    v29._countAndFlagsBits = Error.localizedDescription.getter();
    String.append(_:)(v29);

    v30._countAndFlagsBits = 32032;
    v30._object = 0xE200000000000000;
    String.append(_:)(v30);
    sub_10000B6B0();
    swift_allocError();
    *v31 = 0xD00000000000001FLL;
    *(v31 + 8) = 0x800000010009AF90;
    *(v31 + 16) = 2;
    swift_willThrow();
  }

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_10008B068(uint64_t a1)
{
  *(v2 + 104) = a1;
  *(v2 + 112) = v1;
  return _swift_task_switch(sub_10008B088, v1, 0);
}

uint64_t sub_10008B088()
{
  v1 = *(v0 + 104);
  v2 = v1[3];
  v3 = v1[4];
  sub_1000111EC(v1, v2);
  v4 = *(v3 + 24);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 120) = v6;
  *v6 = v0;
  v6[1] = sub_10008B1AC;

  return v8(v2, v3);
}

uint64_t sub_10008B1AC()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {
    v7 = *(v2 + 112);

    return _swift_task_switch(sub_10008B2F0, v7, 0);
  }
}

uint64_t sub_10008B600(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = (*(*(sub_100002074(&qword_1000B7580, &qword_10008EEC0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v8 = &v33 - v7;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v15 = *(v10 + 16);
    v34 = a3;
    v15(v13, Strong + OBJC_IVAR____TtC13frauddefensed25BackgroundActivityManager_logger, v9);

    v16 = static os_log_type_t.default.getter();
    *&aBlock = 0;
    *(&aBlock + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(57);
    v17._object = 0x800000010009AE90;
    v17._countAndFlagsBits = 0xD000000000000035;
    String.append(_:)(v17);
    v18 = [a1 identifier];
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    v22._countAndFlagsBits = v19;
    v22._object = v21;
    String.append(_:)(v22);

    v23._countAndFlagsBits = 32032;
    v23._object = 0xE200000000000000;
    String.append(_:)(v23);
    sub_10005E11C(v16, aBlock, *(&aBlock + 1), 0xD00000000000005ELL, 0x800000010009AE30, 120);
    a3 = v34;

    (*(v10 + 8))(v13, v9);
  }

  v24 = type metadata accessor for TaskPriority();
  (*(*(v24 - 8) + 56))(v8, 1, 1, v24);
  sub_100043EA4(a3, &aBlock);
  v25 = swift_allocObject();
  v25[2] = 0;
  v25[3] = 0;
  v25[4] = a2;
  v25[5] = a1;
  sub_100011DD4(&aBlock, (v25 + 6));

  v26 = a1;
  v27 = sub_1000024AC(0, 0, v8, &unk_100093700, v25);
  swift_beginAccess();
  v28 = swift_weakLoadStrong();
  v29 = swift_allocObject();
  v29[2] = v28;
  v29[3] = v26;
  v29[4] = v27;
  v38 = sub_10008C9C0;
  v39 = v29;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v36 = sub_100002874;
  v37 = &unk_1000B1818;
  v30 = _Block_copy(&aBlock);
  v31 = v26;

  [v31 setExpirationHandler:v30];
  _Block_release(v30);
}

uint64_t sub_10008B9E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[11] = a1;
  v6[12] = a4;
  return _swift_task_switch(sub_10008BA0C, 0, 0);
}

uint64_t sub_10008BA0C()
{
  if (qword_1000B66F8 != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v2 = v0[12];
  v3 = qword_1000B9488;
  v0[15] = qword_1000B9488;
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  sub_100043EA4(v1, (v0 + 2));

  return _swift_task_switch(sub_10008BAF8, v3, 0);
}

uint64_t sub_10008BAF8()
{
  v1 = v0[15];
  v2 = *(v1 + 120);
  if (v2 < 1)
  {
    *(v1 + 120) = v2 + 1;
    v6 = swift_task_alloc();
    v0[17] = v6;
    *v6 = v0;
    v6[1] = sub_10008BE28;
    v7 = v0[13];
    v8 = v0[11];

    return sub_10008C09C(v8, (v0 + 10), v7, (v0 + 2));
  }

  else
  {
    sub_10002CDB8();
    v3 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
    v4 = swift_task_alloc();
    v0[16] = v4;
    *v4 = v0;
    v4[1] = sub_10008BC60;
    v5 = v0[15];

    return withCheckedContinuation<A>(isolation:function:_:)();
  }
}

uint64_t sub_10008BC60()
{
  v1 = *(*v0 + 128);
  v2 = *(*v0 + 120);
  v4 = *v0;

  return _swift_task_switch(sub_10008BD70, v2, 0);
}

void sub_10008BD70()
{
  v2 = v0[15];
  v3 = *(v2 + 120);
  v4 = __OFADD__(v3, 1);
  v5 = v3 + 1;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 120) = v5;
    v6 = swift_task_alloc();
    v0[17] = v6;
    *v6 = v0;
    v6[1] = sub_10008BE28;
    v7 = v0[13];
    v8 = v0[11];

    sub_10008C09C(v8, (v0 + 10), v7, (v0 + 2));
  }
}

uint64_t sub_10008BE28()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *v1;
  *(*v1 + 144) = v0;

  v5 = *(v2 + 120);
  if (v0)
  {
    v6 = sub_10008BFC8;
  }

  else
  {
    v6 = sub_10008BF54;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10008BF54()
{
  sub_10006ACA8(v0[15]);
  sub_100003558(v0 + 2);
  swift_weakDestroy();
  v1 = v0[1];

  return v1();
}

uint64_t sub_10008BFC8()
{
  sub_10006ACA8(*(v0 + 120));

  return _swift_task_switch(sub_10008C030, 0, 0);
}

uint64_t sub_10008C030()
{
  sub_100003558(v0 + 2);
  swift_weakDestroy();
  v1 = v0[1];
  v2 = v0[18];

  return v1();
}

uint64_t sub_10008C09C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[5] = a2;
  v5 = type metadata accessor for Logger();
  v4[8] = v5;
  v6 = *(v5 - 8);
  v4[9] = v6;
  v7 = *(v6 + 64) + 15;
  v4[10] = swift_task_alloc();

  return _swift_task_switch(sub_10008C160, 0, 0);
}

uint64_t sub_10008C160()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = v0[9];
    v3 = v0[10];
    v5 = v0[8];
    v6 = v0[6];
    (*(v4 + 16))(v3, Strong + OBJC_IVAR____TtC13frauddefensed25BackgroundActivityManager_logger, v5);

    v7 = static os_log_type_t.default.getter();
    _StringGuts.grow(_:)(75);
    v8._object = 0x800000010009AF00;
    v8._countAndFlagsBits = 0xD000000000000047;
    String.append(_:)(v8);
    v9 = [v6 identifier];
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v13._countAndFlagsBits = v10;
    v13._object = v12;
    String.append(_:)(v13);

    v14._countAndFlagsBits = 32032;
    v14._object = 0xE200000000000000;
    String.append(_:)(v14);
    sub_10005E11C(v7, 0, 0xE000000000000000, 0xD00000000000005ELL, 0x800000010009AE30, 124);

    (*(v4 + 8))(v3, v5);
  }

  v15 = v0[7];
  v16 = v15[3];
  v17 = v15[4];
  sub_1000111EC(v15, v16);
  v18 = *(v17 + 32);
  v23 = (v18 + *v18);
  v19 = v18[1];
  v20 = swift_task_alloc();
  v0[11] = v20;
  *v20 = v0;
  v20[1] = sub_10008C3F4;
  v21 = v0[6];

  return v23(v21, v16, v17);
}

uint64_t sub_10008C3F4()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

void sub_10008C504(uint64_t a1, void *a2)
{
  if (a1)
  {
    v3 = static os_log_type_t.default.getter();
    _StringGuts.grow(_:)(46);

    v4 = [a2 identifier];
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    v8._countAndFlagsBits = v5;
    v8._object = v7;
    String.append(_:)(v8);

    v9._countAndFlagsBits = 32032;
    v9._object = 0xE200000000000000;
    String.append(_:)(v9);
    sub_10005E11C(v3, 0xD00000000000002ALL, 0x800000010009AED0, 0xD00000000000005ELL, 0x800000010009AE30, 130);
  }

  sub_100002074(&qword_1000B6CC0, &qword_100091740);

  Task.cancel()();
}

uint64_t sub_10008C660()
{
  v1 = OBJC_IVAR____TtC13frauddefensed25BackgroundActivityManager_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for BackgroundActivityManager()
{
  result = qword_1000B90D8;
  if (!qword_1000B90D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10008C72C()
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

uint64_t sub_10008C7C8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10008C800()
{
  v1 = *(v0 + 16);

  sub_100003558((v0 + 24));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10008C84C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10008C864()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  sub_100003558((v0 + 48));

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_10008C8B4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100002A54;

  return sub_10008B9E8(a1, v4, v5, v6, v7, (v1 + 6));
}

uint64_t sub_10008C978()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_10008C9CC(unint64_t result)
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

uint64_t sub_10008CA64()
{
  sub_10008CBF8(v0[2]);
  v1 = OBJC_IVAR____TtC13frauddefensed15LookUpOperation_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for LookUpOperation()
{
  result = qword_1000B91D0;
  if (!qword_1000B91D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10008CB5C()
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

uint64_t sub_10008CBF8(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_10008CC08()
{
  v1 = OBJC_IVAR____TtC13frauddefensed12KeyOperation_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for KeyOperation()
{
  result = qword_1000B9290;
  if (!qword_1000B9290)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

Swift::String __swiftcall Data.base64EncodedString(options:)(NSDataBase64EncodingOptions options)
{
  v1 = Data.base64EncodedString(options:)(options);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = String.lowercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t String.init(cString:)()
{
  return String.init(cString:)();
}

{
  return String.init(cString:)();
}

Swift::String_optional __swiftcall String.Iterator.next()()
{
  v0 = String.Iterator.next()();
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

uint64_t KeyedDecodingContainer.decodeIfPresent(_:forKey:)()
{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encodeIfPresent(_:forKey:)()
{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}