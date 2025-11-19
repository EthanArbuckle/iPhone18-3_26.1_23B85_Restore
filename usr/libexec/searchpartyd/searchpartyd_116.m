uint64_t sub_100C29260()
{
  v1 = *(v0 + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_peripheralProvider);
  v2 = *(v0 + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_peripheralProvider + 8);
  return swift_unknownObjectRetain();
}

uint64_t sub_100C292E0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_pairingConfiguration;
  swift_beginAccess();
  sub_10002311C(a1, v1 + v3, &qword_1016A12E0, &qword_1013A51D0);
  return swift_endAccess();
}

uint64_t sub_100C293B0()
{
  v1 = *(v0 + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_beaconStore);
  v2 = *(v0 + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_beaconStore + 8);
  return swift_unknownObjectRetain();
}

uint64_t sub_100C293E4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_beaconRecordIdentifier;
  swift_beginAccess();
  return sub_1000D2A70(v1 + v3, a1, &qword_1016980D0, &unk_10138F3B0);
}

uint64_t sub_100C2944C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_beaconRecordIdentifier;
  swift_beginAccess();
  sub_10002311C(a1, v1 + v3, &qword_1016980D0, &unk_10138F3B0);
  return swift_endAccess();
}

uint64_t sub_100C2951C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for AirTagPairingExecutor();

  return PairingExecutor.stream()(v3, a2);
}

uint64_t sub_100C29568(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100014650;

  return sub_100C13C94(a1);
}

uint64_t sub_100C295FC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014744;

  return sub_100C1ACA0();
}

uint64_t sub_100C29688(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100014744;

  return sub_100C25398(a1);
}

uint64_t sub_100C29720()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014744;

  return sub_100C27184();
}

uint64_t sub_100C297AC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014744;

  return sub_100C27924();
}

uint64_t sub_100C29838@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_state;
  swift_beginAccess();
  v4 = type metadata accessor for PairingExecutorState();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_100C298C0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_state;
  swift_beginAccess();
  v4 = type metadata accessor for PairingExecutorState();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t sub_100C299B0()
{
  v1 = OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_stateHistory;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_100C299F8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_stateHistory;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_100C29AB0()
{
  type metadata accessor for AirTagPairingExecutor();
  sub_100C2A554(&qword_1016B7838, type metadata accessor for AirTagPairingExecutor);

  return PairingExecutor.setState(_:)();
}

uint64_t sub_100C29B7C()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_1016B8828);
  v1 = sub_1000076D4(v0, qword_1016B8828);
  if (qword_101694D80 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_10177BD68);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

unint64_t sub_100C29C44()
{
  result = qword_1016B8AB0;
  if (!qword_1016B8AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B8AB0);
  }

  return result;
}

unint64_t sub_100C29CEC()
{
  result = qword_1016B8AB8;
  if (!qword_1016B8AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B8AB8);
  }

  return result;
}

uint64_t sub_100C29D40()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177BD68);
  sub_1000076D4(v0, qword_10177BD68);
  return Logger.init(subsystem:category:)();
}

unint64_t sub_100C29DC0()
{
  result = qword_1016B8AC0;
  if (!qword_1016B8AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B8AC0);
  }

  return result;
}

unint64_t sub_100C29E14()
{
  result = qword_1016B8AC8;
  if (!qword_1016B8AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B8AC8);
  }

  return result;
}

uint64_t sub_100C29E68(uint64_t a1)
{
  v4 = *(type metadata accessor for OwnedBeaconRecord() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100014650;

  return sub_100C26C1C(a1, v6, v7, v8, v1 + v5);
}

unint64_t sub_100C29FFC()
{
  result = qword_1016B8AD8;
  if (!qword_1016B8AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B8AD8);
  }

  return result;
}

uint64_t sub_100C2A050(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100014744;

  return sub_100C24A48(a1, v4, v5, v1 + 32);
}

uint64_t sub_100C2A100(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014744;

  return sub_100C24B10(a1, v4, v5, v6);
}

uint64_t sub_100C2A1B4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100014744;

  return sub_100C24E0C(a1, v4, v5, v1 + 32);
}

uint64_t sub_100C2A264()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[6];
  if (v2 >> 60 != 15)
  {
    sub_100016590(v0[5], v2);
  }

  v3 = v0[8];
  if (v3 >> 60 != 15)
  {
    sub_100016590(v0[7], v3);
  }

  v4 = v0[9];

  v5 = v0[11];

  return _swift_deallocObject(v0, 96);
}

uint64_t sub_100C2A2DC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100014744;

  return sub_100C24ED4(a1, v4, v5, v1 + 32);
}

uint64_t sub_100C2A38C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014744;

  return sub_100C24F9C(a1, v4, v5, v6);
}

uint64_t sub_100C2A440(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100014744;

  return sub_100C252CC(a1, v4, v5, v7, v6);
}

unint64_t sub_100C2A500()
{
  result = qword_1016B8AE0;
  if (!qword_1016B8AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B8AE0);
  }

  return result;
}

uint64_t sub_100C2A554(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100C2A59C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100014650;

  return sub_100C19A30(a1, v5, v4);
}

uint64_t sub_100C2A648(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100014744;

  return sub_100C19C6C(a1, v5, v4);
}

uint64_t sub_100C2A6F4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100014744;

  return sub_100C19E80(a1, v5, v4);
}

uint64_t sub_100C2A7A0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100014744;

  return sub_100C19F38(a1, v5, v4);
}

uint64_t sub_100C2A84C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100014744;

  return sub_100C19FF0(a1, v5, v4);
}

unint64_t sub_100C2A8F8()
{
  result = qword_1016B8AE8;
  if (!qword_1016B8AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B8AE8);
  }

  return result;
}

unint64_t sub_100C2A94C()
{
  result = qword_1016B8AF0;
  if (!qword_1016B8AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B8AF0);
  }

  return result;
}

unint64_t sub_100C2A9A0()
{
  result = qword_1016B8AF8;
  if (!qword_1016B8AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B8AF8);
  }

  return result;
}

unint64_t sub_100C2A9F4()
{
  result = qword_1016B8B00;
  if (!qword_1016B8B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B8B00);
  }

  return result;
}

uint64_t sub_100C2AA48(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100C2AA98(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_100C2AB10()
{
  result = qword_1016B8B08;
  if (!qword_1016B8B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B8B08);
  }

  return result;
}

uint64_t sub_100C2AB68()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177BDD8);
  sub_1000076D4(v0, qword_10177BDD8);
  return Logger.init(subsystem:category:)();
}

unint64_t sub_100C2ABFC()
{
  result = qword_1016B8B10;
  if (!qword_1016B8B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B8B10);
  }

  return result;
}

uint64_t sub_100C2AC50()
{
  v24 = v0[2];
  v25 = v0[3];
  v26 = v0[4];
  v22 = *v0;
  v23 = v0[1];
  _StringGuts.grow(_:)(41);
  sub_100C2BC28();
  v1 = CustomStringConvertible.typeDescription.getter();

  v2._countAndFlagsBits = 0x3A6469636520;
  v2._object = 0xE600000000000000;
  String.append(_:)(v2);
  sub_100017D5C(v22, *(&v22 + 1));
  v3 = Data.hexString.getter();
  v5 = v4;
  sub_100016590(v22, *(&v22 + 1));
  v6._countAndFlagsBits = v3;
  v6._object = v5;
  String.append(_:)(v6);

  v7._countAndFlagsBits = 0x3A44497069686320;
  v7._object = 0xE800000000000000;
  String.append(_:)(v7);
  sub_100017D5C(v23, *(&v23 + 1));
  v8._countAndFlagsBits = Data.description.getter();
  String.append(_:)(v8);

  sub_100016590(v23, *(&v23 + 1));
  v9._countAndFlagsBits = 980316960;
  v9._object = 0xE400000000000000;
  String.append(_:)(v9);
  sub_100017D5C(v24, *(&v24 + 1));
  v10._countAndFlagsBits = Data.description.getter();
  String.append(_:)(v10);

  sub_100016590(v24, *(&v24 + 1));
  v11._countAndFlagsBits = 976315168;
  v11._object = 0xE400000000000000;
  String.append(_:)(v11);
  sub_100017D5C(v25, *(&v25 + 1));
  v12 = Data.hexString.getter();
  v14 = v13;
  sub_100016590(v25, *(&v25 + 1));
  v15._countAndFlagsBits = v12;
  v15._object = v14;
  String.append(_:)(v15);

  v16._countAndFlagsBits = 0x3A65636E6F6E20;
  v16._object = 0xE700000000000000;
  String.append(_:)(v16);
  sub_100017D5C(v26, *(&v26 + 1));
  v17 = Data.hexString.getter();
  v19 = v18;
  sub_100016590(v26, *(&v26 + 1));
  v20._countAndFlagsBits = v17;
  v20._object = v19;
  String.append(_:)(v20);

  return v1;
}

uint64_t sub_100C2AEA8()
{
  v24 = v0[2];
  v25 = v0[3];
  v26 = v0[4];
  v22 = *v0;
  v23 = v0[1];
  _StringGuts.grow(_:)(41);

  sub_100C2BBAC();
  v21 = CustomStringConvertible.typeDescription.getter();
  v1._countAndFlagsBits = 0x3A6469636520;
  v1._object = 0xE600000000000000;
  String.append(_:)(v1);
  sub_100017D5C(v22, *(&v22 + 1));
  v2 = Data.hexString.getter();
  v4 = v3;
  sub_100016590(v22, *(&v22 + 1));
  v5._countAndFlagsBits = v2;
  v5._object = v4;
  String.append(_:)(v5);

  v6._countAndFlagsBits = 0x3A44497069686320;
  v6._object = 0xE800000000000000;
  String.append(_:)(v6);
  sub_100017D5C(v23, *(&v23 + 1));
  v7._countAndFlagsBits = Data.description.getter();
  String.append(_:)(v7);

  sub_100016590(v23, *(&v23 + 1));
  v8._countAndFlagsBits = 980316960;
  v8._object = 0xE400000000000000;
  String.append(_:)(v8);
  sub_100017D5C(v24, *(&v24 + 1));
  v9._countAndFlagsBits = Data.description.getter();
  String.append(_:)(v9);

  sub_100016590(v24, *(&v24 + 1));
  v10._countAndFlagsBits = 976315168;
  v10._object = 0xE400000000000000;
  String.append(_:)(v10);
  sub_100017D5C(v25, *(&v25 + 1));
  v11 = Data.hexString.getter();
  v13 = v12;
  sub_100016590(v25, *(&v25 + 1));
  v14._countAndFlagsBits = v11;
  v14._object = v13;
  String.append(_:)(v14);

  v15._countAndFlagsBits = 0x3A65636E6F6E20;
  v15._object = 0xE700000000000000;
  String.append(_:)(v15);
  sub_100017D5C(v26, *(&v26 + 1));
  v16 = Data.hexString.getter();
  v18 = v17;
  sub_100016590(v26, *(&v26 + 1));
  v19._countAndFlagsBits = v16;
  v19._object = v18;
  String.append(_:)(v19);

  return v21;
}

uint64_t sub_100C2B0F4()
{
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v2 = *v0;
  v3 = v0[1];
  return sub_100C2AEA8();
}

uint64_t sub_100C2B154()
{
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v2 = *v0;
  v3 = v0[1];
  return sub_100C2AC50();
}

__n128 sub_100C2B1B4@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100C2B424(a1, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v6[4];
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

unint64_t sub_100C2B204()
{
  sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1013B62D0;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v2;
  v3 = type metadata accessor for ProximityPairingInfo();
  v4 = *(v0 + v3[5]);
  *(inited + 72) = &type metadata for Int;
  *(inited + 48) = v4;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v5;
  v6 = UUID.uuidString.getter();
  *(inited + 120) = &type metadata for String;
  *(inited + 96) = v6;
  *(inited + 104) = v7;
  *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 136) = v8;
  v9 = *(v0 + v3[6]);
  *(inited + 168) = &type metadata for Int;
  *(inited + 144) = v9;
  *(inited + 176) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 184) = v10;
  v11 = *(v0 + v3[7]);
  *(inited + 216) = &type metadata for Int;
  *(inited + 192) = v11;
  *(inited + 224) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 232) = v12;
  v13 = (v0 + v3[8]);
  v14 = *v13;
  v15 = v13[1];
  *(inited + 264) = &type metadata for Data;
  if (v15 >> 60 == 15)
  {
    v16 = 0;
  }

  else
  {
    v16 = v14;
  }

  v17 = 0xC000000000000000;
  if (v15 >> 60 != 15)
  {
    v17 = v15;
  }

  *(inited + 240) = v16;
  *(inited + 248) = v17;
  *(inited + 272) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 280) = v18;
  v19 = *(v0 + v3[9]);
  *(inited + 312) = &type metadata for Bool;
  *(inited + 288) = v19 & 1;
  *(inited + 320) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 328) = v20;
  v21 = *(v0 + v3[10]);
  *(inited + 360) = &type metadata for Bool;
  *(inited + 336) = v21;
  *(inited + 368) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 376) = v22;
  v23 = *(v0 + v3[11]);
  *(inited + 408) = &type metadata for Bool;
  *(inited + 384) = v23;
  sub_10002E98C(v14, v15);
  v24 = sub_10090403C(inited);
  swift_setDeallocating();
  sub_1000BC4D4(&unk_101695C20, &unk_101386D90);
  swift_arrayDestroy();
  return v24;
}

uint64_t sub_100C2B424@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = a1[4];
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryDecoding.container()();
  sub_10015049C(v23, v24);
  v6 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  if (v2)
  {
    sub_100007BAC(v23);
    return sub_100007BAC(a1);
  }

  else
  {
    v8 = v6;
    v9 = v7;
    sub_10015049C(v23, v24);
    v22 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
    v25 = v10;
    sub_10015049C(v23, v24);
    v11 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
    v21 = v12;
    sub_10015049C(v23, v24);
    v19 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
    v20 = v13;
    sub_10015049C(v23, v24);
    v14 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
    v16 = v15;
    sub_100007BAC(v23);
    result = sub_100007BAC(a1);
    *a2 = v8;
    a2[1] = v9;
    v18 = v25;
    a2[2] = v22;
    a2[3] = v18;
    a2[4] = v11;
    a2[5] = v21;
    a2[6] = v19;
    a2[7] = v20;
    a2[8] = v14;
    a2[9] = v16;
  }

  return result;
}

uint64_t sub_100C2B624@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = type metadata accessor for String.Encoding();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v44 = *(a1 + 16);
  v45 = v9;
  v24 = v9;
  v46 = *(&v44 + 1);
  v25 = v44;
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  sub_1001022C4(&v45, v33);
  sub_1001022C4(&v44, v33);
  static String.Encoding.utf8.getter();
  v12 = String.data(using:allowLossyConversion:)();
  v14 = v13;
  (*(v5 + 8))(v8, v4);
  if (v14 >> 60 == 15)
  {
    v15 = type metadata accessor for GenericError();
    sub_100A1C368();
    swift_allocError();
    (*(*(v15 - 8) + 104))(v16, enum case for GenericError.notImplemented(_:), v15);
    swift_willThrow();
    sub_100C2B8AC(a1);
    sub_100016590(v24, *(&v24 + 1));
    return sub_100016590(v25, v46);
  }

  else
  {
    v18 = *(a1 + 96);
    v42 = *(a1 + 112);
    v43 = v18;
    v39 = v42;
    v40 = v18;
    v41 = *(a1 + 128);
    sub_1001022C4(&v43, v33);
    sub_1001022C4(&v42, v33);
    sub_1001022C4(&v41, v33);
    sub_100C2B8AC(a1);
    *&v19 = v25;
    *(&v19 + 1) = v46;
    v27 = v24;
    v28 = v19;
    *&v29 = v12;
    *(&v29 + 1) = v14;
    v30 = v40;
    v31 = v39;
    v32 = v41;
    v33[0] = v24;
    v33[1] = v19;
    v34 = v12;
    v35 = v14;
    v36 = v40;
    v37 = v39;
    v38 = v41;
    sub_100C2B900(&v27, &v26);
    result = sub_100C2B938(v33);
    v20 = v30;
    a2[2] = v29;
    a2[3] = v20;
    v21 = v32;
    a2[4] = v31;
    a2[5] = v21;
    v22 = v28;
    *a2 = v27;
    a2[1] = v22;
  }

  return result;
}

uint64_t type metadata accessor for ProximityPairingInfo()
{
  result = qword_1016B8B70;
  if (!qword_1016B8B70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100C2B9EC()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    type metadata accessor for SPAccessoryType(319);
    if (v1 <= 0x3F)
    {
      type metadata accessor for SPAccessoryColor(319);
      if (v2 <= 0x3F)
      {
        type metadata accessor for SPCurrentDeviceState(319);
        if (v3 <= 0x3F)
        {
          sub_1002359B8(319, &qword_10169A330);
          if (v4 <= 0x3F)
          {
            sub_1002359B8(319, &qword_10169D5F0);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

unint64_t sub_100C2BB30()
{
  result = qword_1016B8BC0;
  if (!qword_1016B8BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B8BC0);
  }

  return result;
}

unint64_t sub_100C2BB84(uint64_t a1)
{
  result = sub_100C2BBAC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100C2BBAC()
{
  result = qword_1016B8BC8;
  if (!qword_1016B8BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B8BC8);
  }

  return result;
}

unint64_t sub_100C2BC00(uint64_t a1)
{
  result = sub_100C2BC28();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100C2BC28()
{
  result = qword_1016B8BD0;
  if (!qword_1016B8BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B8BD0);
  }

  return result;
}

id sub_100C2BCA8()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC12searchpartyd13BubbleManager_lock;
  sub_1000BC4D4(&qword_1016A6010, &qword_101391C30);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *&v1[v2] = v3;
  v4 = OBJC_IVAR____TtC12searchpartyd13BubbleManager_asyncStreamProvider;
  v5 = sub_1000BC4D4(&qword_1016B8DA0, &unk_1013E0DD0);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  *&v1[v4] = AsyncStreamProvider.init()();
  *&v1[OBJC_IVAR____TtC12searchpartyd13BubbleManager_sessions] = _swiftEmptyDictionarySingleton;
  *&v1[OBJC_IVAR____TtC12searchpartyd13BubbleManager_samples] = _swiftEmptyDictionarySingleton;
  *&v1[OBJC_IVAR____TtC12searchpartyd13BubbleManager_restartCount] = 0;
  v1[OBJC_IVAR____TtC12searchpartyd13BubbleManager_isRunning] = 0;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for BubbleManager();
  return objc_msgSendSuper2(&v9, "init");
}

uint64_t sub_100C2BDB0()
{
  swift_getObjectType();
  v1 = *(v0 + OBJC_IVAR____TtC12searchpartyd13BubbleManager_lock);
  return OSAllocatedUnfairLock.callAsFunction<A>(_:)();
}

void sub_100C2BE20(uint64_t a1)
{
  *(a1 + OBJC_IVAR____TtC12searchpartyd13BubbleManager_isRunning) = 1;
  *(a1 + OBJC_IVAR____TtC12searchpartyd13BubbleManager_restartCount) = 0;
  sub_100C2BF28();
  if (!v1)
  {
    if (qword_101694D98 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1000076D4(v2, qword_1016B8BE0);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Started session.", v5, 2u);
    }
  }
}

uint64_t sub_100C2BF28()
{
  inited = v0;
  if (qword_101694D98 != -1)
  {
LABEL_25:
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_1016B8BE0);
  v3 = inited;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v54 = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_1000136BC(0x655374726174735FLL, 0xEF29286E6F697373, &v54);
    *(v6 + 12) = 2048;
    *(v6 + 14) = *&v3[OBJC_IVAR____TtC12searchpartyd13BubbleManager_restartCount];

    _os_log_impl(&_mh_execute_header, v4, v5, "%s, attempts count = %ld", v6, 0x16u);
    sub_100007BAC(v7);
  }

  else
  {
  }

  sub_1000BC4D4(&qword_1016B8D80, &qword_1013E0DB0);
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_101385D80;
  inited[4] = 1;
  inited[5] = [objc_allocWithZone(NISession) init];
  v8 = sub_10090B42C(inited);
  swift_setDeallocating();
  sub_10000B3A8((inited + 4), &unk_1016B8D88, &unk_1013E0DB8);
  v9 = *&v3[OBJC_IVAR____TtC12searchpartyd13BubbleManager_sessions];
  v49 = v3;
  *&v3[OBJC_IVAR____TtC12searchpartyd13BubbleManager_sessions] = v8;

  v10 = 0;
  v11 = v8 + 64;
  v12 = 1 << *(v8 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v8 + 64);
  v15 = (v12 + 63) >> 6;
  v16 = &_s19FindMyDaemonSupport13DeviceVersionV8PlatformO3iOSyA2EmFWC_ptr;
  v50 = v8 + 64;
  v51 = v8;
  v52 = v15;
  while (1)
  {
    if (!v14)
    {
      while (1)
      {
        v17 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        if (v17 >= v15)
        {
        }

        v14 = *(v11 + 8 * v17);
        ++v10;
        if (v14)
        {
          v10 = v17;
          goto LABEL_15;
        }
      }

      __break(1u);
      goto LABEL_25;
    }

LABEL_15:
    v18 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    v19 = (v10 << 9) | (8 * v18);
    v20 = *(*(v8 + 48) + v19);
    v21 = *(*(v8 + 56) + v19);
    v22 = objc_allocWithZone(v16[227]);
    v53 = v21;
    v23 = String._bridgeToObjectiveC()();
    inited = [v22 initWithName:v23 devicePresencePreset:5];

    if (v20 == 1)
    {
      break;
    }

    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      *v42 = 136315394;
      *(v42 + 4) = sub_1000136BC(0x655374726174735FLL, 0xEF29286E6F697373, &v54);
      *(v42 + 12) = 2080;
      type metadata accessor for NIDevicePresencePreset(0);
      v43 = String.init<A>(describing:)();
      v45 = sub_1000136BC(v43, v44, &v54);

      *(v42 + 14) = v45;
      _os_log_impl(&_mh_execute_header, v40, v41, "%s, unsupported case: %s", v42, 0x16u);
      swift_arrayDestroy();
      v8 = v51;

      v11 = v50;
    }

LABEL_9:
    v15 = v52;
    v16 = &_s19FindMyDaemonSupport13DeviceVersionV8PlatformO3iOSyA2EmFWC_ptr;
  }

  v24 = objc_allocWithZone(v16[227]);
  v25 = String._bridgeToObjectiveC()();
  v26 = [v24 initWithName:v25 devicePresencePreset:1];

  v27 = objc_allocWithZone(NIDevicePresenceConfiguration);
  v54 = 0;
  v28 = v26;
  v29 = inited;
  v30 = [v27 initWithInnerBoundary:v28 outerBoundary:v29 error:&v54];
  if (v30)
  {
    v31 = v30;
    v32 = v54;

    [v31 setAllowedDevices:0];
    [v53 setDelegate:v49];
    v33 = v53;
    inited = v31;
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v48 = v29;
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *v36 = 138543618;
      *(v36 + 4) = v33;
      *(v36 + 12) = 2114;
      *(v36 + 14) = inited;
      *v37 = v33;
      v37[1] = v31;
      v38 = v33;
      v39 = inited;
      _os_log_impl(&_mh_execute_header, v34, v35, "Starting nisession %{public}@, configuration: %{public}@", v36, 0x16u);
      sub_1000BC4D4(&qword_10169BB30, &unk_10138B3C0);
      swift_arrayDestroy();

      v29 = v48;
    }

    [v33 runWithConfiguration:inited];
    v11 = v50;
    v8 = v51;
    goto LABEL_9;
  }

  v47 = v54;

  _convertNSErrorToError(_:)();
  swift_willThrow();
}

uint64_t sub_100C2C618()
{
  swift_getObjectType();
  v1 = *(v0 + OBJC_IVAR____TtC12searchpartyd13BubbleManager_lock);
  return OSAllocatedUnfairLock.callAsFunction<A>(_:)();
}

void sub_100C2C684(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC12searchpartyd13BubbleManager_sessions;
  v3 = *(a1 + OBJC_IVAR____TtC12searchpartyd13BubbleManager_sessions);
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v7 = (v4 + 63) >> 6;
  v8 = *(a1 + OBJC_IVAR____TtC12searchpartyd13BubbleManager_sessions);
  swift_bridgeObjectRetain_n();
  v9 = 0;
  if (v6)
  {
    while (1)
    {
      v10 = v9;
LABEL_9:
      v11 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      [*(*(v3 + 56) + ((v10 << 9) | (8 * v11))) invalidate];
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      goto LABEL_16;
    }

    if (v10 >= v7)
    {
      break;
    }

    v6 = *(v3 + 64 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_9;
    }
  }

  v12 = sub_10090B42C(_swiftEmptyArrayStorage);
  v13 = *(a1 + v2);
  *(a1 + v2) = v12;

  *(a1 + OBJC_IVAR____TtC12searchpartyd13BubbleManager_restartCount) = 0;
  v14 = sub_10090ABB8(_swiftEmptyArrayStorage);
  v15 = OBJC_IVAR____TtC12searchpartyd13BubbleManager_samples;
  swift_beginAccess();
  v16 = *(a1 + v15);
  *(a1 + v15) = v14;

  *(a1 + OBJC_IVAR____TtC12searchpartyd13BubbleManager_isRunning) = 0;
  if (qword_101694D98 == -1)
  {
    goto LABEL_12;
  }

LABEL_16:
  swift_once();
LABEL_12:
  v17 = type metadata accessor for Logger();
  sub_1000076D4(v17, qword_1016B8BE0);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "Stop session.", v20, 2u);
  }
}

id sub_100C2C8B4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BubbleManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100C2C978()
{
  v1 = *(*v0 + OBJC_IVAR____TtC12searchpartyd13BubbleManager_lock);
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  return v3;
}

uint64_t sub_100C2C9EC()
{
  v1 = *(*v0 + OBJC_IVAR____TtC12searchpartyd13BubbleManager_asyncStreamProvider);

  AsyncStreamProvider.stream(initialEvents:)();
}

uint64_t sub_100C2CA48()
{
  swift_getObjectType();
  v1 = *(v0 + OBJC_IVAR____TtC12searchpartyd13BubbleManager_lock);
  return OSAllocatedUnfairLock.callAsFunction<A>(_:)();
}

uint64_t sub_100C2CAC0()
{
  swift_getObjectType();
  v1 = *(v0 + OBJC_IVAR____TtC12searchpartyd13BubbleManager_lock);
  return OSAllocatedUnfairLock.callAsFunction<A>(_:)();
}

void sub_100C2CB38(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC12searchpartyd13BubbleManager_restartCount);
  if (v2 >= *(*(a1 + OBJC_IVAR____TtC12searchpartyd13BubbleManager_sessions) + 16))
  {
    if (qword_101694D98 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_1000076D4(v9, qword_1016B8BE0);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Max restart attempts reached.", v12, 2u);
    }
  }

  else
  {
    *(a1 + OBJC_IVAR____TtC12searchpartyd13BubbleManager_restartCount) = v2 + 1;
    sub_100C2BF28();
    if (v1)
    {
      if (qword_101694D98 != -1)
      {
        swift_once();
      }

      v3 = type metadata accessor for Logger();
      sub_1000076D4(v3, qword_1016B8BE0);
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
        _os_log_impl(&_mh_execute_header, v4, v5, "Failure on session start: %{public}@", v6, 0xCu);
        sub_10000B3A8(v7, &qword_10169BB30, &unk_10138B3C0);
      }

      else
      {
      }
    }
  }
}

uint64_t sub_100C2CD9C(uint64_t result, uint64_t a2)
{
  if (*(*(result + OBJC_IVAR____TtC12searchpartyd13BubbleManager_sessions) + 16))
  {
    v3 = *(a2 + 16);
    if (v3)
    {
      v4 = result;
      v5 = *(type metadata accessor for Device() - 8);
      v6 = (a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80)));
      v7 = *(v5 + 72);
      do
      {
        result = sub_100C2EA24(v6, v4);
        v6 += v7;
        --v3;
      }

      while (v3);
    }
  }

  else
  {
    sub_100C2F668();
    swift_allocError();
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_100C2CE8C(uint64_t a1, uint64_t a2)
{
  v37 = a2;
  v3 = sub_1000BC4D4(&qword_101699860, &qword_1013A34D0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v30[-v5];
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v30[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_1000BC4D4(&unk_1016B7C30, &qword_1013DBFD0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v30[-v15];
  if (*(*(a1 + OBJC_IVAR____TtC12searchpartyd13BubbleManager_sessions) + 16))
  {
    v35 = v8;
    if (qword_101694D98 != -1)
    {
      swift_once();
    }

    v36 = v6;
    v17 = type metadata accessor for Logger();
    sub_1000076D4(v17, qword_1016B8BE0);
    (*(v13 + 16))(v16, v37, v12);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v32 = v18;
      v21 = v20;
      v33 = swift_slowAlloc();
      v38[0] = v33;
      *v21 = 136315651;
      *(v21 + 4) = sub_1000136BC(0x293A5F2874736F6CLL, 0xE800000000000000, v38);
      *(v21 + 12) = 2160;
      *(v21 + 14) = 1752392040;
      *(v21 + 22) = 2081;
      v31 = v19;
      Identifier.id.getter();
      sub_100C2F6BC(&qword_101696930, &type metadata accessor for UUID);
      v22 = dispatch thunk of CustomStringConvertible.description.getter();
      v34 = a1;
      v24 = v23;
      v25 = v35;
      (*(v35 + 8))(v11, v7);
      (*(v13 + 8))(v16, v12);
      v26 = sub_1000136BC(v22, v24, v38);

      *(v21 + 24) = v26;
      v27 = v32;
      _os_log_impl(&_mh_execute_header, v32, v31, "%s, deviceIdentifier: %{private,mask.hash}s", v21, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v13 + 8))(v16, v12);
      v25 = v35;
    }

    Identifier.id.getter();
    swift_beginAccess();
    v29 = v36;
    sub_1001E5884(v11, v36);
    (*(v25 + 8))(v11, v7);
    sub_10000B3A8(v29, &qword_101699860, &qword_1013A34D0);
    return swift_endAccess();
  }

  else
  {
    sub_100C2F668();
    v38[4] = swift_allocError();
    return swift_willThrow();
  }
}

void sub_100C2D3A4(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = v3;
  v158 = a3;
  v150 = type metadata accessor for BubbleManagerDiscovery();
  v7 = *(*(v150 - 8) + 64);
  __chkstk_darwin(v150);
  v151 = &v144 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Device();
  v155 = *(v9 - 8);
  v156 = v9;
  v10 = *(v155 + 64);
  __chkstk_darwin(v9);
  v154 = &v144 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v161 = (&v144 - v14);
  v15 = type metadata accessor for UUID();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v157 = &v144 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v149 = &v144 - v21;
  v22 = __chkstk_darwin(v20);
  v148 = &v144 - v23;
  v24 = __chkstk_darwin(v22);
  v26 = &v144 - v25;
  v27 = __chkstk_darwin(v24);
  v146 = &v144 - v28;
  __chkstk_darwin(v27);
  v30 = &v144 - v29;
  v164 = a1;
  v31 = [a1 deviceIdentifier];
  if (v31)
  {
    v32 = v31;
    v163 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;
  }

  else
  {
    v163 = 0;
    v34 = 0;
  }

  v147 = v26;
  v166 = a2;
  v153 = a2;
  v152 = a2;
  sub_1000BC4D4(&qword_1016B8D98, &qword_1013E0DC8);
  v159 = String.init<A>(describing:)();
  v36 = v35;
  if (qword_101694D98 != -1)
  {
    swift_once();
  }

  v37 = type metadata accessor for Logger();
  v38 = sub_1000076D4(v37, qword_1016B8BE0);

  v165 = v38;
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.default.getter();

  v41 = os_log_type_enabled(v39, v40);
  v162 = v16;
  if (v41)
  {
    v42 = swift_slowAlloc();
    v160 = v3;
    v43 = v42;
    v145 = swift_slowAlloc();
    v168 = v145;
    *v43 = 136316163;
    *(v43 + 4) = sub_1000136BC(0xD000000000000031, 0x800000010136FB00, &v168);
    *(v43 + 12) = 2160;
    *(v43 + 14) = 1752392040;
    *(v43 + 22) = 2081;
    v166 = v163;
    v167 = v34;

    sub_1000BC4D4(&qword_1016A0AC0, &unk_1013926A0);
    v44 = String.init<A>(describing:)();
    v46 = v30;
    v47 = v15;
    v48 = sub_1000136BC(v44, v45, &v168);

    *(v43 + 24) = v48;
    v15 = v47;
    v30 = v46;
    *(v43 + 32) = 2160;
    *(v43 + 34) = 1752392040;
    *(v43 + 42) = 2081;
    v49 = sub_1000136BC(v159, v36, &v168);

    *(v43 + 44) = v49;
    _os_log_impl(&_mh_execute_header, v39, v40, "%s, object = %{private,mask.hash}s\nregion = %{private,mask.hash}s.", v43, 0x34u);
    swift_arrayDestroy();

    v4 = v160;
  }

  else
  {
  }

  v50 = [v164 deviceIdentifier];
  if (!v50)
  {
    goto LABEL_12;
  }

  v51 = v50;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v52 = v161;
  UUID.init(uuidString:)();

  v53 = v162;
  if ((*(v162 + 48))(v52, 1, v15) == 1)
  {
    sub_10000B3A8(v52, &qword_1016980D0, &unk_10138F3B0);
LABEL_12:

    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v168 = v57;
      *v56 = 141558275;
      *(v56 + 4) = 1752392040;
      *(v56 + 12) = 2081;
      v166 = v163;
      v167 = v34;
      sub_1000BC4D4(&qword_1016A0AC0, &unk_1013926A0);
      v58 = String.init<A>(describing:)();
      v60 = sub_1000136BC(v58, v59, &v168);

      *(v56 + 14) = v60;
      _os_log_impl(&_mh_execute_header, v54, v55, "Invalid device identifier %{private,mask.hash}s", v56, 0x16u);
      sub_100007BAC(v57);
    }

    else
    {
    }

    return;
  }

  (*(v53 + 32))(v30, v52, v15);
  v61 = OBJC_IVAR____TtC12searchpartyd13BubbleManager_samples;
  v62 = v158;
  swift_beginAccess();
  v63 = *(v62 + v61);
  v64 = v157;
  if (!*(v63 + 16))
  {
LABEL_23:
    v160 = v4;
    (*(v53 + 16))(v64, v30, v15);
    v82 = Logger.logObject.getter();
    v83 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      v165 = v30;
      v85 = v84;
      v86 = swift_slowAlloc();
      v168 = v86;
      *v85 = 141558275;
      *(v85 + 4) = 1752392040;
      *(v85 + 12) = 2081;
      sub_100C2F6BC(&qword_101696930, &type metadata accessor for UUID);
      v87 = dispatch thunk of CustomStringConvertible.description.getter();
      v88 = v15;
      v90 = v89;
      v91 = *(v53 + 8);
      v92 = v64;
      v93 = v88;
      v91(v92, v88);
      v94 = sub_1000136BC(v87, v90, &v168);

      *(v85 + 14) = v94;
      _os_log_impl(&_mh_execute_header, v82, v83, "Unidentified object for %{private,mask.hash}s", v85, 0x16u);
      sub_100007BAC(v86);

      v91(v165, v93);
    }

    else
    {

      v95 = *(v53 + 8);
      v95(v64, v15);
      v95(v30, v15);
    }

    return;
  }

  v65 = sub_1000210EC(v30);
  if ((v66 & 1) == 0)
  {

    goto LABEL_23;
  }

  v67 = *(v155 + 16);
  v67(v154, *(v63 + 56) + *(v155 + 72) * v65, v156);

  if (v153)
  {
    v68 = v152;
    if ([v68 devicePresencePreset] == 5)
    {
      v164 = v68;
      v160 = v4;
      v69 = v148;
      (*(v53 + 16))(v148, v30, v15);
      v70 = Logger.logObject.getter();
      v71 = v53;
      v72 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v70, v72))
      {
        v73 = swift_slowAlloc();
        v165 = v30;
        v74 = v73;
        v163 = swift_slowAlloc();
        v168 = v163;
        *v74 = 141558275;
        *(v74 + 4) = 1752392040;
        *(v74 + 12) = 2081;
        sub_100C2F6BC(&qword_101696930, &type metadata accessor for UUID);
        v75 = dispatch thunk of CustomStringConvertible.description.getter();
        v76 = v69;
        v77 = v15;
        v79 = v78;
        v80 = *(v71 + 8);
        v80(v76, v77);
        v81 = sub_1000136BC(v75, v79, &v168);
        v15 = v77;

        *(v74 + 14) = v81;
        _os_log_impl(&_mh_execute_header, v70, v72, "Lost region for %{private,mask.hash}s", v74, 0x16u);
        sub_100007BAC(v163);

        v30 = v165;
      }

      else
      {

        v80 = *(v71 + 8);
        v80(v69, v15);
      }

      v122 = *(v158 + OBJC_IVAR____TtC12searchpartyd13BubbleManager_asyncStreamProvider);

      v123 = v151;
      v124 = v154;
      Device.id.getter();
      swift_storeEnumTagMultiPayload();
      AsyncStreamProvider.yield(value:transaction:)();

      sub_100C30364(v123);
      (*(v155 + 8))(v124, v156);
      v80(v30, v15);
    }

    else
    {
      v108 = [v68 devicePresencePreset];
      v109 = *(v53 + 16);
      if (v108 == 1)
      {
        v164 = v68;
        v160 = v4;
        v110 = v146;
        v109(v146, v30, v15);
        v111 = Logger.logObject.getter();
        v112 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v111, v112))
        {
          v113 = swift_slowAlloc();
          v165 = v30;
          v114 = v113;
          v161 = swift_slowAlloc();
          v168 = v161;
          *v114 = 141558275;
          *(v114 + 4) = 1752392040;
          *(v114 + 12) = 2081;
          sub_100C2F6BC(&qword_101696930, &type metadata accessor for UUID);
          v115 = dispatch thunk of CustomStringConvertible.description.getter();
          v116 = v110;
          v117 = v15;
          v119 = v118;
          v163 = *(v162 + 8);
          (v163)(v116, v117);
          v120 = sub_1000136BC(v115, v119, &v168);
          v15 = v117;

          *(v114 + 14) = v120;
          _os_log_impl(&_mh_execute_header, v111, v112, "Discovered .immediate region for %{private,mask.hash}s", v114, 0x16u);
          sub_100007BAC(v161);

          v30 = v165;
        }

        else
        {

          v163 = *(v162 + 8);
          (v163)(v110, v15);
        }

        v139 = *(v158 + OBJC_IVAR____TtC12searchpartyd13BubbleManager_asyncStreamProvider);
        v140 = v151;
        v141 = v154;
        v142 = v156;
        v67(v151, v154, v156);
        swift_storeEnumTagMultiPayload();

        AsyncStreamProvider.yield(value:transaction:)();

        sub_100C30364(v140);
        (*(v155 + 8))(v141, v142);
        (v163)(v30, v15);
      }

      else
      {
        v125 = v147;
        v109(v147, v30, v15);
        v126 = Logger.logObject.getter();
        v127 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v126, v127))
        {
          v128 = swift_slowAlloc();
          v165 = v30;
          v129 = v128;
          v130 = swift_slowAlloc();
          v164 = v68;
          v131 = v130;
          v168 = v130;
          *v129 = 141558275;
          *(v129 + 4) = 1752392040;
          *(v129 + 12) = 2081;
          sub_100C2F6BC(&qword_101696930, &type metadata accessor for UUID);
          v132 = dispatch thunk of CustomStringConvertible.description.getter();
          v133 = v15;
          v135 = v134;
          v160 = v4;
          v136 = v125;
          v137 = *(v162 + 8);
          v137(v136, v133);
          v138 = sub_1000136BC(v132, v135, &v168);

          *(v129 + 14) = v138;
          _os_log_impl(&_mh_execute_header, v126, v127, "Region is NOT .immediate %{private,mask.hash}s", v129, 0x16u);
          sub_100007BAC(v131);

          (*(v155 + 8))(v154, v156);
          v137(v165, v133);
        }

        else
        {

          v143 = *(v162 + 8);
          v143(v125, v15);
          (*(v155 + 8))(v154, v156);
          v143(v30, v15);
        }
      }
    }
  }

  else
  {
    v96 = v149;
    (*(v53 + 16))(v149, v30, v15);
    v97 = Logger.logObject.getter();
    v98 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v97, v98))
    {
      v99 = swift_slowAlloc();
      v165 = v30;
      v100 = v99;
      v101 = swift_slowAlloc();
      v168 = v101;
      *v100 = 141558275;
      *(v100 + 4) = 1752392040;
      *(v100 + 12) = 2081;
      sub_100C2F6BC(&qword_101696930, &type metadata accessor for UUID);
      v102 = dispatch thunk of CustomStringConvertible.description.getter();
      v103 = v15;
      v144 = v15;
      v105 = v104;
      v106 = *(v53 + 8);
      v106(v96, v103);
      v107 = sub_1000136BC(v102, v105, &v168);

      *(v100 + 14) = v107;
      _os_log_impl(&_mh_execute_header, v97, v98, "Missing region for %{private,mask.hash}s", v100, 0x16u);
      sub_100007BAC(v101);

      (*(v155 + 8))(v154, v156);
      v106(v165, v144);
    }

    else
    {

      v121 = *(v53 + 8);
      v121(v96, v15);
      (*(v155 + 8))(v154, v156);
      v121(v30, v15);
    }
  }
}

uint64_t type metadata accessor for BubbleManagerDiscovery()
{
  result = qword_1016B8D20;
  if (!qword_1016B8D20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100C2E7EC()
{
  type metadata accessor for Device();
  if (v0 <= 0x3F)
  {
    sub_100C2E860();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_100C2E860()
{
  if (!qword_1016B8D30)
  {
    type metadata accessor for Device();
    v0 = type metadata accessor for Identifier();
    if (!v1)
    {
      atomic_store(v0, &qword_1016B8D30);
    }
  }
}

uint64_t sub_100C2E8D8()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177BDF0);
  sub_1000076D4(v0, qword_10177BDF0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100C2E95C()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_1016B8BE0);
  v1 = sub_1000076D4(v0, qword_1016B8BE0);
  if (qword_101694D90 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_10177BDF0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100C2EA24(id a1, uint64_t a2)
{
  v114 = a2;
  v3 = sub_1000BC4D4(&qword_101699860, &qword_1013A34D0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v111 = &v104[-v5];
  v6 = sub_1000BC4D4(&unk_1016B7C30, &qword_1013DBFD0);
  v119 = *(v6 - 8);
  v120 = v6;
  v7 = *(v119 + 64);
  v8 = __chkstk_darwin(v6);
  v110 = &v104[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v115 = &v104[-v10];
  v11 = type metadata accessor for UUID();
  v117 = *(v11 - 8);
  v118 = v11;
  v12 = *(v117 + 64);
  v13 = __chkstk_darwin(v11);
  v109 = &v104[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v116 = &v104[-v15];
  v130 = type metadata accessor for Device();
  v16 = *(v130 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v130);
  v125 = &v104[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = __chkstk_darwin(v18);
  v129 = &v104[-v21];
  __chkstk_darwin(v20);
  v23 = &v104[-v22];
  v24 = type metadata accessor for RSSIValue();
  v132 = *(v24 - 8);
  v25 = *(v132 + 64);
  v26 = __chkstk_darwin(v24);
  v28 = &v104[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v29 = __chkstk_darwin(v26);
  v128 = &v104[-v30];
  __chkstk_darwin(v29);
  v32 = &v104[-v31];
  Device.rssi.getter();
  if (qword_101694D98 != -1)
  {
    goto LABEL_31;
  }

  while (1)
  {
    v33 = type metadata accessor for Logger();
    v34 = sub_1000076D4(v33, qword_1016B8BE0);
    v35 = *(v16 + 16);
    v36 = v23;
    v122 = v23;
    v37 = v130;
    v35(v36, a1, v130);
    (*(v132 + 16))(v128, v32, v24);
    v127 = a1;
    v123 = v35;
    v124 = v16 + 16;
    v35(v129, a1, v37);
    v112 = v34;
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.default.getter();
    v40 = os_log_type_enabled(v38, v39);
    v126 = v16;
    v108 = v28;
    if (v40)
    {
      v41 = swift_slowAlloc();
      v107 = swift_slowAlloc();
      v131[0] = v107;
      *v41 = 136316163;
      *(v41 + 4) = sub_1000136BC(0x7265766F63736964, 0xEE00293A5F286465, v131);
      *(v41 + 12) = 2160;
      *(v41 + 14) = 1752392040;
      *(v41 + 22) = 2081;
      v106 = v38;
      v42 = v115;
      v105 = v39;
      v43 = v122;
      Device.id.getter();
      v44 = v116;
      v45 = v120;
      Identifier.id.getter();
      (*(v119 + 8))(v42, v45);
      sub_100C2F6BC(&qword_101696930, &type metadata accessor for UUID);
      v46 = v118;
      v47 = dispatch thunk of CustomStringConvertible.description.getter();
      v113 = v32;
      v49 = v48;
      (*(v117 + 8))(v44, v46);
      v50 = *(v16 + 8);
      (v50)(v43, v130);
      v51 = sub_1000136BC(v47, v49, v131);

      *(v41 + 24) = v51;
      *(v41 + 32) = 2080;
      sub_100C2F6BC(&unk_1016B8D70, &type metadata accessor for RSSIValue);
      v52 = v128;
      v53 = dispatch thunk of CustomStringConvertible.description.getter();
      v55 = v54;
      v56 = *(v132 + 8);
      (v56)(v52, v24);
      v57 = sub_1000136BC(v53, v55, v131);

      *(v41 + 34) = v57;
      *(v41 + 42) = 2080;
      v32 = v113;
      v58 = v129;
      v59 = Device.model.getter();
      v61 = v60 ? v59 : 0;
      v62 = v60 ? v60 : 0xE000000000000000;
      v63 = v58;
      v64 = v130;
      v128 = v50;
      (v50)(v63, v130);
      v65 = sub_1000136BC(v61, v62, v131);

      *(v41 + 44) = v65;
      v66 = v106;
      _os_log_impl(&_mh_execute_header, v106, v105, "%s, sample:%{private,mask.hash}s RSSI:%s model:%s", v41, 0x34u);
      swift_arrayDestroy();

      v67 = v64;
    }

    else
    {

      v68 = *(v16 + 8);
      v67 = v130;
      (v68)(v129, v130);
      v56 = *(v132 + 8);
      (v56)(v128, v24);
      v128 = v68;
      (v68)(v122, v67);
    }

    v129 = v56;
    v69 = RSSIValue.rawValue.getter();
    v70 = v127;
    v71 = v125;
    v121 = v24;
    if ((v69 & 0x80) == 0)
    {
      break;
    }

    v81 = v115;
    Device.id.getter();
    v82 = v116;
    v83 = v120;
    Identifier.id.getter();
    v128 = *(v119 + 8);
    (v128)(v81, v83);
    v84 = v111;
    v123(v111, v70, v67);
    (*(v126 + 56))(v84, 0, 1, v67);
    swift_beginAccess();
    sub_1001E0D2C(v84, v82);
    swift_endAccess();
    v113 = v32;
    v85 = RSSIValue.rawValue.getter();
    v86 = v110;
    Device.id.getter();
    v87 = v109;
    Identifier.id.getter();
    (v128)(v86, v83);
    UUID.uuidString.getter();
    (*(v117 + 8))(v87, v118);
    v88 = Device.model.getter();
    if (v89)
    {
      a1 = v88;
    }

    else
    {
      a1 = 0;
    }

    v90 = v85;
    v91 = Device.channel.getter();
    v92 = mach_continuous_time();
    v93 = convertToSeconds(_:)(v92);
    v94 = objc_allocWithZone(NIBluetoothSample);
    v95 = String._bridgeToObjectiveC()();

    v23 = String._bridgeToObjectiveC()();

    v96 = [v94 initWithRSSI:v95 identifier:v23 model:v91 channel:v90 machContinuousTimeSeconds:v93];

    v97 = *(v114 + OBJC_IVAR____TtC12searchpartyd13BubbleManager_sessions);
    v28 = (v97 + 64);
    v98 = 1 << *(v97 + 32);
    v99 = -1;
    if (v98 < 64)
    {
      v99 = ~(-1 << v98);
    }

    v16 = v99 & *(v97 + 64);
    v24 = (v98 + 63) >> 6;
    v100 = *(v114 + OBJC_IVAR____TtC12searchpartyd13BubbleManager_sessions);
    swift_bridgeObjectRetain_n();
    v32 = 0;
    while (v16)
    {
      v101 = v32;
LABEL_25:
      v102 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v23 = *(*(v97 + 56) + ((v101 << 9) | (8 * v102)));
      a1 = [v23 devicePresenceNotifier];
      [a1 notifyBluetoothSample:v96];
    }

    while (1)
    {
      v101 = (v32 + 1);
      if (__OFADD__(v32, 1))
      {
        break;
      }

      if (v101 >= v24)
      {

        (v129)(v113, v121);
      }

      v16 = *&v28[8 * v101];
      ++v32;
      if (v16)
      {
        v32 = v101;
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_31:
    swift_once();
  }

  v123(v125, v127, v67);
  v72 = Logger.logObject.getter();
  v73 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v72, v73))
  {
    v74 = v71;
    v75 = swift_slowAlloc();
    *v75 = 16777472;
    v76 = v108;
    Device.rssi.getter();
    v77 = RSSIValue.rawValue.getter();
    v78 = v76;
    v79 = v121;
    v80 = v129;
    (v129)(v78, v121);
    (v128)(v74, v130);
    v75[4] = v77;
    _os_log_impl(&_mh_execute_header, v72, v73, "Bad rssi value: %hhd", v75, 5u);
  }

  else
  {
    (v128)(v71, v67);
    v80 = v129;
    v79 = v121;
  }

  return v80(v32, v79);
}

unint64_t sub_100C2F668()
{
  result = qword_1016B8D60;
  if (!qword_1016B8D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B8D60);
  }

  return result;
}

uint64_t sub_100C2F6BC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100C2F9CC(void *a1)
{
  if (qword_101694D98 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_1016B8BE0);
  v3 = a1;
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v5 = 136315651;
    *(v5 + 4) = sub_1000136BC(0xD000000000000017, 0x800000010136FB40, &v12);
    *(v5 + 12) = 2160;
    *(v5 + 14) = 1752392040;
    *(v5 + 22) = 2081;
    v6 = [v3 deviceIdentifier];
    if (v6)
    {
      v7 = v6;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    sub_1000BC4D4(&qword_1016A0AC0, &unk_1013926A0);
    v8 = String.init<A>(describing:)();
    v10 = sub_1000136BC(v8, v9, &v12);

    *(v5 + 24) = v10;
    _os_log_impl(&_mh_execute_header, oslog, v4, "%s, nearbyObject = %{private,mask.hash}s", v5, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
  }
}

uint64_t sub_100C2FBF4()
{
  v1 = v0;
  swift_getObjectType();
  if (qword_101694D98 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_1016B8BE0);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v5 = 136315394;
    *(v5 + 4) = sub_1000136BC(0xD00000000000001CLL, 0x800000010136FAE0, &v12);
    *(v5 + 12) = 2114;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 14) = v8;
    *v6 = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s, error: %{public}@", v5, 0x16u);
    sub_10000B3A8(v6, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v7);
  }

  v9 = *(v1 + OBJC_IVAR____TtC12searchpartyd13BubbleManager_lock);
  __chkstk_darwin(v10);
  return OSAllocatedUnfairLock.callAsFunction<A>(_:)();
}

uint64_t sub_100C2FE14()
{
  v1 = v0;
  swift_getObjectType();
  if (qword_101694D98 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_1016B8BE0);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v5 = 136315394;
    *(v5 + 4) = sub_1000136BC(0xD00000000000001DLL, 0x800000010136FAC0, &v12);
    *(v5 + 12) = 2114;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 14) = v8;
    *v6 = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s, error: %{public}@", v5, 0x16u);
    sub_10000B3A8(v6, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v7);
  }

  v9 = *(v1 + OBJC_IVAR____TtC12searchpartyd13BubbleManager_lock);
  __chkstk_darwin(v10);
  return OSAllocatedUnfairLock.callAsFunction<A>(_:)();
}

uint64_t sub_100C3017C()
{
  v1 = v0;
  swift_getObjectType();
  if (qword_101694D98 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_1016B8BE0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_1000136BC(0xD00000000000001ALL, 0x800000010136FA80, &v10);
    _os_log_impl(&_mh_execute_header, v3, v4, "%s", v5, 0xCu);
    sub_100007BAC(v6);
  }

  v7 = *(v1 + OBJC_IVAR____TtC12searchpartyd13BubbleManager_lock);
  __chkstk_darwin(v8);
  return OSAllocatedUnfairLock.callAsFunction<A>(_:)();
}

uint64_t sub_100C30364(uint64_t a1)
{
  v2 = type metadata accessor for BubbleManagerDiscovery();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100C3040C()
{
  result = qword_1016B8DA8;
  if (!qword_1016B8DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B8DA8);
  }

  return result;
}

uint64_t sub_100C30478(uint64_t a1, uint64_t a2)
{
  v3[65] = v2;
  v3[63] = a1;
  v3[64] = a2;
  return _swift_task_switch(sub_100C3049C, v2, 0);
}

uint64_t sub_100C3049C()
{
  sub_10001F280(*(v0 + 512), v0 + 464);
  sub_1000BC4D4(&qword_101698650, &qword_10138FFB0);
  if (swift_dynamicCast())
  {
    v1 = *(v0 + 352);
    *(v0 + 144) = *(v0 + 336);
    *(v0 + 160) = v1;
    v2 = *(v0 + 384);
    *(v0 + 176) = *(v0 + 368);
    *(v0 + 192) = v2;
    v3 = *(v0 + 288);
    *(v0 + 80) = *(v0 + 272);
    *(v0 + 96) = v3;
    v4 = *(v0 + 320);
    *(v0 + 112) = *(v0 + 304);
    *(v0 + 128) = v4;
    v5 = *(v0 + 224);
    *(v0 + 16) = *(v0 + 208);
    *(v0 + 32) = v5;
    v6 = *(v0 + 256);
    *(v0 + 48) = *(v0 + 240);
    *(v0 + 64) = v6;
    v7 = swift_task_alloc();
    *(v0 + 528) = v7;
    *v7 = v0;
    v7[1] = sub_100C30688;
    v8 = *(v0 + 520);

    return sub_100C324E4(v0 + 400, v0 + 16);
  }

  else
  {
    v10 = type metadata accessor for PairingValidatorError();
    sub_100C353F4(&qword_101698628, 255, &type metadata accessor for PairingValidatorError);
    swift_allocError();
    (*(*(v10 - 8) + 104))(v11, enum case for PairingValidatorError.invalidRequestType(_:), v10);
    swift_willThrow();
    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_100C30688()
{
  v2 = *v1;
  v3 = *(*v1 + 528);
  v4 = *v1;
  *(*v1 + 536) = v0;

  v5 = *(v2 + 520);
  if (v0)
  {
    v6 = sub_100C3085C;
  }

  else
  {
    v6 = sub_100C307B4;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100C307B4()
{
  v1 = *(v0 + 504);
  v1[3] = &type metadata for PairingLockCheckResponse;
  v1[4] = sub_100C34D04();
  v2 = swift_allocObject();
  *v1 = v2;
  sub_100C2B8AC(v0 + 16);
  v3 = *(v0 + 416);
  v2[1] = *(v0 + 400);
  v2[2] = v3;
  v4 = *(v0 + 448);
  v2[3] = *(v0 + 432);
  v2[4] = v4;
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100C3085C()
{
  sub_100C2B8AC(v0 + 16);
  v1 = *(v0 + 536);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100C308C0(uint64_t a1, uint64_t a2)
{
  v3[46] = a2;
  v3[47] = v2;
  v3[45] = a1;
  return _swift_task_switch(sub_100C308E4, v2, 0);
}

uint64_t sub_100C308E4()
{
  sub_10001F280(*(v0 + 368), v0 + 320);
  sub_1000BC4D4(&qword_101698620, &unk_10138FF80);
  if (swift_dynamicCast())
  {
    v1 = *(v0 + 280);
    *(v0 + 112) = *(v0 + 264);
    *(v0 + 128) = v1;
    *(v0 + 144) = *(v0 + 296);
    *(v0 + 160) = *(v0 + 312);
    v2 = *(v0 + 216);
    *(v0 + 48) = *(v0 + 200);
    *(v0 + 64) = v2;
    v3 = *(v0 + 248);
    *(v0 + 80) = *(v0 + 232);
    *(v0 + 96) = v3;
    v4 = *(v0 + 184);
    *(v0 + 16) = *(v0 + 168);
    *(v0 + 32) = v4;
    v5 = swift_task_alloc();
    *(v0 + 384) = v5;
    *v5 = v0;
    v5[1] = sub_100C30AD0;
    v6 = *(v0 + 376);

    return sub_100C30CF8(v0 + 16);
  }

  else
  {
    v8 = type metadata accessor for PairingValidatorError();
    sub_100C353F4(&qword_101698628, 255, &type metadata accessor for PairingValidatorError);
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, enum case for PairingValidatorError.invalidRequestType(_:), v8);
    swift_willThrow();
    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_100C30AD0(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 384);
  v6 = *v2;
  *(v4 + 392) = v1;

  v7 = *(v4 + 376);
  if (v1)
  {
    v8 = sub_100C30C94;
  }

  else
  {
    *(v4 + 400) = a1;
    v8 = sub_100C30C0C;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100C30C0C()
{
  v1 = *(v0 + 400);
  v2 = *(v0 + 360);
  *(v2 + 24) = &type metadata for PairingLockAckResponse;
  *(v2 + 32) = sub_100C34CA8();
  sub_100C29C98(v0 + 16);
  *v2 = v1 & 1;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100C30C94()
{
  sub_100C29C98(v0 + 16);
  v1 = *(v0 + 392);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100C30CF8(uint64_t a1)
{
  v2[83] = v1;
  v2[82] = a1;
  v3 = type metadata accessor for Date();
  v2[84] = v3;
  v4 = *(v3 - 8);
  v2[85] = v4;
  v5 = *(v4 + 64) + 15;
  v2[86] = swift_task_alloc();
  v6 = *(*(sub_1000BC4D4(&qword_1016985F0, &unk_10139D780) - 8) + 64) + 15;
  v2[87] = swift_task_alloc();
  v7 = *(*(type metadata accessor for PairingLockAckEndPoint() - 8) + 64) + 15;
  v2[88] = swift_task_alloc();
  v2[89] = swift_task_alloc();

  return _swift_task_switch(sub_100C30E2C, v1, 0);
}

uint64_t sub_100C30E2C()
{
  v1 = *(v0 + 712);
  v2 = *(v0 + 704);
  v3 = *(v0 + 696);
  v4 = *(v0 + 656);
  sub_10050B114(v1);
  v5 = type metadata accessor for SearchPartyURLSessionFactory(0);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  v8 = type metadata accessor for FMNMockingPreferences();
  (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
  v9 = FMNURLSessionFactory.init(mockSessionCreationBlock:preferences:)();
  v10 = type metadata accessor for ServerInteractionController(0);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  v13 = swift_allocObject();
  sub_100C3543C(v1, v2, type metadata accessor for PairingLockAckEndPoint);
  v14 = sub_1006225CC(v2, v9, v13);
  *(v0 + 720) = v14;
  v15 = *v4;
  v16 = v4[1];
  v17 = Data.hexString.getter();
  v95 = v18;
  v96 = v17;
  v19 = v4[2];
  v20 = v4[3];
  v21 = Data.hexString.getter();
  v93 = v22;
  v94 = v21;
  v23 = v4[5];
  v89 = v4[6];
  v90 = v4[4];
  v24 = v4[9];
  v87 = v4[8];
  v88 = v4[7];
  v98 = v4[10];
  v97 = v4[11];
  v99 = v4[13];
  v100 = v4[12];
  v25 = v4[14];
  v101 = v4[15];
  v26 = v4[16];
  v27 = v4[17];
  v28 = v4[18];
  v92 = v23;

  v91 = v24;

  v29 = sub_100907E70(_swiftEmptyArrayStorage);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(1702195828, 0xE400000000000000, 0xD00000000000001BLL, 0x800000010134EA20, isUniquelyReferenced_nonNull_native);
  v31 = [objc_opt_self() currentDevice];
  if (!v31)
  {
    __break(1u);
    goto LABEL_7;
  }

  v39 = v31;
  v83 = v25;
  v84 = v27;
  v85 = v26;
  v86 = v14;
  v40 = [v31 serverFriendlyDescription];

  if (!v40)
  {
LABEL_7:
    __break(1u);
    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v31, v32, v33, v34, v35, v36, v37, v38);
  }

  v41 = *(v0 + 688);
  v42 = *(v0 + 680);
  v43 = *(v0 + 672);
  v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v46 = v45;

  v47 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(v44, v46, 0xD000000000000011, 0x800000010134EA40, v47);
  v48 = v29;
  Date.init()();
  v49 = Date.epoch.getter();
  (*(v42 + 8))(v41, v43);
  *(v0 + 624) = v49;
  v50 = dispatch thunk of CustomStringConvertible.description.getter();
  v52 = v51;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(v50, v52, 0xD000000000000015, 0x800000010134EA60, v53);
  v54 = v48;
  *(v0 + 632) = 1;
  v55 = dispatch thunk of CustomStringConvertible.description.getter();
  v57 = v56;
  v58 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(v55, v57, 0xD000000000000013, 0x800000010134EA80, v58);
  v59 = v54;
  v60 = sub_1008D9A78();
  v62 = v61;
  v63 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(v60, v62, 0x6567412D72657355, 0xEA0000000000746ELL, v63);
  v82 = v59;
  *(v0 + 728) = v59;
  *(v0 + 16) = v96;
  *(v0 + 24) = v95;
  *(v0 + 32) = v94;
  *(v0 + 40) = v93;
  *(v0 + 48) = v90;
  *(v0 + 56) = v92;
  *(v0 + 64) = v89;
  *(v0 + 72) = v88;
  *(v0 + 80) = v87;
  *(v0 + 88) = v91;
  *(v0 + 96) = v98;
  *(v0 + 104) = v97;
  *(v0 + 112) = v100;
  *(v0 + 120) = v99;
  *(v0 + 128) = v83;
  *(v0 + 136) = v101;
  *(v0 + 144) = v85;
  *(v0 + 152) = v84;
  *(v0 + 160) = v28;
  v64 = type metadata accessor for JSONEncoder();
  v65 = *(v64 + 48);
  v66 = *(v64 + 52);
  swift_allocObject();
  sub_100017D5C(v98, v97);
  sub_100017D5C(v100, v99);
  sub_100017D5C(v83, v101);
  sub_100017D5C(v85, v84);
  JSONEncoder.init()();
  v67 = *(v0 + 128);
  *(v0 + 264) = *(v0 + 112);
  *(v0 + 280) = v67;
  *(v0 + 296) = *(v0 + 144);
  *(v0 + 312) = *(v0 + 160);
  v68 = *(v0 + 64);
  *(v0 + 200) = *(v0 + 48);
  *(v0 + 216) = v68;
  v69 = *(v0 + 96);
  *(v0 + 232) = *(v0 + 80);
  *(v0 + 248) = v69;
  v70 = *(v0 + 32);
  *(v0 + 168) = *(v0 + 16);
  *(v0 + 184) = v70;
  sub_10088C9BC();
  v71 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  *(v0 + 736) = v71;
  *(v0 + 744) = v72;
  v73 = *(v0 + 664);
  v74 = v71;
  v75 = v72;

  sub_10088CA6C(v0 + 16);

  sub_100017D5C(v74, v75);

  sub_100016590(v74, v75);

  sub_100017D5C(v74, v75);
  v76 = sub_1004FD920(v82, v74, v75, 0, v86);
  *(v0 + 752) = v76;

  sub_100016590(v74, v75);
  v78 = sub_100C353F4(&qword_1016B8ED8, v77, type metadata accessor for AirTagPairingValidator);
  v79 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v80 = swift_task_alloc();
  *(v0 + 760) = v80;
  *v80 = v0;
  v80[1] = sub_100C31768;
  v38 = &type metadata for PairingLockAckResponse;
  v36 = sub_100C35504;
  v34 = 0x716572286B63615FLL;
  v35 = 0xEE00293A74736575;
  v31 = (v0 + 776);
  v32 = v73;
  v33 = v78;
  v37 = v76;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v31, v32, v33, v34, v35, v36, v37, v38);
}

uint64_t sub_100C31768()
{
  v2 = *v1;
  v3 = *(*v1 + 760);
  v4 = *v1;
  *(*v1 + 768) = v0;

  v5 = *(v2 + 664);
  if (v0)
  {
    v6 = sub_100C31990;
  }

  else
  {
    v6 = sub_100C31894;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100C31894()
{
  v1 = *(v0 + 752);
  v2 = *(v0 + 744);
  v3 = *(v0 + 736);
  v4 = *(v0 + 728);
  v5 = *(v0 + 720);
  v6 = *(v0 + 712);
  v7 = *(v0 + 704);
  v8 = *(v0 + 696);
  v9 = *(v0 + 688);

  sub_100016590(v3, v2);
  sub_100C354A4(v6, type metadata accessor for PairingLockAckEndPoint);
  v10 = *(v0 + 776);

  v11 = *(v0 + 8);

  return v11(v10);
}

uint64_t sub_100C31990()
{
  v1 = v0[94];
  v2 = v0[93];
  v3 = v0[92];
  v4 = v0[91];
  v5 = v0[90];
  v6 = v0[89];

  sub_100016590(v3, v2);
  sub_100C354A4(v6, type metadata accessor for PairingLockAckEndPoint);
  v7 = v0[96];
  v8 = v0[89];
  v9 = v0[88];
  v10 = v0[87];
  v11 = v0[86];

  v12 = v0[1];

  return v12();
}

uint64_t sub_100C31A7C(uint64_t a1)
{
  v14 = a1;
  v2 = sub_1000BC4D4(&qword_1016B8EF8, &unk_1013E1050);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v11 - v5;
  v13 = *(v3 + 16);
  v13(&v11 - v5, a1, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  v12 = *(v3 + 32);
  v12(v8 + v7, v6, v2);
  Future.addFailure(block:)();

  v13(v6, v14, v2);
  v9 = swift_allocObject();
  v12(v9 + v7, v6, v2);
  Future.addSuccess(block:)();
}

uint64_t sub_100C31C5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for String.Encoding();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = type metadata accessor for FMNServerInteractionController.FMNResponseFields();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v52 - v12;
  if (FMNServerInteractionController.FMNResponseFields.statusCode.getter() == 200)
  {
    v52[2] = a2;
    if (qword_101694DD8 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    v15 = sub_1000076D4(v14, qword_10177BEA8);
    (*(v7 + 16))(v13, a1, v6);
    v52[1] = v15;
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v52[0] = a1;
      v19 = v18;
      v20 = swift_slowAlloc();
      v54 = v20;
      *v19 = 136446210;
      sub_100C353F4(&qword_1016A62C0, 255, &type metadata accessor for FMNServerInteractionController.FMNResponseFields);
      v21 = dispatch thunk of CustomStringConvertible.description.getter();
      v23 = v22;
      (*(v7 + 8))(v13, v6);
      v24 = sub_1000136BC(v21, v23, &v54);

      *(v19 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v16, v17, "Pairing ack success: %{public}s", v19, 0xCu);
      sub_100007BAC(v20);
    }

    else
    {

      (*(v7 + 8))(v13, v6);
    }

    v34 = FMNServerInteractionController.FMNResponseFields.data.getter();
    v36 = v35;
    static String.Encoding.utf8.getter();
    v37 = String.init(data:encoding:)();
    v39 = v38;
    sub_100016590(v34, v36);
    if (v39)
    {

      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v54 = v43;
        *v42 = 136315138;
        v44 = sub_1000136BC(v37, v39, &v54);

        *(v42 + 4) = v44;
        _os_log_impl(&_mh_execute_header, v40, v41, "ack response data: %s", v42, 0xCu);
        sub_100007BAC(v43);
      }

      else
      {
      }
    }

    v46 = type metadata accessor for JSONDecoder();
    v47 = *(v46 + 48);
    v48 = *(v46 + 52);
    swift_allocObject();
    JSONDecoder.init()();
    v49 = FMNServerInteractionController.FMNResponseFields.data.getter();
    v51 = v50;
    sub_10088CB34();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    sub_100016590(v49, v51);
    sub_1000BC4D4(&qword_1016B8EF8, &unk_1013E1050);
    CheckedContinuation.resume(returning:)();
  }

  else
  {
    if (qword_101694DD8 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_1000076D4(v25, qword_10177BEA8);
    (*(v7 + 16))(v11, a1, v6);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v54 = v29;
      *v28 = 136446210;
      sub_100C353F4(&qword_1016A62C0, 255, &type metadata accessor for FMNServerInteractionController.FMNResponseFields);
      v30 = dispatch thunk of CustomStringConvertible.description.getter();
      v32 = v31;
      (*(v7 + 8))(v11, v6);
      v33 = sub_1000136BC(v30, v32, &v54);

      *(v28 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v26, v27, "Pairing ack failed: %{public}s", v28, 0xCu);
      sub_100007BAC(v29);
    }

    else
    {

      (*(v7 + 8))(v11, v6);
    }

    type metadata accessor for SPPairingSessionError(0);
    v53 = 1;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100C353F4(&unk_1016B2710, 255, type metadata accessor for SPPairingSessionError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v53 = v54;
    sub_1000BC4D4(&qword_1016B8EF8, &unk_1013E1050);
    return CheckedContinuation.resume(throwing:)();
  }
}

uint64_t sub_100C324E4(uint64_t a1, uint64_t a2)
{
  v3[244] = v2;
  v3[243] = a2;
  v3[242] = a1;
  v4 = type metadata accessor for Date();
  v3[245] = v4;
  v5 = *(v4 - 8);
  v3[246] = v5;
  v6 = *(v5 + 64) + 15;
  v3[247] = swift_task_alloc();
  v7 = *(*(sub_1000BC4D4(&qword_1016985F0, &unk_10139D780) - 8) + 64) + 15;
  v3[248] = swift_task_alloc();
  v8 = *(*(type metadata accessor for PairingLockCheckEndPoint() - 8) + 64) + 15;
  v3[249] = swift_task_alloc();
  v3[250] = swift_task_alloc();

  return _swift_task_switch(sub_100C3261C, v2, 0);
}

uint64_t sub_100C3261C()
{
  v162 = v0;
  static os_log_type_t.default.getter();
  if (qword_1016950C8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 2000);
  v2 = *(v0 + 1992);
  v3 = *(v0 + 1984);
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_101385D80;
  *(v4 + 56) = &type metadata for String;
  *(v4 + 64) = sub_100008C00();
  *(v4 + 32) = 0xD000000000000013;
  *(v4 + 40) = 0x800000010136F240;
  os_log(_:dso:log:_:_:)();

  sub_1003CD400(v1);
  v5 = type metadata accessor for SearchPartyURLSessionFactory(0);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  v8 = type metadata accessor for FMNMockingPreferences();
  (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
  v9 = FMNURLSessionFactory.init(mockSessionCreationBlock:preferences:)();
  v10 = type metadata accessor for ServerInteractionController(0);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  v13 = swift_allocObject();
  sub_100C3543C(v1, v2, type metadata accessor for PairingLockCheckEndPoint);
  v14 = sub_100621154(v2, v9, v13);
  *(v0 + 2008) = v14;
  v15 = [objc_opt_self() defaultStore];
  if (!v15)
  {
    __break(1u);
    goto LABEL_37;
  }

  v23 = v15;
  v24 = sub_100513CD8();

  if (!v24 || (v25 = sub_100513FCC(), v27 = v26, v24, !v27))
  {
    if (qword_101694DD8 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_1000076D4(v29, qword_10177BEA8);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "Unable to retrieve masked identifier", v32, 2u);
    }

    v33 = *(v0 + 2000);

    type metadata accessor for SPPairingSessionError(0);
    *(v0 + 1880) = 27;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100C353F4(&unk_1016B2710, 255, type metadata accessor for SPPairingSessionError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v34 = *(v0 + 1872);
    swift_willThrow();

    goto LABEL_12;
  }

  v28 = *(v0 + 1944);
  sub_100C29FA0(v28, v0 + 16);
  sub_100C2B624(v28, (v0 + 1616));
  sub_100C2B900(v0 + 1616, v0 + 1712);
  v41 = sub_100C34D58((v0 + 1616));
  v43 = v42;
  *(v0 + 2016) = v41;
  *(v0 + 2024) = v42;
  sub_100C2B938(v0 + 1616);
  if (v43 >> 60 != 15)
  {
    v152 = v25;
    v49 = *(v0 + 1944);
    v132 = v49[1];
    v133 = *v49;
    v50 = Data.hexString.getter();
    v145 = v51;
    v146 = v50;
    v134 = v49[3];
    v135 = v49[2];
    v52 = Data.hexString.getter();
    v142 = v53;
    v143 = v52;
    v155 = v49[4];
    v140 = v49[7];
    v141 = v49[6];
    v54 = v49[9];
    v139 = v49[8];
    v144 = v49[10];
    v147 = v49[11];
    v148 = v49[19];
    v151 = v49[20];
    v149 = v49[18];
    v150 = v49[21];
    v153 = v49[23];
    v154 = v49[22];
    v156 = v49[5];

    v138 = v54;

    sub_10002E98C(v41, v43);
    v55 = sub_100907E70(_swiftEmptyArrayStorage);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v161[0] = v55;
    sub_100FFACA0(1702195828, 0xE400000000000000, 0xD00000000000001BLL, 0x800000010134EA20, isUniquelyReferenced_nonNull_native);
    v57 = v55;
    v15 = [objc_opt_self() currentDevice];
    if (v15)
    {
      v58 = v15;
      v157 = v41;
      v158 = v43;
      v137 = v14;
      v59 = [v15 serverFriendlyDescription];

      if (v59)
      {
        v60 = *(v0 + 1976);
        v61 = *(v0 + 1968);
        v62 = *(v0 + 1960);
        v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v65 = v64;

        v66 = swift_isUniquelyReferenced_nonNull_native();
        v161[0] = v55;
        sub_100FFACA0(v63, v65, 0xD000000000000011, 0x800000010134EA40, v66);
        Date.init()();
        v67 = Date.epoch.getter();
        (*(v61 + 8))(v60, v62);
        *(v0 + 1904) = v67;
        v68 = dispatch thunk of CustomStringConvertible.description.getter();
        v70 = v69;
        v71 = swift_isUniquelyReferenced_nonNull_native();
        sub_100FFACA0(v68, v70, 0xD000000000000015, 0x800000010134EA60, v71);
        *(v0 + 1912) = 1;
        v72 = dispatch thunk of CustomStringConvertible.description.getter();
        v74 = v73;
        v75 = swift_isUniquelyReferenced_nonNull_native();
        sub_100FFACA0(v72, v74, 0xD000000000000013, 0x800000010134EA80, v75);
        v76 = sub_1008D9A78();
        v78 = v77;
        v79 = swift_isUniquelyReferenced_nonNull_native();
        sub_100FFACA0(v76, v78, 0x6567412D72657355, 0xEA0000000000746ELL, v79);
        sub_100017D5C(v157, v158);
        v80 = Data.base64EncodedString(options:)(0);
        v81 = swift_isUniquelyReferenced_nonNull_native();
        v161[0] = v57;
        sub_100FFACA0(v80._countAndFlagsBits, v80._object, 0x49532D454D4D2D58, 0xEB00000000374E47, v81);
        sub_100006654(v157, v158);
        v136 = v57;
        *(v0 + 2032) = v57;
        *(v0 + 976) = v146;
        *(v0 + 984) = v145;
        *(v0 + 992) = v143;
        *(v0 + 1000) = v142;
        *(v0 + 1008) = v155;
        *(v0 + 1016) = v156;
        *(v0 + 1024) = v141;
        *(v0 + 1032) = v140;
        *(v0 + 1040) = v139;
        *&v82 = v144;
        *(&v82 + 1) = v147;
        *(v0 + 1048) = v138;
        *&v83 = v149;
        *(&v83 + 1) = v148;
        *(v0 + 1072) = v83;
        *(v0 + 1056) = v82;
        *(v0 + 1088) = v151;
        *(v0 + 1096) = v150;
        *(v0 + 1104) = v154;
        *(v0 + 1112) = v153;
        *(v0 + 1120) = v152;
        *(v0 + 1128) = v27;
        v84 = type metadata accessor for JSONEncoder();
        v85 = *(v84 + 48);
        v86 = *(v84 + 52);
        swift_allocObject();
        sub_100017D5C(v144, v147);
        sub_100017D5C(v149, v148);
        sub_100017D5C(v151, v150);
        sub_100017D5C(v154, v153);
        JSONEncoder.init()();
        v87 = *(v0 + 1088);
        *(v0 + 1232) = *(v0 + 1072);
        *(v0 + 1248) = v87;
        v88 = *(v0 + 1120);
        *(v0 + 1264) = *(v0 + 1104);
        *(v0 + 1280) = v88;
        v89 = *(v0 + 1024);
        *(v0 + 1168) = *(v0 + 1008);
        *(v0 + 1184) = v89;
        v90 = *(v0 + 1056);
        *(v0 + 1200) = *(v0 + 1040);
        *(v0 + 1216) = v90;
        v91 = *(v0 + 992);
        *(v0 + 1136) = *(v0 + 976);
        *(v0 + 1152) = v91;
        sub_10088CC58();
        v92 = dispatch thunk of JSONEncoder.encode<A>(_:)();
        *(v0 + 2040) = v92;
        *(v0 + 2048) = v93;
        v94 = v92;
        v95 = v93;

        sub_100006654(v157, v158);
        sub_10088CD08(v0 + 976);

        sub_100017D5C(v94, v95);

        v160 = v94;
        v159 = v95;
        sub_100016590(v94, v95);
        if (qword_101694DD8 != -1)
        {
          swift_once();
        }

        v96 = *(v0 + 1944);
        v97 = type metadata accessor for Logger();
        sub_1000076D4(v97, qword_10177BEA8);
        sub_100C29FA0(v96, v0 + 208);
        v98 = Logger.logObject.getter();
        v99 = static os_log_type_t.debug.getter();
        sub_100C2B8AC(v96);
        if (os_log_type_enabled(v98, v99))
        {
          v100 = swift_slowAlloc();
          v101 = swift_slowAlloc();
          v161[0] = v101;
          *v100 = 136315138;
          *(v100 + 4) = sub_1000136BC(v155, v156, v161);
          _os_log_impl(&_mh_execute_header, v98, v99, "serialNumber: %s", v100, 0xCu);
          sub_100007BAC(v101);
        }

        v102 = *(v0 + 1944);
        sub_100C29FA0(v102, v0 + 400);
        v103 = Logger.logObject.getter();
        v104 = static os_log_type_t.debug.getter();
        sub_100C2B8AC(v102);
        if (os_log_type_enabled(v103, v104))
        {
          v105 = swift_slowAlloc();
          v106 = swift_slowAlloc();
          v161[0] = v106;
          *v105 = 136315138;
          v107 = Data.hexString.getter();
          v109 = sub_1000136BC(v107, v108, v161);

          *(v105 + 4) = v109;
          _os_log_impl(&_mh_execute_header, v103, v104, "ECID: %s", v105, 0xCu);
          sub_100007BAC(v106);
        }

        v110 = *(v0 + 1944);
        sub_100C29FA0(v110, v0 + 592);
        v111 = Logger.logObject.getter();
        v112 = static os_log_type_t.debug.getter();
        sub_100C2B8AC(v110);
        if (os_log_type_enabled(v111, v112))
        {
          v113 = swift_slowAlloc();
          v114 = swift_slowAlloc();
          v161[0] = v114;
          *v113 = 136315138;
          v115 = Data.hexString.getter();
          v117 = sub_1000136BC(v115, v116, v161);

          *(v113 + 4) = v117;
          _os_log_impl(&_mh_execute_header, v111, v112, "ChipId: %s", v113, 0xCu);
          sub_100007BAC(v114);
        }

        v118 = *(v0 + 1944);
        sub_100C29FA0(v118, v0 + 784);
        v119 = Logger.logObject.getter();
        v120 = static os_log_type_t.debug.getter();
        sub_100C2B8AC(v118);
        if (os_log_type_enabled(v119, v120))
        {
          v121 = swift_slowAlloc();
          v122 = swift_slowAlloc();
          v161[0] = v122;
          *v121 = 136315138;
          v123 = Data.hexString.getter();
          v125 = sub_1000136BC(v123, v124, v161);

          *(v121 + 4) = v125;
          _os_log_impl(&_mh_execute_header, v119, v120, "H1 (hashed C2): %s", v121, 0xCu);
          sub_100007BAC(v122);
        }

        v126 = *(v0 + 1952);

        sub_100017D5C(v160, v159);
        v127 = sub_1004FCCF0(v136, v160, v159, 0, v137);
        *(v0 + 2056) = v127;

        sub_100016590(v160, v159);
        v129 = sub_100C353F4(&qword_1016B8ED8, v128, type metadata accessor for AirTagPairingValidator);
        v130 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
        v131 = swift_task_alloc();
        *(v0 + 2064) = v131;
        *v131 = v0;
        v131[1] = sub_100C3381C;
        v22 = &type metadata for PairingLockCheckResponse;
        v20 = sub_100C353A8;
        v15 = (v0 + 1808);
        v16 = v126;
        v17 = v129;
        v18 = 0xD000000000000013;
        v19 = 0x800000010136F240;
        v21 = v127;

        return withCheckedThrowingContinuation<A>(isolation:function:_:)(v15, v16, v17, v18, v19, v20, v21, v22);
      }

LABEL_38:
      __break(1u);
      return withCheckedThrowingContinuation<A>(isolation:function:_:)(v15, v16, v17, v18, v19, v20, v21, v22);
    }

LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (qword_101694DD8 != -1)
  {
    swift_once();
  }

  v44 = type metadata accessor for Logger();
  sub_1000076D4(v44, qword_10177BEA8);
  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    _os_log_impl(&_mh_execute_header, v45, v46, "Unable to generate BAA payload", v47, 2u);
  }

  v33 = *(v0 + 2000);

  type metadata accessor for SPPairingSessionError(0);
  *(v0 + 1896) = 26;
  sub_100032898(_swiftEmptyArrayStorage);
  sub_100C353F4(&unk_1016B2710, 255, type metadata accessor for SPPairingSessionError);
  _BridgedStoredNSError.init(_:userInfo:)();
  v48 = *(v0 + 1888);
  swift_willThrow();

  sub_100C2B938(v0 + 1616);
LABEL_12:
  sub_100C354A4(v33, type metadata accessor for PairingLockCheckEndPoint);
  v35 = *(v0 + 2000);
  v36 = *(v0 + 1992);
  v37 = *(v0 + 1984);
  v38 = *(v0 + 1976);

  v39 = *(v0 + 8);

  return v39();
}

uint64_t sub_100C3381C()
{
  v2 = *v1;
  v3 = *(*v1 + 2064);
  v4 = *v1;
  *(*v1 + 2072) = v0;

  v5 = *(v2 + 1952);
  if (v0)
  {
    v6 = sub_100C33A80;
  }

  else
  {
    v6 = sub_100C33948;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100C33948()
{
  v1 = *(v0 + 2056);
  v2 = *(v0 + 2048);
  v3 = *(v0 + 2040);
  v4 = *(v0 + 2032);
  v5 = *(v0 + 2024);
  v6 = *(v0 + 2016);
  v7 = *(v0 + 2008);
  v8 = *(v0 + 2000);
  v9 = *(v0 + 1992);
  v16 = *(v0 + 1984);
  v17 = *(v0 + 1976);
  v10 = *(v0 + 1936);

  sub_100016590(v3, v2);
  sub_100006654(v6, v5);
  sub_100C2B938(v0 + 1616);
  sub_100C354A4(v8, type metadata accessor for PairingLockCheckEndPoint);
  v11 = *(v0 + 1824);
  v12 = *(v0 + 1856);
  v13 = *(v0 + 1808);
  v10[2] = *(v0 + 1840);
  v10[3] = v12;
  *v10 = v13;
  v10[1] = v11;

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_100C33A80()
{
  v1 = v0[257];
  v2 = v0[256];
  v3 = v0[255];
  v4 = v0[254];
  v5 = v0[253];
  v6 = v0[252];
  v7 = v0[251];
  v8 = v0[250];

  sub_100016590(v3, v2);
  sub_100006654(v6, v5);
  sub_100C2B938((v0 + 202));
  sub_100C354A4(v8, type metadata accessor for PairingLockCheckEndPoint);
  v9 = v0[259];
  v10 = v0[250];
  v11 = v0[249];
  v12 = v0[248];
  v13 = v0[247];

  v14 = v0[1];

  return v14();
}

uint64_t sub_100C33B90(uint64_t a1)
{
  v14 = a1;
  v2 = sub_1000BC4D4(&qword_1016B8EF0, &unk_1013E1040);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v11 - v5;
  v13 = *(v3 + 16);
  v13(&v11 - v5, a1, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  v12 = *(v3 + 32);
  v12(v8 + v7, v6, v2);
  Future.addFailure(block:)();

  v13(v6, v14, v2);
  v9 = swift_allocObject();
  v12(v9 + v7, v6, v2);
  Future.addSuccess(block:)();
}

uint64_t sub_100C33D70(uint64_t a1, uint64_t a2, const char *a3, uint64_t *a4, uint64_t *a5)
{
  if (qword_101694DD8 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_1000076D4(v8, qword_10177BEA8);
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138543362;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v13;
    *v12 = v13;
    _os_log_impl(&_mh_execute_header, v9, v10, a3, v11, 0xCu);
    sub_100288C6C(v12);
  }

  type metadata accessor for SPPairingSessionError(0);
  sub_100032898(_swiftEmptyArrayStorage);
  sub_100C353F4(&unk_1016B2710, 255, type metadata accessor for SPPairingSessionError);
  _BridgedStoredNSError.init(_:userInfo:)();
  sub_1000BC4D4(a4, a5);
  return CheckedContinuation.resume(throwing:)();
}

uint64_t sub_100C33F68(uint64_t *a1, uint64_t *a2)
{
  v65[3] = a2;
  v3 = type metadata accessor for String.Encoding();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v5 = type metadata accessor for FMNServerInteractionController.FMNResponseFields();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v65 - v11;
  v13 = FMNServerInteractionController.FMNResponseFields.statusCode.getter();
  v65[2] = a1;
  if (v13 == 200)
  {
    if (qword_101694DD8 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    v15 = sub_1000076D4(v14, qword_10177BEA8);
    (*(v6 + 16))(v12, a1, v5);
    v65[1] = v15;
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v65[0] = swift_slowAlloc();
      *&v72[0] = v65[0];
      *v18 = 136446210;
      sub_100C353F4(&qword_1016A62C0, 255, &type metadata accessor for FMNServerInteractionController.FMNResponseFields);
      v19 = dispatch thunk of CustomStringConvertible.description.getter();
      v21 = v20;
      (*(v6 + 8))(v12, v5);
      v22 = sub_1000136BC(v19, v21, v72);

      *(v18 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v16, v17, "Pairing success: %{public}s", v18, 0xCu);
      sub_100007BAC(v65[0]);
    }

    else
    {

      (*(v6 + 8))(v12, v5);
    }

    v32 = FMNServerInteractionController.FMNResponseFields.data.getter();
    v34 = v33;
    static String.Encoding.utf8.getter();
    v35 = String.init(data:encoding:)();
    v37 = v36;
    sub_100016590(v32, v34);
    if (v37)
    {

      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        *&v72[0] = v41;
        *v40 = 136315138;
        v42 = sub_1000136BC(v35, v37, v72);

        *(v40 + 4) = v42;
        _os_log_impl(&_mh_execute_header, v38, v39, "response data: %s", v40, 0xCu);
        sub_100007BAC(v41);
      }

      else
      {
      }
    }

    v48 = type metadata accessor for JSONDecoder();
    v49 = *(v48 + 48);
    v50 = *(v48 + 52);
    swift_allocObject();
    JSONDecoder.init()();
    v51 = FMNServerInteractionController.FMNResponseFields.data.getter();
    v53 = v52;
    sub_10088CD88();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    sub_100016590(v51, v53);
    v68 = v72[0];
    v69 = v72[1];
    v70 = v72[2];
    v71 = v72[3];
    v54 = SLOBYTE(v72[0]);
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      *&v67[0] = v58;
      *v57 = 136315394;
      *(v57 + 4) = sub_1000136BC(0xD000000000000013, 0x800000010136F240, v67);
      *(v57 + 12) = 2048;
      *(v57 + 14) = qword_1013E1060[v54];
      _os_log_impl(&_mh_execute_header, v55, v56, "%s Pairing lock status: %ld", v57, 0x16u);
      sub_100007BAC(v58);
    }

    if (v54)
    {
      if (v54 == 1)
      {
        v67[0] = v68;
        v67[1] = v69;
        v67[2] = v70;
        v67[3] = v71;
        sub_100407F70(&v68, &v66);
        sub_1000BC4D4(&qword_1016B8EF0, &unk_1013E1040);
        CheckedContinuation.resume(returning:)();
LABEL_26:

        return sub_100407FCC(&v68);
      }

      v59 = type metadata accessor for PairingValidatorError();
      sub_100C353F4(&qword_101698628, 255, &type metadata accessor for PairingValidatorError);
      v60 = swift_allocError();
      v62 = v64;
      v63 = &enum case for PairingValidatorError.pairedToAnotherAccount(_:);
    }

    else
    {
      v59 = type metadata accessor for PairingValidatorError();
      sub_100C353F4(&qword_101698628, 255, &type metadata accessor for PairingValidatorError);
      v60 = swift_allocError();
      v62 = v61;
      *v61 = 0;
      v63 = &enum case for PairingValidatorError.pairingLockFailure(_:);
    }

    (*(*(v59 - 8) + 104))(v62, *v63, v59);
    *&v67[0] = v60;
    sub_1000BC4D4(&qword_1016B8EF0, &unk_1013E1040);
    CheckedContinuation.resume(throwing:)();
    goto LABEL_26;
  }

  if (qword_101694DD8 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  sub_1000076D4(v23, qword_10177BEA8);
  (*(v6 + 16))(v10, a1, v5);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *&v72[0] = v27;
    *v26 = 136446210;
    sub_100C353F4(&qword_1016A62C0, 255, &type metadata accessor for FMNServerInteractionController.FMNResponseFields);
    v28 = dispatch thunk of CustomStringConvertible.description.getter();
    v30 = v29;
    (*(v6 + 8))(v10, v5);
    v31 = sub_1000136BC(v28, v30, v72);

    *(v26 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v24, v25, "Pairing lock failed: %{public}s", v26, 0xCu);
    sub_100007BAC(v27);
  }

  else
  {

    (*(v6 + 8))(v10, v5);
  }

  v43 = type metadata accessor for PairingValidatorError();
  sub_100C353F4(&qword_101698628, 255, &type metadata accessor for PairingValidatorError);
  v44 = swift_allocError();
  v46 = v45;
  *v45 = FMNServerInteractionController.FMNResponseFields.statusCode.getter();
  (*(*(v43 - 8) + 104))(v46, enum case for PairingValidatorError.pairingLockFailure(_:), v43);
  *&v72[0] = v44;
  sub_1000BC4D4(&qword_1016B8EF0, &unk_1013E1040);
  return CheckedContinuation.resume(throwing:)();
}

uint64_t sub_100C34AA4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100014744;

  return sub_100C30478(a1, a2);
}

uint64_t sub_100C34B4C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100014744;

  return sub_100C308C0(a1, a2);
}

uint64_t sub_100C34BF4(uint64_t *a1)
{
  v2 = *a1;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100014650;

  return sub_100BF4D30(v2);
}

unint64_t sub_100C34CA8()
{
  result = qword_1016B8EE0;
  if (!qword_1016B8EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B8EE0);
  }

  return result;
}

unint64_t sub_100C34D04()
{
  result = qword_1016B8EE8;
  if (!qword_1016B8EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B8EE8);
  }

  return result;
}

uint64_t sub_100C34D58(__int128 *a1)
{
  v2 = type metadata accessor for String.Encoding();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = type metadata accessor for PropertyListEncoder();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  dispatch thunk of PropertyListEncoder.outputFormat.setter();
  v7 = *(a1 + 4);
  v8 = *(a1 + 5);
  v9 = Data.trimmed.getter();
  v11 = v10;
  *&v61 = v9;
  *(&v61 + 1) = v10;
  static String.Encoding.utf8.getter();
  sub_100165078();
  v12 = String.init<A>(bytes:encoding:)();
  v47 = v11;
  v46 = v9;
  if (!v13)
  {
    v12 = Data.hexString.getter();
  }

  v14 = v12;
  v15 = v13;
  v48 = a1[1];
  sub_1000E0A3C();
  v16 = DataProtocol.intValue.getter();
  v54 = *a1;
  v17 = DataProtocol.intValue.getter();
  v19 = *(a1 + 8);
  v18 = *(a1 + 9);
  *&v55 = 0;
  *(&v55 + 1) = v16;
  v20 = *(a1 + 10);
  v21 = *(a1 + 11);
  *&v56 = v17;
  *(&v56 + 1) = &off_101609050;
  *&v57 = v14;
  *(&v57 + 1) = v15;
  v58 = xmmword_10138FDA0;
  *&v59 = v19;
  *(&v59 + 1) = v18;
  *&v60 = v20;
  *(&v60 + 1) = v21;
  v61 = v55;
  v62 = v56;
  v65 = v59;
  v66 = v60;
  v63 = v57;
  v64 = xmmword_10138FDA0;
  sub_100017D5C(v19, v18);
  sub_100017D5C(v20, v21);
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_1000076D4(v22, qword_10177C418);
  sub_1001650CC(&v55, &v48);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();
  sub_100165128(&v55);
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *&v54 = v26;
    *v25 = 136315138;
    sub_1001650CC(&v55, &v48);
    sub_10107D964();
    v28 = v27;
    v30 = v29;
    sub_100165128(&v55);
    v31 = sub_1000136BC(v28, v30, &v54);

    *(v25 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v23, v24, "BAARKProperties %s", v25, 0xCu);
    sub_100007BAC(v26);
  }

  v50 = v63;
  v51 = v64;
  v52 = v65;
  v53 = v66;
  v48 = v61;
  v49 = v62;
  sub_10016517C();
  v32 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v34 = v33;
  v35 = *(a1 + 7);
  v36 = *(a1 + 6);
  sub_100017D5C(v36, v35);
  sub_100017D5C(v36, v35);
  sub_100017D5C(v32, v34);
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.debug.getter();
  sub_100016590(v36, v35);
  sub_100016590(v32, v34);
  if (os_log_type_enabled(v37, v38))
  {
    v45 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    *&v54 = v44;
    *v45 = 136315138;
    *&v48 = v36;
    *(&v48 + 1) = v35;
    *&v49 = v32;
    *(&v49 + 1) = v34;
    sub_100017D5C(v36, v35);
    sub_100017D5C(v32, v34);
    v39 = String.init<A>(describing:)();
    v41 = sub_1000136BC(v39, v40, &v54);

    *(v45 + 4) = v41;
    _os_log_impl(&_mh_execute_header, v37, v38, "BAARequestPayload %s", v45, 0xCu);
    sub_100007BAC(v44);
  }

  *&v48 = v36;
  *(&v48 + 1) = v35;
  *&v49 = v32;
  *(&v49 + 1) = v34;
  sub_1001651D0();
  v42 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  sub_100016590(v46, v47);

  sub_100165128(&v55);
  sub_100016590(v36, v35);
  sub_100016590(v32, v34);
  return v42;
}

uint64_t sub_100C353F4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_100C3543C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100C354A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100C355E0(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = *(sub_1000BC4D4(a2, a3) - 8);
  v7 = v4 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a4(a1, v7);
}

uint64_t sub_100C3566C(uint64_t a1)
{
  v2[1152] = v1;
  v2[1151] = a1;
  v3 = *(*(type metadata accessor for String.Encoding() - 8) + 64) + 15;
  v2[1153] = swift_task_alloc();
  v4 = sub_1000BC4D4(&qword_1016973C8, &qword_1013B6210);
  v2[1154] = v4;
  v5 = *(v4 - 8);
  v2[1155] = v5;
  v6 = *(v5 + 64) + 15;
  v2[1156] = swift_task_alloc();
  v7 = sub_1000BC4D4(&qword_101697240, &unk_10138BDA0);
  v2[1157] = v7;
  v8 = *(v7 - 8);
  v2[1158] = v8;
  v9 = *(v8 + 64) + 15;
  v2[1159] = swift_task_alloc();
  v10 = type metadata accessor for PairingExecutorState();
  v2[1160] = v10;
  v11 = *(v10 - 8);
  v2[1161] = v11;
  v12 = *(v11 + 64) + 15;
  v2[1162] = swift_task_alloc();
  v2[1163] = swift_task_alloc();
  v13 = *(*(sub_1000BC4D4(&qword_101697268, &qword_101394FE0) - 8) + 64) + 15;
  v2[1164] = swift_task_alloc();
  v14 = type metadata accessor for AccessoryProductInfo();
  v2[1165] = v14;
  v15 = *(v14 - 8);
  v2[1166] = v15;
  v16 = *(v15 + 64) + 15;
  v2[1167] = swift_task_alloc();

  return _swift_task_switch(sub_100C358CC, v1, 0);
}

uint64_t sub_100C358CC()
{
  v1 = (v0[1152] + OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_peripheralProvider);
  v3 = *v1;
  v2 = v1[1];
  ObjectType = swift_getObjectType();
  v5 = async function pointer to dispatch thunk of PairingPeripheralProvider.pair<A>(_:)[1];
  v6 = swift_task_alloc();
  v0[1168] = v6;
  v7 = sub_1000BC4D4(&qword_1016A1358, &qword_1013E0350);
  *v6 = v0;
  v6[1] = sub_100C359BC;
  v8 = v0[1151];

  return dispatch thunk of PairingPeripheralProvider.pair<A>(_:)(v0 + 1147, v8, v7, ObjectType, v2);
}

uint64_t sub_100C359BC()
{
  v2 = *v1;
  v3 = *(*v1 + 9344);
  v4 = *v1;
  *(*v1 + 9352) = v0;

  v5 = *(v2 + 9216);
  if (v0)
  {
    v6 = sub_100C39CE0;
  }

  else
  {
    v6 = sub_100C35AE8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100C35AE8()
{
  v178 = v0;
  *(v0 + 9360) = *(v0 + 9176);
  v1 = *(v0 + 9184);
  *(v0 + 9368) = v1;
  if (qword_101694DA0 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 9208);
  v3 = type metadata accessor for Logger();
  *(v0 + 9376) = sub_1000076D4(v3, qword_1016B8F00);
  sub_10001F280(v2, v0 + 8944);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v165 = v1;
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v176 = v7;
    *v6 = 136315138;
    sub_10001F280(v0 + 8944, v0 + 9064);
    sub_1000BC4D4(&qword_1016A1370, &qword_1013E03B0);
    v8 = String.init<A>(describing:)();
    v10 = v9;
    sub_100007BAC((v0 + 8944));
    v11 = sub_1000136BC(v8, v10, &v176);

    *(v6 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v4, v5, "Connected to peripheral: %s", v6, 0xCu);
    sub_100007BAC(v7);
  }

  else
  {

    sub_100007BAC((v0 + 8944));
  }

  v12 = *(v0 + 9328);
  v13 = *(v0 + 9320);
  v14 = *(v0 + 9312);
  v15 = *(v0 + 9216);
  v16 = OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_pairingInfo;
  *(v0 + 9384) = OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_pairingInfo;
  v17 = *(v15 + v16);
  v18 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_productInfo;
  swift_beginAccess();
  sub_1000D2A70(v17 + v18, v14, &qword_101697268, &qword_101394FE0);
  if ((*(v12 + 48))(v14, 1, v13) == 1)
  {
    sub_10000B3A8(*(v0 + 9312), &qword_101697268, &qword_101394FE0);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v176 = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_1000136BC(0xD00000000000001CLL, 0x800000010136FC40, &v176);
      _os_log_impl(&_mh_execute_header, v19, v20, "%s Missing productInfo!", v21, 0xCu);
      sub_100007BAC(v22);
    }

    sub_100C45B4C();
    swift_allocError();
    *v23 = 7;
    swift_willThrow();
    swift_unknownObjectRelease();
    goto LABEL_22;
  }

  v24 = *(v0 + 9336);
  v25 = *(v0 + 9320);
  v26 = *(v0 + 9304);
  v173 = v16;
  v174 = v15;
  v27 = *(v0 + 9288);
  v28 = *(v0 + 9280);
  v29 = *(v0 + 9216);
  sub_10002AD14(*(v0 + 9312), v24, type metadata accessor for AccessoryProductInfo);
  v30 = (v24 + *(v25 + 96));
  v160 = v30[1];
  v162 = *v30;
  v31 = enum case for PairingExecutorState.InitiatePairing.generateE1Start(_:);
  v32 = type metadata accessor for PairingExecutorState.InitiatePairing();
  *(v0 + 9392) = v32;
  v33 = *(v32 - 8);
  v34 = *(v33 + 104);
  *(v0 + 9400) = v34;
  *(v0 + 9408) = (v33 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v164 = v34;
  v34(v26, v31, v32);
  v35 = *(v33 + 56);
  *(v0 + 9416) = v35;
  *(v0 + 9424) = (v33 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v170 = v32;
  v35(v26, 0, 1, v32);
  v36 = enum case for PairingExecutorState.initiatePairing(_:);
  *(v0 + 1972) = enum case for PairingExecutorState.initiatePairing(_:);
  v37 = *(v27 + 104);
  *(v0 + 9432) = v37;
  *(v0 + 9440) = (v27 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v159 = v36;
  v168 = v37;
  (v37)(v26);
  *(v0 + 9448) = type metadata accessor for ProximityPairingExecutor();
  *(v0 + 9456) = sub_100C4600C(&qword_1016B75C0, type metadata accessor for ProximityPairingExecutor);
  PairingExecutor.setState(_:)();
  v166 = *(v27 + 8);
  *(v0 + 9464) = v166;
  *(v0 + 9472) = (v27 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v166(v26, v28);
  v38 = *(v174 + v16);

  v39 = sub_100F4F600(v162, v160);
  v41 = v40;

  *(v0 + 9480) = v39;
  *(v0 + 9488) = v41;
  if (v41 >> 60 != 15)
  {
    v47 = *(v0 + 9304);
    v163 = v39;
    v48 = *(v0 + 9280);
    v49 = *(v0 + 9216);
    v164(v47, enum case for PairingExecutorState.InitiatePairing.generateE1Finish(_:), v170);
    v35(v47, 0, 1, v170);
    v50 = v159;
    v168(v47, v159, v48);
    PairingExecutor.setState(_:)();
    v166(v47, v48);
    sub_100017D5C(v163, v41);
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.default.getter();
    sub_100006654(v163, v41);
    v161 = v41;
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v176 = v54;
      *v53 = 136315138;
      *(v0 + 9192) = v163;
      *(v0 + 9200) = v41;
      sub_100413338();
      v55 = RawRepresentable<>.hexString.getter();
      v57 = sub_1000136BC(v55, v56, &v176);

      *(v53 + 4) = v57;
      _os_log_impl(&_mh_execute_header, v51, v52, "E1: %s", v53, 0xCu);
      sub_100007BAC(v54);

      v50 = v159;
    }

    v58 = *(v0 + 9304);
    v59 = *(v0 + 9280);
    v60 = *(v0 + 9216);
    v164(v58, enum case for PairingExecutorState.InitiatePairing.generateFMNIDStart(_:), v170);
    v35(v58, 0, 1, v170);
    v168(v58, v50, v59);
    PairingExecutor.setState(_:)();
    v166(v58, v59);
    v61 = sub_100F54748();
    *(v0 + 9496) = v61;
    *(v0 + 9504) = v62;
    if (v62 >> 60 == 15)
    {
      v63 = Logger.logObject.getter();
      v64 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        *v65 = 0;
        _os_log_impl(&_mh_execute_header, v63, v64, "Unable to generate FindMyNetworkId.", v65, 2u);
      }

      v45 = *(v0 + 9336);

      sub_100C45B4C();
      swift_allocError();
      *v66 = 7;
      swift_willThrow();
      sub_100006654(v163, v41);
      goto LABEL_20;
    }

    v77 = v61;
    v78 = v62;
    v79 = *(v0 + 9304);
    v80 = *(v0 + 9280);
    v81 = *(v0 + 9216);
    v164(v79, enum case for PairingExecutorState.InitiatePairing.generateFMNIDFinish(_:), v170);
    v35(v79, 0, 1, v170);
    v168(v79, v159, v80);
    PairingExecutor.setState(_:)();
    v166(v79, v80);
    sub_100017D5C(v77, v78);
    v82 = Logger.logObject.getter();
    v83 = static os_log_type_t.default.getter();
    sub_100006654(v77, v78);
    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      v176 = v85;
      *v84 = 136315138;
      sub_100017D5C(v77, v78);
      v86 = Data.hexString.getter();
      v88 = v87;
      sub_100006654(v77, v78);
      v89 = sub_1000136BC(v86, v88, &v176);

      *(v84 + 4) = v89;
      _os_log_impl(&_mh_execute_header, v82, v83, "findMyNetworkId: %s", v84, 0xCu);
      sub_100007BAC(v85);
    }

    v90 = (*(v174 + v173) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_findMyNetworkId);
    v91 = *v90;
    v92 = v90[1];
    *v90 = v77;
    v90[1] = v78;
    v93 = v78;
    sub_10002E98C(v77, v78);

    sub_100006654(v91, v92);

    v94 = (*(v174 + v173) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_findMyNetworkId);
    v95 = *v94;
    *(v0 + 9512) = *v94;
    v96 = v94[1];
    *(v0 + 9520) = v96;
    if (v96 >> 60 == 15)
    {
      v97 = Logger.logObject.getter();
      v98 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v97, v98))
      {
        v99 = swift_slowAlloc();
        *v99 = 0;
        _os_log_impl(&_mh_execute_header, v97, v98, "Missing FindMyNetworkId to generate init pairing.", v99, 2u);
      }

      v100 = *(v0 + 9336);

      sub_100C45B4C();
      swift_allocError();
      *v101 = 6;
      swift_willThrow();
      sub_100006654(v163, v161);
      sub_100006654(v77, v93);
      swift_unknownObjectRelease();
      v67 = v100;
      goto LABEL_21;
    }

    v102 = *(v0 + 9352);
    v103 = type metadata accessor for __DataStorage();
    v104 = *(v103 + 48);
    v105 = *(v103 + 52);
    swift_allocObject();
    sub_100017D5C(v95, v96);
    v106 = __DataStorage.init(length:)();
    v176 = 0x6000000000;
    v177 = v106;
    sub_1007765FC(&v176, 0);
    v107 = v176;
    v171 = HIDWORD(v176);
    v108 = v177;
    *(v0 + 9528) = v177;
    v109 = [objc_opt_self() defaultStore];
    if (!v109)
    {
      goto LABEL_89;
    }

    v112 = v109;
    v113 = [v109 aa_primaryAppleAccount];

    if (v113)
    {

      v114 = 1;
    }

    else
    {
      v114 = 0;
    }

    v115 = *(v174 + v173);
    v117 = *(v115 + 16);
    v116 = *(v115 + 24);
    *(v0 + 1969) = v114;
    sub_10002E98C(v163, v161);
    sub_10002E98C(v95, v96);
    sub_100017D5C(v117, v116);
    sub_1000198E8();

    v109 = FixedWidthInteger.data.getter();
    v118 = v116 >> 62;
    if ((v116 >> 62) > 1)
    {
      v119 = v163;
      if (v118 != 2)
      {
        goto LABEL_90;
      }

      v122 = *(v117 + 16);
      v121 = *(v117 + 24);
      v123 = __OFSUB__(v121, v122);
      v120 = v121 - v122;
      if (!v123)
      {
LABEL_44:
        if (v120 == 32)
        {
          v124 = v161 >> 62;
          if ((v161 >> 62) > 1)
          {
            if (v124 != 2)
            {
              goto LABEL_91;
            }

            v127 = *(v119 + 16);
            v126 = *(v119 + 24);
            v123 = __OFSUB__(v126, v127);
            v125 = v126 - v127;
            if (!v123)
            {
LABEL_54:
              if (v125 == 113)
              {
                v128 = v96 >> 62;
                if ((v96 >> 62) > 1)
                {
                  v129 = v171;
                  if (v128 != 2)
                  {
                    goto LABEL_92;
                  }

                  v132 = *(v95 + 16);
                  v131 = *(v95 + 24);
                  v123 = __OFSUB__(v131, v132);
                  v130 = v131 - v132;
                  if (!v123)
                  {
LABEL_64:
                    if (v130 == 32)
                    {
                      v133 = v110 >> 62;
                      if ((v110 >> 62) > 1)
                      {
                        if (v133 != 2)
                        {
                          v134 = 0;
                          goto LABEL_75;
                        }

                        v136 = v109[2];
                        v135 = v109[3];
                        v123 = __OFSUB__(v135, v136);
                        v134 = v135 - v136;
                        if (!v123)
                        {
                          goto LABEL_75;
                        }

                        __break(1u);
                      }

                      else if (!v133)
                      {
                        v134 = BYTE6(v110);
LABEL_75:
                        v172 = v95;
                        if (__OFSUB__(v129, v107))
                        {
                          __break(1u);
                        }

                        else
                        {
                          v167 = v109;
                          v169 = v110;
                          if (v129 - v107 == 96 && v134 == 1)
                          {
                            v137 = v116;
                            v138 = *(v0 + 9216);
                            *&v175 = v107 | (v129 << 32);
                            *(&v175 + 1) = v108 | 0x4000000000000000;

                            v176 = sub_100845C88(0);
                            v177 = v139;
                            sub_100776394(&v176, 0);
                            v140 = v176;
                            v141 = v177;
                            Data.append(_:)();

                            sub_100016590(v140, v141);
                            *(v0 + 8624) = v117;
                            *(v0 + 8632) = v137;
                            *(v0 + 8640) = v163;
                            *(v0 + 8648) = v161;
                            *(v0 + 8656) = v172;
                            *(v0 + 8664) = v96;
                            *(v0 + 8672) = v175;
                            *(v0 + 8688) = v167;
                            *(v0 + 8696) = v169;

                            v142 = Logger.logObject.getter();
                            v143 = static os_log_type_t.default.getter();

                            if (os_log_type_enabled(v142, v143))
                            {
                              v144 = swift_slowAlloc();
                              v145 = swift_slowAlloc();
                              v176 = v145;
                              *v144 = 136315138;
                              v146 = *(v174 + v173);
                              v147 = *(v146 + 16);
                              v148 = *(v146 + 24);
                              sub_100017D5C(v147, v148);
                              v149 = Data.hexString.getter();
                              v151 = v150;
                              sub_100016590(v147, v148);
                              v152 = sub_1000136BC(v149, v151, &v176);

                              *(v144 + 4) = v152;
                              _os_log_impl(&_mh_execute_header, v142, v143, "sessionNonce: %s", v144, 0xCu);
                              sub_100007BAC(v145);
                            }

                            v153 = *(v0 + 9272);
                            v154 = *(v0 + 8672);
                            *(v0 + 6808) = *(v0 + 8656);
                            *(v0 + 6824) = v154;
                            *(v0 + 6840) = *(v0 + 8688);
                            v155 = *(v0 + 8640);
                            *(v0 + 6776) = *(v0 + 8624);
                            *(v0 + 6792) = v155;
                            sub_100C46178(v0 + 6776);
                            ObjectType = swift_getObjectType();
                            *(v0 + 9536) = ObjectType;
                            sub_1001DAB40(v0 + 8624, v0 + 8704);
                            type metadata accessor for Characteristic();
                            Identifier.init(stringLiteral:)();
                            v157 = async function pointer to dispatch thunk of ServiceProtocol.subscript.getter[1];
                            v158 = swift_task_alloc();
                            *(v0 + 9544) = v158;
                            *v158 = v0;
                            v158[1] = sub_100C36D1C;
                            v109 = *(v0 + 9272);
                            v110 = ObjectType;
                            v111 = v165;

                            return dispatch thunk of ServiceProtocol.subscript.getter(v109, v110, v111);
                          }
                        }

                        __break(1u);
                        goto LABEL_85;
                      }

                      LODWORD(v134) = HIDWORD(v109) - v109;
                      if (__OFSUB__(HIDWORD(v109), v109))
                      {
LABEL_88:
                        __break(1u);
LABEL_89:
                        __break(1u);
                        goto LABEL_90;
                      }

                      v134 = v134;
                      goto LABEL_75;
                    }

LABEL_92:
                    __break(1u);
                    return dispatch thunk of ServiceProtocol.subscript.getter(v109, v110, v111);
                  }

                  __break(1u);
                }

                else
                {
                  v129 = v171;
                  if (!v128)
                  {
                    v130 = BYTE6(v96);
                    goto LABEL_64;
                  }
                }

                LODWORD(v130) = HIDWORD(v95) - v95;
                if (__OFSUB__(HIDWORD(v95), v95))
                {
LABEL_87:
                  __break(1u);
                  goto LABEL_88;
                }

                v130 = v130;
                goto LABEL_64;
              }

LABEL_91:
              __break(1u);
              goto LABEL_92;
            }

            __break(1u);
          }

          else if (!v124)
          {
            v125 = BYTE6(v161);
            goto LABEL_54;
          }

          LODWORD(v125) = HIDWORD(v119) - v119;
          if (__OFSUB__(HIDWORD(v119), v119))
          {
LABEL_86:
            __break(1u);
            goto LABEL_87;
          }

          v125 = v125;
          goto LABEL_54;
        }

LABEL_90:
        __break(1u);
        goto LABEL_91;
      }

      __break(1u);
    }

    else
    {
      v119 = v163;
      if (!v118)
      {
        v120 = BYTE6(v116);
        goto LABEL_44;
      }
    }

    LODWORD(v120) = HIDWORD(v117) - v117;
    if (__OFSUB__(HIDWORD(v117), v117))
    {
LABEL_85:
      __break(1u);
      goto LABEL_86;
    }

    v120 = v120;
    goto LABEL_44;
  }

  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&_mh_execute_header, v42, v43, "Unable to generate E1 blob.", v44, 2u);
  }

  v45 = *(v0 + 9336);

  sub_100C45B4C();
  swift_allocError();
  *v46 = 7;
  swift_willThrow();
LABEL_20:
  swift_unknownObjectRelease();
  v67 = v45;
LABEL_21:
  sub_100C46118(v67, type metadata accessor for AccessoryProductInfo);
LABEL_22:
  v68 = *(v0 + 9336);
  v69 = *(v0 + 9312);
  v70 = *(v0 + 9304);
  v71 = *(v0 + 9296);
  v72 = *(v0 + 9272);
  v73 = *(v0 + 9248);
  v74 = *(v0 + 9224);

  v75 = *(v0 + 8);

  return v75();
}

uint64_t sub_100C36D1C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 9544);
  v13 = *v2;
  v3[1194] = a1;
  v3[1195] = v1;

  if (v1)
  {
    v5 = v3[1159];
    v6 = v3[1158];
    v7 = v3[1157];
    v8 = v3[1152];
    sub_1001DAB9C((v3 + 1078));
    (*(v6 + 8))(v5, v7);
    v9 = sub_100C39DA4;
    v10 = v8;
  }

  else
  {
    v11 = v3[1152];
    (*(v3[1158] + 8))(v3[1159], v3[1157]);
    v9 = sub_100C36EA0;
    v10 = v11;
  }

  return _swift_task_switch(v9, v10, 0);
}

uint64_t sub_100C36EA0()
{
  v65 = v0;
  v1 = (v0 + 6776);
  v2 = *(v0 + 9376);
  sub_1001DAB40(v0 + 8624, v0 + 8384);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  sub_1001DAB9C(v0 + 8624);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v64 = v6;
    *v5 = 136315138;
    v7 = *(v0 + 6952);
    *(v0 + 6536) = *(v0 + 6936);
    *(v0 + 6552) = v7;
    *(v0 + 6568) = *(v0 + 6968);
    v8 = *(v0 + 6888);
    *(v0 + 6472) = *(v0 + 6872);
    *(v0 + 6488) = v8;
    v9 = *(v0 + 6920);
    *(v0 + 6504) = *(v0 + 6904);
    *(v0 + 6520) = v9;
    v10 = *(v0 + 6824);
    *(v0 + 6408) = *(v0 + 6808);
    *(v0 + 6424) = v10;
    v11 = *(v0 + 6856);
    *(v0 + 6440) = *(v0 + 6840);
    *(v0 + 6456) = v11;
    v12 = *(v0 + 6792);
    *(v0 + 6376) = *v1;
    *(v0 + 6392) = v12;
    sub_1001DAB40(v0 + 8624, v0 + 8464);
    v13 = String.init<A>(describing:)();
    v15 = sub_1000136BC(v13, v14, &v64);

    *(v5 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v3, v4, "Sending command: %s", v5, 0xCu);
    sub_100007BAC(v6);
  }

  v61 = *(v0 + 9472);
  v63 = *(v0 + 9560);
  v59 = *(v0 + 9456);
  v60 = *(v0 + 9464);
  v57 = *(v0 + 9440);
  v58 = *(v0 + 9448);
  v56 = *(v0 + 9432);
  v16 = *(v0 + 1972);
  v17 = *(v0 + 9424);
  v18 = *(v0 + 9416);
  v19 = *(v0 + 9408);
  v20 = *(v0 + 9392);
  v21 = *(v0 + 9304);
  v22 = *(v0 + 9280);
  v23 = *(v0 + 9216);
  (*(v0 + 9400))(v21, enum case for PairingExecutorState.InitiatePairing.commandStart(_:), v20);
  v18(v21, 0, 1, v20);
  v56(v21, v16, v22);
  PairingExecutor.setState(_:)();
  v60(v21, v22);
  v24 = *(v0 + 6952);
  *(v0 + 2736) = *(v0 + 6936);
  *(v0 + 2752) = v24;
  *(v0 + 2768) = *(v0 + 6968);
  v25 = *(v0 + 6888);
  *(v0 + 2672) = *(v0 + 6872);
  *(v0 + 2688) = v25;
  v26 = *(v0 + 6920);
  *(v0 + 2704) = *(v0 + 6904);
  *(v0 + 2720) = v26;
  v27 = *(v0 + 6824);
  *(v0 + 2608) = *(v0 + 6808);
  *(v0 + 2624) = v27;
  v28 = *(v0 + 6856);
  *(v0 + 2640) = *(v0 + 6840);
  *(v0 + 2656) = v28;
  v29 = *(v0 + 6792);
  *(v0 + 2576) = *v1;
  *(v0 + 2592) = v29;
  sub_100C45E3C();
  *(v0 + 9568) = BinaryEncoder.encode<A>(_:)();
  *(v0 + 9576) = v30;
  if (v63)
  {
    v31 = *(v0 + 9552);
    v32 = *(v0 + 9528);
    v33 = *(v0 + 9520);
    v34 = *(v0 + 9512);
    v35 = *(v0 + 9504);
    v36 = *(v0 + 9496);
    v37 = *(v0 + 9488);
    v38 = *(v0 + 9480);
    v39 = *(v0 + 9360);
    v62 = *(v0 + 9336);
    sub_1001DAB9C(v0 + 8624);
    sub_100006654(v38, v37);
    sub_100006654(v36, v35);

    sub_100006654(v34, v33);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_100C46118(v62, type metadata accessor for AccessoryProductInfo);
    sub_1001DAB9C(v0 + 8624);
    v40 = *(v0 + 9336);
    v41 = *(v0 + 9312);
    v42 = *(v0 + 9304);
    v43 = *(v0 + 9296);
    v44 = *(v0 + 9272);
    v45 = *(v0 + 9248);
    v46 = *(v0 + 9224);

    v47 = *(v0 + 8);

    return v47();
  }

  else
  {
    v49 = *(v0 + 9536);
    v50 = *(v0 + 9368);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    *(v0 + 9584) = AssociatedTypeWitness;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    *(v0 + 9592) = AssociatedConformanceWitness;
    v53 = async function pointer to dispatch thunk of CharacteristicProtocol.mtu.getter[1];
    v54 = swift_task_alloc();
    *(v0 + 9600) = v54;
    *v54 = v0;
    v54[1] = sub_100C37348;
    v55 = *(v0 + 9552);

    return dispatch thunk of CharacteristicProtocol.mtu.getter(AssociatedTypeWitness, AssociatedConformanceWitness);
  }
}

uint64_t sub_100C37348(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 9600);
  v6 = *v2;
  *(*v2 + 9608) = v1;

  if (v1)
  {
    v7 = *(v4 + 9216);
    sub_1001DAB9C(v4 + 8624);
    v8 = sub_100C39EEC;
    v9 = v7;
  }

  else
  {
    v9 = *(v4 + 9216);
    *(v4 + 9616) = a1;
    v8 = sub_100C3748C;
  }

  return _swift_task_switch(v8, v9, 0);
}

uint64_t sub_100C3748C()
{
  v1 = v0[1202];
  v2 = v0[1197];
  v3 = v0[1196];
  v4 = fragment(data:mtu:)();
  v0[1203] = v4;
  v5 = async function pointer to dispatch thunk of CharacteristicProtocol.write(data:)[1];
  v6 = swift_task_alloc();
  v0[1204] = v6;
  *v6 = v0;
  v6[1] = sub_100C3754C;
  v7 = v0[1199];
  v8 = v0[1198];
  v9 = v0[1194];
  v10 = v0[1156];

  return dispatch thunk of CharacteristicProtocol.write(data:)(v10, v4, v8, v7);
}

uint64_t sub_100C3754C()
{
  v2 = *(*v1 + 9632);
  v3 = *v1;
  v3[1205] = v0;

  if (v0)
  {
    v4 = v3[1203];
    v5 = v3[1152];
    sub_1001DAB9C((v3 + 1078));

    return _swift_task_switch(sub_100C3A058, v5, 0);
  }

  else
  {
    v6 = v3[1203];

    v7 = async function pointer to AsyncSequence<>.reassemble()[1];
    v8 = swift_task_alloc();
    v3[1206] = v8;
    v9 = sub_10048E70C();
    *v8 = v3;
    v8[1] = sub_100C376FC;
    v10 = v3[1156];
    v11 = v3[1154];

    return AsyncSequence<>.reassemble()(v11, v9);
  }
}

uint64_t sub_100C376FC(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 9648);
  v14 = *v3;
  v4[1207] = a1;
  v4[1208] = a2;
  v4[1209] = v2;

  if (v2)
  {
    v6 = v4[1156];
    v7 = v4[1155];
    v8 = v4[1154];
    v9 = v4[1152];
    sub_1001DAB9C((v4 + 1078));
    (*(v7 + 8))(v6, v8);
    v10 = sub_100C3A1C0;
    v11 = v9;
  }

  else
  {
    v12 = v4[1152];
    (*(v4[1155] + 8))(v4[1156], v4[1154]);
    v10 = sub_100C37884;
    v11 = v12;
  }

  return _swift_task_switch(v10, v11, 0);
}

uint64_t sub_100C37884()
{
  v487 = v0;
  v482 = *(v0 + 9472);
  v463 = *(v0 + 9448);
  v467 = *(v0 + 9456);
  v1 = *(v0 + 9440);
  v2 = *(v0 + 9432);
  v3 = *(v0 + 1972);
  v4 = *(v0 + 9424);
  v5 = *(v0 + 9416);
  v6 = *(v0 + 9408);
  v7 = *(v0 + 9392);
  v472 = *(v0 + 9376);
  v477 = *(v0 + 9464);
  v8 = *(v0 + 9304);
  v9 = *(v0 + 9280);
  v10 = *(v0 + 9216);
  (*(v0 + 9400))(v8, enum case for PairingExecutorState.InitiatePairing.commandFinish(_:), v7);
  v5(v8, 0, 1, v7);
  v2(v8, v3, v9);
  v11 = v0;
  PairingExecutor.setState(_:)();
  v477(v8, v9);
  sub_1001DAB40(v0 + 8624, v0 + 8784);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  sub_1001DAB9C(v0 + 8624);
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *&v486[0] = v15;
    *v14 = 136315138;
    v16 = *(v0 + 6952);
    *(v0 + 2936) = *(v0 + 6936);
    *(v0 + 2952) = v16;
    *(v0 + 2968) = *(v0 + 6968);
    v17 = *(v0 + 6888);
    *(v0 + 2872) = *(v0 + 6872);
    *(v0 + 2888) = v17;
    v18 = *(v0 + 6920);
    *(v0 + 2904) = *(v0 + 6904);
    *(v0 + 2920) = v18;
    v19 = *(v0 + 6824);
    *(v0 + 2808) = *(v0 + 6808);
    *(v0 + 2824) = v19;
    v20 = *(v0 + 6856);
    *(v0 + 2840) = *(v0 + 6840);
    *(v0 + 2856) = v20;
    v21 = *(v0 + 6792);
    *(v0 + 2776) = *(v0 + 6776);
    *(v0 + 2792) = v21;
    sub_1001DAB40(v0 + 8624, v0 + 8544);
    v22 = String.init<A>(describing:)();
    v24 = sub_1000136BC(v22, v23, v486);

    *(v14 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v12, v13, "Sent command: %s", v14, 0xCu);
    sub_100007BAC(v15);
  }

  v25 = *(v0 + 9672);
  v26 = *(v0 + 9664);
  v27 = *(v0 + 9656);
  v28 = *(v0 + 9216);
  sub_100C45ED8();
  BinaryDecoder.decode<A>(_:from:)();
  v483 = v0;
  if (!v25)
  {
    v39 = v0 + 3176;
    v40 = *(v0 + 9376);
    v41 = (v0 + 3576);
    v42 = *(v0 + 3152);
    *(v0 + 3336) = *(v0 + 3136);
    *(v0 + 3352) = v42;
    *(v0 + 3368) = *(v0 + 3168);
    v43 = *(v0 + 3088);
    *(v0 + 3272) = *(v0 + 3072);
    *(v0 + 3288) = v43;
    v44 = *(v0 + 3120);
    *(v0 + 3304) = *(v0 + 3104);
    *(v0 + 3320) = v44;
    v45 = *(v0 + 3024);
    *(v0 + 3208) = *(v0 + 3008);
    *(v0 + 3224) = v45;
    v46 = *(v0 + 3056);
    *(v0 + 3240) = *(v0 + 3040);
    *(v0 + 3256) = v46;
    v47 = *(v0 + 2992);
    *(v0 + 3176) = *(v0 + 2976);
    *(v0 + 3192) = v47;
    sub_100C45F2C(v0 + 3176, v0 + 3376);
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.default.getter();
    sub_100C45F88(v0 + 3176);
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      *&v486[0] = v51;
      *v50 = 136315138;
      v52 = *(v0 + 3352);
      *(v0 + 2336) = *(v0 + 3336);
      *(v0 + 2352) = v52;
      *(v0 + 2368) = *(v0 + 3368);
      v53 = *(v0 + 3288);
      *(v0 + 2272) = *(v0 + 3272);
      *(v0 + 2288) = v53;
      v54 = *(v0 + 3320);
      *(v0 + 2304) = *(v0 + 3304);
      *(v0 + 2320) = v54;
      v55 = *(v0 + 3224);
      *(v0 + 2208) = *(v0 + 3208);
      *(v0 + 2224) = v55;
      v56 = *(v0 + 3256);
      *(v0 + 2240) = *(v0 + 3240);
      *(v0 + 2256) = v56;
      v57 = *(v0 + 3192);
      *(v0 + 2176) = *v39;
      *(v0 + 2192) = v57;
      sub_100C45F2C(v39, v0 + 2376);
      v58 = String.init<A>(describing:)();
      v60 = sub_1000136BC(v58, v59, v486);

      *(v50 + 4) = v60;
      _os_log_impl(&_mh_execute_header, v48, v49, "Received response: %s", v50, 0xCu);
      sub_100007BAC(v51);

      v11 = v0;
    }

    v61 = *(v0 + 3352);
    *(v0 + 3736) = *(v0 + 3336);
    *(v0 + 3752) = v61;
    *(v0 + 3768) = *(v0 + 3368);
    v62 = *(v0 + 3288);
    *(v0 + 3672) = *(v0 + 3272);
    *(v0 + 3688) = v62;
    v63 = *(v0 + 3320);
    *(v0 + 3704) = *(v0 + 3304);
    *(v0 + 3720) = v63;
    v64 = *(v0 + 3224);
    *(v0 + 3608) = *(v0 + 3208);
    *(v0 + 3624) = v64;
    v65 = *(v0 + 3256);
    *(v0 + 3640) = *(v0 + 3240);
    *(v0 + 3656) = v65;
    v66 = *(v0 + 3192);
    *v41 = *v39;
    *(v0 + 3592) = v66;
    v67 = sub_100C45FDC(v41);
    v68 = *(v11 + 9376);
    if (v67 != 2)
    {
      sub_1001DAB9C(v11 + 8624);
      sub_100C45F2C(v39, v11 + 3776);
      v107 = Logger.logObject.getter();
      v108 = static os_log_type_t.error.getter();
      sub_100C45F88(v39);
      if (os_log_type_enabled(v107, v108))
      {
        v109 = v11 + 3976;
        v110 = swift_slowAlloc();
        v111 = swift_slowAlloc();
        *&v486[0] = v111;
        *v110 = 136446210;
        v112 = *(v0 + 3352);
        *(v109 + 160) = *(v0 + 3336);
        *(v109 + 176) = v112;
        *(v109 + 192) = *(v0 + 3368);
        v113 = *(v0 + 3288);
        *(v109 + 96) = *(v0 + 3272);
        *(v109 + 112) = v113;
        v114 = *(v0 + 3320);
        *(v109 + 128) = *(v0 + 3304);
        *(v109 + 144) = v114;
        v115 = *(v0 + 3224);
        *(v109 + 32) = *(v0 + 3208);
        *(v109 + 48) = v115;
        v116 = *(v0 + 3256);
        *(v109 + 64) = *(v0 + 3240);
        *(v109 + 80) = v116;
        v117 = *(v0 + 3192);
        *v109 = *v39;
        *(v109 + 16) = v117;
        sub_100C45F2C(v39, v0 + 4176);
        v118 = String.init<A>(describing:)();
        v120 = sub_1000136BC(v118, v119, v486);

        *(v110 + 4) = v120;
        _os_log_impl(&_mh_execute_header, v107, v108, "Invalid sendPairingData payload %{public}s", v110, 0xCu);
        sub_100007BAC(v111);

        v11 = v0;
      }

      v453 = *(v11 + 9664);
      v121 = *(v11 + 9656);
      v465 = *(v11 + 9576);
      v456 = *(v11 + 9568);
      v481 = *(v11 + 9552);
      v122 = *(v11 + 9528);
      v469 = *(v11 + 9520);
      v460 = *(v11 + 9512);
      v123 = *(v11 + 9504);
      v124 = *(v11 + 9496);
      v125 = *(v0 + 9488);
      v126 = *(v0 + 9480);
      v475 = *(v0 + 9360);
      v127 = *(v0 + 9336);
      sub_100C45B4C();
      swift_allocError();
      *v128 = 8;
      swift_willThrow();
      sub_100006654(v126, v125);
      sub_100006654(v124, v123);

      sub_1001DAB9C(v0 + 8624);
      sub_100C45F88(v39);
      sub_100016590(v121, v453);
      sub_100016590(v456, v465);
      sub_100006654(v460, v469);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      sub_100C46118(v127, type metadata accessor for AccessoryProductInfo);
      goto LABEL_90;
    }

    v69 = (v0 + 4976);
    v70 = (v0 + 5376);
    v480 = v0 + 3176;
    v71 = sub_10001F270(v41);
    v72 = *(v39 + 176);
    *(v11 + 4536) = *(v39 + 160);
    *(v11 + 4552) = v72;
    *(v11 + 4568) = *(v39 + 192);
    v73 = *(v39 + 112);
    *(v11 + 4472) = *(v39 + 96);
    *(v11 + 4488) = v73;
    v74 = *(v39 + 144);
    *(v11 + 4504) = *(v39 + 128);
    *(v11 + 4520) = v74;
    v75 = *(v39 + 48);
    *(v11 + 4408) = *(v39 + 32);
    *(v11 + 4424) = v75;
    v76 = *(v39 + 80);
    *(v11 + 4440) = *(v39 + 64);
    *(v11 + 4456) = v76;
    v77 = *(v39 + 16);
    *(v11 + 4376) = *v39;
    *(v11 + 4392) = v77;
    v78 = sub_10001F270(v11 + 4376);
    v79 = v483;
    sub_100C45F2C(v39, v483 + 4576);
    sub_1000D2A70(v78, v483 + 8032, &qword_1016B91D0, &unk_1013E1340);
    v80 = Logger.logObject.getter();
    v81 = static os_log_type_t.default.getter();
    sub_100C45F88(v39);
    v474 = v71;
    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      *&v486[0] = v83;
      *v82 = 136315138;
      v84 = *v71;
      v85 = v71[1];
      v86 = Data.hexString.getter();
      v88 = sub_1000136BC(v86, v87, v486);

      *(v82 + 4) = v88;
      v79 = v483;
      _os_log_impl(&_mh_execute_header, v80, v81, "C1: %s", v82, 0xCu);
      sub_100007BAC(v83);
    }

    v89 = *(v79 + 9376);
    v90 = v79 + 5776;
    v91 = *(v39 + 176);
    *(v483 + 5136) = *(v39 + 160);
    *(v483 + 5152) = v91;
    *(v483 + 5168) = *(v39 + 192);
    v92 = *(v39 + 112);
    *(v483 + 5072) = *(v39 + 96);
    *(v483 + 5088) = v92;
    v93 = *(v39 + 144);
    *(v483 + 5104) = *(v39 + 128);
    *(v483 + 5120) = v93;
    v94 = *(v39 + 48);
    *(v483 + 5008) = *(v39 + 32);
    *(v483 + 5024) = v94;
    v95 = *(v39 + 80);
    *(v483 + 5040) = *(v39 + 64);
    *(v483 + 5056) = v95;
    v96 = *(v39 + 16);
    *v69 = *v39;
    *(v483 + 4992) = v96;
    v97 = sub_10001F270(v69);
    sub_1000D2A70(v97, v79 + 7856, &qword_1016B91D0, &unk_1013E1340);
    v98 = Logger.logObject.getter();
    v99 = static os_log_type_t.default.getter();
    sub_100C45F88(v39);
    if (os_log_type_enabled(v98, v99))
    {
      v100 = swift_slowAlloc();
      v101 = swift_slowAlloc();
      *&v486[0] = v101;
      *v100 = 136315138;
      v102 = v71[4];
      v103 = v71[5];
      v104 = Data.hexString.getter();
      v106 = sub_1000136BC(v104, v105, v486);

      *(v100 + 4) = v106;
      _os_log_impl(&_mh_execute_header, v98, v99, "SerialNumber: %s", v100, 0xCu);
      sub_100007BAC(v101);
      v79 = v483;
    }

    v129 = v79 + 6176;
    v130 = *(v79 + 9376);
    v131 = *(v39 + 176);
    *(v483 + 5536) = *(v39 + 160);
    *(v483 + 5552) = v131;
    *(v483 + 5568) = *(v39 + 192);
    v132 = *(v39 + 112);
    *(v483 + 5472) = *(v39 + 96);
    *(v483 + 5488) = v132;
    v133 = *(v39 + 144);
    *(v483 + 5504) = *(v39 + 128);
    *(v483 + 5520) = v133;
    v134 = *(v39 + 48);
    *(v483 + 5408) = *(v39 + 32);
    *(v483 + 5424) = v134;
    v135 = *(v39 + 80);
    *(v483 + 5440) = *(v39 + 64);
    *(v483 + 5456) = v135;
    v136 = *(v39 + 16);
    *v70 = *v39;
    *(v483 + 5392) = v136;
    v137 = sub_10001F270(v70);
    sub_1000D2A70(v137, v79 + 7680, &qword_1016B91D0, &unk_1013E1340);
    v138 = Logger.logObject.getter();
    v139 = static os_log_type_t.default.getter();
    sub_100C45F88(v39);
    if (os_log_type_enabled(v138, v139))
    {
      v140 = swift_slowAlloc();
      v141 = swift_slowAlloc();
      *&v486[0] = v141;
      *v140 = 136315138;
      v142 = v71[10];
      v143 = v71[11];
      v144 = Data.hexString.getter();
      v146 = sub_1000136BC(v144, v145, v486);

      *(v140 + 4) = v146;
      _os_log_impl(&_mh_execute_header, v138, v139, "ChipId: %s", v140, 0xCu);
      sub_100007BAC(v141);
      v79 = v483;
    }

    v147 = v79 + 6576;
    v148 = *(v79 + 9376);
    v149 = *(v39 + 176);
    *(v90 + 160) = *(v39 + 160);
    *(v90 + 176) = v149;
    *(v90 + 192) = *(v39 + 192);
    v150 = *(v39 + 112);
    *(v90 + 96) = *(v39 + 96);
    *(v90 + 112) = v150;
    v151 = *(v39 + 144);
    *(v90 + 128) = *(v39 + 128);
    *(v90 + 144) = v151;
    v152 = *(v39 + 48);
    *(v90 + 32) = *(v39 + 32);
    *(v90 + 48) = v152;
    v153 = *(v39 + 80);
    *(v90 + 64) = *(v39 + 64);
    *(v90 + 80) = v153;
    v154 = *(v39 + 16);
    *v90 = *v39;
    *(v90 + 16) = v154;
    v155 = sub_10001F270(v90);
    sub_1000D2A70(v155, v79 + 7504, &qword_1016B91D0, &unk_1013E1340);
    v156 = Logger.logObject.getter();
    v157 = static os_log_type_t.default.getter();
    sub_100C45F88(v39);
    if (os_log_type_enabled(v156, v157))
    {
      v158 = swift_slowAlloc();
      v159 = swift_slowAlloc();
      *&v486[0] = v159;
      *v158 = 136315138;
      v160 = v71[8];
      v161 = v71[9];
      v162 = Data.hexString.getter();
      v164 = sub_1000136BC(v162, v163, v486);

      *(v158 + 4) = v164;
      _os_log_impl(&_mh_execute_header, v156, v157, "ECID: %s", v158, 0xCu);
      sub_100007BAC(v159);
      v79 = v483;
    }

    v165 = *(v79 + 9376);
    v166 = *(v39 + 176);
    *(v129 + 160) = *(v39 + 160);
    *(v129 + 176) = v166;
    *(v129 + 192) = *(v39 + 192);
    v167 = *(v39 + 112);
    *(v129 + 96) = *(v39 + 96);
    *(v129 + 112) = v167;
    v168 = *(v39 + 144);
    *(v129 + 128) = *(v39 + 128);
    *(v129 + 144) = v168;
    v169 = *(v39 + 48);
    *(v129 + 32) = *(v39 + 32);
    *(v129 + 48) = v169;
    v170 = *(v39 + 80);
    *(v129 + 64) = *(v39 + 64);
    *(v129 + 80) = v170;
    v171 = *(v39 + 16);
    *v129 = *v39;
    *(v129 + 16) = v171;
    v172 = sub_10001F270(v129);
    sub_1000D2A70(v172, v79 + 6976, &qword_1016B91D0, &unk_1013E1340);
    v173 = Logger.logObject.getter();
    v174 = static os_log_type_t.default.getter();
    sub_100C45F88(v39);
    if (os_log_type_enabled(v173, v174))
    {
      v175 = swift_slowAlloc();
      v176 = swift_slowAlloc();
      *&v486[0] = v176;
      *v175 = 136315138;
      v177 = v71[2];
      v178 = v71[3];
      v179 = Data.hexString.getter();
      v181 = sub_1000136BC(v179, v180, v486);

      *(v175 + 4) = v181;
      _os_log_impl(&_mh_execute_header, v173, v174, "numberOfBeacons: %s", v175, 0xCu);
      sub_100007BAC(v176);
      v79 = v483;
    }

    v182 = *(v79 + 9376);
    v183 = v79 + 1776;
    v184 = *(v39 + 176);
    *(v147 + 160) = *(v39 + 160);
    *(v147 + 176) = v184;
    *(v147 + 192) = *(v39 + 192);
    v185 = *(v39 + 112);
    *(v147 + 96) = *(v39 + 96);
    *(v147 + 112) = v185;
    v186 = *(v39 + 144);
    *(v147 + 128) = *(v39 + 128);
    *(v147 + 144) = v186;
    v187 = *(v39 + 48);
    *(v147 + 32) = *(v39 + 32);
    *(v147 + 48) = v187;
    v188 = *(v39 + 80);
    *(v147 + 64) = *(v39 + 64);
    *(v147 + 80) = v188;
    v189 = *(v39 + 16);
    *v147 = *v39;
    *(v147 + 16) = v189;
    v190 = sub_10001F270(v147);
    sub_1000D2A70(v190, v79 + 7152, &qword_1016B91D0, &unk_1013E1340);
    v191 = Logger.logObject.getter();
    v192 = static os_log_type_t.default.getter();
    sub_100C45F88(v39);
    if (os_log_type_enabled(v191, v192))
    {
      v193 = swift_slowAlloc();
      v194 = swift_slowAlloc();
      *&v486[0] = v194;
      *v193 = 136315138;
      v195 = v71[6];
      v196 = v71[7];
      v197 = Data.hexString.getter();
      v199 = sub_1000136BC(v197, v198, v486);

      *(v193 + 4) = v199;
      _os_log_impl(&_mh_execute_header, v191, v192, "otherSerialNumber: %s", v193, 0xCu);
      sub_100007BAC(v194);
      v79 = v483;
    }

    v200 = v79 + 1976;
    v201 = *(v79 + 9376);
    v202 = *(v39 + 176);
    *(v183 + 160) = *(v39 + 160);
    *(v183 + 176) = v202;
    *(v183 + 192) = *(v39 + 192);
    v203 = *(v39 + 112);
    *(v183 + 96) = *(v39 + 96);
    *(v183 + 112) = v203;
    v204 = *(v39 + 144);
    *(v183 + 128) = *(v39 + 128);
    *(v183 + 144) = v204;
    v205 = *(v39 + 48);
    *(v183 + 32) = *(v39 + 32);
    *(v183 + 48) = v205;
    v206 = *(v39 + 80);
    *(v183 + 64) = *(v39 + 64);
    *(v183 + 80) = v206;
    v207 = *(v39 + 16);
    *v183 = *v39;
    *(v183 + 16) = v207;
    v208 = sub_10001F270(v183);
    sub_1000D2A70(v208, v79 + 8208, &qword_1016B91D0, &unk_1013E1340);
    v209 = Logger.logObject.getter();
    v210 = static os_log_type_t.default.getter();
    sub_100C45F88(v39);
    if (os_log_type_enabled(v209, v210))
    {
      v211 = swift_slowAlloc();
      v212 = swift_slowAlloc();
      *&v486[0] = v212;
      *v211 = 136315138;
      v213 = v71[12];
      v214 = v71[13];
      v215 = Data.hexString.getter();
      v217 = sub_1000136BC(v215, v216, v486);

      *(v211 + 4) = v217;
      _os_log_impl(&_mh_execute_header, v209, v210, "seedK1: %s", v211, 0xCu);
      sub_100007BAC(v212);
      v79 = v483;
    }

    v218 = *(v79 + 9376);
    v219 = *(v39 + 176);
    *(v200 + 160) = *(v39 + 160);
    *(v200 + 176) = v219;
    *(v200 + 192) = *(v39 + 192);
    v220 = *(v39 + 112);
    *(v200 + 96) = *(v39 + 96);
    *(v200 + 112) = v220;
    v221 = *(v39 + 144);
    *(v200 + 128) = *(v39 + 128);
    *(v200 + 144) = v221;
    v222 = *(v39 + 48);
    *(v200 + 32) = *(v39 + 32);
    *(v200 + 48) = v222;
    v223 = *(v39 + 80);
    *(v200 + 64) = *(v39 + 64);
    *(v200 + 80) = v223;
    v224 = *(v39 + 16);
    *v200 = *v39;
    *(v200 + 16) = v224;
    v225 = sub_10001F270(v200);
    sub_1000D2A70(v225, v79 + 7328, &qword_1016B91D0, &unk_1013E1340);
    v226 = Logger.logObject.getter();
    v227 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v226, v227))
    {
      sub_100C45F88(v39);
LABEL_38:

      v457 = v71[15];
      v461 = v71[14];
      v470 = Data.chunked(into:)();
      v237 = *(v470 + 16);
      if (v237)
      {
        v238 = (v470 + 40);
        do
        {
          v244 = *(v79 + 9376);
          v245 = *(v238 - 1);
          v246 = *v238;
          sub_100017D5C(v245, *v238);
          v247 = Logger.logObject.getter();
          v248 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v247, v248))
          {
            v239 = swift_slowAlloc();
            v240 = swift_slowAlloc();
            *&v486[0] = v240;
            *v239 = 136315138;
            v241 = Data.hexString.getter();
            v243 = sub_1000136BC(v241, v242, v486);

            *(v239 + 4) = v243;
            _os_log_impl(&_mh_execute_header, v247, v248, "%s", v239, 0xCu);
            sub_100007BAC(v240);

            v79 = v483;

            sub_100016590(v245, v246);
          }

          else
          {

            sub_100016590(v245, v246);
          }

          v238 += 2;
          --v237;
        }

        while (v237);
      }

      v249 = *(v79 + 9376);

      v250 = v474;
      v251 = v474[20];
      v252 = v474[21];
      v253 = v480;
      sub_100C45F2C(v480, v79 + 5976);
      sub_100C45F2C(v480, v79 + 5576);
      sub_100C45F2C(v480, v79 + 5176);
      sub_100017D5C(v251, v252);
      v254 = Logger.logObject.getter();
      v255 = static os_log_type_t.default.getter();
      sub_100C45F88(v480);
      v471 = v251;
      if (!os_log_type_enabled(v254, v255))
      {
        sub_100C45F88(v480);
        sub_100C45F88(v480);

LABEL_57:
        v267 = *(v79 + 9376);
        sub_100017D5C(v251, v252);
        v268 = Logger.logObject.getter();
        v269 = static os_log_type_t.default.getter();
        if (!os_log_type_enabled(v268, v269))
        {
          sub_100016590(v251, v252);

LABEL_70:
          v279 = *(v79 + 9376);
          sub_100C45F2C(v253, v79 + 4776);
          v280 = Logger.logObject.getter();
          v281 = static os_log_type_t.default.getter();
          v466 = v252;
          if (!os_log_type_enabled(v280, v281))
          {
            sub_100C45F88(v253);

LABEL_83:
            v293 = *(*(v79 + 9216) + *(v79 + 9384));
            v294 = *v250;
            v295 = v250[1];

            sub_100017D5C(v294, v295);
            sub_1004A4714(v294, v295, v486);
            v478 = *(v79 + 9472);
            v450 = *(v79 + 9456);
            v454 = *(v79 + 9464);
            v444 = *(v79 + 9440);
            v447 = *(v79 + 9448);
            v441 = *(v79 + 9432);
            v438 = *(v79 + 1972);
            v432 = *(v79 + 9416);
            v435 = *(v79 + 9424);
            v425 = *(v79 + 9400);
            v427 = *(v79 + 9408);
            v423 = *(v79 + 9392);
            v296 = *(v79 + 9384);
            v297 = *(v79 + 9304);
            v429 = *(v79 + 9280);
            v298 = *(v79 + 9216);
            v299 = *(v293 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_collaborativeKeyC1);
            v300 = *(v293 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_collaborativeKeyC1 + 8);
            *(v293 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_collaborativeKeyC1) = v486[0];
            sub_100006654(v299, v300);

            v301 = v79;
            v303 = v474[8];
            v302 = v474[9];
            v304 = (*(v298 + v296) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryEcid);
            v305 = *v304;
            v306 = v304[1];
            *v304 = v303;
            v304[1] = v302;

            sub_100017D5C(v303, v302);
            sub_100006654(v305, v306);

            v307 = *(v298 + v296);
            v308 = v474[4];
            v309 = v474[5];

            v310 = Data.trimmed.getter();
            v311 = (v307 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber);
            v312 = *(v307 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber);
            v313 = *(v307 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber + 8);
            *v311 = v310;
            v311[1] = v314;
            sub_100006654(v312, v313);

            v315 = v474[10];
            v316 = v474[11];
            v317 = (*(v298 + v296) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryChipId);
            v318 = *v317;
            v319 = v317[1];
            *v317 = v315;
            v317[1] = v316;

            sub_100017D5C(v315, v316);
            sub_100006654(v318, v319);

            v320 = v474[16];
            v321 = v474[17];
            v322 = (*(v298 + v296) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_baaSignatureS2);
            v323 = *v322;
            v324 = v322[1];
            *v322 = v320;
            v322[1] = v321;

            sub_100017D5C(v320, v321);
            sub_100006654(v323, v324);

            v325 = (*(v298 + v296) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_scrtAttestation);
            v326 = *v325;
            v327 = v325[1];
            *v325 = v461;
            v325[1] = v457;

            sub_100017D5C(v461, v457);
            sub_100006654(v326, v327);

            v328 = v474[12];
            v329 = v474[13];
            v330 = (*(v298 + v296) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_seedK1);
            v331 = *v330;
            v332 = v330[1];
            *v330 = v328;
            v330[1] = v329;

            sub_100017D5C(v328, v329);
            sub_100006654(v331, v332);

            v333 = *(v298 + v296);
            *(v333 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryPartId) = 1;
            *(v333 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_numBeacons) = 1;
            v334 = (v333 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_systemPublicKey);
            v335 = *(v333 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_systemPublicKey);
            v336 = *(v333 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_systemPublicKey + 8);
            *v334 = v471;
            v334[1] = v466;
            sub_100017D5C(v471, v466);

            sub_100006654(v335, v336);

            v337 = v474[18];
            v338 = v474[19];
            v339 = (*(v298 + v296) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_refPublicKey);
            v340 = *v339;
            v341 = v339[1];
            *v339 = v337;
            v339[1] = v338;

            sub_100017D5C(v337, v338);
            sub_100006654(v340, v341);

            v425(v297, enum case for PairingExecutorState.InitiatePairing.generateCollaborativeKeyStart(_:), v423);
            v432(v297, 0, 1, v423);
            v441(v297, v438, v429);
            PairingExecutor.setState(_:)();
            v454(v297, v429);
            v342 = (*(v298 + v296) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_collaborativeKeyC1);
            v343 = *v342;
            v344 = v342[1];
            if (v344 >> 60 == 15)
            {
              v345 = 0;
            }

            else
            {
              v345 = *v342;
            }

            if (v344 >> 60 == 15)
            {
              v346 = 0xF000000000000000;
            }

            else
            {
              v346 = v342[1];
            }

            sub_10002E98C(v343, v344);
            v347 = sub_100C3A328((v301 + 8984), v345, v346);
            v462 = v356;
            v476 = v347;
            v451 = *(v301 + 9464);
            v455 = *(v301 + 9472);
            v439 = *(v301 + 9440);
            v442 = *(v301 + 9448);
            v436 = *(v301 + 9432);
            v433 = *(v301 + 1972);
            v430 = *(v301 + 9424);
            v357 = *(v301 + 9416);
            v358 = *(v301 + 9408);
            v359 = *(v301 + 9400);
            v360 = *(v301 + 9392);
            v445 = *(v301 + 9384);
            v448 = *(v301 + 9456);
            v458 = *(v301 + 9376);
            v361 = *(v301 + 9304);
            v362 = *(v301 + 9280);
            v363 = *(v301 + 9216);
            sub_100006654(v343, v344);
            sub_10000A748((v301 + 8984), v301 + 9024);
            v359(v361, enum case for PairingExecutorState.InitiatePairing.generateCollaborativeKeyFinish(_:), v360);
            v357(v361, 0, 1, v360);
            v436(v361, v433, v362);
            PairingExecutor.setState(_:)();
            v451(v361, v362);
            v364 = *(v363 + v445);
            sub_10001F280(v301 + 9024, v301 + 8904);
            v365 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_collaborativeKeyC2;
            swift_beginAccess();

            sub_10002311C(v301 + 8904, v364 + v365, &qword_101697378, &unk_101391940);
            swift_endAccess();

            v366 = Logger.logObject.getter();
            v367 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v366, v367))
            {
              v369 = swift_slowAlloc();
              *v369 = 0;
              _os_log_impl(&_mh_execute_header, v366, v367, "Generated collaborative share", v369, 2u);
              v301 = v483;
            }

            v370 = *(v301 + 9384);
            v371 = v301;
            v372 = *(v301 + 9376);
            v373 = *(v301 + 9216);

            v374 = *(v373 + v370);

            v375 = sub_10090B55C(_swiftEmptyArrayStorage);
            sub_100F518CC(v476, v462, 0, 0xF000000000000000, v375, (v301 + 368));

            v376 = OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_pairingCheckData;
            memcpy((v301 + 720), (v373 + OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_pairingCheckData), 0x160uLL);
            memcpy((v373 + v376), (v301 + 368), 0x160uLL);
            sub_10000B3A8(v301 + 720, &qword_1016993B0, &unk_1013E1330);

            v377 = Logger.logObject.getter();
            v378 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v377, v378))
            {
              v379 = swift_slowAlloc();
              v380 = swift_slowAlloc();
              *&v486[0] = v380;
              *v379 = 136315138;
              memcpy((v301 + 1072), (v373 + v376), 0x160uLL);
              memcpy((v301 + 1424), (v373 + v376), 0x160uLL);
              sub_1000D2A70(v301 + 1072, v301 + 16, &qword_1016993B0, &unk_1013E1330);
              sub_1000BC4D4(&qword_1016993B0, &unk_1013E1330);
              v381 = String.init<A>(describing:)();
              v383 = sub_1000136BC(v381, v382, v486);

              *(v379 + 4) = v383;
              _os_log_impl(&_mh_execute_header, v377, v378, "Created pairing check data %s", v379, 0xCu);
              sub_100007BAC(v380);
            }

            v384 = *(v301 + 9384);
            v385 = *(v301 + 9224);
            v386 = *(v301 + 9216);
            v387 = *(v371 + 9208);
            v388 = OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_crypto;
            v389 = *(v386 + OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_crypto);

            v484 = *(v371 + 9360);
            *(v386 + v388) = v390;

            v391 = *(v386 + OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_service);
            *(v386 + OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_service) = v484;
            swift_unknownObjectRetain();
            swift_unknownObjectRelease();
            sub_10001F280(v387, v371 + 8864);
            v392 = OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_peripheral;
            swift_beginAccess();
            sub_10002311C(v371 + 8864, v386 + v392, &qword_1016A12E8, &qword_1013A51D8);
            swift_endAccess();
            static String.Encoding.utf8.getter();
            v393 = String.init(data:encoding:)();
            v395 = *(v386 + v384);
            v396 = *(v395 + 96);
            v397 = 0xE000000000000000;
            v398 = v371;
            if (v396)
            {
              v399 = *(v395 + 88);
              v400 = v396;
            }

            else
            {
              v399 = 0;
              v400 = 0xE000000000000000;
            }

            v418 = *(v371 + 9664);
            v417 = *(v371 + 9656);
            v420 = *(v371 + 9576);
            v419 = *(v371 + 9568);
            v421 = *(v371 + 9552);
            v428 = *(v371 + 9528);
            v424 = *(v371 + 9520);
            v422 = *(v371 + 9512);
            v431 = *(v371 + 9504);
            v426 = *(v371 + 9496);
            v443 = *(v371 + 9488);
            v434 = *(v371 + 9480);
            v452 = *(v371 + 9472);
            v449 = *(v371 + 9464);
            v415 = *(v371 + 9456);
            v414 = *(v371 + 9448);
            v413 = *(v371 + 9440);
            v401 = *(v371 + 9432);
            v402 = *(v371 + 1972);
            v403 = *(v371 + 9424);
            v404 = *(v371 + 9416);
            v405 = *(v371 + 9408);
            v406 = *(v371 + 9400);
            v407 = *(v371 + 9392);
            v416 = *(v371 + 9360);
            v446 = *(v371 + 9336);
            if (v394)
            {
              v397 = v394;
              v408 = v393;
            }

            else
            {
              v408 = 0;
            }

            v437 = *(v371 + 9312);
            v440 = *(v371 + 9304);
            v409 = *(v371 + 9296);
            v410 = *(v371 + 9280);
            v411 = *(v371 + 9272);
            v459 = *(v371 + 9248);
            v485 = *(v371 + 9224);
            v412 = *(v371 + 9216);
            *v409 = v408;
            v409[1] = v397;
            v409[2] = v399;
            v409[3] = v400;
            v406(v409, enum case for PairingExecutorState.InitiatePairing.result(_:), v407);
            v404(v409, 0, 1, v407);
            v401(v409, v402, v410);

            PairingExecutor.setState(_:)();
            sub_100016590(v476, v462);
            sub_100016590(v417, v418);
            sub_100016590(v419, v420);
            swift_unknownObjectRelease();
            sub_100006654(v422, v424);
            swift_unknownObjectRelease();

            sub_100016590(v471, v466);
            sub_100C45F88(v480);
            sub_100C45F88(v480);
            sub_1001DAB9C(v398 + 8624);
            sub_1001DAB9C(v398 + 8624);

            sub_100006654(v426, v431);
            sub_100006654(v434, v443);
            v449(v409, v410);
            sub_100007BAC((v398 + 9024));
            sub_100C46118(v446, type metadata accessor for AccessoryProductInfo);

            v355 = *(v398 + 8);
            goto LABEL_91;
          }

          v282 = swift_slowAlloc();
          result = swift_slowAlloc();
          v283 = result;
          *&v486[0] = result;
          *v282 = 134218242;
          v284 = v250[18];
          v285 = v250[19];
          v286 = v285 >> 62;
          if ((v285 >> 62) > 1)
          {
            if (v286 != 2)
            {
              v287 = 0;
              goto LABEL_82;
            }

            v289 = *(v284 + 16);
            v288 = *(v284 + 24);
            v235 = __OFSUB__(v288, v289);
            v287 = v288 - v289;
            if (!v235)
            {
              goto LABEL_82;
            }

            __break(1u);
          }

          else if (!v286)
          {
            v287 = BYTE6(v285);
LABEL_82:
            *(v282 + 4) = v287;
            sub_100C45F88(v253);
            *(v282 + 12) = 2080;
            v290 = Data.hexString.getter();
            v292 = sub_1000136BC(v290, v291, v486);

            *(v282 + 14) = v292;
            _os_log_impl(&_mh_execute_header, v280, v281, "refKey %ld: %s", v282, 0x16u);
            sub_100007BAC(v283);

            v79 = v483;
            goto LABEL_83;
          }

          LODWORD(v287) = HIDWORD(v284) - v284;
          if (!__OFSUB__(HIDWORD(v284), v284))
          {
            v287 = v287;
            goto LABEL_82;
          }

LABEL_109:
          __break(1u);
          return result;
        }

        v270 = swift_slowAlloc();
        result = swift_slowAlloc();
        v271 = result;
        *&v486[0] = result;
        *v270 = 134218242;
        v272 = v252 >> 62;
        if ((v252 >> 62) > 1)
        {
          if (v272 != 2)
          {
            v273 = 0;
            goto LABEL_69;
          }

          v275 = *(v251 + 16);
          v274 = *(v251 + 24);
          v235 = __OFSUB__(v274, v275);
          v273 = v274 - v275;
          if (!v235)
          {
            goto LABEL_69;
          }

          __break(1u);
        }

        else if (!v272)
        {
          v273 = BYTE6(v252);
LABEL_69:
          *(v270 + 4) = v273;
          sub_100016590(v251, v252);
          *(v270 + 12) = 2080;
          v276 = Data.hexString.getter();
          v278 = sub_1000136BC(v276, v277, v486);

          *(v270 + 14) = v278;
          _os_log_impl(&_mh_execute_header, v268, v269, "sikPub %ld: %s", v270, 0x16u);
          sub_100007BAC(v271);

          v79 = v483;
          goto LABEL_70;
        }

        LODWORD(v273) = HIDWORD(v251) - v251;
        if (!__OFSUB__(HIDWORD(v251), v251))
        {
          v273 = v273;
          goto LABEL_69;
        }

LABEL_108:
        __break(1u);
        goto LABEL_109;
      }

      v256 = swift_slowAlloc();
      v257 = swift_slowAlloc();
      *&v486[0] = v257;
      *v256 = 134218242;
      v258 = v474[16];
      v259 = v474[17];
      v260 = v259 >> 62;
      if ((v259 >> 62) <= 1)
      {
        if (!v260)
        {
          sub_100C45F88(v480);
          v261 = BYTE6(v259);
LABEL_56:
          *(v256 + 4) = v261;
          sub_100C45F88(v253);
          *(v256 + 12) = 2080;
          v264 = Data.hexString.getter();
          v266 = sub_1000136BC(v264, v265, v486);

          *(v256 + 14) = v266;
          _os_log_impl(&_mh_execute_header, v254, v255, "BAA signature (S2) count %ld: %s", v256, 0x16u);
          sub_100007BAC(v257);

          v79 = v483;
          v251 = v471;
          goto LABEL_57;
        }

        result = sub_100C45F88(v480);
        LODWORD(v261) = HIDWORD(v258) - v258;
        if (!__OFSUB__(HIDWORD(v258), v258))
        {
          v261 = v261;
          goto LABEL_54;
        }

LABEL_107:
        __break(1u);
        goto LABEL_108;
      }

      if (v260 != 2)
      {
        sub_100C45F88(v480);
        v261 = 0;
        goto LABEL_56;
      }

      v262 = *(v258 + 16);
      v263 = *(v258 + 24);
      result = sub_100C45F88(v480);
      v261 = v263 - v262;
      if (!__OFSUB__(v263, v262))
      {
        v253 = v480;
LABEL_54:
        v250 = v474;
        goto LABEL_56;
      }

LABEL_106:
      __break(1u);
      goto LABEL_107;
    }

    result = swift_slowAlloc();
    *result = 134217984;
    v229 = v71[14];
    v230 = v71[15];
    v231 = v230 >> 62;
    if ((v230 >> 62) > 1)
    {
      if (v231 != 2)
      {
        v229 = 0;
        goto LABEL_37;
      }

      v234 = v229 + 16;
      v232 = *(v229 + 16);
      v233 = *(v234 + 8);
      v235 = __OFSUB__(v233, v232);
      v229 = v233 - v232;
      if (!v235)
      {
        goto LABEL_37;
      }

      __break(1u);
    }

    else if (!v231)
    {
      v229 = BYTE6(v230);
LABEL_37:
      *(result + 4) = v229;
      v236 = result;
      sub_100C45F88(v39);
      _os_log_impl(&_mh_execute_header, v226, v227, "attestation (S1) count: %ld", v236, 0xCu);

      v79 = v483;
      goto LABEL_38;
    }

    v235 = __OFSUB__(HIDWORD(v229), v229);
    LODWORD(v229) = HIDWORD(v229) - v229;
    if (v235)
    {
      __break(1u);
      goto LABEL_106;
    }

    v229 = v229;
    goto LABEL_37;
  }

  v29 = *(v0 + 9664);
  v30 = *(v0 + 9656);
  v31 = *(v0 + 9576);
  v32 = *(v0 + 9568);
  v33 = *(v0 + 9528);
  v464 = *(v0 + 9520);
  v34 = *(v0 + 9512);
  v35 = *(v0 + 9504);
  v36 = *(v0 + 9496);
  v37 = *(v0 + 9488);
  v38 = *(v0 + 9480);
  v468 = *(v483 + 9360);
  v473 = *(v483 + 9552);
  v479 = *(v483 + 9336);
  sub_1001DAB9C(v483 + 8624);
  sub_100006654(v38, v37);
  sub_100006654(v36, v35);

  sub_1001DAB9C(v483 + 8624);
  sub_100016590(v30, v29);
  v0 = v483;
  sub_100016590(v32, v31);
  sub_100006654(v34, v464);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_100C46118(v479, type metadata accessor for AccessoryProductInfo);
LABEL_90:
  v348 = *(v0 + 9336);
  v349 = *(v0 + 9312);
  v350 = *(v0 + 9304);
  v351 = *(v0 + 9296);
  v352 = *(v0 + 9272);
  v353 = *(v0 + 9248);
  v354 = *(v0 + 9224);

  v355 = *(v0 + 8);
LABEL_91:

  return v355();
}

uint64_t sub_100C39CE0()
{
  v1 = v0[1169];
  v2 = v0[1167];
  v3 = v0[1164];
  v4 = v0[1163];
  v5 = v0[1162];
  v6 = v0[1159];
  v7 = v0[1156];
  v8 = v0[1153];

  v9 = v0[1];

  return v9();
}

uint64_t sub_100C39DA4()
{
  v1 = v0[1191];
  v2 = v0[1190];
  v3 = v0[1189];
  v4 = v0[1188];
  v5 = v0[1187];
  v6 = v0[1186];
  v7 = v0[1185];
  v8 = v0[1170];
  v9 = v0[1167];
  swift_unknownObjectRelease();
  sub_100006654(v7, v6);
  sub_100006654(v5, v4);

  sub_1001DAB9C((v0 + 1078));
  sub_100006654(v3, v2);
  sub_100C46118(v9, type metadata accessor for AccessoryProductInfo);
  v10 = v0[1195];
  v11 = v0[1167];
  v12 = v0[1164];
  v13 = v0[1163];
  v14 = v0[1162];
  v15 = v0[1159];
  v16 = v0[1156];
  v17 = v0[1153];

  v18 = v0[1];

  return v18();
}

uint64_t sub_100C39EEC()
{
  v1 = v0[1196];
  v2 = v0[1194];
  v3 = v0[1191];
  v4 = v0[1190];
  v5 = v0[1189];
  v6 = v0[1188];
  v7 = v0[1187];
  v8 = v0[1186];
  v9 = v0[1185];
  v10 = v0[1170];
  v21 = v0[1197];
  v22 = v0[1167];
  swift_unknownObjectRelease();
  sub_100006654(v9, v8);
  sub_100006654(v7, v6);

  sub_1001DAB9C((v0 + 1078));
  sub_100016590(v1, v21);
  sub_100006654(v5, v4);
  swift_unknownObjectRelease();
  sub_100C46118(v22, type metadata accessor for AccessoryProductInfo);
  v11 = v0[1201];
  v12 = v0[1167];
  v13 = v0[1164];
  v14 = v0[1163];
  v15 = v0[1162];
  v16 = v0[1159];
  v17 = v0[1156];
  v18 = v0[1153];

  v19 = v0[1];

  return v19();
}

uint64_t sub_100C3A058()
{
  v1 = v0[1197];
  v2 = v0[1196];
  v3 = v0[1194];
  v4 = v0[1191];
  v5 = v0[1190];
  v6 = v0[1189];
  v7 = v0[1188];
  v8 = v0[1187];
  v9 = v0[1170];
  v20 = v0[1167];
  sub_100006654(v0[1185], v0[1186]);
  sub_100006654(v8, v7);

  sub_1001DAB9C((v0 + 1078));
  sub_100016590(v2, v1);
  sub_100006654(v6, v5);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_100C46118(v20, type metadata accessor for AccessoryProductInfo);
  v10 = v0[1205];
  v11 = v0[1167];
  v12 = v0[1164];
  v13 = v0[1163];
  v14 = v0[1162];
  v15 = v0[1159];
  v16 = v0[1156];
  v17 = v0[1153];

  v18 = v0[1];

  return v18();
}

uint64_t sub_100C3A1C0()
{
  v1 = v0[1197];
  v2 = v0[1196];
  v3 = v0[1194];
  v4 = v0[1191];
  v5 = v0[1190];
  v6 = v0[1189];
  v7 = v0[1188];
  v8 = v0[1187];
  v9 = v0[1170];
  v20 = v0[1167];
  sub_100006654(v0[1185], v0[1186]);
  sub_100006654(v8, v7);

  sub_1001DAB9C((v0 + 1078));
  sub_100016590(v2, v1);
  sub_100006654(v6, v5);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_100C46118(v20, type metadata accessor for AccessoryProductInfo);
  v10 = v0[1209];
  v11 = v0[1167];
  v12 = v0[1164];
  v13 = v0[1163];
  v14 = v0[1162];
  v15 = v0[1159];
  v16 = v0[1156];
  v17 = v0[1153];

  v18 = v0[1];

  return v18();
}

void *sub_100C3A328(void *a1, uint64_t a2, unint64_t a3)
{
  v7 = type metadata accessor for HashAlgorithm();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 >> 60 == 15)
  {
    sub_100C45B4C();
    swift_allocError();
    *v13 = 15;
    swift_willThrow();
  }

  else
  {
    v27 = v10;
    sub_100017D5C(a2, a3);
    v14 = sub_100A743A8(a2, a3);
    if (v3)
    {

      sub_100C45B4C();
      swift_allocError();
      *v16 = 12;
      swift_willThrow();
      sub_100006654(a2, a3);
    }

    else
    {
      v17 = v14;
      v18 = v15;
      sub_100017D5C(v14, v15);
      v25 = v18;
      sub_100496024(v17, v18, v26);
      v20 = v26[0];
      v23 = v26[1];
      v24 = v26[0];
      a1[3] = &type metadata for CollaborativeKeyGen.v2.C2;
      a1[4] = sub_1001023F4();
      *a1 = v20;
      v21 = v23;
      a1[1] = v23;
      (*(v8 + 104))(v12, enum case for HashAlgorithm.sha256(_:), v27);
      sub_100017D5C(v24, v21);
      a1 = Data.hash(algorithm:)();
      sub_100006654(a2, a3);
      sub_100016590(v24, v23);
      sub_100016590(v17, v25);
      (*(v8 + 8))(v12, v27);
    }
  }

  return a1;
}

uint64_t sub_100C3A5DC()
{
  v1[1033] = v0;
  v2 = sub_1000BC4D4(&qword_1016973C8, &qword_1013B6210);
  v1[1034] = v2;
  v3 = *(v2 - 8);
  v1[1035] = v3;
  v4 = *(v3 + 64) + 15;
  v1[1036] = swift_task_alloc();
  v5 = sub_1000BC4D4(&qword_101697240, &unk_10138BDA0);
  v1[1037] = v5;
  v6 = *(v5 - 8);
  v1[1038] = v6;
  v7 = *(v6 + 64) + 15;
  v1[1039] = swift_task_alloc();
  v8 = type metadata accessor for String.Encoding();
  v1[1040] = v8;
  v9 = *(v8 - 8);
  v1[1041] = v9;
  v10 = *(v9 + 64) + 15;
  v1[1042] = swift_task_alloc();
  v11 = *(*(sub_1000BC4D4(&qword_101697268, &qword_101394FE0) - 8) + 64) + 15;
  v1[1043] = swift_task_alloc();
  v12 = *(*(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8) + 64) + 15;
  v1[1044] = swift_task_alloc();
  v13 = *(*(sub_1000BC4D4(&qword_1016B0728, &qword_1013CDFE0) - 8) + 64) + 15;
  v1[1045] = swift_task_alloc();
  v14 = type metadata accessor for AirPodsLEPairingLockCheckResponse();
  v1[1046] = v14;
  v15 = *(v14 - 8);
  v1[1047] = v15;
  v16 = *(v15 + 64) + 15;
  v1[1048] = swift_task_alloc();
  v17 = type metadata accessor for PairingExecutorState();
  v1[1049] = v17;
  v18 = *(v17 - 8);
  v1[1050] = v18;
  v19 = *(v18 + 64) + 15;
  v1[1051] = swift_task_alloc();

  return _swift_task_switch(sub_100C3A8F8, v0, 0);
}

uint64_t sub_100C3A8F8()
{
  v1 = *(v0 + 8264);
  v2 = OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_pairingCheckData;
  memcpy((v0 + 368), (v1 + OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_pairingCheckData), 0x160uLL);
  memcpy((v0 + 1072), (v1 + v2), 0x160uLL);
  if (sub_100101D88(v0 + 1072) == 1)
  {
    sub_100C45B4C();
    swift_allocError();
    *v3 = 17;
    swift_willThrow();
    v4 = *(v0 + 8408);
    v5 = *(v0 + 8384);
    v6 = *(v0 + 8360);
    v7 = *(v0 + 8352);
    v8 = *(v0 + 8344);
    v9 = *(v0 + 8336);
    v10 = *(v0 + 8312);
    v11 = *(v0 + 8288);

    v12 = *(v0 + 8);

    return v12();
  }

  else
  {
    v14 = *(v0 + 8408);
    v15 = *(v0 + 8400);
    v16 = *(v0 + 8392);
    v17 = *(v0 + 8264);
    memcpy((v0 + 720), (v0 + 1072), 0x160uLL);
    v18 = enum case for PairingExecutorState.PairingLockCheck.requestStart(_:);
    v19 = type metadata accessor for PairingExecutorState.PairingLockCheck();
    *(v0 + 8416) = v19;
    v20 = *(v19 - 8);
    v21 = *(v20 + 104);
    *(v0 + 8424) = v21;
    *(v0 + 8432) = (v20 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v21(v14, v18, v19);
    v22 = *(v20 + 56);
    *(v0 + 8440) = v22;
    *(v0 + 8448) = (v20 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v22(v14, 0, 1, v19);
    *(v0 + 3380) = enum case for PairingExecutorState.pairingLockCheck(_:);
    v23 = *(v15 + 104);
    *(v0 + 8456) = v23;
    *(v0 + 8464) = (v15 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v23(v14);
    memcpy((v0 + 1776), (v0 + 368), 0x160uLL);
    sub_100165278(v0 + 1776, v0 + 2128);
    *(v0 + 8472) = type metadata accessor for ProximityPairingExecutor();
    *(v0 + 8480) = sub_100C4600C(&qword_1016B75C0, type metadata accessor for ProximityPairingExecutor);
    PairingExecutor.setState(_:)();
    v24 = *(v15 + 8);
    *(v0 + 8488) = v24;
    *(v0 + 8496) = (v15 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v24(v14, v16);
    v25 = v17 + OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_validator;
    v27 = *(v17 + OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_validator);
    v26 = *(v25 + 8);
    ObjectType = swift_getObjectType();
    *(v0 + 8112) = &type metadata for AirPodsLEPairingCheckData;
    *(v0 + 8120) = sub_1001641BC();
    v29 = swift_allocObject();
    *(v0 + 8088) = v29;
    memcpy((v29 + 16), (v0 + 720), 0x160uLL);
    memcpy((v0 + 1424), (v0 + 368), 0x160uLL);
    sub_100165278(v0 + 1424, v0 + 16);
    v30 = async function pointer to dispatch thunk of PairingValidator.validateRequest(_:)[1];
    v31 = swift_task_alloc();
    *(v0 + 8504) = v31;
    *v31 = v0;
    v31[1] = sub_100C3AD20;

    return dispatch thunk of PairingValidator.validateRequest(_:)(v0 + 8048, v0 + 8088, ObjectType, v26);
  }
}

uint64_t sub_100C3AD20()
{
  v2 = *v1;
  v3 = *(*v1 + 8504);
  v8 = *v1;
  *(*v1 + 8512) = v0;

  if (v0)
  {
    v4 = *(v2 + 8264);
    v5 = sub_100C3EB6C;
  }

  else
  {
    v6 = *(v2 + 8264);
    sub_100007BAC((v2 + 8088));
    v5 = sub_100C3AE98;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100C3AE98()
{
  v261 = v0;
  v1 = v0;
  v2 = *(v0 + 8376);
  v3 = *(v0 + 8368);
  v4 = *(v0 + 8360);
  sub_1000BC4D4(&qword_1016B0730, &unk_1013DE2E0);
  v5 = swift_dynamicCast();
  v6 = *(v2 + 56);
  if (!v5)
  {
    v46 = *(v0 + 8360);
    v6(v46, 1, 1, *(v0 + 8368));
    sub_10000B3A8(v46, &qword_1016B0728, &qword_1013CDFE0);
    sub_100C45B4C();
    swift_allocError();
    *v47 = 2;
    swift_willThrow();
    sub_10000B3A8(v0 + 368, &qword_1016993B0, &unk_1013E1330);
LABEL_13:
    v54 = *(v1 + 8408);
    v55 = *(v1 + 8384);
    v56 = *(v1 + 8360);
    v57 = *(v1 + 8352);
    v58 = *(v1 + 8344);
    v59 = *(v1 + 8336);
    v60 = *(v1 + 8312);
    v61 = *(v1 + 8288);

    v62 = *(v1 + 8);

    return v62();
  }

  v254 = *(v0 + 8488);
  v256 = *(v0 + 8496);
  v246 = *(v0 + 8472);
  v249 = *(v0 + 8480);
  v243 = *(v0 + 8464);
  v240 = *(v0 + 8456);
  v236 = *(v0 + 3380);
  v228 = *(v0 + 8440);
  v232 = *(v0 + 8448);
  v7 = *(v0 + 8432);
  v8 = *(v0 + 8424);
  v9 = *(v0 + 8416);
  v258 = v0;
  v10 = *(v0 + 8408);
  v11 = *(v0 + 8392);
  v12 = *(v0 + 8384);
  v13 = *(v0 + 8368);
  v14 = *(v0 + 8360);
  v252 = *(v0 + 8352);
  v15 = *(v0 + 8264);
  v6(v14, 0, 1, v13);
  sub_10002AD14(v14, v12, type metadata accessor for AirPodsLEPairingLockCheckResponse);
  v8(v10, enum case for PairingExecutorState.PairingLockCheck.requestFinish(_:), v9);
  v228(v10, 0, 1, v9);
  v240(v10, v236, v11);
  PairingExecutor.setState(_:)();
  v254(v10, v11);
  v255 = *(v12 + 72);
  v257 = *(v12 + 64);
  v16 = OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_pairingInfo;
  *(v258 + 8520) = OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_pairingInfo;
  v17 = (v12 + *(v13 + 52));
  v18 = *v17;
  v19 = v17[1];
  v20 = (*(v15 + v16) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_pairingSessionToken);
  v21 = *v20;
  v22 = v20[1];
  *v20 = v18;
  v20[1] = v19;

  sub_10002E98C(v18, v19);
  v23 = v22;
  v1 = v258;
  sub_100006654(v21, v23);

  v24 = *(v15 + v16);
  v25 = *(v13 + 36);
  v26 = type metadata accessor for UUID();
  v27 = *(v26 - 8);
  (*(v27 + 16))(v252, v12 + v25, v26);
  (*(v27 + 56))(v252, 0, 1, v26);
  v28 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_fmnaId;
  swift_beginAccess();

  sub_10002311C(v252, v24 + v28, &qword_1016980D0, &unk_10138F3B0);
  swift_endAccess();

  v29 = *(v15 + v16);
  v30 = *(v29 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_serialNumber + 8);
  v31 = *(v29 + 128);
  *(v29 + 120) = *(v29 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_serialNumber);
  *(v29 + 128) = v30;

  if (qword_101694DA0 != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  *(v258 + 8528) = sub_1000076D4(v32, qword_1016B8F00);
  sub_100017D5C(v257, v255);
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();
  sub_100016590(v257, v255);
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v259 = v36;
    *v35 = 136315138;
    v37 = Data.hexString.getter();
    v39 = sub_1000136BC(v37, v38, &v259);

    *(v35 + 4) = v39;
    v1 = v258;
    _os_log_impl(&_mh_execute_header, v33, v34, "S3: %s", v35, 0xCu);
    sub_100007BAC(v36);
  }

  v40 = *(v1 + 8344);
  v41 = *(v15 + v16);
  v42 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_productInfo;
  swift_beginAccess();
  sub_1000D2A70(v41 + v42, v40, &qword_101697268, &qword_101394FE0);
  v43 = type metadata accessor for AccessoryProductInfo();
  v44 = (*(*(v43 - 8) + 48))(v40, 1, v43);
  v45 = *(v1 + 8344);
  if (v44)
  {
    sub_10000B3A8(v45, &qword_101697268, &qword_101394FE0);
LABEL_10:
    v52 = *(v1 + 8384);
    sub_100C45B4C();
    swift_allocError();
    *v53 = 10;
    swift_willThrow();
LABEL_11:
    sub_10000B3A8(v1 + 368, &qword_1016993B0, &unk_1013E1330);
LABEL_12:
    sub_100C46118(v52, type metadata accessor for AirPodsLEPairingLockCheckResponse);
    goto LABEL_13;
  }

  v247 = v16;
  v250 = v15;
  v48 = (v45 + *(v43 + 100));
  v49 = *v48;
  *(v1 + 8536) = *v48;
  v50 = v48[1];
  *(v1 + 8544) = v50;
  v51 = v45;
  sub_10002E98C(v49, v50);
  sub_10000B3A8(v51, &qword_101697268, &qword_101394FE0);
  if (v50 >> 60 == 15)
  {
    goto LABEL_10;
  }

  sub_100017D5C(v49, v50);
  v64 = Logger.logObject.getter();
  v65 = static os_log_type_t.default.getter();
  sub_100006654(v49, v50);
  v244 = v50;
  v241 = v49;
  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v259 = v67;
    *v66 = 136315138;
    v68 = Data.hexString.getter();
    v70 = sub_1000136BC(v68, v69, &v259);
    v1 = v258;

    *(v66 + 4) = v70;
    _os_log_impl(&_mh_execute_header, v64, v65, "publicKeyData: %s", v66, 0xCu);
    sub_100007BAC(v67);
  }

  v71 = *(v1 + 8496);
  v233 = *(v1 + 8480);
  v237 = *(v1 + 8488);
  v229 = *(v1 + 8472);
  v72 = *(v1 + 8464);
  v73 = *(v1 + 8456);
  v74 = *(v1 + 3380);
  v75 = *(v1 + 8448);
  v76 = *(v1 + 8440);
  v77 = *(v1 + 8432);
  v78 = *(v1 + 8424);
  v79 = *(v1 + 8416);
  v80 = *(v1 + 8408);
  v81 = v1;
  v82 = *(v1 + 8392);
  v83 = *(v81 + 8264);
  v78(v80, enum case for PairingExecutorState.PairingLockCheck.signatureVerificationStart(_:), v79);
  v76(v80, 0, 1, v79);
  v73(v80, v74, v82);
  PairingExecutor.setState(_:)();
  v237(v80, v82);
  v84 = Logger.logObject.getter();
  v85 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v84, v85))
  {
    v86 = swift_slowAlloc();
    v87 = swift_slowAlloc();
    v259 = v87;
    *v86 = 141558275;
    *(v86 + 4) = 1752392040;
    *(v86 + 12) = 2081;
    *(v86 + 14) = sub_1000136BC(0xD000000000000011, 0x800000010134C6F0, &v259);
    _os_log_impl(&_mh_execute_header, v84, v85, "authSuffix: %{private,mask.hash}s", v86, 0x16u);
    sub_100007BAC(v87);
  }

  v88 = *(v258 + 8512);
  v89 = *(v258 + 8384);
  memcpy((v258 + 2832), (v258 + 368), 0x160uLL);
  sub_100165278(v258 + 2832, v258 + 2480);
  v90 = sub_100939A24((v258 + 720), v89);
  v92 = v91;
  sub_10000B3A8(v258 + 368, &qword_1016993B0, &unk_1013E1330);
  v93 = String.utf8Data.getter();
  v95 = v94;
  v259 = v90;
  v260 = v92;
  *(v258 + 8032) = &type metadata for Data;
  *(v258 + 8040) = &protocol witness table for Data;
  *(v258 + 8008) = v93;
  *(v258 + 8016) = v94;
  v96 = sub_1000035D0((v258 + 8008), &type metadata for Data);
  v97 = *v96;
  v98 = v96[1];
  sub_100017D5C(v90, v92);
  sub_100017D5C(v93, v95);
  sub_100017DB0(v97, v98);
  sub_100016590(v93, v95);
  sub_100016590(v90, v92);
  sub_100007BAC((v258 + 8008));
  v99 = v259;
  v100 = v260;
  *(v258 + 8552) = v259;
  *(v258 + 8560) = v100;
  sub_100017D5C(v99, v100);
  v101 = Logger.logObject.getter();
  v102 = static os_log_type_t.debug.getter();
  sub_100016590(v99, v100);
  if (os_log_type_enabled(v101, v102))
  {
    v103 = swift_slowAlloc();
    v104 = swift_slowAlloc();
    v259 = v104;
    *v103 = 136315138;
    v105 = Data.hexString.getter();
    v107 = v100;
    v108 = sub_1000136BC(v105, v106, &v259);

    *(v103 + 4) = v108;
    v100 = v107;
    _os_log_impl(&_mh_execute_header, v101, v102, "dataForSignatureVerification: %s", v103, 0xCu);
    sub_100007BAC(v104);
  }

  sub_100A74FAC(v241, v244, v99, v100, v257, v255, kSecKeyAlgorithmECDSASignatureMessageX962SHA256);
  v1 = v258;
  if (v88)
  {
    v52 = *(v258 + 8384);
    sub_100016590(v99, v100);
    sub_100006654(v241, v244);
    goto LABEL_11;
  }

  v224 = v100;
  v226 = v99;
  v109 = *(v258 + 8496);
  v234 = *(v258 + 8480);
  v238 = *(v258 + 8488);
  v230 = *(v258 + 8472);
  v110 = *(v258 + 8464);
  v111 = *(v258 + 8456);
  v112 = *(v258 + 3380);
  v113 = *(v258 + 8448);
  v114 = *(v258 + 8440);
  v115 = *(v258 + 8432);
  v116 = *(v258 + 8416);
  v117 = *(v258 + 8408);
  v118 = *(v258 + 8392);
  v119 = *(v258 + 8264);
  (*(v258 + 8424))(v117, enum case for PairingExecutorState.PairingLockCheck.signatureVerificationFinish(_:), v116);
  v114(v117, 0, 1, v116);
  v111(v117, v112, v118);
  PairingExecutor.setState(_:)();
  v238(v117, v118);
  v120 = Logger.logObject.getter();
  v121 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v120, v121))
  {
    v122 = swift_slowAlloc();
    *v122 = 0;
    _os_log_impl(&_mh_execute_header, v120, v121, "Signature S3 verified!", v122, 2u);
  }

  v123 = *(v258 + 8384);
  v124 = *(v258 + 8368);

  v125 = *(v124 + 48);
  v126 = (v123 + *(v124 + 44));
  v127 = *v126;
  v128 = v126[1];
  v130 = *(v123 + v125);
  v129 = *(v123 + v125 + 8);
  *(v258 + 8248) = *v126;
  *(v258 + 8256) = v128;
  sub_100017D5C(v127, v128);
  Data.append(_:)();
  sub_100017D5C(v127, v128);
  sub_100017D5C(v130, v129);
  v131 = Logger.logObject.getter();
  v132 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v131, v132))
  {
    sub_100016590(v130, v129);
    sub_100016590(v127, v128);
    v136 = v250;
    goto LABEL_49;
  }

  v133 = swift_slowAlloc();
  v134 = v133;
  *v133 = 134218240;
  v135 = v128 >> 62;
  v136 = v250;
  if ((v128 >> 62) <= 1)
  {
    if (!v135)
    {
      v137 = BYTE6(v128);
      goto LABEL_38;
    }

    goto LABEL_35;
  }

  if (v135 != 2)
  {
    v137 = 0;
    goto LABEL_38;
  }

  v139 = *(v127 + 16);
  v138 = *(v127 + 24);
  v140 = __OFSUB__(v138, v139);
  v137 = v138 - v139;
  if (v140)
  {
    __break(1u);
LABEL_35:
    LODWORD(v137) = HIDWORD(v127) - v127;
    if (__OFSUB__(HIDWORD(v127), v127))
    {
      __break(1u);
      goto LABEL_66;
    }

    v137 = v137;
  }

LABEL_38:
  *(v133 + 4) = v137;
  sub_100016590(v127, v128);
  *(v134 + 12) = 2048;
  v141 = v129 >> 62;
  if ((v129 >> 62) > 1)
  {
    if (v141 != 2)
    {
      v142 = 0;
      goto LABEL_48;
    }

    v144 = *(v130 + 16);
    v143 = *(v130 + 24);
    v140 = __OFSUB__(v143, v144);
    v142 = v143 - v144;
    if (!v140)
    {
      goto LABEL_48;
    }

    __break(1u);
LABEL_45:
    LODWORD(v142) = HIDWORD(v130) - v130;
    if (!__OFSUB__(HIDWORD(v130), v130))
    {
      v142 = v142;
      goto LABEL_48;
    }

LABEL_66:
    __break(1u);
  }

  if (v141)
  {
    goto LABEL_45;
  }

  v142 = BYTE6(v129);
LABEL_48:
  *(v134 + 14) = v142;
  sub_100016590(v130, v129);
  _os_log_impl(&_mh_execute_header, v131, v132, "baaLeafCert count = %ld, baaIntermediateCert count = %ld", v134, 0x16u);

LABEL_49:
  v239 = *(v258 + 8264);

  v145 = (*(v136 + v247) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_baaAccLeafCert);
  v146 = v136;
  v147 = *v145;
  v148 = v145[1];
  *v145 = v127;
  v145[1] = v128;
  v231 = v128;
  v235 = v127;
  sub_100017D5C(v127, v128);

  sub_100006654(v147, v148);

  v149 = (*(v146 + v247) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_baaAccIntCA1);
  v150 = *v149;
  v151 = v149[1];
  *v149 = v130;
  v149[1] = v129;
  v222 = v129;
  v223 = v130;
  sub_100017D5C(v130, v129);

  sub_100006654(v150, v151);

  v152 = *(v258 + 8248);
  v153 = *(v258 + 8256);
  v154 = (*(v146 + v247) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_baaCerts);
  v155 = *v154;
  v156 = v154[1];
  *v154 = v152;
  v154[1] = v153;

  sub_100017D5C(v152, v153);
  sub_100006654(v155, v156);

  v157 = v239 + OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_service;
  v158 = *(v239 + OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_service);
  *(v258 + 8568) = v158;
  v159 = *(v258 + 8384);
  if (!v158)
  {
    sub_100C45B4C();
    swift_allocError();
    *v210 = 3;
    swift_willThrow();
    sub_100016590(v226, v224);
    sub_100006654(v241, v244);
    sub_10000B3A8(v258 + 368, &qword_1016993B0, &unk_1013E1330);
    sub_100016590(*(v258 + 8248), *(v258 + 8256));
    sub_100C46118(v159, type metadata accessor for AirPodsLEPairingLockCheckResponse);
    v1 = v258;
    goto LABEL_13;
  }

  v160 = *(v258 + 8368);
  v161 = *(v157 + 8);
  *(v258 + 8576) = v161;
  v162 = (v159 + *(v160 + 40));
  if (!v162[1])
  {
    swift_unknownObjectRetain();
    v1 = v258;
    goto LABEL_60;
  }

  v221 = v161;
  v163 = *(v258 + 8336);
  v164 = *(v258 + 8328);
  v165 = *(v258 + 8320);
  v166 = *v162;
  swift_unknownObjectRetain();
  static String.Encoding.utf8.getter();
  v167 = String.data(using:allowLossyConversion:)();
  v169 = v168;
  *(v258 + 8584) = v167;
  *(v258 + 8592) = v168;
  (*(v164 + 8))(v163, v165);
  v1 = v258;
  if (v169 >> 60 == 15)
  {
LABEL_60:
    v211 = Logger.logObject.getter();
    v212 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v211, v212))
    {
      v213 = swift_slowAlloc();
      *v213 = 0;
      _os_log_impl(&_mh_execute_header, v211, v212, "Unable to decode masked apple ID", v213, 2u);
    }

    v52 = *(v1 + 8384);

    sub_100C45B4C();
    swift_allocError();
    *v214 = 8;
    swift_willThrow();
    swift_unknownObjectRelease();
    sub_100016590(v226, v224);
    v215 = v241;
    v216 = v244;
    goto LABEL_63;
  }

  v220 = v167;
  v170 = *(v258 + 8384);
  v171 = *(v170 + 48);
  v172 = *(v170 + 56);
  v173 = *(v250 + v247);
  v174 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_collaborativeKeyC2;
  swift_beginAccess();
  sub_1000D2A70(v173 + v174, v258 + 7928, &qword_101697378, &unk_101391940);
  v175 = *(v258 + 7952);
  if (!v175)
  {
    v52 = *(v258 + 8384);
    sub_10000B3A8(v258 + 7928, &qword_101697378, &unk_101391940);
    sub_100C45B4C();
    swift_allocError();
    *v217 = 8;
    swift_willThrow();
    swift_unknownObjectRelease();
    sub_100006654(v220, v169);
    sub_100016590(v226, v224);
    v215 = v241;
    v216 = v244;
LABEL_63:
    sub_100006654(v215, v216);
    sub_10000B3A8(v1 + 368, &qword_1016993B0, &unk_1013E1330);
    sub_100016590(*(v1 + 8248), *(v1 + 8256));
    goto LABEL_12;
  }

  v242 = v172;
  v245 = (v258 + 6776);
  v248 = v169;
  v176 = *(v258 + 7960);
  v177 = sub_1000035D0((v258 + 7928), v175);
  v178 = *(v175 - 8);
  v179 = *(v178 + 64) + 15;
  v180 = swift_task_alloc();
  (*(v178 + 16))(v180, v177, v175);
  sub_10000B3A8(v258 + 7928, &qword_101697378, &unk_101391940);
  v181 = (*(*(*(v176 + 8) + 8) + 40))(v175);
  v225 = v182;
  v227 = v181;
  *(v258 + 8600) = v181;
  *(v258 + 8608) = v182;
  (*(v178 + 8))(v180, v175);

  v259 = sub_100268BBC(8uLL);
  LODWORD(v260) = v183;
  BYTE6(v260) = v184;
  WORD2(v260) = v185;
  bzero(&v259, v184);
  v219 = v259;
  v186 = v260 | ((WORD2(v260) | (BYTE6(v260) << 16)) << 32);
  v187 = type metadata accessor for __DataStorage();
  v188 = *(v187 + 48);
  v189 = *(v187 + 52);
  swift_allocObject();
  v190 = __DataStorage.init(length:)();
  v259 = 0x1800000000;
  v260 = v190;
  sub_1007765FC(&v259, 0);
  v218 = v259;
  v251 = v260;
  *(v258 + 8616) = v260;
  sub_100017D5C(v257, v255);
  v191 = Logger.logObject.getter();
  v192 = static os_log_type_t.default.getter();
  sub_100016590(v257, v255);
  v193 = v171;
  if (os_log_type_enabled(v191, v192))
  {
    v194 = swift_slowAlloc();
    v195 = v186;
    v196 = swift_slowAlloc();
    v259 = v196;
    *v194 = 136315138;
    v197 = Data.hexString.getter();
    v199 = sub_1000136BC(v197, v198, &v259);

    *(v194 + 4) = v199;
    _os_log_impl(&_mh_execute_header, v191, v192, "S3: %s", v194, 0xCu);
    sub_100007BAC(v196);
    v186 = v195;
  }

  v253 = *(v258 + 8312);
  sub_100017D5C(v257, v255);
  sub_100017D5C(v235, v231);
  sub_100017D5C(v223, v222);
  sub_100017D5C(v227, v225);
  sub_100017D5C(v193, v242);
  sub_10002E98C(v220, v248);

  sub_100BB1530(v227, v225, v193, v242, v220, v248, v257, v255, v245, v235, v231, v223, v222, v219, v186 & 0xFFFFFFFFFFFFFFLL, v218, v251 | 0x4000000000000000);
  v200 = *(v258 + 6920);
  *(v258 + 5112) = *(v258 + 6904);
  *(v258 + 5128) = v200;
  v201 = *(v258 + 6952);
  *(v258 + 5144) = *(v258 + 6936);
  *(v258 + 5160) = v201;
  v202 = *(v258 + 6856);
  *(v258 + 5048) = *(v258 + 6840);
  *(v258 + 5064) = v202;
  v203 = *(v258 + 6888);
  *(v258 + 5080) = *(v258 + 6872);
  *(v258 + 5096) = v203;
  v204 = *(v258 + 6792);
  *(v258 + 4984) = *v245;
  *(v258 + 5000) = v204;
  v205 = *(v258 + 6824);
  *(v258 + 5016) = *(v258 + 6808);
  *(v258 + 5032) = v205;
  sub_100C46054(v258 + 4984);
  ObjectType = swift_getObjectType();
  *(v258 + 8624) = ObjectType;
  sub_100C46068(v245, v258 + 7352);
  type metadata accessor for Characteristic();
  Identifier.init(stringLiteral:)();
  v207 = async function pointer to dispatch thunk of ServiceProtocol.subscript.getter[1];
  v208 = swift_task_alloc();
  *(v258 + 8632) = v208;
  *v208 = v258;
  v208[1] = sub_100C3C5AC;
  v209 = *(v258 + 8312);

  return dispatch thunk of ServiceProtocol.subscript.getter(v209, ObjectType, v221);
}

uint64_t sub_100C3C5AC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 8632);
  v6 = *v2;
  v4[1080] = a1;
  v4[1081] = v1;

  v7 = v3[1039];
  v8 = v3[1038];
  v9 = v3[1037];
  v10 = v3[1033];
  (*(v8 + 8))(v7, v9);
  if (v1)
  {
    v11 = sub_100C3EC94;
  }

  else
  {
    v11 = sub_100C3C760;
  }

  return _swift_task_switch(v11, v10, 0);
}

uint64_t sub_100C3C760()
{
  v69 = v0;
  v1 = (v0 + 4984);
  v65 = *(v0 + 8496);
  v67 = *(v0 + 8528);
  v61 = *(v0 + 8480);
  v63 = *(v0 + 8488);
  v59 = *(v0 + 8464);
  v60 = *(v0 + 8472);
  v58 = *(v0 + 8456);
  v2 = *(v0 + 3380);
  v3 = *(v0 + 8448);
  v4 = *(v0 + 8440);
  v5 = *(v0 + 8432);
  v6 = *(v0 + 8416);
  v7 = *(v0 + 8408);
  v8 = *(v0 + 8392);
  v9 = *(v0 + 8264);
  (*(v0 + 8424))(v7, enum case for PairingExecutorState.PairingLockCheck.finalizeCommandStart(_:), v6);
  v4(v7, 0, 1, v6);
  v58(v7, v2, v8);
  PairingExecutor.setState(_:)();
  v63(v7, v8);
  sub_100C46068(v0 + 6776, v0 + 7160);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  sub_100C460C4(v0 + 6776);
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 136315138;
    v14 = *(v0 + 5112);
    *(v0 + 3728) = *(v0 + 5128);
    v15 = *(v0 + 5160);
    *(v0 + 3744) = *(v0 + 5144);
    *(v0 + 3760) = v15;
    v16 = *(v0 + 5048);
    *(v0 + 3664) = *(v0 + 5064);
    v17 = *(v0 + 5096);
    *(v0 + 3680) = *(v0 + 5080);
    *(v0 + 3696) = v17;
    *(v0 + 3712) = v14;
    v18 = *v1;
    *(v0 + 3600) = *(v0 + 5000);
    v19 = *(v0 + 5032);
    *(v0 + 3616) = *(v0 + 5016);
    *(v0 + 3632) = v19;
    *(v0 + 3648) = v16;
    v68 = v13;
    *(v0 + 3776) = *(v0 + 5176);
    *(v0 + 3584) = v18;
    sub_100C46068(v0 + 6776, v0 + 6584);
    v20 = String.init<A>(describing:)();
    v22 = sub_1000136BC(v20, v21, &v68);

    *(v12 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v10, v11, "Sending command: %s", v12, 0xCu);
    sub_100007BAC(v13);
  }

  v23 = *(v0 + 8648);
  v24 = *(v0 + 8264);
  v25 = *(v0 + 5160);
  *(v0 + 5744) = *(v0 + 5144);
  *(v0 + 5760) = v25;
  *(v0 + 5776) = *(v0 + 5176);
  v26 = *(v0 + 5096);
  *(v0 + 5680) = *(v0 + 5080);
  *(v0 + 5696) = v26;
  v27 = *(v0 + 5128);
  *(v0 + 5712) = *(v0 + 5112);
  *(v0 + 5728) = v27;
  v28 = *(v0 + 5032);
  *(v0 + 5616) = *(v0 + 5016);
  *(v0 + 5632) = v28;
  v29 = *(v0 + 5064);
  *(v0 + 5648) = *(v0 + 5048);
  *(v0 + 5664) = v29;
  v30 = *(v0 + 5000);
  *(v0 + 5584) = *v1;
  *(v0 + 5600) = v30;
  sub_100C45E3C();
  *(v0 + 8656) = BinaryEncoder.encode<A>(_:)();
  *(v0 + 8664) = v31;
  if (v23)
  {
    v32 = *(v0 + 8616);
    v33 = *(v0 + 8608);
    v34 = *(v0 + 8600);
    v35 = *(v0 + 8592);
    v36 = *(v0 + 8584);
    v62 = *(v0 + 8568);
    v64 = *(v0 + 8640);
    v37 = *(v0 + 8560);
    v38 = *(v0 + 8552);
    v39 = *(v0 + 8544);
    v40 = *(v0 + 8536);
    v66 = *(v0 + 8384);
    sub_100C460C4(v0 + 6776);
    sub_10000B3A8(v0 + 368, &qword_1016993B0, &unk_1013E1330);
    sub_100006654(v40, v39);
    sub_100016590(v38, v37);
    sub_100016590(v34, v33);
    sub_100006654(v36, v35);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_100016590(*(v0 + 8248), *(v0 + 8256));
    sub_100C46118(v66, type metadata accessor for AirPodsLEPairingLockCheckResponse);
    sub_100C460C4(v0 + 6776);
    v41 = *(v0 + 8408);
    v42 = *(v0 + 8384);
    v43 = *(v0 + 8360);
    v44 = *(v0 + 8352);
    v45 = *(v0 + 8344);
    v46 = *(v0 + 8336);
    v47 = *(v0 + 8312);
    v48 = *(v0 + 8288);

    v49 = *(v0 + 8);

    return v49();
  }

  else
  {
    v51 = *(v0 + 8624);
    v52 = *(v0 + 8576);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    *(v0 + 8672) = AssociatedTypeWitness;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    *(v0 + 8680) = AssociatedConformanceWitness;
    v55 = async function pointer to dispatch thunk of CharacteristicProtocol.mtu.getter[1];
    v56 = swift_task_alloc();
    *(v0 + 8688) = v56;
    *v56 = v0;
    v56[1] = sub_100C3CCAC;
    v57 = *(v0 + 8640);

    return dispatch thunk of CharacteristicProtocol.mtu.getter(AssociatedTypeWitness, AssociatedConformanceWitness);
  }
}

uint64_t sub_100C3CCAC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 8688);
  v6 = *v2;
  v4[1087] = v1;

  v7 = v4[1033];
  if (v1)
  {
    v8 = sub_100C3EE5C;
  }

  else
  {
    v4[1088] = a1;
    v8 = sub_100C3CE14;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100C3CE14()
{
  v1 = v0;
  v2 = v0[1088];
  v3 = v0[1083];
  v4 = v0[1082];
  v5 = fragment(data:mtu:)();
  v0[1089] = v5;
  v6 = async function pointer to dispatch thunk of CharacteristicProtocol.write(data:)[1];
  v7 = swift_task_alloc();
  v1[1090] = v7;
  *v7 = v1;
  v7[1] = sub_100C3CF08;
  v8 = v1[1085];
  v9 = v1[1084];
  v10 = v1[1080];
  v11 = v1[1036];

  return dispatch thunk of CharacteristicProtocol.write(data:)(v11, v5, v9, v8);
}

uint64_t sub_100C3CF08()
{
  v2 = *v1;
  v3 = *(*v1 + 8720);
  v4 = *v1;
  v2[1091] = v0;

  v5 = v2[1089];
  if (v0)
  {
    v6 = v2[1033];

    return _swift_task_switch(sub_100C3F040, v6, 0);
  }

  else
  {

    v7 = async function pointer to AsyncSequence<>.reassemble()[1];
    v8 = swift_task_alloc();
    v2[1092] = v8;
    v9 = sub_10048E70C();
    *v8 = v4;
    v8[1] = sub_100C3D104;
    v10 = v2[1036];
    v11 = v2[1034];

    return AsyncSequence<>.reassemble()(v11, v9);
  }
}

uint64_t sub_100C3D104(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v6 = *(*v3 + 8736);
  v7 = *v3;
  v5[1093] = a1;
  v5[1094] = a2;
  v5[1095] = v2;

  v8 = v4[1036];
  v9 = v4[1035];
  v10 = v4[1034];
  v11 = v4[1033];
  (*(v9 + 8))(v8, v10);
  if (v2)
  {
    v12 = sub_100C3F224;
  }

  else
  {
    v12 = sub_100C3D2BC;
  }

  return _swift_task_switch(v12, v11, 0);
}

uint64_t sub_100C3D2BC()
{
  v320 = v0;
  v1 = *(v0 + 8528);
  sub_100C46068(v0 + 6776, v0 + 6968);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  sub_100C460C4(v0 + 6776);
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v318[0] = v5;
    *v4 = 136315138;
    v6 = *(v0 + 5160);
    *(v0 + 3944) = *(v0 + 5144);
    *(v0 + 3960) = v6;
    *(v0 + 3976) = *(v0 + 5176);
    v7 = *(v0 + 5096);
    *(v0 + 3880) = *(v0 + 5080);
    *(v0 + 3896) = v7;
    v8 = *(v0 + 5128);
    *(v0 + 3912) = *(v0 + 5112);
    *(v0 + 3928) = v8;
    v9 = *(v0 + 5032);
    *(v0 + 3816) = *(v0 + 5016);
    *(v0 + 3832) = v9;
    v10 = *(v0 + 5064);
    *(v0 + 3848) = *(v0 + 5048);
    *(v0 + 3864) = v10;
    v11 = *(v0 + 5000);
    *(v0 + 3784) = *(v0 + 4984);
    *(v0 + 3800) = v11;
    sub_100C46068(v0 + 6776, v0 + 7544);
    v12 = String.init<A>(describing:)();
    v14 = sub_1000136BC(v12, v13, v318);

    *(v4 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v2, v3, "Sent command: %s", v4, 0xCu);
    sub_100007BAC(v5);
  }

  v307 = *(v0 + 8752);
  v312 = *(v0 + 8760);
  v291 = *(v0 + 8496);
  v299 = *(v0 + 8744);
  v286 = *(v0 + 8488);
  v273 = *(v0 + 8472);
  v281 = *(v0 + 8480);
  v15 = *(v0 + 8464);
  v16 = *(v0 + 8456);
  v17 = *(v0 + 3380);
  v18 = *(v0 + 8448);
  v19 = *(v0 + 8440);
  v20 = *(v0 + 8432);
  v21 = *(v0 + 8416);
  v22 = *(v0 + 8408);
  v23 = *(v0 + 8392);
  v24 = *(v0 + 8264);
  (*(v0 + 8424))(v22, enum case for PairingExecutorState.PairingLockCheck.finalizeCommandFinish(_:), v21);
  v19(v22, 0, 1, v21);
  v16(v22, v17, v23);
  PairingExecutor.setState(_:)();
  v286(v22, v23);
  sub_100C45ED8();
  BinaryDecoder.decode<A>(_:from:)();
  if (v312)
  {
    v274 = *(v0 + 8744);
    v282 = *(v0 + 8752);
    v300 = *(v0 + 8664);
    v308 = *(v0 + 8640);
    v25 = *(v0 + 8616);
    v26 = *(v0 + 8608);
    v27 = *(v0 + 8600);
    v28 = *(v0 + 8592);
    v29 = *(v0 + 8584);
    v287 = *(v0 + 8656);
    v292 = *(v0 + 8568);
    v30 = *(v0 + 8560);
    v31 = *(v0 + 8552);
    v32 = *(v0 + 8544);
    v33 = *(v0 + 8536);
    v313 = *(v0 + 8384);
    sub_10000B3A8(v0 + 368, &qword_1016993B0, &unk_1013E1330);
    sub_100006654(v33, v32);
    sub_100016590(v31, v30);
    sub_100016590(v27, v26);
    sub_100006654(v29, v28);

    sub_100C460C4(v0 + 6776);
    sub_100016590(v274, v282);
    sub_100016590(v287, v300);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_100C460C4(v0 + 6776);
LABEL_17:
    sub_100016590(*(v0 + 8248), *(v0 + 8256));
    v112 = v313;
LABEL_18:
    sub_100C46118(v112, type metadata accessor for AirPodsLEPairingLockCheckResponse);
    v113 = *(v0 + 8408);
    v114 = *(v0 + 8384);
    v115 = *(v0 + 8360);
    v116 = *(v0 + 8352);
    v117 = *(v0 + 8344);
    v118 = *(v0 + 8336);
    v119 = *(v0 + 8312);
    v120 = *(v0 + 8288);

    v121 = *(v0 + 8);
    goto LABEL_19;
  }

  v34 = *(v0 + 8528);
  v35 = (v0 + 6184);
  v36 = (v0 + 3384);
  v37 = *(v0 + 3360);
  *(v0 + 6344) = *(v0 + 3344);
  *(v0 + 6360) = v37;
  *(v0 + 6376) = *(v0 + 3376);
  v38 = *(v0 + 3296);
  *(v0 + 6280) = *(v0 + 3280);
  *(v0 + 6296) = v38;
  v39 = *(v0 + 3328);
  *(v0 + 6312) = *(v0 + 3312);
  *(v0 + 6328) = v39;
  v40 = *(v0 + 3232);
  *(v0 + 6216) = *(v0 + 3216);
  *(v0 + 6232) = v40;
  v41 = *(v0 + 3264);
  *(v0 + 6248) = *(v0 + 3248);
  *(v0 + 6264) = v41;
  v42 = *(v0 + 3200);
  *(v0 + 6184) = *(v0 + 3184);
  *(v0 + 6200) = v42;
  sub_100C45F2C(v0 + 6184, v0 + 6384);
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.default.getter();
  sub_100C45F88(v0 + 6184);
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v318[0] = v46;
    *v45 = 136315138;
    v47 = *(v0 + 6360);
    *(v0 + 4344) = *(v0 + 6344);
    *(v0 + 4360) = v47;
    *(v0 + 4376) = *(v0 + 6376);
    v48 = *(v0 + 6296);
    *(v0 + 4280) = *(v0 + 6280);
    *(v0 + 4296) = v48;
    v49 = *(v0 + 6328);
    *(v0 + 4312) = *(v0 + 6312);
    *(v0 + 4328) = v49;
    v50 = *(v0 + 6232);
    *(v0 + 4216) = *(v0 + 6216);
    *(v0 + 4232) = v50;
    v51 = *(v0 + 6264);
    *(v0 + 4248) = *(v0 + 6248);
    *(v0 + 4264) = v51;
    v52 = *(v0 + 6200);
    *(v0 + 4184) = *v35;
    *(v0 + 4200) = v52;
    sub_100C45F2C(v0 + 6184, v0 + 3984);
    v53 = String.init<A>(describing:)();
    v55 = sub_1000136BC(v53, v54, v318);

    *(v45 + 4) = v55;
    _os_log_impl(&_mh_execute_header, v43, v44, "Received response: %s", v45, 0xCu);
    sub_100007BAC(v46);
  }

  v56 = *(v0 + 6360);
  *(v0 + 3544) = *(v0 + 6344);
  *(v0 + 3560) = v56;
  *(v0 + 3576) = *(v0 + 6376);
  v57 = *(v0 + 6296);
  *(v0 + 3480) = *(v0 + 6280);
  *(v0 + 3496) = v57;
  v58 = *(v0 + 6328);
  *(v0 + 3512) = *(v0 + 6312);
  *(v0 + 3528) = v58;
  v59 = *(v0 + 6232);
  *(v0 + 3416) = *(v0 + 6216);
  *(v0 + 3432) = v59;
  v60 = *(v0 + 6264);
  *(v0 + 3448) = *(v0 + 6248);
  *(v0 + 3464) = v60;
  v61 = *(v0 + 6200);
  *v36 = *v35;
  *(v0 + 3400) = v61;
  v62 = sub_100C45FDC(v0 + 3384);
  v63 = *(v0 + 8528);
  if (v62 != 4)
  {
    sub_100C45F2C(v0 + 6184, v0 + 5984);
    v90 = Logger.logObject.getter();
    v91 = static os_log_type_t.error.getter();
    sub_100C45F88(v0 + 6184);
    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      v318[0] = v93;
      *v92 = 136446210;
      v94 = *(v0 + 6360);
      *(v0 + 5944) = *(v0 + 6344);
      *(v0 + 5960) = v94;
      *(v0 + 5976) = *(v0 + 6376);
      v95 = *(v0 + 6296);
      *(v0 + 5880) = *(v0 + 6280);
      *(v0 + 5896) = v95;
      v96 = *(v0 + 6328);
      *(v0 + 5912) = *(v0 + 6312);
      *(v0 + 5928) = v96;
      v97 = *(v0 + 6232);
      *(v0 + 5816) = *(v0 + 6216);
      *(v0 + 5832) = v97;
      v98 = *(v0 + 6264);
      *(v0 + 5848) = *(v0 + 6248);
      *(v0 + 5864) = v98;
      v99 = *(v0 + 6200);
      *(v0 + 5784) = *v35;
      *(v0 + 5800) = v99;
      sub_100C45F2C(v0 + 6184, v0 + 5384);
      v100 = String.init<A>(describing:)();
      v102 = sub_1000136BC(v100, v101, v318);

      *(v92 + 4) = v102;
      _os_log_impl(&_mh_execute_header, v90, v91, "Invalid sendPairingStatus payload %{public}s", v92, 0xCu);
      sub_100007BAC(v93);
    }

    v103 = *(v0 + 8752);
    v104 = *(v0 + 8744);
    v105 = *(v0 + 8664);
    v106 = *(v0 + 8656);
    v107 = *(v0 + 8640);
    v262 = *(v0 + 8616);
    v293 = *(v0 + 8608);
    v283 = *(v0 + 8600);
    v267 = *(v0 + 8592);
    v257 = *(v0 + 8584);
    v108 = *(v0 + 8568);
    v288 = *(v0 + 8560);
    v275 = *(v0 + 8552);
    v301 = *(v0 + 8536);
    v309 = *(v0 + 8544);
    v313 = *(v0 + 8384);
    sub_100C45B4C();
    swift_allocError();
    *v109 = 8;
    swift_willThrow();
    sub_100016590(v104, v103);
    sub_100016590(v106, v105);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_100C45F88(v0 + 6184);
    sub_100C460C4(v0 + 6776);
    sub_100C460C4(v0 + 6776);

    sub_100006654(v257, v267);
    sub_100016590(v283, v293);
    sub_100016590(v275, v288);
    v110 = v301;
    v111 = v309;
    goto LABEL_16;
  }

  v314 = v0;
  v64 = sub_10001F270(v36);
  v66 = *v64;
  v65 = v64[1];
  v67 = v64[2];
  v68 = v64[3];
  v69 = v64[4];
  v315 = v64[5];
  v70 = *(v0 + 6360);
  *(v0 + 5344) = *(v0 + 6344);
  *(v0 + 5360) = v70;
  *(v0 + 5376) = *(v0 + 6376);
  v71 = *(v0 + 6296);
  *(v0 + 5280) = *(v0 + 6280);
  *(v0 + 5296) = v71;
  v72 = *(v0 + 6328);
  *(v0 + 5312) = *(v0 + 6312);
  *(v0 + 5328) = v72;
  v73 = *(v0 + 6232);
  *(v0 + 5216) = *(v0 + 6216);
  *(v0 + 5232) = v73;
  v74 = *(v0 + 6264);
  *(v0 + 5248) = *(v0 + 6248);
  *(v0 + 5264) = v74;
  v75 = *(v0 + 6200);
  *(v0 + 5184) = *v35;
  *(v0 + 5200) = v75;
  v76 = sub_10001F270(v0 + 5184);
  sub_1000D2A70(v76, v0 + 7824, &qword_1016B91C8, &qword_1013E2490);
  v77 = Logger.logObject.getter();
  v78 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v77, v78))
  {
    v79 = swift_slowAlloc();
    *v79 = 0;
    _os_log_impl(&_mh_execute_header, v77, v78, "Received pairing status.", v79, 2u);
  }

  sub_100017D5C(v67, v68);
  v80 = sub_1008CDF88(v67, v68);
  if (v80)
  {
    v81 = v80;
    v82 = *(v0 + 8528);
    v83 = Logger.logObject.getter();
    v84 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v318[0] = v86;
      *v85 = 136446210;
      v87 = sub_1008CDD10(v81);
      v89 = sub_1000136BC(v87, v88, v318);

      *(v85 + 4) = v89;
      _os_log_impl(&_mh_execute_header, v83, v84, "Pairing failed with status %{public}s", v85, 0xCu);
      sub_100007BAC(v86);
    }

    v123 = *(v0 + 8752);
    v124 = *(v0 + 8744);
    v125 = *(v0 + 8664);
    v126 = *(v0 + 8656);
    v127 = *(v0 + 8640);
    v258 = *(v0 + 8616);
    v289 = *(v0 + 8608);
    v254 = *(v0 + 8584);
    v128 = *(v0 + 8568);
    v276 = *(v0 + 8600);
    v284 = *(v0 + 8560);
    v263 = *(v0 + 8592);
    v268 = *(v0 + 8552);
    v294 = *(v0 + 8536);
    v302 = *(v0 + 8544);
    v310 = *(v0 + 8384);
    sub_100C45B4C();
    swift_allocError();
    *v129 = 9;
    swift_willThrow();
    sub_100016590(v124, v123);
    sub_100016590(v126, v125);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_100C45F88(v35);
    sub_100C45F88(v35);
    sub_100C460C4(v0 + 6776);
    sub_100C460C4(v0 + 6776);

    sub_100006654(v254, v263);
    sub_100016590(v276, v289);
    v130 = v268;
    v131 = v284;
    goto LABEL_24;
  }

  sub_100017D5C(v66, v65);
  sub_10049636C(v66, v65, v318);
  v303 = v69;
  v295 = *(v0 + 8528);
  v132 = *(v0 + 8520);
  v133 = *(v0 + 8264);
  v135 = v318[0];
  v134 = v318[1];
  v136 = *(v133 + v132);
  *(v0 + 7912) = &type metadata for CollaborativeKeyGen.v2.C3;
  *(v0 + 7920) = sub_10010194C();
  *(v0 + 7888) = v135;
  *(v0 + 7896) = v134;
  v137 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_collaborativeKeyC3;
  swift_beginAccess();

  v285 = v135;
  v290 = v134;
  sub_100017D5C(v135, v134);
  sub_10002311C(v0 + 7888, v136 + v137, &qword_101697320, &qword_10138BE90);
  swift_endAccess();

  v138 = (*(v133 + v132) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_status);
  v139 = *v138;
  v140 = v138[1];
  *v138 = v67;
  v138[1] = v68;
  sub_100017D5C(v67, v68);

  sub_100006654(v139, v140);

  v141 = (*(v133 + v132) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_payloadSignatureS4);
  v142 = *v141;
  v143 = v141[1];
  v144 = v315;
  *v141 = v303;
  v141[1] = v315;

  sub_100017D5C(v303, v315);
  sub_100006654(v142, v143);

  v145 = Logger.logObject.getter();
  v146 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v145, v146))
  {
    v148 = swift_slowAlloc();
    v149 = swift_slowAlloc();
    v318[0] = v149;
    *v148 = 136446210;
    v150 = sub_1008CDD10(0);
    v152 = sub_1000136BC(v150, v151, v318);
    v144 = v315;

    *(v148 + 4) = v152;
    _os_log_impl(&_mh_execute_header, v145, v146, "status: %{public}s", v148, 0xCu);
    sub_100007BAC(v149);
  }

  v153 = *(v0 + 8528);
  sub_100C45F2C(v35, v0 + 4584);
  v154 = Logger.logObject.getter();
  v155 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v154, v155))
  {
    sub_100C45F88(v35);
    goto LABEL_40;
  }

  v156 = swift_slowAlloc();
  v157 = swift_slowAlloc();
  v318[0] = v157;
  *v156 = 134218242;
  v158 = v144 >> 62;
  if ((v144 >> 62) > 1)
  {
    if (v158 != 2)
    {
      v159 = 0;
      goto LABEL_39;
    }

    v161 = *(v303 + 16);
    v160 = *(v303 + 24);
    v162 = __OFSUB__(v160, v161);
    v159 = v160 - v161;
    if (!v162)
    {
      goto LABEL_39;
    }

    __break(1u);
LABEL_36:
    LODWORD(v159) = HIDWORD(v303) - v303;
    if (__OFSUB__(HIDWORD(v303), v303))
    {
      __break(1u);
    }

    v159 = v159;
    goto LABEL_39;
  }

  if (v158)
  {
    goto LABEL_36;
  }

  v159 = BYTE6(v144);
LABEL_39:
  *(v156 + 4) = v159;
  sub_100C45F88(v35);
  *(v156 + 12) = 2080;
  v163 = Data.hexString.getter();
  v165 = sub_1000136BC(v163, v164, v318);

  *(v156 + 14) = v165;
  _os_log_impl(&_mh_execute_header, v154, v155, "S4 count %ld: %s", v156, 0x16u);
  sub_100007BAC(v157);

LABEL_40:

  v166 = *(v0 + 8528);
  sub_100C45F2C(v35, v0 + 4384);
  v167 = Logger.logObject.getter();
  v168 = static os_log_type_t.default.getter();
  sub_100C45F88(v35);
  if (os_log_type_enabled(v167, v168))
  {
    v169 = swift_slowAlloc();
    v170 = swift_slowAlloc();
    v318[0] = v170;
    *v169 = 136315138;
    v171 = Data.hexString.getter();
    v173 = sub_1000136BC(v171, v172, v318);

    *(v169 + 4) = v173;
    _os_log_impl(&_mh_execute_header, v167, v168, "C3: %s", v169, 0xCu);
    sub_100007BAC(v170);
  }

  v174 = *(v0 + 8264);
  if (!*(v174 + OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_crypto))
  {
    v197 = *(v0 + 8752);
    v198 = *(v0 + 8744);
    v199 = *(v0 + 8664);
    v200 = *(v0 + 8656);
    v201 = *(v0 + 8640);
    v251 = *(v0 + 8616);
    v255 = *(v0 + 8592);
    v249 = *(v0 + 8584);
    v202 = *(v0 + 8568);
    v270 = *(v0 + 8560);
    v278 = *(v0 + 8608);
    v259 = *(v0 + 8552);
    v264 = *(v0 + 8600);
    v294 = *(v0 + 8536);
    v302 = *(v0 + 8544);
    v310 = *(v0 + 8384);
    sub_100C45B4C();
    swift_allocError();
    *v203 = 4;
    swift_willThrow();
    sub_100016590(v198, v197);
    sub_100016590(v200, v199);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_100016590(v285, v290);
    sub_100C45F88(v35);
    sub_100C45F88(v35);
    sub_100C460C4(v0 + 6776);
    sub_100C460C4(v0 + 6776);

    sub_100006654(v249, v255);
    sub_100016590(v264, v278);
    v130 = v259;
    v131 = v270;
LABEL_24:
    sub_100016590(v130, v131);
    sub_100006654(v294, v302);
    sub_10000B3A8(v0 + 368, &qword_1016993B0, &unk_1013E1330);
    sub_100016590(*(v0 + 8248), *(v0 + 8256));
    v112 = v310;
    goto LABEL_18;
  }

  v316 = *(v0 + 8520);
  v296 = *(v0 + 8488);
  v304 = *(v0 + 8496);
  v269 = *(v0 + 8472);
  v277 = *(v0 + 8480);
  v175 = *(v0 + 8464);
  v176 = *(v0 + 8456);
  v177 = *(v314 + 3380);
  v178 = *(v314 + 8448);
  v179 = *(v314 + 8440);
  v180 = *(v314 + 8432);
  v311 = *(v174 + OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_crypto);
  v181 = *(v314 + 8416);
  v182 = *(v314 + 8408);
  v183 = *(v314 + 8392);
  (*(v314 + 8424))(v182, enum case for PairingExecutorState.PairingLockCheck.generatePairingDataStart(_:), v181);
  v179(v182, 0, 1, v181);
  v176(v182, v177, v183);

  PairingExecutor.setState(_:)();
  v296(v182, v183);
  v184 = *(v174 + v316);
  v185 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_collaborativeKeyC3;
  swift_beginAccess();
  v186 = v184 + v185;
  v0 = v314;
  sub_1000D2A70(v186, v314 + 7968, &qword_101697320, &qword_10138BE90);
  v187 = *(v314 + 7992);
  if (!v187)
  {
    sub_10000B3A8(v314 + 7968, &qword_101697320, &qword_10138BE90);
    sub_100C45B4C();
    swift_allocError();
    *v204 = 14;
    swift_willThrow();
    v205 = *(v314 + 8752);
    v206 = *(v314 + 8744);
    v207 = *(v314 + 8664);
    v208 = *(v314 + 8656);
    v209 = *(v314 + 8640);
    v252 = *(v314 + 8616);
    v256 = *(v314 + 8592);
    v210 = *(v314 + 8584);
    v211 = *(v314 + 8568);
    v271 = *(v314 + 8560);
    v279 = *(v314 + 8608);
    v260 = *(v314 + 8552);
    v265 = *(v314 + 8600);
    v297 = *(v314 + 8536);
    v305 = *(v314 + 8544);
    v313 = *(v314 + 8384);

    sub_100016590(v206, v205);
    sub_100016590(v208, v207);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_100016590(v285, v290);
    sub_100C45F88(v35);
    sub_100C45F88(v35);
    sub_100C460C4(v0 + 6776);
    sub_100C460C4(v0 + 6776);

    sub_100006654(v210, v256);
    sub_100016590(v265, v279);
    sub_100016590(v260, v271);
    v110 = v297;
    v111 = v305;
LABEL_16:
    sub_100006654(v110, v111);
    sub_10000B3A8(v0 + 368, &qword_1016993B0, &unk_1013E1330);
    goto LABEL_17;
  }

  v188 = *(v314 + 8000);
  v189 = sub_1000035D0((v314 + 7968), *(v314 + 7992));
  v190 = *(v187 - 8);
  v191 = *(v190 + 64) + 15;
  v192 = swift_task_alloc();
  (*(v190 + 16))(v192, v189, v187);
  sub_10000B3A8(v314 + 7968, &qword_101697320, &qword_10138BE90);
  v193 = (*(*(*(v188 + 8) + 8) + 40))(v187);
  v195 = v194;
  (*(v190 + 8))(v192, v187);

  sub_100017D5C(v193, v195);
  CCCKG2ParamsP224Sha256Version2();
  OpeningSize = CCCKG2GetOpeningSize();

  sub_1001003F4(v193, v195, v311, OpeningSize, v319);
  v233 = *(v314 + 8744);
  v234 = *(v314 + 8656);
  v235 = *(v314 + 8752);
  v237 = *(v314 + 8664);
  v238 = *(v314 + 8640);
  v240 = *(v314 + 8616);
  v241 = *(v314 + 8592);
  v239 = *(v314 + 8584);
  v236 = *(v314 + 8568);
  v244 = *(v314 + 8560);
  v245 = *(v314 + 8608);
  v242 = *(v314 + 8552);
  v243 = *(v314 + 8600);
  v246 = *(v314 + 8536);
  v247 = *(v314 + 8544);
  v250 = *(v314 + 8496);
  v253 = *(v314 + 8520);
  v248 = *(v314 + 8488);
  v231 = *(v314 + 8472);
  v232 = *(v314 + 8480);
  v229 = *(v314 + 8456);
  v230 = *(v314 + 8464);
  v228 = *(v314 + 3380);
  v226 = *(v314 + 8440);
  v227 = *(v314 + 8448);
  v212 = *(v314 + 8432);
  v213 = *(v314 + 8424);
  v214 = *(v314 + 8416);
  v215 = *(v314 + 8408);
  v216 = *(v314 + 8392);
  v261 = *(v314 + 8384);
  v266 = *(v314 + 8360);
  v272 = *(v314 + 8352);
  v280 = *(v314 + 8344);
  v298 = *(v314 + 8336);
  v306 = *(v314 + 8312);
  v317 = *(v314 + 8288);
  v217 = *(v314 + 8264);
  sub_100016590(v193, v195);
  sub_100016590(v193, v195);
  v213(v215, enum case for PairingExecutorState.PairingLockCheck.generatePairingDataFinish(_:), v214);
  v226(v215, 0, 1, v214);
  v229(v215, v228, v216);
  PairingExecutor.setState(_:)();

  sub_100016590(v233, v235);
  sub_100016590(v234, v237);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_100016590(v285, v290);
  sub_100C45F88(v35);
  sub_100C45F88(v35);
  sub_100C460C4(v314 + 6776);
  sub_100C460C4(v314 + 6776);

  sub_100006654(v239, v241);
  sub_100016590(v243, v245);
  sub_100016590(v242, v244);
  sub_100006654(v246, v247);
  sub_10000B3A8(v314 + 368, &qword_1016993B0, &unk_1013E1330);
  v248(v215, v216);
  sub_100016590(*(v314 + 8248), *(v314 + 8256));
  v218 = *(v217 + v253);
  v219 = v217 + OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_beaconCreationInfo;
  v220 = *(v217 + OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_beaconCreationInfo + 16);
  *(v314 + 7736) = *(v217 + OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_beaconCreationInfo);
  *(v314 + 7752) = v220;
  v222 = *(v219 + 48);
  v221 = *(v219 + 64);
  v223 = *(v219 + 32);
  *(v314 + 7816) = *(v219 + 80);
  *(v314 + 7784) = v222;
  *(v314 + 7800) = v221;
  *(v314 + 7768) = v223;
  v224 = v319[3];
  *(v219 + 32) = v319[2];
  *(v219 + 48) = v224;
  *(v219 + 64) = v319[4];
  v225 = v319[1];
  *v219 = v319[0];
  *(v219 + 16) = v225;
  *(v219 + 80) = v218;

  sub_10000B3A8(v314 + 7736, &qword_1016A1320, &unk_1013E02C0);
  sub_100C46118(v261, type metadata accessor for AirPodsLEPairingLockCheckResponse);

  v121 = *(v314 + 8);
LABEL_19:

  return v121();
}

uint64_t sub_100C3EB6C()
{
  sub_10000B3A8((v0 + 46), &qword_1016993B0, &unk_1013E1330);
  sub_100007BAC(v0 + 1011);
  v1 = v0[1064];
  v2 = v0[1051];
  v3 = v0[1048];
  v4 = v0[1045];
  v5 = v0[1044];
  v6 = v0[1043];
  v7 = v0[1042];
  v8 = v0[1039];
  v9 = v0[1036];

  v10 = v0[1];

  return v10();
}

uint64_t sub_100C3EC94()
{
  v1 = v0[1077];
  v2 = v0[1076];
  v3 = v0[1075];
  v4 = v0[1074];
  v5 = v0[1073];
  v6 = v0[1071];
  v7 = v0[1070];
  v8 = v0[1069];
  v9 = v0[1067];
  v21 = v0[1068];
  v22 = v0[1048];
  swift_unknownObjectRelease();
  sub_100C460C4((v0 + 847));
  sub_100C460C4((v0 + 847));

  sub_100006654(v5, v4);
  sub_100016590(v3, v2);
  sub_100016590(v8, v7);
  sub_100006654(v9, v21);
  sub_10000B3A8((v0 + 46), &qword_1016993B0, &unk_1013E1330);
  sub_100016590(v0[1031], v0[1032]);
  sub_100C46118(v22, type metadata accessor for AirPodsLEPairingLockCheckResponse);
  v10 = v0[1081];
  v11 = v0[1051];
  v12 = v0[1048];
  v13 = v0[1045];
  v14 = v0[1044];
  v15 = v0[1043];
  v16 = v0[1042];
  v17 = v0[1039];
  v18 = v0[1036];

  v19 = v0[1];

  return v19();
}

uint64_t sub_100C3EE5C()
{
  v1 = v0[1080];
  v2 = v0[1077];
  v3 = v0[1076];
  v4 = v0[1075];
  v5 = v0[1074];
  v6 = v0[1073];
  v7 = v0[1071];
  v8 = v0[1070];
  v9 = v0[1069];
  v21 = v0[1067];
  v22 = v0[1068];
  v23 = v0[1048];
  sub_100016590(v0[1082], v0[1083]);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_100C460C4((v0 + 847));
  sub_100C460C4((v0 + 847));

  sub_100006654(v6, v5);
  sub_100016590(v4, v3);
  sub_100016590(v9, v8);
  sub_100006654(v21, v22);
  sub_10000B3A8((v0 + 46), &qword_1016993B0, &unk_1013E1330);
  sub_100016590(v0[1031], v0[1032]);
  sub_100C46118(v23, type metadata accessor for AirPodsLEPairingLockCheckResponse);
  v10 = v0[1087];
  v11 = v0[1051];
  v12 = v0[1048];
  v13 = v0[1045];
  v14 = v0[1044];
  v15 = v0[1043];
  v16 = v0[1042];
  v17 = v0[1039];
  v18 = v0[1036];

  v19 = v0[1];

  return v19();
}

uint64_t sub_100C3F040()
{
  v1 = v0[1080];
  v2 = v0[1077];
  v3 = v0[1076];
  v4 = v0[1075];
  v5 = v0[1074];
  v6 = v0[1073];
  v7 = v0[1071];
  v8 = v0[1070];
  v9 = v0[1069];
  v21 = v0[1067];
  v22 = v0[1068];
  v23 = v0[1048];
  sub_100016590(v0[1082], v0[1083]);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_100C460C4((v0 + 847));
  sub_100C460C4((v0 + 847));

  sub_100006654(v6, v5);
  sub_100016590(v4, v3);
  sub_100016590(v9, v8);
  sub_100006654(v21, v22);
  sub_10000B3A8((v0 + 46), &qword_1016993B0, &unk_1013E1330);
  sub_100016590(v0[1031], v0[1032]);
  sub_100C46118(v23, type metadata accessor for AirPodsLEPairingLockCheckResponse);
  v10 = v0[1091];
  v11 = v0[1051];
  v12 = v0[1048];
  v13 = v0[1045];
  v14 = v0[1044];
  v15 = v0[1043];
  v16 = v0[1042];
  v17 = v0[1039];
  v18 = v0[1036];

  v19 = v0[1];

  return v19();
}

uint64_t sub_100C3F224()
{
  v1 = v0[1080];
  v2 = v0[1077];
  v3 = v0[1076];
  v4 = v0[1075];
  v5 = v0[1074];
  v6 = v0[1073];
  v7 = v0[1071];
  v8 = v0[1070];
  v9 = v0[1069];
  v21 = v0[1067];
  v22 = v0[1068];
  v23 = v0[1048];
  sub_100016590(v0[1082], v0[1083]);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_100C460C4((v0 + 847));
  sub_100C460C4((v0 + 847));

  sub_100006654(v6, v5);
  sub_100016590(v4, v3);
  sub_100016590(v9, v8);
  sub_100006654(v21, v22);
  sub_10000B3A8((v0 + 46), &qword_1016993B0, &unk_1013E1330);
  sub_100016590(v0[1031], v0[1032]);
  sub_100C46118(v23, type metadata accessor for AirPodsLEPairingLockCheckResponse);
  v10 = v0[1095];
  v11 = v0[1051];
  v12 = v0[1048];
  v13 = v0[1045];
  v14 = v0[1044];
  v15 = v0[1043];
  v16 = v0[1042];
  v17 = v0[1039];
  v18 = v0[1036];

  v19 = v0[1];

  return v19();
}

uint64_t sub_100C3F408(uint64_t a1)
{
  v2[94] = v1;
  v2[93] = a1;
  v3 = type metadata accessor for UUID();
  v2[95] = v3;
  v4 = *(v3 - 8);
  v2[96] = v4;
  v5 = *(v4 + 64) + 15;
  v2[97] = swift_task_alloc();
  v6 = *(*(sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280) - 8) + 64) + 15;
  v2[98] = swift_task_alloc();
  v7 = type metadata accessor for OwnedBeaconRecord();
  v2[99] = v7;
  v8 = *(v7 - 8);
  v2[100] = v8;
  v9 = *(v8 + 64) + 15;
  v2[101] = swift_task_alloc();
  v2[102] = swift_task_alloc();

  return _swift_task_switch(sub_100C3F56C, v1, 0);
}

uint64_t sub_100C3F56C()
{
  v1 = *(v0 + 752);
  v2 = v1 + OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_beaconCreationInfo;
  v3 = *(v1 + OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_beaconCreationInfo + 16);
  *(v0 + 104) = *(v1 + OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_beaconCreationInfo);
  *(v0 + 120) = v3;
  v5 = *(v2 + 48);
  v4 = *(v2 + 64);
  v6 = *(v2 + 80);
  *(v0 + 136) = *(v2 + 32);
  *(v0 + 184) = v6;
  *(v0 + 168) = v4;
  *(v0 + 152) = v5;
  v7 = *(v2 + 16);
  *(v0 + 16) = *v2;
  *(v0 + 32) = v7;
  v9 = *(v2 + 48);
  v8 = *(v2 + 64);
  v10 = *(v2 + 80);
  v11 = *(v2 + 32);
  *(v0 + 96) = v10;
  *(v0 + 64) = v9;
  *(v0 + 80) = v8;
  *(v0 + 48) = v11;
  v12 = v10;
  if (v10)
  {
    v13 = (v1 + OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_beaconStore);
    *(v0 + 824) = *v13;
    v14 = v13[1];
    *(v0 + 832) = v14;
    ObjectType = swift_getObjectType();
    *(v0 + 840) = ObjectType;
    *(v0 + 424) = &type metadata for InitialPairingInfo;
    *(v0 + 432) = sub_10048E614();
    v16 = swift_allocObject();
    *(v0 + 400) = v16;
    v16[1] = *v2;
    v17 = *(v2 + 64);
    v19 = *(v2 + 16);
    v18 = *(v2 + 32);
    v16[4] = *(v2 + 48);
    v16[5] = v17;
    v16[2] = v19;
    v16[3] = v18;
    *(v0 + 464) = type metadata accessor for AccessoryPairingInfo(0);
    *(v0 + 472) = sub_100C4600C(&qword_1016A1318, type metadata accessor for AccessoryPairingInfo);
    *(v0 + 440) = v12;
    sub_1000D2A70(v0 + 104, v0 + 192, &qword_1016A1320, &unk_1013E02C0);
    sub_100102538(v0 + 16, v0 + 280);
    v20 = async function pointer to dispatch thunk of PairingBeaconStore.generateBeaconRecord(pairingKeys:accessory:)[1];

    v21 = swift_task_alloc();
    *(v0 + 848) = v21;
    *v21 = v0;
    v21[1] = sub_100C3F804;

    return dispatch thunk of PairingBeaconStore.generateBeaconRecord(pairingKeys:accessory:)(v0 + 360, v0 + 400, v0 + 440, ObjectType, v14);
  }

  else
  {
    sub_100C45B4C();
    swift_allocError();
    *v22 = 5;
    swift_willThrow();
    v23 = *(v0 + 816);
    v24 = *(v0 + 808);
    v25 = *(v0 + 784);
    v26 = *(v0 + 776);

    v27 = *(v0 + 8);

    return v27();
  }
}

uint64_t sub_100C3F804()
{
  v2 = *v1;
  v3 = (*v1)[106];
  v8 = *v1;
  (*v1)[107] = v0;

  if (v0)
  {
    v4 = v2[94];
    v5 = sub_100C403D0;
  }

  else
  {
    v6 = v2[94];
    sub_100007BAC(v2 + 55);
    sub_100007BAC(v2 + 50);
    v5 = sub_100C3F934;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100C3F934()
{
  v50 = v0;
  v1 = *(v0 + 800);
  sub_1000D2A70(v0 + 360, v0 + 480, &qword_1016B8AD0, &unk_1013E1320);
  v2 = (v1 + 56);
  if (!*(v0 + 504))
  {
    v23 = *(v0 + 792);
    v24 = *(v0 + 784);
    sub_10000B3A8(v0 + 480, &qword_1016B8AD0, &unk_1013E1320);
    (*v2)(v24, 1, 1, v23);
    goto LABEL_8;
  }

  v3 = *(v0 + 800);
  v4 = *(v0 + 792);
  v5 = *(v0 + 784);
  sub_1000BC4D4(&qword_1016B7F70, &qword_1013E02D0);
  v6 = swift_dynamicCast();
  (*v2)(v5, v6 ^ 1u, 1, v4);
  if ((*(v3 + 48))(v5, 1, v4) == 1)
  {
LABEL_8:
    sub_10000B3A8(*(v0 + 784), &unk_1016A9A20, &qword_10138B280);
    if (qword_101694DA0 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_1000076D4(v25, qword_1016B8F00);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "Unable to generate new beacon", v28, 2u);
    }

    v29 = type metadata accessor for PairingInfoStoreError();
    sub_100C4600C(&qword_1016A1330, &type metadata accessor for PairingInfoStoreError);
    swift_allocError();
    (*(*(v29 - 8) + 104))(v30, enum case for PairingInfoStoreError.missingOwnerRecord(_:), v29);
    swift_willThrow();
    sub_10000B3A8(v0 + 104, &qword_1016A1320, &unk_1013E02C0);
    goto LABEL_13;
  }

  sub_10002AD14(*(v0 + 784), *(v0 + 816), type metadata accessor for OwnedBeaconRecord);
  if (qword_101694DA0 != -1)
  {
    swift_once();
  }

  v7 = *(v0 + 816);
  v8 = *(v0 + 808);
  v9 = type metadata accessor for Logger();
  *(v0 + 864) = sub_1000076D4(v9, qword_1016B8F00);
  sub_100A51D68(v7, v8);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  v12 = os_log_type_enabled(v10, v11);
  v13 = *(v0 + 808);
  if (v12)
  {
    v14 = *(v0 + 792);
    v15 = *(v0 + 760);
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v49 = v17;
    *v16 = 136315138;
    v18 = *(v14 + 20);
    sub_100C4600C(&qword_101696930, &type metadata accessor for UUID);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v20;
    sub_100C46118(v13, type metadata accessor for OwnedBeaconRecord);
    v22 = sub_1000136BC(v19, v21, &v49);

    *(v16 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v10, v11, "Generated new beacon %s", v16, 0xCu);
    sub_100007BAC(v17);
  }

  else
  {

    sub_100C46118(v13, type metadata accessor for OwnedBeaconRecord);
  }

  v37 = *(v0 + 752);
  v38 = OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_pairingConfiguration;
  swift_beginAccess();
  sub_1000D2A70(v37 + v38, v0 + 560, &qword_1016A12E0, &qword_1013A51D0);
  if (*(v0 + 584))
  {
    v39 = *(v0 + 816);
    v40 = *(v0 + 792);
    sub_10000A748((v0 + 560), v0 + 520);
    *(v0 + 664) = v40;
    *(v0 + 672) = sub_100C4600C(&qword_1016B7F60, type metadata accessor for OwnedBeaconRecord);
    v41 = sub_1000280DC((v0 + 640));
    sub_100A51D68(v39, v41);
    v42 = async function pointer to dispatch thunk of PairingBeaconStore.saveBeaconRecord(_:pairingConfiguration:)[1];
    v43 = swift_task_alloc();
    *(v0 + 872) = v43;
    *v43 = v0;
    v43[1] = sub_100C3FFEC;
    v44 = *(v0 + 840);
    v45 = *(v0 + 832);
    v46 = *(v0 + 824);

    return dispatch thunk of PairingBeaconStore.saveBeaconRecord(_:pairingConfiguration:)(v0 + 600, v0 + 640, v0 + 520, v44, v45);
  }

  v47 = *(v0 + 816);
  sub_10000B3A8(v0 + 560, &qword_1016A12E0, &qword_1013A51D0);
  sub_100C45B4C();
  swift_allocError();
  *v48 = 6;
  swift_willThrow();
  sub_10000B3A8(v0 + 104, &qword_1016A1320, &unk_1013E02C0);
  sub_100C46118(v47, type metadata accessor for OwnedBeaconRecord);
LABEL_13:
  sub_10000B3A8(v0 + 360, &qword_1016B8AD0, &unk_1013E1320);
  v31 = *(v0 + 816);
  v32 = *(v0 + 808);
  v33 = *(v0 + 784);
  v34 = *(v0 + 776);

  v35 = *(v0 + 8);

  return v35();
}

uint64_t sub_100C3FFEC()
{
  v2 = *v1;
  v3 = *(*v1 + 872);
  v8 = *v1;
  *(*v1 + 880) = v0;

  if (v0)
  {
    v4 = *(v2 + 752);
    v5 = sub_100C40488;
  }

  else
  {
    v6 = *(v2 + 752);
    sub_100007BAC((v2 + 640));
    v5 = sub_100C40114;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100C40114()
{
  v23 = v0;
  v1 = v0[108];
  sub_10001F280((v0 + 75), (v0 + 85));
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[97];
    v5 = v0[96];
    v21 = v0[95];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v22 = v7;
    *v6 = 136315138;
    v8 = v0[89];
    sub_1000035D0(v0 + 85, v0[88]);
    dispatch thunk of BeaconRecordType.identifier.getter();
    sub_100C4600C(&qword_101696930, &type metadata accessor for UUID);
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    v11 = v10;
    (*(v5 + 8))(v4, v21);
    sub_100007BAC(v0 + 85);
    v12 = sub_1000136BC(v9, v11, &v22);

    *(v6 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v2, v3, "Saved new record %s", v6, 0xCu);
    sub_100007BAC(v7);
  }

  else
  {

    sub_100007BAC(v0 + 85);
  }

  v13 = v0[102];
  v14 = v0[101];
  v15 = v0[98];
  v16 = v0[97];
  v17 = v0[93];
  v18 = v0[79];
  sub_1000035D0(v0 + 75, v0[78]);
  dispatch thunk of BeaconRecordType.identifier.getter();
  sub_10000B3A8((v0 + 13), &qword_1016A1320, &unk_1013E02C0);
  sub_100007BAC(v0 + 65);
  sub_100C46118(v13, type metadata accessor for OwnedBeaconRecord);
  sub_10000B3A8((v0 + 45), &qword_1016B8AD0, &unk_1013E1320);
  sub_100007BAC(v0 + 75);

  v19 = v0[1];

  return v19();
}

uint64_t sub_100C403D0()
{
  sub_10000B3A8((v0 + 13), &qword_1016A1320, &unk_1013E02C0);
  sub_100007BAC(v0 + 55);
  sub_100007BAC(v0 + 50);
  v1 = v0[107];
  v2 = v0[102];
  v3 = v0[101];
  v4 = v0[98];
  v5 = v0[97];

  v6 = v0[1];

  return v6();
}

uint64_t sub_100C40488()
{
  v1 = v0[102];
  sub_10000B3A8((v0 + 13), &qword_1016A1320, &unk_1013E02C0);
  sub_100007BAC(v0 + 65);
  sub_100C46118(v1, type metadata accessor for OwnedBeaconRecord);
  sub_10000B3A8((v0 + 45), &qword_1016B8AD0, &unk_1013E1320);
  sub_100007BAC(v0 + 80);
  v2 = v0[110];
  v3 = v0[102];
  v4 = v0[101];
  v5 = v0[98];
  v6 = v0[97];

  v7 = v0[1];

  return v7();
}

uint64_t sub_100C40578()
{
  v1[374] = v0;
  v2 = type metadata accessor for PairingExecutorState();
  v1[375] = v2;
  v3 = *(v2 - 8);
  v1[376] = v3;
  v4 = *(v3 + 64) + 15;
  v1[377] = swift_task_alloc();
  v5 = sub_1000BC4D4(&qword_1016973C8, &qword_1013B6210);
  v1[378] = v5;
  v6 = *(v5 - 8);
  v1[379] = v6;
  v7 = *(v6 + 64) + 15;
  v1[380] = swift_task_alloc();
  v8 = sub_1000BC4D4(&qword_101697240, &unk_10138BDA0);
  v1[381] = v8;
  v9 = *(v8 - 8);
  v1[382] = v9;
  v10 = *(v9 + 64) + 15;
  v1[383] = swift_task_alloc();
  v1[384] = swift_task_alloc();

  return _swift_task_switch(sub_100C40714, v0, 0);
}

uint64_t sub_100C40714()
{
  v1 = (*(v0 + 2992) + OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_service);
  v2 = *v1;
  *(v0 + 3080) = *v1;
  if (v2)
  {
    v3 = v1[1];
    *(v0 + 3088) = v3;
    v4 = objc_opt_self();
    swift_unknownObjectRetain();
    v5 = [v4 standardUserDefaults];
    v6 = [objc_opt_self() sharedInstance];
    v7 = [v6 isInternalBuild];

    if (v7)
    {
      v8 = String._bridgeToObjectiveC()();
      v9 = [v5 BOOLForKey:v8];

      if (v9)
      {
        v10 = *(v0 + 3072);
        sub_100C45E90(v0 + 880);
        ObjectType = swift_getObjectType();
        *(v0 + 3096) = ObjectType;
        type metadata accessor for Characteristic();
        Identifier.init(stringLiteral:)();
        v12 = async function pointer to dispatch thunk of ServiceProtocol.subscript.getter[1];
        v13 = swift_task_alloc();
        *(v0 + 3104) = v13;
        *v13 = v0;
        v13[1] = sub_100C40B9C;
        v14 = *(v0 + 3072);
LABEL_15:

        return dispatch thunk of ServiceProtocol.subscript.getter(v14, ObjectType, v3);
      }
    }

    else
    {
    }

    v16 = sub_100C45C3C();
    if (qword_101694DA0 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    *(v0 + 3256) = sub_1000076D4(v17, qword_1016B8F00);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 67109120;
      *(v20 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v18, v19, "nextKeyRollInterval = %u", v20, 8u);
    }

    *(v0 + 276) = v16;
    sub_100101824();
    FixedWidthInteger.data.getter();
    sub_1003CD9CC();
    BinaryDecodable.init(data:)();
    v3 = *(v0 + 3088);
    v27 = *(v0 + 3080);
    v28 = *(v0 + 3064);
    v29 = *(v0 + 2976);
    *(v0 + 3264) = v29;
    v30 = *(v0 + 2984);
    *(v0 + 3272) = v30;
    *(v0 + 16) = v29;
    *(v0 + 24) = v30;
    sub_100C45E20(v0 + 16);
    ObjectType = swift_getObjectType();
    *(v0 + 3280) = ObjectType;
    type metadata accessor for Characteristic();
    Identifier.init(stringLiteral:)();
    v31 = async function pointer to dispatch thunk of ServiceProtocol.subscript.getter[1];
    v32 = swift_task_alloc();
    *(v0 + 3288) = v32;
    *v32 = v0;
    v32[1] = sub_100C4238C;
    v14 = *(v0 + 3064);
    goto LABEL_15;
  }

  sub_100C45B4C();
  swift_allocError();
  *v15 = 3;
  swift_willThrow();
  v21 = *(v0 + 3072);
  v22 = *(v0 + 3064);
  v23 = *(v0 + 3040);
  v24 = *(v0 + 3016);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_100C40B9C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 3104);
  v6 = *v2;
  v4[389] = a1;
  v4[390] = v1;

  v7 = v3[384];
  v8 = v3[382];
  v9 = v3[381];
  v10 = v3[374];
  (*(v8 + 8))(v7, v9);
  if (v1)
  {
    v11 = sub_100C43038;
  }

  else
  {
    v11 = sub_100C40D24;
  }

  return _swift_task_switch(v11, v10, 0);
}

uint64_t sub_100C40D24()
{
  v54 = v0;
  if (qword_101694DA0 != -1)
  {
    swift_once();
  }

  v1 = (v0 + 880);
  v2 = type metadata accessor for Logger();
  *(v0 + 3128) = v2;
  *(v0 + 3136) = sub_1000076D4(v2, qword_1016B8F00);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v53 = v6;
    *v5 = 136315138;
    v7 = *(v0 + 1056);
    *(v0 + 2840) = *(v0 + 1040);
    *(v0 + 2856) = v7;
    *(v0 + 2872) = *(v0 + 1072);
    v8 = *(v0 + 992);
    *(v0 + 2776) = *(v0 + 976);
    *(v0 + 2792) = v8;
    v9 = *(v0 + 1024);
    *(v0 + 2808) = *(v0 + 1008);
    *(v0 + 2824) = v9;
    v10 = *(v0 + 928);
    *(v0 + 2712) = *(v0 + 912);
    *(v0 + 2728) = v10;
    v11 = *(v0 + 960);
    *(v0 + 2744) = *(v0 + 944);
    *(v0 + 2760) = v11;
    v12 = *(v0 + 896);
    *(v0 + 2680) = *v1;
    *(v0 + 2696) = v12;
    v13 = String.init<A>(describing:)();
    v15 = v2;
    v16 = sub_1000136BC(v13, v14, &v53);

    *(v5 + 4) = v16;
    v2 = v15;
    _os_log_impl(&_mh_execute_header, v3, v4, "Sending command: %s", v5, 0xCu);
    sub_100007BAC(v6);
  }

  v17 = *(v0 + 3120);
  v18 = *(v0 + 2992);
  v19 = *(v0 + 1056);
  *(v0 + 1240) = *(v0 + 1040);
  *(v0 + 1256) = v19;
  *(v0 + 1272) = *(v0 + 1072);
  v20 = *(v0 + 992);
  *(v0 + 1176) = *(v0 + 976);
  *(v0 + 1192) = v20;
  v21 = *(v0 + 1024);
  *(v0 + 1208) = *(v0 + 1008);
  *(v0 + 1224) = v21;
  v22 = *(v0 + 928);
  *(v0 + 1112) = *(v0 + 912);
  *(v0 + 1128) = v22;
  v23 = *(v0 + 960);
  *(v0 + 1144) = *(v0 + 944);
  *(v0 + 1160) = v23;
  v24 = *(v0 + 896);
  *(v0 + 1080) = *v1;
  *(v0 + 1096) = v24;
  sub_100C45E3C();
  *(v0 + 3144) = BinaryEncoder.encode<A>(_:)();
  *(v0 + 3152) = v25;
  if (v17)
  {
    v26 = *(v0 + 3112);
    swift_unknownObjectRelease();
    if (qword_101694DA0 != -1)
    {
      swift_once();
    }

    sub_1000076D4(v2, qword_1016B8F00);
    swift_errorRetain();
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v29 = 138543362;
      swift_errorRetain();
      v31 = _swift_stdlib_bridgeErrorToNSError();
      *(v29 + 4) = v31;
      *v30 = v31;
      _os_log_impl(&_mh_execute_header, v27, v28, "Failure on pairing stats gathering: %{public}@", v29, 0xCu);
      sub_10000B3A8(v30, &qword_10169BB30, &unk_10138B3C0);
    }

    else
    {
    }

    v39 = sub_100C45C3C();
    if (qword_101694DA0 != -1)
    {
      swift_once();
    }

    *(v0 + 3256) = sub_1000076D4(v2, qword_1016B8F00);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 67109120;
      *(v42 + 4) = v39;
      _os_log_impl(&_mh_execute_header, v40, v41, "nextKeyRollInterval = %u", v42, 8u);
    }

    *(v0 + 276) = v39;
    sub_100101824();
    FixedWidthInteger.data.getter();
    sub_1003CD9CC();
    BinaryDecodable.init(data:)();
    v43 = *(v0 + 3088);
    v44 = *(v0 + 3080);
    v45 = *(v0 + 3064);
    v46 = *(v0 + 2976);
    *(v0 + 3264) = v46;
    v47 = *(v0 + 2984);
    *(v0 + 3272) = v47;
    *(v0 + 16) = v46;
    *(v0 + 24) = v47;
    sub_100C45E20(v0 + 16);
    ObjectType = swift_getObjectType();
    *(v0 + 3280) = ObjectType;
    type metadata accessor for Characteristic();
    Identifier.init(stringLiteral:)();
    v49 = async function pointer to dispatch thunk of ServiceProtocol.subscript.getter[1];
    v50 = swift_task_alloc();
    *(v0 + 3288) = v50;
    *v50 = v0;
    v50[1] = sub_100C4238C;
    v51 = *(v0 + 3064);

    return dispatch thunk of ServiceProtocol.subscript.getter(v51, ObjectType, v43);
  }

  else
  {
    v32 = *(v0 + 3096);
    v33 = *(v0 + 3088);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    *(v0 + 3160) = AssociatedTypeWitness;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    *(v0 + 3168) = AssociatedConformanceWitness;
    v36 = async function pointer to dispatch thunk of CharacteristicProtocol.mtu.getter[1];
    v37 = swift_task_alloc();
    *(v0 + 3176) = v37;
    *v37 = v0;
    v37[1] = sub_100C41414;
    v38 = *(v0 + 3112);

    return dispatch thunk of CharacteristicProtocol.mtu.getter(AssociatedTypeWitness, AssociatedConformanceWitness);
  }
}

uint64_t sub_100C41414(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 3176);
  v6 = *v2;
  v4[398] = v1;

  v7 = v4[374];
  if (v1)
  {
    v8 = sub_100C43468;
  }

  else
  {
    v4[399] = a1;
    v8 = sub_100C41550;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100C41550()
{
  v1 = v0[399];
  v2 = v0[394];
  v3 = v0[393];
  v4 = fragment(data:mtu:)();
  v0[400] = v4;
  v5 = async function pointer to dispatch thunk of CharacteristicProtocol.write(data:)[1];
  v6 = swift_task_alloc();
  v0[401] = v6;
  *v6 = v0;
  v6[1] = sub_100C41610;
  v7 = v0[396];
  v8 = v0[395];
  v9 = v0[389];
  v10 = v0[380];

  return dispatch thunk of CharacteristicProtocol.write(data:)(v10, v4, v8, v7);
}

uint64_t sub_100C41610()
{
  v2 = *v1;
  v3 = *(*v1 + 3208);
  v4 = *v1;
  v2[402] = v0;

  v5 = v2[400];
  if (v0)
  {
    v6 = v2[374];

    return _swift_task_switch(sub_100C438B0, v6, 0);
  }

  else
  {

    v7 = async function pointer to AsyncSequence<>.reassemble()[1];
    v8 = swift_task_alloc();
    v2[403] = v8;
    v9 = sub_10048E70C();
    *v8 = v4;
    v8[1] = sub_100C417B8;
    v10 = v2[380];
    v11 = v2[378];

    return AsyncSequence<>.reassemble()(v11, v9);
  }
}

uint64_t sub_100C417B8(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v6 = *(*v3 + 3224);
  v7 = *v3;
  v5[404] = a1;
  v5[405] = a2;
  v5[406] = v2;

  v8 = v4[380];
  v9 = v4[379];
  v10 = v4[378];
  v11 = v4[374];
  (*(v9 + 8))(v8, v10);
  if (v2)
  {
    v12 = sub_100C43CF8;
  }

  else
  {
    v12 = sub_100C41944;
  }

  return _swift_task_switch(v12, v11, 0);
}

uint64_t sub_100C41944()
{
  v106 = v0;
  v1 = *(v0 + 3136);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 136315138;
    v6 = *(v0 + 1008);
    *(v0 + 2624) = *(v0 + 1024);
    v7 = *(v0 + 1056);
    *(v0 + 2640) = *(v0 + 1040);
    *(v0 + 2656) = v7;
    v8 = *(v0 + 944);
    *(v0 + 2560) = *(v0 + 960);
    v9 = *(v0 + 992);
    *(v0 + 2576) = *(v0 + 976);
    *(v0 + 2592) = v9;
    *(v0 + 2608) = v6;
    v10 = *(v0 + 880);
    *(v0 + 2496) = *(v0 + 896);
    v11 = *(v0 + 928);
    *(v0 + 2512) = *(v0 + 912);
    *(v0 + 2528) = v11;
    *(v0 + 2544) = v8;
    v105[0] = v5;
    *(v0 + 2672) = *(v0 + 1072);
    *(v0 + 2480) = v10;
    v12 = String.init<A>(describing:)();
    v14 = sub_1000136BC(v12, v13, v105);

    *(v4 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v2, v3, "Sent command: %s", v4, 0xCu);
    sub_100007BAC(v5);
  }

  v15 = *(v0 + 3248);
  v16 = *(v0 + 3240);
  v17 = *(v0 + 3232);
  v18 = *(v0 + 2992);
  sub_100C45ED8();
  BinaryDecoder.decode<A>(_:from:)();
  if (v15)
  {
    v19 = *(v0 + 3152);
    v20 = *(v0 + 3144);
    v21 = *(v0 + 3112);
    sub_100016590(*(v0 + 3232), *(v0 + 3240));
    sub_100016590(v20, v19);
    swift_unknownObjectRelease();
    if (qword_101694DA0 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_1000076D4(v22, qword_1016B8F00);
    swift_errorRetain();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138543362;
      swift_errorRetain();
      v27 = _swift_stdlib_bridgeErrorToNSError();
      *(v25 + 4) = v27;
      *v26 = v27;
      _os_log_impl(&_mh_execute_header, v23, v24, "Failure on pairing stats gathering: %{public}@", v25, 0xCu);
      sub_10000B3A8(v26, &qword_10169BB30, &unk_10138B3C0);
    }

    else
    {
    }
  }

  else
  {
    v28 = (v0 + 1480);
    v29 = *(v0 + 3136);
    v30 = *(v0 + 1456);
    *(v0 + 1640) = *(v0 + 1440);
    *(v0 + 1656) = v30;
    *(v0 + 1672) = *(v0 + 1472);
    v31 = *(v0 + 1392);
    *(v0 + 1576) = *(v0 + 1376);
    *(v0 + 1592) = v31;
    v32 = *(v0 + 1424);
    *(v0 + 1608) = *(v0 + 1408);
    *(v0 + 1624) = v32;
    v33 = *(v0 + 1328);
    *(v0 + 1512) = *(v0 + 1312);
    *(v0 + 1528) = v33;
    v34 = *(v0 + 1360);
    *(v0 + 1544) = *(v0 + 1344);
    *(v0 + 1560) = v34;
    v35 = *(v0 + 1296);
    *(v0 + 1480) = *(v0 + 1280);
    *(v0 + 1496) = v35;
    sub_100C45F2C(v0 + 1480, v0 + 1680);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();
    sub_100C45F88(v0 + 1480);
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v105[0] = v39;
      *v38 = 136315138;
      v40 = *(v0 + 1656);
      *(v0 + 2240) = *(v0 + 1640);
      *(v0 + 2256) = v40;
      *(v0 + 2272) = *(v0 + 1672);
      v41 = *(v0 + 1592);
      *(v0 + 2176) = *(v0 + 1576);
      *(v0 + 2192) = v41;
      v42 = *(v0 + 1624);
      *(v0 + 2208) = *(v0 + 1608);
      *(v0 + 2224) = v42;
      v43 = *(v0 + 1528);
      *(v0 + 2112) = *(v0 + 1512);
      *(v0 + 2128) = v43;
      v44 = *(v0 + 1560);
      *(v0 + 2144) = *(v0 + 1544);
      *(v0 + 2160) = v44;
      v45 = *(v0 + 1496);
      *(v0 + 2080) = *v28;
      *(v0 + 2096) = v45;
      sub_100C45F2C(v0 + 1480, v0 + 2280);
      v46 = String.init<A>(describing:)();
      v48 = sub_1000136BC(v46, v47, v105);

      *(v38 + 4) = v48;
      _os_log_impl(&_mh_execute_header, v36, v37, "Received response: %s", v38, 0xCu);
      sub_100007BAC(v39);
    }

    v49 = *(v0 + 1656);
    *(v0 + 2040) = *(v0 + 1640);
    *(v0 + 2056) = v49;
    *(v0 + 2072) = *(v0 + 1672);
    v50 = *(v0 + 1592);
    *(v0 + 1976) = *(v0 + 1576);
    *(v0 + 1992) = v50;
    v51 = *(v0 + 1624);
    *(v0 + 2008) = *(v0 + 1608);
    *(v0 + 2024) = v51;
    v52 = *(v0 + 1528);
    *(v0 + 1912) = *(v0 + 1512);
    *(v0 + 1928) = v52;
    v53 = *(v0 + 1560);
    *(v0 + 1944) = *(v0 + 1544);
    *(v0 + 1960) = v53;
    v54 = *(v0 + 1496);
    *(v0 + 1880) = *v28;
    *(v0 + 1896) = v54;
    if (sub_100C45FDC(v0 + 1880) == 6)
    {
      v55 = sub_10001F270(v0 + 1880);
      if (qword_101694D48 != -1)
      {
        swift_once();
      }

      sub_1000076D4(*(v0 + 3128), qword_10177BCE8);
      v56 = Logger.logObject.getter();
      v57 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v105[0] = v59;
        *v58 = 136446210;
        v60 = *(v55 + 24);
        *(v0 + 2880) = *(v55 + 8);
        *(v0 + 2896) = v60;
        v61 = *(v55 + 56);
        v62 = *(v55 + 88);
        v63 = *(v55 + 40);
        *(v0 + 2944) = *(v55 + 72);
        *(v0 + 2960) = v62;
        *(v0 + 2912) = v63;
        *(v0 + 2928) = v61;
        v64 = ProximityPairingStatsCommandPayload.Durations.description.getter();
        v66 = sub_1000136BC(v64, v65, v105);

        *(v58 + 4) = v66;
        _os_log_impl(&_mh_execute_header, v56, v57, "FW Pairing Statistics: %{public}s", v58, 0xCu);
        sub_100007BAC(v59);
      }

      v67 = Logger.logObject.getter();
      v68 = static os_log_type_t.default.getter();
      v69 = os_log_type_enabled(v67, v68);
      v70 = *(v0 + 3240);
      v71 = *(v0 + 3232);
      v72 = *(v0 + 3152);
      v73 = *(v0 + 3144);
      v74 = *(v0 + 3112);
      if (v69)
      {
        v104 = *(v0 + 3112);
        v103 = *(v0 + 3152);
        v75 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        v105[0] = v76;
        *v75 = 136446210;
        v77 = *(v55 + 120);
        v78 = *(v55 + 152);
        v79 = *(v55 + 104);
        *(v0 + 244) = *(v55 + 136);
        *(v0 + 260) = v78;
        *(v0 + 212) = v79;
        *(v0 + 228) = v77;
        v80 = ProximityPairingStatsCommandPayload.Timestamps.description.getter();
        v82 = sub_1000136BC(v80, v81, v105);

        *(v75 + 4) = v82;
        _os_log_impl(&_mh_execute_header, v67, v68, "FW Pairing Timestamps: %{public}s", v75, 0xCu);
        sub_100007BAC(v76);

        sub_100016590(v71, v70);
        sub_100016590(v73, v103);
      }

      else
      {
        sub_100016590(*(v0 + 3232), *(v0 + 3240));
        sub_100016590(v73, v72);
      }

      swift_unknownObjectRelease();
    }

    else
    {
      v83 = *(v0 + 3240);
      v84 = *(v0 + 3232);
      v85 = *(v0 + 3152);
      v86 = *(v0 + 3144);
      v87 = *(v0 + 3112);
      sub_100C45F88(v0 + 1480);
      sub_100016590(v84, v83);
      sub_100016590(v86, v85);
      swift_unknownObjectRelease();
    }
  }

  v88 = sub_100C45C3C();
  if (qword_101694DA0 != -1)
  {
    swift_once();
  }

  v89 = type metadata accessor for Logger();
  *(v0 + 3256) = sub_1000076D4(v89, qword_1016B8F00);
  v90 = Logger.logObject.getter();
  v91 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v90, v91))
  {
    v92 = swift_slowAlloc();
    *v92 = 67109120;
    *(v92 + 4) = v88;
    _os_log_impl(&_mh_execute_header, v90, v91, "nextKeyRollInterval = %u", v92, 8u);
  }

  *(v0 + 276) = v88;
  sub_100101824();
  FixedWidthInteger.data.getter();
  sub_1003CD9CC();
  BinaryDecodable.init(data:)();
  v93 = *(v0 + 3088);
  v94 = *(v0 + 3080);
  v95 = *(v0 + 3064);
  v96 = *(v0 + 2976);
  *(v0 + 3264) = v96;
  v97 = *(v0 + 2984);
  *(v0 + 3272) = v97;
  *(v0 + 16) = v96;
  *(v0 + 24) = v97;
  sub_100C45E20(v0 + 16);
  ObjectType = swift_getObjectType();
  *(v0 + 3280) = ObjectType;
  type metadata accessor for Characteristic();
  Identifier.init(stringLiteral:)();
  v99 = async function pointer to dispatch thunk of ServiceProtocol.subscript.getter[1];
  v100 = swift_task_alloc();
  *(v0 + 3288) = v100;
  *v100 = v0;
  v100[1] = sub_100C4238C;
  v101 = *(v0 + 3064);

  return dispatch thunk of ServiceProtocol.subscript.getter(v101, ObjectType, v93);
}

uint64_t sub_100C4238C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 3288);
  v6 = *v2;
  v4[412] = a1;
  v4[413] = v1;

  v7 = v3[383];
  v8 = v3[382];
  v9 = v3[381];
  v10 = v3[374];
  (*(v8 + 8))(v7, v9);
  if (v1)
  {
    v11 = sub_100C44140;
  }

  else
  {
    v11 = sub_100C42514;
  }

  return _swift_task_switch(v11, v10, 0);
}

uint64_t sub_100C42514()
{
  v56 = v0;
  v1 = *(v0 + 3272);
  v2 = *(v0 + 3264);
  v3 = *(v0 + 3256);
  sub_100017D5C(v2, v1);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  sub_100016590(v2, v1);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 3272);
    v7 = *(v0 + 3264);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v55 = v9;
    *v8 = 136315138;
    v10 = *(v0 + 192);
    *(v0 + 840) = *(v0 + 176);
    *(v0 + 856) = v10;
    *(v0 + 872) = *(v0 + 208);
    v11 = *(v0 + 128);
    *(v0 + 776) = *(v0 + 112);
    *(v0 + 792) = v11;
    v12 = *(v0 + 160);
    *(v0 + 808) = *(v0 + 144);
    *(v0 + 824) = v12;
    v13 = *(v0 + 64);
    *(v0 + 712) = *(v0 + 48);
    *(v0 + 728) = v13;
    v14 = *(v0 + 96);
    *(v0 + 744) = *(v0 + 80);
    *(v0 + 760) = v14;
    v15 = *(v0 + 32);
    *(v0 + 680) = *(v0 + 16);
    *(v0 + 696) = v15;
    sub_100017D5C(v7, v6);
    v16 = String.init<A>(describing:)();
    v18 = sub_1000136BC(v16, v17, &v55);

    *(v8 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v4, v5, "Sending command: %s", v8, 0xCu);
    sub_100007BAC(v9);
  }

  v19 = *(v0 + 3304);
  v20 = *(v0 + 3016);
  v21 = *(v0 + 3008);
  v22 = *(v0 + 3000);
  v23 = *(v0 + 2992);
  v24 = enum case for PairingExecutorState.PairingComplete.commandStart(_:);
  v25 = type metadata accessor for PairingExecutorState.PairingComplete();
  *(v0 + 3312) = v25;
  v26 = *(v25 - 8);
  v27 = *(v26 + 104);
  *(v0 + 3320) = v27;
  *(v0 + 3328) = (v26 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v27(v20, v24, v25);
  v28 = *(v26 + 56);
  *(v0 + 3336) = v28;
  *(v0 + 3344) = (v26 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v28(v20, 0, 1, v25);
  *(v0 + 476) = enum case for PairingExecutorState.pairingComplete(_:);
  v29 = *(v21 + 104);
  *(v0 + 3352) = v29;
  *(v0 + 3360) = (v21 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v29(v20);
  *(v0 + 3368) = type metadata accessor for ProximityPairingExecutor();
  *(v0 + 3376) = sub_100C4600C(&qword_1016B75C0, type metadata accessor for ProximityPairingExecutor);
  PairingExecutor.setState(_:)();
  v30 = *(v21 + 8);
  *(v0 + 3384) = v30;
  *(v0 + 3392) = (v21 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v30(v20, v22);
  v31 = *(v0 + 192);
  *(v0 + 440) = *(v0 + 176);
  *(v0 + 456) = v31;
  *(v0 + 472) = *(v0 + 208);
  v32 = *(v0 + 128);
  *(v0 + 376) = *(v0 + 112);
  *(v0 + 392) = v32;
  v33 = *(v0 + 160);
  *(v0 + 408) = *(v0 + 144);
  *(v0 + 424) = v33;
  v34 = *(v0 + 64);
  *(v0 + 312) = *(v0 + 48);
  *(v0 + 328) = v34;
  v35 = *(v0 + 96);
  *(v0 + 344) = *(v0 + 80);
  *(v0 + 360) = v35;
  v36 = *(v0 + 32);
  *(v0 + 280) = *(v0 + 16);
  *(v0 + 296) = v36;
  sub_100C45E3C();
  *(v0 + 3400) = BinaryEncoder.encode<A>(_:)();
  *(v0 + 3408) = v37;
  if (v19)
  {
    v38 = *(v0 + 3296);
    v39 = *(v0 + 3272);
    v40 = *(v0 + 3264);
    v41 = *(v0 + 3080);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_100016590(v40, v39);
    v42 = *(v0 + 3072);
    v43 = *(v0 + 3064);
    v44 = *(v0 + 3040);
    v45 = *(v0 + 3016);

    v46 = *(v0 + 8);

    return v46();
  }

  else
  {
    v48 = *(v0 + 3280);
    v49 = *(v0 + 3088);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    *(v0 + 3416) = AssociatedTypeWitness;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    *(v0 + 3424) = AssociatedConformanceWitness;
    v52 = async function pointer to dispatch thunk of CharacteristicProtocol.mtu.getter[1];
    v53 = swift_task_alloc();
    *(v0 + 3432) = v53;
    *v53 = v0;
    v53[1] = sub_100C429E0;
    v54 = *(v0 + 3296);

    return dispatch thunk of CharacteristicProtocol.mtu.getter(AssociatedTypeWitness, AssociatedConformanceWitness);
  }
}

uint64_t sub_100C429E0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 3432);
  v6 = *v2;
  v4[430] = v1;

  v7 = v4[374];
  if (v1)
  {
    v8 = sub_100C441EC;
  }

  else
  {
    v4[431] = a1;
    v8 = sub_100C42B1C;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100C42B1C()
{
  v1 = v0[431];
  v2 = v0[426];
  v3 = v0[425];
  v4 = fragment(data:mtu:)();
  v0[432] = v4;
  v5 = async function pointer to dispatch thunk of CharacteristicProtocol.writeWithoutResponse(data:)[1];
  v6 = swift_task_alloc();
  v0[433] = v6;
  *v6 = v0;
  v6[1] = sub_100C42BD4;
  v7 = v0[428];
  v8 = v0[427];
  v9 = v0[412];

  return dispatch thunk of CharacteristicProtocol.writeWithoutResponse(data:)(v4, v8, v7);
}

uint64_t sub_100C42BD4()
{
  v2 = *v1;
  v3 = *(*v1 + 3464);
  v9 = *v1;
  *(*v1 + 3472) = v0;

  if (v0)
  {
    v4 = *(v2 + 2992);
    v5 = sub_100C442B4;
  }

  else
  {
    v6 = *(v2 + 3456);
    v7 = *(v2 + 2992);

    v5 = sub_100C42CFC;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}