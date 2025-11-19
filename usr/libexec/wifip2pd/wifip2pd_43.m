uint64_t sub_100372790()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(*v0 + 80);
  v4 = *(v2 + 88);
  type metadata accessor for NANFollowUpTransmitter.FollowUpInformation();
  v16 = type metadata accessor for Optional();
  v5 = *(v16 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v15 - v7;
  v9 = qword_1005976D0;
  swift_beginAccess();
  v10 = *(v1 + v9);
  type metadata accessor for NANFollowUpTransmitter.FollowUpIdentifier();
  swift_getWitnessTable();
  v17 = NANBitmap.Channel.operatingClass.getter(v10);
  type metadata accessor for Dictionary.Keys();

  swift_getWitnessTable();
  v21 = Set.init<A>(_:)();
  type metadata accessor for Set();
  Set.popFirst()();
  if ((v20 & 1) == 0)
  {
    v12 = (v5 + 8);
    do
    {
      v13 = v19;
      v14 = sub_100371384(v19);
      if (v14 == 2)
      {
        v18 = v13;
        swift_beginAccess();
        type metadata accessor for Dictionary();
        Dictionary.removeValue(forKey:)();
        swift_endAccess();
        (*v12)(v8, v16);
      }

      else if (v14)
      {
        sub_1003718E8(v13);
      }

      Set.popFirst()();
    }

    while (v20 != 1);
  }
}

BOOL sub_100372A3C(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchTimeInterval();
  v28 = *(v4 - 8);
  v29 = v4;
  v5 = *(v28 + 64);
  __chkstk_darwin();
  v27 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v26 - v7;
  type metadata accessor for NANFollowUpTransmitter.FollowUpIdentifier();
  v9 = type metadata accessor for NANFollowUpTransmitter.FollowUpInformation();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v11 = *(TupleTypeMetadata2 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin();
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin();
  v17 = &v26 - v16;
  *(&v26 - v16) = *a1;
  v18 = *(v9 - 8);
  (*(v18 + 16))(&v26 + *(v15 + 48) - v16, a2, v9);
  (*(v11 + 16))(v14, v17, TupleTypeMetadata2);
  v19 = *(TupleTypeMetadata2 + 48);
  sub_1003704A0(v9);
  (*(v18 + 8))(&v14[v19], v9);
  v20 = NANConstants.followUpTimeout.unsafeMutableAddressor();
  v21 = v27;
  v22 = v28;
  v23 = v29;
  (*(v28 + 16))(v27, v20, v29);
  LOBYTE(v14) = static DispatchTimeInterval.< infix(_:_:)();
  v24 = *(v22 + 8);
  v24(v21, v23);
  v24(v8, v23);
  (*(v11 + 8))(v17, TupleTypeMetadata2);
  return (v14 & 1) == 0;
}

uint64_t sub_100372D2C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v20 = a2;
  type metadata accessor for NANFollowUpTransmitter.FollowUpIdentifier();
  v3 = type metadata accessor for NANFollowUpTransmitter.FollowUpInformation();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v5 = *(TupleTypeMetadata2 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v16 - v9;
  __chkstk_darwin();
  v12 = &v16 - v11;
  v13 = *(v5 + 16);
  v13(&v16 - v11, a1, TupleTypeMetadata2);
  v19 = *v12;
  v18 = *(TupleTypeMetadata2 + 48);
  v13(v10, a1, TupleTypeMetadata2);
  v17 = v10[1];
  v16 = *(TupleTypeMetadata2 + 48);
  v13(v8, a1, TupleTypeMetadata2);
  LOWORD(a1) = *(v8 + 3);
  v14 = *(*(v3 - 8) + 8);
  LODWORD(v5) = *(v8 + 2);
  v14(&v8[*(TupleTypeMetadata2 + 48)], v3);
  v14(&v10[v16], v3);
  v14(&v12[v18], v3);
  LOBYTE(v21[0]) = v19;
  HIBYTE(v21[0]) = v17;
  *&v21[1] = v5;
  v21[3] = a1;
  LOBYTE(v21[4]) = 1;
  sub_1000B24D4(v21);
  memcpy(v20, v21, 0x16AuLL);
  type metadata accessor for DriverEvent(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_100372FA4(void *a1, uint64_t a2, unint64_t a3)
{
  type metadata accessor for NANFollowUpTransmitter.FollowUpIdentifier();
  v6 = type metadata accessor for NANFollowUpTransmitter.FollowUpInformation();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = *(TupleTypeMetadata2 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v11 = &v18[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __chkstk_darwin();
  v14 = &v18[-v13];
  *&v18[-v13] = *a1;
  v15 = *(v6 - 8);
  (*(v15 + 16))(&v18[*(v12 + 48) - v13], a2, v6);
  (*(v8 + 16))(v11, v14, TupleTypeMetadata2);
  v16 = *(TupleTypeMetadata2 + 48);
  LOBYTE(a3) = static NANClusterChangeEvent.__derived_struct_equals(_:_:)(*(v11 + 1) | (*(v11 + 1) << 16), a3 >> 16);
  (*(v8 + 8))(v14, TupleTypeMetadata2);
  (*(v15 + 8))(&v11[v16], v6);
  return a3 & 1;
}

BOOL sub_100373198(void *a1, uint64_t a2, unsigned __int8 a3)
{
  type metadata accessor for NANFollowUpTransmitter.FollowUpIdentifier();
  v6 = type metadata accessor for NANFollowUpTransmitter.FollowUpInformation();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = *(TupleTypeMetadata2 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v11 = &v18[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __chkstk_darwin();
  v14 = &v18[-v13];
  *&v18[-v13] = *a1;
  v15 = *(v6 - 8);
  (*(v15 + 16))(&v18[*(v12 + 48) - v13], a2, v6);
  (*(v8 + 32))(v11, v14, TupleTypeMetadata2);
  v16 = *v11 != a3;
  (*(v15 + 8))(&v11[*(TupleTypeMetadata2 + 48)], v6);
  return v16;
}

uint64_t sub_100373364(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  v4 = sub_100370EBC(v14);
  v13 = v3;
  v5 = *(v2 + 80);
  v6 = *(v2 + 88);
  type metadata accessor for NANFollowUpTransmitter.FollowUpIdentifier();
  v7 = type metadata accessor for NANFollowUpTransmitter.FollowUpInformation();
  swift_getWitnessTable();
  type metadata accessor for Dictionary();
  v8 = Dictionary.subscript.modify();
  v10 = v9;
  if (!(*(*(v7 - 8) + 48))(v9, 1, v7))
  {
    *(v10 + *(v7 + 44)) = 1;
  }

  v8(v12, 0);
  return v4(v14, 0);
}

uint64_t sub_1003734D8()
{
  v1 = qword_10059BA08;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + qword_10059BA10);
  swift_unownedRelease();
  v4 = *(v0 + qword_1005976D0);

  v5 = *(v0 + qword_1005976D8);

  v6 = *(v0 + qword_1005976E0);

  return v0;
}

uint64_t sub_100373578()
{
  sub_1003734D8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_1003735E8()
{
  sub_10037373C(319, qword_1005977E8, type metadata accessor for NANAttribute, &type metadata accessor for Array);
  if (v0 <= 0x3F)
  {
    sub_10037373C(319, &qword_10059A640, type metadata accessor for NANIdentityKey, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      type metadata accessor for DispatchTime();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10037373C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1003737A0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1003737F4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10037383C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t sub_1003738C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10005DC58(&unk_100595C50, &unk_1004AFD20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100373938(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1003739A0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_100370B6C();
}

BOOL sub_1003739AC(uint64_t *a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_100372A3C(a1, a2);
}

uint64_t sub_1003739CC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_100372D2C(a1, a2);
}

uint64_t sub_1003739EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL sub_100373A4C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = 0x100000000000000;
  if (!*(v1 + 39))
  {
    v4 = 0;
  }

  return sub_1003711AC(a1, *(v1 + 32) | (*(v1 + 36) << 32) | (*(v1 + 37) << 40) | (*(v1 + 38) << 48) | v4, *(v1 + 40) | (*(v1 + 44) << 32) | (*(v1 + 45) << 40));
}

BOOL sub_100373AB0(void *a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_100373198(a1, a2, *(v2 + 32));
}

uint64_t sub_100373AF0(void *a1, uint64_t a2)
{
  v3 = v2[2];
  v4 = v2[3];
  return sub_100372FA4(a1, a2, v2[4]) & 1;
}

uint64_t sub_100373B14(uint64_t a1, uint64_t a2)
{
  v4 = sub_10005DC58(&unk_100595C50, &unk_1004AFD20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t *sub_100373B84(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  Logger.init(subsystem:category:)();
  v5 = qword_1005976D0;
  v6 = *(v4 + 80);
  v7 = *(v4 + 88);
  type metadata accessor for NANFollowUpTransmitter.FollowUpIdentifier();
  type metadata accessor for NANFollowUpTransmitter.FollowUpInformation();
  swift_getWitnessTable();
  *(v2 + v5) = Dictionary.init()();
  v8 = qword_1005976D8;
  *(v2 + v8) = Dictionary.init()();
  *(v2 + qword_1005976E0) = 0;
  *(v2 + qword_10059BA10) = a1;
  swift_unownedRetain();

  WiFiInterface.capabilities.getter();

  v13 = *WiFiDriverCapabilities.supportsSimultaneousDualBand.unsafeMutableAddressor();
  sub_1000C2A14();

  v9 = dispatch thunk of SetAlgebra.isSuperset(of:)();

  v10 = v2 + qword_1005976C8;
  v11 = 4;
  if (v9)
  {
    v11 = 10;
  }

  *v10 = v11;
  v10[8] = (v9 & 1) == 0;
  return v2;
}

uint64_t *sub_100373D68(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  return sub_100373B84(a1);
}

uint64_t sub_100373DA4()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100373E60()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10040CAE8();

    sub_10036C2F4();
  }

  return result;
}

uint64_t sub_100373ECC()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = &unk_10059B000;
  if ((*(v0 + qword_1005978F0) & 1) == 0)
  {
    v8 = *(v0 + qword_10059BA20);
    v9 = *(v1 + qword_10059BA20);
    swift_unownedRetainStrong();
    sub_10040CAE8();

    sub_100349934(v1);
  }

  v10 = qword_10059BA18;
  (*(v3 + 16))(v6, v1 + qword_10059BA18, v2);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v24 = v10;
    v25 = v14;
    v15 = v14;
    *v13 = 136315138;

    v16 = sub_1003741D4();
    v18 = v17;

    v19 = sub_100002320(v16, v18, &v25);

    *(v13 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v11, v12, "Destroyed %s", v13, 0xCu);
    sub_100002A00(v15);
    v10 = v24;

    v7 = &unk_10059B000;
  }

  else
  {
  }

  v20 = *(v3 + 8);
  v20(v6, v2);
  v20((v1 + v10), v2);
  v21 = *(v1 + v7[324]);
  swift_unownedRelease();
  v22 = *(v1 + qword_1005978F8);

  return v1;
}

uint64_t sub_100374150()
{
  sub_100373ECC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1003741D4()
{
  _StringGuts.grow(_:)(17);

  strcpy(v4, "NANDeviceLink[");
  HIBYTE(v4[1]) = -18;
  v1._countAndFlagsBits = WiFiAddress.description.getter(*(v0 + qword_10059BA28) | (*(v0 + qword_10059BA28 + 2) << 16));
  String.append(_:)(v1);

  v2._countAndFlagsBits = 93;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  return v4[0];
}

void *sub_1003742A4(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = a2 >> 8;
  v25 = a2 >> 8;
  v7 = a2 >> 16;
  v8 = a2 >> 24;
  v9 = HIDWORD(a2);
  v10 = *v3;
  v11 = a2 >> 40;
  Logger.init(subsystem:category:)();
  *(v3 + qword_1005978F0) = 0;
  *(v3 + qword_10059BA20) = a1;
  v12 = v3 + qword_10059BA28;
  *v12 = a2;
  v12[1] = v6;
  v12[2] = v7;
  v12[3] = v8;
  v12[4] = v9;
  v12[5] = v11;
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  *(v14 + 16) = *(v10 + 80);
  *(v14 + 24) = *(v10 + 88);
  *(v14 + 32) = v13;
  *(v14 + 40) = a2;
  *(v14 + 41) = v25;
  *(v14 + 42) = v7;
  *(v14 + 43) = v8;
  *(v14 + 44) = v9;
  *(v14 + 45) = v11;
  swift_unownedRetain();

  v15 = sub_10040DECC(a2 & 0xFFFFFFFFFFFFLL, 18, sub_1003745C0, v14);

  *(v3 + qword_1005978F8) = v15;

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v26 = v19;
    *v18 = 136315138;
    v20 = sub_1003741D4();
    v22 = v21;

    v23 = sub_100002320(v20, v22, &v26);

    *(v18 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v16, v17, "Created %s", v18, 0xCu);
    sub_100002A00(v19);
  }

  else
  {
  }

  return v3;
}

void *sub_10037456C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 80);
  v6 = *(v2 + 88);
  v7 = type metadata accessor for NANDeviceLink();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  return sub_1003742A4(a1, a2 & 0xFFFFFFFFFFFFLL);
}

uint64_t sub_1003745C0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 42);
  v5 = *(v0 + 40);
  return sub_100373E60();
}

uint64_t sub_1003745D8()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100374684()
{
  v1 = *(v0 + qword_10059BA38);
  swift_unownedRetainStrong();
  sub_10044C304();
}

uint64_t sub_1003746CC()
{
  v1 = *v0;
  v2 = qword_100597980;
  swift_beginAccess();
  v3 = *(v0 + v2);
  v4 = *(v1 + 80);
  v5 = *(v1 + 88);
  type metadata accessor for AWDLDiscoveryEngine.Browse();
  sub_10006153C();

  v6 = Dictionary.count.getter();

  v7 = qword_100597988;
  swift_beginAccess();
  v8 = *(v0 + v7);
  type metadata accessor for AWDLDiscoveryEngine.Advertise();
  sub_10002B68C();

  v9 = Dictionary.count.getter();

  v11 = __OFADD__(v6, v9);
  v12 = v6 + v9;
  if (v11)
  {
    __break(1u);
    goto LABEL_5;
  }

  v13 = qword_10059BA40;
  swift_beginAccess();
  v14 = *(v0 + v13);
  type metadata accessor for AWDLDiscoveryEngine.DatapathInitiator();

  v15 = Dictionary.count.getter();

  result = v12 + v15;
  if (__OFADD__(v12, v15))
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_100374870@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = qword_100597980;
  swift_beginAccess();
  v5 = *(v1 + v4);
  v6 = *(v3 + 80);
  v7 = *(v3 + 88);
  type metadata accessor for AWDLDiscoveryEngine.Browse();
  sub_10006153C();
  *a1 = v5;
}

uint64_t sub_100374904@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  v4 = *(a1 + 33);
  *a2 = *(a1 + 16);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 17) = v4;
}

uint64_t sub_100374938()
{
  v1 = v0;
  v2 = *v0;
  v40 = _swiftEmptyArrayStorage;
  v3 = qword_100597980;
  swift_beginAccess();
  *&v34 = *(v1 + v3);
  v4 = *(v2 + 80);
  v5 = *(v2 + 88);
  type metadata accessor for AWDLDiscoveryEngine.Browse();
  sub_10006153C();
  type metadata accessor for Dictionary();

  swift_getWitnessTable();
  Sequence.forEach(_:)();

  v39 = _swiftEmptyArrayStorage;
  v6 = qword_100597988;
  swift_beginAccess();
  *&v34 = *(v1 + v6);
  type metadata accessor for AWDLDiscoveryEngine.Advertise();
  sub_10002B68C();
  type metadata accessor for Dictionary();

  swift_getWitnessTable();
  Sequence.forEach(_:)();

  if (_swiftEmptyArrayStorage[2])
  {
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *&v34 = swift_slowAlloc();
      *v9 = 136315394;

      v10 = Array.description.getter();
      v12 = v11;

      v13 = sub_100002320(v10, v12, &v34);

      *(v9 + 4) = v13;
      *(v9 + 12) = 2080;

      v14 = Array.description.getter();
      v16 = v15;

      v17 = sub_100002320(v14, v16, &v34);

      *(v9 + 14) = v17;
      _os_log_impl(&_mh_execute_header, v7, v8, "Failed to recover browses: %s, advertises: %s", v9, 0x16u);
      swift_arrayDestroy();
    }

    v18 = _swiftEmptyArrayStorage[2];

    if (v18)
    {
      v20 = 0;
      v21 = &_swiftEmptyArrayStorage[6] + 1;
      while (v20 < _swiftEmptyArrayStorage[2])
      {
        ++v20;
        v22 = *(v21 - 1);
        v23 = *(v21 - 9);
        v24 = *(v21 - 17);
        v25 = *v21;
        v21 += 24;

        sub_1003758C0();

        if (v18 == v20)
        {
          goto LABEL_8;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_8:

      v26 = _swiftEmptyArrayStorage[2];

      if (!v26)
      {
LABEL_12:

        return swift_bridgeObjectRelease_n();
      }

      v27 = 0;
      v28 = &_swiftEmptyArrayStorage[8] + 1;
      while (v27 < _swiftEmptyArrayStorage[2])
      {
        ++v27;
        v29 = *v28;
        v30 = *(v28 - 1);
        v31 = *(v28 - 9);
        v32 = *(v28 - 17);
        v33 = *(v28 - 25);
        *&v34 = *(v28 - 33);
        *(&v34 + 1) = v33;
        v35 = v32;
        v36 = v31;
        v37 = v30;
        v38 = v29;

        sub_1003759A0(&v34);

        v28 += 40;
        if (v26 == v27)
        {
          goto LABEL_12;
        }
      }
    }

    __break(1u);
  }

  else
  {
  }

  return result;
}

uint64_t sub_100374DB0(uint64_t *a1, char **a2)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = *(a1 + 16);
  v7 = *(a1 + 17);
  v8 = a1[3];
  result = sub_100374EB0(1);
  if (v2)
  {
    v10 = *a2;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v10;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v10 = sub_1003A79F4(0, *(v10 + 2) + 1, 1, v10);
      *a2 = v10;
    }

    v13 = *(v10 + 2);
    v12 = *(v10 + 3);
    if (v13 >= v12 >> 1)
    {
      *a2 = sub_1003A79F4((v12 > 1), v13 + 1, 1, v10);
    }

    v14 = *a2;
    *(v14 + 2) = v13 + 1;
    v15 = &v14[24 * v13];
    *(v15 + 4) = v5;
    *(v15 + 5) = v4;
    v15[48] = v6;
    v15[49] = v7;
  }

  return result;
}

uint64_t sub_100374EB0(uint64_t a1)
{
  v3 = *(*(*v1 + 88) + 8);
  v4 = *(*v1 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = v18 - v8;
  v10 = *(v1 + qword_100597A18);
  swift_unownedRetainStrong();
  v11 = *(*v10 + 96);
  swift_beginAccess();
  (*(v6 + 16))(v9, v10 + v11, AssociatedTypeWitness);

  v12 = DNSRecords.Identifier.keyData.getter(*(v1 + qword_100597A20), *(v1 + qword_100597A20 + 8), *(v1 + qword_100597A20 + 16) | (*(v1 + qword_100597A20 + 17) << 8));
  v14 = v13;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v16 = v18[1];
  (*(AssociatedConformanceWitness + 128))(a1, v12, v14, 0, 0xF000000000000000, AssociatedTypeWitness, AssociatedConformanceWitness);
  if (!v16)
  {
    (*(v6 + 8))(v9, AssociatedTypeWitness);
    return sub_1000124C8(v12, v14);
  }

  (*(v6 + 8))(v9, AssociatedTypeWitness);
  sub_1000124C8(v12, v14);
  v22 = v16;
  swift_errorRetain();
  sub_10005DC58(&qword_10058C830, &qword_1004821F0);
  if (!swift_dynamicCast())
  {
  }

  if (v21 == 1)
  {
    if (v19 == 2)
    {
      goto LABEL_9;
    }
  }

  else
  {
    if (!v21)
    {
      if (v19 != 6)
      {
      }

LABEL_9:
    }

    sub_1000B2594(v19, v20, v21);
  }
}

uint64_t sub_100375180(uint64_t *a1, char **a2)
{
  v5 = *a1;
  v4 = a1[1];
  v7 = a1[2];
  v6 = a1[3];
  v8 = *(a1 + 32);
  v9 = *(a1 + 33);
  v10 = a1[5];
  result = sub_10037529C(1u);
  if (v2)
  {
    v12 = *a2;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v12;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = sub_1003A7B10(0, *(v12 + 2) + 1, 1, v12);
      *a2 = v12;
    }

    v15 = *(v12 + 2);
    v14 = *(v12 + 3);
    if (v15 >= v14 >> 1)
    {
      *a2 = sub_1003A7B10((v14 > 1), v15 + 1, 1, v12);
    }

    v16 = *a2;
    *(v16 + 2) = v15 + 1;
    v17 = &v16[40 * v15];
    *(v17 + 4) = v5;
    *(v17 + 5) = v4;
    *(v17 + 6) = v7;
    *(v17 + 7) = v6;
    v17[64] = v8;
    v17[65] = v9;
  }

  return result;
}

uint64_t sub_10037529C(unsigned int a1)
{
  v47 = a1;
  v2 = *v1;
  v44 = *(*v1 + 88);
  v3 = *(v44 + 8);
  v4 = *(v2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v42 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v37 - v9;
  v11 = *(v1 + qword_100597AD8);
  swift_unownedRetainStrong();
  v12 = *(*v11 + 96);
  swift_beginAccess();
  v46 = v6;
  v39 = *(v6 + 16);
  v40 = v6 + 16;
  v39(v10, v11 + v12, AssociatedTypeWitness);
  v41 = v11;

  v43 = v1;
  v13 = *(v1 + qword_100597AE0 + 16);
  v61 = *(v1 + qword_100597AE0);
  v62 = v13;
  v63 = *(v1 + qword_100597AE0 + 32);
  v14 = DNSRecords.PTR.keyData.getter();
  v16 = v15;
  v17 = DNSRecords.PTR.valueData.getter();
  v19 = v18;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v21 = *(AssociatedConformanceWitness + 128);
  v22 = v45;
  v44 = AssociatedConformanceWitness + 128;
  v45 = AssociatedConformanceWitness;
  v38 = v21;
  (v21)(v47, v14, v16, v17, v19, AssociatedTypeWitness);
  if (v22)
  {
    v37 = *(v46 + 8);
    v37(v10, AssociatedTypeWitness);
    sub_100017554(v17, v19);
    sub_1000124C8(v14, v16);
    v48[0] = v22;
    swift_errorRetain();
    sub_10005DC58(&qword_10058C830, &qword_1004821F0);
    if (swift_dynamicCast())
    {
      if (v50 == 1)
      {
        v23 = v42;
        v24 = v43;
        if (v49 == 2)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v23 = v42;
        v24 = v43;
        if (!v50)
        {
          if (v49 != 6)
          {
          }

LABEL_10:

          if ((v47 & 1) == 0)
          {
            goto LABEL_11;
          }

          goto LABEL_8;
        }

        sub_1000B2594(v49, *(&v49 + 1), v50);
      }
    }
  }

  v37 = *(v46 + 8);
  v37(v10, AssociatedTypeWitness);
  sub_100017554(v17, v19);
  sub_1000124C8(v14, v16);
  v23 = v42;
  v24 = v43;
  if ((v47 & 1) == 0)
  {
LABEL_11:
    v26 = *(v24 + qword_100597AE8 + 16);
    v49 = *(v24 + qword_100597AE8);
    v50 = v26;
    v51 = *(v24 + qword_100597AE8 + 32);
    v52 = *(v24 + qword_100597AE8 + 48);
    v57[0] = v49;
    v57[1] = v26;
    v57[2] = v51;
    v58 = v52;
    v60 = 0;
    memset(v59, 0, sizeof(v59));
    sub_100083AB8(&v49, v48);
    sub_10037C314(v57, v59);
    sub_100083B14(&v49);
    goto LABEL_14;
  }

LABEL_8:
  memset(v53, 0, sizeof(v53));
  v54 = 0;
  v25 = *(v24 + qword_100597AE8 + 16);
  v49 = *(v24 + qword_100597AE8);
  v50 = v25;
  v51 = *(v24 + qword_100597AE8 + 32);
  v52 = *(v24 + qword_100597AE8 + 48);
  v55[0] = v49;
  v55[1] = v25;
  v55[2] = v51;
  v56 = v52;
  sub_100083AB8(&v49, v48);
  sub_10037C314(v53, v55);
  sub_100083B14(&v49);
LABEL_14:
  v28 = v41;
  swift_unownedRetainStrong();
  v29 = *(*v28 + 96);
  swift_beginAccess();
  v39(v23, v28 + v29, AssociatedTypeWitness);

  v30 = AssociatedTypeWitness;
  v31 = DNSRecords.SRV.keyData.getter();
  v33 = v32;
  v34 = DNSRecords.SRV.valueData.getter();
  v36 = v35;
  v38(v47 & 1, v31, v33, v34, v35, v30, v45);
  v37(v23, v30);
  sub_100017554(v34, v36);
  return sub_1000124C8(v31, v33);
}

uint64_t sub_1003758C0()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 80);
  v3 = *(v1 + 88);
  type metadata accessor for AWDLDiscoveryEngine.Browse();
  sub_10006153C();
  type metadata accessor for Dictionary();
  Dictionary.removeValue(forKey:)();
  swift_endAccess();
  result = sub_100374684();
  if (v5)
  {
    sub_1003789F0();
  }

  return result;
}

uint64_t sub_1003759A0(__int128 *a1)
{
  v2 = *v1;
  v6 = *a1;
  v7 = a1[1];
  v8 = *(a1 + 16);
  swift_beginAccess();
  v3 = *(v2 + 80);
  v4 = *(v2 + 88);
  type metadata accessor for AWDLDiscoveryEngine.Advertise();
  sub_10002B68C();
  type metadata accessor for Dictionary();
  Dictionary.removeValue(forKey:)();
  swift_endAccess();
  result = sub_100374684();
  if (v9)
  {
    sub_1003798C8();
  }

  return result;
}

uint64_t sub_100375A88()
{
  v1 = v0;
  v2 = *v0;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = (v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = OS_dispatch_queue.awdl.unsafeMutableAddressor();
  v9 = *v8;
  *v7 = *v8;
  (*(v4 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v3);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  result = (*(v4 + 8))(v7, v3);
  if (v9)
  {
    v12 = qword_10059BA40;
    swift_beginAccess();
    v13 = *(v1 + v12);
    v14 = *(v2 + 80);
    v15 = *(v2 + 88);
    type metadata accessor for AWDLDiscoveryEngine.DatapathInitiator();
    v20[2] = sub_10002B68C();
    v23 = v13;
    type metadata accessor for Dictionary.Keys();

    swift_getWitnessTable();
    v23 = Array.init<A>(_:)();
    v20[1] = sub_10005DC58(&qword_100597CD0, &unk_1004B1E98);
    sub_10000CB24(&qword_100597CD8, &qword_100597CD0, &unk_1004B1E98);
    Sequence.forEach(_:)();

    v16 = qword_100597980;
    swift_beginAccess();
    v17 = *(v1 + v16);
    type metadata accessor for AWDLDiscoveryEngine.Browse();
    sub_10006153C();
    v22 = v17;
    type metadata accessor for Dictionary.Keys();

    swift_getWitnessTable();
    v22 = Array.init<A>(_:)();
    sub_10005DC58(&unk_10059B190, &unk_1004B1EA8);
    sub_10000CB24(&unk_100597CF0, &unk_10059B190, &unk_1004B1EA8);
    Sequence.forEach(_:)();

    v18 = qword_100597988;
    swift_beginAccess();
    v19 = *(v1 + v18);
    type metadata accessor for AWDLDiscoveryEngine.Advertise();
    v21 = v19;
    type metadata accessor for Dictionary.Keys();

    swift_getWitnessTable();
    v21 = Array.init<A>(_:)();
    Sequence.forEach(_:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100375E90(__int128 *a1)
{
  v2 = *v1;
  v6 = *a1;
  v7 = a1[1];
  v8 = *(a1 + 16);
  swift_beginAccess();
  v3 = *(v2 + 80);
  v4 = *(v2 + 88);
  type metadata accessor for AWDLDiscoveryEngine.DatapathInitiator();
  sub_10002B68C();
  type metadata accessor for Dictionary();
  Dictionary.removeValue(forKey:)();
  result = swift_endAccess();
  if (v9)
  {
    sub_10037B30C();
  }

  return result;
}

uint64_t sub_100375F6C()
{
  v1 = v0;
  v2 = *v0;
  v3 = qword_100597980;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = *(v2 + 80);
  v6 = *(v2 + 88);
  type metadata accessor for AWDLDiscoveryEngine.Browse();
  sub_10006153C();
  NANBitmap.Channel.operatingClass.getter(v4);
  type metadata accessor for Dictionary.Values();

  swift_getWitnessTable();
  Sequence.forEach(_:)();

  v7 = qword_100597988;
  swift_beginAccess();
  v8 = *(v1 + v7);
  type metadata accessor for AWDLDiscoveryEngine.Advertise();
  sub_10002B68C();
  NANBitmap.Channel.operatingClass.getter(v8);
  type metadata accessor for Dictionary.Values();

  swift_getWitnessTable();
  Sequence.forEach(_:)();
}

uint64_t sub_1003761F8@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t *__return_ptr, uint64_t, _BYTE *, uint64_t, uint64_t)@<X1>, void (*a3)(char *, char *)@<X2>, uint64_t a4@<X8>)
{
  v9 = *v4;
  v10 = qword_100597980;
  swift_beginAccess();
  v11 = *(v4 + v10);
  v12 = *(v9 + 80);
  v13 = *(v9 + 88);
  type metadata accessor for AWDLDiscoveryEngine.Browse();
  sub_10006153C();
  v23 = NANBitmap.Channel.operatingClass.getter(v11);
  v21 = v12;
  v22 = v13;
  v14 = type metadata accessor for Dictionary.Values();

  WitnessTable = swift_getWitnessTable();
  a2(&v24, a1, v20, v14, WitnessTable);

  v23 = v24;
  v19[2] = v12;
  v19[3] = v13;
  type metadata accessor for Optional();
  v16 = type metadata accessor for DispatchTimeInterval();
  sub_1003392B0(a3, v19, &type metadata for Never, v16, v17, a4);
}

uint64_t sub_10037639C(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for DispatchTime();
  v5 = *(v4 - 8);
  v6 = v5[8];
  __chkstk_darwin();
  v8 = &v18[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v10 = &v18[-v9];
  v11 = *a1;
  v12 = *a2;
  v13 = qword_100597A48;
  swift_beginAccess();
  v14 = v5[2];
  v14(v10, v11 + v13, v4);
  v15 = qword_100597A48;
  swift_beginAccess();
  v14(v8, v12 + v15, v4);
  LOBYTE(v12) = static DispatchTime.< infix(_:_:)();
  v16 = v5[1];
  v16(v8, v4);
  v16(v10, v4);
  return v12 & 1;
}

uint64_t sub_100376540(uint64_t *a1)
{
  v2 = type metadata accessor for DispatchTime();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v13 - v7;
  v9 = *a1;
  type metadata accessor for P2PTimer();
  variable initialization expression of AWDLPeer.lastUpdated();
  v10 = qword_100597A48;
  swift_beginAccess();
  (*(v3 + 16))(v6, v9 + v10, v2);
  DispatchTime.distance(to:)();
  v11 = *(v3 + 8);
  v11(v6, v2);
  return (v11)(v8, v2);
}

uint64_t sub_1003766B4()
{
  v1 = v0;
  v2 = *v0;
  v3 = qword_100597980;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = *(v2 + 80);
  v6 = *(v2 + 88);
  type metadata accessor for AWDLDiscoveryEngine.Browse();
  sub_10006153C();
  NANBitmap.Channel.operatingClass.getter(v4);
  type metadata accessor for Dictionary.Values();

  swift_getWitnessTable();
  LOBYTE(v2) = Sequence.contains(where:)();

  if (v2)
  {
    v7 = 1;
  }

  else
  {
    v8 = qword_100597988;
    swift_beginAccess();
    v9 = *(v1 + v8);
    type metadata accessor for AWDLDiscoveryEngine.Advertise();
    sub_10002B68C();
    NANBitmap.Channel.operatingClass.getter(v9);
    __chkstk_darwin();
    type metadata accessor for Dictionary.Values();

    swift_getWitnessTable();
    v7 = Sequence.contains(where:)();
  }

  return v7 & 1;
}

uint64_t sub_10037690C()
{
  v1 = v0;
  v2 = *v0;
  v3 = qword_100597980;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = *(v2 + 80);
  v6 = *(v2 + 88);
  type metadata accessor for AWDLDiscoveryEngine.Browse();
  sub_10006153C();
  NANBitmap.Channel.operatingClass.getter(v4);
  type metadata accessor for Dictionary.Values();

  swift_getWitnessTable();
  Sequence.forEach(_:)();

  v7 = qword_100597988;
  swift_beginAccess();
  v8 = *(v1 + v7);
  type metadata accessor for AWDLDiscoveryEngine.Advertise();
  sub_10002B68C();
  NANBitmap.Channel.operatingClass.getter(v8);
  type metadata accessor for Dictionary.Values();

  swift_getWitnessTable();
  Sequence.forEach(_:)();
}

void sub_100376B14(uint64_t *a1)
{
  v1 = *a1;
  v2 = qword_100597A38;
  v3 = qword_100597A40;
  *(*a1 + qword_100597A40) = *(*a1 + qword_100597A38);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    *v6 = 136315650;
    v8 = *(v1 + qword_100597A20);
    v9 = *(v1 + qword_100597A20 + 8);

    v10 = sub_100002320(v8, v9, &v11);

    *(v6 + 4) = v10;
    *(v6 + 12) = 1024;
    *(v6 + 14) = *(v1 + v2);
    *(v6 + 18) = 1024;
    *(v6 + 20) = *(v1 + v3);

    _os_log_impl(&_mh_execute_header, v4, v5, "triggeredTTRForServiceAcrossSleep BService:%s sleep/wake:%{BOOL}d alreadyTTR:%{BOOL}d", v6, 0x18u);
    sub_100002A00(v7);
  }

  else
  {
  }
}

uint64_t sub_100376CA8()
{
  v1 = qword_10059BA30;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + qword_10059BA38);
  swift_unownedRelease();
  v4 = *(v0 + qword_100597980);

  v5 = *(v0 + qword_100597988);

  v6 = *(v0 + qword_10059BA40);

  return v0;
}

uint64_t sub_100376D78()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for DispatchTime();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_100376E6C(uint64_t a1, uint64_t a2, unsigned int a3, void *a4)
{
  v37 = a3 >> 8;
  v9 = *v4;
  v10 = *(v4 + qword_10059BA38);
  swift_unownedRetainStrong();
  v11 = *(*v10 + 752);
  swift_beginAccess();
  v35 = a3;
  v12 = a3 & 0xFFFFFF01;

  sub_10046F77C(v43, a1, a2, v12);
  swift_endAccess();

  v13 = *(v9 + 80);
  v14 = *(v9 + 88);
  v15 = type metadata accessor for AWDLDiscoveryEngine.Browse();
  swift_unownedRetainStrong();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();

  v40 = a1;
  v18 = a1;
  v19 = v12;
  v20 = sub_10037F80C(v10, v18, a2, v12);

  v21 = *(v20 + qword_100597A28);
  *(v20 + qword_100597A28) = a4;
  swift_unknownObjectRelease();
  v43[0] = v20;
  swift_beginAccess();
  sub_10006153C();
  type metadata accessor for Dictionary();

  v38 = a4;
  swift_unknownObjectRetain();

  Dictionary.subscript.setter();
  swift_endAccess();
  sub_100374684();
  sub_1003772C4();
  if (v39)
  {
    v36 = v35 & 1;

    swift_errorRetain();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v33 = v23;
      v24 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v42 = v34;
      *v24 = 136315394;
      v25 = v40;
      v26 = DNSRecords.Identifier.description.getter(v40, a2, v19);
      v31 = v22;
      v28 = sub_100002320(v26, v27, &v42);

      *(v24 + 4) = v28;
      *(v24 + 12) = 2112;
      swift_errorRetain();
      v29 = _swift_stdlib_bridgeErrorToNSError();
      *(v24 + 14) = v29;
      *v32 = v29;
      _os_log_impl(&_mh_execute_header, v31, v33, "Failed to start browse for %s because %@", v24, 0x16u);
      sub_100016290(v32, &qword_10058B780, &qword_100480AC0);

      sub_100002A00(v34);
    }

    else
    {

      v25 = v40;
    }

    v43[0] = v25;
    v43[1] = a2;
    v44 = v36;
    v45 = v37;
    swift_beginAccess();
    Dictionary.removeValue(forKey:)();
    swift_endAccess();

    sub_100374684();
    swift_getErrorValue();
    [v38 subscribeFailedToStartWithError:Error.apiError.getter(v41)];
    swift_willThrow();
  }

  else
  {

    return v40;
  }
}

uint64_t sub_1003772C4()
{
  v2 = v0;
  v56 = sub_10005DC58(&unk_100595FA0, &unk_1004B0190);
  v3 = *(*(v56 - 8) + 64);
  __chkstk_darwin();
  v55 = &v52 - v4;
  v5 = type metadata accessor for DispatchTime();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin();
  v14 = (&v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = OS_dispatch_queue.awdl.unsafeMutableAddressor();
  v16 = *v15;
  *v14 = *v15;
  (*(v11 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v10);
  v17 = v16;
  LOBYTE(v16) = _dispatchPreconditionTest(_:)();
  result = (*(v11 + 8))(v14, v10);
  if ((v16 & 1) == 0)
  {
LABEL_21:
    __break(1u);
    return result;
  }

  result = sub_100374EB0(1);
  if (!v1)
  {
    v52 = 0;
    *(v2 + qword_100597A30) = 1;
    type metadata accessor for P2PTimer();
    variable initialization expression of AWDLPeer.lastUpdated();
    v19 = qword_100597A48;
    swift_beginAccess();
    (*(v6 + 40))(v2 + v19, v9, v5);
    swift_endAccess();
    v20 = *(v2 + qword_100597A28);
    if (v20)
    {
      [v20 subscribeStartedWithInstanceID:0];
    }

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v59 = v24;
      *v23 = 136315138;
      v25 = sub_10037BFE4();
      v27 = v26;

      v28 = sub_100002320(v25, v27, &v59);

      *(v23 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v21, v22, "%s was started", v23, 0xCu);
      sub_100002A00(v24);
    }

    else
    {
    }

    v29 = *(v2 + qword_100597A18);
    swift_unownedRetainStrong();
    v30 = *(*v29 + 448);
    swift_beginAccess();
    v31 = *(v29 + v30);

    v32 = v31 + 64;
    v33 = 1 << *(v31 + 32);
    v34 = -1;
    if (v33 < 64)
    {
      v34 = ~(-1 << v33);
    }

    v35 = v34 & *(v31 + 64);
    v36 = (v33 + 63) >> 6;
    v54 = v31;

    v37 = 0;
    for (i = v2; v35; result = sub_100016290(v47, &unk_100595FA0, &unk_1004B0190))
    {
      v38 = v37;
LABEL_16:
      v39 = __clz(__rbit64(v35));
      v35 &= v35 - 1;
      v40 = v39 | (v38 << 6);
      v41 = *(v54 + 56);
      v42 = (*(v54 + 48) + 6 * v40);
      v57 = *v42;
      v43 = v42[1];
      v44 = v42[2];
      v45 = v42[3];
      v58 = v42[4];
      v60 = v42[5];
      v46 = v41 + *(*(type metadata accessor for AWDLPeer(0) - 8) + 72) * v40;
      v47 = v55;
      v48 = *(v56 + 48);
      sub_1000275E0(v46, &v55[v48], type metadata accessor for AWDLPeer);
      v49 = v57;
      v50 = v58;
      *v47 = v57;
      v47[1] = v43;
      v47[2] = v44;
      v47[3] = v45;
      v47[4] = v50;
      v51 = v60;
      v47[5] = v60;
      sub_10037BD70(v49 | (v43 << 8) | (v44 << 16) | (v45 << 24) | (v50 << 32) | (v51 << 40), &v47[v48], i);
    }

    while (1)
    {
      v38 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        break;
      }

      if (v38 >= v36)
      {
      }

      v35 = *(v32 + 8 * v38);
      ++v37;
      if (v35)
      {
        v37 = v38;
        goto LABEL_16;
      }
    }

    __break(1u);
    goto LABEL_21;
  }

  return result;
}

uint64_t sub_100377818()
{
  v1 = *v0;
  v2 = DNSRecords.Identifier.assistedDiscovery.unsafeMutableAddressor();
  v4 = *v2;
  v3 = *(v2 + 1);
  v5 = v2[16];
  v6 = v2[17];
  v7 = qword_100597980;
  swift_beginAccess();
  v8 = *(v0 + v7);
  v9 = *(v1 + 80);
  v10 = *(v1 + 88);
  type metadata accessor for AWDLDiscoveryEngine.Browse();
  sub_10006153C();

  Dictionary.subscript.getter();

  if (!v15)
  {
    swift_endAccess();
LABEL_7:
    v18 = 0;
    v16 = 0u;
    v17 = 0u;
    return sub_100016290(&v16, &unk_100597CA0, &unk_1004B1E70);
  }

  swift_endAccess();
  v11 = *(v15 + qword_100597A28);
  swift_unknownObjectRetain();

  if (!v11)
  {
    goto LABEL_7;
  }

  sub_10005DC58(&unk_1005974E0, &qword_1004B1818);
  sub_10005DC58(&unk_100597CB0, &unk_1004B1E80);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_7;
  }

  v12 = *(&v17 + 1);
  if (*(&v17 + 1))
  {
    v13 = v18;
    sub_100029B34(&v16, *(&v17 + 1));
    (*(v13 + 8))(v12, v13);
    return sub_100002A00(&v16);
  }

  return sub_100016290(&v16, &unk_100597CA0, &unk_1004B1E70);
}

uint64_t sub_1003779EC(void *a1, uint64_t a2)
{
  v5 = [objc_allocWithZone(WiFiAwarePublishServiceSpecificInfo) init];
  v6 = a1[1];
  v7 = a1[2];
  v8 = String._bridgeToObjectiveC()();
  [v5 setInstanceName:v8];

  if (a1[7])
  {
    v10 = a1[11];
    v9 = a1[12];
    sub_10000AB0C(v10, v9);
    v11.super.isa = Data._bridgeToObjectiveC()().super.isa;
    sub_1000124C8(v10, v9);
  }

  else
  {
    v11.super.isa = 0;
  }

  [v5 setTxtRecordData:v11.super.isa];

  if (*(v2 + qword_100597A28))
  {
    v18 = *(v2 + qword_100597A28);
    swift_unknownObjectRetain();
    sub_10005DC58(&unk_1005974E0, &qword_1004B1818);
    sub_10005DC58(&unk_100597CB0, &unk_1004B1E80);
    if (swift_dynamicCast())
    {
      v12 = *(&v20 + 1);
      if (*(&v20 + 1))
      {
        v13 = v21;
        sub_100029B34(&v19, *(&v20 + 1));
        v14 = *(v13 + 16);
        v15 = *a1 | ((a2 & 0xFFFFFFFFFFFFLL) << 8);
        v16 = v5;
        v14(v5, v15, v12, v13);

        return sub_100002A00(&v19);
      }
    }

    else
    {
      v21 = 0;
      v19 = 0u;
      v20 = 0u;
    }
  }

  else
  {

    v21 = 0;
    v19 = 0u;
    v20 = 0u;
  }

  return sub_100016290(&v19, &unk_100597CA0, &unk_1004B1E70);
}

void sub_100377BC4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DNSRecords.SRV();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin();
  v7 = &v27[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v27[-1] - v8;
  v10 = qword_10059BA68;
  swift_beginAccess();
  sub_10037FFA4(a1, v2 + v10);
  swift_endAccess();
  sub_1000275E0(a1, v9, type metadata accessor for DNSRecords.SRV);
  sub_1000275E0(a1, v7, type metadata accessor for DNSRecords.SRV);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v27[0] = v26;
    *v13 = 136315650;
    v14 = sub_10037D390();
    v16 = v15;

    v17 = sub_100002320(v14, v16, v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    v18 = &v9[*(v4 + 24)];
    v19 = *v18;
    v20 = v18[1];

    sub_100380008(v9, type metadata accessor for DNSRecords.SRV);
    v21 = sub_100002320(v19, v20, v27);

    *(v13 + 14) = v21;
    *(v13 + 22) = 512;
    v22 = &v7[*(v4 + 20)];
    LOWORD(v22) = NWEndpoint.Port.rawValue.getter();
    sub_100380008(v7, type metadata accessor for DNSRecords.SRV);
    *(v13 + 24) = v22;
    _os_log_impl(&_mh_execute_header, v11, v12, "%s updated datapath service info to %s%%%hu", v13, 0x1Au);
    swift_arrayDestroy();
  }

  else
  {
    sub_100380008(v7, type metadata accessor for DNSRecords.SRV);

    sub_100380008(v9, type metadata accessor for DNSRecords.SRV);
  }

  v23 = *(v2 + qword_10059BA70);
  if (v23)
  {
    v24 = *(v2 + qword_10059BA70);
    swift_unknownObjectRetain();
    v25 = sub_10037D1EC();
    [v23 datapathUpdatedServiceSpecificInfo:v25];

    swift_unknownObjectRelease();
  }
}

void sub_100377EE0(void *a1, uint64_t a2)
{
  v3 = v2;
  v64 = a2;
  v5 = *(*(type metadata accessor for AWDLPeer.AdvertisedService(0) - 8) + 64);
  __chkstk_darwin();
  v63 = v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*(sub_10005DC58(&qword_10058F4D0, &qword_100491AB0) - 8) + 64);
  __chkstk_darwin();
  v9 = v61 - v8;
  v10 = type metadata accessor for AWDLPeer(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin();
  v13 = v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_allocWithZone(WiFiAwarePublishServiceSpecificInfo) init];
  v15 = a1[1];
  v16 = a1[2];
  v17 = String._bridgeToObjectiveC()();
  [v14 setInstanceName:v17];

  if (a1[7])
  {
    v19 = a1[11];
    v18 = a1[12];
    sub_10000AB0C(v19, v18);
    v20.super.isa = Data._bridgeToObjectiveC()().super.isa;
    sub_1000124C8(v19, v18);
  }

  else
  {
    v20.super.isa = 0;
  }

  [v14 setTxtRecordData:v20.super.isa];

  v21 = a1[3];
  v61[1] = a1[4];
  v62 = *a1;
  v22 = v64;
  v23 = WiFiAddress.apiAddress.getter(v64 & 0xFFFFFFFFFFFFLL);
  v24 = *(v3 + qword_100597A18);
  swift_unownedRetainStrong();
  sub_100041B60(v22 & 0xFFFFFFFFFFFFLL, v13);

  v25 = &v13[*(v10 + 96)];
  v26 = v25[8];
  v65 = v3;
  if (v26)
  {
    v27 = &v13[*(v10 + 92)];
    v28 = *v27;
    v29 = v27[8];
    sub_100380008(v13, type metadata accessor for AWDLPeer);
    if (v29)
    {
      v30 = -60;
    }

    else
    {
      v30 = v28;
    }
  }

  else
  {
    v30 = *v25;
    sub_100380008(v13, type metadata accessor for AWDLPeer);
  }

  if (qword_1005943E8 != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for UUID();
  v32 = sub_100037644(v31, qword_10059BAD0);
  v33 = *(v31 - 8);
  (*(v33 + 16))(v9, v32, v31);
  (*(v33 + 56))(v9, 0, 1, v31);
  v34 = v14;
  v35 = String._bridgeToObjectiveC()();
  isa = 0;
  if ((*(v33 + 48))(v9, 1, v31) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v33 + 8))(v9, v31);
  }

  v37 = objc_allocWithZone(WiFiAwareDiscoveryResult);
  LOBYTE(v60) = 0;
  v38 = [v37 initWithServiceName:v35 serviceSpecificInfo:v34 publishID:v62 subscribeID:0 publisherAddressKey:v23 datapathSupported:1 datapathCipherSuite:0 fsdFunction:0 rssi:v30 pairSetupRequired:v60 pairingConfiguration:0 pairedUUID:isa pairedDeviceName:0 signature:0];

  v39 = v63;
  sub_1000275E0(a1, v63, type metadata accessor for AWDLPeer.AdvertisedService);
  v40 = v38;
  v41 = v65;
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = v39;
    v45 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    *v45 = 136315650;
    v46 = WiFiAddress.description.getter(v64 & 0xFFFFFFFFFFFFLL);
    v48 = sub_100002320(v46, v47, &v67);

    *(v45 + 4) = v48;
    *(v45 + 12) = 2080;
    v50 = *(v44 + 24);
    v68 = *(v44 + 8);
    v69 = v50;
    v70 = *(v44 + 40);
    v51 = DNSRecords.PTR.description.getter(v49);
    v53 = v52;
    sub_100380008(v44, type metadata accessor for AWDLPeer.AdvertisedService);
    v54 = sub_100002320(v51, v53, &v67);

    *(v45 + 14) = v54;
    *(v45 + 22) = 2080;
    v41 = v65;
    v66 = [v40 rssi];
    v55 = sub_100086E78();
    RSSI.init<A>(_:)(&v66, &type metadata for Int, v55);
    v56 = RSSI.description.getter();
    v58 = sub_100002320(v56, v57, &v67);

    *(v45 + 24) = v58;
    _os_log_impl(&_mh_execute_header, v42, v43, "Received a new discovery result %s [%s] at %s", v45, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100380008(v39, type metadata accessor for AWDLPeer.AdvertisedService);
  }

  if (*(v41 + qword_100597A28))
  {
    v59 = *(v41 + qword_100597A28);
    [swift_unknownObjectRetain() subscribeReceivedDiscoveryResult:v40];
    swift_unknownObjectRelease();
  }
}

uint64_t sub_100378510(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v8 = *(a1 + 24);
  v7 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a1 + 41);
  v11 = qword_100597980;
  swift_beginAccess();
  v12 = *(a2 + v11);
  v13 = *(v6 + 80);
  v14 = *(v6 + 88);
  type metadata accessor for AWDLDiscoveryEngine.Browse();
  sub_10006153C();

  Dictionary.subscript.getter();

  swift_endAccess();
  if (v23)
  {
    v15 = type metadata accessor for AWDLPeer(0);
    sub_10037867C(a1, *(a3 + *(v15 + 20)) | (*(a3 + *(v15 + 20) + 2) << 16));
  }

  v16 = *(a1 + 16);
  *&v18 = *(a1 + 8);
  *(&v18 + 1) = v16;
  v19 = v8;
  v20 = v7;
  v21 = v9;
  v22 = v10;
  return sub_100375E90(&v18);
}

void sub_10037867C(unsigned __int8 *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(*(type metadata accessor for AWDLPeer.AdvertisedService(0) - 8) + 64);
  __chkstk_darwin();
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000275E0(a1, v8, type metadata accessor for AWDLPeer.AdvertisedService);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v11 = 136315394;
    v12 = WiFiAddress.description.getter(a2 & 0xFFFFFFFFFFFFLL);
    v14 = sub_100002320(v12, v13, &v26);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2080;
    v16 = *(v8 + 24);
    v27 = *(v8 + 8);
    v28 = v16;
    v29 = *(v8 + 20);
    v17 = DNSRecords.PTR.description.getter(v15);
    v19 = v18;
    sub_100380008(v8, type metadata accessor for AWDLPeer.AdvertisedService);
    v20 = sub_100002320(v17, v19, &v26);

    *(v11 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "Aging out discovery result %s [%s]", v11, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100380008(v8, type metadata accessor for AWDLPeer.AdvertisedService);
  }

  v21 = *(v3 + qword_100597A28);
  if (v21)
  {
    v22 = *a1;
    v23 = *(v3 + qword_100597A28);
    swift_unknownObjectRetain();
    v24 = WiFiAddress.apiAddress.getter(a2 & 0xFFFFFFFFFFFFLL);
    [v21 subscribeLostDiscoveryResultForPublishID:v22 address:v24];

    swift_unknownObjectRelease();
  }
}

uint64_t sub_1003788E8()
{
  v1 = *v0;
  v2 = qword_100597980;
  swift_beginAccess();
  v3 = *(v0 + v2);
  v4 = *(v1 + 80);
  v5 = *(v1 + 88);
  type metadata accessor for AWDLDiscoveryEngine.Browse();
  sub_10006153C();

  Dictionary.subscript.getter();

  swift_endAccess();
  if (!v8)
  {
    return 0;
  }

  v6 = *(v8 + qword_100597A28);
  swift_unknownObjectRetain();

  return v6;
}

uint64_t sub_1003789F0()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = (&v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = OS_dispatch_queue.awdl.unsafeMutableAddressor();
  v8 = *v7;
  *v6 = *v7;
  (*(v3 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v2);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  result = (*(v3 + 8))(v6, v2);
  if (v8)
  {
    v11 = qword_100597A30;
    if (*(v1 + qword_100597A30) == 1)
    {

      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v31 = v15;
        *v14 = 136315138;
        v16 = sub_10037BFE4();
        v18 = v17;

        v19 = sub_100002320(v16, v18, &v31);

        *(v14 + 4) = v19;
        _os_log_impl(&_mh_execute_header, v12, v13, "%s will attempt to stop", v14, 0xCu);
        sub_100002A00(v15);
      }

      else
      {
      }

      *(v1 + v11) = 0;
      sub_100374EB0(0);

      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        *v22 = 136315394;
        v23 = sub_10037BFE4();
        v25 = v24;

        v26 = sub_100002320(v23, v25, &v31);

        *(v22 + 4) = v26;
        *(v22 + 12) = 2080;
        *(v22 + 14) = sub_100002320(0x7165522072657355, 0xEE00646574736575, &v31);
        _os_log_impl(&_mh_execute_header, v20, v21, "%s was terminated with reason %s", v22, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
      }

      v27 = qword_100597A28;
      v28 = *(v1 + qword_100597A28);
      if (v28)
      {
        [v28 subscribeTerminatedWithReason:2];
        v29 = *(v1 + v27);
      }

      *(v1 + v27) = 0;
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100378FB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, NSObject *a3@<X2>, void *a4@<X3>, _OWORD *a5@<X8>)
{
  v53 = a4;
  v50 = a3;
  v51 = a2;
  v48 = a5;
  v7 = *v5;
  v8 = *(*(type metadata accessor for DNSRecords.SRV() - 8) + 64);
  __chkstk_darwin();
  v49 = (&v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v5 + qword_10059BA38);
  swift_unownedRetainStrong();
  v12 = *(a1 + 16);
  v11 = *(a1 + 24);
  v13 = *(a1 + 32);
  v14 = *(*v10 + 752);
  v15 = *(a1 + 33);
  swift_beginAccess();
  v16 = v13 | (v15 << 8);
  v17 = v53;

  sub_10046F77C(v56, v12, v11, v16);
  swift_endAccess();

  v18 = *(v7 + 80);
  v19 = *(v7 + 88);
  v20 = type metadata accessor for AWDLDiscoveryEngine.Advertise();
  swift_unownedRetainStrong();
  v60[0] = *a1;
  v21 = v49;
  sub_1000275E0(v50, v49, type metadata accessor for DNSRecords.SRV);

  sub_1000836D4(v60, &v57);
  v22 = v51;
  sub_100083AB8(v51, &v57);
  v23 = *(v20 + 48);
  v24 = *(v20 + 52);
  swift_allocObject();
  v25 = sub_10037FA1C(v10, a1, v22, v21);

  v26 = *(v25 + qword_100597AF8);
  *(v25 + qword_100597AF8) = v17;
  swift_unknownObjectRelease();
  v61 = v25;
  v27 = *(a1 + 16);
  v57 = *a1;
  v58 = v27;
  v59 = *(a1 + 32);
  v28 = qword_100597988;
  swift_beginAccess();

  sub_1000836D4(v60, &v55);
  sub_10002B68C();
  v29 = type metadata accessor for Dictionary();
  swift_unknownObjectRetain();

  v51 = v28;
  Dictionary.subscript.setter();
  swift_endAccess();
  sub_100374684();
  v30 = v52;
  sub_10037950C();
  if (v30)
  {
    v52 = v29;

    sub_1000836D4(v60, &v57);
    swift_errorRetain();
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    sub_10008378C(v60);

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v50 = v31;
      v34 = v33;
      v49 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *&v57 = v35;
      *v34 = 136315394;
      v36 = DNSRecords.PTR.description.getter(v35);
      v38 = sub_100002320(v36, v37, &v57);

      *(v34 + 4) = v38;
      *(v34 + 12) = 2112;
      swift_errorRetain();
      v39 = _swift_stdlib_bridgeErrorToNSError();
      *(v34 + 14) = v39;
      v40 = v49;
      *v49 = v39;
      v41 = v50;
      _os_log_impl(&_mh_execute_header, v50, v32, "Failed to start advertise for %s because %@", v34, 0x16u);
      sub_100016290(v40, &qword_10058B780, &qword_100480AC0);

      sub_100002A00(v35);
    }

    else
    {
    }

    v45 = *(a1 + 16);
    v57 = *a1;
    v58 = v45;
    v59 = *(a1 + 32);
    swift_beginAccess();
    Dictionary.removeValue(forKey:)();
    swift_endAccess();

    sub_100374684();
    swift_getErrorValue();
    v46 = Error.apiError.getter(v54);
    [v53 publishFailedToStartWithError:v46];
    swift_willThrow();
  }

  else
  {

    sub_1000836D4(v60, &v57);

    v43 = *(a1 + 16);
    v44 = v48;
    *v48 = *a1;
    v44[1] = v43;
    *(v44 + 16) = *(a1 + 32);
  }

  return result;
}

id sub_10037950C()
{
  v2 = v0;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = (&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = OS_dispatch_queue.awdl.unsafeMutableAddressor();
  v9 = *v8;
  *v7 = *v8;
  (*(v4 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v3);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  result = (*(v4 + 8))(v7, v3);
  if (v9)
  {
    result = sub_10037529C(1u);
    if (!v1)
    {
      *(v2 + qword_100597B00) = 1;

      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v21 = v15;
        *v14 = 136315138;

        v16 = sub_10037CE1C();
        v18 = v17;

        v19 = sub_100002320(v16, v18, &v21);

        *(v14 + 4) = v19;
        _os_log_impl(&_mh_execute_header, v12, v13, "%s was started", v14, 0xCu);
        sub_100002A00(v15);
      }

      else
      {
      }

      result = *(v2 + qword_100597AF8);
      if (result)
      {
        return [result publishStartedWithInstanceID:0 maximumNANDataPath:0];
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100379784(__int128 *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = a1[1];
  v19 = *a1;
  v17 = v6;
  v18 = *(a1 + 16);
  v7 = qword_100597988;
  swift_beginAccess();
  v8 = *(v2 + v7);
  v9 = a1[1];
  v13[0] = *a1;
  v13[1] = v9;
  v14 = *(a1 + 16);
  sub_1000836D4(&v19, v15);
  sub_100083730(&v17, v15);
  v10 = *(v5 + 80);
  v11 = *(v5 + 88);
  type metadata accessor for AWDLDiscoveryEngine.Advertise();
  sub_10002B68C();
  Dictionary.subscript.getter();
  sub_10008378C(&v19);
  sub_1000837E0(&v17);
  if (!v16)
  {
    return swift_endAccess();
  }

  swift_endAccess();
  sub_100083AB8(a2, v13);
  sub_10037FC98(a2);
  sub_100083B14(a2);
}

uint64_t sub_1003798C8()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = (&v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = OS_dispatch_queue.awdl.unsafeMutableAddressor();
  v8 = *v7;
  *v6 = *v7;
  (*(v3 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v2);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  result = (*(v3 + 8))(v6, v2);
  if (v8)
  {
    v11 = qword_100597B00;
    if (*(v1 + qword_100597B00) == 1)
    {

      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v31 = v15;
        *v14 = 136315138;
        v16 = sub_10037CE1C();
        v18 = v17;

        v19 = sub_100002320(v16, v18, &v31);

        *(v14 + 4) = v19;
        _os_log_impl(&_mh_execute_header, v12, v13, "%s will attempt to stop", v14, 0xCu);
        sub_100002A00(v15);
      }

      else
      {
      }

      *(v1 + v11) = 0;
      sub_10037529C(0);

      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        *v22 = 136315394;
        v23 = sub_10037CE1C();
        v25 = v24;

        v26 = sub_100002320(v23, v25, &v31);

        *(v22 + 4) = v26;
        *(v22 + 12) = 2080;
        *(v22 + 14) = sub_100002320(0x7165522072657355, 0xEE00646574736575, &v31);
        _os_log_impl(&_mh_execute_header, v20, v21, "%s was terminated with reason %s", v22, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
      }

      v27 = qword_100597AF8;
      v28 = *(v1 + qword_100597AF8);
      if (v28)
      {
        [v28 publishTerminatedWithReason:2];
        v29 = *(v1 + v27);
      }

      *(v1 + v27) = 0;
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100379E90(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v21[1] = a3;
  v23 = a2;
  v4 = *(*(*v3 + 88) + 8);
  v5 = *(*v3 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v10 = v21 - v9;
  v22 = v3;
  v11 = *(v3 + qword_10059BA38);
  swift_unownedRetainStrong();
  v12 = *(*v11 + 96);
  swift_beginAccess();
  (*(v7 + 16))(v10, v11 + v12, AssociatedTypeWitness);

  v13 = DNSRecords.ARPA.keyData.getter();
  v15 = v14;
  v16 = DNSRecords.ARPA.valueData.getter();
  v18 = v17;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 128))(v23, v13, v15, v16, v18, AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v7 + 8))(v10, AssociatedTypeWitness);
  sub_100017554(v16, v18);
  return sub_1000124C8(v13, v15);
}

uint64_t sub_10037A24C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, _OWORD *a4@<X8>)
{
  v5 = v4;
  v83 = a3;
  v77 = a4;
  v79 = *v5;
  v8 = *(*(type metadata accessor for DNSRecords.SRV() - 8) + 64);
  __chkstk_darwin();
  v80 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (type metadata accessor for AWDLPeer(0) - 8);
  v11 = *(*v10 + 64);
  __chkstk_darwin();
  v13 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(*(sub_10005DC58(&qword_10058FA18, &qword_100493068) - 8) + 64);
  __chkstk_darwin();
  v85 = &v76 - v15;
  v84 = type metadata accessor for AWDLPeer.AdvertisedService(0);
  v103 = *(v84 - 8);
  v16 = *(v103 + 64);
  __chkstk_darwin();
  v18 = &v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v89 = &v76 - v19;
  __chkstk_darwin();
  v86 = &v76 - v20;
  v21 = [a2 publisherAddress];
  v22 = WiFiMACAddress.wifiAddress.getter();

  v87 = v5;
  v23 = *(v5 + qword_10059BA38);
  swift_unownedRetainStrong();
  v82 = v22;
  sub_100041B60(v22 & 0xFFFFFFFFFFFFLL, v13);
  v24 = a1;
  v78 = v23;

  v25 = *&v13[v10[22]];

  v26 = v13;
  v27 = v25;
  sub_100380008(v26, type metadata accessor for AWDLPeer);
  v28 = 1 << *(v25 + 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v30 = v29 & *(v25 + 56);
  v31 = (v28 + 63) >> 6;
  v88 = *(a1 + 33) << 8;

  v33 = 0;
  v90 = v25;
  while (v30)
  {
LABEL_10:
    v35 = v89;
    sub_1000275E0(*(v27 + 48) + *(v103 + 72) * (__clz(__rbit64(v30)) | (v33 << 6)), v89, type metadata accessor for AWDLPeer.AdvertisedService);
    sub_10037D4B0(v35, v18);
    v36 = *(v18 + 1);
    v37 = *(v18 + 2);
    v92 = *(v18 + 3);
    v91 = *(v18 + 4);
    v38 = v18[40];
    v39 = v18[41];
    *&v96 = v36;
    *(&v96 + 1) = v37;
    v95 = *v24;
    sub_10005E2E4();
    if (!StringProtocol.caseInsensitiveCompare<A>(_:)() && static DNSRecords.Identifier.== infix(_:_:)(v92, v91, v38 | (v39 << 8), *(v24 + 16), *(v24 + 24), v88 | *(v24 + 32)))
    {

      v40 = v85;
      sub_10037D4B0(v18, v85);
      v41 = 0;
LABEL_14:
      v42 = v103;
      v43 = v84;
      (*(v103 + 56))(v40, v41, 1, v84);

      v44 = (*(v42 + 48))(v40, 1, v43);
      v45 = v86;
      if (v44 == 1)
      {
        sub_100016290(v40, &qword_10058FA18, &qword_100493068);
        sub_10000B02C();
        swift_allocError();
        *v46 = xmmword_10049C490;
        *(v46 + 16) = 1;
        return swift_willThrow();
      }

      else
      {
        sub_10037D4B0(v40, v86);
        v47 = *(v79 + 80);
        v48 = *(v79 + 88);
        v49 = type metadata accessor for AWDLDiscoveryEngine.DatapathInitiator();
        v50 = v78;
        swift_unownedRetainStrong();
        v51 = *(v24 + 16);
        v102 = *v24;
        v100 = v51;
        v101 = *(v24 + 32);
        v52 = v80;
        sub_1000275E0(v45 + *(v43 + 28), v80, type metadata accessor for DNSRecords.SRV);
        sub_1000836D4(&v102, &v96);
        sub_100083730(&v100, &v96);
        v53 = *(v49 + 48);
        v54 = *(v49 + 52);
        swift_allocObject();
        v55 = sub_10037FD3C(v50, v82 & 0xFFFFFFFFFFFFLL, v24, v52);

        v56 = *(v55 + qword_10059BA70);
        *(v55 + qword_10059BA70) = v83;
        swift_unknownObjectRelease();
        v99 = v55;
        v57 = *(v24 + 16);
        v96 = *v24;
        v97 = v57;
        v98 = *(v24 + 32);
        swift_beginAccess();
        sub_1000836D4(&v102, v94);
        sub_100083730(&v100, v94);
        sub_10002B68C();
        v58 = type metadata accessor for Dictionary();
        swift_unknownObjectRetain();

        Dictionary.subscript.setter();
        swift_endAccess();
        v59 = v81;
        sub_10037AC44();
        if (v59)
        {
          v103 = v58;
          sub_1000836D4(&v102, &v96);
          sub_100083730(&v100, &v96);
          swift_errorRetain();
          v60 = Logger.logObject.getter();
          v61 = static os_log_type_t.error.getter();
          sub_10008378C(&v102);
          sub_1000837E0(&v100);

          if (os_log_type_enabled(v60, v61))
          {
            v62 = swift_slowAlloc();
            v91 = swift_slowAlloc();
            v63 = swift_slowAlloc();
            v92 = v63;
            *&v96 = v63;
            *v62 = 136315650;
            v64 = DNSRecords.PTR.description.getter(v63);
            v66 = sub_100002320(v64, v65, &v96);

            *(v62 + 4) = v66;
            *(v62 + 12) = 2080;
            v67 = WiFiAddress.description.getter(v82 & 0xFFFFFFFFFFFFLL);
            v69 = sub_100002320(v67, v68, &v96);

            *(v62 + 14) = v69;
            v45 = v86;
            *(v62 + 22) = 2112;
            swift_errorRetain();
            v70 = _swift_stdlib_bridgeErrorToNSError();
            *(v62 + 24) = v70;
            v71 = v91;
            *v91 = v70;
            _os_log_impl(&_mh_execute_header, v60, v61, "Failed to start datapath for %s to %s because %@", v62, 0x20u);
            sub_100016290(v71, &qword_10058B780, &qword_100480AC0);

            swift_arrayDestroy();
          }

          v74 = *(v24 + 16);
          v96 = *v24;
          v97 = v74;
          v98 = *(v24 + 32);
          swift_beginAccess();
          Dictionary.removeValue(forKey:)();
          swift_endAccess();

          swift_getErrorValue();
          v75 = Error.apiError.getter(v93);
          [v83 datapathFailedToStartWithError:v75];
          swift_willThrow();

          return sub_100380008(v45, type metadata accessor for AWDLPeer.AdvertisedService);
        }

        else
        {
          sub_100380008(v45, type metadata accessor for AWDLPeer.AdvertisedService);
          sub_1000836D4(&v102, &v96);
          sub_100083730(&v100, &v96);

          v72 = *(v24 + 16);
          v73 = v77;
          *v77 = *v24;
          v73[1] = v72;
          *(v73 + 16) = *(v24 + 32);
        }
      }

      return result;
    }

    v30 &= v30 - 1;
    result = sub_100380008(v18, type metadata accessor for AWDLPeer.AdvertisedService);
    v27 = v90;
  }

  while (1)
  {
    v34 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      break;
    }

    if (v34 >= v31)
    {

      v41 = 1;
      v40 = v85;
      goto LABEL_14;
    }

    v30 = *(v25 + 56 + 8 * v34);
    ++v33;
    if (v30)
    {
      v33 = v34;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

void sub_10037AC44()
{
  v1 = v0;
  v2 = type metadata accessor for NWEndpoint.Port();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v52 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v10 = (&v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = OS_dispatch_queue.awdl.unsafeMutableAddressor();
  v12 = *v11;
  *v10 = *v11;
  (*(v7 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v6);
  v13 = v12;
  v14 = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v10, v6);
  if (v14)
  {
    v51 = v2;
    *(v1 + qword_10059BA78) = 1;
    v53 = qword_10059BA70;
    v15 = *(v1 + qword_10059BA70);
    if (v15)
    {
      v16 = *(v1 + qword_10059BA50);
      swift_unownedRetainStrong();
      swift_unknownObjectRetain();
      v17 = WiFiInterface.macAddress.getter();

      v18 = WiFiAddress.apiAddress.getter(v17 & 0xFFFFFFFFFFFFLL);
      swift_unownedRetainStrong();
      v19 = WiFiInterface.interfaceIndex.getter();

      [v15 datapathStartedWithInstanceID:0 initiatorDataAddress:v18 localInterfaceIndex:v19];

      swift_unknownObjectRelease();
    }

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    v22 = os_log_type_enabled(v20, v21);
    v50 = v3;
    if (v22)
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v54 = v24;
      *v23 = 136315138;
      v25 = sub_10037D390();
      v27 = v26;

      v28 = sub_100002320(v25, v27, &v54);

      *(v23 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v20, v21, "%s was started", v23, 0xCu);
      sub_100002A00(v24);
    }

    else
    {
    }

    swift_retain_n();
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v55 = v49;
      *v31 = 136315650;
      v32 = sub_10037D390();
      v34 = sub_100002320(v32, v33, &v55);

      *(v31 + 4) = v34;
      *(v31 + 12) = 2080;
      v35 = v1 + qword_10059BA68;
      swift_beginAccess();
      v36 = type metadata accessor for DNSRecords.SRV();
      v37 = (v35 + *(v36 + 24));
      v38 = *v37;
      v39 = v37[1];

      v40 = sub_100002320(v38, v39, &v55);

      *(v31 + 14) = v40;
      *(v31 + 22) = 512;
      v42 = v50;
      v41 = v51;
      v43 = v35 + *(v36 + 20);
      v44 = v52;
      (*(v50 + 16))(v52, v43, v51);
      LOWORD(v35) = NWEndpoint.Port.rawValue.getter();
      (*(v42 + 8))(v44, v41);

      *(v31 + 24) = v35;

      _os_log_impl(&_mh_execute_header, v29, v30, "%s datapath established with %s%%%hu", v31, 0x1Au);
      swift_arrayDestroy();
    }

    else
    {
    }

    v45 = *(v1 + v53);
    if (v45)
    {
      v46 = *(v1 + qword_10059BA58) | (*(v1 + qword_10059BA58 + 2) << 16);
      swift_unknownObjectRetain();
      v47 = WiFiAddress.apiAddress.getter(v46);
      v48 = sub_10037D1EC();
      [v45 datapathConfirmedForPeerDataAddress:v47 serviceSpecificInfo:v48];

      swift_unknownObjectRelease();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10037B1C8(__int128 *a1, uint64_t *a2, void (*a3)(void, void, void), void *a4)
{
  v8 = *v4;
  v9 = a1[1];
  v23 = *a1;
  v21 = v9;
  v22 = *(a1 + 16);
  v10 = *a2;
  swift_beginAccess();
  v11 = *(v4 + v10);
  v12 = a1[1];
  v17 = *a1;
  v18 = v12;
  v19 = *(a1 + 16);
  sub_1000836D4(&v23, v16);
  sub_100083730(&v21, v16);
  a3(0, *(v8 + 80), *(v8 + 88));
  sub_10002B68C();
  Dictionary.subscript.getter();
  sub_10008378C(&v23);
  sub_1000837E0(&v21);
  v13 = v20;
  if (v20)
  {
    swift_endAccess();
    v14 = *(v13 + *a4);
    swift_unknownObjectRetain();
  }

  else
  {
    swift_endAccess();
    return 0;
  }

  return v14;
}

uint64_t sub_10037B30C()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = (&v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = OS_dispatch_queue.awdl.unsafeMutableAddressor();
  v8 = *v7;
  *v6 = *v7;
  (*(v3 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v2);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  result = (*(v3 + 8))(v6, v2);
  if (v8)
  {
    v11 = qword_10059BA78;
    if (*(v1 + qword_10059BA78) == 1)
    {

      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v31 = v15;
        *v14 = 136315138;

        v16 = sub_10037D390();
        v18 = v17;

        v19 = sub_100002320(v16, v18, &v31);

        *(v14 + 4) = v19;
        _os_log_impl(&_mh_execute_header, v12, v13, "%s will attempt to stop", v14, 0xCu);
        sub_100002A00(v15);
      }

      else
      {
      }

      *(v1 + v11) = 0;

      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        *v22 = 136315394;

        v23 = sub_10037D390();
        v25 = v24;

        v26 = sub_100002320(v23, v25, &v31);

        *(v22 + 4) = v26;
        *(v22 + 12) = 2080;
        *(v22 + 14) = sub_100002320(0x7165522072657355, 0xEE00646574736575, &v31);
        _os_log_impl(&_mh_execute_header, v20, v21, "%s was terminated because %s", v22, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
      }

      v27 = qword_10059BA70;
      v28 = *(v1 + qword_10059BA70);
      if (v28)
      {
        [v28 datapathTerminatedWithReason:2];
        v29 = *(v1 + v27);
      }

      *(v1 + v27) = 0;
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10037B6B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *v5;
  result = sub_100376E6C(a1, a2, a3 & 0xFFFFFF01, a4);
  if (!v6)
  {
    *a5 = result;
    *(a5 + 8) = v10;
    *(a5 + 16) = v11 & 1;
    *(a5 + 17) = HIBYTE(v11);
  }

  return result;
}

uint64_t sub_10037B6FC(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *v1;
  v5 = *(a1 + 16) | (*(a1 + 17) << 8);
  return sub_1003788E8();
}

uint64_t sub_10037B734(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *v1;
  v5 = *(a1 + 16) | (*(a1 + 17) << 8);
  return sub_1003758C0();
}

double sub_10037B76C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, NSObject *a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *v5;
  sub_100378FB8(a1, a2, a3, a4, v11);
  if (!v6)
  {
    result = *v11;
    v10 = v11[1];
    *a5 = v11[0];
    *(a5 + 16) = v10;
    *(a5 + 32) = v12;
  }

  return result;
}

double sub_10037B8A8@<D0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *v4;
  sub_10037A24C(a1, a2, a3, v10);
  if (!v5)
  {
    result = *v10;
    v9 = v10[1];
    *a4 = v10[0];
    *(a4 + 16) = v9;
    *(a4 + 32) = v11;
  }

  return result;
}

uint64_t sub_10037B960()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + qword_100597A30) == 1)
  {
    sub_100374EB0(0);
  }

  v7 = qword_100597A28;
  v8 = *(v0 + qword_100597A28);
  if (v8)
  {
    [v8 subscribeTerminatedWithReason:-1];
    v9 = *(v0 + v7);
  }

  *(v0 + v7) = 0;
  swift_unknownObjectRelease();
  v10 = qword_100597A10;
  (*(v3 + 16))(v6, v0 + qword_100597A10, v2);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v29 = v2;
    v14 = v13;
    v15 = swift_slowAlloc();
    v28 = v10;
    v16 = v15;
    v30 = v15;
    *v14 = 136315138;
    v17 = sub_10037BFE4();
    v19 = v18;

    v20 = sub_100002320(v17, v19, &v30);

    *(v14 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v11, v12, "Destroyed %s", v14, 0xCu);
    sub_100002A00(v16);
    v10 = v28;

    v2 = v29;
  }

  else
  {
  }

  v21 = *(v3 + 8);
  v21(v6, v2);
  v21((v1 + v10), v2);
  v22 = *(v1 + qword_100597A18);
  swift_unownedRelease();
  v23 = *(v1 + qword_100597A20 + 8);

  v24 = *(v1 + v7);
  swift_unknownObjectRelease();
  v25 = qword_100597A48;
  v26 = type metadata accessor for DispatchTime();
  (*(*(v26 - 8) + 8))(v1 + v25, v26);
  return v1;
}

uint64_t sub_10037BC74()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for DNSRecords.SRV();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_10037BD70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(type metadata accessor for AWDLPeer.AdvertisedService(0) - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = (&v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(a2 + *(type metadata accessor for AWDLPeer(0) + 80));

  v11 = sub_10037ED68(sub_1003800F4, a3, v10);
  v12 = v11;
  v13 = v11 + 56;
  v14 = 1 << *(v11 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v11 + 56);
  v17 = (v14 + 63) >> 6;

  for (i = 0; v16; i = v19)
  {
    v19 = i;
LABEL_8:
    sub_1000275E0(*(v12 + 48) + *(v6 + 72) * (__clz(__rbit64(v16)) | (v19 << 6)), v9, type metadata accessor for AWDLPeer.AdvertisedService);
    sub_100377EE0(v9, a1 & 0xFFFFFFFFFFFFLL);
    v16 &= v16 - 1;
    sub_100380008(v9, type metadata accessor for AWDLPeer.AdvertisedService);
  }

  while (1)
  {
    v19 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v19 >= v17)
    {
    }

    v16 = *(v13 + 8 * v19);
    ++i;
    if (v16)
    {
      goto LABEL_8;
    }
  }

  __break(1u);

  result = sub_100380008(v9, type metadata accessor for AWDLPeer.AdvertisedService);
  __break(1u);
  return result;
}

uint64_t sub_10037BFE4()
{
  v1._countAndFlagsBits = DNSRecords.Identifier.description.getter(*(v0 + qword_100597A20), *(v0 + qword_100597A20 + 8), *(v0 + qword_100597A20 + 16) | (*(v0 + qword_100597A20 + 17) << 8));
  String.append(_:)(v1);

  return 0x776F72424C445741;
}

uint64_t sub_10037C084(uint64_t result)
{
  if (*(v1 + qword_100597B00) == 1)
  {
    v2 = *(result + 48);
    v3 = *(result + 16);
    v9[0] = *result;
    v9[1] = v3;
    v9[2] = *(result + 32);
    v10 = v2;
    v4 = *(v1 + qword_100597AE8 + 16);
    v6[0] = *(v1 + qword_100597AE8);
    v6[1] = v4;
    v7 = *(v1 + qword_100597AE8 + 32);
    v8 = *(v1 + qword_100597AE8 + 48);
    v11[0] = v6[0];
    v11[1] = v4;
    v11[2] = v7;
    v12 = v8;
    sub_100083AB8(v6, &v5);
    sub_10037C314(v9, v11);
    return sub_100083B14(v6);
  }

  return result;
}

uint64_t sub_10037C314(uint64_t a1, __int128 *a2)
{
  v3 = v2;
  v4 = a2;
  v6 = *v3;
  v7 = a2[1];
  v46 = a2 + 1;
  v8 = *a2;
  v50 = v7;
  v51 = v8;
  v9 = *(a2 + 4);
  v48 = *(a2 + 5);
  v49 = v9;
  v47 = *(a2 + 6);
  v10 = *a1;
  v56 = *(a1 + 16);
  v61 = v10;
  v11 = *(a1 + 32);
  v54 = *(a1 + 40);
  v55 = v11;
  v53 = *(a1 + 48);
  v12 = *(v6 + 88);
  v13 = *(v12 + 8);
  v14 = *(v6 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = *(AssociatedTypeWitness - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin();
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin();
  v81 = &v44 - v21;
  v58 = v4;
  v59 = v16;
  v57 = v12;
  v52 = v14;
  if (*(&v61 + 1))
  {
    v44 = v3;
    v45 = v19;
    v77 = v61;
    v22 = *(a1 + 32);
    v78 = *(a1 + 16);
    v79 = v22;
    v80 = *(a1 + 48);
    v23 = *(v3 + qword_100597AD8);
    swift_unownedRetainStrong();
    v24 = AssociatedTypeWitness;
    v25 = *(*v23 + 96);
    swift_beginAccess();
    (*(v16 + 16))(v81, v23 + v25, v24);
    v67 = v61;
    v68 = v56;
    v69 = v55;
    v70 = v54;
    v71 = v53;
    sub_100083AB8(&v67, &v63);

    v26 = DNSRecords.TXT.keyData.getter();
    v28 = v27;
    v30 = *(&v79 + 1);
    v29 = v80;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v54 = *(AssociatedConformanceWitness + 128);
    sub_10000AB0C(v30, v29);
    v55 = v26;
    *&v56 = v28;
    v32 = v60;
    *&v61 = v24;
    v54(0, v26, v28, v30, v29, v24, AssociatedConformanceWitness);
    if (v32)
    {
      AssociatedTypeWitness = v61;
      (*(v59 + 8))(v81, v61);
      sub_1000124C8(v30, v29);
      sub_1000124C8(v55, v56);
      sub_100016290(a1, &qword_10058F7F8, &qword_100492EE0);
      v66 = v32;
      swift_errorRetain();
      sub_10005DC58(&qword_10058C830, &qword_1004821F0);
      if (!swift_dynamicCast())
      {
      }

      if (v65 == 1)
      {
        v19 = v45;
        if (v63 != 2)
        {
        }
      }

      else
      {
        v19 = v45;
        if (v65)
        {
          sub_1000B2594(v63, v64, v65);
        }

        if (v63 != 6)
        {
        }
      }

      v60 = 0;
      v4 = v58;
    }

    else
    {
      v60 = 0;
      AssociatedTypeWitness = v61;
      (*(v59 + 8))(v81, v61);
      sub_1000124C8(v30, v29);
      sub_1000124C8(v55, v56);
      result = sub_100016290(a1, &qword_10058F7F8, &qword_100492EE0);
      v4 = v58;
      v19 = v45;
    }

    v3 = v44;
  }

  v33 = v4[1];
  if (v33)
  {
    v72 = *v4;
    v73 = v33;
    v34 = v46[1];
    v74 = *v46;
    v75 = v34;
    v76 = *(v46 + 4);
    v35 = *(v3 + qword_100597AD8);
    swift_unownedRetainStrong();
    v36 = *(*v35 + 96);
    swift_beginAccess();
    (*(v59 + 16))(v19, v35 + v36, AssociatedTypeWitness);
    v67 = v51;
    v68 = v50;
    v69 = v49;
    v70 = v48;
    v71 = v47;
    sub_100083AB8(&v67, &v63);

    v37 = DNSRecords.TXT.keyData.getter();
    v39 = v38;
    v40 = *(&v75 + 1);
    v41 = v76;
    v42 = swift_getAssociatedConformanceWitness();
    v81 = *(v42 + 128);
    sub_10000AB0C(v40, v41);
    v57 = v37;
    *&v61 = v39;
    v43 = v60;
    (v81)(1, v37, v39, v40, v41, AssociatedTypeWitness, v42);
    if (!v43)
    {
      (*(v59 + 8))(v19, AssociatedTypeWitness);
      sub_1000124C8(v40, v41);
      sub_1000124C8(v57, v61);
      return sub_100016290(v58, &qword_10058F7F8, &qword_100492EE0);
    }

    (*(v59 + 8))(v19, AssociatedTypeWitness);
    sub_1000124C8(v40, v41);
    sub_1000124C8(v57, v61);
    sub_100016290(v58, &qword_10058F7F8, &qword_100492EE0);
    v62 = v43;
    swift_errorRetain();
    sub_10005DC58(&qword_10058C830, &qword_1004821F0);
    if (!swift_dynamicCast())
    {
    }

    if (v65 == 1)
    {
      if (v63 != 2)
      {
      }
    }

    else
    {
      if (v65)
      {
        sub_1000B2594(v63, v64, v65);
      }

      if (v63 != 6)
      {
      }
    }
  }

  return result;
}

uint64_t sub_10037C9B0()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + qword_100597B00) == 1)
  {
    sub_10037529C(0);
  }

  v7 = qword_100597AF8;
  v8 = *(v0 + qword_100597AF8);
  if (v8)
  {
    [v8 publishTerminatedWithReason:-1];
    v9 = *(v0 + v7);
  }

  *(v0 + v7) = 0;
  swift_unknownObjectRelease();
  v10 = qword_100597AD0;
  (*(v3 + 16))(v6, v0 + qword_100597AD0, v2);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v32 = v7;
    v14 = v13;
    v15 = swift_slowAlloc();
    v31 = v10;
    v16 = v15;
    v33 = v15;
    *v14 = 136315138;
    v17 = sub_10037CE1C();
    v19 = v18;

    v20 = sub_100002320(v17, v19, &v33);

    *(v14 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v11, v12, "Destroyed %s", v14, 0xCu);
    sub_100002A00(v16);
    v10 = v31;

    v7 = v32;
  }

  else
  {
  }

  v21 = *(v3 + 8);
  v21(v6, v2);
  v21((v1 + v10), v2);
  v22 = *(v1 + qword_100597AD8);
  swift_unownedRelease();
  v23 = *(v1 + qword_100597AE0 + 8);
  v24 = *(v1 + qword_100597AE0 + 24);

  v25 = *(v1 + qword_100597AE8 + 8);
  v26 = *(v1 + qword_100597AE8 + 24);
  v27 = *(v1 + qword_100597AE8 + 40);
  v28 = *(v1 + qword_100597AE8 + 48);

  sub_1000124C8(v27, v28);
  sub_100380008(v1 + qword_100597AF0, type metadata accessor for DNSRecords.SRV);
  v29 = *(v1 + v7);
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_10037CCCC(uint64_t (*a1)(void))
{
  v1 = *a1();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_10037CD24()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for DNSRecords.SRV();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_10037CE1C()
{
  *&v6 = 0;
  *(&v6 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(16);

  strcpy(v5, "AWDLAdvertise ");
  HIBYTE(v5[1]) = -18;
  v2 = *(v0 + qword_100597AE0 + 16);
  v6 = *(v0 + qword_100597AE0);
  v7 = v2;
  v8 = *(v0 + qword_100597AE0 + 32);
  v3._countAndFlagsBits = DNSRecords.PTR.description.getter(v1);
  String.append(_:)(v3);

  return v5[0];
}

uint64_t sub_10037CEE4()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + qword_10059BA78) == 1)
  {
    sub_10037B30C();
  }

  v7 = qword_10059BA48;
  (*(v3 + 16))(v6, v0 + qword_10059BA48, v2);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v23 = v7;
    v11 = v10;
    v12 = swift_slowAlloc();
    v24 = v12;
    *v11 = 136315138;
    v13 = sub_10037D390();
    v15 = v14;

    v16 = sub_100002320(v13, v15, &v24);

    *(v11 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v8, v9, "Destroyed %s", v11, 0xCu);
    sub_100002A00(v12);

    v7 = v23;
  }

  else
  {
  }

  v17 = *(v3 + 8);
  v17(v6, v2);
  v17((v1 + v7), v2);
  v18 = *(v1 + qword_10059BA50);
  swift_unownedRelease();
  v19 = *(v1 + qword_10059BA60 + 8);
  v20 = *(v1 + qword_10059BA60 + 24);

  sub_100380008(v1 + qword_10059BA68, type metadata accessor for DNSRecords.SRV);
  v21 = *(v1 + qword_10059BA70);
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_10037D190(void (*a1)(void))
{
  a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return swift_deallocClassInstance();
}

id sub_10037D1EC()
{
  v1 = type metadata accessor for NWEndpoint.Port();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + qword_10059BA60 + 32);
  v7 = v0 + qword_10059BA68;
  swift_beginAccess();
  v8 = type metadata accessor for DNSRecords.SRV();
  (*(v2 + 16))(v5, v7 + *(v8 + 20), v1);
  v9 = NWEndpoint.Port.rawValue.getter();
  (*(v2 + 8))(v5, v1);
  v10 = [objc_allocWithZone(WiFiAwarePublishDatapathServiceSpecificInfo) initWithProtocolType:v6 servicePort:v9];
  v11 = (v7 + *(v8 + 24));
  v12 = *v11;
  v13 = v11[1];

  v14 = String._bridgeToObjectiveC()();

  [v10 setHostname:v14];

  return v10;
}

unint64_t sub_10037D390()
{
  _StringGuts.grow(_:)(33);

  v7 = *(v0 + qword_10059BA60);
  v8 = *(v0 + qword_10059BA60 + 16);
  v9 = *(v0 + qword_10059BA60 + 32);
  v2._countAndFlagsBits = DNSRecords.PTR.description.getter(v1);
  String.append(_:)(v2);

  v3._countAndFlagsBits = 0x203A6F543C20;
  v3._object = 0xE600000000000000;
  String.append(_:)(v3);
  v4._countAndFlagsBits = WiFiAddress.description.getter(*(v0 + qword_10059BA58) | (*(v0 + qword_10059BA58 + 2) << 16));
  String.append(_:)(v4);

  v5._countAndFlagsBits = 62;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);
  return 0xD000000000000016;
}

uint64_t sub_10037D4B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AWDLPeer.AdvertisedService(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_10037D514()
{
  v1 = v0;
  sub_10005DC58(&unk_100597D10, &unk_1004B4D30);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 56 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v19 = *(v18 + 8);
        v20 = *(v18 + 16);
        v21 = *(v18 + 24);
        v22 = *(v18 + 48);
        v23 = *(v4 + 48) + v17;
        v24 = *(v18 + 32);
        *v23 = *v18;
        *(v23 + 8) = v19;
        *(v23 + 16) = v20;
        *(v23 + 24) = v21;
        *(v23 + 32) = v24;
        *(v23 + 48) = v22;
        sub_10000AB0C(v19, v20);
        sub_10005D67C(v21, v24);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_10037D6C0()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&unk_10059B0F0, &qword_1004B1EC0);
  v7 = *v0;
  v8 = static _SetStorage.copy(original:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v24 = v3 + 32;
    for (i = v3 + 16; v16; result = (*(v3 + 32))(*(v9 + 48) + v21, v6, v2))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_14:
      v21 = *(v3 + 72) * (v18 | (v13 << 6));
      (*(v3 + 16))(v6, *(v7 + 48) + v21, v2);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v20 = *(v11 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

void *sub_10037D8F8()
{
  v1 = v0;
  sub_10005DC58(&qword_10058B378, &unk_1004B4DA0);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_10037DA54()
{
  v1 = v0;
  sub_10005DC58(&unk_100597D00, &qword_1004B1EB8);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_10037DBA8()
{
  v1 = v0;
  sub_10005DC58(&unk_100597D20, &unk_1004B1ED0);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(v20 + 4) = v19)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = 6 * v14;
      v18 = *(v2 + 48) + v17;
      v19 = *(v18 + 4);
      v20 = *(v4 + 48) + v17;
      *v20 = *v18;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_10037DD00()
{
  v1 = v0;
  sub_10005DC58(&unk_100597D40, &unk_1004B1EF0);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 2 * v14) = *(*(v2 + 48) + 2 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_10037DE40()
{
  v1 = v0;
  sub_10005DC58(&unk_10059B140, &qword_1004B1EC8);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(v21 + 6) = v20)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = 7 * v14;
      v18 = *(v2 + 48) + v17;
      v19 = *(v18 + 4);
      v20 = *(v18 + 6);
      v21 = *(v4 + 48) + v17;
      *v21 = *v18;
      *(v21 + 4) = v19;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_10037DFA0()
{
  v1 = v0;
  sub_10005DC58(&unk_10058B3A0, &qword_10047F4C0);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 24 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v20 = *v18;
        v19 = *(v18 + 8);
        v21 = *(v18 + 16);
        LOBYTE(v18) = *(v18 + 17);
        v22 = *(v4 + 48) + v17;
        *v22 = v20;
        *(v22 + 8) = v19;
        *(v22 + 16) = v21;
        *(v22 + 17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_10037E110()
{
  v1 = v0;
  sub_10005DC58(&unk_10059B260, &unk_1004B4E00);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_10037E274(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_10005DC58(a1, a2);
  v4 = *v2;
  v5 = static _SetStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 56);
    for (i = (v11 + 63) >> 6; v13; *(*(v6 + 48) + v16) = *(*(v4 + 48) + v16))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v16 = v15 | (v10 << 6);
LABEL_17:
      ;
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= i)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v13 = (v18 - 1) & v18;
        v16 = __clz(__rbit64(v18)) | (v10 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

unint64_t sub_10037E3A4(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 40);
  Hasher.init(_seed:)();
  NANClusterChangeEvent.hash(into:)(&v19, a1 & 0xFFFFFFFFFFFFLL);
  v5 = Hasher._finalize()();
  v6 = -1 << *(v3 + 32);
  v7 = v5 & ~v6;
  if ((*(v3 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    while (!static NANClusterChangeEvent.__derived_struct_equals(_:_:)(*(*(v3 + 48) + 6 * v7) | (*(*(v3 + 48) + 6 * v7 + 2) << 16), a1 & 0xFFFFFFFFFFFFLL))
    {
      v7 = (v7 + 1) & v8;
      if (((*(v3 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    v11 = *v1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v1;
    v19 = *v1;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_10037DBA8();
      v13 = v19;
    }

    v14 = (*(v13 + 48) + 6 * v7);
    v15 = *v14;
    v16 = *(v14 + 4);
    v17 = *(v14 + 5);
    sub_10037E7A8(v7);
    v10 = 0;
    *v1 = v19;
    v9 = v15 | (v16 << 32) | (v17 << 40);
  }

  else
  {
LABEL_5:
    v9 = 0;
    v10 = 1;
  }

  return v9 | (v10 << 48);
}

uint64_t sub_10037E4EC(unsigned __int16 a1)
{
  v3 = *v1;
  v4 = *(*v1 + 40);
  v5 = static Hasher._hash(seed:bytes:count:)();
  v6 = -1 << *(v3 + 32);
  v7 = v5 & ~v6;
  if ((*(v3 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    while (*(*(v3 + 48) + 2 * v7) != a1)
    {
      v7 = (v7 + 1) & v8;
      if (((*(v3 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    v11 = *v1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v1;
    v15 = *v1;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_10037DD00();
      v13 = v15;
    }

    v9 = *(*(v13 + 48) + 2 * v7);
    sub_10037E96C(v7);
    v10 = 0;
    *v1 = v15;
  }

  else
  {
LABEL_5:
    v9 = 0;
    v10 = 1;
  }

  return v9 | (v10 << 16);
}

unint64_t sub_10037E5E4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1 >> 16;
  v6 = a1 >> 24;
  v7 = HIDWORD(a1);
  v8 = HIWORD(a1);
  v9 = *v2;
  v10 = *(*v2 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  NANClusterChangeEvent.hash(into:)(&v23, (BYTE5(a1) << 32) & 0xFFFF00FF00000000 | (v8 << 40) | (v7 << 24) | (v6 << 16) | (v5 << 8) | BYTE1(a1));
  result = Hasher._finalize()();
  v12 = -1 << *(v9 + 32);
  v13 = result & ~v12;
  if ((*(v9 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    while (1)
    {
      v15 = (*(v9 + 48) - v13 + 8 * v13);
      result = static NANPeerServiceIdentifier.__derived_struct_equals(_:_:)(*v15 | (*(v15 + 2) << 16) | (*(v15 + 3) << 24), (BYTE5(a1) << 40) | (BYTE6(a1) << 48) | (BYTE4(a1) << 32) | (BYTE3(a1) << 24) | (BYTE2(a1) << 16) | (BYTE1(a1) << 8) | a1);
      if (result)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v9 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    v17 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v2;
    v23 = *v2;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_10037DE40();
      v19 = v23;
    }

    v20 = *(v19 + 48) - v13 + 8 * v13;
    v21 = *(v20 + 4);
    v22 = *(v20 + 6);
    *a2 = *v20;
    *(a2 + 4) = v21;
    *(a2 + 6) = v22;
    result = sub_10037EAF4(v13);
    v16 = 0;
    *v2 = v23;
  }

  else
  {
LABEL_5:
    *(a2 + 6) = 0;
    *(a2 + 4) = 0;
    v16 = 1;
    *a2 = 0;
  }

  *(a2 + 7) = v16;
  return result;
}

unint64_t sub_10037E7A8(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v12 = *(v3 + 40);
        v13 = (*(v3 + 48) + 6 * v6);
        v14 = *(v13 + 1);
        v15 = *v13;
        Hasher.init(_seed:)();
        NANClusterChangeEvent.hash(into:)(&v23, v15 | (v14 << 16));
        v16 = Hasher._finalize()() & v7;
        if (v2 >= v10)
        {
          if (v16 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v16 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v16)
        {
LABEL_11:
          v17 = *(v3 + 48);
          v18 = v17 + 6 * v2;
          v19 = (v17 + 6 * v6);
          if (v2 != v6 || v18 >= v19 + 6)
          {
            v11 = *v19;
            *(v18 + 4) = *(v19 + 2);
            *v18 = v11;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_10037E96C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(v3 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 40);
        v11 = *(v3 + 48);
        v12 = (v11 + 2 * v6);
        v13 = *v12;
        v14 = static Hasher._hash(seed:bytes:count:)() & v7;
        if (v2 >= v9)
        {
          if (v14 >= v9 && v2 >= v14)
          {
LABEL_16:
            v17 = (v11 + 2 * v2);
            if (v2 != v6 || v17 >= v12 + 1)
            {
              *v17 = *v12;
              v2 = v6;
            }
          }
        }

        else if (v14 >= v9 || v2 >= v14)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_10037EAF4(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v13 = *(v3 + 40);
        v14 = *(v3 + 48) - v6 + 8 * v6;
        v15 = *(v14 + 3);
        v16 = *v14;
        v17 = *(v14 + 1);
        Hasher.init(_seed:)();
        Hasher._combine(_:)(v16);
        NANClusterChangeEvent.hash(into:)(&v25, v17 | (v15 << 16));
        v18 = Hasher._finalize()() & v7;
        if (v2 >= v10)
        {
          if (v18 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v18 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v18)
        {
LABEL_11:
          v19 = *(v3 + 48);
          v20 = v19 - v2 + 8 * v2;
          v21 = v19 - v6 + 8 * v6;
          if (v2 != v6 || v20 >= v21 + 7)
          {
            v11 = *v21;
            v12 = *(v21 + 4);
            *(v20 + 6) = *(v21 + 6);
            *(v20 + 4) = v12;
            *v20 = v11;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v22 = *(v3 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v24;
    ++*(v3 + 36);
  }

  return result;
}

void *sub_10037ECD8(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_10037F0C4(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_10037ED68(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v36 = a1;
  v35 = *(type metadata accessor for AWDLPeer.AdvertisedService(0) - 8);
  v6 = *(v35 + 64);
  __chkstk_darwin();
  v34 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v7) = *(a3 + 32);
  v8 = ((1 << v7) + 63) >> 6;
  if ((v7 & 0x3Fu) > 0xD)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v29 = v8;
    v38 = v4;
    v31 = &v28;
    __chkstk_darwin();
    v30 = &v28 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v30, v9);
    v32 = 0;
    v10 = 0;
    v8 = a3 + 56;
    v11 = 1 << *(a3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(a3 + 56);
    v14 = (v11 + 63) >> 6;
    while (v13)
    {
      v15 = __clz(__rbit64(v13));
      v37 = (v13 - 1) & v13;
LABEL_12:
      v18 = v15 | (v10 << 6);
      v4 = a3;
      v19 = *(a3 + 48);
      v20 = v34;
      v21 = *(v35 + 72);
      v33 = v18;
      sub_1000275E0(v19 + v21 * v18, v34, type metadata accessor for AWDLPeer.AdvertisedService);
      v22 = v38;
      v23 = v36(v20);
      sub_100380008(v20, type metadata accessor for AWDLPeer.AdvertisedService);
      v38 = v22;
      if (v22)
      {

        return swift_willThrow();
      }

      v13 = v37;
      if (v23)
      {
        *&v30[(v33 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v33;
        if (__OFADD__(v32++, 1))
        {
          __break(1u);
          return sub_10037F2E8(v30, v29, v32, a3);
        }
      }
    }

    v16 = v10;
    while (1)
    {
      v10 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v10 >= v14)
      {
        return sub_10037F2E8(v30, v29, v32, a3);
      }

      v17 = *(v8 + 8 * v10);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v37 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_22:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v26 = swift_slowAlloc();
  v27 = sub_10037ECD8(v26, v8, a3, v36);

  if (!v4)
  {
    return v27;
  }

  return result;
}

uint64_t sub_10037F0C4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v30 = a4;
  v25 = a2;
  v26 = a1;
  v29 = *(type metadata accessor for AWDLPeer.AdvertisedService(0) - 8);
  v5 = *(v29 + 64);
  result = __chkstk_darwin();
  v27 = 0;
  v28 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = 0;
  v31 = a3;
  v11 = *(a3 + 56);
  v10 = a3 + 56;
  v9 = v11;
  v12 = 1 << *(v10 - 24);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v9;
  v15 = (v12 + 63) >> 6;
  v16 = v28;
  while (v14)
  {
    v17 = __clz(__rbit64(v14));
    v32 = (v14 - 1) & v14;
LABEL_11:
    v20 = v17 | (v8 << 6);
    sub_1000275E0(*(v31 + 48) + *(v29 + 72) * v20, v16, type metadata accessor for AWDLPeer.AdvertisedService);
    v21 = v33;
    v22 = v30(v16);
    result = sub_100380008(v16, type metadata accessor for AWDLPeer.AdvertisedService);
    v33 = v21;
    if (v21)
    {
      return result;
    }

    v14 = v32;
    if (v22)
    {
      *(v26 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      if (__OFADD__(v27++, 1))
      {
        __break(1u);
LABEL_16:
        v24 = v31;

        return sub_10037F2E8(v26, v25, v27, v24);
      }
    }
  }

  v18 = v8;
  while (1)
  {
    v8 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v8 >= v15)
    {
      goto LABEL_16;
    }

    v19 = *(v10 + 8 * v8);
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v32 = (v19 - 1) & v19;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10037F2E8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v40 = *(type metadata accessor for AWDLPeer.AdvertisedService(0) - 8);
  v8 = *(v40 + 64);
  __chkstk_darwin();
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return &_swiftEmptySetSingleton;
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_10005DC58(&qword_10058EC18, &qword_1004B1E90);
  result = static _SetStorage.allocate(capacity:)();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v38 = a1;
  v39 = a4;
  v37 = result;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v41 = (v13 - 1) & v13;
LABEL_16:
    v19 = *(a4 + 48);
    v42 = *(v40 + 72);
    sub_1000275E0(v19 + v42 * (v16 | (v14 << 6)), v10, type metadata accessor for AWDLPeer.AdvertisedService);
    v20 = v11[5];
    Hasher.init(_seed:)();
    v21 = *(v10 + 1);
    v22 = *(v10 + 2);
    v23 = *(v10 + 3);
    v24 = *(v10 + 4);
    v25 = v10[40];
    v26 = v10[41];
    String.lowercased()();
    String.hash(into:)();

    String.lowercased()();
    String.hash(into:)();

    String.hash(into:)();

    Hasher._combine(_:)(v26);
    result = Hasher._finalize()();
    v11 = v37;
    v27 = -1 << *(v37 + 32);
    v28 = result & ~v27;
    v29 = v28 >> 6;
    if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
    {
      v31 = 0;
      v32 = (63 - v27) >> 6;
      a1 = v38;
      a4 = v39;
      while (++v29 != v32 || (v31 & 1) == 0)
      {
        v33 = v29 == v32;
        if (v29 == v32)
        {
          v29 = 0;
        }

        v31 |= v33;
        v34 = *(v15 + 8 * v29);
        if (v34 != -1)
        {
          v30 = __clz(__rbit64(~v34)) + (v29 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v30 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
    a1 = v38;
    a4 = v39;
LABEL_26:
    *(v15 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
    result = sub_10037D4B0(v10, v11[6] + v30 * v42);
    ++v11[2];
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    v13 = v41;
    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v41 = (v18 - 1) & v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t *sub_10037F660(uint64_t a1)
{
  v3 = *v1;
  Logger.init(subsystem:category:)();
  v4 = qword_100597980;
  v5 = *(v3 + 80);
  v6 = *(v3 + 88);
  type metadata accessor for AWDLDiscoveryEngine.Browse();
  sub_10006153C();
  *(v1 + v4) = Dictionary.init()();
  v7 = qword_100597988;
  type metadata accessor for AWDLDiscoveryEngine.Advertise();
  sub_10002B68C();
  *(v1 + v7) = Dictionary.init()();
  v8 = qword_10059BA40;
  type metadata accessor for AWDLDiscoveryEngine.DatapathInitiator();
  *(v1 + v8) = Dictionary.init()();
  *(v1 + qword_10059BA38) = a1;
  swift_unownedRetain();
  return v1;
}

uint64_t *sub_10037F7D0(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  return sub_10037F660(a1);
}

uint64_t sub_10037F80C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v5 = v4;
  v6 = a4;
  v10 = a4 >> 8;
  Logger.init(subsystem:category:)();
  *(v4 + qword_100597A28) = 0;
  *(v4 + qword_100597A30) = 0;
  *(v4 + qword_100597A38) = 0;
  *(v4 + qword_100597A40) = 0;
  type metadata accessor for P2PTimer();
  variable initialization expression of AWDLPeer.lastUpdated();
  *(v4 + qword_100597A18) = a1;
  v11 = v4 + qword_100597A20;
  *v11 = a2;
  *(v11 + 8) = a3;
  *(v11 + 16) = v6 & 1;
  *(v11 + 17) = v10;

  swift_unownedRetain();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v21 = v15;
    *v14 = 136315138;
    v16 = sub_10037BFE4();
    v18 = v17;

    v19 = sub_100002320(v16, v18, &v21);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v12, v13, "Created %s", v14, 0xCu);
    sub_100002A00(v15);
  }

  else
  {
  }

  return v5;
}

uint64_t sub_10037FA1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  Logger.init(subsystem:category:)();
  *(v5 + qword_100597AF8) = 0;
  *(v5 + qword_100597B00) = 0;
  *(v5 + qword_100597B08) = 0;
  *(v5 + qword_100597B10) = 0;
  *(v5 + qword_100597AD8) = a1;
  v10 = v5 + qword_100597AE0;
  *(v10 + 32) = *(a2 + 32);
  v11 = *(a2 + 16);
  *v10 = *a2;
  *(v10 + 16) = v11;
  v12 = v5 + qword_100597AE8;
  *(v12 + 48) = *(a3 + 48);
  v13 = *(a3 + 32);
  *(v12 + 16) = *(a3 + 16);
  *(v12 + 32) = v13;
  *v12 = *a3;
  sub_1000275E0(a4, v5 + qword_100597AF0, type metadata accessor for DNSRecords.SRV);

  swift_unownedRetain();
  sub_100083AB8(a3, v23);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v23[0] = v17;
    *v16 = 136315138;
    v18 = sub_10037CE1C();
    v20 = v19;

    v21 = sub_100002320(v18, v20, v23);

    *(v16 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v14, v15, "Created %s", v16, 0xCu);
    sub_100002A00(v17);

    sub_100083B14(a3);
  }

  else
  {
    sub_100083B14(a3);
  }

  sub_100380008(a4, type metadata accessor for DNSRecords.SRV);
  return v5;
}

uint64_t sub_10037FC98(uint64_t a1)
{
  v3 = v1 + qword_100597AE8;
  v4 = *(v1 + qword_100597AE8 + 16);
  v10[0] = *(v1 + qword_100597AE8);
  v10[1] = v4;
  v11 = *(v1 + qword_100597AE8 + 32);
  v12 = *(v1 + qword_100597AE8 + 48);
  v13[0] = v10[0];
  v13[1] = v4;
  v13[2] = v11;
  v14 = v12;
  v5 = *a1;
  v6 = *(a1 + 16);
  v7 = *(a1 + 32);
  *(v3 + 48) = *(a1 + 48);
  *(v3 + 16) = v6;
  *(v3 + 32) = v7;
  *v3 = v5;
  sub_100083AB8(v10, v9);
  sub_100083AB8(a1, v9);
  sub_100083B14(v13);
  sub_10037C084(v10);
  return sub_100083B14(v10);
}

uint64_t sub_10037FD3C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = a2;
  v10 = a2 >> 8;
  v11 = a2 >> 16;
  v12 = a2 >> 24;
  v13 = HIDWORD(a2);
  v14 = a2 >> 40;
  Logger.init(subsystem:category:)();
  *(v5 + qword_10059BA70) = 0;
  *(v5 + qword_10059BA78) = 0;
  *(v5 + qword_10059BA50) = a1;
  v15 = (v5 + qword_10059BA58);
  *v15 = v8;
  v15[1] = v10;
  v15[2] = v11;
  v15[3] = v12;
  v16 = a4;
  v15[4] = v13;
  v15[5] = v14;
  v17 = v5 + qword_10059BA60;
  v18 = *(a3 + 16);
  *v17 = *a3;
  *(v17 + 16) = v18;
  *(v17 + 32) = *(a3 + 32);
  sub_1000275E0(a4, v5 + qword_10059BA68, type metadata accessor for DNSRecords.SRV);

  swift_unownedRetain();
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v28 = v22;
    *v21 = 136315138;
    v23 = sub_10037D390();
    v25 = v24;

    v26 = sub_100002320(v23, v25, &v28);

    *(v21 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v19, v20, "Created %s", v21, 0xCu);
    sub_100002A00(v22);
  }

  else
  {
  }

  sub_100380008(v16, type metadata accessor for DNSRecords.SRV);
  return v5;
}

uint64_t sub_10037FFA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DNSRecords.SRV();
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_100380008(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100380090(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(a1 + 16) | (*(a1 + 17) << 8);
  return sub_1003758C0();
}

uint64_t sub_100380114(void *a1)
{
  if (*(*a1 + qword_100597A38) == 1)
  {
    return (*(*a1 + qword_100597A40) ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10038014C(void *a1)
{
  if (*(*a1 + qword_100597B08) == 1)
  {
    return (*(*a1 + qword_100597B10) ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1003801C0(uint64_t *a1, uint64_t *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_10037639C(a1, a2) & 1;
}

uint64_t sub_1003801E0(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_100376540(a1);
}

uint64_t sub_100380200(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_100374DB0(a1, *(v1 + 32));
}

uint64_t sub_100380220(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_100375180(a1, *(v1 + 32));
}

uint64_t sub_1003802BC(uint64_t a1)
{
  v5 = *(a1 + 80);
  v6 = *(a1 + 96);
  v7 = *(a1 + 112);
  result = type metadata accessor for P2PController.Components();
  if (v2 <= 0x3F)
  {
    v8 = *(result - 8) + 64;
    result = type metadata accessor for DispatchTime();
    if (v3 <= 0x3F)
    {
      v9 = *(result - 8) + 64;
      result = type metadata accessor for Logger();
      if (v4 <= 0x3F)
      {
        v10 = *(result - 8) + 64;
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

void *sub_100380430(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100367988(0, v1, 0);
  v3 = -1 << *(a1 + 32);
  v19 = a1 + 64;
  result = _HashTable.startBucket.getter();
  v5 = result;
  v6 = 0;
  v20 = *(a1 + 36);
  while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(a1 + 32))
  {
    v8 = v5 >> 6;
    if ((*(v19 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
    {
      goto LABEL_22;
    }

    if (v20 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    result = [*(*(a1 + 48) + 8 * v5) uniqueIdentifier];
    v10 = _swiftEmptyArrayStorage[2];
    v9 = _swiftEmptyArrayStorage[3];
    if (v10 >= v9 >> 1)
    {
      v18 = result;
      sub_100367988((v9 > 1), v10 + 1, 1);
      result = v18;
    }

    _swiftEmptyArrayStorage[2] = v10 + 1;
    _swiftEmptyArrayStorage[v10 + 4] = result;
    v7 = 1 << *(a1 + 32);
    if (v5 >= v7)
    {
      goto LABEL_24;
    }

    v11 = *(v19 + 8 * v8);
    if ((v11 & (1 << v5)) == 0)
    {
      goto LABEL_25;
    }

    if (v20 != *(a1 + 36))
    {
      goto LABEL_26;
    }

    v12 = v11 & (-2 << (v5 & 0x3F));
    if (v12)
    {
      v7 = __clz(__rbit64(v12)) | v5 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v13 = v8 << 6;
      v14 = v8 + 1;
      v15 = (a1 + 72 + 8 * v8);
      while (v14 < (v7 + 63) >> 6)
      {
        v17 = *v15++;
        v16 = v17;
        v13 += 64;
        ++v14;
        if (v17)
        {
          result = sub_10002BEB8(v5, v20, 0);
          v7 = __clz(__rbit64(v16)) + v13;
          goto LABEL_4;
        }
      }

      result = sub_10002BEB8(v5, v20, 0);
    }

LABEL_4:
    ++v6;
    v5 = v7;
    if (v6 == v1)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_10038067C()
{
  v1 = v0;
  v2 = *v0;
  v4 = *(v2 + 88);
  v5 = *(v2 + 112);
  v55 = *(v2 + 80);
  v3 = v55;
  v56 = v4;
  v46 = v4;
  v51 = v2;
  v52 = *(v2 + 96);
  v57 = v52;
  v58 = v5;
  v54 = type metadata accessor for P2PController.Components();
  v49 = *(v54 - 8);
  v6 = *(v49 + 64);
  __chkstk_darwin();
  v50 = &v42 - v7;
  v47 = *(v55 - 8);
  v8 = *(v47 + 64);
  __chkstk_darwin();
  v53 = &v42 - v9;
  v10 = *(*(type metadata accessor for Optional() - 8) + 64);
  __chkstk_darwin();
  v48 = &v42 - v11;
  swift_getAssociatedTypeWitness();
  *&v52 = v3;
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v12 = type metadata accessor for Preferences();
  v13 = *(v12 - 8);
  v14 = v13[8];
  __chkstk_darwin();
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v18 = &v42 - v17;
  *(v1 + *(v2 + 144)) = 1;
  v19 = v1 + *(*v1 + 136);
  v20 = v13[2];
  v20(&v42 - v17, v19, v12);
  LOBYTE(v2) = Preferences.nan.getter(v12);
  v21 = v13[1];
  v22 = v21(v18, v12);
  v23 = 0;
  if (v2)
  {
    v24 = v1[2];
    (*(*v24 + 168))(v22);
    v25 = (v24 + *(*v24 + 104));
    v26 = v25[1];
    v43 = *v25;
    v44 = v24;
    v45 = v19;
    v20(v16, v19, v12);

    v27 = Preferences.nanDataMACAddress.getter(v12);
    v21(v16, v12);
    if ((v27 & 0x1000000000000) != 0)
    {
      static WiFiAddress.random()();
    }

    WiFiAddress.linkLocalAddress()(v28);
    v30 = v48;
    v31 = v53;
    v32 = v52;
    (*(*(v46 + 8) + 16))(2, v43, v26, v29 & 0xFFFFFFFFFFFFLL, v52);
    v33 = v54;
    v34 = v47;
    (*(v47 + 8))(v31, v32);

    (*(v34 + 56))(v30, 0, 1, v32);
    swift_getWitnessTable();
    type metadata accessor for NANInterface();
    v35 = v50;
    v19 = v45;
    (*(v49 + 16))(v50, v45, v33);

    v36 = v44;

    v23 = sub_100410970(v30, v35, v36, sub_100387628, v1);
  }

  v37 = v54;
  v38 = *&v19[*(v54 + 64)];

  sub_10031736C();

  v39 = *&v19[*(v37 + 68)];
  swift_beginAccess();
  v40 = *(v39 + 16);

  swift_unownedRelease();
  *(v39 + 16) = v23;
  swift_endAccess();
  swift_unownedRetain();

  return v23;
}

char *sub_100380CC8()
{
  v1 = v0;
  v64 = 0;
  v2 = *v0;
  v4 = *(v2 + 88);
  v5 = *(v2 + 112);
  v68 = *(v2 + 80);
  v3 = v68;
  v69 = v4;
  v56 = v4;
  v65 = v2;
  v63 = *(v2 + 96);
  v70 = v63;
  v71 = v5;
  v66 = type metadata accessor for P2PController.Components();
  v61 = *(v66 - 8);
  v6 = *(v61 + 64);
  __chkstk_darwin();
  v59 = &v53 - v7;
  v57 = *(v68 - 8);
  v8 = *(v57 + 64);
  __chkstk_darwin();
  v62 = &v53 - v9;
  v10 = *(*(type metadata accessor for Optional() - 8) + 64);
  __chkstk_darwin();
  v58 = &v53 - v11;
  v12 = v63;
  swift_getAssociatedTypeWitness();
  *&v63 = v12;
  v60 = v3;
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v13 = type metadata accessor for Preferences();
  v14 = *(v13 - 8);
  v15 = v14[8];
  __chkstk_darwin();
  v17 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v19 = &v53 - v18;
  *(v1 + *(v2 + 168)) = 1;
  v20 = v1 + *(*v1 + 136);
  v21 = v14[2];
  v21(&v53 - v18, v20, v13);
  LOBYTE(v2) = Preferences.awdl.getter(v13);
  v22 = v14[1];
  v23 = v22(v19, v13);
  if (v2)
  {
    v24 = v1[2];
    (*(*v24 + 168))(v23);
    v25 = *(*v24 + 104);
    v54 = v24;
    v26 = (v24 + v25);
    v27 = v26[1];
    v53 = *v26;
    v55 = v20;
    v21(v17, v20, v13);

    v28 = Preferences.awdlMACAddress.getter(v13);
    v22(v17, v13);
    if ((v28 & 0x1000000000000) != 0)
    {
      static WiFiAddress.random()();
    }

    WiFiAddress.linkLocalAddress()(v29);
    v31 = v58;
    v32 = v62;
    v33 = v64;
    v34 = v60;
    (*(*(v56 + 8) + 16))(1, v53, v27, v30 & 0xFFFFFFFFFFFFLL, v60);
    v36 = v65;
    v35 = v66;
    if (v33)
    {

      v37 = v57;
      (*(v57 + 8))(v32, v34);
      v38 = 1;
    }

    else
    {
      v37 = v57;
      (*(v57 + 8))(v32, v34);

      v38 = 0;
    }

    v20 = v55;
    (*(v37 + 56))(v31, v38, 1, v34);
    swift_getWitnessTable();
    type metadata accessor for AWDLInterface();
    v40 = v59;
    (*(v61 + 16))(v59, v20, v35);
    v41 = v54;

    v39 = sub_10044CA38(v31, v40, v41);
  }

  else
  {
    v39 = v64;
    v36 = v65;
    v35 = v66;
  }

  v67 = v39;
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for AWDLInterface();
  type metadata accessor for Optional();
  v43 = swift_getWitnessTable();
  v44 = swift_getWitnessTable();
  v68 = v36;
  v69 = WitnessTable;
  *&v70 = v43;
  *(&v70 + 1) = v44;
  v71 = v63;
  v45 = type metadata accessor for AWDLNetworkAgent();
  sub_100073CE8(sub_100384E28, v1, &type metadata for Never, v45, v46, &v68);
  v47 = *(*v1 + 184);
  v48 = *(v1 + v47);
  *(v1 + v47) = v68;

  v49 = *&v20[*(v35 + 64)];
  swift_weakAssign();
  v50 = *&v20[*(v35 + 68)];
  swift_beginAccess();
  v51 = *(v50 + 24);

  swift_unownedRelease();
  *(v50 + 24) = v39;
  swift_endAccess();
  swift_unownedRetain();

  return v39;
}

void sub_100381408(unsigned int a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = v1 + *(*v1 + 216);
  v6 = *v5;
  if (*v5)
  {
    v7 = *(v5 + 8);
    sub_10038762C(*v5);
    swift_unknownObjectRetain();
    CountryCode.code.getter(a1);
    v13 = String._bridgeToObjectiveC()();

    [v7 setCountryCode:v13];

    swift_unknownObjectRelease_n();
  }

  else
  {
    v8 = v2 + *(v4 + 232);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Client is not valid, not setting country code", v11, 2u);
    }

    v12 = v2 + *(*v2 + 208);
    *v12 = a1;
    *(v12 + 2) = 0;
  }
}

void sub_1003815A8(char *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *v1;
  v6 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL___WiFiRemoteClientCountryCodeMonitorXPCDelegate];
  v7 = *&a1[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_connection];
  [v7 setRemoteObjectInterface:v6];

  v8 = swift_allocObject();
  swift_weakInit();
  v9 = swift_allocObject();
  *(v9 + 16) = v4[10];
  *(v9 + 24) = v4[11];
  *(v9 + 32) = *(v5 + 6);
  *(v9 + 48) = v4[14];
  *(v9 + 56) = v8;
  v10 = &a1[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_invalidationHandler];
  v11 = *&a1[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_invalidationHandler];
  v12 = *&a1[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_invalidationHandler + 8];
  *v10 = sub_100388E10;
  v10[1] = v9;

  sub_100010520(v11);

  v13 = [v7 remoteObjectProxy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10005DC58(&unk_100598030, &qword_1004B2148);
  if (swift_dynamicCast())
  {
    v14 = v2 + *(*v2 + 216);
    v15 = *v14;
    v16 = *(v14 + 1);
    *v14 = a1;
    *(v14 + 1) = v32;
    v17 = a1;
    swift_unknownObjectRetain();
    sub_10038766C(v15);
    v18 = *(*v2 + 232);
    v19 = v17;
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      *(v22 + 4) = v19;
      *v23 = a1;
      v24 = v19;
      _os_log_impl(&_mh_execute_header, v20, v21, "%@ is monitoring interface country code", v22, 0xCu);
      sub_10000BB28(v23);
    }

    v25 = *v14;
    if (!*v14)
    {
      goto LABEL_7;
    }

    v26 = *(v14 + 1);
    v27 = (v2 + *(*v2 + 208));
    if (v27[1])
    {

LABEL_7:
      swift_unknownObjectRelease();
      return;
    }

    v29 = *v27;
    v30 = *(v14 + 1);
    sub_10038762C(*v14);
    swift_unknownObjectRetain();
    CountryCode.code.getter(v29);
    v31 = String._bridgeToObjectiveC()();

    [v26 setCountryCode:v31];
    swift_unknownObjectRelease();

    swift_unknownObjectRelease_n();
  }

  else
  {
    sub_10000B02C();
    swift_allocError();
    *v28 = xmmword_100481800;
    *(v28 + 16) = 1;
    swift_willThrow();
  }
}

uint64_t sub_1003819A8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result + *(*result + 216);
    v3 = *v1;
    v2 = *(v1 + 8);
    *v1 = 0;
    *(v1 + 8) = 0;
    sub_10038766C(v3);
  }

  return result;
}

uint64_t sub_100381A24@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v17 = *a2;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v6 = type metadata accessor for Preferences();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  v7 = type metadata accessor for P2PController.Components();
  *(a3 + v7[15]) = a2;
  v8 = v7[16];
  type metadata accessor for P2PController();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for RadioResourceManager();
  *(a3 + v8) = sub_10030CD60();
  v9 = v7[17];
  type metadata accessor for PeerCacheManager();
  *(a3 + v9) = sub_100444270();
  v10 = v7[18];
  _s22P2PActivityCoordinatorCMa();
  *(a3 + v10) = sub_1002D0B08();
  v11 = v7[19];
  type metadata accessor for CoreAnalyticsCommunicator();
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  *(v12 + 32) = 0;
  *(v12 + 40) = 0;
  *(v12 + 48) = &_swiftEmptyDictionarySingleton;
  *(a3 + v11) = v12;
  *(v12 + 56) = &_swiftEmptySetSingleton;
  v13 = v7[20];
  v14 = *(v17 + 80);
  v15 = *(v17 + 88);
  type metadata accessor for WiFiAwarePairedDevicesStore();
  result = WiFiAwarePairedDevicesStore.__allocating_init()();
  *(a3 + v13) = result;
  return result;
}

uint64_t sub_100381D34(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4[13] = a4;
  v4[14] = *a4;
  v5 = sub_10005DC58(&qword_10058F460, &qword_100492830);
  v4[15] = v5;
  v6 = *(v5 - 8);
  v4[16] = v6;
  v7 = *(v6 + 64) + 15;
  v4[17] = swift_task_alloc();
  v8 = sub_10005DC58(&unk_100598040, &qword_1004B2168);
  v4[18] = v8;
  v9 = *(v8 - 8);
  v4[19] = v9;
  v10 = *(v9 + 64) + 15;
  v4[20] = swift_task_alloc();

  return _swift_task_switch(sub_100381E90, 0, 0);
}

uint64_t sub_100381E90()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(*v2 + 136);
  *(v0 + 168) = v3;
  v4 = v2 + v3;
  v5 = *(v1 + 112);
  v6 = *(v1 + 96);
  *(v0 + 64) = *(v1 + 80);
  *(v0 + 80) = v6;
  *(v0 + 96) = v5;
  v7 = type metadata accessor for P2PController.Components();
  *(v0 + 176) = v7;
  v8 = *(v4 + *(v7 + 80));
  *(v0 + 184) = v8;
  *(v0 + 192) = *(v4 + *(v7 + 60));
  v9 = *v8;
  *(v0 + 200) = *(*v8 + 320);
  *(v0 + 208) = (v9 + 320) & 0xFFFFFFFFFFFFLL | 0x1B4F000000000000;

  return _swift_task_switch(sub_100381F9C, v8, 0);
}

uint64_t sub_100381F9C()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 184);
  (*(v0 + 200))(*(v0 + 192));

  return _swift_task_switch(sub_10038201C, 0, 0);
}

uint64_t sub_10038201C()
{
  v1 = *(v0[13] + v0[21] + *(v0[22] + 80));
  v2 = direct field offset for WiFiAwarePairedDevicesStore.events;
  v0[27] = v1;
  v0[28] = v2;

  return _swift_task_switch(sub_1003820AC, v1, 0);
}

uint64_t sub_1003820AC()
{
  (*(v0[16] + 16))(v0[17], v0[27] + v0[28], v0[15]);

  return _swift_task_switch(sub_100382134, 0, 0);
}

uint64_t sub_100382134()
{
  v1 = v0[20];
  v3 = v0[16];
  v2 = v0[17];
  v4 = v0[15];
  AsyncStream.makeAsyncIterator()();
  (*(v3 + 8))(v2, v4);
  v5 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v6 = swift_task_alloc();
  v0[29] = v6;
  *v6 = v0;
  v6[1] = sub_100382210;
  v7 = v0[20];
  v8 = v0[18];

  return AsyncStream.Iterator.next(isolation:)(v0 + 31, 0, 0, v8);
}

uint64_t sub_100382210()
{
  v1 = *(*v0 + 232);
  v3 = *v0;

  return _swift_task_switch(sub_10038230C, 0, 0);
}

uint64_t sub_10038230C()
{
  if (*(v0 + 248))
  {
    v1 = *(v0 + 136);
    (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));
    sub_100010520(0);

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    v4 = *(v0 + 104);
    v5 = *OS_dispatch_queue.nan.unsafeMutableAddressor();

    sub_100010520(0);
    v6 = swift_allocObject();
    *(v6 + 16) = sub_100388F14;
    *(v6 + 24) = v4;
    *(v0 + 48) = sub_1001D6BCC;
    *(v0 + 56) = v6;
    *(v0 + 16) = _NSConcreteStackBlock;
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_100382A80;
    *(v0 + 40) = &unk_100578018;
    v7 = _Block_copy((v0 + 16));
    v8 = *(v0 + 56);

    dispatch_sync(v5, v7);

    _Block_release(v7);
    LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

    if (v5)
    {
      __break(1u);
    }

    else
    {
      v13 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
      v14 = swift_task_alloc();
      *(v0 + 240) = v14;
      *v14 = v0;
      v14[1] = sub_100382554;
      v15 = *(v0 + 160);
      v12 = *(v0 + 144);
      v9 = v0 + 248;
      v10 = 0;
      v11 = 0;
    }

    return AsyncStream.Iterator.next(isolation:)(v9, v10, v11, v12);
  }
}

uint64_t sub_100382554()
{
  v1 = *(*v0 + 240);
  v3 = *v0;

  return _swift_task_switch(sub_100382650, 0, 0);
}

uint64_t sub_100382650()
{
  if (*(v0 + 248))
  {
    v1 = *(v0 + 104);
    v2 = *(v0 + 136);
    (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));
    sub_100010520(sub_100388F14);

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v5 = *(v0 + 104);
    v6 = *OS_dispatch_queue.nan.unsafeMutableAddressor();

    sub_100010520(sub_100388F14);
    v7 = swift_allocObject();
    *(v7 + 16) = sub_100388F14;
    *(v7 + 24) = v5;
    *(v0 + 48) = sub_1001D6BCC;
    *(v0 + 56) = v7;
    *(v0 + 16) = _NSConcreteStackBlock;
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_100382A80;
    *(v0 + 40) = &unk_100578018;
    v8 = _Block_copy((v0 + 16));
    v9 = *(v0 + 56);

    dispatch_sync(v6, v8);

    _Block_release(v8);
    LODWORD(v6) = swift_isEscapingClosureAtFileLocation();

    if (v6)
    {
      __break(1u);
    }

    else
    {
      v14 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
      v15 = swift_task_alloc();
      *(v0 + 240) = v15;
      *v15 = v0;
      v15[1] = sub_100382554;
      v16 = *(v0 + 160);
      v13 = *(v0 + 144);
      v10 = v0 + 248;
      v11 = 0;
      v12 = 0;
    }

    return AsyncStream.Iterator.next(isolation:)(v10, v11, v12, v13);
  }
}

uint64_t sub_1003828B0(uint64_t a1)
{
  result = sub_10001BDD0();
  if (result)
  {
    sub_10040CAE8();

    sub_1003513B4();
  }

  v3 = *(*a1 + 152);
  v4 = *(a1 + v3);
  if (v4)
  {
    v5 = *(a1 + v3);

    sub_100410568();
    return sub_10000E074(v4);
  }

  return result;
}

void sub_100382AA8(uint64_t a1)
{
  if (sub_10001BDD0())
  {
    v2 = sub_100019F94();

    v3 = a1 + *(*a1 + 232);
    oslog = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(oslog, v4))
    {
      goto LABEL_13;
    }

    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136315138;
    if (v2)
    {
      v7 = 0x64656C62616E65;
    }

    else
    {
      v7 = 0x64656C6261736964;
    }

    if (v2)
    {
      v8 = 0xE700000000000000;
    }

    else
    {
      v8 = 0xE800000000000000;
    }

    v9 = sub_100002320(v7, v8, &v14);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, oslog, v4, "Current NAN state is %s", v5, 0xCu);
    sub_100002A00(v6);
  }

  else
  {
    v10 = a1 + *(*a1 + 232);
    oslog = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(oslog, v11))
    {
      goto LABEL_13;
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v11, "Unable to retrieve NAN state", v12, 2u);
  }

LABEL_13:
}

uint64_t sub_100382C90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for DispatchTime();
  v49 = *(v11 - 8);
  v12 = *(v49 + 64);
  __chkstk_darwin();
  v14 = &v42[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v16 = &v42[-v15];
  v17 = type metadata accessor for DispatchTimeInterval();
  v47 = *(v17 - 8);
  v48 = v17;
  v18 = *(v47 + 64);
  __chkstk_darwin();
  v20 = &v42[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v22 = result;
    v46 = v11;
    v23 = result + *(*result + 136);
    v50[0] = a2;
    v50[1] = a3;
    v50[2] = a4;
    v50[3] = a5;
    v50[4] = a6;
    v24 = type metadata accessor for P2PController.Components();
    v25 = *(v23 + *(v24 + 76));

    sub_1002CCAE8();

    v26 = *(v23 + *(v24 + 76));

    sub_1002CCFAC();

    v27 = *(*v22 + 232);

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v44 = v30;
      v45 = swift_slowAlloc();
      v50[0] = v45;
      *v30 = 136315138;
      type metadata accessor for P2PTimer();
      variable initialization expression of AWDLPeer.lastUpdated();
      v31 = *v22;
      v43 = v29;
      v32 = *(v31 + 200);
      swift_beginAccess();
      v33 = v49;
      v34 = v46;
      (*(v49 + 16))(v14, v22 + v32, v46);
      DispatchTime.distance(to:)();
      v35 = *(v33 + 8);
      v35(v14, v34);
      v35(v16, v34);
      v36 = DispatchTimeInterval.description.getter();
      v38 = v37;

      (*(v47 + 8))(v20, v48);
      v39 = sub_100002320(v36, v38, v50);

      v40 = v44;
      *(v44 + 1) = v39;
      _os_log_impl(&_mh_execute_header, v28, v43, "Core analytics periodic timer fired for App datacollection : %s", v40, 0xCu);
      sub_100002A00(v45);
    }

    else
    {

      v34 = v46;
      v33 = v49;
    }

    type metadata accessor for P2PTimer();
    variable initialization expression of AWDLPeer.lastUpdated();
    v41 = *(*v22 + 200);
    swift_beginAccess();
    (*(v33 + 40))(v22 + v41, v16, v34);
    swift_endAccess();
  }

  return result;
}

char *sub_1003830D4()
{
  v1 = *v0;
  v2 = *(*v0 + 160);
  if (*&v0[v2])
  {
    v3 = *&v0[v2];

    Task.cancel()();

    v4 = *&v0[v2];
  }

  *&v0[v2] = 0;

  v5 = *(*v0 + 224);
  v6 = *&v0[v5];
  *&v0[v5] = 0;

  v7 = *(v0 + 2);

  v8 = *(*v0 + 136);
  v19 = *(v1 + 80);
  v20 = *(v1 + 96);
  v21 = *(v1 + 112);
  v9 = type metadata accessor for P2PController.Components();
  (*(*(v9 - 8) + 8))(&v0[v8], v9);
  sub_10000E074(*&v0[*(*v0 + 152)]);
  v10 = *&v0[v2];

  sub_10000E074(*&v0[*(*v0 + 176)]);

  v11 = *(*v0 + 200);
  v12 = type metadata accessor for DispatchTime();
  (*(*(v12 - 8) + 8))(&v0[v11], v12);
  v13 = &v0[*(*v0 + 216)];
  v14 = *(v13 + 1);
  sub_10038766C(*v13);
  v15 = *&v0[v5];

  v16 = *(*v0 + 232);
  v17 = type metadata accessor for Logger();
  (*(*(v17 - 8) + 8))(&v0[v16], v17);
  return v0;
}

uint64_t sub_100383358()
{
  sub_1003830D4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1003833E0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_100383434(void *a1)
{
  v2 = a1[4];
  v3 = a1[2];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = type metadata accessor for Preferences();
  if (v5 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    result = type metadata accessor for LongTermPairingKeyStore();
    if (v6 <= 0x3F)
    {
      v7 = a1[3];
      v13 = a1[6];
      v14 = a1[5];
      type metadata accessor for P2PController();
      swift_getWitnessTable();
      swift_getWitnessTable();
      swift_getWitnessTable();
      result = type metadata accessor for RadioResourceManager();
      if (v8 <= 0x3F)
      {
        result = type metadata accessor for PeerCacheManager();
        if (v9 <= 0x3F)
        {
          result = _s22P2PActivityCoordinatorCMa();
          if (v10 <= 0x3F)
          {
            result = type metadata accessor for CoreAnalyticsCommunicator();
            if (v11 <= 0x3F)
            {
              result = type metadata accessor for WiFiAwarePairedDevicesStore();
              if (v12 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1003836F8(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 32);
  v6 = *(a3 + 16);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 84);
  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v12 = *(v8 + 80);
  v13 = v11 + 3 + v12;
  v14 = v12 | 3;
  v15 = (v12 | 3) + v11 + 3;
  v16 = (v11 & 0xFFFFFFFFFFFFFFFCLL) + 9;
  v17 = v12 | 7;
  v18 = (v12 | 7) + v16;
  v19 = (v12 | 7) + 1;
  if (v10 >= a2)
  {
    goto LABEL_27;
  }

  v20 = (v11 & 0xFFFFFFFFFFFFFFF8) + 25;
  v21 = v17 + v11 + 3;
  v22 = (v11 & 0xFFFFFFFFFFFFFFF8) + 17;
  v23 = ((((((((((((v11 + ((v13 + ((v13 + ((v22 + v12 + ((v12 + 8) & ~v17) + ((v17 + v20 + ((v17 + v20 + ((v21 + ((v20 + v12 + ((v21 + ((v13 + ((v16 + v12 + ((v15 + ((v13 + ((v13 + ((v16 + v12 + ((v14 + v16 + ((v14 + v22 + ((v21 + ((v13 + ((v16 + v12 + ((v15 + ((v13 + ((v20 + v12 + (v19 & ~v17) + ((v18 + ((v15 + ((v13 + ((v13 + ((v13 + ((v13 + ((v13 + ((v13 + (v13 & ~v12)) & ~v12)) & ~v12)) & ~v12)) & ~v12)) & ~v12)) & ~v12)) & ~v14)) & ~v17)) & ~v12)) & ~v12)) & ~v14)) & ~v12)) & ~v12)) & ~v17)) & ~v14)) & ~v14)) & ~v12)) & ~v12)) & ~v12)) & ~v14)) & ~v12)) & ~v12)) & ~v17)) & ~v12)) & ~v17)) & ~v17)) & ~v17)) & ~v12)) & ~v12)) & ~v12) + 10) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v24 = v23 & 0xFFFFFFF8;
  if ((v23 & 0xFFFFFFF8) != 0)
  {
    v25 = 2;
  }

  else
  {
    v25 = a2 - v10 + 1;
  }

  if (v25 >= 0x10000)
  {
    v26 = 4;
  }

  else
  {
    v26 = 2;
  }

  if (v25 < 0x100)
  {
    v26 = 1;
  }

  if (v25 >= 2)
  {
    v27 = v26;
  }

  else
  {
    v27 = 0;
  }

  if (v27 > 1)
  {
    if (v27 == 2)
    {
      v28 = *(a1 + v23);
      if (!v28)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v28 = *(a1 + v23);
      if (!v28)
      {
        goto LABEL_27;
      }
    }

LABEL_24:
    v30 = v28 - 1;
    if (v24)
    {
      v30 = 0;
      v31 = *a1;
    }

    else
    {
      v31 = 0;
    }

    return v10 + (v31 | v30) + 1;
  }

  if (v27)
  {
    v28 = *(a1 + v23);
    if (v28)
    {
      goto LABEL_24;
    }
  }

LABEL_27:
  if (v9 >= 0x7FFFFFFF)
  {
    v34 = *(v8 + 48);

    return v34(a1);
  }

  else
  {
    v32 = ~v12;
    v33 = *(((((v19 + ((v18 + ((v15 + ((v13 + ((v13 + ((v13 + ((v13 + ((v13 + ((v13 + ((a1 + v13) & v32)) & v32)) & v32)) & v32)) & v32)) & v32)) & v32)) & ~v14)) & ~v17)) & ~v17) + v11) & 0xFFFFFFFFFFFFFFF8) + 16);
    if (v33 >= 0xFFFFFFFF)
    {
      LODWORD(v33) = -1;
    }

    return (v33 + 1);
  }
}

void sub_100383AD4(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 32);
  v8 = *(a4 + 16);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 64);
  if (v10 <= 0xFE)
  {
    v12 = 254;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (v10 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = *(v9 + 84);
  }

  if (v13 <= v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = v13;
  }

  v15 = v11 + 3;
  v16 = *(v9 + 80);
  v17 = v11 + 3 + v16;
  v18 = v16 | 3;
  v19 = (v16 | 3) + v11 + 3;
  v20 = (v11 & 0xFFFFFFFFFFFFFFFCLL) + 9;
  v21 = v16 | 7;
  v22 = (v16 | 7) + v20;
  v23 = (v16 | 7) + 1;
  v24 = (v11 & 0xFFFFFFFFFFFFFFF8) + 25;
  v25 = (v23 & ~(v16 | 7)) + v24;
  v26 = (v16 | 7) + v11 + 3;
  v27 = (v11 & 0xFFFFFFFFFFFFFFF8) + 17;
  v28 = (v16 | 7) + v24;
  v29 = (v28 + ((v28 + ((v26 + ((v24 + v16 + ((v26 + ((v17 + ((v20 + v16 + ((v19 + ((v17 + ((v17 + ((v20 + v16 + (((v16 | 3) + v20 + (((v16 | 3) + v27 + ((v26 + ((v17 + ((v20 + v16 + ((v19 + ((v17 + ((v25 + v16 + ((v22 + ((v19 + ((v17 + ((v17 + ((v17 + ((v17 + ((v17 + ((v17 + (v17 & ~v16)) & ~v16)) & ~v16)) & ~v16)) & ~v16)) & ~v16)) & ~v16)) & ~(v16 | 3))) & ~(v16 | 7))) & ~v16)) & ~v16)) & ~(v16 | 3))) & ~v16)) & ~v16)) & ~(v16 | 7))) & ~(v16 | 3))) & ~(v16 | 3))) & ~v16)) & ~v16)) & ~v16)) & ~(v16 | 3))) & ~v16)) & ~v16)) & ~(v16 | 7))) & ~v16)) & ~(v16 | 7))) & ~(v16 | 7))) & ~(v16 | 7);
  v30 = ((((((((((((((v17 + ((v17 + ((v27 + v16 + ((v16 + 8) & ~(v16 | 7)) + v29) & ~v16)) & ~v16)) & ~v16) + v11 + 3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v14 >= a3)
  {
    v33 = 0;
    v34 = a2 - v14;
    if (a2 <= v14)
    {
      goto LABEL_23;
    }

LABEL_28:
    if (v30)
    {
      v35 = 1;
    }

    else
    {
      v35 = v34;
    }

    if (v30)
    {
      v36 = ~v14 + a2;
      bzero(a1, v30);
      *a1 = v36;
    }

    if (v33 > 1)
    {
      if (v33 == 2)
      {
        *&a1[v30] = v35;
      }

      else
      {
        *&a1[v30] = v35;
      }
    }

    else if (v33)
    {
      a1[v30] = v35;
    }

    return;
  }

  if (v30)
  {
    v31 = 2;
  }

  else
  {
    v31 = a3 - v14 + 1;
  }

  if (v31 >= 0x10000)
  {
    v32 = 4;
  }

  else
  {
    v32 = 2;
  }

  if (v31 < 0x100)
  {
    v32 = 1;
  }

  if (v31 >= 2)
  {
    v33 = v32;
  }

  else
  {
    v33 = 0;
  }

  v34 = a2 - v14;
  if (a2 > v14)
  {
    goto LABEL_28;
  }

LABEL_23:
  if (v33 > 1)
  {
    if (v33 != 2)
    {
      *&a1[v30] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_39;
    }

    *&a1[v30] = 0;
    goto LABEL_38;
  }

  if (!v33)
  {
LABEL_38:
    if (!a2)
    {
      return;
    }

    goto LABEL_39;
  }

  a1[v30] = 0;
  if (!a2)
  {
    return;
  }

LABEL_39:
  if (v10 >= 0x7FFFFFFF)
  {
    if (v12 >= a2)
    {
      v41 = *(v9 + 56);

      v41(a1, a2);
    }

    else
    {
      if (v15 <= 3)
      {
        v38 = ~(-1 << (8 * v15));
      }

      else
      {
        v38 = -1;
      }

      if (v15)
      {
        LODWORD(a2) = v38 & (~v12 + a2);
        if (v15 <= 3)
        {
          v39 = v15;
        }

        else
        {
          v39 = 4;
        }

        bzero(a1, v15);
        if (v39 <= 2)
        {
          if (v39 != 1)
          {
            *a1 = a2;
            return;
          }

LABEL_55:
          *a1 = a2;
          return;
        }

        if (v39 == 3)
        {
          *a1 = a2;
          a1[2] = BYTE2(a2);
        }

        else
        {
          *a1 = a2;
        }
      }
    }
  }

  else
  {
    v37 = ~v16;
    a1 = ((v22 + ((v19 + ((v17 + ((v17 + ((v17 + ((v17 + ((v17 + ((v17 + (&a1[v17] & v37)) & v37)) & v37)) & v37)) & v37)) & v37)) & v37)) & ~v18)) & ~v21);
    if (v13 < a2)
    {
      bzero(a1, v25);
      if (v25 > 3)
      {
        *a1 = a2 ^ 0x80000000;
        return;
      }

      goto LABEL_55;
    }

    v40 = ((&a1[v23] & ~v21) + v11) & 0xFFFFFFFFFFFFFFF8;
    if ((a2 & 0x80000000) != 0)
    {
      *(v40 + 8) = a2 & 0x7FFFFFFF;
      *(v40 + 16) = 0;
    }

    else
    {
      *(v40 + 16) = (a2 - 1);
    }
  }
}

uint64_t sub_100383FF4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  v3 = *(a2 + 16);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  return swift_getAssociatedConformanceWitness();
}

char *sub_1003840DC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, char **a3@<X8>)
{
  v5 = *a2;
  v6 = *a2;
  v7 = *a1;
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v8 = *(v5 + 96);
  type metadata accessor for AWDLNetworkAgent();
  v9 = a2 + *(v5 + 136);
  v12 = *(v6 + 80);
  v13 = *(v6 + 104);
  v10 = *&v9[*(type metadata accessor for P2PController.Components() + 72)];

  result = sub_1003FCDFC(v7, v10);
  *a3 = result;
  return result;
}

uint64_t sub_100384250(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v45 = a1;
  v5 = *v2;
  v6 = *v2;
  v44 = type metadata accessor for DispatchWorkItemFlags();
  v48 = *(v44 - 8);
  v7 = *(v48 + 64);
  __chkstk_darwin();
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(v10 - 8);
  v46 = v10;
  v47 = v11;
  v12 = *(v11 + 64);
  __chkstk_darwin();
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Lock();
  swift_allocObject();
  v15 = Lock.init()();
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  v18 = v3 + *(*v3 + 136);
  v19 = *(v5 + 112);
  v20 = *(v6 + 96);
  aBlock = *(v6 + 80);
  v51 = v20;
  v52 = v19;
  v21 = *&v18[*(type metadata accessor for P2PController.Components() + 72)];

  sub_1002D860C();

  v22 = *OS_dispatch_queue.nan.unsafeMutableAddressor();
  v23 = swift_allocObject();
  v23[2] = v3;
  v23[3] = v15;
  v37 = v15;
  v23[4] = v16;
  v23[5] = v17;
  v23[6] = v45;
  v23[7] = a2;
  v36 = a2;
  v52 = sub_100384DF8;
  v53 = v23;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v43 = &v51;
  *&v51 = sub_10000C8B8;
  *(&v51 + 1) = &unk_100577BE0;
  v24 = _Block_copy(&aBlock);
  v25 = v22;

  static DispatchQoS.unspecified.getter();
  v49 = _swiftEmptyArrayStorage;
  v39 = sub_10001CF14();
  v38 = sub_10005DC58(&unk_100595270, &unk_1004AEC80);
  v41 = sub_10005DCA0();
  v26 = v44;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v24);

  v27 = *(v48 + 8);
  v48 += 8;
  v42 = v27;
  v27(v9, v26);
  v28 = *(v47 + 8);
  v47 += 8;
  v40 = v28;
  v28(v14, v46);

  v29 = *OS_dispatch_queue.awdl.unsafeMutableAddressor();
  v30 = swift_allocObject();
  v31 = v37;
  v30[2] = v3;
  v30[3] = v31;
  v30[4] = v17;
  v30[5] = v16;
  v32 = v36;
  v30[6] = v45;
  v30[7] = v32;
  v52 = sub_100384E10;
  v53 = v30;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v51 = sub_10000C8B8;
  *(&v51 + 1) = &unk_100577C30;
  v33 = _Block_copy(&aBlock);

  v34 = v29;
  static DispatchQoS.unspecified.getter();
  v49 = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v33);

  v42(v9, v26);
  v40(v14, v46);
}

void sub_10038479C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v24 = a5;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v26 = *(v10 - 8);
  v11 = *(v26 + 64);
  __chkstk_darwin();
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for DispatchQoS();
  v14 = *(v25 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin();
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + *(*a1 + 144)) == 1)
  {
    if (sub_10001BDD0())
    {
      sub_1004109DC();
    }

    v18 = *(*a1 + 152);
    v19 = *(a1 + v18);
    *(a1 + v18) = 0;
    sub_10000E074(v19);
  }

  Lock.lock()();
  swift_beginAccess();
  *(a3 + 16) = 1;
  swift_beginAccess();
  v20 = *(a4 + 16);
  Lock.unlock()();
  if (v20 == 1)
  {
    v21 = *OS_dispatch_queue.p2p.unsafeMutableAddressor();
    aBlock[4] = v24;
    aBlock[5] = a6;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000C8B8;
    aBlock[3] = &unk_100577C80;
    v22 = _Block_copy(aBlock);
    v23 = v21;

    static DispatchQoS.unspecified.getter();
    v27 = _swiftEmptyArrayStorage;
    sub_10001CF14();
    sub_10005DC58(&unk_100595270, &unk_1004AEC80);
    sub_10005DCA0();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v22);

    (*(v26 + 8))(v13, v10);
    (*(v14 + 8))(v17, v25);
  }
}

void sub_100384AB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v24 = a5;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v26 = *(v10 - 8);
  v11 = *(v26 + 64);
  __chkstk_darwin();
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for DispatchQoS();
  v14 = *(v25 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin();
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + *(*a1 + 168)) == 1)
  {
    if (sub_10000DFFC())
    {
      sub_10044CA8C();
    }

    v18 = *(*a1 + 176);
    v19 = *(a1 + v18);
    *(a1 + v18) = 0;
    sub_10000E074(v19);
  }

  Lock.lock()();
  swift_beginAccess();
  *(a3 + 16) = 1;
  swift_beginAccess();
  v20 = *(a4 + 16);
  Lock.unlock()();
  if (v20 == 1)
  {
    v21 = *OS_dispatch_queue.p2p.unsafeMutableAddressor();
    aBlock[4] = v24;
    aBlock[5] = a6;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000C8B8;
    aBlock[3] = &unk_100577C58;
    v22 = _Block_copy(aBlock);
    v23 = v21;

    static DispatchQoS.unspecified.getter();
    v27 = _swiftEmptyArrayStorage;
    sub_10001CF14();
    sub_10005DC58(&unk_100595270, &unk_1004AEC80);
    sub_10005DCA0();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v22);

    (*(v26 + 8))(v13, v10);
    (*(v14 + 8))(v17, v25);
  }
}

uint64_t sub_100384E48(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, char *a5, uint64_t a6)
{
  v35[1] = a4;
  v36 = a3;
  v35[0] = a1;
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v12 = (v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100018AB4(0, &qword_10058AC60, OS_dispatch_queue_ptr);
  v13 = *&a5[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_queue];
  v14 = OS_dispatch_queue.nan.unsafeMutableAddressor();
  v15 = *v14;
  v16 = static NSObject.== infix(_:_:)();

  if (v16)
  {
    v17 = *v14;
    *v12 = *v14;
    (*(v9 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v8);
    v18 = v17;
    LOBYTE(v17) = _dispatchPreconditionTest(_:)();
    result = (*(v9 + 8))(v12, v8);
    if (v17)
    {
      if (sub_10001BDD0())
      {
        (v35[0])();
        v36(0);
      }

      else
      {
        v25 = *(*a6 + 232);
        v26 = a5;
        v27 = Logger.logObject.getter();
        v28 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          v30 = swift_slowAlloc();
          *v29 = 138412290;
          *(v29 + 4) = v26;
          *v30 = v26;
          v31 = v26;
          _os_log_impl(&_mh_execute_header, v27, v28, "Failed to accept %@ because there is no NAN interface", v29, 0xCu);
          sub_10000BB28(v30);
        }

        v32 = &v26[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_invalidationHandler];
        v33 = *&v26[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_invalidationHandler];
        v34 = *&v26[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_invalidationHandler + 8];
        *v32 = 0;
        *(v32 + 1) = 0;
        sub_100010520(v33);
        return v36(7);
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_10000B02C();
    swift_allocError();
    *v20 = xmmword_100481800;
    *(v20 + 16) = 1;
    swift_willThrow();
    v21 = &a5[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_invalidationHandler];
    v22 = *&a5[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_invalidationHandler];
    v23 = *&a5[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_invalidationHandler + 8];
    *v21 = 0;
    *(v21 + 1) = 0;
    sub_100010520(v22);
    swift_getErrorValue();
    v24 = Error.apiError.getter(v37);
    v36(v24);
  }

  return result;
}

uint64_t sub_1003851B4(void (*a1)(uint64_t), uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, char *a5, uint64_t a6)
{
  v58 = a4;
  v59 = a3;
  v55 = a2;
  v56 = a1;
  v8 = *(*a6 + 96);
  v9 = *(*a6 + 80);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v10 = type metadata accessor for Preferences();
  v54 = *(v10 - 8);
  v11 = *(v54 + 64);
  __chkstk_darwin();
  v13 = &v53 - v12;
  v14 = type metadata accessor for DispatchPredicate();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin();
  v18 = (&v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100018AB4(0, &qword_10058AC60, OS_dispatch_queue_ptr);
  v57 = a5;
  v19 = *&a5[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_queue];
  v20 = OS_dispatch_queue.awdl.unsafeMutableAddressor();
  v21 = *v20;
  LOBYTE(v9) = static NSObject.== infix(_:_:)();

  if (v9)
  {
    v22 = *v20;
    *v18 = *v20;
    (*(v15 + 104))(v18, enum case for DispatchPredicate.onQueue(_:), v14);
    v23 = v22;
    LOBYTE(v22) = _dispatchPreconditionTest(_:)();
    result = (*(v15 + 8))(v18, v14);
    if (v22)
    {
      if (sub_10000DFFC())
      {
      }

      else
      {
        v26 = v54;
        (*(v54 + 16))(v13, a6 + *(*a6 + 136), v10);
        v27 = Preferences.awdl.getter(v10);
        (*(v26 + 8))(v13, v10);
        if (v27)
        {
          v28 = a6 + *(*a6 + 232);
          v29 = Logger.logObject.getter();
          v30 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v29, v30))
          {
            v31 = swift_slowAlloc();
            *v31 = 0;
            _os_log_impl(&_mh_execute_header, v29, v30, "No AWDL interface found. Creating AWDL interface", v31, 2u);
          }

          v32 = sub_100380CC8();
          v33 = *(*a6 + 176);
          v34 = *(a6 + v33);
          *(a6 + v33) = v32;
          sub_10000E074(v34);
        }
      }

      v35 = *(*a6 + 176);
      v36 = *(a6 + v35);
      if (v36)
      {
        v37 = *(a6 + v35);

        v56(v38);
        v59(0);
        return sub_10000E074(v36);
      }

      else
      {
        v43 = *(*a6 + 232);
        v44 = v57;
        v45 = Logger.logObject.getter();
        v46 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          v48 = swift_slowAlloc();
          *v47 = 138412290;
          *(v47 + 4) = v44;
          *v48 = v44;
          v49 = v44;
          _os_log_impl(&_mh_execute_header, v45, v46, "Failed to accept %@ because there is no AWDL interface", v47, 0xCu);
          sub_10000BB28(v48);
        }

        v50 = &v44[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_invalidationHandler];
        v51 = *&v44[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_invalidationHandler];
        v52 = *&v44[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_invalidationHandler + 8];
        *v50 = 0;
        *(v50 + 1) = 0;
        sub_100010520(v51);
        return v59(7);
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_10000B02C();
    swift_allocError();
    *v25 = xmmword_100481800;
    *(v25 + 16) = 1;
    swift_willThrow();
    v39 = &v57[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_invalidationHandler];
    v40 = *&v57[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_invalidationHandler];
    v41 = *&v57[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_invalidationHandler + 8];
    *v39 = 0;
    *(v39 + 1) = 0;
    sub_100010520(v40);
    swift_getErrorValue();
    v42 = Error.apiError.getter(v60);
    v59(v42);
  }

  return result;
}

uint64_t sub_1003857B0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[10] = a6;
  v7[11] = a7;
  v7[8] = a4;
  v7[9] = a5;
  v7[12] = *a4;
  return _swift_task_switch(sub_1003857FC, 0, 0);
}

uint64_t sub_1003857FC()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 64) + *(**(v0 + 64) + 136);
  v4 = *(v1 + 112);
  v5 = *(v1 + 96);
  *(v0 + 16) = *(v1 + 80);
  *(v0 + 32) = v5;
  *(v0 + 48) = v4;
  v6 = *(v3 + *(type metadata accessor for P2PController.Components() + 80));
  *(v0 + 104) = v6;
  v7 = *(v2 + OBJC_IVAR____TtC12wifip2pdCore10XPCSession_connection);

  v8 = [v7 remoteObjectProxy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10005DC58(&unk_10058F648, &qword_1004B2140);
  *(v0 + 144) = swift_dynamicCast();
  v9 = OBJC_IVAR____TtC12wifip2pdCore10XPCSession_uuid;
  *(v0 + 112) = *(v0 + 56);
  *(v0 + 120) = v9;
  v10 = *v6;
  *(v0 + 128) = *(*v6 + 536);
  *(v0 + 136) = (v10 + 536) & 0xFFFFFFFFFFFFLL | 0x27A1000000000000;

  return _swift_task_switch(sub_100385978, v6, 0);
}

uint64_t sub_100385978()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 104);
  if (*(v0 + 144))
  {
    v3 = *(v0 + 112);
  }

  else
  {
    v3 = 0;
  }

  (*(v0 + 128))(*(v0 + 72), *(v0 + 80), v3, *(v0 + 88) + *(v0 + 120));

  swift_unknownObjectRelease();
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100385A0C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v48 = a6;
  v49 = a7;
  v46 = a9;
  v47 = a10;
  v16 = *(*(sub_10005DC58(&qword_1005985E0, &unk_1004B0F80) - 8) + 64);
  __chkstk_darwin();
  v50 = &v42 - v17;
  v18 = type metadata accessor for Logger();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin();
  v22 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v44 = a8;
    v45 = a4;
    (*(v19 + 16))(v22, Strong + *(*Strong + 232), v18);

    v24 = a2;

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v42 = a2;
      v28 = v27;
      v29 = swift_slowAlloc();
      v43 = a5;
      *v28 = 138412546;
      *(v28 + 4) = v24;
      *(v28 + 12) = 2112;
      *(v28 + 14) = a3;
      *v29 = v24;
      v29[1] = a3;
      v30 = v24;

      _os_log_impl(&_mh_execute_header, v25, v26, "%@ with store instance: %@ was invalidated", v28, 0x16u);
      sub_10005DC58(&qword_10058B780, &qword_100480AC0);
      swift_arrayDestroy();
      a5 = v43;

      a2 = v42;
    }

    (*(v19 + 8))(v22, v18);
    a8 = v44;
    a4 = v45;
  }

  v31 = type metadata accessor for TaskPriority();
  v32 = v50;
  (*(*(v31 - 8) + 56))(v50, 1, 1, v31);
  v33 = swift_allocObject();
  v33[2] = 0;
  v33[3] = 0;
  v34 = v49;
  v33[4] = v48;
  v33[5] = v34;
  v36 = v46;
  v35 = v47;
  v33[6] = a8;
  v33[7] = v36;
  v33[8] = v35;
  v33[9] = a1;
  v33[10] = a4;
  v33[11] = a5;
  v33[12] = a2;
  v37 = a2;

  sub_1003ACE3C(0, 0, v32, &unk_1004B2130, v33);

  v38 = &v37[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_invalidationHandler];
  v39 = *&v37[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_invalidationHandler];
  v40 = *&v37[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_invalidationHandler + 8];
  *v38 = 0;
  *(v38 + 1) = 0;
  return sub_100010520(v39);
}

uint64_t sub_100385D9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 104) = a6;
  *(v8 + 112) = a7;
  *(v8 + 88) = a4;
  *(v8 + 96) = a5;
  *(v8 + 80) = a1;
  *(v8 + 16) = a8;
  *(v8 + 24) = v14;
  *(v8 + 40) = v15;
  *(v8 + 48) = v16;
  v9 = type metadata accessor for P2PController.Components();
  *(v8 + 120) = v9;
  v10 = *(v9 - 8);
  *(v8 + 128) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 136) = swift_task_alloc();

  return _swift_task_switch(sub_100385E80, 0, 0);
}

uint64_t sub_100385E80()
{
  v1 = *(v0 + 88);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 144) = Strong;
  v3 = *(v0 + 136);
  if (Strong)
  {
    v4 = *(v0 + 120);
    v5 = *(v0 + 128);
    (*(v5 + 16))(*(v0 + 136), Strong + *(*Strong + 136), v4);

    v6 = *(v3 + *(v4 + 80));
    *(v0 + 152) = v6;
    v7 = *(v5 + 8);

    v7(v3, v4);
    *(v0 + 160) = OBJC_IVAR____TtC12wifip2pdCore10XPCSession_uuid;
    v8 = *v6;
    *(v0 + 168) = *(*v6 + 544);
    *(v0 + 176) = (v8 + 544) & 0xFFFFFFFFFFFFLL | 0xD46B000000000000;

    return _swift_task_switch(sub_10038601C, v6, 0);
  }

  else
  {
    **(v0 + 80) = 1;

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_10038601C()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 152);
  (*(v0 + 168))(*(v0 + 96), *(v0 + 104), *(v0 + 112) + *(v0 + 160));

  return _swift_task_switch(sub_10038609C, 0, 0);
}

uint64_t sub_10038609C()
{
  v1 = *(v0 + 136);
  **(v0 + 80) = *(v0 + 144) == 0;

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10038610C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 88) = v11;
  *(v8 + 72) = v10;
  *(v8 + 56) = a7;
  *(v8 + 64) = a8;
  *(v8 + 120) = a6;
  *(v8 + 40) = a4;
  *(v8 + 48) = a5;
  return _swift_task_switch(sub_100386148, 0, 0);
}

uint64_t sub_100386148()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);
  *(v0 + 96) = sub_10040CAE8();
  v3 = swift_task_alloc();
  *(v0 + 104) = v3;
  *v3 = v0;
  v3[1] = sub_1003861F8;
  v4 = *(v0 + 56);
  v5 = *(v0 + 120);

  return sub_1003668A8(v5, v4, v1 & 0xFFFFFFFFFFFFLL);
}

uint64_t sub_1003861F8(uint64_t a1)
{
  v2 = *(*v1 + 104);
  v3 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 112) = a1;

  return _swift_task_switch(sub_100386318, 0, 0);
}

uint64_t sub_100386318()
{
  v1 = v0[14];
  v2 = v0[10];
  v3 = v0[11];
  v4 = v0[9];
  v5 = v0[5];
  swift_beginAccess();
  v6 = *(v5 + 16);
  *(v5 + 16) = v1;

  v7 = v1;
  v4(v1);

  v8 = (v3 + OBJC_IVAR____TtC12wifip2pdCore10XPCSession_invalidationHandler);
  v9 = *(v3 + OBJC_IVAR____TtC12wifip2pdCore10XPCSession_invalidationHandler);
  v10 = *(v3 + OBJC_IVAR____TtC12wifip2pdCore10XPCSession_invalidationHandler + 8);
  *v8 = 0;
  v8[1] = 0;
  sub_100010520(v9);
  v11 = v0[1];

  return v11();
}

uint64_t sub_1003863E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = type metadata accessor for AWDLPeer(0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin();
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!sub_100046564(a2 & 0xFFFFFFFFFFFFLL))
  {
    sub_10000B02C();
    swift_allocError();
    v15 = 3;
    goto LABEL_6;
  }

  sub_100041B60(a2 & 0xFFFFFFFFFFFFLL, v8);
  v9 = &v8[*(v5 + 96)];
  if (v9[8])
  {
    v10 = &v8[*(v5 + 92)];
    v11 = *v10;
    v12 = v10[8];
    result = sub_1003077CC(v8);
    if (v12 == 1)
    {
      sub_10000B02C();
      swift_allocError();
      v15 = 2;
LABEL_6:
      *v14 = v15;
      *(v14 + 8) = 0;
      *(v14 + 16) = 1;
      return swift_willThrow();
    }
  }

  else
  {
    v11 = *v9;
    result = sub_1003077CC(v8);
  }

  if (v11 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v11 <= 0x7FFFFFFF)
  {
    return a3(v11);
  }

  __break(1u);
  return result;
}

uint64_t sub_100386568()
{
  v1 = __chkstk_darwin();
  v53 = v2;
  v4 = v3;
  v5 = v1;
  v6 = *(*v1 + 432);
  v7 = *(v6 + 80);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v11 = &v50 - v10;
  v13 = *(v12 + 96);
  swift_beginAccess();
  (*(v8 + 16))(v11, v5 + v13, v7);
  (*(*(v6 + 88) + 152))(v57, v7);
  (*(v8 + 8))(v11, v7);
  memcpy(v58, v57, 0xE89uLL);
  if (sub_100388D64(v58) == 1)
  {
    sub_1000827F8(_swiftEmptyArrayStorage);
    v4();
  }

  else
  {
    memcpy(v59, v58, 0xE88uLL);
    v15 = eventPayload(for:)(v59);
    v51 = v4;
    v52 = v0;
    v16 = *(*v5 + 560);
    swift_beginAccess();
    v17 = *(v5 + v16);
    v18 = AWDLTrafficRegistrationServiceAirPlay;

    v19 = sub_1004479A4(v18, v17);

    v56 = &type metadata for Bool;
    LOBYTE(v55) = v19 & 1;
    sub_100085188(&v55, v54);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v60 = v15;
    sub_10007FDF4(v54, 0xD000000000000019, 0x80000001004C02E0, isUniquelyReferenced_nonNull_native);
    v21 = v60;
    v22 = *(v5 + v16);
    v23 = AWDLTrafficRegistrationServiceSidecar;

    v24 = sub_1004479A4(v23, v22);

    v56 = &type metadata for Bool;
    LOBYTE(v55) = v24 & 1;
    sub_100085188(&v55, v54);
    v25 = swift_isUniquelyReferenced_nonNull_native();
    v60 = v21;
    sub_10007FDF4(v54, 0xD000000000000019, 0x80000001004C0300, v25);
    v26 = v60;
    v27 = *(v5 + v16);
    v28 = AWDLTrafficRegistrationServiceRemoteCamera;

    v29 = sub_1004479A4(v28, v27);

    v56 = &type metadata for Bool;
    LOBYTE(v55) = v29 & 1;
    sub_100085188(&v55, v54);
    v30 = swift_isUniquelyReferenced_nonNull_native();
    v60 = v26;
    sub_10007FDF4(v54, 0xD00000000000001ELL, 0x80000001004C0320, v30);
    v31 = v60;
    v32 = *(v5 + v16);
    v33 = AWDLTrafficRegistrationServiceRemoteScreen;

    v34 = sub_1004479A4(v33, v32);

    v56 = &type metadata for Bool;
    LOBYTE(v55) = v34 & 1;
    sub_100085188(&v55, v54);
    v35 = swift_isUniquelyReferenced_nonNull_native();
    v60 = v31;
    sub_10007FDF4(v54, 0xD00000000000001ELL, 0x80000001004C0340, v35);
    v36 = v60;
    v37 = *(v5 + v16);
    v38 = AWDLTrafficRegistrationServiceUniversalControl;

    v39 = sub_1004479A4(v38, v37);

    v56 = &type metadata for Bool;
    LOBYTE(v55) = v39 & 1;
    sub_100085188(&v55, v54);
    v40 = swift_isUniquelyReferenced_nonNull_native();
    v60 = v36;
    sub_10007FDF4(v54, 0xD000000000000022, 0x80000001004C0360, v40);
    v41 = v60;
    v42 = *(v5 + v16);
    v43 = AWDLTrafficRegistrationServiceTVRemoteCamera;

    v44 = sub_1004479A4(v43, v42);

    v56 = &type metadata for Bool;
    LOBYTE(v55) = v44 & 1;
    sub_100085188(&v55, v54);
    v45 = swift_isUniquelyReferenced_nonNull_native();
    v60 = v41;
    sub_10007FDF4(v54, 0xD000000000000020, 0x80000001004C0390, v45);
    v46 = v60;
    v47 = *(v5 + v16);
    v48 = AWDLTrafficRegistrationServiceTimeSync;

    LOBYTE(v42) = sub_1004479A4(v48, v47);

    v56 = &type metadata for Bool;
    LOBYTE(v55) = v42 & 1;
    sub_100085188(&v55, v54);
    v49 = swift_isUniquelyReferenced_nonNull_native();
    v60 = v46;
    sub_10007FDF4(v54, 0xD00000000000001DLL, 0x80000001004C03C0, v49);
    (v51)(v60);
  }
}

uint64_t sub_100386B14(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  if (a1)
  {
    sub_1000827F8(_swiftEmptyArrayStorage);
    a3();
  }

  else
  {
    v6 = (a2 + OBJC_IVAR____TtC12wifip2pdCore10XPCSession_invalidationHandler);
    v7 = *(a2 + OBJC_IVAR____TtC12wifip2pdCore10XPCSession_invalidationHandler);
    v8 = *(a2 + OBJC_IVAR____TtC12wifip2pdCore10XPCSession_invalidationHandler + 8);
    *v6 = 0;
    v6[1] = 0;

    return sub_100010520(v7);
  }
}

uint64_t sub_100386B98(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 432);
  v5 = *(v4 + 80);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = &v13 - v8;
  v11 = *(v10 + 96);
  swift_beginAccess();
  (*(v6 + 16))(v9, a1 + v11, v5);
  (*(*(v4 + 88) + 120))(a2, v5);
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100386CF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26 = a5;
  v28 = a4;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v27 = *(v10 - 8);
  v11 = *(v27 + 64);
  __chkstk_darwin();
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for DispatchQoS();
  v14 = *(v29 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin();
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + *(*a1 + 168)) == 1 && sub_10000DFFC())
  {
    v18 = sub_10044D734();
  }

  else
  {
    v18 = &_swiftEmptyDictionarySingleton;
  }

  v19 = *OS_dispatch_queue.p2p.unsafeMutableAddressor();
  v20 = swift_allocObject();
  v20[2] = a2;
  v20[3] = v18;
  v21 = v28;
  v20[4] = a3;
  v20[5] = v21;
  v20[6] = v26;
  v20[7] = a6;
  aBlock[4] = sub_100388DE8;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000C8B8;
  aBlock[3] = &unk_100577F28;
  v22 = _Block_copy(aBlock);
  v23 = v19;

  static DispatchQoS.unspecified.getter();
  v30 = _swiftEmptyArrayStorage;
  sub_10001CF14();
  sub_10005DC58(&unk_100595270, &unk_1004AEC80);
  sub_10005DCA0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v22);

  (*(v27 + 8))(v13, v10);
  (*(v14 + 8))(v17, v29);
}

uint64_t sub_10038700C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for DispatchWorkItemFlags();
  v41 = *(v12 - 8);
  v13 = *(v41 + 64);
  __chkstk_darwin();
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for DispatchQoS();
  v40 = *(v42 - 8);
  v16 = *(v40 + 64);
  __chkstk_darwin();
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + *(*a1 + 144)) == 1)
  {
    v19 = sub_10001BDD0();
    v20 = &_swiftEmptyDictionarySingleton;
    if (v19)
    {
      v37 = "LL_STATS_REMOTE_SCREEN_ACTIVE";
      v38 = v19;
      sub_10040CAE8();
      v21 = sub_10034A0AC();
      v39 = v12;
      v22 = a2;
      v23 = a5;
      v24 = a3;
      v25 = a4;
      v26 = a6;
      v27 = v21;

      v28 = v27 <= 0;
      a6 = v26;
      a4 = v25;
      a3 = v24;
      a5 = v23;
      a2 = v22;
      v12 = v39;
      v29 = !v28;
      v47 = &type metadata for Bool;
      LOBYTE(aBlock) = v29;
      sub_100085188(&aBlock, v44);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v43 = &_swiftEmptyDictionarySingleton;
      sub_10007FDF4(v44, 0xD000000000000018, v37 | 0x8000000000000000, isUniquelyReferenced_nonNull_native);

      v20 = v43;
    }
  }

  else
  {
    v20 = &_swiftEmptyDictionarySingleton;
  }

  v31 = *OS_dispatch_queue.p2p.unsafeMutableAddressor();
  v32 = swift_allocObject();
  v32[2] = a2;
  v32[3] = v20;
  v32[4] = a3;
  v32[5] = a4;
  v32[6] = a5;
  v32[7] = a6;
  v48 = sub_100388F40;
  v49 = v32;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v46 = sub_10000C8B8;
  v47 = &unk_100577ED8;
  v33 = _Block_copy(&aBlock);
  v34 = v31;

  static DispatchQoS.unspecified.getter();
  *&v44[0] = _swiftEmptyArrayStorage;
  sub_10001CF14();
  sub_10005DC58(&unk_100595270, &unk_1004AEC80);
  sub_10005DCA0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v33);

  (*(v41 + 8))(v15, v12);
  (*(v40 + 8))(v18, v42);
}

uint64_t sub_1003873BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  swift_beginAccess();

  v10 = *(a1 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14[0] = *(a1 + 16);
  *(a1 + 16) = 0x8000000000000000;
  sub_1001EAAA4(a2, sub_1001E8450, 0, isUniquelyReferenced_nonNull_native, v14);

  *(a1 + 16) = v14[0];
  swift_endAccess();
  swift_beginAccess();
  *(a3 + 16) = 1;
  result = swift_beginAccess();
  if (*(a4 + 16))
  {

    a5(v13);
  }

  return result;
}

uint64_t sub_1003874F0(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v2;
    *v6 = v2;
    v7 = v2;
    _os_log_impl(&_mh_execute_header, v3, v4, "The invalidation handler was called for %@ before we could process its request", v5, 0xCu);
    sub_10000BB28(v6);
  }

  v8 = &v2[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_requestHandler];
  v9 = *&v2[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_requestHandler + 8];
  *v8 = NANBitmap.Channel.operatingClass.getter;
  *(v8 + 1) = 0;

  v10 = &v2[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_invalidationHandler];
  v11 = *&v2[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_invalidationHandler];
  v12 = *&v2[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_invalidationHandler + 8];
  *v10 = 0;
  *(v10 + 1) = 0;

  return sub_100010520(v11);
}

void *sub_10038762C(void *result)
{
  if (result)
  {
    v1 = result;

    return swift_unknownObjectRetain();
  }

  return result;
}

void *sub_10038766C(void *result)
{
  if (result)
  {

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1003876AC()
{
  v1 = *(type metadata accessor for Logger() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1003874F0(v0 + v2, v3);
}

uint64_t sub_1003877F8(uint64_t a1)
{
  v2 = v1;
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  if (!a1)
  {
    v5 = (*(v2 + 16) + OBJC_IVAR____TtC12wifip2pdCore10XPCSession_invalidationHandler);
    v7 = *v5;
    v6 = v5[1];
    *v5 = 0;
    v5[1] = 0;
    sub_100010520(v7);
    a1 = 0;
  }

  return v3(a1);
}

uint64_t sub_10038785C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_100386568();
}

uint64_t sub_1003878B8(uint64_t a1)
{
  if (a1)
  {
    v2 = *(v1 + 32);
    return (*(v1 + 24))(_swiftEmptyArrayStorage);
  }

  else
  {
    v4 = (*(v1 + 16) + OBJC_IVAR____TtC12wifip2pdCore10XPCSession_invalidationHandler);
    v5 = *v4;
    v6 = v4[1];
    *v4 = 0;
    v4[1] = 0;

    return sub_100010520(v5);
  }
}

uint64_t sub_100387950(uint64_t a1)
{
  if (a1)
  {
    v2 = *(v1 + 32);
    return (*(v1 + 24))(0);
  }

  else
  {
    v4 = (*(v1 + 16) + OBJC_IVAR____TtC12wifip2pdCore10XPCSession_invalidationHandler);
    v5 = *v4;
    v6 = v4[1];
    *v4 = 0;
    v4[1] = 0;

    return sub_100010520(v5);
  }
}

void sub_1003879BC()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = sub_10044D224(1);
  v2();
}

uint64_t sub_100387A18(uint64_t a1)
{
  if (a1)
  {
    v2 = *(v1 + 32);
    return (*(v1 + 24))(0);
  }

  else
  {
    v4 = (*(v1 + 16) + OBJC_IVAR____TtC12wifip2pdCore10XPCSession_invalidationHandler);
    v5 = *v4;
    v6 = v4[1];
    *v4 = 0;
    v4[1] = 0;

    return sub_100010520(v5);
  }
}

uint64_t sub_100387AB0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64) | (*(v1 + 66) << 16);
  v14 = *(v1 + 72);
  v10 = *(v1 + 88);
  v11 = *(v1 + 48);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_10030BDD0;

  return sub_10038610C(a1, v4, v5, v6, v7, v11, v8, v9);
}

uint64_t sub_100387BBC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10030BDD0;

  return sub_1003857B0(a1, v4, v5, v6, v7, v9, v8);
}

void *sub_100387CC8(uint64_t a1)
{
  v2 = v1;
  v119 = a1;
  v3 = *v1;
  v102 = v3;
  v4 = type metadata accessor for DispatchTimeInterval();
  v115 = *(v4 - 8);
  v116 = v4;
  v5 = *(v115 + 64);
  __chkstk_darwin();
  v117 = (&v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v114 = (&v87 - v7);
  __chkstk_darwin();
  v113 = (&v87 - v8);
  v109 = type metadata accessor for DispatchWorkItemFlags();
  v112 = *(v109 - 8);
  v9 = *(v112 + 64);
  __chkstk_darwin();
  v108 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v110 = *(v11 - 8);
  v111 = v11;
  v12 = *(v110 + 64);
  __chkstk_darwin();
  v107 = &v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(*(sub_10005DC58(&qword_1005985E0, &unk_1004B0F80) - 8) + 64);
  __chkstk_darwin();
  v103 = &v87 - v15;
  v98 = &qword_1004B4E88[7];
  v104 = &v123;
  v16 = v3[12];
  v17 = v3[10];
  swift_getAssociatedTypeWitness();
  v18 = v17;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v20 = *(*(AssociatedTypeWitness - 8) + 64);
  __chkstk_darwin();
  v100 = &v87 - v21;
  v22 = swift_getAssociatedTypeWitness();
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin();
  v93 = &v87 - v24;
  v25 = swift_checkMetadataState();
  v120 = *(v25 - 8);
  v26 = *(v120 + 64);
  __chkstk_darwin();
  v28 = &v87 - v27;
  v91 = v22;
  v90 = swift_getAssociatedConformanceWitness();
  v29 = *(*(type metadata accessor for Preferences() - 8) + 64);
  __chkstk_darwin();
  v118 = &v87 - v30;
  v97 = v3[11];
  v96 = v3[13];
  v88 = v18;
  *&v31 = v18;
  *(&v31 + 1) = v97;
  v106 = v31;
  *&v32 = v16;
  *(&v32 + 1) = v96;
  v105 = v32;
  v94 = v3[14];
  v123 = v32;
  aBlock = v31;
  v124 = v94;
  v95 = type metadata accessor for P2PController.Components();
  v92 = *(v95 - 8);
  v33 = *(v92 + 64);
  __chkstk_darwin();
  v89 = &v87 - v34;
  *(v2 + 24) = 0;
  *(v2 + v3[18]) = 0;
  *(v2 + *(*v2 + 152)) = 1;
  *(v2 + *(*v2 + 160)) = 0;
  *(v2 + *(*v2 + 168)) = 0;
  *(v2 + *(*v2 + 176)) = 1;
  *(v2 + *(*v2 + 184)) = 0;
  v35 = *(*v2 + 192);
  *(v2 + v35) = [objc_allocWithZone(WiFiP2PUIAgent) init];
  v36 = *(*v2 + 200);
  v101 = type metadata accessor for P2PTimer();
  variable initialization expression of AWDLPeer.lastUpdated();
  v37 = v2 + *(*v2 + 208);
  *v37 = 0;
  v37[2] = 1;
  v38 = (v2 + *(*v2 + 216));
  *v38 = 0;
  v38[1] = 0;
  *(v2 + *(*v2 + 224)) = 0;
  v39 = v2 + *(*v2 + 232);
  Logger.init(subsystem:category:)();
  v87 = v16;
  v98 = *(v16 + 56);
  v98(v18, v16);
  v40 = v93;
  (*(AssociatedConformanceWitness + 56))(v25, AssociatedConformanceWitness);
  v41 = *(v120 + 8);
  v120 += 8;
  v41(v28, v25);
  Preferences.init(storage:)(v40, v91, v90, v118);
  swift_getAssociatedConformanceWitness();
  type metadata accessor for LongTermPairingKeyStore();
  v98(v88, v87);
  v42 = v100;
  (*(AssociatedConformanceWitness + 64))(v25, AssociatedConformanceWitness);
  v41(v28, v25);
  v43 = LongTermPairingKeyStore.__allocating_init(keychain:)(v42);
  v44 = v89;
  v45 = v94;
  sub_100381A24(v118, v43, v89);
  v46 = *(*v2 + 136);
  v47 = v92;
  v48 = v95;
  (*(v92 + 32))(v2 + v46, v44, v95);
  swift_getWitnessTable();
  type metadata accessor for InfrastructureWiFiInterface();
  v49 = v47;
  (*(v47 + 16))(v44, v2 + v46, v48);
  v50 = sub_1003F2AE0(v119, v44);
  (*(v49 + 8))(v44, v48);
  v2[2] = v50;
  v51 = v2 + *(*v2 + 136);
  v52 = *&v51[*(v48 + 64)];

  sub_10031741C();

  v53 = *&v51[*(v48 + 72)];
  swift_weakAssign();
  v54 = *&v51[*(v48 + 72)];
  v55 = *(v2 + *(*v2 + 192));

  v56 = v55;
  sub_1002DF1A8();

  v57 = type metadata accessor for TaskPriority();
  v58 = v103;
  (*(*(v57 - 8) + 56))(v103, 1, 1, v57);
  v59 = swift_allocObject();
  v59[2] = 0;
  v59[3] = 0;
  v59[4] = v2;

  v60 = sub_1003ACB3C(0, 0, v58, &unk_1004B2158, v59);
  v61 = *(*v2 + 160);
  v62 = *(v2 + v61);
  *(v2 + v61) = v60;

  v63 = *OS_dispatch_queue.nan.unsafeMutableAddressor();
  v124 = sub_100388EDC;
  v125 = v2;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v123 = sub_10000C8B8;
  *(&v123 + 1) = &unk_100577FA0;
  v64 = _Block_copy(&aBlock);

  v65 = v63;
  v66 = v107;
  static DispatchQoS.unspecified.getter();
  v121 = _swiftEmptyArrayStorage;
  sub_10001CF14();
  sub_10005DC58(&unk_100595270, &unk_1004AEC80);
  sub_10005DCA0();
  v68 = v108;
  v67 = v109;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v64);

  (*(v112 + 8))(v68, v67);
  (*(v110 + 8))(v66, v111);

  v69 = v113;
  *v113 = 86400;
  v70 = enum case for DispatchTimeInterval.seconds(_:);
  v71 = v116;
  v72 = *(v115 + 104);
  v72(v69, enum case for DispatchTimeInterval.seconds(_:), v116);
  v73 = *OS_dispatch_queue.p2p.unsafeMutableAddressor();
  v74 = v114;
  *v114 = 86400;
  v75 = v71;
  v72(v74, v70, v71);
  v76 = v117;
  *v117 = 180;
  v72(v76, v70, v75);
  v77 = swift_allocObject();
  swift_weakInit();
  v78 = v73;

  v79 = swift_allocObject();
  v80 = v105;
  *(v79 + 16) = v106;
  *(v79 + 32) = v80;
  *(v79 + 48) = v45;
  *(v79 + 56) = v77;
  v81 = *(v101 + 48);
  v82 = *(v101 + 52);
  swift_allocObject();
  v83 = P2PTimer.init(deadlineAfter:on:repeating:leeway:_:)(v69, v78, v74, v76, sub_100388EE4, v79);
  v84 = *(*v2 + 224);
  v85 = *(v2 + v84);
  *(v2 + v84) = v83;

  return v2;
}

void *sub_100388AD0(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  return sub_100387CC8(a1);
}

unint64_t sub_100388B0C()
{
  result = qword_10059B290;
  if (!qword_10059B290)
  {
    sub_100018AB4(255, &qword_1005974C0, NSNumber_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10059B290);
  }

  return result;
}

uint64_t sub_100388BF8(uint64_t a1, void (*a2)(uint64_t, uint64_t))
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  sub_10040CAE8();
  a2(v4, v5);
}

uint64_t sub_100388C60(uint64_t a1)
{
  v4 = *(v1 + 24);
  v15 = *(v1 + 32);
  v14 = *(v1 + 40);
  v6 = *(v1 + 56);
  v5 = *(v1 + 64);
  v7 = *(v1 + 16);
  v8 = *(v1 + 72);
  v9 = *(v1 + 80);
  v11 = *(v1 + 88);
  v10 = *(v1 + 96);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_10030BDD0;

  return sub_100385D9C(a1, v7, v4, v8, v9, v11, v10, v15);
}

uint64_t sub_100388D64(uint64_t a1)
{
  if (*(a1 + 3720))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100388D80(void (*a1)(void))
{
  v3 = v1[2];

  a1(v1[3]);
  v4 = v1[4];

  v5 = v1[5];

  v6 = v1[7];

  return _swift_deallocObject(v1, 64, 7);
}

uint64_t sub_100388E28(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1002CB380;

  return sub_100381D34(a1, v4, v5, v6);
}

uint64_t WiFiAwareMonitorClient.Status.description.getter(uint64_t a1, char a2)
{
  if (!a2)
  {
    _StringGuts.grow(_:)(17);

    strcpy(v5, "Running [PID: ");
    HIBYTE(v5[1]) = -18;
    goto LABEL_5;
  }

  if (a2 == 1)
  {
    _StringGuts.grow(_:)(20);

    v5[0] = 0xD000000000000011;
    v5[1] = 0x80000001004C03E0;
LABEL_5:
    v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v2);

    v3._countAndFlagsBits = 93;
    v3._object = 0xE100000000000000;
    String.append(_:)(v3);
    return v5[0];
  }

  return 0x6E776F6E6B6E55;
}

unint64_t WiFiAwareMonitorClient.BKSStatus.description.getter(unsigned __int8 a1)
{
  v1 = 0x6E776F6E6B6E55;
  v2 = 0xD00000000000002ALL;
  if (a1 != 2)
  {
    v2 = 0xD000000000000024;
  }

  if (a1)
  {
    v1 = 0xD00000000000001DLL;
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

void sub_100389140(uint64_t a1)
{
  [*(v1 + 32) invalidate];
  v3 = [objc_opt_self() targetWithPid:a1];
  sub_10005DC58(&unk_1005974D0, &qword_1004B2300);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1004B1170;
  v5 = String._bridgeToObjectiveC()();
  v6 = String._bridgeToObjectiveC()();
  v7 = [objc_opt_self() attributeWithDomain:v5 name:v6];

  *(v4 + 32) = v7;
  v8 = objc_allocWithZone(RBSAssertion);
  v9 = String._bridgeToObjectiveC()();
  sub_100018AB4(0, qword_100598290, RBSAttribute_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v11 = [v8 initWithExplanation:v9 target:v3 attributes:isa];

  v26 = 0;
  v12 = [v11 acquireWithError:&v26];
  v13 = v26;
  if (v12)
  {
    v14 = *(v1 + 32);
    *(v1 + 32) = v11;
    v15 = v13;
    v16 = v11;

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 67109120;
      *(v19 + 4) = a1;
      _os_log_impl(&_mh_execute_header, v17, v18, "Assertion acquired successfully for pid %d.", v19, 8u);
    }
  }

  else
  {
    v20 = v26;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_errorRetain();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 67109378;
      *(v23 + 4) = a1;
      *(v23 + 8) = 2112;
      swift_errorRetain();
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 10) = v25;
      *v24 = v25;
      _os_log_impl(&_mh_execute_header, v21, v22, "Failed to acquire assertion for pid %d: %@", v23, 0x12u);
      sub_10000BB28(v24);
    }

    else
    {
    }
  }
}

uint64_t WiFiAwareMonitorClient.publisher.getter()
{
  v2 = *(v0 + OBJC_IVAR____TtC12wifip2pdCore22WiFiAwareMonitorClient_subject);
  sub_10005DC58(&unk_1005943F0, &qword_1004B2170);
  sub_10000CADC(&qword_100598058, &unk_1005943F0, &qword_1004B2170);
  return Publisher.eraseToAnyPublisher()();
}

uint64_t WiFiAwareMonitorClient.status.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC12wifip2pdCore22WiFiAwareMonitorClient_status);
  swift_beginAccess();
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t WiFiAwareMonitorClient.status.setter(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC12wifip2pdCore22WiFiAwareMonitorClient_status;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t WiFiAwareMonitorClient.bksstatus.getter()
{
  v1 = OBJC_IVAR____TtC12wifip2pdCore22WiFiAwareMonitorClient_bksstatus;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t WiFiAwareMonitorClient.bksstatus.setter(char a1)
{
  v3 = OBJC_IVAR____TtC12wifip2pdCore22WiFiAwareMonitorClient_bksstatus;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

BOOL WiFiAwareMonitorClient.processIsRunning.getter()
{
  v1 = v0 + OBJC_IVAR____TtC12wifip2pdCore22WiFiAwareMonitorClient_status;
  swift_beginAccess();
  return *(v1 + 8) == 0;
}

uint64_t sub_10038982C(uint64_t a1, unint64_t a2, unsigned int a3)
{
  v4 = v3;
  v35 = a3;
  v36 = a2;
  v33[0] = a1;
  v34 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v5 = *(v34 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*(type metadata accessor for OS_dispatch_queue.Attributes() - 8) + 64);
  __chkstk_darwin();
  v10 = *(*(type metadata accessor for DispatchQoS() - 8) + 64);
  __chkstk_darwin();
  *(v3 + 16) = 0;
  *(v3 + 20) = 0;
  v11 = sub_100018AB4(0, &qword_10058AC60, OS_dispatch_queue_ptr);
  v33[1] = "com.apple.NexusCLI";
  v33[2] = v11;
  static DispatchQoS.unspecified.getter();
  aBlock = _swiftEmptyArrayStorage;
  sub_10001F984(&qword_10058AC68, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10005DC58(&qword_10058AC70, &qword_1004AE1F0);
  sub_10000CADC(&qword_10058AC78, &qword_10058AC70, &qword_1004AE1F0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v5 + 104))(v8, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v34);
  v12 = v35;
  *(v3 + 24) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v3 + 32) = 0;
  Logger.init(subsystem:category:)();
  v13 = OBJC_IVAR____TtC12wifip2pdCore22WiFiAwareMonitorClient_processMonitor;
  *(v3 + OBJC_IVAR____TtC12wifip2pdCore22WiFiAwareMonitorClient_processMonitor) = 0;
  v14 = OBJC_IVAR____TtC12wifip2pdCore22WiFiAwareMonitorClient_subject;
  aBlock = 0;
  LOBYTE(v38) = 2;
  v39 = 0;
  LOBYTE(v40) = 2;
  v15 = sub_10005DC58(&unk_1005943F0, &qword_1004B2170);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  *(v3 + v14) = CurrentValueSubject.init(_:)();
  v18 = v3 + OBJC_IVAR____TtC12wifip2pdCore22WiFiAwareMonitorClient_status;
  *v18 = 0;
  *(v18 + 8) = 2;
  *(v3 + OBJC_IVAR____TtC12wifip2pdCore22WiFiAwareMonitorClient_bksstatus) = 0;
  if (v12 < 1)
  {

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 67109120;
      *(v27 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v25, v26, "Invalid: pid: %d", v27, 8u);
    }

    goto LABEL_9;
  }

  v19 = v36;

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    aBlock = v23;
    *v22 = 136315394;
    v24 = v33[0];
    *(v22 + 4) = sub_100002320(v33[0], v19, &aBlock);
    *(v22 + 12) = 1024;
    *(v22 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v20, v21, "Will begin monitoring bundleID: %s, pid: %d", v22, 0x12u);
    sub_100002A00(v23);
  }

  else
  {

    v24 = v33[0];
  }

  *(v4 + 16) = v12;
  sub_100389140(v12);
  __chkstk_darwin();
  v33[-4] = v24;
  v33[-3] = v19;
  v33[-2] = v4;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_10038B120;
  *(v28 + 24) = &v33[-6];
  v41 = sub_10038B12C;
  v42 = v28;
  aBlock = _NSConcreteStackBlock;
  v38 = 1107296256;
  v39 = sub_10038ABF8;
  v40 = &unk_100578188;
  v29 = _Block_copy(&aBlock);
  v30 = objc_opt_self();

  v31 = [v30 monitorWithConfiguration:v29];
  _Block_release(v29);

  LOBYTE(v29) = swift_isEscapingClosureAtFileLocation();

  if ((v29 & 1) == 0)
  {
    v25 = *(v4 + v13);
    *(v4 + v13) = v31;
LABEL_9:

    return v4;
  }

  __break(1u);
  return result;
}

void sub_100389E54(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = String._bridgeToObjectiveC()();
  v7 = [objc_opt_self() predicateMatchingBundleIdentifier:v6];

  sub_10005DC58(&unk_1005974D0, &qword_1004B2300);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1004B1170;
  *(v8 + 32) = v7;
  sub_100018AB4(0, &qword_100598288, RBSProcessPredicate_ptr);
  v9 = v7;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a1 setPredicates:isa];

  [a1 setServiceClass:33];
  v11 = [objc_allocWithZone(RBSProcessStateDescriptor) init];
  [a1 setStateDescriptor:v11];

  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = a2;
  v13[4] = a3;
  v15[4] = sub_10038B154;
  v15[5] = v13;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 1107296256;
  v15[2] = sub_10038AB58;
  v15[3] = &unk_100578200;
  v14 = _Block_copy(v15);

  [a1 setUpdateHandler:v14];
  _Block_release(v14);
}

uint64_t sub_10038A084(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v10 - 8);
  v11 = *(v24 + 64);
  __chkstk_darwin();
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DispatchQoS();
  v14 = *(v23 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin();
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100018AB4(0, &qword_10058AC60, OS_dispatch_queue_ptr);
  v18 = static OS_dispatch_queue.main.getter();
  v19 = swift_allocObject();
  v19[2] = a4;
  v19[3] = a2;
  v19[4] = a5;
  v19[5] = a6;
  aBlock[4] = sub_10038B160;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000C8B8;
  aBlock[3] = &unk_100578250;
  v20 = _Block_copy(aBlock);

  v21 = a2;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10001F984(&qword_10058BCC0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10005DC58(&unk_100595270, &unk_1004AEC80);
  sub_10000CADC(&qword_10058BCD0, &unk_100595270, &unk_1004AEC80);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);

  (*(v24 + 8))(v13, v10);
  return (*(v14 + 8))(v17, v23);
}

void sub_10038A398(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v73 = a3;
    v74 = a4;
    if ([a2 isApplication])
    {
      v9 = a2;
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v80[0] = v13;
        *v12 = 136315138;
        v14 = [v9 name];
        if (v14)
        {
          v15 = v14;
          v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v18 = v17;
        }

        else
        {
          v16 = 0;
          v18 = 0;
        }

        v76 = v16;
        v77 = v18;
        sub_10005DC58(&unk_100599FD0, &qword_100482530);
        v19 = String.init<A>(describing:)();
        v21 = sub_100002320(v19, v20, v80);

        *(v12 + 4) = v21;
        _os_log_impl(&_mh_execute_header, v10, v11, "process %s is application", v12, 0xCu);
        sub_100002A00(v13);
      }
    }

    if ([a2 isDaemon])
    {
      v22 = a2;
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v80[0] = v26;
        *v25 = 136315138;
        v27 = [v22 name];
        if (v27)
        {
          v28 = v27;
          v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v31 = v30;
        }

        else
        {
          v29 = 0;
          v31 = 0;
        }

        v76 = v29;
        v77 = v31;
        sub_10005DC58(&unk_100599FD0, &qword_100482530);
        v32 = String.init<A>(describing:)();
        v34 = sub_100002320(v32, v33, v80);

        *(v25 + 4) = v34;
        _os_log_impl(&_mh_execute_header, v23, v24, "process %s is Daemon", v25, 0xCu);
        sub_100002A00(v26);
      }
    }

    v35 = [a2 currentState];
    v38 = 1;
    if (v35)
    {
      v36 = v35;
      v37 = [v35 isRunning];

      if (v37)
      {
        v38 = 0;
      }
    }

    v39 = [a2 pid];

    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      *v42 = 136315650;
      *(v42 + 4) = sub_100002320(a3, v74, &v76);
      *(v42 + 12) = 2080;
      v43 = v8 + OBJC_IVAR____TtC12wifip2pdCore22WiFiAwareMonitorClient_status;
      swift_beginAccess();
      v44 = WiFiAwareMonitorClient.Status.description.getter(*v43, *(v43 + 8));
      v46 = sub_100002320(v44, v45, &v76);

      *(v42 + 14) = v46;
      *(v42 + 22) = 2080;
      v47 = WiFiAwareMonitorClient.Status.description.getter(v39, v38);
      v49 = sub_100002320(v47, v48, &v76);

      *(v42 + 24) = v49;
      _os_log_impl(&_mh_execute_header, v40, v41, "BundleID: %s: Status changed from %s to %s", v42, 0x20u);
      swift_arrayDestroy();
    }

    v50 = *(v8 + OBJC_IVAR____TtC12wifip2pdCore22WiFiAwareMonitorClient_subject);
    v51 = v8 + OBJC_IVAR____TtC12wifip2pdCore22WiFiAwareMonitorClient_status;
    swift_beginAccess();
    v52 = *(v51 + 8);
    v76 = *v51;
    LOBYTE(v77) = v52;
    v78 = v39;
    v79 = v38;

    CurrentValueSubject.send(_:)();

    *v51 = v39;
    *(v51 + 8) = v38;
    v53 = [a2 currentState];
    if (v53)
    {
      v54 = v53;
      v55 = sub_10038AEA0(v53);

      v56 = OBJC_IVAR____TtC12wifip2pdCore22WiFiAwareMonitorClient_bksstatus;
      swift_beginAccess();
      *(v8 + v56) = v55;
    }

    v57 = a2;

    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      *v60 = 136315650;
      *(v60 + 4) = sub_100002320(v73, v74, &v75);
      *(v60 + 12) = 2080;
      v61 = [v57 name];
      if (v61)
      {
        v62 = v61;
        v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v65 = v64;
      }

      else
      {
        v63 = 0;
        v65 = 0xE000000000000000;
      }

      v66 = sub_100002320(v63, v65, &v75);

      *(v60 + 14) = v66;
      *(v60 + 22) = 2080;
      v67 = OBJC_IVAR____TtC12wifip2pdCore22WiFiAwareMonitorClient_bksstatus;
      swift_beginAccess();
      v68 = *(v8 + v67);
      if (v68 <= 1)
      {
        if (*(v8 + v67))
        {
          v71 = 0x80000001004C0490;
          v69 = 0xD00000000000001DLL;
        }

        else
        {
          v71 = 0xE700000000000000;
          v69 = 0x6E776F6E6B6E55;
        }
      }

      else if (v68 == 2)
      {
        v71 = 0x80000001004C0460;
        v69 = 0xD00000000000002ALL;
      }

      else
      {
        v69 = 0xD000000000000024;
        if (v68 == 3)
        {
          v70 = "BKSApplicationStateBackgroundRunning";
        }

        else
        {
          v70 = "BKSApplicationStateForegroundRunning";
        }

        v71 = (v70 - 32) | 0x8000000000000000;
      }

      v72 = sub_100002320(v69, v71, &v75);

      *(v60 + 24) = v72;
      _os_log_impl(&_mh_execute_header, v58, v59, "BKSStatus for %s [%s]: %s", v60, 0x20u);
      swift_arrayDestroy();
    }
  }
}

void sub_10038AB58(uint64_t a1, void *a2, void *a3, void *a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  v11 = a2;
  v9 = a3;
  v10 = a4;
  v8(v11, v9, v10);
}

uint64_t sub_10038ABF8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  swift_unknownObjectRetain();
  v4(a2);

  return swift_unknownObjectRelease();
}

uint64_t WiFiAwareMonitorClient.deinit()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC12wifip2pdCore22WiFiAwareMonitorClient_logger;
  (*(v3 + 16))(v6, v1 + OBJC_IVAR____TtC12wifip2pdCore22WiFiAwareMonitorClient_logger, v2);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 67109120;
    *(v10 + 4) = *(v1 + 16);

    _os_log_impl(&_mh_execute_header, v8, v9, "deinit: release assertion and stop montoring for pid %d", v10, 8u);
  }

  else
  {
  }

  v11 = *(v3 + 8);
  v11(v6, v2);
  v12 = *(v1 + 32);
  if (v12)
  {
    [v12 invalidate];
  }

  v13 = OBJC_IVAR____TtC12wifip2pdCore22WiFiAwareMonitorClient_processMonitor;
  v14 = *(v1 + OBJC_IVAR____TtC12wifip2pdCore22WiFiAwareMonitorClient_processMonitor);
  if (v14)
  {
    [v14 invalidate];
  }

  v11((v1 + v7), v2);
  v15 = *(v1 + OBJC_IVAR____TtC12wifip2pdCore22WiFiAwareMonitorClient_subject);

  return v1;
}

uint64_t WiFiAwareMonitorClient.__deallocating_deinit()
{
  WiFiAwareMonitorClient.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_10038AEA0(void *a1)
{
  result = [a1 taskState];
  if (result > 2)
  {
    if (result != 4)
    {
      if (result == 3)
      {
        return 2;
      }

      return 0;
    }
  }

  else
  {
    if (result < 2)
    {
      return result;
    }

    if (result != 2)
    {
      return 0;
    }
  }

  v3 = [a1 endowmentNamespaces];
  if (!v3)
  {
    return 3;
  }

  v4 = v3;
  v5 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1004478AC(0xD00000000000001DLL, 0x80000001004C05D0, v5);

  return 4;
}

unint64_t sub_10038AF78()
{
  result = qword_100598068;
  if (!qword_100598068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100598068);
  }

  return result;
}

uint64_t type metadata accessor for WiFiAwareMonitorClient()
{
  result = qword_100598098;
  if (!qword_100598098)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10038B020()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_10038B12C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_10038B17C()
{
  result = type metadata accessor for NANDriverCapabilities();
  if (v1 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    result = type metadata accessor for NANPeer(319);
    if (v2 <= 0x3F)
    {
      v6 = *(result - 8) + 64;
      result = type metadata accessor for Date();
      if (v3 <= 0x3F)
      {
        v7 = *(result - 8) + 64;
        result = type metadata accessor for Logger();
        if (v4 <= 0x3F)
        {
          v8 = *(result - 8) + 64;
          return swift_initClassMetadata2();
        }
      }
    }
  }

  return result;
}

id sub_10038B2F4()
{
  v1 = v0;
  v173 = *v0;
  v184 = type metadata accessor for Date();
  v174 = *(v184 - 8);
  v2 = *(v174 + 64);
  __chkstk_darwin();
  v4 = &v167 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(*(sub_10005DC58(&qword_1005983B0, &qword_1004B2428) - 8) + 64);
  __chkstk_darwin();
  v187 = &v167 - v6;
  v180 = sub_10005DC58(&qword_10058FE28, &unk_1004B2430);
  v7 = *(*(v180 - 8) + 64);
  __chkstk_darwin();
  v179 = &v167 - v8;
  v9 = type metadata accessor for SampleEntry();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  v13 = &v167 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v182 = &v167 - v14;
  __chkstk_darwin();
  v169 = &v167 - v15;
  __chkstk_darwin();
  v168 = &v167 - v16;
  __chkstk_darwin();
  v175 = &v167 - v17;
  __chkstk_darwin();
  v172 = &v167 - v18;
  __chkstk_darwin();
  v188 = &v167 - v19;
  __chkstk_darwin();
  v21 = &v167 - v20;
  __chkstk_darwin();
  v23 = (&v167 - v22);
  __chkstk_darwin();
  v25 = &v167 - v24;
  v26 = v1 + qword_10059BAA0;
  v27 = type metadata accessor for NANPeer(0);
  v183 = *&v26[*(v27 + 20)] | (*&v26[*(v27 + 20) + 2] << 16);
  static WAAnalytics.samplePeerStats(macAddress:)(v183, &v190);
  v181 = v9;
  v170 = v13;
  v171 = v4;
  if (!v191)
  {
    sub_100016290(&v190, &qword_10058BA80, &qword_1004818C0);

    v28 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *&v192[0] = v46;
      *v45 = 16777730;
      *(v45 + 4) = *(v1 + 112);
      *(v45 + 5) = 2080;
      v47 = WiFiAddress.description.getter(v183);
      v49 = v48;

      v50 = sub_100002320(v47, v49, v192);

      *(v45 + 7) = v50;
      _os_log_impl(&_mh_execute_header, v28, v44, "[Datapath Performance] ID: %hhu: %s, Failed to samplePeerStats on report", v45, 0xFu);
      sub_100002A00(v46);
    }

    else
    {
    }

    goto LABEL_13;
  }

  sub_100085188(&v190, v192);
  static Date.now.getter();
  sub_100002B30(v192, &v25[*(v9 + 20)]);
  sub_10038F6A0(v25, v23, type metadata accessor for SampleEntry);
  v28 = qword_10059BAB8;
  swift_beginAccess();
  v29 = *(&v28->isa + v1);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(&v28->isa + v1) = v29;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_59;
  }

  while (1)
  {
    v32 = *(v29 + 2);
    v31 = *(v29 + 3);
    if (v32 >= v31 >> 1)
    {
      v29 = sub_1003A72AC(v31 > 1, v32 + 1, 1, v29);
    }

    *(v29 + 2) = v32 + 1;
    sub_10038F708(v23, v29 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v32, type metadata accessor for SampleEntry);
    *(&v28->isa + v1) = v29;
    swift_endAccess();
    sub_10038F6A0(v25, v21, type metadata accessor for SampleEntry);
    swift_retain_n();
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v186 = swift_slowAlloc();
      *&v190 = v186;
      *v35 = 16777986;
      *(v35 + 4) = *(v1 + 112);

      *(v35 + 5) = 2080;
      v36 = WiFiAddress.description.getter(v183);
      v38 = v37;

      v39 = sub_100002320(v36, v38, &v190);

      *(v35 + 7) = v39;
      *(v35 + 15) = 2080;
      v9 = v181;
      sub_10038F6A0(v21, v188, type metadata accessor for SampleEntry);
      v40 = String.init<A>(describing:)();
      v42 = v41;
      sub_10038FCA4(v21, type metadata accessor for SampleEntry);
      v43 = sub_100002320(v40, v42, &v190);

      *(v35 + 17) = v43;
      _os_log_impl(&_mh_execute_header, v33, v34, "[Datapath Performance] ID: %hhu: %s, Query samplePeerStats on report ok %s", v35, 0x19u);
      v28 = v186;
      swift_arrayDestroy();
    }

    else
    {

      v28 = type metadata accessor for SampleEntry;
      sub_10038FCA4(v21, type metadata accessor for SampleEntry);
    }

    sub_10038FCA4(v25, type metadata accessor for SampleEntry);
    sub_100002A00(v192);
LABEL_13:
    v51 = v182;
    v52 = qword_10059BAB8;
    v188 = qword_10059BAB0;
    swift_beginAccess();
    v54 = *(v1 + v52);
    v55 = *(v54 + 16);
    if (v55 < 3)
    {
      break;
    }

    v176 = (v174 + 16);
    v178 = (v174 + 56);
    v186 = v10 + 56;
    *&v53 = 16777986;
    v177 = v53;
    v21 = &qword_1005983B0;
    v25 = &qword_1004B2428;
    v185 = v10;
    while (1)
    {

      v56 = Logger.logObject.getter();
      v29 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v56, v29))
      {
        v57 = swift_slowAlloc();
        *&v190 = swift_slowAlloc();
        *v57 = v177;
        *(v57 + 4) = *(v1 + 112);
        *(v57 + 5) = 2080;
        v58 = WiFiAddress.description.getter(v183);
        v60 = v59;

        v61 = sub_100002320(v58, v60, &v190);

        *(v57 + 7) = v61;
        *(v57 + 15) = 2080;
        v62 = *(v1 + v52);
        if (*(v62 + 16))
        {
          v63 = v184;
          v64 = v179;
          (*v176)(v179, v62 + ((*(v185 + 80) + 32) & ~*(v185 + 80)), v184);
          v65 = 0;
        }

        else
        {
          v65 = 1;
          v63 = v184;
          v64 = v179;
        }

        (*v178)(v64, v65, 1, v63);
        v66 = String.init<A>(describing:)();
        v28 = v67;
        v68 = sub_100002320(v66, v67, &v190);

        *(v57 + 17) = v68;
        _os_log_impl(&_mh_execute_header, v56, v29, "[Datapath Performance] ID: %hhu: %s, self.peerAnalytics.count > 2, removing sample dated %s", v57, 0x19u);
        swift_arrayDestroy();

        v9 = v181;
        v51 = v182;
        v10 = v185;
        v25 = &qword_1004B2428;
      }

      else
      {
      }

      swift_beginAccess();
      v23 = *(v1 + v52);
      if (!v23[2])
      {
        break;
      }

      v28 = ((*(v10 + 80) + 32) & ~*(v10 + 80));
      v69 = v187;
      sub_10038F6A0(v28 + v23, v187, type metadata accessor for SampleEntry);
      (*(v10 + 56))(v69, 0, 1, v9);
      sub_100016290(v69, &qword_1005983B0, &qword_1004B2428);
      v29 = v23[2];
      if (!v29)
      {
        goto LABEL_58;
      }

      v70 = swift_isUniquelyReferenced_nonNull_native();
      *(v1 + v52) = v23;
      if (!v70 || v29 - 1 > v23[3] >> 1)
      {
        v23 = sub_1003A72AC(v70, v29, 1, v23);
        *(v1 + v52) = v23;
      }

      sub_10038FCA4(v28 + v23, type metadata accessor for SampleEntry);
      v71 = *(v10 + 72);
      if (v71 > 0 || v28 + v23 >= v28 + v23 + v71 + (v23[2] - 1) * v71)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v71)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      --v23[2];
      *(v1 + v52) = v23;
      swift_endAccess();
      v54 = *(v1 + v52);
      v55 = *(v54 + 16);
      if (v55 <= 2)
      {
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    v29 = sub_1003A72AC(0, *(v29 + 2) + 1, 1, v29);
    *(&v28->isa + v1) = v29;
  }

LABEL_32:
  v72 = v173;
  if (!v55)
  {
    swift_retain_n();
    v96 = Logger.logObject.getter();
    v97 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v96, v97))
    {
      v98 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      *&v190 = v99;
      *v98 = 16777986;
      *(v98 + 4) = *(v1 + 112);
      *(v98 + 5) = 2080;
      v100 = WiFiAddress.description.getter(v183);
      v102 = sub_100002320(v100, v101, &v190);

      *(v98 + 7) = v102;
      *(v98 + 15) = 2048;
      v103 = *(*(v1 + v52) + 16);

      *(v98 + 17) = v103;

      _os_log_impl(&_mh_execute_header, v96, v97, "[Datapath Performance] ID: %hhu: %s, Not Enough Samples, only have %ld", v98, 0x19u);
      sub_100002A00(v99);
    }

    else
    {
    }

    goto LABEL_48;
  }

  v73 = v54 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
  v74 = v172;
  sub_10038F6A0(v73, v172, type metadata accessor for SampleEntry);
  v75 = v73 + *(v10 + 72) * (v55 - 1);
  v76 = v175;
  sub_10038F6A0(v75, v175, type metadata accessor for SampleEntry);
  sub_10038FC5C(&qword_1005983B8, &type metadata accessor for Date);
  v77 = v51;
  if ((dispatch thunk of static Comparable.< infix(_:_:)() & 1) == 0)
  {
    v78 = v168;
    sub_10038F6A0(v76, v168, type metadata accessor for SampleEntry);
    v79 = v169;
    sub_10038F6A0(v74, v169, type metadata accessor for SampleEntry);
    swift_retain_n();
    v80 = Logger.logObject.getter();
    v81 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      v187 = swift_slowAlloc();
      *&v190 = v187;
      *v82 = 16778242;
      *(v82 + 4) = *(v1 + 112);

      *(v82 + 5) = 2080;
      v83 = WiFiAddress.description.getter(v183);
      LODWORD(v186) = v81;
      v84 = v83;
      v86 = v85;

      v87 = sub_100002320(v84, v86, &v190);

      *(v82 + 7) = v87;
      *(v82 + 15) = 2080;
      sub_10038FC5C(&qword_10058CA40, &type metadata accessor for Date);
      v88 = dispatch thunk of CustomStringConvertible.description.getter();
      v90 = v89;
      sub_10038FCA4(v78, type metadata accessor for SampleEntry);
      v91 = sub_100002320(v88, v90, &v190);
      v77 = v182;

      *(v82 + 17) = v91;
      *(v82 + 25) = 2080;
      v72 = v173;
      v92 = dispatch thunk of CustomStringConvertible.description.getter();
      v94 = v93;
      sub_10038FCA4(v79, type metadata accessor for SampleEntry);
      v95 = sub_100002320(v92, v94, &v190);
      v9 = v181;

      *(v82 + 27) = v95;
      _os_log_impl(&_mh_execute_header, v80, v186, "[Datapath Performance] ID: %hhu: %s, assert(lateSample.date > earlySample.date) fails %s <= %s", v82, 0x23u);
      swift_arrayDestroy();
      v74 = v172;

      v76 = v175;
    }

    else
    {

      sub_10038FCA4(v79, type metadata accessor for SampleEntry);
      sub_10038FCA4(v78, type metadata accessor for SampleEntry);
    }
  }

  sub_10038F6A0(v74, v77, type metadata accessor for SampleEntry);
  v104 = v170;
  sub_10038F6A0(v76, v170, type metadata accessor for SampleEntry);
  swift_retain_n();
  v105 = Logger.logObject.getter();
  v106 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v105, v106))
  {
    v107 = swift_slowAlloc();
    v187 = swift_slowAlloc();
    *&v190 = v187;
    *v107 = 16778242;
    *(v107 + 4) = *(v1 + 112);

    *(v107 + 5) = 2080;
    v108 = WiFiAddress.description.getter(v183);
    LODWORD(v186) = v106;
    v109 = v108;
    v111 = v110;

    v112 = sub_100002320(v109, v111, &v190);

    *(v107 + 7) = v112;
    *(v107 + 15) = 2080;
    sub_10038FC5C(&qword_10058CA40, &type metadata accessor for Date);
    v113 = dispatch thunk of CustomStringConvertible.description.getter();
    v114 = v77;
    v116 = v115;
    sub_10038FCA4(v114, type metadata accessor for SampleEntry);
    v117 = sub_100002320(v113, v116, &v190);

    *(v107 + 17) = v117;
    *(v107 + 25) = 2080;
    v72 = v173;
    v118 = dispatch thunk of CustomStringConvertible.description.getter();
    v120 = v119;
    sub_10038FCA4(v104, type metadata accessor for SampleEntry);
    v121 = sub_100002320(v118, v120, &v190);
    v9 = v181;

    *(v107 + 27) = v121;
    _os_log_impl(&_mh_execute_header, v105, v186, "[Datapath Performance] ID: %hhu: %s, Calculating from date %s to  %s", v107, 0x23u);
    swift_arrayDestroy();
    v74 = v172;

    v76 = v175;
  }

  else
  {

    sub_10038FCA4(v104, type metadata accessor for SampleEntry);
    sub_10038FCA4(v77, type metadata accessor for SampleEntry);
  }

  v122 = static WAAnalytics.peerStatsDictionary(earlyData:laterData:)(v74 + *(v9 + 20), v76 + *(v9 + 20));

  v123 = Logger.logObject.getter();
  v124 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v123, v124))
  {
    v125 = swift_slowAlloc();
    *&v190 = swift_slowAlloc();
    *v125 = 16777986;
    *(v125 + 4) = *(v1 + 112);
    *(v125 + 5) = 2080;
    v126 = WiFiAddress.description.getter(v183);
    v128 = v127;

    v129 = sub_100002320(v126, v128, &v190);

    *(v125 + 7) = v129;
    *(v125 + 15) = 2080;
    v189 = v122;

    sub_10005DC58(&qword_1005983C8, &qword_1004B2448);
    v130 = String.init<A>(describing:)();
    v132 = sub_100002320(v130, v131, &v190);

    *(v125 + 17) = v132;
    _os_log_impl(&_mh_execute_header, v123, v124, "[Datapath Performance] ID: %hhu: %s, peerStats: %s", v125, 0x19u);
    swift_arrayDestroy();
    v74 = v172;

    if (v122)
    {
LABEL_45:
      v133 = sub_10038F8E0(v122, sub_10038FC54);

      sub_10038FCA4(v175, type metadata accessor for SampleEntry);
      sub_10038FCA4(v74, type metadata accessor for SampleEntry);
      v134 = *(v1 + qword_10059BAC0);
      *(v1 + qword_10059BAC0) = v133;

      goto LABEL_48;
    }
  }

  else
  {

    if (v122)
    {
      goto LABEL_45;
    }
  }

  sub_10038FCA4(v175, type metadata accessor for SampleEntry);
  sub_10038FCA4(v74, type metadata accessor for SampleEntry);
LABEL_48:

  v135 = Logger.logObject.getter();
  v136 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v135, v136))
  {
    v137 = swift_slowAlloc();
    v138 = swift_slowAlloc();
    v189 = swift_slowAlloc();
    *v137 = 16778754;
    *(v137 + 4) = *(v1 + 112);

    *(v137 + 5) = 2080;
    v139 = *(v72 + 80);
    v140 = *(v72 + 88);
    *&v190 = sub_10038FA60();
    *(&v190 + 1) = v141;
    sub_10005DC58(&unk_10059AB80, &qword_10049ED90);
    v142 = String.init<A>(describing:)();
    v144 = sub_100002320(v142, v143, &v189);

    *(v137 + 7) = v144;
    *(v137 + 15) = 2112;
    v145 = sub_10038CD9C();
    *(v137 + 17) = v145;
    *v138 = v145;
    *(v137 + 25) = 2112;
    v146 = sub_10038CE00();
    *(v137 + 27) = v146;
    v138[1] = v146;
    *(v137 + 35) = 2112;
    v147 = sub_10038CC1C();
    *(v137 + 37) = v147;
    v138[2] = v147;
    *(v137 + 45) = 2080;
    *&v190 = sub_10038DB5C();
    sub_10005DC58(&qword_1005983C0, &qword_1004B2440);
    v148 = String.init<A>(describing:)();
    v150 = sub_100002320(v148, v149, &v189);

    *(v137 + 47) = v150;
    _os_log_impl(&_mh_execute_header, v135, v136, "[Datapath Performance] ID: %hhu, localTimestamp: %s, Throughput Ceiling: %@, Throughput Capacity: %@, Signal Strength: %@, Tx Latency: %s", v137, 0x37u);
    sub_10005DC58(&qword_10058B780, &qword_100480AC0);
    swift_arrayDestroy();

    swift_arrayDestroy();
  }

  else
  {
  }

  v151 = v171;
  Date.init()();
  v152 = *(v72 + 80);
  v153 = *(v72 + 88);
  v154 = sub_10038FA60();
  v156 = v155;
  v157 = sub_10038CD9C();
  v158 = sub_10038CE00();
  v159 = sub_10038DB5C();
  v160 = sub_10038CC1C();
  v161 = sub_10038E770();
  v162.super.isa = Date._bridgeToObjectiveC()().super.isa;
  if (v156 >> 60 != 15)
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_100017554(v154, v156);
    if (v159)
    {
      goto LABEL_53;
    }

LABEL_55:
    v164.super.isa = 0;
    goto LABEL_56;
  }

  isa = 0;
  if (!v159)
  {
    goto LABEL_55;
  }

LABEL_53:
  sub_10036CDE8();
  sub_10038FC5C(&qword_10059B290, sub_10036CDE8);
  v164.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

LABEL_56:
  v165 = [objc_allocWithZone(WiFiAwareDatapathPerformanceReport) initWithTimestamp:v162.super.isa localTimestamp:isa throughputCeilingMbps:v157 throughputCapacityMbps:v158 txLatency:v164.super.isa signalStrength:v160 durationActive:v161];

  (*(v174 + 8))(v151, v184);
  return v165;
}