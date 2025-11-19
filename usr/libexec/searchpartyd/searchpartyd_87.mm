uint64_t storeEnumTagSinglePayload for OwnedBeaconState.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 22 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 22) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEA)
  {
    v4 = 0;
  }

  if (a2 > 0xE9)
  {
    v5 = ((a2 - 234) >> 8) + 1;
    *result = a2 + 22;
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
    *result = a2 + 22;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10091C514()
{
  result = qword_1016AE820;
  if (!qword_1016AE820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AE820);
  }

  return result;
}

unint64_t sub_10091C56C()
{
  result = qword_1016AE828;
  if (!qword_1016AE828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AE828);
  }

  return result;
}

unint64_t sub_10091C5C4()
{
  result = qword_1016AE830;
  if (!qword_1016AE830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AE830);
  }

  return result;
}

unint64_t sub_10091C61C()
{
  result = qword_1016AE838;
  if (!qword_1016AE838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AE838);
  }

  return result;
}

unint64_t sub_10091C674()
{
  result = qword_1016AE840;
  if (!qword_1016AE840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AE840);
  }

  return result;
}

unint64_t sub_10091C6CC()
{
  result = qword_1016AE848;
  if (!qword_1016AE848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AE848);
  }

  return result;
}

unint64_t sub_10091C724()
{
  result = qword_1016AE850;
  if (!qword_1016AE850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AE850);
  }

  return result;
}

unint64_t sub_10091C77C()
{
  result = qword_1016AE858;
  if (!qword_1016AE858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AE858);
  }

  return result;
}

unint64_t sub_10091C7D4()
{
  result = qword_1016AE860;
  if (!qword_1016AE860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AE860);
  }

  return result;
}

unint64_t sub_10091C82C()
{
  result = qword_1016AE868;
  if (!qword_1016AE868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AE868);
  }

  return result;
}

unint64_t sub_10091C884()
{
  result = qword_1016AE870;
  if (!qword_1016AE870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AE870);
  }

  return result;
}

unint64_t sub_10091C8DC()
{
  result = qword_1016AE878;
  if (!qword_1016AE878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AE878);
  }

  return result;
}

unint64_t sub_10091C934()
{
  result = qword_1016AE880;
  if (!qword_1016AE880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AE880);
  }

  return result;
}

unint64_t sub_10091C98C()
{
  result = qword_1016AE888;
  if (!qword_1016AE888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AE888);
  }

  return result;
}

unint64_t sub_10091C9E4()
{
  result = qword_1016AE890;
  if (!qword_1016AE890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AE890);
  }

  return result;
}

unint64_t sub_10091CA3C()
{
  result = qword_1016AE898;
  if (!qword_1016AE898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AE898);
  }

  return result;
}

unint64_t sub_10091CA94()
{
  result = qword_1016AE8A0;
  if (!qword_1016AE8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AE8A0);
  }

  return result;
}

unint64_t sub_10091CAEC()
{
  result = qword_1016AE8A8;
  if (!qword_1016AE8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AE8A8);
  }

  return result;
}

unint64_t sub_10091CB44()
{
  result = qword_1016AE8B0;
  if (!qword_1016AE8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AE8B0);
  }

  return result;
}

unint64_t sub_10091CB9C()
{
  result = qword_1016AE8B8;
  if (!qword_1016AE8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AE8B8);
  }

  return result;
}

unint64_t sub_10091CBF4()
{
  result = qword_1016AE8C0;
  if (!qword_1016AE8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AE8C0);
  }

  return result;
}

unint64_t sub_10091CC4C()
{
  result = qword_1016AE8C8;
  if (!qword_1016AE8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AE8C8);
  }

  return result;
}

unint64_t sub_10091CCA4()
{
  result = qword_1016AE8D0;
  if (!qword_1016AE8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AE8D0);
  }

  return result;
}

unint64_t sub_10091CCFC()
{
  result = qword_1016AE8D8;
  if (!qword_1016AE8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AE8D8);
  }

  return result;
}

unint64_t sub_10091CD54()
{
  result = qword_1016AE8E0;
  if (!qword_1016AE8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AE8E0);
  }

  return result;
}

unint64_t sub_10091CDAC()
{
  result = qword_1016AE8E8;
  if (!qword_1016AE8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AE8E8);
  }

  return result;
}

unint64_t sub_10091CE04()
{
  result = qword_1016AE8F0;
  if (!qword_1016AE8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AE8F0);
  }

  return result;
}

uint64_t sub_10091CE58(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000101364FA0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C61766F72707061 && a2 == 0xED00006574617453 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000101364FC0 == a2)
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

uint64_t sub_10091CFD4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6449656C62617473 && a2 == 0xEF72656669746E65 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x44676E6972696170 && a2 == 0xEB00000000657461 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6C65646F6DLL && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x65566D6574737973 && a2 == 0xED00006E6F697372 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6449726F646E6576 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x49746375646F7270 && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 1701605234 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x4C79726574746162 && a2 == 0xEC0000006C657665 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000015 && 0x800000010135E720 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000101364E70 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD00000000000001FLL && 0x8000000101364E90 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000101364EB0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD00000000000001DLL && 0x8000000101364ED0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000024 && 0x8000000101364EF0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x736572616873 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x746176726573626FLL && a2 == 0xEC000000736E6F69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD00000000000001BLL && 0x8000000101364F20 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD00000000000001DLL && 0x8000000101364F40 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0x644970756F7267 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0x644974726170 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0x49746375646F7270 && a2 == 0xEB000000006F666ELL)
  {

    return 22;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 22;
    }

    else
    {
      return 23;
    }
  }
}

uint64_t sub_10091D6F4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7461446572616873 && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6974617269707865 && a2 == 0xEA00000000006E6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6148656572616873 && a2 == 0xEC000000656C646ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001013477D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010134C4B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7079546572616873 && a2 == 0xE900000000000065)
  {

    return 6;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_10091D960(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6564496572616873 && a2 == 0xEF7265696669746ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E614872656E776FLL && a2 == 0xEB00000000656C64 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001013477D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6C65646F6DLL && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x65566D6574737973 && a2 == 0xED00006E6F697372 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6449726F646E6576 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x49746375646F7270 && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6465747065636361 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 1701605234 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x7079546572616873 && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x7369747265766461 && a2 == 0xEF7865646E496465 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x7461446572616873 && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x746176726573626FLL && a2 == 0xEC000000736E6F69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x644970756F7267 && a2 == 0xE700000000000000)
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

uint64_t sub_10091DE84(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x657264644163616DLL && a2 == 0xEA00000000007373 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000101347C70 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x614D6E6F63616562 && a2 == 0xE900000000000070 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000101364F80 == a2)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_10091E0A0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F636165426C6C61 && a2 == 0xEA0000000000736ELL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000101364E50 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x70756F72476C6C61 && a2 == 0xE900000000000073)
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

uint64_t sub_10091E1E8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10091E298(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_10091E214(uint64_t a1)
{
  *(a1 + 8) = sub_10091E244();
  result = sub_10059BF4C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_10091E244()
{
  result = qword_1016AE8F8;
  if (!qword_1016AE8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AE8F8);
  }

  return result;
}

uint64_t sub_10091E298(uint64_t *a1)
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

    v6 = type metadata accessor for BinaryEncodingError();
    sub_100205404();
    swift_allocError();
    (*(*(v6 - 8) + 104))(v11, enum case for BinaryEncodingError.encodingError(_:), v6);
    swift_willThrow();
    sub_100016590(v9, v10);
  }

  sub_100007BAC(v15);
  sub_100007BAC(a1);
  return v6;
}

uint64_t sub_10091E468()
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

uint64_t getEnumTagSinglePayload for BeaconObservation.ObservationType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xD5)
  {
    goto LABEL_17;
  }

  if (a2 + 43 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 43) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 43;
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

      return (*a1 | (v4 << 8)) - 43;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 43;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x2C;
  v8 = v6 - 44;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BeaconObservation.ObservationType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 43 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 43) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xD5)
  {
    v4 = 0;
  }

  if (a2 > 0xD4)
  {
    v5 = ((a2 - 213) >> 8) + 1;
    *result = a2 + 43;
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
    *result = a2 + 43;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10091E648()
{
  result = qword_1016AE998;
  if (!qword_1016AE998)
  {
    sub_1000BC580(&qword_1016AE9A0, "H6\t");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AE998);
  }

  return result;
}

unint64_t sub_10091E6AC(char a1)
{
  switch(a1)
  {
    case 1:
      v4 = 0x206465726961702ELL;
      break;
    case 2:
    case 19:
      _StringGuts.grow(_:)(35);

      v4 = 0xD000000000000020;
      break;
    case 3:
      _StringGuts.grow(_:)(34);

      v4 = 0xD00000000000001FLL;
      break;
    case 4:
      _StringGuts.grow(_:)(32);

      v4 = 0xD00000000000001DLL;
      break;
    case 5:
    case 15:
    case 28:
    case 35:
      _StringGuts.grow(_:)(33);

      v4 = 0xD00000000000001ELL;
      break;
    case 6:
    case 20:
    case 33:
    case 41:
      _StringGuts.grow(_:)(30);

      v4 = 0xD00000000000001BLL;
      break;
    case 7:
    case 9:
    case 14:
    case 30:
    case 32:
      _StringGuts.grow(_:)(28);

      v4 = 0xD000000000000019;
      break;
    case 8:
    case 10:
      _StringGuts.grow(_:)(26);

      v4 = 0xD000000000000017;
      break;
    case 11:
      _StringGuts.grow(_:)(31);

      v4 = 0xD00000000000001CLL;
      break;
    case 12:
    case 29:
      _StringGuts.grow(_:)(27);

      v4 = 0xD000000000000018;
      break;
    case 13:
    case 22:
    case 31:
    case 42:
    case 43:
      _StringGuts.grow(_:)(29);

      v4 = 0xD00000000000001ALL;
      break;
    case 16:
    case 21:
      _StringGuts.grow(_:)(38);

      v4 = 0xD000000000000023;
      break;
    case 17:
    case 38:
      _StringGuts.grow(_:)(40);

      v4 = 0xD000000000000025;
      break;
    case 18:
      _StringGuts.grow(_:)(36);

      v4 = 0xD000000000000021;
      break;
    case 23:
      _StringGuts.grow(_:)(21);

      v4 = 0xD000000000000012;
      break;
    case 24:
    case 26:
    case 27:
    case 39:
      _StringGuts.grow(_:)(24);

      v4 = 0xD000000000000015;
      break;
    case 25:
      _StringGuts.grow(_:)(22);

      v4 = 0xD000000000000013;
      break;
    case 34:
    case 36:
      _StringGuts.grow(_:)(41);

      v4 = 0xD000000000000026;
      break;
    case 37:
      _StringGuts.grow(_:)(37);

      v4 = 0xD000000000000022;
      break;
    case 40:
      _StringGuts.grow(_:)(23);

      v4 = 0xD000000000000014;
      break;
    default:
      v4 = 0x64657461636F6C2ELL;
      break;
  }

  v1._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v1);

  v2._countAndFlagsBits = 41;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  return v4;
}

uint64_t sub_10091F290(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016AE9D0, &qword_1013C6A38);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v14[-v8];
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_1009203C4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14[15] = 0;
  type metadata accessor for UUID();
  sub_100920418(&qword_101698330, &type metadata accessor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = type metadata accessor for BeaconObservation();
    v12 = *(v11 + 20);
    v14[14] = 1;
    type metadata accessor for Date();
    sub_100920418(&unk_101697F60, &type metadata accessor for Date);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v14[13] = *(v3 + *(v11 + 24));
    v14[12] = 2;
    sub_1007AEC40();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10091F4D8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = type metadata accessor for Date();
  v29 = *(v4 - 8);
  v30 = v4;
  v5 = *(v29 + 64);
  __chkstk_darwin(v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for UUID();
  v27 = *(v33 - 8);
  v8 = *(v27 + 64);
  __chkstk_darwin(v33);
  v31 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1000BC4D4(&qword_1016AE9C0, &qword_1013C6A30);
  v28 = *(v32 - 8);
  v10 = *(v28 + 64);
  __chkstk_darwin(v32);
  v12 = &v24 - v11;
  v13 = type metadata accessor for BeaconObservation();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_1009203C4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v24 = v13;
  v25 = a1;
  v18 = v16;
  v20 = v28;
  v19 = v29;
  v21 = v30;
  v37 = 0;
  sub_100920418(&qword_101698300, &type metadata accessor for UUID);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v27 + 32))(v18, v31, v33);
  v36 = 1;
  sub_100920418(&qword_101697F40, &type metadata accessor for Date);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v19 + 32))(v18 + *(v24 + 20), v7, v21);
  v34 = 2;
  sub_1007AF040();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v22 = v25;
  (*(v20 + 8))(v12, v32);
  *(v18 + *(v24 + 24)) = v35;
  sub_10073B64C(v18, v26);
  sub_100007BAC(v22);
  return sub_10073B5F0(v18);
}

Swift::Int sub_10091F9B8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_1013C6B58[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_10091FA40()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_1013C6B58[v1]);
  return Hasher._finalize()();
}

uint64_t sub_10091FA8C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100920460(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_10091FC28()
{
  result = qword_1016AE9A8;
  if (!qword_1016AE9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AE9A8);
  }

  return result;
}

unint64_t sub_10091FC7C()
{
  v1 = 1702125924;
  if (*v0 != 1)
  {
    v1 = 1701869940;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_10091FCCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1009207C8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10091FCF4(uint64_t a1)
{
  v2 = sub_1009203C4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10091FD30(uint64_t a1)
{
  v2 = sub_1009203C4();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_10091FD9C(uint64_t a1)
{
  v3 = v1;
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_100920418(&qword_1016967B0, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v4 = *(a1 + 20);
  type metadata accessor for Date();
  sub_100920418(&unk_101698070, &type metadata accessor for Date);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(qword_1013C6B58[*(v3 + *(a1 + 24))]);
  return Hasher._finalize()();
}

void sub_10091FEA8(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  type metadata accessor for UUID();
  sub_100920418(&qword_1016967B0, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v5 = *(a2 + 20);
  type metadata accessor for Date();
  sub_100920418(&unk_101698070, &type metadata accessor for Date);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(qword_1013C6B58[*(v4 + *(a2 + 24))]);
}

Swift::Int sub_10091FFA4(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_100920418(&qword_1016967B0, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v5 = *(a2 + 20);
  type metadata accessor for Date();
  sub_100920418(&unk_101698070, &type metadata accessor for Date);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(qword_1013C6B58[*(v4 + *(a2 + 24))]);
  return Hasher._finalize()();
}

BOOL sub_1009200AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (static UUID.== infix(_:_:)() & 1) != 0 && (v6 = *(a3 + 20), (static Date.== infix(_:_:)()))
  {
    return qword_1013C6B58[*(a1 + *(a3 + 24))] == qword_1013C6B58[*(a2 + *(a3 + 24))];
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1009201A4()
{
  _StringGuts.grow(_:)(37);

  v1 = type metadata accessor for BeaconObservation();
  sub_100920418(&qword_1016AE9B8, type metadata accessor for BeaconObservation);
  v2._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 0x6669746E65646920;
  v3._object = 0xED0000203A726569;
  String.append(_:)(v3);
  type metadata accessor for UUID();
  sub_100920418(&qword_101696930, &type metadata accessor for UUID);
  v4._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v4);

  v5._countAndFlagsBits = 0x203A6570797420;
  v5._object = 0xE700000000000000;
  String.append(_:)(v5);
  v6._countAndFlagsBits = sub_10091E6AC(*(v0 + *(v1 + 24)));
  String.append(_:)(v6);

  v7._countAndFlagsBits = 0x203A6574616420;
  v7._object = 0xE700000000000000;
  String.append(_:)(v7);
  v8 = *(v1 + 20);
  type metadata accessor for Date();
  sub_100920418(&qword_1016969A0, &type metadata accessor for Date);
  v9._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v9);

  v10._countAndFlagsBits = 62;
  v10._object = 0xE100000000000000;
  String.append(_:)(v10);
  return 60;
}

unint64_t sub_1009203C4()
{
  result = qword_1016AE9C8;
  if (!qword_1016AE9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AE9C8);
  }

  return result;
}

uint64_t sub_100920418(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100920460(uint64_t a1)
{
  if (a1 > 399)
  {
    if (a1 > 600)
    {
      if (a1 <= 699)
      {
        if (a1 == 601)
        {
          return 39;
        }

        if (a1 == 602)
        {
          return 40;
        }
      }

      else
      {
        switch(a1)
        {
          case 700:
            return 41;
          case 701:
            return 42;
          case 801:
            return 43;
        }
      }

      return 44;
    }

    else
    {
      v2 = a1 - 400;
      result = 1;
      switch(v2)
      {
        case 0:
          result = 0;
          break;
        case 2:
          return result;
        case 3:
          result = 2;
          break;
        case 5:
          result = 3;
          break;
        case 6:
          result = 4;
          break;
        case 7:
          result = 5;
          break;
        case 100:
          result = 32;
          break;
        case 101:
          result = 33;
          break;
        case 102:
          result = 34;
          break;
        case 103:
          result = 35;
          break;
        case 104:
          result = 36;
          break;
        case 105:
          result = 37;
          break;
        case 106:
          result = 38;
          break;
        default:
          return 44;
      }
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        result = 6;
        break;
      case 3:
        result = 7;
        break;
      case 4:
        result = 8;
        break;
      case 5:
        result = 9;
        break;
      case 6:
        result = 14;
        break;
      case 7:
        result = 15;
        break;
      case 8:
        result = 16;
        break;
      case 9:
        result = 17;
        break;
      case 10:
        result = 18;
        break;
      case 11:
        result = 19;
        break;
      case 16:
        result = 10;
        break;
      case 17:
        result = 11;
        break;
      case 18:
        result = 12;
        break;
      case 19:
        result = 30;
        break;
      case 20:
        result = 31;
        break;
      case 22:
        result = 20;
        break;
      case 23:
        result = 21;
        break;
      case 24:
        result = 23;
        break;
      case 25:
        result = 24;
        break;
      case 26:
        result = 25;
        break;
      case 27:
        result = 26;
        break;
      case 28:
        result = 27;
        break;
      case 29:
        result = 28;
        break;
      case 31:
        result = 13;
        break;
      case 32:
        result = 29;
        break;
      case 33:
        result = 22;
        break;
      default:
        return 44;
    }
  }

  return result;
}

unint64_t sub_10092065C()
{
  result = qword_1016AE9D8;
  if (!qword_1016AE9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AE9D8);
  }

  return result;
}

unint64_t sub_1009206C4()
{
  result = qword_1016AE9E0;
  if (!qword_1016AE9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AE9E0);
  }

  return result;
}

unint64_t sub_10092071C()
{
  result = qword_1016AE9E8;
  if (!qword_1016AE9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AE9E8);
  }

  return result;
}

unint64_t sub_100920774()
{
  result = qword_1016AE9F0;
  if (!qword_1016AE9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AE9F0);
  }

  return result;
}

uint64_t sub_1009207C8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x8000000101347590 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1702125924 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

void sub_10092093C()
{
  sub_100157BAC();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1009209C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_100920A08(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_100920AB0()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    sub_1002359B8(319, &qword_1016A8838);
    if (v1 <= 0x3F)
    {
      sub_100157BAC();
      if (v2 <= 0x3F)
      {
        sub_1002359B8(319, &qword_10169A330);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_100920B8C(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016AEB30, &qword_1013C7098);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v20[-v8];
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100922338();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  v20[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v14 = v3[3];
  v20[14] = 1;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v15 = v3[4];
  v16 = v3[5];
  v20[13] = 2;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v18 = v3[6];
  v19 = v3[7];
  v20[12] = 3;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100920D4C(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016AEB40, &qword_1013C70A0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v13[-v8 - 8];
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_10092238C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v19 = *v3;
  v15 = *v3;
  v14 = 0;
  sub_1001022C4(&v19, v13);
  sub_1000E3190();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    sub_100016590(v15, *(&v15 + 1));
    v18 = v3[1];
    v15 = v3[1];
    v14 = 1;
    sub_1001022C4(&v18, v13);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v15, *(&v15 + 1));
    v17 = v3[2];
    v15 = v3[2];
    v14 = 2;
    sub_1001022C4(&v17, v13);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v15, *(&v15 + 1));
    v15 = v3[3];
    v16 = v15;
    v14 = 3;
    sub_1001022C4(&v16, v13);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  sub_100016590(v15, *(&v15 + 1));
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100920FCC(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016AEB88, &qword_1013C70D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v20[-v8];
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100922E20();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v21) = 0;
  type metadata accessor for UUID();
  sub_100922F3C(&qword_101698330, &type metadata accessor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = type metadata accessor for DelegatedBeaconMetadata(0);
    v12 = (v3 + v11[5]);
    v13 = *v12;
    v14 = *(v12 + 8);
    LOBYTE(v21) = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v15 = v11[6];
    LOBYTE(v21) = 2;
    type metadata accessor for Date();
    sub_100922F3C(&unk_101697F60, &type metadata accessor for Date);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v16 = (v3 + v11[7]);
    v17 = v16[1];
    v21 = *v16;
    v22 = v17;
    v20[15] = 3;
    sub_10002E98C(v21, v17);
    sub_1000E3190();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100006654(v21, v22);
    v18 = *(v3 + v11[8]);
    LOBYTE(v21) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100921284@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v29 - v5;
  v7 = type metadata accessor for UUID();
  v32 = *(v7 - 8);
  v8 = *(v32 + 64);
  __chkstk_darwin(v7);
  v33 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1000BC4D4(&qword_1016AEB78, &qword_1013C70C8);
  v31 = *(v35 - 8);
  v10 = *(v31 + 64);
  __chkstk_darwin(v35);
  v12 = &v29 - v11;
  v13 = type metadata accessor for DelegatedBeaconMetadata(0);
  v14 = *(*(v13 - 1) + 64);
  __chkstk_darwin(v13);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100922E20();
  v34 = v12;
  v18 = v36;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v18)
  {
    return sub_100007BAC(a1);
  }

  v36 = v6;
  v19 = v16;
  v21 = v31;
  v20 = v32;
  LOBYTE(v37) = 0;
  sub_100922F3C(&qword_101698300, &type metadata accessor for UUID);
  v22 = v33;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v20 + 32))(v19, v22, v7);
  LOBYTE(v37) = 1;
  v23 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v24 = v19 + v13[5];
  *v24 = v23;
  *(v24 + 8) = v25 & 1;
  type metadata accessor for Date();
  LOBYTE(v37) = 2;
  sub_100922F3C(&qword_101697F40, &type metadata accessor for Date);
  v26 = v36;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  sub_1001578A0(v26, v19 + v13[6]);
  v38 = 3;
  sub_1000E307C();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  *(v19 + v13[7]) = v37;
  LOBYTE(v37) = 4;
  v27 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v21 + 8))(v34, v35);
  *(v19 + v13[8]) = v27 & 1;
  sub_100922E74(v19, v30, type metadata accessor for DelegatedBeaconMetadata);
  sub_100007BAC(a1);
  return sub_100922EDC(v19, type metadata accessor for DelegatedBeaconMetadata);
}

uint64_t sub_100921780(void *a1)
{
  v3 = sub_1000BC4D4(&qword_1016AEB70, &qword_1013C70C0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v13 - v6;
  v8 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100922DCC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = 0;
  type metadata accessor for Date();
  sub_100922F3C(&unk_101697F60, &type metadata accessor for Date);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v1)
  {
    v9 = type metadata accessor for DelegatedBeaconLostDates(0);
    v10 = *(v9 + 20);
    v15 = 1;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v11 = *(v9 + 24);
    v14 = 2;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_100921980@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v4 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v32 - v10;
  __chkstk_darwin(v9);
  v36 = &v32 - v12;
  v13 = sub_1000BC4D4(&qword_1016AEB60, &qword_1013C70B8);
  v37 = *(v13 - 8);
  v38 = v13;
  v14 = *(v37 + 64);
  __chkstk_darwin(v13);
  v16 = &v32 - v15;
  v17 = type metadata accessor for DelegatedBeaconLostDates(0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1[3];
  v21 = a1[4];
  v39 = a1;
  sub_1000035D0(a1, v22);
  sub_100922DCC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(v39);
  }

  v33 = v11;
  v34 = v17;
  v23 = v20;
  v32 = v8;
  type metadata accessor for Date();
  v42 = 0;
  sub_100922F3C(&qword_101697F40, &type metadata accessor for Date);
  v24 = v36;
  v25 = v38;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v26 = v24;
  v27 = v23;
  sub_1001578A0(v26, v23);
  v41 = 1;
  v28 = v33;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  sub_1001578A0(v28, v27 + *(v34 + 20));
  v40 = 2;
  v29 = v27;
  v30 = v32;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v37 + 8))(v16, v25);
  sub_1001578A0(v30, v29 + *(v34 + 24));
  sub_100922E74(v29, v35, type metadata accessor for DelegatedBeaconLostDates);
  sub_100007BAC(v39);
  return sub_100922EDC(v29, type metadata accessor for DelegatedBeaconLostDates);
}

uint64_t sub_100921D90()
{
  v1 = 0x754E6C6169726573;
  v2 = 0x6C69616D65;
  if (*v0 != 2)
  {
    v2 = 0x656E6F6870;
  }

  if (*v0)
  {
    v1 = 0x44746375646F7270;
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

uint64_t sub_100921E14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1009223E0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100921E3C(uint64_t a1)
{
  v2 = sub_100922338();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100921E78(uint64_t a1)
{
  v2 = sub_100922338();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100921EB4@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_100922544(a1, v7);
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

uint64_t sub_100921F10()
{
  v1 = 0x727574616E676973;
  v2 = 6775156;
  if (*v0 != 2)
  {
    v2 = 0x65636E6F6ELL;
  }

  if (*v0)
  {
    v1 = 0x6574707972636E65;
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

uint64_t sub_100921F90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100922838(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100921FB8(uint64_t a1)
{
  v2 = sub_10092238C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100921FF4(uint64_t a1)
{
  v2 = sub_10092238C();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100922030@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1009229A8(a1, v7);
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

unint64_t sub_10092208C()
{
  v1 = *v0;
  v2 = 0x43726F7469736976;
  v3 = 0x6C6275507473616CLL;
  v4 = 0x656B6F54736E7061;
  if (v1 != 3)
  {
    v4 = 0xD000000000000012;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000018;
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

uint64_t sub_100922144@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1009233E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10092216C(uint64_t a1)
{
  v2 = sub_100922E20();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1009221A8(uint64_t a1)
{
  v2 = sub_100922E20();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_100922214()
{
  v1 = 0xD00000000000001ALL;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD000000000000013;
  }

  *v0;
  return result;
}

uint64_t sub_100922268@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1009235B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100922290(uint64_t a1)
{
  v2 = sub_100922DCC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1009222CC(uint64_t a1)
{
  v2 = sub_100922DCC();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_100922338()
{
  result = qword_1016AEB38;
  if (!qword_1016AEB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AEB38);
  }

  return result;
}

unint64_t sub_10092238C()
{
  result = qword_1016AEB48;
  if (!qword_1016AEB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AEB48);
  }

  return result;
}

uint64_t sub_1009223E0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x754E6C6169726573 && a2 == 0xEC0000007265626DLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x44746375646F7270 && a2 == 0xEB00000000617461 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C69616D65 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656E6F6870 && a2 == 0xE500000000000000)
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

uint64_t sub_100922544@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1000BC4D4(&qword_1016AEB58, &qword_1013C70B0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v25 - v8;
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100922338();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  LOBYTE(v34[0]) = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v29 = v12;
  LOBYTE(v34[0]) = 1;
  v13 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v28 = v14;
  v26 = v13;
  LOBYTE(v34[0]) = 2;
  v25 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v27 = v15;
  v35 = 3;
  v16 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v18 = v17;
  (*(v6 + 8))(v9, v5);
  v19 = v29;
  *&v30 = v11;
  *(&v30 + 1) = v29;
  v21 = v26;
  v20 = v27;
  *&v31 = v26;
  *(&v31 + 1) = v28;
  *&v32 = v25;
  *(&v32 + 1) = v27;
  *&v33 = v16;
  *(&v33 + 1) = v18;
  sub_1006941BC(&v30, v34);
  sub_100007BAC(a1);
  v34[0] = v11;
  v34[1] = v19;
  v34[2] = v21;
  v34[3] = v28;
  v34[4] = v25;
  v34[5] = v20;
  v34[6] = v16;
  v34[7] = v18;
  result = sub_100694A6C(v34);
  v23 = v31;
  *a2 = v30;
  a2[1] = v23;
  v24 = v33;
  a2[2] = v32;
  a2[3] = v24;
  return result;
}

uint64_t sub_100922838(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x727574616E676973 && a2 == 0xE900000000000065;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574707972636E65 && a2 == 0xED00006174614464 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 6775156 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65636E6F6ELL && a2 == 0xE500000000000000)
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

uint64_t sub_1009229A8@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1000BC4D4(&qword_1016AEB50, &qword_1013C70A8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_10092238C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  LOBYTE(v23) = 0;
  sub_1000E307C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v22 = v27[0];
  LOBYTE(v23) = 1;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v21 = v27[0];
  LOBYTE(v23) = 2;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v20 = v27[0];
  v31 = 3;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  v18 = *(&v30 + 1);
  v19 = v30;
  v11 = v22;
  v23 = v22;
  v12 = v21;
  v24 = v21;
  v13 = v20;
  v25 = v20;
  v26 = v30;
  sub_100922D64(&v23, v27);
  sub_100007BAC(a1);
  v27[0] = v11;
  v27[1] = v12;
  v27[2] = v13;
  v28 = v19;
  v29 = v18;
  result = sub_100922D9C(v27);
  v15 = v24;
  *a2 = v23;
  a2[1] = v15;
  v16 = v26;
  a2[2] = v25;
  a2[3] = v16;
  return result;
}

unint64_t sub_100922DCC()
{
  result = qword_1016AEB68;
  if (!qword_1016AEB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AEB68);
  }

  return result;
}

unint64_t sub_100922E20()
{
  result = qword_1016AEB80;
  if (!qword_1016AEB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AEB80);
  }

  return result;
}

uint64_t sub_100922E74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100922EDC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100922F3C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100922FC8()
{
  result = qword_1016AEB90;
  if (!qword_1016AEB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AEB90);
  }

  return result;
}

unint64_t sub_100923020()
{
  result = qword_1016AEB98;
  if (!qword_1016AEB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AEB98);
  }

  return result;
}

unint64_t sub_100923078()
{
  result = qword_1016AEBA0;
  if (!qword_1016AEBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AEBA0);
  }

  return result;
}

unint64_t sub_1009230D0()
{
  result = qword_1016AEBA8;
  if (!qword_1016AEBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AEBA8);
  }

  return result;
}

unint64_t sub_100923128()
{
  result = qword_1016AEBB0;
  if (!qword_1016AEBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AEBB0);
  }

  return result;
}

unint64_t sub_100923180()
{
  result = qword_1016AEBB8;
  if (!qword_1016AEBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AEBB8);
  }

  return result;
}

unint64_t sub_1009231D8()
{
  result = qword_1016AEBC0;
  if (!qword_1016AEBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AEBC0);
  }

  return result;
}

unint64_t sub_100923230()
{
  result = qword_1016AEBC8;
  if (!qword_1016AEBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AEBC8);
  }

  return result;
}

unint64_t sub_100923288()
{
  result = qword_1016AEBD0;
  if (!qword_1016AEBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AEBD0);
  }

  return result;
}

unint64_t sub_1009232E0()
{
  result = qword_1016AEBD8;
  if (!qword_1016AEBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AEBD8);
  }

  return result;
}

unint64_t sub_100923338()
{
  result = qword_1016AEBE0;
  if (!qword_1016AEBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AEBE0);
  }

  return result;
}

unint64_t sub_100923390()
{
  result = qword_1016AEBE8;
  if (!qword_1016AEBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AEBE8);
  }

  return result;
}

uint64_t sub_1009233E4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000018 && 0x80000001013512B0 == a2;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x43726F7469736976 && a2 == 0xEC000000746E756FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C6275507473616CLL && a2 == 0xEF65746144687369 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656B6F54736E7061 && a2 == 0xE90000000000006ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000101351290 == a2)
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

uint64_t sub_1009235B4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000013 && 0x800000010134DA90 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x800000010134DAB0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001013513B0 == a2)
  {

    return 2;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

Swift::Int sub_1009236EC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1 + 1);
  return Hasher._finalize()();
}

Swift::Int sub_100923764()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1 + 1);
  return Hasher._finalize()();
}

uint64_t sub_1009237A8@<X0>(int *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100923A98(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1009238A4(void *a1)
{
  a1[1] = sub_1009238DC();
  a1[2] = sub_100923930();
  result = sub_100923984();
  a1[3] = result;
  return result;
}

unint64_t sub_1009238DC()
{
  result = qword_1016AEBF0;
  if (!qword_1016AEBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AEBF0);
  }

  return result;
}

unint64_t sub_100923930()
{
  result = qword_1016AEBF8;
  if (!qword_1016AEBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AEBF8);
  }

  return result;
}

unint64_t sub_100923984()
{
  result = qword_1016AEC00;
  if (!qword_1016AEC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AEC00);
  }

  return result;
}

unint64_t sub_1009239DC()
{
  result = qword_1016AEC08;
  if (!qword_1016AEC08)
  {
    sub_1000BC580(&qword_1016AEC10, qword_1013C75A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AEC08);
  }

  return result;
}

unint64_t sub_100923A44()
{
  result = qword_1016AEC18;
  if (!qword_1016AEC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AEC18);
  }

  return result;
}

uint64_t sub_100923A98(int a1)
{
  if ((a1 - 1) >= 9)
  {
    return 9;
  }

  else
  {
    return (a1 - 1);
  }
}

uint64_t sub_100923AAC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 352))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 168);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100923AF4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 344) = 0;
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
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 352) = 1;
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
      *(result + 168) = (a2 - 1);
      return result;
    }

    *(result + 352) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_100923BE8()
{
  sub_10093F030(319, &qword_10169AC00, &type metadata accessor for MACAddress);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

id sub_100923CB0(const void *a1, int a2, void (*a3)(uint64_t), uint64_t a4)
{
  v79 = a3;
  v80 = a4;
  LODWORD(v81) = a2;
  v77 = a1;
  v75 = *v4;
  v5 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v76 = &v66 - v7;
  v8 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v73 = *(v8 - 8);
  v74 = v8;
  v9 = *(v73 + 64);
  __chkstk_darwin(v8);
  v72 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for OS_dispatch_queue.Attributes();
  v11 = *(*(v70 - 8) + 64);
  __chkstk_darwin(v70);
  v71 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v69 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_1000BC4D4(&qword_101697360, &unk_10138BED0);
  v16 = *(*(v67 - 8) + 64);
  __chkstk_darwin(v67);
  v68 = (&v66 - v17);
  v18 = sub_1000BC4D4(&qword_1016985F0, &unk_10139D780);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v66 - v20;
  v22 = type metadata accessor for AccessoryIdentityPairingLockCheckEndPoint();
  v23 = *(*(v22 - 8) + 64);
  v24 = __chkstk_darwin(v22);
  v26 = &v66 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v28 = &v66 - v27;
  static os_log_type_t.default.getter();
  if (qword_1016950C8 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_101385D80;
  *(v29 + 56) = &type metadata for String;
  *(v29 + 64) = sub_100008C00();
  *(v29 + 32) = 0xD000000000000048;
  *(v29 + 40) = 0x80000001013659B0;
  os_log(_:dso:log:_:_:)();

  v30 = enum case for FMNAccountType.w2Accessory(_:);
  v31 = type metadata accessor for FMNAccountType();
  (*(*(v31 - 8) + 104))(v28, v30, v31);
  v32 = *(v22 + 20);
  v33 = v81;
  v34 = v81 & 1;
  v28[v32] = v81 & 1;
  v35 = type metadata accessor for SearchPartyURLSessionFactory(0);
  v36 = *(v35 + 48);
  v37 = *(v35 + 52);
  swift_allocObject();
  v38 = type metadata accessor for FMNMockingPreferences();
  (*(*(v38 - 8) + 56))(v21, 1, 1, v38);
  v39 = FMNURLSessionFactory.init(mockSessionCreationBlock:preferences:)();
  v40 = type metadata accessor for ServerInteractionController(0);
  v41 = *(v40 + 48);
  v42 = *(v40 + 52);
  v43 = swift_allocObject();
  sub_10093C940(v28, v26, type metadata accessor for AccessoryIdentityPairingLockCheckEndPoint);
  v44 = sub_10061E864(v26, v39, v43);
  v45 = 0;
  v46 = 0;
  if (v33)
  {
    goto LABEL_7;
  }

  result = [objc_opt_self() defaultStore];
  if (result)
  {
    v48 = result;
    v49 = sub_100513CD8();

    if (!v49 || (v45 = sub_100513FCC(), v46 = v50, v49, !v46))
    {
      if (qword_1016950E0 != -1)
      {
        swift_once();
      }

      v61 = type metadata accessor for Logger();
      sub_1000076D4(v61, qword_10177C448);
      v62 = Logger.logObject.getter();
      v63 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        *v64 = 0;
        _os_log_impl(&_mh_execute_header, v62, v63, "Unable to retrieve masked identifier", v64, 2u);
      }

      type metadata accessor for SPPairingSessionError(0);
      v82[42] = 27;
      sub_100032898(_swiftEmptyArrayStorage);
      sub_10093C818(&unk_1016B2710, type metadata accessor for SPPairingSessionError);
      _BridgedStoredNSError.init(_:userInfo:)();
      v65 = v68;
      *v68 = v82[0];
      swift_storeEnumTagMultiPayload();
      v79(v65);

      sub_10000B3A8(v65, &qword_101697360, &unk_10138BED0);
      v60 = v28;
      return sub_10093C9A8(v60, type metadata accessor for AccessoryIdentityPairingLockCheckEndPoint);
    }

LABEL_7:
    v67 = v45;
    sub_1000BC488();
    LODWORD(v68) = v34;
    v51 = v44;
    static DispatchQoS.unspecified.getter();
    v82[0] = _swiftEmptyArrayStorage;
    sub_10093C818(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes);
    v81 = v28;
    sub_1000BC4D4(&unk_101695580, &qword_101385D90);
    sub_100014084(&qword_10169BB70, &unk_101695580, &qword_101385D90);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v73 + 104))(v72, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v74);
    v52 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    v53 = type metadata accessor for TaskPriority();
    v54 = v76;
    (*(*(v53 - 8) + 56))(v76, 1, 1, v53);
    v55 = swift_allocObject();
    *(v55 + 16) = 0;
    *(v55 + 24) = 0;
    v56 = v77;
    memcpy((v55 + 32), v77, 0x150uLL);
    *(v55 + 368) = v67;
    *(v55 + 376) = v46;
    v57 = v79;
    *(v55 + 384) = v78;
    *(v55 + 392) = v52;
    v58 = v80;
    *(v55 + 400) = v57;
    *(v55 + 408) = v58;
    *(v55 + 416) = v51;
    *(v55 + 424) = v68;
    *(v55 + 432) = v75;
    sub_10093DC08(v56, v82);

    v59 = v52;

    sub_10025EDD4(0, 0, v54, &unk_1013C8278, v55);

    v60 = v81;
    return sub_10093C9A8(v60, type metadata accessor for AccessoryIdentityPairingLockCheckEndPoint);
  }

  __break(1u);
  return result;
}

uint64_t sub_1009245B4(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v68 = a3;
  v67 = a2;
  v4 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v65 = &v58 - v6;
  v64 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v63 = *(v64 - 8);
  v7 = *(v63 + 64);
  __chkstk_darwin(v64);
  v62 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for OS_dispatch_queue.Attributes();
  v9 = *(*(v61 - 8) + 64);
  __chkstk_darwin(v61);
  v60 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v58 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000BC4D4(&qword_1016985F0, &unk_10139D780);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v58 - v16;
  v18 = type metadata accessor for FMNAccountType();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for AccessoryIdentityPairingLockAckEndPoint();
  v24 = v23 - 8;
  v25 = *(*(v23 - 8) + 64);
  v26 = __chkstk_darwin(v23);
  v28 = &v58 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v30 = (&v58 - v29);
  v31 = enum case for FMNAccountType.w2Accessory(_:);
  v32 = *(v19 + 104);
  v32(v22, enum case for FMNAccountType.w2Accessory(_:), v18);
  type metadata accessor for AccountURLComponents();
  swift_allocObject();
  *v30 = sub_1010B32C8(v22);
  v33 = v30 + *(v24 + 28);
  v59 = v30;
  v32(v33, v31, v18);
  v34 = type metadata accessor for SearchPartyURLSessionFactory(0);
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  swift_allocObject();
  v37 = type metadata accessor for FMNMockingPreferences();
  (*(*(v37 - 8) + 56))(v17, 1, 1, v37);
  v38 = FMNURLSessionFactory.init(mockSessionCreationBlock:preferences:)();
  v39 = type metadata accessor for ServerInteractionController(0);
  v40 = *(v39 + 48);
  v41 = *(v39 + 52);
  v42 = swift_allocObject();
  sub_10093C940(v30, v28, type metadata accessor for AccessoryIdentityPairingLockAckEndPoint);
  v43 = sub_10061EC7C(v28, v38, v42);
  sub_1000BC488();
  static DispatchQoS.unspecified.getter();
  v69 = _swiftEmptyArrayStorage;
  sub_10093C818(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_100014084(&qword_10169BB70, &unk_101695580, &qword_101385D90);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v63 + 104))(v62, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v64);
  v44 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v45 = type metadata accessor for TaskPriority();
  v46 = v65;
  (*(*(v45 - 8) + 56))(v65, 1, 1, v45);
  v47 = swift_allocObject();
  *(v47 + 16) = 0;
  *(v47 + 24) = 0;
  v48 = a1[11];
  *(v47 + 192) = a1[10];
  *(v47 + 208) = v48;
  v49 = a1[13];
  *(v47 + 224) = a1[12];
  *(v47 + 240) = v49;
  v50 = a1[7];
  *(v47 + 128) = a1[6];
  *(v47 + 144) = v50;
  v51 = a1[9];
  *(v47 + 160) = a1[8];
  *(v47 + 176) = v51;
  v52 = a1[3];
  *(v47 + 64) = a1[2];
  *(v47 + 80) = v52;
  v53 = a1[5];
  *(v47 + 96) = a1[4];
  *(v47 + 112) = v53;
  v54 = a1[1];
  *(v47 + 32) = *a1;
  *(v47 + 48) = v54;
  *(v47 + 256) = v66;
  *(v47 + 264) = v44;
  v55 = v68;
  *(v47 + 272) = v67;
  *(v47 + 280) = v55;
  *(v47 + 288) = v43;
  sub_10093CBF0(a1, &v69);

  v56 = v44;

  sub_10025EDD4(0, 0, v46, &unk_1013C8250, v47);

  return sub_10093C9A8(v59, type metadata accessor for AccessoryIdentityPairingLockAckEndPoint);
}

id sub_100924C68(uint64_t a1, int a2, void (*a3)(uint64_t), uint64_t a4)
{
  v89 = a3;
  v90 = a4;
  LODWORD(v91) = a2;
  v88 = a1;
  v83 = *v4;
  v5 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v84 = v75 - v7;
  v8 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v81 = *(v8 - 8);
  v82 = v8;
  v9 = *(v81 + 64);
  __chkstk_darwin(v8);
  v80 = v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for OS_dispatch_queue.Attributes();
  v11 = *(*(v78 - 8) + 64);
  __chkstk_darwin(v78);
  v79 = v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v77 = v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_1000BC4D4(&qword_1016993A8, &unk_101391930);
  v16 = *(*(v86 - 8) + 64);
  __chkstk_darwin(v86);
  v87 = (v75 - v17);
  v18 = sub_1000BC4D4(&qword_1016985F0, &unk_10139D780);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = v75 - v20;
  v22 = type metadata accessor for AirPodsLEPairingLockCheckEndPoint();
  v23 = *(*(v22 - 8) + 64);
  v24 = __chkstk_darwin(v22);
  v26 = v75 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v28 = v75 - v27;
  static os_log_type_t.default.getter();
  if (qword_1016950C8 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_101385D80;
  *(v29 + 56) = &type metadata for String;
  *(v29 + 64) = sub_100008C00();
  *(v29 + 32) = 0xD000000000000048;
  *(v29 + 40) = 0x8000000101365C40;
  os_log(_:dso:log:_:_:)();

  v30 = enum case for FMNAccountType.w2Accessory(_:);
  v31 = type metadata accessor for FMNAccountType();
  (*(*(v31 - 8) + 104))(v28, v30, v31);
  v32 = v91;
  v33 = v91 & 1;
  v28[*(v22 + 20)] = v91 & 1;
  v34 = type metadata accessor for SearchPartyURLSessionFactory(0);
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  swift_allocObject();
  v37 = type metadata accessor for FMNMockingPreferences();
  (*(*(v37 - 8) + 56))(v21, 1, 1, v37);
  v38 = FMNURLSessionFactory.init(mockSessionCreationBlock:preferences:)();
  v39 = type metadata accessor for ServerInteractionController(0);
  v40 = *(v39 + 48);
  v41 = *(v39 + 52);
  v42 = swift_allocObject();
  sub_10093C940(v28, v26, type metadata accessor for AirPodsLEPairingLockCheckEndPoint);
  v43 = sub_10061F8C4(v26, v38, v42);
  v44 = 0;
  v45 = 0;
  v46 = v28;
  if (v32)
  {
    goto LABEL_7;
  }

  result = [objc_opt_self() defaultStore];
  if (result)
  {
    v48 = result;
    v49 = sub_100513CD8();

    if (!v49 || (v44 = sub_100513FCC(), v45 = v50, v49, !v45))
    {
      if (qword_1016950E0 != -1)
      {
        swift_once();
      }

      v70 = type metadata accessor for Logger();
      sub_1000076D4(v70, qword_10177C448);
      v71 = Logger.logObject.getter();
      v72 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        *v73 = 0;
        _os_log_impl(&_mh_execute_header, v71, v72, "Unable to retrieve masked identifier", v73, 2u);
      }

      type metadata accessor for SPPairingSessionError(0);
      v58 = 27;
      goto LABEL_19;
    }

LABEL_7:
    v51 = v88;
    v52 = sub_10093A8E4(v88);
    if (v53 >> 60 != 15)
    {
      v86 = v53;
      v87 = v52;
      v59 = sub_1000BC488();
      v91 = v46;
      v75[0] = "lonePairing:completion:)";
      v75[1] = v59;
      static DispatchQoS.unspecified.getter();
      v92[0] = _swiftEmptyArrayStorage;
      sub_10093C818(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes);
      v76 = v33;
      v60 = v43;
      sub_1000BC4D4(&unk_101695580, &qword_101385D90);
      sub_100014084(&qword_10169BB70, &unk_101695580, &qword_101385D90);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      (*(v81 + 104))(v80, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v82);
      v61 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
      v62 = type metadata accessor for TaskPriority();
      v63 = v84;
      (*(*(v62 - 8) + 56))(v84, 1, 1, v62);
      v64 = swift_allocObject();
      *(v64 + 16) = 0;
      *(v64 + 24) = 0;
      memcpy((v64 + 32), v51, 0x160uLL);
      *(v64 + 384) = v44;
      *(v64 + 392) = v45;
      v66 = v86;
      v65 = v87;
      *(v64 + 400) = v87;
      *(v64 + 408) = v66;
      *(v64 + 416) = v85;
      *(v64 + 424) = v61;
      v67 = v90;
      *(v64 + 432) = v89;
      *(v64 + 440) = v67;
      *(v64 + 448) = v60;
      *(v64 + 456) = v76;
      *(v64 + 464) = v83;
      sub_100165278(v51, v92);
      sub_10002E98C(v65, v66);

      v68 = v61;

      sub_10025EDD4(0, 0, v63, &unk_1013C82E8, v64);

      sub_100006654(v65, v66);
      v69 = v91;
      return sub_10093C9A8(v69, type metadata accessor for AirPodsLEPairingLockCheckEndPoint);
    }

    if (qword_1016950E0 != -1)
    {
      swift_once();
    }

    v54 = type metadata accessor for Logger();
    sub_1000076D4(v54, qword_10177C448);
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&_mh_execute_header, v55, v56, "Unable to generate BAA payload", v57, 2u);
    }

    type metadata accessor for SPPairingSessionError(0);
    v58 = 26;
LABEL_19:
    v92[44] = v58;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_10093C818(&unk_1016B2710, type metadata accessor for SPPairingSessionError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v74 = v87;
    *v87 = v92[0];
    swift_storeEnumTagMultiPayload();
    v89(v74);

    sub_10000B3A8(v74, &qword_1016993A8, &unk_101391930);
    v69 = v46;
    return sub_10093C9A8(v69, type metadata accessor for AirPodsLEPairingLockCheckEndPoint);
  }

  __break(1u);
  return result;
}

uint64_t sub_100925674(const void *a1, void (*a2)(uint64_t), uint64_t a3)
{
  v75 = a2;
  v76 = a3;
  v77 = a1;
  v71 = sub_1000BC4D4(&qword_1016993C0, &qword_1013C82C0);
  v3 = *(*(v71 - 8) + 64);
  __chkstk_darwin(v71);
  v72 = (v65 - v4);
  v5 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v73 = v65 - v7;
  v8 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v69 = *(v8 - 8);
  v70 = v8;
  v9 = *(v69 + 64);
  __chkstk_darwin(v8);
  v68 = v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for OS_dispatch_queue.Attributes();
  v11 = *(*(v66 - 8) + 64);
  __chkstk_darwin(v66);
  v67 = v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v65[1] = v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000BC4D4(&qword_1016985F0, &unk_10139D780);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = v65 - v18;
  v20 = type metadata accessor for FMNAccountType();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = v65 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for AirPodsLEPairingLockAckEndPoint();
  v26 = v25 - 8;
  v27 = *(*(v25 - 8) + 64);
  v28 = __chkstk_darwin(v25);
  v30 = v65 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v32 = v65 - v31;
  v33 = enum case for FMNAccountType.w2Accessory(_:);
  v34 = *(v21 + 104);
  v34(v24, enum case for FMNAccountType.w2Accessory(_:), v20);
  type metadata accessor for AccountURLComponents();
  swift_allocObject();
  *v32 = sub_1010B32C8(v24);
  v34(&v32[*(v26 + 28)], v33, v20);
  v35 = type metadata accessor for SearchPartyURLSessionFactory(0);
  v36 = *(v35 + 48);
  v37 = *(v35 + 52);
  swift_allocObject();
  v38 = type metadata accessor for FMNMockingPreferences();
  (*(*(v38 - 8) + 56))(v19, 1, 1, v38);
  v39 = FMNURLSessionFactory.init(mockSessionCreationBlock:preferences:)();
  v40 = type metadata accessor for ServerInteractionController(0);
  v41 = *(v40 + 48);
  v42 = *(v40 + 52);
  v43 = swift_allocObject();
  sub_10093C940(v32, v30, type metadata accessor for AirPodsLEPairingLockAckEndPoint);
  v44 = sub_10061FCDC(v30, v39, v43);
  v45 = sub_10093AF34(v77);
  if (v46 >> 60 == 15)
  {
    v47 = v75;
    if (qword_1016950E0 != -1)
    {
      swift_once();
    }

    v48 = type metadata accessor for Logger();
    sub_1000076D4(v48, qword_10177C448);
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&_mh_execute_header, v49, v50, "Unable to generate BAA payload", v51, 2u);
    }

    type metadata accessor for SPPairingSessionError(0);
    v78[34] = 1;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_10093C818(&unk_1016B2710, type metadata accessor for SPPairingSessionError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v52 = v72;
    *v72 = v78[0];
    swift_storeEnumTagMultiPayload();
    v47(v52);

    sub_10000B3A8(v52, &qword_1016993C0, &qword_1013C82C0);
    v53 = v32;
  }

  else
  {
    v54 = v45;
    v55 = v46;
    v71 = sub_1000BC488();
    v72 = v44;
    static DispatchQoS.unspecified.getter();
    v78[0] = _swiftEmptyArrayStorage;
    sub_10093C818(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes);
    sub_1000BC4D4(&unk_101695580, &qword_101385D90);
    sub_100014084(&qword_10169BB70, &unk_101695580, &qword_101385D90);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v69 + 104))(v68, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v70);
    v56 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    v57 = type metadata accessor for TaskPriority();
    v58 = v73;
    (*(*(v57 - 8) + 56))(v73, 1, 1, v57);
    v59 = swift_allocObject();
    v59[2] = 0;
    v59[3] = 0;
    v60 = v77;
    memcpy(v59 + 4, v77, 0x110uLL);
    v59[38] = v54;
    v59[39] = v55;
    v61 = v75;
    v59[40] = v74;
    v59[41] = v56;
    v62 = v76;
    v59[42] = v61;
    v59[43] = v62;
    v75 = v32;
    v59[44] = v72;
    sub_100164F7C(v60, v78);
    sub_10002E98C(v54, v55);

    v63 = v56;

    sub_10025EDD4(0, 0, v58, &unk_1013C82D0, v59);

    sub_100006654(v54, v55);
    v53 = v75;
  }

  return sub_10093C9A8(v53, type metadata accessor for AirPodsLEPairingLockAckEndPoint);
}

id sub_100925EB8(uint64_t a1, _OWORD *a2, uint64_t (*a3)(void), uint64_t a4)
{
  v83 = a3;
  v80 = a2;
  v71 = a1;
  v5 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v81 = &v69 - v7;
  v8 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v78 = *(v8 - 8);
  v79 = v8;
  v9 = *(v78 + 64);
  __chkstk_darwin(v8);
  v77 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for OS_dispatch_queue.Attributes();
  v11 = *(*(v74 - 8) + 64);
  __chkstk_darwin(v74);
  v75 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v73 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000BC4D4(&qword_1016985F0, &unk_10139D780);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v72 = &v69 - v18;
  v19 = type metadata accessor for FMNAccountType();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v69 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for AirPodsUnpairEndPoint();
  v25 = *(*(v24 - 8) + 64);
  v26 = __chkstk_darwin(v24);
  v28 = &v69 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v76 = (&v69 - v29);
  v30 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v31 = *(*(v30 - 8) + 64);
  __chkstk_darwin(v30);
  v33 = &v69 - v32;
  result = [objc_opt_self() defaultStore];
  if (result)
  {
    v35 = result;
    v36 = [result aa_primaryAppleAccount];

    if (v36)
    {
      v70 = a4;

      static os_log_type_t.default.getter();
      if (qword_1016950C8 != -1)
      {
        swift_once();
      }

      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v37 = swift_allocObject();
      *(v37 + 16) = xmmword_101385D80;
      sub_1000D2A70(v71, v33, &qword_1016980D0, &unk_10138F3B0);
      v38 = String.init<A>(describing:)();
      v40 = v39;
      *(v37 + 56) = &type metadata for String;
      *(v37 + 64) = sub_100008C00();
      *(v37 + 32) = v38;
      *(v37 + 40) = v40;
      os_log(_:dso:log:_:_:)();

      v41 = enum case for FMNAccountType.w2Accessory(_:);
      v42 = *(v20 + 104);
      v42(v23, enum case for FMNAccountType.w2Accessory(_:), v19);
      type metadata accessor for AccountURLComponents();
      swift_allocObject();
      v43 = sub_1010B32C8(v23);
      v44 = v76;
      *v76 = v43;
      v42((v44 + *(v24 + 20)), v41, v19);
      v45 = type metadata accessor for SearchPartyURLSessionFactory(0);
      v46 = *(v45 + 48);
      v47 = *(v45 + 52);
      swift_allocObject();
      v48 = type metadata accessor for FMNMockingPreferences();
      (*(*(v48 - 8) + 56))(v72, 1, 1, v48);
      v49 = FMNURLSessionFactory.init(mockSessionCreationBlock:preferences:)();
      v50 = type metadata accessor for ServerInteractionController(0);
      v51 = *(v50 + 48);
      v52 = *(v50 + 52);
      v53 = swift_allocObject();
      sub_10093C940(v44, v28, type metadata accessor for AirPodsUnpairEndPoint);
      v54 = sub_10062156C(v28, v49, v53);
      sub_1000BC488();
      static DispatchQoS.unspecified.getter();
      v84 = _swiftEmptyArrayStorage;
      sub_10093C818(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes);
      sub_1000BC4D4(&unk_101695580, &qword_101385D90);
      sub_100014084(&qword_10169BB70, &unk_101695580, &qword_101385D90);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      (*(v78 + 104))(v77, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v79);
      v55 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
      v56 = type metadata accessor for TaskPriority();
      v57 = v81;
      (*(*(v56 - 8) + 56))(v81, 1, 1, v56);
      v58 = swift_allocObject();
      *(v58 + 16) = 0;
      *(v58 + 24) = 0;
      v59 = v80;
      v60 = v80[3];
      *(v58 + 64) = v80[2];
      *(v58 + 80) = v60;
      *(v58 + 96) = v59[4];
      v61 = v59[1];
      *(v58 + 32) = *v59;
      *(v58 + 48) = v61;
      v62 = v83;
      *(v58 + 112) = v82;
      *(v58 + 120) = v55;
      v63 = v70;
      *(v58 + 128) = v62;
      *(v58 + 136) = v63;
      *(v58 + 144) = v54;
      sub_1009399EC(v59, &v84);

      v64 = v55;

      sub_10025EDD4(0, 0, v57, &unk_1013C8230, v58);

      return sub_10093C9A8(v44, type metadata accessor for AirPodsUnpairEndPoint);
    }

    else
    {
      if (qword_1016950D0 != -1)
      {
        swift_once();
      }

      v65 = type metadata accessor for Logger();
      sub_1000076D4(v65, qword_10177C418);
      v66 = Logger.logObject.getter();
      v67 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        *v68 = 0;
        _os_log_impl(&_mh_execute_header, v66, v67, "iCloud not signed in: Skip pairing lock removal.", v68, 2u);
      }

      return v83(0);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Int sub_100926764()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1 - 1);
  return Hasher._finalize()();
}

Swift::Int sub_1009267DC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1 - 1);
  return Hasher._finalize()();
}

void *sub_100926820@<X0>(void *result@<X0>, _BYTE *a2@<X8>)
{
  if ((*result + 1) < 3)
  {
    v2 = *result + 1;
  }

  else
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_10092684C()
{
  v1 = 0x63697373616C632ELL;
  if (*v0 != 1)
  {
    v1 = 0x72656E45776F6C2ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E752ELL;
  }
}

uint64_t sub_100926A0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10093CAB0();

  return RawRepresentable<>.codingKey.getter(a1, a2, v4);
}

uint64_t sub_100926A60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_10093CAB0();

  return RawRepresentable<>.init<A>(codingKey:)(a1, a4, a2, a5, v10, a3);
}

uint64_t sub_100926ADC()
{
  v1 = 0x6465726961702ELL;
  if (*v0 != 1)
  {
    v1 = 0x64656B636F6C2ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E752ELL;
  }
}

unint64_t sub_100926B3C()
{
  result = qword_1016AECB8;
  if (!qword_1016AECB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AECB8);
  }

  return result;
}

unint64_t sub_100926B94()
{
  result = qword_1016AECC0;
  if (!qword_1016AECC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AECC0);
  }

  return result;
}

uint64_t sub_100926EFC(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016AECE8, &qword_1013C8240);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_10093C898();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v15[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v15[14] = v3[1];
    v15[13] = 1;
    sub_10093CA08();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v12 = type metadata accessor for MultipartAccessoryPairingInfo(0);
    v13 = *(v12 + 24);
    v15[12] = 2;
    type metadata accessor for MACAddress();
    sub_10093C818(&qword_10169B550, &type metadata accessor for MACAddress);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v15[11] = v3[*(v12 + 28)];
    v15[10] = 3;
    sub_100525E54();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10092713C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v23 - v6;
  v25 = sub_1000BC4D4(&qword_1016AECD0, &qword_1013C8238);
  v8 = *(v25 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v25);
  v11 = &v23 - v10;
  v12 = type metadata accessor for MultipartAccessoryPairingInfo(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v17 = a1[4];
  v26 = a1;
  sub_1000035D0(a1, v16);
  sub_10093C898();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(v26);
  }

  v32 = 0;
  v18 = v15;
  *v15 = KeyedDecodingContainer.decode(_:forKey:)();
  v30 = 1;
  sub_10093C8EC();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v19 = v8;
  v18[1] = v31;
  type metadata accessor for MACAddress();
  v29 = 2;
  sub_10093C818(&qword_1016A41D0, &type metadata accessor for MACAddress);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v20 = v18;
  sub_1000D2AD8(v7, &v18[*(v12 + 24)], &qword_1016A40D0, &unk_10138BE70);
  v27 = 3;
  sub_100525E00();
  v21 = v25;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v19 + 8))(v11, v21);
  *(v20 + *(v12 + 28)) = v28;
  sub_10093C940(v20, v24, type metadata accessor for MultipartAccessoryPairingInfo);
  sub_100007BAC(v26);
  return sub_10093C9A8(v20, type metadata accessor for MultipartAccessoryPairingInfo);
}

uint64_t sub_100927508()
{
  v1 = 0x644974726170;
  v2 = 0x657264644163616DLL;
  if (*v0 != 2)
  {
    v2 = 0x54676E6972696170;
  }

  if (*v0)
  {
    v1 = 0x74617453636E7973;
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

uint64_t sub_10092758C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10093CC28(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1009275B4(uint64_t a1)
{
  v2 = sub_10093C898();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1009275F0(uint64_t a1)
{
  v2 = sub_10093C898();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100927E34(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016AEE20, &unk_1013CA1F0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v23 - v8;
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_10093F404();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = v3[1];
  v25 = *v3;
  v26 = v11;
  v24 = 0;
  sub_10002E98C(v25, v11);
  sub_1000E3190();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (v2)
  {
    sub_100006654(v25, v26);
  }

  else
  {
    sub_100006654(v25, v26);
    v12 = v3[3];
    v25 = v3[2];
    v26 = v12;
    v24 = 1;
    sub_10002E98C(v25, v12);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100006654(v25, v26);
    v14 = v3[5];
    v25 = v3[4];
    v26 = v14;
    v24 = 2;
    sub_100017D5C(v25, v14);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v25, v26);
    v15 = type metadata accessor for AirPodsUnpairData.DeviceUnpairData(0);
    v16 = v15[7];
    LOBYTE(v25) = 3;
    type metadata accessor for UUID();
    sub_10093C818(&qword_101698330, &type metadata accessor for UUID);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v17 = (v3 + v15[8]);
    v18 = *v17;
    v19 = v17[1];
    LOBYTE(v25) = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v20 = (v3 + v15[9]);
    v21 = *v20;
    v22 = v20[1];
    LOBYTE(v25) = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100928114(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016AEDF0, &qword_1013CA1E0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v20[-v8];
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_10093F2A8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  v27 = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    v26 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v15 = v3[4];
    v16 = v3[5];
    v25 = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v17 = v3[6];
    v18 = v3[7];
    v24 = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v23 = *(v3 + 64);
    v22 = 4;
    sub_10093F2FC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v21 = v3[9];
    v20[15] = 5;
    sub_1000BC4D4(&qword_1016AEE08, &qword_1013CA1E8);
    sub_10093F350();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1009283DC()
{
  v1 = *v0;
  v2 = 1684628325;
  v3 = 0x6449616E6D66;
  v4 = 0x49746375646F7270;
  if (v1 != 4)
  {
    v4 = 0x6449726F646E6576;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x644970696863;
  if (v1 != 1)
  {
    v5 = 0x754E6C6169726573;
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

uint64_t sub_100928494@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10093CD98(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1009284BC(uint64_t a1)
{
  v2 = sub_10093F404();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1009284F8(uint64_t a1)
{
  v2 = sub_10093F404();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10092854C(uint64_t a1)
{
  v2 = sub_10093F2A8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100928588(uint64_t a1)
{
  v2 = sub_10093F2A8();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1009285DC()
{
  v0 = type metadata accessor for Locale();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(NSDateFormatter) init];
  v6 = String._bridgeToObjectiveC()();
  [v5 setDateFormat:v6];

  Locale.init(identifier:)();
  isa = Locale._bridgeToObjectiveC()().super.isa;
  (*(v1 + 8))(v4, v0);
  [v5 setLocale:isa];

  qword_10177B6F0 = v5;
}

uint64_t sub_10092873C()
{
  result = Data.init(stringLiteral:)();
  qword_10177B6F8 = result;
  unk_10177B700 = v1;
  return result;
}

uint64_t sub_100928778()
{
  result = Data.init(stringLiteral:)();
  qword_10177B708 = result;
  unk_10177B710 = v1;
  return result;
}

uint64_t sub_1009287B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 2968) = v21;
  *(v8 + 3056) = v20;
  *(v8 + 2960) = v19;
  *(v8 + 2944) = v18;
  *(v8 + 2928) = v17;
  *(v8 + 2920) = a8;
  *(v8 + 2912) = a7;
  *(v8 + 2904) = a6;
  *(v8 + 2896) = a5;
  *(v8 + 2888) = a4;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  *(v8 + 2976) = v9;
  v10 = *(v9 - 8);
  *(v8 + 2984) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 2992) = swift_task_alloc();
  v12 = type metadata accessor for DispatchQoS();
  *(v8 + 3000) = v12;
  v13 = *(v12 - 8);
  *(v8 + 3008) = v13;
  v14 = *(v13 + 64) + 15;
  *(v8 + 3016) = swift_task_alloc();

  return _swift_task_switch(sub_100928918, 0, 0);
}

uint64_t sub_100928918()
{
  v1 = v0[365];
  v2 = v0[364];
  v3 = v0[361];
  v4 = *(v0[366] + 16);

  sub_100165278(v3, (v0 + 2));
  sub_100017D5C(v2, v1);
  v5 = swift_task_alloc();
  v0[378] = v5;
  *v5 = v0;
  v5[1] = sub_100928A14;
  v6 = v0[365];
  v7 = v0[364];
  v8 = v0[363];
  v9 = v0[362];
  v10 = v0[361];

  return sub_100B60CB4(v10, v9, v8, v7, v6, v4);
}

uint64_t sub_100928A14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = *(*v3 + 3024);
  v7 = *v3;
  v4[379] = a1;
  v4[380] = a2;
  v4[381] = a3;

  return _swift_task_switch(sub_100928B1C, 0, 0);
}

uint64_t sub_100928B1C()
{
  v105 = v0;
  v1 = v0[379];
  if (v1)
  {
    if (qword_1016950E0 != -1)
    {
      swift_once();
    }

    v2 = v0[361];
    v3 = type metadata accessor for Logger();
    sub_1000076D4(v3, qword_10177C448);
    sub_100165278(v2, (v0 + 46));
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    sub_1001652D4(v2);
    if (os_log_type_enabled(v4, v5))
    {
      v6 = v0[361];
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v104 = v8;
      *v7 = 136315138;
      v9 = *(v6 + 240);
      v10 = *(v6 + 248);
      v11 = Data.hexString.getter();
      v13 = sub_1000136BC(v11, v12, &v104);

      *(v7 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v4, v5, "nonce: %s", v7, 0xCu);
      sub_100007BAC(v8);
    }

    v14 = v0[361];
    sub_100165278(v14, (v0 + 90));
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();
    sub_1001652D4(v14);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = v0[361];
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v104 = v19;
      *v18 = 136315138;
      v20 = *(v17 + 136);
      v21 = *(v17 + 144);
      v22 = Data.hexString.getter();
      v24 = sub_1000136BC(v22, v23, &v104);

      *(v18 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v15, v16, "serialNumber: %s", v18, 0xCu);
      sub_100007BAC(v19);
    }

    v25 = v0[361];
    sub_100165278(v25, (v0 + 134));
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.debug.getter();
    sub_1001652D4(v25);
    if (os_log_type_enabled(v26, v27))
    {
      v28 = v0[361];
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v104 = v30;
      *v29 = 136315138;
      v31 = *(v28 + 104);
      v32 = *(v28 + 112);
      v33 = Data.hexString.getter();
      v35 = sub_1000136BC(v33, v34, &v104);

      *(v29 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v26, v27, "ECID: %s", v29, 0xCu);
      sub_100007BAC(v30);
    }

    v36 = v0[361];
    sub_100165278(v36, (v0 + 178));
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.debug.getter();
    sub_1001652D4(v36);
    if (os_log_type_enabled(v37, v38))
    {
      v39 = v0[361];
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v104 = v41;
      *v40 = 136315138;
      v42 = *(v39 + 120);
      v43 = *(v39 + 128);
      v44 = Data.hexString.getter();
      v46 = sub_1000136BC(v44, v45, &v104);

      *(v40 + 4) = v46;
      _os_log_impl(&_mh_execute_header, v37, v38, "ChipId: %s", v40, 0xCu);
      sub_100007BAC(v41);
    }

    v47 = v0[361];
    sub_100165278(v47, (v0 + 222));
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.debug.getter();
    sub_1001652D4(v47);
    if (os_log_type_enabled(v48, v49))
    {
      v50 = v0[361];
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v104 = v52;
      *v51 = 136315138;
      v53 = *(v50 + 192);
      v54 = *(v50 + 200);
      v55 = Data.hexString.getter();
      v57 = sub_1000136BC(v55, v56, &v104);

      *(v51 + 4) = v57;
      _os_log_impl(&_mh_execute_header, v48, v49, "SeedK1: %s", v51, 0xCu);
      sub_100007BAC(v52);
    }

    v58 = v0[361];
    sub_100165278(v58, (v0 + 266));
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.debug.getter();
    sub_1001652D4(v58);
    if (os_log_type_enabled(v59, v60))
    {
      v61 = v0[361];
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v104 = v63;
      *v62 = 136315138;
      v64 = *v61;
      v65 = v61[1];
      v66 = Data.hexString.getter();
      v68 = sub_1000136BC(v66, v67, &v104);

      *(v62 + 4) = v68;
      _os_log_impl(&_mh_execute_header, v59, v60, "H1 (hashed C2): %s", v62, 0xCu);
      sub_100007BAC(v63);
    }

    v69 = v0[381];
    v70 = v0[380];
    v71 = v0[379];
    v101 = v0[371];
    v98 = *(v0 + 3056);
    v72 = v0[370];
    v73 = v0[369];
    v74 = v0[368];
    v75 = v0[367];
    v99 = v0[366];
    v76 = v0[361];

    sub_100017D5C(v70, v69);
    sub_1004FBDB4(v1, v70, v69, 0, v72);
    sub_100165328(v71, v70, v69);
    v77 = swift_allocObject();
    v77[2] = v75;
    v77[3] = v74;
    v77[4] = v73;
    v78 = v75;

    Future.addFailure(block:)();

    v79 = swift_allocObject();
    *(v79 + 16) = v78;
    *(v79 + 24) = v74;
    *(v79 + 32) = v73;
    *(v79 + 40) = v98;
    memcpy((v79 + 48), v76, 0x160uLL);
    *(v79 + 400) = v99;
    *(v79 + 408) = v101;
    sub_100165278(v76, (v0 + 310));
    v80 = v78;

    Future.addSuccess(block:)();

    sub_100165328(v71, v70, v69);
  }

  else
  {
    if (qword_1016950E0 != -1)
    {
      swift_once();
    }

    v81 = type metadata accessor for Logger();
    sub_1000076D4(v81, qword_10177C448);
    v82 = Logger.logObject.getter();
    v83 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      *v84 = 0;
      _os_log_impl(&_mh_execute_header, v82, v83, "Could not create pairing lock request", v84, 2u);
    }

    v85 = v0[377];
    v102 = v0[376];
    v103 = v0[375];
    v86 = v0[374];
    v87 = v0[373];
    v88 = v0[372];
    v89 = v0[369];
    v90 = v0[368];
    v100 = v0[367];

    v91 = swift_allocObject();
    *(v91 + 16) = v90;
    *(v91 + 24) = v89;
    v0[358] = sub_10093E7F0;
    v0[359] = v91;
    v0[354] = _NSConcreteStackBlock;
    v0[355] = 1107296256;
    v0[356] = sub_100006684;
    v0[357] = &unk_10163D850;
    v92 = _Block_copy(v0 + 354);

    static DispatchQoS.unspecified.getter();
    v0[360] = _swiftEmptyArrayStorage;
    sub_10093C818(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v92);
    (*(v87 + 8))(v86, v88);
    (*(v102 + 8))(v85, v103);
    v93 = v0[359];
  }

  v94 = v0[377];
  v95 = v0[374];

  v96 = v0[1];

  return v96();
}

uint64_t sub_10092950C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, const void *a6)
{
  v300 = a6;
  v297 = a5;
  v309 = a4;
  v308 = a3;
  v310 = a2;
  v306 = type metadata accessor for AirPodsLEPairingLockCheckResponse();
  v7 = *(*(v306 - 8) + 64);
  __chkstk_darwin(v306);
  v298 = &v289 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v10 = *(v9 - 8);
  v313 = v9;
  v314 = v10;
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v312 = &v289 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v316 = type metadata accessor for DispatchQoS();
  v13 = *(v316 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v316);
  v315 = &v289 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v296 = type metadata accessor for Date();
  v292 = *(v296 - 8);
  v16 = *(v292 + 64);
  v17 = __chkstk_darwin(v296);
  v294 = (&v289 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = __chkstk_darwin(v17);
  v293 = &v289 - v20;
  v21 = __chkstk_darwin(v19);
  v291 = &v289 - v22;
  __chkstk_darwin(v21);
  v295 = &v289 - v23;
  v24 = sub_1000BC4D4(&qword_101698640, &unk_10138FFA0);
  v25 = *(*(v24 - 8) + 64);
  v26 = __chkstk_darwin(v24 - 8);
  v304 = &v289 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v301 = (&v289 - v28);
  v29 = type metadata accessor for String.Encoding();
  v30 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v29 - 8);
  v305 = (&v289 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v307 = type metadata accessor for FMNServerInteractionController.FMNResponseFields();
  v32 = *(v307 - 8);
  v33 = *(v32 + 64);
  v34 = __chkstk_darwin(v307);
  v36 = &v289 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __chkstk_darwin(v34);
  v39 = &v289 - v38;
  v40 = __chkstk_darwin(v37);
  v42 = &v289 - v41;
  __chkstk_darwin(v40);
  v44 = &v289 - v43;
  v45 = sub_1000BC4D4(&qword_101698638, &qword_1013AC450);
  v46 = *(*(v45 - 8) + 64);
  v47 = __chkstk_darwin(v45 - 8);
  v299 = &v289 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __chkstk_darwin(v47);
  v303 = &v289 - v50;
  v51 = __chkstk_darwin(v49);
  v53 = &v289 - v52;
  __chkstk_darwin(v51);
  v55 = &v289 - v54;
  v317 = a1;
  FMNServerInteractionController.FMNResponseFields.statusCode.getter();
  v56 = v55;
  ServerStatusCode.init(rawValue:)();
  v57 = type metadata accessor for ServerStatusCode();
  v58 = *(v57 - 8);
  v59 = (*(v58 + 48))(v56, 1, v57);
  v311 = v56;
  if (v59 == 1)
  {
LABEL_2:
    if (qword_1016950E0 != -1)
    {
      swift_once();
    }

    v60 = type metadata accessor for Logger();
    sub_1000076D4(v60, qword_10177C448);
    v61 = v307;
    (*(v32 + 16))(v36, v317, v307);
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = v13;
      v66 = swift_slowAlloc();
      aBlock = v66;
      *v64 = 136446210;
      sub_10093C818(&qword_1016A62C0, &type metadata accessor for FMNServerInteractionController.FMNResponseFields);
      v67 = dispatch thunk of CustomStringConvertible.description.getter();
      v69 = v68;
      (*(v32 + 8))(v36, v61);
      v70 = sub_1000136BC(v67, v69, &aBlock);

      *(v64 + 4) = v70;
      _os_log_impl(&_mh_execute_header, v62, v63, "Pairing lock failed: %{public}s", v64, 0xCu);
      sub_100007BAC(v66);
      v13 = v65;
    }

    else
    {

      (*(v32 + 8))(v36, v61);
    }

    v83 = swift_allocObject();
    v84 = v309;
    *(v83 + 16) = v308;
    *(v83 + 24) = v84;
    v325 = sub_10093F824;
    v326 = v83;
    aBlock = _NSConcreteStackBlock;
    v322 = 1107296256;
    v85 = &unk_10163D8F0;
    goto LABEL_13;
  }

  v302 = v13;
  sub_1000D2A70(v56, v53, &qword_101698638, &qword_1013AC450);
  v290 = *(v58 + 88);
  v71 = v290(v53, v57);
  if (v71 == enum case for ServerStatusCode.success(_:))
  {
    if (qword_1016950E0 != -1)
    {
      swift_once();
    }

    v72 = type metadata accessor for Logger();
    v73 = sub_1000076D4(v72, qword_10177C448);
    v74 = v307;
    (*(v32 + 16))(v44, v317, v307);
    v304 = v73;
    v75 = Logger.logObject.getter();
    v76 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      aBlock = v78;
      *v77 = 136446210;
      sub_10093C818(&qword_1016A62C0, &type metadata accessor for FMNServerInteractionController.FMNResponseFields);
      v79 = dispatch thunk of CustomStringConvertible.description.getter();
      v81 = v80;
      (*(v32 + 8))(v44, v74);
      v82 = sub_1000136BC(v79, v81, &aBlock);

      *(v77 + 4) = v82;
      _os_log_impl(&_mh_execute_header, v75, v76, "Pairing success: %{public}s", v77, 0xCu);
      sub_100007BAC(v78);
    }

    else
    {

      (*(v32 + 8))(v44, v74);
    }

    v102 = v306;
    v103 = FMNServerInteractionController.FMNResponseFields.data.getter();
    v105 = v104;
    static String.Encoding.utf8.getter();
    v106 = String.init(data:encoding:)();
    v108 = v107;
    sub_100016590(v103, v105);
    if (v108)
    {

      v109 = Logger.logObject.getter();
      v110 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v109, v110))
      {
        v111 = swift_slowAlloc();
        v112 = swift_slowAlloc();
        aBlock = v112;
        *v111 = 136315138;
        v113 = sub_1000136BC(v106, v108, &aBlock);

        *(v111 + 4) = v113;
        _os_log_impl(&_mh_execute_header, v109, v110, "response data: %s", v111, 0xCu);
        sub_100007BAC(v112);
        v102 = v306;
      }

      else
      {
      }
    }

    v124 = type metadata accessor for JSONDecoder();
    v125 = *(v124 + 48);
    v126 = *(v124 + 52);
    swift_allocObject();
    v127 = JSONDecoder.init()();
    v128 = swift_allocBox();
    v130 = v129;
    v131 = FMNServerInteractionController.FMNResponseFields.data.getter();
    v133 = v132;
    sub_10093C818(&qword_101698648, type metadata accessor for AirPodsLEPairingLockCheckResponse);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    v307 = v130;
    sub_100016590(v131, v133);
    v134 = v301;
    FMNServerInteractionController.FMNResponseFields.metadata.getter();
    v135 = type metadata accessor for FMNServerInteractionController.InternalServerMetadata();
    v136 = *(v135 - 8);
    if ((*(v136 + 48))(v134, 1, v135) == 1)
    {
      sub_10000B3A8(v134, &qword_101698640, &unk_10138FFA0);
      v137 = v127;
    }

    else
    {
      v158 = FMNServerInteractionController.InternalServerMetadata.dateEpoch.getter();
      v159 = v134;
      v160 = v158;
      v162 = v161;
      (*(v136 + 8))(v159, v135);
      v137 = v127;
      if ((v162 & 1) == 0)
      {
        v303 = v127;
        v221 = Logger.logObject.getter();
        v222 = static os_log_type_t.default.getter();
        v202 = v128;
        if (os_log_type_enabled(v221, v222))
        {
          v223 = swift_slowAlloc();
          *v223 = 134217984;
          *(v223 + 4) = v160;
          _os_log_impl(&_mh_execute_header, v221, v222, "Server epoch: %lld", v223, 0xCu);
        }

        v204 = v307;
        goto LABEL_70;
      }
    }

    v163 = FMNServerInteractionController.FMNResponseFields.responseHeaders.getter();
    if (!*(v163 + 16) || (v164 = sub_100771D58(1702125892, 0xE400000000000000), (v165 & 1) == 0))
    {

      v205 = Logger.logObject.getter();
      v206 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v205, v206))
      {
        v207 = swift_slowAlloc();
        *v207 = 0;
        _os_log_impl(&_mh_execute_header, v205, v206, "Server response is missing Date header!", v207, 2u);
      }

      v208 = swift_allocObject();
      v209 = v309;
      *(v208 + 16) = v308;
      *(v208 + 24) = v209;
      v325 = sub_10093E974;
      v326 = v208;
      aBlock = _NSConcreteStackBlock;
      v322 = 1107296256;
      v323 = sub_100006684;
      v324 = &unk_10163DAD0;
      v210 = _Block_copy(&aBlock);

      v211 = v315;
      static DispatchQoS.unspecified.getter();
      v318 = _swiftEmptyArrayStorage;
      sub_10093C818(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
      v213 = v312;
      v212 = v313;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();

      _Block_release(v210);
      (*(v314 + 8))(v213, v212);
      (*(v302 + 8))(v211, v316);
      goto LABEL_86;
    }

    v305 = v128;
    v166 = (*(v163 + 56) + 16 * v164);
    v168 = *v166;
    v167 = v166[1];
    swift_bridgeObjectRetain_n();

    v169 = Logger.logObject.getter();
    v170 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v169, v170))
    {
      v171 = swift_slowAlloc();
      v172 = swift_slowAlloc();
      aBlock = v172;
      *v171 = 136446210;
      *(v171 + 4) = sub_1000136BC(v168, v167, &aBlock);
      _os_log_impl(&_mh_execute_header, v169, v170, "Server date: %{public}s", v171, 0xCu);
      sub_100007BAC(v172);
    }

    v173 = v294;
    v174 = v293;
    if (qword_101694AB0 != -1)
    {
      swift_once();
    }

    v175 = qword_10177B6F0;
    v176 = String._bridgeToObjectiveC()();

    v177 = [v175 dateFromString:v176];

    if (!v177)
    {
      v224 = Logger.logObject.getter();
      v225 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v224, v225))
      {
        v226 = swift_slowAlloc();
        *v226 = 0;
        _os_log_impl(&_mh_execute_header, v224, v225, "Unable to parse server Date!", v226, 2u);
      }

      v227 = swift_allocObject();
      v228 = v309;
      *(v227 + 16) = v308;
      *(v227 + 24) = v228;
      v325 = sub_10093E9A4;
      v326 = v227;
      aBlock = _NSConcreteStackBlock;
      v322 = 1107296256;
      v323 = sub_100006684;
      v324 = &unk_10163DB20;
      v229 = _Block_copy(&aBlock);

      v230 = v315;
      static DispatchQoS.unspecified.getter();
      v318 = _swiftEmptyArrayStorage;
      sub_10093C818(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
      v232 = v312;
      v231 = v313;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v229);

      (*(v314 + 8))(v232, v231);
      (*(v302 + 8))(v230, v316);
      goto LABEL_86;
    }

    v303 = v137;
    v178 = v295;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v179 = v292;
    v180 = *(v292 + 16);
    v181 = v291;
    v182 = v296;
    v180(v291, v178, v296);
    v180(v174, v178, v182);
    v180(v173, v178, v182);
    v183 = Logger.logObject.getter();
    v184 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v183, v184))
    {
      v185 = swift_slowAlloc();
      v301 = swift_slowAlloc();
      aBlock = v301;
      *v185 = 136446722;
      sub_10093C818(&qword_1016969A0, &type metadata accessor for Date);
      LODWORD(v299) = v184;
      v186 = dispatch thunk of CustomStringConvertible.description.getter();
      v188 = v187;
      v189 = v173;
      v191 = v179 + 8;
      v190 = *(v179 + 8);
      v317 = v191 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v190(v181, v296);
      v192 = sub_1000136BC(v186, v188, &aBlock);

      *(v185 + 4) = v192;
      *(v185 + 12) = 2048;
      v193 = Date.epoch.getter();
      v190(v174, v296);
      *(v185 + 14) = v193;
      *(v185 + 22) = 2082;
      v294 = v183;
      v194 = v189;
      v318 = Date.epoch.getter();
      sub_100102194();
      v195 = FixedWidthInteger.data.getter();
      v197 = v196;
      v198 = Data.hexString.getter();
      v200 = v199;
      v182 = v296;
      sub_100016590(v195, v197);
      v190(v194, v182);
      v201 = sub_1000136BC(v198, v200, &aBlock);
      v202 = v305;

      *(v185 + 24) = v201;
      v203 = v294;
      _os_log_impl(&_mh_execute_header, v294, v299, "pairingEpoch: %{public}s [%lld/%{public}s]", v185, 0x20u);
      swift_arrayDestroy();

      v204 = v307;
    }

    else
    {
      v233 = *(v179 + 8);
      v317 = (v179 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v233(v174, v182);

      v233(v173, v182);
      v233(v181, v182);
      v190 = v233;
      v204 = v307;
      v202 = v305;
    }

    v234 = v295;
    v160 = Date.epoch.getter();
    v190(v234, v182);
    v102 = v306;
LABEL_70:
    *(v204 + *(v102 + 56)) = v160;
    v235 = Logger.logObject.getter();
    v236 = static os_log_type_t.default.getter();
    v237 = os_log_type_enabled(v235, v236);
    v305 = v202;
    if (v237)
    {
      v238 = swift_slowAlloc();
      v239 = swift_slowAlloc();
      aBlock = v239;
      *v238 = 141558275;
      *(v238 + 4) = 1752392040;
      *(v238 + 12) = 2081;
      v240 = "ATTEST_AUTH_TOKEN";
      if (v297)
      {
        v240 = "ATTEST_AUTH_NOTKN";
      }

      v241 = sub_1000136BC(0xD000000000000011, (v240 - 32) | 0x8000000000000000, &aBlock);

      *(v238 + 14) = v241;
      _os_log_impl(&_mh_execute_header, v235, v236, "authSuffix: %{private,mask.hash}s", v238, 0x16u);
      sub_100007BAC(v239);
    }

    else
    {
    }

    v242 = v307;
    v243 = v298;
    sub_10093C940(v307, v298, type metadata accessor for AirPodsLEPairingLockCheckResponse);
    v244 = sub_100939A24(v300, v243);
    v246 = v245;
    sub_10093C9A8(v243, type metadata accessor for AirPodsLEPairingLockCheckResponse);
    v247 = String.utf8Data.getter();
    v249 = v248;

    v318 = v244;
    v319 = v246;
    v324 = &type metadata for Data;
    v325 = &protocol witness table for Data;
    aBlock = v247;
    v322 = v249;
    v250 = sub_1000035D0(&aBlock, &type metadata for Data);
    v251 = *v250;
    v252 = v250[1];
    sub_100017D5C(v244, v246);
    sub_100017D5C(v247, v249);
    sub_100017DB0(v251, v252);
    sub_100016590(v247, v249);
    sub_100016590(v244, v246);
    sub_100007BAC(&aBlock);
    v253 = v318;
    v254 = v319;

    v255 = Logger.logObject.getter();
    v256 = static os_log_type_t.debug.getter();

    v257 = os_log_type_enabled(v255, v256);
    v317 = v254;
    if (v257)
    {
      v258 = swift_slowAlloc();
      v259 = swift_slowAlloc();
      aBlock = v259;
      *v258 = 136315138;
      swift_beginAccess();
      v260 = *(v242 + 64);
      v261 = *(v242 + 72);
      sub_100017D5C(v260, v261);
      v262 = Data.hexString.getter();
      v264 = v263;
      sub_100016590(v260, v261);
      v265 = sub_1000136BC(v262, v264, &aBlock);

      *(v258 + 4) = v265;
      _os_log_impl(&_mh_execute_header, v255, v256, "S3: %s", v258, 0xCu);
      sub_100007BAC(v259);
      v254 = v317;
    }

    sub_100017D5C(v253, v254);
    v266 = Logger.logObject.getter();
    v267 = static os_log_type_t.debug.getter();
    sub_100016590(v253, v254);
    if (os_log_type_enabled(v266, v267))
    {
      v268 = swift_slowAlloc();
      v269 = swift_slowAlloc();
      aBlock = v269;
      *v268 = 136315138;
      v270 = Data.hexString.getter();
      v272 = sub_1000136BC(v270, v271, &aBlock);

      *(v268 + 4) = v272;
      _os_log_impl(&_mh_execute_header, v266, v267, "dataForSignatureVerification: %s", v268, 0xCu);
      sub_100007BAC(v269);
    }

    v273 = *(v300 + 34);
    v274 = *(v300 + 35);
    v275 = v273;
    v276 = v274;
    if (v274 >> 60 == 15)
    {
      if (qword_1016946D8 != -1)
      {
        swift_once();
      }

      v275 = qword_10177ACE0;
      v276 = *algn_10177ACE8;
      sub_100017D5C(qword_10177ACE0, *algn_10177ACE8);
    }

    v277 = v307;
    swift_beginAccess();
    v278 = *(v277 + 64);
    v279 = *(v277 + 72);
    sub_10002E98C(v273, v274);
    sub_100017D5C(v278, v279);
    v280 = sub_100A74FAC(v275, v276, v253, v317, v278, v279, kSecKeyAlgorithmECDSASignatureMessageX962SHA256);
    v307 = v253;
    sub_100016590(v278, v279);
    sub_100016590(v275, v276);
    static os_log_type_t.default.getter();
    v281 = v302;
    if (qword_1016950C8 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v282 = swift_allocObject();
    *(v282 + 16) = xmmword_101385D80;
    *(v282 + 56) = &type metadata for Bool;
    *(v282 + 64) = &protocol witness table for Bool;
    *(v282 + 32) = v280 & 1;
    os_log(_:dso:log:_:_:)();

    v283 = swift_allocObject();
    v284 = v309;
    v283[2] = v308;
    v283[3] = v284;
    v283[4] = v305;
    v325 = sub_10093EA24;
    v326 = v283;
    aBlock = _NSConcreteStackBlock;
    v322 = 1107296256;
    v323 = sub_100006684;
    v324 = &unk_10163DB70;
    v285 = _Block_copy(&aBlock);

    v286 = v315;
    static DispatchQoS.unspecified.getter();
    v320 = _swiftEmptyArrayStorage;
    sub_10093C818(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    v288 = v312;
    v287 = v313;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();

    _Block_release(v285);
    sub_100016590(v307, v317);
    (*(v314 + 8))(v288, v287);
    (*(v281 + 8))(v286, v316);
LABEL_86:

    goto LABEL_14;
  }

  if (v71 != enum case for ServerStatusCode.forbidden(_:))
  {
    if (v71 == enum case for ServerStatusCode.serverConflict(_:))
    {
      v13 = v302;
      if (qword_1016950E0 != -1)
      {
        swift_once();
      }

      v114 = type metadata accessor for Logger();
      sub_1000076D4(v114, qword_10177C448);
      v115 = v307;
      (*(v32 + 16))(v42, v317, v307);
      v116 = Logger.logObject.getter();
      v117 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v116, v117))
      {
        v118 = swift_slowAlloc();
        v119 = swift_slowAlloc();
        aBlock = v119;
        *v118 = 136446210;
        sub_10093C818(&qword_1016A62C0, &type metadata accessor for FMNServerInteractionController.FMNResponseFields);
        v120 = dispatch thunk of CustomStringConvertible.description.getter();
        v122 = v121;
        (*(v32 + 8))(v42, v115);
        v123 = sub_1000136BC(v120, v122, &aBlock);
        v13 = v302;

        *(v118 + 4) = v123;
        _os_log_impl(&_mh_execute_header, v116, v117, "Linked to another Apple ID. %{public}s", v118, 0xCu);
        sub_100007BAC(v119);
      }

      else
      {

        (*(v32 + 8))(v42, v115);
      }

      v214 = swift_allocObject();
      v215 = v309;
      *(v214 + 16) = v308;
      *(v214 + 24) = v215;
      v325 = sub_10093E914;
      v326 = v214;
      aBlock = _NSConcreteStackBlock;
      v322 = 1107296256;
      v85 = &unk_10163DA30;
      goto LABEL_13;
    }

    (*(v58 + 8))(v53, v57);
    v13 = v302;
    goto LABEL_2;
  }

  if (qword_1016950E0 != -1)
  {
    swift_once();
  }

  v91 = type metadata accessor for Logger();
  v92 = sub_1000076D4(v91, qword_10177C448);
  v93 = v307;
  (*(v32 + 16))(v39, v317, v307);
  v306 = v92;
  v94 = Logger.logObject.getter();
  v95 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v94, v95))
  {
    v96 = swift_slowAlloc();
    v301 = v96;
    v305 = swift_slowAlloc();
    aBlock = v305;
    *v96 = 136446210;
    sub_10093C818(&qword_1016A62C0, &type metadata accessor for FMNServerInteractionController.FMNResponseFields);
    v97 = dispatch thunk of CustomStringConvertible.description.getter();
    v99 = v98;
    (*(v32 + 8))(v39, v93);
    v100 = sub_1000136BC(v97, v99, &aBlock);

    v101 = v301;
    *(v301 + 4) = v100;
    _os_log_impl(&_mh_execute_header, v94, v95, "Pairing not allowed! %{public}s", v101, 0xCu);
    sub_100007BAC(v305);
  }

  else
  {

    (*(v32 + 8))(v39, v93);
  }

  v138 = v304;
  FMNServerInteractionController.FMNResponseFields.metadata.getter();
  v139 = type metadata accessor for FMNServerInteractionController.InternalServerMetadata();
  v140 = *(v139 - 8);
  if ((*(v140 + 48))(v138, 1, v139) == 1)
  {
    sub_10000B3A8(v138, &qword_101698640, &unk_10138FFA0);
    v141 = v303;
    (*(v58 + 56))(v303, 1, 1, v57);
    sub_10000B3A8(v141, &qword_101698638, &qword_1013AC450);
    v13 = v302;
LABEL_36:
    v142 = swift_allocObject();
    v143 = v309;
    *(v142 + 16) = v308;
    *(v142 + 24) = v143;
    v325 = sub_10093E884;
    v326 = v142;
    aBlock = _NSConcreteStackBlock;
    v322 = 1107296256;
    v85 = &unk_10163D940;
LABEL_13:
    v323 = sub_100006684;
    v324 = v85;
    v86 = _Block_copy(&aBlock);

    v87 = v315;
    static DispatchQoS.unspecified.getter();
    v318 = _swiftEmptyArrayStorage;
    sub_10093C818(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    v89 = v312;
    v88 = v313;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v86);
    (*(v314 + 8))(v89, v88);
    (*(v13 + 8))(v87, v316);
    goto LABEL_14;
  }

  v144 = v303;
  FMNServerInteractionController.InternalServerMetadata.errorCode.getter();
  (*(v140 + 8))(v138, v139);
  (*(v58 + 56))(v144, 0, 1, v57);
  v145 = v299;
  sub_1000D2AD8(v144, v299, &qword_101698638, &qword_1013AC450);
  v146 = v290(v145, v57);
  if (v146 != enum case for ServerStatusCode.preconditionFailed(_:))
  {
    v13 = v302;
    if (v146 == enum case for ServerStatusCode.locked(_:))
    {
      v216 = Logger.logObject.getter();
      v217 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v216, v217))
      {
        v218 = swift_slowAlloc();
        *v218 = 0;
        _os_log_impl(&_mh_execute_header, v216, v217, "Pairing is pending from another device", v218, 2u);
      }

      v219 = swift_allocObject();
      v220 = v309;
      *(v219 + 16) = v308;
      *(v219 + 24) = v220;
      v325 = sub_10093E8B4;
      v326 = v219;
      aBlock = _NSConcreteStackBlock;
      v322 = 1107296256;
      v85 = &unk_10163D990;
      goto LABEL_13;
    }

    (*(v58 + 8))(v145, v57);
    goto LABEL_36;
  }

  v147 = Logger.logObject.getter();
  v148 = static os_log_type_t.error.getter();
  v149 = os_log_type_enabled(v147, v148);
  v150 = v302;
  if (v149)
  {
    v151 = swift_slowAlloc();
    *v151 = 0;
    _os_log_impl(&_mh_execute_header, v147, v148, "Pairing has been completed by another device", v151, 2u);
  }

  v152 = swift_allocObject();
  v153 = v309;
  *(v152 + 16) = v308;
  *(v152 + 24) = v153;
  v325 = sub_10093E8E4;
  v326 = v152;
  aBlock = _NSConcreteStackBlock;
  v322 = 1107296256;
  v323 = sub_100006684;
  v324 = &unk_10163D9E0;
  v154 = _Block_copy(&aBlock);

  v155 = v315;
  static DispatchQoS.unspecified.getter();
  v318 = _swiftEmptyArrayStorage;
  sub_10093C818(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  v157 = v312;
  v156 = v313;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v154);
  (*(v314 + 8))(v157, v156);
  (*(v150 + 8))(v155, v316);
LABEL_14:

  return sub_10000B3A8(v311, &qword_101698638, &qword_1013AC450);
}

uint64_t sub_10092C15C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 3160) = v20;
  *(v8 + 3248) = v19;
  *(v8 + 3152) = v18;
  *(v8 + 3136) = v17;
  *(v8 + 3128) = a8;
  *(v8 + 3120) = a7;
  *(v8 + 3112) = a6;
  *(v8 + 3104) = a5;
  *(v8 + 3096) = a4;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  *(v8 + 3168) = v9;
  v10 = *(v9 - 8);
  *(v8 + 3176) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 3184) = swift_task_alloc();
  v12 = type metadata accessor for DispatchQoS();
  *(v8 + 3192) = v12;
  v13 = *(v12 - 8);
  *(v8 + 3200) = v13;
  v14 = *(v13 + 64) + 15;
  *(v8 + 3208) = swift_task_alloc();

  return _swift_task_switch(sub_10092C2BC, 0, 0);
}

uint64_t sub_10092C2BC()
{
  v1 = v0[387];
  v2 = *(v0[390] + 16);

  sub_10093DC08(v1, (v0 + 2));
  v3 = swift_task_alloc();
  v0[402] = v3;
  *v3 = v0;
  v3[1] = sub_10092C394;
  v4 = v0[389];
  v5 = v0[388];
  v6 = v0[387];

  return (sub_100FCCEC0)(v6, v5, v4, v2);
}

uint64_t sub_10092C394(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = *(*v3 + 3216);
  v7 = *v3;
  v4[403] = a1;
  v4[404] = a2;
  v4[405] = a3;

  return _swift_task_switch(sub_10092C49C, 0, 0);
}

uint64_t sub_10092C49C()
{
  v116 = v0;
  v1 = v0[403];
  if (v1)
  {
    if (qword_1016950E0 != -1)
    {
      swift_once();
    }

    v2 = v0[387];
    v3 = type metadata accessor for Logger();
    sub_1000076D4(v3, qword_10177C448);
    sub_10093DC08(v2, (v0 + 44));
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    sub_10093DC70(v2);
    if (os_log_type_enabled(v4, v5))
    {
      v6 = v0[387];
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v115 = v8;
      *v7 = 136315138;
      v9 = *(v6 + 272);
      v10 = *(v6 + 280);
      v11 = Data.hexString.getter();
      v13 = sub_1000136BC(v11, v12, &v115);

      *(v7 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v4, v5, "nonce: %s", v7, 0xCu);
      sub_100007BAC(v8);
    }

    v14 = v0[387];
    sub_10093DC08(v14, (v0 + 86));
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();
    sub_10093DC70(v14);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = v0[387];
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v115 = v19;
      *v18 = 136315138;
      v20 = *(v17 + 120);
      v21 = *(v17 + 128);
      v22 = Data.hexString.getter();
      v24 = sub_1000136BC(v22, v23, &v115);

      *(v18 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v15, v16, "serialNumber: %s", v18, 0xCu);
      sub_100007BAC(v19);
    }

    v25 = v0[387];
    sub_10093DC08(v25, (v0 + 128));
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.debug.getter();
    sub_10093DC70(v25);
    if (os_log_type_enabled(v26, v27))
    {
      v28 = v0[387];
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v115 = v30;
      *v29 = 136315138;
      v31 = *(v28 + 136);
      v32 = *(v28 + 144);
      v33 = Data.hexString.getter();
      v35 = sub_1000136BC(v33, v34, &v115);

      *(v29 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v26, v27, "AltSerialNumber: %s", v29, 0xCu);
      sub_100007BAC(v30);
    }

    v36 = v0[387];
    sub_10093DC08(v36, (v0 + 170));
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.debug.getter();
    sub_10093DC70(v36);
    if (os_log_type_enabled(v37, v38))
    {
      v39 = v0[387];
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v115 = v41;
      *v40 = 136315138;
      v42 = *(v39 + 224);
      v43 = *(v39 + 232);
      v44 = Data.hexString.getter();
      v46 = sub_1000136BC(v44, v45, &v115);

      *(v40 + 4) = v46;
      _os_log_impl(&_mh_execute_header, v37, v38, "CSR: %s", v40, 0xCu);
      sub_100007BAC(v41);
    }

    v47 = v0[387];
    sub_10093DC08(v47, (v0 + 212));
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.debug.getter();
    sub_10093DC70(v47);
    if (os_log_type_enabled(v48, v49))
    {
      v50 = v0[387];
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v115 = v52;
      *v51 = 136315138;
      v53 = *(v50 + 208);
      v54 = *(v50 + 216);
      v55 = Data.hexString.getter();
      v57 = sub_1000136BC(v55, v56, &v115);

      *(v51 + 4) = v57;
      _os_log_impl(&_mh_execute_header, v48, v49, "Certs: %s", v51, 0xCu);
      sub_100007BAC(v52);
    }

    v58 = v0[387];
    sub_10093DC08(v58, (v0 + 254));
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.debug.getter();
    sub_10093DC70(v58);
    if (os_log_type_enabled(v59, v60))
    {
      v61 = v0[387];
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v115 = v63;
      *v62 = 136315138;
      v64 = *(v61 + 192);
      v65 = *(v61 + 200);
      v66 = Data.hexString.getter();
      v68 = sub_1000136BC(v66, v67, &v115);

      *(v62 + 4) = v68;
      _os_log_impl(&_mh_execute_header, v59, v60, "SeedK1: %s", v62, 0xCu);
      sub_100007BAC(v63);
    }

    v69 = v0[387];
    sub_10093DC08(v69, (v0 + 296));
    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.debug.getter();
    sub_10093DC70(v69);
    if (os_log_type_enabled(v70, v71))
    {
      v72 = v0[387];
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v115 = v74;
      *v73 = 136315138;
      v75 = *v72;
      v76 = v72[1];
      v77 = Data.hexString.getter();
      v79 = sub_1000136BC(v77, v78, &v115);

      *(v73 + 4) = v79;
      _os_log_impl(&_mh_execute_header, v70, v71, "H1 (hashed C2): %s", v73, 0xCu);
      sub_100007BAC(v74);
    }

    v80 = v0[405];
    v81 = v0[404];
    v82 = v0[403];
    v112 = v0[395];
    v110 = *(v0 + 3248);
    v83 = v0[394];
    v84 = v0[393];
    v85 = v0[392];
    v86 = v0[391];
    v109 = v0[390];
    v87 = v0[387];

    sub_100017D5C(v81, v80);
    sub_1004FE550(v1, v81, v80, 0, v83);
    sub_100165328(v82, v81, v80);
    v88 = swift_allocObject();
    v88[2] = v86;
    v88[3] = v85;
    v88[4] = v84;
    v89 = v86;

    Future.addFailure(block:)();

    v90 = swift_allocObject();
    *(v90 + 16) = v89;
    *(v90 + 24) = v85;
    *(v90 + 32) = v84;
    *(v90 + 40) = v110;
    *(v90 + 48) = v109;
    memcpy((v90 + 56), v87, 0x150uLL);
    *(v90 + 392) = v112;
    sub_10093DC08(v87, (v0 + 338));
    v91 = v89;

    Future.addSuccess(block:)();

    sub_100165328(v82, v81, v80);
  }

  else
  {
    if (qword_1016950E0 != -1)
    {
      swift_once();
    }

    v92 = type metadata accessor for Logger();
    sub_1000076D4(v92, qword_10177C448);
    v93 = Logger.logObject.getter();
    v94 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      *v95 = 0;
      _os_log_impl(&_mh_execute_header, v93, v94, "Could not create pairing lock request", v95, 2u);
    }

    v96 = v0[401];
    v113 = v0[400];
    v114 = v0[399];
    v97 = v0[398];
    v98 = v0[397];
    v99 = v0[396];
    v100 = v0[393];
    v101 = v0[392];
    v111 = v0[391];

    v102 = swift_allocObject();
    *(v102 + 16) = v101;
    *(v102 + 24) = v100;
    v0[384] = sub_10093DC40;
    v0[385] = v102;
    v0[380] = _NSConcreteStackBlock;
    v0[381] = 1107296256;
    v0[382] = sub_100006684;
    v0[383] = &unk_10163CBF8;
    v103 = _Block_copy(v0 + 380);

    static DispatchQoS.unspecified.getter();
    v0[386] = _swiftEmptyArrayStorage;
    sub_10093C818(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v103);
    (*(v98 + 8))(v97, v99);
    (*(v113 + 8))(v96, v114);
    v104 = v0[385];
  }

  v105 = v0[401];
  v106 = v0[398];

  v107 = v0[1];

  return v107();
}

uint64_t sub_10092CF70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, const void *a7)
{
  v313 = a7;
  v311 = a5;
  v323 = a4;
  v322 = a3;
  v324 = a2;
  v320 = type metadata accessor for AirPodsSWPairingLockCheckResponse();
  v8 = *(*(v320 - 8) + 64);
  __chkstk_darwin(v320);
  v312 = &v303 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v11 = *(v10 - 8);
  v327 = v10;
  v328 = v11;
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v326 = &v303 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v330 = type metadata accessor for DispatchQoS();
  v14 = *(v330 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v330);
  v329 = &v303 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v310 = type metadata accessor for Date();
  v306 = *(v310 - 8);
  v17 = *(v306 + 64);
  v18 = __chkstk_darwin(v310);
  v307 = &v303 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v308 = &v303 - v21;
  v22 = __chkstk_darwin(v20);
  v305 = &v303 - v23;
  __chkstk_darwin(v22);
  v309 = &v303 - v24;
  v25 = sub_1000BC4D4(&qword_101698640, &unk_10138FFA0);
  v26 = *(*(v25 - 8) + 64);
  v27 = __chkstk_darwin(v25 - 8);
  v317 = &v303 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v315 = (&v303 - v29);
  v30 = type metadata accessor for String.Encoding();
  v31 = *(*(v30 - 8) + 64);
  __chkstk_darwin(v30 - 8);
  v319 = (&v303 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v321 = type metadata accessor for FMNServerInteractionController.FMNResponseFields();
  v33 = *(v321 - 8);
  v34 = *(v33 + 64);
  v35 = __chkstk_darwin(v321);
  v37 = &v303 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __chkstk_darwin(v35);
  v40 = &v303 - v39;
  v41 = __chkstk_darwin(v38);
  v43 = &v303 - v42;
  __chkstk_darwin(v41);
  v45 = &v303 - v44;
  v46 = sub_1000BC4D4(&qword_101698638, &qword_1013AC450);
  v47 = *(*(v46 - 8) + 64);
  v48 = __chkstk_darwin(v46 - 8);
  v314 = &v303 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __chkstk_darwin(v48);
  v316 = (&v303 - v51);
  v52 = __chkstk_darwin(v50);
  v54 = &v303 - v53;
  __chkstk_darwin(v52);
  v56 = &v303 - v55;
  v331 = a1;
  FMNServerInteractionController.FMNResponseFields.statusCode.getter();
  v57 = v56;
  ServerStatusCode.init(rawValue:)();
  v58 = type metadata accessor for ServerStatusCode();
  v59 = *(v58 - 8);
  v60 = (*(v59 + 48))(v57, 1, v58);
  v325 = v57;
  if (v60 == 1)
  {
LABEL_2:
    if (qword_1016950E0 != -1)
    {
      swift_once();
    }

    v61 = type metadata accessor for Logger();
    sub_1000076D4(v61, qword_10177C448);
    v62 = v321;
    (*(v33 + 16))(v37, v331, v321);
    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      aBlock = v66;
      *v65 = 136446210;
      sub_10093C818(&qword_1016A62C0, &type metadata accessor for FMNServerInteractionController.FMNResponseFields);
      v67 = dispatch thunk of CustomStringConvertible.description.getter();
      v68 = v14;
      v70 = v69;
      (*(v33 + 8))(v37, v62);
      v71 = sub_1000136BC(v67, v70, &aBlock);
      v14 = v68;

      *(v65 + 4) = v71;
      _os_log_impl(&_mh_execute_header, v63, v64, "Pairing lock failed: %{public}s", v65, 0xCu);
      sub_100007BAC(v66);
    }

    else
    {

      (*(v33 + 8))(v37, v62);
    }

    v87 = swift_allocObject();
    v88 = v323;
    *(v87 + 16) = v322;
    *(v87 + 24) = v88;
    v339 = sub_10093F814;
    v340 = v87;
    aBlock = _NSConcreteStackBlock;
    v336 = 1107296256;
    v89 = &unk_10163CC98;
    goto LABEL_13;
  }

  v318 = v14;
  sub_1000D2A70(v57, v54, &qword_101698638, &qword_1013AC450);
  v304 = *(v59 + 88);
  v72 = v304(v54, v58);
  if (v72 == enum case for ServerStatusCode.success(_:))
  {
    if (qword_1016950E0 != -1)
    {
      swift_once();
    }

    v73 = type metadata accessor for Logger();
    v74 = sub_1000076D4(v73, qword_10177C448);
    v75 = v321;
    (*(v33 + 16))(v45, v331, v321);
    v76 = Logger.logObject.getter();
    v77 = static os_log_type_t.default.getter();
    v78 = os_log_type_enabled(v76, v77);
    v79 = v318;
    if (v78)
    {
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v317 = v74;
      v82 = v81;
      aBlock = v81;
      *v80 = 136446210;
      sub_10093C818(&qword_1016A62C0, &type metadata accessor for FMNServerInteractionController.FMNResponseFields);
      v83 = dispatch thunk of CustomStringConvertible.description.getter();
      v85 = v84;
      (*(v33 + 8))(v45, v75);
      v86 = sub_1000136BC(v83, v85, &aBlock);

      *(v80 + 4) = v86;
      _os_log_impl(&_mh_execute_header, v76, v77, "Pairing success: %{public}s", v80, 0xCu);
      sub_100007BAC(v82);
      v74 = v317;
    }

    else
    {

      (*(v33 + 8))(v45, v75);
    }

    v106 = v320;
    v107 = FMNServerInteractionController.FMNResponseFields.data.getter();
    v109 = v108;
    static String.Encoding.utf8.getter();
    v110 = String.init(data:encoding:)();
    v112 = v111;
    sub_100016590(v107, v109);
    v113 = v79;
    if (v112)
    {

      v114 = Logger.logObject.getter();
      v115 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v114, v115))
      {
        v116 = swift_slowAlloc();
        v117 = swift_slowAlloc();
        aBlock = v117;
        *v116 = 136315138;
        v118 = sub_1000136BC(v110, v112, &aBlock);

        *(v116 + 4) = v118;
        _os_log_impl(&_mh_execute_header, v114, v115, "response data: %s", v116, 0xCu);
        sub_100007BAC(v117);
        v106 = v320;
      }

      else
      {
      }
    }

    v129 = type metadata accessor for JSONDecoder();
    v130 = *(v129 + 48);
    v131 = *(v129 + 52);
    swift_allocObject();
    v132 = JSONDecoder.init()();
    v331 = swift_allocBox();
    v134 = v133;
    v135 = FMNServerInteractionController.FMNResponseFields.data.getter();
    v137 = v136;
    sub_10093C818(&qword_1016AED10, type metadata accessor for AirPodsSWPairingLockCheckResponse);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    v321 = v134;
    sub_100016590(v135, v137);
    v152 = v315;
    FMNServerInteractionController.FMNResponseFields.metadata.getter();
    v153 = type metadata accessor for FMNServerInteractionController.InternalServerMetadata();
    v154 = *(v153 - 8);
    if ((*(v154 + 48))(v152, 1, v153) == 1)
    {
      sub_10000B3A8(v152, &qword_101698640, &unk_10138FFA0);
    }

    else
    {
      v175 = FMNServerInteractionController.InternalServerMetadata.dateEpoch.getter();
      v176 = v152;
      v177 = v175;
      v179 = v178;
      (*(v154 + 8))(v176, v153);
      if ((v179 & 1) == 0)
      {
        v240 = Logger.logObject.getter();
        v241 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v240, v241))
        {
          v242 = swift_slowAlloc();
          *v242 = 134217984;
          *(v242 + 4) = v177;
          _os_log_impl(&_mh_execute_header, v240, v241, "Server epoch: %lld", v242, 0xCu);
        }

        v243 = v321;
        goto LABEL_76;
      }
    }

    v180 = FMNServerInteractionController.FMNResponseFields.responseHeaders.getter();
    if (*(v180 + 16) && (v181 = sub_100771D58(1702125892, 0xE400000000000000), (v182 & 1) != 0))
    {
      v183 = (*(v180 + 56) + 16 * v181);
      v185 = *v183;
      v184 = v183[1];
      swift_bridgeObjectRetain_n();

      v186 = Logger.logObject.getter();
      v187 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v186, v187))
      {
        v188 = swift_slowAlloc();
        v189 = swift_slowAlloc();
        aBlock = v189;
        *v188 = 136446210;
        *(v188 + 4) = sub_1000136BC(v185, v184, &aBlock);
        _os_log_impl(&_mh_execute_header, v186, v187, "Server date: %{public}s", v188, 0xCu);
        sub_100007BAC(v189);
        v113 = v318;
      }

      v190 = v309;
      v191 = v308;
      if (qword_101694AB0 != -1)
      {
        swift_once();
      }

      v192 = qword_10177B6F0;
      v193 = String._bridgeToObjectiveC()();

      v194 = [v192 dateFromString:v193];

      if (v194)
      {
        v319 = v132;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v195 = v306;
        v196 = *(v306 + 16);
        v197 = v305;
        v198 = v310;
        v196(v305, v190, v310);
        v196(v191, v190, v198);
        v199 = v307;
        v196(v307, v190, v198);
        v200 = Logger.logObject.getter();
        v201 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v200, v201))
        {
          v202 = swift_slowAlloc();
          v316 = swift_slowAlloc();
          aBlock = v316;
          *v202 = 136446722;
          sub_10093C818(&qword_1016969A0, &type metadata accessor for Date);
          v315 = v200;
          v203 = dispatch thunk of CustomStringConvertible.description.getter();
          v205 = v204;
          v206 = v197;
          v207 = *(v195 + 8);
          v317 = ((v195 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
          v207(v206, v310);
          v208 = sub_1000136BC(v203, v205, &aBlock);

          *(v202 + 4) = v208;
          *(v202 + 12) = 2048;
          v209 = Date.epoch.getter();
          v207(v191, v310);
          *(v202 + 14) = v209;
          *(v202 + 22) = 2082;
          v210 = v307;
          v332 = Date.epoch.getter();
          sub_100102194();
          v211 = FixedWidthInteger.data.getter();
          v213 = v212;
          v214 = Data.hexString.getter();
          LODWORD(v314) = v201;
          v215 = v74;
          v216 = v214;
          v218 = v217;
          v219 = v213;
          v198 = v310;
          sub_100016590(v211, v219);
          v220 = v210;
          v190 = v309;
          v207(v220, v198);
          v221 = v216;
          v74 = v215;
          v222 = sub_1000136BC(v221, v218, &aBlock);

          *(v202 + 24) = v222;
          v223 = v315;
          _os_log_impl(&_mh_execute_header, v315, v314, "pairingEpoch: %{public}s [%lld/%{public}s]", v202, 0x20u);
          swift_arrayDestroy();
        }

        else
        {
          v250 = v197;
          v207 = *(v195 + 8);
          v317 = ((v195 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
          v207(v191, v198);

          v207(v199, v198);
          v207(v250, v198);
        }

        v243 = v321;
        v177 = Date.epoch.getter();
        v207(v190, v198);
        v106 = v320;
LABEL_76:
        *(v243 + *(v106 + 44)) = v177;
        v251 = Logger.logObject.getter();
        v252 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v251, v252))
        {
          v253 = swift_slowAlloc();
          v254 = swift_slowAlloc();
          aBlock = v254;
          *v253 = 141558275;
          *(v253 + 4) = 1752392040;
          *(v253 + 12) = 2081;
          v255 = "ATTEST_AUTH_TOKEN";
          if (v311)
          {
            v255 = "ATTEST_AUTH_NOTKN";
          }

          v256 = sub_1000136BC(0xD000000000000011, (v255 - 32) | 0x8000000000000000, &aBlock);

          *(v253 + 14) = v256;
          _os_log_impl(&_mh_execute_header, v251, v252, "authSuffix: %{private,mask.hash}s", v253, 0x16u);
          sub_100007BAC(v254);
        }

        else
        {
        }

        v257 = v321;
        v258 = v312;
        sub_10093C940(v321, v312, type metadata accessor for AirPodsSWPairingLockCheckResponse);
        v259 = sub_10093CF98(v313, v258);
        v261 = v260;
        sub_10093C9A8(v258, type metadata accessor for AirPodsSWPairingLockCheckResponse);
        v262 = String.utf8Data.getter();
        v264 = v263;

        v332 = v259;
        v333 = v261;
        v338 = &type metadata for Data;
        v339 = &protocol witness table for Data;
        aBlock = v262;
        v336 = v264;
        v265 = sub_1000035D0(&aBlock, &type metadata for Data);
        v266 = *v265;
        v267 = v265[1];
        sub_100017D5C(v259, v261);
        sub_100017D5C(v262, v264);
        sub_100017DB0(v266, v267);
        v319 = 0;
        sub_100016590(v262, v264);
        sub_100016590(v259, v261);
        sub_100007BAC(&aBlock);
        v268 = v332;
        v320 = v333;

        v269 = Logger.logObject.getter();
        v270 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v269, v270))
        {
          v271 = swift_slowAlloc();
          v272 = swift_slowAlloc();
          aBlock = v272;
          *v271 = 136315138;
          swift_beginAccess();
          v317 = v74;
          v273 = *(v257 + 48);
          v274 = *(v257 + 56);
          sub_100017D5C(v273, v274);
          v275 = Data.hexString.getter();
          v277 = v276;
          sub_100016590(v273, v274);
          v278 = sub_1000136BC(v275, v277, &aBlock);

          *(v271 + 4) = v278;
          _os_log_impl(&_mh_execute_header, v269, v270, "S3: %s", v271, 0xCu);
          sub_100007BAC(v272);
        }

        v279 = v320;
        sub_100017D5C(v268, v320);
        v280 = Logger.logObject.getter();
        v281 = static os_log_type_t.debug.getter();
        sub_100016590(v268, v279);
        if (os_log_type_enabled(v280, v281))
        {
          v282 = swift_slowAlloc();
          v283 = swift_slowAlloc();
          aBlock = v283;
          *v282 = 136315138;
          v284 = Data.hexString.getter();
          v286 = sub_1000136BC(v284, v285, &aBlock);

          *(v282 + 4) = v286;
          _os_log_impl(&_mh_execute_header, v280, v281, "dataForSignatureVerification: %s", v282, 0xCu);
          sub_100007BAC(v283);
        }

        v287 = v321;
        if (qword_101694AC0 != -1)
        {
          swift_once();
        }

        v288 = qword_10177B708;
        v289 = unk_10177B710;
        swift_beginAccess();
        v290 = *(v287 + 48);
        v291 = *(v287 + 56);
        sub_100017D5C(v290, v291);
        v292 = v319;
        v293 = sub_100A74FAC(v288, v289, v268, v279, v290, v291, kSecKeyAlgorithmECDSASignatureMessageX962SHA256);
        if (v292)
        {
          sub_100016590(v290, v291);
          sub_100016590(v268, v279);

          v145 = v318;
          swift_errorRetain();
          v138 = Logger.logObject.getter();
          v139 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v138, v139))
          {
            v140 = swift_slowAlloc();
            v141 = swift_slowAlloc();
            aBlock = v141;
            *v140 = 136446210;
            v334 = v292;
            swift_errorRetain();
            sub_1000BC4D4(&qword_101696960, &unk_10138B220);
            v142 = String.init<A>(describing:)();
            v144 = sub_1000136BC(v142, v143, &aBlock);

            *(v140 + 4) = v144;
            v145 = v318;
            _os_log_impl(&_mh_execute_header, v138, v139, "Decode error: %{public}s", v140, 0xCu);
            sub_100007BAC(v141);
          }

          v146 = swift_allocObject();
          v147 = v323;
          *(v146 + 16) = v322;
          *(v146 + 24) = v147;
          v339 = sub_10093DDC8;
          v340 = v146;
          aBlock = _NSConcreteStackBlock;
          v336 = 1107296256;
          v337 = sub_100006684;
          v338 = &unk_10163CE28;
          v148 = _Block_copy(&aBlock);

          v149 = v329;
          static DispatchQoS.unspecified.getter();
          v334 = _swiftEmptyArrayStorage;
          sub_10093C818(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
          sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
          sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
          v151 = v326;
          v150 = v327;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          OS_dispatch_queue.async(group:qos:flags:execute:)();

          _Block_release(v148);

          (*(v328 + 8))(v151, v150);
          (*(v145 + 8))(v149, v330);
          goto LABEL_14;
        }

        v294 = v293;
        v321 = v268;
        sub_100016590(v290, v291);
        static os_log_type_t.default.getter();
        v295 = v318;
        if (qword_1016950C8 != -1)
        {
          swift_once();
        }

        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v296 = swift_allocObject();
        *(v296 + 16) = xmmword_101385D80;
        *(v296 + 56) = &type metadata for Bool;
        *(v296 + 64) = &protocol witness table for Bool;
        *(v296 + 32) = v294 & 1;
        os_log(_:dso:log:_:_:)();

        v297 = swift_allocObject();
        v298 = v323;
        v297[2] = v322;
        v297[3] = v298;
        v297[4] = v331;
        v339 = sub_10093DE58;
        v340 = v297;
        aBlock = _NSConcreteStackBlock;
        v336 = 1107296256;
        v337 = sub_100006684;
        v338 = &unk_10163CF18;
        v299 = _Block_copy(&aBlock);

        v300 = v329;
        static DispatchQoS.unspecified.getter();
        v334 = _swiftEmptyArrayStorage;
        sub_10093C818(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
        sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
        sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
        v302 = v326;
        v301 = v327;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();

        _Block_release(v299);
        sub_100016590(v321, v320);
        (*(v328 + 8))(v302, v301);
        (*(v295 + 8))(v300, v330);
LABEL_60:

        goto LABEL_14;
      }

      v244 = Logger.logObject.getter();
      v245 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v244, v245))
      {
        v246 = swift_slowAlloc();
        *v246 = 0;
        _os_log_impl(&_mh_execute_header, v244, v245, "Unable to parse server Date!", v246, 2u);
      }

      v247 = swift_allocObject();
      v248 = v323;
      *(v247 + 16) = v322;
      *(v247 + 24) = v248;
      v339 = sub_10093DE28;
      v340 = v247;
      aBlock = _NSConcreteStackBlock;
      v336 = 1107296256;
      v337 = sub_100006684;
      v338 = &unk_10163CEC8;
      v249 = _Block_copy(&aBlock);

      v230 = v329;
      static DispatchQoS.unspecified.getter();
      v332 = _swiftEmptyArrayStorage;
      sub_10093C818(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
      v232 = v326;
      v231 = v327;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v249);
    }

    else
    {

      v224 = Logger.logObject.getter();
      v225 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v224, v225))
      {
        v226 = swift_slowAlloc();
        *v226 = 0;
        _os_log_impl(&_mh_execute_header, v224, v225, "Server response is missing Date header!", v226, 2u);
      }

      v227 = swift_allocObject();
      v228 = v323;
      *(v227 + 16) = v322;
      *(v227 + 24) = v228;
      v339 = sub_10093DDF8;
      v340 = v227;
      aBlock = _NSConcreteStackBlock;
      v336 = 1107296256;
      v337 = sub_100006684;
      v338 = &unk_10163CE78;
      v229 = _Block_copy(&aBlock);

      v230 = v329;
      static DispatchQoS.unspecified.getter();
      v332 = _swiftEmptyArrayStorage;
      sub_10093C818(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
      v232 = v326;
      v231 = v327;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();

      _Block_release(v229);
    }

    (*(v328 + 8))(v232, v231);
    (*(v113 + 8))(v230, v330);
    goto LABEL_60;
  }

  if (v72 != enum case for ServerStatusCode.forbidden(_:))
  {
    if (v72 == enum case for ServerStatusCode.serverConflict(_:))
    {
      v14 = v318;
      if (qword_1016950E0 != -1)
      {
        swift_once();
      }

      v119 = type metadata accessor for Logger();
      sub_1000076D4(v119, qword_10177C448);
      v120 = v321;
      (*(v33 + 16))(v43, v331, v321);
      v121 = Logger.logObject.getter();
      v122 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v121, v122))
      {
        v123 = swift_slowAlloc();
        v124 = swift_slowAlloc();
        aBlock = v124;
        *v123 = 136446210;
        sub_10093C818(&qword_1016A62C0, &type metadata accessor for FMNServerInteractionController.FMNResponseFields);
        v125 = dispatch thunk of CustomStringConvertible.description.getter();
        v127 = v126;
        (*(v33 + 8))(v43, v120);
        v128 = sub_1000136BC(v125, v127, &aBlock);
        v14 = v318;

        *(v123 + 4) = v128;
        _os_log_impl(&_mh_execute_header, v121, v122, "Linked to another Apple ID. %{public}s", v123, 0xCu);
        sub_100007BAC(v124);
      }

      else
      {

        (*(v33 + 8))(v43, v120);
      }

      v233 = swift_allocObject();
      v234 = v323;
      *(v233 + 16) = v322;
      *(v233 + 24) = v234;
      v339 = sub_10093DD98;
      v340 = v233;
      aBlock = _NSConcreteStackBlock;
      v336 = 1107296256;
      v89 = &unk_10163CDD8;
      goto LABEL_13;
    }

    (*(v59 + 8))(v54, v58);
    v14 = v318;
    goto LABEL_2;
  }

  if (qword_1016950E0 != -1)
  {
    swift_once();
  }

  v95 = type metadata accessor for Logger();
  v96 = sub_1000076D4(v95, qword_10177C448);
  v97 = v321;
  (*(v33 + 16))(v40, v331, v321);
  v98 = Logger.logObject.getter();
  v99 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v98, v99))
  {
    v100 = swift_slowAlloc();
    v315 = v100;
    v319 = swift_slowAlloc();
    aBlock = v319;
    LODWORD(v100->isa) = 136446210;
    sub_10093C818(&qword_1016A62C0, &type metadata accessor for FMNServerInteractionController.FMNResponseFields);
    v101 = dispatch thunk of CustomStringConvertible.description.getter();
    v320 = v96;
    v103 = v102;
    (*(v33 + 8))(v40, v97);
    v104 = sub_1000136BC(v101, v103, &aBlock);

    v105 = v315;
    *(&v315->isa + 4) = v104;
    _os_log_impl(&_mh_execute_header, v98, v99, "Pairing not allowed! %{public}s", v105, 0xCu);
    sub_100007BAC(v319);
  }

  else
  {

    (*(v33 + 8))(v40, v97);
  }

  v155 = v317;
  FMNServerInteractionController.FMNResponseFields.metadata.getter();
  v156 = type metadata accessor for FMNServerInteractionController.InternalServerMetadata();
  v157 = *(v156 - 8);
  if ((*(v157 + 48))(v155, 1, v156) == 1)
  {
    sub_10000B3A8(v155, &qword_101698640, &unk_10138FFA0);
    v158 = v316;
    (*(v59 + 56))(v316, 1, 1, v58);
    sub_10000B3A8(v158, &qword_101698638, &qword_1013AC450);
    v14 = v318;
LABEL_40:
    v159 = swift_allocObject();
    v160 = v323;
    *(v159 + 16) = v322;
    *(v159 + 24) = v160;
    v339 = sub_10093DD08;
    v340 = v159;
    aBlock = _NSConcreteStackBlock;
    v336 = 1107296256;
    v89 = &unk_10163CCE8;
LABEL_13:
    v337 = sub_100006684;
    v338 = v89;
    v90 = _Block_copy(&aBlock);

    v91 = v329;
    static DispatchQoS.unspecified.getter();
    v332 = _swiftEmptyArrayStorage;
    sub_10093C818(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    v93 = v326;
    v92 = v327;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v90);
    (*(v328 + 8))(v93, v92);
    (*(v14 + 8))(v91, v330);
    goto LABEL_14;
  }

  v161 = v316;
  FMNServerInteractionController.InternalServerMetadata.errorCode.getter();
  (*(v157 + 8))(v155, v156);
  (*(v59 + 56))(v161, 0, 1, v58);
  v162 = v314;
  sub_1000D2AD8(v161, v314, &qword_101698638, &qword_1013AC450);
  v163 = v304(v162, v58);
  if (v163 != enum case for ServerStatusCode.preconditionFailed(_:))
  {
    v14 = v318;
    if (v163 == enum case for ServerStatusCode.locked(_:))
    {
      v235 = Logger.logObject.getter();
      v236 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v235, v236))
      {
        v237 = swift_slowAlloc();
        *v237 = 0;
        _os_log_impl(&_mh_execute_header, v235, v236, "Pairing is pending from another device", v237, 2u);
      }

      v238 = swift_allocObject();
      v239 = v323;
      *(v238 + 16) = v322;
      *(v238 + 24) = v239;
      v339 = sub_10093DD38;
      v340 = v238;
      aBlock = _NSConcreteStackBlock;
      v336 = 1107296256;
      v89 = &unk_10163CD38;
      goto LABEL_13;
    }

    (*(v59 + 8))(v162, v58);
    goto LABEL_40;
  }

  v164 = Logger.logObject.getter();
  v165 = static os_log_type_t.error.getter();
  v166 = os_log_type_enabled(v164, v165);
  v167 = v318;
  if (v166)
  {
    v168 = swift_slowAlloc();
    *v168 = 0;
    _os_log_impl(&_mh_execute_header, v164, v165, "Pairing has been completed by another device", v168, 2u);
  }

  v169 = swift_allocObject();
  v170 = v323;
  *(v169 + 16) = v322;
  *(v169 + 24) = v170;
  v339 = sub_10093DD68;
  v340 = v169;
  aBlock = _NSConcreteStackBlock;
  v336 = 1107296256;
  v337 = sub_100006684;
  v338 = &unk_10163CD88;
  v171 = _Block_copy(&aBlock);

  v172 = v329;
  static DispatchQoS.unspecified.getter();
  v332 = _swiftEmptyArrayStorage;
  sub_10093C818(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  v174 = v326;
  v173 = v327;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v171);
  (*(v328 + 8))(v174, v173);
  (*(v167 + 8))(v172, v330);
LABEL_14:

  return sub_10000B3A8(v325, &qword_101698638, &qword_1013AC450);
}

id sub_10092FB14(const void *a1, void (*a2)(uint64_t), uint64_t a3)
{
  v74 = a2;
  v75 = a3;
  v70 = a1;
  v69 = *v3;
  v72 = sub_1000BC4D4(&qword_1016AED28, &qword_1013C8298);
  v4 = *(*(v72 - 8) + 64);
  __chkstk_darwin(v72);
  v73 = (&v62 - v5);
  v6 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v68 = &v62 - v8;
  v9 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v66 = *(v9 - 8);
  v67 = v9;
  v10 = *(v66 + 64);
  __chkstk_darwin(v9);
  v65 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for OS_dispatch_queue.Attributes();
  v12 = *(*(v63 - 8) + 64);
  __chkstk_darwin(v63);
  v64 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v62 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000BC4D4(&qword_1016985F0, &unk_10139D780);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v77 = &v62 - v19;
  v20 = type metadata accessor for FMNAccountType();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = &v62 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for AirPodsPairingLockCheckEndPoint();
  v26 = *(*(v25 - 8) + 64);
  v27 = __chkstk_darwin(v25);
  v76 = &v62 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v30 = &v62 - v29;
  static os_log_type_t.default.getter();
  if (qword_1016950C8 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_101385D80;
  *(v31 + 56) = &type metadata for String;
  *(v31 + 64) = sub_100008C00();
  *(v31 + 32) = 0xD000000000000034;
  *(v31 + 40) = 0x8000000101365AD0;
  os_log(_:dso:log:_:_:)();

  v32 = enum case for FMNAccountType.w2Accessory(_:);
  v33 = *(v21 + 104);
  v33(v24, enum case for FMNAccountType.w2Accessory(_:), v20);
  type metadata accessor for AccountURLComponents();
  swift_allocObject();
  *v30 = sub_1010B32C8(v24);
  v33(&v30[*(v25 + 20)], v32, v20);
  v34 = type metadata accessor for SearchPartyURLSessionFactory(0);
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  swift_allocObject();
  v37 = type metadata accessor for FMNMockingPreferences();
  (*(*(v37 - 8) + 56))(v77, 1, 1, v37);
  v38 = FMNURLSessionFactory.init(mockSessionCreationBlock:preferences:)();
  v39 = type metadata accessor for ServerInteractionController(0);
  v40 = *(v39 + 48);
  v41 = *(v39 + 52);
  v42 = swift_allocObject();
  v43 = v76;
  sub_10093C940(v30, v76, type metadata accessor for AirPodsPairingLockCheckEndPoint);
  v44 = sub_10062362C(v43, v38, v42);
  result = [objc_opt_self() defaultStore];
  if (result)
  {
    v46 = result;
    v47 = v30;
    v48 = sub_100513CD8();

    if (v48 && (v49 = sub_100513FCC(), v51 = v50, v48, v51))
    {
      sub_1000BC488();
      v76 = v49;
      static DispatchQoS.unspecified.getter();
      v78[0] = _swiftEmptyArrayStorage;
      sub_10093C818(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes);
      v77 = v47;
      sub_1000BC4D4(&unk_101695580, &qword_101385D90);
      sub_100014084(&qword_10169BB70, &unk_101695580, &qword_101385D90);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      (*(v66 + 104))(v65, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v67);
      v52 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
      v53 = type metadata accessor for TaskPriority();
      v54 = v68;
      (*(*(v53 - 8) + 56))(v68, 1, 1, v53);
      v55 = swift_allocObject();
      v55[2] = 0;
      v55[3] = 0;
      v56 = v70;
      memcpy(v55 + 4, v70, 0x140uLL);
      v57 = v75;
      v55[44] = v76;
      v55[45] = v51;
      v55[46] = v71;
      v55[47] = v52;
      v55[48] = v74;
      v55[49] = v57;
      v58 = v69;
      v55[50] = v44;
      v55[51] = v58;
      sub_1008372F4(v56, v78);

      v59 = v52;

      sub_10025EDD4(0, 0, v54, &unk_1013C82A8, v55);

      v60 = v77;
    }

    else
    {
      static os_log_type_t.error.getter();
      if (qword_101695068 != -1)
      {
        swift_once();
      }

      os_log(_:dso:log:_:_:)();
      type metadata accessor for SPPairingSessionError(0);
      v78[40] = 27;
      sub_100032898(_swiftEmptyArrayStorage);
      sub_10093C818(&unk_1016B2710, type metadata accessor for SPPairingSessionError);
      _BridgedStoredNSError.init(_:userInfo:)();
      v61 = v73;
      *v73 = v78[0];
      swift_storeEnumTagMultiPayload();
      v74(v61);

      sub_10000B3A8(v61, &qword_1016AED28, &qword_1013C8298);
      v60 = v47;
    }

    return sub_10093C9A8(v60, type metadata accessor for AirPodsPairingLockCheckEndPoint);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100930448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 776) = v19;
  *(v8 + 768) = v18;
  *(v8 + 752) = v17;
  *(v8 + 744) = a8;
  *(v8 + 736) = a7;
  *(v8 + 728) = a6;
  *(v8 + 720) = a5;
  *(v8 + 712) = a4;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  *(v8 + 784) = v9;
  v10 = *(v9 - 8);
  *(v8 + 792) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 800) = swift_task_alloc();
  v12 = type metadata accessor for DispatchQoS();
  *(v8 + 808) = v12;
  v13 = *(v12 - 8);
  *(v8 + 816) = v13;
  v14 = *(v13 + 64) + 15;
  *(v8 + 824) = swift_task_alloc();

  return _swift_task_switch(sub_10093058C, 0, 0);
}

uint64_t sub_10093058C()
{
  v1 = v0[91];
  v2 = v0[89];
  v3 = *(v0[92] + 16);

  sub_1008372F4(v2, (v0 + 2));
  v4 = swift_task_alloc();
  v0[104] = v4;
  *v4 = v0;
  v4[1] = sub_10093066C;
  v5 = v0[91];
  v6 = v0[90];
  v7 = v0[89];

  return sub_100835E70(v7, v6, v5, v3);
}

uint64_t sub_10093066C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = *(*v3 + 832);
  v7 = *v3;
  v4[105] = a1;
  v4[106] = a2;
  v4[107] = a3;

  return _swift_task_switch(sub_100930774, 0, 0);
}

uint64_t sub_100930774()
{
  v1 = v0[105];
  if (v1)
  {
    static os_log_type_t.debug.getter();
    if (qword_1016950C8 != -1)
    {
      swift_once();
    }

    v59 = v0[97];
    v61 = v0[107];
    v52 = v0[106];
    v53 = v0[96];
    v56 = v0[94];
    v57 = v0[95];
    v54 = v0[105];
    v55 = v0[93];
    v58 = v0[92];
    v2 = v0[89];
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_101385D80;
    v4 = v2[30];
    v5 = v2[31];
    v6 = Data.hexString.getter();
    v8 = v7;
    *(v3 + 56) = &type metadata for String;
    v9 = sub_100008C00();
    *(v3 + 64) = v9;
    *(v3 + 32) = v6;
    *(v3 + 40) = v8;
    os_log(_:dso:log:_:_:)();

    static os_log_type_t.debug.getter();
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_101385D80;
    v11 = v2[17];
    v12 = v2[18];
    v13 = Data.hexString.getter();
    *(v10 + 56) = &type metadata for String;
    *(v10 + 64) = v9;
    *(v10 + 32) = v13;
    *(v10 + 40) = v14;
    os_log(_:dso:log:_:_:)();

    static os_log_type_t.debug.getter();
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_101385D80;
    v16 = v2[13];
    v17 = v2[14];
    v18 = Data.hexString.getter();
    *(v15 + 56) = &type metadata for String;
    *(v15 + 64) = v9;
    *(v15 + 32) = v18;
    *(v15 + 40) = v19;
    os_log(_:dso:log:_:_:)();

    static os_log_type_t.debug.getter();
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_101385D80;
    v21 = v2[15];
    v22 = v2[16];
    v23 = Data.hexString.getter();
    *(v20 + 56) = &type metadata for String;
    *(v20 + 64) = v9;
    *(v20 + 32) = v23;
    *(v20 + 40) = v24;
    os_log(_:dso:log:_:_:)();

    static os_log_type_t.debug.getter();
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_101385D80;
    v26 = v2[24];
    v27 = v2[25];
    v28 = Data.hexString.getter();
    *(v25 + 56) = &type metadata for String;
    *(v25 + 64) = v9;
    *(v25 + 32) = v28;
    *(v25 + 40) = v29;
    os_log(_:dso:log:_:_:)();

    static os_log_type_t.debug.getter();
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_101385D80;
    v31 = *v2;
    v32 = v2[1];
    v33 = Data.hexString.getter();
    *(v30 + 56) = &type metadata for String;
    *(v30 + 64) = v9;
    *(v30 + 32) = v33;
    *(v30 + 40) = v34;
    os_log(_:dso:log:_:_:)();

    sub_100017D5C(v52, v61);
    sub_1004FE85C(v1, v52, v61, 0, v53);
    sub_100165328(v54, v52, v61);
    v35 = swift_allocObject();
    v35[2] = v55;
    v35[3] = v56;
    v35[4] = v57;
    v36 = v55;

    Future.addFailure(block:)();

    v37 = swift_allocObject();
    memcpy(v37 + 2, v2, 0x140uLL);
    v37[42] = v58;
    v37[43] = v36;
    v37[44] = v56;
    v37[45] = v57;
    v37[46] = v59;
    sub_1008372F4(v2, (v0 + 42));
    v38 = v36;

    Future.addSuccess(block:)();

    sub_100165328(v54, v52, v61);
  }

  else
  {
    static os_log_type_t.error.getter();
    if (qword_1016950C8 != -1)
    {
      swift_once();
    }

    v39 = v0[103];
    v62 = v0[102];
    v63 = v0[101];
    v40 = v0[100];
    v41 = v0[99];
    v42 = v0[98];
    v43 = v0[95];
    v44 = v0[94];
    v60 = v0[93];
    os_log(_:dso:log:_:_:)();
    v45 = swift_allocObject();
    *(v45 + 16) = v44;
    *(v45 + 24) = v43;
    v0[86] = sub_10093E270;
    v0[87] = v45;
    v0[82] = _NSConcreteStackBlock;
    v0[83] = 1107296256;
    v0[84] = sub_100006684;
    v0[85] = &unk_10163D210;
    v46 = _Block_copy(v0 + 82);

    static DispatchQoS.unspecified.getter();
    v0[88] = _swiftEmptyArrayStorage;
    sub_10093C818(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v46);
    (*(v41 + 8))(v40, v42);
    (*(v62 + 8))(v39, v63);
    v47 = v0[87];
  }

  v48 = v0[103];
  v49 = v0[100];

  v50 = v0[1];

  return v50();
}

uint64_t sub_100930E74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a3;
  v22 = a4;
  v25 = a2;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v5 - 8);
  v6 = *(v24 + 64);
  __chkstk_darwin(v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DispatchQoS();
  v9 = *(v23 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v23);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_log_type_t.error.getter();
  if (qword_1016950C8 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_101385D80;
  aBlock[0] = a1;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  v14 = String.init<A>(describing:)();
  v16 = v15;
  *(v13 + 56) = &type metadata for String;
  *(v13 + 64) = sub_100008C00();
  *(v13 + 32) = v14;
  *(v13 + 40) = v16;
  os_log(_:dso:log:_:_:)();

  v17 = swift_allocObject();
  v18 = v22;
  *(v17 + 16) = v21;
  *(v17 + 24) = v18;
  aBlock[4] = sub_10093E408;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_10163D508;
  v19 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v26 = _swiftEmptyArrayStorage;
  sub_10093C818(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);
  (*(v24 + 8))(v8, v5);
  (*(v9 + 8))(v12, v23);
}

uint64_t sub_100931224(unint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v262 = a5;
  v263 = a6;
  v265 = a4;
  v256 = a2;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v268 = *(v7 - 8);
  v269 = v7;
  v8 = *(v268 + 64);
  __chkstk_darwin(v7);
  v266 = &v245 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v270 = *(v10 - 8);
  v11 = *(v270 + 64);
  __chkstk_darwin(v10);
  v267 = &v245 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v260 = type metadata accessor for AirPodsPairingLockCheckResponse();
  v13 = *(*(v260 - 1) + 8);
  __chkstk_darwin(v260);
  v255 = &v245 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v249 = type metadata accessor for Date();
  v247 = *(v249 - 8);
  v15 = *(v247 + 64);
  v16 = __chkstk_darwin(v249);
  v250 = &v245 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v254 = &v245 - v19;
  v20 = __chkstk_darwin(v18);
  v248 = &v245 - v21;
  __chkstk_darwin(v20);
  v251 = &v245 - v22;
  v23 = sub_1000BC4D4(&qword_101698640, &unk_10138FFA0);
  v24 = *(*(v23 - 8) + 64);
  v25 = __chkstk_darwin(v23 - 8);
  v258 = &v245 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v253 = &v245 - v27;
  v28 = type metadata accessor for String.Encoding();
  v29 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28 - 8);
  v259 = (&v245 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v261 = type metadata accessor for FMNServerInteractionController.FMNResponseFields();
  v31 = *(v261 - 8);
  v32 = *(v31 + 64);
  v33 = __chkstk_darwin(v261);
  v35 = &v245 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __chkstk_darwin(v33);
  v38 = &v245 - v37;
  v39 = __chkstk_darwin(v36);
  v41 = &v245 - v40;
  __chkstk_darwin(v39);
  v43 = &v245 - v42;
  v44 = sub_1000BC4D4(&qword_101698638, &qword_1013AC450);
  v45 = *(*(v44 - 8) + 64);
  v46 = __chkstk_darwin(v44 - 8);
  v252 = &v245 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __chkstk_darwin(v46);
  v257 = (&v245 - v49);
  v50 = __chkstk_darwin(v48);
  v52 = &v245 - v51;
  __chkstk_darwin(v50);
  v54 = &v245 - v53;
  v271 = a1;
  FMNServerInteractionController.FMNResponseFields.statusCode.getter();
  v55 = v54;
  ServerStatusCode.init(rawValue:)();
  v56 = type metadata accessor for ServerStatusCode();
  v57 = *(v56 - 8);
  v58 = (*(v57 + 48))(v55, 1, v56);
  v264 = v55;
  if (v58 == 1)
  {
    goto LABEL_2;
  }

  v246 = v10;
  sub_1000D2A70(v55, v52, &qword_101698638, &qword_1013AC450);
  v245 = *(v57 + 88);
  v69 = v245(v52, v56);
  if (v69 == enum case for ServerStatusCode.success(_:))
  {
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v70 = type metadata accessor for Logger();
    sub_1000076D4(v70, qword_10177C418);
    v71 = v261;
    (*(v31 + 16))(v43, v271, v261);
    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      aBlock = v75;
      *v74 = 136446210;
      sub_10093C818(&qword_1016A62C0, &type metadata accessor for FMNServerInteractionController.FMNResponseFields);
      v76 = dispatch thunk of CustomStringConvertible.description.getter();
      v78 = v77;
      (*(v31 + 8))(v43, v71);
      v79 = sub_1000136BC(v76, v78, &aBlock);

      *(v74 + 4) = v79;
      _os_log_impl(&_mh_execute_header, v72, v73, "Pairing success: %{public}s", v74, 0xCu);
      sub_100007BAC(v75);
    }

    else
    {

      (*(v31 + 8))(v43, v71);
    }

    v97 = FMNServerInteractionController.FMNResponseFields.data.getter();
    v99 = v98;
    static String.Encoding.utf8.getter();
    v100 = String.init(data:encoding:)();
    v102 = v101;
    sub_100016590(v97, v99);
    v103 = v260;
    if (v102)
    {

      v104 = Logger.logObject.getter();
      v105 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v104, v105))
      {
        v106 = swift_slowAlloc();
        v107 = swift_slowAlloc();
        aBlock = v107;
        *v106 = 136315138;
        v108 = sub_1000136BC(v100, v102, &aBlock);

        *(v106 + 4) = v108;
        _os_log_impl(&_mh_execute_header, v104, v105, "response data: %s", v106, 0xCu);
        sub_100007BAC(v107);
      }

      else
      {
      }
    }

    v120 = type metadata accessor for JSONDecoder();
    v121 = *(v120 + 48);
    v122 = *(v120 + 52);
    swift_allocObject();
    v123 = JSONDecoder.init()();
    v124 = swift_allocBox();
    v126 = v125;
    v127 = FMNServerInteractionController.FMNResponseFields.data.getter();
    v129 = v128;
    sub_10093C818(&qword_1016AED30, type metadata accessor for AirPodsPairingLockCheckResponse);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    v271 = v126;
    v259 = v124;
    sub_100016590(v127, v129);
    v130 = v253;
    FMNServerInteractionController.FMNResponseFields.metadata.getter();
    v131 = type metadata accessor for FMNServerInteractionController.InternalServerMetadata();
    v132 = *(v131 - 8);
    v133 = (*(v132 + 48))(v130, 1, v131);
    v261 = v123;
    if (v133 == 1)
    {
      sub_10000B3A8(v130, &qword_101698640, &unk_10138FFA0);
      v134 = v254;
    }

    else
    {
      v152 = FMNServerInteractionController.InternalServerMetadata.dateEpoch.getter();
      v154 = v153;
      (*(v132 + 8))(v130, v131);
      v134 = v254;
      if ((v154 & 1) == 0)
      {
        v217 = Logger.logObject.getter();
        v218 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v217, v218))
        {
          v219 = swift_slowAlloc();
          *v219 = 134217984;
          *(v219 + 4) = v152;
          _os_log_impl(&_mh_execute_header, v217, v218, "Server epoch: %lld", v219, 0xCu);
        }

        v200 = v271;
        *(v271 + *(v103 + 12)) = v152;
        goto LABEL_69;
      }
    }

    v155 = FMNServerInteractionController.FMNResponseFields.responseHeaders.getter();
    if (*(v155 + 16) && (v156 = sub_100771D58(1702125892, 0xE400000000000000), (v157 & 1) != 0))
    {
      v158 = (*(v155 + 56) + 16 * v156);
      v160 = *v158;
      v159 = v158[1];
      swift_bridgeObjectRetain_n();

      v161 = Logger.logObject.getter();
      v162 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v161, v162))
      {
        v163 = swift_slowAlloc();
        v164 = swift_slowAlloc();
        aBlock = v164;
        *v163 = 136446210;
        *(v163 + 4) = sub_1000136BC(v160, v159, &aBlock);
        _os_log_impl(&_mh_execute_header, v161, v162, "Server date: %{public}s", v163, 0xCu);
        sub_100007BAC(v164);
      }

      v165 = v251;
      v166 = v250;
      v167 = v248;
      if (qword_101694AB0 != -1)
      {
        swift_once();
      }

      v168 = qword_10177B6F0;
      v169 = String._bridgeToObjectiveC()();

      v170 = [v168 dateFromString:v169];

      if (v170)
      {
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        *(v271 + *(v260 + 12)) = Date.epoch.getter();
        v171 = v247;
        v172 = *(v247 + 16);
        v173 = v249;
        v172(v167, v165, v249);
        v172(v134, v165, v173);
        v172(v166, v165, v173);
        v174 = Logger.logObject.getter();
        v175 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v174, v175))
        {
          v176 = v171;
          v177 = swift_slowAlloc();
          v254 = v177;
          v260 = swift_slowAlloc();
          aBlock = v260;
          *v177 = 136446722;
          sub_10093C818(&qword_1016969A0, &type metadata accessor for Date);
          LODWORD(v258) = v175;
          v178 = v167;
          v179 = v249;
          v180 = dispatch thunk of CustomStringConvertible.description.getter();
          v182 = v181;
          v257 = v174;
          v183 = *(v176 + 8);
          v183(v178, v179);
          v184 = sub_1000136BC(v180, v182, &aBlock);

          v185 = v254;
          *(v254 + 4) = v184;
          *(v185 + 6) = 2048;
          v186 = Date.epoch.getter();
          v183(v134, v179);
          *(v185 + 14) = v186;
          *(v185 + 11) = 2082;
          v187 = v250;
          v272 = Date.epoch.getter();
          sub_100102194();
          v188 = FixedWidthInteger.data.getter();
          v190 = v189;
          v191 = Data.hexString.getter();
          v193 = v192;
          sub_100016590(v188, v190);
          v194 = v249;
          v183(v187, v249);
          v195 = sub_1000136BC(v191, v193, &aBlock);

          *(v185 + 3) = v195;
          v196 = v257;
          _os_log_impl(&_mh_execute_header, v257, v258, "pairingEpoch: %{public}s [%lld/%{public}s]", v185, 0x20u);
          swift_arrayDestroy();

          v183(v251, v194);
        }

        else
        {
          v223 = *(v171 + 8);
          v223(v134, v173);

          v223(v166, v173);
          v223(v167, v173);
          v223(v165, v173);
        }
      }

      else
      {
        v220 = Logger.logObject.getter();
        v221 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v220, v221))
        {
          v222 = swift_slowAlloc();
          *v222 = 0;
          _os_log_impl(&_mh_execute_header, v220, v221, "Unable to parse server Date!", v222, 2u);
        }
      }

      v200 = v271;
    }

    else
    {

      v197 = Logger.logObject.getter();
      v198 = static os_log_type_t.error.getter();
      v199 = os_log_type_enabled(v197, v198);
      v200 = v271;
      if (v199)
      {
        v201 = swift_slowAlloc();
        *v201 = 0;
        _os_log_impl(&_mh_execute_header, v197, v198, "Server response is missing Date header!", v201, 2u);
      }
    }

LABEL_69:
    v224 = v255;
    sub_10093C940(v200, v255, type metadata accessor for AirPodsPairingLockCheckResponse);
    v225 = v256;
    v226 = sub_10093A184(v256, v224);
    v271 = v227;
    sub_10093C9A8(v224, type metadata accessor for AirPodsPairingLockCheckResponse);
    v228 = *(v225 + 34);
    v229 = *(v225 + 35);
    v230 = v228;
    v231 = v229;
    if (v229 >> 60 == 15)
    {
      if (qword_101694AB8 != -1)
      {
        swift_once();
      }

      v230 = qword_10177B6F8;
      v231 = qword_10177B700;
      sub_100017D5C(qword_10177B6F8, qword_10177B700);
    }

    v232 = *(v200 + 64);
    v233 = *(v200 + 72);
    sub_10002E98C(v228, v229);
    sub_100017D5C(v232, v233);
    v235 = sub_100A74FAC(v230, v231, v226, v271, v232, v233, kSecKeyAlgorithmECDSASignatureMessageX962SHA256);
    sub_100016590(v232, v233);
    sub_100016590(v230, v231);
    v236 = Logger.logObject.getter();
    v237 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v236, v237))
    {
      v238 = swift_slowAlloc();
      *v238 = 67109120;
      *(v238 + 4) = v235 & 1;
      _os_log_impl(&_mh_execute_header, v236, v237, "Signature S3 verified? %{BOOL}d", v238, 8u);
    }

    v239 = swift_allocObject();
    v240 = v263;
    v239[2] = v262;
    v239[3] = v240;
    v239[4] = v259;
    v277 = sub_10093E3B0;
    v278 = v239;
    aBlock = _NSConcreteStackBlock;
    v274 = 1107296256;
    v275 = sub_100006684;
    v276 = &unk_10163D490;
    v241 = _Block_copy(&aBlock);

    v242 = v267;
    static DispatchQoS.unspecified.getter();
    v272 = _swiftEmptyArrayStorage;
    sub_10093C818(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    v243 = v266;
    v244 = v269;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    sub_100016590(v226, v271);
    _Block_release(v241);

    (*(v268 + 8))(v243, v244);
    (*(v270 + 8))(v242, v246);

    goto LABEL_74;
  }

  if (v69 == enum case for ServerStatusCode.forbidden(_:))
  {
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v86 = type metadata accessor for Logger();
    v87 = sub_1000076D4(v86, qword_10177C418);
    v88 = v261;
    (*(v31 + 16))(v38, v271, v261);
    v260 = v87;
    v89 = Logger.logObject.getter();
    v90 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v89, v90))
    {
      v91 = swift_slowAlloc();
      v256 = v91;
      v259 = swift_slowAlloc();
      aBlock = v259;
      *v91 = 136446210;
      sub_10093C818(&qword_1016A62C0, &type metadata accessor for FMNServerInteractionController.FMNResponseFields);
      v92 = dispatch thunk of CustomStringConvertible.description.getter();
      v94 = v93;
      (*(v31 + 8))(v38, v88);
      v95 = sub_1000136BC(v92, v94, &aBlock);

      v96 = v256;
      *(v256 + 4) = v95;
      _os_log_impl(&_mh_execute_header, v89, v90, "Pairing not allowed! %{public}s", v96, 0xCu);
      sub_100007BAC(v259);
    }

    else
    {

      (*(v31 + 8))(v38, v88);
    }

    v135 = v258;
    FMNServerInteractionController.FMNResponseFields.metadata.getter();
    v136 = type metadata accessor for FMNServerInteractionController.InternalServerMetadata();
    v137 = *(v136 - 8);
    if ((*(v137 + 48))(v135, 1, v136) == 1)
    {
      sub_10000B3A8(v135, &qword_101698640, &unk_10138FFA0);
      v138 = v257;
      (*(v57 + 56))(v257, 1, 1, v56);
      sub_10000B3A8(v138, &qword_101698638, &qword_1013AC450);
      v139 = v246;
    }

    else
    {
      v143 = v257;
      FMNServerInteractionController.InternalServerMetadata.errorCode.getter();
      (*(v137 + 8))(v135, v136);
      (*(v57 + 56))(v143, 0, 1, v56);
      v144 = v252;
      sub_1000D2AD8(v143, v252, &qword_101698638, &qword_1013AC450);
      v145 = v245(v144, v56);
      if (v145 == enum case for ServerStatusCode.preconditionFailed(_:))
      {
        v146 = Logger.logObject.getter();
        v147 = static os_log_type_t.error.getter();
        v148 = os_log_type_enabled(v146, v147);
        v139 = v246;
        if (v148)
        {
          v149 = swift_slowAlloc();
          *v149 = 0;
          _os_log_impl(&_mh_execute_header, v146, v147, "Pairing has been completed by another device", v149, 2u);
        }

        v150 = swift_allocObject();
        v151 = v263;
        *(v150 + 16) = v262;
        *(v150 + 24) = v151;
        v277 = sub_10093E320;
        v278 = v150;
        aBlock = _NSConcreteStackBlock;
        v274 = 1107296256;
        v142 = &unk_10163D3A0;
        goto LABEL_59;
      }

      v139 = v246;
      if (v145 == enum case for ServerStatusCode.locked(_:))
      {
        v208 = Logger.logObject.getter();
        v209 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v208, v209))
        {
          v210 = swift_slowAlloc();
          *v210 = 0;
          _os_log_impl(&_mh_execute_header, v208, v209, "Pairing is pending from another device", v210, 2u);
        }

        v211 = swift_allocObject();
        v212 = v263;
        *(v211 + 16) = v262;
        *(v211 + 24) = v212;
        v277 = sub_10093E2F0;
        v278 = v211;
        aBlock = _NSConcreteStackBlock;
        v274 = 1107296256;
        v142 = &unk_10163D350;
        goto LABEL_59;
      }

      (*(v57 + 8))(v144, v56);
    }

    v140 = swift_allocObject();
    v141 = v263;
    *(v140 + 16) = v262;
    *(v140 + 24) = v141;
    v277 = sub_10093E2C0;
    v278 = v140;
    aBlock = _NSConcreteStackBlock;
    v274 = 1107296256;
    v142 = &unk_10163D300;
LABEL_59:
    v275 = sub_100006684;
    v276 = v142;
    v213 = _Block_copy(&aBlock);

    v214 = v267;
    static DispatchQoS.unspecified.getter();
    v272 = _swiftEmptyArrayStorage;
    sub_10093C818(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    v215 = v266;
    v216 = v269;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v213);
    (*(v268 + 8))(v215, v216);
    (*(v270 + 8))(v214, v139);
    goto LABEL_74;
  }

  if (v69 != enum case for ServerStatusCode.serverConflict(_:))
  {
    (*(v57 + 8))(v52, v56);
    v10 = v246;
LABEL_2:
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v59 = type metadata accessor for Logger();
    sub_1000076D4(v59, qword_10177C418);
    v60 = v261;
    (*(v31 + 16))(v35, v271, v261);
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      aBlock = v64;
      *v63 = 136446210;
      sub_10093C818(&qword_1016A62C0, &type metadata accessor for FMNServerInteractionController.FMNResponseFields);
      v65 = dispatch thunk of CustomStringConvertible.description.getter();
      v67 = v66;
      (*(v31 + 8))(v35, v60);
      v68 = sub_1000136BC(v65, v67, &aBlock);

      *(v63 + 4) = v68;
      _os_log_impl(&_mh_execute_header, v61, v62, "Pairing lock failed: %{public}s", v63, 0xCu);
      sub_100007BAC(v64);
    }

    else
    {

      (*(v31 + 8))(v35, v60);
    }

    v80 = swift_allocObject();
    v81 = v263;
    *(v80 + 16) = v262;
    *(v80 + 24) = v81;
    v277 = sub_10093F81C;
    v278 = v80;
    aBlock = _NSConcreteStackBlock;
    v274 = 1107296256;
    v275 = sub_100006684;
    v276 = &unk_10163D2B0;
    v82 = _Block_copy(&aBlock);

    v83 = v267;
    static DispatchQoS.unspecified.getter();
    v272 = _swiftEmptyArrayStorage;
    sub_10093C818(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    v84 = v266;
    v85 = v269;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v82);
    (*(v268 + 8))(v84, v85);
    (*(v270 + 8))(v83, v10);
    goto LABEL_74;
  }

  v109 = v246;
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v110 = type metadata accessor for Logger();
  sub_1000076D4(v110, qword_10177C418);
  v111 = v261;
  (*(v31 + 16))(v41, v271, v261);
  v112 = Logger.logObject.getter();
  v113 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v112, v113))
  {
    v114 = swift_slowAlloc();
    v115 = swift_slowAlloc();
    aBlock = v115;
    *v114 = 136446210;
    sub_10093C818(&qword_1016A62C0, &type metadata accessor for FMNServerInteractionController.FMNResponseFields);
    v116 = dispatch thunk of CustomStringConvertible.description.getter();
    v118 = v117;
    (*(v31 + 8))(v41, v111);
    v119 = sub_1000136BC(v116, v118, &aBlock);

    *(v114 + 4) = v119;
    _os_log_impl(&_mh_execute_header, v112, v113, "Linked to another Apple ID. %{public}s", v114, 0xCu);
    sub_100007BAC(v115);
  }

  else
  {

    (*(v31 + 8))(v41, v111);
  }

  v202 = swift_allocObject();
  v203 = v263;
  *(v202 + 16) = v262;
  *(v202 + 24) = v203;
  v277 = sub_10093E350;
  v278 = v202;
  aBlock = _NSConcreteStackBlock;
  v274 = 1107296256;
  v275 = sub_100006684;
  v276 = &unk_10163D3F0;
  v204 = _Block_copy(&aBlock);

  v205 = v267;
  static DispatchQoS.unspecified.getter();
  v272 = _swiftEmptyArrayStorage;
  sub_10093C818(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  v206 = v266;
  v207 = v269;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v204);
  (*(v268 + 8))(v206, v207);
  (*(v270 + 8))(v205, v109);
LABEL_74:

  return sub_10000B3A8(v264, &qword_101698638, &qword_1013AC450);
}

uint64_t sub_1009336CC(void (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, void (*a6)(void), uint64_t (*a7)(void))
{
  v12 = sub_1000BC4D4(a4, a5);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v18 - v14;
  a6(0);
  v16 = swift_projectBox();
  swift_beginAccess();
  sub_10093C940(v16, v15, a7);
  swift_storeEnumTagMultiPayload();
  a1(v15);
  return sub_10000B3A8(v15, a4, a5);
}

uint64_t sub_1009337E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[27] = a8;
  v8[28] = v17;
  v8[25] = a6;
  v8[26] = a7;
  v8[23] = a4;
  v8[24] = a5;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v8[29] = v9;
  v10 = *(v9 - 8);
  v8[30] = v10;
  v11 = *(v10 + 64) + 15;
  v8[31] = swift_task_alloc();
  v12 = type metadata accessor for DispatchQoS();
  v8[32] = v12;
  v13 = *(v12 - 8);
  v8[33] = v13;
  v14 = *(v13 + 64) + 15;
  v8[34] = swift_task_alloc();

  return _swift_task_switch(sub_10093390C, 0, 0);
}

uint64_t sub_10093390C()
{
  v1 = v0[23];
  v2 = *(v0[24] + 16);

  sub_1009399EC(v1, (v0 + 2));
  v3 = swift_task_alloc();
  v0[35] = v3;
  *v3 = v0;
  v3[1] = sub_1009339D8;
  v4 = v0[23];

  return sub_1008DB1C0(v4, v2);
}

uint64_t sub_1009339D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = *v3;
  v5[18] = v3;
  v5[19] = a1;
  v5[20] = a2;
  v5[21] = a3;
  v6 = v4[35];
  v8 = *v3;
  v5[36] = a1;

  return _swift_task_switch(sub_100933AE0, 0, 0);
}

uint64_t sub_100933AE0()
{
  v1 = v0[36];
  if (v1)
  {
    v2 = v0[20];
    v3 = v0[21];
    v5 = v0[27];
    v4 = v0[28];
    v6 = v0[25];
    v7 = v0[26];
    v8 = v0[36];

    sub_100017D5C(v2, v3);
    sub_1004FEB68(v1, v2, v3, 0, v4);
    sub_100165328(v1, v2, v3);
    v9 = swift_allocObject();
    v9[2] = v6;
    v9[3] = v7;
    v9[4] = v5;
    v10 = v6;

    Future.addFailure(block:)();

    v11 = swift_allocObject();
    v11[2] = v10;
    v11[3] = v7;
    v11[4] = v5;
    v12 = v10;

    Future.addSuccess(block:)();

    sub_100165328(v1, v2, v3);
  }

  else
  {
    static os_log_type_t.error.getter();
    if (qword_1016950C8 != -1)
    {
      swift_once();
    }

    v13 = v0[34];
    v14 = v0[31];
    v27 = v0[33];
    v28 = v0[32];
    v15 = v0[29];
    v16 = v0[30];
    v17 = v0[26];
    v18 = v0[27];
    v26 = v0[25];
    os_log(_:dso:log:_:_:)();
    v19 = swift_allocObject();
    *(v19 + 16) = v17;
    *(v19 + 24) = v18;
    v0[16] = sub_10093C7F8;
    v0[17] = v19;
    v0[12] = _NSConcreteStackBlock;
    v0[13] = 1107296256;
    v0[14] = sub_100006684;
    v0[15] = &unk_10163C838;
    v20 = _Block_copy(v0 + 12);

    static DispatchQoS.unspecified.getter();
    v0[22] = _swiftEmptyArrayStorage;
    sub_10093C818(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v20);
    (*(v16 + 8))(v14, v15);
    (*(v27 + 8))(v13, v28);
    v21 = v0[17];
  }

  v22 = v0[34];
  v23 = v0[31];

  v24 = v0[1];

  return v24();
}

uint64_t sub_100933E98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a3;
  v23 = a4;
  v27 = a2;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v26 = *(v5 - 8);
  v6 = *(v26 + 64);
  __chkstk_darwin(v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v24 = *(v9 - 8);
  v25 = v9;
  v10 = *(v24 + 64);
  __chkstk_darwin(v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_log_type_t.error.getter();
  if (qword_1016950C8 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_101385D80;
  aBlock[0] = a1;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  v14 = String.init<A>(describing:)();
  v16 = v15;
  *(v13 + 56) = &type metadata for String;
  *(v13 + 64) = sub_100008C00();
  *(v13 + 32) = v14;
  *(v13 + 40) = v16;
  os_log(_:dso:log:_:_:)();

  v17 = swift_allocObject();
  v18 = v23;
  v17[2] = v22;
  v17[3] = v18;
  v17[4] = a1;
  aBlock[4] = sub_1002EF79C;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_10163C978;
  v19 = _Block_copy(aBlock);
  swift_errorRetain();

  static DispatchQoS.unspecified.getter();
  v28 = _swiftEmptyArrayStorage;
  sub_10093C818(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);
  (*(v26 + 8))(v8, v5);
  (*(v24 + 8))(v12, v25);
}

uint64_t sub_100934250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a3;
  v40 = a4;
  v43 = a2;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v46 = *(v5 - 8);
  v47 = v5;
  v6 = *(v46 + 64);
  __chkstk_darwin(v5);
  v42 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v44 = *(v8 - 8);
  v45 = v8;
  v9 = *(v44 + 64);
  __chkstk_darwin(v8);
  v41 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FMNServerInteractionController.FMNResponseFields();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_1000076D4(v16, qword_10177C418);
  (*(v12 + 16))(v15, a1, v11);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    aBlock = v20;
    *v19 = 136446210;
    sub_10093C818(&qword_1016A62C0, &type metadata accessor for FMNServerInteractionController.FMNResponseFields);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    (*(v12 + 8))(v15, v11);
    v24 = sub_1000136BC(v21, v23, &aBlock);

    *(v19 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v17, v18, "Remove pairing lock response %{public}s", v19, 0xCu);
    sub_100007BAC(v20);
  }

  else
  {

    (*(v12 + 8))(v15, v11);
  }

  v25 = FMNServerInteractionController.FMNResponseFields.statusCode.getter();
  static os_log_type_t.default.getter();
  if (v25 == 200)
  {
    if (qword_1016950C8 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    v26 = swift_allocObject();
    v27 = v40;
    *(v26 + 16) = v39;
    *(v26 + 24) = v27;
    v53 = sub_10041ABC0;
    v54 = v26;
    aBlock = _NSConcreteStackBlock;
    v50 = 1107296256;
    v51 = sub_100006684;
    v52 = &unk_10163C928;
    v28 = _Block_copy(&aBlock);

    v29 = v41;
    static DispatchQoS.unspecified.getter();
    v48 = _swiftEmptyArrayStorage;
  }

  else
  {
    if (qword_1016950C8 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_101385D80;
    aBlock = FMNServerInteractionController.FMNResponseFields.statusCode.getter();
    v31 = dispatch thunk of CustomStringConvertible.description.getter();
    v33 = v32;
    *(v30 + 56) = &type metadata for String;
    *(v30 + 64) = sub_100008C00();
    *(v30 + 32) = v31;
    *(v30 + 40) = v33;
    os_log(_:dso:log:_:_:)();

    v34 = swift_allocObject();
    v35 = v40;
    *(v34 + 16) = v39;
    *(v34 + 24) = v35;
    v53 = sub_10093C878;
    v54 = v34;
    aBlock = _NSConcreteStackBlock;
    v50 = 1107296256;
    v51 = sub_100006684;
    v52 = &unk_10163C8D8;
    v28 = _Block_copy(&aBlock);

    v29 = v41;
    static DispatchQoS.unspecified.getter();
    v48 = _swiftEmptyArrayStorage;
  }

  sub_10093C818(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  v36 = v42;
  v37 = v47;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v28);
  (*(v46 + 8))(v36, v37);
  (*(v44 + 8))(v29, v45);
}

void sub_10093493C(void (*a1)())
{
  type metadata accessor for SPPairingSessionError(0);
  sub_100032898(_swiftEmptyArrayStorage);
  sub_10093C818(&unk_1016B2710, type metadata accessor for SPPairingSessionError);
  _BridgedStoredNSError.init(_:userInfo:)();
  a1();
}

uint64_t sub_1009349F8(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v67 = a3;
  v66 = a2;
  v4 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v64 = &v57 - v6;
  v63 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v62 = *(v63 - 8);
  v7 = *(v62 + 64);
  __chkstk_darwin(v63);
  v61 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for OS_dispatch_queue.Attributes();
  v9 = *(*(v60 - 8) + 64);
  __chkstk_darwin(v60);
  v59 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v57 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000BC4D4(&qword_1016985F0, &unk_10139D780);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v57 - v16;
  v18 = type metadata accessor for FMNAccountType();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for AirPodsPairingLockAckEndPoint();
  v24 = v23 - 8;
  v25 = *(*(v23 - 8) + 64);
  v26 = __chkstk_darwin(v23);
  v28 = &v57 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v30 = (&v57 - v29);
  v31 = enum case for FMNAccountType.w2Accessory(_:);
  v32 = *(v19 + 104);
  v32(v22, enum case for FMNAccountType.w2Accessory(_:), v18);
  type metadata accessor for AccountURLComponents();
  swift_allocObject();
  *v30 = sub_1010B32C8(v22);
  v33 = v30 + *(v24 + 28);
  v58 = v30;
  v32(v33, v31, v18);
  v34 = type metadata accessor for SearchPartyURLSessionFactory(0);
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  swift_allocObject();
  v37 = type metadata accessor for FMNMockingPreferences();
  (*(*(v37 - 8) + 56))(v17, 1, 1, v37);
  v38 = FMNURLSessionFactory.init(mockSessionCreationBlock:preferences:)();
  v39 = type metadata accessor for ServerInteractionController(0);
  v40 = *(v39 + 48);
  v41 = *(v39 + 52);
  v42 = swift_allocObject();
  sub_10093C940(v30, v28, type metadata accessor for AirPodsPairingLockAckEndPoint);
  v43 = sub_100623A44(v28, v38, v42);
  sub_1000BC488();
  static DispatchQoS.unspecified.getter();
  v68 = _swiftEmptyArrayStorage;
  sub_10093C818(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_100014084(&qword_10169BB70, &unk_101695580, &qword_101385D90);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v62 + 104))(v61, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v63);
  v44 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v45 = type metadata accessor for TaskPriority();
  v46 = v64;
  (*(*(v45 - 8) + 56))(v64, 1, 1, v45);
  v47 = swift_allocObject();
  *(v47 + 16) = 0;
  *(v47 + 24) = 0;
  v48 = a1[11];
  *(v47 + 192) = a1[10];
  *(v47 + 208) = v48;
  *(v47 + 224) = a1[12];
  v49 = a1[7];
  *(v47 + 128) = a1[6];
  *(v47 + 144) = v49;
  v50 = a1[9];
  *(v47 + 160) = a1[8];
  *(v47 + 176) = v50;
  v51 = a1[3];
  *(v47 + 64) = a1[2];
  *(v47 + 80) = v51;
  v52 = a1[5];
  *(v47 + 96) = a1[4];
  *(v47 + 112) = v52;
  v53 = a1[1];
  *(v47 + 32) = *a1;
  *(v47 + 48) = v53;
  *(v47 + 240) = v65;
  *(v47 + 248) = v44;
  v54 = v67;
  *(v47 + 256) = v66;
  *(v47 + 264) = v54;
  *(v47 + 272) = v43;
  sub_10093DFCC(a1, &v68);

  v55 = v44;

  sub_10025EDD4(0, 0, v46, &unk_1013C8288, v47);

  return sub_10093C9A8(v58, type metadata accessor for AirPodsPairingLockAckEndPoint);
}

uint64_t sub_1009350AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[43] = a8;
  v8[44] = v17;
  v8[41] = a6;
  v8[42] = a7;
  v8[39] = a4;
  v8[40] = a5;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v8[45] = v9;
  v10 = *(v9 - 8);
  v8[46] = v10;
  v11 = *(v10 + 64) + 15;
  v8[47] = swift_task_alloc();
  v12 = type metadata accessor for DispatchQoS();
  v8[48] = v12;
  v13 = *(v12 - 8);
  v8[49] = v13;
  v14 = *(v13 + 64) + 15;
  v8[50] = swift_task_alloc();

  return _swift_task_switch(sub_1009351D8, 0, 0);
}

uint64_t sub_1009351D8()
{
  v1 = v0[39];
  v2 = *(v0[40] + 16);

  sub_10093DFCC(v1, (v0 + 2));
  v3 = swift_task_alloc();
  v0[51] = v3;
  *v3 = v0;
  v3[1] = sub_1009352A4;
  v4 = v0[39];

  return (sub_100E99008)(v4, v2);
}

uint64_t sub_1009352A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = *v3;
  v5[34] = v3;
  v5[35] = a1;
  v5[36] = a2;
  v5[37] = a3;
  v6 = v4[51];
  v8 = *v3;
  v5[52] = a1;

  return _swift_task_switch(sub_1009353AC, 0, 0);
}

uint64_t sub_1009353AC()
{
  v1 = v0[52];
  if (v1)
  {
    v2 = v0[36];
    v3 = v0[37];
    v5 = v0[43];
    v4 = v0[44];
    v6 = v0[41];
    v7 = v0[42];
    v8 = v0[52];

    sub_100017D5C(v2, v3);
    sub_1004FEE74(v1, v2, v3, 0, v4);
    sub_100165328(v1, v2, v3);
    v9 = swift_allocObject();
    v9[2] = v6;
    v9[3] = v7;
    v9[4] = v5;
    v10 = v6;

    Future.addFailure(block:)();

    v11 = swift_allocObject();
    v11[2] = v10;
    v11[3] = v7;
    v11[4] = v5;
    v12 = v10;

    Future.addSuccess(block:)();

    sub_100165328(v1, v2, v3);
  }

  else
  {
    static os_log_type_t.error.getter();
    if (qword_1016950C8 != -1)
    {
      swift_once();
    }

    v13 = v0[50];
    v14 = v0[47];
    v27 = v0[49];
    v28 = v0[48];
    v15 = v0[45];
    v16 = v0[46];
    v17 = v0[42];
    v18 = v0[43];
    v26 = v0[41];
    os_log(_:dso:log:_:_:)();
    v19 = swift_allocObject();
    *(v19 + 16) = v17;
    *(v19 + 24) = v18;
    v0[32] = sub_10093E004;
    v0[33] = v19;
    v0[28] = _NSConcreteStackBlock;
    v0[29] = 1107296256;
    v0[30] = sub_100006684;
    v0[31] = &unk_10163D008;
    v20 = _Block_copy(v0 + 28);

    static DispatchQoS.unspecified.getter();
    v0[38] = _swiftEmptyArrayStorage;
    sub_10093C818(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v20);
    (*(v16 + 8))(v14, v15);
    (*(v27 + 8))(v13, v28);
    v21 = v0[33];
  }

  v22 = v0[50];
  v23 = v0[47];

  v24 = v0[1];

  return v24();
}

uint64_t sub_100935764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a3;
  v22 = a4;
  v25 = a2;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v5 - 8);
  v6 = *(v24 + 64);
  __chkstk_darwin(v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DispatchQoS();
  v9 = *(v23 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v23);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_log_type_t.error.getter();
  if (qword_1016950C8 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_101385D80;
  aBlock[0] = a1;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  v14 = String.init<A>(describing:)();
  v16 = v15;
  *(v13 + 56) = &type metadata for String;
  *(v13 + 64) = sub_100008C00();
  *(v13 + 32) = v14;
  *(v13 + 40) = v16;
  os_log(_:dso:log:_:_:)();

  v17 = swift_allocObject();
  v18 = v22;
  *(v17 + 16) = v21;
  *(v17 + 24) = v18;
  aBlock[4] = sub_10093E140;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_10163D198;
  v19 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v26 = _swiftEmptyArrayStorage;
  sub_10093C818(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);
  (*(v24 + 8))(v8, v5);
  (*(v9 + 8))(v12, v23);
}

uint64_t sub_100935B14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v67 = a3;
  v68 = a4;
  v69 = a2;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v71 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v70 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for AirPodsPairingLockAckResponse();
  v64 = *(v66 - 8);
  v13 = *(v64 + 64);
  v14 = __chkstk_darwin(v66);
  v65 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v58 - v15;
  v17 = type metadata accessor for FMNServerInteractionController.FMNResponseFields();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = a1;
  if (FMNServerInteractionController.FMNResponseFields.statusCode.getter() == 200)
  {
    v62 = v10;
    v63 = v9;
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    v23 = sub_1000076D4(v22, qword_10177C418);
    (*(v18 + 16))(v21, v72, v17);
    v61 = v23;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v60 = v5;
      v27 = v26;
      v28 = swift_slowAlloc();
      v59 = v6;
      v58 = v28;
      aBlock = v28;
      *v27 = 136446210;
      sub_10093C818(&qword_1016A62C0, &type metadata accessor for FMNServerInteractionController.FMNResponseFields);
      v29 = dispatch thunk of CustomStringConvertible.description.getter();
      v30 = v16;
      v32 = v31;
      (*(v18 + 8))(v21, v17);
      v33 = sub_1000136BC(v29, v32, &aBlock);
      v16 = v30;

      *(v27 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v24, v25, "Ack pairing success: %{public}s", v27, 0xCu);
      sub_100007BAC(v58);
      v6 = v59;

      v5 = v60;
    }

    else
    {

      (*(v18 + 8))(v21, v17);
    }

    v43 = type metadata accessor for JSONDecoder();
    v44 = *(v43 + 48);
    v45 = *(v43 + 52);
    swift_allocObject();
    JSONDecoder.init()();
    v46 = FMNServerInteractionController.FMNResponseFields.data.getter();
    v48 = v47;
    sub_10093C818(&qword_1016AED18, type metadata accessor for AirPodsPairingLockAckResponse);
    v49 = v16;
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    sub_100016590(v46, v48);
    v50 = v65;
    sub_10093C940(v16, v65, type metadata accessor for AirPodsPairingLockAckResponse);
    v51 = (*(v64 + 80) + 32) & ~*(v64 + 80);
    v52 = swift_allocObject();
    v53 = v68;
    *(v52 + 16) = v67;
    *(v52 + 24) = v53;
    sub_10093E600(v50, v52 + v51, type metadata accessor for AirPodsPairingLockAckResponse);
    v78 = sub_10093E07C;
    v79 = v52;
    aBlock = _NSConcreteStackBlock;
    v75 = 1107296256;
    v76 = sub_100006684;
    v77 = &unk_10163D148;
    v54 = _Block_copy(&aBlock);

    v55 = v70;
    static DispatchQoS.unspecified.getter();
    v73 = _swiftEmptyArrayStorage;
    sub_10093C818(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    v56 = v71;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v54);

    (*(v6 + 8))(v56, v5);
    (*(v62 + 8))(v55, v63);
    sub_10093C9A8(v49, type metadata accessor for AirPodsPairingLockAckResponse);
  }

  else
  {
    static os_log_type_t.default.getter();
    if (qword_1016950C8 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_101385D80;
    sub_10093C818(&qword_1016A62C0, &type metadata accessor for FMNServerInteractionController.FMNResponseFields);
    v35 = dispatch thunk of CustomStringConvertible.description.getter();
    v37 = v36;
    *(v34 + 56) = &type metadata for String;
    *(v34 + 64) = sub_100008C00();
    *(v34 + 32) = v35;
    *(v34 + 40) = v37;
    os_log(_:dso:log:_:_:)();

    v38 = swift_allocObject();
    v39 = v68;
    *(v38 + 16) = v67;
    *(v38 + 24) = v39;
    v78 = sub_10093F818;
    v79 = v38;
    aBlock = _NSConcreteStackBlock;
    v75 = 1107296256;
    v76 = sub_100006684;
    v77 = &unk_10163D0A8;
    v40 = _Block_copy(&aBlock);

    v41 = v70;
    static DispatchQoS.unspecified.getter();
    v73 = _swiftEmptyArrayStorage;
    sub_10093C818(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    v42 = v71;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v40);
    (*(v6 + 8))(v42, v5);
    (*(v10 + 8))(v41, v9);
  }
}

uint64_t sub_100936718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 432) = v18;
  *(v8 + 416) = v17;
  *(v8 + 400) = a7;
  *(v8 + 408) = a8;
  *(v8 + 384) = a5;
  *(v8 + 392) = a6;
  *(v8 + 376) = a4;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  *(v8 + 440) = v9;
  v10 = *(v9 - 8);
  *(v8 + 448) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 456) = swift_task_alloc();
  v12 = type metadata accessor for DispatchQoS();
  *(v8 + 464) = v12;
  v13 = *(v12 - 8);
  *(v8 + 472) = v13;
  v14 = *(v13 + 64) + 15;
  *(v8 + 480) = swift_task_alloc();

  return _swift_task_switch(sub_100936850, 0, 0);
}

uint64_t sub_100936850()
{
  v1 = v0[49];
  v3 = v0[47];
  v2 = v0[48];
  v4 = *(v0[50] + 16);

  sub_100164F7C(v3, (v0 + 2));
  sub_100017D5C(v2, v1);
  v5 = swift_task_alloc();
  v0[61] = v5;
  *v5 = v0;
  v5[1] = sub_100936938;
  v6 = v0[48];
  v7 = v0[49];
  v8 = v0[47];

  return sub_10028733C(v8, v6, v7, v4);
}

uint64_t sub_100936938(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = *v3;
  v5[42] = v3;
  v5[43] = a1;
  v5[44] = a2;
  v5[45] = a3;
  v6 = v4[61];
  v8 = *v3;
  v5[62] = a1;

  return _swift_task_switch(sub_100936A40, 0, 0);
}

uint64_t sub_100936A40()
{
  v1 = v0[62];
  if (v1)
  {
    v2 = v0[44];
    v3 = v0[45];
    v5 = v0[53];
    v4 = v0[54];
    v6 = v0[51];
    v7 = v0[52];
    v8 = v0[62];

    sub_100017D5C(v2, v3);
    sub_1004FC0C0(v1, v2, v3, 0, v4);
    sub_100165328(v1, v2, v3);
    v9 = swift_allocObject();
    v9[2] = v6;
    v9[3] = v7;
    v9[4] = v5;
    v10 = v6;

    Future.addFailure(block:)();

    v11 = swift_allocObject();
    v11[2] = v10;
    v11[3] = v7;
    v11[4] = v5;
    v12 = v10;

    Future.addSuccess(block:)();

    sub_100165328(v1, v2, v3);
  }

  else
  {
    if (qword_1016950E0 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_1000076D4(v13, qword_10177C448);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Could not create pairing ack request", v16, 2u);
    }

    v17 = v0[60];
    v18 = v0[57];
    v31 = v0[59];
    v32 = v0[58];
    v19 = v0[55];
    v20 = v0[56];
    v21 = v0[52];
    v22 = v0[53];
    v30 = v0[51];

    v23 = swift_allocObject();
    *(v23 + 16) = v21;
    *(v23 + 24) = v22;
    v0[40] = sub_10093E548;
    v0[41] = v23;
    v0[36] = _NSConcreteStackBlock;
    v0[37] = 1107296256;
    v0[38] = sub_100006684;
    v0[39] = &unk_10163D648;
    v24 = _Block_copy(v0 + 36);

    static DispatchQoS.unspecified.getter();
    v0[46] = _swiftEmptyArrayStorage;
    sub_10093C818(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v24);
    (*(v20 + 8))(v18, v19);
    (*(v31 + 8))(v17, v32);
    v25 = v0[41];
  }

  v26 = v0[60];
  v27 = v0[57];

  v28 = v0[1];

  return v28();
}

uint64_t sub_100936E44(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v40 = a5;
  v41 = a6;
  v42 = a3;
  v13 = type metadata accessor for DispatchWorkItemFlags();
  v45 = *(v13 - 8);
  v14 = *(v45 + 64);
  __chkstk_darwin(v13);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v43 = *(v17 - 8);
  v44 = v17;
  v18 = *(v43 + 64);
  __chkstk_darwin(v17);
  v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1016950E0 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_1000076D4(v21, qword_10177C448);
  swift_errorRetain();
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v39 = a2;
    v25 = v24;
    v37 = swift_slowAlloc();
    v38 = a8;
    v46 = a1;
    aBlock[0] = v37;
    *v25 = 136446210;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v26 = String.init<A>(describing:)();
    v28 = v20;
    v29 = v16;
    v30 = v13;
    v31 = a7;
    v32 = a4;
    v33 = sub_1000136BC(v26, v27, aBlock);

    *(v25 + 4) = v33;
    a4 = v32;
    a7 = v31;
    v13 = v30;
    v16 = v29;
    v20 = v28;
    _os_log_impl(&_mh_execute_header, v22, v23, v40, v25, 0xCu);
    sub_100007BAC(v37);
    a8 = v38;
  }

  v34 = swift_allocObject();
  *(v34 + 16) = v42;
  *(v34 + 24) = a4;
  aBlock[4] = a7;
  aBlock[5] = v34;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = a8;
  v35 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v46 = _swiftEmptyArrayStorage;
  sub_10093C818(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v35);
  (*(v45 + 8))(v16, v13);
  (*(v43 + 8))(v20, v44);
}

uint64_t sub_100937268(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v70 = a3;
  v71 = a2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v75 = *(v6 - 8);
  v7 = *(v75 + 64);
  __chkstk_darwin(v6);
  v73 = v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v74 = *(v9 - 8);
  v10 = *(v74 + 64);
  __chkstk_darwin(v9);
  v72 = v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for AirPodsLEPairingLockAckResponse();
  v66 = *(v68 - 8);
  v12 = *(v66 + 64);
  v13 = __chkstk_darwin(v68);
  v67 = v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v64 - v14;
  v16 = type metadata accessor for FMNServerInteractionController.FMNResponseFields();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v21 = v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = v64 - v22;
  v77 = a1;
  v24 = FMNServerInteractionController.FMNResponseFields.statusCode.getter();
  v76 = v6;
  if (v24 == 200)
  {
    v69 = a4;
    v65 = v9;
    if (qword_1016950E0 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    v26 = sub_1000076D4(v25, qword_10177C448);
    (*(v17 + 16))(v23, v77, v16);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v64[0] = swift_slowAlloc();
      aBlock = v64[0];
      *v29 = 136446210;
      sub_10093C818(&qword_1016A62C0, &type metadata accessor for FMNServerInteractionController.FMNResponseFields);
      v30 = dispatch thunk of CustomStringConvertible.description.getter();
      v64[1] = v26;
      v31 = v15;
      v33 = v32;
      (*(v17 + 8))(v23, v16);
      v34 = sub_1000136BC(v30, v33, &aBlock);
      v15 = v31;

      *(v29 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v27, v28, "Ack pairing success: %{public}s", v29, 0xCu);
      sub_100007BAC(v64[0]);
    }

    else
    {

      (*(v17 + 8))(v23, v16);
    }

    v43 = v76;
    v44 = type metadata accessor for JSONDecoder();
    v45 = *(v44 + 48);
    v46 = *(v44 + 52);
    swift_allocObject();
    JSONDecoder.init()();
    v47 = FMNServerInteractionController.FMNResponseFields.data.getter();
    v49 = v48;
    sub_10093C818(&qword_101698600, type metadata accessor for AirPodsLEPairingLockAckResponse);
    v50 = v15;
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    v51 = v69;
    sub_100016590(v47, v49);
    v58 = v67;
    sub_10093C940(v50, v67, type metadata accessor for AirPodsLEPairingLockAckResponse);
    v59 = (*(v66 + 80) + 32) & ~*(v66 + 80);
    v60 = swift_allocObject();
    *(v60 + 16) = v70;
    *(v60 + 24) = v51;
    sub_10093E600(v58, v60 + v59, type metadata accessor for AirPodsLEPairingLockAckResponse);
    v83 = sub_10093E668;
    v84 = v60;
    aBlock = _NSConcreteStackBlock;
    v80 = 1107296256;
    v81 = sub_100006684;
    v82 = &unk_10163D788;
    v61 = _Block_copy(&aBlock);

    v62 = v72;
    static DispatchQoS.unspecified.getter();
    v78 = _swiftEmptyArrayStorage;
    sub_10093C818(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    v63 = v73;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v61);

    (*(v75 + 8))(v63, v43);
    (*(v74 + 8))(v62, v65);
    sub_10093C9A8(v50, type metadata accessor for AirPodsLEPairingLockAckResponse);
  }

  else
  {
    if (qword_1016950E0 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_1000076D4(v35, qword_10177C448);
    (*(v17 + 16))(v21, v77, v16);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      aBlock = v77;
      *v38 = 136446210;
      sub_10093C818(&qword_1016A62C0, &type metadata accessor for FMNServerInteractionController.FMNResponseFields);
      v39 = dispatch thunk of CustomStringConvertible.description.getter();
      v69 = a4;
      v41 = v40;
      (*(v17 + 8))(v21, v16);
      v42 = sub_1000136BC(v39, v41, &aBlock);
      a4 = v69;

      *(v38 + 4) = v42;
      _os_log_impl(&_mh_execute_header, v36, v37, "Ack pairing failed. Response %{public}s", v38, 0xCu);
      sub_100007BAC(v77);
    }

    else
    {

      (*(v17 + 8))(v21, v16);
    }

    v52 = swift_allocObject();
    *(v52 + 16) = v70;
    *(v52 + 24) = a4;
    v83 = sub_10093F820;
    v84 = v52;
    aBlock = _NSConcreteStackBlock;
    v80 = 1107296256;
    v81 = sub_100006684;
    v82 = &unk_10163D6E8;
    v53 = _Block_copy(&aBlock);

    v54 = v72;
    static DispatchQoS.unspecified.getter();
    v78 = _swiftEmptyArrayStorage;
    sub_10093C818(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    v55 = v73;
    v56 = v76;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v53);
    (*(v75 + 8))(v55, v56);
    (*(v74 + 8))(v54, v9);
  }
}

uint64_t sub_100937F54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[45] = a8;
  v8[46] = v17;
  v8[43] = a6;
  v8[44] = a7;
  v8[41] = a4;
  v8[42] = a5;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v8[47] = v9;
  v10 = *(v9 - 8);
  v8[48] = v10;
  v11 = *(v10 + 64) + 15;
  v8[49] = swift_task_alloc();
  v12 = type metadata accessor for DispatchQoS();
  v8[50] = v12;
  v13 = *(v12 - 8);
  v8[51] = v13;
  v14 = *(v13 + 64) + 15;
  v8[52] = swift_task_alloc();

  return _swift_task_switch(sub_100938080, 0, 0);
}

uint64_t sub_100938080()
{
  v1 = v0[41];
  v2 = *(v0[42] + 16);

  sub_10093CBF0(v1, (v0 + 2));
  v3 = swift_task_alloc();
  v0[53] = v3;
  *v3 = v0;
  v3[1] = sub_10093814C;
  v4 = v0[41];

  return (sub_100EF4374)(v4, v2);
}

uint64_t sub_10093814C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = *v3;
  v5[36] = v3;
  v5[37] = a1;
  v5[38] = a2;
  v5[39] = a3;
  v6 = v4[53];
  v8 = *v3;
  v5[54] = a1;

  return _swift_task_switch(sub_100938254, 0, 0);
}

uint64_t sub_100938254()
{
  v1 = v0[54];
  if (v1)
  {
    v2 = v0[38];
    v3 = v0[39];
    v5 = v0[45];
    v4 = v0[46];
    v6 = v0[43];
    v7 = v0[44];
    v8 = v0[54];

    sub_100017D5C(v2, v3);
    sub_1004FF180(v1, v2, v3, 0, v4);
    sub_100165328(v1, v2, v3);
    v9 = swift_allocObject();
    v9[2] = v6;
    v9[3] = v7;
    v9[4] = v5;
    v10 = v6;

    Future.addFailure(block:)();

    v11 = swift_allocObject();
    v11[2] = v10;
    v11[3] = v7;
    v11[4] = v5;
    v12 = v10;

    Future.addSuccess(block:)();

    sub_100165328(v1, v2, v3);
  }

  else
  {
    if (qword_1016950E0 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_1000076D4(v13, qword_10177C448);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Could not create pairing ack request", v16, 2u);
    }

    v17 = v0[52];
    v18 = v0[49];
    v31 = v0[51];
    v32 = v0[50];
    v19 = v0[47];
    v20 = v0[48];
    v21 = v0[44];
    v22 = v0[45];
    v30 = v0[43];

    v23 = swift_allocObject();
    *(v23 + 16) = v21;
    *(v23 + 24) = v22;
    v0[34] = sub_10093D9D0;
    v0[35] = v23;
    v0[30] = _NSConcreteStackBlock;
    v0[31] = 1107296256;
    v0[32] = sub_100006684;
    v0[33] = &unk_10163C9F0;
    v24 = _Block_copy(v0 + 30);

    static DispatchQoS.unspecified.getter();
    v0[40] = _swiftEmptyArrayStorage;
    sub_10093C818(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v24);
    (*(v20 + 8))(v18, v19);
    (*(v31 + 8))(v17, v32);
    v25 = v0[35];
  }

  v26 = v0[52];
  v27 = v0[49];

  v28 = v0[1];

  return v28();
}

uint64_t sub_100938658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v35 = a3;
  v36 = a7;
  v33 = a5;
  v34 = a6;
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v38 = *(v11 - 8);
  v12 = *(v38 + 64);
  __chkstk_darwin(v11);
  v14 = v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for DispatchQoS();
  v15 = *(v37 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v37);
  v18 = v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1016950E0 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_1000076D4(v19, qword_10177C448);
  swift_errorRetain();
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v31[1] = a2;
    v32 = a4;
    v23 = v22;
    v24 = a8;
    v25 = swift_slowAlloc();
    *v23 = 138543362;
    swift_errorRetain();
    v26 = _swift_stdlib_bridgeErrorToNSError();
    *(v23 + 4) = v26;
    *v25 = v26;
    _os_log_impl(&_mh_execute_header, v20, v21, v33, v23, 0xCu);
    sub_10000B3A8(v25, &qword_10169BB30, &unk_10138B3C0);
    a8 = v24;

    a4 = v32;
  }

  v27 = swift_allocObject();
  v28 = v36;
  *(v27 + 16) = v35;
  *(v27 + 24) = a4;
  aBlock[4] = v28;
  aBlock[5] = v27;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = a8;
  v29 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v39 = _swiftEmptyArrayStorage;
  sub_10093C818(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v29);
  (*(v38 + 8))(v14, v11);
  (*(v15 + 8))(v18, v37);
}

uint64_t sub_100938A34(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v74 = a3;
  v75 = a4;
  v76 = a2;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v77 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v78 = *(v9 - 8);
  v79 = v9;
  v10 = *(v78 + 64);
  __chkstk_darwin(v9);
  v12 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for AirPodsSWPairingLockAckResponse();
  v70 = *(v72 - 8);
  v13 = *(v70 + 64);
  v14 = __chkstk_darwin(v72);
  v71 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v66 - v15;
  v17 = type metadata accessor for FMNServerInteractionController.FMNResponseFields();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v22 = &v66 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v66 - v23;
  v80 = a1;
  if (FMNServerInteractionController.FMNResponseFields.statusCode.getter() == 200)
  {
    v73 = v12;
    v69 = v6;
    if (qword_1016950E0 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    v26 = sub_1000076D4(v25, qword_10177C448);
    (*(v18 + 16))(v24, v80, v17);
    v68 = v26;
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v67 = v5;
      v66 = v30;
      aBlock = v30;
      *v29 = 136446210;
      sub_10093C818(&qword_1016A62C0, &type metadata accessor for FMNServerInteractionController.FMNResponseFields);
      v31 = dispatch thunk of CustomStringConvertible.description.getter();
      v32 = v16;
      v34 = v33;
      (*(v18 + 8))(v24, v17);
      v35 = sub_1000136BC(v31, v34, &aBlock);
      v16 = v32;

      *(v29 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v27, v28, "Ack pairing success: %{public}s", v29, 0xCu);
      sub_100007BAC(v66);
      v5 = v67;
    }

    else
    {

      (*(v18 + 8))(v24, v17);
    }

    v46 = v69;
    v47 = type metadata accessor for JSONDecoder();
    v48 = *(v47 + 48);
    v49 = *(v47 + 52);
    swift_allocObject();
    JSONDecoder.init()();
    v50 = FMNServerInteractionController.FMNResponseFields.data.getter();
    v52 = v51;
    sub_10093C818(&qword_1016AED08, type metadata accessor for AirPodsSWPairingLockAckResponse);
    v53 = v16;
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    v54 = v73;
    sub_100016590(v50, v52);
    v60 = v71;
    sub_10093C940(v16, v71, type metadata accessor for AirPodsSWPairingLockAckResponse);
    v61 = (*(v70 + 80) + 32) & ~*(v70 + 80);
    v62 = swift_allocObject();
    v63 = v75;
    *(v62 + 16) = v74;
    *(v62 + 24) = v63;
    sub_10093E600(v60, v62 + v61, type metadata accessor for AirPodsSWPairingLockAckResponse);
    v86 = sub_10093DA88;
    v87 = v62;
    aBlock = _NSConcreteStackBlock;
    v83 = 1107296256;
    v84 = sub_100006684;
    v85 = &unk_10163CB30;
    v64 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    v81 = _swiftEmptyArrayStorage;
    sub_10093C818(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    v65 = v77;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v64);

    (*(v46 + 8))(v65, v5);
    (*(v78 + 8))(v54, v79);
    sub_10093C9A8(v53, type metadata accessor for AirPodsSWPairingLockAckResponse);
  }

  else
  {
    if (qword_1016950E0 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    sub_1000076D4(v36, qword_10177C448);
    (*(v18 + 16))(v22, v80, v17);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      aBlock = v80;
      *v39 = 136446210;
      sub_10093C818(&qword_1016A62C0, &type metadata accessor for FMNServerInteractionController.FMNResponseFields);
      v40 = dispatch thunk of CustomStringConvertible.description.getter();
      v73 = v12;
      v41 = v6;
      v42 = v5;
      v44 = v43;
      (*(v18 + 8))(v22, v17);
      v45 = sub_1000136BC(v40, v44, &aBlock);
      v5 = v42;
      v6 = v41;
      v12 = v73;

      *(v39 + 4) = v45;
      _os_log_impl(&_mh_execute_header, v37, v38, "Ack pairing failed. Response %{public}s", v39, 0xCu);
      sub_100007BAC(v80);
    }

    else
    {

      (*(v18 + 8))(v22, v17);
    }

    v55 = swift_allocObject();
    v56 = v75;
    *(v55 + 16) = v74;
    *(v55 + 24) = v56;
    v86 = sub_10093F810;
    v87 = v55;
    aBlock = _NSConcreteStackBlock;
    v83 = 1107296256;
    v84 = sub_100006684;
    v85 = &unk_10163CA90;
    v57 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    v81 = _swiftEmptyArrayStorage;
    sub_10093C818(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    v58 = v77;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v57);
    (*(v6 + 8))(v58, v5);
    (*(v78 + 8))(v12, v79);
  }
}

uint64_t sub_1009396E0(void (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void))
{
  v11 = sub_1000BC4D4(a4, a5);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v16 - v13;
  sub_10093C940(a3, &v16 - v13, a6);
  swift_storeEnumTagMultiPayload();
  a1(v14);
  return sub_10000B3A8(v14, a4, a5);
}

uint64_t sub_1009397BC(void (*a1)(void *), uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v9 = sub_1000BC4D4(a3, a4);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (v14 - v11);
  type metadata accessor for SPPairingSessionError(0);
  v14[0] = a5;
  sub_100032898(_swiftEmptyArrayStorage);
  sub_10093C818(&unk_1016B2710, type metadata accessor for SPPairingSessionError);
  _BridgedStoredNSError.init(_:userInfo:)();
  *v12 = v14[1];
  swift_storeEnumTagMultiPayload();
  a1(v12);
  return sub_10000B3A8(v12, a3, a4);
}

uint64_t sub_100939900(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[14];
  v7 = v1[15];
  v8 = v1[16];
  v9 = v1[17];
  v10 = v1[18];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100014744;

  return sub_1009337E0(a1, v4, v5, (v1 + 4), v6, v7, v8, v9);
}

uint64_t sub_100939A24(const void *a1, uint64_t a2)
{
  v78[3] = &type metadata for AirPodsLEPairingCheckData;
  v78[4] = &off_10163C7C8;
  v78[0] = swift_allocObject();
  v4 = v78[0];
  memcpy((v78[0] + 16), a1, 0x160uLL);
  v76 = type metadata accessor for AirPodsLEPairingLockCheckResponse();
  v77 = &off_10165C740;
  v71 = sub_1000280DC(v75);
  sub_10093C940(a2, v71, type metadata accessor for AirPodsLEPairingLockCheckResponse);
  sub_100165278(a1, &v73);
  static os_log_type_t.debug.getter();
  if (qword_1016950C8 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_101385D80;
  v69 = sub_1000035D0(v78, &type metadata for AirPodsLEPairingCheckData);
  v72 = v4;
  v6 = *(v4 + 256);
  v7 = *(v4 + 264);
  sub_100017D5C(v6, v7);
  v8 = Data.hexString.getter();
  v10 = v9;
  sub_100016590(v6, v7);
  *(v5 + 56) = &type metadata for String;
  v70 = sub_100008C00();
  *(v5 + 64) = v70;
  *(v5 + 32) = v8;
  *(v5 + 40) = v10;
  os_log(_:dso:log:_:_:)();

  static os_log_type_t.debug.getter();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_101385D80;
  v68 = sub_1000035D0(v75, v76);
  v12 = v71;
  v14 = v71[4];
  v13 = v71[5];
  sub_100017D5C(v14, v13);
  v15 = Data.hexString.getter();
  v17 = v16;
  sub_100016590(v14, v13);
  *(v11 + 56) = &type metadata for String;
  *(v11 + 64) = v70;
  *(v11 + 32) = v15;
  *(v11 + 40) = v17;
  os_log(_:dso:log:_:_:)();

  static os_log_type_t.debug.getter();
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_101385D80;
  v19 = *v71;
  v20 = v71[1];
  sub_100017D5C(*v12, v12[1]);
  v21 = Data.hexString.getter();
  v23 = v22;
  sub_100016590(v19, v20);
  *(v18 + 56) = &type metadata for String;
  *(v18 + 64) = v70;
  *(v18 + 32) = v21;
  *(v18 + 40) = v23;
  os_log(_:dso:log:_:_:)();

  static os_log_type_t.debug.getter();
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_101385D80;
  v25 = v71[2];
  v26 = v71[3];
  sub_100017D5C(v12[2], v12[3]);
  v27 = Data.hexString.getter();
  v29 = v28;
  sub_100016590(v25, v26);
  *(v24 + 56) = &type metadata for String;
  *(v24 + 64) = v70;
  *(v24 + 32) = v27;
  *(v24 + 40) = v29;
  os_log(_:dso:log:_:_:)();

  static os_log_type_t.debug.getter();
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_101385D80;
  v31 = v72[26];
  v32 = v72[27];
  sub_100017D5C(v31, v32);
  v33 = Data.hexString.getter();
  v35 = v34;
  sub_100016590(v31, v32);
  *(v30 + 56) = &type metadata for String;
  *(v30 + 64) = v70;
  *(v30 + 32) = v33;
  *(v30 + 40) = v35;
  os_log(_:dso:log:_:_:)();

  static os_log_type_t.debug.getter();
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_101385D80;
  v37 = v72[2];
  v38 = v72[3];
  sub_100017D5C(v37, v38);
  v39 = Data.hexString.getter();
  v41 = v40;
  sub_100016590(v37, v38);
  v42 = v71;
  *(v36 + 56) = &type metadata for String;
  *(v36 + 64) = v70;
  *(v36 + 32) = v39;
  *(v36 + 40) = v41;
  os_log(_:dso:log:_:_:)();

  static os_log_type_t.debug.getter();
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_101385D80;
  v44 = v71[6];
  v45 = v71[7];
  sub_100017D5C(v42[6], v42[7]);
  v46 = Data.hexString.getter();
  v48 = v47;
  sub_100016590(v44, v45);
  *(v43 + 56) = &type metadata for String;
  *(v43 + 64) = v70;
  *(v43 + 32) = v46;
  *(v43 + 40) = v48;
  os_log(_:dso:log:_:_:)();

  v49 = v69[31];
  v73 = v69[30];
  v74 = v49;
  v50 = v68[4];
  v51 = v68[5];
  sub_100017D5C(v73, v49);
  sub_100017D5C(v50, v51);
  Data.append(_:)();
  sub_100016590(v50, v51);
  v52 = *v71;
  v53 = v71[1];
  sub_100017D5C(*v42, v42[1]);
  Data.append(_:)();
  sub_100016590(v52, v53);
  v54 = v71[2];
  v55 = v71[3];
  sub_100017D5C(v42[2], v42[3]);
  Data.append(_:)();
  sub_100016590(v54, v55);
  v56 = v72[26];
  v57 = v72[27];
  sub_100017D5C(v56, v57);
  Data.append(_:)();
  sub_100016590(v56, v57);
  v58 = v72[2];
  v59 = v72[3];
  sub_100017D5C(v58, v59);
  Data.append(_:)();
  sub_100016590(v58, v59);
  v60 = v71[6];
  v61 = v71[7];
  sub_100017D5C(v60, v61);
  Data.append(_:)();
  sub_100016590(v60, v61);
  static os_log_type_t.debug.getter();
  v62 = swift_allocObject();
  *(v62 + 16) = xmmword_101385D80;
  v63 = v73;
  v64 = v74;
  v65 = Data.hexString.getter();
  *(v62 + 56) = &type metadata for String;
  *(v62 + 64) = v70;
  *(v62 + 32) = v65;
  *(v62 + 40) = v66;
  os_log(_:dso:log:_:_:)();

  sub_100017D5C(v63, v64);
  sub_100016590(v63, v64);
  sub_100007BAC(v78);
  sub_100007BAC(v75);
  return v63;
}

uint64_t sub_10093A184(const void *a1, uint64_t a2)
{
  v78[3] = &type metadata for AirPodsPairingCheckData;
  v78[4] = &off_10163E108;
  v78[0] = swift_allocObject();
  v4 = v78[0];
  memcpy((v78[0] + 16), a1, 0x140uLL);
  v76 = type metadata accessor for AirPodsPairingLockCheckResponse();
  v77 = &off_10165E738;
  v71 = sub_1000280DC(v75);
  sub_10093C940(a2, v71, type metadata accessor for AirPodsPairingLockCheckResponse);
  sub_1008372F4(a1, &v73);
  static os_log_type_t.debug.getter();
  if (qword_1016950C8 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_101385D80;
  v69 = sub_1000035D0(v78, &type metadata for AirPodsPairingCheckData);
  v72 = v4;
  v6 = *(v4 + 256);
  v7 = *(v4 + 264);
  sub_100017D5C(v6, v7);
  v8 = Data.hexString.getter();
  v10 = v9;
  sub_100016590(v6, v7);
  *(v5 + 56) = &type metadata for String;
  v70 = sub_100008C00();
  *(v5 + 64) = v70;
  *(v5 + 32) = v8;
  *(v5 + 40) = v10;
  os_log(_:dso:log:_:_:)();

  static os_log_type_t.debug.getter();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_101385D80;
  v68 = sub_1000035D0(v75, v76);
  v12 = v71;
  v14 = v71[4];
  v13 = v71[5];
  sub_100017D5C(v14, v13);
  v15 = Data.hexString.getter();
  v17 = v16;
  sub_100016590(v14, v13);
  *(v11 + 56) = &type metadata for String;
  *(v11 + 64) = v70;
  *(v11 + 32) = v15;
  *(v11 + 40) = v17;
  os_log(_:dso:log:_:_:)();

  static os_log_type_t.debug.getter();
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_101385D80;
  v19 = *v71;
  v20 = v71[1];
  sub_100017D5C(*v12, v12[1]);
  v21 = Data.hexString.getter();
  v23 = v22;
  sub_100016590(v19, v20);
  *(v18 + 56) = &type metadata for String;
  *(v18 + 64) = v70;
  *(v18 + 32) = v21;
  *(v18 + 40) = v23;
  os_log(_:dso:log:_:_:)();

  static os_log_type_t.debug.getter();
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_101385D80;
  v25 = v71[2];
  v26 = v71[3];
  sub_100017D5C(v12[2], v12[3]);
  v27 = Data.hexString.getter();
  v29 = v28;
  sub_100016590(v25, v26);
  *(v24 + 56) = &type metadata for String;
  *(v24 + 64) = v70;
  *(v24 + 32) = v27;
  *(v24 + 40) = v29;
  os_log(_:dso:log:_:_:)();

  static os_log_type_t.debug.getter();
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_101385D80;
  v31 = v72[26];
  v32 = v72[27];
  sub_100017D5C(v31, v32);
  v33 = Data.hexString.getter();
  v35 = v34;
  sub_100016590(v31, v32);
  *(v30 + 56) = &type metadata for String;
  *(v30 + 64) = v70;
  *(v30 + 32) = v33;
  *(v30 + 40) = v35;
  os_log(_:dso:log:_:_:)();

  static os_log_type_t.debug.getter();
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_101385D80;
  v37 = v72[2];
  v38 = v72[3];
  sub_100017D5C(v37, v38);
  v39 = Data.hexString.getter();
  v41 = v40;
  sub_100016590(v37, v38);
  v42 = v71;
  *(v36 + 56) = &type metadata for String;
  *(v36 + 64) = v70;
  *(v36 + 32) = v39;
  *(v36 + 40) = v41;
  os_log(_:dso:log:_:_:)();

  static os_log_type_t.debug.getter();
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_101385D80;
  v44 = v71[6];
  v45 = v71[7];
  sub_100017D5C(v42[6], v42[7]);
  v46 = Data.hexString.getter();
  v48 = v47;
  sub_100016590(v44, v45);
  *(v43 + 56) = &type metadata for String;
  *(v43 + 64) = v70;
  *(v43 + 32) = v46;
  *(v43 + 40) = v48;
  os_log(_:dso:log:_:_:)();

  v49 = v69[31];
  v73 = v69[30];
  v74 = v49;
  v50 = v68[4];
  v51 = v68[5];
  sub_100017D5C(v73, v49);
  sub_100017D5C(v50, v51);
  Data.append(_:)();
  sub_100016590(v50, v51);
  v52 = *v71;
  v53 = v71[1];
  sub_100017D5C(*v42, v42[1]);
  Data.append(_:)();
  sub_100016590(v52, v53);
  v54 = v71[2];
  v55 = v71[3];
  sub_100017D5C(v42[2], v42[3]);
  Data.append(_:)();
  sub_100016590(v54, v55);
  v56 = v72[26];
  v57 = v72[27];
  sub_100017D5C(v56, v57);
  Data.append(_:)();
  sub_100016590(v56, v57);
  v58 = v72[2];
  v59 = v72[3];
  sub_100017D5C(v58, v59);
  Data.append(_:)();
  sub_100016590(v58, v59);
  v60 = v71[6];
  v61 = v71[7];
  sub_100017D5C(v60, v61);
  Data.append(_:)();
  sub_100016590(v60, v61);
  static os_log_type_t.debug.getter();
  v62 = swift_allocObject();
  *(v62 + 16) = xmmword_101385D80;
  v63 = v73;
  v64 = v74;
  v65 = Data.hexString.getter();
  *(v62 + 56) = &type metadata for String;
  *(v62 + 64) = v70;
  *(v62 + 32) = v65;
  *(v62 + 40) = v66;
  os_log(_:dso:log:_:_:)();

  sub_100017D5C(v63, v64);
  sub_100016590(v63, v64);
  sub_100007BAC(v78);
  sub_100007BAC(v75);
  return v63;
}