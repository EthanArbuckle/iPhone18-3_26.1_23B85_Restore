unint64_t sub_1000F5DE0()
{
  result = qword_10083A090;
  if (!qword_10083A090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A090);
  }

  return result;
}

unint64_t sub_1000F5E34()
{
  result = qword_10083A0B8;
  if (!qword_10083A0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A0B8);
  }

  return result;
}

unint64_t sub_1000F5E88()
{
  result = qword_10083A0C8;
  if (!qword_10083A0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A0C8);
  }

  return result;
}

unint64_t sub_1000F5EDC()
{
  result = qword_10083A0E8;
  if (!qword_10083A0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A0E8);
  }

  return result;
}

unint64_t sub_1000F5F30()
{
  result = qword_10083A108;
  if (!qword_10083A108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A108);
  }

  return result;
}

unint64_t sub_1000F5F84()
{
  result = qword_10083A118;
  if (!qword_10083A118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A118);
  }

  return result;
}

unint64_t sub_1000F5FD8()
{
  result = qword_10083A128;
  if (!qword_10083A128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A128);
  }

  return result;
}

unint64_t sub_1000F6094()
{
  result = qword_10083A138;
  if (!qword_10083A138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A138);
  }

  return result;
}

unint64_t sub_1000F60E8()
{
  result = qword_10083A148;
  if (!qword_10083A148)
  {
    sub_10000B870(&qword_10083A140, &qword_1006D6D58);
    sub_1000F616C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A148);
  }

  return result;
}

unint64_t sub_1000F616C()
{
  result = qword_10083A150;
  if (!qword_10083A150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A150);
  }

  return result;
}

unint64_t sub_1000F61C0()
{
  result = qword_10083A160;
  if (!qword_10083A160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A160);
  }

  return result;
}

unint64_t sub_1000F6214()
{
  result = qword_10083A198;
  if (!qword_10083A198)
  {
    sub_10000B870(&qword_10083A140, &qword_1006D6D58);
    sub_1000F6298();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A198);
  }

  return result;
}

unint64_t sub_1000F6298()
{
  result = qword_10083A1A0;
  if (!qword_10083A1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A1A0);
  }

  return result;
}

__n128 sub_1000F639C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1000F63B0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 36))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000F63F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 36) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 36) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000F6450()
{
  result = qword_10083A1B0;
  if (!qword_10083A1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A1B0);
  }

  return result;
}

unint64_t sub_1000F64A8()
{
  result = qword_10083A1B8;
  if (!qword_10083A1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A1B8);
  }

  return result;
}

unint64_t sub_1000F6500()
{
  result = qword_10083A1C0;
  if (!qword_10083A1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A1C0);
  }

  return result;
}

unint64_t sub_1000F6558()
{
  result = qword_10083A1C8;
  if (!qword_10083A1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A1C8);
  }

  return result;
}

unint64_t sub_1000F65B0()
{
  result = qword_10083A1D0;
  if (!qword_10083A1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A1D0);
  }

  return result;
}

unint64_t sub_1000F6608()
{
  result = qword_10083A1D8;
  if (!qword_10083A1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A1D8);
  }

  return result;
}

unint64_t sub_1000F6660()
{
  result = qword_10083A1E0;
  if (!qword_10083A1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A1E0);
  }

  return result;
}

unint64_t sub_1000F66B8()
{
  result = qword_10083A1E8;
  if (!qword_10083A1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A1E8);
  }

  return result;
}

unint64_t sub_1000F6710()
{
  result = qword_10083A1F0;
  if (!qword_10083A1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A1F0);
  }

  return result;
}

unint64_t sub_1000F6768()
{
  result = qword_10083A1F8;
  if (!qword_10083A1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A1F8);
  }

  return result;
}

unint64_t sub_1000F67C0()
{
  result = qword_10083A200;
  if (!qword_10083A200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A200);
  }

  return result;
}

unint64_t sub_1000F6818()
{
  result = qword_10083A208;
  if (!qword_10083A208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A208);
  }

  return result;
}

unint64_t sub_1000F6870()
{
  result = qword_10083A210;
  if (!qword_10083A210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A210);
  }

  return result;
}

unint64_t sub_1000F68C8()
{
  result = qword_10083A218;
  if (!qword_10083A218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A218);
  }

  return result;
}

unint64_t sub_1000F6920()
{
  result = qword_10083A220;
  if (!qword_10083A220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A220);
  }

  return result;
}

unint64_t sub_1000F6978()
{
  result = qword_10083A228;
  if (!qword_10083A228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A228);
  }

  return result;
}

unint64_t sub_1000F69D0()
{
  result = qword_10083A230;
  if (!qword_10083A230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A230);
  }

  return result;
}

unint64_t sub_1000F6A28()
{
  result = qword_10083A238;
  if (!qword_10083A238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A238);
  }

  return result;
}

unint64_t sub_1000F6A80()
{
  result = qword_10083A240;
  if (!qword_10083A240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A240);
  }

  return result;
}

unint64_t sub_1000F6AD8()
{
  result = qword_10083A248;
  if (!qword_10083A248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A248);
  }

  return result;
}

unint64_t sub_1000F6B30()
{
  result = qword_10083A250;
  if (!qword_10083A250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A250);
  }

  return result;
}

unint64_t sub_1000F6B88()
{
  result = qword_10083A258;
  if (!qword_10083A258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A258);
  }

  return result;
}

unint64_t sub_1000F6BE0()
{
  result = qword_10083A260;
  if (!qword_10083A260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A260);
  }

  return result;
}

unint64_t sub_1000F6C38()
{
  result = qword_10083A268;
  if (!qword_10083A268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A268);
  }

  return result;
}

unint64_t sub_1000F6C90()
{
  result = qword_10083A270;
  if (!qword_10083A270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A270);
  }

  return result;
}

unint64_t sub_1000F6CE8()
{
  result = qword_10083A278;
  if (!qword_10083A278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A278);
  }

  return result;
}

unint64_t sub_1000F6D40()
{
  result = qword_10083A280;
  if (!qword_10083A280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A280);
  }

  return result;
}

unint64_t sub_1000F6D98()
{
  result = qword_10083A288;
  if (!qword_10083A288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A288);
  }

  return result;
}

unint64_t sub_1000F6DF0()
{
  result = qword_10083A290;
  if (!qword_10083A290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A290);
  }

  return result;
}

unint64_t sub_1000F6E48()
{
  result = qword_10083A298;
  if (!qword_10083A298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A298);
  }

  return result;
}

unint64_t sub_1000F6EA0()
{
  result = qword_10083A2A0;
  if (!qword_10083A2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A2A0);
  }

  return result;
}

unint64_t sub_1000F6EF8()
{
  result = qword_10083A2A8;
  if (!qword_10083A2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A2A8);
  }

  return result;
}

unint64_t sub_1000F6F50()
{
  result = qword_10083A2B0;
  if (!qword_10083A2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A2B0);
  }

  return result;
}

unint64_t sub_1000F6FA4()
{
  result = qword_10083A2C0;
  if (!qword_10083A2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A2C0);
  }

  return result;
}

unint64_t sub_1000F700C()
{
  result = qword_10083A2D0;
  if (!qword_10083A2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A2D0);
  }

  return result;
}

unint64_t sub_1000F7064()
{
  result = qword_10083A2D8;
  if (!qword_10083A2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A2D8);
  }

  return result;
}

unint64_t sub_1000F70BC()
{
  result = qword_10083A2E0;
  if (!qword_10083A2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A2E0);
  }

  return result;
}

uint64_t sub_1000F7180(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000F71C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000F722C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000F7274(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000F72E0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v21 = a5;
  v9 = sub_100007224(&qword_10083A378, &qword_1006D7D68);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v17 - v12;
  v14 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000F9888();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v18 = a2;
  v19 = a3;
  v20 = a4;
  v22 = 0;
  sub_1000F9984();
  v15 = v17;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v15)
  {
    LOBYTE(v18) = v21 & 1;
    v22 = 1;
    sub_1000F99D8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_1000F748C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[0] = a3;
  v7 = sub_100007224(&qword_10083A418, &qword_1006D8268);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v14 - v10;
  v12 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000FA148();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = 0;
  sub_1000FA2CC();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v4)
  {
    v16 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v14[1] = a4;
    v15 = 2;
    sub_100007224(&qword_100837150, &qword_1006C96A0);
    sub_1000FA1F0(&qword_1008371A8, &qword_100834E58);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1000F76D8()
{
  if (*v0)
  {
    return 0x737574617473;
  }

  else
  {
    return 0x64726F636572;
  }
}

uint64_t sub_1000F7704@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x64726F636572 && a2 == 0xE600000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x737574617473 && a2 == 0xE600000000000000)
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

uint64_t sub_1000F77D8(uint64_t a1)
{
  v2 = sub_1000F9888();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000F7814(uint64_t a1)
{
  v2 = sub_1000F9888();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000F7850@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1000F89AC(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7 & 1;
  }

  return result;
}

uint64_t sub_1000F78AC()
{
  v1 = 0x644964726F636572;
  if (*v0 != 1)
  {
    v1 = 0x6574707972636E65;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_1000F790C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000F8BB0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000F7934(uint64_t a1)
{
  v2 = sub_1000FA148();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000F7970(uint64_t a1)
{
  v2 = sub_1000FA148();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000F79AC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1000F8CD0(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_1000F79FC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x54554F5F54504FLL;
  }

  else
  {
    v4 = 0x4E495F54504FLL;
  }

  if (v3)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  if (*a2)
  {
    v6 = 0x54554F5F54504FLL;
  }

  else
  {
    v6 = 0x4E495F54504FLL;
  }

  if (*a2)
  {
    v7 = 0xE700000000000000;
  }

  else
  {
    v7 = 0xE600000000000000;
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

Swift::Int sub_1000F7AA0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000F7B20()
{
  *v0;
  String.hash(into:)();
}

Swift::Int sub_1000F7B8C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000F7C08@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_1007FA8A0, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_1000F7C68(uint64_t *a1@<X8>)
{
  v2 = 0x4E495F54504FLL;
  if (*v1)
  {
    v2 = 0x54554F5F54504FLL;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

Swift::Int sub_1000F7D54()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1000F7DC8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000F7E1C@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_1007FA8F0, *a1);

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_1000F7F40(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_10083A340, &qword_1006D7D58);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000F96AC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = v3[1];
  v16 = *v3;
  v17 = v11;
  v19 = 0;
  sub_1000AB410();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v12 = v3[3];
    v16 = v3[2];
    v17 = v12;
    v18 = v3[4];
    v19 = 1;
    sub_1000ABBAC();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v13 = *(v3 + 10);
    v14 = *(v3 + 11);
    LOBYTE(v16) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    *&v16 = *(v3 + 12);
    v19 = 3;
    sub_100007224(&qword_10083A328, &qword_1006D7D50);
    sub_1000F97BC(&qword_10083A348, sub_1000F9834);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1000F8188()
{
  v1 = 0x4874736575716572;
  v2 = 0x72656469766F7270;
  if (*v0 != 2)
  {
    v2 = 0x73746E65736E6F63;
  }

  if (*v0)
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

uint64_t sub_1000F8218@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000F8F44(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000F8240(uint64_t a1)
{
  v2 = sub_1000F96AC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000F827C(uint64_t a1)
{
  v2 = sub_1000F96AC();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 sub_1000F82B8@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000F90C0(a1, v7);
  if (!v2)
  {
    v5 = v7[5];
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v5;
    *(a2 + 96) = v8;
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
    result = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = result;
  }

  return result;
}

uint64_t sub_1000F8330(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_10083A3A0, &qword_1006D7D78);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v20 - v8;
  v10 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000F9CCC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v21) = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    v14 = *(v3 + 4);
    v15 = *(v3 + 2);
    v28 = *(v3 + 3);
    v29 = v14;
    v16 = *(v3 + 4);
    v17 = *(v3 + 6);
    v30 = *(v3 + 5);
    v31 = v17;
    v18 = *(v3 + 2);
    v27[0] = *(v3 + 1);
    v27[1] = v18;
    v23 = v28;
    v24 = v16;
    v19 = *(v3 + 6);
    v25 = v30;
    v26 = v19;
    v21 = v27[0];
    v22 = v15;
    v32 = 1;
    sub_1000B1478(v27, v20);
    sub_1000B14B0();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v20[2] = v23;
    v20[3] = v24;
    v20[4] = v25;
    v20[5] = v26;
    v20[0] = v21;
    v20[1] = v22;
    sub_1000ACC70(v20);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1000F8530()
{
  if (*v0)
  {
    result = 0x65736E6F70736572;
  }

  else
  {
    result = 0x45656D69746E7572;
  }

  *v0;
  return result;
}

uint64_t sub_1000F8580@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x45656D69746E7572 && a2 == 0xEC000000726F7272;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65736E6F70736572 && a2 == 0xEE00726564616548)
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

uint64_t sub_1000F8668(uint64_t a1)
{
  v2 = sub_1000F9CCC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000F86A4(uint64_t a1)
{
  v2 = sub_1000F9CCC();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 sub_1000F86E0@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000F9A2C(a1, v7);
  if (!v2)
  {
    v5 = v7[5];
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v5;
    *(a2 + 96) = v7[6];
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
    result = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = result;
  }

  return result;
}

unint64_t sub_1000F8778()
{
  result = qword_10083A2F0;
  if (!qword_10083A2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A2F0);
  }

  return result;
}

unint64_t sub_1000F87CC()
{
  result = qword_10083A2F8;
  if (!qword_10083A2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A2F8);
  }

  return result;
}

uint64_t sub_1000F884C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1000F8888()
{
  result = qword_10083A300;
  if (!qword_10083A300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A300);
  }

  return result;
}

unint64_t sub_1000F88DC()
{
  result = qword_10083A308;
  if (!qword_10083A308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A308);
  }

  return result;
}

unint64_t sub_1000F8930(uint64_t a1)
{
  result = sub_1000F8958();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000F8958()
{
  result = qword_10083A310;
  if (!qword_10083A310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A310);
  }

  return result;
}

uint64_t sub_1000F89AC(uint64_t *a1)
{
  v2 = sub_100007224(&qword_10083A358, &qword_1006D7D60);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v10 - v5;
  v7 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000F9888();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v11 = 0;
  sub_1000F98DC();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v9 = v10[1];
  v11 = 1;
  sub_1000F9930();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v3 + 8))(v6, v2);
  sub_10000BB78(a1);
  return v9;
}

uint64_t sub_1000F8BB0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x644964726F636572 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6574707972636E65 && a2 == 0xED00006174614464)
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

uint64_t sub_1000F8CD0(uint64_t *a1)
{
  v3 = sub_100007224(&qword_10083A3F8, &qword_1006D8260);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10[-v6];
  v8 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000FA148();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v10[31] = 0;
    sub_1000FA19C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v10[30] = 1;
    v8 = KeyedDecodingContainer.decode(_:forKey:)();
    sub_100007224(&qword_100837150, &qword_1006C96A0);
    v10[15] = 2;
    sub_1000FA1F0(&qword_100837158, &qword_100834E68);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v7, v3);
  }

  sub_10000BB78(a1);
  return v8;
}

uint64_t sub_1000F8F44(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4874736575716572 && a2 == 0xED00007265646165;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001006FDB30 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x72656469766F7270 && a2 == 0xEA00000000006449 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x73746E65736E6F63 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1000F90C0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = sub_100007224(&qword_10083A318, &qword_1006D7D48);
  v5 = *(v45 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v45);
  v8 = &v36 - v7;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  UUID.uuidString.getter();
  v15 = v14;
  (*(v10 + 8))(v13, v9);
  v16 = a1[3];
  v17 = a1[4];
  v46 = a1;
  sub_10000BA08(a1, v16);
  sub_1000F96AC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    v47 = v15;
    sub_10000BB78(v46);

    return sub_1000AB97C(0, 0);
  }

  else
  {
    v44 = v5;
    LOBYTE(v48) = 0;
    sub_1000AB1A8();
    KeyedDecodingContainer.decode<A>(_:forKey:)();

    v19 = v55;
    v42 = v56;
    v20 = v57;
    v47 = v58;
    LOBYTE(v48) = 1;
    sub_1000AB9CC();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v39 = v20;
    v40 = v19;
    v38 = a2;
    v21 = v56;
    v41 = v55;
    v22 = v57;
    v23 = v58;
    v25 = v59;
    v24 = v60;
    LOBYTE(v55) = 2;
    v26 = KeyedDecodingContainer.decode(_:forKey:)();
    v43 = v27;
    sub_100007224(&qword_10083A328, &qword_1006D7D50);
    v68 = 3;
    sub_1000F97BC(&qword_10083A330, sub_1000F9700);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v44 + 8))(v8, v45);
    v45 = v69;
    *&v48 = v40;
    v28 = v42;
    *(&v48 + 1) = v42;
    *&v49 = v39;
    v29 = v26;
    v37 = v26;
    v30 = v47;
    *(&v49 + 1) = v47;
    v31 = v41;
    *&v50 = v41;
    *(&v50 + 1) = v21;
    *&v51 = v22;
    *(&v51 + 1) = v23;
    *&v52 = v25;
    *(&v52 + 1) = v24;
    *&v53 = v29;
    *(&v53 + 1) = v43;
    v54 = v69;
    sub_1000F9754(&v48, &v55);
    sub_10000BB78(v46);
    v55 = v40;
    v56 = v28;
    v57 = v39;
    v58 = v30;
    v59 = v31;
    v60 = v21;
    v61 = v22;
    v62 = v23;
    v63 = v25;
    v64 = v24;
    v65 = v37;
    v66 = v43;
    v67 = v45;
    result = sub_1000F978C(&v55);
    v32 = v53;
    v33 = v38;
    *(v38 + 64) = v52;
    *(v33 + 80) = v32;
    *(v33 + 96) = v54;
    v34 = v49;
    *v33 = v48;
    *(v33 + 16) = v34;
    v35 = v51;
    *(v33 + 32) = v50;
    *(v33 + 48) = v35;
  }

  return result;
}

unint64_t sub_1000F96AC()
{
  result = qword_10083A320;
  if (!qword_10083A320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A320);
  }

  return result;
}

unint64_t sub_1000F9700()
{
  result = qword_10083A338;
  if (!qword_10083A338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A338);
  }

  return result;
}

uint64_t sub_1000F97BC(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10000B870(&qword_10083A328, &qword_1006D7D50);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000F9834()
{
  result = qword_10083A350;
  if (!qword_10083A350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A350);
  }

  return result;
}

unint64_t sub_1000F9888()
{
  result = qword_10083A360;
  if (!qword_10083A360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A360);
  }

  return result;
}

unint64_t sub_1000F98DC()
{
  result = qword_10083A368;
  if (!qword_10083A368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A368);
  }

  return result;
}

unint64_t sub_1000F9930()
{
  result = qword_10083A370;
  if (!qword_10083A370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A370);
  }

  return result;
}

unint64_t sub_1000F9984()
{
  result = qword_10083A380;
  if (!qword_10083A380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A380);
  }

  return result;
}

unint64_t sub_1000F99D8()
{
  result = qword_10083A388;
  if (!qword_10083A388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A388);
  }

  return result;
}

uint64_t sub_1000F9A2C@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v48 = a2;
  v4 = sub_100007224(&qword_10083A390, &qword_1006D7D70);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v20 - v7;
  v9 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000F9CCC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_10000BB78(a1);
  }

  else
  {
    v10 = v5;
    v11 = v48;
    LOBYTE(v28[0]) = 0;
    v12 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v14 = v13;
    v20 = v12;
    v35 = 1;
    sub_1000ACC1C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v10 + 8))(v8, v4);
    v44 = v38;
    v45 = v39;
    v46 = v40;
    v47 = v41;
    v42 = v36;
    v43 = v37;
    v15 = v20;
    *&v21 = v20;
    *(&v21 + 1) = v14;
    v23 = v37;
    v22 = v36;
    v25 = v39;
    v24 = v38;
    v26 = v40;
    v27 = v41;
    sub_1000F9D20(&v21, v28);
    sub_10000BB78(a1);
    v28[0] = v15;
    v28[1] = v14;
    v31 = v44;
    v32 = v45;
    v33 = v46;
    v34 = v47;
    v29 = v42;
    v30 = v43;
    result = sub_1000F9D58(v28);
    v17 = v26;
    v11[4] = v25;
    v11[5] = v17;
    v11[6] = v27;
    v18 = v22;
    *v11 = v21;
    v11[1] = v18;
    v19 = v24;
    v11[2] = v23;
    v11[3] = v19;
  }

  return result;
}

unint64_t sub_1000F9CCC()
{
  result = qword_10083A398;
  if (!qword_10083A398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A398);
  }

  return result;
}

unint64_t sub_1000F9DDC()
{
  result = qword_10083A3A8;
  if (!qword_10083A3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A3A8);
  }

  return result;
}

unint64_t sub_1000F9E34()
{
  result = qword_10083A3B0;
  if (!qword_10083A3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A3B0);
  }

  return result;
}

unint64_t sub_1000F9E8C()
{
  result = qword_10083A3B8;
  if (!qword_10083A3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A3B8);
  }

  return result;
}

unint64_t sub_1000F9EE4()
{
  result = qword_10083A3C0;
  if (!qword_10083A3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A3C0);
  }

  return result;
}

unint64_t sub_1000F9F3C()
{
  result = qword_10083A3C8;
  if (!qword_10083A3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A3C8);
  }

  return result;
}

unint64_t sub_1000F9F94()
{
  result = qword_10083A3D0;
  if (!qword_10083A3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A3D0);
  }

  return result;
}

unint64_t sub_1000F9FEC()
{
  result = qword_10083A3D8;
  if (!qword_10083A3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A3D8);
  }

  return result;
}

unint64_t sub_1000FA044()
{
  result = qword_10083A3E0;
  if (!qword_10083A3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A3E0);
  }

  return result;
}

unint64_t sub_1000FA09C()
{
  result = qword_10083A3E8;
  if (!qword_10083A3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A3E8);
  }

  return result;
}

unint64_t sub_1000FA0F4()
{
  result = qword_10083A3F0;
  if (!qword_10083A3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A3F0);
  }

  return result;
}

unint64_t sub_1000FA148()
{
  result = qword_10083A400;
  if (!qword_10083A400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A400);
  }

  return result;
}

unint64_t sub_1000FA19C()
{
  result = qword_10083A408;
  if (!qword_10083A408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A408);
  }

  return result;
}

uint64_t sub_1000FA1F0(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10000B870(&qword_100837150, &qword_1006C96A0);
    sub_100049B38(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000FA278()
{
  result = qword_10083A410;
  if (!qword_10083A410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A410);
  }

  return result;
}

unint64_t sub_1000FA2CC()
{
  result = qword_10083A420;
  if (!qword_10083A420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A420);
  }

  return result;
}

unint64_t sub_1000FA344()
{
  result = qword_10083A428;
  if (!qword_10083A428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A428);
  }

  return result;
}

unint64_t sub_1000FA39C()
{
  result = qword_10083A430;
  if (!qword_10083A430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A430);
  }

  return result;
}

unint64_t sub_1000FA3F4()
{
  result = qword_10083A438;
  if (!qword_10083A438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A438);
  }

  return result;
}

unint64_t sub_1000FA44C()
{
  result = qword_10083A440;
  if (!qword_10083A440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A440);
  }

  return result;
}

unint64_t sub_1000FA4A0()
{
  result = qword_10083A448;
  if (!qword_10083A448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A448);
  }

  return result;
}

uint64_t sub_1000FA508(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100007224(&qword_1008353E0, &qword_1006C0F18);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 72);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000FA5D8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_100007224(&qword_1008353E0, &qword_1006C0F18);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 72);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for Workflow()
{
  result = qword_10083A4B0;
  if (!qword_10083A4B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000FA6D4()
{
  sub_1000FAAF4(319, &qword_100835140, &type metadata for String, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_1000FAAF4(319, &qword_100835450, &type metadata for String, &type metadata accessor for Array);
    if (v1 <= 0x3F)
    {
      sub_1000FAA9C();
      if (v2 <= 0x3F)
      {
        sub_1000FAB44(319, &qword_10083A4C0, &qword_100839AF8, &qword_1006D4960);
        if (v3 <= 0x3F)
        {
          sub_1000FAAF4(319, &qword_10083A4C8, &type metadata for UserInputField, &type metadata accessor for Array);
          if (v4 <= 0x3F)
          {
            sub_1000FAAF4(319, &qword_1008351F0, &type metadata for Bool, &type metadata accessor for Optional);
            if (v5 <= 0x3F)
            {
              sub_1000FAB44(319, &qword_10083A4D0, &qword_100839A58, &qword_1006D4920);
              if (v6 <= 0x3F)
              {
                sub_1000FAB44(319, &qword_10083A4D8, &qword_100839B30, &qword_1006D4978);
                if (v7 <= 0x3F)
                {
                  sub_1000FAAF4(319, &qword_1008351F8, &type metadata for Int, &type metadata accessor for Optional);
                  if (v8 <= 0x3F)
                  {
                    sub_1000FAB44(319, &qword_10083A4E0, &qword_10083A4E8, &qword_1006D84B8);
                    if (v9 <= 0x3F)
                    {
                      sub_1000FAB44(319, &unk_10083A4F0, &unk_100839A40, &qword_1006C1B50);
                      if (v10 <= 0x3F)
                      {
                        sub_1000FAB44(319, &qword_100835470, &qword_100835478, &qword_1006D4980);
                        if (v11 <= 0x3F)
                        {
                          sub_1000FAAF4(319, &qword_100835A38, &type metadata for IQModel, &type metadata accessor for Optional);
                          if (v12 <= 0x3F)
                          {
                            sub_1000FAB44(319, &qword_1008359E0, &qword_100834EA0, &qword_1006C06B0);
                            if (v13 <= 0x3F)
                            {
                              swift_cvw_initStructMetadataWithLayoutString();
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1000FAA9C()
{
  if (!qword_100835458)
  {
    type metadata accessor for HardwareAttestationType();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100835458);
    }
  }
}

void sub_1000FAAF4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1000FAB44(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_10000B870(a3, a4);
    v5 = type metadata accessor for Optional();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1000FAB98(uint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = _StringObject.sharedUTF8.getter();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v6 = sub_1000FFDD8(result, a2, 10);
  v24 = v25;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_1000FAE98(uint64_t a1, void (*a2)(uint64_t *, void *), uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v30 = a2;
  v29 = sub_100007224(&unk_100839AC0, &unk_1006D4948);
  v8 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v29);
  v28 = &v27 - v9;
  v33 = a1;
  v10 = a4 + 64;
  v11 = 1 << *(a4 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a4 + 64);
  v14 = (v11 + 63) >> 6;
  v31 = a4;

  v16 = 0;
  while (v13)
  {
    v32 = v5;
    v17 = v16;
LABEL_10:
    v18 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    v19 = v18 | (v17 << 6);
    v20 = *(v31 + 56);
    v21 = (*(v31 + 48) + 16 * v19);
    v22 = *v21;
    v23 = v21[1];
    v24 = v20 + *(*(type metadata accessor for EncryptionCertificateInStringFormat(0) - 8) + 72) * v19;
    v25 = v28;
    sub_1001007D8(v24, &v28[*(v29 + 48)], type metadata accessor for EncryptionCertificateInStringFormat);
    *v25 = v22;
    v25[1] = v23;

    v26 = v32;
    v30(&v33, v25);
    v5 = v26;
    result = sub_10000BE18(v25, &unk_100839AC0, &unk_1006D4948);
    if (v26)
    {
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

      return v33;
    }

    v13 = *(v10 + 8 * v17);
    ++v16;
    if (v13)
    {
      v32 = v5;
      v16 = v17;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000FB094(uint64_t a1, void (*a2)(uint64_t *, char *), uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v28 = a2;
  v27 = sub_100007224(&qword_10083A5E8, &qword_1006D8FF0);
  v8 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27);
  v10 = &v27 - v9;
  v31 = a1;
  v11 = a4 + 64;
  v12 = 1 << *(a4 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a4 + 64);
  v15 = (v12 + 63) >> 6;
  v29 = a4;

  v17 = 0;
  while (v14)
  {
    v30 = v5;
    v18 = v17;
LABEL_10:
    v19 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    v20 = v19 | (v18 << 6);
    v21 = v29;
    v22 = *(v29 + 48);
    v23 = type metadata accessor for IdentityElement();
    (*(*(v23 - 8) + 16))(v10, v22 + *(*(v23 - 8) + 72) * v20, v23);
    v24 = *(v21 + 56);
    v25 = type metadata accessor for IdentityIntentToStore();
    (*(*(v25 - 8) + 16))(&v10[*(v27 + 48)], v24 + *(*(v25 - 8) + 72) * v20, v25);
    v26 = v30;
    v28(&v31, v10);
    v5 = v26;
    result = sub_10000BE18(v10, &qword_10083A5E8, &qword_1006D8FF0);
    if (v26)
    {
    }
  }

  while (1)
  {
    v18 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v18 >= v15)
    {

      return v31;
    }

    v14 = *(v11 + 8 * v18);
    ++v17;
    if (v14)
    {
      v30 = v5;
      v17 = v18;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000FB2C0(uint64_t a1, void (*a2)(uint64_t *, unint64_t), uint64_t a3, uint64_t a4)
{
  v7 = 0;
  v11 = a1;
  v8 = *(a4 + 16);
  while (v8 != v7)
  {
    v9 = *(sub_100007224(&qword_1008364F8, &qword_1006C5240) - 8);
    a2(&v11, a4 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v7++);
    if (v4)
    {
    }
  }

  return v11;
}

uint64_t sub_1000FB3C0(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x6E6F6973726576;
      break;
    case 2:
      result = 0x4E79616C70736964;
      break;
    case 3:
      result = 0x72656469766F7270;
      break;
    case 4:
      result = 0x617A696E6167726FLL;
      break;
    case 5:
      result = 0x7972747375646E69;
      break;
    case 6:
      result = 1701869940;
      break;
    case 7:
      v3 = 0x68636E75616CLL;
      goto LABEL_29;
    case 8:
      v3 = 0x746567726174;
LABEL_29:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6954000000000000;
      break;
    case 9:
      result = 0xD000000000000010;
      break;
    case 10:
      result = 0x6574726F70707573;
      break;
    case 11:
    case 25:
      result = 0xD000000000000012;
      break;
    case 12:
      result = 0x4C746C7561666564;
      break;
    case 13:
      result = 0x736E6F4372657375;
      break;
    case 14:
      result = 0xD000000000000017;
      break;
    case 15:
    case 27:
      result = 0xD000000000000018;
      break;
    case 16:
      result = 0x75706E4972657375;
      break;
    case 17:
      result = 0xD00000000000001CLL;
      break;
    case 18:
      result = 0x4155656C62616E65;
      break;
    case 19:
      result = 0x746163696C707061;
      break;
    case 20:
      result = 0xD000000000000016;
      break;
    case 21:
      result = 0xD000000000000013;
      break;
    case 22:
      result = 0xD000000000000014;
      break;
    case 23:
      result = 7107700;
      break;
    case 24:
      result = 0xD000000000000021;
      break;
    case 26:
      result = 0xD000000000000016;
      break;
    case 28:
      result = 0xD00000000000001FLL;
      break;
    case 29:
      result = 0x6974616E69676170;
      break;
    case 30:
      result = 0x65726564726F6E75;
      break;
    case 31:
      result = 0x74696B64756F6C63;
      break;
    case 32:
    case 35:
      result = 0xD00000000000001BLL;
      break;
    case 33:
      result = 0xD00000000000001ELL;
      break;
    case 34:
    case 41:
      result = 0xD000000000000023;
      break;
    case 36:
      result = 0xD000000000000011;
      break;
    case 37:
      result = 0xD000000000000016;
      break;
    case 38:
      result = 0xD00000000000001DLL;
      break;
    case 39:
      result = 0xD000000000000019;
      break;
    case 40:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1000FB91C(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1000FB3C0(*a1);
  v5 = v4;
  if (v3 == sub_1000FB3C0(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_1000FB9A4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_1000FB3C0(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000FBA08()
{
  sub_1000FB3C0(*v0);
  String.hash(into:)();
}

Swift::Int sub_1000FBA5C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_1000FB3C0(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000FBABC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_100100B60();
  *a2 = result;
  return result;
}

uint64_t sub_1000FBAEC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000FB3C0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1000FBB20@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100100B60();
  *a1 = result;
  return result;
}

uint64_t sub_1000FBB54(uint64_t a1)
{
  v2 = sub_1000FFCEC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000FBB90(uint64_t a1)
{
  v2 = sub_1000FFCEC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000FBBCC(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  v203 = v2;
  v3 = type metadata accessor for DIPError.Code();
  v198 = *(v3 - 8);
  v199 = v3;
  v4 = *(v198 + 64);
  __chkstk_darwin(v3);
  v200 = &v180 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v196 = type metadata accessor for EncryptedMessageEntity();
  v193 = *(v196 - 8);
  v6 = *(v193 + 64);
  __chkstk_darwin(v196);
  v195 = &v180 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for RecipientEncryptionCertificate();
  v201 = *(v8 - 8);
  v202 = v8;
  v9 = *(v201 + 64);
  __chkstk_darwin(v8);
  v197 = &v180 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v194 = type metadata accessor for DIPCertUsage();
  v191 = *(v194 - 8);
  v11 = *(v191 + 64);
  v12 = __chkstk_darwin(v194);
  v192 = &v180 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v190 = &v180 - v14;
  v206 = type metadata accessor for DIPOIDVerifier();
  v204 = *(v206 - 8);
  v15 = *(v204 + 64);
  __chkstk_darwin(v206);
  v205 = &v180 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100007224(&qword_1008353E0, &qword_1006C0F18);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v208 = &v180 - v19;
  v20 = sub_100007224(&qword_10083A5C8, &qword_1006D8530);
  v207 = *(v20 - 8);
  v21 = *(v207 + 64);
  __chkstk_darwin(v20);
  v23 = &v180 - v22;
  v24 = type metadata accessor for Workflow();
  v25 = *(*(v24 - 1) + 64);
  v26 = __chkstk_darwin(v24);
  v28 = &v180 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *(v26 + 112);
  *(v28 + v29) = 0;
  v30 = *(v26 + 156);
  sub_1000F09E4(v214);
  v210 = v30;
  memcpy(&v30[v28], v214, 0x2181uLL);
  *(v28 + v24[40]) = 0;
  v31 = (v28 + v24[41]);
  *v31 = 0;
  *(v31 + 1) = 0;
  v32 = (v28 + v24[42]);
  *v32 = 0;
  *(v32 + 1) = 0;
  v33 = v24[43];
  v211 = v28;
  *&v33[v28] = 0;
  v34 = v1;
  v35 = *(v1 + 24);
  v36 = *(v1 + 32);
  v209 = v34;
  sub_10000BA08(v34, v35);
  sub_1000FFCEC();
  v37 = v212;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v37)
  {
    v212 = v37;
    v42 = v211;
    sub_10000BB78(v209);
LABEL_4:

LABEL_5:
    memcpy(v213, &v210[v42], 0x2181uLL);
    return sub_10000BE18(v213, &qword_100839990, &unk_1006C19E0);
  }

  v187 = v33;
  v188 = v29;
  v189 = v24;
  v39 = v207;
  v38 = v208;
  LOBYTE(v213[0]) = 0;
  v40 = v23;
  v41 = KeyedDecodingContainer.decode(_:forKey:)();
  v42 = v211;
  *v211 = v41;
  *(v42 + 8) = v44;
  LOBYTE(v213[0]) = 1;
  *(v42 + 16) = KeyedDecodingContainer.decode(_:forKey:)();
  *(v42 + 24) = v45;
  LOBYTE(v213[0]) = 2;
  v186 = 0;
  *(v42 + 32) = KeyedDecodingContainer.decode(_:forKey:)();
  *(v42 + 40) = v46;
  LOBYTE(v213[0]) = 3;
  *(v42 + 48) = KeyedDecodingContainer.decode(_:forKey:)();
  *(v42 + 56) = v47;
  LOBYTE(v213[0]) = 4;
  *(v42 + 64) = KeyedDecodingContainer.decode(_:forKey:)();
  *(v42 + 72) = v48;
  LOBYTE(v213[0]) = 5;
  v49 = KeyedDecodingContainer.decode(_:forKey:)();
  v212 = 0;
  *(v42 + 80) = v49;
  *(v42 + 88) = v50;
  v215 = 6;
  sub_1000F2078();
  v51 = v212;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  if (v51)
  {
    v212 = v51;
    (*(v39 + 8))(v23, v20);
    LODWORD(v200) = 0;
    LODWORD(v199) = 0;
    LODWORD(v198) = 0;
    LODWORD(v197) = 0;
    LODWORD(v196) = 0;
    v52 = 0;
    LODWORD(v203) = 0;
    LODWORD(v204) = 0;
    LODWORD(v202) = 0;
    LODWORD(v201) = 0;
    LODWORD(v207) = 0;
    LODWORD(v206) = 0;
    LODWORD(v205) = 0;
    v53 = 0;
    LODWORD(v208) = 1;
    v54 = v186;
    goto LABEL_9;
  }

  *(v42 + 96) = v213[0];
  LOBYTE(v213[0]) = 7;
  *(v42 + 104) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(v42 + 112) = v78;
  LOBYTE(v213[0]) = 8;
  v79 = KeyedDecodingContainer.decode(_:forKey:)();
  v212 = 0;
  *(v42 + 120) = v79;
  *(v42 + 128) = v80;
  sub_100007224(&qword_100834EA0, &qword_1006C06B0);
  v215 = 9;
  sub_10007FD2C();
  v81 = v20;
  v82 = v23;
  v83 = v212;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v212 = v83;
  if (v83)
  {
    (*(v39 + 8))(v23, v81);
    LODWORD(v198) = 0;
    LODWORD(v197) = 0;
    LODWORD(v196) = 0;
    v52 = 0;
    LODWORD(v203) = 0;
    LODWORD(v204) = 0;
    LODWORD(v202) = 0;
    LODWORD(v201) = 0;
    LODWORD(v207) = 0;
    LODWORD(v206) = 0;
    LODWORD(v205) = 0;
    v53 = 0;
    LODWORD(v208) = 1;
    LODWORD(v200) = 1;
    LODWORD(v199) = 1;
LABEL_52:
    v54 = v186;
    v42 = v211;
LABEL_9:
    sub_10000BB78(v209);
    v55 = *(v42 + 8);

    if (v54)
    {
      if (v208)
      {
LABEL_11:
        v56 = *(v42 + 40);

        v57 = v53;
        goto LABEL_29;
      }
    }

    else
    {
      v68 = *(v42 + 24);

      if (v208)
      {
        goto LABEL_11;
      }
    }

    v57 = v53;
LABEL_29:
    v69 = *(v42 + 56);

    v58 = *(v42 + 72);

    v70 = *(v42 + 88);

    if (v200)
    {
      v59 = *(v42 + 112);

      v60 = v189;
      v61 = 0;
      if (v199)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v60 = v189;
      v61 = 0;
      if (v199)
      {
LABEL_31:
        v71 = *(v42 + 128);

        if ((v198 & 1) == 0)
        {
LABEL_32:
          if (v197)
          {
LABEL_33:
            v72 = *(v42 + 152);

            if ((v196 & 1) == 0)
            {
LABEL_34:
              if (v52)
              {
LABEL_35:
                v73 = *(v42 + 176);

                if ((v203 & 1) == 0)
                {
LABEL_36:
                  if (v204)
                  {
LABEL_37:
                    v74 = *(v42 + v60[19]);

                    if ((v202 & 1) == 0)
                    {
LABEL_38:
                      if (v201)
                      {
LABEL_39:
                        v75 = *(v42 + v60[21] + 8);

                        if ((v207 & 1) == 0)
                        {
LABEL_40:
                          if (v206)
                          {
LABEL_41:
                            v76 = *(v42 + v60[24]);

                            if ((v205 & 1) == 0)
                            {
LABEL_42:

                              if (!v57)
                              {
LABEL_43:
                                if (!v61)
                                {
                                  goto LABEL_5;
                                }

LABEL_44:
                                v77 = *(v42 + v60[30]);
                                goto LABEL_4;
                              }

LABEL_25:
                              v67 = *(v42 + v60[29]);

                              if ((v61 & 1) == 0)
                              {
                                goto LABEL_5;
                              }

                              goto LABEL_44;
                            }

LABEL_24:
                            v66 = *(v42 + v60[25]);

                            if ((v57 & 1) == 0)
                            {
                              goto LABEL_43;
                            }

                            goto LABEL_25;
                          }

LABEL_23:
                          if (!v205)
                          {
                            goto LABEL_42;
                          }

                          goto LABEL_24;
                        }

LABEL_22:
                        v65 = *(v42 + v60[23]);

                        if (v206)
                        {
                          goto LABEL_41;
                        }

                        goto LABEL_23;
                      }

LABEL_21:
                      if (!v207)
                      {
                        goto LABEL_40;
                      }

                      goto LABEL_22;
                    }

LABEL_20:
                    v64 = *(v42 + v60[20]);

                    if (v201)
                    {
                      goto LABEL_39;
                    }

                    goto LABEL_21;
                  }

LABEL_19:
                  if (!v202)
                  {
                    goto LABEL_38;
                  }

                  goto LABEL_20;
                }

LABEL_18:
                sub_10000BE18(v42 + v60[18], &qword_1008353E0, &qword_1006C0F18);
                if (v204)
                {
                  goto LABEL_37;
                }

                goto LABEL_19;
              }

LABEL_17:
              if (!v203)
              {
                goto LABEL_36;
              }

              goto LABEL_18;
            }

LABEL_16:
            v63 = *(v42 + 160);

            if (v52)
            {
              goto LABEL_35;
            }

            goto LABEL_17;
          }

LABEL_15:
          if (!v196)
          {
            goto LABEL_34;
          }

          goto LABEL_16;
        }

LABEL_14:
        v62 = *(v42 + 136);

        if (v197)
        {
          goto LABEL_33;
        }

        goto LABEL_15;
      }
    }

    if (!v198)
    {
      goto LABEL_32;
    }

    goto LABEL_14;
  }

  v84 = v213[0];
  if (!v213[0])
  {
    v84 = _swiftEmptyArrayStorage;
  }

  *(v211 + 136) = v84;
  LOBYTE(v213[0]) = 10;
  v85 = KeyedDecodingContainer.decode(_:forKey:)();
  v212 = 0;
  v86 = v211;
  *(v211 + 144) = v85;
  *(v86 + 152) = v87;
  v215 = 11;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v212 = 0;
  *(v211 + 160) = v213[0];
  LOBYTE(v213[0]) = 12;
  v88 = KeyedDecodingContainer.decode(_:forKey:)();
  v212 = 0;
  v89 = v211;
  *(v211 + 168) = v88;
  *(v89 + 176) = v90;
  v215 = 13;
  sub_1000F20CC();
  v91 = v212;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v212 = v91;
  if (v91 || (*(v211 + 184) = v213[0], type metadata accessor for HardwareAttestationType(), LOBYTE(v213[0]) = 14, sub_1001008A0(&qword_100839AF0, &type metadata accessor for HardwareAttestationType), v92 = v212, KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)(), (v212 = v92) != 0))
  {
    (*(v39 + 8))(v23, v81);
    LODWORD(v203) = 0;
    LODWORD(v204) = 0;
    LODWORD(v202) = 0;
    LODWORD(v201) = 0;
    LODWORD(v207) = 0;
    LODWORD(v206) = 0;
    LODWORD(v205) = 0;
    v53 = 0;
    LODWORD(v208) = 1;
    LODWORD(v200) = 1;
    LODWORD(v199) = 1;
    LODWORD(v198) = 1;
    LODWORD(v197) = 1;
    LODWORD(v196) = 1;
    v52 = 1;
    goto LABEL_52;
  }

  sub_1000B1FC8(v38, v211 + v189[18], &qword_1008353E0, &qword_1006C0F18);
  sub_100007224(&qword_100839AF8, &qword_1006D4960);
  v215 = 15;
  sub_1000F2120();
  v93 = v212;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v212 = v93;
  if (v93)
  {
    (*(v39 + 8))(v23, v81);
    LODWORD(v204) = 0;
    LODWORD(v202) = 0;
    LODWORD(v201) = 0;
    LODWORD(v207) = 0;
    LODWORD(v206) = 0;
    LODWORD(v205) = 0;
    v53 = 0;
    LODWORD(v208) = 1;
    LODWORD(v200) = 1;
    LODWORD(v199) = 1;
    LODWORD(v198) = 1;
    LODWORD(v197) = 1;
    LODWORD(v196) = 1;
    v52 = 1;
    LODWORD(v203) = 1;
    goto LABEL_52;
  }

  *(v211 + v189[19]) = v213[0];
  sub_100007224(&qword_100839B08, &qword_1006D4968);
  v215 = 16;
  sub_1000FFD40(&qword_100839B10, &qword_100839B08, &qword_1006D4968, sub_1000F225C);
  v94 = v212;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v212 = v94;
  if (v94)
  {
    (*(v39 + 8))(v23, v81);
    LODWORD(v202) = 0;
    LODWORD(v201) = 0;
    LODWORD(v207) = 0;
    LODWORD(v206) = 0;
    LODWORD(v205) = 0;
    v53 = 0;
    LODWORD(v208) = 1;
    LODWORD(v200) = 1;
    LODWORD(v199) = 1;
    LODWORD(v198) = 1;
    LODWORD(v197) = 1;
    LODWORD(v196) = 1;
    v52 = 1;
    LODWORD(v203) = 1;
    LODWORD(v204) = 1;
    goto LABEL_52;
  }

  v95 = v213[0];
  if (!v213[0])
  {
    v95 = _swiftEmptyArrayStorage;
  }

  *(v211 + v189[20]) = v95;
  LOBYTE(v213[0]) = 17;
  v96 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v212 = 0;
  v97 = (v211 + v189[21]);
  *v97 = v96;
  v97[1] = v98;
  LOBYTE(v213[0]) = 18;
  v99 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v212 = 0;
  *(v211 + v189[22]) = v99;
  v215 = 19;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v212 = 0;
  *(v211 + v189[23]) = v213[0];
  sub_100007224(&qword_100839A58, &qword_1006D4920);
  v215 = 20;
  sub_1000FFD40(&qword_100839A60, &qword_100839A58, &qword_1006D4920, sub_1000F1D04);
  v100 = v212;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v212 = v100;
  if (v100)
  {
    (*(v39 + 8))(v23, v81);
    LODWORD(v206) = 0;
    LODWORD(v205) = 0;
    v53 = 0;
    LODWORD(v208) = 1;
    LODWORD(v200) = 1;
    LODWORD(v199) = 1;
    LODWORD(v198) = 1;
    LODWORD(v197) = 1;
    LODWORD(v196) = 1;
    v52 = 1;
    LODWORD(v203) = 1;
    LODWORD(v204) = 1;
    LODWORD(v202) = 1;
    LODWORD(v201) = 1;
    LODWORD(v207) = 1;
    goto LABEL_52;
  }

  *(v211 + v189[24]) = v213[0];
  sub_100007224(&qword_100839B30, &qword_1006D4978);
  v215 = 21;
  sub_1000F2304();
  v101 = v212;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v212 = v101;
  if (v101)
  {
    (*(v39 + 8))(v23, v81);
    LODWORD(v205) = 0;
    v53 = 0;
    LODWORD(v208) = 1;
    LODWORD(v200) = 1;
    LODWORD(v199) = 1;
    LODWORD(v198) = 1;
    LODWORD(v197) = 1;
    LODWORD(v196) = 1;
    v52 = 1;
    LODWORD(v203) = 1;
    LODWORD(v204) = 1;
    LODWORD(v202) = 1;
    LODWORD(v201) = 1;
    LODWORD(v207) = 1;
    LODWORD(v206) = 1;
    goto LABEL_52;
  }

  v102 = v213[0];
  if (!v213[0])
  {
    v102 = _swiftEmptyArrayStorage;
  }

  *(v211 + v189[25]) = v102;
  LOBYTE(v213[0]) = 22;
  v103 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v212 = 0;
  *(v211 + v189[26]) = v103;
  LOBYTE(v213[0]) = 24;
  v185 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v208 = v104;
  v212 = 0;
  LOBYTE(v213[0]) = 25;
  v183 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v184 = v105;
  v212 = 0;
  sub_100007224(&qword_100839A88, &qword_1006D4930);
  v215 = 26;
  sub_1000F1DDC();
  v106 = v212;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v212 = v106;
  if (v106)
  {
    (*(v39 + 8))(v23, v81);

LABEL_69:

    v53 = 0;
    LODWORD(v208) = 1;
    LODWORD(v200) = 1;
    LODWORD(v199) = 1;
    LODWORD(v198) = 1;
    LODWORD(v197) = 1;
    LODWORD(v196) = 1;
    v52 = 1;
    LODWORD(v203) = 1;
    LODWORD(v204) = 1;
    LODWORD(v202) = 1;
    LODWORD(v201) = 1;
    LODWORD(v207) = 1;
    LODWORD(v206) = 1;
    LODWORD(v205) = 1;
    goto LABEL_52;
  }

  v182 = v213[0];
  v215 = 27;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v212 = 0;
  v181 = v213[0];
  sub_100007224(&unk_100839A40, &qword_1006C1B50);
  v215 = 29;
  sub_1000FFD40(&qword_1008358D8, &unk_100839A40, &qword_1006C1B50, sub_10009F948);
  v107 = v212;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v212 = v107;
  if (v107)
  {
    (*(v39 + 8))(v23, v81);

    goto LABEL_69;
  }

  *(v211 + v189[29]) = v213[0];
  sub_100007224(&qword_100835478, &qword_1006D4980);
  v215 = 30;
  sub_10009F55C();
  v108 = v212;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v212 = v108;
  if (v108)
  {
    (*(v39 + 8))(v23, v81);

    LODWORD(v208) = 1;
    LODWORD(v200) = 1;
    LODWORD(v199) = 1;
    LODWORD(v198) = 1;
    LODWORD(v197) = 1;
    LODWORD(v196) = 1;
    v52 = 1;
    LODWORD(v203) = 1;
    LODWORD(v204) = 1;
    LODWORD(v202) = 1;
    LODWORD(v201) = 1;
    LODWORD(v207) = 1;
    LODWORD(v206) = 1;
    LODWORD(v205) = 1;
    v53 = 1;
    goto LABEL_52;
  }

  *(v211 + v189[30]) = v213[0];
  LOBYTE(v213[0]) = 31;
  v109 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v212 = 0;
  v110 = v211 + v189[31];
  *v110 = v109;
  *(v110 + 8) = v111 & 1;
  LOBYTE(v213[0]) = 32;
  v112 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v212 = 0;
  v113 = v211 + v189[32];
  *v113 = v112;
  *(v113 + 8) = v114 & 1;
  LOBYTE(v213[0]) = 33;
  v115 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v212 = 0;
  v116 = v211 + v189[33];
  *v116 = v115;
  *(v116 + 8) = v117 & 1;
  LOBYTE(v213[0]) = 34;
  v118 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v212 = 0;
  v119 = v211 + v189[34];
  *v119 = v118;
  *(v119 + 8) = v120 & 1;
  LOBYTE(v213[0]) = 35;
  v121 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v212 = 0;
  v122 = v211 + v189[35];
  *v122 = v121;
  *(v122 + 8) = v123 & 1;
  LOBYTE(v213[0]) = 36;
  v124 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v212 = 0;
  *(v211 + v189[36]) = (v124 == 2) | v124 & 1;
  LOBYTE(v213[0]) = 37;
  v125 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v212 = 0;
  *(v211 + v189[37]) = v125;
  LOBYTE(v213[0]) = 38;
  v126 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v212 = 0;
  *(v211 + v189[38]) = v126;
  LOBYTE(v213[0]) = 39;
  v127 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v212 = 0;
  *(v211 + v189[44]) = v127;
  LOBYTE(v213[0]) = 40;
  v128 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v212 = 0;
  *(v211 + v189[45]) = v128;
  LOBYTE(v213[0]) = 41;
  v129 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v212 = 0;
  *(v211 + v189[46]) = v129;
  LOBYTE(v213[0]) = 23;
  v130 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v212 = 0;
  if (v131)
  {
    v132 = sub_1000FAB98(v130, v131);
  }

  else
  {
    v132 = 0;
    v133 = 1;
  }

  v134 = v211 + v189[27];
  *v134 = v132;
  *(v134 + 8) = v133 & 1;
  v213[3] = type metadata accessor for DateProvider();
  v213[4] = &protocol witness table for DateProvider;
  sub_100032DBC(v213);
  DateProvider.init()();
  DIPOIDVerifier.init(dateProvider:)();
  v215 = 28;
  v135 = v212;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v212 = v135;
  if (v135)
  {
    (*(v39 + 8))(v23, v81);

LABEL_88:
    (*(v204 + 8))(v205, v206);
    sub_10000BB78(v209);
LABEL_94:
    v42 = v211;
    v147 = *(v211 + 8);

    v148 = *(v42 + 24);

    v149 = *(v42 + 40);

    v150 = *(v42 + 56);

    v151 = *(v42 + 72);

    v152 = *(v42 + 88);

    v153 = *(v42 + 112);

    v154 = *(v42 + 128);

    v155 = *(v42 + 136);

    v156 = *(v42 + 152);

    v157 = *(v42 + 160);

    v158 = *(v42 + 176);

    v60 = v189;
    sub_10000BE18(v42 + v189[18], &qword_1008353E0, &qword_1006C0F18);
    v159 = *(v42 + v60[19]);

    v160 = *(v42 + v60[20]);

    v161 = *(v42 + v60[21] + 8);

    v162 = *(v42 + v60[23]);

    v163 = *(v42 + v60[24]);

    LOBYTE(v57) = 1;
    v61 = 1;
    goto LABEL_24;
  }

  if (v213[0])
  {
    DIPOIDVerifier.setIntermediates(fromBase64DER:)(v213[0]);
  }

  if (v208 && v184)
  {

    v186 = *(v191 + 104);
    v186(v190, enum case for DIPCertUsage.inoEncryption(_:), v194);
    v136 = v212;
    v187 = DIPOIDVerifier.verifyLeaf(fromBase64DER:forUsage:)();
    if (v136)
    {
      (*(v191 + 8))(v190, v194);

      v212 = "minimumBorderPadding";
      (*(v198 + 104))(v200, enum case for DIPError.Code.internalError(_:), v199);
      swift_errorRetain();
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_1001008A0(&qword_100834130, &type metadata accessor for DIPError);
      v143 = swift_allocError();
      v179 = 183;
      v178[0] = 0x6F72662874696E69;
      v178[1] = 0xEB00000000293A6DLL;
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      v212 = v143;
      swift_willThrow();

LABEL_87:
      (*(v39 + 8))(v40, v81);
      goto LABEL_88;
    }

    v140 = *(v191 + 8);
    v141 = v194;
    v191 += 8;
    v140(v190, v194);

    v186(v192, enum case for DIPCertUsage.inoSigning(_:), v141);
    v142 = DIPOIDVerifier.verifyLeaf(fromBase64DER:forUsage:)();
    v212 = 0;
    v164 = v142;
    v140(v192, v194);

    (*(v193 + 104))(v195, enum case for EncryptedMessageEntity.ino(_:), v196);
    v210 = v187;
    v208 = v164;
    v165 = v197;
    RecipientEncryptionCertificate.init(keyAgreement:signing:recipient:)();
    sub_100007224(&unk_100839AB0, &qword_1006D4938);
    v166 = (sub_100007224(&qword_100834798, &qword_1006D4940) - 8);
    v167 = *(*v166 + 72);
    v168 = (*(*v166 + 80) + 32) & ~*(*v166 + 80);
    v169 = swift_allocObject();
    *(v169 + 16) = xmmword_1006BF520;
    v170 = (v169 + v168);
    v171 = v166[14];
    *v170 = 0x746C7561666564;
    *(v170 + 1) = 0xE700000000000000;
    v172 = v201;
    v173 = v165;
    v174 = v165;
    v175 = v202;
    (*(v201 + 16))(&v170[v171], v173, v202);
    v200 = sub_10003E654(v169);
    swift_setDeallocating();
    sub_10000BE18(v170, &qword_100834798, &qword_1006D4940);
    swift_deallocClassInstance();

    (*(v172 + 8))(v174, v175);
    (*(v39 + 8))(v82, v81);
    (*(v204 + 8))(v205, v206);
    *(v211 + v188) = v200;
  }

  else
  {

    if (v182)
    {
      __chkstk_darwin(v137);
      v179 = v205;
      v138 = v212;
      v139 = sub_1000FAE98(&_swiftEmptyDictionarySingleton, sub_100100BB4, v178, v182);
      v212 = v138;
      if (v138)
      {

        goto LABEL_87;
      }

      v144 = v139;
    }

    else
    {
      v144 = 0;
    }

    *(v211 + v188) = v144;
    if (v181)
    {
      __chkstk_darwin(v137);
      v179 = v205;
      v145 = v212;
      v146 = sub_1000FAE98(&_swiftEmptyDictionarySingleton, sub_1000FFDBC, v178, v181);
      v212 = v145;
      if (v145)
      {

        (*(v39 + 8))(v23, v81);
        (*(v204 + 8))(v205, v206);
        sub_10000BB78(v209);
        goto LABEL_94;
      }

      v176 = v146;
    }

    else
    {
      v176 = 0;
    }

    (*(v39 + 8))(v23, v81);
    (*(v204 + 8))(v205, v206);
    *&v187[v211] = v176;
  }

  v177 = v211;
  sub_1001007D8(v211, v203, type metadata accessor for Workflow);
  sub_10000BB78(v209);
  return sub_100100840(v177, type metadata accessor for Workflow);
}

uint64_t sub_1000FDFC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v118 = a3;
  v125 = a2;
  v106 = a1;
  v3 = type metadata accessor for DIPError.Code();
  v112 = *(v3 - 8);
  v113 = v3;
  v4 = *(v112 + 64);
  __chkstk_darwin(v3);
  v114 = &v103 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = type metadata accessor for EncryptedMessageEntity();
  v120 = *(v115 - 8);
  v6 = *(v120 + 64);
  __chkstk_darwin(v115);
  v104 = &v103 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100007224(&qword_1008399F0, &unk_1006DA210);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v105 = &v103 - v10;
  v11 = sub_100007224(&unk_100839AC0, &unk_1006D4948);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11);
  v110 = (&v103 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __chkstk_darwin(v13);
  v108 = &v103 - v16;
  v17 = __chkstk_darwin(v15);
  v116 = &v103 - v18;
  __chkstk_darwin(v17);
  v20 = &v103 - v19;
  v21 = sub_100007224(&qword_100834D98, &unk_1006C03B0);
  v22 = *(*(v21 - 8) + 64);
  v23 = __chkstk_darwin(v21 - 8);
  v109 = &v103 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v111 = &v103 - v26;
  v27 = __chkstk_darwin(v25);
  v29 = &v103 - v28;
  __chkstk_darwin(v27);
  v31 = &v103 - v30;
  v32 = type metadata accessor for DIPCertUsage();
  v128 = *(v32 - 8);
  v33 = v128[8];
  v34 = __chkstk_darwin(v32);
  v36 = &v103 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v38 = &v103 - v37;
  sub_10000BBC4(v125, v20, &unk_100839AC0, &unk_1006D4948);
  v39 = *(v20 + 1);

  v119 = v11;
  v40 = *(v11 + 48);
  v41 = v115;
  v42 = &v20[v40];
  v43 = type metadata accessor for EncryptionCertificateInStringFormat(0);
  sub_10000BBC4(v42 + *(v43 + 24), v31, &qword_100834D98, &unk_1006C03B0);
  sub_100100840(v42, type metadata accessor for EncryptionCertificateInStringFormat);
  v121 = v31;
  v44 = v31;
  v45 = v120;
  v46 = v29;
  sub_10000BBC4(v44, v29, &qword_100834D98, &unk_1006C03B0);
  v47 = *(v45 + 48);
  v107 = v45 + 48;
  v48 = v47(v29, 1, v41);
  v49 = v128;
  v122 = v38;
  v123 = v32;
  v124 = v36;
  v103 = v47;
  if (v48 == 1)
  {
    goto LABEL_2;
  }

  v52 = v29;
  v53 = v111;
  sub_10000BBC4(v52, v111, &qword_100834D98, &unk_1006C03B0);
  v54 = (*(v45 + 88))(v53, v41);
  v51 = v41;
  if (v54 == enum case for EncryptedMessageEntity.idvServer(_:))
  {
    v55 = v128[13];
    v56 = v123;
    v55(v122, enum case for DIPCertUsage.inoEncryption(_:), v123);
    v57 = enum case for DIPCertUsage.inoSigning(_:);
    v58 = v124;
LABEL_8:
    v55(v58, v57, v56);
    v61 = v46;
LABEL_9:
    sub_10000BE18(v61, &qword_100834D98, &unk_1006C03B0);
    goto LABEL_10;
  }

  v59 = v124;
  if (v54 == enum case for EncryptedMessageEntity.ino(_:))
  {
    v60 = &enum case for DIPCertUsage.inoEncryption(_:);
LABEL_7:
    v55 = v128[13];
    v56 = v123;
    v55(v122, *v60, v123);
    v57 = enum case for DIPCertUsage.inoSigning(_:);
    v58 = v59;
    goto LABEL_8;
  }

  if (v54 != enum case for EncryptedMessageEntity.athena(_:) && v54 != enum case for EncryptedMessageEntity.assessor(_:))
  {
    v82 = enum case for EncryptedMessageEntity.issuer(_:);
    if (v54 != enum case for EncryptedMessageEntity.issuer(_:))
    {
      v99 = v45;
      if (v54 != enum case for EncryptedMessageEntity.issuingService(_:))
      {
        (*(v45 + 8))(v53, v51);
        v38 = v122;
        v32 = v123;
        v49 = v128;
        v41 = v51;
        v36 = v124;
LABEL_2:
        v50 = v49[13];
        v50(v38, enum case for DIPCertUsage.inoEncryption(_:), v32);
        v50(v36, enum case for DIPCertUsage.inoSigning(_:), v32);
        sub_10000BE18(v46, &qword_100834D98, &unk_1006C03B0);
        v51 = v41;
        goto LABEL_10;
      }

      v100 = v121;
      sub_10000BE18(v121, &qword_100834D98, &unk_1006C03B0);
      v101 = v128[13];
      v102 = v123;
      v101(v122, enum case for DIPCertUsage.inoEncryption(_:), v123);
      v101(v124, enum case for DIPCertUsage.inoSigning(_:), v102);
      (*(v99 + 104))(v100, v82, v51);
      (*(v99 + 56))(v100, 0, 1, v51);
      v61 = v46;
      goto LABEL_9;
    }

    v60 = &enum case for DIPCertUsage.identityEncryptionExternal(_:);
    goto LABEL_7;
  }

  sub_10000BE18(v46, &qword_100834D98, &unk_1006C03B0);
  v97 = v128[13];
  v98 = v123;
  v97(v122, enum case for DIPCertUsage.accountAssessmentServerEncryption(_:), v123);
  v97(v59, enum case for DIPCertUsage.accountAssessmentServerSigning(_:), v98);
LABEL_10:
  v62 = v125;
  v63 = v116;
  sub_10000BBC4(v125, v116, &unk_100839AC0, &unk_1006D4948);
  v64 = *(v63 + 8);

  v65 = v119;
  v66 = (v63 + *(v119 + 48));
  v68 = *v66;
  v67 = v66[1];

  sub_100100840(v66, type metadata accessor for EncryptionCertificateInStringFormat);
  v69 = v117;
  v70 = DIPOIDVerifier.verifyLeaf(fromBase64DER:forUsage:)();
  if (v69)
  {

    v126 = 0;
    v127 = 0xE000000000000000;
    _StringGuts.grow(_:)(50);

    v126 = 0xD000000000000030;
    v127 = 0x80000001006FF480;
    String.append(_:)(*v62);
    (*(v112 + 104))(v114, enum case for DIPError.Code.internalError(_:), v113);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1001008A0(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    sub_10000BE18(v121, &qword_100834D98, &unk_1006C03B0);
    v71 = v128[1];
    v72 = v123;
    v71(v124, v123);
    return (v71)(v122, v72);
  }

  else
  {
    v74 = v70;

    v75 = v108;
    sub_10000BBC4(v62, v108, &unk_100839AC0, &unk_1006D4948);
    v76 = *(v75 + 8);

    v77 = v75 + *(v65 + 48);
    v79 = *(v77 + 16);
    v78 = *(v77 + 24);

    sub_100100840(v77, type metadata accessor for EncryptionCertificateInStringFormat);
    if (v78)
    {
      v80 = DIPOIDVerifier.verifyLeaf(fromBase64DER:forUsage:)();
      v81 = v109;
      v83 = v80;
    }

    else
    {
      v83 = 0;
      v81 = v109;
    }

    v84 = v110;
    sub_10000BBC4(v62, v110, &unk_100839AC0, &unk_1006D4948);
    v85 = *v84;
    v86 = v84[1];
    sub_10000BBC4(v121, v81, &qword_100834D98, &unk_1006C03B0);
    v87 = v103;
    if (v103(v81, 1, v51) == 1)
    {
      v88 = *(v120 + 104);
      v125 = v86;
      v88(v104, enum case for EncryptedMessageEntity.ino(_:), v51);
      v89 = v87(v81, 1, v51);
      v86 = v125;
      if (v89 != 1)
      {
        sub_10000BE18(v81, &qword_100834D98, &unk_1006C03B0);
      }
    }

    else
    {
      (*(v120 + 32))(v104, v81, v51);
    }

    v90 = *(v119 + 48);
    v91 = v83;
    v92 = v74;
    v93 = v105;
    RecipientEncryptionCertificate.init(keyAgreement:signing:recipient:)();
    v94 = type metadata accessor for RecipientEncryptionCertificate();
    (*(*(v94 - 8) + 56))(v93, 0, 1, v94);
    sub_10014C0FC(v93, v85, v86);

    sub_10000BE18(v121, &qword_100834D98, &unk_1006C03B0);
    v95 = v128[1];
    v96 = v123;
    v95(v124, v123);
    v95(v122, v96);
    return sub_100100840(v110 + v90, type metadata accessor for EncryptionCertificateInStringFormat);
  }
}

void *sub_1000FEC7C()
{
  v1 = sub_100007224(&qword_1008353E0, &qword_1006C0F18);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v18 - v3;
  v5 = type metadata accessor for HardwareAttestationType();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Workflow();
  v11 = *(v10 + 76);
  if (*(v0 + v11))
  {
    v12 = *(v0 + v11);
  }

  else
  {
    sub_10000BBC4(v0 + *(v10 + 72), v4, &qword_1008353E0, &qword_1006C0F18);
    if ((*(v6 + 48))(v4, 1, v5) == 1)
    {
      sub_10000BE18(v4, &qword_1008353E0, &qword_1006C0F18);
      v12 = _swiftEmptyArrayStorage;
    }

    else
    {
      v14 = *(v6 + 32);
      v13 = v6 + 32;
      v14(v9, v4, v5);
      sub_100007224(&qword_100839BC0, &qword_1006D49B0);
      v15 = *(v13 + 40);
      v16 = (*(v13 + 48) + 32) & ~*(v13 + 48);
      v12 = swift_allocObject();
      *(v12 + 1) = xmmword_1006BF520;
      v14(v12 + v16, v9, v5);
    }
  }

  return v12;
}

uint64_t sub_1000FEE80@<X0>(uint64_t a1@<X8>)
{
  v68 = type metadata accessor for EncryptedMessageEntity();
  v3 = *(v68 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v68);
  v67 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v66 = &v52 - v7;
  v64 = sub_100007224(&qword_10083A5D8, &qword_1006D8538);
  v8 = *(*(v64 - 8) + 64);
  v9 = __chkstk_darwin(v64);
  v63 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v65 = &v52 - v12;
  v13 = __chkstk_darwin(v11);
  v62 = &v52 - v14;
  __chkstk_darwin(v13);
  v16 = &v52 - v15;
  v17 = *(v1 + *(type metadata accessor for Workflow() + 112));
  if (v17)
  {
    v52 = v16;
    v53 = a1;
    v18 = v17 + 64;
    v19 = 1 << *(v17 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(v17 + 64);
    v22 = (v19 + 63) >> 6;
    v59 = enum case for EncryptedMessageEntity.assessor(_:);
    v58 = (v3 + 104);
    v60 = (v3 + 8);

    v24 = 0;
    v56 = v22;
    v57 = v18;
    v61 = result;
    if (v21)
    {
      while (1)
      {
        v25 = v24;
LABEL_9:
        v26 = __clz(__rbit64(v21)) | (v25 << 6);
        v27 = *(result + 56);
        v28 = (*(result + 48) + 16 * v26);
        v30 = *v28;
        v29 = v28[1];
        v31 = type metadata accessor for RecipientEncryptionCertificate();
        v32 = *(v31 - 8);
        v33 = v27 + *(v32 + 72) * v26;
        v34 = v64;
        v35 = v62;
        (*(v32 + 16))(&v62[*(v64 + 48)], v33, v31);
        *v35 = v30;
        v35[1] = v29;
        v36 = v65;
        sub_1000B1FC8(v35, v65, &qword_10083A5D8, &qword_1006D8538);
        v37 = v63;
        sub_10000BBC4(v36, v63, &qword_10083A5D8, &qword_1006D8538);
        v38 = *(v37 + 8);

        v39 = *(v34 + 48);
        RecipientEncryptionCertificate.recipient.getter();
        v54 = v32;
        v55 = v31;
        (*(v32 + 8))(v37 + v39, v31);
        (*v58)(v67, v59, v68);
        sub_1001008A0(&qword_10083A5E0, &type metadata accessor for EncryptedMessageEntity);
        dispatch thunk of RawRepresentable.rawValue.getter();
        dispatch thunk of RawRepresentable.rawValue.getter();
        if (v71 == v69 && v72 == v70)
        {
          break;
        }

        v40 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v41 = *v60;
        v42 = v68;
        (*v60)(v67, v68);
        v41(v66, v42);

        if (v40)
        {
          goto LABEL_17;
        }

        v21 &= v21 - 1;
        sub_10000BE18(v65, &qword_10083A5D8, &qword_1006D8538);
        v24 = v25;
        result = v61;
        v22 = v56;
        v18 = v57;
        if (!v21)
        {
          goto LABEL_6;
        }
      }

      v44 = *v60;
      v45 = v68;
      (*v60)(v67, v68);
      v44(v66, v45);

LABEL_17:

      v46 = v52;
      sub_1000B1FC8(v65, v52, &qword_10083A5D8, &qword_1006D8538);
      v47 = *(v46 + 8);

      v49 = v54;
      v48 = v55;
      v50 = v46 + *(v64 + 48);
      v51 = v53;
      (*(v54 + 32))(v53, v50, v55);
      return (*(v49 + 56))(v51, 0, 1, v48);
    }

    else
    {
LABEL_6:
      while (1)
      {
        v25 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          break;
        }

        if (v25 >= v22)
        {

          a1 = v53;
          goto LABEL_15;
        }

        v21 = *(v18 + 8 * v25);
        ++v24;
        if (v21)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
    }
  }

  else
  {
LABEL_15:
    v43 = type metadata accessor for RecipientEncryptionCertificate();
    return (*(*(v43 - 8) + 56))(a1, 1, 1, v43);
  }

  return result;
}

uint64_t sub_1000FF420@<X0>(char *a1@<X8>)
{
  v3 = type metadata accessor for EncryptedMessageEntity();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v10 = &v19[-v9];
  (*(v4 + 104))(&v19[-v9], enum case for EncryptedMessageEntity.idvServer(_:), v3);
  (*(v4 + 16))(v8, v10, v3);
  v11 = (*(v4 + 88))(v8, v3);
  v12 = enum case for EncryptedMessageEntity.livenessReview(_:);
  v13 = type metadata accessor for Workflow();
  if (v11 != v12)
  {
    v14 = *(v1 + *(v13 + 112));
    v16 = *(v4 + 8);

    v15 = v16(v8, v3);
    if (v14)
    {
      goto LABEL_3;
    }

LABEL_5:
    v17 = type metadata accessor for RecipientEncryptionCertificate();
    (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
    return (*(v4 + 8))(v10, v3);
  }

  v14 = *(v1 + *(v13 + 172));

  if (!v14)
  {
    goto LABEL_5;
  }

LABEL_3:
  __chkstk_darwin(v15);
  *&v19[-16] = v10;
  sub_1001618CC(sub_1001008E8, v14, a1);

  return (*(v4 + 8))(v10, v3);
}

uint64_t sub_1000FF674@<X0>(char *a1@<X8>)
{
  v3 = type metadata accessor for EncryptedMessageEntity();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v10 = &v19[-v9];
  v11 = enum case for EncryptedMessageEntity.livenessReview(_:);
  (*(v4 + 104))(&v19[-v9], enum case for EncryptedMessageEntity.livenessReview(_:), v3);
  (*(v4 + 16))(v8, v10, v3);
  v12 = (*(v4 + 88))(v8, v3);
  v13 = type metadata accessor for Workflow();
  if (v12 != v11)
  {
    v14 = *(v1 + *(v13 + 112));
    v16 = *(v4 + 8);

    v15 = v16(v8, v3);
    if (v14)
    {
      goto LABEL_3;
    }

LABEL_5:
    v17 = type metadata accessor for RecipientEncryptionCertificate();
    (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
    return (*(v4 + 8))(v10, v3);
  }

  v14 = *(v1 + *(v13 + 172));

  if (!v14)
  {
    goto LABEL_5;
  }

LABEL_3:
  __chkstk_darwin(v15);
  *&v19[-16] = v10;
  sub_1001618CC(sub_100100BCC, v14, a1);

  return (*(v4 + 8))(v10, v3);
}

uint64_t sub_1000FF8C0()
{
  v0 = type metadata accessor for EncryptedMessageEntity();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  RecipientEncryptionCertificate.recipient.getter();
  sub_1001008A0(&qword_10083A5E0, &type metadata accessor for EncryptedMessageEntity);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v7[2] == v7[0] && v7[3] == v7[1])
  {
    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  (*(v1 + 8))(v4, v0);

  return v5 & 1;
}

uint64_t sub_1000FFA4C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for DIPError.Code();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v3 + *(type metadata accessor for Workflow() + 112));
  if (v12 && *(v12 + 16) && (v13 = sub_10003ADCC(a1, a2), (v14 & 1) != 0))
  {
    v15 = v13;
    v16 = *(v12 + 56);
    v17 = type metadata accessor for RecipientEncryptionCertificate();
    return (*(*(v17 - 8) + 16))(a3, v16 + *(*(v17 - 8) + 72) * v15, v17);
  }

  else
  {
    v20 = 0;
    v21 = 0xE000000000000000;
    _StringGuts.grow(_:)(43);

    v20 = 0xD000000000000029;
    v21 = 0x80000001006FF4F0;
    v19._countAndFlagsBits = a1;
    v19._object = a2;
    String.append(_:)(v19);
    (*(v8 + 104))(v11, enum case for DIPError.Code.serverResponseInconsistent(_:), v7);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1001008A0(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    return swift_willThrow();
  }
}

unint64_t sub_1000FFCEC()
{
  result = qword_10083A5D0;
  if (!qword_10083A5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A5D0);
  }

  return result;
}

uint64_t sub_1000FFD40(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10000B870(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unsigned __int8 *sub_1000FFDD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_100100364();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_100100364()
{
  v0 = String.subscript.getter();
  v4 = sub_1001003E4(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_1001003E4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = Substring.UTF8View.distance(from:to:)();
  if (!v9)
  {
    v11 = _swiftEmptyArrayStorage;
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_100142424(v9, 0);
  v12 = sub_10010053C(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = static String._uncheckedFromUTF8(_:)();

    return v14;
  }

  __break(1u);
LABEL_11:
  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t sub_10010053C(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_10010075C(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_10010075C(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_10010075C(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = String.UTF8View._foreignIndex(_:offsetBy:)();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_1001007D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100100840(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1001008A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for Workflow.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xD7)
  {
    goto LABEL_17;
  }

  if (a2 + 41 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 41) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 41;
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

      return (*a1 | (v4 << 8)) - 41;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 41;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x2A;
  v8 = v6 - 42;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Workflow.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 41 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 41) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xD7)
  {
    v4 = 0;
  }

  if (a2 > 0xD6)
  {
    v5 = ((a2 - 215) >> 8) + 1;
    *result = a2 + 41;
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
    *result = a2 + 41;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100100A5C()
{
  result = qword_10083A5F0;
  if (!qword_10083A5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A5F0);
  }

  return result;
}

unint64_t sub_100100AB4()
{
  result = qword_10083A5F8;
  if (!qword_10083A5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A5F8);
  }

  return result;
}

unint64_t sub_100100B0C()
{
  result = qword_10083A600;
  if (!qword_10083A600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A600);
  }

  return result;
}

uint64_t sub_100100B60()
{
  v0 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v0 >= 0x2A)
  {
    return 42;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_100100BFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Workflow();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100100C7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Workflow();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for WorkflowRecommendationResponse()
{
  result = qword_10083A660;
  if (!qword_10083A660)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100100D38()
{
  result = type metadata accessor for Workflow();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

Swift::Int sub_100100DB0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100100EA8()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_100100F8C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100101080@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100101E34(*a1);
  *a2 = result;
  return result;
}

void sub_1001010B0(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x776F6C666B726F77;
  v5 = 0xD000000000000011;
  v6 = 0x80000001006F8BB0;
  v7 = 0xEF7344495547746ELL;
  v8 = 0x656D737365737361;
  if (v2 != 3)
  {
    v8 = 0xD000000000000011;
    v7 = 0x80000001006F8BE0;
  }

  if (v2 != 2)
  {
    v5 = v8;
    v6 = v7;
  }

  if (*v1)
  {
    v4 = 0xD000000000000014;
    v3 = 0x80000001006F8C00;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v5;
  }

  if (*v1 > 1u)
  {
    v3 = v6;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_100101164()
{
  v1 = *v0;
  v2 = 0x776F6C666B726F77;
  v3 = 0xD000000000000011;
  v4 = 0x656D737365737361;
  if (v1 != 3)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000014;
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

unint64_t sub_100101214@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100101E34(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10010123C(uint64_t a1)
{
  v2 = sub_10010196C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100101278(uint64_t a1)
{
  v2 = sub_10010196C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001012B4(uint64_t a1)
{
  v44 = v1;
  v2 = __chkstk_darwin(a1);
  v40 = v3;
  v4 = sub_100007224(&qword_10083A698, &qword_1006D8720);
  v41 = *(v4 - 8);
  v5 = *(v41 + 64);
  __chkstk_darwin(v4);
  v7 = &v39 - v6;
  v8 = sub_100007224(&qword_10083A6A0, &qword_1006D8728);
  v42 = *(v8 - 8);
  v43 = v8;
  v9 = *(v42 + 64);
  __chkstk_darwin(v8);
  v11 = &v39 - v10;
  v12 = type metadata accessor for WorkflowRecommendationResponse();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v2[3];
  v17 = v2[4];
  v48 = v2;
  sub_10000BA08(v2, v16);
  sub_10010196C();
  v18 = v44;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v18)
  {
    return sub_10000BB78(v48);
  }

  v19 = v41;
  v20 = v15;
  LOBYTE(v47[0]) = 0;
  sub_1001019C0();
  v21 = v43;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  JWSSignedJSON.payload.getter();
  (*(v19 + 8))(v7, v4);
  LOBYTE(v47[0]) = 2;
  v22 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v24 = v23;
  v25 = type metadata accessor for Workflow();
  v26 = v20;
  v27 = &v20[*(v25 + 164)];
  v28 = v27[1];

  *v27 = v22;
  v27[1] = v24;
  sub_100007224(&qword_100834EA0, &qword_1006C06B0);
  v46[0] = 3;
  sub_10007FD2C();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v30 = v47[0];
  v44 = v25;
  v31 = *(v25 + 160);
  v32 = *(v26 + v31);

  *(v26 + v31) = v30;
  LOBYTE(v47[0]) = 4;
  v33 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v35 = v34;
  v36 = (v26 + *(v44 + 168));
  v37 = v36[1];

  *v36 = v33;
  v36[1] = v35;
  v46[8583] = 1;
  sub_10007FDA8();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v42 + 8))(v11, v21);
  memcpy(v45, v47, sizeof(v45));
  v38 = *(v44 + 156);
  memcpy(v46, (v26 + v38), 0x2181uLL);
  sub_100101A24(v46);
  memcpy((v26 + v38), v45, 0x2181uLL);
  sub_100101A8C(v26, v40);
  sub_10000BB78(v48);
  return sub_100101AF0(v26, type metadata accessor for WorkflowRecommendationResponse);
}

uint64_t sub_1001017B8(void *a1)
{
  v2 = v1;
  v4 = sub_100007224(&qword_10083A6E0, &qword_1006D8928);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v14 - v7;
  v9 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_100102060();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10 = v2[3];
  v17 = v2[2];
  v18 = v10;
  v11 = v2[5];
  v19 = v2[4];
  v20 = v11;
  v12 = v2[1];
  v15 = *v2;
  v16 = v12;
  sub_1001020B4(v2, v14);
  sub_1000B14B0();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v14[2] = v17;
  v14[3] = v18;
  v14[4] = v19;
  v14[5] = v20;
  v14[0] = v15;
  v14[1] = v16;
  sub_1000ACC70(v14);
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_10010196C()
{
  result = qword_10083A6A8;
  if (!qword_10083A6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A6A8);
  }

  return result;
}

unint64_t sub_1001019C0()
{
  result = qword_10083A6B0;
  if (!qword_10083A6B0)
  {
    sub_10000B870(&qword_10083A698, &qword_1006D8720);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A6B0);
  }

  return result;
}

uint64_t sub_100101A24(uint64_t a1)
{
  v2 = sub_100007224(&qword_100839990, &unk_1006C19E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100101A8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkflowRecommendationResponse();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100101AF0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100101B74()
{
  result = qword_10083A6B8;
  if (!qword_10083A6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A6B8);
  }

  return result;
}

uint64_t sub_100101BEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65736E6F70736572 && a2 == 0xEE00726564616548)
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

uint64_t sub_100101C7C(uint64_t a1)
{
  v2 = sub_100102060();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100101CB8(uint64_t a1)
{
  v2 = sub_100102060();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100101CF4@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_100101E80(a1, v8);
  if (!v2)
  {
    v5 = v8[3];
    a2[2] = v8[2];
    a2[3] = v5;
    v6 = v8[5];
    a2[4] = v8[4];
    a2[5] = v6;
    result = *v8;
    v7 = v8[1];
    *a2 = v8[0];
    a2[1] = v7;
  }

  return result;
}

uint64_t sub_100101D40(void *a1)
{
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v3 = *v1;
  v4 = v1[1];
  return sub_1001017B8(a1);
}

unint64_t sub_100101D88()
{
  result = qword_10083A6C0;
  if (!qword_10083A6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A6C0);
  }

  return result;
}

unint64_t sub_100101DE0()
{
  result = qword_10083A6C8;
  if (!qword_10083A6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A6C8);
  }

  return result;
}

unint64_t sub_100101E34(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1007FAD38, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100101E80@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_100007224(&qword_10083A6D0, &qword_1006D8920);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_100102060();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000BB78(a1);
  }

  sub_1000ACC1C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  v17 = v23;
  v18 = v24;
  v19 = v25;
  v20 = v26;
  v15 = v21;
  v16 = v22;
  result = sub_10000BB78(a1);
  v12 = v18;
  a2[2] = v17;
  a2[3] = v12;
  v13 = v20;
  a2[4] = v19;
  a2[5] = v13;
  v14 = v16;
  *a2 = v15;
  a2[1] = v14;
  return result;
}

unint64_t sub_100102060()
{
  result = qword_10083A6D8;
  if (!qword_10083A6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A6D8);
  }

  return result;
}

unint64_t sub_100102100()
{
  result = qword_10083A6E8;
  if (!qword_10083A6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A6E8);
  }

  return result;
}

unint64_t sub_100102158()
{
  result = qword_10083A6F0;
  if (!qword_10083A6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A6F0);
  }

  return result;
}

unint64_t sub_1001021B0()
{
  result = qword_10083A6F8;
  if (!qword_10083A6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A6F8);
  }

  return result;
}

id sub_100102204(id a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = _convertErrorToNSError(_:)();
  v8 = [v7 domain];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v12 = DIVerificationErrorDomain;
  if (v9 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v11 == v13)
  {

    goto LABEL_9;
  }

  v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v15)
  {
LABEL_9:
    swift_errorRetain();
    return a1;
  }

  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;
  *&v44 = a1;
  swift_errorRetain();
  sub_100007224(&qword_100833B90, &qword_1006D95C0);
  v19 = String.init<A>(describing:)();
  v45 = &type metadata for String;
  *&v44 = v19;
  *(&v44 + 1) = v20;
  sub_10001F348(&v44, v43);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v42 = &_swiftEmptyDictionarySingleton;
  sub_10016CC40(v43, v16, v18, isUniquelyReferenced_nonNull_native);

  v22 = _convertErrorToNSError(_:)();
  v23 = sub_1001025F8([v22 code]);
  v24 = objc_allocWithZone(NSError);
  v25 = v12;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v27 = [v24 initWithDomain:v25 code:v23 userInfo:isa];

  defaultLogger()();
  a1 = v27;
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v41 = v3;
    v32 = v31;
    *&v44 = v31;
    *v30 = 134349314;
    *(v30 + 4) = v23;
    *(v30 + 12) = 2082;
    v33 = [a1 localizedDescription];
    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v40 = v22;
    v36 = v35;

    v37 = sub_100141FE4(v34, v36, &v44);

    *(v30 + 14) = v37;
    _os_log_impl(&_mh_execute_header, v28, v29, "Returning DIVerificationError (%{public}ld) with description: %{public}s", v30, 0x16u);
    sub_10000BB78(v32);

    (*(v41 + 8))(v6, v2);
  }

  else
  {

    (*(v3 + 8))(v6, v2);
  }

  return a1;
}

uint64_t sub_1001025F8(uint64_t a1)
{
  v2 = sub_100007224(&qword_10083B020, &unk_1006D8ED0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v20 - v4;
  v6 = type metadata accessor for DIPError.Code();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(a1);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v14 = &v20 - v13;
  if (result >= 0xFFFFFFFFFFFFFFECLL)
  {
    return result;
  }

  if (result <= 40200)
  {
    if ((result - 40101) < 2 || result == -22)
    {
      return result;
    }
  }

  else if ((result - 40401) < 2 || result == 40201 || result == 50001)
  {
    return result;
  }

  DIPError.Code.init(rawValue:)();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1000451E8(v5);
    return -1;
  }

  v15 = *(v7 + 32);
  v15(v14, v5, v6);
  v15(v11, v14, v6);
  v16 = (*(v7 + 88))(v11, v6);
  if (v16 == enum case for DIPError.Code.topekaInvalidRequestMandatoryAttributeMissing(_:) || v16 == enum case for DIPError.Code.topekaInvalidRequestInvalidAttributeLength(_:) || v16 == enum case for DIPError.Code.topekaInvalidRequestInvalidAttributeType(_:))
  {
    return -6;
  }

  if (v16 == enum case for DIPError.Code.topekaUnderageUser(_:))
  {
    return -22;
  }

  if (v16 == enum case for DIPError.Code.topekaInvalidOTP(_:))
  {
    return -6;
  }

  v19 = v16;
  result = -11;
  if (v19 != enum case for DIPError.Code.timeoutNetworkBAA(_:) && v19 != enum case for DIPError.Code.timeoutNetworkConfig(_:) && v19 != enum case for DIPError.Code.timeoutNetworkSendOTD(_:))
  {
    (*(v7 + 8))(v11, v6);
    return -1;
  }

  return result;
}

uint64_t sub_1001028E0@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v101 = a3;
  v91 = a2;
  v94 = a1;
  v3 = type metadata accessor for ISO18013DigestAlgorithm();
  v99 = *(v3 - 8);
  v100 = v3;
  v4 = *(v99 + 64);
  __chkstk_darwin(v3);
  v98 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CredentialBuilderTimePolicy();
  v95 = *(v6 - 8);
  v96 = v6;
  v7 = *(v95 + 64);
  __chkstk_darwin(v6);
  v97 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100007224(&qword_10083A700, &qword_1006D8A40);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v93 = &v75 - v11;
  v12 = sub_100007224(&qword_10083A708, &qword_1006D8A48);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v92 = &v75 - v14;
  v15 = type metadata accessor for COSEKey();
  v88 = *(v15 - 8);
  v89 = v15;
  v16 = *(v88 + 64);
  __chkstk_darwin(v15);
  v90 = &v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for CredentialBuilderPayloadFormat();
  v86 = *(v18 - 8);
  v87 = v18;
  v19 = *(v86 + 64);
  __chkstk_darwin(v18);
  v104 = &v75 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for DeveloperTestPhotoIDCredentialBuilder();
  v76 = *(v77 - 8);
  v21 = *(v76 + 64);
  __chkstk_darwin(v77);
  v75 = &v75 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for DeveloperTestJapanNationalIDCardCredentialBuilder();
  v79 = *(v80 - 8);
  v23 = *(v79 + 64);
  __chkstk_darwin(v80);
  v78 = &v75 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for ISO18013KnownDocTypes();
  v83 = *(v84 - 8);
  v25 = *(v83 + 64);
  __chkstk_darwin(v84);
  v27 = &v75 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_100007224(&unk_100849400, &unk_1006BFBB0);
  v29 = *(*(v28 - 8) + 64);
  v30 = __chkstk_darwin(v28 - 8);
  v85 = &v75 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v30);
  v34 = &v75 - v33;
  __chkstk_darwin(v32);
  v36 = &v75 - v35;
  v37 = type metadata accessor for Date();
  v38 = *(v37 - 8);
  v39 = *(v38 + 64);
  v40 = __chkstk_darwin(v37);
  v103 = &v75 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __chkstk_darwin(v40);
  v44 = &v75 - v43;
  __chkstk_darwin(v42);
  v46 = &v75 - v45;
  v47 = [objc_allocWithZone(NSISO8601DateFormatter) init];
  v48 = String._bridgeToObjectiveC()();
  v102 = v47;
  v49 = [v47 dateFromString:v48];

  v105 = v44;
  v82 = v27;
  if (v49)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v50 = *(v38 + 32);
    v50(v36, v44, v37);
    v51 = *(v38 + 56);
    v51(v36, 0, 1, v37);
    v52 = v46;
    v50(v46, v36, v37);
  }

  else
  {
    v51 = *(v38 + 56);
    v51(v36, 1, 1, v37);
    v52 = v46;
    Date.init()();
    if ((*(v38 + 48))(v36, 1, v37) != 1)
    {
      sub_100103444(v36);
    }
  }

  v53 = String._bridgeToObjectiveC()();
  v54 = [v102 dateFromString:v53];

  if (v54)
  {
    v55 = v105;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v56 = *(v38 + 32);
    v56(v34, v55, v37);
    v51(v34, 0, 1, v37);
    v56(v103, v34, v37);
    v57 = v52;
    v58 = v82;
  }

  else
  {
    v51(v34, 1, 1, v37);
    Date.init()();
    v59 = (*(v38 + 48))(v34, 1, v37);
    v57 = v52;
    v58 = v82;
    if (v59 != 1)
    {
      sub_100103444(v34);
    }
  }

  v60 = v83;
  v61 = v84;
  (*(v83 + 16))(v58, v91, v84);
  v62 = (*(v60 + 88))(v58, v61);
  v63 = v105;
  if (v62 == enum case for ISO18013KnownDocTypes.iso18013_5_1_mDL(_:))
  {
    v81 = static DeveloperTestMDLCredentialBuilder.payloadElements.getter();
  }

  else if (v62 == enum case for ISO18013KnownDocTypes.japanNationalIDCard(_:))
  {
    v64 = v78;
    DeveloperTestJapanNationalIDCardCredentialBuilder.init()();
    v81 = DeveloperTestJapanNationalIDCardCredentialBuilder.payloadElements.getter();
    (*(v79 + 8))(v64, v80);
  }

  else if (v62 == enum case for ISO18013KnownDocTypes.photoID(_:))
  {
    v65 = v75;
    DeveloperTestPhotoIDCredentialBuilder.init()();
    v81 = DeveloperTestPhotoIDCredentialBuilder.payloadElements.getter();
    (*(v76 + 8))(v65, v77);
  }

  else
  {
    v81 = sub_10003E9A0(_swiftEmptyArrayStorage);
    (*(v60 + 8))(v58, v61);
  }

  (*(v86 + 104))(v104, enum case for CredentialBuilderPayloadFormat.ISO18013_5_1(_:), v87);
  v66 = ISO18013KnownDocTypes.rawValue.getter();
  v86 = v67;
  v87 = v66;
  v68 = *(v38 + 16);
  v69 = v85;
  v68(v85, v57, v37);
  v51(v69, 0, 1, v37);
  v91 = v57;
  v70 = v103;
  v68(v63, v103, v37);
  (*(v88 + 16))(v90, v94, v89);
  v71 = type metadata accessor for CredentialBuilderPayloadDetails.KeyAuthorizations();
  (*(*(v71 - 8) + 56))(v92, 1, 1, v71);
  v72 = type metadata accessor for CredentialBuilderPayloadStatusDetails();
  (*(*(v72 - 8) + 56))(v93, 1, 1, v72);
  (*(v95 + 104))(v97, enum case for CredentialBuilderTimePolicy.notSpecified(_:), v96);
  (*(v99 + 104))(v98, enum case for ISO18013DigestAlgorithm.sha256(_:), v100);
  CredentialBuilderPayloadDetails.init(format:docType:elements:validFrom:validUntil:timePolicy:deviceKey:deviceKeyAuthorizations:signingAlgorithm:digestAlgorithm:status:)();

  v73 = *(v38 + 8);
  v73(v70, v37);
  return (v73)(v91, v37);
}

uint64_t sub_100103444(uint64_t a1)
{
  v2 = sub_100007224(&unk_100849400, &unk_1006BFBB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001034C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ISO18013KnownDocTypes();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100103540(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ISO18013KnownDocTypes();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for DeveloperTestJapanNationalIDCardPayloadBuilder()
{
  result = qword_10083A768;
  if (!qword_10083A768)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001035FC()
{
  result = type metadata accessor for ISO18013KnownDocTypes();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100103668(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v3 = type metadata accessor for CredentialBuilderPayloadDetails();
  v2[14] = v3;
  v4 = *(v3 - 8);
  v2[15] = v4;
  v5 = *(v4 + 64) + 15;
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_100103728, 0, 0);
}

uint64_t sub_100103728()
{
  sub_1001028E0(*(v0 + 96), *(v0 + 104), *(v0 + 128));
  v1 = *(v0 + 104);
  *(v0 + 40) = type metadata accessor for DeveloperTestJapanNationalIDCardPayloadBuilder();
  *(v0 + 48) = sub_100103D38();
  v2 = sub_100032DBC((v0 + 16));
  sub_100103D90(v1, v2);
  *(v0 + 80) = type metadata accessor for DateProvider();
  *(v0 + 88) = &protocol witness table for DateProvider;
  sub_100032DBC((v0 + 56));
  DateProvider.init()();
  v3 = objc_allocWithZone(type metadata accessor for IdentityCredentialPayloadBuilder());
  *(v0 + 136) = IdentityCredentialPayloadBuilder.init(with:dateProvider:)();
  v4 = *(&async function pointer to dispatch thunk of IdentityCredentialPayloadBuilder.buildPayload(with:) + 1);
  v8 = (&async function pointer to dispatch thunk of IdentityCredentialPayloadBuilder.buildPayload(with:) + async function pointer to dispatch thunk of IdentityCredentialPayloadBuilder.buildPayload(with:));
  v5 = swift_task_alloc();
  *(v0 + 144) = v5;
  *v5 = v0;
  v5[1] = sub_1001038A0;
  v6 = *(v0 + 128);

  return v8(v6);
}

uint64_t sub_1001038A0(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 144);
  v8 = *v3;
  *(*v3 + 152) = v2;

  if (v2)
  {
    v9 = sub_100103A68;
  }

  else
  {
    *(v6 + 160) = a2;
    *(v6 + 168) = a1;
    v9 = sub_1001039D4;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_1001039D4()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 112);
  v3 = *(v0 + 120);

  (*(v3 + 8))(v1, v2);

  v4 = *(v0 + 8);
  v6 = *(v0 + 160);
  v5 = *(v0 + 168);

  return v4(v5, v6);
}

uint64_t sub_100103A68()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 112);
  v3 = *(v0 + 120);

  (*(v3 + 8))(v1, v2);
  v4 = *(v0 + 152);
  v5 = *(v0 + 128);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100103AF8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100103B8C;

  return sub_100103668(a1);
}

uint64_t sub_100103B8C(uint64_t a1, uint64_t a2)
{
  v6 = *(*v3 + 16);
  v11 = *v3;

  v9 = *(v11 + 8);
  if (!v2)
  {
    v7 = a1;
    v8 = a2;
  }

  return v9(v7, v8);
}

uint64_t sub_100103C9C()
{
  v1 = type metadata accessor for __DataStorage();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  __DataStorage.init(length:)();
  CredentialBuilderSignatureDetails.init(signingAlgorithm:issuerCertificate:signature:)();
  v4 = *(v0 + 8);

  return v4();
}

unint64_t sub_100103D38()
{
  result = qword_10083A7A0;
  if (!qword_10083A7A0)
  {
    type metadata accessor for DeveloperTestJapanNationalIDCardPayloadBuilder();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A7A0);
  }

  return result;
}

uint64_t sub_100103D90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeveloperTestJapanNationalIDCardPayloadBuilder();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100103DF4()
{
  v1[7] = v0;
  v2 = type metadata accessor for COSEKey();
  v1[8] = v2;
  v3 = *(v2 - 8);
  v1[9] = v3;
  v4 = *(v3 + 64) + 15;
  v1[10] = swift_task_alloc();
  v5 = type metadata accessor for ISO18013KnownDocTypes();
  v1[11] = v5;
  v6 = *(v5 - 8);
  v1[12] = v6;
  v7 = *(v6 + 64) + 15;
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v1[16] = v8;
  v9 = *(v8 - 8);
  v1[17] = v9;
  v10 = *(v9 + 64) + 15;
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();

  return _swift_task_switch(sub_100103FB4, 0, 0);
}

uint64_t sub_100103FB4()
{
  v82 = v0;
  v1 = objc_opt_self();
  *(v0 + 184) = v1;
  v2 = [v1 standardUserDefaults];
  v3._countAndFlagsBits = static DaemonInternalDefaultsKeys.deleteDeveloperTestMDLBeforeCreation.getter();
  v4 = NSUserDefaults.internalBool(forKey:)(v3);

  if (v4)
  {
    v5 = *(v0 + 176);
    defaultLogger()();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Deleting existing developer test mDL due to user defaults setting", v8, 2u);
    }

    v9 = *(v0 + 176);
    v10 = *(v0 + 128);
    v11 = *(v0 + 136);

    (*(v11 + 8))(v9, v10);
    v12 = swift_task_alloc();
    *(v0 + 192) = v12;
    *v12 = v0;
    v12[1] = sub_10010461C;
    v13 = *(v0 + 56);

    return sub_100106BAC();
  }

  v15 = [*(v0 + 184) standardUserDefaults];
  v16._countAndFlagsBits = static DaemonInternalDefaultsKeys.skipDeveloperTestMDLCreation.getter();
  v17 = NSUserDefaults.internalBool(forKey:)(v16);

  if (v17)
  {
    v18 = *(v0 + 168);
    defaultLogger()();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();
    v21 = os_log_type_enabled(v19, v20);
    v22 = *(v0 + 168);
    v23 = *(v0 + 128);
    v24 = *(v0 + 136);
    if (v21)
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "Skipping creation of developer test mDL due to user defaults setting", v25, 2u);
    }

    (*(v24 + 8))(v22, v23);
LABEL_11:
    v27 = *(v0 + 168);
    v26 = *(v0 + 176);
    v29 = *(v0 + 152);
    v28 = *(v0 + 160);
    v30 = *(v0 + 144);
    v32 = *(v0 + 112);
    v31 = *(v0 + 120);
    v33 = *(v0 + 104);
    v34 = *(v0 + 80);

    v35 = *(v0 + 8);

    return v35();
  }

  v36 = *(v0 + 160);
  v37 = *(v0 + 56);
  defaultLogger()();

  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.debug.getter();

  v40 = os_log_type_enabled(v38, v39);
  v41 = *(v0 + 160);
  v43 = *(v0 + 128);
  v42 = *(v0 + 136);
  if (v40)
  {
    v44 = *(v0 + 88);
    v45 = *(v0 + 56);
    v80 = *(v0 + 160);
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v81 = v47;
    *v46 = 136315138;
    v48 = *(v45 + 56);

    sub_100007224(&qword_10083A858, &qword_1006D8B00);
    sub_10010802C(&qword_1008348B0, &type metadata accessor for ISO18013KnownDocTypes);
    v49 = Dictionary.Keys.description.getter();
    v51 = v50;

    v52 = sub_100141FE4(v49, v51, &v81);

    *(v46 + 4) = v52;
    _os_log_impl(&_mh_execute_header, v38, v39, "DeveloperTestMDLManager self.iso18013DocTypes %s", v46, 0xCu);
    sub_10000BB78(v47);

    v55 = *(v42 + 8);
    v53 = v42 + 8;
    v54 = v55;
    v55(v80, v43);
  }

  else
  {

    v56 = *(v42 + 8);
    v53 = v42 + 8;
    v54 = v56;
    v56(v41, v43);
  }

  *(v0 + 200) = v53;
  *(v0 + 208) = v54;
  v57 = *(v0 + 96);
  v58 = *(v0 + 56);
  v59 = v58[7];
  *(v0 + 216) = v59;
  v60 = *(v59 + 32);
  *(v0 + 400) = v60;
  v61 = -1;
  v62 = -1 << v60;
  if (-(-1 << v60) < 64)
  {
    v61 = ~(-1 << -v62);
  }

  v63 = v61 & *(v59 + 64);

  if (!v63)
  {
    v66 = 0;
    while (((63 - v62) >> 6) - 1 != v66)
    {
      v65 = v66 + 1;
      v63 = *(v64 + 8 * v66++ + 72);
      if (v63)
      {
        goto LABEL_24;
      }
    }

    goto LABEL_11;
  }

  v65 = 0;
LABEL_24:
  *(v0 + 224) = v63;
  *(v0 + 232) = v65;
  v67 = *(v0 + 112);
  v68 = *(v0 + 120);
  v69 = *(v0 + 88);
  v70 = *(v64 + 48) + *(v57 + 72) * (__clz(__rbit64(v63)) | (v65 << 6));
  v71 = *(v57 + 16);
  *(v0 + 240) = v71;
  *(v0 + 248) = (v57 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v71(v68, v70, v69);
  (*(v57 + 32))(v67, v68, v69);
  v72._countAndFlagsBits = 0x6335333332343730;
  v73._object = 0x80000001006FF5D0;
  v72._object = 0xE800000000000000;
  v73._countAndFlagsBits = 0xD00000000000003DLL;
  logMilestone(tag:description:)(v72, v73);
  v74 = sub_10000BA08(v58 + 2, v58[5]);
  v75 = ISO18013KnownDocTypes.rawValue.getter();
  v77 = v76;
  *(v0 + 256) = v76;
  v78 = *v74;
  v79 = swift_task_alloc();
  *(v0 + 264) = v79;
  *v79 = v0;
  v79[1] = sub_100104CEC;

  return sub_10050657C(&off_1007FAE00, v75, v77, v78);
}

uint64_t sub_10010461C()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v4 = *v1;

  if (v0)
  {
    v6 = v2[21];
    v5 = v2[22];
    v8 = v2[19];
    v7 = v2[20];
    v9 = v2[18];
    v11 = v2[14];
    v10 = v2[15];
    v12 = v2[13];
    v13 = v2[10];

    v14 = *(v4 + 8);

    return v14();
  }

  else
  {

    return _swift_task_switch(sub_1001047D8, 0, 0);
  }
}

uint64_t sub_1001047D8()
{
  v69 = v0;
  v1 = [*(v0 + 184) standardUserDefaults];
  v2._countAndFlagsBits = static DaemonInternalDefaultsKeys.skipDeveloperTestMDLCreation.getter();
  v3 = NSUserDefaults.internalBool(forKey:)(v2);

  if (v3)
  {
    v4 = *(v0 + 168);
    defaultLogger()();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    v7 = os_log_type_enabled(v5, v6);
    v8 = *(v0 + 168);
    v9 = *(v0 + 128);
    v10 = *(v0 + 136);
    if (v7)
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Skipping creation of developer test mDL due to user defaults setting", v11, 2u);
    }

    (*(v10 + 8))(v8, v9);
LABEL_5:
    v13 = *(v0 + 168);
    v12 = *(v0 + 176);
    v15 = *(v0 + 152);
    v14 = *(v0 + 160);
    v16 = *(v0 + 144);
    v18 = *(v0 + 112);
    v17 = *(v0 + 120);
    v19 = *(v0 + 104);
    v20 = *(v0 + 80);

    v21 = *(v0 + 8);

    return v21();
  }

  v23 = *(v0 + 160);
  v24 = *(v0 + 56);
  defaultLogger()();

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.debug.getter();

  v27 = os_log_type_enabled(v25, v26);
  v28 = *(v0 + 160);
  v30 = *(v0 + 128);
  v29 = *(v0 + 136);
  if (v27)
  {
    v31 = *(v0 + 88);
    v32 = *(v0 + 56);
    v67 = *(v0 + 160);
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v68 = v34;
    *v33 = 136315138;
    v35 = *(v32 + 56);

    sub_100007224(&qword_10083A858, &qword_1006D8B00);
    sub_10010802C(&qword_1008348B0, &type metadata accessor for ISO18013KnownDocTypes);
    v36 = Dictionary.Keys.description.getter();
    v38 = v37;

    v39 = sub_100141FE4(v36, v38, &v68);

    *(v33 + 4) = v39;
    _os_log_impl(&_mh_execute_header, v25, v26, "DeveloperTestMDLManager self.iso18013DocTypes %s", v33, 0xCu);
    sub_10000BB78(v34);

    v42 = *(v29 + 8);
    v40 = v29 + 8;
    v41 = v42;
    v42(v67, v30);
  }

  else
  {

    v43 = *(v29 + 8);
    v40 = v29 + 8;
    v41 = v43;
    v43(v28, v30);
  }

  *(v0 + 200) = v40;
  *(v0 + 208) = v41;
  v44 = *(v0 + 96);
  v45 = *(v0 + 56);
  v46 = v45[7];
  *(v0 + 216) = v46;
  v47 = *(v46 + 32);
  *(v0 + 400) = v47;
  v48 = -1;
  v49 = -1 << v47;
  if (-(-1 << v47) < 64)
  {
    v48 = ~(-1 << -v49);
  }

  v50 = v48 & *(v46 + 64);

  if (!v50)
  {
    v53 = 0;
    while (((63 - v49) >> 6) - 1 != v53)
    {
      v52 = v53 + 1;
      v50 = *(v51 + 8 * v53++ + 72);
      if (v50)
      {
        goto LABEL_18;
      }
    }

    goto LABEL_5;
  }

  v52 = 0;
LABEL_18:
  *(v0 + 224) = v50;
  *(v0 + 232) = v52;
  v54 = *(v0 + 112);
  v55 = *(v0 + 120);
  v56 = *(v0 + 88);
  v57 = *(v51 + 48) + *(v44 + 72) * (__clz(__rbit64(v50)) | (v52 << 6));
  v58 = *(v44 + 16);
  *(v0 + 240) = v58;
  *(v0 + 248) = (v44 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v58(v55, v57, v56);
  (*(v44 + 32))(v54, v55, v56);
  v59._countAndFlagsBits = 0x6335333332343730;
  v60._object = 0x80000001006FF5D0;
  v59._object = 0xE800000000000000;
  v60._countAndFlagsBits = 0xD00000000000003DLL;
  logMilestone(tag:description:)(v59, v60);
  v61 = sub_10000BA08(v45 + 2, v45[5]);
  v62 = ISO18013KnownDocTypes.rawValue.getter();
  v64 = v63;
  *(v0 + 256) = v63;
  v65 = *v61;
  v66 = swift_task_alloc();
  *(v0 + 264) = v66;
  *v66 = v0;
  v66[1] = sub_100104CEC;

  return sub_10050657C(&off_1007FAE00, v62, v64, v65);
}

uint64_t sub_100104CEC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 264);
  v6 = *v2;
  *(v4 + 272) = a1;
  *(v4 + 280) = v1;

  v7 = *(v3 + 256);

  if (v1)
  {
    v8 = sub_1001053B0;
  }

  else
  {
    v8 = sub_100104E28;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_100104E28()
{
  v68 = v0;
  if (!*(*(v0 + 272) + 16) || (v1 = sub_10003ADCC(0x797469746E656469, 0xED0000747365742DLL), (v2 & 1) == 0))
  {

    goto LABEL_7;
  }

  v3 = *(*(*(v0 + 272) + 56) + 8 * v1);

  v4 = *(v3 + 16);

  if (!v4)
  {
LABEL_7:
    v29 = *(v0 + 56);
    v30 = [objc_allocWithZone(DCCredentialOptions) init];
    *(v0 + 288) = v30;
    [v30 setReaderAuthenticationPolicy:1];
    [v30 setPayloadProtectionPolicy:0];
    [v30 setPresentmentAuthPolicy:1];
    v31 = *sub_10000BA08((v29 + 16), *(v29 + 40));
    v32 = v30;
    v33 = swift_task_alloc();
    *(v0 + 296) = v33;
    *v33 = v0;
    v33[1] = sub_1001054B0;

    return sub_100506EC8(0x797469746E656469, 0xED0000747365742DLL, v30, v31);
  }

  v6 = *(v0 + 240);
  v5 = *(v0 + 248);
  v7 = *(v0 + 152);
  v9 = *(v0 + 104);
  v8 = *(v0 + 112);
  v10 = *(v0 + 88);
  defaultLogger()();
  v6(v9, v8, v10);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  v13 = os_log_type_enabled(v11, v12);
  v15 = *(v0 + 200);
  v14 = *(v0 + 208);
  v16 = *(v0 + 128);
  v65 = v16;
  v66 = *(v0 + 152);
  v17 = *(v0 + 104);
  v18 = *(v0 + 112);
  v19 = *(v0 + 88);
  v20 = *(v0 + 96);
  if (v13)
  {
    v21 = swift_slowAlloc();
    v64 = v18;
    v22 = swift_slowAlloc();
    v67 = v22;
    *v21 = 136315138;
    v23 = ISO18013KnownDocTypes.rawValue.getter();
    v63 = v14;
    v25 = v24;
    v26 = *(v20 + 8);
    v26(v17, v19);
    v27 = sub_100141FE4(v23, v25, &v67);

    *(v21 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v11, v12, "Developer Test mDL credential already exists for docType %s", v21, 0xCu);
    sub_10000BB78(v22);

    v63(v66, v65);
    result = (v26)(v64, v19);
  }

  else
  {

    v34 = *(v20 + 8);
    v34(v17, v19);
    v14(v66, v65);
    result = (v34)(v18, v19);
  }

  v35 = *(v0 + 232);
  v36 = (*(v0 + 224) - 1) & *(v0 + 224);
  if (v36)
  {
    result = *(v0 + 216);
LABEL_17:
    *(v0 + 224) = v36;
    *(v0 + 232) = v35;
    v38 = *(v0 + 112);
    v39 = *(v0 + 120);
    v40 = *(v0 + 88);
    v41 = *(v0 + 96);
    v42 = *(v0 + 56);
    v43 = *(result + 48) + *(v41 + 72) * (__clz(__rbit64(v36)) | (v35 << 6));
    v44 = *(v41 + 16);
    *(v0 + 240) = v44;
    *(v0 + 248) = (v41 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v44(v39, v43, v40);
    (*(v41 + 32))(v38, v39, v40);
    v45._countAndFlagsBits = 0x6335333332343730;
    v46._object = 0x80000001006FF5D0;
    v45._object = 0xE800000000000000;
    v46._countAndFlagsBits = 0xD00000000000003DLL;
    logMilestone(tag:description:)(v45, v46);
    v47 = sub_10000BA08((v42 + 16), *(v42 + 40));
    v48 = ISO18013KnownDocTypes.rawValue.getter();
    v50 = v49;
    *(v0 + 256) = v49;
    v51 = *v47;
    v52 = swift_task_alloc();
    *(v0 + 264) = v52;
    *v52 = v0;
    v52[1] = sub_100104CEC;

    return sub_10050657C(&off_1007FAE00, v48, v50, v51);
  }

  else
  {
    while (1)
    {
      v37 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        __break(1u);
        return result;
      }

      result = *(v0 + 216);
      if (v37 >= (((1 << *(v0 + 400)) + 63) >> 6))
      {
        break;
      }

      v36 = *(result + 8 * v37 + 64);
      ++v35;
      if (v36)
      {
        v35 = v37;
        goto LABEL_17;
      }
    }

    v54 = *(v0 + 168);
    v53 = *(v0 + 176);
    v56 = *(v0 + 152);
    v55 = *(v0 + 160);
    v57 = *(v0 + 144);
    v59 = *(v0 + 112);
    v58 = *(v0 + 120);
    v60 = *(v0 + 104);
    v61 = *(v0 + 80);

    v62 = *(v0 + 8);

    return v62();
  }
}

uint64_t sub_1001053B0()
{
  v1 = v0[27];
  v2 = v0[14];
  v3 = v0[11];
  v4 = v0[12];

  (*(v4 + 8))(v2, v3);
  v5 = v0[35];
  v7 = v0[21];
  v6 = v0[22];
  v9 = v0[19];
  v8 = v0[20];
  v10 = v0[18];
  v12 = v0[14];
  v11 = v0[15];
  v13 = v0[13];
  v14 = v0[10];

  v15 = v0[1];

  return v15();
}

uint64_t sub_1001054B0(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v6 = *(*v3 + 296);
  v7 = *v3;
  v5[38] = a1;
  v5[39] = a2;
  v5[40] = v2;

  if (v2)
  {
    v8 = sub_1001057E8;
  }

  else
  {
    v8 = sub_1001055F0;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_1001055F0()
{
  v1 = v0[7];
  v2._countAndFlagsBits = 0x3362373162396663;
  v3._object = 0x80000001006FF610;
  v2._object = 0xE800000000000000;
  v3._countAndFlagsBits = 0xD000000000000044;
  logMilestone(tag:description:)(v2, v3);
  v4 = *sub_10000BA08((v1 + 16), *(v1 + 40));
  v5 = swift_task_alloc();
  v0[41] = v5;
  *v5 = v0;
  v5[1] = sub_1001056CC;
  v7 = v0[38];
  v6 = v0[39];

  return sub_100507420(v7, v6, v4);
}

uint64_t sub_1001056CC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 328);
  v8 = *v2;
  v3[42] = a1;
  v3[43] = v1;

  if (v1)
  {
    v5 = v3[39];

    v6 = sub_10010606C;
  }

  else
  {
    v6 = sub_1001058F0;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1001057E8()
{
  v1 = v0[36];
  v2 = v0[27];
  v3 = v0[14];
  v4 = v0[11];
  v5 = v0[12];

  (*(v5 + 8))(v3, v4);
  v6 = v0[40];
  v8 = v0[21];
  v7 = v0[22];
  v10 = v0[19];
  v9 = v0[20];
  v11 = v0[18];
  v13 = v0[14];
  v12 = v0[15];
  v14 = v0[13];
  v15 = v0[10];

  v16 = v0[1];

  return v16();
}

uint64_t sub_1001058F0()
{
  v101 = v0;
  v2 = *(v0 + 336);
  v1 = *(v0 + 344);
  v3 = *(v0 + 80);
  v4 = *(v0 + 64);
  v5 = type metadata accessor for CBORDecoder();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  CBORDecoder.init()();
  v8 = [v2 publicKeyCOSEKey];
  v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  sub_10010802C(&qword_10083A850, &type metadata accessor for COSEKey);
  dispatch thunk of CBORDecoder.decode<A>(_:from:)();
  if (v1)
  {
    v12 = *(v0 + 336);
    v13 = *(v0 + 312);
    v14 = *(v0 + 288);
    v15 = *(v0 + 216);
    (*(*(v0 + 96) + 8))(*(v0 + 112), *(v0 + 88));

    sub_10000B90C(v9, v11);

    v17 = *(v0 + 168);
    v16 = *(v0 + 176);
    v19 = *(v0 + 152);
    v18 = *(v0 + 160);
    v20 = *(v0 + 144);
    v22 = *(v0 + 112);
    v21 = *(v0 + 120);
    v23 = *(v0 + 104);
    v24 = *(v0 + 80);

    v25 = *(v0 + 8);
LABEL_3:

    return v25();
  }

  else
  {
    v27 = *(v0 + 216);
    sub_10000B90C(v9, v11);

    v28._countAndFlagsBits = 0x3031613830353138;
    v29._countAndFlagsBits = 0xD000000000000045;
    v29._object = 0x80000001006FF660;
    v28._object = 0xE800000000000000;
    logMilestone(tag:description:)(v28, v29);
    if (*(v27 + 16) && (v30 = *(v0 + 216), v31 = sub_10003B480(*(v0 + 112)), (v32 & 1) != 0))
    {
      sub_100020260(*(*(v0 + 216) + 56) + 40 * v31, v0 + 16);
      v33 = *(v0 + 40);
      v34 = *(v0 + 48);
      sub_10000BA08((v0 + 16), v33);
      v35 = *(v34 + 8);
      v97 = (v35 + *v35);
      v36 = v35[1];
      v37 = swift_task_alloc();
      *(v0 + 352) = v37;
      *v37 = v0;
      v37[1] = sub_100106174;
      v38 = *(v0 + 80);

      return v97(v38, v33, v34);
    }

    else
    {
      v39 = *(v0 + 312);
      v40 = *(v0 + 144);
      defaultLogger()();

      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.debug.getter();

      v43 = os_log_type_enabled(v41, v42);
      v44 = *(v0 + 312);
      if (v43)
      {
        v45 = *(v0 + 304);
        v91 = *(v0 + 200);
        v93 = *(v0 + 208);
        v87 = *(v0 + 144);
        v88 = *(v0 + 288);
        v86 = *(v0 + 128);
        v46 = *(v0 + 336);
        v47 = *(v0 + 96);
        v95 = *(v0 + 112);
        v98 = *(v0 + 88);
        v48 = *(v0 + 72);
        v89 = *(v0 + 64);
        v90 = *(v0 + 80);
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v100 = v50;
        *v49 = 136315138;
        v51 = sub_100141FE4(v45, v44, &v100);

        *(v49 + 4) = v51;
        _os_log_impl(&_mh_execute_header, v41, v42, "Developer Test MDL creation completed with identifier %s", v49, 0xCu);
        sub_10000BB78(v50);

        sub_10000BD94(0, 0xF000000000000000);
        v93(v87, v86);
        (*(v48 + 8))(v90, v89);
        result = (*(v47 + 8))(v95, v98);
      }

      else
      {
        v52 = *(v0 + 288);
        v92 = *(v0 + 200);
        v94 = *(v0 + 208);
        v53 = *(v0 + 144);
        v54 = *(v0 + 128);
        v55 = *(v0 + 96);
        v96 = *(v0 + 88);
        v99 = *(v0 + 112);
        v56 = *(v0 + 72);
        v57 = *(v0 + 80);
        v58 = *(v0 + 64);

        sub_10000BD94(0, 0xF000000000000000);

        v94(v53, v54);
        (*(v56 + 8))(v57, v58);
        result = (*(v55 + 8))(v99, v96);
      }

      v59 = *(v0 + 232);
      v60 = (*(v0 + 224) - 1) & *(v0 + 224);
      if (v60)
      {
        result = *(v0 + 216);
LABEL_20:
        *(v0 + 224) = v60;
        *(v0 + 232) = v59;
        v62 = *(v0 + 112);
        v63 = *(v0 + 120);
        v64 = *(v0 + 88);
        v65 = *(v0 + 96);
        v66 = *(v0 + 56);
        v67 = *(result + 48) + *(v65 + 72) * (__clz(__rbit64(v60)) | (v59 << 6));
        v68 = *(v65 + 16);
        *(v0 + 240) = v68;
        *(v0 + 248) = (v65 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v68(v63, v67, v64);
        (*(v65 + 32))(v62, v63, v64);
        v69._countAndFlagsBits = 0x6335333332343730;
        v70._object = 0x80000001006FF5D0;
        v69._object = 0xE800000000000000;
        v70._countAndFlagsBits = 0xD00000000000003DLL;
        logMilestone(tag:description:)(v69, v70);
        v71 = sub_10000BA08((v66 + 16), *(v66 + 40));
        v72 = ISO18013KnownDocTypes.rawValue.getter();
        v74 = v73;
        *(v0 + 256) = v73;
        v75 = *v71;
        v76 = swift_task_alloc();
        *(v0 + 264) = v76;
        *v76 = v0;
        v76[1] = sub_100104CEC;

        return sub_10050657C(&off_1007FAE00, v72, v74, v75);
      }

      else
      {
        while (1)
        {
          v61 = v59 + 1;
          if (__OFADD__(v59, 1))
          {
            break;
          }

          result = *(v0 + 216);
          if (v61 >= (((1 << *(v0 + 400)) + 63) >> 6))
          {

            v78 = *(v0 + 168);
            v77 = *(v0 + 176);
            v80 = *(v0 + 152);
            v79 = *(v0 + 160);
            v81 = *(v0 + 144);
            v83 = *(v0 + 112);
            v82 = *(v0 + 120);
            v84 = *(v0 + 104);
            v85 = *(v0 + 80);

            v25 = *(v0 + 8);
            goto LABEL_3;
          }

          v60 = *(result + 8 * v61 + 64);
          ++v59;
          if (v60)
          {
            v59 = v61;
            goto LABEL_20;
          }
        }

        __break(1u);
      }
    }
  }

  return result;
}

uint64_t sub_10010606C()
{
  v1 = v0[36];
  v2 = v0[27];
  v3 = v0[14];
  v4 = v0[11];
  v5 = v0[12];

  (*(v5 + 8))(v3, v4);
  v6 = v0[43];
  v8 = v0[21];
  v7 = v0[22];
  v10 = v0[19];
  v9 = v0[20];
  v11 = v0[18];
  v13 = v0[14];
  v12 = v0[15];
  v14 = v0[13];
  v15 = v0[10];

  v16 = v0[1];

  return v16();
}

uint64_t sub_100106174(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 352);
  v9 = *v3;
  v4[45] = a1;
  v4[46] = a2;
  v4[47] = v2;

  if (v2)
  {
    v6 = v4[39];

    v7 = sub_100106A74;
  }

  else
  {
    v7 = sub_100106294;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100106294()
{
  v1 = v0[45];
  v2 = v0[46];
  v3 = v0[7];
  sub_10000BB78(v0 + 2);
  v4 = *sub_10000BA08((v3 + 16), *(v3 + 40));
  sub_10000B8B8(v1, v2);
  v5 = swift_task_alloc();
  v0[48] = v5;
  *v5 = v0;
  v5[1] = sub_100106368;
  v6 = v0[45];
  v7 = v0[46];
  v9 = v0[38];
  v8 = v0[39];

  return sub_1005078EC(v9, v8, v6, v7, 0, v4);
}

uint64_t sub_100106368()
{
  v2 = *v1;
  v3 = *(*v1 + 384);
  v7 = *v1;
  *(*v1 + 392) = v0;

  if (v0)
  {
    v4 = v2[39];
    sub_10000B90C(v2[45], v2[46]);

    v5 = sub_100106930;
  }

  else
  {
    v5 = sub_100106490;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100106490()
{
  v67 = v0;
  sub_10000B90C(*(v0 + 360), *(v0 + 368));
  v1 = *(v0 + 368);
  v65 = *(v0 + 360);
  v2 = *(v0 + 312);
  v3 = *(v0 + 144);
  defaultLogger()();

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 312);
  if (v6)
  {
    v8 = *(v0 + 304);
    v57 = *(v0 + 200);
    v59 = *(v0 + 208);
    v52 = *(v0 + 144);
    v53 = *(v0 + 288);
    v50 = *(v0 + 336);
    v51 = *(v0 + 128);
    v9 = *(v0 + 96);
    v61 = *(v0 + 88);
    v63 = *(v0 + 112);
    v10 = *(v0 + 72);
    v54 = *(v0 + 64);
    v55 = *(v0 + 80);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v66 = v12;
    *v11 = 136315138;
    v13 = sub_100141FE4(v8, v7, &v66);

    *(v11 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "Developer Test MDL creation completed with identifier %s", v11, 0xCu);
    sub_10000BB78(v12);

    sub_10000BD94(v65, v1);
    v59(v52, v51);
    (*(v10 + 8))(v55, v54);
    result = (*(v9 + 8))(v63, v61);
  }

  else
  {
    v15 = *(v0 + 288);
    v58 = *(v0 + 200);
    v60 = *(v0 + 208);
    v16 = *(v0 + 144);
    v17 = *(v0 + 128);
    v18 = *(v0 + 96);
    v62 = *(v0 + 88);
    v64 = *(v0 + 112);
    v56 = *(v0 + 80);
    v19 = v1;
    v20 = *(v0 + 64);
    v21 = *(v0 + 72);

    sub_10000BD94(v65, v19);

    v60(v16, v17);
    (*(v21 + 8))(v56, v20);
    result = (*(v18 + 8))(v64, v62);
  }

  v22 = *(v0 + 232);
  v23 = (*(v0 + 224) - 1) & *(v0 + 224);
  if (v23)
  {
    result = *(v0 + 216);
LABEL_10:
    *(v0 + 224) = v23;
    *(v0 + 232) = v22;
    v25 = *(v0 + 112);
    v26 = *(v0 + 120);
    v27 = *(v0 + 88);
    v28 = *(v0 + 96);
    v29 = *(v0 + 56);
    v30 = *(result + 48) + *(v28 + 72) * (__clz(__rbit64(v23)) | (v22 << 6));
    v31 = *(v28 + 16);
    *(v0 + 240) = v31;
    *(v0 + 248) = (v28 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v31(v26, v30, v27);
    (*(v28 + 32))(v25, v26, v27);
    v32._countAndFlagsBits = 0x6335333332343730;
    v33._object = 0x80000001006FF5D0;
    v32._object = 0xE800000000000000;
    v33._countAndFlagsBits = 0xD00000000000003DLL;
    logMilestone(tag:description:)(v32, v33);
    v34 = sub_10000BA08((v29 + 16), *(v29 + 40));
    v35 = ISO18013KnownDocTypes.rawValue.getter();
    v37 = v36;
    *(v0 + 256) = v36;
    v38 = *v34;
    v39 = swift_task_alloc();
    *(v0 + 264) = v39;
    *v39 = v0;
    v39[1] = sub_100104CEC;

    return sub_10050657C(&off_1007FAE00, v35, v37, v38);
  }

  else
  {
    while (1)
    {
      v24 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        return result;
      }

      result = *(v0 + 216);
      if (v24 >= (((1 << *(v0 + 400)) + 63) >> 6))
      {
        break;
      }

      v23 = *(result + 8 * v24 + 64);
      ++v22;
      if (v23)
      {
        v22 = v24;
        goto LABEL_10;
      }
    }

    v41 = *(v0 + 168);
    v40 = *(v0 + 176);
    v43 = *(v0 + 152);
    v42 = *(v0 + 160);
    v44 = *(v0 + 144);
    v46 = *(v0 + 112);
    v45 = *(v0 + 120);
    v47 = *(v0 + 104);
    v48 = *(v0 + 80);

    v49 = *(v0 + 8);

    return v49();
  }
}

uint64_t sub_100106930()
{
  v1 = v0[45];
  v2 = v0[46];
  v3 = v0[42];
  v4 = v0[36];
  v5 = v0[27];
  v23 = v0[14];
  v6 = v0[11];
  v7 = v0[12];
  v8 = v0[9];
  v9 = v0[10];
  v10 = v0[8];

  sub_10000B90C(v1, v2);

  (*(v8 + 8))(v9, v10);
  (*(v7 + 8))(v23, v6);
  v11 = v0[49];
  v13 = v0[21];
  v12 = v0[22];
  v15 = v0[19];
  v14 = v0[20];
  v16 = v0[18];
  v18 = v0[14];
  v17 = v0[15];
  v19 = v0[13];
  v20 = v0[10];

  v21 = v0[1];

  return v21();
}

uint64_t sub_100106A74()
{
  v1 = v0[42];
  v2 = v0[36];
  v3 = v0[27];
  v4 = v0[14];
  v5 = v0[11];
  v6 = v0[12];
  v8 = v0[9];
  v7 = v0[10];
  v9 = v0[8];

  (*(v8 + 8))(v7, v9);
  (*(v6 + 8))(v4, v5);
  sub_10000BB78(v0 + 2);
  v10 = v0[47];
  v12 = v0[21];
  v11 = v0[22];
  v14 = v0[19];
  v13 = v0[20];
  v15 = v0[18];
  v17 = v0[14];
  v16 = v0[15];
  v18 = v0[13];
  v19 = v0[10];

  v20 = v0[1];

  return v20();
}

uint64_t sub_100106BAC()
{
  v1[18] = v0;
  v2 = type metadata accessor for DIPError.Code();
  v1[19] = v2;
  v3 = *(v2 - 8);
  v1[20] = v3;
  v4 = *(v3 + 64) + 15;
  v1[21] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v1[22] = v5;
  v6 = *(v5 - 8);
  v1[23] = v6;
  v7 = *(v6 + 64) + 15;
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();

  return _swift_task_switch(sub_100106CD4, 0, 0);
}

uint64_t sub_100106CD4()
{
  v1 = *sub_10000BA08((*(v0 + 144) + 16), *(*(v0 + 144) + 40));
  v2 = swift_task_alloc();
  *(v0 + 208) = v2;
  *v2 = v0;
  v2[1] = sub_100106D8C;

  return sub_10050657C(&off_1007FADD0, 0, 0, v1);
}

uint64_t sub_100106D8C(uint64_t a1)
{
  v3 = *(*v2 + 208);
  v4 = *v2;
  v4[27] = a1;

  if (v1)
  {
    v6 = v4[24];
    v5 = v4[25];
    v7 = v4[21];

    v8 = v4[1];

    return v8();
  }

  else
  {

    return _swift_task_switch(sub_100106EE8, 0, 0);
  }
}

uint64_t sub_100106EE8()
{
  if (*(v0[27] + 16) && (v1 = sub_10003ADCC(0x797469746E656469, 0xED0000747365742DLL), (v2 & 1) != 0))
  {
    v3 = *(*(v0[27] + 56) + 8 * v1);
    v0[28] = v3;

    v5 = *(v3 + 16);
    v0[29] = v5;
    if (v5)
    {
      v0[30] = 0;
      v6 = v0[28];
      if (v6[2])
      {
        v7 = v0[18];
        v0[31] = v6[4];
        v0[32] = v6[5];
        v8 = *sub_10000BA08((v7 + 16), *(v7 + 40));

        v9 = objc_allocWithZone(DCCredentialStore);
        isa = Array._bridgeToObjectiveC()().super.isa;
        v11 = [v9 initWithPartitions:isa];
        v0[33] = v11;

        v12 = String._bridgeToObjectiveC()();
        v0[34] = v12;
        v0[2] = v0;
        v0[3] = sub_100107218;
        v13 = swift_continuation_init();
        v0[17] = sub_100007224(&unk_100843590, &qword_1006D8B10);
        v0[10] = _NSConcreteStackBlock;
        v0[11] = 1107296256;
        v0[12] = sub_100429100;
        v0[13] = &unk_1008092D8;
        v0[14] = v13;
        [v11 deleteCredential:v12 completion:v0 + 10];
        v4 = (v0 + 2);
      }

      else
      {
        __break(1u);
      }

      return _swift_continuation_await(v4);
    }

    v27 = v0[28];
  }

  else
  {
    v14 = v0[24];

    defaultLogger()();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();
    v17 = os_log_type_enabled(v15, v16);
    v19 = v0[23];
    v18 = v0[24];
    v20 = v0[22];
    if (v17)
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "No test mDL credentials to delete", v21, 2u);
    }

    (*(v19 + 8))(v18, v20);
  }

  v23 = v0[24];
  v22 = v0[25];
  v24 = v0[21];

  v25 = v0[1];

  return v25();
}

uint64_t sub_100107218()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 280) = v2;
  if (v2)
  {
    v3 = sub_1001076E4;
  }

  else
  {
    v3 = sub_100107328;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100107328()
{
  v41 = v0;
  v1 = *(v0 + 272);
  v2 = *(v0 + 256);
  v3 = *(v0 + 200);

  defaultLogger()();

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 256);
  if (v6)
  {
    v8 = *(v0 + 248);
    v9 = *(v0 + 200);
    v10 = *(v0 + 176);
    v11 = *(v0 + 184);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v40 = v13;
    *v12 = 136315138;
    v14 = sub_100141FE4(v8, v7, &v40);

    *(v12 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v4, v5, "Successfully deleted credentialIdentifier: %s", v12, 0xCu);
    sub_10000BB78(v13);

    (*(v11 + 8))(v9, v10);
  }

  else
  {
    v15 = *(v0 + 200);
    v16 = *(v0 + 176);
    v17 = *(v0 + 184);
    v18 = *(v0 + 256);

    (*(v17 + 8))(v15, v16);
  }

  v19 = *(v0 + 232);
  v20 = *(v0 + 240) + 1;
  v21._countAndFlagsBits = 0x6562363239353565;
  v22._object = 0x80000001006FF710;
  v21._object = 0xE800000000000000;
  v22._countAndFlagsBits = 0xD000000000000040;
  logMilestone(tag:description:)(v21, v22);
  if (v20 == v19)
  {
    v24 = *(v0 + 224);

    v26 = *(v0 + 192);
    v25 = *(v0 + 200);
    v27 = *(v0 + 168);

    v28 = *(v0 + 8);

    return v28();
  }

  else
  {
    v30 = *(v0 + 240) + 1;
    *(v0 + 240) = v30;
    v31 = *(v0 + 224);
    if (v30 >= *(v31 + 16))
    {
      __break(1u);
    }

    else
    {
      v32 = *(v0 + 144);
      v33 = v31 + 16 * v30;
      *(v0 + 248) = *(v33 + 32);
      *(v0 + 256) = *(v33 + 40);
      v34 = *sub_10000BA08((v32 + 16), *(v32 + 40));

      v35 = objc_allocWithZone(DCCredentialStore);
      isa = Array._bridgeToObjectiveC()().super.isa;
      v37 = [v35 initWithPartitions:isa];
      *(v0 + 264) = v37;

      v38 = String._bridgeToObjectiveC()();
      *(v0 + 272) = v38;
      *(v0 + 16) = v0;
      *(v0 + 24) = sub_100107218;
      v39 = swift_continuation_init();
      *(v0 + 136) = sub_100007224(&unk_100843590, &qword_1006D8B10);
      *(v0 + 80) = _NSConcreteStackBlock;
      *(v0 + 88) = 1107296256;
      *(v0 + 96) = sub_100429100;
      *(v0 + 104) = &unk_1008092D8;
      *(v0 + 112) = v39;
      [v37 deleteCredential:v38 completion:v0 + 80];
      v23 = v0 + 16;
    }

    return _swift_continuation_await(v23);
  }
}

uint64_t sub_1001076E4()
{
  v2 = v0[34];
  v1 = v0[35];
  v3 = v0[32];
  v4 = v0[33];
  v5 = v0[28];
  v7 = v0[20];
  v6 = v0[21];
  v8 = v0[19];
  swift_willThrow();

  (*(v7 + 104))(v6, enum case for DIPError.Code.internalError(_:), v8);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10010802C(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v10 = v0[24];
  v9 = v0[25];
  v11 = v0[21];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1001078B0()
{
  v1 = type metadata accessor for Logger();
  v0[21] = v1;
  v2 = *(v1 - 8);
  v0[22] = v2;
  v3 = *(v2 + 64) + 15;
  v0[23] = swift_task_alloc();
  v4 = type metadata accessor for DIPError.Code();
  v0[24] = v4;
  v5 = *(v4 - 8);
  v0[25] = v5;
  v6 = *(v5 + 64) + 15;
  v0[26] = swift_task_alloc();

  return _swift_task_switch(sub_1001079C8, 0, 0);
}

uint64_t sub_1001079C8()
{
  v0[13] = type metadata accessor for DeviceInformationProvider();
  v0[14] = &protocol witness table for DeviceInformationProvider;
  sub_100032DBC(v0 + 10);
  DeviceInformationProvider.init()();
  type metadata accessor for UserDefaultsConfiguration();
  v0[15] = static UserDefaultsConfiguration.standard.getter();
  if (sub_100134AD0())
  {
    v1._countAndFlagsBits = 0x6238326565363630;
    v2._object = 0x80000001006FF7E0;
    v1._object = 0xE800000000000000;
    v2._countAndFlagsBits = 0xD00000000000003BLL;
    logMilestone(tag:description:)(v1, v2);
    sub_100108074((v0 + 10));
    v3 = v0[26];
    v4 = v0[23];

    v5 = v0[1];

    return v5();
  }

  else
  {
    v7 = static ISO18013KnownDocTypes.allCases.getter();
    v0[19] = &type metadata for IDCredCredentialStore;
    v0[20] = &off_100815A88;
    v0[16] = &off_1007FAE30;
    type metadata accessor for DeveloperTestMDLManager();
    inited = swift_initStackObject();
    v0[27] = inited;
    v9 = v0[19];
    v10 = sub_10001F370((v0 + 16), v9);
    v11 = *(v9 - 8);
    v12 = *(v11 + 64) + 15;
    v13 = swift_task_alloc();
    (*(v11 + 16))(v13, v10, v9);
    v0[28] = sub_1001602C4(*v13, v7, inited);
    sub_10000BB78(v0 + 16);

    v14 = swift_task_alloc();
    v0[29] = v14;
    *v14 = v0;
    v14[1] = sub_100107C20;

    return sub_100106BAC();
  }
}

uint64_t sub_100107C20()
{
  v2 = *(*v1 + 232);
  v5 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v3 = sub_100107DB0;
  }

  else
  {
    v3 = sub_100107D34;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100107D34()
{
  v1 = v0[28];

  sub_100108074((v0 + 10));
  v2 = v0[26];
  v3 = v0[23];

  v4 = v0[1];

  return v4();
}

uint64_t sub_100107DB0()
{
  v1 = v0[30];
  v2 = v0[28];
  v4 = v0[25];
  v3 = v0[26];
  v5 = v0[23];
  v6 = v0[24];
  v7 = v0[22];
  v12 = v0[21];

  (*(v4 + 104))(v3, enum case for DIPError.Code.internalError(_:), v6);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10010802C(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  (*(v7 + 8))(v5, v12);
  sub_100108074((v0 + 10));

  v8 = v0[26];
  v9 = v0[23];

  v10 = v0[1];

  return v10();
}

uint64_t sub_100107F9C()
{
  sub_10000BB78((v0 + 16));
  v1 = *(v0 + 56);

  return swift_deallocClassInstance();
}

uint64_t sub_10010802C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001080DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ISO18013KnownDocTypes();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10010815C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ISO18013KnownDocTypes();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for DeveloperTestMDLPayloadBuilder()
{
  result = qword_10083A8B8;
  if (!qword_10083A8B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100108218(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v3 = type metadata accessor for CredentialBuilderPayloadDetails();
  v2[14] = v3;
  v4 = *(v3 - 8);
  v2[15] = v4;
  v5 = *(v4 + 64) + 15;
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_1001082D8, 0, 0);
}

uint64_t sub_1001082D8()
{
  sub_1001028E0(*(v0 + 96), *(v0 + 104), *(v0 + 128));
  v1 = *(v0 + 104);
  *(v0 + 40) = type metadata accessor for DeveloperTestMDLPayloadBuilder();
  *(v0 + 48) = sub_1001084E4();
  v2 = sub_100032DBC((v0 + 16));
  sub_10010853C(v1, v2);
  *(v0 + 80) = type metadata accessor for DateProvider();
  *(v0 + 88) = &protocol witness table for DateProvider;
  sub_100032DBC((v0 + 56));
  DateProvider.init()();
  v3 = objc_allocWithZone(type metadata accessor for IdentityCredentialPayloadBuilder());
  *(v0 + 136) = IdentityCredentialPayloadBuilder.init(with:dateProvider:)();
  v4 = *(&async function pointer to dispatch thunk of IdentityCredentialPayloadBuilder.buildPayload(with:) + 1);
  v8 = (&async function pointer to dispatch thunk of IdentityCredentialPayloadBuilder.buildPayload(with:) + async function pointer to dispatch thunk of IdentityCredentialPayloadBuilder.buildPayload(with:));
  v5 = swift_task_alloc();
  *(v0 + 144) = v5;
  *v5 = v0;
  v5[1] = sub_1001038A0;
  v6 = *(v0 + 128);

  return v8(v6);
}

uint64_t sub_100108450(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100103B8C;

  return sub_100108218(a1);
}

unint64_t sub_1001084E4()
{
  result = qword_10083A8F0;
  if (!qword_10083A8F0)
  {
    type metadata accessor for DeveloperTestMDLPayloadBuilder();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A8F0);
  }

  return result;
}

uint64_t sub_10010853C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeveloperTestMDLPayloadBuilder();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001085B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ISO18013KnownDocTypes();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100108634(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ISO18013KnownDocTypes();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for DeveloperTestPhotoIDPayloadBuilder()
{
  result = qword_10083A950;
  if (!qword_10083A950)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001086F0(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v3 = type metadata accessor for CredentialBuilderPayloadDetails();
  v2[14] = v3;
  v4 = *(v3 - 8);
  v2[15] = v4;
  v5 = *(v4 + 64) + 15;
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_1001087B0, 0, 0);
}

uint64_t sub_1001087B0()
{
  sub_1001028E0(*(v0 + 96), *(v0 + 104), *(v0 + 128));
  v1 = *(v0 + 104);
  *(v0 + 40) = type metadata accessor for DeveloperTestPhotoIDPayloadBuilder();
  *(v0 + 48) = sub_1001089BC();
  v2 = sub_100032DBC((v0 + 16));
  sub_100108A14(v1, v2);
  *(v0 + 80) = type metadata accessor for DateProvider();
  *(v0 + 88) = &protocol witness table for DateProvider;
  sub_100032DBC((v0 + 56));
  DateProvider.init()();
  v3 = objc_allocWithZone(type metadata accessor for IdentityCredentialPayloadBuilder());
  *(v0 + 136) = IdentityCredentialPayloadBuilder.init(with:dateProvider:)();
  v4 = *(&async function pointer to dispatch thunk of IdentityCredentialPayloadBuilder.buildPayload(with:) + 1);
  v8 = (&async function pointer to dispatch thunk of IdentityCredentialPayloadBuilder.buildPayload(with:) + async function pointer to dispatch thunk of IdentityCredentialPayloadBuilder.buildPayload(with:));
  v5 = swift_task_alloc();
  *(v0 + 144) = v5;
  *v5 = v0;
  v5[1] = sub_1001038A0;
  v6 = *(v0 + 128);

  return v8(v6);
}

uint64_t sub_100108928(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100103B8C;

  return sub_1001086F0(a1);
}

unint64_t sub_1001089BC()
{
  result = qword_10083A988;
  if (!qword_10083A988)
  {
    type metadata accessor for DeveloperTestPhotoIDPayloadBuilder();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A988);
  }

  return result;
}

uint64_t sub_100108A14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeveloperTestPhotoIDPayloadBuilder();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t *sub_100108A78(uint64_t a1)
{
  v85 = type metadata accessor for ISO18013_5_1_ElementIdentifier();
  v83 = *(v85 - 8);
  v2 = *(v83 + 64);
  __chkstk_darwin(v85);
  v84 = &v77 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for IdentityElement();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = (&v77 - v15);
  v17 = *(v10 + 16);
  v17(&v77 - v15, a1, v9);
  v18 = (*(v10 + 88))(v16, v9);
  if (v18 == enum case for IdentityElement.ageIsOver(_:))
  {
    (*(v10 + 96))(v16, v9);
    v19 = *v16;
    sub_100007224(&qword_100833B78, &unk_1006D9F00);
    v20 = swift_allocObject();
    *(v20 + 1) = xmmword_1006BF520;
    v20[4] = static ISO18013_5_1_ElementIdentifier.ageOver(nn:)();
    v20[5] = v21;
    return v20;
  }

  if (v18 == enum case for IdentityElement.givenName(_:))
  {
    sub_100007224(&qword_10083A9A8, &qword_1006D8C48);
    v22 = v83;
    v23 = *(v83 + 72);
    v24 = (*(v83 + 80) + 32) & ~*(v83 + 80);
    v25 = swift_allocObject();
    v26 = v25;
    *(v25 + 16) = xmmword_1006BF520;
    v27 = &enum case for ISO18013_5_1_ElementIdentifier.givenName(_:);
LABEL_11:
    (*(v22 + 104))(v25 + v24, *v27, v85);
    goto LABEL_12;
  }

  if (v18 == enum case for IdentityElement.familyName(_:))
  {
    sub_100007224(&qword_10083A9A8, &qword_1006D8C48);
    v22 = v83;
    v28 = *(v83 + 72);
    v24 = (*(v83 + 80) + 32) & ~*(v83 + 80);
    v25 = swift_allocObject();
    v26 = v25;
    *(v25 + 16) = xmmword_1006BF520;
    v27 = &enum case for ISO18013_5_1_ElementIdentifier.familyName(_:);
    goto LABEL_11;
  }

  if (v18 == enum case for IdentityElement.sex(_:))
  {
    sub_100007224(&qword_10083A9A8, &qword_1006D8C48);
    v22 = v83;
    v29 = *(v83 + 72);
    v24 = (*(v83 + 80) + 32) & ~*(v83 + 80);
    v25 = swift_allocObject();
    v26 = v25;
    *(v25 + 16) = xmmword_1006BF520;
    v27 = &enum case for ISO18013_5_1_ElementIdentifier.sex(_:);
    goto LABEL_11;
  }

  if (v18 == enum case for IdentityElement.portrait(_:))
  {
    sub_100007224(&qword_10083A9A8, &qword_1006D8C48);
    v22 = v83;
    v30 = *(v83 + 72);
    v24 = (*(v83 + 80) + 32) & ~*(v83 + 80);
    v25 = swift_allocObject();
    v26 = v25;
    *(v25 + 16) = xmmword_1006BF520;
    v27 = &enum case for ISO18013_5_1_ElementIdentifier.portrait(_:);
    goto LABEL_11;
  }

  if (v18 == enum case for IdentityElement.address(_:))
  {
    sub_100007224(&qword_10083A9A8, &qword_1006D8C48);
    v46 = v83;
    v47 = *(v83 + 72);
    v48 = (*(v83 + 80) + 32) & ~*(v83 + 80);
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_1006D8C30;
    v50 = v49 + v48;
    v51 = *(v46 + 104);
    v52 = v85;
    v51(v50, enum case for ISO18013_5_1_ElementIdentifier.residentAddress(_:), v85);
    v51(v50 + v47, enum case for ISO18013_5_1_ElementIdentifier.residentCity(_:), v52);
    v51(v50 + 2 * v47, enum case for ISO18013_5_1_ElementIdentifier.residentState(_:), v52);
    v51(v50 + 3 * v47, enum case for ISO18013_5_1_ElementIdentifier.residentCountry(_:), v52);
    v51(v50 + 4 * v47, enum case for ISO18013_5_1_ElementIdentifier.residentPostalCode(_:), v52);
    v26 = v49;
  }

  else
  {
    if (v18 == enum case for IdentityElement.height(_:))
    {
      sub_100007224(&qword_10083A9A8, &qword_1006D8C48);
      v22 = v83;
      v53 = *(v83 + 72);
      v24 = (*(v83 + 80) + 32) & ~*(v83 + 80);
      v25 = swift_allocObject();
      v26 = v25;
      *(v25 + 16) = xmmword_1006BF520;
      v27 = &enum case for ISO18013_5_1_ElementIdentifier.height(_:);
      goto LABEL_11;
    }

    if (v18 == enum case for IdentityElement.weight(_:))
    {
      sub_100007224(&qword_10083A9A8, &qword_1006D8C48);
      v22 = v83;
      v54 = *(v83 + 72);
      v24 = (*(v83 + 80) + 32) & ~*(v83 + 80);
      v25 = swift_allocObject();
      v26 = v25;
      *(v25 + 16) = xmmword_1006BF520;
      v27 = &enum case for ISO18013_5_1_ElementIdentifier.weight(_:);
      goto LABEL_11;
    }

    if (v18 == enum case for IdentityElement.eyeColor(_:))
    {
      sub_100007224(&qword_10083A9A8, &qword_1006D8C48);
      v22 = v83;
      v55 = *(v83 + 72);
      v24 = (*(v83 + 80) + 32) & ~*(v83 + 80);
      v25 = swift_allocObject();
      v26 = v25;
      *(v25 + 16) = xmmword_1006BF520;
      v27 = &enum case for ISO18013_5_1_ElementIdentifier.eyeColor(_:);
      goto LABEL_11;
    }

    if (v18 == enum case for IdentityElement.hairColor(_:))
    {
      sub_100007224(&qword_10083A9A8, &qword_1006D8C48);
      v22 = v83;
      v56 = *(v83 + 72);
      v24 = (*(v83 + 80) + 32) & ~*(v83 + 80);
      v25 = swift_allocObject();
      v26 = v25;
      *(v25 + 16) = xmmword_1006BF520;
      v27 = &enum case for ISO18013_5_1_ElementIdentifier.hairColor(_:);
      goto LABEL_11;
    }

    v82 = v5;
    v26 = _swiftEmptyArrayStorage;
    if (v18 != enum case for IdentityElement.organDonorStatus(_:) && v18 != enum case for IdentityElement.veteranStatus(_:))
    {
      if (v18 == enum case for IdentityElement.issuingAuthority(_:))
      {
        sub_100007224(&qword_10083A9A8, &qword_1006D8C48);
        v57 = v83;
        v58 = *(v83 + 72);
        v59 = (*(v83 + 80) + 32) & ~*(v83 + 80);
        v60 = swift_allocObject();
        *(v60 + 16) = xmmword_1006BFE10;
        v61 = v60 + v59;
        v62 = *(v57 + 104);
        v63 = v85;
        v62(v61, enum case for ISO18013_5_1_ElementIdentifier.issuingAuthority(_:), v85);
        v62(v61 + v58, enum case for ISO18013_5_1_ElementIdentifier.issuingJurisdiction(_:), v63);
        v62(v61 + 2 * v58, enum case for ISO18013_5_1_ElementIdentifier.issuingCountry(_:), v63);
        v62(v61 + 3 * v58, enum case for ISO18013_5_1_ElementIdentifier.unDistinguishingSign(_:), v63);
        v26 = v60;
      }

      else if (v18 != enum case for IdentityElement.documentDHSComplianceStatus(_:))
      {
        if (v18 == enum case for IdentityElement.documentIssueDate(_:))
        {
          sub_100007224(&qword_10083A9A8, &qword_1006D8C48);
          v22 = v83;
          v64 = *(v83 + 72);
          v24 = (*(v83 + 80) + 32) & ~*(v83 + 80);
          v25 = swift_allocObject();
          v26 = v25;
          *(v25 + 16) = xmmword_1006BF520;
          v27 = &enum case for ISO18013_5_1_ElementIdentifier.issueDate(_:);
          goto LABEL_11;
        }

        if (v18 == enum case for IdentityElement.documentExpirationDate(_:))
        {
          sub_100007224(&qword_10083A9A8, &qword_1006D8C48);
          v22 = v83;
          v65 = *(v83 + 72);
          v24 = (*(v83 + 80) + 32) & ~*(v83 + 80);
          v25 = swift_allocObject();
          v26 = v25;
          *(v25 + 16) = xmmword_1006BF520;
          v27 = &enum case for ISO18013_5_1_ElementIdentifier.expiryDate(_:);
          goto LABEL_11;
        }

        if (v18 == enum case for IdentityElement.documentNumber(_:))
        {
          sub_100007224(&qword_10083A9A8, &qword_1006D8C48);
          v22 = v83;
          v66 = *(v83 + 72);
          v24 = (*(v83 + 80) + 32) & ~*(v83 + 80);
          v25 = swift_allocObject();
          v26 = v25;
          *(v25 + 16) = xmmword_1006BF520;
          v27 = &enum case for ISO18013_5_1_ElementIdentifier.documentNumber(_:);
          goto LABEL_11;
        }

        if (v18 == enum case for IdentityElement.drivingPrivileges(_:))
        {
          sub_100007224(&qword_10083A9A8, &qword_1006D8C48);
          v22 = v83;
          v67 = *(v83 + 72);
          v24 = (*(v83 + 80) + 32) & ~*(v83 + 80);
          v25 = swift_allocObject();
          v26 = v25;
          *(v25 + 16) = xmmword_1006BF520;
          v27 = &enum case for ISO18013_5_1_ElementIdentifier.drivingPrivileges(_:);
          goto LABEL_11;
        }

        if (v18 == enum case for IdentityElement.age(_:))
        {
          sub_100007224(&qword_10083A9A8, &qword_1006D8C48);
          v22 = v83;
          v68 = *(v83 + 72);
          v24 = (*(v83 + 80) + 32) & ~*(v83 + 80);
          v25 = swift_allocObject();
          v26 = v25;
          *(v25 + 16) = xmmword_1006BF520;
          v27 = &enum case for ISO18013_5_1_ElementIdentifier.ageInYears(_:);
          goto LABEL_11;
        }

        if (v18 == enum case for IdentityElement.dateOfBirth(_:))
        {
          sub_100007224(&qword_10083A9A8, &qword_1006D8C48);
          v22 = v83;
          v69 = *(v83 + 72);
          v24 = (*(v83 + 80) + 32) & ~*(v83 + 80);
          v25 = swift_allocObject();
          v26 = v25;
          *(v25 + 16) = xmmword_1006BF520;
          v27 = &enum case for ISO18013_5_1_ElementIdentifier.birthDate(_:);
          goto LABEL_11;
        }

        defaultLogger()();
        v17(v14, a1, v9);
        v70 = Logger.logObject.getter();
        LODWORD(v81) = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v70, v81))
        {
          v71 = swift_slowAlloc();
          v79 = v71;
          v80 = swift_slowAlloc();
          v86 = v80;
          *v71 = 136315138;
          sub_10010A400();
          v78 = dispatch thunk of CustomStringConvertible.description.getter();
          v73 = v72;
          v74 = *(v10 + 8);
          v74(v14, v9);
          v75 = sub_100141FE4(v78, v73, &v86);

          v76 = v79;
          *(v79 + 1) = v75;
          _os_log_impl(&_mh_execute_header, v70, v81, "unknown element %s", v76, 0xCu);
          sub_10000BB78(v80);
        }

        else
        {

          v74 = *(v10 + 8);
          v74(v14, v9);
        }

        (*(v82 + 8))(v8, v4);
        v74(v16, v9);
        v26 = _swiftEmptyArrayStorage;
      }
    }
  }

LABEL_12:
  v31 = v26[2];
  if (v31)
  {
    v86 = _swiftEmptyArrayStorage;
    sub_100172D4C(0, v31, 0);
    v20 = v86;
    v33 = v83 + 16;
    v32 = *(v83 + 16);
    v34 = *(v83 + 80);
    v81 = v26;
    v35 = v26 + ((v34 + 32) & ~v34);
    v82 = *(v83 + 72);
    v83 = v32;
    v36 = (v33 - 8);
    do
    {
      v37 = v84;
      v38 = v85;
      (v83)(v84, v35, v85);
      v39 = ISO18013_5_1_ElementIdentifier.rawValue.getter();
      v41 = v40;
      (*v36)(v37, v38);
      v86 = v20;
      v43 = v20[2];
      v42 = v20[3];
      if (v43 >= v42 >> 1)
      {
        sub_100172D4C((v42 > 1), v43 + 1, 1);
        v20 = v86;
      }

      v20[2] = v43 + 1;
      v44 = &v20[2 * v43];
      v44[4] = v39;
      v44[5] = v41;
      v35 += v82;
      --v31;
    }

    while (v31);
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return v20;
}

uint64_t *sub_100109788(uint64_t a1)
{
  v76 = type metadata accessor for ISO18013_AAMVA_ElementIdentifier();
  v74 = *(v76 - 8);
  v2 = *(v74 + 64);
  __chkstk_darwin(v76);
  v75 = &v68 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Logger();
  v72 = *(v4 - 8);
  v5 = v72[8];
  __chkstk_darwin(v4);
  v73 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for IdentityElement();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v68 - v13;
  v15 = *(v8 + 16);
  v15(&v68 - v13, a1, v7);
  v16 = (*(v8 + 88))(v14, v7);
  v17 = _swiftEmptyArrayStorage;
  if (v16 != enum case for IdentityElement.ageIsOver(_:))
  {
    if (v16 == enum case for IdentityElement.givenName(_:))
    {
      sub_100007224(&qword_10083A9A0, &qword_1006D8C40);
      v18 = v74;
      v19 = *(v74 + 72);
      v20 = (*(v74 + 80) + 32) & ~*(v74 + 80);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1006BFE10;
      v22 = v21 + v20;
      v23 = *(v18 + 104);
      v24 = v76;
      v23(v22, enum case for ISO18013_AAMVA_ElementIdentifier.givenNameTruncation(_:), v76);
      v23(v22 + v19, enum case for ISO18013_AAMVA_ElementIdentifier.akaGivenName(_:), v24);
      v23(v22 + 2 * v19, enum case for ISO18013_AAMVA_ElementIdentifier.nameSuffix(_:), v24);
      v23(v22 + 3 * v19, enum case for ISO18013_AAMVA_ElementIdentifier.akaSuffix(_:), v24);
      v17 = v21;
      goto LABEL_7;
    }

    if (v16 == enum case for IdentityElement.familyName(_:))
    {
      sub_100007224(&qword_10083A9A0, &qword_1006D8C40);
      v25 = v74;
      v26 = *(v74 + 72);
      v27 = (*(v74 + 80) + 32) & ~*(v74 + 80);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_1006BF740;
      v29 = v28 + v27;
      v30 = *(v25 + 104);
      v31 = v76;
      v30(v29, enum case for ISO18013_AAMVA_ElementIdentifier.familyNameTruncation(_:), v76);
      v32 = &enum case for ISO18013_AAMVA_ElementIdentifier.akaFamilyName(_:);
LABEL_6:
      v30(v29 + v26, *v32, v31);
      v17 = v28;
      goto LABEL_7;
    }

    if (v16 == enum case for IdentityElement.sex(_:))
    {
      sub_100007224(&qword_10083A9A0, &qword_1006D8C40);
      v49 = v74;
      v50 = *(v74 + 72);
      v51 = (*(v74 + 80) + 32) & ~*(v74 + 80);
      v52 = swift_allocObject();
      v17 = v52;
      *(v52 + 16) = xmmword_1006BF520;
      v53 = &enum case for ISO18013_AAMVA_ElementIdentifier.sex(_:);
LABEL_17:
      (*(v49 + 104))(v52 + v51, *v53, v76);
      goto LABEL_7;
    }

    if (v16 == enum case for IdentityElement.portrait(_:) || v16 == enum case for IdentityElement.address(_:) || v16 == enum case for IdentityElement.height(_:))
    {
      v17 = _swiftEmptyArrayStorage;
    }

    else
    {
      if (v16 == enum case for IdentityElement.weight(_:))
      {
        sub_100007224(&qword_10083A9A0, &qword_1006D8C40);
        v49 = v74;
        v56 = *(v74 + 72);
        v51 = (*(v74 + 80) + 32) & ~*(v74 + 80);
        v52 = swift_allocObject();
        v17 = v52;
        *(v52 + 16) = xmmword_1006BF520;
        v53 = &enum case for ISO18013_AAMVA_ElementIdentifier.weightRange(_:);
        goto LABEL_17;
      }

      v17 = _swiftEmptyArrayStorage;
      if (v16 != enum case for IdentityElement.eyeColor(_:) && v16 != enum case for IdentityElement.hairColor(_:))
      {
        if (v16 == enum case for IdentityElement.organDonorStatus(_:))
        {
          sub_100007224(&qword_10083A9A0, &qword_1006D8C40);
          v49 = v74;
          v57 = *(v74 + 72);
          v51 = (*(v74 + 80) + 32) & ~*(v74 + 80);
          v52 = swift_allocObject();
          v17 = v52;
          *(v52 + 16) = xmmword_1006BF520;
          v53 = &enum case for ISO18013_AAMVA_ElementIdentifier.organDonorStatus(_:);
          goto LABEL_17;
        }

        if (v16 == enum case for IdentityElement.veteranStatus(_:))
        {
          sub_100007224(&qword_10083A9A0, &qword_1006D8C40);
          v49 = v74;
          v58 = *(v74 + 72);
          v51 = (*(v74 + 80) + 32) & ~*(v74 + 80);
          v52 = swift_allocObject();
          v17 = v52;
          *(v52 + 16) = xmmword_1006BF520;
          v53 = &enum case for ISO18013_AAMVA_ElementIdentifier.veteranStatus(_:);
          goto LABEL_17;
        }

        if (v16 != enum case for IdentityElement.issuingAuthority(_:))
        {
          if (v16 == enum case for IdentityElement.documentDHSComplianceStatus(_:))
          {
            sub_100007224(&qword_10083A9A0, &qword_1006D8C40);
            v49 = v74;
            v59 = *(v74 + 72);
            v51 = (*(v74 + 80) + 32) & ~*(v74 + 80);
            v52 = swift_allocObject();
            v17 = v52;
            *(v52 + 16) = xmmword_1006BF520;
            v53 = &enum case for ISO18013_AAMVA_ElementIdentifier.dhsCompliance(_:);
            goto LABEL_17;
          }

          if (v16 != enum case for IdentityElement.documentIssueDate(_:) && v16 != enum case for IdentityElement.documentExpirationDate(_:) && v16 != enum case for IdentityElement.documentNumber(_:))
          {
            if (v16 == enum case for IdentityElement.drivingPrivileges(_:))
            {
              sub_100007224(&qword_10083A9A0, &qword_1006D8C40);
              v60 = v74;
              v26 = *(v74 + 72);
              v61 = (*(v74 + 80) + 32) & ~*(v74 + 80);
              v28 = swift_allocObject();
              *(v28 + 16) = xmmword_1006BF740;
              v29 = v28 + v61;
              v30 = *(v60 + 104);
              v31 = v76;
              v30(v29, enum case for ISO18013_AAMVA_ElementIdentifier.cdlIndicator(_:), v76);
              v32 = &enum case for ISO18013_AAMVA_ElementIdentifier.domesticDrivingPrivileges(_:);
              goto LABEL_6;
            }

            if (v16 != enum case for IdentityElement.age(_:) && v16 != enum case for IdentityElement.dateOfBirth(_:))
            {
              defaultLogger()();
              v15(v12, a1, v7);
              v62 = Logger.logObject.getter();
              v71 = static os_log_type_t.debug.getter();
              if (os_log_type_enabled(v62, v71))
              {
                v63 = swift_slowAlloc();
                v70 = swift_slowAlloc();
                v77 = v70;
                *v63 = 136315138;
                sub_10010A400();
                v69 = dispatch thunk of CustomStringConvertible.description.getter();
                v65 = v64;
                v66 = *(v8 + 8);
                v66(v12, v7);
                v67 = sub_100141FE4(v69, v65, &v77);

                *(v63 + 4) = v67;
                _os_log_impl(&_mh_execute_header, v62, v71, "unknown element %s", v63, 0xCu);
                sub_10000BB78(v70);
              }

              else
              {

                v66 = *(v8 + 8);
                v66(v12, v7);
              }

              (v72[1])(v73, v4);
              v66(v14, v7);
              v17 = _swiftEmptyArrayStorage;
            }
          }
        }
      }
    }
  }

LABEL_7:
  v33 = v17[2];
  if (v33)
  {
    v77 = _swiftEmptyArrayStorage;
    sub_100172D4C(0, v33, 0);
    v34 = v77;
    v35 = v74 + 16;
    v36 = *(v74 + 16);
    v37 = *(v74 + 80);
    v72 = v17;
    v38 = v17 + ((v37 + 32) & ~v37);
    v73 = *(v74 + 72);
    v74 = v36;
    v39 = (v35 - 8);
    do
    {
      v40 = v75;
      v41 = v76;
      (v74)(v75, v38, v76);
      v42 = ISO18013_AAMVA_ElementIdentifier.rawValue.getter();
      v44 = v43;
      (*v39)(v40, v41);
      v77 = v34;
      v46 = v34[2];
      v45 = v34[3];
      if (v46 >= v45 >> 1)
      {
        sub_100172D4C((v45 > 1), v46 + 1, 1);
        v34 = v77;
      }

      v34[2] = v46 + 1;
      v47 = &v34[2 * v46];
      v47[4] = v42;
      v47[5] = v44;
      v38 = &v73[v38];
      --v33;
    }

    while (v33);
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return v34;
}

void *sub_10010A178(uint64_t a1)
{
  v2 = type metadata accessor for ISO18013KnownNamespaces();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = &_swiftEmptyDictionarySingleton;
  v18 = sub_100108A78(a1);
  sub_100007224(&qword_100834EA0, &qword_1006C06B0);
  sub_10010A39C();
  Collection.nilIfEmpty.getter();
  v7 = v17;

  if (v7)
  {
    (*(v3 + 104))(v6, enum case for ISO18013KnownNamespaces.iso18013_5_1(_:), v2);
    v8 = ISO18013KnownNamespaces.rawValue.getter();
    v10 = v9;
    (*(v3 + 8))(v6, v2);
    sub_10014C310(v7, v8, v10);
  }

  v18 = sub_100109788(a1);
  Collection.nilIfEmpty.getter();
  v11 = v17;

  if (v11)
  {
    (*(v3 + 104))(v6, enum case for ISO18013KnownNamespaces.iso18013_5_1_aamva(_:), v2);
    v12 = ISO18013KnownNamespaces.rawValue.getter();
    v14 = v13;
    (*(v3 + 8))(v6, v2);
    sub_10014C310(v11, v12, v14);
  }

  return v19;
}

unint64_t sub_10010A39C()
{
  result = qword_10083A990;
  if (!qword_10083A990)
  {
    sub_10000B870(&qword_100834EA0, &qword_1006C06B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A990);
  }

  return result;
}

unint64_t sub_10010A400()
{
  result = qword_10083A998;
  if (!qword_10083A998)
  {
    type metadata accessor for IdentityElement();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A998);
  }

  return result;
}

void *sub_10010A458()
{
  v1 = v0;
  v2 = type metadata accessor for ISO18013KnownNamespaces();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for IdentityElement();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = (v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v8 + 16))(v11, v1, v7);
  v12 = (*(v8 + 88))(v11, v7);
  if (v12 == enum case for IdentityElement.ageIsOver(_:))
  {
    (*(v8 + 96))(v11, v7);
    v13 = *v11;
    sub_100007224(&qword_10083A9B0, &unk_1006DFA50);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1006BF520;
    static ISO23220_1_ElementIdentifier.namespaceIdentifier.getter();
    v15 = ISO18013KnownNamespaces.rawValue.getter();
    v17 = v16;
    (*(v3 + 8))(v6, v2);
    *(v14 + 32) = v15;
    *(v14 + 40) = v17;
    *(v14 + 48) = static ISO23220_1_ElementIdentifier.ageOver(nn:)();
    *(v14 + 56) = v18;
    return v14;
  }

  if (v12 == enum case for IdentityElement.givenName(_:) || v12 == enum case for IdentityElement.familyName(_:))
  {
    sub_100007224(&qword_10083A9B8, &qword_1006D8C50);
    v20 = swift_allocObject();
    *(v20 + 1) = xmmword_1006BF520;
    v21 = type metadata accessor for ISO23220_1_Japan_ElementIdentifier();
    v20[7] = v21;
    v20[8] = sub_10010B1D4(&qword_10083A9C8, &type metadata accessor for ISO23220_1_Japan_ElementIdentifier);
    v22 = sub_100032DBC(v20 + 4);
    v23 = &enum case for ISO23220_1_Japan_ElementIdentifier.fullName(_:);
LABEL_13:
    (*(*(v21 - 8) + 104))(v22, *v23, v21);
    goto LABEL_14;
  }

  if (v12 == enum case for IdentityElement.sex(_:))
  {
    sub_100007224(&qword_10083A9B8, &qword_1006D8C50);
    v20 = swift_allocObject();
    *(v20 + 1) = xmmword_1006BF740;
    v24 = type metadata accessor for ISO23220_1_ElementIdentifier();
    v20[7] = v24;
    v20[8] = sub_10010B1D4(&qword_10083A9C0, &type metadata accessor for ISO23220_1_ElementIdentifier);
    v25 = sub_100032DBC(v20 + 4);
    (*(*(v24 - 8) + 104))(v25, enum case for ISO23220_1_ElementIdentifier.sex(_:), v24);
    v21 = type metadata accessor for ISO23220_1_Japan_ElementIdentifier();
    v20[12] = v21;
    v20[13] = sub_10010B1D4(&qword_10083A9C8, &type metadata accessor for ISO23220_1_Japan_ElementIdentifier);
    v22 = sub_100032DBC(v20 + 9);
    v23 = &enum case for ISO23220_1_Japan_ElementIdentifier.sex(_:);
    goto LABEL_13;
  }

  if (v12 == enum case for IdentityElement.portrait(_:))
  {
    sub_100007224(&qword_10083A9B8, &qword_1006D8C50);
    v20 = swift_allocObject();
    *(v20 + 1) = xmmword_1006BF520;
    v21 = type metadata accessor for ISO23220_1_Japan_ElementIdentifier();
    v20[7] = v21;
    v20[8] = sub_10010B1D4(&qword_10083A9C8, &type metadata accessor for ISO23220_1_Japan_ElementIdentifier);
    v22 = sub_100032DBC(v20 + 4);
    v23 = &enum case for ISO23220_1_Japan_ElementIdentifier.portrait(_:);
    goto LABEL_13;
  }

  if (v12 == enum case for IdentityElement.address(_:))
  {
    sub_100007224(&qword_10083A9B8, &qword_1006D8C50);
    v20 = swift_allocObject();
    *(v20 + 1) = xmmword_1006BF740;
    v43 = type metadata accessor for ISO23220_1_Japan_ElementIdentifier();
    v20[7] = v43;
    v44 = sub_10010B1D4(&qword_10083A9C8, &type metadata accessor for ISO23220_1_Japan_ElementIdentifier);
    v20[8] = v44;
    v45 = sub_100032DBC(v20 + 4);
    v46 = *(*(v43 - 8) + 104);
    v46(v45, enum case for ISO23220_1_Japan_ElementIdentifier.localGovCode(_:), v43);
    v20[12] = v43;
    v20[13] = v44;
    v47 = sub_100032DBC(v20 + 9);
    v46(v47, enum case for ISO23220_1_Japan_ElementIdentifier.residentAddress(_:), v43);
  }

  else
  {
    v20 = _swiftEmptyArrayStorage;
    if (v12 != enum case for IdentityElement.height(_:) && v12 != enum case for IdentityElement.weight(_:) && v12 != enum case for IdentityElement.eyeColor(_:) && v12 != enum case for IdentityElement.hairColor(_:) && v12 != enum case for IdentityElement.organDonorStatus(_:) && v12 != enum case for IdentityElement.veteranStatus(_:) && v12 != enum case for IdentityElement.issuingAuthority(_:) && v12 != enum case for IdentityElement.documentDHSComplianceStatus(_:) && v12 != enum case for IdentityElement.documentIssueDate(_:) && v12 != enum case for IdentityElement.documentExpirationDate(_:))
    {
      if (v12 == enum case for IdentityElement.documentNumber(_:))
      {
        sub_100007224(&qword_10083A9B8, &qword_1006D8C50);
        v20 = swift_allocObject();
        *(v20 + 1) = xmmword_1006BF520;
        v21 = type metadata accessor for ISO23220_1_Japan_ElementIdentifier();
        v20[7] = v21;
        v20[8] = sub_10010B1D4(&qword_10083A9C8, &type metadata accessor for ISO23220_1_Japan_ElementIdentifier);
        v22 = sub_100032DBC(v20 + 4);
        v23 = &enum case for ISO23220_1_Japan_ElementIdentifier.individualNumber(_:);
        goto LABEL_13;
      }

      if (v12 != enum case for IdentityElement.drivingPrivileges(_:))
      {
        if (v12 == enum case for IdentityElement.age(_:))
        {
          sub_100007224(&qword_10083A9B8, &qword_1006D8C50);
          v20 = swift_allocObject();
          *(v20 + 1) = xmmword_1006BF520;
          v21 = type metadata accessor for ISO23220_1_ElementIdentifier();
          v20[7] = v21;
          v20[8] = sub_10010B1D4(&qword_10083A9C0, &type metadata accessor for ISO23220_1_ElementIdentifier);
          v22 = sub_100032DBC(v20 + 4);
          v23 = &enum case for ISO23220_1_ElementIdentifier.ageInYears(_:);
          goto LABEL_13;
        }

        if (v12 == enum case for IdentityElement.dateOfBirth(_:))
        {
          sub_100007224(&qword_10083A9B8, &qword_1006D8C50);
          v20 = swift_allocObject();
          *(v20 + 1) = xmmword_1006BF740;
          v48 = type metadata accessor for ISO23220_1_ElementIdentifier();
          v20[7] = v48;
          v20[8] = sub_10010B1D4(&qword_10083A9C0, &type metadata accessor for ISO23220_1_ElementIdentifier);
          v49 = sub_100032DBC(v20 + 4);
          (*(*(v48 - 8) + 104))(v49, enum case for ISO23220_1_ElementIdentifier.birthDate(_:), v48);
          v21 = type metadata accessor for ISO23220_1_Japan_ElementIdentifier();
          v20[12] = v21;
          v20[13] = sub_10010B1D4(&qword_10083A9C8, &type metadata accessor for ISO23220_1_Japan_ElementIdentifier);
          v22 = sub_100032DBC(v20 + 9);
          v23 = &enum case for ISO23220_1_Japan_ElementIdentifier.birthDate(_:);
          goto LABEL_13;
        }

        (*(v8 + 8))(v11, v7);
      }
    }
  }

LABEL_14:
  v26 = v20[2];
  if (v26)
  {
    v58 = _swiftEmptyArrayStorage;
    sub_100172D8C(0, v26, 0);
    v14 = v58;
    v50[1] = v20;
    v27 = (v20 + 4);
    do
    {
      sub_100020260(v27, v51);
      sub_10000BA08(v51, v52);
      swift_getDynamicType();
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v29 = *(AssociatedTypeWitness - 8);
      v30 = *(v29 + 64);
      __chkstk_darwin(AssociatedTypeWitness);
      v32 = v50 - v31;
      dispatch thunk of static MobileDocumentElementIdentifier.namespaceIdentifier.getter();
      swift_getAssociatedConformanceWitness();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v33 = v53;
      sub_10000BA08(v51, v52);
      v34 = *(v33 + 16);
      dispatch thunk of RawRepresentable.rawValue.getter();
      (*(v29 + 8))(v32, AssociatedTypeWitness);
      sub_10000BB78(v51);
      v35 = v56;
      v36 = v57;
      v37 = v54;
      v38 = v55;
      v58 = v14;
      v40 = *(v14 + 16);
      v39 = *(v14 + 24);
      if (v40 >= v39 >> 1)
      {
        sub_100172D8C((v39 > 1), v40 + 1, 1);
        v14 = v58;
      }

      *(v14 + 16) = v40 + 1;
      v41 = (v14 + 32 * v40);
      v41[4] = v35;
      v41[5] = v36;
      v41[6] = v37;
      v41[7] = v38;
      v27 += 40;
      --v26;
    }

    while (v26);
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return v14;
}

uint64_t sub_10010AF74()
{
  v0 = sub_10010A458();
  v1 = sub_10003E868(_swiftEmptyArrayStorage);
  v30 = v0[2];
  if (!v30)
  {
LABEL_20:

    return v1;
  }

  v2 = 0;
  v3 = v0 + 7;
  v29 = v0;
  while (v2 < v0[2])
  {
    v5 = *(v3 - 3);
    v4 = *(v3 - 2);
    v6 = *(v3 - 1);
    v7 = *v3;
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = sub_10003ADCC(v5, v4);
    v11 = v1[2];
    v12 = (v9 & 1) == 0;
    v13 = v11 + v12;
    if (__OFADD__(v11, v12))
    {
      goto LABEL_22;
    }

    v14 = v9;
    if (v1[3] >= v13)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v9)
        {
          goto LABEL_11;
        }
      }

      else
      {
        sub_1001705CC();
        if (v14)
        {
          goto LABEL_11;
        }
      }
    }

    else
    {
      sub_100167CF4(v13, isUniquelyReferenced_nonNull_native);
      v15 = sub_10003ADCC(v5, v4);
      if ((v14 & 1) != (v16 & 1))
      {
        goto LABEL_24;
      }

      v10 = v15;
      if (v14)
      {
LABEL_11:

        goto LABEL_15;
      }
    }

    v1[(v10 >> 6) + 8] |= 1 << v10;
    v17 = (v1[6] + 16 * v10);
    *v17 = v5;
    v17[1] = v4;
    *(v1[7] + 8 * v10) = _swiftEmptyArrayStorage;
    v18 = v1[2];
    v19 = __OFADD__(v18, 1);
    v20 = v18 + 1;
    if (v19)
    {
      goto LABEL_23;
    }

    v1[2] = v20;
LABEL_15:
    v21 = v1[7];
    v22 = *(v21 + 8 * v10);
    v23 = swift_isUniquelyReferenced_nonNull_native();
    *(v21 + 8 * v10) = v22;
    v31 = v6;
    if ((v23 & 1) == 0)
    {
      v22 = sub_1003C5110(0, *(v22 + 2) + 1, 1, v22);
      *(v21 + 8 * v10) = v22;
    }

    v25 = *(v22 + 2);
    v24 = *(v22 + 3);
    if (v25 >= v24 >> 1)
    {
      *(v21 + 8 * v10) = sub_1003C5110((v24 > 1), v25 + 1, 1, v22);
    }

    ++v2;

    v26 = *(v21 + 8 * v10);
    *(v26 + 16) = v25 + 1;
    v27 = v26 + 16 * v25;
    *(v27 + 32) = v31;
    *(v27 + 40) = v7;
    v3 += 4;
    v0 = v29;
    if (v30 == v2)
    {
      goto LABEL_20;
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

uint64_t sub_10010B1D4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t *sub_10010B21C(uint64_t a1)
{
  v88 = type metadata accessor for ISO23220_1_ElementIdentifier();
  v86 = *(v88 - 8);
  v2 = *(v86 + 64);
  __chkstk_darwin(v88);
  v87 = &v80 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for IdentityElement();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = (&v80 - v15);
  v17 = *(v10 + 16);
  v17(&v80 - v15, a1, v9);
  v18 = (*(v10 + 88))(v16, v9);
  if (v18 == enum case for IdentityElement.ageIsOver(_:))
  {
    (*(v10 + 96))(v16, v9);
    v19 = *v16;
    sub_100007224(&qword_100833B78, &unk_1006D9F00);
    v20 = swift_allocObject();
    *(v20 + 1) = xmmword_1006BF520;
    v20[4] = static ISO23220_1_ElementIdentifier.ageOver(nn:)();
    v20[5] = v21;
    return v20;
  }

  if (v18 == enum case for IdentityElement.givenName(_:))
  {
    sub_100007224(&qword_10083A9D0, &qword_1006D8C58);
    v22 = v86;
    v23 = *(v86 + 72);
    v24 = (*(v86 + 80) + 32) & ~*(v86 + 80);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1006BF740;
    v26 = v25 + v24;
    v27 = *(v22 + 104);
    v28 = v88;
    v27(v26, enum case for ISO23220_1_ElementIdentifier.givenName(_:), v88);
    v29 = &enum case for ISO23220_1_ElementIdentifier.givenNameLatin1(_:);
LABEL_7:
    v27(v26 + v23, *v29, v28);
    v32 = v25;
    goto LABEL_13;
  }

  if (v18 == enum case for IdentityElement.familyName(_:))
  {
    sub_100007224(&qword_10083A9D0, &qword_1006D8C58);
    v30 = v86;
    v23 = *(v86 + 72);
    v31 = (*(v86 + 80) + 32) & ~*(v86 + 80);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1006BF740;
    v26 = v25 + v31;
    v27 = *(v30 + 104);
    v28 = v88;
    v27(v26, enum case for ISO23220_1_ElementIdentifier.familyName(_:), v88);
    v29 = &enum case for ISO23220_1_ElementIdentifier.familyNameLatin1(_:);
    goto LABEL_7;
  }

  if (v18 == enum case for IdentityElement.sex(_:))
  {
    sub_100007224(&qword_10083A9D0, &qword_1006D8C58);
    v33 = v86;
    v34 = *(v86 + 72);
    v35 = (*(v86 + 80) + 32) & ~*(v86 + 80);
    v36 = swift_allocObject();
    v32 = v36;
    *(v36 + 16) = xmmword_1006BF520;
    v37 = &enum case for ISO23220_1_ElementIdentifier.sex(_:);
LABEL_12:
    (*(v33 + 104))(v36 + v35, *v37, v88);
    goto LABEL_13;
  }

  if (v18 == enum case for IdentityElement.portrait(_:))
  {
    sub_100007224(&qword_10083A9D0, &qword_1006D8C58);
    v33 = v86;
    v38 = *(v86 + 72);
    v35 = (*(v86 + 80) + 32) & ~*(v86 + 80);
    v36 = swift_allocObject();
    v32 = v36;
    *(v36 + 16) = xmmword_1006BF520;
    v37 = &enum case for ISO23220_1_ElementIdentifier.portrait(_:);
    goto LABEL_12;
  }

  if (v18 == enum case for IdentityElement.address(_:))
  {
    sub_100007224(&qword_10083A9D0, &qword_1006D8C58);
    v54 = v86;
    v55 = *(v86 + 72);
    v56 = (*(v86 + 80) + 32) & ~*(v86 + 80);
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_1006D8C30;
    v58 = v57 + v56;
    v59 = *(v54 + 104);
    v60 = v88;
    v59(v58, enum case for ISO23220_1_ElementIdentifier.residentAddress(_:), v88);
    v59(v58 + v55, enum case for ISO23220_1_ElementIdentifier.residentCity(_:), v60);
    v59(v58 + 2 * v55, enum case for ISO23220_1_ElementIdentifier.residentCityLatin1(_:), v60);
    v59(v58 + 3 * v55, enum case for ISO23220_1_ElementIdentifier.residentPostalCode(_:), v60);
    v32 = v57;
    v59(v58 + 4 * v55, enum case for ISO23220_1_ElementIdentifier.residentCountry(_:), v60);
  }

  else
  {
    v85 = v8;
    v32 = _swiftEmptyArrayStorage;
    if (v18 != enum case for IdentityElement.height(_:) && v18 != enum case for IdentityElement.weight(_:) && v18 != enum case for IdentityElement.eyeColor(_:) && v18 != enum case for IdentityElement.hairColor(_:) && v18 != enum case for IdentityElement.organDonorStatus(_:) && v18 != enum case for IdentityElement.veteranStatus(_:))
    {
      if (v18 == enum case for IdentityElement.issuingAuthority(_:))
      {
        sub_100007224(&qword_10083A9D0, &qword_1006D8C58);
        v61 = v86;
        v62 = *(v86 + 72);
        v63 = (*(v86 + 80) + 32) & ~*(v86 + 80);
        v64 = swift_allocObject();
        *(v64 + 16) = xmmword_1006BFF90;
        v65 = v64 + v63;
        v66 = *(v61 + 104);
        v67 = v88;
        v66(v65, enum case for ISO23220_1_ElementIdentifier.issuingAuthority(_:), v88);
        v66(v65 + v62, enum case for ISO23220_1_ElementIdentifier.issuingSubdivision(_:), v67);
        v32 = v64;
        v66(v65 + 2 * v62, enum case for ISO23220_1_ElementIdentifier.issuingCountry(_:), v67);
      }

      else if (v18 != enum case for IdentityElement.documentDHSComplianceStatus(_:))
      {
        if (v18 == enum case for IdentityElement.documentIssueDate(_:))
        {
          sub_100007224(&qword_10083A9D0, &qword_1006D8C58);
          v33 = v86;
          v68 = *(v86 + 72);
          v35 = (*(v86 + 80) + 32) & ~*(v86 + 80);
          v36 = swift_allocObject();
          v32 = v36;
          *(v36 + 16) = xmmword_1006BF520;
          v37 = &enum case for ISO23220_1_ElementIdentifier.issueDate(_:);
          goto LABEL_12;
        }

        if (v18 == enum case for IdentityElement.documentExpirationDate(_:))
        {
          sub_100007224(&qword_10083A9D0, &qword_1006D8C58);
          v33 = v86;
          v69 = *(v86 + 72);
          v35 = (*(v86 + 80) + 32) & ~*(v86 + 80);
          v36 = swift_allocObject();
          v32 = v36;
          *(v36 + 16) = xmmword_1006BF520;
          v37 = &enum case for ISO23220_1_ElementIdentifier.expiryDate(_:);
          goto LABEL_12;
        }

        if (v18 == enum case for IdentityElement.documentNumber(_:))
        {
          sub_100007224(&qword_10083A9D0, &qword_1006D8C58);
          v33 = v86;
          v70 = *(v86 + 72);
          v35 = (*(v86 + 80) + 32) & ~*(v86 + 80);
          v36 = swift_allocObject();
          v32 = v36;
          *(v36 + 16) = xmmword_1006BF520;
          v37 = &enum case for ISO23220_1_ElementIdentifier.documentNumber(_:);
          goto LABEL_12;
        }

        if (v18 != enum case for IdentityElement.drivingPrivileges(_:))
        {
          if (v18 == enum case for IdentityElement.age(_:))
          {
            sub_100007224(&qword_10083A9D0, &qword_1006D8C58);
            v33 = v86;
            v71 = *(v86 + 72);
            v35 = (*(v86 + 80) + 32) & ~*(v86 + 80);
            v36 = swift_allocObject();
            v32 = v36;
            *(v36 + 16) = xmmword_1006BF520;
            v37 = &enum case for ISO23220_1_ElementIdentifier.ageInYears(_:);
            goto LABEL_12;
          }

          if (v18 == enum case for IdentityElement.dateOfBirth(_:))
          {
            sub_100007224(&qword_10083A9D0, &qword_1006D8C58);
            v33 = v86;
            v72 = *(v86 + 72);
            v35 = (*(v86 + 80) + 32) & ~*(v86 + 80);
            v36 = swift_allocObject();
            v32 = v36;
            *(v36 + 16) = xmmword_1006BF520;
            v37 = &enum case for ISO23220_1_ElementIdentifier.birthDate(_:);
            goto LABEL_12;
          }

          defaultLogger()();
          v17(v14, a1, v9);
          v73 = Logger.logObject.getter();
          LODWORD(v84) = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v73, v84))
          {
            v74 = swift_slowAlloc();
            v82 = v74;
            v83 = swift_slowAlloc();
            v89 = v83;
            *v74 = 136315138;
            sub_10010A400();
            v81 = dispatch thunk of CustomStringConvertible.description.getter();
            v76 = v75;
            v77 = *(v10 + 8);
            v77(v14, v9);
            v78 = sub_100141FE4(v81, v76, &v89);

            v79 = v82;
            *(v82 + 1) = v78;
            _os_log_impl(&_mh_execute_header, v73, v84, "unknown element %s", v79, 0xCu);
            sub_10000BB78(v83);
          }

          else
          {

            v77 = *(v10 + 8);
            v77(v14, v9);
          }

          (*(v5 + 8))(v85, v4);
          v77(v16, v9);
          v32 = _swiftEmptyArrayStorage;
        }
      }
    }
  }

LABEL_13:
  v39 = v32[2];
  if (v39)
  {
    v89 = _swiftEmptyArrayStorage;
    sub_100172D4C(0, v39, 0);
    v20 = v89;
    v40 = v86 + 16;
    v41 = *(v86 + 16);
    v42 = *(v86 + 80);
    v84 = v32;
    v43 = v32 + ((v42 + 32) & ~v42);
    v85 = *(v86 + 72);
    v86 = v41;
    v44 = (v40 - 8);
    do
    {
      v45 = v87;
      v46 = v88;
      (v86)(v87, v43, v88);
      v47 = ISO23220_1_ElementIdentifier.rawValue.getter();
      v49 = v48;
      (*v44)(v45, v46);
      v89 = v20;
      v51 = v20[2];
      v50 = v20[3];
      if (v51 >= v50 >> 1)
      {
        sub_100172D4C((v50 > 1), v51 + 1, 1);
        v20 = v89;
      }

      v20[2] = v51 + 1;
      v52 = &v20[2 * v51];
      v52[4] = v47;
      v52[5] = v49;
      v43 = &v85[v43];
      --v39;
    }

    while (v39);
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return v20;
}

uint64_t *sub_10010BDE8(uint64_t a1)
{
  v54 = type metadata accessor for ISO23220_PhotoID_1_ElementIdentifier();
  v52 = *(v54 - 8);
  v2 = *(v52 + 64);
  __chkstk_darwin(v54);
  v53 = &v46[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v46[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for IdentityElement();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v46[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v16 = &v46[-v15];
  v17 = *(v10 + 16);
  v17(&v46[-v15], a1, v9);
  v18 = (*(v10 + 88))(v16, v9);
  if (v18 != enum case for IdentityElement.ageIsOver(_:) && v18 != enum case for IdentityElement.givenName(_:) && v18 != enum case for IdentityElement.familyName(_:) && v18 != enum case for IdentityElement.sex(_:) && v18 != enum case for IdentityElement.portrait(_:) && v18 != enum case for IdentityElement.address(_:) && v18 != enum case for IdentityElement.height(_:) && v18 != enum case for IdentityElement.weight(_:) && v18 != enum case for IdentityElement.eyeColor(_:) && v18 != enum case for IdentityElement.hairColor(_:) && v18 != enum case for IdentityElement.organDonorStatus(_:) && v18 != enum case for IdentityElement.veteranStatus(_:) && v18 != enum case for IdentityElement.issuingAuthority(_:) && v18 != enum case for IdentityElement.documentDHSComplianceStatus(_:) && v18 != enum case for IdentityElement.documentIssueDate(_:) && v18 != enum case for IdentityElement.documentExpirationDate(_:) && v18 != enum case for IdentityElement.documentNumber(_:) && v18 != enum case for IdentityElement.drivingPrivileges(_:) && v18 != enum case for IdentityElement.age(_:) && v18 != enum case for IdentityElement.dateOfBirth(_:))
  {
    defaultLogger()();
    v17(v14, a1, v9);
    v19 = v14;
    v20 = v8;
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v51 = v5;
      v24 = v23;
      v48 = swift_slowAlloc();
      v55 = v48;
      *v24 = 136315138;
      sub_10010A400();
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v49 = v4;
      v50 = v20;
      v26 = v25;
      v28 = v27;
      v29 = *(v10 + 8);
      v47 = v22;
      v29(v19, v9);
      v30 = sub_100141FE4(v26, v28, &v55);

      *(v24 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v21, v47, "unknown element %s", v24, 0xCu);
      sub_10000BB78(v48);

      (*(v51 + 8))(v50, v49);
    }

    else
    {

      v29 = *(v10 + 8);
      v29(v19, v9);
      (*(v5 + 8))(v20, v4);
    }

    v29(v16, v9);
  }

  v31 = _swiftEmptyArrayStorage[2];
  if (v31)
  {
    v55 = _swiftEmptyArrayStorage;
    sub_100172D4C(0, v31, 0);
    v32 = v55;
    v34 = v52 + 16;
    v33 = *(v52 + 16);
    v35 = _swiftEmptyArrayStorage + ((*(v52 + 80) + 32) & ~*(v52 + 80));
    v51 = *(v52 + 72);
    v52 = v33;
    v36 = (v34 - 8);
    do
    {
      v37 = v53;
      v38 = v54;
      (v52)(v53, v35, v54);
      v39 = ISO23220_PhotoID_1_ElementIdentifier.rawValue.getter();
      v41 = v40;
      (*v36)(v37, v38);
      v55 = v32;
      v43 = v32[2];
      v42 = v32[3];
      if (v43 >= v42 >> 1)
      {
        sub_100172D4C((v42 > 1), v43 + 1, 1);
        v32 = v55;
      }

      v32[2] = v43 + 1;
      v44 = &v32[2 * v43];
      v44[4] = v39;
      v44[5] = v41;
      v35 += v51;
      --v31;
    }

    while (v31);
  }

  else
  {
    v32 = _swiftEmptyArrayStorage;
  }

  return v32;
}