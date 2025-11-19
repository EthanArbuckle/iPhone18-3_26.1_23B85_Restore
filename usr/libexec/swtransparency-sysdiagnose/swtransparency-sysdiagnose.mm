uint64_t sub_100000D88@<X0>(uint64_t a1@<X8>)
{
  URL.init(fileURLWithPath:)();
  v2 = type metadata accessor for URL();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 0, 1, v2);
}

uint64_t sub_100000E14()
{
  v0 = *(*(type metadata accessor for String.Encoding() - 8) + 64);
  (__chkstk_darwin)();
  v1 = type metadata accessor for URL.DirectoryHint();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  (__chkstk_darwin)();
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[0] = type metadata accessor for URL();
  v6 = *(v19[0] - 8);
  v7 = *(v6 + 64);
  v8 = (__chkstk_darwin)();
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v19 - v11;
  URL.init(fileURLWithPath:)();
  v19[10] = 0xD000000000000012;
  v19[11] = 0x8000000100003200;
  (*(v2 + 104))(v5, enum case for URL.DirectoryHint.inferFromPath(_:), v1);
  sub_100001270();
  URL.appending<A>(path:directoryHint:)();
  (*(v2 + 8))(v5, v1);
  static String.Encoding.utf8.getter();
  v13 = String.init(contentsOf:encoding:)();
  v15 = v14;
  v16 = *(v6 + 8);
  v16(v10, v19[0]);
  sub_1000012C4(&qword_100008018, &qword_100002FE0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_100002FC0;
  *(v17 + 56) = &type metadata for String;
  *(v17 + 32) = v13;
  *(v17 + 40) = v15;
  print(_:separator:terminator:)();

  return (v16)(v12, v19[0]);
}

unint64_t sub_100001270()
{
  result = qword_100008010;
  if (!qword_100008010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008010);
  }

  return result;
}

uint64_t sub_1000012C4(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_10000130C()
{
  v27 = type metadata accessor for DispatchTimeInterval();
  v0 = *(v27 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v27);
  v3 = (&v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = type metadata accessor for DispatchTime();
  v4 = *(v26 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v26);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v25 - v9;
  v11 = [objc_allocWithZone(SoftwareTransparency) initWithApplication:0];
  v12 = dispatch_semaphore_create(0);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  v25 = v13 + 16;
  *(v13 + 24) = 0;
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = v12;
  aBlock[4] = sub_10000183C;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100001844;
  aBlock[3] = &unk_1000043F0;
  v15 = _Block_copy(aBlock);

  v16 = v12;

  v28 = v11;
  [v11 sysdiagnoseInfoWithCompletion:v15];
  _Block_release(v15);
  static DispatchTime.now()();
  *v3 = 2500;
  v17 = v27;
  (*(v0 + 104))(v3, enum case for DispatchTimeInterval.milliseconds(_:), v27);
  + infix(_:_:)();
  (*(v0 + 8))(v3, v17);
  v18 = *(v4 + 8);
  v19 = v8;
  v20 = v26;
  v18(v19, v26);
  LOBYTE(v17) = OS_dispatch_semaphore.wait(timeout:)();
  v18(v10, v20);
  if ((v17 & 1) != 0 || (swift_beginAccess(), (v21 = *(v13 + 24)) == 0))
  {

    return 0;
  }

  else
  {
    v22 = *(v13 + 16);
    sub_1000012C4(&qword_100008018, &qword_100002FE0);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_100002FC0;
    *(v23 + 56) = &type metadata for String;
    *(v23 + 32) = v22;
    *(v23 + 40) = v21;

    print(_:separator:terminator:)();

    return 1;
  }
}

uint64_t sub_1000016D0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100001708(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for String.Encoding();
  v7 = *(*(v6 - 8) + 64);
  result = __chkstk_darwin(v6 - 8);
  if (a2 >> 60 != 15)
  {
    sub_100002AE8(a1, a2);
    static String.Encoding.utf8.getter();
    v9 = String.init(data:encoding:)();
    if (v10)
    {
      v11 = v9;
      v12 = v10;
      swift_beginAccess();
      v13 = *(a3 + 24);
      *(a3 + 16) = v11;
      *(a3 + 24) = v12;

      OS_dispatch_semaphore.signal()();
    }

    return sub_100002A80(a1, a2);
  }

  return result;
}

uint64_t sub_1000017FC()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100001844(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {

    v7 = v4;
    v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {

    v9 = 0xF000000000000000;
  }

  v10 = a3;
  v6(v4, v9, a3);

  sub_100002A80(v4, v9);
}

uint64_t sub_1000018F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t transparencySysdiagnose.init()()
{
  v0 = (*(*(sub_1000012C4(&qword_100008020, &qword_100002FE8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v2 = &v6 - v1;
  v3 = *(*(type metadata accessor for NameSpecification() - 8) + 64);
  __chkstk_darwin();
  static NameSpecification.long.getter();
  ArgumentHelp.init(stringLiteral:)();
  v4 = type metadata accessor for ArgumentHelp();
  (*(*(v4 - 8) + 56))(v2, 0, 1, v4);
  return Flag<A>.init(wrappedValue:name:help:)();
}

uint64_t property wrapper backing initializer of transparencySysdiagnose.useFallback()
{
  v0 = (*(*(sub_1000012C4(&qword_100008020, &qword_100002FE8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v2 = &v6 - v1;
  v3 = *(*(type metadata accessor for NameSpecification() - 8) + 64);
  __chkstk_darwin();
  static NameSpecification.long.getter();
  ArgumentHelp.init(stringLiteral:)();
  v4 = type metadata accessor for ArgumentHelp();
  (*(*(v4 - 8) + 56))(v2, 0, 1, v4);
  return Flag<A>.init(wrappedValue:name:help:)();
}

uint64_t sub_100001B84()
{
  sub_1000012C4(&qword_100008028, &qword_100002FF0);
  Flag.wrappedValue.getter();
  return v1;
}

void (*sub_100001C00(uint64_t *a1))(void *a1)
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
  sub_1000012C4(&qword_100008028, &qword_100002FF0);
  *(v3 + 32) = Flag.wrappedValue.modify();
  return sub_100001C8C;
}

void sub_100001C8C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> transparencySysdiagnose.run()()
{
  sub_1000012C4(&qword_100008028, &qword_100002FF0);
  Flag.wrappedValue.getter();
  if ((v0 & 1) != 0 || (sub_10000130C() & 1) == 0)
  {
    sub_100000E14();
  }
}

uint64_t sub_100001D2C()
{
  type metadata accessor for transparencySysdiagnose();
  sub_100002674(&qword_100008030);
  return static ParsableCommand.main()();
}

uint64_t type metadata accessor for transparencySysdiagnose()
{
  result = qword_100008270;
  if (!qword_100008270)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

Swift::Int sub_100001DD4()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_100001E40()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t sub_100001EA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x626C6C6146657375 && a2 == 0xEB000000006B6361)
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

uint64_t sub_100001F44(uint64_t a1)
{
  v2 = sub_10000236C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100001F80(uint64_t a1)
{
  v2 = sub_10000236C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t transparencySysdiagnose.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = sub_1000012C4(&qword_100008028, &qword_100002FF0);
  v28 = *(v3 - 8);
  v4 = *(v28 + 64);
  __chkstk_darwin(v3);
  v6 = &v26 - v5;
  v7 = sub_1000012C4(&qword_100008038, &qword_100002FF8);
  v29 = *(v7 - 8);
  v8 = *(v29 + 64);
  __chkstk_darwin(v7);
  v10 = &v26 - v9;
  v11 = sub_1000012C4(&qword_100008020, &qword_100002FE8);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v26 - v13;
  v15 = type metadata accessor for NameSpecification();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v17 = type metadata accessor for transparencySysdiagnose();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  static NameSpecification.long.getter();
  ArgumentHelp.init(stringLiteral:)();
  v21 = type metadata accessor for ArgumentHelp();
  (*(*(v21 - 8) + 56))(v14, 0, 1, v21);
  Flag<A>.init(wrappedValue:name:help:)();
  v22 = a1[4];
  sub_100002328(a1, a1[3]);
  sub_10000236C();
  v23 = v30;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v23)
  {
    v24 = v28;
    sub_100002468();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v29 + 8))(v10, v7);
    (*(v24 + 40))(v20, v6, v3);
    sub_100002514(v20, v27);
  }

  sub_1000023C0(a1);
  return sub_10000240C(v20);
}

void *sub_100002328(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_10000236C()
{
  result = qword_1000080E0[0];
  if (!qword_1000080E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000080E0);
  }

  return result;
}

uint64_t sub_1000023C0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_10000240C(uint64_t a1)
{
  v2 = type metadata accessor for transparencySysdiagnose();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100002468()
{
  result = qword_100008040;
  if (!qword_100008040)
  {
    sub_1000024CC(&qword_100008028, &qword_100002FF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008040);
  }

  return result;
}

uint64_t sub_1000024CC(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100002514(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for transparencySysdiagnose();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for transparencySysdiagnose();
  sub_100002674(&qword_100008030);
  static ParsableCommand.main()();
  return 0;
}

uint64_t sub_100002674(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for transparencySysdiagnose();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000026CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000012C4(&qword_100008028, &qword_100002FF0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100002758(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000012C4(&qword_100008028, &qword_100002FF0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_1000027D4()
{
  sub_100002840();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_100002840()
{
  if (!qword_1000080B0)
  {
    v0 = type metadata accessor for Flag();
    if (!v1)
    {
      atomic_store(v0, &qword_1000080B0);
    }
  }
}

uint64_t getEnumTagSinglePayload for transparencySysdiagnose.CodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for transparencySysdiagnose.CodingKeys(_WORD *result, int a2, int a3)
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

unint64_t sub_10000297C()
{
  result = qword_100008380[0];
  if (!qword_100008380[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100008380);
  }

  return result;
}

unint64_t sub_1000029D4()
{
  result = qword_100008490;
  if (!qword_100008490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008490);
  }

  return result;
}

unint64_t sub_100002A2C()
{
  result = qword_100008498[0];
  if (!qword_100008498[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100008498);
  }

  return result;
}

uint64_t sub_100002A80(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100002A94(a1, a2);
  }

  return a1;
}

uint64_t sub_100002A94(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100002AE8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}