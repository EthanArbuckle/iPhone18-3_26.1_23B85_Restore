unint64_t sub_10002FDD0()
{
  result = qword_100090DD8;
  if (!qword_100090DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100090DD8);
  }

  return result;
}

uint64_t Query.Ping.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = type metadata accessor for UUID();
  v20 = *(v4 - 8);
  v5 = *(v20 + 64);
  __chkstk_darwin(v4);
  v23 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100007CCC(&qword_1000871B0, &qword_100064B50);
  v21 = *(v7 - 8);
  v8 = *(v21 + 64);
  __chkstk_darwin(v7);
  v10 = &v19 - v9;
  v11 = type metadata accessor for Query.Ping(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  sub_100007AB4(a1, a1[3]);
  sub_10002FDD0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v16 = v20;
    v17 = v22;
    sub_10002FAE4(&qword_1000871B8, &type metadata accessor for UUID);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v21 + 8))(v10, v7);
    (*(v16 + 32))(v14, v23, v4);
    sub_10002FA7C(v14, v17, type metadata accessor for Query.Ping);
  }

  return sub_100007F1C(a1);
}

uint64_t sub_1000300C0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  a2[3] = type metadata accessor for Query(0);
  a2[4] = sub_10002FAE4(&qword_100086AA0, type metadata accessor for Query);
  a2[5] = sub_10002FAE4(&qword_100087198, type metadata accessor for Query);
  v5 = sub_10001A798(a2);
  sub_10002FC8C(v2, v5, type metadata accessor for Query.Ping);
  v6 = *(*(a1 - 8) + 56);

  return v6(v5, 0, 1, a1);
}

unint64_t sub_100030228()
{
  sub_10002FAE4(&qword_100087460, type metadata accessor for Query.Ping);

  return static MessageProtocol.xpcKey.getter();
}

uint64_t Query.StateQuery.asCodableEnum.getter@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = type metadata accessor for Query(0);
  a1[4] = sub_10002FAE4(&qword_100086AA0, type metadata accessor for Query);
  a1[5] = sub_10002FAE4(&qword_100087198, type metadata accessor for Query);
  v2 = sub_10001A798(a1);
  v3 = type metadata accessor for Query.Ping(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(v2, 1, 1, v3);
}

uint64_t sub_10003037C(uint64_t a1)
{
  v2 = sub_100030438();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000303B8(uint64_t a1)
{
  v2 = sub_100030438();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_100030438()
{
  result = qword_100090DE0;
  if (!qword_100090DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100090DE0);
  }

  return result;
}

unint64_t sub_1000304D0()
{
  sub_10003311C();

  return static MessageProtocol.xpcKey.getter();
}

uint64_t sub_10003050C(uint64_t a1)
{
  v2 = sub_1000306C4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100030548(uint64_t a1)
{
  v2 = sub_1000306C4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t QueryResponse.Error.encode(to:)(void *a1)
{
  v2 = sub_100007CCC(&qword_1000871C8, &qword_100064B60);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  sub_100007AB4(a1, a1[3]);
  sub_1000306C4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_1000306C4()
{
  result = qword_100090DE8;
  if (!qword_100090DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100090DE8);
  }

  return result;
}

uint64_t QueryResponse.Error.init(from:)(uint64_t *a1)
{
  v3 = sub_100007CCC(&qword_1000871D0, &qword_100064B68);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11 - v6;
  v8 = a1[4];
  v9 = sub_100007AB4(a1, a1[3]);
  sub_1000306C4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v9 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v4 + 8))(v7, v3);
  }

  sub_100007F1C(a1);
  return v9;
}

uint64_t sub_100030874@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_100007CCC(&qword_1000871D0, &qword_100064B68);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  sub_100007AB4(a1, a1[3]);
  sub_1000306C4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007F1C(a1);
  }

  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v13 = v12;
  (*(v6 + 8))(v9, v5);
  result = sub_100007F1C(a1);
  *a2 = v11;
  a2[1] = v13;
  return result;
}

uint64_t sub_1000309F0(void *a1)
{
  v3 = sub_100007CCC(&qword_1000871C8, &qword_100064B60);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  sub_100007AB4(a1, a1[3]);
  sub_1000306C4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_100030B2C()
{
  sub_10001AC38();

  return static ResponseMessageProtocol.xpcKey.getter();
}

uint64_t Report.PingReport.sessionUUID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_100030BD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x556E6F6973736573 && a2 == 0xEB00000000444955)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_100030C64(uint64_t a1)
{
  v2 = sub_100030EA0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100030CA0(uint64_t a1)
{
  v2 = sub_100030EA0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100030D20(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v6 = sub_100007CCC(a2, a3);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v13 - v9;
  v11 = a1[4];
  sub_100007AB4(a1, a1[3]);
  a4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for UUID();
  sub_10002FAE4(&qword_1000871A8, &type metadata accessor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_100030EA0()
{
  result = qword_100090DF0;
  if (!qword_100090DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100090DF0);
  }

  return result;
}

uint64_t QueryResponse.PingResponse.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = type metadata accessor for UUID();
  v20 = *(v4 - 8);
  v5 = *(v20 + 64);
  __chkstk_darwin(v4);
  v23 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100007CCC(&qword_1000871E0, &qword_100064B78);
  v21 = *(v7 - 8);
  v8 = *(v21 + 64);
  __chkstk_darwin(v7);
  v10 = &v19 - v9;
  v11 = type metadata accessor for QueryResponse.PingResponse(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  sub_100007AB4(a1, a1[3]);
  sub_100030EA0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v16 = v20;
    v17 = v22;
    sub_10002FAE4(&qword_1000871B8, &type metadata accessor for UUID);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v21 + 8))(v10, v7);
    (*(v16 + 32))(v14, v23, v4);
    sub_10002FA7C(v14, v17, type metadata accessor for QueryResponse.PingResponse);
  }

  return sub_100007F1C(a1);
}

uint64_t sub_1000311B0(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Report.PingReport.init(sessionUUID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_1000312B4(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v8 = sub_100007CCC(a4, a5);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v15 - v11;
  v13 = a1[4];
  sub_100007AB4(a1, a1[3]);
  a6();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for UUID();
  sub_10002FAE4(&qword_1000871A8, &type metadata accessor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v9 + 8))(v12, v8);
}

unint64_t sub_100031434()
{
  sub_10002FAE4(&qword_100086A88, type metadata accessor for QueryResponse.PingResponse);

  return static ResponseMessageProtocol.xpcKey.getter();
}

uint64_t sub_1000314A0(uint64_t a1)
{
  v2 = sub_10003167C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000314DC(uint64_t a1)
{
  v2 = sub_10003167C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10003155C(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v6 = sub_100007CCC(a2, a3);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v13 - v9;
  v11 = a1[4];
  sub_100007AB4(a1, a1[3]);
  a4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_10003167C()
{
  result = qword_100090DF8;
  if (!qword_100090DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100090DF8);
  }

  return result;
}

uint64_t sub_100031714(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v8 = sub_100007CCC(a4, a5);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v15 - v11;
  v13 = a1[4];
  sub_100007AB4(a1, a1[3]);
  a6();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  return (*(v9 + 8))(v12, v8);
}

unint64_t sub_100031834()
{
  sub_1000330C8();

  return static ResponseMessageProtocol.xpcKey.getter();
}

uint64_t sub_100031870(uint64_t a1)
{
  v2 = sub_100031A30();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000318AC(uint64_t a1)
{
  v2 = sub_100031A30();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t QueryResponse.ServiceState.encode(to:)(void *a1, char a2)
{
  v4 = sub_100007CCC(&qword_1000871F0, &qword_100064B88);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v11[-v7];
  v9 = a1[4];
  sub_100007AB4(a1, a1[3]);
  sub_100031A30();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11[15] = a2;
  sub_100023ADC();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_100031A30()
{
  result = qword_100090E00[0];
  if (!qword_100090E00[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100090E00);
  }

  return result;
}

void *sub_100031A9C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100031B20(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_100031AE4()
{
  sub_100031E3C();

  return static ResponseMessageProtocol.xpcKey.getter();
}

void *sub_100031B20(uint64_t *a1)
{
  v3 = sub_100007CCC(&qword_100087468, &unk_100065890);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  v8 = a1[4];
  v9 = sub_100007AB4(a1, a1[3]);
  sub_100031A30();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100007F1C(a1);
  }

  else
  {
    sub_100024D50();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v7, v3);
    v9 = v11[15];
    sub_100007F1C(a1);
  }

  return v9;
}

uint64_t sub_100031C90(uint64_t a1)
{
  *(a1 + 8) = sub_10002FAE4(&qword_100086AA0, type metadata accessor for Query);
  result = sub_10002FAE4(&qword_100087198, type metadata accessor for Query);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100031D5C(uint64_t a1)
{
  result = sub_10002FAE4(&qword_100087220, type metadata accessor for Query.Ping);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100031DB4(uint64_t a1)
{
  *(a1 + 8) = sub_10002FAE4(&qword_100087190, type metadata accessor for Query.Ping);
  result = sub_10002FAE4(&qword_100087168, type metadata accessor for Query.Ping);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100031E3C()
{
  result = qword_100087228;
  if (!qword_100087228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100087228);
  }

  return result;
}

unint64_t sub_100031E90(uint64_t a1)
{
  result = sub_100031EB8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100031EB8()
{
  result = qword_100087258;
  if (!qword_100087258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100087258);
  }

  return result;
}

unint64_t sub_100031F38(uint64_t a1)
{
  result = sub_100031F60();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100031F60()
{
  result = qword_100087260;
  if (!qword_100087260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100087260);
  }

  return result;
}

unint64_t sub_100031FE0()
{
  result = qword_100087268;
  if (!qword_100087268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100087268);
  }

  return result;
}

unint64_t sub_100032034()
{
  result = qword_100087270;
  if (!qword_100087270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100087270);
  }

  return result;
}

uint64_t sub_100032088(uint64_t a1)
{
  result = sub_10002FAE4(&qword_100087278, type metadata accessor for QueryResponse.PingResponse);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000320E0(uint64_t a1)
{
  *(a1 + 8) = sub_10002FAE4(&qword_100087280, type metadata accessor for QueryResponse.PingResponse);
  result = sub_10002FAE4(&qword_100087288, type metadata accessor for QueryResponse.PingResponse);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100032164(uint64_t a1)
{
  result = sub_10003218C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10003218C()
{
  result = qword_100087290;
  if (!qword_100087290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100087290);
  }

  return result;
}

unint64_t sub_10003220C()
{
  result = qword_100087298;
  if (!qword_100087298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100087298);
  }

  return result;
}

unint64_t sub_100032260()
{
  result = qword_1000872A0;
  if (!qword_1000872A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000872A0);
  }

  return result;
}

unint64_t sub_1000322B4(uint64_t a1)
{
  result = sub_1000322DC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000322DC()
{
  result = qword_1000872A8;
  if (!qword_1000872A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000872A8);
  }

  return result;
}

uint64_t sub_10003235C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100032398()
{
  result = qword_1000872B0;
  if (!qword_1000872B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000872B0);
  }

  return result;
}

unint64_t sub_1000323EC()
{
  result = qword_1000872B8;
  if (!qword_1000872B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000872B8);
  }

  return result;
}

uint64_t sub_100032454(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Query.Ping(0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000324D4(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for Query.Ping(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_100032554()
{
  v0 = type metadata accessor for Query.Ping(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t sub_100032620(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000326A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100032714()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_100032834()
{
  result = qword_100091CC0[0];
  if (!qword_100091CC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100091CC0);
  }

  return result;
}

unint64_t sub_10003288C()
{
  result = qword_100091ED0[0];
  if (!qword_100091ED0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100091ED0);
  }

  return result;
}

unint64_t sub_1000328E4()
{
  result = qword_1000920E0[0];
  if (!qword_1000920E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000920E0);
  }

  return result;
}

unint64_t sub_10003293C()
{
  result = qword_1000922F0[0];
  if (!qword_1000922F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000922F0);
  }

  return result;
}

unint64_t sub_100032994()
{
  result = qword_100092600[0];
  if (!qword_100092600[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100092600);
  }

  return result;
}

unint64_t sub_1000329EC()
{
  result = qword_100092810[0];
  if (!qword_100092810[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100092810);
  }

  return result;
}

unint64_t sub_100032A44()
{
  result = qword_100092B20[0];
  if (!qword_100092B20[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100092B20);
  }

  return result;
}

unint64_t sub_100032A9C()
{
  result = qword_100092C30;
  if (!qword_100092C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100092C30);
  }

  return result;
}

unint64_t sub_100032AF4()
{
  result = qword_100092C38[0];
  if (!qword_100092C38[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100092C38);
  }

  return result;
}

unint64_t sub_100032B4C()
{
  result = qword_100092CC0;
  if (!qword_100092CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100092CC0);
  }

  return result;
}

unint64_t sub_100032BA4()
{
  result = qword_100092CC8[0];
  if (!qword_100092CC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100092CC8);
  }

  return result;
}

unint64_t sub_100032BFC()
{
  result = qword_100092D50;
  if (!qword_100092D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100092D50);
  }

  return result;
}

unint64_t sub_100032C54()
{
  result = qword_100092D58[0];
  if (!qword_100092D58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100092D58);
  }

  return result;
}

unint64_t sub_100032CAC()
{
  result = qword_100092DE0;
  if (!qword_100092DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100092DE0);
  }

  return result;
}

unint64_t sub_100032D04()
{
  result = qword_100092DE8[0];
  if (!qword_100092DE8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100092DE8);
  }

  return result;
}

unint64_t sub_100032D5C()
{
  result = qword_100092E70;
  if (!qword_100092E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100092E70);
  }

  return result;
}

unint64_t sub_100032DB4()
{
  result = qword_100092E78;
  if (!qword_100092E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100092E78);
  }

  return result;
}

unint64_t sub_100032E0C()
{
  result = qword_100092F00;
  if (!qword_100092F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100092F00);
  }

  return result;
}

unint64_t sub_100032E64()
{
  result = qword_100092F08[0];
  if (!qword_100092F08[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100092F08);
  }

  return result;
}

unint64_t sub_100032EBC()
{
  result = qword_100092F90;
  if (!qword_100092F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100092F90);
  }

  return result;
}

unint64_t sub_100032F14()
{
  result = qword_100092F98[0];
  if (!qword_100092F98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100092F98);
  }

  return result;
}

unint64_t sub_100032F6C()
{
  result = qword_100093020;
  if (!qword_100093020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100093020);
  }

  return result;
}

unint64_t sub_100032FC4()
{
  result = qword_100093028[0];
  if (!qword_100093028[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100093028);
  }

  return result;
}

unint64_t sub_10003301C()
{
  result = qword_1000930B0;
  if (!qword_1000930B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000930B0);
  }

  return result;
}

unint64_t sub_100033074()
{
  result = qword_1000930B8[0];
  if (!qword_1000930B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000930B8);
  }

  return result;
}

unint64_t sub_1000330C8()
{
  result = qword_100087450;
  if (!qword_100087450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100087450);
  }

  return result;
}

unint64_t sub_10003311C()
{
  result = qword_100087458;
  if (!qword_100087458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100087458);
  }

  return result;
}

uint64_t sub_100033188()
{
  v1 = 0x5365636976726573;
  if (*v0 != 1)
  {
    v1 = 0x506E6F6973736573;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1735289200;
  }
}

uint64_t sub_1000331EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100035C30(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100033214(uint64_t a1)
{
  v2 = sub_100033984();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100033250(uint64_t a1)
{
  v2 = sub_100033984();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10003328C(uint64_t a1)
{
  v2 = sub_100033B28();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000332C8(uint64_t a1)
{
  v2 = sub_100033B28();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100033304(uint64_t a1)
{
  v2 = sub_100033A80();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100033340(uint64_t a1)
{
  v2 = sub_100033A80();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10003337C(uint64_t a1)
{
  v2 = sub_1000339D8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000333B8(uint64_t a1)
{
  v2 = sub_1000339D8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t Report.encode(to:)(void *a1)
{
  v2 = sub_100007CCC(&qword_100087470, &qword_1000658A0);
  v39 = *(v2 - 8);
  v40 = v2;
  v3 = *(v39 + 64);
  __chkstk_darwin(v2);
  v38 = &v32 - v4;
  v5 = sub_100007CCC(&qword_100087478, &qword_1000658A8);
  v36 = *(v5 - 8);
  v37 = v5;
  v6 = *(v36 + 64);
  __chkstk_darwin(v5);
  v34 = &v32 - v7;
  v35 = sub_100007CCC(&qword_100087480, &qword_1000658B0);
  v33 = *(v35 - 8);
  v8 = *(v33 + 64);
  __chkstk_darwin(v35);
  v10 = &v32 - v9;
  v32 = type metadata accessor for Report.PingReport(0);
  v11 = *(*(v32 - 8) + 64);
  __chkstk_darwin(v32);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Report(0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_100007CCC(&qword_100087488, &qword_1000658B8);
  v18 = *(v42 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v42);
  v21 = &v32 - v20;
  v22 = a1[4];
  sub_100007AB4(a1, a1[3]);
  sub_100033984();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_1000346B0(v41, v17, type metadata accessor for Report);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v24 = *v17;
      v45 = 1;
      sub_100033A80();
      v25 = v34;
      v26 = v42;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v44 = v24;
      sub_100033AD4();
      v27 = v37;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v28 = v36;
    }

    else
    {
      v46 = 2;
      sub_1000339D8();
      v25 = v38;
      v26 = v42;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      sub_100033A2C();
      v27 = v40;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v28 = v39;
    }

    (*(v28 + 8))(v25, v27);
    return (*(v18 + 8))(v21, v26);
  }

  else
  {
    sub_100034474(v17, v13, type metadata accessor for Report.PingReport);
    v43 = 0;
    sub_100033B28();
    v29 = v42;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    sub_100034530(&qword_1000874A0, type metadata accessor for Report.PingReport);
    v30 = v35;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v33 + 8))(v10, v30);
    sub_100033B7C(v13);
    return (*(v18 + 8))(v21, v29);
  }
}

unint64_t sub_100033984()
{
  result = qword_100093140;
  if (!qword_100093140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100093140);
  }

  return result;
}

unint64_t sub_1000339D8()
{
  result = qword_100093148;
  if (!qword_100093148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100093148);
  }

  return result;
}

unint64_t sub_100033A2C()
{
  result = qword_100087490;
  if (!qword_100087490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100087490);
  }

  return result;
}

unint64_t sub_100033A80()
{
  result = qword_100093150;
  if (!qword_100093150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100093150);
  }

  return result;
}

unint64_t sub_100033AD4()
{
  result = qword_100087498;
  if (!qword_100087498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100087498);
  }

  return result;
}

unint64_t sub_100033B28()
{
  result = qword_100093158;
  if (!qword_100093158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100093158);
  }

  return result;
}

uint64_t sub_100033B7C(uint64_t a1)
{
  v2 = type metadata accessor for Report.PingReport(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Report.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a2;
  v64 = sub_100007CCC(&qword_1000874A8, &qword_1000658C0);
  v69 = *(v64 - 8);
  v3 = *(v69 + 64);
  __chkstk_darwin(v64);
  v73 = &v60 - v4;
  v5 = sub_100007CCC(&qword_1000874B0, &qword_1000658C8);
  v6 = *(v5 - 8);
  v67 = v5;
  v68 = v6;
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v72 = &v60 - v8;
  v9 = sub_100007CCC(&qword_1000874B8, &qword_1000658D0);
  v65 = *(v9 - 8);
  v66 = v9;
  v10 = *(v65 + 64);
  __chkstk_darwin(v9);
  v70 = &v60 - v11;
  v71 = sub_100007CCC(&qword_1000874C0, &unk_1000658D8);
  v75 = *(v71 - 8);
  v12 = *(v75 + 64);
  __chkstk_darwin(v71);
  v14 = &v60 - v13;
  v15 = type metadata accessor for Report(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15);
  v19 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v22 = &v60 - v21;
  v23 = __chkstk_darwin(v20);
  v25 = &v60 - v24;
  __chkstk_darwin(v23);
  v27 = &v60 - v26;
  v29 = a1[3];
  v28 = a1[4];
  v77 = a1;
  sub_100007AB4(a1, v29);
  sub_100033984();
  v30 = v76;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v30)
  {
    v60 = v22;
    v61 = v19;
    v62 = v25;
    v63 = v27;
    v31 = v70;
    v32 = v71;
    v33 = v72;
    v34 = v73;
    v76 = v15;
    v35 = v74;
    v36 = KeyedDecodingContainer.allKeys.getter();
    v37 = *(v36 + 16);
    if (!v37 || ((v38 = *(v36 + 32), v37 == 1) ? (v39 = v38 == 3) : (v39 = 1), v39))
    {
      v40 = v14;
      v41 = type metadata accessor for DecodingError();
      swift_allocError();
      v43 = v42;
      v44 = *(sub_100007CCC(&qword_100086B20, &unk_100061510) + 48);
      *v43 = v76;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v41 - 8) + 104))(v43, enum case for DecodingError.typeMismatch(_:), v41);
      swift_willThrow();
      (*(v75 + 8))(v40, v32);
      swift_unknownObjectRelease();
    }

    else
    {
      if (*(v36 + 32))
      {
        v70 = v36;
        if (v38 == 1)
        {
          v80 = 1;
          sub_100033A80();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v45 = v14;
          v46 = v75;
          v49 = v35;
          v50 = v45;
          sub_1000344DC();
          v51 = v67;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          (*(v68 + 8))(v33, v51);
          (*(v46 + 8))(v50, v32);
          swift_unknownObjectRelease();
          v58 = v60;
          *v60 = v79;
        }

        else
        {
          v81 = 2;
          sub_1000339D8();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v47 = v14;
          v49 = v35;
          v48 = v75;
          v55 = v47;
          sub_100034420();
          v56 = v64;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          (*(v69 + 8))(v34, v56);
          (*(v48 + 8))(v55, v32);
          swift_unknownObjectRelease();
          v58 = v61;
        }

        swift_storeEnumTagMultiPayload();
        v59 = v58;
        v54 = v63;
        sub_100034474(v59, v63, type metadata accessor for Report);
      }

      else
      {
        v78 = 0;
        sub_100033B28();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        type metadata accessor for Report.PingReport(0);
        sub_100034530(&qword_1000874D8, type metadata accessor for Report.PingReport);
        v52 = v62;
        v53 = v66;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        (*(v65 + 8))(v31, v53);
        (*(v75 + 8))(v14, v32);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v54 = v63;
        sub_100034474(v52, v63, type metadata accessor for Report);
        v49 = v35;
      }

      sub_100034474(v54, v49, type metadata accessor for Report);
    }
  }

  return sub_100007F1C(v77);
}

unint64_t sub_100034420()
{
  result = qword_1000874C8;
  if (!qword_1000874C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000874C8);
  }

  return result;
}

uint64_t sub_100034474(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1000344DC()
{
  result = qword_1000874D0;
  if (!qword_1000874D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000874D0);
  }

  return result;
}

uint64_t sub_100034530(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t Report.PingReport.asCodableEnum.getter@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = type metadata accessor for Report(0);
  a1[4] = sub_100034530(&unk_100087920, type metadata accessor for Report);
  a1[5] = sub_100034530(&qword_1000874E0, type metadata accessor for Report);
  v3 = sub_10001A798(a1);
  sub_1000346B0(v1, v3, type metadata accessor for Report.PingReport);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1000346B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100034718(uint64_t a1)
{
  v2 = sub_100034908();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100034754(uint64_t a1)
{
  v2 = sub_100034908();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t Report.PingReport.encode(to:)(void *a1)
{
  v2 = sub_100007CCC(&qword_1000874E8, &qword_1000658E8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  sub_100007AB4(a1, a1[3]);
  sub_100034908();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for UUID();
  sub_100034530(&qword_1000871A8, &type metadata accessor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_100034908()
{
  result = qword_100093160;
  if (!qword_100093160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100093160);
  }

  return result;
}

uint64_t Report.PingReport.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = type metadata accessor for UUID();
  v20 = *(v4 - 8);
  v5 = *(v20 + 64);
  __chkstk_darwin(v4);
  v23 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100007CCC(&qword_1000874F0, &qword_1000658F0);
  v21 = *(v7 - 8);
  v8 = *(v21 + 64);
  __chkstk_darwin(v7);
  v10 = &v19 - v9;
  v11 = type metadata accessor for Report.PingReport(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  sub_100007AB4(a1, a1[3]);
  sub_100034908();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v16 = v20;
    v17 = v22;
    sub_100034530(&qword_1000871B8, &type metadata accessor for UUID);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v21 + 8))(v10, v7);
    (*(v16 + 32))(v14, v23, v4);
    sub_100034474(v14, v17, type metadata accessor for Report.PingReport);
  }

  return sub_100007F1C(a1);
}

unint64_t sub_100034C10()
{
  sub_100034530(&qword_100087708, type metadata accessor for Report.PingReport);

  return static MessageProtocol.xpcKey.getter();
}

uint64_t Report.ServiceState.asCodableEnum.getter@<X0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  a2[3] = type metadata accessor for Report(0);
  a2[4] = sub_100034530(&unk_100087920, type metadata accessor for Report);
  a2[5] = sub_100034530(&qword_1000874E0, type metadata accessor for Report);
  *sub_10001A798(a2) = a1;

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_100034D40(uint64_t a1)
{
  v2 = sub_100034F00();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100034D7C(uint64_t a1)
{
  v2 = sub_100034F00();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t Report.ServiceState.encode(to:)(void *a1, char a2)
{
  v4 = sub_100007CCC(&qword_1000874F8, &qword_1000658F8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v11[-v7];
  v9 = a1[4];
  sub_100007AB4(a1, a1[3]);
  sub_100034F00();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11[15] = a2;
  sub_100023ADC();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_100034F00()
{
  result = qword_100093168;
  if (!qword_100093168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100093168);
  }

  return result;
}

uint64_t sub_100034F6C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  a1[3] = type metadata accessor for Report(0);
  a1[4] = sub_100034530(&unk_100087920, type metadata accessor for Report);
  a1[5] = sub_100034530(&qword_1000874E0, type metadata accessor for Report);
  *sub_10001A798(a1) = v3;

  return swift_storeEnumTagMultiPayload();
}

void *sub_100035030@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100035D50(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_100035078()
{
  sub_1000370D4();

  return static MessageProtocol.xpcKey.getter();
}

uint64_t Report.SessionPing.asCodableEnum.getter@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = type metadata accessor for Report(0);
  a1[4] = sub_100034530(&unk_100087920, type metadata accessor for Report);
  a1[5] = sub_100034530(&qword_1000874E0, type metadata accessor for Report);
  sub_10001A798(a1);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_100035170(uint64_t a1)
{
  v2 = sub_100035EC0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000351AC(uint64_t a1)
{
  v2 = sub_100035EC0();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_100035270()
{
  sub_10001A29C();

  return static MessageProtocol.xpcKey.getter();
}

uint64_t sub_1000352AC(uint64_t a1)
{
  v2 = sub_100035F14();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000352E8(uint64_t a1)
{
  v2 = sub_100035F14();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ReportResponse.ErrorResponse.encode(to:)(void *a1)
{
  v2 = sub_100007CCC(&qword_100087508, &qword_100065908);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  sub_100007AB4(a1, a1[3]);
  sub_100035F14();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v3 + 8))(v6, v2);
}

uint64_t ReportResponse.ErrorResponse.init(from:)(uint64_t *a1)
{
  v3 = sub_100007CCC(&qword_100087510, &qword_100065910);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11 - v6;
  v8 = a1[4];
  v9 = sub_100007AB4(a1, a1[3]);
  sub_100035F14();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v9 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v4 + 8))(v7, v3);
  }

  sub_100007F1C(a1);
  return v9;
}

uint64_t sub_1000355C0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_100007CCC(&qword_100087510, &qword_100065910);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  sub_100007AB4(a1, a1[3]);
  sub_100035F14();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007F1C(a1);
  }

  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v13 = v12;
  (*(v6 + 8))(v9, v5);
  result = sub_100007F1C(a1);
  *a2 = v11;
  a2[1] = v13;
  return result;
}

uint64_t sub_10003573C(void *a1)
{
  v3 = sub_100007CCC(&qword_100087508, &qword_100065908);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  sub_100007AB4(a1, a1[3]);
  sub_100035F14();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_100035878()
{
  sub_100037080();

  return static ResponseMessageProtocol.xpcKey.getter();
}

uint64_t sub_1000358B4(uint64_t a1)
{
  v2 = sub_100035F68();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000358F0(uint64_t a1)
{
  v2 = sub_100035F68();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100035970(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v6 = sub_100007CCC(a2, a3);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v13 - v9;
  v11 = a1[4];
  sub_100007AB4(a1, a1[3]);
  a4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_100035AD4(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v8 = sub_100007CCC(a4, a5);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v15 - v11;
  v13 = a1[4];
  sub_100007AB4(a1, a1[3]);
  a6();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  return (*(v9 + 8))(v12, v8);
}

unint64_t sub_100035BF4()
{
  sub_100036044();

  return static ResponseMessageProtocol.xpcKey.getter();
}

uint64_t sub_100035C30(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1735289200 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x5365636976726573 && a2 == 0xEC00000065746174 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x506E6F6973736573 && a2 == 0xEB00000000676E69)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

void *sub_100035D50(uint64_t *a1)
{
  v3 = sub_100007CCC(&unk_100087710, &qword_1000665C0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  v8 = a1[4];
  v9 = sub_100007AB4(a1, a1[3]);
  sub_100034F00();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100007F1C(a1);
  }

  else
  {
    sub_100024D50();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v7, v3);
    v9 = v11[15];
    sub_100007F1C(a1);
  }

  return v9;
}

unint64_t sub_100035EC0()
{
  result = qword_100093170;
  if (!qword_100093170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100093170);
  }

  return result;
}

unint64_t sub_100035F14()
{
  result = qword_100093178;
  if (!qword_100093178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100093178);
  }

  return result;
}

unint64_t sub_100035F68()
{
  result = qword_100093180[0];
  if (!qword_100093180[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100093180);
  }

  return result;
}

uint64_t sub_100035FBC(uint64_t a1)
{
  *(a1 + 8) = sub_100034530(&unk_100087920, type metadata accessor for Report);
  result = sub_100034530(&qword_1000874E0, type metadata accessor for Report);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100036044()
{
  result = qword_100087520;
  if (!qword_100087520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100087520);
  }

  return result;
}

uint64_t sub_100036098(uint64_t a1)
{
  result = sub_100034530(&qword_100087550, type metadata accessor for Report.PingReport);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000360F0(uint64_t a1)
{
  *(a1 + 8) = sub_100034530(&qword_1000874D8, type metadata accessor for Report.PingReport);
  result = sub_100034530(&qword_1000874A0, type metadata accessor for Report.PingReport);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100036174(uint64_t a1)
{
  result = sub_10003619C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10003619C()
{
  result = qword_100087580;
  if (!qword_100087580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100087580);
  }

  return result;
}

unint64_t sub_10003621C(uint64_t a1)
{
  result = sub_100036244();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100036244()
{
  result = qword_1000875B0;
  if (!qword_1000875B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000875B0);
  }

  return result;
}

unint64_t sub_1000362C4(uint64_t a1)
{
  result = sub_1000362EC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000362EC()
{
  result = qword_1000875B8;
  if (!qword_1000875B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000875B8);
  }

  return result;
}

unint64_t sub_10003636C()
{
  result = qword_1000875C0;
  if (!qword_1000875C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000875C0);
  }

  return result;
}

unint64_t sub_1000363C0(uint64_t a1)
{
  result = sub_1000363E8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000363E8()
{
  result = qword_1000875C8;
  if (!qword_1000875C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000875C8);
  }

  return result;
}

uint64_t sub_100036468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1000364A4()
{
  result = qword_1000875D0;
  if (!qword_1000875D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000875D0);
  }

  return result;
}

unint64_t sub_1000364F8()
{
  result = qword_1000875D8;
  if (!qword_1000875D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000875D8);
  }

  return result;
}

uint64_t sub_10003659C()
{
  result = type metadata accessor for Report.PingReport(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100036618(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100036698(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

unint64_t sub_1000367EC()
{
  result = qword_100093E30[0];
  if (!qword_100093E30[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100093E30);
  }

  return result;
}

unint64_t sub_100036844()
{
  result = qword_100094040[0];
  if (!qword_100094040[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100094040);
  }

  return result;
}

unint64_t sub_10003689C()
{
  result = qword_100094250[0];
  if (!qword_100094250[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100094250);
  }

  return result;
}

unint64_t sub_1000368F4()
{
  result = qword_100094460[0];
  if (!qword_100094460[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100094460);
  }

  return result;
}

unint64_t sub_10003694C()
{
  result = qword_100094670[0];
  if (!qword_100094670[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100094670);
  }

  return result;
}

unint64_t sub_1000369A4()
{
  result = qword_100094880[0];
  if (!qword_100094880[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100094880);
  }

  return result;
}

unint64_t sub_1000369FC()
{
  result = qword_100094B90[0];
  if (!qword_100094B90[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100094B90);
  }

  return result;
}

unint64_t sub_100036A54()
{
  result = qword_100094DA0;
  if (!qword_100094DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100094DA0);
  }

  return result;
}

unint64_t sub_100036AAC()
{
  result = qword_100094DA8[0];
  if (!qword_100094DA8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100094DA8);
  }

  return result;
}

unint64_t sub_100036B04()
{
  result = qword_100094E30;
  if (!qword_100094E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100094E30);
  }

  return result;
}

unint64_t sub_100036B5C()
{
  result = qword_100094E38[0];
  if (!qword_100094E38[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100094E38);
  }

  return result;
}

unint64_t sub_100036BB4()
{
  result = qword_100094EC0;
  if (!qword_100094EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100094EC0);
  }

  return result;
}

unint64_t sub_100036C0C()
{
  result = qword_100094EC8[0];
  if (!qword_100094EC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100094EC8);
  }

  return result;
}

unint64_t sub_100036C64()
{
  result = qword_100094F50;
  if (!qword_100094F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100094F50);
  }

  return result;
}

unint64_t sub_100036CBC()
{
  result = qword_100094F58[0];
  if (!qword_100094F58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100094F58);
  }

  return result;
}

unint64_t sub_100036D14()
{
  result = qword_100094FE0;
  if (!qword_100094FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100094FE0);
  }

  return result;
}

unint64_t sub_100036D6C()
{
  result = qword_100094FE8[0];
  if (!qword_100094FE8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100094FE8);
  }

  return result;
}

unint64_t sub_100036DC4()
{
  result = qword_100095070;
  if (!qword_100095070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100095070);
  }

  return result;
}

unint64_t sub_100036E1C()
{
  result = qword_100095078;
  if (!qword_100095078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100095078);
  }

  return result;
}

unint64_t sub_100036E74()
{
  result = qword_100095100;
  if (!qword_100095100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100095100);
  }

  return result;
}

unint64_t sub_100036ECC()
{
  result = qword_100095108[0];
  if (!qword_100095108[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100095108);
  }

  return result;
}

unint64_t sub_100036F24()
{
  result = qword_100095190;
  if (!qword_100095190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100095190);
  }

  return result;
}

unint64_t sub_100036F7C()
{
  result = qword_100095198[0];
  if (!qword_100095198[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100095198);
  }

  return result;
}

unint64_t sub_100036FD4()
{
  result = qword_100095220;
  if (!qword_100095220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100095220);
  }

  return result;
}

unint64_t sub_10003702C()
{
  result = qword_100095228[0];
  if (!qword_100095228[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100095228);
  }

  return result;
}

unint64_t sub_100037080()
{
  result = qword_1000876F8;
  if (!qword_1000876F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000876F8);
  }

  return result;
}

unint64_t sub_1000370D4()
{
  result = qword_100087700;
  if (!qword_100087700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100087700);
  }

  return result;
}

uint64_t sub_10003713C()
{
  swift_beginAccess();
  v1 = *(v0 + 128);
}

uint64_t sub_100037174(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 128);
  *(v1 + 128) = a1;
}

void *sub_10003720C(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  swift_defaultActor_initialize();
  v4[15] = a2;
  v4[16] = 0;
  v4[14] = a1;
  return v4;
}

void *sub_10003725C(uint64_t a1, uint64_t a2)
{
  swift_defaultActor_initialize();
  v2[15] = a2;
  v2[16] = 0;
  v2[14] = a1;
  return v2;
}

uint64_t sub_10003729C()
{
  v2 = type metadata accessor for XPCListener.InitializationOptions();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);

  v4 = sub_100041B94();
  v5 = *v4;
  v6 = v4[1];

  static XPCListener.InitializationOptions.none.getter();
  v7 = type metadata accessor for XPCListener();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  v10 = XPCListener.init(service:targetQueue:options:incomingSessionHandler:)();
  if (!v1)
  {
    (*(*v0 + 120))(v10);
  }
}

uint64_t sub_1000373C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v95 = a3;
  v5 = sub_100007CCC(&qword_100086800, &qword_100060690);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v82 - v7;
  v9 = type metadata accessor for Logger();
  v99 = *(v9 - 8);
  v100 = v9;
  v10 = *(v99 + 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v82 - v14;
  v98 = type metadata accessor for UUID();
  v101 = *(v98 - 8);
  v16 = *(v101 + 64);
  v17 = __chkstk_darwin(v98);
  v89 = &v82 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v21 = &v82 - v20;
  v96 = v22;
  __chkstk_darwin(v19);
  v24 = &v82 - v23;
  sub_100007CCC(&qword_1000878F0, &qword_1000666F8);
  v94 = a1;
  XPCListener.IncomingSessionRequest.withUnsafeAuditToken<A>(_:)();
  v25 = v103;
  if (v103)
  {
    v93 = v8;
    v97 = a2;
    v26 = v102;
    UUID.init()();
    v27 = sub_1000568C8();
    (*(v99 + 2))(v15, v27, v100);
    v28 = *(v101 + 16);
    v86 = v101 + 16;
    v92 = v28;
    v28(v21, v24, v98);

    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.info.getter();

    v31 = os_log_type_enabled(v29, v30);
    v32 = v25;
    v33 = v24;
    v90 = v26;
    v91 = v32;
    if (v31)
    {
      v34 = swift_slowAlloc();
      v83 = v29;
      v35 = v34;
      v84 = swift_slowAlloc();
      v102 = v84;
      *v35 = 136315394;
      sub_10003E4D8(&unk_100086A90, 255, &type metadata accessor for UUID);
      v36 = v98;
      v37 = dispatch thunk of CustomStringConvertible.description.getter();
      v39 = v38;
      v40 = *(v101 + 8);
      v87 = (v101 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v88 = v40;
      v40(v21, v36);
      v41 = sub_10000728C(v37, v39, &v102);

      *(v35 + 4) = v41;
      *(v35 + 12) = 2080;
      *(v35 + 14) = sub_10000728C(v26, v32, &v102);
      v42 = v30;
      v43 = v83;
      _os_log_impl(&_mh_execute_header, v83, v42, "🔗 Report: accepting the incoming 'Report' XPC connection (ID: %s) request from the service: %s", v35, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v58 = *(v101 + 8);
      v87 = (v101 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v88 = v58;
      v58(v21, v98);
    }

    (*(v99 + 1))(v15, v100);
    v59 = v89;
    v60 = v98;
    v61 = v92;
    v92(v89, v33, v98);
    v62 = v101;
    v63 = *(v101 + 80);
    v64 = swift_allocObject();
    *(v64 + 16) = v97;
    v65 = *(v62 + 32);
    v100 = v64;
    v101 = v62 + 32;
    v85 = v33;
    v65(v64 + ((v63 + 24) & ~v63), v59, v60);
    v66 = v65;
    v99 = v65;
    v61(v59, v33, v60);
    v67 = swift_allocObject();
    v68 = v90;
    v69 = v91;
    *(v67 + 2) = v97;
    *(v67 + 3) = v68;
    *(v67 + 4) = v69;
    v66(&v67[(v63 + 40) & ~v63], v59, v60);
    swift_retain_n();

    v70 = dispatch thunk of XPCListener.IncomingSessionRequest.accept(incomingMessageHandler:cancellationHandler:)();
    v71 = type metadata accessor for TaskPriority();
    (*(*(v71 - 8) + 56))(v93, 1, 1, v71);
    v72 = v59;
    v73 = v59;
    v74 = v85;
    v92(v73, v85, v60);
    v76 = sub_10003E4D8(&unk_1000878F8, v75, type metadata accessor for ReportServer);
    v77 = (v63 + 56) & ~v63;
    v78 = (v96 + v77 + 7) & 0xFFFFFFFFFFFFFFF8;
    v79 = swift_allocObject();
    v80 = v97;
    *(v79 + 2) = v97;
    *(v79 + 3) = v76;
    *(v79 + 4) = v80;
    v81 = v91;
    *(v79 + 5) = v90;
    *(v79 + 6) = v81;
    v99(&v79[v77], v72, v60);
    *&v79[v78] = v70;
    swift_retain_n();

    sub_100008F94(0, 0, v93, &unk_100066708, v79);

    return v88(v74, v60);
  }

  else
  {
    v44 = sub_10003E6D8();
    (*(v99 + 2))(v13, v44, v100);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v102 = v48;
      *v47 = 136315138;
      v49 = sub_100041C34();
      v50 = *v49;
      v51 = v49[1];

      v52 = sub_10000728C(v50, v51, &v102);

      *(v47 + 4) = v52;
      _os_log_impl(&_mh_execute_header, v45, v46, "[🔴] 🔗 Report: rejected the incoming connection because it is missing the entitlement (%s)", v47, 0xCu);
      sub_100007F1C(v48);
    }

    (*(v99 + 1))(v13, v100);
    v102 = 0;
    v103 = 0xE000000000000000;
    _StringGuts.grow(_:)(22);

    v102 = 0xD000000000000014;
    v103 = 0x800000010006B0A0;
    v53 = sub_100041C34();
    v54 = *v53;
    v55 = v53[1];

    v56._countAndFlagsBits = v54;
    v56._object = v55;
    String.append(_:)(v56);

    dispatch thunk of XPCListener.IncomingSessionRequest.reject(reason:)();
  }
}

uint64_t sub_100037C7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v6 = v5;
  v12 = sub_100041C34();
  v14 = *v12;
  v13 = v12[1];

  sub_100048AAC(a1, a2, a3, a4, v14, v13, &type metadata for String);
  if (v6)
  {

    v16 = 0;
    v17 = 0;
  }

  else
  {

    v16 = v18;
    v17 = v19;
  }

  *a5 = v16;
  a5[1] = v17;
  return result;
}

double sub_100037D48@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v27 = a1;
  v28 = a2;
  v30 = a4;
  v6 = sub_100007CCC(&qword_100086800, &qword_100060690);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v29 = &v25 - v8;
  v9 = type metadata accessor for UUID();
  v26 = v9;
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = type metadata accessor for XPCReceivedMessage();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v15, a1, v12);
  (*(v10 + 16))(&v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v9);
  v16 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v17 = (v14 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = (*(v10 + 80) + v17 + 8) & ~*(v10 + 80);
  v19 = swift_allocObject();
  (*(v13 + 32))(v19 + v16, v15, v12);
  *(v19 + v17) = v28;
  (*(v10 + 32))(v19 + v18, &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v26);

  XPCReceivedMessage.detachHandoff()();
  v20 = type metadata accessor for TaskPriority();
  v21 = v29;
  (*(*(v20 - 8) + 56))(v29, 1, 1, v20);
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = &unk_100066738;
  v22[5] = v19;
  sub_100008F94(0, 0, v21, &unk_100066748, v22);

  v23 = v30;
  *(v30 + 32) = 0;
  result = 0.0;
  *v23 = 0u;
  v23[1] = 0u;
  return result;
}

uint64_t sub_100038060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v30 = a3;
  v31 = a4;
  v28 = a1;
  v29 = a2;
  v6 = type metadata accessor for XPCRichError();
  v26 = v6;
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v27 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100007CCC(&qword_100086800, &qword_100060690);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v26 - v15;
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  (*(v10 + 16))(v12, a5, v9);
  (*(v7 + 16))(&v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v28, v6);
  v19 = sub_10003E4D8(&unk_1000878F8, v18, type metadata accessor for ReportServer);
  v20 = (*(v10 + 80) + 56) & ~*(v10 + 80);
  v21 = (v11 + *(v7 + 80) + v20) & ~*(v7 + 80);
  v22 = swift_allocObject();
  v24 = v29;
  v23 = v30;
  *(v22 + 2) = v29;
  *(v22 + 3) = v19;
  *(v22 + 4) = v24;
  *(v22 + 5) = v23;
  *(v22 + 6) = v31;
  (*(v10 + 32))(&v22[v20], v12, v9);
  (*(v7 + 32))(&v22[v21], v27, v26);
  swift_retain_n();

  sub_100008F94(0, 0, v16, &unk_100066720, v22);
}

uint64_t sub_10003836C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a7;
  v8[10] = a8;
  v8[7] = a5;
  v8[8] = a6;
  v8[6] = a4;
  v10 = type metadata accessor for Logger();
  v8[11] = v10;
  v11 = *(v10 - 8);
  v8[12] = v11;
  v12 = *(v11 + 64) + 15;
  v8[13] = swift_task_alloc();
  v13 = type metadata accessor for HandshakeEvent();
  v8[14] = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  v8[15] = swift_task_alloc();

  return _swift_task_switch(sub_100038468, a4, 0);
}

uint64_t sub_100038468()
{
  v2 = v0[14];
  v1 = v0[15];
  v4 = v0[9];
  v3 = v0[10];
  v6 = v0[7];
  v5 = v0[8];
  v7 = *(v0[6] + 120);
  v8 = sub_100007CCC(&qword_100087910, &qword_100066728);
  v9 = *(v8 + 48);
  v10 = *(v8 + 64);
  *v1 = v6;
  *(v1 + 1) = v5;
  v11 = type metadata accessor for UUID();
  (*(*(v11 - 8) + 16))(&v1[v9], v4, v11);
  v12 = type metadata accessor for XPCRichError();
  (*(*(v12 - 8) + 16))(&v1[v10], v3, v12);
  swift_storeEnumTagMultiPayload();

  v13 = swift_task_alloc();
  v0[16] = v13;
  *v13 = v0;
  v13[1] = sub_1000385E8;
  v14 = v0[15];

  return sub_10004BC38(v14);
}

uint64_t sub_1000385E8(uint64_t a1, uint64_t a2, char a3)
{
  v9 = *v4;
  v8 = *v4;
  v10 = *(*v4 + 128);
  v11 = *v4;

  v12 = *(v8 + 120);
  if (v3)
  {
    v13 = *(v9 + 48);
    *(v9 + 152) = a3;
    *(v9 + 136) = a2;
    *(v9 + 144) = a1;
    sub_10003E5EC(v12, type metadata accessor for HandshakeEvent);

    return _swift_task_switch(sub_1000387B0, v13, 0);
  }

  else
  {
    sub_10003E5EC(v12, type metadata accessor for HandshakeEvent);
    v14 = *(v9 + 120);
    v15 = *(v9 + 104);

    v16 = *(v11 + 8);

    return v16();
  }
}

uint64_t sub_1000387B0()
{
  v31 = v0;
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v3 = *(v0 + 152);
  v5 = *(v0 + 96);
  v4 = *(v0 + 104);
  v6 = *(v0 + 88);
  sub_100007B4C();
  swift_allocError();
  *v7 = v1;
  *(v7 + 8) = v2;
  *(v7 + 16) = v3;
  swift_errorRetain();
  v8 = sub_10003E6D8();
  (*(v5 + 16))(v4, v8, v6);
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v27 = *(v0 + 96);
    v28 = *(v0 + 88);
    v29 = *(v0 + 104);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v30 = v12;
    *v11 = 136315138;
    swift_getErrorValue();
    v13 = *(v0 + 16);
    v14 = *(*(v0 + 24) - 8);
    v15 = *(v14 + 64) + 15;
    swift_task_alloc();
    (*(v14 + 16))();
    v16 = String.init<A>(describing:)();
    v18 = v17;

    v19 = sub_10000728C(v16, v18, &v30);

    *(v11 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v9, v10, "[🔴] 🔗 Report: failed to handle the XPC session lost. %s", v11, 0xCu);
    sub_100007F1C(v12);

    (*(v27 + 8))(v29, v28);
  }

  else
  {
    v21 = *(v0 + 96);
    v20 = *(v0 + 104);
    v22 = *(v0 + 88);

    (*(v21 + 8))(v20, v22);
  }

  v23 = *(v0 + 120);
  v24 = *(v0 + 104);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_100038A6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a7;
  v8[10] = a8;
  v8[7] = a5;
  v8[8] = a6;
  v8[6] = a4;
  v10 = type metadata accessor for Logger();
  v8[11] = v10;
  v11 = *(v10 - 8);
  v8[12] = v11;
  v12 = *(v11 + 64) + 15;
  v8[13] = swift_task_alloc();
  v13 = type metadata accessor for HandshakeEvent();
  v8[14] = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  v8[15] = swift_task_alloc();

  return _swift_task_switch(sub_100038B68, a4, 0);
}

uint64_t sub_100038B68()
{
  v2 = v0[14];
  v1 = v0[15];
  v4 = v0[9];
  v3 = v0[10];
  v6 = v0[7];
  v5 = v0[8];
  v7 = *(v0[6] + 120);
  v8 = sub_100007CCC(&qword_100087908, &qword_100066710);
  v9 = *(v8 + 48);
  v10 = *(v8 + 64);
  *v1 = v6;
  *(v1 + 1) = v5;
  v11 = type metadata accessor for UUID();
  (*(*(v11 - 8) + 16))(&v1[v9], v4, v11);
  *&v1[v10] = v3;
  swift_storeEnumTagMultiPayload();

  v12 = swift_task_alloc();
  v0[16] = v12;
  *v12 = v0;
  v12[1] = sub_100038CB8;
  v13 = v0[15];

  return sub_10004BC38(v13);
}

uint64_t sub_100038CB8(uint64_t a1, uint64_t a2, char a3)
{
  v9 = *v4;
  v8 = *v4;
  v10 = *(*v4 + 128);
  v11 = *v4;

  v12 = *(v8 + 120);
  if (v3)
  {
    v13 = *(v9 + 48);
    *(v9 + 152) = a3;
    *(v9 + 136) = a2;
    *(v9 + 144) = a1;
    sub_10003E5EC(v12, type metadata accessor for HandshakeEvent);

    return _swift_task_switch(sub_100038E80, v13, 0);
  }

  else
  {
    sub_10003E5EC(v12, type metadata accessor for HandshakeEvent);
    v14 = *(v9 + 120);
    v15 = *(v9 + 104);

    v16 = *(v11 + 8);

    return v16();
  }
}

uint64_t sub_100038E80()
{
  v31 = v0;
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v3 = *(v0 + 152);
  v5 = *(v0 + 96);
  v4 = *(v0 + 104);
  v6 = *(v0 + 88);
  sub_100007B4C();
  swift_allocError();
  *v7 = v1;
  *(v7 + 8) = v2;
  *(v7 + 16) = v3;
  swift_errorRetain();
  v8 = sub_10003E6D8();
  (*(v5 + 16))(v4, v8, v6);
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v27 = *(v0 + 96);
    v28 = *(v0 + 88);
    v29 = *(v0 + 104);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v30 = v12;
    *v11 = 136315138;
    swift_getErrorValue();
    v13 = *(v0 + 16);
    v14 = *(*(v0 + 24) - 8);
    v15 = *(v14 + 64) + 15;
    swift_task_alloc();
    (*(v14 + 16))();
    v16 = String.init<A>(describing:)();
    v18 = v17;

    v19 = sub_10000728C(v16, v18, &v30);

    *(v11 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v9, v10, "[🔴] 🔗 Report: failed to handle the incoming XPC session. %s", v11, 0xCu);
    sub_100007F1C(v12);

    (*(v27 + 8))(v29, v28);
  }

  else
  {
    v21 = *(v0 + 96);
    v20 = *(v0 + 104);
    v22 = *(v0 + 88);

    (*(v21 + 8))(v20, v22);
  }

  v23 = *(v0 + 120);
  v24 = *(v0 + 104);

  v25 = *(v0 + 8);

  return v25();
}

void *sub_10003913C()
{
  v1 = v0[14];

  v2 = v0[15];

  v3 = v0[16];

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_100039174()
{
  v1 = v0[14];

  v2 = v0[15];

  v3 = v0[16];

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1000391BC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10003E6D8();
  (*(v6 + 16))(v9, v10, v5);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v18[0] = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_10000728C(a2, a3, v18);
    _os_log_impl(&_mh_execute_header, v11, v12, "[🔴] 🔖 Report: %s", v13, 0xCu);
    sub_100007F1C(v14);
  }

  (*(v6 + 8))(v9, v5);

  Request.DatabaseReset.init()();
  v18[0] = v15;
  v18[1] = v16;
  sub_10003636C();
  XPCReceivedMessage.reply<A>(_:)();
}

uint64_t sub_1000393C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;
  v4 = *(*(type metadata accessor for Report.PingReport(0) - 8) + 64) + 15;
  v3[13] = swift_task_alloc();
  v5 = *(*(sub_100007CCC(&qword_100087918, &qword_100066750) - 8) + 64) + 15;
  v3[14] = swift_task_alloc();
  v6 = type metadata accessor for Report(0);
  v3[15] = v6;
  v7 = *(v6 - 8);
  v3[16] = v7;
  v8 = *(v7 + 64) + 15;
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();

  return _swift_task_switch(sub_1000394F8, 0, 0);
}

uint64_t sub_1000394F8()
{
  v1 = v0[10];
  v2 = XPCReceivedMessage.auditToken.getter();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_100041C34();
  v10 = *v9;
  v11 = v9[1];

  sub_100048AAC(v2, v4, v6, v8, v10, v11, &type metadata for String);
  v13 = v0[14];
  v12 = v0[15];
  v14 = v0[10];

  v16 = v0[5];
  v15 = v0[6];
  v0[19] = v15;
  sub_10003E4D8(&unk_100087920, 255, type metadata accessor for Report);
  XPCReceivedMessage.decode<A>(as:)();
  v24 = v0[17];
  v23 = v0[18];
  v25 = v0[14];
  (*(v0[16] + 56))(v25, 0, 1, v0[15]);
  sub_10003E584(v25, v23, type metadata accessor for Report);
  sub_10003E520(v23, v24);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v27 = *v0[17];
      v28 = swift_task_alloc();
      v0[21] = v28;
      *v28 = v0;
      v28[1] = sub_100039B98;
      v29 = v0[11];

      return sub_10003A6A8(v16, v15, v27);
    }

    else
    {
      v34 = v0[18];
      v35 = v0[10];

      Request.DatabaseReset.init()();
      sub_1000364F8();
      XPCReceivedMessage.reply<A>(_:)();
      sub_10003E5EC(v34, type metadata accessor for Report);
      v18 = v0[17];
      v17 = v0[18];
      v20 = v0[13];
      v19 = v0[14];

      v21 = v0[1];

      return v21();
    }
  }

  else
  {
    sub_10003E584(v0[17], v0[13], type metadata accessor for Report.PingReport);
    v30 = swift_task_alloc();
    v0[20] = v30;
    *v30 = v0;
    v30[1] = sub_100039960;
    v31 = v0[12];
    v32 = v0[13];
    v33 = v0[11];

    return sub_10003A108(v32, v16, v15, v31);
  }
}

uint64_t sub_100039960(uint64_t a1, uint64_t a2, char a3)
{
  v9 = *v4;
  v8 = *v4;
  v10 = *(*v4 + 160);
  v11 = *v4;

  v12 = *(v8 + 152);
  if (v3)
  {
    *(v9 + 208) = a3;
    *(v9 + 176) = a2;
    *(v9 + 184) = a1;

    v13 = sub_100039DB0;
  }

  else
  {

    v13 = sub_100039AB8;
  }

  return _swift_task_switch(v13, 0, 0);
}

uint64_t sub_100039AB8()
{
  v1 = v0[18];
  v2 = v0[13];
  v3 = v0[10];
  Request.DatabaseReset.init()();
  sub_1000364F8();
  XPCReceivedMessage.reply<A>(_:)();
  sub_10003E5EC(v2, type metadata accessor for Report.PingReport);
  sub_10003E5EC(v1, type metadata accessor for Report);
  v5 = v0[17];
  v4 = v0[18];
  v7 = v0[13];
  v6 = v0[14];

  v8 = v0[1];

  return v8();
}

uint64_t sub_100039B98(uint64_t a1, uint64_t a2, char a3)
{
  v9 = *v4;
  v8 = *v4;
  v10 = *(*v4 + 168);
  v11 = *v4;

  v12 = *(v8 + 152);
  if (v3)
  {
    *(v9 + 209) = a3;
    *(v9 + 192) = a2;
    *(v9 + 200) = a1;

    v13 = sub_100039F6C;
  }

  else
  {

    v13 = sub_100039CF0;
  }

  return _swift_task_switch(v13, 0, 0);
}

uint64_t sub_100039CF0()
{
  v1 = v0[18];
  v2 = v0[10];
  Request.DatabaseReset.init()();
  sub_1000364F8();
  XPCReceivedMessage.reply<A>(_:)();
  sub_10003E5EC(v1, type metadata accessor for Report);
  v4 = v0[17];
  v3 = v0[18];
  v6 = v0[13];
  v5 = v0[14];

  v7 = v0[1];

  return v7();
}

uint64_t sub_100039DB0()
{
  v2 = *(v0 + 176);
  v1 = *(v0 + 184);
  v3 = *(v0 + 208);
  v4 = *(v0 + 104);
  sub_100007B4C();
  swift_allocError();
  *v5 = v1;
  *(v5 + 8) = v2;
  *(v5 + 16) = v3;
  sub_10003E5EC(v4, type metadata accessor for Report.PingReport);
  v6 = *(v0 + 144);
  v7 = *(v0 + 120);
  v8 = *(v0 + 80);
  _StringGuts.grow(_:)(52);
  *(v0 + 56) = 0;
  *(v0 + 64) = 0xE000000000000000;
  v9._object = 0x800000010006B100;
  v9._countAndFlagsBits = 0xD000000000000026;
  String.append(_:)(v9);
  _print_unlocked<A, B>(_:_:)();
  v10._countAndFlagsBits = 0x726F727245202E29;
  v10._object = 0xEA0000000000203ALL;
  String.append(_:)(v10);
  swift_getErrorValue();
  v11 = *(v0 + 16);
  v12 = *(v0 + 24);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  sub_1000391BC(v8, *(v0 + 56), *(v0 + 64));

  sub_10003E5EC(v6, type metadata accessor for Report);
  v14 = *(v0 + 136);
  v13 = *(v0 + 144);
  v16 = *(v0 + 104);
  v15 = *(v0 + 112);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_100039F6C()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);
  v3 = *(v0 + 209);
  sub_100007B4C();
  swift_allocError();
  *v4 = v2;
  *(v4 + 8) = v1;
  *(v4 + 16) = v3;
  v5 = *(v0 + 144);
  v6 = *(v0 + 120);
  v7 = *(v0 + 80);
  _StringGuts.grow(_:)(52);
  *(v0 + 56) = 0;
  *(v0 + 64) = 0xE000000000000000;
  v8._object = 0x800000010006B100;
  v8._countAndFlagsBits = 0xD000000000000026;
  String.append(_:)(v8);
  _print_unlocked<A, B>(_:_:)();
  v9._countAndFlagsBits = 0x726F727245202E29;
  v9._object = 0xEA0000000000203ALL;
  String.append(_:)(v9);
  swift_getErrorValue();
  v10 = *(v0 + 16);
  v11 = *(v0 + 24);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  sub_1000391BC(v7, *(v0 + 56), *(v0 + 64));

  sub_10003E5EC(v5, type metadata accessor for Report);
  v13 = *(v0 + 136);
  v12 = *(v0 + 144);
  v15 = *(v0 + 104);
  v14 = *(v0 + 112);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_10003A108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for HandshakeEvent();
  v5[7] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[8] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v5[9] = v8;
  v9 = *(v8 - 8);
  v5[10] = v9;
  v10 = *(v9 + 64) + 15;
  v5[11] = swift_task_alloc();

  return _swift_task_switch(sub_10003A200, v4, 0);
}

uint64_t sub_10003A200()
{
  v32 = v0;
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v4 = v0[4];
  v5 = sub_10003E6D8();
  (*(v2 + 16))(v1, v5, v3);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[10];
  v9 = v0[11];
  v11 = v0[9];
  if (v8)
  {
    v13 = v0[3];
    v12 = v0[4];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v31 = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_10000728C(v13, v12, &v31);
    _os_log_impl(&_mh_execute_header, v6, v7, "[🟢] 🔖 Report: received 'Ping' from service '%s'", v14, 0xCu);
    sub_100007F1C(v15);
  }

  (*(v10 + 8))(v9, v11);
  v16 = v0[8];
  v17 = v0[5];
  v19 = v0[3];
  v18 = v0[4];
  v20 = v0[2];
  v29 = v0[7];
  v30 = *(v0[6] + 120);
  v21 = sub_100007CCC(&qword_100087930, &qword_100066768);
  v22 = *(v21 + 48);
  v23 = *(v21 + 64);
  *v16 = v19;
  *(v16 + 1) = v18;
  v24 = type metadata accessor for UUID();
  v25 = *(*(v24 - 8) + 16);
  v25(&v16[v22], v17, v24);
  v25(&v16[v23], v20, v24);
  swift_storeEnumTagMultiPayload();

  v26 = swift_task_alloc();
  v0[12] = v26;
  *v26 = v0;
  v26[1] = sub_10003A47C;
  v27 = v0[8];

  return sub_10004BC38(v27);
}

uint64_t sub_10003A47C(uint64_t a1, uint64_t a2, char a3)
{
  v8 = *v4;
  v9 = *(*v4 + 96);
  v10 = *v4;

  if (v3)
  {
    v11 = *(v8 + 64);
    v12 = *(v8 + 48);
    *(v8 + 120) = a3;
    *(v8 + 104) = a2;
    *(v8 + 112) = a1;
    sub_10003E5EC(v11, type metadata accessor for HandshakeEvent);

    return _swift_task_switch(sub_10003A630, v12, 0);
  }

  else
  {
    v13 = *(v8 + 88);
    sub_10003E5EC(*(v8 + 64), type metadata accessor for HandshakeEvent);

    v14 = *(v10 + 8);

    return v14();
  }
}

uint64_t sub_10003A630()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 64);

  v3 = *(v0 + 8);
  v5 = *(v0 + 104);
  v4 = *(v0 + 112);
  v6 = *(v0 + 120);

  return v3(v4, v5, v6);
}

uint64_t sub_10003A6A8(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 56) = a2;
  *(v4 + 64) = v3;
  *(v4 + 34) = a3;
  *(v4 + 48) = a1;
  v5 = type metadata accessor for Logger();
  *(v4 + 72) = v5;
  v6 = *(v5 - 8);
  *(v4 + 80) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 88) = swift_task_alloc();

  return _swift_task_switch(sub_10003A770, v3, 0);
}

uint64_t sub_10003A770()
{
  v25 = v0;
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = *(v0 + 72);
  v4 = *(v0 + 56);
  v5 = sub_10003E6D8();
  (*(v2 + 16))(v1, v5, v3);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 80);
    v22 = *(v0 + 72);
    v23 = *(v0 + 88);
    v9 = *(v0 + 34);
    v11 = *(v0 + 48);
    v10 = *(v0 + 56);
    v12 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v12 = 136315394;
    *(v0 + 33) = v9;
    v13 = String.init<A>(describing:)();
    v15 = sub_10000728C(v13, v14, &v24);

    *(v12 + 4) = v15;
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_10000728C(v11, v10, &v24);
    _os_log_impl(&_mh_execute_header, v6, v7, "[🟢] 🔖 Report: received 'State: %s' from service '%s", v12, 0x16u);
    swift_arrayDestroy();

    (*(v8 + 8))(v23, v22);
  }

  else
  {
    v17 = *(v0 + 80);
    v16 = *(v0 + 88);
    v18 = *(v0 + 72);

    (*(v17 + 8))(v16, v18);
  }

  v19 = *(*(v0 + 64) + 112);
  *(v0 + 96) = v19;
  v20 = (*v19 + 136) & 0xFFFFFFFFFFFFLL | 0xC446000000000000;
  *(v0 + 104) = *(*v19 + 136);
  *(v0 + 112) = v20;

  return _swift_task_switch(sub_10003A99C, v19, 0);
}

uint64_t sub_10003A99C()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 96);
  v3 = *(v0 + 64);
  (*(v0 + 104))(*(v0 + 48), *(v0 + 56));

  return _swift_task_switch(sub_10003AA14, v3, 0);
}

uint64_t sub_10003AA14()
{
  v1 = *(v0 + 40);
  *(v0 + 120) = v1;
  if (v1)
  {
    v2 = *(*v1 + 168);
    v8 = (v2 + *v2);
    v3 = v2[1];
    v4 = swift_task_alloc();
    *(v0 + 128) = v4;
    *v4 = v0;
    v4[1] = sub_10003ABB8;

    return v8();
  }

  else
  {
    v6 = *(v0 + 88);
    *(v0 + 16) = xmmword_1000604E0;
    *(v0 + 32) = 6;
    sub_100007B4C();
    swift_willThrowTypedImpl();

    v7 = *(v0 + 8);

    return v7(3, 0, 6);
  }
}

uint64_t sub_10003ABB8(char a1)
{
  v2 = *(*v1 + 128);
  v3 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 35) = a1;

  return _swift_task_switch(sub_10003ACD0, v3, 0);
}

uint64_t sub_10003ACD0()
{
  if (*(v0 + 35) == 1)
  {
    v1 = *(v0 + 120);
    v2 = (*v1 + 184) & 0xFFFFFFFFFFFFLL | 0x92D4000000000000;
    *(v0 + 136) = *(*v1 + 184);
    *(v0 + 144) = v2;

    return _swift_task_switch(sub_10003ADDC, v1, 0);
  }

  else
  {
    v3 = *(v0 + 120);

    v4 = *(v0 + 88);
    *(v0 + 16) = xmmword_1000604E0;
    *(v0 + 32) = 6;
    sub_100007B4C();
    swift_willThrowTypedImpl();

    v5 = *(v0 + 8);

    return v5(3, 0, 6);
  }
}

uint64_t sub_10003ADDC()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 120);
  v3 = *(v0 + 64);
  (*(v0 + 136))(*(v0 + 34));

  return _swift_task_switch(sub_10003AE50, v3, 0);
}

uint64_t sub_10003AE50()
{
  v1 = v0[15];
  v2 = v0[11];

  v3 = v0[1];

  return v3();
}

uint64_t sub_10003AEC0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_1000082B0;

  return v8();
}

void sub_10003AFD0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[5] = a4;
  v9 = a4;
  v10 = sub_100041C0C();
  v12 = *v10;
  v11 = v10[1];
  String.utf8CString.getter();
  v13 = xpc_event_publisher_create();

  if (v13)
  {
    v8[4] = v13;
    v8[6] = a3;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10003B07C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4[2] = a1;
  v4[3] = a2;
  v4[5] = a4;

  v7 = a4;
  v8 = sub_100041C0C();
  v10 = *v8;
  v9 = v8[1];
  String.utf8CString.getter();
  v11 = xpc_event_publisher_create();

  if (v11)
  {

    v4[4] = v11;
    v4[6] = a3;
    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10003B138()
{
  v1 = *(v0 + 32);
  v4[4] = sub_10003B560;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 1107296256;
  v4[2] = sub_10003C0E0;
  v4[3] = &unk_100080420;
  v2 = _Block_copy(v4);

  xpc_event_publisher_set_handler();
  _Block_release(v2);
  return xpc_event_publisher_activate();
}

uint64_t sub_10003B204(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v30 - v12;
  v14 = type metadata accessor for DispatchPredicate();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = (&v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *(a4 + 40);
  *v18 = v19;
  (*(v15 + 104))(v18, enum case for DispatchPredicate.onQueue(_:), v14);
  v20 = v19;
  LOBYTE(v19) = _dispatchPreconditionTest(_:)();
  result = (*(v15 + 8))(v18, v14);
  if (v19)
  {
    if (a1 == 2)
    {
      v22 = sub_10003E6D8();
      (*(v7 + 16))(v13, v22, v6);
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 134217984;
        *(v25 + 4) = v31;
        _os_log_impl(&_mh_execute_header, v23, v24, "🔗 Query Publisher: Recieved BARRIER event from subscriber (token: %llu)", v25, 0xCu);
      }

      return (*(v7 + 8))(v13, v6);
    }

    else if (a1 == 1)
    {
      return sub_10003BE8C(v31);
    }

    else if (a1)
    {
      v26 = sub_10003E6D8();
      (*(v7 + 16))(v11, v26, v6);
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 134217984;
        *(v29 + 4) = v31;
        _os_log_impl(&_mh_execute_header, v27, v28, "🔗 Query Publisher: Recieved unknown event form subscriber (token: %llu)", v29, 0xCu);
      }

      return (*(v7 + 8))(v11, v6);
    }

    else
    {
      return sub_10003B568(v31, v30);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10003B568(uint64_t a1, uint64_t a2)
{
  v73 = a2;
  v70 = a1;
  v64 = type metadata accessor for Query(0);
  v2 = *(*(v64 - 8) + 64);
  __chkstk_darwin(v64);
  v65 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Query.Ping(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v63 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100007CCC(&qword_1000878B8, "\n6");
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v61 - v9;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v68 = v11;
  v69 = v12;
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v62 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v67 = &v61 - v16;
  v17 = type metadata accessor for Logger();
  v18 = *(v17 - 8);
  v19 = v18[8];
  v20 = __chkstk_darwin(v17);
  v66 = &v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v24 = &v61 - v23;
  v25 = __chkstk_darwin(v22);
  v27 = &v61 - v26;
  __chkstk_darwin(v25);
  v29 = &v61 - v28;
  v30 = sub_10003E6D8();
  v31 = v18[2];
  v74 = v17;
  v71 = v31;
  v31(v29, v30, v17);
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 134217984;
    *(v34 + 4) = v70;
    _os_log_impl(&_mh_execute_header, v32, v33, "🔗 Query Publisher: received 'ADD' event from subscriber (token: %llu)", v34, 0xCu);
  }

  v35 = v18[1];
  v36 = v74;
  v72 = v18 + 1;
  v35(v29, v74);
  if (!v73)
  {
    v71(v24, v30, v36);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&_mh_execute_header, v45, v46, "[🔴] Query Publisher: failed to get the descriptor when handling 'ADD' event.", v47, 2u);

      v43 = v24;
      v44 = v36;
      return (v35)(v43, v44);
    }

    v43 = v24;
LABEL_14:
    v44 = v36;
    return (v35)(v43, v44);
  }

  v37 = swift_unknownObjectRetain();
  if (xpc_dictionary_get_string(v37, "SessionUUIDString"))
  {
    String.init(cString:)();
    UUID.init(uuidString:)();

    v39 = v68;
    v38 = v69;
    if ((*(v69 + 48))(v10, 1, v68) != 1)
    {
      v48 = v67;
      (*(v38 + 32))(v67, v10, v39);
      v49 = v62;
      (*(v38 + 16))(v62, v48, v39);
      v50 = v63;
      Query.Ping.init(sessionUUID:)(v49);
      Query.Ping.asCodableEnum.getter(v76);
      sub_10003E5EC(v50, type metadata accessor for Query.Ping);
      sub_10003D784(v76, aBlock);
      sub_100007CCC(&unk_1000878C0, &qword_100067000);
      v51 = v65;
      v52 = v64;
      swift_dynamicCast();
      v53 = sub_10003E4D8(&unk_100086A70, 255, type metadata accessor for Query);
      XPCConvertible.asXPC(replyTo:)(0, v52, v53);
      sub_10003E5EC(v51, type metadata accessor for Query);
      v54 = v61;
      v55 = *(v61 + 32);
      v56 = *(v61 + 40);
      v57 = swift_allocObject();
      v58 = v70;
      *(v57 + 16) = v54;
      *(v57 + 24) = v58;
      aBlock[4] = sub_10003D820;
      aBlock[5] = v57;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100012A4C;
      aBlock[3] = &unk_100080470;
      v59 = _Block_copy(aBlock);
      swift_unknownObjectRetain();

      xpc_event_publisher_fire_with_reply();
      _Block_release(v59);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease_n();
      sub_100007F1C(v76);
      return (*(v38 + 8))(v67, v39);
    }

    sub_10000812C(v10, &qword_1000878B8, "\n6");
  }

  v71(v27, v30, v36);
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.info.getter();
  if (!os_log_type_enabled(v40, v41))
  {

    swift_unknownObjectRelease();
    v43 = v27;
    goto LABEL_14;
  }

  v42 = swift_slowAlloc();
  *v42 = 0;
  _os_log_impl(&_mh_execute_header, v40, v41, "[🔴] Query Publisher: the descriptor doesn't contain valid 'sessionUUID' key.", v42, 2u);

  swift_unknownObjectRelease();
  v43 = v27;
  v44 = v36;
  return (v35)(v43, v44);
}

uint64_t sub_10003BE8C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100007CCC(&qword_100086800, &qword_100060690);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v20 - v6;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10003E6D8();
  (*(v9 + 16))(v12, v13, v8);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 134217984;
    *(v16 + 4) = a1;
    _os_log_impl(&_mh_execute_header, v14, v15, "🔗 Query Publisher: Received REMOVE event from subscriber (token: %llu)", v16, 0xCu);
  }

  (*(v9 + 8))(v12, v8);
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v7, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = v2;
  v18[5] = a1;

  sub_100008F94(0, 0, v7, &unk_1000666E8, v18);
}

uint64_t sub_10003C0E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  swift_unknownObjectRetain();
  v8(a2, a3, a4);

  return swift_unknownObjectRelease();
}

uint64_t sub_10003C160(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10003C178()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 48);

  return v0;
}

uint64_t sub_10003C1B8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 48);

  return _swift_deallocClassInstance(v0, 56, 7);
}

uint64_t sub_10003C258(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100007CCC(&qword_100086800, &qword_100060690);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v13 - v8;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = a2;
  v11[5] = a3;
  v11[6] = a1;

  swift_unknownObjectRetain();
  sub_100008F94(0, 0, v9, &unk_1000666A0, v11);
}

uint64_t sub_10003C380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = sub_100007198;

  return sub_10003C42C(a5, a6);
}

uint64_t sub_10003C42C(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = type metadata accessor for HandshakeEvent();
  v3[7] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[8] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v3[9] = v6;
  v7 = *(v6 - 8);
  v3[10] = v7;
  v8 = *(v7 + 64) + 15;
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v9 = *(*(sub_100007CCC(&unk_1000878D0, &qword_1000666C8) - 8) + 64) + 15;
  v3[15] = swift_task_alloc();
  v10 = type metadata accessor for QueryResponse.PingResponse(0);
  v3[16] = v10;
  v11 = *(v10 - 8);
  v3[17] = v11;
  v12 = *(v11 + 64) + 15;
  v3[18] = swift_task_alloc();

  return _swift_task_switch(sub_10003C5D8, 0, 0);
}

uint64_t sub_10003C5D8()
{
  v45 = v0;
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[5];
  v4 = sub_10003E4D8(&qword_100087278, 255, type metadata accessor for QueryResponse.PingResponse);
  static XPCConvertible.from(xpc:)(v3, v2, v4);
  v5 = v0[18];
  v6 = v0[15];
  v7 = v0[5];
  (*(v0[17] + 56))(v6, 0, 1, v0[16]);
  sub_10003E584(v6, v5, type metadata accessor for QueryResponse.PingResponse);
  v8 = swift_slowAlloc();
  v0[19] = v8;
  xpc_dictionary_get_audit_token();
  v9 = *v8;
  v10 = v8[1];
  v11 = v8[2];
  v12 = v8[3];
  v13 = sub_100041C34();
  v15 = *v13;
  v14 = v13[1];

  sub_100048AAC(v9, v10, v11, v12, v15, v14, &type metadata for String);
  v16 = v0[9];
  v17 = v0[10];
  v18 = v0[14];

  v20 = v0[2];
  v19 = v0[3];

  v21 = sub_10003E6D8();
  v0[20] = v21;
  v22 = *(v17 + 16);
  v0[21] = v22;
  v0[22] = (v17 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v22(v18, v21, v16);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();

  v25 = os_log_type_enabled(v23, v24);
  v26 = v0[14];
  v27 = v0[9];
  v28 = v0[10];
  if (v25)
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v44 = v30;
    *v29 = 136315138;
    *(v29 + 4) = sub_10000728C(v20, v19, &v44);
    _os_log_impl(&_mh_execute_header, v23, v24, "[🟢] 👀 Query: received the 'Ping Response' from the client: %s", v29, 0xCu);
    sub_100007F1C(v30);
  }

  v31 = *(v28 + 8);
  v31(v26, v27);
  v0[23] = v31;
  v32 = v0[18];
  v34 = v0[7];
  v33 = v0[8];
  v35 = v0[4];
  v36 = *(v0[6] + 24);
  v37 = sub_100007CCC(&unk_1000878E0, &unk_1000666D0);
  v38 = *(v37 + 48);
  v39 = *(v37 + 64);
  *v33 = v20;
  v33[1] = v19;
  v40 = type metadata accessor for UUID();
  (*(*(v40 - 8) + 16))(v33 + v38, v32, v40);
  *(v33 + v39) = v35;
  swift_storeEnumTagMultiPayload();
  v41 = swift_task_alloc();
  v0[24] = v41;
  *v41 = v0;
  v41[1] = sub_10003CC60;
  v42 = v0[8];

  return sub_10004BC38(v42);
}

uint64_t sub_10003CC60(uint64_t a1, uint64_t a2, char a3)
{
  v5 = *v4;
  v6 = *v4;
  v7 = *(*v4 + 192);
  v8 = *v4;
  *(v6 + 200) = a1;
  *(v6 + 208) = a2;
  *(v6 + 216) = a3;

  sub_10003E5EC(*(v5 + 64), type metadata accessor for HandshakeEvent);
  if (v3)
  {
    v9 = sub_10003CE90;
  }

  else
  {
    v9 = sub_10003CDB4;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_10003CDB4()
{
  v2 = v0[18];
  v1 = v0[19];

  sub_10003E5EC(v2, type metadata accessor for QueryResponse.PingResponse);
  v3 = v0[18];
  v4 = v0[14];
  v5 = v0[15];
  v7 = v0[12];
  v6 = v0[13];
  v8 = v0[11];
  v9 = v0[8];

  v10 = v0[1];

  return v10();
}

uint64_t sub_10003CE90()
{
  v2 = *(v0 + 200);
  v1 = *(v0 + 208);
  v3 = *(v0 + 176);
  v4 = *(v0 + 216);
  (*(v0 + 168))(*(v0 + 88), *(v0 + 160), *(v0 + 72));
  sub_10000810C(v2, v1, v4);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  sub_100007D14(v2, v1, v4);
  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 216);
  v10 = *(v0 + 200);
  v9 = *(v0 + 208);
  if (v7)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    sub_100007B4C();
    swift_allocError();
    *v13 = v10;
    *(v13 + 8) = v9;
    *(v13 + 16) = v8;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&_mh_execute_header, v5, v6, "[🔴] Query: failed to handle the ping query response event. %@", v11, 0xCu);
    sub_10000812C(v12, &qword_100086810, &qword_100060610);
  }

  else
  {
    sub_100007D14(*(v0 + 200), *(v0 + 208), *(v0 + 216));
  }

  v15 = *(v0 + 184);
  v17 = *(v0 + 80);
  v16 = *(v0 + 88);
  v18 = *(v0 + 72);

  v15(v16, v18);
  v20 = *(v0 + 144);
  v19 = *(v0 + 152);

  sub_10003E5EC(v20, type metadata accessor for QueryResponse.PingResponse);
  v21 = *(v0 + 144);
  v22 = *(v0 + 112);
  v23 = *(v0 + 120);
  v25 = *(v0 + 96);
  v24 = *(v0 + 104);
  v26 = *(v0 + 88);
  v27 = *(v0 + 64);

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_10003D0D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v6 = type metadata accessor for Logger();
  v5[8] = v6;
  v7 = *(v6 - 8);
  v5[9] = v7;
  v8 = *(v7 + 64) + 15;
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();
  v9 = type metadata accessor for HandshakeEvent();
  v5[12] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v5[13] = swift_task_alloc();

  return _swift_task_switch(sub_10003D1CC, 0, 0);
}

uint64_t sub_10003D1CC()
{
  v1 = v0[12];
  v2 = *(v0[6] + 24);
  *v0[13] = v0[7];
  swift_storeEnumTagMultiPayload();
  v3 = swift_task_alloc();
  v0[14] = v3;
  *v3 = v0;
  v3[1] = sub_10003D27C;
  v4 = v0[13];

  return sub_10004BC38(v4);
}

uint64_t sub_10003D27C(uint64_t a1, uint64_t a2, char a3)
{
  v9 = *v4;
  v8 = *v4;
  v10 = *(*v4 + 112);
  v11 = *v4;

  v12 = *(v8 + 104);
  if (v3)
  {
    *(v9 + 33) = a3;
    *(v9 + 120) = a2;
    *(v9 + 128) = a1;
    sub_10003E5EC(v12, type metadata accessor for HandshakeEvent);

    return _swift_task_switch(sub_10003D448, 0, 0);
  }

  else
  {
    sub_10003E5EC(v12, type metadata accessor for HandshakeEvent);
    v13 = *(v9 + 104);
    v15 = *(v9 + 80);
    v14 = *(v9 + 88);

    v16 = *(v11 + 8);

    return v16();
  }
}

uint64_t sub_10003D448()
{
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v3 = *(v0 + 33);
  sub_100007B4C();
  v4 = swift_allocError();
  *v5 = v1;
  *(v5 + 8) = v2;
  *(v5 + 16) = v3;
  *(v0 + 40) = v4;
  swift_errorRetain();
  sub_100007CCC(&qword_100086538, &qword_1000666F0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v22 = *(v0 + 72);
    v21 = *(v0 + 80);
    v23 = *(v0 + 64);
    v24 = *(v0 + 40);

    swift_errorRetain();
    v25 = sub_10003E6D8();
    (*(v22 + 16))(v21, v25, v23);
    swift_errorRetain();
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = *(v0 + 56);
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v29 = 134218242;
      *(v29 + 4) = v28;
      *(v29 + 12) = 2112;
      swift_errorRetain();
      v31 = _swift_stdlib_bridgeErrorToNSError();
      *(v29 + 14) = v31;
      *v30 = v31;
      _os_log_impl(&_mh_execute_header, v26, v27, "[🔴] Failed to remove the servie with token (%llu) from the service database. Error: %@", v29, 0x16u);
      sub_10000812C(v30, &qword_100086810, &qword_100060610);
    }

    else
    {
    }

    (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));
    goto LABEL_13;
  }

  v6 = *(v0 + 16);
  v7 = *(v0 + 24);
  v8 = *(v0 + 32);
  if (v8 != 6 || v6 != 3 || v7)
  {
    sub_100007D14(v6, v7, v8);
    goto LABEL_9;
  }

  v9 = *(v0 + 88);
  v10 = *(v0 + 64);
  v11 = *(v0 + 72);
  v12 = sub_10003E6D8();
  (*(v11 + 16))(v9, v12, v10);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = *(v0 + 56);
    v16 = swift_slowAlloc();
    *v16 = 134217984;
    *(v16 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v13, v14, "[🟡] Cannot remove the service with token (%llu) from the service database. Already removed?", v16, 0xCu);
  }

  v17 = *(v0 + 88);
  v18 = *(v0 + 64);
  v19 = *(v0 + 72);

  (*(v19 + 8))(v17, v18);
  v20 = *(v0 + 40);

LABEL_13:

  v32 = *(v0 + 104);
  v33 = *(v0 + 80);
  v34 = *(v0 + 88);

  v35 = *(v0 + 8);

  return v35();
}

uint64_t sub_10003D784(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10003D7E8()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003D828()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10003D870()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000082B0;

  return sub_10003C380(v5, v6, v7, v2, v3, v4);
}

uint64_t sub_10003D918()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003D950()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10003D990()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100007198;

  return sub_10003D0D0(v4, v5, v6, v2, v3);
}

uint64_t sub_10003DA28()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

double sub_10003DAEC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return sub_100037D48(a1, v6, v7, a2);
}

uint64_t sub_10003DB70()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10003DC3C(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  return sub_100038060(a1, v4, v5, v6, v7);
}

uint64_t sub_10003DCB4()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 2);
  swift_unknownObjectRelease();
  v7 = *(v0 + 4);

  v8 = *(v0 + 6);

  (*(v2 + 8))(&v0[v4], v1);
  v9 = *&v0[v5];

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10003DD9C()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_1000082B0;

  return sub_100038A6C(v8, v9, v10, v4, v5, v6, v0 + v3, v7);
}

uint64_t sub_10003DEB8()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for XPCRichError();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  v12 = *(v0 + 2);
  swift_unknownObjectRelease();
  v13 = *(v0 + 4);

  v14 = *(v0 + 6);

  (*(v2 + 8))(&v0[v4], v1);
  (*(v7 + 8))(&v0[v9], v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_10003E018()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(type metadata accessor for XPCRichError() - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = v0[4];
  v8 = v0[5];
  v9 = v0[6];
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_1000082B0;

  return sub_10003836C(v10, v11, v12, v7, v8, v9, v0 + v3, v0 + v6);
}

uint64_t sub_10003E160()
{
  v1 = type metadata accessor for XPCReceivedMessage();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  (*(v2 + 8))(v0 + v4, v1);
  v12 = *(v0 + v5);

  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_10003E2BC()
{
  v2 = *(type metadata accessor for XPCReceivedMessage() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (v4 + *(v5 + 80) + 8) & ~*(v5 + 80);
  v7 = *(v0 + v4);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_1000082B0;

  return sub_1000393C4(v0 + v3, v7, v0 + v6);
}

uint64_t sub_10003E400()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10003E440()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000082B0;

  return sub_10003AEC0(v4, v5, v6, v2);
}

uint64_t sub_10003E4D8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_10003E520(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Report(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003E584(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10003E5EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10003E658()
{
  v0 = type metadata accessor for Logger();
  sub_100008488(v0, qword_100095810);
  sub_1000083A8(v0, qword_100095810);
  v1 = sub_100056798();
  v2 = *v1;
  v3 = v1[1];

  return Logger.init(subsystem:category:)();
}

uint64_t sub_10003E6D8()
{
  if (qword_100095330 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return sub_1000083A8(v0, qword_100095810);
}

uint64_t sub_10003E73C@<X0>(uint64_t a1@<X8>)
{
  if (qword_100095330 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = sub_1000083A8(v2, qword_100095810);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = sub_100007CCC(&qword_100086800, &qword_100060690);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v33 = &v31 - v5;
  v6 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v31 = *(v6 - 8);
  v32 = v6;
  v7 = *(v31 + 64);
  __chkstk_darwin(v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for OS_dispatch_queue.Attributes();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v12 = type metadata accessor for DispatchQoS();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  sub_100007CCC(&qword_100087938, &qword_100066770);
  qword_100095828 = sub_1000414CC();
  type metadata accessor for RemoteRequestConnectionManager();
  v14 = sub_100042858();
  qword_100095830 = v14;
  type metadata accessor for HandshakeManager();
  v15 = qword_100095828;

  qword_100095838 = sub_10004BB44(v15, v14);
  type metadata accessor for RequestServer();
  v16 = qword_100095828;
  v17 = qword_100095830;

  qword_100095840 = sub_100056DC4(v16, v17);
  type metadata accessor for ReportServer();
  v18 = qword_100095828;
  v19 = qword_100095838;

  qword_100095848 = sub_10003720C(v18, v19);
  sub_10003EC60();
  static DispatchQoS.unspecified.getter();
  v34 = &_swiftEmptyArrayStorage;
  sub_10003ECAC();
  sub_100007CCC(&qword_100087950, &qword_100066778);
  sub_10003ED04();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v31 + 104))(v9, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v32);
  v20 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  qword_100095850 = v20;
  type metadata accessor for QueryServer();
  v21 = qword_100095828;
  v22 = qword_100095838;
  v23 = qword_100095830;

  sub_10003AFD0(v21, v22, v23, v20);
  qword_100095858 = v24;
  v25 = type metadata accessor for TaskPriority();
  v26 = v33;
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  type metadata accessor for MainActor();
  v27 = static MainActor.shared.getter();
  v28 = swift_allocObject();
  *(v28 + 16) = v27;
  *(v28 + 24) = &protocol witness table for MainActor;
  sub_100002DC0(0, 0, v26, &unk_100066788, v28);

  v29 = [objc_opt_self() mainRunLoop];
  [v29 run];

  return 0;
}

unint64_t sub_10003EC60()
{
  result = qword_100087940;
  if (!qword_100087940)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100087940);
  }

  return result;
}

unint64_t sub_10003ECAC()
{
  result = qword_100087948;
  if (!qword_100087948)
  {
    type metadata accessor for OS_dispatch_queue.Attributes();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100087948);
  }

  return result;
}

unint64_t sub_10003ED04()
{
  result = qword_100087958;
  if (!qword_100087958)
  {
    sub_10002BBE8(&qword_100087950, &qword_100066778);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100087958);
  }

  return result;
}

uint64_t sub_10003ED68()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_10003EE0C;

  return sub_10003F0F4();
}

uint64_t sub_10003EE0C()
{
  v2 = v0;
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  v5 = *(*v1 + 16);
  v10 = *v1;
  *(*v1 + 40) = v2;

  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v2)
  {
    v8 = sub_10003EFCC;
  }

  else
  {
    v8 = sub_10003EF68;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_10003EF68()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10003EFCC()
{
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[5];

  return v2();
}

uint64_t sub_10003F030()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003F068()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100007198;

  return sub_10003ED68();
}

uint64_t sub_10003F0F4()
{
  v1 = type metadata accessor for Logger();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();
  v0[5] = swift_task_alloc();
  type metadata accessor for MainActor();
  v0[6] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[7] = v5;
  v0[8] = v4;

  return _swift_task_switch(sub_10003F1F0, v5, v4);
}

uint64_t sub_10003F1F0()
{
  v1 = qword_100095848;
  v0[9] = qword_100095848;
  v2 = (*v1 + 144) & 0xFFFFFFFFFFFFLL | 0x5E84000000000000;
  v0[10] = *(*v1 + 144);
  v0[11] = v2;
  return _swift_task_switch(sub_10003F230, v1, 0);
}

uint64_t sub_10003F230()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 72);
  (*(v0 + 80))();
  *(v0 + 96) = 0;
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);

  return _swift_task_switch(sub_10003F2BC, v3, v4);
}

uint64_t sub_10003F2BC()
{
  v1 = v0[5];
  v2 = v0[2];
  v3 = v0[3];
  v4 = sub_1000568C8();
  v0[13] = v4;
  v5 = *(v3 + 16);
  v0[14] = v5;
  v0[15] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "The REPORT listener is activated", v8, 2u);
  }

  v9 = v0[5];
  v10 = v0[2];
  v11 = v0[3];

  v12 = *(v11 + 8);
  v0[16] = v12;
  v12(v9, v10);
  v13 = qword_100095840;
  v0[17] = qword_100095840;
  v14 = (*v13 + 184) & 0xFFFFFFFFFFFFLL | 0x7D5A000000000000;
  v0[18] = *(*v13 + 184);
  v0[19] = v14;

  return _swift_task_switch(sub_10003F410, v13, 0);
}

uint64_t sub_10003F410()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 136);
  v3 = *(v0 + 96);
  (*(v0 + 144))();
  *(v0 + 160) = v3;
  if (v3)
  {
    v4 = *(v0 + 56);
    v5 = *(v0 + 64);
    v6 = sub_10003F720;
  }

  else
  {
    v4 = *(v0 + 136);
    v7 = (*v4 + 192) & 0xFFFFFFFFFFFFLL | 0x622000000000000;
    *(v0 + 168) = *(*v4 + 192);
    *(v0 + 176) = v7;
    v6 = sub_10003F4C4;
    v5 = 0;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_10003F4C4()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 160);
  v3 = *(v0 + 136);
  (*(v0 + 168))();
  *(v0 + 184) = v2;
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);
  if (v2)
  {
    v6 = sub_10003F794;
  }

  else
  {
    v6 = sub_10003F550;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_10003F550()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  v4 = v0[6];
  v5 = v0[4];
  v6 = v0[2];

  v2(v5, v3, v6);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "The REQUEST listener is activated", v9, 2u);
  }

  v10 = v0[23];
  v11 = v0[16];
  v13 = v0[3];
  v12 = v0[4];
  v14 = v0[2];

  v11(v12, v14);
  sub_10003B138();
  v16 = v0[4];
  v15 = v0[5];

  v17 = v0[1];

  return v17();
}

uint64_t sub_10003F6AC()
{
  v1 = v0[12];
  v2 = v0[6];

  v4 = v0[4];
  v3 = v0[5];

  v5 = v0[1];

  return v5();
}

uint64_t sub_10003F720()
{
  v1 = v0[20];
  v2 = v0[6];

  v4 = v0[4];
  v3 = v0[5];

  v5 = v0[1];

  return v5();
}

uint64_t sub_10003F794()
{
  v1 = v0[23];
  v2 = v0[6];

  v4 = v0[4];
  v3 = v0[5];

  v5 = v0[1];

  return v5();
}

uint64_t sub_10003F808(uint64_t a1)
{
  swift_getTupleTypeMetadata2();
  v2 = static Array._allocateUninitialized(_:)();
  v3 = sub_100041784(v2, &type metadata for String, a1, &protocol witness table for String);

  return v3;
}

uint64_t sub_10003F884()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = v0[14];
  v3 = *(v1 + 80);

  Dictionary.subscript.getter();
}

uint64_t sub_10003F93C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  v5 = *(*v3 + 80);
  v4[9] = v5;
  v6 = *(v5 - 8);
  v4[10] = v6;
  v7 = *(v6 + 64) + 15;
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();

  return _swift_task_switch(sub_10003FA18, v3, 0);
}

uint64_t sub_10003FA18()
{
  v1 = *(v0 + 64);
  swift_beginAccess();
  v2 = *(v1 + 112);
  *(v0 + 104) = v2;
  v3 = *(v2 + 32);
  *(v0 + 152) = v3;
  v4 = -1;
  v5 = -1 << v3;
  if (-(-1 << v3) < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v6 = v4 & *(v2 + 64);

  if (v6)
  {
    v8 = 0;
LABEL_8:
    *(v0 + 112) = v6;
    *(v0 + 120) = v8;
    v10 = *(v0 + 88);
    v11 = *(v0 + 96);
    v12 = *(v0 + 72);
    v13 = *(v0 + 80);
    v14 = *(v0 + 48);
    (*(v13 + 16))(v11, *(v7 + 56) + *(v13 + 72) * (__clz(__rbit64(v6)) | (v8 << 6)), v12);
    v15 = *(v13 + 32);
    *(v0 + 128) = v15;
    *(v0 + 136) = (v13 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v15(v10, v11, v12);
    v24 = (v14 + *v14);
    v16 = v14[1];
    v17 = swift_task_alloc();
    *(v0 + 144) = v17;
    *v17 = v0;
    v17[1] = sub_10003FC84;
    v18 = *(v0 + 88);
    v19 = *(v0 + 56);

    return v24(v18);
  }

  else
  {
    v9 = 0;
    while (((63 - v5) >> 6) - 1 != v9)
    {
      v8 = v9 + 1;
      v6 = *(v7 + 8 * v9++ + 72);
      if (v6)
      {
        goto LABEL_8;
      }
    }

    v21 = *(v0 + 88);
    v22 = *(v0 + 96);
    (*(*(v0 + 80) + 56))(*(v0 + 40), 1, 1, *(v0 + 72));

    v23 = *(v0 + 8);

    return v23();
  }
}

uint64_t sub_10003FC84(char a1)
{
  v2 = *(*v1 + 144);
  v3 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 153) = a1;

  return _swift_task_switch(sub_10003FD9C, v3, 0);
}

uint64_t sub_10003FD9C()
{
  if (*(v0 + 153))
  {
    v2 = *(v0 + 128);
    v1 = *(v0 + 136);
    v3 = *(v0 + 104);
    v4 = *(v0 + 88);
    v5 = *(v0 + 72);
    v6 = *(v0 + 40);

    v2(v6, v4, v5);
    v7 = 0;
LABEL_3:
    v8 = *(v0 + 88);
    v9 = *(v0 + 96);
    (*(*(v0 + 80) + 56))(*(v0 + 40), v7, 1, *(v0 + 72));

    v10 = *(v0 + 8);

    return v10();
  }

  else
  {
    v12 = (*(v0 + 112) - 1) & *(v0 + 112);
    result = (*(*(v0 + 80) + 8))(*(v0 + 88), *(v0 + 72));
    v13 = *(v0 + 120);
    if (v12)
    {
      result = *(v0 + 104);
LABEL_12:
      *(v0 + 112) = v12;
      *(v0 + 120) = v13;
      v15 = *(v0 + 88);
      v16 = *(v0 + 96);
      v17 = *(v0 + 72);
      v18 = *(v0 + 80);
      v19 = *(v0 + 48);
      (*(v18 + 16))(v16, *(result + 56) + *(v18 + 72) * (__clz(__rbit64(v12)) | (v13 << 6)), v17);
      v20 = *(v18 + 32);
      *(v0 + 128) = v20;
      *(v0 + 136) = (v18 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
      v20(v15, v16, v17);
      v25 = (v19 + *v19);
      v21 = v19[1];
      v22 = swift_task_alloc();
      *(v0 + 144) = v22;
      *v22 = v0;
      v22[1] = sub_10003FC84;
      v23 = *(v0 + 88);
      v24 = *(v0 + 56);

      return v25(v23);
    }

    else
    {
      while (1)
      {
        v14 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        result = *(v0 + 104);
        if (v14 >= (((1 << *(v0 + 152)) + 63) >> 6))
        {

          v7 = 1;
          goto LABEL_3;
        }

        v12 = *(result + 8 * v14 + 64);
        ++v13;
        if (v12)
        {
          v13 = v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_100040028()
{
  v1 = *v0;
  swift_beginAccess();
  v12 = v0[14];
  v2 = *(v1 + 80);
  v10 = v2;
  v11 = *(v1 + 88);
  v8[2] = v2;
  v8[3] = v11;
  v8[4] = sub_100041A70;
  v8[5] = &v9;
  v3 = type metadata accessor for Dictionary();

  WitnessTable = swift_getWitnessTable();
  v6 = sub_100040154(sub_100041AA4, v8, v3, v2, &type metadata for Never, WitnessTable, &protocol witness table for Never, v5);

  return v6;
}

uint64_t sub_100040154(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a8;
  v45 = a1;
  v46 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(a1);
  v47 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  v16 = *(v49 + 64);
  v17 = __chkstk_darwin(AssociatedTypeWitness);
  v19 = &v34 - v18;
  v20 = *(*(a4 - 8) + 64);
  __chkstk_darwin(v17);
  v43 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_getAssociatedTypeWitness();
  v37 = *(v22 - 8);
  v38 = v22;
  v23 = *(v37 + 64);
  __chkstk_darwin(v22);
  v25 = &v34 - v24;
  v26 = dispatch thunk of Collection.count.getter();
  if (!v26)
  {
    return static Array._allocateUninitialized(_:)();
  }

  v48 = v26;
  v52 = ContiguousArray.init()();
  v39 = type metadata accessor for ContiguousArray();
  ContiguousArray.reserveCapacity(_:)(v48);
  result = dispatch thunk of Collection.startIndex.getter();
  if ((v48 & 0x8000000000000000) == 0)
  {
    v34 = v11;
    v35 = a5;
    v28 = 0;
    v40 = (v49 + 16);
    v41 = (v49 + 8);
    v42 = v8;
    while (!__OFADD__(v28, 1))
    {
      v49 = v28 + 1;
      v29 = dispatch thunk of Collection.subscript.read();
      v30 = v19;
      v31 = v19;
      v32 = AssociatedTypeWitness;
      (*v40)(v30);
      v29(v51, 0);
      v33 = v50;
      v45(v31, v47);
      if (v33)
      {
        (*v41)(v31, v32);
        (*(v37 + 8))(v25, v38);

        return (*(v34 + 32))(v36, v47, v35);
      }

      v50 = 0;
      (*v41)(v31, v32);
      ContiguousArray.append(_:)();
      result = dispatch thunk of Collection.formIndex(after:)();
      ++v28;
      v19 = v31;
      if (v49 == v48)
      {
        (*(v37 + 8))(v25, v38);
        return v52;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100040574(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = *v3;
  v7 = *(*v3 + 80);
  v8 = type metadata accessor for Optional();
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8);
  v31 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v15 = &v28 - v14;
  v16 = *(v6 + 88);
  v17 = *(v16 + 8);
  if (a2)
  {
    goto LABEL_3;
  }

  v28 = v13;
  v29 = v12;
  v30 = v17;
  v18 = v17(v7, v16);
  v20 = v19;
  swift_beginAccess();
  v21 = v3[14];
  *&v32 = v18;
  *(&v32 + 1) = v20;

  Dictionary.subscript.getter();

  LODWORD(v20) = (*(*(v7 - 8) + 48))(v15, 1, v7);
  (*(v28 + 8))(v15, v29);
  v17 = v30;
  if (v20 == 1)
  {
LABEL_3:
    v22 = v17(v7, v16);
    v24 = v23;
    v25 = *(v7 - 8);
    v26 = v31;
    (*(v25 + 16))(v31, a1, v7);
    (*(v25 + 56))(v26, 0, 1, v7);
    v34 = v22;
    v35 = v24;
    swift_beginAccess();
    type metadata accessor for Dictionary();
    Dictionary.subscript.setter();
    swift_endAccess();
  }

  else
  {
    v32 = xmmword_1000667A0;
    v33 = 6;
    sub_100007B4C();
    swift_willThrowTypedImpl();
  }

  return 2;
}

uint64_t sub_100040890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[18] = v4;
  v5[19] = a4;
  v5[16] = a2;
  v5[17] = a3;
  v5[15] = a1;
  v5[20] = *(*v4 + 80);
  v6 = type metadata accessor for Optional();
  v5[21] = v6;
  v7 = *(v6 - 8);
  v5[22] = v7;
  v8 = *(v7 + 64) + 15;
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();

  return _swift_task_switch(sub_100040988, v4, 0);
}

uint64_t sub_100040988()
{
  v1 = *(v0 + 144);
  swift_beginAccess();
  v2 = *(v1 + 112);
  *(v0 + 208) = v2;
  v3 = *(v2 + 32);
  *(v0 + 81) = v3;
  v4 = -1;
  v5 = -1 << v3;
  if (-(-1 << v3) < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v6 = v4 & *(v2 + 64);

  if (v6)
  {
    v8 = 0;
LABEL_8:
    *(v0 + 216) = v6;
    *(v0 + 224) = v8;
    v10 = *(v0 + 192);
    v11 = *(v0 + 200);
    v12 = *(v0 + 168);
    v13 = *(v0 + 176);
    v14 = *(v0 + 160);
    v15 = *(v0 + 144);
    v16 = (*(v7 + 48) + ((v8 << 10) | (16 * __clz(__rbit64(v6)))));
    v17 = *v16;
    *(v0 + 232) = *v16;
    v18 = v16[1];
    *(v0 + 240) = v18;
    v19 = *(v15 + 112);
    *(v0 + 88) = v17;
    *(v0 + 96) = v18;
    swift_bridgeObjectRetain_n();

    Dictionary.subscript.getter();

    (*(v13 + 16))(v10, v11, v12);
    v20 = *(v14 - 8);
    *(v0 + 248) = v20;
    v21 = *(v20 + 48);
    *(v0 + 256) = v21;
    *(v0 + 264) = (v20 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    result = v21(v10, 1, v14);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      v32 = (*(v0 + 128) + **(v0 + 128));
      v23 = *(*(v0 + 128) + 4);
      v24 = swift_task_alloc();
      *(v0 + 272) = v24;
      *v24 = v0;
      v24[1] = sub_100040CCC;
      v25 = *(v0 + 192);
      v26 = *(v0 + 136);

      return v32(v25);
    }
  }

  else
  {
    v9 = 0;
    while (((63 - v5) >> 6) - 1 != v9)
    {
      v8 = v9 + 1;
      v6 = *(v7 + 8 * v9++ + 72);
      if (v6)
      {
        goto LABEL_8;
      }
    }

    v27 = *(v0 + 192);
    v28 = *(v0 + 200);
    v29 = *(v0 + 184);
    v30 = *(v0 + 152);

    *(v0 + 64) = xmmword_1000604E0;
    *(v0 + 80) = 6;
    sub_100007B4C();
    swift_willThrowTypedImpl();

    *v30 = xmmword_1000604E0;
    *(v30 + 16) = 6;
    v31 = *(v0 + 8);

    return v31();
  }

  return result;
}

uint64_t sub_100040CCC(char a1)
{
  v2 = *(*v1 + 272);
  v3 = *(*v1 + 248);
  v4 = *(*v1 + 192);
  v5 = *(*v1 + 160);
  v6 = *(*v1 + 144);
  v8 = *v1;
  *(*v1 + 82) = a1;

  (*(v3 + 8))(v4, v5);

  return _swift_task_switch(sub_100040E40, v6, 0);
}

uint64_t sub_100040E40()
{
  if ((*(v0 + 82) & 1) == 0)
  {
    v15 = *(v0 + 240);
    (*(*(v0 + 176) + 8))(*(v0 + 200), *(v0 + 168));

    v16 = *(v0 + 224);
    v17 = (*(v0 + 216) - 1) & *(v0 + 216);
    if (v17)
    {
      v18 = *(v0 + 208);
LABEL_13:
      *(v0 + 216) = v17;
      *(v0 + 224) = v16;
      v20 = *(v0 + 192);
      v21 = *(v0 + 200);
      v22 = *(v0 + 168);
      v23 = *(v0 + 176);
      v24 = *(v0 + 160);
      v25 = *(v0 + 144);
      v26 = (*(v18 + 48) + ((v16 << 10) | (16 * __clz(__rbit64(v17)))));
      v27 = *v26;
      *(v0 + 232) = *v26;
      v28 = v26[1];
      *(v0 + 240) = v28;
      v29 = *(v25 + 112);
      *(v0 + 88) = v27;
      *(v0 + 96) = v28;
      swift_bridgeObjectRetain_n();

      Dictionary.subscript.getter();

      (*(v23 + 16))(v20, v21, v22);
      v30 = *(v24 - 8);
      *(v0 + 248) = v30;
      v31 = *(v30 + 48);
      *(v0 + 256) = v31;
      *(v0 + 264) = (v30 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
      result = v31(v20, 1, v24);
      if (result != 1)
      {
        v41 = (*(v0 + 128) + **(v0 + 128));
        v32 = *(*(v0 + 128) + 4);
        v33 = swift_task_alloc();
        *(v0 + 272) = v33;
        *v33 = v0;
        v33[1] = sub_100040CCC;
        v34 = *(v0 + 192);
        v35 = *(v0 + 136);

        return v41(v34);
      }

LABEL_20:
      __break(1u);
      return result;
    }

    while (1)
    {
      v19 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v19 >= (((1 << *(v0 + 81)) + 63) >> 6))
      {
        v37 = *(v0 + 200);
        v36 = *(v0 + 208);
        v39 = *(v0 + 184);
        v38 = *(v0 + 192);
        v40 = *(v0 + 152);

        *(v0 + 64) = xmmword_1000604E0;
        *(v0 + 80) = 6;
        sub_100007B4C();
        swift_willThrowTypedImpl();

        *v40 = xmmword_1000604E0;
        *(v40 + 16) = 6;
        v14 = *(v0 + 8);
        goto LABEL_4;
      }

      v18 = *(v0 + 208);
      v17 = *(v18 + 8 * v19 + 64);
      ++v16;
      if (v17)
      {
        v16 = v19;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  *(v0 + 104) = *(v0 + 232);
  v2 = *(v0 + 256);
  v1 = *(v0 + 264);
  v3 = *(v0 + 208);
  v4 = *(v0 + 184);
  v5 = *(v0 + 160);
  v6 = *(v0 + 144);
  *(v0 + 112) = *(v0 + 240);
  swift_beginAccess();
  type metadata accessor for Dictionary();
  Dictionary.removeValue(forKey:)();
  swift_endAccess();

  result = v2(v4, 1, v5);
  if (result == 1)
  {
    goto LABEL_19;
  }

  v8 = *(v0 + 240);
  v9 = *(v0 + 248);
  v10 = *(v0 + 192);
  v11 = *(v0 + 184);
  v12 = *(v0 + 160);
  v13 = *(v0 + 120);
  (*(*(v0 + 176) + 8))(*(v0 + 200), *(v0 + 168));

  (*(v9 + 32))(v13, v11, v12);

  v14 = *(v0 + 8);
LABEL_4:

  return v14();
}

uint64_t sub_100041298()
{
  v1 = *(*v0 + 80);
  v2 = type metadata accessor for Optional();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v17 - v4;
  v21 = static Array._allocateUninitialized(_:)();
  swift_beginAccess();
  v6 = v0[14];
  v7 = v6 + 64;
  v8 = 1 << *(v6 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v6 + 64);
  v11 = (v8 + 63) >> 6;
  v17[1] = v1 - 8;
  v18 = v6;

  v13 = 0;
  if (v10)
  {
    while (1)
    {
      v14 = v13;
LABEL_8:
      v15 = (*(v18 + 48) + ((v14 << 10) | (16 * __clz(__rbit64(v10)))));
      v16 = v15[1];
      v19 = *v15;
      v20 = v16;
      swift_beginAccess();
      type metadata accessor for Dictionary();

      Dictionary.removeValue(forKey:)();
      swift_endAccess();
      result = (*(*(v1 - 8) + 48))(v5, 1, v1);
      if (result == 1)
      {
        break;
      }

      v10 &= v10 - 1;

      type metadata accessor for Array();
      result = Array.append(_:)();
      v13 = v14;
      if (!v10)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v14 >= v11)
      {

        return v21;
      }

      v10 = *(v7 + 8 * v14);
      ++v13;
      if (v10)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000414CC()
{
  v0 = swift_allocObject();
  sub_100041504();
  return v0;
}

uint64_t *sub_100041504()
{
  v1 = *v0;
  swift_defaultActor_initialize();
  v2 = *(v1 + 80);
  swift_getTupleTypeMetadata2();
  v3 = static Array._allocateUninitialized(_:)();
  v4 = sub_100041784(v3, &type metadata for String, v2, &protocol witness table for String);

  v0[14] = v4;
  return v0;
}

unint64_t sub_1000415A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v4 + 40);
  v9 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return sub_1000415FC(a1, v9, a2, a3);
}

unint64_t sub_1000415FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[1] = a1;
  v24 = a4;
  v6 = *(*(a3 - 8) + 64);
  __chkstk_darwin(a1);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v4;
  v10 = -1 << *(v4 + 32);
  v12 = v11 & ~v10;
  v23[0] = v4 + 64;
  if ((*(v4 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v10;
    v16 = *(v7 + 16);
    v14 = v7 + 16;
    v15 = v16;
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    do
    {
      v19 = v14;
      v15(v9, *(v25 + 48) + v17 * v12, a3);
      v20 = *(v24 + 8);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v18)(v9, a3);
      if (v21)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      v14 = v19;
    }

    while (((*(v23[0] + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return v12;
}

uint64_t sub_100041784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(TupleTypeMetadata2);
  v12 = v23 - v11;
  if (Array.count.getter())
  {
    type metadata accessor for _DictionaryStorage();
    v13 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v13 = &_swiftEmptyDictionarySingleton;
  }

  result = Array._getCount()();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (Array._hoistableIsNativeTypeChecked()())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = _ArrayBuffer._getElementSlowPath(_:)();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_1000415A0(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

uint64_t sub_100041AA4(char *a1)
{
  v3 = v1[2];
  v5 = v1[4];
  v4 = v1[5];
  v6 = *a1;
  v7 = *(a1 + 1);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return v5(v6, v7, &a1[*(TupleTypeMetadata2 + 48)]);
}

uint64_t sub_100041CF8()
{
  swift_beginAccess();
  v1 = *(v0 + 112);
}

uint64_t sub_100041D30(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 112);
  *(v1 + 112) = a1;
}

void (*sub_100041DC8(uint64_t a1, uint64_t a2))(_BYTE *, void)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v20[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = (*(*v2 + 96))(v9);
  if (*(v12 + 16) && (v13 = sub_100042CC8(a2), (v14 & 1) != 0))
  {
    sub_10001C744(*(v12 + 56) + 40 * v13, &v21);

    sub_10000812C(&v21, &qword_100087960, "h4");
    *&v21 = 0;
    *(&v21 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(70);
    v15._countAndFlagsBits = 0xD000000000000028;
    v15._object = 0x800000010006B2B0;
    String.append(_:)(v15);
    sub_100043DF0(&unk_100086A90);
    v16._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v16);

    v17._object = 0x800000010006B2E0;
    v17._countAndFlagsBits = 0xD00000000000001CLL;
    String.append(_:)(v17);
    v18 = v21;
    LOBYTE(v22) = 2;
    sub_100007B4C();
    swift_willThrowTypedImpl();
  }

  else
  {

    v23 = 0;
    v21 = 0u;
    v22 = 0u;
    sub_10000812C(&v21, &qword_100087960, "h4");
    (*(v7 + 16))(v11, a2, v6);
    sub_10001C744(a1, &v21);
    v18 = (*(*v3 + 112))(v20);
    sub_100042084(&v21, v11);
    v18(v20, 0);
  }

  return v18;
}

uint64_t sub_100042084(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_1000081E8(a1, v10);
    v4 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    sub_1000436B8(v10, a2, isUniquelyReferenced_nonNull_native);
    v6 = type metadata accessor for UUID();
    result = (*(*(v6 - 8) + 8))(a2, v6);
    *v2 = v9;
  }

  else
  {
    sub_10000812C(a1, &qword_100087960, "h4");
    sub_100042EF8(a2, v10);
    v8 = type metadata accessor for UUID();
    (*(*(v8 - 8) + 8))(a2, v8);
    return sub_10000812C(v10, &qword_100087960, "h4");
  }

  return result;
}

uint64_t sub_1000421A0(uint64_t a1)
{
  v3 = (*(*v1 + 112))(v10);
  v4 = sub_100042EF8(a1, v11);
  v3(v10, 0, v4);
  v5 = v13;
  sub_10000812C(v11, &qword_100087960, "h4");
  if (!v5)
  {
    v11[0] = 0;
    v11[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(56);
    v6._object = 0x800000010006B2B0;
    v6._countAndFlagsBits = 0xD000000000000028;
    String.append(_:)(v6);
    type metadata accessor for UUID();
    sub_100043DF0(&unk_100086A90);
    v7._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v7);

    v8._countAndFlagsBits = 0x74276E73656F6420;
    v8._object = 0xEE00747369786520;
    String.append(_:)(v8);
    a1 = v11[0];
    v12 = 2;
    sub_100007B4C();
    swift_willThrowTypedImpl();
  }

  return a1;
}

uint64_t sub_100042344(uint64_t a1)
{
  v56 = a1;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v58 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v51 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_100007CCC(&qword_100087968, "j4");
  v10 = *(*(v54 - 8) + 64);
  v11 = __chkstk_darwin(v54);
  v13 = &v45 - v12;
  v14 = (*(*v1 + 96))(v11);
  v15 = v14 + 64;
  v16 = 1 << *(v14 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(v14 + 64);
  v19 = (v16 + 63) >> 6;
  v55 = v3;
  v47 = (v3 + 8);
  v48 = (v7 + 16);
  v46 = (v7 + 8);
  v57 = v14;

  v21 = 0;
  v61 = 0;
  *&v22 = 136315138;
  v45 = v22;
  v60 = v13;
  v52 = v19;
  v53 = v15;
  v49 = v3 + 16;
  v50 = v6;
  while (v18)
  {
LABEL_11:
    v24 = __clz(__rbit64(v18)) | (v21 << 6);
    v25 = v57;
    v26 = *(v57 + 48) + *(v55 + 72) * v24;
    v59 = *(v55 + 16);
    v59(v13, v26, v2);
    v27 = *(v25 + 56) + 40 * v24;
    v28 = &v13[*(v54 + 48)];
    sub_10001C744(v27, v28);
    v29 = *(v28 + 3);
    v30 = *(v28 + 4);
    sub_100007AB4(v28, v29);
    v31 = *(v30 + 8);
    v32 = sub_100023FB0();
    v33 = v61;
    v31(v56, &type metadata for NotificationResponse.AcknowledgeResponse, v32, v29, v30);
    if (v33)
    {
      v61 = 0;
      v34 = sub_10003E6D8();
      v35 = v50;
      v36 = v51;
      (*v48)(v51, v34, v50);
      v37 = v58;
      v59(v58, v60, v2);
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v62 = v59;
        *v40 = v45;
        sub_100043DF0(&unk_100086A90);
        v41 = dispatch thunk of CustomStringConvertible.description.getter();
        v43 = v42;
        (*v47)(v58, v2);
        v44 = sub_10000728C(v41, v43, &v62);

        *(v40 + 4) = v44;
        _os_log_impl(&_mh_execute_header, v38, v39, "Error encountered when sending the broadcast notification to connection: %s", v40, 0xCu);
        sub_100007F1C(v59);

        (*v46)(v51, v35);
      }

      else
      {

        (*v47)(v37, v2);
        (*v46)(v36, v35);
      }

      v15 = v53;
    }

    else
    {
      v61 = 0;
      v15 = v53;
    }

    v18 &= v18 - 1;
    v13 = v60;
    result = sub_10000812C(v60, &qword_100087968, "j4");
    v19 = v52;
  }

  while (1)
  {
    v23 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v23 >= v19)
    {
    }

    v18 = *(v15 + 8 * v23);
    ++v21;
    if (v18)
    {
      v21 = v23;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100042858()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v0 + 112) = sub_100043BE0(&_swiftEmptyArrayStorage);
  return v0;
}

uint64_t sub_1000428A0()
{
  swift_defaultActor_initialize();
  *(v0 + 112) = sub_100043BE0(&_swiftEmptyArrayStorage);
  return v0;
}

uint64_t sub_1000428D0(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v4 = *v2;
  v3[4] = *v2;
  return _swift_task_switch(sub_1000428F4, v4, 0);
}

uint64_t sub_1000428F4()
{
  (*(**(v0 + 32) + 120))(*(v0 + 16), *(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100042A00(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_100042A20, v3, 0);
}

uint64_t sub_100042A20()
{
  (*(**(v0 + 24) + 128))(*(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100042B28(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_100042B48, v3, 0);
}

uint64_t sub_100042B48()
{
  (*(**(v0 + 24) + 136))(*(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

xpc_object_t sub_100042BC8(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = *a1;
  v13 = a1[1];
  v14 = *(a1 + 32);
  v7 = sub_1000155FC();
  result = XPCConvertible.asXPC(replyTo:)(0, &type metadata for Notification, v7);
  if (!v4)
  {
    v9 = xpc_remote_connection_send_message_with_reply_sync();
    (*(*(a4 + 8) + 40))(v9, a3, *(a4 + 8), v10, v11);
    swift_unknownObjectRelease();
    return swift_unknownObjectRelease();
  }

  return result;
}

unint64_t sub_100042CC8(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for UUID();
  sub_100043DF0(&qword_100087A70);
  v5 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return sub_100042D4C(a1, v5);
}

unint64_t sub_100042D4C(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_100043DF0(&qword_100086A80);
      v16 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

double sub_100042EF8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_100042CC8(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v15 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_100043958();
      v11 = v15;
    }

    v12 = *(v11 + 48);
    v13 = type metadata accessor for UUID();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    sub_1000081E8((*(v11 + 56) + 40 * v8), a2);
    sub_1000433AC(v8, v11);
    *v3 = v11;
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_100042FDC(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  sub_100007CCC(&qword_100087A78, "\n4");
  v42 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v14 = result;
  if (*(v11 + 16))
  {
    v45 = v10;
    v46 = v6;
    v38 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v39 = (v7 + 16);
    v40 = v7;
    v43 = (v7 + 32);
    v21 = result + 64;
    v41 = v11;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v44 = *(v7 + 72);
      v28 = v27 + v44 * v26;
      if (v42)
      {
        (*v43)(v45, v28, v46);
        sub_1000081E8((*(v11 + 56) + 40 * v26), v47);
      }

      else
      {
        (*v39)(v45, v28, v46);
        sub_10001C744(*(v11 + 56) + 40 * v26, v47);
      }

      v29 = *(v14 + 40);
      sub_100043DF0(&qword_100087A70);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        v7 = v40;
        v11 = v41;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
      v7 = v40;
      v11 = v41;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      (*v43)((*(v14 + 48) + v44 * v22), v45, v46);
      result = sub_1000081E8(v47, *(v14 + 56) + 40 * v22);
      ++*(v14 + 16);
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

unint64_t sub_1000433AC(int64_t a1, uint64_t a2)
{
  v45 = type metadata accessor for UUID();
  v4 = *(v45 - 8);
  v5 = *(v4 + 64);
  result = __chkstk_darwin(v45);
  v44 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v46 = v7;
    v13 = _HashTable.previousHole(before:)();
    v14 = v45;
    v7 = v46;
    v15 = v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v42 = (v13 + 1) & v12;
    v43 = v17;
    v18 = *(v16 + 56);
    v40 = (v16 - 8);
    v41 = a2 + 64;
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v44;
      v22 = v15;
      v23 = v16;
      v24 = v7;
      v43(v44, *(v7 + 48) + v18 * v11, v14);
      v25 = *(v24 + 40);
      sub_100043DF0(&qword_100087A70);
      v26 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v40)(v21, v14);
      v15 = v22;
      v27 = v26 & v22;
      if (a1 >= v42)
      {
        if (v27 >= v42 && a1 >= v27)
        {
LABEL_15:
          v7 = v46;
          v30 = *(v46 + 48);
          result = v30 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v30 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v46;
            v18 = v19;
            v15 = v22;
            v9 = v41;
          }

          else
          {
            v9 = v41;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v46;
              v18 = v19;
              v15 = v22;
            }
          }

          v31 = *(v7 + 56);
          v32 = v31 + 40 * a1;
          v33 = (v31 + 40 * v11);
          if (a1 != v11 || v32 >= v33 + 40)
          {
            v34 = *v33;
            v35 = v33[1];
            *(v32 + 32) = *(v33 + 4);
            *v32 = v34;
            *(v32 + 16) = v35;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v27 >= v42 || a1 >= v27)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v9 = v41;
      v18 = v19;
      v7 = v46;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v36 = *(v7 + 16);
  v37 = __OFSUB__(v36, 1);
  v38 = v36 - 1;
  if (v37)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v38;
    ++*(v7 + 36);
  }

  return result;
}

uint64_t sub_1000436B8(__int128 *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_100042CC8(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_100043958();
      goto LABEL_7;
    }

    sub_100042FDC(v18, a3 & 1);
    v24 = *v4;
    v25 = sub_100042CC8(a2);
    if ((v19 & 1) == (v26 & 1))
    {
      v15 = v25;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_100043894(v15, v12, a1, v21);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = (v21[7] + 40 * v15);
  sub_100007F1C(v22);

  return sub_1000081E8(a1, v22);
}

uint64_t sub_100043894(unint64_t a1, uint64_t a2, __int128 *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  result = sub_1000081E8(a3, a4[7] + 40 * a1);
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

void *sub_100043958()
{
  v1 = v0;
  v30 = type metadata accessor for UUID();
  v32 = *(v30 - 8);
  v2 = *(v32 + 64);
  __chkstk_darwin(v30);
  v29 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100007CCC(&qword_100087A78, "\n4");
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v26 = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v31 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v27 = v32 + 32;
    v28 = v32 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v33 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v32;
        v21 = *(v32 + 72) * v19;
        v22 = v29;
        v23 = v30;
        (*(v32 + 16))(v29, *(v4 + 48) + v21, v30);
        v19 *= 40;
        sub_10001C744(*(v4 + 56) + v19, v34);
        v24 = v31;
        (*(v20 + 32))(*(v31 + 48) + v21, v22, v23);
        result = sub_1000081E8(v34, *(v24 + 56) + v19);
        v14 = v33;
      }

      while (v33);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v26;
        v6 = v31;
        goto LABEL_18;
      }

      v18 = *(v8 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v33 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

unint64_t sub_100043BE0(uint64_t a1)
{
  v2 = sub_100007CCC(&qword_100087A80, &qword_100066A08);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100007CCC(&qword_100087A78, "\n4");
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_100043E34(v10, v6);
      result = sub_100042CC8(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for UUID();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      result = sub_1000081E8(&v6[v9], v8[7] + 40 * v14);
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
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

uint64_t sub_100043DF0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100043E34(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007CCC(&qword_100087A80, &qword_100066A08);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100043EA4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC21systemservicemonitord19ReportClientSession_xpcSessionID;
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_100043F2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v9 + 112) = a1;
  v10 = OBJC_IVAR____TtC21systemservicemonitord19ReportClientSession_xpcSessionID;
  v11 = type metadata accessor for UUID();
  (*(*(v11 - 8) + 32))(v9 + v10, a2, v11);
  *(v9 + OBJC_IVAR____TtC21systemservicemonitord19ReportClientSession_eventStreamToken) = a3;
  return v9;
}

uint64_t sub_100043FCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_defaultActor_initialize();
  *(v3 + 112) = a1;
  v7 = OBJC_IVAR____TtC21systemservicemonitord19ReportClientSession_xpcSessionID;
  v8 = type metadata accessor for UUID();
  (*(*(v8 - 8) + 32))(v3 + v7, a2, v8);
  *(v3 + OBJC_IVAR____TtC21systemservicemonitord19ReportClientSession_eventStreamToken) = a3;
  return v3;
}

uint64_t sub_100044098@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X3>, uint64_t a4@<X8>)
{
  v30 = a3;
  v27[1] = a4;
  v8 = type metadata accessor for XPCReceivedMessage();
  v28 = *(v8 - 8);
  v9 = *(v28 + 64);
  v10 = __chkstk_darwin(v8);
  __chkstk_darwin(v10);
  v29 = v27 - v11;
  (*(a2 + 32))(&v34, a1, a2);
  sub_100007AB4(&v34, v37);
  v12 = *(v4 + 112);
  dispatch thunk of XPCSession.sendSync<A>(_:)();
  if (v5)
  {
    sub_100007F1C(&v34);
    v34 = 0;
    v35 = 0xE000000000000000;
    _StringGuts.grow(_:)(42);

    v34 = 0xD000000000000028;
    v35 = 0x800000010006B380;
    ErrorValue = swift_getErrorValue();
    v14 = *(*(v33 - 8) + 64);
    __chkstk_darwin(ErrorValue);
    (*(v16 + 16))(v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    v17._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v17);

    v18 = v34;
    v19 = v35;
    v36 = 0;
    sub_100007B4C();
    swift_willThrowTypedImpl();
  }

  else
  {
    v21 = v28;
    v22 = v29;
    (*(v28 + 32))();
    sub_100007F1C(&v34);
    sub_100031FE0();
    XPCReceivedMessage.decode<A>(as:)();
    v24 = v34;
    v23 = v35;
    v34 = 0;
    v35 = 0xE000000000000000;
    _StringGuts.grow(_:)(39);
    v25._object = 0x800000010006A5F0;
    v25._countAndFlagsBits = 0xD000000000000025;
    String.append(_:)(v25);
    v31 = v24;
    v32 = v23;
    _print_unlocked<A, B>(_:_:)();

    v18 = v34;
    v19 = v35;
    v36 = 0;
    sub_100007B4C();
    swift_willThrowTypedImpl();
    result = (*(v21 + 8))(v22, v8);
  }

  v26 = v30;
  *v30 = v18;
  v26[1] = v19;
  *(v26 + 16) = 0;
  return result;
}

uint64_t sub_100044544()
{
  v1 = *(v0 + 112);

  v2 = OBJC_IVAR____TtC21systemservicemonitord19ReportClientSession_xpcSessionID;
  v3 = type metadata accessor for UUID();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1000445B4()
{
  v1 = *(v0 + 112);

  v2 = OBJC_IVAR____TtC21systemservicemonitord19ReportClientSession_xpcSessionID;
  v3 = type metadata accessor for UUID();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100044634@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC21systemservicemonitord19ReportClientSession_xpcSessionID;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_1000446C4()
{
  v2 = *v0;
  *(v1 + 16) = *v0;
  return _swift_task_switch(sub_1000446E4, v2, 0);
}

uint64_t sub_1000446E4()
{
  (*(**(v0 + 16) + 120))();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100044764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[7] = a3;
  v5[8] = a4;
  v5[5] = a1;
  v5[6] = a2;
  v6 = *v4;
  v5[9] = *v4;
  return _swift_task_switch(sub_10004478C, v6, 0);
}

uint64_t sub_10004478C()
{
  v1 = *(v0 + 40);
  (*(**(v0 + 72) + 128))(*(v0 + 48), *(v0 + 56), *(v0 + 64), v0 + 16);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100044890()
{
  v2 = *v0;
  *(v1 + 16) = *v0;
  return _swift_task_switch(sub_1000448B0, v2, 0);
}

uint64_t sub_1000448B0()
{
  v1 = *(*(v0 + 16) + 112);
  dispatch thunk of XPCSession.cancel(reason:)();
  v2 = *(v0 + 8);

  return v2();
}

__n128 sub_100044968(uint64_t a1)
{
  if (*(v1 + 128))
  {

    XPCListener.endpoint.getter();
  }

  else
  {
    sub_100007B4C();
    swift_willThrowTypedImpl();
    result = xmmword_100066A10;
    *a1 = xmmword_100066A10;
    *(a1 + 16) = 6;
  }

  return result;
}

uint64_t sub_100044A04()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 120);
  if (v2 >> 62)
  {
LABEL_15:
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3)
  {
    v4 = 0;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        v6 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_12:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_15;
        }

        v5 = *(v2 + 8 * v4 + 32);

        v6 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_12;
        }
      }

      dispatch thunk of XPCSession.cancel(reason:)();

      ++v4;
    }

    while (v6 != v3);
  }

  v7 = *(v1 + 120);
  *(v1 + 120) = &_swiftEmptyArrayStorage;
}

uint64_t sub_100044B3C(uint64_t a1)
{
  sub_10001C744(a1, v3);
  swift_beginAccess();
  sub_100044B88(v3, v1 + 136);
  return swift_endAccess();
}

uint64_t sub_100044B88(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007CCC(&qword_100087A88, &unk_100066A40);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_100044BF8(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for XPCListener.InitializationOptions();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  if (*(v2 + 112))
  {
    v7 = 0xD000000000000035;
    sub_100007B4C();
    swift_willThrowTypedImpl();
  }

  else
  {
    v8 = swift_allocObject();
    v8[2] = a1;
    v8[3] = a2;
    v8[4] = v2;

    static XPCListener.InitializationOptions.none.getter();
    v9 = type metadata accessor for XPCListener();
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    v7 = v2;
    swift_allocObject();
    v12 = XPCListener.init(targetQueue:options:incomingSessionHandler:)();
    v13 = *(v2 + 128);
    *(v2 + 128) = v12;

    *(v2 + 112) = 1;
  }

  return v7;
}

uint64_t sub_100044D6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_100007CCC(&qword_100086800, &qword_100060690);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v14 - v7;
  v9 = dispatch thunk of XPCListener.IncomingSessionRequest.accept(incomingMessageHandler:cancellationHandler:)();
  v10 = swift_allocObject();
  *(v10 + 16) = a4;
  *(v10 + 24) = v9;

  dispatch thunk of XPCSession.setCancellationHandler(_:)();

  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a4;
  v12[5] = v9;

  sub_100008F94(0, 0, v8, &unk_100066C20, v12);
}

uint64_t sub_100044F00()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100044F4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for XPCRichError();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = sub_100007CCC(&qword_100086800, &qword_100060690);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v17 - v11;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  (*(v7 + 16))(&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
  v14 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = 0;
  *(v15 + 3) = 0;
  *(v15 + 4) = a2;
  *(v15 + 5) = a3;
  (*(v7 + 32))(&v15[v14], &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);

  sub_100008F94(0, 0, v12, &unk_100066C48, v15);
}

uint64_t sub_100045140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return _swift_task_switch(sub_100045164, a4, 0);
}

uint64_t sub_100045164()
{
  v1 = v0[2];
  sub_1000451C8(v0[3], v0[4]);
  v2 = v0[1];

  return v2();
}

uint64_t sub_1000451C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for XPCRichError();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v39 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v35 - v11;
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10003E6D8();
  v19 = *(v14 + 16);
  v40 = v13;
  v19(v17, v18, v13);
  v20 = *(v7 + 16);
  v20(v12, a2, v6);
  v21 = Logger.logObject.getter();
  v38 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v21, v38))
  {
    v22 = swift_slowAlloc();
    v37 = v3;
    v23 = v22;
    v35 = v22;
    v36 = swift_slowAlloc();
    v41 = v36;
    *v23 = 136315138;
    v20(v39, v12, v6);
    v24 = String.init<A>(describing:)();
    v26 = v25;
    (*(v7 + 8))(v12, v6);
    v27 = sub_10000728C(v24, v26, &v41);

    v28 = v35;
    *(v35 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v21, v38, "[🔴] 🔗 ServiceMonitorSession: monitor connection is gone. Reason: %s", v28, 0xCu);
    sub_100007F1C(v36);

    v3 = v37;
  }

  else
  {

    (*(v7 + 8))(v12, v6);
  }

  (*(v14 + 8))(v17, v40);
  swift_beginAccess();
  v29 = *(v3 + 120);
  if (v29 >> 62)
  {
LABEL_20:
    v30 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v31 = 0;
  while (v30 != v31)
  {
    if ((v29 & 0xC000000000000001) != 0)
    {
      v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      swift_unknownObjectRelease();
      if (v33 == a1)
      {
LABEL_15:

        swift_beginAccess();
        sub_1000461CC(v31);
        swift_endAccess();
      }
    }

    else
    {
      if (v31 >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      if (*(v29 + 8 * v31 + 32) == a1)
      {
        goto LABEL_15;
      }
    }

    if (__OFADD__(v31++, 1))
    {
      goto LABEL_19;
    }
  }
}

uint64_t sub_1000455BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  return _swift_task_switch(sub_1000455DC, a4, 0);
}

uint64_t sub_1000455DC()
{
  v1 = v0[5];
  v2 = v0[6];
  swift_beginAccess();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v1 + 120) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 120) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v6 = *((*(v1 + 120) & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v3 = v0[6];
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  v4 = v0[1];

  return v4();
}

uint64_t sub_1000456B4()
{
  sub_100044A04();
  if (*(v0 + 128))
  {

    dispatch thunk of XPCListener.cancel()();

    v1 = *(v0 + 128);
  }

  *(v0 + 128) = 0;

  *(v0 + 112) = 0;
  return result;
}

uint64_t sub_10004570C()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 128);

  sub_10000812C(v0 + 136, &qword_100087A88, &unk_100066A40);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_100045754()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 128);

  sub_10000812C(v0 + 136, &qword_100087A88, &unk_100066A40);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1000457AC()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v0 + 112) = 0;
  *(v0 + 120) = &_swiftEmptyArrayStorage;
  *(v0 + 128) = 0u;
  *(v0 + 144) = 0u;
  *(v0 + 160) = 0u;
  return v0;
}

uint64_t sub_100045800()
{
  swift_defaultActor_initialize();
  *(v0 + 112) = 0;
  *(v0 + 120) = &_swiftEmptyArrayStorage;
  *(v0 + 128) = 0u;
  *(v0 + 144) = 0u;
  *(v0 + 160) = 0u;
  return v0;
}

uint64_t sub_10004583C()
{
  v2 = *v0;
  *(v1 + 16) = *v0;
  return _swift_task_switch(sub_10004585C, v2, 0);
}

uint64_t sub_10004585C()
{
  v1 = (*(**(v0 + 16) + 144))();
  v2 = *(v0 + 8);
  v3 = v1 & 1;

  return v2(v3);
}

uint64_t sub_1000458E0(uint64_t a1, uint64_t a2)
{
  v3[5] = a1;
  v3[6] = a2;
  v4 = *v2;
  v3[7] = *v2;
  return _swift_task_switch(sub_100045904, v4, 0);
}

uint64_t sub_100045904()
{
  v1 = *(v0 + 40);
  (*(**(v0 + 56) + 200))(v0 + 16);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000459C4(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_1000459E4, v3, 0);
}

uint64_t sub_1000459E4()
{
  (*(**(v0 + 24) + 248))(*(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100045A64(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v4 = *v2;
  v3[4] = *v2;
  return _swift_task_switch(sub_100045A88, v4, 0);
}

uint64_t sub_100045A88()
{
  (*(**(v0 + 32) + 256))(*(v0 + 16), *(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100045B60()
{
  v2 = *v0;
  *(v1 + 16) = *v0;
  return _swift_task_switch(sub_100045B80, v2, 0);
}

uint64_t sub_100045B80()
{
  (*(**(v0 + 16) + 264))();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100045C08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a1;
  v4[3] = a2;
  v5 = *v3;
  v4[4] = a3;
  v4[5] = v5;
  return _swift_task_switch(sub_100045C2C, v5, 0);
}

uint64_t sub_100045C2C()
{
  v1 = v0[5];
  v2 = sub_100045CB8(v0[2], v0[3], v0[4]);
  v5 = v0[1];

  return v5(v2, v3, v4);
}

uint64_t sub_100045CB8(unint64_t a1, uint64_t a2, unint64_t a3)
{
  v35 = a2;
  v36 = a3;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100007CCC(&qword_100086800, &qword_100060690);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v14 = &v32 - v13;
  if ((*(*v3 + 144))(v12))
  {
    swift_beginAccess();
    v5 = *(v3 + 120);
    if (v5 >> 62)
    {
      goto LABEL_20;
    }

    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
    v33 = v14;
    v34 = v3;
    v3 = a1;

    if (v9)
    {
      v6 = 0;
      a1 = v5 & 0xC000000000000001;
      do
      {
        if (a1)
        {
          v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v15 = (v6 + 1);
          if (__OFADD__(v6, 1))
          {
LABEL_13:
            __break(1u);
            goto LABEL_14;
          }
        }

        else
        {
          if (v6 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_20:
            v9 = _CocoaArrayWrapper.endIndex.getter();
            goto LABEL_4;
          }

          v14 = *(v5 + 8 * v6 + 32);

          v15 = (v6 + 1);
          if (__OFADD__(v6, 1))
          {
            goto LABEL_13;
          }
        }

        *&v38 = v14;
        sub_10004625C(&v38, v3, v35, v36);

        ++v6;
      }

      while (v15 != v9);
    }

    v25 = type metadata accessor for TaskPriority();
    v26 = v33;
    (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
    v27 = sub_100046A54();
    v28 = swift_allocObject();
    v29 = v34;
    *(v28 + 16) = v34;
    *(v28 + 24) = v27;
    *(v28 + 32) = v29;
    v30 = *(v3 + 16);
    *(v28 + 40) = *v3;
    *(v28 + 56) = v30;
    *(v28 + 72) = *(v3 + 32);
    swift_retain_n();
    sub_10004611C(v3, &v38);
    sub_100016EEC(0, 0, v26, &unk_100066A58, v28);
  }

  else
  {
LABEL_14:
    v16 = sub_10003E6D8();
    (*(v6 + 16))(v9, v16, v5);
    sub_10004611C(a1, &v38);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    sub_100046178(a1);
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v41 = v20;
      *v19 = 136315138;
      v21 = *(a1 + 16);
      v38 = *a1;
      v39 = v21;
      v40 = *(a1 + 32);
      sub_10004611C(a1, v37);
      v22 = String.init<A>(describing:)();
      v24 = sub_10000728C(v22, v23, &v41);

      *(v19 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v17, v18, "[🟡] Skip sending %s. The session is not activated.", v19, 0xCu);
      sub_100007F1C(v20);
    }

    (*(v6 + 8))(v9, v5);
    v38 = xmmword_100066A10;
    LOBYTE(v39) = 6;
    sub_100007B4C();
    swift_willThrowTypedImpl();
  }

  return 4;
}

uint64_t sub_1000461CC(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_100046CD0(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

uint64_t sub_10004625C(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v39 = a3;
  v40 = a4;
  v7 = type metadata accessor for Logger();
  v41 = *(v7 - 8);
  v8 = *(v41 + 64);
  __chkstk_darwin(v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for XPCReceivedMessage();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  v17 = *(a2 + 16);
  v43 = *a2;
  v44 = v17;
  v45 = *(a2 + 32);
  sub_1000239F4();
  dispatch thunk of XPCSession.sendSync<A>(_:)();
  if (v4)
  {
    v18 = sub_10003E6D8();
    v19 = v41;
    (*(v41 + 16))(v10, v18, v7);
    sub_10004611C(a2, &v43);
    v20 = v40;

    swift_errorRetain();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    sub_100046178(a2);

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v37 = v7;
      v24 = v23;
      v25 = swift_slowAlloc();
      v38 = 0;
      v26 = v25;
      v46 = swift_slowAlloc();
      *v24 = 136315650;
      v27 = *(a2 + 16);
      v43 = *a2;
      v44 = v27;
      v45 = *(a2 + 32);
      sub_10004611C(a2, v42);
      v28 = String.init<A>(describing:)();
      v30 = sub_10000728C(v28, v29, &v46);
      v36 = v10;
      v31 = v20;
      v32 = v30;

      *(v24 + 4) = v32;
      *(v24 + 12) = 2080;
      *(v24 + 14) = sub_10000728C(v39, v31, &v46);
      *(v24 + 22) = 2112;
      swift_errorRetain();
      v33 = _swift_stdlib_bridgeErrorToNSError();
      *(v24 + 24) = v33;
      *v26 = v33;
      _os_log_impl(&_mh_execute_header, v21, v22, "[🔴] Failed to send the %s (through XPC) for service: %s. Error: %@.", v24, 0x20u);
      sub_10000812C(v26, &qword_100086810, &qword_100060610);

      swift_arrayDestroy();

      return (*(v41 + 8))(v36, v37);
    }

    else
    {

      return (*(v19 + 8))(v10, v7);
    }
  }

  else
  {
    sub_10002428C();
    XPCReceivedMessage.decode<A>(as:)();
    return (*(v12 + 8))(v15, v11);
  }
}

uint64_t sub_1000466BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[16] = a4;
  v5[17] = a5;
  v5[15] = a1;
  return _swift_task_switch(sub_1000466E0, a4, 0);
}

uint64_t sub_1000466E0()
{
  v1 = *(v0 + 128);
  swift_beginAccess();
  sub_100015930(v1 + 136, v0 + 16, &qword_100087A88, &unk_100066A40);
  v2 = *(v0 + 40);
  *(v0 + 144) = v2;
  if (v2)
  {
    sub_10001C744(v0 + 16, v0 + 56);
    sub_10000812C(v0 + 16, &qword_100087A88, &unk_100066A40);
    v3 = *(v0 + 80);
    v4 = *(v0 + 88);
    sub_100007AB4((v0 + 56), v3);
    v5 = *(v4 + 32);
    v11 = (v5 + *v5);
    v6 = v5[1];
    v7 = swift_task_alloc();
    *(v0 + 152) = v7;
    *v7 = v0;
    v7[1] = sub_1000468D0;
    v8 = *(v0 + 136);

    return v11(v8, v3, v4);
  }

  else
  {
    sub_10000812C(v0 + 16, &qword_100087A88, &unk_100066A40);
    **(v0 + 120) = *(v0 + 144) == 0;
    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_1000468D0()
{
  v1 = *(*v0 + 152);
  v2 = *(*v0 + 128);
  v4 = *v0;

  return _swift_task_switch(sub_1000469E0, v2, 0);
}

uint64_t sub_1000469E0()
{
  sub_100007F1C((v0 + 56));
  **(v0 + 120) = *(v0 + 144) == 0;
  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_100046A54()
{
  result = qword_100087A90;
  if (!qword_100087A90)
  {
    type metadata accessor for ServiceMonitorsSession();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100087A90);
  }

  return result;
}

uint64_t sub_100046ACC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  sub_1000156A8(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72));

  return _swift_deallocObject(v0, 73, 7);
}

uint64_t sub_100046B1C(uint64_t a1)
{
  v4 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100007198;

  return sub_1000466BC(a1, v5, v6, v4, v1 + 40);
}

uint64_t type metadata accessor for ReportClientSession()
{
  result = qword_1000955C0;
  if (!qword_1000955C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100046C1C()
{
  result = type metadata accessor for UUID();
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

uint64_t sub_100046CD0(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0, a1);
}

uint64_t sub_100046D34()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100046D6C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100046DB4()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100046DFC()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000082B0;

  return sub_1000455BC(v4, v5, v6, v2, v3);
}

uint64_t sub_100046E94()
{
  v1 = type metadata accessor for XPCRichError();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 2);
  swift_unknownObjectRelease();
  v7 = *(v0 + 4);

  v8 = *(v0 + 5);

  (*(v2 + 8))(&v0[v4], v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100046F68()
{
  v2 = *(type metadata accessor for XPCRichError() - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1000082B0;

  return sub_100045140(v6, v7, v8, v4, v5, v0 + v3);
}

uint64_t sub_10004706C(uint64_t a1, uint64_t a2)
{
  v8[4] = a1;
  v8[5] = a2;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_100012A4C;
  v8[3] = &unk_100080A50;
  v2 = _Block_copy(v8);

  v3 = String.utf8CString.getter();
  xpc_set_event_stream_handler((v3 + 32), 0, v2);

  _Block_release(v2);
  empty = xpc_dictionary_create_empty();
  v5 = String.utf8CString.getter();
  xpc_dictionary_set_string(empty, "SubscriberName", (v5 + 32));

  UUID.uuidString.getter();
  v6 = String.utf8CString.getter();

  xpc_dictionary_set_string(empty, "SessionUUIDString", (v6 + 32));

  String.utf8CString.getter();
  String.utf8CString.getter();
  swift_unknownObjectRetain();
  xpc_set_event();
  swift_unknownObjectRelease_n();
}

uint64_t sub_100047214(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_10004722C()
{
  v2[4] = Request.DatabaseReset.init();
  v2[5] = 0;
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 1107296256;
  v2[2] = sub_100012A4C;
  v2[3] = &unk_100080A78;
  v0 = _Block_copy(v2);
  v1 = String.utf8CString.getter();
  xpc_set_event_stream_handler((v1 + 32), 0, v0);

  _Block_release(v0);
}

uint64_t sub_1000472F4(uint64_t a1, void *a2)
{
  v4 = a2[3];
  v5 = a2[4];
  sub_100007AB4(a2, v4);
  result = (*(*(v5 + 8) + 32))(a1, v4);
  if (!v2)
  {
    xpc_dictionary_send_reply();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100047378(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = *v2;
  v7 = v2[1];
  v9 = v2[2];
  v8 = v2[3];

  sub_10004706C(sub_100048A84, v5);
}

void sub_100047428()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v5[4] = Request.DatabaseReset.init();
  v5[5] = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_100012A4C;
  v5[3] = &unk_100080C20;
  v3 = _Block_copy(v5);
  v4 = String.utf8CString.getter();
  xpc_set_event_stream_handler((v4 + 32), 0, v3);

  _Block_release(v3);
}

uint64_t sub_1000474EC(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a2[3];
  v5 = a2[4];
  sub_100007AB4(a2, v4);
  result = (*(*(v5 + 8) + 32))(v3, v4);
  if (!v2)
  {
    xpc_dictionary_send_reply();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100047570()
{
  v1 = *v0;
  v2 = v0[1];
  sub_100007CBC(v1);
  return v1;
}

uint64_t sub_1000475A4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_100007CBC(v1);
  return v1;
}

uint64_t sub_1000475D8()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  sub_100007CBC(v1);
  return v1;
}

uint64_t sub_10004760C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

uint64_t sub_10004761C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = sub_100007CCC(&qword_100086800, &qword_100060690);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v21 - v12;
  v14 = *v3;
  if (*v3)
  {
    v15 = *(v3 + 8);
    v14(a3);
  }

  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  (*(v8 + 16))(&v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v7);
  v17 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  (*(v8 + 32))(v18 + v17, &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  v19 = (v18 + ((v9 + v17 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v19 = a1;
  v19[1] = a2;

  sub_100002DC0(0, 0, v13, &unk_100066C68, v18);
}

uint64_t sub_100047830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = type metadata accessor for UUID();
  v6[5] = v7;
  v8 = *(v7 - 8);
  v6[6] = v8;
  v9 = *(v8 + 64) + 15;
  v6[7] = swift_task_alloc();
  v10 = type metadata accessor for Query(0);
  v6[8] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v6[9] = swift_task_alloc();
  v12 = type metadata accessor for ContinuousClock();
  v6[10] = v12;
  v13 = *(v12 - 8);
  v6[11] = v13;
  v14 = *(v13 + 64) + 15;
  v6[12] = swift_task_alloc();

  return _swift_task_switch(sub_100047980, 0, 0);
}

uint64_t sub_100047980()
{
  v1 = *(v0 + 96);
  static Clock<>.continuous.getter();
  v2 = swift_task_alloc();
  *(v0 + 104) = v2;
  *v2 = v0;
  v2[1] = sub_100047A4C;
  v3 = *(v0 + 96);

  return sub_100048528(200000000000000000, 0, 0, 0, 1);
}

uint64_t sub_100047A4C()
{
  v2 = *(*v1 + 104);
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 80);
  v8 = *v1;
  *(*v1 + 112) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_100047D60;
  }

  else
  {
    v6 = sub_100047BBC;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100047BBC()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 56);
  (*(*(v0 + 48) + 16))(v4, *(v0 + 16), *(v0 + 40));
  Query.Ping.init(sessionUUID:)(v4);
  v5 = type metadata accessor for Query.Ping(0);
  (*(*(v5 - 8) + 56))(v3, 0, 1, v5);
  v6 = sub_100048A3C(&unk_100086A70, type metadata accessor for Query);
  XPCConvertible.asXPC(replyTo:)(0, v2, v6);
  if (v1)
  {
    sub_1000489E0(*(v0 + 72));
    v7 = *(v0 + 96);
    v8 = *(v0 + 72);
    v9 = *(v0 + 56);
  }

  else
  {
    v11 = *(v0 + 96);
    v12 = *(v0 + 72);
    v13 = *(v0 + 56);
    v14 = *(v0 + 32);
    (*(v0 + 24))();
    swift_unknownObjectRelease();
    sub_1000489E0(v12);
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_100047D60()
{
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[9];
  v4 = v0[7];

  v5 = v0[1];

  return v5();
}

uint64_t sub_100047DE8()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = *v4;
  v6 = v4[1];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1000082B0;

  return sub_100047830(v7, v8, v9, v0 + v3, v5, v6);
}

uint64_t sub_100047EF0()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v2 = *(v0 + 40);
    return v1();
  }

  return result;
}

uint64_t sub_100047F28()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 24);
    return v1();
  }

  return result;
}

uint64_t sub_100047F58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = sub_100007CCC(&qword_100086800, &qword_100060690);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v22 - v12;
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  v15 = *v3;
  if (*v3)
  {
    v16 = *(v3 + 8);

    v15(a3);
  }

  else
  {
  }

  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v13, 1, 1, v17);
  (*(v8 + 16))(&v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v7);
  v18 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v19 + 24) = 0;
  (*(v8 + 32))(v19 + v18, &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  v20 = (v19 + ((v9 + v18 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v20 = sub_10004830C;
  v20[1] = v14;
  sub_100002DC0(0, 0, v13, &unk_100066DB8, v19);
}

void *sub_1000481A4(void *result)
{
  v2 = *(v1 + 32);
  if (v2)
  {
    v3 = *(v1 + 40);
    return v2(*result);
  }

  return result;
}

uint64_t sub_1000481F0(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100048208(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_100048264(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1000482D4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10004830C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1;
  return v2(&v5);
}

uint64_t sub_100048344()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5 + 8);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_100048420()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = *v4;
  v6 = v4[1];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100007198;

  return sub_100047830(v7, v8, v9, v0 + v3, v5, v6);
}

uint64_t sub_100048528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
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

  return _swift_task_switch(sub_100048628, 0, 0);
}

uint64_t sub_100048628()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = type metadata accessor for ContinuousClock();
  v7 = sub_100048A3C(&qword_100087D10, &type metadata accessor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  sub_100048A3C(&unk_100088340, &type metadata accessor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = async function pointer to dispatch thunk of Clock.sleep(until:tolerance:)[1];
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_1000487B8;
  v11 = v0[11];
  v12 = v0[7];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v11, v0 + 2, v6, v7);
}

uint64_t sub_1000487B8()
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

    return _swift_task_switch(sub_100048974, 0, 0);
  }

  else
  {
    v9 = v7[10];
    v8 = v7[11];

    v10 = v7[1];

    return v10();
  }
}

uint64_t sub_100048974()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

uint64_t sub_1000489E0(uint64_t a1)
{
  v2 = type metadata accessor for Query(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100048A3C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100048AAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v12 = swift_slowAlloc();
  *v12 = a1;
  v12[1] = a2;
  v12[2] = a3;
  v12[3] = a4;
  v13 = xpc_copy_entitlements_data_for_token();
  if (v13)
  {
    v14 = v13;
    v15 = swift_unknownObjectRetain();
    type = xpc_get_type(v15);
    if (type == XPC_TYPE_DATA.getter())
    {
      if (xpc_data_get_bytes_ptr(v14))
      {
        xpc_data_get_length(v14);
        v20 = xpc_create_from_plist();
        if (v20)
        {
          v21 = v20;
          if (a7 == &type metadata for String)
          {
            v23 = String.utf8CString.getter();
            string = xpc_dictionary_get_string(v21, (v23 + 32));

            if (string)
            {
              swift_unknownObjectRelease();
              String.init(cString:)();
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              goto LABEL_13;
            }
          }

          else if (a7 == &type metadata for Bool)
          {
            swift_unknownObjectRelease();
            v22 = String.utf8CString.getter();
            xpc_dictionary_get_BOOL(v21, (v22 + 32));

            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
LABEL_13:
            swift_dynamicCast();
          }

          sub_100007B4C();
          swift_allocError();
          *v25 = 0;
          *(v25 + 8) = 0;
          *(v25 + 16) = 6;
          swift_willThrow();
          swift_unknownObjectRelease_n();
          swift_unknownObjectRelease();
        }
      }
    }

    sub_100007B4C();
    swift_allocError();
    *v17 = 0;
    *(v17 + 8) = 0;
    *(v17 + 16) = 6;
    swift_willThrow();
    swift_unknownObjectRelease_n();
  }

  else
  {
    sub_100007B4C();
    swift_allocError();
    *v18 = 0;
    *(v18 + 8) = 0;
    *(v18 + 16) = 6;
    swift_willThrow();
  }
}

uint64_t sub_100048D50()
{
  swift_beginAccess();
  v1 = *(v0 + 120);
}

uint64_t sub_100048D88(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 120);
  *(v1 + 120) = a1;
}

char *sub_100048E20()
{
  v1 = (*(*v0 + 128))();
  v2 = v1;
  v3 = *(v1 + 16);
  if (!v3)
  {
    goto LABEL_4;
  }

  v4 = sub_10004F0D4(*(v1 + 16), 0);
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = sub_100051FF8(&v8, &v4[(*(v5 + 80) + 32) & ~*(v5 + 80)], v3, v2);

  sub_100052858();
  if (v6 != v3)
  {
    __break(1u);
LABEL_4:
    v4 = &_swiftEmptyArrayStorage;
  }

  v8 = v4;
  sub_10004F1D0(&v8);

  return v8;
}

uint64_t sub_100048F68(uint64_t a1, uint64_t a2)
{
  v5 = (*(*v2 + 104))();
  v14[2] = a2;
  v6 = sub_1000490EC(sub_100052860, v14, v5);

  if (v6)
  {
    a2 = 0xD000000000000024;
    v15[0] = 0xD000000000000024;
    v15[1] = 0x800000010006B580;
    v16 = 2;
    sub_100007B4C();
    swift_willThrowTypedImpl();
  }

  else
  {
    v7 = *(*v2 + 120);

    v8 = v7(v15);
    v10 = v9;
    v11 = *v9;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v10;
    *v10 = 0x8000000000000000;
    sub_1000513FC(a1, a2, isUniquelyReferenced_nonNull_native);
    *v10 = v17;
    v8(v15, 0);
  }

  return a2;
}

uint64_t sub_1000490EC(uint64_t (*a1)(char *), char a2, uint64_t a3)
{
  v4 = v3;
  v26 = a1;
  v25 = sub_100007CCC(&qword_100088088, &qword_100066F70);
  v7 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25);
  v9 = &v24 - v8;
  v10 = a3 + 64;
  v11 = 1 << *(a3 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a3 + 64);
  v14 = (v11 + 63) >> 6;
  v27 = a3;

  v16 = 0;
  while (v13)
  {
    v28 = v4;
LABEL_10:
    v18 = __clz(__rbit64(v13)) | (v16 << 6);
    v19 = v27;
    v20 = *(v27 + 48);
    v21 = type metadata accessor for UUID();
    (*(*(v21 - 8) + 16))(v9, v20 + *(*(v21 - 8) + 72) * v18, v21);
    *&v9[*(v25 + 48)] = *(*(v19 + 56) + 8 * v18);

    v22 = v28;
    v23 = v26(v9);
    v4 = v22;
    result = sub_10000812C(v9, &qword_100088088, &qword_100066F70);
    if (v22)
    {
      goto LABEL_14;
    }

    v13 &= v13 - 1;
    if (v23)
    {
      a2 = 1;
LABEL_14:

      return a2 & 1;
    }
  }

  while (1)
  {
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v17 >= v14)
    {
      a2 = 0;
      goto LABEL_14;
    }

    v13 = *(v10 + 8 * v17);
    ++v16;
    if (v13)
    {
      v28 = v4;
      v16 = v17;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000492E0(uint64_t (*a1)(char *), char a2, uint64_t a3)
{
  v4 = v3;
  v26 = a1;
  v25 = sub_100007CCC(&qword_100088078, &qword_100066F60);
  v7 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25);
  v9 = &v24 - v8;
  v10 = a3 + 64;
  v11 = 1 << *(a3 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a3 + 64);
  v14 = (v11 + 63) >> 6;
  v27 = a3;

  v16 = 0;
  while (v13)
  {
    v28 = v4;
LABEL_10:
    v18 = __clz(__rbit64(v13)) | (v16 << 6);
    v19 = v27;
    v20 = *(v27 + 48);
    v21 = type metadata accessor for UUID();
    (*(*(v21 - 8) + 16))(v9, v20 + *(*(v21 - 8) + 72) * v18, v21);
    *&v9[*(v25 + 48)] = *(*(v19 + 56) + 8 * v18);
    v22 = v28;
    v23 = v26(v9);
    v4 = v22;
    result = sub_10000812C(v9, &qword_100088078, &qword_100066F60);
    if (v22)
    {
      goto LABEL_14;
    }

    v13 &= v13 - 1;
    if (v23)
    {
      a2 = 1;
LABEL_14:

      return a2 & 1;
    }
  }

  while (1)
  {
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v17 >= v14)
    {
      a2 = 0;
      goto LABEL_14;
    }

    v13 = *(v10 + 8 * v17);
    ++v16;
    if (v13)
    {
      v28 = v4;
      v16 = v17;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000494D0(uint64_t a1, uint64_t a2)
{
  v5 = (*(*v2 + 128))();
  v14[2] = a2;
  v6 = sub_1000492E0(sub_100052ED0, v14, v5);

  if (v6)
  {
    a2 = 0xD000000000000036;
    v15[0] = 0xD000000000000036;
    v15[1] = 0x800000010006B5B0;
    v16 = 2;
    sub_100007B4C();
    swift_willThrowTypedImpl();
  }

  else
  {
    v7 = (*(*v2 + 144))(v15);
    v9 = v8;
    v10 = *v8;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v9;
    *v9 = 0x8000000000000000;
    sub_1000515C8(a1, a2, isUniquelyReferenced_nonNull_native);
    v12 = *v9;
    *v9 = v17;

    v7(v15, 0);
  }

  return a2;
}

uint64_t sub_100049654(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = (*(*v2 + 104))(v8);
  if (*(v11 + 16) && (v12 = sub_100042CC8(a2), (v13 & 1) != 0))
  {
    v14 = *(*(v11 + 56) + 8 * v12);

    v16 = (*(*v2 + 128))(v15);
    if (*(v16 + 16) && (v17 = sub_100042CC8(a1), (v18 & 1) != 0))
    {
      v19 = *(*(v16 + 56) + 8 * v17);

      type metadata accessor for ReportClientSession();
      (*(v6 + 16))(v10, a2, v5);
      return sub_100043F2C(v14, v10, v19);
    }

    else
    {

      v20 = 0xD000000000000069;
      v23 = 0xD000000000000069;
      v24 = 0x800000010006B650;
      v25 = 2;
      sub_100007B4C();
      swift_willThrowTypedImpl();
    }
  }

  else
  {
    v20 = 0xD000000000000057;

    v23 = 0xD000000000000057;
    v24 = 0x800000010006B5F0;
    v25 = 2;
    sub_100007B4C();
    swift_willThrowTypedImpl();
  }

  return v20;
}

uint64_t sub_1000498B4()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 120);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1000498E4()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 120);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100049924()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v0 + 112) = sub_100052488(&_swiftEmptyArrayStorage);
  *(v0 + 120) = sub_100052670(&_swiftEmptyArrayStorage);
  return v0;
}

uint64_t sub_10004997C()
{
  swift_defaultActor_initialize();
  *(v0 + 112) = sub_100052488(&_swiftEmptyArrayStorage);
  *(v0 + 120) = sub_100052670(&_swiftEmptyArrayStorage);
  return v0;
}

uint64_t sub_1000499D0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  v6 = *(v2 + 112);
  if (!*(v6 + 16))
  {
    goto LABEL_5;
  }

  v7 = sub_10000CB28(a1, a2);
  if ((v8 & 1) == 0)
  {

LABEL_5:
    type metadata accessor for HandshakeManager.ServiceConstructor.SessionConstruction();
    v9 = swift_allocObject();
    swift_defaultActor_initialize();
    *(v9 + 112) = sub_100052488(&_swiftEmptyArrayStorage);
    *(v9 + 120) = sub_100052670(&_swiftEmptyArrayStorage);
    swift_beginAccess();

    v10 = *(v3 + 112);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v3 + 112);
    *(v3 + 112) = 0x8000000000000000;
    sub_100051764(v9, a1, a2, isUniquelyReferenced_nonNull_native);

    *(v3 + 112) = v13;
    swift_endAccess();
    return v9;
  }

  v9 = *(*(v6 + 56) + 8 * v7);

  return v9;
}

uint64_t sub_100049B14(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  v6 = *(v2 + 112);
  v7 = sub_10000CB28(a1, a2);
  v8 = 0;
  if (v9)
  {
    v10 = v7;
    v11 = *(v3 + 112);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v3 + 112);
    *(v3 + 112) = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_100051E88();
    }

    v14 = *(*(v13 + 48) + 16 * v10 + 8);

    v8 = *(*(v13 + 56) + 8 * v10);
    sub_10005124C(v10, v13);
    *(v3 + 112) = v13;
  }

  swift_endAccess();
  return v8;
}

uint64_t sub_100049BDC(uint64_t a1)
{
  v2[20] = a1;
  v2[21] = v1;
  v3 = type metadata accessor for UUID();
  v2[22] = v3;
  v4 = *(v3 - 8);
  v2[23] = v4;
  v5 = *(v4 + 64) + 15;
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v6 = type metadata accessor for HandshakeEvent();
  v2[29] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v2[30] = swift_task_alloc();

  return _swift_task_switch(sub_100049CFC, 0, 0);
}

uint64_t sub_100049CFC()
{
  v1 = *(v0 + 232);
  sub_1000529E0(*(v0 + 160), *(v0 + 240));
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 3:
      v19 = *(v0 + 240);
      v20 = *(v0 + 200);
      v21 = *(v0 + 208);
      v23 = *(v0 + 184);
      v22 = *(v0 + 192);
      v24 = *(v0 + 176);
      v50 = *(v0 + 168);
      *(v0 + 344) = *v19;
      *(v0 + 352) = *(v19 + 1);
      v25 = sub_100007CCC(&qword_100087930, &qword_100066768);
      v26 = *(v25 + 64);
      v27 = *(v23 + 32);
      v27(v21, &v19[*(v25 + 48)], v24);
      v27(v20, &v19[v26], v24);
      (*(v23 + 16))(v22, v20, v24);
      *(v0 + 152) = 0;
      swift_beginAccess();
      swift_beginAccess();
      if (*(v0 + 152) < 5.0)
      {
        v18 = *(v0 + 168);
        v17 = sub_10004A520;
        goto LABEL_7;
      }

      v35 = *(v0 + 352);
      v36 = *(v0 + 200);
      v37 = *(v0 + 208);
      v39 = *(v0 + 184);
      v38 = *(v0 + 192);
      v40 = *(v0 + 176);

      *(v0 + 64) = xmmword_100066DD0;
      *(v0 + 80) = 1;
      sub_100007B4C();
      swift_willThrowTypedImpl();
      v41 = *(v39 + 8);
      v41(v38, v40);
      v41(v36, v40);
      v41(v37, v40);
      v42 = *(v0 + 240);
      v43 = *(v0 + 216);
      v44 = *(v0 + 224);
      v46 = *(v0 + 200);
      v45 = *(v0 + 208);
      v47 = *(v0 + 192);

      v48 = *(v0 + 8);

      return v48(0x4014000000000000, 0, 1);
    case 2:
      v11 = *(v0 + 240);
      v12 = *(v0 + 216);
      v13 = *(v0 + 176);
      v14 = *(v0 + 184);
      v7 = *(v0 + 168);
      *(v0 + 296) = *v11;
      *(v0 + 304) = *(v11 + 1);
      v15 = sub_100007CCC(&unk_1000878E0, &unk_1000666D0);
      v16 = *(v15 + 48);
      *(v0 + 312) = *&v11[*(v15 + 64)];
      (*(v14 + 32))(v12, &v11[v16], v13);
      v10 = sub_10004A318;
      goto LABEL_6;
    case 1:
      v3 = *(v0 + 240);
      v4 = *(v0 + 224);
      v5 = *(v0 + 176);
      v6 = *(v0 + 184);
      v7 = *(v0 + 168);
      *(v0 + 248) = *v3;
      *(v0 + 256) = *(v3 + 1);
      v8 = sub_100007CCC(&qword_100087908, &qword_100066710);
      v9 = *(v8 + 48);
      *(v0 + 264) = *&v3[*(v8 + 64)];
      (*(v6 + 32))(v4, &v3[v9], v5);
      v10 = sub_10004A108;
LABEL_6:
      v17 = v10;
      v18 = v7;
LABEL_7:

      return _swift_task_switch(v17, v18, 0);
    default:
      sub_100052A44(*(v0 + 240));
      v28 = *(v0 + 240);
      v29 = *(v0 + 216);
      v30 = *(v0 + 224);
      v32 = *(v0 + 200);
      v31 = *(v0 + 208);
      v33 = *(v0 + 192);

      v34 = *(v0 + 8);

      return v34(0);
  }
}

uint64_t sub_10004A108()
{
  v1 = v0[21];
  v2 = sub_1000499D0(v0[31], v0[32]);
  v0[34] = v2;

  v3 = (*v2 + 160) & 0xFFFFFFFFFFFFLL | 0xAEC9000000000000;
  v0[35] = *(*v2 + 160);
  v0[36] = v3;

  return _swift_task_switch(sub_10004A1A4, v2, 0);
}

uint64_t sub_10004A1A4()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 272);
  (*(v0 + 280))(*(v0 + 264), *(v0 + 224));

  return _swift_task_switch(sub_10004A23C, 0, 0);
}

uint64_t sub_10004A23C()
{
  v2 = v0[33];
  v1 = v0[34];
  v3 = v0[28];
  v4 = v0[22];
  v5 = v0[23];

  (*(v5 + 8))(v3, v4);
  v6 = v0[30];
  v7 = v0[27];
  v8 = v0[28];
  v10 = v0[25];
  v9 = v0[26];
  v11 = v0[24];

  v12 = v0[1];

  return v12(0);
}

uint64_t sub_10004A318()
{
  v1 = v0[21];
  v2 = sub_1000499D0(v0[37], v0[38]);
  v0[40] = v2;

  v3 = (*v2 + 168) & 0xFFFFFFFFFFFFLL | 0xE010000000000000;
  v0[41] = *(*v2 + 168);
  v0[42] = v3;

  return _swift_task_switch(sub_10004A3B4, v2, 0);
}

uint64_t sub_10004A3B4()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 320);
  (*(v0 + 328))(*(v0 + 312), *(v0 + 216));

  return _swift_task_switch(sub_10004A44C, 0, 0);
}

uint64_t sub_10004A44C()
{
  v1 = v0[40];
  v2 = v0[27];
  v3 = v0[22];
  v4 = v0[23];

  (*(v4 + 8))(v2, v3);
  v5 = v0[30];
  v6 = v0[27];
  v7 = v0[28];
  v9 = v0[25];
  v8 = v0[26];
  v10 = v0[24];

  v11 = v0[1];

  return v11(0);
}

uint64_t sub_10004A520()
{
  *(v0 + 360) = *(*(v0 + 168) + 112);

  return _swift_task_switch(sub_10004A594, 0, 0);
}

uint64_t sub_10004A594()
{
  if (*(v0[45] + 16) && (v1 = sub_10000CB28(v0[43], v0[44]), (v2 & 1) != 0))
  {
    v3 = *(*(v0[45] + 56) + 8 * v1);
    v0[48] = v3;

    v4 = (*v3 + 152) & 0xFFFFFFFFFFFFLL | 0xCD82000000000000;
    v0[49] = *(*v3 + 152);
    v0[50] = v4;

    return _swift_task_switch(sub_10004AA08, v3, 0);
  }

  else
  {
    v6 = v0[43];
    v5 = v0[44];

    v0[13] = 0;
    v0[14] = 0xE000000000000000;
    _StringGuts.grow(_:)(54);
    v7 = v0[14];
    v0[11] = v0[13];
    v0[12] = v7;
    v8._countAndFlagsBits = 0xD00000000000001FLL;
    v8._object = 0x800000010006B6C0;
    String.append(_:)(v8);
    v9._countAndFlagsBits = v6;
    v9._object = v5;
    String.append(_:)(v9);
    v10._object = 0x800000010006B6E0;
    v10._countAndFlagsBits = 0xD000000000000015;
    String.append(_:)(v10);
    v11 = v0[11];
    v12 = v0[12];
    v0[46] = v12;
    v13 = swift_task_alloc();
    v0[47] = v13;
    *v13 = v0;
    v13[1] = sub_10004A764;

    return sub_10004B548(v11, v12, (v0 + 19), 1.0);
  }
}

uint64_t sub_10004A764()
{
  v1 = *(*v0 + 376);
  v2 = *(*v0 + 368);
  v4 = *v0;

  return _swift_task_switch(sub_10004A87C, 0, 0);
}

uint64_t sub_10004A87C()
{
  if (*(v0 + 152) >= 5.0)
  {
    v2 = *(v0 + 352);
    v3 = *(v0 + 200);
    v4 = *(v0 + 208);
    v6 = *(v0 + 184);
    v5 = *(v0 + 192);
    v7 = *(v0 + 176);

    *(v0 + 64) = xmmword_100066DD0;
    *(v0 + 80) = 1;
    sub_100007B4C();
    swift_willThrowTypedImpl();
    v8 = *(v6 + 8);
    v8(v5, v7);
    v8(v3, v7);
    v8(v4, v7);
    v9 = *(v0 + 240);
    v10 = *(v0 + 216);
    v11 = *(v0 + 224);
    v13 = *(v0 + 200);
    v12 = *(v0 + 208);
    v14 = *(v0 + 192);

    v15 = *(v0 + 8);

    return v15(0x4014000000000000, 0, 1);
  }

  else
  {
    v1 = *(v0 + 168);

    return _swift_task_switch(sub_10004A520, v1, 0);
  }
}

uint64_t sub_10004AA08()
{
  v1 = *(v0 + 400);
  v2 = *(v0 + 384);
  *(v0 + 408) = (*(v0 + 392))();

  return _swift_task_switch(sub_10004AA78, 0, 0);
}

uint64_t sub_10004AA78()
{
  v1 = sub_10004B43C(v0[24], v0[51]);

  if (v1)
  {
    v2 = v0[48];
    v4 = v0[23];
    v3 = v0[24];
    v5 = v0[22];
    v6 = *(v4 + 8);
    v0[52] = v6;
    v0[53] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v6(v3, v5);
    v7 = (*v2 + 176) & 0xFFFFFFFFFFFFLL | 0xC2DD000000000000;
    v0[54] = *(*v2 + 176);
    v0[55] = v7;

    return _swift_task_switch(sub_10004AC4C, v2, 0);
  }

  else
  {
    v9 = v0[43];
    v8 = v0[44];
    v0[17] = 0;
    v0[18] = 0xE000000000000000;
    _StringGuts.grow(_:)(62);
    v10 = v0[18];
    v0[15] = v0[17];
    v0[16] = v10;
    v11._countAndFlagsBits = 0xD00000000000001FLL;
    v11._object = 0x800000010006B6C0;
    String.append(_:)(v11);
    v12._countAndFlagsBits = v9;
    v12._object = v8;
    String.append(_:)(v12);
    v13._object = 0x800000010006B700;
    v13._countAndFlagsBits = 0xD00000000000001DLL;
    String.append(_:)(v13);
    v14 = v0[15];
    v15 = v0[16];
    v0[57] = v15;
    v16 = swift_task_alloc();
    v0[58] = v16;
    *v16 = v0;
    v16[1] = sub_10004ACF8;

    return sub_10004B548(v14, v15, (v0 + 19), 1.0);
  }
}

uint64_t sub_10004AC4C()
{
  v1 = *(v0 + 440);
  v2 = *(v0 + 384);
  *(v0 + 448) = (*(v0 + 432))(*(v0 + 200), *(v0 + 208));
  v3 = *(v0 + 168);

  return _swift_task_switch(sub_10004AFA4, v3, 0);
}

uint64_t sub_10004ACF8()
{
  v1 = *(*v0 + 464);
  v2 = *(*v0 + 456);
  v4 = *v0;

  return _swift_task_switch(sub_10004AE10, 0, 0);
}

uint64_t sub_10004AE10()
{
  v1 = *(v0 + 384);

  if (*(v0 + 152) >= 5.0)
  {
    v3 = *(v0 + 352);
    v4 = *(v0 + 200);
    v5 = *(v0 + 208);
    v7 = *(v0 + 184);
    v6 = *(v0 + 192);
    v8 = *(v0 + 176);

    *(v0 + 64) = xmmword_100066DD0;
    *(v0 + 80) = 1;
    sub_100007B4C();
    swift_willThrowTypedImpl();
    v9 = *(v7 + 8);
    v9(v6, v8);
    v9(v4, v8);
    v9(v5, v8);
    v10 = *(v0 + 240);
    v11 = *(v0 + 216);
    v12 = *(v0 + 224);
    v14 = *(v0 + 200);
    v13 = *(v0 + 208);
    v15 = *(v0 + 192);

    v16 = *(v0 + 8);

    return v16(0x4014000000000000, 0, 1);
  }

  else
  {
    v2 = *(v0 + 168);

    return _swift_task_switch(sub_10004A520, v2, 0);
  }
}

uint64_t sub_10004AFA4()
{
  v1 = v0[21];
  sub_100049B14(v0[43], v0[44]);

  return _swift_task_switch(sub_10004B014, 0, 0);
}

uint64_t sub_10004B014()
{
  v23 = v0;
  v1 = v0[56];
  v2 = v0[52];
  v3 = v0[53];
  v4 = v0[48];
  v6 = v0[43];
  v5 = v0[44];
  v7 = v0[25];
  v18 = v0[26];
  v8 = v0[22];
  type metadata accessor for ServiceRecord();
  v20 = type metadata accessor for ReportClientSession();
  v21 = &off_1000808D0;
  *&v19 = v1;

  sub_100053680(v22);
  v9 = sub_1000536C0(v6, v5, 2, &v19, v22);

  v2(v7, v8);
  v2(v18, v8);
  v10 = v0[30];
  v12 = v0[27];
  v11 = v0[28];
  v14 = v0[25];
  v13 = v0[26];
  v15 = v0[24];

  v16 = v0[1];

  return v16(v9);
}