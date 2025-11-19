uint64_t sub_100F04354()
{
  v1 = v0[7];
  v2 = v0[6];
  v3 = (*(v0[8] + 48))(v2, 1, v1);
  if (v3 == 1)
  {
    v4 = v0[13];
    sub_10000B3A8(v2, &qword_1016A9A30, &unk_1013BD120);
    type metadata accessor for SPOwnerSessionError(0);
    v0[3] = 2;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100F04BD0(&qword_1016961E0, 255, type metadata accessor for SPOwnerSessionError);
    _BridgedStoredNSError.init(_:userInfo:)();

    v5 = v0[2];
  }

  else
  {
    v6 = v0[13];
    v7 = v0[9];
    sub_100F04B64(v2, v7);
    v8 = v7 + *(v1 + 52);
    v5 = [objc_allocWithZone(SPPeripheralConnectionMaterial) init];
    v9 = (v8 + *(type metadata accessor for PeripheralConnectionMaterial(0) + 20));
    v10 = *v9;
    v11 = v9[1];
    isa = Data._bridgeToObjectiveC()().super.isa;
    [v5 setIrkData:isa];

    v13 = MACAddress.data.getter();
    v15 = v14;
    v16 = Data._bridgeToObjectiveC()().super.isa;
    sub_100016590(v13, v15);
    [v5 setBtAddressData:v16];

    v17 = MACAddress.bluetoothAddressWithType.getter();
    v19 = v18;
    v20 = Data._bridgeToObjectiveC()().super.isa;
    sub_100016590(v17, v19);
    [v5 setBtAddressWithTypeData:v20];

    sub_100A54698(v7);
  }

  v21 = v3 == 1;
  v22 = v0[9];
  v23 = v0[6];

  v24 = v0[1];

  return v24(v5, v21);
}

uint64_t sub_100F045B0()
{
  v1 = v0[13];

  v2 = v0[16];
  v3 = v0[9];
  v4 = v0[6];

  v5 = v0[1];

  return v5(v2, 1);
}

uint64_t sub_100F04634()
{
  v1 = v0[11];

  v2 = v0[14];
  v3 = v0[9];
  v4 = v0[6];

  v5 = v0[1];

  return v5(v2, 1);
}

uint64_t sub_100F046B8()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 128);

  v3 = *(v0 + 144);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100F0472C(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.initialLaunchProcessing()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for LocalFindableConnectionMaterialService();
  *v5 = v2;
  v5[1] = sub_100014744;

  return ActorServiceProtocol.initialLaunchProcessing()(v6, a2);
}

uint64_t sub_100F047D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to ActorServiceProtocol.migrate(from:to:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for LocalFindableConnectionMaterialService();
  *v9 = v4;
  v9[1] = sub_100014744;

  return ActorServiceProtocol.migrate(from:to:)(a1, a2, v10, a4);
}

uint64_t sub_100F04898(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.firstLaunchSinceReboot()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for LocalFindableConnectionMaterialService();
  *v5 = v2;
  v5[1] = sub_100014650;

  return ActorServiceProtocol.firstLaunchSinceReboot()(v6, a2);
}

uint64_t sub_100F04960()
{
  v1 = *(v0 + 16);
  sub_100F02FB0();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100F049C4(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.run()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for LocalFindableConnectionMaterialService();
  *v5 = v2;
  v5[1] = sub_100014650;

  return ActorServiceProtocol.run()(v6, a2);
}

uint64_t sub_100F04A6C()
{
  v1 = *v0;
  type metadata accessor for LocalFindableConnectionMaterialService();
  sub_100F04BD0(&unk_1016B1020, v2, type metadata accessor for LocalFindableConnectionMaterialService);
  return ActorServiceProtocol.description.getter();
}

uint64_t sub_100F04B64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocalFindableAccessoryRecord();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100F04BD0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_100F04C64(void *a1)
{
  if (qword_101694FB8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177C2C0);
  v3 = a1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v3;
    *v7 = v3;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v4, v5, "shouldAccept: %@", v6, 0xCu);
    sub_10000B3A8(v7, &qword_10169BB30, &unk_10138B3C0);
  }

  sub_100F04E90();
  v9 = NSXPCConnection.hasEntitlement<A>(_:)();
  if ((v9 & 1) == 0)
  {
    v10 = v3;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      *(v13 + 4) = v10;
      *v14 = v10;
      v15 = v10;
      _os_log_impl(&_mh_execute_header, v11, v12, "Missing entitlement: %@", v13, 0xCu);
      sub_10000B3A8(v14, &qword_10169BB30, &unk_10138B3C0);
    }
  }

  return v9 & 1;
}

unint64_t sub_100F04E90()
{
  result = qword_1016C05A8;
  if (!qword_1016C05A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C05A8);
  }

  return result;
}

unint64_t sub_100F04EF8()
{
  result = qword_1016C05B0;
  if (!qword_1016C05B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C05B0);
  }

  return result;
}

unint64_t sub_100F04F50()
{
  result = qword_1016C05B8;
  if (!qword_1016C05B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C05B8);
  }

  return result;
}

uint64_t sub_100F04FA8(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18 = a5;
  v9 = sub_1000BC4D4(&qword_1016C07C8, &qword_1013F28A0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v17 - v12;
  v14 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100F087E4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v20) = a2;
  v21 = a3;
  v22 = a4;
  v23 = 0;
  sub_100EB2098();
  v15 = v19;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v15)
  {
    v20 = v18;
    v23 = 1;
    sub_1000BC4D4(&qword_1016C07D8, &qword_1013F28A8);
    sub_100F08838();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_100F05160(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016C0850, &qword_1013F28E0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100F09064();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v16) = 0;
  type metadata accessor for UUID();
  sub_100F088EC(&qword_101698330, &type metadata accessor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    Item = type metadata accessor for KeyDropFetchRequest.SharedFetchItem(0);
    LOBYTE(v16) = *(v3 + Item[5]);
    v18 = 1;
    sub_1001E8200();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v12 = (v3 + Item[6]);
    v13 = v12[1];
    v16 = *v12;
    v17 = v13;
    v18 = 2;
    sub_10002E98C(v16, v13);
    sub_1000E3190();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100006654(v16, v17);
    v16 = *(v3 + Item[7]);
    v18 = 3;
    sub_1000BC4D4(&qword_101699EB8, &qword_101398AA0);
    sub_1008DA424(&qword_10169C9F8, sub_1000E3190);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v16 = *(v3 + Item[8]);
    v18 = 4;
    sub_1000BC4D4(&qword_1016C0838, &qword_1013F28D8);
    sub_100F090B8(&qword_1016C0858, sub_100F091EC);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100F05498@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = type metadata accessor for UUID();
  v22 = *(v4 - 8);
  v5 = *(v22 + 64);
  __chkstk_darwin(v4);
  v23 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1000BC4D4(&qword_1016C0828, &unk_1013F28C8);
  v21 = *(v25 - 8);
  v7 = *(v21 + 64);
  __chkstk_darwin(v25);
  v9 = &v20 - v8;
  Item = type metadata accessor for KeyDropFetchRequest.SharedFetchItem(0);
  v11 = *(*(Item - 1) + 64);
  __chkstk_darwin(Item);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100F09064();
  v24 = v9;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v15 = v13;
  v17 = v21;
  v16 = v22;
  LOBYTE(v26) = 0;
  sub_100F088EC(&qword_101698300, &type metadata accessor for UUID);
  v18 = v23;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v16 + 32))(v15, v18, v4);
  v27 = 1;
  sub_10064666C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *(v15 + Item[5]) = v26;
  v27 = 2;
  sub_1000E307C();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  *(v15 + Item[6]) = v26;
  sub_1000BC4D4(&qword_101699EB8, &qword_101398AA0);
  v27 = 3;
  sub_1008DA424(&qword_10169F5A0, sub_1000E307C);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *(v15 + Item[7]) = v26;
  sub_1000BC4D4(&qword_1016C0838, &qword_1013F28D8);
  v27 = 4;
  sub_100F090B8(&qword_1016C0840, sub_100F09130);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v17 + 8))(v24, v25);
  *(v15 + Item[8]) = v26;
  sub_100F09184(v15, v20, type metadata accessor for KeyDropFetchRequest.SharedFetchItem);
  sub_100007BAC(a1);
  return sub_100F0829C(v15, type metadata accessor for KeyDropFetchRequest.SharedFetchItem);
}

uint64_t sub_100F059C0(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016C0818, &qword_1013F28C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v12 - v8;
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100F08F30();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12[0] = *v3;
  LOBYTE(v14) = 0;
  sub_100EB309C();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v12[0] = *(v3 + 8);
    LOBYTE(v14) = 1;
    sub_100F08FD8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v12[0] = *(v3 + 16);
    LOBYTE(v14) = 2;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v14 = *(v3 + 24);
    v13 = 3;
    sub_100F0902C(v3, v12);
    sub_1000E3190();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v14, *(&v14 + 1));
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100F05BE8()
{
  if (*v0)
  {
    result = 0x6546646572616873;
  }

  else
  {
    result = 0x6F43746E65696C63;
  }

  *v0;
  return result;
}

uint64_t sub_100F05C38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6F43746E65696C63 && a2 == 0xED0000747865746ELL;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6546646572616873 && a2 == 0xEB00000000686374)
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

uint64_t sub_100F05D20(uint64_t a1)
{
  v2 = sub_100F087E4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100F05D5C(uint64_t a1)
{
  v2 = sub_100F087E4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100F05DBC()
{
  v1 = *v0;
  v2 = 0x64496572616873;
  v3 = 0x6F547265626D656DLL;
  v4 = 0x76654464656E776FLL;
  if (v1 != 3)
  {
    v4 = 0x6E75426572616873;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1701869940;
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

uint64_t sub_100F05E6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100F08988(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100F05E94(uint64_t a1)
{
  v2 = sub_100F09064();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100F05ED0(uint64_t a1)
{
  v2 = sub_100F09064();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_100F05F3C()
{
  v1 = 0x6E49656C646E7562;
  v2 = 0x7865646E49646E65;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000013;
  }

  if (*v0)
  {
    v1 = 0x646E497472617473;
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

uint64_t sub_100F05FC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100F08B48(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100F05FF0(uint64_t a1)
{
  v2 = sub_100F08F30();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100F0602C(uint64_t a1)
{
  v2 = sub_100F08F30();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100F06068@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100F08CC0(a1, v6);
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

uint64_t sub_100F060B0(void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 4);
  return sub_100F059C0(a1);
}

uint64_t sub_100F060EC(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016C07F0, &qword_1013F28B0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100F08934();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15[15] = 0;
  type metadata accessor for UUID();
  sub_100F088EC(&qword_101698330, &type metadata accessor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = (v3 + *(type metadata accessor for KeyDropImportedLocationFetchRequest.KeyDropImportedLocationFetchContent(0) + 20));
    v12 = *v11;
    v13 = v11[1];
    v15[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100F062A8()
{
  if (*v0)
  {
    result = 0x6B6F546863746566;
  }

  else
  {
    result = 0x64496572616873;
  }

  *v0;
  return result;
}

uint64_t sub_100F062E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x64496572616873 && a2 == 0xE700000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6B6F546863746566 && a2 == 0xEA00000000006E65)
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

uint64_t sub_100F063CC(uint64_t a1)
{
  v2 = sub_100F08934();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100F06408(uint64_t a1)
{
  v2 = sub_100F08934();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100F0645C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 136) = a4;
  *(v5 + 144) = a5;
  *(v5 + 448) = a2;
  *(v5 + 120) = a1;
  *(v5 + 128) = a3;
  v6 = type metadata accessor for HashAlgorithm();
  *(v5 + 152) = v6;
  v7 = *(v6 - 8);
  *(v5 + 160) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 168) = swift_task_alloc();
  v9 = type metadata accessor for P256.Signing.PublicKey();
  *(v5 + 176) = v9;
  v10 = *(v9 - 8);
  *(v5 + 184) = v10;
  v11 = *(v10 + 64) + 15;
  *(v5 + 192) = swift_task_alloc();
  v12 = type metadata accessor for P256.Signing.PrivateKey();
  *(v5 + 200) = v12;
  v13 = *(v12 - 8);
  *(v5 + 208) = v13;
  v14 = *(v13 + 64) + 15;
  *(v5 + 216) = swift_task_alloc();
  v15 = type metadata accessor for UUID();
  *(v5 + 224) = v15;
  v16 = *(v15 - 8);
  *(v5 + 232) = v16;
  v17 = *(v16 + 64) + 15;
  *(v5 + 240) = swift_task_alloc();
  Item = type metadata accessor for KeyDropFetchRequest.SharedFetchItem(0);
  *(v5 + 248) = Item;
  v19 = *(Item - 8);
  *(v5 + 256) = v19;
  v20 = *(v19 + 64) + 15;
  *(v5 + 264) = swift_task_alloc();
  v21 = type metadata accessor for JSONEncoder.DateEncodingStrategy();
  *(v5 + 272) = v21;
  v22 = *(v21 - 8);
  *(v5 + 280) = v22;
  v23 = *(v22 + 64) + 15;
  *(v5 + 288) = swift_task_alloc();
  v24 = type metadata accessor for KeyDropFetchItem(0);
  *(v5 + 296) = v24;
  v25 = *(v24 - 8);
  *(v5 + 304) = v25;
  v26 = *(v25 + 64) + 15;
  *(v5 + 312) = swift_task_alloc();

  return _swift_task_switch(sub_100F0674C, 0, 0);
}

uint64_t sub_100F0674C()
{
  result = *(v0 + 120);
  v64 = *(result + 16);
  if (v64)
  {
    v2 = 0;
    v3 = *(v0 + 296);
    v58 = *(v0 + 248);
    v59 = *(v0 + 256);
    v4 = *(v0 + 232);
    v63 = *(v0 + 304);
    v62 = result + ((*(v63 + 80) + 32) & ~*(v63 + 80));
    v61 = (v4 + 16);
    v56 = (*(v0 + 184) + 8);
    v57 = (*(v0 + 208) + 8);
    v55 = (v4 + 32);
    v5 = _swiftEmptyArrayStorage;
    v66 = v3;
    v60 = *(v0 + 120);
    while (v2 < *(result + 16))
    {
      v6 = *(v0 + 312);
      v68 = v2;
      sub_100F09184(v62 + *(v63 + 72) * v2, v6, type metadata accessor for KeyDropFetchItem);
      v7 = *(v6 + v3[7]);
      v8 = *(v7 + 16);
      if (v8)
      {
        sub_1011247DC(0, v8, 0);
        v9 = (v7 + 64);
        do
        {
          v71 = *(v9 - 2);
          v10 = *v9;
          v69 = *(v9 - 1);
          sub_100017D5C(*(v9 - 1), *v9);
          v12 = _swiftEmptyArrayStorage[2];
          v11 = _swiftEmptyArrayStorage[3];
          if (v12 >= v11 >> 1)
          {
            sub_1011247DC((v11 > 1), v12 + 1, 1);
          }

          _swiftEmptyArrayStorage[2] = v12 + 1;
          v13 = &_swiftEmptyArrayStorage[5 * v12];
          *(v13 + 2) = v71;
          *(v13 + 3) = v69;
          v13[8] = v10;
          v9 += 5;
          --v8;
        }

        while (v8);
        v3 = v66;
      }

      v14 = *(v0 + 312);
      v15 = *(v0 + 216);
      (*v61)(*(v0 + 240), v14, *(v0 + 224));
      v16 = *(v14 + v3[5]);
      v17 = v14 + v3[8];
      v18 = (v17 + *(type metadata accessor for KeyDropJoinToken(0) + 20));
      v19 = *v18;
      v20 = v18[1];
      *(v0 + 88) = *v18;
      *(v0 + 96) = v20;
      sub_100017D5C(v19, v20);
      P256.Signing.PrivateKey.init<A>(rawRepresentation:)();
      v21 = *(v0 + 312);
      v72 = v16;
      v22 = *(v0 + 216);
      v24 = *(v0 + 192);
      v23 = *(v0 + 200);
      v25 = *(v0 + 176);
      P256.Signing.PrivateKey.publicKey.getter();
      (*v57)(v22, v23);
      v70 = P256.Signing.PublicKey.compressedRepresentation.getter();
      v67 = v26;
      (*v56)(v24, v25);
      v27 = *(v21 + v3[6]);
      v28 = *(v27 + 16);
      if (v28)
      {
        v65 = v5;
        sub_1011244D8(0, v28, 0);
        v29 = (v27 + 40);
        do
        {
          v30 = *(v29 - 1);
          v31 = *v29;
          sub_100017D5C(v30, *v29);
          v33 = _swiftEmptyArrayStorage[2];
          v32 = _swiftEmptyArrayStorage[3];
          if (v33 >= v32 >> 1)
          {
            sub_1011244D8((v32 > 1), v33 + 1, 1);
          }

          v29 += 2;
          _swiftEmptyArrayStorage[2] = v33 + 1;
          v34 = &_swiftEmptyArrayStorage[2 * v33];
          v34[4] = v30;
          v34[5] = v31;
          --v28;
        }

        while (v28);
        v5 = v65;
        v3 = v66;
      }

      v35 = *(v0 + 264);
      (*v55)(v35, *(v0 + 240), *(v0 + 224));
      *(v35 + v58[5]) = v72;
      v36 = (v35 + v58[6]);
      *v36 = v70;
      v36[1] = v67;
      *(v35 + v58[7]) = _swiftEmptyArrayStorage;
      *(v35 + v58[8]) = _swiftEmptyArrayStorage;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_100A5C87C(0, v5[2] + 1, 1, v5);
      }

      v38 = v5[2];
      v37 = v5[3];
      if (v38 >= v37 >> 1)
      {
        v5 = sub_100A5C87C(v37 > 1, v38 + 1, 1, v5);
      }

      v2 = v68 + 1;
      v39 = *(v0 + 264);
      sub_100F0829C(*(v0 + 312), type metadata accessor for KeyDropFetchItem);
      v5[2] = v38 + 1;
      sub_100F07628(v39, v5 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v38);
      result = v60;
      if (v68 + 1 == v64)
      {
        v40 = *(v0 + 120);

        goto LABEL_23;
      }
    }

    __break(1u);
  }

  else
  {

    v5 = _swiftEmptyArrayStorage;
LABEL_23:
    *(v0 + 320) = v5;
    v41 = *(v0 + 280);
    v42 = *(v0 + 288);
    v43 = *(v0 + 272);
    v45 = *(v0 + 128);
    v44 = *(v0 + 136);
    v46 = *(v0 + 448);
    v47 = type metadata accessor for JSONEncoder();
    v48 = *(v47 + 48);
    v49 = *(v47 + 52);
    swift_allocObject();
    *(v0 + 328) = JSONEncoder.init()();
    *v42 = sub_100281AE0;
    v42[1] = 0;
    (*(v41 + 104))(v42, enum case for JSONEncoder.DateEncodingStrategy.custom(_:), v43);
    dispatch thunk of JSONEncoder.dateEncodingStrategy.setter();
    *(v0 + 56) = v46;
    *(v0 + 64) = v45;
    *(v0 + 72) = v44;
    *(v0 + 80) = v5;
    sub_100F0768C();

    v50 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    *(v0 + 336) = 0;
    *(v0 + 344) = v50;
    *(v0 + 352) = v51;
    v52 = *(v0 + 136);

    *(v0 + 360) = sub_100646BE0(v53);
    v54 = swift_task_alloc();
    *(v0 + 368) = v54;
    *v54 = v0;
    v54[1] = sub_100F06E2C;

    return sub_100E9FECC();
  }

  return result;
}

uint64_t sub_100F06E2C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 368);
  v6 = *v2;
  *(v3 + 376) = a1;
  *(v3 + 384) = a2;

  return _swift_task_switch(sub_100F06F2C, 0, 0);
}

uint64_t sub_100F06F2C()
{
  v2 = v0[47];
  v1 = v0[48];
  v3 = v0[43];
  v4 = v0[44];
  v5 = v0[42];
  v6 = v0[20];
  v7 = v0[21];
  v0[13] = v2;
  v18 = v6;
  v19 = v0[19];
  v20 = v7;
  v0[14] = v1;
  v0[5] = &type metadata for Data;
  v0[6] = &protocol witness table for Data;
  v0[2] = v3;
  v0[3] = v4;
  v8 = sub_1000035D0(v0 + 2, &type metadata for Data);
  v9 = *v8;
  v10 = v8[1];
  sub_100017D5C(v2, v1);
  sub_100017D5C(v3, v4);
  sub_100017DB0(v9, v10);
  sub_100016590(v2, v1);
  sub_100007BAC(v0 + 2);
  v11 = v0[14];
  v0[49] = v0[13];
  v0[50] = v11;
  (*(v18 + 104))(v20, enum case for HashAlgorithm.sha256(_:), v19);
  v12 = Data.hash(algorithm:)();
  v14 = v13;
  v0[51] = v12;
  v0[52] = v13;
  (*(v18 + 8))(v20, v19);
  v15 = swift_task_alloc();
  v0[53] = v15;
  *v15 = v0;
  v15[1] = sub_100F070FC;
  v16 = v0[18];

  return sub_100EA87F4(v12, v14, v16);
}

uint64_t sub_100F070FC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 424);
  v6 = *v2;
  v4[54] = v1;

  v7 = v4[52];
  v8 = v4[51];
  if (v1)
  {
    v9 = v4[40];

    sub_100016590(v8, v7);
    v10 = sub_100F073BC;
  }

  else
  {
    v4[55] = a1;
    sub_100016590(v8, v7);
    v10 = sub_100F07270;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_100F07270()
{
  v23 = v0;
  v2 = v0[54];
  v1 = v0[55];
  v4 = v0[49];
  v3 = v0[50];
  v5 = v0[45];
  v7 = v0[40];
  v6 = v0[41];
  v8 = v0[18];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = v5;
  sub_10028709C(v1, sub_100EB00A4, 0, isUniquelyReferenced_nonNull_native, &v22);

  sub_100016590(v4, v3);

  v10 = v22;
  v11 = v0[39];
  v12 = v0[36];
  v13 = v0[33];
  v14 = v0[30];
  v15 = v0[27];
  v16 = v0[24];
  v17 = v0[21];

  v18 = v0[1];
  v19 = v0[43];
  v20 = v0[44];

  return v18(v10, v19, v20);
}

uint64_t sub_100F073BC()
{
  sub_100016590(v0[49], v0[50]);
  if (qword_1016954C0 != -1)
  {
    swift_once();
  }

  v1 = v0[54];
  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177CDD0);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[54];
  v7 = v0[41];
  v8 = v0[18];
  if (v5)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138543362;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to generate keydrop fetch attestation header: %{public}@.", v9, 0xCu);
    sub_100288C6C(v10);
  }

  else
  {
    v12 = v0[41];
  }

  v13 = v0[45];
  v14 = v0[39];
  v15 = v0[36];
  v16 = v0[33];
  v17 = v0[30];
  v18 = v0[27];
  v19 = v0[24];
  v20 = v0[21];

  v21 = v0[1];
  v22 = v0[43];
  v23 = v0[44];

  return v21(v13, v22, v23);
}

uint64_t sub_100F07628(uint64_t a1, uint64_t a2)
{
  Item = type metadata accessor for KeyDropFetchRequest.SharedFetchItem(0);
  (*(*(Item - 8) + 32))(a2, a1, Item);
  return a2;
}

unint64_t sub_100F0768C()
{
  result = qword_1016C05C0;
  if (!qword_1016C05C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C05C0);
  }

  return result;
}

uint64_t sub_100F076E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a3;
  v4[12] = a4;
  v4[9] = a1;
  v4[10] = a2;
  v5 = type metadata accessor for HashAlgorithm();
  v4[13] = v5;
  v6 = *(v5 - 8);
  v4[14] = v6;
  v7 = *(v6 + 64) + 15;
  v4[15] = swift_task_alloc();
  Content = type metadata accessor for KeyDropImportedLocationFetchRequest.KeyDropImportedLocationFetchContent(0);
  v4[16] = Content;
  v9 = *(*(Content - 8) + 64) + 15;
  v4[17] = swift_task_alloc();
  v10 = type metadata accessor for JSONEncoder.DateEncodingStrategy();
  v4[18] = v10;
  v11 = *(v10 - 8);
  v4[19] = v11;
  v12 = *(v11 + 64) + 15;
  v4[20] = swift_task_alloc();

  return _swift_task_switch(sub_100F07830, 0, 0);
}

uint64_t sub_100F07830()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[17];
  v4 = v0[18];
  v5 = v0[16];
  v7 = v0[10];
  v6 = v0[11];
  v8 = v0[9];
  v9 = type metadata accessor for JSONEncoder();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  v0[21] = JSONEncoder.init()();
  *v1 = sub_100281AE0;
  v1[1] = 0;
  (*(v2 + 104))(v1, enum case for JSONEncoder.DateEncodingStrategy.custom(_:), v4);
  dispatch thunk of JSONEncoder.dateEncodingStrategy.setter();
  v12 = type metadata accessor for UUID();
  v0[22] = v12;
  v13 = *(v12 - 8);
  v0[23] = v13;
  (*(v13 + 16))(v3, v8, v12);
  v14 = (v3 + *(v5 + 20));
  *v14 = v7;
  v14[1] = v6;
  sub_100F088EC(&qword_1016C05C8, type metadata accessor for KeyDropImportedLocationFetchRequest.KeyDropImportedLocationFetchContent);
  v15 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v0[24] = 0;
  v0[25] = v15;
  v0[26] = v16;
  v0[27] = sub_100646BE0(v15);
  v17 = swift_task_alloc();
  v0[28] = v17;
  *v17 = v0;
  v17[1] = sub_100F07AE0;

  return sub_100EA06DC();
}

uint64_t sub_100F07AE0(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 224);
  v6 = *v2;
  *(v3 + 232) = a1;
  *(v3 + 240) = a2;

  return _swift_task_switch(sub_100F07BE0, 0, 0);
}

uint64_t sub_100F07BE0()
{
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[25];
  v4 = v0[26];
  v5 = v0[24];
  v6 = v0[14];
  v7 = v0[15];
  v0[7] = v2;
  v18 = v6;
  v19 = v0[13];
  v20 = v7;
  v0[8] = v1;
  v0[5] = &type metadata for Data;
  v0[6] = &protocol witness table for Data;
  v0[2] = v3;
  v0[3] = v4;
  v8 = sub_1000035D0(v0 + 2, &type metadata for Data);
  v9 = *v8;
  v10 = v8[1];
  sub_100017D5C(v2, v1);
  sub_100017D5C(v3, v4);
  sub_100017DB0(v9, v10);
  sub_100016590(v2, v1);
  sub_100007BAC(v0 + 2);
  v11 = v0[8];
  v0[31] = v0[7];
  v0[32] = v11;
  (*(v18 + 104))(v20, enum case for HashAlgorithm.sha256(_:), v19);
  v12 = Data.hash(algorithm:)();
  v14 = v13;
  v0[33] = v12;
  v0[34] = v13;
  (*(v18 + 8))(v20, v19);
  v15 = swift_task_alloc();
  v0[35] = v15;
  *v15 = v0;
  v15[1] = sub_100F07DB0;
  v16 = v0[12];

  return sub_100EA87F4(v12, v14, v16);
}

uint64_t sub_100F07DB0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 280);
  v6 = *v2;
  *(*v2 + 288) = v1;

  if (v1)
  {
    v7 = sub_100F08038;
  }

  else
  {
    v8 = v4[33];
    v9 = v4[34];
    v4[37] = a1;
    sub_100016590(v8, v9);
    v7 = sub_100F07EE0;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100F07EE0()
{
  v22 = v0;
  v2 = v0[36];
  v1 = v0[37];
  v4 = v0[31];
  v3 = v0[32];
  v5 = v0[27];
  v6 = v0[23];
  v7 = v0[21];
  v19 = v0[22];
  v20 = v0[17];
  v8 = v0[12];
  v9 = v0[9];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = v5;
  sub_10028709C(v1, sub_100EB00A4, 0, isUniquelyReferenced_nonNull_native, &v21);

  sub_100016590(v4, v3);

  (*(v6 + 8))(v9, v19);
  sub_100F0829C(v20, type metadata accessor for KeyDropImportedLocationFetchRequest.KeyDropImportedLocationFetchContent);
  v11 = v21;
  v12 = v0[20];
  v13 = v0[17];
  v14 = v0[15];

  v15 = v0[1];
  v16 = v0[25];
  v17 = v0[26];

  return v15(v11, v16, v17);
}

uint64_t sub_100F08038()
{
  v1 = v0[31];
  v2 = v0[32];
  sub_100016590(v0[33], v0[34]);
  sub_100016590(v1, v2);
  if (qword_1016954C0 != -1)
  {
    swift_once();
  }

  v3 = v0[36];
  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177CDD0);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[36];
  v10 = v0[22];
  v9 = v0[23];
  v11 = v0[21];
  v12 = v0[17];
  v13 = v0[12];
  v14 = v0[9];
  if (v7)
  {
    v26 = v0[22];
    v15 = swift_slowAlloc();
    v27 = v12;
    v16 = swift_slowAlloc();
    *v15 = 138543362;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 4) = v17;
    *v16 = v17;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to generate keydrop fetch attestation header: %{public}@.", v15, 0xCu);
    sub_100288C6C(v16);
    v12 = v27;

    v10 = v26;
  }

  (*(v9 + 8))(v14, v10);
  sub_100F0829C(v12, type metadata accessor for KeyDropImportedLocationFetchRequest.KeyDropImportedLocationFetchContent);
  v18 = v0[27];
  v19 = v0[20];
  v20 = v0[17];
  v21 = v0[15];

  v22 = v0[1];
  v23 = v0[25];
  v24 = v0[26];

  return v22(v18, v23, v24);
}

uint64_t sub_100F0829C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100F08344(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 40))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 32) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 32) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_100F08398(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 24) = 0;
      *(result + 32) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

void sub_100F08438()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    sub_100F0868C(319, &qword_1016C06C8, &type metadata for HashedAdvertisement, &type metadata accessor for Array);
    if (v1 <= 0x3F)
    {
      sub_100F0868C(319, &unk_1016C06D0, &type metadata for KeyDropDecryptionRange, &type metadata accessor for Array);
      if (v2 <= 0x3F)
      {
        type metadata accessor for KeyDropJoinToken(319);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100F08564()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    sub_100F0868C(319, &qword_10169A330, &type metadata for Data, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_100F0868C(319, &unk_10169F500, &type metadata for Data, &type metadata accessor for Array);
      if (v2 <= 0x3F)
      {
        sub_100F0868C(319, &unk_1016C0778, &type metadata for KeyDropFetchRequest.BundleDecryption, &type metadata accessor for Array);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100F0868C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_100F086EC(uint64_t a1)
{
  result = sub_100F08714();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100F08714()
{
  result = qword_1016C07B8;
  if (!qword_1016C07B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C07B8);
  }

  return result;
}

unint64_t sub_100F08768(uint64_t a1)
{
  result = sub_100F08790();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100F08790()
{
  result = qword_1016C07C0;
  if (!qword_1016C07C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C07C0);
  }

  return result;
}

unint64_t sub_100F087E4()
{
  result = qword_1016C07D0;
  if (!qword_1016C07D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C07D0);
  }

  return result;
}

unint64_t sub_100F08838()
{
  result = qword_1016C07E0;
  if (!qword_1016C07E0)
  {
    sub_1000BC580(&qword_1016C07D8, &qword_1013F28A8);
    sub_100F088EC(&qword_1016C07E8, type metadata accessor for KeyDropFetchRequest.SharedFetchItem);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C07E0);
  }

  return result;
}

uint64_t sub_100F088EC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100F08934()
{
  result = qword_1016C07F8;
  if (!qword_1016C07F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C07F8);
  }

  return result;
}

uint64_t sub_100F08988(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64496572616873 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F547265626D656DLL && a2 == 0xEB000000006E656BLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x76654464656E776FLL && a2 == 0xEE00736449656369 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E75426572616873 && a2 == 0xEC00000073656C64)
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

uint64_t sub_100F08B48(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E49656C646E7562 && a2 == 0xEB00000000786564;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x646E497472617473 && a2 == 0xEA00000000007865 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7865646E49646E65 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001013742F0 == a2)
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

uint64_t sub_100F08CC0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1000BC4D4(&qword_1016C0800, &qword_1013F28B8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100F08F30();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v22 = 0;
  sub_100EB3048();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v11 = v20;
  v22 = 1;
  sub_100F08F84();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v19 = v11;
  v12 = v20;
  v22 = 2;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v13 = v12;
  v14 = v20;
  v22 = 3;
  sub_1000E307C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  v15 = v20;
  v16 = v21;
  result = sub_100007BAC(a1);
  *a2 = v19;
  a2[1] = v13;
  a2[2] = v14;
  a2[3] = v15;
  a2[4] = v16;
  return result;
}

unint64_t sub_100F08F30()
{
  result = qword_1016C0808;
  if (!qword_1016C0808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C0808);
  }

  return result;
}

unint64_t sub_100F08F84()
{
  result = qword_1016C0810;
  if (!qword_1016C0810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C0810);
  }

  return result;
}

unint64_t sub_100F08FD8()
{
  result = qword_1016C0820;
  if (!qword_1016C0820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C0820);
  }

  return result;
}

unint64_t sub_100F09064()
{
  result = qword_1016C0830;
  if (!qword_1016C0830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C0830);
  }

  return result;
}

uint64_t sub_100F090B8(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1000BC580(&qword_1016C0838, &qword_1013F28D8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100F09130()
{
  result = qword_1016C0848;
  if (!qword_1016C0848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C0848);
  }

  return result;
}

uint64_t sub_100F09184(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_100F091EC()
{
  result = qword_1016C0860;
  if (!qword_1016C0860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C0860);
  }

  return result;
}

unint64_t sub_100F09284()
{
  result = qword_1016C0868;
  if (!qword_1016C0868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C0868);
  }

  return result;
}

unint64_t sub_100F092DC()
{
  result = qword_1016C0870;
  if (!qword_1016C0870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C0870);
  }

  return result;
}

unint64_t sub_100F09334()
{
  result = qword_1016C0878;
  if (!qword_1016C0878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C0878);
  }

  return result;
}

unint64_t sub_100F0938C()
{
  result = qword_1016C0880;
  if (!qword_1016C0880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C0880);
  }

  return result;
}

unint64_t sub_100F093E4()
{
  result = qword_1016C0888;
  if (!qword_1016C0888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C0888);
  }

  return result;
}

unint64_t sub_100F0943C()
{
  result = qword_1016C0890;
  if (!qword_1016C0890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C0890);
  }

  return result;
}

unint64_t sub_100F09494()
{
  result = qword_1016C0898;
  if (!qword_1016C0898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C0898);
  }

  return result;
}

unint64_t sub_100F094EC()
{
  result = qword_1016C08A0;
  if (!qword_1016C08A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C08A0);
  }

  return result;
}

unint64_t sub_100F09544()
{
  result = qword_1016C08A8;
  if (!qword_1016C08A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C08A8);
  }

  return result;
}

unint64_t sub_100F0959C()
{
  result = qword_1016C08B0;
  if (!qword_1016C08B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C08B0);
  }

  return result;
}

unint64_t sub_100F095F4()
{
  result = qword_1016C08B8;
  if (!qword_1016C08B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C08B8);
  }

  return result;
}

unint64_t sub_100F0964C()
{
  result = qword_1016C08C0;
  if (!qword_1016C08C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C08C0);
  }

  return result;
}

uint64_t sub_100F096C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  return _swift_task_switch(sub_100F096EC, v3, 0);
}

uint64_t sub_100F096EC()
{
  v25 = v0;
  if (qword_1016954C0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177CDD0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Fetch request", v4, 2u);
  }

  v6 = v0[8];
  v5 = v0[9];
  v7 = v0[7];

  sub_100017D5C(v6, v5);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();

  sub_100016590(v6, v5);
  if (os_log_type_enabled(v8, v9))
  {
    v11 = v0[8];
    v10 = v0[9];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v24 = v13;
    *v12 = 136315138;
    v14 = sub_100646BE8(v11, v10);
    if (v15)
    {
      v16 = v15;
    }

    else
    {
      v14 = 7104878;
      v16 = 0xE300000000000000;
    }

    v17 = sub_1000136BC(v14, v16, &v24);

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v8, v9, "KeyDropFetchRequest: %s", v12, 0xCu);
    sub_100007BAC(v13);
  }

  v18 = v0[8];
  v19 = v0[9];
  v20 = v0[7];
  v0[5] = &type metadata for KeyDropFetchRequest;
  v0[6] = sub_100F0A038();
  v0[2] = v20;
  v0[3] = v18;
  v0[4] = v19;

  sub_100017D5C(v18, v19);
  v21 = swift_task_alloc();
  v0[11] = v21;
  *v21 = v0;
  v21[1] = sub_100F099B4;
  v22 = v0[10];

  return sub_100644518((v0 + 2), 4);
}

uint64_t sub_100F099B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v5;
  v11 = *(*v5 + 88);
  v12 = *v5;
  *(*v5 + 96) = v4;

  if (v4)
  {
    v13 = *(v10 + 80);

    return _swift_task_switch(sub_100F09B3C, v13, 0);
  }

  else
  {
    sub_100007BAC((v10 + 16));
    v14 = *(v12 + 8);

    return v14(a1, a2, a3, a4);
  }
}

uint64_t sub_100F09B3C()
{
  sub_100007BAC(v0 + 2);
  v1 = v0[1];
  v2 = v0[12];

  return v1();
}

uint64_t sub_100F09BA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[10] = a4;
  v5[11] = v4;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  return _swift_task_switch(sub_100F09BC8, v4, 0);
}

uint64_t sub_100F09BC8()
{
  v26 = v0;
  if (qword_1016954C0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177CDD0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Location Fetch request for imported beacon", v4, 2u);
  }

  v6 = v0[9];
  v5 = v0[10];
  v7 = v0[8];

  sub_100017D5C(v6, v5);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();

  sub_100016590(v6, v5);
  if (os_log_type_enabled(v8, v9))
  {
    v11 = v0[9];
    v10 = v0[10];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v25 = v13;
    *v12 = 136315138;
    v14 = sub_100646BE8(v11, v10);
    if (v15)
    {
      v16 = v15;
    }

    else
    {
      v14 = 7104878;
      v16 = 0xE300000000000000;
    }

    v17 = sub_1000136BC(v14, v16, &v25);

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v8, v9, "KeyDropImportedLocationFetchRequest: %s", v12, 0xCu);
    sub_100007BAC(v13);
  }

  v18 = v0[9];
  v19 = v0[10];
  v20 = v0[8];
  v0[5] = &type metadata for KeyDropImportedLocationFetchRequest;
  v0[6] = sub_100F0A08C();
  v0[2] = v20;
  v0[3] = v18;
  v0[4] = v19;

  sub_100017D5C(v18, v19);
  v21 = swift_task_alloc();
  v0[12] = v21;
  *v21 = v0;
  v21[1] = sub_100F09E98;
  v22 = v0[11];
  v23 = v0[7];

  return sub_100645144(v23, (v0 + 2), 10);
}

uint64_t sub_100F09E98()
{
  v2 = *(*v1 + 96);
  v3 = *v1;
  v3[13] = v0;

  if (v0)
  {
    v4 = v3[11];

    return _swift_task_switch(sub_100F09FD4, v4, 0);
  }

  else
  {
    sub_100007BAC(v3 + 2);
    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_100F09FD4()
{
  sub_100007BAC(v0 + 2);
  v1 = v0[1];
  v2 = v0[13];

  return v1();
}

unint64_t sub_100F0A038()
{
  result = qword_1016C08C8;
  if (!qword_1016C08C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C08C8);
  }

  return result;
}

unint64_t sub_100F0A08C()
{
  result = qword_1016C08D0;
  if (!qword_1016C08D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C08D0);
  }

  return result;
}

uint64_t sub_100F0A0E0(uint64_t a1, char a2, id a3)
{
  [a3 fileDescriptor];
  v7 = sp_key_subsequence_create_from_file_descriptor();
  if (v7)
  {
    v8 = v7;
    v9 = OBJC_IVAR____TtC12searchpartyd20BeaconKeySubsequence_beaconIdentifier;
    v10 = type metadata accessor for UUID();
    v11 = *(v10 - 8);
    (*(v11 + 16))(v3 + v9, a1, v10);
    *(v3 + OBJC_IVAR____TtC12searchpartyd20BeaconKeySubsequence_sequence) = a2 & 1;
    *(v3 + OBJC_IVAR____TtC12searchpartyd20BeaconKeySubsequence_subsequenceHandle) = v8;
    *(v3 + OBJC_IVAR____TtC12searchpartyd20BeaconKeySubsequence_firstIndex) = sp_key_subsequence_map_get_first_index();
    LODWORD(v8) = sp_key_subsequence_map_get_last_index();

    (*(v11 + 8))(a1, v10);
    *(v3 + OBJC_IVAR____TtC12searchpartyd20BeaconKeySubsequence_lastIndex) = v8;
  }

  else
  {
    v12 = type metadata accessor for UUID();
    (*(*(v12 - 8) + 8))(a1, v12);

    type metadata accessor for BeaconKeySubsequence();
    v13 = *(*v3 + 48);
    v14 = *(*v3 + 52);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v3;
}

uint64_t sub_100F0A298()
{
  v1 = *(v0 + OBJC_IVAR____TtC12searchpartyd20BeaconKeySubsequence_subsequenceHandle);
  sp_key_subsequence_destroy();
  v2 = OBJC_IVAR____TtC12searchpartyd20BeaconKeySubsequence_beaconIdentifier;
  v3 = type metadata accessor for UUID();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for BeaconKeySubsequence()
{
  result = qword_1016C0908;
  if (!qword_1016C0908)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100F0A398()
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

void sub_100F0A450(unsigned int a1@<W0>, uint64_t a2@<X1>, void **a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v11 = type metadata accessor for CryptoError();
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11);
  __chkstk_darwin(v13);
  if (*(a2 + OBJC_IVAR____TtC12searchpartyd20BeaconKeySubsequence_firstIndex) > a1 || *(a2 + OBJC_IVAR____TtC12searchpartyd20BeaconKeySubsequence_lastIndex) < a1)
  {
    sub_100720740();
    v15 = swift_allocError();
    *v16 = 4;
    swift_willThrow();
LABEL_4:
    *a4 = v15;
    return;
  }

  v98 = v14;
  v100 = a5;
  v101 = a3;
  v17 = *(a2 + OBJC_IVAR____TtC12searchpartyd20BeaconKeySubsequence_subsequenceHandle);
  record_for_index = sp_key_subsequence_get_record_for_index();
  v18 = sp_key_record_copy_intermediate_key();
  if (!v18)
  {
    __break(1u);
    goto LABEL_53;
  }

  v19 = v18;
  v20 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  sub_1004A4714(v20, v22, &aBlock);
  if (v5)
  {
    v15 = v5;
    static os_log_type_t.error.getter();
    if (qword_101694A20 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_101385D80;
    *(v42 + 56) = &type metadata for UInt32;
    *(v42 + 64) = &protocol witness table for UInt32;
    *(v42 + 32) = a1;
    os_log(_:dso:log:_:_:)();

    swift_willThrow();
    goto LABEL_4;
  }

  v24 = aBlock;
  v23 = v105;
  v25 = type metadata accessor for __DataStorage();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  v28 = __DataStorage.init(length:)();
  v29 = v23 >> 62;
  v99 = v24;
  if (v23 >> 62 == 3)
  {
    goto LABEL_18;
  }

  if (v29)
  {
    if (v29 == 1)
    {
      LODWORD(v30) = HIDWORD(v24) - v24;
      if (!__OFSUB__(HIDWORD(v24), v24))
      {
        v30 = v30;
        goto LABEL_15;
      }

      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      swift_once();
LABEL_35:
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v56 = swift_allocObject();
      *(v56 + 16) = xmmword_10138BBE0;
      *(v56 + 56) = &type metadata for UInt32;
      *(v56 + 64) = &protocol witness table for UInt32;
      *(v56 + 32) = a1;
      aBlock = v101;

      sub_1000BC4D4(&qword_1016C09C0, &qword_1013F2D90);
      v57 = String.init<A>(describing:)();
      v59 = v58;
      *(v56 + 96) = &type metadata for String;
      *(v56 + 104) = sub_100008C00();
      *(v56 + 72) = v57;
      *(v56 + 80) = v59;
      os_log(_:dso:log:_:_:)();

      v46 = 0;
      v60 = 0xF000000000000000;
      v55 = v96;
      v54 = v97;
      v44 = a4;
      goto LABEL_46;
    }

    v32 = *(v24 + 16);
    v31 = *(v24 + 24);
    v33 = __OFSUB__(v31, v32);
    v30 = v31 - v32;
    if (v33)
    {
      goto LABEL_49;
    }
  }

  else
  {
    v30 = BYTE6(v23);
  }

LABEL_15:
  if (v30 != 32)
  {
LABEL_18:

    v94 = 0;
    goto LABEL_19;
  }

  v34 = v28;
  sub_100017D5C(v99, v23);

  v35 = sub_100F0B1BC(v99, v23, 0x2000000000, v34 | 0x4000000000000000);
  v94 = 0;
  v24 = v99;

  sub_100016590(v99, v23);
  if (v35)
  {
    v96 = 0;
    v97 = 0xF000000000000000;
    goto LABEL_20;
  }

LABEL_19:
  sub_100017D5C(v24, v23);
  v96 = v24;
  v97 = v23;
LABEL_20:
  v95 = a4;
  v36 = sp_key_record_copy_public_key();
  if (!v36)
  {
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v37 = v36;
  v38 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v40 = v39;

  v41 = sub_10049C0AC(v38, v40);
  v44 = v43;
  v94 = v41;
  sub_100016590(v99, v23);
  if (!record_for_index)
  {
LABEL_33:
    v55 = v96;
    v54 = v97;
    if (!v101)
    {
      v46 = 0;
      v60 = 0xF000000000000000;
      goto LABEL_46;
    }

    a4 = v44;
    static os_log_type_t.default.getter();
    if (qword_101694A20 == -1)
    {
      goto LABEL_35;
    }

    goto LABEL_50;
  }

  v45 = *(record_for_index + 32);
  if (v45 == 1)
  {
    v61 = v44;
    v62 = sp_key_record_copy_private_key();
    if (v62)
    {
      v63 = v62;
      v64 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v66 = v65;

      v46 = sub_10049BD68(v64, v66);
      v55 = v96;
      v54 = v97;
      v44 = v61;
      goto LABEL_46;
    }

    goto LABEL_54;
  }

  if (v45 != 2)
  {
    goto LABEL_33;
  }

  v46 = v101;
  if (!v101)
  {
    v60 = 0xF000000000000000;
    v55 = v96;
    v54 = v97;
    goto LABEL_46;
  }

  v99 = v44;

  v47 = sp_key_record_copy_private_encrypted_key();
  if (!v47)
  {
    goto LABEL_55;
  }

  v48 = v47;
  v49 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v51 = v50;

  v52 = v51 >> 62;
  if ((v51 >> 62) > 1)
  {
    if (v52 != 2)
    {
      goto LABEL_56;
    }

    v53 = *(v49 + 24);
  }

  else if (v52)
  {
    v53 = v49 >> 32;
  }

  else
  {
    v53 = BYTE6(v51);
  }

  if (v53 >= 57)
  {
    v93 = Data._Representation.subscript.getter();
    record_for_index = v67;
    sub_100016590(v49, v51);
    v68 = v101;
    v69 = v101[9];
    v70 = swift_allocObject();
    v70[2] = sub_10088FFBC;
    v70[3] = v68;
    v108 = sub_1000D2FB0;
    v109 = v70;
    aBlock = _NSConcreteStackBlock;
    v105 = 1107296256;
    v106 = sub_10013FE14;
    v107 = &unk_10165B838;
    v71 = _Block_copy(&aBlock);

    dispatch_sync(v69, v71);
    _Block_release(v71);
    LOBYTE(v69) = swift_isEscapingClosureAtFileLocation();

    if ((v69 & 1) == 0)
    {
      v73 = v68[12];
      __chkstk_darwin(v72);
      *(&v89 - 4) = v68;
      v74 = record_for_index;
      *(&v89 - 3) = v93;
      *(&v89 - 2) = v74;
      OS_dispatch_queue.sync<A>(execute:)();
      v75 = aBlock;
      v76 = v105;
      v77 = v94;
      v78 = v99;
      v102 = v94;
      v103 = v99;
      v107 = &type metadata for Data;
      v108 = &protocol witness table for Data;
      v79 = sub_1000035D0(&aBlock, &type metadata for Data);
      v80 = *v79;
      v90 = v79[1];
      v91 = v80;
      sub_100017D5C(v77, v78);
      sub_100017D5C(v77, v78);
      v92 = v75;
      sub_100017D5C(v75, v76);
      sub_100017DB0(v91, v90);
      sub_100016590(v77, v78);
      sub_100007BAC(&aBlock);
      v86 = sub_10049BD68(v102, v103);
      v88 = v87;
      sub_100016590(v92, v76);

      sub_100016590(v93, record_for_index);
      v60 = v88;
      v46 = v86;
      v55 = v96;
      v54 = v97;
      v44 = v99;
LABEL_47:
      v85 = v100;
      *v100 = v55;
      v85[1] = v54;
      v85[2] = v77;
      v85[3] = v44;
      v85[4] = v46;
      v85[5] = v60;
      return;
    }

    __break(1u);
    swift_once();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v81 = swift_allocObject();
    *(v81 + 16) = xmmword_10138BBE0;
    *(v81 + 56) = &type metadata for UInt32;
    *(v81 + 64) = &protocol witness table for UInt32;
    *(v81 + 32) = a1;
    aBlock = v70;
    swift_errorRetain();
    v82 = String.init<A>(describing:)();
    v84 = v83;
    *(v81 + 96) = &type metadata for String;
    *(v81 + 104) = sub_100008C00();
    *(v81 + 72) = v82;
    *(v81 + 80) = v84;
    os_log(_:dso:log:_:_:)();

    v46 = 0;
    v60 = 0xF000000000000000;
    v55 = v96;
    v54 = v97;
    v44 = v99;
LABEL_46:
    v77 = v94;
    goto LABEL_47;
  }

LABEL_56:
  __break(1u);
}

uint64_t sub_100F0B1BC(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_100F0B34C(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_100016590(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_100771A28(v13, a3, a4, &v12);
  v10 = v4;
  sub_100016590(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_100F0B34C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = __DataStorage._bytes.getter();
  v11 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  __DataStorage._length.getter();
  sub_100771A28(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

unint64_t sub_100F0B404()
{
  result = qword_10169C9B8;
  if (!qword_10169C9B8)
  {
    type metadata accessor for CryptoError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C9B8);
  }

  return result;
}

uint64_t sub_100F0B45C(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016C0A38, &qword_1013F3130);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v24[-v8];
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100F0CC64();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  v24[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v14 = *(v3 + 24);
  v24[14] = 1;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v15 = *(v3 + 7);
  v16 = *(v3 + 32);
  v24[13] = 2;
  v24[12] = v16;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v17 = *(v3 + 33);
  v18 = *(v3 + 34);
  v24[11] = 3;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v19 = v3[5];
  v20 = v3[6];
  v24[9] = 4;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v22 = v3[7];
  v23 = v3[8];
  v24[8] = 5;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100F0B678()
{
  v1 = *v0;
  v2 = 0x657261776D726966;
  v3 = 0x5479726574746162;
  v4 = 0xD000000000000010;
  if (v1 != 4)
  {
    v4 = 0x6D614E6C65646F6DLL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x79726F6765746163;
  if (v1 != 1)
  {
    v5 = 0x696C696261706163;
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

uint64_t sub_100F0B758@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100F0C87C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100F0B780(uint64_t a1)
{
  v2 = sub_100F0CC64();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100F0B7BC(uint64_t a1)
{
  v2 = sub_100F0CC64();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100F0B810(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016C09F0, &qword_1013F2EA0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v22 - v8;
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100F0C52C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v27) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v14 = v3[2];
    v15 = v3[3];
    LOBYTE(v27) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v16 = *(v3 + 3);
    v17 = *(v3 + 5);
    v33 = *(v3 + 4);
    v34 = v17;
    v18 = *(v3 + 3);
    v32[0] = *(v3 + 2);
    v32[1] = v18;
    v28 = v16;
    v29 = v33;
    v30 = *(v3 + 5);
    v35 = v3[12];
    v31 = v3[12];
    v27 = v32[0];
    v26 = 2;
    sub_100F0C580(v32, v24);
    sub_100F0C5B8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v24[2] = v29;
    v24[3] = v30;
    v25 = v31;
    v24[1] = v28;
    v24[0] = v27;
    sub_100F0C60C(v24);
    v19 = v3[13];
    v23 = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v20 = v3[14];
    v21 = v3[15];
    v23 = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100F0BB00(void *a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016C09C8, &qword_1013F2E90);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v11 - v7;
  v9 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100F0C400();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11[1] = a2;
  sub_1000BC4D4(&qword_1016C09D8, &qword_1013F2E98);
  sub_100F0C454();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_100F0BC5C()
{
  v1 = *v0;
  v2 = 0x7250796D646E6966;
  v3 = 0x657261776D726966;
  v4 = 0x747865746E6F63;
  if (v1 != 3)
  {
    v4 = 0x496B726F7774656ELL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x56746E6572727563;
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

uint64_t sub_100F0BD1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100F0CA98(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100F0BD44(uint64_t a1)
{
  v2 = sub_100F0C52C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100F0BD80(uint64_t a1)
{
  v2 = sub_100F0C52C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100F0BDD4(uint64_t a1)
{
  v2 = sub_100F0C400();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100F0BE10(uint64_t a1)
{
  v2 = sub_100F0C400();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 sub_100F0BE68@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000BC4D4(&qword_10169A0C0, &unk_10139DBB0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v44 - v6;
  v8 = type metadata accessor for AirTagVersionNumber();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for AccessoryMetadata(0);
  v14 = v13;
  v15 = a1 + *(v13 + 44);
  if (*(v15 + 16))
  {
    sub_100235594(a1 + *(v13 + 36), v7);
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      sub_100D5DCA0(v7);
      v16 = *(a1 + v14[8]);
      v17 = sub_10098E010();
      v20 = v19;
    }

    else
    {
      (*(v9 + 32))(v12, v7, v8);
      v17 = AirTagVersionNumber.description.getter();
      v20 = v27;
      (*(v9 + 8))(v12, v8);
    }
  }

  else
  {
    v22 = *v15;
    v21 = *(v15 + 8);
    v23 = HIDWORD(*v15);
    v46 = v22;
    v47 = v23;
    v48 = v21;
    sub_100233814();
    v49 = CustomStringConvertible.typeDescription.getter();
    v50 = v24;
    v25._countAndFlagsBits = 32;
    v25._object = 0xE100000000000000;
    String.append(_:)(v25);
    v26._countAndFlagsBits = sub_100B67D6C();
    String.append(_:)(v26);

    v17 = v49;
    v20 = v50;
  }

  v28 = v14[13];
  v29 = a1 + v14[12];
  v30 = *v29;
  LOBYTE(v49) = *(v29 + 8);
  if (*(a1 + v28 + 4))
  {
    v31 = 0;
  }

  else
  {
    v31 = sub_1010D8C84(*(a1 + v28));
  }

  LOBYTE(v46) = 0;
  v32 = *(a1 + v14[14]);
  if (v32 == 4)
  {
    v33 = 0;
  }

  else
  {
    v33 = *(a1 + v14[14]);
  }

  v51 = v32 == 4;
  v34 = v14[7];
  v35 = (a1 + v14[6]);
  v36 = v35[1];
  v37 = (a1 + v34);
  v38 = v37[1];
  *&v18 = *v37;
  v45 = v18;
  *&v18 = *v35;
  v44 = v18;

  sub_1008AFD40(a1);
  v39 = v49;
  v40 = v46;
  v41 = v51;
  *a2 = v17;
  *(a2 + 8) = v20;
  *(a2 + 16) = v30;
  *(a2 + 24) = v39;
  *(a2 + 28) = v31;
  *(a2 + 32) = v40;
  *(a2 + 33) = v33;
  *(a2 + 34) = v41;
  *&v42 = v44;
  result.n128_u64[0] = v45;
  *(&v42 + 1) = v36;
  result.n128_u64[1] = v38;
  *(a2 + 56) = result;
  *(a2 + 40) = v42;
  return result;
}

__n128 sub_100F0C160@<Q0>(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for AccessoryMetadata(0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v12 = qword_10177C218;
  v13 = [objc_opt_self() sharedInstance];
  v14 = [v13 isInternalBuild];

  if (v14 && (v15 = String._bridgeToObjectiveC()(), v16 = [v12 stringForKey:v15], v15, v16))
  {
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;
  }

  else
  {
    v40 = *(a1 + *(v8 + 20));
    sub_1002313AC();
    v17 = RawRepresentable<>.hexString.getter();
    v19 = v20;
  }

  v21 = (a1 + *(v8 + 64));
  v22 = *v21;
  v23 = v21[1];
  sub_1008AFCDC(a1, v11);

  sub_100F0BE68(v11, v41);
  if (a3 == 3)
  {
    v24 = 0;
    v25 = 0;
  }

  else
  {
    LOBYTE(v40) = a3;
    sub_1000198E8();
    v26 = FixedWidthInteger.data.getter();
    v39 = v22;
    v27 = a1;
    v28 = v19;
    v29 = v17;
    v30 = a2;
    v32 = v31;
    v24 = Data.hexString.getter();
    v25 = v33;
    v34 = v32;
    a2 = v30;
    v17 = v29;
    v19 = v28;
    a1 = v27;
    v22 = v39;
    sub_100016590(v26, v34);
  }

  sub_1008AFD40(a1);
  *a4 = v17;
  *(a4 + 8) = v19;
  *(a4 + 16) = v22;
  *(a4 + 24) = v23;
  v35 = v41[3];
  *(a4 + 64) = v41[2];
  *(a4 + 80) = v35;
  v36 = v42;
  result = v41[1];
  *(a4 + 32) = v41[0];
  *(a4 + 48) = result;
  *(a4 + 96) = v36;
  *(a4 + 104) = a2;
  *(a4 + 112) = v24;
  *(a4 + 120) = v25;
  return result;
}

unint64_t sub_100F0C400()
{
  result = qword_1016C09D0;
  if (!qword_1016C09D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C09D0);
  }

  return result;
}

unint64_t sub_100F0C454()
{
  result = qword_1016C09E0;
  if (!qword_1016C09E0)
  {
    sub_1000BC580(&qword_1016C09D8, &qword_1013F2E98);
    sub_100F0C4D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C09E0);
  }

  return result;
}

unint64_t sub_100F0C4D8()
{
  result = qword_1016C09E8;
  if (!qword_1016C09E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C09E8);
  }

  return result;
}

unint64_t sub_100F0C52C()
{
  result = qword_1016C09F8;
  if (!qword_1016C09F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C09F8);
  }

  return result;
}

unint64_t sub_100F0C5B8()
{
  result = qword_1016C0A00;
  if (!qword_1016C0A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C0A00);
  }

  return result;
}

unint64_t sub_100F0C670()
{
  result = qword_1016C0A08;
  if (!qword_1016C0A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C0A08);
  }

  return result;
}

unint64_t sub_100F0C6C8()
{
  result = qword_1016C0A10;
  if (!qword_1016C0A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C0A10);
  }

  return result;
}

unint64_t sub_100F0C720()
{
  result = qword_1016C0A18;
  if (!qword_1016C0A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C0A18);
  }

  return result;
}

unint64_t sub_100F0C778()
{
  result = qword_1016C0A20;
  if (!qword_1016C0A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C0A20);
  }

  return result;
}

unint64_t sub_100F0C7D0()
{
  result = qword_1016C0A28;
  if (!qword_1016C0A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C0A28);
  }

  return result;
}

unint64_t sub_100F0C828()
{
  result = qword_1016C0A30;
  if (!qword_1016C0A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C0A30);
  }

  return result;
}

uint64_t sub_100F0C87C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x657261776D726966 && a2 == 0xEF6E6F6973726556;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x79726F6765746163 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x696C696261706163 && a2 == 0xEC00000073656974 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x5479726574746162 && a2 == 0xEB00000000657079 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x800000010134D650 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6D614E6C65646F6DLL && a2 == 0xE900000000000065)
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

uint64_t sub_100F0CA98(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7250796D646E6966 && a2 == 0xEF6449746375646FLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x56746E6572727563 && a2 == 0xEE006E6F69737265 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x657261776D726966 && a2 == 0xEC00000061746144 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x747865746E6F63 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x496B726F7774656ELL && a2 == 0xE900000000000064)
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

unint64_t sub_100F0CC64()
{
  result = qword_1016C0A40;
  if (!qword_1016C0A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C0A40);
  }

  return result;
}

unint64_t sub_100F0CCCC()
{
  result = qword_1016C0A48;
  if (!qword_1016C0A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C0A48);
  }

  return result;
}

unint64_t sub_100F0CD24()
{
  result = qword_1016C0A50;
  if (!qword_1016C0A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C0A50);
  }

  return result;
}

unint64_t sub_100F0CD7C()
{
  result = qword_1016C0A58;
  if (!qword_1016C0A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C0A58);
  }

  return result;
}

uint64_t sub_100F0CDD0(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v16 = a4;
  v8 = sub_1000BC4D4(&qword_1016C0B20, &qword_1013F33F8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v15 - v11;
  v13 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100F0D804();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = a2;
  v19 = 0;
  sub_1000BC4D4(&qword_101698DD8, &qword_1013C44B0);
  sub_1008DA158(&qword_1016AD858);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v4)
  {
    v17 = a3;
    v18 = v16;
    v19 = 1;
    sub_100017D5C(a3, v16);
    sub_1000E3190();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v17, v18);
  }

  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_100F0CFB8(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016C0B00, &qword_1013F33E0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v26[-v8];
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100F0D564();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v26[15] = 0;
  type metadata accessor for UUID();
  sub_1008D9E0C();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = type metadata accessor for AccessoryLostModeRequestContent();
    v12 = (v3 + v11[5]);
    v13 = *v12;
    v14 = v12[1];
    v26[14] = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v15 = (v3 + v11[6]);
    v16 = *v15;
    v17 = v15[1];
    v26[13] = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v18 = (v3 + v11[7]);
    v19 = *v18;
    v20 = v18[1];
    v26[12] = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v21 = (v3 + v11[8]);
    v22 = *v21;
    v23 = v21[1];
    v26[11] = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v24 = *(v3 + v11[9]);
    v26[10] = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100F0D204(uint64_t a1)
{
  v2 = sub_100F0D804();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100F0D240(uint64_t a1)
{
  v2 = sub_100F0D804();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100F0D27C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100F0D5B8(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_100F0D2CC()
{
  v1 = *v0;
  v2 = 0x6449616E6D66;
  v3 = 0x6C69616D65;
  v4 = 0x6D754E72656E776FLL;
  if (v1 != 4)
  {
    v4 = 0x65646F4D74736F6CLL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x656C746974;
  if (v1 != 1)
  {
    v5 = 0x6567617373656DLL;
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

uint64_t sub_100F0D390@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100F0DA88(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100F0D3B8(uint64_t a1)
{
  v2 = sub_100F0D564();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100F0D3F4(uint64_t a1)
{
  v2 = sub_100F0D564();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t type metadata accessor for AccessoryLostModeRequestContent()
{
  result = qword_1016C0AB8;
  if (!qword_1016C0AB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100F0D4CC()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    sub_1000E3404();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_100F0D564()
{
  result = qword_1016C0B08;
  if (!qword_1016C0B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C0B08);
  }

  return result;
}

uint64_t sub_100F0D5B8(uint64_t *a1)
{
  v3 = sub_1000BC4D4(&qword_1016C0B10, &unk_1013F33E8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v12 - v6;
  v8 = a1[3];
  sub_1000035D0(a1, v8);
  sub_100F0D804();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100007BAC(a1);
  }

  else
  {
    sub_1000BC4D4(&qword_101698DD8, &qword_1013C44B0);
    v15 = 0;
    sub_1008DA158(&qword_1016AD848);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v8 = v13;
    v15 = 1;
    sub_1000E307C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v7, v3);
    v10 = v13;
    v11 = v14;

    sub_100017D5C(v10, v11);
    sub_100007BAC(a1);

    sub_100016590(v10, v11);
  }

  return v8;
}

unint64_t sub_100F0D804()
{
  result = qword_1016C0B18;
  if (!qword_1016C0B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C0B18);
  }

  return result;
}

unint64_t sub_100F0D87C()
{
  result = qword_1016C0B28;
  if (!qword_1016C0B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C0B28);
  }

  return result;
}

unint64_t sub_100F0D8D4()
{
  result = qword_1016C0B30;
  if (!qword_1016C0B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C0B30);
  }

  return result;
}

unint64_t sub_100F0D92C()
{
  result = qword_1016C0B38;
  if (!qword_1016C0B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C0B38);
  }

  return result;
}

unint64_t sub_100F0D984()
{
  result = qword_1016C0B40;
  if (!qword_1016C0B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C0B40);
  }

  return result;
}

unint64_t sub_100F0D9DC()
{
  result = qword_1016C0B48;
  if (!qword_1016C0B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C0B48);
  }

  return result;
}

unint64_t sub_100F0DA34()
{
  result = qword_1016C0B50;
  if (!qword_1016C0B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C0B50);
  }

  return result;
}

uint64_t sub_100F0DA88(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6449616E6D66 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6567617373656DLL && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C69616D65 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6D754E72656E776FLL && a2 == 0xEB00000000726562 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x65646F4D74736F6CLL && a2 == 0xEF64656C62616E45)
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

uint64_t type metadata accessor for AccessoryPairingLockCheckResponse()
{
  result = qword_1016C0BB0;
  if (!qword_1016C0BB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100F0DCF8()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100F0DD94()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

unint64_t sub_100F0DE94@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100F0E834(*a1);
  *a2 = result;
  return result;
}

void sub_100F0DEC4(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x5364656573;
  v5 = 0x800000010134A130;
  v6 = 0xD000000000000010;
  v7 = 0xE600000000000000;
  v8 = 0x6449616E6D66;
  if (v2 != 4)
  {
    v8 = 0x704164656B73616DLL;
    v7 = 0xED00006449656C70;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEA00000000006E67;
  v10 = 0x6953726576726573;
  if (v2 != 1)
  {
    v10 = 0x6E656B6F74;
    v9 = 0xE500000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

unint64_t sub_100F0DF8C()
{
  v1 = *v0;
  v2 = 0x5364656573;
  v3 = 0xD000000000000010;
  v4 = 0x6449616E6D66;
  if (v1 != 4)
  {
    v4 = 0x704164656B73616DLL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6953726576726573;
  if (v1 != 1)
  {
    v5 = 0x6E656B6F74;
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

unint64_t sub_100F0E050@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100F0E834(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100F0E078(uint64_t a1)
{
  v2 = sub_100F0E608();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100F0E0B4(uint64_t a1)
{
  v2 = sub_100F0E608();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100F0E0F0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v3 = type metadata accessor for UUID();
  v38 = *(v3 - 8);
  v4 = *(v38 + 64);
  __chkstk_darwin(v3);
  v6 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_1000BC4D4(&qword_1016C0BF8, &qword_1013F3670);
  v37 = *(v39 - 8);
  v7 = *(v37 + 64);
  __chkstk_darwin(v39);
  v9 = v33 - v8;
  v10 = type metadata accessor for AccessoryPairingLockCheckResponse();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = (v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = a1[3];
  v15 = a1[4];
  v41 = a1;
  sub_1000035D0(a1, v14);
  sub_100F0E608();
  v16 = v40;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v16)
  {
    return sub_100007BAC(v41);
  }

  v34 = v6;
  v35 = v3;
  v40 = v10;
  v17 = v13;
  v19 = v37;
  v18 = v38;
  v43 = 0;
  sub_1000E307C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v20 = *(&v42 + 1);
  *v13 = v42;
  v13[1] = v20;
  v43 = 1;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v21 = v19;
  *(v17 + 16) = v42;
  v43 = 2;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *(v17 + 32) = v42;
  LOBYTE(v42) = 3;
  v22 = KeyedDecodingContainer.decode(_:forKey:)();
  v23 = v18;
  v24 = v40;
  *(v17 + 48) = v22;
  *(v17 + 56) = v25;
  LOBYTE(v42) = 4;
  sub_100395BEC();
  v27 = v34;
  v26 = v35;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v33[1] = 0;
  (*(v23 + 32))(v17 + *(v24 + 32), v27, v26);
  LOBYTE(v42) = 5;
  v28 = KeyedDecodingContainer.decode(_:forKey:)();
  v30 = v29;
  (*(v21 + 8))(v9, v39);
  v31 = (v17 + *(v24 + 36));
  *v31 = v28;
  v31[1] = v30;
  sub_100F0E65C(v17, v36);
  sub_100007BAC(v41);
  return sub_100F0E6C0(v17);
}

unint64_t sub_100F0E608()
{
  result = qword_1016C0C00;
  if (!qword_1016C0C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C0C00);
  }

  return result;
}

uint64_t sub_100F0E65C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessoryPairingLockCheckResponse();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100F0E6C0(uint64_t a1)
{
  v2 = type metadata accessor for AccessoryPairingLockCheckResponse();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100F0E730()
{
  result = qword_1016C0C08;
  if (!qword_1016C0C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C0C08);
  }

  return result;
}

unint64_t sub_100F0E788()
{
  result = qword_1016C0C10;
  if (!qword_1016C0C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C0C10);
  }

  return result;
}

unint64_t sub_100F0E7E0()
{
  result = qword_1016C0C18;
  if (!qword_1016C0C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C0C18);
  }

  return result;
}

unint64_t sub_100F0E834(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10160C9F8, v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

void *sub_100F0E880(void *a1)
{
  v2 = v1;
  v4 = sub_1000BC4D4(&qword_1016A1488, &qword_1013A5540);
  v5 = *(v4 - 8);
  v31 = v4;
  v32 = v5;
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v30 - v7;
  v1[4] = 0;
  v9 = sub_1000BC4D4(&qword_1016C0D58, &qword_1013F38A0);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  v1[5] = PassthroughSubject.init()();
  v1[2] = a1;
  v12 = type metadata accessor for KVOHelperNWDatagramConnection();
  v13 = objc_allocWithZone(v12);
  *&v13[OBJC_IVAR____TtC12searchpartydP33_6037248B8C5D968AAFEBF5992F3E761329KVOHelperNWDatagramConnection_observation] = 0;
  *&v13[OBJC_IVAR____TtC12searchpartydP33_6037248B8C5D968AAFEBF5992F3E761329KVOHelperNWDatagramConnection_observee] = a1;
  v14 = a1;
  v34 = [v14 connectionState];
  v15 = sub_1000BC4D4(&qword_1016C0D60, qword_1013F38A8);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  v18 = CurrentValueSubject.init(_:)();
  *&v13[OBJC_IVAR____TtC12searchpartydP33_6037248B8C5D968AAFEBF5992F3E761329KVOHelperNWDatagramConnection_subject] = v18;
  v34 = v18;
  sub_1000041A4(&qword_1016C0D68, &qword_1016C0D60, qword_1013F38A8);
  *&v13[OBJC_IVAR____TtC12searchpartydP33_6037248B8C5D968AAFEBF5992F3E761329KVOHelperNWDatagramConnection_publisher] = Publisher.eraseToAnyPublisher()();
  v33.receiver = v13;
  v33.super_class = v12;
  v19 = objc_msgSendSuper2(&v33, "init");
  v34 = *&v19[OBJC_IVAR____TtC12searchpartydP33_6037248B8C5D968AAFEBF5992F3E761329KVOHelperNWDatagramConnection_observee];
  v20 = v34;
  swift_getKeyPath();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = v19;
  v22 = v20;
  v23 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

  v24 = *&v21[OBJC_IVAR____TtC12searchpartydP33_6037248B8C5D968AAFEBF5992F3E761329KVOHelperNWDatagramConnection_observation];
  *&v21[OBJC_IVAR____TtC12searchpartydP33_6037248B8C5D968AAFEBF5992F3E761329KVOHelperNWDatagramConnection_observation] = v23;

  v2[3] = v21;
  v34 = v2[5];
  sub_1000041A4(&qword_1016C0D70, &qword_1016C0D58, &qword_1013F38A0);
  v2[7] = Publisher.eraseToAnyPublisher()();
  v25 = *(v2[3] + OBJC_IVAR____TtC12searchpartydP33_6037248B8C5D968AAFEBF5992F3E761329KVOHelperNWDatagramConnection_publisher);
  v2[6] = v25;
  v34 = v25;
  swift_retain_n();
  sub_1000BC4D4(&qword_1016A1490, &qword_1013A5548);
  sub_1000041A4(&qword_1016A1498, &qword_1016A1490, &qword_1013A5548);
  Publisher.first(where:)();

  swift_allocObject();
  swift_weakInit();
  sub_1000041A4(&qword_1016A14A0, &qword_1016A1488, &qword_1013A5540);
  v26 = v31;
  v27 = Publisher<>.sink(receiveValue:)();

  (*(v32 + 8))(v8, v26);
  v28 = v2[4];
  v2[4] = v27;

  return v2;
}

uint64_t sub_100F0ECD0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + 16);
    v2 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_100F0FA2C;
    aBlock[5] = v2;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100F0F188;
    aBlock[3] = &unk_10165BDD8;
    v3 = _Block_copy(aBlock);

    [v1 readDatagramsWithMinimumCount:1 maximumCount:1 completionHandler:v3];
    _Block_release(v3);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = *(result + 32);
    *(result + 32) = 0;
  }

  return result;
}

uint64_t sub_100F0EE1C()
{
  [*(v0 + 16) cancel];

  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  v4 = *(v0 + 56);

  return v0;
}

uint64_t sub_100F0EE74()
{
  sub_100F0EE1C();

  return swift_deallocClassInstance();
}

uint64_t sub_100F0EEA8(void *a1, void **a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (a2)
    {
      v5 = result;
      swift_errorRetain();
      swift_errorRetain();
      if (qword_101695190 != -1)
      {
        swift_once();
      }

      v6 = type metadata accessor for Logger();
      sub_1000076D4(v6, qword_10177C4F0);
      swift_errorRetain();
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        *v9 = 138412290;
        sub_1001DCF6C();
        swift_allocError();
        *v11 = a2;
        swift_errorRetain();
        v12 = _swift_stdlib_bridgeErrorToNSError();
        *(v9 + 4) = v12;
        *v10 = v12;
        _os_log_impl(&_mh_execute_header, v7, v8, "MessagingDatagramConnection read error: %@", v9, 0xCu);
        sub_100288C6C(v10);
      }

      v13 = *(v5 + 40);
      aBlock = a2;
      swift_errorRetain();
      PassthroughSubject.send(completion:)();
    }

    else if (a1[2])
    {
      v14 = a1[4];
      v15 = a1[5];
      v16 = *(result + 40);
      aBlock = v14;
      v22 = v15;
      v17 = result;
      sub_100017D5C(v14, v15);
      PassthroughSubject.send(_:)();
      sub_100016590(v14, v15);
      v18 = *(v17 + 16);
      v19 = swift_allocObject();
      swift_weakInit();
      v25 = sub_100F0FA4C;
      v26 = v19;
      aBlock = _NSConcreteStackBlock;
      v22 = 1107296256;
      v23 = sub_100F0F188;
      v24 = &unk_10165BE00;
      v20 = _Block_copy(&aBlock);

      [v18 readDatagramsWithMinimumCount:1 maximumCount:1 completionHandler:v20];
      _Block_release(v20);
    }
  }

  return result;
}

void sub_100F0F188(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = a3;
  v5(v6, a3);
}

void sub_100F0F218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = *(Strong + 16);

    v12 = v11;

    sub_1000BC4D4(&qword_10169E768, &qword_10139DB90);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_101385D80;
    *(v13 + 32) = a4;
    *(v13 + 40) = a5;
    sub_100017D5C(a4, a5);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v15 = swift_allocObject();
    *(v15 + 16) = sub_100407A2C;
    *(v15 + 24) = v9;
    aBlock[4] = sub_100F0FA34;
    aBlock[5] = v15;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10077732C;
    aBlock[3] = &unk_10165BE78;
    v16 = _Block_copy(aBlock);

    [v12 writeDatagrams:isa completionHandler:v16];
    _Block_release(v16);
  }

  else
  {
  }
}

uint64_t sub_100F0F3E8(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  if (!a1)
  {
    return a2(0, 0);
  }

  swift_errorRetain();
  swift_errorRetain();
  if (qword_101695190 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177C4F0);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    sub_1001DCF6C();
    swift_allocError();
    *v9 = a1;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&_mh_execute_header, v5, v6, "MessagingDatagramConnection send error: %@", v7, 0xCu);
    sub_100288C6C(v8);
  }

  swift_errorRetain();
  a2(a1, 1);
}

uint64_t sub_100F0F5D0()
{
  v6 = *v0;
  type metadata accessor for MessagingDatagramConnection();
  v1._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
  String.append(_:)(v1);

  v2._countAndFlagsBits = 8250;
  v2._object = 0xE200000000000000;
  String.append(_:)(v2);
  v3._countAndFlagsBits = CustomStringConvertible<>.addressDescription.getter();
  String.append(_:)(v3);

  v4._countAndFlagsBits = 62;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);
  return 60;
}

uint64_t sub_100F0F68C(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(result + OBJC_IVAR____TtC12searchpartydP33_6037248B8C5D968AAFEBF5992F3E761329KVOHelperNWDatagramConnection_subject);
    v4 = result;

    [v1 connectionState];
    CurrentValueSubject.send(_:)();
  }

  return result;
}

id sub_100F0F750()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for KVOHelperNWDatagramConnection();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t NWConnectionState.description.getter(uint64_t a1)
{
  if (a1 > 2)
  {
    if (a1 == 3)
    {
      return 0x79646165722ELL;
    }

    if (a1 != 4)
    {
      if (a1 == 5)
      {
        return 0x6C6C65636E61632ELL;
      }

      return 0x4E574F4E4B4E553CLL;
    }

    return 0x64656C6961662ELL;
  }

  else
  {
    if (!a1)
    {
      return 0x64696C61766E692ELL;
    }

    if (a1 != 1)
    {
      if (a1 == 2)
      {
        return 0x697261706572702ELL;
      }

      return 0x4E574F4E4B4E553CLL;
    }

    return 0x676E69746961772ELL;
  }
}

uint64_t sub_100F0F8DC()
{
  v1 = *v0;
  if (*v0 > 2)
  {
    if (v1 == 3)
    {
      return 0x79646165722ELL;
    }

    if (v1 != 4)
    {
      if (v1 == 5)
      {
        return 0x6C6C65636E61632ELL;
      }

      return 0x4E574F4E4B4E553CLL;
    }

    return 0x64656C6961662ELL;
  }

  else
  {
    if (!v1)
    {
      return 0x64696C61766E692ELL;
    }

    if (v1 != 1)
    {
      if (v1 == 2)
      {
        return 0x697261706572702ELL;
      }

      return 0x4E574F4E4B4E553CLL;
    }

    return 0x676E69746961772ELL;
  }
}

uint64_t sub_100F0FA50(uint64_t a1)
{
  v2 = type metadata accessor for Notification();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  v8(v6);

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_100F0FB44()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_1016C0D78);
  v1 = sub_1000076D4(v0, qword_1016C0D78);
  if (qword_101694FF8 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_10177C310);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100F0FC0C()
{
  sub_1000BC4D4(&qword_1016A6010, &qword_101391C30);
  result = swift_allocObject();
  *(result + 16) = 0;
  qword_1016C0D90 = result;
  return result;
}

uint64_t sub_100F0FC4C()
{
  type metadata accessor for ReferenceClock.IsolationDomain();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  qword_1016C0D98 = v0;
  return result;
}

uint64_t sub_100F0FC8C()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Date.distantPast.getter();
  Date.timeIntervalSinceReferenceDate.getter();
  v6 = v5;
  result = (*(v1 + 8))(v4, v0);
  qword_1016C0DA0 = v6;
  return result;
}

double sub_100F0FD64()
{
  if (qword_101694FE8 != -1)
  {
    swift_once();
  }

  result = *&qword_1016C0DA0;
  qword_1016C0DC0 = qword_1016C0DA0;
  return result;
}

BOOL sub_100F0FDBC()
{
  if (qword_101694FD8 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&qword_101696CB8, &unk_10138B600);
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  v0 = *&v7;
  if ((aBlock & 1) == 0)
  {
    v1 = [objc_opt_self() defaultCenter];
    v10 = sub_100F109D4;
    v11 = 0;
    aBlock = _NSConcreteStackBlock;
    v7 = 1107296256;
    v8 = sub_100F0FA50;
    v9 = &unk_10165BEA0;
    v2 = _Block_copy(&aBlock);

    v3 = [v1 addObserverForName:NSSystemClockDidChangeNotification object:0 queue:0 usingBlock:v2];
    _Block_release(v2);
    swift_unknownObjectRelease();
  }

  if (qword_101694FE8 != -1)
  {
    swift_once();
  }

  v4 = *&qword_1016C0DA0;
  if (*&qword_1016C0DA0 >= v0)
  {
    sub_100F10324(0);
  }

  return v4 < v0;
}

double sub_100F0FFAC()
{
  v0 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = v9 - v2;
  sub_100F0FDBC();
  Current = CFAbsoluteTimeGetCurrent();
  if (qword_101694FD8 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_1016B7CA0, &unk_101395220);
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  v5 = Current - v9[2];
  if (v5 - v9[3] > 86400.0)
  {
    OSAllocatedUnfairLock.callAsFunction<A>(_:)();
    v6 = type metadata accessor for TaskPriority();
    (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
    v7 = swift_allocObject();
    *(v7 + 16) = 0;
    *(v7 + 24) = 0;
    sub_10025EDD4(0, 0, v3, &unk_10138B610, v7);
  }

  return v5;
}

double sub_100F1018C@<D0>(void *a1@<X8>)
{
  *a1 = qword_1016C0DB0;
  if (qword_101694FF0 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  result = *&qword_1016C0DC0;
  a1[1] = qword_1016C0DC0;
  return result;
}

uint64_t sub_100F10230()
{
  if (qword_101694FE0 != -1)
  {
    swift_once();
  }

  v0 = qword_1016C0D98;

  return _swift_task_switch(sub_100F102C4, v0, 0);
}

uint64_t sub_100F102C4()
{
  sub_100F10324(1);
  v1 = *(v0 + 8);

  return v1();
}

void sub_100F10324(char a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) == 0)
  {
    goto LABEL_29;
  }

  if (qword_101694FD8 != -1)
  {
    swift_once();
  }

  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  if (LOBYTE(v42[0]) == 1)
  {
LABEL_29:
    if (TMIsAutomaticTimeEnabled())
    {
      if (qword_101694FD8 != -1)
      {
        swift_once();
      }

      OSAllocatedUnfairLock.callAsFunction<A>(_:)();
      if (qword_101694FD0 != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      sub_1000076D4(v7, qword_1016C0D78);
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v8, v9))
      {
        goto LABEL_26;
      }

      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v42[0] = v11;
      *v10 = 136446210;
      sub_100F0FFAC();
      Date.init(timeIntervalSinceReferenceDate:)();
      sub_100B286F8();
      v12 = dispatch thunk of CustomStringConvertible.description.getter();
      v14 = v13;
      (*(v3 + 8))(v6, v2);
      v15 = sub_1000136BC(v12, v14, v42);

      *(v10 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v8, v9, "ReferenceClock calibrated: %{public}s delta: 0.0 uncertainty: 0.0", v10, 0xCu);
      sub_100007BAC(v11);

LABEL_25:

LABEL_26:

      return;
    }

    if (qword_101694FD0 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_1000076D4(v16, qword_1016C0D78);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Automatic time is DISABLED", v19, 2u);
    }

    *&v20 = COERCE_DOUBLE(sub_100F10AF0());
    if ((v22 & 0x100000000) == 0)
    {
      v23 = v20;
      v24 = v21;
      v41 = v22;
      v25 = *&v20;
      v26 = v21;
      Current = CFAbsoluteTimeGetCurrent();
      if (v26 > 1.0)
      {
        v29 = Logger.logObject.getter();
        v30 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          *v31 = 134218240;
          *(v31 + 4) = v24;
          *(v31 + 12) = 1024;
          *(v31 + 14) = v41;
          _os_log_impl(&_mh_execute_header, v29, v30, "TMGMReferenceTime reports high uncertainty: %f (reliability: %d", v31, 0x12u);
        }
      }

      v32 = Current - v25;
      if (qword_101694FD8 != -1)
      {
        v27 = swift_once();
      }

      __chkstk_darwin(v27);
      *(&v40 - 4) = v32;
      *(&v40 - 3) = v24;
      *(&v40 - 2) = v23;
      OSAllocatedUnfairLock.callAsFunction<A>(_:)();
      v8 = Logger.logObject.getter();
      v33 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v8, v33))
      {
        goto LABEL_26;
      }

      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v42[0] = v35;
      *v34 = 136446722;
      sub_100F0FFAC();
      Date.init(timeIntervalSinceReferenceDate:)();
      sub_100B286F8();
      v36 = dispatch thunk of CustomStringConvertible.description.getter();
      v38 = v37;
      (*(v3 + 8))(v6, v2);
      v39 = sub_1000136BC(v36, v38, v42);

      *(v34 + 4) = v39;
      *(v34 + 12) = 2048;
      *(v34 + 14) = v32;
      *(v34 + 22) = 2048;
      *(v34 + 24) = v24;
      _os_log_impl(&_mh_execute_header, v8, v33, "ReferenceClock calibrated: %{public}s delta: %f uncertainty: %f", v34, 0x20u);
      sub_100007BAC(v35);

      goto LABEL_25;
    }
  }
}

double sub_100F10954@<D0>(uint64_t a1@<X8>)
{
  v1 = byte_1016C0DA8;
  byte_1016C0DA8 = 1;
  *a1 = v1;
  if (qword_101694FF0 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  result = *&qword_1016C0DC0;
  *(a1 + 8) = qword_1016C0DC0;
  return result;
}

void sub_100F109DC()
{
  qword_1016C0DB0 = 0;
  qword_1016C0DB8 = 0;
  if (qword_101694FF0 != -1)
  {
    swift_once();
  }

  qword_1016C0DC0 = CFAbsoluteTimeGetCurrent();
  byte_1016C0DC8 = 0;
}

uint64_t sub_100F10A54()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177C310);
  sub_1000076D4(v0, qword_10177C310);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100F10B78()
{
  v1 = v0[3];
  v2 = v0[4];
  qword_1016C0DB0 = v0[2];
  qword_1016C0DB8 = v1;
  if (qword_101694FF0 != -1)
  {
    result = swift_once();
  }

  qword_1016C0DC0 = v2;
  byte_1016C0DC8 = 0;
  return result;
}

uint64_t sub_100F10CC4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_100F10DC0()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_100F10DF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[12] = a3;
  v4[13] = v3;
  v4[10] = a1;
  v4[11] = a2;
  v5 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v4[14] = v5;
  v6 = *(v5 - 8);
  v4[15] = v6;
  v7 = *(v6 + 64) + 15;
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v8 = type metadata accessor for Table();
  v4[21] = v8;
  v9 = *(v8 - 8);
  v4[22] = v9;
  v10 = *(v9 + 64) + 15;
  v4[23] = swift_task_alloc();

  return _swift_task_switch(sub_100F10F50, v3, 0);
}

uint64_t sub_100F10F50()
{
  if (*(*(v0 + 104) + 112))
  {
    v1 = qword_101694588;

    if (v1 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 136);
    v3 = *(v0 + 80);
    v4 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
    sub_1000076D4(v4, qword_10177A930);
    type metadata accessor for UUID();
    == infix<A>(_:_:)();
    if (qword_101694590 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 136);
    v5 = *(v0 + 144);
    v7 = *(v0 + 120);
    v8 = *(v0 + 128);
    v9 = *(v0 + 112);
    v10 = *(v0 + 88);
    sub_1000076D4(v4, qword_10177A948);
    == infix<A>(_:_:)();
    && infix(_:_:)();
    v11 = *(v7 + 8);
    v11(v8, v9);
    v11(v6, v9);
    if (qword_1016945A0 != -1)
    {
      swift_once();
    }

    v13 = *(v0 + 144);
    v12 = *(v0 + 152);
    v14 = *(v0 + 136);
    v15 = *(v0 + 112);
    v16 = sub_1000BC4D4(&qword_101699DA0, &unk_10139D120);
    sub_1000076D4(v16, qword_10177A978);
    *(v0 + 192) = 0;
    sub_100028088();
    == infix<A>(_:_:)();
    && infix(_:_:)();
    v11(v14, v15);
    v11(v13, v15);
    v17 = v11;
    if (qword_101694598 != -1)
    {
      swift_once();
    }

    v44 = *(v0 + 184);
    v45 = *(v0 + 176);
    v19 = *(v0 + 160);
    v18 = *(v0 + 168);
    v21 = *(v0 + 144);
    v20 = *(v0 + 152);
    v22 = *(v0 + 112);
    v46 = *(v0 + 104);
    v23 = *(v0 + 96);
    v24 = sub_1000BC4D4(&qword_101699DE8, &qword_101393120);
    sub_1000076D4(v24, qword_10177A960);
    *(v0 + 72) = v23;
    sub_100029580();
    == infix<A>(_:_:)();
    && infix(_:_:)();
    v17(v21, v22);
    v17(v20, v22);
    QueryType.filter(_:)();
    v17(v19, v22);
    *(v0 + 40) = v18;
    *(v0 + 48) = &protocol witness table for Table;
    v25 = sub_1000280DC((v0 + 16));
    (*(v45 + 16))(v25, v44, v18);
    sub_10068600C(v0 + 16);
    v26 = *(v0 + 176);
    v27 = *(v0 + 184);
    v28 = *(v0 + 168);
    v39 = *(v0 + 152);
    v38 = *(v0 + 160);
    v40 = *(v0 + 144);
    v47 = *(v0 + 136);
    v48 = *(v0 + 128);
    sub_100007BAC((v0 + 16));
    dispatch thunk of _AnySequenceBox._makeIterator()();

    dispatch thunk of _AnyIteratorBoxBase.next()();

    (*(v26 + 8))(v27, v28);
    v42 = *(v0 + 56);
    v41 = *(v0 + 64);

    v43 = *(v0 + 8);

    return v43(v42, v41);
  }

  else
  {
    sub_10020223C();
    swift_allocError();
    *v29 = 2;
    *(v29 + 4) = 1;
    swift_willThrow();
    v30 = *(v0 + 184);
    v32 = *(v0 + 152);
    v31 = *(v0 + 160);
    v34 = *(v0 + 136);
    v33 = *(v0 + 144);
    v35 = *(v0 + 128);

    v36 = *(v0 + 8);

    return v36();
  }
}

uint64_t sub_100F114D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[12] = a3;
  v4[13] = v3;
  v4[10] = a1;
  v4[11] = a2;
  v5 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v4[14] = v5;
  v6 = *(v5 - 8);
  v4[15] = v6;
  v7 = *(v6 + 64) + 15;
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v8 = type metadata accessor for Table();
  v4[21] = v8;
  v9 = *(v8 - 8);
  v4[22] = v9;
  v10 = *(v9 + 64) + 15;
  v4[23] = swift_task_alloc();

  return _swift_task_switch(sub_100F1162C, v3, 0);
}

uint64_t sub_100F1162C()
{
  if (*(*(v0 + 104) + 112))
  {
    v1 = qword_101694588;

    if (v1 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 136);
    v3 = *(v0 + 80);
    v4 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
    sub_1000076D4(v4, qword_10177A930);
    type metadata accessor for UUID();
    == infix<A>(_:_:)();
    if (qword_101694590 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 136);
    v5 = *(v0 + 144);
    v7 = *(v0 + 120);
    v8 = *(v0 + 128);
    v9 = *(v0 + 112);
    v10 = *(v0 + 88);
    sub_1000076D4(v4, qword_10177A948);
    == infix<A>(_:_:)();
    && infix(_:_:)();
    v11 = *(v7 + 8);
    v11(v8, v9);
    v11(v6, v9);
    if (qword_1016945A0 != -1)
    {
      swift_once();
    }

    v13 = *(v0 + 144);
    v12 = *(v0 + 152);
    v14 = *(v0 + 136);
    v15 = *(v0 + 112);
    v16 = sub_1000BC4D4(&qword_101699DA0, &unk_10139D120);
    sub_1000076D4(v16, qword_10177A978);
    *(v0 + 192) = 1;
    sub_100028088();
    == infix<A>(_:_:)();
    && infix(_:_:)();
    v11(v14, v15);
    v11(v13, v15);
    v17 = v11;
    if (qword_101694598 != -1)
    {
      swift_once();
    }

    v44 = *(v0 + 184);
    v45 = *(v0 + 176);
    v19 = *(v0 + 160);
    v18 = *(v0 + 168);
    v21 = *(v0 + 144);
    v20 = *(v0 + 152);
    v22 = *(v0 + 112);
    v46 = *(v0 + 104);
    v23 = *(v0 + 96);
    v24 = sub_1000BC4D4(&qword_101699DE8, &qword_101393120);
    sub_1000076D4(v24, qword_10177A960);
    *(v0 + 72) = v23;
    sub_100029580();
    == infix<A>(_:_:)();
    && infix(_:_:)();
    v17(v21, v22);
    v17(v20, v22);
    QueryType.filter(_:)();
    v17(v19, v22);
    *(v0 + 40) = v18;
    *(v0 + 48) = &protocol witness table for Table;
    v25 = sub_1000280DC((v0 + 16));
    (*(v45 + 16))(v25, v44, v18);
    sub_10068600C(v0 + 16);
    v26 = *(v0 + 176);
    v27 = *(v0 + 184);
    v28 = *(v0 + 168);
    v39 = *(v0 + 152);
    v38 = *(v0 + 160);
    v40 = *(v0 + 144);
    v47 = *(v0 + 136);
    v48 = *(v0 + 128);
    sub_100007BAC((v0 + 16));
    dispatch thunk of _AnySequenceBox._makeIterator()();

    dispatch thunk of _AnyIteratorBoxBase.next()();

    (*(v26 + 8))(v27, v28);
    v42 = *(v0 + 56);
    v41 = *(v0 + 64);

    v43 = *(v0 + 8);

    return v43(v42, v41);
  }

  else
  {
    sub_10020223C();
    swift_allocError();
    *v29 = 2;
    *(v29 + 4) = 1;
    swift_willThrow();
    v30 = *(v0 + 184);
    v32 = *(v0 + 152);
    v31 = *(v0 + 160);
    v34 = *(v0 + 136);
    v33 = *(v0 + 144);
    v35 = *(v0 + 128);

    v36 = *(v0 + 8);

    return v36();
  }
}

uint64_t sub_100F11BB0(uint64_t a1)
{
  v2 = type metadata accessor for StableIdentifier();
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v23 - v7;
  v9 = *(type metadata accessor for OwnedBeaconRecord() + 24);
  sub_100F3A2F8(a1 + v9, v8, type metadata accessor for StableIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_100F3A500(v8, type metadata accessor for StableIdentifier);
  if (EnumCaseMultiPayload == 1)
  {
    return 1;
  }

  sub_100F3A2F8(a1 + v9, v6, type metadata accessor for StableIdentifier);
  v12 = swift_getEnumCaseMultiPayload();
  if (v12 == 2)
  {
    v17 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
    v18 = *&v6[v17[12] + 8];

    v19 = *&v6[v17[16] + 8];

    v20 = *&v6[v17[20] + 8];

    v16 = v17[28];
    goto LABEL_7;
  }

  if (v12 == 3)
  {
    v13 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);
    v14 = *&v6[v13[12] + 8];

    v15 = *&v6[v13[16] + 8];

    v16 = v13[20];
LABEL_7:
    v21 = *&v6[v16 + 8];

    v22 = type metadata accessor for UUID();
    (*(*(v22 - 8) + 8))(v6, v22);
    return 1;
  }

  sub_100F3A500(v6, type metadata accessor for StableIdentifier);
  return 0;
}

uint64_t sub_100F11DEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(void), const char *a6)
{
  v10 = a3(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v25 - v12;
  if (qword_101694B98 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_1000076D4(v14, qword_10177B810);
  sub_100F3A2F8(a1, v13, a4);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v26 = v18;
    *v17 = 141558275;
    *(v17 + 4) = 1752392040;
    *(v17 + 12) = 2081;
    v19 = *(v10 + 20);
    type metadata accessor for UUID();
    sub_100F3A180(&qword_101696930, &type metadata accessor for UUID);
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = v21;
    sub_100F3A500(v13, a5);
    v23 = sub_1000136BC(v20, v22, &v26);

    *(v17 + 14) = v23;
    _os_log_impl(&_mh_execute_header, v15, v16, a6, v17, 0x16u);
    sub_100007BAC(v18);
  }

  else
  {

    sub_100F3A500(v13, a5);
  }

  return sub_100B040D4();
}

uint64_t sub_100F12038(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[14] = a2;
  v3[15] = a3;
  v3[13] = a1;
  v4 = *(*(type metadata accessor for Endianness() - 8) + 64) + 15;
  v3[16] = swift_task_alloc();
  v5 = type metadata accessor for Date();
  v3[17] = v5;
  v6 = *(v5 - 8);
  v3[18] = v6;
  v7 = *(v6 + 64) + 15;
  v3[19] = swift_task_alloc();
  v8 = *(*(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8) + 64) + 15;
  v3[20] = swift_task_alloc();
  v9 = type metadata accessor for UUID();
  v3[21] = v9;
  v10 = *(v9 - 8);
  v3[22] = v10;
  v11 = *(v10 + 64) + 15;
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v12 = type metadata accessor for StandaloneBeacon();
  v3[25] = v12;
  v13 = *(v12 - 8);
  v3[26] = v13;
  v14 = *(v13 + 64) + 15;
  v3[27] = swift_task_alloc();
  v15 = type metadata accessor for ManagedCBPeripheralBeaconInfo();
  v3[28] = v15;
  v16 = *(v15 - 8);
  v3[29] = v16;
  v17 = *(v16 + 64) + 15;
  v3[30] = swift_task_alloc();
  v18 = type metadata accessor for SharedBeaconRecord(0);
  v3[31] = v18;
  v19 = *(v18 - 8);
  v3[32] = v19;
  v20 = *(v19 + 64) + 15;
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();

  return _swift_task_switch(sub_100F122E8, 0, 0);
}

uint64_t sub_100F122E8()
{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[13];
  v0[7] = _swiftEmptyArrayStorage;
  v4 = swift_allocObject();
  v0[35] = v4;
  v4[2] = v3;
  v4[3] = v1;
  v4[4] = v2;
  v5 = async function pointer to unsafeBlocking<A>(_:)[1];

  v6 = swift_task_alloc();
  v0[36] = v6;
  v7 = sub_1000BC4D4(&qword_101698C80, &unk_1013A23F0);
  v0[37] = v7;
  *v6 = v0;
  v6[1] = sub_100F12418;

  return unsafeBlocking<A>(_:)(v0 + 8, sub_100F3A090, v4, v7);
}

uint64_t sub_100F12418()
{
  v1 = *v0;
  v2 = *(*v0 + 288);
  v3 = *(*v0 + 280);
  v4 = *v0;

  v5 = v1[8];
  v1[9] = v5;
  v1[38] = v5;
  v6 = async function pointer to Sequence.asyncFilter(_:)[1];
  v7 = swift_task_alloc();
  v1[39] = v7;
  v8 = sub_1000041A4(&qword_10169F3A8, &qword_101698C80, &unk_1013A23F0);
  v1[40] = v8;
  *v7 = v4;
  v7[1] = sub_100F125D4;
  v9 = v1[37];

  return Sequence.asyncFilter(_:)(&unk_1013F3AB8, 0, v9, v8);
}

uint64_t sub_100F125D4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 312);
  v5 = *v2;
  *(*v2 + 328) = a1;

  if (v1)
  {
  }

  else
  {
    v7 = *(v3 + 304);

    return _swift_task_switch(sub_100F12714, 0, 0);
  }
}

uint64_t sub_100F12714()
{
  v1 = *(v0 + 120);
  v9 = *(v0 + 104);
  *(v0 + 80) = *(v0 + 328);
  v2 = swift_task_alloc();
  *(v0 + 336) = v2;
  *(v2 + 16) = v9;
  *(v2 + 32) = v1;
  v3 = async function pointer to Sequence.asyncCompactMap<A>(_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 344) = v4;
  *v4 = v0;
  v4[1] = sub_100F12804;
  v5 = *(v0 + 320);
  v6 = *(v0 + 296);
  v7 = *(v0 + 224);

  return Sequence.asyncCompactMap<A>(_:)(&unk_1013F3AC8, v2, v6, v7, v5);
}

uint64_t sub_100F12804(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 344);
  v6 = *v2;

  if (v1)
  {
  }

  else
  {
    v8 = v4[41];
    v9 = v4[42];

    v4[44] = a1;

    return _swift_task_switch(sub_100F12950, 0, 0);
  }
}

uint64_t sub_100F12950()
{
  sub_10039A8F4(v0[44]);
  My = type metadata accessor for Feature.FindMy();
  v0[5] = My;
  v0[6] = sub_100F3A180(&qword_1016AF950, &type metadata accessor for Feature.FindMy);
  v2 = sub_1000280DC(v0 + 2);
  (*(*(My - 8) + 104))(v2, enum case for Feature.FindMy.spPlaySoundAll(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100007BAC(v0 + 2);
  if (My)
  {
    v3 = v0[14];
    v4 = v0[15];
    v5 = v0[13];
    v6 = swift_allocObject();
    v0[45] = v6;
    v6[2] = v5;
    v6[3] = v3;
    v6[4] = v4;
    v7 = async function pointer to unsafeBlocking<A>(_:)[1];

    v8 = swift_task_alloc();
    v0[46] = v8;
    v9 = sub_1000BC4D4(&qword_101697720, &unk_101392640);
    v0[47] = v9;
    *v8 = v0;
    v8[1] = sub_100F12B90;

    return unsafeBlocking<A>(_:)(v0 + 11, sub_100F3A1C8, v6, v9);
  }

  else
  {
    v10 = async function pointer to daemon.getter[1];
    v11 = swift_task_alloc();
    v0[52] = v11;
    *v11 = v0;
    v11[1] = sub_100F13148;

    return daemon.getter();
  }
}

uint64_t sub_100F12B90()
{
  v1 = *(*v0 + 368);
  v2 = *(*v0 + 360);
  v4 = *v0;

  return _swift_task_switch(sub_100F12CA8, 0, 0);
}

uint64_t sub_100F12CA8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(v5 + 88);
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = 0;
    v10 = *(v5 + 248);
    v9 = *(v5 + 256);
    v25 = *(v6 + 16);
    v26 = *(v5 + 88);
    while (v8 < *(v6 + 16))
    {
      v11 = *(v5 + 272);
      v12 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v13 = *(v9 + 72);
      sub_100F3A2F8(v6 + v12 + v13 * v8, v11, type metadata accessor for SharedBeaconRecord);
      v14 = *(v11 + *(v10 + 44));
      v15 = *(v11 + *(v10 + 48));
      if (v14 == 76 && (v16 = v15 == 8233, v15 = 8233, !v16) || sub_100E0EA64(v14, v15))
      {
        a1 = sub_100F3A500(*(v5 + 272), type metadata accessor for SharedBeaconRecord);
      }

      else
      {
        sub_100F3A498(*(v5 + 272), *(v5 + 264), type metadata accessor for SharedBeaconRecord);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_10112421C(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v18 = _swiftEmptyArrayStorage[2];
        v17 = _swiftEmptyArrayStorage[3];
        if (v18 >= v17 >> 1)
        {
          sub_10112421C(v17 > 1, v18 + 1, 1);
        }

        v19 = *(v5 + 264);
        _swiftEmptyArrayStorage[2] = v18 + 1;
        a1 = sub_100F3A498(v19, _swiftEmptyArrayStorage + v12 + v18 * v13, type metadata accessor for SharedBeaconRecord);
        v7 = v25;
        v6 = v26;
      }

      if (v7 == ++v8)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:
    *(v5 + 384) = _swiftEmptyArrayStorage;
    v20 = *(v5 + 120);
    v27 = *(v5 + 104);

    *(v5 + 96) = _swiftEmptyArrayStorage;
    v21 = swift_task_alloc();
    *(v5 + 392) = v21;
    *(v21 + 16) = v27;
    *(v21 + 32) = v20;
    v22 = async function pointer to Sequence.asyncCompactMap<A>(_:)[1];
    v23 = swift_task_alloc();
    *(v5 + 400) = v23;
    a5 = sub_1000041A4(&qword_1016A78F8, &qword_101697720, &unk_101392640);
    *v23 = v5;
    v23[1] = sub_100F12F60;
    a3 = *(v5 + 376);
    a4 = *(v5 + 224);
    a1 = &unk_1013F3AE0;
    a2 = v21;
  }

  return Sequence.asyncCompactMap<A>(_:)(a1, a2, a3, a4, a5);
}

uint64_t sub_100F12F60(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 400);
  v6 = *v2;

  if (v1)
  {
  }

  else
  {
    v8 = v4[48];
    v9 = v4[49];

    v4[51] = a1;

    return _swift_task_switch(sub_100F130AC, 0, 0);
  }
}

uint64_t sub_100F130AC()
{
  sub_10039A8F4(*(v0 + 408));
  v1 = async function pointer to daemon.getter[1];
  v2 = swift_task_alloc();
  *(v0 + 416) = v2;
  *v2 = v0;
  v2[1] = sub_100F13148;

  return daemon.getter();
}

uint64_t sub_100F13148(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 416);
  v12 = *v1;
  *(v3 + 424) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 432) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for StandaloneBeaconService();
  v9 = sub_100F3A180(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100F3A180(&qword_10169F450, type metadata accessor for StandaloneBeaconService);
  *v6 = v12;
  v6[1] = sub_100F13324;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100F13324(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 432);
  v6 = *v2;
  v4[55] = a1;
  v4[56] = v1;

  if (v1)
  {
    v7 = sub_100F13A8C;
    v8 = 0;
  }

  else
  {
    v9 = v4[53];

    v7 = sub_100F1345C;
    v8 = a1;
  }

  return _swift_task_switch(v7, v8, 0);
}

uint64_t sub_100F1345C()
{
  v1 = v0[56];
  sub_100F855A4(*(v0[55] + 128));
  v0[57] = v1;
  if (v1)
  {
    v2 = sub_100F1399C;
  }

  else
  {
    v0[58] = dispatch thunk of _AnySequenceBox.__copyToContiguousArray()();

    v2 = sub_100F134FC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100F134FC()
{
  v1 = *(v0 + 464);
  v2 = *(v1 + 16);
  if (!v2)
  {
    v39 = *(v0 + 464);

    v6 = _swiftEmptyArrayStorage;
LABEL_23:
    v40 = *(v0 + 440);
    sub_10039A8F4(v6);

    v42 = *(v0 + 264);
    v41 = *(v0 + 272);
    v43 = *(v0 + 240);
    v44 = *(v0 + 216);
    v46 = *(v0 + 184);
    v45 = *(v0 + 192);
    v48 = *(v0 + 152);
    v47 = *(v0 + 160);
    v49 = *(v0 + 128);
    v50 = *(v0 + 56);

    v51 = *(v0 + 8);

    return v51(v50);
  }

  v55 = *(v0 + 224);
  v56 = *(v0 + 232);
  v3 = *(v0 + 208);
  v67 = *(v0 + 200);
  v4 = *(v0 + 176);
  v5 = *(v0 + 144);
  sub_1011254EC(0, v2, 0);
  v6 = _swiftEmptyArrayStorage;
  v7 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v58 = (v4 + 56);
  v59 = (v4 + 16);
  v57 = (v5 + 16);
  v53 = (v4 + 32);
  v54 = *(v3 + 72);
  v52 = (v5 + 32);
  while (1)
  {
    v65 = v6;
    v66 = v2;
    v8 = *(v0 + 216);
    v10 = *(v0 + 184);
    v9 = *(v0 + 192);
    v12 = *(v0 + 160);
    v11 = *(v0 + 168);
    v13 = *(v0 + 152);
    v14 = *(v0 + 136);
    v64 = v7;
    sub_100F3A2F8(v7, v8, type metadata accessor for StandaloneBeacon);
    v15 = getuid();
    sub_1000294F0(v15);
    (*v59)(v10, v8, v11);
    (*v58)(v12, 1, 1, v11);
    result = (*v57)(v13, v8 + v67[8], v14);
    v17 = (v8 + v67[9]);
    v18 = *v17;
    v19 = v17[1] >> 62;
    if (v19 > 1)
    {
      break;
    }

    if (v19)
    {
      LODWORD(v23) = HIDWORD(v18) - v18;
      if (__OFSUB__(HIDWORD(v18), v18))
      {
        goto LABEL_27;
      }

      v23 = v23;
      goto LABEL_12;
    }

LABEL_14:
    v24 = *(v0 + 128);
    Data.subdata(in:)();
    static Endianness.current.getter();
    sub_10012BF24();
    result = FixedWidthInteger.init(data:ofEndianness:)();
    if (*(v0 + 476))
    {
      v25 = 0;
    }

    else
    {
      v25 = *(v0 + 472);
    }

    if (v25 < 0)
    {
      goto LABEL_26;
    }

    v26 = *(v0 + 240);
    v63 = *(v0 + 216);
    v27 = *(v0 + 184);
    v29 = *(v0 + 160);
    v28 = *(v0 + 168);
    v60 = *(v0 + 136);
    v61 = *(v0 + 152);
    v30 = (v63 + v67[7]);
    v31 = v30[1];
    v62 = *v30;
    v32 = *v53;
    (*v53)(v26, *(v0 + 192), v28);
    v32(v26 + v55[5], v27, v28);
    sub_10012C154(v29, v26 + v55[6]);
    (*v52)(v26 + v55[7], v61, v60);
    v33 = (v26 + v55[8]);
    *v33 = 0;
    v33[1] = 0xE000000000000000;
    *(v26 + v55[9]) = v25;
    v34 = (v26 + v55[10]);
    *v34 = v62;
    v34[1] = v31;
    *(v26 + v55[11]) = 0;
    *(v26 + v55[12]) = 2;

    sub_100F3A500(v63, type metadata accessor for StandaloneBeacon);
    v6 = v65;
    v36 = v65[2];
    v35 = v65[3];
    if (v36 >= v35 >> 1)
    {
      sub_1011254EC(v35 > 1, v36 + 1, 1);
      v6 = v65;
    }

    v37 = *(v0 + 240);
    v6[2] = v36 + 1;
    sub_100F3A498(v37, v6 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v36, type metadata accessor for ManagedCBPeripheralBeaconInfo);
    v7 = v64 + v54;
    v2 = v66 - 1;
    if (v66 == 1)
    {
      v38 = *(v0 + 464);

      goto LABEL_23;
    }
  }

  if (v19 != 2)
  {
    goto LABEL_14;
  }

  v21 = *(v18 + 16);
  v20 = *(v18 + 24);
  v22 = __OFSUB__(v20, v21);
  v23 = v20 - v21;
  if (v22)
  {
    goto LABEL_28;
  }

LABEL_12:
  if (v23 >= -1)
  {
    goto LABEL_14;
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_100F1399C()
{
  v1 = v0[57];
  v2 = v0[55];

  v4 = v0[33];
  v3 = v0[34];
  v5 = v0[30];
  v6 = v0[27];
  v8 = v0[23];
  v7 = v0[24];
  v10 = v0[19];
  v9 = v0[20];
  v11 = v0[16];
  v12 = v0[7];

  v13 = v0[1];

  return v13(v12);
}

uint64_t sub_100F13A8C()
{
  v1 = v0[56];
  v2 = v0[53];

  v4 = v0[33];
  v3 = v0[34];
  v5 = v0[30];
  v6 = v0[27];
  v8 = v0[23];
  v7 = v0[24];
  v10 = v0[19];
  v9 = v0[20];
  v11 = v0[16];
  v12 = v0[7];

  v13 = v0[1];

  return v13(v12);
}

uint64_t sub_100F13B7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[15] = a4;
  v5[16] = a5;
  v5[13] = a2;
  v5[14] = a3;
  v5[12] = a1;
  v6 = type metadata accessor for OwnedBeaconRecord();
  v5[17] = v6;
  v7 = *(v6 - 8);
  v5[18] = v7;
  v5[19] = *(v7 + 64);
  v5[20] = swift_task_alloc();
  v8 = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  v5[21] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v5[22] = swift_task_alloc();
  v10 = type metadata accessor for OwnedBeaconGroup(0);
  v5[23] = v10;
  v11 = *(v10 - 8);
  v5[24] = v11;
  v12 = *(v11 + 64) + 15;
  v5[25] = swift_task_alloc();
  v13 = *(*(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8) + 64) + 15;
  v5[26] = swift_task_alloc();
  v14 = type metadata accessor for UUID();
  v5[27] = v14;
  v15 = *(v14 - 8);
  v5[28] = v15;
  v5[29] = *(v15 + 64);
  v5[30] = swift_task_alloc();
  v5[31] = swift_task_alloc();
  v16 = type metadata accessor for StableIdentifier();
  v5[32] = v16;
  v17 = *(*(v16 - 8) + 64) + 15;
  v5[33] = swift_task_alloc();
  v5[34] = swift_task_alloc();
  v5[35] = swift_task_alloc();

  return _swift_task_switch(sub_100F13DD4, 0, 0);
}

uint64_t sub_100F13DD4()
{
  v102 = v0;
  v1 = *(v0 + 272);
  v2 = *(v0 + 280);
  v3 = *(v0 + 256);
  sub_100F3A2F8(*(v0 + 104) + *(*(v0 + 136) + 24), v2, type metadata accessor for StableIdentifier);
  sub_100F3A2F8(v2, v1, type metadata accessor for StableIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v38 = *(v0 + 272);
      v39 = v38[1];
      v40 = v38[3];
      v25 = v38[4];
      v26 = v38[5];

      v12 = 0;
      goto LABEL_17;
    }

LABEL_7:
    v18 = *(v0 + 272);
    v19 = *(v0 + 96);
    sub_100F3A500(*(v0 + 280), type metadata accessor for StableIdentifier);
    sub_100F3A500(v18, type metadata accessor for StableIdentifier);
LABEL_29:
    v88 = type metadata accessor for ManagedCBPeripheralBeaconInfo();
    (*(*(v88 - 8) + 56))(v19, 1, 1, v88);
    v90 = *(v0 + 272);
    v89 = *(v0 + 280);
    v91 = *(v0 + 264);
    v93 = *(v0 + 240);
    v92 = *(v0 + 248);
    v95 = *(v0 + 200);
    v94 = *(v0 + 208);
    v96 = *(v0 + 176);
    v97 = *(v0 + 160);

    v98 = *(v0 + 8);

    return v98();
  }

  if (EnumCaseMultiPayload == 2)
  {
    v20 = *(v0 + 272);
    v21 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
    v22 = *(v20 + v21[12] + 8);

    v23 = *(v20 + v21[16] + 8);

    v24 = (v20 + v21[20]);
    v25 = *v24;
    v26 = v24[1];
    v27 = (v20 + v21[24]);
    v28 = *v27;
    v29 = v27[1];
    v30 = *(v20 + v21[28] + 8);

    *(v0 + 64) = v25;
    *(v0 + 72) = v26;
    sub_1000DF96C();

    v31 = Data.init<A>(hexString:)();
    if (v32 >> 60 != 15)
    {
      *(v0 + 80) = v31;
      *(v0 + 88) = v32;
      v33 = v31;
      v34 = v32;
      sub_1000E0A3C();
      v35 = DataProtocol.nullTerminatedUTF8String.getter();
      v37 = v36;
      sub_100006654(v33, v34);
      if (v37)
      {

        v25 = v35;
        v26 = v37;
      }
    }

    if (v29)
    {
      v12 = 0;
    }

    else
    {
      v12 = v28;
    }

    (*(*(v0 + 224) + 8))(*(v0 + 272), *(v0 + 216));
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload != 3)
  {
    goto LABEL_7;
  }

  v5 = *(v0 + 272);
  v6 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);
  v7 = *(v5 + v6[12] + 8);

  v8 = *(v5 + v6[16] + 8);

  v9 = (v5 + v6[20]);
  v11 = *v9;
  v10 = v9[1];
  v12 = *(v5 + v6[24]);
  *(v0 + 16) = v11;
  *(v0 + 24) = v10;
  sub_1000DF96C();
  v13 = Data.init<A>(hexString:)();
  v15 = *(v0 + 272);
  v16 = *(v0 + 216);
  v17 = *(v0 + 224);
  if (v14 >> 60 == 15)
  {
    (*(v17 + 8))(*(v0 + 272), *(v0 + 216));
LABEL_23:
    if (qword_101694B98 != -1)
    {
      swift_once();
    }

    v74 = *(v0 + 280);
    v75 = *(v0 + 264);
    v76 = type metadata accessor for Logger();
    sub_1000076D4(v76, qword_10177B810);
    sub_100F3A2F8(v74, v75, type metadata accessor for StableIdentifier);
    v77 = Logger.logObject.getter();
    v78 = static os_log_type_t.error.getter();
    v79 = os_log_type_enabled(v77, v78);
    v80 = *(v0 + 280);
    v81 = *(v0 + 264);
    if (v79)
    {
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v101 = v83;
      *v82 = 141558275;
      *(v82 + 4) = 1752392040;
      *(v82 + 12) = 2081;
      v84 = sub_1010DA578();
      v86 = v85;
      sub_100F3A500(v81, type metadata accessor for StableIdentifier);
      v87 = sub_1000136BC(v84, v86, &v101);

      *(v82 + 14) = v87;
      _os_log_impl(&_mh_execute_header, v77, v78, "Excluded invalid serial %{private,mask.hash}s", v82, 0x16u);
      sub_100007BAC(v83);
    }

    else
    {

      sub_100F3A500(v81, type metadata accessor for StableIdentifier);
    }

    sub_100F3A500(v80, type metadata accessor for StableIdentifier);
    v19 = *(v0 + 96);
    goto LABEL_29;
  }

  *(v0 + 32) = v13;
  *(v0 + 40) = v14;
  v41 = v13;
  v42 = v14;
  sub_1000E0A3C();
  v25 = DataProtocol.nullTerminatedUTF8String.getter();
  v26 = v43;
  sub_100006654(v41, v42);
  (*(v17 + 8))(v15, v16);
  if (!v26)
  {
    goto LABEL_23;
  }

LABEL_17:
  *(v0 + 340) = v12;
  *(v0 + 288) = v25;
  *(v0 + 296) = v26;
  v44 = *(v0 + 216);
  v45 = *(v0 + 224);
  v46 = *(v0 + 208);
  v47 = *(v0 + 104);
  v48 = *(*(v0 + 136) + 28);
  *(v0 + 336) = v48;
  sub_1000D2A70(v47 + v48, v46, &qword_1016980D0, &unk_10138F3B0);
  if ((*(v45 + 48))(v46, 1, v44) == 1)
  {
    v50 = *(v0 + 120);
    v49 = *(v0 + 128);
    sub_10000B3A8(*(v0 + 208), &qword_1016980D0, &unk_10138F3B0);
    v51 = *(v0 + 160);
    v52 = *(v0 + 144);
    v54 = *(v0 + 120);
    v53 = *(v0 + 128);
    v55 = *(v0 + 112);
    sub_100F3A2F8(*(v0 + 104), v51, type metadata accessor for OwnedBeaconRecord);
    v56 = (*(v52 + 80) + 40) & ~*(v52 + 80);
    v57 = swift_allocObject();
    *(v0 + 320) = v57;
    v57[2] = v55;
    v57[3] = v54;
    v57[4] = v53;
    sub_100F3A498(v51, v57 + v56, type metadata accessor for OwnedBeaconRecord);
    v58 = async function pointer to unsafeBlocking<A>(_:)[1];

    v59 = swift_task_alloc();
    *(v0 + 328) = v59;
    v60 = sub_1000BC4D4(&qword_1016A0AC0, &unk_1013926A0);
    *v59 = v0;
    v59[1] = sub_100F14BB4;
    v61 = sub_100F3A360;
    v62 = v0 + 48;
  }

  else
  {
    v63 = *(v0 + 240);
    v64 = *(v0 + 248);
    v65 = *(v0 + 224);
    v100 = *(v0 + 232);
    v66 = *(v0 + 216);
    v68 = *(v0 + 120);
    v67 = *(v0 + 128);
    v69 = *(v0 + 112);
    v70 = *(v65 + 32);
    v70(v64, *(v0 + 208), v66);
    (*(v65 + 16))(v63, v64, v66);
    v71 = (*(v65 + 80) + 40) & ~*(v65 + 80);
    v57 = swift_allocObject();
    *(v0 + 304) = v57;
    v57[2] = v69;
    v57[3] = v68;
    v57[4] = v67;
    v70(v57 + v71, v63, v66);
    v72 = async function pointer to unsafeBlocking<A>(_:)[1];

    v73 = swift_task_alloc();
    *(v0 + 312) = v73;
    *v73 = v0;
    v73[1] = sub_100F14658;
    v60 = *(v0 + 168);
    v62 = *(v0 + 176);
    v61 = sub_100F3A42C;
  }

  return unsafeBlocking<A>(_:)(v62, v61, v57, v60);
}

uint64_t sub_100F14658()
{
  v1 = *(*v0 + 312);
  v2 = *(*v0 + 304);
  v4 = *v0;

  return _swift_task_switch(sub_100F14770, 0, 0);
}

uint64_t sub_100F14770()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 192);
  v3 = *(v0 + 176);
  (*(*(v0 + 224) + 8))(*(v0 + 248), *(v0 + 216));
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10000B3A8(*(v0 + 176), &unk_1016AF8B0, &unk_1013A0700);
    v5 = *(v0 + 120);
    v4 = *(v0 + 128);
    v6 = *(v0 + 160);
    v7 = *(v0 + 144);
    v8 = *(v0 + 112);
    sub_100F3A2F8(*(v0 + 104), v6, type metadata accessor for OwnedBeaconRecord);
    v9 = (*(v7 + 80) + 40) & ~*(v7 + 80);
    v10 = swift_allocObject();
    *(v0 + 320) = v10;
    v10[2] = v8;
    v10[3] = v5;
    v10[4] = v4;
    sub_100F3A498(v6, v10 + v9, type metadata accessor for OwnedBeaconRecord);
    v11 = async function pointer to unsafeBlocking<A>(_:)[1];

    v12 = swift_task_alloc();
    *(v0 + 328) = v12;
    v13 = sub_1000BC4D4(&qword_1016A0AC0, &unk_1013926A0);
    *v12 = v0;
    v12[1] = sub_100F14BB4;
    v14 = sub_100F3A360;
    v15 = v0 + 48;
    v16 = v10;

    return unsafeBlocking<A>(_:)(v15, v14, v16, v13);
  }

  v17 = *(v0 + 200);
  v18 = *(v0 + 184);
  sub_100F3A498(*(v0 + 176), v17, type metadata accessor for OwnedBeaconGroup);
  v19 = (v17 + *(v18 + 36));
  v20 = v19[1];
  v52 = *v19;

  sub_100F3A500(v17, type metadata accessor for OwnedBeaconGroup);
  v21 = *(v0 + 336);
  v22 = *(v0 + 280);
  v23 = *(v0 + 216);
  v24 = *(v0 + 224);
  v25 = *(v0 + 136);
  v26 = *(v0 + 96);
  v27 = *(v0 + 104);
  v28 = getuid();
  sub_1000294F0(v28);
  sub_100F3A500(v22, type metadata accessor for StableIdentifier);
  v29 = v25[5];
  v30 = type metadata accessor for ManagedCBPeripheralBeaconInfo();
  (*(v24 + 16))(v26 + v30[5], v27 + v29, v23);
  sub_1000D2A70(v27 + v21, v26 + v30[6], &qword_1016980D0, &unk_10138F3B0);
  v31 = v25[8];
  v32 = v30[7];
  v33 = type metadata accessor for Date();
  v15 = (*(*(v33 - 8) + 16))(v26 + v32, v27 + v31, v33);
  v34 = *(v27 + v25[16]);
  if (v34 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v34 > 0x7FFFFFFF)
  {
LABEL_11:
    __break(1u);
    return unsafeBlocking<A>(_:)(v15, v14, v16, v13);
  }

  v35 = *(v0 + 340);
  v37 = *(v0 + 288);
  v36 = *(v0 + 296);
  v38 = *(v0 + 96);
  v39 = (v38 + v30[8]);
  *v39 = v52;
  v39[1] = v20;
  *(v38 + v30[9]) = v34;
  v40 = (v38 + v30[10]);
  *v40 = v37;
  v40[1] = v36;
  *(v38 + v30[11]) = 1;
  *(v38 + v30[12]) = v35;
  (*(*(v30 - 1) + 56))();
  v42 = *(v0 + 272);
  v41 = *(v0 + 280);
  v43 = *(v0 + 264);
  v45 = *(v0 + 240);
  v44 = *(v0 + 248);
  v47 = *(v0 + 200);
  v46 = *(v0 + 208);
  v48 = *(v0 + 176);
  v49 = *(v0 + 160);

  v50 = *(v0 + 8);

  return v50();
}

uint64_t sub_100F14BB4()
{
  v1 = *(*v0 + 328);
  v2 = *(*v0 + 320);
  v4 = *v0;

  return _swift_task_switch(sub_100F14CCC, 0, 0);
}

uint64_t sub_100F14CCC()
{
  v1 = *(v0 + 56);
  v35 = *(v0 + 48);
  v2 = *(v0 + 336);
  v3 = *(v0 + 280);
  v4 = *(v0 + 216);
  v5 = *(v0 + 224);
  v6 = *(v0 + 136);
  v7 = *(v0 + 96);
  v8 = *(v0 + 104);
  v9 = getuid();
  sub_1000294F0(v9);
  sub_100F3A500(v3, type metadata accessor for StableIdentifier);
  v10 = v6[5];
  v11 = type metadata accessor for ManagedCBPeripheralBeaconInfo();
  (*(v5 + 16))(v7 + v11[5], v8 + v10, v4);
  sub_1000D2A70(v8 + v2, v7 + v11[6], &qword_1016980D0, &unk_10138F3B0);
  v12 = v6[8];
  v13 = v11[7];
  v14 = type metadata accessor for Date();
  result = (*(*(v14 - 8) + 16))(v7 + v13, v8 + v12, v14);
  v16 = *(v8 + v6[16]);
  if (v16 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v16 > 0x7FFFFFFF)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v17 = 0xE700000000000000;
  if (v1)
  {
    v17 = v1;
  }

  v18 = 0x6E776F6E6B6E55;
  if (v1)
  {
    v18 = v35;
  }

  v19 = *(v0 + 340);
  v21 = *(v0 + 288);
  v20 = *(v0 + 296);
  v22 = *(v0 + 96);
  v23 = (v22 + v11[8]);
  *v23 = v18;
  v23[1] = v17;
  *(v22 + v11[9]) = v16;
  v24 = (v22 + v11[10]);
  *v24 = v21;
  v24[1] = v20;
  *(v22 + v11[11]) = 1;
  *(v22 + v11[12]) = v19;
  (*(*(v11 - 1) + 56))();
  v26 = *(v0 + 272);
  v25 = *(v0 + 280);
  v27 = *(v0 + 264);
  v29 = *(v0 + 240);
  v28 = *(v0 + 248);
  v31 = *(v0 + 200);
  v30 = *(v0 + 208);
  v32 = *(v0 + 176);
  v33 = *(v0 + 160);

  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_100F14F3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  v6 = type metadata accessor for SharedBeaconRecord(0);
  v5[9] = v6;
  v7 = *(v6 - 8);
  v5[10] = v7;
  v5[11] = *(v7 + 64);
  v5[12] = swift_task_alloc();

  return _swift_task_switch(sub_100F1500C, 0, 0);
}

uint64_t sub_100F1500C()
{
  v1 = v0[12];
  v2 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  sub_100F3A2F8(v0[5], v1, type metadata accessor for SharedBeaconRecord);
  v6 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v7 = swift_allocObject();
  v0[13] = v7;
  v7[2] = v5;
  v7[3] = v4;
  v7[4] = v3;
  sub_100F3A498(v1, v7 + v6, type metadata accessor for SharedBeaconRecord);
  v8 = async function pointer to unsafeBlocking<A>(_:)[1];

  v9 = swift_task_alloc();
  v0[14] = v9;
  v10 = sub_1000BC4D4(&qword_1016A0AC0, &unk_1013926A0);
  *v9 = v0;
  v9[1] = sub_100F1517C;

  return unsafeBlocking<A>(_:)(v0 + 2, sub_100F3A2B8, v7, v10);
}

uint64_t sub_100F1517C()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 104);
  v4 = *v0;

  return _swift_task_switch(sub_100F15294, 0, 0);
}

int *sub_100F15294()
{
  v1 = v0[9];
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[3];
  v22 = v0[2];
  v5 = getuid();
  sub_1000294F0(v5);
  v6 = *(v1 + 20);
  v7 = type metadata accessor for ManagedCBPeripheralBeaconInfo();
  v8 = v7[5];
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v3 + v8, v2 + v6, v9);
  (*(v10 + 56))(v3 + v7[6], 1, 1, v9);
  result = sub_100A8AD0C(v3 + v7[7]);
  v12 = *(v2 + *(v1 + 44));
  if (v12 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v12 > 0x7FFFFFFF)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v13 = v0[12];
  v14 = v0[4];
  if (v4)
  {
    v15 = v4;
  }

  else
  {
    v15 = 0xE700000000000000;
  }

  if (v4)
  {
    v16 = v22;
  }

  else
  {
    v16 = 0x6E776F6E6B6E55;
  }

  v17 = UUID.uuidString.getter();
  v18 = (v14 + v7[8]);
  *v18 = v16;
  v18[1] = v15;
  *(v14 + v7[9]) = v12;
  v19 = (v14 + v7[10]);
  *v19 = v17;
  v19[1] = v20;
  *(v14 + v7[11]) = 1;
  *(v14 + v7[12]) = 0;
  (*(*(v7 - 1) + 56))(v14, 0, 1, v7);

  v21 = v0[1];

  return v21();
}

uint64_t sub_100F15494@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t (*a3)(void)@<X4>, void *a4@<X8>)
{
  v8 = sub_1000BC4D4(&unk_1016B29E0, &unk_1013B70E0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v19[-v10];
  v12 = a2 + *(a3(0) + 20);
  v13 = *(a1 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_cachedBeaconRecordsQueueSynchronizer);
  v20 = a1;
  v21 = v12;
  QueueSynchronizer.conditionalSync<A>(_:)();
  v14 = type metadata accessor for BeaconNamingRecord();
  if ((*(*(v14 - 8) + 48))(v11, 1, v14) == 1)
  {
    result = sub_10000B3A8(v11, &unk_1016B29E0, &unk_1013B70E0);
    v16 = 0;
    v17 = 0;
  }

  else
  {
    v18 = &v11[*(v14 + 32)];
    v16 = *v18;
    v17 = v18[1];

    result = sub_100F3A500(v11, type metadata accessor for BeaconNamingRecord);
  }

  *a4 = v16;
  a4[1] = v17;
  return result;
}

uint64_t sub_100F15614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for Date();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();
  v9 = type metadata accessor for BeaconIdentifier();
  v5[10] = v9;
  v10 = *(v9 - 8);
  v5[11] = v10;
  v5[12] = *(v10 + 64);
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  v11 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v5[17] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v5[18] = swift_task_alloc();
  v13 = type metadata accessor for OwnedBeaconRecord();
  v5[19] = v13;
  v14 = *(v13 - 8);
  v5[20] = v14;
  v15 = *(v14 + 64) + 15;
  v5[21] = swift_task_alloc();

  return _swift_task_switch(sub_100F157FC, 0, 0);
}

uint64_t sub_100F157FC()
{
  v1 = v0[16];
  v3 = v0[11];
  v2 = v0[12];
  v5 = v0[5];
  v4 = v0[6];
  v6 = v0[4];
  sub_100F3A2F8(v0[3], v1, type metadata accessor for BeaconIdentifier);
  v7 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v8 = swift_allocObject();
  v0[22] = v8;
  v8[2] = v6;
  v8[3] = v5;
  v8[4] = v4;
  sub_100F3A498(v1, v8 + v7, type metadata accessor for BeaconIdentifier);
  v9 = async function pointer to unsafeBlocking<A>(_:)[1];

  v10 = swift_task_alloc();
  v0[23] = v10;
  *v10 = v0;
  v10[1] = sub_100F15954;
  v12 = v0[17];
  v11 = v0[18];

  return unsafeBlocking<A>(_:)(v11, sub_100F32F24, v8, v12);
}

uint64_t sub_100F15954()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 176);
  v4 = *v0;

  return _swift_task_switch(sub_100F15A6C, 0, 0);
}

uint64_t sub_100F15A6C()
{
  v40 = v0;
  v1 = v0[18];
  if ((*(v0[20] + 48))(v1, 1, v0[19]) == 1)
  {
    sub_10000B3A8(v1, &unk_1016A9A20, &qword_10138B280);
    if (qword_101694B98 != -1)
    {
      swift_once();
    }

    v2 = v0[13];
    v3 = v0[3];
    v4 = type metadata accessor for Logger();
    sub_1000076D4(v4, qword_10177B810);
    sub_100F3A2F8(v3, v2, type metadata accessor for BeaconIdentifier);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    v7 = os_log_type_enabled(v5, v6);
    v8 = v0[13];
    if (v7)
    {
      v9 = v0[10];
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v37 = v11;
      *v10 = 141558275;
      *(v10 + 4) = 1752392040;
      *(v10 + 12) = 2081;
      type metadata accessor for UUID();
      sub_100F3A180(&qword_101696930, &type metadata accessor for UUID);
      v38 = dispatch thunk of CustomStringConvertible.description.getter();
      v39 = v12;
      v13._countAndFlagsBits = 47;
      v13._object = 0xE100000000000000;
      String.append(_:)(v13);
      v14 = v8 + *(v9 + 20);
      v15._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v15);

      sub_100F3A500(v8, type metadata accessor for BeaconIdentifier);
      v16 = sub_1000136BC(v38, v39, &v37);

      *(v10 + 14) = v16;
      _os_log_impl(&_mh_execute_header, v5, v6, "beaconInfo: no beacon record for %{private,mask.hash}s. Looking up standalone beacons...", v10, 0x16u);
      sub_100007BAC(v11);
    }

    else
    {

      sub_100F3A500(v8, type metadata accessor for BeaconIdentifier);
    }

    v32 = async function pointer to daemon.getter[1];
    v33 = swift_task_alloc();
    v0[25] = v33;
    *v33 = v0;
    v33[1] = sub_100F16384;

    return daemon.getter();
  }

  else
  {
    sub_100F3A498(v1, v0[21], type metadata accessor for OwnedBeaconRecord);
    if (qword_101694B98 != -1)
    {
      swift_once();
    }

    v17 = v0[15];
    v18 = v0[3];
    v19 = type metadata accessor for Logger();
    sub_1000076D4(v19, qword_10177B810);
    sub_100F3A2F8(v18, v17, type metadata accessor for BeaconIdentifier);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    v22 = os_log_type_enabled(v20, v21);
    v23 = v0[15];
    if (v22)
    {
      v24 = v0[10];
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v37 = v26;
      *v25 = 141558275;
      *(v25 + 4) = 1752392040;
      *(v25 + 12) = 2081;
      type metadata accessor for UUID();
      sub_100F3A180(&qword_101696930, &type metadata accessor for UUID);
      v38 = dispatch thunk of CustomStringConvertible.description.getter();
      v39 = v27;
      v28._countAndFlagsBits = 47;
      v28._object = 0xE100000000000000;
      String.append(_:)(v28);
      v29 = v23 + *(v24 + 20);
      v30._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v30);

      sub_100F3A500(v23, type metadata accessor for BeaconIdentifier);
      v31 = sub_1000136BC(v38, v39, &v37);

      *(v25 + 14) = v31;
      _os_log_impl(&_mh_execute_header, v20, v21, "beaconInfo: found beacon record for %{private,mask.hash}s!", v25, 0x16u);
      sub_100007BAC(v26);
    }

    else
    {

      sub_100F3A500(v23, type metadata accessor for BeaconIdentifier);
    }

    v34 = swift_task_alloc();
    v0[24] = v34;
    *v34 = v0;
    v34[1] = sub_100F1603C;
    v35 = v0[21];

    return sub_100D5F8B4();
  }
}

uint64_t sub_100F1603C(char a1)
{
  v2 = *(*v1 + 192);
  v4 = *v1;
  *(*v1 + 256) = a1;

  return _swift_task_switch(sub_100F1613C, 0, 0);
}

uint64_t sub_100F1613C()
{
  v33 = *(v0 + 256);
  v1 = *(v0 + 168);
  v2 = *(v0 + 152);
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  v32 = v4;
  v5 = *(v0 + 56);
  v30 = *(v0 + 112);
  v31 = v5;
  v6 = *(v0 + 16);
  sub_100F3A2F8(*(v0 + 24), v30, type metadata accessor for BeaconIdentifier);
  (*(v3 + 16))(v4, v1 + v2[8], v5);
  v7 = (v1 + v2[12]);
  v9 = *v7;
  v8 = v7[1];
  v10 = v2[10];
  v11 = (v1 + v2[9]);
  v12 = *v11;
  v13 = v11[1];
  v14 = *(v1 + v10);
  v15 = *(v1 + v10 + 8);
  sub_100017D5C(v9, v8);
  sub_100017D5C(v12, v13);
  sub_10002E98C(v14, v15);
  sub_100F3A500(v1, type metadata accessor for OwnedBeaconRecord);
  if (v33)
  {
    v16 = 2;
  }

  else
  {
    v16 = 0;
  }

  v34 = v16;
  sub_100F3A498(v30, v6, type metadata accessor for BeaconIdentifier);
  v17 = type metadata accessor for KeyGenerationBeaconInfo();
  (*(v3 + 32))(v6 + v17[5], v32, v31);
  v18 = v6 + v17[6];
  *&v19 = v9;
  *(&v19 + 1) = v8;
  *&v20 = v12;
  *(&v20 + 1) = v13;
  *v18 = v19;
  *(v18 + 16) = v20;
  *(v18 + 32) = v14;
  *(v18 + 40) = v15;
  *(v6 + v17[7]) = v34;
  (*(*(v17 - 1) + 56))(v6, 0, 1, v17);
  v21 = *(v0 + 168);
  v22 = *(v0 + 144);
  v24 = *(v0 + 120);
  v23 = *(v0 + 128);
  v26 = *(v0 + 104);
  v25 = *(v0 + 112);
  v27 = *(v0 + 72);

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_100F16384(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 200);
  v12 = *v1;
  *(v3 + 208) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 216) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for BeaconKeyService();
  v9 = sub_100F3A180(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100F3A180(&unk_1016B1090, type metadata accessor for BeaconKeyService);
  *v6 = v12;
  v6[1] = sub_100F16560;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100F16560(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 216);
  v6 = *v2;
  v4[28] = a1;
  v4[29] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_100F168BC, 0, 0);
  }

  else
  {
    v7 = v4[26];

    v8 = swift_task_alloc();
    v4[30] = v8;
    *v8 = v6;
    v8[1] = sub_100F166EC;
    v9 = v4[2];
    v10 = v4[3];

    return sub_10098F404(v9, v10);
  }
}

uint64_t sub_100F166EC()
{
  v2 = *(*v1 + 240);
  v5 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v3 = sub_100F16984;
  }

  else
  {
    v3 = sub_100F16800;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100F16800()
{
  v1 = v0[28];

  v2 = v0[21];
  v3 = v0[18];
  v5 = v0[15];
  v4 = v0[16];
  v7 = v0[13];
  v6 = v0[14];
  v8 = v0[9];

  v9 = v0[1];

  return v9();
}

uint64_t sub_100F168BC()
{
  v1 = v0[29];
  v2 = v0[26];
  v3 = v0[21];
  v4 = v0[18];
  v6 = v0[15];
  v5 = v0[16];
  v8 = v0[13];
  v7 = v0[14];
  v9 = v0[9];

  v10 = v0[1];

  return v10();
}

uint64_t sub_100F16984()
{
  v1 = v0[31];
  v2 = v0[28];
  v3 = v0[21];
  v4 = v0[18];
  v6 = v0[15];
  v5 = v0[16];
  v8 = v0[13];
  v7 = v0[14];
  v9 = v0[9];

  v10 = v0[1];

  return v10();
}

uint64_t sub_100F16A4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v9 = type metadata accessor for BeaconIdentifier();
  v4[3] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v4[4] = swift_task_alloc();
  v11 = *(*(sub_1000BC4D4(&qword_10169E368, &qword_1013D6690) - 8) + 64) + 15;
  v12 = swift_task_alloc();
  v4[5] = v12;
  v13 = type metadata accessor for KeyGenerationBeaconInfo();
  v4[6] = v13;
  v14 = *(v13 - 8);
  v4[7] = v14;
  v15 = *(v14 + 64) + 15;
  v4[8] = swift_task_alloc();
  v16 = swift_task_alloc();
  v4[9] = v16;
  *v16 = v4;
  v16[1] = sub_100F16BDC;

  return sub_100F15614(v12, a1, a2, a3, a4);
}

uint64_t sub_100F16BDC()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_100F174BC;
  }

  else
  {
    v3 = sub_100F16CF0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100F16CF0()
{
  v31 = v0;
  v1 = v0[6];
  v2 = v0[5];
  if ((*(v0[7] + 48))(v2, 1, v1) == 1)
  {
    sub_10000B3A8(v2, &qword_10169E368, &qword_1013D6690);
    if (qword_101694B98 != -1)
    {
      swift_once();
    }

    v3 = v0[4];
    v4 = v0[2];
    v5 = type metadata accessor for Logger();
    sub_1000076D4(v5, qword_10177B810);
    sub_100F3A2F8(v4, v3, type metadata accessor for BeaconIdentifier);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[4];
    if (v8)
    {
      v10 = v0[3];
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v28 = v12;
      *v11 = 141558275;
      *(v11 + 4) = 1752392040;
      *(v11 + 12) = 2081;
      type metadata accessor for UUID();
      sub_100F3A180(&qword_101696930, &type metadata accessor for UUID);
      v29 = dispatch thunk of CustomStringConvertible.description.getter();
      v30 = v13;
      v14._countAndFlagsBits = 47;
      v14._object = 0xE100000000000000;
      String.append(_:)(v14);
      v15 = v9 + *(v10 + 20);
      v16._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v16);

      sub_100F3A500(v9, type metadata accessor for BeaconIdentifier);
      v17 = sub_1000136BC(v29, v30, &v28);

      *(v11 + 14) = v17;
      _os_log_impl(&_mh_execute_header, v6, v7, "No KeyGenerationBeaconInfo for %{private,mask.hash}s!", v11, 0x16u);
      sub_100007BAC(v12);
    }

    else
    {

      sub_100F3A500(v9, type metadata accessor for BeaconIdentifier);
    }

    v22 = v0[8];
    v23 = v0[4];
    v24 = v0[5];

    v25 = v0[1];

    return v25(_swiftEmptyArrayStorage);
  }

  else
  {
    v18 = v0[8];
    sub_100F3A498(v2, v18, type metadata accessor for KeyGenerationBeaconInfo);
    if (*(v18 + *(v1 + 24) + 8) >> 60 == 15)
    {
      v19 = swift_task_alloc();
      v0[12] = v19;
      *v19 = v0;
      v19[1] = sub_100F17254;
      v20 = v0[8];

      return sub_100F35134(v20);
    }

    else
    {
      v26 = swift_task_alloc();
      v0[11] = v26;
      *v26 = v0;
      v26[1] = sub_100F1712C;
      v27 = v0[8];

      return sub_100F1D4C0(v27);
    }
  }
}

uint64_t sub_100F1712C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 88);
  v6 = *v2;

  if (v1)
  {
    *(v4 + 112) = v1;
    v7 = sub_100F17420;
  }

  else
  {
    *(v4 + 104) = a1;
    v7 = sub_100F1737C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100F17254(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 96);
  v6 = *v2;

  if (v1)
  {
    *(v4 + 112) = v1;
    v7 = sub_100F17420;
  }

  else
  {
    *(v4 + 104) = a1;
    v7 = sub_100F1737C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100F1737C()
{
  sub_100F3A500(v0[8], type metadata accessor for KeyGenerationBeaconInfo);
  v1 = v0[13];
  v2 = v0[8];
  v4 = v0[4];
  v3 = v0[5];

  v5 = v0[1];

  return v5(v1);
}

uint64_t sub_100F17420()
{
  sub_100F3A500(v0[8], type metadata accessor for KeyGenerationBeaconInfo);
  v1 = v0[14];
  v2 = v0[8];
  v4 = v0[4];
  v3 = v0[5];

  v5 = v0[1];

  return v5();
}

uint64_t sub_100F174BC()
{
  v1 = v0[10];
  v2 = v0[8];
  v4 = v0[4];
  v3 = v0[5];

  v5 = v0[1];

  return v5();
}

uint64_t sub_100F1753C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 168) = a2;
  *(v7 + 176) = a4;
  *(v7 + 400) = a3;
  *(v7 + 160) = a1;
  v12 = type metadata accessor for BeaconIdentifier();
  *(v7 + 184) = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  *(v7 + 192) = swift_task_alloc();
  v14 = *(*(sub_1000BC4D4(&qword_10169E368, &qword_1013D6690) - 8) + 64) + 15;
  v15 = swift_task_alloc();
  *(v7 + 200) = v15;
  v16 = type metadata accessor for KeyGenerationBeaconInfo();
  *(v7 + 208) = v16;
  v17 = *(v16 - 8);
  *(v7 + 216) = v17;
  v18 = *(v17 + 64) + 15;
  *(v7 + 224) = swift_task_alloc();
  v19 = swift_task_alloc();
  *(v7 + 232) = v19;
  *v19 = v7;
  v19[1] = sub_100F176D4;

  return sub_100F15614(v15, a2, a5, a6, a7);
}

uint64_t sub_100F176D4()
{
  v2 = *(*v1 + 232);
  v5 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v3 = sub_100F1867C;
  }

  else
  {
    v3 = sub_100F177E8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100F177E8()
{
  v28 = v0;
  v1 = v0[25];
  if ((*(v0[27] + 48))(v1, 1, v0[26]) == 1)
  {
    sub_10000B3A8(v1, &qword_10169E368, &qword_1013D6690);
    if (qword_101694B98 != -1)
    {
      swift_once();
    }

    v2 = v0[24];
    v3 = v0[21];
    v4 = type metadata accessor for Logger();
    sub_1000076D4(v4, qword_10177B810);
    sub_100F3A2F8(v3, v2, type metadata accessor for BeaconIdentifier);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    v7 = os_log_type_enabled(v5, v6);
    v8 = v0[24];
    if (v7)
    {
      v9 = v0[23];
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v25 = v11;
      *v10 = 141558275;
      *(v10 + 4) = 1752392040;
      *(v10 + 12) = 2081;
      type metadata accessor for UUID();
      sub_100F3A180(&qword_101696930, &type metadata accessor for UUID);
      v26 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = v12;
      v13._countAndFlagsBits = 47;
      v13._object = 0xE100000000000000;
      String.append(_:)(v13);
      v14 = v8 + *(v9 + 20);
      v15._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v15);

      sub_100F3A500(v8, type metadata accessor for BeaconIdentifier);
      v16 = sub_1000136BC(v26, v27, &v25);

      *(v10 + 14) = v16;
      _os_log_impl(&_mh_execute_header, v5, v6, "No KeyGenerationBeaconInfo for %{private,mask.hash}s!", v10, 0x16u);
      sub_100007BAC(v11);
    }

    else
    {

      sub_100F3A500(v8, type metadata accessor for BeaconIdentifier);
    }

    v19 = v0[28];
    v20 = v0[24];
    v21 = v0[25];
    v22 = v0[20];

    *v22 = 2;
    *(v22 + 8) = 0u;
    *(v22 + 24) = 0u;
    *(v22 + 40) = 0;
    v23 = v0[1];

    return v23();
  }

  else
  {
    sub_100F3A498(v1, v0[28], type metadata accessor for KeyGenerationBeaconInfo);
    v17 = async function pointer to daemon.getter[1];
    v18 = swift_task_alloc();
    v0[31] = v18;
    *v18 = v0;
    v18[1] = sub_100F17B98;

    return daemon.getter();
  }
}

uint64_t sub_100F17B98(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 248);
  v12 = *v1;
  *(v3 + 256) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 264) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for BeaconKeyService();
  v9 = sub_100F3A180(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100F3A180(&unk_1016B1090, type metadata accessor for BeaconKeyService);
  *v6 = v12;
  v6[1] = sub_100F17D74;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100F17D74(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  v6 = *(*v2 + 264);
  v7 = *v2;
  *(v5 + 272) = a1;
  *(v5 + 280) = v1;

  v8 = *(v4 + 256);

  if (v1)
  {
    v9 = sub_100F186FC;
    v10 = 0;
  }

  else
  {
    v9 = sub_100F17EB8;
    v10 = a1;
  }

  return _swift_task_switch(v9, v10, 0);
}

uint64_t sub_100F17EB8()
{
  v1 = *(*(v0 + 272) + 128);
  *(v0 + 288) = v1;
  if (v1)
  {

    v2 = sub_100F17F44;
  }

  else
  {
    v2 = sub_100F184E8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100F17F44()
{
  v20 = v0;
  v1 = (*(v0 + 224) + *(*(v0 + 208) + 24));
  v2 = v1[1];
  if (v2 >> 60 == 15)
  {
    v3 = 0;
    v4 = 0;
    v2 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0xF000000000000000;
  }

  else
  {
    v4 = *v1;
    v5 = v1[2];
    v6 = v1[3];
    v8 = v1[4];
    v9 = v1[5];
    sub_100F32E90(*v1, v1[1], v5, v6, v8, v9, sub_100017D5C, sub_1002DBC68);
    sub_100017D5C(v4, v2);
    sub_10002EA98(57, v4, v2, v19);
    sub_100496F68(v19[0], v19[1], &v17);
    v7 = v18;
    if (v18 >> 60 == 15)
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }

    v3 = v17;
    sub_100017D5C(v4, v2);
    sub_100017D5C(v5, v6);
    sub_100F32E90(v4, v2, v5, v6, v8, v9, sub_100016590, sub_100006654);
    v11 = *(v0 + 224);
  }

  *(v0 + 328) = v5;
  *(v0 + 336) = v6;
  *(v0 + 312) = v4;
  *(v0 + 320) = v2;
  *(v0 + 296) = v3;
  *(v0 + 304) = v7;
  v12 = *(v0 + 288);
  *(v0 + 16) = v3;
  v13 = *(v0 + 400);
  *(v0 + 24) = v7;
  *(v0 + 32) = v4;
  *(v0 + 40) = v2;
  *(v0 + 48) = v5;
  *(v0 + 56) = v6;
  sub_1009B4CEC((v0 + 112));
  v14 = swift_task_alloc();
  *(v0 + 344) = v14;
  *v14 = v0;
  v14[1] = sub_100F181D4;
  v15 = *(v0 + 168);
  v16 = *(v0 + 176);

  return sub_100424C7C(v0 + 64, v15, v0 + 16, v0 + 112, v13 & 1, v16, v12, 4000);
}

uint64_t sub_100F181D4()
{
  v2 = *v1;
  v3 = *(*v1 + 344);
  v18 = *v1;
  *(*v1 + 352) = v0;

  if (v0)
  {
    v5 = *(v2 + 328);
    v4 = *(v2 + 336);
    v7 = *(v2 + 312);
    v6 = *(v2 + 320);
    v9 = *(v2 + 296);
    v8 = *(v2 + 304);
    sub_10000B3A8(v2 + 112, &qword_10169FCA8, &qword_1013A2B88);
    sub_100F32E90(v9, v8, v7, v6, v5, v4, sub_100016590, sub_100016590);
    v10 = sub_100F18798;
  }

  else
  {
    v12 = *(v2 + 328);
    v11 = *(v2 + 336);
    v14 = *(v2 + 312);
    v13 = *(v2 + 320);
    v16 = *(v2 + 296);
    v15 = *(v2 + 304);
    *(v2 + 401) = *(v2 + 64);
    *(v2 + 360) = *(v2 + 72);
    *(v2 + 376) = *(v2 + 88);
    *(v2 + 392) = *(v2 + 104);
    sub_10000B3A8(v2 + 112, &qword_10169FCA8, &qword_1013A2B88);
    sub_100F32E90(v16, v15, v14, v13, v12, v11, sub_100016590, sub_100016590);
    v10 = sub_100F183F8;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_100F183F8()
{
  v1 = *(v0 + 401);
  v2 = *(v0 + 288);
  v3 = *(v0 + 272);
  v4 = *(v0 + 224);

  sub_100F3A500(v4, type metadata accessor for KeyGenerationBeaconInfo);
  v5 = *(v0 + 392);
  v6 = *(v0 + 224);
  v7 = *(v0 + 192);
  v8 = *(v0 + 200);
  v9 = *(v0 + 160);
  v12 = *(v0 + 376);
  v13 = *(v0 + 360);

  *v9 = v1;
  *(v9 + 24) = v12;
  *(v9 + 8) = v13;
  *(v9 + 40) = v5;
  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_100F184E8()
{
  if (qword_101694B98 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177B810);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Missing LTKGenerator!", v4, 2u);
  }

  v5 = v0[34];
  v6 = v0[28];

  sub_100F32E3C();
  swift_allocError();
  *v7 = 1;
  swift_willThrow();

  sub_100F3A500(v6, type metadata accessor for KeyGenerationBeaconInfo);
  v8 = v0[28];
  v10 = v0[24];
  v9 = v0[25];

  v11 = v0[1];

  return v11();
}

uint64_t sub_100F1867C()
{
  v1 = v0[30];
  v2 = v0[28];
  v4 = v0[24];
  v3 = v0[25];

  v5 = v0[1];

  return v5();
}

uint64_t sub_100F186FC()
{
  sub_100F3A500(v0[28], type metadata accessor for KeyGenerationBeaconInfo);
  v1 = v0[35];
  v2 = v0[28];
  v4 = v0[24];
  v3 = v0[25];

  v5 = v0[1];

  return v5();
}

uint64_t sub_100F18798()
{
  v1 = v0[36];
  v2 = v0[34];
  v3 = v0[28];

  sub_100F3A500(v3, type metadata accessor for KeyGenerationBeaconInfo);
  v4 = v0[44];
  v5 = v0[28];
  v7 = v0[24];
  v6 = v0[25];

  v8 = v0[1];

  return v8();
}

uint64_t sub_100F1884C(uint64_t a1)
{
  v1[52] = a1;
  v2 = *(*(sub_1000BC4D4(&qword_1016B5CC0, &qword_1013D7370) - 8) + 64) + 15;
  v1[53] = swift_task_alloc();
  v3 = sub_1000BC4D4(&unk_1016C8FC0, &unk_10139D7D0);
  v1[54] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v1[55] = swift_task_alloc();
  v1[56] = swift_task_alloc();
  v1[57] = swift_task_alloc();
  v5 = *(*(sub_1000BC4D4(&qword_101699DB0, &unk_101393100) - 8) + 64) + 15;
  v1[58] = swift_task_alloc();
  v6 = type metadata accessor for ObservedAdvertisement.BeaconIndexInformation(0);
  v1[59] = v6;
  v7 = *(v6 - 8);
  v1[60] = v7;
  v8 = *(v7 + 64) + 15;
  v1[61] = swift_task_alloc();
  v1[62] = swift_task_alloc();
  v1[63] = swift_task_alloc();
  v1[64] = swift_task_alloc();
  v1[65] = swift_task_alloc();
  v1[66] = swift_task_alloc();
  v9 = *(*(sub_1000BC4D4(&unk_10169BB50, &unk_101395760) - 8) + 64) + 15;
  v1[67] = swift_task_alloc();
  v10 = type metadata accessor for ObservedAdvertisement(0);
  v1[68] = v10;
  v11 = *(v10 - 8);
  v1[69] = v11;
  v12 = *(v11 + 64) + 15;
  v1[70] = swift_task_alloc();
  v1[71] = swift_task_alloc();
  v1[72] = swift_task_alloc();
  v1[73] = swift_task_alloc();
  v13 = type metadata accessor for BeaconIdentifier();
  v1[74] = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  v1[75] = swift_task_alloc();
  v1[76] = swift_task_alloc();
  v1[77] = swift_task_alloc();
  v1[78] = swift_task_alloc();
  v1[79] = swift_task_alloc();
  v1[80] = swift_task_alloc();
  v1[81] = swift_task_alloc();
  v1[82] = swift_task_alloc();

  return _swift_task_switch(sub_100F18B48, 0, 0);
}

uint64_t sub_100F18B48()
{
  sub_100F3A2F8(v0[52], v0[82], type metadata accessor for BeaconIdentifier);
  v1 = async function pointer to daemon.getter[1];
  v2 = swift_task_alloc();
  v0[83] = v2;
  *v2 = v0;
  v2[1] = sub_100F18BF8;

  return daemon.getter();
}

uint64_t sub_100F18BF8(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 664);
  v12 = *v1;
  v3[84] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[85] = v6;
  v7 = type metadata accessor for Daemon();
  v3[86] = v7;
  v8 = type metadata accessor for ObservationStoreService();
  v9 = sub_100F3A180(&qword_1016AA400, &type metadata accessor for Daemon);
  v3[87] = v9;
  v10 = sub_100F3A180(&qword_1016AA450, type metadata accessor for ObservationStoreService);
  *v6 = v12;
  v6[1] = sub_100F18DD8;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100F18DD8(uint64_t a1)
{
  v3 = *(*v2 + 680);
  v4 = *v2;
  v4[88] = a1;
  v4[89] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_100F3A960, 0, 0);
  }

  else
  {
    v5 = v4[84];

    v6 = async function pointer to daemon.getter[1];
    v7 = swift_task_alloc();
    v4[90] = v7;
    *v7 = v4;
    v7[1] = sub_100F18F50;

    return daemon.getter();
  }
}

uint64_t sub_100F18F50(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 720);
  v5 = *v1;
  v3[91] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[92] = v7;
  v8 = type metadata accessor for BeaconKeyService();
  v9 = sub_100F3A180(&unk_1016B1090, type metadata accessor for BeaconKeyService);
  *v7 = v5;
  v7[1] = sub_100F19104;
  v10 = v3[87];
  v11 = v3[86];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_100F19104(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 736);
  v6 = *v2;
  v4[93] = a1;
  v4[94] = v1;

  if (v1)
  {
    v7 = sub_100F3A904;
    v8 = 0;
  }

  else
  {
    v9 = v4[91];

    v7 = sub_100F19240;
    v8 = a1;
  }

  return _swift_task_switch(v7, v8, 0);
}

uint64_t sub_100F19240()
{
  v1 = *(*(v0 + 744) + 128);
  *(v0 + 760) = v1;
  if (v1)
  {

    v2 = sub_100F192CC;
  }

  else
  {
    v2 = sub_100F3A90C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100F192CC()
{
  v69 = v0;
  v1 = *(v0 + 416);
  v2 = (v1 + *(type metadata accessor for KeyGenerationBeaconInfo() + 24));
  v3 = *v2;
  *(v0 + 768) = *v2;
  v4 = v2[1];
  *(v0 + 776) = v4;
  v5 = v2[2];
  *(v0 + 784) = v5;
  v6 = v2[3];
  *(v0 + 792) = v6;
  v7 = v2[4];
  *(v0 + 800) = v7;
  v8 = v2[5];
  *(v0 + 808) = v8;
  if (v4 >> 60 == 15)
  {
    if (qword_101694B98 != -1)
    {
      swift_once();
    }

    v9 = *(v0 + 656);
    v10 = *(v0 + 648);
    v11 = type metadata accessor for Logger();
    sub_1000076D4(v11, qword_10177B810);
    sub_100F3A2F8(v9, v10, type metadata accessor for BeaconIdentifier);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    v14 = os_log_type_enabled(v12, v13);
    v15 = *(v0 + 648);
    if (v14)
    {
      v16 = *(v0 + 592);
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v65 = v18;
      *v17 = 141558275;
      *(v17 + 4) = 1752392040;
      *(v17 + 12) = 2081;
      type metadata accessor for UUID();
      sub_100F3A180(&qword_101696930, &type metadata accessor for UUID);
      v67 = dispatch thunk of CustomStringConvertible.description.getter();
      v68 = v19;
      v20._countAndFlagsBits = 47;
      v20._object = 0xE100000000000000;
      String.append(_:)(v20);
      v21 = v15 + *(v16 + 20);
      v22._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v22);

      sub_100F3A500(v15, type metadata accessor for BeaconIdentifier);
      v23 = sub_1000136BC(v67, v68, &v65);

      *(v17 + 14) = v23;
      _os_log_impl(&_mh_execute_header, v12, v13, "Missing keys from %{private,mask.hash}s", v17, 0x16u);
      sub_100007BAC(v18);
    }

    else
    {

      sub_100F3A500(v15, type metadata accessor for BeaconIdentifier);
    }

    v27 = *(v0 + 760);
    v28 = *(v0 + 744);
    v29 = *(v0 + 704);
    sub_100F32E3C();
    swift_allocError();
    *v30 = 2;
    swift_willThrow();

    v31 = *(v0 + 648);
    v32 = *(v0 + 640);
    v33 = *(v0 + 632);
    v34 = *(v0 + 624);
    v35 = *(v0 + 616);
    v36 = *(v0 + 608);
    v37 = *(v0 + 600);
    v38 = *(v0 + 584);
    v50 = *(v0 + 576);
    v51 = *(v0 + 568);
    v52 = *(v0 + 560);
    v53 = *(v0 + 536);
    v54 = *(v0 + 528);
    v55 = *(v0 + 520);
    v56 = *(v0 + 512);
    v57 = *(v0 + 504);
    v58 = *(v0 + 496);
    v59 = *(v0 + 488);
    v60 = *(v0 + 464);
    v61 = *(v0 + 456);
    v62 = *(v0 + 448);
    v63 = *(v0 + 440);
    v64 = *(v0 + 424);
    sub_100F3A500(*(v0 + 656), type metadata accessor for BeaconIdentifier);

    v39 = *(v0 + 8);

    return v39();
  }

  sub_100F32E90(v3, v4, v5, v6, v7, v8, sub_100017D5C, sub_1002DBC68);
  sub_100017D5C(v3, v4);
  sub_10002EA98(57, v3, v4, &v67);
  sub_100496F68(v67, v68, &v65);
  v24 = v65;
  v25 = v66;
  *(v0 + 816) = v65;
  *(v0 + 824) = v25;
  if (v25 >> 60 == 15)
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  *(v0 + 208) = v24;
  *(v0 + 216) = v25;
  *&v40 = v3;
  *(&v40 + 1) = v4;
  *&v41 = v5;
  *(&v41 + 1) = v6;
  *(v0 + 224) = v40;
  *(v0 + 240) = v41;
  if (v8 >> 60 == 15)
  {
    sub_100017D5C(v5, v6);
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v7 = 0;
    v8 = 0;
    v45 = 0xF000000000000000;
  }

  else
  {
    sub_100017D5C(v3, v4);
    sub_100017D5C(v3, v4);
    sub_100017D5C(v5, v6);
    sub_10002E98C(v7, v8);
    sub_10002EA98(57, v3, v4, &v67);
    sub_100496F68(v67, v68, &v65);
    v45 = v66;
    if (v66 >> 60 == 15)
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }

    v42 = v65;
    v43 = v3;
    v44 = v4;
  }

  *(v0 + 872) = v8;
  *(v0 + 864) = v7;
  *(v0 + 856) = v44;
  *(v0 + 848) = v43;
  *(v0 + 840) = v45;
  *(v0 + 832) = v42;
  *(v0 + 160) = v42;
  *(v0 + 168) = v45;
  *(v0 + 176) = v43;
  *(v0 + 184) = v44;
  *(v0 + 192) = v7;
  *(v0 + 200) = v8;
  sub_100017D5C(v3, v4);
  v46 = swift_task_alloc();
  *(v0 + 880) = v46;
  *v46 = v0;
  v46[1] = sub_100F199B8;
  v47 = *(v0 + 704);
  v48 = *(v0 + 656);
  v49 = *(v0 + 536);

  return sub_1010CD810(v49, v48);
}

uint64_t sub_100F199B8()
{
  v2 = *(*v1 + 880);
  v5 = *v1;
  *(*v1 + 888) = v0;

  if (v0)
  {
    v3 = sub_100F3A924;
  }

  else
  {
    v3 = sub_100F19ACC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100F19ACC()
{
  v154 = v0;
  v1 = *(v0 + 536);
  if ((*(*(v0 + 552) + 48))(v1, 1, *(v0 + 544)) == 1)
  {
    sub_10000B3A8(v1, &unk_10169BB50, &unk_101395760);
    if (qword_101694B98 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 656);
    v3 = *(v0 + 640);
    v4 = type metadata accessor for Logger();
    sub_1000076D4(v4, qword_10177B810);
    sub_100F3A2F8(v2, v3, type metadata accessor for BeaconIdentifier);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    v7 = os_log_type_enabled(v5, v6);
    v8 = *(v0 + 640);
    if (v7)
    {
      v9 = *(v0 + 592);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v151 = v11;
      *v10 = 141558275;
      *(v10 + 4) = 1752392040;
      *(v10 + 12) = 2081;
      type metadata accessor for UUID();
      sub_100F3A180(&qword_101696930, &type metadata accessor for UUID);
      v152 = dispatch thunk of CustomStringConvertible.description.getter();
      v153 = v12;
      v13._countAndFlagsBits = 47;
      v13._object = 0xE100000000000000;
      String.append(_:)(v13);
      v14 = v8 + *(v9 + 20);
      v15._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v15);

      sub_100F3A500(v8, type metadata accessor for BeaconIdentifier);
      v16 = sub_1000136BC(v152, v153, &v151);

      *(v10 + 14) = v16;
      _os_log_impl(&_mh_execute_header, v5, v6, "No observed advertisement for beacon %{private,mask.hash}s.", v10, 0x16u);
      sub_100007BAC(v11);
    }

    else
    {

      sub_100F3A500(v8, type metadata accessor for BeaconIdentifier);
    }

    v30 = swift_task_alloc();
    *(v0 + 1200) = v30;
    *v30 = v0;
    v31 = sub_100F1D398;
    goto LABEL_26;
  }

  sub_100F3A498(v1, *(v0 + 584), type metadata accessor for ObservedAdvertisement);
  if (qword_101694B98 != -1)
  {
    swift_once();
  }

  v17 = *(v0 + 584);
  v18 = *(v0 + 576);
  v19 = type metadata accessor for Logger();
  *(v0 + 896) = sub_1000076D4(v19, qword_10177B810);
  sub_100F3A2F8(v17, v18, type metadata accessor for ObservedAdvertisement);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  v22 = os_log_type_enabled(v20, v21);
  v23 = *(v0 + 576);
  if (v22)
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v152 = v25;
    *v24 = 141558275;
    *(v24 + 4) = 1752392040;
    *(v24 + 12) = 2081;
    v26 = sub_100018680(v25);
    v28 = v27;
    sub_100F3A500(v23, type metadata accessor for ObservedAdvertisement);
    v29 = sub_1000136BC(v26, v28, &v152);

    *(v24 + 14) = v29;
    _os_log_impl(&_mh_execute_header, v20, v21, "Found observed advertisement %{private,mask.hash}s.", v24, 0x16u);
    sub_100007BAC(v25);
  }

  else
  {

    sub_100F3A500(v23, type metadata accessor for ObservedAdvertisement);
  }

  v32 = *(v0 + 472);
  v33 = *(v0 + 480);
  v34 = *(v0 + 464);
  sub_1000D2A70(*(v0 + 584) + *(*(v0 + 544) + 52), v34, &qword_101699DB0, &unk_101393100);
  if ((*(v33 + 48))(v34, 1, v32) == 1)
  {
    v35 = *(v0 + 656);
    v36 = *(v0 + 632);
    sub_10000B3A8(*(v0 + 464), &qword_101699DB0, &unk_101393100);
    sub_100F3A2F8(v35, v36, type metadata accessor for BeaconIdentifier);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    v39 = os_log_type_enabled(v37, v38);
    v40 = *(v0 + 632);
    if (v39)
    {
      v41 = *(v0 + 592);
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v151 = v43;
      *v42 = 141558275;
      *(v42 + 4) = 1752392040;
      *(v42 + 12) = 2081;
      type metadata accessor for UUID();
      sub_100F3A180(&qword_101696930, &type metadata accessor for UUID);
      v152 = dispatch thunk of CustomStringConvertible.description.getter();
      v153 = v44;
      v45._countAndFlagsBits = 47;
      v45._object = 0xE100000000000000;
      String.append(_:)(v45);
      v46 = v40 + *(v41 + 20);
      v47._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v47);

      v48 = v152;
      v49 = v153;
      sub_100F3A500(v40, type metadata accessor for BeaconIdentifier);
      v50 = sub_1000136BC(v48, v49, &v151);

      *(v42 + 14) = v50;
      _os_log_impl(&_mh_execute_header, v37, v38, "Missing beaconIndexInformation for %{private,mask.hash}s!", v42, 0x16u);
      sub_100007BAC(v43);
    }

    else
    {

      sub_100F3A500(v40, type metadata accessor for BeaconIdentifier);
    }

    v30 = swift_task_alloc();
    *(v0 + 1176) = v30;
    *v30 = v0;
    v31 = sub_100F1D270;
LABEL_26:
    v30[1] = v31;
    v77 = *(v0 + 416);

    return sub_100F2ABB4(v77, (v0 + 208), (v0 + 160));
  }

  v51 = *(v0 + 584);
  v52 = *(v0 + 568);
  v53 = *(v0 + 528);
  v54 = *(v0 + 520);
  v56 = *(v0 + 504);
  v55 = *(v0 + 512);
  sub_100F3A498(*(v0 + 464), v53, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
  sub_100F3A2F8(v53, v54, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
  sub_100F3A2F8(v53, v55, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
  sub_100F3A2F8(v53, v56, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
  sub_100F3A2F8(v51, v52, type metadata accessor for ObservedAdvertisement);
  v57 = Logger.logObject.getter();
  v58 = static os_log_type_t.default.getter();
  v59 = os_log_type_enabled(v57, v58);
  v60 = *(v0 + 568);
  v61 = *(v0 + 520);
  v62 = *(v0 + 504);
  v63 = *(v0 + 512);
  if (v59)
  {
    v144 = *(v0 + 472);
    v64 = swift_slowAlloc();
    v152 = swift_slowAlloc();
    *v64 = 141559299;
    *(v64 + 4) = 1752392040;
    *(v64 + 12) = 2081;
    type metadata accessor for UUID();
    sub_100F3A180(&qword_101696930, &type metadata accessor for UUID);
    v65 = dispatch thunk of CustomStringConvertible.description.getter();
    v146 = v58;
    v67 = v66;
    log = v57;
    sub_100F3A500(v61, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
    v68 = sub_1000136BC(v65, v67, &v152);

    *(v64 + 14) = v68;
    *(v64 + 22) = 2048;
    v69 = *(v63 + *(v144 + 24));
    sub_100F3A500(v63, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
    *(v64 + 24) = v69;
    *(v64 + 32) = 2082;
    if (*(v62 + *(v144 + 20)))
    {
      v70 = 0x61646E6F6365732ELL;
    }

    else
    {
      v70 = 0x7972616D6972702ELL;
    }

    if (*(v62 + *(v144 + 20)))
    {
      v71 = 0xEA00000000007972;
    }

    else
    {
      v71 = 0xE800000000000000;
    }

    sub_100F3A500(v62, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
    v72 = sub_1000136BC(v70, v71, &v152);

    *(v64 + 34) = v72;
    *(v64 + 42) = 2160;
    *(v64 + 44) = 1752392040;
    *(v64 + 52) = 2081;
    v73 = sub_10001904C(*(v60 + 16), *(v60 + 24));
    v75 = v74;
    sub_100F3A500(v60, type metadata accessor for ObservedAdvertisement);
    v76 = sub_1000136BC(v73, v75, &v152);

    *(v64 + 54) = v76;
    _os_log_impl(&_mh_execute_header, log, v146, "Last observed beacon: %{private,mask.hash}s, index: %llu, sequence: %{public}s, advertisement: %{private,mask.hash}s.", v64, 0x3Eu);
    swift_arrayDestroy();
  }

  else
  {
    sub_100F3A500(*(v0 + 512), type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);

    sub_100F3A500(v62, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
    sub_100F3A500(v61, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
    sub_100F3A500(v60, type metadata accessor for ObservedAdvertisement);
  }

  v79 = *(v0 + 584);
  v80 = *(v0 + 528);
  v81 = *(v80 + *(*(v0 + 472) + 20));
  *(v0 + 1228) = v81;
  v82 = *(v0 + 656);
  if (*(v79 + 35))
  {
    v148 = v81;
    v83 = *(v0 + 608);
    sub_100F3A2F8(v80, *(v0 + 488), type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
    sub_100F3A2F8(v82, v83, type metadata accessor for BeaconIdentifier);
    v84 = Logger.logObject.getter();
    v85 = static os_log_type_t.info.getter();
    v86 = os_log_type_enabled(v84, v85);
    v87 = *(v0 + 608);
    if (v86)
    {
      v88 = *(v0 + 592);
      v89 = *(v0 + 488);
      v90 = *(v0 + 472);
      v91 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      v151 = v92;
      *v91 = 134218499;
      v93 = *(v89 + *(v90 + 24));
      sub_100F3A500(v89, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
      *(v91 + 4) = v93;
      *(v91 + 12) = 2160;
      *(v91 + 14) = 1752392040;
      *(v91 + 22) = 2081;
      type metadata accessor for UUID();
      sub_100F3A180(&qword_101696930, &type metadata accessor for UUID);
      v152 = dispatch thunk of CustomStringConvertible.description.getter();
      v153 = v94;
      v95._countAndFlagsBits = 47;
      v95._object = 0xE100000000000000;
      String.append(_:)(v95);
      v96 = v87 + *(v88 + 20);
      v97._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v97);

      v98 = v152;
      v99 = v153;
      sub_100F3A500(v87, type metadata accessor for BeaconIdentifier);
      v100 = sub_1000136BC(v98, v99, &v151);

      *(v91 + 24) = v100;
      _os_log_impl(&_mh_execute_header, v84, v85, "Using last observed index %llu for beacon %{private,mask.hash}s", v91, 0x20u);
      sub_100007BAC(v92);
    }

    else
    {
      sub_100F3A500(*(v0 + 488), type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);

      sub_100F3A500(v87, type metadata accessor for BeaconIdentifier);
    }

    v121 = *(v0 + 824);
    v122 = *(v0 + 816);
    v123 = *(v0 + 792);
    v124 = *(v0 + 784);
    v125 = *(v0 + 776);
    v126 = *(v0 + 768);
    v147 = *(v0 + 760);
    v127 = *(v0 + 528);
    v128 = *(v0 + 472);
    sub_1000BC4D4(&qword_1016B3B28, &qword_1013D48D0);
    v129 = swift_allocObject();
    *(v0 + 1096) = v129;
    *(v129 + 16) = xmmword_101385D80;
    *&v130 = v122;
    *(&v130 + 1) = v121;
    *&v131 = v126;
    *(&v131 + 1) = v125;
    *(v0 + 32) = v131;
    *(v0 + 16) = v130;
    *(v0 + 48) = v124;
    *(v0 + 56) = v123;
    v132 = *(v127 + *(v128 + 24));
    *(v0 + 1104) = v132;
    sub_100017D5C(v122, v121);
    sub_100017D5C(v126, v125);
    sub_100017D5C(v124, v123);
    v133 = swift_task_alloc();
    *(v0 + 1112) = v133;
    *v133 = v0;
    v133[1] = sub_100F1C378;
    v134 = *(v0 + 656);

    return sub_100424C7C(v0 + 256, v134, v0 + 16, v0 + 160, v148, v132, v147, 4000);
  }

  else
  {
    v101 = *(v0 + 624);
    v102 = *(v79 + 34);
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v103 = swift_allocObject();
    *(v103 + 16) = xmmword_101385D80;
    *(v103 + 56) = &type metadata for UInt8;
    *(v103 + 64) = &protocol witness table for UInt8;
    *(v103 + 32) = v102;
    v104 = String.init(format:_:)();
    v106 = v105;
    sub_100F3A2F8(v82, v101, type metadata accessor for BeaconIdentifier);
    v107 = Logger.logObject.getter();
    v108 = static os_log_type_t.info.getter();
    v109 = os_log_type_enabled(v107, v108);
    v110 = *(v0 + 624);
    if (v109)
    {
      v149 = v81;
      v111 = *(v0 + 592);
      v112 = swift_slowAlloc();
      v151 = swift_slowAlloc();
      *v112 = 136446723;
      v113 = sub_1000136BC(v104, v106, &v151);

      *(v112 + 4) = v113;
      *(v112 + 12) = 2160;
      *(v112 + 14) = 1752392040;
      *(v112 + 22) = 2081;
      type metadata accessor for UUID();
      sub_100F3A180(&qword_101696930, &type metadata accessor for UUID);
      v152 = dispatch thunk of CustomStringConvertible.description.getter();
      v153 = v114;
      v115._countAndFlagsBits = 47;
      v115._object = 0xE100000000000000;
      String.append(_:)(v115);
      v116 = *(v111 + 20);
      v81 = v149;
      v117._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v117);

      v118 = v152;
      v119 = v153;
      sub_100F3A500(v110, type metadata accessor for BeaconIdentifier);
      v120 = sub_1000136BC(v118, v119, &v151);

      *(v112 + 24) = v120;
      _os_log_impl(&_mh_execute_header, v107, v108, "Hint %{public}s is available for %{private,mask.hash}s", v112, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      sub_100F3A500(v110, type metadata accessor for BeaconIdentifier);
    }

    v135 = *(v0 + 816);
    v136 = *(v0 + 792);
    v137 = *(v0 + 784);
    v150 = *(v0 + 768);
    v138 = *(v0 + 760);
    v139 = *(v0 + 528);
    v140 = *(v0 + 472);
    *(v0 + 80) = v150;
    *(v0 + 64) = v135;
    *(v0 + 96) = v137;
    *(v0 + 104) = v136;
    v141 = *(v139 + *(v140 + 24));
    *(v0 + 904) = v141;
    sub_100017D5C(v135, *(&v135 + 1));
    sub_100017D5C(v150, *(&v150 + 1));
    sub_100017D5C(v137, v136);
    v142 = swift_task_alloc();
    *(v0 + 912) = v142;
    *v142 = v0;
    v142[1] = sub_100F1ACE0;
    v143 = *(v0 + 656);

    return sub_100425600(v143, (v0 + 64), v81, v141, v102, v138, 4000);
  }
}

uint64_t sub_100F1ACE0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 912);
  v6 = *v2;
  v4[115] = v1;

  v7 = v4[103];
  v8 = v4[102];
  v9 = v4[99];
  v10 = v4[98];
  v11 = v4[97];
  v12 = v4[96];
  if (v1)
  {
    sub_100016590(v8, v7);
    sub_100016590(v12, v11);
    sub_100016590(v10, v9);
    v13 = sub_100F3A930;
  }

  else
  {
    v4[116] = a1;
    sub_100016590(v8, v7);
    sub_100016590(v12, v11);
    sub_100016590(v10, v9);
    v13 = sub_100F1AEC4;
  }

  return _swift_task_switch(v13, 0, 0);
}

uint64_t sub_100F1AEC4()
{
  v1 = *(v0 + 904);
  v2 = *(v0 + 1228);
  *(v0 + 944) = *(v0 + 928);
  *(v0 + 936) = v1;
  v3 = *(v0 + 816);
  v4 = *(v0 + 792);
  v5 = *(v0 + 784);
  v10 = *(v0 + 768);
  v6 = *(v0 + 760);
  *(v0 + 112) = v3;
  *(v0 + 128) = v10;
  *(v0 + 144) = v5;
  *(v0 + 152) = v4;
  sub_100017D5C(v3, *(&v3 + 1));
  sub_100017D5C(v10, *(&v10 + 1));
  sub_100017D5C(v5, v4);
  v7 = swift_task_alloc();
  *(v0 + 952) = v7;
  *v7 = v0;
  v7[1] = sub_100F1AFF0;
  v8 = *(v0 + 656);

  return sub_100424C7C(v0 + 352, v8, v0 + 112, v0 + 160, v2, v1, v6, 4000);
}

uint64_t sub_100F1AFF0()
{
  v2 = *v1;
  v3 = *(*v1 + 952);
  v13 = *v1;
  *(*v1 + 960) = v0;

  if (v0)
  {
    v4 = v2[118];
    v5 = v2[103];
    v6 = v2[102];
    v7 = v2[99];
    v8 = v2[98];
    v9 = v2[97];
    v10 = v2[96];
    sub_100016590(v6, v5);
    sub_100016590(v10, v9);
    sub_100016590(v8, v7);

    v11 = sub_100F3A934;
  }

  else
  {
    v11 = sub_100F1B154;
  }

  return _swift_task_switch(v11, 0, 0);
}

uint64_t sub_100F1B154()
{
  v1 = v0[120];
  v2 = v0[118];
  v3 = v0[82];
  v4 = swift_task_alloc();
  *(v4 + 16) = v3;
  *(v4 + 24) = v0 + 44;
  v0[121] = sub_1005C8110(sub_100F3A948, v4, v2);

  v5 = swift_task_alloc();
  v0[122] = v5;
  *v5 = v0;
  v5[1] = sub_100F1B248;
  v6 = v0[57];
  v7 = v0[52];

  return sub_100F2EA9C(v6, v7);
}

uint64_t sub_100F1B248()
{
  v2 = *v1;
  v3 = *(*v1 + 976);
  v14 = *v1;
  *(*v1 + 984) = v0;

  if (v0)
  {
    v4 = v2[121];
    v5 = v2[118];
    v6 = v2[103];
    v7 = v2[102];
    v8 = v2[99];
    v9 = v2[98];
    v10 = v2[97];
    v11 = v2[96];
    sub_100016590(v7, v6);
    sub_100016590(v11, v10);
    sub_100016590(v9, v8);

    v12 = sub_100F3A8E8;
  }

  else
  {
    v12 = sub_100F1B3B8;
  }

  return _swift_task_switch(v12, 0, 0);
}

uint64_t sub_100F1B3B8()
{
  v139 = v0;
  v1 = *(v0 + 944);
  if (*(v1 + 16))
  {
    v2 = *(v0 + 1228);
    v3 = *(v1 + 32);
    v4 = *(v1 + 40);
    *(v0 + 992) = v4;
    v5 = *(v1 + 48);
    *(v0 + 1000) = v5;
    v6 = *(v1 + 56);
    *(v0 + 1008) = v6;
    v7 = *(v1 + 64);
    *(v0 + 1016) = v7;
    v8 = *(v1 + 72);
    *(v0 + 1024) = v8;
    sub_100017D5C(v5, v6);
    sub_100017D5C(v7, v8);

    if (v2)
    {
      v92 = *(v0 + 968);
      v106 = *(v0 + 864);
      v108 = *(v0 + 872);
      v102 = *(v0 + 848);
      v104 = *(v0 + 856);
      v98 = *(v0 + 832);
      v100 = *(v0 + 840);
      v122 = *(v0 + 824);
      v116 = *(v0 + 808);
      v119 = *(v0 + 816);
      v9 = *(v0 + 792);
      v10 = *(v0 + 784);
      v95 = v9;
      v11 = *(v0 + 776);
      v91 = v3;
      v12 = *(v0 + 768);
      v110 = *(v0 + 800);
      v113 = *(v0 + 744);
      v93 = *(v0 + 704);
      v94 = *(v0 + 760);
      v130 = *(v0 + 528);
      v133 = *(v0 + 584);
      v126 = *(v0 + 456);
      sub_100016590(v119, v122);
      sub_100016590(v12, v11);
      sub_100016590(v10, v9);
      sub_1000BC4D4(&qword_1016B3B28, &qword_1013D48D0);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_101385D80;
      *(v13 + 32) = v91;
      *&v14 = v4;
      *(&v14 + 1) = v5;
      *&v15 = v6;
      *(&v15 + 1) = v7;
      *(v13 + 56) = v15;
      *(v13 + 40) = v14;
      *(v13 + 72) = v8;
      v137 = v92;
      sub_100017D5C(v5, v6);
      sub_100017D5C(v7, v8);
      sub_10039A158(v13);

      sub_100F32E90(v98, v100, v102, v104, v106, v108, sub_100016590, sub_100016590);
      sub_100F39FE0(v0 + 352);
      sub_100F32E90(v12, v11, v10, v95, v110, v116, sub_100016590, sub_100006654);

      sub_100016590(v5, v6);
      sub_100016590(v7, v8);
      sub_100016590(v119, v122);
      sub_100016590(v12, v11);
      sub_100016590(v10, v95);
      sub_10000B3A8(v126, &unk_1016C8FC0, &unk_10139D7D0);
      sub_100F3A500(v130, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
      sub_100F3A500(v133, type metadata accessor for ObservedAdvertisement);
      v16 = *(v0 + 648);
      v17 = *(v0 + 640);
      v18 = *(v0 + 632);
      v19 = *(v0 + 624);
      v20 = *(v0 + 616);
      v21 = *(v0 + 608);
      v22 = *(v0 + 600);
      v23 = *(v0 + 584);
      v96 = *(v0 + 576);
      v97 = *(v0 + 568);
      v99 = *(v0 + 560);
      v101 = *(v0 + 536);
      v103 = *(v0 + 528);
      v105 = *(v0 + 520);
      v107 = *(v0 + 512);
      v109 = *(v0 + 504);
      v111 = *(v0 + 496);
      v114 = *(v0 + 488);
      v117 = *(v0 + 464);
      v120 = *(v0 + 456);
      v123 = *(v0 + 448);
      v127 = *(v0 + 440);
      v131 = *(v0 + 424);
      sub_100F3A500(*(v0 + 656), type metadata accessor for BeaconIdentifier);

      v24 = *(v0 + 8);

      return v24(v92);
    }

    v38 = *(v0 + 936);
    if (v38 >= **(v0 + 456))
    {
      goto LABEL_15;
    }

    v39 = *(v0 + 584);
    v40 = *(v0 + 544);
    v41 = *(v0 + 432);
    v42 = *(v40 + 44);
    v43 = *(v41 + 36);
    if (static Date.> infix(_:_:)())
    {
      v38 = *(v0 + 936);
LABEL_15:
      if (v38)
      {
        v44 = v38 / 0x60 + 1;
      }

      else
      {
        v44 = 0;
      }

      v45 = *(v0 + 760);
      v46 = swift_task_alloc();
      *(v0 + 1056) = v46;
      *v46 = v0;
      v46[1] = sub_100F1C100;
      v47 = *(v0 + 656);

      return sub_100424C7C(v0 + 304, v47, v0 + 112, v0 + 160, 1, v44, v45, 4000);
    }

    v112 = v40;
    v115 = v41;
    v48 = *(v0 + 968);
    v49 = *(v0 + 792);
    v50 = *(v0 + 784);
    v51 = *(v0 + 776);
    v52 = *(v0 + 768);
    v132 = *(v0 + 656);
    v134 = *(v0 + 896);
    v128 = *(v0 + 616);
    v118 = *(v0 + 560);
    v121 = *(v0 + 584);
    v53 = *(v0 + 528);
    v54 = *(v0 + 496);
    v56 = *(v0 + 448);
    v55 = *(v0 + 456);
    v124 = *(v0 + 440);
    sub_100016590(*(v0 + 816), *(v0 + 824));
    sub_100016590(v52, v51);
    sub_100016590(v50, v49);

    sub_100F3A2F8(v53, v54, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
    sub_1000D2A70(v55, v56, &unk_1016C8FC0, &unk_10139D7D0);
    sub_100F3A2F8(v121, v118, type metadata accessor for ObservedAdvertisement);
    sub_1000D2A70(v55, v124, &unk_1016C8FC0, &unk_10139D7D0);
    sub_100F3A2F8(v132, v128, type metadata accessor for BeaconIdentifier);
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.default.getter();
    v59 = os_log_type_enabled(v57, v58);
    v60 = *(v0 + 616);
    if (v59)
    {
      v61 = *(v0 + 560);
      v135 = v58;
      v62 = *(v0 + 496);
      v63 = *(v0 + 472);
      v64 = *(v0 + 448);
      v125 = *(v0 + 440);
      v129 = *(v0 + 592);
      v65 = swift_slowAlloc();
      v136 = swift_slowAlloc();
      *v65 = 134219267;
      v66 = *(v62 + *(v63 + 24));
      sub_100F3A500(v62, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
      *(v65 + 4) = v66;
      *(v65 + 12) = 2080;
      v67 = *v64;
      v137 = 0x7972616D6972702ELL;
      v138 = 0xEA0000000000282FLL;
      *(v0 + 408) = v67;
      v68._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v68);

      v69._countAndFlagsBits = 41;
      v69._object = 0xE100000000000000;
      String.append(_:)(v69);
      sub_10000B3A8(v64, &unk_1016C8FC0, &unk_10139D7D0);
      v70 = sub_1000136BC(v137, v138, &v136);

      *(v65 + 14) = v70;
      *(v65 + 22) = 2082;
      v71 = *(v112 + 44);
      type metadata accessor for Date();
      sub_100F3A180(&qword_1016969A0, &type metadata accessor for Date);
      v72 = dispatch thunk of CustomStringConvertible.description.getter();
      v74 = v73;
      sub_100F3A500(v61, type metadata accessor for ObservedAdvertisement);
      v75 = sub_1000136BC(v72, v74, &v136);

      *(v65 + 24) = v75;
      *(v65 + 32) = 2082;
      v76 = v125 + *(v115 + 36);
      v77 = dispatch thunk of CustomStringConvertible.description.getter();
      v79 = v78;
      sub_10000B3A8(v125, &unk_1016C8FC0, &unk_10139D7D0);
      v80 = sub_1000136BC(v77, v79, &v136);

      *(v65 + 34) = v80;
      *(v65 + 42) = 2160;
      *(v65 + 44) = 1752392040;
      *(v65 + 52) = 2081;
      type metadata accessor for UUID();
      sub_100F3A180(&qword_101696930, &type metadata accessor for UUID);
      v137 = dispatch thunk of CustomStringConvertible.description.getter();
      v138 = v81;
      v82._countAndFlagsBits = 47;
      v82._object = 0xE100000000000000;
      String.append(_:)(v82);
      v83 = v60 + *(v129 + 20);
      v84._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v84);

      v85 = v137;
      v86 = v138;
      sub_100F3A500(v60, type metadata accessor for BeaconIdentifier);
      v87 = sub_1000136BC(v85, v86, &v136);

      *(v65 + 54) = v87;
      _os_log_impl(&_mh_execute_header, v57, v135, "Ignoring matched index %llu < lastObservedIndex %s, scanDate: %{public}s, lastObservedDate: %{public}s, for beacon %{private,mask.hash}s.", v65, 0x3Eu);
      swift_arrayDestroy();
    }

    else
    {
      v88 = *(v0 + 560);
      v90 = *(v0 + 440);
      v89 = *(v0 + 448);
      sub_100F3A500(*(v0 + 496), type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);

      sub_100F3A500(v60, type metadata accessor for BeaconIdentifier);
      sub_10000B3A8(v90, &unk_1016C8FC0, &unk_10139D7D0);
      sub_100F3A500(v88, type metadata accessor for ObservedAdvertisement);
      sub_10000B3A8(v89, &unk_1016C8FC0, &unk_10139D7D0);
    }

    v35 = swift_task_alloc();
    *(v0 + 1072) = v35;
    *v35 = v0;
    v36 = sub_100F1C250;
  }

  else
  {
    v26 = *(v0 + 968);
    v27 = *(v0 + 896);
    v28 = *(v0 + 792);
    v29 = *(v0 + 784);
    v30 = *(v0 + 776);
    v31 = *(v0 + 768);
    sub_100016590(*(v0 + 816), *(v0 + 824));
    sub_100016590(v31, v30);
    sub_100016590(v29, v28);

    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "LTK keys should never be empty!", v34, 2u);
    }

    v35 = swift_task_alloc();
    *(v0 + 1032) = v35;
    *v35 = v0;
    v36 = sub_100F1BFD8;
  }

  v35[1] = v36;
  v37 = *(v0 + 416);

  return sub_100F2ABB4(v37, (v0 + 208), (v0 + 160));
}

uint64_t sub_100F1BFD8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1032);
  v6 = *v2;
  *(*v2 + 1040) = v1;

  if (v1)
  {
    v7 = sub_100F3A918;
  }

  else
  {
    *(v4 + 1048) = a1;
    v7 = sub_100F3A914;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100F1C100()
{
  v2 = *v1;
  v3 = *(*v1 + 1056);
  v12 = *v1;
  *(*v1 + 1064) = v0;

  if (v0)
  {
    v4 = sub_100F3A910;
  }

  else
  {
    v5 = v2[103];
    v6 = v2[102];
    v7 = v2[99];
    v8 = v2[98];
    v9 = v2[97];
    v10 = v2[96];
    sub_100016590(v6, v5);
    sub_100016590(v10, v9);
    sub_100016590(v8, v7);
    v4 = sub_100F3A8DC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100F1C250(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1072);
  v6 = *v2;
  *(*v2 + 1080) = v1;

  if (v1)
  {
    v7 = sub_100F3A8FC;
  }

  else
  {
    *(v4 + 1088) = a1;
    v7 = sub_100F3A8F8;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100F1C378()
{
  v2 = *v1;
  v3 = *(*v1 + 1112);
  v4 = *v1;
  *(*v1 + 1120) = v0;

  v5 = v2[99];
  v6 = v2[98];
  v7 = v2[97];
  v8 = v2[96];
  sub_100016590(v2[102], v2[103]);
  sub_100016590(v8, v7);
  sub_100016590(v6, v5);
  if (v0)
  {
    v9 = sub_100F3A8E0;
  }

  else
  {
    v9 = sub_100F1C530;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_100F1C530()
{
  v1 = *(v0 + 1096);
  v2 = *(v0 + 256);
  v3 = *(v0 + 288);
  v1[3] = *(v0 + 272);
  v1[4] = v3;
  v1[2] = v2;
  v4 = async function pointer to daemon.getter[1];
  v5 = swift_task_alloc();
  *(v0 + 1128) = v5;
  *v5 = v0;
  v5[1] = sub_100F1C5D4;

  return daemon.getter();
}

uint64_t sub_100F1C5D4(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 1128);
  v5 = *v1;
  v3[142] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[143] = v7;
  v8 = type metadata accessor for StandaloneBeaconService();
  v9 = sub_100F3A180(&qword_10169F450, type metadata accessor for StandaloneBeaconService);
  *v7 = v5;
  v7[1] = sub_100F1C788;
  v10 = v3[87];
  v11 = v3[86];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_100F1C788(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1144);
  v6 = *v2;
  *(v4 + 1152) = a1;
  *(v4 + 1160) = v1;

  v7 = *(v4 + 1136);
  if (v1)
  {

    v8 = sub_100F1C9A0;
    v9 = 0;
  }

  else
  {
    v10 = *(v4 + 592);

    *(v4 + 1224) = *(v10 + 20);
    v8 = sub_100F1C8F8;
    v9 = a1;
  }

  return _swift_task_switch(v8, v9, 0);
}

uint64_t sub_100F1C8F8()
{
  v1 = *(v0 + 1160);
  v2 = *(*(v0 + 1152) + 128);
  sub_100F856F4(*(v0 + 656) + *(v0 + 1224), *(v0 + 424));
  *(v0 + 1168) = v1;
  if (v1)
  {
    v3 = *(v0 + 1096);

    v4 = sub_100F3A900;
  }

  else
  {
    v4 = sub_100F1CACC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100F1C9A0()
{
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1228);
  *(v0 + 944) = *(v0 + 1096);
  *(v0 + 936) = v1;
  v3 = *(v0 + 816);
  v4 = *(v0 + 792);
  v5 = *(v0 + 784);
  v10 = *(v0 + 768);
  v6 = *(v0 + 760);
  *(v0 + 112) = v3;
  *(v0 + 128) = v10;
  *(v0 + 144) = v5;
  *(v0 + 152) = v4;
  sub_100017D5C(v3, *(&v3 + 1));
  sub_100017D5C(v10, *(&v10 + 1));
  sub_100017D5C(v5, v4);
  v7 = swift_task_alloc();
  *(v0 + 952) = v7;
  *v7 = v0;
  v7[1] = sub_100F1AFF0;
  v8 = *(v0 + 656);

  return sub_100424C7C(v0 + 352, v8, v0 + 112, v0 + 160, v2, v1, v6, 4000);
}

uint64_t sub_100F1CACC()
{
  v82 = v0;
  v1 = *(v0 + 424);
  v2 = type metadata accessor for StandaloneBeacon();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = *(v0 + 1152);

    sub_10000B3A8(v1, &qword_1016B5CC0, &qword_1013D7370);
    v4 = *(v0 + 1104);
    v5 = *(v0 + 1228);
    *(v0 + 944) = *(v0 + 1096);
    *(v0 + 936) = v4;
    v6 = *(v0 + 816);
    v7 = *(v0 + 792);
    v8 = *(v0 + 784);
    v76 = *(v0 + 768);
    v9 = *(v0 + 760);
    *(v0 + 112) = v6;
    *(v0 + 128) = v76;
    *(v0 + 144) = v8;
    *(v0 + 152) = v7;
    sub_100017D5C(v6, *(&v6 + 1));
    sub_100017D5C(v76, *(&v76 + 1));
    sub_100017D5C(v8, v7);
    v10 = swift_task_alloc();
    *(v0 + 952) = v10;
    *v10 = v0;
    v10[1] = sub_100F1AFF0;
    v11 = *(v0 + 656);

    return sub_100424C7C(v0 + 352, v11, v0 + 112, v0 + 160, v5, v4, v9, 4000);
  }

  else
  {
    v13 = *(v0 + 896);
    v14 = *(v0 + 656);
    v15 = *(v0 + 600);
    sub_10000B3A8(v1, &qword_1016B5CC0, &qword_1013D7370);
    sub_100F3A2F8(v14, v15, type metadata accessor for BeaconIdentifier);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    v18 = os_log_type_enabled(v16, v17);
    v62 = *(v0 + 872);
    v64 = *(v0 + 1152);
    v58 = *(v0 + 856);
    v60 = *(v0 + 864);
    v54 = *(v0 + 840);
    v56 = *(v0 + 848);
    v52 = *(v0 + 832);
    v19 = *(v0 + 824);
    v74 = *(v0 + 816);
    v70 = *(v0 + 808);
    v66 = *(v0 + 800);
    v20 = *(v0 + 792);
    v21 = *(v0 + 784);
    v77 = *(v0 + 776);
    v72 = *(v0 + 768);
    v50 = *(v0 + 760);
    v68 = *(v0 + 744);
    v22 = *(v0 + 704);
    v23 = *(v0 + 600);
    if (v18)
    {
      v44 = *(v0 + 592);
      v46 = *(v0 + 528);
      v48 = *(v0 + 584);
      v24 = swift_slowAlloc();
      v45 = v20;
      v25 = swift_slowAlloc();
      v79 = v25;
      *v24 = 141558275;
      *(v24 + 4) = 1752392040;
      *(v24 + 12) = 2081;
      type metadata accessor for UUID();
      sub_100F3A180(&qword_101696930, &type metadata accessor for UUID);
      v80 = dispatch thunk of CustomStringConvertible.description.getter();
      v81 = v26;
      v27._countAndFlagsBits = 47;
      v27._object = 0xE100000000000000;
      String.append(_:)(v27);
      v28 = v23 + *(v44 + 20);
      v29._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v29);

      sub_100F3A500(v23, type metadata accessor for BeaconIdentifier);
      v30 = sub_1000136BC(v80, v81, &v79);

      *(v24 + 14) = v30;
      _os_log_impl(&_mh_execute_header, v16, v17, "Skipping secondary keys for standalone beacon %{private,mask.hash}s", v24, 0x16u);
      sub_100007BAC(v25);

      sub_100F32E90(v52, v54, v56, v58, v60, v62, sub_100016590, sub_100016590);

      sub_100F32E90(v72, v77, v21, v45, v66, v70, sub_100016590, sub_100006654);

      sub_100016590(v74, v19);
      sub_100016590(v72, v77);
      sub_100016590(v21, v45);
      sub_100F3A500(v46, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
      v31 = v48;
    }

    else
    {
      v32 = *(v0 + 584);
      v33 = *(v0 + 528);
      v34 = *(v0 + 704);

      sub_100F32E90(v52, v54, v56, v58, v60, v62, sub_100016590, sub_100016590);

      sub_100F32E90(v72, v77, v21, v20, v66, v70, sub_100016590, sub_100006654);

      sub_100016590(v74, v19);
      sub_100016590(v72, v77);
      sub_100016590(v21, v20);
      sub_100F3A500(v23, type metadata accessor for BeaconIdentifier);
      sub_100F3A500(v33, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
      v31 = v32;
    }

    sub_100F3A500(v31, type metadata accessor for ObservedAdvertisement);
    v78 = *(v0 + 1096);
    v35 = *(v0 + 648);
    v36 = *(v0 + 640);
    v37 = *(v0 + 632);
    v38 = *(v0 + 624);
    v39 = *(v0 + 616);
    v40 = *(v0 + 608);
    v41 = *(v0 + 600);
    v42 = *(v0 + 584);
    v47 = *(v0 + 576);
    v49 = *(v0 + 568);
    v51 = *(v0 + 560);
    v53 = *(v0 + 536);
    v55 = *(v0 + 528);
    v57 = *(v0 + 520);
    v59 = *(v0 + 512);
    v61 = *(v0 + 504);
    v63 = *(v0 + 496);
    v65 = *(v0 + 488);
    v67 = *(v0 + 464);
    v69 = *(v0 + 456);
    v71 = *(v0 + 448);
    v73 = *(v0 + 440);
    v75 = *(v0 + 424);
    sub_100F3A500(*(v0 + 656), type metadata accessor for BeaconIdentifier);

    v43 = *(v0 + 8);

    return v43(v78);
  }
}

uint64_t sub_100F1D270(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1176);
  v6 = *v2;
  *(*v2 + 1184) = v1;

  if (v1)
  {
    v7 = sub_100F3A920;
  }

  else
  {
    *(v4 + 1192) = a1;
    v7 = sub_100F3A91C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100F1D398(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1200);
  v6 = *v2;
  *(*v2 + 1208) = v1;

  if (v1)
  {
    v7 = sub_100F3A92C;
  }

  else
  {
    *(v4 + 1216) = a1;
    v7 = sub_100F3A928;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100F1D4C0(uint64_t a1)
{
  v1[52] = a1;
  v2 = *(*(sub_1000BC4D4(&qword_1016B5CC0, &qword_1013D7370) - 8) + 64) + 15;
  v1[53] = swift_task_alloc();
  v3 = sub_1000BC4D4(&unk_1016C8FC0, &unk_10139D7D0);
  v1[54] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v1[55] = swift_task_alloc();
  v1[56] = swift_task_alloc();
  v1[57] = swift_task_alloc();
  v5 = *(*(sub_1000BC4D4(&qword_101699DB0, &unk_101393100) - 8) + 64) + 15;
  v1[58] = swift_task_alloc();
  v6 = type metadata accessor for ObservedAdvertisement.BeaconIndexInformation(0);
  v1[59] = v6;
  v7 = *(v6 - 8);
  v1[60] = v7;
  v8 = *(v7 + 64) + 15;
  v1[61] = swift_task_alloc();
  v1[62] = swift_task_alloc();
  v1[63] = swift_task_alloc();
  v1[64] = swift_task_alloc();
  v1[65] = swift_task_alloc();
  v1[66] = swift_task_alloc();
  v9 = *(*(sub_1000BC4D4(&unk_10169BB50, &unk_101395760) - 8) + 64) + 15;
  v1[67] = swift_task_alloc();
  v10 = type metadata accessor for ObservedAdvertisement(0);
  v1[68] = v10;
  v11 = *(v10 - 8);
  v1[69] = v11;
  v12 = *(v11 + 64) + 15;
  v1[70] = swift_task_alloc();
  v1[71] = swift_task_alloc();
  v1[72] = swift_task_alloc();
  v1[73] = swift_task_alloc();
  v13 = type metadata accessor for BeaconIdentifier();
  v1[74] = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  v1[75] = swift_task_alloc();
  v1[76] = swift_task_alloc();
  v1[77] = swift_task_alloc();
  v1[78] = swift_task_alloc();
  v1[79] = swift_task_alloc();
  v1[80] = swift_task_alloc();
  v1[81] = swift_task_alloc();
  v1[82] = swift_task_alloc();

  return _swift_task_switch(sub_100F1D7BC, 0, 0);
}

uint64_t sub_100F1D7BC()
{
  sub_100F3A2F8(v0[52], v0[82], type metadata accessor for BeaconIdentifier);
  v1 = async function pointer to daemon.getter[1];
  v2 = swift_task_alloc();
  v0[83] = v2;
  *v2 = v0;
  v2[1] = sub_100F1D86C;

  return daemon.getter();
}

uint64_t sub_100F1D86C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 664);
  v12 = *v1;
  v3[84] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[85] = v6;
  v7 = type metadata accessor for Daemon();
  v3[86] = v7;
  v8 = type metadata accessor for ObservationStoreService();
  v9 = sub_100F3A180(&qword_1016AA400, &type metadata accessor for Daemon);
  v3[87] = v9;
  v10 = sub_100F3A180(&qword_1016AA450, type metadata accessor for ObservationStoreService);
  *v6 = v12;
  v6[1] = sub_100F1DA4C;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100F1DA4C(uint64_t a1)
{
  v3 = *(*v2 + 680);
  v4 = *v2;
  v4[88] = a1;
  v4[89] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_100F1DEB4, 0, 0);
  }

  else
  {
    v5 = v4[84];

    v6 = async function pointer to daemon.getter[1];
    v7 = swift_task_alloc();
    v4[90] = v7;
    *v7 = v4;
    v7[1] = sub_100F1DBC4;

    return daemon.getter();
  }
}

uint64_t sub_100F1DBC4(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 720);
  v5 = *v1;
  v3[91] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[92] = v7;
  v8 = type metadata accessor for BeaconKeyService();
  v9 = sub_100F3A180(&unk_1016B1090, type metadata accessor for BeaconKeyService);
  *v7 = v5;
  v7[1] = sub_100F1DD78;
  v10 = v3[87];
  v11 = v3[86];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_100F1DD78(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 736);
  v6 = *v2;
  v4[93] = a1;
  v4[94] = v1;

  if (v1)
  {
    v7 = sub_100F1E804;
    v8 = 0;
  }

  else
  {
    v9 = v4[91];

    v7 = sub_100F1E08C;
    v8 = a1;
  }

  return _swift_task_switch(v7, v8, 0);
}

uint64_t sub_100F1DEB4()
{
  v1 = v0[84];

  v27 = v0[89];
  v2 = v0[81];
  v3 = v0[80];
  v4 = v0[79];
  v5 = v0[78];
  v6 = v0[77];
  v7 = v0[76];
  v8 = v0[75];
  v9 = v0[73];
  v12 = v0[72];
  v13 = v0[71];
  v14 = v0[70];
  v15 = v0[67];
  v16 = v0[66];
  v17 = v0[65];
  v18 = v0[64];
  v19 = v0[63];
  v20 = v0[62];
  v21 = v0[61];
  v22 = v0[58];
  v23 = v0[57];
  v24 = v0[56];
  v25 = v0[55];
  v26 = v0[53];
  sub_100F3A500(v0[82], type metadata accessor for BeaconIdentifier);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100F1E08C()
{
  v1 = *(*(v0 + 744) + 128);
  *(v0 + 760) = v1;
  if (v1)
  {

    v2 = sub_100F1E118;
  }

  else
  {
    v2 = sub_100F1E9E8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100F1E118()
{
  v69 = v0;
  v1 = *(v0 + 416);
  v2 = (v1 + *(type metadata accessor for KeyGenerationBeaconInfo() + 24));
  v3 = *v2;
  *(v0 + 768) = *v2;
  v4 = v2[1];
  *(v0 + 776) = v4;
  v5 = v2[2];
  *(v0 + 784) = v5;
  v6 = v2[3];
  *(v0 + 792) = v6;
  v7 = v2[4];
  *(v0 + 800) = v7;
  v8 = v2[5];
  *(v0 + 808) = v8;
  if (v4 >> 60 == 15)
  {
    if (qword_101694B98 != -1)
    {
      swift_once();
    }

    v9 = *(v0 + 656);
    v10 = *(v0 + 648);
    v11 = type metadata accessor for Logger();
    sub_1000076D4(v11, qword_10177B810);
    sub_100F3A2F8(v9, v10, type metadata accessor for BeaconIdentifier);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    v14 = os_log_type_enabled(v12, v13);
    v15 = *(v0 + 648);
    if (v14)
    {
      v16 = *(v0 + 592);
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v65 = v18;
      *v17 = 141558275;
      *(v17 + 4) = 1752392040;
      *(v17 + 12) = 2081;
      type metadata accessor for UUID();
      sub_100F3A180(&qword_101696930, &type metadata accessor for UUID);
      v67 = dispatch thunk of CustomStringConvertible.description.getter();
      v68 = v19;
      v20._countAndFlagsBits = 47;
      v20._object = 0xE100000000000000;
      String.append(_:)(v20);
      v21 = v15 + *(v16 + 20);
      v22._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v22);

      sub_100F3A500(v15, type metadata accessor for BeaconIdentifier);
      v23 = sub_1000136BC(v67, v68, &v65);

      *(v17 + 14) = v23;
      _os_log_impl(&_mh_execute_header, v12, v13, "Missing keys from %{private,mask.hash}s", v17, 0x16u);
      sub_100007BAC(v18);
    }

    else
    {

      sub_100F3A500(v15, type metadata accessor for BeaconIdentifier);
    }

    v27 = *(v0 + 760);
    v28 = *(v0 + 744);
    v29 = *(v0 + 704);
    sub_100F32E3C();
    swift_allocError();
    *v30 = 2;
    swift_willThrow();

    v31 = *(v0 + 648);
    v32 = *(v0 + 640);
    v33 = *(v0 + 632);
    v34 = *(v0 + 624);
    v35 = *(v0 + 616);
    v36 = *(v0 + 608);
    v37 = *(v0 + 600);
    v38 = *(v0 + 584);
    v50 = *(v0 + 576);
    v51 = *(v0 + 568);
    v52 = *(v0 + 560);
    v53 = *(v0 + 536);
    v54 = *(v0 + 528);
    v55 = *(v0 + 520);
    v56 = *(v0 + 512);
    v57 = *(v0 + 504);
    v58 = *(v0 + 496);
    v59 = *(v0 + 488);
    v60 = *(v0 + 464);
    v61 = *(v0 + 456);
    v62 = *(v0 + 448);
    v63 = *(v0 + 440);
    v64 = *(v0 + 424);
    sub_100F3A500(*(v0 + 656), type metadata accessor for BeaconIdentifier);

    v39 = *(v0 + 8);

    return v39();
  }

  sub_100F32E90(v3, v4, v5, v6, v7, v8, sub_100017D5C, sub_1002DBC68);
  sub_100017D5C(v3, v4);
  sub_10002EA98(57, v3, v4, &v67);
  sub_100496F68(v67, v68, &v65);
  v24 = v65;
  v25 = v66;
  *(v0 + 816) = v65;
  *(v0 + 824) = v25;
  if (v25 >> 60 == 15)
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  *(v0 + 208) = v24;
  *(v0 + 216) = v25;
  *&v40 = v3;
  *(&v40 + 1) = v4;
  *&v41 = v5;
  *(&v41 + 1) = v6;
  *(v0 + 224) = v40;
  *(v0 + 240) = v41;
  if (v8 >> 60 == 15)
  {
    sub_100017D5C(v5, v6);
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v7 = 0;
    v8 = 0;
    v45 = 0xF000000000000000;
  }

  else
  {
    sub_100017D5C(v3, v4);
    sub_100017D5C(v3, v4);
    sub_100017D5C(v5, v6);
    sub_10002E98C(v7, v8);
    sub_10002EA98(57, v3, v4, &v67);
    sub_100496F68(v67, v68, &v65);
    v45 = v66;
    if (v66 >> 60 == 15)
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }

    v42 = v65;
    v43 = v3;
    v44 = v4;
  }

  *(v0 + 872) = v8;
  *(v0 + 864) = v7;
  *(v0 + 856) = v44;
  *(v0 + 848) = v43;
  *(v0 + 840) = v45;
  *(v0 + 832) = v42;
  *(v0 + 160) = v42;
  *(v0 + 168) = v45;
  *(v0 + 176) = v43;
  *(v0 + 184) = v44;
  *(v0 + 192) = v7;
  *(v0 + 200) = v8;
  sub_100017D5C(v3, v4);
  v46 = swift_task_alloc();
  *(v0 + 880) = v46;
  *v46 = v0;
  v46[1] = sub_100F1ECAC;
  v47 = *(v0 + 704);
  v48 = *(v0 + 656);
  v49 = *(v0 + 536);

  return sub_1010CD810(v49, v48);
}

uint64_t sub_100F1E804()
{
  v1 = v0[91];
  v2 = v0[88];

  v28 = v0[94];
  v3 = v0[81];
  v4 = v0[80];
  v5 = v0[79];
  v6 = v0[78];
  v7 = v0[77];
  v8 = v0[76];
  v9 = v0[75];
  v10 = v0[73];
  v13 = v0[72];
  v14 = v0[71];
  v15 = v0[70];
  v16 = v0[67];
  v17 = v0[66];
  v18 = v0[65];
  v19 = v0[64];
  v20 = v0[63];
  v21 = v0[62];
  v22 = v0[61];
  v23 = v0[58];
  v24 = v0[57];
  v25 = v0[56];
  v26 = v0[55];
  v27 = v0[53];
  sub_100F3A500(v0[82], type metadata accessor for BeaconIdentifier);

  v11 = v0[1];

  return v11();
}

uint64_t sub_100F1E9E8()
{
  if (qword_101694B98 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177B810);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Missing LTKGenerator!", v4, 2u);
  }

  v5 = v0[93];
  v6 = v0[88];

  sub_100F32E3C();
  swift_allocError();
  *v7 = 1;
  swift_willThrow();

  v8 = v0[81];
  v9 = v0[80];
  v10 = v0[79];
  v11 = v0[78];
  v12 = v0[77];
  v13 = v0[76];
  v14 = v0[75];
  v15 = v0[73];
  v18 = v0[72];
  v19 = v0[71];
  v20 = v0[70];
  v21 = v0[67];
  v22 = v0[66];
  v23 = v0[65];
  v24 = v0[64];
  v25 = v0[63];
  v26 = v0[62];
  v27 = v0[61];
  v28 = v0[58];
  v29 = v0[57];
  v30 = v0[56];
  v31 = v0[55];
  v32 = v0[53];
  sub_100F3A500(v0[82], type metadata accessor for BeaconIdentifier);

  v16 = v0[1];

  return v16();
}

uint64_t sub_100F1ECAC()
{
  v2 = *(*v1 + 880);
  v5 = *v1;
  *(*v1 + 888) = v0;

  if (v0)
  {
    v3 = sub_100F1FFD4;
  }

  else
  {
    v3 = sub_100F1EDC0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100F1EDC0()
{
  v154 = v0;
  v1 = *(v0 + 536);
  if ((*(*(v0 + 552) + 48))(v1, 1, *(v0 + 544)) == 1)
  {
    sub_10000B3A8(v1, &unk_10169BB50, &unk_101395760);
    if (qword_101694B98 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 656);
    v3 = *(v0 + 640);
    v4 = type metadata accessor for Logger();
    sub_1000076D4(v4, qword_10177B810);
    sub_100F3A2F8(v2, v3, type metadata accessor for BeaconIdentifier);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    v7 = os_log_type_enabled(v5, v6);
    v8 = *(v0 + 640);
    if (v7)
    {
      v9 = *(v0 + 592);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v151 = v11;
      *v10 = 141558275;
      *(v10 + 4) = 1752392040;
      *(v10 + 12) = 2081;
      type metadata accessor for UUID();
      sub_100F3A180(&qword_101696930, &type metadata accessor for UUID);
      v152 = dispatch thunk of CustomStringConvertible.description.getter();
      v153 = v12;
      v13._countAndFlagsBits = 47;
      v13._object = 0xE100000000000000;
      String.append(_:)(v13);
      v14 = v8 + *(v9 + 20);
      v15._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v15);

      sub_100F3A500(v8, type metadata accessor for BeaconIdentifier);
      v16 = sub_1000136BC(v152, v153, &v151);

      *(v10 + 14) = v16;
      _os_log_impl(&_mh_execute_header, v5, v6, "No observed advertisement for beacon %{private,mask.hash}s.", v10, 0x16u);
      sub_100007BAC(v11);
    }

    else
    {

      sub_100F3A500(v8, type metadata accessor for BeaconIdentifier);
    }

    v30 = swift_task_alloc();
    *(v0 + 1200) = v30;
    *v30 = v0;
    v31 = sub_100F2566C;
    goto LABEL_26;
  }

  sub_100F3A498(v1, *(v0 + 584), type metadata accessor for ObservedAdvertisement);
  if (qword_101694B98 != -1)
  {
    swift_once();
  }

  v17 = *(v0 + 584);
  v18 = *(v0 + 576);
  v19 = type metadata accessor for Logger();
  *(v0 + 896) = sub_1000076D4(v19, qword_10177B810);
  sub_100F3A2F8(v17, v18, type metadata accessor for ObservedAdvertisement);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  v22 = os_log_type_enabled(v20, v21);
  v23 = *(v0 + 576);
  if (v22)
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v152 = v25;
    *v24 = 141558275;
    *(v24 + 4) = 1752392040;
    *(v24 + 12) = 2081;
    v26 = sub_100018680(v25);
    v28 = v27;
    sub_100F3A500(v23, type metadata accessor for ObservedAdvertisement);
    v29 = sub_1000136BC(v26, v28, &v152);

    *(v24 + 14) = v29;
    _os_log_impl(&_mh_execute_header, v20, v21, "Found observed advertisement %{private,mask.hash}s.", v24, 0x16u);
    sub_100007BAC(v25);
  }

  else
  {

    sub_100F3A500(v23, type metadata accessor for ObservedAdvertisement);
  }

  v32 = *(v0 + 472);
  v33 = *(v0 + 480);
  v34 = *(v0 + 464);
  sub_1000D2A70(*(v0 + 584) + *(*(v0 + 544) + 52), v34, &qword_101699DB0, &unk_101393100);
  if ((*(v33 + 48))(v34, 1, v32) == 1)
  {
    v35 = *(v0 + 656);
    v36 = *(v0 + 632);
    sub_10000B3A8(*(v0 + 464), &qword_101699DB0, &unk_101393100);
    sub_100F3A2F8(v35, v36, type metadata accessor for BeaconIdentifier);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    v39 = os_log_type_enabled(v37, v38);
    v40 = *(v0 + 632);
    if (v39)
    {
      v41 = *(v0 + 592);
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v151 = v43;
      *v42 = 141558275;
      *(v42 + 4) = 1752392040;
      *(v42 + 12) = 2081;
      type metadata accessor for UUID();
      sub_100F3A180(&qword_101696930, &type metadata accessor for UUID);
      v152 = dispatch thunk of CustomStringConvertible.description.getter();
      v153 = v44;
      v45._countAndFlagsBits = 47;
      v45._object = 0xE100000000000000;
      String.append(_:)(v45);
      v46 = v40 + *(v41 + 20);
      v47._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v47);

      v48 = v152;
      v49 = v153;
      sub_100F3A500(v40, type metadata accessor for BeaconIdentifier);
      v50 = sub_1000136BC(v48, v49, &v151);

      *(v42 + 14) = v50;
      _os_log_impl(&_mh_execute_header, v37, v38, "Missing beaconIndexInformation for %{private,mask.hash}s!", v42, 0x16u);
      sub_100007BAC(v43);
    }

    else
    {

      sub_100F3A500(v40, type metadata accessor for BeaconIdentifier);
    }

    v30 = swift_task_alloc();
    *(v0 + 1176) = v30;
    *v30 = v0;
    v31 = sub_100F24F58;
LABEL_26:
    v30[1] = v31;
    v77 = *(v0 + 416);

    return sub_100F2C5D8(v77, (v0 + 208), (v0 + 160));
  }

  v51 = *(v0 + 584);
  v52 = *(v0 + 568);
  v53 = *(v0 + 528);
  v54 = *(v0 + 520);
  v56 = *(v0 + 504);
  v55 = *(v0 + 512);
  sub_100F3A498(*(v0 + 464), v53, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
  sub_100F3A2F8(v53, v54, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
  sub_100F3A2F8(v53, v55, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
  sub_100F3A2F8(v53, v56, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
  sub_100F3A2F8(v51, v52, type metadata accessor for ObservedAdvertisement);
  v57 = Logger.logObject.getter();
  v58 = static os_log_type_t.default.getter();
  v59 = os_log_type_enabled(v57, v58);
  v60 = *(v0 + 568);
  v61 = *(v0 + 520);
  v62 = *(v0 + 504);
  v63 = *(v0 + 512);
  if (v59)
  {
    v144 = *(v0 + 472);
    v64 = swift_slowAlloc();
    v152 = swift_slowAlloc();
    *v64 = 141559299;
    *(v64 + 4) = 1752392040;
    *(v64 + 12) = 2081;
    type metadata accessor for UUID();
    sub_100F3A180(&qword_101696930, &type metadata accessor for UUID);
    v65 = dispatch thunk of CustomStringConvertible.description.getter();
    v146 = v58;
    v67 = v66;
    log = v57;
    sub_100F3A500(v61, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
    v68 = sub_1000136BC(v65, v67, &v152);

    *(v64 + 14) = v68;
    *(v64 + 22) = 2048;
    v69 = *(v63 + *(v144 + 24));
    sub_100F3A500(v63, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
    *(v64 + 24) = v69;
    *(v64 + 32) = 2082;
    if (*(v62 + *(v144 + 20)))
    {
      v70 = 0x61646E6F6365732ELL;
    }

    else
    {
      v70 = 0x7972616D6972702ELL;
    }

    if (*(v62 + *(v144 + 20)))
    {
      v71 = 0xEA00000000007972;
    }

    else
    {
      v71 = 0xE800000000000000;
    }

    sub_100F3A500(v62, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
    v72 = sub_1000136BC(v70, v71, &v152);

    *(v64 + 34) = v72;
    *(v64 + 42) = 2160;
    *(v64 + 44) = 1752392040;
    *(v64 + 52) = 2081;
    v73 = sub_10001904C(*(v60 + 16), *(v60 + 24));
    v75 = v74;
    sub_100F3A500(v60, type metadata accessor for ObservedAdvertisement);
    v76 = sub_1000136BC(v73, v75, &v152);

    *(v64 + 54) = v76;
    _os_log_impl(&_mh_execute_header, log, v146, "Last observed beacon: %{private,mask.hash}s, index: %llu, sequence: %{public}s, advertisement: %{private,mask.hash}s.", v64, 0x3Eu);
    swift_arrayDestroy();
  }

  else
  {
    sub_100F3A500(*(v0 + 512), type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);

    sub_100F3A500(v62, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
    sub_100F3A500(v61, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
    sub_100F3A500(v60, type metadata accessor for ObservedAdvertisement);
  }

  v79 = *(v0 + 584);
  v80 = *(v0 + 528);
  v81 = *(v80 + *(*(v0 + 472) + 20));
  *(v0 + 1228) = v81;
  v82 = *(v0 + 656);
  if (*(v79 + 35))
  {
    v148 = v81;
    v83 = *(v0 + 608);
    sub_100F3A2F8(v80, *(v0 + 488), type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
    sub_100F3A2F8(v82, v83, type metadata accessor for BeaconIdentifier);
    v84 = Logger.logObject.getter();
    v85 = static os_log_type_t.info.getter();
    v86 = os_log_type_enabled(v84, v85);
    v87 = *(v0 + 608);
    if (v86)
    {
      v88 = *(v0 + 592);
      v89 = *(v0 + 488);
      v90 = *(v0 + 472);
      v91 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      v151 = v92;
      *v91 = 134218499;
      v93 = *(v89 + *(v90 + 24));
      sub_100F3A500(v89, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
      *(v91 + 4) = v93;
      *(v91 + 12) = 2160;
      *(v91 + 14) = 1752392040;
      *(v91 + 22) = 2081;
      type metadata accessor for UUID();
      sub_100F3A180(&qword_101696930, &type metadata accessor for UUID);
      v152 = dispatch thunk of CustomStringConvertible.description.getter();
      v153 = v94;
      v95._countAndFlagsBits = 47;
      v95._object = 0xE100000000000000;
      String.append(_:)(v95);
      v96 = v87 + *(v88 + 20);
      v97._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v97);

      v98 = v152;
      v99 = v153;
      sub_100F3A500(v87, type metadata accessor for BeaconIdentifier);
      v100 = sub_1000136BC(v98, v99, &v151);

      *(v91 + 24) = v100;
      _os_log_impl(&_mh_execute_header, v84, v85, "Using last observed index %llu for beacon %{private,mask.hash}s", v91, 0x20u);
      sub_100007BAC(v92);
    }

    else
    {
      sub_100F3A500(*(v0 + 488), type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);

      sub_100F3A500(v87, type metadata accessor for BeaconIdentifier);
    }

    v121 = *(v0 + 824);
    v122 = *(v0 + 816);
    v123 = *(v0 + 792);
    v124 = *(v0 + 784);
    v125 = *(v0 + 776);
    v126 = *(v0 + 768);
    v147 = *(v0 + 760);
    v127 = *(v0 + 528);
    v128 = *(v0 + 472);
    sub_1000BC4D4(&qword_1016B3B28, &qword_1013D48D0);
    v129 = swift_allocObject();
    *(v0 + 1096) = v129;
    *(v129 + 16) = xmmword_101385D80;
    *&v130 = v122;
    *(&v130 + 1) = v121;
    *&v131 = v126;
    *(&v131 + 1) = v125;
    *(v0 + 32) = v131;
    *(v0 + 16) = v130;
    *(v0 + 48) = v124;
    *(v0 + 56) = v123;
    v132 = *(v127 + *(v128 + 24));
    *(v0 + 1104) = v132;
    sub_100017D5C(v122, v121);
    sub_100017D5C(v126, v125);
    sub_100017D5C(v124, v123);
    v133 = swift_task_alloc();
    *(v0 + 1112) = v133;
    *v133 = v0;
    v133[1] = sub_100F23A10;
    v134 = *(v0 + 656);

    return sub_100424C7C(v0 + 256, v134, v0 + 16, v0 + 160, v148, v132, v147, 4000);
  }

  else
  {
    v101 = *(v0 + 624);
    v102 = *(v79 + 34);
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v103 = swift_allocObject();
    *(v103 + 16) = xmmword_101385D80;
    *(v103 + 56) = &type metadata for UInt8;
    *(v103 + 64) = &protocol witness table for UInt8;
    *(v103 + 32) = v102;
    v104 = String.init(format:_:)();
    v106 = v105;
    sub_100F3A2F8(v82, v101, type metadata accessor for BeaconIdentifier);
    v107 = Logger.logObject.getter();
    v108 = static os_log_type_t.info.getter();
    v109 = os_log_type_enabled(v107, v108);
    v110 = *(v0 + 624);
    if (v109)
    {
      v149 = v81;
      v111 = *(v0 + 592);
      v112 = swift_slowAlloc();
      v151 = swift_slowAlloc();
      *v112 = 136446723;
      v113 = sub_1000136BC(v104, v106, &v151);

      *(v112 + 4) = v113;
      *(v112 + 12) = 2160;
      *(v112 + 14) = 1752392040;
      *(v112 + 22) = 2081;
      type metadata accessor for UUID();
      sub_100F3A180(&qword_101696930, &type metadata accessor for UUID);
      v152 = dispatch thunk of CustomStringConvertible.description.getter();
      v153 = v114;
      v115._countAndFlagsBits = 47;
      v115._object = 0xE100000000000000;
      String.append(_:)(v115);
      v116 = *(v111 + 20);
      v81 = v149;
      v117._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v117);

      v118 = v152;
      v119 = v153;
      sub_100F3A500(v110, type metadata accessor for BeaconIdentifier);
      v120 = sub_1000136BC(v118, v119, &v151);

      *(v112 + 24) = v120;
      _os_log_impl(&_mh_execute_header, v107, v108, "Hint %{public}s is available for %{private,mask.hash}s", v112, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      sub_100F3A500(v110, type metadata accessor for BeaconIdentifier);
    }

    v135 = *(v0 + 816);
    v136 = *(v0 + 792);
    v137 = *(v0 + 784);
    v150 = *(v0 + 768);
    v138 = *(v0 + 760);
    v139 = *(v0 + 528);
    v140 = *(v0 + 472);
    *(v0 + 80) = v150;
    *(v0 + 64) = v135;
    *(v0 + 96) = v137;
    *(v0 + 104) = v136;
    v141 = *(v139 + *(v140 + 24));
    *(v0 + 904) = v141;
    sub_100017D5C(v135, *(&v135 + 1));
    sub_100017D5C(v150, *(&v150 + 1));
    sub_100017D5C(v137, v136);
    v142 = swift_task_alloc();
    *(v0 + 912) = v142;
    *v142 = v0;
    v142[1] = sub_100F202A0;
    v143 = *(v0 + 656);

    return sub_100425600(v143, (v0 + 64), v81, v141, v102, v138, 4000);
  }
}