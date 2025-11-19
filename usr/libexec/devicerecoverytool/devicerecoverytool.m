uint64_t sub_100000C48()
{
  sub_100000C84(&qword_100008000, &qword_100002640);
  Option.wrappedValue.getter();
  return v1;
}

uint64_t sub_100000C84(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void (*sub_100000D0C(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  sub_100000C84(&qword_100008000, &qword_100002640);
  *(v3 + 32) = Option.wrappedValue.modify();
  return sub_100000D98;
}

void sub_100000D98(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

void sub_100000DE4(kern_return_t a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for String.Encoding();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = String._bridgeToObjectiveC()();
  static String.Encoding.utf8.getter();
  v12 = String.data(using:allowLossyConversion:)();
  v14 = v13;
  (*(v7 + 8))(v10, v6);
  if (v14 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_100001048(v12, v14);
    a1 = IORegistryEntrySetCFProperty(a1, v11, isa);

    if (!a1)
    {
      return;
    }
  }

  v25[0] = 0;
  v25[1] = 0xE000000000000000;
  v16 = a1;
  _StringGuts.grow(_:)(28);

  strcpy(v25, "could not set ");
  HIBYTE(v25[1]) = -18;
  v17._countAndFlagsBits = a2;
  v17._object = a3;
  String.append(_:)(v17);
  v18._countAndFlagsBits = 0x76206D6172766E20;
  v18._object = 0xEC000000203A7261;
  String.append(_:)(v18);
  v20 = v25[0];
  v19 = v25[1];
  if (!mach_error_string(v16))
  {
    __break(1u);
  }

  v21 = String.init(cString:)();
  v23 = v22;
  v25[0] = v20;
  v25[1] = v19;

  v24._countAndFlagsBits = v21;
  v24._object = v23;
  String.append(_:)(v24);

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_100001048(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10000105C(a1, a2);
  }

  return a1;
}

uint64_t sub_10000105C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1000010B0()
{
  v0 = IORegistryEntryFromPath(kIOMainPortDefault, "IODeviceTree:/options");
  if (v0)
  {
    v1 = v0;
    sub_100000DE4(v0, 0xD00000000000003ALL, 0x80000001000028A0);
    sub_100000C84(&qword_100008000, &qword_100002640);
    Option.wrappedValue.getter();
    sub_100000DE4(v1, 0xD00000000000001BLL, 0x80000001000028E0);
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000011D8()
{
  type metadata accessor for Devicerecoverytool();
  sub_100001E9C(&qword_100008018);
  return static ParsableCommand.main()();
}

uint64_t type metadata accessor for Devicerecoverytool()
{
  result = qword_100008260;
  if (!qword_100008260)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

Swift::Int sub_100001280()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_1000012EC()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t sub_100001350@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x797265766F636572 && a2 == 0xEE006E6F73616552)
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

uint64_t sub_1000013F8(uint64_t a1)
{
  v2 = sub_1000018F4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100001434(uint64_t a1)
{
  v2 = sub_1000018F4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100001470@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = sub_100000C84(&qword_100008000, &qword_100002640);
  v28 = *(v3 - 8);
  v4 = (*(v28 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v31 = &v28 - v5;
  v6 = sub_100000C84(&qword_100008020, &qword_100002658);
  v29 = *(v6 - 8);
  v7 = (*(v29 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v9 = &v28 - v8;
  v10 = *(*(type metadata accessor for SingleValueParsingStrategy() - 8) + 64);
  __chkstk_darwin();
  v11 = *(*(type metadata accessor for NameSpecification() - 8) + 64);
  __chkstk_darwin();
  v12 = (*(*(sub_100000C84(&qword_100008008, &qword_100002648) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v14 = &v28 - v13;
  v15 = (*(*(sub_100000C84(&qword_100008010, &qword_100002650) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v17 = &v28 - v16;
  v18 = *(*(type metadata accessor for Devicerecoverytool() - 8) + 64);
  __chkstk_darwin();
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for ArgumentHelp();
  (*(*(v21 - 8) + 56))(v17, 1, 1, v21);
  v22 = type metadata accessor for CompletionKind();
  (*(*(v22 - 8) + 56))(v14, 1, 1, v22);
  static NameSpecification.long.getter();
  static SingleValueParsingStrategy.next.getter();
  Option<A>.init(name:parsing:help:completion:)();
  v23 = a1[4];
  sub_1000018B0(a1, a1[3]);
  sub_1000018F4();
  v24 = v32;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v24)
  {
    v25 = v28;
    v26 = v30;
    sub_1000019F0();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v29 + 8))(v9, v6);
    (*(v25 + 40))(v20, v31, v3);
    sub_100001A9C(v20, v26);
  }

  sub_100001948(a1);
  return sub_100001994(v20);
}

void *sub_1000018B0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_1000018F4()
{
  result = qword_1000080D0[0];
  if (!qword_1000080D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000080D0);
  }

  return result;
}

uint64_t sub_100001948(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100001994(uint64_t a1)
{
  v2 = type metadata accessor for Devicerecoverytool();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000019F0()
{
  result = qword_100008028;
  if (!qword_100008028)
  {
    sub_100001A54(&qword_100008000, &qword_100002640);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008028);
  }

  return result;
}

uint64_t sub_100001A54(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100001A9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Devicerecoverytool();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100001B04()
{
  v0 = *(*(type metadata accessor for SingleValueParsingStrategy() - 8) + 64);
  __chkstk_darwin();
  v1 = *(*(type metadata accessor for NameSpecification() - 8) + 64);
  __chkstk_darwin();
  v2 = (*(*(sub_100000C84(&qword_100008008, &qword_100002648) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v4 = &v11 - v3;
  v5 = (*(*(sub_100000C84(&qword_100008010, &qword_100002650) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v7 = &v11 - v6;
  v8 = type metadata accessor for ArgumentHelp();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = type metadata accessor for CompletionKind();
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  static NameSpecification.long.getter();
  static SingleValueParsingStrategy.next.getter();
  return Option<A>.init(name:parsing:help:completion:)();
}

uint64_t sub_100001D10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100000C84(&qword_100008000, &qword_100002640);
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for Devicerecoverytool();
  sub_100001E9C(&qword_100008018);
  static ParsableCommand.main()();
  return 0;
}

uint64_t sub_100001E9C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Devicerecoverytool();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100001EF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100000C84(&qword_100008000, &qword_100002640);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100001F80(uint64_t a1, uint64_t a2)
{
  v4 = sub_100000C84(&qword_100008000, &qword_100002640);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_100001FFC()
{
  sub_100002068();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_100002068()
{
  if (!qword_100008098)
  {
    v0 = type metadata accessor for Option();
    if (!v1)
    {
      atomic_store(v0, &qword_100008098);
    }
  }
}

uint64_t getEnumTagSinglePayload for Devicerecoverytool.CodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for Devicerecoverytool.CodingKeys(_WORD *result, int a2, int a3)
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

unint64_t sub_1000021AC()
{
  result = qword_100008370[0];
  if (!qword_100008370[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100008370);
  }

  return result;
}

unint64_t sub_100002204()
{
  result = qword_100008480;
  if (!qword_100008480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008480);
  }

  return result;
}

unint64_t sub_10000225C()
{
  result = qword_100008488[0];
  if (!qword_100008488[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100008488);
  }

  return result;
}