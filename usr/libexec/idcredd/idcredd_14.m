uint64_t sub_10016E490()
{
  v1 = v0[22];
  v2 = v0[23];
  v4 = v0[20];
  v3 = v0[21];
  v5 = v0[19];

  (*(v4 + 8))(v3, v5);
  v6 = v0[25];
  v7 = v0[21];
  v8 = v0[18];
  (*(v0[14] + 104))(v0[15], enum case for DIPError.Code.internalError(_:), v0[13]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100170960(&qword_100200200, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v9 = v0[1];

  return v9();
}

uint64_t sub_10016E664(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  v4 = type metadata accessor for DIPError.Code();
  v3[9] = v4;
  v5 = *(v4 - 8);
  v3[10] = v5;
  v6 = *(v5 + 64) + 15;
  v3[11] = swift_task_alloc();

  return _swift_task_switch(sub_10016E728, 0, 0);
}

uint64_t sub_10016E728()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v4 = *(v1 + 120);
  v5 = swift_allocObject();
  v0[12] = v5;
  v5[2] = v1;
  v5[3] = v3;
  v5[4] = v2;
  v6 = *(v4 + 16);
  v7 = swift_allocObject();
  v0[13] = v7;
  *(v7 + 16) = sub_100170BE4;
  *(v7 + 24) = v5;
  v8 = async function pointer to AsyncCoreDataContainer.performRead<A>(_:)[1];

  v9 = swift_task_alloc();
  v0[14] = v9;
  v10 = sub_100004E70(&qword_100203CE0, &qword_1001AEAA0);
  *v9 = v0;
  v9[1] = sub_10016E880;

  return AsyncCoreDataContainer.performRead<A>(_:)(v0 + 2, sub_10001AAC8, v7, v10);
}

uint64_t sub_10016E880()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v8 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = sub_10016EBF0;
  }

  else
  {
    v6 = *(v2 + 96);
    v5 = *(v2 + 104);

    v4 = sub_10016E9A4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10016E9A4()
{
  v2 = v0[2];
  v1 = v0[3];
  v0[16] = v2;
  v0[17] = v1;
  v3 = v0[4];
  v4 = v0[5];
  v0[18] = v3;
  v0[19] = v4;
  if (v1)
  {
    v5 = *(v0[8] + 112);
    sub_10016A1AC(v2, v1, v3, v4);
    sub_100009708(v3, v4);
    v6 = swift_task_alloc();
    v0[20] = v6;
    *v6 = v0;
    v6[1] = sub_10016EAD4;

    return sub_100028458(v2, v1, v3, v4);
  }

  else
  {
    v8 = v0[11];

    v9 = v0[1];

    return v9(0);
  }
}

uint64_t sub_10016EAD4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 160);
  v7 = *v2;
  v3[21] = a1;
  v3[22] = v1;

  if (v1)
  {
    v5 = sub_10016F12C;
  }

  else
  {
    sub_1000092BC(v3[18], v3[19]);
    v5 = sub_10016ED84;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10016EBF0()
{
  v1 = v0[12];
  v2 = v0[13];

  v3 = v0[15];
  (*(v0[10] + 104))(v0[11], enum case for DIPError.Code.internalError(_:), v0[9]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100170960(&qword_100200200, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t sub_10016ED84()
{
  v2 = v0[18];
  v1 = v0[19];
  v4 = v0[16];
  v3 = v0[17];
  if (v0[21])
  {
    sub_10016A118(v0[16], v0[17], v0[18], v0[19]);
    sub_10016A118(v4, v3, v2, v1);
    v5 = v0[21];
    v6 = v0[11];

    v7 = v0[1];

    return v7(v5);
  }

  else
  {
    v10 = v0[10];
    v9 = v0[11];
    v19 = v0[9];
    v12 = v0[6];
    v11 = v0[7];
    _StringGuts.grow(_:)(79);
    v13._countAndFlagsBits = 0x69746E6564657263;
    v13._object = 0xEB00000000206C61;
    String.append(_:)(v13);
    v14._countAndFlagsBits = v12;
    v14._object = v11;
    String.append(_:)(v14);
    v15._countAndFlagsBits = 0xD00000000000001DLL;
    v15._object = 0x80000001001BCAD0;
    String.append(_:)(v15);

    v16._countAndFlagsBits = v4;
    v16._object = v3;
    String.append(_:)(v16);

    v17._countAndFlagsBits = 0xD000000000000023;
    v17._object = 0x80000001001BCAF0;
    String.append(_:)(v17);
    (*(v10 + 104))(v9, enum case for DIPError.Code.idcsMissingKeySigningKey(_:), v19);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100170960(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_10016A118(v4, v3, v2, v1);
    sub_10016A118(v4, v3, v2, v1);
    (*(v0[10] + 104))(v0[11], enum case for DIPError.Code.internalError(_:), v0[9]);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v18 = v0[1];

    return v18();
  }
}

uint64_t sub_10016F12C()
{
  v1 = v0[18];
  v2 = v0[19];
  v4 = v0[16];
  v3 = v0[17];
  sub_1000092BC(v1, v2);
  sub_10016A118(v4, v3, v1, v2);
  sub_10016A118(v4, v3, v1, v2);
  v5 = v0[22];
  (*(v0[10] + 104))(v0[11], enum case for DIPError.Code.internalError(_:), v0[9]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100170960(&qword_100200200, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v6 = v0[1];

  return v6();
}

uint64_t sub_10016F2EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for DIPError.Code();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();

  return _swift_task_switch(sub_10016F3B0, 0, 0);
}

uint64_t sub_10016F3B0()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  v5 = *(v1 + 120);
  v6 = swift_allocObject();
  v0[9] = v6;
  v6[2] = v1;
  v6[3] = v3;
  v6[4] = v2;
  v6[5] = v4;
  v7 = *(v5 + 16);
  v8 = swift_allocObject();
  v0[10] = v8;
  *(v8 + 16) = sub_100170B7C;
  *(v8 + 24) = v6;
  v9 = async function pointer to AsyncCoreDataContainer.performWrite<A>(_:)[1];

  v10 = swift_task_alloc();
  v0[11] = v10;
  *v10 = v0;
  v10[1] = sub_10016F508;

  return AsyncCoreDataContainer.performWrite<A>(_:)(v0 + 13, sub_100170B9C, v8, &type metadata for Bool);
}

uint64_t sub_10016F508()
{
  v2 = *(*v1 + 88);
  v3 = *v1;
  *(v3 + 96) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10016F670, 0, 0);
  }

  else
  {
    v4 = *(v3 + 72);
    v5 = *(v3 + 80);
    v6 = *(v3 + 64);

    v7 = *(v3 + 104);

    v8 = *(v3 + 8);

    return v8(v7);
  }
}

uint64_t sub_10016F670()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[10];
  v5 = v0[7];
  v4 = v0[8];
  v6 = v0[6];

  (*(v5 + 104))(v4, enum case for DIPError.Code.internalError(_:), v6);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100170960(&qword_100200200, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v7 = v0[1];

  return v7(0);
}

void sub_10016F808(uint64_t a1@<X2>, void *a2@<X3>, uint64_t *a3@<X8>)
{
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10016A520(a1, a2);
  if (v3)
  {
    return;
  }

  v37 = v12;
  sub_100059DE4();
  if (v13 >> 62)
  {
    v27 = v13;
    v28 = _CocoaArrayWrapper.endIndex.getter();
    v13 = v27;
    v36 = 0;
    if (v28)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v36 = 0;
    if (v14)
    {
LABEL_4:
      if ((v13 & 0xC000000000000001) != 0)
      {
        v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v15 = *(v13 + 32);
      }

      v16 = v15;

      v17 = [v16 identifier];
      if (v17)
      {
        v18 = a3;
        v19 = v17;
        v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v21 = v20;

        v22 = [v16 publicKeyIdentifier];
        if (v22)
        {
          v23 = v22;
          v24 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v26 = v25;

          *v18 = v35;
          v18[1] = v21;
          v18[2] = v24;
          v18[3] = v26;
          return;
        }

        a3 = v18;
      }

      else
      {
      }

      goto LABEL_14;
    }
  }

LABEL_14:
  defaultLogger()();

  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v35 = a3;
    v33 = v32;
    v38 = v32;
    *v31 = 136315138;
    *(v31 + 4) = sub_10010150C(a1, a2, &v38);
    _os_log_impl(&_mh_execute_header, v29, v30, "Credential %s does not have a key signing key", v31, 0xCu);
    sub_100005090(v33);
    a3 = v35;
  }

  (*(v8 + 8))(v11, v7);
  *a3 = 0u;
  *(a3 + 1) = 0u;
}

void sub_10016FB48(uint64_t a1@<X0>, uint64_t a2@<X2>, void *a3@<X3>, NSObject *a4@<X4>, _BYTE *a5@<X8>)
{
  v38 = a4;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10016A520(a2, a3);
  if (!v5)
  {
    v16 = v15;
    v35 = a1;
    v36 = v14;
    v17 = v38;
    v37 = v11;
    sub_100059DE4();
    v34 = 0;
    if (v18 >> 62)
    {
      v33 = v18;
      v19 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v20 = v17;
    v21 = a2;

    if (v19)
    {
      v22 = v10;
      v23 = a3;
      v24 = v36;
      defaultLogger()();

      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.debug.getter();

      v38 = v25;
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v39 = v28;
        *v27 = 136315138;
        *(v27 + 4) = sub_10010150C(v21, v23, &v39);
        v29 = v26;
        v30 = v38;
        _os_log_impl(&_mh_execute_header, v38, v29, "Credential %s already has a ksk when trying to add a new one", v27, 0xCu);
        sub_100005090(v28);
      }

      else
      {
      }

      (*(v37 + 8))(v24, v22);
      *a5 = 0;
    }

    else
    {
      type metadata accessor for StoredCryptoKey();
      v31 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext:*(v35 + 16)];
      v32 = v34;
      sub_10005F0F8(v20);
      if (v32)
      {
      }

      else
      {
        [v16 addCryptoKeysObject:v31];
        sub_100050240();

        *a5 = 1;
      }
    }
  }
}

uint64_t sub_10016FE58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  v6 = type metadata accessor for DIPError.Code();
  v5[9] = v6;
  v7 = *(v6 - 8);
  v5[10] = v7;
  v8 = *(v7 + 64) + 15;
  v5[11] = swift_task_alloc();
  v9 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v5[12] = v9;
  v10 = *(v9 - 8);
  v5[13] = v10;
  v11 = *(v10 + 64) + 15;
  v5[14] = swift_task_alloc();

  return _swift_task_switch(sub_10016FF7C, 0, 0);
}

uint64_t sub_10016FF7C()
{
  v1 = v0[13];
  v16 = v0[14];
  v2 = v0[12];
  v3 = v0[7];
  v4 = v0[8];
  v6 = v0[5];
  v5 = v0[6];
  v7 = swift_allocObject();
  v0[15] = v7;
  v7[2] = v5;
  v7[3] = v3;
  v7[4] = v4;
  v7[5] = v6;
  v17 = *(v6 + 16);
  v8 = swift_allocObject();
  v0[16] = v8;
  *(v8 + 16) = sub_100157CE0;
  *(v8 + 24) = v7;
  v9 = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
  v10 = *(v1 + 104);

  v10(v16, v9, v2);
  v11 = async function pointer to NSManagedObjectContext.perform<A>(schedule:_:)[1];

  v12 = swift_task_alloc();
  v0[17] = v12;
  v13 = sub_100004E70(&qword_1002014B0, &unk_1001ACFE0);
  *v12 = v0;
  v12[1] = sub_100170128;
  v14 = v0[14];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 2, v14, sub_100153D3C, v8, v13);
}

uint64_t sub_100170128()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v12 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v4 = *(v2 + 128);
    (*(*(v2 + 104) + 8))(*(v2 + 112), *(v2 + 96));

    v5 = sub_1001705E0;
  }

  else
  {
    v7 = *(v2 + 120);
    v6 = *(v2 + 128);
    v9 = *(v2 + 104);
    v8 = *(v2 + 112);
    v10 = *(v2 + 96);

    (*(v9 + 8))(v8, v10);
    *(v2 + 152) = *(v2 + 16);
    v5 = sub_1001702A8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1001702A8()
{
  v1 = v0[20];
  if (v1)
  {
    v2 = *(v0[6] + 112);
    v3 = swift_task_alloc();
    v0[21] = v3;
    *v3 = v0;
    v3[1] = sub_1001704C4;
    v4 = v0[19];

    return sub_100028458(v4, v1, 0, 0xF000000000000000);
  }

  else
  {
    (*(v0[10] + 104))(v0[11], enum case for DIPError.Code.idcsMissingKeySigningKey(_:), v0[9]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100170960(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v6 = v0[14];
    v7 = v0[11];

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_1001704C4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 168);
  v8 = *v2;
  v3[22] = a1;
  v3[23] = v1;

  if (v1)
  {
    v5 = sub_100170814;
  }

  else
  {
    v6 = v3[20];

    v5 = sub_100170658;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1001705E0()
{
  v1 = v0[15];

  v2 = v0[18];
  v3 = v0[14];
  v4 = v0[11];

  v5 = v0[1];

  return v5();
}

uint64_t sub_100170658()
{
  v1 = *(v0 + 176);
  if (v1)
  {
    v2 = *(v0 + 112);
    v3 = *(v0 + 88);
    **(v0 + 32) = v1;
  }

  else
  {
    (*(*(v0 + 80) + 104))(*(v0 + 88), enum case for DIPError.Code.idcsMissingKeySigningKey(_:), *(v0 + 72));
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100170960(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v5 = *(v0 + 112);
    v6 = *(v0 + 88);
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100170814()
{
  v1 = v0[20];

  v2 = v0[23];
  v3 = v0[14];
  v4 = v0[11];

  v5 = v0[1];

  return v5();
}

unint64_t sub_10017088C()
{
  _StringGuts.grow(_:)(28);

  v0 = Data.base16EncodedString()();
  String.append(_:)(v0);

  return 0xD00000000000001ALL;
}

double sub_10017091C@<D0>(void (*a1)(__int128 *__return_ptr)@<X0>, _OWORD *a2@<X8>)
{
  a1(&v5);
  if (!v2)
  {
    result = *&v5;
    *a2 = v5;
  }

  return result;
}

uint64_t sub_100170960(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001709AC(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1000104D4;

  return sub_10016FE58(a1, a2, v6, v7, v8);
}

uint64_t sub_100170A70(uint64_t a1, uint64_t *a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1000105C8;

  return sub_10013E6D0(a1, a2, v7);
}

unint64_t sub_100170B38()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_10017088C();
}

uint64_t sub_100170B44()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

void *sub_100170B9C@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  result = v5(&v8, *a1);
  if (!v3)
  {
    *a2 = v8;
  }

  return result;
}

uint64_t sub_100170C04(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_100170C4C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_100170CB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v6 = type metadata accessor for DIPError.Code();
  v5[8] = v6;
  v7 = *(v6 - 8);
  v5[9] = v7;
  v8 = *(v7 + 64) + 15;
  v5[10] = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  v5[11] = v9;
  v10 = *(v9 - 8);
  v5[12] = v10;
  v11 = *(v10 + 64) + 15;
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();

  return _swift_task_switch(sub_100170E1C, 0, 0);
}

uint64_t sub_100170E1C()
{
  v51 = v0;
  v1 = v0[7];
  v2 = v0[4];
  v49 = v0[3];
  v50 = v2;

  v3._countAndFlagsBits = 0x746E65646572632DLL;
  v3._object = 0xEC000000736C6169;
  String.append(_:)(v3);
  v4 = v49;
  v5 = v50;
  v0[20] = v49;
  v0[21] = v5;
  v6 = sub_100174404(v4, v5);
  v7 = v0[19];
  v8 = v0[6];
  defaultLogger()();

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[19];
  v14 = v0[11];
  v13 = v0[12];
  if (v11)
  {
    v48 = v0[11];
    v16 = v0[5];
    v15 = v0[6];
    v17 = swift_slowAlloc();
    v47 = v12;
    v18 = swift_slowAlloc();
    v49 = v18;
    *v17 = 136446210;
    *(v17 + 4) = sub_10010150C(v16, v15, &v49);
    _os_log_impl(&_mh_execute_header, v9, v10, "Deleting credential with ID: %{public}s from credential identifier list", v17, 0xCu);
    sub_100005090(v18);

    v19 = *(v13 + 8);
    v19(v47, v48);
  }

  else
  {

    v19 = *(v13 + 8);
    v19(v12, v14);
  }

  v0[22] = v19;
  result = sub_1001752E8(v6, v0[5], v0[6]);
  if (v21)
  {
    v22 = *(v6 + 2);
    v23 = v22;
    goto LABEL_27;
  }

  v23 = result;
  v24 = result + 1;
  if (__OFADD__(result, 1))
  {
LABEL_43:
    __break(1u);
    return result;
  }

  v25 = v0[6];
  v26 = *(v6 + 2);

  if (v24 != v26)
  {
    v27 = 16 * v23;
    while (v24 < v26)
    {
      v30 = *&v6[v27 + 48];
      v31 = *&v6[v27 + 56];
      if (v30 != v0[5] || v31 != v0[6])
      {
        v33 = *&v6[v27 + 48];
        v34 = *&v6[v27 + 56];
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        if ((result & 1) == 0)
        {
          if (v24 != v23)
          {
            if (v23 >= v26)
            {
              goto LABEL_41;
            }

            v35 = &v6[16 * v23 + 32];
            v37 = *v35;
            v36 = *(v35 + 1);

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v6 = sub_1001751C8(v6);
            }

            v38 = &v6[16 * v23];
            v39 = *(v38 + 5);
            *(v38 + 4) = v30;
            *(v38 + 5) = v31;

            if (v24 >= *(v6 + 2))
            {
              goto LABEL_42;
            }

            v28 = &v6[v27];
            v29 = *&v6[v27 + 56];
            *(v28 + 6) = v37;
            *(v28 + 7) = v36;
          }

          ++v23;
        }
      }

      ++v24;
      v26 = *(v6 + 2);
      v27 += 16;
      if (v24 == v26)
      {
        v40 = v0[6];
        goto LABEL_25;
      }
    }

    __break(1u);
    goto LABEL_38;
  }

LABEL_25:

  v22 = *(v6 + 2);
  if (v22 < v23)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v23 < 0)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

LABEL_27:
  if (__OFADD__(v22, v23 - v22))
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v0[2] = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v23 > *(v6 + 3) >> 1)
  {
    if (v22 <= v23)
    {
      v42 = v23;
    }

    else
    {
      v42 = v22;
    }

    v6 = sub_100100418(isUniquelyReferenced_nonNull_native, v42, 1, v6);
    v0[2] = v6;
  }

  v0[23] = v6;
  sub_10010DC58(v23, v22, 0);
  v0[2] = v6;
  v43 = swift_task_alloc();
  v0[24] = v43;
  *v43 = v0;
  v43[1] = sub_100171278;
  v44 = v0[6];
  v45 = v0[7];
  v46 = v0[5];

  return sub_100173A0C(v46, v44, 0);
}

uint64_t sub_100171278()
{
  v2 = *(*v1 + 192);
  v5 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v3 = sub_100171F0C;
  }

  else
  {
    v3 = sub_10017138C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10017138C()
{
  v61 = v0;
  v1 = v0[25];
  if (*(v0[23] + 16))
  {
    v2 = v0[16];
    defaultLogger()();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = v0[23];
      v57 = v0[16];
      v58 = v0[22];
      v6 = v0[12];
      v56 = v0[11];
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v59 = v8;
      *v7 = 136446210;

      v9 = Array.description.getter();
      v11 = v10;

      v12 = sub_10010150C(v9, v11, &v59);

      *(v7 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v3, v4, "Token Credential list not empty, updating list with new list: %{public}s", v7, 0xCu);
      sub_100005090(v8);

      v58(v57, v56);
    }

    else
    {
      v31 = v0[22];
      v32 = v0[16];
      v33 = v0[11];
      v34 = v0[12];

      v31(v32, v33);
    }

    v35 = v0[23];
    v37 = v0[20];
    v36 = v0[21];
    v38 = v0[7];

    sub_100174B44(v37, v36);

    swift_bridgeObjectRelease_n();
    v40 = v0[18];
    v39 = v0[19];
    v42 = v0[16];
    v41 = v0[17];
    v44 = v0[14];
    v43 = v0[15];
    v45 = v0[13];
    v46 = v0[10];

    v47 = v0[1];

    return v47();
  }

  else
  {
    v13 = v0[18];
    defaultLogger()();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Token credential list is empty attempting to clean token", v16, 2u);
    }

    v17 = v0[22];
    v18 = v0[18];
    v19 = v0[11];
    v20 = v0[12];
    v21 = v0[7];
    v23 = v0[3];
    v22 = v0[4];

    v17(v18, v19);
    v24 = *sub_100009278((*(v21 + 112) + 48), *(*(v21 + 112) + 72));
    sub_100049CB0(v23, v22);
    v0[26] = v1;
    if (v1)
    {
      v25 = v0[17];
      defaultLogger()();
      swift_errorRetain();
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        *v28 = 138412290;
        swift_errorRetain();
        v30 = _swift_stdlib_bridgeErrorToNSError();
        *(v28 + 4) = v30;
        *v29 = v30;
        _os_log_impl(&_mh_execute_header, v26, v27, "Failed to delete PII token: %@", v28, 0xCu);
        sub_100005CA8(v29);
      }

      else
      {
      }

      v49 = v0[12] + 8;
      (v0[22])(v0[17], v0[11]);
    }

    v50 = v0[4];
    v59 = v0[3];
    v60 = v50;

    v51._countAndFlagsBits = 0x7361682D6969702DLL;
    v51._object = 0xE900000000000068;
    String.append(_:)(v51);
    v53 = v59;
    v52 = v60;
    v0[27] = v60;
    v54 = swift_task_alloc();
    v0[28] = v54;
    *v54 = v0;
    v54[1] = sub_10017187C;
    v55 = v0[7];

    return sub_100173A0C(v53, v52, 1);
  }
}

uint64_t sub_10017187C()
{
  v2 = *(*v1 + 224);
  v5 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v3 = sub_100172508;
  }

  else
  {
    v3 = sub_100171990;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100171990()
{
  v1 = *(v0 + 216);

  v2 = *(v0 + 232);
  v3 = *(v0 + 56);
  sub_1001749AC(*(v0 + 160), *(v0 + 168));
  if (v2)
  {
    v4 = *(v0 + 168);
    v5 = *(v0 + 104);

    defaultLogger()();
    swift_errorRetain();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      swift_errorRetain();
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 4) = v10;
      *v9 = v10;
      _os_log_impl(&_mh_execute_header, v6, v7, "Failed to delete PII token credential list: %@", v8, 0xCu);
      sub_100005CA8(v9);
    }

    else
    {
    }

    v23 = *(v0 + 208);
    v24 = *(v0 + 96) + 8;
    (*(v0 + 176))(*(v0 + 104), *(v0 + 88));
    if (v23)
    {
      goto LABEL_10;
    }

    if (*(v0 + 200))
    {
LABEL_12:
      v26 = *(v0 + 184);
      (*(*(v0 + 72) + 104))(*(v0 + 80), enum case for DIPError.Code.failedToDeletePIIHashLocally(_:), *(v0 + 64));
      sub_10002688C(&_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100008E7C();
      swift_allocError();
      goto LABEL_13;
    }

    if (!*(v0 + 232))
    {
      v37 = *(v0 + 184);
      (*(*(v0 + 72) + 104))(*(v0 + 80), enum case for DIPError.Code.failedToDeleteTokenCredentialList(_:), *(v0 + 64));
      sub_10002688C(&_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100008E7C();
      swift_allocError();
      goto LABEL_13;
    }

LABEL_18:
    v36 = *(v0 + 184);
    (*(*(v0 + 72) + 104))(*(v0 + 80), enum case for DIPError.Code.failedToDeletePIIHashKeychain(_:), *(v0 + 64));
    sub_10002688C(&_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    goto LABEL_13;
  }

  v11 = *(v0 + 208);
  v12 = *(v0 + 168);

  if (!v11)
  {
    if (*(v0 + 200))
    {
      goto LABEL_12;
    }

    if (!*(v0 + 232))
    {
      v13 = *(v0 + 184);

      v15 = *(v0 + 144);
      v14 = *(v0 + 152);
      v17 = *(v0 + 128);
      v16 = *(v0 + 136);
      v19 = *(v0 + 112);
      v18 = *(v0 + 120);
      v20 = *(v0 + 104);
      v21 = *(v0 + 80);

      v22 = *(v0 + 8);
      goto LABEL_14;
    }

    goto LABEL_18;
  }

LABEL_10:
  v25 = *(v0 + 184);
  (*(*(v0 + 72) + 104))(*(v0 + 80), enum case for DIPError.Code.failedToDeletePIIToken(_:), *(v0 + 64));
  sub_10002688C(&_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100008E7C();
  swift_allocError();
LABEL_13:
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v28 = *(v0 + 144);
  v27 = *(v0 + 152);
  v30 = *(v0 + 128);
  v29 = *(v0 + 136);
  v32 = *(v0 + 112);
  v31 = *(v0 + 120);
  v33 = *(v0 + 104);
  v34 = *(v0 + 80);

  v22 = *(v0 + 8);
LABEL_14:

  return v22();
}

uint64_t sub_100171F0C()
{
  v64 = v0;
  v1 = *(v0 + 200);
  v2 = *(v0 + 120);
  defaultLogger()();
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 200);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to delete local PII hash: %@", v7, 0xCu);
    sub_100005CA8(v8);
  }

  else
  {
    v10 = *(v0 + 200);
  }

  v11 = *(v0 + 96) + 8;
  (*(v0 + 176))(*(v0 + 120), *(v0 + 88));
  if (*(*(v0 + 184) + 16))
  {
    v12 = *(v0 + 128);
    defaultLogger()();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = *(v0 + 184);
      v60 = *(v0 + 128);
      v61 = *(v0 + 176);
      v17 = *(v0 + 88);
      v16 = *(v0 + 96);
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v62 = v19;
      *v18 = 136446210;

      v20 = Array.description.getter();
      v22 = v21;

      v23 = sub_10010150C(v20, v22, &v62);

      *(v18 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v13, v14, "Token Credential list not empty, updating list with new list: %{public}s", v18, 0xCu);
      sub_100005090(v19);

      v61(v60, v17);
    }

    else
    {
      v36 = *(v0 + 176);
      v37 = *(v0 + 128);
      v38 = *(v0 + 88);
      v39 = *(v0 + 96);

      v36(v37, v38);
    }

    v40 = *(v0 + 184);
    v41 = *(v0 + 160);
    v42 = *(v0 + 168);
    v43 = *(v0 + 56);

    sub_100174B44(v41, v42);

    swift_bridgeObjectRelease_n();
    v45 = *(v0 + 144);
    v44 = *(v0 + 152);
    v47 = *(v0 + 128);
    v46 = *(v0 + 136);
    v49 = *(v0 + 112);
    v48 = *(v0 + 120);
    v50 = *(v0 + 104);
    v51 = *(v0 + 80);

    v52 = *(v0 + 8);

    return v52();
  }

  else
  {
    v24 = *(v0 + 144);
    defaultLogger()();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "Token credential list is empty attempting to clean token", v27, 2u);
    }

    v28 = *(v0 + 176);
    v29 = *(v0 + 144);
    v30 = *(v0 + 88);
    v31 = *(v0 + 96);
    v32 = *(v0 + 56);
    v34 = *(v0 + 24);
    v33 = *(v0 + 32);

    v28(v29, v30);
    v35 = *sub_100009278((*(v32 + 112) + 48), *(*(v32 + 112) + 72));
    sub_100049CB0(v34, v33);
    *(v0 + 208) = 0;
    v54 = *(v0 + 32);
    v62 = *(v0 + 24);
    v63 = v54;

    v55._countAndFlagsBits = 0x7361682D6969702DLL;
    v55._object = 0xE900000000000068;
    String.append(_:)(v55);
    v57 = v62;
    v56 = v63;
    *(v0 + 216) = v63;
    v58 = swift_task_alloc();
    *(v0 + 224) = v58;
    *v58 = v0;
    v58[1] = sub_10017187C;
    v59 = *(v0 + 56);

    return sub_100173A0C(v57, v56, 1);
  }
}

uint64_t sub_100172508()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 216);
  v3 = *(v0 + 112);

  defaultLogger()();
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 232);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to delete remote PII hash: %@", v8, 0xCu);
    sub_100005CA8(v9);
  }

  else
  {
    v11 = *(v0 + 232);
  }

  v12 = *(v0 + 96) + 8;
  (*(v0 + 176))(*(v0 + 112), *(v0 + 88));
  v13 = *(v0 + 56);
  sub_1001749AC(*(v0 + 160), *(v0 + 168));
  v14 = *(v0 + 208);
  v15 = *(v0 + 168);

  if (v14)
  {
    v26 = *(v0 + 184);
    (*(*(v0 + 72) + 104))(*(v0 + 80), enum case for DIPError.Code.failedToDeletePIIToken(_:), *(v0 + 64));
    sub_10002688C(&_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
  }

  else if (*(v0 + 200))
  {
    v27 = *(v0 + 184);
    (*(*(v0 + 72) + 104))(*(v0 + 80), enum case for DIPError.Code.failedToDeletePIIHashLocally(_:), *(v0 + 64));
    sub_10002688C(&_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
  }

  else
  {
    if (!*(v0 + 232))
    {
      v16 = *(v0 + 184);

      v18 = *(v0 + 144);
      v17 = *(v0 + 152);
      v20 = *(v0 + 128);
      v19 = *(v0 + 136);
      v22 = *(v0 + 112);
      v21 = *(v0 + 120);
      v23 = *(v0 + 104);
      v24 = *(v0 + 80);

      v25 = *(v0 + 8);
      goto LABEL_11;
    }

    v37 = *(v0 + 184);
    (*(*(v0 + 72) + 104))(*(v0 + 80), enum case for DIPError.Code.failedToDeletePIIHashKeychain(_:), *(v0 + 64));
    sub_10002688C(&_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
  }

  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v29 = *(v0 + 144);
  v28 = *(v0 + 152);
  v31 = *(v0 + 128);
  v30 = *(v0 + 136);
  v33 = *(v0 + 112);
  v32 = *(v0 + 120);
  v34 = *(v0 + 104);
  v35 = *(v0 + 80);

  v25 = *(v0 + 8);
LABEL_11:

  return v25();
}

uint64_t sub_100172B90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = type metadata accessor for DIPError.Code();
  v6[8] = v7;
  v8 = *(v7 - 8);
  v6[9] = v8;
  v9 = *(v8 + 64) + 15;
  v6[10] = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  v6[11] = v10;
  v11 = *(v10 - 8);
  v6[12] = v11;
  v12 = *(v11 + 64) + 15;
  v6[13] = swift_task_alloc();

  return _swift_task_switch(sub_100172CB4, 0, 0);
}

uint64_t sub_100172CB4()
{
  v1 = v0[13];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "CredentialStore storePIIHashInSyncableKeyStore", v4, 2u);
  }

  v6 = v0[12];
  v5 = v0[13];
  v7 = v0[11];
  v8 = v0[6];

  (*(v6 + 8))(v5, v7);
  if (v8 == 1)
  {
    v20 = *(v0[7] + 112);
    sub_100031CDC(v0[2], v0[3], v0[4], v0[5]);
  }

  else if (!v8)
  {
    v9 = v0[7];
    v11 = v0[4];
    v10 = v0[5];
    v13 = v0[2];
    v12 = v0[3];
    v14 = *(v9 + 120);
    v15 = swift_allocObject();
    v0[14] = v15;
    v15[2] = v9;
    v15[3] = v13;
    v15[4] = v12;
    v15[5] = v11;
    v15[6] = v10;

    sub_100009708(v11, v10);
    v16 = *(v14 + 16);
    v17 = swift_allocObject();
    v0[15] = v17;
    *(v17 + 16) = sub_1001752C4;
    *(v17 + 24) = v15;
    v18 = async function pointer to AsyncCoreDataContainer.performWrite<A>(_:)[1];

    v19 = swift_task_alloc();
    v0[16] = v19;
    *v19 = v0;
    v19[1] = sub_100172F50;

    return AsyncCoreDataContainer.performWrite<A>(_:)();
  }

  v21 = v0[13];
  v22 = v0[10];

  v23 = v0[1];

  return v23();
}

uint64_t sub_100172F50()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v8 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v4 = sub_1001730E4;
  }

  else
  {
    v6 = *(v2 + 112);
    v5 = *(v2 + 120);

    v4 = sub_100173074;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100173074()
{
  v1 = v0[13];
  v2 = v0[10];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1001730E4()
{
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[15];
  v5 = v0[9];
  v4 = v0[10];
  v6 = v0[8];

  (*(v5 + 104))(v4, enum case for DIPError.Code.internalError(_:), v6);
  swift_errorRetain();
  sub_10002688C(&_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100008E7C();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v7 = v0[13];
  v8 = v0[10];

  v9 = v0[1];

  return v9();
}

uint64_t sub_10017325C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
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

  return _swift_task_switch(sub_10017337C, 0, 0);
}

uint64_t sub_10017337C()
{
  v1 = v0[13];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "CredentialStore retrievePIIHashData", v4, 2u);
  }

  v6 = v0[12];
  v5 = v0[13];
  v7 = v0[11];
  v8 = v0[6];

  (*(v6 + 8))(v5, v7);
  if (v8 == 1)
  {
    v18 = *(v0[7] + 112);
    v19 = sub_100031EDC(v0[4], v0[5]);
    v20 = v0[13];
    v21 = v0[10];
    v22 = v19;
    v24 = v23;

    v25 = v0[1];

    return v25(v22, v24);
  }

  else if (v8)
  {
    (*(v0[9] + 104))(v0[10], enum case for DIPError.Code.failedToRetrieveHashUnknownKeystoreType(_:), v0[8]);
    sub_10002688C(&_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v26 = v0[13];
    v27 = v0[10];

    v28 = v0[1];

    return v28();
  }

  else
  {
    v9 = v0[7];
    v10 = v0[4];
    v11 = v0[5];
    v12 = *(v9 + 120);
    v13 = swift_allocObject();
    v0[14] = v13;
    v13[2] = v9;
    v13[3] = v10;
    v13[4] = v11;
    v14 = *(v12 + 16);
    v15 = swift_allocObject();
    v0[15] = v15;
    *(v15 + 16) = sub_1001751DC;
    *(v15 + 24) = v13;
    v16 = async function pointer to AsyncCoreDataContainer.performRead<A>(_:)[1];

    v17 = swift_task_alloc();
    v0[16] = v17;
    *v17 = v0;
    v17[1] = sub_100173720;

    return AsyncCoreDataContainer.performRead<A>(_:)(v0 + 2, sub_100175234, v15, &type metadata for String);
  }
}

uint64_t sub_100173720()
{
  v2 = *(*v1 + 128);
  v3 = *v1;
  v3[17] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100173894, 0, 0);
  }

  else
  {
    v4 = v3[14];
    v5 = v3[15];

    v6 = v3[2];
    v7 = v3[3];
    v8 = v3[13];
    v9 = v3[10];

    v10 = v3[1];

    return v10(v6, v7);
  }
}

uint64_t sub_100173894()
{
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[15];
  v5 = v0[9];
  v4 = v0[10];
  v6 = v0[8];

  (*(v5 + 104))(v4, enum case for DIPError.Code.internalError(_:), v6);
  swift_errorRetain();
  sub_10002688C(&_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100008E7C();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v7 = v0[13];
  v8 = v0[10];

  v9 = v0[1];

  return v9();
}

uint64_t sub_100173A0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for DIPError.Code();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v4[9] = v8;
  v9 = *(v8 - 8);
  v4[10] = v9;
  v10 = *(v9 + 64) + 15;
  v4[11] = swift_task_alloc();

  return _swift_task_switch(sub_100173B2C, 0, 0);
}

uint64_t sub_100173B2C()
{
  v1 = v0[11];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "CredentialStore deletePIIHashData", v4, 2u);
  }

  v6 = v0[10];
  v5 = v0[11];
  v7 = v0[9];
  v8 = v0[4];

  (*(v6 + 8))(v5, v7);
  if (v8 == 1)
  {
    v18 = *(v0[5] + 112);
    sub_100031D00(v0[2], v0[3]);
  }

  else if (!v8)
  {
    v9 = v0[5];
    v10 = v0[2];
    v11 = v0[3];
    v12 = *(v9 + 120);
    v13 = swift_allocObject();
    v0[12] = v13;
    v13[2] = v9;
    v13[3] = v10;
    v13[4] = v11;
    v14 = *(v12 + 16);
    v15 = swift_allocObject();
    v0[13] = v15;
    *(v15 + 16) = sub_1001751A8;
    *(v15 + 24) = v13;
    v16 = async function pointer to AsyncCoreDataContainer.performWrite<A>(_:)[1];

    v17 = swift_task_alloc();
    v0[14] = v17;
    *v17 = v0;
    v17[1] = sub_100173DB0;

    return AsyncCoreDataContainer.performWrite<A>(_:)();
  }

  v19 = v0[11];
  v20 = v0[8];

  v21 = v0[1];

  return v21();
}

uint64_t sub_100173DB0()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v8 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = sub_100173F44;
  }

  else
  {
    v6 = *(v2 + 96);
    v5 = *(v2 + 104);

    v4 = sub_100173ED4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100173ED4()
{
  v1 = v0[11];
  v2 = v0[8];

  v3 = v0[1];

  return v3();
}

uint64_t sub_100173F44()
{
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[13];
  v5 = v0[7];
  v4 = v0[8];
  v6 = v0[6];

  (*(v5 + 104))(v4, enum case for DIPError.Code.internalError(_:), v6);
  swift_errorRetain();
  sub_10002688C(&_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100008E7C();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v7 = v0[11];
  v8 = v0[8];

  v9 = v0[1];

  return v9();
}

uint64_t sub_1001740BC(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v38 = a2;
  v37 = a1;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v35 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v34 - v13;
  defaultLogger()();

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();

  v17 = os_log_type_enabled(v15, v16);
  v36 = a3;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v34 = v4;
    v20 = v19;
    v39 = v19;
    *v18 = 136446210;
    *(v18 + 4) = sub_10010150C(a3, a4, &v39);
    _os_log_impl(&_mh_execute_header, v15, v16, "CredentialStore storePIITokenCredentialList called for credentialIdentifier %{public}s", v18, 0xCu);
    sub_100005090(v20);
    v5 = v34;
  }

  v21 = *(v9 + 8);
  v21(v14, v8);
  v22 = sub_100174404(v37, v38);
  v23 = v35;
  if (v5)
  {
    defaultLogger()();
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "No Credential list stored yet for this PII token", v26, 2u);
    }

    v21(v23, v8);
    v27 = &_swiftEmptyArrayStorage;
  }

  else
  {
    v27 = v22;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v29 = v36;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v27 = sub_100100418(0, *(v27 + 2) + 1, 1, v27);
  }

  v31 = *(v27 + 2);
  v30 = *(v27 + 3);
  if (v31 >= v30 >> 1)
  {
    v27 = sub_100100418((v30 > 1), v31 + 1, 1, v27);
  }

  *(v27 + 2) = v31 + 1;
  v32 = &v27[16 * v31];
  *(v32 + 4) = v29;
  *(v32 + 5) = a4;
  sub_100174B44(v37, v38);
}

char *sub_100174404(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v38 = a1;
  v5 = type metadata accessor for DIPError.Code();
  v33 = *(v5 - 8);
  v34 = v5;
  v6 = *(v33 + 64);
  __chkstk_darwin(v5);
  v35 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for String.Encoding();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v36 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v32 = a2;
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "CredentialStore retrieveTokenCredentialList", v19, 2u);
    v3 = v2;
    a2 = v32;
  }

  (*(v13 + 8))(v16, v12);
  v20 = *(v37 + 112);
  result = sub_1000316B4(v38, a2);
  if (!v3)
  {
    v22 = v36;
    static String.Encoding.utf8.getter();
    v23 = String.data(using:allowLossyConversion:)();
    v25 = v24;

    (*(v9 + 8))(v22, v8);
    if (v25 >> 60 == 15)
    {
      (*(v33 + 104))(v35, enum case for DIPError.Code.failedToDecodeTokenCredentialListJsonData(_:), v34);
      sub_10002688C(&_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100008E7C();
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      return swift_willThrow();
    }

    v26 = objc_opt_self();
    isa = Data._bridgeToObjectiveC()().super.isa;
    v40[0] = 0;
    v28 = [v26 JSONObjectWithData:isa options:0 error:v40];

    if (v28)
    {
      v29 = v40[0];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      sub_100004E70(&qword_100201580, &qword_1001AB980);
      if (swift_dynamicCast())
      {
        sub_10001C120(v23, v25);
        return v39;
      }

      (*(v33 + 104))(v35, enum case for DIPError.Code.failedToDecodeTokenCredentialList(_:), v34);
      sub_10002688C(&_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100008E7C();
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    }

    else
    {
      v30 = v40[0];
      _convertNSErrorToError(_:)();
    }

    swift_willThrow();
    return sub_10001C120(v23, v25);
  }

  return result;
}

uint64_t sub_1001749AC(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v17 = v3;
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "CredentialStore deletePIITokenCredentialList", v13, 2u);
    v3 = v17;
  }

  (*(v7 + 8))(v10, v6);
  v14 = *sub_100009278((*(v3 + 112) + 48), *(*(v3 + 112) + 72));
  return sub_100049CB0(a1, a2);
}

uint64_t sub_100174B44(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v35 = a1;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v32 = v2;
    v13 = v12;
    v14 = swift_slowAlloc();
    v33 = a2;
    v15 = v14;
    v36 = v14;
    *v13 = 136446210;
    v16 = Array.description.getter();
    v31 = v5;
    v18 = sub_10010150C(v16, v17, &v36);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v10, v11, "Storing updated credental list: %{public}s", v13, 0xCu);
    sub_100005090(v15);
    a2 = v33;

    v3 = v32;

    (*(v6 + 8))(v9, v31);
  }

  else
  {

    (*(v6 + 8))(v9, v5);
  }

  v19 = objc_opt_self();
  isa = Array._bridgeToObjectiveC()().super.isa;
  v36 = 0;
  v21 = [v19 dataWithJSONObject:isa options:0 error:&v36];

  v22 = v36;
  if (v21)
  {
    v23 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    v26 = v35;
    v27 = *(v34 + 112);
    sub_10003142C(v35, a2, v23, v25);
    if (v3)
    {
      sub_100031204(v26, a2, v23, v25);
      sub_1000092BC(v23, v25);
    }

    else
    {
      return sub_1000092BC(v23, v25);
    }
  }

  else
  {
    v28 = v22;
    _convertNSErrorToError(_:)();

    return swift_willThrow();
  }
}

void sub_100174E7C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = sub_10016A520(a3, a4);
  if (!v4)
  {
    v6 = v5;
    Data.base16EncodedString()();
    v7 = String._bridgeToObjectiveC()();

    [v6 setPiiHash:v7];

    sub_100050240();
  }
}

void sub_100174F24(uint64_t a1@<X2>, void *a2@<X3>, uint64_t *a3@<X8>)
{
  v7 = type metadata accessor for DIPError.Code();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10016A520(a1, a2);
  if (!v3)
  {
    v13 = v12;
    v14 = [v12 piiHash];
    if (v14)
    {
      v15 = v14;
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;

      *a3 = v16;
      a3[1] = v18;
    }

    else
    {
      (*(v8 + 104))(v11, enum case for DIPError.Code.failedToFindPIIHash(_:), v7);
      sub_10002688C(&_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100008E7C();
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
    }
  }
}

void sub_100175134(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = sub_10016A520(a3, a4);
  if (!v4)
  {
    v6 = v5;
    [v5 setPiiHash:0];
    sub_100050240();
  }
}

uint64_t sub_1001751FC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

void *sub_100175234@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  result = v5(v9, *a1);
  if (!v3)
  {
    v8 = v9[1];
    *a2 = v9[0];
    a2[1] = v8;
  }

  return result;
}

uint64_t sub_10017527C()
{
  v1 = v0[2];

  v2 = v0[4];

  sub_1000092BC(v0[5], v0[6]);

  return _swift_deallocObject(v0, 56, 7);
}

void sub_1001752C4(uint64_t a1)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  sub_100174E7C(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32));
}

uint64_t sub_1001752E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return 0;
  }

  v6 = 0;
  for (i = (a1 + 40); ; i += 2)
  {
    v8 = *(i - 1) == a2 && *i == a3;
    if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    if (v3 == ++v6)
    {
      return 0;
    }
  }

  return v6;
}

uint64_t sub_100175394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = type metadata accessor for DIPError.Code();
  v6[8] = v7;
  v8 = *(v7 - 8);
  v6[9] = v8;
  v9 = *(v8 + 64) + 15;
  v6[10] = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  v6[11] = v10;
  v11 = *(v10 - 8);
  v6[12] = v11;
  v12 = *(v11 + 64) + 15;
  v6[13] = swift_task_alloc();

  return _swift_task_switch(sub_1001754B8, 0, 0);
}

uint64_t sub_1001754B8()
{
  v1 = v0[13];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "CredentialStore replacePayload", v4, 2u);
  }

  v6 = v0[12];
  v5 = v0[13];
  v7 = v0[11];
  v8 = v0[7];
  v21 = v0[6];
  v10 = v0[4];
  v9 = v0[5];
  v12 = v0[2];
  v11 = v0[3];

  (*(v6 + 8))(v5, v7);
  v13._object = 0x80000001001BCCE0;
  v13._countAndFlagsBits = 0xD000000000000014;
  debugLogFootprint(_:)(v13);
  v14 = *(v8 + 120);
  v15 = swift_allocObject();
  v0[14] = v15;
  v15[2] = v8;
  v15[3] = v12;
  v15[4] = v11;
  v15[5] = v10;
  v15[6] = v9;
  v15[7] = v21;

  sub_100009708(v10, v9);
  v16 = *(v14 + 16);
  v17 = swift_allocObject();
  v0[15] = v17;
  *(v17 + 16) = &unk_1001AED90;
  *(v17 + 24) = v15;
  v18 = async function pointer to AsyncCoreDataContainer.write<A>(_:)[1];

  v19 = swift_task_alloc();
  v0[16] = v19;
  *v19 = v0;
  v19[1] = sub_1001756DC;

  return AsyncCoreDataContainer.write<A>(_:)(v19, &unk_1001AB060, v17, &type metadata for () + 8);
}

uint64_t sub_1001756DC()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v8 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v4 = sub_100175890;
  }

  else
  {
    v6 = *(v2 + 112);
    v5 = *(v2 + 120);

    v4 = sub_100175800;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100175800()
{
  v1 = v0[13];
  v2 = v0[10];
  v3._object = 0x80000001001BCD60;
  v3._countAndFlagsBits = 0xD000000000000012;
  debugLogFootprint(_:)(v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100175890()
{
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[15];
  v4 = v0[13];
  v6 = v0[9];
  v5 = v0[10];
  v7 = v0[8];

  (*(v6 + 104))(v5, enum case for DIPError.Code.internalError(_:), v7);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10018FF54(&qword_100200200, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v8._object = 0x80000001001BCD60;
  v8._countAndFlagsBits = 0xD000000000000012;
  debugLogFootprint(_:)(v8);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100175A5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a7;
  v8[8] = a8;
  v8[5] = a5;
  v8[6] = a6;
  v8[3] = a3;
  v8[4] = a4;
  v8[2] = a2;
  v9 = *(sub_100004E70(&qword_100202490, &unk_1001ACF80) - 8);
  v8[9] = v9;
  v8[10] = *(v9 + 64);
  v8[11] = swift_task_alloc();
  v8[12] = swift_task_alloc();
  v10 = *(*(sub_100004E70(&qword_100202498, &unk_1001AD910) - 8) + 64) + 15;
  v8[13] = swift_task_alloc();
  v11 = type metadata accessor for PayloadMetadata();
  v8[14] = v11;
  v12 = *(v11 - 8);
  v8[15] = v12;
  v8[16] = *(v12 + 64);
  v8[17] = swift_task_alloc();
  v8[18] = swift_task_alloc();
  v8[19] = swift_task_alloc();
  v8[20] = swift_task_alloc();
  v13 = type metadata accessor for Logger();
  v8[21] = v13;
  v14 = *(v13 - 8);
  v8[22] = v14;
  v15 = *(v14 + 64) + 15;
  v8[23] = swift_task_alloc();
  v8[24] = swift_task_alloc();
  v8[25] = swift_task_alloc();
  v16 = *(*(sub_100004E70(&qword_100203CF0, &qword_1001AED98) - 8) + 64) + 15;
  v8[26] = swift_task_alloc();
  v17 = type metadata accessor for ISO18013JumboPackage();
  v8[27] = v17;
  v18 = *(v17 - 8);
  v8[28] = v18;
  v19 = *(v18 + 64) + 15;
  v8[29] = swift_task_alloc();
  v20 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v8[30] = v20;
  v21 = *(v20 - 8);
  v8[31] = v21;
  v22 = *(v21 + 64) + 15;
  v8[32] = swift_task_alloc();
  v8[33] = swift_task_alloc();
  v8[34] = swift_task_alloc();
  v23 = sub_100004E70(&qword_100203CF8, &qword_1001AEDA0);
  v8[35] = v23;
  v24 = *(*(v23 - 8) + 64) + 15;
  v8[36] = swift_task_alloc();
  v25 = _s8DBResultVMa(0);
  v8[37] = v25;
  v26 = *(v25 - 8);
  v8[38] = v26;
  v8[39] = *(v26 + 64);
  v8[40] = swift_task_alloc();
  v8[41] = swift_task_alloc();

  return _swift_task_switch(sub_100175E2C, 0, 0);
}

uint64_t sub_100175E2C()
{
  v1 = *(v0 + 248);
  v18 = *(v0 + 240);
  v19 = *(v0 + 272);
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);
  v5 = *(v0 + 40);
  v4 = *(v0 + 48);
  v7 = *(v0 + 24);
  v6 = *(v0 + 32);
  v8 = *(v0 + 16);
  v9 = swift_allocObject();
  *(v0 + 336) = v9;
  v9[2] = v7;
  v9[3] = v6;
  v9[4] = v5;
  v9[5] = v8;
  v9[6] = v4;
  v9[7] = v3;
  v9[8] = v2;

  sub_100009708(v4, v3);
  *(v0 + 344) = *(v8 + 16);
  v10 = swift_allocObject();
  *(v0 + 352) = v10;
  *(v10 + 16) = sub_10018E4CC;
  *(v10 + 24) = v9;
  *(v0 + 760) = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
  v11 = *(v1 + 104);
  *(v0 + 360) = v11;
  *(v0 + 368) = (v1 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v11(v19);
  v12 = async function pointer to NSManagedObjectContext.perform<A>(schedule:_:)[1];

  v13 = swift_task_alloc();
  *(v0 + 376) = v13;
  *v13 = v0;
  v13[1] = sub_100175FE0;
  v15 = *(v0 + 280);
  v14 = *(v0 + 288);
  v16 = *(v0 + 272);

  return NSManagedObjectContext.perform<A>(schedule:_:)(v14, v16, sub_1000BBAFC, v10, v15);
}

uint64_t sub_100175FE0()
{
  v2 = *v1;
  v3 = *(*v1 + 376);
  v4 = *v1;
  v2[48] = v0;

  v5 = v2[44];
  if (v0)
  {
    (*(v2[31] + 8))(v2[34], v2[30]);

    v6 = sub_1001767F4;
  }

  else
  {
    v7 = v2[42];
    v8 = v2[34];
    v9 = v2[30];
    v10 = v2[31];

    v11 = *(v10 + 8);
    v2[49] = v11;
    v2[50] = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v11(v8, v9);
    v6 = sub_100176178;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100176178()
{
  v1 = *(v0 + 288);
  if ((*(*(v0 + 304) + 48))(v1, 1, *(v0 + 296)) == 1)
  {
    sub_10000A0D4(v1, &qword_100203CF8, &qword_1001AEDA0);
    v3 = *(v0 + 320);
    v2 = *(v0 + 328);
    v4 = *(v0 + 288);
    v6 = *(v0 + 264);
    v5 = *(v0 + 272);
    v7 = *(v0 + 256);
    v8 = *(v0 + 232);
    v10 = *(v0 + 200);
    v9 = *(v0 + 208);
    v11 = *(v0 + 192);
    v71 = *(v0 + 184);
    v73 = *(v0 + 160);
    v75 = *(v0 + 152);
    v77 = *(v0 + 144);
    v79 = *(v0 + 136);
    v81 = *(v0 + 104);
    v83 = *(v0 + 96);
    v85 = *(v0 + 88);

    v12 = *(v0 + 8);

    return v12();
  }

  v14 = *(v0 + 328);
  v15 = sub_10018EAB4(v1, v14, _s8DBResultVMa);
  v20 = *v14;
  *(v0 + 408) = *v14;
  if (*(v14 + 8))
  {
    *(v0 + 448) = xmmword_1001AE390;
    v21 = *(v0 + 56);
    v22 = v21 >> 62;
    if ((v21 >> 62) > 1)
    {
      if (v22 != 2)
      {
        v31 = *(v0 + 328);
        if ((*(v31 + 9) & 1) == 0)
        {
LABEL_25:
          v39 = *(v0 + 192);
          defaultLogger()();
          v40 = Logger.logObject.getter();
          v41 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v40, v41))
          {
            v42 = swift_slowAlloc();
            *v42 = 0;
            _os_log_impl(&_mh_execute_header, v40, v41, "Inserting biometric encrypted payload (legacy flow)", v42, 2u);
          }

          v43 = *(v0 + 192);
          v44 = *(v0 + 168);
          v45 = *(v0 + 176);

          (*(v45 + 8))(v43, v44);
          (*(*(v0 + 120) + 56))(*(v0 + 96), 1, 1, *(v0 + 112));
          v70 = *(v0 + 448);
          v72 = *(v0 + 456);
          v82 = *(v0 + 368);
          v80 = *(v0 + 360);
          v78 = *(v0 + 760);
          v46 = *(v0 + 320);
          v47 = *(v0 + 328);
          v66 = v46;
          v49 = *(v0 + 304);
          v48 = *(v0 + 312);
          v74 = *(v0 + 256);
          v76 = *(v0 + 240);
          v65 = *(v0 + 88);
          v50 = *(v0 + 72);
          v51 = *(v0 + 80);
          v69 = *(v0 + 64);
          v84 = *(v0 + 48);
          v86 = *(v0 + 56);
          v52 = *(v0 + 24);
          v67 = *(v0 + 32);
          v68 = *(v0 + 40);
          v53 = *(v0 + 16);
          sub_100046360(*(v0 + 96), v65, &qword_100202490, &unk_1001ACF80);
          sub_10018EB60(v47, v46, _s8DBResultVMa);
          v54 = (*(v50 + 80) + 48) & ~*(v50 + 80);
          v55 = (v51 + v54 + 7) & 0xFFFFFFFFFFFFFFF8;
          v56 = (v55 + 15) & 0xFFFFFFFFFFFFFFF8;
          v57 = (*(v49 + 80) + v56 + 16) & ~*(v49 + 80);
          v58 = (v48 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
          v59 = swift_allocObject();
          *(v0 + 728) = v59;
          v59[2] = v52;
          v59[3] = v53;
          v59[4] = v84;
          v59[5] = v86;
          sub_100046524(v65, v59 + v54, &qword_100202490, &unk_1001ACF80);
          *(v59 + v55) = 0;
          v60 = (v59 + v56);
          *v60 = v67;
          v60[1] = v68;
          sub_10018EAB4(v66, v59 + v57, _s8DBResultVMa);
          *(v59 + v58) = v69;
          v61 = (v59 + ((v58 + 15) & 0xFFFFFFFFFFFFFFF8));
          *v61 = v70;
          v61[1] = v72;

          sub_100009708(v84, v86);
          sub_100032EBC(v70, v72);
          v62 = swift_allocObject();
          *(v0 + 736) = v62;
          *(v62 + 16) = sub_10018E95C;
          *(v62 + 24) = v59;
          v80(v74, v78, v76);
          v63 = async function pointer to NSManagedObjectContext.perform<A>(schedule:_:)[1];

          v15 = swift_task_alloc();
          *(v0 + 744) = v15;
          *v15 = v0;
          v15[1] = sub_100178B54;
          v64 = *(v0 + 344);
          v16 = *(v0 + 256);
          v17 = sub_10001C0A8;
          v19 = &type metadata for () + 8;
          v18 = v62;

          return NSManagedObjectContext.perform<A>(schedule:_:)(v15, v16, v17, v18, v19);
        }

        v23 = 0;
        goto LABEL_22;
      }

      v26 = *(*(v0 + 48) + 16);
      v27 = *(*(v0 + 48) + 24);
      v28 = __OFSUB__(v27, v26);
      v23 = v27 - v26;
      if (!v28)
      {
LABEL_18:
        v31 = *(v0 + 328);
        if (*(v31 + 9) != 1)
        {
          goto LABEL_25;
        }

LABEL_22:
        *(v0 + 464) = v23;
        v32 = *(*(v0 + 296) + 24);
        *(v0 + 764) = v32;
        v33 = swift_task_alloc();
        *(v0 + 472) = v33;
        *v33 = v0;
        v33[1] = sub_100176EF8;
        v34 = *(v0 + 208);
        v35 = *(v0 + 56);
        v36 = *(v0 + 64);
        v37 = *(v0 + 48);
        v38 = *(v0 + 24);

        return sub_10017A074(v34, v37, v35, v31 + v32, v36);
      }

      __break(1u);
    }

    else if (!v22)
    {
      v23 = BYTE6(v21);
      goto LABEL_18;
    }

    v29 = *(v0 + 48);
    v30 = *(v0 + 52);
    v28 = __OFSUB__(v30, v29);
    LODWORD(v23) = v30 - v29;
    if (v28)
    {
      __break(1u);
      return NSManagedObjectContext.perform<A>(schedule:_:)(v15, v16, v17, v18, v19);
    }

    v23 = v23;
    goto LABEL_18;
  }

  v24 = swift_task_alloc();
  *(v0 + 416) = v24;
  *v24 = v0;
  v24[1] = sub_100176948;
  v25 = *(v0 + 24);

  return sub_100179D04(v20);
}

uint64_t sub_1001767F4()
{
  v1 = v0[42];

  v22 = v0[48];
  v3 = v0[40];
  v2 = v0[41];
  v4 = v0[36];
  v6 = v0[33];
  v5 = v0[34];
  v7 = v0[32];
  v8 = v0[29];
  v10 = v0[25];
  v9 = v0[26];
  v11 = v0[24];
  v14 = v0[23];
  v15 = v0[20];
  v16 = v0[19];
  v17 = v0[18];
  v18 = v0[17];
  v19 = v0[13];
  v20 = v0[12];
  v21 = v0[11];

  v12 = v0[1];

  return v12();
}

uint64_t sub_100176948(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 416);
  v8 = *v3;
  *(*v3 + 424) = v2;

  if (v2)
  {
    v9 = sub_100178FF8;
  }

  else
  {
    *(v6 + 432) = a2;
    *(v6 + 440) = a1;
    v9 = sub_100176A7C;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_100176A7C(void *a1, uint64_t a2, uint64_t (*a3)(), uint64_t a4, char *a5)
{
  v5[28] = vextq_s8(v5[27], v5[27], 8uLL);
  v6 = v5[3].u64[1];
  v7 = v6 >> 62;
  if ((v6 >> 62) <= 1)
  {
    if (!v7)
    {
      v8 = BYTE6(v6);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v7 == 2)
  {
    v9 = *(v5[3].i64[0] + 16);
    v10 = *(v5[3].i64[0] + 24);
    v11 = __OFSUB__(v10, v9);
    v8 = v10 - v9;
    if (!v11)
    {
      goto LABEL_10;
    }

    __break(1u);
LABEL_8:
    v12 = v5[3].i32[0];
    v13 = v5[3].i32[1];
    v11 = __OFSUB__(v13, v12);
    LODWORD(v8) = v13 - v12;
    if (v11)
    {
      __break(1u);
      return NSManagedObjectContext.perform<A>(schedule:_:)(a1, a2, a3, a4, a5);
    }

    v8 = v8;
LABEL_10:
    v14 = v5[20].i64[1];
    if (*(v14 + 9) != 1)
    {
      goto LABEL_17;
    }

    goto LABEL_14;
  }

  v14 = v5[20].i64[1];
  if ((*(v14 + 9) & 1) == 0)
  {
LABEL_17:
    v23 = v5[12].i64[0];
    defaultLogger()();
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "Inserting biometric encrypted payload (legacy flow)", v26, 2u);
    }

    v27 = v5[12].i64[0];
    v28 = v5[10].i64[1];
    v29 = v5[11].i64[0];

    (*(v29 + 8))(v27, v28);
    (*(v5[7].i64[1] + 56))(v5[6].i64[0], 1, 1, v5[7].i64[0]);
    v54 = v5[28].i64[0];
    v55 = v5[28].u64[1];
    v60 = v5[23].i64[0];
    v59 = v5[22].i64[1];
    v58 = v5[47].u32[2];
    v30 = v5[20].i64[0];
    v31 = v5[20].i64[1];
    v50 = v30;
    v33 = v5[19].i64[0];
    v32 = v5[19].i64[1];
    v56 = v5[16].i64[0];
    v57 = v5[15].i64[0];
    v49 = v5[5].i64[1];
    v34 = v5[4].i64[1];
    v35 = v5[5].i64[0];
    v53 = v5[4].i64[0];
    v61 = v5[3].i64[0];
    v62 = v5[3].u64[1];
    v36 = v5[1].i64[1];
    v51 = v5[2].i64[0];
    v52 = v5[2].i64[1];
    v37 = v5[1].i64[0];
    sub_100046360(v5[6].i64[0], v49, &qword_100202490, &unk_1001ACF80);
    sub_10018EB60(v31, v30, _s8DBResultVMa);
    v38 = (*(v34 + 80) + 48) & ~*(v34 + 80);
    v39 = (v35 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
    v40 = (v39 + 15) & 0xFFFFFFFFFFFFFFF8;
    v41 = (*(v33 + 80) + v40 + 16) & ~*(v33 + 80);
    v42 = (v32 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
    v43 = swift_allocObject();
    v5[45].i64[1] = v43;
    v43[2] = v36;
    v43[3] = v37;
    v43[4] = v61;
    v43[5] = v62;
    sub_100046524(v49, v43 + v38, &qword_100202490, &unk_1001ACF80);
    *(v43 + v39) = 0;
    v44 = (v43 + v40);
    *v44 = v51;
    v44[1] = v52;
    sub_10018EAB4(v50, v43 + v41, _s8DBResultVMa);
    *(v43 + v42) = v53;
    v45 = (v43 + ((v42 + 15) & 0xFFFFFFFFFFFFFFF8));
    *v45 = v54;
    v45[1] = v55;

    sub_100009708(v61, v62);
    sub_100032EBC(v54, v55);
    v46 = swift_allocObject();
    v5[46].i64[0] = v46;
    *(v46 + 16) = sub_10018E95C;
    *(v46 + 24) = v43;
    v59(v56, v58, v57);
    v47 = async function pointer to NSManagedObjectContext.perform<A>(schedule:_:)[1];

    a1 = swift_task_alloc();
    v5[46].i64[1] = a1;
    *a1 = v5;
    a1[1] = sub_100178B54;
    v48 = v5[21].i64[1];
    a2 = v5[16].i64[0];
    a3 = sub_10001C0A8;
    a5 = &type metadata for () + 8;
    a4 = v46;

    return NSManagedObjectContext.perform<A>(schedule:_:)(a1, a2, a3, a4, a5);
  }

  v8 = 0;
LABEL_14:
  v5[29].i64[0] = v8;
  v15 = *(v5[18].i64[1] + 24);
  v5[47].i32[3] = v15;
  v16 = swift_task_alloc();
  v5[29].i64[1] = v16;
  *v16 = v5;
  v16[1] = sub_100176EF8;
  v17 = v5[13].i64[0];
  v18 = v5[3].i64[1];
  v19 = v5[4].i64[0];
  v20 = v5[3].i64[0];
  v21 = v5[1].i64[1];

  return sub_10017A074(v17, v20, v18, v14 + v15, v19);
}

uint64_t sub_100176EF8()
{
  v2 = *(*v1 + 472);
  v5 = *v1;
  *(*v1 + 480) = v0;

  if (v0)
  {
    v3 = sub_1001795BC;
  }

  else
  {
    v3 = sub_10017700C;
  }

  return _swift_task_switch(v3, 0, 0);
}

void *sub_10017700C()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 224);
  v3 = *(v0 + 208);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10000A0D4(v3, &qword_100203CF0, &qword_1001AED98);
    v4 = *(v0 + 192);
    defaultLogger()();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Inserting biometric encrypted payload (legacy flow)", v7, 2u);
    }

    v8 = *(v0 + 192);
    v9 = *(v0 + 168);
    v10 = *(v0 + 176);

    (*(v10 + 8))(v8, v9);
    v11 = *(v0 + 328);
    v12 = *(v0 + 24);
    v13 = *(*(v0 + 296) + 24);
    v14 = swift_task_alloc();
    *(v0 + 704) = v14;
    *v14 = v0;
    v14[1] = sub_10017872C;
    v15 = *(v0 + 136);
    v16 = *(v0 + 56);
    v17 = *(v0 + 64);
    v19 = *(v0 + 40);
    v18 = *(v0 + 48);
    v21 = *(v0 + 24);
    v20 = *(v0 + 32);
    v87 = *(v0 + 16);
    v22 = v12 + 72;
    v23 = v11 + v13;
    goto LABEL_5;
  }

  v25 = *(v0 + 200);
  (*(v2 + 32))(*(v0 + 232), v3, v1);
  defaultLogger()();
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&_mh_execute_header, v26, v27, "Inserting standard payload", v28, 2u);
  }

  v29 = *(v0 + 232);
  v30 = *(v0 + 200);
  v31 = *(v0 + 168);
  v32 = *(v0 + 176);

  (*(v32 + 8))(v30, v31);
  *(v0 + 488) = *(ISO18013JumboPackage.packages.getter() + 16);

  v33._countAndFlagsBits = 0xD000000000000021;
  v33._object = 0x80000001001BCD80;
  debugLogFootprint(_:)(v33);
  result = ISO18013JumboPackage.packages.getter();
  *(v0 + 496) = result;
  v34 = result[2];
  *(v0 + 504) = v34;
  if (v34)
  {
    v35 = *(v0 + 480);
    *(v0 + 512) = 0u;
    *(v0 + 528) = 0u;
    *(v0 + 544) = 0u;
    if (!result[2])
    {
      __break(1u);
      return result;
    }

    v36 = *(v0 + 64);
    v37 = result[4];
    *(v0 + 560) = v37;
    v38 = result[5];
    *(v0 + 568) = v38;
    sub_100009708(v37, v38);
    v39 = sub_1000F554C(v36);
    *(v0 + 576) = v39;
    if (!v35)
    {
      v67 = v39;
      v68 = *(v0 + 764);
      v69 = *(v0 + 328);
      v70 = *(v0 + 24);
      v71 = swift_task_alloc();
      *(v0 + 584) = v71;
      *v71 = v0;
      v71[1] = sub_1001776A0;
      v15 = *(v0 + 152);
      v20 = *(v0 + 32);
      v19 = *(v0 + 40);
      v72 = *(v0 + 24);
      v88 = *(v0 + 16);
      v22 = v70 + 72;
      v23 = v69 + v68;
      v18 = v37;
      v16 = v38;
      v17 = v67;
LABEL_5:

      return sub_10017B108(v15, v22, v18, v16, v17, v23, v20, v19);
    }

    v40 = *(v0 + 496);
    v42 = *(v0 + 448);
    v41 = *(v0 + 456);
    v43 = *(v0 + 328);
    v44 = *(v0 + 224);
    v45 = *(v0 + 232);
    v46 = *(v0 + 216);

    sub_10018EB1C(0, 0, 0);
    sub_1000092BC(v37, v38);
    sub_10001C120(v42, v41);
    (*(v44 + 8))(v45, v46);
    sub_10018F128(v43, _s8DBResultVMa);
    v48 = *(v0 + 320);
    v47 = *(v0 + 328);
    v49 = *(v0 + 288);
    v51 = *(v0 + 264);
    v50 = *(v0 + 272);
    v52 = *(v0 + 256);
    v53 = *(v0 + 232);
    v55 = *(v0 + 200);
    v54 = *(v0 + 208);
    v56 = *(v0 + 192);
    v78 = *(v0 + 184);
    v79 = *(v0 + 160);
    v80 = *(v0 + 152);
    v81 = *(v0 + 144);
    v82 = *(v0 + 136);
    v83 = *(v0 + 104);
    v84 = *(v0 + 96);
    v85 = *(v0 + 88);

    v57 = *(v0 + 8);

    return v57();
  }

  else
  {
    *(v0 + 632) = 0;
    *(v0 + 600) = 0u;
    *(v0 + 616) = 0u;
    v58 = *(v0 + 764);
    v59 = *(v0 + 328);
    v60 = *(v0 + 104);

    v61._object = 0x80000001001BCDB0;
    v61._countAndFlagsBits = 0xD00000000000001FLL;
    debugLogFootprint(_:)(v61);
    sub_100046360(v59 + v58, v60, &qword_100202498, &unk_1001AD910);
    v62 = type metadata accessor for KeyLookupInfo();
    v63 = (*(*(v62 - 8) + 48))(v60, 1, v62);
    v64 = *(v0 + 104);
    if (v63 == 1)
    {
      sub_10000A0D4(*(v0 + 104), &qword_100202498, &unk_1001AD910);
      v65 = 0;
      v66 = 0;
    }

    else
    {
      v65 = *v64;
      v66 = v64[1];

      sub_10018F128(v64, type metadata accessor for KeyLookupInfo);
    }

    *(v0 + 680) = v66;
    v73 = swift_task_alloc();
    *(v0 + 688) = v73;
    *v73 = v0;
    v73[1] = sub_1001783E8;
    v75 = *(v0 + 32);
    v74 = *(v0 + 40);
    v76 = *(v0 + 16);
    v77 = *(v0 + 24);

    return sub_100180C38(v75, v74, v76, v65, v66);
  }
}

uint64_t sub_1001776A0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 584);
  v14 = *v2;
  *(*v2 + 592) = v1;

  if (v1)
  {
    v6 = v4[69];
    v7 = v4[68];
    v8 = v4[67];
    v9 = v4[66];
    v10 = v4[65];
    v11 = v4[62];

    sub_10018EB1C(v6, v7, v8);
    v12 = sub_100179730;
  }

  else
  {
    v4[80] = a1;
    v12 = sub_100177800;
  }

  return _swift_task_switch(v12, 0, 0);
}

uint64_t sub_100177800()
{
  v33 = *(v0 + 640);
  v34 = *(v0 + 576);
  v42 = *(v0 + 560);
  v43 = *(v0 + 568);
  v35 = *(v0 + 448);
  v36 = *(v0 + 456);
  v40 = *(v0 + 360);
  v41 = *(v0 + 368);
  v39 = *(v0 + 760);
  v1 = *(v0 + 320);
  v2 = *(v0 + 328);
  v27 = v1;
  v3 = *(v0 + 304);
  v26 = *(v0 + 312);
  v37 = *(v0 + 264);
  v38 = *(v0 + 240);
  v4 = *(v0 + 160);
  v5 = *(v0 + 144);
  v7 = *(v0 + 120);
  v6 = *(v0 + 128);
  v31 = *(v0 + 48);
  v32 = *(v0 + 56);
  v29 = *(v0 + 32);
  v30 = *(v0 + 40);
  v8 = *(v0 + 24);
  v28 = *(v0 + 16);
  v25 = v5;
  sub_10018EAB4(*(v0 + 152), v4, type metadata accessor for PayloadMetadata);
  sub_10018EB60(v4, v5, type metadata accessor for PayloadMetadata);
  sub_10018EB60(v2, v1, _s8DBResultVMa);
  v9 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v10 = (v6 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = (*(v3 + 80) + v11 + 16) & ~*(v3 + 80);
  v13 = (v26 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  *(v0 + 648) = v15;
  v15[2] = v8;
  v15[3] = v28;
  v15[4] = v42;
  v15[5] = v43;
  sub_10018EAB4(v25, v15 + v9, type metadata accessor for PayloadMetadata);
  *(v15 + v10) = v33;
  v16 = (v15 + v11);
  *v16 = v29;
  v16[1] = v30;
  sub_10018EAB4(v27, v15 + v12, _s8DBResultVMa);
  *(v15 + v13) = v34;
  v17 = (v15 + v14);
  *v17 = v31;
  v17[1] = v32;
  v18 = (v15 + ((v14 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v18 = v35;
  v18[1] = v36;

  sub_100009708(v31, v32);
  sub_100009708(v42, v43);
  sub_100032EBC(v35, v36);
  v19 = swift_allocObject();
  *(v0 + 656) = v19;
  *(v19 + 16) = sub_10018EFC8;
  *(v19 + 24) = v15;
  v40(v37, v39, v38);
  v20 = async function pointer to NSManagedObjectContext.perform<A>(schedule:_:)[1];

  v21 = swift_task_alloc();
  *(v0 + 664) = v21;
  *v21 = v0;
  v21[1] = sub_100177B04;
  v22 = *(v0 + 344);
  v23 = *(v0 + 264);

  return NSManagedObjectContext.perform<A>(schedule:_:)(v21, v23, sub_10019054C, v19, &type metadata for () + 8);
}

uint64_t sub_100177B04()
{
  v2 = *v1;
  v3 = *(*v1 + 664);
  v4 = *v1;
  *(v2 + 672) = v0;

  v5 = *(v2 + 656);
  if (v0)
  {
    v6 = *(v2 + 552);
    v7 = *(v2 + 544);
    v8 = *(v2 + 536);
    v9 = *(v2 + 528);
    v10 = *(v2 + 520);
    v11 = *(v2 + 496);
    v12 = *(v2 + 400);
    (*(v2 + 392))(*(v2 + 264), *(v2 + 240));

    sub_10018EB1C(v6, v7, v8);
    v13 = sub_100178210;
  }

  else
  {
    v14 = *(v2 + 648);
    v16 = *(v2 + 392);
    v15 = *(v2 + 400);
    v17 = *(v2 + 264);
    v18 = *(v2 + 240);

    v16(v17, v18);
    v13 = sub_100177CC0;
  }

  return _swift_task_switch(v13, 0, 0);
}

uint64_t sub_100177CC0()
{
  v1 = *(v0 + 568);
  if (*(v0 + 536))
  {
    sub_1000092BC(*(v0 + 560), v1);
    v2 = *(v0 + 552);
    v3 = *(v0 + 544);
    v4 = *(v0 + 536);
    v5 = *(v0 + 528);
    v6 = *(v0 + 520);
    v7 = *(v0 + 160);
    goto LABEL_14;
  }

  v8 = v1 >> 62;
  v9 = *(v0 + 560);
  if ((v1 >> 62) > 1)
  {
    if (v8 != 2)
    {
      sub_1000092BC(v9, v1);
      v2 = 0;
      goto LABEL_13;
    }

    v11 = *(v9 + 16);
    v12 = *(v9 + 24);
    v9 = sub_1000092BC(v9, v1);
    v13 = __OFSUB__(v12, v11);
    v2 = v12 - v11;
    if (!v13)
    {
      goto LABEL_13;
    }

    __break(1u);
LABEL_10:
    v14 = HIDWORD(v9);
    v15 = v9;
    result = sub_1000092BC(v9, v1);
    if (__OFSUB__(v14, v15))
    {
LABEL_30:
      __break(1u);
      return result;
    }

    v2 = v14 - v15;
    goto LABEL_13;
  }

  if (v8)
  {
    goto LABEL_10;
  }

  v10 = *(v0 + 568);
  sub_1000092BC(v9, v1);
  v2 = BYTE6(v10);
LABEL_13:
  v17 = *(v0 + 160);
  v3 = *v17;
  v4 = v17[1];
  v18 = (v17 + *(*(v0 + 112) + 44));
  v5 = *v18;
  v6 = v18[1];

  v7 = v17;
LABEL_14:
  v19 = *(v0 + 504);
  v20 = *(v0 + 512) + 1;
  result = sub_10018F128(v7, type metadata accessor for PayloadMetadata);
  if (v20 == v19)
  {
    *(v0 + 632) = v6;
    *(v0 + 624) = v5;
    *(v0 + 616) = v4;
    *(v0 + 608) = v3;
    *(v0 + 600) = v2;
    v21 = *(v0 + 496);
    v22 = *(v0 + 764);
    v23 = *(v0 + 328);
    v24 = *(v0 + 104);

    v25._object = 0x80000001001BCDB0;
    v25._countAndFlagsBits = 0xD00000000000001FLL;
    debugLogFootprint(_:)(v25);
    sub_100046360(v23 + v22, v24, &qword_100202498, &unk_1001AD910);
    v26 = type metadata accessor for KeyLookupInfo();
    v27 = (*(*(v26 - 8) + 48))(v24, 1, v26);
    v28 = *(v0 + 104);
    if (v27 == 1)
    {
      sub_10000A0D4(*(v0 + 104), &qword_100202498, &unk_1001AD910);
      v29 = 0;
      v30 = 0;
    }

    else
    {
      v29 = *v28;
      v30 = v28[1];

      sub_10018F128(v28, type metadata accessor for KeyLookupInfo);
    }

    *(v0 + 680) = v30;
    v53 = swift_task_alloc();
    *(v0 + 688) = v53;
    *v53 = v0;
    v53[1] = sub_1001783E8;
    v55 = *(v0 + 32);
    v54 = *(v0 + 40);
    v56 = *(v0 + 16);
    v57 = *(v0 + 24);

    return sub_100180C38(v55, v54, v56, v29, v30);
  }

  v31 = *(v0 + 672);
  v32 = *(v0 + 512) + 1;
  *(v0 + 552) = v2;
  *(v0 + 544) = v3;
  *(v0 + 536) = v4;
  *(v0 + 528) = v5;
  *(v0 + 520) = v6;
  *(v0 + 512) = v32;
  v33 = *(v0 + 496);
  if (v32 >= *(v33 + 16))
  {
    __break(1u);
    goto LABEL_30;
  }

  v34 = *(v0 + 64);
  v35 = v33 + 16 * v32;
  v36 = *(v35 + 32);
  *(v0 + 560) = v36;
  v37 = *(v35 + 40);
  *(v0 + 568) = v37;
  sub_100009708(v36, v37);
  v38 = sub_1000F554C(v34);
  *(v0 + 576) = v38;
  if (v31)
  {
    v39 = *(v0 + 496);
    v40 = *(v0 + 448);
    v41 = *(v0 + 224);
    v75 = *(v0 + 232);
    v77 = *(v0 + 328);
    v71 = *(v0 + 456);
    v73 = *(v0 + 216);

    sub_10018EB1C(v2, v3, v4);
    sub_1000092BC(v36, v37);
    sub_10001C120(v40, v71);
    (*(v41 + 8))(v75, v73);
    sub_10018F128(v77, _s8DBResultVMa);
    v43 = *(v0 + 320);
    v42 = *(v0 + 328);
    v44 = *(v0 + 288);
    v46 = *(v0 + 264);
    v45 = *(v0 + 272);
    v47 = *(v0 + 256);
    v48 = *(v0 + 232);
    v50 = *(v0 + 200);
    v49 = *(v0 + 208);
    v51 = *(v0 + 192);
    v67 = *(v0 + 184);
    v68 = *(v0 + 160);
    v69 = *(v0 + 152);
    v70 = *(v0 + 144);
    v72 = *(v0 + 136);
    v74 = *(v0 + 104);
    v76 = *(v0 + 96);
    v78 = *(v0 + 88);

    v52 = *(v0 + 8);

    return v52();
  }

  else
  {
    v58 = v38;
    v59 = *(v0 + 764);
    v60 = *(v0 + 328);
    v61 = *(v0 + 24);
    v62 = swift_task_alloc();
    *(v0 + 584) = v62;
    *v62 = v0;
    v62[1] = sub_1001776A0;
    v63 = *(v0 + 152);
    v64 = *(v0 + 32);
    v65 = *(v0 + 40);
    v66 = *(v0 + 24);
    v80 = *(v0 + 16);

    return sub_10017B108(v63, v61 + 72, v36, v37, v58, v60 + v59, v64, v65);
  }
}

uint64_t sub_100178210()
{
  v1 = v0[81];
  v2 = v0[71];
  v3 = v0[70];
  v5 = v0[56];
  v4 = v0[57];
  v6 = v0[41];
  v8 = v0[28];
  v7 = v0[29];
  v9 = v0[27];
  v10 = v0[20];

  sub_1000092BC(v3, v2);
  sub_10001C120(v5, v4);
  sub_10018F128(v10, type metadata accessor for PayloadMetadata);
  (*(v8 + 8))(v7, v9);
  sub_10018F128(v6, _s8DBResultVMa);
  v31 = v0[84];
  v12 = v0[40];
  v11 = v0[41];
  v13 = v0[36];
  v15 = v0[33];
  v14 = v0[34];
  v16 = v0[32];
  v17 = v0[29];
  v19 = v0[25];
  v18 = v0[26];
  v20 = v0[24];
  v23 = v0[23];
  v24 = v0[20];
  v25 = v0[19];
  v26 = v0[18];
  v27 = v0[17];
  v28 = v0[13];
  v29 = v0[12];
  v30 = v0[11];

  v21 = v0[1];

  return v21();
}

uint64_t sub_1001783E8()
{
  v2 = *v1;
  v3 = (*v1)[86];
  v4 = *v1;
  v2[87] = v0;

  v5 = v2[85];
  if (v0)
  {
    v6 = v2[79];
    v7 = v2[78];
    sub_10018EB1C(v2[75], v2[76], v2[77]);

    v8 = sub_1001798D8;
  }

  else
  {

    v8 = sub_100178540;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_100178540()
{
  if (v0[77])
  {
    v1 = v0[79];
    v2 = v0[78];
    v3 = v0[76];
    v4 = v0[75];
    v5 = v0[61];
    v6 = v0[58];
    type metadata accessor for IDCSAnalytics();
    static IDCSAnalytics.sendPayloadIngestionSizeEvent(docType:issuer:overallSizeBytes:numberOfPackages:packageSizeBytes:)();
  }

  v7 = v0[41];
  v9 = v0[28];
  v8 = v0[29];
  v10 = v0[27];
  sub_10001C120(v0[56], v0[57]);
  (*(v9 + 8))(v8, v10);
  sub_10018F128(v7, _s8DBResultVMa);
  v12 = v0[40];
  v11 = v0[41];
  v13 = v0[36];
  v15 = v0[33];
  v14 = v0[34];
  v16 = v0[32];
  v17 = v0[29];
  v19 = v0[25];
  v18 = v0[26];
  v20 = v0[24];
  v23 = v0[23];
  v24 = v0[20];
  v25 = v0[19];
  v26 = v0[18];
  v27 = v0[17];
  v28 = v0[13];
  v29 = v0[12];
  v30 = v0[11];

  v21 = v0[1];

  return v21();
}

uint64_t sub_10017872C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 704);
  v6 = *v2;
  *(*v2 + 712) = v1;

  if (v1)
  {
    v7 = sub_100179A6C;
  }

  else
  {
    *(v4 + 720) = a1;
    v7 = sub_100178854;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100178854()
{
  v33 = *(v0 + 720);
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  v3 = *(v0 + 96);
  sub_10018EAB4(*(v0 + 136), v3, type metadata accessor for PayloadMetadata);
  (*(v2 + 56))(v3, 0, 1, v1);
  v31 = *(v0 + 448);
  v32 = *(v0 + 456);
  v38 = *(v0 + 368);
  v37 = *(v0 + 360);
  v36 = *(v0 + 760);
  v4 = *(v0 + 320);
  v5 = *(v0 + 328);
  v27 = v4;
  v7 = *(v0 + 304);
  v6 = *(v0 + 312);
  v34 = *(v0 + 256);
  v35 = *(v0 + 240);
  v26 = *(v0 + 88);
  v9 = *(v0 + 72);
  v8 = *(v0 + 80);
  v30 = *(v0 + 64);
  v39 = *(v0 + 48);
  v40 = *(v0 + 56);
  v10 = *(v0 + 24);
  v28 = *(v0 + 32);
  v29 = *(v0 + 40);
  v11 = *(v0 + 16);
  sub_100046360(*(v0 + 96), v26, &qword_100202490, &unk_1001ACF80);
  sub_10018EB60(v5, v4, _s8DBResultVMa);
  v12 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v13 = (v8 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF8;
  v15 = (*(v7 + 80) + v14 + 16) & ~*(v7 + 80);
  v16 = (v6 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  *(v0 + 728) = v17;
  v17[2] = v10;
  v17[3] = v11;
  v17[4] = v39;
  v17[5] = v40;
  sub_100046524(v26, v17 + v12, &qword_100202490, &unk_1001ACF80);
  *(v17 + v13) = v33;
  v18 = (v17 + v14);
  *v18 = v28;
  v18[1] = v29;
  sub_10018EAB4(v27, v17 + v15, _s8DBResultVMa);
  *(v17 + v16) = v30;
  v19 = (v17 + ((v16 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v19 = v31;
  v19[1] = v32;

  sub_100009708(v39, v40);
  sub_100032EBC(v31, v32);
  v20 = swift_allocObject();
  *(v0 + 736) = v20;
  *(v20 + 16) = sub_10018E95C;
  *(v20 + 24) = v17;
  v37(v34, v36, v35);
  v21 = async function pointer to NSManagedObjectContext.perform<A>(schedule:_:)[1];

  v22 = swift_task_alloc();
  *(v0 + 744) = v22;
  *v22 = v0;
  v22[1] = sub_100178B54;
  v23 = *(v0 + 344);
  v24 = *(v0 + 256);

  return NSManagedObjectContext.perform<A>(schedule:_:)(v22, v24, sub_10001C0A8, v20, &type metadata for () + 8);
}

uint64_t sub_100178B54()
{
  v2 = *v1;
  v3 = *(*v1 + 744);
  v4 = *v1;
  *(v2 + 752) = v0;

  v5 = *(v2 + 736);
  if (v0)
  {
    v6 = *(v2 + 400);
    (*(v2 + 392))(*(v2 + 256), *(v2 + 240));

    v7 = sub_100178E58;
  }

  else
  {
    v8 = *(v2 + 728);
    v10 = *(v2 + 392);
    v9 = *(v2 + 400);
    v11 = *(v2 + 256);
    v12 = *(v2 + 240);

    v10(v11, v12);
    v7 = sub_100178CD0;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100178CD0()
{
  v1 = v0[41];
  v2 = v0[12];
  sub_10001C120(v0[56], v0[57]);
  sub_10000A0D4(v2, &qword_100202490, &unk_1001ACF80);
  sub_10018F128(v1, _s8DBResultVMa);
  v4 = v0[40];
  v3 = v0[41];
  v5 = v0[36];
  v7 = v0[33];
  v6 = v0[34];
  v8 = v0[32];
  v9 = v0[29];
  v11 = v0[25];
  v10 = v0[26];
  v12 = v0[24];
  v15 = v0[23];
  v16 = v0[20];
  v17 = v0[19];
  v18 = v0[18];
  v19 = v0[17];
  v20 = v0[13];
  v21 = v0[12];
  v22 = v0[11];

  v13 = v0[1];

  return v13();
}

uint64_t sub_100178E58()
{
  v1 = v0[91];
  v2 = v0[56];
  v3 = v0[57];
  v4 = v0[41];
  v5 = v0[12];

  sub_10001C120(v2, v3);
  sub_10000A0D4(v5, &qword_100202490, &unk_1001ACF80);
  sub_10018F128(v4, _s8DBResultVMa);
  v26 = v0[94];
  v7 = v0[40];
  v6 = v0[41];
  v8 = v0[36];
  v10 = v0[33];
  v9 = v0[34];
  v11 = v0[32];
  v12 = v0[29];
  v14 = v0[25];
  v13 = v0[26];
  v15 = v0[24];
  v18 = v0[23];
  v19 = v0[20];
  v20 = v0[19];
  v21 = v0[18];
  v22 = v0[17];
  v23 = v0[13];
  v24 = v0[12];
  v25 = v0[11];

  v16 = v0[1];

  return v16();
}

uint64_t sub_100178FF8()
{
  v84 = v0;
  v1 = *(v0 + 184);
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 424);
  if (v4)
  {
    v6 = *(v0 + 408);
    v7 = *(v0 + 176);
    v79 = *(v0 + 168);
    v81 = *(v0 + 184);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v83 = v9;
    *v8 = 136315138;
    v10 = DCCredentialPayloadProtectionPolicyToString();
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    v14 = sub_10010150C(v11, v13, &v83);

    *(v8 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v2, v3, "replacePayload unable to fetch acl for payload protection policy %s. This may not be required for dekar payloads.", v8, 0xCu);
    sub_100005090(v9);

    v15 = (*(v7 + 8))(v81, v79);
  }

  else
  {
    v21 = *(v0 + 176);
    v20 = *(v0 + 184);
    v22 = *(v0 + 168);
    v23 = *(v0 + 424);

    v15 = (*(v21 + 8))(v20, v22);
  }

  *(v0 + 448) = xmmword_1001AE390;
  v24 = *(v0 + 56);
  v25 = v24 >> 62;
  if ((v24 >> 62) <= 1)
  {
    if (!v25)
    {
      v26 = BYTE6(v24);
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  if (v25 == 2)
  {
    v27 = *(*(v0 + 48) + 16);
    v28 = *(*(v0 + 48) + 24);
    v29 = __OFSUB__(v28, v27);
    v26 = v28 - v27;
    if (!v29)
    {
      goto LABEL_13;
    }

    __break(1u);
LABEL_11:
    v30 = *(v0 + 48);
    v31 = *(v0 + 52);
    v29 = __OFSUB__(v31, v30);
    LODWORD(v26) = v31 - v30;
    if (v29)
    {
      __break(1u);
      return NSManagedObjectContext.perform<A>(schedule:_:)(v15, v16, v17, v18, v19);
    }

    v26 = v26;
LABEL_13:
    v32 = *(v0 + 328);
    if (*(v32 + 9) != 1)
    {
      goto LABEL_20;
    }

    goto LABEL_17;
  }

  v32 = *(v0 + 328);
  if ((*(v32 + 9) & 1) == 0)
  {
LABEL_20:
    v41 = *(v0 + 192);
    defaultLogger()();
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&_mh_execute_header, v42, v43, "Inserting biometric encrypted payload (legacy flow)", v44, 2u);
    }

    v45 = *(v0 + 192);
    v46 = *(v0 + 168);
    v47 = *(v0 + 176);

    (*(v47 + 8))(v45, v46);
    (*(*(v0 + 120) + 56))(*(v0 + 96), 1, 1, *(v0 + 112));
    v72 = *(v0 + 448);
    v73 = *(v0 + 456);
    v77 = *(v0 + 360);
    v78 = *(v0 + 368);
    v76 = *(v0 + 760);
    v48 = *(v0 + 320);
    v49 = *(v0 + 328);
    v68 = v48;
    v51 = *(v0 + 304);
    v50 = *(v0 + 312);
    v74 = *(v0 + 256);
    v75 = *(v0 + 240);
    v67 = *(v0 + 88);
    v52 = *(v0 + 72);
    v53 = *(v0 + 80);
    v71 = *(v0 + 64);
    v80 = *(v0 + 48);
    v82 = *(v0 + 56);
    v54 = *(v0 + 24);
    v69 = *(v0 + 32);
    v70 = *(v0 + 40);
    v55 = *(v0 + 16);
    sub_100046360(*(v0 + 96), v67, &qword_100202490, &unk_1001ACF80);
    sub_10018EB60(v49, v48, _s8DBResultVMa);
    v56 = (*(v52 + 80) + 48) & ~*(v52 + 80);
    v57 = (v53 + v56 + 7) & 0xFFFFFFFFFFFFFFF8;
    v58 = (v57 + 15) & 0xFFFFFFFFFFFFFFF8;
    v59 = (*(v51 + 80) + v58 + 16) & ~*(v51 + 80);
    v60 = (v50 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
    v61 = swift_allocObject();
    *(v0 + 728) = v61;
    v61[2] = v54;
    v61[3] = v55;
    v61[4] = v80;
    v61[5] = v82;
    sub_100046524(v67, v61 + v56, &qword_100202490, &unk_1001ACF80);
    *(v61 + v57) = 0;
    v62 = (v61 + v58);
    *v62 = v69;
    v62[1] = v70;
    sub_10018EAB4(v68, v61 + v59, _s8DBResultVMa);
    *(v61 + v60) = v71;
    v63 = (v61 + ((v60 + 15) & 0xFFFFFFFFFFFFFFF8));
    *v63 = v72;
    v63[1] = v73;

    sub_100009708(v80, v82);
    sub_100032EBC(v72, v73);
    v64 = swift_allocObject();
    *(v0 + 736) = v64;
    *(v64 + 16) = sub_10018E95C;
    *(v64 + 24) = v61;
    v77(v74, v76, v75);
    v65 = async function pointer to NSManagedObjectContext.perform<A>(schedule:_:)[1];

    v15 = swift_task_alloc();
    *(v0 + 744) = v15;
    *v15 = v0;
    v15[1] = sub_100178B54;
    v66 = *(v0 + 344);
    v16 = *(v0 + 256);
    v17 = sub_10001C0A8;
    v19 = &type metadata for () + 8;
    v18 = v64;

    return NSManagedObjectContext.perform<A>(schedule:_:)(v15, v16, v17, v18, v19);
  }

  v26 = 0;
LABEL_17:
  *(v0 + 464) = v26;
  v33 = *(*(v0 + 296) + 24);
  *(v0 + 764) = v33;
  v34 = swift_task_alloc();
  *(v0 + 472) = v34;
  *v34 = v0;
  v34[1] = sub_100176EF8;
  v35 = *(v0 + 208);
  v36 = *(v0 + 56);
  v37 = *(v0 + 64);
  v38 = *(v0 + 48);
  v39 = *(v0 + 24);

  return sub_10017A074(v35, v38, v36, v32 + v33, v37);
}

uint64_t sub_1001795BC()
{
  v1 = v0[41];
  sub_10001C120(v0[56], v0[57]);
  sub_10018F128(v1, _s8DBResultVMa);
  v22 = v0[60];
  v3 = v0[40];
  v2 = v0[41];
  v4 = v0[36];
  v6 = v0[33];
  v5 = v0[34];
  v7 = v0[32];
  v8 = v0[29];
  v10 = v0[25];
  v9 = v0[26];
  v11 = v0[24];
  v14 = v0[23];
  v15 = v0[20];
  v16 = v0[19];
  v17 = v0[18];
  v18 = v0[17];
  v19 = v0[13];
  v20 = v0[12];
  v21 = v0[11];

  v12 = v0[1];

  return v12();
}

uint64_t sub_100179730()
{
  v1 = v0[56];
  v2 = v0[57];
  v3 = v0[41];
  v5 = v0[28];
  v4 = v0[29];
  v6 = v0[27];
  sub_1000092BC(v0[70], v0[71]);
  sub_10001C120(v1, v2);
  (*(v5 + 8))(v4, v6);
  sub_10018F128(v3, _s8DBResultVMa);
  v27 = v0[74];
  v8 = v0[40];
  v7 = v0[41];
  v9 = v0[36];
  v11 = v0[33];
  v10 = v0[34];
  v12 = v0[32];
  v13 = v0[29];
  v15 = v0[25];
  v14 = v0[26];
  v16 = v0[24];
  v19 = v0[23];
  v20 = v0[20];
  v21 = v0[19];
  v22 = v0[18];
  v23 = v0[17];
  v24 = v0[13];
  v25 = v0[12];
  v26 = v0[11];

  v17 = v0[1];

  return v17();
}

uint64_t sub_1001798D8()
{
  v1 = v0[41];
  v3 = v0[28];
  v2 = v0[29];
  v4 = v0[27];
  sub_10001C120(v0[56], v0[57]);
  (*(v3 + 8))(v2, v4);
  sub_10018F128(v1, _s8DBResultVMa);
  v25 = v0[87];
  v6 = v0[40];
  v5 = v0[41];
  v7 = v0[36];
  v9 = v0[33];
  v8 = v0[34];
  v10 = v0[32];
  v11 = v0[29];
  v13 = v0[25];
  v12 = v0[26];
  v14 = v0[24];
  v17 = v0[23];
  v18 = v0[20];
  v19 = v0[19];
  v20 = v0[18];
  v21 = v0[17];
  v22 = v0[13];
  v23 = v0[12];
  v24 = v0[11];

  v15 = v0[1];

  return v15();
}

uint64_t sub_100179A6C()
{
  v1 = v0[41];
  sub_10001C120(v0[56], v0[57]);
  sub_10018F128(v1, _s8DBResultVMa);
  v22 = v0[89];
  v3 = v0[40];
  v2 = v0[41];
  v4 = v0[36];
  v6 = v0[33];
  v5 = v0[34];
  v7 = v0[32];
  v8 = v0[29];
  v10 = v0[25];
  v9 = v0[26];
  v11 = v0[24];
  v14 = v0[23];
  v15 = v0[20];
  v16 = v0[19];
  v17 = v0[18];
  v18 = v0[17];
  v19 = v0[13];
  v20 = v0[12];
  v21 = v0[11];

  v12 = v0[1];

  return v12();
}

uint64_t sub_100179BE0()
{
  v1 = v0[2];

  v2 = v0[4];

  sub_1000092BC(v0[5], v0[6]);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100179C28(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v11 = v2[6];
  v10 = v2[7];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1000104D4;

  return sub_100175A5C(a1, a2, v6, v7, v8, v9, v11, v10);
}

uint64_t sub_100179D04(uint64_t a1)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = v1;
  return _swift_task_switch(sub_100179D24, 0, 0);
}

uint64_t sub_100179D24()
{
  if (v0[10] == 1)
  {
    v1 = *(v0[11] + 24);
    type metadata accessor for ACLFetcher();
    inited = swift_initStackObject();
    v0[12] = inited;
    *(inited + 16) = v1;
    type metadata accessor for AppleIDVManager();

    sub_1000215BC((inited + 24));
    v3 = swift_task_alloc();
    v0[13] = v3;
    *v3 = v0;
    v3[1] = sub_100179E4C;

    return sub_1000074F0();
  }

  else
  {
    v5 = v0[1];

    return v5(0, 0xF000000000000000);
  }
}

uint64_t sub_100179E4C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 104);
  v8 = *v3;
  *(*v3 + 112) = v2;

  if (v2)
  {
    v9 = sub_100179FFC;
  }

  else
  {
    *(v6 + 120) = a2;
    *(v6 + 128) = a1;
    v9 = sub_100179F80;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_100179F80()
{
  v1 = v0[12];
  swift_setDeallocating();
  v2 = *(v1 + 16);

  sub_100005090((v1 + 24));
  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[1];

  return v5(v3, v4);
}

uint64_t sub_100179FFC()
{
  v1 = v0[12];
  swift_setDeallocating();
  v2 = *(v1 + 16);

  sub_100005090((v1 + 24));
  v3 = v0[1];
  v4 = v0[14];

  return v3();
}

uint64_t sub_10017A074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[16] = a5;
  v6[17] = v5;
  v6[14] = a3;
  v6[15] = a4;
  v6[12] = a1;
  v6[13] = a2;
  v7 = type metadata accessor for ISO18013JumboPackage();
  v6[18] = v7;
  v8 = *(v7 - 8);
  v6[19] = v8;
  v9 = *(v8 + 64) + 15;
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  v10 = *(*(sub_100004E70(&qword_100202498, &unk_1001AD910) - 8) + 64) + 15;
  v6[23] = swift_task_alloc();
  v11 = *(*(sub_100004E70(&qword_100200510, qword_1001AB070) - 8) + 64) + 15;
  v6[24] = swift_task_alloc();
  v12 = type metadata accessor for Logger();
  v6[25] = v12;
  v13 = *(v12 - 8);
  v6[26] = v13;
  v14 = *(v13 + 64) + 15;
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();
  v6[29] = swift_task_alloc();
  v6[30] = swift_task_alloc();

  return _swift_task_switch(sub_10017A244, 0, 0);
}

uint64_t sub_10017A244()
{
  v1 = v0[30];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Fetching the ISO18013JumboPackage", v4, 2u);
  }

  v5 = v0[30];
  v6 = v0[25];
  v7 = v0[26];
  v8 = v0[23];
  v9 = v0[15];

  v10 = *(v7 + 8);
  v0[31] = v10;
  v10(v5, v6);
  sub_100046360(v9, v8, &qword_100202498, &unk_1001AD910);
  v11 = type metadata accessor for KeyLookupInfo();
  v12 = (*(*(v11 - 8) + 48))(v8, 1, v11);
  v13 = v0[23];
  v14 = v0[24];
  if (v12 == 1)
  {
    sub_10000A0D4(v0[23], &qword_100202498, &unk_1001AD910);
    v15 = type metadata accessor for CredentialKeyType();
    (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  }

  else
  {
    v16 = *(v11 + 24);
    v17 = type metadata accessor for CredentialKeyType();
    v18 = *(v17 - 8);
    (*(v18 + 16))(v14, v13 + v16, v17);
    sub_10018F128(v13, type metadata accessor for KeyLookupInfo);
    (*(v18 + 56))(v14, 0, 1, v17);
  }

  v19 = v0[24];
  v20 = v0[17];
  v21 = sub_1000F575C(v0[16], v19);
  v0[32] = v21;
  sub_10000A0D4(v19, &qword_100200510, qword_1001AB070);
  sub_10001A940(v20 + 72, (v0 + 7));
  v22 = sub_100009278(v0 + 7, v0[10]);
  if (v21 && (v23 = [v21 externalizedContext]) != 0)
  {
    v24 = v23;
    v25 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;
  }

  else
  {
    v25 = 0;
    v27 = 0xF000000000000000;
  }

  v0[33] = v25;
  v0[34] = v27;
  v28 = *v22;
  v29 = swift_task_alloc();
  v0[35] = v29;
  *v29 = v0;
  v29[1] = sub_10017A5A0;
  v31 = v0[15];
  v30 = v0[16];
  v32 = v0[13];
  v33 = v0[14];

  return sub_1000F1194((v0 + 2), v32, v33, v30, v31, v25, v27);
}

uint64_t sub_10017A5A0()
{
  v2 = *v1;
  v3 = *(*v1 + 280);
  v4 = *v1;
  *(*v1 + 288) = v0;

  sub_10001C120(*(v2 + 264), *(v2 + 272));
  if (v0)
  {
    v5 = sub_10017A92C;
  }

  else
  {
    v5 = sub_10017A6E8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10017A6E8()
{
  sub_100005090(v0 + 7);
  v1 = v0[5];
  v2 = v0[6];
  sub_100009278(v0 + 2, v1);
  v3 = *(v2 + 48);
  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[37] = v5;
  *v5 = v0;
  v5[1] = sub_10017A814;

  return v7(v1, v2);
}

uint64_t sub_10017A814(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 296);
  v8 = *v3;
  v4[38] = a1;
  v4[39] = a2;
  v4[40] = v2;

  if (v2)
  {
    v6 = sub_10017B024;
  }

  else
  {
    v6 = sub_10017AA10;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10017A92C()
{
  sub_100005090((v0 + 56));
  v1 = *(v0 + 288);
  v3 = *(v0 + 232);
  v2 = *(v0 + 240);
  v5 = *(v0 + 216);
  v4 = *(v0 + 224);
  v7 = *(v0 + 184);
  v6 = *(v0 + 192);
  v9 = *(v0 + 168);
  v8 = *(v0 + 176);
  v10 = *(v0 + 160);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_10017AA10()
{
  v1 = [objc_opt_self() standardUserDefaults];
  v2._object = 0x80000001001BAB90;
  v2._countAndFlagsBits = 0xD000000000000025;
  v3 = NSUserDefaults.internalBool(forKey:)(v2);

  if (v3)
  {
    sub_10019F170(v0[38], v0[39]);
  }

  v4 = v0[39];
  v5 = v0[40];
  v6 = v0[38];
  v7 = v0[22];
  v8 = v0[18];
  v9 = type metadata accessor for CBORDecoder();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  CBORDecoder.init()();
  sub_10018FF54(&qword_100203D08, &type metadata accessor for ISO18013JumboPackage);
  dispatch thunk of CBORDecoder.decode<A>(_:from:)();
  if (v5)
  {
    v12 = v0[27];

    defaultLogger()();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Replace payload called with a non ISO18013JumboPackage. Will attempt to transform the package into ISO18013JumboPackage", v15, 2u);
    }

    v16 = v0[38];
    v17 = v0[39];
    v18 = v0[31];
    v82 = v0[32];
    v20 = v0[26];
    v19 = v0[27];
    v21 = v0[25];
    v22 = v0[12];

    v18(v19, v21);
    sub_100004E70(&qword_100203508, &qword_1001ADD78);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1001AA160;
    *(v23 + 32) = v16;
    *(v23 + 40) = v17;
    sub_100009708(v16, v17);
    static ISO18013JumboPackage.supportedJumboPackageVersion.getter();
    ISO18013JumboPackage.init(version:packages:)();

    sub_1000092BC(v16, v17);

    goto LABEL_26;
  }

  v24 = v0[22];

  v25 = *(ISO18013JumboPackage.packages.getter() + 16);

  if (v25)
  {
    v27 = v0 + 29;
    v26 = v0[29];
    v29 = v0[21];
    v28 = v0[22];
    v31 = v0[19];
    v30 = v0[20];
    v32 = v0[18];
    defaultLogger()();
    v33 = *(v31 + 16);
    v33(v29, v28, v32);
    v33(v30, v28, v32);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v37 = v0[20];
      v36 = v0[21];
      v38 = v0[18];
      v39 = v0[19];
      v40 = swift_slowAlloc();
      *v40 = 134349312;
      v41 = *(ISO18013JumboPackage.packages.getter() + 16);

      v83 = *(v39 + 8);
      v83(v36, v38);
      *(v40 + 4) = v41;
      *(v40 + 12) = 2050;
      v42 = ISO18013JumboPackage.packages.getter();
      if (v42[2])
      {
        v43 = v42[4];
        v44 = v42[5];
        sub_100009708(v43, v44);

        v45 = v44 >> 62;
        if ((v44 >> 62) > 1)
        {
          if (v45 != 2)
          {
            v46 = 0;
            goto LABEL_24;
          }

          v58 = *(v43 + 16);
          v57 = *(v43 + 24);
          sub_1000092BC(v43, v44);
          v59 = __OFSUB__(v57, v58);
          v46 = v57 - v58;
          if (!v59)
          {
            goto LABEL_24;
          }

          __break(1u);
        }

        else if (!v45)
        {
          v46 = BYTE6(v44);
LABEL_24:
          v61 = v0[38];
          v60 = v0[39];
          v62 = v0[32];
          v83(v0[20], v0[18]);
          *(v40 + 14) = v46;
          _os_log_impl(&_mh_execute_header, v34, v35, "Jumbo package contains %{public}ld payloads of size %{public}ld bytes", v40, 0x16u);

          sub_1000092BC(v61, v60);
          v34 = v62;
          goto LABEL_25;
        }

        sub_1000092BC(v43, v44);
        if (!__OFSUB__(HIDWORD(v43), v43))
        {
          v46 = HIDWORD(v43) - v43;
          goto LABEL_24;
        }

        __break(1u);
      }

      __break(1u);
      return result;
    }

    v51 = v0[38];
    v50 = v0[39];
    v52 = v0[32];
    v54 = v0[21];
    v55 = v0[18];
    v56 = *(v0[19] + 8);
    v56(v0[20], v55);
    v56(v54, v55);
    goto LABEL_16;
  }

  v27 = v0 + 28;
  v47 = v0[28];
  defaultLogger()();
  v34 = Logger.logObject.getter();
  v48 = static os_log_type_t.info.getter();
  v49 = os_log_type_enabled(v34, v48);
  v51 = v0[38];
  v50 = v0[39];
  v52 = v0[32];
  if (!v49)
  {
LABEL_16:

    sub_1000092BC(v51, v50);
    goto LABEL_25;
  }

  v53 = swift_slowAlloc();
  *v53 = 0;
  _os_log_impl(&_mh_execute_header, v34, v48, "Jumbo package contains no payloads", v53, 2u);

  sub_1000092BC(v51, v50);
  v34 = v52;
LABEL_25:
  v63 = *v27;
  v64 = v0[31];
  v65 = v0[25];
  v66 = v0[26];
  v67 = v0[22];
  v68 = v0[18];
  v69 = v0[19];
  v70 = v0[12];

  v64(v63, v65);
  (*(v69 + 32))(v70, v67, v68);
LABEL_26:
  v71 = v0[29];
  v72 = v0[30];
  v74 = v0[27];
  v73 = v0[28];
  v76 = v0[23];
  v75 = v0[24];
  v78 = v0[21];
  v77 = v0[22];
  v79 = v0[20];
  (*(v0[19] + 56))(v0[12], 0, 1, v0[18]);
  sub_100005090(v0 + 2);

  v80 = v0[1];

  return v80();
}

uint64_t sub_10017B024()
{
  sub_100005090((v0 + 16));
  v1 = *(v0 + 320);
  v3 = *(v0 + 232);
  v2 = *(v0 + 240);
  v5 = *(v0 + 216);
  v4 = *(v0 + 224);
  v7 = *(v0 + 184);
  v6 = *(v0 + 192);
  v9 = *(v0 + 168);
  v8 = *(v0 + 176);
  v10 = *(v0 + 160);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_10017B108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[15] = v30;
  v9[16] = v8;
  v9[13] = a7;
  v9[14] = a8;
  v9[11] = a5;
  v9[12] = a6;
  v9[9] = a3;
  v9[10] = a4;
  v9[7] = a1;
  v9[8] = a2;
  v10 = type metadata accessor for DIPError();
  v9[17] = v10;
  v11 = *(v10 - 8);
  v9[18] = v11;
  v12 = *(v11 + 64) + 15;
  v9[19] = swift_task_alloc();
  v13 = type metadata accessor for DIPError.Code();
  v9[20] = v13;
  v14 = *(v13 - 8);
  v9[21] = v14;
  v15 = *(v14 + 64) + 15;
  v9[22] = swift_task_alloc();
  v16 = type metadata accessor for ISO18013MobileSecurityObject.IdentifierList();
  v9[23] = v16;
  v17 = *(v16 - 8);
  v9[24] = v17;
  v18 = *(v17 + 64) + 15;
  v9[25] = swift_task_alloc();
  v9[26] = swift_task_alloc();
  v19 = *(*(sub_100004E70(&qword_100203870, &qword_1001AE008) - 8) + 64) + 15;
  v9[27] = swift_task_alloc();
  v9[28] = swift_task_alloc();
  v9[29] = swift_task_alloc();
  v20 = *(*(sub_100004E70(&qword_1002004D0, &unk_1001AE1C0) - 8) + 64) + 15;
  v9[30] = swift_task_alloc();
  v21 = type metadata accessor for PayloadMetadata();
  v9[31] = v21;
  v22 = *(*(v21 - 8) + 64) + 15;
  v9[32] = swift_task_alloc();
  v9[33] = swift_task_alloc();
  v9[34] = swift_task_alloc();
  v9[35] = swift_task_alloc();
  v9[36] = swift_task_alloc();
  v9[37] = swift_task_alloc();
  v9[38] = swift_task_alloc();
  v9[39] = swift_task_alloc();
  v9[40] = swift_task_alloc();
  v9[41] = swift_task_alloc();
  v9[42] = swift_task_alloc();
  v9[43] = swift_task_alloc();
  v23 = *(*(sub_100004E70(&qword_100202498, &unk_1001AD910) - 8) + 64) + 15;
  v9[44] = swift_task_alloc();
  v24 = *(*(sub_100004E70(&qword_100200510, qword_1001AB070) - 8) + 64) + 15;
  v9[45] = swift_task_alloc();
  v25 = type metadata accessor for Logger();
  v9[46] = v25;
  v26 = *(v25 - 8);
  v9[47] = v26;
  v27 = *(v26 + 64) + 15;
  v9[48] = swift_task_alloc();
  v9[49] = swift_task_alloc();
  v9[50] = swift_task_alloc();
  v9[51] = swift_task_alloc();

  return _swift_task_switch(sub_10017B4D0, 0, 0);
}

uint64_t sub_10017B4D0()
{
  v1 = v0[51];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Validating credential payload", v4, 2u);
  }

  v5 = v0[51];
  v6 = v0[46];
  v7 = v0[47];
  v8 = v0[44];
  v9 = v0[12];

  v10 = *(v7 + 8);
  v0[52] = v10;
  v10(v5, v6);
  sub_100046360(v9, v8, &qword_100202498, &unk_1001AD910);
  v11 = type metadata accessor for KeyLookupInfo();
  v12 = (*(*(v11 - 8) + 48))(v8, 1, v11);
  v13 = v0[44];
  v14 = v0[45];
  if (v12 == 1)
  {
    sub_10000A0D4(v0[44], &qword_100202498, &unk_1001AD910);
    v15 = type metadata accessor for CredentialKeyType();
    (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  }

  else
  {
    v16 = *(v11 + 24);
    v17 = type metadata accessor for CredentialKeyType();
    v18 = *(v17 - 8);
    (*(v18 + 16))(v14, v13 + v16, v17);
    sub_10018F128(v13, type metadata accessor for KeyLookupInfo);
    (*(v18 + 56))(v14, 0, 1, v17);
  }

  v19 = v0[45];
  v20 = v0[8];
  v21 = sub_1000F575C(v0[11], v19);
  v0[53] = v21;
  sub_10000A0D4(v19, &qword_100200510, qword_1001AB070);
  v22 = sub_100009278(v20, v20[3]);
  if (v21 && (v23 = [v21 externalizedContext]) != 0)
  {
    v24 = v23;
    v25 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;
  }

  else
  {
    v25 = 0;
    v27 = 0xF000000000000000;
  }

  v0[54] = v25;
  v0[55] = v27;
  v28 = *v22;
  v29 = swift_task_alloc();
  v0[56] = v29;
  *v29 = v0;
  v29[1] = sub_10017B824;
  v30 = v0[11];
  v31 = v0[12];
  v32 = v0[9];
  v33 = v0[10];

  return sub_1000F1194((v0 + 2), v32, v33, v30, v31, v25, v27);
}

uint64_t sub_10017B824()
{
  v2 = *v1;
  v3 = *(*v1 + 448);
  v4 = *v1;
  *(*v1 + 456) = v0;

  sub_10001C120(*(v2 + 432), *(v2 + 440));
  if (v0)
  {
    v5 = sub_10017BBB0;
  }

  else
  {
    v5 = sub_10017B96C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10017B96C()
{
  v1 = v0[5];
  v2 = v0[6];
  sub_100009278(v0 + 2, v1);
  v3 = *(v2 + 8);
  v8 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[58] = v5;
  *v5 = v0;
  v5[1] = sub_10017BA9C;
  v6 = v0[43];

  return (v8)(v6, 0, v1, v2);
}

uint64_t sub_10017BA9C()
{
  v2 = *(*v1 + 464);
  v5 = *v1;
  *(*v1 + 472) = v0;

  if (v0)
  {
    v3 = sub_10017DD88;
  }

  else
  {
    v3 = sub_10017BE6C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10017BBB0()
{
  v1 = *(v0 + 456);
  v2 = *(v0 + 400);
  v3 = *(v0 + 408);
  v7 = *(v0 + 392);
  v8 = *(v0 + 384);
  v9 = *(v0 + 360);
  v10 = *(v0 + 352);
  v11 = *(v0 + 344);
  v12 = *(v0 + 336);
  v13 = *(v0 + 328);
  v14 = *(v0 + 320);
  v15 = *(v0 + 312);
  v16 = *(v0 + 304);
  v17 = *(v0 + 296);
  v18 = *(v0 + 288);
  v19 = *(v0 + 280);
  v20 = *(v0 + 272);
  v21 = *(v0 + 264);
  v22 = *(v0 + 256);
  v23 = *(v0 + 240);
  v24 = *(v0 + 232);
  v25 = *(v0 + 224);
  v27 = *(v0 + 216);
  v28 = *(v0 + 208);
  v29 = *(v0 + 200);
  v26 = *(v0 + 152);
  v4 = *(v0 + 136);
  (*(*(v0 + 168) + 104))(*(v0 + 176), enum case for DIPError.Code.internalError(_:), *(v0 + 160));
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  sub_10018FF54(&qword_100200200, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10017BE6C()
{
  v1 = v0[5];
  v2 = v0[6];
  sub_100009278(v0 + 2, v1);
  v3 = *(v2 + 40);
  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[60] = v5;
  *v5 = v0;
  v5[1] = sub_10017BF90;

  return v7(v1, v2);
}

uint64_t sub_10017BF90(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 480);
  v7 = *v2;
  *(v3 + 488) = a1;
  *(v3 + 496) = v1;

  if (v1)
  {
    v5 = sub_10017E04C;
  }

  else
  {
    v5 = sub_10017C0A4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10017C0A4()
{
  v154 = v0;
  v1 = v0[61];
  v2 = v0[52];
  v4 = v0[49];
  v3 = v0[50];
  v6 = v0[46];
  v5 = v0[47];
  v8 = v0[42];
  v7 = v0[43];
  v129 = v0[41];
  v130 = v0[40];
  v131 = v0[39];
  v132 = v0[38];
  v135 = v0[37];
  v137 = v0[36];
  loga = v0[35];
  v143 = v0[34];
  v145 = v0[33];
  v149 = v0[32];
  defaultLogger()();
  *(swift_task_alloc() + 16) = v1;
  Logger.sensitive(_:)();

  v0[63] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v2(v3, v6);
  defaultLogger()();
  sub_10018EB60(v7, v8, type metadata accessor for PayloadMetadata);
  sub_10018EB60(v7, v129, type metadata accessor for PayloadMetadata);
  sub_10018EB60(v7, v130, type metadata accessor for PayloadMetadata);
  sub_10018EB60(v7, v131, type metadata accessor for PayloadMetadata);
  sub_10018EB60(v7, v132, type metadata accessor for PayloadMetadata);
  sub_10018EB60(v7, v135, type metadata accessor for PayloadMetadata);
  sub_10018EB60(v7, v137, type metadata accessor for PayloadMetadata);
  sub_10018EB60(v7, loga, type metadata accessor for PayloadMetadata);
  sub_10018EB60(v7, v143, type metadata accessor for PayloadMetadata);
  sub_10018EB60(v7, v145, type metadata accessor for PayloadMetadata);
  sub_10018EB60(v7, v149, type metadata accessor for PayloadMetadata);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v138 = v10;
    log = v9;
    v11 = v0[41];
    v12 = v0[42];
    v13 = v0[40];
    v133 = v0[39];
    v14 = v0[31];
    v146 = v0[30];
    v150 = v0[38];
    v15 = swift_slowAlloc();
    v153 = swift_slowAlloc();
    *v15 = 136448770;
    v16 = *(v12 + 16);
    v17 = DCCredentialPayloadFormatToString();
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    sub_10018F128(v12, type metadata accessor for PayloadMetadata);
    v21 = sub_10010150C(v18, v20, &v153);

    *(v15 + 4) = v21;
    *(v15 + 12) = 2082;
    v22 = *v11;
    v23 = v11[1];

    sub_10018F128(v11, type metadata accessor for PayloadMetadata);
    v24 = sub_10010150C(v22, v23, &v153);

    *(v15 + 14) = v24;
    *(v15 + 22) = 2080;
    v25 = v14[8];
    v26 = type metadata accessor for Date();
    sub_10018FF54(&qword_100200500, &type metadata accessor for Date);
    v27 = dispatch thunk of CustomStringConvertible.description.getter();
    v29 = v28;
    sub_10018F128(v13, type metadata accessor for PayloadMetadata);
    v30 = sub_10010150C(v27, v29, &v153);

    *(v15 + 24) = v30;
    *(v15 + 32) = 2080;
    v31 = v133 + v14[9];
    v32 = dispatch thunk of CustomStringConvertible.description.getter();
    v34 = v33;
    sub_10018F128(v133, type metadata accessor for PayloadMetadata);
    v35 = sub_10010150C(v32, v34, &v153);

    *(v15 + 34) = v35;
    *(v15 + 42) = 2080;
    sub_100046360(v150 + v14[10], v146, &qword_1002004D0, &unk_1001AE1C0);
    v36 = *(v26 - 8);
    v37 = (*(v36 + 48))(v146, 1, v26);
    v38 = v0[30];
    if (v37 == 1)
    {
      sub_10000A0D4(v0[30], &qword_1002004D0, &unk_1001AE1C0);
      v39 = 0xE500000000000000;
      v40 = 0x3E6C696E3CLL;
    }

    else
    {
      v48 = v0[30];
      v40 = Date.description.getter();
      v39 = v49;
      (*(v36 + 8))(v38, v26);
    }

    v50 = v0[37];
    v51 = v0[31];
    sub_10018F128(v0[38], type metadata accessor for PayloadMetadata);
    v52 = sub_10010150C(v40, v39, &v153);

    *(v15 + 44) = v52;
    *(v15 + 52) = 2080;
    v53 = (v50 + *(v51 + 52));
    if (v53[1])
    {
      v54 = *v53;
      v55 = v53[1];
    }

    else
    {
      v55 = 0xE500000000000000;
      v54 = 0x3E6C696E3CLL;
    }

    v57 = v0[36];
    v56 = v0[37];
    v58 = v0[31];

    sub_10018F128(v56, type metadata accessor for PayloadMetadata);
    v59 = sub_10010150C(v54, v55, &v153);

    *(v15 + 54) = v59;
    *(v15 + 62) = 2080;
    v60 = (v57 + *(v58 + 56));
    if (v60[1])
    {
      v61 = *v60;
      v62 = v60[1];
    }

    else
    {
      v62 = 0xE500000000000000;
      v61 = 0x3E6C696E3CLL;
    }

    v64 = v0[35];
    v63 = v0[36];
    v65 = v0[31];

    sub_10018F128(v63, type metadata accessor for PayloadMetadata);
    v66 = sub_10010150C(v61, v62, &v153);

    *(v15 + 64) = v66;
    *(v15 + 72) = 2080;
    v67 = (v64 + *(v65 + 60));
    if (v67[1])
    {
      v68 = *v67;
      v69 = v67[1];
    }

    else
    {
      v69 = 0xE500000000000000;
      v68 = 0x3E6C696E3CLL;
    }

    v71 = v0[34];
    v70 = v0[35];
    v72 = v0[31];
    v73 = v0[29];
    v74 = v0[23];
    v75 = v0[24];

    sub_10018F128(v70, type metadata accessor for PayloadMetadata);
    v76 = sub_10010150C(v68, v69, &v153);

    *(v15 + 74) = v76;
    *(v15 + 82) = 2080;
    v152 = v72;
    sub_100046360(v71 + *(v72 + 64), v73, &qword_100203870, &qword_1001AE008);
    v148 = *(v75 + 48);
    if (v148(v73, 1, v74) == 1)
    {
      object = 0xE500000000000000;
      countAndFlagsBits = 0x3E6C696E3CLL;
    }

    else
    {
      v79 = v0[26];
      v80 = v0[23];
      v81 = v0[24];
      (*(v81 + 32))(v79, v0[29], v80);
      v82 = ISO18013MobileSecurityObject.IdentifierList.id.getter();
      v84 = v83;
      v85 = Data.base16EncodedString()();
      countAndFlagsBits = v85._countAndFlagsBits;
      object = v85._object;
      sub_1000092BC(v82, v84);
      (*(v81 + 8))(v79, v80);
    }

    v86 = v0[33];
    v87 = v0[28];
    v88 = v0[23];
    sub_10018F128(v0[34], type metadata accessor for PayloadMetadata);
    v89 = sub_10010150C(countAndFlagsBits, object, &v153);

    *(v15 + 84) = v89;
    *(v15 + 92) = 2080;
    sub_100046360(v86 + *(v152 + 64), v87, &qword_100203870, &qword_1001AE008);
    if (v148(v87, 1, v88) == 1)
    {
      v90 = 0xE500000000000000;
      v91 = 0x3E6C696E3CLL;
    }

    else
    {
      (*(v0[24] + 32))(v0[25], v0[28], v0[23]);
      v92 = ISO18013MobileSecurityObject.IdentifierList.certificate.getter();
      if (v93 >> 60 == 15)
      {
        v90 = 0xE500000000000000;
        v91 = 0x3E6C696E3CLL;
      }

      else
      {
        v94 = v92;
        v95 = v93;
        v96 = Data.base64EncodedString(options:)(0);
        v91 = v96._countAndFlagsBits;
        v90 = v96._object;
        sub_10001C120(v94, v95);
      }

      (*(v0[24] + 8))(v0[25], v0[23]);
    }

    v97 = v0[32];
    v98 = v0[27];
    v99 = v0[23];
    sub_10018F128(v0[33], type metadata accessor for PayloadMetadata);
    v100 = sub_10010150C(v91, v90, &v153);

    *(v15 + 94) = v100;
    *(v15 + 102) = 2080;
    sub_100046360(v97 + *(v152 + 64), v98, &qword_100203870, &qword_1001AE008);
    if (v148(v98, 1, v99) == 1)
    {
      v101 = 0xE500000000000000;
      v102 = 0x3E6C696E3CLL;
    }

    else
    {
      v103 = v0[26];
      v104 = v0[23];
      v105 = v0[24];
      (*(v105 + 32))(v103, v0[27], v104);
      v102 = ISO18013MobileSecurityObject.IdentifierList.uri.getter();
      v101 = v106;
      (*(v105 + 8))(v103, v104);
    }

    v107 = v0[52];
    v108 = v0[49];
    v109 = v0[46];
    sub_10018F128(v0[32], type metadata accessor for PayloadMetadata);
    v110 = sub_10010150C(v102, v101, &v153);

    *(v15 + 104) = v110;
    _os_log_impl(&_mh_execute_header, log, v138, "Saving validated payload with format %{public}s,\n    doc type %{public}s,\n    valid from %s,\n    valid until %s,X\n    valid signedAt %s,\n    region %s,\n    issuing jurisdiction %s,\n    issuing authority %s,\n    credentialRevocationInfo:\n        identifier: %s\n        certificate: %s\n        uri: %s", v15, 0x70u);
    swift_arrayDestroy();

    v107(v108, v109);
  }

  else
  {
    v147 = v0[49];
    v151 = v0[52];
    logb = v0[42];
    v144 = v0[46];
    v136 = v0[40];
    v139 = v0[41];
    v134 = v0[39];
    v42 = v0[37];
    v41 = v0[38];
    v43 = v0[35];
    v44 = v0[36];
    v46 = v0[33];
    v45 = v0[34];
    v47 = v0[32];

    sub_10018F128(v47, type metadata accessor for PayloadMetadata);
    sub_10018F128(v46, type metadata accessor for PayloadMetadata);
    sub_10018F128(v45, type metadata accessor for PayloadMetadata);
    sub_10018F128(v43, type metadata accessor for PayloadMetadata);
    sub_10018F128(v44, type metadata accessor for PayloadMetadata);
    sub_10018F128(v42, type metadata accessor for PayloadMetadata);
    sub_10018F128(v41, type metadata accessor for PayloadMetadata);
    sub_10018F128(v134, type metadata accessor for PayloadMetadata);
    sub_10018F128(v136, type metadata accessor for PayloadMetadata);
    sub_10018F128(v139, type metadata accessor for PayloadMetadata);
    sub_10018F128(logb, type metadata accessor for PayloadMetadata);
    v151(v147, v144);
  }

  v111 = v0[61];
  v112 = v0[52];
  v113 = v0[50];
  v114 = v0[46];
  v115 = v0[43];
  v116 = v0[31];
  defaultLogger()();
  *(swift_task_alloc() + 16) = v115;
  Logger.sensitive(_:)();

  v112(v113, v114);
  v117 = sub_10000ED58();
  sub_10000DBD0(v115, v111, v117, v118);

  v120 = *v115;
  v119 = v115[1];
  v121 = (v115 + *(v116 + 60));
  if (v121[1])
  {
    v122 = *v121;
    v123 = v121[1];
  }

  else
  {
    v122 = 0;
    v123 = 0xE000000000000000;
  }

  v0[64] = v123;

  v124 = swift_task_alloc();
  v0[65] = v124;
  *v124 = v0;
  v124[1] = sub_10017CCBC;
  v125 = v0[16];
  v126 = v0[13];
  v127 = v0[14];

  return sub_100183EF4(v120, v119, v122, v123, v126, v127);
}

uint64_t sub_10017CCBC(char a1)
{
  v2 = *(*v1 + 520);
  v3 = *(*v1 + 512);
  v5 = *v1;
  *(*v1 + 568) = a1;

  return _swift_task_switch(sub_10017CDDC, 0, 0);
}

uint64_t sub_10017CDDC()
{
  if (*(v0 + 568) == 1)
  {
    v1 = *(v0 + 384);
    defaultLogger()();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Performing device cross check", v4, 2u);
    }

    v5 = *(v0 + 504);
    v6 = *(v0 + 488);
    v7 = *(v0 + 416);
    v8 = *(v0 + 384);
    v9 = *(v0 + 368);

    v7(v8, v9);
    v10 = *(v0 + 40);
    v11 = *(v0 + 48);
    sub_100009278((v0 + 16), v10);
    v12 = *(v11 + 16);

    v44 = (v12 + *v12);
    v13 = v12[1];
    v14 = swift_task_alloc();
    *(v0 + 528) = v14;
    *v14 = v0;
    v14[1] = sub_10017D17C;

    return v44(v6, v10, v11);
  }

  else
  {
    v16 = *(v0 + 344);
    v17 = *(v0 + 56);

    sub_10018EAB4(v16, v17, type metadata accessor for PayloadMetadata);
    v19 = *(v0 + 400);
    v18 = *(v0 + 408);
    v20 = *(v0 + 384);
    v21 = *(v0 + 392);
    v23 = *(v0 + 352);
    v22 = *(v0 + 360);
    v25 = *(v0 + 336);
    v24 = *(v0 + 344);
    v26 = *(v0 + 328);
    v29 = *(v0 + 320);
    v30 = *(v0 + 312);
    v31 = *(v0 + 304);
    v32 = *(v0 + 296);
    v33 = *(v0 + 288);
    v34 = *(v0 + 280);
    v35 = *(v0 + 272);
    v36 = *(v0 + 264);
    v37 = *(v0 + 256);
    v38 = *(v0 + 240);
    v39 = *(v0 + 232);
    v40 = *(v0 + 224);
    v41 = *(v0 + 216);
    v42 = *(v0 + 208);
    v43 = *(v0 + 200);
    v45 = *(v0 + 176);
    v46 = *(v0 + 152);
    sub_100005090((v0 + 16));

    v27 = *(v0 + 8);
    v28 = *(v0 + 488);

    return v27(v28);
  }
}

uint64_t sub_10017D17C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 528);
  v8 = *v2;
  v3[67] = a1;
  v3[68] = v1;

  if (v1)
  {
    v5 = sub_10017E330;
  }

  else
  {
    v6 = v3[61];

    v5 = sub_10017D29C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10017D29C()
{
  v1 = *(v0 + 544);
  v2 = *(v0 + 120);
  v3 = *(v0 + 128);
  v4 = sub_10016A520(*(v0 + 104), *(v0 + 112));
  if (v1)
  {
    v5 = *(v0 + 152);
    (*(*(v0 + 168) + 104))(*(v0 + 176), enum case for DIPError.Code.failedToPerformDeviceCrossCheckFailedToGetElements(_:), *(v0 + 160));
    sub_10002688C(_swiftEmptyArrayStorage);
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    v6 = [objc_opt_self() standardUserDefaults];
    v7._countAndFlagsBits = static SharedInternalDefaultsKeys.makeDeviceCrossCheckErrorsTerminal.getter();
    v8 = NSUserDefaults.internalBool(forKey:)(v7);

    v91 = *(v0 + 544);
    v9 = *(v0 + 424);
    if (v8)
    {
      v10 = *(v0 + 488);
      v12 = *(v0 + 144);
      v11 = *(v0 + 152);
      v13 = *(v0 + 136);

      sub_10018FF54(&qword_100200200, &type metadata accessor for DIPError);
      swift_allocError();
      (*(v12 + 16))(v14, v11, v13);
      swift_willThrow();

      (*(v12 + 8))(v11, v13);
      if (!v91)
      {
        v15 = *(v0 + 536);
      }

      sub_10018F128(*(v0 + 344), type metadata accessor for PayloadMetadata);
      sub_100005090((v0 + 16));
      v17 = *(v0 + 400);
      v16 = *(v0 + 408);
      v50 = *(v0 + 392);
      v51 = *(v0 + 384);
      v52 = *(v0 + 360);
      v53 = *(v0 + 352);
      v54 = *(v0 + 344);
      v55 = *(v0 + 336);
      v56 = *(v0 + 328);
      v57 = *(v0 + 320);
      v58 = *(v0 + 312);
      v60 = *(v0 + 304);
      v62 = *(v0 + 296);
      v64 = *(v0 + 288);
      v66 = *(v0 + 280);
      v68 = *(v0 + 272);
      v70 = *(v0 + 264);
      v72 = *(v0 + 256);
      v74 = *(v0 + 240);
      v76 = *(v0 + 232);
      v78 = *(v0 + 224);
      v80 = *(v0 + 216);
      v82 = *(v0 + 208);
      v84 = *(v0 + 200);
      v92 = *(v0 + 152);
      v18 = *(v0 + 136);
      (*(*(v0 + 168) + 104))(*(v0 + 176), enum case for DIPError.Code.internalError(_:), *(v0 + 160));
      swift_errorRetain();
      sub_10002688C(_swiftEmptyArrayStorage);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();

      v19 = *(v0 + 8);

      return v19();
    }

    else
    {
      v25 = *(v0 + 416);
      v26 = *(v0 + 400);
      v27 = *(v0 + 368);
      v89 = *(v0 + 344);
      v28 = *(v0 + 144);
      v29 = *(v0 + 152);
      v30 = *(v0 + 136);
      v85 = *(v0 + 504);
      v87 = *(v0 + 56);
      sub_10018FF54(&qword_100200200, &type metadata accessor for DIPError);
      swift_allocError();
      (*(v28 + 16))(v31, v29, v30);
      defaultLogger()();
      DIPRecordError(_:message:log:)();

      v25(v26, v27);
      (*(v28 + 8))(v29, v30);

      sub_10018EB60(v89, v87, type metadata accessor for PayloadMetadata);
      if (!v91)
      {
        v32 = *(v0 + 536);
      }

      sub_10018F128(*(v0 + 344), type metadata accessor for PayloadMetadata);
      v34 = *(v0 + 400);
      v33 = *(v0 + 408);
      v35 = *(v0 + 384);
      v36 = *(v0 + 392);
      v38 = *(v0 + 352);
      v37 = *(v0 + 360);
      v40 = *(v0 + 336);
      v39 = *(v0 + 344);
      v41 = *(v0 + 328);
      v59 = *(v0 + 320);
      v61 = *(v0 + 312);
      v63 = *(v0 + 304);
      v65 = *(v0 + 296);
      v67 = *(v0 + 288);
      v69 = *(v0 + 280);
      v71 = *(v0 + 272);
      v73 = *(v0 + 264);
      v75 = *(v0 + 256);
      v77 = *(v0 + 240);
      v79 = *(v0 + 232);
      v81 = *(v0 + 224);
      v83 = *(v0 + 216);
      v86 = *(v0 + 208);
      v88 = *(v0 + 200);
      v90 = *(v0 + 176);
      v93 = *(v0 + 152);
      sub_100005090((v0 + 16));

      v42 = *(v0 + 8);
      v43 = *(v0 + 488);

      return v42(v43);
    }
  }

  else
  {
    v21 = v4;
    v22 = [v4 options];
    if (v22)
    {
      v23 = v22;
      v24 = [v22 isPIIHashMismatchTerminal];
    }

    else
    {
      v24 = 0;
    }

    v44 = swift_task_alloc();
    *(v0 + 552) = v44;
    *v44 = v0;
    v44[1] = sub_10017DA60;
    v45 = *(v0 + 536);
    v46 = *(v0 + 120);
    v47 = *(v0 + 128);
    v48 = *(v0 + 104);
    v49 = *(v0 + 112);

    return sub_1001843E4(v45, v48, v49, v24, v46);
  }
}

uint64_t sub_10017DA60()
{
  v2 = *v1;
  v3 = *(*v1 + 552);
  v4 = *v1;
  v2[70] = v0;

  v5 = v2[67];
  if (v0)
  {
    v6 = v2[61];

    v7 = sub_10017EA14;
  }

  else
  {

    v7 = sub_10017DBA4;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10017DBA4()
{
  v1 = *(v0 + 344);
  v2 = *(v0 + 56);

  sub_10018EAB4(v1, v2, type metadata accessor for PayloadMetadata);
  v4 = *(v0 + 400);
  v3 = *(v0 + 408);
  v5 = *(v0 + 384);
  v6 = *(v0 + 392);
  v8 = *(v0 + 352);
  v7 = *(v0 + 360);
  v10 = *(v0 + 336);
  v9 = *(v0 + 344);
  v11 = *(v0 + 328);
  v15 = *(v0 + 320);
  v16 = *(v0 + 312);
  v17 = *(v0 + 304);
  v18 = *(v0 + 296);
  v19 = *(v0 + 288);
  v20 = *(v0 + 280);
  v21 = *(v0 + 272);
  v22 = *(v0 + 264);
  v23 = *(v0 + 256);
  v24 = *(v0 + 240);
  v25 = *(v0 + 232);
  v26 = *(v0 + 224);
  v27 = *(v0 + 216);
  v28 = *(v0 + 208);
  v29 = *(v0 + 200);
  v30 = *(v0 + 176);
  v31 = *(v0 + 152);
  sub_100005090((v0 + 16));

  v12 = *(v0 + 8);
  v13 = *(v0 + 488);

  return v12(v13);
}

uint64_t sub_10017DD88()
{
  sub_100005090((v0 + 16));
  v1 = *(v0 + 472);
  v2 = *(v0 + 400);
  v3 = *(v0 + 408);
  v7 = *(v0 + 392);
  v8 = *(v0 + 384);
  v9 = *(v0 + 360);
  v10 = *(v0 + 352);
  v11 = *(v0 + 344);
  v12 = *(v0 + 336);
  v13 = *(v0 + 328);
  v14 = *(v0 + 320);
  v15 = *(v0 + 312);
  v16 = *(v0 + 304);
  v17 = *(v0 + 296);
  v18 = *(v0 + 288);
  v19 = *(v0 + 280);
  v20 = *(v0 + 272);
  v21 = *(v0 + 264);
  v22 = *(v0 + 256);
  v23 = *(v0 + 240);
  v24 = *(v0 + 232);
  v25 = *(v0 + 224);
  v27 = *(v0 + 216);
  v28 = *(v0 + 208);
  v29 = *(v0 + 200);
  v26 = *(v0 + 152);
  v4 = *(v0 + 136);
  (*(*(v0 + 168) + 104))(*(v0 + 176), enum case for DIPError.Code.internalError(_:), *(v0 + 160));
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  sub_10018FF54(&qword_100200200, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10017E04C()
{
  v1 = *(v0 + 344);

  sub_10018F128(v1, type metadata accessor for PayloadMetadata);
  sub_100005090((v0 + 16));
  v2 = *(v0 + 496);
  v3 = *(v0 + 400);
  v4 = *(v0 + 408);
  v8 = *(v0 + 392);
  v9 = *(v0 + 384);
  v10 = *(v0 + 360);
  v11 = *(v0 + 352);
  v12 = *(v0 + 344);
  v13 = *(v0 + 336);
  v14 = *(v0 + 328);
  v15 = *(v0 + 320);
  v16 = *(v0 + 312);
  v17 = *(v0 + 304);
  v18 = *(v0 + 296);
  v19 = *(v0 + 288);
  v20 = *(v0 + 280);
  v21 = *(v0 + 272);
  v22 = *(v0 + 264);
  v23 = *(v0 + 256);
  v24 = *(v0 + 240);
  v25 = *(v0 + 232);
  v26 = *(v0 + 224);
  v28 = *(v0 + 216);
  v29 = *(v0 + 208);
  v30 = *(v0 + 200);
  v27 = *(v0 + 152);
  v5 = *(v0 + 136);
  (*(*(v0 + 168) + 104))(*(v0 + 176), enum case for DIPError.Code.internalError(_:), *(v0 + 160));
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  sub_10018FF54(&qword_100200200, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10017E330()
{
  v1 = v0[61];

  v80 = v0[68];
  v2 = v0[19];
  (*(v0[21] + 104))(v0[22], enum case for DIPError.Code.failedToPerformDeviceCrossCheckFailedToGetElements(_:), v0[20]);
  sub_10002688C(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  v3 = [objc_opt_self() standardUserDefaults];
  v4._countAndFlagsBits = static SharedInternalDefaultsKeys.makeDeviceCrossCheckErrorsTerminal.getter();
  v5 = NSUserDefaults.internalBool(forKey:)(v4);

  v77 = v0[68];
  if (v5)
  {
    v6 = v0[61];
    v7 = v0[53];
    v8 = v0[18];
    v9 = v0[19];
    v10 = v0[17];

    sub_10018FF54(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    (*(v8 + 16))(v11, v9, v10);
    swift_willThrow();

    (*(v8 + 8))(v9, v10);
    if (!v77)
    {
      v12 = v0[67];
    }

    sub_10018F128(v0[43], type metadata accessor for PayloadMetadata);
    sub_100005090(v0 + 2);
    v14 = v0[50];
    v13 = v0[51];
    v39 = v0[49];
    v40 = v0[48];
    v41 = v0[45];
    v42 = v0[44];
    v43 = v0[43];
    v44 = v0[42];
    v45 = v0[41];
    v47 = v0[40];
    v49 = v0[39];
    v51 = v0[38];
    v53 = v0[37];
    v55 = v0[36];
    v57 = v0[35];
    v59 = v0[34];
    v61 = v0[33];
    v63 = v0[32];
    v65 = v0[30];
    v67 = v0[29];
    v69 = v0[28];
    v71 = v0[27];
    v74 = v0[26];
    v78 = v0[25];
    v81 = v0[19];
    v15 = v0[17];
    (*(v0[21] + 104))(v0[22], enum case for DIPError.Code.internalError(_:), v0[20]);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v16 = v0[1];

    return v16();
  }

  else
  {
    v18 = v0[63];
    v20 = v0[52];
    v19 = v0[53];
    v21 = v0[50];
    v22 = v0[46];
    v23 = v0[18];
    v24 = v0[19];
    v25 = v0[17];
    v72 = v0[7];
    v75 = v0[43];
    sub_10018FF54(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    (*(v23 + 16))(v26, v24, v25);
    defaultLogger()();
    DIPRecordError(_:message:log:)();

    v20(v21, v22);
    (*(v23 + 8))(v24, v25);

    sub_10018EB60(v75, v72, type metadata accessor for PayloadMetadata);
    if (!v77)
    {
      v27 = v0[67];
    }

    sub_10018F128(v0[43], type metadata accessor for PayloadMetadata);
    v29 = v0[50];
    v28 = v0[51];
    v30 = v0[48];
    v31 = v0[49];
    v33 = v0[44];
    v32 = v0[45];
    v35 = v0[42];
    v34 = v0[43];
    v36 = v0[41];
    v46 = v0[40];
    v48 = v0[39];
    v50 = v0[38];
    v52 = v0[37];
    v54 = v0[36];
    v56 = v0[35];
    v58 = v0[34];
    v60 = v0[33];
    v62 = v0[32];
    v64 = v0[30];
    v66 = v0[29];
    v68 = v0[28];
    v70 = v0[27];
    v73 = v0[26];
    v76 = v0[25];
    v79 = v0[22];
    v82 = v0[19];
    sub_100005090(v0 + 2);

    v37 = v0[1];
    v38 = v0[61];

    return v37(v38);
  }
}

uint64_t sub_10017EA14()
{
  v1 = *(v0 + 344);

  sub_10018F128(v1, type metadata accessor for PayloadMetadata);
  sub_100005090((v0 + 16));
  v2 = *(v0 + 560);
  v3 = *(v0 + 400);
  v4 = *(v0 + 408);
  v8 = *(v0 + 392);
  v9 = *(v0 + 384);
  v10 = *(v0 + 360);
  v11 = *(v0 + 352);
  v12 = *(v0 + 344);
  v13 = *(v0 + 336);
  v14 = *(v0 + 328);
  v15 = *(v0 + 320);
  v16 = *(v0 + 312);
  v17 = *(v0 + 304);
  v18 = *(v0 + 296);
  v19 = *(v0 + 288);
  v20 = *(v0 + 280);
  v21 = *(v0 + 272);
  v22 = *(v0 + 264);
  v23 = *(v0 + 256);
  v24 = *(v0 + 240);
  v25 = *(v0 + 232);
  v26 = *(v0 + 224);
  v28 = *(v0 + 216);
  v29 = *(v0 + 208);
  v30 = *(v0 + 200);
  v27 = *(v0 + 152);
  v5 = *(v0 + 136);
  (*(*(v0 + 168) + 104))(*(v0 + 176), enum case for DIPError.Code.internalError(_:), *(v0 + 160));
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  sub_10018FF54(&qword_100200200, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v6 = *(v0 + 8);

  return v6();
}

void sub_10017ECF8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, __int128 a10, __int128 a11, unint64_t a12)
{
  v31 = a7;
  v32 = a8;
  v28 = a1;
  v29 = a6;
  v27 = a4;
  v25 = a11;
  v26 = a10;
  v15 = sub_100004E70(&qword_100202490, &unk_1001ACF80);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v25 - v17;
  v19 = type metadata accessor for PayloadMetadata();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = (&v25 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = objc_autoreleasePoolPush();
  sub_10018EB60(a5, v18, type metadata accessor for PayloadMetadata);
  (*(v20 + 56))(v18, 0, 1, v19);
  v24 = v33;
  sub_10017EF1C(a2, a3, v27, v18, v29, v31, v32, *(a9 + 9), v23, v26, *(&v26 + 1), v25, *(&v25 + 1), a12);
  sub_10000A0D4(v18, &qword_100202490, &unk_1001ACF80);
  if (!v24)
  {
    sub_10018F128(v23, type metadata accessor for PayloadMetadata);
    sub_100050240();
  }

  objc_autoreleasePoolPop(v30);
}

void sub_10017EF1C(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X6>, int a8@<W7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, unint64_t a12, uint64_t a13, unint64_t a14)
{
  v259 = a8;
  v267 = a7;
  v268 = a6;
  v241 = a5;
  v258 = a4;
  v261 = a2;
  v262 = a3;
  v260 = a9;
  v252 = type metadata accessor for SHA256();
  v237 = *(v252 - 8);
  v15 = *(v237 + 64);
  __chkstk_darwin(v252);
  v236 = &v223 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v240 = type metadata accessor for SHA256Digest();
  v239 = *(v240 - 8);
  v17 = *(v239 + 64);
  __chkstk_darwin(v240);
  v238 = &v223 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v251 = type metadata accessor for ISO18013KnownDocTypes();
  v250 = *(v251 - 8);
  v19 = *(v250 + 64);
  __chkstk_darwin(v251);
  v247 = &v223 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_100004E70(&qword_100203870, &qword_1001AE008);
  v22 = *(*(v21 - 8) + 64);
  v23 = __chkstk_darwin(v21 - 8);
  v256 = &v223 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v235 = &v223 - v25;
  v243 = type metadata accessor for ISO18013MobileSecurityObject.IdentifierList();
  v242 = *(v243 - 8);
  v26 = *(v242 + 64);
  __chkstk_darwin(v243);
  v233 = &v223 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_100004E70(&qword_1002004D0, &unk_1001AE1C0);
  v29 = *(*(v28 - 8) + 64);
  v30 = __chkstk_darwin(v28 - 8);
  v255 = &v223 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v234 = &v223 - v32;
  v245 = type metadata accessor for DIPError.Code();
  v244 = *(v245 - 8);
  v33 = *(v244 + 64);
  __chkstk_darwin(v245);
  v246 = &v223 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_100004E70(&qword_100202490, &unk_1001ACF80);
  v36 = *(*(v35 - 8) + 64);
  v37 = __chkstk_darwin(v35 - 8);
  v248 = &v223 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v249 = &v223 - v39;
  v263 = type metadata accessor for PayloadMetadata();
  v257 = *(v263 - 1);
  v40 = *(v257 + 64);
  __chkstk_darwin(v263);
  v253 = (&v223 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  v265 = type metadata accessor for Logger();
  v271 = *(v265 - 8);
  v42 = *(v271 + 64);
  v43 = __chkstk_darwin(v265);
  v254 = &v223 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __chkstk_darwin(v43);
  v47 = &v223 - v46;
  v48 = __chkstk_darwin(v45);
  v50 = &v223 - v49;
  v51 = __chkstk_darwin(v48);
  v53 = &v223 - v52;
  v54 = __chkstk_darwin(v51);
  v56 = &v223 - v55;
  __chkstk_darwin(v54);
  v58 = &v223 - v57;
  v266 = type metadata accessor for Date();
  v264 = *(v266 - 8);
  v59 = *(v264 + 64);
  v60 = __chkstk_darwin(v266);
  v62 = &v223 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = __chkstk_darwin(v60);
  v65 = &v223 - v64;
  __chkstk_darwin(v63);
  v67 = &v223 - v66;
  v68 = v268;
  v268 = a1;
  v69 = v270;
  v70 = sub_10016A520(v68, v267);
  if (v69)
  {
    return;
  }

  v229 = v58;
  v226 = v56;
  v227 = v53;
  v228 = v50;
  v230 = v47;
  v231 = v65;
  v232 = v62;
  v269 = v70;
  v267 = 0;
  type metadata accessor for StoredPayload();
  v71 = *(v268 + 16);
  v72 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext:v71];
  Date.init()();
  isa = Date._bridgeToObjectiveC()().super.isa;
  v75 = v264 + 8;
  v74 = *(v264 + 8);
  v76 = v266;
  v74(v67, v266);
  [v72 setCreatedAt:isa];

  Date.init()();
  v77 = Date._bridgeToObjectiveC()().super.isa;
  v225 = v75;
  v224 = v74;
  v74(v67, v76);
  [v72 setUpdatedAt:v77];

  v270 = v72;
  if (v259)
  {
    v78 = v229;
    defaultLogger()();
    v79 = Logger.logObject.getter();
    v80 = static os_log_type_t.debug.getter();
    v81 = os_log_type_enabled(v79, v80);
    v82 = v260;
    v84 = v257;
    v83 = v258;
    if (v81)
    {
      v85 = swift_slowAlloc();
      *v85 = 0;
      _os_log_impl(&_mh_execute_header, v79, v80, "insertPayload payload is accessible", v85, 2u);
      v78 = v229;
      v72 = v270;
    }

    (*(v271 + 8))(v78, v265);
    v86 = v249;
    sub_100046360(v83, v249, &qword_100202490, &unk_1001ACF80);
    v87 = (*(v84 + 48))(v86, 1, v263);
    v88 = v266;
    v89 = v269;
    v90 = v253;
    if (v87 == 1)
    {
      sub_10000A0D4(v86, &qword_100202490, &unk_1001ACF80);
LABEL_35:
      (*(v244 + 104))(v246, enum case for DIPError.Code.internalError(_:), v245);
      sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10018FF54(&qword_100200200, &type metadata accessor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();

      return;
    }

    sub_10018EAB4(v86, v253, type metadata accessor for PayloadMetadata);
    if (!v241)
    {
      sub_10018F128(v90, type metadata accessor for PayloadMetadata);
      goto LABEL_35;
    }

    v122 = v267;
    sub_10005EE94(v241);
    if (v122)
    {

      sub_10018F128(v90, type metadata accessor for PayloadMetadata);
      return;
    }

    v123 = sub_10018F32C(v89);
    v268 = v71;
    if (v123)
    {
      if (a14 >> 60 == 15)
      {
        (*(v244 + 104))(v246, enum case for DIPError.Code.idcsInvalidACL(_:), v245);
        sub_10002688C(_swiftEmptyArrayStorage);
        type metadata accessor for DIPError();
        sub_10018FF54(&qword_100200200, &type metadata accessor for DIPError);
        swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();

        sub_10018F128(v90, type metadata accessor for PayloadMetadata);
        return;
      }

      v185 = v90[3];
      v186 = v90[4];
      sub_100032EBC(a13, a14);
      v187 = sub_10018F590(a13, a14, v185, v186);
      v267 = 0;
      v212 = v211;
      v213 = v187;
      v223 = v67;
      v271 = v214;
      type metadata accessor for StoredCryptoKey();
      v215 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v216 = [v215 initWithContext:v268];
      sub_10006000C(v212);
      v217 = v269;
      [v269 addCryptoKeysObject:v216];
      v218 = v270;
      [v270 setPayloadProtectionKey:v216];
      [v218 setFormat:3];
      v219 = v213;
      v220 = Data._bridgeToObjectiveC()().super.isa;
      [v218 setPayloadData:v220];

      v82 = v260;
      v221 = v217;
      [v218 setProtectionType:2];
      v72 = v218;
      v89 = v221;
      v90 = v253;

      v222 = v219;
      v67 = v223;
      sub_1000092BC(v222, v271);
      sub_10001C120(a13, a14);
      v88 = v266;
    }

    else
    {
      v267 = 0;
      if (v90[2] < 0)
      {
LABEL_62:
        __break(1u);
        return;
      }

      [v72 setFormat:?];
      v166 = v90[3];
      v167 = v90[4];
      v168 = Data._bridgeToObjectiveC()().super.isa;
      [v72 setPayloadData:v168];

      [v72 setProtectionType:0];
    }

    v169 = *v90;
    v170 = v90[1];
    v171 = String._bridgeToObjectiveC()();
    [v72 setDocType:v171];

    v172 = v263;
    v173 = v90 + v263[8];
    v174 = Date._bridgeToObjectiveC()().super.isa;
    [v72 setValidFrom:v174];

    v175 = v90 + v172[9];
    v176 = Date._bridgeToObjectiveC()().super.isa;
    [v72 setValidUntil:v176];

    v177 = v234;
    sub_100046360(v90 + v172[10], v234, &qword_1002004D0, &unk_1001AE1C0);
    if ((*(v264 + 48))(v177, 1, v88) == 1)
    {
      v178 = 0;
    }

    else
    {
      v178 = Date._bridgeToObjectiveC()().super.isa;
      v224(v177, v88);
    }

    [v72 setSignedAt:v178];

    v179 = v263;
    v180 = *(v90 + v263[12]);
    v181 = Array._bridgeToObjectiveC()().super.isa;
    [v72 setIssuerCertificateChain:v181];

    v182 = (v90 + v179[13]);
    if (v182[1])
    {
      v183 = *v182;
      v184 = String._bridgeToObjectiveC()();
    }

    else
    {
      v184 = 0;
    }

    v188 = v235;
    [v72 setRegion:v184];

    v189 = (v90 + v263[14]);
    if (v189[1])
    {
      v190 = *v189;
      v191 = String._bridgeToObjectiveC()();
    }

    else
    {
      v191 = 0;
    }

    [v72 setIssuingJurisdiction:v191];

    v192 = (v90 + v263[15]);
    if (v192[1])
    {
      v193 = *v192;
      v194 = String._bridgeToObjectiveC()();
    }

    else
    {
      v194 = 0;
    }

    [v72 setIssuingAuthority:v194];

    sub_100046360(v90 + v263[16], v188, &qword_100203870, &qword_1001AE008);
    v195 = v242;
    v196 = v243;
    v197 = (*(v242 + 48))(v188, 1, v243);
    v223 = v67;
    if (v197 == 1)
    {
      sub_10000A0D4(v188, &qword_100203870, &qword_1001AE008);
      v136 = v261;
      v135 = v262;
    }

    else
    {
      v198 = v233;
      (*(v195 + 32))(v233, v188, v196);
      type metadata accessor for StoredIdentifierRevocationList();
      v199 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v200 = [v199 initWithContext:v268];
      v201 = ISO18013MobileSecurityObject.IdentifierList.id.getter();
      v203 = v202;
      v204 = Data._bridgeToObjectiveC()().super.isa;
      sub_1000092BC(v201, v203);
      [v200 setIdentifier:v204];

      v205 = ISO18013MobileSecurityObject.IdentifierList.certificate.getter();
      v207 = 0;
      if (v206 >> 60 != 15)
      {
        v208 = v205;
        v209 = v206;
        v207 = Data._bridgeToObjectiveC()().super.isa;
        sub_10001C120(v208, v209);
      }

      [v200 setCertificate:{v207, v223}];

      ISO18013MobileSecurityObject.IdentifierList.uri.getter();
      v210 = String._bridgeToObjectiveC()();

      [v200 setUri:v210];

      v72 = v270;
      [v270 setIdentifierRevocationList:v200];

      (*(v195 + 8))(v198, v243);
      v136 = v261;
      v135 = v262;
      v89 = v269;
    }

    v141 = v253[5];
    v142 = v253[6];
    sub_10018EAB4(v253, v82, type metadata accessor for PayloadMetadata);
    sub_100009708(v141, v142);
  }

  else
  {
    v223 = v67;
    v268 = a10;
    v91 = v226;
    defaultLogger()();
    v92 = Logger.logObject.getter();
    v93 = static os_log_type_t.debug.getter();
    v94 = os_log_type_enabled(v92, v93);
    v95 = v271;
    if (v94)
    {
      v96 = swift_slowAlloc();
      *v96 = 0;
      _os_log_impl(&_mh_execute_header, v92, v93, "Credential has biometric protection policy; not attempting to validate payload", v96, 2u);
    }

    v97 = *(v95 + 8);
    v98 = v265;
    v97(v91, v265);
    v99 = v227;
    v100 = defaultLogger()();
    __chkstk_darwin(v100);
    Logger.sensitive(_:)();
    v271 = v95 + 8;
    v97(v99, v98);
    v101 = v251;
    v102 = v250;
    if (v268 < 0)
    {
      goto LABEL_61;
    }

    v103 = v270;
    [v270 setFormat:?];
    v104 = Data._bridgeToObjectiveC()().super.isa;
    [v103 setPayloadData:v104];

    [v103 setProtectionType:1];
    v105 = v247;
    (*(v102 + 104))(v247, enum case for ISO18013KnownDocTypes.iso18013_5_1_mDL(_:), v101);
    v106 = ISO18013KnownDocTypes.rawValue.getter();
    v107 = v102;
    v109 = v108;
    (*(v107 + 8))(v105, v101);
    v110 = v228;
    defaultLogger()();

    v111 = Logger.logObject.getter();
    v112 = static os_log_type_t.debug.getter();

    v113 = os_log_type_enabled(v111, v112);
    v114 = v266;
    if (v113)
    {
      v115 = swift_slowAlloc();
      v116 = v114;
      v117 = v98;
      v118 = swift_slowAlloc();
      v272 = v118;
      *v115 = 136315138;
      *(v115 + 4) = sub_10010150C(v106, v109, &v272);
      _os_log_impl(&_mh_execute_header, v111, v112, "ISO18013PackageUndecryptablePayloadProcessor assuming doctype %s", v115, 0xCu);
      sub_100005090(v118);
      v119 = v270;

      v120 = v117;
      v114 = v116;
      v97(v228, v120);
      v121 = v263;
    }

    else
    {

      v97(v110, v98);
      v121 = v263;
      v119 = v270;
    }

    v124 = v256;
    v125 = String._bridgeToObjectiveC()();
    [v119 setDocType:v125];

    defaultLogger()();
    v126 = Logger.logObject.getter();
    v127 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v126, v127))
    {
      v128 = swift_slowAlloc();
      *v128 = 0;
      _os_log_impl(&_mh_execute_header, v126, v127, "ISO18013PackageUndecryptablePayloadProcessor assuming region US", v128, 2u);
      v124 = v256;
    }

    v97(v230, v265);
    v129 = String._bridgeToObjectiveC()();
    [v270 setRegion:v129];

    defaultLogger()();
    v130 = Logger.logObject.getter();
    v131 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v130, v131))
    {
      v132 = swift_slowAlloc();
      *v132 = 0;
      _os_log_impl(&_mh_execute_header, v130, v131, "ISO18013PackageUndecryptablePayloadProcessor assuming issuing jurisdiction nil", v132, 2u);
      v124 = v256;
    }

    v97(v254, v265);
    static Date.distantPast.getter();
    static Date.distantFuture.getter();
    v133 = v264;
    (*(v264 + 56))(v255, 1, 1, v114);
    v134 = v248;
    sub_100046360(v258, v248, &qword_100202490, &unk_1001ACF80);
    if ((*(v257 + 48))(v134, 1, v121) == 1)
    {
      sub_10000A0D4(v134, &qword_100202490, &unk_1001ACF80);
      (*(v242 + 56))(v124, 1, 1, v243);
    }

    else
    {
      sub_100046360(v134 + v121[16], v124, &qword_100203870, &qword_1001AE008);
      sub_10018F128(v134, type metadata accessor for PayloadMetadata);
    }

    v82 = v260;
    *v260 = v106;
    *(v82 + 8) = v109;
    v136 = v261;
    v135 = v262;
    *(v82 + 16) = v268;
    *(v82 + 24) = v136;
    *(v82 + 32) = v135;
    *(v82 + 40) = xmmword_1001AB540;
    v137 = *(v133 + 32);
    v137(v82 + v121[8], v231, v114);
    v137(v82 + v121[9], v232, v114);
    sub_100046524(v255, v82 + v121[10], &qword_1002004D0, &unk_1001AE1C0);
    v138 = (v82 + v121[11]);
    *v138 = 0;
    v138[1] = 0;
    *(v82 + v121[12]) = _swiftEmptyArrayStorage;
    *(v82 + v121[13]) = xmmword_1001AED50;
    v139 = (v82 + v121[14]);
    *v139 = 0;
    v139[1] = 0;
    v140 = (v82 + v121[15]);
    *v140 = 0;
    v140[1] = 0;
    sub_100046524(v124, v82 + v121[16], &qword_100203870, &qword_1001AE008);
    sub_100009708(v136, v135);
    v141 = 0;
    v142 = 0xF000000000000000;
    v89 = v269;
    v72 = v270;
  }

  v143 = v252;
  v144 = [v89 state];
  if ((v144 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  if (v144 == 1)
  {
    [v89 setState:2];
  }

  v145 = v267;
  sub_10018F8B8(v89, v72, v141, v142);
  if (v145)
  {
    sub_10018F128(v82, type metadata accessor for PayloadMetadata);

    sub_10001C120(v141, v142);
  }

  else
  {
    if (a12 >> 60 == 15)
    {
      sub_10018FF54(&qword_100200608, &type metadata accessor for SHA256);
      v146 = v236;
      dispatch thunk of HashFunction.init()();
      sub_100009708(v136, v135);
      sub_1000D8FBC(v136, v135);
      v267 = 0;
      sub_1000092BC(v136, v135);
      v147 = v238;
      dispatch thunk of HashFunction.finalize()();
      (*(v237 + 8))(v146, v143);
      sub_10018FF54(&qword_100200610, &type metadata accessor for SHA256Digest);
      v148 = v240;
      v149 = Digest.data.getter();
      v151 = v150;
      (*(v239 + 8))(v147, v148);
      v152 = Data._bridgeToObjectiveC()().super.isa;
      sub_1000092BC(v149, v151);
      v153 = v270;
      [v270 setIngestionHash:v152];

      v154 = v269;
    }

    else
    {
      sub_100009708(a11, a12);
      sub_10018FF54(&qword_100200608, &type metadata accessor for SHA256);
      v155 = v236;
      dispatch thunk of HashFunction.init()();
      sub_100009708(a11, a12);
      sub_1000D8FBC(a11, a12);
      v267 = 0;
      sub_10001C120(a11, a12);
      v156 = v238;
      dispatch thunk of HashFunction.finalize()();
      (*(v237 + 8))(v155, v143);
      sub_10018FF54(&qword_100200610, &type metadata accessor for SHA256Digest);
      v157 = v240;
      v158 = Digest.data.getter();
      v160 = v159;
      (*(v239 + 8))(v156, v157);
      v161 = Data._bridgeToObjectiveC()().super.isa;
      v162 = v158;
      v154 = v269;
      sub_1000092BC(v162, v160);
      v153 = v270;
      [v270 setIngestionHash:v161];

      sub_10001C120(a11, a12);
    }

    [v154 addPayloadsObject:v153];
    v163 = v154;
    v164 = v223;
    Date.init()();
    v165 = Date._bridgeToObjectiveC()().super.isa;
    v224(v164, v266);
    [v163 setUpdatedAt:v165];

    sub_10001C120(v141, v142);
  }
}

uint64_t sub_100180C38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = type metadata accessor for DIPError.Code();
  v6[8] = v7;
  v8 = *(v7 - 8);
  v6[9] = v8;
  v9 = *(v8 + 64) + 15;
  v6[10] = swift_task_alloc();
  v10 = type metadata accessor for DIPError();
  v6[11] = v10;
  v11 = *(v10 - 8);
  v6[12] = v11;
  v12 = *(v11 + 64) + 15;
  v6[13] = swift_task_alloc();
  v13 = type metadata accessor for Logger();
  v6[14] = v13;
  v14 = *(v13 - 8);
  v6[15] = v14;
  v15 = *(v14 + 64) + 15;
  v6[16] = swift_task_alloc();
  v6[17] = swift_task_alloc();

  return _swift_task_switch(sub_100180DC4, 0, 0);
}

uint64_t sub_100180DC4()
{
  v1 = v0[17];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Deleting device encryption keys", v4, 2u);
  }

  v5 = v0[17];
  v6 = v0[14];
  v7 = v0[15];
  v8 = v0[6];

  v9 = *(v7 + 8);
  v0[18] = v9;
  v9(v5, v6);
  if (v8)
  {
    v10 = v0[6];
    v11 = swift_task_alloc();
    v0[19] = v11;
    *v11 = v0;
    v11[1] = sub_100180F80;
    v12 = v0[7];
    v14 = v0[4];
    v13 = v0[5];
    v15 = v0[2];
    v16 = v0[3];

    return sub_100181880(v14, v15, v16, v13, v10);
  }

  else
  {
    v19 = v0[16];
    v18 = v0[17];
    v20 = v0[13];
    v21 = v0[10];

    v22 = v0[1];

    return v22();
  }
}

uint64_t sub_100180F80()
{
  v2 = *(*v1 + 152);
  v3 = *v1;
  v3[20] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100181264, 0, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v3[21] = v4;
    *v4 = v3;
    v4[1] = sub_1001810F8;
    v5 = v3[7];
    v6 = v3[3];
    v7 = v3[2];
    v8 = v3[4];

    return sub_100182EC0(v8, v7, v6);
  }
}

uint64_t sub_1001810F8()
{
  v2 = *(*v1 + 168);
  v3 = *v1;
  v3[22] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100181498, 0, 0);
  }

  else
  {
    v5 = v3[16];
    v4 = v3[17];
    v6 = v3[13];
    v7 = v3[10];

    v8 = v3[1];

    return v8();
  }
}

uint64_t sub_100181264()
{
  v1 = v0[20];
  v2 = v0[16];
  v13 = v0[15];
  v3 = v0[13];
  v14 = v0[14];
  v15 = v0[18];
  v4 = v0[11];
  v5 = v0[12];
  (*(v0[9] + 104))(v0[10], enum case for DIPError.Code.internalError(_:), v0[8]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_10018FF54(&qword_100200200, &type metadata accessor for DIPError);
  swift_allocError();
  (*(v5 + 16))(v6, v3, v4);
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  v15(v2, v14);
  (*(v5 + 8))(v3, v4);

  v8 = v0[16];
  v7 = v0[17];
  v9 = v0[13];
  v10 = v0[10];

  v11 = v0[1];

  return v11();
}

uint64_t sub_100181498()
{
  v1 = v0[22];
  v2 = v0[16];
  v13 = v0[15];
  v3 = v0[13];
  v14 = v0[14];
  v15 = v0[18];
  v4 = v0[11];
  v5 = v0[12];
  (*(v0[9] + 104))(v0[10], enum case for DIPError.Code.internalError(_:), v0[8]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_10018FF54(&qword_100200200, &type metadata accessor for DIPError);
  swift_allocError();
  (*(v5 + 16))(v6, v3, v4);
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  v15(v2, v14);
  (*(v5 + 8))(v3, v4);

  v8 = v0[16];
  v7 = v0[17];
  v9 = v0[13];
  v10 = v0[10];

  v11 = v0[1];

  return v11();
}

void sub_1001816CC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12)
{
  v23 = a7;
  v24 = a8;
  v21 = a1;
  v22 = a6;
  v16 = type metadata accessor for PayloadMetadata();
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = (&v21 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = v25;
  sub_10017EF1C(a2, a3, a4, a5, v22, v23, v24, *(a9 + 9), v19, a10, 0, 0xF000000000000000, a11, a12);
  if (!v20)
  {
    sub_10018F128(v19, type metadata accessor for PayloadMetadata);
    sub_100050240();
  }
}

unint64_t sub_1001817F0()
{
  _StringGuts.grow(_:)(34);

  v0 = Data.base16EncodedString()();
  String.append(_:)(v0);

  return 0xD000000000000020;
}

uint64_t sub_100181880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = type metadata accessor for DIPError.Code();
  v6[8] = v7;
  v8 = *(v7 - 8);
  v6[9] = v8;
  v9 = *(v8 + 64) + 15;
  v6[10] = swift_task_alloc();
  v10 = type metadata accessor for DIPError();
  v6[11] = v10;
  v11 = *(v10 - 8);
  v6[12] = v11;
  v12 = *(v11 + 64) + 15;
  v6[13] = swift_task_alloc();
  v13 = type metadata accessor for Logger();
  v6[14] = v13;
  v14 = *(v13 - 8);
  v6[15] = v14;
  v15 = *(v14 + 64) + 15;
  v6[16] = swift_task_alloc();
  v6[17] = swift_task_alloc();
  v6[18] = swift_task_alloc();
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();
  v16 = type metadata accessor for CredentialKeyType();
  v6[21] = v16;
  v17 = *(v16 - 8);
  v6[22] = v17;
  v18 = *(v17 + 64) + 15;
  v6[23] = swift_task_alloc();
  v19 = _s11KeyToDeleteVMa(0);
  v6[24] = v19;
  v20 = *(v19 - 8);
  v6[25] = v20;
  v21 = *(v20 + 64) + 15;
  v6[26] = swift_task_alloc();
  v6[27] = swift_task_alloc();
  v22 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v6[28] = v22;
  v23 = *(v22 - 8);
  v6[29] = v23;
  v24 = *(v23 + 64) + 15;
  v6[30] = swift_task_alloc();
  v25 = sub_100004E70(&qword_100203D00, &qword_1001AEDD8);
  v6[31] = v25;
  v26 = *(*(v25 - 8) + 64) + 15;
  v6[32] = swift_task_alloc();
  v6[33] = swift_task_alloc();

  return _swift_task_switch(sub_100181B98, 0, 0);
}

uint64_t sub_100181B98()
{
  v1 = v0[29];
  v18 = v0[28];
  v19 = v0[30];
  v3 = v0[6];
  v2 = v0[7];
  v5 = v0[4];
  v4 = v0[5];
  v7 = v0[2];
  v6 = v0[3];
  v8 = swift_allocObject();
  v0[34] = v8;
  v8[2] = v2;
  v8[3] = v6;
  v8[4] = v5;
  v8[5] = v7;
  v8[6] = v4;
  v8[7] = v3;
  v20 = *(v7 + 16);
  v9 = swift_allocObject();
  v0[35] = v9;
  *(v9 + 16) = sub_10018F268;
  *(v9 + 24) = v8;
  v10 = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
  v11 = *(v1 + 104);

  v11(v19, v10, v18);
  v12 = async function pointer to NSManagedObjectContext.perform<A>(schedule:_:)[1];

  v13 = swift_task_alloc();
  v0[36] = v13;
  *v13 = v0;
  v13[1] = sub_100181D38;
  v14 = v0[33];
  v15 = v0[30];
  v16 = v0[31];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v14, v15, sub_1000BBAFC, v9, v16);
}

uint64_t sub_100181D38()
{
  v2 = *v1;
  v3 = *(*v1 + 288);
  v4 = *v1;
  v2[37] = v0;

  v5 = v2[35];
  if (v0)
  {
    (*(v2[29] + 8))(v2[30], v2[28]);

    v6 = sub_10018282C;
  }

  else
  {
    v7 = v2[34];
    v9 = v2[29];
    v8 = v2[30];
    v10 = v2[28];

    (*(v9 + 8))(v8, v10);
    v6 = sub_100181EC4;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100181EC4()
{
  v102 = v0;
  v1 = v0[32];
  v2 = v0[24];
  v3 = v0[25];
  sub_100046360(v0[33], v1, &qword_100203D00, &qword_1001AEDD8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[32];
    sub_10000A0D4(v0[33], &qword_100203D00, &qword_1001AEDD8);
    sub_10000A0D4(v4, &qword_100203D00, &qword_1001AEDD8);
LABEL_3:
    v6 = v0[32];
    v5 = v0[33];
    v7 = v0[30];
    v9 = v0[26];
    v8 = v0[27];
    v10 = v0[23];
    v12 = v0[19];
    v11 = v0[20];
    v14 = v0[17];
    v13 = v0[18];
    v93 = v0[16];
    v95 = v0[13];
    v98 = v0[10];

    v15 = v0[1];

    return v15();
  }

  v17 = v0[27];
  v18 = v0[23];
  v19 = v0[24];
  v20 = v0[21];
  v21 = v0[22];
  sub_10018EAB4(v0[32], v17, _s11KeyToDeleteVMa);
  (*(v21 + 16))(v18, v17 + *(v19 + 20), v20);
  v22 = (*(v21 + 88))(v18, v20);
  if (v22 == enum case for CredentialKeyType.ses(_:))
  {
    v23 = v0[19];
    defaultLogger()();
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "Deleting SES device encryption key from SE", v26, 2u);
    }

    v27 = v0[27];
    v28 = v0[24];
    v29 = v0[19];
    v30 = v0[14];
    v31 = v0[15];

    v32 = *(v31 + 8);
    v32(v29, v30);
    v33 = (v27 + *(v28 + 24));
    v34 = v33[1];
    if (v34 >> 60 == 15)
    {
      v35 = v0[18];
      defaultLogger()();
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&_mh_execute_header, v36, v37, "Unable to delete key from SE because no key blob provided", v38, 2u);
      }

      v39 = v0[33];
      v40 = v0[27];
      v41 = v0[18];
      v42 = v0[14];
      v43 = v0[15];

      v32(v41, v42);
      sub_10000A0D4(v39, &qword_100203D00, &qword_1001AEDD8);
      sub_10018F128(v40, _s11KeyToDeleteVMa);
    }

    else
    {
      v58 = *v33;
      v59 = v0[37];
      v60 = *(v0[7] + 112);
      sub_100009708(*v33, v34);
      sub_100027880();
      if (v59)
      {
        sub_10001C120(v58, v34);
        v61 = v0[27];
        v62 = v0[16];
        v92 = v61;
        v94 = v0[15];
        v63 = v0[13];
        v96 = v0[14];
        v99 = v0[33];
        v65 = v0[11];
        v64 = v0[12];
        (*(v0[9] + 104))(v0[10], enum case for DIPError.Code.internalError(_:), v0[8]);
        swift_errorRetain();
        sub_10002688C(_swiftEmptyArrayStorage);
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        sub_10018FF54(&qword_100200200, &type metadata accessor for DIPError);
        swift_allocError();
        (*(v64 + 16))(v66, v63, v65);
        v101[0] = 0;
        v101[1] = 0xE000000000000000;
        _StringGuts.grow(_:)(58);
        v67._countAndFlagsBits = 0xD000000000000038;
        v67._object = 0x80000001001BCEC0;
        String.append(_:)(v67);
        String.append(_:)(*v92);
        defaultLogger()();
        DIPRecordError(_:message:log:)();

        v32(v62, v96);
        (*(v64 + 8))(v63, v65);
        sub_10000A0D4(v99, &qword_100203D00, &qword_1001AEDD8);
        sub_10018F128(v92, _s11KeyToDeleteVMa);
      }

      else
      {
        v91 = v0[27];
        sub_10000A0D4(v0[33], &qword_100203D00, &qword_1001AEDD8);
        sub_10001C120(v58, v34);
        sub_10018F128(v91, _s11KeyToDeleteVMa);
      }
    }

    goto LABEL_3;
  }

  if (v22 != enum case for CredentialKeyType.sep(_:))
  {
    v68 = v0[26];
    v69 = v0[27];
    v70 = v0[17];
    defaultLogger()();
    sub_10018EB60(v69, v68, _s11KeyToDeleteVMa);
    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.debug.getter();
    v73 = os_log_type_enabled(v71, v72);
    v74 = v0[33];
    v75 = v0[26];
    v76 = v0[17];
    v78 = v0[14];
    v77 = v0[15];
    if (v73)
    {
      v100 = v0[14];
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v101[0] = v80;
      *v79 = 136315138;
      v97 = v74;
      v81 = v75 + *(v19 + 20);
      v82 = CredentialKeyType.rawValue.getter();
      v83 = v76;
      v85 = v84;
      sub_10018F128(v75, _s11KeyToDeleteVMa);
      v86 = sub_10010150C(v82, v85, v101);

      *(v79 + 4) = v86;
      _os_log_impl(&_mh_execute_header, v71, v72, "Unexpected device encryption key type: %s", v79, 0xCu);
      sub_100005090(v80);

      (*(v77 + 8))(v83, v100);
      v87 = v97;
    }

    else
    {

      sub_10018F128(v75, _s11KeyToDeleteVMa);
      (*(v77 + 8))(v76, v78);
      v87 = v74;
    }

    sub_10000A0D4(v87, &qword_100203D00, &qword_1001AEDD8);
    v89 = v0[22];
    v88 = v0[23];
    v90 = v0[21];
    sub_10018F128(v0[27], _s11KeyToDeleteVMa);
    (*(v89 + 8))(v88, v90);
    goto LABEL_3;
  }

  v44 = v0[20];
  defaultLogger()();
  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    _os_log_impl(&_mh_execute_header, v45, v46, "Deleting SEP device encryption key from keychain", v47, 2u);
  }

  v48 = v0[27];
  v49 = v0[20];
  v50 = v0[14];
  v51 = v0[15];
  v52 = v0[7];

  v53 = *(v51 + 8);
  v0[38] = v53;
  v53(v49, v50);
  v54 = *(v52 + 112);
  v55 = *v48;
  v56 = v48[1];
  v57 = swift_task_alloc();
  v0[39] = v57;
  *v57 = v0;
  v57[1] = sub_100182944;

  return sub_1000273FC(v55, v56);
}

uint64_t sub_10018282C()
{
  v2 = v0[33];
  v1 = v0[34];
  v3 = v0[32];
  v4 = v0[30];
  v6 = v0[26];
  v5 = v0[27];
  v7 = v0[23];
  v9 = v0[19];
  v8 = v0[20];
  v10 = v0[18];
  v14 = v0[17];
  v15 = v0[16];
  v16 = v0[13];
  v17 = v0[10];

  v11 = v0[1];
  v12 = v0[37];

  return v11();
}

uint64_t sub_100182944()
{
  v2 = *(*v1 + 312);
  v5 = *v1;
  *(*v1 + 320) = v0;

  if (v0)
  {
    v3 = sub_100182B9C;
  }

  else
  {
    v3 = sub_100182A58;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100182A58()
{
  v1 = v0[27];
  sub_10000A0D4(v0[33], &qword_100203D00, &qword_1001AEDD8);
  sub_10018F128(v1, _s11KeyToDeleteVMa);
  v3 = v0[32];
  v2 = v0[33];
  v4 = v0[30];
  v6 = v0[26];
  v5 = v0[27];
  v7 = v0[23];
  v9 = v0[19];
  v8 = v0[20];
  v11 = v0[17];
  v10 = v0[18];
  v14 = v0[16];
  v15 = v0[13];
  v16 = v0[10];

  v12 = v0[1];

  return v12();
}

uint64_t sub_100182B9C()
{
  v1 = v0[40];
  v24 = v0[38];
  v26 = v0[33];
  v2 = v0[27];
  v3 = v0[16];
  v4 = v0[13];
  v21 = v0[15];
  v22 = v0[14];
  v5 = v0[11];
  v6 = v0[12];
  (*(v0[9] + 104))(v0[10], enum case for DIPError.Code.internalError(_:), v0[8]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_10018FF54(&qword_100200200, &type metadata accessor for DIPError);
  swift_allocError();
  (*(v6 + 16))(v7, v4, v5);
  _StringGuts.grow(_:)(58);
  v8._countAndFlagsBits = 0xD000000000000038;
  v8._object = 0x80000001001BCEC0;
  String.append(_:)(v8);
  String.append(_:)(*v2);
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  v24(v3, v22);
  (*(v6 + 8))(v4, v5);
  sub_10000A0D4(v26, &qword_100203D00, &qword_1001AEDD8);
  sub_10018F128(v2, _s11KeyToDeleteVMa);

  v10 = v0[32];
  v9 = v0[33];
  v11 = v0[30];
  v13 = v0[26];
  v12 = v0[27];
  v14 = v0[23];
  v16 = v0[19];
  v15 = v0[20];
  v18 = v0[17];
  v17 = v0[18];
  v23 = v0[16];
  v25 = v0[13];
  v27 = v0[10];

  v19 = v0[1];

  return v19();
}

uint64_t sub_100182EC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[11] = a3;
  v4[12] = v3;
  v4[9] = a1;
  v4[10] = a2;
  v5 = type metadata accessor for Logger();
  v4[13] = v5;
  v6 = *(v5 - 8);
  v4[14] = v6;
  v7 = *(v6 + 64) + 15;
  v4[15] = swift_task_alloc();
  v8 = type metadata accessor for DIPError();
  v4[16] = v8;
  v9 = *(v8 - 8);
  v4[17] = v9;
  v10 = *(v9 + 64) + 15;
  v4[18] = swift_task_alloc();
  v11 = type metadata accessor for DIPError.Code();
  v4[19] = v11;
  v12 = *(v11 - 8);
  v4[20] = v12;
  v13 = *(v12 + 64) + 15;
  v4[21] = swift_task_alloc();
  v14 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v4[22] = v14;
  v15 = *(v14 - 8);
  v4[23] = v15;
  v16 = *(v15 + 64) + 15;
  v4[24] = swift_task_alloc();

  return _swift_task_switch(sub_100183098, 0, 0);
}

uint64_t sub_100183098()
{
  v1 = v0[23];
  v16 = v0[24];
  v2 = v0[22];
  v4 = v0[11];
  v3 = v0[12];
  v6 = v0[9];
  v5 = v0[10];
  v7 = swift_allocObject();
  v0[25] = v7;
  v7[2] = v3;
  v7[3] = v5;
  v7[4] = v4;
  v7[5] = v6;
  v17 = *(v6 + 16);
  v8 = swift_allocObject();
  v0[26] = v8;
  *(v8 + 16) = sub_10018F1D0;
  *(v8 + 24) = v7;
  v9 = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
  v10 = *(v1 + 104);

  v10(v16, v9, v2);
  v11 = async function pointer to NSManagedObjectContext.perform<A>(schedule:_:)[1];

  v12 = swift_task_alloc();
  v0[27] = v12;
  v13 = sub_100004E70(&qword_100201580, &qword_1001AB980);
  *v12 = v0;
  v12[1] = sub_100183244;
  v14 = v0[24];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 8, v14, sub_10001BF74, v8, v13);
}

uint64_t sub_100183244()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v12 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v4 = v2[26];
    (*(v2[23] + 8))(v2[24], v2[22]);

    v5 = sub_100183548;
  }

  else
  {
    v7 = v2[25];
    v6 = v2[26];
    v9 = v2[23];
    v8 = v2[24];
    v10 = v2[22];

    (*(v9 + 8))(v8, v10);
    v2[29] = v2[8];
    v5 = sub_1001833C4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1001833C4()
{
  v1 = *(v0 + 232);
  v2 = v1[2];
  *(v0 + 240) = v2;
  if (v2)
  {
    v3 = *(*(v0 + 96) + 112);
    *(v0 + 304) = enum case for DIPError.Code.internalError(_:);
    *(v0 + 248) = v3;
    *(v0 + 256) = 0;
    v4 = v1[4];
    *(v0 + 264) = v4;
    v5 = v1[5];
    *(v0 + 272) = v5;

    *(v0 + 16) = 778790244;
    *(v0 + 24) = 0xE400000000000000;
    v6._countAndFlagsBits = v4;
    v6._object = v5;
    String.append(_:)(v6);
    v7 = *(v0 + 16);
    v8 = *(v0 + 24);
    *(v0 + 280) = v8;
    v9 = *(v3 + 32);
    v10 = async function pointer to DeviceIdentityKeystore.deleteKeysAndCertificates(label:)[1];
    v11 = swift_task_alloc();
    *(v0 + 288) = v11;
    *v11 = v0;
    v11[1] = sub_1001835E0;

    return DeviceIdentityKeystore.deleteKeysAndCertificates(label:)(v7, v8);
  }

  else
  {
    v12 = *(v0 + 192);
    v13 = *(v0 + 168);
    v14 = *(v0 + 144);
    v15 = *(v0 + 120);

    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_100183548()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[21];
  v4 = v0[18];
  v5 = v0[15];

  v6 = v0[1];
  v7 = v0[28];

  return v6();
}

uint64_t sub_1001835E0()
{
  v2 = *v1;
  v3 = *(*v1 + 288);
  v4 = *v1;
  v2[37] = v0;

  v5 = v2[35];
  if (v0)
  {

    v6 = sub_1001838A8;
  }

  else
  {
    v7 = v2[34];

    v6 = sub_100183728;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100183728()
{
  v1 = v0[32] + 1;
  if (v1 == v0[30])
  {
    v2 = v0[29];
    v3 = v0[24];
    v4 = v0[21];
    v5 = v0[18];
    v6 = v0[15];

    v7 = v0[1];

    return v7();
  }

  else
  {
    v0[32] = v1;
    v9 = v0[31];
    v10 = v0[29] + 16 * v1;
    v11 = *(v10 + 32);
    v0[33] = v11;
    v12 = *(v10 + 40);
    v0[34] = v12;

    v0[2] = 778790244;
    v0[3] = 0xE400000000000000;
    v13._countAndFlagsBits = v11;
    v13._object = v12;
    String.append(_:)(v13);
    v14 = v0[2];
    v15 = v0[3];
    v0[35] = v15;
    v16 = *(v9 + 32);
    v17 = async function pointer to DeviceIdentityKeystore.deleteKeysAndCertificates(label:)[1];
    v18 = swift_task_alloc();
    v0[36] = v18;
    *v18 = v0;
    v18[1] = sub_1001835E0;

    return DeviceIdentityKeystore.deleteKeysAndCertificates(label:)(v14, v15);
  }
}

uint64_t sub_1001838A8()
{
  v1 = *(v0 + 296);
  v33 = *(v0 + 264);
  v28 = *(v0 + 304);
  v2 = *(v0 + 168);
  v3 = *(v0 + 152);
  v30 = *(v0 + 144);
  v31 = *(v0 + 136);
  v29 = *(v0 + 128);
  v32 = *(v0 + 120);
  v34 = *(v0 + 112);
  v35 = *(v0 + 104);
  v4 = *(*(v0 + 160) + 104);
  v4(v2);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  sub_10018FF54(&qword_100200200, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  (v4)(v2, v28, v3);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_allocError();
  (*(v31 + 16))(v5, v30, v29);
  *(v0 + 48) = 0;
  *(v0 + 56) = 0xE000000000000000;
  _StringGuts.grow(_:)(58);
  v6 = *(v0 + 56);
  *(v0 + 32) = *(v0 + 48);
  *(v0 + 40) = v6;
  v7._countAndFlagsBits = 0xD000000000000038;
  v7._object = 0x80000001001BCEC0;
  String.append(_:)(v7);
  String.append(_:)(v33);

  v8 = *(v0 + 32);
  v9 = *(v0 + 40);
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  (*(v34 + 8))(v32, v35);
  (*(v31 + 8))(v30, v29);

  v10 = *(v0 + 256) + 1;
  if (v10 == *(v0 + 240))
  {
    v11 = *(v0 + 232);
    v12 = *(v0 + 192);
    v13 = *(v0 + 168);
    v14 = *(v0 + 144);
    v15 = *(v0 + 120);

    v16 = *(v0 + 8);

    return v16();
  }

  else
  {
    *(v0 + 256) = v10;
    v18 = *(v0 + 248);
    v19 = *(v0 + 232) + 16 * v10;
    v20 = *(v19 + 32);
    *(v0 + 264) = v20;
    v21 = *(v19 + 40);
    *(v0 + 272) = v21;

    *(v0 + 16) = 778790244;
    *(v0 + 24) = 0xE400000000000000;
    v22._countAndFlagsBits = v20;
    v22._object = v21;
    String.append(_:)(v22);
    v23 = *(v0 + 16);
    v24 = *(v0 + 24);
    *(v0 + 280) = v24;
    v25 = *(v18 + 32);
    v26 = async function pointer to DeviceIdentityKeystore.deleteKeysAndCertificates(label:)[1];
    v27 = swift_task_alloc();
    *(v0 + 288) = v27;
    *v27 = v0;
    v27[1] = sub_1001835E0;

    return DeviceIdentityKeystore.deleteKeysAndCertificates(label:)(v23, v24);
  }
}

unint64_t sub_100183DCC()
{
  _StringGuts.grow(_:)(42);

  sub_100004E70(&qword_100201580, &qword_1001AB980);
  v0._countAndFlagsBits = Dictionary.description.getter();
  String.append(_:)(v0);

  return 0xD000000000000028;
}

unint64_t sub_100183E74(uint64_t a1)
{
  _StringGuts.grow(_:)(32);

  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  v4 = Data.base16EncodedString()();
  String.append(_:)(v4);

  return 0xD00000000000001ELL;
}

uint64_t sub_100183EF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v9 = type metadata accessor for Logger();
  v6[6] = v9;
  v10 = *(v9 - 8);
  v6[7] = v10;
  v11 = *(v10 + 64) + 15;
  v6[8] = swift_task_alloc();
  v12 = type metadata accessor for ISO18013KnownDocTypes();
  v6[9] = v12;
  v13 = *(v12 - 8);
  v6[10] = v13;
  v14 = *(v13 + 64) + 15;
  v6[11] = swift_task_alloc();
  v15 = swift_task_alloc();
  v6[12] = v15;
  *v15 = v6;
  v15[1] = sub_10018405C;

  return sub_10017325C(a5, a6, 0);
}

uint64_t sub_10018405C()
{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_1001842B8;
  }

  else
  {

    v3 = sub_10018417C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10018417C()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v5 = v0[2];
  v4 = v0[3];
  (*(v2 + 104))(v1, enum case for ISO18013KnownDocTypes.photoID(_:), v3);
  v6 = ISO18013KnownDocTypes.rawValue.getter();
  v8 = v7;
  (*(v2 + 8))(v1, v3);
  if (v6 == v5 && v8 == v4)
  {

    goto LABEL_8;
  }

  v10 = v0[2];
  v11 = v0[3];
  v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v13 = 0;
  if (v12)
  {
LABEL_8:
    v14 = v0[4];
    v15 = v0[5];
    v13 = sub_10018AF64();
  }

  v16 = v0[11];
  v17 = v0[8];

  v18 = v0[1];

  return v18(v13 & 1);
}

uint64_t sub_1001842B8()
{
  v1 = v0[8];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[13];
  v7 = v0[7];
  v6 = v0[8];
  v8 = v0[6];
  if (v4)
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "No stored hash available skipping device cross check", v9, 2u);
  }

  (*(v7 + 8))(v6, v8);
  v10 = v0[11];
  v11 = v0[8];

  v12 = v0[1];

  return v12(0);
}

uint64_t sub_1001843E4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v6 + 560) = v5;
  *(v6 + 552) = a5;
  *(v6 + 1360) = a4;
  *(v6 + 544) = a3;
  *(v6 + 536) = a2;
  *(v6 + 528) = a1;
  v7 = type metadata accessor for AlgorithmIdentifier();
  *(v6 + 568) = v7;
  v8 = *(v7 - 8);
  *(v6 + 576) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 584) = swift_task_alloc();
  v10 = type metadata accessor for DIPError.Code();
  *(v6 + 592) = v10;
  v11 = *(v10 - 8);
  *(v6 + 600) = v11;
  v12 = *(v11 + 64) + 15;
  *(v6 + 608) = swift_task_alloc();
  v13 = type metadata accessor for DIPError();
  *(v6 + 616) = v13;
  v14 = *(v13 - 8);
  *(v6 + 624) = v14;
  v15 = *(v14 + 64) + 15;
  *(v6 + 632) = swift_task_alloc();
  v16 = *(*(sub_100004E70(&qword_100203D10, &qword_1001AEDF0) - 8) + 64) + 15;
  *(v6 + 640) = swift_task_alloc();
  v17 = type metadata accessor for Locale();
  *(v6 + 648) = v17;
  v18 = *(v17 - 8);
  *(v6 + 656) = v18;
  v19 = *(v18 + 64) + 15;
  *(v6 + 664) = swift_task_alloc();
  v20 = type metadata accessor for Date();
  *(v6 + 672) = v20;
  v21 = *(v20 - 8);
  *(v6 + 680) = v21;
  v22 = *(v21 + 64) + 15;
  *(v6 + 688) = swift_task_alloc();
  *(v6 + 696) = swift_task_alloc();
  v23 = type metadata accessor for DateComponents();
  *(v6 + 704) = v23;
  v24 = *(v23 - 8);
  *(v6 + 712) = v24;
  v25 = *(v24 + 64) + 15;
  *(v6 + 720) = swift_task_alloc();
  v26 = *(*(sub_100004E70(&qword_100203D18, &qword_1001AEDF8) - 8) + 64) + 15;
  *(v6 + 728) = swift_task_alloc();
  v27 = *(*(sub_100004E70(&qword_1002004D0, &unk_1001AE1C0) - 8) + 64) + 15;
  *(v6 + 736) = swift_task_alloc();
  *(v6 + 744) = swift_task_alloc();
  *(v6 + 752) = swift_task_alloc();
  *(v6 + 760) = swift_task_alloc();
  v28 = *(*(sub_100004E70(&qword_100202988, &unk_1001AD140) - 8) + 64) + 15;
  *(v6 + 768) = swift_task_alloc();
  *(v6 + 776) = swift_task_alloc();
  *(v6 + 784) = swift_task_alloc();
  v29 = type metadata accessor for AnyCodable();
  *(v6 + 792) = v29;
  v30 = *(v29 - 8);
  *(v6 + 800) = v30;
  v31 = *(v30 + 64) + 15;
  *(v6 + 808) = swift_task_alloc();
  *(v6 + 816) = swift_task_alloc();
  *(v6 + 824) = swift_task_alloc();
  *(v6 + 832) = swift_task_alloc();
  *(v6 + 840) = swift_task_alloc();
  *(v6 + 848) = swift_task_alloc();
  *(v6 + 856) = swift_task_alloc();
  *(v6 + 864) = swift_task_alloc();
  v32 = type metadata accessor for ISO18013IssuerSignedItem();
  *(v6 + 872) = v32;
  v33 = *(v32 - 8);
  *(v6 + 880) = v33;
  v34 = *(v33 + 64) + 15;
  *(v6 + 888) = swift_task_alloc();
  *(v6 + 896) = swift_task_alloc();
  v35 = sub_100004E70(&qword_1002004D8, &qword_1001ACBF0);
  *(v6 + 904) = v35;
  v36 = *(v35 - 8);
  *(v6 + 912) = v36;
  v37 = *(v36 + 64) + 15;
  *(v6 + 920) = swift_task_alloc();
  *(v6 + 928) = swift_task_alloc();
  *(v6 + 936) = swift_task_alloc();
  v38 = type metadata accessor for ISO18013KnownNamespaces();
  *(v6 + 944) = v38;
  v39 = *(v38 - 8);
  *(v6 + 952) = v39;
  v40 = *(v39 + 64) + 15;
  *(v6 + 960) = swift_task_alloc();
  v41 = type metadata accessor for ISO23220_1_ElementIdentifier();
  *(v6 + 968) = v41;
  v42 = *(v41 - 8);
  *(v6 + 976) = v42;
  v43 = *(v42 + 64) + 15;
  *(v6 + 984) = swift_task_alloc();
  *(v6 + 992) = swift_task_alloc();
  *(v6 + 1000) = swift_task_alloc();
  *(v6 + 1008) = swift_task_alloc();
  *(v6 + 1016) = swift_task_alloc();
  *(v6 + 1024) = swift_task_alloc();
  *(v6 + 1032) = swift_task_alloc();
  *(v6 + 1040) = swift_task_alloc();
  *(v6 + 1048) = swift_task_alloc();
  *(v6 + 1056) = swift_task_alloc();
  *(v6 + 1064) = swift_task_alloc();
  *(v6 + 1072) = swift_task_alloc();
  *(v6 + 1080) = swift_task_alloc();
  *(v6 + 1088) = swift_task_alloc();
  *(v6 + 1096) = swift_task_alloc();
  v44 = type metadata accessor for Logger();
  *(v6 + 1104) = v44;
  v45 = *(v44 - 8);
  *(v6 + 1112) = v45;
  v46 = *(v45 + 64) + 15;
  *(v6 + 1120) = swift_task_alloc();
  *(v6 + 1128) = swift_task_alloc();
  *(v6 + 1136) = swift_task_alloc();
  *(v6 + 1144) = swift_task_alloc();
  *(v6 + 1152) = swift_task_alloc();
  *(v6 + 1160) = swift_task_alloc();
  *(v6 + 1168) = swift_task_alloc();

  return _swift_task_switch(sub_100184B74, 0, 0);
}

uint64_t sub_100184B74()
{
  v1 = *(v0 + 1168);
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Performing device cross check", v4, 2u);
  }

  v5 = v491;
  v6 = v491[146];
  v7 = v491[139];
  v8 = v491[138];
  v9 = v491[137];
  v423 = v491[136];
  v427 = v491[135];
  v432 = v491[134];
  v440 = v491[133];
  v448 = v491[132];
  v453 = v491[131];
  v10 = v491[122];
  v11 = v491[121];
  v460 = v491[119];
  v467 = v491[118];
  v473 = v491[120];
  v478 = v491[66];
  v483 = v491[130];

  (*(v7 + 8))(v6, v8);
  sub_100004E70(&qword_1002004F8, &qword_1001AAFA8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001AED60;
  v13 = *(v10 + 104);
  v407 = enum case for ISO23220_1_ElementIdentifier.portrait(_:);
  v13(v9);
  v14 = ISO23220_1_ElementIdentifier.rawValue.getter();
  v16 = v15;
  v17 = *(v10 + 8);
  v17(v9, v11);
  *(inited + 32) = v14;
  *(inited + 40) = v16;
  v404 = enum case for ISO23220_1_ElementIdentifier.givenName(_:);
  v13(v423);
  v18 = ISO23220_1_ElementIdentifier.rawValue.getter();
  v20 = v19;
  v17(v423, v11);
  *(inited + 48) = v18;
  *(inited + 56) = v20;
  v401 = enum case for ISO23220_1_ElementIdentifier.familyName(_:);
  v13(v427);
  v21 = ISO23220_1_ElementIdentifier.rawValue.getter();
  v23 = v22;
  v17(v427, v11);
  *(inited + 64) = v21;
  *(inited + 72) = v23;
  v398 = enum case for ISO23220_1_ElementIdentifier.birthDate(_:);
  v13(v432);
  v24 = ISO23220_1_ElementIdentifier.rawValue.getter();
  v26 = v25;
  v17(v432, v11);
  *(inited + 80) = v24;
  *(inited + 88) = v26;
  v395 = enum case for ISO23220_1_ElementIdentifier.expiryDate(_:);
  v13(v440);
  v27 = ISO23220_1_ElementIdentifier.rawValue.getter();
  v29 = v28;
  v17(v440, v11);
  *(inited + 96) = v27;
  *(inited + 104) = v29;
  (v13)(v448, enum case for ISO23220_1_ElementIdentifier.sex(_:), v11);
  v30 = ISO23220_1_ElementIdentifier.rawValue.getter();
  v32 = v31;
  v17(v448, v11);
  *(inited + 112) = v30;
  *(inited + 120) = v32;
  v392 = enum case for ISO23220_1_ElementIdentifier.nationality(_:);
  v13(v453);
  v33 = ISO23220_1_ElementIdentifier.rawValue.getter();
  v35 = v34;
  v17(v453, v11);
  *(inited + 128) = v33;
  *(inited + 136) = v35;
  v389 = enum case for ISO23220_1_ElementIdentifier.documentNumber(_:);
  v413 = v13;
  v13(v483);
  v36 = ISO23220_1_ElementIdentifier.rawValue.getter();
  v38 = v37;
  v410 = v17;
  v17(v483, v11);
  *(inited + 144) = v36;
  *(inited + 152) = v38;
  v484 = inited;
  (*(v460 + 104))(v473, enum case for ISO18013KnownNamespaces.iso23220_1(_:), v467);
  v39 = ISO18013KnownNamespaces.rawValue.getter();
  v41 = v40;
  (*(v460 + 8))(v473, v467);
  if (!*(v478 + 16))
  {

    goto LABEL_17;
  }

  v42 = v491[66];
  v43 = sub_100099644(v39, v41);
  v45 = v44;

  if ((v45 & 1) == 0)
  {
LABEL_17:
    v65 = v491[77];
    v66 = v491[76];
    v67 = v491[75];
    v68 = v491[74];

    (*(v67 + 104))(v66, enum case for DIPError.Code.mDocelementsMapUnavailable(_:), v68);
    sub_10002688C(_swiftEmptyArrayStorage);
    sub_10018FF54(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    v69 = 730;
LABEL_47:
    v350 = v69;
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
LABEL_48:
    v162 = v5[142];
    defaultLogger()();
    swift_errorRetain();
    v163 = Logger.logObject.getter();
    v164 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v163, v164))
    {
      v165 = swift_slowAlloc();
      v166 = swift_slowAlloc();
      *v165 = 138412290;
      swift_errorRetain();
      v167 = _swift_stdlib_bridgeErrorToNSError();
      *(v165 + 4) = v167;
      *v166 = v167;
      _os_log_impl(&_mh_execute_header, v163, v164, "Device cross check failed with error: %@", v165, 0xCu);
      sub_10000A0D4(v166, &qword_1002003B8, &unk_1001AB850);
    }

    v168 = v5[142];
    v169 = v5[139];
    v170 = v5[138];
    v171 = *(v5 + 1360);

    v172 = *(v169 + 8);
    v172(v168, v170);
    if ((v171 & 1) != 0 || (v173 = [objc_opt_self() standardUserDefaults], v174._countAndFlagsBits = static SharedInternalDefaultsKeys.makeDeviceCrossCheckErrorsTerminal.getter(), v175 = NSUserDefaults.internalBool(forKey:)(v174), , v173, v175))
    {
      v176 = v5[146];
      v177 = v5[145];
      v178 = v5[144];
      v179 = v5[143];
      v180 = v5[142];
      v181 = v5[141];
      v182 = v5[140];
      v183 = v5[137];
      v184 = v491[136];
      v351 = v491[135];
      v352 = v491[134];
      v353 = v491[133];
      v355 = v491[132];
      v357 = v491[131];
      v359 = v491[130];
      v361 = v491[129];
      v363 = v491[128];
      v365 = v491[127];
      v367 = v491[126];
      v369 = v491[125];
      v371 = v491[124];
      v373 = v491[123];
      v375 = v491[120];
      v377 = v491[117];
      v379 = v491[116];
      v381 = v491[115];
      v383 = v491[112];
      v385 = v491[111];
      v387 = v491[108];
      v390 = v491[107];
      v393 = v491[106];
      v396 = v491[105];
      v399 = v491[104];
      v402 = v491[103];
      v405 = v491[102];
      v408 = v491[101];
      v411 = v491[98];
      v414 = v491[97];
      v416 = v491[96];
      v418 = v491[95];
      v420 = v491[94];
      v424 = v491[93];
      v430 = v491[92];
      v435 = v491[91];
      v443 = v491[90];
      v451 = v491[87];
      v456 = v491[86];
      v464 = v491[83];
      v470 = v491[80];
      v475 = v491[79];
      v480 = v491[76];
      v487 = v491[73];
      swift_willThrow();

      v185 = v491[1];
    }

    else
    {
      v186 = v5[141];
      v187 = v5[138];
      defaultLogger()();
      DIPRecordError(_:message:log:)();

      v172(v186, v187);
      v188 = v5[146];
      v189 = v5[145];
      v190 = v5[144];
      v191 = v5[143];
      v192 = v5[142];
      v193 = v5[141];
      v194 = v5[140];
      v195 = v5[137];
      v196 = v491[136];
      v197 = v491[135];
      v198 = v491[134];
      v354 = v491[133];
      v356 = v491[132];
      v358 = v491[131];
      v360 = v491[130];
      v362 = v491[129];
      v364 = v491[128];
      v366 = v491[127];
      v368 = v491[126];
      v370 = v491[125];
      v372 = v491[124];
      v374 = v491[123];
      v376 = v491[120];
      v378 = v491[117];
      v380 = v491[116];
      v382 = v491[115];
      v384 = v491[112];
      v386 = v491[111];
      v388 = v491[108];
      v391 = v491[107];
      v394 = v491[106];
      v397 = v491[105];
      v400 = v491[104];
      v403 = v491[103];
      v406 = v491[102];
      v409 = v491[101];
      v412 = v491[98];
      v415 = v491[97];
      v417 = v491[96];
      v419 = v491[95];
      v421 = v491[94];
      v425 = v491[93];
      v431 = v491[92];
      v436 = v491[91];
      v444 = v491[90];
      v452 = v491[87];
      v457 = v491[86];
      v465 = v491[83];
      v471 = v491[80];
      v476 = v491[79];
      v481 = v491[76];
      v488 = v491[73];

      v185 = v491[1];
    }

    return v185();
  }

  v46 = *(*(v491[66] + 56) + 8 * v43);
  v47 = v46[2];

  v479 = v47;
  if (v47)
  {
    v48 = 0;
    v49 = v491[114];
    v449 = (v491[110] + 8);
    v461 = v49;
    v433 = (v49 + 8);
    v441 = (v49 + 32);
    v474 = v46;
    while (v48 < v46[2])
    {
      v50 = v5[112];
      v51 = v5[109];
      v52 = (*(v461 + 80) + 32) & ~*(v461 + 80);
      v53 = v46 + v52;
      v54 = *(v461 + 72);
      (*(v461 + 16))(v5[117], &v53[v54 * v48], v5[113]);
      CBOREncodedCBOR.value.getter();
      v55 = ISO18013IssuerSignedItem.elementIdentifier.getter();
      v57 = v56;
      (*v449)(v50, v51);
      v5[42] = v55;
      v5[43] = v57;
      v58 = swift_task_alloc();
      *(v58 + 16) = v491 + 42;
      LOBYTE(v50) = sub_100120CF8(sub_10000ED28, v58, v484);

      v59 = v5[117];
      if (v50)
      {
        v60 = *v441;
        (*v441)(v5[116], v5[117], v5[113]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_10010A758(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v62 = _swiftEmptyArrayStorage[2];
        v61 = _swiftEmptyArrayStorage[3];
        if (v62 >= v61 >> 1)
        {
          sub_10010A758(v61 > 1, v62 + 1, 1);
        }

        v5 = v491;
        v63 = v491[116];
        v64 = v491[113];
        _swiftEmptyArrayStorage[2] = v62 + 1;
        v60(_swiftEmptyArrayStorage + v52 + v62 * v54, v63, v64);
      }

      else
      {
        (*v433)(v5[117], v5[113]);
      }

      ++v48;
      v46 = v474;
      if (v479 == v48)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
    goto LABEL_64;
  }

LABEL_18:
  swift_setDeallocating();
  swift_arrayDestroy();

  v468 = _swiftEmptyArrayStorage[2];
  if (v468)
  {
    v70 = 0;
    v71 = v5[114];
    v454 = _swiftEmptyArrayStorage + ((*(v71 + 80) + 32) & ~*(v71 + 80));
    v462 = v71;
    v442 = v5[100];
    v474 = (v442 + 32);
    v428 = (v71 + 8);
    v434 = (v5[110] + 8);
    v72 = _swiftEmptyDictionarySingleton;
    while (1)
    {
      if (v70 >= _swiftEmptyArrayStorage[2])
      {
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
        goto LABEL_65;
      }

      v75 = v5[115];
      v76 = v5[113];
      v77 = v5[111];
      v78 = v5[108];
      v79 = v5;
      v80 = v72;
      v81 = v79[107];
      v82 = v79;
      v83 = v79[99];
      (*(v462 + 16))(v75, &v454[*(v462 + 72) * v70], v76);
      CBOREncodedCBOR.value.getter();
      v84 = ISO18013IssuerSignedItem.elementIdentifier.getter();
      v86 = v85;
      ISO18013IssuerSignedItem.elementValue.getter();
      v87 = v83;
      v88 = *v474;
      (*v474)(v81, v78, v87);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v492 = v80;
      v90 = sub_100099644(v84, v86);
      v92 = v80[2];
      v93 = (v91 & 1) == 0;
      v94 = __OFADD__(v92, v93);
      v95 = v92 + v93;
      if (v94)
      {
        goto LABEL_67;
      }

      v96 = v91;
      if (v80[3] >= v95)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v105 = v90;
          sub_10010A13C();
          v90 = v105;
        }
      }

      else
      {
        sub_100108DE8(v95, isUniquelyReferenced_nonNull_native);
        v90 = sub_100099644(v84, v86);
        if ((v96 & 1) != (v97 & 1))
        {

          return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        }
      }

      v479 = v82[113];
      v485 = v82[115];
      v98 = v82[111];
      v99 = v82[109];
      v100 = v82[107];
      v101 = v82[99];
      if (v96)
      {
        v73 = v90;

        v74 = v492[7] + *(v442 + 72) * v73;
        v72 = v492;
        (*(v442 + 40))(v74, v100, v101);
        (*v434)(v98, v99);
        (*v428)(v485, v479);
      }

      else
      {
        v492[(v90 >> 6) + 8] |= 1 << v90;
        v102 = (v492[6] + 16 * v90);
        *v102 = v84;
        v102[1] = v86;
        v72 = v492;
        v88(v492[7] + *(v442 + 72) * v90, v100, v101);
        (*v434)(v98, v99);
        (*v428)(v485, v479);
        v103 = v492[2];
        v94 = __OFADD__(v103, 1);
        v104 = v103 + 1;
        if (v94)
        {
          goto LABEL_68;
        }

        v492[2] = v104;
      }

      ++v70;
      v5 = v491;
      if (v468 == v70)
      {
        goto LABEL_33;
      }
    }
  }

  v72 = _swiftEmptyDictionarySingleton;
LABEL_33:
  v106 = v5[129];
  v107 = v5[121];

  (v413)(v106, v407, v107);
  v108 = ISO23220_1_ElementIdentifier.rawValue.getter();
  v110 = v109;
  v410(v106, v107);
  if (!v72[2])
  {

LABEL_46:
    v5 = v491;
    v158 = v491[77];
    v159 = v491[76];
    v160 = v491[75];
    v161 = v491[74];

    (*(v160 + 104))(v159, enum case for DIPError.Code.deviceCrossCheckPortraitUnavailable(_:), v161);
    sub_10002688C(_swiftEmptyArrayStorage);
    sub_10018FF54(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    v69 = 734;
    goto LABEL_47;
  }

  v111 = sub_100099644(v108, v110);
  v113 = v112;

  v114 = v72;
  if ((v113 & 1) == 0)
  {
    goto LABEL_46;
  }

  v115 = v491[106];
  v116 = v491[100];
  v117 = v491[99];
  v118 = v116[9];
  v486 = v116[2];
  v486(v115, v72[7] + v118 * v111, v117);
  v119 = AnyCodable.dataValue.getter();
  v121 = v120;
  v491[147] = v119;
  v491[148] = v120;
  v122 = v116[1];
  v122(v115, v117);
  if (v121 >> 60 == 15)
  {
    goto LABEL_46;
  }

  v479 = v121;
  v123 = v491[128];
  v124 = v491[121];
  (v413)(v123, v404, v124);
  v125 = ISO23220_1_ElementIdentifier.rawValue.getter();
  v127 = v126;
  v410(v123, v124);
  v474 = v119;
  if (!v114[2])
  {

LABEL_61:

    v5 = v491;
    v200 = v491[77];
    (*(v491[75] + 104))(v491[76], enum case for DIPError.Code.deviceCrossCheckGivenNameUnavailable(_:), v491[74]);
    sub_10002688C(_swiftEmptyArrayStorage);
    sub_10018FF54(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    v201 = 738;
LABEL_62:
    v350 = v201;
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_10001C120(v474, v479);
    goto LABEL_48;
  }

  v128 = sub_100099644(v125, v127);
  v130 = v129;

  if ((v130 & 1) == 0)
  {
    goto LABEL_61;
  }

  v131 = v491[105];
  v132 = v491[99];
  v486(v131, v114[7] + v128 * v118, v132);
  v133 = AnyCodable.stringValue.getter();
  v135 = v134;
  v122(v131, v132);
  if (!v135)
  {
    goto LABEL_61;
  }

  v469 = v133;
  v136 = v491[127];
  v137 = v491[121];
  (v413)(v136, v401, v137);
  v138 = ISO23220_1_ElementIdentifier.rawValue.getter();
  v140 = v139;
  v410(v136, v137);
  if (!v114[2])
  {
LABEL_64:

LABEL_65:

    v5 = v491;
    v202 = v491[77];
    v203 = v491[76];
    v204 = v491[75];
    v205 = v491[74];

    (*(v204 + 104))(v203, enum case for DIPError.Code.deviceCrossCheckFamilyNameUnavailable(_:), v205);
    sub_10002688C(_swiftEmptyArrayStorage);
    sub_10018FF54(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    v201 = 742;
    goto LABEL_62;
  }

  v141 = sub_100099644(v138, v140);
  v143 = v142;

  if ((v143 & 1) == 0)
  {
    goto LABEL_65;
  }

  v463 = v135;
  v144 = v491[104];
  v145 = v491[99];
  v486(v144, v114[7] + v141 * v118, v145);
  v146 = AnyCodable.stringValue.getter();
  v148 = v147;
  v122(v144, v145);
  if (!v148)
  {
    goto LABEL_65;
  }

  v429 = v146;
  v450 = v148;
  v149 = v491[126];
  v150 = v491[121];
  (v413)(v149, v398, v150);
  v151 = ISO23220_1_ElementIdentifier.rawValue.getter();
  v153 = v152;
  v410(v149, v150);
  v455 = v114;
  if (v114[2])
  {
    v154 = sub_100099644(v151, v153);
    v156 = v155;

    if (v156)
    {
      v486(v491[98], v114[7] + v154 * v118, v491[99]);
      v157 = 0;
      goto LABEL_72;
    }
  }

  else
  {
  }

  v157 = 1;
LABEL_72:
  v206 = v491[100];
  v207 = v491[99];
  v208 = v491[98];
  v209 = v491[97];
  (*(v206 + 56))(v208, v157, 1, v207);
  sub_100046360(v208, v209, &qword_100202988, &unk_1001AD140);
  v437 = *(v206 + 48);
  if (v437(v209, 1, v207) == 1)
  {
    v210 = v491[94];
    v211 = v491[85];
    v212 = v491[84];
    sub_10000A0D4(v491[97], &qword_100202988, &unk_1001AD140);
    (*(v211 + 56))(v210, 1, 1, v212);
  }

  else
  {
    v213 = v491[99];
    v214 = v491[97];
    v215 = v491[94];
    v216 = v491[85];
    v217 = v491[84];
    AnyCodable.dateValue.getter();
    v122(v214, v213);
    v218 = v217;
    v219 = *(v216 + 48);
    if (v219(v215, 1, v218) != 1)
    {
      v230 = v491[95];
      v231 = v491[85];
      v232 = v491[84];
      (*(v231 + 32))(v230, v491[94], v232);
      (*(v231 + 56))(v230, 0, 1, v232);
      v233 = v219;
      goto LABEL_84;
    }
  }

  v220 = v491[99];
  v221 = v491[96];
  sub_100046360(v491[98], v221, &qword_100202988, &unk_1001AD140);
  if (v437(v221, 1, v220) == 1)
  {
    v222 = v491[96];
    v223 = &qword_100202988;
    v224 = &unk_1001AD140;
LABEL_79:
    sub_10000A0D4(v222, v223, v224);
    (*(v491[85] + 56))(v491[95], 1, 1, v491[84]);
    goto LABEL_82;
  }

  v225 = v491[99];
  v226 = v491[96];
  v227 = v491[91];
  AnyCodable.birthDateValue.getter();
  v122(v226, v225);
  v228 = type metadata accessor for ISO23220.BirthDate();
  v229 = *(v228 - 8);
  if ((*(v229 + 48))(v227, 1, v228) == 1)
  {
    v222 = v491[91];
    v223 = &qword_100203D18;
    v224 = &qword_1001AEDF8;
    goto LABEL_79;
  }

  v234 = v491[91];
  v235 = v491[90];
  v236 = v491[89];
  v438 = v491[95];
  v445 = v491[88];
  ISO23220.BirthDate.dateComponents.getter();
  (*(v229 + 8))(v234, v228);
  DateComponents.date.getter();
  (*(v236 + 8))(v235, v445);
LABEL_82:
  v237 = v491[94];
  v233 = *(v491[85] + 48);
  if (v233(v237, 1, v491[84]) != 1)
  {
    sub_10000A0D4(v237, &qword_1002004D0, &unk_1001AE1C0);
  }

LABEL_84:
  v238 = v491[93];
  v239 = v491[84];
  sub_100046360(v491[95], v238, &qword_1002004D0, &unk_1001AE1C0);
  if (v233(v238, 1, v239) == 1)
  {
    v240 = v491[98];
    v241 = v491[95];
    v242 = v491[93];
    v243 = v491[77];
    v244 = v491[76];
    v245 = v491[75];
    v246 = v491[74];

    sub_10000A0D4(v242, &qword_1002004D0, &unk_1001AE1C0);
    (*(v245 + 104))(v244, enum case for DIPError.Code.deviceCrossCheckDobUnavailable(_:), v246);
    sub_10002688C(_swiftEmptyArrayStorage);
    sub_10018FF54(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    v350 = 749;
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_10001C120(v474, v479);
    sub_10000A0D4(v241, &qword_1002004D0, &unk_1001AE1C0);
    sub_10000A0D4(v240, &qword_100202988, &unk_1001AD140);
    v5 = v491;
    goto LABEL_48;
  }

  v439 = v233;
  v247 = v491[125];
  v248 = v491[121];
  v426 = *(v491[85] + 32);
  v426(v491[87], v491[93], v491[84]);
  (v413)(v247, v395, v248);
  v249 = ISO23220_1_ElementIdentifier.rawValue.getter();
  v251 = v250;
  v410(v247, v248);
  if (!v455[2])
  {

    goto LABEL_91;
  }

  v252 = sub_100099644(v249, v251);
  v254 = v253;

  if ((v254 & 1) == 0)
  {
LABEL_91:

    v258 = v491;
    v259 = v491[92];
    v260 = v491[85];
    v261 = v491[84];

    (*(v260 + 56))(v259, 1, 1, v261);
    goto LABEL_92;
  }

  v255 = v491[103];
  v256 = v491[99];
  v257 = v491[92];
  v422 = v491[84];
  v486(v255, v455[7] + v252 * v118, v256);
  AnyCodable.dateValue.getter();
  v122(v255, v256);
  if (v439(v257, 1, v422) == 1)
  {

    v258 = v491;
LABEL_92:
    v489 = v258[98];
    v262 = v258[95];
    v263 = v258[87];
    v264 = v258[85];
    v265 = v258[84];
    v266 = v258[77];
    v267 = v258[76];
    v268 = v258[75];
    v269 = v491[74];
    sub_10000A0D4(v258[92], &qword_1002004D0, &unk_1001AE1C0);
    (*(v268 + 104))(v267, enum case for DIPError.Code.deviceCrossCheckDoeUnavailable(_:), v269);
    sub_10002688C(_swiftEmptyArrayStorage);
    sub_10018FF54(&qword_100200200, &type metadata accessor for DIPError);
    v350 = 753;
    swift_allocError();
    v5 = v491;
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_10001C120(v474, v479);
    (*(v264 + 8))(v263, v265);
    v270 = v262;
LABEL_93:
    sub_10000A0D4(v270, &qword_1002004D0, &unk_1001AE1C0);
    sub_10000A0D4(v489, &qword_100202988, &unk_1001AD140);
    goto LABEL_48;
  }

  v271 = v491[124];
  v272 = v491[121];
  v426(v491[86], v491[92], v491[84]);
  (v413)(v271, v392, v272);
  v273 = ISO23220_1_ElementIdentifier.rawValue.getter();
  v275 = v274;
  v410(v271, v272);
  if (!v455[2])
  {

LABEL_106:

    v5 = v491;
    v489 = v491[98];
    v466 = v491[87];
    v472 = v491[95];
    v335 = v491[86];
    v336 = v491[85];
    v337 = v491[84];
    v338 = v491[77];
    v339 = v491[76];
    v340 = v491[75];
    v341 = v491[74];

    (*(v340 + 104))(v339, enum case for DIPError.Code.deviceCrossCheckNationalityUnavailable(_:), v341);
    sub_10002688C(_swiftEmptyArrayStorage);
    sub_10018FF54(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    v350 = 757;
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_10001C120(v474, v479);
    v342 = *(v336 + 8);
    v342(v335, v337);
    v342(v466, v337);
LABEL_107:
    v270 = v472;
    goto LABEL_93;
  }

  v276 = sub_100099644(v273, v275);
  v278 = v277;

  if ((v278 & 1) == 0)
  {
    goto LABEL_106;
  }

  v279 = v491[102];
  v280 = v491[99];
  v486(v279, v455[7] + v276 * v118, v280);
  v281 = AnyCodable.stringValue.getter();
  v283 = v282;
  v491[149] = v281;
  v491[150] = v282;
  v122(v279, v280);
  if (!v283)
  {
    goto LABEL_106;
  }

  v284 = v491[123];
  v285 = v491[121];
  (v413)(v284, v389, v285);
  v286 = ISO23220_1_ElementIdentifier.rawValue.getter();
  v288 = v287;
  v410(v284, v285);
  if (!v455[2])
  {

    goto LABEL_110;
  }

  v289 = sub_100099644(v286, v288);
  v291 = v290;

  if ((v291 & 1) == 0)
  {
LABEL_110:

LABEL_111:
    v5 = v491;
    v489 = v491[98];
    v472 = v491[95];
    v459 = v491[87];
    v447 = v491[86];
    v343 = v491[85];
    v344 = v491[84];
    v345 = v491[77];
    v346 = v491[76];
    v347 = v491[75];
    v348 = v491[74];

    (*(v347 + 104))(v346, enum case for DIPError.Code.deviceCrossCheckDocNumberUnavailable(_:), v348);
    sub_10002688C(_swiftEmptyArrayStorage);
    sub_10018FF54(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    v350 = 761;
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_10001C120(v474, v479);
    v349 = *(v343 + 8);
    v349(v447, v344);
    v349(v459, v344);
    goto LABEL_107;
  }

  v292 = v491[101];
  v293 = v491[99];
  v486(v292, v455[7] + v289 * v118, v293);

  v490 = AnyCodable.stringValue.getter();
  v295 = v294;
  v122(v292, v293);
  if (!v295)
  {
    goto LABEL_111;
  }

  v446 = v491[83];
  v458 = v491[82];
  v477 = v491[81];
  v482 = v491[80];
  v491[44] = v469;
  v491[45] = v463;
  v491[46] = 32;
  v491[47] = 0xE100000000000000;
  v491[48] = 60;
  v491[49] = 0xE100000000000000;
  v296 = sub_100021E18();
  v297 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v299 = v298;

  v491[50] = v429;
  v491[51] = v450;
  v491[52] = 32;
  v491[53] = 0xE100000000000000;
  v491[54] = 60;
  v491[55] = 0xE100000000000000;
  v300 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v302 = v301;

  v303._countAndFlagsBits = 15420;
  v303._object = 0xE200000000000000;
  String.append(_:)(v303);
  v304._countAndFlagsBits = v297;
  v304._object = v299;
  String.append(_:)(v304);

  v491[56] = v300;
  v491[57] = v302;
  v491[58] = 60;
  v491[59] = 0xE100000000000000;
  v305 = StringProtocol.padding<A>(toLength:withPad:startingAt:)();
  v307 = v306;

  v491[151] = v305;
  v491[152] = v307;
  v491[60] = v490;
  v491[61] = v295;
  v491[62] = 60;
  v491[63] = 0xE100000000000000;
  v308 = StringProtocol.padding<A>(toLength:withPad:startingAt:)();
  v310 = v309;

  v491[153] = v308;
  v491[154] = v310;
  v311 = [objc_allocWithZone(NSDateFormatter) init];
  v491[155] = v311;
  v312 = String._bridgeToObjectiveC()();
  [v311 setDateFormat:v312];

  Locale.init(identifier:)();
  isa = Locale._bridgeToObjectiveC()().super.isa;
  (*(v458 + 8))(v446, v477);
  [v311 setLocale:isa];

  TimeZone.init(abbreviation:)();
  v314 = type metadata accessor for TimeZone();
  v315 = *(v314 - 8);
  v316 = 0;
  if ((*(v315 + 48))(v482, 1, v314) != 1)
  {
    v317 = v491[80];
    v316 = TimeZone._bridgeToObjectiveC()().super.isa;
    (*(v315 + 8))(v317, v314);
  }

  v318 = v491[87];
  v319 = v491[86];
  v320 = v491[68];
  [v311 setTimeZone:v316];

  v321 = Date._bridgeToObjectiveC()().super.isa;
  v322 = [v311 stringFromDate:v321];

  v323 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v325 = v324;

  v491[156] = v323;
  v491[157] = v325;
  v326 = Date._bridgeToObjectiveC()().super.isa;
  v327 = [v311 stringFromDate:v326];

  v328 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v330 = v329;

  v491[158] = v328;
  v491[159] = v330;

  v331 = swift_task_alloc();
  v491[160] = v331;
  *v331 = v491;
  v331[1] = sub_100187858;
  v332 = v491[70];
  v333 = v491[68];
  v334 = v491[67];

  return sub_10017325C(v334, v333, 0);
}

uint64_t sub_100187858(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 1280);
  v15 = *v3;
  v4[161] = a1;
  v4[162] = a2;
  v4[163] = v2;

  if (v2)
  {
    v6 = v4[159];
    v7 = v4[157];
    v8 = v4[154];
    v9 = v4[152];
    v10 = v4[150];
    v11 = v4[68];

    v12 = sub_10018A6DC;
  }

  else
  {
    v13 = v4[68];

    v12 = sub_1001879FC;
  }

  return _swift_task_switch(v12, 0, 0);
}

uint64_t sub_1001879FC()
{
  v288 = v0;
  v1 = *(v0 + 1160);
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "performFieldBasedHashComparison", v4, 2u);
  }

  v5 = *(v0 + 1296);
  v6 = *(v0 + 1288);
  v7 = *(v0 + 1160);
  v8 = *(v0 + 1112);
  v9 = *(v0 + 1104);

  v10 = *(v8 + 8);
  *(v0 + 1312) = v10;
  v10(v7, v9);

  v11 = Data.init(base16Encoded:)();
  *(v0 + 1320) = v11;
  *(v0 + 1328) = v12;
  if (v12 >> 60 == 15)
  {
    goto LABEL_11;
  }

  v13 = v11;
  v14 = v12;
  v15 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  *(v0 + 512) = 0;
  v17 = [v15 JSONObjectWithData:isa options:0 error:v0 + 512];

  v18 = *(v0 + 512);
  if (!v17)
  {
    v36 = v18;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v37 = v13;
    v38 = v14;
LABEL_9:
    sub_10001C120(v37, v38);
    goto LABEL_12;
  }

  v19 = v18;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100004E70(&qword_1002018D0, &qword_1001AAEA0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_10001C120(v13, v14);
LABEL_11:
    v39 = *(v0 + 616);
    (*(*(v0 + 600) + 104))(*(v0 + 608), enum case for DIPError.Code.incorrectPIIHashFormat(_:), *(v0 + 592));
    sub_10002688C(_swiftEmptyArrayStorage);
    sub_10018FF54(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    goto LABEL_12;
  }

  v245 = v13;
  v249 = v14;
  v275 = *(v0 + 1272);
  v281 = *(v0 + 1304);
  v263 = *(v0 + 1264);
  v269 = *(v0 + 1256);
  v20 = *(v0 + 1248);
  v21 = *(v0 + 1232);
  v22 = *(v0 + 1224);
  v23 = *(v0 + 1216);
  v24 = *(v0 + 1208);
  v258 = *(v0 + 1192);
  v25 = *(v0 + 1184);
  v26 = *(v0 + 1176);
  v27 = *(v0 + 520);
  *(v0 + 1336) = v27;
  sub_10010CBB4(_swiftEmptyArrayStorage);

  Data.base16EncodedString()();
  v28 = v281;
  v282 = static PassportPIIHashUtility.generatePIIHashes(portrait:holder:dob:doe:nationality:docNumber:)();
  *(v0 + 1344) = v282;
  if (v28)
  {
    v29 = *(v0 + 632);
    v30 = *(v0 + 624);
    v31 = *(v0 + 616);
    v32 = *(v0 + 608);
    v33 = *(v0 + 600);
    v34 = *(v0 + 592);

    (*(v33 + 104))(v32, enum case for DIPError.Code.deviceCrossCheckFailedToGenerateHashForFieldBasedHash(_:), v34);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    sub_10018FF54(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    (*(v30 + 16))(v35, v29, v31);
    swift_willThrow();
    sub_10001C120(v245, v249);

    (*(v30 + 8))(v29, v31);
LABEL_12:
    v40 = *(v0 + 1144);
    defaultLogger()();
    swift_errorRetain();
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *v43 = 138412290;
      swift_errorRetain();
      v45 = _swift_stdlib_bridgeErrorToNSError();
      *(v43 + 4) = v45;
      *v44 = v45;
      _os_log_impl(&_mh_execute_header, v41, v42, "Failed to perform field based hash comparison performing concatenated hash comparison: %@", v43, 0xCu);
      sub_10000A0D4(v44, &qword_1002003B8, &unk_1001AB850);
    }

    v46 = *(v0 + 1312);
    v47 = *(v0 + 1144);
    v48 = *(v0 + 1120);
    v49 = *(v0 + 1112);
    v50 = *(v0 + 1104);

    v46(v47, v50);
    defaultLogger()();
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&_mh_execute_header, v51, v52, "performConcatenatedHashComparison", v53, 2u);
    }

    v54 = *(v0 + 1312);
    v55 = *(v0 + 1272);
    v246 = *(v0 + 1264);
    v252 = *(v0 + 1248);
    v270 = *(v0 + 1224);
    v56 = *(v0 + 1216);
    v57 = *(v0 + 1208);
    v264 = *(v0 + 1200);
    v259 = *(v0 + 1192);
    v58 = *(v0 + 1184);
    v59 = *(v0 + 1176);
    v60 = *(v0 + 1120);
    v61 = *(v0 + 1104);
    v283 = *(v0 + 584);

    v54(v60, v61);
    v287[0] = Data.base16EncodedString()();

    v62._countAndFlagsBits = v57;
    v62._object = v56;
    String.append(_:)(v62);

    v63._countAndFlagsBits = v246;
    v63._object = v55;
    String.append(_:)(v63);

    String.append(_:)(v252);

    v64._countAndFlagsBits = v259;
    v64._object = v264;
    String.append(_:)(v64);

    String.append(_:)(v270);

    v65 = String.lowercased()();

    static AlgorithmIdentifier.sha256.getter();
    v66 = sub_10018CCD8(v65._countAndFlagsBits, v65._object);
    v68 = v67;
    v69 = AlgorithmIdentifier.hash(_:)();
    v70 = *(v0 + 1296);
    v103 = *(v0 + 1288);
    v104 = v69;
    v106 = v105;
    (*(*(v0 + 576) + 8))(*(v0 + 584), *(v0 + 568));
    sub_1000092BC(v66, v68);
    v107 = Data.base16EncodedString()();
    sub_1000092BC(v104, v106);
    if (v103 != v107._countAndFlagsBits || v70 != v107._object)
    {
      v108 = *(v0 + 1296);
      v109 = *(v0 + 1288);
      if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        v131 = *(v0 + 1288);
        v267 = *(v0 + 1296);
        v273 = *(v0 + 608);
        v132 = *(v0 + 600);
        v278 = *(v0 + 592);
        v286 = *(v0 + 616);
        sub_100004E70(&qword_1002034C8, &qword_1001ADD48);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1001AA160;
        *(inited + 32) = 0x687361682D696970;
        v134 = inited + 32;
        *(inited + 40) = 0xE800000000000000;
        *(inited + 48) = v107;
        sub_10010CBB4(inited);
        swift_setDeallocating();
        sub_10000A0D4(v134, &qword_100200468, &qword_1001AAE98);
        v135 = swift_initStackObject();
        *(v135 + 16) = xmmword_1001AA160;
        *(v135 + 32) = 0x687361682D696970;
        v136 = v135 + 32;
        *(v135 + 40) = 0xE800000000000000;
        *(v135 + 48) = v131;
        *(v135 + 56) = v267;
        sub_10010CBB4(v135);
        swift_setDeallocating();
        sub_10000A0D4(v136, &qword_100200468, &qword_1001AAE98);
        sub_100005918();

        (*(v132 + 104))(v273, enum case for DIPError.Code.deviceCrossCheckFailedHashMismatch(_:), v278);
        sub_10002688C(_swiftEmptyArrayStorage);
        sub_10018FF54(&qword_100200200, &type metadata accessor for DIPError);
        swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();
        v71 = *(v0 + 1184);
        v72 = *(v0 + 1176);
        v73 = *(v0 + 784);
        v74 = *(v0 + 760);
        v75 = *(v0 + 696);
        v76 = *(v0 + 688);
        v77 = *(v0 + 680);
        v78 = *(v0 + 672);

        sub_10001C120(v72, v71);

        v79 = *(v77 + 8);
        v79(v76, v78);
        v79(v75, v78);
        sub_10000A0D4(v74, &qword_1002004D0, &unk_1001AE1C0);
        sub_10000A0D4(v73, &qword_100202988, &unk_1001AD140);
        v80 = *(v0 + 1136);
        defaultLogger()();
        swift_errorRetain();
        v81 = Logger.logObject.getter();
        v82 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v81, v82))
        {
          v83 = swift_slowAlloc();
          v84 = swift_slowAlloc();
          *v83 = 138412290;
          swift_errorRetain();
          v85 = _swift_stdlib_bridgeErrorToNSError();
          *(v83 + 4) = v85;
          *v84 = v85;
          _os_log_impl(&_mh_execute_header, v81, v82, "Device cross check failed with error: %@", v83, 0xCu);
          sub_10000A0D4(v84, &qword_1002003B8, &unk_1001AB850);
        }

        v86 = *(v0 + 1136);
        v87 = *(v0 + 1112);
        v88 = *(v0 + 1104);
        v89 = *(v0 + 1360);

        v90 = *(v87 + 8);
        v90(v86, v88);
        if ((v89 & 1) != 0 || (v91 = [objc_opt_self() standardUserDefaults], v92._countAndFlagsBits = static SharedInternalDefaultsKeys.makeDeviceCrossCheckErrorsTerminal.getter(), v93 = NSUserDefaults.internalBool(forKey:)(v92), , v91, v93))
        {
          v94 = *(v0 + 1168);
          v95 = *(v0 + 1160);
          v96 = *(v0 + 1152);
          v97 = *(v0 + 1144);
          v98 = *(v0 + 1136);
          v99 = *(v0 + 1128);
          v100 = *(v0 + 1120);
          v101 = *(v0 + 1096);
          v176 = *(v0 + 1088);
          v177 = *(v0 + 1080);
          v178 = *(v0 + 1072);
          v180 = *(v0 + 1064);
          v182 = *(v0 + 1056);
          v184 = *(v0 + 1048);
          v186 = *(v0 + 1040);
          v188 = *(v0 + 1032);
          v190 = *(v0 + 1024);
          v192 = *(v0 + 1016);
          v194 = *(v0 + 1008);
          v196 = *(v0 + 1000);
          v198 = *(v0 + 992);
          v200 = *(v0 + 984);
          v202 = *(v0 + 960);
          v204 = *(v0 + 936);
          v206 = *(v0 + 928);
          v208 = *(v0 + 920);
          v210 = *(v0 + 896);
          v212 = *(v0 + 888);
          v214 = *(v0 + 864);
          v216 = *(v0 + 856);
          v218 = *(v0 + 848);
          v220 = *(v0 + 840);
          v222 = *(v0 + 832);
          v224 = *(v0 + 824);
          v226 = *(v0 + 816);
          v228 = *(v0 + 808);
          v230 = *(v0 + 784);
          v232 = *(v0 + 776);
          v234 = *(v0 + 768);
          v236 = *(v0 + 760);
          v239 = *(v0 + 752);
          v241 = *(v0 + 744);
          v243 = *(v0 + 736);
          v247 = *(v0 + 728);
          v250 = *(v0 + 720);
          v253 = *(v0 + 696);
          v255 = *(v0 + 688);
          v260 = *(v0 + 664);
          v265 = *(v0 + 640);
          v271 = *(v0 + 632);
          v276 = *(v0 + 608);
          v284 = *(v0 + 584);
          swift_willThrow();

          v102 = *(v0 + 8);
LABEL_29:

          return v102();
        }

        v118 = *(v0 + 1128);
        v119 = *(v0 + 1104);
        defaultLogger()();
        DIPRecordError(_:message:log:)();

        v90(v118, v119);
LABEL_28:
        v120 = *(v0 + 1168);
        v121 = *(v0 + 1160);
        v122 = *(v0 + 1152);
        v123 = *(v0 + 1144);
        v124 = *(v0 + 1136);
        v125 = *(v0 + 1128);
        v126 = *(v0 + 1120);
        v127 = *(v0 + 1096);
        v128 = *(v0 + 1088);
        v129 = *(v0 + 1080);
        v179 = *(v0 + 1072);
        v181 = *(v0 + 1064);
        v183 = *(v0 + 1056);
        v185 = *(v0 + 1048);
        v187 = *(v0 + 1040);
        v189 = *(v0 + 1032);
        v191 = *(v0 + 1024);
        v193 = *(v0 + 1016);
        v195 = *(v0 + 1008);
        v197 = *(v0 + 1000);
        v199 = *(v0 + 992);
        v201 = *(v0 + 984);
        v203 = *(v0 + 960);
        v205 = *(v0 + 936);
        v207 = *(v0 + 928);
        v209 = *(v0 + 920);
        v211 = *(v0 + 896);
        v213 = *(v0 + 888);
        v215 = *(v0 + 864);
        v217 = *(v0 + 856);
        v219 = *(v0 + 848);
        v221 = *(v0 + 840);
        v223 = *(v0 + 832);
        v225 = *(v0 + 824);
        v227 = *(v0 + 816);
        v229 = *(v0 + 808);
        v231 = *(v0 + 784);
        v233 = *(v0 + 776);
        v235 = *(v0 + 768);
        v237 = *(v0 + 760);
        v240 = *(v0 + 752);
        v242 = *(v0 + 744);
        v244 = *(v0 + 736);
        v248 = *(v0 + 728);
        v251 = *(v0 + 720);
        v254 = *(v0 + 696);
        v256 = *(v0 + 688);
        v261 = *(v0 + 664);
        v266 = *(v0 + 640);
        v272 = *(v0 + 632);
        v277 = *(v0 + 608);
        v285 = *(v0 + 584);

        v102 = *(v0 + 8);
        goto LABEL_29;
      }
    }

    v110 = *(v0 + 1296);
    v111 = *(v0 + 1184);
    v112 = *(v0 + 1176);

    sub_10001C120(v112, v111);

LABEL_26:
    v113 = *(v0 + 784);
    v114 = *(v0 + 760);
    v115 = *(v0 + 696);
    v116 = *(v0 + 672);
    v117 = *(*(v0 + 680) + 8);
    v117(*(v0 + 688), v116);
    v117(v115, v116);
    sub_10000A0D4(v114, &qword_1002004D0, &unk_1001AE1C0);
    sub_10000A0D4(v113, &qword_100202988, &unk_1001AD140);
    goto LABEL_28;
  }

  v238 = v27;
  v137 = *(v0 + 1112);

  v138 = v282 + 64;
  v139 = -1;
  v140 = -1 << *(v282 + 32);
  if (-v140 < 64)
  {
    v139 = ~(-1 << -v140);
  }

  v141 = v139 & *(v282 + 64);
  v142 = (63 - v140) >> 6;

  v143 = 0;
  while (v141)
  {
    v144 = v143;
LABEL_43:
    v145 = *(v0 + 1152);
    v146 = __clz(__rbit64(v141));
    v141 &= v141 - 1;
    v147 = (v144 << 10) | (16 * v146);
    v148 = (*(v282 + 48) + v147);
    v149 = v148[1];
    v262 = *v148;
    v150 = (*(v282 + 56) + v147);
    v151 = v150[1];
    v268 = *v150;

    defaultLogger()();

    v152 = Logger.logObject.getter();
    v153 = static os_log_type_t.default.getter();

    v257 = v153;
    v154 = os_log_type_enabled(v152, v153);
    v155 = *(v0 + 1104);
    v274 = v155;
    v279 = *(v0 + 1152);
    if (v154)
    {
      v156 = swift_slowAlloc();
      v287[0]._countAndFlagsBits = swift_slowAlloc();
      *v156 = 136315394;
      v157 = sub_10010150C(v262, v149, &v287[0]._countAndFlagsBits);

      *(v156 + 4) = v157;
      *(v156 + 12) = 2080;
      v158 = sub_10010150C(v268, v151, &v287[0]._countAndFlagsBits);

      *(v156 + 14) = v158;
      _os_log_impl(&_mh_execute_header, v152, v257, "CredentialStorage - Calculated PII Hash for %s is: %s", v156, 0x16u);
      swift_arrayDestroy();

      v138 = v282 + 64;
    }

    else
    {
    }

    v10(v279, v274);
    v143 = v144;
  }

  while (1)
  {
    v144 = v143 + 1;
    if (__OFADD__(v143, 1))
    {
      __break(1u);
    }

    if (v144 >= v142)
    {
      break;
    }

    v141 = *(v138 + 8 * v144);
    ++v143;
    if (v141)
    {
      goto LABEL_43;
    }
  }

  if (!*(v282 + 16))
  {
    v167 = *(v0 + 616);
    v168 = *(v0 + 608);
    v169 = *(v0 + 600);
    v170 = *(v0 + 592);

    (*(v169 + 104))(v168, enum case for DIPError.Code.deviceCrossCheckFailedCalculatedHashEmpty(_:), v170);
    sub_10002688C(_swiftEmptyArrayStorage);
    sub_10018FF54(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v37 = v245;
    v38 = v249;
    goto LABEL_9;
  }

  if (sub_1000FFEB4(v238, v282))
  {
    v159 = *(v0 + 1296);
    v160 = *(v0 + 1272);
    v161 = *(v0 + 1256);
    v162 = *(v0 + 1240);
    v163 = *(v0 + 1232);
    v164 = *(v0 + 1216);
    v165 = *(v0 + 1200);
    v280 = *(v0 + 1184);
    v166 = *(v0 + 1176);
    sub_10001C120(v245, v249);

    sub_10001C120(v166, v280);
    goto LABEL_26;
  }

  sub_100005918();
  v171 = swift_task_alloc();
  *(v0 + 1352) = v171;
  *v171 = v0;
  v171[1] = sub_10018942C;
  v172 = *(v0 + 560);
  v173 = *(v0 + 552);
  v174 = *(v0 + 544);
  v175 = *(v0 + 536);

  return sub_10018D1F8(v238, v282, v175, v174, v173);
}

uint64_t sub_10018942C()
{
  v1 = *(*v0 + 1352);
  v2 = *(*v0 + 1344);
  v3 = *(*v0 + 1336);
  v5 = *v0;

  return _swift_task_switch(sub_100189594, 0, 0);
}

uint64_t sub_100189594()
{
  v1 = *(v0 + 1328);
  v2 = *(v0 + 1320);
  v3 = *(v0 + 616);
  (*(*(v0 + 600) + 104))(*(v0 + 608), enum case for DIPError.Code.deviceCrossCheckFailedHashMismatchForFieldBasedHash(_:), *(v0 + 592));
  sub_10002688C(_swiftEmptyArrayStorage);
  sub_10018FF54(&qword_100200200, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
  sub_10001C120(v2, v1);
  v4 = *(v0 + 1144);
  defaultLogger()();
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to perform field based hash comparison performing concatenated hash comparison: %@", v7, 0xCu);
    sub_10000A0D4(v8, &qword_1002003B8, &unk_1001AB850);
  }

  v10 = *(v0 + 1312);
  v11 = *(v0 + 1144);
  v12 = *(v0 + 1120);
  v13 = *(v0 + 1112);
  v14 = *(v0 + 1104);

  v10(v11, v14);
  defaultLogger()();
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "performConcatenatedHashComparison", v17, 2u);
  }

  v18 = *(v0 + 1312);
  v19 = *(v0 + 1272);
  v167 = *(v0 + 1264);
  v172 = *(v0 + 1248);
  v184 = *(v0 + 1224);
  v20 = *(v0 + 1216);
  v21 = *(v0 + 1208);
  v180 = *(v0 + 1200);
  v177 = *(v0 + 1192);
  v22 = *(v0 + 1184);
  v23 = *(v0 + 1176);
  v24 = *(v0 + 1120);
  v25 = *(v0 + 1104);
  v191 = *(v0 + 584);

  v18(v24, v25);
  Data.base16EncodedString()();

  v26._countAndFlagsBits = v21;
  v26._object = v20;
  String.append(_:)(v26);

  v27._countAndFlagsBits = v167;
  v27._object = v19;
  String.append(_:)(v27);

  String.append(_:)(v172);

  v28._countAndFlagsBits = v177;
  v28._object = v180;
  String.append(_:)(v28);

  String.append(_:)(v184);

  v29 = String.lowercased()();

  static AlgorithmIdentifier.sha256.getter();
  v30 = sub_10018CCD8(v29._countAndFlagsBits, v29._object);
  v32 = v31;
  v33 = AlgorithmIdentifier.hash(_:)();
  v34 = *(v0 + 1296);
  v67 = *(v0 + 1288);
  v68 = v33;
  v70 = v69;
  (*(*(v0 + 576) + 8))(*(v0 + 584), *(v0 + 568));
  sub_1000092BC(v30, v32);
  v71 = Data.base16EncodedString()();
  sub_1000092BC(v68, v70);
  if (v67 == v71._countAndFlagsBits && v34 == v71._object || (v72 = *(v0 + 1296), v73 = *(v0 + 1288), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    v74 = *(v0 + 1296);
    v75 = *(v0 + 1184);
    v76 = *(v0 + 1176);

    sub_10001C120(v76, v75);

    v77 = *(v0 + 784);
    v78 = *(v0 + 760);
    v79 = *(v0 + 696);
    v80 = *(v0 + 672);
    v81 = *(*(v0 + 680) + 8);
    v81(*(v0 + 688), v80);
    v81(v79, v80);
    sub_10000A0D4(v78, &qword_1002004D0, &unk_1001AE1C0);
    sub_10000A0D4(v77, &qword_100202988, &unk_1001AD140);
  }

  else
  {
    v95 = *(v0 + 1288);
    v183 = *(v0 + 1296);
    v187 = *(v0 + 608);
    v96 = *(v0 + 600);
    v190 = *(v0 + 592);
    v194 = *(v0 + 616);
    sub_100004E70(&qword_1002034C8, &qword_1001ADD48);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1001AA160;
    *(inited + 32) = 0x687361682D696970;
    v98 = inited + 32;
    *(inited + 40) = 0xE800000000000000;
    *(inited + 48) = v71;
    sub_10010CBB4(inited);
    swift_setDeallocating();
    sub_10000A0D4(v98, &qword_100200468, &qword_1001AAE98);
    v99 = swift_initStackObject();
    *(v99 + 16) = xmmword_1001AA160;
    *(v99 + 32) = 0x687361682D696970;
    v100 = v99 + 32;
    *(v99 + 40) = 0xE800000000000000;
    *(v99 + 48) = v95;
    *(v99 + 56) = v183;
    sub_10010CBB4(v99);
    swift_setDeallocating();
    sub_10000A0D4(v100, &qword_100200468, &qword_1001AAE98);
    sub_100005918();

    (*(v96 + 104))(v187, enum case for DIPError.Code.deviceCrossCheckFailedHashMismatch(_:), v190);
    sub_10002688C(_swiftEmptyArrayStorage);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v35 = *(v0 + 1184);
    v36 = *(v0 + 1176);
    v37 = *(v0 + 784);
    v38 = *(v0 + 760);
    v39 = *(v0 + 696);
    v40 = *(v0 + 688);
    v41 = *(v0 + 680);
    v42 = *(v0 + 672);

    sub_10001C120(v36, v35);

    v43 = *(v41 + 8);
    v43(v40, v42);
    v43(v39, v42);
    sub_10000A0D4(v38, &qword_1002004D0, &unk_1001AE1C0);
    sub_10000A0D4(v37, &qword_100202988, &unk_1001AD140);
    v44 = *(v0 + 1136);
    defaultLogger()();
    swift_errorRetain();
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      *v47 = 138412290;
      swift_errorRetain();
      v49 = _swift_stdlib_bridgeErrorToNSError();
      *(v47 + 4) = v49;
      *v48 = v49;
      _os_log_impl(&_mh_execute_header, v45, v46, "Device cross check failed with error: %@", v47, 0xCu);
      sub_10000A0D4(v48, &qword_1002003B8, &unk_1001AB850);
    }

    v50 = *(v0 + 1136);
    v51 = *(v0 + 1112);
    v52 = *(v0 + 1104);
    v53 = *(v0 + 1360);

    v54 = *(v51 + 8);
    v54(v50, v52);
    if ((v53 & 1) != 0 || (v55 = [objc_opt_self() standardUserDefaults], v56._countAndFlagsBits = static SharedInternalDefaultsKeys.makeDeviceCrossCheckErrorsTerminal.getter(), v57 = NSUserDefaults.internalBool(forKey:)(v56), , v55, v57))
    {
      v58 = *(v0 + 1168);
      v59 = *(v0 + 1160);
      v60 = *(v0 + 1152);
      v61 = *(v0 + 1144);
      v62 = *(v0 + 1136);
      v63 = *(v0 + 1128);
      v64 = *(v0 + 1120);
      v65 = *(v0 + 1096);
      v101 = *(v0 + 1088);
      v102 = *(v0 + 1080);
      v103 = *(v0 + 1072);
      v105 = *(v0 + 1064);
      v107 = *(v0 + 1056);
      v109 = *(v0 + 1048);
      v111 = *(v0 + 1040);
      v113 = *(v0 + 1032);
      v115 = *(v0 + 1024);
      v117 = *(v0 + 1016);
      v119 = *(v0 + 1008);
      v121 = *(v0 + 1000);
      v123 = *(v0 + 992);
      v125 = *(v0 + 984);
      v127 = *(v0 + 960);
      v129 = *(v0 + 936);
      v131 = *(v0 + 928);
      v133 = *(v0 + 920);
      v135 = *(v0 + 896);
      v137 = *(v0 + 888);
      v139 = *(v0 + 864);
      v141 = *(v0 + 856);
      v143 = *(v0 + 848);
      v145 = *(v0 + 840);
      v147 = *(v0 + 832);
      v149 = *(v0 + 824);
      v151 = *(v0 + 816);
      v153 = *(v0 + 808);
      v155 = *(v0 + 784);
      v157 = *(v0 + 776);
      v159 = *(v0 + 768);
      v161 = *(v0 + 760);
      v163 = *(v0 + 752);
      v165 = *(v0 + 744);
      v168 = *(v0 + 736);
      v170 = *(v0 + 728);
      v173 = *(v0 + 720);
      v175 = *(v0 + 696);
      v178 = *(v0 + 688);
      v181 = *(v0 + 664);
      v185 = *(v0 + 640);
      v188 = *(v0 + 632);
      v192 = *(v0 + 608);
      v195 = *(v0 + 584);
      swift_willThrow();

      v66 = *(v0 + 8);
      goto LABEL_17;
    }

    v82 = *(v0 + 1128);
    v83 = *(v0 + 1104);
    defaultLogger()();
    DIPRecordError(_:message:log:)();

    v54(v82, v83);
  }

  v84 = *(v0 + 1168);
  v85 = *(v0 + 1160);
  v86 = *(v0 + 1152);
  v87 = *(v0 + 1144);
  v88 = *(v0 + 1136);
  v89 = *(v0 + 1128);
  v90 = *(v0 + 1120);
  v91 = *(v0 + 1096);
  v92 = *(v0 + 1088);
  v93 = *(v0 + 1080);
  v104 = *(v0 + 1072);
  v106 = *(v0 + 1064);
  v108 = *(v0 + 1056);
  v110 = *(v0 + 1048);
  v112 = *(v0 + 1040);
  v114 = *(v0 + 1032);
  v116 = *(v0 + 1024);
  v118 = *(v0 + 1016);
  v120 = *(v0 + 1008);
  v122 = *(v0 + 1000);
  v124 = *(v0 + 992);
  v126 = *(v0 + 984);
  v128 = *(v0 + 960);
  v130 = *(v0 + 936);
  v132 = *(v0 + 928);
  v134 = *(v0 + 920);
  v136 = *(v0 + 896);
  v138 = *(v0 + 888);
  v140 = *(v0 + 864);
  v142 = *(v0 + 856);
  v144 = *(v0 + 848);
  v146 = *(v0 + 840);
  v148 = *(v0 + 832);
  v150 = *(v0 + 824);
  v152 = *(v0 + 816);
  v154 = *(v0 + 808);
  v156 = *(v0 + 784);
  v158 = *(v0 + 776);
  v160 = *(v0 + 768);
  v162 = *(v0 + 760);
  v164 = *(v0 + 752);
  v166 = *(v0 + 744);
  v169 = *(v0 + 736);
  v171 = *(v0 + 728);
  v174 = *(v0 + 720);
  v176 = *(v0 + 696);
  v179 = *(v0 + 688);
  v182 = *(v0 + 664);
  v186 = *(v0 + 640);
  v189 = *(v0 + 632);
  v193 = *(v0 + 608);
  v196 = *(v0 + 584);

  v66 = *(v0 + 8);
LABEL_17:

  return v66();
}