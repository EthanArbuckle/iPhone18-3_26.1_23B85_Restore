unint64_t sub_100165BE4()
{
  result = qword_10058EC50;
  if (!qword_10058EC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058EC50);
  }

  return result;
}

unint64_t sub_100165C38()
{
  result = qword_10058EC60;
  if (!qword_10058EC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058EC60);
  }

  return result;
}

unint64_t sub_100165C8C()
{
  result = qword_10058EC68;
  if (!qword_10058EC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058EC68);
  }

  return result;
}

unint64_t sub_100165CE0()
{
  result = qword_10058EC70;
  if (!qword_10058EC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058EC70);
  }

  return result;
}

unint64_t sub_100165D34()
{
  result = qword_10058EC78;
  if (!qword_10058EC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058EC78);
  }

  return result;
}

unint64_t sub_100165D88()
{
  result = qword_10058EC80;
  if (!qword_10058EC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058EC80);
  }

  return result;
}

unint64_t sub_100165DDC()
{
  result = qword_10058EC98;
  if (!qword_10058EC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058EC98);
  }

  return result;
}

uint64_t sub_100165E30(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_10005DD04(&qword_10058D358, &unk_100486960);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100165E9C()
{
  result = qword_10058ED30;
  if (!qword_10058ED30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058ED30);
  }

  return result;
}

unint64_t sub_100165EF0()
{
  result = qword_10058ED38;
  if (!qword_10058ED38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058ED38);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AWDLActionFrame.SynchronizationParameter.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xED)
  {
    goto LABEL_17;
  }

  if (a2 + 19 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 19) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 19;
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

      return (*a1 | (v4 << 8)) - 19;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 19;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v8 = v6 - 20;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AWDLActionFrame.SynchronizationParameter.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xED)
  {
    v4 = 0;
  }

  if (a2 > 0xEC)
  {
    v5 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
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
    *result = a2 + 19;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for IEEE80211Frame.Management.ActionFrame.Category(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100166178()
{
  result = qword_10058ED60;
  if (!qword_10058ED60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058ED60);
  }

  return result;
}

unint64_t sub_1001661D0()
{
  result = qword_10058ED68;
  if (!qword_10058ED68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058ED68);
  }

  return result;
}

unint64_t sub_100166228()
{
  result = qword_10058ED70;
  if (!qword_10058ED70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058ED70);
  }

  return result;
}

unint64_t sub_100166280()
{
  result = qword_10058ED78;
  if (!qword_10058ED78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058ED78);
  }

  return result;
}

unint64_t sub_1001662D8()
{
  result = qword_10058ED80;
  if (!qword_10058ED80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058ED80);
  }

  return result;
}

unint64_t sub_100166334()
{
  result = qword_10058ED90;
  if (!qword_10058ED90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058ED90);
  }

  return result;
}

unint64_t sub_10016638C()
{
  result = qword_10058ED98;
  if (!qword_10058ED98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058ED98);
  }

  return result;
}

unint64_t sub_1001663E4()
{
  result = qword_10058EDA0;
  if (!qword_10058EDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058EDA0);
  }

  return result;
}

unint64_t sub_10016643C()
{
  result = qword_10058EDA8;
  if (!qword_10058EDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058EDA8);
  }

  return result;
}

unint64_t sub_100166494()
{
  result = qword_10058EDB0;
  if (!qword_10058EDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058EDB0);
  }

  return result;
}

CoreP2P::NANAwakeDWInterval_optional __swiftcall NANAwakeDWInterval.init(numberString:)(Swift::String numberString)
{
  object = numberString._object;
  countAndFlagsBits = numberString._countAndFlagsBits;
  if (numberString._countAndFlagsBits == 48 && numberString._object == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (countAndFlagsBits == 49 && object == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (countAndFlagsBits == 52 && object == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (countAndFlagsBits == 56 && object == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (countAndFlagsBits == 13873 && object == 0xE200000000000000)
  {

    return 4;
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v4)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

unint64_t sub_100166778@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s7CoreP2P18NANAwakeDWIntervalO8rawValueACSgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

void sub_1001667A8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1869768058;
  v5 = 0xE400000000000000;
  v6 = 1920298854;
  v7 = 0xE500000000000000;
  v8 = 0x7468676965;
  if (v2 != 3)
  {
    v8 = 0x6E656574786973;
    v7 = 0xE700000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 6647407;
    v3 = 0xE300000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

Swift::Int sub_10016682C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1001668F4()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_1001669A8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t NANAwakeDWInterval.description.getter(unsigned __int8 a1)
{
  v1 = 1869768058;
  v2 = 1920298854;
  v3 = 0x7468676965;
  if (a1 != 3)
  {
    v3 = 0x6E656574786973;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 6647407;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t NANAwakeDWInterval.customMirror.getter(char a1)
{
  v2 = type metadata accessor for Mirror.AncestorRepresentation();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(*(sub_10005DC58(&unk_10058FC10, &qword_100484170) - 8) + 64);
  __chkstk_darwin();
  v9 = &v14[-v8];
  v14[15] = a1;
  sub_10005DC58(qword_10058C850, &unk_100486F10);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100480F40;
  *(v10 + 32) = 0x6C61767265746E69;
  *(v10 + 40) = 0xE800000000000000;
  v11 = qword_10048DEA8[a1];
  *(v10 + 72) = &type metadata for NANTimeUnit;
  *(v10 + 48) = v11;
  v12 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  (*(v3 + 104))(v6, enum case for Mirror.AncestorRepresentation.generated(_:), v2);
  return Mirror.init<A>(_:children:displayStyle:ancestorRepresentation:)();
}

uint64_t sub_100166D94()
{
  v1 = *v0;
  v2 = 1869768058;
  v3 = 1920298854;
  v4 = 0x7468676965;
  if (v1 != 3)
  {
    v4 = 0x6E656574786973;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 6647407;
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

uint64_t static NANAwakeDWPeriods.__derived_struct_equals(_:_:)(__int16 a1, __int16 a2)
{
  v2 = HIBYTE(a2);
  v3 = HIBYTE(a1);
  v4 = 1869768058;
  v5 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v6 = 6647407;
    }

    else
    {
      v6 = 1869768058;
    }

    if (v5)
    {
      v7 = 0xE300000000000000;
    }

    else
    {
      v7 = 0xE400000000000000;
    }
  }

  else if (a1 == 2)
  {
    v7 = 0xE400000000000000;
    v6 = 1920298854;
  }

  else
  {
    if (a1 == 3)
    {
      v6 = 0x7468676965;
    }

    else
    {
      v6 = 0x6E656574786973;
    }

    if (v5 == 3)
    {
      v7 = 0xE500000000000000;
    }

    else
    {
      v7 = 0xE700000000000000;
    }
  }

  v8 = 0xE400000000000000;
  v9 = 0xE400000000000000;
  v10 = 1920298854;
  v11 = 0xE500000000000000;
  v12 = 0x7468676965;
  if (a2 != 3)
  {
    v12 = 0x6E656574786973;
    v11 = 0xE700000000000000;
  }

  if (a2 != 2)
  {
    v10 = v12;
    v9 = v11;
  }

  if (a2)
  {
    v4 = 6647407;
    v8 = 0xE300000000000000;
  }

  if (a2 <= 1u)
  {
    v13 = v4;
  }

  else
  {
    v13 = v10;
  }

  if (a2 <= 1u)
  {
    v14 = v8;
  }

  else
  {
    v14 = v9;
  }

  if (v6 == v13 && v7 == v14)
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

  return sub_10003051C(v3, v2);
}

uint64_t NANAwakeDWPeriods.hash(into:)()
{
  String.hash(into:)();

  String.hash(into:)();
}

Swift::Int NANAwakeDWPeriods.hashValue.getter()
{
  Hasher.init(_seed:)();
  NANAwakeDWPeriods.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100167150()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  NANAwakeDWPeriods.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1001671A0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  NANAwakeDWPeriods.hash(into:)();
  return Hasher._finalize()();
}

unint64_t _s7CoreP2P18NANAwakeDWIntervalO8rawValueACSgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100554F38, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t _s7CoreP2P18NANAwakeDWIntervalO8intervalACSgAA11NANTimeUnitV_tcfC_0(uint64_t result)
{
  if (result > 3)
  {
    switch(result)
    {
      case 4:
        return 2;
      case 8:
        return 3;
      case 16:
        return 4;
    }

    return 5;
  }

  if (result > 1)
  {
    return 5;
  }

  return result;
}

unint64_t sub_100167284()
{
  result = qword_10058EDC0;
  if (!qword_10058EDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058EDC0);
  }

  return result;
}

unint64_t sub_1001672DC()
{
  result = qword_10058EDC8;
  if (!qword_10058EDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058EDC8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NANAwakeDWPeriods(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 65284 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65284 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65284;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65284;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65284;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for NANAwakeDWPeriods(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65284 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65284 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 16) + 1;
    *result = a2 - 252;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100167494()
{
  result = qword_10058EDD0;
  if (!qword_10058EDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058EDD0);
  }

  return result;
}

uint64_t sub_1001674EC(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = a1[5];
  swift_unownedRetain();
  v9 = a1[2];
  v8 = a1[3];
  swift_unownedRetainStrong();
  swift_bridgeObjectRetain_n();
  AppleDevice.startMonitoringEvents(on:eventHandler:)(v9, v8, a2, a3);

  if (v3)
  {
    swift_unownedRelease();
  }

  return v7;
}

uint64_t sub_1001675B4(uint64_t a1)
{
  v3 = type metadata accessor for Mirror.AncestorRepresentation();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*(sub_10005DC58(&unk_10058FC10, &qword_100484170) - 8) + 64);
  __chkstk_darwin();
  v10 = v16 - v9;
  v11 = *(*(a1 - 8) + 64);
  __chkstk_darwin();
  (*(v13 + 16))(v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v1, a1);
  v16[1] = _swiftEmptyArrayStorage;
  v14 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v14 - 8) + 56))(v10, 1, 1, v14);
  sub_10005DC58(&qword_10058C7A0, &qword_100481FD0);
  sub_1000B9D64();
  (*(v4 + 104))(v7, enum case for Mirror.AncestorRepresentation.generated(_:), v3);
  return Mirror.init<A, B>(_:children:displayStyle:ancestorRepresentation:)();
}

uint64_t sub_100167804@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for Mirror.AncestorRepresentation.generated(_:);
  v3 = type metadata accessor for Mirror.AncestorRepresentation();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_100167878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v5;
  swift_beginAccess();
  if (v4[8])
  {
    sub_10000B02C();
    swift_allocError();
    *v10 = xmmword_10048DED0;
    *(v10 + 16) = 1;
    return swift_willThrow();
  }

  else
  {
    v12 = swift_allocObject();
    *(v12 + 16) = a1;
    *(v12 + 24) = a2;

    result = sub_1001674EC(v4, a4, v12);
    if (!v7)
    {
      v15 = v4[6];
      v16 = v4[7];
      v17 = v4[8];
      v4[6] = result;
      v4[7] = v13;
      v4[8] = v14;
      return sub_100119F14(v15, v16, v17);
    }
  }

  return result;
}

uint64_t DeviceDriver.startMonitoringEvents(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a1;
  v37 = a2;
  v7 = type metadata accessor for Logger();
  v40 = *(v7 - 8);
  v41 = v7;
  v8 = *(v40 + 64);
  __chkstk_darwin();
  v38 = v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  v42 = v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = type metadata accessor for Optional();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin();
  v35 = v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v19 = v33 - v18;
  v20 = v4;
  (*(a4 + 64))(a3, a4);
  v34 = *(AssociatedTypeWitness - 8);
  v21 = (*(v34 + 48))(v19, 1, AssociatedTypeWitness);
  (*(v15 + 8))(v19, v14);
  if (v21 == 1)
  {
    v22 = v20;
    (*(v10 + 16))(v42, v20, a3);
    v23 = *(*(a4 + 8) + 8);
    v24 = v38;
    v33[1] = v22;
    v23(a3);
    v25 = swift_allocObject();
    v26 = v37;
    *(v25 + 16) = v36;
    *(v25 + 24) = v26;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v28 = *(AssociatedConformanceWitness + 32);

    v29 = v35;
    v30 = v39;
    v28(v42, sub_1000125A4, v25, AssociatedTypeWitness, AssociatedConformanceWitness);
    if (v30)
    {
      return (*(v40 + 8))(v24, v41);
    }

    else
    {
      (*(v40 + 8))(v24, v41);
      (*(v34 + 56))(v29, 0, 1, AssociatedTypeWitness);
      return (*(a4 + 72))(v29, a3, a4);
    }
  }

  else
  {
    sub_10000B02C();
    swift_allocError();
    *v32 = xmmword_10048DED0;
    *(v32 + 16) = 1;
    return swift_willThrow();
  }
}

uint64_t DeviceDriver.init(device:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v30 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v11 = &v28 - v10;
  v12 = type metadata accessor for Optional();
  v29 = *(v12 - 8);
  v13 = *(v29 + 64);
  __chkstk_darwin();
  v15 = &v28 - v14;
  v16 = sub_1002AB05C();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v18 = (*(AssociatedConformanceWitness + 88))(0, 0, 0xE000000000000000, v16 & 0xFFFFFFFFFFFCLL | 2, AssociatedTypeWitness, AssociatedConformanceWitness);
  if (v19)
  {
    v20 = v18;
    v21 = v19;
    (*(v8 + 16))(v11, a1, AssociatedTypeWitness);
    (*(a3 + 48))(v11, 0, v20, v21, a2, a3);
    (*(v8 + 8))(a1, AssociatedTypeWitness);
    v22 = *(a2 - 8);
    v23 = v22;
    if (!(*(v22 + 48))(v15, 1, a2))
    {
      v26 = v30;
      (*(v22 + 32))(v30, v15, a2);
      v25 = v26;
      v24 = 0;
      return (*(v23 + 56))(v25, v24, 1, a2);
    }

    (*(v29 + 8))(v15, v12);
  }

  else
  {
    (*(v8 + 8))(a1, AssociatedTypeWitness);
    v22 = *(a2 - 8);
  }

  v23 = v22;
  v24 = 1;
  v25 = v30;
  return (*(v23 + 56))(v25, v24, 1, a2);
}

uint64_t NANCipherSuite.description.getter(unsigned __int8 a1)
{
  v1 = 0x312D4D43432D4B53;
  v2 = 0x2D4E5341502D4B50;
  if (a1 != 6)
  {
    v2 = 0x2D4E5341502D4B50;
  }

  v3 = 0x504D43432D4B5447;
  if (a1 != 4)
  {
    v3 = 0x504D43472D4B5447;
  }

  if (a1 <= 5u)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 0x322D4D43472D4B53;
  }

  if (a1 <= 1u)
  {
    v4 = v1;
  }

  else
  {
    v4 = 0x2D484457322D4B50;
  }

  if (a1 <= 3u)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_10016826C@<X0>(char *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s7CoreP2P14NANCipherSuiteO8rawValueACSgs5UInt8V_tcfC_0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100168358()
{
  v1 = *v0;
  v2 = 0x312D4D43432D4B53;
  v3 = 0x2D4E5341502D4B50;
  if (v1 != 6)
  {
    v3 = 0x2D4E5341502D4B50;
  }

  v4 = 0x504D43432D4B5447;
  if (v1 != 4)
  {
    v4 = 0x504D43472D4B5447;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x322D4D43472D4B53;
  }

  if (*v0 <= 1u)
  {
    v5 = v2;
  }

  else
  {
    v5 = 0x2D484457322D4B50;
  }

  *v0;
  if (*v0 <= 3u)
  {
    return v5;
  }

  else
  {
    return v3;
  }
}

BOOL static NANCipherSuite.< infix(_:_:)(unsigned __int8 a1, char a2)
{
  if (a1 > 3u)
  {
    if (a1 != 4)
    {
      return a1 == 6 && a2 == 7;
    }

    if (a2 == 5)
    {
      return 1;
    }
  }

  else
  {
    if (a1)
    {
      return a1 == 2 && a2 == 3;
    }

    if (a2 == 1)
    {
      return 1;
    }
  }

  return 0;
}

BOOL static NANCipherSuite.> infix(_:_:)(char a1, unsigned __int8 a2)
{
  if (a2 > 3u)
  {
    if (a2 != 4)
    {
      return a2 == 6 && a1 == 7;
    }

    if (a1 == 5)
    {
      return 1;
    }
  }

  else
  {
    if (a2)
    {
      return a2 == 2 && a1 == 3;
    }

    if (a1 == 1)
    {
      return 1;
    }
  }

  return 0;
}

BOOL sub_100168570(_BYTE *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 > 3)
  {
    if (v2 != 4)
    {
      return v2 == 6 && v3 == 7;
    }

    if (v3 == 5)
    {
      return 1;
    }
  }

  else
  {
    if (*a1)
    {
      return v2 == 2 && v3 == 3;
    }

    if (v3 == 1)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1001685CC(unsigned __int8 *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v3 > 3)
  {
    if (v3 != 4)
    {
      return v3 != 6 || v2 != 7;
    }

    if (v2 == 5)
    {
      return 0;
    }
  }

  else
  {
    if (*a2)
    {
      return v3 != 2 || v2 != 3;
    }

    if (v2 == 1)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_100168628(_BYTE *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 > 3)
  {
    if (v2 != 4)
    {
      return v2 != 6 || v3 != 7;
    }

    if (v3 == 5)
    {
      return 0;
    }
  }

  else
  {
    if (*a1)
    {
      return v2 != 2 || v3 != 3;
    }

    if (v3 == 1)
    {
      return 0;
    }
  }

  return 1;
}

BOOL sub_100168684(unsigned __int8 *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v3 > 3)
  {
    if (v3 != 4)
    {
      return v3 == 6 && v2 == 7;
    }

    if (v2 == 5)
    {
      return 1;
    }
  }

  else
  {
    if (*a2)
    {
      return v3 == 2 && v2 == 3;
    }

    if (v2 == 1)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_100168738(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 8;
  }

  result = *(a1 + 32);
  v4 = v1 - 1;
  if (v4)
  {
    v5 = (a1 + 33);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if (v7 == 5)
      {
        v8 = 5;
      }

      else
      {
        v8 = 4;
      }

      if (v6 == 7)
      {
        v9 = 7;
      }

      else
      {
        v9 = 6;
      }

      if (result != 6)
      {
        v9 = result;
      }

      if (result != 4)
      {
        v8 = v9;
      }

      v10 = v6 == 1;
      if (v6 == 3)
      {
        v11 = 3;
      }

      else
      {
        v11 = 2;
      }

      if (result != 2)
      {
        v11 = result;
      }

      if (!result)
      {
        v11 = v10;
      }

      if (result <= 3u)
      {
        result = v11;
      }

      else
      {
        result = v8;
      }

      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_100168808(uint64_t a1, uint64_t a2)
{
  v5 = *(*(a1 - 8) + 64);
  __chkstk_darwin();
  (*(v7 + 16))(&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
  v8 = *(a2 + 8);
  v9 = Sequence.filter(_:)();
  v10 = sub_100168738(v9);

  return v10;
}

uint64_t NANCipherSuite.init(apiCipherSuite:)(uint64_t a1)
{
  if ((a1 - 1) >= 8)
  {
    return 8;
  }

  else
  {
    return a1 - 1;
  }
}

uint64_t _s7CoreP2P14NANCipherSuiteO8rawValueACSgs5UInt8V_tcfC_0(char a1)
{
  if (((a1 - 1) & 0xF8) != 0)
  {
    return 8;
  }

  else
  {
    return (a1 - 1);
  }
}

unint64_t sub_100168950()
{
  result = qword_100595C30;
  if (!qword_100595C30)
  {
    sub_10005DD04(&unk_100597490, &qword_1004B17B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100595C30);
  }

  return result;
}

unint64_t sub_1001689B4()
{
  result = qword_10058EDD8;
  if (!qword_10058EDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058EDD8);
  }

  return result;
}

unint64_t sub_100168A18()
{
  result = qword_10058EDE0;
  if (!qword_10058EDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058EDE0);
  }

  return result;
}

void *sub_100168A70(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v3)
  {
    sub_1000C06E4(0, v3, 0);
    v5 = a2;
    result = _swiftEmptyArrayStorage;
    v6 = (a1 + 38);
    do
    {
      v7 = *(v6 - 6);
      v8 = *(v6 - 2);
      v9 = *(v6 - 1);
      if (*(v6 - 2))
      {
        if (v8 != 1)
        {
          goto LABEL_22;
        }

        v10 = *(v5 + 12);
        if (*(v5 + 12) << 32 == 0x300000000)
        {
          goto LABEL_22;
        }

        v11 = v10 >> 8;
        if (*(v5 + 8) != v7)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v11 = *(v5 + 5);
        LOBYTE(v10) = *(v5 + 4);
        if (*v5 != v7)
        {
          goto LABEL_22;
        }
      }

      if (v10)
      {
        if (v10 != 1)
        {
          goto LABEL_22;
        }

        v12 = 16;
      }

      else
      {
        v12 = 4;
      }

      if (*(v6 - 2))
      {
        v13 = 16;
      }

      else
      {
        v13 = 4;
      }

      if (v12 != v13)
      {
LABEL_22:
        v15 = 0;
        goto LABEL_23;
      }

      if (v11 <= 3)
      {
        if (v11 == 2)
        {
          v14 = v9 == 2;
LABEL_33:
          v15 = v14;
          goto LABEL_23;
        }

        if (v11 == 3)
        {
          v14 = v9 == 3;
          goto LABEL_33;
        }
      }

      else
      {
        switch(v11)
        {
          case 4:
            v14 = v9 == 4;
            goto LABEL_33;
          case 5:
            v14 = v9 == 5;
            goto LABEL_33;
          case 6:
            v14 = v9 == 6;
            goto LABEL_33;
        }
      }

      v20 = v11 ^ v9 ^ 1;
      if ((v9 - 2) >= 5)
      {
        v15 = v20;
      }

      else
      {
        v15 = 0;
      }

LABEL_23:
      v16 = *v6;
      v23 = result;
      v18 = result[2];
      v17 = result[3];
      if (v18 >= v17 >> 1)
      {
        v21 = *(v6 - 1);
        sub_1000C06E4((v17 > 1), v18 + 1, 1);
        LOBYTE(v9) = v21;
        v5 = a2;
        result = v23;
      }

      result[2] = v18 + 1;
      v19 = &result[v18];
      *(v19 + 8) = v7;
      v6 += 8;
      *(v19 + 36) = v8;
      *(v19 + 37) = v9;
      *(v19 + 38) = v16;
      *(v19 + 39) = v15 & 1;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_100168C74(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  v39 = *(a1 + 16);
  sub_1000C06E4(0, v2, 0);
  v4 = a1 + 64;
  v5 = -1 << *(a1 + 32);
  result = _HashTable.startBucket.getter();
  v7 = a2;
  v8 = v39;
  v9 = 0;
  v10 = *(a1 + 36);
  v40 = v10;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v12 = result >> 6;
    v13 = 1 << result;
    if ((*(v4 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_53;
    }

    if (v10 != *(a1 + 36))
    {
      goto LABEL_54;
    }

    v14 = *(a1 + 48) + 8 * result;
    v15 = *v14;
    v16 = *(v14 + 4);
    v17 = *(v14 + 5);
    v18 = *(*(a1 + 56) + result);
    if (*(v14 + 4))
    {
      if (v16 != 1)
      {
        goto LABEL_38;
      }

      v19 = *(v7 + 12);
      if (*(v7 + 12) << 32 == 0x300000000)
      {
        goto LABEL_38;
      }

      v20 = v19 >> 8;
      if (*(v7 + 8) != v15)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v20 = *(v7 + 5);
      LOBYTE(v19) = *(v7 + 4);
      if (*v7 != v15)
      {
        goto LABEL_38;
      }
    }

    if (v19)
    {
      if (v19 != 1)
      {
        goto LABEL_38;
      }

      v21 = 16;
    }

    else
    {
      v21 = 4;
    }

    if (v16)
    {
      v22 = 16;
    }

    else
    {
      v22 = 4;
    }

    if (v21 != v22)
    {
      goto LABEL_38;
    }

    if (v20 <= 3)
    {
      if (v20 == 2)
      {
        v23 = v17 == 2;
LABEL_34:
        v24 = v23;
        goto LABEL_39;
      }

      if (v20 == 3)
      {
        v23 = v17 == 3;
        goto LABEL_34;
      }
    }

    else
    {
      switch(v20)
      {
        case 4:
          v23 = v17 == 4;
          goto LABEL_34;
        case 5:
          v23 = v17 == 5;
          goto LABEL_34;
        case 6:
          v23 = v17 == 6;
          goto LABEL_34;
      }
    }

    if ((v17 - 2) < 5)
    {
LABEL_38:
      v24 = 0;
      goto LABEL_39;
    }

    v24 = v20 ^ v17 ^ 1;
LABEL_39:
    v26 = _swiftEmptyArrayStorage[2];
    v25 = _swiftEmptyArrayStorage[3];
    if (v26 >= v25 >> 1)
    {
      v37 = result;
      v35 = *(*(a1 + 56) + result);
      v36 = v15;
      sub_1000C06E4((v25 > 1), v26 + 1, 1);
      v18 = v35;
      v15 = v36;
      v8 = v39;
      v10 = v40;
      v7 = a2;
      result = v37;
    }

    _swiftEmptyArrayStorage[2] = v26 + 1;
    v27 = &_swiftEmptyArrayStorage[v26];
    *(v27 + 8) = v15;
    *(v27 + 36) = v16;
    *(v27 + 37) = v17;
    *(v27 + 38) = v18;
    *(v27 + 39) = v24 & 1;
    v11 = 1 << *(a1 + 32);
    if (result >= v11)
    {
      goto LABEL_55;
    }

    v4 = a1 + 64;
    v28 = *(a1 + 64 + 8 * v12);
    if ((v28 & v13) == 0)
    {
      goto LABEL_56;
    }

    if (v10 != *(a1 + 36))
    {
      goto LABEL_57;
    }

    v29 = v28 & (-2 << (result & 0x3F));
    if (v29)
    {
      v11 = __clz(__rbit64(v29)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v30 = v12 << 6;
      v31 = v12 + 1;
      v32 = (a1 + 72 + 8 * v12);
      while (v31 < (v11 + 63) >> 6)
      {
        v34 = *v32++;
        v33 = v34;
        v30 += 64;
        ++v31;
        if (v34)
        {
          sub_10002BEB8(result, v40, 0);
          v8 = v39;
          v10 = v40;
          v7 = a2;
          v11 = __clz(__rbit64(v33)) + v30;
          goto LABEL_4;
        }
      }

      sub_10002BEB8(result, v40, 0);
      v8 = v39;
      v10 = v40;
      v7 = a2;
    }

LABEL_4:
    ++v9;
    result = v11;
    if (v9 == v8)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
  return result;
}

unint64_t sub_100169044@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s7CoreP2P14RadioResourcesO8PriorityO8rawValueAESgSi_tcfC_0(*a1);
  *a2 = result;
  return result;
}

uint64_t RadioResources.SymbolicChannel.Resolver.socialChannel(for:)(char a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    if (a1 == 1)
    {
      a2 = a3;
    }

    else
    {
      a2 = 0x300000000;
    }
  }

  return a2 & 0xFFFFFFFFFFFFLL;
}

unint64_t RadioResources.PreferredChannel.init(channel:usagePreference:isEqualToSocial:)(uint64_t a1, unsigned __int8 a2, char a3)
{
  v3 = 0x100000000000000;
  if ((a3 & 1) == 0)
  {
    v3 = 0;
  }

  return v3 & 0xFFFF000000000000 | (a2 << 48) | a1 & 0xFFFFFFFFFFFFLL;
}

uint64_t RadioResources.SymbolicChannel.Resolver.primaryChannel.setter(uint64_t a1)
{
  *v1 = a1;
  *(v1 + 4) = BYTE4(a1);
  *(v1 + 5) = BYTE5(a1);
  v2 = *(v1 + 24);

  v4 = sub_100168A70(v3, v1);
  result = swift_bridgeObjectRelease_n();
  *(v1 + 24) = v4;
  return result;
}

uint64_t RadioResources.SymbolicChannel.Resolver.secondaryChannel.setter(uint64_t a1)
{
  *(v1 + 8) = a1;
  *(v1 + 12) = WORD2(a1);
  v2 = *(v1 + 24);

  v4 = sub_100168A70(v3, v1);
  result = swift_bridgeObjectRelease_n();
  *(v1 + 24) = v4;
  return result;
}

uint64_t sub_1001691E0(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    v2 = *result;
    v3 = *(*result + 24);

    v5 = sub_100168A70(v4, v2);
    result = swift_bridgeObjectRelease_n();
    *(v2 + 24) = v5;
  }

  return result;
}

uint64_t RadioResources.SymbolicChannel.Resolver.infraChannel.setter(uint64_t result)
{
  *(v1 + 16) = result;
  *(v1 + 20) = WORD2(result);
  return result;
}

uint64_t RadioResources.SymbolicChannel.Resolver.preferredChannels.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

Swift::Void __swiftcall RadioResources.SymbolicChannel.Resolver.update(preferredChannels:)(Swift::OpaquePointer preferredChannels)
{
  v4 = sub_100168C74(preferredChannels._rawValue, v1);

  sub_100169D2C(&v4);

  v2 = v4;
  v3 = *(v1 + 24);

  *(v1 + 24) = v2;
}

void RadioResources.SymbolicChannel.hash(into:)(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
    Hasher._combine(_:)(3uLL);
    v4 = a2;
    goto LABEL_21;
  }

  if (a3 != 1)
  {
    if (a2 <= 1)
    {
      if (a2)
      {
LABEL_16:
        v4 = 1;
        goto LABEL_21;
      }

LABEL_17:
      v4 = 0;
      goto LABEL_21;
    }

    if (a2 != 2)
    {
LABEL_18:
      v4 = 5;
      goto LABEL_21;
    }

    v4 = 2;
LABEL_21:
    Hasher._combine(_:)(v4);
    return;
  }

  Hasher._combine(_:)(4uLL);
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(0x801004u >> ((a2 >> 29) & 0xF8));
  if (BYTE5(a2) > 3u)
  {
    if (BYTE5(a2) == 4)
    {
      v4 = 3;
      goto LABEL_21;
    }

    if (BYTE5(a2) == 5)
    {
      v4 = 4;
      goto LABEL_21;
    }

    if (BYTE5(a2) != 6)
    {
      goto LABEL_22;
    }

    goto LABEL_18;
  }

  if (BYTE5(a2) == 2)
  {
    goto LABEL_17;
  }

  if (BYTE5(a2) == 3)
  {
    goto LABEL_16;
  }

LABEL_22:
  Hasher._combine(_:)(2uLL);
  Hasher._combine(_:)(BYTE5(a2) & 1);
}

Swift::Int RadioResources.SymbolicChannel.hashValue.getter(uint64_t a1, char a2)
{
  Hasher.init(_seed:)();
  RadioResources.SymbolicChannel.hash(into:)(v5, a1, a2);
  return Hasher._finalize()();
}

Swift::Int sub_100169468()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  RadioResources.SymbolicChannel.hash(into:)(v4, v1, v2);
  return Hasher._finalize()();
}

Swift::Int sub_1001694C4()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  RadioResources.SymbolicChannel.hash(into:)(v4, v1, v2);
  return Hasher._finalize()();
}

void RadioResources.PreferredChannel.hash(into:)(int a1, unint64_t a2)
{
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(0x801004u >> ((a2 >> 29) & 0xF8));
  if (BYTE5(a2) <= 3u)
  {
    if (BYTE5(a2) == 2)
    {
      v3 = 0;
      goto LABEL_12;
    }

    if (BYTE5(a2) == 3)
    {
      v3 = 1;
      goto LABEL_12;
    }

LABEL_14:
    Hasher._combine(_:)(2uLL);
    Hasher._combine(_:)(BYTE5(a2) & 1);
    goto LABEL_13;
  }

  if (BYTE5(a2) == 4)
  {
    v3 = 3;
    goto LABEL_12;
  }

  if (BYTE5(a2) == 5)
  {
    v3 = 4;
    goto LABEL_12;
  }

  if (BYTE5(a2) != 6)
  {
    goto LABEL_14;
  }

  v3 = 5;
LABEL_12:
  Hasher._combine(_:)(v3);
LABEL_13:
  Hasher._combine(_:)(BYTE6(a2));
  Hasher._combine(_:)(HIBYTE(a2) & 1);
}

Swift::Int RadioResources.PreferredChannel.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  RadioResources.PreferredChannel.hash(into:)(&v3, a1 & 0x1FFFFFFFFFFFFFFLL);
  return Hasher._finalize()();
}

Swift::Int sub_100169654()
{
  v1 = *v0;
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  Hasher.init(_seed:)();
  v6 = 0x100000000000000;
  if (!v5)
  {
    v6 = 0;
  }

  RadioResources.PreferredChannel.hash(into:)(&v8, v6 | (v4 << 48) | (v3 << 40) | (v2 << 32) | v1);
  return Hasher._finalize()();
}

void sub_1001696D4(int a1)
{
  v2 = 0x100000000000000;
  if (!v1[7])
  {
    v2 = 0;
  }

  RadioResources.PreferredChannel.hash(into:)(a1, v2 | (v1[6] << 48) | (v1[5] << 40) | (v1[4] << 32) | *v1);
}

Swift::Int sub_100169708()
{
  v1 = *v0;
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  Hasher.init(_seed:)();
  v6 = 0x100000000000000;
  if (!v5)
  {
    v6 = 0;
  }

  RadioResources.PreferredChannel.hash(into:)(&v8, v6 | (v4 << 48) | (v3 << 40) | (v2 << 32) | v1);
  return Hasher._finalize()();
}

uint64_t sub_100169784(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  if (a1[7])
  {
    v6 = 0x100000000000000;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6 | (v5 << 48) | (v4 << 40) | (v3 << 32);
  if (a2[7])
  {
    v8 = 0x100000000000000;
  }

  else
  {
    v8 = 0;
  }

  return sub_10016AF58(v7 | v2, v8 | (a2[6] << 48) | (a2[5] << 40) | (a2[4] << 32) | *a2);
}

uint64_t RadioSchedule.set(_:to:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  v9[2] = a7;
  v9[3] = a8;
  v9[4] = a1;
  v9[5] = a2;
  v9[6] = a3;
  v9[7] = a4;
  v10 = a5;
  v11 = a6;
  return (*(a8 + 24))(a4, a5, sub_10016B088, v9, a7, a8);
}

uint64_t sub_100169890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7)
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v13 = *(AssociatedConformanceWitness + 32);
  v14 = swift_checkMetadataState();
  return v13(a2, a3, a4, a5, a6, a7, v14, AssociatedConformanceWitness);
}

uint64_t RadioSchedule.reserve(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v7[2] = a5;
  v7[3] = a6;
  v7[4] = a1;
  v7[5] = a2;
  v7[6] = a3;
  v8 = a4;
  return (*(a6 + 24))(3, 2, sub_10016B0C0, v7);
}

uint64_t sub_100169A1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = *(AssociatedConformanceWitness + 24);
  v11 = swift_checkMetadataState();
  return v10(a2, a3, a4, a5, v11, AssociatedConformanceWitness);
}

CoreP2P::RadioResources::Priority __swiftcall RadioSchedule.inflexibleUpgrade(priority:)(CoreP2P::RadioResources::Priority priority)
{
  if ((*(v1 + 56))())
  {
    return priority;
  }

  else
  {
    return 11;
  }
}

uint64_t Optional<A>.update<A>(schedule:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a2 + 16);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(a1);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v12);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18, v20);
  result = (*(v10 + 48))(v18, 1, v9);
  if (result != 1)
  {
    (*(v10 + 32))(v14, v18, v9);
    (*(a4 + 8))(a1, a3, a5, v9, a4);
    return (*(v10 + 8))(v14, v9);
  }

  return result;
}

Swift::Int sub_100169D2C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_10016ADB8(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_100169D98(v5);
  *a1 = v2;
  return result;
}

Swift::Int sub_100169D98(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v5[2] = v2 / 2;
      }

      v7[0] = (v5 + 4);
      v7[1] = (v2 / 2);
      v6 = v5;
      sub_10016A074(v7, v8, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_100169E90(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_100169E90(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 == a2)
  {
    return result;
  }

  v4 = *a4;
  v5 = *a4 + 8 * a3 - 1;
  v6 = result - a3;
LABEL_5:
  v19 = v5;
  v20 = a3;
  v7 = v4 + 8 * a3;
  v8 = *v7;
  v9 = *(v7 + 4);
  v10 = *(v7 + 5);
  v11 = *(v7 + 7);
  LOBYTE(v7) = (v10 - 2) < 5;
  v12 = (0x801004u >> (8 * v9));
  v22 = v7 | v10;
  v21 = v7 | v10 ^ 1;
  v18 = v6;
  while (1)
  {
    v13 = *(v5 - 2);
    v14 = (0x801004u >> (8 * *(v5 - 3)));
    if (v12 == v14)
    {
      if (v11)
      {
        goto LABEL_30;
      }

      if (*v5)
      {
        goto LABEL_4;
      }
    }

    v15 = v12 >= v14 && v8 >= *(v5 - 7);
    if (v15)
    {
      result = sub_10005DC58(&qword_10058DFA0, &qword_100488570);
      if (v13 == 2)
      {
        goto LABEL_4;
      }

      if (v10 != 2)
      {
        if (v13 == 3)
        {
          goto LABEL_4;
        }

        if (v10 != 3)
        {
          if ((v13 - 2) >= 5 && (v13 & 1) == 0)
          {
LABEL_4:
            a3 = v20 + 1;
            v5 = v19 + 8;
            v6 = v18 - 1;
            if (v20 + 1 == a2)
            {
              return result;
            }

            goto LABEL_5;
          }

          if (v22)
          {
            if (v13 - 2) >= 5u && (v13)
            {
              goto LABEL_4;
            }

            if (v21)
            {
              if (v13 == 4)
              {
                goto LABEL_4;
              }

              if (v10 != 4)
              {
                if (v13 == 5)
                {
                  goto LABEL_4;
                }

                if (v10 != 5)
                {
                  if (v13 == 6)
                  {
                    goto LABEL_4;
                  }

                  if (v10 != 6)
                  {
                    goto LABEL_35;
                  }
                }
              }
            }
          }
        }
      }
    }

LABEL_30:
    if (!v4)
    {
      break;
    }

    v16 = *(v5 + 7);
    *(v5 + 1) = *(v5 - 7);
    *(v5 - 7) = v8;
    *(v5 - 3) = v9;
    *(v5 - 2) = v10;
    *(v5 - 1) = v16;
    *v5 = v11;
    v5 -= 8;
    v15 = __CFADD__(v6++, 1);
    if (v15)
    {
      goto LABEL_4;
    }
  }

  __break(1u);
LABEL_35:
  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_10016A074(char **a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = _swiftEmptyArrayStorage;
LABEL_141:
    v10 = v9;
    v9 = *a1;
    if (!*a1)
    {
      goto LABEL_179;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_143:
      v101 = *(v10 + 16);
      if (v101 >= 2)
      {
        while (*v6)
        {
          v102 = *(v10 + 16 * v101);
          v103 = *(v10 + 16 * (v101 - 1) + 40);
          sub_10016A8E8((*v6 + 8 * v102), (*v6 + 8 * *(v10 + 16 * (v101 - 1) + 32)), (*v6 + 8 * v103), v9);
          if (v5)
          {
          }

          if (v103 < v102)
          {
            goto LABEL_166;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_10016AD7C(v10);
          }

          if (v101 - 2 >= *(v10 + 16))
          {
            goto LABEL_167;
          }

          v104 = (v10 + 16 * v101);
          *v104 = v102;
          v104[1] = v103;
          sub_10016ACF0(v101 - 1);
          v101 = *(v10 + 16);
          if (v101 <= 1)
          {
          }
        }

        goto LABEL_177;
      }
    }

LABEL_173:
    v10 = sub_10016AD7C(v10);
    goto LABEL_143;
  }

  v8 = 0;
  v9 = _swiftEmptyArrayStorage;
  while (1)
  {
    v10 = v8;
    v11 = v8 + 1;
    if (v8 + 1 < v7)
    {
      v12 = (*v6 + 8 * v11);
      v13 = *(v12 + 4);
      v14 = (*v6 + 8 * v10);
      v15 = v14[4];
      if ((0x801004u >> (8 * v13)) != (0x801004u >> (8 * v15)) || (v16 = *(v12 + 7), ((v16 | v14[7]) & 1) == 0))
      {
        LOBYTE(v16) = sub_100218708(*v12 | (v13 << 32) | (*(v12 + 5) << 40), *v14 | (v15 << 32) | (v14[5] << 40));
      }

      v11 = v10 + 2;
      if (v10 + 2 < v7)
      {
        v17 = *v12;
        v18 = *(v12 + 4);
        LOBYTE(v19) = *(v12 + 5);
        v20 = (v14 + 23);
        v21 = *(v12 + 7);
        while (1)
        {
          v22 = v19;
          v23 = v21;
          v24 = *(v20 - 7);
          v25 = 8 * v18;
          v18 = *(v20 - 3);
          v19 = *(v20 - 2);
          v21 = *v20;
          v26 = (0x801004u >> (8 * v18));
          v27 = (0x801004u >> v25);
          if (v26 == v27)
          {
            if (*v20)
            {
              goto LABEL_11;
            }

            if (v23)
            {
              goto LABEL_22;
            }
          }

          v28 = v26 >= v27 && v24 >= v17;
          if (v28)
          {
            if (v22 == 2)
            {
              goto LABEL_22;
            }

            if (v19 != 2)
            {
              if (v22 == 3)
              {
                goto LABEL_22;
              }

              if (v19 != 3)
              {
                if ((v22 - 2) >= 5u && (v22 & 1) == 0)
                {
LABEL_22:
                  if (v16)
                  {
                    goto LABEL_43;
                  }

                  goto LABEL_12;
                }

                if (v19 - 2) < 5 || (v19)
                {
                  if (v22 - 2) >= 5u && (v22)
                  {
                    goto LABEL_22;
                  }

                  if ((v19 - 2) < 5u || (v19 & 1) == 0)
                  {
                    if (v22 == 4)
                    {
                      goto LABEL_22;
                    }

                    if (v19 != 4)
                    {
                      if (v22 == 5)
                      {
                        goto LABEL_22;
                      }

                      if (v19 != 5)
                      {
                        if (v22 == 6)
                        {
                          goto LABEL_22;
                        }

                        if (v19 != 6)
                        {
                          goto LABEL_180;
                        }
                      }
                    }
                  }
                }
              }
            }
          }

LABEL_11:
          if ((v16 & 1) == 0)
          {
            goto LABEL_50;
          }

LABEL_12:
          ++v11;
          v20 += 8;
          v17 = v24;
          if (v7 == v11)
          {
            v11 = v7;
            break;
          }
        }
      }

      if (v16)
      {
LABEL_43:
        if (v11 < v10)
        {
          goto LABEL_172;
        }

        if (v10 < v11)
        {
          v29 = 8 * v11 - 8;
          v30 = 8 * v10;
          v31 = v11;
          v32 = v10;
          do
          {
            if (v32 != --v31)
            {
              v33 = *v6;
              if (!*v6)
              {
                goto LABEL_176;
              }

              v34 = (v33 + v30);
              v35 = v33 + v29;
              v36 = *v34;
              v37 = *(v34 + 2);
              v38 = *(v34 + 6);
              v39 = *(v34 + 7);
              *v34 = *v35;
              *v35 = v36;
              *(v35 + 4) = v37;
              *(v35 + 6) = v38;
              *(v35 + 7) = v39;
            }

            ++v32;
            v29 -= 8;
            v30 += 8;
          }

          while (v32 < v31);
        }
      }
    }

LABEL_50:
    v40 = v6[1];
    if (v11 < v40)
    {
      if (__OFSUB__(v11, v10))
      {
        goto LABEL_169;
      }

      if (v11 - v10 < a4)
      {
        break;
      }
    }

LABEL_90:
    if (v11 < v10)
    {
      goto LABEL_168;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_10011707C(0, *(v9 + 2) + 1, 1, v9);
    }

    v56 = *(v9 + 2);
    v55 = *(v9 + 3);
    v57 = v56 + 1;
    if (v56 >= v55 >> 1)
    {
      v9 = sub_10011707C((v55 > 1), v56 + 1, 1, v9);
    }

    *(v9 + 2) = v57;
    v58 = &v9[16 * v56];
    *(v58 + 4) = v10;
    *(v58 + 5) = v11;
    v117 = v11;
    v10 = *a1;
    if (!*a1)
    {
      goto LABEL_178;
    }

    if (v56)
    {
      while (1)
      {
        v59 = v57 - 1;
        if (v57 >= 4)
        {
          break;
        }

        if (v57 == 3)
        {
          v60 = *(v9 + 4);
          v61 = *(v9 + 5);
          v70 = __OFSUB__(v61, v60);
          v62 = v61 - v60;
          v63 = v70;
LABEL_110:
          if (v63)
          {
            goto LABEL_157;
          }

          v76 = &v9[16 * v57];
          v78 = *v76;
          v77 = *(v76 + 1);
          v79 = __OFSUB__(v77, v78);
          v80 = v77 - v78;
          v81 = v79;
          if (v79)
          {
            goto LABEL_160;
          }

          v82 = &v9[16 * v59 + 32];
          v84 = *v82;
          v83 = *(v82 + 1);
          v70 = __OFSUB__(v83, v84);
          v85 = v83 - v84;
          if (v70)
          {
            goto LABEL_163;
          }

          if (__OFADD__(v80, v85))
          {
            goto LABEL_164;
          }

          if (v80 + v85 >= v62)
          {
            if (v62 < v85)
            {
              v59 = v57 - 2;
            }

            goto LABEL_131;
          }

          goto LABEL_124;
        }

        v86 = &v9[16 * v57];
        v88 = *v86;
        v87 = *(v86 + 1);
        v70 = __OFSUB__(v87, v88);
        v80 = v87 - v88;
        v81 = v70;
LABEL_124:
        if (v81)
        {
          goto LABEL_159;
        }

        v89 = &v9[16 * v59];
        v91 = *(v89 + 4);
        v90 = *(v89 + 5);
        v70 = __OFSUB__(v90, v91);
        v92 = v90 - v91;
        if (v70)
        {
          goto LABEL_162;
        }

        if (v92 < v80)
        {
          goto LABEL_3;
        }

LABEL_131:
        v97 = v59 - 1;
        if (v59 - 1 >= v57)
        {
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
LABEL_164:
          __break(1u);
LABEL_165:
          __break(1u);
LABEL_166:
          __break(1u);
LABEL_167:
          __break(1u);
LABEL_168:
          __break(1u);
LABEL_169:
          __break(1u);
LABEL_170:
          __break(1u);
          goto LABEL_171;
        }

        if (!*v6)
        {
          goto LABEL_175;
        }

        v98 = *&v9[16 * v97 + 32];
        v99 = *&v9[16 * v59 + 40];
        sub_10016A8E8((*v6 + 8 * v98), (*v6 + 8 * *&v9[16 * v59 + 32]), (*v6 + 8 * v99), v10);
        if (v5)
        {
        }

        if (v99 < v98)
        {
          goto LABEL_153;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_10016AD7C(v9);
        }

        if (v97 >= *(v9 + 2))
        {
          goto LABEL_154;
        }

        v100 = &v9[16 * v97];
        *(v100 + 4) = v98;
        *(v100 + 5) = v99;
        sub_10016ACF0(v59);
        v57 = *(v9 + 2);
        if (v57 <= 1)
        {
          goto LABEL_3;
        }
      }

      v64 = &v9[16 * v57 + 32];
      v65 = *(v64 - 64);
      v66 = *(v64 - 56);
      v70 = __OFSUB__(v66, v65);
      v67 = v66 - v65;
      if (v70)
      {
        goto LABEL_155;
      }

      v69 = *(v64 - 48);
      v68 = *(v64 - 40);
      v70 = __OFSUB__(v68, v69);
      v62 = v68 - v69;
      v63 = v70;
      if (v70)
      {
        goto LABEL_156;
      }

      v71 = &v9[16 * v57];
      v73 = *v71;
      v72 = *(v71 + 1);
      v70 = __OFSUB__(v72, v73);
      v74 = v72 - v73;
      if (v70)
      {
        goto LABEL_158;
      }

      v70 = __OFADD__(v62, v74);
      v75 = v62 + v74;
      if (v70)
      {
        goto LABEL_161;
      }

      if (v75 >= v67)
      {
        v93 = &v9[16 * v59 + 32];
        v95 = *v93;
        v94 = *(v93 + 1);
        v70 = __OFSUB__(v94, v95);
        v96 = v94 - v95;
        if (v70)
        {
          goto LABEL_165;
        }

        if (v62 < v96)
        {
          v59 = v57 - 2;
        }

        goto LABEL_131;
      }

      goto LABEL_110;
    }

LABEL_3:
    v7 = v6[1];
    v8 = v117;
    if (v117 >= v7)
    {
      goto LABEL_141;
    }
  }

  v41 = v10 + a4;
  if (__OFADD__(v10, a4))
  {
    goto LABEL_170;
  }

  if (v41 >= v40)
  {
    v41 = v6[1];
  }

  if (v41 < v10)
  {
LABEL_171:
    __break(1u);
LABEL_172:
    __break(1u);
    goto LABEL_173;
  }

  if (v11 == v41)
  {
    goto LABEL_90;
  }

  v107 = v9;
  v108 = v6;
  v109 = v5;
  v42 = *v6;
  v106 = v10;
  v43 = v10 - v11;
  v44 = *v6 + 8 * v11 - 1;
  v112 = v41;
LABEL_60:
  v116 = v11;
  v45 = v42 + 8 * v11;
  v46 = *v45;
  v47 = *(v45 + 4);
  v48 = *(v45 + 5);
  v49 = *(v45 + 7);
  LOBYTE(v45) = (v48 - 2) < 5;
  v50 = (0x801004u >> (8 * v47));
  v118 = v45 | v48;
  v113 = v45 | v48 ^ 1;
  v114 = v43;
  v115 = v44;
  while (1)
  {
    v51 = *(v44 - 2);
    v52 = (0x801004u >> (8 * *(v44 - 3)));
    if (v50 == v52)
    {
      if (v49)
      {
        goto LABEL_85;
      }

      if (*v44)
      {
        goto LABEL_59;
      }
    }

    if (v50 >= v52 && v46 >= *(v44 - 7))
    {
      sub_10005DC58(&qword_10058DFA0, &qword_100488570);
      if (v51 == 2)
      {
        goto LABEL_59;
      }

      if (v48 != 2)
      {
        if (v51 == 3)
        {
          goto LABEL_59;
        }

        if (v48 != 3)
        {
          if (v51 - 2) < 5 || (v51)
          {
            if (v118)
            {
              if (v51 - 2) >= 5u && (v51)
              {
                goto LABEL_59;
              }

              if (v113)
              {
                if (v51 == 4)
                {
                  goto LABEL_59;
                }

                if (v48 != 4)
                {
                  if (v51 == 5)
                  {
                    goto LABEL_59;
                  }

                  if (v48 != 5)
                  {
                    if (v51 == 6)
                    {
                      goto LABEL_59;
                    }

                    if (v48 != 6)
                    {
                      goto LABEL_181;
                    }
                  }
                }
              }
            }

            goto LABEL_85;
          }

LABEL_59:
          v11 = v116 + 1;
          v44 = v115 + 8;
          v43 = v114 - 1;
          if (v116 + 1 == v112)
          {
            v11 = v112;
            v6 = v108;
            v5 = v109;
            v10 = v106;
            v9 = v107;
            goto LABEL_90;
          }

          goto LABEL_60;
        }
      }
    }

LABEL_85:
    if (!v42)
    {
      break;
    }

    v54 = *(v44 + 7);
    *(v44 + 1) = *(v44 - 7);
    *(v44 - 7) = v46;
    *(v44 - 3) = v47;
    *(v44 - 2) = v48;
    *(v44 - 1) = v54;
    *v44 = v49;
    v44 -= 8;
    v28 = __CFADD__(v43++, 1);
    if (v28)
    {
      goto LABEL_59;
    }
  }

  __break(1u);
LABEL_175:
  __break(1u);
LABEL_176:
  __break(1u);
LABEL_177:
  __break(1u);
LABEL_178:
  __break(1u);
LABEL_179:
  __break(1u);
LABEL_180:
  sub_10005DC58(&qword_10058DFA0, &qword_100488570);
LABEL_181:
  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_10016A8E8(char *__src, char *__dst, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = __dst - __src;
  v9 = __dst - __src + 7;
  if (__dst - __src >= 0)
  {
    v9 = __dst - __src;
  }

  v10 = v9 >> 3;
  v11 = a3 - __dst;
  v12 = a3 - __dst + 7;
  if (a3 - __dst >= 0)
  {
    v12 = a3 - __dst;
  }

  v13 = v12 >> 3;
  if (v10 >= v12 >> 3)
  {
    goto LABEL_45;
  }

  if (a4 != __src || &__src[8 * v10] <= a4)
  {
    memmove(a4, __src, 8 * v10);
  }

  v14 = &v4[8 * v10];
  if (v8 < 8 || v6 >= v5)
  {
LABEL_85:
    v27 = v7;
    goto LABEL_87;
  }

  while (1)
  {
    v13 = v6[5];
    v11 = v4[5];
    v15 = (0x801004u >> (8 * v6[4]));
    v16 = (0x801004u >> (8 * v4[4]));
    if (v15 != v16)
    {
      goto LABEL_42;
    }

    if (v6[7])
    {
      goto LABEL_18;
    }

    if ((v4[7] & 1) == 0)
    {
LABEL_42:
      if (v15 < v16 || *v6 < *v4)
      {
        goto LABEL_18;
      }

      sub_10005DC58(&qword_10058DFA0, &qword_100488570);
      if (v11 != 2)
      {
        if (v13 == 2)
        {
          goto LABEL_18;
        }

        if (v11 != 3)
        {
          if (v13 == 3)
          {
            goto LABEL_18;
          }

          if (v11 - 2) < 5 || (v11)
          {
            if ((v13 - 2) >= 5 && (v13 & 1) == 0)
            {
              goto LABEL_18;
            }

            if ((v11 - 2) < 5u || (v11 & 1) == 0)
            {
              if (v13 - 2) >= 5u && (v13)
              {
                goto LABEL_18;
              }

              if (v11 != 4)
              {
                if (v13 == 4)
                {
                  goto LABEL_18;
                }

                if (v11 != 5)
                {
                  if (v13 == 5)
                  {
                    goto LABEL_18;
                  }

                  if (v11 != 6)
                  {
                    break;
                  }
                }
              }
            }
          }
        }
      }
    }

    v18 = v4;
    v19 = v7 == v4;
    v4 += 8;
    if (!v19)
    {
      goto LABEL_19;
    }

LABEL_20:
    v7 += 8;
    if (v4 >= v14 || v6 >= v5)
    {
      goto LABEL_85;
    }
  }

  if (v13 == 6)
  {
LABEL_18:
    v18 = v6;
    v19 = v7 == v6;
    v6 += 8;
    if (v19)
    {
      goto LABEL_20;
    }

LABEL_19:
    *v7 = *v18;
    goto LABEL_20;
  }

LABEL_44:
  _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
LABEL_45:
  if (v4 != v6 || &v6[8 * v13] <= v4)
  {
    memmove(v4, v6, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 < 8 || v6 <= v7)
  {
LABEL_86:
    v27 = v6;
  }

  else
  {
    do
    {
      v20 = 0;
      v13 = v14;
      v29 = v6 - 8;
      while (1)
      {
        v21 = (v13 + v20);
        v11 = *(v13 + v20 - 3);
        v22 = *(v6 - 3);
        v23 = (0x801004u >> (8 * *(v13 + v20 - 4)));
        v24 = (0x801004u >> (8 * *(v6 - 4)));
        if (v23 != v24)
        {
          goto LABEL_76;
        }

        if (*(v21 - 1))
        {
          goto LABEL_80;
        }

        if ((*(v6 - 1) & 1) == 0)
        {
LABEL_76:
          if (v23 < v24 || *(v13 + v20 - 8) < *(v6 - 2))
          {
            goto LABEL_80;
          }

          sub_10005DC58(&qword_10058DFA0, &qword_100488570);
          if (v22 != 2)
          {
            if (v11 == 2)
            {
              goto LABEL_80;
            }

            if (v22 != 3)
            {
              if (v11 == 3)
              {
                goto LABEL_80;
              }

              if (v22 - 2) < 5 || (v22)
              {
                if ((v11 - 2) >= 5 && (v11 & 1) == 0)
                {
                  goto LABEL_80;
                }

                if ((v22 - 2) < 5u || (v22 & 1) == 0)
                {
                  if (v11 - 2) >= 5u && (v11)
                  {
                    goto LABEL_80;
                  }

                  if (v22 != 4)
                  {
                    if (v11 == 4)
                    {
                      goto LABEL_80;
                    }

                    if (v22 != 5)
                    {
                      if (v11 == 5)
                      {
                        goto LABEL_80;
                      }

                      if (v22 != 6)
                      {
                        break;
                      }
                    }
                  }
                }
              }
            }
          }
        }

        if (&v5[v20] != v21)
        {
          *&v5[v20 - 8] = *(v21 - 1);
        }

        v20 -= 8;
        v14 = (v13 + v20);
        if (v13 + v20 <= v4)
        {
          goto LABEL_86;
        }
      }

      if (v11 != 6)
      {
        goto LABEL_44;
      }

LABEL_80:
      v26 = &v5[v20];
      v5 = &v5[v20 - 8];
      v27 = v6 - 8;
      if (v26 != v6)
      {
        *v5 = *v29;
      }

      v14 = (v13 + v20);
      if (v13 + v20 <= v4)
      {
        break;
      }

      v6 -= 8;
    }

    while (v29 > v7);
    v14 = (v13 + v20);
  }

LABEL_87:
  if (v27 != v4 || v27 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v27, v4, 8 * ((v14 - v4) / 8));
  }

  return 1;
}

uint64_t sub_10016ACF0(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10016AD7C(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

BOOL _s7CoreP2P14RadioResourcesO15SymbolicChannelO21__derived_enum_equalsySbAE_AEtFZ_0(unint64_t a1, char a2, unint64_t a3, char a4)
{
  if (!a2)
  {
    if (!a4)
    {
      return a1 == a3;
    }

    return 0;
  }

  if (a2 != 1)
  {
    if (a1 > 1)
    {
      if (a1 == 2)
      {
        if (a4 == 2 && a3 == 2)
        {
          return 1;
        }
      }

      else if (a4 == 2 && a3 == 3)
      {
        return 1;
      }
    }

    else if (a1)
    {
      if (a4 == 2 && a3 == 1)
      {
        return 1;
      }
    }

    else if (a4 == 2 && !a3)
    {
      return 1;
    }

    return 0;
  }

  if (a4 != 1 || a1 != a3 || ((0x801004u >> ((a1 >> 29) & 0xF8)) & 0xFFC) != ((0x801004u >> ((a3 >> 29) & 0xF8)) & 0xFFC))
  {
    return 0;
  }

  if (BYTE5(a1) <= 3u)
  {
    if (BYTE5(a1) == 2)
    {
      if (BYTE5(a3) == 2)
      {
        return 1;
      }
    }

    else
    {
      if (BYTE5(a1) != 3)
      {
        return BYTE5(a3) - 2 >= 5 && (((a3 >> 40) ^ (a1 >> 40)) & 1) == 0;
      }

      if (BYTE5(a3) == 3)
      {
        return 1;
      }
    }

    return 0;
  }

  switch(BYTE5(a1))
  {
    case 4u:
      return BYTE5(a3) == 4;
    case 5u:
      return BYTE5(a3) == 5;
    case 6u:
      return BYTE5(a3) == 6;
  }

  return BYTE5(a3) - 2 >= 5 && (((a3 >> 40) ^ (a1 >> 40)) & 1) == 0;
}

uint64_t sub_10016AF58(unint64_t a1, unint64_t a2)
{
  if (a1 == a2 && ((0x801004u >> ((a1 >> 29) & 0xF8)) & 0xFFC) == ((0x801004u >> ((a2 >> 29) & 0xF8)) & 0xFFC))
  {
    if (BYTE5(a1) <= 3u)
    {
      if (BYTE5(a1) == 2)
      {
        v2 = 0;
        if (BYTE5(a2) != 2)
        {
          return v2;
        }

        goto LABEL_18;
      }

      if (BYTE5(a1) == 3)
      {
        v2 = 0;
        if (BYTE5(a2) != 3)
        {
          return v2;
        }

        goto LABEL_18;
      }
    }

    else
    {
      switch(BYTE5(a1))
      {
        case 4u:
          v2 = 0;
          if (BYTE5(a2) != 4)
          {
            return v2;
          }

          goto LABEL_18;
        case 5u:
          v2 = 0;
          if (BYTE5(a2) != 5)
          {
            return v2;
          }

          goto LABEL_18;
        case 6u:
          v2 = 0;
          if (BYTE5(a2) != 6)
          {
            return v2;
          }

LABEL_18:
          if (BYTE6(a2) == BYTE6(a1))
          {
            return HIBYTE(a1) & 1 ^ ((a2 & 0x100000000000000) == 0);
          }

          return v2;
      }
    }

    if (BYTE5(a2) - 2 >= 5)
    {
      v2 = 0;
      if (BYTE6(a2) != BYTE6(a1) || (((a2 >> 40) ^ (a1 >> 40)) & 1) != 0)
      {
        return v2;
      }

      return HIBYTE(a1) & 1 ^ ((a2 & 0x100000000000000) == 0);
    }
  }

  return 0;
}

unint64_t _s7CoreP2P14RadioResourcesO8PriorityO8rawValueAESgSi_tcfC_0(unint64_t result)
{
  if (result >= 0xD)
  {
    return 13;
  }

  return result;
}

uint64_t sub_10016B088(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = *(v1 + 24);
  return sub_100169890(a1, *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 65));
}

uint64_t sub_10016B0C0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_100169A1C(a1, *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56));
}

unint64_t sub_10016B0D4()
{
  result = qword_10058EDE8;
  if (!qword_10058EDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058EDE8);
  }

  return result;
}

unint64_t sub_10016B12C()
{
  result = qword_10058EDF0;
  if (!qword_10058EDF0)
  {
    sub_10005DD04(&qword_10058EDF8, &qword_10048E220);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058EDF0);
  }

  return result;
}

unint64_t sub_10016B194()
{
  result = qword_10058EE00;
  if (!qword_10058EE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058EE00);
  }

  return result;
}

unint64_t sub_10016B1EC()
{
  result = qword_10058EE08;
  if (!qword_10058EE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058EE08);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IEEE80211InformationElement.IEEE80211CipherSuite(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for IEEE80211InformationElement.IEEE80211CipherSuite(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RadioResources.SymbolicChannel(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for RadioResources.SymbolicChannel(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_10016B42C(uint64_t a1)
{
  if (*(a1 + 8) <= 1u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_10016B444(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_10016B46C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_10016B4B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10016B51C()
{
  v1 = 0x61466D6F646E6172;
  if (*v0 != 1)
  {
    v1 = 0x73736572646461;
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

uint64_t sub_10016B584@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10016CDDC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10016B5AC(uint64_t a1)
{
  v2 = sub_10016C48C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10016B5E8(uint64_t a1)
{
  v2 = sub_10016C48C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t NANMasterRank.encode(to:)(void *a1, uint64_t a2)
{
  v5 = sub_10005DC58(&qword_10058EE10, &qword_10048E548);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = &v12[-v8];
  v10 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_10016C48C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v12[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v12[8] = BYTE2(a2);
    v12[9] = BYTE3(a2);
    v12[10] = BYTE4(a2);
    v12[11] = BYTE5(a2);
    v12[12] = BYTE6(a2);
    v12[13] = HIBYTE(a2);
    v12[7] = 2;
    sub_10008A490();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

void NANMasterRank.hash(into:)(int a1, unint64_t a2)
{
  v2 = a2 >> 8;
  v3 = a2 >> 16;
  v4 = a2 >> 24;
  v5 = HIDWORD(a2);
  v6 = a2 >> 40;
  v7 = HIWORD(a2);
  v8 = HIBYTE(a2);
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
}

Swift::Int NANMasterRank.hashValue.getter(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 8;
  v3 = a1 >> 16;
  v4 = a1 >> 24;
  v5 = HIDWORD(a1);
  v6 = a1 >> 40;
  v7 = HIWORD(a1);
  v8 = HIBYTE(a1);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  return Hasher._finalize()();
}

unint64_t sub_10016B9B4@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  result = sub_10016C624(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

Swift::Int sub_10016B9FC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  return Hasher._finalize()();
}

void sub_10016BAD4()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
}

Swift::Int sub_10016BB74()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  return Hasher._finalize()();
}

uint64_t NANRole.description.getter(char a1)
{
  v1 = 0x4D20726F68636E41;
  v2 = 0x72657473614DLL;
  v3 = 0x7473614D206E6F4ELL;
  if ((a1 & 1) == 0)
  {
    v3 = 0xD000000000000013;
  }

  if (a1 != 4)
  {
    v2 = v3;
  }

  if (a1 != 3)
  {
    v1 = v2;
  }

  if (a1 == 2)
  {
    return 0x6974616D6F747541;
  }

  else
  {
    return v1;
  }
}

BOOL static NANRole.__derived_enum_equals(_:_:)(int a1, int a2)
{
  switch(a1)
  {
    case 2u:
      return a2 == 2;
    case 3u:
      return a2 == 3;
    case 4u:
      return a2 == 4;
  }

  if ((a2 - 2) < 3u)
  {
    return 0;
  }

  return (a2 ^ a1 ^ 1) & 1;
}

void NANRole.hash(into:)(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 2:
      v2 = 0;
      goto LABEL_7;
    case 3:
      v2 = 1;
      goto LABEL_7;
    case 4:
      v2 = 2;
LABEL_7:
      Hasher._combine(_:)(v2);
      return;
  }

  Hasher._combine(_:)(3uLL);
  Hasher._combine(_:)(a2 & 1);
}

Swift::Int NANRole.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  switch(a1)
  {
    case 2:
      v2 = 0;
      break;
    case 3:
      v2 = 1;
      break;
    case 4:
      v2 = 2;
      break;
    default:
      Hasher._combine(_:)(3uLL);
      Hasher._combine(_:)(a1 & 1);
      return Hasher._finalize()();
  }

  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

Swift::Int sub_10016BE80()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  switch(v1)
  {
    case 2:
      v2 = 0;
      break;
    case 3:
      v2 = 1;
      break;
    case 4:
      v2 = 2;
      break;
    default:
      Hasher._combine(_:)(3uLL);
      Hasher._combine(_:)(v1 & 1);
      return Hasher._finalize()();
  }

  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void sub_10016BF08()
{
  v1 = *v0;
  switch(v1)
  {
    case 2:
      v2 = 0;
      goto LABEL_7;
    case 3:
      v2 = 1;
      goto LABEL_7;
    case 4:
      v2 = 2;
LABEL_7:
      Hasher._combine(_:)(v2);
      return;
  }

  Hasher._combine(_:)(3uLL);
  Hasher._combine(_:)(v1 & 1);
}

Swift::Int sub_10016BF74()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  switch(v1)
  {
    case 2:
      v2 = 0;
      break;
    case 3:
      v2 = 1;
      break;
    case 4:
      v2 = 2;
      break;
    default:
      Hasher._combine(_:)(3uLL);
      Hasher._combine(_:)(v1 & 1);
      return Hasher._finalize()();
  }

  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_10016BFF8()
{
  v1 = *v0;
  v2 = 0x4D20726F68636E41;
  v3 = 0x72657473614DLL;
  v4 = 0x7473614D206E6F4ELL;
  if ((v1 & 1) == 0)
  {
    v4 = 0xD000000000000013;
  }

  if (v1 != 4)
  {
    v3 = v4;
  }

  if (v1 != 3)
  {
    v2 = v3;
  }

  if (v1 == 2)
  {
    return 0x6974616D6F747541;
  }

  else
  {
    return v2;
  }
}

BOOL sub_10016C0B0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  switch(v2)
  {
    case 2:
      return v3 == 2;
    case 3:
      return v3 == 3;
    case 4:
      return v3 == 4;
  }

  if ((v3 - 2) < 3)
  {
    return 0;
  }

  return (v3 ^ v2 ^ 1) & 1;
}

uint64_t NANElectionParameters.cluster.getter()
{
  result = *(v0 + 8);
  v2 = *(v0 + 16);
  return result;
}

uint64_t NANElectionParameters.cluster.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 8) = result;
  *(v2 + 16) = a2;
  return result;
}

void NANElectionParameters.hash(into:)()
{
  v1 = *v0;
  switch(v1)
  {
    case 4:
      Hasher._combine(_:)(2uLL);
      break;
    case 3:
      Hasher._combine(_:)(1uLL);
      break;
    case 2:
      Hasher._combine(_:)(0);
      break;
    default:
      Hasher._combine(_:)(3uLL);
      Hasher._combine(_:)(v1 & 1);
      break;
  }

  Hasher._combine(_:)(v0[1]);
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  Hasher._combine(_:)(v0[2]);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  v15 = *(v0 + 5);
  v7 = v0[9];
  v8 = v0[10];
  v9 = v0[11];
  v10 = v0[12];
  v11 = v0[13];
  v12 = v0[14];
  v13 = v0[15];
  v14 = v0[16];
  Hasher._combine(_:)(v0[8]);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v10);
  Hasher._combine(_:)(v11);
  Hasher._combine(_:)(v12);
  Hasher._combine(_:)(v13);
  Hasher._combine(_:)(v14);
  Hasher._combine(_:)(v15);
  Hasher._combine(_:)(*(v0 + 3));
  Hasher._combine(_:)(*(v0 + 4));
}

Swift::Int NANElectionParameters.hashValue.getter()
{
  Hasher.init(_seed:)();
  NANElectionParameters.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_10016C32C()
{
  Hasher.init(_seed:)();
  NANElectionParameters.hash(into:)();
  return Hasher._finalize()();
}

BOOL sub_10016C368(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return _s7CoreP2P21NANElectionParametersV23__derived_struct_equalsySbAC_ACtFZ_0(v5, v7);
}

BOOL _s7CoreP2P13NANMasterRankV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    return 0;
  }

  LOBYTE(v6) = BYTE2(a1);
  BYTE1(v6) = BYTE3(a1);
  BYTE2(v6) = BYTE4(a1);
  HIBYTE(v6) = BYTE5(a1);
  LOBYTE(v7) = BYTE6(a1);
  HIBYTE(v7) = HIBYTE(a1);
  LOBYTE(v4) = BYTE2(a2);
  BYTE1(v4) = BYTE3(a2);
  BYTE2(v4) = BYTE4(a2);
  HIBYTE(v4) = BYTE5(a2);
  LOBYTE(v5) = BYTE6(a2);
  HIBYTE(v5) = HIBYTE(a2);
  return v6 == v4 && v7 == v5;
}

unint64_t sub_10016C48C()
{
  result = qword_10058EE18;
  if (!qword_10058EE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058EE18);
  }

  return result;
}

BOOL _s7CoreP2P21NANElectionParametersV23__derived_struct_equalsySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  switch(v2)
  {
    case 4:
      if (v3 != 4)
      {
        return 0;
      }

      break;
    case 3:
      if (v3 != 3)
      {
        return 0;
      }

      break;
    case 2:
      if (v3 != 2)
      {
        return 0;
      }

      break;
    default:
      v4 = 0;
      if (v3 - 2) < 3 || ((v2 ^ v3))
      {
        return v4;
      }

      break;
  }

  if (a1[1] != a2[1])
  {
    return 0;
  }

  v9 = *(a1 + 3);
  v5 = *(a1 + 2) == *(a2 + 2) && *(a1 + 3) == *(a2 + 3);
  if (!v5 || !sub_100267C38(*(a1 + 1), a1[16] | (*(a1 + 5) << 32), *(a2 + 1), a2[16] | (*(a2 + 5) << 32)) || *(a1 + 3) != *(a2 + 3))
  {
    return 0;
  }

  return *(a1 + 4) == *(a2 + 4);
}

unint64_t sub_10016C624(uint64_t *a1)
{
  v3 = sub_10005DC58(&qword_10058EE70, &qword_10048EA80);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v15[-v6];
  v8 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_10016C48C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    return sub_100002A00(a1);
  }

  v18 = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v17 = 1;
  v10 = KeyedDecodingContainer.decode(_:forKey:)();
  v15[7] = 2;
  sub_10003804C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v4 + 8))(v7, v3);
  v11 = v15[8];
  v12 = v15[9];
  v13 = v16;
  sub_100002A00(a1);
  return (v11 << 16) | (v12 << 24) | (v13 << 32) | (v10 << 8) | v9;
}

unint64_t sub_10016C820()
{
  result = qword_10058EE20;
  if (!qword_10058EE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058EE20);
  }

  return result;
}

unint64_t sub_10016C878()
{
  result = qword_10058EE28;
  if (!qword_10058EE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058EE28);
  }

  return result;
}

unint64_t sub_10016C8D0()
{
  result = qword_10058EE30;
  if (!qword_10058EE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058EE30);
  }

  return result;
}

unint64_t sub_10016C928()
{
  result = qword_10058EE38;
  if (!qword_10058EE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058EE38);
  }

  return result;
}

unint64_t sub_10016C97C()
{
  result = qword_10058EE40;
  if (!qword_10058EE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058EE40);
  }

  return result;
}

unint64_t sub_10016C9D4()
{
  result = qword_10058EE48;
  if (!qword_10058EE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058EE48);
  }

  return result;
}

unint64_t sub_10016CA2C()
{
  result = qword_10058EE50;
  if (!qword_10058EE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058EE50);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NANRole(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_19;
  }

  v2 = a2 + 4;
  if (a2 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_19;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_19;
      }
    }

    return (*a1 | (v5 << 8)) - 4;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 4;
    }
  }

LABEL_19:
  v7 = *a1;
  if (v7 < 2)
  {
    return 0;
  }

  v8 = (v7 + 2147483646) & 0x7FFFFFFF;
  result = v8 - 2;
  if (v8 <= 2)
  {
    return 0;
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for NANRole(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 4;
  if (a3 + 4 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFC)
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_10016CBF8(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && a1[40])
  {
    return (*a1 + 252);
  }

  v3 = *a1;
  if (v3 >= 2)
  {
    v4 = ((v3 + 2147483646) & 0x7FFFFFFF) - 3;
  }

  else
  {
    v4 = -4;
  }

  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_10016CC58(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = a2 + 4;
    }
  }

  return result;
}

unint64_t sub_10016CCD8()
{
  result = qword_10058EE58;
  if (!qword_10058EE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058EE58);
  }

  return result;
}

unint64_t sub_10016CD30()
{
  result = qword_10058EE60;
  if (!qword_10058EE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058EE60);
  }

  return result;
}

unint64_t sub_10016CD88()
{
  result = qword_10058EE68;
  if (!qword_10058EE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058EE68);
  }

  return result;
}

uint64_t sub_10016CDDC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000001004B9D90 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x61466D6F646E6172 && a2 == 0xEC000000726F7463 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x73736572646461 && a2 == 0xE700000000000000)
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

uint64_t IPv4Address.init(_:)(uint64_t a1, unint64_t a2)
{
  v4 = sub_10003462C(a1, a2);
  sub_1000124C8(a1, a2);
  return v4;
}

uint64_t IPv6Address.init(_:scopedInterface:)(uint64_t a1, unint64_t a2)
{
  v4 = sub_1002A58C4(a1, a2);
  sub_1000124C8(a1, a2);
  return v4;
}

unint64_t IPv4Address.data.getter(int a1)
{
  v7 = a1;
  v8[3] = &type metadata for UnsafeRawBufferPointer;
  v8[4] = &protocol witness table for UnsafeRawBufferPointer;
  v8[0] = &v7;
  v8[1] = v8;
  v1 = sub_100029B34(v8, &type metadata for UnsafeRawBufferPointer);
  v2 = *v1;
  if (*v1 && (v3 = v1[1], v4 = v3 - v2, v3 != v2))
  {
    if (v4 <= 14)
    {
      v5 = sub_10000AD84(v2, v3);
    }

    else if (v4 >= 0x7FFFFFFF)
    {
      v5 = sub_100178EFC(v2, v3);
    }

    else
    {
      v5 = sub_10004F46C(v2, v3);
    }
  }

  else
  {
    v5 = 0;
  }

  sub_100002A00(v8);
  return v5;
}

uint64_t IPv4Address.description.getter(int a1)
{
  v2 = swift_slowAlloc();
  v5 = a1;
  inet_ntop(2, &v5, v2, 0x10u);
  v3 = String.init(cString:)();

  return v3;
}

uint64_t IPv4Address.customMirror.getter(int a1)
{
  v2 = type metadata accessor for Mirror.AncestorRepresentation();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*(sub_10005DC58(&unk_10058FC10, &qword_100484170) - 8) + 64);
  __chkstk_darwin();
  v9 = &v12 - v8;
  v13 = a1;
  v12 = _swiftEmptyArrayStorage;
  v10 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  (*(v3 + 104))(v6, enum case for Mirror.AncestorRepresentation.generated(_:), v2);
  sub_10005DC58(&qword_10058C7A0, &qword_100481FD0);
  sub_1000B5408(&qword_10058C7A8, &qword_10058C7A0, &qword_100481FD0);
  return Mirror.init<A, B>(_:children:displayStyle:ancestorRepresentation:)();
}

Swift::Int IPv4Address.hashValue.getter(Swift::UInt32 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

uint64_t sub_10016D48C()
{
  v1 = *v0;
  v2 = swift_slowAlloc();
  v5 = v1;
  inet_ntop(2, &v5, v2, 0x10u);
  v3 = String.init(cString:)();

  return v3;
}

uint64_t sub_10016D538()
{
  v1 = type metadata accessor for Mirror.AncestorRepresentation();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(*(sub_10005DC58(&unk_10058FC10, &qword_100484170) - 8) + 64);
  __chkstk_darwin();
  v8 = &v11 - v7;
  v12 = *v0;
  v11 = _swiftEmptyArrayStorage;
  v9 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  (*(v2 + 104))(v5, enum case for Mirror.AncestorRepresentation.generated(_:), v1);
  sub_10005DC58(&qword_10058C7A0, &qword_100481FD0);
  sub_1000B5408(&qword_10058C7A8, &qword_10058C7A0, &qword_100481FD0);
  return Mirror.init<A, B>(_:children:displayStyle:ancestorRepresentation:)();
}

uint64_t IPv4Address.init(from:)(uint64_t *a1)
{
  v3 = a1[4];
  v4 = sub_100029B34(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (v1)
  {
    sub_100002A00(a1);
  }

  else
  {
    sub_100029B34(v6, v6[3]);
    v4 = dispatch thunk of SingleValueDecodingContainer.decode(_:)();
    sub_100002A00(v6);
    sub_100002A00(a1);
  }

  return v4;
}

uint64_t IPv4Address.encode(to:)(void *a1)
{
  v1 = a1[4];
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  sub_100031694(v3, v3[3]);
  dispatch thunk of SingleValueEncodingContainer.encode(_:)();
  return sub_100002A00(v3);
}

uint64_t sub_10016D860@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v5 = a1[4];
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (v2)
  {
    return sub_100002A00(a1);
  }

  sub_100029B34(v8, v8[3]);
  v6 = dispatch thunk of SingleValueDecodingContainer.decode(_:)();
  sub_100002A00(v8);
  result = sub_100002A00(a1);
  *a2 = v6;
  return result;
}

uint64_t sub_10016D920(void *a1)
{
  v2 = *v1;
  v3 = a1[4];
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  sub_100031694(v5, v5[3]);
  dispatch thunk of SingleValueEncodingContainer.encode(_:)();
  return sub_100002A00(v5);
}

uint64_t IPv6Address.address.setter(uint64_t result, uint64_t a2)
{
  *v2 = result;
  v2[1] = a2;
  return result;
}

uint64_t NANWiFiAwareStatistics.serviceName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

unint64_t IPv6Address.data.getter(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v8[3] = &type metadata for UnsafeRawBufferPointer;
  v8[4] = &protocol witness table for UnsafeRawBufferPointer;
  v8[0] = v9;
  v8[1] = &v10;
  v2 = sub_100029B34(v8, &type metadata for UnsafeRawBufferPointer);
  v3 = *v2;
  if (*v2 && (v4 = v2[1], v5 = v4 - v3, v4 != v3))
  {
    if (v5 <= 14)
    {
      v6 = sub_10000AD84(v3, v4);
    }

    else if (v5 >= 0x7FFFFFFF)
    {
      v6 = sub_100178EFC(v3, v4);
    }

    else
    {
      v6 = sub_10004F46C(v3, v4);
    }
  }

  else
  {
    v6 = 0;
  }

  sub_100002A00(v8);
  return v6;
}

uint64_t IPv6Address.description.getter(uint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{
  v8 = swift_slowAlloc();
  v18 = a1;
  v19 = a2;
  inet_ntop(30, &v18, v8, 0x2Eu);
  v9 = String.init(cString:)();
  v11 = v10;
  if (a4)
  {
    v18 = 37;
    v19 = 0xE100000000000000;
    v12._countAndFlagsBits = a3;
    v12._object = a4;
    String.append(_:)(v12);
    v14 = v18;
    v13 = v19;
  }

  else
  {
    v14 = 0;
    v13 = 0xE000000000000000;
  }

  v18 = v9;
  v19 = v11;

  v15._countAndFlagsBits = v14;
  v15._object = v13;
  String.append(_:)(v15);

  v16 = v18;

  return v16;
}

uint64_t IPv6Address.customMirror.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for Mirror.AncestorRepresentation();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*(sub_10005DC58(&unk_10058FC10, &qword_100484170) - 8) + 64);
  __chkstk_darwin();
  v15 = v18 - v14;
  v18[2] = a1;
  v18[3] = a2;
  v18[4] = a3;
  v18[5] = a4;
  v18[1] = _swiftEmptyArrayStorage;
  v16 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  (*(v9 + 104))(v12, enum case for Mirror.AncestorRepresentation.generated(_:), v8);

  sub_10005DC58(&qword_10058C7A0, &qword_100481FD0);
  sub_1000B5408(&qword_10058C7A8, &qword_10058C7A0, &qword_100481FD0);
  return Mirror.init<A, B>(_:children:displayStyle:ancestorRepresentation:)();
}

void IPv6Address.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9[0] = a2;
  v9[1] = a3;
  v6 = sub_10004F3B0(v9, &v10);
  v8 = v7;
  Data.hash(into:)();
  sub_1000124C8(v6, v8);
  if (a5)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

unint64_t IPv6Address.multicastMACAddress.getter(uint64_t a1, uint64_t a2)
{
  v10[0] = a1;
  v10[1] = a2;
  v2 = sub_10004F3B0(v10, &v11);
  v4 = v3;
  v5 = Data._Representation.subscript.getter();
  v6 = Data._Representation.subscript.getter();
  v7 = Data._Representation.subscript.getter();
  v8 = Data._Representation.subscript.getter();
  sub_1000124C8(v2, v4);
  return (v6 << 24) | (v5 << 16) | (v7 << 32) | (v8 << 40) | 0x3333;
}

void sub_10016E008()
{
  v0 = *&in6addr_any.__u6_addr32[2];
  static IPv6Address.any = *in6addr_any.__u6_addr8;
  *algn_10059B4B8 = v0;
  qword_10059B4C0 = 0;
  unk_10059B4C8 = 0;
}

uint64_t *IPv6Address.any.unsafeMutableAddressor()
{
  if (qword_10058A858 != -1)
  {
    swift_once();
  }

  return &static IPv6Address.any;
}

uint64_t static IPv6Address.any.getter()
{
  if (qword_10058A858 != -1)
  {
    swift_once();
  }

  v0 = static IPv6Address.any;

  return v0;
}

void sub_10016E0F4()
{
  v0 = *&in6addr_any.__u6_addr32[2];
  static IPv6Address.broadcast = *in6addr_any.__u6_addr8;
  *algn_10059B4D8 = v0;
  qword_10059B4E0 = 0;
  unk_10059B4E8 = 0;
}

uint64_t *IPv6Address.broadcast.unsafeMutableAddressor()
{
  if (qword_10058A860 != -1)
  {
    swift_once();
  }

  return &static IPv6Address.broadcast;
}

uint64_t static IPv6Address.broadcast.getter()
{
  if (qword_10058A860 != -1)
  {
    swift_once();
  }

  v0 = static IPv6Address.broadcast;

  return v0;
}

Swift::Int IPv6Address.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  Hasher.init(_seed:)();
  v11[0] = a1;
  v11[1] = a2;
  v7 = sub_10004F3B0(v11, &v12);
  v9 = v8;
  Data.hash(into:)();
  sub_1000124C8(v7, v9);
  if (a4)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

void sub_10016E2CC()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v7[0] = *v0;
  v7[1] = v1;
  v4 = sub_10004F3B0(v7, &v8);
  v6 = v5;
  Data.hash(into:)();
  sub_1000124C8(v4, v6);
  if (v3)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int sub_10016E3A0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  Hasher.init(_seed:)();
  v9[0] = v1;
  v9[1] = v2;
  v5 = sub_10004F3B0(v9, &v10);
  v7 = v6;
  Data.hash(into:)();
  sub_1000124C8(v5, v7);
  if (v4)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

uint64_t sub_10016E488()
{
  v1 = type metadata accessor for Mirror.AncestorRepresentation();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(*(sub_10005DC58(&unk_10058FC10, &qword_100484170) - 8) + 64);
  __chkstk_darwin();
  v8 = v14 - v7;
  v9 = *v0;
  v10 = *(v0 + 2);
  v11 = *(v0 + 3);
  v15 = v9;
  v16 = v10;
  v17 = v11;
  v14[1] = _swiftEmptyArrayStorage;
  v12 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
  (*(v2 + 104))(v5, enum case for Mirror.AncestorRepresentation.generated(_:), v1);

  sub_10005DC58(&qword_10058C7A0, &qword_100481FD0);
  sub_1000B5408(&qword_10058C7A8, &qword_10058C7A0, &qword_100481FD0);
  return Mirror.init<A, B>(_:children:displayStyle:ancestorRepresentation:)();
}

uint64_t IPv6Address.init(from:)(uint64_t *a1)
{
  result = sub_10016ED6C(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_10016E6D0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10016ED6C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t Layer3Protocol.description.getter()
{
  countAndFlagsBits = String.uppercased()()._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t Layer3Protocol.rawValue.getter(char a1)
{
  if (a1)
  {
    return 7365749;
  }

  else
  {
    return 7365492;
  }
}

CoreP2P::Layer3Protocol_optional __swiftcall Layer3Protocol.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100553018, v2);

  if (v3 == 1)
  {
    v4.value = CoreP2P_Layer3Protocol_udp;
  }

  else
  {
    v4.value = CoreP2P_Layer3Protocol_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10016E7F4(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 7365749;
  }

  else
  {
    v2 = 7365492;
  }

  if (*a2)
  {
    v3 = 7365749;
  }

  else
  {
    v3 = 7365492;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_10016E868@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_100553018, *a1);

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

void sub_10016E8C8(uint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 7365749;
  }

  else
  {
    v2 = 7365492;
  }

  *a1 = v2;
  a1[1] = 0xE300000000000000;
}

Swift::Int sub_10016E8FC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10016E960()
{
  *v0;
  String.hash(into:)();
}

Swift::Int sub_10016E9A8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10016EAB8()
{
  *v0;
  countAndFlagsBits = String.uppercased()()._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t sub_10016EB10(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[4];
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  v10[0] = a2;
  v10[1] = a3;
  v8 = sub_10004F3B0(v10, v11);
  v9 = v6;
  sub_100031694(v11, v11[3]);
  sub_1000B8088();
  dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  sub_1000124C8(v8, v9);
  return sub_100002A00(v11);
}

uint64_t _s7CoreP2P14Layer3ProtocolO8dnsLabelACSgSS_tcfC_0(uint64_t a1, unint64_t a2)
{
  v3 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v3 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {

    return 2;
  }

  v5 = sub_100170360(a1, a2);
  if (!v6)
  {
    goto LABEL_14;
  }

  if (v5 != 95 || v6 != 0xE100000000000000)
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      goto LABEL_10;
    }

LABEL_14:
    v17._countAndFlagsBits = a1;
    v17._object = a2;
    v18 = _findStringSwitchCase(cases:string:)(&off_100553018, v17);

    if (v18 == 1)
    {
      v15 = 1;
    }

    else
    {
      v15 = 2;
    }

    v16 = v18 == 0;
    goto LABEL_18;
  }

LABEL_10:
  v9 = String.index(after:)();
  sub_1001703A8(v9, a1, a2);

  v10 = static String._fromSubstring(_:)();
  v12 = v11;

  v13._countAndFlagsBits = v10;
  v13._object = v12;
  v14 = _findStringSwitchCase(cases:string:)(&off_100553018, v13);

  if (v14 == 1)
  {
    v15 = 1;
  }

  else
  {
    v15 = 2;
  }

  v16 = v14 == 0;
LABEL_18:
  if (v16)
  {
    return 0;
  }

  else
  {
    return v15;
  }
}

uint64_t sub_10016ED6C(uint64_t *a1)
{
  v3 = a1[4];
  v4 = sub_100029B34(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (!v1)
  {
    v5 = v11;
    sub_100031694(v10, v11);
    v6 = UnkeyedDecodingContainer.decodeData(with:)(16, v5);
    v8 = v7;
    sub_10000AB0C(v6, v7);
    v4 = sub_1002A58C4(v6, v8);
    sub_1000124C8(v6, v8);
    sub_1000124C8(v6, v8);
    sub_100002A00(v10);
  }

  sub_100002A00(a1);
  return v4;
}

unint64_t sub_10016EF94()
{
  result = qword_10058EE78;
  if (!qword_10058EE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058EE78);
  }

  return result;
}

unint64_t sub_10016EFEC()
{
  result = qword_10058EE80;
  if (!qword_10058EE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058EE80);
  }

  return result;
}

unint64_t sub_10016F074()
{
  result = qword_10058EE98;
  if (!qword_10058EE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058EE98);
  }

  return result;
}

uint64_t sub_10016F0D8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_10016F134(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

unint64_t sub_10016F1A8()
{
  result = qword_10058EEA0;
  if (!qword_10058EEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058EEA0);
  }

  return result;
}

uint64_t static DNSRecords.createPeerLossRecord(for:hostname:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{

  v8 = WiFiAddress.ipv6LinkLocalAddress.getter(a1 & 0xFFFFFFFFFFFFLL);
  v10 = v9;
  v12 = v11;
  v14 = v13;
  a4[3] = &type metadata for DNSRecords.AAAA;
  a4[4] = &protocol witness table for DNSRecords.AAAA;
  result = swift_allocObject();
  *a4 = result;
  *(result + 16) = 27;
  *(result + 24) = a2;
  *(result + 32) = a3;
  *(result + 40) = 1;
  *(result + 48) = v8;
  *(result + 56) = v10;
  *(result + 64) = v12;
  *(result + 72) = v14;
  return result;
}

uint64_t static DNSRecords.createRecord(with:value:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  if (a4 >> 60 == 15)
  {
    v11 = 0;
    goto LABEL_26;
  }

  if (qword_10058A880 != -1)
  {
    swift_once();
  }

  v12 = qword_10058EEB8;
  v13 = unk_10058EEC0 >> 62;
  if ((unk_10058EEC0 >> 62) <= 1)
  {
    if (!v13)
    {
      v12 = unk_10058EEC6;
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  if (v13 != 2)
  {
    v12 = 0;
    goto LABEL_15;
  }

  v14 = *(qword_10058EEB8 + 16);
  v15 = *(qword_10058EEB8 + 24);
  v16 = __OFSUB__(v15, v14);
  v12 = v15 - v14;
  if (v16)
  {
    __break(1u);
LABEL_12:
    v16 = __OFSUB__(HIDWORD(v12), v12);
    LODWORD(v12) = HIDWORD(v12) - v12;
    if (v16)
    {
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
    }

    v12 = v12;
  }

LABEL_15:
  v17 = a4 >> 62;
  if ((a4 >> 62) <= 1)
  {
    if (!v17)
    {
      v18 = BYTE6(a4);
      goto LABEL_25;
    }

    goto LABEL_22;
  }

  if (v17 != 2)
  {
    v18 = 0;
    goto LABEL_25;
  }

  v20 = *(a3 + 16);
  v19 = *(a3 + 24);
  v16 = __OFSUB__(v19, v20);
  v18 = v19 - v20;
  if (v16)
  {
    __break(1u);
LABEL_22:
    LODWORD(v18) = HIDWORD(a3) - a3;
    if (__OFSUB__(HIDWORD(a3), a3))
    {
      goto LABEL_64;
    }

    v18 = v18;
  }

LABEL_25:
  v11 = v12 + v18;
  if (__OFADD__(v12, v18))
  {
    __break(1u);
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

LABEL_26:
  if (qword_10058A878 != -1)
  {
    swift_once();
  }

  v21 = qword_10058EEA8;
  v22 = qword_10058EEB0 >> 62;
  if ((qword_10058EEB0 >> 62) <= 1)
  {
    if (!v22)
    {
      v21 = BYTE6(qword_10058EEB0);
      goto LABEL_38;
    }

    goto LABEL_35;
  }

  if (v22 != 2)
  {
    v21 = 0;
    goto LABEL_38;
  }

  v23 = *(qword_10058EEA8 + 16);
  v24 = *(qword_10058EEA8 + 24);
  v16 = __OFSUB__(v24, v23);
  v21 = v24 - v23;
  if (v16)
  {
    __break(1u);
LABEL_35:
    v16 = __OFSUB__(HIDWORD(v21), v21);
    LODWORD(v21) = HIDWORD(v21) - v21;
    if (v16)
    {
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    v21 = v21;
  }

LABEL_38:
  v25 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v25)
    {
      v26 = BYTE6(a2);
      goto LABEL_48;
    }

    goto LABEL_45;
  }

  if (v25 != 2)
  {
    v26 = 0;
    goto LABEL_48;
  }

  v28 = *(a1 + 16);
  v27 = *(a1 + 24);
  v16 = __OFSUB__(v27, v28);
  v26 = v27 - v28;
  if (v16)
  {
    __break(1u);
LABEL_45:
    LODWORD(v26) = HIDWORD(a1) - a1;
    if (__OFSUB__(HIDWORD(a1), a1))
    {
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    v26 = v26;
  }

LABEL_48:
  v16 = __OFADD__(v21, v26);
  v29 = v21 + v26;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    v16 = __OFADD__(v29, v11);
    v11 += v29;
    if (!v16)
    {
      if ((v11 & 0x8000000000000000) == 0)
      {
        if (v11 <= 1024)
        {
          goto LABEL_52;
        }

        goto LABEL_57;
      }

      goto LABEL_60;
    }
  }

  __break(1u);
LABEL_57:
  if (!swift_stdlib_isStackAllocationSafe())
  {
    v32 = swift_slowAlloc();
    sub_100175108(v32, v32 + v11, a1, a2, a3, a4, a5);
  }

LABEL_52:
  __chkstk_darwin();
  sub_100175108(&v33 - v30, &v33 + v11 - v30, a1, a2, a3, a4, v34);
  if (v5)
  {
    return swift_willThrow();
  }

  sub_100029954(v34, v35);
  return sub_100029954(v35, a5);
}

uint64_t DNSRecords.TXT.keyData.getter()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 16);
  return sub_100171BB4(15);
}

uint64_t DNSRecords.PTR.keyData.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 33);
  v7 = xmmword_100480A90;
  sub_1001715D8(v1, v2, &v7);
  if (v3)
  {
    v5 = 28;
  }

  else
  {
    v5 = 12;
  }

  sub_100171A18(v5, &v7);
  sub_100052AD8(11, &v7, v4);
  return v7;
}

uint64_t DNSRecords.AAAA.keyData.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v15 = xmmword_100480A90;
  sub_1001715D8(v2, v3, &v15);
  if (*(&v15 + 1) >> 62 == 2)
  {
    v5 = *(v15 + 24);
  }

  v6 = sub_10005DC58(&qword_10058BA50, &qword_100480DA0);
  v13 = v6;
  v7 = sub_10000CADC(&qword_10058BA58, &qword_10058BA50, &qword_100480DA0);
  v14 = v7;
  LOBYTE(v12[0]) = -64;
  v10 = *sub_100029B34(v12, v6);
  Data._Representation.replaceSubrange(_:with:count:)();
  sub_100002A00(v12);
  if (*(&v15 + 1) >> 62 == 2)
  {
    v8 = *(v15 + 24);
  }

  v13 = v6;
  v14 = v7;
  LOBYTE(v12[0]) = 17;
  v11 = *sub_100029B34(v12, v6);
  Data._Representation.replaceSubrange(_:with:count:)();
  sub_100002A00(v12);
  sub_100052AD8(v1, &v15, v4);
  return v15;
}

unint64_t DNSRecords.AAAA.valueData.getter()
{
  v8 = *(v0 + 32);
  v7[3] = &type metadata for UnsafeRawBufferPointer;
  v7[4] = &protocol witness table for UnsafeRawBufferPointer;
  v7[0] = &v8;
  v7[1] = &v9;
  v1 = sub_100029B34(v7, &type metadata for UnsafeRawBufferPointer);
  v2 = *v1;
  if (*v1 && (v3 = v1[1], v4 = v3 - v2, v3 != v2))
  {
    if (v4 <= 14)
    {
      v5 = sub_10000AD84(v2, v3);
    }

    else if (v4 >= 0x7FFFFFFF)
    {
      v5 = sub_100178EFC(v2, v3);
    }

    else
    {
      v5 = sub_10004F46C(v2, v3);
    }
  }

  else
  {
    v5 = 0;
  }

  sub_100002A00(v7);
  return v5;
}

uint64_t DNSRecords.SRV.keyData.getter()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 16);
  return sub_100171BB4(32);
}

uint64_t DNSRecords.SRV.valueData.getter()
{
  v1 = v0;
  v33 = xmmword_100480A90;
  v2 = type metadata accessor for DNSRecords.SRV();
  LOWORD(v29) = *(v0 + v2[7]);
  v3 = sub_10004F3B0(&v29, &v29 + 2);
  v5 = v4;
  v31 = &type metadata for Data;
  v32 = &protocol witness table for Data;
  v29 = v3;
  v30 = v4;
  v6 = sub_100029B34(&v29, &type metadata for Data);
  v7 = *v6;
  v8 = v6[1];
  sub_10000AB0C(v3, v5);
  sub_100178A18(v7, v8);
  sub_1000124C8(v3, v5);
  sub_100002A00(&v29);
  LOWORD(v29) = *(v1 + v2[8]);
  v9 = sub_10004F3B0(&v29, &v29 + 2);
  v11 = v10;
  v31 = &type metadata for Data;
  v32 = &protocol witness table for Data;
  v29 = v9;
  v30 = v10;
  v12 = sub_100029B34(&v29, &type metadata for Data);
  v13 = *v12;
  v14 = v12[1];
  sub_10000AB0C(v9, v11);
  sub_100178A18(v13, v14);
  sub_1000124C8(v9, v11);
  sub_100002A00(&v29);
  v15 = v1 + v2[5];
  LOWORD(v29) = bswap32(NWEndpoint.Port.rawValue.getter()) >> 16;
  v16 = sub_10004F3B0(&v29, &v29 + 2);
  v18 = v17;
  v31 = &type metadata for Data;
  v32 = &protocol witness table for Data;
  v29 = v16;
  v30 = v17;
  v19 = sub_100029B34(&v29, &type metadata for Data);
  v20 = *v19;
  v21 = v19[1];
  sub_10000AB0C(v16, v18);
  sub_100178A18(v20, v21);
  sub_1000124C8(v16, v18);
  sub_100002A00(&v29);
  sub_1001715D8(*(v1 + v2[6]), *(v1 + v2[6] + 8), &v33);
  if (*(&v33 + 1) >> 62 == 2)
  {
    v22 = *(v33 + 24);
  }

  v23 = sub_10005DC58(&qword_10058BA50, &qword_100480DA0);
  v31 = v23;
  v24 = sub_10000CADC(&qword_10058BA58, &qword_10058BA50, &qword_100480DA0);
  v32 = v24;
  LOBYTE(v29) = -64;
  v27 = *sub_100029B34(&v29, v23);
  Data._Representation.replaceSubrange(_:with:count:)();
  sub_100002A00(&v29);
  if (*(&v33 + 1) >> 62 == 2)
  {
    v25 = *(v33 + 24);
  }

  v31 = v23;
  v32 = v24;
  LOBYTE(v29) = 17;
  v28 = *sub_100029B34(&v29, v23);
  Data._Representation.replaceSubrange(_:with:count:)();
  sub_100002A00(&v29);
  return v33;
}

uint64_t DNSRecords.AAAA.init(host:address:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  return result;
}

uint64_t sub_10016FD40(uint64_t a1, unint64_t a2)
{
  *&v40 = a1;
  *(&v40 + 1) = a2;

  sub_10005DC58(&qword_10058D3F8, &unk_1004869D0);
  if (swift_dynamicCast())
  {
    sub_100029954(v38, &v41);
    sub_100029B34(&v41, v42);
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    v38[0] = v40;
    sub_100002A00(&v41);
    goto LABEL_63;
  }

  v39 = 0;
  memset(v38, 0, sizeof(v38));
  sub_100016290(v38, &unk_10059B0D0, &unk_1004B4D10);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&v38[0] = a1;
    *(&v38[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = v38;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = _StringObject.sharedUTF8.getter();
  }

  sub_100142BEC(v4, v5, &v41);
  v6 = *(&v41 + 1);
  v7 = v41;
  if (*(&v41 + 1) >> 60 != 15)
  {
    v38[0] = v41;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&v38[0] = sub_10014345C(v8);
  *(&v38[0] + 1) = v9;
  __chkstk_darwin();
  v10 = sub_10029CD98(sub_1001799D0);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&v38[0] + 1) >> 62;
  if ((*(&v38[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&v38[0] + 16);
      v18 = *(*&v38[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(v38[0]), v38[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(v38[0]) - LODWORD(v38[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&v38[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&v38[0] >> 32;
      }

      else
      {
        v22 = BYTE14(v38[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        Data._Representation.replaceSubrange(_:with:count:)();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(v38[0]))
  {
    goto LABEL_23;
  }

  v35 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v40 + 7) = 0;
  *&v40 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v34 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v36 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v37 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_10029C95C(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = String.UTF8View._foreignCount()();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = String.UTF8View._foreignSubscript(position:)();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v41 = v14;
      *(&v41 + 1) = v37;
      v31 = *(&v41 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v36;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = _StringObject.sharedUTF8.getter();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_10029C95C(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = String.UTF8View._foreignIndex(after:)();
LABEL_52:
    *(&v40 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v41 = v40;
      *(&v41 + 6) = *(&v40 + 6);
      Data._Representation.append(contentsOf:)();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v34;
  if (v24)
  {
    *&v41 = v40;
    *(&v41 + 6) = *(&v40 + 6);
    Data._Representation.append(contentsOf:)();
    sub_100017554(v35, v34);
    goto LABEL_62;
  }

LABEL_57:

  sub_100017554(v35, v6);
LABEL_63:
  v32 = v38[0];
  sub_10000AB0C(*&v38[0], *(&v38[0] + 1));

  sub_1000124C8(v32, *(&v32 + 1));
  return v32;
}

unint64_t sub_100170260(uint64_t a1, uint64_t a2)
{
  v10[3] = &type metadata for UnsafeMutableRawBufferPointer;
  v10[4] = &protocol witness table for UnsafeMutableRawBufferPointer;
  v10[0] = a1;
  v10[1] = a2;
  v2 = sub_100029B34(v10, &type metadata for UnsafeMutableRawBufferPointer);
  v3 = *v2;
  if (*v2)
  {
    v4 = v2[1];
    v5 = &v4[-v3];
    if (v4 == v3)
    {
      v3 = 0;
    }

    else if (v5 <= 14)
    {
      v3 = sub_10000AD84(*v2, v4);
    }

    else
    {
      v7 = type metadata accessor for __DataStorage();
      v8 = *(v7 + 48);
      v9 = *(v7 + 52);
      swift_allocObject();
      __DataStorage.init(bytes:length:)();
      if (v5 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        v3 = swift_allocObject();
        *(v3 + 16) = 0;
        *(v3 + 24) = v5;
      }

      else
      {
        v3 = v5 << 32;
      }
    }
  }

  sub_100002A00(v10);
  return v3;
}

uint64_t sub_100170360(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return String.subscript.getter();
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1001703A8(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return String.subscript.getter();
  }

  __break(1u);
  return result;
}

BOOL static DNSRecords.PTR.== infix(_:_:)(__int128 *a1, __int128 *a2)
{
  v6 = *a2;
  v7 = *a1;
  sub_10005E2E4();
  return !StringProtocol.caseInsensitiveCompare<A>(_:)() && sub_100178C7C(*(a1 + 2), *(a1 + 3), *(a1 + 32) | (*(a1 + 33) << 8), *(a2 + 2), *(a2 + 3), *(a2 + 32) | (*(a2 + 33) << 8));
}

uint64_t static DNSRecords.TXT.__derived_struct_equals(_:_:)(__int128 *a1, __int128 *a2)
{
  v4 = *(a1 + 3);
  v13 = *(a1 + 2);
  v5 = *(a1 + 32);
  v6 = *(a1 + 33);
  v14 = *a2;
  v15 = *a1;
  v7 = *(a2 + 2);
  v8 = *(a2 + 3);
  v9 = *(a2 + 32);
  v10 = *(a2 + 33);
  sub_10005E2E4();
  if (StringProtocol.caseInsensitiveCompare<A>(_:)() || !sub_100178C7C(v13, v4, v5 & 1 | (v6 << 8), v7, v8, v9 & 1 | (v10 << 8)))
  {
    v11 = 0;
  }

  else
  {
    v11 = _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(*(a1 + 5), *(a1 + 6), *(a2 + 5), *(a2 + 6));
  }

  return v11 & 1;
}

uint64_t AWDLActionFrame.ServiceResponse.encode(to:)(void *a1)
{
  v3 = v2;
  v4 = v1;
  v125 = a1;
  v126 = type metadata accessor for DNSRecords.SRV();
  v5 = *(*(v126 - 8) + 64);
  __chkstk_darwin();
  v7 = &v119 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*(type metadata accessor for AWDLActionFrame.ServiceResponse(0) - 8) + 64);
  __chkstk_darwin();
  v10 = &v119 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100033AA8(_swiftEmptyArrayStorage);
  type metadata accessor for BinaryEncoder();
  v12 = swift_allocObject();
  v130 = xmmword_100480A90;
  *(v12 + 16) = xmmword_100480A90;
  v124 = v12 + 16;
  *(v12 + 32) = v11;
  v13 = sub_100033AA8(_swiftEmptyArrayStorage);
  v14 = swift_allocObject();
  *(v14 + 16) = v130;
  v123 = v14 + 16;
  *(v14 + 32) = v13;
  v15 = swift_allocObject();
  v15[5] = &type metadata for BinaryEncoder.UnkeyedContainer;
  v16 = sub_1000D12E4();
  v129 = v12;
  v15[2] = v12;
  v127 = v15 + 2;
  v15[6] = v16;
  sub_10017904C(v4, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v128 = v14;
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v7 = v2;
      v19 = *v10;
      v18 = *(v10 + 1);
      v20 = *(v10 + 3);
      v121 = *(v10 + 2);
      v126 = v20;
      v120 = v10[32];
      v119 = v10[33];
      v21 = *(v10 + 5);
      v122 = *(v10 + 6);
      v22 = v127;
      swift_beginAccess();
      v23 = v15;
      v24 = v15[5];
      v25 = v15[6];
      sub_100031694(v22, v24);

      v26._countAndFlagsBits = v19;
      v26._object = v18;
      UnkeyedEncodingContainer.encodeStringWithUInt8SizePrefix(_:)(v26);
      *&v130 = v27;
      if (!v27)
      {
        v32 = v21;
        v39 = v122;
        swift_endAccess();

        v40 = v120 | (v119 << 8);
        v41 = v126;

        v42 = v40;
        v43 = v130;
        sub_1001785BC(v121, v41, v42, v23);
        v15 = v23;
        *&v130 = v43;
        if (!v43)
        {
          v121 = v18;

          v138 = &type metadata for BinaryEncoder.UnkeyedContainer;
          v139 = v16;
          *&v137 = v128;

          v44 = v127;
          sub_100002A00(v127);
          sub_100029954(&v137, v44);
          v135 = v21;
          v136 = v39;
          swift_beginAccess();
          v50 = *(v23 + 48);
          sub_100031694(v44, v15[5]);
          sub_10000AB0C(v21, v39);
          sub_1000B8088();
          v51 = v130;
          dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
          *&v130 = v51;
          if (!v51)
          {
            swift_endAccess();

            sub_1000124C8(v21, v39);
            sub_1000124C8(v135, v136);
            i = 15;
            goto LABEL_29;
          }

          swift_endAccess();

          sub_1000124C8(v21, v39);

          sub_1000124C8(v135, v136);
        }

        swift_bridgeObjectRelease_n();
        sub_1000124C8(v21, v39);

LABEL_8:
      }

      swift_endAccess();

      swift_bridgeObjectRelease_n();
      sub_1000124C8(v21, v122);
LABEL_5:

      goto LABEL_8;
    }

    sub_10004AF10(v10, v7, type metadata accessor for DNSRecords.SRV);
    v33 = *v7;
    v34 = *(v7 + 1);
    v35 = v127;
    swift_beginAccess();
    v32 = v15;
    v36 = v15[6];
    sub_100031694(v35, v15[5]);

    v37._countAndFlagsBits = v33;
    v37._object = v34;
    UnkeyedEncodingContainer.encodeStringWithUInt8SizePrefix(_:)(v37);
    *&v130 = v38;
    if (!v38)
    {
      swift_endAccess();
      v49 = v130;
      sub_1001785BC(*(v7 + 2), *(v7 + 3), v7[32] | (v7[33] << 8), v15);
      *&v130 = v49;
      if (v49)
      {
        goto LABEL_16;
      }

      v138 = &type metadata for BinaryEncoder.UnkeyedContainer;
      v139 = v16;
      *&v137 = v128;

      v55 = v127;
      sub_100002A00(v127);
      sub_100029954(&v137, v55);
      i = v126;
      v57 = *&v7[*(v126 + 28)];
      swift_beginAccess();
      v58 = v15[6];
      sub_100031694(v55, v32[5]);
      v59 = v130;
      dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
      *&v130 = v59;
      if (v59)
      {
        swift_endAccess();

        goto LABEL_17;
      }

      swift_endAccess();
      v60 = *&v7[*(i + 32)];
      v61 = v127;
      swift_beginAccess();
      v62 = v32[6];
      sub_100031694(v61, v32[5]);
      v63 = v130;
      dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
      *&v130 = v63;
      if (!v63)
      {
        goto LABEL_36;
      }
    }

    swift_endAccess();
LABEL_16:

LABEL_17:

    sub_100083834(v7);
  }

  v28 = *v10;
  v29 = *(v10 + 1);
  v30 = *(v10 + 2);
  v7 = *(v10 + 3);
  v31 = v10[32] | (v10[33] << 8);
  v32 = v129;

  sub_1001785BC(v30, v7, v31, v15);
  *&v130 = v3;
  if (v3)
  {

    goto LABEL_8;
  }

  v138 = &type metadata for BinaryEncoder.UnkeyedContainer;
  v139 = v16;
  *&v137 = v128;
  v44 = v127;
  swift_beginAccess();

  sub_100002A00(v44);
  sub_100029954(&v137, v44);
  swift_beginAccess();
  v45 = v15[6];
  sub_100031694(v44, v15[5]);
  v46._countAndFlagsBits = v28;
  v46._object = v29;
  UnkeyedEncodingContainer.encodeStringWithUInt8SizePrefix(_:)(v46);
  if (v47)
  {
    swift_endAccess();

    *&v130 = v47;
    return result;
  }

  swift_endAccess();

  swift_beginAccess();
  v52 = v15[6];
  sub_100031694(v44, v15[5]);
  dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
  swift_endAccess();
  *&v130 = 0;
  swift_beginAccess();
  v53 = v15[6];
  sub_100031694(v44, v15[5]);
  v54 = v130;
  dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
  swift_endAccess();
  *&v130 = v54;
  if (v54)
  {
    goto LABEL_5;
  }

  for (i = 11; ; i = 32)
  {
LABEL_29:
    v64 = v125[4];
    sub_100029B34(v125, v125[3]);
    dispatch thunk of Encoder.unkeyedContainer()();
    swift_beginAccess();
    sub_100002A00(v44);
    sub_100029954(&v137, v44);
    swift_beginAccess();
    v65 = *(v129 + 16);
    v66 = *(v129 + 24);
    v67 = v66 >> 62;
    if ((v66 >> 62) <= 1)
    {
      if (v67)
      {
        v72 = __OFSUB__(HIDWORD(v65), v65);
        v79 = HIDWORD(v65) - v65;
        if (v72)
        {
          goto LABEL_74;
        }

        v68 = v79;
      }

      else
      {
        v68 = BYTE6(v66);
      }

LABEL_40:
      v80 = v68 + 1;
      if (__OFADD__(v68, 1))
      {
        __break(1u);
      }

      else if ((v80 & 0x8000000000000000) == 0)
      {
        if (!(v80 >> 16))
        {
          swift_beginAccess();
          v81 = v15;
          v82 = v15[5];
          v83 = v15[6];
          sub_100031694(v44, v82);
          v84 = v130;
          dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
          *&v130 = v84;
          if (v84)
          {
            swift_endAccess();
          }

          swift_endAccess();
          v86 = *(v129 + 24);
          v133 = *(v129 + 16);
          v85 = v133;
          v134 = v86;
          swift_beginAccess();
          v87 = v81[6];
          sub_100031694(v44, v81[5]);
          sub_10000AB0C(v85, v86);
          sub_1000B8088();
          v88 = v130;
          dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
          *&v130 = v88;
          if (v88)
          {
            swift_endAccess();

            sub_1000124C8(v133, v134);
          }

          swift_endAccess();
          sub_1000124C8(v133, v134);
          v89 = v127;
          swift_beginAccess();
          v103 = v81[6];
          sub_100031694(v89, v81[5]);
          v104 = v130;
          dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
          *&v130 = v104;
          if (v104)
          {
LABEL_68:
            swift_endAccess();

            goto LABEL_8;
          }

          swift_endAccess();
          result = swift_beginAccess();
          v105 = *(v128 + 16);
          v106 = *(v128 + 24) >> 62;
          if (v106 > 1)
          {
            if (v106 != 2)
            {
LABEL_66:
              swift_beginAccess();
              v111 = v81[6];
              sub_100031694(v89, v81[5]);
              v112 = v130;
              dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
              *&v130 = v112;
              if (!v112)
              {
                swift_endAccess();
                swift_beginAccess();
                v113 = v81[6];
                sub_100031694(v89, v81[5]);
                v114 = v130;
                dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
                *&v130 = v114;
                if (!v114)
                {
                  swift_endAccess();
                  v116 = *(v128 + 24);
                  v131 = *(v128 + 16);
                  v115 = v131;
                  v132 = v116;
                  swift_beginAccess();
                  v117 = v81[6];
                  sub_100031694(v89, v81[5]);
                  sub_10000AB0C(v115, v116);
                  v118 = v130;
                  dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
                  *&v130 = v118;
                  swift_endAccess();

                  sub_1000124C8(v131, v132);
                }
              }

              goto LABEL_68;
            }

            v108 = v105 + 16;
            v105 = *(v105 + 16);
            v107 = *(v108 + 8);
            v109 = v107 - v105;
            if (!__OFSUB__(v107, v105))
            {
              goto LABEL_64;
            }

            __break(1u);
          }

          else if (!v106)
          {
            goto LABEL_66;
          }

          v72 = __OFSUB__(HIDWORD(v105), v105);
          v110 = HIDWORD(v105) - v105;
          if (v72)
          {
            goto LABEL_77;
          }

          v109 = v110;
LABEL_64:
          if ((v109 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (!(v109 >> 16))
          {
            goto LABEL_66;
          }

          __break(1u);
LABEL_77:
          __break(1u);
          return result;
        }

        goto LABEL_73;
      }

      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
    }

    v68 = 0;
    if (v67 != 2)
    {
      goto LABEL_40;
    }

    v71 = v65 + 16;
    v69 = *(v65 + 16);
    v70 = *(v71 + 8);
    v72 = __OFSUB__(v70, v69);
    v68 = v70 - v69;
    if (!v72)
    {
      goto LABEL_40;
    }

    __break(1u);
LABEL_36:
    swift_endAccess();
    v73 = &v7[*(i + 20)];
    LOWORD(v137) = bswap32(NWEndpoint.Port.rawValue.getter()) >> 16;
    v135 = sub_10004F3B0(&v137, &v137 + 2);
    v136 = v74;
    v75 = v127;
    swift_beginAccess();
    v76 = v32[6];
    sub_100031694(v75, v32[5]);
    sub_1000B8088();
    v77 = v130;
    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
    v78 = v32;
    *&v130 = v77;
    if (v77)
    {
      swift_endAccess();

      sub_1000124C8(v135, v136);
      goto LABEL_50;
    }

    swift_endAccess();
    sub_1000124C8(v135, v136);
    v90 = &v7[*(i + 24)];
    v91 = *v90;
    v92 = v90[1];
    v93 = v127;
    swift_beginAccess();
    v94 = v32[6];
    sub_100031694(v93, v32[5]);
    v95._countAndFlagsBits = v91;
    v95._object = v92;
    UnkeyedEncodingContainer.encodeStringWithUInt8SizePrefix(_:)(v95);
    *&v130 = v96;
    if (v96)
    {
      break;
    }

    swift_endAccess();
    v97 = v127;
    swift_beginAccess();
    v98 = v32[6];
    sub_100031694(v97, v32[5]);
    v99 = v130;
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    v15 = v32;
    v32 = v129;
    *&v130 = v99;
    if (v99)
    {
      goto LABEL_53;
    }

    swift_endAccess();
    v100 = v127;
    swift_beginAccess();
    v101 = v78[6];
    sub_100031694(v100, v78[5]);
    v102 = v130;
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    *&v130 = v102;
    if (v102)
    {
LABEL_53:
      swift_endAccess();

      sub_100083834(v7);
    }

    swift_endAccess();
    sub_100083834(v7);
    v44 = v127;
  }

  swift_endAccess();

LABEL_50:
  sub_100083834(v7);
}

uint64_t sub_1001715D8(uint64_t a1, unint64_t a2, void *a3)
{

  v6 = sub_10016FD40(a1, a2);
  v8 = v6;
  v9 = v7;
  v10 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    LOBYTE(v11) = 0;
    if (v10 != 2)
    {
      goto LABEL_22;
    }

    v13 = *(v6 + 16);
    v12 = *(v6 + 24);
    v14 = __OFSUB__(v12, v13);
    v15 = v12 - v13;
    if (v14)
    {
      goto LABEL_26;
    }

    if (v15 < 64)
    {
      goto LABEL_8;
    }

    goto LABEL_14;
  }

  if (!v10)
  {
    if (BYTE6(v7) >= 0x40uLL)
    {
      goto LABEL_14;
    }

    goto LABEL_8;
  }

  if (__OFSUB__(HIDWORD(v6), v6))
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  if (HIDWORD(v6) - v6 >= 64)
  {
LABEL_14:

    return sub_1000124C8(v6, v7);
  }

LABEL_8:
  if (v10 == 2)
  {
    v18 = *(v6 + 16);
    v17 = *(v6 + 24);
    v11 = v17 - v18;
    if (__OFSUB__(v17, v18))
    {
      goto LABEL_29;
    }
  }

  else
  {
    if (v10 != 1)
    {
LABEL_21:
      v11 = HIWORD(v7);
      goto LABEL_22;
    }

    if (__OFSUB__(HIDWORD(v6), v6))
    {
      goto LABEL_28;
    }

    v11 = HIDWORD(v6) - v6;
  }

  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v11 > 0xFF)
  {
    __break(1u);
    goto LABEL_21;
  }

LABEL_22:
  if (a3[1] >> 62 == 2)
  {
    v19 = *(*a3 + 24);
  }

  v23 = sub_10005DC58(&qword_10058BA50, &qword_100480DA0);
  v24 = sub_10000CADC(&qword_10058BA58, &qword_10058BA50, &qword_100480DA0);
  LOBYTE(v22[0]) = v11;
  v21 = *sub_100029B34(v22, v23);
  Data._Representation.replaceSubrange(_:with:count:)();
  sub_100002A00(v22);
  v23 = &type metadata for Data;
  v24 = &protocol witness table for Data;
  v22[0] = v8;
  v22[1] = v9;
  v20 = sub_100029B34(v22, &type metadata for Data);
  sub_100178A18(*v20, v20[1]);
  return sub_100002A00(v22);
}

uint64_t sub_10017185C(char a1, void *a2)
{
  LOWORD(v15[0]) = word_10048F70C[a1];
  v4 = sub_10004F3B0(v15, v15 + 2);
  v6 = v5;
  v16 = &type metadata for Data;
  v17 = &protocol witness table for Data;
  v15[0] = v4;
  v15[1] = v5;
  v7 = sub_100029B34(v15, &type metadata for Data);
  v8 = *v7;
  v9 = v7[1];
  sub_10000AB0C(v4, v6);
  sub_100178A18(v8, v9);
  sub_1000124C8(v4, v6);
  sub_100002A00(v15);
  if (a2[1] >> 62 == 2)
  {
    v10 = *(*a2 + 24);
  }

  v11 = *(v2 + 24);
  v12 = sub_10005DC58(&qword_10058BA50, &qword_100480DA0);
  v16 = v12;
  v17 = sub_10000CADC(&qword_10058BA58, &qword_10058BA50, &qword_100480DA0);
  LOBYTE(v15[0]) = v11;
  v14 = *sub_100029B34(v15, v12);
  Data._Representation.replaceSubrange(_:with:count:)();
  return sub_100002A00(v15);
}

uint64_t sub_100171A18(char a1, void *a2)
{
  if (a2[1] >> 62 == 2)
  {
    v4 = *(*a2 + 24);
  }

  v5 = sub_10005DC58(&qword_10058BA50, &qword_100480DA0);
  v12 = v5;
  v6 = sub_10000CADC(&qword_10058BA58, &qword_10058BA50, &qword_100480DA0);
  v13 = v6;
  LOBYTE(v11[0]) = -64;
  v9 = *sub_100029B34(v11, v5);
  Data._Representation.replaceSubrange(_:with:count:)();
  sub_100002A00(v11);
  if (a2[1] >> 62 == 2)
  {
    v7 = *(*a2 + 24);
  }

  v12 = v5;
  v13 = v6;
  LOBYTE(v11[0]) = a1;
  v10 = *sub_100029B34(v11, v5);
  Data._Representation.replaceSubrange(_:with:count:)();
  return sub_100002A00(v11);
}

uint64_t sub_100171BB4(char a1)
{
  v16 = xmmword_100480A90;
  sub_1001715D8(*v1, *(v1 + 8), &v16);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 33);
  v13 = xmmword_100480A90;
  sub_1001715D8(v3, v4, &v13);
  if (v5)
  {
    v7 = 28;
  }

  else
  {
    v7 = 12;
  }

  sub_100171A18(v7, &v13);
  sub_100052AD8(a1, &v13, v6);
  v8 = v13;
  v14 = &type metadata for Data;
  v15 = &protocol witness table for Data;
  v9 = sub_100029B34(&v13, &type metadata for Data);
  v10 = *v9;
  v11 = v9[1];
  sub_10000AB0C(v8, *(&v8 + 1));
  sub_100178A18(v10, v11);
  sub_1000124C8(v8, *(&v8 + 1));
  sub_100002A00(&v13);
  return v16;
}

uint64_t sub_100171CA4()
{
  v2 = *(v0 + 8);
  v3 = *(v0 + 24);
  v4 = *(v0 + 40);
  return sub_100171BB4(*v0);
}

uint64_t sub_100171CF0()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40) | (*(v0 + 41) << 8);

  return v1;
}

uint64_t DNSRecords.BrowseHost.keyData.getter(char a1, uint64_t a2, unint64_t a3, char a4)
{
  v16 = xmmword_100480A90;
  sub_1001715D8(a2, a3, &v16);
  if (*(&v16 + 1) >> 62 == 2)
  {
    v6 = *(v16 + 24);
  }

  v7 = sub_10005DC58(&qword_10058BA50, &qword_100480DA0);
  v14 = v7;
  v8 = sub_10000CADC(&qword_10058BA58, &qword_10058BA50, &qword_100480DA0);
  v15 = v8;
  LOBYTE(v13[0]) = -64;
  v11 = *sub_100029B34(v13, v7);
  Data._Representation.replaceSubrange(_:with:count:)();
  sub_100002A00(v13);
  if (*(&v16 + 1) >> 62 == 2)
  {
    v9 = *(v16 + 24);
  }

  v14 = v7;
  v15 = v8;
  LOBYTE(v13[0]) = 17;
  v12 = *sub_100029B34(v13, v7);
  Data._Representation.replaceSubrange(_:with:count:)();
  sub_100002A00(v13);
  sub_100052AD8(a1, &v16, a4);
  return v16;
}

BOOL static DNSRecords.BrowseHost.__derived_struct_equals(_:_:)(char a1, uint64_t a2, uint64_t a3, char a4, char a5, uint64_t a6, uint64_t a7, char a8)
{
  if (word_10048F68A[a1] == word_10048F68A[a5] && (a2 == a6 && a3 == a7 || (v8 = a4, v9 = a8, v10 = _stringCompareWithSmolCheck(_:_:expecting:)(), a4 = v8, a8 = v9, (v10 & 1) != 0)))
  {
    return a4 == a8;
  }

  else
  {
    return 0;
  }
}

void DNSRecords.BrowseHost.hash(into:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, Swift::UInt8 a5)
{
  Hasher._combine(_:)(word_10048F68A[a2]);
  String.hash(into:)();
  Hasher._combine(_:)(a5);
}

Swift::Int DNSRecords.BrowseHost.hashValue.getter(char a1, uint64_t a2, uint64_t a3, Swift::UInt8 a4)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(word_10048F68A[a1]);
  String.hash(into:)();
  Hasher._combine(_:)(a4);
  return Hasher._finalize()();
}

Swift::Int sub_10017209C()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  v4 = v0[24];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(word_10048F68A[v1]);
  String.hash(into:)();
  Hasher._combine(_:)(v4);
  return Hasher._finalize()();
}

void sub_100172120()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 2);
  v3 = v0[24];
  Hasher._combine(_:)(word_10048F68A[*v0]);
  String.hash(into:)();
  Hasher._combine(_:)(v3);
}

Swift::Int sub_100172188()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  v4 = v0[24];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(word_10048F68A[v1]);
  String.hash(into:)();
  Hasher._combine(_:)(v4);
  return Hasher._finalize()();
}

uint64_t sub_100172208()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *v0;
  v6 = xmmword_100480A90;
  sub_1001715D8(v1, v2, &v6);
  sub_100171A18(17, &v6);
  sub_100052AD8(v4, &v6, v3);
  return v6;
}

BOOL sub_10017226C(char *a1, char *a2)
{
  if (word_10048F68A[*a1] != word_10048F68A[*a2])
  {
    return 0;
  }

  v2 = a1[24];
  v3 = a2[24];
  v4 = *(a1 + 1) == *(a2 + 1) && *(a1 + 2) == *(a2 + 2);
  return (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0) && v2 == v3;
}

uint64_t DNSRecords.Identifier.keyData.getter(uint64_t a1, unint64_t a2, __int16 a3)
{
  v6 = xmmword_100480A90;
  sub_1001715D8(a1, a2, &v6);
  if (a3)
  {
    v4 = 28;
  }

  else
  {
    v4 = 12;
  }

  sub_100171A18(v4, &v6);
  sub_100052AD8(11, &v6, SHIBYTE(a3));
  return v6;
}

void DNSRecords.Identifier.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  v4 = HIBYTE(a4);
  String.lowercased()();
  String.hash(into:)();

  String.hash(into:)();

  Hasher._combine(_:)(v4);
}

uint64_t sub_1001724B4()
{
  v0 = sub_100061810(&off_100556440);
  result = swift_arrayDestroy();
  static DNSRecords.Identifier.allKnownIdentifiers = v0;
  return result;
}

uint64_t *DNSRecords.Identifier.allKnownIdentifiers.unsafeMutableAddressor()
{
  if (qword_10058A868 != -1)
  {
    swift_once();
  }

  return &static DNSRecords.Identifier.allKnownIdentifiers;
}

uint64_t sub_1001727E0()
{
  v0 = sub_100061810(&off_100556568);
  result = swift_arrayDestroy();
  static DNSRecords.Identifier.deniedList = v0;
  return result;
}

uint64_t *DNSRecords.Identifier.deniedList.unsafeMutableAddressor()
{
  if (qword_10058A870 != -1)
  {
    swift_once();
  }

  return &static DNSRecords.Identifier.deniedList;
}

Swift::Int DNSRecords.Identifier.hashValue.getter(uint64_t a1, uint64_t a2, __int16 a3)
{
  v3 = HIBYTE(a3);
  Hasher.init(_seed:)();
  String.lowercased()();
  String.hash(into:)();

  String.hash(into:)();

  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

Swift::Int sub_100172950()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = *(v0 + 17);
  Hasher.init(_seed:)();
  String.lowercased()();
  String.hash(into:)();

  String.hash(into:)();

  Hasher._combine(_:)(v4);
  return Hasher._finalize()();
}

void sub_100172A04()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = *(v0 + 17);
  String.lowercased()();
  String.hash(into:)();

  String.hash(into:)();

  Hasher._combine(_:)(v4);
}

Swift::Int sub_100172A90()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = *(v0 + 17);
  Hasher.init(_seed:)();
  String.lowercased()();
  String.hash(into:)();

  String.hash(into:)();

  Hasher._combine(_:)(v4);
  return Hasher._finalize()();
}

uint64_t sub_100172B40()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 17);
  v7 = xmmword_100480A90;
  sub_1001715D8(v1, v2, &v7);
  if (v3)
  {
    v5 = 28;
  }

  else
  {
    v5 = 12;
  }

  sub_100171A18(v5, &v7);
  sub_100052AD8(11, &v7, v4);
  return v7;
}

uint64_t sub_100172BB8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16) | (*(v0 + 17) << 8);

  return v1;
}

uint64_t DNSRecords.SRV.service.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32) | (*(v0 + 33) << 8);

  return v1;
}

uint64_t DNSRecords.PTR.identifier.setter(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v4 = a3;
  v7 = a3 >> 8;
  v8 = *(v3 + 24);

  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = v4 & 1;
  *(v3 + 33) = v7;
  return result;
}

void DNSRecords.PTR.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  String.lowercased()();
  String.hash(into:)();

  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  v6 = *(v0 + 33);
  String.lowercased()();
  String.hash(into:)();

  String.hash(into:)();

  Hasher._combine(_:)(v6);
}

Swift::Int DNSRecords.PTR.hashValue.getter()
{
  Hasher.init(_seed:)();
  v1 = *v0;
  v2 = v0[1];
  String.lowercased()();
  String.hash(into:)();

  v3 = v0[2];
  v4 = v0[3];
  v7 = *(v0 + 32);
  v5 = *(v0 + 33);
  String.lowercased()();
  String.hash(into:)();

  String.hash(into:)();

  Hasher._combine(_:)(v5);
  return Hasher._finalize()();
}

void sub_100172FBC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  v6 = *(v0 + 33);
  String.lowercased()();
  String.hash(into:)();

  String.lowercased()();
  String.hash(into:)();

  String.hash(into:)();

  Hasher._combine(_:)(v6);
}

Swift::Int sub_100173080()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  v6 = *(v0 + 33);
  Hasher.init(_seed:)();
  String.lowercased()();
  String.hash(into:)();

  String.lowercased()();
  String.hash(into:)();

  String.hash(into:)();

  Hasher._combine(_:)(v6);
  return Hasher._finalize()();
}

uint64_t sub_100173168()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 33);
  v7 = xmmword_100480A90;
  sub_1001715D8(v1, v2, &v7);
  if (v3)
  {
    v5 = 28;
  }

  else
  {
    v5 = 12;
  }

  sub_100171A18(v5, &v7);
  sub_100052AD8(11, &v7, v4);
  return v7;
}

BOOL sub_1001731E4(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = *(a1 + 32);
  v5 = *(a1 + 33);
  v6 = a2[2];
  v7 = a2[3];
  v8 = *(a2 + 32);
  v9 = *(a2 + 33);
  v14 = *a1;
  v15 = a1[1];
  v12 = *a2;
  v13 = a2[1];
  sub_10005E2E4();
  return !StringProtocol.caseInsensitiveCompare<A>(_:)() && sub_100178C7C(v2, v3, v4 | (v5 << 8), v6, v7, v8 | (v9 << 8));
}

uint64_t DNSRecords.TXT.name.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 33);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 33) = v6;
}

__n128 DNSRecords.TXT.name.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  v4 = *(v1 + 24);

  result = *a1;
  v6 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v6;
  *(v1 + 32) = *(a1 + 32);
  return result;
}

uint64_t DNSRecords.TXT.userInfo.getter()
{
  v1 = *(v0 + 40);
  sub_10000AB0C(v1, *(v0 + 48));
  return v1;
}

uint64_t DNSRecords.TXT.userInfo.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1000124C8(*(v2 + 40), *(v2 + 48));
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t DNSRecords.TXT.service.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32) & 1 | (*(v0 + 33) << 8);

  return v1;
}

uint64_t DNSRecords.TXT.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  v6 = *(v0 + 33);
  String.lowercased()();
  String.hash(into:)();

  String.lowercased()();
  String.hash(into:)();

  String.hash(into:)();

  Hasher._combine(_:)(v6);
  v7 = v0[5];
  v8 = v0[6];

  return Data.hash(into:)();
}

Swift::Int DNSRecords.TXT.hashValue.getter()
{
  v1 = v0;
  Hasher.init(_seed:)();
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v1[3];
  v6 = *(v1 + 32);
  v7 = *(v1 + 33);
  String.lowercased()();
  String.hash(into:)();

  String.lowercased()();
  String.hash(into:)();

  String.hash(into:)();

  Hasher._combine(_:)(v7);
  v8 = v1[5];
  v9 = v1[6];
  Data.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1001735CC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  v6 = v0[5];
  v7 = v0[6];
  v8 = *(v0 + 33);
  String.lowercased()();
  String.hash(into:)();

  String.lowercased()();
  String.hash(into:)();

  String.hash(into:)();

  Hasher._combine(_:)(v8);

  return Data.hash(into:)();
}

Swift::Int sub_1001736B8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  v6 = v0[5];
  v7 = v0[6];
  v8 = *(v0 + 33);
  Hasher.init(_seed:)();
  String.lowercased()();
  String.hash(into:)();

  String.lowercased()();
  String.hash(into:)();

  String.hash(into:)();

  Hasher._combine(_:)(v8);
  Data.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1001737BC(uint64_t *a1, uint64_t *a2)
{
  v14 = a1[3];
  v15 = a1[2];
  v13 = *(a1 + 32);
  v2 = *(a1 + 33);
  v3 = a1[5];
  v4 = a1[6];
  v5 = a2[2];
  v6 = a2[3];
  v7 = *(a2 + 32);
  v8 = *(a2 + 33);
  v9 = a2[5];
  v10 = a2[6];
  v18 = *a1;
  v19 = a1[1];
  v16 = *a2;
  v17 = a2[1];
  sub_10005E2E4();
  if (StringProtocol.caseInsensitiveCompare<A>(_:)() || !sub_100178C7C(v15, v14, v13 | (v2 << 8), v5, v6, v7 | (v8 << 8)))
  {
    v11 = 0;
  }

  else
  {
    v11 = _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v3, v4, v9, v10);
  }

  return v11 & 1;
}

uint64_t DNSRecords.SRV.portNumber.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DNSRecords.SRV() + 20);
  v4 = type metadata accessor for NWEndpoint.Port();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t DNSRecords.SRV.portNumber.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for DNSRecords.SRV() + 20);
  v4 = type metadata accessor for NWEndpoint.Port();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t DNSRecords.SRV.hostname.getter()
{
  v1 = (v0 + *(type metadata accessor for DNSRecords.SRV() + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t DNSRecords.SRV.hostname.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for DNSRecords.SRV() + 24));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t DNSRecords.SRV.weight.setter(__int16 a1)
{
  result = type metadata accessor for DNSRecords.SRV();
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t DNSRecords.SRV.priority.setter(__int16 a1)
{
  result = type metadata accessor for DNSRecords.SRV();
  *(v1 + *(result + 32)) = a1;
  return result;
}

void DNSRecords.SRV.hash(into:)()
{
  v1 = v0;
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v1[3];
  v6 = *(v1 + 32);
  v7 = *(v1 + 33);
  String.lowercased()();
  String.hash(into:)();

  String.lowercased()();
  String.hash(into:)();

  String.hash(into:)();

  Hasher._combine(_:)(v7);
  v8 = type metadata accessor for DNSRecords.SRV();
  v9 = v8[5];
  type metadata accessor for NWEndpoint.Port();
  sub_100034900(&qword_10058CF48, &type metadata accessor for NWEndpoint.Port);
  dispatch thunk of Hashable.hash(into:)();
  v10 = (v1 + v8[6]);
  v11 = *v10;
  v12 = v10[1];
  String.hash(into:)();
  Hasher._combine(_:)(*(v1 + v8[7]));
  Hasher._combine(_:)(*(v1 + v8[8]));
}

Swift::Int DNSRecords.SRV.hashValue.getter()
{
  Hasher.init(_seed:)();
  DNSRecords.SRV.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100173D98()
{
  Hasher.init(_seed:)();
  DNSRecords.SRV.hash(into:)();
  return Hasher._finalize()();
}

uint64_t DNSRecords.AAAA.host.setter(char a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = *(v4 + 16);

  *v4 = a1;
  *(v4 + 8) = a2;
  *(v4 + 16) = a3;
  *(v4 + 24) = a4;
  return result;
}

uint64_t DNSRecords.AAAA.type.getter()
{
  if (*v0 == 27)
  {
    return 27;
  }

  __break(1u);
  return result;
}

uint64_t static DNSRecords.AAAA.__derived_struct_equals(_:_:)(char *a1, char *a2)
{
  if (word_10048F68A[*a1] != word_10048F68A[*a2])
  {
    return 0;
  }

  v2 = a1[24];
  v3 = a2[24];
  if (*(a1 + 1) != *(a2 + 1) || *(a1 + 2) != *(a2 + 2))
  {
    v5 = a1;
    v6 = *(a1 + 1);
    v7 = a2;
    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }

    a2 = v7;
    a1 = v5;
  }

  if (v2 != v3)
  {
    return 0;
  }

  v8 = *(a1 + 5);
  v9 = *(a1 + 6);
  v10 = *(a1 + 7);
  v11 = *(a2 + 4);
  v12 = *(a2 + 5);
  v13 = *(a2 + 6);
  v14 = *(a2 + 7);
  v15 = *(a1 + 4);

  return _s7CoreP2P11IPv6AddressV2eeoiySbAC_ACtFZ_0(v15, v8, v9, v10, v11, v12, v13, v14);
}

void DNSRecords.AAAA.hash(into:)()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 2);
  v3 = v0[24];
  Hasher._combine(_:)(word_10048F68A[*v0]);
  String.hash(into:)();
  Hasher._combine(_:)(v3);
  v9 = *(v0 + 2);
  v4 = *(v0 + 6);
  v5 = *(v0 + 7);
  v6 = sub_10004F3B0(&v9, &v10);
  v8 = v7;
  Data.hash(into:)();
  sub_1000124C8(v6, v8);
  if (v5)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int DNSRecords.AAAA.hashValue.getter()
{
  Hasher.init(_seed:)();
  v1 = *(v0 + 1);
  v2 = *(v0 + 2);
  v3 = v0[24];
  Hasher._combine(_:)(word_10048F68A[*v0]);
  String.hash(into:)();
  Hasher._combine(_:)(v3);
  v10 = *(v0 + 2);
  v4 = *(v0 + 6);
  v5 = *(v0 + 7);
  v6 = sub_10004F3B0(&v10, &v11);
  v8 = v7;
  Data.hash(into:)();
  sub_1000124C8(v6, v8);
  if (v5)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

unint64_t sub_100174168()
{
  v1 = *(v0 + 40);
  v3[0] = *(v0 + 32);
  v3[1] = v1;
  return sub_10004F3B0(v3, &v4);
}

uint64_t DNSRecords.ARPABrowse.ipv6Address.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];

  return v2;
}

uint64_t DNSRecords.ARPABrowse.ipv6Address.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = v4[3];

  *v4 = a1;
  v4[1] = a2;
  v4[2] = a3;
  v4[3] = a4;
  return result;
}

uint64_t DNSRecords.ARPABrowse.keyData.getter()
{
  v1 = *(v0 + 32);
  v2 = *v0;
  v4 = *(v0 + 2);
  v3 = *(v0 + 3);
  v7 = 11;
  v8 = 0;
  v9 = 0xE000000000000000;
  v10 = v1;
  v11 = v2;
  v12 = v4;
  v13 = v3;

  v5 = DNSRecords.ARPA.keyData.getter();
  sub_100083578(&v7);
  return v5;
}

uint64_t DNSRecords.ARPA.keyData.getter()
{
  v32 = xmmword_100480A90;
  v30 = *(v0 + 32);
  v1 = sub_10004F3B0(&v30, v31);
  v3 = v1;
  v4 = v2;
  v5 = v2 >> 62;
  v27 = v1 >> 32;
  v28 = BYTE6(v2);
  if ((v2 >> 62) > 1)
  {
    if (v5 == 2)
    {
      v6 = *(v1 + 24);
      sub_10000AB0C(v1, v2);
    }

    else
    {
      v6 = 0;
    }
  }

  else if (v5)
  {
    sub_10000AB0C(v1, v2);
    v6 = v27;
  }

  else
  {
    v6 = BYTE6(v2);
  }

  v7 = v4 >> 24;
  v8 = &type metadata for UInt8;
  v9 = v4 >> 40;
  while (1)
  {
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        v9 = *(v3 + 16);
        if (v6 == v9)
        {
          goto LABEL_37;
        }

        goto LABEL_19;
      }
    }

    else
    {
      v9 = v3;
      if (v5)
      {
        if (v6 == v3)
        {
          goto LABEL_37;
        }

        goto LABEL_19;
      }
    }

    if (!v6)
    {
      goto LABEL_37;
    }

LABEL_19:
    if (__OFSUB__(v6--, 1))
    {
      __break(1u);
      goto LABEL_40;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        if (v6 < *(v3 + 16))
        {
          goto LABEL_43;
        }

        if (v6 >= *(v3 + 24))
        {
          goto LABEL_45;
        }

        v18 = __DataStorage._bytes.getter();
        if (!v18)
        {
          goto LABEL_51;
        }

        v19 = v18;
        v20 = __DataStorage._offset.getter();
        v21 = v6 - v20;
        if (__OFSUB__(v6, v20))
        {
          goto LABEL_46;
        }

        goto LABEL_9;
      }

      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
    }

    if (v5)
    {
      break;
    }

    if (v6 >= v28)
    {
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    *&v30 = v3;
    WORD4(v30) = v4;
    BYTE10(v30) = BYTE2(v4);
    BYTE11(v30) = BYTE3(v4);
    BYTE12(v30) = BYTE4(v4);
    BYTE13(v30) = BYTE5(v4);
    v10 = *(&v31[-2] + v6);
LABEL_10:
    sub_10005DC58(&qword_100599FF0, &qword_100486D20);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_100480F40;
    *(v11 + 56) = &type metadata for UInt8;
    *(v11 + 64) = &protocol witness table for UInt8;
    *(v11 + 32) = v10 & 0xF;
    v12 = String.init(format:_:)();
    sub_1001715D8(v12, v13, &v32);

    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_100480F40;
    *(v14 + 56) = &type metadata for UInt8;
    *(v14 + 64) = &protocol witness table for UInt8;
    *(v14 + 32) = v10 >> 4;
    v15 = String.init(format:_:)();
    sub_1001715D8(v15, v16, &v32);
  }

  if (v6 < v3 || v6 >= v27)
  {
    goto LABEL_44;
  }

  v22 = __DataStorage._bytes.getter();
  if (!v22)
  {
    goto LABEL_50;
  }

  v19 = v22;
  v23 = __DataStorage._offset.getter();
  v21 = v6 - v23;
  if (!__OFSUB__(v6, v23))
  {
LABEL_9:
    v10 = *(v19 + v21);
    goto LABEL_10;
  }

  __break(1u);
LABEL_37:
  sub_1000124C8(v3, v4);
  sub_1001715D8(3567721, 0xE300000000000000, &v32);
  sub_1001715D8(1634759265, 0xE400000000000000, &v32);
  v9 = v32;
  v7 = *(&v32 + 1) >> 62;
  if ((*(&v32 + 1) >> 62) <= 1)
  {
    v8 = v0;
    goto LABEL_47;
  }

LABEL_40:
  v8 = v0;
  if (v7 == 2)
  {
    v24 = *(v9 + 24);
  }

LABEL_47:
  v25 = sub_10005DC58(&qword_10058BA50, &qword_100480DA0);
  v31[1] = v25;
  v31[2] = sub_10000CADC(&qword_10058BA58, &qword_10058BA50, &qword_100480DA0);
  LOBYTE(v30) = 0;
  v29 = *sub_100029B34(&v30, v25);
  Data._Representation.replaceSubrange(_:with:count:)();
  sub_100002A00(&v30);
  if (*v8 != 11)
  {
    goto LABEL_52;
  }

  sub_10017185C(11, &v32);
  sub_1000124C8(v3, v4);
  return v32;
}

void DNSRecords.ARPABrowse.hash(into:)()
{
  v6 = *v0;
  v1 = *(v0 + 2);
  v2 = *(v0 + 3);
  v3 = sub_10004F3B0(&v6, &v7);
  v5 = v4;
  Data.hash(into:)();
  sub_1000124C8(v3, v5);
  if (v2)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  Hasher._combine(_:)(*(v0 + 32));
}

Swift::Int DNSRecords.ARPABrowse.hashValue.getter()
{
  v1 = v0;
  Hasher.init(_seed:)();
  v8 = *v0;
  v2 = *(v0 + 2);
  v3 = *(v0 + 3);
  v4 = sub_10004F3B0(&v8, &v9);
  v6 = v5;
  Data.hash(into:)();
  sub_1000124C8(v4, v6);
  if (v3)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  Hasher._combine(_:)(*(v1 + 32));
  return Hasher._finalize()();
}

uint64_t sub_100174998()
{
  v1 = *v0;
  v3 = *(v0 + 2);
  v2 = *(v0 + 3);
  v4 = *(v0 + 32);
  v7 = 11;
  v8 = 0;
  v9 = 0xE000000000000000;
  v10 = v4;
  v11 = v1;
  v12 = v3;
  v13 = v2;

  v5 = DNSRecords.ARPA.keyData.getter();
  sub_100083578(&v7);
  return v5;
}

Swift::Int sub_100174A18()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  Hasher.init(_seed:)();
  v10[0] = v1;
  v10[1] = v2;
  v6 = sub_10004F3B0(v10, &v11);
  v8 = v7;
  Data.hash(into:)();
  sub_1000124C8(v6, v8);
  if (v4)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  Hasher._combine(_:)(v5);
  return Hasher._finalize()();
}

void sub_100174B08()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v8[0] = *v0;
  v8[1] = v1;
  v5 = sub_10004F3B0(v8, &v9);
  v7 = v6;
  Data.hash(into:)();
  sub_1000124C8(v5, v7);
  if (v3)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  Hasher._combine(_:)(v4);
}

Swift::Int sub_100174BEC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  Hasher.init(_seed:)();
  v10[0] = v1;
  v10[1] = v2;
  v6 = sub_10004F3B0(v10, &v11);
  v8 = v7;
  Data.hash(into:)();
  sub_1000124C8(v6, v8);
  if (v4)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  Hasher._combine(_:)(v5);
  return Hasher._finalize()();
}

uint64_t sub_100174CD8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a2 + 32);
  return _s7CoreP2P11IPv6AddressV2eeoiySbAC_ACtFZ_0(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), *a2, *(a2 + 8), *(a2 + 16), *(a2 + 24)) & (v2 == v3);
}

uint64_t _s7CoreP2P10DNSRecordsO4AAAAV4hostAC10BrowseHostVvg_0()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 2);
  v3 = v0[24];
  v4 = *v0;

  return v4;
}

uint64_t _s7CoreP2P10DNSRecordsO4AAAAV7addressAA11IPv6AddressVvg_0()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[6];
  v3 = v0[7];

  return v2;
}

uint64_t _s7CoreP2P10DNSRecordsO4AAAAV7addressAA11IPv6AddressVvs_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = v4[7];

  v4[4] = a1;
  v4[5] = a2;
  v4[6] = a3;
  v4[7] = a4;
  return result;
}

uint64_t DNSRecords.ARPA.type.getter()
{
  if (*v0 == 11)
  {
    return 11;
  }

  __break(1u);
  return result;
}

uint64_t DNSRecords.ARPA.valueData.getter()
{
  v11 = xmmword_100480A90;
  sub_1001715D8(*(v0 + 8), *(v0 + 16), &v11);
  if (*(&v11 + 1) >> 62 == 2)
  {
    v1 = *(v11 + 24);
  }

  v2 = sub_10005DC58(&qword_10058BA50, &qword_100480DA0);
  v9 = v2;
  v3 = sub_10000CADC(&qword_10058BA58, &qword_10058BA50, &qword_100480DA0);
  v10 = v3;
  LOBYTE(v8[0]) = -64;
  v6 = *sub_100029B34(v8, v2);
  Data._Representation.replaceSubrange(_:with:count:)();
  sub_100002A00(v8);
  if (*(&v11 + 1) >> 62 == 2)
  {
    v4 = *(v11 + 24);
  }

  v9 = v2;
  v10 = v3;
  LOBYTE(v8[0]) = 17;
  v7 = *sub_100029B34(v8, v2);
  Data._Representation.replaceSubrange(_:with:count:)();
  sub_100002A00(v8);
  return v11;
}

uint64_t sub_100174FCC()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  return DNSRecords.ARPA.keyData.getter();
}

uint64_t sub_100175008()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v4 = xmmword_100480A90;
  sub_1001715D8(v1, v2, &v4);
  sub_100171A18(17, &v4);
  return v4;
}

Swift::Int sub_100175064(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *))
{
  Hasher.init(_seed:)();
  a3(v5);
  return Hasher._finalize()();
}

Swift::Int sub_1001750C4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  Hasher.init(_seed:)();
  a4(v6);
  return Hasher._finalize()();
}

uint64_t sub_100175108@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v8 = v7;
  v56 = a6;
  v53 = a5;
  v14 = type metadata accessor for Data.Deallocator();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin();
  v51 = v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10058A878 != -1)
  {
    swift_once();
  }

  result = qword_10058EEA8;
  v19 = qword_10058EEB0;
  v20 = qword_10058EEB0 >> 62;
  v52 = v15;
  if ((qword_10058EEB0 >> 62) <= 1)
  {
    if (!v20)
    {
      v21 = BYTE6(qword_10058EEB0);
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  if (v20 != 2)
  {
    v21 = 0;
    goto LABEL_13;
  }

  v23 = *(qword_10058EEA8 + 16);
  v22 = *(qword_10058EEA8 + 24);
  v21 = v22 - v23;
  if (__OFSUB__(v22, v23))
  {
    __break(1u);
LABEL_10:
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_77:
      __break(1u);
      goto LABEL_78;
    }

    v21 = HIDWORD(result) - result;
  }

LABEL_13:
  if (a1)
  {
    v24 = a2 - a1;
  }

  else
  {
    v24 = 0;
  }

  if ((v21 & 0x8000000000000000) != 0 || v24 < v21)
  {
    __break(1u);
    goto LABEL_67;
  }

  v48 = a2 - a1;
  v49 = v14;
  v50 = a7;
  v54 = result;
  v55 = v19;
  if (a1)
  {
    v14 = a1 + v21;
  }

  else
  {
    v14 = 0;
  }

  sub_10000AB0C(result, v19);
  sub_1000BA0A4();
  DataProtocol.copyBytes(to:)();
  result = sub_1000124C8(v54, v55);
  v25 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    v26 = 0;
    if (v25 != 2)
    {
      goto LABEL_30;
    }

    v28 = *(a3 + 16);
    v27 = *(a3 + 24);
    v29 = __OFSUB__(v27, v28);
    v26 = v27 - v28;
    if (!v29)
    {
      goto LABEL_30;
    }

    __break(1u);
  }

  else if (!v25)
  {
    v26 = BYTE6(a4);
    goto LABEL_30;
  }

  LODWORD(v26) = HIDWORD(a3) - a3;
  if (__OFSUB__(HIDWORD(a3), a3))
  {
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  v26 = v26;
LABEL_30:
  v47[1] = v7;
  v8 = v21 + v26;
  if (__OFADD__(v21, v26))
  {
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  if ((v8 & 0x8000000000000000) != 0 || v24 < v8)
  {
    goto LABEL_68;
  }

  v54 = a3;
  v55 = a4;
  if (v8 < v21)
  {
LABEL_69:
    __break(1u);
LABEL_70:
    swift_once();
    goto LABEL_36;
  }

  result = DataProtocol.copyBytes(to:)();
  v14 = v56 >> 60;
  if (v56 >> 60 == 15)
  {
    goto LABEL_64;
  }

  sub_10000AB0C(v53, v56);
  if (qword_10058A880 != -1)
  {
    goto LABEL_70;
  }

LABEL_36:
  result = qword_10058EEB8;
  v30 = unk_10058EEC0;
  v31 = unk_10058EEC0 >> 62;
  if ((unk_10058EEC0 >> 62) <= 1)
  {
    if (!v31)
    {
      v32 = unk_10058EEC6;
      goto LABEL_46;
    }

    goto LABEL_43;
  }

  if (v31 != 2)
  {
    v32 = 0;
    goto LABEL_46;
  }

  v34 = *(qword_10058EEB8 + 16);
  v33 = *(qword_10058EEB8 + 24);
  v29 = __OFSUB__(v33, v34);
  v32 = v33 - v34;
  if (v29)
  {
    __break(1u);
LABEL_43:
    LODWORD(v32) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_79:
      __break(1u);
      goto LABEL_80;
    }

    v32 = v32;
  }

LABEL_46:
  v35 = v8 + v32;
  if (__OFADD__(v8, v32))
  {
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  if ((v35 & 0x8000000000000000) != 0 || v24 < v35)
  {
    goto LABEL_72;
  }

  v54 = result;
  v55 = v30;
  if (v35 < v8)
  {
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  sub_10000AB0C(result, v30);
  DataProtocol.copyBytes(to:)();
  v36 = v56;
  result = sub_1000124C8(v54, v55);
  v37 = v36 >> 62;
  if ((v36 >> 62) > 1)
  {
    v39 = 0;
    v38 = v53;
    if (v37 != 2)
    {
      goto LABEL_59;
    }

    v41 = *(v53 + 16);
    v40 = *(v53 + 24);
    v29 = __OFSUB__(v40, v41);
    v39 = v40 - v41;
    if (!v29)
    {
      goto LABEL_59;
    }

    __break(1u);
  }

  else
  {
    v38 = v53;
    if (!v37)
    {
      v39 = BYTE6(v36);
      goto LABEL_59;
    }
  }

  LODWORD(v39) = HIDWORD(v38) - v38;
  if (__OFSUB__(HIDWORD(v38), v38))
  {
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v39 = v39;
LABEL_59:
  v29 = __OFADD__(v35, v39);
  v42 = v35 + v39;
  if (v29)
  {
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  if ((v42 & 0x8000000000000000) != 0 || v24 < v42)
  {
    goto LABEL_75;
  }

  v54 = v38;
  v55 = v36;
  if (v42 < v35)
  {
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  DataProtocol.copyBytes(to:)();
  result = sub_100017554(v38, v36);
LABEL_64:
  if (a1)
  {
    v43 = v51;
    (*(v52 + 104))(v51, enum case for Data.Deallocator.none(_:), v49);
    v44 = sub_100002DE8(a1, v48, v43);
    v46 = v45;
    sub_100175590(v44, v45, (v14 < 0xF), v50);
    return sub_1000124C8(v44, v46);
  }

LABEL_81:
  __break(1u);
  return result;
}

uint64_t sub_100175590@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char *a3@<X2>, uint64_t *a4@<X8>)
{
  v9 = *(*(sub_10005DC58(&qword_10058BA40, &qword_100480D90) - 8) + 64);
  __chkstk_darwin();
  v205 = &v198 - v10;
  v11 = type metadata accessor for NWEndpoint.Port();
  v206 = *(v11 - 1);
  v12 = *(v206 + 64);
  __chkstk_darwin();
  v14 = &v198 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = 0;
  v16 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v16 == 2)
    {
      v15 = *(a1 + 16);
    }
  }

  else if (v16)
  {
    v15 = a1;
  }

  if (qword_10058A878 != -1)
  {
    v132 = a1;
    v133 = v15;
    swift_once();
    v15 = v133;
    a1 = v132;
  }

  v17 = qword_10058EEA8;
  v18 = qword_10058EEB0 >> 62;
  v204 = v14;
  LODWORD(v207) = a3;
  if ((qword_10058EEB0 >> 62) > 1)
  {
    if (v18 == 2)
    {
      v17 = *(qword_10058EEA8 + 16);
      v20 = *(qword_10058EEA8 + 24);
      v19 = v20 - v17;
      if (__OFSUB__(v20, v17))
      {
        __break(1u);
        goto LABEL_15;
      }
    }

    else
    {
      v19 = 0;
    }

LABEL_18:
    v23 = a1;
    v24 = sub_10004AF78(v15, v19, a1, a2);
    v25 = swift_allocObject();
    v26 = sub_100176A84(v23, a2, v24);
    if (v4)
    {
      return swift_deallocUninitializedObject();
    }

    v29 = v27;
    v202 = v11;
    v203 = a4;
    *(v25 + 16) = v26;
    v30 = sub_100033A48(v27, v23, a2);
    v32 = v31;
    v11 = 0;
    v33 = sub_100037568(v30, v31);
    v200 = a2;
    v201 = v25;
    sub_1000124C8(v30, v32);
    v34 = _s7CoreP2P10DNSRecordsO10RecordTypeO8rawValueAESgs6UInt16V_tcfC_0(bswap32(v33) >> 16);
    if (v34 == 65)
    {
      goto LABEL_105;
    }

    v35 = v34;
    v36 = v200;
    v37 = sub_10004AF78(v29, 2, v23, v200);
    v38 = Data._Representation.subscript.getter();
    v39 = v37 + 1;
    a3 = v201;
    if (__OFADD__(v37, 1))
    {
      __break(1u);
      goto LABEL_141;
    }

    if (v207)
    {
      if (qword_10058A880 != -1)
      {
        ++v37;
        swift_once();
        v39 = v37;
      }

      v40 = unk_10058EEC0 >> 62;
      if ((unk_10058EEC0 >> 62) <= 1)
      {
        if (!v40)
        {
          v41 = unk_10058EEC6;
LABEL_51:
          v58 = sub_10004AF78(v39, v41, v23, v200);
          if (v35 <= 0x1Au)
          {
            if (v35 == 11)
            {
              v76 = sub_100176A84(v23, v200, v58);
              v37 = *(a3 + 2);
              v77 = *(v37 + 16);
              if (!v77)
              {
                goto LABEL_129;
              }

              if (v77 == 3)
              {
                if (*(v76 + 2))
                {
                  v78 = v38;
                  v79 = *(v76 + 4);
                  v80 = *(v76 + 5);

                  v81 = v201;
                  sub_1001AB29C(0, 0, v79, v80);

                  sub_100177558(v81, v78, v208);
                  v159 = v203;
                  v203[3] = &type metadata for DNSRecords.PTR;
                  v159[4] = &protocol witness table for DNSRecords.PTR;
                  v160 = swift_allocObject();
                  *v159 = v160;

                  v161 = v208[1];
                  *(v160 + 16) = v208[0];
                  *(v160 + 32) = v161;
                  *(v160 + 48) = v209;
                  return result;
                }

                sub_10000B02C();
                swift_allocError();
                *v102 = 0;
                *(v102 + 8) = 0;
                goto LABEL_106;
              }

              a3 = v76;
              if (swift_isUniquelyReferenced_nonNull_native())
              {
                v119 = *(v37 + 16);
                if (!v119)
                {
LABEL_157:
                  __break(1u);
                  goto LABEL_158;
                }

LABEL_99:
                v120 = v119 - 1;
                v121 = v37 + 16 * v120;
                v122 = *(v121 + 32);
                v123 = *(v121 + 40);
                *(v37 + 16) = v120;
                *(v201 + 2) = v37;
                if (v122 == 1634759265 && v123 == 0xE400000000000000)
                {

                  goto LABEL_113;
                }

LABEL_112:
                v134 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if ((v134 & 1) == 0)
                {
                  goto LABEL_129;
                }

LABEL_113:
                v37 = *(v201 + 2);
                if (!*(v37 + 16))
                {
                  goto LABEL_129;
                }

                v135 = *(v201 + 2);
                result = swift_isUniquelyReferenced_nonNull_native();
                if (result)
                {
                  v136 = *(v37 + 16);
                  if (!v136)
                  {
LABEL_159:
                    __break(1u);
                    return result;
                  }

                  goto LABEL_116;
                }

LABEL_158:
                result = sub_1000C2B28(v37);
                v37 = result;
                v136 = *(result + 16);
                if (!v136)
                {
                  goto LABEL_159;
                }

LABEL_116:
                v137 = v136 - 1;
                v138 = v37 + 16 * v137;
                v139 = *(v138 + 32);
                v140 = *(v138 + 40);
                *(v37 + 16) = v137;
                *(v201 + 2) = v37;
                if (v139 == 3567721 && v140 == 0xE300000000000000)
                {

LABEL_127:
                  v163 = v38;
                  v220 = *(v201 + 2);
                  sub_10005DC58(&qword_10058EFB0, &qword_10048F680);
                  sub_10000CADC(&qword_10058EFB8, &qword_10058EFB0, &qword_10048F680);

                  v164 = BidirectionalCollection<>.joined(separator:)();
                  v166 = v165;

                  v167 = String.hexData.getter(v164, v166);
                  v169 = v168;

                  if (v169 >> 60 != 15)
                  {
                    sub_10000AB0C(v167, v169);
                    v180 = sub_1002A58C4(v167, v169);
                    v182 = v181;
                    sub_100017554(v167, v169);
                    sub_100017554(v167, v169);
                    v183 = *(a3 + 2);
                    if (v183)
                    {
                      *&v207 = *(a3 + 4);
                      v184 = *(a3 + 5);
                      v185 = &a3[16 * v183 + 32];
                      v187 = *(v185 - 16);
                      v186 = *(v185 - 8);

                      if (v187 == 0x6C61636F6CLL && v186 == 0xE500000000000000)
                      {

LABEL_146:
                        v190 = v203;
                        v203[3] = &type metadata for DNSRecords.ARPA;
                        v190[4] = &protocol witness table for DNSRecords.ARPA;
                        v191 = swift_allocObject();
                        *v190 = v191;

                        *(v191 + 16) = 11;
                        *(v191 + 24) = v207;
                        *(v191 + 32) = v184;
                        *(v191 + 40) = v163;
                        *(v191 + 48) = v180;
                        *(v191 + 56) = v182;
                        *(v191 + 64) = 0;
                        *(v191 + 72) = 0;
                        return result;
                      }

                      v189 = _stringCompareWithSmolCheck(_:_:expecting:)();

                      if (v189)
                      {
                        goto LABEL_146;
                      }
                    }
                  }

                  goto LABEL_129;
                }

                v162 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if (v162)
                {
                  goto LABEL_127;
                }

LABEL_129:

                goto LABEL_105;
              }

LABEL_156:
              v37 = sub_1000C2B28(v37);
              v119 = *(v37 + 16);
              if (!v119)
              {
                goto LABEL_157;
              }

              goto LABEL_99;
            }

            if (v35 == 15)
            {
              if (v16 > 1)
              {
                if (v16 != 2)
                {
                  if (v58 < 0)
                  {
LABEL_86:
                    v37 = v58;
                    sub_100177558(a3, v38, v210);
                    if (v16 > 1)
                    {
                      v100 = v37;
                      if (v16 == 2)
                      {
                        v101 = *(v23 + 24);
                      }

                      else
                      {
                        v101 = 0;
                      }
                    }

                    else
                    {
                      v100 = v37;
                      if (v16)
                      {
                        v101 = v23 >> 32;
                      }

                      else
                      {
                        v101 = BYTE6(v200);
                      }
                    }

                    *&v207 = 0;
                    if (v101 >= v100)
                    {
                      v144 = v210[0];
                      v145 = v210[1];
                      v146 = v210[2];
                      v147 = v210[3];
                      v148 = v211;
                      LODWORD(v206) = v212;
                      v149 = Data.subdata(in:)();
                      v151 = v150;
                      v152 = v203;
                      v203[3] = &type metadata for DNSRecords.TXT;
                      v152[4] = &protocol witness table for DNSRecords.TXT;
                      v153 = swift_allocObject();
                      *v152 = v153;

                      *(v153 + 16) = v144;
                      *(v153 + 24) = v145;
                      *(v153 + 32) = v146;
                      *(v153 + 40) = v147;
                      *(v153 + 48) = v148;
                      *(v153 + 49) = v206;
                      *(v153 + 56) = v149;
                      *(v153 + 64) = v151;
                      return result;
                    }

                    goto LABEL_155;
                  }

LABEL_90:
                  sub_10000B02C();
                  swift_allocError();
                  *v102 = 0;
                  *(v102 + 8) = 0;
LABEL_106:
                  *(v102 + 16) = 2;
                  swift_willThrow();
                }

                v59 = *(v23 + 24);
              }

              else if (v16)
              {
                v59 = v23 >> 32;
              }

              else
              {
                v59 = BYTE6(v200);
              }

              if (v58 < v59)
              {
                goto LABEL_86;
              }

              goto LABEL_90;
            }

LABEL_105:
            sub_10000B02C();
            swift_allocError();
            *v102 = xmmword_10047CE70;
            goto LABEL_106;
          }

          if (v35 == 27)
          {
            if (*(*(a3 + 2) + 16) == 2)
            {
              v83 = sub_100033A48(v58, v23, v200);
              v84 = v82;
              v103 = v38;
              v85 = sub_1002A58C4(v83, v82);
              v105 = v104;
              v106 = v85;
              sub_1000124C8(v83, v84);
              v107 = *(a3 + 2);
              v108 = v107[2];
              if (v108)
              {
                if (v110 = v107[4], v109 = v107[5], v111 = &v107[2 * v108 + 4], *(v111 - 16) == 0x6C61636F6CLL) && *(v111 - 8) == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)())
                {
                  v112 = v203;
                  v203[3] = &type metadata for DNSRecords.AAAA;
                  v112[4] = &protocol witness table for DNSRecords.AAAA;
                  v113 = swift_allocObject();
                  *v112 = v113;

                  *(v113 + 16) = 27;
                  *(v113 + 24) = v110;
                  *(v113 + 32) = v109;
                  *(v113 + 40) = v103;
                  *(v113 + 48) = v106;
                  *(v113 + 56) = v105;
                  *(v113 + 64) = 0;
                  *(v113 + 72) = 0;
                  return result;
                }
              }

              goto LABEL_105;
            }

            goto LABEL_90;
          }

          if (v35 != 32)
          {
            goto LABEL_105;
          }

          v60 = v58;
          v61 = v200;
          v62 = sub_100033A48(v58, v23, v200);
          v64 = v63;
          LODWORD(v207) = sub_100037568(v62, v63);
          sub_1000124C8(v62, v64);
          v65 = sub_10004AF78(v60, 2, v23, v61);
          v66 = sub_100033A48(v65, v23, v61);
          v68 = v67;
          v69 = sub_100037568(v66, v67);
          v199 = v38;
          v198 = v69;
          sub_1000124C8(v66, v68);
          v115 = sub_10004AF78(v65, 2, v23, v61);
          v116 = sub_100033A48(v115, v23, v61);
          v118 = v117;
          sub_100037568(v116, v117);
          a3 = 0;
          sub_1000124C8(v116, v118);
          v141 = v205;
          NWEndpoint.Port.init(rawValue:)();
          v142 = v206;
          v143 = v202;
          if ((*(v206 + 48))(v141, 1, v202) == 1)
          {
            sub_100016290(v141, &qword_10058BA40, &qword_100480D90);
            goto LABEL_105;
          }

          v11 = *(v142 + 32);
          v170 = v141;
          v16 = v204;
          (v11)(v204, v170, v143);
          NWEndpoint.Port.rawValue.getter();
          v171 = v115;
          v172 = v23;
          v173 = v23;
          v174 = v200;
          v175 = sub_10004AF78(v171, 2, v173, v200);
          v15 = sub_100176A84(v172, v174, v175);
          goto LABEL_132;
        }

        if (!__OFSUB__(HIDWORD(qword_10058EEB8), qword_10058EEB8))
        {
          v41 = HIDWORD(qword_10058EEB8) - qword_10058EEB8;
          goto LABEL_51;
        }

        __break(1u);
        goto LABEL_151;
      }

      if (v40 != 2)
      {
        v41 = 0;
        goto LABEL_51;
      }

      v42 = *(qword_10058EEB8 + 16);
      v51 = *(qword_10058EEB8 + 24);
      v41 = v51 - v42;
      if (!__OFSUB__(v51, v42))
      {
        goto LABEL_51;
      }

      __break(1u);
LABEL_40:
      if (v42 == 53 || v42 == 27)
      {
        goto LABEL_42;
      }

      goto LABEL_60;
    }

    LODWORD(v42) = v35;
    if (v35 > 0x1Au)
    {
      goto LABEL_40;
    }

    if (!v35)
    {
LABEL_42:
      v52 = *(a3 + 2);
      if (v52[2] == 2 && (v52[6] == 0x6C61636F6CLL && v52[7] == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 && v52[2]))
      {
        v53 = v38;
        v55 = v52[4];
        v54 = v52[5];
        v56 = v203;
        v203[3] = &type metadata for DNSRecords.BrowseHost;
        v56[4] = &protocol witness table for DNSRecords.BrowseHost;
        v57 = swift_allocObject();
        *v56 = v57;

        *(v57 + 16) = v35;
        *(v57 + 24) = v55;
        *(v57 + 32) = v54;
        *(v57 + 40) = v53;
        return result;
      }

      goto LABEL_105;
    }

    if (v35 != 11)
    {
LABEL_60:
      sub_100177558(a3, v38, &v215);
      v207 = v215;
      v70 = v216;
      v71 = v217;
      v72 = v218;
      v73 = v219;
      v74 = v203;
      v203[3] = &type metadata for DNSRecords.Browse;
      v74[4] = &off_100565188;
      v75 = swift_allocObject();
      *v74 = v75;

      *(v75 + 16) = v35;
      *(v75 + 24) = v207;
      *(v75 + 40) = v70;
      *(v75 + 48) = v71;
      *(v75 + 56) = v72;
      *(v75 + 57) = v73;
      return result;
    }

    v43 = *(v201 + 2);
    v44 = v203;
    if (v43[2] == 3)
    {
      if (v43[8] != 0x6C61636F6CLL || v43[9] != 0xE500000000000000)
      {
        if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_71;
        }

        v86 = v43[2];
        if (!v86)
        {
          goto LABEL_71;
        }

        if (v86 == 1)
        {
          __break(1u);
          goto LABEL_112;
        }
      }

      v45 = v38;
      v47 = v43[4];
      v46 = v43[5];
      v49 = v43[6];
      v48 = v43[7];

      v50 = _s7CoreP2P14Layer3ProtocolO8dnsLabelACSgSS_tcfC_0(v49, v48);
      if (v50 != 2)
      {
        v114 = v50;
        v44[3] = &type metadata for DNSRecords.Identifier;
        v44[4] = &protocol witness table for DNSRecords.Identifier;

        *v44 = v47;
        v44[1] = v46;
        *(v44 + 16) = v114 & 1;
        *(v44 + 17) = v45;
        return result;
      }

      LOBYTE(v38) = v45;
    }

LABEL_71:
    v37 = *(a3 + 2);
    if (!*(v37 + 16))
    {
      goto LABEL_105;
    }

    v87 = *(a3 + 2);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v88 = *(v37 + 16);
      if (!v88)
      {
LABEL_152:
        __break(1u);
        goto LABEL_153;
      }

LABEL_74:
      v89 = v88 - 1;
      v90 = v37 + 16 * v89;
      v91 = *(v90 + 32);
      v92 = *(v90 + 40);
      *(v37 + 16) = v89;
      *(a3 + 2) = v37;
      if (v91 == 1634759265 && v92 == 0xE400000000000000)
      {
      }

      else
      {
        v93 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v93 & 1) == 0)
        {
          goto LABEL_105;
        }
      }

      v37 = *(a3 + 2);
      if (!*(v37 + 16))
      {
        goto LABEL_105;
      }

      v94 = *(a3 + 2);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v95 = *(v37 + 16);
        if (!v95)
        {
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
          goto LABEL_156;
        }

LABEL_81:
        v96 = v95 - 1;
        v97 = v37 + 16 * v96;
        v98 = *(v97 + 32);
        v99 = *(v97 + 40);
        *(v37 + 16) = v96;
        *(a3 + 2) = v37;
        if (v98 == 3567721 && v99 == 0xE300000000000000)
        {
        }

        else
        {
          v124 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v124 & 1) == 0)
          {
            goto LABEL_105;
          }
        }

        v125 = v38;
        v220 = *(a3 + 2);
        sub_10005DC58(&qword_10058EFB0, &qword_10048F680);
        sub_10000CADC(&qword_10058EFB8, &qword_10058EFB0, &qword_10048F680);

        v126 = BidirectionalCollection<>.joined(separator:)();
        v128 = v127;

        v129 = String.hexData.getter(v126, v128);
        v131 = v130;

        if (v131 >> 60 != 15)
        {
          sub_10000AB0C(v129, v131);
          v154 = sub_1002A58C4(v129, v131);
          v156 = v155;
          sub_100017554(v129, v131);
          sub_100017554(v129, v131);
          v157 = v203;
          v203[3] = &type metadata for DNSRecords.ARPABrowse;
          v157[4] = &protocol witness table for DNSRecords.ARPABrowse;
          v158 = swift_allocObject();
          *v157 = v158;

          *(v158 + 16) = v154;
          *(v158 + 24) = v156;
          *(v158 + 32) = 0;
          *(v158 + 40) = 0;
          *(v158 + 48) = v125;
          return result;
        }

        goto LABEL_105;
      }

LABEL_153:
      v37 = sub_1000C2B28(v37);
      v95 = *(v37 + 16);
      if (!v95)
      {
        goto LABEL_154;
      }

      goto LABEL_81;
    }

LABEL_151:
    v37 = sub_1000C2B28(v37);
    v88 = *(v37 + 16);
    if (!v88)
    {
      goto LABEL_152;
    }

    goto LABEL_74;
  }

  if (!v18)
  {
    v19 = BYTE6(qword_10058EEB0);
    goto LABEL_18;
  }

LABEL_15:
  v21 = __OFSUB__(HIDWORD(v17), v17);
  v22 = HIDWORD(v17) - v17;
  if (!v21)
  {
    v19 = v22;
    goto LABEL_18;
  }

  __break(1u);
LABEL_132:
  a2 = v16;
  v176 = *(v15 + 16);
  if (!v176)
  {
LABEL_148:

    sub_10000B02C();
    swift_allocError();
    *v197 = xmmword_10047CE70;
    *(v197 + 16) = 2;
    swift_willThrow();
    (*(v206 + 8))(a2, v202);
  }

  v36 = *(v15 + 32);
  v35 = *(v15 + 40);
  v177 = v15 + 32 + 16 * v176;
  v179 = *(v177 - 16);
  v178 = *(v177 - 8);

  if (v179 == 0x6C61636F6CLL && v178 == 0xE500000000000000)
  {

    goto LABEL_142;
  }

LABEL_141:
  v188 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v188 & 1) == 0)
  {
    goto LABEL_148;
  }

LABEL_142:
  sub_100177558(v201, v199, v213);
  if (a3)
  {
    (*(v206 + 8))(a2, v202);
  }

  else
  {
    v192 = type metadata accessor for DNSRecords.SRV();
    v193 = v203;
    v203[3] = v192;
    v193[4] = &protocol witness table for DNSRecords.SRV;
    v194 = sub_1000297D4(v193);
    (v11)(v194 + v192[5], a2, v202);

    v195 = v213[1];
    *v194 = v213[0];
    *(v194 + 1) = v195;
    *(v194 + 16) = v214;
    v196 = (v194 + v192[6]);
    *v196 = v36;
    v196[1] = v35;
    *(v194 + v192[7]) = v207;
    *(v194 + v192[8]) = v198;
  }

  return result;
}