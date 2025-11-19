void sub_100EE920C()
{
  if (!qword_1016BF3F0)
  {
    type metadata accessor for UUID();
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_1016BF3F0);
    }
  }
}

unint64_t sub_100EE92B0()
{
  result = qword_1016BF448;
  if (!qword_1016BF448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BF448);
  }

  return result;
}

unint64_t sub_100EE9308()
{
  result = qword_1016BF450;
  if (!qword_1016BF450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BF450);
  }

  return result;
}

unint64_t sub_100EE9360()
{
  result = qword_1016BF458;
  if (!qword_1016BF458)
  {
    sub_1000BC580(&qword_1016BF460, qword_1013F02B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BF458);
  }

  return result;
}

unint64_t sub_100EE93C8()
{
  result = qword_1016BF468;
  if (!qword_1016BF468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BF468);
  }

  return result;
}

unint64_t sub_100EE9420()
{
  result = qword_1016BF470;
  if (!qword_1016BF470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BF470);
  }

  return result;
}

unint64_t sub_100EE9478()
{
  result = qword_1016BF478;
  if (!qword_1016BF478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BF478);
  }

  return result;
}

unint64_t sub_100EE94D0()
{
  result = qword_1016BF480;
  if (!qword_1016BF480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BF480);
  }

  return result;
}

unint64_t sub_100EE9528()
{
  result = qword_1016BF488;
  if (!qword_1016BF488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BF488);
  }

  return result;
}

uint64_t sub_100EE957C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x8000000101347C50 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656475746974616CLL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x64757469676E6F6CLL && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x737569646172 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x636E657265666572 && a2 == 0xEE00656D61724665 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6C61766F72707061 && a2 == 0xED00006574617453 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001013678E0 == a2)
  {

    return 9;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

unint64_t sub_100EE98D4()
{
  result = qword_1016BF490;
  if (!qword_1016BF490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BF490);
  }

  return result;
}

unint64_t sub_100EE9928()
{
  result = qword_1016BF498;
  if (!qword_1016BF498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BF498);
  }

  return result;
}

unint64_t sub_100EE997C()
{
  result = qword_1016BF4A0;
  if (!qword_1016BF4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BF4A0);
  }

  return result;
}

id sub_100EE99D4()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t sub_100EE9A6C(uint64_t a1)
{
  v2 = (v1 + *(a1 + 32));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

void sub_100EE9AB4(void *a1)
{
  v27 = a1;
  v2 = type metadata accessor for ServiceStateConfigurationLayer();
  v3 = *(*(v2 - 1) + 64);
  __chkstk_darwin(v2);
  v5 = (&v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  if (sub_100EEC0A4(2, 2, v11 & 1))
  {
    v12 = sub_100003518();
    v13 = SPSettingsServiceStateKey;
    [v12 setObject:v27 forKey:SPSettingsServiceStateKey];

    v14 = sub_100003518();
    v15 = [v14 stringForKey:v13];

    if (!v15)
    {
      if (qword_101694A88 != -1)
      {
        swift_once();
      }

      v15 = qword_10177B658;
    }

    v16 = sub_100EEA744();
    sub_100EEAC04(v5 + v2[6]);
    sub_100EEB5B4(v5 + v2[7]);
    v17 = sub_100EEB5E0();
    v19 = v18;
    sub_100EEB8F8(v5 + v2[9]);
    v20 = *(v1 + 48);
    v21 = *(v1 + 56);
    v22 = *(v1 + 32);
    v23 = String._bridgeToObjectiveC()();
    LOBYTE(v21) = [v22 BOOLForKey:v23];

    *v5 = v15;
    v5[1] = v16;
    v24 = v5 + v2[8];
    *v24 = v17;
    v24[8] = v19 & 1;
    *(v5 + v2[10]) = v21;
    sub_100EED430(v5, v1);

    sub_100EED7D4(v5);
  }

  else
  {
    v25 = v27;
  }
}

void *sub_100EE9D44()
{
  v1 = v0;
  v2 = type metadata accessor for OS_dispatch_queue.Attributes();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v4 = type metadata accessor for DispatchQoS();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v0[2] = &_swiftEmptyArrayStorage;
  v32[1] = sub_1000BC488();
  (*(v7 + 104))(v10, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v6);
  static DispatchQoS.unspecified.getter();
  v33 = &_swiftEmptyArrayStorage;
  sub_100EED938(&qword_10169BB60, 255, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_1000041A4(&qword_10169BB70, &unk_101695580, &qword_101385D90);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v0[3] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v0[4] = 0;
  v0[5] = 0;
  v0[6] = 0xD000000000000014;
  v0[7] = 0x8000000101364BF0;
  v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v34 = v11;
  v12._countAndFlagsBits = 45;
  v12._object = 0xE100000000000000;
  String.append(_:)(v12);
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v14 = result;
    v15 = MobileGestalt_copy_uniqueDeviceID_obj();

    if (v15)
    {
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;
    }

    else
    {
      v16 = 0;
      v18 = 0xE000000000000000;
    }

    v19._countAndFlagsBits = v16;
    v19._object = v18;
    String.append(_:)(v19);

    v20 = v33;
    v21 = v34;
    sub_1000BC4D4(&unk_1016B1550, &unk_10139ADF0);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1013917A0;
    *(v22 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v22 + 40) = v23;
    *(v22 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v22 + 56) = v24;
    *(v22 + 64) = v20;
    *(v22 + 72) = v21;
    *(v22 + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v22 + 88) = v25;
    *(v22 + 96) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v22 + 104) = v26;
    *(v22 + 112) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v22 + 120) = v27;
    sub_100003518();
    objc_allocWithZone(type metadata accessor for UserDefaultsObserver());

    v28 = UserDefaultsObserver.init(keys:defaults:notificationBlock:)();
    v29 = v1[5];
    v1[5] = v28;

    v30 = v1[5];
    if (v30)
    {
      v31 = v30;
      dispatch thunk of UserDefaultsObserver.start()();
    }

    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100EEA16C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for ServiceStateConfigurationLayer();
  v5 = *(*(v4 - 1) + 64);
  __chkstk_darwin(v4);
  v7 = (&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_100003518();
  v9 = [v8 stringForKey:SPSettingsServiceStateKey];

  if (!v9)
  {
    if (qword_101694A88 != -1)
    {
      swift_once();
    }

    v9 = qword_10177B658;
  }

  v10 = sub_100EEA744();
  sub_100EEAC04(v7 + v4[6]);
  sub_100EEB5B4(v7 + v4[7]);
  v11 = sub_100EEB5E0();
  v13 = v12;
  sub_100EEB8F8(v7 + v4[9]);
  v14 = sub_100003518();
  v15 = *(a3 + 48);
  v16 = *(a3 + 56);
  v17 = String._bridgeToObjectiveC()();
  v18 = [v14 BOOLForKey:v17];

  *v7 = v9;
  v7[1] = v10;
  v19 = v7 + v4[8];
  *v19 = v11;
  v19[8] = v13 & 1;
  *(v7 + v4[10]) = v18;
  sub_100EED430(v7, a3);
  return sub_100EED7D4(v7);
}

uint64_t sub_100EEA310()
{
  v1 = type metadata accessor for ServiceStateConfigurationLayer();
  v2 = *(*(v1 - 1) + 64);
  __chkstk_darwin(v1);
  v4 = (&v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_101694A88 != -1)
  {
    swift_once();
  }

  v5 = qword_10177B658;
  sub_100EE9AB4(v5);
  v6 = sub_100003518();
  [v6 removeObjectForKey:SPBeaconZoneCreationDateKey];

  [*(v0 + 32) removeObjectForKey:SPBeaconZoneCreationErrorCodeKey];
  [*(v0 + 32) removeObjectForKey:SPLastKeyRollDateKey];
  static os_log_type_t.default.getter();
  if (qword_101695088 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  v7 = sub_100003518();
  v8 = [v7 stringForKey:SPSettingsServiceStateKey];

  if (!v8)
  {
    v8 = v5;
  }

  v9 = sub_100EEA744();
  sub_100EEAC04(v4 + v1[6]);
  sub_100EEB5B4(v4 + v1[7]);
  v10 = sub_100EEB5E0();
  v12 = v11;
  sub_100EEB8F8(v4 + v1[9]);
  v13 = *(v0 + 48);
  v14 = *(v0 + 56);
  v15 = *(v0 + 32);
  v16 = String._bridgeToObjectiveC()();
  LOBYTE(v14) = [v15 BOOLForKey:v16];

  *v4 = v8;
  v4[1] = v9;
  v17 = v4 + v1[8];
  *v17 = v10;
  v17[8] = v12 & 1;
  *(v4 + v1[10]) = v14;
  sub_100EED430(v4, v0);
  return sub_100EED7D4(v4);
}

uint64_t sub_100EEA588(char a1, char a2)
{
  v5 = type metadata accessor for ServiceStateConfigurationLayer();
  v6 = *(*(v5 - 1) + 64);
  __chkstk_darwin(v5);
  v8 = (&v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = sub_100EEC0A4(a1 & 1, a2 & 1, 2);
  if (result)
  {
    v10 = sub_100003518();
    v11 = [v10 stringForKey:SPSettingsServiceStateKey];

    if (!v11)
    {
      if (qword_101694A88 != -1)
      {
        swift_once();
      }

      v11 = qword_10177B658;
    }

    v12 = sub_100EEA744();
    sub_100EEAC04(v8 + v5[6]);
    sub_100EEB5B4(v8 + v5[7]);
    v13 = sub_100EEB5E0();
    v15 = v14;
    sub_100EEB8F8(v8 + v5[9]);
    v16 = sub_100003518();
    v17 = *(v2 + 48);
    v18 = *(v2 + 56);
    v19 = String._bridgeToObjectiveC()();
    v20 = [v16 BOOLForKey:v19];

    *v8 = v11;
    v8[1] = v12;
    v21 = v8 + v5[8];
    *v21 = v13;
    v21[8] = v15 & 1;
    *(v8 + v5[10]) = v20;
    sub_100EED430(v8, v2);
    return sub_100EED7D4(v8);
  }

  return result;
}

uint64_t sub_100EEA744()
{
  v0 = sub_100003518();
  v1 = [v0 arrayForKey:SPSettingsServiceDisabledReasonsKey];

  if (!v1)
  {
    return 0;
  }

  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = sub_100514514(v2);

  if (!v3)
  {
    return 0;
  }

  v5 = v3[2];
  if (!v5)
  {
    v8 = &_swiftEmptyArrayStorage;
LABEL_14:

    return v8;
  }

  v6 = 0;
  v7 = (v3 + 5);
  v8 = &_swiftEmptyArrayStorage;
  while (v6 < v3[2])
  {
    v9 = *(v7 - 1);
    v10 = *v7;

    v11 = String._bridgeToObjectiveC()();

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100A5C078(0, v8[2] + 1, 1, v8);
      v8 = result;
    }

    v13 = v8[2];
    v12 = v8[3];
    if (v13 >= v12 >> 1)
    {
      result = sub_100A5C078((v12 > 1), v13 + 1, 1, v8);
      v8 = result;
    }

    ++v6;
    v8[2] = v13 + 1;
    v8[v13 + 4] = v11;
    v7 += 2;
    if (v5 == v6)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

void sub_100EEA8C4(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 16);
    if (v2)
    {
      sub_101123BB8(0, v2, 0);
      v3 = 32;
      v4 = _swiftEmptyArrayStorage;
      do
      {
        v5 = *(a1 + v3);
        v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v15 = v4;
        v9 = v4[2];
        v8 = v4[3];
        if (v9 >= v8 >> 1)
        {
          v11 = v6;
          v12 = v7;
          sub_101123BB8((v8 > 1), v9 + 1, 1);
          v7 = v12;
          v6 = v11;
          v4 = v15;
        }

        v4[2] = v9 + 1;
        v10 = &v4[2 * v9];
        v10[4] = v6;
        v10[5] = v7;
        v3 += 8;
        --v2;
      }

      while (v2);
    }
  }

  v13 = sub_100003518();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v13 setObject:isa forKey:SPSettingsServiceDisabledReasonsKey];
}

uint64_t sub_100EEAA1C(char a1)
{
  v3 = type metadata accessor for ServiceStateConfigurationLayer();
  v4 = *(*(v3 - 1) + 64);
  __chkstk_darwin(v3);
  v6 = (&v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_100003518();
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = String._bridgeToObjectiveC()();
  [v7 setBool:a1 & 1 forKey:v10];

  v11 = sub_100003518();
  v12 = [v11 stringForKey:SPSettingsServiceStateKey];

  if (!v12)
  {
    if (qword_101694A88 != -1)
    {
      swift_once();
    }

    v12 = qword_10177B658;
  }

  v13 = sub_100EEA744();
  sub_100EEAC04(v6 + v3[6]);
  sub_100EEB5B4(v6 + v3[7]);
  v14 = sub_100EEB5E0();
  v16 = v15;
  sub_100EEB8F8(v6 + v3[9]);
  v17 = *(v1 + 32);
  v18 = String._bridgeToObjectiveC()();
  v19 = [v17 BOOLForKey:v18];

  *v6 = v12;
  v6[1] = v13;
  v20 = v6 + v3[8];
  *v20 = v14;
  v20[8] = v16 & 1;
  *(v6 + v3[10]) = v19;
  sub_100EED430(v6, v1);
  return sub_100EED7D4(v6);
}

id sub_100EEAC04@<X0>(uint64_t a1@<X8>)
{
  v2 = (*(*(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v4 = v20 - v3;
  v20[0] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20[1] = v5;
  v6._countAndFlagsBits = 45;
  v6._object = 0xE100000000000000;
  String.append(_:)(v6);
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v8 = result;
    v9 = MobileGestalt_copy_uniqueDeviceID_obj();

    if (v9)
    {
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;
    }

    else
    {
      v10 = 0;
      v12 = 0xE000000000000000;
    }

    v13._countAndFlagsBits = v10;
    v13._object = v12;
    String.append(_:)(v13);

    v14 = sub_100003518();
    v15 = String._bridgeToObjectiveC()();

    v16 = [v14 stringForKey:v15];

    if (!v16)
    {
      goto LABEL_8;
    }

    static String._unconditionallyBridgeFromObjectiveC(_:)();

    UUID.init(uuidString:)();

    v17 = type metadata accessor for UUID();
    v18 = *(v17 - 8);
    if ((*(v18 + 48))(v4, 1, v17) == 1)
    {
      sub_10000B3A8(v4, &qword_1016980D0, &unk_10138F3B0);
LABEL_8:
      v19 = type metadata accessor for UUID();
      return (*(*(v19 - 8) + 56))(a1, 1, 1, v19);
    }

    (*(v18 + 32))(a1, v4, v17);
    return (*(v18 + 56))(a1, 0, 1, v17);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100EEAE98(uint64_t a1)
{
  v60 = type metadata accessor for ServiceStateConfigurationLayer();
  v3 = *(*(v60 - 8) + 64);
  __chkstk_darwin(v60);
  v61 = &v56[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v58 = &v56[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_1000BC4D4(&qword_1016AF880, &unk_10138CE20);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v13 = &v56[-v12];
  v14 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v59 = &v56[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = __chkstk_darwin(v16);
  v20 = &v56[-v19];
  __chkstk_darwin(v18);
  v22 = &v56[-v21];
  v62 = v1;
  sub_100EEAC04(&v56[-v21]);
  v23 = *(v10 + 56);
  v64 = a1;
  sub_1000D2A70(a1, v13, &qword_1016980D0, &unk_10138F3B0);
  sub_1000D2A70(v22, &v13[v23], &qword_1016980D0, &unk_10138F3B0);
  v63 = v6;
  v24 = *(v6 + 48);
  if (v24(v13, 1, v5) == 1)
  {
    sub_10000B3A8(v22, &qword_1016980D0, &unk_10138F3B0);
    if (v24(&v13[v23], 1, v5) == 1)
    {
      sub_10000B3A8(v13, &qword_1016980D0, &unk_10138F3B0);
      v25 = v64;
      return sub_10000B3A8(v25, &qword_1016980D0, &unk_10138F3B0);
    }

    goto LABEL_6;
  }

  sub_1000D2A70(v13, v20, &qword_1016980D0, &unk_10138F3B0);
  if (v24(&v13[v23], 1, v5) == 1)
  {
    sub_10000B3A8(v22, &qword_1016980D0, &unk_10138F3B0);
    (*(v63 + 8))(v20, v5);
LABEL_6:
    sub_10000B3A8(v13, &qword_1016AF880, &unk_10138CE20);
    v25 = v64;
    v26 = v62;
    goto LABEL_7;
  }

  v35 = v63;
  v36 = v58;
  (*(v63 + 32))(v58, &v13[v23], v5);
  sub_100EED938(&qword_1016984A0, 255, &type metadata accessor for UUID);
  v57 = dispatch thunk of static Equatable.== infix(_:_:)();
  v37 = *(v35 + 8);
  v37(v36, v5);
  sub_10000B3A8(v22, &qword_1016980D0, &unk_10138F3B0);
  v37(v20, v5);
  sub_10000B3A8(v13, &qword_1016980D0, &unk_10138F3B0);
  v25 = v64;
  v26 = v62;
  if (v57)
  {
    return sub_10000B3A8(v25, &qword_1016980D0, &unk_10138F3B0);
  }

LABEL_7:
  v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v66 = v27;
  v28._countAndFlagsBits = 45;
  v28._object = 0xE100000000000000;
  String.append(_:)(v28);
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v30 = result;
    v31 = MobileGestalt_copy_uniqueDeviceID_obj();

    if (v31)
    {
      v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v34 = v33;
    }

    else
    {
      v32 = 0;
      v34 = 0xE000000000000000;
    }

    v38._countAndFlagsBits = v32;
    v38._object = v34;
    String.append(_:)(v38);

    v39 = sub_100003518();
    v40 = v59;
    sub_1000D2A70(v25, v59, &qword_1016980D0, &unk_10138F3B0);
    if (v24(v40, 1, v5) == 1)
    {
      sub_10000B3A8(v40, &qword_1016980D0, &unk_10138F3B0);
    }

    else
    {
      UUID.uuidString.getter();
      (*(v63 + 8))(v40, v5);
    }

    v41 = String._bridgeToObjectiveC()();

    v42 = String._bridgeToObjectiveC()();

    [v39 setObject:v41 forKey:v42];

    v43 = sub_100003518();
    v44 = [v43 stringForKey:SPSettingsServiceStateKey];

    if (!v44)
    {
      if (qword_101694A88 != -1)
      {
        swift_once();
      }

      v44 = qword_10177B658;
    }

    v45 = sub_100EEA744();
    v47 = v60;
    v46 = v61;
    sub_100EEAC04(&v61[*(v60 + 24)]);
    sub_100EEB5B4(v46 + v47[7]);
    v48 = sub_100EEB5E0();
    v50 = v49;
    sub_100EEB8F8(v46 + v47[9]);
    v51 = *(v26 + 48);
    v52 = *(v26 + 56);
    v53 = *(v26 + 32);
    v54 = String._bridgeToObjectiveC()();
    LOBYTE(v52) = [v53 BOOLForKey:v54];

    *v46 = v44;
    v46[1] = v45;
    v55 = v46 + v47[8];
    *v55 = v48;
    v55[8] = v50 & 1;
    *(v46 + v47[10]) = v52;
    sub_100EED430(v46, v26);
    sub_10000B3A8(v64, &qword_1016980D0, &unk_10138F3B0);
    return sub_100EED7D4(v46);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100EEB5E0()
{
  v0 = sub_100003518();
  v1 = [v0 objectForKey:SPBeaconZoneCreationErrorCodeKey];

  if (v1)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (*(&v5 + 1))
  {
    if (swift_dynamicCast())
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_10000B3A8(v6, &unk_1016A0B10, &qword_10139BF40);
    return 0;
  }
}

uint64_t sub_100EEB6C4(uint64_t a1, char a2)
{
  v5 = type metadata accessor for ServiceStateConfigurationLayer();
  v6 = *(*(v5 - 1) + 64);
  __chkstk_darwin(v5);
  v8 = (&v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = sub_100EEB5E0();
  if (a2)
  {
    if (v10)
    {
      return result;
    }

    v11 = sub_100003518();
    [v11 removeObjectForKey:SPBeaconZoneCreationErrorCodeKey];
  }

  else
  {
    if ((v10 & 1) == 0 && result == a1)
    {
      return result;
    }

    v12 = sub_100003518();
    v11 = [objc_allocWithZone(NSNumber) initWithInteger:a1];
    [v12 setObject:v11 forKey:SPBeaconZoneCreationErrorCodeKey];
  }

  v13 = sub_100003518();
  v14 = [v13 stringForKey:SPSettingsServiceStateKey];

  if (!v14)
  {
    if (qword_101694A88 != -1)
    {
      swift_once();
    }

    v14 = qword_10177B658;
  }

  v15 = sub_100EEA744();
  sub_100EEAC04(v8 + v5[6]);
  sub_100EEB5B4(v8 + v5[7]);
  v16 = sub_100EEB5E0();
  v18 = v17;
  sub_100EEB8F8(v8 + v5[9]);
  v19 = sub_100003518();
  v20 = *(v2 + 48);
  v21 = *(v2 + 56);
  v22 = String._bridgeToObjectiveC()();
  v23 = [v19 BOOLForKey:v22];

  *v8 = v14;
  v8[1] = v15;
  v24 = v8 + v5[8];
  *v24 = v16;
  v24[8] = v18 & 1;
  *(v8 + v5[10]) = v23;
  sub_100EED430(v8, v2);
  return sub_100EED7D4(v8);
}

uint64_t sub_100EEB904@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100003518();
  v5 = [v4 objectForKey:*a1];

  if (v5)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v12[0] = v10;
  v12[1] = v11;
  if (*(&v11 + 1))
  {
    v6 = type metadata accessor for Date();
    v7 = swift_dynamicCast();
    return (*(*(v6 - 8) + 56))(a2, v7 ^ 1u, 1, v6);
  }

  else
  {
    sub_10000B3A8(v12, &unk_1016A0B10, &qword_10139BF40);
    v9 = type metadata accessor for Date();
    return (*(*(v9 - 8) + 56))(a2, 1, 1, v9);
  }
}

uint64_t sub_100EEBA68(void (*a1)(uint64_t), void (*a2)(uint64_t), void *a3)
{
  v55 = a3;
  v59 = a2;
  v56 = type metadata accessor for ServiceStateConfigurationLayer();
  v5 = *(*(v56 - 8) + 64);
  __chkstk_darwin(v56);
  v57 = &v51[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v53 = &v51[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_1000BC4D4(&unk_1016B1660, &unk_10138CE10);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v15 = &v51[-v14];
  v16 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v54 = &v51[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = __chkstk_darwin(v18);
  v22 = &v51[-v21];
  v23 = __chkstk_darwin(v20);
  v25 = &v51[-v24];
  v58 = v3;
  v59(v23);
  v26 = *(v12 + 56);
  v59 = a1;
  v27 = a1;
  v28 = v8;
  sub_1000D2A70(v27, v15, &unk_101696900, &unk_10138B1E0);
  sub_1000D2A70(v25, &v15[v26], &unk_101696900, &unk_10138B1E0);
  v29 = *(v8 + 48);
  if (v29(v15, 1, v7) == 1)
  {
    sub_10000B3A8(v25, &unk_101696900, &unk_10138B1E0);
    if (v29(&v15[v26], 1, v7) == 1)
    {
      sub_10000B3A8(v15, &unk_101696900, &unk_10138B1E0);
      return sub_10000B3A8(v59, &unk_101696900, &unk_10138B1E0);
    }

    goto LABEL_6;
  }

  sub_1000D2A70(v15, v22, &unk_101696900, &unk_10138B1E0);
  if (v29(&v15[v26], 1, v7) == 1)
  {
    sub_10000B3A8(v25, &unk_101696900, &unk_10138B1E0);
    (*(v8 + 8))(v22, v7);
LABEL_6:
    sub_10000B3A8(v15, &unk_1016B1660, &unk_10138CE10);
    v30 = v58;
    goto LABEL_7;
  }

  v48 = *(v8 + 32);
  v49 = v53;
  v48(v53, &v15[v26], v7);
  sub_100EED938(&qword_101698290, 255, &type metadata accessor for Date);
  v52 = dispatch thunk of static Equatable.== infix(_:_:)();
  v50 = *(v28 + 8);
  v50(v49, v7);
  sub_10000B3A8(v25, &unk_101696900, &unk_10138B1E0);
  v50(v22, v7);
  sub_10000B3A8(v15, &unk_101696900, &unk_10138B1E0);
  v30 = v58;
  if (v52)
  {
    return sub_10000B3A8(v59, &unk_101696900, &unk_10138B1E0);
  }

LABEL_7:
  v31 = sub_100003518();
  v32 = v54;
  sub_1000D2A70(v59, v54, &unk_101696900, &unk_10138B1E0);
  if (v29(v32, 1, v7) == 1)
  {
    isa = 0;
  }

  else
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v28 + 8))(v32, v7);
  }

  [v31 setObject:isa forKey:*v55];

  swift_unknownObjectRelease();
  v34 = sub_100003518();
  v35 = [v34 stringForKey:SPSettingsServiceStateKey];

  if (!v35)
  {
    if (qword_101694A88 != -1)
    {
      swift_once();
    }

    v35 = qword_10177B658;
  }

  v36 = sub_100EEA744();
  v37 = v56;
  v38 = v57;
  sub_100EEAC04(&v57[*(v56 + 24)]);
  sub_100EEB5B4(v38 + v37[7]);
  v39 = sub_100EEB5E0();
  v41 = v40;
  sub_100EEB8F8(v38 + v37[9]);
  v42 = *(v30 + 48);
  v43 = *(v30 + 56);
  v44 = *(v30 + 32);
  v45 = String._bridgeToObjectiveC()();
  LOBYTE(v43) = [v44 BOOLForKey:v45];

  *v38 = v35;
  v38[1] = v36;
  v46 = v38 + v37[8];
  *v46 = v39;
  v46[8] = v41 & 1;
  *(v38 + v37[10]) = v43;
  sub_100EED430(v38, v30);
  sub_10000B3A8(v59, &unk_101696900, &unk_10138B1E0);
  return sub_100EED7D4(v38);
}

uint64_t sub_100EEC0A4(char a1, char a2, char a3)
{
  v6 = sub_100EEA744();
  if (v6)
  {
    v7 = sub_101129C80(v6);
  }

  else
  {
    v7 = &_swiftEmptySetSingleton;
  }

  v22 = v7;
  if (a2 == 2)
  {
    goto LABEL_5;
  }

  if (a2)
  {
    v9 = sub_1010F5C98(SPDisabledReasonLowAccountSecurity);
    v10 = sub_1010F5C98(SPDisabledReasoniCloudSignedOut);

    if (!v9 && !v10)
    {
LABEL_5:
      v8 = 0;
      goto LABEL_11;
    }

    v8 = 1;
  }

  else
  {
    v8 = sub_100DE9D98(&v21, SPDisabledReasonLowAccountSecurity);
  }

LABEL_11:
  if (a1 != 2)
  {
    v11 = &SPDisabledReasoniCloudSignedOut;
    if ((a1 & 1) == 0)
    {
      v12 = sub_100DE9D98(&v21, SPDisabledReasoniCloudSignedOut);

      v8 |= v12;
      v11 = &SPDisabledReasonLowAccountSecurity;
    }

    v13 = sub_1010F5C98(*v11);
    v8 |= v13 != 0;
  }

  if (a3 != 2)
  {
    if (a3)
    {
      v14 = sub_100DE9D98(&v21, SPDisabledReasonUserOptOut);

      v8 |= v14;
    }

    else
    {
      v15 = sub_1010F5C98(SPDisabledReasonUserOptOut);
      if (v8)
      {

        v8 = 1;
      }

      else
      {
        v8 = v15 != 0;
      }
    }
  }

  v16 = v22;
  v17 = v22[2];
  if (!v17)
  {
    goto LABEL_24;
  }

  v18 = sub_1003A869C(v22[2], 0);
  v19 = sub_1003CC2D0(&v21, v18 + 4, v17, v16);
  sub_1000128F8();
  if (v19 != v17)
  {
    __break(1u);
LABEL_24:

    v18 = _swiftEmptyArrayStorage;
  }

  sub_100EEA8C4(v18);
  return v8 & 1;
}

uint64_t sub_100EEC2D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000BC4D4(&qword_101697DE8, &unk_1013CA800);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = aBlock - v8;
  sub_10001F280(a1, aBlock);
  swift_allocObject();
  swift_weakInit();
  sub_1000BC4D4(&qword_1016AF248, &unk_10140B900);
  Subscription.init(subscriber:unsubscribeBlock:)();
  v10 = *(v2 + 24);
  (*(v6 + 16))(v9, a2, v5);
  v11 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v2;
  (*(v6 + 32))(v12 + v11, v9, v5);
  v13 = swift_allocObject();
  *(v13 + 16) = sub_100EED394;
  *(v13 + 24) = v12;
  aBlock[4] = sub_10040B9F8;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10013FE14;
  aBlock[3] = &unk_101659F90;
  v14 = _Block_copy(aBlock);

  dispatch_sync(v10, v14);
  _Block_release(v14);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100EEC578(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100EEC79C(a1);
  }

  return result;
}

uint64_t sub_100EEC5FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_101697DE8, &unk_1013CA800);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v14 - v7;
  (*(v5 + 16))(&v14 - v7, a2, v4);
  swift_beginAccess();
  v9 = *(a1 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + 16) = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = sub_100A5E3C0(0, v9[2] + 1, 1, v9);
    *(a1 + 16) = v9;
  }

  v12 = v9[2];
  v11 = v9[3];
  if (v12 >= v11 >> 1)
  {
    v9 = sub_100A5E3C0(v11 > 1, v12 + 1, 1, v9);
  }

  v9[2] = v12 + 1;
  (*(v5 + 32))(v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v12, v8, v4);
  *(a1 + 16) = v9;
  return swift_endAccess();
}

uint64_t sub_100EEC79C(uint64_t a1)
{
  v3 = sub_1000BC4D4(&qword_101697DE8, &unk_1013CA800);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = aBlock - v6;
  v8 = *(v1 + 24);
  (*(v4 + 16))(aBlock - v6, a1, v3);
  v9 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = v1;
  (*(v4 + 32))(v10 + v9, v7, v3);
  v11 = swift_allocObject();
  *(v11 + 16) = sub_100EED360;
  *(v11 + 24) = v10;
  aBlock[4] = sub_1000D2FB0;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10013FE14;
  aBlock[3] = &unk_101659EF0;
  v12 = _Block_copy(aBlock);

  dispatch_sync(v8, v12);
  _Block_release(v12);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100EEC9D4(uint64_t a1, uint64_t a2)
{
  v63 = type metadata accessor for DispatchWorkItemFlags();
  v67 = *(v63 - 8);
  v3 = *(v67 + 64);
  __chkstk_darwin(v63);
  v5 = v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v46 = *(v6 - 8);
  v7 = *(v46 + 64);
  __chkstk_darwin(v6);
  v9 = v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS.QoSClass();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_1000BC4D4(&qword_101697DE8, &unk_1013CA800);
  v15 = *(v66 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v66);
  v65 = v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v64 = v44 - v18;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v62 = v14;
    v20 = result;
    swift_beginAccess();
    v21 = *(v20 + 16);

    v22 = v21;

    v23 = *(v21 + 16);
    if (v23)
    {
      v61 = sub_1000BC488();
      v25 = *(v15 + 16);
      v24 = v15 + 16;
      v60 = v25;
      v26 = *(v24 + 64);
      v44[1] = v22;
      v27 = v22 + ((v26 + 32) & ~v26);
      v58 = (v11 + 104);
      v57 = (v11 + 8);
      v56 = *(v24 + 56);
      v53 = v5;
      v52 = (v24 + 16);
      v51 = enum case for DispatchQoS.QoSClass.default(_:);
      v59 = v26;
      v50 = (v26 + 16) & ~v26;
      v49 = (v16 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
      v48 = v70;
      v47 = (v67 + 8);
      v46 += 8;
      v45 = v9;
      v55 = v6;
      v54 = v24;
      do
      {
        v28 = v64;
        v29 = v66;
        v60(v64, v27, v66);
        v30 = v62;
        (*v58)(v62, v51, v10);
        v67 = static OS_dispatch_queue.global(qos:)();
        (*v57)(v30, v10);
        v31 = *v52;
        v32 = v65;
        (*v52)(v65, v28, v29);
        sub_10001F280(a2, &v71);
        v33 = v49;
        v34 = swift_allocObject();
        v31((v34 + v50), v32, v29);
        sub_10000A748(&v71, v34 + v33);
        v70[2] = sub_100EED8A0;
        v70[3] = v34;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        v70[0] = sub_100006684;
        v70[1] = &unk_10165A030;
        v35 = v10;
        v36 = a2;
        v37 = _Block_copy(aBlock);
        v38 = v45;
        static DispatchQoS.unspecified.getter();
        v68 = &_swiftEmptyArrayStorage;
        sub_100EED938(&qword_1016A30B0, 255, &type metadata accessor for DispatchWorkItemFlags);
        sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
        sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
        v39 = v53;
        v40 = v63;
        v41 = v55;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v42 = v67;
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        v43 = v37;
        a2 = v36;
        v10 = v35;
        _Block_release(v43);

        (*v47)(v39, v40);
        (*v46)(v38, v41);

        v27 += v56;
        --v23;
      }

      while (v23);
    }
  }

  return result;
}

uint64_t sub_100EED0B4(uint64_t a1, void *a2)
{
  sub_1000BC4D4(&qword_101697DE8, &unk_1013CA800);
  Subscription.subscriber.getter();
  v3 = *sub_1000035D0(v8, v8[3]);
  v4 = a2[3];
  v5 = a2[4];
  v6 = sub_1000035D0(a2, v4);
  sub_1001503B4(v6, 4, 1, 0, 0, v3, v4, v5);
  return sub_100007BAC(v8);
}

uint64_t sub_100EED14C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 56);

  return swift_deallocClassInstance();
}

uint64_t sub_100EED1C8(uint64_t a1, uint64_t a2)
{
  result = sub_100EED938(&qword_1016BF6B0, a2, type metadata accessor for ServiceStateProvider);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100EED220()
{
  result = sub_100EED240();
  qword_10177C280 = result;
  return result;
}

uint64_t sub_100EED240()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = String._bridgeToObjectiveC()();

  v2 = [v0 initWithSuiteName:v1];

  if (v2)
  {
    return v2;
  }

  _StringGuts.grow(_:)(49);

  v4._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.append(_:)(v4);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100EED3AC(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(sub_1000BC4D4(&qword_101697DE8, &unk_1013CA800) - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

uint64_t sub_100EED430(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v19 = *(v4 - 8);
  v5 = *(v19 + 64);
  __chkstk_darwin(v4);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v8 = *(v18 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v18);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23[3] = type metadata accessor for ServiceStateConfigurationLayer();
  v23[4] = &off_10165A058;
  v12 = sub_1000280DC(v23);
  sub_100EED830(a1, v12);
  v17[1] = *(a2 + 24);
  v13 = swift_allocObject();
  swift_weakInit();
  sub_10001F280(v23, v22);
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  sub_10000A748(v22, v14 + 24);
  aBlock[4] = sub_100EED894;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101659FE0;
  v15 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v20 = &_swiftEmptyArrayStorage;
  sub_100EED938(&qword_1016A30B0, 255, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);
  (*(v19 + 8))(v7, v4);
  (*(v8 + 8))(v11, v18);

  return sub_100007BAC(v23);
}

uint64_t type metadata accessor for ServiceStateConfigurationLayer()
{
  result = qword_1016BF710;
  if (!qword_1016BF710)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100EED7D4(uint64_t a1)
{
  v2 = type metadata accessor for ServiceStateConfigurationLayer();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100EED830(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ServiceStateConfigurationLayer();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100EED8A0()
{
  v1 = *(sub_1000BC4D4(&qword_101697DE8, &unk_1013CA800) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_100EED0B4(v0 + v2, v3);
}

uint64_t sub_100EED938(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void sub_100EED9B0()
{
  sub_10090CC98(319, &qword_1016ADF10, type metadata accessor for SPServiceState);
  if (v0 <= 0x3F)
  {
    sub_100EEDAE4();
    if (v1 <= 0x3F)
    {
      sub_10090CC98(319, &qword_1016B1C20, &type metadata accessor for UUID);
      if (v2 <= 0x3F)
      {
        sub_10090CC98(319, &qword_1016BA040, &type metadata accessor for Date);
        if (v3 <= 0x3F)
        {
          sub_100EEDB48();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100EEDAE4()
{
  if (!qword_1016ADF18)
  {
    sub_1000BC580(&qword_101697E78, &qword_1013F0760);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1016ADF18);
    }
  }
}

void sub_100EEDB48()
{
  if (!qword_1016A8838)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1016A8838);
    }
  }
}

uint64_t type metadata accessor for MetricsEndpoint()
{
  result = qword_1016BF7B8;
  if (!qword_1016BF7B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100EEDC6C()
{
  sub_100EEDD7C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v1 <= 0x3F)
    {
      sub_100EEDDEC(319, &qword_1016BF858, type metadata accessor for DeviceEvent.Location);
      if (v2 <= 0x3F)
      {
        sub_100EEDDEC(319, &unk_1016BF860, type metadata accessor for DeviceEvent.AttachmentInfo);
        if (v3 <= 0x3F)
        {
          type metadata accessor for BeaconIdentifier();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100EEDD7C()
{
  if (!qword_10169C540)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10169C540);
    }
  }
}

void sub_100EEDDEC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100EEDE98()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    sub_100EEDDEC(319, &qword_1016B1C20, &type metadata accessor for UUID);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100EEDF60(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016BFA70, &unk_1013F0BB0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100EF320C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v16[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v12 = v3[1];
    v16[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v13 = v3[2];
    v16[13] = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v14 = *(type metadata accessor for DeviceEvent.Location(0) + 28);
    v16[12] = 3;
    type metadata accessor for Date();
    sub_100EEF898(&unk_101697F60, &type metadata accessor for Date);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100EEE19C()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  Hasher._combine(_:)(*&v1);
  v2 = v0[1];
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  Hasher._combine(_:)(*&v2);
  v3 = v0[2];
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  Hasher._combine(_:)(*&v3);
  v4 = *(type metadata accessor for DeviceEvent.Location(0) + 28);
  type metadata accessor for Date();
  sub_100EEF898(&unk_101698070, &type metadata accessor for Date);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_100EEE274()
{
  Hasher.init(_seed:)();
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  Hasher._combine(_:)(*&v1);
  v2 = v0[1];
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  Hasher._combine(_:)(*&v2);
  v3 = v0[2];
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  Hasher._combine(_:)(*&v3);
  v4 = *(type metadata accessor for DeviceEvent.Location(0) + 28);
  type metadata accessor for Date();
  sub_100EEF898(&unk_101698070, &type metadata accessor for Date);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100EEE36C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v4 = type metadata accessor for Date();
  v29 = *(v4 - 8);
  v5 = *(v29 + 64);
  __chkstk_darwin(v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000BC4D4(&qword_1016BFA60, &qword_1013F0BA8);
  v31 = *(v8 - 8);
  v32 = v8;
  v9 = *(v31 + 64);
  __chkstk_darwin(v8);
  v11 = &v28 - v10;
  v12 = type metadata accessor for DeviceEvent.Location(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = (&v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = a1[3];
  v17 = a1[4];
  v33 = a1;
  sub_1000035D0(a1, v16);
  sub_100EF320C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v18 = v7;
    v37 = 0;
    v19 = v31;
    KeyedDecodingContainer.decode(_:forKey:)();
    *v15 = v20;
    v36 = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    v21 = v19;
    v15[1] = v22;
    v35 = 2;
    KeyedDecodingContainer.decode(_:forKey:)();
    v24 = v15;
    v15[2] = v25;
    v34 = 3;
    sub_100EEF898(&qword_101697F40, &type metadata accessor for Date);
    v26 = v18;
    v27 = v32;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v21 + 8))(v11, v27);
    (*(v29 + 32))(v24 + *(v12 + 28), v26, v4);
    sub_100EF3094(v24, v30, type metadata accessor for DeviceEvent.Location);
  }

  return sub_100007BAC(v33);
}

uint64_t sub_100EEE6DC(void *a1)
{
  v3 = sub_1000BC4D4(&qword_1016BFA58, &qword_1013F0BA0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  v8 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100EF3150();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11[15] = 0;
  type metadata accessor for UUID();
  sub_100EEF898(&qword_101698330, &type metadata accessor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    v9 = *(type metadata accessor for DeviceEvent.AttachmentInfo(0) + 20);
    v11[14] = 1;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v7, v3);
}

Swift::Int sub_100EEE8A0()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v12 - v8;
  Hasher.init(_seed:)();
  sub_100EEF898(&qword_1016967B0, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v10 = type metadata accessor for DeviceEvent.AttachmentInfo(0);
  sub_1000D2A70(v0 + *(v10 + 20), v9, &qword_1016980D0, &unk_10138F3B0);
  if ((*(v2 + 48))(v9, 1, v1) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v2 + 32))(v5, v9, v1);
    Hasher._combine(_:)(1u);
    dispatch thunk of Hashable.hash(into:)();
    (*(v2 + 8))(v5, v1);
  }

  return Hasher._finalize()();
}

uint64_t sub_100EEEAB4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v24 - v6;
  v31 = type metadata accessor for UUID();
  v27 = *(v31 - 8);
  v8 = *(v27 + 64);
  __chkstk_darwin(v31);
  v28 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000BC4D4(&qword_1016BFA48, &qword_1013F0B98);
  v29 = *(v10 - 8);
  v30 = v10;
  v11 = *(v29 + 64);
  __chkstk_darwin(v10);
  v13 = &v24 - v12;
  v14 = type metadata accessor for DeviceEvent.AttachmentInfo(0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100EF3150();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v24 = v14;
  v25 = v17;
  v19 = v27;
  v33 = 0;
  sub_100EEF898(&qword_101698300, &type metadata accessor for UUID);
  v20 = v28;
  v21 = v30;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v19 + 32))(v25, v20, v31);
  v32 = 1;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v29 + 8))(v13, v21);
  v22 = v25;
  sub_1000D2AD8(v7, &v25[*(v24 + 20)], &qword_1016980D0, &unk_10138F3B0);
  sub_100EF31A4(v22, v26, type metadata accessor for DeviceEvent.AttachmentInfo);
  sub_100007BAC(a1);
  return sub_100EF2FE0(v22, type metadata accessor for DeviceEvent.AttachmentInfo);
}

uint64_t sub_100EEEF44()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E752ELL;
  v3 = 0x657070617369642ELL;
  if (v1 != 6)
  {
    v3 = 0x726961702ELL;
  }

  v4 = 0x6863617465642ELL;
  if (v1 != 4)
  {
    v4 = 0x657463657465642ELL;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x6E6E6F637369642ELL;
  if (v1 != 2)
  {
    v5 = 0x6863617474612ELL;
  }

  if (*v0)
  {
    v2 = 0x7463656E6E6F632ELL;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100EEF058(uint64_t a1)
{
  v2 = sub_100EF320C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100EEF094(uint64_t a1)
{
  v2 = sub_100EF320C();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_100EEF108(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  v4 = *v2;
  if (*v2 == 0.0)
  {
    v4 = 0.0;
  }

  Hasher._combine(_:)(*&v4);
  v5 = v2[1];
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  Hasher._combine(_:)(*&v5);
  v6 = v2[2];
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  Hasher._combine(_:)(*&v6);
  v7 = *(a2 + 28);
  type metadata accessor for Date();
  sub_100EEF898(&unk_101698070, &type metadata accessor for Date);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

unint64_t sub_100EEF244()
{
  if (*v0)
  {
    result = 0x73736553746F6F62;
  }

  else
  {
    result = 0xD000000000000010;
  }

  *v0;
  return result;
}

uint64_t sub_100EEF290@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000001013587D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x73736553746F6F62 && a2 == 0xEF444955556E6F69)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_100EEF380(uint64_t a1)
{
  v2 = sub_100EF3150();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100EEF3BC(uint64_t a1)
{
  v2 = sub_100EF3150();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_100EEF42C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v13 - v11;
  sub_100EEF898(&qword_1016967B0, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  sub_1000D2A70(v2 + *(a2 + 20), v12, &qword_1016980D0, &unk_10138F3B0);
  if ((*(v5 + 48))(v12, 1, v4) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v5 + 32))(v8, v12, v4);
    Hasher._combine(_:)(1u);
    dispatch thunk of Hashable.hash(into:)();
    (*(v5 + 8))(v8, v4);
  }
}

Swift::Int sub_100EEF630(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v14 - v11;
  Hasher.init(_seed:)();
  sub_100EEF898(&qword_1016967B0, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  sub_1000D2A70(v2 + *(a2 + 20), v12, &qword_1016980D0, &unk_10138F3B0);
  if ((*(v5 + 48))(v12, 1, v4) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v5 + 32))(v8, v12, v4);
    Hasher._combine(_:)(1u);
    dispatch thunk of Hashable.hash(into:)();
    (*(v5 + 8))(v8, v4);
  }

  return Hasher._finalize()();
}

uint64_t sub_100EEF898(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100EEF8E4()
{
  result = qword_1016BF9E0;
  if (!qword_1016BF9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BF9E0);
  }

  return result;
}

unint64_t sub_100EEFCD4()
{
  v1 = v0;
  v2 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v56 = &v55 - v4;
  v5 = sub_1000BC4D4(&unk_1016AA510, &unk_101393150);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v55 - v7;
  v9 = type metadata accessor for DeviceEvent.AttachmentInfo(0);
  v57 = *(v9 - 8);
  v58 = v9;
  v10 = *(v57 + 64);
  __chkstk_darwin(v9);
  v55 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000BC4D4(&qword_101699E50, &qword_1013D97C0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v55 - v14;
  v16 = type metadata accessor for DeviceEvent.Location(0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = (&v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000BC4D4(&unk_1016B2700, &unk_1013AB050);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10138BBE0;
  *(inited + 32) = 29556;
  *(inited + 40) = 0xE200000000000000;
  v22 = type metadata accessor for DeviceEvent(0);
  v23 = v0 + v22[6];
  v24 = v1;
  *(inited + 48) = Date.description.getter();
  *(inited + 56) = v25;
  *(inited + 64) = 0x656372756F73;
  *(inited + 72) = 0xE600000000000000;
  v26 = *(v1 + 9);
  if (v26 > 3)
  {
    if (*(v1 + 9) > 5u)
    {
      if (v26 == 6)
      {
        v27 = 0xEC00000064657261;
        v28 = 0x657070617369642ELL;
      }

      else
      {
        v27 = 0xE500000000000000;
        v28 = 0x726961702ELL;
      }

      goto LABEL_17;
    }

    if (v26 != 4)
    {
      v27 = 0xEF79627261654E64;
      v28 = 0x657463657465642ELL;
      goto LABEL_17;
    }

    v27 = 0xE700000000000000;
    v29 = 1952801838;
  }

  else
  {
    if (*(v1 + 9) <= 1u)
    {
      v27 = 0xE800000000000000;
      if (*(v1 + 9))
      {
        v28 = 0x7463656E6E6F632ELL;
      }

      else
      {
        v28 = 0x6E776F6E6B6E752ELL;
      }

      goto LABEL_17;
    }

    if (v26 == 2)
    {
      v27 = 0xEB00000000746365;
      v28 = 0x6E6E6F637369642ELL;
      goto LABEL_17;
    }

    v27 = 0xE700000000000000;
    v29 = 1953784110;
  }

  v28 = v29 | 0x68636100000000;
LABEL_17:
  *(inited + 80) = v28;
  *(inited + 88) = v27;
  v30 = sub_100907E70(inited);
  swift_setDeallocating();
  sub_1000BC4D4(&qword_101696D88, &unk_10138B760);
  swift_arrayDestroy();
  v61 = v30;
  sub_1000D2A70(v24 + v22[7], v15, &qword_101699E50, &qword_1013D97C0);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_10000B3A8(v15, &qword_101699E50, &qword_1013D97C0);
  }

  else
  {
    sub_100EF3094(v15, v20, type metadata accessor for DeviceEvent.Location);
    v59 = 0;
    v60 = 0xE000000000000000;
    v31 = *v20;
    Double.write<A>(to:)();
    v32._countAndFlagsBits = 44;
    v32._object = 0xE100000000000000;
    String.append(_:)(v32);
    v33 = v20[1];
    Double.write<A>(to:)();
    v34._countAndFlagsBits = 44;
    v34._object = 0xE100000000000000;
    String.append(_:)(v34);
    v35 = v20[2];
    Double.write<A>(to:)();
    v36 = v59;
    v37 = v60;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v59 = v30;
    sub_100FFACA0(v36, v37, 6516588, 0xE300000000000000, isUniquelyReferenced_nonNull_native);
    v30 = v59;
    v61 = v59;
    sub_100EF2FE0(v20, type metadata accessor for DeviceEvent.Location);
  }

  sub_1000D2A70(v24 + v22[8], v8, &unk_1016AA510, &unk_101393150);
  v39 = v58;
  if ((*(v57 + 48))(v8, 1, v58) == 1)
  {
    sub_10000B3A8(v8, &unk_1016AA510, &unk_101393150);
  }

  else
  {
    v40 = v8;
    v41 = v55;
    sub_100EF3094(v40, v55, type metadata accessor for DeviceEvent.AttachmentInfo);
    v42 = UUID.uuidString.getter();
    v44 = v43;
    v45 = swift_isUniquelyReferenced_nonNull_native();
    v59 = v30;
    sub_100FFACA0(v42, v44, 0xD000000000000010, 0x80000001013587D0, v45);
    v61 = v59;
    v46 = v56;
    sub_1000D2A70(v41 + *(v39 + 20), v56, &qword_1016980D0, &unk_10138F3B0);
    v47 = type metadata accessor for UUID();
    v48 = *(v47 - 8);
    if ((*(v48 + 48))(v46, 1, v47) == 1)
    {
      sub_10000B3A8(v46, &qword_1016980D0, &unk_10138F3B0);
      v49 = 0;
      v50 = 0;
    }

    else
    {
      v51 = UUID.uuidString.getter();
      v53 = v52;
      (*(v48 + 8))(v46, v47);
      v50 = v53;
      v49 = v51;
    }

    sub_1001DD5B8(v49, v50, 0x73736553746F6F62, 0xEF444955556E6F69);
    sub_100EF2FE0(v41, type metadata accessor for DeviceEvent.AttachmentInfo);
    return v61;
  }

  return v30;
}

uint64_t sub_100EF03EC(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016BFA10, &qword_1013F0B78);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v21 - v8;
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100EF2F38();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = *(v3 + 8);
  v29 = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    v28 = *(v3 + 9);
    v27 = 1;
    sub_100EF3040();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v13 = type metadata accessor for DeviceEvent(0);
    v14 = v13[6];
    v26 = 2;
    v15 = type metadata accessor for Date();
    sub_100EEF898(&unk_101697F60, &type metadata accessor for Date);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v21[1] = v15;
    v16 = v13[7];
    v25 = 3;
    type metadata accessor for DeviceEvent.Location(0);
    sub_100EEF898(&qword_1016BFA20, type metadata accessor for DeviceEvent.Location);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v17 = v13[8];
    v24 = 4;
    type metadata accessor for DeviceEvent.AttachmentInfo(0);
    sub_100EEF898(&qword_1016BFA28, type metadata accessor for DeviceEvent.AttachmentInfo);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v18 = v13[9];
    v23 = 5;
    type metadata accessor for BeaconIdentifier();
    sub_100EEF898(&qword_1016A9138, type metadata accessor for BeaconIdentifier);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v19 = v13[10];
    v22 = 6;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100EF078C()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v31 = *(v2 - 8);
  v3 = *(v31 + 64);
  __chkstk_darwin(v2);
  v29 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v30 = &v29 - v7;
  v8 = type metadata accessor for DeviceEvent.AttachmentInfo(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000BC4D4(&unk_1016AA510, &unk_101393150);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v29 - v15;
  if (*(v0 + 8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v17 = *v0;
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v17);
  }

  Hasher._combine(_:)(*(v0 + 9));
  v18 = type metadata accessor for DeviceEvent(0);
  v19 = v18[6];
  v20 = type metadata accessor for Date();
  sub_100EEF898(&unk_101698070, &type metadata accessor for Date);
  v32 = v20;
  dispatch thunk of Hashable.hash(into:)();
  v21 = v1 + v18[7];
  sub_100EF2004();
  sub_1000D2A70(v1 + v18[8], v16, &unk_1016AA510, &unk_101393150);
  if ((*(v9 + 48))(v16, 1, v8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    sub_100EF3094(v16, v12, type metadata accessor for DeviceEvent.AttachmentInfo);
    Hasher._combine(_:)(1u);
    sub_100EEF898(&qword_1016967B0, &type metadata accessor for UUID);
    dispatch thunk of Hashable.hash(into:)();
    v22 = v30;
    sub_1000D2A70(&v12[*(v8 + 20)], v30, &qword_1016980D0, &unk_10138F3B0);
    v23 = v31;
    if ((*(v31 + 48))(v22, 1, v2) == 1)
    {
      Hasher._combine(_:)(0);
    }

    else
    {
      v24 = v29;
      (*(v23 + 32))(v29, v22, v2);
      Hasher._combine(_:)(1u);
      dispatch thunk of Hashable.hash(into:)();
      (*(v23 + 8))(v24, v2);
    }

    sub_100EF2FE0(v12, type metadata accessor for DeviceEvent.AttachmentInfo);
  }

  v25 = v1 + v18[9];
  sub_100EEF898(&qword_1016967B0, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v26 = v25 + *(type metadata accessor for BeaconIdentifier() + 20);
  dispatch thunk of Hashable.hash(into:)();
  v27 = v1 + v18[10];
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_100EF0C50()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v30 = *(v2 - 8);
  v3 = *(v30 + 64);
  __chkstk_darwin(v2);
  v29 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v29 - v7;
  v9 = type metadata accessor for DeviceEvent.AttachmentInfo(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000BC4D4(&unk_1016AA510, &unk_101393150);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v29 - v16;
  Hasher.init(_seed:)();
  if (*(v0 + 8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v18 = *v0;
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v18);
  }

  Hasher._combine(_:)(*(v0 + 9));
  v19 = type metadata accessor for DeviceEvent(0);
  v20 = v19[6];
  v21 = type metadata accessor for Date();
  sub_100EEF898(&unk_101698070, &type metadata accessor for Date);
  v31 = v21;
  dispatch thunk of Hashable.hash(into:)();
  v22 = v1 + v19[7];
  sub_100EF2004();
  sub_1000D2A70(v1 + v19[8], v17, &unk_1016AA510, &unk_101393150);
  if ((*(v10 + 48))(v17, 1, v9) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    sub_100EF3094(v17, v13, type metadata accessor for DeviceEvent.AttachmentInfo);
    Hasher._combine(_:)(1u);
    sub_100EEF898(&qword_1016967B0, &type metadata accessor for UUID);
    dispatch thunk of Hashable.hash(into:)();
    sub_1000D2A70(&v13[*(v9 + 20)], v8, &qword_1016980D0, &unk_10138F3B0);
    v23 = v30;
    if ((*(v30 + 48))(v8, 1, v2) == 1)
    {
      Hasher._combine(_:)(0);
    }

    else
    {
      v24 = v29;
      (*(v23 + 32))(v29, v8, v2);
      Hasher._combine(_:)(1u);
      dispatch thunk of Hashable.hash(into:)();
      (*(v23 + 8))(v24, v2);
    }

    sub_100EF2FE0(v13, type metadata accessor for DeviceEvent.AttachmentInfo);
  }

  v25 = v1 + v19[9];
  sub_100EEF898(&qword_1016967B0, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v26 = v25 + *(type metadata accessor for BeaconIdentifier() + 20);
  dispatch thunk of Hashable.hash(into:)();
  v27 = v1 + v19[10];
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100EF1118@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v55 = type metadata accessor for BeaconIdentifier();
  v3 = *(*(v55 - 8) + 64);
  __chkstk_darwin(v55);
  v56 = v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000BC4D4(&unk_1016AA510, &unk_101393150);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v57 = v48 - v7;
  v8 = sub_1000BC4D4(&qword_101699E50, &qword_1013D97C0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v58 = v48 - v10;
  v11 = type metadata accessor for Date();
  v59 = *(v11 - 8);
  v12 = *(v59 + 64);
  v13 = __chkstk_darwin(v11);
  v15 = v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = v48 - v16;
  v18 = sub_1000BC4D4(&qword_1016BF9E8, &qword_1013F0B70);
  v60 = *(v18 - 8);
  v61 = v18;
  v19 = *(v60 + 64);
  __chkstk_darwin(v18);
  v21 = v48 - v20;
  v22 = type metadata accessor for DeviceEvent(0);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22);
  v25 = (v48 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = a1[3];
  v27 = a1[4];
  v64 = a1;
  sub_1000035D0(a1, v26);
  sub_100EF2F38();
  v62 = v21;
  v28 = v63;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v28)
  {
    return sub_100007BAC(v64);
  }

  v29 = v17;
  v53 = v15;
  v30 = v60;
  v31 = v61;
  v63 = v25;
  v72 = 0;
  v32 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v33 = v63;
  *v63 = v32;
  *(v33 + 8) = v34 & 1;
  v70 = 1;
  sub_100EF2F8C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *(v33 + 9) = v71;
  v69 = 2;
  v35 = sub_100EEF898(&qword_101697F40, &type metadata accessor for Date);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v50 = v35;
  v52 = v22;
  v36 = *(v22 + 24);
  v38 = v59 + 32;
  v37 = *(v59 + 32);
  v37(v33 + v36, v29, v11);
  type metadata accessor for DeviceEvent.Location(0);
  v68 = 3;
  sub_100EEF898(&qword_1016BFA00, type metadata accessor for DeviceEvent.Location);
  v39 = v58;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v51 = v11;
  v49 = v37;
  v40 = v52;
  sub_1000D2AD8(v39, v63 + v52[7], &qword_101699E50, &qword_1013D97C0);
  type metadata accessor for DeviceEvent.AttachmentInfo(0);
  v67 = 4;
  sub_100EEF898(&qword_1016BFA08, type metadata accessor for DeviceEvent.AttachmentInfo);
  v41 = v57;
  v58 = 0;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v42 = v30;
  v48[1] = v38;
  sub_1000D2AD8(v41, v63 + v40[8], &unk_1016AA510, &unk_101393150);
  v66 = 5;
  sub_100EEF898(&qword_1016B0EF8, type metadata accessor for BeaconIdentifier);
  v43 = v56;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  sub_100EF3094(v43, v63 + v52[9], type metadata accessor for BeaconIdentifier);
  v65 = 6;
  v45 = v53;
  v46 = v51;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v42 + 8))(v62, v31);
  v47 = v63;
  v49(v63 + v52[10], v45, v46);
  sub_100EF31A4(v47, v54, type metadata accessor for DeviceEvent);
  sub_100007BAC(v64);
  return sub_100EF2FE0(v47, type metadata accessor for DeviceEvent);
}

unint64_t sub_100EF1928()
{
  v1 = *v0;
  v2 = 0x6449746E657665;
  v3 = 0xD000000000000010;
  if (v1 != 5)
  {
    v3 = 0x6144657461647075;
  }

  v4 = 0x6E6F697461636F6CLL;
  if (v1 != 3)
  {
    v4 = 0x656D686361747461;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x656372756F73;
  if (v1 != 1)
  {
    v5 = 0x6D617473656D6974;
  }

  if (*v0)
  {
    v2 = v5;
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

uint64_t sub_100EF1A18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100EF35A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100EF1A40(uint64_t a1)
{
  v2 = sub_100EF2F38();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100EF1A7C(uint64_t a1)
{
  v2 = sub_100EF2F38();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_100EF1AF4(uint64_t a1, int *a2)
{
  v4 = v2;
  v5 = type metadata accessor for UUID();
  v32 = *(v5 - 8);
  v6 = *(v32 + 64);
  __chkstk_darwin(v5);
  v31 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v31 - v10;
  v12 = type metadata accessor for DeviceEvent.AttachmentInfo(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000BC4D4(&unk_1016AA510, &unk_101393150);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v31 - v19;
  Hasher.init(_seed:)();
  if (*(v2 + 8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v21 = *v2;
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v21);
  }

  Hasher._combine(_:)(*(v2 + 9));
  v22 = a2[6];
  v23 = type metadata accessor for Date();
  sub_100EEF898(&unk_101698070, &type metadata accessor for Date);
  v33 = v23;
  dispatch thunk of Hashable.hash(into:)();
  v24 = v4 + a2[7];
  sub_100EF2004();
  sub_1000D2A70(v4 + a2[8], v20, &unk_1016AA510, &unk_101393150);
  if ((*(v13 + 48))(v20, 1, v12) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    sub_100EF3094(v20, v16, type metadata accessor for DeviceEvent.AttachmentInfo);
    Hasher._combine(_:)(1u);
    sub_100EEF898(&qword_1016967B0, &type metadata accessor for UUID);
    dispatch thunk of Hashable.hash(into:)();
    sub_1000D2A70(&v16[*(v12 + 20)], v11, &qword_1016980D0, &unk_10138F3B0);
    v25 = v32;
    if ((*(v32 + 48))(v11, 1, v5) == 1)
    {
      Hasher._combine(_:)(0);
    }

    else
    {
      v26 = v31;
      (*(v25 + 32))(v31, v11, v5);
      Hasher._combine(_:)(1u);
      dispatch thunk of Hashable.hash(into:)();
      (*(v25 + 8))(v26, v5);
    }

    sub_100EF2FE0(v16, type metadata accessor for DeviceEvent.AttachmentInfo);
  }

  v27 = v4 + a2[9];
  sub_100EEF898(&qword_1016967B0, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v28 = v27 + *(type metadata accessor for BeaconIdentifier() + 20);
  dispatch thunk of Hashable.hash(into:)();
  v29 = v4 + a2[10];
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

void sub_100EF2004()
{
  v1 = v0;
  v2 = type metadata accessor for DeviceEvent.Location(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_1000BC4D4(&qword_101699E50, &qword_1013D97C0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v15 - v9;
  sub_1000D2A70(v1, &v15 - v9, &qword_101699E50, &qword_1013D97C0);
  if ((*(v3 + 48))(v10, 1, v2) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    sub_100EF3094(v10, v6, type metadata accessor for DeviceEvent.Location);
    Hasher._combine(_:)(1u);
    v11 = *v6;
    if (*v6 == 0.0)
    {
      v11 = 0.0;
    }

    Hasher._combine(_:)(*&v11);
    v12 = v6[1];
    if (v12 == 0.0)
    {
      v12 = 0.0;
    }

    Hasher._combine(_:)(*&v12);
    v13 = v6[2];
    if (v13 == 0.0)
    {
      v13 = 0.0;
    }

    Hasher._combine(_:)(*&v13);
    v14 = *(v2 + 28);
    type metadata accessor for Date();
    sub_100EEF898(&unk_101698070, &type metadata accessor for Date);
    dispatch thunk of Hashable.hash(into:)();
    sub_100EF2FE0(v6, type metadata accessor for DeviceEvent.Location);
  }
}

void sub_100EF2240()
{
  v1 = v0;
  v2 = type metadata accessor for ObservedAdvertisement.Location(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_1000BC4D4(&qword_1016AA430, &unk_101392650);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v15 - v9;
  sub_1000D2A70(v1, &v15 - v9, &qword_1016AA430, &unk_101392650);
  if ((*(v3 + 48))(v10, 1, v2) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    sub_100EF3094(v10, v6, type metadata accessor for ObservedAdvertisement.Location);
    Hasher._combine(_:)(1u);
    v11 = *v6;
    if (*v6 == 0.0)
    {
      v11 = 0.0;
    }

    Hasher._combine(_:)(*&v11);
    v12 = v6[1];
    if (v12 == 0.0)
    {
      v12 = 0.0;
    }

    Hasher._combine(_:)(*&v12);
    v13 = v6[2];
    if (v13 == 0.0)
    {
      v13 = 0.0;
    }

    Hasher._combine(_:)(*&v13);
    v14 = *(v2 + 28);
    type metadata accessor for Date();
    sub_100EEF898(&unk_101698070, &type metadata accessor for Date);
    dispatch thunk of Hashable.hash(into:)();
    sub_100EF2FE0(v6, type metadata accessor for ObservedAdvertisement.Location);
  }
}

uint64_t sub_100EF247C(double *a1, double *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1] || a1[2] != a2[2])
  {
    return 0;
  }

  v3 = *(type metadata accessor for DeviceEvent.Location(0) + 28);

  return static Date.== infix(_:_:)();
}

uint64_t sub_100EF24FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceEvent.AttachmentInfo(0);
  v63 = *(v4 - 8);
  v64 = v4;
  v5 = *(v63 + 64);
  __chkstk_darwin(v4);
  v7 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000BC4D4(&unk_1016AA510, &unk_101393150);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v62 = &v58 - v10;
  v11 = sub_1000BC4D4(&qword_1016BFA30, &qword_1013F0B80);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v65 = &v58 - v13;
  v14 = type metadata accessor for DeviceEvent.Location(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = (&v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = sub_1000BC4D4(&qword_101699E50, &qword_1013D97C0);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = (&v58 - v21);
  v23 = sub_1000BC4D4(&qword_1016BFA38, &unk_1013F0B88);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23);
  v26 = &v58 - v25;
  v27 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      goto LABEL_26;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v27 = 1;
    }

    if (v27)
    {
      goto LABEL_26;
    }
  }

  if (*(a1 + 9) != *(a2 + 9))
  {
    goto LABEL_26;
  }

  v61 = v11;
  v28 = a2;
  v29 = type metadata accessor for DeviceEvent(0);
  v30 = *(v29 + 24);
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_26;
  }

  v58 = v7;
  v59 = v29;
  v31 = *(v29 + 28);
  v32 = *(v23 + 48);
  v60 = a1;
  v33 = a1 + v31;
  v34 = v32;
  sub_1000D2A70(v33, v26, &qword_101699E50, &qword_1013D97C0);
  sub_1000D2A70(v28 + v31, &v26[v34], &qword_101699E50, &qword_1013D97C0);
  v35 = *(v15 + 48);
  if (v35(v26, 1, v14) == 1)
  {
    v36 = v35(&v26[v34], 1, v14);
    v37 = v61;
    if (v36 == 1)
    {
      sub_10000B3A8(v26, &qword_101699E50, &qword_1013D97C0);
      goto LABEL_12;
    }

    goto LABEL_17;
  }

  sub_1000D2A70(v26, v22, &qword_101699E50, &qword_1013D97C0);
  v44 = v35(&v26[v34], 1, v14);
  v37 = v61;
  if (v44 == 1)
  {
    sub_100EF2FE0(v22, type metadata accessor for DeviceEvent.Location);
LABEL_17:
    v45 = &qword_1016BFA38;
    v46 = &unk_1013F0B88;
LABEL_24:
    v49 = v26;
LABEL_25:
    sub_10000B3A8(v49, v45, v46);
    goto LABEL_26;
  }

  sub_100EF3094(&v26[v34], v18, type metadata accessor for DeviceEvent.Location);
  if (*v22 != *v18 || v22[1] != v18[1] || v22[2] != v18[2])
  {
    sub_100EF2FE0(v18, type metadata accessor for DeviceEvent.Location);
    sub_100EF2FE0(v22, type metadata accessor for DeviceEvent.Location);
    v45 = &qword_101699E50;
    v46 = &qword_1013D97C0;
    goto LABEL_24;
  }

  v47 = *(v14 + 28);
  v48 = static Date.== infix(_:_:)();
  sub_100EF2FE0(v18, type metadata accessor for DeviceEvent.Location);
  sub_100EF2FE0(v22, type metadata accessor for DeviceEvent.Location);
  sub_10000B3A8(v26, &qword_101699E50, &qword_1013D97C0);
  if ((v48 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_12:
  v38 = v59;
  v39 = *(v59 + 32);
  v40 = *(v37 + 48);
  v41 = v65;
  sub_1000D2A70(v60 + v39, v65, &unk_1016AA510, &unk_101393150);
  sub_1000D2A70(v28 + v39, v41 + v40, &unk_1016AA510, &unk_101393150);
  v42 = v64;
  v43 = *(v63 + 48);
  if (v43(v41, 1, v64) != 1)
  {
    v52 = v62;
    sub_1000D2A70(v41, v62, &unk_1016AA510, &unk_101393150);
    if (v43(v41 + v40, 1, v42) != 1)
    {
      v53 = v58;
      sub_100EF3094(v41 + v40, v58, type metadata accessor for DeviceEvent.AttachmentInfo);
      v54 = sub_100EF2BE4(v52, v53);
      sub_100EF2FE0(v53, type metadata accessor for DeviceEvent.AttachmentInfo);
      sub_100EF2FE0(v52, type metadata accessor for DeviceEvent.AttachmentInfo);
      sub_10000B3A8(v41, &unk_1016AA510, &unk_101393150);
      if (!v54)
      {
        goto LABEL_26;
      }

      goto LABEL_32;
    }

    sub_100EF2FE0(v52, type metadata accessor for DeviceEvent.AttachmentInfo);
    goto LABEL_30;
  }

  if (v43(v41 + v40, 1, v42) != 1)
  {
LABEL_30:
    v45 = &qword_1016BFA30;
    v46 = &qword_1013F0B80;
    v49 = v41;
    goto LABEL_25;
  }

  sub_10000B3A8(v41, &unk_1016AA510, &unk_101393150);
LABEL_32:
  v55 = *(v38 + 36);
  if (static UUID.== infix(_:_:)())
  {
    v56 = *(type metadata accessor for BeaconIdentifier() + 20);
    if (static UUID.== infix(_:_:)())
    {
      v57 = *(v38 + 40);
      v50 = static Date.== infix(_:_:)();
      return v50 & 1;
    }
  }

LABEL_26:
  v50 = 0;
  return v50 & 1;
}

BOOL sub_100EF2BE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v24 - v11;
  v13 = sub_1000BC4D4(&qword_1016AF880, &unk_10138CE20);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v24 - v15;
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v25 = v8;
  v17 = *(type metadata accessor for DeviceEvent.AttachmentInfo(0) + 20);
  v18 = *(v13 + 48);
  sub_1000D2A70(a1 + v17, v16, &qword_1016980D0, &unk_10138F3B0);
  sub_1000D2A70(a2 + v17, &v16[v18], &qword_1016980D0, &unk_10138F3B0);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_10000B3A8(v16, &qword_1016980D0, &unk_10138F3B0);
      return 1;
    }

    goto LABEL_7;
  }

  sub_1000D2A70(v16, v12, &qword_1016980D0, &unk_10138F3B0);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    (*(v5 + 8))(v12, v4);
LABEL_7:
    sub_10000B3A8(v16, &qword_1016AF880, &unk_10138CE20);
    return 0;
  }

  v21 = v25;
  (*(v5 + 32))(v25, &v16[v18], v4);
  sub_100EEF898(&qword_1016984A0, &type metadata accessor for UUID);
  v22 = dispatch thunk of static Equatable.== infix(_:_:)();
  v23 = *(v5 + 8);
  v23(v21, v4);
  v23(v12, v4);
  sub_10000B3A8(v16, &qword_1016980D0, &unk_10138F3B0);
  return (v22 & 1) != 0;
}

unint64_t sub_100EF2F38()
{
  result = qword_1016BF9F0;
  if (!qword_1016BF9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BF9F0);
  }

  return result;
}

unint64_t sub_100EF2F8C()
{
  result = qword_1016BF9F8;
  if (!qword_1016BF9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BF9F8);
  }

  return result;
}

uint64_t sub_100EF2FE0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100EF3040()
{
  result = qword_1016BFA18;
  if (!qword_1016BFA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BFA18);
  }

  return result;
}

uint64_t sub_100EF3094(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_100EF30FC()
{
  result = qword_1016BFA40;
  if (!qword_1016BFA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BFA40);
  }

  return result;
}

unint64_t sub_100EF3150()
{
  result = qword_1016BFA50;
  if (!qword_1016BFA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BFA50);
  }

  return result;
}

uint64_t sub_100EF31A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_100EF320C()
{
  result = qword_1016BFA68;
  if (!qword_1016BFA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BFA68);
  }

  return result;
}

unint64_t sub_100EF3294()
{
  result = qword_1016BFA78;
  if (!qword_1016BFA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BFA78);
  }

  return result;
}

unint64_t sub_100EF32EC()
{
  result = qword_1016BFA80;
  if (!qword_1016BFA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BFA80);
  }

  return result;
}

unint64_t sub_100EF3344()
{
  result = qword_1016BFA88;
  if (!qword_1016BFA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BFA88);
  }

  return result;
}

unint64_t sub_100EF339C()
{
  result = qword_1016BFA90;
  if (!qword_1016BFA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BFA90);
  }

  return result;
}

unint64_t sub_100EF33F4()
{
  result = qword_1016BFA98;
  if (!qword_1016BFA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BFA98);
  }

  return result;
}

unint64_t sub_100EF344C()
{
  result = qword_1016BFAA0;
  if (!qword_1016BFAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BFAA0);
  }

  return result;
}

unint64_t sub_100EF34A4()
{
  result = qword_1016BFAA8;
  if (!qword_1016BFAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BFAA8);
  }

  return result;
}

unint64_t sub_100EF34FC()
{
  result = qword_1016BFAB0;
  if (!qword_1016BFAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BFAB0);
  }

  return result;
}

unint64_t sub_100EF3554()
{
  result = qword_1016BFAB8;
  if (!qword_1016BFAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BFAB8);
  }

  return result;
}

uint64_t sub_100EF35A8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6449746E657665 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656372756F73 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656D686361747461 && a2 == 0xEE006F666E49746ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000101347590 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6144657461647075 && a2 == 0xEA00000000006574)
  {

    return 6;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

unint64_t sub_100EF380C(char a1)
{
  result = 0x4E6E6F6973736573;
  switch(a1)
  {
    case 1:
      result = 0x737574617473;
      break;
    case 2:
      result = 0x636E6F4E68747561;
      break;
    case 3:
      result = 0x754E6C6169726573;
      break;
    case 4:
      result = 0x6169726553746C61;
      break;
    case 5:
      result = 0x7461747365747461;
      break;
    case 6:
      result = 0x726F737365636361;
      break;
    case 7:
      result = 0x7374726563;
      break;
    case 8:
      result = 7500643;
      break;
    case 9:
      result = 0xD000000000000011;
      break;
    case 10:
      result = 0x69634572656E776FLL;
      break;
    case 11:
      result = 0x69684372656E776FLL;
      break;
    case 12:
      result = 0x7372655663657073;
      break;
    case 13:
      result = 0x657261776D726966;
      break;
    case 14:
      result = 0x49746375646F7270;
      break;
    case 15:
      result = 0x6449726F646E6576;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100EF39EC(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016BFAC8, &qword_1013F1440);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v28[-v8 - 8];
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100EF5F64();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v38 = *v3;
  v30 = *v3;
  v29 = 0;
  sub_1001022C4(&v38, v28);
  sub_1000E3190();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v2)
  {
    sub_100016590(v30, *(&v30 + 1));
  }

  else
  {
    sub_100016590(v30, *(&v30 + 1));
    v11 = *(v3 + 2);
    LOBYTE(v30) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v37 = *(v3 + 24);
    v30 = *(v3 + 24);
    v29 = 2;
    sub_1001022C4(&v37, v28);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v30, *(&v30 + 1));
    v36 = *(v3 + 40);
    v30 = *(v3 + 40);
    v29 = 3;
    sub_1001022C4(&v36, v28);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v30, *(&v30 + 1));
    v35 = *(v3 + 56);
    v30 = *(v3 + 56);
    v29 = 4;
    sub_1001022C4(&v35, v28);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v30, *(&v30 + 1));
    v34 = *(v3 + 72);
    v30 = *(v3 + 72);
    v29 = 5;
    sub_1001022C4(&v34, v28);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v30, *(&v30 + 1));
    v33 = *(v3 + 88);
    v30 = *(v3 + 88);
    v29 = 6;
    sub_1001022C4(&v33, v28);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v30, *(&v30 + 1));
    v32 = *(v3 + 104);
    v30 = *(v3 + 104);
    v29 = 7;
    sub_1001022C4(&v32, v28);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v30, *(&v30 + 1));
    v30 = *(v3 + 120);
    v31 = v30;
    v29 = 8;
    sub_1001022C4(&v31, v28);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v30, *(&v30 + 1));
    v13 = *(v3 + 17);
    v14 = *(v3 + 18);
    LOBYTE(v30) = 9;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v15 = *(v3 + 19);
    v16 = *(v3 + 20);
    LOBYTE(v30) = 10;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v17 = *(v3 + 21);
    v18 = *(v3 + 22);
    LOBYTE(v30) = 11;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v19 = *(v3 + 23);
    v20 = *(v3 + 24);
    LOBYTE(v30) = 12;
    KeyedEncodingContainer.encode(_:forKey:)();
    v21 = *(v3 + 25);
    v22 = *(v3 + 26);
    LOBYTE(v30) = 13;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v23 = *(v3 + 27);
    v24 = *(v3 + 28);
    LOBYTE(v30) = 14;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v25 = *(v3 + 29);
    v26 = *(v3 + 30);
    LOBYTE(v30) = 15;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100EF3F28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100EF60D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100EF3F50(uint64_t a1)
{
  v2 = sub_100EF5F64();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100EF3F8C(uint64_t a1)
{
  v2 = sub_100EF5F64();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100EF3FC8(void *a1)
{
  v15 = v1[12];
  v16 = v1[13];
  v17 = v1[14];
  v18 = *(v1 + 30);
  v11 = v1[8];
  v12 = v1[9];
  v13 = v1[10];
  v14 = v1[11];
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[6];
  v10 = v1[7];
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  return sub_100EF39EC(a1);
}

uint64_t sub_100EF403C@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[7];
  v61 = a1[8];
  v5 = a1[3];
  v60 = a1[4];
  v6 = a1[5];
  v58 = a1[6];
  v59 = v6;
  v46 = v6;
  v47 = v60;
  v42 = v4;
  v43 = v58;
  v57 = v4;
  v8 = a1[2];
  v7 = a1[3];
  v48 = v5;
  v49 = v61;
  v9 = a1[10];
  v55 = a1[9];
  v56 = v7;
  v10 = a1[9];
  v44 = a1[10];
  v45 = v10;
  v11 = a1[1];
  v53 = a1[2];
  v54 = v9;
  v12 = *a1;
  v51 = a1[1];
  v52 = v12;
  v40 = *a1;
  v41 = v8;
  v39 = v11;
  v13 = *(a1 + 27);
  v50 = a1[12];
  if (v13 >> 60 == 15)
  {
    sub_1001022C4(&v61, &v38);
    sub_1001022C4(&v60, &v38);
    sub_1001022C4(&v59, &v38);
    sub_1001022C4(&v58, &v38);
    sub_1001022C4(&v57, &v38);
    sub_1001022C4(&v56, &v38);
    sub_1001022C4(&v55, &v38);
    sub_1001022C4(&v54, &v38);
    sub_100EF5DC4(&v53, &v38);
    sub_100EF5DC4(&v52, &v38);
    sub_100EF5DC4(&v51, &v38);
    sub_100EF5DC4(&v50, &v38);
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
LABEL_15:
    v38 = a1[11];
    sub_1000E0A3C();
    result = DataProtocol.intValue.getter();
    v33 = v48;
    *a2 = v49;
    *(a2 + 16) = result;
    *(a2 + 24) = v33;
    v34 = v46;
    *(a2 + 40) = v47;
    *(a2 + 56) = v34;
    v35 = v44;
    *(a2 + 72) = v45;
    *(a2 + 88) = v35;
    v36 = v42;
    *(a2 + 104) = v43;
    *(a2 + 120) = v36;
    v37 = v40;
    *(a2 + 136) = v41;
    *(a2 + 152) = v37;
    *(a2 + 168) = v39;
    *(a2 + 184) = 0x302E302E33;
    *(a2 + 192) = 0xE500000000000000;
    *(a2 + 200) = a1[12];
    *(a2 + 216) = v14;
    *(a2 + 224) = v15;
    *(a2 + 232) = v16;
    *(a2 + 240) = v17;
    return result;
  }

  v18 = *(a1 + 26);
  sub_1001022C4(&v61, &v38);
  sub_1001022C4(&v60, &v38);
  sub_1001022C4(&v59, &v38);
  sub_1001022C4(&v58, &v38);
  sub_1001022C4(&v57, &v38);
  sub_1001022C4(&v56, &v38);
  sub_1001022C4(&v55, &v38);
  sub_1001022C4(&v54, &v38);
  sub_100EF5DC4(&v53, &v38);
  sub_100EF5DC4(&v52, &v38);
  sub_100EF5DC4(&v51, &v38);
  sub_100EF5DC4(&v50, &v38);
  v19 = sub_100313B54(v18, v13);
  v21 = v20;
  v14 = Data.hexString.getter();
  v15 = v22;
  result = sub_100016590(v19, v21);
  v24 = v13 >> 62;
  if ((v13 >> 62) > 1)
  {
    if (v24 != 2)
    {
LABEL_14:
      v29 = Data.subdata(in:)();
      v31 = v30;
      v16 = Data.hexString.getter();
      v17 = v32;
      sub_100016590(v29, v31);
      goto LABEL_15;
    }

    v26 = *(v18 + 16);
    v25 = *(v18 + 24);
    v27 = __OFSUB__(v25, v26);
    v28 = v25 - v26;
    if (!v27)
    {
LABEL_12:
      if (v28 < -1)
      {
        __break(1u);
      }

      goto LABEL_14;
    }

    __break(1u);
  }

  else if (!v24)
  {
    goto LABEL_14;
  }

  LODWORD(v28) = HIDWORD(v18) - v18;
  if (!__OFSUB__(HIDWORD(v18), v18))
  {
    v28 = v28;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_100EF4374(uint64_t a1, uint64_t a2)
{
  v2[288] = a2;
  v2[287] = a1;
  v3 = type metadata accessor for HashAlgorithm();
  v2[289] = v3;
  v4 = *(v3 - 8);
  v2[290] = v4;
  v5 = *(v4 + 64) + 15;
  v2[291] = swift_task_alloc();
  v6 = type metadata accessor for Locale();
  v2[292] = v6;
  v7 = *(v6 - 8);
  v2[293] = v7;
  v8 = *(v7 + 64) + 15;
  v2[294] = swift_task_alloc();
  v9 = type metadata accessor for Date();
  v2[295] = v9;
  v10 = *(v9 - 8);
  v2[296] = v10;
  v11 = *(v10 + 64) + 15;
  v2[297] = swift_task_alloc();

  return _swift_task_switch(sub_100EF44F0, 0, 0);
}

void sub_100EF44F0()
{
  v1 = sub_100907E70(_swiftEmptyArrayStorage);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(1702195828, 0xE400000000000000, 0xD00000000000001BLL, 0x800000010134EA20, isUniquelyReferenced_nonNull_native);
  v3 = [objc_opt_self() currentDevice];
  if (!v3)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = v3;
  v5 = [v3 serverFriendlyDescription];

  if (!v5)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v6 = *(v0 + 2376);
  v7 = *(v0 + 2368);
  v8 = *(v0 + 2360);
  v9 = *(v0 + 2352);
  v57 = *(v0 + 2344);
  v58 = *(v0 + 2336);
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(v10, v12, 0xD000000000000011, 0x800000010134EA40, v13);
  v14 = v1;
  Date.init()();
  v15 = Date.epoch.getter();
  (*(v7 + 8))(v6, v8);
  *(v0 + 2280) = v15;
  v16 = dispatch thunk of CustomStringConvertible.description.getter();
  v18 = v17;
  v19 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(v16, v18, 0xD000000000000015, 0x800000010134EA60, v19);
  *(v0 + 2288) = 1;
  v20 = dispatch thunk of CustomStringConvertible.description.getter();
  v22 = v21;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v24 = sub_100FFACA0(v20, v22, 0xD000000000000013, 0x800000010134EA80, v23);
  v25 = v14;
  v26 = sub_100EB2DF0(v24);
  v28 = v27;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(v26, v28, 0x6567412D72657355, 0xEA0000000000746ELL, v29);
  static Locale.current.getter();
  v30 = Locale.acceptLanguageCode.getter();
  v32 = v31;
  (*(v57 + 8))(v9, v58);
  v33 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(v30, v32, 0x4C2D747065636341, 0xEF65676175676E61, v33);
  v34 = v25;
  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v35 = qword_10177C218;
  v36 = [objc_opt_self() sharedInstance];
  v37 = [v36 isInternalBuild];

  if (v37)
  {
    v38 = String._bridgeToObjectiveC()();
    v39 = [v35 BOOLForKey:v38];

    if (v39)
    {
      v40 = swift_isUniquelyReferenced_nonNull_native();
      sub_100FFACA0(0x7465722C6C616572, 0xEF302D726F727245, 0xD000000000000012, 0x800000010134F950, v40);
    }
  }

  *(v0 + 2384) = v34;
  v41 = *(v0 + 2296);
  sub_10093CBF0(v41, v0 + 2000);
  sub_100EF403C(v41, v0 + 16);
  sub_100EF5CB4(v41);
  v42 = type metadata accessor for JSONEncoder();
  v43 = *(v42 + 48);
  v44 = *(v42 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  v45 = *(v0 + 224);
  *(v0 + 456) = *(v0 + 208);
  *(v0 + 472) = v45;
  *(v0 + 488) = *(v0 + 240);
  *(v0 + 504) = *(v0 + 256);
  v46 = *(v0 + 160);
  *(v0 + 392) = *(v0 + 144);
  *(v0 + 408) = v46;
  v47 = *(v0 + 192);
  *(v0 + 424) = *(v0 + 176);
  *(v0 + 440) = v47;
  v48 = *(v0 + 96);
  *(v0 + 328) = *(v0 + 80);
  *(v0 + 344) = v48;
  v49 = *(v0 + 128);
  *(v0 + 360) = *(v0 + 112);
  *(v0 + 376) = v49;
  v50 = *(v0 + 32);
  *(v0 + 264) = *(v0 + 16);
  *(v0 + 280) = v50;
  v51 = *(v0 + 64);
  *(v0 + 296) = *(v0 + 48);
  *(v0 + 312) = v51;
  sub_100EF5D08();
  v52 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  *(v0 + 2392) = 0;
  *(v0 + 2400) = v52;
  *(v0 + 2408) = v53;
  v54 = v52;
  v55 = v53;

  sub_100017D5C(v54, v55);
  v56 = swift_task_alloc();
  *(v0 + 2416) = v56;
  *v56 = v0;
  v56[1] = sub_100EF4C8C;

  sub_100EA77D4();
}

uint64_t sub_100EF4C8C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 2416);
  v6 = *v2;
  *(v3 + 2424) = a1;
  *(v3 + 2432) = a2;

  return _swift_task_switch(sub_100EF4D90, 0, 0);
}

uint64_t sub_100EF4D90()
{
  v1 = *(v0 + 2432);
  v2 = *(v0 + 2424);
  v3 = *(v0 + 2392);
  v4 = *(v0 + 2328);
  v5 = *(v0 + 2320);
  v6 = *(v0 + 2312);
  *(v0 + 2264) = v2;
  *(v0 + 2272) = v1;
  *(v0 + 2248) = &type metadata for Data;
  *(v0 + 2256) = &protocol witness table for Data;
  *(v0 + 2224) = *(v0 + 2400);
  v7 = sub_1000035D0((v0 + 2224), &type metadata for Data);
  v8 = *v7;
  v9 = v7[1];
  sub_100017D5C(v2, v1);
  sub_100017DB0(v8, v9);
  sub_100016590(v2, v1);
  sub_100007BAC((v0 + 2224));
  *(v0 + 2440) = *(v0 + 2264);
  *(v0 + 2448) = *(v0 + 2272);
  (*(v5 + 104))(v4, enum case for HashAlgorithm.sha256(_:), v6);
  v10 = Data.hash(algorithm:)();
  v12 = v11;
  *(v0 + 2456) = v10;
  *(v0 + 2464) = v11;
  (*(v5 + 8))(v4, v6);
  v13 = swift_task_alloc();
  *(v0 + 2472) = v13;
  *v13 = v0;
  v13[1] = sub_100EF4F48;
  v14 = *(v0 + 2304);

  return sub_100EA87F4(v10, v12, v14);
}

uint64_t sub_100EF4F48(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 2472);
  v6 = *v2;
  *(*v2 + 2480) = v1;

  if (v1)
  {
    v7 = sub_100EF55EC;
  }

  else
  {
    v8 = v4[308];
    v9 = v4[307];
    v4[311] = a1;
    sub_100016590(v9, v8);
    v7 = sub_100EF507C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100EF507C()
{
  v61 = v0;
  v1 = v0[311];
  v2 = v0[310];
  v3 = v0[306];
  v4 = v0[305];
  v5 = v0[298];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v60[0] = v5;
  sub_10028709C(v1, sub_100EB00A4, 0, isUniquelyReferenced_nonNull_native, v60);

  sub_100016590(v4, v3);
  v59 = v60[0];
  if (qword_1016950E0 == -1)
  {
    goto LABEL_2;
  }

LABEL_23:
  swift_once();
LABEL_2:
  v7 = type metadata accessor for Logger();
  sub_1000076D4(v7, qword_10177C448);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Pairing lock header:", v10, 2u);
  }

  v56 = v0 + 188;
  v57 = v0;

  v11 = -1;
  v12 = -1 << *(v59 + 32);
  if (-v12 < 64)
  {
    v11 = ~(-1 << -v12);
  }

  v13 = v11 & *(v59 + 64);
  v0 = ((63 - v12) >> 6);

  v14 = 0;
  if (v13)
  {
    while (2)
    {
      v15 = v14;
LABEL_13:
      v16 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v17 = (v15 << 10) | (16 * v16);
      v18 = (*(v59 + 48) + v17);
      v19 = *v18;
      v20 = v18[1];
      v21 = (*(v59 + 56) + v17);
      v22 = *v21;
      v23 = v21[1];

      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v24, v25))
      {
        v58 = v22;
        v26 = swift_slowAlloc();
        v60[0] = swift_slowAlloc();
        *v26 = 136315394;
        v27 = sub_1000136BC(v19, v20, v60);

        *(v26 + 4) = v27;
        *(v26 + 12) = 2080;
        v28 = sub_1000136BC(v58, v23, v60);

        *(v26 + 14) = v28;
        _os_log_impl(&_mh_execute_header, v24, v25, "%s: %s", v26, 0x16u);
        swift_arrayDestroy();

        v14 = v15;
        if (v13)
        {
          continue;
        }
      }

      else
      {

        v14 = v15;
        if (v13)
        {
          continue;
        }
      }

      break;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_23;
    }

    if (v15 >= v0)
    {
      break;
    }

    v13 = *(v59 + 64 + 8 * v15);
    ++v14;
    if (v13)
    {
      goto LABEL_13;
    }
  }

  sub_100EF5D5C((v57 + 2), (v57 + 157));
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.debug.getter();
  sub_100EF5D94((v57 + 2));
  v31 = os_log_type_enabled(v29, v30);
  v32 = v57[288];
  v33 = v57[287];
  if (v31)
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v60[0] = v35;
    *v34 = 136315138;
    v36 = *(v57 + 14);
    *(v56 + 12) = *(v57 + 13);
    *(v56 + 13) = v36;
    *(v56 + 14) = *(v57 + 15);
    v56[30] = v57[32];
    v37 = *(v57 + 10);
    *(v56 + 8) = *(v57 + 9);
    *(v56 + 9) = v37;
    v38 = *(v57 + 12);
    *(v56 + 10) = *(v57 + 11);
    *(v56 + 11) = v38;
    v39 = *(v57 + 6);
    *(v56 + 4) = *(v57 + 5);
    *(v56 + 5) = v39;
    v40 = *(v57 + 8);
    *(v56 + 6) = *(v57 + 7);
    *(v56 + 7) = v40;
    v41 = *(v57 + 2);
    *v56 = *(v57 + 1);
    *(v56 + 1) = v41;
    v42 = *(v57 + 4);
    *(v56 + 2) = *(v57 + 3);
    *(v56 + 3) = v42;
    sub_100EF5D5C((v57 + 2), (v57 + 219));
    v43 = String.init<A>(describing:)();
    v45 = sub_1000136BC(v43, v44, v60);

    *(v34 + 4) = v45;
    _os_log_impl(&_mh_execute_header, v29, v30, "Pairing lock body %s", v34, 0xCu);
    sub_100007BAC(v35);

    sub_100EF5D94((v57 + 2));

    sub_100EF5CB4(v33);
  }

  else
  {
    v46 = v57[288];

    sub_100EF5CB4(v33);

    sub_100EF5D94((v57 + 2));
  }

  v47 = v57[301];
  v48 = v57[300];

  sub_100017D5C(v48, v47);

  sub_100016590(v48, v47);
  v49 = v57[301];
  v50 = v57[300];
  v51 = v57[297];
  v52 = v57[294];
  v53 = v57[291];

  v54 = v57[1];

  return v54(v59, v50, v49);
}

uint64_t sub_100EF55EC()
{
  v66 = v0;
  v1 = v0[306];
  v2 = v0[305];
  sub_100016590(v0[307], v0[308]);
  sub_100016590(v2, v1);
  v3 = &qword_101695000;
  if (qword_1016950E0 == -1)
  {
    goto LABEL_2;
  }

LABEL_28:
  swift_once();
LABEL_2:
  v4 = v0[310];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177C448);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[310];
  if (v8)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138543362;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v12;
    *v11 = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to generate attestation header: %{public}@.", v10, 0xCu);
    sub_100288C6C(v11);
  }

  else
  {
  }

  v63 = v0[298];
  if (v3[28] != -1)
  {
    swift_once();
  }

  sub_1000076D4(v5, qword_10177C448);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Pairing lock header:", v15, 2u);
  }

  v64 = v0;
  v61 = v0 + 188;

  v16 = -1;
  v17 = -1 << *(v63 + 32);
  if (-v17 < 64)
  {
    v16 = ~(-1 << -v17);
  }

  v18 = v16 & *(v63 + 64);
  v0 = ((63 - v17) >> 6);

  v19 = 0;
  if (v18)
  {
    while (2)
    {
      v20 = v19;
LABEL_18:
      v21 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v22 = (v20 << 10) | (16 * v21);
      v23 = (*(v63 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v63 + 56) + v22);
      v27 = *v26;
      v3 = v26[1];

      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v28, v29))
      {
        v62 = v27;
        v30 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        *v30 = 136315394;
        v31 = sub_1000136BC(v24, v25, &v65);

        *(v30 + 4) = v31;
        *(v30 + 12) = 2080;
        v32 = sub_1000136BC(v62, v3, &v65);

        *(v30 + 14) = v32;
        _os_log_impl(&_mh_execute_header, v28, v29, "%s: %s", v30, 0x16u);
        swift_arrayDestroy();

        v19 = v20;
        if (v18)
        {
          continue;
        }
      }

      else
      {

        v19 = v20;
        if (v18)
        {
          continue;
        }
      }

      break;
    }
  }

  while (1)
  {
    v20 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
      goto LABEL_28;
    }

    if (v20 >= v0)
    {
      break;
    }

    v18 = *(v63 + 64 + 8 * v20);
    ++v19;
    if (v18)
    {
      goto LABEL_18;
    }
  }

  v33 = v64;
  sub_100EF5D5C((v64 + 2), (v64 + 157));
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.debug.getter();
  sub_100EF5D94((v64 + 2));
  v36 = os_log_type_enabled(v34, v35);
  v37 = v64[288];
  v38 = v64[287];
  if (v36)
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v65 = v40;
    *v39 = 136315138;
    v41 = *(v64 + 14);
    *(v61 + 12) = *(v64 + 13);
    *(v61 + 13) = v41;
    *(v61 + 14) = *(v64 + 15);
    v61[30] = v64[32];
    v42 = *(v64 + 10);
    *(v61 + 8) = *(v64 + 9);
    *(v61 + 9) = v42;
    v43 = *(v64 + 12);
    *(v61 + 10) = *(v64 + 11);
    *(v61 + 11) = v43;
    v44 = *(v64 + 6);
    *(v61 + 4) = *(v64 + 5);
    *(v61 + 5) = v44;
    v45 = *(v64 + 8);
    *(v61 + 6) = *(v64 + 7);
    *(v61 + 7) = v45;
    v46 = *(v64 + 2);
    *v61 = *(v64 + 1);
    *(v61 + 1) = v46;
    v47 = *(v64 + 4);
    *(v61 + 2) = *(v64 + 3);
    *(v61 + 3) = v47;
    sub_100EF5D5C((v64 + 2), (v64 + 219));
    v48 = String.init<A>(describing:)();
    v50 = sub_1000136BC(v48, v49, &v65);

    *(v39 + 4) = v50;
    _os_log_impl(&_mh_execute_header, v34, v35, "Pairing lock body %s", v39, 0xCu);
    sub_100007BAC(v40);
    v33 = v64;

    sub_100EF5D94((v64 + 2));

    sub_100EF5CB4(v38);
  }

  else
  {
    v51 = v64[288];

    sub_100EF5CB4(v38);

    sub_100EF5D94((v64 + 2));
  }

  v52 = v33[301];
  v53 = v33[300];

  sub_100017D5C(v53, v52);

  sub_100016590(v53, v52);
  v54 = v33[301];
  v55 = v33[300];
  v56 = v33[297];
  v57 = v33[294];
  v58 = v33[291];

  v59 = v33[1];

  return v59(v63, v55, v54);
}

unint64_t sub_100EF5D08()
{
  result = qword_1016BFAC0;
  if (!qword_1016BFAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BFAC0);
  }

  return result;
}

uint64_t sub_100EF5DC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016A0AC0, &unk_1013926A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 sub_100EF5E34(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  v8 = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  result = a2[12];
  v12 = a2[13];
  v13 = a2[14];
  *(a1 + 240) = *(a2 + 30);
  *(a1 + 208) = v12;
  *(a1 + 224) = v13;
  *(a1 + 192) = result;
  return result;
}

uint64_t sub_100EF5E80(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 248))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 192);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100EF5EC8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 248) = 1;
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
      *(result + 192) = (a2 - 1);
      return result;
    }

    *(result + 248) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100EF5F64()
{
  result = qword_1016BFAD0;
  if (!qword_1016BFAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BFAD0);
  }

  return result;
}

unint64_t sub_100EF5FCC()
{
  result = qword_1016BFAD8;
  if (!qword_1016BFAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BFAD8);
  }

  return result;
}

unint64_t sub_100EF6024()
{
  result = qword_1016BFAE0;
  if (!qword_1016BFAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BFAE0);
  }

  return result;
}

unint64_t sub_100EF607C()
{
  result = qword_1016BFAE8;
  if (!qword_1016BFAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BFAE8);
  }

  return result;
}

uint64_t sub_100EF60D0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4E6E6F6973736573 && a2 == 0xEC00000065636E6FLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x737574617473 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x636E6F4E68747561 && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x754E6C6169726573 && a2 == 0xEC0000007265626DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6169726553746C61 && a2 == 0xEF7265626D754E6CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7461747365747461 && a2 == 0xEB000000006E6F69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x726F737365636361 && a2 == 0xED00006E67695379 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x7374726563 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 7500643 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010134F970 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x69634572656E776FLL && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x69684372656E776FLL && a2 == 0xEB00000000644970 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x7372655663657073 && a2 == 0xEB000000006E6F69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x657261776D726966 && a2 == 0xEF6E6F6973726556 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x49746375646F7270 && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x6449726F646E6576 && a2 == 0xE800000000000000)
  {

    return 15;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 15;
    }

    else
    {
      return 16;
    }
  }
}

uint64_t type metadata accessor for PencilPairingLockAckResponse()
{
  result = qword_1016BFB48;
  if (!qword_1016BFB48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100EF6670()
{
  sub_1003955F8();
  if (v0 <= 0x3F)
  {
    sub_100395648();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100EF66F4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v21 - v6;
  v8 = sub_1000BC4D4(&qword_1016BFB80, &qword_1013F15A8);
  v23 = *(v8 - 8);
  v24 = v8;
  v9 = *(v23 + 64);
  __chkstk_darwin(v8);
  v11 = &v21 - v10;
  v12 = type metadata accessor for PencilPairingLockAckResponse();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100EF6B58();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v17 = v15;
  v18 = v23;
  v26 = 0;
  sub_1000E307C();
  v19 = v24;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  *v17 = v25;
  type metadata accessor for UUID();
  LOBYTE(v25) = 1;
  sub_100395BEC();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v18 + 8))(v11, v19);
  sub_10012C154(v7, v17 + *(v12 + 20));
  sub_100EF6BAC(v17, v22);
  sub_100007BAC(a1);
  return sub_100EF6C10(v17);
}

uint64_t sub_100EF69AC()
{
  if (*v0)
  {
    result = 0x6449616E6D66;
  }

  else
  {
    result = 0x754E6C6169726573;
  }

  *v0;
  return result;
}

uint64_t sub_100EF69EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x754E6C6169726573 && a2 == 0xEC0000007265626DLL;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6449616E6D66 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_100EF6AC8(uint64_t a1)
{
  v2 = sub_100EF6B58();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100EF6B04(uint64_t a1)
{
  v2 = sub_100EF6B58();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_100EF6B58()
{
  result = qword_1016BFB88;
  if (!qword_1016BFB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BFB88);
  }

  return result;
}

uint64_t sub_100EF6BAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PencilPairingLockAckResponse();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100EF6C10(uint64_t a1)
{
  v2 = type metadata accessor for PencilPairingLockAckResponse();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100EF6C80()
{
  result = qword_1016BFB90;
  if (!qword_1016BFB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BFB90);
  }

  return result;
}

unint64_t sub_100EF6CD8()
{
  result = qword_1016BFB98;
  if (!qword_1016BFB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BFB98);
  }

  return result;
}

unint64_t sub_100EF6D30()
{
  result = qword_1016BFBA0;
  if (!qword_1016BFBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BFBA0);
  }

  return result;
}

uint64_t sub_100EF6D84()
{
  v1 = OBJC_IVAR____TtC12searchpartyd18FMRemoteUILauncher_alertHandle;
  v2 = *(v0 + OBJC_IVAR____TtC12searchpartyd18FMRemoteUILauncher_alertHandle);
  if (v2)
  {
    [v2 unregisterObserver:*(v0 + OBJC_IVAR____TtC12searchpartyd18FMRemoteUILauncher_alertHandleDelegateTrampoline)];
  }

  sub_100EF8B8C(v0 + OBJC_IVAR____TtC12searchpartyd18FMRemoteUILauncher_alertType, type metadata accessor for FMRemoteUILauncher.AlertType);

  v3 = OBJC_IVAR____TtC12searchpartyd18FMRemoteUILauncher_logger;
  v4 = type metadata accessor for Logger();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100EF6E8C()
{
  result = type metadata accessor for FMRemoteUILauncher.AlertType(319);
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for Logger();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_100EF6F7C()
{
  v1 = type metadata accessor for Logger();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  sub_100EF7330();
  v15 = [objc_allocWithZone(SBSRemoteAlertConfigurationContext) init];
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v15 setUserInfo:isa];

  v4 = objc_allocWithZone(SBSRemoteAlertDefinition);
  v5 = String._bridgeToObjectiveC()();
  v6 = String._bridgeToObjectiveC()();
  v7 = [v4 initWithServiceName:v5 viewControllerClassName:v6];

  v8 = [objc_opt_self() newHandleWithDefinition:v7 configurationContext:v15];
  v9 = OBJC_IVAR____TtC12searchpartyd18FMRemoteUILauncher_alertHandle;
  v10 = *(v0 + OBJC_IVAR____TtC12searchpartyd18FMRemoteUILauncher_alertHandle);
  *(v0 + OBJC_IVAR____TtC12searchpartyd18FMRemoteUILauncher_alertHandle) = v8;
  v11 = v8;

  if (v11)
  {
    [v11 registerObserver:*(v0 + OBJC_IVAR____TtC12searchpartyd18FMRemoteUILauncher_alertHandleDelegateTrampoline)];
  }

  v12 = [objc_allocWithZone(SBSRemoteAlertActivationContext) init];
  v13 = *(v0 + v9);
  if (v13)
  {
    v14 = v13;
    v12 = v12;
    [v14 activateWithContext:v12];
  }

  else
  {
  }
}

unint64_t sub_100EF7330()
{
  v1 = type metadata accessor for LostModeAlertInfo();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FMRemoteUILauncher.AlertType(0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = (v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_10090B2F0(_swiftEmptyArrayStorage);
  sub_100C09D38(v0 + OBJC_IVAR____TtC12searchpartyd18FMRemoteUILauncher_alertType, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_100EF8B28(v8, v4);
    *&v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(&v43 + 1) = v20;
    AnyHashable.init<A>(_:)();
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v44 = &type metadata for String;
    *&v43 = v21;
    *(&v43 + 1) = v22;
    sub_1001E6224(&v43, &v45);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v42[0] = v9;
    sub_100FFAB54(&v45, v47, isUniquelyReferenced_nonNull_native);
    sub_100476E48(v47);
    v24 = *&v42[0];
    *&v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(&v43 + 1) = v25;
    AnyHashable.init<A>(_:)();
    v26 = sub_100DE3140();
    v44 = sub_1000BC4D4(&qword_1016BFE60, &qword_1013D6B40);
    *&v43 = v26;
    sub_1001E6224(&v43, &v45);
    v27 = swift_isUniquelyReferenced_nonNull_native();
    *&v42[0] = v24;
    sub_100FFAB54(&v45, v47, v27);
    sub_100476E48(v47);
    sub_100EF8B8C(v4, type metadata accessor for LostModeAlertInfo);
LABEL_6:
    v19 = *&v42[0];
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload != 1)
  {
    *&v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(&v43 + 1) = v28;
    AnyHashable.init<A>(_:)();
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v44 = &type metadata for String;
    *&v43 = v29;
    *(&v43 + 1) = v30;
    sub_1001E6224(&v43, &v45);
    v31 = swift_isUniquelyReferenced_nonNull_native();
    *&v42[0] = v9;
    sub_100FFAB54(&v45, v47, v31);
    sub_100476E48(v47);
    v32 = *&v42[0];
    *&v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(&v43 + 1) = v33;
    AnyHashable.init<A>(_:)();
    v34 = sub_10090B2F0(_swiftEmptyArrayStorage);
    v44 = sub_1000BC4D4(&qword_1016BFE50, &unk_1013F17E0);
    *&v43 = v34;
    sub_1001E6224(&v43, &v45);
    v35 = swift_isUniquelyReferenced_nonNull_native();
    *&v42[0] = v32;
    sub_100FFAB54(&v45, v47, v35);
    sub_100476E48(v47);
    goto LABEL_6;
  }

  sub_10000A748(v8, v47);
  *&v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(&v45 + 1) = v11;
  AnyHashable.init<A>(_:)();
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v46 = &type metadata for String;
  *&v45 = v12;
  *(&v45 + 1) = v13;
  sub_1001E6224(&v45, v42);
  v14 = swift_isUniquelyReferenced_nonNull_native();
  v48 = v9;
  sub_100FFAB54(v42, &v43, v14);
  sub_100476E48(&v43);
  v15 = v48;
  *&v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(&v45 + 1) = v16;
  AnyHashable.init<A>(_:)();
  sub_1000035D0(v47, v47[3]);
  v17 = dispatch thunk of PairingUIInfoType.dictionary.getter();
  v46 = sub_1000BC4D4(&qword_1016BFE60, &qword_1013D6B40);
  *&v45 = v17;
  sub_1001E6224(&v45, v42);
  v18 = swift_isUniquelyReferenced_nonNull_native();
  v48 = v15;
  sub_100FFAB54(v42, &v43, v18);
  sub_100476E48(&v43);
  v19 = v48;
  sub_100007BAC(v47);
LABEL_7:
  *&v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(&v45 + 1) = v36;
  AnyHashable.init<A>(_:)();
  if (!*(v19 + 16) || (v37 = sub_100771E5C(v47), (v38 & 1) == 0))
  {
    sub_100476E48(v47);
LABEL_15:
    sub_100EF8AD4();
    swift_allocError();
    swift_willThrow();

    return v19;
  }

  sub_100013894(*(v19 + 56) + 32 * v37, &v43);
  sub_100476E48(v47);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_15;
  }

  v39 = v45;

  v40 = HIBYTE(*(&v39 + 1)) & 0xFLL;
  if ((*(&v39 + 1) & 0x2000000000000000) == 0)
  {
    v40 = v39 & 0xFFFFFFFFFFFFLL;
  }

  if (!v40)
  {
    goto LABEL_15;
  }

  return v19;
}

uint64_t sub_100EF78D4()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_1016BFBB0);
  v1 = sub_1000076D4(v0, qword_1016BFBB0);
  if (qword_101694FA0 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_10177C288);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100EF799C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return _swift_task_switch(sub_100EF79BC, 0, 0);
}

uint64_t sub_100EF79BC()
{
  v1 = *(v0 + 24) + OBJC_IVAR____TtC12searchpartydP33_B6591815384A8DEB8885452F1FDF33D538RemoteHandleObserverDelegateTrampoline_delegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 32) = Strong;
  if (Strong)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 16);
    v10 = (v5 + *v5);
    v6 = v5[1];
    v7 = swift_task_alloc();
    *(v0 + 40) = v7;
    *v7 = v0;
    v7[1] = sub_100EF7B3C;

    return v10(ObjectType, v3);
  }

  else
  {
    **(v0 + 16) = 1;
    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_100EF7B3C()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v4 = *v0;

  swift_unknownObjectRelease();

  return _swift_task_switch(sub_100EF8C54, 0, 0);
}

uint64_t sub_100EF7CE0(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v7 = v4;
  v9 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v24 - v11;
  if (qword_101694F98 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_1000076D4(v13, qword_1016BFBB0);
  v14 = a1;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 138412290;
    *(v17 + 4) = v14;
    *v18 = v14;
    v19 = v14;
    _os_log_impl(&_mh_execute_header, v15, v16, a2, v17, 0xCu);
    sub_100288C6C(v18);
  }

  v20 = type metadata accessor for TaskPriority();
  (*(*(v20 - 8) + 56))(v12, 1, 1, v20);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = v7;
  v22 = v7;
  sub_10025F6E0(0, 0, v12, a4, v21);
}

uint64_t sub_100EF7EF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return _swift_task_switch(sub_100EF7F18, 0, 0);
}

uint64_t sub_100EF7F18()
{
  v1 = *(v0 + 24) + OBJC_IVAR____TtC12searchpartydP33_B6591815384A8DEB8885452F1FDF33D538RemoteHandleObserverDelegateTrampoline_delegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 32) = Strong;
  if (Strong)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 24);
    v10 = (v5 + *v5);
    v6 = v5[1];
    v7 = swift_task_alloc();
    *(v0 + 40) = v7;
    *v7 = v0;
    v7[1] = sub_100EF7B3C;

    return v10(ObjectType, v3);
  }

  else
  {
    **(v0 + 16) = 1;
    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_100EF8124(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v23 - v8;
  if (qword_101694F98 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_1000076D4(v10, qword_1016BFBB0);
  v11 = a1;
  swift_errorRetain();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412546;
    *(v14 + 4) = v11;
    *v15 = v11;
    *(v14 + 12) = 2112;
    v16 = v11;
    if (a2)
    {
      swift_errorRetain();
      v17 = _swift_stdlib_bridgeErrorToNSError();
      v18 = v17;
    }

    else
    {
      v17 = 0;
      v18 = 0;
    }

    *(v14 + 14) = v17;
    v15[1] = v18;
    _os_log_impl(&_mh_execute_header, v12, v13, "Did invalidate handle %@ with error %@", v14, 0x16u);
    sub_1000BC4D4(&qword_10169BB30, &unk_10138B3C0);
    swift_arrayDestroy();
  }

  v19 = type metadata accessor for TaskPriority();
  (*(*(v19 - 8) + 56))(v9, 1, 1, v19);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = v3;
  v21 = v3;
  sub_10025F6E0(0, 0, v9, &unk_1013F17B0, v20);
}

uint64_t sub_100EF83A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return _swift_task_switch(sub_100EF83C4, 0, 0);
}

uint64_t sub_100EF83C4()
{
  v1 = *(v0 + 24) + OBJC_IVAR____TtC12searchpartydP33_B6591815384A8DEB8885452F1FDF33D538RemoteHandleObserverDelegateTrampoline_delegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 32) = Strong;
  if (Strong)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 32);
    v10 = (v5 + *v5);
    v6 = v5[1];
    v7 = swift_task_alloc();
    *(v0 + 40) = v7;
    *v7 = v0;
    v7[1] = sub_100EF8544;

    return v10(ObjectType, v3);
  }

  else
  {
    **(v0 + 16) = 1;
    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_100EF8544()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v4 = *v0;

  swift_unknownObjectRelease();

  return _swift_task_switch(sub_100EF865C, 0, 0);
}

unint64_t sub_100EF875C()
{
  result = type metadata accessor for LostModeAlertInfo();
  if (v1 <= 0x3F)
  {
    result = sub_100EF87D0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_100EF87D0()
{
  result = qword_1016BFE20;
  if (!qword_1016BFE20)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1016BFE20);
  }

  return result;
}

uint64_t sub_100EF8834()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177C288);
  sub_1000076D4(v0, qword_10177C288);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100EF88B8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014650;

  return sub_100EF83A4(a1, v4, v5, v6);
}

uint64_t sub_100EF896C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014744;

  return sub_100EF7EF8(a1, v4, v5, v6);
}

uint64_t sub_100EF8A20(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014744;

  return sub_100EF799C(a1, v4, v5, v6);
}

unint64_t sub_100EF8AD4()
{
  result = qword_1016BFE58;
  if (!qword_1016BFE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BFE58);
  }

  return result;
}

uint64_t sub_100EF8B28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LostModeAlertInfo();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100EF8B8C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100EF8C00()
{
  result = qword_1016BFE68;
  if (!qword_1016BFE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BFE68);
  }

  return result;
}

id sub_100EF8CB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v5 = result;
    v6 = a3();

    if (!v6)
    {
      return 0;
    }

    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100EF8D38()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 isInternalBuild];

  return v1;
}

id sub_100EF8D90@<X0>(uint64_t *a1@<X8>)
{
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v3 = result;
    v4 = MobileGestalt_copy_uniqueDeviceID_obj();

    if (v4)
    {
      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v7 = v6;
    }

    else
    {
      v5 = 0;
      v7 = 0xE000000000000000;
    }

    v8 = HIBYTE(v7) & 0xF;
    if ((v7 & 0x2000000000000000) == 0)
    {
      v8 = v5 & 0xFFFFFFFFFFFFLL;
    }

    if (v8)
    {
      *a1 = v5;
      a1[1] = v7;
      v9 = type metadata accessor for StableIdentifier();
      swift_storeEnumTagMultiPayload();
      v10 = *(*(v9 - 8) + 56);
      v11 = a1;
      v12 = 0;
      v13 = v9;
    }

    else
    {

      static os_log_type_t.error.getter();
      if (qword_101695028 != -1)
      {
        swift_once();
      }

      os_log(_:dso:log:_:_:)();
      v14 = type metadata accessor for StableIdentifier();
      v10 = *(*(v14 - 8) + 56);
      v13 = v14;
      v11 = a1;
      v12 = 1;
    }

    return v10(v11, v12, 1, v13);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100EF8F2C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v23 - v4;
  v6 = type metadata accessor for String.Encoding();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = 37;
  v10 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v10 + 16) = 37;
  *(v10 + 48) = 0u;
  *(v10 + 61) = 0;
  *(v10 + 32) = 0u;
  if (sysctlbyname("kern.bootsessionuuid", (v10 + 32), &v23, 0, 0))
  {
    v15 = errno.getter();
    if (!strerror(v15))
    {
      __break(1u);
    }

    goto LABEL_10;
  }

  static String.Encoding.ascii.getter();
  sub_100EF92EC(v10, v9);
  if (!v11)
  {
    while (1)
    {
LABEL_9:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
LABEL_10:
      v16 = String.init(utf8String:)();
      if (v17)
      {
        v18 = v16;
      }

      else
      {
        v18 = 0x6E776F6E6B6E55;
      }

      if (v17)
      {
        v19 = v17;
      }

      else
      {
        v19 = 0xE700000000000000;
      }

      static os_log_type_t.error.getter();
      sub_10039722C();
      v20 = static OS_os_log.default.getter();
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_10138BBE0;
      *(v21 + 56) = &type metadata for String;
      *(v21 + 64) = sub_100008C00();
      *(v21 + 32) = v18;
      *(v21 + 40) = v19;
      v22 = errno.getter();
      *(v21 + 96) = &type metadata for Int32;
      *(v21 + 104) = &protocol witness table for Int32;
      *(v21 + 72) = v22;
      os_log(_:dso:log:_:_:)();
    }
  }

  UUID.init(uuidString:)();
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v5, 1, v12) == 1)
  {
    sub_1002EA198(v5);
    goto LABEL_9;
  }

  return (*(v13 + 32))(a1, v5, v12);
}

uint64_t sub_100EF92A0()
{
  v0 = sub_1000BC4D4(&qword_1016BFE78, &unk_1013F18E0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = SynchronousCache.init()();
  qword_1016BFE70 = result;
  return result;
}

uint64_t sub_100EF92EC(uint64_t a1, char *a2)
{
  v4 = type metadata accessor for String.Encoding();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static String.Encoding.utf8.getter();
  v9 = static String.Encoding.== infix(_:_:)();
  v10 = *(v5 + 8);
  v10(v8, v4);
  if ((v9 & 1) == 0)
  {
    static String.Encoding.ascii.getter();
    v11 = static String.Encoding.== infix(_:_:)();
    v10(v8, v4);
    if ((v11 & 1) == 0)
    {
      static String.Encoding.nonLossyASCII.getter();
      v12 = static String.Encoding.== infix(_:_:)();
      v10(v8, v4);
      if ((v12 & 1) == 0)
      {
        goto LABEL_10;
      }
    }
  }

  v14 = sub_100EF9700(v13);
  if (!v15)
  {
    goto LABEL_10;
  }

  v16 = v14;
  static String.Encoding.utf8.getter();
  v17 = static String.Encoding.== infix(_:_:)();
  v10(v8, v4);
  if (v17)
  {

LABEL_17:
    v10(a2, v4);
    return v16;
  }

  if ((_StringGuts._isContiguousASCII.getter() & 1) == 0)
  {

LABEL_10:
    v18 = *(a1 + 16);
    if (v18)
    {
      v8 = 0;
      while (v8[a1 + 32])
      {
        if (v18 == ++v8)
        {
          goto LABEL_14;
        }
      }
    }

    else
    {
LABEL_14:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    v19 = [objc_allocWithZone(NSString) initWithBytes:a1 + 32 length:v8 encoding:String.Encoding.rawValue.getter()];

    if (!v19)
    {
      v10(a2, v4);
      return 0;
    }

    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    goto LABEL_17;
  }

  v10(a2, v4);

  return v16;
}

void sub_100EF95D0(_BYTE *a1@<X8>)
{
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 isInternalBuild];

  if (v3)
  {
    v4 = [objc_opt_self() processInfo];
    v5 = [v4 environment];

    v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    if (*(v6 + 16))
    {
      sub_100771D58(0x45545F5245444E55, 0xEA00000000005453);
      LOBYTE(v3) = v7;
    }

    else
    {
      LOBYTE(v3) = 0;
    }
  }

  *a1 = v3 & 1;
}

uint64_t sub_100EF9700(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = result;
    v3 = *(result + 32);
    result += 32;
    if (!v3)
    {
LABEL_6:
      v7 = static String._tryFromUTF8(_:)();
      swift_unknownObjectRelease();
      return v7;
    }

    v4 = 0;
    v5 = v1 - 1;
    while (v5 != v4)
    {
      if (!*(v2 + 33 + v4++))
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_100EF9784()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 serialNumber];

  if (v1)
  {
    goto LABEL_4;
  }

  result = MobileGestalt_get_current_device();
  if (result)
  {
    v3 = result;
    v1 = MobileGestalt_copy_serialNumber_obj();

    if (!v1)
    {
      return 0;
    }

LABEL_4:
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v4;
  }

  __break(1u);
  return result;
}

uint64_t sub_100EF9844()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 isInternalBuild];

  if (v1)
  {
    v2 = [objc_opt_self() standardUserDefaults];
    v3 = String._bridgeToObjectiveC()();
    v4 = [v2 BOOLForKey:v3];

    if (v4)
    {
      static os_log_type_t.default.getter();
      sub_10039722C();
      v5 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)();

      return 1;
    }
  }

  result = MobileGestalt_get_current_device();
  if (result)
  {
    v7 = result;
    v8 = MobileGestalt_copy_regionCode_obj();

    if (v8)
    {
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;

      if (v9 == 18507 && v11 == 0xE200000000000000)
      {

        return 1;
      }
    }

    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    return v12 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100EF99F8()
{
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v1 = result;
    v2 = MobileGestalt_copy_lowPowerExpressModesSupported_obj();

    if (!v2 || (v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v2, v4 = sub_100514514(v3), , !v4))
    {

      v4 = _swiftEmptyArrayStorage;
    }

    v5 = sub_101129930(v4);

    v6 = sub_10111EACC(0x616873696C61, 0xE600000000000000, v5);
    v7 = v6 & 1;
    if (sub_10111EACC(0x796D2D646E6966, 0xE700000000000000, v5))
    {
      v7 = v6 & 1 | 2;
    }

    v8 = sub_10111EACC(0x727078652D63666ELL, 0xEB00000000737365, v5);

    if (v8)
    {
      return (v7 | 4);
    }

    else
    {
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_100EF9B40()
{
  result = qword_1016BFE80;
  if (!qword_1016BFE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BFE80);
  }

  return result;
}

uint64_t sub_100EF9B94()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177C2A8);
  sub_1000076D4(v0, qword_10177C2A8);
  return Logger.init(subsystem:category:)();
}

uint64_t SPBluetoothPowerState.description.getter(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 6710895;
    case 2:
      return 0x7265776F50776F6CLL;
    case 1:
      return 28271;
  }

  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  return 0x286E776F6E6B6E75;
}

uint64_t sub_100EF9CE4@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v4 = sub_1000BC4D4(&qword_10169F458, &unk_1013D35E0);
  v5 = *(*(v4 - 8) + 64);
  result = __chkstk_darwin(v4 - 8);
  v8 = v19 - v7;
  v9 = a1[1];
  if (v9 >> 60 != 15)
  {
    v10 = *a1;
    v11 = objc_opt_self();
    sub_100017D5C(v10, v9);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v20[0] = 0;
    v13 = [v11 propertyListWithData:isa options:0 format:0 error:v20];

    if (v13)
    {
      v14 = v20[0];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      sub_1000BC4D4(&qword_1016BFE60, &qword_1013D6B40);
      if (swift_dynamicCast())
      {
        sub_100B994B4(v19[1], v8);
        sub_100006654(v10, v9);
        v15 = type metadata accessor for OfflineFindingInfo();
        v16 = 1;
        v17 = (*(*(v15 - 8) + 48))(v8, 1, v15);
        result = sub_10000B3A8(v8, &qword_10169F458, &unk_1013D35E0);
        if (v17 != 1)
        {
          goto LABEL_9;
        }
      }

      else
      {
        result = sub_100006654(v10, v9);
      }
    }

    else
    {
      v18 = v20[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
      sub_100006654(v10, v9);
    }
  }

  v16 = 0;
LABEL_9:
  *a2 = v16;
  return result;
}

id sub_100EF9F30()
{
  v1 = sub_1000BC4D4(&qword_1016C01B8, &qword_1013F1BC0);
  v63 = *(v1 - 8);
  v64 = v1;
  v2 = *(v63 + 64);
  __chkstk_darwin(v1);
  v62 = v57 - v3;
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v60 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v8 = *(v60 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v60);
  v11 = v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000BC4D4(&qword_1016A6010, &qword_101391C30);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v0 + 16) = v12;
  *(v0 + 24) = &_swiftEmptySetSingleton;
  v13 = objc_allocWithZone(type metadata accessor for CurrentLocationMonitor());
  *(v0 + 32) = CurrentLocationMonitor.init(mode:desiredAccuracy:)(0, 0x412E848000000000, 0);
  sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  v57[1] = "forceLPEMSupport";
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0;
  v58 = enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:);
  v14 = *(v8 + 104);
  v59 = v8 + 104;
  v61 = v14;
  v14(v11);
  static DispatchQoS.unspecified.getter();
  v67 = _swiftEmptyArrayStorage;
  v57[0] = sub_100F00328(&qword_10169BB60, 255, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_1000041A4(&qword_10169BB70, &unk_101695580, &qword_101385D90);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(v0 + 80) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v0 + 88) = 0;
  v61(v11, v58, v60);
  static DispatchQoS.unspecified.getter();
  v67 = _swiftEmptyArrayStorage;
  v15 = v0;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(v0 + 96) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  if (qword_101695180 != -1)
  {
    swift_once();
  }

  v67 = qword_10177C4E8;

  sub_1000BC4D4(&qword_1016C01C0, &qword_1013F1BC8);
  sub_1000041A4(&qword_1016C01C8, &qword_1016C01C0, &qword_1013F1BC8);
  v16 = v62;
  Publisher.map<A>(_:)();

  sub_1000041A4(&qword_1016C01D0, &qword_1016C01B8, &qword_1013F1BC0);
  v17 = v64;
  v18 = Publisher.eraseToAnyPublisher()();
  (*(v63 + 8))(v16, v17);
  *(v0 + 112) = 0;
  *(v0 + 120) = 0;
  *(v0 + 104) = v18;
  v19 = sub_1000BC4D4(&qword_1016A1000, &qword_1013F1BD0);
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  v22 = PassthroughSubject.init()();
  *(v0 + 128) = v22;
  *(v0 + 144) = 0;
  v67 = v22;
  sub_1000041A4(&qword_1016C2F40, &qword_1016A1000, &qword_1013F1BD0);
  *(v0 + 136) = Publisher.eraseToAnyPublisher()();
  My = type metadata accessor for Feature.FindMy();
  v69 = My;
  v24 = sub_100F00328(&qword_1016AF950, 255, &type metadata accessor for Feature.FindMy);
  v70 = v24;
  v25 = sub_1000280DC(&v67);
  v26 = *(*(My - 8) + 104);
  v26(v25, enum case for Feature.FindMy.baLPEM(_:), My);
  LOBYTE(v18) = isFeatureEnabled(_:)();
  sub_100007BAC(&v67);
  if ((v18 & 1) == 0)
  {
    v69 = My;
    v70 = v24;
    v27 = sub_1000280DC(&v67);
    v26(v27, enum case for Feature.FindMy.baPowerOff(_:), My);
    v28 = isFeatureEnabled(_:)();
    sub_100007BAC(&v67);
    if ((v28 & 1) == 0)
    {
      return v15;
    }
  }

  if (sub_100F00234())
  {
    if (qword_101694FB0 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_1000076D4(v29, qword_10177C2A8);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "LPEM supported.", v32, 2u);
    }

    v33 = swift_allocObject();
    swift_weakInit();

    sub_100EFB054(sub_100F00370, v33);

    goto LABEL_20;
  }

  if (qword_101694FB0 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  sub_1000076D4(v34, qword_10177C2A8);
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v35, v36))
  {
LABEL_19:

LABEL_20:
    if (qword_101694FB0 != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for Logger();
    sub_1000076D4(v46, qword_10177C2A8);

    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      *v49 = 136446210;
      v66 = v50;
      v67 = 60;
      v68 = 0xE100000000000000;
      v65 = v15;
      type metadata accessor for TheftDeterrenceStateManager();
      sub_100F00328(&qword_1016C0118, v51, type metadata accessor for TheftDeterrenceStateManager);

      v52._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
      String.append(_:)(v52);

      v53._countAndFlagsBits = 32;
      v53._object = 0xE100000000000000;
      String.append(_:)(v53);
      v54._countAndFlagsBits = CustomStringConvertible<>.addressDescription.getter();
      String.append(_:)(v54);

      v55._countAndFlagsBits = 62;
      v55._object = 0xE100000000000000;
      String.append(_:)(v55);

      v56 = sub_1000136BC(v67, v68, &v66);

      *(v49 + 4) = v56;
      _os_log_impl(&_mh_execute_header, v47, v48, "Created %{public}s", v49, 0xCu);
      sub_100007BAC(v50);
    }

    return v15;
  }

  v37 = swift_slowAlloc();
  v38 = swift_slowAlloc();
  v67 = v38;
  *v37 = 136315138;
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v40 = result;
    v41 = MobileGestalt_copy_hwModelStr_obj();

    if (v41)
    {
      v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v44 = v43;
    }

    else
    {
      v42 = 0;
      v44 = 0xE000000000000000;
    }

    v45 = sub_1000136BC(v42, v44, &v67);

    *(v37 + 4) = v45;
    _os_log_impl(&_mh_execute_header, v35, v36, "LPEM not supported [%s].", v37, 0xCu);
    sub_100007BAC(v38);

    goto LABEL_19;
  }

  __break(1u);
  return result;
}

uint64_t sub_100EFAA18()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100EFBD6C();
  }

  return result;
}

uint64_t sub_100EFAA70()
{
  if (qword_101694FB0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000076D4(v0, qword_10177C2A8);

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 136315138;
    v12 = v4;
    type metadata accessor for TheftDeterrenceStateManager();
    sub_100F00328(&qword_1016C0118, v5, type metadata accessor for TheftDeterrenceStateManager);
    v6._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
    String.append(_:)(v6);

    v7._countAndFlagsBits = 32;
    v7._object = 0xE100000000000000;
    String.append(_:)(v7);
    v8._countAndFlagsBits = CustomStringConvertible<>.addressDescription.getter();
    String.append(_:)(v8);

    v9._countAndFlagsBits = 62;
    v9._object = 0xE100000000000000;
    String.append(_:)(v9);
    v10 = sub_1000136BC(60, 0xE100000000000000, &v12);

    *(v3 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "%s: firstLaunchSinceReboot()", v3, 0xCu);
    sub_100007BAC(v4);
  }

  return sub_100EFD964();
}

void sub_100EFAC8C(uint64_t a1)
{
  v2 = v1;
  if (qword_101694FB0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177C2A8);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136315138;
    if (a1)
    {
      if (a1 == 2)
      {
        v9 = 0xEC00000065646F4DLL;
        v10 = 0x7265776F50776F6CLL;
      }

      else if (a1 == 1)
      {
        v9 = 0xE200000000000000;
        v10 = 28271;
      }

      else
      {
        v11._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v11);

        v10 = 0x286E776F6E6B6E75;
        v9 = 0xE800000000000000;
      }
    }

    else
    {
      v9 = 0xE300000000000000;
      v10 = 6710895;
    }

    v12 = sub_1000136BC(v10, v9, &v13);

    *(v7 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v5, v6, "Received bluetoothPowerStateUpdate: %s", v7, 0xCu);
    sub_100007BAC(v8);
  }

  if (*(v2 + 40))
  {

    CurrentValueSubject.send(_:)();
  }
}

uint64_t sub_100EFAE94()
{
  v6[3] = &type metadata for KoreaFeatureFlag;
  v6[4] = sub_10013CCC4();
  v1 = isFeatureEnabled(_:)();
  sub_100007BAC(v6);
  if (v1)
  {
    LOBYTE(v2) = 1;
  }

  else
  {
    v2 = sub_100EF9844() ^ 1;
  }

  v3 = sub_100F00234() & v2;
  v4 = *(v0 + 16);
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  return v3 & v6[0] & 1;
}

uint64_t sub_100EFAF4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a2 + 136);
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = a3;
  v7[4] = a4;

  sub_1000BC4D4(&unk_1016B1050, &unk_1013A4F40);
  sub_1000041A4(&unk_1016B1060, &unk_1016B1050, &unk_1013A4F40);
  Publisher.oneshot(_:)();
}

uint64_t sub_100EFB054(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v50 = a1;
  v51 = a2;
  v4 = sub_1000BC4D4(&unk_1016B2720, "r\a\a");
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v50 - v9;
  v11 = static DarwinNotification.currentValue(name:)();
  v12 = v2[4];
  v13 = *(v12 + OBJC_IVAR____TtC12searchpartyd22CurrentLocationMonitor_queue);
  v52 = v12;
  type metadata accessor for CLAuthorizationStatus(0);
  OS_dispatch_queue.sync<A>(execute:)();
  v14 = v53;
  sub_101032844(v10);
  sub_100F0017C(v10, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    if (!*v8)
    {
      sub_100EFF460();
    }

    v8 = v10;
  }

  else
  {
    sub_10000B3A8(v10, &unk_1016B2720, "r\a\a");
  }

  v16 = EnumCaseMultiPayload != 1;
  sub_10000B3A8(v8, &unk_1016B2720, "r\a\a");
  v17 = v14 == 3;
  v18 = v11 == 1;
  v19 = [objc_opt_self() standardUserDefaults];
  v20 = [v19 userHasAcknowledgedFindMy];

  v53 = v18;
  v21 = sub_1000BC4D4(&qword_1016C0168, &qword_1013F1B68);
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  v24 = CurrentValueSubject.init(_:)();
  v25 = v3[5];
  v3[5] = v24;

  LOBYTE(v53) = v17;
  v26 = sub_1000BC4D4(&qword_1016B35D8, &qword_1013F1B70);
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  v29 = CurrentValueSubject.init(_:)();
  v30 = v3[8];
  v3[8] = v29;

  LOBYTE(v53) = v16;
  v31 = *(v26 + 48);
  v32 = *(v26 + 52);
  swift_allocObject();
  v33 = CurrentValueSubject.init(_:)();
  v34 = v3[9];
  v3[9] = v33;

  LOBYTE(v53) = v20;
  v35 = *(v26 + 48);
  v36 = *(v26 + 52);
  swift_allocObject();
  v37 = CurrentValueSubject.init(_:)();
  v38 = v3[14];
  v3[14] = v37;

  LOBYTE(v53) = 0;
  v39 = *(v26 + 48);
  v40 = *(v26 + 52);
  swift_allocObject();
  v41 = CurrentValueSubject.init(_:)();
  v42 = v3[15];
  v3[15] = v41;

  v43 = sub_1000BC4D4(&qword_1016C01A8, &qword_1013F1BB8);
  v44 = *(v43 + 48);
  v45 = *(v43 + 52);
  swift_allocObject();
  v53 = Future.init(_:)();
  v46 = swift_allocObject();
  swift_weakInit();
  v47 = swift_allocObject();
  *(v47 + 16) = v46;
  *(v47 + 24) = v18;
  *(v47 + 32) = v18;
  *(v47 + 40) = v17;
  *(v47 + 41) = v16;
  *(v47 + 42) = v20;
  v48 = v51;
  *(v47 + 48) = v50;
  *(v47 + 56) = v48;
  sub_1000041A4(&qword_1016C01B0, &qword_1016C01A8, &qword_1013F1BB8);

  Publisher.oneshot(_:)();
}

void sub_100EFB47C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, char a6, char a7, void (*a8)(void))
{
  v14 = *a1;
  v15 = *(a1 + 8);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    if (v15)
    {
      if (qword_101694FB0 != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for Logger();
      sub_1000076D4(v18, qword_10177C2A8);
      swift_errorRetain();
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v76[0] = v22;
        *v21 = 136315138;
        swift_getErrorValue();
        v23 = Error.localizedDescription.getter();
        v25 = v24;
        sub_1000BB578(v14, 1);
        v26 = sub_1000136BC(v23, v25, v76);

        *(v21 + 4) = v26;
        _os_log_impl(&_mh_execute_header, v19, v20, "activationLockInfoFuture error: %s", v21, 0xCu);
        sub_100007BAC(v22);
      }

      else
      {

        sub_1000BB578(v14, 1);
      }
    }

    else
    {
      v75 = a8;
      v74 = a7;
      if ([v14 isActivationLocked])
      {
        v27 = 1;
      }

      else
      {
        v28 = [v14 maskedAppleID];
        v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v31 = v30;

        v32 = HIBYTE(v31) & 0xF;
        if ((v31 & 0x2000000000000000) == 0)
        {
          v32 = v29 & 0xFFFFFFFFFFFFLL;
        }

        v27 = v32 != 0;
      }

      LOBYTE(v76[0]) = v27;
      v33 = sub_1000BC4D4(&qword_1016B35D8, &qword_1013F1B70);
      v34 = *(v33 + 48);
      v35 = *(v33 + 52);
      swift_allocObject();
      v36 = CurrentValueSubject.init(_:)();
      v37 = v17[6];
      v17[6] = v36;

      LOBYTE(v76[0]) = [v14 isOfflineFindingEnabled];
      v38 = *(v33 + 48);
      v39 = *(v33 + 52);
      swift_allocObject();
      v40 = CurrentValueSubject.init(_:)();
      v41 = v17[7];
      v17[7] = v40;

      if (qword_101694FB0 != -1)
      {
        swift_once();
      }

      v42 = type metadata accessor for Logger();
      sub_1000076D4(v42, qword_10177C2A8);
      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 67109120;
        *(v45 + 4) = a3 & 1;
        _os_log_impl(&_mh_execute_header, v43, v44, "initialBluetoothState     : %{BOOL}d", v45, 8u);
      }

      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        *v48 = 67109120;
        *(v48 + 4) = v27;
        _os_log_impl(&_mh_execute_header, v46, v47, "initialFMIPState          : %{BOOL}d", v48, 8u);
      }

      v49 = v14;
      v50 = Logger.logObject.getter();
      v51 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        *v52 = 67109120;
        *(v52 + 4) = [v49 isOfflineFindingEnabled];
        sub_1000BB578(v14, 0);
        _os_log_impl(&_mh_execute_header, v50, v51, "initialOfflineFindingState: %{BOOL}d", v52, 8u);
      }

      else
      {
        sub_1000BB578(v14, 0);
      }

      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v77 = v56;
        *v55 = 136446210;
        if (a4)
        {
          if (a4 == 2)
          {
            v57 = 0xEC00000065646F4DLL;
            v58 = 0x7265776F50776F6CLL;
          }

          else if (a4 == 1)
          {
            v57 = 0xE200000000000000;
            v58 = 28271;
          }

          else
          {
            v76[0] = 0x286E776F6E6B6E75;
            v76[1] = 0xE800000000000000;
            v59._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
            String.append(_:)(v59);

            v58 = 0x286E776F6E6B6E75;
            v57 = 0xE800000000000000;
          }
        }

        else
        {
          v57 = 0xE300000000000000;
          v58 = 6710895;
        }

        v60 = sub_1000136BC(v58, v57, &v77);

        *(v55 + 4) = v60;
        _os_log_impl(&_mh_execute_header, v53, v54, "initialBluetoothPowerState: %{public}s", v55, 0xCu);
        sub_100007BAC(v56);
      }

      v61 = Logger.logObject.getter();
      v62 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        *v63 = 67109376;
        *(v63 + 4) = a5 & 1;
        *(v63 + 8) = 1024;
        v64 = *(v17[4] + OBJC_IVAR____TtC12searchpartyd22CurrentLocationMonitor_queue);
        __chkstk_darwin(v63);
        type metadata accessor for CLAuthorizationStatus(0);
        OS_dispatch_queue.sync<A>(execute:)();
        *(v63 + 10) = v76[0];

        _os_log_impl(&_mh_execute_header, v61, v62, "initialLocServicesState   : %{BOOL}d [%d]", v63, 0xEu);
      }

      else
      {
      }

      v65 = Logger.logObject.getter();
      v66 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        *v67 = 67109120;
        *(v67 + 4) = a6 & 1;
        _os_log_impl(&_mh_execute_header, v65, v66, "initialNVRAMState         : %{BOOL}d", v67, 8u);
      }

      v68 = Logger.logObject.getter();
      v69 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        *v70 = 67109120;
        *(v70 + 4) = v74 & 1;
        _os_log_impl(&_mh_execute_header, v68, v69, "initialUserAck            : %{BOOL}d", v70, 8u);
      }

      v71 = Logger.logObject.getter();
      v72 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        *v73 = 0;
        _os_log_impl(&_mh_execute_header, v71, v72, "suppressLPEM              : false", v73, 2u);
      }

      v75();
    }
  }
}

uint64_t sub_100EFBD6C()
{
  v1 = v0;
  v55 = sub_1000BC4D4(&qword_1016C0120, &qword_1013F1AE0);
  v53 = *(v55 - 8);
  v2 = *(v53 + 64);
  __chkstk_darwin(v55);
  v52 = v41 - v3;
  v4 = sub_1000BC4D4(&qword_1016C0128, &qword_1013F1AE8);
  v56 = *(v4 - 8);
  v57 = v4;
  v5 = *(v56 + 64);
  __chkstk_darwin(v4);
  v54 = v41 - v6;
  v7 = sub_1000BC4D4(&qword_1016C0130, &qword_1013F1AF0);
  v59 = *(v7 - 8);
  v60 = v7;
  v8 = *(v59 + 64);
  __chkstk_darwin(v7);
  v58 = v41 - v9;
  v10 = sub_1000BC4D4(&qword_1016C0138, &qword_1013F1AF8);
  v48 = *(v10 - 8);
  v49 = v10;
  v11 = *(v48 + 64);
  __chkstk_darwin(v10);
  v47 = v41 - v12;
  v43 = sub_1000BC4D4(&qword_1016C0140, &qword_1013F1B00);
  v42 = *(v43 - 8);
  v13 = *(v42 + 64);
  __chkstk_darwin(v43);
  v15 = v41 - v14;
  v16 = v0[5];
  if (v16 && (v17 = v0[6]) != 0 && (v18 = v0[7]) != 0 && v0[8] && (v19 = v0[8], v0[9]) && (v20 = v0[9], v0[14]) && (v21 = v0[14], v0[15]))
  {
    v22 = v0[15];
    v23 = swift_allocObject();
    v23[2] = v17;
    v23[3] = v18;
    v23[4] = v0;
    v23[5] = v20;
    v46 = v20;
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();

    v50 = v22;

    unsafeFromAsyncTask<A>(_:)();

    v24 = v0[4];
    v25 = v17;
    v44 = v17;
    v66 = *(v24 + OBJC_IVAR____TtC12searchpartyd22CurrentLocationMonitor_authorizationStatusPublisher);

    v62 = v16;
    sub_1000BC4D4(&qword_1016C0148, qword_1013F1B18);
    v61 = v18;
    v41[1] = &protocol conformance descriptor for AnyPublisher<A, B>;
    sub_1000041A4(&qword_1016C0150, &qword_1016C0148, qword_1013F1B18);
    Publisher.map<A>(_:)();

    v51 = &protocol conformance descriptor for Publishers.Map<A, B>;
    sub_1000041A4(&qword_1016C0158, &qword_1016C0140, &qword_1013F1B00);

    v26 = v43;
    Publisher<>.sink(receiveValue:)();
    v27 = v19;
    v45 = v19;

    (*(v42 + 8))(v15, v26);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    v28 = [objc_opt_self() standardUserDefaults];
    swift_getKeyPath();
    v29 = v47;
    _KeyValueCodingAndObservingPublishing<>.publisher<A>(for:options:)();

    sub_1000041A4(&qword_1016C0160, &qword_1016C0138, &qword_1013F1AF8);

    v30 = v49;
    Publisher<>.sink(receiveValue:)();

    (*(v48 + 8))(v29, v30);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    v66 = v1[13];
    v31 = v46;

    sub_1000BC4D4(&unk_1016B1050, &unk_1013A4F40);
    sub_1000041A4(&unk_1016B1060, &unk_1016B1050, &unk_1013A4F40);
    Publisher<>.sink(receiveValue:)();

    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    v65 = v25;
    v66 = v62;
    v63 = v27;
    v64 = v61;
    sub_1000BC4D4(&qword_1016C0168, &qword_1013F1B68);
    sub_1000BC4D4(&qword_1016B35D8, &qword_1013F1B70);
    sub_1000041A4(&qword_1016C0170, &qword_1016C0168, &qword_1013F1B68);
    sub_1000041A4(&qword_1016C0178, &qword_1016B35D8, &qword_1013F1B70);
    v32 = v52;
    Publisher.combineLatest<A, B, C>(_:_:_:)();
    v65 = v21;
    v66 = v31;
    v64 = v50;
    sub_1000041A4(&qword_1016C0180, &qword_1016C0120, &qword_1013F1AE0);
    v34 = v54;
    v33 = v55;
    Publisher.combineLatest<A, B, C>(_:_:_:)();
    (*(v53 + 8))(v32, v33);
    sub_1000BC4D4(&qword_1016C0188, &unk_1013F1B78);
    sub_1000041A4(&qword_1016C0190, &qword_1016C0128, &qword_1013F1AE8);
    v35 = v57;
    v36 = v58;
    Publisher.map<A>(_:)();
    (*(v56 + 8))(v34, v35);
    v37 = swift_allocObject();
    swift_weakInit();
    v38 = swift_allocObject();
    *(v38 + 16) = sub_100EFFF30;
    *(v38 + 24) = v37;
    sub_1000041A4(&qword_1016C0198, &qword_1016C0130, &qword_1013F1AF0);
    v39 = v60;
    Publisher<>.sink(receiveValue:)();

    (*(v59 + 8))(v36, v39);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_100EFC81C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[2] = a2;
  v5[3] = a3;
  v6 = *(*(sub_1000BC4D4(&qword_101698C00, &qword_10138B570) - 8) + 64) + 15;
  v5[6] = swift_task_alloc();

  return _swift_task_switch(sub_100EFC8BC, 0, 0);
}

uint64_t sub_100EFC8BC()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  type metadata accessor for DarwinNotificationHandler();
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v0[7] = v6;
  v8 = swift_allocObject();
  v0[8] = v8;
  v8[2] = v4;
  v8[3] = v3;
  v8[4] = v2;
  v8[5] = v1;
  v9 = async function pointer to static DarwinNotificationHandler.listen(name:handler:)[1];

  v10 = swift_task_alloc();
  v0[9] = v10;
  *v10 = v0;
  v10[1] = sub_100EFCA04;

  return static DarwinNotificationHandler.listen(name:handler:)(v5, v7, &unk_1013F1B90, v8);
}

uint64_t sub_100EFCA04(uint64_t a1)
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v6 = *v1;
  *(*v1 + 80) = a1;

  return _swift_task_switch(sub_100EFCB40, 0, 0);
}

uint64_t sub_100EFCB40()
{
  v1 = v0[10];
  v2 = v0[6];
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = v1;

  sub_100BB9ADC(0, 0, v2, &unk_1013F1BA0, v4);

  sub_10000B3A8(v2, &qword_101698C00, &qword_10138B570);

  v5 = v0[1];

  return v5();
}

uint64_t sub_100EFCC64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[25] = a4;
  v5[26] = a5;
  v5[23] = a2;
  v5[24] = a3;
  v6 = sub_1000BC4D4(&unk_1016B2720, "r\a\a");
  v5[27] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[28] = swift_task_alloc();
  v5[29] = swift_task_alloc();

  return _swift_task_switch(sub_100EFCD14, 0, 0);
}

uint64_t sub_100EFCD14()
{
  if (qword_101694FB0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[30] = sub_1000076D4(v1, qword_10177C2A8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Received fmdLocalActivationLockInfoChanged notification", v4, 2u);
  }

  v5 = [objc_opt_self() sharedInstance];
  v0[31] = v5;
  v0[2] = v0;
  v0[7] = v0 + 21;
  v0[3] = sub_100EFCF08;
  v6 = swift_continuation_init();
  v0[17] = sub_1000BC4D4(&qword_1016C01A0, &unk_1013F1BA8);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100C70FE4;
  v0[13] = &unk_10165AEE0;
  v0[14] = v6;
  [v5 activationLockInfoFromDeviceWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100EFCF08()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 256) = v2;
  if (v2)
  {
    v3 = sub_100EFD310;
  }

  else
  {
    v3 = sub_100EFD018;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100EFD018()
{
  v1 = *(v0 + 168);

  v2 = [v1 isActivationLocked];
  v3 = *(v0 + 184);
  if (v2)
  {
    CurrentValueSubject.value.getter();
    if (*(v0 + 264))
    {
      goto LABEL_8;
    }

    LOBYTE(v4) = 1;
    goto LABEL_7;
  }

  v5 = [v1 maskedAppleID];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = v6 & 0xFFFFFFFFFFFFLL;
  }

  v4 = v9 != 0;
  CurrentValueSubject.value.getter();
  if (*(v0 + 264) != v4)
  {
LABEL_7:
    v10 = *(v0 + 184);
    *(v0 + 265) = v4;
    CurrentValueSubject.send(_:)();
  }

LABEL_8:
  v11 = *(v0 + 192);
  CurrentValueSubject.value.getter();
  LODWORD(v11) = *(v0 + 266);
  if (v11 != [v1 isOfflineFindingEnabled])
  {
    v12 = *(v0 + 192);
    *(v0 + 267) = [v1 isOfflineFindingEnabled];
    CurrentValueSubject.send(_:)();
  }

  v13 = *(v0 + 232);
  v15 = (v0 + 224);
  v14 = *(v0 + 224);
  v16 = *(v0 + 216);
  sub_101032844(v13);
  sub_100F0017C(v13, v14);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    if (!**v15)
    {
      v18 = *(v0 + 200);
      sub_100EFF460();
    }

    v15 = (v0 + 232);
  }

  else
  {
    sub_10000B3A8(*(v0 + 232), &unk_1016B2720, "r\a\a");
  }

  v19 = *(v0 + 240);
  v20 = *(v0 + 208);
  sub_10000B3A8(*v15, &unk_1016B2720, "r\a\a");

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  v23 = os_log_type_enabled(v21, v22);
  v24 = *(v0 + 208);
  if (v23)
  {
    v25 = swift_slowAlloc();
    *v25 = 67109376;
    *(v25 + 4) = EnumCaseMultiPayload != 1;
    *(v25 + 8) = 1024;
    CurrentValueSubject.value.getter();
    *(v25 + 10) = *(v0 + 270);

    _os_log_impl(&_mh_execute_header, v21, v22, "Reloaded NVRAM state %{BOOL}d existing %{BOOL}d", v25, 0xEu);
  }

  else
  {
    v26 = *(v0 + 208);
  }

  v27 = *(v0 + 208);
  CurrentValueSubject.value.getter();
  if ((EnumCaseMultiPayload != 1) != *(v0 + 268))
  {
    v28 = *(v0 + 208);
    *(v0 + 269) = EnumCaseMultiPayload != 1;
    CurrentValueSubject.send(_:)();
  }

  v30 = *(v0 + 224);
  v29 = *(v0 + 232);

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_100EFD310()
{
  v21 = v0;
  v1 = v0[31];
  v2 = v0[32];
  v3 = v0[30];
  swift_willThrow();

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[32];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v20 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v10 = v0[18];
    v9 = v0[19];
    v11 = v0[20];
    v12 = Error.localizedDescription.getter();
    v14 = sub_1000136BC(v12, v13, &v20);

    *(v7 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v4, v5, "activationLockInfoFuture error: %s", v7, 0xCu);
    sub_100007BAC(v8);
  }

  else
  {
    v15 = v0[32];
  }

  v17 = v0[28];
  v16 = v0[29];

  v18 = v0[1];

  return v18();
}

void sub_100EFD4AC(int *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  if (qword_101694FB0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177C2A8);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = v3;
    _os_log_impl(&_mh_execute_header, v5, v6, "LocServices authorizationStatus changed to %d", v7, 8u);
  }

  *a2 = v3 == 3;
}

uint64_t sub_100EFD5AC@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 8);
  v3 = *(result + 9);
  v4 = *(result + 10);
  v5 = *(result + 11);
  v6 = *(result + 12);
  v7 = *(result + 13);
  *a2 = *result;
  *(a2 + 8) = v2;
  *(a2 + 9) = v3;
  *(a2 + 10) = v4;
  *(a2 + 11) = v5;
  *(a2 + 12) = v6;
  *(a2 + 13) = v7;
  return result;
}

uint64_t sub_100EFD5E8(uint64_t a1, char a2, char a3, char a4, char a5, char a6, char a7)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v14 = result;
  v29 = a6;
  if (qword_101694FB0 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_1000076D4(v15, qword_10177C2A8);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  v28 = a5;
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v31 = v19;
    *v18 = 136447746;
    v27 = a7;
    if (a1)
    {
      if (a1 == 2)
      {
        v20 = 0xEC00000065646F4DLL;
        v21 = 0x7265776F50776F6CLL;
      }

      else if (a1 == 1)
      {
        v20 = 0xE200000000000000;
        v21 = 28271;
      }

      else
      {
        v22._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v22);

        v21 = 0x286E776F6E6B6E75;
        v20 = 0xE800000000000000;
      }
    }

    else
    {
      v20 = 0xE300000000000000;
      v21 = 6710895;
    }

    v23 = sub_1000136BC(v21, v20, &v31);

    *(v18 + 4) = v23;
    *(v18 + 12) = 1024;
    *(v18 + 14) = a2 & 1;
    *(v18 + 18) = 1024;
    *(v18 + 20) = a3 & 1;
    *(v18 + 24) = 1024;
    *(v18 + 26) = a4 & 1;
    *(v18 + 30) = 1024;
    a7 = v27;
    *(v18 + 32) = v28 & 1;
    *(v18 + 36) = 1024;
    *(v18 + 38) = v29 & 1;
    *(v18 + 42) = 1024;
    *(v18 + 44) = v27 & 1;
    _os_log_impl(&_mh_execute_header, v16, v17, "TheftDeterrence state changed: BT: %{public}s FMIP: %{BOOL}d OF: %{BOOL}d locServices: %{BOOL}d NVRAM: %{BOOL}d userACK: %{BOOL}d suppress: %{BOOL}d", v18, 0x30u);
    sub_100007BAC(v19);
  }

  if (a1 != 1)
  {
    v25 = 0;
    if (a1 != 2 || (a2 & 1) == 0)
    {
      goto LABEL_23;
    }

LABEL_18:
    if (a3)
    {
      if ((a4 & 1) != 0 || (v24 = inPostEraseSetupAssistant(), v24))
      {
        v25 = v28 & (a7 ^ 1);
      }

      else
      {
        v25 = 0;
      }
    }

    goto LABEL_23;
  }

  v25 = 0;
  if (a2)
  {
    goto LABEL_18;
  }

LABEL_23:
  v26 = *(v14 + 16);
  __chkstk_darwin(v24);

  OSAllocatedUnfairLock.callAsFunction<A>(_:)();

  if (v25 & 1) != 0 && (v29)
  {
    sub_100EFE960();
  }

  else
  {
    sub_100EFE9EC();
  }
}

uint64_t sub_100EFD964()
{
  v7 = [objc_opt_self() sharedHardwareManager];
  sub_100008BB8(0, &qword_1016C0110, NFHardwareManager_ptr);
  deoptionalize<A>(_:)();

  v1 = aBlock[0];
  aBlock[4] = sub_100EFFE30;
  v6 = v0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000D488C;
  aBlock[3] = &unk_10165AE18;
  v2 = _Block_copy(aBlock);

  v3 = [v1 startLPEMConfigSession:v2];
  _Block_release(v2);

  return swift_unknownObjectRelease();
}

void sub_100EFDA94(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  if (a2)
  {
    swift_errorRetain();
    if (qword_101694FB0 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000076D4(v5, qword_10177C2A8);
    swift_errorRetain();

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      *v8 = 136315394;
      v80 = 60;
      v81 = 0xE100000000000000;
      v82 = v78;
      type metadata accessor for TheftDeterrenceStateManager();
      sub_100F00328(&qword_1016C0118, v10, type metadata accessor for TheftDeterrenceStateManager);
      v11._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
      String.append(_:)(v11);

      v12._countAndFlagsBits = 32;
      v12._object = 0xE100000000000000;
      String.append(_:)(v12);
      v13._countAndFlagsBits = CustomStringConvertible<>.addressDescription.getter();
      String.append(_:)(v13);

      v14._countAndFlagsBits = 62;
      v14._object = 0xE100000000000000;
      String.append(_:)(v14);
      v15 = sub_1000136BC(60, 0xE100000000000000, &v82);

      *(v8 + 4) = v15;
      *(v8 + 12) = 2112;
      v16 = _convertErrorToNSError(_:)();
      *(v8 + 14) = v16;
      *v9 = v16;
      _os_log_impl(&_mh_execute_header, v6, v7, "%s: startLPEMConfigSession error: %@", v8, 0x16u);
      sub_10000B3A8(v9, &qword_10169BB30, &unk_10138B3C0);

      sub_100007BAC(v78);
    }

    else
    {
    }
  }

  else if (a1)
  {
    v17 = qword_101694FB0;
    v18 = a1;
    if (v17 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_1000076D4(v19, qword_10177C2A8);

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 136315138;
      v81 = 0xE100000000000000;
      v82 = v23;
      type metadata accessor for TheftDeterrenceStateManager();
      sub_100F00328(&qword_1016C0118, v24, type metadata accessor for TheftDeterrenceStateManager);
      v25._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
      String.append(_:)(v25);

      v26._countAndFlagsBits = 32;
      v26._object = 0xE100000000000000;
      String.append(_:)(v26);
      v27._countAndFlagsBits = CustomStringConvertible<>.addressDescription.getter();
      String.append(_:)(v27);

      v28._countAndFlagsBits = 62;
      v28._object = 0xE100000000000000;
      String.append(_:)(v28);
      v29 = sub_1000136BC(60, 0xE100000000000000, &v82);

      *(v22 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v20, v21, "%s: Start LPEMConfigSession", v22, 0xCu);
      sub_100007BAC(v23);
    }

    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v32 = 136315138;
      v81 = 0xE100000000000000;
      v82 = v33;
      type metadata accessor for TheftDeterrenceStateManager();
      sub_100F00328(&qword_1016C0118, v34, type metadata accessor for TheftDeterrenceStateManager);
      v35._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
      String.append(_:)(v35);

      v36._countAndFlagsBits = 32;
      v36._object = 0xE100000000000000;
      String.append(_:)(v36);
      v37._countAndFlagsBits = CustomStringConvertible<>.addressDescription.getter();
      String.append(_:)(v37);

      v38._countAndFlagsBits = 62;
      v38._object = 0xE100000000000000;
      String.append(_:)(v38);
      v39 = sub_1000136BC(60, 0xE100000000000000, &v82);

      *(v32 + 4) = v39;
      _os_log_impl(&_mh_execute_header, v30, v31, "%s: configureHardwareForLPEM()", v32, 0xCu);
      sub_100007BAC(v33);
    }

    v80 = 0;
    v40 = [v18 configureHardwareForLPEMWithError:&v80];
    v41 = v80;
    if (v40)
    {
      if (*(a3 + 48))
      {

        v42 = v41;

        v43 = Logger.logObject.getter();
        v44 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          v46 = swift_slowAlloc();
          *v45 = 136315138;
          v80 = 60;
          v81 = 0xE100000000000000;
          v82 = v46;
          type metadata accessor for TheftDeterrenceStateManager();
          sub_100F00328(&qword_1016C0118, v47, type metadata accessor for TheftDeterrenceStateManager);
          v48._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
          String.append(_:)(v48);

          v49._countAndFlagsBits = 32;
          v49._object = 0xE100000000000000;
          String.append(_:)(v49);
          v50._countAndFlagsBits = CustomStringConvertible<>.addressDescription.getter();
          String.append(_:)(v50);

          v51._countAndFlagsBits = 62;
          v51._object = 0xE100000000000000;
          String.append(_:)(v51);
          v52 = sub_1000136BC(v80, v81, &v82);

          *(v45 + 4) = v52;
          _os_log_impl(&_mh_execute_header, v43, v44, "%s: Triggering state re-evaluation.", v45, 0xCu);
          sub_100007BAC(v46);
        }

        CurrentValueSubject.value.getter();
        LOBYTE(v82) = v80;
        CurrentValueSubject.send(_:)();
      }

      else
      {
        v76 = v80;
      }
    }

    else
    {
      v64 = v80;
      _convertNSErrorToError(_:)();

      swift_willThrow();

      swift_errorRetain();
      v65 = Logger.logObject.getter();
      v66 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        v77 = swift_slowAlloc();
        *v67 = 136315394;
        v80 = 60;
        v81 = 0xE100000000000000;
        v82 = v77;
        type metadata accessor for TheftDeterrenceStateManager();
        sub_100F00328(&qword_1016C0118, v69, type metadata accessor for TheftDeterrenceStateManager);
        v70._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
        String.append(_:)(v70);

        v71._countAndFlagsBits = 32;
        v71._object = 0xE100000000000000;
        String.append(_:)(v71);
        v72._countAndFlagsBits = CustomStringConvertible<>.addressDescription.getter();
        String.append(_:)(v72);

        v73._countAndFlagsBits = 62;
        v73._object = 0xE100000000000000;
        String.append(_:)(v73);
        v74 = sub_1000136BC(v80, v81, &v82);

        *(v67 + 4) = v74;
        *(v67 + 12) = 2112;
        v75 = _convertErrorToNSError(_:)();
        *(v67 + 14) = v75;
        *v68 = v75;
        _os_log_impl(&_mh_execute_header, v65, v66, "%s: configureHardwareForLPEM error: %@", v67, 0x16u);
        sub_10000B3A8(v68, &qword_10169BB30, &unk_10138B3C0);

        sub_100007BAC(v77);
      }

      else
      {
      }
    }

    v4 = a1;
  }

  else
  {
    if (qword_101694FB0 != -1)
    {
      swift_once();
    }

    v53 = type metadata accessor for Logger();
    sub_1000076D4(v53, qword_10177C2A8);

    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      *v56 = 136315138;
      v80 = 60;
      v81 = 0xE100000000000000;
      v82 = v57;
      type metadata accessor for TheftDeterrenceStateManager();
      sub_100F00328(&qword_1016C0118, v58, type metadata accessor for TheftDeterrenceStateManager);
      v59._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
      String.append(_:)(v59);

      v60._countAndFlagsBits = 32;
      v60._object = 0xE100000000000000;
      String.append(_:)(v60);
      v61._countAndFlagsBits = CustomStringConvertible<>.addressDescription.getter();
      String.append(_:)(v61);

      v62._countAndFlagsBits = 62;
      v62._object = 0xE100000000000000;
      String.append(_:)(v62);
      v63 = sub_1000136BC(60, 0xE100000000000000, &v82);

      *(v56 + 4) = v63;
      _os_log_impl(&_mh_execute_header, v54, v55, "%s: Missing NFLPEMConfigSession!", v56, 0xCu);
      sub_100007BAC(v57);
    }

    v4 = 0;
  }

  sub_100EFE710(v4);
}

void sub_100EFE710(void *a1)
{
  if (a1)
  {
    [a1 endSession];
  }

  if (qword_101694FB0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177C2A8);

  oslog = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 136315138;
    v12 = v4;
    type metadata accessor for TheftDeterrenceStateManager();
    sub_100F00328(&qword_1016C0118, v5, type metadata accessor for TheftDeterrenceStateManager);
    v6._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
    String.append(_:)(v6);

    v7._countAndFlagsBits = 32;
    v7._object = 0xE100000000000000;
    String.append(_:)(v7);
    v8._countAndFlagsBits = CustomStringConvertible<>.addressDescription.getter();
    String.append(_:)(v8);

    v9._countAndFlagsBits = 62;
    v9._object = 0xE100000000000000;
    String.append(_:)(v9);
    v10 = sub_1000136BC(60, 0xE100000000000000, &v12);

    *(v3 + 4) = v10;
    _os_log_impl(&_mh_execute_header, oslog, v2, "%s: Stop LPEMConfigSession", v3, 0xCu);
    sub_100007BAC(v4);
  }

  else
  {
  }
}

void sub_100EFE984(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_100EFEA10()
{
  My = type metadata accessor for Feature.FindMy();
  v9 = My;
  v1 = sub_100F00328(&qword_1016AF950, 255, &type metadata accessor for Feature.FindMy);
  v10 = v1;
  v2 = sub_1000280DC(v8);
  v3 = *(*(My - 8) + 104);
  v3(v2, enum case for Feature.FindMy.baLPEM(_:), My);
  v4 = isFeatureEnabled(_:)();
  sub_100007BAC(v8);
  if (v4 & 1) != 0 || (v9 = My, v10 = v1, v5 = sub_1000280DC(v8), v3(v5, enum case for Feature.FindMy.baPowerOff(_:), My), v6 = isFeatureEnabled(_:)(), result = sub_100007BAC(v8), (v6))
  {
    type metadata accessor for Transaction();
    return static Transaction.named<A>(_:with:)();
  }

  return result;
}

void sub_100EFEB80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = objc_opt_self();
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a1;
  v12[4] = a4;
  v12[5] = v10;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_100EFE984;
  v12[3] = a5;
  v11 = _Block_copy(v12);

  [v9 sharedHardwareManager:v11];
  _Block_release(v11);
}

uint64_t sub_100EFEC80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23 = a5;
  v24 = a6;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v27 = *(v8 - 8);
  v9 = *(v27 + 64);
  __chkstk_darwin(v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v25 = *(v12 - 8);
  v26 = v12;
  v13 = *(v25 + 64);
  __chkstk_darwin(v12);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [objc_opt_self() sharedHardwareManager];
  v29 = v16;
  sub_100008BB8(0, &qword_1016C0110, NFHardwareManager_ptr);
  deoptionalize<A>(_:)();

  v17 = aBlock[0];
  v18 = *(a2 + 96);
  v19 = swift_allocObject();
  v19[2] = a3;
  v19[3] = a2;
  v19[4] = v17;
  aBlock[4] = v23;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = v24;
  v20 = _Block_copy(aBlock);

  v21 = v17;
  static DispatchQoS.unspecified.getter();
  v29 = _swiftEmptyArrayStorage;
  sub_100F00328(&qword_1016A30B0, 255, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);

  (*(v27 + 8))(v11, v8);
  (*(v25 + 8))(v15, v26);
}

uint64_t sub_100EFEFB8(uint64_t a1, uint64_t a2, void *a3, const char *a4, SEL *a5)
{
  Transaction.capture()();
  if (qword_101694FB0 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_1000076D4(v9, qword_10177C2A8);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v12 = 136315138;
    v22 = v21;
    type metadata accessor for TheftDeterrenceStateManager();
    sub_100F00328(&qword_1016C0118, v13, type metadata accessor for TheftDeterrenceStateManager);
    v14._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
    String.append(_:)(v14);

    v15._countAndFlagsBits = 32;
    v15._object = 0xE100000000000000;
    String.append(_:)(v15);
    v16._countAndFlagsBits = CustomStringConvertible<>.addressDescription.getter();
    String.append(_:)(v16);

    v17._countAndFlagsBits = 62;
    v17._object = 0xE100000000000000;
    String.append(_:)(v17);
    v18 = sub_1000136BC(60, 0xE100000000000000, &v22);

    *(v12 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v10, v11, a4, v12, 0xCu);
    sub_100007BAC(v21);
  }

  v19 = *(a2 + 128);
  return PassthroughSubject.send(_:)();
}

void sub_100EFF224(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = objc_opt_self();

  v6 = [v5 sharedInstance];
  v7 = swift_allocObject();
  *(v7 + 16) = sub_100407A2C;
  *(v7 + 24) = v4;
  v9[4] = sub_100F0022C;
  v9[5] = v7;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_100EFF3D4;
  v9[3] = &unk_10165AF80;
  v8 = _Block_copy(v9);

  [v6 activationLockInfoFromDeviceWithCompletion:v8];
  _Block_release(v8);
}

uint64_t sub_100EFF35C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (!a2)
  {
    return a3();
  }

  swift_errorRetain();
  (a3)(a2, 1);
}

void sub_100EFF3D4(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(v8, a3);
}

void sub_100EFF460()
{
  v1 = v0;
  if (*(v0 + 88))
  {

    DispatchTimer.cancel()();

    v2 = *(v0 + 88);
    *(v0 + 88) = 0;
  }

  v3 = *(v0 + 80);
  swift_allocObject();
  swift_weakInit();
  v4 = type metadata accessor for DispatchTimer();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  v7 = v3;
  v8 = DispatchTimer.init(deadline:repeating:leeway:queue:block:)();
  v9 = *(v1 + 88);
  *(v1 + 88) = v8;

  DispatchTimer.resume()();

  if (qword_101694FB0 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_1000076D4(v10, qword_10177C2A8);

  oslog = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v19 = v13;
    *v12 = 136315138;
    v18 = *(v1 + 88);

    sub_1000BC4D4(&qword_1016C0100, &unk_1013F1AC0);
    v14 = String.init<A>(describing:)();
    v16 = sub_1000136BC(v14, v15, &v19);

    *(v12 + 4) = v16;
    _os_log_impl(&_mh_execute_header, oslog, v11, "Scheduled a retryTimer to fetch offlineFindingInfo from nvram %s", v12, 0xCu);
    sub_100007BAC(v13);
  }

  else
  {
  }
}

uint64_t sub_100EFF6CC()
{
  v0 = sub_1000BC4D4(&unk_1016B2720, "r\a\a");
  v1 = *(*(v0 - 8) + 64);
  v2 = __chkstk_darwin(v0);
  v4 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = v25 - v5;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_101032844(v6);
    sub_100EFFC58(v6, v4);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 1)
    {
      sub_10000B3A8(v4, &unk_1016B2720, "r\a\a");
    }

    if (qword_101694FB0 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_1000076D4(v9, qword_10177C2A8);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v27[0] = swift_slowAlloc();
      *v12 = 136315650;
      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v14 = *(Strong + 72);
      }

      else
      {
        v14 = 0;
      }

      v25[1] = v14;
      sub_1000BC4D4(&qword_1016C0108, &unk_1013F1AD0);
      v15 = String.init<A>(describing:)();
      v17 = sub_1000136BC(v15, v16, v27);

      *(v12 + 4) = v17;
      *(v12 + 12) = 1024;
      *(v12 + 14) = EnumCaseMultiPayload != 1;
      *(v12 + 18) = 2080;
      swift_beginAccess();
      v18 = swift_weakLoadStrong();
      if (v18 && (v19 = *(v18 + 72), , , v19))
      {
        CurrentValueSubject.value.getter();

        v20 = v26;
      }

      else
      {
        v20 = 2;
      }

      v26 = v20;
      sub_1000BC4D4(&unk_1016BB0A0, &qword_10139A220);
      v21 = String.init<A>(describing:)();
      v23 = sub_1000136BC(v21, v22, v27);

      *(v12 + 20) = v23;
      _os_log_impl(&_mh_execute_header, v10, v11, "Reloaded NVRAM state after retry timer. Subject %s. New state %{BOOL}d existing %s", v12, 0x1Cu);
      swift_arrayDestroy();
    }

    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v24 = *(result + 72);

      if (v24)
      {
        CurrentValueSubject.value.getter();
        if ((EnumCaseMultiPayload != 1) != v26)
        {
          v26 = EnumCaseMultiPayload != 1;
          CurrentValueSubject.send(_:)();
        }
      }
    }
  }

  return result;
}

uint64_t sub_100EFFAA4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 40);

  v4 = *(v0 + 48);

  v5 = *(v0 + 56);

  v6 = *(v0 + 64);

  v7 = *(v0 + 72);

  v8 = *(v0 + 88);

  v9 = *(v0 + 104);

  v10 = *(v0 + 112);

  v11 = *(v0 + 120);

  v12 = *(v0 + 128);

  v13 = *(v0 + 136);

  return v0;
}

uint64_t sub_100EFFB3C()
{
  sub_100EFFAA4();

  return swift_deallocClassInstance();
}

uint64_t sub_100EFFB94()
{
  v6 = *v0;
  type metadata accessor for TheftDeterrenceStateManager();
  v1._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
  String.append(_:)(v1);

  v2._countAndFlagsBits = 32;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  v3._countAndFlagsBits = CustomStringConvertible<>.addressDescription.getter();
  String.append(_:)(v3);

  v4._countAndFlagsBits = 62;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);
  return 60;
}

uint64_t sub_100EFFC58(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&unk_1016B2720, "r\a\a");
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100EFFE38(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100014650;

  return sub_100EFC81C(a1, v4, v5, v7, v6);
}

uint64_t sub_100EFFF38(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, *(a1 + 8), *(a1 + 9), *(a1 + 10), *(a1 + 11), *(a1 + 12), *(a1 + 13));
}

uint64_t sub_100EFFF90()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_100EFFFE0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100014744;

  return sub_100EFCC64(a1, v4, v5, v7, v6);
}

uint64_t sub_100F0009C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014650;

  return sub_1002ECF7C();
}

uint64_t sub_100F0017C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&unk_1016B2720, "r\a\a");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100F00234()
{
  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v0 = qword_10177C218;
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 isInternalBuild];

  if (v2 && (v3 = String._bridgeToObjectiveC()(), v4 = [v0 BOOLForKey:v3], v3, (v4 & 1) != 0))
  {
    return 1;
  }

  else
  {
    return (sub_100EF99F8() >> 1) & 1;
  }
}

uint64_t sub_100F00328(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_100F003A4(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v16 = a4;
  v8 = sub_1000BC4D4(&qword_1016C02B8, &qword_1013F1D90);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v15 - v11;
  v13 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100F01754();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = a2;
  v19 = 0;
  sub_1000BC4D4(&qword_101698DD8, &qword_1013C44B0);
  sub_1008DA158(&qword_1016AD858);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v4)
  {
    v17 = a3;
    v18 = v16;
    v19 = 1;
    sub_100017D5C(a3, v16);
    sub_1000E3190();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v17, v18);
  }

  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_100F0058C(uint64_t a1)
{
  v2 = sub_100F01754();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100F005C8(uint64_t a1)
{
  v2 = sub_100F01754();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100F00604@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100F01508(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_100F00654(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x72624E72656E776FLL;
    v7 = 0x747865746E6F63;
    if (a1 != 10)
    {
      v7 = 0x65646F4D74736F6CLL;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0x656C746974;
    v9 = 1954047348;
    if (a1 != 7)
    {
      v9 = 0x6C69616D65;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x646975756162;
    v2 = 0x754E6C6169726573;
    v3 = 0x49746375646F7270;
    if (a1 != 4)
    {
      v3 = 0x6449726F646E6576;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 1684628325;
    if (a1 != 1)
    {
      v4 = 0x644970696863;
    }

    if (a1)
    {
      v1 = v4;
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
}

uint64_t sub_100F007C8(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016C0298, &qword_1013F1D78);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v44[-v8];
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100F0146C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v44[15] = 0;
  type metadata accessor for UUID();
  sub_100F014C0(&qword_101698330, &type metadata accessor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = type metadata accessor for LostModeRequestContent();
    v12 = (v3 + v11[5]);
    v13 = *v12;
    v14 = v12[1];
    v44[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = (v3 + v11[6]);
    v16 = *v15;
    v17 = v15[1];
    v44[13] = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v18 = (v3 + v11[7]);
    v19 = *v18;
    v20 = v18[1];
    v44[12] = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v21 = (v3 + v11[8]);
    v22 = *v21;
    v23 = v21[1];
    v44[11] = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v24 = (v3 + v11[9]);
    v25 = *v24;
    v26 = v24[1];
    v44[10] = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    v27 = (v3 + v11[10]);
    v28 = *v27;
    v29 = v27[1];
    v44[9] = 6;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v30 = (v3 + v11[11]);
    v31 = *v30;
    v32 = v30[1];
    v44[8] = 7;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v33 = (v3 + v11[12]);
    v34 = *v33;
    v35 = v33[1];
    v44[7] = 8;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v36 = (v3 + v11[13]);
    v37 = *v36;
    v38 = v36[1];
    v44[6] = 9;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v39 = (v3 + v11[14]);
    v40 = *v39;
    v41 = v39[1];
    v44[5] = 10;
    KeyedEncodingContainer.encode(_:forKey:)();
    v42 = *(v3 + v11[15]);
    v44[4] = 11;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100F00B6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100F019D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100F00B94(uint64_t a1)
{
  v2 = sub_100F0146C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100F00BD0(uint64_t a1)
{
  v2 = sub_100F0146C();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_100F00C24(uint64_t a1)
{
  v53 = type metadata accessor for LostModeRequestContent();
  v2 = *(*(v53 - 8) + 64);
  v3 = __chkstk_darwin(v53);
  v54 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v53 - v5;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100907E70(_swiftEmptyArrayStorage);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v55 = v12;
  sub_100FFACA0(1702195828, 0xE400000000000000, 0xD00000000000001BLL, 0x800000010134EA20, isUniquelyReferenced_nonNull_native);
  v14 = v55;
  v15 = [objc_opt_self() currentDevice];
  if (!v15)
  {
    __break(1u);
    goto LABEL_10;
  }

  v16 = v15;
  v17 = [v15 serverFriendlyDescription];

  if (!v17)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  v21 = swift_isUniquelyReferenced_nonNull_native();
  v55 = v14;
  sub_100FFACA0(v18, v20, 0xD000000000000011, 0x800000010134EA40, v21);
  v22 = v55;
  Date.init()();
  v23 = Date.epoch.getter();
  (*(v8 + 8))(v11, v7);
  v55 = v23;
  v24 = dispatch thunk of CustomStringConvertible.description.getter();
  v26 = v25;
  v27 = swift_isUniquelyReferenced_nonNull_native();
  v55 = v22;
  sub_100FFACA0(v24, v26, 0xD000000000000015, 0x800000010134EA60, v27);
  v28 = v55;
  v55 = 1;
  v29 = dispatch thunk of CustomStringConvertible.description.getter();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v55 = v28;
  sub_100FFACA0(v29, v31, 0xD000000000000013, 0x800000010134EA80, v32);
  v33 = v55;
  v34 = sub_1008D9A78();
  v36 = v35;
  v37 = swift_isUniquelyReferenced_nonNull_native();
  v55 = v33;
  sub_100FFACA0(v34, v36, 0x6567412D72657355, 0xEA0000000000746ELL, v37);
  if (qword_101694A30 != -1)
  {
    swift_once();
  }

  v38 = type metadata accessor for Logger();
  sub_1000076D4(v38, qword_10177B570);
  sub_100F012C8(a1, v6);
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v55 = v42;
    *v41 = 136315138;
    sub_100F012C8(v6, v54);
    v43 = String.init<A>(describing:)();
    v45 = v44;
    sub_100F0132C(v6);
    v46 = sub_1000136BC(v43, v45, &v55);

    *(v41 + 4) = v46;
    _os_log_impl(&_mh_execute_header, v39, v40, "Lost Mode content: %s", v41, 0xCu);
    sub_100007BAC(v42);
  }

  else
  {

    sub_100F0132C(v6);
  }

  v47 = type metadata accessor for JSONEncoder();
  v48 = *(v47 + 48);
  v49 = *(v47 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  sub_100F014C0(&qword_1016C01D8, type metadata accessor for LostModeRequestContent);
  v50 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v52 = v51;
  sub_100F0132C(a1);

  sub_100017D5C(v50, v52);

  sub_100016590(v50, v52);
}

uint64_t type metadata accessor for LostModeRequestContent()
{
  result = qword_1016C0238;
  if (!qword_1016C0238)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100F012C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LostModeRequestContent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100F0132C(uint64_t a1)
{
  v2 = type metadata accessor for LostModeRequestContent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100F013C0()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    sub_1000E3404();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_100F0146C()
{
  result = qword_1016C02A0;
  if (!qword_1016C02A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C02A0);
  }

  return result;
}

uint64_t sub_100F014C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100F01508(uint64_t *a1)
{
  v3 = sub_1000BC4D4(&qword_1016C02A8, &unk_1013F1D80);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v12 - v6;
  v8 = a1[3];
  sub_1000035D0(a1, v8);
  sub_100F01754();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100007BAC(a1);
  }

  else
  {
    sub_1000BC4D4(&qword_101698DD8, &qword_1013C44B0);
    v15 = 0;
    sub_1008DA158(&qword_1016AD848);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v8 = v13;
    v15 = 1;
    sub_1000E307C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v7, v3);
    v10 = v13;
    v11 = v14;

    sub_100017D5C(v10, v11);
    sub_100007BAC(a1);

    sub_100016590(v10, v11);
  }

  return v8;
}

unint64_t sub_100F01754()
{
  result = qword_1016C02B0;
  if (!qword_1016C02B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C02B0);
  }

  return result;
}

unint64_t sub_100F017CC()
{
  result = qword_1016C02C0;
  if (!qword_1016C02C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C02C0);
  }

  return result;
}

unint64_t sub_100F01824()
{
  result = qword_1016C02C8;
  if (!qword_1016C02C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C02C8);
  }

  return result;
}

unint64_t sub_100F0187C()
{
  result = qword_1016C02D0;
  if (!qword_1016C02D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C02D0);
  }

  return result;
}

unint64_t sub_100F018D4()
{
  result = qword_1016C02D8;
  if (!qword_1016C02D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C02D8);
  }

  return result;
}

unint64_t sub_100F0192C()
{
  result = qword_1016C02E0;
  if (!qword_1016C02E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C02E0);
  }

  return result;
}

unint64_t sub_100F01984()
{
  result = qword_1016C02E8;
  if (!qword_1016C02E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C02E8);
  }

  return result;
}

uint64_t sub_100F019D8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x646975756162 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1684628325 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x644970696863 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x754E6C6169726573 && a2 == 0xEC0000007265626DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x49746375646F7270 && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6449726F646E6576 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 1954047348 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6C69616D65 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x72624E72656E776FLL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x747865746E6F63 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x65646F4D74736F6CLL && a2 == 0xEF64656C62616E45)
  {

    return 11;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

uint64_t sub_100F01DA0@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for FMNAccountType.pairingLock(_:);
  v3 = type metadata accessor for FMNAccountType();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = *(type metadata accessor for UnpairEndPoint() + 20);
  URLComponents.init()();
  URLComponents.scheme.setter();
  URLComponents.path.setter();
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v5 = *(qword_10177B348 + 40);
  OS_dispatch_queue.sync<A>(execute:)();
  sub_101074618(v7);

  return URLComponents.host.setter();
}

uint64_t type metadata accessor for UnpairEndPoint()
{
  result = qword_1016C0348;
  if (!qword_1016C0348)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for KeyRequestEnvelope()
{
  result = qword_1016C03D8;
  if (!qword_1016C03D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100F01FE4()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100F02058(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016C0410, &qword_1013F2068);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100F02748();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = 0;
  type metadata accessor for UUID();
  sub_1000096E8(&qword_101698330);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = (v3 + *(type metadata accessor for KeyRequestEnvelope() + 20));
    v12 = *v11;
    v14 = *(v11 + 1);
    v13 = *(v11 + 2);
    v17 = v12;
    v18 = v14;
    v19 = v13;
    v16[7] = 1;
    sub_100157F84();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100F02220@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v33 = type metadata accessor for UUID();
  v30 = *(v33 - 8);
  v4 = *(v30 + 64);
  __chkstk_darwin(v33);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&qword_1016C0420, &qword_1013F2070);
  v8 = *(v7 - 8);
  v31 = v7;
  v32 = v8;
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v27 - v10;
  v12 = type metadata accessor for KeyRequestEnvelope();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100F02748();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v28 = v12;
  v17 = v15;
  v18 = v30;
  v34 = 0;
  sub_1000096E8(&qword_101698300);
  v19 = v33;
  v20 = v31;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v21 = *(v18 + 32);
  v27 = v17;
  v21(v17, v6, v19);
  v37 = 1;
  sub_100157E1C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v32 + 8))(v11, v20);
  v22 = v35;
  v23 = v36;
  v24 = v27;
  v25 = v27 + *(v28 + 20);
  *v25 = v34;
  *(v25 + 8) = v22;
  *(v25 + 16) = v23;
  sub_100F0279C(v24, v29);
  sub_100007BAC(a1);
  return sub_100F02800(v24);
}

unint64_t sub_100F02578()
{
  if (*v0)
  {
    result = 0x4449656C707061;
  }

  else
  {
    result = 0xD000000000000010;
  }

  *v0;
  return result;
}

uint64_t sub_100F025B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x8000000101347590 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x4449656C707061 && a2 == 0xE700000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_100F026A0(uint64_t a1)
{
  v2 = sub_100F02748();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100F026DC(uint64_t a1)
{
  v2 = sub_100F02748();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_100F02748()
{
  result = qword_1016C0418;
  if (!qword_1016C0418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C0418);
  }

  return result;
}

uint64_t sub_100F0279C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for KeyRequestEnvelope();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100F02800(uint64_t a1)
{
  v2 = type metadata accessor for KeyRequestEnvelope();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100F02870()
{
  result = qword_1016C0428;
  if (!qword_1016C0428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C0428);
  }

  return result;
}

unint64_t sub_100F028C8()
{
  result = qword_1016C0430;
  if (!qword_1016C0430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C0430);
  }

  return result;
}

unint64_t sub_100F02920()
{
  result = qword_1016C0438;
  if (!qword_1016C0438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C0438);
  }

  return result;
}

uint64_t sub_100F02974()
{
  v0 = type metadata accessor for OS_dispatch_queue.Attributes();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  v2 = type metadata accessor for DispatchQoS();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v16 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v4 = *(v16 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v16);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13[1] = sub_1000BC488();
  v13[2] = "nectionMaterialMonitor";
  v15 = enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:);
  v14 = *(v4 + 104);
  v14(v7);
  static DispatchQoS.unspecified.getter();
  v18 = _swiftEmptyArrayStorage;
  v13[0] = sub_100F04BD0(&qword_10169BB60, 255, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_1000041A4(&qword_10169BB70, &unk_101695580, &qword_101385D90);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v8 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v9 = v16;
  *(v17 + 16) = v8;
  (v14)(v7, v15, v9);
  static DispatchQoS.unspecified.getter();
  v18 = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v10 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v11 = v17;
  *(v17 + 24) = v10;
  *(v11 + 32) = &_swiftEmptySetSingleton;
  return v11;
}

uint64_t sub_100F02C90()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177C2C0);
  sub_1000076D4(v0, qword_10177C2C0);
  return Logger.init(subsystem:category:)();
}

Swift::Int sub_100F02D10()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100F02D84()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100F02DD8@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_10160CD08, *a1);

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_100F02E4C()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177C2D8);
  v1 = sub_1000076D4(v0, qword_10177C2D8);
  if (qword_101694FB8 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_10177C2C0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_100F02F14()
{
  v1 = *(v0 + 136);
  if (v1)
  {
    v2 = *(v0 + 136);
  }

  else
  {
    v3 = type metadata accessor for LocalFindableConnectionMaterialTrampoline();
    v4 = objc_allocWithZone(v3);
    *&v4[OBJC_IVAR____TtC12searchpartyd41LocalFindableConnectionMaterialTrampoline_implementation] = v0;
    v9.receiver = v4;
    v9.super_class = v3;

    v5 = objc_msgSendSuper2(&v9, "init");
    v6 = *(v0 + 136);
    *(v0 + 136) = v5;
    v2 = v5;

    v1 = 0;
  }

  v7 = v1;
  return v2;
}

uint64_t sub_100F02FB0()
{
  v1 = type metadata accessor for XPCServiceDescription();
  v23 = *(v1 - 8);
  v24 = v1;
  v2 = *(v23 + 64);
  __chkstk_darwin(v1);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MachServiceName();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v23 - v11;
  MachServiceName.init(_:)();
  (*(v6 + 16))(v10, v12, v5);
  sub_100F02F14();
  if (qword_101694FC8 != -1)
  {
    swift_once();
  }

  v13 = qword_1016C0440;
  v14 = objc_opt_self();
  v15 = v13;
  v16 = [v14 interfaceWithProtocol:&OBJC_PROTOCOL___SPLocalFindableConnectionMaterialMonitoringXPCClientProtocol];
  swift_retain_n();
  XPCServiceDescription.init(name:options:exportedObject:exportedInterface:remoteObjectInterface:shouldAccept:interruptionHandler:invalidationHandler:)();
  v17 = *(v0 + 128);
  XPCSessionManager.register(service:)();
  if (qword_101694FC0 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_1000076D4(v18, qword_10177C2D8);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "Successfully registered XPC services.", v21, 2u);
  }

  (*(v23 + 8))(v4, v24);
  return (*(v6 + 8))(v12, v5);
}

uint64_t sub_100F03324(void *a1, uint64_t a2, const char *a3)
{
  if (qword_101694FB8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177C2C0);
  v6 = a1;
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
    _os_log_impl(&_mh_execute_header, v7, v8, a3, v9, 0xCu);
    sub_10000B3A8(v10, &qword_10169BB30, &unk_10138B3C0);
  }

  return sub_100F03798(v6);
}

void sub_100F0347C()
{
  v0 = objc_opt_self();
  v1 = &OBJC_PROTOCOL___SPLocalFindableConnectionMaterialMonitoringXPCProtocol;
  v2 = [v0 interfaceWithProtocol:v1];

  qword_1016C0440 = v2;
}

uint64_t sub_100F034E4(void *a1)
{
  if (*(v1 + 144))
  {
    v3 = *(v1 + 144);
  }

  else
  {
    v4 = v1;
    type metadata accessor for LocalFindableConnectionMaterialMonitoringSession();
    *(swift_allocObject() + 40) = 0;
    v5 = sub_100F02974();
    if (qword_101694FB8 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_1000076D4(v6, qword_10177C2C0);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v9 = 136315138;
      v18 = v17;

      sub_1000BC4D4(&qword_1016C05A0, &unk_1013EA690);
      sub_1000041A4(&unk_1016BC4F0, &qword_1016C05A0, &unk_1013EA690);
      v10._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
      String.append(_:)(v10);

      v11._countAndFlagsBits = 8250;
      v11._object = 0xE200000000000000;
      String.append(_:)(v11);
      v12._countAndFlagsBits = CustomStringConvertible<>.addressDescription.getter();
      String.append(_:)(v12);

      v13._countAndFlagsBits = 62;
      v13._object = 0xE100000000000000;
      String.append(_:)(v13);

      v14 = sub_1000136BC(60, 0xE100000000000000, &v18);

      *(v9 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v7, v8, "Created new LocalFindableConnectionMaterialSession: %s", v9, 0xCu);
      sub_100007BAC(v17);
    }

    v15 = *(v1 + 144);
    *(v4 + 144) = v5;
    swift_retain_n();
  }

  swift_retain_n();
  sub_100F9D074(a1);
}

uint64_t sub_100F03798(uint64_t result)
{
  v2 = *(v1 + 144);
  if (v2)
  {
    v3 = v1;
    v4 = result;
    v5 = *(v2 + 16);
    v6 = swift_allocObject();
    *(v6 + 16) = v2;
    *(v6 + 24) = v4;
    v7 = swift_allocObject();
    *(v7 + 16) = sub_100F04BC8;
    *(v7 + 24) = v6;
    aBlock[4] = sub_1000D2FB0;
    aBlock[5] = v7;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10013FE14;
    aBlock[3] = &unk_10165B228;
    v8 = _Block_copy(aBlock);
    swift_retain_n();
    v9 = v4;

    dispatch_sync(v5, v8);
    _Block_release(v8);
    LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

    if (v5)
    {
      __break(1u);
    }

    else
    {
      v10 = *(v2 + 16);
      OS_dispatch_queue.sync<A>(execute:)();
      if (LOBYTE(aBlock[0]) == 1)
      {
        sub_100A54240();

        v11 = *(v3 + 144);
        *(v3 + 144) = 0;
      }
    }
  }

  return result;
}

uint64_t sub_100F03968(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return _swift_task_switch(sub_100F03988, v1, 0);
}

uint64_t sub_100F03988()
{
  if (qword_101694FB8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177C2C0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "LocalFindableConnectionMaterialService.startCharacteristicsMonitoring", v4, 2u);
  }

  v5 = v0[4];
  v6 = v0[5];

  sub_100F034E4(v5);
  if (*(v6 + 144))
  {

    sub_100A523D0();
  }

  else
  {
    type metadata accessor for SPLocalFindableConnectionMaterialMonitoringSessionError(0);
    v0[3] = 1;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100F04BD0(&qword_1016961D0, 255, type metadata accessor for SPLocalFindableConnectionMaterialMonitoringSessionError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v8 = v0[2];
    swift_willThrow();
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_100F03B80()
{
  if (qword_101694FB8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177C2C0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "AccessoryDiscoveryService.stopCharacteristicsMonitoring", v4, 2u);
  }

  v5 = v0[4];

  if (*(v5 + 144))
  {
    v6 = *(v5 + 144);

    sub_100A54240();
  }

  else
  {
    type metadata accessor for SPLocalFindableConnectionMaterialMonitoringSessionError(0);
    v0[3] = 1;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100F04BD0(&qword_1016961D0, 255, type metadata accessor for SPLocalFindableConnectionMaterialMonitoringSessionError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v8 = v0[2];
    swift_willThrow();
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_100F03D48(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = *(*(sub_1000BC4D4(&qword_1016A9A30, &unk_1013BD120) - 8) + 64) + 15;
  v2[6] = swift_task_alloc();
  v4 = type metadata accessor for LocalFindableAccessoryRecord();
  v2[7] = v4;
  v5 = *(v4 - 8);
  v2[8] = v5;
  v6 = *(v5 + 64) + 15;
  v2[9] = swift_task_alloc();
  v7 = async function pointer to daemon.getter[1];
  v8 = swift_task_alloc();
  v2[10] = v8;
  *v8 = v2;
  v8[1] = sub_100F03E70;

  return daemon.getter();
}

uint64_t sub_100F03E70(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v12 = *v1;
  *(v3 + 88) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 96) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for CloudStorageService();
  v9 = sub_100F04BD0(&qword_1016AA400, 255, &type metadata accessor for Daemon);
  v10 = sub_100F04BD0(&unk_1016AA520, 255, type metadata accessor for CloudStorageService);
  *v6 = v12;
  v6[1] = sub_100F04054;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100F04054(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 96);
  v6 = *v2;
  v4[13] = a1;
  v4[14] = v1;

  if (v1)
  {
    v7 = v4[5];
    v8 = sub_100F04634;
  }

  else
  {
    v9 = v4[11];

    v8 = sub_100F0418C;
    v7 = a1;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100F0418C()
{
  v1 = *(v0[13] + 128);
  v2 = swift_task_alloc();
  v0[15] = v2;
  *v2 = v0;
  v2[1] = sub_100F0422C;
  v3 = v0[6];
  v4 = v0[4];

  return sub_100C57B00(v3, v4);
}

uint64_t sub_100F0422C()
{
  v2 = *(*v1 + 120);
  v3 = *(*v1 + 40);
  v6 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = sub_100F045B0;
  }

  else
  {
    v4 = sub_100F04354;
  }

  return _swift_task_switch(v4, v3, 0);
}