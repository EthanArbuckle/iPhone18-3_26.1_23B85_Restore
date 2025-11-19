unint64_t sub_10013A000()
{
  type metadata accessor for SecAccessControl(0);
  v0 = static SecAccessControlRef.fromData(_:)();
  _StringGuts.grow(_:)(29);

  if (v0)
  {
    v1 = v0;
    v2 = SecAccessControlRef.constraintsDescription.getter();
    v4 = v3;
  }

  else
  {
    v4 = 0xE500000000000000;
    v2 = 0x3E6C696E3CLL;
  }

  v5._countAndFlagsBits = v2;
  v5._object = v4;
  String.append(_:)(v5);

  return 0xD00000000000001BLL;
}

unint64_t sub_10013A0F4()
{
  _StringGuts.grow(_:)(32);

  v0 = Data.base16EncodedString()();
  String.append(_:)(v0);

  _StringGuts.grow(_:)(17);

  v1 = Data.base16EncodedString()();
  String.append(_:)(v1);

  v2._countAndFlagsBits = 0x617473657474410ALL;
  v2._object = 0xEF203A206E6F6974;
  String.append(_:)(v2);

  _StringGuts.grow(_:)(17);

  v3 = Data.base16EncodedString()();
  String.append(_:)(v3);

  v4._countAndFlagsBits = 0x4B63696C6275700ALL;
  v4._object = 0xEF203A2020207965;
  String.append(_:)(v4);

  _StringGuts.grow(_:)(17);

  v5 = Data.base16EncodedString()();
  String.append(_:)(v5);

  v6._countAndFlagsBits = 0x6220656C6F68770ALL;
  v6._object = 0xEF203A2020626F6CLL;
  String.append(_:)(v6);

  return 0xD00000000000001ELL;
}

unint64_t sub_10013A364()
{
  _StringGuts.grow(_:)(17);

  v0 = Data.base16EncodedString()();
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0x617473657474410ALL;
  v1._object = 0xEF203A206E6F6974;
  String.append(_:)(v1);

  _StringGuts.grow(_:)(17);

  v2 = Data.base16EncodedString()();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 0x4B63696C6275700ALL;
  v3._object = 0xEF203A2020207965;
  String.append(_:)(v3);

  _StringGuts.grow(_:)(17);

  v4 = Data.base16EncodedString()();
  String.append(_:)(v4);

  v5._countAndFlagsBits = 0x6220656C6F68770ALL;
  v5._object = 0xEF203A2020626F6CLL;
  String.append(_:)(v5);

  return 0xD00000000000001CLL;
}

uint64_t sub_10013A578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for DIPError.Code();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  v5[10] = v9;
  v10 = *(v9 - 8);
  v5[11] = v10;
  v11 = *(v10 + 64) + 15;
  v5[12] = swift_task_alloc();

  return _swift_task_switch(sub_10013A69C, 0, 0);
}

uint64_t sub_10013A69C()
{
  v30 = v0;
  v1 = v0[12];
  v2 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  defaultLogger()();
  sub_100009708(v4, v3);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  sub_1000092BC(v4, v3);

  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[11];
  v8 = v0[12];
  v10 = v0[10];
  if (v7)
  {
    v27 = v0[4];
    v28 = v0[5];
    v11 = v0[2];
    v12 = v0[3];
    v13 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v13 = 136315394;
    v14 = Data.base64EncodedString(options:)(0);
    v15 = sub_10010150C(v14._countAndFlagsBits, v14._object, &v29);

    *(v13 + 4) = v15;
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_10010150C(v27, v28, &v29);
    _os_log_impl(&_mh_execute_header, v5, v6, "Trying to persist protected public key: %s for pairingID: %s", v13, 0x16u);
    swift_arrayDestroy();
  }

  (*(v9 + 8))(v8, v10);
  v16 = v0[5];
  v17 = v0[3];
  v18 = v0[4];
  v19 = v0[2];
  v20 = *(v0[6] + 16);
  v21 = swift_allocObject();
  v0[13] = v21;
  v21[2] = v18;
  v21[3] = v16;
  v21[4] = v19;
  v21[5] = v17;
  sub_100009708(v19, v17);
  v22 = *(v20 + 16);
  v23 = swift_allocObject();
  v0[14] = v23;
  *(v23 + 16) = sub_1001412B4;
  *(v23 + 24) = v21;
  v24 = async function pointer to AsyncCoreDataContainer.performWrite<A>(_:)[1];

  v25 = swift_task_alloc();
  v0[15] = v25;
  *v25 = v0;
  v25[1] = sub_10013A954;

  return AsyncCoreDataContainer.performWrite<A>(_:)();
}

uint64_t sub_10013A954()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v8 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = sub_10013AAE8;
  }

  else
  {
    v6 = *(v2 + 104);
    v5 = *(v2 + 112);

    v4 = sub_10013AA78;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10013AA78()
{
  v1 = v0[12];
  v2 = v0[9];

  v3 = v0[1];

  return v3();
}

uint64_t sub_10013AAE8()
{
  v1 = v0[16];
  v2 = v0[13];
  v3 = v0[14];
  v4 = v0[12];
  v6 = v0[8];
  v5 = v0[9];
  v7 = v0[7];

  (*(v6 + 104))(v5, enum case for DIPError.Code.internalError(_:), v7);
  swift_errorRetain();
  sub_10002688C(&_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v8 = v0[1];

  return v8();
}

void sub_10013AC98(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5)
{
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100057464(a2, a3);
  if (!v5)
  {
    v26 = v11;
    v27 = v12;
    type metadata accessor for StoredTrustKey();
    v16 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext:*(a1 + 16)];
    isa = Data._bridgeToObjectiveC()().super.isa;
    [v16 setProtectedPublicKey:isa];

    v18 = String._bridgeToObjectiveC()();
    [v16 setPairingID:v18];

    sub_100050240();
    defaultLogger()();
    sub_100009708(a4, a5);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();
    sub_1000092BC(a4, a5);
    if (os_log_type_enabled(v19, v20))
    {
      v21 = v16;
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v28 = v23;
      *v22 = 136315138;
      v24 = Data.base64EncodedString(options:)(0);
      v25 = sub_10010150C(v24._countAndFlagsBits, v24._object, &v28);

      *(v22 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v19, v20, "Successfully persisted protected public key: %s", v22, 0xCu);
      sub_100005090(v23);
    }

    else
    {
    }

    (*(v27 + 8))(v15, v26);
  }
}

uint64_t sub_10013AF38(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = type metadata accessor for DIPError.Code();
  v3[7] = v4;
  v5 = *(v4 - 8);
  v3[8] = v5;
  v6 = *(v5 + 64) + 15;
  v3[9] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v3[10] = v7;
  v8 = *(v7 - 8);
  v3[11] = v8;
  v9 = *(v8 + 64) + 15;
  v3[12] = swift_task_alloc();

  return _swift_task_switch(sub_10013B058, 0, 0);
}

uint64_t sub_10013B058()
{
  v24 = v0;
  v1 = v0[12];
  v2 = v0[5];
  defaultLogger()();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  v5 = os_log_type_enabled(v3, v4);
  v7 = v0[11];
  v6 = v0[12];
  v8 = v0[10];
  if (v5)
  {
    v10 = v0[4];
    v9 = v0[5];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v23 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_10010150C(v10, v9, &v23);
    _os_log_impl(&_mh_execute_header, v3, v4, "Trying to retrieve persisted protected public key for pairingID: %s", v11, 0xCu);
    sub_100005090(v12);
  }

  (*(v7 + 8))(v6, v8);
  v13 = v0[5];
  v14 = v0[4];
  v15 = *(v0[6] + 16);
  v16 = swift_allocObject();
  v0[13] = v16;
  *(v16 + 16) = v14;
  *(v16 + 24) = v13;
  v17 = *(v15 + 16);
  v18 = swift_allocObject();
  v0[14] = v18;
  *(v18 + 16) = sub_100141134;
  *(v18 + 24) = v16;
  v19 = async function pointer to AsyncCoreDataContainer.performRead<A>(_:)[1];

  v20 = swift_task_alloc();
  v0[15] = v20;
  v21 = sub_100004E70(&qword_100203B08, &qword_1001AE520);
  *v20 = v0;
  v20[1] = sub_10013B2AC;

  return AsyncCoreDataContainer.performRead<A>(_:)(v0 + 2, sub_1000DCAB0, v18, v21);
}

uint64_t sub_10013B2AC()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v8 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = sub_10013B454;
  }

  else
  {
    v6 = *(v2 + 104);
    v5 = *(v2 + 112);

    v4 = sub_10013B3D0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10013B3D0()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[2];
  v4 = v0[3];

  v5 = v0[1];

  return v5(v3, v4);
}

uint64_t sub_10013B454()
{
  v1 = v0[16];
  v2 = v0[13];
  v3 = v0[14];
  v4 = v0[12];
  v6 = v0[8];
  v5 = v0[9];
  v7 = v0[7];

  (*(v6 + 104))(v5, enum case for DIPError.Code.internalError(_:), v7);
  swift_errorRetain();
  sub_10002688C(&_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v8 = v0[1];

  return v8();
}

void sub_10013B604(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v33 - v13;
  v15 = sub_1000508BC(0xD000000000000012, 0x80000001001B18B0);
  if (!v3)
  {
    if (v15)
    {
      v16 = v15;
      if ([v15 version]== 2)
      {
        v17 = sub_100112AE4(&off_1001F4288);
        v23 = sub_100140CAC(a1, v17);

        v24 = *(v23 + 2);

        if (v24)
        {
          v25 = *(a2 + 64);
          v26 = v16;
          v27 = sub_10013EB24(v16);

          v21 = sub_10002E3C4(v27);
          v22 = v32;

          goto LABEL_9;
        }

        defaultLogger()();
        v28 = Logger.logObject.getter();
        v29 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          *v30 = 0;
          _os_log_impl(&_mh_execute_header, v28, v29, "establishPrearmTrust - no credentials used, forcing new progenitory key attestations", v30, 2u);

          v31 = v16;
        }

        else
        {
          v31 = v28;
          v28 = v16;
        }

        (*(v8 + 8))(v14, v7);
LABEL_8:
        v21 = 0;
        v22 = 0xF000000000000000;
LABEL_9:
        *a3 = v21;
        a3[1] = v22;
        return;
      }
    }

    defaultLogger()();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "establishPrearmTrust - no attestation for globalAuthACL", v20, 2u);
    }

    (*(v8 + 8))(v12, v7);
    goto LABEL_8;
  }
}

void sub_10013B934(uint64_t a1@<X1>, void *a2@<X2>, uint64_t *a3@<X8>)
{
  v5 = sub_100056E4C(a1, a2);
  if (!v3)
  {
    if (v5)
    {
      v6 = v5;
      v7 = [v5 protectedPublicKey];
      if (v7)
      {
        v8 = v7;
        v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v11 = v10;
      }

      else
      {

        v9 = 0;
        v11 = 0xF000000000000000;
      }
    }

    else
    {
      v9 = 0;
      v11 = 0xF000000000000000;
    }

    *a3 = v9;
    a3[1] = v11;
  }
}

uint64_t sub_10013B9D8()
{
  v1[3] = v0;
  v2 = type metadata accessor for DIPError.Code();
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();

  return _swift_task_switch(sub_10013BA98, 0, 0);
}

uint64_t sub_10013BA98()
{
  v1 = v0[3];
  v2 = *(*(v1 + 16) + 16);
  v3 = swift_allocObject();
  v0[7] = v3;
  *(v3 + 16) = sub_100141118;
  *(v3 + 24) = v1;
  v4 = async function pointer to AsyncCoreDataContainer.performRead<A>(_:)[1];
  swift_retain_n();
  v5 = swift_task_alloc();
  v0[8] = v5;
  v6 = sub_100004E70(&qword_100203AC8, &qword_1001AE420);
  *v5 = v0;
  v5[1] = sub_10013BBB4;

  return AsyncCoreDataContainer.performRead<A>(_:)(v0 + 2, sub_100140EA4, v3, v6);
}

uint64_t sub_10013BBB4()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  v3[9] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10013BD1C, 0, 0);
  }

  else
  {
    v5 = v3[6];
    v4 = v3[7];
    v6 = v3[3];

    v7 = v3[2];

    v8 = v3[1];

    return v8(v7);
  }
}

uint64_t sub_10013BD1C()
{
  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[3];

  (*(v5 + 104))(v2, enum case for DIPError.Code.internalError(_:), v4);
  swift_errorRetain();
  sub_10002688C(&_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v7 = v0[1];

  return v7();
}

uint64_t sub_10013BEB4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 25) = a4;
  *(v4 + 40) = a2;
  *(v4 + 48) = a3;
  *(v4 + 32) = a1;
  v5 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  *(v4 + 56) = v5;
  v6 = *(v5 - 8);
  *(v4 + 64) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 72) = swift_task_alloc();

  return _swift_task_switch(sub_10013BF7C, 0, 0);
}

uint64_t sub_10013BF7C()
{
  v1 = *(v0 + 64);
  v15 = *(v0 + 72);
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
  v4 = *(v0 + 25);
  v5 = *(v0 + 40);
  v6 = swift_allocObject();
  *(v0 + 80) = v6;
  *(v6 + 16) = v5;
  *(v6 + 24) = v3;
  *(v6 + 32) = v4;
  v7 = *(v5 + 16);
  v8 = swift_allocObject();
  *(v0 + 88) = v8;
  *(v8 + 16) = sub_10013EA9C;
  *(v8 + 24) = v6;
  v9 = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
  v10 = *(v1 + 104);

  v10(v15, v9, v2);
  v11 = async function pointer to NSManagedObjectContext.perform<A>(schedule:_:)[1];

  v12 = swift_task_alloc();
  *(v0 + 96) = v12;
  *v12 = v0;
  v12[1] = sub_10013C108;
  v13 = *(v0 + 72);

  return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 16, v13, sub_10013EABC, v8, &type metadata for BiometricStorage.DBResult);
}

uint64_t sub_10013C108()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v12 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = *(v2 + 88);
    (*(*(v2 + 64) + 8))(*(v2 + 72), *(v2 + 56));

    v5 = sub_10013C37C;
  }

  else
  {
    v7 = *(v2 + 80);
    v6 = *(v2 + 88);
    v9 = *(v2 + 64);
    v8 = *(v2 + 72);
    v10 = *(v2 + 56);

    (*(v9 + 8))(v8, v10);
    *(v2 + 112) = *(v2 + 16);
    *(v2 + 26) = *(v2 + 24);
    v5 = sub_10013C290;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10013C290()
{
  v1 = *(v0 + 112);
  if (v1)
  {
    v2 = 1;
  }

  else
  {
    v2 = *(v0 + 26) == 0;
  }

  if (v2)
  {
    v3 = *(v0 + 72);
    **(v0 + 32) = v1;

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = swift_task_alloc();
    *(v0 + 120) = v6;
    *v6 = v0;
    v6[1] = sub_10013C3E8;
    v7 = *(v0 + 40);
    v8 = *(v0 + 48);

    return sub_10013CA44(v7);
  }
}

uint64_t sub_10013C37C()
{
  v1 = v0[10];

  v2 = v0[13];
  v3 = v0[9];

  v4 = v0[1];

  return v4();
}

uint64_t sub_10013C3E8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 120);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v4 + 72);

    v8 = *(v6 + 8);

    return v8();
  }

  else
  {
    *(v4 + 128) = a1;

    return _swift_task_switch(sub_10013C53C, 0, 0);
  }
}

uint64_t sub_10013C53C()
{
  v1 = *(v0 + 72);
  **(v0 + 32) = *(v0 + 128);

  v2 = *(v0 + 8);

  return v2();
}

void sub_10013C5AC(uint64_t a1@<X1>, int a2@<W2>, uint64_t a3@<X8>)
{
  LODWORD(v41) = a2;
  v39 = a1;
  v40 = a3;
  v4 = type metadata accessor for DIPError.Code();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v37 - v15;
  v17 = sub_1000508BC(0xD000000000000012, 0x80000001001B18B0);
  if (!v3)
  {
    v18 = v41;
    v37 = v10;
    v38 = 0;
    v19 = v39;
    v20 = v40;
    if (v17)
    {
      v21 = v17;
      if ([v17 version]!= 2)
      {
        if ((v18 & 1) == 0)
        {
          defaultLogger()();
          v31 = Logger.logObject.getter();
          v32 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v31, v32))
          {
            v33 = swift_slowAlloc();
            *v33 = 0;
            _os_log_impl(&_mh_execute_header, v31, v32, "acl does not contain progenitor key, returning nil", v33, 2u);

            v34 = v21;
          }

          else
          {
            v34 = v31;
            v31 = v21;
          }

          v35 = v20;
          v36 = v37;

          (*(v36 + 8))(v14, v9);
          v29 = 0;
          v30 = 0;
          goto LABEL_16;
        }

        v29 = 0;
        v30 = 1;
LABEL_15:
        v35 = v20;
LABEL_16:
        *v35 = v29;
        *(v35 + 8) = v30;
        return;
      }

      v22 = *(v19 + 64);
      v23 = v21;
      v24 = v38;
      v25 = sub_10013EB24(v21);
      v38 = v24;
      if (v24)
      {

        v41 = "deviceInformationProvider";
        (*(v5 + 104))(v8, enum case for DIPError.Code.internalError(_:), v4);
        swift_errorRetain();
        sub_10002688C(_swiftEmptyArrayStorage);
        type metadata accessor for DIPError();
        sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError);
        swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();

        return;
      }

      v29 = v25;
    }

    else
    {
      defaultLogger()();
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&_mh_execute_header, v26, v27, "no global acl, returning nil attestation", v28, 2u);
      }

      (*(v37 + 8))(v16, v9);
      v29 = 0;
    }

    v30 = 0;
    goto LABEL_15;
  }
}

uint64_t sub_10013CA44(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v2[10] = v6;
  v7 = *(v6 - 8);
  v2[11] = v7;
  v8 = *(v7 + 64) + 15;
  v2[12] = swift_task_alloc();

  return _swift_task_switch(sub_10013CB60, 0, 0);
}

uint64_t sub_10013CB60()
{
  v1 = v0[12];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Migrating progenitor key ACL", v4, 2u);
  }

  v6 = v0[11];
  v5 = v0[12];
  v8 = v0[9];
  v7 = v0[10];
  v9 = v0[7];
  v10 = v0[8];
  v11 = v0[5];

  (*(v6 + 8))(v5, v7);
  v12 = *(v11 + 16);
  v13 = swift_allocObject();
  v0[13] = v13;
  *(v13 + 16) = sub_10013EB08;
  *(v13 + 24) = v11;
  v14 = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
  v15 = *(v10 + 104);

  v15(v8, v14, v9);
  v16 = async function pointer to NSManagedObjectContext.perform<A>(schedule:_:)[1];

  v17 = swift_task_alloc();
  v0[14] = v17;
  v18 = sub_100004E70(&qword_100203AD0, &qword_1001AE430);
  *v17 = v0;
  v17[1] = sub_10013CD54;
  v19 = v0[9];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 2, v19, sub_100026510, v13, v18);
}

uint64_t sub_10013CD54()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *v1;
  v2[15] = v0;

  v5 = v2[13];
  v6 = v2[9];
  v7 = v2[8];
  v8 = v2[7];
  if (v0)
  {
    (*(v7 + 8))(v2[9], v2[7]);

    v9 = sub_10013D060;
  }

  else
  {
    v10 = v2[5];
    v11 = v2[13];

    (*(v7 + 8))(v6, v8);
    v9 = sub_10013CF1C;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_10013CF1C()
{
  v1 = v0[15];
  v2 = v0[6];
  v3 = v0[2];
  v4 = v0[3];
  v0[16] = v3;
  v0[17] = v4;
  v5 = v0[4];
  v6 = sub_1001326E0(v3, v4, v5);
  v0[18] = v6;
  v0[19] = v7;
  if (v1)
  {
    sub_1000092BC(v3, v4);
    v8 = v0[12];
    v9 = v0[9];

    v10 = v0[1];

    return v10();
  }

  else
  {
    v12 = v6;
    v13 = v7;
    v14 = swift_task_alloc();
    v0[20] = v14;
    *v14 = v0;
    v14[1] = sub_10013D0D8;
    v15 = v0[5];
    v16 = v0[6];

    return sub_10012F470(v12, v13, v5, v15, 1);
  }
}

uint64_t sub_10013D060()
{
  v1 = v0[5];

  v2 = v0[15];
  v3 = v0[12];
  v4 = v0[9];

  v5 = v0[1];

  return v5();
}

uint64_t sub_10013D0D8(uint64_t a1, unint64_t a2)
{
  v6 = *(*v3 + 160);
  v9 = *v3;
  *(*v3 + 168) = v2;

  if (v2)
  {
    v7 = sub_10013D390;
  }

  else
  {
    sub_10001C120(a1, a2);
    v7 = sub_10013D208;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10013D208()
{
  v1 = v0[21];
  v2 = v0[5];
  v3 = sub_1000508BC(0xD000000000000012, 0x80000001001B18B0);
  if (v1)
  {
    v4 = v0[16];
    v5 = v0[17];
    sub_1000092BC(v0[18], v0[19]);
    sub_1000092BC(v4, v5);
    v13 = v0[12];
    v14 = v0[9];

    v15 = v0[1];

    return v15();
  }

  else
  {
    v6 = v3;
    v7 = *(v0[6] + 64);
    v8 = sub_10013EB24(v3);
    v10 = v0[18];
    v9 = v0[19];
    v12 = v0[16];
    v11 = v0[17];
    v17 = v0[12];
    v18 = v0[9];
    v19 = v8;

    sub_1000092BC(v10, v9);
    sub_1000092BC(v12, v11);

    v20 = v0[1];

    return v20(v19);
  }
}

uint64_t sub_10013D390()
{
  v1 = v0[16];
  v2 = v0[17];
  sub_1000092BC(v0[18], v0[19]);
  sub_1000092BC(v1, v2);
  v3 = v0[21];
  v4 = v0[12];
  v5 = v0[9];

  v6 = v0[1];

  return v6();
}

void sub_10013D418(uint64_t a1@<X1>, unint64_t *a2@<X8>)
{
  v5 = sub_1000508BC(0xD00000000000001ELL, 0x80000001001B18D0);
  if (!v2)
  {
    if (v5)
    {
      v6 = *(a1 + 64);
      v7 = v5;
      v8 = v5;
      v9 = sub_10013EB24(v7);

      *a2 = v9;
    }

    else
    {
      *a2 = 0;
    }
  }
}

void sub_10013D4C0(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for DIPError.Code();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v33[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000508BC(0xD000000000000012, 0x80000001001B18B0);
  if (!v1)
  {
    v9 = v8;
    if (v8)
    {
      if ([v8 version] == 1)
      {
        v10 = [v9 encryptedACL];
        if (v10)
        {
          v11 = v10;
          v12 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v14 = v13;

          v15 = [v9 aclType];
          if ((v15 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else
          {
            v16 = v15;
            type metadata accessor for AppleIDVManager();
            sub_1000215BC(v33);
            sub_100009278(v33, v33[3]);
            v17 = dispatch thunk of AppleIDVManaging.recoverPersistedACLBlob(from:)();
            v32 = v1;
            v21 = v17;
            v23 = v22;
            v24 = objc_allocWithZone(DCCredentialAuthACL);
            isa = Data._bridgeToObjectiveC()().super.isa;
            v26 = [v24 initWithData:isa type:v16];
            sub_1000092BC(v12, v14);

            sub_1000092BC(v21, v23);
            sub_100005090(v33);
            v27 = [v26 aclData];
            v28 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v30 = v29;

            *a1 = v28;
            a1[1] = v30;
            v31 = [v26 aclType];

            a1[2] = v31;
          }
        }

        else
        {
          (*(v4 + 104))(v7, enum case for DIPError.Code.idcsMissingGlobalAuthACL(_:), v3);
          sub_10002688C(_swiftEmptyArrayStorage);
          type metadata accessor for DIPError();
          sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError);
          swift_allocError();
          DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
          swift_willThrow();
        }
      }

      else
      {
        v33[0] = 0;
        v33[1] = 0xE000000000000000;
        _StringGuts.grow(_:)(39);
        v18._countAndFlagsBits = 0xD000000000000025;
        v18._object = 0x80000001001BB2F0;
        String.append(_:)(v18);
        v19 = [v9 version];
        if (v19 == 2)
        {
          v20 = 1;
        }

        else
        {
          v20 = 2;
        }

        if (v19 == 1)
        {
          v20 = 0;
        }

        v34 = v20;
        _print_unlocked<A, B>(_:_:)();
        (*(v4 + 104))(v7, enum case for DIPError.Code.idcsInvalidACLVersionStored(_:), v3);
        sub_10002688C(_swiftEmptyArrayStorage);
        type metadata accessor for DIPError();
        sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError);
        swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();
      }
    }

    else
    {
      (*(v4 + 104))(v7, enum case for DIPError.Code.idcsMissingGlobalAuthACL(_:), v3);
      sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
    }
  }
}

uint64_t sub_10013DAD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = sub_1000105C8;

  return sub_1001A02E0(a2, a4, a5, a6, a3);
}

uint64_t sub_10013DB94()
{
  v1[2] = v0;
  v2 = type metadata accessor for DIPError.Code();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_10013DC54, 0, 0);
}

uint64_t sub_10013DC54()
{
  v1 = v0[2];
  v2 = *(*(v1 + 16) + 16);
  v3 = swift_allocObject();
  v0[6] = v3;
  *(v3 + 16) = &unk_1001AE478;
  *(v3 + 24) = v1;
  v4 = async function pointer to AsyncCoreDataContainer.read<A>(_:)[1];
  swift_retain_n();
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_10013DD60;

  return AsyncCoreDataContainer.read<A>(_:)(v0 + 9, &unk_1001AE488, v3, &type metadata for Bool);
}

uint64_t sub_10013DD60()
{
  v2 = *(*v1 + 56);
  v3 = *v1;
  *(v3 + 64) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10013DEC8, 0, 0);
  }

  else
  {
    v5 = *(v3 + 40);
    v4 = *(v3 + 48);
    v6 = *(v3 + 16);

    v7 = *(v3 + 72);

    v8 = *(v3 + 8);

    return v8(v7);
  }
}

uint64_t sub_10013DEC8()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[2];

  (*(v5 + 104))(v2, enum case for DIPError.Code.internalError(_:), v4);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v7 = v0[1];

  return v7(0);
}

uint64_t sub_10013E068(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_10013E08C, 0, 0);
}

uint64_t sub_10013E08C()
{
  v1 = v0[4];
  v0[5] = *(*(v1 + 64) + 16);

  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_10013E154;
  v3 = v0[3];

  return (sub_1001A3950)(v3, v1 + 80);
}

uint64_t sub_10013E154(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {
    v7 = sub_10013E2F0;
  }

  else
  {
    *(v4 + 64) = a1 & 1;
    v7 = sub_10013E280;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10013E280()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 40);
  v3 = *(v0 + 16);

  *v3 = v1;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10013E2F0()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

uint64_t sub_10013E354(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1000104D4;

  return sub_10019F998(a2, a3);
}

uint64_t sub_10013E3F0()
{
  v1 = v0[2];

  sub_100005090(v0 + 3);
  v2 = v0[8];

  v3 = v0[9];

  sub_100005090(v0 + 10);

  return swift_deallocClassInstance();
}

uint64_t sub_10013E46C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10013E4C0(uint64_t a1, uint64_t *a2, int *a3)
{
  *(v3 + 16) = a1;
  v4 = *a2;
  v8 = (a3 + *a3);
  v5 = a3[1];
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_10013E5C0;

  return v8(v3 + 32, v4);
}

uint64_t sub_10013E5C0()
{
  v2 = *v1;
  v3 = *(*v1 + 24);
  v4 = *v1;

  if (!v0)
  {
    **(v2 + 16) = *(v2 + 32);
  }

  v5 = *(v4 + 8);

  return v5();
}

uint64_t sub_10013E6D0(uint64_t a1, uint64_t *a2, int *a3)
{
  *(v3 + 24) = a1;
  v4 = *a2;
  v8 = (a3 + *a3);
  v5 = a3[1];
  v6 = swift_task_alloc();
  *(v3 + 32) = v6;
  *v6 = v3;
  v6[1] = sub_10013E7D0;

  return v8(v3 + 16, v4);
}

uint64_t sub_10013E7D0()
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  v4 = *v1;

  if (!v0)
  {
    **(v2 + 24) = *(v2 + 16);
  }

  v5 = *(v4 + 8);

  return v5();
}

uint64_t sub_10013E8DC()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_10013E914(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1000105C8;

  return sub_10013BEB4(a1, a2, v6, v7);
}

uint64_t sub_10013E9CC(uint64_t a1, uint64_t *a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1000105C8;

  return sub_10013E6D0(a1, a2, v7);
}

void *sub_10013EABC@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = v4(&v8);
  if (!v2)
  {
    v7 = v9;
    *a1 = v8;
    *(a1 + 8) = v7;
  }

  return result;
}

unint64_t sub_10013EB24(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DIPError.Code();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(a1);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!v7)
  {
    goto LABEL_9;
  }

  v10 = [v7 progenitorKey];
  if (!v10)
  {
    goto LABEL_9;
  }

  v11 = v10;
  v12 = [v10 identifier];
  if (!v12)
  {

LABEL_9:
    (*(v5 + 104))(v9, enum case for DIPError.Code.idcsMissingProgenitorKeyInAuthACL(_:), v4);
    v2 = sub_10002688C(&_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    return v2;
  }

  v13 = v12;
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  v17 = [v11 keyBlob];
  if (!v17)
  {

    goto LABEL_9;
  }

  v30 = v14;
  v18 = v17;
  v19 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  v22 = [v11 publicKeyIdentifier];
  if (v22)
  {
    v23 = v22;
    v24 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;
  }

  else
  {
    v24 = 0;
    v26 = 0xF000000000000000;
  }

  v28 = sub_10002DA84(v30, v16, v19, v21, v24, v26);
  if (!v1)
  {
    v2 = v28;
  }

  sub_10001C120(v24, v26);
  sub_1000092BC(v19, v21);

  return v2;
}

uint64_t sub_10013EE94()
{
  v1 = *(v0 + 24);

  sub_1000092BC(*(v0 + 40), *(v0 + 48));

  sub_1000092BC(*(v0 + 64), *(v0 + 72));
  v2 = *(v0 + 88);

  v3 = *(v0 + 96);

  v4 = *(v0 + 104);

  v5 = *(v0 + 120);

  return _swift_deallocObject(v0, 128, 7);
}

uint64_t sub_10013EF70(void *a1)
{
  v3 = type metadata accessor for DIPError.Code();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  v30 = *(v8 - 8);
  v31 = v8;
  v9 = *(v30 + 64);
  v10 = __chkstk_darwin(v8);
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = v29 - v14;
  __chkstk_darwin(v13);
  v17 = v29 - v16;
  if ([a1 version] == 2)
  {
    v18 = sub_10013EB24(a1);
    if (v1)
    {
      v32 = 0;
      v33 = 0;
      v34 = 0xE000000000000000;
      _StringGuts.grow(_:)(38);

      v33 = 0xD000000000000024;
      v34 = 0x80000001001BB180;
      swift_getErrorValue();
      v21._countAndFlagsBits = Error.localizedDescription.getter();
      String.append(_:)(v21);

      (*(v4 + 104))(v7, enum case for DIPError.Code.idcsProgenitorKeyDeletionError(_:), v3);
      sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      defaultLogger()();
      DIPRecordError(_:message:log:)();

      (*(v30 + 8))(v12, v31);
    }

    else
    {
      v29[1] = v18;
      v20 = *(v18 + OBJC_IVAR____TtC7idcredd13ProgenitorKey_keyBlob);
      v19 = *(v18 + OBJC_IVAR____TtC7idcredd13ProgenitorKey_keyBlob + 8);
      sub_100009708(v20, v19);
      sub_10002E100();
      v32 = 0;
      sub_1000092BC(v20, v19);
      defaultLogger()();
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&_mh_execute_header, v26, v27, "deleted progenitor key", v28, 2u);
      }

      else
      {
      }

      return (*(v30 + 8))(v17, v31);
    }
  }

  else
  {
    v32 = v1;
    defaultLogger()();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "no progenitor key to delete", v25, 2u);
    }

    return (*(v30 + 8))(v15, v31);
  }
}

uint64_t sub_10013F468(unint64_t a1, void *a2, char *a3, uint64_t a4)
{
  v65 = a3;
  v59 = a4;
  v6 = type metadata accessor for DIPError.Code();
  v61 = *(v6 - 8);
  v62 = v6;
  v7 = *(v61 + 64);
  __chkstk_darwin(v6);
  v63 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v57 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v16 = &v56 - v15;
  v17 = __chkstk_darwin(v14);
  v56 = &v56 - v18;
  __chkstk_darwin(v17);
  v20 = &v56 - v19;
  defaultLogger()();

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();

  v23 = os_log_type_enabled(v21, v22);
  v58 = v10;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v60 = v9;
    v25 = v24;
    v26 = swift_slowAlloc();
    v66 = v26;
    *v25 = 136315138;
    *(v25 + 4) = sub_10010150C(a1, a2, &v66);
    _os_log_impl(&_mh_execute_header, v21, v22, "BiometricStorage deleteAuthACL with identifier %s", v25, 0xCu);
    sub_100005090(v26);

    v9 = v60;
  }

  v27 = *(v10 + 8);
  v27(v20, v9);
  v28 = v64;
  v29 = sub_1000508BC(a1, a2);
  if (v28)
  {
    (*(v61 + 104))(v63, enum case for DIPError.Code.internalError(_:), v62);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    return v30 & 1;
  }

  v32 = v29;
  if (!v29)
  {
    v33 = v57;
    defaultLogger()();

    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = a2;
      v38 = a1;
      v60 = v9;
      v39 = v36;
      v40 = v33;
      v41 = swift_slowAlloc();
      v66 = v41;
      *v39 = 136315138;
      *(v39 + 4) = sub_10010150C(v38, v37, &v66);
      _os_log_impl(&_mh_execute_header, v34, v35, "No acl found with identifier %s", v39, 0xCu);
      sub_100005090(v41);

      v42 = v40;
      v43 = v60;
    }

    else
    {

      v42 = v33;
      v43 = v9;
    }

LABEL_11:
    v27(v42, v43);
    v30 = 0;
    return v30 & 1;
  }

  v60 = v9;
  sub_10013EF70(v29);
  v44 = sub_100051424(a1, a2);
  if ((v44 & 1) == 0)
  {
    defaultLogger()();

    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v65 = v16;
      v55 = v54;
      v66 = v54;
      *v53 = 136315138;
      *(v53 + 4) = sub_10010150C(a1, a2, &v66);
      _os_log_impl(&_mh_execute_header, v51, v52, "No auth acl exists with identifier %s so nothing to delete", v53, 0xCu);
      sub_100005090(v55);

      v42 = v65;
    }

    else
    {

      v42 = v16;
    }

    v43 = v60;
    goto LABEL_11;
  }

  v45 = v56;
  defaultLogger()();

  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v66 = v49;
    *v48 = 136315138;
    *(v48 + 4) = sub_10010150C(a1, a2, &v66);
    _os_log_impl(&_mh_execute_header, v46, v47, "Auth ACL %s was deleted", v48, 0xCu);
    sub_100005090(v49);

    v50 = v56;
  }

  else
  {

    v50 = v45;
  }

  v27(v50, v60);
  v30 = 1;
  return v30 & 1;
}

uint64_t sub_10013FBC4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_100132F40();
}

uint64_t sub_10013FBD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004E70(&qword_100203AE0, &qword_1001AE450);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10013FC40(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10013FC88()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10013FCE8(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1000105C8;

  return sub_10013E068(a1, a2, v2);
}

uint64_t sub_10013FD94(uint64_t a1, uint64_t *a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1000105C8;

  return sub_10013E4C0(a1, a2, v7);
}

void sub_10013FE5C(void *a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v126 = a1;
  v11 = type metadata accessor for DIPError.Code();
  v132 = *(v11 - 8);
  v133 = v11;
  v12 = *(v132 + 64);
  __chkstk_darwin(v11);
  v131 = &v115 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Logger();
  v134 = *(v14 - 8);
  v15 = *(v134 + 64);
  v16 = __chkstk_darwin(v14);
  v124 = &v115 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v123 = &v115 - v19;
  v20 = __chkstk_darwin(v18);
  v119 = &v115 - v21;
  v22 = __chkstk_darwin(v20);
  v128 = &v115 - v23;
  __chkstk_darwin(v22);
  v25 = &v115 - v24;
  defaultLogger()();
  sub_100009708(a3, a4);
  v26 = a2;
  v27 = a4;
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.debug.getter();
  v135 = a3;
  sub_1000092BC(a3, v27);

  v30 = os_log_type_enabled(v28, v29);
  v121 = a5;
  v122 = a6;
  v120 = v26;
  if (v30)
  {
    v31 = swift_slowAlloc();
    v136 = swift_slowAlloc();
    *v31 = 136315394;
    v32 = Data.base16EncodedString()();
    v125 = v27;
    v33 = sub_10010150C(v32._countAndFlagsBits, v32._object, &v136);

    *(v31 + 4) = v33;
    *(v31 + 12) = 2080;
    v34 = SecAccessControlRef.constraintsDescription.getter();
    v36 = sub_10010150C(v34, v35, &v136);

    *(v31 + 14) = v36;
    _os_log_impl(&_mh_execute_header, v28, v29, "New acl is %s = %s", v31, 0x16u);
    swift_arrayDestroy();
    v37 = v125;

    v127 = *(v134 + 8);
    v127(v25, v14);
  }

  else
  {

    v127 = *(v134 + 8);
    v127(v25, v14);
    v37 = v27;
  }

  v38 = v130[7];
  sub_100009278(v130 + 3, v130[6]);
  v39 = v129;
  v40 = dispatch thunk of AppleIDVManaging.getUUIDsFromACL(_:)();
  if (v39)
  {
    goto LABEL_23;
  }

  v41 = v40;
  v125 = v37;
  v118 = v14;
  v129 = 0;
  v42 = v128;
  defaultLogger()();

  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v136 = v46;
    *v45 = 136315138;

    v47 = Array.description.getter();
    v49 = v48;

    v50 = sub_10010150C(v47, v49, &v136);

    *(v45 + 4) = v50;
    _os_log_impl(&_mh_execute_header, v43, v44, "New ACL uuids are %s", v45, 0xCu);
    sub_100005090(v46);

    v51 = v128;
  }

  else
  {

    v51 = v42;
  }

  v127(v51, v118);
  v52 = v126;
  if (v41)
  {
    v53 = v129;
    sub_10006055C(v41);
    v54 = v53;
    if (v53)
    {

LABEL_23:
      (*(v132 + 104))(v131, enum case for DIPError.Code.internalError(_:), v133);
      swift_errorRetain();
      sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();

      return;
    }
  }

  else
  {
    v54 = v129;
  }

  v55 = [v52 progenitorKey];
  if (!v55)
  {
LABEL_22:
    (*(v132 + 104))(v131, enum case for DIPError.Code.idcsMissingProgenitorKeyInAuthACL(_:), v133);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    goto LABEL_23;
  }

  v56 = v55;
  v57 = [v55 identifier];
  if (!v57)
  {

    goto LABEL_22;
  }

  v58 = v57;
  v128 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v60 = v59;

  v61 = [v56 keyBlob];
  if (!v61)
  {

    goto LABEL_22;
  }

  v116 = v60;
  v129 = v54;
  v62 = v61;
  v117 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v115 = v63;

  v64 = [v52 encryptedACL];
  if (!v64)
  {
LABEL_33:
    v83 = v123;
    defaultLogger()();
    v84 = Logger.logObject.getter();
    v85 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      *v86 = 0;
      _os_log_impl(&_mh_execute_header, v84, v85, "skip manipulating legacy sidv encryptedACL because there isn't one", v86, 2u);
    }

    v87 = v83;
    v88 = v118;
    v89 = v124;
    goto LABEL_36;
  }

  v65 = v64;
  v66 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v68 = v67;

  v69 = v68;
  v70 = v68 >> 62;
  if ((v68 >> 62) > 1)
  {
    if (v70 != 2)
    {
      sub_1000092BC(v66, v68);
      goto LABEL_33;
    }

    v72 = *(v66 + 16);
    v73 = *(v66 + 24);
    sub_1000092BC(v66, v69);
  }

  else
  {
    if (!v70)
    {
      sub_1000092BC(v66, v68);
      v71 = (v68 & 0xFF000000000000) == 0;
      goto LABEL_28;
    }

    sub_1000092BC(v66, v68);
    v72 = v66;
    v73 = v66 >> 32;
  }

  v71 = v72 == v73;
LABEL_28:
  if (v71)
  {
    goto LABEL_33;
  }

  v123 = v56;
  v74 = [v126 encryptedACL];
  if (!v74)
  {

    (*(v132 + 104))(v131, enum case for DIPError.Code.invalidStoredData(_:), v133);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_1000092BC(v117, v115);

    goto LABEL_23;
  }

  v75 = v74;
  v76 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v78 = v77;

  v79 = v130[7];
  sub_100009278(v130 + 3, v130[6]);
  v80 = v129;
  v81 = dispatch thunk of AppleIDVManaging.persistModifiedACLBlob(_:referenceACLBlob:externalizedLAContext:)();
  if (v80)
  {
    sub_1000092BC(v76, v78);
    sub_1000092BC(v117, v115);

    goto LABEL_23;
  }

  v109 = v81;
  v110 = v82;
  v129 = 0;
  sub_100009708(v81, v82);
  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_1000092BC(v109, v110);
  [v126 setEncryptedACL:isa];

  defaultLogger()();
  v112 = Logger.logObject.getter();
  v113 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v112, v113))
  {
    v114 = swift_slowAlloc();
    *v114 = 0;
    _os_log_impl(&_mh_execute_header, v112, v113, "set new sidv encrypedACL", v114, 2u);

    sub_1000092BC(v76, v78);

    sub_1000092BC(v109, v110);
  }

  else
  {
    sub_1000092BC(v109, v110);

    sub_1000092BC(v76, v78);
  }

  v88 = v118;
  v87 = v119;
  v56 = v123;
  v89 = v124;
LABEL_36:
  v127(v87, v88);
  defaultLogger()();
  v90 = v116;

  v91 = Logger.logObject.getter();
  v92 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v91, v92))
  {
    v93 = swift_slowAlloc();
    v94 = swift_slowAlloc();
    v123 = v56;
    v95 = v88;
    v96 = v94;
    v136 = v94;
    *v93 = 136315138;
    *(v93 + 4) = sub_10010150C(v128, v90, &v136);
    _os_log_impl(&_mh_execute_header, v91, v92, "Updating acl for progenitor key %s", v93, 0xCu);
    sub_100005090(v96);

    v97 = v95;
    v56 = v123;
    v98 = v124;
  }

  else
  {

    v98 = v89;
    v97 = v88;
  }

  v127(v98, v97);
  v99 = v130[8];
  v100 = [v56 publicKeyIdentifier];
  v101 = v117;
  if (v100)
  {
    v102 = v100;
    v103 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v135 = v104;
  }

  else
  {
    v103 = 0;
    v135 = 0xF000000000000000;
  }

  v105 = v129;
  v106 = v101;
  v107 = v115;
  v134 = sub_10002DA84(v128, v116, v106, v115, v103, v135);
  if (v105)
  {
    sub_10001C120(v103, v135);
    sub_1000092BC(v117, v107);

    goto LABEL_23;
  }

  sub_10001C120(v103, v135);
  v108 = sub_10002EA64(v134, v120, v121, v122);
  sub_10005FFF0(v108);

  sub_1000092BC(v117, v115);
}

char *sub_100140CAC(uint64_t a1, uint64_t a2)
{
  v5 = sub_100051CD4();
  if (!v2)
  {
    v6 = v5;
    if (v5 >> 62)
    {
      goto LABEL_19;
    }

    for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v8 = 0;
      v21 = v6 & 0xFFFFFFFFFFFFFF8;
      v22 = v6 & 0xC000000000000001;
      v3 = &_swiftEmptyArrayStorage;
      v19 = v6;
      v20 = a2;
      while (1)
      {
        if (v22)
        {
          v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v8 >= *(v21 + 16))
          {
            goto LABEL_18;
          }

          v10 = *(v6 + 8 * v8 + 32);
        }

        v11 = v10;
        v12 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        v25 = v10;
        sub_100139C54(&v25, a2, &v23);

        v13 = v24;
        if (v24)
        {
          v14 = i;
          v15 = v23;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v3 = sub_100100418(0, *(v3 + 2) + 1, 1, v3);
          }

          v17 = *(v3 + 2);
          v16 = *(v3 + 3);
          if (v17 >= v16 >> 1)
          {
            v3 = sub_100100418((v16 > 1), v17 + 1, 1, v3);
          }

          *(v3 + 2) = v17 + 1;
          v9 = &v3[16 * v17];
          *(v9 + 4) = v15;
          *(v9 + 5) = v13;
          i = v14;
          v6 = v19;
          a2 = v20;
        }

        ++v8;
        if (v12 == i)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      ;
    }

    v3 = &_swiftEmptyArrayStorage;
LABEL_21:
  }

  return v3;
}

uint64_t sub_100140EFC()
{
  v1 = v0[2];

  v2 = v0[4];
  if (v2 >> 60 != 15)
  {
    sub_1000092BC(v0[3], v2);
  }

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_100140F4C(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1000105C8;

  return sub_10013DAD0(a1, a2, v6, v7, v8, v9);
}

uint64_t sub_100141034()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10014106C(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1000105C8;

  return sub_10013E354(a1, a2, v2);
}

uint64_t sub_10014116C()
{
  v1 = v0[2];

  sub_1000092BC(v0[3], v0[4]);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1001411AC(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1000104D4;

  return sub_10012F220(a1, a2, v6, v7, v9, v8);
}

uint64_t sub_100141274()
{
  v1 = v0[3];

  sub_1000092BC(v0[4], v0[5]);

  return _swift_deallocObject(v0, 48, 7);
}

unint64_t sub_1001412D4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  return sub_10013A364();
}

unint64_t sub_1001412E8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[8];
  v8 = v0[9];
  return sub_10013A0F4();
}

uint64_t sub_100141310(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1000105C8;

  return sub_100136AEC(a1, a2, v2);
}

uint64_t sub_1001413C4(uint64_t a1)
{
  v3 = *(v1 + 16);

  v4 = *(v1 + 24);

  return _swift_deallocObject(v1, a1, 7);
}

void *sub_10014142C@<X0>(_BYTE *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = v4(&v7);
  if (!v2)
  {
    *a1 = v7;
  }

  return result;
}

uint64_t sub_100141470()
{
  v1 = v0[2];

  sub_1000092BC(v0[3], v0[4]);
  sub_1000092BC(v0[5], v0[6]);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1001414B8(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1000105C8;

  return sub_100133008(a1, a2, v6, v7, v8, v9, v10);
}

uint64_t sub_100141590()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  sub_1000092BC(*(v0 + 32), *(v0 + 40));
  sub_1000092BC(*(v0 + 48), *(v0 + 56));
  sub_1000092BC(*(v0 + 72), *(v0 + 80));

  sub_1000092BC(*(v0 + 96), *(v0 + 104));
  v3 = *(v0 + 120);

  return _swift_deallocObject(v0, 128, 7);
}

__n128 sub_100141630(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100141644(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_10014168C(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_1001416EC(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_100141700(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 9))
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

uint64_t sub_10014175C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1001417C0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 24))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_100141814(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_100141928()
{
  v0 = sub_100004E70(&qword_100201488, &qword_1001ACFD0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v15 - v2;
  v4 = type metadata accessor for DIPError.Code();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v15 - v10;
  DIPError.Code.init(rawValue:)();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_10008C18C(v3);
    return -5000;
  }

  (*(v5 + 32))(v11, v3, v4);
  (*(v5 + 16))(v9, v11, v4);
  v13 = (*(v5 + 88))(v9, v4);
  if (v13 == enum case for DIPError.Code.missingEntitlement(_:))
  {
    goto LABEL_5;
  }

  if (v13 == enum case for DIPError.Code.invalidStoredData(_:))
  {
    (*(v5 + 8))(v11, v4);
    return -5004;
  }

  else
  {
    if (v13 == enum case for DIPError.Code.idcsUnauthorizedPartition(_:))
    {
LABEL_5:
      (*(v5 + 8))(v11, v4);
      return -5002;
    }

    if (v13 == enum case for DIPError.Code.idcsMissingGlobalAuthACL(_:))
    {
      (*(v5 + 8))(v11, v4);
      return -5005;
    }

    else if (v13 == enum case for DIPError.Code.unableToGeneratePrearmTrustKeyOnPhone(_:))
    {
      (*(v5 + 8))(v11, v4);
      return -5008;
    }

    else if (v13 == enum case for DIPError.Code.unableToGenerateNonceOnWatch(_:))
    {
      (*(v5 + 8))(v11, v4);
      return -5007;
    }

    else
    {
      if (v13 != enum case for DIPError.Code.unableToGenerateAuthorizationTokenOnPhone(_:))
      {
        v14 = *(v5 + 8);
        v14(v11, v4);
        v14(v9, v4);
        return -5000;
      }

      (*(v5 + 8))(v11, v4);
      return -5006;
    }
  }
}

unint64_t sub_100141D3C(void *a1, uint64_t a2)
{
  v46 = type metadata accessor for DIPError.Code();
  v44 = *(v46 - 8);
  v4 = *(v44 + 64);
  __chkstk_darwin(v46);
  v45 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for KeyAuthorizationCOSE_Sign1Payload.AuthorizerType();
  v41 = *(v6 - 8);
  v42 = v6;
  v7 = *(v41 + 64);
  __chkstk_darwin(v6);
  v40 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for KeyAuthorizationCOSE_Sign1Payload.KeyPurpose();
  v36 = *(v9 - 8);
  v37 = v9;
  v10 = *(v36 + 64);
  __chkstk_darwin(v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for KeyAuthorizationCOSE_Sign1Payload();
  v38 = *(v13 - 8);
  v39 = v13;
  v14 = *(v38 + 64);
  __chkstk_darwin(v13);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100004E70(&qword_100201070, &unk_1001AD2D0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v35 - v19;
  v21 = type metadata accessor for COSEKey();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = __chkstk_darwin(v21);
  v26 = &v35 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v28 = &v35 - v27;
  (*(a2 + 24))(*a1, a2);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_10000A0D4(v20, &qword_100201070, &unk_1001AD2D0);
    v29 = v45;
    v30 = *(v44 + 104);
    v30(v45, enum case for DIPError.Code.idcsInvalidPublicKey(_:), v46);
    v31 = 0x80000001001BBBC0;
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100144864(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  else
  {
    (*(v22 + 32))(v28, v20, v21);
    (*(v22 + 16))(v26, v28, v21);
    (*(v36 + 104))(v12, enum case for KeyAuthorizationCOSE_Sign1Payload.KeyPurpose.deviceEncryptionKey(_:), v37);
    (*(v41 + 104))(v40, enum case for KeyAuthorizationCOSE_Sign1Payload.AuthorizerType.keyAuthorizationKey(_:), v42);
    KeyAuthorizationCOSE_Sign1Payload.init(publicKey:keyPurpose:authorizerType:)();
    v32 = v43;
    v33 = sub_100142428(v16);
    if (!v32)
    {
      v31 = v33;
      (*(v38 + 8))(v16, v39);
      (*(v22 + 8))(v28, v21);
      return v31;
    }

    (*(v38 + 8))(v16, v39);
    (*(v22 + 8))(v28, v21);
    v29 = v45;
    v30 = *(v44 + 104);
    v31 = 0x80000001001BBBC0;
  }

  v30(v29, enum case for DIPError.Code.internalError(_:), v46);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100144864(&qword_100200200, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  return v31;
}

char *sub_100142428(char *a1)
{
  v121 = a1;
  v107 = type metadata accessor for DIPError.Code();
  v105 = *(v107 - 8);
  v1 = *(v105 + 64);
  __chkstk_darwin(v107);
  v108 = &v95 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_100004E70(&qword_1002014D0, &unk_1001AD120);
  v3 = *(*(v106 - 8) + 64);
  __chkstk_darwin(v106);
  v109 = &v95 - v4;
  v5 = type metadata accessor for SHA256();
  v112 = *(v5 - 8);
  v113 = v5;
  v6 = *(v112 + 64);
  __chkstk_darwin(v5);
  v110 = &v95 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SHA256Digest();
  v114 = *(v8 - 8);
  v115 = v8;
  v9 = *(v114 + 64);
  __chkstk_darwin(v8);
  v111 = (&v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for RFC8152SigStructure();
  v117 = *(v11 - 8);
  v118 = v11;
  v12 = *(v117 + 64);
  __chkstk_darwin(v11);
  v14 = &v95 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Logger();
  v120 = *(v15 - 8);
  v16 = *(v120 + 64);
  v17 = __chkstk_darwin(v15);
  v19 = &v95 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v95 - v20;
  v22 = sub_100004E70(&qword_100201520, &qword_1001AD110);
  v119 = *(v22 - 8);
  v23 = *(v119 + 64);
  __chkstk_darwin(v22);
  v25 = &v95 - v24;
  v26 = type metadata accessor for CBOREncoder();
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  v29 = CBOREncoder.init()();
  type metadata accessor for KeyAuthorizationCOSE_Sign1Payload();
  sub_100144864(&qword_100203B10, &type metadata accessor for KeyAuthorizationCOSE_Sign1Payload);
  v30 = v123;
  v31 = dispatch thunk of CBOREncoder.encode<A>(_:)();
  if (v30)
  {
  }

  else
  {
    v102 = v22;
    v103 = v21;
    v101 = v19;
    v104 = v15;
    v123 = v29;
    v121 = v14;
    v122[0] = v31;
    v122[1] = v32;
    v33 = v32;
    v34 = *(v26 + 48);
    v35 = *(v26 + 52);
    v36 = v31;
    swift_allocObject();
    sub_100009708(v36, v33);
    CBOREncoder.init()();
    sub_100046428();
    sub_10004647C();
    CBOREncodedCBOR.init(value:tag:encoder:)();
    v100 = v36;
    v99 = v33;
    v37 = v102;
    v38 = CBOREncodedCBOR.dataValue.getter();
    v40 = v39;
    (*(v119 + 8))(v25, v37);
    v41 = v103;
    v42 = defaultLogger()();
    __chkstk_darwin(v42);
    Logger.cryptoParam(_:)();
    v43 = v120 + 8;
    v44 = *(v120 + 8);
    v45 = v104;
    v44(v41, v104);
    sub_100009708(v38, v40);
    v14 = v123;

    RFC8152SigStructure.init(algorithm:payload:encoder:)();
    v98 = v38;
    v119 = v40;
    sub_100144864(&qword_100202940, &type metadata accessor for RFC8152SigStructure);
    v47 = dispatch thunk of CBOREncoder.encode<A>(_:)();
    v49 = v48;
    v50 = v103;
    v51 = defaultLogger()();
    __chkstk_darwin(v51);
    v102 = v49;
    v52 = v47;
    v97 = 0;
    Logger.cryptoParam(_:)();
    v44(v50, v45);
    sub_100144864(&qword_100200608, &type metadata accessor for SHA256);
    v96 = v44;
    v53 = v110;
    v54 = v113;
    dispatch thunk of HashFunction.init()();
    v55 = v102;
    sub_100009708(v52, v102);
    v56 = v97;
    sub_1000D8FBC(v52, v55);
    v120 = v56;
    v95 = v52;
    sub_1000092BC(v52, v55);
    v57 = v111;
    dispatch thunk of HashFunction.finalize()();
    v58 = v96;
    (*(v112 + 8))(v53, v54);
    sub_100144864(&qword_100200610, &type metadata accessor for SHA256Digest);
    v59 = v115;
    v60 = Digest.data.getter();
    v62 = v61;
    (*(v114 + 8))(v57, v59);
    v63 = defaultLogger()();
    v64 = v43;
    __chkstk_darwin(v63);
    Logger.cryptoParam(_:)();
    v58(v50, v104);
    v65 = v116;
    v66 = v116[3];
    v67 = v116[4];
    sub_100009278(v116, v66);
    v68 = v120;
    v69 = (*(v67 + 16))(v60, v62, v66, v67);
    if (v68)
    {
      (*(v117 + 8))(v121, v118);
      sub_1000092BC(v100, v99);
      sub_1000092BC(v98, v119);

      sub_1000092BC(v60, v62);
      sub_1000092BC(v95, v102);
    }

    else
    {
      v114 = v69;
      v115 = v70;
      v113 = v60;
      v120 = v64;
      v97 = 0;
      v71 = v65[3];
      v72 = v65[4];
      sub_100009278(v65, v71);
      v73 = (*(v72 + 8))(v71, v72);
      if (v74 >> 60 == 15)
      {
        (*(v105 + 104))(v108, enum case for DIPError.Code.idcsInvalidPublicKey(_:), v107);
        v14 = "g key signing key";
        sub_10002688C(_swiftEmptyArrayStorage);
        type metadata accessor for DIPError();
        sub_100144864(&qword_100200200, &type metadata accessor for DIPError);
        swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();
        sub_1000092BC(v113, v62);
        sub_1000092BC(v95, v102);
        sub_1000092BC(v114, v115);

        sub_1000092BC(v98, v119);
        sub_1000092BC(v100, v99);
        (*(v117 + 8))(v121, v118);
      }

      else
      {
        v75 = v73;
        v76 = v74;
        v116 = v62;
        v77 = v119;
        sub_100009708(v98, v119);
        sub_100032EBC(v75, v76);
        v78 = v114;
        v79 = v115;
        sub_100009708(v114, v115);
        v80 = v109;
        COSE_Sign1.init(algorithmIdentifier:keyIdentifier:payload:signature:includeCBORTag:)();
        sub_1001447B0();
        v112 = v76;
        v81 = v97;
        v82 = dispatch thunk of CBOREncoder.encode<A>(_:)();
        v97 = v81;
        v84 = v102;
        if (v81)
        {
          sub_1000092BC(v113, v116);
          sub_1000092BC(v95, v84);
          sub_1000092BC(v78, v79);
          sub_10001C120(v75, v112);

          sub_1000092BC(v98, v77);
          sub_1000092BC(v100, v99);
          sub_10000A0D4(v80, &qword_1002014D0, &unk_1001AD120);
          (*(v117 + 8))(v121, v118);
        }

        else
        {
          v14 = v82;
          v85 = v83;
          v110 = v75;
          v86 = v101;
          defaultLogger()();
          sub_100009708(v14, v85);
          v87 = Logger.logObject.getter();
          v88 = static os_log_type_t.debug.getter();
          sub_1000092BC(v14, v85);
          v111 = v87;
          if (os_log_type_enabled(v87, v88))
          {
            v89 = swift_slowAlloc();
            v90 = swift_slowAlloc();
            v122[0] = v90;
            *v89 = 136315138;
            v91 = Data.base16EncodedString()();
            v92 = sub_10010150C(v91._countAndFlagsBits, v91._object, v122);

            *(v89 + 4) = v92;
            v93 = v111;
            _os_log_impl(&_mh_execute_header, v111, v88, "Created key authorization %s", v89, 0xCu);
            sub_100005090(v90);

            sub_1000092BC(v113, v116);

            sub_1000092BC(v95, v84);
            sub_1000092BC(v114, v115);
            sub_10001C120(v110, v112);

            sub_1000092BC(v98, v119);
            sub_1000092BC(v100, v99);
            v96(v86, v104);
            v94 = v109;
          }

          else
          {
            sub_1000092BC(v113, v116);

            sub_1000092BC(v95, v84);
            sub_1000092BC(v114, v115);
            sub_10001C120(v110, v112);

            sub_1000092BC(v98, v119);
            sub_1000092BC(v100, v99);
            v96(v86, v104);
            v94 = v80;
          }

          sub_10000A0D4(v94, &qword_1002014D0, &unk_1001AD120);
          (*(v117 + 8))(v121, v118);
        }
      }
    }
  }

  return v14;
}

unint64_t sub_100143318()
{
  v1 = type metadata accessor for DIPError.Code();
  v32 = *(v1 - 8);
  v33 = v1;
  v2 = *(v32 + 64);
  __chkstk_darwin(v1);
  v34 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for KeyAuthorizationCOSE_Sign1Payload.AuthorizerType();
  v30 = *(v4 - 8);
  v31 = v4;
  v5 = *(v30 + 64);
  __chkstk_darwin(v4);
  v29 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for KeyAuthorizationCOSE_Sign1Payload.KeyPurpose();
  v26 = *(v7 - 8);
  v27 = v7;
  v8 = *(v26 + 64);
  __chkstk_darwin(v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for KeyAuthorizationCOSE_Sign1Payload();
  v28 = *(v11 - 8);
  v12 = *(v28 + 64);
  __chkstk_darwin(v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for COSEKey();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v20 = &v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v25 - v21;
  sub_10002551C(&v25 - v21);
  if (v0)
  {
    (*(v32 + 104))(v34, enum case for DIPError.Code.internalError(_:), v33);
    swift_errorRetain();
    v24 = sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100144864(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  else
  {
    v25 = v11;
    (*(v16 + 16))(v20, v22, v15);
    (*(v26 + 104))(v10, enum case for KeyAuthorizationCOSE_Sign1Payload.KeyPurpose.presentmentKey(_:), v27);
    (*(v30 + 104))(v29, enum case for KeyAuthorizationCOSE_Sign1Payload.AuthorizerType.keyAuthorizationKey(_:), v31);
    KeyAuthorizationCOSE_Sign1Payload.init(publicKey:keyPurpose:authorizerType:)();
    v24 = sub_100142428(v14);
    (*(v28 + 8))(v14, v25);
    (*(v16 + 8))(v22, v15);
  }

  return v24;
}

char *sub_100143824(uint64_t a1)
{
  v30 = a1;
  v1 = type metadata accessor for DIPError.Code();
  v24 = *(v1 - 8);
  v25 = v1;
  v2 = *(v24 + 64);
  __chkstk_darwin(v1);
  v26 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for KeyAuthorizationCOSE_Sign1Payload.AuthorizerType();
  v4 = *(v29 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v29);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for KeyAuthorizationCOSE_Sign1Payload.KeyPurpose();
  v8 = *(v27 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v27);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for COSEKey();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for KeyAuthorizationCOSE_Sign1Payload();
  v17 = *(v28 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v28);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v16, v30, v12);
  (*(v8 + 104))(v11, enum case for KeyAuthorizationCOSE_Sign1Payload.KeyPurpose.keySigningKey(_:), v27);
  (*(v4 + 104))(v7, enum case for KeyAuthorizationCOSE_Sign1Payload.AuthorizerType.keyAuthorizationKey(_:), v29);
  KeyAuthorizationCOSE_Sign1Payload.init(publicKey:keyPurpose:authorizerType:)();
  v21 = v31;
  v22 = sub_100142428(v20);
  (*(v17 + 8))(v20, v28);
  if (v21)
  {
    (*(v24 + 104))(v26, enum case for DIPError.Code.internalError(_:), v25);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100144864(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  return v22;
}

char *sub_100143CB8(uint64_t a1)
{
  v30 = a1;
  v1 = type metadata accessor for DIPError.Code();
  v24 = *(v1 - 8);
  v25 = v1;
  v2 = *(v24 + 64);
  __chkstk_darwin(v1);
  v26 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for KeyAuthorizationCOSE_Sign1Payload.AuthorizerType();
  v4 = *(v29 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v29);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for KeyAuthorizationCOSE_Sign1Payload.KeyPurpose();
  v8 = *(v27 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v27);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for COSEKey();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for KeyAuthorizationCOSE_Sign1Payload();
  v17 = *(v28 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v28);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v16, v30, v12);
  (*(v8 + 104))(v11, enum case for KeyAuthorizationCOSE_Sign1Payload.KeyPurpose.accountKeySigningKey(_:), v27);
  (*(v4 + 104))(v7, enum case for KeyAuthorizationCOSE_Sign1Payload.AuthorizerType.keyAuthorizationKey(_:), v29);
  KeyAuthorizationCOSE_Sign1Payload.init(publicKey:keyPurpose:authorizerType:)();
  v21 = v31;
  v22 = sub_100142428(v20);
  (*(v17 + 8))(v20, v28);
  if (v21)
  {
    (*(v24 + 104))(v26, enum case for DIPError.Code.internalError(_:), v25);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100144864(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  return v22;
}

char *sub_100144150(uint64_t a1)
{
  v30 = a1;
  v1 = type metadata accessor for DIPError.Code();
  v24 = *(v1 - 8);
  v25 = v1;
  v2 = *(v24 + 64);
  __chkstk_darwin(v1);
  v26 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for KeyAuthorizationCOSE_Sign1Payload.AuthorizerType();
  v4 = *(v29 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v29);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for KeyAuthorizationCOSE_Sign1Payload.KeyPurpose();
  v8 = *(v27 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v27);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for COSEKey();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for KeyAuthorizationCOSE_Sign1Payload();
  v17 = *(v28 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v28);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v16, v30, v12);
  (*(v8 + 104))(v11, enum case for KeyAuthorizationCOSE_Sign1Payload.KeyPurpose.keySigningKey(_:), v27);
  (*(v4 + 104))(v7, enum case for KeyAuthorizationCOSE_Sign1Payload.AuthorizerType.accountKeySigningKey(_:), v29);
  KeyAuthorizationCOSE_Sign1Payload.init(publicKey:keyPurpose:authorizerType:)();
  v21 = v31;
  v22 = sub_100142428(v20);
  (*(v17 + 8))(v20, v28);
  if (v21)
  {
    (*(v24 + 104))(v26, enum case for DIPError.Code.internalError(_:), v25);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100144864(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  return v22;
}

unint64_t sub_1001445E8()
{
  _StringGuts.grow(_:)(26);

  v0 = Data.base16EncodedString()();
  String.append(_:)(v0);

  return 0xD000000000000018;
}

unint64_t sub_100144678()
{
  _StringGuts.grow(_:)(33);

  v0 = Data.base16EncodedString()();
  String.append(_:)(v0);

  return 0xD00000000000001FLL;
}

unint64_t sub_100144708()
{
  _StringGuts.grow(_:)(27);

  v0 = Data.base16EncodedString()();
  String.append(_:)(v0);

  return 0xD000000000000019;
}

unint64_t sub_100144798()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1001445E8();
}

unint64_t sub_1001447A0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_100144678();
}

unint64_t sub_1001447A8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_100144708();
}

unint64_t sub_1001447B0()
{
  result = qword_100203B18;
  if (!qword_100203B18)
  {
    sub_100021ED0(&qword_1002014D0, &unk_1001AD120);
    sub_100144864(&qword_100203B20, &type metadata accessor for COSE_Sign1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100203B18);
  }

  return result;
}

uint64_t sub_100144864(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 sub_1001448BC@<Q0>(__n128 *a1@<X8>)
{
  v69 = type metadata accessor for Logger();
  v71 = *(v69 - 8);
  v2 = *(v71 + 64);
  v3 = __chkstk_darwin(v69);
  v67 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v68 = &v66 - v6;
  v7 = __chkstk_darwin(v5);
  v66 = &v66 - v8;
  v9 = __chkstk_darwin(v7);
  v11 = &v66 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v66 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = &v66 - v16;
  __chkstk_darwin(v15);
  v19 = &v66 - v18;
  v20 = objc_opt_self();
  v21 = [v20 standardUserDefaults];
  v22._countAndFlagsBits = 0xD00000000000001FLL;
  v22._object = 0x80000001001BBE40;
  v23 = NSUserDefaults.internalString(forKey:)(v22);

  if (!v23.value._object)
  {
    goto LABEL_21;
  }

  if (v23.value._countAndFlagsBits == 0x6975716552746F6ELL && v23.value._object == 0xEB00000000646572 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    defaultLogger()();
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "Forcing credential presentment auth policy to not required due to user defaults setting", v26, 2u);
    }

    v27 = v69;
    (*(v71 + 8))(v19, v69);
    v28 = 0;
    v29 = v70;
    goto LABEL_22;
  }

  if ((v23.value._countAndFlagsBits != 0xD000000000000016 || 0x80000001001BBEA0 != v23.value._object) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    if (v23.value._countAndFlagsBits == 0x69426C61626F6C67 && v23.value._object == 0xED0000676E69646ELL)
    {

LABEL_18:
      defaultLogger()();
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v34, v35))
      {
        v28 = 2;
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&_mh_execute_header, v34, v35, "Forcing credential presentment auth policy to global binding due to user defaults setting", v36, 2u);

        v37 = v14;
        v27 = v69;
        (*(v71 + 8))(v37, v69);
      }

      else
      {

        v65 = v14;
        v27 = v69;
        (*(v71 + 8))(v65, v69);
        v28 = 2;
      }

      v29 = v70;
      goto LABEL_22;
    }

    v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v33)
    {
      goto LABEL_18;
    }

LABEL_21:
    v27 = v69;
    v29 = v70;
    v28 = v70[1].n128_i64[1];
    goto LABEL_22;
  }

  defaultLogger()();
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&_mh_execute_header, v30, v31, "Forcing credential presentment auth policy to any biometric or passcode due to user defaults setting", v32, 2u);
  }

  v27 = v69;
  (*(v71 + 8))(v17, v69);
  v28 = 1;
  v29 = v70;
LABEL_22:
  v38 = [v20 standardUserDefaults];
  v39._countAndFlagsBits = 0xD00000000000001FLL;
  v39._object = 0x80000001001BBE40;
  v40 = NSUserDefaults.internalString(forKey:)(v39);

  if (!v40.value._object)
  {
    goto LABEL_36;
  }

  if (v40.value._countAndFlagsBits == 1701736302 && v40.value._object == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    defaultLogger()();
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&_mh_execute_header, v41, v42, "Forcing reader auth policy to none due to user defaults setting", v43, 2u);
    }

    (*(v71 + 8))(v11, v27);
    v44 = 0;
    goto LABEL_37;
  }

  if (v40.value._countAndFlagsBits != 0x797469746E656469 || v40.value._object != 0xE800000000000000)
  {
    v45 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v45)
    {
      goto LABEL_33;
    }

LABEL_36:
    v44 = v29[1].n128_i64[0];
    goto LABEL_37;
  }

LABEL_33:
  v46 = v66;
  defaultLogger()();
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    *v49 = 0;
    _os_log_impl(&_mh_execute_header, v47, v48, "Forcing reader auth policy to identity due to user defaults setting", v49, 2u);
  }

  (*(v71 + 8))(v46, v27);
  v44 = 1;
LABEL_37:
  v50 = [v20 standardUserDefaults];
  v51._countAndFlagsBits = 0xD000000000000034;
  v51._object = 0x80000001001BBE60;
  v52 = NSUserDefaults.internalString(forKey:)(v51);

  if (!v52.value._object)
  {
    goto LABEL_51;
  }

  if (v52.value._countAndFlagsBits == 0x647261646E617473 && v52.value._object == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v53 = v68;
    defaultLogger()();
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&_mh_execute_header, v54, v55, "Forcing payload protection policy to standard due to user defaults setting", v56, 2u);
    }

    (*(v71 + 8))(v53, v27);
    v57 = 0;
    goto LABEL_52;
  }

  if (v52.value._countAndFlagsBits != 0x697274656D6F6962 || v52.value._object != 0xE900000000000063)
  {
    v58 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v58)
    {
      goto LABEL_48;
    }

LABEL_51:
    v57 = v29[2].n128_i64[0];
    goto LABEL_52;
  }

LABEL_48:
  v59 = v67;
  defaultLogger()();
  v60 = Logger.logObject.getter();
  v61 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    *v62 = 0;
    _os_log_impl(&_mh_execute_header, v60, v61, "Forcing payload protection policy to biometric due to user defaults setting", v62, 2u);
  }

  (*(v71 + 8))(v59, v27);
  v57 = 1;
LABEL_52:
  v63 = v29[2].n128_u8[8];
  result = *v29;
  *a1 = *v29;
  a1[1].n128_u64[0] = v44;
  a1[1].n128_u64[1] = v28;
  a1[2].n128_u64[0] = v57;
  a1[2].n128_u8[8] = v63;
  return result;
}

id sub_100145224(uint64_t a1)
{
  type metadata accessor for StoredCredentialOptions();
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext:*(a1 + 16)];
  [v3 setDeleteInactiveKeysAfterDays:*(v1 + 8)];
  result = [v3 setDeleteIncompleteCredentialAfterDays:*v1];
  if ((*(v1 + 16) & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  result = [v3 setReaderAuthenticationPolicy:?];
  if ((*(v1 + 24) & 0x8000000000000000) != 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = [v3 setPresentmentAuthPolicy:?];
  if ((*(v1 + 32) & 0x8000000000000000) == 0)
  {
    [v3 setPayloadProtectionPolicy:?];
    [v3 setIsPIIHashMismatchTerminal:*(v1 + 40)];
    return v3;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1001452FC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for DIPError.Code();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = *(*(sub_100004E70(&qword_100201CD0, &qword_1001AC550) - 8) + 64) + 15;
  v3[8] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v3[9] = v8;
  v9 = *(v8 - 8);
  v3[10] = v9;
  v10 = *(v9 + 64) + 15;
  v3[11] = swift_task_alloc();

  return _swift_task_switch(sub_100145454, 0, 0);
}

uint64_t sub_100145454()
{
  v1 = v0[11];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "CredentialStore deleteCredential", v4, 2u);
  }

  v6 = v0[10];
  v5 = v0[11];
  v7 = v0[9];
  v9 = v0[3];
  v8 = v0[4];
  v10 = v0[2];

  (*(v6 + 8))(v5, v7);
  v11 = *(v8 + 120);
  v12 = swift_allocObject();
  v0[12] = v12;
  v12[2] = v8;
  v12[3] = v10;
  v12[4] = v9;
  v13 = *(v11 + 16);
  v14 = swift_allocObject();
  v0[13] = v14;
  *(v14 + 16) = &unk_1001AE940;
  *(v14 + 24) = v12;
  v15 = async function pointer to AsyncCoreDataContainer.write<A>(_:)[1];

  v16 = swift_task_alloc();
  v0[14] = v16;
  *v16 = v0;
  v16[1] = sub_100145638;

  return AsyncCoreDataContainer.write<A>(_:)();
}

uint64_t sub_100145638()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v8 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = sub_100145880;
  }

  else
  {
    v6 = *(v2 + 96);
    v5 = *(v2 + 104);

    v4 = sub_10014575C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10014575C()
{
  v1 = v0[11];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[4];
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v4;

  sub_10014EF84(0, 0, v2, &unk_1001AE960, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100145880()
{
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[13];
  v4 = v0[11];
  v6 = v0[7];
  v5 = v0[8];
  v7 = v0[5];
  v8 = v0[6];

  (*(v8 + 104))(v6, enum case for DIPError.Code.internalError(_:), v7);
  swift_errorRetain();
  sub_10002688C(&_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100008E7C();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v9 = v0[1];

  return v9();
}

uint64_t sub_100145A04(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = *v1;
  v3 = type metadata accessor for DIPError.Code();
  v2[6] = v3;
  v4 = *(v3 - 8);
  v2[7] = v4;
  v5 = *(v4 + 64) + 15;
  v2[8] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v2[9] = v6;
  v7 = *(v6 - 8);
  v2[10] = v7;
  v8 = *(v7 + 64) + 15;
  v2[11] = swift_task_alloc();

  return _swift_task_switch(sub_100145B48, 0, 0);
}

uint64_t sub_100145B48()
{
  v1 = v0[11];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "CredentialStore getCredentialIdentifiers", v4, 2u);
  }

  v6 = v0[10];
  v5 = v0[11];
  v7 = v0[9];
  v9 = v0[3];
  v8 = v0[4];

  (*(v6 + 8))(v5, v7);
  if (sub_10016A3B4(v9))
  {
    v10 = v0[5];
    v11 = v0[3];
    v12 = *(v0[4] + 120);
    v13 = swift_allocObject();
    v0[12] = v13;
    *(v13 + 16) = v11;
    *(v13 + 24) = v10;
    v14 = *(v12 + 16);
    v15 = swift_allocObject();
    v0[13] = v15;
    *(v15 + 16) = sub_100153AA0;
    *(v15 + 24) = v13;
    v16 = async function pointer to AsyncCoreDataContainer.performRead<A>(_:)[1];

    v17 = swift_task_alloc();
    v0[14] = v17;
    v18 = sub_100004E70(&qword_1002019B8, &qword_1001AD020);
    *v17 = v0;
    v17[1] = sub_100145F9C;

    return AsyncCoreDataContainer.performRead<A>(_:)(v0 + 2, sub_100140EA4, v15, v18);
  }

  else
  {
    v20 = v0[7];
    v19 = v0[8];
    v21 = v0[6];
    v22 = v0[3];
    _StringGuts.grow(_:)(49);

    v23._countAndFlagsBits = Array.description.getter();
    String.append(_:)(v23);

    v24._countAndFlagsBits = 0xD000000000000024;
    v24._object = 0x80000001001BC0A0;
    String.append(_:)(v24);
    v25 = *(v20 + 104);
    v25(v19, enum case for DIPError.Code.idcsUnauthorizedPartition(_:), v21);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v28 = v0[11];
    v25(v0[8], enum case for DIPError.Code.internalError(_:), v0[6]);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v26 = v0[1];

    return v26();
  }
}

uint64_t sub_100145F9C()
{
  v2 = *(*v1 + 112);
  v3 = *v1;
  v3[15] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100146110, 0, 0);
  }

  else
  {
    v4 = v3[12];
    v5 = v3[13];
    v6 = v3[11];
    v7 = v3[8];

    v8 = v3[2];

    v9 = v3[1];

    return v9(v8);
  }
}

uint64_t sub_100146110()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[7];

  v4 = v0[15];
  v5 = v0[11];
  (*(v3 + 104))(v0[8], enum case for DIPError.Code.internalError(_:), v0[6]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100008E7C();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v6 = v0[1];

  return v6();
}

uint64_t sub_100146280(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = type metadata accessor for DIPError.Code();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v6 = *(v5 + 64) + 15;
  v3[8] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v3[9] = v7;
  v8 = *(v7 - 8);
  v3[10] = v8;
  v9 = *(v8 + 64) + 15;
  v3[11] = swift_task_alloc();

  return _swift_task_switch(sub_1001463A0, 0, 0);
}

uint64_t sub_1001463A0()
{
  v1 = v0[11];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "CredentialStore getProperties", v4, 2u);
  }

  v6 = v0[10];
  v5 = v0[11];
  v7 = v0[9];
  v9 = v0[4];
  v8 = v0[5];
  v10 = v0[3];

  (*(v6 + 8))(v5, v7);
  v11 = *(v8 + 120);
  v12 = swift_allocObject();
  v0[12] = v12;
  v12[2] = v8;
  v12[3] = v10;
  v12[4] = v9;
  v13 = *(v11 + 16);
  v14 = swift_allocObject();
  v0[13] = v14;
  *(v14 + 16) = sub_1001539FC;
  *(v14 + 24) = v12;
  v15 = async function pointer to AsyncCoreDataContainer.performRead<A>(_:)[1];

  v16 = swift_task_alloc();
  v0[14] = v16;
  v17 = sub_100153A1C();
  *v16 = v0;
  v16[1] = sub_10014658C;

  return AsyncCoreDataContainer.performRead<A>(_:)(v0 + 2, sub_1000BCF60, v14, v17);
}

uint64_t sub_10014658C()
{
  v2 = *(*v1 + 112);
  v3 = *v1;
  v3[15] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100146700, 0, 0);
  }

  else
  {
    v4 = v3[12];
    v5 = v3[13];
    v6 = v3[11];
    v7 = v3[8];

    v8 = v3[2];

    v9 = v3[1];

    return v9(v8);
  }
}

uint64_t sub_100146700()
{
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[13];
  v4 = v0[11];
  v6 = v0[7];
  v5 = v0[8];
  v7 = v0[6];

  (*(v6 + 104))(v5, enum case for DIPError.Code.internalError(_:), v7);
  swift_errorRetain();
  sub_10002688C(&_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100008E7C();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v8 = v0[1];

  return v8();
}

uint64_t sub_10014687C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[16] = a3;
  v4[17] = v3;
  v4[14] = a1;
  v4[15] = a2;
  v5 = type metadata accessor for DIPError.Code();
  v4[18] = v5;
  v6 = *(v5 - 8);
  v4[19] = v6;
  v7 = *(v6 + 64) + 15;
  v4[20] = swift_task_alloc();
  v8 = type metadata accessor for UUID();
  v4[21] = v8;
  v9 = *(v8 - 8);
  v4[22] = v9;
  v10 = *(v9 + 64) + 15;
  v4[23] = swift_task_alloc();
  v11 = type metadata accessor for Logger();
  v4[24] = v11;
  v12 = *(v11 - 8);
  v4[25] = v12;
  v13 = *(v12 + 64) + 15;
  v4[26] = swift_task_alloc();

  return _swift_task_switch(sub_1001469F8, 0, 0);
}

uint64_t sub_1001469F8()
{
  v1 = *(v0 + 208);
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "CredentialStore createCredential", v4, 2u);
  }

  v6 = *(v0 + 200);
  v5 = *(v0 + 208);
  v7 = *(v0 + 192);

  (*(v6 + 8))(v5, v7);
  if (_isInternalBuild.getter() & 1) != 0 && (sub_1000A0DEC(42, 0xE100000000000000, *(*(v0 + 136) + 16)) & 1) != 0 || (sub_1000A0DEC(*(v0 + 112), *(v0 + 120), *(*(v0 + 136) + 16)))
  {
    v9 = *(v0 + 176);
    v8 = *(v0 + 184);
    v10 = *(v0 + 168);
    v11 = *(v0 + 128);
    UUID.init()();
    v40 = UUID.uuidString.getter();
    v41 = v12;
    *(v0 + 216) = v40;
    *(v0 + 224) = v12;
    (*(v9 + 8))(v8, v10);
    if (v11)
    {
      v13 = *(v0 + 128);
      v14 = [v13 deleteIncompleteCredentialAfterDays];
      v15 = [v13 deleteInactiveKeysAfterDays];
      v11 = [v13 readerAuthenticationPolicy];
      v16 = [v13 presentmentAuthPolicy];
      v17 = [v13 payloadProtectionPolicy];
      v18 = [v13 isPIIHashMismatchTerminal];
    }

    else
    {
      v18 = 0;
      v17 = 0;
      v16 = 0;
      v15 = 0;
      v14 = 0;
    }

    v30 = *(v0 + 136);
    v31 = *(v0 + 112);
    v32 = *(v0 + 120);
    *(v0 + 16) = v14;
    *(v0 + 24) = v15;
    *(v0 + 32) = v11;
    *(v0 + 40) = v16;
    *(v0 + 48) = v17;
    *(v0 + 56) = v18;
    sub_1001448BC((v0 + 64));
    v33 = *(v30 + 120);
    v34 = swift_allocObject();
    *(v0 + 232) = v34;
    *(v34 + 16) = v31;
    *(v34 + 24) = v32;
    *(v34 + 32) = v40;
    *(v34 + 40) = v41;
    v35 = *(v0 + 80);
    *(v34 + 48) = *(v0 + 64);
    *(v34 + 64) = v35;
    *(v34 + 73) = *(v0 + 89);
    v36 = *(v33 + 16);
    v37 = swift_allocObject();
    *(v0 + 240) = v37;
    *(v37 + 16) = sub_100153F3C;
    *(v37 + 24) = v34;
    v38 = async function pointer to AsyncCoreDataContainer.performWrite<A>(_:)[1];

    v39 = swift_task_alloc();
    *(v0 + 248) = v39;
    *v39 = v0;
    v39[1] = sub_100146F74;

    return AsyncCoreDataContainer.performWrite<A>(_:)(v39, sub_10001C150, v37, &type metadata for () + 8);
  }

  else
  {
    v20 = *(v0 + 152);
    v19 = *(v0 + 160);
    v21 = *(v0 + 144);
    v23 = *(v0 + 112);
    v22 = *(v0 + 120);
    _StringGuts.grow(_:)(47);

    v24._countAndFlagsBits = v23;
    v24._object = v22;
    String.append(_:)(v24);
    v25._countAndFlagsBits = 0xD000000000000023;
    v25._object = 0x80000001001BC280;
    String.append(_:)(v25);
    v26 = *(v20 + 104);
    v26(v19, enum case for DIPError.Code.idcsUnauthorizedPartition(_:), v21);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v27 = *(v0 + 208);
    v42 = *(v0 + 184);
    v26(*(v0 + 160), enum case for DIPError.Code.internalError(_:), *(v0 + 144));
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v28 = *(v0 + 8);

    return v28();
  }
}

uint64_t sub_100146F74()
{
  v2 = *v1;
  v3 = *(*v1 + 248);
  v8 = *v1;
  *(*v1 + 256) = v0;

  if (v0)
  {
    v4 = sub_100147118;
  }

  else
  {
    v6 = *(v2 + 232);
    v5 = *(v2 + 240);

    v4 = sub_100147098;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100147098()
{
  v1 = v0[26];
  v2 = v0[23];
  v3 = v0[20];

  v4 = v0[1];
  v5 = v0[27];
  v6 = v0[28];

  return v4(v5, v6);
}

uint64_t sub_100147118()
{
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[28];
  v4 = v0[19];

  v5 = v0[32];
  v6 = v0[26];
  v7 = v0[23];
  (*(v4 + 104))(v0[20], enum case for DIPError.Code.internalError(_:), v0[18]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100008E7C();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v8 = v0[1];

  return v8();
}

uint64_t sub_1001472A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v4[7] = *v3;
  v5 = type metadata accessor for DIPError.Code();
  v4[8] = v5;
  v6 = *(v5 - 8);
  v4[9] = v6;
  v7 = *(v6 + 64) + 15;
  v4[10] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v4[11] = v8;
  v9 = *(v8 - 8);
  v4[12] = v9;
  v10 = *(v9 + 64) + 15;
  v4[13] = swift_task_alloc();

  return _swift_task_switch(sub_1001473F0, 0, 0);
}

uint64_t sub_1001473F0()
{
  v1 = v0[13];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "CredentialStore credentialIdentifiersInPartitionsDocType", v4, 2u);
  }

  v6 = v0[12];
  v5 = v0[13];
  v7 = v0[11];
  v8 = v0[6];
  v9 = v0[3];

  (*(v6 + 8))(v5, v7);
  if (sub_10016A3B4(v9))
  {
    v10 = v0[7];
    v12 = v0[4];
    v11 = v0[5];
    v13 = v0[3];
    v14 = *(v0[6] + 120);
    v15 = swift_allocObject();
    v0[14] = v15;
    v15[2] = v13;
    v15[3] = v12;
    v15[4] = v11;
    v15[5] = v10;
    v16 = *(v14 + 16);
    v17 = swift_allocObject();
    v0[15] = v17;
    *(v17 + 16) = sub_100153EDC;
    *(v17 + 24) = v15;
    v18 = async function pointer to AsyncCoreDataContainer.performRead<A>(_:)[1];

    v19 = swift_task_alloc();
    v0[16] = v19;
    v20 = sub_100004E70(&qword_1002019B8, &qword_1001AD020);
    *v19 = v0;
    v19[1] = sub_100147860;

    return AsyncCoreDataContainer.performRead<A>(_:)(v0 + 2, sub_100141890, v17, v20);
  }

  else
  {
    v22 = v0[9];
    v21 = v0[10];
    v23 = v0[8];
    v24 = v0[3];
    _StringGuts.grow(_:)(49);

    v25._countAndFlagsBits = Array.description.getter();
    String.append(_:)(v25);

    v26._countAndFlagsBits = 0xD000000000000024;
    v26._object = 0x80000001001BC0A0;
    String.append(_:)(v26);
    v27 = *(v22 + 104);
    v27(v21, enum case for DIPError.Code.idcsUnauthorizedPartition(_:), v23);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v30 = v0[13];
    v27(v0[10], enum case for DIPError.Code.internalError(_:), v0[8]);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v28 = v0[1];

    return v28();
  }
}

uint64_t sub_100147860()
{
  v2 = *(*v1 + 128);
  v3 = *v1;
  v3[17] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1001479D4, 0, 0);
  }

  else
  {
    v4 = v3[14];
    v5 = v3[15];
    v6 = v3[13];
    v7 = v3[10];

    v8 = v3[2];

    v9 = v3[1];

    return v9(v8);
  }
}

uint64_t sub_1001479D4()
{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[9];

  v4 = v0[17];
  v5 = v0[13];
  (*(v3 + 104))(v0[10], enum case for DIPError.Code.internalError(_:), v0[8]);
  swift_errorRetain();
  sub_10002688C(&_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100008E7C();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v6 = v0[1];

  return v6();
}

uint64_t sub_100147B4C(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v3[6] = *v2;
  v4 = type metadata accessor for DIPError.Code();
  v3[7] = v4;
  v5 = *(v4 - 8);
  v3[8] = v5;
  v6 = *(v5 + 64) + 15;
  v3[9] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v3[10] = v7;
  v8 = *(v7 - 8);
  v3[11] = v8;
  v9 = *(v8 + 64) + 15;
  v3[12] = swift_task_alloc();

  return _swift_task_switch(sub_100147C94, 0, 0);
}

uint64_t sub_100147C94()
{
  v1 = v0[12];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "CredentialStore activeRegionsInPartitions", v4, 2u);
  }

  v6 = v0[11];
  v5 = v0[12];
  v7 = v0[10];
  v8 = v0[5];
  v9 = v0[3];

  (*(v6 + 8))(v5, v7);
  v10 = sub_10016A3B4(v9);
  v11 = v0[3];
  if (v10)
  {
    v12 = v0[6];
    v13 = v0[4];
    v14 = *(v0[5] + 120);
    v15 = swift_allocObject();
    v0[13] = v15;
    v15[2] = v11;
    v15[3] = v13;
    v15[4] = v12;
    v16 = *(v14 + 16);
    v17 = swift_allocObject();
    v0[14] = v17;
    *(v17 + 16) = sub_100153E28;
    *(v17 + 24) = v15;
    v18 = async function pointer to AsyncCoreDataContainer.performRead<A>(_:)[1];

    v19 = swift_task_alloc();
    v0[15] = v19;
    v20 = sub_100004E70(&qword_100203C08, &qword_1001AE980);
    *v19 = v0;
    v19[1] = sub_1001480FC;

    return AsyncCoreDataContainer.performRead<A>(_:)(v0 + 2, sub_100141890, v17, v20);
  }

  else
  {
    v22 = v0[8];
    v21 = v0[9];
    v23 = v0[7];
    _StringGuts.grow(_:)(49);

    v24._countAndFlagsBits = Array.description.getter();
    String.append(_:)(v24);

    v25._countAndFlagsBits = 0xD000000000000024;
    v25._object = 0x80000001001BC0A0;
    String.append(_:)(v25);
    v26 = *(v22 + 104);
    v26(v21, enum case for DIPError.Code.idcsUnauthorizedPartition(_:), v23);
    sub_10002688C(&_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v27 = v0[12];
    v26(v0[9], enum case for DIPError.Code.internalError(_:), v0[7]);
    swift_errorRetain();
    sub_10002688C(&_swiftEmptyArrayStorage);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v28 = v0[1];

    return v28();
  }
}

uint64_t sub_1001480FC()
{
  v2 = *(*v1 + 120);
  v3 = *v1;
  v3[16] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100148270, 0, 0);
  }

  else
  {
    v4 = v3[13];
    v5 = v3[14];
    v6 = v3[12];
    v7 = v3[9];

    v8 = v3[2];

    v9 = v3[1];

    return v9(v8);
  }
}

uint64_t sub_100148270()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[8];

  v4 = v0[16];
  v5 = v0[12];
  (*(v3 + 104))(v0[9], enum case for DIPError.Code.internalError(_:), v0[7]);
  swift_errorRetain();
  sub_10002688C(&_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100008E7C();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v6 = v0[1];

  return v6();
}

uint64_t sub_1001483E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(*(sub_100004E70(&qword_100201CD0, &qword_1001AC550) - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  v6 = type metadata accessor for DIPError.Code();
  v4[7] = v6;
  v7 = *(v6 - 8);
  v4[8] = v7;
  v8 = *(v7 + 64) + 15;
  v4[9] = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  v4[10] = v9;
  v10 = *(v9 - 8);
  v4[11] = v10;
  v11 = *(v10 + 64) + 15;
  v4[12] = swift_task_alloc();

  return _swift_task_switch(sub_100148540, 0, 0);
}

uint64_t sub_100148540()
{
  v1 = v0[12];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "CredentialStore setState", v4, 2u);
  }

  v6 = v0[11];
  v5 = v0[12];
  v7 = v0[10];
  v9 = v0[4];
  v8 = v0[5];
  v11 = v0[2];
  v10 = v0[3];

  (*(v6 + 8))(v5, v7);
  v12 = *(v8 + 120);
  v13 = swift_allocObject();
  v0[13] = v13;
  v13[2] = v8;
  v13[3] = v11;
  v13[4] = v10;
  v13[5] = v9;
  v14 = *(v12 + 16);
  v15 = swift_allocObject();
  v0[14] = v15;
  *(v15 + 16) = sub_100153794;
  *(v15 + 24) = v13;
  v16 = async function pointer to AsyncCoreDataContainer.performWrite<A>(_:)[1];

  v17 = swift_task_alloc();
  v0[15] = v17;
  *v17 = v0;
  v17[1] = sub_100148724;

  return AsyncCoreDataContainer.performWrite<A>(_:)();
}

uint64_t sub_100148724()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v8 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = sub_100148970;
  }

  else
  {
    v6 = *(v2 + 104);
    v5 = *(v2 + 112);

    v4 = sub_100148848;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100148848()
{
  if (v0[4] == 2)
  {
    v1 = v0[5];
    v2 = v0[6];
    v3 = type metadata accessor for TaskPriority();
    (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
    v4 = swift_allocObject();
    v4[2] = 0;
    v4[3] = 0;
    v4[4] = v1;

    sub_10014EF84(0, 0, v2, &unk_1001AE8F0, v4);
  }

  v5 = v0[12];
  v6 = v0[9];
  v7 = v0[6];

  v8 = v0[1];

  return v8();
}

uint64_t sub_100148970()
{
  v1 = v0[16];
  v2 = v0[13];
  v3 = v0[14];
  v4 = v0[12];
  v6 = v0[8];
  v5 = v0[9];
  v7 = v0[6];
  v8 = v0[7];

  (*(v6 + 104))(v5, enum case for DIPError.Code.internalError(_:), v8);
  swift_errorRetain();
  sub_10002688C(&_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100008E7C();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v9 = v0[1];

  return v9();
}

uint64_t sub_100148AF0(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = type metadata accessor for DIPError.Code();
  v3[7] = v4;
  v5 = *(v4 - 8);
  v3[8] = v5;
  v6 = *(v5 + 64) + 15;
  v3[9] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v3[10] = v7;
  v8 = *(v7 - 8);
  v3[11] = v8;
  v9 = *(v8 + 64) + 15;
  v3[12] = swift_task_alloc();

  return _swift_task_switch(sub_100148C10, 0, 0);
}

uint64_t sub_100148C10()
{
  v1 = v0[12];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "CredentialStore getPayloadAuthACL", v4, 2u);
  }

  v6 = v0[11];
  v5 = v0[12];
  v7 = v0[10];
  v9 = v0[5];
  v8 = v0[6];
  v10 = v0[4];

  (*(v6 + 8))(v5, v7);
  v11 = *(v8 + 120);
  v12 = swift_allocObject();
  v0[13] = v12;
  v12[2] = v8;
  v12[3] = v10;
  v12[4] = v9;
  v13 = *(v11 + 16);
  v14 = swift_allocObject();
  v0[14] = v14;
  *(v14 + 16) = &unk_1001AE8B0;
  *(v14 + 24) = v12;
  v15 = async function pointer to AsyncCoreDataContainer.read<A>(_:)[1];

  v16 = swift_task_alloc();
  v0[15] = v16;
  v17 = sub_100004E70(&qword_100203B08, &qword_1001AE520);
  *v16 = v0;
  v16[1] = sub_100148E08;

  return AsyncCoreDataContainer.read<A>(_:)(v0 + 2, &unk_1001AE8C0, v14, v17);
}

uint64_t sub_100148E08()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v8 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = sub_100148F2C;
  }

  else
  {
    v6 = *(v2 + 104);
    v5 = *(v2 + 112);

    v4 = sub_10013B3D0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100148F2C()
{
  v1 = v0[16];
  v2 = v0[13];
  v3 = v0[14];
  v4 = v0[12];
  v6 = v0[8];
  v5 = v0[9];
  v7 = v0[7];

  (*(v6 + 104))(v5, enum case for DIPError.Code.internalError(_:), v7);
  swift_errorRetain();
  sub_10002688C(&_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100008E7C();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v8 = v0[1];

  return v8();
}

uint64_t sub_1001490A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[11] = a5;
  v6[12] = v5;
  v6[9] = a3;
  v6[10] = a4;
  v6[7] = a1;
  v6[8] = a2;
  v7 = type metadata accessor for DIPError.Code();
  v6[13] = v7;
  v8 = *(v7 - 8);
  v6[14] = v8;
  v9 = *(v8 + 64) + 15;
  v6[15] = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  v6[16] = v10;
  v11 = *(v10 - 8);
  v6[17] = v11;
  v12 = *(v11 + 64) + 15;
  v6[18] = swift_task_alloc();

  return _swift_task_switch(sub_1001491C8, 0, 0);
}

uint64_t sub_1001491C8()
{
  v1 = v0[18];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "CredentialStore getElements", v4, 2u);
  }

  v6 = v0[17];
  v5 = v0[18];
  v7 = v0[16];
  v9 = v0[11];
  v8 = v0[12];
  v10 = v0[10];
  v12 = v0[7];
  v11 = v0[8];

  (*(v6 + 8))(v5, v7);
  v13 = *(v8 + 120);
  v14 = swift_allocObject();
  v0[19] = v14;
  v14[2] = v8;
  v14[3] = v12;
  v14[4] = v11;
  v14[5] = v10;
  v14[6] = v9;

  sub_100032EBC(v10, v9);
  v15 = *(v13 + 16);
  v16 = swift_allocObject();
  v0[20] = v16;
  *(v16 + 16) = &unk_1001AE878;
  *(v16 + 24) = v14;
  v17 = async function pointer to AsyncCoreDataContainer.read<A>(_:)[1];

  v18 = swift_task_alloc();
  v0[21] = v18;
  v19 = sub_100004E70(&qword_100202720, &unk_1001AE890);
  *v18 = v0;
  v18[1] = sub_1001493DC;

  return AsyncCoreDataContainer.read<A>(_:)(v0 + 2, &unk_1001AE888, v16, v19);
}

uint64_t sub_1001493DC()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v8 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v4 = sub_100149754;
  }

  else
  {
    v6 = *(v2 + 152);
    v5 = *(v2 + 160);

    v4 = sub_100149500;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100149500()
{
  v1 = v0[5];
  v2 = v0[6];
  sub_100009278(v0 + 2, v1);
  v3 = *(v2 + 16);
  v8 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[23] = v5;
  *v5 = v0;
  v5[1] = sub_10014962C;
  v6 = v0[9];

  return v8(v6, v1, v2);
}

uint64_t sub_10014962C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 184);
  v6 = *v2;
  *(*v2 + 192) = v1;

  if (v1)
  {
    v7 = sub_100149968;
  }

  else
  {
    *(v4 + 200) = a1;
    v7 = sub_1001498C8;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100149754()
{
  v1 = v0[19];
  v2 = v0[20];

  v3 = v0[22];
  v4 = v0[18];
  (*(v0[14] + 104))(v0[15], enum case for DIPError.Code.internalError(_:), v0[13]);
  swift_errorRetain();
  sub_10002688C(&_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100008E7C();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v5 = v0[1];

  return v5();
}

uint64_t sub_1001498C8()
{
  v1 = v0[18];
  v2 = v0[15];
  v3 = sub_100020718(v0[25]);

  sub_100005090(v0 + 2);

  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_100149968()
{
  sub_100005090(v0 + 2);
  v1 = v0[24];
  v2 = v0[18];
  (*(v0[14] + 104))(v0[15], enum case for DIPError.Code.internalError(_:), v0[13]);
  swift_errorRetain();
  sub_10002688C(&_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100008E7C();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v3 = v0[1];

  return v3();
}

void sub_100149AD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26 = a6;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v26 - v13;
  type metadata accessor for StoredCredential();
  v27 = a1;
  v15 = *(a1 + 16);
  v16 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v17 = [v16 initWithContext:{v15, v26}];
  v18 = String._bridgeToObjectiveC()();
  [v17 setPartition:v18];

  [v17 setState:1];
  v19 = String._bridgeToObjectiveC()();
  [v17 setCredentialIdentifier:v19];

  Date.init()();
  isa = Date._bridgeToObjectiveC()().super.isa;
  v21 = *(v8 + 8);
  v21(v14, v7);
  [v17 setCreatedAt:isa];

  v22 = [v17 createdAt];
  if (v22)
  {
    v23 = v22;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v24.super.isa = Date._bridgeToObjectiveC()().super.isa;
    v21(v12, v7);
  }

  else
  {
    v24.super.isa = 0;
  }

  [v17 setUpdatedAt:v24.super.isa];

  v25 = sub_100145224(v27);
  [v17 setOptions:v25];

  sub_100050240();
}

unint64_t sub_100149D4C@<X0>(uint64_t a1@<X1>, unint64_t *a2@<X8>)
{
  isInternal = _isInternalBuild.getter();
  if (isInternal & 1) != 0 && (v8[0] = 42, v8[1] = 0xE100000000000000, __chkstk_darwin(isInternal), v7[2] = v8, (sub_100120CF8(sub_10000ED28, v7, a1)))
  {
    result = sub_100052B58(_swiftEmptyArrayStorage);
    if (v2)
    {
      return result;
    }
  }

  else
  {
    result = sub_100052B58(a1);
    if (v2)
    {
      return result;
    }
  }

  *a2 = result;
  return result;
}

unint64_t sub_100149E20@<X0>(uint64_t a1@<X1>, unint64_t a2@<X2>, const char *a3@<X3>, unint64_t *a4@<X8>)
{
  isInternal = _isInternalBuild.getter();
  if (isInternal & 1) != 0 && (v13[0] = 42, v13[1] = 0xE100000000000000, __chkstk_darwin(isInternal), v12[2] = v13, (sub_100120CF8(sub_100154218, v12, a1)))
  {
    v10 = _swiftEmptyArrayStorage;
  }

  else
  {
    v10 = a1;
  }

  result = sub_1000534F4(v10, a2, a3);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_100149F08@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  isInternal = _isInternalBuild.getter();
  if (isInternal & 1) != 0 && (v11[0] = 42, v11[1] = 0xE100000000000000, __chkstk_darwin(isInternal), v10[2] = v11, (sub_100120CF8(sub_100154218, v10, a1)))
  {
    v8 = &_swiftEmptyArrayStorage;
  }

  else
  {
    v8 = a1;
  }

  result = sub_100053E30(v8, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_100149FDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v5[8] = a2;
  v5[9] = a3;
  v6 = type metadata accessor for DIPError();
  v5[12] = v6;
  v7 = *(v6 - 8);
  v5[13] = v7;
  v8 = *(v7 + 64) + 15;
  v5[14] = swift_task_alloc();
  v9 = type metadata accessor for DIPError.Code();
  v5[15] = v9;
  v10 = *(v9 - 8);
  v5[16] = v10;
  v11 = *(v10 + 64) + 15;
  v5[17] = swift_task_alloc();
  v12 = type metadata accessor for Logger();
  v5[18] = v12;
  v13 = *(v12 - 8);
  v5[19] = v13;
  v14 = *(v13 + 64) + 15;
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  v5[22] = swift_task_alloc();
  v15 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v5[23] = v15;
  v16 = *(v15 - 8);
  v5[24] = v16;
  v17 = *(v16 + 64) + 15;
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();

  return _swift_task_switch(sub_10014A1D8, 0, 0);
}

uint64_t sub_10014A1D8()
{
  v1 = *(v0 + 192);
  v15 = *(v0 + 184);
  v16 = *(v0 + 208);
  v2 = *(v0 + 80);
  v3 = *(v0 + 88);
  v5 = *(v0 + 64);
  v4 = *(v0 + 72);
  v6 = swift_allocObject();
  *(v0 + 216) = v6;
  v6[2] = v4;
  v6[3] = v2;
  v6[4] = v3;
  v6[5] = v5;
  *(v0 + 224) = *(v5 + 16);
  v7 = swift_allocObject();
  *(v0 + 232) = v7;
  *(v7 + 16) = sub_100153CE4;
  *(v7 + 24) = v6;
  v8 = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
  *(v0 + 472) = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
  v9 = *(v1 + 104);
  *(v0 + 240) = v9;
  *(v0 + 248) = (v1 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;

  v9(v16, v8, v15);
  v10 = async function pointer to NSManagedObjectContext.perform<A>(schedule:_:)[1];

  v11 = swift_task_alloc();
  *(v0 + 256) = v11;
  v12 = sub_100004E70(&qword_100203C00, &qword_1001AE970);
  *v11 = v0;
  v11[1] = sub_10014A38C;
  v13 = *(v0 + 208);

  return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 16, v13, sub_100153D3C, v7, v12);
}

uint64_t sub_10014A38C()
{
  v2 = *v1;
  v3 = *(*v1 + 256);
  v13 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v4 = *(v2 + 232);
    (*(*(v2 + 192) + 8))(*(v2 + 208), *(v2 + 184));

    v5 = sub_10014ADA0;
  }

  else
  {
    v6 = *(v2 + 232);
    v8 = *(v2 + 208);
    v7 = *(v2 + 216);
    v9 = *(v2 + 184);
    v10 = *(v2 + 192);

    v11 = *(v10 + 8);
    *(v2 + 272) = v11;
    *(v2 + 280) = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v11(v8, v9);
    *(v2 + 288) = *(v2 + 16);
    v5 = sub_10014A518;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10014A518()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 176);
  defaultLogger()();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 288);
  if (v5)
  {
    v7 = swift_slowAlloc();
    *v7 = 134349056;
    *(v7 + 4) = *(v6 + 16);

    _os_log_impl(&_mh_execute_header, v3, v4, "Deleting %{public}ld key signing keys", v7, 0xCu);
  }

  else
  {
    v8 = *(v0 + 288);
  }

  v9 = *(v0 + 288);
  v10 = *(v0 + 176);
  v11 = *(v0 + 144);
  v12 = *(v0 + 152);
  v13 = *(v12 + 8);
  *(v0 + 304) = v13;
  *(v0 + 312) = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v13(v10, v11);
  v14 = *(v9 + 16);
  *(v0 + 320) = v14;
  if (v14)
  {
    v15 = *(v0 + 288);
    v16 = *(*(v0 + 72) + 112);
    *(v0 + 476) = enum case for DIPError.Code.internalError(_:);
    *(v0 + 328) = v16;
    *(v0 + 336) = 0;
    v18 = *(v15 + 32);
    v17 = *(v15 + 40);

    *(v0 + 32) = 778793835;
    *(v0 + 40) = 0xE400000000000000;
    v19._countAndFlagsBits = v18;
    v19._object = v17;
    String.append(_:)(v19);

    v20 = *(v0 + 32);
    v21 = *(v0 + 40);
    *(v0 + 344) = v21;
    v22 = *(v16 + 32);
    v23 = async function pointer to DeviceIdentityKeystore.deleteKeysAndCertificates(label:)[1];
    v24 = swift_task_alloc();
    *(v0 + 352) = v24;
    *v24 = v0;
    v25 = sub_10014AE64;
LABEL_6:
    v24[1] = v25;

    return DeviceIdentityKeystore.deleteKeysAndCertificates(label:)(v20, v21);
  }

  v26 = *(v0 + 264);
  v27 = *(v0 + 288);
  v28 = *(v0 + 296);
  v29 = *(v0 + 160);

  defaultLogger()();

  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.info.getter();
  v32 = os_log_type_enabled(v30, v31);
  v33 = *(v0 + 296);
  if (v32)
  {
    v34 = swift_slowAlloc();
    *v34 = 134349056;
    *(v34 + 4) = *(v33 + 16);

    _os_log_impl(&_mh_execute_header, v30, v31, "Deleting %{public}ld device encryption keys", v34, 0xCu);
  }

  else
  {
    v35 = *(v0 + 296);
  }

  v36 = *(v0 + 312);
  v37 = *(v0 + 296);
  (*(v0 + 304))(*(v0 + 160), *(v0 + 144));
  v38 = *(v37 + 16);
  *(v0 + 368) = v38;
  if (v38)
  {
    v39 = 0;
    *(v0 + 480) = enum case for DIPError.Code.internalError(_:);
    while (1)
    {
      *(v0 + 376) = v39;
      v40 = *(v0 + 72);
      v41 = (*(v0 + 296) + 32 * v39);
      v42 = v41[4];
      *(v0 + 384) = v42;
      v43 = v41[5];
      *(v0 + 392) = v43;
      v44 = v41[6];
      *(v0 + 400) = v44;
      v45 = v41[7];
      *(v0 + 408) = v45;
      v46 = *(v40 + 112);
      if ((v45 & 0x2000000000000000) == 0)
      {
        break;
      }

      v47 = *(v46 + 16);
      sub_10001BFB8(v42, v43, v44, v45);
      sub_100009708(v44, v45 & 0xDFFFFFFFFFFFFFFFLL);
      dispatch thunk of SESKeystore.deleteKey(_:)();
      if (v26)
      {
        v83 = *(v0 + 480);
        v48 = *(v0 + 136);
        v81 = *(v0 + 120);
        v79 = *(v0 + 96);
        v49 = *(*(v0 + 128) + 104);
        v49(v48);
        swift_errorRetain();
        sub_10002688C(_swiftEmptyArrayStorage);
        sub_100008E7C();
        swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();

        (v49)(v48, v83, v81);
        swift_errorRetain();
        sub_10002688C(_swiftEmptyArrayStorage);
        swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();

        sub_1000092BC(v44, v45 & 0xDFFFFFFFFFFFFFFFLL);
        v77 = *(v0 + 400);
        v78 = *(v0 + 408);
        v50 = *(v0 + 384);
        v51 = *(v0 + 392);
        v82 = *(v0 + 304);
        v84 = *(v0 + 312);
        v52 = *(v0 + 168);
        v80 = *(v0 + 144);
        v54 = *(v0 + 104);
        v53 = *(v0 + 112);
        v55 = *(v0 + 128) + 104;
        v56 = *(v0 + 96);
        (v49)(*(v0 + 136), *(v0 + 480), *(v0 + 120));
        swift_errorRetain();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_allocError();
        (*(v54 + 16))(v57, v53, v56);
        defaultLogger()();
        DIPRecordError(_:message:log:)();
        sub_10001BFFC(v50, v51, v77, v78);

        v82(v52, v80);
        (*(v54 + 8))(v53, v56);
      }

      else
      {
        sub_10001BFFC(v42, v43, v44, v45);
        sub_1000092BC(v44, v45 & 0xDFFFFFFFFFFFFFFFLL);
      }

      v26 = 0;
      v39 = *(v0 + 376) + 1;
      if (v39 == *(v0 + 368))
      {
        goto LABEL_19;
      }
    }

    sub_100009708(v44, v45);
    *(v0 + 48) = 778790244;
    *(v0 + 56) = 0xE400000000000000;
    v73._countAndFlagsBits = v42;
    v73._object = v43;
    String.append(_:)(v73);
    v20 = *(v0 + 48);
    v21 = *(v0 + 56);
    *(v0 + 416) = v21;
    v74 = *(v46 + 32);
    v75 = async function pointer to DeviceIdentityKeystore.deleteKeysAndCertificates(label:)[1];
    v24 = swift_task_alloc();
    *(v0 + 424) = v24;
    *v24 = v0;
    v25 = sub_10014C0F4;
    goto LABEL_6;
  }

LABEL_19:
  v58 = *(v0 + 296);
  v59 = *(v0 + 240);
  v85 = *(v0 + 248);
  v60 = *(v0 + 472);
  v61 = *(v0 + 200);
  v62 = *(v0 + 184);
  v64 = *(v0 + 80);
  v63 = *(v0 + 88);
  v66 = *(v0 + 64);
  v65 = *(v0 + 72);

  v67 = swift_allocObject();
  *(v0 + 440) = v67;
  v67[2] = v65;
  v67[3] = v64;
  v67[4] = v63;
  v67[5] = v66;
  v68 = swift_allocObject();
  *(v0 + 448) = v68;
  *(v68 + 16) = sub_100153DC8;
  *(v68 + 24) = v67;

  v59(v61, v60, v62);
  v69 = async function pointer to NSManagedObjectContext.perform<A>(schedule:_:)[1];

  v70 = swift_task_alloc();
  *(v0 + 456) = v70;
  *v70 = v0;
  v70[1] = sub_10014C228;
  v71 = *(v0 + 224);
  v72 = *(v0 + 200);

  return NSManagedObjectContext.perform<A>(schedule:_:)(v70, v72, sub_10001C0A8, v68, &type metadata for () + 8);
}

uint64_t sub_10014ADA0()
{
  v1 = v0[27];

  v2 = v0[33];
  v4 = v0[25];
  v3 = v0[26];
  v6 = v0[21];
  v5 = v0[22];
  v7 = v0[20];
  v8 = v0[17];
  v9 = v0[14];

  v10 = v0[1];

  return v10();
}

uint64_t sub_10014AE64()
{
  v2 = *v1;
  v3 = *(*v1 + 352);
  v4 = *v1;
  *(*v1 + 360) = v0;

  v5 = *(v2 + 344);

  if (v0)
  {
    v6 = sub_10014B740;
  }

  else
  {
    v6 = sub_10014AF98;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10014AF98()
{
  v1 = *(v0 + 336) + 1;
  if (v1 == *(v0 + 320))
  {
    v2 = *(v0 + 360);
    v3 = *(v0 + 288);
    v4 = *(v0 + 296);
    v5 = *(v0 + 160);

    defaultLogger()();

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.info.getter();
    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v0 + 296);
    if (v8)
    {
      v10 = swift_slowAlloc();
      *v10 = 134349056;
      *(v10 + 4) = *(v9 + 16);

      _os_log_impl(&_mh_execute_header, v6, v7, "Deleting %{public}ld device encryption keys", v10, 0xCu);
    }

    else
    {
      v22 = *(v0 + 296);
    }

    v23 = *(v0 + 312);
    v24 = *(v0 + 296);
    (*(v0 + 304))(*(v0 + 160), *(v0 + 144));
    v25 = *(v24 + 16);
    *(v0 + 368) = v25;
    if (!v25)
    {
LABEL_13:
      v45 = *(v0 + 296);
      v46 = *(v0 + 240);
      v72 = *(v0 + 248);
      v47 = *(v0 + 472);
      v48 = *(v0 + 200);
      v49 = *(v0 + 184);
      v51 = *(v0 + 80);
      v50 = *(v0 + 88);
      v53 = *(v0 + 64);
      v52 = *(v0 + 72);

      v54 = swift_allocObject();
      *(v0 + 440) = v54;
      v54[2] = v52;
      v54[3] = v51;
      v54[4] = v50;
      v54[5] = v53;
      v55 = swift_allocObject();
      *(v0 + 448) = v55;
      *(v55 + 16) = sub_100153DC8;
      *(v55 + 24) = v54;

      v46(v48, v47, v49);
      v56 = async function pointer to NSManagedObjectContext.perform<A>(schedule:_:)[1];

      v57 = swift_task_alloc();
      *(v0 + 456) = v57;
      *v57 = v0;
      v57[1] = sub_10014C228;
      v58 = *(v0 + 224);
      v59 = *(v0 + 200);

      return NSManagedObjectContext.perform<A>(schedule:_:)(v57, v59, sub_10001C0A8, v55, &type metadata for () + 8);
    }

    v26 = 0;
    *(v0 + 480) = enum case for DIPError.Code.internalError(_:);
    while (1)
    {
      *(v0 + 376) = v26;
      v27 = *(v0 + 72);
      v28 = (*(v0 + 296) + 32 * v26);
      v29 = v28[4];
      *(v0 + 384) = v29;
      v30 = v28[5];
      *(v0 + 392) = v30;
      v31 = v28[6];
      *(v0 + 400) = v31;
      v32 = v28[7];
      *(v0 + 408) = v32;
      v33 = *(v27 + 112);
      if ((v32 & 0x2000000000000000) == 0)
      {
        break;
      }

      v34 = *(v33 + 16);
      sub_10001BFB8(v29, v30, v31, v32);
      sub_100009708(v31, v32 & 0xDFFFFFFFFFFFFFFFLL);
      dispatch thunk of SESKeystore.deleteKey(_:)();
      if (v2)
      {
        v70 = *(v0 + 480);
        v35 = *(v0 + 136);
        v68 = *(v0 + 120);
        v66 = *(v0 + 96);
        v36 = *(*(v0 + 128) + 104);
        v36(v35);
        swift_errorRetain();
        sub_10002688C(_swiftEmptyArrayStorage);
        sub_100008E7C();
        swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();

        (v36)(v35, v70, v68);
        swift_errorRetain();
        sub_10002688C(_swiftEmptyArrayStorage);
        swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();

        sub_1000092BC(v31, v32 & 0xDFFFFFFFFFFFFFFFLL);
        v64 = *(v0 + 400);
        v65 = *(v0 + 408);
        v37 = *(v0 + 384);
        v38 = *(v0 + 392);
        v69 = *(v0 + 304);
        v71 = *(v0 + 312);
        v39 = *(v0 + 168);
        v67 = *(v0 + 144);
        v41 = *(v0 + 104);
        v40 = *(v0 + 112);
        v42 = *(v0 + 128) + 104;
        v43 = *(v0 + 96);
        (v36)(*(v0 + 136), *(v0 + 480), *(v0 + 120));
        swift_errorRetain();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_allocError();
        (*(v41 + 16))(v44, v40, v43);
        defaultLogger()();
        DIPRecordError(_:message:log:)();
        sub_10001BFFC(v37, v38, v64, v65);

        v69(v39, v67);
        (*(v41 + 8))(v40, v43);
      }

      else
      {
        sub_10001BFFC(v29, v30, v31, v32);
        sub_1000092BC(v31, v32 & 0xDFFFFFFFFFFFFFFFLL);
      }

      v2 = 0;
      v26 = *(v0 + 376) + 1;
      if (v26 == *(v0 + 368))
      {
        goto LABEL_13;
      }
    }

    sub_100009708(v31, v32);
    *(v0 + 48) = 778790244;
    *(v0 + 56) = 0xE400000000000000;
    v60._countAndFlagsBits = v29;
    v60._object = v30;
    String.append(_:)(v60);
    v16 = *(v0 + 48);
    v17 = *(v0 + 56);
    *(v0 + 416) = v17;
    v61 = *(v33 + 32);
    v62 = async function pointer to DeviceIdentityKeystore.deleteKeysAndCertificates(label:)[1];
    v20 = swift_task_alloc();
    *(v0 + 424) = v20;
    *v20 = v0;
    v21 = sub_10014C0F4;
  }

  else
  {
    *(v0 + 336) = v1;
    v11 = *(v0 + 328);
    v12 = *(v0 + 288) + 16 * v1;
    v14 = *(v12 + 32);
    v13 = *(v12 + 40);

    *(v0 + 32) = 778793835;
    *(v0 + 40) = 0xE400000000000000;
    v15._countAndFlagsBits = v14;
    v15._object = v13;
    String.append(_:)(v15);

    v16 = *(v0 + 32);
    v17 = *(v0 + 40);
    *(v0 + 344) = v17;
    v18 = *(v11 + 32);
    v19 = async function pointer to DeviceIdentityKeystore.deleteKeysAndCertificates(label:)[1];
    v20 = swift_task_alloc();
    *(v0 + 352) = v20;
    *v20 = v0;
    v21 = sub_10014AE64;
  }

  v20[1] = v21;

  return DeviceIdentityKeystore.deleteKeysAndCertificates(label:)(v16, v17);
}

uint64_t sub_10014B740()
{
  v1 = *(v0 + 360);
  v61 = *(v0 + 476);
  v66 = *(v0 + 312);
  v65 = *(v0 + 304);
  v2 = *(v0 + 136);
  v63 = *(v0 + 168);
  v64 = *(v0 + 144);
  v3 = *(v0 + 120);
  v60 = *(v0 + 112);
  v62 = *(v0 + 104);
  v58 = v3;
  v59 = *(v0 + 96);
  v4 = *(*(v0 + 128) + 104);
  v4(v2);
  sub_100008E7C();
  swift_allocError();
  swift_errorRetain();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  (v4)(v2, v61, v58);
  swift_errorRetain();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_allocError();
  (*(v62 + 16))(v5, v60, v59);
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  v65(v63, v64);
  (*(v62 + 8))(v60, v59);

  v6 = *(v0 + 336) + 1;
  if (v6 == *(v0 + 320))
  {
    v7 = *(v0 + 288);
    v8 = *(v0 + 296);
    v9 = *(v0 + 160);

    defaultLogger()();

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.info.getter();
    v12 = os_log_type_enabled(v10, v11);
    v13 = *(v0 + 296);
    if (v12)
    {
      v14 = swift_slowAlloc();
      *v14 = 134349056;
      *(v14 + 4) = *(v13 + 16);

      _os_log_impl(&_mh_execute_header, v10, v11, "Deleting %{public}ld device encryption keys", v14, 0xCu);
    }

    else
    {
      v26 = *(v0 + 296);
    }

    v27 = *(v0 + 312);
    v28 = *(v0 + 296);
    (*(v0 + 304))(*(v0 + 160), *(v0 + 144));
    v29 = *(v28 + 16);
    *(v0 + 368) = v29;
    if (!v29)
    {
LABEL_11:
      v39 = *(v0 + 296);
      v40 = *(v0 + 240);
      v67 = *(v0 + 248);
      v41 = *(v0 + 472);
      v42 = *(v0 + 200);
      v43 = *(v0 + 184);
      v45 = *(v0 + 80);
      v44 = *(v0 + 88);
      v47 = *(v0 + 64);
      v46 = *(v0 + 72);

      v48 = swift_allocObject();
      *(v0 + 440) = v48;
      v48[2] = v46;
      v48[3] = v45;
      v48[4] = v44;
      v48[5] = v47;
      v49 = swift_allocObject();
      *(v0 + 448) = v49;
      *(v49 + 16) = sub_100153DC8;
      *(v49 + 24) = v48;

      v40(v42, v41, v43);
      v50 = async function pointer to NSManagedObjectContext.perform<A>(schedule:_:)[1];

      v51 = swift_task_alloc();
      *(v0 + 456) = v51;
      *v51 = v0;
      v51[1] = sub_10014C228;
      v52 = *(v0 + 224);
      v53 = *(v0 + 200);

      return NSManagedObjectContext.perform<A>(schedule:_:)(v51, v53, sub_10001C0A8, v49, &type metadata for () + 8);
    }

    v30 = 0;
    *(v0 + 480) = enum case for DIPError.Code.internalError(_:);
    while (1)
    {
      *(v0 + 376) = v30;
      v31 = *(v0 + 72);
      v32 = (*(v0 + 296) + 32 * v30);
      v33 = v32[4];
      *(v0 + 384) = v33;
      v34 = v32[5];
      *(v0 + 392) = v34;
      v35 = v32[6];
      *(v0 + 400) = v35;
      v36 = v32[7];
      *(v0 + 408) = v36;
      v37 = *(v31 + 112);
      if ((v36 & 0x2000000000000000) == 0)
      {
        break;
      }

      v38 = *(v37 + 16);
      sub_10001BFB8(v33, v34, v35, v36);
      sub_100009708(v35, v36 & 0xDFFFFFFFFFFFFFFFLL);
      dispatch thunk of SESKeystore.deleteKey(_:)();
      sub_10001BFFC(v33, v34, v35, v36);
      sub_1000092BC(v35, v36 & 0xDFFFFFFFFFFFFFFFLL);
      v30 = *(v0 + 376) + 1;
      if (v30 == *(v0 + 368))
      {
        goto LABEL_11;
      }
    }

    sub_100009708(v35, v36);
    *(v0 + 48) = 778790244;
    *(v0 + 56) = 0xE400000000000000;
    v54._countAndFlagsBits = v33;
    v54._object = v34;
    String.append(_:)(v54);
    v20 = *(v0 + 48);
    v21 = *(v0 + 56);
    *(v0 + 416) = v21;
    v55 = *(v37 + 32);
    v56 = async function pointer to DeviceIdentityKeystore.deleteKeysAndCertificates(label:)[1];
    v24 = swift_task_alloc();
    *(v0 + 424) = v24;
    *v24 = v0;
    v25 = sub_10014C0F4;
  }

  else
  {
    *(v0 + 336) = v6;
    v15 = *(v0 + 328);
    v16 = *(v0 + 288) + 16 * v6;
    v18 = *(v16 + 32);
    v17 = *(v16 + 40);

    *(v0 + 32) = 778793835;
    *(v0 + 40) = 0xE400000000000000;
    v19._countAndFlagsBits = v18;
    v19._object = v17;
    String.append(_:)(v19);

    v20 = *(v0 + 32);
    v21 = *(v0 + 40);
    *(v0 + 344) = v21;
    v22 = *(v15 + 32);
    v23 = async function pointer to DeviceIdentityKeystore.deleteKeysAndCertificates(label:)[1];
    v24 = swift_task_alloc();
    *(v0 + 352) = v24;
    *v24 = v0;
    v25 = sub_10014AE64;
  }

  v24[1] = v25;

  return DeviceIdentityKeystore.deleteKeysAndCertificates(label:)(v20, v21);
}

uint64_t sub_10014C0F4()
{
  v2 = *v1;
  v3 = *(*v1 + 424);
  v4 = *v1;
  *(*v1 + 432) = v0;

  v5 = *(v2 + 416);

  if (v0)
  {
    v6 = sub_10014CB58;
  }

  else
  {
    v6 = sub_10014C51C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10014C228()
{
  v2 = *v1;
  v3 = *(*v1 + 456);
  v4 = *v1;
  *(v2 + 464) = v0;

  v5 = *(v2 + 448);
  if (v0)
  {
    v6 = *(v2 + 280);
    (*(v2 + 272))(*(v2 + 200), *(v2 + 184));

    v7 = sub_10014C458;
  }

  else
  {
    v8 = *(v2 + 440);
    v10 = *(v2 + 272);
    v9 = *(v2 + 280);
    v11 = *(v2 + 200);
    v12 = *(v2 + 184);

    v10(v11, v12);
    v7 = sub_10014C3A4;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10014C3A4()
{
  v2 = v0[25];
  v1 = v0[26];
  v4 = v0[21];
  v3 = v0[22];
  v5 = v0[20];
  v6 = v0[17];
  v7 = v0[14];

  v8 = v0[1];

  return v8();
}

uint64_t sub_10014C458()
{
  v1 = v0[55];

  v2 = v0[58];
  v4 = v0[25];
  v3 = v0[26];
  v6 = v0[21];
  v5 = v0[22];
  v7 = v0[20];
  v8 = v0[17];
  v9 = v0[14];

  v10 = v0[1];

  return v10();
}

uint64_t sub_10014C51C()
{
  sub_10001BFFC(*(v0 + 384), *(v0 + 392), *(v0 + 400), *(v0 + 408));
  v1 = *(v0 + 376) + 1;
  if (v1 == *(v0 + 368))
  {
LABEL_2:
    v2 = *(v0 + 296);
    v3 = *(v0 + 240);
    v51 = *(v0 + 248);
    v4 = *(v0 + 472);
    v5 = *(v0 + 200);
    v6 = *(v0 + 184);
    v8 = *(v0 + 80);
    v7 = *(v0 + 88);
    v10 = *(v0 + 64);
    v9 = *(v0 + 72);

    v11 = swift_allocObject();
    *(v0 + 440) = v11;
    v11[2] = v9;
    v11[3] = v8;
    v11[4] = v7;
    v11[5] = v10;
    v12 = swift_allocObject();
    *(v0 + 448) = v12;
    *(v12 + 16) = sub_100153DC8;
    *(v12 + 24) = v11;

    v3(v5, v4, v6);
    v13 = async function pointer to NSManagedObjectContext.perform<A>(schedule:_:)[1];

    v14 = swift_task_alloc();
    *(v0 + 456) = v14;
    *v14 = v0;
    v14[1] = sub_10014C228;
    v15 = *(v0 + 224);
    v16 = *(v0 + 200);

    return NSManagedObjectContext.perform<A>(schedule:_:)(v14, v16, sub_10001C0A8, v12, &type metadata for () + 8);
  }

  else
  {
    v17 = *(v0 + 432);
    while (1)
    {
      *(v0 + 376) = v1;
      v18 = *(v0 + 72);
      v19 = (*(v0 + 296) + 32 * v1);
      v20 = v19[4];
      *(v0 + 384) = v20;
      v21 = v19[5];
      *(v0 + 392) = v21;
      v22 = v19[6];
      *(v0 + 400) = v22;
      v23 = v19[7];
      *(v0 + 408) = v23;
      v24 = *(v18 + 112);
      if ((v23 & 0x2000000000000000) == 0)
      {
        break;
      }

      v25 = *(v24 + 16);
      sub_10001BFB8(v20, v21, v22, v23);
      sub_100009708(v22, v23 & 0xDFFFFFFFFFFFFFFFLL);
      dispatch thunk of SESKeystore.deleteKey(_:)();
      if (v17)
      {
        v49 = *(v0 + 480);
        v26 = *(v0 + 136);
        v27 = *(v0 + 120);
        v47 = *(v0 + 96);
        v43 = *(*(v0 + 128) + 104);
        v43(v26);
        swift_errorRetain();
        sub_10002688C(_swiftEmptyArrayStorage);
        sub_100008E7C();
        swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();

        (v43)(v26, v49, v27);
        swift_errorRetain();
        sub_10002688C(_swiftEmptyArrayStorage);
        swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();

        sub_1000092BC(v22, v23 & 0xDFFFFFFFFFFFFFFFLL);
        v44 = *(v0 + 400);
        v45 = *(v0 + 408);
        v29 = *(v0 + 384);
        v28 = *(v0 + 392);
        v48 = *(v0 + 304);
        v50 = *(v0 + 312);
        v30 = *(v0 + 168);
        v46 = *(v0 + 144);
        v32 = *(v0 + 104);
        v31 = *(v0 + 112);
        v33 = *(v0 + 128) + 104;
        v34 = *(v0 + 96);
        (v43)(*(v0 + 136), *(v0 + 480), *(v0 + 120));
        swift_errorRetain();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_allocError();
        (*(v32 + 16))(v35, v31, v34);
        defaultLogger()();
        DIPRecordError(_:message:log:)();
        sub_10001BFFC(v29, v28, v44, v45);

        v48(v30, v46);
        (*(v32 + 8))(v31, v34);
      }

      else
      {
        sub_10001BFFC(v20, v21, v22, v23);
        sub_1000092BC(v22, v23 & 0xDFFFFFFFFFFFFFFFLL);
      }

      v17 = 0;
      v1 = *(v0 + 376) + 1;
      if (v1 == *(v0 + 368))
      {
        goto LABEL_2;
      }
    }

    sub_100009708(v22, v23);
    *(v0 + 48) = 778790244;
    *(v0 + 56) = 0xE400000000000000;
    v36._countAndFlagsBits = v20;
    v36._object = v21;
    String.append(_:)(v36);
    v37 = *(v0 + 48);
    v38 = *(v0 + 56);
    *(v0 + 416) = v38;
    v39 = *(v24 + 32);
    v40 = async function pointer to DeviceIdentityKeystore.deleteKeysAndCertificates(label:)[1];
    v41 = swift_task_alloc();
    *(v0 + 424) = v41;
    *v41 = v0;
    v41[1] = sub_10014C0F4;

    return DeviceIdentityKeystore.deleteKeysAndCertificates(label:)(v37, v38);
  }
}

uint64_t sub_10014CB58()
{
  v1 = *(v0 + 432);
  v2 = *(v0 + 96);
  v47 = *(*(v0 + 128) + 104);
  v47(*(v0 + 136), *(v0 + 480), *(v0 + 120));
  sub_100008E7C();
  swift_allocError();
  swift_errorRetain();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v42 = *(v0 + 400);
  v43 = *(v0 + 408);
  v40 = *(v0 + 384);
  v41 = *(v0 + 392);
  v45 = *(v0 + 304);
  v46 = *(v0 + 312);
  v3 = *(v0 + 168);
  v44 = *(v0 + 144);
  v5 = *(v0 + 104);
  v4 = *(v0 + 112);
  v6 = *(v0 + 128) + 104;
  v7 = *(v0 + 96);
  v47(*(v0 + 136), *(v0 + 480), *(v0 + 120));
  swift_errorRetain();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_allocError();
  (*(v5 + 16))(v8, v4, v7);
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  sub_10001BFFC(v40, v41, v42, v43);

  v45(v3, v44);
  (*(v5 + 8))(v4, v7);

  v9 = *(v0 + 376) + 1;
  if (v9 == *(v0 + 368))
  {
LABEL_4:
    v18 = *(v0 + 296);
    v19 = *(v0 + 240);
    v48 = *(v0 + 248);
    v20 = *(v0 + 472);
    v21 = *(v0 + 200);
    v22 = *(v0 + 184);
    v24 = *(v0 + 80);
    v23 = *(v0 + 88);
    v26 = *(v0 + 64);
    v25 = *(v0 + 72);

    v27 = swift_allocObject();
    *(v0 + 440) = v27;
    v27[2] = v25;
    v27[3] = v24;
    v27[4] = v23;
    v27[5] = v26;
    v28 = swift_allocObject();
    *(v0 + 448) = v28;
    *(v28 + 16) = sub_100153DC8;
    *(v28 + 24) = v27;

    v19(v21, v20, v22);
    v29 = async function pointer to NSManagedObjectContext.perform<A>(schedule:_:)[1];

    v30 = swift_task_alloc();
    *(v0 + 456) = v30;
    *v30 = v0;
    v30[1] = sub_10014C228;
    v31 = *(v0 + 224);
    v32 = *(v0 + 200);

    return NSManagedObjectContext.perform<A>(schedule:_:)(v30, v32, sub_10001C0A8, v28, &type metadata for () + 8);
  }

  else
  {
    while (1)
    {
      *(v0 + 376) = v9;
      v10 = *(v0 + 72);
      v11 = (*(v0 + 296) + 32 * v9);
      v12 = v11[4];
      *(v0 + 384) = v12;
      v13 = v11[5];
      *(v0 + 392) = v13;
      v14 = v11[6];
      *(v0 + 400) = v14;
      v15 = v11[7];
      *(v0 + 408) = v15;
      v16 = *(v10 + 112);
      if ((v15 & 0x2000000000000000) == 0)
      {
        break;
      }

      v17 = *(v16 + 16);
      sub_10001BFB8(v12, v13, v14, v15);
      sub_100009708(v14, v15 & 0xDFFFFFFFFFFFFFFFLL);
      dispatch thunk of SESKeystore.deleteKey(_:)();
      sub_10001BFFC(v12, v13, v14, v15);
      sub_1000092BC(v14, v15 & 0xDFFFFFFFFFFFFFFFLL);
      v9 = *(v0 + 376) + 1;
      if (v9 == *(v0 + 368))
      {
        goto LABEL_4;
      }
    }

    sub_100009708(v14, v15);
    *(v0 + 48) = 778790244;
    *(v0 + 56) = 0xE400000000000000;
    v33._countAndFlagsBits = v12;
    v33._object = v13;
    String.append(_:)(v33);
    v34 = *(v0 + 48);
    v35 = *(v0 + 56);
    *(v0 + 416) = v35;
    v36 = *(v16 + 32);
    v37 = async function pointer to DeviceIdentityKeystore.deleteKeysAndCertificates(label:)[1];
    v38 = swift_task_alloc();
    *(v0 + 424) = v38;
    *v38 = v0;
    v38[1] = sub_10014C0F4;

    return DeviceIdentityKeystore.deleteKeysAndCertificates(label:)(v34, v35);
  }
}

void sub_10014D250(unint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v105 = a5;
  v10 = sub_100004E70(&qword_100200510, qword_1001AB070);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v85 - v12;
  v14 = type metadata accessor for CredentialKeyType();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v85 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10016A520(a2, a3);
  if (v5)
  {
    return;
  }

  v20 = v19;
  v104 = v15;
  sub_100059DE4();
  v22 = v21;
  v100 = v20;
  v101 = v18;
  v103 = v14;
  v99 = v13;
  if (v21 >> 62)
  {
    v23 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v23 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v24 = a4;
  v102 = 0;
  if (v23)
  {
    if (v23 < 1)
    {
      __break(1u);
LABEL_63:
      v39 = _CocoaArrayWrapper.endIndex.getter();
      goto LABEL_23;
    }

    v25 = 0;
    v107 = _swiftEmptyArrayStorage;
    v106 = a4;
    do
    {
      if ((v22 & 0xC000000000000001) != 0)
      {
        v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v28 = *(v22 + 8 * v25 + 32);
      }

      v29 = v28;
      v30 = [v28 identifier];
      if (v30)
      {
        v31 = v30;
        v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v34 = v33;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v107 = sub_100100418(0, *(v107 + 2) + 1, 1, v107);
        }

        v36 = *(v107 + 2);
        v35 = *(v107 + 3);
        if (v36 >= v35 >> 1)
        {
          v107 = sub_100100418((v35 > 1), v36 + 1, 1, v107);
        }

        v26 = v107;
        *(v107 + 2) = v36 + 1;
        v27 = &v26[16 * v36];
        *(v27 + 4) = v32;
        *(v27 + 5) = v34;
        v24 = v106;
        [*(v106 + 16) deleteObject:v29];
      }

      ++v25;
    }

    while (v23 != v25);
  }

  else
  {
    v107 = _swiftEmptyArrayStorage;
  }

  v37 = v102;
  sub_100050240();
  if (v37)
  {

    return;
  }

  v20 = v100;
  sub_10005966C();
  a1 = v38;
  if (v38 >> 62)
  {
    goto LABEL_63;
  }

  v39 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_23:
  v40 = v105;
  v102 = 0;
  if (!v39)
  {

    v95 = _swiftEmptyArrayStorage;
    goto LABEL_58;
  }

  if (v39 < 1)
  {
    __break(1u);
    return;
  }

  v41 = 0;
  v42 = a1 & 0xC000000000000001;
  v89 = (v104 + 32);
  v90 = (v104 + 48);
  v88 = (v104 + 88);
  v86 = enum case for CredentialKeyType.sep(_:);
  v87 = enum case for CredentialKeyType.ses(_:);
  v93 = (v104 + 104);
  v96 = (v104 + 8);
  v94 = a1;
  v95 = _swiftEmptyArrayStorage;
  v43 = &off_1001FE000;
  v92 = enum case for CredentialKeyType.invalid(_:);
  v91 = a1 & 0xC000000000000001;
  do
  {
    if (v42)
    {
      v44 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v44 = *(a1 + 8 * v41 + 32);
    }

    v45 = v44;
    v46 = [v44 v43[279]];
    if (!v46)
    {

      goto LABEL_27;
    }

    v47 = v46;
    v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v50 = v49;

    v51 = [v45 publicKeyIdentifier];
    if (!v51)
    {

      v43 = &off_1001FE000;
      goto LABEL_27;
    }

    v97 = v48;
    v52 = a1;
    v53 = v39;
    v106 = v50;
    v54 = v51;
    v55 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v57 = v56;

    v58 = [v45 keyType];
    if (!v58)
    {

      sub_1000092BC(v55, v57);

      v39 = v53;
      a1 = v52;
      goto LABEL_38;
    }

    v98 = v55;
    v104 = v57;
    v59 = v53;
    v60 = v58;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v61 = v99;
    CredentialKeyType.init(rawValue:)();
    v62 = v103;
    if ((*v90)(v61, 1, v103) == 1)
    {

      sub_1000092BC(v98, v104);

      sub_10000A0D4(v61, &qword_100200510, qword_1001AB070);
      a1 = v94;
      v39 = v59;
      v42 = v91;
LABEL_38:
      v43 = &off_1001FE000;
      v63 = v101;
      v64 = v103;
      (*v93)(v101, v92, v103);
LABEL_39:
      (*v96)(v63, v64);
      goto LABEL_27;
    }

    v65 = v101;
    (*v89)(v101, v61, v62);
    v66 = (*v88)(v65, v62);
    if (v66 != v87)
    {
      a1 = v94;
      v43 = &off_1001FE000;
      if (v66 != v86)
      {

        sub_1000092BC(v98, v104);

        v64 = v103;
        v63 = v101;
        v39 = v59;
        v42 = v91;
        goto LABEL_39;
      }

      v79 = v98;
      sub_100009708(v98, v104);
      v77 = v59;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v95 = sub_100100524(0, *(v95 + 2) + 1, 1, v95);
      }

      v42 = v91;
      v73 = *(v95 + 2);
      v80 = *(v95 + 3);
      v74 = v73 + 1;
      if (v73 >= v80 >> 1)
      {
        v95 = sub_100100524((v80 > 1), v73 + 1, 1, v95);
      }

      v75 = v79;
      v78 = v104;
      v76 = v104;
      goto LABEL_53;
    }

    v67 = [v45 keyBlob];
    v43 = &off_1001FE000;
    if (v67)
    {
      v68 = v67;
      v69 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v71 = v70;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v95 = sub_100100524(0, *(v95 + 2) + 1, 1, v95);
      }

      v73 = *(v95 + 2);
      v72 = *(v95 + 3);
      v74 = v73 + 1;
      if (v73 >= v72 >> 1)
      {
        v95 = sub_100100524((v72 > 1), v73 + 1, 1, v95);
      }

      v75 = v69;
      v76 = v71 | 0x2000000000000000;
      v77 = v59;
      v42 = v91;
      v78 = v104;
      v79 = v98;
LABEL_53:
      v81 = v95;
      *(v95 + 2) = v74;
      v82 = &v81[32 * v73];
      *(v82 + 4) = v97;
      *(v82 + 5) = v106;
      *(v82 + 6) = v75;
      *(v82 + 7) = v76;
      [*(v24 + 16) deleteObject:v45];
      sub_1000092BC(v79, v78);

      a1 = v94;
      v43 = &off_1001FE000;
      v39 = v77;
      goto LABEL_27;
    }

    sub_1000092BC(v98, v104);
    a1 = v94;
    v39 = v59;
    v42 = v91;
LABEL_27:
    ++v41;
  }

  while (v39 != v41);

  v40 = v105;
  v20 = v100;
LABEL_58:
  v83 = v102;
  sub_100050240();
  if (v83)
  {
  }

  else
  {

    v84 = v95;
    *v40 = v107;
    v40[1] = v84;
  }
}

void sub_10014DA98(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v142 = a2;
  v133 = type metadata accessor for DIPError();
  v129 = *(v133 - 8);
  v7 = *(v129 + 64);
  __chkstk_darwin(v133);
  v131 = &v100 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = type metadata accessor for DIPError.Code();
  v128 = *(v132 - 8);
  v9 = *(v128 + 64);
  __chkstk_darwin(v132);
  v130 = &v100 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100004E70(&qword_100200510, qword_1001AB070);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v141 = &v100 - v13;
  v14 = type metadata accessor for CredentialKeyType();
  v137 = *(v14 - 8);
  isa = v137[8].isa;
  __chkstk_darwin(v14);
  v17 = &v100 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Logger();
  v136 = *(v18 - 8);
  v19 = *(v136 + 64);
  v20 = __chkstk_darwin(v18);
  v22 = &v100 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v20);
  v25 = &v100 - v24;
  __chkstk_darwin(v23);
  v27 = &v100 - v26;
  v28 = a3;
  v29 = a4;
  v30 = a1;
  v31 = v145;
  v32 = sub_10016A520(v142, v28);
  if (!v31)
  {
    v33 = v32;
    v145 = v27;
    v139 = v14;
    v140 = v17;
    v118 = v30;
    v111 = v22;
    v123 = v25;
    v34 = v136;
    v127 = v18;
    v138 = v29;
    sub_10005A084();
    v109 = v33;
    v35 = v145;
    v37 = v36;
    defaultLogger()();

    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.info.getter();
    v40 = os_log_type_enabled(v38, v39);
    v41 = v37 >> 62;
    v142 = v37;
    if (!v40)
    {

      v43 = v127;
      goto LABEL_7;
    }

    LODWORD(v135) = v39;
    v42 = swift_slowAlloc();
    *v42 = 134349056;
    v43 = v127;
    if (v41)
    {
      goto LABEL_48;
    }

    for (i = *((v142 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
    {
      *(v42 + 4) = i;

      _os_log_impl(&_mh_execute_header, v38, v135, "Deleting %{public}ld presentment keys", v42, 0xCu);

LABEL_7:
      v45 = *(v34 + 8);
      v136 = v34 + 8;
      v122 = v45;
      v45(v35, v43);
      v42 = v138;
      v38 = v140;
      if (v41)
      {
        v41 = v142;
        v97 = _CocoaArrayWrapper.endIndex.getter();
        v46 = v41;
        v145 = v97;
      }

      else
      {
        v46 = v142;
        v145 = *((v142 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v34 = v139;
      v47 = v137;
      if (!v145)
      {
        break;
      }

      if (v145 >= 1)
      {
        v48 = 0;
        v49 = v46 & 0xC000000000000001;
        v134 = &v137[6];
        v126 = &v137[4];
        v125 = &v137[11];
        v124 = enum case for CredentialKeyType.legacySE(_:);
        v119 = enum case for CredentialKeyType.ses(_:);
        v105 = "with identifier: ";
        v104 = 0x80000001001B25A0;
        v121 = enum case for DIPError.Code.internalError(_:);
        v120 = (v128 + 104);
        v103 = 0x80000001001B3530;
        v102 = "error deleting presentment key";
        v116 = "credentialDecryptionKeyFinder";
        v115 = 0x80000001001B6C20;
        v114 = (v129 + 16);
        v113 = (v129 + 8);
        v110 = "ayload protection key";
        LODWORD(v135) = enum case for CredentialKeyType.invalid(_:);
        v50 = v137 + 13;
        ++v137;
        v117 = v46 & 0xC000000000000001;
        v112 = v47 + 13;
        while (1)
        {
          if (v49)
          {
            v51 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v51 = *(v46 + 8 * v48 + 32);
          }

          v52 = v51;
          v53 = [v51 keyType];
          if (!v53)
          {
            goto LABEL_18;
          }

          v54 = v53;
          static String._unconditionallyBridgeFromObjectiveC(_:)();

          v55 = v141;
          v34 = v139;
          CredentialKeyType.init(rawValue:)();
          if ((*v134)(v55, 1, v34) == 1)
          {
            break;
          }

          v38 = v140;
          (*v126)();
          v56 = (*v125)(v38, v34);
          v42 = v138;
          if (v56 == v124)
          {
            sub_100032980([v52 keySlot]);
            goto LABEL_20;
          }

          if (v56 != v119)
          {
            goto LABEL_19;
          }

          v57 = [v52 keyBlob];
          if (!v57)
          {
            goto LABEL_21;
          }

          v58 = v57;
          v59 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v106 = 0;
          v60 = v59;
          v62 = v61;

          v63 = *(*(v118 + 112) + 16);
          v107 = v60;
          v108 = v62;
          v64 = v106;
          dispatch thunk of SESKeystore.deleteKey(_:)();
          if (v64)
          {
            v101 = *v120;
            v65 = v130;
            v66 = v132;
            v101(v130, v121, v132);
            swift_errorRetain();
            sub_10002688C(_swiftEmptyArrayStorage);
            v106 = sub_100008E7C();
            swift_allocError();
            DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
            swift_willThrow();

            v67 = v121;
            v68 = v66;
            v69 = v101;
            v101(v65, v121, v68);
            swift_errorRetain();
            sub_10002688C(_swiftEmptyArrayStorage);
            swift_allocError();
            v100 = 0xD000000000000021;
            v42 = v138;
            DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
            swift_willThrow();

            sub_1000092BC(v107, v108);
            v69(v65, v67, v132);
            v70 = v131;
            swift_errorRetain();
            sub_10002688C(_swiftEmptyArrayStorage);
            v50 = v112;
            DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
            v71 = v133;
            swift_allocError();
            (*v114)(v72, v70, v71);
            v73 = v123;
            defaultLogger()();
            DIPRecordError(_:message:log:)();

            v74 = v73;
            v49 = v117;
            v122(v74, v127);
            v75 = v70;
            v34 = v139;
            (*v113)(v75, v71);
          }

          else
          {
            sub_1000092BC(v107, v108);
          }

          v38 = v140;
LABEL_20:
          [*(v42 + 16) deleteObject:v52];
LABEL_21:
          ++v48;

          v46 = v142;
          if (v145 == v48)
          {
            goto LABEL_31;
          }
        }

        sub_10000A0D4(v55, &qword_100200510, qword_1001AB070);
        v42 = v138;
        v38 = v140;
LABEL_18:
        (v50->isa)(v38, v135, v34);
LABEL_19:
        (v137->isa)(v38, v34);
        goto LABEL_20;
      }

      __break(1u);
LABEL_48:
      ;
    }

LABEL_31:

    sub_100050240();
    sub_10005964C();
    v77 = v76;
    v78 = v111;
    defaultLogger()();

    v79 = Logger.logObject.getter();
    LOBYTE(v80) = static os_log_type_t.info.getter();
    v81 = os_log_type_enabled(v79, v80);
    v82 = v77 >> 62;
    v145 = v77;
    if (!v81)
    {

      v79 = v128;
      v83 = v129;
      v84 = v127;
      goto LABEL_36;
    }

    v34 = swift_slowAlloc();
    *v34 = 134349056;
    v83 = v129;
    v84 = v127;
    if (v82)
    {
      goto LABEL_52;
    }

    for (j = *((v145 & 0xFFFFFFFFFFFFFF8) + 0x10); ; j = _CocoaArrayWrapper.endIndex.getter())
    {
      *(v34 + 4) = j;

      _os_log_impl(&_mh_execute_header, v79, v80, "Deleting %{public}ld payload protection keys", v34, 0xCu);

      v79 = v128;
LABEL_36:
      v122(v78, v84);
      if (v82)
      {
        v80 = _CocoaArrayWrapper.endIndex.getter();
        if (!v80)
        {
          goto LABEL_50;
        }
      }

      else
      {
        v80 = *((v145 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v80)
        {
          goto LABEL_50;
        }
      }

      if (v80 >= 1)
      {
        break;
      }

      __break(1u);
LABEL_52:
      ;
    }

    v86 = 0;
    v87 = v145;
    v88 = v145 & 0xC000000000000001;
    v141 = "credentialDecryptionKeyFinder";
    v142 = "evice encryption key";
    v140 = 0x80000001001B6C20;
    LODWORD(v139) = enum case for DIPError.Code.internalError(_:);
    v137 = v79 + 13;
    v134 = (v83 + 8);
    v135 = v83 + 16;
    do
    {
      if (v88)
      {
        v89 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v89 = *(v87 + 8 * v86 + 32);
      }

      v90 = v89;
      v91 = [v89 identifier];
      if (v91)
      {
        v92 = v91;
        v93 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v95 = v94;

        v143 = 778793072;
        v144 = 0xE400000000000000;
        v96._countAndFlagsBits = v93;
        v96._object = v95;
        String.append(_:)(v96);

        sub_1000343E0(v143, v144);

        [*(v138 + 16) deleteObject:v90];
      }

      ++v86;
    }

    while (v80 != v86);
LABEL_50:

    v98 = v138;
    sub_100050240();
    v99 = v109;
    [*(v98 + 16) deleteObject:v109];
    sub_100050240();
  }
}

uint64_t sub_10014EBB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for Logger();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v4[5] = swift_task_alloc();

  return _swift_task_switch(sub_10014EC78, 0, 0);
}

uint64_t sub_10014EC78()
{
  v1 = v0[5];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Kicking off MobileAsset clear cache", v4, 2u);
  }

  v6 = v0[4];
  v5 = v0[5];
  v8 = v0[2];
  v7 = v0[3];

  (*(v6 + 8))(v5, v7);
  v9 = *(v8 + 120);
  type metadata accessor for OSTransaction();
  v10 = _s13CoreIDVShared13OSTransactionC5namedyq_SS_q_yYaYbxYKXEtYaxYKs5ErrorRzRi__r0_lFZTu[1];
  v11 = swift_task_alloc();
  v0[6] = v11;
  *v11 = v0;
  v11[1] = sub_10014EE14;

  return __s13CoreIDVShared13OSTransactionC5namedyq_SS_q_yYaYbxYKXEtYaxYKs5ErrorRzRi__r0_lFZ();
}

uint64_t sub_10014EE14()
{
  v2 = *(*v1 + 48);
  v4 = *v1;

  if (!v0)
  {

    return _swift_task_switch(sub_10014EF24, 0, 0);
  }

  return result;
}

uint64_t sub_10014EF24()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10014EF84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_100046360(a3, v27 - v11, &qword_100201CD0, &qword_1001AC550);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_10000A0D4(v12, &qword_100201CD0, &qword_1001AC550);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_10000A0D4(a3, &qword_100201CD0, &qword_1001AC550);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10000A0D4(a3, &qword_100201CD0, &qword_1001AC550);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

void sub_10014F284(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v9 = type metadata accessor for DIPError.Code();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10016A520(a3, a4);
  if (!v5)
  {
    v15 = v14;
    v16 = [v14 state];
    if ((v16 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_9:
      __break(1u);
      return;
    }

    if (sub_10016A994(v16, a5))
    {
      if ((a5 & 0x8000000000000000) == 0)
      {
        [v15 setState:a5];
        sub_100050240();

        return;
      }

      goto LABEL_9;
    }

    v29 = 0;
    v30 = 0xE000000000000000;
    _StringGuts.grow(_:)(45);

    v29 = 0xD000000000000016;
    v30 = 0x80000001001BC0F0;
    v17 = DCCredentialStateToString();
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    v21._countAndFlagsBits = v18;
    v21._object = v20;
    String.append(_:)(v21);

    v22._countAndFlagsBits = 544175136;
    v22._object = 0xE400000000000000;
    String.append(_:)(v22);
    v23 = DCCredentialStateToString();
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    v27._countAndFlagsBits = v24;
    v27._object = v26;
    String.append(_:)(v27);

    v28._countAndFlagsBits = 0x20746F6E20736920;
    v28._object = 0xEF6465776F6C6C61;
    String.append(_:)(v28);
    (*(v10 + 104))(v13, enum case for DIPError.Code.idcsInvalidCredentialStateTransition(_:), v9);
    sub_10002688C(&_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }
}

uint64_t sub_10014F588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for Logger();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v4[5] = swift_task_alloc();

  return _swift_task_switch(sub_10014F648, 0, 0);
}

uint64_t sub_10014F648()
{
  v1 = v0[5];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Kicking off MobileAssetRefresh", v4, 2u);
  }

  v6 = v0[4];
  v5 = v0[5];
  v8 = v0[2];
  v7 = v0[3];

  (*(v6 + 8))(v5, v7);
  v9 = *(v8 + 120);
  type metadata accessor for OSTransaction();
  v10 = _s13CoreIDVShared13OSTransactionC5namedyq_SS_q_yYaYbxYKXEtYaxYKs5ErrorRzRi__r0_lFZTu[1];
  v11 = swift_task_alloc();
  v0[6] = v11;
  *v11 = v0;
  v11[1] = sub_10014F7E4;

  return __s13CoreIDVShared13OSTransactionC5namedyq_SS_q_yYaYbxYKXEtYaxYKs5ErrorRzRi__r0_lFZ();
}

uint64_t sub_10014F7E4()
{
  v2 = *(*v1 + 48);
  v4 = *v1;

  if (!v0)
  {

    return _swift_task_switch(sub_100154234, 0, 0);
  }

  return result;
}

void sub_10014F8F4(uint64_t a1@<X2>, void *a2@<X3>, void *a3@<X8>)
{
  v5 = sub_10016A520(a1, a2);
  if (!v3)
  {
    v6 = v5;
    v7 = sub_10005AAEC();
    v8 = [v7 options];
    v9 = [v8 presentmentAuthPolicy];

    if (v9 >= 2)
    {
      if (v9 == 2)
      {
        v11 = [v6 state];
        if ((v11 & 0x8000000000000000) != 0)
        {
          __break(1u);
          return;
        }

        v10 = 0xCu >> (v11 & 0xF);
        if (v11 >= 4)
        {
          LOBYTE(v10) = 0;
        }
      }

      else
      {
        LOBYTE(v10) = 0;
      }
    }

    else
    {
      LOBYTE(v10) = 1;
    }

    [v7 setHasUsablePresentmentAuthPolicy:v10 & 1];

    *a3 = v7;
  }
}

uint64_t sub_10014F9F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[15] = a4;
  v5[16] = a5;
  v5[13] = a2;
  v5[14] = a3;
  v5[12] = a1;
  v6 = type metadata accessor for Logger();
  v5[17] = v6;
  v7 = *(v6 - 8);
  v5[18] = v7;
  v8 = *(v7 + 64) + 15;
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  v9 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v5[22] = v9;
  v10 = *(v9 - 8);
  v5[23] = v10;
  v11 = *(v10 + 64) + 15;
  v5[24] = swift_task_alloc();

  return _swift_task_switch(sub_10014FB2C, 0, 0);
}

uint64_t sub_10014FB2C()
{
  v1 = v0[23];
  v16 = v0[24];
  v2 = v0[22];
  v3 = v0[15];
  v4 = v0[16];
  v6 = v0[13];
  v5 = v0[14];
  v7 = swift_allocObject();
  v0[25] = v7;
  v7[2] = v5;
  v7[3] = v3;
  v7[4] = v4;
  v7[5] = v6;
  v17 = *(v6 + 16);
  v8 = swift_allocObject();
  v0[26] = v8;
  *(v8 + 16) = sub_100153744;
  *(v8 + 24) = v7;
  v9 = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
  v10 = *(v1 + 104);

  v10(v16, v9, v2);
  v11 = async function pointer to NSManagedObjectContext.perform<A>(schedule:_:)[1];

  v12 = swift_task_alloc();
  v0[27] = v12;
  v13 = sub_100004E70(&qword_100203BF0, &qword_1001AE8D0);
  *v12 = v0;
  v12[1] = sub_10014FCD8;
  v14 = v0[24];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 10, v14, sub_10013EABC, v8, v13);
}

uint64_t sub_10014FCD8()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v12 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v4 = *(v2 + 208);
    (*(*(v2 + 184) + 8))(*(v2 + 192), *(v2 + 176));

    v5 = sub_1001502E8;
  }

  else
  {
    v7 = *(v2 + 200);
    v6 = *(v2 + 208);
    v9 = *(v2 + 184);
    v8 = *(v2 + 192);
    v10 = *(v2 + 176);

    (*(v9 + 8))(v8, v10);
    *(v2 + 232) = *(v2 + 80);
    *(v2 + 89) = *(v2 + 88);
    v5 = sub_10014FE60;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10014FE60()
{
  v49 = v0;
  if (*(v0 + 89))
  {
    goto LABEL_17;
  }

  v1 = *(v0 + 232);
  if ((v1 - 1) < 2)
  {
    v2 = *(v0 + 160);
    defaultLogger()();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = *(v0 + 232);
      v46 = *(v0 + 160);
      v7 = *(v0 + 136);
      v6 = *(v0 + 144);
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v48 = v9;
      *v8 = 136315138;
      v10 = DCCredentialPayloadProtectionTypeToString();
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      v14 = sub_10010150C(v11, v13, &v48);

      *(v8 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v3, v4, "Payload uses key protection: %s, fetching ACL", v8, 0xCu);
      sub_100005090(v9);

      (*(v6 + 8))(v46, v7);
    }

    else
    {
      v20 = *(v0 + 160);
      v21 = *(v0 + 136);
      v22 = *(v0 + 144);

      (*(v22 + 8))(v20, v21);
    }

    v23 = *(*(v0 + 112) + 24);
    type metadata accessor for ACLFetcher();
    inited = swift_initStackObject();
    *(v0 + 240) = inited;
    *(inited + 16) = v23;
    type metadata accessor for AppleIDVManager();

    sub_1000215BC((inited + 24));
    v25 = swift_task_alloc();
    *(v0 + 248) = v25;
    *v25 = v0;
    v25[1] = sub_10015037C;

    return sub_100007DC4();
  }

  if (!v1)
  {
    v15 = *(v0 + 168);
    defaultLogger()();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Payload uses standard protection, no ACL required", v18, 2u);
    }

    v19 = *(v0 + 168);
    goto LABEL_16;
  }

  v27 = *(v0 + 152);
  defaultLogger()();
  v16 = Logger.logObject.getter();
  v28 = static os_log_type_t.error.getter();
  if (!os_log_type_enabled(v16, v28))
  {
    v19 = *(v0 + 152);
LABEL_16:
    v39 = *(v0 + 136);
    v40 = *(v0 + 144);

    (*(v40 + 8))(v19, v39);
    goto LABEL_17;
  }

  v29 = *(v0 + 232);
  v30 = *(v0 + 144);
  v47 = *(v0 + 152);
  v31 = *(v0 + 136);
  v32 = swift_slowAlloc();
  v33 = swift_slowAlloc();
  v48 = v33;
  *v32 = 136315138;
  v34 = DCCredentialPayloadProtectionTypeToString();
  v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v37 = v36;

  v38 = sub_10010150C(v35, v37, &v48);

  *(v32 + 4) = v38;
  _os_log_impl(&_mh_execute_header, v16, v28, "Unknown payload protection type %s", v32, 0xCu);
  sub_100005090(v33);

  (*(v30 + 8))(v47, v31);
LABEL_17:
  v41 = *(v0 + 192);
  v42 = *(v0 + 160);
  v43 = *(v0 + 168);
  v44 = *(v0 + 152);
  **(v0 + 96) = xmmword_1001AE390;

  v45 = *(v0 + 8);

  return v45();
}

uint64_t sub_1001502E8()
{
  v1 = v0[25];

  v2 = v0[28];
  v3 = v0[24];
  v5 = v0[20];
  v4 = v0[21];
  v6 = v0[19];

  v7 = v0[1];

  return v7();
}

uint64_t sub_10015037C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 248);
  v8 = *v3;
  *(*v3 + 256) = v2;

  if (v2)
  {
    v9 = sub_100150564;
  }

  else
  {
    *(v6 + 264) = a2;
    *(v6 + 272) = a1;
    v9 = sub_1001504B0;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_1001504B0()
{
  v1 = v0[30];
  swift_setDeallocating();
  v2 = *(v1 + 16);

  sub_100005090((v1 + 24));
  v3 = v0[33];
  v4 = v0[24];
  v5 = v0[20];
  v6 = v0[21];
  v7 = v0[19];
  v8 = v0[12];
  *v8 = v0[34];
  v8[1] = v3;

  v9 = v0[1];

  return v9();
}

uint64_t sub_100150564()
{
  v1 = v0[30];
  swift_setDeallocating();
  v2 = *(v1 + 16);

  sub_100005090((v1 + 24));
  v3 = v0[32];
  v4 = v0[24];
  v6 = v0[20];
  v5 = v0[21];
  v7 = v0[19];

  v8 = v0[1];

  return v8();
}

void sub_10015060C(uint64_t a1@<X1>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10016A520(a1, a2);
  if (!v3)
  {
    v22[1] = 0;
    v13 = v12;
    v14 = sub_10005947C();
    if (v14 >> 62)
    {
      goto LABEL_9;
    }

    for (i = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10); i; v14 = v18)
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v16 = *(v14 + 32);
      }

      v17 = v16;

      v7 = [v17 protectionType];

      if ((v7 & 0x8000000000000000) == 0)
      {
        goto LABEL_13;
      }

      __break(1u);
LABEL_9:
      v18 = v14;
      i = _CocoaArrayWrapper.endIndex.getter();
    }

    defaultLogger()();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "Credential has no payloads, so no payload auth acl", v21, 2u);
    }

    (*(v8 + 8))(v11, v7);
    v7 = 0;
LABEL_13:
    *a3 = v7;
    *(a3 + 8) = i == 0;
  }
}

uint64_t sub_100150858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[32] = a6;
  v7[33] = a7;
  v7[30] = a4;
  v7[31] = a5;
  v7[28] = a2;
  v7[29] = a3;
  v7[27] = a1;
  v8 = *(*(sub_100004E70(&qword_100202498, &unk_1001AD910) - 8) + 64) + 15;
  v7[34] = swift_task_alloc();
  v9 = type metadata accessor for DIPError.Code();
  v7[35] = v9;
  v10 = *(v9 - 8);
  v7[36] = v10;
  v11 = *(v10 + 64) + 15;
  v7[37] = swift_task_alloc();
  v12 = type metadata accessor for Logger();
  v7[38] = v12;
  v13 = *(v12 - 8);
  v7[39] = v13;
  v14 = *(v13 + 64) + 15;
  v7[40] = swift_task_alloc();
  v7[41] = swift_task_alloc();
  v7[42] = swift_task_alloc();
  v7[43] = swift_task_alloc();
  v15 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v7[44] = v15;
  v16 = *(v15 - 8);
  v7[45] = v16;
  v17 = *(v16 + 64) + 15;
  v7[46] = swift_task_alloc();
  v18 = type metadata accessor for CredentialStorage.DBResult();
  v7[47] = v18;
  v19 = *(*(v18 - 8) + 64) + 15;
  v7[48] = swift_task_alloc();

  return _swift_task_switch(sub_100150A68, 0, 0);
}

uint64_t sub_100150A68()
{
  v1 = v0[45];
  v17 = v0[46];
  v2 = v0[44];
  v3 = v0[30];
  v4 = v0[31];
  v6 = v0[28];
  v5 = v0[29];
  v7 = swift_allocObject();
  v0[49] = v7;
  v7[2] = v5;
  v7[3] = v3;
  v7[4] = v4;
  v7[5] = v6;
  v18 = *(v6 + 16);
  v8 = swift_allocObject();
  v0[50] = v8;
  *(v8 + 16) = sub_10015349C;
  *(v8 + 24) = v7;
  v9 = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
  v10 = *(v1 + 104);

  v10(v17, v9, v2);
  v11 = async function pointer to NSManagedObjectContext.perform<A>(schedule:_:)[1];

  v12 = swift_task_alloc();
  v0[51] = v12;
  *v12 = v0;
  v12[1] = sub_100150BFC;
  v14 = v0[47];
  v13 = v0[48];
  v15 = v0[46];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v13, v15, sub_1000BBAFC, v8, v14);
}

uint64_t sub_100150BFC()
{
  v2 = *v1;
  v3 = *(*v1 + 408);
  v4 = *v1;
  v2[52] = v0;

  v5 = v2[50];
  if (v0)
  {
    (*(v2[45] + 8))(v2[46], v2[44]);

    v6 = sub_1001514C0;
  }

  else
  {
    v7 = v2[49];
    v9 = v2[45];
    v8 = v2[46];
    v10 = v2[44];

    (*(v9 + 8))(v8, v10);
    v6 = sub_100150D88;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100150D88()
{
  v1 = v0[48];
  v2 = *v1;
  v4 = v1[3];
  v3 = v1[4];
  v5 = v1[5];
  v6 = [objc_opt_self() standardUserDefaults];
  v7._countAndFlagsBits = 0xD00000000000001ELL;
  v7._object = 0x80000001001BBF60;
  v8 = NSUserDefaults.internalBool(forKey:)(v7);

  if (!v8)
  {
    v35 = v0[33];
    if (v5 == 1)
    {
      if (v35 >> 60 != 15)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v50 = v35 >> 60;
      if (v5 != 2 || v50 <= 0xE)
      {
        goto LABEL_5;
      }
    }

    v52 = v0[48];
    (*(v0[36] + 104))(v0[37], enum case for DIPError.Code.idcsPayloadRequiresAuth(_:), v0[35]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    goto LABEL_30;
  }

  v9 = v0[43];
  defaultLogger()();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Attempting to access payload due to internal defaults setting", v12, 2u);
  }

  v13 = v0[43];
  v14 = v0[38];
  v15 = v0[39];

  (*(v15 + 8))(v13, v14);
LABEL_5:
  switch(v5)
  {
    case 2:
      v77 = v2;
      v53 = v0[40];
      defaultLogger()();
      v54 = Logger.logObject.getter();
      v55 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        *v56 = 0;
        _os_log_impl(&_mh_execute_header, v54, v55, "Payload protection type is payload encryption key", v56, 2u);
      }

      v58 = v0[47];
      v57 = v0[48];
      v60 = v0[39];
      v59 = v0[40];
      v61 = v0[38];
      v62 = v0[29];

      (*(v60 + 8))(v59, v61);
      v63 = sub_100009278((v62 + 72), *(v62 + 96));
      v64 = *(v58 + 20);
      v65 = *v63;
      v66 = swift_task_alloc();
      v0[57] = v66;
      *v66 = v0;
      v66[1] = sub_100151EE4;
      v33 = v0[32];
      v34 = v0[33];
      v29 = (v0 + 7);
      v28 = v57 + v64;
      goto LABEL_25;
    case 1:
LABEL_13:
      v77 = v2;
      v36 = v0[41];
      defaultLogger()();
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&_mh_execute_header, v37, v38, "Payload protection type is device encryption key", v39, 2u);
      }

      v41 = v0[47];
      v40 = v0[48];
      v42 = v0[41];
      v43 = v0[38];
      v44 = v0[39];
      v45 = v0[29];

      (*(v44 + 8))(v42, v43);
      v46 = sub_100009278((v45 + 72), *(v45 + 96));
      v47 = *(v41 + 20);
      v48 = *v46;
      v49 = swift_task_alloc();
      v0[55] = v49;
      *v49 = v0;
      v49[1] = sub_100151A50;
      v33 = v0[32];
      v34 = v0[33];
      v29 = (v0 + 17);
      v28 = v40 + v47;
LABEL_25:
      v30 = v4;
      v31 = v3;
      v32 = v77;
LABEL_26:

      return sub_1000F1194(v29, v30, v31, v32, v28, v33, v34);
    case 0:
      v16 = v0[42];
      defaultLogger()();
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&_mh_execute_header, v17, v18, "Payload protection type is standard, extracting elements from credential payload", v19, 2u);
      }

      v20 = v0[42];
      v21 = v0[38];
      v22 = v0[39];
      v23 = v0[34];
      v24 = v0[29];

      (*(v22 + 8))(v20, v21);
      v25 = *sub_100009278((v24 + 72), *(v24 + 96));
      v26 = type metadata accessor for KeyLookupInfo();
      (*(*(v26 - 8) + 56))(v23, 1, 1, v26);
      v27 = swift_task_alloc();
      v0[53] = v27;
      *v27 = v0;
      v27[1] = sub_100151590;
      v28 = v0[34];
      v29 = (v0 + 22);
      v30 = v4;
      v31 = v3;
      v32 = v2;
      v33 = 0;
      v34 = 0xF000000000000000;
      goto LABEL_26;
  }

  v52 = v0[48];
  (*(v0[36] + 104))(v0[37], enum case for DIPError.Code.internalError(_:), v0[35]);
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100008E7C();
  swift_allocError();
LABEL_30:
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
  sub_1001534BC(v52);
  v68 = v0[48];
  v69 = v0[46];
  v71 = v0[42];
  v70 = v0[43];
  v73 = v0[40];
  v72 = v0[41];
  v74 = v0[37];
  v75 = v0[34];

  v76 = v0[1];

  return v76();
}

uint64_t sub_1001514C0()
{
  v1 = v0[49];

  v2 = v0[52];
  v3 = v0[48];
  v4 = v0[46];
  v6 = v0[42];
  v5 = v0[43];
  v8 = v0[40];
  v7 = v0[41];
  v9 = v0[37];
  v10 = v0[34];

  v11 = v0[1];

  return v11();
}

uint64_t sub_100151590()
{
  v2 = *v1;
  v3 = *(*v1 + 424);
  v4 = *v1;
  *(*v1 + 432) = v0;

  sub_10000A0D4(*(v2 + 272), &qword_100202498, &unk_1001AD910);
  if (v0)
  {
    v5 = sub_100151980;
  }

  else
  {
    v5 = sub_1001516D4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1001516D4()
{
  v1 = *(v0 + 192);
  *(v0 + 16) = *(v0 + 176);
  *(v0 + 32) = v1;
  *(v0 + 48) = *(v0 + 208);
  sub_100046360(v0 + 16, v0 + 96, &qword_100202460, &unk_1001AD180);
  v2 = *(v0 + 384);
  if (*(v0 + 120))
  {
    v3 = *(v0 + 368);
    v5 = *(v0 + 336);
    v4 = *(v0 + 344);
    v7 = *(v0 + 320);
    v6 = *(v0 + 328);
    v8 = *(v0 + 296);
    v9 = *(v0 + 272);
    v10 = *(v0 + 216);
    sub_10000A0D4(v0 + 16, &qword_100202460, &unk_1001AD180);
    sub_1001534BC(v2);
    sub_1000BDD00((v0 + 96), v10);
  }

  else
  {
    v13 = *(v0 + 288);
    v12 = *(v0 + 296);
    v14 = *(v0 + 280);
    sub_10000A0D4(v0 + 96, &qword_100202460, &unk_1001AD180);
    (*(v13 + 104))(v12, enum case for DIPError.Code.idcsErrorInitializingPayloadProcessor(_:), v14);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_10000A0D4(v0 + 16, &qword_100202460, &unk_1001AD180);
    sub_1001534BC(v2);
    v15 = *(v0 + 384);
    v16 = *(v0 + 368);
    v18 = *(v0 + 336);
    v17 = *(v0 + 344);
    v20 = *(v0 + 320);
    v19 = *(v0 + 328);
    v21 = *(v0 + 296);
    v22 = *(v0 + 272);
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_100151980()
{
  sub_1001534BC(v0[48]);
  v1 = v0[54];
  v2 = v0[48];
  v3 = v0[46];
  v5 = v0[42];
  v4 = v0[43];
  v7 = v0[40];
  v6 = v0[41];
  v8 = v0[37];
  v9 = v0[34];

  v10 = v0[1];

  return v10();
}

uint64_t sub_100151A50()
{
  v2 = *(*v1 + 440);
  v5 = *v1;
  *(*v1 + 448) = v0;

  if (v0)
  {
    v3 = sub_100151E14;
  }

  else
  {
    v3 = sub_100151B64;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100151B64()
{
  v1 = *(v0 + 152);
  *(v0 + 16) = *(v0 + 136);
  *(v0 + 32) = v1;
  *(v0 + 48) = *(v0 + 168);
  sub_100046360(v0 + 16, v0 + 96, &qword_100202460, &unk_1001AD180);
  v2 = *(v0 + 384);
  if (*(v0 + 120))
  {
    v3 = *(v0 + 368);
    v5 = *(v0 + 336);
    v4 = *(v0 + 344);
    v7 = *(v0 + 320);
    v6 = *(v0 + 328);
    v8 = *(v0 + 296);
    v9 = *(v0 + 272);
    v10 = *(v0 + 216);
    sub_10000A0D4(v0 + 16, &qword_100202460, &unk_1001AD180);
    sub_1001534BC(v2);
    sub_1000BDD00((v0 + 96), v10);
  }

  else
  {
    v13 = *(v0 + 288);
    v12 = *(v0 + 296);
    v14 = *(v0 + 280);
    sub_10000A0D4(v0 + 96, &qword_100202460, &unk_1001AD180);
    (*(v13 + 104))(v12, enum case for DIPError.Code.idcsErrorInitializingPayloadProcessor(_:), v14);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_10000A0D4(v0 + 16, &qword_100202460, &unk_1001AD180);
    sub_1001534BC(v2);
    v15 = *(v0 + 384);
    v16 = *(v0 + 368);
    v18 = *(v0 + 336);
    v17 = *(v0 + 344);
    v20 = *(v0 + 320);
    v19 = *(v0 + 328);
    v21 = *(v0 + 296);
    v22 = *(v0 + 272);
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_100151E14()
{
  sub_1001534BC(v0[48]);
  v1 = v0[56];
  v2 = v0[48];
  v3 = v0[46];
  v5 = v0[42];
  v4 = v0[43];
  v7 = v0[40];
  v6 = v0[41];
  v8 = v0[37];
  v9 = v0[34];

  v10 = v0[1];

  return v10();
}

uint64_t sub_100151EE4()
{
  v2 = *(*v1 + 456);
  v5 = *v1;
  *(*v1 + 464) = v0;

  if (v0)
  {
    v3 = sub_1001522A8;
  }

  else
  {
    v3 = sub_100151FF8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100151FF8()
{
  v1 = *(v0 + 72);
  *(v0 + 16) = *(v0 + 56);
  *(v0 + 32) = v1;
  *(v0 + 48) = *(v0 + 88);
  sub_100046360(v0 + 16, v0 + 96, &qword_100202460, &unk_1001AD180);
  v2 = *(v0 + 384);
  if (*(v0 + 120))
  {
    v3 = *(v0 + 368);
    v5 = *(v0 + 336);
    v4 = *(v0 + 344);
    v7 = *(v0 + 320);
    v6 = *(v0 + 328);
    v8 = *(v0 + 296);
    v9 = *(v0 + 272);
    v10 = *(v0 + 216);
    sub_10000A0D4(v0 + 16, &qword_100202460, &unk_1001AD180);
    sub_1001534BC(v2);
    sub_1000BDD00((v0 + 96), v10);
  }

  else
  {
    v13 = *(v0 + 288);
    v12 = *(v0 + 296);
    v14 = *(v0 + 280);
    sub_10000A0D4(v0 + 96, &qword_100202460, &unk_1001AD180);
    (*(v13 + 104))(v12, enum case for DIPError.Code.idcsErrorInitializingPayloadProcessor(_:), v14);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_10000A0D4(v0 + 16, &qword_100202460, &unk_1001AD180);
    sub_1001534BC(v2);
    v15 = *(v0 + 384);
    v16 = *(v0 + 368);
    v18 = *(v0 + 336);
    v17 = *(v0 + 344);
    v20 = *(v0 + 320);
    v19 = *(v0 + 328);
    v21 = *(v0 + 296);
    v22 = *(v0 + 272);
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1001522A8()
{
  sub_1001534BC(v0[48]);
  v1 = v0[58];
  v2 = v0[48];
  v3 = v0[46];
  v5 = v0[42];
  v4 = v0[43];
  v7 = v0[40];
  v6 = v0[41];
  v8 = v0[37];
  v9 = v0[34];

  v10 = v0[1];

  return v10();
}

void sub_100152378(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, uint64_t, uint64_t, uint64_t)@<X2>, _OWORD *a4@<X8>)
{
  v128 = a2;
  v129 = a3;
  v124 = a4;
  v5 = sub_100004E70(&qword_100200510, qword_1001AB070);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v119 = &v111 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v127 = &v111 - v10;
  __chkstk_darwin(v9);
  v120 = &v111 - v11;
  v123 = type metadata accessor for CredentialKeyType();
  v121 = *(v123 - 8);
  v12 = *(v121 + 64);
  v13 = __chkstk_darwin(v123);
  v126 = &v111 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v125 = &v111 - v16;
  __chkstk_darwin(v15);
  v18 = &v111 - v17;
  v19 = type metadata accessor for Logger();
  v122 = *(v19 - 8);
  v20 = *(v122 + 64);
  __chkstk_darwin(v19);
  v22 = &v111 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_100004E70(&qword_100202498, &unk_1001AD910);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v26 = &v111 - v25;
  v27 = type metadata accessor for DIPError.Code();
  v28 = *(v27 - 1);
  v29 = *(v28 + 64);
  __chkstk_darwin(v27);
  v31 = &v111 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = a1;
  v33 = v135;
  v34 = sub_10016A520(v128, v129);
  if (v33)
  {
    return;
  }

  v35 = v34;
  v128 = v28;
  v129 = v27;
  v115 = v22;
  v135 = v31;
  v116 = v32;
  v117 = v19;
  v36 = v125;
  v37 = v126;
  v38 = v127;
  v118 = v26;
  sub_10016AA60(v34);
  v39 = v35;
  v40 = sub_10005947C();
  if (v40 >> 62)
  {
    v109 = v40;
    v110 = _CocoaArrayWrapper.endIndex.getter();
    v40 = v109;
    v41 = v135;
    if (v110)
    {
      goto LABEL_4;
    }

LABEL_44:

    (*(v128 + 104))(v41, enum case for DIPError.Code.idcsMissingPayload(_:), v129);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    return;
  }

  v41 = v135;
  if (!*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_44;
  }

LABEL_4:
  if ((v40 & 0xC000000000000001) != 0)
  {
    v42 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_7:
    v43 = v42;

    sub_10005E914(&v130);
    v114 = 0;
    v113 = v43;
    v44 = type metadata accessor for KeyLookupInfo();
    v45 = *(v44 - 8);
    v46 = *(v45 + 56);
    v47 = (v45 + 56);
    v48 = v118;
    v46(v118, 1, 1, v44);
    if (*(&v132 + 1) != 2)
    {
      if (*(&v132 + 1) != 1)
      {
        if (*(&v132 + 1))
        {
          (*(v128 + 104))(v135, enum case for DIPError.Code.internalError(_:), v129);
          sub_10002688C(_swiftEmptyArrayStorage);
          type metadata accessor for DIPError();
          sub_100008E7C();
          swift_allocError();
          DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
          swift_willThrow();

          sub_1000BCE9C(&v130);
          sub_10000A0D4(v118, &qword_100202498, &unk_1001AD910);
          return;
        }

        v49 = v115;
        defaultLogger()();
        v50 = Logger.logObject.getter();
        v51 = static os_log_type_t.debug.getter();
        v52 = os_log_type_enabled(v50, v51);
        v53 = v113;
        if (v52)
        {
          v54 = swift_slowAlloc();
          *v54 = 0;
          _os_log_impl(&_mh_execute_header, v50, v51, "no key needed", v54, 2u);
        }

        (*(v122 + 8))(v49, v117);
        goto LABEL_39;
      }

      v135 = v47;
      sub_100009278((v116 + 32), *(v116 + 56));
      v55 = sub_100021FD0(v39, *(&v131 + 1), v132, v130);
      if (v55)
      {
        v56 = v55;
        v57 = [v55 identifier];
        if (v57)
        {
          v129 = v46;
          v58 = v57;
          v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v127 = v60;

          v61 = [v56 publicKeyIdentifier];
          if (v61)
          {
            v119 = v59;
            v128 = v44;
            v62 = v61;
            v122 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v64 = v63;

            v65 = v56;
            v66 = [v65 keyType];
            v67 = v36;
            v68 = v113;
            v112 = v39;
            v126 = v64;
            if (v66)
            {
              v69 = v36;
              v70 = v66;
              static String._unconditionallyBridgeFromObjectiveC(_:)();

              v71 = v120;
              CredentialKeyType.init(rawValue:)();
              v72 = v121;
              v73 = v123;
              if ((*(v121 + 48))(v71, 1, v123) != 1)
              {
                v74 = *(v72 + 32);
                v67 = v69;
                v74(v69, v71, v73);

                v68 = v113;
                goto LABEL_35;
              }

              sub_10000A0D4(v71, &qword_100200510, qword_1001AB070);
              v68 = v113;
              v67 = v69;
            }

            v72 = v121;
            v73 = v123;
            (*(v121 + 104))(v67, enum case for CredentialKeyType.invalid(_:), v123);

            v74 = *(v72 + 32);
LABEL_35:
            v91 = v18;
            v74(v18, v67, v73);
            v92 = [v65 keyBlob];
            if (v92)
            {
              v93 = v92;
              v94 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
              v95 = v91;
              v97 = v96;

              v48 = v118;
              sub_10000A0D4(v118, &qword_100202498, &unk_1001AD910);
              v98 = v128;
              v74(&v48[*(v128 + 24)], v95, v123);
              v99 = v127;
              *v48 = v119;
              *(v48 + 1) = v99;
              v100 = v126;
              *(v48 + 2) = v122;
              *(v48 + 3) = v100;
              v101 = &v48[*(v98 + 28)];
              *v101 = v94;
              v101[1] = v97;
              v129(v48, 0, 1, v98);
              goto LABEL_37;
            }

            sub_1000092BC(v122, v126);
            (*(v72 + 8))(v18, v73);
LABEL_39:
            v86 = v124;
            v48 = v118;
            goto LABEL_40;
          }
        }

        else
        {
        }
      }

      goto LABEL_39;
    }

    v129 = v46;
    v75 = v113;
    v76 = [v113 payloadProtectionKey];
    if (!v76 || (v135 = v47, v128 = v44, v77 = v76, v78 = [v76 identifier], v77, !v78))
    {

LABEL_37:
      v86 = v124;
LABEL_40:
      v102 = type metadata accessor for CredentialStorage.DBResult();
      sub_100153518(v48, v86 + *(v102 + 20));
      v103 = v133;
      v86[2] = v132;
      v86[3] = v103;
      v86[4] = v134;
      v104 = v131;
      *v86 = v130;
      v86[1] = v104;
      return;
    }

    v79 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v81 = v80;

    v82 = [v75 payloadProtectionKey];
    if (!v82)
    {

      (*(v121 + 56))(v38, 1, 1, v123);
      sub_10000A0D4(v38, &qword_100200510, qword_1001AB070);
      goto LABEL_39;
    }

    v83 = v82;
    v122 = v79;
    v125 = v81;
    v84 = v75;
    v85 = [v82 keyType];
    v87 = v123;
    v86 = v124;
    if (v85)
    {
      v88 = v85;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v89 = v119;
      v87 = v123;
      CredentialKeyType.init(rawValue:)();
      v90 = v121;
      if ((*(v121 + 48))(v89, 1, v87) != 1)
      {
        (*(v90 + 32))(v38, v89, v87);
        v86 = v124;
        goto LABEL_42;
      }

      sub_10000A0D4(v89, &qword_100200510, qword_1001AB070);
      v86 = v124;
    }

    v90 = v121;
    (*(v121 + 104))(v38, enum case for CredentialKeyType.invalid(_:), v87);
LABEL_42:

    v105 = v118;
    sub_10000A0D4(v118, &qword_100202498, &unk_1001AD910);
    (*(v90 + 56))(v38, 0, 1, v87);
    v106 = *(v90 + 32);
    v106(v37, v38, v87);
    v107 = v128;
    v106(v105 + *(v128 + 24), v37, v87);
    v48 = v105;
    v108 = v125;
    *v105 = v122;
    *(v105 + 8) = v108;
    *(v105 + 16) = xmmword_1001AB540;
    *(v105 + *(v107 + 28)) = xmmword_1001AB540;
    v129(v105, 0, 1, v107);
    goto LABEL_40;
  }

  if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v42 = *(v40 + 32);
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_1001530D0()
{
  v1 = v0[2];

  v2 = v0[3];

  sub_100005090(v0 + 4);
  sub_100005090(v0 + 9);
  v3 = v0[14];

  v4 = v0[15];

  return swift_deallocClassInstance();
}

uint64_t sub_100153154()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];
  if (v3 >> 60 != 15)
  {
    sub_1000092BC(v0[5], v3);
  }

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1001531AC(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1000105C8;

  return sub_100150858(a1, a2, v6, v7, v8, v9, v10);
}

uint64_t sub_100153284(uint64_t a1, uint64_t *a2, int *a3)
{
  v5 = *a2;
  v9 = (a3 + *a3);
  v6 = a3[1];
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1000105C8;

  return v9(a1, v5);
}

uint64_t sub_100153388(uint64_t a1, uint64_t *a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1000105C8;

  return sub_100153284(a1, a2, v7);
}

uint64_t type metadata accessor for CredentialStorage.DBResult()
{
  result = qword_100203C68;
  if (!qword_100203C68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001534BC(uint64_t a1)
{
  v2 = type metadata accessor for CredentialStorage.DBResult();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100153518(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004E70(&qword_100202498, &unk_1001AD910);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001535B8(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1000105C8;

  return sub_10014F9F0(a1, a2, v6, v7, v8);
}

uint64_t sub_10015367C(uint64_t a1, uint64_t *a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1000105C8;

  return sub_1000BACE0(a1, a2, v7);
}

void sub_100153744(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 40);
  sub_10015060C(*(v1 + 24), *(v1 + 32), a1);
}

uint64_t sub_1001537E4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000105C8;

  return sub_10014F588(a1, v4, v5, v6);
}

uint64_t sub_100153898(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000105C8;

  return sub_100093F10(a1, v5);
}

uint64_t sub_100153950(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1000105C8;

  return sub_10001C3C4(a1, v1);
}

unint64_t sub_100153A1C()
{
  result = qword_100203BF8;
  if (!qword_100203BF8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100203BF8);
  }

  return result;
}

uint64_t sub_100153A68()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100153ABC(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1000104D4;

  return sub_100149FDC(a1, a2, v6, v7, v8);
}

uint64_t sub_100153B80(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000104D4;

  return sub_10014EBB8(a1, v4, v5, v6);
}

uint64_t sub_100153C34(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1000105C8;

  return sub_10001EAD0(a1, v1);
}

uint64_t sub_100153D04()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

double sub_100153D3C@<D0>(_OWORD *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v4(&v7);
  if (!v2)
  {
    result = *&v7;
    *a1 = v7;
  }

  return result;
}

uint64_t sub_100153D80()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100153DE8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100153E78(void (*a1)(void), void (*a2)(void), uint64_t a3)
{
  a1(*(v3 + 16));
  a2(*(v3 + 32));

  return _swift_deallocObject(v3, a3, 7);
}

uint64_t sub_100153EFC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 89, 7);
}

uint64_t sub_100153F74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100004E70(&qword_100202498, &unk_1001AD910);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100154044(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_100004E70(&qword_100202498, &unk_1001AD910);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1001540F4()
{
  sub_100154170();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_100154170()
{
  if (!qword_100202A40)
  {
    type metadata accessor for KeyLookupInfo();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100202A40);
    }
  }
}

uint64_t sub_100154238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[12] = a4;
  v5[13] = v4;
  v5[10] = a2;
  v5[11] = a3;
  v5[9] = a1;
  v6 = type metadata accessor for DIPError.Code();
  v5[14] = v6;
  v7 = *(v6 - 8);
  v5[15] = v7;
  v8 = *(v7 + 64) + 15;
  v5[16] = swift_task_alloc();
  v9 = type metadata accessor for COSEKey();
  v5[17] = v9;
  v10 = *(v9 - 8);
  v5[18] = v10;
  v11 = *(v10 + 64) + 15;
  v5[19] = swift_task_alloc();
  v12 = type metadata accessor for Logger();
  v5[20] = v12;
  v13 = *(v12 - 8);
  v5[21] = v13;
  v14 = *(v13 + 64) + 15;
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();

  return _swift_task_switch(sub_1001543DC, 0, 0);
}

uint64_t sub_1001543DC()
{
  v78 = v0;
  v1 = v0[25];
  v2 = v0[10];
  defaultLogger()();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[25];
  v7 = v0[20];
  v8 = v0[21];
  if (v5)
  {
    v10 = v0[9];
    v9 = v0[10];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v77[0] = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_10010150C(v10, v9, v77);
    _os_log_impl(&_mh_execute_header, v3, v4, "Checking if the AccountKaK exists for the given accountKeyIdentifier %s", v11, 0xCu);
    sub_100005090(v12);
  }

  v13 = *(v8 + 8);
  v13(v6, v7);
  v0[26] = v13;
  v14 = v0[9];
  v15 = v0[10];
  v0[27] = *(v0[13] + 112);
  v16 = sub_10002F8D8(v14, v15);
  v23 = v0[10];
  if (v17 >> 60 == 15)
  {
    v24 = v0[24];
    defaultLogger()();

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();

    v27 = os_log_type_enabled(v25, v26);
    v28 = v0[24];
    v30 = v0[20];
    v29 = v0[21];
    if (v27)
    {
      v69 = v0[10];
      v75 = v0[20];
      v31 = v0[9];
      v32 = swift_slowAlloc();
      v72 = v28;
      v33 = swift_slowAlloc();
      v77[0] = v33;
      *v32 = 136315138;
      *(v32 + 4) = sub_10010150C(v31, v69, v77);
      _os_log_impl(&_mh_execute_header, v25, v26, "AccountKaK doesn't exist for the given accountKeyIdentifier %s", v32, 0xCu);
      sub_100005090(v33);

      v34 = v72;
      v35 = v75;
    }

    else
    {

      v34 = v28;
      v35 = v30;
    }

    v13(v34, v35);
    v47 = sub_10002F210(v0[9], v0[10]);
    v48 = v0[13];
    v73 = v47;
    v76 = v49;
    v50 = sub_100156958(v47, v49);
  }

  else
  {
    v73 = v16;
    v76 = v17;
    v36 = v0[23];
    defaultLogger()();

    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.debug.getter();

    v39 = os_log_type_enabled(v37, v38);
    v40 = v0[23];
    v42 = v0[20];
    v41 = v0[21];
    if (v39)
    {
      v43 = v0[9];
      v68 = v0[10];
      v70 = v0[23];
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v77[0] = v45;
      *v44 = 136315138;
      *(v44 + 4) = sub_10010150C(v43, v68, v77);
      _os_log_impl(&_mh_execute_header, v37, v38, "AccountKaK exists for the given accountKeyIdentifier %s", v44, 0xCu);
      sub_100005090(v45);

      v46 = v70;
    }

    else
    {

      v46 = v40;
    }

    v13(v46, v42);
    v51 = v0[13];
    v50 = sub_100156958(v73, v76);
  }

  v0[29] = v73;
  v0[30] = v76;
  v0[28] = v50;
  v52 = v50;
  v53 = [v50 casdAttestation];
  if (v53)
  {
    v55 = v0[12];
    v54 = v0[13];
    v56 = v0[11];
    v57 = v53;
    v58 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v60 = v59;

    v0[31] = v58;
    v0[32] = v60;
    v61 = *(v54 + 120);
    v62 = swift_allocObject();
    v0[33] = v62;
    v62[2] = v54;
    v62[3] = v56;
    v62[4] = v55;
    v63 = *(v61 + 16);
    v64 = swift_allocObject();
    v0[34] = v64;
    *(v64 + 16) = &unk_1001AE9E0;
    *(v64 + 24) = v62;
    v65 = async function pointer to AsyncCoreDataContainer.read<A>(_:)[1];

    v66 = swift_task_alloc();
    v0[35] = v66;
    v67 = sub_100004E70(&qword_1002014B0, &unk_1001ACFE0);
    *v66 = v0;
    v66[1] = sub_100154BBC;

    return AsyncCoreDataContainer.read<A>(_:)(v0 + 7, &unk_1001AE9E8, v64, v67);
  }

  else
  {
    (*(v0[15] + 104))(v0[16], enum case for DIPError.Code.accountKeySigningKeyAttestationDoesntExist(_:), v0[14]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100157F14(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    sub_1000092BC(v73, v76);
    v18 = v0[24];
    v19 = v0[25];
    v20 = v0[23];
    v71 = v0[22];
    v74 = v0[19];
    (*(v0[15] + 104))(v0[16], enum case for DIPError.Code.internalError(_:), v0[14]);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100157F14(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v21 = v0[1];

    return v21();
  }
}

uint64_t sub_100154BBC()
{
  v2 = *v1;
  v3 = *(*v1 + 280);
  v8 = *v1;
  *(*v1 + 288) = v0;

  if (v0)
  {
    v4 = sub_10015515C;
  }

  else
  {
    v5 = *(v2 + 264);
    v6 = *(v2 + 272);

    *(v2 + 296) = *(v2 + 56);
    v4 = sub_100154CEC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100154CEC()
{
  v1 = v0[38];
  if (v1)
  {
    v2 = swift_task_alloc();
    v0[39] = v2;
    *v2 = v0;
    v2[1] = sub_100155020;
    v3 = v0[37];
    v4 = v0[27];

    return sub_100028458(v3, v1, 0, 0xF000000000000000);
  }

  else
  {
    v9 = v0[31];
    v10 = v0[32];
    v13 = v0[29];
    v15 = v0[30];
    v11 = v0[28];
    (*(v0[15] + 104))(v0[16], enum case for DIPError.Code.idcsMissingKeySigningKey(_:), v0[14]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100157F14(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_1000092BC(v9, v10);

    sub_1000092BC(v13, v15);
    v6 = v0[24];
    v7 = v0[25];
    v12 = v0[23];
    v14 = v0[22];
    v16 = v0[19];
    (*(v0[15] + 104))(v0[16], enum case for DIPError.Code.internalError(_:), v0[14]);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_100155020(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 312);
  v6 = *v2;
  *(v4 + 320) = a1;
  *(v4 + 328) = v1;

  v7 = *(v3 + 304);

  if (v1)
  {
    v8 = sub_10015593C;
  }

  else
  {
    v8 = sub_10015535C;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_10015515C()
{
  v1 = v0[33];
  v2 = v0[34];
  v4 = v0[31];
  v3 = v0[32];
  v6 = v0[29];
  v5 = v0[30];
  v7 = v0[28];

  sub_1000092BC(v4, v3);

  sub_1000092BC(v6, v5);
  v8 = v0[36];
  v9 = v0[24];
  v10 = v0[25];
  v11 = v0[23];
  v14 = v0[22];
  v15 = v0[19];
  (*(v0[15] + 104))(v0[16], enum case for DIPError.Code.internalError(_:), v0[14]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100157F14(&qword_100200200, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v12 = v0[1];

  return v12();
}

uint64_t sub_10015535C()
{
  v1 = v0[40];
  if (!v1)
  {
    v40 = v0[31];
    v42 = v0[32];
    v46 = v0[29];
    v50 = v0[30];
    v44 = v0[28];
    (*(v0[15] + 104))(v0[16], enum case for DIPError.Code.idcsMissingKeySigningKey(_:), v0[14]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100157F14(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_1000092BC(v40, v42);

    sub_1000092BC(v46, v50);
    goto LABEL_6;
  }

  v2 = v0[41];
  v3 = v0[28];
  v4 = v0[19];
  v5 = v0[17];
  v6 = type metadata accessor for CBORDecoder();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  CBORDecoder.init()();
  v9 = [v3 publicKeyCOSEKey];
  v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  sub_100157F14(&qword_100203CA0, &type metadata accessor for COSEKey);
  dispatch thunk of CBORDecoder.decode<A>(_:from:)();
  if (v2)
  {
    v14 = v0[31];
    v13 = v0[32];
    v15 = v0[29];
    v49 = v0[30];
    v16 = v0[28];
    sub_1000092BC(v10, v12);

    sub_1000092BC(v14, v13);

    sub_1000092BC(v15, v49);
LABEL_6:
    v20 = v0[24];
    v21 = v0[25];
    v22 = v0[23];
    v47 = v0[22];
    v51 = v0[19];
    (*(v0[15] + 104))(v0[16], enum case for DIPError.Code.internalError(_:), v0[14]);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100157F14(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v23 = v0[1];

    return v23();
  }

  v17 = v0[19];
  sub_1000092BC(v10, v12);

  v0[5] = &type metadata for KeySigningKeySignatureProvider;
  v0[6] = &off_1001F9920;
  v0[2] = v1;
  v18 = sub_100143CB8(v17);
  v25 = v0[29];
  v26 = v0[28];
  v41 = v0[26];
  v43 = v0[25];
  v45 = v0[24];
  v48 = v0[23];
  v27 = v0[21];
  v28 = v0[22];
  v29 = v0[19];
  v37 = v0[30];
  v38 = v0[20];
  v30 = v0[18];
  v39 = v0[17];
  v52 = v0[16];
  v31 = v18;
  v32 = v19;
  defaultLogger()();
  v33 = swift_task_alloc();
  *(v33 + 16) = v31;
  *(v33 + 24) = v32;
  Logger.sensitive(_:)();

  sub_1000092BC(v25, v37);

  v41(v28, v38);
  (*(v30 + 8))(v29, v39);
  sub_100157C88((v0 + 2));

  v34 = v0[1];
  v35 = v0[31];
  v36 = v0[32];

  return v34(v31, v32, v35, v36);
}

uint64_t sub_10015593C()
{
  v1 = v0[29];
  v2 = v0[30];
  v3 = v0[28];
  sub_1000092BC(v0[31], v0[32]);

  sub_1000092BC(v1, v2);
  v4 = v0[41];
  v5 = v0[24];
  v6 = v0[25];
  v7 = v0[23];
  v10 = v0[22];
  v11 = v0[19];
  (*(v0[15] + 104))(v0[16], enum case for DIPError.Code.internalError(_:), v0[14]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100157F14(&qword_100200200, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v8 = v0[1];

  return v8();
}

uint64_t sub_100155B24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[12] = a4;
  v5[13] = v4;
  v5[10] = a2;
  v5[11] = a3;
  v5[9] = a1;
  v6 = type metadata accessor for DIPError.Code();
  v5[14] = v6;
  v7 = *(v6 - 8);
  v5[15] = v7;
  v8 = *(v7 + 64) + 15;
  v5[16] = swift_task_alloc();
  v9 = *(*(sub_100004E70(&qword_100201070, &unk_1001AD2D0) - 8) + 64) + 15;
  v5[17] = swift_task_alloc();
  v10 = type metadata accessor for COSEKey();
  v5[18] = v10;
  v11 = *(v10 - 8);
  v5[19] = v11;
  v12 = *(v11 + 64) + 15;
  v5[20] = swift_task_alloc();

  return _swift_task_switch(sub_100155C80, 0, 0);
}

uint64_t sub_100155C80()
{
  v1 = v0[13];
  v2 = v0[9];
  v3 = v0[10];
  v4 = *(v1 + 120);
  v5 = swift_allocObject();
  v0[21] = v5;
  v5[2] = v1;
  v5[3] = v2;
  v5[4] = v3;
  v6 = *(v4 + 16);
  v7 = swift_allocObject();
  v0[22] = v7;
  *(v7 + 16) = &unk_1001AE9B8;
  *(v7 + 24) = v5;
  v8 = async function pointer to AsyncCoreDataContainer.read<A>(_:)[1];

  v9 = swift_task_alloc();
  v0[23] = v9;
  v10 = sub_100004E70(&qword_1002014B0, &unk_1001ACFE0);
  *v9 = v0;
  v9[1] = sub_100155DD8;

  return AsyncCoreDataContainer.read<A>(_:)(v0 + 7, &unk_1001AE9C8, v7, v10);
}

uint64_t sub_100155DD8()
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v8 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v4 = sub_10015624C;
  }

  else
  {
    v5 = *(v2 + 168);
    v6 = *(v2 + 176);

    *(v2 + 200) = *(v2 + 56);
    v4 = sub_100155F04;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100155F04()
{
  v1 = v0[26];
  if (v1)
  {
    v0[27] = *(v0[13] + 112);
    v2 = swift_task_alloc();
    v0[28] = v2;
    *v2 = v0;
    v2[1] = sub_100156130;
    v3 = v0[25];

    return sub_100028458(v3, v1, 0, 0xF000000000000000);
  }

  else
  {
    (*(v0[15] + 104))(v0[16], enum case for DIPError.Code.idcsMissingKeySigningKey(_:), v0[14]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100157F14(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v5 = v0[20];
    v6 = v0[16];
    v7 = v0[17];

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_100156130(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 224);
  v8 = *v2;
  v3[29] = a1;
  v3[30] = v1;

  if (v1)
  {
    v5 = sub_1001568D0;
  }

  else
  {
    v6 = v3[26];

    v5 = sub_1001562DC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10015624C()
{
  v1 = v0[21];
  v2 = v0[22];

  v3 = v0[24];
  v4 = v0[20];
  v6 = v0[16];
  v5 = v0[17];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1001562DC()
{
  if (!v0[29])
  {
    (*(v0[15] + 104))(v0[16], enum case for DIPError.Code.idcsMissingKeySigningKey(_:), v0[14]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100157F14(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
LABEL_8:
    v14 = v0[20];
    v15 = v0[16];
    v16 = v0[17];

    v17 = v0[1];

    return v17();
  }

  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[17];
  v4 = v0[29];

  sub_100024590(v3);

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v5 = v0[16];
    v6 = v0[14];
    v7 = v0[15];
    sub_100026564(v0[17]);
    (*(v7 + 104))(v5, enum case for DIPError.Code.coseInvalidPublicKey(_:), v6);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100157F14(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
LABEL_7:

    goto LABEL_8;
  }

  v8 = v0[30];
  v9 = v0[27];
  v11 = v0[11];
  v10 = v0[12];
  (*(v0[19] + 32))(v0[20], v0[17], v0[18]);
  v12 = sub_10002F8D8(v11, v10);
  if (v8)
  {
    (*(v0[19] + 8))(v0[20], v0[18]);
    goto LABEL_7;
  }

  if (v13 >> 60 == 15)
  {
    v19 = v0[19];
    v39 = v0[18];
    v40 = v0[20];
    v21 = v0[15];
    v20 = v0[16];
    v22 = v0[14];
    v24 = v0[11];
    v23 = v0[12];
    _StringGuts.grow(_:)(72);
    v25._countAndFlagsBits = 0xD000000000000046;
    v25._object = 0x80000001001BC3B0;
    String.append(_:)(v25);
    v26._countAndFlagsBits = v24;
    v26._object = v23;
    String.append(_:)(v26);
    (*(v21 + 104))(v20, enum case for DIPError.Code.accountKeySigningKeyDoesntExist(_:), v22);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100157F14(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    (*(v19 + 8))(v40, v39);
    goto LABEL_8;
  }

  v27 = v0[27];
  v28 = v0[20];
  v0[5] = &type metadata for AccountKeySigningKeySignatureProvider;
  v0[6] = &off_1001F7D80;
  v0[2] = v27;
  v0[3] = v12;
  v0[4] = v13;

  v29 = sub_100144150(v28);
  v31 = v0[19];
  v30 = v0[20];
  v32 = v0[18];
  v34 = v0[16];
  v33 = v0[17];
  v35 = v29;
  v37 = v36;

  sub_100157C88((v0 + 2));
  (*(v31 + 8))(v30, v32);

  v38 = v0[1];

  return v38(v35, v37);
}