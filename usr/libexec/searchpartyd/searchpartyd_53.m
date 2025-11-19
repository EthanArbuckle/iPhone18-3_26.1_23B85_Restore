unint64_t sub_1005909A4()
{
  result = qword_1016A4C00;
  if (!qword_1016A4C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4C00);
  }

  return result;
}

unint64_t sub_1005909F8()
{
  result = qword_1016A4C08;
  if (!qword_1016A4C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4C08);
  }

  return result;
}

uint64_t sub_100590A4C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

__n128 sub_100590AB8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100590ADC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 40))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 16) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 16) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_100590B30(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
      *(result + 16) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_100590B98()
{
  *&v27 = 0;
  *(&v27 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(29);

  v25 = 0x203A7865646E693CLL;
  v26 = 0xE800000000000000;
  v1 = *v0;
  *&v27 = 0x7972616D6972702ELL;
  *(&v27 + 1) = 0xEA0000000000282FLL;
  v24[0] = v1;
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 41;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  v4._countAndFlagsBits = 0x7972616D6972702ELL;
  v4._object = 0xEA0000000000282FLL;
  String.append(_:)(v4);

  v5._countAndFlagsBits = 0x203A74766461202CLL;
  v5._object = 0xE800000000000000;
  String.append(_:)(v5);
  v27 = *(v0 + 8);
  v6 = v27;
  sub_100590F20(&v27, v24);
  sub_10002EA98(6, v6, *(&v6 + 1), v24);
  v7 = v24[0];
  v8 = v24[1];
  sub_100019D9C();
  v9 = RawRepresentable<>.hexString.getter();
  v11 = v10;
  sub_100016590(v7, v8);
  v12._countAndFlagsBits = v9;
  v12._object = v11;
  String.append(_:)(v12);

  v13._countAndFlagsBits = 0x203A6B746C202CLL;
  v13._object = 0xE700000000000000;
  String.append(_:)(v13);
  v14 = *(v0 + 24);
  v15 = *(v0 + 32);
  v16 = Data.subdata(in:)();
  v18 = v17;
  v19 = Data.hexString.getter();
  v21 = v20;
  sub_100016590(v16, v18);
  v22._countAndFlagsBits = v19;
  v22._object = v21;
  String.append(_:)(v22);

  return v25;
}

uint64_t sub_100590D7C()
{
  _StringGuts.grow(_:)(29);

  v18 = 0x203A7865646E693CLL;
  v19 = 0xE800000000000000;
  v1 = *v0;
  strcpy(&v17, ".secondary/(");
  BYTE5(v17._object) = 0;
  HIWORD(v17._object) = -5120;
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 41;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  String.append(_:)(v17);

  v4._countAndFlagsBits = 0x203A74766461202CLL;
  v4._object = 0xE800000000000000;
  String.append(_:)(v4);
  v17 = *(v0 + 1);
  sub_10002EE9C();
  v5._countAndFlagsBits = RawRepresentable<>.hexString.getter();
  String.append(_:)(v5);

  v6._countAndFlagsBits = 0x203A6B746C202CLL;
  v6._object = 0xE700000000000000;
  String.append(_:)(v6);
  v7 = v0[3];
  v8 = v0[4];
  v9 = Data.subdata(in:)();
  v11 = v10;
  v12 = Data.hexString.getter();
  v14 = v13;
  sub_100016590(v9, v11);
  v15._countAndFlagsBits = v12;
  v15._object = v14;
  String.append(_:)(v15);

  return 0x203A7865646E693CLL;
}

uint64_t sub_100590F94(void *a1, char a2)
{
  v3 = a1[4];
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryEncoding.container()();
  v9 = a2;
  sub_1000198E8();
  v6 = FixedWidthInteger.data.getter();
  v7 = v4;
  sub_10015049C(v8, v8[3]);
  sub_100165078();
  dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
  sub_100016590(v6, v7);
  return sub_100007BAC(v8);
}

uint64_t sub_100591060@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10059112C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_10059108C(uint64_t a1)
{
  *(a1 + 8) = sub_1005910BC();
  result = sub_10030FD7C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1005910BC()
{
  result = qword_1016A4C70;
  if (!qword_1016A4C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4C70);
  }

  return result;
}

uint64_t sub_10059112C(uint64_t *a1)
{
  v3 = type metadata accessor for Endianness();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v5 = a1[4];
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryDecoding.container()();
  v6 = sub_10015049C(v15, v15[3]);
  v7 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  if (!v1)
  {
    v9 = v7;
    v10 = v8;
    sub_100017D5C(v7, v8);
    static Endianness.current.getter();
    sub_1000198E8();
    FixedWidthInteger.init(data:ofEndianness:)();
    if (v14 != 1)
    {
      v6 = v13;
      sub_100016590(v9, v10);
      sub_100007BAC(v15);
      sub_100007BAC(a1);
      return v6;
    }

    v6 = type metadata accessor for BinaryDecodingError();
    sub_100247A38();
    swift_allocError();
    (*(*(v6 - 8) + 104))(v11, enum case for BinaryDecodingError.decodingError(_:), v6);
    swift_willThrow();
    sub_100016590(v9, v10);
  }

  sub_100007BAC(v15);
  sub_100007BAC(a1);
  return v6;
}

uint64_t type metadata accessor for FindMyAirPodsFamilyShareEnvelope()
{
  result = qword_1016A4CD0;
  if (!qword_1016A4CD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100591370()
{
  type metadata accessor for SharedBeaconRecord(319);
  if (v0 <= 0x3F)
  {
    sub_1005913F4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1005913F4()
{
  if (!qword_10169C360)
  {
    type metadata accessor for FamilyCryptoKeysV1();
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_10169C360);
    }
  }
}

uint64_t sub_10059144C(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016A4D10, &qword_1013B1C98);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100591BCC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v15) = 0;
  type metadata accessor for SharedBeaconRecord(0);
  sub_100591D20(&qword_1016A4918, type metadata accessor for SharedBeaconRecord);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    MyAirPodsFamilyShareEnvelope = type metadata accessor for FindMyAirPodsFamilyShareEnvelope();
    v15 = *(v3 + *(MyAirPodsFamilyShareEnvelope + 20));
    v14 = 1;
    sub_1000BC4D4(&qword_10169C460, &qword_1013B1CA0);
    sub_100591C84(&qword_10169C468, &qword_10169C470);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v15 = *(v3 + *(MyAirPodsFamilyShareEnvelope + 24));
    v14 = 2;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1005916B4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = type metadata accessor for SharedBeaconRecord(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000BC4D4(&qword_1016A4D20, &qword_1013B1CA8);
  v24 = *(v8 - 8);
  v25 = v8;
  v9 = *(v24 + 64);
  __chkstk_darwin(v8);
  v11 = &v22 - v10;
  MyAirPodsFamilyShareEnvelope = type metadata accessor for FindMyAirPodsFamilyShareEnvelope();
  v13 = *(*(MyAirPodsFamilyShareEnvelope - 8) + 64);
  __chkstk_darwin(MyAirPodsFamilyShareEnvelope);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[3];
  v16 = a1[4];
  v26 = a1;
  sub_1000035D0(a1, v17);
  sub_100591BCC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(v26);
  }

  v18 = v24;
  v19 = v15;
  LOBYTE(v28) = 0;
  sub_100591D20(&qword_1016CAC80, type metadata accessor for SharedBeaconRecord);
  v20 = v25;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  sub_100591C20(v7, v19);
  sub_1000BC4D4(&qword_10169C460, &qword_1013B1CA0);
  v27 = 1;
  v22 = sub_100591C84(&qword_10169C498, &qword_10169C4A0);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *(v19 + *(MyAirPodsFamilyShareEnvelope + 20)) = v28;
  v27 = 2;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v18 + 8))(v11, v20);
  *(v19 + *(MyAirPodsFamilyShareEnvelope + 24)) = v28;
  sub_100591D68(v19, v23);
  sub_100007BAC(v26);
  return sub_100591DCC(v19, type metadata accessor for FindMyAirPodsFamilyShareEnvelope);
}

uint64_t sub_100591A94()
{
  v1 = 0xD000000000000012;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000014;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6542646572616873;
  }
}

uint64_t sub_100591AFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100591F44(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100591B24(uint64_t a1)
{
  v2 = sub_100591BCC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100591B60(uint64_t a1)
{
  v2 = sub_100591BCC();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_100591BCC()
{
  result = qword_1016A4D18;
  if (!qword_1016A4D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4D18);
  }

  return result;
}

uint64_t sub_100591C20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharedBeaconRecord(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100591C84(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000BC580(&qword_10169C460, &qword_1013B1CA0);
    sub_100591D20(a2, type metadata accessor for FamilyCryptoKeysV1);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100591D20(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100591D68(uint64_t a1, uint64_t a2)
{
  MyAirPodsFamilyShareEnvelope = type metadata accessor for FindMyAirPodsFamilyShareEnvelope();
  (*(*(MyAirPodsFamilyShareEnvelope - 8) + 16))(a2, a1, MyAirPodsFamilyShareEnvelope);
  return a2;
}

uint64_t sub_100591DCC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100591E40()
{
  result = qword_1016A4D28;
  if (!qword_1016A4D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4D28);
  }

  return result;
}

unint64_t sub_100591E98()
{
  result = qword_1016A4D30;
  if (!qword_1016A4D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4D30);
  }

  return result;
}

unint64_t sub_100591EF0()
{
  result = qword_1016A4D38;
  if (!qword_1016A4D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4D38);
  }

  return result;
}

uint64_t sub_100591F44(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6542646572616873 && a2 == 0xEC0000006E6F6361;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x800000010135B260 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x800000010135B280 == a2)
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

uint64_t static AirPodsSWSendPairingStatusCommandPayload.expectedLength.setter(uint64_t a1)
{
  result = swift_beginAccess();
  static AirPodsSWSendPairingStatusCommandPayload.expectedLength = a1;
  return result;
}

double AirPodsSWSendPairingStatusCommandPayload.init(from:)@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1005923A4(a1, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a2 = v7[0];
    a2[1] = v5;
    result = *&v8;
    v6 = v9;
    a2[2] = v8;
    a2[3] = v6;
  }

  return result;
}

uint64_t ProximitySendPairingStatusCommandPayload.encode(to:)(void *a1)
{
  v3 = a1[4];
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryEncoding.container()();
  v12 = *v1;
  v6 = *v1;
  sub_10015049C(v7, v8);
  sub_1001022C4(&v12, v5);
  sub_100165078();
  dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
  sub_100016590(v6, *(&v6 + 1));
  if (!v2)
  {
    v11 = v1[1];
    v6 = v1[1];
    sub_10015049C(v7, v8);
    sub_1001022C4(&v11, v5);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v6, *(&v6 + 1));
    v10 = v1[2];
    v6 = v1[2];
    sub_10015049C(v7, v8);
    sub_1001022C4(&v10, v5);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v6, *(&v6 + 1));
    v9 = v1[3];
    v6 = v1[3];
    sub_10015049C(v7, v8);
    sub_1001022C4(&v9, v5);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v6, *(&v6 + 1));
  }

  return sub_100007BAC(v7);
}

uint64_t sub_1005923A4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = a1[4];
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryDecoding.container()();
  sub_10015049C(v34, v35);
  v6 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  if (v2)
  {
    sub_100007BAC(v34);
    return sub_100007BAC(a1);
  }

  v8 = v6;
  v9 = v7;
  sub_10015049C(v34, v35);
  v36 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v11 = v10;
  sub_10015049C(v34, v35);
  v31 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v32 = v12;
  sub_10015049C(v34, v35);
  v13 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v29 = v15;
  v30 = v13;
  sub_1000E0A3C();
  v16 = DataProtocol.intValue.getter();
  result = sub_10002EA98(v16, v31, v32, v33);
  v17 = v33[0];
  v18 = v33[1];
  v19 = v9 >> 62;
  if ((v9 >> 62) <= 1)
  {
    v20 = v36;
    if (!v19)
    {
      v21 = BYTE6(v9);
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  v20 = v36;
  if (v19 != 2)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v23 = *(v8 + 16);
  v22 = *(v8 + 24);
  v24 = __OFSUB__(v22, v23);
  v21 = v22 - v23;
  if (v24)
  {
    __break(1u);
LABEL_11:
    LODWORD(v21) = HIDWORD(v8) - v8;
    if (__OFSUB__(HIDWORD(v8), v8))
    {
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v21 = v21;
  }

LABEL_13:
  if (v21 != 85)
  {
    goto LABEL_27;
  }

  v25 = v11 >> 62;
  if ((v11 >> 62) <= 1)
  {
    if (!v25)
    {
      v26 = BYTE6(v11);
      goto LABEL_23;
    }

LABEL_21:
    LODWORD(v26) = HIDWORD(v20) - v20;
    if (!__OFSUB__(HIDWORD(v20), v20))
    {
      v26 = v26;
      goto LABEL_23;
    }

    goto LABEL_26;
  }

  if (v25 != 2)
  {
    goto LABEL_28;
  }

  v28 = *(v20 + 16);
  v27 = *(v20 + 24);
  v24 = __OFSUB__(v27, v28);
  v26 = v27 - v28;
  if (v24)
  {
    __break(1u);
    goto LABEL_21;
  }

LABEL_23:
  if (v26 == 4)
  {
    sub_100007BAC(v34);
    result = sub_100007BAC(a1);
    *a2 = v8;
    a2[1] = v9;
    a2[2] = v20;
    a2[3] = v11;
    a2[4] = v17;
    a2[5] = v18;
    a2[6] = v30;
    a2[7] = v29;
    return result;
  }

LABEL_28:
  __break(1u);
  return result;
}

unint64_t sub_10059261C(uint64_t a1)
{
  *(a1 + 8) = sub_10059264C();
  result = sub_10039294C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_10059264C()
{
  result = qword_1016A4D48;
  if (!qword_1016A4D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4D48);
  }

  return result;
}

uint64_t sub_1005926B0()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177AF58);
  v1 = sub_1000076D4(v0, qword_10177AF58);
  if (qword_1016947E8 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_10177AF70);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100592778@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for CodingUserInfoKey();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for PropertyListDecoder();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  if (qword_1016954E0 != -1)
  {
    swift_once();
  }

  v11 = sub_1000076D4(v3, static CodingUserInfoKey.messagingCoder);
  (*(v4 + 16))(v7, v11, v3);
  v18[3] = &type metadata for Bool;
  LOBYTE(v18[0]) = 1;
  v12 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_1001DDE00(v18, v7);
  v12(v17, 0);
  sub_1000BC4D4(&qword_1016A4798, &qword_1013B1150);
  sub_100599720();
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (!v1)
  {
    v13 = v18[0];
    if (*(v18[0] + 16))
    {
      v14 = *(type metadata accessor for LegacyShareEnvelope(0) - 8);
      sub_10059A080(v13 + ((*(v14 + 80) + 32) & ~*(v14 + 80)), a1, type metadata accessor for LegacyShareEnvelope);
    }

    else
    {

      sub_1000BC4D4(&qword_1016A4F58, &unk_1013B2148);
      sub_1005997D4(&qword_1016A4F60, &qword_1016A4F58, &unk_1013B2148);
      swift_allocError();
      *v15 = 0;
      swift_willThrow();
    }
  }
}

uint64_t sub_100592A30@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for CodingUserInfoKey();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for PropertyListDecoder();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  if (qword_1016954E0 != -1)
  {
    swift_once();
  }

  v11 = sub_1000076D4(v3, static CodingUserInfoKey.messagingCoder);
  (*(v4 + 16))(v7, v11, v3);
  v18[3] = &type metadata for Bool;
  LOBYTE(v18[0]) = 1;
  v12 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_1001DDE00(v18, v7);
  v12(v17, 0);
  sub_1000BC4D4(&qword_1016A47B8, &qword_1013B1160);
  sub_100599828();
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (!v1)
  {
    v13 = v18[0];
    if (*(v18[0] + 16))
    {
      v14 = *(type metadata accessor for FamilyShareEnvelopeV1(0) - 8);
      sub_10059A080(v13 + ((*(v14 + 80) + 32) & ~*(v14 + 80)), a1, type metadata accessor for FamilyShareEnvelopeV1);
    }

    else
    {

      sub_1000BC4D4(&qword_1016A4F58, &unk_1013B2148);
      sub_1005997D4(&qword_1016A4F60, &qword_1016A4F58, &unk_1013B2148);
      swift_allocError();
      *v15 = 0;
      swift_willThrow();
    }
  }
}

uint64_t sub_100592CE8@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for CodingUserInfoKey();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for PropertyListDecoder();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  if (qword_1016954E0 != -1)
  {
    swift_once();
  }

  v11 = sub_1000076D4(v3, static CodingUserInfoKey.messagingCoder);
  (*(v4 + 16))(v7, v11, v3);
  v18[3] = &type metadata for Bool;
  LOBYTE(v18[0]) = 1;
  v12 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_1001DDE00(v18, v7);
  v12(v17, 0);
  sub_1000BC4D4(&qword_1016A4800, &unk_1013B1198);
  sub_1005998DC();
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (!v1)
  {
    v13 = v18[0];
    if (*(v18[0] + 16))
    {
      v14 = *(type metadata accessor for FindMyAccessoryFamilyShareEnvelope(0) - 8);
      sub_10059A080(v13 + ((*(v14 + 80) + 32) & ~*(v14 + 80)), a1, type metadata accessor for FindMyAccessoryFamilyShareEnvelope);
    }

    else
    {

      sub_1000BC4D4(&qword_1016A4F58, &unk_1013B2148);
      sub_1005997D4(&qword_1016A4F60, &qword_1016A4F58, &unk_1013B2148);
      swift_allocError();
      *v15 = 0;
      swift_willThrow();
    }
  }
}

uint64_t sub_100592FA0@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for CodingUserInfoKey();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for PropertyListDecoder();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  if (qword_1016954E0 != -1)
  {
    swift_once();
  }

  v11 = sub_1000076D4(v3, static CodingUserInfoKey.messagingCoder);
  (*(v4 + 16))(v7, v11, v3);
  v18[3] = &type metadata for Bool;
  LOBYTE(v18[0]) = 1;
  v12 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_1001DDE00(v18, v7);
  v12(v17, 0);
  sub_1000BC4D4(&qword_1016A47D8, &qword_1013B1170);
  sub_100599990();
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (!v1)
  {
    v13 = v18[0];
    if (*(v18[0] + 16))
    {
      v14 = *(type metadata accessor for FindMyAirPodsFamilyShareEnvelope() - 8);
      sub_10059A080(v13 + ((*(v14 + 80) + 32) & ~*(v14 + 80)), a1, type metadata accessor for FindMyAirPodsFamilyShareEnvelope);
    }

    else
    {

      sub_1000BC4D4(&qword_1016A4F58, &unk_1013B2148);
      sub_1005997D4(&qword_1016A4F60, &qword_1016A4F58, &unk_1013B2148);
      swift_allocError();
      *v15 = 0;
      swift_willThrow();
    }
  }
}

uint64_t sub_100593258()
{
  v1 = type metadata accessor for CodingUserInfoKey();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for PropertyListDecoder();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  if (qword_1016954E0 != -1)
  {
    swift_once();
  }

  v9 = sub_1000076D4(v1, static CodingUserInfoKey.messagingCoder);
  (*(v2 + 16))(v5, v9, v1);
  v15[3] = &type metadata for Bool;
  LOBYTE(v15[0]) = 1;
  v10 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_1001DDE00(v15, v5);
  v10(v14, 0);
  sub_1000BC4D4(&qword_1016A4F98, &qword_1013B2158);
  sub_10059932C(&qword_1016A4FA0, &qword_1016A4F98, &qword_1013B2158, sub_100599A44);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (!v0)
  {
    v11 = *(v15[0] + 16);

    if (!v11)
    {
      sub_1000BC4D4(&qword_1016A4F58, &unk_1013B2148);
      sub_1005997D4(&qword_1016A4F60, &qword_1016A4F58, &unk_1013B2148);
      swift_allocError();
      *v12 = 0;
      swift_willThrow();
    }
  }
}

uint64_t sub_1005934C8@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for CodingUserInfoKey();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for PropertyListDecoder();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  if (qword_1016954E0 != -1)
  {
    swift_once();
  }

  v11 = sub_1000076D4(v3, static CodingUserInfoKey.messagingCoder);
  (*(v4 + 16))(v7, v11, v3);
  v18[3] = &type metadata for Bool;
  LOBYTE(v18[0]) = 1;
  v12 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_1001DDE00(v18, v7);
  v12(v17, 0);
  sub_1000BC4D4(&unk_1016BF350, &unk_1013E4AF0);
  sub_100599E1C();
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (!v1)
  {
    v13 = v18[0];
    if (*(v18[0] + 16))
    {
      v14 = type metadata accessor for UUID();
      (*(*(v14 - 8) + 16))(a1, v13 + ((*(*(v14 - 8) + 80) + 32) & ~*(*(v14 - 8) + 80)), v14);
    }

    else
    {

      sub_1000BC4D4(&qword_1016A4F58, &unk_1013B2148);
      sub_1005997D4(&qword_1016A4F60, &qword_1016A4F58, &unk_1013B2148);
      swift_allocError();
      *v15 = 0;
      swift_willThrow();
    }
  }
}

uint64_t sub_100593770@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for CodingUserInfoKey();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for PropertyListDecoder();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  if (qword_1016954E0 != -1)
  {
    swift_once();
  }

  v11 = sub_1000076D4(v3, static CodingUserInfoKey.messagingCoder);
  (*(v4 + 16))(v7, v11, v3);
  v18[3] = &type metadata for Bool;
  LOBYTE(v18[0]) = 1;
  v12 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_1001DDE00(v18, v7);
  v12(v17, 0);
  sub_1000BC4D4(&qword_1016A46C8, &unk_1013B2160);
  sub_100599A98();
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (!v1)
  {
    v13 = v18[0];
    if (*(v18[0] + 16))
    {
      v14 = *(type metadata accessor for FindMyAccessoryFamilyShareResponseEnvelope(0) - 8);
      sub_10059A080(v13 + ((*(v14 + 80) + 32) & ~*(v14 + 80)), a1, type metadata accessor for FindMyAccessoryFamilyShareResponseEnvelope);
    }

    else
    {

      sub_1000BC4D4(&qword_1016A4F58, &unk_1013B2148);
      sub_1005997D4(&qword_1016A4F60, &qword_1016A4F58, &unk_1013B2148);
      swift_allocError();
      *v15 = 0;
      swift_willThrow();
    }
  }
}

uint64_t sub_100593A28@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for CodingUserInfoKey();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for PropertyListDecoder();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  if (qword_1016954E0 != -1)
  {
    swift_once();
  }

  v11 = sub_1000076D4(v3, static CodingUserInfoKey.messagingCoder);
  (*(v4 + 16))(v7, v11, v3);
  v18[3] = &type metadata for Bool;
  LOBYTE(v18[0]) = 1;
  v12 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_1001DDE00(v18, v7);
  v12(v17, 0);
  sub_1000BC4D4(&qword_101697720, &unk_101392640);
  sub_100599B4C();
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (!v1)
  {
    v13 = v18[0];
    if (*(v18[0] + 16))
    {
      v14 = *(type metadata accessor for SharedBeaconRecord(0) - 8);
      sub_10059A080(v13 + ((*(v14 + 80) + 32) & ~*(v14 + 80)), a1, type metadata accessor for SharedBeaconRecord);
    }

    else
    {

      sub_1000BC4D4(&qword_1016A4F58, &unk_1013B2148);
      sub_1005997D4(&qword_1016A4F60, &qword_1016A4F58, &unk_1013B2148);
      swift_allocError();
      *v15 = 0;
      swift_willThrow();
    }
  }
}

uint64_t sub_100593CE0@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for CodingUserInfoKey();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for PropertyListDecoder();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  if (qword_1016954E0 != -1)
  {
    swift_once();
  }

  v11 = sub_1000076D4(v3, static CodingUserInfoKey.messagingCoder);
  (*(v4 + 16))(v7, v11, v3);
  v18[3] = &type metadata for Bool;
  LOBYTE(v18[0]) = 1;
  v12 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_1001DDE00(v18, v7);
  v12(v17, 0);
  sub_1000BC4D4(&qword_1016A4820, &unk_1013B2170);
  sub_100599C00();
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (!v1)
  {
    v13 = v18[0];
    if (*(v18[0] + 16))
    {
      v14 = *(type metadata accessor for LegacySelfBeaconingKeyEnvelope(0) - 8);
      sub_10059A080(v13 + ((*(v14 + 80) + 32) & ~*(v14 + 80)), a1, type metadata accessor for LegacySelfBeaconingKeyEnvelope);
    }

    else
    {

      sub_1000BC4D4(&qword_1016A4F58, &unk_1013B2148);
      sub_1005997D4(&qword_1016A4F60, &qword_1016A4F58, &unk_1013B2148);
      swift_allocError();
      *v15 = 0;
      swift_willThrow();
    }
  }
}

uint64_t sub_100593F98@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for CodingUserInfoKey();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for PropertyListDecoder();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  if (qword_1016954E0 != -1)
  {
    swift_once();
  }

  v11 = sub_1000076D4(v3, static CodingUserInfoKey.messagingCoder);
  (*(v4 + 16))(v7, v11, v3);
  v18[3] = &type metadata for Bool;
  LOBYTE(v18[0]) = 1;
  v12 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_1001DDE00(v18, v7);
  v12(v17, 0);
  sub_1000BC4D4(&qword_1016A4860, &qword_1013B1208);
  sub_100599CB4();
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (!v1)
  {
    v13 = v18[0];
    if (*(v18[0] + 16))
    {
      v14 = *(type metadata accessor for SelfBeaconingKeyEnvelope(0) - 8);
      sub_10059A080(v13 + ((*(v14 + 80) + 32) & ~*(v14 + 80)), a1, type metadata accessor for SelfBeaconingKeyEnvelope);
    }

    else
    {

      sub_1000BC4D4(&qword_1016A4F58, &unk_1013B2148);
      sub_1005997D4(&qword_1016A4F60, &qword_1016A4F58, &unk_1013B2148);
      swift_allocError();
      *v15 = 0;
      swift_willThrow();
    }
  }
}

uint64_t sub_100594250@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for CodingUserInfoKey();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for PropertyListDecoder();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  if (qword_1016954E0 != -1)
  {
    swift_once();
  }

  v11 = sub_1000076D4(v3, static CodingUserInfoKey.messagingCoder);
  (*(v4 + 16))(v7, v11, v3);
  v18[3] = &type metadata for Bool;
  LOBYTE(v18[0]) = 1;
  v12 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_1001DDE00(v18, v7);
  v12(v17, 0);
  sub_1000BC4D4(&qword_1016A4840, &unk_1013B2180);
  sub_100599D68();
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (!v1)
  {
    v13 = v18[0];
    if (*(v18[0] + 16))
    {
      v14 = *(type metadata accessor for FindMyAccessoryFamilyKeyEnvelope() - 8);
      sub_10059A080(v13 + ((*(v14 + 80) + 32) & ~*(v14 + 80)), a1, type metadata accessor for FindMyAccessoryFamilyKeyEnvelope);
    }

    else
    {

      sub_1000BC4D4(&qword_1016A4F58, &unk_1013B2148);
      sub_1005997D4(&qword_1016A4F60, &qword_1016A4F58, &unk_1013B2148);
      swift_allocError();
      *v15 = 0;
      swift_willThrow();
    }
  }
}

uint64_t sub_100594508@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for CodingUserInfoKey();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for PropertyListDecoder();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  if (qword_1016954E0 != -1)
  {
    swift_once();
  }

  v11 = sub_1000076D4(v3, static CodingUserInfoKey.messagingCoder);
  (*(v4 + 16))(v7, v11, v3);
  v18[3] = &type metadata for Bool;
  LOBYTE(v18[0]) = 1;
  v12 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_1001DDE00(v18, v7);
  v12(v17, 0);
  sub_1000BC4D4(&qword_1016A4880, &qword_1013B1230);
  sub_100599ED0();
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (!v1)
  {
    v13 = v18[0];
    if (*(v18[0] + 16))
    {
      v14 = *(type metadata accessor for KeyRequestEnvelope() - 8);
      sub_10059A080(v13 + ((*(v14 + 80) + 32) & ~*(v14 + 80)), a1, type metadata accessor for KeyRequestEnvelope);
    }

    else
    {

      sub_1000BC4D4(&qword_1016A4F58, &unk_1013B2148);
      sub_1005997D4(&qword_1016A4F60, &qword_1016A4F58, &unk_1013B2148);
      swift_allocError();
      *v15 = 0;
      swift_willThrow();
    }
  }
}

uint64_t sub_1005947C0@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for CodingUserInfoKey();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for PropertyListDecoder();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  if (qword_1016954E0 != -1)
  {
    swift_once();
  }

  v11 = sub_1000076D4(v3, static CodingUserInfoKey.messagingCoder);
  (*(v4 + 16))(v7, v11, v3);
  v18[3] = &type metadata for Bool;
  LOBYTE(v18[0]) = 1;
  v12 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_1001DDE00(v18, v7);
  v12(v17, 0);
  sub_1000BC4D4(&qword_1016A46F0, &qword_1013B1020);
  sub_100599F84();
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (!v1)
  {
    v13 = v18[0];
    if (*(v18[0] + 16))
    {
      v14 = *(type metadata accessor for BeaconObservation() - 8);
      sub_10059A080(v13 + ((*(v14 + 80) + 32) & ~*(v14 + 80)), a1, type metadata accessor for BeaconObservation);
    }

    else
    {

      sub_1000BC4D4(&qword_1016A4F58, &unk_1013B2148);
      sub_1005997D4(&qword_1016A4F60, &qword_1016A4F58, &unk_1013B2148);
      swift_allocError();
      *v15 = 0;
      swift_willThrow();
    }
  }
}

void *sub_100594A78()
{
  v1 = v0;
  v2 = type metadata accessor for CodingUserInfoKey();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for PropertyListDecoder();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  if (qword_1016954E0 != -1)
  {
    swift_once();
  }

  v10 = sub_1000076D4(v2, static CodingUserInfoKey.messagingCoder);
  (*(v3 + 16))(v6, v10, v2);
  v15[3] = &type metadata for Bool;
  LOBYTE(v15[0]) = 1;
  v11 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_1001DDE00(v15, v6);
  v11(v14, 0);
  sub_1000BC4D4(&qword_10169B770, &unk_101395210);
  sub_10059932C(&qword_1016A5018, &qword_10169B770, &unk_101395210, sub_100599F84);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (!v0)
  {
    if (*(v15[0] + 16))
    {
      v1 = *(v15[0] + 32);

      return v1;
    }

    v1 = &unk_1013B2148;
    sub_1000BC4D4(&qword_1016A4F58, &unk_1013B2148);
    sub_1005997D4(&qword_1016A4F60, &qword_1016A4F58, &unk_1013B2148);
    swift_allocError();
    *v13 = 0;
    swift_willThrow();
  }

  return v1;
}

void *sub_100594D14()
{
  v1 = v0;
  v2 = type metadata accessor for CodingUserInfoKey();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for PropertyListDecoder();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  if (qword_1016954E0 != -1)
  {
    swift_once();
  }

  v10 = sub_1000076D4(v2, static CodingUserInfoKey.messagingCoder);
  (*(v3 + 16))(v6, v10, v2);
  v15[3] = &type metadata for Bool;
  LOBYTE(v15[0]) = 1;
  v11 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_1001DDE00(v15, v6);
  v11(v14, 0);
  sub_1000BC4D4(&qword_1016A4A08, &qword_1013B13A0);
  sub_10059932C(&qword_1016A4F28, &qword_1016A4A08, &qword_1013B13A0, sub_1005996CC);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (!v0)
  {
    if (*(v15[0] + 16))
    {
      v1 = *(v15[0] + 32);

      return v1;
    }

    v1 = &unk_1013B2138;
    sub_1000BC4D4(&qword_1016A4F38, &unk_1013B2138);
    sub_1005997D4(&qword_1016A4F40, &qword_1016A4F38, &unk_1013B2138);
    swift_allocError();
    *v13 = 0;
    swift_willThrow();
  }

  return v1;
}

uint64_t sub_100594FB0@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for CodingUserInfoKey();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for PropertyListDecoder();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  if (qword_1016954E0 != -1)
  {
    swift_once();
  }

  v11 = sub_1000076D4(v3, static CodingUserInfoKey.messagingCoder);
  (*(v4 + 16))(v7, v11, v3);
  v18[3] = &type metadata for Bool;
  LOBYTE(v18[0]) = 1;
  v12 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_1001DDE00(v18, v7);
  v12(v17, 0);
  sub_1000BC4D4(&qword_1016A4E70, &qword_1013B2100);
  sub_10059905C();
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (!v1)
  {
    v13 = v18[0];
    if (*(v18[0] + 16))
    {
      v14 = *(type metadata accessor for CircleTrustEnvelopeV1(0) - 8);
      sub_10059A080(v13 + ((*(v14 + 80) + 32) & ~*(v14 + 80)), a1, type metadata accessor for CircleTrustEnvelopeV1);
    }

    else
    {

      sub_1000BC4D4(&qword_1016A4E88, &unk_1013B2108);
      sub_1005997D4(&qword_1016A4E90, &qword_1016A4E88, &unk_1013B2108);
      swift_allocError();
      *v15 = 0;
      swift_willThrow();
    }
  }
}

uint64_t sub_100595268@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for CodingUserInfoKey();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for PropertyListDecoder();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  if (qword_1016954E0 != -1)
  {
    swift_once();
  }

  v11 = sub_1000076D4(v3, static CodingUserInfoKey.messagingCoder);
  (*(v4 + 16))(v7, v11, v3);
  v18[3] = &type metadata for Bool;
  LOBYTE(v18[0]) = 1;
  v12 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_1001DDE00(v18, v7);
  v12(v17, 0);
  sub_1000BC4D4(&qword_1016A48A0, &qword_1013B1240);
  sub_100599110();
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (!v1)
  {
    v13 = v18[0];
    if (*(v18[0] + 16))
    {
      v14 = *(type metadata accessor for CircleTrustAckEnvelopeV1(0) - 8);
      sub_10059A080(v13 + ((*(v14 + 80) + 32) & ~*(v14 + 80)), a1, type metadata accessor for CircleTrustAckEnvelopeV1);
    }

    else
    {

      sub_1000BC4D4(&qword_1016A4E88, &unk_1013B2108);
      sub_1005997D4(&qword_1016A4E90, &qword_1016A4E88, &unk_1013B2108);
      swift_allocError();
      *v15 = 0;
      swift_willThrow();
    }
  }
}

uint64_t sub_100595520@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for CodingUserInfoKey();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for PropertyListDecoder();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  if (qword_1016954E0 != -1)
  {
    swift_once();
  }

  v11 = sub_1000076D4(v3, static CodingUserInfoKey.messagingCoder);
  (*(v4 + 16))(v7, v11, v3);
  v18[3] = &type metadata for Bool;
  LOBYTE(v18[0]) = 1;
  v12 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_1001DDE00(v18, v7);
  v12(v17, 0);
  sub_1000BC4D4(&qword_1016A4EA8, &qword_1013B2118);
  sub_1005991C4();
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (!v1)
  {
    v13 = v18[0];
    if (*(v18[0] + 16))
    {
      v14 = *(type metadata accessor for CircleTrustAcceptEnvelopeV1(0) - 8);
      sub_10059A080(v13 + ((*(v14 + 80) + 32) & ~*(v14 + 80)), a1, type metadata accessor for CircleTrustAcceptEnvelopeV1);
    }

    else
    {

      sub_1000BC4D4(&qword_1016A4E88, &unk_1013B2108);
      sub_1005997D4(&qword_1016A4E90, &qword_1016A4E88, &unk_1013B2108);
      swift_allocError();
      *v15 = 0;
      swift_willThrow();
    }
  }
}

uint64_t sub_1005957D8@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for CodingUserInfoKey();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for PropertyListDecoder();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  if (qword_1016954E0 != -1)
  {
    swift_once();
  }

  v11 = sub_1000076D4(v3, static CodingUserInfoKey.messagingCoder);
  (*(v4 + 16))(v7, v11, v3);
  v18[3] = &type metadata for Bool;
  LOBYTE(v18[0]) = 1;
  v12 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_1001DDE00(v18, v7);
  v12(v17, 0);
  sub_1000BC4D4(&qword_1016A4710, &qword_1013B1030);
  sub_100599278();
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (!v1)
  {
    v13 = v18[0];
    if (*(v18[0] + 16))
    {
      v14 = *(type metadata accessor for CircleTrustDeclineEnvelopeV1(0) - 8);
      sub_10059A080(v13 + ((*(v14 + 80) + 32) & ~*(v14 + 80)), a1, type metadata accessor for CircleTrustDeclineEnvelopeV1);
    }

    else
    {

      sub_1000BC4D4(&qword_1016A4E88, &unk_1013B2108);
      sub_1005997D4(&qword_1016A4E90, &qword_1016A4E88, &unk_1013B2108);
      swift_allocError();
      *v15 = 0;
      swift_willThrow();
    }
  }
}

void *sub_100595A90()
{
  v1 = v0;
  v2 = type metadata accessor for CodingUserInfoKey();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for PropertyListDecoder();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  if (qword_1016954E0 != -1)
  {
    swift_once();
  }

  v10 = sub_1000076D4(v2, static CodingUserInfoKey.messagingCoder);
  (*(v3 + 16))(v6, v10, v2);
  v15[3] = &type metadata for Bool;
  LOBYTE(v15[0]) = 1;
  v11 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_1001DDE00(v15, v6);
  v11(v14, 0);
  sub_1000BC4D4(&qword_1016A48E0, &qword_1013B1260);
  sub_10059932C(&qword_1016A4EC0, &qword_1016A48E0, &qword_1013B1260, sub_1005993A8);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (!v0)
  {
    if (*(v15[0] + 16))
    {
      v1 = *(v15[0] + 32);

      return v1;
    }

    v1 = &unk_1013B2108;
    sub_1000BC4D4(&qword_1016A4E88, &unk_1013B2108);
    sub_1005997D4(&qword_1016A4E90, &qword_1016A4E88, &unk_1013B2108);
    swift_allocError();
    *v13 = 0;
    swift_willThrow();
  }

  return v1;
}

void *sub_100595D2C()
{
  v1 = v0;
  v2 = type metadata accessor for CodingUserInfoKey();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for PropertyListDecoder();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  if (qword_1016954E0 != -1)
  {
    swift_once();
  }

  v10 = sub_1000076D4(v2, static CodingUserInfoKey.messagingCoder);
  (*(v3 + 16))(v6, v10, v2);
  v15[3] = &type metadata for Bool;
  LOBYTE(v15[0]) = 1;
  v11 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_1001DDE00(v15, v6);
  v11(v14, 0);
  sub_1000BC4D4(&qword_1016A4ED0, &qword_1013B2120);
  sub_10059932C(&qword_1016A4ED8, &qword_1016A4ED0, &qword_1013B2120, sub_1005993FC);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (!v0)
  {
    if (*(v15[0] + 16))
    {
      v1 = *(v15[0] + 32);

      return v1;
    }

    v1 = &unk_1013B2108;
    sub_1000BC4D4(&qword_1016A4E88, &unk_1013B2108);
    sub_1005997D4(&qword_1016A4E90, &qword_1016A4E88, &unk_1013B2108);
    swift_allocError();
    *v13 = 0;
    swift_willThrow();
  }

  return v1;
}

uint64_t sub_100595FC8@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for CodingUserInfoKey();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for PropertyListDecoder();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  if (qword_1016954E0 != -1)
  {
    swift_once();
  }

  v11 = sub_1000076D4(v3, static CodingUserInfoKey.messagingCoder);
  (*(v4 + 16))(v7, v11, v3);
  v18[3] = &type metadata for Bool;
  LOBYTE(v18[0]) = 1;
  v12 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_1001DDE00(v18, v7);
  v12(v17, 0);
  sub_1000BC4D4(&qword_1016A4EE8, &qword_1013B2128);
  sub_100599450();
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (!v1)
  {
    v13 = v18[0];
    if (*(v18[0] + 16))
    {
      v14 = *(type metadata accessor for CircleTrustRequestEnvelopeV1(0) - 8);
      sub_10059A080(v13 + ((*(v14 + 80) + 32) & ~*(v14 + 80)), a1, type metadata accessor for CircleTrustRequestEnvelopeV1);
    }

    else
    {

      sub_1000BC4D4(&qword_1016A4E88, &unk_1013B2108);
      sub_1005997D4(&qword_1016A4E90, &qword_1016A4E88, &unk_1013B2108);
      swift_allocError();
      *v15 = 0;
      swift_willThrow();
    }
  }
}

uint64_t sub_100596280@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for CodingUserInfoKey();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for PropertyListDecoder();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  if (qword_1016954E0 != -1)
  {
    swift_once();
  }

  v11 = sub_1000076D4(v3, static CodingUserInfoKey.messagingCoder);
  (*(v4 + 16))(v7, v11, v3);
  v18[3] = &type metadata for Bool;
  LOBYTE(v18[0]) = 1;
  v12 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_1001DDE00(v18, v7);
  v12(v17, 0);
  sub_1000BC4D4(&qword_1016A4F00, &qword_1013B2130);
  sub_100599564();
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (!v1)
  {
    v13 = v18[0];
    if (*(v18[0] + 16))
    {
      v14 = *(type metadata accessor for DelegatedCircleTrustStopEnvelopeV1(0) - 8);
      sub_10059A080(v13 + ((*(v14 + 80) + 32) & ~*(v14 + 80)), a1, type metadata accessor for DelegatedCircleTrustStopEnvelopeV1);
    }

    else
    {

      sub_1000BC4D4(&qword_1016A4E88, &unk_1013B2108);
      sub_1005997D4(&qword_1016A4E90, &qword_1016A4E88, &unk_1013B2108);
      swift_allocError();
      *v15 = 0;
      swift_willThrow();
    }
  }
}

uint64_t sub_100596538@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for CodingUserInfoKey();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for PropertyListDecoder();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  if (qword_1016954E0 != -1)
  {
    swift_once();
  }

  v11 = sub_1000076D4(v3, static CodingUserInfoKey.messagingCoder);
  (*(v4 + 16))(v7, v11, v3);
  v18[3] = &type metadata for Bool;
  LOBYTE(v18[0]) = 1;
  v12 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_1001DDE00(v18, v7);
  v12(v17, 0);
  sub_1000BC4D4(&qword_1016A48C0, &qword_1013B1250);
  sub_100599618();
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (!v1)
  {
    v13 = v18[0];
    if (*(v18[0] + 16))
    {
      v14 = *(type metadata accessor for PeerTrustAckEnvelopeV1(0) - 8);
      sub_10059A080(v13 + ((*(v14 + 80) + 32) & ~*(v14 + 80)), a1, type metadata accessor for PeerTrustAckEnvelopeV1);
    }

    else
    {

      sub_1000BC4D4(&qword_1016A4E88, &unk_1013B2108);
      sub_1005997D4(&qword_1016A4E90, &qword_1016A4E88, &unk_1013B2108);
      swift_allocError();
      *v15 = 0;
      swift_willThrow();
    }
  }
}

uint64_t sub_1005967F0()
{
  v1 = *(v0 + 112);
  swift_unknownObjectRelease();
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

unint64_t sub_100596850()
{
  result = qword_1016A4E40;
  if (!qword_1016A4E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4E40);
  }

  return result;
}

uint64_t sub_1005968A4(char a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *v6;
  v26 = a2;
  v27 = v12;
  v13 = type metadata accessor for MessagingMessageContext();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v26 - v19;
  v21 = type metadata accessor for TaskPriority();
  (*(*(v21 - 8) + 56))(v20, 1, 1, v21);
  sub_10059A080(a6, v16, type metadata accessor for MessagingMessageContext);
  v22 = (*(v14 + 80) + 80) & ~*(v14 + 80);
  v23 = (v15 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  *(v24 + 32) = a1;
  *(v24 + 40) = v26;
  *(v24 + 48) = a3;
  *(v24 + 56) = a4;
  *(v24 + 64) = v6;
  *(v24 + 72) = a5;
  sub_100476E9C(v16, v24 + v22);
  *(v24 + v23) = v27;
  sub_100017D5C(a3, a4);

  sub_100A838D4(0, 0, v20, &unk_1013B20F0, v24);
}

uint64_t sub_100596AE4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 40) = a8;
  *(v8 + 48) = v17;
  *(v8 + 24) = a6;
  *(v8 + 32) = a7;
  *(v8 + 16) = a5;
  *(v8 + 412) = a4;
  v9 = *(*(type metadata accessor for CircleTrustRequestEnvelopeV1(0) - 8) + 64) + 15;
  *(v8 + 56) = swift_task_alloc();
  v10 = *(*(type metadata accessor for CircleTrustDeclineEnvelopeV1(0) - 8) + 64) + 15;
  *(v8 + 64) = swift_task_alloc();
  v11 = *(*(type metadata accessor for CircleTrustAcceptEnvelopeV1(0) - 8) + 64) + 15;
  *(v8 + 72) = swift_task_alloc();
  v12 = *(*(type metadata accessor for CircleTrustAckEnvelopeV1(0) - 8) + 64) + 15;
  *(v8 + 80) = swift_task_alloc();
  v13 = type metadata accessor for CircleTrustEnvelopeV1(0);
  *(v8 + 88) = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  *(v8 + 96) = swift_task_alloc();

  return _swift_task_switch(sub_100596C3C, 0, 0);
}

uint64_t sub_100596C3C()
{
  v1 = *(v0 + 412);
  if (v1 <= 3)
  {
    if (*(v0 + 412) <= 1u)
    {
      if (*(v0 + 412))
      {
        v2 = *(v0 + 40);
        v3 = sub_100596F44;
        goto LABEL_23;
      }

      if (qword_1016947E0 != -1)
      {
        swift_once();
      }

      v4 = *(v0 + 24);
      v5 = *(v0 + 32);
      v6 = type metadata accessor for Logger();
      sub_1000076D4(v6, qword_10177AF58);
      sub_100017D5C(v4, v5);
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.debug.getter();
      v9 = os_log_type_enabled(v7, v8);
      v11 = *(v0 + 24);
      v10 = *(v0 + 32);
      if (v9)
      {
        v12 = swift_slowAlloc();
        *v12 = 67109120;
        *(v12 + 4) = 1;
        sub_100016590(v11, v10);
        _os_log_impl(&_mh_execute_header, v7, v8, "Ignoring non circleTrust Message: %d", v12, 8u);
      }

      else
      {
        sub_100016590(*(v0 + 24), *(v0 + 32));
      }

      v20 = *(v0 + 96);
      v21 = *(v0 + 72);
      v22 = *(v0 + 80);
      v24 = *(v0 + 56);
      v23 = *(v0 + 64);

      v25 = *(v0 + 8);

      return v25();
    }

    v2 = *(v0 + 40);
    if (v1 == 2)
    {
      v3 = sub_100597378;
    }

    else
    {
      v3 = sub_1005976B4;
    }

LABEL_23:

    return _swift_task_switch(v3, v2, 0);
  }

  if (*(v0 + 412) <= 5u)
  {
    v2 = *(v0 + 40);
    if (v1 == 4)
    {
      v3 = sub_1005979F0;
    }

    else
    {
      v3 = sub_100597D2C;
    }

    goto LABEL_23;
  }

  if (v1 == 6)
  {
    v2 = *(v0 + 40);
    v3 = sub_100598080;
    goto LABEL_23;
  }

  if (v1 == 7)
  {
    v2 = *(v0 + 40);
    v3 = sub_100598328;
    goto LABEL_23;
  }

  v13 = swift_task_alloc();
  *(v0 + 384) = v13;
  *v13 = v0;
  v13[1] = sub_1005985F4;
  v15 = *(v0 + 40);
  v14 = *(v0 + 48);
  v16 = *(v0 + 24);
  v17 = *(v0 + 32);
  v18 = *(v0 + 16);

  return sub_100598B54(8, v18, v16, v17, v14);
}

uint64_t sub_100596F44()
{
  v1 = *(v0 + 16);
  if (v1 == 1)
  {
    v2 = *(v0 + 24);
    v3 = *(v0 + 32);
    sub_100594FB0(*(v0 + 96));
    v4 = *(v0 + 96);
    v12 = *(v0 + 88);
    v13 = *(v0 + 40);
    v14 = *(v0 + 48);
    *(v0 + 104) = *(v13 + 112);
    v15 = *(v13 + 120);
    swift_getObjectType();
    *(v0 + 392) = v12[6];
    *(v0 + 396) = v12[7];
    *(v0 + 400) = v12[5];
    v16 = (v4 + v12[8]);
    *(v0 + 112) = *v16;
    *(v0 + 120) = v16[1];
    v17 = (v4 + v12[9]);
    *(v0 + 128) = *v17;
    *(v0 + 136) = v17[1];
    *(v0 + 404) = *(v4 + v12[10]);
    *(v0 + 408) = *(v4 + v12[11]);
    v18 = (v4 + v12[12]);
    *(v0 + 144) = *v18;
    *(v0 + 152) = v18[1];
    *(v0 + 160) = *(v4 + v12[13]);
    v19 = (v4 + v12[14]);
    *(v0 + 168) = *v19;
    *(v0 + 176) = v19[1];
    v20 = type metadata accessor for MessagingMessageContext();
    v21 = (v14 + *(v20 + 48));
    *(v0 + 184) = *v21;
    *(v0 + 192) = v21[1];
    v22 = v14 + *(v20 + 24);
    *(v0 + 413) = *v22;
    *(v0 + 200) = *(v22 + 8);
    *(v0 + 208) = *(v22 + 16);
    *(v0 + 216) = *(v4 + v12[16]);
    *(v0 + 414) = *(v4 + v12[17]);
    v23 = (v4 + v12[15]);
    *(v0 + 224) = *v23;
    *(v0 + 232) = v23[1];
    v24 = *(v15 + 8);
    v25 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_1005971E4, v25, v26);
  }

  else
  {
    sub_100598968(1, v1, *(v0 + 24), *(v0 + 32));
    v5 = *(v0 + 96);
    v6 = *(v0 + 72);
    v7 = *(v0 + 80);
    v9 = *(v0 + 56);
    v8 = *(v0 + 64);

    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_1005971E4()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  v3 = *(v0 + 40);
  sub_100D2B378(v1, v1 + *(v0 + 392), v1 + *(v0 + 396), v1 + *(v0 + 400), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 404), *(v0 + 408), *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176), *(v0 + 184), *(v0 + 192), *(v0 + 413), *(v0 + 200), *(v0 + 208), *(v0 + 216), *(v0 + 414), *(v0 + 224), *(v0 + 232));

  return _swift_task_switch(sub_1005972C8, v3, 0);
}

uint64_t sub_1005972C8()
{
  sub_100599504(v0[12], type metadata accessor for CircleTrustEnvelopeV1);
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[10];
  v5 = v0[7];
  v4 = v0[8];

  v6 = v0[1];

  return v6();
}

uint64_t sub_100597378()
{
  v1 = *(v0 + 16);
  if (v1 == 1)
  {
    v2 = *(v0 + 24);
    v3 = *(v0 + 32);
    sub_100595268(*(v0 + 80));
    v11 = *(v0 + 40);
    v12 = *(v0 + 48);
    *(v0 + 240) = *(v11 + 112);
    v13 = *(v11 + 120);
    swift_getObjectType();
    v14 = v12 + *(type metadata accessor for MessagingMessageContext() + 24);
    *(v0 + 415) = *v14;
    *(v0 + 248) = *(v14 + 8);
    *(v0 + 256) = *(v14 + 16);
    v15 = *(v13 + 8);
    v17 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_10059751C, v17, v16);
  }

  else
  {
    sub_100598968(2, v1, *(v0 + 24), *(v0 + 32));
    v4 = *(v0 + 96);
    v5 = *(v0 + 72);
    v6 = *(v0 + 80);
    v8 = *(v0 + 56);
    v7 = *(v0 + 64);

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_10059751C()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 256);
  v3 = *(v0 + 240);
  v4 = *(v0 + 80);
  v5 = *(v0 + 40);
  v6 = *(v0 + 415);
  type metadata accessor for CircleTrustService();
  sub_10059A038(&qword_1016A4E68, type metadata accessor for CircleTrustService);
  sub_100D41F84(v4, v6, v1, v2);

  return _swift_task_switch(sub_100597604, v5, 0);
}

uint64_t sub_100597604()
{
  sub_100599504(v0[10], type metadata accessor for CircleTrustAckEnvelopeV1);
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[10];
  v5 = v0[7];
  v4 = v0[8];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1005976B4()
{
  v1 = *(v0 + 16);
  if (v1 == 1)
  {
    v2 = *(v0 + 24);
    v3 = *(v0 + 32);
    sub_100595520(*(v0 + 72));
    v11 = *(v0 + 40);
    v12 = *(v0 + 48);
    *(v0 + 264) = *(v11 + 112);
    v13 = *(v11 + 120);
    swift_getObjectType();
    v14 = v12 + *(type metadata accessor for MessagingMessageContext() + 24);
    *(v0 + 416) = *v14;
    *(v0 + 272) = *(v14 + 8);
    *(v0 + 280) = *(v14 + 16);
    v15 = *(v13 + 8);
    v17 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_100597858, v17, v16);
  }

  else
  {
    sub_100598968(3, v1, *(v0 + 24), *(v0 + 32));
    v4 = *(v0 + 96);
    v5 = *(v0 + 72);
    v6 = *(v0 + 80);
    v8 = *(v0 + 56);
    v7 = *(v0 + 64);

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_100597858()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 280);
  v3 = *(v0 + 264);
  v4 = *(v0 + 72);
  v5 = *(v0 + 40);
  v6 = *(v0 + 416);
  v7 = type metadata accessor for CircleTrustService();
  v8 = sub_10059A038(&qword_1016A4E68, type metadata accessor for CircleTrustService);
  sub_100D4214C(v4, v6, v1, v2, v7, v8);

  return _swift_task_switch(sub_100597940, v5, 0);
}

uint64_t sub_100597940()
{
  sub_100599504(v0[9], type metadata accessor for CircleTrustAcceptEnvelopeV1);
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[10];
  v5 = v0[7];
  v4 = v0[8];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1005979F0()
{
  v1 = *(v0 + 16);
  if (v1 == 1)
  {
    v2 = *(v0 + 24);
    v3 = *(v0 + 32);
    sub_1005957D8(*(v0 + 64));
    v11 = *(v0 + 40);
    v12 = *(v0 + 48);
    *(v0 + 288) = *(v11 + 112);
    v13 = *(v11 + 120);
    swift_getObjectType();
    v14 = v12 + *(type metadata accessor for MessagingMessageContext() + 24);
    *(v0 + 417) = *v14;
    *(v0 + 296) = *(v14 + 8);
    *(v0 + 304) = *(v14 + 16);
    v15 = *(v13 + 8);
    v17 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_100597B94, v17, v16);
  }

  else
  {
    sub_100598968(4, v1, *(v0 + 24), *(v0 + 32));
    v4 = *(v0 + 96);
    v5 = *(v0 + 72);
    v6 = *(v0 + 80);
    v8 = *(v0 + 56);
    v7 = *(v0 + 64);

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_100597B94()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 304);
  v3 = *(v0 + 288);
  v4 = *(v0 + 64);
  v5 = *(v0 + 40);
  v6 = *(v0 + 417);
  v7 = type metadata accessor for CircleTrustService();
  v8 = sub_10059A038(&qword_1016A4E68, type metadata accessor for CircleTrustService);
  sub_100D42194(v4, v6, v1, v2, v7, v8);

  return _swift_task_switch(sub_100597C7C, v5, 0);
}

uint64_t sub_100597C7C()
{
  sub_100599504(v0[8], type metadata accessor for CircleTrustDeclineEnvelopeV1);
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[10];
  v5 = v0[7];
  v4 = v0[8];

  v6 = v0[1];

  return v6();
}

uint64_t sub_100597D2C()
{
  v1 = v0[2];
  if (v1 == 1)
  {
    v2 = sub_100595A90();
    v0[39] = v2;
    v10 = v0[6];
    v11 = *(v0[5] + 112);
    v12 = v2;
    v13 = v10 + *(type metadata accessor for MessagingMessageContext() + 24);
    v14 = *(v13 + 8);
    v15 = *(v13 + 16);
    v16 = *v13;
    v17 = swift_task_alloc();
    v0[40] = v17;
    *v17 = v0;
    v17[1] = sub_100597ED0;

    return sub_100D37EF8(v12, v16, v14, v15);
  }

  else
  {
    sub_100598968(5, v1, v0[3], v0[4]);
    v3 = v0[12];
    v4 = v0[9];
    v5 = v0[10];
    v7 = v0[7];
    v6 = v0[8];

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_100597ED0()
{
  v1 = *v0;
  v2 = *(*v0 + 320);
  v3 = *(*v0 + 312);
  v11 = *v0;

  v4 = v1[12];
  v5 = v1[10];
  v6 = v1[9];
  v7 = v1[8];
  v8 = v1[7];

  v9 = *(v11 + 8);

  return v9();
}

uint64_t sub_100598080()
{
  v1 = *(v0 + 16);
  if (v1 == 1)
  {
    *(v0 + 328) = sub_100595D2C();
    v9 = *(v0 + 40);
    v10 = *(v0 + 48);
    *(v0 + 336) = *(v9 + 112);
    v11 = *(v9 + 120);
    swift_getObjectType();
    v12 = v10 + *(type metadata accessor for MessagingMessageContext() + 24);
    *(v0 + 418) = *v12;
    *(v0 + 344) = *(v12 + 8);
    *(v0 + 352) = *(v12 + 16);
    v13 = *(v11 + 8);
    v15 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_10059821C, v15, v14);
  }

  else
  {
    sub_100598968(6, v1, *(v0 + 24), *(v0 + 32));
    v2 = *(v0 + 96);
    v3 = *(v0 + 72);
    v4 = *(v0 + 80);
    v6 = *(v0 + 56);
    v5 = *(v0 + 64);

    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_10059821C()
{
  v1 = *(v0 + 344);
  v2 = *(v0 + 352);
  v4 = *(v0 + 328);
  v3 = *(v0 + 336);
  v5 = *(v0 + 418);
  type metadata accessor for CircleTrustService();
  sub_10059A038(&qword_1016A4E68, type metadata accessor for CircleTrustService);
  sub_100D423AC(v4);

  v6 = *(v0 + 96);
  v7 = *(v0 + 72);
  v8 = *(v0 + 80);
  v10 = *(v0 + 56);
  v9 = *(v0 + 64);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_100598328()
{
  v1 = *(v0 + 16);
  if (v1 == 1)
  {
    v2 = *(v0 + 24);
    v3 = *(v0 + 32);
    sub_100595FC8(*(v0 + 56));
    v11 = *(v0 + 40);
    v12 = *(v0 + 48);
    *(v0 + 360) = *(v11 + 112);
    v13 = *(v11 + 120);
    swift_getObjectType();
    v14 = v12 + *(type metadata accessor for MessagingMessageContext() + 24);
    *(v0 + 419) = *v14;
    *(v0 + 368) = *(v14 + 8);
    *(v0 + 376) = *(v14 + 16);
    v15 = *(v13 + 8);
    v17 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_1005984CC, v17, v16);
  }

  else
  {
    sub_100598968(7, v1, *(v0 + 24), *(v0 + 32));
    v4 = *(v0 + 96);
    v5 = *(v0 + 72);
    v6 = *(v0 + 80);
    v8 = *(v0 + 56);
    v7 = *(v0 + 64);

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_1005984CC()
{
  v1 = *(v0 + 360);
  v2 = *(v0 + 40);
  sub_100D3BAE4(*(v0 + 56), *(v0 + 419), *(v0 + 368), *(v0 + 376));

  return _swift_task_switch(sub_100598544, v2, 0);
}

uint64_t sub_100598544()
{
  sub_100599504(v0[7], type metadata accessor for CircleTrustRequestEnvelopeV1);
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[10];
  v5 = v0[7];
  v4 = v0[8];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1005985F4()
{
  v1 = *v0;
  v2 = *(*v0 + 384);
  v10 = *v0;

  v3 = v1[12];
  v4 = v1[10];
  v5 = v1[9];
  v6 = v1[8];
  v7 = v1[7];

  v8 = *(v10 + 8);

  return v8();
}

uint64_t sub_100598784(uint64_t a1)
{
  v3 = *(type metadata accessor for MessagingMessageContext() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 48);
  v14 = *(v1 + 40);
  v7 = *(v1 + 56);
  v8 = *(v1 + 64);
  v9 = *(v1 + 72);
  v10 = *(v1 + ((*(v3 + 64) + ((*(v3 + 80) + 80) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *(v1 + 32);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_100014650;

  return sub_100596AE4(a1, v4, v5, v11, v14, v6, v7, v8);
}

uint64_t sub_1005988E8()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177AF70);
  sub_1000076D4(v0, qword_10177AF70);
  return Logger.init(subsystem:category:)();
}

void sub_100598968(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (qword_1016947E0 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_1000076D4(v7, qword_10177AF58);
  sub_100017D5C(a3, a4);
  sub_100017D5C(a3, a4);
  oslog = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136446466;
    v11 = String.init<A>(describing:)();
    v13 = sub_1000136BC(v11, v12, &v15);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2048;
    sub_100016590(a3, a4);
    *(v9 + 14) = a2;
    sub_100016590(a3, a4);
    _os_log_impl(&_mh_execute_header, oslog, v8, "Unsupported version of %{public}s: %ld", v9, 0x16u);
    sub_100007BAC(v10);
  }

  else
  {
    sub_100016590(a3, a4);
    sub_100016590(a3, a4);
  }
}

uint64_t sub_100598B54(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 40) = a5;
  *(v6 + 48) = v5;
  *(v6 + 24) = a3;
  *(v6 + 32) = a4;
  *(v6 + 16) = a2;
  *(v6 + 89) = a1;
  v7 = *(*(type metadata accessor for DelegatedCircleTrustStopEnvelopeV1(0) - 8) + 64) + 15;
  *(v6 + 56) = swift_task_alloc();

  return _swift_task_switch(sub_100598BF0, v5, 0);
}

uint64_t sub_100598BF0()
{
  v29 = v0;
  v1 = *(v0 + 16);
  if (v1 == 1)
  {
    if (*(v0 + 89) == 8)
    {
      v2 = *(v0 + 24);
      v3 = *(v0 + 32);
      sub_100596280(*(v0 + 56));
      v22 = *(v0 + 40);
      v21 = *(v0 + 48);
      *(v0 + 64) = *(v21 + 112);
      v23 = *(v21 + 120);
      swift_getObjectType();
      v24 = v22 + *(type metadata accessor for MessagingMessageContext() + 24);
      *(v0 + 90) = *v24;
      *(v0 + 72) = *(v24 + 8);
      *(v0 + 80) = *(v24 + 16);
      v25 = *(v23 + 8);
      v26 = dispatch thunk of Actor.unownedExecutor.getter();

      return _swift_task_switch(sub_100598EF8, v26, v27);
    }

    if (qword_1016947E0 != -1)
    {
      swift_once();
    }

    v7 = *(v0 + 24);
    v8 = *(v0 + 32);
    v9 = type metadata accessor for Logger();
    sub_1000076D4(v9, qword_10177AF58);
    sub_100017D5C(v7, v8);
    sub_100017D5C(v7, v8);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    v12 = os_log_type_enabled(v10, v11);
    v14 = *(v0 + 24);
    v13 = *(v0 + 32);
    if (v12)
    {
      v15 = *(v0 + 89);
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v28 = v17;
      *v16 = 136446466;
      *(v0 + 88) = v15;
      v18 = String.init<A>(describing:)();
      v20 = sub_1000136BC(v18, v19, &v28);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2048;
      sub_100016590(v14, v13);
      *(v16 + 14) = 1;
      sub_100016590(v14, v13);
      _os_log_impl(&_mh_execute_header, v10, v11, "Unhandled message type of %{public}s: %ld", v16, 0x16u);
      sub_100007BAC(v17);
    }

    else
    {
      sub_100016590(*(v0 + 24), *(v0 + 32));
      sub_100016590(v14, v13);
    }
  }

  else
  {
    sub_100598968(*(v0 + 89), v1, *(v0 + 24), *(v0 + 32));
  }

  v4 = *(v0 + 56);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100598EF8()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v4 = *(v0 + 56);
  v3 = *(v0 + 64);
  v5 = *(v0 + 48);
  v6 = *(v0 + 90);
  type metadata accessor for CircleTrustService();
  sub_10059A038(&qword_1016A4E68, type metadata accessor for CircleTrustService);
  sub_100D42484(v4, v6, v1, v2);

  return _swift_task_switch(sub_100598FDC, v5, 0);
}

uint64_t sub_100598FDC()
{
  sub_100599504(*(v0 + 56), type metadata accessor for DelegatedCircleTrustStopEnvelopeV1);
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

unint64_t sub_10059905C()
{
  result = qword_1016A4E78;
  if (!qword_1016A4E78)
  {
    sub_1000BC580(&qword_1016A4E70, &qword_1013B2100);
    sub_10059A038(&qword_1016A4E80, type metadata accessor for CircleTrustEnvelopeV1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4E78);
  }

  return result;
}

unint64_t sub_100599110()
{
  result = qword_1016A4E98;
  if (!qword_1016A4E98)
  {
    sub_1000BC580(&qword_1016A48A0, &qword_1013B1240);
    sub_10059A038(&qword_1016A4EA0, type metadata accessor for CircleTrustAckEnvelopeV1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4E98);
  }

  return result;
}

unint64_t sub_1005991C4()
{
  result = qword_1016A4EB0;
  if (!qword_1016A4EB0)
  {
    sub_1000BC580(&qword_1016A4EA8, &qword_1013B2118);
    sub_10059A038(&qword_1016975E0, type metadata accessor for CircleTrustAcceptEnvelopeV1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4EB0);
  }

  return result;
}

unint64_t sub_100599278()
{
  result = qword_1016A4EB8;
  if (!qword_1016A4EB8)
  {
    sub_1000BC580(&qword_1016A4710, &qword_1013B1030);
    sub_10059A038(&qword_10169A610, type metadata accessor for CircleTrustDeclineEnvelopeV1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4EB8);
  }

  return result;
}

uint64_t sub_10059932C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1000BC580(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1005993A8()
{
  result = qword_1016A4EC8;
  if (!qword_1016A4EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4EC8);
  }

  return result;
}

unint64_t sub_1005993FC()
{
  result = qword_1016A4EE0;
  if (!qword_1016A4EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4EE0);
  }

  return result;
}

unint64_t sub_100599450()
{
  result = qword_1016A4EF0;
  if (!qword_1016A4EF0)
  {
    sub_1000BC580(&qword_1016A4EE8, &qword_1013B2128);
    sub_10059A038(&qword_1016A4EF8, type metadata accessor for CircleTrustRequestEnvelopeV1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4EF0);
  }

  return result;
}

uint64_t sub_100599504(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100599564()
{
  result = qword_1016A4F08;
  if (!qword_1016A4F08)
  {
    sub_1000BC580(&qword_1016A4F00, &qword_1013B2130);
    sub_10059A038(&qword_1016A4F10, type metadata accessor for DelegatedCircleTrustStopEnvelopeV1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4F08);
  }

  return result;
}

unint64_t sub_100599618()
{
  result = qword_1016A4F18;
  if (!qword_1016A4F18)
  {
    sub_1000BC580(&qword_1016A48C0, &qword_1013B1250);
    sub_10059A038(&qword_1016A4F20, type metadata accessor for PeerTrustAckEnvelopeV1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4F18);
  }

  return result;
}

unint64_t sub_1005996CC()
{
  result = qword_1016A4F30;
  if (!qword_1016A4F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4F30);
  }

  return result;
}

unint64_t sub_100599720()
{
  result = qword_1016A4F48;
  if (!qword_1016A4F48)
  {
    sub_1000BC580(&qword_1016A4798, &qword_1013B1150);
    sub_10059A038(&qword_1016A4F50, type metadata accessor for LegacyShareEnvelope);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4F48);
  }

  return result;
}

uint64_t sub_1005997D4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000BC580(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100599828()
{
  result = qword_1016A4F68;
  if (!qword_1016A4F68)
  {
    sub_1000BC580(&qword_1016A47B8, &qword_1013B1160);
    sub_10059A038(&qword_1016A4F70, type metadata accessor for FamilyShareEnvelopeV1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4F68);
  }

  return result;
}

unint64_t sub_1005998DC()
{
  result = qword_1016A4F78;
  if (!qword_1016A4F78)
  {
    sub_1000BC580(&qword_1016A4800, &unk_1013B1198);
    sub_10059A038(&qword_1016A4F80, type metadata accessor for FindMyAccessoryFamilyShareEnvelope);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4F78);
  }

  return result;
}

unint64_t sub_100599990()
{
  result = qword_1016A4F88;
  if (!qword_1016A4F88)
  {
    sub_1000BC580(&qword_1016A47D8, &qword_1013B1170);
    sub_10059A038(&qword_1016A4F90, type metadata accessor for FindMyAirPodsFamilyShareEnvelope);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4F88);
  }

  return result;
}

unint64_t sub_100599A44()
{
  result = qword_1016A4FA8;
  if (!qword_1016A4FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4FA8);
  }

  return result;
}

unint64_t sub_100599A98()
{
  result = qword_1016A4FB0;
  if (!qword_1016A4FB0)
  {
    sub_1000BC580(&qword_1016A46C8, &unk_1013B2160);
    sub_10059A038(&qword_1016A4FB8, type metadata accessor for FindMyAccessoryFamilyShareResponseEnvelope);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4FB0);
  }

  return result;
}

unint64_t sub_100599B4C()
{
  result = qword_1016A4FC0;
  if (!qword_1016A4FC0)
  {
    sub_1000BC580(&qword_101697720, &unk_101392640);
    sub_10059A038(&qword_1016CAC80, type metadata accessor for SharedBeaconRecord);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4FC0);
  }

  return result;
}

unint64_t sub_100599C00()
{
  result = qword_1016A4FC8;
  if (!qword_1016A4FC8)
  {
    sub_1000BC580(&qword_1016A4820, &unk_1013B2170);
    sub_10059A038(&qword_1016A4FD0, type metadata accessor for LegacySelfBeaconingKeyEnvelope);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4FC8);
  }

  return result;
}

unint64_t sub_100599CB4()
{
  result = qword_1016A4FD8;
  if (!qword_1016A4FD8)
  {
    sub_1000BC580(&qword_1016A4860, &qword_1013B1208);
    sub_10059A038(&qword_1016A4FE0, type metadata accessor for SelfBeaconingKeyEnvelope);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4FD8);
  }

  return result;
}

unint64_t sub_100599D68()
{
  result = qword_1016A4FE8;
  if (!qword_1016A4FE8)
  {
    sub_1000BC580(&qword_1016A4840, &unk_1013B2180);
    sub_10059A038(&qword_1016A4FF0, type metadata accessor for FindMyAccessoryFamilyKeyEnvelope);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4FE8);
  }

  return result;
}

unint64_t sub_100599E1C()
{
  result = qword_1016CBC30;
  if (!qword_1016CBC30)
  {
    sub_1000BC580(&unk_1016BF350, &unk_1013E4AF0);
    sub_10059A038(&qword_101698300, &type metadata accessor for UUID);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CBC30);
  }

  return result;
}

unint64_t sub_100599ED0()
{
  result = qword_1016A4FF8;
  if (!qword_1016A4FF8)
  {
    sub_1000BC580(&qword_1016A4880, &qword_1013B1230);
    sub_10059A038(&qword_1016A5000, type metadata accessor for KeyRequestEnvelope);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4FF8);
  }

  return result;
}

unint64_t sub_100599F84()
{
  result = qword_1016A5008;
  if (!qword_1016A5008)
  {
    sub_1000BC580(&qword_1016A46F0, &qword_1013B1020);
    sub_10059A038(&qword_1016A5010, type metadata accessor for BeaconObservation);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A5008);
  }

  return result;
}

uint64_t sub_10059A038(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10059A080(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10059A0E8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 > 5u)
  {
    if (a3 > 8u)
    {
      if (a3 == 9)
      {
        return 15;
      }

      else if (a3 == 10)
      {
        return 21;
      }

      else
      {
        return byte_1013B244A[a1];
      }
    }

    else
    {
      if (a3 == 7)
      {
        v8 = 19;
      }

      else
      {
        v8 = 11;
      }

      if (a3 == 6)
      {
        return 17;
      }

      else
      {
        return v8;
      }
    }
  }

  else
  {
    if (a3 == 4)
    {
      v3 = 9;
    }

    else
    {
      v3 = 13;
    }

    if (a3 == 3)
    {
      v4 = 7;
    }

    else
    {
      v4 = v3;
    }

    if (a3 == 1)
    {
      v5 = 3;
    }

    else
    {
      v5 = 5;
    }

    if (a3)
    {
      v6 = v5;
    }

    else
    {
      v6 = 1;
    }

    if (a3 <= 2u)
    {
      return v6;
    }

    else
    {
      return v4;
    }
  }
}

uint64_t sub_10059A190(uint64_t a1)
{
  if ((*(a1 + 16) & 0xFu) <= 0xA)
  {
    return *(a1 + 16) & 0xF;
  }

  else
  {
    return (*a1 + 11);
  }
}

uint64_t sub_10059A1AC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF5 && *(a1 + 17))
  {
    return (*a1 + 245);
  }

  v3 = *(a1 + 16);
  if (v3 <= 0xB)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10059A1F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF4)
  {
    *(result + 16) = 0;
    *result = a2 - 245;
    *(result + 8) = 0;
    if (a3 >= 0xF5)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF5)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_10059A238(uint64_t result, unsigned int a2)
{
  if (a2 >= 0xB)
  {
    *result = a2 - 11;
    *(result + 8) = 0;
    LOBYTE(a2) = 11;
  }

  *(result + 16) = a2;
  return result;
}

ValueMetadata *sub_10059A260(unsigned __int8 a1)
{
  if (a1 <= 0xAu)
  {
    if (a1 <= 4u)
    {
      if (a1 == 1)
      {
        v1 = &type metadata for AccessoryProductDataResponsePayload;
        sub_10059BDFC();
        return v1;
      }

      if (a1 == 3)
      {
        v1 = &type metadata for AccessoryManufacturerNameResponsePayload;
        sub_10059BDA8();
        return v1;
      }
    }

    else
    {
      switch(a1)
      {
        case 5u:
          v1 = &type metadata for AccessoryModelNameResponsePayload;
          sub_10059BD54();
          return v1;
        case 7u:
          v1 = &type metadata for AccessoryCategoryResponsePayload;
          sub_10059BD00();
          return v1;
        case 9u:
          v1 = &type metadata for AccessoryProtocolVersionResponsePayload;
          sub_10059BCAC();
          return v1;
      }
    }

LABEL_26:
    v1 = &type metadata for AccessoryGenericPayload;
    sub_10030FF74();
    return v1;
  }

  if (a1 > 0x10u)
  {
    switch(a1)
    {
      case 0x11u:
        v1 = &type metadata for AccessoryBatteryTypeResponsePayload;
        sub_10059BBB0();
        return v1;
      case 0x13u:
        v1 = &type metadata for AccessoryBatteryLevelResponsePayload;
        sub_10059BB5C();
        return v1;
      case 0x15u:
        v1 = &type metadata for AccessoryFindMyVersionResponsePayload;
        sub_10059BB08();
        return v1;
    }

    goto LABEL_26;
  }

  if (a1 == 11)
  {
    v1 = &type metadata for AccessoryCapabilityResponsePayload;
    sub_10059BC58();
    return v1;
  }

  if (a1 == 13)
  {
    v1 = &type metadata for AccessoryNetworkIDResponsePayload;
    sub_10059BC04();
    return v1;
  }

  if (a1 != 15)
  {
    goto LABEL_26;
  }

  v1 = &type metadata for AccessoryFirmwareVersionResponsePayload;
  sub_1003100C4();
  return v1;
}

unint64_t sub_10059A3B4@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unsigned __int8 a3@<W2>, uint64_t a4@<X8>)
{
  if (a3 > 5u)
  {
    if (a3 > 8u)
    {
      if (a3 == 9)
      {
        v9 = a1 >> 16;
        v10 = a1 >> 24;
        *(a4 + 24) = &type metadata for AccessoryFirmwareVersionResponsePayload;
        result = sub_1003100C4();
      }

      else
      {
        if (a3 != 10)
        {
          *(a4 + 24) = &type metadata for AccessoryGenericPayload;
          result = sub_10030FF74();
          *(a4 + 32) = result;
          return result;
        }

        v9 = a1 >> 16;
        v10 = a1 >> 24;
        *(a4 + 24) = &type metadata for AccessoryFindMyVersionResponsePayload;
        result = sub_10059BB08();
      }

LABEL_22:
      *(a4 + 32) = result;
      *a4 = a1;
      *(a4 + 2) = v9;
      *(a4 + 3) = v10;
      return result;
    }

    if (a3 == 6)
    {
      *(a4 + 24) = &type metadata for AccessoryBatteryTypeResponsePayload;
      result = sub_10059BBB0();
    }

    else
    {
      if (a3 != 7)
      {
        *(a4 + 24) = &type metadata for AccessoryCapabilityResponsePayload;
        result = sub_10059BC58();
        *(a4 + 32) = result;
        *a4 = a1;
        return result;
      }

      *(a4 + 24) = &type metadata for AccessoryBatteryLevelResponsePayload;
      result = sub_10059BB5C();
    }

LABEL_29:
    *(a4 + 32) = result;
    *a4 = a1;
    return result;
  }

  if (a3 > 2u)
  {
    if (a3 == 3)
    {
      *(a4 + 24) = &type metadata for AccessoryCategoryResponsePayload;
      result = sub_10059BD00();
      *(a4 + 32) = result;
      *a4 = a1;
      return result;
    }

    if (a3 == 4)
    {
      v9 = a1 >> 16;
      v10 = a1 >> 24;
      *(a4 + 24) = &type metadata for AccessoryProtocolVersionResponsePayload;
      result = sub_10059BCAC();
      goto LABEL_22;
    }

    *(a4 + 24) = &type metadata for AccessoryNetworkIDResponsePayload;
    result = sub_10059BC04();
    goto LABEL_29;
  }

  if (a3)
  {
    if (a3 == 1)
    {
      *(a4 + 24) = &type metadata for AccessoryManufacturerNameResponsePayload;
      v7 = sub_10059BDA8();
    }

    else
    {
      *(a4 + 24) = &type metadata for AccessoryModelNameResponsePayload;
      v7 = sub_10059BD54();
    }

    *(a4 + 32) = v7;
    *a4 = a1;
    *(a4 + 8) = a2;
  }

  else
  {
    *(a4 + 24) = &type metadata for AccessoryProductDataResponsePayload;
    *(a4 + 32) = sub_10059BDFC();
    *a4 = a1;
    *(a4 + 8) = a2;

    return sub_100017D5C(a1, a2);
  }
}

uint64_t sub_10059A640(void *a1, unint64_t a2, unint64_t a3, int a4)
{
  v8 = type metadata accessor for Endianness();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[4];
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryEncoding.container()();
  v21 = a4;
  v14 = sub_10059A0E8(a2, a3, a4);
  LOWORD(v22) = word_1013B2456[v14];
  static Endianness.current.getter();
  sub_1002053B0();
  FixedWidthInteger.convert(to:)();
  (*(v9 + 8))(v12, v8);
  LOWORD(v22) = v24;
  sub_10015049C(v26, v27);
  v15 = v28;
  dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
  if (!v15)
  {
    switch(v14)
    {
      case 1u:
        sub_10059A3B4(a2, a3, v21, &v24);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (!swift_dynamicCast())
        {
          goto LABEL_29;
        }

        v16 = v22;
        v17 = v23;
        v24 = v22;
        v25 = v23;
        sub_10015049C(v26, v27);
        sub_10059C0F0();
        dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
        sub_100016590(v16, v17);
        return sub_100007BAC(v26);
      case 3u:
        sub_10059A3B4(a2, a3, v21, &v24);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (!swift_dynamicCast())
        {
          goto LABEL_29;
        }

        v24 = v22;
        v25 = v23;
        sub_10015049C(v26, v27);
        sub_100413C7C();
        goto LABEL_23;
      case 5u:
        sub_10059A3B4(a2, a3, v21, &v24);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (!swift_dynamicCast())
        {
          goto LABEL_29;
        }

        v24 = v22;
        v25 = v23;
        sub_10015049C(v26, v27);
        sub_10059C09C();
LABEL_23:
        dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();

        return sub_100007BAC(v26);
      case 7u:
        sub_10059A3B4(a2, a3, v21, &v24);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (!swift_dynamicCast())
        {
          goto LABEL_29;
        }

        v24 = v22;
        sub_10015049C(v26, v27);
        sub_10059BFF4();
        goto LABEL_28;
      case 9u:
        sub_10059A3B4(a2, a3, v21, &v24);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (!swift_dynamicCast())
        {
          goto LABEL_29;
        }

        LODWORD(v24) = v22;
        sub_10015049C(v26, v27);
        sub_10059BFA0();
        goto LABEL_28;
      case 0xBu:
        sub_10059A3B4(a2, a3, v21, &v24);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (!swift_dynamicCast())
        {
          goto LABEL_29;
        }

        LODWORD(v24) = v22;
        sub_10015049C(v26, v27);
        sub_10059C048();
        goto LABEL_28;
      case 0xDu:
        sub_10059A3B4(a2, a3, v21, &v24);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (!swift_dynamicCast())
        {
          goto LABEL_29;
        }

        LOBYTE(v24) = v22;
        sub_10015049C(v26, v27);
        sub_10059BF4C();
        goto LABEL_28;
      case 0xFu:
        sub_10059A3B4(a2, a3, v21, &v24);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (!swift_dynamicCast())
        {
          goto LABEL_29;
        }

        LODWORD(v24) = v22;
        sub_10015049C(v26, v27);
        sub_10030FC2C();
        goto LABEL_28;
      case 0x11u:
        sub_10059A3B4(a2, a3, v21, &v24);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (!swift_dynamicCast())
        {
          goto LABEL_29;
        }

        LOBYTE(v24) = v22;
        sub_10015049C(v26, v27);
        sub_10059BEF8();
        goto LABEL_28;
      case 0x13u:
        sub_10059A3B4(a2, a3, v21, &v24);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (!swift_dynamicCast())
        {
          goto LABEL_29;
        }

        LOBYTE(v24) = v22;
        sub_10015049C(v26, v27);
        sub_10059BEA4();
        goto LABEL_28;
      case 0x15u:
        sub_10059A3B4(a2, a3, v21, &v24);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (!swift_dynamicCast())
        {
          goto LABEL_29;
        }

        LODWORD(v24) = v22;
        sub_10015049C(v26, v27);
        sub_10059BE50();
        goto LABEL_28;
      default:
        sub_10059A3B4(a2, a3, v21, &v24);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          sub_10015049C(v26, v27);
          sub_10030FB84();
LABEL_28:
          dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
        }

        else
        {
LABEL_29:
          sub_10059BAB4();
          swift_allocError();
          *v18 = 0;
          swift_willThrow();
        }

        break;
    }
  }

  return sub_100007BAC(v26);
}

__int16 *sub_10059AE0C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10059B834(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_10059AE5C(unsigned __int16 a1)
{
  if (a1 > 0x802u)
  {
    if (a1 <= 0x807u)
    {
      if (a1 <= 0x804u)
      {
        if (a1 == 2051)
        {
          return 1;
        }

        if (a1 == 2052)
        {
          return 3;
        }

        return 22;
      }

      if (a1 == 2053)
      {
        return 5;
      }

      else if (a1 == 2054)
      {
        return 7;
      }

      else
      {
        return 9;
      }
    }

    else
    {
      if (a1 > 0x80Au)
      {
        switch(a1)
        {
          case 0x80Bu:
            return 17;
          case 0x80Cu:
            return 19;
          case 0x80Du:
            return 21;
        }

        return 22;
      }

      if (a1 == 2056)
      {
        return 11;
      }

      else if (a1 == 2057)
      {
        return 13;
      }

      else
      {
        return 15;
      }
    }
  }

  else
  {
    if (a1 > 7u)
    {
      if (a1 <= 0xAu)
      {
        if (a1 == 8)
        {
          return 10;
        }

        if (a1 == 9)
        {
          return 12;
        }

        return 14;
      }

      switch(a1)
      {
        case 0xBu:
          return 16;
        case 0xCu:
          return 18;
        case 0xDu:
          return 20;
      }

      return 22;
    }

    if (a1 <= 4u)
    {
      if (a1 == 3)
      {
        return 0;
      }

      if (a1 == 4)
      {
        return 2;
      }

      return 22;
    }

    if (a1 == 5)
    {
      return 4;
    }

    else if (a1 == 6)
    {
      return 6;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_10059B000(uint64_t a1, uint64_t *a2)
{
  v3 = a1;
  v4 = sub_10059A260(a1);
  sub_1000035D0(a2, a2[3]);
  result = swift_getDynamicType();
  if (v4 == result)
  {
    switch(v3)
    {
      case 1:
        sub_10001F280(a2, v8);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_24;
      case 2:
        sub_10001F280(a2, v8);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_47;
        }

        sub_100007BAC(a2);
        return 1;
      case 3:
        sub_10001F280(a2, v8);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          goto LABEL_24;
        }

        goto LABEL_47;
      case 4:
        sub_10001F280(a2, v8);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_47;
        }

        sub_100007BAC(a2);
        return 2;
      case 5:
        sub_10001F280(a2, v8);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          goto LABEL_24;
        }

        goto LABEL_47;
      case 6:
        sub_10001F280(a2, v8);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_47;
        }

        sub_100007BAC(a2);
        return 3;
      case 7:
        sub_10001F280(a2, v8);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_47;
        }

LABEL_24:
        v3 = v7;
        sub_100007BAC(a2);
        return v3;
      case 8:
        sub_10001F280(a2, v8);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_47;
        }

        sub_100007BAC(a2);
        return 4;
      case 9:
        sub_10001F280(a2, v8);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          goto LABEL_34;
        }

        goto LABEL_47;
      case 10:
        sub_10001F280(a2, v8);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_47;
        }

        sub_100007BAC(a2);
        return 6;
      case 11:
        sub_10001F280(a2, v8);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          goto LABEL_34;
        }

        goto LABEL_47;
      case 12:
        sub_10001F280(a2, v8);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_47;
        }

        sub_100007BAC(a2);
        return 5;
      case 13:
        sub_10001F280(a2, v8);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          goto LABEL_46;
        }

        goto LABEL_47;
      case 14:
        sub_10001F280(a2, v8);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_47;
        }

        sub_100007BAC(a2);
        return 9;
      case 15:
        sub_10001F280(a2, v8);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          goto LABEL_34;
        }

        goto LABEL_47;
      case 16:
        sub_10001F280(a2, v8);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_47;
        }

        sub_100007BAC(a2);
        return 7;
      case 17:
        sub_10001F280(a2, v8);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          goto LABEL_46;
        }

        goto LABEL_47;
      case 18:
        sub_10001F280(a2, v8);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_47;
        }

        sub_100007BAC(a2);
        return 8;
      case 19:
        sub_10001F280(a2, v8);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_47;
        }

LABEL_46:
        v3 = v7;
        sub_100007BAC(a2);
        break;
      case 20:
        sub_10001F280(a2, v8);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_47;
        }

        sub_100007BAC(a2);
        v3 = 10;
        break;
      case 21:
        sub_10001F280(a2, v8);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_47;
        }

LABEL_34:
        v3 = v7;
        sub_100007BAC(a2);
        break;
      default:
        sub_10001F280(a2, v8);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          sub_100007BAC(a2);
          v3 = 0;
        }

        else
        {
LABEL_47:
          sub_10059BAB4();
          swift_allocError();
          *v6 = 0;
          swift_willThrow();
          sub_100007BAC(a2);
        }

        break;
    }

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

__int16 *sub_10059B834(uint64_t *a1)
{
  v3 = type metadata accessor for Endianness();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v19[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[4];
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryDecoding.container()();
  v9 = sub_10015049C(v21, v21[3]);
  sub_1002053B0();
  dispatch thunk of BinaryDecodingContaining.decode<A>(_:)();
  if (v1)
  {
    goto LABEL_5;
  }

  v22 = v19[0];
  static Endianness.current.getter();
  v9 = &v22;
  FixedWidthInteger.convert(to:)();
  (*(v4 + 8))(v7, v3);
  v10 = sub_10059AE5C(v20[0]);
  if (v10 == 22)
  {
    sub_10059BAB4();
    swift_allocError();
    *v11 = 1;
    swift_willThrow();
LABEL_5:
    sub_100007BAC(v21);
    sub_100007BAC(a1);
    return v9;
  }

  v12 = v10;
  v13 = sub_10059A260(v10);
  v15 = v14;
  sub_10001F280(a1, v19);
  v20[3] = v13;
  v20[4] = v15;
  sub_1000280DC(v20);
  v16 = *(v15 + 8);
  dispatch thunk of BinaryDecodable.init(from:)();
  sub_10001F280(v20, v19);
  v9 = sub_10059B000(v12, v19);
  sub_100007BAC(v20);
  sub_100007BAC(v21);
  sub_100007BAC(a1);
  return v9;
}

unint64_t sub_10059BAB4()
{
  result = qword_1016A5020;
  if (!qword_1016A5020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A5020);
  }

  return result;
}

unint64_t sub_10059BB08()
{
  result = qword_1016A5028;
  if (!qword_1016A5028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A5028);
  }

  return result;
}

unint64_t sub_10059BB5C()
{
  result = qword_1016A5030;
  if (!qword_1016A5030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A5030);
  }

  return result;
}

unint64_t sub_10059BBB0()
{
  result = qword_1016A5038;
  if (!qword_1016A5038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A5038);
  }

  return result;
}

unint64_t sub_10059BC04()
{
  result = qword_1016A5040;
  if (!qword_1016A5040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A5040);
  }

  return result;
}

unint64_t sub_10059BC58()
{
  result = qword_1016A5048;
  if (!qword_1016A5048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A5048);
  }

  return result;
}

unint64_t sub_10059BCAC()
{
  result = qword_1016A5050;
  if (!qword_1016A5050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A5050);
  }

  return result;
}

unint64_t sub_10059BD00()
{
  result = qword_1016A5058;
  if (!qword_1016A5058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A5058);
  }

  return result;
}

unint64_t sub_10059BD54()
{
  result = qword_1016A5060;
  if (!qword_1016A5060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A5060);
  }

  return result;
}

unint64_t sub_10059BDA8()
{
  result = qword_1016A5068;
  if (!qword_1016A5068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A5068);
  }

  return result;
}

unint64_t sub_10059BDFC()
{
  result = qword_1016A5070;
  if (!qword_1016A5070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A5070);
  }

  return result;
}

unint64_t sub_10059BE50()
{
  result = qword_1016A5078;
  if (!qword_1016A5078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A5078);
  }

  return result;
}

unint64_t sub_10059BEA4()
{
  result = qword_1016A5080;
  if (!qword_1016A5080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A5080);
  }

  return result;
}

unint64_t sub_10059BEF8()
{
  result = qword_1016A5088;
  if (!qword_1016A5088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A5088);
  }

  return result;
}

unint64_t sub_10059BF4C()
{
  result = qword_1016A5090;
  if (!qword_1016A5090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A5090);
  }

  return result;
}

unint64_t sub_10059BFA0()
{
  result = qword_1016A5098;
  if (!qword_1016A5098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A5098);
  }

  return result;
}

unint64_t sub_10059BFF4()
{
  result = qword_1016A50A0;
  if (!qword_1016A50A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A50A0);
  }

  return result;
}

unint64_t sub_10059C048()
{
  result = qword_1016A50A8;
  if (!qword_1016A50A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A50A8);
  }

  return result;
}

unint64_t sub_10059C09C()
{
  result = qword_1016A50B0;
  if (!qword_1016A50B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A50B0);
  }

  return result;
}

unint64_t sub_10059C0F0()
{
  result = qword_1016A50B8;
  if (!qword_1016A50B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A50B8);
  }

  return result;
}

unint64_t sub_10059C158()
{
  result = qword_1016A50C0;
  if (!qword_1016A50C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A50C0);
  }

  return result;
}

uint64_t sub_10059C1AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v5 = *(*(sub_1000BC4D4(&qword_1016A51A0, &unk_1013B24F0) - 8) + 64) + 15;
  v4[4] = swift_task_alloc();
  v6 = sub_1000BC4D4(&qword_1016A51A8, &unk_1013F8010);
  v4[5] = v6;
  v7 = *(v6 - 8);
  v4[6] = v7;
  v8 = *(v7 + 64) + 15;
  v4[7] = swift_task_alloc();
  v9 = sub_1000BC4D4(&qword_1016A51B0, &unk_1013B2500);
  v4[8] = v9;
  v10 = *(v9 - 8);
  v4[9] = v10;
  v11 = *(v10 + 64) + 15;
  v4[10] = swift_task_alloc();
  v12 = sub_1000BC4D4(&qword_1016A51B8, &unk_1013F8020);
  v4[11] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v4[12] = swift_task_alloc();
  v14 = sub_1000BC4D4(&qword_1016A51C0, &unk_1013B2510);
  v4[13] = v14;
  v15 = *(v14 - 8);
  v4[14] = v15;
  v16 = *(v15 + 64) + 15;
  v4[15] = swift_task_alloc();
  v17 = async function pointer to daemon.getter[1];
  v18 = swift_task_alloc();
  v4[16] = v18;
  *v18 = v4;
  v18[1] = sub_10059C3EC;

  return daemon.getter();
}

uint64_t sub_10059C3EC(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 128);
  v12 = *v1;
  *(v3 + 136) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 144) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for DistributedNotificationService();
  v9 = sub_100019468(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100019468(&qword_1016A51C8, type metadata accessor for DistributedNotificationService);
  *v6 = v12;
  v6[1] = sub_10059C5C8;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_10059C5C8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 144);
  v8 = *v2;
  v3[19] = a1;
  v3[20] = v1;

  if (v1)
  {
    v5 = sub_10059CE4C;
  }

  else
  {
    v6 = v3[17];

    v5 = sub_10059C6E4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10059C6E4()
{
  v1 = v0[19];
  v2 = v0[15];
  v3 = v0[12];
  v5 = v0[10];
  v4 = v0[11];
  v7 = v0[8];
  v6 = v0[9];
  v13 = v0[13];
  v14 = v0[7];
  v12 = v0[4];
  v8 = sub_100B11100(&off_101609808);
  swift_arrayDestroy();
  sub_1000BC4D4(&qword_1016A51D0, &qword_1013B2520);
  (*(v6 + 104))(v5, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v7);
  AsyncStream.init(_:bufferingPolicy:_:)();
  *(swift_allocObject() + 16) = v8;
  sub_10059D418();
  AsyncFilterSequence.init(_:isIncluded:)();
  AsyncFilterSequence.base.getter();
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  AsyncFilterSequence.isIncluded.getter();
  AsyncFilterSequence.Iterator.init(_:isIncluded:)();
  v9 = swift_task_alloc();
  v0[21] = v9;
  *v9 = v0;
  v9[1] = sub_10059C910;
  v10 = v0[7];

  return sub_101012F80(0, 0);
}

uint64_t sub_10059C910(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *(*v4 + 168);
  v8 = *v4;
  *(v5 + 176) = a1;
  *(v5 + 184) = a3;

  if (!v3)
  {

    return _swift_task_switch(sub_10059CA24, 0, 0);
  }

  return result;
}

uint64_t sub_10059CA24()
{
  v1 = v0[22];
  if (v1)
  {
    v2 = v0[23];
    v3 = v0[3];

    type metadata accessor for Transaction();
    v0[24] = static Transaction.$current.getter();
    v0[2] = v1;
    v4 = swift_allocObject();
    v0[25] = v4;
    swift_weakInit();
    v5 = async function pointer to TaskLocal.withValue<A>(_:operation:isolation:file:line:)[1];

    v6 = swift_task_alloc();
    v0[26] = v6;
    sub_1000BC4D4(&unk_1016969C0, &qword_101395690);
    *v6 = v0;
    v6[1] = sub_10059CC48;

    return TaskLocal.withValue<A>(_:operation:isolation:file:line:)(v0 + 27, v0 + 2, &unk_1013B2538, v4, 0, 0, 0xD000000000000026, 0x800000010135B370);
  }

  else
  {
    v7 = v0[19];
    v9 = v0[14];
    v8 = v0[15];
    v10 = v0[13];
    v12 = v0[6];
    v11 = v0[7];
    v13 = v0[5];

    (*(v12 + 8))(v11, v13);
    (*(v9 + 8))(v8, v10);
    v14 = v0[15];
    v15 = v0[12];
    v16 = v0[10];
    v17 = v0[7];
    v18 = v0[4];

    v19 = v0[1];

    return v19();
  }
}

uint64_t sub_10059CC48()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v6 = v2[24];
    v7 = v2[25];
    v8 = v2[22];

    return _swift_task_switch(sub_10059CD98, 0, 0);
  }
}

uint64_t sub_10059CD98()
{
  v1 = v0[22];

  v2 = swift_task_alloc();
  v0[21] = v2;
  *v2 = v0;
  v2[1] = sub_10059C910;
  v3 = v0[7];

  return sub_101012F80(0, 0);
}

uint64_t sub_10059CE4C()
{
  v1 = v0[17];

  if (qword_101695210 != -1)
  {
    swift_once();
  }

  v2 = v0[20];
  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177C5D8);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[20];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to register for application deleted notifications: %{public}@", v8, 0xCu);
    sub_100288C6C(v9);
  }

  else
  {
  }

  v11 = v0[15];
  v12 = v0[12];
  v13 = v0[10];
  v14 = v0[7];
  v15 = v0[4];

  v16 = v0[1];

  return v16();
}

uint64_t sub_10059D020(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return _swift_task_switch(sub_10059D040, 0, 0);
}

uint64_t sub_10059D040()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong && (v3 = *(Strong + 32), *(v0 + 56) = v3, *(v0 + 64) = *(Strong + 40), sub_100012908(v3), , v3))
  {
    v8 = (v3 + *v3);
    v4 = v3[1];
    v5 = swift_task_alloc();
    *(v0 + 72) = v5;
    *v5 = v0;
    v5[1] = sub_10059D1C0;

    return v8();
  }

  else
  {
    **(v0 + 40) = 1;
    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_10059D1C0()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 56);
  v5 = *v0;

  sub_1000BB27C(v3);

  return _swift_task_switch(sub_10059D2F0, 0, 0);
}

uint64_t sub_10059D310()
{
  v1 = v0[3];

  v2 = v0[5];
  sub_1000BB27C(v0[4]);

  return swift_deallocClassInstance();
}

uint64_t sub_10059D37C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1001BBA4C;

  return sub_100D56E98(a1, v4);
}

unint64_t sub_10059D418()
{
  result = qword_1016A51D8;
  if (!qword_1016A51D8)
  {
    sub_1000BC580(&qword_1016A51B8, &unk_1013F8020);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A51D8);
  }

  return result;
}

uint64_t sub_10059D47C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100014650;

  return sub_10059D020(a1, v1);
}

uint64_t sub_10059D518(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = type metadata accessor for ScanRate();
  v2[6] = v3;
  v4 = *(v3 - 8);
  v2[7] = v4;
  v5 = *(v4 + 64) + 15;
  v2[8] = swift_task_alloc();
  v6 = *(*(sub_1000BC4D4(&qword_1016B7C50, &qword_1013DD730) - 8) + 64) + 15;
  v2[9] = swift_task_alloc();
  v7 = type metadata accessor for RSSIValue();
  v2[10] = v7;
  v8 = *(v7 - 8);
  v2[11] = v8;
  v9 = *(v8 + 64) + 15;
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();

  return _swift_task_switch(sub_10059D678, v1, 0);
}

uint64_t sub_10059D678()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[9];
  sub_10059DCE4(v0[4], v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v5 = v0[11];
    v4 = v0[12];
    v6 = v0[10];
    v8 = v0[7];
    v7 = v0[8];
    v9 = v0[6];
    sub_10059DD54(v0[9]);
    type metadata accessor for CBDiscovery();
    (*(v8 + 104))(v7, enum case for ScanRate.default(_:), v9);
    (*(v5 + 104))(v4, enum case for RSSIValue.unknown(_:), v6);
    v10 = async function pointer to CBDiscovery.__allocating_init(scanRate:rssiThreshold:)[1];
    v11 = swift_task_alloc();
    v0[15] = v11;
    *v11 = v0;
    v11[1] = sub_10059DAA8;
  }

  else
  {
    v14 = v0[12];
    v15 = v0[13];
    v16 = v0[10];
    v17 = v0[11];
    v18 = v0[8];
    v19 = v0[6];
    v20 = v0[7];
    (*(v17 + 32))(v15, v0[9], v16);
    type metadata accessor for CBDiscovery();
    (*(v17 + 16))(v14, v15, v16);
    (*(v20 + 104))(v18, enum case for ScanRate.default(_:), v19);
    v21 = async function pointer to CBDiscovery.__allocating_init(scanRate:rssiThreshold:)[1];
    v22 = swift_task_alloc();
    v0[14] = v22;
    *v22 = v0;
    v22[1] = sub_10059D8A4;
  }

  v12 = v0[12];
  v13 = v0[8];

  return CBDiscovery.__allocating_init(scanRate:rssiThreshold:)(v13, v12);
}

uint64_t sub_10059D8A4(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  *(v3 + 16) = v1;
  *(v3 + 24) = a1;
  v4 = *(v2 + 112);
  v5 = *(v2 + 40);
  v7 = *v1;

  return _swift_task_switch(sub_10059D9B8, v5, 0);
}

uint64_t sub_10059D9B8()
{
  (*(v0[11] + 8))(v0[13], v0[10]);
  v1 = v0[3];
  v3 = v0[12];
  v2 = v0[13];
  v5 = v0[8];
  v4 = v0[9];
  v6 = sub_10059DDBC(&qword_1016A5298, 255, &type metadata accessor for CBDiscovery);

  v7 = v0[1];

  return v7(v1, v6);
}

uint64_t sub_10059DAA8(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 120);
  v12 = *v1;

  v5 = v3[13];
  v6 = v3[12];
  v7 = v3[9];
  v8 = v3[8];
  v9 = sub_10059DDBC(&qword_1016A5298, 255, &type metadata accessor for CBDiscovery);

  v10 = *(v12 + 8);

  return v10(a1, v9);
}

uint64_t sub_10059DC8C(uint64_t a1, uint64_t a2)
{
  result = sub_10059DDBC(&qword_1016A5290, a2, type metadata accessor for BTDiscoveryManager);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10059DCE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016B7C50, &qword_1013DD730);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10059DD54(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_1016B7C50, &qword_1013DD730);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10059DDBC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_10059DE04(uint64_t *a1)
{
  v53 = type metadata accessor for OwnerSharingCircle();
  v2 = *(*(v53 - 8) + 64);
  v3 = __chkstk_darwin(v53);
  v5 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v51 = &v49 - v7;
  __chkstk_darwin(v6);
  v52 = &v49 - v8;
  v9 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v49 - v11;
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v21 = &v49 - v20;
  __chkstk_darwin(v19);
  v23 = &v49 - v22;
  v24 = objc_autoreleasePoolPush();
  sub_100E7AB5C(a1, v23);
  objc_autoreleasePoolPop(v24);
  sub_10059E4D4();
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_10000B3A8(v12, &unk_101696900, &unk_10138B1E0);
    if (qword_101694778 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_1000076D4(v25, qword_10177AE28);
    sub_1005C31F8(a1, v5, type metadata accessor for OwnerSharingCircle);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v54 = v29;
      *v28 = 136315138;
      v30 = *(v53 + 24);
      type metadata accessor for UUID();
      sub_1000194B0(&qword_101696930, &type metadata accessor for UUID);
      v31 = dispatch thunk of CustomStringConvertible.description.getter();
      v33 = v32;
      sub_1005C32E0(v5, type metadata accessor for OwnerSharingCircle);
      v34 = sub_1000136BC(v31, v33, &v54);

      *(v28 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v26, v27, "Error getting expiration date for the delegated share for beacon %s", v28, 0xCu);
      sub_100007BAC(v29);
    }

    else
    {

      sub_1005C32E0(v5, type metadata accessor for OwnerSharingCircle);
    }

    (*(v14 + 8))(v23, v13);
    return 0;
  }

  (*(v14 + 32))(v21, v12, v13);
  static Date.trustedNow.getter(v18);
  sub_1000194B0(&qword_1016C9070, &type metadata accessor for Date);
  v35 = dispatch thunk of static Comparable.< infix(_:_:)();
  v36 = *(v14 + 8);
  v36(v18, v13);
  if (v35)
  {
    v36(v21, v13);
    v36(v23, v13);
    return 0;
  }

  if (qword_101694778 != -1)
  {
    swift_once();
  }

  v38 = type metadata accessor for Logger();
  sub_1000076D4(v38, qword_10177AE28);
  v39 = v52;
  sub_1005C31F8(a1, v52, type metadata accessor for OwnerSharingCircle);
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v54 = v50;
    *v42 = 136315138;
    sub_1005C31F8(v39, v51, type metadata accessor for OwnerSharingCircle);
    v43 = String.init<A>(describing:)();
    v44 = v39;
    v45 = v43;
    v47 = v46;
    sub_1005C32E0(v44, type metadata accessor for OwnerSharingCircle);
    v48 = sub_1000136BC(v45, v47, &v54);

    *(v42 + 4) = v48;
    _os_log_impl(&_mh_execute_header, v40, v41, "Expired delegated share: %s", v42, 0xCu);
    sub_100007BAC(v50);
  }

  else
  {

    sub_1005C32E0(v39, type metadata accessor for OwnerSharingCircle);
  }

  v36(v21, v13);
  v36(v23, v13);
  return 1;
}

uint64_t sub_10059E4D4()
{
  v0 = type metadata accessor for Calendar.Component();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Calendar();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v10 = *(qword_10177B348 + 40);
  OS_dispatch_queue.sync<A>(execute:)();
  sub_101074BF4(v15[1]);
  v12 = v11;
  v13 = v11;

  static Calendar.current.getter();
  result = (*(v1 + 104))(v4, enum case for Calendar.Component.second(_:), v0);
  if ((*&v13 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v12 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v12 < 9.22337204e18)
  {
    Calendar.date(byAdding:value:to:wrappingComponents:)();
    (*(v1 + 8))(v4, v0);
    return (*(v6 + 8))(v9, v5);
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_10059E754(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v3 = *(*(sub_1000BC4D4(&unk_101696900, &unk_10138B1E0) - 8) + 64) + 15;
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v4 = type metadata accessor for Date();
  v2[13] = v4;
  v5 = *(v4 - 8);
  v2[14] = v5;
  v6 = *(v5 + 64) + 15;
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v2[17] = v7;
  v8 = *(v7 - 8);
  v2[18] = v8;
  v9 = *(v8 + 64) + 15;
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v10 = *(*(type metadata accessor for DelegatedShareUseCase.ShareCreationData(0) - 8) + 64) + 15;
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v11 = type metadata accessor for URL();
  v2[28] = v11;
  v12 = *(v11 - 8);
  v2[29] = v12;
  v13 = *(v12 + 64) + 15;
  v2[30] = swift_task_alloc();
  v14 = *(type metadata accessor for OwnerSharingCircle() - 8);
  v2[31] = v14;
  v15 = *(v14 + 64) + 15;
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();
  v16 = *(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8);
  v2[35] = v16;
  v2[36] = *(v16 + 64);
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();

  return _swift_task_switch(sub_10059EA84, v1, 0);
}

uint64_t sub_10059EA84()
{
  v1 = v0[38];
  v2 = v0[17];
  v3 = v0[18];
  v4 = v0[9];
  v5 = *(v0[10] + 168);
  v0[39] = v5;
  v6 = *(v3 + 16);
  v0[40] = v6;
  v0[41] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  (*(v3 + 56))(v1, 0, 1, v2);

  return _swift_task_switch(sub_10059EB48, v5, 0);
}

uint64_t sub_10059EB48()
{
  v1 = v0[39];
  v2 = v0[36];
  v3 = v0[37];
  v4 = v0[35];
  sub_1000D2A70(v0[38], v3, &qword_1016980D0, &unk_10138F3B0);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = v5 + v2;
  v7 = swift_allocObject();
  v0[42] = v7;
  *(v7 + 16) = v1;
  sub_1000D2AD8(v3, v7 + v5, &qword_1016980D0, &unk_10138F3B0);
  *(v7 + v6) = 1;
  v8 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v9 = swift_task_alloc();
  v0[43] = v9;
  v10 = sub_1000BC4D4(&unk_101698BD0, &unk_10138C210);
  *v9 = v0;
  v9[1] = sub_10059ECC4;

  return unsafeBlocking<A>(context:_:)(v0 + 7, 0xD000000000000010, 0x800000010134A8C0, sub_1000D3164, v7, v10);
}

uint64_t sub_10059ECC4()
{
  v1 = *(*v0 + 344);
  v2 = *(*v0 + 336);
  v3 = *(*v0 + 312);
  v5 = *v0;

  return _swift_task_switch(sub_10059EDF0, v3, 0);
}

uint64_t sub_10059EDF0()
{
  v1 = v0[10];
  sub_10000B3A8(v0[38], &qword_1016980D0, &unk_10138F3B0);
  v0[44] = v0[7];

  return _swift_task_switch(sub_10059EE74, v1, 0);
}

uint64_t sub_10059EE74()
{
  v56 = v0;
  v1 = *(v0 + 352);
  v2 = *(v1 + 16);
  *(v0 + 360) = v2;
  if (v2)
  {
    v3 = *(v0 + 248);
    v4 = *(v3 + 80);
    *(v0 + 568) = v4;
    v5 = *(v3 + 72);
    *(v0 + 376) = 0;
    *(v0 + 384) = _swiftEmptyArrayStorage;
    *(v0 + 368) = v5;
    sub_1005C31F8(v1 + ((v4 + 32) & ~v4), *(v0 + 272), type metadata accessor for OwnerSharingCircle);
    v6 = swift_task_alloc();
    *(v0 + 392) = v6;
    *v6 = v0;
    v6[1] = sub_10059F30C;
    v7 = *(v0 + 272);
    v8 = *(v0 + 240);
    v9 = *(v0 + 80);

    return sub_1005B2110(v8, v7);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage[2];

    if (v11)
    {
      if (qword_101694778 != -1)
      {
        swift_once();
      }

      v13 = *(v0 + 320);
      v12 = *(v0 + 328);
      v14 = *(v0 + 176);
      v15 = *(v0 + 136);
      v16 = *(v0 + 72);
      v17 = type metadata accessor for Logger();
      sub_1000076D4(v17, qword_10177AE28);
      v13(v14, v16, v15);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.default.getter();
      v20 = os_log_type_enabled(v18, v19);
      v21 = *(v0 + 176);
      v22 = *(v0 + 136);
      v23 = *(v0 + 144);
      if (v20)
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v55 = v25;
        *v24 = 141558275;
        *(v24 + 4) = 1752392040;
        *(v24 + 12) = 2081;
        sub_1000194B0(&qword_101696930, &type metadata accessor for UUID);
        v26 = dispatch thunk of CustomStringConvertible.description.getter();
        v28 = v27;
        (*(v23 + 8))(v21, v22);
        v29 = sub_1000136BC(v26, v28, &v55);

        *(v24 + 14) = v29;
        _os_log_impl(&_mh_execute_header, v18, v19, "Existing circle found on delegated share create, use that for %{private,mask.hash}s.", v24, 0x16u);
        sub_100007BAC(v25);
      }

      else
      {

        (*(v23 + 8))(v21, v22);
      }

      v54 = *(v0 + 352);
      v35 = *(v0 + 296);
      v34 = *(v0 + 304);
      v36 = *(v0 + 264);
      v37 = *(v0 + 272);
      v38 = *(v0 + 256);
      v39 = *(v0 + 240);
      v41 = *(v0 + 208);
      v40 = *(v0 + 216);
      v43 = *(v0 + 192);
      v42 = *(v0 + 200);
      v45 = *(v0 + 184);
      v46 = *(v0 + 176);
      v47 = *(v0 + 168);
      v48 = *(v0 + 160);
      v49 = *(v0 + 152);
      v50 = *(v0 + 128);
      v51 = *(v0 + 120);
      v52 = *(v0 + 96);
      v53 = *(v0 + 88);

      v44 = *(v0 + 8);

      return v44(v54);
    }

    else
    {
      v30 = swift_task_alloc();
      *(v0 + 408) = v30;
      *v30 = v0;
      v30[1] = sub_10059F9A0;
      v31 = *(v0 + 208);
      v32 = *(v0 + 72);
      v33 = *(v0 + 80);

      return sub_1005A3130(v31, v32);
    }
  }
}

uint64_t sub_10059F30C()
{
  v2 = *v1;
  v3 = *(*v1 + 392);
  v8 = *v1;
  *(*v1 + 400) = v0;

  if (v0)
  {
    v4 = v2[10];
    v5 = sub_1005A12E4;
  }

  else
  {
    v6 = v2[10];
    (*(v2[29] + 8))(v2[30], v2[28]);
    v5 = sub_10059F444;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10059F444()
{
  v60 = v0;
  v1 = *(v0 + 384);
  sub_1005C31F8(*(v0 + 272), *(v0 + 264), type metadata accessor for OwnerSharingCircle);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + 384);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = sub_100A5BC94(0, v3[2] + 1, 1, *(v0 + 384));
  }

  v5 = v3[2];
  v4 = v3[3];
  if (v5 >= v4 >> 1)
  {
    v3 = sub_100A5BC94(v4 > 1, v5 + 1, 1, v3);
  }

  v6 = *(v0 + 368);
  v7 = *(v0 + 264);
  v8 = (*(v0 + 568) + 32) & ~*(v0 + 568);
  sub_1005C32E0(*(v0 + 272), type metadata accessor for OwnerSharingCircle);
  v3[2] = v5 + 1;
  sub_1005C3260(v7, v3 + v8 + v6 * v5, type metadata accessor for OwnerSharingCircle);
  v9 = *(v0 + 376) + 1;
  if (v9 == *(v0 + 360))
  {
    v10 = v3[2];

    if (v10)
    {
      if (qword_101694778 != -1)
      {
        swift_once();
      }

      v12 = *(v0 + 320);
      v11 = *(v0 + 328);
      v13 = *(v0 + 176);
      v14 = *(v0 + 136);
      v15 = *(v0 + 72);
      v16 = type metadata accessor for Logger();
      sub_1000076D4(v16, qword_10177AE28);
      v12(v13, v15, v14);
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.default.getter();
      v19 = os_log_type_enabled(v17, v18);
      v20 = *(v0 + 176);
      v21 = *(v0 + 136);
      v22 = *(v0 + 144);
      if (v19)
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v59 = v24;
        *v23 = 141558275;
        *(v23 + 4) = 1752392040;
        *(v23 + 12) = 2081;
        sub_1000194B0(&qword_101696930, &type metadata accessor for UUID);
        v25 = dispatch thunk of CustomStringConvertible.description.getter();
        v27 = v26;
        (*(v22 + 8))(v20, v21);
        v28 = sub_1000136BC(v25, v27, &v59);

        *(v23 + 14) = v28;
        _os_log_impl(&_mh_execute_header, v17, v18, "Existing circle found on delegated share create, use that for %{private,mask.hash}s.", v23, 0x16u);
        sub_100007BAC(v24);
      }

      else
      {

        (*(v22 + 8))(v20, v21);
      }

      v58 = *(v0 + 352);
      v39 = *(v0 + 296);
      v38 = *(v0 + 304);
      v40 = *(v0 + 264);
      v41 = *(v0 + 272);
      v42 = *(v0 + 256);
      v43 = *(v0 + 240);
      v45 = *(v0 + 208);
      v44 = *(v0 + 216);
      v47 = *(v0 + 192);
      v46 = *(v0 + 200);
      v49 = *(v0 + 184);
      v50 = *(v0 + 176);
      v51 = *(v0 + 168);
      v52 = *(v0 + 160);
      v53 = *(v0 + 152);
      v54 = *(v0 + 128);
      v55 = *(v0 + 120);
      v56 = *(v0 + 96);
      v57 = *(v0 + 88);

      v48 = *(v0 + 8);

      return v48(v58);
    }

    else
    {
      v34 = swift_task_alloc();
      *(v0 + 408) = v34;
      *v34 = v0;
      v34[1] = sub_10059F9A0;
      v35 = *(v0 + 208);
      v36 = *(v0 + 72);
      v37 = *(v0 + 80);

      return sub_1005A3130(v35, v36);
    }
  }

  else
  {
    *(v0 + 376) = v9;
    *(v0 + 384) = v3;
    sub_1005C31F8(*(v0 + 352) + ((*(v0 + 568) + 32) & ~*(v0 + 568)) + *(v0 + 368) * v9, *(v0 + 272), type metadata accessor for OwnerSharingCircle);
    v29 = swift_task_alloc();
    *(v0 + 392) = v29;
    *v29 = v0;
    v29[1] = sub_10059F30C;
    v30 = *(v0 + 272);
    v31 = *(v0 + 240);
    v32 = *(v0 + 80);

    return sub_1005B2110(v31, v30);
  }
}

uint64_t sub_10059F9A0()
{
  v2 = *v1;
  v3 = *(*v1 + 408);
  v9 = *v1;
  *(*v1 + 416) = v0;

  if (v0)
  {
    v4 = *(v2 + 352);
    v5 = *(v2 + 80);

    v6 = sub_1005A22C0;
    v7 = v5;
  }

  else
  {
    v7 = *(v2 + 80);
    v6 = sub_10059FAC8;
  }

  return _swift_task_switch(v6, v7, 0);
}

uint64_t sub_10059FAC8()
{
  v1 = v0[27];
  sub_1005C3260(v0[26], v1, type metadata accessor for DelegatedShareUseCase.ShareCreationData);
  v2 = *(v1 + 8);
  v0[53] = v2;
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = *(v0[31] + 80);
    sub_1005C31F8(v2 + ((v4 + 32) & ~v4), v0[32], type metadata accessor for OwnerSharingCircle);
    if (v3 == 1)
    {
      v5 = swift_task_alloc();
      v0[54] = v5;
      *v5 = v0;
      v5[1] = sub_10059FE8C;
      v6 = v0[27];
      v7 = v0[10];

      return sub_1005A43A0(v6);
    }

    v10 = v0[44];
    v11 = v0[32];

    sub_1005C32E0(v11, type metadata accessor for OwnerSharingCircle);
  }

  else
  {
    v9 = v0[44];
  }

  if (qword_101694778 != -1)
  {
    swift_once();
  }

  v12 = v0[27];
  v13 = v0[25];
  v14 = type metadata accessor for Logger();
  sub_1000076D4(v14, qword_10177AE28);
  sub_1005C31F8(v12, v13, type metadata accessor for DelegatedShareUseCase.ShareCreationData);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();
  v17 = os_log_type_enabled(v15, v16);
  v18 = v0[25];
  if (v17)
  {
    v19 = swift_slowAlloc();
    *v19 = 134217984;
    v20 = *(*(v18 + 8) + 16);
    sub_1005C32E0(v18, type metadata accessor for DelegatedShareUseCase.ShareCreationData);
    *(v19 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v15, v16, "incorrect number of delegation circles are being created: %ld", v19, 0xCu);
  }

  else
  {
    sub_1005C32E0(v0[25], type metadata accessor for DelegatedShareUseCase.ShareCreationData);
  }

  v21 = v0[27];

  sub_1005C32E0(v21, type metadata accessor for DelegatedShareUseCase.ShareCreationData);
  v23 = v0[37];
  v22 = v0[38];
  v25 = v0[33];
  v24 = v0[34];
  v26 = v0[32];
  v27 = v0[30];
  v29 = v0[26];
  v28 = v0[27];
  v31 = v0[24];
  v30 = v0[25];
  v33 = v0[23];
  v34 = v0[22];
  v35 = v0[21];
  v36 = v0[20];
  v37 = v0[19];
  v38 = v0[16];
  v39 = v0[15];
  v40 = v0[12];
  v41 = v0[11];

  v32 = v0[1];

  return v32(_swiftEmptyArrayStorage);
}

uint64_t sub_10059FE8C()
{
  v2 = *(*v1 + 432);
  v3 = *v1;
  *(v3 + 440) = v0;

  if (v0)
  {
    v4 = *(v3 + 352);
    v5 = *(v3 + 80);

    return _swift_task_switch(sub_1005A2668, v5, 0);
  }

  else
  {
    v6 = **(v3 + 216);
    v7 = swift_task_alloc();
    *(v3 + 448) = v7;
    *v7 = v3;
    v7[1] = sub_1005A001C;
    v8 = *(v3 + 80);

    return sub_1005AFF60(v6);
  }
}

uint64_t sub_1005A001C()
{
  v2 = *v1;
  v3 = *(*v1 + 448);
  v4 = *v1;
  *(*v1 + 456) = v0;

  v5 = *(v2 + 80);
  if (v0)
  {
    v6 = sub_1005A0774;
  }

  else
  {
    v6 = sub_1005A0148;
  }

  return _swift_task_switch(v6, v5, 0);
}

void sub_1005A0148()
{
  v55 = v0;
  v1 = *(v0 + 456);
  v2 = *(v0 + 256);
  v3 = *(v0 + 120);
  v4 = objc_autoreleasePoolPush();
  sub_100E7AB5C(v2, v3);
  if (v1)
  {

    objc_autoreleasePoolPop(v4);
  }

  else
  {
    v5 = *(v0 + 352);
    v7 = *(v0 + 112);
    v6 = *(v0 + 120);
    v9 = *(v0 + 96);
    v8 = *(v0 + 104);

    type metadata accessor for DelegatedShareUseCase();
    objc_autoreleasePoolPop(v4);
    sub_10059E4D4();
    v10 = *(v7 + 8);
    *(v0 + 464) = v10;
    *(v0 + 472) = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v10(v6, v8);
    if ((*(v7 + 48))(v9, 1, v8) == 1)
    {
      sub_10000B3A8(*(v0 + 96), &unk_101696900, &unk_10138B1E0);
      p_weak_ivar_lyt = &BeaconKeyManager.weak_ivar_lyt;
      if (qword_101694778 != -1)
      {
        swift_once();
      }

      v13 = *(v0 + 320);
      v12 = *(v0 + 328);
      v14 = *(v0 + 184);
      v15 = *(v0 + 136);
      v16 = *(v0 + 72);
      v17 = type metadata accessor for Logger();
      sub_1000076D4(v17, qword_10177AE28);
      v13(v14, v16, v15);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.error.getter();
      v20 = os_log_type_enabled(v18, v19);
      v21 = *(v0 + 184);
      v23 = *(v0 + 136);
      v22 = *(v0 + 144);
      if (v20)
      {
        v24 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v54 = v52;
        *v24 = 141558275;
        *(v24 + 4) = 1752392040;
        *(v24 + 12) = 2081;
        sub_1000194B0(&qword_101696930, &type metadata accessor for UUID);
        v25 = dispatch thunk of CustomStringConvertible.description.getter();
        v26 = v17;
        v28 = v27;
        (*(v22 + 8))(v21, v23);
        v29 = v25;
        p_weak_ivar_lyt = (&BeaconKeyManager + 56);
        v30 = sub_1000136BC(v29, v28, &v54);
        v17 = v26;

        *(v24 + 14) = v30;
        _os_log_impl(&_mh_execute_header, v18, v19, "Invalid expiration date while creating delegated share for beacon %{private,mask.hash}s", v24, 0x16u);
        sub_100007BAC(v52);
      }

      else
      {

        (*(v22 + 8))(v21, v23);
      }

      sub_1005C3340();
      v42 = swift_allocError();
      *v43 = 9;
      swift_willThrow();
      *(v0 + 528) = v42;
      if (p_weak_ivar_lyt[239] != -1)
      {
        swift_once();
      }

      *(v0 + 536) = sub_1000076D4(v17, qword_10177AE28);
      swift_errorRetain();
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        *v46 = 138543362;
        swift_errorRetain();
        v48 = _swift_stdlib_bridgeErrorToNSError();
        *(v46 + 4) = v48;
        *v47 = v48;
        _os_log_impl(&_mh_execute_header, v44, v45, "Failure on delegate share create, server share creation: %{public}@", v46, 0xCu);
        sub_10000B3A8(v47, &qword_10169BB30, &unk_10138B3C0);
      }

      v49 = swift_task_alloc();
      *(v0 + 544) = v49;
      *v49 = v0;
      v49[1] = sub_1005A2958;
      v50 = *(v0 + 216);
      v51 = *(v0 + 80);

      sub_1005A51DC(v50);
    }

    else
    {
      v31 = *(v0 + 128);
      v32 = *(v0 + 104);
      v33 = *(v0 + 112);
      v34 = *(v0 + 88);
      v35 = *(v0 + 80);
      (*(v33 + 32))(v31, *(v0 + 96), v32);
      v53 = *(v35 + 136);
      v36 = *(v35 + 136);
      v37 = sub_1000035D0((v35 + 112), v36);
      *(v0 + 40) = v53;
      v38 = sub_1000280DC((v0 + 16));
      (*(*(v36 - 8) + 16))(v38, v37, v36);
      (*(v33 + 16))(v34, v31, v32);
      (*(v33 + 56))(v34, 0, 1, v32);
      v39 = swift_task_alloc();
      *(v0 + 480) = v39;
      *v39 = v0;
      v39[1] = sub_1005A0FE0;
      v40 = *(v0 + 256);
      v41 = *(v0 + 88);

      sub_1012AC360(v40, v35 + 176, v0 + 16, v41);
    }
  }
}

uint64_t sub_1005A0774()
{
  v74 = v0;
  if (qword_101694778 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 456);
  v3 = *(v0 + 320);
  v2 = *(v0 + 328);
  v4 = *(v0 + 192);
  v5 = *(v0 + 136);
  v6 = *(v0 + 72);
  v71 = type metadata accessor for Logger();
  sub_1000076D4(v71, qword_10177AE28);
  v3(v4, v6, v5);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 456);
  v11 = *(v0 + 192);
  v13 = *(v0 + 136);
  v12 = *(v0 + 144);
  if (v9)
  {
    v14 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v73[0] = v70;
    *v14 = 141558531;
    *(v14 + 4) = 1752392040;
    *(v14 + 12) = 2081;
    sub_1000194B0(&qword_101696930, &type metadata accessor for UUID);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    (*(v12 + 8))(v11, v13);
    v18 = sub_1000136BC(v15, v17, v73);

    *(v14 + 14) = v18;
    *(v14 + 22) = 2114;
    swift_errorRetain();
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 24) = v19;
    *v69 = v19;
    _os_log_impl(&_mh_execute_header, v7, v8, "Failed to backup secrets to disk for beacon %{private,mask.hash}s, %{public}@.", v14, 0x20u);
    sub_10000B3A8(v69, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v70);
  }

  else
  {
    v20 = *(v0 + 456);

    (*(v12 + 8))(v11, v13);
  }

  v21 = *(v0 + 256);
  v22 = *(v0 + 120);
  v23 = objc_autoreleasePoolPush();
  sub_100E7AB5C(v21, v22);
  v24 = *(v0 + 352);
  v25 = *(v0 + 112);
  v26 = *(v0 + 120);
  v28 = *(v0 + 96);
  v27 = *(v0 + 104);

  type metadata accessor for DelegatedShareUseCase();
  objc_autoreleasePoolPop(v23);
  sub_10059E4D4();
  v29 = *(v25 + 8);
  *(v0 + 464) = v29;
  *(v0 + 472) = (v25 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v29(v26, v27);
  if ((*(v25 + 48))(v28, 1, v27) == 1)
  {
    sub_10000B3A8(*(v0 + 96), &unk_101696900, &unk_10138B1E0);
    if (qword_101694778 != -1)
    {
      swift_once();
    }

    v31 = *(v0 + 320);
    v30 = *(v0 + 328);
    v32 = *(v0 + 184);
    v33 = *(v0 + 136);
    v34 = *(v0 + 72);
    sub_1000076D4(v71, qword_10177AE28);
    v31(v32, v34, v33);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();
    v37 = os_log_type_enabled(v35, v36);
    v38 = *(v0 + 184);
    v40 = *(v0 + 136);
    v39 = *(v0 + 144);
    if (v37)
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v73[0] = v42;
      *v41 = 141558275;
      *(v41 + 4) = 1752392040;
      *(v41 + 12) = 2081;
      sub_1000194B0(&qword_101696930, &type metadata accessor for UUID);
      v43 = dispatch thunk of CustomStringConvertible.description.getter();
      v45 = v44;
      (*(v39 + 8))(v38, v40);
      v46 = sub_1000136BC(v43, v45, v73);

      *(v41 + 14) = v46;
      _os_log_impl(&_mh_execute_header, v35, v36, "Invalid expiration date while creating delegated share for beacon %{private,mask.hash}s", v41, 0x16u);
      sub_100007BAC(v42);
    }

    else
    {

      (*(v39 + 8))(v38, v40);
    }

    sub_1005C3340();
    v59 = swift_allocError();
    *v60 = 9;
    swift_willThrow();
    *(v0 + 528) = v59;
    if (qword_101694778 != -1)
    {
      swift_once();
    }

    *(v0 + 536) = sub_1000076D4(v71, qword_10177AE28);
    swift_errorRetain();
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      *v63 = 138543362;
      swift_errorRetain();
      v65 = _swift_stdlib_bridgeErrorToNSError();
      *(v63 + 4) = v65;
      *v64 = v65;
      _os_log_impl(&_mh_execute_header, v61, v62, "Failure on delegate share create, server share creation: %{public}@", v63, 0xCu);
      sub_10000B3A8(v64, &qword_10169BB30, &unk_10138B3C0);
    }

    v66 = swift_task_alloc();
    *(v0 + 544) = v66;
    *v66 = v0;
    v66[1] = sub_1005A2958;
    v67 = *(v0 + 216);
    v68 = *(v0 + 80);

    return sub_1005A51DC(v67);
  }

  else
  {
    v47 = *(v0 + 128);
    v48 = *(v0 + 104);
    v49 = *(v0 + 112);
    v50 = *(v0 + 88);
    v51 = *(v0 + 80);
    (*(v49 + 32))(v47, *(v0 + 96), v48);
    v72 = *(v51 + 136);
    v52 = *(v51 + 136);
    v53 = sub_1000035D0((v51 + 112), v52);
    *(v0 + 40) = v72;
    v54 = sub_1000280DC((v0 + 16));
    (*(*(v52 - 8) + 16))(v54, v53, v52);
    (*(v49 + 16))(v50, v47, v48);
    (*(v49 + 56))(v50, 0, 1, v48);
    v55 = swift_task_alloc();
    *(v0 + 480) = v55;
    *v55 = v0;
    v55[1] = sub_1005A0FE0;
    v56 = *(v0 + 256);
    v57 = *(v0 + 88);

    return sub_1012AC360(v56, v51 + 176, v0 + 16, v57);
  }
}

uint64_t sub_1005A0FE0()
{
  v2 = *v1;
  v3 = (*v1)[60];
  v7 = *v1;
  (*v1)[61] = v0;

  if (v0)
  {
    v4 = v2[10];
    sub_10000B3A8(v2[11], &unk_101696900, &unk_10138B1E0);
    v5 = sub_1005A2DA8;
  }

  else
  {
    v4 = v2[10];
    sub_10000B3A8(v2[11], &unk_101696900, &unk_10138B1E0);
    sub_100007BAC(v2 + 2);
    v5 = sub_1005A112C;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1005A112C()
{
  v1 = *(v0 + 472);
  v2 = *(v0 + 424);
  v3 = *(v0 + 256);
  v4 = *(v0 + 216);
  (*(v0 + 464))(*(v0 + 128), *(v0 + 104));
  sub_1005C32E0(v3, type metadata accessor for OwnerSharingCircle);

  sub_1005C32E0(v4, type metadata accessor for DelegatedShareUseCase.ShareCreationData);
  v26 = *(v0 + 424);
  v6 = *(v0 + 296);
  v5 = *(v0 + 304);
  v7 = *(v0 + 264);
  v8 = *(v0 + 272);
  v9 = *(v0 + 256);
  v10 = *(v0 + 240);
  v12 = *(v0 + 208);
  v11 = *(v0 + 216);
  v14 = *(v0 + 192);
  v13 = *(v0 + 200);
  v17 = *(v0 + 184);
  v18 = *(v0 + 176);
  v19 = *(v0 + 168);
  v20 = *(v0 + 160);
  v21 = *(v0 + 152);
  v22 = *(v0 + 128);
  v23 = *(v0 + 120);
  v24 = *(v0 + 96);
  v25 = *(v0 + 88);

  v15 = *(v0 + 8);

  return v15(v26);
}

uint64_t sub_1005A12E4()
{
  v31 = v0;
  if (qword_101694778 != -1)
  {
    swift_once();
  }

  v1 = v0[50];
  v3 = v0[40];
  v2 = v0[41];
  v4 = v0[21];
  v5 = v0[17];
  v6 = v0[9];
  v7 = type metadata accessor for Logger();
  v0[62] = sub_1000076D4(v7, qword_10177AE28);
  v3(v4, v6, v5);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v28 = v0[50];
    v10 = v0[21];
    v12 = v0[17];
    v11 = v0[18];
    v13 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30 = v29;
    *v13 = 141558531;
    *(v13 + 4) = 1752392040;
    *(v13 + 12) = 2081;
    sub_1000194B0(&qword_101696930, &type metadata accessor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v17 = *(v11 + 8);
    v17(v10, v12);
    v18 = sub_1000136BC(v14, v16, &v30);

    *(v13 + 14) = v18;
    *(v13 + 22) = 2114;
    swift_errorRetain();
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 24) = v19;
    *v27 = v19;
    _os_log_impl(&_mh_execute_header, v8, v9, "Deleting share for beacon %{private,mask.hash}s with integrity error %{public}@.", v13, 0x20u);
    sub_10000B3A8(v27, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v29);
  }

  else
  {
    v20 = v0[21];
    v21 = v0[17];
    v22 = v0[18];

    v17 = *(v22 + 8);
    v17(v20, v21);
  }

  v0[63] = v17;
  v23 = swift_task_alloc();
  v0[64] = v23;
  *v23 = v0;
  v23[1] = sub_1005A15FC;
  v24 = v0[34];
  v25 = v0[10];

  return sub_1005B56F8(v24, 0, 0, 3);
}

uint64_t sub_1005A15FC()
{
  v2 = *v1;
  v3 = *(*v1 + 512);
  v4 = *v1;
  *(*v1 + 520) = v0;

  v5 = *(v2 + 80);
  if (v0)
  {
    v6 = sub_1005A1BD8;
  }

  else
  {
    v6 = sub_1005A1728;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1005A1728()
{
  v54 = v0;
  v1 = *(v0 + 400);
  v2 = *(v0 + 272);

  sub_1005C32E0(v2, type metadata accessor for OwnerSharingCircle);
  v3 = *(v0 + 376) + 1;
  if (v3 == *(v0 + 360))
  {
    v4 = *(*(v0 + 384) + 16);

    if (v4)
    {
      if (qword_101694778 != -1)
      {
        swift_once();
      }

      v6 = *(v0 + 320);
      v5 = *(v0 + 328);
      v7 = *(v0 + 176);
      v8 = *(v0 + 136);
      v9 = *(v0 + 72);
      v10 = type metadata accessor for Logger();
      sub_1000076D4(v10, qword_10177AE28);
      v6(v7, v9, v8);
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.default.getter();
      v13 = os_log_type_enabled(v11, v12);
      v14 = *(v0 + 176);
      v15 = *(v0 + 136);
      v16 = *(v0 + 144);
      if (v13)
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v53 = v18;
        *v17 = 141558275;
        *(v17 + 4) = 1752392040;
        *(v17 + 12) = 2081;
        sub_1000194B0(&qword_101696930, &type metadata accessor for UUID);
        v19 = dispatch thunk of CustomStringConvertible.description.getter();
        v21 = v20;
        (*(v16 + 8))(v14, v15);
        v22 = sub_1000136BC(v19, v21, &v53);

        *(v17 + 14) = v22;
        _os_log_impl(&_mh_execute_header, v11, v12, "Existing circle found on delegated share create, use that for %{private,mask.hash}s.", v17, 0x16u);
        sub_100007BAC(v18);
      }

      else
      {

        (*(v16 + 8))(v14, v15);
      }

      v52 = *(v0 + 352);
      v33 = *(v0 + 296);
      v32 = *(v0 + 304);
      v34 = *(v0 + 264);
      v35 = *(v0 + 272);
      v36 = *(v0 + 256);
      v37 = *(v0 + 240);
      v39 = *(v0 + 208);
      v38 = *(v0 + 216);
      v41 = *(v0 + 192);
      v40 = *(v0 + 200);
      v43 = *(v0 + 184);
      v44 = *(v0 + 176);
      v45 = *(v0 + 168);
      v46 = *(v0 + 160);
      v47 = *(v0 + 152);
      v48 = *(v0 + 128);
      v49 = *(v0 + 120);
      v50 = *(v0 + 96);
      v51 = *(v0 + 88);

      v42 = *(v0 + 8);

      return v42(v52);
    }

    else
    {
      v28 = swift_task_alloc();
      *(v0 + 408) = v28;
      *v28 = v0;
      v28[1] = sub_10059F9A0;
      v29 = *(v0 + 208);
      v30 = *(v0 + 72);
      v31 = *(v0 + 80);

      return sub_1005A3130(v29, v30);
    }
  }

  else
  {
    *(v0 + 376) = v3;
    sub_1005C31F8(*(v0 + 352) + ((*(v0 + 568) + 32) & ~*(v0 + 568)) + *(v0 + 368) * v3, *(v0 + 272), type metadata accessor for OwnerSharingCircle);
    v23 = swift_task_alloc();
    *(v0 + 392) = v23;
    *v23 = v0;
    v23[1] = sub_10059F30C;
    v24 = *(v0 + 272);
    v25 = *(v0 + 240);
    v26 = *(v0 + 80);

    return sub_1005B2110(v25, v24);
  }
}

uint64_t sub_1005A1BD8()
{
  v75 = v0;
  v1 = *(v0 + 520);
  v2 = *(v0 + 496);
  v3 = *(v0 + 328);
  (*(v0 + 320))(*(v0 + 160), *(v0 + 72), *(v0 + 136));
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 520);
  v8 = *(v0 + 504);
  v9 = *(v0 + 400);
  v10 = *(v0 + 272);
  v11 = *(v0 + 160);
  v12 = *(v0 + 136);
  v13 = *(v0 + 144);
  if (v6)
  {
    v72 = *(v0 + 272);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v74 = v70;
    *v14 = 141558531;
    *(v14 + 4) = 1752392040;
    *(v14 + 12) = 2081;
    sub_1000194B0(&qword_101696930, &type metadata accessor for UUID);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    v8(v11, v12);
    v19 = sub_1000136BC(v16, v18, &v74);

    *(v14 + 14) = v19;
    *(v14 + 22) = 2114;
    swift_errorRetain();
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 24) = v20;
    *v15 = v20;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to delete share for beacon %{private,mask.hash}s with integrity error %{public}@.", v14, 0x20u);
    sub_10000B3A8(v15, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v70);

    v21 = v72;
  }

  else
  {

    v8(v11, v12);
    v21 = v10;
  }

  sub_1005C32E0(v21, type metadata accessor for OwnerSharingCircle);
  v22 = *(v0 + 376) + 1;
  if (v22 == *(v0 + 360))
  {
    v23 = *(*(v0 + 384) + 16);

    if (v23)
    {
      if (qword_101694778 != -1)
      {
        swift_once();
      }

      v25 = *(v0 + 320);
      v24 = *(v0 + 328);
      v26 = *(v0 + 176);
      v27 = *(v0 + 136);
      v28 = *(v0 + 72);
      v29 = type metadata accessor for Logger();
      sub_1000076D4(v29, qword_10177AE28);
      v25(v26, v28, v27);
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.default.getter();
      v32 = os_log_type_enabled(v30, v31);
      v33 = *(v0 + 176);
      v34 = *(v0 + 136);
      v35 = *(v0 + 144);
      if (v32)
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v74 = v37;
        *v36 = 141558275;
        *(v36 + 4) = 1752392040;
        *(v36 + 12) = 2081;
        sub_1000194B0(&qword_101696930, &type metadata accessor for UUID);
        v38 = dispatch thunk of CustomStringConvertible.description.getter();
        v40 = v39;
        (*(v35 + 8))(v33, v34);
        v41 = sub_1000136BC(v38, v40, &v74);

        *(v36 + 14) = v41;
        _os_log_impl(&_mh_execute_header, v30, v31, "Existing circle found on delegated share create, use that for %{private,mask.hash}s.", v36, 0x16u);
        sub_100007BAC(v37);
      }

      else
      {

        (*(v35 + 8))(v33, v34);
      }

      v73 = *(v0 + 352);
      v52 = *(v0 + 296);
      v51 = *(v0 + 304);
      v53 = *(v0 + 264);
      v54 = *(v0 + 272);
      v55 = *(v0 + 256);
      v56 = *(v0 + 240);
      v58 = *(v0 + 208);
      v57 = *(v0 + 216);
      v60 = *(v0 + 192);
      v59 = *(v0 + 200);
      v62 = *(v0 + 184);
      v63 = *(v0 + 176);
      v64 = *(v0 + 168);
      v65 = *(v0 + 160);
      v66 = *(v0 + 152);
      v67 = *(v0 + 128);
      v68 = *(v0 + 120);
      v69 = *(v0 + 96);
      v71 = *(v0 + 88);

      v61 = *(v0 + 8);

      return v61(v73);
    }

    else
    {
      v47 = swift_task_alloc();
      *(v0 + 408) = v47;
      *v47 = v0;
      v47[1] = sub_10059F9A0;
      v48 = *(v0 + 208);
      v49 = *(v0 + 72);
      v50 = *(v0 + 80);

      return sub_1005A3130(v48, v49);
    }
  }

  else
  {
    *(v0 + 376) = v22;
    sub_1005C31F8(*(v0 + 352) + ((*(v0 + 568) + 32) & ~*(v0 + 568)) + *(v0 + 368) * v22, *(v0 + 272), type metadata accessor for OwnerSharingCircle);
    v42 = swift_task_alloc();
    *(v0 + 392) = v42;
    *v42 = v0;
    v42[1] = sub_10059F30C;
    v43 = *(v0 + 272);
    v44 = *(v0 + 240);
    v45 = *(v0 + 80);

    return sub_1005B2110(v44, v43);
  }
}

uint64_t sub_1005A22C0()
{
  v49 = v0;
  if (qword_101694778 != -1)
  {
    swift_once();
  }

  v1 = v0[52];
  v3 = v0[40];
  v2 = v0[41];
  v4 = v0[19];
  v5 = v0[17];
  v6 = v0[9];
  v7 = type metadata accessor for Logger();
  sub_1000076D4(v7, qword_10177AE28);
  v3(v4, v6, v5);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v44 = v0[52];
    v11 = v0[18];
    v10 = v0[19];
    v12 = v0[17];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v48 = v46;
    *v13 = 141558531;
    *(v13 + 4) = 1752392040;
    *(v13 + 12) = 2081;
    sub_1000194B0(&qword_101696930, &type metadata accessor for UUID);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    (*(v11 + 8))(v10, v12);
    v18 = sub_1000136BC(v15, v17, &v48);

    *(v13 + 14) = v18;
    *(v13 + 22) = 2114;
    swift_errorRetain();
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 24) = v19;
    *v14 = v19;
    _os_log_impl(&_mh_execute_header, v8, v9, "Failure on delegated share create for %{private,mask.hash}s, data preparing: %{public}@.", v13, 0x20u);
    sub_10000B3A8(v14, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v46);
  }

  else
  {
    v21 = v0[18];
    v20 = v0[19];
    v22 = v0[17];

    (*(v21 + 8))(v20, v22);
  }

  v23 = v0[52];
  swift_willThrow();
  v47 = v0[52];
  v25 = v0[37];
  v24 = v0[38];
  v26 = v0[33];
  v27 = v0[34];
  v28 = v0[32];
  v29 = v0[30];
  v31 = v0[26];
  v30 = v0[27];
  v33 = v0[24];
  v32 = v0[25];
  v36 = v0[23];
  v37 = v0[22];
  v38 = v0[21];
  v39 = v0[20];
  v40 = v0[19];
  v41 = v0[16];
  v42 = v0[15];
  v43 = v0[12];
  v45 = v0[11];

  v34 = v0[1];

  return v34();
}

uint64_t sub_1005A2668()
{
  if (qword_101694778 != -1)
  {
    swift_once();
  }

  v1 = v0[55];
  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177AE28);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[55];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failure on share create, iCloud data update: %{public}@", v6, 0xCu);
    sub_10000B3A8(v7, &qword_10169BB30, &unk_10138B3C0);
  }

  v9 = v0[55];
  v10 = v0[32];
  v11 = v0[27];

  sub_1005C3340();
  swift_allocError();
  *v12 = 1;
  swift_willThrow();

  sub_1005C32E0(v10, type metadata accessor for OwnerSharingCircle);
  sub_1005C32E0(v11, type metadata accessor for DelegatedShareUseCase.ShareCreationData);
  v14 = v0[37];
  v13 = v0[38];
  v15 = v0[33];
  v16 = v0[34];
  v17 = v0[32];
  v18 = v0[30];
  v20 = v0[26];
  v19 = v0[27];
  v22 = v0[24];
  v21 = v0[25];
  v25 = v0[23];
  v26 = v0[22];
  v27 = v0[21];
  v28 = v0[20];
  v29 = v0[19];
  v30 = v0[16];
  v31 = v0[15];
  v32 = v0[12];
  v33 = v0[11];

  v23 = v0[1];

  return v23();
}

uint64_t sub_1005A2958()
{
  v2 = *(*v1 + 544);
  v3 = *v1;
  v3[69] = v0;

  if (v0)
  {
    v4 = v3[10];

    return _swift_task_switch(sub_1005A2F90, v4, 0);
  }

  else
  {
    v5 = swift_task_alloc();
    v3[70] = v5;
    *v5 = v3;
    v5[1] = sub_1005A2ACC;
    v6 = v3[10];
    v7 = v3[27];

    return sub_1005A7390(v7);
  }
}

uint64_t sub_1005A2ACC()
{
  v1 = *(*v0 + 560);
  v2 = *(*v0 + 80);
  v4 = *v0;

  return _swift_task_switch(sub_1005A2BDC, v2, 0);
}

uint64_t sub_1005A2BDC()
{
  v1 = v0[66];
  v2 = v0[32];
  v3 = v0[27];
  sub_1005C3340();
  swift_allocError();
  *v4 = 2;
  swift_willThrow();

  sub_1005C32E0(v2, type metadata accessor for OwnerSharingCircle);
  sub_1005C32E0(v3, type metadata accessor for DelegatedShareUseCase.ShareCreationData);
  v6 = v0[37];
  v5 = v0[38];
  v7 = v0[33];
  v8 = v0[34];
  v9 = v0[32];
  v10 = v0[30];
  v12 = v0[26];
  v11 = v0[27];
  v14 = v0[24];
  v13 = v0[25];
  v17 = v0[23];
  v18 = v0[22];
  v19 = v0[21];
  v20 = v0[20];
  v21 = v0[19];
  v22 = v0[16];
  v23 = v0[15];
  v24 = v0[12];
  v25 = v0[11];

  v15 = v0[1];

  return v15();
}

uint64_t sub_1005A2DA8()
{
  v1 = *(v0 + 472);
  (*(v0 + 464))(*(v0 + 128), *(v0 + 104));
  sub_100007BAC((v0 + 16));
  *(v0 + 528) = *(v0 + 488);
  if (qword_101694778 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  *(v0 + 536) = sub_1000076D4(v2, qword_10177AE28);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failure on delegate share create, server share creation: %{public}@", v5, 0xCu);
    sub_10000B3A8(v6, &qword_10169BB30, &unk_10138B3C0);
  }

  v8 = swift_task_alloc();
  *(v0 + 544) = v8;
  *v8 = v0;
  v8[1] = sub_1005A2958;
  v9 = *(v0 + 216);
  v10 = *(v0 + 80);

  return sub_1005A51DC(v9);
}

uint64_t sub_1005A2F90()
{
  v1 = v0[69];
  v2 = v0[67];
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[69];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failure on delegate share create,\niCloud data rollback on share creation failure: %{public}@", v7, 0xCu);
    sub_10000B3A8(v8, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v10 = swift_task_alloc();
  v0[70] = v10;
  *v10 = v0;
  v10[1] = sub_1005A2ACC;
  v11 = v0[27];
  v12 = v0[10];

  return sub_1005A7390(v11);
}

uint64_t sub_1005A3130(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = type metadata accessor for OwnerSharingCircle();
  v3[7] = v4;
  v5 = *(v4 - 8);
  v3[8] = v5;
  v6 = *(v5 + 64) + 15;
  v3[9] = swift_task_alloc();
  v7 = type metadata accessor for OwnerPeerTrust();
  v3[10] = v7;
  v8 = *(v7 - 8);
  v3[11] = v8;
  v9 = *(v8 + 64) + 15;
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v10 = sub_1000BC4D4(&unk_1016B29E0, &unk_1013B70E0);
  v3[14] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v3[15] = swift_task_alloc();
  v12 = type metadata accessor for BeaconNamingRecord();
  v3[16] = v12;
  v13 = *(v12 - 8);
  v3[17] = v13;
  v14 = *(v13 + 64) + 15;
  v3[18] = swift_task_alloc();
  v15 = type metadata accessor for UUID();
  v3[19] = v15;
  v16 = *(v15 - 8);
  v3[20] = v16;
  v3[21] = *(v16 + 64);
  v3[22] = swift_task_alloc();
  v17 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v3[23] = v17;
  v18 = *(*(v17 - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v19 = type metadata accessor for OwnedBeaconRecord();
  v3[25] = v19;
  v20 = *(v19 - 8);
  v3[26] = v20;
  v21 = *(v20 + 64) + 15;
  v3[27] = swift_task_alloc();

  return _swift_task_switch(sub_1005A33F0, v2, 0);
}

uint64_t sub_1005A33F0()
{
  v1 = *(v0[6] + 168);
  v0[28] = v1;
  v2 = swift_task_alloc();
  v0[29] = v2;
  *v2 = v0;
  v2[1] = sub_1005A34A4;

  return sub_1012A9B90(3, v1);
}

uint64_t sub_1005A34A4(__int16 a1)
{
  v2 = *(*v1 + 232);
  v3 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 308) = a1;

  return _swift_task_switch(sub_1005A35BC, v3, 0);
}

uint64_t sub_1005A35BC()
{
  v1 = *(v0 + 308);
  if (v1 & 0x100) != 0 || (v1)
  {
    type metadata accessor for SPBeaconSharingError(0);
    *(v0 + 24) = 18;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_1000194B0(&qword_101696340, type metadata accessor for SPBeaconSharingError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v3 = *(v0 + 16);
    swift_willThrow();
    v4 = *(v0 + 216);
    v5 = *(v0 + 192);
    v6 = *(v0 + 176);
    v7 = *(v0 + 144);
    v8 = *(v0 + 120);
    v10 = *(v0 + 96);
    v9 = *(v0 + 104);
    v11 = *(v0 + 72);

    v12 = *(v0 + 8);

    return v12();
  }

  else
  {
    v2 = *(v0 + 224);

    return _swift_task_switch(sub_1005A3760, v2, 0);
  }
}

uint64_t sub_1005A3760()
{
  v1 = *(v0 + 224);
  v3 = *(v0 + 168);
  v2 = *(v0 + 176);
  v4 = *(v0 + 152);
  v5 = *(v0 + 160);
  v6 = *(v0 + 40);
  v7 = *(v5 + 16);
  *(v0 + 240) = v7;
  *(v0 + 248) = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v2, v6, v4);
  v8 = *(v5 + 80);
  *(v0 + 304) = v8;
  v9 = (v8 + 24) & ~v8;
  v10 = swift_allocObject();
  *(v0 + 256) = v10;
  *(v10 + 16) = v1;
  v11 = *(v5 + 32);
  *(v0 + 264) = v11;
  *(v0 + 272) = (v5 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v11(v10 + v9, v2, v4);
  v12 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v13 = swift_task_alloc();
  *(v0 + 280) = v13;
  *v13 = v0;
  v13[1] = sub_1005A38E0;
  v15 = *(v0 + 184);
  v14 = *(v0 + 192);

  return unsafeBlocking<A>(context:_:)(v14, 0xD000000000000010, 0x800000010134A8C0, sub_1005C3674, v10, v15);
}

uint64_t sub_1005A38E0()
{
  v1 = *(*v0 + 280);
  v2 = *(*v0 + 256);
  v3 = *(*v0 + 48);
  v5 = *v0;

  return _swift_task_switch(sub_1005A3A0C, v3, 0);
}

uint64_t sub_1005A3A0C()
{
  v1 = v0[24];
  if ((*(v0[26] + 48))(v1, 1, v0[25]) == 1)
  {
    sub_10000B3A8(v1, &unk_1016A9A20, &qword_10138B280);
    sub_1005C3340();
    swift_allocError();
    *v2 = 0;
    swift_willThrow();
    v3 = v0[27];
    v4 = v0[24];
    v5 = v0[22];
    v6 = v0[18];
    v7 = v0[15];
    v9 = v0[12];
    v8 = v0[13];
    v10 = v0[9];

    v11 = v0[1];

    return v11();
  }

  else
  {
    v13 = v0[28];
    sub_1005C3260(v1, v0[27], type metadata accessor for OwnedBeaconRecord);

    return _swift_task_switch(sub_1005A3BB0, v13, 0);
  }
}

uint64_t sub_1005A3BB0()
{
  v2 = *(v0 + 264);
  v1 = *(v0 + 272);
  v3 = *(v0 + 248);
  v4 = *(v0 + 224);
  v5 = *(v0 + 176);
  v6 = *(v0 + 152);
  v7 = (*(v0 + 304) + 24) & ~*(v0 + 304);
  (*(v0 + 240))(v5, *(v0 + 40), v6);
  v8 = swift_allocObject();
  *(v0 + 288) = v8;
  *(v8 + 16) = v4;
  v2(v8 + v7, v5, v6);
  v9 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v10 = swift_task_alloc();
  *(v0 + 296) = v10;
  *v10 = v0;
  v10[1] = sub_1005A3CFC;
  v12 = *(v0 + 112);
  v11 = *(v0 + 120);

  return unsafeBlocking<A>(context:_:)(v11, 0xD000000000000010, 0x800000010134A8C0, sub_1005C368C, v8, v12);
}

uint64_t sub_1005A3CFC()
{
  v1 = *(*v0 + 296);
  v2 = *(*v0 + 288);
  v3 = *(*v0 + 48);
  v5 = *v0;

  return _swift_task_switch(sub_1005A3E28, v3, 0);
}

uint64_t sub_1005A3E28()
{
  v51 = v0;
  v1 = v0[15];
  if ((*(v0[17] + 48))(v1, 1, v0[16]) == 1)
  {
    sub_1005C32E0(v0[27], type metadata accessor for OwnedBeaconRecord);
    sub_10000B3A8(v1, &unk_1016B29E0, &unk_1013B70E0);
    sub_1005C3340();
    swift_allocError();
    *v2 = 0;
    swift_willThrow();
    v27 = v0[27];
    v28 = v0[24];
    v29 = v0[22];
    v30 = v0[18];
    v31 = v0[15];
    v33 = v0[12];
    v32 = v0[13];
    v34 = v0[9];

    v35 = v0[1];
  }

  else
  {
    v4 = v0[12];
    v3 = v0[13];
    v5 = v0[10];
    sub_1005C3260(v1, v0[18], type metadata accessor for BeaconNamingRecord);
    v47 = v5[5];
    UUID.init()();
    v6 = v5[7];
    type metadata accessor for PeerCommunicationIdentifier();
    swift_storeEnumTagMultiPayload();
    sub_1005CAD68(&v50);
    *v3 = xmmword_10138C660;
    *(v3 + v5[6]) = 1;
    v7 = (v3 + v5[8]);
    *v7 = 6448503;
    v7[1] = 0xE300000000000000;
    *(v3 + v5[9]) = v50;
    *(v3 + v5[10]) = 1;
    sub_1005C31F8(v3, v4, type metadata accessor for OwnerPeerTrust);
    v8 = sub_100A5C1D0(0, 1, 1, _swiftEmptyArrayStorage);
    v10 = v8[2];
    v9 = v8[3];
    if (v10 >= v9 >> 1)
    {
      v8 = sub_100A5C1D0(v9 > 1, v10 + 1, 1, v8);
    }

    v43 = v0[33];
    v45 = v0[34];
    v41 = v0[30];
    v42 = v0[31];
    v11 = v0[22];
    v12 = v0[19];
    v14 = v0[11];
    v13 = v0[12];
    v16 = v0[7];
    v15 = v0[8];
    v17 = v0[5];
    v8[2] = v10 + 1;
    sub_1005C3260(v13, v8 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v10, type metadata accessor for OwnerPeerTrust);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v50 = _swiftEmptyDictionarySingleton;
    sub_100FFB6DC(1, v3 + v47, isUniquelyReferenced_nonNull_native);
    v19 = v50;
    sub_1000BC4D4(&qword_101698E50, &unk_101390D40);
    v20 = *(v15 + 72);
    v21 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_101385D80;
    v23 = (v22 + v21);
    UUID.init()();
    v41(&v23[v16[6]], v17, v12);
    *v23 = xmmword_10138C660;
    result = v43(&v23[v16[5]], v11, v12);
    v23[v16[7]] = 3;
    *&v23[v16[8]] = v19;
    v23[v16[9]] = 1;
    if (!*(v22 + 16))
    {
      __break(1u);
      return result;
    }

    sub_1005C31F8(v23, v0[9], type metadata accessor for OwnerSharingCircle);
    v25 = sub_1006544D8();
    v26 = v0[27];
    v36 = v25;
    v44 = v0[24];
    v46 = v0[22];
    v37 = v0[18];
    v38 = v0[13];
    v48 = v0[15];
    v49 = v0[12];
    v39 = v0[4];
    sub_1005C32E0(v0[9], type metadata accessor for OwnerSharingCircle);
    sub_1005C32E0(v38, type metadata accessor for OwnerPeerTrust);
    v40 = type metadata accessor for DelegatedShareUseCase.ShareCreationData(0);
    sub_1005C3260(v26, v39 + *(v40 + 28), type metadata accessor for OwnedBeaconRecord);
    sub_1005C3260(v37, v39 + *(v40 + 32), type metadata accessor for BeaconNamingRecord);
    *v39 = v36;
    v39[1] = v22;
    v39[2] = v8;

    v35 = v0[1];
  }

  return v35();
}

uint64_t sub_1005A43A0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for OwnerPeerTrust();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v6 = type metadata accessor for OwnerSharingCircle();
  v2[8] = v6;
  v7 = *(v6 - 8);
  v2[9] = v7;
  v8 = *(v7 + 64) + 15;
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v9 = *(*(sub_1000BC4D4(&qword_1016975C8, &qword_10138C1F0) - 8) + 64) + 15;
  v2[12] = swift_task_alloc();

  return _swift_task_switch(sub_1005A450C, v1, 0);
}

uint64_t sub_1005A450C()
{
  v1 = *(*(v0 + 24) + 168);
  *(v0 + 104) = v1;
  return _swift_task_switch(sub_1005A4530, v1, 0);
}

uint64_t sub_1005A4558()
{
  v1 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v2 = swift_task_alloc();
  *(v0 + 120) = v2;
  *v2 = v0;
  v2[1] = sub_1005A4634;
  v3 = *(v0 + 112);

  return withCheckedContinuation<A>(isolation:function:_:)(v2, 0, 0, 0x696176416E656877, 0xEF2928656C62616CLL, sub_100111E60, v3, &type metadata for () + 8);
}

uint64_t sub_1005A4634()
{
  v1 = *(*v0 + 120);
  v3 = *v0;

  return _swift_task_switch(sub_1005A4730, 0, 0);
}

uint64_t sub_1005A474C()
{
  v1 = v0[12];
  v2 = v0[2];
  *(swift_task_alloc() + 16) = v2;
  sub_100EC0C48(sub_1005C3658, v1);

  v3 = v0[13];

  return _swift_task_switch(sub_1005A4870, v3, 0);
}

uint64_t sub_1005A4898()
{
  v1 = v0[16];
  v2 = v0[12];
  v3 = swift_task_alloc();
  v0[17] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v5 = swift_task_alloc();
  v0[18] = v5;
  *v5 = v0;
  v5[1] = sub_1005A4990;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v5, 0, 0, 0xD000000000000011, 0x800000010134B790, sub_100111F54, v3, &type metadata for () + 8);
}

uint64_t sub_1005A4990()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v7 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v4 = sub_1005A50BC;
  }

  else
  {
    v5 = *(v2 + 136);

    v4 = sub_1005A4AAC;
  }

  return _swift_task_switch(v4, 0, 0);
}

void sub_1005A4AC8()
{
  v51 = v0;
  v1 = v0[2];
  v2 = *(v1 + 8);
  v3 = *(v2 + 16);
  p_weak_ivar_lyt = &BeaconKeyManager.weak_ivar_lyt;
  if (v3)
  {
    v5 = 0;
    v48 = v0[9];
    v44 = v0[8];
    v46 = *(v1 + 8);
    while (v5 < *(v2 + 16))
    {
      sub_1005C31F8(v2 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v5, v0[11], type metadata accessor for OwnerSharingCircle);
      if (p_weak_ivar_lyt[239] != -1)
      {
        swift_once();
      }

      v7 = v0[10];
      v6 = v0[11];
      v8 = type metadata accessor for Logger();
      sub_1000076D4(v8, qword_10177AE28);
      sub_1005C31F8(v6, v7, type metadata accessor for OwnerSharingCircle);
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.default.getter();
      v11 = os_log_type_enabled(v9, v10);
      v12 = v0[10];
      if (v11)
      {
        v13 = v3;
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v50 = v15;
        *v14 = 141558275;
        *(v14 + 4) = 1752392040;
        *(v14 + 12) = 2081;
        v16 = *(v44 + 20);
        type metadata accessor for UUID();
        sub_1000194B0(&qword_101696930, &type metadata accessor for UUID);
        v17 = dispatch thunk of CustomStringConvertible.description.getter();
        v19 = v18;
        sub_1005C32E0(v12, type metadata accessor for OwnerSharingCircle);
        v20 = sub_1000136BC(v17, v19, &v50);
        p_weak_ivar_lyt = (&BeaconKeyManager + 56);

        *(v14 + 14) = v20;
        _os_log_impl(&_mh_execute_header, v9, v10, "Data update on share creation. Create %{private,mask.hash}s", v14, 0x16u);
        sub_100007BAC(v15);

        v3 = v13;
        v2 = v46;
      }

      else
      {

        sub_1005C32E0(v12, type metadata accessor for OwnerSharingCircle);
      }

      ++v5;
      sub_1005C32E0(v0[11], type metadata accessor for OwnerSharingCircle);
      if (v3 == v5)
      {
        v1 = v0[2];
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_24;
  }

LABEL_11:
  v21 = *(v1 + 16);
  v22 = *(v21 + 16);
  if (v22)
  {
    v23 = 0;
    v49 = v0[5];
    v45 = v0[4];
    v47 = *(v1 + 16);
    while (v23 < *(v21 + 16))
    {
      sub_1005C31F8(v21 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v23, v0[7], type metadata accessor for OwnerPeerTrust);
      if (p_weak_ivar_lyt[239] != -1)
      {
        swift_once();
      }

      v25 = v0[6];
      v24 = v0[7];
      v26 = type metadata accessor for Logger();
      sub_1000076D4(v26, qword_10177AE28);
      sub_1005C31F8(v24, v25, type metadata accessor for OwnerPeerTrust);
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.default.getter();
      v29 = os_log_type_enabled(v27, v28);
      v30 = v0[6];
      if (v29)
      {
        v31 = v22;
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v50 = v33;
        *v32 = 141558275;
        *(v32 + 4) = 1752392040;
        *(v32 + 12) = 2081;
        v34 = *(v45 + 20);
        type metadata accessor for UUID();
        sub_1000194B0(&qword_101696930, &type metadata accessor for UUID);
        v35 = dispatch thunk of CustomStringConvertible.description.getter();
        v37 = v36;
        sub_1005C32E0(v30, type metadata accessor for OwnerPeerTrust);
        v38 = sub_1000136BC(v35, v37, &v50);
        p_weak_ivar_lyt = (&BeaconKeyManager + 56);

        *(v32 + 14) = v38;
        _os_log_impl(&_mh_execute_header, v27, v28, "Data update on peer trust creation. Create %{private,mask.hash}s", v32, 0x16u);
        sub_100007BAC(v33);

        v22 = v31;
        v21 = v47;
      }

      else
      {

        sub_1005C32E0(v30, type metadata accessor for OwnerPeerTrust);
      }

      ++v23;
      sub_1005C32E0(v0[7], type metadata accessor for OwnerPeerTrust);
      if (v22 == v23)
      {
        goto LABEL_20;
      }
    }

LABEL_24:
    __break(1u);
    return;
  }

LABEL_20:
  v39 = v0[11];
  v40 = v0[10];
  v42 = v0[6];
  v41 = v0[7];
  sub_10000B3A8(v0[12], &qword_1016975C8, &qword_10138C1F0);

  v43 = v0[1];

  v43();
}

uint64_t sub_1005A50BC()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 24);

  return _swift_task_switch(sub_1005A5128, v2, 0);
}

uint64_t sub_1005A5128()
{
  sub_10000B3A8(v0[12], &qword_1016975C8, &qword_10138C1F0);
  v1 = v0[19];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[10];
  v6 = v0[6];
  v5 = v0[7];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1005A51DC(uint64_t a1)
{
  v2[16] = a1;
  v2[17] = v1;
  v3 = *(*(sub_1000BC4D4(&qword_1016975C8, &qword_10138C1F0) - 8) + 64) + 15;
  v2[18] = swift_task_alloc();
  v4 = type metadata accessor for OwnerSharingCircle();
  v2[19] = v4;
  v5 = *(v4 - 8);
  v2[20] = v5;
  v6 = *(v5 + 64) + 15;
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v7 = type metadata accessor for OwnerPeerTrust();
  v2[24] = v7;
  v8 = *(v7 - 8);
  v2[25] = v8;
  v9 = *(v8 + 64) + 15;
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v10 = type metadata accessor for UUID();
  v2[29] = v10;
  v11 = *(v10 - 8);
  v2[30] = v11;
  v2[31] = *(v11 + 64);
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();

  return _swift_task_switch(sub_1005A53DC, v1, 0);
}

uint64_t sub_1005A53DC()
{
  v1 = *(v0[16] + 16);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[30];
    v4 = v0[25];
    v17 = v0[24];
    sub_101123D4C(0, v2, 0);
    v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v16 = *(v4 + 72);
    do
    {
      v6 = v0[34];
      v8 = v0[28];
      v7 = v0[29];
      sub_1005C31F8(v5, v8, type metadata accessor for OwnerPeerTrust);
      (*(v3 + 16))(v6, v8 + *(v17 + 20), v7);
      sub_1005C32E0(v8, type metadata accessor for OwnerPeerTrust);
      v10 = _swiftEmptyArrayStorage[2];
      v9 = _swiftEmptyArrayStorage[3];
      if (v10 >= v9 >> 1)
      {
        sub_101123D4C(v9 > 1, v10 + 1, 1);
      }

      v11 = v0[34];
      v12 = v0[29];
      _swiftEmptyArrayStorage[2] = v10 + 1;
      (*(v3 + 32))(_swiftEmptyArrayStorage + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v10, v11, v12);
      v5 += v16;
      --v2;
    }

    while (v2);
  }

  v13 = v0[17];
  v0[35] = sub_10000954C(_swiftEmptyArrayStorage);

  v14 = *(v13 + 168);
  v0[36] = v14;

  return _swift_task_switch(sub_1005A55B8, v14, 0);
}

uint64_t sub_1005A55B8()
{
  v1 = *(v0 + 288);
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 296) = v3;
  v4 = sub_1000BC4D4(&qword_101697710, &unk_10138C3D0);
  *v3 = v0;
  v3[1] = sub_1005A56A4;
  v5 = *(v0 + 288);

  return unsafeBlocking<A>(context:_:)(v0 + 88, 0xD000000000000010, 0x800000010134A8C0, sub_100129E2C, v5, v4);
}

uint64_t sub_1005A56A4()
{
  v1 = *(*v0 + 296);
  v2 = *(*v0 + 288);
  v4 = *v0;

  return _swift_task_switch(sub_1005A57BC, v2, 0);
}

uint64_t sub_1005A57BC()
{
  v1 = v0[17];
  v0[38] = v0[11];
  return _swift_task_switch(sub_1005A57E0, v1, 0);
}

uint64_t sub_1005A57E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[38];
  v46 = *(v4 + 16);
  if (v46)
  {
    v5 = 0;
    v44 = v3[25];
    v43 = v3[24];
    v52 = v3[35];
    v50 = v52 + 56;
    v41 = v3[30];
    v42 = _swiftEmptyArrayStorage;
    v45 = v3[38];
    while (v5 < *(v4 + 16))
    {
      v48 = (*(v44 + 80) + 32) & ~*(v44 + 80);
      v49 = v5;
      v47 = *(v44 + 72);
      sub_1005C31F8(v3[38] + v48 + v47 * v5, v3[27], type metadata accessor for OwnerPeerTrust);
      if (!*(v52 + 16))
      {
        goto LABEL_3;
      }

      v6 = v3[29];
      v7 = v3[27];
      v8 = *(v43 + 20);
      v9 = *(v52 + 40);
      sub_1000194B0(&qword_1016967B0, &type metadata accessor for UUID);
      v10 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v11 = -1 << *(v52 + 32);
      v12 = v10 & ~v11;
      if ((*(v50 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
      {
        v13 = ~v11;
        v14 = *(v41 + 72);
        v15 = *(v41 + 16);
        while (1)
        {
          v16 = v3[33];
          v17 = v3[29];
          v15(v16, *(v52 + 48) + v12 * v14, v17);
          sub_1000194B0(&qword_1016984A0, &type metadata accessor for UUID);
          v18 = dispatch thunk of static Equatable.== infix(_:_:)();
          (*(v41 + 8))(v16, v17);
          if (v18)
          {
            break;
          }

          v12 = (v12 + 1) & v13;
          if (((*(v50 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
          {
            goto LABEL_3;
          }
        }

        sub_1005C3260(v3[27], v3[26], type metadata accessor for OwnerPeerTrust);
        v19 = v42;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1011242A4(0, v42[2] + 1, 1);
          v19 = v42;
        }

        v21 = v19[2];
        v20 = v19[3];
        if (v21 >= v20 >> 1)
        {
          sub_1011242A4(v20 > 1, v21 + 1, 1);
          v19 = v42;
        }

        v22 = v3[26];
        v19[2] = v21 + 1;
        v42 = v19;
        a1 = sub_1005C3260(v22, v19 + v48 + v21 * v47, type metadata accessor for OwnerPeerTrust);
      }

      else
      {
LABEL_3:
        a1 = sub_1005C32E0(v3[27], type metadata accessor for OwnerPeerTrust);
      }

      v5 = v49 + 1;
      v4 = v45;
      if (v49 + 1 == v46)
      {
        v23 = v3[38];
        v24 = v42;
        goto LABEL_19;
      }
    }

    __break(1u);
  }

  else
  {
    v24 = _swiftEmptyArrayStorage;
LABEL_19:
    v3[39] = v24;
    v25 = v3[35];
    v26 = v3[16];

    v27 = *(v26 + 8);
    v28 = *(v27 + 16);
    if (v28)
    {
      v29 = v3[30];
      v30 = v3[20];
      v53 = v3[19];
      sub_101123D4C(0, v28, 0);
      v31 = v27 + ((*(v30 + 80) + 32) & ~*(v30 + 80));
      v51 = *(v30 + 72);
      do
      {
        v32 = v3[32];
        v33 = v3[29];
        v34 = v3[23];
        sub_1005C31F8(v31, v34, type metadata accessor for OwnerSharingCircle);
        (*(v29 + 16))(v32, v34 + *(v53 + 20), v33);
        sub_1005C32E0(v34, type metadata accessor for OwnerSharingCircle);
        v36 = _swiftEmptyArrayStorage[2];
        v35 = _swiftEmptyArrayStorage[3];
        if (v36 >= v35 >> 1)
        {
          sub_101123D4C(v35 > 1, v36 + 1, 1);
        }

        v37 = v3[32];
        v38 = v3[29];
        _swiftEmptyArrayStorage[2] = v36 + 1;
        (*(v29 + 32))(_swiftEmptyArrayStorage + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v36, v37, v38);
        v31 += v51;
        --v28;
      }

      while (v28);
    }

    v39 = v3[36];
    v3[40] = sub_10000954C(_swiftEmptyArrayStorage);

    v3[12] = _swiftEmptyArrayStorage;
    v3[13] = _swiftEmptyArrayStorage;
    a1 = sub_1005A5CE4;
    a2 = v39;
    a3 = 0;
  }

  return _swift_task_switch(a1, a2, a3);
}

uint64_t sub_1005A5CE4()
{
  v1 = *(v0 + 288);
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 328) = v3;
  v4 = sub_1000BC4D4(&unk_101698BD0, &unk_10138C210);
  *v3 = v0;
  v3[1] = sub_1005A5DD0;
  v5 = *(v0 + 288);

  return unsafeBlocking<A>(context:_:)(v0 + 112, 0xD000000000000010, 0x800000010134A8C0, sub_100111B10, v5, v4);
}

uint64_t sub_1005A5DD0()
{
  v1 = *(*v0 + 328);
  v2 = *(*v0 + 288);
  v4 = *v0;

  return _swift_task_switch(sub_1005A5EE8, v2, 0);
}

uint64_t sub_1005A5EE8()
{
  v1 = v0[17];
  v0[42] = v0[14];
  return _swift_task_switch(sub_1005A5F0C, v1, 0);
}

uint64_t sub_1005A5F0C()
{
  v1 = *(v0 + 336);
  v2 = *(v1 + 16);
  *(v0 + 344) = v2;
  if (!v2)
  {
LABEL_18:
    v33 = *(v0 + 320);

    *(v0 + 408) = _swiftEmptyArrayStorage;
    v34 = *(v0 + 312);
    type metadata accessor for ChangeSetAdaptor();
    v35 = swift_allocObject();
    *(v35 + 16) = _swiftEmptyDictionarySingleton;
    *(v35 + 24) = _swiftEmptyDictionarySingleton;
    v36 = (v35 + 24);

    sub_1005C2DF4(v37, &off_101658FC0, v34, (v0 + 96), (v0 + 104));

    swift_beginAccess();
    if (!*(*(v35 + 16) + 16))
    {
      swift_beginAccess();
      v38 = *v36;
      if ((*v36 & 0xC000000000000001) != 0)
      {
        if (v38 < 0)
        {
          v39 = *v36;
        }

        v40 = *v36;

        v41 = __CocoaDictionary.count.getter();

        if (v41)
        {
          goto LABEL_23;
        }

LABEL_29:
        v53 = *(v0 + 144);

        v54 = type metadata accessor for CloudKitChangeSet(0);
        (*(*(v54 - 8) + 56))(v53, 1, 1, v54);
        goto LABEL_24;
      }

      if (!*(v38 + 16))
      {
        goto LABEL_29;
      }
    }

LABEL_23:
    v42 = *(v0 + 264);
    v43 = *(v0 + 232);
    v44 = *(v0 + 240);
    v45 = *(v0 + 144);
    UUID.init()();
    swift_beginAccess();
    v46 = *(v35 + 24);

    v48 = sub_1003A8B54(v47);

    v49 = *(v35 + 16);

    (*(v44 + 32))(v45, v42, v43);
    v50 = type metadata accessor for CloudKitChangeSet(0);
    *(v45 + *(v50 + 20)) = v48;
    *(v45 + *(v50 + 24)) = v49;
    (*(*(v50 - 8) + 56))(v45, 0, 1, v50);
LABEL_24:
    v51 = *(v0 + 312);
    v52 = *(v0 + 288);

    v30 = sub_1005A6E94;
    v31 = v52;
    goto LABEL_25;
  }

  *(v0 + 448) = *(*(v0 + 160) + 80);
  *(v0 + 352) = 0;
  if (*(v1 + 16))
  {
    v3 = 0;
    while (1)
    {
      v4 = *(v0 + 320);
      v56 = *(*(v0 + 160) + 72);
      sub_1005C31F8(v1 + ((*(v0 + 448) + 32) & ~*(v0 + 448)) + v56 * v3, *(v0 + 176), type metadata accessor for OwnerSharingCircle);
      if (*(v4 + 16))
      {
        v5 = *(v0 + 320);
        v6 = *(v0 + 232);
        v7 = *(v0 + 176);
        *(v0 + 452) = *(*(v0 + 152) + 20);
        v8 = *(v5 + 40);
        sub_1000194B0(&qword_1016967B0, &type metadata accessor for UUID);
        v9 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v10 = -1 << *(v5 + 32);
        v11 = v9 & ~v10;
        if ((*(v5 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v11))
        {
          break;
        }
      }

LABEL_9:
      v22 = *(v0 + 344);
      v23 = *(v0 + 352) + 1;
      sub_1005C32E0(*(v0 + 176), type metadata accessor for OwnerSharingCircle);
      if (v23 == v22)
      {
        v32 = *(v0 + 336);
        goto LABEL_18;
      }

      v3 = *(v0 + 352) + 1;
      *(v0 + 352) = v3;
      v1 = *(v0 + 336);
      if (v3 >= *(v1 + 16))
      {
        goto LABEL_11;
      }
    }

    v12 = ~v10;
    v13 = *(v0 + 240);
    v14 = *(v13 + 72);
    v15 = *(v13 + 16);
    *(v0 + 360) = v15;
    v16 = *(v0 + 320);
    while (1)
    {
      v17 = *(v0 + 264);
      v18 = *(v0 + 232);
      v19 = *(v0 + 240);
      v20 = *(v16 + 48) + v11 * v14;
      *(v0 + 368) = (v19 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v15(v17, v20, v18);
      sub_1000194B0(&qword_1016984A0, &type metadata accessor for UUID);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v19 + 8))(v17, v18);
      if (v21)
      {
        break;
      }

      v16 = *(v0 + 320);
      v11 = (v11 + 1) & v12;
      if (((*(v16 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_11:
    __break(1u);
  }

  sub_1005C31F8(*(v0 + 176), *(v0 + 168), type metadata accessor for OwnerSharingCircle);
  v24 = _swiftEmptyArrayStorage;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v24 = sub_100A5BC94(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
  }

  v26 = v24[2];
  v25 = v24[3];
  if (v26 >= v25 >> 1)
  {
    v24 = sub_100A5BC94(v25 > 1, v26 + 1, 1, v24);
  }

  *(v0 + 376) = v24;
  v27 = *(v0 + 288);
  v28 = *(v0 + 168);
  v29 = (*(v0 + 448) + 32) & ~*(v0 + 448);
  v24[2] = v26 + 1;
  sub_1005C3260(v28, v24 + v29 + v26 * v56, type metadata accessor for OwnerSharingCircle);
  *(v0 + 96) = v24;
  v30 = sub_1005A657C;
  v31 = v27;
LABEL_25:

  return _swift_task_switch(v30, v31, 0);
}

uint64_t sub_1005A657C()
{
  v1 = *(v0 + 368);
  v2 = *(v0 + 288);
  v3 = *(v0 + 264);
  v5 = *(v0 + 240);
  v4 = *(v0 + 248);
  v6 = *(v0 + 232);
  (*(v0 + 360))(v3, *(v0 + 176) + *(v0 + 452), v6);
  v7 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v0 + 384) = v8;
  *(v8 + 16) = v2;
  (*(v5 + 32))(v8 + v7, v3, v6);
  v9 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v10 = swift_task_alloc();
  *(v0 + 392) = v10;
  v11 = sub_1000BC4D4(&qword_1016975F8, &qword_10138C230);
  *v10 = v0;
  v10[1] = sub_1005A66EC;

  return unsafeBlocking<A>(context:_:)(v0 + 120, 0xD000000000000010, 0x800000010134A8C0, sub_1005C35B8, v8, v11);
}

uint64_t sub_1005A66EC()
{
  v1 = *(*v0 + 392);
  v2 = *(*v0 + 384);
  v3 = *(*v0 + 288);
  v5 = *v0;

  return _swift_task_switch(sub_1005A6818, v3, 0);
}

uint64_t sub_1005A6818()
{
  v1 = v0[17];
  v0[50] = v0[15];
  return _swift_task_switch(sub_1005A683C, v1, 0);
}

uint64_t sub_1005A683C()
{
  sub_1003980F8(*(v0 + 400));
  v56 = *(v0 + 376);
  while (1)
  {
LABEL_2:
    v1 = *(v0 + 344);
    v2 = *(v0 + 352) + 1;
    sub_1005C32E0(*(v0 + 176), type metadata accessor for OwnerSharingCircle);
    if (v2 == v1)
    {
      v23 = *(v0 + 336);
      v24 = *(v0 + 320);

      *(v0 + 408) = v56;
      v25 = *(v0 + 312);
      type metadata accessor for ChangeSetAdaptor();
      v26 = swift_allocObject();
      *(v26 + 16) = _swiftEmptyDictionarySingleton;
      *(v26 + 24) = _swiftEmptyDictionarySingleton;
      v27 = (v26 + 24);

      sub_1005C2DF4(v28, &off_101658FC0, v25, (v0 + 96), (v0 + 104));

      swift_beginAccess();
      if (!*(*(v26 + 16) + 16))
      {
        swift_beginAccess();
        v38 = *v27;
        if ((*v27 & 0xC000000000000001) != 0)
        {
          if (v38 < 0)
          {
            v39 = *v27;
          }

          v40 = *v27;

          v41 = __CocoaDictionary.count.getter();

          if (v41)
          {
            goto LABEL_20;
          }

LABEL_26:
          v53 = *(v0 + 144);

          v54 = type metadata accessor for CloudKitChangeSet(0);
          (*(*(v54 - 8) + 56))(v53, 1, 1, v54);
          goto LABEL_21;
        }

        if (!*(v38 + 16))
        {
          goto LABEL_26;
        }
      }

LABEL_20:
      v42 = *(v0 + 264);
      v43 = *(v0 + 232);
      v44 = *(v0 + 240);
      v45 = *(v0 + 144);
      UUID.init()();
      swift_beginAccess();
      v46 = *(v26 + 24);

      v48 = sub_1003A8B54(v47);

      v49 = *(v26 + 16);

      (*(v44 + 32))(v45, v42, v43);
      v50 = type metadata accessor for CloudKitChangeSet(0);
      *(v45 + *(v50 + 20)) = v48;
      *(v45 + *(v50 + 24)) = v49;
      (*(*(v50 - 8) + 56))(v45, 0, 1, v50);
LABEL_21:
      v51 = *(v0 + 312);
      v52 = *(v0 + 288);

      v36 = sub_1005A6E94;
      v37 = v52;
      goto LABEL_22;
    }

    v3 = *(v0 + 352) + 1;
    *(v0 + 352) = v3;
    v4 = *(v0 + 336);
    if (v3 >= *(v4 + 16))
    {
      break;
    }

    v5 = *(v0 + 320);
    v57 = *(*(v0 + 160) + 72);
    sub_1005C31F8(v4 + ((*(v0 + 448) + 32) & ~*(v0 + 448)) + v57 * v3, *(v0 + 176), type metadata accessor for OwnerSharingCircle);
    if (*(v5 + 16))
    {
      v6 = *(v0 + 320);
      v7 = *(v0 + 232);
      v8 = *(v0 + 176);
      *(v0 + 452) = *(*(v0 + 152) + 20);
      v9 = *(v6 + 40);
      sub_1000194B0(&qword_1016967B0, &type metadata accessor for UUID);
      v10 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v11 = -1 << *(v6 + 32);
      v12 = v10 & ~v11;
      if ((*(v6 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v12))
      {
        v13 = ~v11;
        v14 = *(v0 + 240);
        v15 = *(v14 + 72);
        v16 = *(v14 + 16);
        *(v0 + 360) = v16;
        v17 = *(v0 + 320);
        while (1)
        {
          v18 = *(v0 + 264);
          v19 = *(v0 + 232);
          v20 = *(v0 + 240);
          v21 = *(v17 + 48) + v12 * v15;
          *(v0 + 368) = (v20 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
          v16(v18, v21, v19);
          sub_1000194B0(&qword_1016984A0, &type metadata accessor for UUID);
          v22 = dispatch thunk of static Equatable.== infix(_:_:)();
          (*(v20 + 8))(v18, v19);
          if (v22)
          {
            break;
          }

          v17 = *(v0 + 320);
          v12 = (v12 + 1) & v13;
          if (((*(v17 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v12) & 1) == 0)
          {
            goto LABEL_2;
          }
        }

        sub_1005C31F8(*(v0 + 176), *(v0 + 168), type metadata accessor for OwnerSharingCircle);
        v1 = v56;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_12;
        }

        goto LABEL_28;
      }
    }
  }

  __break(1u);
LABEL_28:
  v1 = sub_100A5BC94(0, v1[2] + 1, 1, v1);
LABEL_12:
  v30 = v1[2];
  v29 = v1[3];
  v31 = v1;
  if (v30 >= v29 >> 1)
  {
    v31 = sub_100A5BC94(v29 > 1, v30 + 1, 1, v1);
  }

  v32 = v31;
  *(v0 + 376) = v31;
  v33 = *(v0 + 288);
  v34 = *(v0 + 168);
  v35 = (*(v0 + 448) + 32) & ~*(v0 + 448);
  *(v31 + 16) = v30 + 1;
  sub_1005C3260(v34, v31 + v35 + v30 * v57, type metadata accessor for OwnerSharingCircle);
  *(v0 + 96) = v32;
  v36 = sub_1005A657C;
  v37 = v33;
LABEL_22:

  return _swift_task_switch(v36, v37, 0);
}

uint64_t sub_1005A6EBC()
{
  v1 = v0[52];
  v2 = v0[18];
  v3 = swift_task_alloc();
  v0[53] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v5 = swift_task_alloc();
  v0[54] = v5;
  *v5 = v0;
  v5[1] = sub_1005A6FB4;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v5, 0, 0, 0xD000000000000011, 0x800000010134B790, sub_100111F54, v3, &type metadata for () + 8);
}

uint64_t sub_1005A6FB4()
{
  v2 = *v1;
  v3 = *(*v1 + 432);
  v7 = *v1;
  *(*v1 + 440) = v0;

  if (v0)
  {
    v4 = sub_1005A7204;
  }

  else
  {
    v5 = *(v2 + 424);

    v4 = sub_1005A70D0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1005A70EC()
{
  v1 = v0[51];
  v3 = v0[33];
  v2 = v0[34];
  v4 = v0[32];
  v6 = v0[27];
  v5 = v0[28];
  v7 = v0[26];
  v8 = v0[23];
  v12 = v0[22];
  v13 = v0[21];
  sub_10000B3A8(v0[18], &qword_1016975C8, &qword_10138C1F0);
  v9 = v0[13];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1005A7204()
{
  v1 = *(v0 + 424);
  v2 = *(v0 + 136);

  return _swift_task_switch(sub_1005A7270, v2, 0);
}

uint64_t sub_1005A7270()
{
  sub_10000B3A8(v0[18], &qword_1016975C8, &qword_10138C1F0);
  v1 = v0[51];
  v3 = v0[33];
  v2 = v0[34];
  v4 = v0[32];
  v6 = v0[27];
  v5 = v0[28];
  v7 = v0[26];
  v8 = v0[22];
  v9 = v0[23];
  v13 = v0[21];
  v14 = v0[18];
  v15 = v0[55];
  v10 = v0[13];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1005A7390(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = type metadata accessor for Connection.TransactionMode();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v6 = type metadata accessor for Table();
  v2[8] = v6;
  v7 = *(v6 - 8);
  v2[9] = v7;
  v8 = *(v7 + 64) + 15;
  v2[10] = swift_task_alloc();
  v9 = type metadata accessor for OwnerSharingCircle();
  v2[11] = v9;
  v10 = *(v9 - 8);
  v2[12] = v10;
  v11 = *(v10 + 64) + 15;
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();

  return _swift_task_switch(sub_1005A7514, v1, 0);
}

uint64_t sub_1005A7514(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = *(*(v3 + 24) + 8);
  *(v3 + 120) = v4;
  v5 = *(v4 + 16);
  *(v3 + 128) = v5;
  if (v5)
  {
    v7 = *(v3 + 88);
    v6 = *(v3 + 96);
    v8 = *(*(v3 + 32) + 168);
    *(v3 + 136) = v8;
    v9 = *(v6 + 80);
    v10 = enum case for Connection.TransactionMode.deferred(_:);
    *(v3 + 200) = v9;
    *(v3 + 204) = v10;
    *(v3 + 144) = 0;
    *(v3 + 152) = 0;
    if (*(v4 + 16))
    {
      sub_1005C31F8(v4 + ((v9 + 32) & ~v9), *(v3 + 112), type metadata accessor for OwnerSharingCircle);
      *(v3 + 208) = *(v7 + 20);
      a1 = sub_1005A7658;
      a2 = v8;
      a3 = 0;
    }

    else
    {
      __break(1u);
    }

    return _swift_task_switch(a1, a2, a3);
  }

  else
  {
    v12 = *(v3 + 104);
    v11 = *(v3 + 112);
    v13 = *(v3 + 80);
    v14 = *(v3 + 56);

    v15 = *(v3 + 8);

    return v15();
  }
}

uint64_t sub_1005A7658()
{
  v1 = *(v0 + 136);
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 160) = v3;
  v4 = type metadata accessor for BeaconKeyManager(0);
  *v3 = v0;
  v3[1] = sub_1005A7738;
  v5 = *(v0 + 136);

  return unsafeBlocking<A>(context:_:)(v0 + 16, 0xD000000000000010, 0x800000010134A8C0, sub_1000D3168, v5, v4);
}

uint64_t sub_1005A7738()
{
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 136);
  v4 = *v0;

  return _swift_task_switch(sub_1005A7850, v2, 0);
}

uint64_t sub_1005A7850()
{
  v1 = v0[4];
  v0[21] = v0[2];
  return _swift_task_switch(sub_1005A7874, v1, 0);
}

uint64_t sub_1005A7874()
{
  v1 = *(*(v0 + 168) + OBJC_IVAR____TtC12searchpartyd16BeaconKeyManager_keyStore);
  *(v0 + 176) = v1;

  return _swift_task_switch(sub_1005A78FC, v1, 0);
}

uint64_t sub_1005A78FC()
{
  v1 = *(v0 + 176);
  v2 = *(v1 + 112);
  if (!v2)
  {
    sub_10020223C();
    v18 = swift_allocError();
    *v27 = 2;
    *(v27 + 4) = 1;
    swift_willThrow();
    goto LABEL_8;
  }

  v3 = *(v2 + 32);
  v4 = *(v1 + 112);

  os_unfair_lock_lock((v3 + 20));
  v5 = *(v3 + 16);
  os_unfair_lock_unlock((v3 + 20));
  if (v5 != 1 || (v6 = sub_1000194B0(&qword_101699E80, type metadata accessor for ItemSharingKeyDatabase), v7 = *(v6 + 16), v8 = type metadata accessor for ItemSharingKeyDatabase(), (v9 = v7(v8, v6)) == 0))
  {
    v25 = *(v0 + 176);
    sub_10020223C();
    v18 = swift_allocError();
    *v26 = 2;
    *(v26 + 4) = 1;
    swift_willThrow();

LABEL_8:

    goto LABEL_9;
  }

  v35 = *(v0 + 144);
  v33 = *(v0 + 204);
  v10 = *(v0 + 72);
  v11 = *(v0 + 80);
  v13 = *(v0 + 56);
  v12 = *(v0 + 64);
  v14 = *(v0 + 48);
  v32 = *(v0 + 40);
  v15 = *(v0 + 112) + *(v0 + 208);
  v16 = *(v9 + 24);

  (*(v10 + 16))(v11, v2 + OBJC_IVAR____TtC12searchpartyd22ItemSharingKeyDatabase_sharingCircleSecret, v12);
  v17 = swift_task_alloc();
  v17[2] = v11;
  v17[3] = v15;
  v17[4] = v16;
  (*(v14 + 104))(v13, v33, v32);
  Connection.transaction(_:block:)();
  v18 = v35;
  *(v0 + 184) = v35;
  v19 = *(v0 + 176);
  v20 = *(v0 + 72);
  v22 = *(v0 + 56);
  v21 = *(v0 + 64);
  v34 = v21;
  v36 = *(v0 + 80);
  v24 = *(v0 + 40);
  v23 = *(v0 + 48);
  if (v18)
  {

    (*(v23 + 8))(v22, v24);

    (*(v20 + 8))(v36, v34);
LABEL_9:
    *(v0 + 192) = v18;
    v28 = *(v0 + 32);
    v29 = sub_1005A7D90;
    goto LABEL_10;
  }

  v30 = *(v0 + 32);

  (*(v23 + 8))(v22, v24);

  (*(v20 + 8))(v36, v34);
  v29 = sub_1005A7C3C;
  v28 = v30;
LABEL_10:

  return _swift_task_switch(v29, v28, 0);
}

uint64_t sub_1005A7C3C()
{
  v1 = sub_1005C32E0(*(v0 + 112), type metadata accessor for OwnerSharingCircle);
  v4 = *(v0 + 152) + 1;
  if (v4 == *(v0 + 128))
  {
    v6 = *(v0 + 104);
    v5 = *(v0 + 112);
    v7 = *(v0 + 80);
    v8 = *(v0 + 56);

    v9 = *(v0 + 8);

    return v9();
  }

  else
  {
    *(v0 + 144) = *(v0 + 184);
    *(v0 + 152) = v4;
    v11 = *(v0 + 120);
    if (v4 >= *(v11 + 16))
    {
      __break(1u);
    }

    else
    {
      v12 = *(v0 + 136);
      v13 = *(v0 + 88);
      sub_1005C31F8(v11 + ((*(v0 + 200) + 32) & ~*(v0 + 200)) + *(*(v0 + 96) + 72) * v4, *(v0 + 112), type metadata accessor for OwnerSharingCircle);
      *(v0 + 208) = *(v13 + 20);
      v1 = sub_1005A7658;
      v2 = v12;
      v3 = 0;
    }

    return _swift_task_switch(v1, v2, v3);
  }
}

uint64_t sub_1005A7D90()
{
  v38 = v0;
  if (qword_101694778 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 192);
  v2 = *(v0 + 104);
  v3 = *(v0 + 112);
  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177AE28);
  sub_1005C31F8(v3, v2, type metadata accessor for OwnerSharingCircle);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 192);
  v10 = *(v0 + 104);
  v9 = *(v0 + 112);
  if (v7)
  {
    v11 = *(v0 + 88);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v37 = v14;
    *v12 = 141558531;
    *(v12 + 4) = 1752392040;
    *(v12 + 12) = 2081;
    v15 = *(v11 + 20);
    type metadata accessor for UUID();
    v36 = v9;
    sub_1000194B0(&qword_101696930, &type metadata accessor for UUID);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    sub_1005C32E0(v10, type metadata accessor for OwnerSharingCircle);
    v19 = sub_1000136BC(v16, v18, &v37);

    *(v12 + 14) = v19;
    *(v12 + 22) = 2114;
    swift_errorRetain();
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 24) = v20;
    *v13 = v20;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to rollback secrets for share %{private,mask.hash}s, %{public}@.", v12, 0x20u);
    sub_10000B3A8(v13, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v14);

    v21 = v36;
  }

  else
  {
    v22 = *(v0 + 192);

    sub_1005C32E0(v10, type metadata accessor for OwnerSharingCircle);
    v21 = v9;
  }

  v23 = sub_1005C32E0(v21, type metadata accessor for OwnerSharingCircle);
  v26 = *(v0 + 152) + 1;
  if (v26 == *(v0 + 128))
  {
    v28 = *(v0 + 104);
    v27 = *(v0 + 112);
    v29 = *(v0 + 80);
    v30 = *(v0 + 56);

    v31 = *(v0 + 8);

    return v31();
  }

  else
  {
    *(v0 + 144) = 0;
    *(v0 + 152) = v26;
    v33 = *(v0 + 120);
    if (v26 >= *(v33 + 16))
    {
      __break(1u);
    }

    else
    {
      v34 = *(v0 + 136);
      v35 = *(v0 + 88);
      sub_1005C31F8(v33 + ((*(v0 + 200) + 32) & ~*(v0 + 200)) + *(*(v0 + 96) + 72) * v26, *(v0 + 112), type metadata accessor for OwnerSharingCircle);
      *(v0 + 208) = *(v35 + 20);
      v23 = sub_1005A7658;
      v24 = v34;
      v25 = 0;
    }

    return _swift_task_switch(v23, v24, v25);
  }
}

uint64_t sub_1005A8170(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = type metadata accessor for URL();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v6 = *(v5 + 64) + 15;
  v3[8] = swift_task_alloc();
  v7 = type metadata accessor for OwnerSharingCircle();
  v3[9] = v7;
  v8 = *(v7 - 8);
  v3[10] = v8;
  v3[11] = *(v8 + 64);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v9 = type metadata accessor for UUID();
  v3[18] = v9;
  v10 = *(v9 - 8);
  v3[19] = v10;
  v3[20] = *(v10 + 64);
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();

  return _swift_task_switch(sub_1005A8368, v2, 0);
}

uint64_t sub_1005A8368()
{
  v25 = v0;
  if (qword_101694778 != -1)
  {
    swift_once();
  }

  v1 = v0[25];
  v2 = v0[18];
  v3 = v0[19];
  v4 = v0[4];
  v5 = type metadata accessor for Logger();
  v0[26] = v5;
  v0[27] = sub_1000076D4(v5, qword_10177AE28);
  v6 = *(v3 + 16);
  v0[28] = v6;
  v0[29] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[25];
  v11 = v0[18];
  v12 = v0[19];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v24 = v23;
    *v13 = 141558275;
    *(v13 + 4) = 1752392040;
    *(v13 + 12) = 2081;
    sub_1000194B0(&qword_101696930, &type metadata accessor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v17 = *(v12 + 8);
    v17(v10, v11);
    v18 = sub_1000136BC(v14, v16, &v24);

    *(v13 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "Start delegated sharing of %{private,mask.hash}s.", v13, 0x16u);
    sub_100007BAC(v23);
  }

  else
  {

    v17 = *(v12 + 8);
    v17(v10, v11);
  }

  v0[30] = v17;
  v19 = swift_task_alloc();
  v0[31] = v19;
  *v19 = v0;
  v19[1] = sub_1005A8604;
  v20 = v0[4];
  v21 = v0[5];

  return sub_10059E754(v20);
}

uint64_t sub_1005A8604(uint64_t a1)
{
  v3 = *(*v2 + 248);
  v4 = *v2;
  v4[32] = a1;

  if (v1)
  {
    v6 = v4[24];
    v5 = v4[25];
    v8 = v4[22];
    v7 = v4[23];
    v9 = v4[21];
    v11 = v4[16];
    v10 = v4[17];
    v12 = v4[14];
    v13 = v4[15];
    v18 = v4[13];
    v19 = v4[12];
    v14 = v4[8];

    v15 = v4[1];

    return v15();
  }

  else
  {
    v17 = v4[5];

    return _swift_task_switch(sub_1005A87EC, v17, 0);
  }
}

uint64_t sub_1005A87EC()
{
  v1 = *(v0 + 256);
  if (*(v1 + 16))
  {
    v2 = *(v0 + 128);
    v3 = *(v0 + 136);
    v4 = *(v0 + 40);
    v5 = *(*(v0 + 80) + 80);
    *(v0 + 408) = v5;
    sub_1005C31F8(v1 + ((v5 + 32) & ~v5), v2, type metadata accessor for OwnerSharingCircle);

    sub_1005C3260(v2, v3, type metadata accessor for OwnerSharingCircle);
    v6 = *(v4 + 168);
    *(v0 + 264) = v6;
    *(v0 + 272) = sub_100B08164(&off_101608BE0);

    return _swift_task_switch(sub_1005A8A60, v6, 0);
  }

  else
  {
    v7 = *(v0 + 216);
    v8 = *(v0 + 256);

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Missing delegated sharing circle.", v11, 2u);
    }

    sub_1005C3340();
    swift_allocError();
    *v12 = 5;
    swift_willThrow();
    v14 = *(v0 + 192);
    v13 = *(v0 + 200);
    v16 = *(v0 + 176);
    v15 = *(v0 + 184);
    v17 = *(v0 + 168);
    v19 = *(v0 + 128);
    v18 = *(v0 + 136);
    v21 = *(v0 + 112);
    v20 = *(v0 + 120);
    v22 = *(v0 + 104);
    v25 = *(v0 + 96);
    v26 = *(v0 + 64);

    v23 = *(v0 + 8);

    return v23();
  }
}

uint64_t sub_1005A8A60()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 272);
  v3 = *(v0 + 232);
  v4 = *(v0 + 192);
  v6 = *(v0 + 152);
  v5 = *(v0 + 160);
  v7 = *(v0 + 144);
  (*(v0 + 224))(v4, *(v0 + 32), v7);
  v8 = *(v6 + 80);
  *(v0 + 412) = v8;
  v9 = (v8 + 24) & ~v8;
  v10 = (v5 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = swift_allocObject();
  *(v0 + 280) = v11;
  *(v11 + 16) = v1;
  v12 = *(v6 + 32);
  *(v0 + 288) = v12;
  *(v0 + 296) = (v6 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v12(v11 + v9, v4, v7);
  *(v11 + v10) = v2;
  v13 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v14 = swift_task_alloc();
  *(v0 + 304) = v14;
  v15 = sub_1000BC4D4(&unk_101698BD0, &unk_10138C210);
  *v14 = v0;
  v14[1] = sub_1005A8BFC;

  return unsafeBlocking<A>(context:_:)(v0 + 16, 0xD000000000000010, 0x800000010134A8C0, sub_1001BE4AC, v11, v15);
}

uint64_t sub_1005A8BFC()
{
  v1 = *(*v0 + 304);
  v2 = *(*v0 + 280);
  v3 = *(*v0 + 264);
  v5 = *v0;

  return _swift_task_switch(sub_1005A8D28, v3, 0);
}

uint64_t sub_1005A8D28()
{
  v1 = v0[5];
  v0[39] = v0[2];
  return _swift_task_switch(sub_1005A8D4C, v1, 0);
}

uint64_t sub_1005A8D4C()
{
  v1 = *(v0 + 312);
  if (*(v1 + 16))
  {
    v2 = *(v0 + 112);
    v3 = *(v0 + 120);
    v4 = *(v0 + 40);
    sub_1005C31F8(v1 + ((*(v0 + 408) + 32) & ~*(v0 + 408)), v2, type metadata accessor for OwnerSharingCircle);

    sub_1005C3260(v2, v3, type metadata accessor for OwnerSharingCircle);
    v5 = *sub_1000035D0((v4 + 272), *(v4 + 296));
    v6 = swift_task_alloc();
    *(v0 + 320) = v6;
    *v6 = v0;
    v6[1] = sub_1005A9028;
    v7 = *(v0 + 120);

    return sub_1007256F8(v7, 0);
  }

  else
  {
    v9 = *(v0 + 312);

    v28 = *(v0 + 288);
    v29 = *(v0 + 296);
    v10 = *(v0 + 408);
    v11 = *(v0 + 224);
    v12 = *(v0 + 232);
    v13 = *(v0 + 192);
    v14 = *(v0 + 144);
    v24 = *(v0 + 136);
    v25 = *(v0 + 160);
    v15 = *(v0 + 96);
    v16 = (*(v0 + 412) + 24) & ~*(v0 + 412);
    v17 = *(v0 + 32);
    v26 = *(v0 + 88);
    v27 = *(v0 + 40);
    type metadata accessor for Transaction();
    v11(v13, v17, v14);
    v18 = v15;
    sub_1005C31F8(v24, v15, type metadata accessor for OwnerSharingCircle);
    v19 = swift_allocObject();
    *(v19 + 16) = v27;
    v28(v19 + v16, v13, v14);
    sub_1005C3260(v18, v19 + ((v16 + v10 + v25) & ~v10), type metadata accessor for OwnerSharingCircle);

    static Transaction.asyncTask(name:block:)();

    v20 = swift_task_alloc();
    *(v0 + 392) = v20;
    *v20 = v0;
    v20[1] = sub_1005A9BC8;
    v21 = *(v0 + 136);
    v22 = *(v0 + 40);
    v23 = *(v0 + 24);

    return sub_1005AB064(v23, v21);
  }
}

uint64_t sub_1005A9028()
{
  v2 = *(*v1 + 320);
  v3 = *v1;
  v3[41] = v0;

  if (v0)
  {
    v4 = v3[5];

    return _swift_task_switch(sub_1005A9194, v4, 0);
  }

  else
  {
    v5 = async function pointer to daemon.getter[1];
    v6 = swift_task_alloc();
    v3[42] = v6;
    *v6 = v3;
    v6[1] = sub_1005A93F0;

    return daemon.getter();
  }
}

uint64_t sub_1005A9194()
{
  v22 = v0;
  v1 = v0[27];
  sub_1005C31F8(v0[15], v0[13], type metadata accessor for OwnerSharingCircle);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[41];
  if (v4)
  {
    v6 = v0[18];
    v7 = v0[13];
    v8 = v0[9];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21 = v10;
    *v9 = 141558275;
    *(v9 + 4) = 1752392040;
    *(v9 + 12) = 2081;
    v11 = *(v8 + 20);
    sub_1000194B0(&qword_101696930, &type metadata accessor for UUID);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    sub_1005C32E0(v7, type metadata accessor for OwnerSharingCircle);
    v15 = sub_1000136BC(v12, v14, &v21);

    *(v9 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to update delegation start in keydrop for shareId: %{private,mask.hash}s.", v9, 0x16u);
    sub_100007BAC(v10);
  }

  else
  {
    v16 = v0[13];
    v17 = v0[41];

    sub_1005C32E0(v16, type metadata accessor for OwnerSharingCircle);
  }

  v18 = async function pointer to daemon.getter[1];
  v19 = swift_task_alloc();
  v0[42] = v19;
  *v19 = v0;
  v19[1] = sub_1005A93F0;

  return daemon.getter();
}

uint64_t sub_1005A93F0(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 336);
  v12 = *v1;
  *(v3 + 344) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 352) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for CircleTrustService();
  v9 = sub_1000194B0(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_1000194B0(&unk_101698CE0, type metadata accessor for CircleTrustService);
  *v6 = v12;
  v6[1] = sub_1005A95CC;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1005A95CC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 352);
  v5 = *v2;
  *(*v2 + 360) = a1;

  v6 = *(v3 + 344);
  v7 = *(v3 + 40);
  if (v1)
  {

    v8 = sub_1005AA108;
  }

  else
  {

    v8 = sub_1005A9730;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_1005A9730()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 80);
  v3 = (*(v0 + 408) + 32) & ~*(v0 + 408);
  sub_1000BC4D4(&qword_101698E50, &unk_101390D40);
  v4 = *(v2 + 72);
  v5 = swift_allocObject();
  *(v0 + 368) = v5;
  *(v5 + 16) = xmmword_101385D80;
  sub_1005C31F8(v1, v5 + v3, type metadata accessor for OwnerSharingCircle);
  v6 = swift_task_alloc();
  *(v0 + 376) = v6;
  *v6 = v0;
  v6[1] = sub_1005A9838;
  v7 = *(v0 + 360);

  return sub_100D276D8(v5);
}

uint64_t sub_1005A9838()
{
  v2 = *v1;
  v3 = *(*v1 + 376);
  v4 = *v1;
  *(v2 + 384) = v0;

  v5 = *(v2 + 368);
  v6 = *(v2 + 40);
  v7 = (*(v2 + 408) + 32) & ~*(v2 + 408);
  swift_setDeallocating();
  sub_1005C32E0(v5 + v7, type metadata accessor for OwnerSharingCircle);
  swift_deallocClassInstance();
  if (v0)
  {
    v8 = sub_1005AA300;
  }

  else
  {
    v8 = sub_1005A99C4;
  }

  return _swift_task_switch(v8, v6, 0);
}

uint64_t sub_1005A99C4()
{
  v1 = *(v0 + 360);
  v2 = *(v0 + 120);

  sub_1005C32E0(v2, type metadata accessor for OwnerSharingCircle);
  v22 = *(v0 + 288);
  v23 = *(v0 + 296);
  v3 = *(v0 + 408);
  v4 = *(v0 + 224);
  v5 = *(v0 + 232);
  v6 = *(v0 + 192);
  v7 = *(v0 + 144);
  v18 = *(v0 + 136);
  v19 = *(v0 + 160);
  v8 = *(v0 + 96);
  v9 = (*(v0 + 412) + 24) & ~*(v0 + 412);
  v10 = *(v0 + 32);
  v20 = *(v0 + 88);
  v21 = *(v0 + 40);
  type metadata accessor for Transaction();
  v4(v6, v10, v7);
  v11 = v8;
  sub_1005C31F8(v18, v8, type metadata accessor for OwnerSharingCircle);
  v12 = swift_allocObject();
  *(v12 + 16) = v21;
  v22(v12 + v9, v6, v7);
  sub_1005C3260(v11, v12 + ((v9 + v3 + v19) & ~v3), type metadata accessor for OwnerSharingCircle);

  static Transaction.asyncTask(name:block:)();

  v13 = swift_task_alloc();
  *(v0 + 392) = v13;
  *v13 = v0;
  v13[1] = sub_1005A9BC8;
  v14 = *(v0 + 136);
  v15 = *(v0 + 40);
  v16 = *(v0 + 24);

  return sub_1005AB064(v16, v14);
}

uint64_t sub_1005A9BC8()
{
  v2 = *v1;
  v3 = *(*v1 + 392);
  v4 = *v1;
  *(*v1 + 400) = v0;

  v5 = *(v2 + 40);
  if (v0)
  {
    v6 = sub_1005AA6C4;
  }

  else
  {
    v6 = sub_1005A9CF4;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1005A9CF4()
{
  v49 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = v0[28];
  v45 = v0[29];
  v2 = v0[23];
  v3 = v0[18];
  v5 = v0[7];
  v4 = v0[8];
  v6 = v0[6];
  v8 = v0[3];
  v7 = v0[4];
  sub_1000076D4(v0[26], qword_10177A560);
  v1(v2, v7, v3);
  (*(v5 + 16))(v4, v8, v6);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[30];
  v13 = v0[23];
  v15 = v0[18];
  v14 = v0[19];
  v16 = v0[17];
  v17 = v0[7];
  v46 = v0[8];
  v18 = v0[6];
  if (v11)
  {
    log = v9;
    v19 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    *v19 = 141558787;
    *(v19 + 4) = 1752392040;
    *(v19 + 12) = 2081;
    sub_1000194B0(&qword_101696930, &type metadata accessor for UUID);
    v42 = v16;
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v41 = v10;
    v22 = v21;
    v12(v13, v15);
    v23 = sub_1000136BC(v20, v22, &v48);

    *(v19 + 14) = v23;
    *(v19 + 22) = 2160;
    *(v19 + 24) = 1752392040;
    *(v19 + 32) = 2085;
    sub_1000194B0(&qword_1016B14E0, &type metadata accessor for URL);
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v25;
    (*(v17 + 8))(v46, v18);
    v27 = sub_1000136BC(v24, v26, &v48);

    *(v19 + 34) = v27;
    _os_log_impl(&_mh_execute_header, log, v41, "URL created for beacon %{private,mask.hash}s : %{sensitive,mask.hash}s.", v19, 0x2Au);
    swift_arrayDestroy();

    v28 = v42;
  }

  else
  {

    (*(v17 + 8))(v46, v18);
    v12(v13, v15);
    v28 = v16;
  }

  sub_1005C32E0(v28, type metadata accessor for OwnerSharingCircle);
  v30 = v0[24];
  v29 = v0[25];
  v32 = v0[22];
  v31 = v0[23];
  v33 = v0[21];
  v35 = v0[16];
  v34 = v0[17];
  v37 = v0[14];
  v36 = v0[15];
  v38 = v0[13];
  v44 = v0[12];
  v47 = v0[8];

  v39 = v0[1];

  return v39();
}

uint64_t sub_1005AA108()
{
  sub_1005C32E0(*(v0 + 120), type metadata accessor for OwnerSharingCircle);
  v20 = *(v0 + 288);
  v21 = *(v0 + 296);
  v1 = *(v0 + 408);
  v2 = *(v0 + 224);
  v3 = *(v0 + 232);
  v4 = *(v0 + 192);
  v5 = *(v0 + 144);
  v16 = *(v0 + 136);
  v17 = *(v0 + 160);
  v6 = *(v0 + 96);
  v7 = (*(v0 + 412) + 24) & ~*(v0 + 412);
  v8 = *(v0 + 32);
  v18 = *(v0 + 88);
  v19 = *(v0 + 40);
  type metadata accessor for Transaction();
  v2(v4, v8, v5);
  v9 = v6;
  sub_1005C31F8(v16, v6, type metadata accessor for OwnerSharingCircle);
  v10 = swift_allocObject();
  *(v10 + 16) = v19;
  v20(v10 + v7, v4, v5);
  sub_1005C3260(v9, v10 + ((v7 + v1 + v17) & ~v1), type metadata accessor for OwnerSharingCircle);

  static Transaction.asyncTask(name:block:)();

  v11 = swift_task_alloc();
  *(v0 + 392) = v11;
  *v11 = v0;
  v11[1] = sub_1005A9BC8;
  v12 = *(v0 + 136);
  v13 = *(v0 + 40);
  v14 = *(v0 + 24);

  return sub_1005AB064(v14, v12);
}

uint64_t sub_1005AA300()
{
  v46 = v0;
  v1 = *(v0 + 232);
  v2 = *(v0 + 216);
  (*(v0 + 224))(*(v0 + 176), *(v0 + 32), *(v0 + 144));
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 384);
  v7 = *(v0 + 360);
  v8 = *(v0 + 240);
  v9 = *(v0 + 176);
  v11 = *(v0 + 144);
  v10 = *(v0 + 152);
  v12 = *(v0 + 120);
  if (v5)
  {
    v44 = *(v0 + 360);
    v39 = *(v0 + 240);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v45 = v14;
    *v13 = 141558275;
    *(v13 + 4) = 1752392040;
    *(v13 + 12) = 2081;
    sub_1000194B0(&qword_101696930, &type metadata accessor for UUID);
    v42 = v12;
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    v39(v9, v11);
    v18 = sub_1000136BC(v15, v17, &v45);

    *(v13 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to send delegation start update to sharees for the beacon: %{private,mask.hash}s.", v13, 0x16u);
    sub_100007BAC(v14);

    v19 = v42;
  }

  else
  {
    v20 = *(v0 + 360);

    v8(v9, v11);
    v19 = v12;
  }

  sub_1005C32E0(v19, type metadata accessor for OwnerSharingCircle);
  v41 = *(v0 + 288);
  v43 = *(v0 + 296);
  v21 = *(v0 + 408);
  v22 = *(v0 + 224);
  v23 = *(v0 + 232);
  v24 = *(v0 + 192);
  v25 = *(v0 + 144);
  v36 = *(v0 + 136);
  v37 = *(v0 + 160);
  v26 = *(v0 + 96);
  v27 = (*(v0 + 412) + 24) & ~*(v0 + 412);
  v28 = *(v0 + 32);
  v38 = *(v0 + 88);
  v40 = *(v0 + 40);
  type metadata accessor for Transaction();
  v22(v24, v28, v25);
  v29 = v26;
  sub_1005C31F8(v36, v26, type metadata accessor for OwnerSharingCircle);
  v30 = swift_allocObject();
  *(v30 + 16) = v40;
  v41(v30 + v27, v24, v25);
  sub_1005C3260(v29, v30 + ((v27 + v21 + v37) & ~v21), type metadata accessor for OwnerSharingCircle);

  static Transaction.asyncTask(name:block:)();

  v31 = swift_task_alloc();
  *(v0 + 392) = v31;
  *v31 = v0;
  v31[1] = sub_1005A9BC8;
  v32 = *(v0 + 136);
  v33 = *(v0 + 40);
  v34 = *(v0 + 24);

  return sub_1005AB064(v34, v32);
}

uint64_t sub_1005AA6C4()
{
  v41 = v0;
  v1 = *(v0 + 400);
  v2 = *(v0 + 232);
  v3 = *(v0 + 216);
  (*(v0 + 224))(*(v0 + 168), *(v0 + 32), *(v0 + 144));
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v36 = *(v0 + 240);
    v38 = *(v0 + 400);
    v6 = *(v0 + 168);
    v7 = *(v0 + 144);
    v34 = *(v0 + 152);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v40 = v10;
    *v8 = 141558531;
    *(v8 + 4) = 1752392040;
    *(v8 + 12) = 2081;
    sub_1000194B0(&qword_101696930, &type metadata accessor for UUID);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = v12;
    v36(v6, v7);
    v14 = sub_1000136BC(v11, v13, &v40);

    *(v8 + 14) = v14;
    *(v8 + 22) = 2114;
    swift_errorRetain();
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 24) = v15;
    *v9 = v15;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failure in URL creation for beacon %{private,mask.hash}s %{public}@.", v8, 0x20u);
    sub_10000B3A8(v9, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v10);
  }

  else
  {
    v16 = *(v0 + 240);
    v17 = *(v0 + 168);
    v18 = *(v0 + 144);
    v19 = *(v0 + 152);

    v16(v17, v18);
  }

  v20 = *(v0 + 400);
  v21 = *(v0 + 136);
  swift_willThrow();
  sub_1005C32E0(v21, type metadata accessor for OwnerSharingCircle);
  v23 = *(v0 + 192);
  v22 = *(v0 + 200);
  v25 = *(v0 + 176);
  v24 = *(v0 + 184);
  v26 = *(v0 + 168);
  v28 = *(v0 + 128);
  v27 = *(v0 + 136);
  v30 = *(v0 + 112);
  v29 = *(v0 + 120);
  v31 = *(v0 + 104);
  v35 = *(v0 + 96);
  v37 = *(v0 + 64);
  v39 = *(v0 + 400);

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_1005AA9F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  v5 = type metadata accessor for UUID();
  v3[4] = v5;
  v6 = *(v5 - 8);
  v3[5] = v6;
  v7 = *(v6 + 64) + 15;
  v3[6] = swift_task_alloc();
  v8 = swift_task_alloc();
  v3[7] = v8;
  *v8 = v3;
  v8[1] = sub_1005AAAFC;

  return sub_100F58F64(a2, 3u);
}

uint64_t sub_1005AAAFC()
{
  v1 = *v0;
  v2 = *(*v0 + 56);
  v3 = *v0;

  v4 = swift_task_alloc();
  *(v1 + 64) = v4;
  *v4 = v3;
  v4[1] = sub_1005AAC54;
  v5 = *(v1 + 24);

  return sub_1003C3774(v5);
}

uint64_t sub_1005AAC54()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  v3[9] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1005AAD90, 0, 0);
  }

  else
  {
    v4 = v3[6];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_1005AAD90()
{
  v27 = v0;
  if (qword_101694778 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[4];
  v5 = v0[2];
  v6 = type metadata accessor for Logger();
  sub_1000076D4(v6, qword_10177AE28);
  (*(v3 + 16))(v2, v5, v4);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[9];
  v12 = v0[5];
  v11 = v0[6];
  v13 = v0[4];
  if (v9)
  {
    v14 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = v25;
    *v14 = 141558531;
    *(v14 + 4) = 1752392040;
    *(v14 + 12) = 2081;
    sub_1000194B0(&qword_101696930, &type metadata accessor for UUID);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    (*(v12 + 8))(v11, v13);
    v18 = sub_1000136BC(v15, v17, &v26);

    *(v14 + 14) = v18;
    *(v14 + 22) = 2114;
    swift_errorRetain();
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 24) = v19;
    *v24 = v19;
    _os_log_impl(&_mh_execute_header, v7, v8, "Error while registering APNS token with FindMy service for beacon %{private,mask.hash}s: error: %{public}@", v14, 0x20u);
    sub_10000B3A8(v24, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v25);
  }

  else
  {
    v20 = v0[9];

    (*(v12 + 8))(v11, v13);
  }

  v21 = v0[6];

  v22 = v0[1];

  return v22();
}

uint64_t sub_1005AB064(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for OwnerSharingCircle();
  v3[5] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[6] = swift_task_alloc();
  v3[7] = swift_task_alloc();
  v6 = *(*(sub_1000BC4D4(&unk_101696AC0, &qword_101390A60) - 8) + 64) + 15;
  v3[8] = swift_task_alloc();
  v7 = *(*(type metadata accessor for DelegatedShareUseCase.DelegationURL(0) - 8) + 64) + 15;
  v3[9] = swift_task_alloc();
  v8 = type metadata accessor for URLComponents();
  v3[10] = v8;
  v9 = *(v8 - 8);
  v3[11] = v9;
  v10 = *(v9 + 64) + 15;
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();

  return _swift_task_switch(sub_1005AB1D4, v2, 0);
}

uint64_t sub_1005AB1D4()
{
  v1 = *sub_1000035D0((v0[4] + 176), *(v0[4] + 200));
  v2 = swift_task_alloc();
  v0[14] = v2;
  *v2 = v0;
  v2[1] = sub_1005AB280;
  v3 = v0[13];
  v4 = v0[3];

  return sub_100C78E54(v3, v4);
}

uint64_t sub_1005AB280()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *v1;
  *(*v1 + 120) = v0;

  v5 = *(v2 + 32);
  if (v0)
  {
    v6 = sub_1005AB87C;
  }

  else
  {
    v6 = sub_1005AB3AC;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1005AB3AC()
{
  v39 = v0;
  v1 = v0[13];
  v2 = v0[10];
  v3 = v0[11];
  v4 = URLComponents.fragment.getter();
  v6 = v5;
  v7 = *(v3 + 8);
  v0[16] = v7;
  v0[17] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v1, v2);
  if (v6)
  {
    v8 = v0[3] + *(v0[5] + 20);
    v9 = UUID.uuidString.getter();
    v11 = v10;
    v12 = swift_task_alloc();
    v0[18] = v12;
    *v12 = v0;
    v12[1] = sub_1005AB750;
    v13 = v0[9];

    return sub_1005C24A0(v13, v4, v6, v9, v11);
  }

  else
  {
    if (qword_101694778 != -1)
    {
      swift_once();
    }

    v15 = v0[6];
    v16 = v0[3];
    v17 = type metadata accessor for Logger();
    sub_1000076D4(v17, qword_10177AE28);
    sub_1005C31F8(v16, v15, type metadata accessor for OwnerSharingCircle);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    v20 = os_log_type_enabled(v18, v19);
    v21 = v0[6];
    if (v20)
    {
      v22 = v0[5];
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v38 = v24;
      *v23 = 141558275;
      *(v23 + 4) = 1752392040;
      *(v23 + 12) = 2081;
      v25 = *(v22 + 24);
      type metadata accessor for UUID();
      sub_1000194B0(&qword_101696930, &type metadata accessor for UUID);
      v26 = dispatch thunk of CustomStringConvertible.description.getter();
      v28 = v27;
      sub_1005C32E0(v21, type metadata accessor for OwnerSharingCircle);
      v29 = sub_1000136BC(v26, v28, &v38);

      *(v23 + 14) = v29;
      _os_log_impl(&_mh_execute_header, v18, v19, "Error creating URL fragments for delegated sharing for beacon %{private,mask.hash}s).", v23, 0x16u);
      sub_100007BAC(v24);
    }

    else
    {

      sub_1005C32E0(v21, type metadata accessor for OwnerSharingCircle);
    }

    sub_1005C3340();
    swift_allocError();
    *v30 = 3;
    swift_willThrow();
    v32 = v0[12];
    v31 = v0[13];
    v34 = v0[8];
    v33 = v0[9];
    v36 = v0[6];
    v35 = v0[7];

    v37 = v0[1];

    return v37();
  }
}

uint64_t sub_1005AB750()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *v1;
  *(*v1 + 152) = v0;

  v5 = *(v2 + 32);
  if (v0)
  {
    v6 = sub_1005ABD24;
  }

  else
  {
    v6 = sub_1005AB920;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1005AB87C()
{
  v1 = v0[15];
  v3 = v0[12];
  v2 = v0[13];
  v5 = v0[8];
  v4 = v0[9];
  v7 = v0[6];
  v6 = v0[7];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1005AB920()
{
  v39 = v0;
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[12];
  v5 = v0[9];
  v4 = v0[10];
  v6 = v0[8];
  (*(v0[11] + 16))(v3, v5, v4);
  sub_1005C32E0(v5, type metadata accessor for DelegatedShareUseCase.DelegationURL);
  URLComponents.url.getter();
  v2(v3, v4);
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_10000B3A8(v0[8], &unk_101696AC0, &qword_101390A60);
    if (qword_101694778 != -1)
    {
      swift_once();
    }

    v9 = v0[7];
    v10 = v0[3];
    v11 = type metadata accessor for Logger();
    sub_1000076D4(v11, qword_10177AE28);
    sub_1005C31F8(v10, v9, type metadata accessor for OwnerSharingCircle);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    v14 = os_log_type_enabled(v12, v13);
    v15 = v0[7];
    if (v14)
    {
      v16 = v0[5];
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v38 = v18;
      *v17 = 141558275;
      *(v17 + 4) = 1752392040;
      *(v17 + 12) = 2081;
      v19 = *(v16 + 24);
      type metadata accessor for UUID();
      sub_1000194B0(&qword_101696930, &type metadata accessor for UUID);
      v20 = dispatch thunk of CustomStringConvertible.description.getter();
      v22 = v21;
      sub_1005C32E0(v15, type metadata accessor for OwnerSharingCircle);
      v23 = sub_1000136BC(v20, v22, &v38);

      *(v17 + 14) = v23;
      _os_log_impl(&_mh_execute_header, v12, v13, "Error creating URL components for delegated sharing for beacon %{private,mask.hash}s).", v17, 0x16u);
      sub_100007BAC(v18);
    }

    else
    {

      sub_1005C32E0(v15, type metadata accessor for OwnerSharingCircle);
    }

    sub_1005C3340();
    swift_allocError();
    *v30 = 4;
    swift_willThrow();
    v32 = v0[12];
    v31 = v0[13];
    v34 = v0[8];
    v33 = v0[9];
    v36 = v0[6];
    v35 = v0[7];

    v29 = v0[1];
  }

  else
  {
    v25 = v0[12];
    v24 = v0[13];
    v26 = v0[9];
    v28 = v0[6];
    v27 = v0[7];
    (*(v8 + 32))(v0[2], v0[8], v7);

    v29 = v0[1];
  }

  return v29();
}

uint64_t sub_1005ABD24()
{
  v1 = v0[19];
  v3 = v0[12];
  v2 = v0[13];
  v5 = v0[8];
  v4 = v0[9];
  v7 = v0[6];
  v6 = v0[7];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1005ABDC8(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = type metadata accessor for OwnerSharingCircle();
  v2[8] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();

  return _swift_task_switch(sub_1005ABE8C, v1, 0);
}

uint64_t sub_1005ABE8C()
{
  v39 = v0;
  if (qword_101694778 != -1)
  {
    swift_once();
  }

  v1 = v0[13];
  v2 = v0[6];
  v3 = type metadata accessor for Logger();
  v0[14] = sub_1000076D4(v3, qword_10177AE28);
  sub_1005C31F8(v2, v1, type metadata accessor for OwnerSharingCircle);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[13];
  if (v6)
  {
    v8 = v0[8];
    v9 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v9 = 136315651;
    *(v9 + 4) = sub_1000136BC(0xD00000000000001DLL, 0x800000010135B480, &v38);
    *(v9 + 12) = 2160;
    *(v9 + 14) = 1752392040;
    *(v9 + 22) = 2081;
    v10 = *(v8 + 20);
    type metadata accessor for UUID();
    sub_1000194B0(&qword_101696930, &type metadata accessor for UUID);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = v12;
    sub_1005C32E0(v7, type metadata accessor for OwnerSharingCircle);
    v14 = sub_1000136BC(v11, v13, &v38);

    *(v9 + 24) = v14;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s %{private,mask.hash}s.", v9, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    sub_1005C32E0(v7, type metadata accessor for OwnerSharingCircle);
  }

  v15 = v0[8];
  v16 = v0[6];
  if (*(v16 + *(v15 + 28)) == 3 && *(v16 + *(v15 + 36)) == 1)
  {
    v17 = async function pointer to daemon.getter[1];
    v18 = swift_task_alloc();
    v0[15] = v18;
    *v18 = v0;
    v18[1] = sub_1005AC39C;

    return daemon.getter();
  }

  else
  {
    sub_1005C31F8(v16, v0[10], type metadata accessor for OwnerSharingCircle);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    v21 = os_log_type_enabled(v19, v20);
    v22 = v0[10];
    if (v21)
    {
      v23 = v0[8];
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v38 = v25;
      *v24 = 141558275;
      *(v24 + 4) = 1752392040;
      *(v24 + 12) = 2081;
      v26 = *(v23 + 20);
      type metadata accessor for UUID();
      sub_1000194B0(&qword_101696930, &type metadata accessor for UUID);
      v27 = dispatch thunk of CustomStringConvertible.description.getter();
      v29 = v28;
      sub_1005C32E0(v22, type metadata accessor for OwnerSharingCircle);
      v30 = sub_1000136BC(v27, v29, &v38);

      *(v24 + 14) = v30;
      _os_log_impl(&_mh_execute_header, v19, v20, "Share %{private,mask.hash}s is not eligible for APS registration.", v24, 0x16u);
      sub_100007BAC(v25);
    }

    else
    {

      sub_1005C32E0(v22, type metadata accessor for OwnerSharingCircle);
    }

    v32 = v0[12];
    v31 = v0[13];
    v34 = v0[10];
    v33 = v0[11];
    v35 = v0[9];

    v36 = v0[1];

    return v36();
  }
}