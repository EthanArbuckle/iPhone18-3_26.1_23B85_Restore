unint64_t sub_1009B3CD0()
{
  result = qword_1016B0E10;
  if (!qword_1016B0E10)
  {
    sub_1000BC580(&qword_1016B0E08, &unk_1013CFBA0);
    sub_100003F1C(&qword_1016B0E18, type metadata accessor for SecureLocationsCachedSharedKey);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B0E10);
  }

  return result;
}

unint64_t sub_1009B3D98()
{
  result = qword_1016B0E30;
  if (!qword_1016B0E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B0E30);
  }

  return result;
}

unint64_t sub_1009B3DF0()
{
  result = qword_1016B0E38;
  if (!qword_1016B0E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B0E38);
  }

  return result;
}

uint64_t sub_1009B3E44(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016B0F10, &qword_1013D0020);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_1009B55E4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v22) = 0;
  type metadata accessor for BeaconIdentifier();
  sub_1009B57A4(&qword_1016A9138, type metadata accessor for BeaconIdentifier);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = type metadata accessor for KeyGenerationBeaconInfo();
    v12 = v11[5];
    LOBYTE(v22) = 1;
    type metadata accessor for Date();
    sub_1009B57A4(&unk_101697F60, &type metadata accessor for Date);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v13 = (v3 + v11[6]);
    v14 = v13[1];
    v15 = v13[2];
    v16 = v13[3];
    v17 = v13[4];
    v18 = v13[5];
    v22 = *v13;
    v23 = v14;
    v24 = v15;
    v25 = v16;
    v26 = v17;
    v27 = v18;
    v21 = 2;
    sub_1009B53BC(v22, v14, v15, v16, v17, v18, sub_100017D5C, sub_1002DBC68);
    sub_1009B57EC();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_1009B53BC(v22, v23, v24, v25, v26, v27, sub_100016590, sub_100006654);
    LOBYTE(v22) = *(v3 + v11[7]);
    v21 = 3;
    sub_1009B5840();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

void sub_1009B4148(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v26 = type metadata accessor for Date();
  v24 = *(v26 - 8);
  v3 = *(v24 + 64);
  __chkstk_darwin(v26);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for BeaconIdentifier();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v27 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1000BC4D4(&qword_1016B0EE8, &qword_1013D0018);
  v25 = *(v29 - 8);
  v9 = *(v25 + 64);
  __chkstk_darwin(v29);
  v11 = &v23 - v10;
  v12 = type metadata accessor for KeyGenerationBeaconInfo();
  v13 = *(*(v12 - 1) + 64);
  __chkstk_darwin(v12);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_1009B55E4();
  v28 = v11;
  v17 = v30;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v17)
  {
    sub_100007BAC(a1);
  }

  else
  {
    v18 = v5;
    v19 = v25;
    v20 = v26;
    LOBYTE(v31) = 0;
    sub_1009B57A4(&qword_1016B0EF8, type metadata accessor for BeaconIdentifier);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_1009B5638(v27, v15);
    LOBYTE(v31) = 1;
    sub_1009B57A4(&qword_101697F40, &type metadata accessor for Date);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v24 + 32))(&v15[v12[5]], v18, v20);
    v34 = 2;
    sub_1009B569C();
    v30 = 0;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v21 = &v15[v12[6]];
    v22 = v32;
    *v21 = v31;
    *(v21 + 1) = v22;
    *(v21 + 2) = v33;
    v34 = 3;
    sub_1009B56F0();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v19 + 8))(v28, v29);
    v15[v12[7]] = v31;
    sub_100991F98(v15, v23);
    sub_100007BAC(a1);
    sub_1009B5744(v15, type metadata accessor for KeyGenerationBeaconInfo);
  }
}

uint64_t sub_1009B4668(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016B0F40, &unk_1013D0030);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v13[-v8 - 8];
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_1009B5E54();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v18 = *v3;
  v15 = *v3;
  v14 = 0;
  sub_10012C038(&v18, v13);
  sub_10049DF20();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  sub_100016590(v15, *(&v15 + 1));
  if (!v2)
  {
    v17 = v3[1];
    v15 = v3[1];
    v14 = 1;
    sub_10012BFDC(&v17, v13);
    sub_100313230();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v15, *(&v15 + 1));
    v15 = v3[2];
    v16 = v15;
    v14 = 2;
    sub_1009B5EA8(&v16, v13);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100006654(v15, *(&v15 + 1));
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1009B4998()
{
  v1 = 0x6574614472696170;
  v2 = 1937335659;
  if (*v0 != 2)
  {
    v2 = 1701869940;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1009B4A08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1009B58E8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1009B4A30(uint64_t a1)
{
  v2 = sub_1009B55E4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1009B4A6C(uint64_t a1)
{
  v2 = sub_1009B55E4();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_1009B4AD8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = *v3;
  Hasher.init(_seed:)();
  a3(v5);
  return Hasher._finalize()();
}

Swift::Int sub_1009B4B30(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = *v4;
  Hasher.init(_seed:)();
  a4(v6);
  return Hasher._finalize()();
}

uint64_t sub_1009B4B84()
{
  v1 = 0x6553646572616873;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000015;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x4B65746176697270;
  }
}

uint64_t sub_1009B4BF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1009B5A58(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1009B4C18(uint64_t a1)
{
  v2 = sub_1009B5E54();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1009B4C54(uint64_t a1)
{
  v2 = sub_1009B5E54();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1009B4C90@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1009B5B84(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

void sub_1009B4CEC(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for KeyGenerationBeaconInfo() + 24));
  v4 = v3[1];
  v5 = v3[5];
  if (v4 >> 60 == 15 || v5 >> 60 == 15)
  {
    v7 = 0;
    v9 = 0;
    v4 = 0;
    v12 = 0;
    v5 = 0;
    v8 = 0xF000000000000000;
LABEL_9:
    *a1 = v7;
    a1[1] = v8;
    a1[2] = v9;
    a1[3] = v4;
    a1[4] = v12;
    a1[5] = v5;
    return;
  }

  v9 = *v3;
  v10 = v3[2];
  v11 = v3[3];
  v12 = v3[4];
  sub_1009B53BC(*v3, v3[1], v10, v11, v12, v3[5], sub_100017D5C, sub_1002DBC68);
  sub_1002DBC68(v12, v5);
  sub_100017D5C(v9, v4);
  sub_10002EA98(57, v9, v4, v13);
  sub_100496F68(v13[0], v13[1], &v14);
  v8 = v15;
  if (v15 >> 60 != 15)
  {
    v7 = v14;
    sub_100017D5C(v9, v4);
    sub_1009B53BC(v9, v4, v10, v11, v12, v5, sub_100016590, sub_100006654);
    goto LABEL_9;
  }

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1009B4EC0()
{
  v1 = 0x794D646E69662ELL;
  v2 = 0x646567616E616D2ELL;
  if (*v0 != 2)
  {
    v2 = 0x6574726F706D692ELL;
  }

  if (*v0)
  {
    v1 = 0x6C61646E6174732ELL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1009B4F48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = __chkstk_darwin(v5);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v30 - v11;
  if (qword_1016952A0 != -1)
  {
    swift_once();
  }

  v32 = v2;
  v13 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_1000076D4(v13, qword_10177C788);
  Row.subscript.getter();
  if (qword_1016952D0 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v13, qword_10177C818);
  Row.subscript.getter();
  v14 = v6[2];
  v14(a2, v10, v5);
  v15 = a2 + *(type metadata accessor for BeaconIdentifier() + 20);
  v33 = v12;
  v14(v15, v12, v5);
  if (qword_1016952D8 != -1)
  {
    swift_once();
  }

  v16 = sub_1000BC4D4(&qword_101699D78, &unk_1013BF4B0);
  sub_1000076D4(v16, qword_10177C830);
  v17 = type metadata accessor for KeyGenerationBeaconInfo();
  v18 = v17[5];
  v19 = type metadata accessor for Date();
  v31 = v18;
  Row.subscript.getter();
  if (qword_1016952F0 != -1)
  {
    swift_once();
  }

  v20 = sub_1000BC4D4(&qword_101699DE8, &qword_101393120);
  sub_1000076D4(v20, qword_10177C878);
  sub_100029580();
  Row.subscript.getter();
  v21 = v34;
  v22 = v33;
  if (v34 >= 4)
  {
    sub_100991400();
    swift_allocError();
    *v27 = 5;
    swift_willThrow();
    v28 = type metadata accessor for Row();
    (*(*(v28 - 8) + 8))(a1, v28);
    v29 = v6[1];
    v29(v10, v5);
    v29(v22, v5);
    sub_1009B5744(a2, type metadata accessor for BeaconIdentifier);
    return (*(*(v19 - 8) + 8))(a2 + v31, v19);
  }

  else
  {
    v23 = type metadata accessor for Row();
    (*(*(v23 - 8) + 8))(a1, v23);
    v24 = v6[1];
    v24(v10, v5);
    result = (v24)(v22, v5);
    *(a2 + v17[7]) = v21;
    v26 = (a2 + v17[6]);
    *v26 = xmmword_10138BBF0;
    v26[1] = 0u;
    v26[2] = 0u;
  }

  return result;
}

void sub_1009B53BC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void), void (*a8)(uint64_t, uint64_t))
{
  if (a2 >> 60 != 15)
  {
    a7();
    (a7)(a3, a4);

    a8(a5, a6);
  }
}

void sub_1009B5460()
{
  type metadata accessor for BeaconIdentifier();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v1 <= 0x3F)
    {
      sub_1009B5504();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1009B5504()
{
  if (!qword_1016B0EA8)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1016B0EA8);
    }
  }
}

uint64_t sub_1009B5554(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1009B5590()
{
  result = qword_1016B0EE0;
  if (!qword_1016B0EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B0EE0);
  }

  return result;
}

unint64_t sub_1009B55E4()
{
  result = qword_1016B0EF0;
  if (!qword_1016B0EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B0EF0);
  }

  return result;
}

uint64_t sub_1009B5638(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BeaconIdentifier();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1009B569C()
{
  result = qword_1016B0F00;
  if (!qword_1016B0F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B0F00);
  }

  return result;
}

unint64_t sub_1009B56F0()
{
  result = qword_1016B0F08;
  if (!qword_1016B0F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B0F08);
  }

  return result;
}

uint64_t sub_1009B5744(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1009B57A4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1009B57EC()
{
  result = qword_1016B0F18;
  if (!qword_1016B0F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B0F18);
  }

  return result;
}

unint64_t sub_1009B5840()
{
  result = qword_1016B0F20;
  if (!qword_1016B0F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B0F20);
  }

  return result;
}

unint64_t sub_1009B5894()
{
  result = qword_1016B0F28;
  if (!qword_1016B0F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B0F28);
  }

  return result;
}

uint64_t sub_1009B58E8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x8000000101347590 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574614472696170 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1937335659 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    return 3;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1009B5A58(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4B65746176697270 && a2 == 0xEA00000000007965;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6553646572616873 && a2 == 0xEC00000074657263 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001013482E0 == a2)
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

uint64_t sub_1009B5B84@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1000BC4D4(&qword_1016B0F30, &qword_1013D0028);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_1009B5E54();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v27 = 0;
  sub_10049DECC();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v11 = v25;
  v23 = a2;
  v24 = v26;
  v27 = 1;
  sub_100313070();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v21 = v25;
  v22 = v26;
  v27 = 2;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  v12 = v25;
  v13 = v26;
  v14 = v11;
  v15 = v11;
  v16 = v24;
  sub_100017D5C(v15, v24);
  v18 = v21;
  v17 = v22;
  sub_100017D5C(v21, v22);
  sub_1002DBC68(v12, v13);
  sub_100007BAC(a1);
  sub_100016590(v14, v16);
  sub_100016590(v18, v17);
  result = sub_100006654(v12, v13);
  v20 = v23;
  *v23 = v14;
  v20[1] = v16;
  v20[2] = v18;
  v20[3] = v17;
  v20[4] = v12;
  v20[5] = v13;
  return result;
}

unint64_t sub_1009B5E54()
{
  result = qword_1016B0F38;
  if (!qword_1016B0F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B0F38);
  }

  return result;
}

uint64_t sub_1009B5EA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016977A8, &qword_1013D6820);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1009B5F3C()
{
  result = qword_1016B0F48;
  if (!qword_1016B0F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B0F48);
  }

  return result;
}

unint64_t sub_1009B5F94()
{
  result = qword_1016B0F50;
  if (!qword_1016B0F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B0F50);
  }

  return result;
}

unint64_t sub_1009B5FEC()
{
  result = qword_1016B0F58;
  if (!qword_1016B0F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B0F58);
  }

  return result;
}

unint64_t sub_1009B6044()
{
  result = qword_1016B0F60;
  if (!qword_1016B0F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B0F60);
  }

  return result;
}

unint64_t sub_1009B609C()
{
  result = qword_1016B0F68;
  if (!qword_1016B0F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B0F68);
  }

  return result;
}

unint64_t sub_1009B60F4()
{
  result = qword_1016B0F70;
  if (!qword_1016B0F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B0F70);
  }

  return result;
}

void *sub_1009B6150@<X0>(void *a1@<X8>)
{
  v2._object = 0x8000000101367730;
  v2._countAndFlagsBits = 0xD000000000000010;
  prohibitAsyncContext(functionName:)(v2);
  result = sub_1009BD934();
  *a1 = result;
  return result;
}

uint64_t sub_1009B6194()
{
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  if (qword_101694B28 != -1)
  {
    swift_once();
  }

  return sub_10013F190(qword_1016B0F98, 0, 0);
}

uint64_t sub_1009B622C@<X0>(void *a1@<X8>)
{
  if (qword_101694B58 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  *a1 = *(off_1016B0FC8 + 5);
}

uint64_t sub_1009B62D4()
{
  type metadata accessor for LocalPairingMonitor();
  v0 = swift_allocObject();
  v1 = sub_1000BC4D4(&qword_1016B1260, &unk_1013D02F0);
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  *(v0 + 16) = PassthroughSubject.init()();
  sub_1000041A4(&qword_1016B1268, &qword_1016B1260, &unk_1013D02F0);

  v4 = Publisher.eraseToAnyPublisher()();

  *(v0 + 24) = v4;
  qword_1016B0F88 = v0;
  return result;
}

uint64_t sub_1009B63BC()
{
  if (qword_101694B28 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for FinderStateManager(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();

  result = sub_1002EC088(v3);
  qword_1016B0F90 = result;
  return result;
}

uint64_t sub_1009B643C()
{
  type metadata accessor for FMIPStateManager();
  swift_allocObject();
  v0 = sub_1004F23D4();
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  result = sub_10013F190(v0, 0, 0);
  qword_1016B0F98 = v0;
  return result;
}

uint64_t sub_1009B64FC(uint64_t a1, void (*a2)(void), uint64_t (*a3)(void), uint64_t *a4)
{
  a2(0);
  swift_allocObject();
  result = a3();
  *a4 = result;
  return result;
}

void *sub_1009B6550()
{
  if (qword_101694B18 != -1)
  {
    swift_once();
  }

  type metadata accessor for CloudKitIDSUpdateManager();
  swift_allocObject();

  result = sub_100422334(v0);
  qword_1016B0FA8 = result;
  return result;
}

void *sub_1009B65D0()
{
  result = sub_1009B65F0();
  qword_1016B0FB0 = result;
  return result;
}

void *sub_1009B65F0()
{
  v17 = type metadata accessor for OS_dispatch_queue.Attributes();
  v0 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  v1 = type metadata accessor for DispatchQoS();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v3 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101694B18 != -1)
  {
    swift_once();
  }

  type metadata accessor for CloudKitIDSUpdateManager();
  swift_allocObject();

  v16 = sub_100422334(v8);
  type metadata accessor for Cryptor();
  swift_allocObject();
  v15 = sub_1010B54C0(0x74536E6F63616542, 0xEE0079654B65726FLL, 0x74536E6F63616542, 0xEB0000000065726FLL);
  if (qword_101694B10 != -1)
  {
    swift_once();
  }

  v9 = qword_1016B0F80;
  sub_1000BC488();
  (*(v4 + 104))(v7, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v3);

  static DispatchQoS.unspecified.getter();
  v18 = _swiftEmptyArrayStorage;
  sub_1009BD8EC(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_1000041A4(&qword_10169BB70, &unk_101695580, &qword_101385D90);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v10 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v11 = type metadata accessor for BeaconStore(0);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  return sub_100A96C98(v15, v9, v16, v10);
}

id sub_1009B6970()
{
  if (qword_101694B40 != -1)
  {
    swift_once();
  }

  v0 = objc_allocWithZone(type metadata accessor for TagCommandManager());

  result = sub_10089263C(v1, sub_1009BE654, 0);
  qword_1016B0FB8 = result;
  return result;
}

id sub_1009B6A00()
{
  v0 = swift_dynamicCastObjCProtocolConditional();
  if (v0)
  {
    swift_unknownObjectRetain();
  }

  v1 = [objc_allocWithZone(CLFindMyAccessoryManager) initWithDelegate:v0 delegateQueue:0];
  swift_unknownObjectRelease();
  return v1;
}

void *sub_1009B6A88()
{
  result = sub_1009B6AA8();
  qword_1016B0FC0 = result;
  return result;
}

void *sub_1009B6AA8()
{
  if (qword_101694B40 != -1)
  {
    swift_once();
  }

  v0 = qword_1016B0FB0;
  if (qword_101694B28 != -1)
  {
    swift_once();
  }

  v1 = qword_1016B0F98;
  if (qword_101694B10 != -1)
  {
    swift_once();
  }

  v2 = qword_1016B0F80;
  if (qword_101694B18 != -1)
  {
    swift_once();
  }

  v3 = qword_1016B0F88;
  if (qword_101694B48 != -1)
  {
    swift_once();
  }

  v4 = qword_1016B0FB8;
  if (qword_101694B30 != -1)
  {
    swift_once();
  }

  v5 = qword_1016B0FA0;
  if (qword_101694B60 != -1)
  {
    swift_once();
  }

  v6 = qword_1016B0FD0;
  v7 = type metadata accessor for BeaconManagerService();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();

  v10 = v4;

  return sub_100A2CAD0(v0, v1, v2, v3, v5, v4, v6);
}

uint64_t *sub_1009B6CD4()
{
  result = sub_1009B6CF4();
  off_1016B0FC8 = result;
  return result;
}

uint64_t *sub_1009B6CF4()
{
  if (qword_101694B50 != -1)
  {
    swift_once();
  }

  v0 = qword_1016B0FC0;
  if (qword_101694B40 != -1)
  {
    swift_once();
  }

  v1 = qword_1016B0FB0;
  v2 = qword_101694B28;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = qword_1016B0F98;
  v4 = qword_101694B38;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = qword_1016B0FA8;
  v6 = type metadata accessor for BeaconManagerService();
  v17[3] = v6;
  v17[4] = &off_101643D38;
  v17[0] = v0;
  type metadata accessor for BeaconSharingManager();
  v7 = swift_allocObject();
  v8 = sub_10015049C(v17, v6);
  v9 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v17[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11);
  v13 = *v11;

  v14 = sub_1009BC820(v13, v1, v3, v5, v7);

  sub_100007BAC(v17);
  return v14;
}

void *sub_1009B6F44()
{
  if (qword_101694B40 != -1)
  {
    swift_once();
  }

  v0 = qword_1016B0FB0;
  v1 = qword_101694B30;

  if (v1 != -1)
  {
    swift_once();
  }

  v2 = qword_1016B0FA0;
  type metadata accessor for AccessoryMetadataManager();
  swift_allocObject();

  result = sub_10035ADBC(v0, v2);
  qword_1016B0FD0 = result;
  return result;
}

uint64_t sub_1009B7018(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1016951A8 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v5 = *(a1 + 56);
  swift_beginAccess();
  v6 = v5;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = qword_10177C528;
  qword_10177C528 = 0x8000000000000000;
  sub_100FFE0D8(a2, a3, v6, isUniquelyReferenced_nonNull_native);

  qword_10177C528 = v10;
  return swift_endAccess();
}

void *sub_1009B710C(void *a1)
{
  v10 = &type metadata for FindMyNetworkPublishDateProviderFactory;
  v11 = &off_101612AA8;
  swift_defaultActor_initialize();
  a1[14] = 0xD00000000000001DLL;
  a1[15] = 0x8000000101367710;
  v2 = type metadata accessor for DeviceIdentityUtility();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  v5 = swift_allocObject();
  swift_defaultActor_initialize();
  v6 = OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certExpiryDate;
  v7 = type metadata accessor for Date();
  (*(*(v7 - 8) + 56))(v5 + v6, 1, 1, v7);
  *(v5 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_refKey) = 0;
  *(v5 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certs) = _swiftEmptyArrayStorage;
  *(v5 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_signingType) = 4;
  a1[16] = v5;
  sub_1000BC4D4(&qword_1016B1270, &qword_101390A00);
  a1[17] = AsyncKeyedThrottle.__allocating_init(throttleInterval:)();
  sub_10000A748(&v9, (a1 + 18));
  return a1;
}

uint64_t sub_1009B723C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[14] = a4;
  v5[15] = a5;
  v5[12] = a2;
  v5[13] = a3;
  v7 = *(*(sub_1000BC4D4(&qword_1016B7C50, &qword_1013DD730) - 8) + 64) + 15;
  v5[16] = swift_task_alloc();
  v8 = *(*(type metadata accessor for UUID() - 8) + 64) + 15;
  v5[17] = swift_task_alloc();
  v9 = *(*(sub_1000BC4D4(&qword_101698E38, &unk_101395BA0) - 8) + 64) + 15;
  v5[18] = swift_task_alloc();
  v5[19] = sub_1009BD8EC(&unk_1016B1240, type metadata accessor for BTDiscoveryManager);
  v10 = type metadata accessor for BubbleManager();
  v5[5] = v10;
  v5[6] = &off_10164DA50;
  v5[2] = a1;
  v5[20] = sub_1009BD8EC(&qword_1016B7E00, type metadata accessor for SystemMonitorService);
  v5[21] = sub_1009BD8EC(&qword_1016B1250, &type metadata accessor for PairingService);
  type metadata accessor for DiscoveryService();
  v5[22] = swift_allocObject();
  sub_10015049C((v5 + 2), v10);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64) + 15;
  v13 = swift_task_alloc();
  v5[23] = v13;
  (*(v11 + 16))();
  v14 = *v13;
  v5[10] = v10;
  v5[11] = &off_10164DA50;
  v5[7] = v14;

  return _swift_task_switch(sub_1009B74C0, 0, 0);
}

uint64_t sub_1009B74C0()
{
  v1 = v0[22];
  v3 = v0[17];
  v2 = v0[18];
  v25 = v0[16];
  swift_defaultActor_initialize();
  v1[14] = 0xD000000000000010;
  v1[15] = 0x8000000101367670;
  v4 = type metadata accessor for UserSessionStateManager();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  v7 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v7 + 14) = 0;
  *(v7 + 15) = 0;
  *(v7 + 16) = _swiftEmptyArrayStorage;
  *(v7 + 17) = _swiftEmptyArrayStorage;
  v8 = OBJC_IVAR____TtC12searchpartyd23UserSessionStateManager_state;
  v9 = enum case for UserSessionState.idle(_:);
  v10 = type metadata accessor for UserSessionState();
  (*(*(v10 - 8) + 104))(&v7[v8], v9, v10);
  v1[16] = v7;
  type metadata accessor for WorkItemQueue();
  v11 = type metadata accessor for WorkItemQueue.WarningOptions();
  v12 = *(*(v11 - 8) + 56);
  v12(v2, 1, 1, v11);
  UUID.init()();
  v1[17] = WorkItemQueue.__allocating_init(name:identifier:warningOptions:)();
  v13 = sub_1000BC4D4(&qword_1016B1258, &qword_1013D02E8);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v1[18] = AsyncStreamProvider.init()();
  v16 = type metadata accessor for DiscoveryServiceStateManager(0);
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  v19 = swift_allocObject();
  swift_defaultActor_initialize();
  v19[14] = 0;
  v19[15] = 0;
  v19[16] = _swiftEmptyArrayStorage;
  v19[17] = _swiftEmptyArrayStorage;
  type metadata accessor for DiscoveryState(0);
  swift_storeEnumTagMultiPayload();
  v1[19] = v19;
  v12(v2, 1, 1, v11);
  UUID.init()();
  v1[20] = WorkItemQueue.__allocating_init(name:identifier:warningOptions:)();
  v1[21] = &_swiftEmptySetSingleton;
  v1[23] = 0;
  v1[24] = 0;
  v1[22] = _swiftEmptyDictionarySingleton;
  v1[25] = sub_10090ABB8(_swiftEmptyArrayStorage);
  v1[26] = 0;
  type metadata accessor for DiscoverySession();
  swift_allocObject();
  v1[27] = sub_100F04FA4();
  v1[28] = _swiftEmptyArrayStorage;
  type metadata accessor for TimeTracker();
  v1[29] = TimeTracker.__allocating_init()();
  v1[50] = 0;
  sub_10001F280((v0 + 7), (v1 + 30));
  v20 = type metadata accessor for RSSIValue();
  (*(*(v20 - 8) + 56))(v25, 1, 1, v20);
  v21 = swift_task_alloc();
  v0[24] = v21;
  *v21 = v0;
  v21[1] = sub_1009B7838;
  v22 = v0[16];
  v23 = v0[14];

  return sub_10059D518(v22);
}

uint64_t sub_1009B7838(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 192);
  v5 = *(*v2 + 128);
  v7 = *v2;
  *(v3 + 200) = a1;
  *(v3 + 208) = a2;

  sub_10000B3A8(v5, &qword_1016B7C50, &qword_1013DD730);

  return _swift_task_switch(sub_1009B7968, 0, 0);
}

uint64_t sub_1009B7968()
{
  v2 = *(v0 + 168);
  v1 = *(v0 + 176);
  v4 = *(v0 + 152);
  v3 = *(v0 + 160);
  v6 = *(v0 + 112);
  v5 = *(v0 + 120);
  v8 = *(v0 + 96);
  v7 = *(v0 + 104);
  *(v1 + 280) = *(v0 + 200);
  *(v1 + 296) = v8;
  *(v1 + 304) = v3;
  *(v1 + 312) = v7;
  *(v1 + 320) = v2;
  *(v1 + 328) = v6;
  *(v1 + 336) = v4;
  v9 = *v5;
  v10 = v5[1];
  v11 = v5[2];
  *(v1 + 392) = *(v5 + 6);
  *(v1 + 360) = v10;
  *(v1 + 376) = v11;
  *(v1 + 344) = v9;
  return _swift_task_switch(sub_1009B79C4, v1, 0);
}

uint64_t sub_1009B79C4()
{
  v1 = v0[23];
  v3 = v0[17];
  v2 = v0[18];
  v4 = v0[16];
  sub_100007BAC(v0 + 7);
  sub_100007BAC(v0 + 2);

  v5 = v0[1];
  v6 = v0[22];

  return v5(v6);
}

uint64_t sub_1009B7A64()
{
  v1 = *(*(sub_1000BC4D4(&qword_101698E38, &unk_101395BA0) - 8) + 64) + 15;
  v0[76] = swift_task_alloc();
  v2 = *(*(type metadata accessor for UUID() - 8) + 64) + 15;
  v0[77] = swift_task_alloc();
  v3 = *(*(sub_1000BC4D4(&unk_1016B0FE0, &unk_101391980) - 8) + 64) + 15;
  v0[78] = swift_task_alloc();
  v4 = sub_1000BC4D4(&qword_1016C2F20, &qword_1013F7790);
  v0[79] = v4;
  v5 = *(v4 - 8);
  v0[80] = v5;
  v6 = *(v5 + 64) + 15;
  v0[81] = swift_task_alloc();
  v7 = type metadata accessor for UnsafeBlockingQueueConfiguration();
  v0[82] = v7;
  v8 = *(v7 - 8);
  v0[83] = v8;
  v9 = *(v8 + 64) + 15;
  v0[84] = swift_task_alloc();

  return _swift_task_switch(sub_1009B7C24, 0, 0);
}

uint64_t sub_1009B7C24()
{
  v1 = v0[84];
  v2 = v0[83];
  v3 = v0[82];
  UnsafeBlockingQueueConfiguration.init(verbose:queueDurationThreshold:runDurationThreshold:)();
  setUnsafeQueueConfiguration(context:config:)();
  (*(v2 + 8))(v1, v3);
  v4 = async function pointer to unsafeBlocking<A>(context:_:)[1];
  v5 = swift_task_alloc();
  v0[85] = v5;
  v6 = sub_1000BC4D4(&unk_1016B0FF0, &qword_1013D0298);
  *v5 = v0;
  v5[1] = sub_1009B7D84;

  return unsafeBlocking<A>(context:_:)(v0 + 72, 0x655379636167654CLL, 0xEE00736563697672, sub_1009B6150, 0, v6);
}

uint64_t sub_1009B7D84()
{
  v1 = *(*v0 + 680);
  v3 = *v0;

  return _swift_task_switch(sub_1009B7E80, 0, 0);
}

uint64_t sub_1009B7E80()
{
  v1 = v0[72];
  if (*(v1 + 16))
  {
    type metadata accessor for LegacyServiceContainer();
    v2 = swift_allocObject();
    swift_defaultActor_initialize();
    v2[15] = 0xD000000000000017;
    v2[16] = 0x8000000101367180;
    v2[14] = v1;
    v3 = sub_100A5E68C(0, 1, 1, _swiftEmptyArrayStorage);
    v5 = v3[2];
    v4 = v3[3];
    if (v5 >= v4 >> 1)
    {
      v3 = sub_100A5E68C((v4 > 1), v5 + 1, 1, v3);
    }

    v6 = sub_1009BD8EC(&unk_101698D70, type metadata accessor for LegacyServiceContainer);
    v3[2] = v5 + 1;
    v7 = &v3[2 * v5];
    v7[4] = v2;
    v7[5] = v6;
  }

  else
  {
    v8 = v0[72];

    v3 = _swiftEmptyArrayStorage;
  }

  v0[86] = v3;
  v9 = async function pointer to unsafeBlocking<A>(_:)[1];
  v10 = swift_task_alloc();
  v0[87] = v10;
  *v10 = v0;
  v10[1] = sub_1009B8028;

  return unsafeBlocking<A>(_:)(v10, sub_1009B6194, 0, &type metadata for () + 8);
}

uint64_t sub_1009B8028()
{
  v1 = *(*v0 + 696);
  v3 = *v0;

  return _swift_task_switch(sub_1009B8124, 0, 0);
}

uint64_t sub_1009B8124()
{
  if (qword_101694B20 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 688);
  *(v0 + 704) = qword_1016B0F90;
  v2 = type metadata accessor for FinderStateObserver();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();

  v6 = sub_100847B54(v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v0 + 688);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = sub_100A5E68C(0, v8[2] + 1, 1, *(v0 + 688));
  }

  v10 = v8[2];
  v9 = v8[3];
  if (v10 >= v9 >> 1)
  {
    v8 = sub_100A5E68C((v9 > 1), v10 + 1, 1, v8);
  }

  v11 = sub_1009BD8EC(&unk_1016B1000, type metadata accessor for FinderStateObserver);
  v8[2] = v10 + 1;
  v12 = &v8[2 * v10];
  v12[4] = v6;
  v12[5] = v11;
  *(v0 + 240) = &type metadata for FindMyNetworkPublishDateProviderFactory;
  *(v0 + 248) = &off_101612AA8;
  type metadata accessor for FindMyNetworkPublisherService();
  v13 = swift_allocObject();
  sub_10015049C(v0 + 216, &type metadata for FindMyNetworkPublishDateProviderFactory);
  v14 = sub_1009B710C(v13);
  sub_100007BAC((v0 + 216));
  v16 = v8[2];
  v15 = v8[3];
  if (v16 >= v15 >> 1)
  {
    v8 = sub_100A5E68C((v15 > 1), v16 + 1, 1, v8);
  }

  v17 = sub_1009BD8EC(&unk_10169BA60, type metadata accessor for FindMyNetworkPublisherService);
  v8[2] = v16 + 1;
  v18 = &v8[2 * v16];
  v18[4] = v14;
  v18[5] = v17;
  type metadata accessor for ObservationPruneSchedulerService();
  v19 = swift_allocObject();
  swift_defaultActor_initialize();
  v19[14] = 0xD000000000000020;
  v19[15] = 0x80000001013671A0;
  v19[16] = 0;
  v21 = v8[2];
  v20 = v8[3];
  if (v21 >= v20 >> 1)
  {
    v8 = sub_100A5E68C((v20 > 1), v21 + 1, 1, v8);
  }

  v22 = sub_1009BD8EC(&qword_1016B1010, type metadata accessor for ObservationPruneSchedulerService);
  v8[2] = v21 + 1;
  v23 = &v8[2 * v21];
  v23[4] = v19;
  v23[5] = v22;
  *(v0 + 280) = &type metadata for FindMyNetworkPublishDateProviderFactory;
  *(v0 + 288) = &off_101612AA8;
  type metadata accessor for FindMyNetworkPublishActivityService();
  v24 = swift_allocObject();
  sub_10015049C(v0 + 256, &type metadata for FindMyNetworkPublishDateProviderFactory);
  *(v0 + 320) = &type metadata for FindMyNetworkPublishDateProviderFactory;
  *(v0 + 328) = &off_101612AA8;
  swift_defaultActor_initialize();
  *(v24 + 112) = 0xD000000000000023;
  *(v24 + 120) = 0x80000001013671D0;
  *(v24 + 168) = _swiftEmptyDictionarySingleton;
  *(v24 + 176) = 1;
  sub_10000A748((v0 + 296), v24 + 128);
  sub_100007BAC((v0 + 256));
  v26 = v8[2];
  v25 = v8[3];
  if (v26 >= v25 >> 1)
  {
    v8 = sub_100A5E68C((v25 > 1), v26 + 1, 1, v8);
  }

  v27 = sub_1009BD8EC(&qword_101696C78, type metadata accessor for FindMyNetworkPublishActivityService);
  v8[2] = v26 + 1;
  v28 = &v8[2 * v26];
  v28[4] = v24;
  v28[5] = v27;
  v29 = type metadata accessor for AdvertisementCacheService();
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  swift_allocObject();
  v32 = sub_100264750();
  v34 = v8[2];
  v33 = v8[3];
  if (v34 >= v33 >> 1)
  {
    v8 = sub_100A5E68C((v33 > 1), v34 + 1, 1, v8);
  }

  v35 = sub_1009BD8EC(&qword_10169BA20, type metadata accessor for AdvertisementCacheService);
  v8[2] = v34 + 1;
  v36 = &v8[2 * v34];
  v36[4] = v32;
  v36[5] = v35;
  type metadata accessor for FileAttributionService();
  v37 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v37 + 112) = 0xD000000000000016;
  *(v37 + 120) = 0x8000000101367200;
  v39 = v8[2];
  v38 = v8[3];
  if (v39 >= v38 >> 1)
  {
    v8 = sub_100A5E68C((v38 > 1), v39 + 1, 1, v8);
  }

  *(v0 + 712) = v8;
  v40 = sub_1009BD8EC(&qword_1016B1018, type metadata accessor for FileAttributionService);
  v8[2] = v39 + 1;
  v41 = &v8[2 * v39];
  v41[4] = v37;
  v41[5] = v40;
  type metadata accessor for AppActivity();
  *(v0 + 720) = swift_initStackObject();
  *(v0 + 728) = sub_100A586D8();
  if (qword_101694B18 != -1)
  {
    swift_once();
  }

  *(v0 + 736) = qword_1016B0F88;
  type metadata accessor for CloudKitIDSUpdateManager();
  *(v0 + 744) = swift_initStackObject();

  *(v0 + 752) = sub_100422334(v42);
  if (qword_101694B28 != -1)
  {
    swift_once();
  }

  v43 = qword_1016B0F98;
  v44 = type metadata accessor for PencilPairingService(0);
  v45 = *(v44 + 48);
  v46 = *(v44 + 52);
  swift_allocObject();

  v47 = swift_task_alloc();
  *(v0 + 760) = v47;
  *v47 = v0;
  v47[1] = sub_1009B8744;

  return sub_100D778CC(v43);
}

uint64_t sub_1009B8744(uint64_t a1)
{
  v2 = *(*v1 + 760);
  v4 = *v1;
  *(*v1 + 768) = a1;

  return _swift_task_switch(sub_1009B8844, 0, 0);
}

uint64_t sub_1009B8844()
{
  v1 = v0[96];
  v2 = v0[89];
  if (v1)
  {
    v3 = v2[2];
    v4 = v2[3];
    v5 = v0[96];

    if (v3 >= v4 >> 1)
    {
      v2 = sub_100A5E68C((v4 > 1), v3 + 1, 1, v2);
    }

    v6 = sub_1009BD8EC(&qword_10169A090, type metadata accessor for PencilPairingService);
    v2[2] = v3 + 1;
    v7 = &v2[2 * v3];
    v7[4] = v1;
    v7[5] = v6;
    type metadata accessor for LocalFindableLostModeDetectionService();
    swift_allocObject();
    v8 = sub_101025584();
    v10 = v2[2];
    v9 = v2[3];
    if (v10 >= v9 >> 1)
    {
      v2 = sub_100A5E68C((v9 > 1), v10 + 1, 1, v2);
    }

    v11 = sub_1009BD8EC(&unk_1016BC560, type metadata accessor for LocalFindableLostModeDetectionService);
    v2[2] = v10 + 1;
    v12 = &v2[2 * v10];
    v12[4] = v8;
    v12[5] = v11;
  }

  v0[97] = v2;
  type metadata accessor for AccessoryConnectionService();
  swift_allocObject();
  v13 = swift_task_alloc();
  v0[98] = v13;
  *v13 = v0;
  v13[1] = sub_1009B8A18;

  return sub_1008D26C0();
}

uint64_t sub_1009B8A18(uint64_t a1)
{
  v2 = *(*v1 + 784);
  v4 = *v1;
  *(*v1 + 792) = a1;

  return _swift_task_switch(sub_1009B8B18, 0, 0);
}

uint64_t sub_1009B8B18()
{
  v1 = v0[99];
  v2 = v0[97];
  if (v1)
  {
    v4 = v2[2];
    v3 = v2[3];
    if (v4 >= v3 >> 1)
    {
      v2 = sub_100A5E68C((v3 > 1), v4 + 1, 1, v0[97]);
    }

    v5 = sub_1009BD8EC(&unk_1016AD620, type metadata accessor for AccessoryConnectionService);
    v2[2] = v4 + 1;
    v6 = &v2[2 * v4];
    v6[4] = v1;
    v6[5] = v5;
  }

  v0[100] = v2;
  type metadata accessor for LocalFindableConnectionMaterialService();
  v7 = swift_allocObject();
  v0[101] = v7;
  swift_defaultActor_initialize();
  v7[14] = 0xD000000000000026;
  v7[15] = 0x8000000101367220;
  v8 = type metadata accessor for XPCSessionManager();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  v11 = XPCSessionManager.init(name:)();
  v7[17] = 0;
  v7[18] = 0;
  v7[16] = v11;

  return _swift_task_switch(sub_1009B8C74, 0, 0);
}

uint64_t sub_1009B8C74()
{
  v1 = v0[100];
  v3 = v1[2];
  v2 = v1[3];
  if (v3 >= v2 >> 1)
  {
    v1 = sub_100A5E68C((v2 > 1), v3 + 1, 1, v0[100]);
  }

  v0[102] = v1;
  v4 = v0[101];
  v5 = sub_1009BD8EC(&unk_1016B1020, type metadata accessor for LocalFindableConnectionMaterialService);
  v1[2] = v3 + 1;
  v6 = &v1[2 * v3];
  v6[4] = v4;
  v6[5] = v5;
  type metadata accessor for CloudStorageService();
  swift_allocObject();
  v7 = swift_task_alloc();
  v0[103] = v7;
  *v7 = v0;
  v7[1] = sub_1009B8D9C;

  return sub_10084AD24();
}

uint64_t sub_1009B8D9C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 824);
  v7 = *v2;
  *(v3 + 832) = a1;
  *(v3 + 840) = v1;

  if (v1)
  {
    v5 = sub_1009B9108;
  }

  else
  {
    v5 = sub_1009B8EB4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1009B8EB4()
{
  v1 = v0[104];
  v2 = v0[102];
  v3 = v2[2];
  v4 = v2[3];

  if (v3 >= v4 >> 1)
  {
    v2 = sub_100A5E68C((v4 > 1), v3 + 1, 1, v2);
    v1 = v0[104];
  }

  v0[106] = v2;
  v5 = sub_1009BD8EC(&unk_1016AA520, type metadata accessor for CloudStorageService);
  v2[2] = v3 + 1;
  v6 = &v2[2 * v3];
  v6[4] = v1;
  v6[5] = v5;
  type metadata accessor for LocalStorageService();
  swift_allocObject();
  v7 = swift_task_alloc();
  v0[107] = v7;
  *v7 = v0;
  v7[1] = sub_1009B8FF0;

  return sub_100B9D2C0();
}

uint64_t sub_1009B8FF0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 856);
  v7 = *v2;
  *(v3 + 864) = a1;
  *(v3 + 872) = v1;

  if (v1)
  {
    v5 = sub_1009BA284;
  }

  else
  {
    v5 = sub_1009B9124;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1009B9124()
{
  v1 = v0[108];
  v2 = v0[106];
  v3 = v2[2];
  v4 = v2[3];

  if (v3 >= v4 >> 1)
  {
    v2 = sub_100A5E68C((v4 > 1), v3 + 1, 1, v2);
    v1 = v0[108];
  }

  v0[110] = v2;
  v5 = sub_1009BD8EC(&unk_1016B1030, type metadata accessor for LocalStorageService);
  v2[2] = v3 + 1;
  v6 = &v2[2 * v3];
  v6[4] = v1;
  v6[5] = v5;
  type metadata accessor for AccessoryPairingAnalyticsService();
  swift_allocObject();
  v7 = swift_task_alloc();
  v0[111] = v7;
  *v7 = v0;
  v7[1] = sub_1009B9260;

  return sub_10026AF7C();
}

uint64_t sub_1009B9260(uint64_t a1)
{
  v2 = *(*v1 + 888);
  v4 = *v1;
  *(*v1 + 896) = a1;

  return _swift_task_switch(sub_1009B9360, 0, 0);
}

uint64_t sub_1009B9360()
{
  v1 = v0[110];
  v3 = v1[2];
  v2 = v1[3];
  if (v3 >= v2 >> 1)
  {
    v1 = sub_100A5E68C((v2 > 1), v3 + 1, 1, v0[110]);
  }

  v0[113] = v1;
  v4 = v0[112];
  v5 = sub_1009BD8EC(&qword_10169BCB0, type metadata accessor for AccessoryPairingAnalyticsService);
  v1[2] = v3 + 1;
  v6 = &v1[2 * v3];
  v6[4] = v4;
  v6[5] = v5;
  type metadata accessor for AccessoryConfigurationService();
  swift_allocObject();
  v7 = swift_task_alloc();
  v0[114] = v7;
  *v7 = v0;
  v7[1] = sub_1009B9488;

  return sub_1010637D4();
}

uint64_t sub_1009B9488(uint64_t a1)
{
  v2 = *(*v1 + 912);
  v4 = *v1;
  *(*v1 + 920) = a1;

  return _swift_task_switch(sub_1009B9588, 0, 0);
}

uint64_t sub_1009B9588()
{
  v108 = v0;
  v1 = v0[113];
  v3 = v1[2];
  v2 = v1[3];
  if (v3 >= v2 >> 1)
  {
    v1 = sub_100A5E68C((v2 > 1), v3 + 1, 1, v0[113]);
  }

  v4 = v0[115];
  v5 = sub_1009BD8EC(&unk_1016B1040, type metadata accessor for AccessoryConfigurationService);
  v1[2] = v3 + 1;
  v6 = &v1[2 * v3];
  v6[4] = v4;
  v6[5] = v5;
  if (qword_101694B40 != -1)
  {
    swift_once();
  }

  v7 = qword_1016B0FB0;
  type metadata accessor for BeaconStoreActor();
  v8 = swift_allocObject();
  v0[116] = v8;
  swift_retain_n();
  swift_defaultActor_initialize();
  v8[14] = 0xD000000000000010;
  v8[15] = 0x800000010134A8C0;
  v105 = v7;
  v8[16] = v7;
  v10 = v1[2];
  v9 = v1[3];

  if (v10 >= v9 >> 1)
  {
    v1 = sub_100A5E68C((v9 > 1), v10 + 1, 1, v1);
  }

  v11 = v0[88];
  v12 = sub_1009BD8EC(&qword_101698D20, type metadata accessor for BeaconStoreActor);
  v1[2] = v10 + 1;
  v13 = &v1[2 * v10];
  v13[4] = v8;
  v13[5] = v12;
  v14 = *(v7 + 64);
  v15 = OBJC_IVAR____TtC12searchpartyd18FinderStateManager_beaconFindMyAccessoryAssociatedPublisher;
  if (*(v11 + OBJC_IVAR____TtC12searchpartyd18FinderStateManager_beaconFindMyAccessoryAssociatedPublisher))
  {
    v16 = *(v7 + 64);
  }

  else
  {
    v17 = v0[88];
    v103 = v8;
    v18 = v0[81];
    v104 = v0[80];
    v102 = v0[79];
    v19 = v0[78];
    v0[73] = v14;
    v20 = *(v17 + 16);
    v0[74] = v20;
    v21 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    (*(*(v21 - 8) + 56))(v19, 1, 1, v21);
    swift_retain_n();
    v101 = v20;
    sub_1000BC4D4(&unk_1016B1050, &unk_1013A4F40);
    sub_1000BC488();
    sub_1000041A4(&unk_1016B1060, &unk_1016B1050, &unk_1013A4F40);
    sub_1009BD8EC(&qword_1016AF9C0, sub_1000BC488);
    Publisher.receive<A>(on:options:)();
    sub_10000B3A8(v19, &unk_1016B0FE0, &unk_101391980);

    sub_1000041A4(&unk_1016B1070, &qword_1016C2F20, &qword_1013F7790);

    v22 = v18;
    v8 = v103;
    v23 = Publisher<>.sink(receiveValue:)();

    (*(v104 + 8))(v22, v102);
    v24 = *(v17 + OBJC_IVAR____TtC12searchpartyd18FinderStateManager_cancellable);
    *(v17 + OBJC_IVAR____TtC12searchpartyd18FinderStateManager_cancellable) = v23;

    v25 = *(v11 + v15);
  }

  *(v11 + v15) = v14;

  v26 = type metadata accessor for OwnDevicePublishActivityService();
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  v29 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v29 + 112) = 0xD00000000000001FLL;
  *(v29 + 120) = 0x80000001013672B0;
  v30 = OBJC_IVAR____TtC12searchpartyd31OwnDevicePublishActivityService_configurationSubscription;
  v31 = sub_1000BC4D4(&qword_1016B1E70, &qword_10138CDB0);
  (*(*(v31 - 8) + 56))(v29 + v30, 1, 1, v31);
  *(v29 + OBJC_IVAR____TtC12searchpartyd31OwnDevicePublishActivityService_activity) = 0;
  v33 = v1[2];
  v32 = v1[3];
  if (v33 >= v32 >> 1)
  {
    v1 = sub_100A5E68C((v32 > 1), v33 + 1, 1, v1);
  }

  v34 = sub_1009BD8EC(&unk_1016B1080, type metadata accessor for OwnDevicePublishActivityService);
  v1[2] = v33 + 1;
  v35 = &v1[2 * v33];
  v35[4] = v29;
  v35[5] = v34;
  type metadata accessor for CompanionPublishActivity();
  v36 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v36 + 112) = 0xD000000000000018;
  *(v36 + 120) = 0x80000001013672D0;
  v38 = v1[2];
  v37 = v1[3];
  if (v38 >= v37 >> 1)
  {
    v1 = sub_100A5E68C((v37 > 1), v38 + 1, 1, v1);
  }

  v39 = sub_1009BD8EC(&qword_1016A00B0, type metadata accessor for CompanionPublishActivity);
  v1[2] = v38 + 1;
  v40 = &v1[2 * v38];
  v40[4] = v36;
  v40[5] = v39;
  v41 = type metadata accessor for ObservationDatabase();
  v42 = *(v41 + 48);
  v43 = *(v41 + 52);
  swift_allocObject();
  v44 = sub_1011BB354(0);
  v0[117] = v44;
  v0[118] = type metadata accessor for BeaconKeyService();
  memset(v106, 0, sizeof(v106));
  v107 = 0;
  swift_allocObject();
  swift_retain_n();
  v45 = sub_10098F800(v106, v44);
  v47 = v1[2];
  v46 = v1[3];
  if (v47 >= v46 >> 1)
  {
    v1 = sub_100A5E68C((v46 > 1), v47 + 1, 1, v1);
  }

  v48 = sub_1009BD8EC(&unk_1016B1090, type metadata accessor for BeaconKeyService);
  v0[119] = v48;
  v1[2] = v47 + 1;
  v49 = &v1[2 * v47];
  v49[4] = v45;
  v49[5] = v48;
  type metadata accessor for DistributedNotificationService();
  swift_allocObject();
  v50 = sub_100D56608();
  v52 = v1[2];
  v51 = v1[3];
  if (v52 >= v51 >> 1)
  {
    v1 = sub_100A5E68C((v51 > 1), v52 + 1, 1, v1);
  }

  v53 = sub_1009BD8EC(&qword_1016A51C8, type metadata accessor for DistributedNotificationService);
  v1[2] = v52 + 1;
  v54 = &v1[2 * v52];
  v54[4] = v50;
  v54[5] = v53;
  type metadata accessor for NotifyWhenFoundManager();
  swift_allocObject();
  v55 = sub_1003585D4();
  v57 = v1[2];
  v56 = v1[3];
  if (v57 >= v56 >> 1)
  {
    v1 = sub_100A5E68C((v56 > 1), v57 + 1, 1, v1);
  }

  v58 = sub_1009BD8EC(&unk_1016B10A0, type metadata accessor for NotifyWhenFoundManager);
  v1[2] = v57 + 1;
  v59 = &v1[2 * v57];
  v59[4] = v55;
  v59[5] = v58;
  My = type metadata accessor for Feature.FindMy();
  v0[120] = My;
  v0[45] = My;
  v61 = sub_1009BD8EC(&qword_1016AF950, &type metadata accessor for Feature.FindMy);
  v0[121] = v61;
  v0[46] = v61;
  v62 = sub_1000280DC(v0 + 42);
  v63 = enum case for Feature.FindMy.networkScalingImprovements(_:);
  v64 = *(My - 8);
  v65 = *(v64 + 104);
  v0[122] = v65;
  v0[123] = (v64 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v65(v62, v63, My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100007BAC(v0 + 42);
  if (My)
  {
    type metadata accessor for DeviceBeaconPayloadPublisher();
    swift_allocObject();

    v67 = sub_100853228(v66);
    v69 = v1[2];
    v68 = v1[3];
    if (v69 >= v68 >> 1)
    {
      v1 = sub_100A5E68C((v68 > 1), v69 + 1, 1, v1);
    }

    v70 = sub_1009BD8EC(&qword_101698D50, type metadata accessor for DeviceBeaconPayloadPublisher);
    v1[2] = v69 + 1;
    v71 = &v1[2 * v69];
    v71[4] = v67;
    v71[5] = v70;
  }

  v72 = v0[77];
  type metadata accessor for DelegatedBeaconPayloadPublisher();
  v73 = swift_allocObject();
  v0[124] = v73;

  swift_defaultActor_initialize();
  v73[14] = 0xD00000000000001FLL;
  v73[15] = 0x80000001013672F0;
  v0[125] = type metadata accessor for WorkItemQueue();
  UUID.init()();
  v73[16] = WorkItemQueue.__allocating_init(identifier:)();
  sub_1000BC4D4(&unk_1016B10B0, &qword_1013D02A0);
  v74 = swift_allocObject();
  sub_1000BC4D4(&qword_1016A6010, &qword_101391C30);
  v75 = swift_allocObject();
  *(v75 + 16) = 0;
  v74[5] = v75;
  UUID.init()();
  v74[6] = WorkItemQueue.__allocating_init(identifier:)();
  v74[7] = _swiftEmptyDictionarySingleton;
  v73[17] = sub_100F04FA4();
  v73[18] = v8;
  v76 = v1[2];
  v77 = v1[3];

  if (v76 >= v77 >> 1)
  {
    v1 = sub_100A5E68C((v77 > 1), v76 + 1, 1, v1);
  }

  v78 = sub_1009BD8EC(&unk_1016B10C0, type metadata accessor for DelegatedBeaconPayloadPublisher);
  v1[2] = v76 + 1;
  v79 = &v1[2 * v76];
  v79[4] = v73;
  v79[5] = v78;
  type metadata accessor for APSNotificationService();
  swift_allocObject();
  v80 = sub_100E802F8(0, 0);
  v82 = v1[2];
  v81 = v1[3];
  if (v82 >= v81 >> 1)
  {
    v1 = sub_100A5E68C((v81 > 1), v82 + 1, 1, v1);
  }

  v83 = sub_1009BD8EC(&qword_101698D40, type metadata accessor for APSNotificationService);
  v1[2] = v82 + 1;
  v84 = &v1[2 * v82];
  v84[4] = v80;
  v84[5] = v83;
  type metadata accessor for WildModeAssociationRecordsPublisher();
  swift_allocObject();
  v85 = sub_100BA4BF8();
  v0[126] = v85;
  v86 = v1[2];
  v87 = v1[3];

  if (v86 >= v87 >> 1)
  {
    v1 = sub_100A5E68C((v87 > 1), v86 + 1, 1, v1);
  }

  v88 = sub_1009BD8EC(&unk_1016B10D0, type metadata accessor for WildModeAssociationRecordsPublisher);
  v1[2] = v86 + 1;
  v89 = &v1[2 * v86];
  v89[4] = v85;
  v89[5] = v88;
  type metadata accessor for BatteryLevelService();
  v90 = swift_allocObject();
  swift_defaultActor_initialize();
  v90[14] = 0xD000000000000013;
  v90[15] = 0x8000000101367310;
  v90[16] = _swiftEmptyDictionarySingleton;
  v92 = v1[2];
  v91 = v1[3];
  if (v92 >= v91 >> 1)
  {
    v1 = sub_100A5E68C((v91 > 1), v92 + 1, 1, v1);
  }

  v0[127] = v1;
  v93 = sub_1009BD8EC(&qword_1016A24B8, type metadata accessor for BatteryLevelService);
  v1[2] = v92 + 1;
  v94 = &v1[2 * v92];
  v94[4] = v90;
  v94[5] = v93;
  v95 = objc_allocWithZone(type metadata accessor for TagCommandManager());
  v0[128] = sub_10089263C(v105, sub_1009BE654, 0);
  v96 = type metadata accessor for OwnerCommandService(0);
  v97 = *(v96 + 48);
  v98 = *(v96 + 52);
  swift_allocObject();
  v99 = swift_task_alloc();
  v0[129] = v99;
  *v99 = v0;
  v99[1] = sub_1009BA2A0;

  return sub_10121B1FC();
}

uint64_t sub_1009BA2A0(uint64_t a1)
{
  v2 = *(*v1 + 1032);
  v4 = *v1;
  *(*v1 + 1040) = a1;

  return _swift_task_switch(sub_1009BA3A0, 0, 0);
}

uint64_t sub_1009BA3A0()
{
  v129 = v0;
  v1 = *(v0 + 1016);
  v3 = v1[2];
  v2 = v1[3];
  if (v3 >= v2 >> 1)
  {
    v1 = sub_100A5E68C((v2 > 1), v3 + 1, 1, *(v0 + 1016));
  }

  v4 = *(v0 + 1040);
  v5 = sub_1009BD8EC(&unk_1016B10E0, type metadata accessor for OwnerCommandService);
  v1[2] = v3 + 1;
  v6 = &v1[2 * v3];
  v6[4] = v4;
  v6[5] = v5;
  type metadata accessor for FirstUnlockService();
  Unlock = FirstUnlockService.__allocating_init()();
  v9 = v1[2];
  v8 = v1[3];
  if (v9 >= v8 >> 1)
  {
    v1 = sub_100A5E68C((v8 > 1), v9 + 1, 1, v1);
  }

  v10 = *(v0 + 984);
  v11 = *(v0 + 976);
  v12 = sub_1009BD8EC(&qword_10169BD10, &type metadata accessor for FirstUnlockService);
  v123 = *(v0 + 960);
  v1[2] = v9 + 1;
  v13 = &v1[2 * v9];
  v13[4] = Unlock;
  v13[5] = v12;
  *(v0 + 400) = v123;
  v14 = sub_1000280DC((v0 + 376));
  v15 = enum case for Feature.FindMy.itemSharing(_:);
  v11(v14, enum case for Feature.FindMy.itemSharing(_:), v123);
  v16 = isFeatureEnabled(_:)();
  sub_100007BAC((v0 + 376));
  if (v16)
  {
    type metadata accessor for FamilyCircleService();
    v17 = swift_allocObject();
    swift_defaultActor_initialize();
    v17[14] = 0xD000000000000013;
    v17[15] = 0x8000000101367430;
    v17[16] = _swiftEmptyArrayStorage;
    v17[17] = 0;
    v17[18] = 0;
    v17[19] = 0;
    v17[20] = _swiftEmptyDictionarySingleton;
    v19 = v1[2];
    v18 = v1[3];
    if (v19 >= v18 >> 1)
    {
      v1 = sub_100A5E68C((v18 > 1), v19 + 1, 1, v1);
    }

    v20 = sub_1009BD8EC(&unk_1016AF840, type metadata accessor for FamilyCircleService);
    v1[2] = v19 + 1;
    v21 = &v1[2 * v19];
    v21[4] = v17;
    v21[5] = v20;
    type metadata accessor for IDSTransportService_ItemSharingCrossAccount();
    swift_allocObject();
    v22 = sub_100D1BA90();
    v24 = v1[2];
    v23 = v1[3];
    if (v24 >= v23 >> 1)
    {
      v1 = sub_100A5E68C((v23 > 1), v24 + 1, 1, v1);
    }

    v25 = sub_1009BD8EC(&qword_1016B1180, type metadata accessor for IDSTransportService_ItemSharingCrossAccount);
    v1[2] = v24 + 1;
    v26 = &v1[2 * v24];
    v26[4] = v22;
    v26[5] = v25;
    type metadata accessor for PeerTrustService();
    v27 = swift_allocObject();
    swift_defaultActor_initialize();
    v27[14] = 0xD000000000000010;
    v27[15] = 0x8000000101367450;
    v27[16] = 0;
    v28 = sub_1009BD8EC(&qword_1016B1188, type metadata accessor for PeerTrustService);
    type metadata accessor for PeerTrustMessageRouter();
    v29 = swift_allocObject();

    swift_defaultActor_initialize();
    *(v29 + 112) = v27;
    *(v29 + 120) = v28;
    v30 = v27[16];
    v27[16] = v29;

    v32 = v1[2];
    v31 = v1[3];
    if (v32 >= v31 >> 1)
    {
      v1 = sub_100A5E68C((v31 > 1), v32 + 1, 1, v1);
    }

    v33 = *(v0 + 1000);
    v34 = *(v0 + 616);
    v35 = *(v0 + 608);
    v36 = sub_1009BD8EC(&qword_1016B1190, type metadata accessor for PeerTrustService);
    v1[2] = v32 + 1;
    v37 = &v1[2 * v32];
    v37[4] = v27;
    v37[5] = v36;
    type metadata accessor for CircleTrustService();
    v38 = swift_allocObject();
    swift_defaultActor_initialize();
    v38[14] = 0xD000000000000012;
    v38[15] = 0x8000000101367470;
    v38[16] = 0;
    v39 = type metadata accessor for WorkItemQueue.WarningOptions();
    (*(*(v39 - 8) + 56))(v35, 1, 1, v39);
    UUID.init()();
    v38[17] = WorkItemQueue.__allocating_init(name:identifier:warningOptions:)();
    v38[18] = 0;
    v41 = v1[2];
    v40 = v1[3];
    if (v41 >= v40 >> 1)
    {
      v1 = sub_100A5E68C((v40 > 1), v41 + 1, 1, v1);
    }

    v42 = sub_1009BD8EC(&unk_101698CE0, type metadata accessor for CircleTrustService);
    v1[2] = v41 + 1;
    v43 = &v1[2 * v41];
    v43[4] = v38;
    v43[5] = v42;
  }

  v44 = *(v0 + 984);
  v45 = *(v0 + 976);
  v124 = *(v0 + 960);
  *(v0 + 440) = v124;
  v46 = sub_1000280DC((v0 + 416));
  v47 = enum case for Feature.FindMy.managedCBPeripheral(_:);
  v45(v46, enum case for Feature.FindMy.managedCBPeripheral(_:), v124);
  LOBYTE(v44) = isFeatureEnabled(_:)();
  sub_100007BAC((v0 + 416));
  if (v44)
  {
    type metadata accessor for StandaloneBeaconService();
    v48 = swift_allocObject();
    swift_defaultActor_initialize();
    v48[14] = 0xD000000000000017;
    v48[15] = 0x8000000101367410;
    v48[17] = 0;
    v48[18] = 0;
    v48[19] = _swiftEmptyArrayStorage;
    v49 = type metadata accessor for StandaloneBeaconDatabase();
    v50 = *(v49 + 48);
    v51 = *(v49 + 52);
    swift_allocObject();
    v48[16] = sub_10084DF10(0);
    v53 = v1[2];
    v52 = v1[3];
    if (v53 >= v52 >> 1)
    {
      v1 = sub_100A5E68C((v52 > 1), v53 + 1, 1, v1);
    }

    v54 = *(v0 + 944);
    v55 = *(v0 + 936);
    v56 = sub_1009BD8EC(&qword_10169F450, type metadata accessor for StandaloneBeaconService);
    v1[2] = v53 + 1;
    v57 = &v1[2 * v53];
    v57[4] = v48;
    v57[5] = v56;
    v128 = 0;
    memset(v127, 0, sizeof(v127));
    swift_allocObject();

    v58 = sub_10098F800(v127, v55);
    v60 = v1[2];
    v59 = v1[3];
    if (v60 >= v59 >> 1)
    {
      v121 = v58;
      v1 = sub_100A5E68C((v59 > 1), v60 + 1, 1, v1);
      v58 = v121;
    }

    v61 = *(v0 + 952);
    v62 = *(v0 + 936);
    v1[2] = v60 + 1;
    v63 = &v1[2 * v60];
    v63[4] = v58;
    v63[5] = v61;
    type metadata accessor for ObservationStoreService();
    swift_allocObject();

    v65 = sub_1010D0C90(v64);
    v67 = v1[2];
    v66 = v1[3];
    if (v67 >= v66 >> 1)
    {
      v1 = sub_100A5E68C((v66 > 1), v67 + 1, 1, v1);
    }

    v68 = *(v0 + 936);

    v69 = sub_1009BD8EC(&qword_1016AA450, type metadata accessor for ObservationStoreService);
    v1[2] = v67 + 1;
    v70 = &v1[2 * v67];
    v70[4] = v65;
    v70[5] = v69;
  }

  else
  {
    v71 = *(v0 + 936);
  }

  v72 = *(v0 + 984);
  v73 = *(v0 + 976);
  v125 = *(v0 + 960);
  *(v0 + 480) = v125;
  v74 = sub_1000280DC((v0 + 456));
  v73(v74, v47, v125);
  LOBYTE(v72) = isFeatureEnabled(_:)();
  sub_100007BAC((v0 + 456));
  if (v72)
  {
    v75 = type metadata accessor for Feature.Bluetooth();
    *(v0 + 560) = v75;
    *(v0 + 568) = sub_1009BD8EC(&qword_1016B1168, &type metadata accessor for Feature.Bluetooth);
    v76 = sub_1000280DC((v0 + 536));
    (*(*(v75 - 8) + 104))(v76, enum case for Feature.Bluetooth.sentinel(_:), v75);
    LOBYTE(v75) = isFeatureEnabled(_:)();
    sub_100007BAC((v0 + 536));
    if (v75)
    {
      type metadata accessor for LeechScanningService();
      v77 = swift_allocObject();
      swift_defaultActor_initialize();
      v77[14] = 0xD000000000000014;
      v77[15] = 0x80000001013673F0;
      v77[16] = _swiftEmptyArrayStorage;
      v79 = v1[2];
      v78 = v1[3];
      if (v79 >= v78 >> 1)
      {
        v1 = sub_100A5E68C((v78 > 1), v79 + 1, 1, v1);
      }

      v80 = sub_1009BD8EC(&unk_1016B1170, type metadata accessor for LeechScanningService);
      v1[2] = v79 + 1;
      v81 = &v1[2 * v79];
      v81[4] = v77;
      v81[5] = v80;
    }
  }

  updated = type metadata accessor for SimpleBeaconUpdateService(0);
  v83 = *(updated + 48);
  v84 = *(updated + 52);
  swift_allocObject();
  v85 = sub_10094A1F0();
  v87 = v1[2];
  v86 = v1[3];
  if (v87 >= v86 >> 1)
  {
    v1 = sub_100A5E68C((v86 > 1), v87 + 1, 1, v1);
  }

  v88 = sub_1009BD8EC(&unk_1016B10F0, type metadata accessor for SimpleBeaconUpdateService);
  v1[2] = v87 + 1;
  v89 = &v1[2 * v87];
  v89[4] = v85;
  v89[5] = v88;
  type metadata accessor for AccountService();
  v90 = swift_allocObject();
  swift_defaultActor_initialize();
  strcpy((v90 + 112), "AccountService");
  *(v90 + 127) = -18;
  v92 = v1[2];
  v91 = v1[3];
  if (v92 >= v91 >> 1)
  {
    v1 = sub_100A5E68C((v91 > 1), v92 + 1, 1, v1);
  }

  v93 = sub_1009BD8EC(&qword_101697890, type metadata accessor for AccountService);
  v1[2] = v92 + 1;
  v94 = &v1[2 * v92];
  v94[4] = v90;
  v94[5] = v93;
  type metadata accessor for FMIPService();
  v95 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v95 + 112) = 0x7672655350494D46;
  *(v95 + 120) = 0xEB00000000656369;
  v97 = v1[2];
  v96 = v1[3];
  if (v97 >= v96 >> 1)
  {
    v1 = sub_100A5E68C((v96 > 1), v97 + 1, 1, v1);
  }

  *(v0 + 1048) = v1;
  v98 = *(v0 + 984);
  v99 = *(v0 + 976);
  v100 = sub_1009BD8EC(&unk_1016B1100, type metadata accessor for FMIPService);
  v126 = *(v0 + 960);
  v1[2] = v97 + 1;
  v101 = &v1[2 * v97];
  v101[4] = v95;
  v101[5] = v100;
  *(v0 + 520) = v126;
  v102 = sub_1000280DC((v0 + 496));
  v99(v102, v15, v126);
  v103 = isFeatureEnabled(_:)();
  sub_100007BAC((v0 + 496));
  if (v103)
  {
    v104 = async function pointer to unsafeBlocking<A>(_:)[1];
    v105 = swift_task_alloc();
    *(v0 + 1056) = v105;
    v106 = type metadata accessor for SharingScheduler();
    *v105 = v0;
    v105[1] = sub_1009BB1B0;

    return unsafeBlocking<A>(_:)(v0 + 600, sub_1009B622C, 0, v106);
  }

  else
  {
    type metadata accessor for LeaderCheckService();
    v107 = swift_allocObject();
    swift_defaultActor_initialize();
    *(v107 + 112) = 0xD000000000000015;
    *(v107 + 120) = 0x8000000101367330;
    v109 = v1[2];
    v108 = v1[3];
    if (v109 >= v108 >> 1)
    {
      v1 = sub_100A5E68C((v108 > 1), v109 + 1, 1, v1);
    }

    v110 = sub_1009BD8EC(&unk_1016969D0, type metadata accessor for LeaderCheckService);
    v1[2] = v109 + 1;
    v111 = &v1[2 * v109];
    v111[4] = v107;
    v111[5] = v110;
    type metadata accessor for DelegatedShareMetadataService();
    v112 = swift_allocObject();
    swift_defaultActor_initialize();
    v112[14] = 0xD00000000000001DLL;
    v112[15] = 0x8000000101367350;
    type metadata accessor for KeyDropInterface();
    v113 = swift_allocObject();
    swift_defaultActor_initialize();
    *(v113 + 112) = 0;
    *(v113 + 120) = 0;
    v112[16] = v113;
    v115 = v1[2];
    v114 = v1[3];
    if (v115 >= v114 >> 1)
    {
      v1 = sub_100A5E68C((v114 > 1), v115 + 1, 1, v1);
    }

    *(v0 + 1064) = v1;
    v116 = *(v0 + 928);
    v117 = sub_1009BD8EC(&unk_101698C70, type metadata accessor for DelegatedShareMetadataService);
    v1[2] = v115 + 1;
    v118 = &v1[2 * v115];
    v118[4] = v112;
    v118[5] = v117;
    type metadata accessor for BTFindingService();
    swift_allocObject();

    v119 = swift_task_alloc();
    *(v0 + 1072) = v119;
    *v119 = v0;
    v119[1] = sub_1009BB768;
    v120 = *(v0 + 928);

    return sub_100F9E904(v120);
  }
}

uint64_t sub_1009BB1B0()
{
  v1 = *(*v0 + 1056);
  v3 = *v0;

  return _swift_task_switch(sub_1009BB2AC, 0, 0);
}

uint64_t sub_1009BB2AC()
{
  v1 = v0[131];
  v2 = v0[116];
  v3 = v0[75];
  v4 = type metadata accessor for BeaconSharingService(0);
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();

  v7 = sub_1001B9D8C(v2, v3);

  v8 = *(v1 + 16);
  v9 = *(v1 + 24);

  v10 = v0[131];
  if (v8 >= v9 >> 1)
  {
    v10 = sub_100A5E68C((v9 > 1), v8 + 1, 1, v0[131]);
  }

  v11 = v0[116];
  v12 = sub_1009BD8EC(&unk_101696950, type metadata accessor for BeaconSharingService);
  v10[2] = v8 + 1;
  v13 = &v10[2 * v8];
  v13[4] = v7;
  v13[5] = v12;
  v14 = qword_101694EE0;

  if (v14 != -1)
  {
    swift_once();
  }

  v15 = v0[125];
  v16 = v0[116];
  v17 = v0[77];
  v18 = v0[76];
  v19 = qword_10177C138;
  type metadata accessor for ItemSharingNotificationsService();
  v20 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v20 + 112) = 0xD00000000000001FLL;
  *(v20 + 120) = 0x80000001013673D0;
  v21 = type metadata accessor for WorkItemQueue.WarningOptions();
  (*(*(v21 - 8) + 56))(v18, 1, 1, v21);
  UUID.init()();
  v22 = WorkItemQueue.__allocating_init(name:identifier:warningOptions:)();
  *(v20 + 208) = _swiftEmptyArrayStorage;
  *(v20 + 216) = _swiftEmptyArrayStorage;
  *(v20 + 224) = _swiftEmptyArrayStorage;
  *(v20 + 128) = v19;
  *(v20 + 136) = v16;
  *(v20 + 144) = 0u;
  *(v20 + 160) = 0u;
  *(v20 + 176) = 0u;
  *(v20 + 192) = 0;
  *(v20 + 200) = v22;
  swift_unownedRetain();
  v24 = v10[2];
  v23 = v10[3];
  if (v24 >= v23 >> 1)
  {
    v10 = sub_100A5E68C((v23 > 1), v24 + 1, 1, v10);
  }

  v25 = sub_1009BD8EC(&qword_1016B1160, type metadata accessor for ItemSharingNotificationsService);
  v10[2] = v24 + 1;
  v26 = &v10[2 * v24];
  v26[4] = v20;
  v26[5] = v25;
  type metadata accessor for LeaderCheckService();
  v27 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v27 + 112) = 0xD000000000000015;
  *(v27 + 120) = 0x8000000101367330;
  v29 = v10[2];
  v28 = v10[3];
  if (v29 >= v28 >> 1)
  {
    v10 = sub_100A5E68C((v28 > 1), v29 + 1, 1, v10);
  }

  v30 = sub_1009BD8EC(&unk_1016969D0, type metadata accessor for LeaderCheckService);
  v10[2] = v29 + 1;
  v31 = &v10[2 * v29];
  v31[4] = v27;
  v31[5] = v30;
  type metadata accessor for DelegatedShareMetadataService();
  v32 = swift_allocObject();
  swift_defaultActor_initialize();
  v32[14] = 0xD00000000000001DLL;
  v32[15] = 0x8000000101367350;
  type metadata accessor for KeyDropInterface();
  v33 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v33 + 112) = 0;
  *(v33 + 120) = 0;
  v32[16] = v33;
  v35 = v10[2];
  v34 = v10[3];
  if (v35 >= v34 >> 1)
  {
    v10 = sub_100A5E68C((v34 > 1), v35 + 1, 1, v10);
  }

  v0[133] = v10;
  v36 = v0[116];
  v37 = sub_1009BD8EC(&unk_101698C70, type metadata accessor for DelegatedShareMetadataService);
  v10[2] = v35 + 1;
  v38 = &v10[2 * v35];
  v38[4] = v32;
  v38[5] = v37;
  type metadata accessor for BTFindingService();
  swift_allocObject();

  v39 = swift_task_alloc();
  v0[134] = v39;
  *v39 = v0;
  v39[1] = sub_1009BB768;
  v40 = v0[116];

  return sub_100F9E904(v40);
}

uint64_t sub_1009BB768(uint64_t a1)
{
  v2 = *(*v1 + 1072);
  v4 = *v1;
  *(*v1 + 1080) = a1;

  return _swift_task_switch(sub_1009BB868, 0, 0);
}

uint64_t sub_1009BB868()
{
  v1 = *(v0 + 1064);
  v3 = v1[2];
  v2 = v1[3];
  if (v3 >= v2 >> 1)
  {
    v1 = sub_100A5E68C((v2 > 1), v3 + 1, 1, *(v0 + 1064));
  }

  v4 = *(v0 + 1080);
  v5 = *(v0 + 736);
  v6 = sub_1009BD8EC(&qword_1016C2130, type metadata accessor for BTFindingService);
  v1[2] = v3 + 1;
  v7 = &v1[2 * v3];
  v7[4] = v4;
  v7[5] = v6;
  type metadata accessor for AirPodsLEPairingService();
  swift_allocObject();

  v9 = sub_1000E5314(v8);
  if (v9)
  {
    v10 = v9;
    v12 = v1[2];
    v11 = v1[3];
    if (v12 >= v11 >> 1)
    {
      v1 = sub_100A5E68C((v11 > 1), v12 + 1, 1, v1);
    }

    v13 = sub_1009BD8EC(&unk_1016B1150, type metadata accessor for AirPodsLEPairingService);
    v1[2] = v12 + 1;
    v14 = &v1[2 * v12];
    v14[4] = v10;
    v14[5] = v13;
  }

  type metadata accessor for SystemMonitorService();
  swift_allocObject();
  v15 = sub_1004A761C();
  *(v0 + 1088) = v15;
  v16 = v1[2];
  v17 = v1[3];

  if (v16 >= v17 >> 1)
  {
    v1 = sub_100A5E68C((v17 > 1), v16 + 1, 1, v1);
  }

  v18 = sub_1009BD8EC(&qword_1016B1110, type metadata accessor for SystemMonitorService);
  v1[2] = v16 + 1;
  v19 = &v1[2 * v16];
  v19[4] = v15;
  v19[5] = v18;
  type metadata accessor for PairingService();
  type metadata accessor for PairingServiceProxyImplementation();
  v20 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v20 + 112) = 0xD00000000000001FLL;
  *(v20 + 120) = 0x8000000101367370;
  sub_1009BD8EC(&qword_1016B1118, type metadata accessor for PairingServiceProxyImplementation);
  v21 = PairingService.__allocating_init(proxy:)();
  *(v0 + 1096) = v21;
  v22 = v1[2];
  v23 = v1[3];

  if (v22 >= v23 >> 1)
  {
    v1 = sub_100A5E68C((v23 > 1), v22 + 1, 1, v1);
  }

  *(v0 + 1104) = v1;
  v24 = sub_1009BD8EC(&unk_1016B1120, &type metadata accessor for PairingService);
  v1[2] = v22 + 1;
  v25 = &v1[2 * v22];
  v25[4] = v21;
  v25[5] = v24;
  v26 = objc_allocWithZone(type metadata accessor for BubbleManager());

  v27 = [v26 init];
  type metadata accessor for BTDiscoveryManager();
  v28 = swift_allocObject();
  swift_defaultActor_initialize();
  if (qword_101694D38 != -1)
  {
    swift_once();
  }

  *(v0 + 160) = xmmword_1013D0260;
  *(v0 + 176) = xmmword_1013D0270;
  *(v0 + 192) = 0x4014000000000000;
  *(v0 + 200) = xmmword_1016B7850;
  v29 = swift_task_alloc();
  *(v0 + 1112) = v29;
  *v29 = v0;
  v29[1] = sub_1009BBC98;

  return sub_1009B723C(v27, v15, v21, v28, v0 + 160);
}

uint64_t sub_1009BBC98(uint64_t a1)
{
  v2 = *(*v1 + 1112);
  v4 = *v1;
  *(*v1 + 1120) = a1;

  return _swift_task_switch(sub_1009BBD98, 0, 0);
}

uint64_t sub_1009BBD98()
{
  v1 = v0[138];
  v3 = v1[2];
  v2 = v1[3];
  if (v3 >= v2 >> 1)
  {
    v1 = sub_100A5E68C((v2 > 1), v3 + 1, 1, v0[138]);
  }

  v4 = v0[140];
  v5 = v0[92];
  v6 = sub_1009BD8EC(&unk_1016B7D70, type metadata accessor for DiscoveryService);
  v1[2] = v3 + 1;
  v7 = &v1[2 * v3];
  v7[4] = v4;
  v7[5] = v6;
  type metadata accessor for LocalPairingMonitorService();
  v8 = swift_allocObject();

  swift_defaultActor_initialize();
  v8[14] = 0xD00000000000001ALL;
  v8[15] = 0x8000000101367390;
  v8[16] = v5;
  v10 = v1[2];
  v9 = v1[3];
  if (v10 >= v9 >> 1)
  {
    v1 = sub_100A5E68C((v9 > 1), v10 + 1, 1, v1);
  }

  v11 = v0[117];
  v12 = sub_1009BD8EC(&qword_1016B1130, type metadata accessor for LocalPairingMonitorService);
  v1[2] = v10 + 1;
  v13 = &v1[2 * v10];
  v13[4] = v8;
  v13[5] = v12;
  v14 = sub_1000BC4D4(&qword_1016B1138, &qword_1013D02B0);
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();

  v17 = AsyncStreamProvider.init()();
  MyServiceDeviceStoreService = type metadata accessor for FindMyServiceDeviceStoreService();
  v19 = *(MyServiceDeviceStoreService + 48);
  v20 = *(MyServiceDeviceStoreService + 52);
  v21 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v21 + 112) = 0xD00000000000001FLL;
  *(v21 + 120) = 0x80000001013673B0;
  *(v21 + 144) = 0;
  *(v21 + 152) = 0;
  v22 = OBJC_IVAR____TtC12searchpartyd31FindMyServiceDeviceStoreService_subscriptionTTL;
  v23 = type metadata accessor for Date();
  (*(*(v23 - 8) + 56))(v21 + v22, 1, 1, v23);
  *(v21 + OBJC_IVAR____TtC12searchpartyd31FindMyServiceDeviceStoreService_isDevicesFetched) = 0;
  *(v21 + 128) = v11;
  *(v21 + 136) = v17;
  v25 = v1[2];
  v24 = v1[3];
  if (v25 >= v24 >> 1)
  {
    v1 = sub_100A5E68C((v24 > 1), v25 + 1, 1, v1);
  }

  v26 = sub_1009BD8EC(&unk_1016B1140, type metadata accessor for FindMyServiceDeviceStoreService);
  v1[2] = v25 + 1;
  v27 = &v1[2 * v25];
  v27[4] = v21;
  v27[5] = v26;
  if (qword_101694B50 != -1)
  {
    swift_once();
  }

  v28 = *(qword_1016B0FC0 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_tagCommandManager);
  type metadata accessor for SPObserverAnalytics();
  swift_allocObject();
  v29 = sub_10075A060(v28);
  v31 = v1[2];
  v30 = v1[3];
  v52 = v29;
  if (v31 >= v30 >> 1)
  {
    v1 = sub_100A5E68C((v30 > 1), v31 + 1, 1, v1);
  }

  v32 = v0[137];
  v33 = v0[136];
  v34 = v0[126];
  v35 = v0[124];
  v36 = v0[117];
  v37 = v0[116];
  v44 = v0[128];
  v45 = v0[104];
  v38 = v0[94];
  v39 = v0[91];
  v46 = v0[108];
  v47 = v0[84];
  v48 = v0[81];
  v49 = v0[78];
  v50 = v0[77];
  v51 = v0[76];

  v40 = sub_1009BD8EC(&qword_1016A8E78, type metadata accessor for SPObserverAnalytics);
  v1[2] = v31 + 1;
  v41 = &v1[2 * v31];
  v41[4] = v52;
  v41[5] = v40;

  v42 = v0[1];

  return v42(v1);
}

void sub_1009BC23C(uint64_t a1, void *a2)
{
  v3 = v2;
  v35 = type metadata accessor for OS_dispatch_queue.Attributes();
  v6 = *(*(v35 - 8) + 64);
  __chkstk_darwin(v35);
  v34[2] = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v10 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000BC4D4(&qword_1016A6010, &qword_101391C30);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v2 + 32) = v15;
  *(v2 + 40) = 0;
  *(v2 + 64) = sub_100909C98(_swiftEmptyArrayStorage);
  *(v2 + 72) = sub_100909A8C(_swiftEmptyArrayStorage);
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  *(v2 + 112) = 0u;
  *(v2 + 128) = 0u;
  *(v2 + 144) = 0u;
  *(v2 + 160) = 0u;
  v36 = a1;
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  v34[1] = sub_1000BC488();
  v39 = 0;
  v40 = 0xE000000000000000;

  _StringGuts.grow(_:)(50);

  v39 = 0xD000000000000030;
  v40 = 0x8000000101367630;
  v16._countAndFlagsBits = a1;
  v16._object = a2;
  String.append(_:)(v16);
  (*(v11 + 104))(v14, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v10);
  static DispatchQoS.unspecified.getter();
  v39 = _swiftEmptyArrayStorage;
  sub_1009BD8EC(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_1000041A4(&qword_10169BB70, &unk_101695580, &qword_101385D90);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v17 = a2;
  *(v2 + 48) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v18 = objc_allocWithZone(IDSService);
  v19 = String._bridgeToObjectiveC()();
  v20 = [v18 initWithService:v19];

  if (v20)
  {
    v3[3]._object = v20;
    if (qword_101695190 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_1000076D4(v21, qword_10177C4F0);

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v37 = v3;
      v38 = v25;
      *v24 = 136446210;
      v39 = 60;
      v40 = 0xE100000000000000;
      sub_1000BC4D4(&qword_1016B11D0, &qword_1013D02D0);
      sub_1000041A4(&unk_1016B1230, &qword_1016B11D0, &qword_1013D02D0);
      v26._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
      String.append(_:)(v26);

      v27._countAndFlagsBits = 32;
      v27._object = 0xE100000000000000;
      String.append(_:)(v27);
      v28._countAndFlagsBits = CustomStringConvertible<>.addressDescription.getter();
      String.append(_:)(v28);

      v29._countAndFlagsBits = 32;
      v29._object = 0xE100000000000000;
      String.append(_:)(v29);
      String.append(_:)(v3[1]);
      v30._countAndFlagsBits = 62;
      v30._object = 0xE100000000000000;
      String.append(_:)(v30);

      v31 = sub_1000136BC(v39, v40, &v38);

      *(v24 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v22, v23, "Created %{public}s", v24, 0xCu);
      sub_100007BAC(v25);
    }

    else
    {
    }

    if (qword_1016951A0 != -1)
    {
      v32 = swift_once();
    }

    __chkstk_darwin(v32);
    v33 = v36;
    v34[-4] = v3;
    v34[-3] = v33;
    v34[-2] = v17;
    OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  }

  else
  {
    __break(1u);
  }
}

uint64_t *sub_1009BC820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v85 = a4;
  v84 = a3;
  v92 = a2;
  v7 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v79 = &v78 - v9;
  v90 = sub_1000BC4D4(&qword_1016B1198, &qword_1013D02B8);
  v88 = *(v90 - 8);
  v10 = *(v88 + 64);
  __chkstk_darwin(v90);
  v86 = &v78 - v11;
  v91 = sub_1000BC4D4(&unk_1016B11A0, &qword_1013D02C0);
  v89 = *(v91 - 8);
  v12 = *(v89 + 64);
  __chkstk_darwin(v91);
  v87 = &v78 - v13;
  v14 = type metadata accessor for UUID();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v83 = &v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000BC4D4(&qword_101698E38, &unk_101395BA0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v82 = &v78 - v19;
  v80 = type metadata accessor for URL();
  v20 = *(*(v80 - 8) + 64);
  __chkstk_darwin(v80);
  v81 = &v78 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = type metadata accessor for OS_dispatch_queue.Attributes();
  v22 = *(*(v104 - 8) + 64);
  __chkstk_darwin(v104);
  v23 = type metadata accessor for DispatchQoS();
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v98 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v25 = *(v98 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v98);
  v28 = &v78 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107[3] = type metadata accessor for BeaconManagerService();
  v107[4] = &off_101643D38;
  v107[0] = a1;
  sub_1000BC4D4(&qword_1016A6010, &qword_101391C30);
  v29 = swift_allocObject();
  *(v29 + 16) = 0;
  v100 = a5;
  *(a5 + 16) = v29;
  *(a5 + 48) = 0;
  v97 = sub_1000BC488();
  v101 = enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:);
  v102 = *(v25 + 104);
  v99 = v25 + 104;
  v102(v28);
  static DispatchQoS.unspecified.getter();
  v105._countAndFlagsBits = _swiftEmptyArrayStorage;
  v30 = sub_1009BD8EC(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes);
  v96 = sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  v103 = sub_1000041A4(&qword_10169BB70, &unk_101695580, &qword_101385D90);
  v95 = v30;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v93 = v28;
  v31 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v32 = v100;
  *(v100 + 64) = 0;
  *(v32 + 72) = 0;
  *(v32 + 56) = v31;
  *(v32 + 80) = 1;
  *(v32 + 88) = 0;
  *(v32 + 96) = 0;
  v33 = v101;
  v34 = v98;
  (v102)(v28, v101, v98);
  static DispatchQoS.unspecified.getter();
  v105._countAndFlagsBits = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v35 = v93;
  *(v32 + 168) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v94 = "aconSharingManager";
  v36 = v34;
  v37 = v102;
  (v102)(v35, v33, v36);
  static DispatchQoS.unspecified.getter();
  v105._countAndFlagsBits = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v38 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v39 = v100;
  *(v100 + 176) = v38;
  v94 = "aconSharingManagerkeyUpdate";
  v40 = v98;
  (v37)(v35, v101, v98);
  static DispatchQoS.unspecified.getter();
  v105._countAndFlagsBits = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(v39 + 184) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v39 + 192) = sub_100909AB0(_swiftEmptyArrayStorage);
  v41 = v39;
  (v102)(v35, v101, v40);
  static DispatchQoS.unspecified.getter();
  v105._countAndFlagsBits = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v42 = v39;
  *(v39 + 200) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v39 + 208) = 0;
  *(v39 + 216) = 0;
  *(v39 + 224) = 0x4076800000000000;
  *(v39 + 240) = 0;
  *(v39 + 248) = 0;
  *(v39 + 232) = 0;
  v43 = sub_1000BC4D4(&unk_1016B11B0, &unk_101391880);
  v44 = *(v43 + 48);
  v45 = *(v43 + 52);
  swift_allocObject();
  *(v39 + 256) = PassthroughSubject.init()();
  *(v39 + 272) = 0;
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v47 = result;
    v104 = v43;
    v48 = MobileGestalt_copy_productType_obj();

    if (v48)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v49 = String.lowercased()();

    v105 = v49;
    sub_10058AE3C();
    sub_1000DF96C();
    static PartialMatchCase<>.first(containing:)();

    *(v39 + 280) = v106 != 5;
    *(v39 + 288) = 0;
    if (qword_101695218 != -1)
    {
      swift_once();
    }

    sub_1000076D4(v80, qword_1016C6BF8);
    v50 = v81;
    URL.appendingPathComponent(_:)();
    v51 = type metadata accessor for ShareAttemptTracker(0);
    v52 = *(v51 + 48);
    v53 = *(v51 + 52);
    swift_allocObject();
    *(v39 + 320) = sub_1010B1080(v50);
    v54 = sub_1000BC4D4(&qword_1016B11C8, &qword_1013D02C8);
    v55 = *(v54 + 48);
    v56 = *(v54 + 52);
    swift_allocObject();
    *(v39 + 328) = PassthroughSubject.init()();
    *(v39 + 344) = 0x404E000000000000;
    *(v39 + 352) = 0x403E000000000000;
    *(v39 + 360) = 6;
    type metadata accessor for WorkItemQueue();
    v57 = type metadata accessor for WorkItemQueue.WarningOptions();
    (*(*(v57 - 8) + 56))(v82, 1, 1, v57);
    UUID.init()();
    *(v39 + 368) = WorkItemQueue.__allocating_init(name:identifier:warningOptions:)();
    sub_10001F280(v107, v39 + 104);
    v58 = v92;
    v59 = v84;
    v41[18] = v92;
    v41[19] = v59;
    v41[20] = v85;
    type metadata accessor for SharingScheduler();
    swift_allocObject();

    v60 = sub_100ED1B44();
    v41[5] = v60;
    type metadata accessor for SecureLocationsMessagingServiceRelay();
    v61 = swift_allocObject();
    *(v61 + 40) = 0u;
    *(v61 + 56) = 0u;
    *(v61 + 72) = 0u;
    *(v61 + 88) = 0u;
    *(v61 + 104) = 0u;
    *(v61 + 120) = 0u;
    *(v61 + 16) = xmmword_1013D0280;
    *(v61 + 32) = 6;
    v41[3] = v61;
    sub_1000BC4D4(&qword_1016B11D0, &qword_1013D02D0);
    swift_allocObject();

    sub_1009BC23C(0xD000000000000021, 0x8000000101367600);
    v41[4] = v62;
    v105._countAndFlagsBits = _swiftEmptyArrayStorage;
    v63 = sub_1000BC4D4(&qword_1016B11D8, &qword_1013D02D8);
    v64 = *(v63 + 48);
    v65 = *(v63 + 52);
    swift_allocObject();
    v66 = CurrentValueSubject.init(_:)();
    v42[37] = v66;

    v42[38] = CurrentValueSubject.eraseToAnyCurrentValuePublisher()();
    v105._countAndFlagsBits = v66;
    sub_1000041A4(&qword_1016B11E0, &qword_1016B11D8, &qword_1013D02D8);
    v67 = v86;
    Publisher.dropFirst(_:)();
    sub_1000041A4(&qword_1016B11E8, &qword_1016B1198, &qword_1013D02B8);
    sub_1009BD72C();
    v68 = v87;
    v69 = v90;
    Publisher<>.removeDuplicates()();
    (*(v88 + 8))(v67, v69);
    sub_1000041A4(&qword_1016B1208, &unk_1016B11A0, &qword_1013D02C0);
    v70 = v91;
    v71 = Publisher.eraseToAnyPublisher()();
    (*(v89 + 8))(v68, v70);
    v42[39] = v71;
    v105._countAndFlagsBits = v42[32];
    sub_1000041A4(&qword_1016B1210, &unk_1016B11B0, &unk_101391880);
    v42[33] = Publisher.eraseToAnyPublisher()();
    v105._countAndFlagsBits = v42[41];
    sub_1000041A4(&qword_1016B1218, &qword_1016B11C8, &qword_1013D02C8);
    result = Publisher.eraseToAnyPublisher()();
    v42[42] = result;
    v72 = *(v58 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_instructionEventCoalescer);
    if (v72)
    {
      v105._countAndFlagsBits = *(v72 + 64);
      swift_allocObject();
      swift_weakInit();

      sub_1000BC4D4(&qword_1016B1220, &unk_1013F3B20);
      sub_1000041A4(&qword_1016B1228, &qword_1016B1220, &unk_1013F3B20);
      v73 = Publisher<>.sink(receiveValue:)();

      v74 = v42[36];
      v42[36] = v73;

      v75 = type metadata accessor for TaskPriority();
      v76 = v79;
      (*(*(v75 - 8) + 56))(v79, 1, 1, v75);
      v77 = swift_allocObject();
      v77[2] = 0;
      v77[3] = 0;
      v77[4] = v60;
      v77[5] = v42;

      sub_10025EDD4(0, 0, v76, &unk_1013D02E0, v77);

      sub_100007BAC(v107);
      return v42;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1009BD72C()
{
  result = qword_1016B11F0;
  if (!qword_1016B11F0)
  {
    sub_1000BC580(&qword_1016A4950, &qword_1013B1328);
    sub_1009BD7B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B11F0);
  }

  return result;
}

unint64_t sub_1009BD7B0()
{
  result = qword_1016B1200;
  if (!qword_1016B1200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B1200);
  }

  return result;
}

uint64_t sub_1009BD80C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100014650;

  return sub_100532548(a1, v4, v5, v7, v6);
}

uint64_t sub_1009BD8EC(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_1009BD934()
{
  v92 = type metadata accessor for OS_dispatch_queue.Attributes();
  v0 = *(*(v92 - 1) + 64);
  __chkstk_darwin(v92);
  v91 = v89 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for DispatchQoS();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9._countAndFlagsBits = 0xD000000000000019;
  v9._object = 0x8000000101367750;
  prohibitAsyncContext(functionName:)(v9);
  v10 = type metadata accessor for SchedulerService();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v13 = sub_100851AD8();
  v14 = sub_100A5E6B0(0, 1, 1, _swiftEmptyArrayStorage);
  v16 = v14[2];
  v15 = v14[3];
  if (v16 >= v15 >> 1)
  {
    v14 = sub_100A5E6B0((v15 > 1), v16 + 1, 1, v14);
  }

  v97 = v10;
  v98 = &off_101636CC0;
  *&v96 = v13;
  v14[2] = v16 + 1;
  sub_10000A748(&v96, &v14[5 * v16 + 4]);
  if (qword_101694B40 != -1)
  {
    swift_once();
  }

  v17 = qword_1016B0FB0;
  v18 = objc_allocWithZone(type metadata accessor for TagCommandManager());
  v19 = swift_retain_n();
  v20 = sub_10089263C(v19, sub_1009BE654, 0);
  v21 = qword_101694B30;

  if (v21 != -1)
  {
    swift_once();
  }

  v22 = qword_1016B0FA0;
  type metadata accessor for AccessoryMetadataManager();
  swift_allocObject();
  swift_retain_n();
  v93 = v22;
  v95 = sub_10035ADBC(v17, v22);
  v23 = v14[2];
  v24 = v14[3];

  if (v23 >= v24 >> 1)
  {
    v14 = sub_100A5E6B0((v24 > 1), v23 + 1, 1, v14);
  }

  v97 = type metadata accessor for BeaconStore(0);
  v98 = &off_101646210;
  *&v96 = v17;
  v14[2] = v23 + 1;
  sub_10000A748(&v96, &v14[5 * v23 + 4]);
  v90 = type metadata accessor for UnknownDiscoveryService();
  v25 = swift_allocObject();
  v89[2] = 0x8000000101367770;
  v25[2] = 0xD000000000000017;
  v25[3] = 0x8000000101367770;
  v26 = sub_1000BC488();
  v89[0] = "UnknownDiscoveryService";
  v89[1] = v26;
  (*(v5 + 104))(v8, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v4);

  v94 = v20;
  v27 = v95;

  static DispatchQoS.unspecified.getter();
  *&v96 = _swiftEmptyArrayStorage;
  sub_1009BD8EC(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_1000041A4(&qword_10169BB70, &unk_101695580, &qword_101385D90);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v25[5] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v28 = type metadata accessor for XPCSessionManager();
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  v25[6] = XPCSessionManager.init(name:)();
  v25[7] = 0;
  v25[4] = v17;
  v32 = v93;
  v31 = v94;
  v25[8] = 0;
  v25[9] = v32;
  v25[10] = v31;
  v25[11] = v27;
  v34 = v14[2];
  v33 = v14[3];
  if (v34 >= v33 >> 1)
  {
    v14 = sub_100A5E6B0((v33 > 1), v34 + 1, 1, v14);
  }

  v97 = v90;
  v98 = &off_10161E380;
  *&v96 = v25;
  v14[2] = v34 + 1;
  sub_10000A748(&v96, &v14[5 * v34 + 4]);
  v35 = qword_101694B58;

  if (v35 != -1)
  {
    swift_once();
  }

  v36 = off_1016B0FC8;
  v37 = type metadata accessor for SecureLocationsService();
  swift_allocObject();

  v38 = sub_1009B29FC(v17, v36);
  v40 = v14[2];
  v39 = v14[3];
  if (v40 >= v39 >> 1)
  {
    v81 = v38;
    v14 = sub_100A5E6B0((v39 > 1), v40 + 1, 1, v14);
    v38 = v81;
  }

  v97 = v37;
  v98 = &off_101641658;
  *&v96 = v38;
  v14[2] = v40 + 1;
  sub_10000A748(&v96, &v14[5 * v40 + 4]);
  v41 = qword_101694B18;

  if (v41 != -1)
  {
    swift_once();
  }

  v42 = qword_1016B0F88;
  v43 = type metadata accessor for AccessoryDiscoveryService();
  swift_allocObject();
  swift_retain_n();
  v44 = sub_100E12860(v17, v42);
  v46 = v14[2];
  v45 = v14[3];
  if (v46 >= v45 >> 1)
  {
    v82 = v44;
    v14 = sub_100A5E6B0((v45 > 1), v46 + 1, 1, v14);
    v44 = v82;
  }

  v97 = v43;
  v98 = &off_101651F38;
  *&v96 = v44;
  v14[2] = v46 + 1;
  sub_10000A748(&v96, &v14[5 * v46 + 4]);
  if (qword_101694B50 != -1)
  {
    swift_once();
  }

  v47 = qword_1016B0FC0;
  v48 = v14[2];
  v49 = v14[3];

  if (v48 >= v49 >> 1)
  {
    v14 = sub_100A5E6B0((v49 > 1), v48 + 1, 1, v14);
  }

  v97 = type metadata accessor for BeaconManagerService();
  v98 = &off_101643D60;
  *&v96 = v47;
  v14[2] = v48 + 1;
  sub_10000A748(&v96, &v14[5 * v48 + 4]);
  v50 = type metadata accessor for CentralManager();
  v51 = objc_allocWithZone(v50);
  sub_1013190AC(1, 0, 15.0);
  v52 = v14[2];
  v53 = v14[3];
  v55 = v54;
  if (v52 >= v53 >> 1)
  {
    v83 = v53 > 1;
    v84 = v55;
    v85 = v83;
    v14 = sub_100A5E6B0(v85, v52 + 1, 1, v14);
    v55 = v84;
  }

  v97 = v50;
  v98 = &off_101670398;
  v92 = v55;
  *&v96 = v55;
  v14[2] = v52 + 1;
  sub_10000A748(&v96, &v14[5 * v52 + 4]);
  v56 = type metadata accessor for OwnerCommandManager();
  swift_allocObject();
  v57 = sub_10067C33C(v17, v32, 0);

  v58 = v14[2];
  v59 = v14[3];

  if (v58 >= v59 >> 1)
  {
    v14 = sub_100A5E6B0((v59 > 1), v58 + 1, 1, v14);
  }

  v97 = v56;
  v98 = &off_10162CBD8;
  *&v96 = v57;
  v14[2] = v58 + 1;
  sub_10000A748(&v96, &v14[5 * v58 + 4]);
  v60 = type metadata accessor for SeparationMonitoringEnrollmentService();
  swift_allocObject();
  v61 = sub_100D673B0(v17, v42);
  v63 = v14[2];
  v62 = v14[3];
  if (v63 >= v62 >> 1)
  {
    v86 = v61;
    v14 = sub_100A5E6B0((v62 > 1), v63 + 1, 1, v14);
    v61 = v86;
  }

  v97 = v60;
  v98 = &off_1016507A0;
  *&v96 = v61;
  v14[2] = v63 + 1;
  sub_10000A748(&v96, &v14[5 * v63 + 4]);
  v64 = type metadata accessor for UnwantedTrackingUserNotificationDelegate();
  v65 = [objc_allocWithZone(v64) init];
  v67 = v14[2];
  v66 = v14[3];
  if (v67 >= v66 >> 1)
  {
    v87 = v65;
    v14 = sub_100A5E6B0((v66 > 1), v67 + 1, 1, v14);
    v65 = v87;
  }

  v97 = v64;
  v98 = &off_10160E9A0;
  *&v96 = v65;
  v14[2] = v67 + 1;
  sub_10000A748(&v96, &v14[5 * v67 + 4]);
  if (qword_101694B20 != -1)
  {
    swift_once();
  }

  v68 = type metadata accessor for FinderStateManagerService();
  v69 = *(v68 + 48);
  v70 = *(v68 + 52);
  swift_allocObject();

  v72 = sub_10104363C(v71);
  v74 = v14[2];
  v73 = v14[3];
  if (v74 >= v73 >> 1)
  {
    v88 = v72;
    v14 = sub_100A5E6B0((v73 > 1), v74 + 1, 1, v14);
    v72 = v88;
  }

  v97 = v68;
  v98 = &off_1016610C8;
  *&v96 = v72;
  v14[2] = v74 + 1;
  sub_10000A748(&v96, &v14[5 * v74 + 4]);
  My = type metadata accessor for Feature.FindMy();
  v97 = My;
  v98 = sub_1009BD8EC(&qword_1016AF950, &type metadata accessor for Feature.FindMy);
  v76 = sub_1000280DC(&v96);
  (*(*(My - 8) + 104))(v76, enum case for Feature.FindMy.networkScalingImprovements(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100007BAC(&v96);
  if (My)
  {
    v77 = v36[3];
    v78 = qword_101694868;

    if (v78 != -1)
    {
      swift_once();
    }

    v79 = *(qword_10177B0D8 + 16);
    *(qword_10177B0D8 + 16) = v77;
  }

  sub_100A2E174(v36);
  if (qword_101694B38 != -1)
  {
    swift_once();
  }

  sub_10042264C(v36);
  if (qword_101695510 != -1)
  {
    swift_once();
  }

  sub_1013132BC();

  return v14;
}

unint64_t sub_1009BE66C()
{
  result = qword_1016B1278;
  if (!qword_1016B1278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B1278);
  }

  return result;
}

unint64_t sub_1009BE6C0()
{
  result = sub_10098E9DC(3157553, 0xE300000000000000);
  if ((result & 0x100000000) != 0)
  {
    __break(1u);
  }

  else
  {
    LOWORD(dword_10177B778) = result;
    BYTE2(dword_10177B778) = BYTE2(result);
    HIBYTE(dword_10177B778) = BYTE3(result);
  }

  return result;
}

uint64_t *sub_1009BE708@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  a3[3] = &type metadata for CollaborativeKeyGen.v1.C3;
  result = sub_100101704();
  a3[4] = result;
  v7 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v7 != 2)
    {
      v12 = 0;
      goto LABEL_20;
    }

    v9 = *(a1 + 16);
    v8 = *(a1 + 24);
    v10 = __OFSUB__(v8, v9);
    v11 = v8 - v9;
    if (!v10)
    {
      if (v11 != 60)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v7)
  {
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 != 60)
      {
        goto LABEL_11;
      }

LABEL_8:
      *a3 = a1;
      a3[1] = a2;
      return sub_100017D5C(a1, a2);
    }

    goto LABEL_22;
  }

  if (BYTE6(a2) == 60)
  {
    goto LABEL_8;
  }

LABEL_11:
  if (v7 == 2)
  {
    v14 = *(a1 + 16);
    v13 = *(a1 + 24);
    v12 = v13 - v14;
    if (!__OFSUB__(v13, v14))
    {
      goto LABEL_20;
    }

    __break(1u);
    goto LABEL_19;
  }

  if (v7 != 1)
  {
LABEL_19:
    v12 = BYTE6(a2);
    goto LABEL_20;
  }

  if (!__OFSUB__(HIDWORD(a1), a1))
  {
    v12 = HIDWORD(a1) - a1;
LABEL_20:
    sub_100018350();
    swift_allocError();
    *v15 = 60;
    *(v15 + 8) = v12;
    *(v15 + 16) = 0;
    swift_willThrow();
    return sub_100101758(a3);
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_1009BE848()
{
  if (qword_101694B68 != -1)
  {
    swift_once();
  }

  return dword_10177B778;
}

__n128 sub_1009BE89C@<Q0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, unint64_t a11)
{
  sub_1009BEFA8(a1, a2, a3, a4, a5, a6, a7, a8, v14, a10, a11);
  v12 = v14[3];
  *(a9 + 32) = v14[2];
  *(a9 + 48) = v12;
  *(a9 + 64) = v14[4];
  result = v14[1];
  *a9 = v14[0];
  *(a9 + 16) = result;
  return result;
}

double sub_1009BE8EC@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0x2000000000000000;
  return result;
}

__n128 sub_1009BE91C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1009BF214(a1, a2, a3, v8);
  if (!v4)
  {
    v7 = v8[3];
    *(a4 + 32) = v8[2];
    *(a4 + 48) = v7;
    *(a4 + 64) = v8[4];
    result = v8[1];
    *a4 = v8[0];
    *(a4 + 16) = result;
  }

  return result;
}

unint64_t sub_1009BE96C()
{
  result = qword_1016B12E0;
  if (!qword_1016B12E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B12E0);
  }

  return result;
}

unint64_t sub_1009BE9C4()
{
  result = qword_1016B12E8;
  if (!qword_1016B12E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B12E8);
  }

  return result;
}

unint64_t sub_1009BEA1C()
{
  result = qword_1016B12F0;
  if (!qword_1016B12F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B12F0);
  }

  return result;
}

unint64_t sub_1009BEA74()
{
  result = qword_1016B12F8;
  if (!qword_1016B12F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B12F8);
  }

  return result;
}

unint64_t sub_1009BEACC()
{
  result = qword_1016B1300;
  if (!qword_1016B1300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B1300);
  }

  return result;
}

unint64_t sub_1009BEB20@<X0>(uint64_t *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = *(v1 + 7);
  v6 = *(v1 + 9);
  v7 = (v6 >> 59) & 6 | ((v5 & 0x2000000000000000) != 0);
  if (v7 <= 1)
  {
    v22 = *v1;
    v25 = v1[1];
    if (v7)
    {
      a1[3] = &type metadata for SendPairingDataCommandPayload;
      a1[4] = sub_1009BEA74();
    }

    else
    {
      a1[3] = &type metadata for InitiatePairingCommandPayload;
      a1[4] = sub_1009BE9C4();
    }

    v15 = swift_allocObject();
    *a1 = v15;
    *(v15 + 16) = v22;
    *(v15 + 32) = v25;
    sub_100017D5C(v22, *(&v22 + 1));
    v14 = *(&v25 + 1);
    v13 = v25;
    goto LABEL_15;
  }

  v8 = *(v1 + 4);
  v9 = *(v1 + 5);
  v10 = *(v1 + 6);
  v11 = *(v1 + 8);
  if (v7 == 2)
  {
    v16 = v5 & 0xDFFFFFFFFFFFFFFFLL;
    v17 = v6 & 0xCFFFFFFFFFFFFFFFLL;
    a1[3] = &type metadata for FinalizePairingCommandPayload;
    v23 = v4;
    v26 = v3;
    a1[4] = sub_1009BE96C();
    v18 = swift_allocObject();
    *a1 = v18;
    *(v18 + 16) = v23;
    *(v18 + 32) = v26;
    *(v18 + 48) = v8;
    *(v18 + 56) = v9;
    *(v18 + 64) = v10;
    *(v18 + 72) = v16;
    *(v18 + 80) = v11;
    *(v18 + 88) = v17;
    v28[0] = v23;
    v28[1] = v26;
    v29 = v8;
    v30 = v9;
    v31 = v10;
    v32 = v16;
    v33 = v11;
    v34 = v17;
    return sub_1009BEEF8(v28, v27);
  }

  if (v7 == 3)
  {
    a1[3] = &type metadata for SendPairingStatusCommandPayload;
    v21 = v4;
    v24 = v3;
    a1[4] = sub_1009BEACC();
    v12 = swift_allocObject();
    *a1 = v12;
    *(v12 + 16) = v21;
    *(v12 + 32) = v24;
    *(v12 + 48) = v8;
    *(v12 + 56) = v9;
    sub_100017D5C(v21, *(&v21 + 1));
    sub_100017D5C(v24, *(&v24 + 1));
    v13 = v8;
    v14 = v9;
LABEL_15:

    return sub_100017D5C(v13, v14);
  }

  if (v3 | v4 | *(&v4 + 1) | *(&v3 + 1) | v8 | v9 | v10 | v5 | v11)
  {
    v20 = 0;
  }

  else
  {
    v20 = v6 == 0x2000000000000000;
  }

  if (v20)
  {
    a1[3] = &type metadata for PairingCompleteCommandPayload;
    result = sub_1009BEA1C();
  }

  else
  {
    a1[3] = &type metadata for UnpairCommandPayload;
    result = sub_10027EE90();
  }

  a1[4] = result;
  return result;
}

unint64_t sub_1009BEDC4(uint64_t a1)
{
  *(a1 + 8) = sub_1009BEDF4();
  result = sub_1009BEE48();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1009BEDF4()
{
  result = qword_1016B13C0;
  if (!qword_1016B13C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B13C0);
  }

  return result;
}

unint64_t sub_1009BEE48()
{
  result = qword_1016B13C8;
  if (!qword_1016B13C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B13C8);
  }

  return result;
}

uint64_t sub_1009BEEB4(void *a1)
{
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v3 = *v1;
  v4 = v1[1];
  return sub_100F9AAF4(a1);
}

uint64_t sub_1009BEEF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016B13D0, &unk_1013D03A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1009BEF68()
{
  sub_100016590(*(v0 + 16), *(v0 + 24));
  sub_100016590(*(v0 + 32), *(v0 + 40));

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_1009BEFA8@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, unint64_t a11)
{
  v12 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v12)
    {
      v13 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v12 != 2)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v15 = *(result + 16);
  v14 = *(result + 24);
  v16 = __OFSUB__(v14, v15);
  v13 = v14 - v15;
  if (v16)
  {
    __break(1u);
LABEL_8:
    LODWORD(v13) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    v13 = v13;
  }

LABEL_10:
  if (v13 != 89)
  {
    goto LABEL_56;
  }

  if ((a4 >> 62) <= 1)
  {
    if (a4 >> 62 == 1)
    {
      LODWORD(v17) = HIDWORD(a3) - a3;
      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        v17 = v17;
        goto LABEL_17;
      }

      __break(1u);
      goto LABEL_50;
    }

LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  if (a4 >> 62 != 2)
  {
    goto LABEL_55;
  }

  v19 = *(a3 + 16);
  v18 = *(a3 + 24);
  v16 = __OFSUB__(v18, v19);
  v17 = v18 - v19;
  if (v16)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

LABEL_17:
  if (v17 != 1040)
  {
    goto LABEL_55;
  }

  v20 = a6 >> 62;
  if ((a6 >> 62) <= 1)
  {
    if (!v20)
    {
      v21 = BYTE6(a6);
      goto LABEL_27;
    }

LABEL_25:
    LODWORD(v21) = HIDWORD(a5) - a5;
    if (!__OFSUB__(HIDWORD(a5), a5))
    {
      v21 = v21;
      goto LABEL_27;
    }

LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  if (v20 != 2)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v23 = *(a5 + 16);
  v22 = *(a5 + 24);
  v16 = __OFSUB__(v22, v23);
  v21 = v22 - v23;
  if (v16)
  {
    __break(1u);
    goto LABEL_25;
  }

LABEL_27:
  if (v21 != 32)
  {
    goto LABEL_57;
  }

  v24 = a11 >> 62;
  if ((a11 >> 62) <= 1)
  {
    if (!v24)
    {
      v25 = BYTE6(a11);
      goto LABEL_37;
    }

LABEL_35:
    LODWORD(v25) = HIDWORD(a10) - a10;
    if (!__OFSUB__(HIDWORD(a10), a10))
    {
      v25 = v25;
      goto LABEL_37;
    }

LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  if (v24 != 2)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v27 = *(a10 + 16);
  v26 = *(a10 + 24);
  v16 = __OFSUB__(v26, v27);
  v25 = v26 - v27;
  if (v16)
  {
    __break(1u);
    goto LABEL_35;
  }

LABEL_37:
  if (v25 != 100)
  {
    goto LABEL_58;
  }

  v28 = a8 >> 62;
  if ((a8 >> 62) <= 1)
  {
    if (!v28)
    {
      v29 = BYTE6(a8);
      goto LABEL_47;
    }

LABEL_45:
    LODWORD(v29) = HIDWORD(a7) - a7;
    if (!__OFSUB__(HIDWORD(a7), a7))
    {
      v29 = v29;
      goto LABEL_47;
    }

    goto LABEL_54;
  }

  if (v28 != 2)
  {
    goto LABEL_59;
  }

  v31 = *(a7 + 16);
  v30 = *(a7 + 24);
  v16 = __OFSUB__(v30, v31);
  v29 = v30 - v31;
  if (v16)
  {
    __break(1u);
    goto LABEL_45;
  }

LABEL_47:
  if (v29 == 60)
  {
    v39 = a2 & 0xCFFFFFFFFFFFFFFFLL;
    v40 = a4 & 0xCFFFFFFFFFFFFFFFLL;
    v42 = a8 & 0xCFFFFFFFFFFFFFFFLL;
    v41 = a6 & 0xCFFFFFFFFFFFFFFFLL;
    v32 = result;
    sub_100017D5C(result, a2);
    sub_100017D5C(a3, a4);
    sub_100017D5C(a5, a6);
    sub_100017D5C(a7, a8);
    result = sub_100017D5C(a10, a11);
    *a9 = v32;
    a9[1] = v39;
    a9[2] = a3;
    a9[3] = v40;
    a9[4] = a5;
    a9[5] = v41;
    a9[6] = a7;
    a9[7] = v42;
    a9[8] = a10;
    a9[9] = a11 & 0xCFFFFFFFFFFFFFFFLL | 0x1000000000000000;
    return result;
  }

LABEL_59:
  __break(1u);
  return result;
}

uint64_t sub_1009BF214@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (a3 >> 60 == 15)
  {
    sub_1009BF3DC();
    swift_allocError();
    *v5 = 9;
    return swift_willThrow();
  }

  v9 = v4;
  sub_10001F280(a1, v18);
  sub_100017D5C(a2, a3);
  sub_1000BC4D4(&qword_1016973C0, &unk_10138BF40);
  type metadata accessor for CollaborativeKeyGen.v1.OwnerContext();
  if (!swift_dynamicCast())
  {
    sub_1009BF3DC();
    swift_allocError();
    *v13 = 5;
    swift_willThrow();
    return sub_100006654(a2, a3);
  }

  v11 = CCCKGGetOpeningSize();

  sub_1003F141C(a2, a3, v17, v11, v16);
  if (v9)
  {

    sub_1009BF3DC();
    swift_allocError();
    *v12 = 10;
    swift_willThrow();

    return sub_100006654(a2, a3);
  }

  sub_100006654(a2, a3);

  v14 = v16[3];
  a4[2] = v16[2];
  a4[3] = v14;
  a4[4] = v16[4];
  v15 = v16[1];
  *a4 = v16[0];
  a4[1] = v15;
  return result;
}

unint64_t sub_1009BF3DC()
{
  result = qword_1016B13D8;
  if (!qword_1016B13D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B13D8);
  }

  return result;
}

uint64_t sub_1009BF430(uint64_t a1)
{
  if (((*(a1 + 72) >> 59) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return (*(a1 + 72) >> 59) & 6 | ((*(a1 + 56) & 0x2000000000000000) != 0);
  }
}

uint64_t sub_1009BF45C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3FC && *(a1 + 80))
  {
    return (*a1 + 1020);
  }

  v3 = ((((*(a1 + 72) >> 52) & 0x300 | (*(a1 + 56) >> 54) & 0xC0) >> 7) & 0xFFFFFC07 | (8 * ((*(a1 + 24) >> 58) & 0xC | (*(a1 + 8) >> 60) & 3 | *(a1 + 47) & 0x30 | (*(a1 + 56) >> 54) & 0x40))) ^ 0x3FF;
  if (v3 >= 0x3FB)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1009BF4EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FB)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 1020;
    if (a3 >= 0x3FC)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FC)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0x7F | ((-a2 & 0x3FF) << 7);
      *result = 0;
      *(result + 8) = ((-a2 >> 3) & 3) << 60;
      *(result + 16) = 0;
      *(result + 24) = (v3 << 58) & 0x3000000000000000;
      *(result + 32) = 0;
      *(result + 40) = (v3 << 56) & 0x3000000000000000;
      *(result + 48) = 0;
      *(result + 56) = (v3 << 54) & 0x3000000000000000;
      *(result + 64) = 0;
      *(result + 72) = (v3 << 52) & 0x3000000000000000;
    }
  }

  return result;
}

uint64_t sub_1009BF580(uint64_t result)
{
  v1 = *(result + 72) & 0xCFFFFFFFFFFFFFFFLL;
  *(result + 56) &= ~0x2000000000000000uLL;
  *(result + 72) = v1;
  return result;
}

void *sub_1009BF59C(void *result, unsigned int a2)
{
  if (a2 < 4)
  {
    v2 = result[3] & 0xCFFFFFFFFFFFFFFFLL;
    v3 = result[5] & 0xCFFFFFFFFFFFFFFFLL;
    v4 = result[7] & 0xCFFFFFFFFFFFFFFFLL | ((a2 & 1) << 61);
    v5 = result[9] & 0xCFFFFFFFFFFFFFFFLL | (((a2 >> 1) & 1) << 60);
    result[1] &= 0xCFFFFFFFFFFFFFFFLL;
    result[3] = v2;
    result[5] = v3;
    result[7] = v4;
    result[9] = v5;
  }

  else
  {
    *result = a2 - 4;
    *(result + 1) = 0u;
    *(result + 3) = 0u;
    *(result + 5) = 0u;
    *(result + 7) = 0u;
    result[9] = 0x2000000000000000;
  }

  return result;
}

uint64_t sub_1009BF638(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for Connection.TransactionMode();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100027FA4();
  if (v13)
  {
    v17[1] = v17;
    v14 = __chkstk_darwin(v13);
    v17[-6] = a3;
    v17[-5] = a4;
    v17[-4] = a1;
    LOBYTE(v17[-3]) = a2 & 1;
    v17[-2] = v14;
    (*(v9 + 104))(v12, enum case for Connection.TransactionMode.deferred(_:), v8);
    Connection.transaction(_:block:)();
    (*(v9 + 8))(v12, v8);
  }

  else
  {
    sub_10020223C();
    swift_allocError();
    *v16 = 2;
    *(v16 + 4) = 1;
    return swift_willThrow();
  }
}

uint64_t sub_1009BF810(uint64_t a1)
{
  v39 = a1;
  v1 = type metadata accessor for Table();
  v44 = *(v1 - 8);
  v2 = *(v44 + 64);
  __chkstk_darwin(v1);
  v43 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  v52 = *(v4 - 8);
  v5 = *(v52 + 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v36 - v9;
  v47 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v41 = *(v47 - 8);
  v11 = *(v41 + 64);
  v12 = __chkstk_darwin(v47);
  v40 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v45 = &v36 - v15;
  __chkstk_darwin(v14);
  v46 = &v36 - v16;
  v17 = OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_keyGenerationBeaconInfo;
  v48 = OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_keyGenerationBeaconKeys;
  if (qword_1016952D0 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v4, qword_10177C818);
  type metadata accessor for UUID();
  v18 = v39;
  QueryType.subscript.getter();
  v19 = v4;
  QueryType.subscript.getter();
  == infix<A>(_:_:)();
  v20 = (v52 + 8);
  v21 = *(v52 + 1);
  v21(v8, v19);
  v52 = v20;
  v21(v10, v19);
  if (qword_1016952A0 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v19, qword_10177C788);
  v37 = v19;
  v38 = v17;
  QueryType.subscript.getter();
  QueryType.subscript.getter();
  v22 = v40;
  == infix<A>(_:_:)();
  v23 = v37;
  v21(v8, v37);
  v21(v10, v23);
  v24 = v45;
  && infix(_:_:)();
  v25 = *(v41 + 8);
  v26 = v22;
  v27 = v47;
  v25(v26, v47);
  v52 = v25;
  v25(v24, v27);
  v50 = v1;
  v51 = &protocol witness table for Table;
  v28 = sub_1000280DC(v49);
  v29 = v44;
  v30 = *(v44 + 16);
  v30(v28, v18 + v48, v1);
  v31 = v18 + v38;
  v32 = v43;
  QueryType.join(_:on:)();
  sub_100007BAC(v49);
  v50 = v1;
  v51 = &protocol witness table for Table;
  v33 = sub_1000280DC(v49);
  v30(v33, v32, v1);
  v34 = v42;
  sub_10001E52C(v49, v18);
  if (v34)
  {
    (*(v29 + 8))(v32, v1);
    v52(v46, v47);
    sub_100007BAC(v49);
  }

  else
  {
    sub_100007BAC(v49);
    v31 = dispatch thunk of _AnySequenceBox.__copyToContiguousArray()();

    (*(v29 + 8))(v32, v1);
    v52(v46, v47);
  }

  return v31;
}

uint64_t sub_1009BFDBC(uint64_t a1)
{
  v54 = a1;
  v1 = type metadata accessor for JoinType();
  v44 = *(v1 - 8);
  v45 = v1;
  v2 = *(v44 + 64);
  __chkstk_darwin(v1);
  v43 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Table();
  v47 = *(v4 - 8);
  v5 = *(v47 + 64);
  __chkstk_darwin(v4);
  v46 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  v53 = *(v7 - 8);
  v8 = *(v53 + 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v40 - v12;
  v52 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v59 = *(v52 - 8);
  v14 = *(v59 + 64);
  v15 = __chkstk_darwin(v52);
  v42 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v50 = &v40 - v18;
  __chkstk_darwin(v17);
  v51 = &v40 - v19;
  v20 = OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_keyGenerationBeaconInfo;
  v55 = OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_keyGenerationBeaconKeys;
  if (qword_1016952D0 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v7, qword_10177C818);
  type metadata accessor for UUID();
  v49 = v20;
  QueryType.subscript.getter();
  QueryType.subscript.getter();
  == infix<A>(_:_:)();
  v41 = v4;
  v21 = *(v53 + 1);
  v53 = (v53 + 8);
  v21(v11, v7);
  v21(v13, v7);
  if (qword_1016952A0 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v7, qword_10177C788);
  v22 = v41;
  QueryType.subscript.getter();
  QueryType.subscript.getter();
  v23 = v42;
  == infix<A>(_:_:)();
  v21(v11, v7);
  v21(v13, v7);
  v24 = v50;
  && infix(_:_:)();
  v25 = v59 + 8;
  v26 = *(v59 + 8);
  v27 = v23;
  v28 = v52;
  v26(v27, v52);
  v59 = v25;
  v53 = v26;
  v26(v24, v28);
  v29 = v43;
  v30 = v44;
  v31 = v45;
  (*(v44 + 104))(v43, enum case for JoinType.leftOuter(_:), v45);
  v57 = v22;
  v58 = &protocol witness table for Table;
  v32 = sub_1000280DC(v56);
  v33 = v47;
  v50 = *(v47 + 16);
  v34 = v54;
  (v50)(v32, v54 + v55, v22);
  v35 = v34 + v49;
  v36 = v46;
  QueryType.join(_:_:on:)();
  (*(v30 + 8))(v29, v31);
  sub_100007BAC(v56);
  v57 = v22;
  v58 = &protocol witness table for Table;
  v37 = sub_1000280DC(v56);
  (v50)(v37, v36, v22);
  v38 = v48;
  sub_10001E52C(v56, v54);
  if (v38)
  {
    (*(v33 + 8))(v36, v22);
    v53(v51, v52);
    sub_100007BAC(v56);
  }

  else
  {
    sub_100007BAC(v56);
    v35 = dispatch thunk of _AnySequenceBox.__copyToContiguousArray()();

    (*(v33 + 8))(v36, v22);
    v53(v51, v52);
  }

  return v35;
}

uint64_t sub_1009C0458(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Connection.TransactionMode();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100027FA4();
  if (v11)
  {
    v15[1] = v15;
    v12 = __chkstk_darwin(v11);
    v15[-4] = a3;
    v15[-3] = a1;
    v15[-2] = v12;
    v15[-1] = a2;
    (*(v7 + 104))(v10, enum case for Connection.TransactionMode.deferred(_:), v6);
    Connection.transaction(_:block:)();
    (*(v7 + 8))(v10, v6);
  }

  else
  {
    sub_10020223C();
    swift_allocError();
    *v14 = 2;
    *(v14 + 4) = 1;
    return swift_willThrow();
  }
}

uint64_t sub_1009C0618(uint64_t *a1, uint64_t *a2)
{
  v5 = type metadata accessor for KeyGenerationBeaconInfo();
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v35 = &v32 - v10;
  v11 = type metadata accessor for Connection.TransactionMode();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100027FA4();
  if (v16)
  {
    v33 = v5;
    v34 = v9;
    v17 = __chkstk_darwin(v16);
    *(&v32 - 4) = a2;
    *(&v32 - 3) = a1;
    *(&v32 - 2) = v17;
    (*(v12 + 104))(v15, enum case for Connection.TransactionMode.deferred(_:), v11);
    Connection.transaction(_:block:)();
    if (v2)
    {
      (*(v12 + 8))(v15, v11);
    }

    else
    {
      (*(v12 + 8))(v15, v11);
      if (qword_1016944D0 != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      sub_1000076D4(v20, qword_10177A5C0);
      v21 = v35;
      sub_100991F98(a1, v35);
      v22 = v34;
      sub_100991F98(a1, v34);
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v36 = v32;
        *v25 = 141558531;
        *(v25 + 4) = 1752392040;
        *(v25 + 12) = 2081;
        v26 = *(type metadata accessor for BeaconIdentifier() + 20);
        type metadata accessor for UUID();
        sub_1002FFBAC();
        v27 = dispatch thunk of CustomStringConvertible.description.getter();
        v29 = v28;
        sub_100992068(v21);
        v30 = sub_1000136BC(v27, v29, &v36);

        *(v25 + 14) = v30;
        *(v25 + 22) = 2050;
        v31 = *(v22 + *(v33 + 28));
        sub_100992068(v22);
        *(v25 + 24) = v31;
        _os_log_impl(&_mh_execute_header, v23, v24, "Saved KeyGenerationBeaconInfo for %{private,mask.hash}s, type: %{public}llu", v25, 0x20u);
        sub_100007BAC(v32);
      }

      else
      {
        sub_100992068(v22);

        return sub_100992068(v21);
      }
    }
  }

  else
  {
    sub_10020223C();
    swift_allocError();
    *v19 = 2;
    *(v19 + 4) = 1;
    return swift_willThrow();
  }
}

uint64_t sub_1009C0A2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v86 = a2;
  v74 = a1;
  v63[0] = a3;
  v73 = type metadata accessor for JoinType();
  v72 = *(v73 - 8);
  v3 = *(v72 + 64);
  __chkstk_darwin(v73);
  v71 = v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for Table();
  v84 = *(v81 - 8);
  v5 = *(v84 + 64);
  v6 = __chkstk_darwin(v81);
  v83 = v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v75 = v63 - v8;
  v9 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  v93 = *(v9 - 8);
  v10 = *(v93 + 64);
  v11 = __chkstk_darwin(v9);
  v13 = v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = v63 - v14;
  v82 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v89 = *(v82 - 8);
  v16 = *(v89 + 64);
  v17 = __chkstk_darwin(v82);
  v70 = v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v88 = v63 - v20;
  v21 = __chkstk_darwin(v19);
  v87 = v63 - v22;
  __chkstk_darwin(v21);
  v80 = v63 - v23;
  v24 = OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_keyGenerationBeaconInfo;
  v85 = OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_keyGenerationBeaconKeys;
  if (qword_1016952D0 != -1)
  {
    swift_once();
  }

  v25 = sub_1000076D4(v9, qword_10177C818);
  v26 = type metadata accessor for UUID();
  v79 = v24;
  QueryType.subscript.getter();
  v27 = v13;
  v69 = v25;
  QueryType.subscript.getter();
  == infix<A>(_:_:)();
  v29 = v93 + 8;
  v28 = *(v93 + 8);
  v28(v27, v9);
  v93 = v29;
  v28(v15, v9);
  v30 = v27;
  if (qword_1016952A0 != -1)
  {
    swift_once();
  }

  v31 = sub_1000076D4(v9, qword_10177C788);
  v78 = v9;
  v32 = v86;
  v66 = v31;
  v33 = v81;
  QueryType.subscript.getter();
  QueryType.subscript.getter();
  v34 = v88;
  == infix<A>(_:_:)();
  v35 = v78;
  v28(v30, v78);
  v28(v15, v35);
  v65 = v28;
  v64 = v15;
  v36 = v87;
  && infix(_:_:)();
  v37 = v32;
  v38 = *(v89 + 8);
  v89 += 8;
  v77 = v38;
  v39 = v34;
  v40 = v82;
  v38(v39, v82);
  v38(v36, v40);
  v41 = v72;
  v42 = v71;
  v43 = v73;
  (*(v72 + 104))(v71, enum case for JoinType.leftOuter(_:), v73);
  v91 = v33;
  v92 = &protocol witness table for Table;
  v44 = sub_1000280DC(v90);
  v63[1] = v26;
  v45 = *(v84 + 16);
  v67 = v84 + 16;
  v68 = v45;
  v45(v44, (v37 + v85), v33);
  QueryType.join(_:_:on:)();
  (*(v41 + 8))(v42, v43);
  sub_100007BAC(v90);
  v46 = v64;
  QueryType.subscript.getter();
  v47 = v74;
  == infix<A>(_:_:)();
  v48 = v78;
  v49 = v65;
  v65(v46, v78);
  QueryType.subscript.getter();
  v50 = v47 + *(type metadata accessor for BeaconIdentifier() + 20);
  v51 = v70;
  v52 = v84;
  == infix<A>(_:_:)();
  v49(v46, v48);
  v53 = v82;
  v54 = v88;
  v55 = v77;
  v56 = v87;
  && infix(_:_:)();
  v55(v51, v53);
  v55(v54, v53);
  v57 = v75;
  v58 = v83;
  QueryType.filter(_:)();
  v55(v56, v53);
  v59 = *(v52 + 8);
  v59(v58, v33);
  v91 = v33;
  v92 = &protocol witness table for Table;
  v60 = sub_1000280DC(v90);
  v68(v60, v57, v33);
  v61 = v76;
  sub_10001E52C(v90, v86);
  if (v61)
  {
    v59(v57, v33);
    v55(v80, v53);
    return sub_100007BAC(v90);
  }

  else
  {
    sub_100007BAC(v90);
    dispatch thunk of _AnySequenceBox._makeIterator()();

    dispatch thunk of _AnyIteratorBoxBase.next()();

    v59(v57, v33);
    return (v77)(v80, v53);
  }
}

uint64_t sub_1009C1320(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v197 = a4;
  v219 = a1;
  v220 = a3;
  v192 = sub_1000BC4D4(&qword_10169DDD0, &unk_10139D140);
  v182 = *(v192 - 8);
  v5 = *(v182 + 64);
  __chkstk_darwin(v192);
  v191 = v174 - v6;
  v222 = type metadata accessor for OnConflict();
  v181 = *(v222 - 8);
  v7 = *(v181 + 64);
  v8 = __chkstk_darwin(v222);
  v203 = v174 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v215 = v174 - v10;
  v205 = type metadata accessor for Insert();
  *&v180 = *(v205 - 8);
  v11 = *(v180 + 64);
  v12 = __chkstk_darwin(v205);
  v190 = v174 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v216 = v174 - v14;
  v15 = type metadata accessor for Delete();
  v185 = *(v15 - 1);
  v16 = *(v185 + 64);
  v17 = __chkstk_darwin(v15);
  v178 = v174 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v179 = v174 - v20;
  __chkstk_darwin(v19);
  v187 = v174 - v21;
  v204 = type metadata accessor for KeyGenerationBeaconInfo();
  v188 = *(v204 - 8);
  v22 = *(v188 + 64);
  v23 = __chkstk_darwin(v204);
  v211 = v174 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v224 = (v174 - v25);
  v221 = type metadata accessor for UUID();
  v230 = *(v221 - 8);
  v26 = *(v230 + 64);
  v27 = __chkstk_darwin(v221);
  v198 = v174 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v27);
  v186 = v174 - v30;
  __chkstk_darwin(v29);
  v32 = v174 - v31;
  v201 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v208 = *(v201 - 8);
  v33 = *(v208 + 64);
  __chkstk_darwin(v201);
  v206 = v174 - v34;
  v35 = type metadata accessor for Table();
  v210 = *(v35 - 8);
  v36 = *(v210 + 64);
  v37 = __chkstk_darwin(v35);
  v202 = v174 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __chkstk_darwin(v37);
  *&v193 = v174 - v40;
  v41 = __chkstk_darwin(v39);
  v183 = (v174 - v42);
  v43 = __chkstk_darwin(v41);
  v45 = v174 - v44;
  __chkstk_darwin(v43);
  v207 = v174 - v46;
  v47 = OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_keyGenerationBeaconInfo;
  if (qword_1016952A0 != -1)
  {
    goto LABEL_64;
  }

  while (1)
  {
    v189 = v32;
    v194 = v15;
    v218 = a2;
    v48 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
    v49 = sub_1000076D4(v48, qword_10177C788);
    v228 = v48;
    v229 = sub_1000041A4(&qword_101699D18, &qword_101699D10, &unk_1013930B0);
    v50 = sub_1000280DC(&v226);
    v51 = *(*(v48 - 8) + 16);
    v214 = v49;
    v51(v50, v49, v48);
    v209 = v47;
    SchemaType.select(_:_:)();
    sub_100007BAC(&v226);
    v52 = v45;
    v53 = v35;
    if (qword_1016952D0 != -1)
    {
      swift_once();
    }

    v54 = sub_1000076D4(v48, qword_10177C818);
    v55 = v206;
    v212 = v54;
    v56 = v221;
    == infix<A>(_:_:)();
    v57 = v207;
    QueryType.filter(_:)();
    v58 = v208 + 8;
    v200 = *(v208 + 8);
    v200(v55, v201);
    v59 = v210;
    v61 = v210 + 8;
    v60 = *(v210 + 8);
    v60(v52, v53);
    v228 = v53;
    v229 = &protocol witness table for Table;
    v62 = sub_1000280DC(&v226);
    v199 = v52;
    v65 = *(v59 + 16);
    v63 = v59 + 16;
    v64 = v65;
    v65(v62, v57, v53);
    v66 = v225;
    Connection.prepare(_:)();
    if (v66)
    {
      v60(v207, v53);
      return sub_100007BAC(&v226);
    }

    v210 = v63;
    v208 = v58;
    v184 = v64;
    v196 = v60;
    sub_100007BAC(&v226);
    v68 = dispatch thunk of _AnySequenceBox._map<A>(_:)();
    v225 = 0;
    v69 = v68;

    v177 = sub_10000954C(v69);

    v70 = v197;
    v71 = *(v197 + 16);
    v72 = _swiftEmptyArrayStorage;
    v217 = v53;
    v73 = v189;
    v195 = v61;
    v213 = v71;
    if (v71)
    {
      v226 = _swiftEmptyArrayStorage;
      sub_101123D4C(0, v71, 0);
      v72 = v226;
      v74 = v70 + ((*(v188 + 80) + 32) & ~*(v188 + 80));
      v223 = *(v188 + 72);
      v75 = (v230 + 16);
      do
      {
        v76 = v224;
        sub_100991F98(v74, v224);
        v77 = type metadata accessor for BeaconIdentifier();
        (*v75)(v73, v76 + *(v77 + 20), v56);
        sub_100992068(v76);
        v226 = v72;
        v78 = v73;
        v80 = v72[2];
        v79 = v72[3];
        if (v80 >= v79 >> 1)
        {
          sub_101123D4C(v79 > 1, v80 + 1, 1);
          v72 = v226;
        }

        v72[2] = v80 + 1;
        (*(v230 + 32))(v72 + ((*(v230 + 80) + 32) & ~*(v230 + 80)) + *(v230 + 72) * v80, v78, v56);
        v74 += v223;
        --v71;
        v73 = v78;
      }

      while (v71);
    }

    v81 = sub_10000954C(v72);

    if (*(v81 + 16) <= v177[2] >> 3)
    {
      v226 = v177;
      sub_10087D5B4(v81);

      v82 = v226;
    }

    else
    {
      v82 = sub_100610BC8(v81, v177);
    }

    v83 = v206;
    if (!v82[2])
    {
      break;
    }

    == infix<A>(_:_:)();
    v84 = v183;
    QueryType.filter(_:)();
    v85 = v201;
    v86 = v200;
    v200(v83, v201);
    v226 = v82;
    sub_1000BC4D4(&qword_1016AF8E0, &qword_101393130);
    v224 = v82;
    v87 = v83;
    v88 = v217;
    sub_1000041A4(&qword_101699E08, &qword_1016AF8E0, &qword_101393130);
    Collection<>.contains(_:)();
    v89 = v199;
    QueryType.filter(_:)();
    v90 = v89;
    v86(v87, v85);
    v91 = v196;
    v196(v84, v88);
    v92 = v187;
    QueryType.delete()();
    v91(v90, v88);
    v93 = v225;
    Connection.run(_:)();
    if (v93)
    {

      (*(v185 + 8))(v92, v194);
      return (v91)(v207, v88);
    }

    v225 = 0;
    v32 = 0;
    v47 = v224;
    v94 = (v224 + 7);
    v95 = 1 << *(v224 + 32);
    v96 = -1;
    if (v95 < 64)
    {
      v96 = ~(-1 << v95);
    }

    v35 = v96 & v224[7];
    v174[2] = OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_observedAdvertisementBeaconInfo;
    v174[1] = OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_keySyncMetadata;
    v97 = (v95 + 63) >> 6;
    v183 = (v230 + 16);
    v177 = (v230 + 32);
    v189 = (v230 + 8);
    v15 = (v185 + 8);
    a2 = v198;
    v45 = v218;
    v223 = v185 + 8;
    v185 = (v224 + 7);
    v176 = v97;
    while (v35)
    {
LABEL_28:
      v100 = v230;
      v101 = *(v47 + 48) + *(v230 + 72) * (__clz(__rbit64(v35)) | (v32 << 6));
      v102 = v186;
      v103 = v221;
      (*(v230 + 16))(v186, v101, v221);
      (*(v100 + 32))(a2, v102, v103);
      v104 = v206;
      == infix<A>(_:_:)();
      v105 = v199;
      v106 = v217;
      QueryType.filter(_:)();
      v200(v104, v201);
      v107 = v193;
      QueryType.limit(_:)();
      v196(v105, v106);
      v228 = v106;
      v229 = &protocol witness table for Table;
      v108 = sub_1000280DC(&v226);
      v184(v108, v107, v106);
      v109 = v225;
      Connection.prepare(_:)();
      v225 = v109;
      if (v109)
      {

        v164 = v217;
        v165 = v196;
        v196(v107, v217);
        (*v189)(v198, v221);
        (*v223)(v187, v194);
        v165(v207, v164);
        return sub_100007BAC(&v226);
      }

      sub_100007BAC(&v226);
      v110 = dispatch thunk of _AnySequenceBox.__copyToContiguousArray()();

      v111 = *(v110 + 16);

      if (v111)
      {
        v98 = v196;
        v15 = v223;
        v47 = v224;
      }

      else
      {
        v112 = v206;
        == infix<A>(_:_:)();
        v113 = v199;
        v114 = v217;
        QueryType.filter(_:)();
        v115 = v201;
        v200(v112, v201);
        v116 = v179;
        QueryType.delete()();
        v196(v113, v114);
        v117 = v225;
        Connection.run(_:)();
        v225 = v117;
        if (v117)
        {

          v166 = *v223;
          v167 = v116;
          v168 = v194;
          (*v223)(v167, v194);
          v169 = v196;
          v196(v193, v114);
          (*v189)(v198, v221);
          (v166)(v187, v168);
          return v169(v207, v114);
        }

        v175 = *v223;
        (v175)(v116, v194);
        == infix<A>(_:_:)();
        QueryType.filter(_:)();
        v200(v112, v115);
        v118 = v178;
        QueryType.delete()();
        v196(v113, v114);
        v119 = v225;
        Connection.run(_:)();
        v225 = v119;
        if (v119)
        {

          v170 = v194;
          v171 = v175;
          (v175)(v118, v194);
          v172 = v217;
          v173 = v196;
          v196(v193, v217);
          (*v189)(v198, v221);
          (v171)(v187, v170);
          return v173(v207, v172);
        }

        v15 = v223;
        (v175)(v118, v194);
        v98 = v196;
        v107 = v193;
        v47 = v224;
      }

      v35 &= v35 - 1;
      v98(v107, v217);
      a2 = v198;
      (*v189)(v198, v221);
      v94 = v185;
      v97 = v176;
    }

    while (1)
    {
      v99 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        break;
      }

      if (v99 >= v97)
      {
        (*v15)(v187, v194);

        goto LABEL_34;
      }

      v35 = *(v94 + 8 * v99);
      ++v32;
      if (v35)
      {
        v32 = v99;
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_64:
    swift_once();
  }

LABEL_34:
  v120 = v225;
  v121 = v213;
  if (!v213)
  {
    return (v196)(v207, v217);
  }

  v223 = v181 + 8;
  v224 = (v181 + 104);
  v183 = (v182 + 16);
  v182 += 8;
  v194 = (v180 + 8);
  v122 = *(v188 + 80);
  v181 = OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_keyGenerationBeaconKeys;
  v123 = v197 + ((v122 + 32) & ~v122);
  LODWORD(v208) = enum case for OnConflict.replace(_:);
  v189 = *(v188 + 72);
  v193 = xmmword_101391790;
  v180 = xmmword_10138C0D0;
  v124 = v211;
  while (1)
  {
    v213 = v121;
    v225 = v120;
    v230 = v123;
    sub_100991F98(v123, v124);
    v200 = *v224;
    (v200)(v215, v208, v222);
    v125 = sub_1000BC4D4(&qword_101699D48, &unk_1013B6E00);
    v126 = *(type metadata accessor for Setter() - 8);
    v127 = *(v126 + 72);
    v128 = (*(v126 + 80) + 32) & ~*(v126 + 80);
    v206 = (4 * v127);
    v199 = v125;
    *(swift_allocObject() + 16) = v193;
    v197 = v128;
    <- infix<A>(_:_:)();
    v198 = *(type metadata accessor for BeaconIdentifier() + 20);
    <- infix<A>(_:_:)();
    v129 = v124;
    if (qword_1016952D8 != -1)
    {
      swift_once();
    }

    v130 = sub_1000BC4D4(&qword_101699D78, &unk_1013BF4B0);
    sub_1000076D4(v130, qword_10177C830);
    v131 = v204;
    v132 = *(v204 + 20);
    type metadata accessor for Date();
    v201 = 2 * v127;
    <- infix<A>(_:_:)();
    if (qword_1016952F0 != -1)
    {
      swift_once();
    }

    v133 = sub_1000BC4D4(&qword_101699DE8, &qword_101393120);
    sub_1000076D4(v133, qword_10177C878);
    v226 = *(v129 + *(v131 + 28));
    sub_100029580();
    <- infix<A>(_:_:)();
    v134 = v215;
    QueryType.insert(or:_:)();

    v135 = *v223;
    (*v223)(v134, v222);
    v136 = v225;
    Connection.run(_:)();
    v225 = v136;
    if (v136)
    {
      (*v194)(v216, v205);
      sub_100992068(v129);
      return (v196)(v207, v217);
    }

    v137 = (v129 + *(v131 + 24));
    v138 = v137[1];
    if (v138 >> 60 != 15)
    {
      break;
    }

    (*v194)(v216, v205);
    v120 = v225;
LABEL_37:
    v124 = v211;
    sub_100992068(v211);
    v123 = v189 + v230;
    v121 = v213 - 1;
    if (v213 == 1)
    {
      return (v196)(v207, v217);
    }
  }

  v185 = 3 * v127;
  v187 = v135;
  v139 = *v137;
  v140 = v137[2];
  v141 = v137[3];
  v143 = v137[4];
  v142 = v137[5];
  v184(v202, v219 + v181, v217);
  (v200)(v203, v208, v222);
  v144 = swift_allocObject();
  *(v144 + 16) = v180;
  v186 = v144;
  sub_100017D5C(v139, v138);
  v199 = v140;
  v200 = v141;
  sub_100017D5C(v140, v141);
  v197 = v143;
  v188 = v142;
  sub_1002DBC68(v143, v142);
  <- infix<A>(_:_:)();
  <- infix<A>(_:_:)();
  if (qword_1016952E0 != -1)
  {
    swift_once();
  }

  v145 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
  sub_1000076D4(v145, qword_10177C848);
  v226 = v139;
  v227 = v138;
  v198 = v138;
  sub_100017D5C(v139, v138);
  <- infix<A>(_:_:)();
  sub_100016590(v226, v227);
  v146 = v187;
  if (qword_1016952C0 != -1)
  {
    swift_once();
  }

  v201 = v139;
  sub_1000076D4(v145, qword_10177C7E8);
  v226 = v199;
  v227 = v200;
  sub_100017D5C(v199, v200);
  <- infix<A>(_:_:)();
  sub_100016590(v226, v227);
  v147 = v188;
  if (qword_1016952E8 != -1)
  {
    swift_once();
  }

  v148 = v192;
  v149 = sub_1000076D4(v192, qword_10177C860);
  v150 = v191;
  (*v183)(v191, v149, v148);
  v151 = v197;
  if (v147 >> 60 == 15)
  {
    v152 = 0;
  }

  else
  {
    v152 = v197;
  }

  v153 = 0xF000000000000000;
  if (v147 >> 60 != 15)
  {
    v153 = v147;
  }

  v226 = v152;
  v227 = v153;
  sub_1002DBC68(v197, v147);
  <- infix<A>(_:_:)();
  sub_100006654(v226, v227);
  (*v182)(v150, v148);
  v154 = v190;
  v155 = v203;
  v156 = v217;
  v157 = v202;
  QueryType.insert(or:_:)();
  v158 = v154;

  (v146)(v155, v222);
  v196(v157, v156);
  v159 = v225;
  Connection.run(_:)();
  v120 = v159;
  if (!v159)
  {
    sub_100883574(v201, v198, v199, v200, v151, v147);
    v160 = *v194;
    v161 = v205;
    (*v194)(v158, v205);
    v160(v216, v161);
    goto LABEL_37;
  }

  sub_100883574(v201, v198, v199, v200, v151, v147);
  v162 = *v194;
  v163 = v205;
  (*v194)(v158, v205);
  v162(v216, v163);
  sub_100992068(v211);
  return (v196)(v207, v217);
}

uint64_t sub_1009C3100(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31 = a3;
  v26 = a1;
  v4 = type metadata accessor for OnConflict();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for Insert();
  v28 = *(v30 - 8);
  v9 = *(v28 + 64);
  __chkstk_darwin(v30);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24[1] = OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_keyGenerationBeaconInfo;
  v27 = v5;
  v12 = *(v5 + 104);
  v25 = v8;
  v29 = v4;
  v12(v8, enum case for OnConflict.replace(_:), v4);
  sub_1000BC4D4(&qword_101699D48, &unk_1013B6E00);
  v13 = *(type metadata accessor for Setter() - 8);
  v14 = *(v13 + 72);
  v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  *(swift_allocObject() + 16) = xmmword_101391790;
  if (qword_1016952D0 != -1)
  {
    swift_once();
  }

  v16 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_1000076D4(v16, qword_10177C818);
  type metadata accessor for UUID();
  <- infix<A>(_:_:)();
  if (qword_1016952A0 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v16, qword_10177C788);
  v17 = *(type metadata accessor for BeaconIdentifier() + 20);
  <- infix<A>(_:_:)();
  if (qword_1016952D8 != -1)
  {
    swift_once();
  }

  v18 = sub_1000BC4D4(&qword_101699D78, &unk_1013BF4B0);
  sub_1000076D4(v18, qword_10177C830);
  v19 = type metadata accessor for KeyGenerationBeaconInfo();
  v20 = *(v19 + 20);
  type metadata accessor for Date();
  <- infix<A>(_:_:)();
  if (qword_1016952F0 != -1)
  {
    swift_once();
  }

  v21 = sub_1000BC4D4(&qword_101699DE8, &qword_101393120);
  sub_1000076D4(v21, qword_10177C878);
  v32 = *(a2 + *(v19 + 28));
  sub_100029580();
  <- infix<A>(_:_:)();
  type metadata accessor for Table();
  v22 = v25;
  QueryType.insert(or:_:)();

  (*(v27 + 8))(v22, v29);
  Connection.run(_:)();
  return (*(v28 + 8))(v11, v30);
}

uint64_t sub_1009C3594(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v6 = v5;
  v51 = a2;
  v52 = a5;
  v10 = type metadata accessor for OnConflict();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for Insert();
  v15 = *(*(v50 - 8) + 64);
  result = __chkstk_darwin(v50);
  v19 = *(a1 + 16);
  if (v19)
  {
    v21 = *(v11 + 104);
    v20 = v11 + 104;
    v46 = v21;
    v45 = a4 & 1;
    v44 = (v20 - 96);
    v41 = (v17 + 8);
    v22 = (a1 + 48);
    v43 = enum case for OnConflict.replace(_:);
    v42 = xmmword_10138C0D0;
    v48 = v14;
    v49 = v10;
    v40 = v20;
    v47 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    v39 = a3;
    while (1)
    {
      v23 = a3;
      v59 = v6;
      v24 = *(v22 - 2);
      v25 = *(v22 - 1);
      v53 = v19;
      v54 = v24;
      v26 = *v22;
      v55 = OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_keyGenerationHint;
      v46(v14, v43, v10);
      sub_1000BC4D4(&qword_101699D48, &unk_1013B6E00);
      v27 = *(type metadata accessor for Setter() - 8);
      v28 = *(v27 + 72);
      v29 = (*(v27 + 80) + 32) & ~*(v27 + 80);
      *(swift_allocObject() + 16) = v42;
      v56 = v26;
      sub_100017D5C(v25, v26);
      if (qword_1016952D0 != -1)
      {
        swift_once();
      }

      v30 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
      sub_1000076D4(v30, qword_10177C818);
      type metadata accessor for UUID();
      <- infix<A>(_:_:)();
      if (qword_1016952A0 != -1)
      {
        swift_once();
      }

      sub_1000076D4(v30, qword_10177C788);
      v31 = v23 + *(type metadata accessor for BeaconIdentifier() + 20);
      <- infix<A>(_:_:)();
      v32 = v47;
      if (qword_1016952B0 != -1)
      {
        swift_once();
      }

      v33 = sub_1000BC4D4(&qword_101699DA0, &unk_10139D120);
      sub_1000076D4(v33, qword_10177C7B8);
      LOBYTE(v57) = v45;
      sub_100028088();
      <- infix<A>(_:_:)();
      if (qword_1016952A8 != -1)
      {
        swift_once();
      }

      v34 = sub_1000BC4D4(&qword_101699DE8, &qword_101393120);
      sub_1000076D4(v34, qword_10177C7A0);
      v57 = v54;
      sub_100029580();
      <- infix<A>(_:_:)();
      if (qword_1016952C0 != -1)
      {
        swift_once();
      }

      v35 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
      sub_1000076D4(v35, qword_10177C7E8);
      v36 = v56;
      v57 = v25;
      v58 = v56;
      sub_100017D5C(v25, v56);
      <- infix<A>(_:_:)();
      sub_100016590(v57, v58);
      type metadata accessor for Table();
      v14 = v48;
      QueryType.insert(or:_:)();

      v10 = v49;
      (*v44)(v14, v49);
      v37 = v59;
      Connection.run(_:)();
      v6 = v37;
      if (v37)
      {
        break;
      }

      v22 += 3;
      (*v41)(v32, v50);
      result = sub_100016590(v25, v36);
      v19 = v53 - 1;
      a3 = v39;
      if (v53 == 1)
      {
        return result;
      }
    }

    (*v41)(v32, v50);
    return sub_100016590(v25, v36);
  }

  return result;
}

uint64_t sub_1009C3B88()
{
  v1 = sub_1000BC4D4(&qword_101699D68, &unk_1013B6450);
  v2 = *(*(v1 - 8) + 64);
  v3 = __chkstk_darwin(v1 - 8);
  v5 = v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v73 = v70 - v6;
  v78 = type metadata accessor for Row();
  v7 = *(v78 - 1);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v78);
  v11 = v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v72 = v70 - v13;
  __chkstk_darwin(v12);
  v77 = v70 - v14;
  v15 = sub_100028E90();
  if (!v15)
  {
    sub_10020223C();
    swift_allocError();
    *v19 = 2;
    *(v19 + 4) = 1;
    return swift_willThrow();
  }

  v16 = v15;
  v17 = Connection.prepare(_:)();
  if (v0)
  {
  }

  v71 = v7;
  v70[1] = 0;
  v20 = v17;

  v21 = dispatch thunk of _AnySequenceBox._underestimatedCount.getter();
  v83 = _swiftEmptyArrayStorage;
  sub_101124920(0, v21 & ~(v21 >> 63), 0);
  v80 = v83;
  v70[3] = v20;
  result = dispatch thunk of _AnySequenceBox._makeIterator()();
  v79 = result;
  if ((v21 & 0x8000000000000000) == 0)
  {
    v22 = v78;
    v70[2] = v16;
    if (v21)
    {
      v75 = (v71 + 16);
      v76 = (v71 + 48);
      v74 = (v71 + 8);
      do
      {
        dispatch thunk of _AnyIteratorBoxBase.next()();
        result = (*v76)(v5, 1, v22);
        if (result == 1)
        {
          goto LABEL_74;
        }

        (*v75)(v11, v5, v22);
        if (qword_1016952A8 != -1)
        {
          swift_once();
        }

        v23 = sub_1000BC4D4(&qword_101699DE8, &qword_101393120);
        sub_1000076D4(v23, qword_10177C7A0);
        sub_100029580();
        Row.subscript.getter();
        v24 = v81;
        if (qword_1016952C0 != -1)
        {
          swift_once();
        }

        v25 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
        sub_1000076D4(v25, qword_10177C7E8);
        result = Row.subscript.getter();
        v26 = v81;
        v27 = v82;
        v28 = v82 >> 62;
        if ((v82 >> 62) > 1)
        {
          if (v28 != 2)
          {

            v60 = 0;
            goto LABEL_60;
          }

          v30 = *(v81 + 16);
          v29 = *(v81 + 24);
          v31 = __OFSUB__(v29, v30);
          v32 = v29 - v30;
          if (v31)
          {
            __break(1u);
LABEL_68:
            __break(1u);
LABEL_69:
            __break(1u);
LABEL_70:
            __break(1u);
            goto LABEL_71;
          }

          if (v32 != 32)
          {
            goto LABEL_47;
          }
        }

        else if (v28)
        {
          if (__OFSUB__(HIDWORD(v81), v81))
          {
            goto LABEL_68;
          }

          if (HIDWORD(v81) - v81 != 32)
          {
LABEL_47:

            if (v28 == 2)
            {
              v63 = *(v26 + 16);
              v62 = *(v26 + 24);
              v60 = v62 - v63;
              if (__OFSUB__(v62, v63))
              {
                __break(1u);
                goto LABEL_59;
              }
            }

            else
            {
              if (v28 == 1)
              {
                if (__OFSUB__(HIDWORD(v26), v26))
                {
                  goto LABEL_72;
                }

                v60 = HIDWORD(v26) - v26;
                goto LABEL_60;
              }

LABEL_59:
              v60 = BYTE6(v27);
            }

LABEL_60:
            sub_100018350();
            swift_allocError();
            *v64 = 32;
            *(v64 + 8) = v60;
            *(v64 + 16) = 0;
            swift_willThrow();

            sub_100016590(v26, v27);

            v65 = *v74;
            (*v74)(v11, v22);

            return (v65)(v5, v22);
          }
        }

        else if (BYTE6(v82) != 32)
        {
          goto LABEL_47;
        }

        v33 = *v74;
        (*v74)(v11, v22);
        v33(v5, v22);
        v34 = v80;
        v83 = v80;
        v36 = v80[2];
        v35 = v80[3];
        if (v36 >= v35 >> 1)
        {
          sub_101124920((v35 > 1), v36 + 1, 1);
          v34 = v83;
        }

        v34[2] = v36 + 1;
        v80 = v34;
        v37 = &v34[3 * v36];
        v37[4] = v24;
        v37[5] = v26;
        v37[6] = v27;
        --v21;
        v22 = v78;
      }

      while (v21);
    }

    v38 = v73;
    dispatch thunk of _AnyIteratorBoxBase.next()();
    v39 = v71;
    v78 = *(v71 + 48);
    if ((v78)(v38, 1, v22) == 1)
    {
LABEL_27:

      sub_10000B3A8(v38, &qword_101699D68, &unk_1013B6450);
      sub_1000BC4D4(&qword_1016B13E8, &qword_1013D09F8);
      result = swift_allocObject();
      *(result + 16) = v80;
      return result;
    }

    v41 = *(v39 + 32);
    v40 = v39 + 32;
    v75 = (v40 - 16);
    v76 = v41;
    v71 = v40;
    v42 = (v40 - 24);
    while (1)
    {
      v43 = v77;
      (v76)(v77, v38, v22);
      v44 = v72;
      (*v75)(v72, v43, v22);
      if (qword_1016952A8 != -1)
      {
        swift_once();
      }

      v45 = sub_1000BC4D4(&qword_101699DE8, &qword_101393120);
      sub_1000076D4(v45, qword_10177C7A0);
      sub_100029580();
      Row.subscript.getter();
      v46 = v81;
      if (qword_1016952C0 != -1)
      {
        swift_once();
      }

      v47 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
      sub_1000076D4(v47, qword_10177C7E8);
      result = Row.subscript.getter();
      v48 = v81;
      v49 = v82;
      v50 = v82 >> 62;
      if ((v82 >> 62) > 1)
      {
        if (v50 != 2)
        {

          v61 = 0;
          goto LABEL_66;
        }

        v53 = *(v81 + 16);
        v52 = *(v81 + 24);
        v31 = __OFSUB__(v52, v53);
        v51 = v52 - v53;
        if (v31)
        {
          goto LABEL_69;
        }
      }

      else if (v50)
      {
        LODWORD(v51) = HIDWORD(v81) - v81;
        if (__OFSUB__(HIDWORD(v81), v81))
        {
          goto LABEL_70;
        }

        v51 = v51;
      }

      else
      {
        v51 = BYTE6(v82);
      }

      if (v51 != 32)
      {
        break;
      }

      v54 = *v42;
      (*v42)(v44, v22);
      v54(v77, v22);
      v55 = v80;
      v83 = v80;
      v56 = v22;
      v58 = v80[2];
      v57 = v80[3];
      if (v58 >= v57 >> 1)
      {
        sub_101124920((v57 > 1), v58 + 1, 1);
        v55 = v83;
      }

      v55[2] = v58 + 1;
      v80 = v55;
      v59 = &v55[3 * v58];
      v59[4] = v46;
      v59[5] = v48;
      v59[6] = v49;
      v38 = v73;
      dispatch thunk of _AnyIteratorBoxBase.next()();
      v22 = v56;
      if ((v78)(v38, 1, v56) == 1)
      {
        goto LABEL_27;
      }
    }

    if (v50 == 2)
    {
      v67 = *(v48 + 16);
      v66 = *(v48 + 24);
      v61 = v66 - v67;
      if (!__OFSUB__(v66, v67))
      {
        goto LABEL_66;
      }

      __break(1u);
    }

    else if (v50 == 1)
    {
      if (__OFSUB__(HIDWORD(v48), v48))
      {
        goto LABEL_73;
      }

      v61 = HIDWORD(v48) - v48;
      goto LABEL_66;
    }

    v61 = BYTE6(v49);
LABEL_66:
    sub_100018350();
    swift_allocError();
    *v68 = 32;
    *(v68 + 8) = v61;
    *(v68 + 16) = 0;
    swift_willThrow();

    sub_100016590(v48, v49);

    v69 = *v42;
    (*v42)(v44, v22);
    v69(v77, v22);
  }

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

uint64_t sub_1009C44D0(uint64_t a1, uint64_t a2)
{
  sub_1009C0458(a1, a2, *v2);
  v4 = *(v3 + 8);

  return v4();
}

uint64_t sub_1009C454C()
{
  v2 = sub_1009BFDBC(*v0);
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_1009C45C8(uint64_t a1, uint64_t a2)
{
  sub_1009C0A2C(a2, *v2, a1);
  v4 = *(v3 + 8);

  return v4();
}

uint64_t sub_1009C4650@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for Row();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, a1);
  result = sub_1009B4F48(v8, a2);
  if (v2)
  {
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    result = swift_allocError();
    *v11 = v2;
  }

  return result;
}

uint64_t sub_1009C475C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v44[9] = a3;
  v39 = a2;
  v38 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v4 = *(v38 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v38);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v36 - v10;
  __chkstk_darwin(v9);
  v13 = &v36 - v12;
  v14 = type metadata accessor for Table();
  v41 = *(v14 - 8);
  v15 = *(v41 + 64);
  v16 = __chkstk_darwin(v14);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v40 = &v36 - v20;
  v21 = __chkstk_darwin(v19);
  v42 = &v36 - v22;
  v36 = OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_keyGenerationHint;
  if (qword_1016952D0 != -1)
  {
    v35 = v21;
    swift_once();
    v21 = v35;
  }

  v37 = v21;
  v23 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_1000076D4(v23, qword_10177C818);
  type metadata accessor for UUID();
  == infix<A>(_:_:)();
  if (qword_1016952A0 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v23, qword_10177C788);
  v24 = a1 + *(type metadata accessor for BeaconIdentifier() + 20);
  == infix<A>(_:_:)();
  && infix(_:_:)();
  v25 = *(v4 + 8);
  v26 = v38;
  v25(v8, v38);
  v25(v11, v26);
  v27 = v37;
  QueryType.filter(_:)();
  v25(v13, v26);
  if (qword_1016952A8 != -1)
  {
    swift_once();
  }

  v36 = sub_1000BC4D4(&qword_101699DE8, &qword_101393120);
  sub_1000076D4(v36, qword_10177C7A0);
  v44[0] = v39;
  sub_100029580();
  <= infix<A>(_:_:)();
  v28 = v40;
  QueryType.filter(_:)();
  v25(v13, v26);
  v29 = v41;
  v30 = *(v41 + 8);
  v30(v18, v27);
  sub_1000BC4D4(&qword_101699D90, &unk_1013930F0);
  *(swift_allocObject() + 16) = xmmword_101385D80;
  sub_1000041A4(&qword_10169DDA0, &qword_101699DE8, &qword_101393120);
  ExpressionType.desc.getter();
  v31 = v42;
  QueryType.order(_:)();

  v30(v28, v27);
  v44[3] = v27;
  v44[4] = &protocol witness table for Table;
  v32 = sub_1000280DC(v44);
  (*(v29 + 16))(v32, v31, v27);
  v33 = v43;
  sub_1009C3B88();
  if (v33)
  {
    v30(v31, v27);
    return sub_100007BAC(v44);
  }

  else
  {
    sub_100007BAC(v44);
    dispatch thunk of _AnySequenceBox._makeIterator()();

    dispatch thunk of _AnyIteratorBoxBase.next()();

    v30(v31, v27);
    return v44[5];
  }
}

uint64_t type metadata accessor for LostModeEndPoint()
{
  result = qword_1016B1448;
  if (!qword_1016B1448)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1009C4DB4()
{
  v1 = *(*v0 + 16);
  sub_1000BC4D4(&qword_101696D88, &unk_10138B760);
  OS_dispatch_queue.sync<A>(execute:)();
  URLComponents.init()();
  URLComponents.scheme.setter();
  URLComponents.host.setter();
  URLComponents.path.setter();
  v2 = URLComponents.path.modify();
  v3._countAndFlagsBits = 0x646F4D74736F6C2FLL;
  v3._object = 0xE900000000000065;
  String.append(_:)(v3);
  return v2(&v5, 0);
}

uint64_t sub_1009C4EC0(uint64_t a1)
{
  v2 = type metadata accessor for FeatureSupportMatrix();
  v73 = *(v2 - 8);
  v3 = *(v73 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000BC4D4(&unk_1016AF8C0, &unk_1013A07A0);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v10 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v69 - v11;
  v13 = type metadata accessor for BeaconProductInfoRecord();
  v74 = *(v13 - 8);
  v14 = *(v74 + 64);
  v15 = __chkstk_darwin(v13);
  v17 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v69 - v18;
  v20 = type metadata accessor for OwnedBeaconRecord();
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20);
  v23 = &v69 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000325D4(a1, v23, type metadata accessor for OwnedBeaconRecord);
  My = type metadata accessor for Feature.FindMy();
  v75[3] = My;
  v75[4] = sub_10004521C();
  v25 = sub_1000280DC(v75);
  (*(*(My - 8) + 104))(v25, enum case for Feature.FindMy.separationAlerts(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100007BAC(v75);
  if ((My & 1) == 0)
  {
    goto LABEL_38;
  }

  v69 = v5;
  v70 = v17;
  v72 = v13;
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v26 = *(qword_10177B348 + 40);
  OS_dispatch_queue.sync<A>(execute:)();
  v71 = v75[0];
  v27 = sub_100D60CD0();
  v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v29;
  if (v28 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v30 == v31)
  {

    goto LABEL_9;
  }

  v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v32 & 1) == 0)
  {
    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;
    v39 = v27;
    if (v36 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v38 == v40)
    {

      v41 = v72;
      v42 = v70;
LABEL_23:

      sub_100AC1584(&v23[*(v20 + 20)], v10);
      sub_1009C650C(v23, type metadata accessor for OwnedBeaconRecord);
      if ((*(v74 + 48))(v10, 1, v41) == 1)
      {
        v35 = v10;
        goto LABEL_25;
      }

      sub_1009C656C(v10, v42, type metadata accessor for BeaconProductInfoRecord);
      v43 = *(v42 + *(v41 + 80));
      v44 = v42;
LABEL_27:
      sub_1009C650C(v44, type metadata accessor for BeaconProductInfoRecord);
      LODWORD(v34) = (v43 >> 11) & 1;
      return v34 & 1;
    }

    v45 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v41 = v72;
    v42 = v70;
    if (v45)
    {
      goto LABEL_19;
    }

    v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v48 = v47;
    if (v46 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v48 == v49)
    {

      goto LABEL_23;
    }

    v50 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v50)
    {
LABEL_19:

      goto LABEL_23;
    }

    v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v53 = v52;
    if (v51 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v53 == v54)
    {
    }

    else
    {
      v55 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v55 & 1) == 0)
      {

        v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v62 = v61;
        if (v60 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v62 == v63)
        {
        }

        else
        {
          v64 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v64 & 1) == 0)
          {
            v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v67 = v66;
            if (v65 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v67 != v68)
            {
              _stringCompareWithSmolCheck(_:_:expecting:)();
            }

LABEL_37:

LABEL_38:
            sub_1009C650C(v23, type metadata accessor for OwnedBeaconRecord);
            goto LABEL_39;
          }
        }

        sub_1009C650C(v23, type metadata accessor for OwnedBeaconRecord);

        goto LABEL_39;
      }
    }

    v34 = sub_101073E50(v71);

    v56 = v69;
    if (*(v34 + 16))
    {
      v57 = sub_100771D84(1);
      if (v58)
      {
        sub_1000325D4(*(v34 + 56) + *(v73 + 72) * v57, v56, type metadata accessor for FeatureSupportMatrix);

        LOBYTE(v34) = sub_1009C5794(v23, v56);
        sub_1009C650C(v56, type metadata accessor for FeatureSupportMatrix);
        goto LABEL_11;
      }
    }

    goto LABEL_37;
  }

LABEL_9:
  v33 = v72;
  if (*&v23[*(v20 + 68)] != 21760)
  {

    sub_100AC1584(&v23[*(v20 + 20)], v12);
    sub_1009C650C(v23, type metadata accessor for OwnedBeaconRecord);
    if ((*(v74 + 48))(v12, 1, v33) == 1)
    {
      v35 = v12;
LABEL_25:
      sub_10000B3A8(v35, &unk_1016AF8C0, &unk_1013A07A0);
LABEL_39:
      LOBYTE(v34) = 0;
      return v34 & 1;
    }

    sub_1009C656C(v12, v19, type metadata accessor for BeaconProductInfoRecord);
    v43 = *&v19[*(v33 + 80)];
    v44 = v19;
    goto LABEL_27;
  }

  LOBYTE(v34) = sub_101073E44(v71);

LABEL_11:
  sub_1009C650C(v23, type metadata accessor for OwnedBeaconRecord);
  return v34 & 1;
}

uint64_t sub_1009C5794(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_101697BC8, &qword_10138CBE0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v32 - v6;
  v8 = type metadata accessor for SystemVersionNumber();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for OwnedBeaconRecord();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000325D4(a1, v16, type metadata accessor for OwnedBeaconRecord);
  v17 = &v16[*(v13 + 56)];
  v18 = *v17;
  v19 = *(v17 + 1);

  v20 = sub_10088D4B8();
  if (v21)
  {
    v24 = v21;
    v32 = a2;
    v33 = v23;
    v25 = v22;
    v26 = v20;
    v27 = &v16[*(v13 + 60)];
    v29 = *v27;
    v28 = *(v27 + 1);

    sub_1009C650C(v16, type metadata accessor for OwnedBeaconRecord);
    SystemVersionNumber.init(rawValue:)();
    if ((*(v9 + 48))(v7, 1, v8) != 1)
    {
      (*(v9 + 32))(v12, v7, v8);
      v30 = sub_100E96A14(v26, v24, v25, v33, v12);

      (*(v9 + 8))(v12, v8);
      return v30 & 1;
    }

    sub_10000B3A8(v7, &qword_101697BC8, &qword_10138CBE0);
  }

  else
  {
    sub_1009C650C(v16, type metadata accessor for OwnedBeaconRecord);
  }

  v30 = 0;
  return v30 & 1;
}

void *sub_1009C5A54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v70 = a2;
  v65 = type metadata accessor for LocalFindableAccessoryRecord();
  v7 = *(*(v65 - 8) + 64);
  __chkstk_darwin(v65);
  v9 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000BC4D4(&unk_1016AF8C0, &unk_1013A07A0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v64 - v12;
  v69 = type metadata accessor for StableIdentifier();
  v14 = *(*(v69 - 8) + 64);
  v15 = __chkstk_darwin(v69);
  v68 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v67 = &v64 - v17;
  v18 = type metadata accessor for SharedBeaconRecord(0);
  v19 = *(*(v18 - 1) + 64);
  v20 = __chkstk_darwin(v18);
  v66 = &v64 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v23 = &v64 - v22;
  v24 = type metadata accessor for OwnedBeaconRecord();
  v25 = *(*(v24 - 8) + 64);
  v26 = __chkstk_darwin(v24);
  v28 = &v64 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v30 = &v64 - v29;
  v77[3] = a3;
  v77[4] = a4;
  v31 = sub_1000280DC(v77);
  (*(*(a3 - 8) + 16))(v31, a1, a3);
  sub_10001F280(v77, v76);
  sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
  if (swift_dynamicCast())
  {
    sub_1009C656C(v30, v28, type metadata accessor for OwnedBeaconRecord);
    if (qword_101694940 != -1)
    {
      swift_once();
    }

    v32 = *(qword_10177B348 + 40);
    OS_dispatch_queue.sync<A>(execute:)();
    v33 = v72[0];
    if (qword_1016954E8 != -1)
    {
      swift_once();
    }

    v34 = qword_10177CE20;
    v73 = &type metadata for KoreaFeatureFlag;
    v35 = sub_10013CCC4();
    v74 = v35;

    v36 = isFeatureEnabled(_:)();
    sub_100007BAC(v72);
    if ((v36 & 1) != 0 || (sub_100EF9844() & 1) == 0)
    {
      v71 = v34;
    }

    else
    {
      v71 = v34;
      sub_1010F6870(2);
      sub_1010F6870(1);
    }

    if (sub_1009C4EC0(v28) & 1) != 0 && ((v73 = &type metadata for KoreaFeatureFlag, v74 = v35, v41 = isFeatureEnabled(_:)(), sub_100007BAC(v72), (v41) || (sub_100EF9844() & 1) == 0))
    {
      sub_100DEB610(v72, 8);
      sub_100DEB610(v72, 9);
    }

    else
    {
      sub_1010F6870(8);
      sub_1010F6870(9);
    }

    v43 = *(v24 + 24);
    v44 = v67;
    sub_1000325D4(&v28[v43], v67, type metadata accessor for StableIdentifier);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_1009C650C(v44, type metadata accessor for StableIdentifier);
    if (EnumCaseMultiPayload != 1)
    {
      sub_1010F6870(12);
      sub_1010F6870(13);
    }

    if ((sub_100D60B1C() & 1) == 0 || (My = type metadata accessor for Feature.FindMy(), v73 = My, v74 = sub_10004521C(), v47 = sub_1000280DC(v72), (*(*(My - 8) + 104))(v47, enum case for Feature.FindMy.btRSSIFinding(_:), My), LOBYTE(My) = isFeatureEnabled(_:)(), sub_100007BAC(v72), (My & 1) == 0))
    {
      sub_1010F6870(10);
      sub_1010F6870(11);
    }

    v48 = v68;
    sub_1000325D4(&v28[v43], v68, type metadata accessor for StableIdentifier);
    v49 = swift_getEnumCaseMultiPayload();
    sub_1009C650C(v48, type metadata accessor for StableIdentifier);
    if (!v49)
    {
      sub_1010F6870(7);
    }

    if ((sub_1000322C8() & 1) == 0)
    {
      goto LABEL_37;
    }

    v50 = type metadata accessor for Feature.FindMy();
    v73 = v50;
    v51 = sub_10004521C();
    v74 = v51;
    v52 = sub_1000280DC(v72);
    v53 = *(*(v50 - 8) + 104);
    v53(v52, enum case for Feature.FindMy.itemSharing(_:), v50);
    v54 = isFeatureEnabled(_:)();
    sub_100007BAC(v72);
    if (v54)
    {
      sub_100DEB610(v72, 4);
      v73 = v50;
      v74 = v51;
      v55 = sub_1000280DC(v72);
      v53(v55, enum case for Feature.FindMy.cowardlyCarrot(_:), v50);
      v56 = isFeatureEnabled(_:)();
      sub_100007BAC(v72);
      if (v56)
      {
        v57 = sub_101073410(v33);

        if ((v57 & 1) == 0)
        {
          sub_100DEB610(v72, 21);
LABEL_42:
          sub_1009C650C(v28, type metadata accessor for OwnedBeaconRecord);
          v42 = v71;
          goto LABEL_60;
        }
      }

      else
      {
      }
    }

    else
    {
LABEL_37:

      v58 = v71;
      if (sub_10111F67C(4, v71))
      {
        sub_1010F6870(4);
        v58 = v71;
      }

      if (sub_10111F67C(5, v58))
      {
        sub_1010F6870(5);
      }
    }

    sub_1010F6870(21);
    goto LABEL_42;
  }

  if (swift_dynamicCast())
  {
    v37 = v66;
    sub_1009C656C(v23, v66, type metadata accessor for SharedBeaconRecord);
    v72[0] = &_swiftEmptySetSingleton;
    sub_100AC1584(v37 + v18[5], v13);
    v38 = type metadata accessor for BeaconProductInfoRecord();
    if ((*(*(v38 - 8) + 48))(v13, 1, v38) == 1)
    {
      sub_10000B3A8(v13, &unk_1016AF8C0, &unk_1013A07A0);
      v39 = *(v37 + v18[11]);
      if (v39 == -1)
      {
        if (*(v37 + v18[12]) == -1)
        {
          sub_100DEB610(&v75, 6);
          sub_100DEB610(&v75, 3);
          sub_100DEB610(&v75, 14);
          v60 = 15;
          goto LABEL_49;
        }
      }

      else if (v39 == 76)
      {
        v40 = *(v37 + v18[12]);
        if (!HIDWORD(v40) && (v40 == 22034 || v40 == 21760))
        {
          sub_100DEB610(&v75, 6);
          sub_100DEB610(&v75, 7);
          sub_100DEB610(&v75, 12);
          sub_100DEB610(&v75, 13);
LABEL_48:
          sub_100DEB610(&v75, 17);
          sub_100DEB610(&v75, 3);
          sub_100DEB610(&v75, 16);
          v60 = 5;
LABEL_49:
          sub_100DEB610(&v75, v60);
        }
      }

      if (*(v37 + v18[16]) == 5)
      {
        sub_100DEB610(&v75, 6);
        sub_1010F6870(7);
        sub_100DEB610(&v75, 3);
        if (*(v37 + v18[11]) != 76)
        {
          goto LABEL_59;
        }

        v61 = *(v37 + v18[12]);
        if (HIDWORD(v61) || v61 != 22034 && v61 != 21760)
        {
          goto LABEL_59;
        }

        sub_100DEB610(&v75, 12);
        v62 = 13;
      }

      else
      {
        v62 = 5;
      }

      sub_100DEB610(&v75, v62);
LABEL_59:
      sub_1009C650C(v37, type metadata accessor for SharedBeaconRecord);
      v42 = v72[0];
      goto LABEL_60;
    }

    v59 = *&v13[*(v38 + 80)];
    sub_1009C650C(v13, type metadata accessor for BeaconProductInfoRecord);
    if (v59)
    {
      sub_100DEB610(&v75, 6);
      sub_100DEB610(&v75, 7);
      if ((v59 & 0x400) == 0)
      {
LABEL_45:
        if ((v59 & 0x100) == 0)
        {
          goto LABEL_46;
        }

        goto LABEL_64;
      }
    }

    else if ((v59 & 0x400) == 0)
    {
      goto LABEL_45;
    }

    sub_100DEB610(&v75, 10);
    sub_100DEB610(&v75, 11);
    if ((v59 & 0x100) == 0)
    {
LABEL_46:
      if ((v59 & 0x4000) == 0)
      {
        goto LABEL_48;
      }

LABEL_47:
      sub_100DEB610(&v75, 22);
      sub_100DEB610(&v75, 23);
      goto LABEL_48;
    }

LABEL_64:
    sub_100DEB610(&v75, 12);
    sub_100DEB610(&v75, 13);
    if ((v59 & 0x4000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_47;
  }

  if (swift_dynamicCast())
  {
    v42 = sub_100B041C8(&off_101608658);
    sub_1009C650C(v9, type metadata accessor for LocalFindableAccessoryRecord);
  }

  else
  {
    v42 = &_swiftEmptySetSingleton;
  }

LABEL_60:
  sub_100007BAC(v76);
  sub_100007BAC(v77);
  return v42;
}

uint64_t sub_1009C650C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1009C656C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1009C65D4(id *a1, uint64_t a2)
{
  v5 = type metadata accessor for Date();
  v69 = *(v5 - 8);
  v6 = *(v69 + 64);
  __chkstk_darwin(v5);
  v64 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v65 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v61 - v12;
  v14 = sub_1000BC4D4(&unk_1016B1660, &unk_10138CE10);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = &v61 - v16;
  v18 = type metadata accessor for ShareRecord();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18);
  v21 = &v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100A1B358(a2, v21, type metadata accessor for ShareRecord);
  v22 = [*a1 encryptedValues];
  ObjectType = swift_getObjectType();
  v70 = v18;
  v23 = *(v18 + 24);
  type metadata accessor for UUID();
  sub_100003F64(&qword_1016984A0, &type metadata accessor for UUID);
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    v24 = UUID.uuidString.getter();
    *(&v72 + 1) = &type metadata for String;
    v73 = &protocol witness table for String;
    *&v71 = v24;
    *(&v71 + 1) = v25;
    CKRecordKeyValueSetting.subscript.setter();
  }

  v26 = v70[7];
  v27 = sub_100003F64(&qword_101698290, &type metadata accessor for Date);
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    *(&v72 + 1) = v5;
    v73 = &protocol witness table for Date;
    v28 = sub_1000280DC(&v71);
    (*(v69 + 16))(v28, &v21[v26], v5);
    CKRecordKeyValueSetting.subscript.setter();
  }

  v66 = v2;
  v67 = v22;
  v29 = v70[8];
  v30 = *(v14 + 48);
  sub_1000D2A70(v2 + v29, v17, &unk_101696900, &unk_10138B1E0);
  sub_1000D2A70(&v21[v29], &v17[v30], &unk_101696900, &unk_10138B1E0);
  v31 = *(v69 + 48);
  if (v31(v17, 1, v5) == 1)
  {
    if (v31(&v17[v30], 1, v5) == 1)
    {
      sub_10000B3A8(v17, &unk_101696900, &unk_10138B1E0);
      v32 = v70;
      goto LABEL_15;
    }
  }

  else
  {
    v33 = v13;
    sub_1000D2A70(v17, v13, &unk_101696900, &unk_10138B1E0);
    if (v31(&v17[v30], 1, v5) != 1)
    {
      v63 = v27;
      v57 = v69;
      v58 = v64;
      (*(v69 + 32))(v64, &v17[v30], v5);
      v62 = v33;
      v59 = dispatch thunk of static Equatable.== infix(_:_:)();
      v60 = *(v57 + 8);
      v60(v58, v5);
      v60(v62, v5);
      sub_10000B3A8(v17, &unk_101696900, &unk_10138B1E0);
      v32 = v70;
      if (v59)
      {
        goto LABEL_15;
      }

      goto LABEL_11;
    }

    (*(v69 + 8))(v13, v5);
  }

  sub_10000B3A8(v17, &unk_1016B1660, &unk_10138CE10);
  v32 = v70;
LABEL_11:
  v34 = v65;
  sub_1000D2A70(&v21[v29], v65, &unk_101696900, &unk_10138B1E0);
  if (v31(v34, 1, v5) == 1)
  {
    sub_10000B3A8(v34, &unk_101696900, &unk_10138B1E0);
    v71 = 0u;
    v72 = 0u;
    v73 = 0;
  }

  else
  {
    *(&v72 + 1) = v5;
    v73 = &protocol witness table for Date;
    v35 = sub_1000280DC(&v71);
    (*(v69 + 32))(v35, v34, v5);
  }

  CKRecordKeyValueSetting.subscript.setter();
LABEL_15:
  v36 = v32[9];
  v37 = v66;
  v38 = *(v66 + v36);
  v40 = *(v66 + v36 + 8);
  v39 = *(v66 + v36 + 16);
  v41 = &v21[v36];
  if (v38 != *v41 || (v40 != *(v41 + 1) || v39 != *(v41 + 2)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    *(&v72 + 1) = &type metadata for String;
    v73 = &protocol witness table for String;
    *&v71 = v40;
    *(&v71 + 1) = v39;

    CKRecordKeyValueSetting.subscript.setter();
  }

  v42 = v32[10];
  v43 = *(v37 + v42);
  v44 = *(v37 + v42 + 8);
  v45 = &v21[v42];
  v46 = *v45;
  v47 = *(v45 + 1);
  if (v43 != *v45 || v44 != v47)
  {
    v48 = *v45;
    v49 = *(v45 + 1);
    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      *(&v72 + 1) = &type metadata for String;
      v73 = &protocol witness table for String;
      *&v71 = v46;
      *(&v71 + 1) = v47;

      CKRecordKeyValueSetting.subscript.setter();
    }
  }

  v50 = v32[11];
  v51 = *(v37 + v50);
  v52 = *&v21[v50];
  if (v51 != v52)
  {
    *(&v72 + 1) = &type metadata for UInt64;
    v73 = &protocol witness table for UInt64;
    *&v71 = v52;
    CKRecordKeyValueSetting.subscript.setter();
  }

  v53 = v32[12];
  v54 = *(v37 + v53);
  v55 = v21[v53];
  if (v54 == v55)
  {
    sub_100A1B3C0(v21, type metadata accessor for ShareRecord);
    return swift_unknownObjectRelease();
  }

  else
  {
    *(&v72 + 1) = &type metadata for Int;
    v73 = &protocol witness table for Int;
    *&v71 = v55;
    CKRecordKeyValueSetting.subscript.setter();
    swift_unknownObjectRelease();
    return sub_100A1B3C0(v21, type metadata accessor for ShareRecord);
  }
}

uint64_t sub_1009C6E04(id *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for OwnedBeaconGroup.VersionedGroupMACAddress(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for OwnedBeaconGroup(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100A1B358(a2, v13, type metadata accessor for OwnedBeaconGroup);
  v14 = [*a1 encryptedValues];
  ObjectType = swift_getObjectType();
  v16 = *(v3 + 24);
  v73 = v13;
  v74 = v10;
  v71 = ObjectType;
  v72 = v14;
  if (v16 != 1)
  {
    v23 = *(v3 + 16);
    if (v23 != 1)
    {
      if (qword_1016946D0 != -1)
      {
        swift_once();
      }

      v34 = type metadata accessor for Logger();
      sub_1000076D4(v34, qword_10177ACC8);
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 134217984;
        *(v37 + 4) = v23;
        _os_log_impl(&_mh_execute_header, v35, v36, "Unexpected OwnedBeaconGroup version: %ld!", v37, 0xCu);
      }

      goto LABEL_22;
    }

    v24 = v74[7];
    v25 = *(v6 + 20);
    v26 = type metadata accessor for MACAddress();
    (*(*(v26 - 8) + 16))(&v9[v25], v3 + v24, v26);
    *v9 = 1;
    v9[8] = 0;
    v27 = sub_10051EC44();
    v29 = v28;
    sub_100A1B3C0(v9, type metadata accessor for OwnedBeaconGroup.VersionedGroupMACAddress);
    CKRecordKeyValueSetting.subscript.getter();
    v31 = v75;
    v30 = v76;
    if (v76 >> 60 == 15)
    {
      if (v29 >> 60 == 15)
      {
        sub_100006654(v75, v76);
        goto LABEL_22;
      }
    }

    else if (v29 >> 60 != 15)
    {
      sub_100017D5C(v27, v29);
      sub_100017D5C(v27, v29);
      sub_10002E98C(v31, v30);
      v68 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v31, v30, v27, v29);
      sub_100016590(v27, v29);
      sub_100006654(v31, v30);
      sub_100006654(v27, v29);
      sub_100006654(v31, v30);
      if (v68)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

    sub_100017D5C(v27, v29);
    sub_100006654(v31, v30);
    sub_100006654(v27, v29);
LABEL_19:
    v77 = &type metadata for Data;
    v78 = &protocol witness table for Data;
    v75 = v27;
    v76 = v29;
    sub_100017D5C(v27, v29);
    CKRecordKeyValueSetting.subscript.setter();
LABEL_20:
    sub_100016590(v27, v29);
    goto LABEL_22;
  }

  CKRecordKeyValueSetting.subscript.getter();
  v17 = v75;
  v18 = v76;
  v19 = *(v10 + 28);
  v21 = MACAddress.dataRepresentation.getter();
  v22 = v20;
  if (v18 >> 60 == 15)
  {
    if (v20 >> 60 == 15)
    {
      sub_100006654(v17, v18);
      goto LABEL_22;
    }

    goto LABEL_10;
  }

  if (v20 >> 60 == 15)
  {
LABEL_10:
    sub_100006654(v17, v18);
    sub_100006654(v21, v22);
LABEL_11:
    v32 = MACAddress.dataRepresentation.getter();
    v77 = &type metadata for Data;
    v78 = &protocol witness table for Data;
    v75 = v32;
    v76 = v33;
    CKRecordKeyValueSetting.subscript.setter();
    goto LABEL_22;
  }

  sub_10002E98C(v17, v18);
  sub_100017D5C(v21, v22);
  v38 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v17, v18, v21, v22);
  sub_100016590(v21, v22);
  sub_100006654(v17, v18);
  sub_100006654(v21, v22);
  sub_100006654(v17, v18);
  if ((v38 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_22:
  v39 = v74;
  v40 = v74[10];
  v70 = v3;
  v41 = *(v3 + v40);
  v42 = type metadata accessor for OwnedBeaconGroup.PairingState(0);
  v43 = sub_100523B4C();
  sub_100523BA0();
  sub_100101BAC();
  sub_100003F64(&qword_1016A4178, type metadata accessor for OwnedBeaconGroup.PairingState);
  sub_100003F64(&unk_1016A4180, type metadata accessor for OwnedBeaconGroup.PairingState);
  v44 = Dictionary<>.dataRepresentation.getter();
  v46 = v45;
  v47 = *&v73[v39[10]];
  v69[0] = v43;
  v69[1] = v42;
  v48 = Dictionary<>.dataRepresentation.getter();
  v50 = v49;
  LOBYTE(v42) = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v44, v46, v48, v49);
  sub_100016590(v48, v50);
  sub_100016590(v44, v46);
  if ((v42 & 1) == 0)
  {
    v51 = Dictionary<>.dataRepresentation.getter();
    v77 = &type metadata for Data;
    v78 = &protocol witness table for Data;
    v75 = v51;
    v76 = v52;
    CKRecordKeyValueSetting.subscript.setter();
  }

  v53 = v73;
  v54 = v74;
  v55 = v74[9];
  v56 = v70;
  v57 = *(v70 + v55);
  v58 = *(v70 + v55 + 8);
  v59 = &v73[v55];
  v61 = *v59;
  v60 = v59[1];
  if (v57 != *v59 || v58 != v60)
  {
    v62 = *v59;
    v63 = v59[1];
    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      v77 = &type metadata for String;
      v78 = &protocol witness table for String;
      v75 = v61;
      v76 = v60;

      CKRecordKeyValueSetting.subscript.setter();
    }
  }

  v64 = v54[8];
  v65 = *(v56 + v64);
  v66 = *(v53 + v64);
  if (v65 != v66)
  {
    v77 = &type metadata for Bool;
    v78 = &protocol witness table for Bool;
    LOBYTE(v75) = v66;
    CKRecordKeyValueSetting.subscript.setter();
  }

  swift_unknownObjectRelease();
  return sub_100A1B3C0(v53, type metadata accessor for OwnedBeaconGroup);
}

void *sub_1009C75D0(int a1, uint64_t a2)
{
  v63 = a2;
  v62 = a1;
  v68 = type metadata accessor for SafeLocation();
  v3 = *(v68 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v68);
  v61 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v73 = &v59 - v8;
  v9 = __chkstk_darwin(v7);
  v60 = &v59 - v10;
  __chkstk_darwin(v9);
  v12 = &v59 - v11;
  v13 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v59 - v15;
  v17 = type metadata accessor for DirectorySequence();
  v64 = *(v17 - 8);
  v65 = v17;
  v18 = *(v64 + 64);
  __chkstk_darwin(v17);
  v20 = &v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for URL();
  v22 = *(v21 - 8);
  v23 = *(v22 + 8);
  v24 = __chkstk_darwin(v21);
  v26 = &v59 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v28 = &v59 - v27;
  v59 = *(*(v2 + 280) + 168);
  if (qword_101694F88 != -1)
  {
    goto LABEL_27;
  }

  while (1)
  {
    v69 = v12;
    v72 = v3;
    v29 = sub_1000076D4(v21, qword_10177C268);
    (*(v22 + 2))(v28, v29, v21);
    v74 = _swiftEmptyArrayStorage;
    v75[0] = _swiftEmptyArrayStorage;
    v30 = [objc_opt_self() defaultManager];
    v66 = v28;
    NSFileManager.deepSequence(at:includingPropertiesForKeys:options:)();

    v31 = v21;
    v32 = v20;
    DirectorySequence.next()();
    v34 = v22 + 48;
    v33 = *(v22 + 6);
    v35 = v31;
    v36 = v33(v16, 1, v31);
    v67 = v22;
    v12 = 0;
    if (v36 != 1)
    {
      v70 = *(v22 + 4);
      v71 = v22 + 32;
      v37 = (v22 + 8);
      v38 = v59;
      do
      {
        v70(v26, v16, v35);
        v39 = v34;
        v40 = v33;
        v41 = objc_autoreleasePoolPush();
        sub_1006005CC(v26, v38, v75, &v74);
        objc_autoreleasePoolPop(v41);
        (*v37)(v26, v35);
        DirectorySequence.next()();
        v33 = v40;
        v34 = v39;
      }

      while (v33(v16, 1, v35) != 1);
    }

    (*(v64 + 8))(v32, v65);
    v28 = static os_log_type_t.debug.getter();
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v42 = static OS_os_log.default.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_10138BBE0;
    v16 = v75[0];
    v44 = *(v75[0] + 16);
    *(v43 + 56) = &type metadata for Int;
    *(v43 + 64) = &protocol witness table for Int;
    *(v43 + 32) = v44;
    sub_100003F64(&qword_1016B14E0, &type metadata accessor for URL);

    v45 = v66;
    v46 = dispatch thunk of CustomStringConvertible.description.getter();
    v48 = v47;
    *(v43 + 96) = &type metadata for String;
    *(v43 + 104) = sub_100008C00();
    *(v43 + 72) = v46;
    *(v43 + 80) = v48;
    os_log(_:dso:log:_:_:)();

    v67[1](v45, v35);

    v20 = *(v16 + 16);
    v49 = _swiftEmptyArrayStorage;
    if (v20)
    {
      v26 = 0;
      v21 = v62;
      v3 = v72;
      v22 = v69;
      while (v26 < *(v16 + 16))
      {
        v28 = ((*(v3 + 80) + 32) & ~*(v3 + 80));
        v50 = *(v3 + 72);
        sub_100A1B358(&v28[v16 + v50 * v26], v22, type metadata accessor for SafeLocation);
        if (v21 == 4 || v22[*(v68 + 48)] == v21)
        {
          sub_100A18C9C(v22, v73, type metadata accessor for SafeLocation);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v75[0] = v49;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_10112483C(0, *(v49 + 16) + 1, 1);
            v49 = v75[0];
          }

          v53 = *(v49 + 16);
          v52 = *(v49 + 24);
          if (v53 >= v52 >> 1)
          {
            sub_10112483C(v52 > 1, v53 + 1, 1);
            v49 = v75[0];
          }

          *(v49 + 16) = v53 + 1;
          sub_100A18C9C(v73, &v28[v49 + v53 * v50], type metadata accessor for SafeLocation);
          v3 = v72;
          v22 = v69;
        }

        else
        {
          sub_100A1B3C0(v22, type metadata accessor for SafeLocation);
        }

        if (v20 == ++v26)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
      goto LABEL_26;
    }

LABEL_17:

    __chkstk_darwin(v54);
    *(&v59 - 2) = v63;
    v12 = sub_10013D504(sub_100A18C7C, (&v59 - 4), v49);
    v55 = _swiftEmptyArrayStorage;
    v75[0] = _swiftEmptyArrayStorage;
    v26 = *(v12 + 2);
    if (!v26)
    {
      break;
    }

    v56 = 0;
    v22 = &unk_1016B1680;
    v21 = SPSafeLocation_ptr;
    v3 = v72;
    v16 = v60;
    v28 = v61;
    while (v56 < *(v12 + 2))
    {
      sub_100A1B358(&v12[((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v56], v16, type metadata accessor for SafeLocation);
      sub_100008BB8(0, &unk_1016B1680, SPSafeLocation_ptr);
      sub_100A1B358(v16, v28, type metadata accessor for SafeLocation);
      v20 = sub_1009C859C(v28);
      sub_100A1B3C0(v16, type metadata accessor for SafeLocation);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v75[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v75[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v57 = *((v75[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v3 = v72;
      }

      ++v56;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      if (v26 == v56)
      {
        v55 = v75[0];
        goto LABEL_24;
      }
    }

LABEL_26:
    __break(1u);
LABEL_27:
    swift_once();
  }

LABEL_24:

  return v55;
}

uint64_t sub_1009C7E64(uint64_t a1)
{
  v3 = sub_1000BC4D4(&qword_1016A42E0, &qword_1013B0010);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v47 - v5;
  v7 = type metadata accessor for BeaconObservation();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v47[0] = v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v52 = v47 - v13;
  v58 = type metadata accessor for OwnedBeaconRecord();
  v14 = *(v58 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v58);
  v17 = v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for UUID();
  v18 = *(v54 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v54);
  v55 = v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v23 = v47 - v22;
  v53 = *(v1 + 280);
  v24 = sub_100AA5C88();
  v25 = v24[2];
  if (v25)
  {
    v48 = v8;
    v49 = a1;
    v50 = v7;
    v51 = v6;
    v61[0] = _swiftEmptyArrayStorage;
    v26 = v24;
    sub_101123D4C(0, v25, 0);
    v27 = v61[0];
    v28 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v47[1] = v26;
    v29 = v26 + v28;
    v30 = *(v14 + 72);
    v56 = v18 + 32;
    v57 = v30;
    v31 = v54;
    do
    {
      sub_100A1B358(v29, v17, type metadata accessor for OwnedBeaconRecord);
      (*(v18 + 16))(v23, &v17[*(v58 + 20)], v31);
      sub_100A1B3C0(v17, type metadata accessor for OwnedBeaconRecord);
      v61[0] = v27;
      v33 = v27[2];
      v32 = v27[3];
      if (v33 >= v32 >> 1)
      {
        sub_101123D4C(v32 > 1, v33 + 1, 1);
        v27 = v61[0];
      }

      v27[2] = v33 + 1;
      (*(v18 + 32))(v27 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v33, v23, v31);
      v29 += v57;
      --v25;
    }

    while (v25);

    v7 = v50;
    v6 = v51;
    v8 = v48;
    a1 = v49;
  }

  else
  {

    v27 = _swiftEmptyArrayStorage;
  }

  v34 = sub_1005C8A30(a1, v27);

  v35 = v55;
  if (v34)
  {
    return 1;
  }

  sub_100025020(a1, &v59);
  if (v60)
  {
    sub_10000A748(&v59, v61);
    v37 = v62;
    v38 = v63;
    sub_1000035D0(v61, v62);
    (*(*(*(v38 + 8) + 8) + 32))(v37);
    if (qword_101694920 != -1)
    {
      swift_once();
    }

    v39 = sub_100035730(v35, 0, 0);
    v40 = v52;
    v41 = sub_10003ABC0(v52, v35, v39, 1);

    (*(v18 + 8))(v35, v54);
    sub_10000B3A8(v40, &unk_101696900, &unk_10138B1E0);
    sub_100007BAC(v61);
    if (v41)
    {
      return 4;
    }
  }

  else
  {
    sub_10000B3A8(&v59, &qword_101696920, &unk_10138B200);
  }

  if (qword_101694920 != -1)
  {
    swift_once();
  }

  v42 = swift_allocObject();
  *(v42 + 16) = &off_101608680;
  v43 = sub_100035730(a1, sub_100319F00, v42);

  sub_1012BB138(v43, v6);

  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_10000B3A8(v6, &qword_1016A42E0, &qword_1013B0010);
    return 0;
  }

  else
  {
    v44 = v47[0];
    sub_100A18C9C(v6, v47[0], type metadata accessor for BeaconObservation);
    v45 = *(v44 + *(v7 + 24));
    sub_100A1B3C0(v44, type metadata accessor for BeaconObservation);
    v46 = 3;
    if (v45 != 42)
    {
      v46 = 0;
    }

    if (v45 == 41)
    {
      return 2;
    }

    else
    {
      return v46;
    }
  }
}

Swift::Int sub_1009C84E8(void **a1)
{
  v2 = *(sub_1000BC4D4(&qword_1016B1780, &unk_1013B36E0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_100B32200(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_100A02DC0(v6);
  *a1 = v3;
  return result;
}

id sub_1009C859C(uint64_t a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SafeLocation();
  v8 = a1 + v7[5];
  v9.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  v10 = v7[7];
  v24 = qword_1013D0D28[*(a1 + v7[6])];
  v11 = *(a1 + v10 + 8);
  v12 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v12 = *(a1 + v10) & 0xFFFFFFFFFFFFLL;
  }

  if (v12)
  {
    v13 = String._bridgeToObjectiveC()();
  }

  else
  {
    v13 = 0;
  }

  v14 = *(a1 + v7[8]);
  v15 = *(a1 + v7[9]);
  v16 = *(a1 + v7[10]);
  Date.init()();
  v17 = objc_allocWithZone(CLLocation);
  isa = Date._bridgeToObjectiveC()().super.isa;
  v19 = [v17 initWithCoordinate:isa altitude:v14 horizontalAccuracy:v15 verticalAccuracy:0.0 course:v16 courseAccuracy:v16 speed:-1.0 speedAccuracy:-1.0 timestamp:{-1.0, 0xBFF0000000000000}];

  (*(v3 + 8))(v6, v2);
  [v19 setReferenceFrame:*(a1 + v7[11])];
  v20 = *(a1 + v7[12]);
  v21 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v22 = [v21 initWithIdentifier:v9.super.isa type:v24 name:v13 location:v19 approvalState:v20];

  sub_100A1B3C0(a1, type metadata accessor for SafeLocation);
  return v22;
}

uint64_t sub_1009C87E4()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177B780);
  sub_1000076D4(v0, qword_10177B780);
  return Logger.init(subsystem:category:)();
}

void sub_1009C8868(void *a1, char a2, uint64_t a3, void (*a4)(void, void *), uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    if (a2)
    {
      v13 = a1;
      a4(0, a1);
      sub_100408170(a1, 1);
    }

    else
    {
      v14 = *(Strong + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_beaconStore);
      v15 = swift_allocObject();
      *(v15 + 16) = a4;
      *(v15 + 24) = a5;

      sub_1009C8978(a6, sub_100A1B798, v15);
    }
  }
}

uint64_t sub_1009C8978(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v108 = a3;
  v107 = a2;
  v126 = a1;
  v3 = type metadata accessor for UUID();
  v132 = *(v3 - 8);
  v4 = *(v132 + 64);
  __chkstk_darwin(v3);
  v99 = v5;
  v6 = &v97 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&qword_1016B16B8, &qword_1013D0A98);
  v98 = *(v7 - 8);
  v8 = *(v98 + 64);
  __chkstk_darwin(v7);
  v10 = &v97 - v9;
  v103 = sub_1000BC4D4(&qword_1016B16C0, &qword_1013D0AA0);
  v102 = *(v103 - 8);
  v11 = *(v102 + 64);
  __chkstk_darwin(v103);
  v101 = &v97 - v12;
  v106 = sub_1000BC4D4(&qword_1016B16C8, &qword_1013D0AA8);
  v105 = *(v106 - 8);
  v13 = *(v105 + 64);
  __chkstk_darwin(v106);
  v104 = &v97 - v14;
  v133 = type metadata accessor for SafeLocation();
  v137 = *(v133 - 8);
  v15 = *(v137 + 64);
  v16 = __chkstk_darwin(v133);
  v18 = &v97 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v136 = &v97 - v20;
  __chkstk_darwin(v19);
  v135 = &v97 - v21;
  v22 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v121 = &v97 - v24;
  v120 = type metadata accessor for DirectorySequence();
  v138 = *(v120 - 8);
  v25 = *(v138 + 64);
  __chkstk_darwin(v120);
  v130 = &v97 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = 0;
  v119 = type metadata accessor for URL();
  v27 = *(v119 - 8);
  v28 = *(v27 + 64);
  v29 = __chkstk_darwin(v119);
  v139 = &v97 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v129 = &v97 - v31;
  v32 = sub_100EE8F6C();
  v33 = v32[2];
  v34 = _swiftEmptyArrayStorage;
  v124 = v6;
  v125 = v3;
  v123 = v7;
  if (v33)
  {
    v35 = (v32 + 4);
    do
    {
      v38 = *v35++;
      if (v38 == 2)
      {
        v39 = v34;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v34 = v39;
        v142 = v39;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_101125550(0, v39[2] + 1, 1);
          v34 = v142;
        }

        v37 = v34[2];
        v36 = v34[3];
        if (v37 >= v36 >> 1)
        {
          sub_101125550((v36 > 1), v37 + 1, 1);
          v34 = v142;
        }

        v34[2] = v37 + 1;
        *(v34 + v37 + 32) = 2;
      }

      --v33;
    }

    while (v33);
  }

  v122 = v34;

  v41 = v122;
  v42 = _swiftEmptyArrayStorage;
  v142 = _swiftEmptyArrayStorage;
  v43 = v122[2];
  v100 = v18;
  v118 = v43;
  if (v43)
  {
    v44 = *(v127 + 168);
    if (qword_101694F88 != -1)
    {
LABEL_40:
      swift_once();
      v41 = v122;
    }

    v117 = v41 + 4;
    v116 = objc_opt_self();
    v45 = 0;
    v115 = (v27 + 16);
    v114 = (v27 + 48);
    v112 = (v138 + 8);
    v111 = xmmword_10138BBE0;
    v110 = v44;
    v113 = v10;
    v109 = (v27 + 32);
    v134 = (v27 + 8);
    do
    {
      if (v45 >= v122[2])
      {
        goto LABEL_39;
      }

      v128 = v45;
      LODWORD(v138) = *(v117 + v45);
      v46 = v119;
      v47 = sub_1000076D4(v119, qword_10177C268);
      (*v115)(v129, v47, v46);
      v140 = v42;
      v141 = v42;
      v48 = [v116 defaultManager];
      NSFileManager.deepSequence(at:includingPropertiesForKeys:options:)();

      v49 = v121;
      DirectorySequence.next()();
      v50 = *v114;
      if ((*v114)(v49, 1, v46) == 1)
      {
        v51 = v130;
        v52 = v131;
      }

      else
      {
        v53 = *v109;
        v51 = v130;
        v52 = v131;
        v54 = v139;
        v55 = v110;
        do
        {
          v53(v54, v49, v46);
          v56 = objc_autoreleasePoolPush();
          sub_1006005CC(v139, v55, &v141, &v140);
          v57 = v56;
          v54 = v139;
          objc_autoreleasePoolPop(v57);
          (*v134)(v54, v46);
          DirectorySequence.next()();
        }

        while (v50(v49, 1, v46) != 1);
      }

      v131 = v52;
      (*v112)(v51, v120);
      static os_log_type_t.debug.getter();
      sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
      v58 = static OS_os_log.default.getter();
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v59 = swift_allocObject();
      *(v59 + 16) = v111;
      v44 = v141;
      v60 = v141[2];
      *(v59 + 56) = &type metadata for Int;
      *(v59 + 64) = &protocol witness table for Int;
      *(v59 + 32) = v60;
      sub_100003F64(&qword_1016B14E0, &type metadata accessor for URL);
      v27 = v46;

      v61 = v129;
      v62 = dispatch thunk of CustomStringConvertible.description.getter();
      v64 = v63;
      *(v59 + 96) = &type metadata for String;
      *(v59 + 104) = sub_100008C00();
      *(v59 + 72) = v62;
      *(v59 + 80) = v64;
      os_log(_:dso:log:_:_:)();

      (*v134)(v61, v27);

      v65 = *(v44 + 16);
      if (v65)
      {
        v66 = 0;
        v42 = _swiftEmptyArrayStorage;
        v67 = v133;
        v10 = v113;
        while (v66 < *(v44 + 16))
        {
          v68 = v10;
          v69 = (*(v137 + 80) + 32) & ~*(v137 + 80);
          v27 = *(v137 + 72);
          v70 = v135;
          sub_100A1B358(v44 + v69 + v27 * v66, v135, type metadata accessor for SafeLocation);
          if (v70[*(v67 + 24)] == v138)
          {
            sub_100A18C9C(v70, v136, type metadata accessor for SafeLocation);
            v71 = swift_isUniquelyReferenced_nonNull_native();
            v141 = v42;
            if ((v71 & 1) == 0)
            {
              sub_10112483C(0, v42[2] + 1, 1);
              v67 = v133;
              v42 = v141;
            }

            v73 = v42[2];
            v72 = v42[3];
            if (v73 >= v72 >> 1)
            {
              sub_10112483C(v72 > 1, v73 + 1, 1);
              v67 = v133;
              v42 = v141;
            }

            v42[2] = v73 + 1;
            sub_100A18C9C(v136, v42 + v69 + v73 * v27, type metadata accessor for SafeLocation);
          }

          else
          {
            sub_100A1B3C0(v70, type metadata accessor for SafeLocation);
          }

          ++v66;
          v10 = v68;
          if (v65 == v66)
          {
            goto LABEL_14;
          }
        }

        __break(1u);
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      v42 = _swiftEmptyArrayStorage;
      v10 = v113;
LABEL_14:
      v45 = v128 + 1;

      sub_10039A920(v42);
      v42 = _swiftEmptyArrayStorage;
    }

    while (v45 != v118);

    v74 = v142;
    v75 = v142[2];
    if (v75)
    {
      goto LABEL_32;
    }

LABEL_36:

    v89 = _swiftEmptyArrayStorage;
    goto LABEL_37;
  }

  v74 = _swiftEmptyArrayStorage;
  v75 = _swiftEmptyArrayStorage[2];
  if (!v75)
  {
    goto LABEL_36;
  }

LABEL_32:
  v142 = _swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  v76 = (*(v137 + 80) + 32) & ~*(v137 + 80);
  v134 = v74;
  v77 = v74 + v76;
  v78 = v132;
  v138 = *(v137 + 72);
  v139 = v132 + 16;
  v136 = v132 + 32;
  v137 = v99 + 7;
  v135 = (v98 + 8);
  v79 = v10;
  v80 = v100;
  v81 = v124;
  do
  {
    sub_100A1B358(v77, v80, type metadata accessor for SafeLocation);
    v82 = v125;
    (*(v78 + 16))(v81, v80 + *(v133 + 20), v125);
    v83 = (*(v78 + 80) + 24) & ~*(v78 + 80);
    v84 = (v137 + v83) & 0xFFFFFFFFFFFFFFF8;
    v85 = swift_allocObject();
    *(v85 + 16) = v127;
    (*(v132 + 32))(v85 + v83, v81, v82);
    *(v85 + v84) = v126;

    sub_1000BC4D4(&unk_1016B16A0, &unk_1013EE850);
    sub_1000041A4(&qword_1016B16D0, &unk_1016B16A0, &unk_1013EE850);
    Deferred.init(createPublisher:)();
    sub_1000041A4(&qword_1016B16D8, &qword_1016B16B8, &qword_1013D0A98);
    v86 = v123;
    v87 = Publisher.eraseToAnyPublisher()();
    (*v135)(v79, v86);
    v141 = v87;
    sub_1000BC4D4(&qword_1016B16E0, &qword_1013D0AB0);
    sub_1000041A4(&qword_1016B16E8, &qword_1016B16E0, &qword_1013D0AB0);
    Publisher.eraseToAnyPublisher()();

    sub_100A1B3C0(v80, type metadata accessor for SafeLocation);
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    v88 = v142[2];
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    v78 = v132;
    v77 += v138;
    --v75;
  }

  while (v75);

  v89 = v142;
LABEL_37:
  v142 = v89;
  sub_1000BC4D4(&qword_1016B16E0, &qword_1013D0AB0);
  sub_1000BC4D4(&qword_1016B16F0, &qword_1013D0AB8);
  sub_1000041A4(&qword_1016B16E8, &qword_1016B16E0, &qword_1013D0AB0);
  sub_1000041A4(&qword_1016B16F8, &qword_1016B16F0, &qword_1013D0AB8);
  v90 = v101;
  Publishers.MergeMany.init<A>(_:)();
  sub_1000041A4(&qword_1016B1700, &qword_1016B16C0, &qword_1013D0AA0);
  v91 = v104;
  v92 = v103;
  Publisher.collect()();
  (*(v102 + 8))(v90, v92);
  v93 = swift_allocObject();
  v94 = v108;
  *(v93 + 16) = v107;
  *(v93 + 24) = v94;
  sub_1000041A4(&qword_1016B1708, &qword_1016B16C8, &qword_1013D0AA8);

  v95 = v106;
  Publisher.oneshot(_:)();

  return (*(v105 + 8))(v91, v95);
}

uint64_t sub_1009C99E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v24 = a6;
  v8 = v6;
  v12 = type metadata accessor for DispatchWorkItemFlags();
  v27 = *(v12 - 8);
  v13 = *(v27 + 64);
  __chkstk_darwin(v12);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for DispatchQoS();
  v16 = *(v26 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v26);
  v19 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(v8 + 96);
  v20 = swift_allocObject();
  v20[2] = a1;
  v20[3] = v8;
  v20[4] = a2;
  v20[5] = a3;
  aBlock[4] = a5;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = v24;
  v21 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v28 = _swiftEmptyArrayStorage;
  sub_100003F64(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);
  (*(v27 + 8))(v15, v12);
  (*(v16 + 8))(v19, v26);
}

uint64_t sub_1009C9CE8(void *a1, int a2, int a3, void *aBlock, void (*a5)(uint64_t, id, void *))
{
  v7 = _Block_copy(aBlock);
  type metadata accessor for UUID();
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v7);
  v9 = a1;
  a5(v8, v9, v7);
  _Block_release(v7);
  _Block_release(v7);
}

uint64_t sub_1009C9D88(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v29 = a3;
  v30 = a4;
  v28 = a2;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v33 = *(v7 - 8);
  v8 = *(v33 + 64);
  __chkstk_darwin(v7);
  v10 = &v27[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v32 = type metadata accessor for DispatchQoS();
  v11 = *(v32 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v32);
  v14 = &v27[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = type metadata accessor for SafeLocation();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v27[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v31 = *(v4 + 96);
  sub_100A1B358(a1, v18, type metadata accessor for SafeLocation);
  v19 = (*(v16 + 80) + 24) & ~*(v16 + 80);
  v20 = v19 + v17;
  v21 = (v19 + v17) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 16) = v5;
  sub_100A18C9C(v18, v22 + v19, type metadata accessor for SafeLocation);
  *(v22 + v20) = v28;
  v23 = v22 + v21;
  v24 = v30;
  *(v23 + 8) = v29;
  *(v23 + 16) = v24;
  aBlock[4] = sub_100A190A4;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_1016423C0;
  v25 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v34 = _swiftEmptyArrayStorage;
  sub_100003F64(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v25);
  (*(v33 + 8))(v10, v7);
  (*(v11 + 8))(v14, v32);
}

uint64_t sub_1009CA164(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v24 = a2;
  v25 = a3;
  v28 = type metadata accessor for DispatchWorkItemFlags();
  v30 = *(v28 - 8);
  v6 = *(v30 + 64);
  __chkstk_darwin(v28);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for DispatchQoS();
  v27 = *(v29 - 8);
  v9 = *(v27 + 64);
  __chkstk_darwin(v29);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(v3 + 96);
  (*(v13 + 16))(v15, a1, v12);
  v16 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v17 = (v14 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  (*(v13 + 32))(v18 + v16, v15, v12);
  *(v18 + v17) = v4;
  v19 = (v18 + ((v17 + 15) & 0xFFFFFFFFFFFFFFF8));
  v20 = v25;
  *v19 = v24;
  v19[1] = v20;
  aBlock[4] = sub_100A19358;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_1016425A0;
  v21 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v31 = _swiftEmptyArrayStorage;
  sub_100003F64(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  v22 = v28;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);
  (*(v30 + 8))(v8, v22);
  (*(v27 + 8))(v11, v29);
}

uint64_t sub_1009CA64C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24[0] = a2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v27 = *(v6 - 8);
  v7 = *(v27 + 64);
  __chkstk_darwin(v6);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v25 = *(v10 - 8);
  v26 = v10;
  v11 = *(v25 + 64);
  __chkstk_darwin(v10);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SafeLocation();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24[1] = *(v3 + 96);
  sub_100A1B358(a1, v17, type metadata accessor for SafeLocation);
  v18 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v19 = (v16 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  sub_100A18C9C(v17, v20 + v18, type metadata accessor for SafeLocation);
  v21 = (v20 + v19);
  *v21 = v24[0];
  v21[1] = a3;
  *(v20 + ((v19 + 23) & 0xFFFFFFFFFFFFFFF8)) = v3;
  aBlock[4] = sub_100A19548;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101642758;
  v22 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v28 = _swiftEmptyArrayStorage;
  sub_100003F64(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v22);
  (*(v27 + 8))(v9, v6);
  (*(v25 + 8))(v13, v26);
}

void sub_1009CAA24(void *a1, int a2, void *a3, void *aBlock, void (*a5)(id, id, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a3;
  v10 = a1;
  a5(v9, v10, v8);
  _Block_release(v8);
  _Block_release(v8);
}

uint64_t sub_1009CAAD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v33 = a7;
  v30 = a4;
  v31 = a6;
  v8 = v7;
  v28 = a2;
  v29 = a3;
  v36 = type metadata accessor for DispatchWorkItemFlags();
  v38 = *(v36 - 8);
  v10 = *(v38 + 64);
  __chkstk_darwin(v36);
  v34 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for DispatchQoS();
  v35 = *(v37 - 8);
  v12 = *(v35 + 64);
  __chkstk_darwin(v37);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for UUID();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *(v8 + 96);
  (*(v16 + 16))(v18, a1, v15);
  v19 = (*(v16 + 80) + 24) & ~*(v16 + 80);
  v20 = (v17 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = v28;
  (*(v16 + 32))(v21 + v19, v18, v15);
  *(v21 + v20) = v8;
  v22 = (v21 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8));
  v23 = v30;
  *v22 = v29;
  v22[1] = v23;
  aBlock[4] = v31;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = v33;
  v24 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v39 = _swiftEmptyArrayStorage;
  sub_100003F64(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  v25 = v34;
  v26 = v36;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v24);
  (*(v38 + 8))(v25, v26);
  (*(v35 + 8))(v14, v37);
}

uint64_t sub_1009CAEC8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5, void (*a6)(char *, uint64_t, id, void *))
{
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = _Block_copy(a5);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v14);
  v16 = a1;
  a6(v13, v15, v16, v14);
  _Block_release(v14);
  _Block_release(v14);

  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_1009CB040(void *a1, int a2, void *a3, uint64_t a4, uint64_t a5)
{
  v30 = a4;
  v31 = a5;
  v29 = a2;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v34 = *(v7 - 8);
  v8 = *(v34 + 64);
  __chkstk_darwin(v7);
  v10 = &v28[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for DispatchQoS();
  v32 = *(v11 - 8);
  v33 = v11;
  v12 = *(v32 + 64);
  __chkstk_darwin(v11);
  v14 = &v28[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = type metadata accessor for DispatchQoS.QoSClass();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v28[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  (*(v16 + 104))(v19, enum case for DispatchQoS.QoSClass.default(_:), v15);
  v20 = static OS_dispatch_queue.global(qos:)();
  (*(v16 + 8))(v19, v15);
  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  v22 = v29 & 1;
  *(v21 + 24) = v29 & 1;
  v23 = v30;
  v24 = v31;
  *(v21 + 32) = a3;
  *(v21 + 40) = v23;
  *(v21 + 48) = v24;
  aBlock[4] = sub_100A1B30C;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101643130;
  v25 = _Block_copy(aBlock);
  sub_100A1B320(a1, v22);
  v26 = a3;

  static DispatchQoS.unspecified.getter();
  v35 = _swiftEmptyArrayStorage;
  sub_100003F64(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v25);

  (*(v34 + 8))(v10, v7);
  (*(v32 + 8))(v14, v33);
}

uint64_t sub_1009CB420(uint64_t a1, char a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  if (a2)
  {
    return a4(0);
  }

  v6 = sub_1009CB4B0(a1);
  v7 = sub_10000AB68(v6);

  a4(v7);
}

size_t sub_1009CB4B0(uint64_t a1)
{
  v3 = type metadata accessor for SafeLocation();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3 - 8);
  v8 = &v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v107 = &v83 - v10;
  v11 = __chkstk_darwin(v9);
  v106 = &v83 - v12;
  __chkstk_darwin(v11);
  v108 = &v83 - v13;
  v14 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v83 - v16;
  v96 = type metadata accessor for DirectorySequence();
  v18 = *(v96 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v96);
  v102 = &v83 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = type metadata accessor for URL();
  v21 = *(v101 - 8);
  v22 = v21[8];
  v23 = __chkstk_darwin(v101 - 8);
  v84 = &v83 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v100 = &v83 - v25;
  v26 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v27 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26 - 8);
  v103 = &v83 - v28;
  v29 = *(a1 + 16);
  v105 = v1;
  if (v29)
  {
    v104 = v18;
    v30 = v21;
    v31 = *(v1 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_beaconStore);
    v113 = _swiftEmptyArrayStorage;
    v32 = v31;

    specialized ContiguousArray.reserveCapacity(_:)();
    v33 = a1 + 32;
    do
    {
      sub_10001F280(v33, &v110);
      v34 = v111;
      v35 = v112;
      v36 = sub_1000035D0(&v110, v111);
      sub_100B005BC(v36, v32, v34, v35);
      sub_100007BAC(&v110);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v37 = v113[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v33 += 40;
      --v29;
    }

    while (v29);

    v38 = v113;
    v21 = v30;
    v18 = v104;
  }

  else
  {
    v38 = _swiftEmptyArrayStorage;
  }

  v83 = v38;
  if (v38 >> 62)
  {
    goto LABEL_42;
  }

  for (i = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v40 = 0;
    v92 = (v105 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation);
    v95 = v83 & 0xC000000000000001;
    v94 = v83 & 0xFFFFFFFFFFFFFF8;
    v88 = v83 + 32;
    v91 = (v21 + 2);
    v41 = (v21 + 4);
    v105 = (v21 + 1);
    v90 = (v18 + 8);
    v89 = xmmword_10138BBE0;
    v109 = v8;
    v87 = v17;
    v93 = v4;
    v86 = i;
    v97 = (v21 + 6);
    v85 = (v21 + 4);
    while (1)
    {
      if (v95)
      {
        v44 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v40 >= *(v94 + 16))
        {
          goto LABEL_41;
        }

        v44 = *(v88 + 8 * v40);
      }

      v21 = v44;
      v45 = __OFADD__(v40, 1);
      v46 = v40 + 1;
      if (v45)
      {
        break;
      }

      v99 = v46;
      v47 = sub_1000035D0(v92, v92[3]);
      v98 = v21;
      v48 = [v21 identifier];
      v49 = v103;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v50 = type metadata accessor for UUID();
      (*(*(v50 - 8) + 56))(v49, 0, 1, v50);
      v51 = *(*(*v47 + 280) + 168);
      if (qword_101694F88 != -1)
      {
        swift_once();
      }

      v52 = v101;
      v53 = sub_1000076D4(v101, qword_10177C268);
      (*v91)(v100, v53, v52);
      v110 = _swiftEmptyArrayStorage;
      v113 = _swiftEmptyArrayStorage;
      v54 = [objc_opt_self() defaultManager];
      NSFileManager.deepSequence(at:includingPropertiesForKeys:options:)();

      DirectorySequence.next()();
      v55 = *v97;
      if ((*v97)(v17, 1, v52) == 1)
      {
        v18 = v101;
        v56 = v102;
      }

      else
      {
        v104 = *v41;
        v18 = v101;
        v56 = v102;
        v57 = v55;
        v58 = v84;
        v59 = v51;
        do
        {
          v104(v58, v17, v18);
          v60 = v17;
          v61 = objc_autoreleasePoolPush();
          sub_1006005CC(v58, v59, &v110, &v113);
          v62 = v61;
          v17 = v60;
          objc_autoreleasePoolPop(v62);
          (*v105)(v58, v18);
          DirectorySequence.next()();
        }

        while (v57(v60, 1, v18) != 1);
      }

      (*v90)(v56, v96);
      static os_log_type_t.debug.getter();
      sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
      v63 = static OS_os_log.default.getter();
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v8 = swift_allocObject();
      *(v8 + 1) = v89;
      v64 = v110;
      v65 = *(v110 + 16);
      *(v8 + 7) = &type metadata for Int;
      *(v8 + 8) = &protocol witness table for Int;
      *(v8 + 4) = v65;
      sub_100003F64(&qword_1016B14E0, &type metadata accessor for URL);

      v66 = v100;
      v67 = dispatch thunk of CustomStringConvertible.description.getter();
      v69 = v68;
      *(v8 + 12) = &type metadata for String;
      *(v8 + 13) = sub_100008C00();
      *(v8 + 9) = v67;
      *(v8 + 10) = v69;
      os_log(_:dso:log:_:_:)();

      (*v105)(v66, v18);

      v21 = *(v64 + 16);
      if (v21)
      {
        v70 = 0;
        v71 = _swiftEmptyArrayStorage;
        v4 = v93;
        v8 = v109;
        while (v70 < *(v64 + 16))
        {
          v18 = (*(v4 + 80) + 32) & ~*(v4 + 80);
          v17 = *(v4 + 72);
          v72 = v108;
          sub_100A1B358(v64 + v18 + v17 * v70, v108, type metadata accessor for SafeLocation);
          sub_100A18C9C(v72, v8, type metadata accessor for SafeLocation);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v110 = v71;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_10112483C(0, v71[2] + 1, 1);
            v71 = v110;
          }

          v75 = v71[2];
          v74 = v71[3];
          if (v75 >= v74 >> 1)
          {
            sub_10112483C(v74 > 1, v75 + 1, 1);
            v71 = v110;
          }

          ++v70;
          v71[2] = v75 + 1;
          v76 = v71 + v18 + v75 * v17;
          v8 = v109;
          sub_100A18C9C(v109, v76, type metadata accessor for SafeLocation);
          if (v21 == v70)
          {
            goto LABEL_30;
          }
        }

        __break(1u);
        goto LABEL_39;
      }

      v71 = _swiftEmptyArrayStorage;
      v4 = v93;
LABEL_30:

      __chkstk_darwin(v77);
      *(&v83 - 2) = v103;
      v78 = sub_10013D504(sub_100A1B6D8, (&v83 - 4), v71);
      v79 = _swiftEmptyArrayStorage;
      v110 = _swiftEmptyArrayStorage;
      v80 = *(v78 + 16);
      if (v80)
      {
        v18 = 0;
        while (v18 < *(v78 + 16))
        {
          v17 = v106;
          sub_100A1B358(v78 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v18, v106, type metadata accessor for SafeLocation);
          sub_100008BB8(0, &unk_1016B1680, SPSafeLocation_ptr);
          v81 = v107;
          sub_100A1B358(v17, v107, type metadata accessor for SafeLocation);
          sub_1009C859C(v81);
          sub_100A1B3C0(v17, type metadata accessor for SafeLocation);
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          v21 = *((v110 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v21 >= *((v110 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          ++v18;
          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          if (v80 == v18)
          {
            v79 = v110;
            goto LABEL_9;
          }
        }

LABEL_39:
        __break(1u);
        break;
      }

LABEL_9:

      sub_10000B3A8(v103, &qword_1016980D0, &unk_10138F3B0);
      sub_10112A684(v79);

      v21 = SPSafeLocation_ptr;
      sub_100008BB8(0, &unk_1016B1680, SPSafeLocation_ptr);
      sub_100009CC8(&unk_1016B1820, &unk_1016B1680, SPSafeLocation_ptr);
      isa = Set._bridgeToObjectiveC()().super.isa;

      v43 = v98;
      [v98 setSafeLocations:isa];

      v40 = v99;
      v17 = v87;
      v41 = v85;
      if (v99 == v86)
      {
        return v83;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    ;
  }

  return v83;
}

void sub_1009CC0E4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    sub_100008BB8(0, &unk_1016BC050, SPBeacon_ptr);
    sub_100009CC8(&qword_1016B1830, &unk_1016BC050, SPBeacon_ptr);
    v3.super.isa = Set._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v3.super.isa = 0;
  }

  isa = v3.super.isa;
  (*(a2 + 16))(a2);
}

uint64_t sub_1009CC3A4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_101694B70 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000076D4(v6, qword_10177B780);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Client forces LOI based safe location refresh.", v9, 2u);
  }

  v10 = *(*sub_1000035D0((v3 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(v3 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24)) + 240);
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  v12 = type metadata accessor for Transaction();
  __chkstk_darwin(v12);

  static Transaction.named<A>(_:with:)();
}

uint64_t sub_1009CC57C(uint64_t a1, __int16 a2, uint64_t (*a3)(BOOL))
{
  if (qword_101694B70 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177B780);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Update ALL LOI based safe location finished.", v8, 2u);
  }

  return a3((a2 & 0x100) == 0);
}

void sub_1009CC724(void *a1, int a2, void *aBlock, void (*a4)(void))
{
  v6 = _Block_copy(aBlock);
  _Block_copy(v6);
  v7 = a1;
  a4();
  _Block_release(v6);
  _Block_release(v6);
}

uint64_t sub_1009CC7A0(void *a1, char a2, uint64_t (*a3)(uint64_t, void *))
{
  if (a2)
  {
    if (qword_101694B70 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000076D4(v5, qword_10177B780);
    a1;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    sub_100408170(a1, 1);
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v16 = v9;
      *v8 = 136315138;
      type metadata accessor for SPSeparationMonitoringError(0);
      sub_100003F64(&qword_1016B1740, type metadata accessor for SPSeparationMonitoringError);
      v10 = Error.localizedDescription.getter();
      v12 = sub_1000136BC(v10, v11, &v16);

      *(v8 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v6, v7, "XPC call failed with error: %s", v8, 0xCu);
      sub_100007BAC(v9);
    }

    v13 = 0;
    v14 = a1;
  }

  else
  {
    v13 = 1;
    v14 = 0;
  }

  return a3(v13, v14);
}

uint64_t sub_1009CC97C(uint64_t a1)
{
  v2 = *(a1 + 280);
  sub_1009CCAA8(sub_100A1A8A0, &unk_101642C30);
  v3 = *(a1 + 240);
  type metadata accessor for Transaction();

  static Transaction.named<A>(_:with:)();
}

uint64_t sub_1009CCAA8(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v10 = *(v17 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v17);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[1] = *(v2 + 104);
  aBlock[4] = a1;
  v20 = v2;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = a2;
  v14 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v18 = _swiftEmptyArrayStorage;
  sub_100003F64(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);
  (*(v6 + 8))(v9, v5);
  (*(v10 + 8))(v13, v17);
}

BOOL sub_1009CCD4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v16 - v6;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D2A70(a2, v7, &qword_1016980D0, &unk_10138F3B0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_10000B3A8(v7, &qword_1016980D0, &unk_10138F3B0);
    return 1;
  }

  else
  {
    (*(v9 + 32))(v12, v7, v8);
    v14 = type metadata accessor for SafeLocation();
    v13 = sub_1005C8A30(v12, *(a1 + *(v14 + 52)));
    (*(v9 + 8))(v12, v8);
  }

  return v13;
}

uint64_t sub_1009CCF1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[11] = v24;
  v8[12] = v25;
  v8[9] = a7;
  v8[10] = a8;
  v8[7] = a5;
  v8[8] = a6;
  v8[6] = a4;
  v9 = type metadata accessor for Date();
  v8[13] = v9;
  v10 = *(v9 - 8);
  v8[14] = v10;
  v11 = *(v10 + 64) + 15;
  v8[15] = swift_task_alloc();
  v8[16] = swift_task_alloc();
  v12 = type metadata accessor for SystemInfo.DeviceLockState();
  v8[17] = v12;
  v13 = *(v12 - 8);
  v8[18] = v13;
  v14 = *(v13 + 64) + 15;
  v8[19] = swift_task_alloc();
  v8[20] = swift_task_alloc();
  v15 = *(*(sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280) - 8) + 64) + 15;
  v8[21] = swift_task_alloc();
  v16 = type metadata accessor for OwnedBeaconRecord();
  v8[22] = v16;
  v17 = *(v16 - 8);
  v8[23] = v17;
  v18 = *(v17 + 64) + 15;
  v8[24] = swift_task_alloc();
  v8[25] = swift_task_alloc();
  v8[26] = swift_task_alloc();
  v19 = type metadata accessor for UUID();
  v8[27] = v19;
  v20 = *(v19 - 8);
  v8[28] = v20;
  v21 = *(v20 + 64) + 15;
  v8[29] = swift_task_alloc();
  v8[30] = swift_task_alloc();
  v8[31] = swift_task_alloc();
  v8[32] = swift_task_alloc();
  v8[33] = swift_task_alloc();
  v8[34] = swift_task_alloc();

  return _swift_task_switch(sub_1009CD1A8, 0, 0);
}

uint64_t sub_1009CD1A8()
{
  v175 = v0;
  v1 = *(v0 + 48);
  v2 = swift_allocObject();
  *(v0 + 280) = v2;
  *(v2 + 16) = _swiftEmptyArrayStorage;
  v3 = *(v1 + 32);
  *(v0 + 340) = v3;
  v4 = 1 << v3;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(v1 + 56);
  *(v0 + 336) = enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:);

  v7 = 0;
  while (v6)
  {
    v9 = *(v0 + 48);
LABEL_12:
    *(v0 + 288) = v6;
    *(v0 + 296) = v7;
    v11 = *(v0 + 264);
    v12 = *(v0 + 272);
    v14 = *(v0 + 216);
    v13 = *(v0 + 224);
    v15 = *(v0 + 56);
    v16 = *(v13 + 16);
    v17 = *(v9 + 48) + *(v13 + 72) * (__clz(__rbit64(v6)) | (v7 << 6));
    *(v0 + 304) = v16;
    *(v0 + 312) = (v13 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v158 = v16;
    v16(v12, v17, v14);
    (*(v13 + 32))(v11, v12, v14);
    v156 = *(v15 + 280);
    static os_log_type_t.info.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    v157 = (v6 - 1) & v6;
    v165 = *(v0 + 336);
    v18 = *(v0 + 264);
    v20 = *(v0 + 152);
    v19 = *(v0 + 160);
    v22 = *(v0 + 136);
    v21 = *(v0 + 144);
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_101385D80;
    v24 = UUID.uuidString.getter();
    v26 = v25;
    *(v23 + 56) = &type metadata for String;
    *(v23 + 64) = sub_100008C00();
    *(v23 + 32) = v24;
    *(v23 + 40) = v26;
    os_log(_:dso:log:_:_:)();

    static SystemInfo.lockState.getter();
    (*(v21 + 104))(v20, v165, v22);
    sub_100003F64(&qword_10169F338, &type metadata accessor for SystemInfo.DeviceLockState);
    LOBYTE(v24) = dispatch thunk of static Equatable.== infix(_:_:)();
    v27 = *(v21 + 8);
    v27(v20, v22);
    v27(v19, v22);
    if (v24)
    {
      v28 = *(v0 + 176);
      v29 = *(v0 + 184);
      v30 = *(v0 + 168);
      static os_log_type_t.default.getter();
      os_log(_:dso:log:_:_:)();
      (*(v29 + 56))(v30, 1, 1, v28);
      goto LABEL_17;
    }

    v31 = *(v0 + 264);
    v32 = *(v0 + 176);
    v33 = *(v0 + 184);
    v34 = *(v0 + 168);
    v35 = sub_100025044();
    *(swift_task_alloc() + 16) = v31;
    sub_1012BBBD0(sub_100406F84, v35, v34);
    *(v0 + 320) = 0;

    if ((*(v33 + 48))(v34, 1, v32) == 1)
    {
LABEL_17:
      sub_10000B3A8(*(v0 + 168), &unk_1016A9A20, &qword_10138B280);
      if (qword_101694B70 != -1)
      {
        swift_once();
      }

      v36 = *(v0 + 256);
      v37 = *(v0 + 264);
      v38 = *(v0 + 216);
      v39 = type metadata accessor for Logger();
      sub_1000076D4(v39, qword_10177B780);
      v158(v36, v37, v38);
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.error.getter();
      v42 = os_log_type_enabled(v40, v41);
      v43 = *(v0 + 256);
      v44 = *(v0 + 264);
      v45 = *(v0 + 216);
      v46 = *(v0 + 224);
      if (v42)
      {
        v47 = swift_slowAlloc();
        v170 = swift_slowAlloc();
        v174[0] = v170;
        *v47 = 136315138;
        sub_100003F64(&qword_101696930, &type metadata accessor for UUID);
        v166 = v44;
        v48 = dispatch thunk of CustomStringConvertible.description.getter();
        v162 = v41;
        v50 = v49;
        v51 = *(v46 + 8);
        v51(v43, v45);
        v52 = sub_1000136BC(v48, v50, v174);

        *(v47 + 4) = v52;
        _os_log_impl(&_mh_execute_header, v40, v162, "Received separation alert request for unknown beacon: %s", v47, 0xCu);
        sub_100007BAC(v170);

        v51(v166, v45);
      }

      else
      {

        v8 = *(v46 + 8);
        v8(v43, v45);
        v8(v44, v45);
      }

      v6 = v157;
    }

    else
    {
      v53 = *(v0 + 264);
      v54 = *(v0 + 64);
      sub_100A18C9C(*(v0 + 168), *(v0 + 208), type metadata accessor for OwnedBeaconRecord);
      v55 = type metadata accessor for LeashRecord();
      if (sub_1005C8A30(v53, *(v54 + *(v55 + 24))))
      {
        if (sub_1006FBA08(*(v0 + 208), *(v0 + 56)))
        {
          v154 = swift_task_alloc();
          *(v0 + 328) = v154;
          *v154 = v0;
          v154[1] = sub_1009CE210;
          v155 = *(v0 + 208);

          return sub_100A078AC(v155);
        }

        if (qword_101694B70 != -1)
        {
          swift_once();
        }

        v56 = *(v0 + 264);
        v57 = *(v0 + 240);
        v58 = *(v0 + 216);
        v59 = type metadata accessor for Logger();
        sub_1000076D4(v59, qword_10177B780);
        v158(v57, v56, v58);
        v60 = Logger.logObject.getter();
        v61 = static os_log_type_t.error.getter();
        v62 = os_log_type_enabled(v60, v61);
        v63 = *(v0 + 264);
        v64 = *(v0 + 240);
        v66 = *(v0 + 216);
        v65 = *(v0 + 224);
        v67 = *(v0 + 208);
        if (v62)
        {
          v68 = swift_slowAlloc();
          v171 = v67;
          v174[0] = swift_slowAlloc();
          v163 = v174[0];
          *v68 = 136315138;
          sub_100003F64(&qword_101696930, &type metadata accessor for UUID);
          v167 = v63;
          v69 = dispatch thunk of CustomStringConvertible.description.getter();
          v159 = v61;
          v71 = v70;
          v72 = *(v65 + 8);
          v72(v64, v66);
          v73 = sub_1000136BC(v69, v71, v174);

          *(v68 + 4) = v73;
          v74 = v159;
          v75 = v60;
          v76 = "Received separation alert request for unsupported beacon: %s";
          goto LABEL_32;
        }

LABEL_33:

        v87 = *(v65 + 8);
        v87(v64, v66);
        sub_100A1B3C0(v67, type metadata accessor for OwnedBeaconRecord);
        v87(v63, v66);
        v6 = v157;
      }

      else
      {
        if (qword_101694B70 != -1)
        {
          swift_once();
        }

        v77 = *(v0 + 264);
        v78 = *(v0 + 232);
        v79 = *(v0 + 216);
        v80 = type metadata accessor for Logger();
        sub_1000076D4(v80, qword_10177B780);
        v158(v78, v77, v79);
        v60 = Logger.logObject.getter();
        v81 = static os_log_type_t.error.getter();
        v82 = os_log_type_enabled(v60, v81);
        v63 = *(v0 + 264);
        v65 = *(v0 + 224);
        v64 = *(v0 + 232);
        v67 = *(v0 + 208);
        v66 = *(v0 + 216);
        if (!v82)
        {
          goto LABEL_33;
        }

        v68 = swift_slowAlloc();
        v171 = v67;
        v174[0] = swift_slowAlloc();
        v163 = v174[0];
        *v68 = 136315138;
        sub_100003F64(&qword_101696930, &type metadata accessor for UUID);
        v167 = v63;
        v83 = dispatch thunk of CustomStringConvertible.description.getter();
        v160 = v81;
        v85 = v84;
        v72 = *(v65 + 8);
        v72(v64, v66);
        v86 = sub_1000136BC(v83, v85, v174);

        *(v68 + 4) = v86;
        v74 = v160;
        v75 = v60;
        v76 = "Received separation alert request for non-leashed beacon: %s";
LABEL_32:
        _os_log_impl(&_mh_execute_header, v75, v74, v76, v68, 0xCu);
        sub_100007BAC(v163);

        sub_100A1B3C0(v171, type metadata accessor for OwnedBeaconRecord);
        v72(v167, v66);
        v6 = v157;
      }
    }
  }

  while (2)
  {
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      goto LABEL_54;
    }

    if (v10 < (((1 << *(v0 + 340)) + 63) >> 6))
    {
      v9 = *(v0 + 48);
      v6 = *(v9 + 8 * v10 + 56);
      ++v7;
      if (v6)
      {
        v7 = v10;
        goto LABEL_12;
      }

      continue;
    }

    break;
  }

  v88 = *(v0 + 280);
  v89 = *(v0 + 48);

  if (*(*(v88 + 16) + 16))
  {
    v90 = *(v0 + 280);
    static Date.trustedNow.getter(*(v0 + 128));
    v91 = *(v90 + 16);
    v92 = *(v91 + 16);
    if (v92)
    {
      v93 = *(v0 + 184);
      v94 = v91 + ((*(v93 + 80) + 32) & ~*(v93 + 80));
      v95 = *(v93 + 72);

      do
      {
        v96 = *(v0 + 192);
        v97 = *(v0 + 128);
        sub_100A1B358(v94, v96, type metadata accessor for OwnedBeaconRecord);
        sub_100A17920(v96, v97);
        sub_100A1B3C0(v96, type metadata accessor for OwnedBeaconRecord);
        v94 += v95;
        --v92;
      }

      while (v92);
    }

    v99 = *(v0 + 112);
    v98 = *(v0 + 120);
    v100 = *(v0 + 104);
    v101 = *(v0 + 88);
    [v101 center];
    v103 = v102;
    v105 = v104;
    [v101 radius];
    v107 = v106;
    [v101 radius];
    v109 = v108;
    Date.init()();
    v110 = objc_allocWithZone(CLLocation);
    isa = Date._bridgeToObjectiveC()().super.isa;
    v112 = [v110 initWithCoordinate:isa altitude:v103 horizontalAccuracy:v105 verticalAccuracy:-1.0 course:v107 courseAccuracy:v109 speed:-1.0 speedAccuracy:-1.0 timestamp:{-1.0, 0xBFF0000000000000}];

    v113 = *(v99 + 8);
    v113(v98, v100);
    [v112 setReferenceFrame:{objc_msgSend(v101, "geoReferenceFrame")}];
    v114 = sub_1010E1130();
    v115 = *(v0 + 280);
    v116 = *(v0 + 128);
    v172 = *(v0 + 104);
    if (v114)
    {
      v117 = *(v0 + 72);
      v118 = *(v0 + 80);
      type metadata accessor for SPSeparationMonitoringError(0);
      *(v0 + 24) = 21;
      sub_100032898(_swiftEmptyArrayStorage);
      sub_100003F64(&qword_101696490, type metadata accessor for SPSeparationMonitoringError);
      _BridgedStoredNSError.init(_:userInfo:)();
      v119 = *(v0 + 16);
      v117(v119, 1);

      v120 = v116;
    }

    else
    {
      v136 = *(v0 + 96);
      v168 = *(v0 + 128);
      v138 = *(v0 + 72);
      v137 = *(v0 + 80);
      v139 = *(v0 + 56);
      v140 = swift_allocObject();
      v140[2] = v112;
      v140[3] = v139;
      v140[4] = v138;
      v140[5] = v137;
      v140[6] = v115;
      v140[7] = v136;
      v141 = v112;

      sub_100A17E74(v141, sub_100A1AB04, v140);

      v120 = v168;
    }

    v113(v120, v172);
    goto LABEL_47;
  }

  if (qword_101694B70 != -1)
  {
LABEL_54:
    swift_once();
  }

  v121 = *(v0 + 48);
  v122 = type metadata accessor for Logger();
  sub_1000076D4(v122, qword_10177B780);

  v123 = Logger.logObject.getter();
  v124 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v123, v124))
  {
    v125 = *(v0 + 216);
    v126 = *(v0 + 48);
    v127 = swift_slowAlloc();
    v128 = swift_slowAlloc();
    v174[0] = v128;
    *v127 = 136315138;
    sub_100003F64(&qword_1016967B0, &type metadata accessor for UUID);
    v129 = Set.description.getter();
    v131 = sub_1000136BC(v129, v130, v174);

    *(v127 + 4) = v131;
    _os_log_impl(&_mh_execute_header, v123, v124, "Received separation alert for unknown beacons: %s", v127, 0xCu);
    sub_100007BAC(v128);
  }

  v132 = *(v0 + 280);
  v134 = *(v0 + 72);
  v133 = *(v0 + 80);
  type metadata accessor for SPSeparationMonitoringError(0);
  *(v0 + 40) = 5;
  sub_100032898(_swiftEmptyArrayStorage);
  sub_100003F64(&qword_101696490, type metadata accessor for SPSeparationMonitoringError);
  _BridgedStoredNSError.init(_:userInfo:)();
  v135 = *(v0 + 32);
  v134(v135, 1);

LABEL_47:

  v143 = *(v0 + 264);
  v142 = *(v0 + 272);
  v145 = *(v0 + 248);
  v144 = *(v0 + 256);
  v147 = *(v0 + 232);
  v146 = *(v0 + 240);
  v149 = *(v0 + 200);
  v148 = *(v0 + 208);
  v150 = *(v0 + 192);
  v151 = *(v0 + 168);
  v161 = *(v0 + 160);
  v164 = *(v0 + 152);
  v169 = *(v0 + 128);
  v173 = *(v0 + 120);

  v152 = *(v0 + 8);

  return v152();
}

uint64_t sub_1009CE210(char a1)
{
  v2 = *(*v1 + 328);
  v4 = *v1;
  *(*v1 + 341) = a1;

  return _swift_task_switch(sub_1009CE310, 0, 0);
}

uint64_t sub_1009CE310()
{
  v208 = v0;
  v1 = &unk_10138B000;
  if (*(v0 + 341))
  {
    if (qword_101694B70 != -1)
    {
LABEL_62:
      swift_once();
    }

    v2 = v0[38];
    v3 = v0[39];
    v4 = v0[33];
    v5 = v0[31];
    v6 = v0[27];
    v7 = type metadata accessor for Logger();
    sub_1000076D4(v7, qword_10177B780);
    v2(v5, v4, v6);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    v10 = os_log_type_enabled(v8, v9);
    v11 = v0[33];
    v12 = v0[31];
    v13 = v0[27];
    v14 = v0[28];
    v15 = v0[26];
    if (v10)
    {
      v202 = v0[33];
      v16 = swift_slowAlloc();
      v196 = v15;
      v17 = swift_slowAlloc();
      v207[0] = v17;
      *v16 = v1[107];
      sub_100003F64(&qword_101696930, &type metadata accessor for UUID);
      v18 = dispatch thunk of CustomStringConvertible.description.getter();
      v20 = v19;
      v21 = *(v14 + 8);
      v21(v12, v13);
      v22 = v18;
      v1 = &unk_10138B000;
      v0 = v187;
      v23 = sub_1000136BC(v22, v20, v207);

      *(v16 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v8, v9, "Received separation alert request for paused beacon: %s", v16, 0xCu);
      sub_100007BAC(v17);

      sub_100A1B3C0(v196, type metadata accessor for OwnedBeaconRecord);
      v21(v202, v13);
    }

    else
    {

      v36 = *(v14 + 8);
      v36(v12, v13);
      sub_100A1B3C0(v15, type metadata accessor for OwnedBeaconRecord);
      v36(v11, v13);
    }
  }

  else
  {
    v24 = v0[35];
    sub_100A1B358(v0[26], v0[25], type metadata accessor for OwnedBeaconRecord);
    v25 = *(v24 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v24 + 16) = v25;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v184 = v0[35];
      v25 = sub_100A5C050(0, v25[2] + 1, 1, v25);
      *(v184 + 16) = v25;
    }

    v28 = v25[2];
    v27 = v25[3];
    if (v28 >= v27 >> 1)
    {
      v185 = v0[35];
      *(v185 + 16) = sub_100A5C050(v27 > 1, v28 + 1, 1, v25);
    }

    v29 = v0[35];
    v30 = v0[33];
    v31 = v0[27];
    v32 = v0[28];
    v33 = v0[25];
    v34 = v0[23];
    sub_100A1B3C0(v0[26], type metadata accessor for OwnedBeaconRecord);
    (*(v32 + 8))(v30, v31);
    v35 = *(v29 + 16);
    *(v35 + 16) = v28 + 1;
    sub_100A18C9C(v33, v35 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v28, type metadata accessor for OwnedBeaconRecord);
  }

  v37 = v0[37];
  v38 = (v0[36] - 1) & v0[36];
  v188 = v0[40];
  v186 = v1[107];
  while (v38)
  {
    v40 = v0[6];
LABEL_20:
    v0[36] = v38;
    v0[37] = v37;
    v42 = v0[33];
    v43 = v0[34];
    v45 = v0[27];
    v44 = v0[28];
    v46 = v0[7];
    v47 = *(v44 + 16);
    v48 = *(v40 + 48) + *(v44 + 72) * (__clz(__rbit64(v38)) | (v37 << 6));
    v0[38] = v47;
    v0[39] = (v44 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v190 = v47;
    v47(v43, v48, v45);
    (*(v44 + 32))(v42, v43, v45);
    v189 = *(v46 + 280);
    static os_log_type_t.info.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    v194 = (v38 - 1) & v38;
    v197 = *(v0 + 84);
    v49 = v0[33];
    v51 = v0[19];
    v50 = v0[20];
    v1 = v0[17];
    v52 = v0[18];
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v53 = swift_allocObject();
    *(v53 + 16) = xmmword_101385D80;
    v54 = UUID.uuidString.getter();
    v56 = v55;
    *(v53 + 56) = &type metadata for String;
    *(v53 + 64) = sub_100008C00();
    *(v53 + 32) = v54;
    *(v53 + 40) = v56;
    os_log(_:dso:log:_:_:)();

    static SystemInfo.lockState.getter();
    (*(v52 + 104))(v51, v197, v1);
    sub_100003F64(&qword_10169F338, &type metadata accessor for SystemInfo.DeviceLockState);
    LOBYTE(v54) = dispatch thunk of static Equatable.== infix(_:_:)();
    v57 = *(v52 + 8);
    v57(v51, v1);
    v57(v50, v1);
    if (v54)
    {
      v58 = v0[22];
      v59 = v0[23];
      v60 = v0[21];
      static os_log_type_t.default.getter();
      os_log(_:dso:log:_:_:)();
      (*(v59 + 56))(v60, 1, 1, v58);
LABEL_25:
      sub_10000B3A8(v0[21], &unk_1016A9A20, &qword_10138B280);
      if (qword_101694B70 != -1)
      {
        swift_once();
      }

      v66 = v0[32];
      v67 = v0[33];
      v68 = v0[27];
      v69 = type metadata accessor for Logger();
      sub_1000076D4(v69, qword_10177B780);
      v190(v66, v67, v68);
      v70 = Logger.logObject.getter();
      v71 = static os_log_type_t.error.getter();
      v72 = os_log_type_enabled(v70, v71);
      v73 = v0[32];
      v74 = v0[33];
      v76 = v0[27];
      v75 = v0[28];
      if (v72)
      {
        v77 = swift_slowAlloc();
        v203 = swift_slowAlloc();
        v207[0] = v203;
        *v77 = v186;
        sub_100003F64(&qword_101696930, &type metadata accessor for UUID);
        v198 = v74;
        v78 = dispatch thunk of CustomStringConvertible.description.getter();
        v1 = v79;
        v80 = *(v75 + 8);
        v80(v73, v76);
        v81 = sub_1000136BC(v78, v1, v207);
        v0 = v187;

        *(v77 + 4) = v81;
        _os_log_impl(&_mh_execute_header, v70, v71, "Received separation alert request for unknown beacon: %s", v77, 0xCu);
        sub_100007BAC(v203);

        v80(v198, v76);
      }

      else
      {

        v39 = *(v75 + 8);
        v39(v73, v76);
        v39(v74, v76);
      }

      goto LABEL_13;
    }

    v61 = v0[33];
    v62 = v0[22];
    v63 = v0[23];
    v64 = v0[21];
    v65 = sub_100025044();
    *(swift_task_alloc() + 16) = v61;
    sub_1012BBBD0(sub_100406F84, v65, v64);
    v0[40] = v188;

    if ((*(v63 + 48))(v64, 1, v62) == 1)
    {
      goto LABEL_25;
    }

    v82 = v0[33];
    v83 = v0[8];
    sub_100A18C9C(v0[21], v0[26], type metadata accessor for OwnedBeaconRecord);
    v84 = type metadata accessor for LeashRecord();
    if (sub_1005C8A30(v82, *(v83 + *(v84 + 24))))
    {
      if (sub_1006FBA08(v0[26], v0[7]))
      {
        v182 = swift_task_alloc();
        v0[41] = v182;
        *v182 = v0;
        v182[1] = sub_1009CE210;
        v183 = v0[26];

        return sub_100A078AC(v183);
      }

      if (qword_101694B70 != -1)
      {
        swift_once();
      }

      v85 = v0[33];
      v86 = v0[30];
      v87 = v0[27];
      v88 = type metadata accessor for Logger();
      sub_1000076D4(v88, qword_10177B780);
      v190(v86, v85, v87);
      v89 = Logger.logObject.getter();
      v90 = static os_log_type_t.error.getter();
      v91 = os_log_type_enabled(v89, v90);
      v92 = v0[33];
      v93 = v0[30];
      v1 = v0[27];
      v94 = v0[28];
      v95 = v0[26];
      if (v91)
      {
        v204 = v0[26];
        v96 = swift_slowAlloc();
        v199 = v92;
        v97 = swift_slowAlloc();
        v207[0] = v97;
        *v96 = v186;
        sub_100003F64(&qword_101696930, &type metadata accessor for UUID);
        v98 = dispatch thunk of CustomStringConvertible.description.getter();
        v99 = v1;
        v192 = v1;
        v1 = v100;
        v191 = *(v94 + 8);
        v191(v93, v99);
        v101 = sub_1000136BC(v98, v1, v207);
        v0 = v187;

        *(v96 + 4) = v101;
        v102 = v90;
        v103 = v89;
        v104 = "Received separation alert request for unsupported beacon: %s";
LABEL_39:
        _os_log_impl(&_mh_execute_header, v103, v102, v104, v96, 0xCu);
        sub_100007BAC(v97);

        sub_100A1B3C0(v204, type metadata accessor for OwnedBeaconRecord);
        v191(v199, v192);
        goto LABEL_13;
      }
    }

    else
    {
      if (qword_101694B70 != -1)
      {
        swift_once();
      }

      v105 = v0[33];
      v106 = v0[29];
      v107 = v0[27];
      v108 = type metadata accessor for Logger();
      sub_1000076D4(v108, qword_10177B780);
      v190(v106, v105, v107);
      v89 = Logger.logObject.getter();
      v109 = static os_log_type_t.error.getter();
      v110 = os_log_type_enabled(v89, v109);
      v92 = v0[33];
      v94 = v0[28];
      v93 = v0[29];
      v95 = v0[26];
      v1 = v0[27];
      if (v110)
      {
        v204 = v0[26];
        v96 = swift_slowAlloc();
        v199 = v92;
        v97 = swift_slowAlloc();
        v207[0] = v97;
        *v96 = v186;
        sub_100003F64(&qword_101696930, &type metadata accessor for UUID);
        v111 = dispatch thunk of CustomStringConvertible.description.getter();
        v112 = v1;
        v192 = v1;
        v1 = v113;
        v191 = *(v94 + 8);
        v191(v93, v112);
        v114 = sub_1000136BC(v111, v1, v207);
        v0 = v187;

        *(v96 + 4) = v114;
        v102 = v109;
        v103 = v89;
        v104 = "Received separation alert request for non-leashed beacon: %s";
        goto LABEL_39;
      }
    }

    v115 = *(v94 + 8);
    v115(v93, v1);
    sub_100A1B3C0(v95, type metadata accessor for OwnedBeaconRecord);
    v115(v92, v1);
LABEL_13:
    v38 = v194;
  }

  while (1)
  {
    v41 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      __break(1u);
      goto LABEL_62;
    }

    if (v41 >= (((1 << *(v0 + 340)) + 63) >> 6))
    {
      break;
    }

    v40 = v0[6];
    v38 = *(v40 + 8 * v41 + 56);
    ++v37;
    if (v38)
    {
      v37 = v41;
      goto LABEL_20;
    }
  }

  v116 = v0[35];
  v117 = v0[6];

  if (*(*(v116 + 16) + 16))
  {
    v118 = v0[35];
    static Date.trustedNow.getter(v0[16]);
    v119 = *(v118 + 16);
    v120 = *(v119 + 16);
    if (v120)
    {
      v121 = v0[23];
      v122 = v119 + ((*(v121 + 80) + 32) & ~*(v121 + 80));
      v123 = *(v121 + 72);

      do
      {
        v124 = v0[24];
        v125 = v0[16];
        sub_100A1B358(v122, v124, type metadata accessor for OwnedBeaconRecord);
        sub_100A17920(v124, v125);
        sub_100A1B3C0(v124, type metadata accessor for OwnedBeaconRecord);
        v122 += v123;
        --v120;
      }

      while (v120);
    }

    v127 = v0[14];
    v126 = v0[15];
    v128 = v0[13];
    v129 = v0[11];
    [v129 center];
    v131 = v130;
    v133 = v132;
    [v129 radius];
    v135 = v134;
    [v129 radius];
    v137 = v136;
    Date.init()();
    v138 = objc_allocWithZone(CLLocation);
    isa = Date._bridgeToObjectiveC()().super.isa;
    v140 = [v138 initWithCoordinate:isa altitude:v131 horizontalAccuracy:v133 verticalAccuracy:-1.0 course:v135 courseAccuracy:v137 speed:-1.0 speedAccuracy:-1.0 timestamp:{-1.0, 0xBFF0000000000000}];

    v141 = *(v127 + 8);
    v141(v126, v128);
    [v140 setReferenceFrame:{objc_msgSend(v129, "geoReferenceFrame")}];
    v142 = sub_1010E1130();
    v143 = v0[35];
    v144 = v0[16];
    v205 = v0[13];
    if (v142)
    {
      v145 = v0[9];
      v146 = v0[10];
      type metadata accessor for SPSeparationMonitoringError(0);
      v0[3] = 21;
      sub_100032898(_swiftEmptyArrayStorage);
      sub_100003F64(&qword_101696490, type metadata accessor for SPSeparationMonitoringError);
      _BridgedStoredNSError.init(_:userInfo:)();
      v147 = v0[2];
      v145(v147, 1);

      v148 = v144;
    }

    else
    {
      v200 = v0[16];
      v164 = v187[12];
      v165 = v187[10];
      v166 = v187[9];
      v167 = v187[7];
      v168 = swift_allocObject();
      v168[2] = v140;
      v168[3] = v167;
      v168[4] = v166;
      v168[5] = v165;
      v168[6] = v143;
      v168[7] = v164;
      v0 = v187;
      v169 = v140;

      sub_100A17E74(v169, sub_100A1AB04, v168);

      v148 = v200;
    }

    v141(v148, v205);
  }

  else
  {
    if (qword_101694B70 != -1)
    {
      swift_once();
    }

    v149 = v0[6];
    v150 = type metadata accessor for Logger();
    sub_1000076D4(v150, qword_10177B780);

    v151 = Logger.logObject.getter();
    v152 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v151, v152))
    {
      v153 = v0[27];
      v154 = v0[6];
      v155 = swift_slowAlloc();
      v156 = swift_slowAlloc();
      v207[0] = v156;
      *v155 = v186;
      sub_100003F64(&qword_1016967B0, &type metadata accessor for UUID);
      v157 = Set.description.getter();
      v159 = sub_1000136BC(v157, v158, v207);

      *(v155 + 4) = v159;
      _os_log_impl(&_mh_execute_header, v151, v152, "Received separation alert for unknown beacons: %s", v155, 0xCu);
      sub_100007BAC(v156);
    }

    v160 = v0[35];
    v162 = v0[9];
    v161 = v0[10];
    type metadata accessor for SPSeparationMonitoringError(0);
    v0[5] = 5;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100003F64(&qword_101696490, type metadata accessor for SPSeparationMonitoringError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v163 = v0[4];
    v162(v163, 1);
  }

  v171 = v0[33];
  v170 = v0[34];
  v173 = v0[31];
  v172 = v0[32];
  v175 = v0[29];
  v174 = v0[30];
  v177 = v0[25];
  v176 = v0[26];
  v178 = v0[24];
  v179 = v0[21];
  v193 = v0[20];
  v195 = v0[19];
  v201 = v0[16];
  v206 = v0[15];

  v180 = v0[1];

  return v180();
}