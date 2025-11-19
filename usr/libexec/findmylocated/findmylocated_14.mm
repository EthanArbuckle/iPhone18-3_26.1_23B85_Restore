uint64_t sub_1001714F4(void *a1)
{
  v3 = v1;
  v5 = sub_10004B564(&qword_1005AD908, &unk_1004CAE60);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v23[-v8];
  v10 = a1[4];
  sub_100011AEC(a1, a1[3]);
  sub_1000328C0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v24) = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    LOBYTE(v24) = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v15 = v3[4];
    LOBYTE(v24) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v16 = *(v3 + 40);
    LOBYTE(v24) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v24 = v3[6];
    v23[7] = 4;
    sub_10004B564(&qword_1005A9630, &qword_1004C5680);
    sub_10001CCC4(&qword_1005A9EA8);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v17 = v3[7];
    v18 = v3[8];
    LOBYTE(v24) = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    v19 = *(v3 + 72);
    LOBYTE(v24) = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
    v20 = v3[10];
    v21 = v3[11];
    LOBYTE(v24) = 7;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1001717AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100177800(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001717D4(uint64_t a1)
{
  v2 = sub_1000328C0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100171810(uint64_t a1)
{
  v2 = sub_1000328C0();

  return CodingKey.debugDescription.getter(a1, v2);
}

BOOL sub_100171864(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v9[2] = a1[2];
  v9[3] = v2;
  v3 = a1[5];
  v9[4] = a1[4];
  v9[5] = v3;
  v4 = a1[1];
  v9[0] = *a1;
  v9[1] = v4;
  v5 = a2[3];
  v10[2] = a2[2];
  v10[3] = v5;
  v6 = a2[5];
  v10[4] = a2[4];
  v10[5] = v6;
  v7 = a2[1];
  v10[0] = *a2;
  v10[1] = v7;
  return sub_1001773BC(v9, v10);
}

uint64_t sub_100171A48(void *a1)
{
  v3 = v1;
  v5 = sub_10004B564(&qword_1005ADA28, &qword_1004CAF00);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v20[-v8];
  v10 = a1[4];
  sub_100011AEC(a1, a1[3]);
  sub_10017E91C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v20[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v12 = v3[1];
  v20[14] = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v13 = *(v3 + 1);
  v14 = *(v3 + 2);
  v20[13] = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  v15 = *(v3 + 3);
  v16 = *(v3 + 4);
  v20[12] = 3;
  KeyedEncodingContainer.encode(_:forKey:)();
  v18 = *(v3 + 5);
  v19 = *(v3 + 6);
  v20[11] = 4;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_100171C28()
{
  v1 = *v0;
  v2 = 0x6143654D6F747561;
  v3 = 25705;
  v4 = 0x6369766544736469;
  if (v1 != 3)
  {
    v4 = 1701667182;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100171CC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100177AC4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100171CF0(uint64_t a1)
{
  v2 = sub_10017E91C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100171D2C(uint64_t a1)
{
  v2 = sub_10017E91C();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100171D68@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100177C80(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

uint64_t sub_100171DD4(void *a1)
{
  v3 = v1;
  v5 = sub_10004B564(&qword_1005AD918, &qword_1004CAE70);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v33 - v8;
  v10 = a1[4];
  sub_100011AEC(a1, a1[3]);
  sub_100031AD0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v34 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v12 = v3[1];
    v34 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v13 = *(v3 + 16);
    v34 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v14 = v3[3];
    v34 = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = v3[4];
    v34 = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v16 = v3[5];
    v34 = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    v17 = v3[6];
    v34 = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
    v18 = *(v3 + 56);
    v34 = 7;
    KeyedEncodingContainer.encode(_:forKey:)();
    v19 = v3[8];
    v34 = 8;
    KeyedEncodingContainer.encode(_:forKey:)();
    v20 = v3[9];
    v34 = 9;
    KeyedEncodingContainer.encode(_:forKey:)();
    v21 = v3[10];
    v34 = 10;
    KeyedEncodingContainer.encode(_:forKey:)();
    v22 = v3[11];
    v34 = 11;
    KeyedEncodingContainer.encode(_:forKey:)();
    v23 = *(v3 + 96);
    v34 = 12;
    KeyedEncodingContainer.encode(_:forKey:)();
    v24 = *(v3 + 97);
    v34 = 13;
    KeyedEncodingContainer.encode(_:forKey:)();
    v25 = *(v3 + 98);
    v34 = 14;
    KeyedEncodingContainer.encode(_:forKey:)();
    v26 = *(v3 + 99);
    v34 = 15;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v27 = v3[13];
    v34 = 16;
    KeyedEncodingContainer.encode(_:forKey:)();
    v28 = v3[14];
    v34 = 17;
    KeyedEncodingContainer.encode(_:forKey:)();
    v29 = v3[15];
    v34 = 18;
    KeyedEncodingContainer.encode(_:forKey:)();
    v30 = *(v3 + 128);
    v34 = 19;
    KeyedEncodingContainer.encode(_:forKey:)();
    v31 = v3[17];
    v34 = 20;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10017220C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100177F74(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100172240(uint64_t a1)
{
  v2 = sub_100031AD0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10017227C(uint64_t a1)
{
  v2 = sub_100031AD0();

  return CodingKey.debugDescription.getter(a1, v2);
}

BOOL sub_1001722D0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[7];
  v11[6] = a1[6];
  v11[7] = v2;
  v11[8] = a1[8];
  v3 = a1[3];
  v11[2] = a1[2];
  v11[3] = v3;
  v4 = a1[5];
  v11[4] = a1[4];
  v11[5] = v4;
  v5 = a1[1];
  v11[0] = *a1;
  v11[1] = v5;
  v6 = a2[7];
  v12[6] = a2[6];
  v12[7] = v6;
  v12[8] = a2[8];
  v7 = a2[3];
  v12[2] = a2[2];
  v12[3] = v7;
  v8 = a2[5];
  v12[4] = a2[4];
  v12[5] = v8;
  v9 = a2[1];
  v12[0] = *a2;
  v12[1] = v9;
  return sub_10017723C(v11, v12);
}

uint64_t sub_100172354(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x454E4F5952455645;
  }

  else
  {
    v4 = 0x53444E45495246;
  }

  if (v3)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = 0xE800000000000000;
  }

  if (*a2)
  {
    v6 = 0x454E4F5952455645;
  }

  else
  {
    v6 = 0x53444E45495246;
  }

  if (*a2)
  {
    v7 = 0xE800000000000000;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

Swift::Int sub_1001723FC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100172480()
{
  *v0;
  String.hash(into:)();
}

Swift::Int sub_1001724F0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_100172570(uint64_t *a1@<X8>)
{
  v2 = 0x53444E45495246;
  if (*v1)
  {
    v2 = 0x454E4F5952455645;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_100172600(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v6 = sub_10004B564(&qword_1005AD9A8, &qword_1004CAEB0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v13 - v9;
  v11 = a1[4];
  sub_100011AEC(a1, a1[3]);
  sub_10017E564();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v4)
  {
    v14 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_100172794()
{
  if (*v0)
  {
    result = 0x726564726FLL;
  }

  else
  {
    result = 25705;
  }

  *v0;
  return result;
}

uint64_t sub_1001727C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x726564726FLL && a2 == 0xE500000000000000)
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

uint64_t sub_100172890(uint64_t a1)
{
  v2 = sub_10017E564();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001728CC(uint64_t a1)
{
  v2 = sub_10017E564();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100172908@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1001785FC(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_100172958()
{
  v1 = *v0;
  v2 = v0[1];
  v7 = v0[2];
  v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v3);

  v4._countAndFlagsBits = 8285;
  v4._object = 0xE200000000000000;
  String.append(_:)(v4);
  v5._countAndFlagsBits = v1;
  v5._object = v2;
  String.append(_:)(v5);
  return 91;
}

uint64_t sub_100172A00()
{
  *v0;
  *v0;
  String.hash(into:)();
}

unint64_t sub_100172B14@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001787D4(*a1);
  *a2 = result;
  return result;
}

void sub_100172B44(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC0000006E6F6974;
  v4 = 0x61636F4C65646968;
  v5 = 0xD000000000000013;
  v6 = 0x80000001004DDFE0;
  v7 = 0xEC0000006C69616DLL;
  v8 = 0x457972616D697270;
  if (v2 != 4)
  {
    v8 = 0x657469726F766166;
    v7 = 0xE900000000000073;
  }

  if (v2 != 3)
  {
    v5 = v8;
    v6 = v7;
  }

  if (v2 == 1)
  {
    v4 = 0xD000000000000011;
    v3 = 0x80000001004DDFC0;
  }

  if (!*v1)
  {
    v4 = 0xD000000000000013;
    v3 = 0x80000001004DDFA0;
  }

  if (*v1 <= 2u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v5;
  }

  if (*v1 > 2u)
  {
    v3 = v6;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_100172C20@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1001787D4(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100172C48(uint64_t a1)
{
  v2 = sub_100031B24();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100172C84(uint64_t a1)
{
  v2 = sub_100031B24();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100172CC0()
{
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  _StringGuts.grow(_:)(123);
  v15 = v17;
  v1._countAndFlagsBits = 0x61636F4C65646968;
  v1._object = 0xEE00203A6E6F6974;
  String.append(_:)(v1);
  String.append(_:)(v0[2]);
  v2._object = 0x80000001004E3320;
  v2._countAndFlagsBits = 0xD000000000000016;
  String.append(_:)(v2);
  String.append(_:)(v0[3]);
  v3._object = 0x80000001004E3340;
  v3._countAndFlagsBits = 0xD000000000000016;
  String.append(_:)(v3);
  v16 = v0[4];
  v17 = v16;
  sub_100005F04(&v17, &v14, &qword_1005A96A8, &qword_1004C3320);
  sub_10004B564(&qword_1005A96A8, &qword_1004C3320);
  v4._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v4);

  v5._countAndFlagsBits = 0x7972616D6972700ALL;
  v5._object = 0xEF203A6C69616D45;
  String.append(_:)(v5);
  v16 = *v0;
  v14 = *v0;
  sub_100005F04(&v16, &countAndFlagsBits, &qword_1005A96A8, &qword_1004C3320);
  v6._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v6);

  v7._countAndFlagsBits = 0xD00000000000001ALL;
  v7._object = 0x80000001004E3360;
  String.append(_:)(v7);
  LOBYTE(v14._countAndFlagsBits) = v0[1]._countAndFlagsBits;
  sub_10004B564(&qword_1005AD7F8, &qword_1004CA2E0);
  v8._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v8);

  v9._countAndFlagsBits = 0x7469726F7661660ALL;
  v9._object = 0xEC000000203A7365;
  String.append(_:)(v9);
  v14._countAndFlagsBits = v0[1]._object;
  countAndFlagsBits = v14._countAndFlagsBits;
  sub_100005F04(&v14, v12, &qword_1005AD800, &qword_1004CA2E8);
  sub_10004B564(&qword_1005AD800, &qword_1004CA2E8);
  v10._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v10);

  return v15._countAndFlagsBits;
}

uint64_t sub_100172F4C(void *a1)
{
  v3 = v1;
  v5 = sub_10004B564(&qword_1005AD928, &qword_1004CAE78);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v20[-v8];
  v10 = a1[4];
  sub_100011AEC(a1, a1[3]);
  sub_100031B24();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = v3[6];
  v12 = v3[7];
  v27 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v26 = *(v3 + 16);
    v25 = 1;
    sub_10017E2A4();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v13 = v3[4];
    v14 = v3[5];
    v24 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = v3[8];
    v16 = v3[9];
    v23 = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v17 = *v3;
    v18 = v3[1];
    v22 = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v21 = v3[3];
    v20[15] = 5;
    sub_10004B564(&qword_1005AD940, &qword_1004CAE80);
    sub_10017E2F8();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

BOOL sub_1001731AC(_OWORD *a1, __int128 *a2)
{
  v2 = a1[3];
  v8[2] = a1[2];
  v8[3] = v2;
  v3 = a1[4];
  v4 = a1[1];
  v8[0] = *a1;
  v8[1] = v4;
  v5 = a2[3];
  v9[2] = a2[2];
  v9[3] = v5;
  v9[4] = a2[4];
  v6 = *a2;
  v9[1] = a2[1];
  v8[4] = v3;
  v9[0] = v6;
  return sub_100177548(v8, v9);
}

Swift::Int sub_100173214()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1001732E4()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_1001733A0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10017346C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100178820(*a1);
  *a2 = result;
  return result;
}

void sub_10017349C(uint64_t *a1@<X8>)
{
  v2 = 0xE900000000000070;
  v3 = 0x614D737574617473;
  v4 = 0xED0000736E656B6FLL;
  v5 = 0x5474736575716572;
  if (*v1 != 2)
  {
    v5 = 7107189;
    v4 = 0xE300000000000000;
  }

  if (*v1)
  {
    v3 = 0x6F43737574617473;
    v2 = 0xEA00000000006564;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_100173528()
{
  v1 = 0x614D737574617473;
  v2 = 0x5474736575716572;
  if (*v0 != 2)
  {
    v2 = 7107189;
  }

  if (*v0)
  {
    v1 = 0x6F43737574617473;
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

unint64_t sub_1001735B0@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100178820(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1001735D8(uint64_t a1)
{
  v2 = sub_10017E74C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100173614(uint64_t a1)
{
  v2 = sub_10017E74C();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_100173650(char a1)
{
  result = 0x7972746E756F63;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x437972746E756F63;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 0x726464416C6C7566;
      break;
    case 5:
      result = 0x7974696C61636F6CLL;
      break;
    case 6:
      result = 0x6E6F697461636F6CLL;
      break;
    case 7:
      result = 0x65646F4374736F70;
      break;
    case 8:
      result = 0x736573696D657270;
      break;
    case 9:
      result = 0x64644174726F6873;
      break;
    case 10:
      result = 0x646F436574617473;
      break;
    case 11:
      result = 0x6441746565727473;
      break;
    case 12:
      result = 0x614E746565727473;
      break;
    case 13:
      result = 0xD000000000000015;
      break;
    case 14:
      result = 0x6C61636F4C627573;
      break;
    default:
      result = 0xD000000000000012;
      break;
  }

  return result;
}

double sub_100173824@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10017886C(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_100173880@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10017901C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001738B4(uint64_t a1)
{
  v2 = sub_10017E4A8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001738F0(uint64_t a1)
{
  v2 = sub_10017E4A8();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 sub_10017392C@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100179500(a1, v11);
  if (!v2)
  {
    v5 = v11[13];
    *(a2 + 192) = v11[12];
    *(a2 + 208) = v5;
    *(a2 + 224) = v12;
    v6 = v11[9];
    *(a2 + 128) = v11[8];
    *(a2 + 144) = v6;
    v7 = v11[11];
    *(a2 + 160) = v11[10];
    *(a2 + 176) = v7;
    v8 = v11[5];
    *(a2 + 64) = v11[4];
    *(a2 + 80) = v8;
    v9 = v11[7];
    *(a2 + 96) = v11[6];
    *(a2 + 112) = v9;
    v10 = v11[1];
    *a2 = v11[0];
    *(a2 + 16) = v10;
    result = v11[3];
    *(a2 + 32) = v11[2];
    *(a2 + 48) = result;
  }

  return result;
}

uint64_t sub_1001739BC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10004B564(&qword_1005AE720, &qword_1004CA2F0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v50 - v6;
  v8 = type metadata accessor for FenceRecord();
  v9 = *(v8 - 1);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005F04(a1, v7, &qword_1005AE720, &qword_1004CA2F0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_100002CE0(v7, &qword_1005AE720, &qword_1004CA2F0);
  }

  sub_100176988(v7, v12);
  v14 = &v12[v8[5]];
  v16 = *v14;
  v15 = *(v14 + 1);
  v17 = *(v2 + 392);

  *(v2 + 384) = v16;
  *(v2 + 392) = v15;
  v18 = &v12[v8[10]];
  v19 = *(v18 + 3);
  v57 = *(v18 + 2);
  v58 = v19;
  v20 = *(v18 + 5);
  v59 = *(v18 + 4);
  v60 = v20;
  v21 = *(v18 + 1);
  v55 = *v18;
  v56 = v21;
  v22 = *(&v59 + 1);
  v23 = v59;
  sub_1001A5924(v51);
  v24._countAndFlagsBits = v51;
  DarwinNotification.init(name:value:)(v24, v25);
  v26 = *(v2 + 336);
  v53[12] = *(v2 + 320);
  v53[13] = v26;
  v54 = *(v2 + 352);
  v27 = *(v2 + 272);
  v53[8] = *(v2 + 256);
  v53[9] = v27;
  v28 = *(v2 + 304);
  v53[10] = *(v2 + 288);
  v53[11] = v28;
  v29 = *(v2 + 208);
  v53[4] = *(v2 + 192);
  v53[5] = v29;
  v30 = *(v2 + 240);
  v53[6] = *(v2 + 224);
  v53[7] = v30;
  v31 = *(v2 + 144);
  v53[0] = *(v2 + 128);
  v53[1] = v31;
  v32 = *(v2 + 176);
  v53[2] = *(v2 + 160);
  v53[3] = v32;
  v33 = v51[13];
  *(v2 + 320) = v51[12];
  *(v2 + 336) = v33;
  *(v2 + 352) = v52;
  v34 = v51[9];
  *(v2 + 256) = v51[8];
  *(v2 + 272) = v34;
  v35 = v51[11];
  *(v2 + 288) = v51[10];
  *(v2 + 304) = v35;
  v36 = v51[5];
  *(v2 + 192) = v51[4];
  *(v2 + 208) = v36;
  v37 = v51[7];
  *(v2 + 224) = v51[6];
  *(v2 + 240) = v37;
  v38 = v51[1];
  *(v2 + 128) = v51[0];
  *(v2 + 144) = v38;
  v39 = v51[3];
  *(v2 + 160) = v51[2];
  *(v2 + 176) = v39;

  sub_100002CE0(v53, &qword_1005AD808, &qword_1004CA2F8);
  if (v22)
  {
    v40 = *(v2 + 24);
  }

  else
  {
    v23 = *(v2 + 16);
    v41 = *(v2 + 24);
  }

  *(v2 + 16) = v23;
  *(v2 + 24) = v22;
  v42 = *&v12[v8[6]];
  [v42 coordinate];
  *(v2 + 448) = v43;
  *(v2 + 456) = 0;
  [v42 coordinate];
  *(v2 + 416) = v44;
  *(v2 + 424) = 0;
  [v42 horizontalAccuracy];
  *(v2 + 488) = v45;
  *(v2 + 496) = 0;
  v50 = *&v12[v8[7]];
  v46 = dispatch thunk of CustomStringConvertible.description.getter();
  v48 = v47;
  sub_1001769EC(v12);
  v49 = *(v2 + 440);

  *(v2 + 432) = v46;
  *(v2 + 440) = v48;
  return result;
}

uint64_t sub_100173CF4()
{
  sub_10004B564(&qword_1005AFA60, &unk_1004CE390);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1004CA270;
  _StringGuts.grow(_:)(22);

  v176._countAndFlagsBits = 0xD000000000000013;
  v176._object = 0x80000001004E33B0;
  v2 = *(v0 + 8);
  if (v2)
  {
    v3 = *v0;
    *&v173[0] = 0;
    *(&v173[0] + 1) = 0xE000000000000000;
    v158._countAndFlagsBits = v3;
    v158._object = v2;
    _print_unlocked<A, B>(_:_:)();
    v4._countAndFlagsBits = 0;
    v4._object = 0xE000000000000000;
    String.append(_:)(v4);
  }

  else
  {
    v5._countAndFlagsBits = 7104878;
    v5._object = 0xE300000000000000;
    String.append(_:)(v5);
  }

  v6._countAndFlagsBits = 39;
  v6._object = 0xE100000000000000;
  String.append(_:)(v6);
  object = v176._object;
  *(v1 + 32) = v176._countAndFlagsBits;
  *(v1 + 40) = object;
  v176._countAndFlagsBits = 0x3A73736572646461;
  v176._object = 0xEA00000000002720;
  v8 = *(v0 + 24);
  if (v8)
  {
    v9 = *(v0 + 16);
    *&v173[0] = 0;
    *(&v173[0] + 1) = 0xE000000000000000;
    v158._countAndFlagsBits = v9;
    v158._object = v8;
    _print_unlocked<A, B>(_:_:)();
    v10._countAndFlagsBits = 0;
    v10._object = 0xE000000000000000;
    String.append(_:)(v10);
  }

  else
  {
    v11._countAndFlagsBits = 7104878;
    v11._object = 0xE300000000000000;
    String.append(_:)(v11);
  }

  v12._countAndFlagsBits = 39;
  v12._object = 0xE100000000000000;
  String.append(_:)(v12);
  v13 = v176._object;
  *(v1 + 48) = v176._countAndFlagsBits;
  *(v1 + 56) = v13;
  _StringGuts.grow(_:)(18);

  v176._countAndFlagsBits = 0x64726F6365526B63;
  v176._object = 0xEF27203A656D614ELL;
  v14 = *(v0 + 40);
  if (v14)
  {
    v15 = *(v0 + 32);
    *&v173[0] = 0;
    *(&v173[0] + 1) = 0xE000000000000000;
    v158._countAndFlagsBits = v15;
    v158._object = v14;
    _print_unlocked<A, B>(_:_:)();
    v16._countAndFlagsBits = 0;
    v16._object = 0xE000000000000000;
    String.append(_:)(v16);
  }

  else
  {
    v17._countAndFlagsBits = 7104878;
    v17._object = 0xE300000000000000;
    String.append(_:)(v17);
  }

  v18._countAndFlagsBits = 39;
  v18._object = 0xE100000000000000;
  String.append(_:)(v18);
  v19 = v176._object;
  *(v1 + 64) = v176._countAndFlagsBits;
  *(v1 + 72) = v19;
  _StringGuts.grow(_:)(27);

  v176._countAndFlagsBits = 0xD000000000000018;
  v176._object = 0x80000001004E33D0;
  v20 = *(v0 + 56);
  if (v20)
  {
    v21 = *(v0 + 48);
    *&v173[0] = 0;
    *(&v173[0] + 1) = 0xE000000000000000;
    v158._countAndFlagsBits = v21;
    v158._object = v20;
    _print_unlocked<A, B>(_:_:)();
    v22._countAndFlagsBits = 0;
    v22._object = 0xE000000000000000;
    String.append(_:)(v22);
  }

  else
  {
    v23._countAndFlagsBits = 7104878;
    v23._object = 0xE300000000000000;
    String.append(_:)(v23);
  }

  v24._countAndFlagsBits = 39;
  v24._object = 0xE100000000000000;
  String.append(_:)(v24);
  v25 = v176._object;
  *(v1 + 80) = v176._countAndFlagsBits;
  *(v1 + 88) = v25;
  strcpy(&v176, "createdById: '");
  HIBYTE(v176._object) = -18;
  v26 = *(v0 + 72);
  if (v26)
  {
    v27 = *(v0 + 64);
    *&v173[0] = 0;
    *(&v173[0] + 1) = 0xE000000000000000;
    v158._countAndFlagsBits = v27;
    v158._object = v26;
    _print_unlocked<A, B>(_:_:)();
    v28._countAndFlagsBits = 0;
    v28._object = 0xE000000000000000;
    String.append(_:)(v28);
  }

  else
  {
    v29._countAndFlagsBits = 7104878;
    v29._object = 0xE300000000000000;
    String.append(_:)(v29);
  }

  v30._countAndFlagsBits = 39;
  v30._object = 0xE100000000000000;
  String.append(_:)(v30);
  v31 = v176._object;
  *(v1 + 96) = v176._countAndFlagsBits;
  *(v1 + 104) = v31;
  v176._countAndFlagsBits = 0x203A736C69616D65;
  v176._object = 0xE900000000000027;
  v32 = *(v0 + 80);
  if (v32)
  {
    *&v173[0] = 0;
    *(&v173[0] + 1) = 0xE000000000000000;
    v158._countAndFlagsBits = v32;
    sub_10004B564(&qword_1005A9630, &qword_1004C5680);
    _print_unlocked<A, B>(_:_:)();
    v33._countAndFlagsBits = 0;
    v33._object = 0xE000000000000000;
    String.append(_:)(v33);
  }

  else
  {
    v34._countAndFlagsBits = 7104878;
    v34._object = 0xE300000000000000;
    String.append(_:)(v34);
  }

  v35._countAndFlagsBits = 39;
  v35._object = 0xE100000000000000;
  String.append(_:)(v35);
  v36 = v176._object;
  *(v1 + 112) = v176._countAndFlagsBits;
  *(v1 + 120) = v36;
  v176._countAndFlagsBits = 0x3A644965636E6566;
  v176._object = 0xEA00000000002720;
  v37 = *(v0 + 96);
  if (v37)
  {
    v38 = *(v0 + 88);
    *&v173[0] = 0;
    *(&v173[0] + 1) = 0xE000000000000000;
    v158._countAndFlagsBits = v38;
    v158._object = v37;
    _print_unlocked<A, B>(_:_:)();
    v39._countAndFlagsBits = 0;
    v39._object = 0xE000000000000000;
    String.append(_:)(v39);
  }

  else
  {
    v40._countAndFlagsBits = 7104878;
    v40._object = 0xE300000000000000;
    String.append(_:)(v40);
  }

  v41._countAndFlagsBits = 39;
  v41._object = 0xE100000000000000;
  String.append(_:)(v41);
  v42 = v176._object;
  *(v1 + 128) = v176._countAndFlagsBits;
  *(v1 + 136) = v42;
  strcpy(&v176, "followerIds: '");
  HIBYTE(v176._object) = -18;
  v43 = *(v0 + 104);
  if (v43)
  {
    *&v173[0] = 0;
    *(&v173[0] + 1) = 0xE000000000000000;
    v158._countAndFlagsBits = v43;
    sub_10004B564(&qword_1005A9630, &qword_1004C5680);
    _print_unlocked<A, B>(_:_:)();
    v44._countAndFlagsBits = 0;
    v44._object = 0xE000000000000000;
    String.append(_:)(v44);
  }

  else
  {
    v45._countAndFlagsBits = 7104878;
    v45._object = 0xE300000000000000;
    String.append(_:)(v45);
  }

  v46._countAndFlagsBits = 39;
  v46._object = 0xE100000000000000;
  String.append(_:)(v46);
  v47 = v176._object;
  *(v1 + 144) = v176._countAndFlagsBits;
  *(v1 + 152) = v47;
  v191 = 0x6449646E65697266;
  v192 = 0xEB0000000027203ALL;
  v48 = *(v0 + 120);
  if (v48)
  {
    v49 = *(v0 + 112);
    v176._countAndFlagsBits = 0;
    v176._object = 0xE000000000000000;
    *&v173[0] = v49;
    *(&v173[0] + 1) = v48;
    _print_unlocked<A, B>(_:_:)();
    v50._countAndFlagsBits = 0;
    v50._object = 0xE000000000000000;
    String.append(_:)(v50);
  }

  else
  {
    v51._countAndFlagsBits = 7104878;
    v51._object = 0xE300000000000000;
    String.append(_:)(v51);
  }

  v52._countAndFlagsBits = 39;
  v52._object = 0xE100000000000000;
  String.append(_:)(v52);
  v53 = v192;
  *(v1 + 160) = v191;
  *(v1 + 168) = v53;
  strcpy(v175, "fullAddress: '");
  HIBYTE(v175[1]) = -18;
  v54 = *(v0 + 336);
  v188 = *(v0 + 320);
  v189 = v54;
  v190 = *(v0 + 352);
  v55 = *(v0 + 272);
  v184 = *(v0 + 256);
  v185 = v55;
  v56 = *(v0 + 304);
  v186 = *(v0 + 288);
  v187 = v56;
  v57 = *(v0 + 208);
  v180 = *(v0 + 192);
  v181 = v57;
  v58 = *(v0 + 240);
  v182 = *(v0 + 224);
  v183 = v58;
  v59 = *(v0 + 144);
  v176 = *(v0 + 128);
  v177 = v59;
  v60 = *(v0 + 176);
  v178 = *(v0 + 160);
  v179 = v60;
  if (sub_10004AFD4(&v176) == 1)
  {
    v61._countAndFlagsBits = 7104878;
    v61._object = 0xE300000000000000;
    String.append(_:)(v61);
  }

  else
  {
    v62 = *(v0 + 304);
    v63 = *(v0 + 336);
    v170 = *(v0 + 320);
    v171 = v63;
    v64 = *(v0 + 240);
    v65 = *(v0 + 272);
    v166 = *(v0 + 256);
    v167 = v65;
    v66 = *(v0 + 272);
    v67 = *(v0 + 304);
    v168 = *(v0 + 288);
    v169 = v67;
    v68 = *(v0 + 176);
    v69 = *(v0 + 208);
    v162 = *(v0 + 192);
    v163 = v69;
    v70 = *(v0 + 208);
    v71 = *(v0 + 240);
    v164 = *(v0 + 224);
    v165 = v71;
    v72 = *(v0 + 144);
    v158 = *(v0 + 128);
    v159 = v72;
    v73 = *(v0 + 176);
    v75 = *(v0 + 128);
    v74 = *(v0 + 144);
    v160 = *(v0 + 160);
    v161 = v73;
    v76 = *(v0 + 336);
    v173[12] = v170;
    v173[13] = v76;
    v173[8] = v166;
    v173[9] = v66;
    v173[10] = v168;
    v173[11] = v62;
    v173[4] = v162;
    v173[5] = v70;
    v173[6] = v164;
    v173[7] = v64;
    v173[0] = v75;
    v173[1] = v74;
    v172 = *(v0 + 352);
    v174 = *(v0 + 352);
    v173[2] = v160;
    v173[3] = v68;
    sub_10017E4FC(v173, &v156);
    v77 = String.init<A>(describing:)();
    v158._countAndFlagsBits = 0;
    v158._object = 0xE000000000000000;
    v156 = v77;
    v157 = v78;
    _print_unlocked<A, B>(_:_:)();
    String.append(_:)(v158);
  }

  v79._countAndFlagsBits = 39;
  v79._object = 0xE100000000000000;
  String.append(_:)(v79);
  v80 = v175[1];
  *(v1 + 176) = v175[0];
  *(v1 + 184) = v80;
  *&v173[0] = 0x27203A6469;
  *(&v173[0] + 1) = 0xE500000000000000;
  v81 = *(v0 + 368);
  if (v81)
  {
    v82 = *(v0 + 360);
    v158._countAndFlagsBits = 0;
    v158._object = 0xE000000000000000;
    v156 = v82;
    v157 = v81;
    _print_unlocked<A, B>(_:_:)();
    String.append(_:)(v158);
  }

  else
  {
    v83._countAndFlagsBits = 7104878;
    v83._object = 0xE300000000000000;
    String.append(_:)(v83);
  }

  v84._countAndFlagsBits = 39;
  v84._object = 0xE100000000000000;
  String.append(_:)(v84);
  v85 = *(&v173[0] + 1);
  *(v1 + 192) = *&v173[0];
  *(v1 + 200) = v85;
  strcpy(v173, "isOn: '");
  *(&v173[0] + 1) = 0xE700000000000000;
  v86 = *(v0 + 376);
  if (v86 == 2)
  {
    v87._countAndFlagsBits = 7104878;
    v87._object = 0xE300000000000000;
    String.append(_:)(v87);
  }

  else
  {
    v158._countAndFlagsBits = 0;
    v158._object = 0xE000000000000000;
    LOBYTE(v156) = v86 & 1;
    _print_unlocked<A, B>(_:_:)();
    String.append(_:)(v158);
  }

  v88._countAndFlagsBits = 39;
  v88._object = 0xE100000000000000;
  String.append(_:)(v88);
  v89 = *(&v173[0] + 1);
  *(v1 + 208) = *&v173[0];
  *(v1 + 216) = v89;
  strcpy(v173, "label: '");
  BYTE9(v173[0]) = 0;
  WORD5(v173[0]) = 0;
  HIDWORD(v173[0]) = -402653184;
  v90 = *(v0 + 392);
  if (v90)
  {
    v91 = *(v0 + 384);
    v158._countAndFlagsBits = 0;
    v158._object = 0xE000000000000000;
    v156 = v91;
    v157 = v90;
    _print_unlocked<A, B>(_:_:)();
    String.append(_:)(v158);
  }

  else
  {
    v92._countAndFlagsBits = 7104878;
    v92._object = 0xE300000000000000;
    String.append(_:)(v92);
  }

  v93._countAndFlagsBits = 39;
  v93._object = 0xE100000000000000;
  String.append(_:)(v93);
  v94 = *(&v173[0] + 1);
  *(v1 + 224) = *&v173[0];
  *(v1 + 232) = v94;
  *&v173[0] = 0xD000000000000017;
  *(&v173[0] + 1) = 0x80000001004E33F0;
  v95 = *(v0 + 408);
  if (v95)
  {
    v96 = *(v0 + 400);
    v158._countAndFlagsBits = 0;
    v158._object = 0xE000000000000000;
    v156 = v96;
    v157 = v95;
    _print_unlocked<A, B>(_:_:)();
    String.append(_:)(v158);
  }

  else
  {
    v97._countAndFlagsBits = 7104878;
    v97._object = 0xE300000000000000;
    String.append(_:)(v97);
  }

  v98._countAndFlagsBits = 39;
  v98._object = 0xE100000000000000;
  String.append(_:)(v98);
  v99 = *(&v173[0] + 1);
  *(v1 + 240) = *&v173[0];
  *(v1 + 248) = v99;
  strcpy(v173, "latitude: '");
  HIDWORD(v173[0]) = -352321536;
  if (*(v0 + 424))
  {
    v100._countAndFlagsBits = 7104878;
    v100._object = 0xE300000000000000;
    String.append(_:)(v100);
  }

  else
  {
    v101 = *(v0 + 416);
    v158._countAndFlagsBits = 0;
    v158._object = 0xE000000000000000;
    v156 = v101;
    _print_unlocked<A, B>(_:_:)();
    String.append(_:)(v158);
  }

  v102._countAndFlagsBits = 39;
  v102._object = 0xE100000000000000;
  String.append(_:)(v102);
  v103 = *(&v173[0] + 1);
  *(v1 + 256) = *&v173[0];
  *(v1 + 264) = v103;
  *&v173[0] = 0x6E6F697461636F6CLL;
  *(&v173[0] + 1) = 0xEF27203A65707954;
  v104 = *(v0 + 440);
  if (v104)
  {
    v105 = *(v0 + 432);
    v158._countAndFlagsBits = 0;
    v158._object = 0xE000000000000000;
    v156 = v105;
    v157 = v104;
    _print_unlocked<A, B>(_:_:)();
    String.append(_:)(v158);
  }

  else
  {
    v106._countAndFlagsBits = 7104878;
    v106._object = 0xE300000000000000;
    String.append(_:)(v106);
  }

  v107._countAndFlagsBits = 39;
  v107._object = 0xE100000000000000;
  String.append(_:)(v107);
  v108 = *(&v173[0] + 1);
  *(v1 + 272) = *&v173[0];
  *(v1 + 280) = v108;
  strcpy(v173, "longitude: '");
  BYTE13(v173[0]) = 0;
  HIWORD(v173[0]) = -5120;
  if (*(v0 + 456))
  {
    v109._countAndFlagsBits = 7104878;
    v109._object = 0xE300000000000000;
    String.append(_:)(v109);
  }

  else
  {
    v110 = *(v0 + 448);
    v158._countAndFlagsBits = 0;
    v158._object = 0xE000000000000000;
    v156 = v110;
    _print_unlocked<A, B>(_:_:)();
    String.append(_:)(v158);
  }

  v111._countAndFlagsBits = 39;
  v111._object = 0xE100000000000000;
  String.append(_:)(v111);
  v112 = *(&v173[0] + 1);
  *(v1 + 288) = *&v173[0];
  *(v1 + 296) = v112;
  strcpy(v173, "onetimeonly: '");
  HIBYTE(v173[0]) = -18;
  v113 = *(v0 + 457);
  if (v113 == 2)
  {
    v114._countAndFlagsBits = 7104878;
    v114._object = 0xE300000000000000;
    String.append(_:)(v114);
  }

  else
  {
    v158._countAndFlagsBits = 0;
    v158._object = 0xE000000000000000;
    LOBYTE(v156) = v113 & 1;
    _print_unlocked<A, B>(_:_:)();
    String.append(_:)(v158);
  }

  v115._countAndFlagsBits = 39;
  v115._object = 0xE100000000000000;
  String.append(_:)(v115);
  v116 = *(&v173[0] + 1);
  *(v1 + 304) = *&v173[0];
  *(v1 + 312) = v116;
  *&v173[0] = 0x6D754E656E6F6870;
  *(&v173[0] + 1) = 0xEF27203A73726562;
  v117 = *(v0 + 464);
  if (v117)
  {
    v158._countAndFlagsBits = 0;
    v158._object = 0xE000000000000000;
    v156 = v117;
    sub_10004B564(&qword_1005A9630, &qword_1004C5680);
    _print_unlocked<A, B>(_:_:)();
    String.append(_:)(v158);
  }

  else
  {
    v118._countAndFlagsBits = 7104878;
    v118._object = 0xE300000000000000;
    String.append(_:)(v118);
  }

  v119._countAndFlagsBits = 39;
  v119._object = 0xE100000000000000;
  String.append(_:)(v119);
  v120 = *(&v173[0] + 1);
  *(v1 + 320) = *&v173[0];
  *(v1 + 328) = v120;
  *&v173[0] = 0xD000000000000010;
  *(&v173[0] + 1) = 0x80000001004E3410;
  v121 = *(v0 + 480);
  if (v121)
  {
    v122 = *(v0 + 472);
    v158._countAndFlagsBits = 0;
    v158._object = 0xE000000000000000;
    v156 = v122;
    v157 = v121;
    _print_unlocked<A, B>(_:_:)();
    String.append(_:)(v158);
  }

  else
  {
    v123._countAndFlagsBits = 7104878;
    v123._object = 0xE300000000000000;
    String.append(_:)(v123);
  }

  v124._countAndFlagsBits = 39;
  v124._object = 0xE100000000000000;
  String.append(_:)(v124);
  v125 = *(&v173[0] + 1);
  *(v1 + 336) = *&v173[0];
  *(v1 + 344) = v125;
  strcpy(v173, "radius: '");
  WORD5(v173[0]) = 0;
  HIDWORD(v173[0]) = -385875968;
  if (*(v0 + 496))
  {
    v126._countAndFlagsBits = 7104878;
    v126._object = 0xE300000000000000;
    String.append(_:)(v126);
  }

  else
  {
    v127 = *(v0 + 488);
    v158._countAndFlagsBits = 0;
    v158._object = 0xE000000000000000;
    v156 = v127;
    _print_unlocked<A, B>(_:_:)();
    String.append(_:)(v158);
  }

  v128._countAndFlagsBits = 39;
  v128._object = 0xE100000000000000;
  String.append(_:)(v128);
  v129 = *(&v173[0] + 1);
  *(v1 + 352) = *&v173[0];
  *(v1 + 360) = v129;
  strcpy(v173, "status: '");
  WORD5(v173[0]) = 0;
  HIDWORD(v173[0]) = -385875968;
  v130 = *(v0 + 512);
  if (v130)
  {
    v131 = *(v0 + 504);
    v158._countAndFlagsBits = 0;
    v158._object = 0xE000000000000000;
    v156 = v131;
    v157 = v130;
    _print_unlocked<A, B>(_:_:)();
    String.append(_:)(v158);
  }

  else
  {
    v132._countAndFlagsBits = 7104878;
    v132._object = 0xE300000000000000;
    String.append(_:)(v132);
  }

  v133._countAndFlagsBits = 39;
  v133._object = 0xE100000000000000;
  String.append(_:)(v133);
  v134 = *(&v173[0] + 1);
  *(v1 + 368) = *&v173[0];
  *(v1 + 376) = v134;
  strcpy(v173, "streetName: '");
  HIWORD(v173[0]) = -4864;
  v135 = *(v0 + 528);
  if (v135)
  {
    v136 = *(v0 + 520);
    v158._countAndFlagsBits = 0;
    v158._object = 0xE000000000000000;
    v156 = v136;
    v157 = v135;
    _print_unlocked<A, B>(_:_:)();
    String.append(_:)(v158);
  }

  else
  {
    v137._countAndFlagsBits = 7104878;
    v137._object = 0xE300000000000000;
    String.append(_:)(v137);
  }

  v138._countAndFlagsBits = 39;
  v138._object = 0xE100000000000000;
  String.append(_:)(v138);
  v139 = *(&v173[0] + 1);
  *(v1 + 384) = *&v173[0];
  *(v1 + 392) = v139;
  strcpy(v173, "trigger: '");
  BYTE11(v173[0]) = 0;
  HIDWORD(v173[0]) = -369098752;
  v140 = *(v0 + 544);
  if (v140)
  {
    v141 = *(v0 + 536);
    v158._countAndFlagsBits = 0;
    v158._object = 0xE000000000000000;
    v156 = v141;
    v157 = v140;
    _print_unlocked<A, B>(_:_:)();
    String.append(_:)(v158);
  }

  else
  {
    v142._countAndFlagsBits = 7104878;
    v142._object = 0xE300000000000000;
    String.append(_:)(v142);
  }

  v143._countAndFlagsBits = 39;
  v143._object = 0xE100000000000000;
  String.append(_:)(v143);
  v144 = *(&v173[0] + 1);
  *(v1 + 400) = *&v173[0];
  *(v1 + 408) = v144;
  strcpy(v173, "type: '");
  *(&v173[0] + 1) = 0xE700000000000000;
  v145 = *(v0 + 560);
  if (v145)
  {
    v146 = *(v0 + 552);
    v158._countAndFlagsBits = 0;
    v158._object = 0xE000000000000000;
    v156 = v146;
    v157 = v145;
    _print_unlocked<A, B>(_:_:)();
    String.append(_:)(v158);
  }

  else
  {
    v147._countAndFlagsBits = 7104878;
    v147._object = 0xE300000000000000;
    String.append(_:)(v147);
  }

  v148._countAndFlagsBits = 39;
  v148._object = 0xE100000000000000;
  String.append(_:)(v148);
  v149 = *(&v173[0] + 1);
  *(v1 + 416) = *&v173[0];
  *(v1 + 424) = v149;
  *&v173[0] = 0xD000000000000012;
  *(&v173[0] + 1) = 0x80000001004E3430;
  if (*(v0 + 576))
  {
    v150._countAndFlagsBits = 7104878;
    v150._object = 0xE300000000000000;
    String.append(_:)(v150);
  }

  else
  {
    v151 = *(v0 + 568);
    v158._countAndFlagsBits = 0;
    v158._object = 0xE000000000000000;
    v156 = v151;
    _print_unlocked<A, B>(_:_:)();
    String.append(_:)(v158);
  }

  v152._countAndFlagsBits = 39;
  v152._object = 0xE100000000000000;
  String.append(_:)(v152);
  v153 = *(&v173[0] + 1);
  *(v1 + 432) = *&v173[0];
  *(v1 + 440) = v153;
  *&v173[0] = v1;
  sub_10004B564(&qword_1005A9630, &qword_1004C5680);
  sub_10013E894();
  v154 = BidirectionalCollection<>.joined(separator:)();

  return v154;
}

unint64_t sub_100174FAC(char a1)
{
  result = 0x73736572646461;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x64726F6365526B63;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 0x4264657461657263;
      break;
    case 5:
      result = 0x736C69616D65;
      break;
    case 6:
      result = 0x644965636E6566;
      break;
    case 7:
      result = 0x7265776F6C6C6F66;
      break;
    case 8:
      result = 0x6449646E65697266;
      break;
    case 9:
      result = 0x726464416C6C7566;
      break;
    case 10:
      result = 25705;
      break;
    case 11:
      result = 1850700649;
      break;
    case 12:
      result = 0x6C6562616CLL;
      break;
    case 13:
      result = 0xD000000000000014;
      break;
    case 14:
      result = 0x656475746974616CLL;
      break;
    case 15:
      result = 0x6E6F697461636F6CLL;
      break;
    case 16:
      result = 0x64757469676E6F6CLL;
      break;
    case 17:
      result = 0x6F656D6974656E6FLL;
      break;
    case 18:
      result = 0x6D754E656E6F6870;
      break;
    case 19:
      result = 0x6441797474657270;
      break;
    case 20:
      result = 0x737569646172;
      break;
    case 21:
      result = 0x737574617473;
      break;
    case 22:
      result = 0x614E746565727473;
      break;
    case 23:
      result = 0x72656767697274;
      break;
    case 24:
      result = 1701869940;
      break;
    case 25:
      result = 0x6954657461647075;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

unint64_t sub_100175280(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x656C746974;
    v7 = 1954047348;
    if (a1 != 2)
    {
      v7 = 0x6E6F747475426B6FLL;
    }

    if (a1)
    {
      v6 = 0x7079547472656C61;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x79616C6564;
    if (a1 != 9)
    {
      v1 = 0x64497472656C61;
    }

    if (a1 == 8)
    {
      v2 = 0xD000000000000012;
    }

    else
    {
      v2 = v1;
    }

    v3 = 0x6E6F747475426B6FLL;
    v4 = 0xD000000000000011;
    if (a1 != 6)
    {
      v4 = 0x75426C65636E6163;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

unint64_t sub_100175404(char a1)
{
  result = 0x6F666E49796DLL;
  switch(a1)
  {
    case 1:
      result = 0x73656369766564;
      break;
    case 2:
      result = 0x7366657270;
      break;
    case 3:
      result = 0x7265776F6C6C6F66;
      break;
    case 4:
      result = 0x6E69776F6C6C6F66;
      break;
    case 5:
    case 6:
      result = 0x6F46657275747566;
      break;
    case 7:
      result = 0x4F676E69646E6570;
      break;
    case 8:
      result = 0x52646E616D6D6F63;
      break;
    case 9:
      result = 0xD000000000000010;
      break;
    case 10:
      result = 0x6E6F697461636F6CLL;
      break;
    case 11:
      result = 0x6174536863746566;
      break;
    case 12:
      result = 0x6F43726576726573;
      break;
    case 13:
      result = 0x6769666E6F63;
      break;
    case 14:
      result = 0xD000000000000010;
      break;
    case 15:
      result = 0xD000000000000015;
      break;
    case 16:
      result = 0x7365636E6546796DLL;
      break;
    case 17:
      result = 0xD000000000000011;
      break;
    case 18:
      result = 0x7472656C61;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10017563C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100179F44(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100175664(uint64_t a1)
{
  v2 = sub_10017E6A4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001756A0(uint64_t a1)
{
  v2 = sub_10017E6A4();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_1001756DC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_10017A764(a1, __src);
  if (!v2)
  {
    return memcpy(a2, __src, 0x241uLL);
  }

  return result;
}

uint64_t sub_100175734@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10017BD38(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100175768(uint64_t a1)
{
  v2 = sub_10017E5B8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001757A4(uint64_t a1)
{
  v2 = sub_10017E5B8();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 sub_1001757E0@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10017C0C4(a1, v9);
  if (!v2)
  {
    v5 = v9[9];
    *(a2 + 128) = v9[8];
    *(a2 + 144) = v5;
    *(a2 + 160) = v9[10];
    v6 = v9[5];
    *(a2 + 64) = v9[4];
    *(a2 + 80) = v6;
    v7 = v9[7];
    *(a2 + 96) = v9[6];
    *(a2 + 112) = v7;
    v8 = v9[1];
    *a2 = v9[0];
    *(a2 + 16) = v8;
    result = v9[3];
    *(a2 + 32) = v9[2];
    *(a2 + 48) = result;
  }

  return result;
}

uint64_t sub_100175844(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_100175404(*a1);
  v5 = v4;
  if (v3 == sub_100175404(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_1001758CC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_100175404(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100175930()
{
  sub_100175404(*v0);
  String.hash(into:)();
}

Swift::Int sub_100175984()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_100175404(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1001759E4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_10017C780();
  *a2 = result;
  return result;
}

unint64_t sub_100175A14@<X0>(unint64_t *a1@<X8>)
{
  result = sub_100175404(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_100175A5C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10017C780();
  *a1 = result;
  return result;
}

uint64_t sub_100175A90(uint64_t a1)
{
  v2 = sub_10017D9E0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100175ACC(uint64_t a1)
{
  v2 = sub_10017D9E0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100175B08()
{
  sub_10004B564(&qword_1005AD8F0, &qword_1004CAE58);
  sub_10004B564(&qword_1005AD818, &qword_1004CAE18);
  sub_10017E1CC();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  return v1;
}

uint64_t sub_100175D88()
{
  sub_10004B564(&qword_1005AD818, &qword_1004CAE18);
  sub_10017E0FC();
  return KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
}

uint64_t sub_100176040()
{
  *&v73 = 0;
  *(&v73 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(292);
  v72 = v73;
  v1._countAndFlagsBits = 0x203A6F666E49796DLL;
  v1._object = 0xE800000000000000;
  String.append(_:)(v1);
  v2._countAndFlagsBits = sub_100032B70();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 0x736563697665640ALL;
  v3._object = 0xEA0000000000203ALL;
  String.append(_:)(v3);
  v4 = *(v0 + 96);
  v5._countAndFlagsBits = Array.description.getter();
  String.append(_:)(v5);

  v6._countAndFlagsBits = 0x203A73666572700ALL;
  v6._object = 0xE800000000000000;
  String.append(_:)(v6);
  v7 = *(v0 + 120);
  v8 = *(v0 + 152);
  v105[2] = *(v0 + 136);
  v105[3] = v8;
  v105[4] = *(v0 + 168);
  v105[0] = *(v0 + 104);
  v105[1] = v7;
  v9 = *(v0 + 120);
  v10 = *(v0 + 152);
  v75 = *(v0 + 136);
  v76 = v10;
  v77 = *(v0 + 168);
  v73 = *(v0 + 104);
  v74 = v9;
  sub_100005F04(v105, v71, &qword_1005AD7A8, &qword_1004CA280);
  sub_10004B564(&qword_1005AD7A8, &qword_1004CA280);
  v11._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v11);

  v12._countAndFlagsBits = 0x65776F6C6C6F660ALL;
  v12._object = 0xEB000000003A7372;
  String.append(_:)(v12);
  v104 = *(v0 + 184);
  *&v73 = v104;
  sub_100005F04(&v104, v71, &qword_1005AD7B0, &qword_1004CA288);
  sub_10004B564(&qword_1005AD7B0, &qword_1004CA288);
  v13._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v13);

  v14._countAndFlagsBits = 0x69776F6C6C6F660ALL;
  v14._object = 0xEB000000003A676ELL;
  String.append(_:)(v14);
  v103 = *(v0 + 192);
  *&v73 = v103;
  sub_100005F04(&v103, v71, &qword_1005AD7B0, &qword_1004CA288);
  v15._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v15);

  v16._object = 0x80000001004E2F30;
  v16._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v16);
  v102 = *(v0 + 200);
  *&v73 = v102;
  sub_100005F04(&v102, v71, &qword_1005AD7B8, &qword_1004CA290);
  sub_10004B564(&qword_1005AD7B8, &qword_1004CA290);
  v17._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v17);

  v18._object = 0x80000001004E2F50;
  v18._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v18);
  v101 = *(v0 + 208);
  *&v73 = v101;
  sub_100005F04(&v101, v71, &qword_1005AD7B8, &qword_1004CA290);
  v19._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v19);

  v20._object = 0x80000001004E2F70;
  v20._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v20);
  v21 = *(v0 + 240);
  v99[0] = *(v0 + 224);
  v99[1] = v21;
  v100 = *(v0 + 256);
  v22 = *(v0 + 240);
  v73 = *(v0 + 224);
  v74 = v22;
  *&v75 = *(v0 + 256);
  sub_100005F04(v99, v71, &qword_1005AD7C0, &qword_1004CA298);
  sub_10004B564(&qword_1005AD7C0, &qword_1004CA298);
  v23._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v23);

  v24._countAndFlagsBits = 0xD000000000000012;
  v24._object = 0x80000001004E2F90;
  String.append(_:)(v24);
  v98 = *(v0 + 264);
  *&v73 = v98;
  sub_100005F04(&v98, v71, &qword_1005AD7C8, &qword_1004CA2A0);
  sub_10004B564(&qword_1005AD7C8, &qword_1004CA2A0);
  v25._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v25);

  v26._countAndFlagsBits = 0x6F697461636F6C0ALL;
  v26._object = 0xEB000000003A736ELL;
  String.append(_:)(v26);
  v97 = *(v0 + 272);
  *&v73 = v97;
  sub_100005F04(&v97, v71, &qword_1005AD7D0, &qword_1004CA2A8);
  sub_10004B564(&qword_1005AD7D0, &qword_1004CA2A8);
  v27._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v27);

  v28._countAndFlagsBits = 0x745368637465660ALL;
  v28._object = 0xED00003A73757461;
  String.append(_:)(v28);
  LOBYTE(v73) = *(v0 + 280);
  sub_10004B564(&qword_1005AD7D8, &unk_1004CA2B0);
  v29._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v29);

  v30._countAndFlagsBits = 0x437265767265730ALL;
  v30._object = 0xEF3A747865746E6FLL;
  String.append(_:)(v30);
  v31 = *(v0 + 400);
  v32 = *(v0 + 368);
  v93 = *(v0 + 384);
  v94 = v31;
  v33 = *(v0 + 400);
  v34 = *(v0 + 432);
  v95 = *(v0 + 416);
  v96 = v34;
  v35 = *(v0 + 336);
  v36 = *(v0 + 304);
  v89 = *(v0 + 320);
  v90 = v35;
  v37 = *(v0 + 336);
  v38 = *(v0 + 368);
  v91 = *(v0 + 352);
  v92 = v38;
  v39 = *(v0 + 304);
  v88[0] = *(v0 + 288);
  v88[1] = v39;
  v79 = v93;
  v80 = v33;
  v40 = *(v0 + 432);
  v81 = v95;
  v82 = v40;
  v75 = v89;
  v76 = v37;
  v77 = v91;
  v78 = v32;
  v73 = v88[0];
  v74 = v36;
  sub_100005F04(v88, v71, &qword_1005A9328, &unk_1004C7F20);
  sub_10004B564(&qword_1005A9328, &unk_1004C7F20);
  v41._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v41);

  v42._countAndFlagsBits = 0x3A6769666E6F630ALL;
  v42._object = 0xE800000000000000;
  String.append(_:)(v42);
  v43 = *(v0 + 560);
  v79 = *(v0 + 544);
  v80 = v43;
  v81 = *(v0 + 576);
  v44 = *(v0 + 496);
  v75 = *(v0 + 480);
  v76 = v44;
  v45 = *(v0 + 528);
  v77 = *(v0 + 512);
  v78 = v45;
  v46 = *(v0 + 464);
  v73 = *(v0 + 448);
  v74 = v46;
  sub_10004B564(&qword_1005AD7E0, &qword_1004CA2C0);
  v47._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v47);

  v48._countAndFlagsBits = 0xD000000000000013;
  v48._object = 0x80000001004E2FB0;
  String.append(_:)(v48);
  v87 = *(v0 + 592);
  *&v73 = v87;
  sub_100005F04(&v87, v71, &qword_1005AD7E8, &qword_1004CA2C8);
  sub_10004B564(&qword_1005AD7E8, &qword_1004CA2C8);
  v49._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v49);

  v50._countAndFlagsBits = 0xD000000000000018;
  v50._object = 0x80000001004E2FD0;
  String.append(_:)(v50);
  v86 = *(v0 + 600);
  *&v73 = v86;
  sub_100005F04(&v86, v71, &qword_1005AD7E8, &qword_1004CA2C8);
  v51._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v51);

  v52._countAndFlagsBits = 0x65636E6546796D0ALL;
  v52._object = 0xEF203A7465534973;
  String.append(_:)(v52);
  v85 = *(v0 + 608);
  *&v73 = v85;
  sub_100005F04(&v85, v71, &qword_1005AD7E8, &qword_1004CA2C8);
  v53._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v53);

  v54._countAndFlagsBits = 0xD000000000000014;
  v54._object = 0x80000001004E2FF0;
  String.append(_:)(v54);
  v84 = *(v0 + 616);
  *&v73 = v84;
  sub_100005F04(&v84, v71, &qword_1005AD7E8, &qword_1004CA2C8);
  v55._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v55);

  v56._countAndFlagsBits = 0x417265767265730ALL;
  v56._object = 0xEE00203A7472656CLL;
  String.append(_:)(v56);
  v57 = *(v0 + 736);
  v58 = *(v0 + 768);
  v81 = *(v0 + 752);
  v82 = v58;
  v59 = *(v0 + 768);
  v83 = *(v0 + 784);
  v60 = *(v0 + 672);
  v61 = *(v0 + 704);
  v77 = *(v0 + 688);
  v78 = v61;
  v62 = *(v0 + 704);
  v63 = *(v0 + 736);
  v79 = *(v0 + 720);
  v80 = v63;
  v64 = *(v0 + 640);
  v73 = *(v0 + 624);
  v74 = v64;
  v65 = *(v0 + 672);
  v67 = *(v0 + 624);
  v66 = *(v0 + 640);
  v75 = *(v0 + 656);
  v76 = v65;
  v71[8] = v81;
  v71[9] = v59;
  v71[10] = *(v0 + 784);
  v71[4] = v77;
  v71[5] = v62;
  v71[6] = v79;
  v71[7] = v57;
  v71[0] = v67;
  v71[1] = v66;
  v71[2] = v75;
  v71[3] = v60;
  sub_100005F04(&v73, &v70, &qword_1005AD7F0, &unk_1004CA2D0);
  sub_10004B564(&qword_1005AD7F0, &unk_1004CA2D0);
  v68._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v68);

  return v72;
}

void *sub_100176938@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_10017C7D4(a1, v5);
  if (!v2)
  {
    return memcpy(a2, v5, 0x320uLL);
  }

  return result;
}

uint64_t sub_100176988(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FenceRecord();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001769EC(uint64_t a1)
{
  v2 = type metadata accessor for FenceRecord();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 sub_100176A48(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[13];
  *(a1 + 224) = *(a2 + 28);
  *(a1 + 192) = v11;
  *(a1 + 208) = v12;
  *(a1 + 176) = result;
  return result;
}

uint64_t sub_100176A94(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 232))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_100176AF0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 200) = 0u;
    *(result + 216) = 0u;
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
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 232) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 232) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_100176B8C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100176BD4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_100176C3C(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = result;
  *(a1 + 128) = v8;
  return result;
}

uint64_t sub_100176C70(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 176))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_100176CCC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 168) = 0;
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
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 176) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 176) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_100176D64(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 577))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_100176DC0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 568) = 0;
    *(result + 248) = 0u;
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
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 576) = 0;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 577) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 577) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_100176ED0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
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

uint64_t sub_100176F2C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_100176FA8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100176FF0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10017704C(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100177078(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 800))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001770C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 792) = 0;
    *(result + 248) = 0u;
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
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 800) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 800) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1001771E8()
{
  result = qword_1005AD810;
  if (!qword_1005AD810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD810);
  }

  return result;
}

BOOL sub_10017723C(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || ((*(a1 + 16) ^ *(a2 + 16)) & 1) != 0 || *(a1 + 24) != *(a2 + 24) || *(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40) || *(a1 + 48) != *(a2 + 48) || ((*(a1 + 56) ^ *(a2 + 56)) & 1) != 0 || *(a1 + 64) != *(a2 + 64) || *(a1 + 72) != *(a2 + 72) || *(a1 + 80) != *(a2 + 80) || *(a1 + 88) != *(a2 + 88) || ((*(a1 + 96) ^ *(a2 + 96)) & 1) != 0 || ((*(a1 + 97) ^ *(a2 + 97)) & 1) != 0 || ((*(a1 + 98) ^ *(a2 + 98)) & 1) != 0)
  {
    return 0;
  }

  v3 = *(a1 + 99);
  v4 = *(a2 + 99);
  if (v3 == 2)
  {
    if (v4 != 2)
    {
      return 0;
    }
  }

  else
  {
    v5 = 0;
    if (v4 == 2 || ((v4 ^ v3) & 1) != 0)
    {
      return v5;
    }
  }

  if (*(a1 + 104) != *(a2 + 104) || *(a1 + 112) != *(a2 + 112) || *(a1 + 120) != *(a2 + 120) || ((*(a1 + 128) ^ *(a2 + 128)) & 1) != 0)
  {
    return 0;
  }

  return *(a1 + 136) == *(a2 + 136);
}

BOOL sub_1001773BC(double *a1, uint64_t a2)
{
  v2 = *(a1 + 1);
  v3 = *(a2 + 8);
  if (v2)
  {
    if (!v3)
    {
      return 0;
    }

    if (*a1 != *a2 || v2 != v3)
    {
      v5 = a1;
      v6 = *a1;
      v7 = a2;
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2 = v7;
      v9 = v8;
      a1 = v5;
      if ((v9 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v3)
  {
    return 0;
  }

  v10 = *(a1 + 3);
  v11 = *(a2 + 24);
  if (v10)
  {
    if (!v11)
    {
      return 0;
    }

    if (*(a1 + 2) != *(a2 + 16) || v10 != v11)
    {
      v12 = a1;
      v13 = *(a1 + 2);
      v14 = a2;
      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2 = v14;
      v16 = v15;
      a1 = v12;
      if ((v16 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v11)
  {
    return 0;
  }

  if (a1[4] != *(a2 + 32))
  {
    return 0;
  }

  if ((*(a1 + 40) ^ *(a2 + 40)))
  {
    return 0;
  }

  v17 = a1;
  v18 = a2;
  if ((sub_10022BB24(*(a1 + 6), *(a2 + 48)) & 1) == 0)
  {
    return 0;
  }

  if (v17[7] != *(v18 + 56) || (v19 = v17, v20 = v18, v17[8] != *(v18 + 64)))
  {
    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v20 = v18;
    v19 = v17;
    if ((v21 & 1) == 0)
    {
      return 0;
    }
  }

  if ((*(v19 + 72) ^ *(v20 + 72)))
  {
    return 0;
  }

  v23 = v19[11];
  v24 = *(v20 + 88);
  if (v23)
  {
    return v24 && (v19[10] == *(v20 + 80) && v23 == v24 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0);
  }

  return !v24;
}

BOOL sub_100177548(uint64_t *a1, uint64_t a2)
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

  v8 = *(a1 + 16);
  v9 = *(a2 + 16);
  if (v8 == 2)
  {
    if (v9 != 2)
    {
      return 0;
    }
  }

  else
  {
    if (v9 == 2)
    {
      return 0;
    }

    if (v8)
    {
      v10 = 0x454E4F5952455645;
    }

    else
    {
      v10 = 0x53444E45495246;
    }

    if (v8)
    {
      v11 = 0xE800000000000000;
    }

    else
    {
      v11 = 0xE700000000000000;
    }

    if (v9)
    {
      v12 = 0x454E4F5952455645;
    }

    else
    {
      v12 = 0x53444E45495246;
    }

    if (v9)
    {
      v13 = 0xE800000000000000;
    }

    else
    {
      v13 = 0xE700000000000000;
    }

    if (v10 == v12 && v11 == v13)
    {
    }

    else
    {
      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v15 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v16 = a1[3];
  v17 = *(a2 + 24);
  if (v16)
  {
    if (!v17 || (sub_10022BBB4(v16, v17) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v17)
  {
    return 0;
  }

  if ((a1[4] != *(a2 + 32) || a1[5] != *(a2 + 40)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (a1[6] != *(a2 + 48) || a1[7] != *(a2 + 56)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v18 = a1[9];
  v19 = *(a2 + 72);
  if (v18)
  {
    return v19 && (a1[8] == *(a2 + 64) && v18 == v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0);
  }

  return !v19;
}

uint64_t sub_10017770C(uint64_t a1, char a2)
{
  _StringGuts.grow(_:)(27);

  sub_10004B564(&qword_1005ADA10, &qword_1004CAEF0);
  v3._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v3);

  v4._countAndFlagsBits = 0x437375746174730ALL;
  v4._object = 0xED0000203A65646FLL;
  String.append(_:)(v4);
  v5._countAndFlagsBits = sub_10018166C(a2);
  String.append(_:)(v5);

  return 0x614D737574617473;
}

uint64_t sub_100177800(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x80000001004E3470 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6449656369766564 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6954656369766564 && a2 == 0xEF706D617453656DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C626967696C65 && a2 == 0xEE00654D6F747541 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x736C69616D65 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6D614E7473726966 && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001004E3490 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x656369766544656DLL && a2 == 0xEA00000000006449)
  {

    return 7;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_100177AC4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6143654D6F747561 && a2 == 0xED0000656C626170;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001004E3740 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6369766544736469 && a2 == 0xEB00000000644965 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_100177C80@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10004B564(&qword_1005ADA18, &qword_1004CAEF8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v26 - v8;
  v10 = a1[4];
  sub_100011AEC(a1, a1[3]);
  sub_10017E91C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100004984(a1);
  }

  v36[0] = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v36[0] = 1;
  v12 = KeyedDecodingContainer.decode(_:forKey:)();
  v36[0] = 2;
  v30 = KeyedDecodingContainer.decode(_:forKey:)();
  v31 = v13;
  v36[0] = 3;
  v28 = KeyedDecodingContainer.decode(_:forKey:)();
  v29 = v14;
  v44 = 4;
  v15 = KeyedDecodingContainer.decode(_:forKey:)();
  v43 = v11 & 1;
  v16 = v12 & 1;
  v27 = v16;
  v17 = v15;
  v19 = v18;
  (*(v6 + 8))(v9, v5);
  LOBYTE(v32) = v43;
  BYTE1(v32) = v16;
  v20 = v30;
  v21 = v31;
  *(&v32 + 1) = v30;
  *&v33 = v31;
  v22 = v28;
  v23 = v29;
  *(&v33 + 1) = v28;
  *&v34 = v29;
  *(&v34 + 1) = v17;
  v35 = v19;
  sub_10017E970(&v32, v36);
  sub_100004984(a1);
  v36[0] = v43;
  v36[1] = v27;
  v37 = v20;
  v38 = v21;
  v39 = v22;
  v40 = v23;
  v41 = v17;
  v42 = v19;
  result = sub_10017E9A8(v36);
  v25 = v33;
  *a2 = v32;
  *(a2 + 16) = v25;
  *(a2 + 32) = v34;
  *(a2 + 48) = v35;
  return result;
}

uint64_t sub_100177F74(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD00000000000001ALL && 0x80000001004E34B0 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F6C6C6F4678616DLL && a2 == 0xEC00000073726577 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001004E34D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001004E34F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6569724678616DLL && a2 == 0xEA00000000007364 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001004E3510 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001004E3530 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000001004E3550 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001004E3570 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001004E3590 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001004E35B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001004E35D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x464D466B636F6C62 && a2 == 0xEF6C656E6E616843 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001004E35F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD00000000000001FLL && 0x80000001004E3610 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000022 && 0x80000001004E3630 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xEB000000004C5454 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001004E3660 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001004E3680 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001004E36A0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0x5465636172474C65 && a2 == 0xEE006E694D656D69)
  {

    return 20;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 20;
    }

    else
    {
      return 21;
    }
  }
}

uint64_t sub_1001785FC(uint64_t *a1)
{
  v3 = sub_10004B564(&qword_1005AD998, &qword_1004CAEA8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10[-v6];
  v8 = a1[4];
  sub_100011AEC(a1, a1[3]);
  sub_10017E564();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v10[15] = 0;
    v8 = KeyedDecodingContainer.decode(_:forKey:)();
    v10[14] = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    (*(v4 + 8))(v7, v3);
  }

  sub_100004984(a1);
  return v8;
}

unint64_t sub_1001787D4(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10058B370, v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_100178820(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10058B420, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10017886C@<X0>(uint64_t *a1@<X0>, unint64_t a2@<X8>)
{
  v5 = sub_10004B564(&qword_1005AD9E0, &qword_1004CAED0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v66 - v8;
  v10 = a1[4];
  sub_100011AEC(a1, a1[3]);
  sub_10017E74C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100004984(a1);
  }

  LOBYTE(v78) = 1;
  result = KeyedDecodingContainer.decode(_:forKey:)();
  v13 = 0;
  v14 = HIBYTE(v12) & 0xF;
  v15 = result & 0xFFFFFFFFFFFFLL;
  if ((v12 & 0x2000000000000000) != 0)
  {
    v16 = HIBYTE(v12) & 0xF;
  }

  else
  {
    v16 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v16)
  {

    v81 = 11;
    goto LABEL_75;
  }

  if ((v12 & 0x1000000000000000) != 0)
  {
    v33 = v9;
    v80 = 0;
    v18 = sub_1004BA5C8(result, v12, 10);
    v40 = v39;

    if ((v40 & 1) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_68;
  }

  if ((v12 & 0x2000000000000000) != 0)
  {
    v78 = result;
    v79 = v12 & 0xFFFFFFFFFFFFFFLL;
    if (result == 43)
    {
      if (v14)
      {
        v15 = v14 - 1;
        if (v14 == 1)
        {
          goto LABEL_66;
        }

        v18 = 0;
        v28 = &v78 + 1;
        do
        {
          v29 = *v28 - 48;
          if (v29 > 9)
          {
            goto LABEL_66;
          }

          v30 = 10 * v18;
          if ((v18 * 10) >> 64 != (10 * v18) >> 63)
          {
            goto LABEL_66;
          }

          v18 = v30 + v29;
          if (__OFADD__(v30, v29))
          {
            goto LABEL_66;
          }

          ++v28;
          --v15;
        }

        while (v15);
LABEL_56:
        v33 = v9;
        goto LABEL_67;
      }
    }

    else
    {
      if (result != 45)
      {
        if (!v14)
        {
          goto LABEL_66;
        }

        v18 = 0;
        v34 = &v78;
        do
        {
          v35 = *v34 - 48;
          if (v35 > 9)
          {
            goto LABEL_66;
          }

          v36 = 10 * v18;
          if ((v18 * 10) >> 64 != (10 * v18) >> 63)
          {
            goto LABEL_66;
          }

          v18 = v36 + v35;
          if (__OFADD__(v36, v35))
          {
            goto LABEL_66;
          }

          v34 = (v34 + 1);
          --v14;
        }

        while (v14);
        v33 = v9;
        goto LABEL_58;
      }

      if (v14)
      {
        v15 = v14 - 1;
        if (v14 == 1)
        {
          goto LABEL_66;
        }

        v18 = 0;
        v22 = &v78 + 1;
        do
        {
          v23 = *v22 - 48;
          if (v23 > 9)
          {
            goto LABEL_66;
          }

          v24 = 10 * v18;
          if ((v18 * 10) >> 64 != (10 * v18) >> 63)
          {
            goto LABEL_66;
          }

          v18 = v24 - v23;
          if (__OFSUB__(v24, v23))
          {
            goto LABEL_66;
          }

          ++v22;
          --v15;
        }

        while (v15);
        goto LABEL_56;
      }

LABEL_104:
      __break(1u);
LABEL_105:
      __break(1u);
    }

    __break(1u);
    return result;
  }

  if ((result & 0x1000000000000000) == 0)
  {
    goto LABEL_102;
  }

  result = (v12 & 0xFFFFFFFFFFFFFFFLL) + 32;
  while (1)
  {
    v17 = *result;
    if (v17 == 43)
    {
      if (v15 < 1)
      {
        goto LABEL_105;
      }

      if (!--v15)
      {
        goto LABEL_66;
      }

      if (result)
      {
        v18 = 0;
        v25 = (result + 1);
        while (1)
        {
          v26 = *v25 - 48;
          if (v26 > 9)
          {
            goto LABEL_66;
          }

          v27 = 10 * v18;
          if ((v18 * 10) >> 64 != (10 * v18) >> 63)
          {
            goto LABEL_66;
          }

          v18 = v27 + v26;
          if (__OFADD__(v27, v26))
          {
            goto LABEL_66;
          }

          ++v25;
          if (!--v15)
          {
            goto LABEL_56;
          }
        }
      }
    }

    else if (v17 == 45)
    {
      if (v15 < 1)
      {
        __break(1u);
        goto LABEL_104;
      }

      if (!--v15)
      {
        goto LABEL_66;
      }

      if (result)
      {
        v18 = 0;
        v19 = (result + 1);
        while (1)
        {
          v20 = *v19 - 48;
          if (v20 > 9)
          {
            break;
          }

          v21 = 10 * v18;
          if ((v18 * 10) >> 64 != (10 * v18) >> 63)
          {
            break;
          }

          v18 = v21 - v20;
          if (__OFSUB__(v21, v20))
          {
            break;
          }

          ++v19;
          if (!--v15)
          {
            goto LABEL_56;
          }
        }

LABEL_66:
        v33 = v9;
        v18 = 0;
        LOBYTE(v15) = 1;
        goto LABEL_67;
      }
    }

    else
    {
      if (!v15)
      {
        goto LABEL_66;
      }

      if (result)
      {
        v18 = 0;
        while (1)
        {
          v31 = *result - 48;
          if (v31 > 9)
          {
            goto LABEL_66;
          }

          v32 = 10 * v18;
          if ((v18 * 10) >> 64 != (10 * v18) >> 63)
          {
            goto LABEL_66;
          }

          v18 = v32 + v31;
          if (__OFADD__(v32, v31))
          {
            goto LABEL_66;
          }

          ++result;
          if (!--v15)
          {
            goto LABEL_56;
          }
        }
      }
    }

    v33 = v9;
    v18 = 0;
LABEL_58:
    LOBYTE(v15) = 0;
LABEL_67:
    v80 = v15;
    v37 = v15;

    if (v37)
    {
LABEL_68:
      v38 = 11;
    }

    else
    {
LABEL_71:
      v41 = sub_100181DA8(v18);
      v38 = v41 == 21 ? 0 : v41;
    }

    v81 = v38;
    v9 = v33;
LABEL_75:
    sub_10004B564(&qword_1005AD9F0, &unk_1004CAED8);
    v80 = 2;
    sub_10017E7A0();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    if (v13)
    {

      v13 = 0;
    }

    else
    {
      v13 = v78;
    }

    sub_10004B564(&qword_1005A96A8, &qword_1004C3320);
    v80 = 3;
    sub_10017E8A0();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v42 = v79;
    v77 = v78;
    LOBYTE(v78) = 0;
    if ((KeyedDecodingContainer.contains(_:)() & 1) == 0)
    {
      break;
    }

    sub_10004B564(&qword_1005AC968, &qword_1004C7670);
    v80 = 0;
    sub_10017E824();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v67 = v9;
    v68 = v6;
    v69 = v5;
    v70 = a2;
    v71 = a1;
    v44 = v78;
    sub_10004B564(&qword_1005ADA08, &qword_1004CAEE8);
    v45 = static _DictionaryStorage.copy(original:)();
    v43 = v45;
    a1 = 0;
    v74 = v13;
    v75 = v44;
    v46 = 1 << *(v44 + 32);
    v47 = -1;
    if (v46 < 64)
    {
      v47 = ~(-1 << v46);
    }

    v6 = v44 + 64;
    a2 = v47 & *(v44 + 64);
    v9 = ((v46 + 63) >> 6);
    v72 = v42;
    v73 = v45 + 64;
    if (a2)
    {
      while (1)
      {
        v48 = __clz(__rbit64(a2));
        a2 &= a2 - 1;
LABEL_90:
        v5 = v48 | (a1 << 6);
        v51 = *(v75 + 56);
        v52 = (*(v75 + 48) + 16 * v5);
        v53 = v52[1];
        v76 = *v52;
        v54 = (v51 + 16 * v5);
        v55 = *v54;
        v56 = v54[1];

        v57 = sub_1004B9544(v55, v56);
        if (v58)
        {
          v59 = 11;
        }

        else
        {
          v60 = sub_100181DA8(v57);
          v59 = v60 == 21 ? 0 : v60;
        }

        v13 = v74;
        *(v73 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v5;
        v61 = (v43[6] + 16 * v5);
        *v61 = v76;
        v61[1] = v53;
        *(v43[7] + v5) = v59;
        v62 = v43[2];
        v63 = __OFADD__(v62, 1);
        v64 = v62 + 1;
        if (v63)
        {
          break;
        }

        v43[2] = v64;
        v42 = v72;
        if (!a2)
        {
          goto LABEL_85;
        }
      }
    }

    else
    {
LABEL_85:
      v49 = a1;
      while (1)
      {
        a1 = (v49 + 1);
        if (__OFADD__(v49, 1))
        {
          break;
        }

        if (a1 >= v9)
        {

          (*(v68 + 8))(v67, v69);
          a2 = v70;
          a1 = v71;
          goto LABEL_99;
        }

        v50 = *(v6 + 8 * a1);
        v49 = (v49 + 1);
        if (v50)
        {
          v48 = __clz(__rbit64(v50));
          a2 = (v50 - 1) & v50;
          goto LABEL_90;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_102:
    result = _StringObject.sharedUTF8.getter();
    v15 = v65;
  }

  (*(v6 + 8))(v9, v5);
  v43 = 0;
LABEL_99:
  result = sub_100004984(a1);
  *a2 = v43;
  *(a2 + 8) = v13;
  *(a2 + 16) = v81;
  *(a2 + 24) = v77;
  *(a2 + 32) = v42;
  return result;
}

uint64_t sub_10017901C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000012 && 0x80000001004E2A10 == a2;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7972746E756F63 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x437972746E756F63 && a2 == 0xEB0000000065646FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001004E2A30 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x726464416C6C7566 && a2 == 0xEB00000000737365 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7974696C61636F6CLL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xED0000656C746954 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x65646F4374736F70 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x736573696D657270 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x64644174726F6873 && a2 == 0xEC00000073736572 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x646F436574617473 && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6441746565727473 && a2 == 0xED00007373657264 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x614E746565727473 && a2 == 0xEA0000000000656DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001004E36C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x6C61636F4C627573 && a2 == 0xEB00000000797469)
  {

    return 14;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 14;
    }

    else
    {
      return 15;
    }
  }
}

uint64_t sub_100179500@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10004B564(&qword_1005AD988, &qword_1004CAEA0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v46 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v74 = a1;
  sub_100011AEC(a1, v10);
  sub_10017E4A8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100004984(v74);
  }

  LOBYTE(v90[0]) = 0;
  v13 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v72 = v14;
  LOBYTE(v90[0]) = 1;
  v15 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v70 = v16;
  v71 = v15;
  LOBYTE(v90[0]) = 2;
  v17 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v73 = 0;
  v61 = v17;
  v69 = v18;
  sub_10004B564(&qword_1005A9630, &qword_1004C5680);
  LOBYTE(v75) = 3;
  sub_10001CCC4(&qword_1005A9E80);
  v19 = v73;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (v19)
  {
    v73 = v19;
    (*(v6 + 8))(v9, v5);
    LODWORD(v71) = 0;
    sub_100004984(v74);

    if (v71)
    {
    }
  }

  else
  {
    v68 = v90[0];
    LOBYTE(v90[0]) = 4;
    v60 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v67 = v20;
    LOBYTE(v90[0]) = 5;
    v59 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v66 = v21;
    LOBYTE(v90[0]) = 6;
    v58 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v65 = v22;
    LOBYTE(v90[0]) = 7;
    v57 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v64 = v23;
    LOBYTE(v90[0]) = 8;
    v56 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v63 = v24;
    v73 = 0;
    LOBYTE(v90[0]) = 9;
    v25 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v62 = v26;
    v73 = 0;
    v27 = v25;
    LOBYTE(v90[0]) = 10;
    v54 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v55 = v28;
    v73 = 0;
    LOBYTE(v90[0]) = 11;
    v52 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v53 = v29;
    LOBYTE(v90[0]) = 12;
    v49 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v51 = v30;
    v73 = 0;
    LOBYTE(v90[0]) = 13;
    v48 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v50 = v31;
    v73 = 0;
    v91 = 14;
    v32 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v46 = v33;
    v47 = v32;
    v73 = 0;
    MEMORY[8](v9, v5);
    v34 = v71;
    *&v75 = v13;
    *(&v75 + 1) = v72;
    v36 = v69;
    v35 = v70;
    *&v76 = v71;
    *(&v76 + 1) = v70;
    *&v77 = v61;
    *(&v77 + 1) = v69;
    v37 = v67;
    *&v78 = v68;
    *(&v78 + 1) = v60;
    *&v79 = v67;
    *(&v79 + 1) = v59;
    v38 = v66;
    *&v80 = v66;
    *(&v80 + 1) = v58;
    *&v81 = v65;
    *(&v81 + 1) = v57;
    *&v82 = v64;
    *(&v82 + 1) = v56;
    *&v83 = v63;
    *(&v83 + 1) = v27;
    *&v84 = v62;
    *(&v84 + 1) = v54;
    *&v85 = v55;
    *(&v85 + 1) = v52;
    *&v86 = v53;
    *(&v86 + 1) = v49;
    *&v87 = v51;
    *(&v87 + 1) = v48;
    *&v88 = v50;
    *(&v88 + 1) = v47;
    v89 = v46;
    sub_10017E4FC(&v75, v90);
    sub_100004984(v74);
    v90[0] = v13;
    v90[1] = v72;
    v90[2] = v34;
    v90[3] = v35;
    v90[4] = v61;
    v90[5] = v36;
    v90[6] = v68;
    v90[7] = v60;
    v90[8] = v37;
    v90[9] = v59;
    v90[10] = v38;
    v90[11] = v58;
    v90[12] = v65;
    v90[13] = v57;
    v90[14] = v64;
    v90[15] = v56;
    v90[16] = v63;
    v90[17] = v27;
    v90[18] = v62;
    v90[19] = v54;
    v90[20] = v55;
    v90[21] = v52;
    v90[22] = v53;
    v90[23] = v49;
    v90[24] = v51;
    v90[25] = v48;
    v90[26] = v50;
    v90[27] = v47;
    v90[28] = v46;
    result = sub_10017E534(v90);
    v39 = v88;
    *(a2 + 192) = v87;
    *(a2 + 208) = v39;
    *(a2 + 224) = v89;
    v40 = v84;
    *(a2 + 128) = v83;
    *(a2 + 144) = v40;
    v41 = v86;
    *(a2 + 160) = v85;
    *(a2 + 176) = v41;
    v42 = v80;
    *(a2 + 64) = v79;
    *(a2 + 80) = v42;
    v43 = v82;
    *(a2 + 96) = v81;
    *(a2 + 112) = v43;
    v44 = v76;
    *a2 = v75;
    *(a2 + 16) = v44;
    v45 = v78;
    *(a2 + 32) = v77;
    *(a2 + 48) = v45;
  }

  return result;
}

uint64_t sub_100179F44(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000001004E29F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73736572646461 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64726F6365526B63 && a2 == 0xEC000000656D614ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001004E29D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4264657461657263 && a2 == 0xEB00000000644979 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x736C69616D65 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x644965636E6566 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x7265776F6C6C6F66 && a2 == 0xEB00000000736449 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6449646E65697266 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x726464416C6C7566 && a2 == 0xEB00000000737365 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 1850700649 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x6C6562616CLL && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001004E3720 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x656475746974616CLL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xEC00000065707954 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x64757469676E6F6CLL && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x6F656D6974656E6FLL && a2 == 0xEB00000000796C6ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x6D754E656E6F6870 && a2 == 0xEC00000073726562 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0x6441797474657270 && a2 == 0xED00007373657264 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0x737569646172 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0x737574617473 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0x614E746565727473 && a2 == 0xEA0000000000656DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0x72656767697274 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 24;
  }

  else if (a1 == 0x6954657461647075 && a2 == 0xEF706D617473656DLL)
  {

    return 25;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 25;
    }

    else
    {
      return 26;
    }
  }
}

void *sub_10017A764@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v87 = sub_10004B564(&qword_1005AD9C8, &unk_1004CAEC0);
  v5 = *(v87 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v87);
  v8 = &v44 - v7;
  sub_10017E674(v204);
  v200 = v204[11];
  v201 = v204[12];
  v202 = v204[13];
  v196 = v204[7];
  v197 = v204[8];
  v198 = v204[9];
  v199 = v204[10];
  v192 = v204[3];
  v193 = v204[4];
  v194 = v204[5];
  v195 = v204[6];
  v189 = v204[0];
  v190 = v204[1];
  v203 = v205;
  v191 = v204[2];
  v9 = a1[3];
  v10 = a1[4];
  v206 = a1;
  sub_100011AEC(a1, v9);
  sub_10017E6A4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_100004984(v206);

    v101 = v201;
    v102 = v202;
    *&v103 = v203;
    v97 = v197;
    v98 = v198;
    v99 = v199;
    v100 = v200;
    v93 = v193;
    v94 = v194;
    v95 = v195;
    v96 = v196;
    v89 = v189;
    v90 = v190;
    v91 = v191;
    v92 = v192;
    sub_100002CE0(&v89, &qword_1005AD808, &qword_1004CA2F8);
  }

  else
  {
    v11 = v5;
    v86 = a2;
    LOBYTE(v89) = 0;
    v12 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v83 = v13;
    LOBYTE(v89) = 1;
    v14 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v82 = v15;
    LOBYTE(v89) = 2;
    v81 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v73 = v16;
    LOBYTE(v89) = 3;
    v79 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v80 = v14;
    v72 = v17;
    LOBYTE(v89) = 4;
    v76 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v77 = v12;
    v71 = v18;
    sub_10004B564(&qword_1005A9630, &qword_1004C5680);
    v88[0] = 5;
    v78 = sub_10001CCC4(&qword_1005A9E80);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v70 = v89;
    LOBYTE(v89) = 6;
    v19 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v69 = v20;
    v88[0] = 7;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v75 = v19;
    v68 = v89;
    LOBYTE(v89) = 8;
    v74 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v67 = v21;
    v164 = 9;
    sub_10017E6F8();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v159 = v177;
    v160 = v178;
    v161 = v179;
    v155 = v173;
    v156 = v174;
    v157 = v175;
    v158 = v176;
    v151 = v169;
    v152 = v170;
    v153 = v171;
    v154 = v172;
    v147 = v165;
    v148 = v166;
    v149 = v167;
    v150 = v168;
    v162[11] = v200;
    v162[12] = v201;
    v162[13] = v202;
    v163 = v203;
    v162[8] = v197;
    v162[9] = v198;
    v162[10] = v199;
    v162[4] = v193;
    v162[5] = v194;
    v162[6] = v195;
    v162[7] = v196;
    v162[0] = v189;
    v162[1] = v190;
    v162[2] = v191;
    v162[3] = v192;
    sub_100002CE0(v162, &qword_1005AD808, &qword_1004CA2F8);
    v200 = v158;
    v201 = v159;
    v202 = v160;
    v196 = v154;
    v197 = v155;
    v198 = v156;
    v199 = v157;
    v192 = v150;
    v193 = v151;
    v194 = v152;
    v195 = v153;
    v189 = v147;
    v190 = v148;
    v203 = v161;
    v191 = v149;
    LOBYTE(v89) = 10;
    v22 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v66 = v23;
    v24 = v22;
    LOBYTE(v89) = 11;
    v25 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    LOBYTE(v89) = 12;
    v59 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v85 = v26;
    LOBYTE(v89) = 13;
    v58 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v65 = v27;
    LOBYTE(v89) = 14;
    v57 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v187 = v28 & 1;
    LOBYTE(v89) = 15;
    v56 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v84 = v29;
    LOBYTE(v89) = 16;
    v55 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v185 = v30 & 1;
    LOBYTE(v89) = 17;
    v54 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v88[0] = 18;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v64 = v89;
    LOBYTE(v89) = 19;
    v78 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v63 = v31;
    LOBYTE(v89) = 20;
    v53 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v182 = v32 & 1;
    LOBYTE(v89) = 21;
    v52 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v62 = v33;
    LOBYTE(v89) = 22;
    v51 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v61 = v34;
    LOBYTE(v89) = 23;
    v50 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v60 = v35;
    LOBYTE(v89) = 24;
    v49 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v37 = v36;
    v146 = 25;
    v48 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v39 = v38;
    (*(v11 + 8))(v8, v87);
    v180 = v39 & 1;
    *v88 = v77;
    *&v88[8] = v83;
    *&v88[16] = v80;
    *&v88[24] = v82;
    *&v88[32] = v81;
    *&v88[40] = v73;
    *&v88[48] = v79;
    *&v88[56] = v72;
    *&v88[64] = v76;
    *&v88[72] = v71;
    *&v88[80] = v70;
    *&v88[88] = v75;
    *&v88[96] = v69;
    *&v88[104] = v68;
    *&v88[112] = v74;
    *&v88[120] = v67;
    *&v88[320] = v159;
    *&v88[336] = v160;
    *&v88[256] = v155;
    *&v88[272] = v156;
    *&v88[304] = v158;
    *&v88[288] = v157;
    *&v88[192] = v151;
    *&v88[208] = v152;
    *&v88[240] = v154;
    *&v88[224] = v153;
    *&v88[128] = v147;
    *&v88[144] = v148;
    *&v88[176] = v150;
    *&v88[160] = v149;
    *&v88[352] = v161;
    v47 = v24;
    *&v88[360] = v24;
    v40 = v66;
    *&v88[368] = v66;
    v46 = v25;
    v88[376] = v25;
    *&v88[377] = *v188;
    *&v88[380] = *&v188[3];
    *&v88[384] = v59;
    *&v88[392] = v85;
    *&v88[400] = v58;
    *&v88[408] = v65;
    *&v88[416] = v57;
    LODWORD(v87) = v187;
    v88[424] = v187;
    *&v88[425] = *v186;
    *&v88[428] = *&v186[3];
    *&v88[432] = v56;
    *&v88[440] = v84;
    *&v88[448] = v55;
    *&v88[458] = v183;
    v45 = v185;
    v88[456] = v185;
    v88[457] = v54;
    *&v88[462] = v184;
    *&v88[464] = v64;
    *&v88[472] = v78;
    v41 = v62;
    *&v88[480] = v63;
    *&v88[488] = v53;
    *&v88[497] = *v181;
    LOBYTE(v24) = v182;
    v88[496] = v182;
    *&v88[500] = *&v181[3];
    *&v88[504] = v52;
    *&v88[512] = v62;
    *&v88[520] = v51;
    v42 = v61;
    *&v88[528] = v61;
    *&v88[536] = v50;
    *&v88[544] = v60;
    *&v88[552] = v49;
    *&v88[560] = v37;
    *&v88[568] = v48;
    HIDWORD(v44) = v180;
    v88[576] = v180;
    sub_10005D0C0(v88, &v89);
    sub_100004984(v206);
    *&v89 = v77;
    *(&v89 + 1) = v83;
    *&v90 = v80;
    *(&v90 + 1) = v82;
    *&v91 = v81;
    *(&v91 + 1) = v73;
    *&v92 = v79;
    *(&v92 + 1) = v72;
    *&v93 = v76;
    *(&v93 + 1) = v71;
    *&v94 = v70;
    *(&v94 + 1) = v75;
    *&v95 = v69;
    *(&v95 + 1) = v68;
    *&v96 = v74;
    *(&v96 + 1) = v67;
    v113 = v40;
    v97 = v189;
    v98 = v190;
    v101 = v193;
    v102 = v194;
    v99 = v191;
    v100 = v192;
    v105 = v197;
    v106 = v198;
    v103 = v195;
    v104 = v196;
    v109 = v201;
    v110 = v202;
    v107 = v199;
    v108 = v200;
    v111 = v203;
    v112 = v47;
    v114 = v46;
    *v115 = *v188;
    *&v115[3] = *&v188[3];
    v116 = v59;
    v117 = v85;
    v118 = v58;
    v119 = v65;
    v120 = v57;
    v121 = v87;
    *v122 = *v186;
    *&v122[3] = *&v186[3];
    v123 = v56;
    v124 = v84;
    v125 = v55;
    v126 = v45;
    v127 = v54;
    v128 = v183;
    v129 = v184;
    v130 = v64;
    v131 = v78;
    v132 = v63;
    v133 = v53;
    v134 = v24;
    *v135 = *v181;
    *&v135[3] = *&v181[3];
    v136 = v52;
    v137 = v41;
    v138 = v51;
    v139 = v42;
    v140 = v50;
    v141 = v60;
    v142 = v49;
    v143 = v37;
    v144 = v48;
    v145 = BYTE4(v44);
    sub_10005D11C(&v89);
    return memcpy(v86, v88, 0x241uLL);
  }
}

uint64_t sub_10017BD38(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7079547472656C61 && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1954047348 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F747475426B6FLL && a2 == 0xED0000656C746954 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6F747475426B6FLL && a2 == 0xEB000000004C5255 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E6F747475426B6FLL && a2 == 0xEE006E6F69746341 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001004E36E0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x75426C65636E6163 && a2 == 0xEF4C52556E6F7474 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001004E3700 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x79616C6564 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x64497472656C61 && a2 == 0xE700000000000000)
  {

    return 10;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

uint64_t sub_10017C0C4@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v58 = sub_10004B564(&qword_1005AD9B8, &qword_1004CAEB8);
  v5 = *(v58 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v58);
  v8 = &v38 - v7;
  v9 = a1[4];
  sub_100011AEC(a1, a1[3]);
  sub_10017E5B8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100004984(a1);
  }

  v10 = v5;
  LOBYTE(v70[0]) = 0;
  v11 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v13 = v12;
  LOBYTE(v70[0]) = 1;
  v14 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v56 = v15;
  v51 = v14;
  LOBYTE(v70[0]) = 2;
  v50 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v55 = v16;
  LOBYTE(v70[0]) = 3;
  v49 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v54 = v17;
  LOBYTE(v70[0]) = 4;
  v48 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v53 = v18;
  LOBYTE(v70[0]) = 5;
  v47 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v52 = v19;
  LOBYTE(v70[0]) = 6;
  v44 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v46 = v20;
  LOBYTE(v70[0]) = 7;
  v21 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v45 = v22;
  v42 = v21;
  LOBYTE(v70[0]) = 8;
  v41 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v43 = v23;
  v57 = 0;
  LOBYTE(v70[0]) = 9;
  v40 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v57 = 0;
  v74 = v24 & 1;
  v75 = 10;
  v25 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v39 = v26;
  v57 = 0;
  v27 = v25;
  (*(v10 + 8))(v8, v58);
  *&v59 = v11;
  *(&v59 + 1) = v13;
  v38 = v13;
  v28 = v56;
  *&v60 = v51;
  *(&v60 + 1) = v56;
  v29 = v54;
  *&v61 = v50;
  *(&v61 + 1) = v55;
  *&v62 = v49;
  *(&v62 + 1) = v54;
  v30 = v52;
  *&v63 = v48;
  *(&v63 + 1) = v53;
  *&v64 = v47;
  *(&v64 + 1) = v52;
  *&v65 = v44;
  *(&v65 + 1) = v46;
  *&v66 = v42;
  *(&v66 + 1) = v45;
  *&v67 = v41;
  *(&v67 + 1) = v43;
  v31 = v39;
  *&v68 = v40;
  LODWORD(v58) = v74;
  BYTE8(v68) = v74;
  *&v69 = v27;
  *(&v69 + 1) = v39;
  sub_10017E60C(&v59, v70);
  sub_100004984(a1);
  v70[0] = v11;
  v70[1] = v38;
  v70[2] = v51;
  v70[3] = v28;
  v70[4] = v50;
  v70[5] = v55;
  v70[6] = v49;
  v70[7] = v29;
  v70[8] = v48;
  v70[9] = v53;
  v70[10] = v47;
  v70[11] = v30;
  v70[12] = v44;
  v70[13] = v46;
  v70[14] = v42;
  v70[15] = v45;
  v70[16] = v41;
  v70[17] = v43;
  v70[18] = v40;
  v71 = v58;
  v72 = v27;
  v73 = v31;
  result = sub_10017E644(v70);
  v33 = v68;
  a2[8] = v67;
  a2[9] = v33;
  a2[10] = v69;
  v34 = v64;
  a2[4] = v63;
  a2[5] = v34;
  v35 = v66;
  a2[6] = v65;
  a2[7] = v35;
  v36 = v60;
  *a2 = v59;
  a2[1] = v36;
  v37 = v62;
  a2[2] = v61;
  a2[3] = v37;
  return result;
}

uint64_t sub_10017C780()
{
  v0 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v0 >= 0x13)
  {
    return 19;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_10017C7D4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_10004B564(&qword_1005AD818, &qword_1004CAE18);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v47 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v167 = a1;
  sub_100011AEC(a1, v10);
  sub_10017D9E0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100004984(v167);
  }

  v77 = v6;
  v142 = 0;
  sub_1000325D0();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v78 = v5;
  v163 = v145;
  v164 = v146;
  v165 = v147;
  v166 = v148;
  v161 = v143;
  v162 = v144;
  sub_10004B564(&qword_1005AD830, &qword_1004CAE20);
  v140 = 1;
  sub_10017DA34();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v54 = a2;
  v76 = v141;
  LOBYTE(v79[0]) = 2;
  sub_10017DB0C();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v55 = v80;
  v74 = *(&v81 + 1);
  v53 = v81;
  v75 = *(&v80 + 1);
  v72 = *(&v82 + 1);
  v73 = v82;
  v70 = *(&v83 + 1);
  v71 = v83;
  v68 = *(&v84 + 1);
  v69 = v84;
  sub_10004B564(&qword_1005AD7B0, &qword_1004CA288);
  LOBYTE(v79[0]) = 3;
  sub_10017DB60();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v67 = v80;
  LOBYTE(v79[0]) = 4;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v66 = v80;
  sub_10004B564(&qword_1005AD870, &qword_1004CAE30);
  LOBYTE(v79[0]) = 5;
  sub_10017DCBC();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v65 = v80;
  LOBYTE(v79[0]) = 6;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v64 = v80;
  sub_10004B564(&qword_1005AD888, &qword_1004CAE38);
  LOBYTE(v79[0]) = 7;
  sub_10017DD94();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v63 = v80;
  LOBYTE(v79[0]) = 8;
  sub_10017DE6C();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v62 = *(&v80 + 1);
  v60 = v80;
  v61 = v81;
  v58 = v82;
  v59 = *(&v81 + 1);
  sub_10004B564(&qword_1005AD8A8, &qword_1004CAE40);
  LOBYTE(v79[0]) = 9;
  sub_10017DEC0();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v57 = v80;
  sub_10004B564(&qword_1005AD8C0, &unk_1004CAE48);
  LOBYTE(v79[0]) = 10;
  sub_10017DF98();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v56 = v80;
  LOBYTE(v79[0]) = 12;
  sub_1001452AC();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  *&v160[103] = v86;
  *&v160[119] = v87;
  *&v160[135] = v88;
  *&v160[151] = v89;
  *&v160[39] = v82;
  *&v160[55] = v83;
  *&v160[71] = v84;
  *&v160[87] = v85;
  *&v160[7] = v80;
  *&v160[23] = v81;
  LOBYTE(v79[0]) = 13;
  sub_10017E074();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v137 = v86;
  v138 = v87;
  v139 = v88;
  v133 = v82;
  v134 = v83;
  v136 = v85;
  v135 = v84;
  v132 = v81;
  v131 = v80;
  v52 = sub_100175B08();
  v51 = sub_100175B08();
  v50 = sub_100175B08();
  v49 = sub_100175B08();
  LOBYTE(v80) = 11;
  result = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  if (!v13)
  {
    goto LABEL_4;
  }

  v20 = HIBYTE(v13) & 0xF;
  v21 = result & 0xFFFFFFFFFFFFLL;
  if ((v13 & 0x2000000000000000) != 0)
  {
    v22 = HIBYTE(v13) & 0xF;
  }

  else
  {
    v22 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v22)
  {

    goto LABEL_4;
  }

  if ((v13 & 0x1000000000000000) != 0)
  {
    v24 = sub_1004BA5C8(result, v13, 10);
    v45 = v44;

    if ((v45 & 1) == 0)
    {
LABEL_69:
      v43 = sub_100181DA8(v24);
      if (v43 == 21)
      {
        v14 = 0;
      }

      else
      {
        v14 = v43;
      }

      goto LABEL_5;
    }

LABEL_4:
    v14 = 11;
LABEL_5:
    v48 = v14;
    sub_100175D88();
    (*(v77 + 8))(v9, v78);
    v79[2] = v163;
    v79[3] = v164;
    v79[4] = v165;
    v79[5] = v166;
    v79[0] = v161;
    v79[1] = v162;
    *&v79[6] = v76;
    *(&v79[6] + 1) = v55;
    v15 = v53;
    *&v79[7] = v75;
    *(&v79[7] + 1) = v53;
    *&v79[8] = v74;
    *(&v79[8] + 1) = v73;
    *&v79[9] = v72;
    *(&v79[9] + 1) = v71;
    *&v79[10] = v70;
    *(&v79[10] + 1) = v69;
    *&v79[11] = v68;
    *(&v79[11] + 1) = v67;
    *&v79[12] = v66;
    *(&v79[12] + 1) = v65;
    *&v79[13] = v64;
    *(&v79[13] + 1) = v63;
    *&v79[14] = v60;
    *(&v79[14] + 1) = v62;
    *&v79[15] = v61;
    *(&v79[15] + 1) = v59;
    *&v79[16] = v58;
    *(&v79[16] + 1) = v57;
    *&v79[17] = v56;
    BYTE8(v79[17]) = v14;
    *(&v79[25] + 9) = *&v160[128];
    *(&v79[26] + 9) = *&v160[144];
    *(&v79[21] + 9) = *&v160[64];
    *(&v79[22] + 9) = *&v160[80];
    *(&v79[23] + 9) = *&v160[96];
    *(&v79[24] + 9) = *&v160[112];
    *(&v79[17] + 9) = *v160;
    *(&v79[18] + 9) = *&v160[16];
    *(&v79[19] + 9) = *&v160[32];
    *(&v79[20] + 9) = *&v160[48];
    *(&v79[27] + 1) = *&v160[159];
    v79[34] = v137;
    v79[35] = v138;
    v79[36] = v139;
    v79[30] = v133;
    v79[31] = v134;
    v79[32] = v135;
    v79[33] = v136;
    v79[28] = v131;
    v79[29] = v132;
    v17 = v51;
    v16 = v52;
    *&v79[37] = v52;
    *(&v79[37] + 1) = v51;
    v19 = v49;
    v18 = v50;
    *&v79[38] = v50;
    *(&v79[38] + 1) = v49;
    v79[47] = v157;
    v79[48] = v158;
    v79[49] = v159;
    v79[43] = v153;
    v79[44] = v154;
    v79[45] = v155;
    v79[46] = v156;
    v79[39] = v149;
    v79[40] = v150;
    v79[41] = v151;
    v79[42] = v152;
    sub_10006DAC8(v79, &v80);
    sub_100004984(v167);
    v82 = v163;
    v83 = v164;
    v84 = v165;
    v85 = v166;
    v80 = v161;
    v81 = v162;
    *&v86 = v76;
    *(&v86 + 1) = v55;
    *&v87 = v75;
    *(&v87 + 1) = v15;
    *&v88 = v74;
    *(&v88 + 1) = v73;
    *&v89 = v72;
    *(&v89 + 1) = v71;
    v90 = v70;
    v91 = v69;
    v92 = v68;
    v93 = v67;
    v94 = v66;
    v95 = v65;
    v96 = v64;
    v97 = v63;
    v98 = v60;
    v99 = v62;
    v100 = v61;
    v101 = v59;
    v102 = v58;
    v103 = v57;
    v104 = v56;
    v105 = v48;
    v114 = *&v160[128];
    *v115 = *&v160[144];
    v110 = *&v160[64];
    v111 = *&v160[80];
    v112 = *&v160[96];
    v113 = *&v160[112];
    v106 = *v160;
    v107 = *&v160[16];
    v108 = *&v160[32];
    v109 = *&v160[48];
    *&v115[15] = *&v160[159];
    *&v115[119] = v137;
    *&v115[135] = v138;
    *&v115[151] = v139;
    *&v115[55] = v133;
    *&v115[71] = v134;
    *&v115[103] = v136;
    *&v115[87] = v135;
    *&v115[39] = v132;
    *&v115[23] = v131;
    v116 = v16;
    v117 = v17;
    v118 = v18;
    v119 = v19;
    v128 = v157;
    v129 = v158;
    v130 = v159;
    v124 = v153;
    v125 = v154;
    v127 = v156;
    v126 = v155;
    v120 = v149;
    v121 = v150;
    v123 = v152;
    v122 = v151;
    sub_10005D06C(&v80);
    return memcpy(v54, v79, 0x320uLL);
  }

  if ((v13 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (v13 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v21 = v46;
    }

    v23 = *result;
    if (v23 == 43)
    {
      if (v21 >= 1)
      {
        if (--v21)
        {
          v24 = 0;
          if (result)
          {
            v31 = (result + 1);
            while (1)
            {
              v32 = *v31 - 48;
              if (v32 > 9)
              {
                goto LABEL_67;
              }

              v33 = 10 * v24;
              if ((v24 * 10) >> 64 != (10 * v24) >> 63)
              {
                goto LABEL_67;
              }

              v24 = v33 + v32;
              if (__OFADD__(v33, v32))
              {
                goto LABEL_67;
              }

              ++v31;
              if (!--v21)
              {
                goto LABEL_68;
              }
            }
          }

          goto LABEL_66;
        }

        goto LABEL_67;
      }

      goto LABEL_78;
    }

    if (v23 != 45)
    {
      if (v21)
      {
        v24 = 0;
        if (result)
        {
          while (1)
          {
            v37 = *result - 48;
            if (v37 > 9)
            {
              goto LABEL_67;
            }

            v38 = 10 * v24;
            if ((v24 * 10) >> 64 != (10 * v24) >> 63)
            {
              goto LABEL_67;
            }

            v24 = v38 + v37;
            if (__OFADD__(v38, v37))
            {
              goto LABEL_67;
            }

            ++result;
            if (!--v21)
            {
              goto LABEL_68;
            }
          }
        }

        goto LABEL_66;
      }

LABEL_67:
      v24 = 0;
      LOBYTE(v21) = 1;
LABEL_68:
      LOBYTE(v79[0]) = v21;
      v42 = v21;

      if ((v42 & 1) == 0)
      {
        goto LABEL_69;
      }

      goto LABEL_4;
    }

    if (v21 >= 1)
    {
      if (--v21)
      {
        v24 = 0;
        if (result)
        {
          v25 = (result + 1);
          while (1)
          {
            v26 = *v25 - 48;
            if (v26 > 9)
            {
              goto LABEL_67;
            }

            v27 = 10 * v24;
            if ((v24 * 10) >> 64 != (10 * v24) >> 63)
            {
              goto LABEL_67;
            }

            v24 = v27 - v26;
            if (__OFSUB__(v27, v26))
            {
              goto LABEL_67;
            }

            ++v25;
            if (!--v21)
            {
              goto LABEL_68;
            }
          }
        }

LABEL_66:
        LOBYTE(v21) = 0;
        goto LABEL_68;
      }

      goto LABEL_67;
    }

    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  *&v80 = result;
  *(&v80 + 1) = v13 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v20)
      {
        v24 = 0;
        v39 = &v80;
        while (1)
        {
          v40 = *v39 - 48;
          if (v40 > 9)
          {
            break;
          }

          v41 = 10 * v24;
          if ((v24 * 10) >> 64 != (10 * v24) >> 63)
          {
            break;
          }

          v24 = v41 + v40;
          if (__OFADD__(v41, v40))
          {
            break;
          }

          ++v39;
          if (!--v20)
          {
            goto LABEL_66;
          }
        }
      }

      goto LABEL_67;
    }

    if (v20)
    {
      v21 = v20 - 1;
      if (v20 != 1)
      {
        v24 = 0;
        v28 = &v80 + 1;
        while (1)
        {
          v29 = *v28 - 48;
          if (v29 > 9)
          {
            break;
          }

          v30 = 10 * v24;
          if ((v24 * 10) >> 64 != (10 * v24) >> 63)
          {
            break;
          }

          v24 = v30 - v29;
          if (__OFSUB__(v30, v29))
          {
            break;
          }

          ++v28;
          if (!--v21)
          {
            goto LABEL_68;
          }
        }
      }

      goto LABEL_67;
    }

    goto LABEL_77;
  }

  if (v20)
  {
    v21 = v20 - 1;
    if (v20 != 1)
    {
      v24 = 0;
      v34 = &v80 + 1;
      while (1)
      {
        v35 = *v34 - 48;
        if (v35 > 9)
        {
          break;
        }

        v36 = 10 * v24;
        if ((v24 * 10) >> 64 != (10 * v24) >> 63)
        {
          break;
        }

        v24 = v36 + v35;
        if (__OFADD__(v36, v35))
        {
          break;
        }

        ++v34;
        if (!--v21)
        {
          goto LABEL_68;
        }
      }
    }

    goto LABEL_67;
  }

LABEL_79:
  __break(1u);
  return result;
}

unint64_t sub_10017D9E0()
{
  result = qword_1005AD820;
  if (!qword_1005AD820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD820);
  }

  return result;
}

unint64_t sub_10017DA34()
{
  result = qword_1005AD838;
  if (!qword_1005AD838)
  {
    sub_10004B610(&qword_1005AD830, &qword_1004CAE20);
    sub_10017DAB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD838);
  }

  return result;
}

unint64_t sub_10017DAB8()
{
  result = qword_1005AD840;
  if (!qword_1005AD840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD840);
  }

  return result;
}

unint64_t sub_10017DB0C()
{
  result = qword_1005AD848;
  if (!qword_1005AD848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD848);
  }

  return result;
}

unint64_t sub_10017DB60()
{
  result = qword_1005AD850;
  if (!qword_1005AD850)
  {
    sub_10004B610(&qword_1005AD7B0, &qword_1004CA288);
    sub_10017DBE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD850);
  }

  return result;
}

unint64_t sub_10017DBE4()
{
  result = qword_1005AD858;
  if (!qword_1005AD858)
  {
    sub_10004B610(&qword_1005AD860, &qword_1004CAE28);
    sub_10017DC68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD858);
  }

  return result;
}

unint64_t sub_10017DC68()
{
  result = qword_1005AD868;
  if (!qword_1005AD868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD868);
  }

  return result;
}

unint64_t sub_10017DCBC()
{
  result = qword_1005AD878;
  if (!qword_1005AD878)
  {
    sub_10004B610(&qword_1005AD870, &qword_1004CAE30);
    sub_10017DD40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD878);
  }

  return result;
}

unint64_t sub_10017DD40()
{
  result = qword_1005AD880;
  if (!qword_1005AD880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD880);
  }

  return result;
}

unint64_t sub_10017DD94()
{
  result = qword_1005AD890;
  if (!qword_1005AD890)
  {
    sub_10004B610(&qword_1005AD888, &qword_1004CAE38);
    sub_10017DE18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD890);
  }

  return result;
}

unint64_t sub_10017DE18()
{
  result = qword_1005AD898;
  if (!qword_1005AD898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD898);
  }

  return result;
}

unint64_t sub_10017DE6C()
{
  result = qword_1005AD8A0;
  if (!qword_1005AD8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD8A0);
  }

  return result;
}

unint64_t sub_10017DEC0()
{
  result = qword_1005AD8B0;
  if (!qword_1005AD8B0)
  {
    sub_10004B610(&qword_1005AD8A8, &qword_1004CAE40);
    sub_10017DF44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD8B0);
  }

  return result;
}

unint64_t sub_10017DF44()
{
  result = qword_1005AD8B8;
  if (!qword_1005AD8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD8B8);
  }

  return result;
}

unint64_t sub_10017DF98()
{
  result = qword_1005AD8C8;
  if (!qword_1005AD8C8)
  {
    sub_10004B610(&qword_1005AD8C0, &unk_1004CAE48);
    sub_10017E01C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD8C8);
  }

  return result;
}

unint64_t sub_10017E01C()
{
  result = qword_1005AD8D0;
  if (!qword_1005AD8D0)
  {
    type metadata accessor for ServerLocation(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD8D0);
  }

  return result;
}

unint64_t sub_10017E074()
{
  result = qword_1005AD8D8;
  if (!qword_1005AD8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD8D8);
  }

  return result;
}

double sub_10017E0C8(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 2;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0;
  return result;
}

unint64_t sub_10017E0FC()
{
  result = qword_1005AD8E0;
  if (!qword_1005AD8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD8E0);
  }

  return result;
}

double sub_10017E150(_OWORD *a1)
{
  result = 0.0;
  *a1 = xmmword_1004C6EC0;
  a1[1] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  return result;
}

unint64_t sub_10017E178()
{
  result = qword_1005AD8E8;
  if (!qword_1005AD8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD8E8);
  }

  return result;
}

unint64_t sub_10017E1CC()
{
  result = qword_1005AD8F8;
  if (!qword_1005AD8F8)
  {
    sub_10004B610(&qword_1005AD8F0, &qword_1004CAE58);
    sub_10017E250();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD8F8);
  }

  return result;
}

unint64_t sub_10017E250()
{
  result = qword_1005AD900;
  if (!qword_1005AD900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD900);
  }

  return result;
}

unint64_t sub_10017E2A4()
{
  result = qword_1005AD938;
  if (!qword_1005AD938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD938);
  }

  return result;
}

unint64_t sub_10017E2F8()
{
  result = qword_1005AD948;
  if (!qword_1005AD948)
  {
    sub_10004B610(&qword_1005AD940, &qword_1004CAE80);
    sub_10017E37C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD948);
  }

  return result;
}

unint64_t sub_10017E37C()
{
  result = qword_1005AD950;
  if (!qword_1005AD950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD950);
  }

  return result;
}

unint64_t sub_10017E3D0()
{
  result = qword_1005AD970;
  if (!qword_1005AD970)
  {
    sub_10004B610(&qword_1005AD940, &qword_1004CAE80);
    sub_10017E454();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD970);
  }

  return result;
}

unint64_t sub_10017E454()
{
  result = qword_1005AD978;
  if (!qword_1005AD978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD978);
  }

  return result;
}

unint64_t sub_10017E4A8()
{
  result = qword_1005AD990;
  if (!qword_1005AD990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD990);
  }

  return result;
}

unint64_t sub_10017E564()
{
  result = qword_1005AD9A0;
  if (!qword_1005AD9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD9A0);
  }

  return result;
}

unint64_t sub_10017E5B8()
{
  result = qword_1005AD9C0;
  if (!qword_1005AD9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD9C0);
  }

  return result;
}

double sub_10017E674(uint64_t a1)
{
  result = 0.0;
  *a1 = xmmword_1004C6EC0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0;
  return result;
}

unint64_t sub_10017E6A4()
{
  result = qword_1005AD9D0;
  if (!qword_1005AD9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD9D0);
  }

  return result;
}

unint64_t sub_10017E6F8()
{
  result = qword_1005AD9D8;
  if (!qword_1005AD9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD9D8);
  }

  return result;
}

unint64_t sub_10017E74C()
{
  result = qword_1005AD9E8;
  if (!qword_1005AD9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD9E8);
  }

  return result;
}

unint64_t sub_10017E7A0()
{
  result = qword_1005AD9F8;
  if (!qword_1005AD9F8)
  {
    sub_10004B610(&qword_1005AD9F0, &unk_1004CAED8);
    sub_10017E824();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD9F8);
  }

  return result;
}

unint64_t sub_10017E824()
{
  result = qword_1005AC970;
  if (!qword_1005AC970)
  {
    sub_10004B610(&qword_1005AC968, &qword_1004C7670);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AC970);
  }

  return result;
}

unint64_t sub_10017E8A0()
{
  result = qword_1005ADA00;
  if (!qword_1005ADA00)
  {
    sub_10004B610(&qword_1005A96A8, &qword_1004C3320);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADA00);
  }

  return result;
}

unint64_t sub_10017E91C()
{
  result = qword_1005ADA20;
  if (!qword_1005ADA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADA20);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ServerAlert.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ServerAlert.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ServerFence.FullAddress.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ServerFence.FullAddress.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ServerStatusCode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEC)
  {
    goto LABEL_17;
  }

  if (a2 + 20 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 20) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 20;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 20;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 20;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x15;
  v8 = v6 - 21;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t getEnumTagSinglePayload for ServerBaseResponse.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEE)
  {
    goto LABEL_17;
  }

  if (a2 + 18 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 18) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 18;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 18;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 18;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x13;
  v8 = v6 - 19;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ServerBaseResponse.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 18 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 18) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEE)
  {
    v4 = 0;
  }

  if (a2 > 0xED)
  {
    v5 = ((a2 - 238) >> 8) + 1;
    *result = a2 + 18;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 18;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10017EECC()
{
  result = qword_1005ADA30;
  if (!qword_1005ADA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADA30);
  }

  return result;
}

unint64_t sub_10017EF24()
{
  result = qword_1005ADA38;
  if (!qword_1005ADA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADA38);
  }

  return result;
}

unint64_t sub_10017EF7C()
{
  result = qword_1005ADA40;
  if (!qword_1005ADA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADA40);
  }

  return result;
}

unint64_t sub_10017EFD4()
{
  result = qword_1005ADA48;
  if (!qword_1005ADA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADA48);
  }

  return result;
}

unint64_t sub_10017F02C()
{
  result = qword_1005ADA50;
  if (!qword_1005ADA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADA50);
  }

  return result;
}

unint64_t sub_10017F084()
{
  result = qword_1005ADA58;
  if (!qword_1005ADA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADA58);
  }

  return result;
}

unint64_t sub_10017F0DC()
{
  result = qword_1005ADA60;
  if (!qword_1005ADA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADA60);
  }

  return result;
}

unint64_t sub_10017F134()
{
  result = qword_1005ADA68;
  if (!qword_1005ADA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADA68);
  }

  return result;
}

unint64_t sub_10017F18C()
{
  result = qword_1005ADA70;
  if (!qword_1005ADA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADA70);
  }

  return result;
}

unint64_t sub_10017F1E4()
{
  result = qword_1005ADA78;
  if (!qword_1005ADA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADA78);
  }

  return result;
}

unint64_t sub_10017F23C()
{
  result = qword_1005ADA80;
  if (!qword_1005ADA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADA80);
  }

  return result;
}

unint64_t sub_10017F294()
{
  result = qword_1005ADA88;
  if (!qword_1005ADA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADA88);
  }

  return result;
}

unint64_t sub_10017F2EC()
{
  result = qword_1005ADA90;
  if (!qword_1005ADA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADA90);
  }

  return result;
}

unint64_t sub_10017F344()
{
  result = qword_1005ADA98;
  if (!qword_1005ADA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADA98);
  }

  return result;
}

unint64_t sub_10017F39C()
{
  result = qword_1005ADAA0;
  if (!qword_1005ADAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADAA0);
  }

  return result;
}

unint64_t sub_10017F3F4()
{
  result = qword_1005ADAA8;
  if (!qword_1005ADAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADAA8);
  }

  return result;
}

unint64_t sub_10017F44C()
{
  result = qword_1005ADAB0;
  if (!qword_1005ADAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADAB0);
  }

  return result;
}

unint64_t sub_10017F4A4()
{
  result = qword_1005ADAB8;
  if (!qword_1005ADAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADAB8);
  }

  return result;
}

unint64_t sub_10017F4FC()
{
  result = qword_1005ADAC0;
  if (!qword_1005ADAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADAC0);
  }

  return result;
}

unint64_t sub_10017F554()
{
  result = qword_1005ADAC8;
  if (!qword_1005ADAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADAC8);
  }

  return result;
}

unint64_t sub_10017F5AC()
{
  result = qword_1005ADAD0;
  if (!qword_1005ADAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADAD0);
  }

  return result;
}

unint64_t sub_10017F604()
{
  result = qword_1005ADAD8;
  if (!qword_1005ADAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADAD8);
  }

  return result;
}

unint64_t sub_10017F65C()
{
  result = qword_1005ADAE0;
  if (!qword_1005ADAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADAE0);
  }

  return result;
}

unint64_t sub_10017F6B4()
{
  result = qword_1005ADAE8;
  if (!qword_1005ADAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADAE8);
  }

  return result;
}

unint64_t sub_10017F70C()
{
  result = qword_1005ADAF0;
  if (!qword_1005ADAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADAF0);
  }

  return result;
}

unint64_t sub_10017F764()
{
  result = qword_1005ADAF8;
  if (!qword_1005ADAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADAF8);
  }

  return result;
}

unint64_t sub_10017F7BC()
{
  result = qword_1005ADB00;
  if (!qword_1005ADB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADB00);
  }

  return result;
}

unint64_t sub_10017F814()
{
  result = qword_1005ADB08;
  if (!qword_1005ADB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADB08);
  }

  return result;
}

unint64_t sub_10017F86C()
{
  result = qword_1005ADB10;
  if (!qword_1005ADB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADB10);
  }

  return result;
}

uint64_t sub_10017FD08(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004B564(&qword_1005A96A8, &qword_1004C3320);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 sub_10017FD78(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = result;
  *(a1 + 112) = v7;
  return result;
}

uint64_t sub_10017FDA4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
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
      *(result + 160) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10017FE1C(char a1)
{
  result = 7562610;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0xD000000000000019;
      break;
    case 3:
      result = 0x6449746E65696C63;
      break;
    case 4:
      result = 0xD000000000000022;
      break;
    case 6:
      result = 0xD00000000000001DLL;
      break;
    case 7:
      result = 0xD000000000000020;
      break;
    case 8:
      result = 0xD00000000000001BLL;
      break;
    case 9:
      result = 0x6449737270;
      break;
    case 10:
      result = 0xD000000000000016;
      break;
    case 11:
      result = 0xD000000000000014;
      break;
    case 12:
      result = 0xD000000000000015;
      break;
    case 13:
      result = 0xD000000000000018;
      break;
    case 14:
      result = 0xD000000000000011;
      break;
    case 15:
      result = 0x6F69746172657469;
      break;
    case 16:
      result = 0xD000000000000014;
      break;
    default:
      result = 0xD000000000000017;
      break;
  }

  return result;
}

uint64_t sub_100180020(void *a1)
{
  v3 = v1;
  v5 = sub_10004B564(&qword_1005ADB18, &qword_1004CBB00);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v31[-v8];
  v10 = a1[4];
  sub_100011AEC(a1, a1[3]);
  sub_1001805B4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  LOBYTE(v32) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v12 = v3[1];
    v13 = v3[2];
    LOBYTE(v32) = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v14 = v3[3];
    LOBYTE(v32) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = v3[4];
    v16 = v3[5];
    LOBYTE(v32) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v17 = *(v3 + 48);
    LOBYTE(v32) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v18 = v3[7];
    LOBYTE(v32) = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    v19 = v3[8];
    LOBYTE(v32) = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
    v20 = v3[9];
    LOBYTE(v32) = 7;
    KeyedEncodingContainer.encode(_:forKey:)();
    v21 = v3[10];
    LOBYTE(v32) = 8;
    KeyedEncodingContainer.encode(_:forKey:)();
    v22 = v3[11];
    LOBYTE(v32) = 9;
    KeyedEncodingContainer.encode(_:forKey:)();
    v23 = v3[12];
    LOBYTE(v32) = 10;
    KeyedEncodingContainer.encode(_:forKey:)();
    v24 = v3[13];
    LOBYTE(v32) = 11;
    KeyedEncodingContainer.encode(_:forKey:)();
    v25 = v3[14];
    LOBYTE(v32) = 12;
    KeyedEncodingContainer.encode(_:forKey:)();
    v26 = v3[15];
    LOBYTE(v32) = 13;
    KeyedEncodingContainer.encode(_:forKey:)();
    v27 = v3[16];
    v28 = v3[17];
    LOBYTE(v32) = 14;
    KeyedEncodingContainer.encode(_:forKey:)();
    v29 = v3[18];
    LOBYTE(v32) = 15;
    KeyedEncodingContainer.encode(_:forKey:)();
    v32 = v3[19];
    v31[7] = 16;
    sub_10004B564(&qword_1005ADB28, &qword_1004CBB08);
    sub_10018147C(&qword_1005ADB30);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100180418@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001808F8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100180440(uint64_t a1)
{
  v2 = sub_1001805B4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10018047C(uint64_t a1)
{
  v2 = sub_1001805B4();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1001804B8@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_100180E24(a1, v10);
  if (!v2)
  {
    v5 = v10[7];
    a2[6] = v10[6];
    a2[7] = v5;
    v6 = v10[9];
    a2[8] = v10[8];
    a2[9] = v6;
    v7 = v10[3];
    a2[2] = v10[2];
    a2[3] = v7;
    v8 = v10[5];
    a2[4] = v10[4];
    a2[5] = v8;
    result = *v10;
    v9 = v10[1];
    *a2 = v10[0];
    a2[1] = v9;
  }

  return result;
}

unint64_t sub_100180530(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[7];
  v13[6] = a1[6];
  v13[7] = v2;
  v3 = a1[9];
  v13[8] = a1[8];
  v13[9] = v3;
  v4 = a1[3];
  v13[2] = a1[2];
  v13[3] = v4;
  v5 = a1[5];
  v13[4] = a1[4];
  v13[5] = v5;
  v6 = a1[1];
  v13[0] = *a1;
  v13[1] = v6;
  v7 = a2[7];
  v14[6] = a2[6];
  v14[7] = v7;
  v8 = a2[9];
  v14[8] = a2[8];
  v14[9] = v8;
  v9 = a2[3];
  v14[2] = a2[2];
  v14[3] = v9;
  v10 = a2[5];
  v14[4] = a2[4];
  v14[5] = v10;
  v11 = a2[1];
  v14[0] = *a2;
  v14[1] = v11;
  return sub_100180710(v13, v14) & 1;
}

unint64_t sub_1001805B4()
{
  result = qword_1005ADB20;
  if (!qword_1005ADB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADB20);
  }

  return result;
}

unint64_t sub_100180608(unint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 56) + 8 * v12);
    result = sub_1001FD770(*(*(v3 + 48) + 8 * v12));
    if ((v14 & 1) == 0 || *(*(a2 + 56) + 8 * result) != v13)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_100180710(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (!v2)
  {
    if (!v3)
    {
      goto LABEL_11;
    }

    return 0;
  }

  if (!v3)
  {
    return 0;
  }

  if (*(a1 + 8) != *(a2 + 8) || v2 != v3)
  {
    v5 = a1;
    v6 = *(a1 + 8);
    v7 = a2;
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
    a2 = v7;
    v9 = v8;
    a1 = v5;
    if ((v9 & 1) == 0)
    {
      return 0;
    }
  }

LABEL_11:
  if (*(a1 + 24) != *(a2 + 24))
  {
    return 0;
  }

  if (*(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40))
  {
    v10 = a1;
    v11 = *(a1 + 32);
    v12 = a2;
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
    a2 = v12;
    v14 = v13;
    a1 = v10;
    if ((v14 & 1) == 0)
    {
      return 0;
    }
  }

  if (((*(a1 + 48) ^ *(a2 + 48)) & 1) != 0 || *(a1 + 56) != *(a2 + 56) || *(a1 + 64) != *(a2 + 64) || *(a1 + 72) != *(a2 + 72) || *(a1 + 80) != *(a2 + 80) || *(a1 + 88) != *(a2 + 88) || *(a1 + 96) != *(a2 + 96) || *(a1 + 104) != *(a2 + 104) || *(a1 + 112) != *(a2 + 112) || *(a1 + 120) != *(a2 + 120))
  {
    return 0;
  }

  if (*(a1 + 128) != *(a2 + 128) || *(a1 + 136) != *(a2 + 136))
  {
    v15 = a1;
    v16 = *(a1 + 128);
    v17 = a2;
    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();
    a2 = v17;
    v19 = v18;
    a1 = v15;
    if ((v19 & 1) == 0)
    {
      return 0;
    }
  }

  if (*(a1 + 144) != *(a2 + 144))
  {
    return 0;
  }

  v20 = *(a1 + 152);
  v21 = *(a2 + 152);

  return sub_100180608(v20, v21);
}

uint64_t sub_1001808F8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000017 && 0x80000001004E3920 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7562610 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001004E3940 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6449746E65696C63 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000022 && 0x80000001004E3630 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001004E3960 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000001004E3980 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000020 && 0x80000001004E39A0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001004E39D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6449737270 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001004E39F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001004E3A10 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001004E3A30 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001004E3A50 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001004E3A70 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x6F69746172657469 && a2 == 0xEF7265626D754E6ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001004E3A90 == a2)
  {

    return 16;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 16;
    }

    else
    {
      return 17;
    }
  }
}

uint64_t sub_100180E24@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v86 = sub_10004B564(&qword_1005ADB38, &qword_1004CBB10);
  v5 = *(v86 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v86);
  v8 = &v47 - v7;
  v9 = a1[4];
  sub_100011AEC(a1, a1[3]);
  sub_1001805B4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100004984(a1);
  }

  v10 = v5;
  LOBYTE(v66[0]) = 0;
  KeyedDecodingContainer.decode(_:forKey:)();
  v12 = v11;
  LOBYTE(v66[0]) = 1;
  v13 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v15 = v14;
  v55 = v13;
  LOBYTE(v66[0]) = 2;
  KeyedDecodingContainer.decode(_:forKey:)();
  v17 = v16;
  LOBYTE(v66[0]) = 3;
  *&v54 = KeyedDecodingContainer.decode(_:forKey:)();
  *(&v54 + 1) = v18;
  LOBYTE(v66[0]) = 4;
  v19 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v66[0]) = 5;
  KeyedDecodingContainer.decode(_:forKey:)();
  v21 = v20;
  LOBYTE(v66[0]) = 6;
  KeyedDecodingContainer.decode(_:forKey:)();
  v23 = v22;
  LOBYTE(v66[0]) = 7;
  KeyedDecodingContainer.decode(_:forKey:)();
  v52 = v19;
  v25 = v24;
  v53 = a2;
  LOBYTE(v66[0]) = 8;
  KeyedDecodingContainer.decode(_:forKey:)();
  v27 = v26;
  LOBYTE(v66[0]) = 9;
  v51 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v66[0]) = 10;
  KeyedDecodingContainer.decode(_:forKey:)();
  v29 = v28;
  LOBYTE(v66[0]) = 11;
  KeyedDecodingContainer.decode(_:forKey:)();
  v31 = v30;
  LOBYTE(v66[0]) = 12;
  KeyedDecodingContainer.decode(_:forKey:)();
  v50 = v32;
  LOBYTE(v66[0]) = 13;
  KeyedDecodingContainer.decode(_:forKey:)();
  v49 = v33;
  LOBYTE(v66[0]) = 14;
  v34 = KeyedDecodingContainer.decode(_:forKey:)();
  v36 = v35;
  LOBYTE(v66[0]) = 15;
  v48 = KeyedDecodingContainer.decode(_:forKey:)();
  sub_10004B564(&qword_1005ADB28, &qword_1004CBB08);
  v83 = 16;
  sub_10018147C(&qword_1005ADB40);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v37 = v52 & 1;
  (*(v10 + 8))(v8, v86);
  v86 = v84;
  *&v56 = v12;
  v38 = v55;
  *(&v56 + 1) = v55;
  *&v57 = v15;
  *(&v57 + 1) = v17;
  v39 = v54;
  v58 = v54;
  LOBYTE(v59) = v37;
  *(&v59 + 1) = v21;
  *&v60 = v23;
  *(&v60 + 1) = v25;
  *&v61 = v27;
  *(&v61 + 1) = v51;
  *&v62 = v29;
  *(&v62 + 1) = v31;
  *&v63 = v50;
  *(&v63 + 1) = v49;
  *&v64 = v34;
  *(&v64 + 1) = v36;
  *&v65 = v48;
  *(&v65 + 1) = v84;
  sub_1001814EC(&v56, v66);
  sub_100004984(a1);
  v66[0] = v12;
  v66[1] = v38;
  v66[2] = v15;
  v66[3] = v17;
  v67 = __PAIR128__(*(&v54 + 1), v39);
  v68 = v37;
  *v69 = v85[0];
  *&v69[3] = *(v85 + 3);
  v70 = v21;
  v71 = v23;
  v72 = v25;
  v73 = v27;
  v74 = v51;
  v75 = v29;
  v76 = v31;
  v77 = v50;
  v78 = v49;
  v79 = v34;
  v80 = v36;
  v81 = v48;
  v82 = v86;
  result = sub_100181524(v66);
  v41 = v63;
  v42 = v53;
  v53[6] = v62;
  v42[7] = v41;
  v43 = v65;
  v42[8] = v64;
  v42[9] = v43;
  v44 = v59;
  v42[2] = v58;
  v42[3] = v44;
  v45 = v61;
  v42[4] = v60;
  v42[5] = v45;
  v46 = v57;
  *v42 = v56;
  v42[1] = v46;
  return result;
}

uint64_t sub_10018147C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_10004B610(&qword_1005ADB28, &qword_1004CBB08);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100181568()
{
  result = qword_1005ADB48;
  if (!qword_1005ADB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADB48);
  }

  return result;
}

unint64_t sub_1001815C0()
{
  result = qword_1005ADB50;
  if (!qword_1005ADB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADB50);
  }

  return result;
}

unint64_t sub_100181618()
{
  result = qword_1005ADB58;
  if (!qword_1005ADB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADB58);
  }

  return result;
}

uint64_t sub_10018166C(char a1)
{
  switch(a1)
  {
    case 2:
      strcpy(v4, ".pending(");
      WORD1(v4[1]) = 0;
      HIDWORD(v4[1]) = -385875968;
      break;
    case 3:
      _StringGuts.grow(_:)(16);

      strcpy(v4, ".notModified(");
      HIWORD(v4[1]) = -4864;
      break;
    case 4:
      strcpy(v4, ".badRequest(");
      BYTE5(v4[1]) = 0;
      HIWORD(v4[1]) = -5120;
      break;
    case 5:
      _StringGuts.grow(_:)(17);

      strcpy(v4, ".unauthorized(");
      HIBYTE(v4[1]) = -18;
      break;
    case 6:
      strcpy(v4, ".forbidden(");
      HIDWORD(v4[1]) = -352321536;
      break;
    case 7:
      _StringGuts.grow(_:)(19);

      v4[0] = 0xD000000000000010;
      v4[1] = 0x80000001004E3BD0;
      break;
    case 8:
      _StringGuts.grow(_:)(23);

      v4[0] = 0xD000000000000014;
      v4[1] = 0x80000001004E3BB0;
      break;
    case 9:
      _StringGuts.grow(_:)(21);

      v4[0] = 0xD000000000000012;
      v4[1] = 0x80000001004E3B90;
      break;
    case 10:
      strcpy(v4, ".locked(");
      BYTE1(v4[1]) = 0;
      WORD1(v4[1]) = 0;
      HIDWORD(v4[1]) = -402653184;
      break;
    case 11:
      _StringGuts.grow(_:)(16);

      strcpy(v4, ".serverError(");
      HIWORD(v4[1]) = -4864;
      break;
    case 12:
      _StringGuts.grow(_:)(20);

      v4[0] = 0xD000000000000011;
      v4[1] = 0x80000001004E3B70;
      break;
    case 13:
      _StringGuts.grow(_:)(21);

      v4[0] = 0xD000000000000012;
      v4[1] = 0x80000001004E3B50;
      break;
    case 14:
      _StringGuts.grow(_:)(23);

      v4[0] = 0xD000000000000014;
      v4[1] = 0x80000001004E3B30;
      break;
    case 15:
      _StringGuts.grow(_:)(24);

      v4[0] = 0xD000000000000015;
      v4[1] = 0x80000001004E3B10;
      break;
    case 16:
      strcpy(v4, ".noMeDevice(");
      BYTE5(v4[1]) = 0;
      HIWORD(v4[1]) = -5120;
      break;
    case 17:
      _StringGuts.grow(_:)(28);

      v4[0] = 0xD000000000000019;
      v4[1] = 0x80000001004E3AF0;
      break;
    case 18:
      _StringGuts.grow(_:)(23);

      v4[0] = 0xD000000000000014;
      v4[1] = 0x80000001004E3AD0;
      break;
    case 19:
      _StringGuts.grow(_:)(30);

      v4[0] = 0xD00000000000001BLL;
      v4[1] = 0x80000001004E3AB0;
      break;
    case 20:
      _StringGuts.grow(_:)(18);

      v4[0] = 0x614D65636E65662ELL;
      v4[1] = 0xEF2874696D694C78;
      break;
    default:
      strcpy(v4, ".success(");
      WORD1(v4[1]) = 0;
      HIDWORD(v4[1]) = -385875968;
      break;
  }

  v1._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v1);

  v2._countAndFlagsBits = 41;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  return v4[0];
}

Swift::Int sub_100181BD8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_1004CBD60[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_100181C60()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_1004CBD60[v1]);
  return Hasher._finalize()();
}

uint64_t sub_100181CAC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100181DA8(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100181DA8(uint64_t result)
{
  if (result <= 303)
  {
    if (result)
    {
      if (result == 200)
      {
        return 1;
      }

      else if (result == 217)
      {
        return 2;
      }

      else
      {
        return 21;
      }
    }
  }

  else
  {
    switch(result)
    {
      case 400:
        result = 4;
        break;
      case 401:
        result = 5;
        break;
      case 402:
      case 404:
      case 405:
      case 406:
      case 407:
      case 408:
      case 410:
      case 413:
      case 414:
      case 415:
      case 416:
      case 417:
      case 418:
      case 419:
      case 420:
      case 421:
      case 422:
      case 424:
      case 425:
      case 426:
      case 427:
      case 428:
      case 429:
      case 430:
      case 431:
      case 432:
      case 433:
      case 434:
      case 435:
      case 436:
      case 437:
      case 438:
      case 439:
      case 440:
      case 441:
      case 442:
      case 443:
      case 444:
      case 445:
      case 446:
      case 447:
      case 448:
      case 449:
      case 450:
      case 451:
      case 452:
      case 453:
      case 454:
      case 455:
      case 456:
      case 457:
      case 458:
      case 459:
      case 460:
      case 461:
      case 462:
      case 463:
      case 464:
      case 465:
      case 466:
      case 467:
      case 468:
      case 469:
      case 470:
      case 471:
      case 472:
      case 473:
      case 474:
      case 475:
      case 476:
      case 477:
      case 478:
      case 479:
      case 480:
      case 481:
      case 482:
      case 483:
      case 484:
      case 485:
      case 486:
      case 487:
      case 488:
      case 489:
      case 490:
      case 491:
      case 492:
      case 493:
      case 494:
      case 495:
      case 496:
      case 497:
      case 498:
      case 499:
      case 501:
      case 502:
      case 503:
      case 504:
      case 505:
      case 506:
      case 507:
      case 508:
      case 509:
      case 510:
      case 511:
      case 512:
      case 513:
      case 514:
      case 515:
      case 516:
      case 517:
      case 518:
      case 519:
      case 520:
      case 521:
      case 522:
      case 523:
      case 524:
      case 525:
      case 526:
      case 527:
      case 528:
      case 529:
      case 530:
      case 531:
      case 532:
      case 533:
      case 534:
      case 535:
      case 536:
      case 537:
      case 538:
      case 539:
      case 540:
        return 21;
      case 403:
        result = 6;
        break;
      case 409:
        result = 7;
        break;
      case 411:
        result = 9;
        break;
      case 412:
        result = 8;
        break;
      case 423:
        result = 10;
        break;
      case 500:
        result = 11;
        break;
      case 541:
        result = 12;
        break;
      case 542:
        result = 13;
        break;
      case 543:
        result = 14;
        break;
      case 544:
        result = 15;
        break;
      case 545:
        result = 16;
        break;
      case 546:
        result = 17;
        break;
      case 547:
        result = 18;
        break;
      case 548:
        result = 19;
        break;
      case 549:
        result = 20;
        break;
      default:
        if (result != 304)
        {
          return 21;
        }

        result = 3;
        break;
    }
  }

  return result;
}

unint64_t sub_100181EB4()
{
  result = qword_1005ADB60;
  if (!qword_1005ADB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADB60);
  }

  return result;
}

unint64_t sub_100181F08()
{
  result = qword_1005ADB68;
  if (!qword_1005ADB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADB68);
  }

  return result;
}

__n128 sub_100181F5C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_100181F80(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100181FC8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10018203C(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v4 = 0x797469726F697270;
    v5 = 0xD00000000000001ALL;
    if (a1 != 8)
    {
      v5 = 0xD000000000000011;
    }

    if (a1 != 7)
    {
      v4 = v5;
    }

    v6 = 0xD000000000000010;
    if (a1 != 5)
    {
      v6 = 0xD000000000000019;
    }

    if (a1 <= 6u)
    {
      return v6;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    v1 = 0x4164657269736564;
    if (a1 != 3)
    {
      v1 = 0xD000000000000012;
    }

    if (a1 == 2)
    {
      v1 = 0xD000000000000011;
    }

    v2 = 0xD000000000000015;
    if (a1)
    {
      v2 = 0xD000000000000010;
    }

    if (a1 <= 1u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1001821A8(void *a1)
{
  v3 = v1;
  v5 = sub_10004B564(&qword_1005ADB88, &qword_1004CC040);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v23[-v8];
  v10 = a1[4];
  sub_100011AEC(a1, a1[3]);
  sub_100182F54();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v23[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v12 = v3[1];
  v23[14] = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v13 = v3[2];
  v23[13] = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  v14 = v3[3];
  v15 = v3[4];
  v23[12] = 3;
  KeyedEncodingContainer.encode(_:forKey:)();
  v16 = v3[5];
  v23[11] = 4;
  KeyedEncodingContainer.encode(_:forKey:)();
  v17 = *(v3 + 48);
  v23[10] = 5;
  KeyedEncodingContainer.encode(_:forKey:)();
  v18 = v3[7];
  v23[9] = 6;
  KeyedEncodingContainer.encode(_:forKey:)();
  v19 = v3[8];
  v23[8] = 7;
  KeyedEncodingContainer.encode(_:forKey:)();
  v20 = v3[9];
  v23[7] = 8;
  KeyedEncodingContainer.encode(_:forKey:)();
  v22 = v3[10];
  v23[6] = 9;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v6 + 8))(v9, v5);
}

void *sub_100182428@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

uint64_t sub_1001824E4(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 0;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t sub_100182514(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  if (v4 == v2 && v5 == v3)
  {
    return 1;
  }

  else
  {
    return (_stringCompareWithSmolCheck(_:_:expecting:)() ^ 1) & 1;
  }
}

uint64_t sub_10018255C(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return (_stringCompareWithSmolCheck(_:_:expecting:)() ^ 1) & 1;
  }
}

uint64_t sub_1001825B0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  if (v4 == v2 && v5 == v3)
  {
    return 0;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t sub_1001825D4()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

Swift::Int sub_100182604()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100182650()
{
  v1 = *v0;
  v2 = v0[1];
  return String.hash(into:)();
}

Swift::Int sub_100182658()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

unint64_t sub_1001826A0()
{
  result = qword_1005ADB70;
  if (!qword_1005ADB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADB70);
  }

  return result;
}

uint64_t sub_1001826FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100182810(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100182724(uint64_t a1)
{
  v2 = sub_100182F54();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100182760(uint64_t a1)
{
  v2 = sub_100182F54();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10018279C@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100182B4C(a1, v7);
  if (!v2)
  {
    v5 = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v8;
    result = *v7;
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_100182810(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000015 && 0x80000001004E3BF0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001004E3C10 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001004E3C30 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4164657269736564 && a2 == 0xEF79636172756363 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001004E3C50 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001004E3C70 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001004E3C90 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x797469726F697270 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001004E3CB0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001004E3CD0 == a2)
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

uint64_t sub_100182B4C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10004B564(&qword_1005ADB78, &qword_1004CC038);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v34 - v8;
  v10 = a1[4];
  sub_100011AEC(a1, a1[3]);
  sub_100182F54();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100004984(a1);
  }

  LOBYTE(v42[0]) = 0;
  KeyedDecodingContainer.decode(_:forKey:)();
  v12 = v11;
  LOBYTE(v42[0]) = 1;
  KeyedDecodingContainer.decode(_:forKey:)();
  v14 = v13;
  LOBYTE(v42[0]) = 2;
  KeyedDecodingContainer.decode(_:forKey:)();
  v16 = v15;
  LOBYTE(v42[0]) = 3;
  v17 = KeyedDecodingContainer.decode(_:forKey:)();
  v19 = v18;
  v20 = v17;
  LOBYTE(v42[0]) = 4;
  KeyedDecodingContainer.decode(_:forKey:)();
  v22 = v21;
  LOBYTE(v42[0]) = 5;
  v35 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v42[0]) = 6;
  KeyedDecodingContainer.decode(_:forKey:)();
  v24 = v23;
  LOBYTE(v42[0]) = 7;
  v34 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v42[0]) = 8;
  KeyedDecodingContainer.decode(_:forKey:)();
  v26 = v25;
  v48 = 9;
  KeyedDecodingContainer.decode(_:forKey:)();
  v28 = v27;
  v29 = v35 & 1;
  (*(v6 + 8))(v9, v5);
  *&v36 = v12;
  *(&v36 + 1) = v14;
  *&v37 = v16;
  *(&v37 + 1) = v20;
  *&v38 = v19;
  *(&v38 + 1) = v22;
  LOBYTE(v39) = v29;
  *(&v39 + 1) = v24;
  v30 = v34;
  *&v40 = v34;
  *(&v40 + 1) = v26;
  v41 = v28;
  sub_100182FA8(&v36, v42);
  sub_100004984(a1);
  v42[0] = v12;
  v42[1] = v14;
  v42[2] = v16;
  v42[3] = v20;
  v42[4] = v19;
  v42[5] = v22;
  v43 = v29;
  v44 = v24;
  v45 = v30;
  v46 = v26;
  v47 = v28;
  result = sub_1000C76B4(v42);
  v32 = v39;
  *(a2 + 32) = v38;
  *(a2 + 48) = v32;
  *(a2 + 64) = v40;
  *(a2 + 80) = v41;
  v33 = v37;
  *a2 = v36;
  *(a2 + 16) = v33;
  return result;
}

unint64_t sub_100182F54()
{
  result = qword_1005ADB80;
  if (!qword_1005ADB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADB80);
  }

  return result;
}

unint64_t sub_100182FE0()
{
  result = qword_1005ADB90;
  if (!qword_1005ADB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADB90);
  }

  return result;
}

unint64_t sub_100183048()
{
  result = qword_1005ADB98;
  if (!qword_1005ADB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADB98);
  }

  return result;
}

unint64_t sub_1001830A0()
{
  result = qword_1005ADBA0;
  if (!qword_1005ADBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADBA0);
  }

  return result;
}

unint64_t sub_1001830F8()
{
  result = qword_1005ADBA8;
  if (!qword_1005ADBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADBA8);
  }

  return result;
}

void sub_100183178()
{
  sub_100183260();
  if (v0 <= 0x3F)
  {
    type metadata accessor for URL();
    if (v1 <= 0x3F)
    {
      sub_1001832B8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100183260()
{
  if (!qword_1005ADC18)
  {
    v0 = type metadata accessor for Set();
    if (!v1)
    {
      atomic_store(v0, &qword_1005ADC18);
    }
  }
}

void sub_1001832B8()
{
  if (!qword_1005ADC20)
  {
    sub_10018331C();
    v0 = type metadata accessor for Dictionary();
    if (!v1)
    {
      atomic_store(v0, &qword_1005ADC20);
    }
  }
}

unint64_t sub_10018331C()
{
  result = qword_1005ADC28;
  if (!qword_1005ADC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ADC28);
  }

  return result;
}

uint64_t sub_1001837C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10004B564(&qword_1005A9178, &qword_1004CCD60);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v23[-v6];
  v8 = type metadata accessor for URLComponents();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v23[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = a1 + *(type metadata accessor for Credentials(0) + 32);
  v14 = v13 + *(type metadata accessor for Credentials.SecureLocationsProperties(0) + 20);
  URLComponents.init(url:resolvingAgainstBaseURL:)();
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_100002CE0(v7, &qword_1005A9178, &qword_1004CCD60);
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_10000A6F0(v15, qword_1005DFB98);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "No url found in account bag", v18, 2u);
    }

    URLComponents.init()();
    URLComponents.scheme.setter();
    URLComponents.path.setter();
    return URLComponents.host.setter();
  }

  else
  {
    v20 = *(v9 + 32);
    v20(v12, v7, v8);
    v21 = URLComponents.path.modify();
    v22._countAndFlagsBits = 0x6769666E6F63;
    v22._object = 0xE600000000000000;
    String.append(_:)(v22);
    v21(v23, 0);
    return v20(a2, v12, v8);
  }
}

uint64_t sub_100183ABC(uint64_t a1)
{
  v2 = sub_100186F40();

  return RequestContentRepresentable.description.getter(a1, v2);
}

uint64_t sub_100183AF8()
{
  v0 = type metadata accessor for UUID();
  sub_10004F154(v0, qword_1005DFC58);
  sub_10000A6F0(v0, qword_1005DFC58);
  v1 = String.utf8Data.getter();
  v3 = v2;
  sub_1000CA210();
  DataProtocol.stableUUID.getter();
  return sub_1000049D0(v1, v3);
}

unint64_t sub_100183BA0(char a1)
{
  result = 0x6556747065636361;
  switch(a1)
  {
    case 1:
      result = 0x4565727574616566;
      break;
    case 2:
      result = 0xD00000000000001ELL;
      break;
    case 3:
      result = 0xD00000000000001ELL;
      break;
    case 4:
      result = 0xD00000000000001CLL;
      break;
    case 5:
      result = 0xD000000000000016;
      break;
    case 6:
    case 15:
      result = 0xD000000000000019;
      break;
    case 7:
      result = 0xD00000000000001ELL;
      break;
    case 8:
    case 10:
      result = 0xD00000000000001DLL;
      break;
    case 9:
      result = 0xD000000000000017;
      break;
    case 11:
      result = 0xD000000000000020;
      break;
    case 12:
      result = 0xD000000000000025;
      break;
    case 13:
      result = 0xD00000000000001FLL;
      break;
    case 14:
      result = 0xD00000000000002ELL;
      break;
    case 16:
      result = 0x506873696C627570;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100183DAC(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_100183BA0(*a1);
  v5 = v4;
  if (v3 == sub_100183BA0(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_100183E34()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_100183BA0(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100183E98()
{
  sub_100183BA0(*v0);
  String.hash(into:)();
}

Swift::Int sub_100183EEC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_100183BA0(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100183F4C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_100186C88();
  *a2 = result;
  return result;
}

unint64_t sub_100183F7C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_100183BA0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_100183FC4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100186C88();
  *a1 = result;
  return result;
}

uint64_t sub_100183FEC(uint64_t a1)
{
  v2 = sub_10018665C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100184028(uint64_t a1)
{
  v2 = sub_10018665C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10018407C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a2;
  v70 = type metadata accessor for URL();
  v68 = *(v70 - 8);
  v3 = *(v68 + 64);
  __chkstk_darwin(v70);
  v67 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10004B564(&qword_1005A9DB8, &unk_1004CC1D0);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v9 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v63 - v10;
  v12 = sub_10004B564(&qword_1005ADCA0, &unk_1004CC1E0);
  v71 = *(v12 - 8);
  v13 = *(v71 + 64);
  __chkstk_darwin(v12);
  v15 = &v63 - v14;
  v16 = type metadata accessor for SecureLocationsConfig();
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  v19 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1[3];
  v20 = a1[4];
  v73 = a1;
  sub_100011AEC(a1, v21);
  sub_10018665C();
  v22 = v72;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v22)
  {
    return sub_100004984(v73);
  }

  v64 = v9;
  v65 = v16;
  v66 = v11;
  v72 = v19;
  v23 = v71;
  LOBYTE(v75) = 0;
  v24 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  if (v25)
  {
    v26 = 0;
  }

  else
  {
    v26 = v24;
  }

  v27 = v72;
  *v72 = v26;
  LOBYTE(v75) = 1;
  v28 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(v27 + 8) = (v28 == 2) | v28 & 1;
  LOBYTE(v75) = 2;
  v29 = COERCE_DOUBLE(KeyedDecodingContainer.decodeIfPresent(_:forKey:)());
  if (v30)
  {
    v29 = 100.0;
  }

  v27[2] = v29;
  LOBYTE(v75) = 3;
  v31 = COERCE_DOUBLE(KeyedDecodingContainer.decodeIfPresent(_:forKey:)());
  if (v32)
  {
    v31 = 604800.0;
  }

  v27[3] = v31;
  LOBYTE(v75) = 4;
  v33 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  if (v34)
  {
    v35 = 5;
  }

  else
  {
    v35 = v33;
  }

  *(v27 + 4) = v35;
  LOBYTE(v75) = 5;
  v36 = COERCE_DOUBLE(KeyedDecodingContainer.decodeIfPresent(_:forKey:)());
  if (v37)
  {
    v36 = 3600.0;
  }

  v27[5] = v36;
  LOBYTE(v75) = 6;
  v38 = COERCE_DOUBLE(KeyedDecodingContainer.decodeIfPresent(_:forKey:)());
  if (v39)
  {
    v38 = 120.0;
  }

  v27[6] = v38;
  LOBYTE(v75) = 7;
  *(v27 + 56) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)() & 1;
  LOBYTE(v75) = 9;
  v41 = COERCE_DOUBLE(KeyedDecodingContainer.decodeIfPresent(_:forKey:)());
  if (v42)
  {
    v41 = 120.0;
  }

  v27[9] = v41;
  sub_10004B564(&qword_1005ADCB0, &qword_1004CF4F0);
  v74 = 8;
  sub_1001867C8(&qword_1005ADCB8);
  v43 = v15;
  v44 = v12;
  v45 = v43;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v46 = v75;
  if (!v75)
  {
    if (qword_1005A7FA0 != -1)
    {
      swift_once();
    }
  }

  *(v72 + 8) = v46;
  LOBYTE(v75) = 10;
  v47 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v72[80] = (v47 == 2) | v47 & 1;
  LOBYTE(v75) = 11;
  v48 = COERCE_DOUBLE(KeyedDecodingContainer.decodeIfPresent(_:forKey:)());
  if (v49)
  {
    v48 = 1800.0;
  }

  *(v72 + 11) = v48;
  LOBYTE(v75) = 12;
  v50 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v52 = 5;
  if ((v51 & 1) == 0)
  {
    v52 = v50;
  }

  *(v72 + 12) = v52;
  LOBYTE(v75) = 13;
  v53 = COERCE_DOUBLE(KeyedDecodingContainer.decodeIfPresent(_:forKey:)());
  if (v54)
  {
    v53 = 900.0;
  }

  *(v72 + 13) = v53;
  LOBYTE(v75) = 14;
  v55 = COERCE_DOUBLE(KeyedDecodingContainer.decodeIfPresent(_:forKey:)());
  if (v56)
  {
    v55 = 1000.0;
  }

  *(v72 + 14) = v55;
  LOBYTE(v75) = 15;
  sub_10018696C(&qword_1005ADCC0);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v57 = v64;
  sub_1001866B0(v66, v64);
  v58 = *(v68 + 48);
  if (v58(v57, 1, v70) == 1)
  {
    if (qword_1005A7FA8 != -1)
    {
      swift_once();
    }

    v59 = v70;
    v60 = sub_10000A6F0(v70, qword_1005DFC78);
    (*(v68 + 16))(v67, v60, v59);
    if (v58(v64, 1, v59) != 1)
    {
      sub_100002CE0(v64, &qword_1005A9DB8, &unk_1004CC1D0);
    }
  }

  else
  {
    (*(v68 + 32))(v67, v64, v70);
  }

  (*(v68 + 32))(&v72[*(v65 + 76)], v67, v70);
  sub_10004B564(&qword_1005ADCC8, &qword_1004CC1F0);
  v74 = 16;
  sub_100186834(&qword_1005ADCD0, sub_100186720, sub_100186774);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v61 = v75;
  if (!v75)
  {
    if (qword_1005A7FB0 != -1)
    {
      swift_once();
    }

    v61 = qword_1005DFC90;
  }

  sub_100002CE0(v66, &qword_1005A9DB8, &unk_1004CC1D0);
  (*(v23 + 8))(v45, v44);
  v62 = v72;
  *&v72[*(v65 + 80)] = v61;
  sub_10012BB3C(v62, v69);
  sub_100004984(v73);
  return sub_10012BBA0(v62);
}

uint64_t sub_100184A68(void *a1)
{
  v3 = v1;
  v5 = sub_10004B564(&qword_1005ADCE8, &qword_1004CC1F8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v28 - v8;
  v10 = a1[4];
  sub_100011AEC(a1, a1[3]);
  sub_10018665C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  LOBYTE(v29) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v12 = *(v3 + 8);
    LOBYTE(v29) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v13 = v3[2];
    LOBYTE(v29) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v14 = v3[3];
    LOBYTE(v29) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = v3[4];
    LOBYTE(v29) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v16 = v3[5];
    LOBYTE(v29) = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    v17 = v3[6];
    LOBYTE(v29) = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
    v18 = *(v3 + 56);
    LOBYTE(v29) = 7;
    KeyedEncodingContainer.encode(_:forKey:)();
    v19 = v3[9];
    LOBYTE(v29) = 9;
    KeyedEncodingContainer.encode(_:forKey:)();
    v29 = v3[8];
    HIBYTE(v28) = 8;
    sub_10004B564(&qword_1005ADCB0, &qword_1004CF4F0);
    sub_1001867C8(&qword_1005ADCF0);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v20 = *(v3 + 80);
    LOBYTE(v29) = 10;
    KeyedEncodingContainer.encode(_:forKey:)();
    v21 = v3[11];
    LOBYTE(v29) = 11;
    KeyedEncodingContainer.encode(_:forKey:)();
    v22 = v3[12];
    LOBYTE(v29) = 12;
    KeyedEncodingContainer.encode(_:forKey:)();
    v23 = v3[13];
    LOBYTE(v29) = 13;
    KeyedEncodingContainer.encode(_:forKey:)();
    v24 = v3[14];
    LOBYTE(v29) = 14;
    KeyedEncodingContainer.encode(_:forKey:)();
    v25 = type metadata accessor for SecureLocationsConfig();
    v26 = *(v25 + 76);
    LOBYTE(v29) = 15;
    type metadata accessor for URL();
    sub_10018696C(&qword_1005ADCF8);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v29 = *(v3 + *(v25 + 80));
    HIBYTE(v28) = 16;
    sub_10004B564(&qword_1005ADCC8, &qword_1004CC1F0);
    sub_100186834(&qword_1005ADD00, sub_1001868C4, sub_100186918);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100184F10(void *a1, uint64_t a2)
{
  v4 = sub_10004B564(&qword_1005ADD90, &qword_1004CC628);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v11 - v7;
  v9 = a1[4];
  sub_100011AEC(a1, a1[3]);
  sub_100186E98();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11[1] = a2;
  sub_10004B564(&qword_1005ADD58, &qword_1004CC610);
  sub_100187634(&qword_1005ADD98, sub_1001876B8);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1001850A4(void *a1)
{
  v3 = v1;
  v5 = sub_10004B564(&qword_1005ADD88, &qword_1004CC620);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v31[-v8];
  v10 = a1[4];
  sub_100011AEC(a1, a1[3]);
  sub_1001875E0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  v31[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v14 = v3[3];
  v31[14] = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v15 = v3[4];
  v16 = v3[5];
  v31[13] = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  v17 = v3[6];
  v18 = v3[7];
  v31[12] = 3;
  KeyedEncodingContainer.encode(_:forKey:)();
  v19 = v3[8];
  v20 = v3[9];
  v31[11] = 4;
  KeyedEncodingContainer.encode(_:forKey:)();
  v21 = *(v3 + 80);
  v31[10] = 5;
  KeyedEncodingContainer.encode(_:forKey:)();
  v22 = v3[11];
  v23 = v3[12];
  v31[9] = 6;
  KeyedEncodingContainer.encode(_:forKey:)();
  v24 = v3[13];
  v25 = v3[14];
  v31[8] = 7;
  KeyedEncodingContainer.encode(_:forKey:)();
  v26 = v3[15];
  v27 = v3[16];
  v31[7] = 8;
  KeyedEncodingContainer.encode(_:forKey:)();
  v29 = v3[17];
  v30 = v3[18];
  v31[6] = 9;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100185338()
{
  v0 = sub_10004B564(&qword_1005A9DB8, &unk_1004CC1D0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for URL();
  sub_10004F154(v4, qword_1005DFC78);
  v5 = sub_10000A6F0(v4, qword_1005DFC78);
  URL.init(string:)();
  v6 = *(v4 - 8);
  result = (*(v6 + 48))(v3, 1, v4);
  if (result != 1)
  {
    return (*(v6 + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

uint64_t sub_100185468()
{
  v0 = sub_100208B28(&off_10058A570);
  sub_10004B564(&qword_1005ADC98, &qword_1004CC1C8);
  result = swift_arrayDestroy();
  qword_1005DFC90 = v0;
  return result;
}

uint64_t sub_1001854E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x506873696C627570 && a2 == 0xEF73656963696C6FLL)
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

uint64_t sub_100185578(uint64_t a1)
{
  v2 = sub_100186E98();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001855B4(uint64_t a1)
{
  v2 = sub_100186E98();

  return CodingKey.debugDescription.getter(a1, v2);
}