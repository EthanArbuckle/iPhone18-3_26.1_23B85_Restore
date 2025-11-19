uint64_t sub_1001568D0()
{
  v1 = v0[26];

  v2 = v0[30];
  v3 = v0[20];
  v5 = v0[16];
  v4 = v0[17];

  v6 = v0[1];

  return v6();
}

char *sub_100156958(uint64_t a1, uint64_t a2)
{
  v6 = sub_100004E70(&qword_100201070, &unk_1001AD2D0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = v47 - v8;
  v10 = type metadata accessor for Insecure.SHA1();
  v51 = *(v10 - 8);
  v11 = *(v51 + 64);
  __chkstk_darwin(v10);
  v13 = v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Insecure.SHA1Digest();
  v52 = *(v14 - 8);
  v53 = v14;
  v15 = *(v52 + 64);
  __chkstk_darwin(v14);
  v17 = v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = *(v2 + 112);
  v55 = a1;
  v18 = *(v54 + 16);
  v56 = a2;
  v19 = dispatch thunk of SESKeystore.getPublicKey(of:)();
  if (!v3)
  {
    v21 = v19;
    v22 = v20;
    v47[1] = v6;
    v48 = v9;
    v23 = [objc_allocWithZone(DCCredentialCryptoKey) init];
    v24 = v22;
    isa = Data._bridgeToObjectiveC()().super.isa;
    [v23 setPublicKey:isa];

    sub_100157F14(&qword_100201090, &type metadata accessor for Insecure.SHA1);
    dispatch thunk of HashFunction.init()();
    sub_100009708(v21, v24);
    sub_1000265CC(v21, v24);
    v49 = v21;
    v50 = v24;
    sub_1000092BC(v21, v24);
    dispatch thunk of HashFunction.finalize()();
    (*(v51 + 8))(v13, v10);
    sub_100157F14(&qword_100201098, &type metadata accessor for Insecure.SHA1Digest);
    v26 = v53;
    v27 = Digest.data.getter();
    v29 = v28;
    v30 = v17;
    v17 = v23;
    (*(v52 + 8))(v30, v26);
    v31 = Data._bridgeToObjectiveC()().super.isa;
    sub_1000092BC(v27, v29);
    [v23 setPublicKeyIdentifier:v31];

    v32 = sub_10003086C(v55, v56);
    v34 = v33;
    v35 = Data._bridgeToObjectiveC()().super.isa;
    sub_1000092BC(v32, v34);
    [v17 setCasdAttestation:v35];

    v36 = v49;
    sub_100009708(v49, v50);
    v37 = v48;
    COSEKey.init(ec2CurveIdentifier:publicKey:)();
    v38 = type metadata accessor for CBOREncoder();
    v39 = *(v38 + 48);
    v40 = *(v38 + 52);
    swift_allocObject();
    CBOREncoder.init()();
    sub_100157E60();
    v42 = dispatch thunk of CBOREncoder.encode<A>(_:)();
    v43 = v37;
    v45 = v44;
    sub_100026564(v43);

    v46 = Data._bridgeToObjectiveC()().super.isa;
    sub_1000092BC(v42, v45);
    [v17 setPublicKeyCOSEKey:v46];

    [v17 setKeyType:2];
    [v17 setKeyUsage:0];
    sub_1000092BC(v36, v50);
  }

  return v17;
}

uint64_t sub_100156E30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  v6 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v5[9] = v6;
  v7 = *(v6 - 8);
  v5[10] = v7;
  v8 = *(v7 + 64) + 15;
  v5[11] = swift_task_alloc();

  return _swift_task_switch(sub_100156EF8, 0, 0);
}

uint64_t sub_100156EF8()
{
  v1 = v0[10];
  v16 = v0[11];
  v3 = v0[8];
  v2 = v0[9];
  v5 = v0[6];
  v4 = v0[7];
  v6 = v0[5];
  v7 = swift_allocObject();
  v0[12] = v7;
  v7[2] = v5;
  v7[3] = v4;
  v7[4] = v3;
  v7[5] = v6;
  v17 = *(v6 + 16);
  v8 = swift_allocObject();
  v0[13] = v8;
  *(v8 + 16) = sub_100157F5C;
  *(v8 + 24) = v7;
  v9 = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
  v10 = *(v1 + 104);

  v10(v16, v9, v2);
  v11 = async function pointer to NSManagedObjectContext.perform<A>(schedule:_:)[1];

  v12 = swift_task_alloc();
  v0[14] = v12;
  v13 = sub_100004E70(&qword_1002014B0, &unk_1001ACFE0);
  *v12 = v0;
  v12[1] = sub_1001570A4;
  v14 = v0[11];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 2, v14, sub_100157F74, v8, v13);
}

uint64_t sub_1001570A4()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v12 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = *(v2 + 104);
    (*(*(v2 + 80) + 8))(*(v2 + 88), *(v2 + 72));

    v5 = sub_100157F98;
  }

  else
  {
    v7 = *(v2 + 96);
    v6 = *(v2 + 104);
    v9 = *(v2 + 80);
    v8 = *(v2 + 88);
    v10 = *(v2 + 72);

    (*(v9 + 8))(v8, v10);
    *(v2 + 128) = *(v2 + 16);
    v5 = sub_100157FA4;
  }

  return _swift_task_switch(v5, 0, 0);
}

unint64_t sub_100157224()
{
  _StringGuts.grow(_:)(29);

  v0 = Data.base16EncodedString()();
  String.append(_:)(v0);

  return 0xD00000000000001BLL;
}

uint64_t sub_1001572B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  v6 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v5[9] = v6;
  v7 = *(v6 - 8);
  v5[10] = v7;
  v8 = *(v7 + 64) + 15;
  v5[11] = swift_task_alloc();

  return _swift_task_switch(sub_10015737C, 0, 0);
}

uint64_t sub_10015737C()
{
  v1 = v0[10];
  v16 = v0[11];
  v3 = v0[8];
  v2 = v0[9];
  v5 = v0[6];
  v4 = v0[7];
  v6 = v0[5];
  v7 = swift_allocObject();
  v0[12] = v7;
  v7[2] = v5;
  v7[3] = v4;
  v7[4] = v3;
  v7[5] = v6;
  v17 = *(v6 + 16);
  v8 = swift_allocObject();
  v0[13] = v8;
  *(v8 + 16) = sub_100157CE0;
  *(v8 + 24) = v7;
  v9 = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
  v10 = *(v1 + 104);

  v10(v16, v9, v2);
  v11 = async function pointer to NSManagedObjectContext.perform<A>(schedule:_:)[1];

  v12 = swift_task_alloc();
  v0[14] = v12;
  v13 = sub_100004E70(&qword_1002014B0, &unk_1001ACFE0);
  *v12 = v0;
  v12[1] = sub_100157528;
  v14 = v0[11];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 2, v14, sub_100157D38, v8, v13);
}

uint64_t sub_100157528()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v12 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = *(v2 + 104);
    (*(*(v2 + 80) + 8))(*(v2 + 88), *(v2 + 72));

    v5 = sub_100157718;
  }

  else
  {
    v7 = *(v2 + 96);
    v6 = *(v2 + 104);
    v9 = *(v2 + 80);
    v8 = *(v2 + 88);
    v10 = *(v2 + 72);

    (*(v9 + 8))(v8, v10);
    *(v2 + 128) = *(v2 + 16);
    v5 = sub_1001576A8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1001576A8()
{
  v1 = *(v0 + 88);
  **(v0 + 32) = *(v0 + 128);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100157718()
{
  v2 = v0[11];
  v1 = v0[12];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

uint64_t sub_100157788(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1000104D4;

  return sub_1001572B4(a1, a2, v6, v7, v8);
}

void sub_10015784C(uint64_t a1@<X1>, void *a2@<X2>, uint64_t *a3@<X8>)
{
  v5 = sub_10016A520(a1, a2);
  if (v3)
  {
    return;
  }

  v6 = v5;
  sub_100059DE4();
  if (v7 >> 62)
  {
    v14 = v7;
    v15 = _CocoaArrayWrapper.endIndex.getter();
    v7 = v14;
    if (v15)
    {
      goto LABEL_4;
    }

LABEL_12:

    *a3 = 0;
    a3[1] = 0;
    return;
  }

  if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_12;
  }

LABEL_4:
  if ((v7 & 0xC000000000000001) != 0)
  {
    v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v8 = *(v7 + 32);
  }

  v9 = v8;

  v10 = [v9 identifier];

  if (v10)
  {
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;
  }

  else
  {

    v11 = 0;
    v13 = 0;
  }

  *a3 = v11;
  a3[1] = v13;
}

uint64_t sub_1001579B0(uint64_t a1, uint64_t *a2, int *a3)
{
  *(v3 + 32) = a1;
  v4 = *a2;
  v8 = (a3 + *a3);
  v5 = a3[1];
  v6 = swift_task_alloc();
  *(v3 + 40) = v6;
  *v6 = v3;
  v6[1] = sub_100157AB0;

  return v8(v3 + 16, v4);
}

uint64_t sub_100157AB0()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *v1;

  if (!v0)
  {
    **(v2 + 32) = *(v2 + 16);
  }

  v5 = *(v4 + 8);

  return v5();
}

uint64_t sub_100157BC0(uint64_t a1, uint64_t *a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1000105C8;

  return sub_1001579B0(a1, a2, v7);
}

void sub_100157CE0(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 40);
  sub_10015784C(*(v1 + 24), *(v1 + 32), a1);
}

uint64_t sub_100157D00()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100157D54()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100157D94(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1000105C8;

  return sub_100156E30(a1, a2, v6, v7, v8);
}

unint64_t sub_100157E58()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_100157224();
}

unint64_t sub_100157E60()
{
  result = qword_100203CA8;
  if (!qword_100203CA8)
  {
    sub_100021ED0(&qword_100201070, &unk_1001AD2D0);
    sub_100157F14(&qword_100202BE8, &type metadata accessor for COSEKey);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100203CA8);
  }

  return result;
}

uint64_t sub_100157F14(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100157FA8(uint64_t a1, uint64_t a2)
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
  v7 = *(*(type metadata accessor for DIPSignpost.Config() - 8) + 64) + 15;
  v3[9] = swift_task_alloc();
  v8 = type metadata accessor for DIPSignpost();
  v3[10] = v8;
  v9 = *(v8 - 8);
  v3[11] = v9;
  v10 = *(v9 + 64) + 15;
  v3[12] = swift_task_alloc();

  return _swift_task_switch(sub_1001580F4, 0, 0);
}

uint64_t sub_1001580F4()
{
  v1 = v0[12];
  v2 = v0[9];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[3];
  static IDCSSignposts.consistencyCheckTotal.getter();
  DIPSignpost.init(_:)();
  v6 = *(v3 + 120);
  v7 = swift_allocObject();
  v0[13] = v7;
  v7[2] = v3;
  v7[3] = v5;
  v7[4] = v4;
  v8 = *(v6 + 16);
  v9 = swift_allocObject();
  v0[14] = v9;
  *(v9 + 16) = &unk_1001AEA00;
  *(v9 + 24) = v7;
  v10 = async function pointer to AsyncCoreDataContainer.read<A>(_:)[1];

  v11 = swift_task_alloc();
  v0[15] = v11;
  type metadata accessor for DCCredentialCompletenessResult(0);
  *v11 = v0;
  v11[1] = sub_10015825C;

  return AsyncCoreDataContainer.read<A>(_:)(v0 + 2, &unk_1001AEA10, v9, v12);
}

uint64_t sub_10015825C()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v8 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = sub_100158444;
  }

  else
  {
    v5 = v2[13];
    v6 = v2[14];

    v2[17] = v2[2];
    v4 = sub_100158388;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100158388()
{
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[8];
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v2 + 8))(v1, v3);

  v6 = v0[1];
  v7 = v0[17];

  return v6(v7);
}

uint64_t sub_100158444()
{
  v1 = v0[16];
  v2 = v0[13];
  v3 = v0[14];
  v5 = v0[11];
  v4 = v0[12];
  v11 = v0[10];
  v12 = v0[9];
  v7 = v0[7];
  v6 = v0[8];
  v8 = v0[6];

  (*(v7 + 104))(v6, enum case for DIPError.Code.internalError(_:), v8);
  swift_errorRetain();
  sub_10002688C(&_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10016032C(&qword_100200200, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v5 + 8))(v4, v11);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100158624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v5[10] = a2;
  v5[11] = a3;
  v5[9] = a1;
  v6 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v5[14] = v6;
  v7 = *(v6 - 8);
  v5[15] = v7;
  v8 = *(v7 + 64) + 15;
  v5[16] = swift_task_alloc();

  return _swift_task_switch(sub_1001586EC, 0, 0);
}

uint64_t sub_1001586EC()
{
  v1 = v0[15];
  v16 = v0[16];
  v3 = v0[13];
  v2 = v0[14];
  v5 = v0[11];
  v4 = v0[12];
  v6 = v0[10];
  v7 = swift_allocObject();
  v0[17] = v7;
  v7[2] = v5;
  v7[3] = v4;
  v7[4] = v3;
  v7[5] = v6;
  v17 = *(v6 + 16);
  v8 = swift_allocObject();
  v0[18] = v8;
  *(v8 + 16) = sub_10015A9C8;
  *(v8 + 24) = v7;
  v9 = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
  v10 = *(v1 + 104);

  v10(v16, v9, v2);
  v11 = async function pointer to NSManagedObjectContext.perform<A>(schedule:_:)[1];

  v12 = swift_task_alloc();
  v0[19] = v12;
  type metadata accessor for DCCredentialCompletenessResult(0);
  *v12 = v0;
  v12[1] = sub_10015888C;
  v14 = v0[16];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 8, v14, sub_10001BF74, v8, v13);
}

uint64_t sub_10015888C()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v12 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v4 = v2[18];
    (*(v2[15] + 8))(v2[16], v2[14]);

    v5 = sub_100158DC8;
  }

  else
  {
    v7 = v2[17];
    v6 = v2[18];
    v9 = v2[15];
    v8 = v2[16];
    v10 = v2[14];

    (*(v9 + 8))(v8, v10);
    v2[21] = v2[8];
    v5 = sub_100158A0C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100158A0C()
{
  v1 = *(v0[11] + 112);
  v0[22] = v1;
  v2 = swift_task_alloc();
  v0[23] = v2;
  *v2 = v0;
  v2[1] = sub_100158AB4;
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[10];

  return sub_10015AA20(v4, v3, v1, v5);
}

uint64_t sub_100158AB4(char a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 32) = v1;
  *(v4 + 24) = a1;
  *(v4 + 16) = v2;
  v5 = *(v3 + 184);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v4 + 128);

    v8 = *(v6 + 8);

    return v8();
  }

  else
  {
    v10 = swift_task_alloc();
    *(v4 + 192) = v10;
    *v10 = v6;
    v10[1] = sub_100158C44;
    v11 = *(v4 + 176);
    v12 = *(v4 + 104);
    v13 = *(v4 + 80);
    v14 = *(v4 + 96);

    return sub_10015BA80(v14, v12, v11, v13);
  }
}

uint64_t sub_100158C44(char a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 56) = v1;
  *(v4 + 48) = a1;
  *(v4 + 40) = v2;
  v5 = *(v3 + 192);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v4 + 128);

    v8 = *(v6 + 8);

    return v8();
  }

  else
  {
    v10 = swift_task_alloc();
    *(v4 + 200) = v10;
    *v10 = v6;
    v10[1] = sub_100158E34;
    v11 = *(v4 + 88);

    return sub_10015926C();
  }
}

uint64_t sub_100158DC8()
{
  v1 = v0[17];

  v2 = v0[20];
  v3 = v0[16];

  v4 = v0[1];

  return v4();
}

uint64_t sub_100158E34(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 200);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v4 + 128);

    v8 = *(v6 + 8);

    return v8();
  }

  else
  {
    v10 = *(v4 + 48);
    v11 = *(v4 + 24);
    *(v4 + 208) = a1 & 1;
    *(v4 + 209) = v10;
    *(v4 + 210) = v11;

    return _swift_task_switch(sub_100158F9C, 0, 0);
  }
}

uint64_t sub_100158F9C()
{
  v1 = *(v0 + 128);
  if (*(v0 + 210))
  {
    v2 = *(v0 + 168);
  }

  else
  {
    v2 = *(v0 + 168) | 4;
  }

  if (!*(v0 + 209))
  {
    v2 |= 8uLL;
  }

  if (!*(v0 + 208))
  {
    v2 |= 0x20uLL;
  }

  if (v2 <= 1)
  {
    v2 = 1;
  }

  **(v0 + 72) = v2;

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100159048(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1000104D4;

  return sub_100158624(a1, a2, v6, v7, v8);
}

void sub_10015910C(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v9 = sub_10016A520(a2, a3);
  if (v4)
  {
    return;
  }

  v10 = v9;
  sub_10005A084();
  v12 = sub_10015E244(v11, a2, a3, *(a1 + 112));
  v13 = v12;

  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = 16;
  }

  v15 = [v10 state];
  if ((v15 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v15 != 2)
  {
    v16 = [v10 state];
    if ((v16 & 0x8000000000000000) == 0)
    {
      if (v16 != 3)
      {

        *a4 = v14;
        return;
      }

      goto LABEL_11;
    }

LABEL_16:
    __break(1u);
    return;
  }

LABEL_11:
  v17 = sub_10005947C();
  v18 = sub_10015FCC4(v17, a2, a3);

  v19 = v14 | 2;
  if (v18)
  {
    v19 = v14;
  }

  *a4 = v19;
}

uint64_t sub_10015926C()
{
  v1[2] = v0;
  v2 = *(*(type metadata accessor for DIPSignpost.Config() - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v3 = type metadata accessor for DIPSignpost();
  v1[4] = v3;
  v4 = *(v3 - 8);
  v1[5] = v4;
  v5 = *(v4 + 64) + 15;
  v1[6] = swift_task_alloc();

  return _swift_task_switch(sub_100159358, 0, 0);
}

uint64_t sub_100159358()
{
  v1 = v0[6];
  v3 = v0[2];
  v2 = v0[3];
  static IDCSSignposts.consistencyCheckProgenitorKeyDesignation.getter();
  DIPSignpost.init(_:)();
  v4 = *(v3 + 24);
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_10015940C;

  return sub_10013DB94();
}

uint64_t sub_10015940C(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v7 = sub_1001595F0;
  }

  else
  {
    *(v4 + 72) = a1 & 1;
    v7 = sub_100159538;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100159538()
{
  v1 = *(v0 + 72);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v5 = *(v0 + 24);
  v4 = *(v0 + 32);
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v3 + 8))(v2, v4);

  v6 = *(v0 + 8);

  return v6((v1 & 1) == 0);
}

uint64_t sub_1001595F0()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v2 + 8))(v1, v3);

  v5 = v0[1];
  v6 = v0[8];

  return v5(0);
}

void sub_100159698(uint64_t a1@<X1>, uint64_t isUniquelyReferenced_nonNull_native@<X2>, unint64_t a3@<X8>)
{
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = (&v57 - v13);
  v15 = sub_10005218C(a1, isUniquelyReferenced_nonNull_native);
  if (!v3)
  {
    v16 = v15;
    if (v15)
    {
      v68 = v8;
      sub_100059DE4();
      v18 = v17;

      v62 = 0;
      v19 = v18;
      if (v18 >> 62)
      {
        goto LABEL_45;
      }

      v20 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_6:
      v21 = v68;
      v61 = a3;
      if (v20)
      {
        v57 = v14;
        v58 = a1;
        v59 = v12;
        v60 = isUniquelyReferenced_nonNull_native;
        a3 = 0;
        v66 = v19 & 0xFFFFFFFFFFFFFF8;
        v67 = v19 & 0xC000000000000001;
        v14 = _swiftEmptyDictionarySingleton;
        v63 = v20;
        v64 = v7;
        v65 = v19;
        while (1)
        {
          if (v67)
          {
            v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (a3 >= *(v66 + 16))
            {
              goto LABEL_42;
            }

            v25 = *(v19 + 8 * a3 + 32);
          }

          isUniquelyReferenced_nonNull_native = v25;
          v12 = a3 + 1;
          if (__OFADD__(a3, 1))
          {
            __break(1u);
LABEL_42:
            __break(1u);
LABEL_43:
            __break(1u);
LABEL_44:
            __break(1u);
LABEL_45:
            v20 = _CocoaArrayWrapper.endIndex.getter();
            goto LABEL_6;
          }

          v26 = [v25 identifier];
          if (!v26)
          {

            v47 = v59;
            defaultLogger()();
            v48 = v60;

            v49 = Logger.logObject.getter();
            v50 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v49, v50))
            {
              v51 = swift_slowAlloc();
              v52 = swift_slowAlloc();
              v70 = isUniquelyReferenced_nonNull_native;
              v53 = v52;
              v71 = v52;
              *v51 = 136315138;
              *(v51 + 4) = sub_10010150C(v58, v48, &v71);
              v54 = "Key signing key for credential %s does not have an identifier";
              goto LABEL_35;
            }

            goto LABEL_36;
          }

          v27 = v26;
          a1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v19 = v28;

          v29 = [isUniquelyReferenced_nonNull_native publicKeyIdentifier];
          if (!v29)
          {

            v47 = v57;
            defaultLogger()();
            v55 = v60;

            v49 = Logger.logObject.getter();
            v50 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v49, v50))
            {
              v51 = swift_slowAlloc();
              v56 = swift_slowAlloc();
              v70 = isUniquelyReferenced_nonNull_native;
              v53 = v56;
              v71 = v56;
              *v51 = 136315138;
              *(v51 + 4) = sub_10010150C(v58, v55, &v71);
              v54 = "Key signing key for credential %s does not have a public key identifier";
LABEL_35:
              _os_log_impl(&_mh_execute_header, v49, v50, v54, v51, 0xCu);
              sub_100005090(v53);

LABEL_37:
              (*(v21 + 8))(v47, v7);
              v46 = 0;
              goto LABEL_38;
            }

LABEL_36:

            goto LABEL_37;
          }

          v30 = v29;
          v69 = (a3 + 1);
          v70 = a3;
          a3 = isUniquelyReferenced_nonNull_native;
          v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v32 = v31;

          sub_100009708(v7, v32);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v71 = v14;
          v12 = sub_100099644(a1, v19);
          v34 = v14;
          v35 = v14[2];
          v36 = (v33 & 1) == 0;
          v37 = v35 + v36;
          if (__OFADD__(v35, v36))
          {
            goto LABEL_43;
          }

          v38 = v33;
          if (v34[3] >= v37)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              if (v33)
              {
                goto LABEL_8;
              }
            }

            else
            {
              sub_10010A530();
              if (v38)
              {
                goto LABEL_8;
              }
            }
          }

          else
          {
            sub_10010941C(v37, isUniquelyReferenced_nonNull_native);
            v39 = sub_100099644(a1, v19);
            if ((v38 & 1) != (v40 & 1))
            {
              KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
              __break(1u);
              return;
            }

            v12 = v39;
            if (v38)
            {
LABEL_8:

              v14 = v71;
              v22 = (v71[7] + 16 * v12);
              v23 = *v22;
              v24 = v22[1];
              *v22 = v7;
              v22[1] = v32;
              sub_10001C120(v23, v24);

              sub_1000092BC(v7, v32);
              goto LABEL_9;
            }
          }

          v14 = v71;
          v71[(v12 >> 6) + 8] |= 1 << v12;
          v41 = (v14[6] + 16 * v12);
          *v41 = a1;
          v41[1] = v19;
          v42 = (v14[7] + 16 * v12);
          *v42 = v7;
          v42[1] = v32;

          sub_1000092BC(v7, v32);
          v43 = v14[2];
          v44 = __OFADD__(v43, 1);
          v45 = v43 + 1;
          if (v44)
          {
            goto LABEL_44;
          }

          v14[2] = v45;
LABEL_9:
          a3 = (v70 + 1);
          v7 = v64;
          v21 = v68;
          v19 = v65;
          if (v69 == v63)
          {
            goto LABEL_30;
          }
        }
      }

      v14 = _swiftEmptyDictionarySingleton;
LABEL_30:

      v46 = 1;
LABEL_38:
      a3 = v61;
    }

    else
    {
      v14 = _swiftEmptyDictionarySingleton;
      v46 = 1;
    }

    *a3 = v46;
    *(a3 + 8) = v14;
  }
}

void sub_100159C40(unint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v122 = a1;
  v118 = a4;
  v124 = type metadata accessor for Logger();
  v117 = *(v124 - 8);
  v6 = *(v117 + 64);
  v7 = __chkstk_darwin(v124);
  v115 = v93 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v120 = v93 - v10;
  v11 = __chkstk_darwin(v9);
  v119 = v93 - v12;
  __chkstk_darwin(v11);
  v14 = v93 - v13;
  v15 = sub_100004E70(&qword_100200510, qword_1001AB070);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v19 = v93 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = v93 - v20;
  v22 = type metadata accessor for CredentialKeyType();
  v116 = *(v22 - 8);
  v23 = *(v116 + 64);
  v24 = __chkstk_darwin(v22);
  v26 = v93 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v28 = v93 - v27;
  v29 = a2;
  v30 = v123;
  v31 = sub_10005218C(a2, a3);
  if (v30)
  {
    return;
  }

  v32 = v31;
  v123 = v28;
  v103 = v26;
  v121 = v22;
  v111 = v21;
  v102 = v19;
  v98 = v14;
  v99 = a3;
  if (!v31)
  {
    v43 = _swiftEmptyArrayStorage;
    goto LABEL_52;
  }

  sub_10005966C();
  v34 = v33;

  v114 = v34 & 0xFFFFFFFFFFFFFF8;
  if (v34 >> 62)
  {
    v36 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v36 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v37 = v120;
  v38 = v121;
  v39 = v123;
  v41 = v116;
  v40 = v117;
  if (!v36)
  {
    v43 = _swiftEmptyArrayStorage;
    goto LABEL_51;
  }

  v42 = 0;
  v117 = v34 & 0xC000000000000001;
  v105 = (v116 + 48);
  v100 = (v116 + 32);
  v97 = (v116 + 88);
  v96 = enum case for CredentialKeyType.ses(_:);
  v95 = enum case for CredentialKeyType.sep(_:);
  LODWORD(v116) = enum case for CredentialKeyType.invalid(_:);
  v112 = (v40 + 8);
  v113 = (v41 + 104);
  v107 = (v41 + 8);
  v43 = _swiftEmptyArrayStorage;
  *&v35 = 136315138;
  v101 = v35;
  v109 = v29;
  v93[1] = 0;
  v108 = v34;
  v110 = v36;
  while (2)
  {
    v94 = v43;
    while (1)
    {
      if (v117)
      {
        v46 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v42 >= *(v114 + 16))
        {
          goto LABEL_56;
        }

        v46 = *(v34 + 8 * v42 + 32);
      }

      v43 = v46;
      if (__OFADD__(v42, 1))
      {
        __break(1u);
LABEL_56:
        __break(1u);
        goto LABEL_57;
      }

      v122 = v42 + 1;
      v47 = [v46 identifier];
      if (!v47)
      {
        v82 = v118;

        v83 = v115;
        defaultLogger()();
        v84 = v99;

        v85 = Logger.logObject.getter();
        v86 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v85, v86))
        {
          v87 = swift_slowAlloc();
          v88 = swift_slowAlloc();
          v125 = v88;
          *v87 = v101;
          *(v87 + 4) = sub_10010150C(v29, v84, &v125);
          v89 = "Device encryption key for credential %s does not have an identifier";
          goto LABEL_49;
        }

        goto LABEL_61;
      }

      v48 = v47;
      v106 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v50 = v49;

      v51 = [v43 keyType];
      if (!v51)
      {

        v19 = v124;
        goto LABEL_19;
      }

      v52 = v51;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v53 = v111;
      v38 = v121;
      CredentialKeyType.init(rawValue:)();
      if ((*v105)(v53, 1, v38) == 1)
      {

        sub_10000A0D4(v53, &qword_100200510, qword_1001AB070);
        v39 = v123;
        v19 = v124;
LABEL_19:
        (*v113)(v39, v116, v38);
        goto LABEL_23;
      }

      v54 = v123;
      (*v100)(v123, v53, v38);
      v55 = (*v97)(v54, v38);
      v56 = v124;
      v19 = v119;
      if (v55 == v96)
      {
        v69 = [v43 keyBlob];
        if (v69)
        {
          v70 = v69;
          v71 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v73 = v72;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v94 = sub_100100524(0, *(v94 + 2) + 1, 1, v94);
          }

          v75 = *(v94 + 2);
          v74 = *(v94 + 3);
          v76 = v75 + 1;
          if (v75 >= v74 >> 1)
          {
            v94 = sub_100100524((v74 > 1), v75 + 1, 1, v94);
          }

          v19 = (v73 | 0x2000000000000000);
          goto LABEL_43;
        }

LABEL_57:
        v82 = v118;

        defaultLogger()();
        v91 = v99;

        v85 = Logger.logObject.getter();
        v86 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v85, v86))
        {
          v87 = swift_slowAlloc();
          v83 = v19;
          v88 = swift_slowAlloc();
          v125 = v88;
          *v87 = v101;
          *(v87 + 4) = sub_10010150C(v29, v91, &v125);
          v89 = "SES device encryption key for credential %s does not have a key blob";
          goto LABEL_49;
        }

        (*v112)(v19, v124);
LABEL_63:
        v90 = 0;
        v43 = v94;
        goto LABEL_53;
      }

      if (v55 == v95)
      {
        break;
      }

      v19 = v56;
LABEL_23:
      defaultLogger()();
      v43 = v43;
      v57 = Logger.logObject.getter();
      v58 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v57, v58))
      {
        LODWORD(v106) = v58;
        v19 = swift_slowAlloc();
        v104 = swift_slowAlloc();
        v125 = v104;
        *v19 = v101;
        v59 = [v43 keyType];
        if (!v59)
        {
          goto LABEL_27;
        }

        v60 = v59;
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v61 = v102;
        CredentialKeyType.init(rawValue:)();
        v38 = v121;
        if ((*v105)(v61, 1, v121) == 1)
        {
          sub_10000A0D4(v61, &qword_100200510, qword_1001AB070);
LABEL_27:
          v62 = v103;
          v38 = v121;
          (*v113)(v103, v116, v121);
        }

        else
        {
          v62 = v103;
          (*v100)(v103, v61, v38);
        }

        v63 = CredentialKeyType.rawValue.getter();
        v64 = v62;
        v65 = v63;
        v67 = v66;
        v44 = *v107;
        (*v107)(v64, v38);
        v68 = sub_10010150C(v65, v67, &v125);

        *(v19 + 4) = v68;
        _os_log_impl(&_mh_execute_header, v57, v106, "Unknown device encryption key type %s", v19, 0xCu);
        sub_100005090(v104);

        v37 = v120;
        (*v112)(v120, v124);
        goto LABEL_9;
      }

      (*v112)(v37, v19);
      v44 = *v107;
LABEL_9:
      v45 = v110;
      v39 = v123;
      v44(v123, v38);
      ++v42;
      v34 = v108;
      v29 = v109;
      if (v122 == v45)
      {
        v43 = v94;
        goto LABEL_51;
      }
    }

    v77 = [v43 publicKeyIdentifier];
    if (!v77)
    {
      v82 = v118;

      v83 = v98;
      defaultLogger()();
      v92 = v99;

      v85 = Logger.logObject.getter();
      v86 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v85, v86))
      {
        v87 = swift_slowAlloc();
        v88 = swift_slowAlloc();
        v125 = v88;
        *v87 = v101;
        *(v87 + 4) = sub_10010150C(v29, v92, &v125);
        v89 = "Device encryption key for credential %s does not have a public key identifier";
LABEL_49:
        _os_log_impl(&_mh_execute_header, v85, v86, v89, v87, 0xCu);
        sub_100005090(v88);

        goto LABEL_62;
      }

LABEL_61:

LABEL_62:
      (*v112)(v83, v124);
      goto LABEL_63;
    }

    v78 = v77;
    v71 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v79;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v94 = sub_100100524(0, *(v94 + 2) + 1, 1, v94);
    }

    v75 = *(v94 + 2);
    v80 = *(v94 + 3);
    v76 = v75 + 1;
    if (v75 >= v80 >> 1)
    {
      v94 = sub_100100524((v80 > 1), v75 + 1, 1, v94);
    }

LABEL_43:
    v43 = v94;
    *(v94 + 2) = v76;
    v81 = &v43[32 * v75];
    *(v81 + 4) = v106;
    *(v81 + 5) = v50;
    *(v81 + 6) = v71;
    *(v81 + 7) = v19;
    v38 = v121;
    v42 = v122;
    v37 = v120;
    v39 = v123;
    if (v122 != v110)
    {
      continue;
    }

    break;
  }

LABEL_51:

LABEL_52:
  v90 = 1;
  v82 = v118;
LABEL_53:
  *v82 = v90;
  *(v82 + 8) = v43;
}

uint64_t sub_10015A8B8(uint64_t a1, uint64_t *a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1000105C8;

  return sub_10013E6D0(a1, a2, v7);
}

uint64_t sub_10015A980()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10015A9E8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10015AA20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[4] = a1;
  v4[5] = a2;
  v5 = type metadata accessor for Logger();
  v4[8] = v5;
  v6 = *(v5 - 8);
  v4[9] = v6;
  v7 = *(v6 + 64) + 15;
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v8 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v4[12] = v8;
  v9 = *(v8 - 8);
  v4[13] = v9;
  v10 = *(v9 + 64) + 15;
  v4[14] = swift_task_alloc();
  v11 = *(*(type metadata accessor for DIPSignpost.Config() - 8) + 64) + 15;
  v4[15] = swift_task_alloc();
  v12 = type metadata accessor for DIPSignpost();
  v4[16] = v12;
  v13 = *(v12 - 8);
  v4[17] = v13;
  v14 = *(v13 + 64) + 15;
  v4[18] = swift_task_alloc();

  return _swift_task_switch(sub_10015ABD4, 0, 0);
}

uint64_t sub_10015ABD4()
{
  v1 = v0[18];
  v2 = v0[15];
  v18 = v0[14];
  v3 = v0[12];
  v4 = v0[13];
  v5 = v0[7];
  v7 = v0[4];
  v6 = v0[5];
  static IDCSSignposts.consistencyCheckKeySigningKeys.getter();
  DIPSignpost.init(_:)();
  v8 = swift_allocObject();
  v0[19] = v8;
  v8[2] = v5;
  v8[3] = v7;
  v8[4] = v6;
  v9 = *(v5 + 16);
  v10 = swift_allocObject();
  v0[20] = v10;
  *(v10 + 16) = sub_10015E1C0;
  *(v10 + 24) = v8;
  v11 = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
  v12 = *(v4 + 104);

  v12(v18, v11, v3);
  v13 = async function pointer to NSManagedObjectContext.perform<A>(schedule:_:)[1];

  v14 = swift_task_alloc();
  v0[21] = v14;
  v15 = sub_100004E70(&qword_100203CB8, &qword_1001AEA38);
  *v14 = v0;
  v14[1] = sub_10015AD88;
  v16 = v0[14];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 2, v16, sub_10015E1E0, v10, v15);
}

uint64_t sub_10015AD88()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v12 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v4 = *(v2 + 160);
    (*(*(v2 + 104) + 8))(*(v2 + 112), *(v2 + 96));

    v5 = sub_10015B258;
  }

  else
  {
    v7 = *(v2 + 152);
    v6 = *(v2 + 160);
    v9 = *(v2 + 104);
    v8 = *(v2 + 112);
    v10 = *(v2 + 96);

    (*(v9 + 8))(v8, v10);
    *(v2 + 264) = *(v2 + 16);
    *(v2 + 184) = *(v2 + 24);
    v5 = sub_10015AF10;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10015AF10()
{
  v42 = v0;
  v1 = *(v0 + 264);
  v2 = *(v0 + 184);
  if ((v1 & 1) == 0)
  {

LABEL_7:
    v9 = *(v0 + 136);
    v8 = *(v0 + 144);
    v11 = *(v0 + 120);
    v10 = *(v0 + 128);
    v12 = *(v0 + 112);
    v14 = *(v0 + 80);
    v13 = *(v0 + 88);
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    (*(v9 + 8))(v8, v10);

    v15 = *(v0 + 8);

    return v15(v1);
  }

  v3 = *(v2 + 32);
  *(v0 + 265) = v3;
  v4 = -1;
  v5 = -1 << v3;
  if (-(-1 << v3) < 64)
  {
    v4 = ~(-1 << -(-1 << v3));
  }

  v6 = v4 & *(v2 + 64);
  if (!v6)
  {
    v17 = 0;
    v18 = ((63 - v5) >> 6) - 1;
    while (v18 != v17)
    {
      v7 = v17 + 1;
      v6 = *(v2 + 8 * v17++ + 72);
      if (v6)
      {
        goto LABEL_13;
      }
    }

    v28 = *(v0 + 80);
    v29 = *(v0 + 40);

    defaultLogger()();

    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.info.getter();

    v32 = os_log_type_enabled(v30, v31);
    v33 = *(v0 + 72);
    v34 = *(v0 + 80);
    v35 = *(v0 + 64);
    if (v32)
    {
      v40 = *(v0 + 80);
      v37 = *(v0 + 32);
      v36 = *(v0 + 40);
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v41 = v39;
      *v38 = 136315138;
      *(v38 + 4) = sub_10010150C(v37, v36, &v41);
      _os_log_impl(&_mh_execute_header, v30, v31, "Key signing keys for credential %s passed completeness check", v38, 0xCu);
      sub_100005090(v39);

      (*(v33 + 8))(v40, v35);
    }

    else
    {

      (*(v33 + 8))(v34, v35);
    }

    goto LABEL_7;
  }

  v7 = 0;
LABEL_13:
  *(v0 + 192) = v6;
  *(v0 + 200) = v7;
  v19 = *(v2 + 48);
  v20 = (v7 << 10) | (16 * __clz(__rbit64(v6)));
  v21 = *(v19 + v20);
  *(v0 + 208) = v21;
  v22 = *(v19 + v20 + 8);
  *(v0 + 216) = v22;
  v23 = (*(v2 + 56) + v20);
  v24 = *v23;
  *(v0 + 224) = *v23;
  v25 = v23[1];
  *(v0 + 232) = v25;

  sub_100032EBC(v24, v25);
  v26 = swift_task_alloc();
  *(v0 + 240) = v26;
  *v26 = v0;
  v26[1] = sub_10015B33C;
  v27 = *(v0 + 48);

  return sub_100028458(v21, v22, v24, v25);
}

uint64_t sub_10015B258()
{
  v1 = v0[19];

  v2 = v0[22];
  v4 = v0[17];
  v3 = v0[18];
  v6 = v0[15];
  v5 = v0[16];
  v7 = v0[14];
  v9 = v0[10];
  v8 = v0[11];
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v4 + 8))(v3, v5);

  v10 = v0[1];

  return v10(0);
}

uint64_t sub_10015B33C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 240);
  v7 = *v2;
  *(v3 + 248) = a1;
  *(v3 + 256) = v1;

  if (v1)
  {
    v5 = sub_10015B980;
  }

  else
  {
    v5 = sub_10015B450;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10015B450()
{
  v63 = v0;
  v1 = *(v0 + 248);
  v3 = *(v0 + 224);
  v2 = *(v0 + 232);
  v4 = *(v0 + 216);
  if (!v1)
  {
    v9 = *(v0 + 88);
    v10 = *(v0 + 40);
    defaultLogger()();

    sub_100032EBC(v3, v2);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    sub_10001C120(v3, v2);

    v13 = os_log_type_enabled(v11, v12);
    v15 = *(v0 + 224);
    v14 = *(v0 + 232);
    v16 = *(v0 + 216);
    if (v13)
    {
      v58 = *(v0 + 224);
      v17 = *(v0 + 208);
      v57 = *(v0 + 184);
      v18 = *(v0 + 72);
      v59 = *(v0 + 64);
      v60 = *(v0 + 88);
      v19 = *(v0 + 32);
      v56 = *(v0 + 40);
      v20 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      *v20 = 136315394;

      v21 = sub_10010150C(v17, v16, &v62);

      *(v20 + 4) = v21;
      *(v20 + 12) = 2080;
      *(v20 + 14) = sub_10010150C(v19, v56, &v62);
      _os_log_impl(&_mh_execute_header, v11, v12, "Key signing key %s for credential %s does not exist in keychain", v20, 0x16u);
      swift_arrayDestroy();

      sub_10001C120(v58, v14);
      (*(v18 + 8))(v60, v59);
    }

    else
    {
      v32 = *(v0 + 184);
      v33 = *(v0 + 88);
      v34 = *(v0 + 64);
      v35 = *(v0 + 72);

      sub_10001C120(v15, v14);

      (*(v35 + 8))(v33, v34);
    }

LABEL_18:
    v49 = *(v0 + 136);
    v48 = *(v0 + 144);
    v51 = *(v0 + 120);
    v50 = *(v0 + 128);
    v52 = *(v0 + 112);
    v54 = *(v0 + 80);
    v53 = *(v0 + 88);
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    (*(v49 + 8))(v48, v50);

    v55 = *(v0 + 8);

    return v55(v1 != 0);
  }

  v5 = *(v0 + 216);

  result = sub_10001C120(v3, v2);
  v7 = *(v0 + 200);
  v8 = (*(v0 + 192) - 1) & *(v0 + 192);
  if (!v8)
  {
    while (1)
    {
      v22 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
        return result;
      }

      result = *(v0 + 184);
      if (v22 >= (((1 << *(v0 + 265)) + 63) >> 6))
      {
        break;
      }

      v8 = *(result + 8 * v22 + 64);
      ++v7;
      if (v8)
      {
        v7 = v22;
        goto LABEL_10;
      }
    }

    v36 = *(v0 + 80);
    v37 = *(v0 + 40);

    defaultLogger()();

    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.info.getter();

    v40 = os_log_type_enabled(v38, v39);
    v41 = *(v0 + 72);
    v42 = *(v0 + 80);
    v43 = *(v0 + 64);
    if (v40)
    {
      v61 = *(v0 + 80);
      v45 = *(v0 + 32);
      v44 = *(v0 + 40);
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v62 = v47;
      *v46 = 136315138;
      *(v46 + 4) = sub_10010150C(v45, v44, &v62);
      _os_log_impl(&_mh_execute_header, v38, v39, "Key signing keys for credential %s passed completeness check", v46, 0xCu);
      sub_100005090(v47);

      (*(v41 + 8))(v61, v43);
    }

    else
    {

      (*(v41 + 8))(v42, v43);
    }

    goto LABEL_18;
  }

  result = *(v0 + 184);
LABEL_10:
  *(v0 + 192) = v8;
  *(v0 + 200) = v7;
  v23 = *(result + 48);
  v24 = (v7 << 10) | (16 * __clz(__rbit64(v8)));
  v25 = *(v23 + v24);
  *(v0 + 208) = v25;
  v26 = *(v23 + v24 + 8);
  *(v0 + 216) = v26;
  v27 = (*(result + 56) + v24);
  v28 = *v27;
  *(v0 + 224) = *v27;
  v29 = v27[1];
  *(v0 + 232) = v29;

  sub_100032EBC(v28, v29);
  v30 = swift_task_alloc();
  *(v0 + 240) = v30;
  *v30 = v0;
  v30[1] = sub_10015B33C;
  v31 = *(v0 + 48);

  return sub_100028458(v25, v26, v28, v29);
}

uint64_t sub_10015B980()
{
  v1 = v0[28];
  v2 = v0[29];
  v3 = v0[27];
  v4 = v0[23];

  sub_10001C120(v1, v2);
  v5 = v0[32];
  v7 = v0[17];
  v6 = v0[18];
  v9 = v0[15];
  v8 = v0[16];
  v10 = v0[14];
  v12 = v0[10];
  v11 = v0[11];
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v7 + 8))(v6, v8);

  v13 = v0[1];

  return v13(0);
}

uint64_t sub_10015BA80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[8] = a1;
  v4[9] = a2;
  v5 = type metadata accessor for DIPError.Code();
  v4[12] = v5;
  v6 = *(v5 - 8);
  v4[13] = v6;
  v7 = *(v6 + 64) + 15;
  v4[14] = swift_task_alloc();
  v8 = type metadata accessor for Insecure.SHA1();
  v4[15] = v8;
  v9 = *(v8 - 8);
  v4[16] = v9;
  v10 = *(v9 + 64) + 15;
  v4[17] = swift_task_alloc();
  v11 = type metadata accessor for Insecure.SHA1Digest();
  v4[18] = v11;
  v12 = *(v11 - 8);
  v4[19] = v12;
  v13 = *(v12 + 64) + 15;
  v4[20] = swift_task_alloc();
  v14 = type metadata accessor for Logger();
  v4[21] = v14;
  v15 = *(v14 - 8);
  v4[22] = v15;
  v16 = *(v15 + 64) + 15;
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v17 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v4[26] = v17;
  v18 = *(v17 - 8);
  v4[27] = v18;
  v19 = *(v18 + 64) + 15;
  v4[28] = swift_task_alloc();
  v20 = *(*(type metadata accessor for DIPSignpost.Config() - 8) + 64) + 15;
  v4[29] = swift_task_alloc();
  v21 = type metadata accessor for DIPSignpost();
  v4[30] = v21;
  v22 = *(v21 - 8);
  v4[31] = v22;
  v23 = *(v22 + 64) + 15;
  v4[32] = swift_task_alloc();

  return _swift_task_switch(sub_10015BD80, 0, 0);
}

uint64_t sub_10015BD80()
{
  v1 = v0[32];
  v2 = v0[29];
  v18 = v0[28];
  v3 = v0[26];
  v4 = v0[27];
  v5 = v0[11];
  v7 = v0[8];
  v6 = v0[9];
  static IDCSSignposts.consistencyCheckDeviceEncryptionKeys.getter();
  DIPSignpost.init(_:)();
  v8 = swift_allocObject();
  v0[33] = v8;
  v8[2] = v5;
  v8[3] = v7;
  v8[4] = v6;
  v9 = *(v5 + 16);
  v10 = swift_allocObject();
  v0[34] = v10;
  *(v10 + 16) = sub_10015E1A0;
  *(v10 + 24) = v8;
  v11 = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
  v12 = *(v4 + 104);

  v12(v18, v11, v3);
  v13 = async function pointer to NSManagedObjectContext.perform<A>(schedule:_:)[1];

  v14 = swift_task_alloc();
  v0[35] = v14;
  v15 = sub_100004E70(&qword_100203CB0, &qword_1001AEA30);
  *v14 = v0;
  v14[1] = sub_10015BF60;
  v16 = v0[28];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 5, v16, sub_100160388, v10, v15);
}

uint64_t sub_10015BF60()
{
  v2 = *v1;
  v3 = *(*v1 + 280);
  v12 = *v1;
  *(*v1 + 288) = v0;

  if (v0)
  {
    v4 = *(v2 + 272);
    (*(*(v2 + 216) + 8))(*(v2 + 224), *(v2 + 208));

    v5 = sub_10015CE28;
  }

  else
  {
    v7 = *(v2 + 264);
    v6 = *(v2 + 272);
    v9 = *(v2 + 216);
    v8 = *(v2 + 224);
    v10 = *(v2 + 208);

    (*(v9 + 8))(v8, v10);
    *(v2 + 412) = *(v2 + 40);
    *(v2 + 296) = *(v2 + 48);
    v5 = sub_10015C114;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10015C114()
{
  v126 = v0;
  if ((*(v0 + 412) & 1) == 0)
  {

LABEL_24:
    v119 = 0;
    goto LABEL_34;
  }

  v1 = *(v0[37] + 16);
  v0[38] = v1;
  if (!v1)
  {
LABEL_31:
    v88 = v0[23];
    v89 = v0[9];

    defaultLogger()();

    v90 = Logger.logObject.getter();
    v91 = static os_log_type_t.info.getter();

    v92 = os_log_type_enabled(v90, v91);
    v94 = v0[22];
    v93 = v0[23];
    v95 = v0[21];
    if (v92)
    {
      v96 = v124[9];
      v97 = v124[8];
      v98 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      v125[0] = v99;
      *v98 = 136315138;
      v0 = v124;
      *(v98 + 4) = sub_10010150C(v97, v96, v125);
      _os_log_impl(&_mh_execute_header, v90, v91, "Device encryption keys for credential %s passed completeness check", v98, 0xCu);
      sub_100005090(v99);
    }

    (*(v94 + 8))(v93, v95);
    v119 = 1;
LABEL_34:
    v100 = v0[31];
    v101 = v0[32];
    v103 = v0[29];
    v102 = v0[30];
    v104 = v124[28];
    v105 = v124[25];
    v106 = v124[24];
    v107 = v124[23];
    v108 = v124[20];
    v121 = v124[17];
    v123 = v124[14];
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    (*(v100 + 8))(v101, v102);

    v109 = v124[1];

    return v109(v119);
  }

  v2 = 0;
  v110 = (v0 + 398);
  *(v0 + 94) = enum case for CredentialKeyType.ses(_:);
  *(v0 + 95) = enum case for CredentialKeyUsage.deviceEncryption(_:);
  v3 = v0[36];
  while (1)
  {
    v0[39] = v2;
    v31 = v0[37];
    if (v2 >= *(v31 + 16))
    {
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
    }

    v32 = (v31 + 32 * v2);
    v33 = v32[4];
    v0[40] = v33;
    v34 = v32[5];
    v0[41] = v34;
    v35 = v32[6];
    v0[42] = v35;
    v36 = v32[7];
    v0[43] = v36;
    if ((v36 & 0x2000000000000000) == 0)
    {
      break;
    }

    v37 = *(v0[10] + 16);
    v122 = v33;
    sub_10001BFB8(v33, v34, v35, v36);

    sub_100009708(v35, v36 & 0xDFFFFFFFFFFFFFFFLL);
    v38 = dispatch thunk of SESKeystore.getPublicKey(of:)();
    v118 = v36;
    v120 = v35;
    v116 = v34;
    v117 = v36 & 0xDFFFFFFFFFFFFFFFLL;
    if (v3)
    {
      v65 = v0[37];
      v66 = v0[24];
      v68 = v0[13];
      v67 = v0[14];
      v69 = v34;
      v70 = v0[12];
      v114 = v0[9];

      (*(v68 + 104))(v67, enum case for DIPError.Code.internalError(_:), v70);
      swift_errorRetain();
      sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10016032C(&qword_100200200, &type metadata accessor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();

      defaultLogger()();

      swift_errorRetain();
      v71 = Logger.logObject.getter();
      v72 = static os_log_type_t.error.getter();

      v73 = os_log_type_enabled(v71, v72);
      v74 = v0[24];
      v75 = v0[21];
      v76 = v0[22];
      if (v73)
      {
        v115 = v0[24];
        v77 = v0[8];
        v78 = v0[9];
        v79 = swift_slowAlloc();
        v125[0] = swift_slowAlloc();
        *v79 = 136315650;
        v80 = sub_10010150C(v122, v69, v125);

        *(v79 + 4) = v80;
        *(v79 + 12) = 2080;
        *(v79 + 14) = sub_10010150C(v77, v78, v125);
        *(v79 + 22) = 2080;
        swift_getErrorValue();
        v82 = v0[2];
        v81 = v0[3];
        v83 = v0[4];
        v84 = Error.localizedDescription.getter();
        v86 = sub_10010150C(v84, v85, v125);

        *(v79 + 24) = v86;
        _os_log_impl(&_mh_execute_header, v71, v72, "Device encryption key %s for credential %s does not exist in SE. Error: %s", v79, 0x20u);
        swift_arrayDestroy();

        sub_10001BFFC(v122, v116, v120, v118);
        sub_1000092BC(v120, v117);

        (*(v76 + 8))(v115, v75);
      }

      else
      {

        sub_10001BFFC(v122, v69, v120, v118);
        sub_1000092BC(v120, v117);

        (*(v76 + 8))(v74, v75);
      }

      goto LABEL_24;
    }

    v40 = v38;
    v41 = v39;
    v42 = v0[17];
    v43 = v0[15];
    v44 = type metadata accessor for SESDeviceEncryptionKey(0);
    v45 = *(v44 + 48);
    v46 = *(v44 + 52);
    v47 = swift_allocObject();
    v48 = &v47[OBJC_IVAR____TtC7idcredd22SESDeviceEncryptionKey_keyBlob];
    *v48 = v35;
    v48[1] = v36 & 0xDFFFFFFFFFFFFFFFLL;
    v49 = &v47[OBJC_IVAR____TtC7idcredd22SESDeviceEncryptionKey_publicKey];
    *v49 = v40;
    v49[1] = v41;
    sub_100009708(v35, v36 & 0xDFFFFFFFFFFFFFFFLL);
    sub_100009708(v40, v41);
    sub_10016032C(&qword_100201090, &type metadata accessor for Insecure.SHA1);
    dispatch thunk of HashFunction.init()();
    v50 = v41 >> 62;
    v112 = v40;
    v113 = v41;
    if ((v41 >> 62) > 1)
    {
      if (v50 == 2)
      {
        v53 = *(v40 + 16);
        v54 = *(v40 + 24);

        v55 = v41;
        if (__DataStorage._bytes.getter() && __OFSUB__(v53, __DataStorage._offset.getter()))
        {
          goto LABEL_41;
        }

        if (__OFSUB__(v54, v53))
        {
          goto LABEL_40;
        }

        v56 = v0[17];
        v57 = v0[15];
        __DataStorage._length.getter();
LABEL_22:
        dispatch thunk of HashFunction.update(bufferPointer:)();
        v6 = v40;
        v7 = v55;
        goto LABEL_6;
      }

      v4 = v0[17];
      v5 = v0[15];
      *v110 = 0;
      *(v110 + 6) = 0;
    }

    else
    {
      if (v50)
      {
        if (v40 >> 32 < v40)
        {
          goto LABEL_39;
        }

        v55 = v41;
        if (__DataStorage._bytes.getter() && __OFSUB__(v40, __DataStorage._offset.getter()))
        {
          goto LABEL_42;
        }

        v58 = v0[17];
        v59 = v0[15];
        __DataStorage._length.getter();
        goto LABEL_22;
      }

      v51 = v0[17];
      v52 = v0[15];
      v0[48] = v40;
      *(v0 + 196) = v41;
      *(v0 + 394) = BYTE2(v41);
      *(v0 + 395) = BYTE3(v41);
      *(v0 + 396) = BYTE4(v41);
      *(v0 + 397) = BYTE5(v41);
    }

    dispatch thunk of HashFunction.update(bufferPointer:)();
    v6 = v40;
    v7 = v41;
LABEL_6:
    sub_1000092BC(v6, v7);
    v8 = *(v0 + 95);
    v111 = *(v0 + 94);
    v10 = v0[19];
    v9 = v0[20];
    v11 = v0[17];
    v12 = v0[18];
    v13 = v0[16];
    v14 = v124[15];
    dispatch thunk of HashFunction.finalize()();
    (*(v13 + 8))(v11, v14);
    sub_10016032C(&qword_100201098, &type metadata accessor for Insecure.SHA1Digest);
    v15 = Digest.data.getter();
    v17 = v16;
    (*(v10 + 8))(v9, v12);
    v18 = &v47[OBJC_IVAR____TtC7idcredd22SESDeviceEncryptionKey_publicKeyIdentifier];
    *v18 = v15;
    v18[1] = v17;
    v19 = OBJC_IVAR____TtC7idcredd13CredentialKey_type;
    v20 = type metadata accessor for CredentialKeyType();
    v21 = *(v20 - 8);
    (*(v21 + 104))(&v47[v19], v111, v20);
    v22 = OBJC_IVAR____TtC7idcredd13CredentialKey_usage;
    v23 = type metadata accessor for CredentialKeyUsage();
    v24 = *(v23 - 8);
    (*(v24 + 104))(&v47[v22], v8, v23);
    v25 = OBJC_IVAR____TtC7idcredd13CredentialKey_lock;
    sub_100004E70(&qword_1002010A0, &unk_1001AB530);
    v26 = swift_allocObject();
    *(v26 + 16) = 0;
    sub_10001BFFC(v122, v116, v120, v118);
    sub_1000092BC(v112, v113);
    sub_1000092BC(v120, v117);

    *&v47[v25] = v26;
    *(v47 + 2) = v122;
    *(v47 + 3) = v116;
    swift_setDeallocating();
    (*(v21 + 8))(&v47[OBJC_IVAR____TtC7idcredd13CredentialKey_type], v20);
    v0 = v124;
    (*(v24 + 8))(&v47[OBJC_IVAR____TtC7idcredd13CredentialKey_usage], v23);

    v28 = *&v47[OBJC_IVAR____TtC7idcredd22SESDeviceEncryptionKey_keyBlob];
    v27 = *&v47[OBJC_IVAR____TtC7idcredd22SESDeviceEncryptionKey_keyBlob + 8];

    sub_1000092BC(v28, v27);
    sub_1000092BC(*&v47[OBJC_IVAR____TtC7idcredd22SESDeviceEncryptionKey_publicKey], *&v47[OBJC_IVAR____TtC7idcredd22SESDeviceEncryptionKey_publicKey + 8]);
    sub_1000092BC(*&v47[OBJC_IVAR____TtC7idcredd22SESDeviceEncryptionKey_publicKeyIdentifier], *&v47[OBJC_IVAR____TtC7idcredd22SESDeviceEncryptionKey_publicKeyIdentifier + 8]);

    v29 = *(*v47 + 48);
    v30 = *(*v47 + 52);
    swift_deallocClassInstance();
    v3 = 0;
    v2 = v124[39] + 1;
    if (v2 == v124[38])
    {
      v87 = v124[37];
      goto LABEL_31;
    }
  }

  v60 = v33;
  sub_100009708(v35, v36);
  sub_100009708(v35, v36);
  v61 = v60;
  sub_10001BFB8(v60, v34, v35, v36);

  v62 = swift_task_alloc();
  v0[44] = v62;
  *v62 = v0;
  v62[1] = sub_10015CF78;
  v63 = v0[10];

  return sub_100029DFC(v61, v34, v35, v36);
}

uint64_t sub_10015CE28()
{
  v1 = v0[33];

  v2 = v0[31];
  v3 = v0[32];
  v5 = v0[29];
  v4 = v0[30];
  v6 = v0[28];
  v8 = v0[24];
  v7 = v0[25];
  v9 = v0[23];
  v10 = v0[20];
  v13 = v0[36];
  v14 = v0[17];
  v15 = v0[14];
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v2 + 8))(v3, v4);

  v11 = v0[1];

  return v11(0);
}

uint64_t sub_10015CF78(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 352);
  v6 = *v2;
  v4[45] = a1;
  v4[46] = v1;

  v7 = v3[43];
  v8 = v3[42];
  if (v1)
  {
    v9 = v4[41];
    v10 = v4[37];

    sub_1000092BC(v8, v7);
    v11 = sub_10015E030;
  }

  else
  {
    sub_1000092BC(v8, v7);
    v11 = sub_10015D124;
  }

  return _swift_task_switch(v11, 0, 0);
}

uint64_t sub_10015D124()
{
  v151 = v0;
  if (!v0[45])
  {
    v19 = v0[41];
    v20 = v0[37];
    v21 = v0[25];
    v22 = v0[9];

    defaultLogger()();

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    v25 = os_log_type_enabled(v23, v24);
    v27 = v0[42];
    v26 = v0[43];
    v29 = v0[40];
    v28 = v0[41];
    v30 = v0[25];
    v31 = v0[21];
    v32 = v0[22];
    if (v25)
    {
      v135 = v0[8];
      v137 = v0[9];
      v140 = v0[40];
      v142 = v0[43];
      v33 = swift_slowAlloc();
      v150[0] = swift_slowAlloc();
      *v33 = 136315394;
      v34 = v31;
      v35 = sub_10010150C(v140, v28, v150);

      *(v33 + 4) = v35;
      *(v33 + 12) = 2080;
      *(v33 + 14) = sub_10010150C(v135, v137, v150);
      _os_log_impl(&_mh_execute_header, v23, v24, "Device encryption key %s for credential %s does not exist in keychain", v33, 0x16u);
      swift_arrayDestroy();

      sub_10001BFFC(v140, v28, v27, v142);
      sub_1000092BC(v27, v142);
      (*(v32 + 8))(v30, v34);
    }

    else
    {
      v93 = v0[41];

      sub_10001BFFC(v29, v28, v27, v26);
      sub_1000092BC(v27, v26);

      (*(v32 + 8))(v30, v31);
    }

LABEL_34:
    v139 = 0;
    goto LABEL_35;
  }

  v1 = v0[42];
  v2 = v0[43];
  v4 = v0[40];
  v3 = v0[41];

  sub_10001BFFC(v4, v3, v1, v2);
  sub_1000092BC(v1, v2);

  v5 = v0[39] + 1;
  if (v5 == v0[38])
  {
LABEL_3:
    v6 = v0[37];
    v7 = v0[23];
    v8 = v0[9];

    defaultLogger()();

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.info.getter();

    v11 = os_log_type_enabled(v9, v10);
    v13 = v0[22];
    v12 = v0[23];
    v14 = v0[21];
    if (v11)
    {
      v16 = v0[8];
      v15 = v0[9];
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v150[0] = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_10010150C(v16, v15, v150);
      _os_log_impl(&_mh_execute_header, v9, v10, "Device encryption keys for credential %s passed completeness check", v17, 0xCu);
      sub_100005090(v18);

      v0 = v149;
    }

    (*(v13 + 8))(v12, v14);
    v139 = 1;
LABEL_35:
    v121 = v0[31];
    v122 = v0[32];
    v124 = v0[29];
    v123 = v0[30];
    v125 = v0[28];
    v126 = v0[25];
    v127 = v149[24];
    v128 = v149[23];
    v129 = v149[20];
    v144 = v149[17];
    v148 = v149[14];
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    (*(v121 + 8))(v122, v123);

    v130 = v149[1];

    return v130(v139);
  }

  v131 = (v0 + 398);
  v36 = v0[46];
  while (1)
  {
    v0[39] = v5;
    v64 = v0[37];
    if (v5 >= *(v64 + 16))
    {
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
    }

    v65 = (v64 + 32 * v5);
    v66 = v65[4];
    v0[40] = v66;
    v67 = v65[5];
    v0[41] = v67;
    v68 = v65[6];
    v0[42] = v68;
    v69 = v65[7];
    v0[43] = v69;
    if ((v69 & 0x2000000000000000) == 0)
    {
      break;
    }

    v70 = v69 & 0xDFFFFFFFFFFFFFFFLL;
    v71 = *(v0[10] + 16);
    v143 = v66;
    sub_10001BFB8(v66, v67, v68, v69);

    sub_100009708(v68, v69 & 0xDFFFFFFFFFFFFFFFLL);
    v72 = dispatch thunk of SESKeystore.getPublicKey(of:)();
    v138 = v69;
    v141 = v68;
    v134 = v67;
    v136 = v69 & 0xDFFFFFFFFFFFFFFFLL;
    if (v36)
    {
      v99 = v0[37];
      v100 = v0[24];
      v102 = v0[13];
      v101 = v0[14];
      v103 = v67;
      v104 = v0[12];
      v146 = v0[9];

      (*(v102 + 104))(v101, enum case for DIPError.Code.internalError(_:), v104);
      swift_errorRetain();
      sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10016032C(&qword_100200200, &type metadata accessor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();

      defaultLogger()();

      swift_errorRetain();
      v105 = Logger.logObject.getter();
      v106 = static os_log_type_t.error.getter();

      v107 = os_log_type_enabled(v105, v106);
      v108 = v0[24];
      v109 = v0[21];
      v110 = v0[22];
      if (v107)
      {
        v147 = v0[24];
        v111 = v0[8];
        v112 = v0[9];
        v113 = swift_slowAlloc();
        v150[0] = swift_slowAlloc();
        *v113 = 136315650;
        v114 = sub_10010150C(v143, v103, v150);

        *(v113 + 4) = v114;
        *(v113 + 12) = 2080;
        *(v113 + 14) = sub_10010150C(v111, v112, v150);
        *(v113 + 22) = 2080;
        swift_getErrorValue();
        v116 = v0[2];
        v115 = v0[3];
        v117 = v0[4];
        v118 = Error.localizedDescription.getter();
        v120 = sub_10010150C(v118, v119, v150);

        *(v113 + 24) = v120;
        _os_log_impl(&_mh_execute_header, v105, v106, "Device encryption key %s for credential %s does not exist in SE. Error: %s", v113, 0x20u);
        swift_arrayDestroy();

        sub_10001BFFC(v143, v134, v141, v138);
        sub_1000092BC(v141, v136);

        (*(v110 + 8))(v147, v109);
      }

      else
      {

        sub_10001BFFC(v143, v103, v141, v138);
        sub_1000092BC(v141, v136);

        (*(v110 + 8))(v108, v109);
      }

      goto LABEL_34;
    }

    v74 = v72;
    v75 = v73;
    v76 = v0[17];
    v77 = v0[15];
    v78 = type metadata accessor for SESDeviceEncryptionKey(0);
    v79 = *(v78 + 48);
    v80 = *(v78 + 52);
    v81 = swift_allocObject();
    v82 = &v81[OBJC_IVAR____TtC7idcredd22SESDeviceEncryptionKey_keyBlob];
    *v82 = v68;
    v82[1] = v70;
    v83 = &v81[OBJC_IVAR____TtC7idcredd22SESDeviceEncryptionKey_publicKey];
    *v83 = v74;
    v83[1] = v75;
    sub_100009708(v68, v70);
    sub_100009708(v74, v75);
    sub_10016032C(&qword_100201090, &type metadata accessor for Insecure.SHA1);
    dispatch thunk of HashFunction.init()();
    v145 = v75;
    v84 = v75 >> 62;
    v133 = v74;
    if ((v75 >> 62) > 1)
    {
      if (v84 == 2)
      {
        v87 = *(v74 + 16);
        v88 = *(v74 + 24);

        if (__DataStorage._bytes.getter() && __OFSUB__(v87, __DataStorage._offset.getter()))
        {
          goto LABEL_41;
        }

        if (__OFSUB__(v88, v87))
        {
          goto LABEL_40;
        }

        v89 = v0[17];
        v90 = v149[15];
        __DataStorage._length.getter();
LABEL_22:
        v0 = v149;
        dispatch thunk of HashFunction.update(bufferPointer:)();
        v39 = v74;
        v40 = v75;
        goto LABEL_10;
      }

      v37 = v0[17];
      v38 = v0[15];
      *v131 = 0;
      *(v131 + 6) = 0;
      dispatch thunk of HashFunction.update(bufferPointer:)();
      v39 = v74;
      v40 = v75;
    }

    else
    {
      if (v84)
      {
        if (v74 >> 32 < v74)
        {
          goto LABEL_39;
        }

        if (__DataStorage._bytes.getter() && __OFSUB__(v74, __DataStorage._offset.getter()))
        {
          goto LABEL_42;
        }

        v91 = v149[17];
        v92 = v149[15];
        __DataStorage._length.getter();
        goto LABEL_22;
      }

      v85 = v0[17];
      v86 = v0[15];
      v0[48] = v74;
      *(v0 + 196) = v75;
      *(v0 + 394) = BYTE2(v75);
      *(v0 + 395) = BYTE3(v75);
      *(v0 + 396) = BYTE4(v75);
      *(v0 + 397) = BYTE5(v75);
      dispatch thunk of HashFunction.update(bufferPointer:)();
      v39 = v74;
      v40 = v75;
    }

LABEL_10:
    sub_1000092BC(v39, v40);
    v41 = *(v0 + 95);
    v132 = *(v0 + 94);
    v43 = v0[19];
    v42 = v0[20];
    v44 = v0[17];
    v45 = v0[18];
    v46 = v149[16];
    v47 = v149[15];
    dispatch thunk of HashFunction.finalize()();
    (*(v46 + 8))(v44, v47);
    sub_10016032C(&qword_100201098, &type metadata accessor for Insecure.SHA1Digest);
    v48 = Digest.data.getter();
    v50 = v49;
    (*(v43 + 8))(v42, v45);
    v51 = &v81[OBJC_IVAR____TtC7idcredd22SESDeviceEncryptionKey_publicKeyIdentifier];
    *v51 = v48;
    v51[1] = v50;
    v52 = OBJC_IVAR____TtC7idcredd13CredentialKey_type;
    v53 = type metadata accessor for CredentialKeyType();
    v54 = *(v53 - 8);
    (*(v54 + 104))(&v81[v52], v132, v53);
    v55 = OBJC_IVAR____TtC7idcredd13CredentialKey_usage;
    v56 = type metadata accessor for CredentialKeyUsage();
    v57 = *(v56 - 8);
    (*(v57 + 104))(&v81[v55], v41, v56);
    v58 = OBJC_IVAR____TtC7idcredd13CredentialKey_lock;
    sub_100004E70(&qword_1002010A0, &unk_1001AB530);
    v59 = swift_allocObject();
    *(v59 + 16) = 0;
    sub_10001BFFC(v143, v134, v141, v138);
    sub_1000092BC(v133, v145);
    sub_1000092BC(v141, v136);

    *&v81[v58] = v59;
    *(v81 + 2) = v143;
    *(v81 + 3) = v134;
    swift_setDeallocating();
    (*(v54 + 8))(&v81[OBJC_IVAR____TtC7idcredd13CredentialKey_type], v53);
    (*(v57 + 8))(&v81[OBJC_IVAR____TtC7idcredd13CredentialKey_usage], v56);
    v0 = v149;

    v61 = *&v81[OBJC_IVAR____TtC7idcredd22SESDeviceEncryptionKey_keyBlob];
    v60 = *&v81[OBJC_IVAR____TtC7idcredd22SESDeviceEncryptionKey_keyBlob + 8];

    sub_1000092BC(v61, v60);
    sub_1000092BC(*&v81[OBJC_IVAR____TtC7idcredd22SESDeviceEncryptionKey_publicKey], *&v81[OBJC_IVAR____TtC7idcredd22SESDeviceEncryptionKey_publicKey + 8]);
    sub_1000092BC(*&v81[OBJC_IVAR____TtC7idcredd22SESDeviceEncryptionKey_publicKeyIdentifier], *&v81[OBJC_IVAR____TtC7idcredd22SESDeviceEncryptionKey_publicKeyIdentifier + 8]);

    v62 = *(*v81 + 48);
    v63 = *(*v81 + 52);
    swift_deallocClassInstance();
    v36 = 0;
    v5 = v149[39] + 1;
    if (v5 == v149[38])
    {
      goto LABEL_3;
    }
  }

  v94 = v66;
  sub_100009708(v68, v69);
  sub_100009708(v68, v69);
  v95 = v94;
  sub_10001BFB8(v94, v67, v68, v69);

  v96 = swift_task_alloc();
  v0[44] = v96;
  *v96 = v0;
  v96[1] = sub_10015CF78;
  v97 = v0[10];

  return sub_100029DFC(v95, v67, v68, v69);
}

uint64_t sub_10015E030()
{
  v1 = v0[42];
  v2 = v0[43];
  v4 = v0[40];
  v3 = v0[41];
  sub_1000092BC(v1, v2);
  sub_10001BFFC(v4, v3, v1, v2);
  v5 = v0[31];
  v6 = v0[32];
  v8 = v0[29];
  v7 = v0[30];
  v9 = v0[28];
  v11 = v0[24];
  v10 = v0[25];
  v12 = v0[23];
  v13 = v0[20];
  v16 = v0[46];
  v17 = v0[17];
  v18 = v0[14];
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v5 + 8))(v6, v7);

  v14 = v0[1];

  return v14(0);
}

void *sub_10015E1F8@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = v4(v8);
  if (!v2)
  {
    v7 = v8[1];
    *a1 = v8[0];
    *(a1 + 8) = v7;
  }

  return result;
}

uint64_t sub_10015E244(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v215 = a4;
  v201 = a3;
  v196 = a2;
  v199 = type metadata accessor for Logger();
  v200 = *(v199 - 8);
  v5 = *(v200 + 64);
  v6 = __chkstk_darwin(v199);
  v8 = v190 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v195 = v190 - v10;
  v11 = __chkstk_darwin(v9);
  v194 = v190 - v12;
  v13 = __chkstk_darwin(v11);
  v193 = v190 - v14;
  v15 = __chkstk_darwin(v13);
  v192 = v190 - v16;
  v17 = __chkstk_darwin(v15);
  v191 = v190 - v18;
  v19 = __chkstk_darwin(v17);
  v190[1] = v190 - v20;
  __chkstk_darwin(v19);
  v190[0] = v190 - v21;
  v22 = sub_100004E70(&qword_100200510, qword_1001AB070);
  v23 = *(*(v22 - 8) + 64);
  v24 = __chkstk_darwin(v22 - 8);
  v212 = v190 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v213 = v190 - v26;
  v254 = type metadata accessor for CredentialKeyType();
  v27 = *(v254 - 8);
  v28 = *(v27 + 64);
  v29 = __chkstk_darwin(v254);
  v238 = v190 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v29);
  v234 = v190 - v32;
  v33 = __chkstk_darwin(v31);
  v205 = v190 - v34;
  v35 = __chkstk_darwin(v33);
  v223 = v190 - v36;
  __chkstk_darwin(v35);
  v239 = v190 - v37;
  v38 = sub_100004E70(&qword_1002024A8, &unk_1001ACFA0);
  v39 = *(*(v38 - 8) + 64);
  __chkstk_darwin(v38 - 8);
  v214 = v190 - v40;
  v246 = type metadata accessor for CredentialKeyUsage();
  v41 = *(v246 - 8);
  v42 = *(v41 + 64);
  v43 = __chkstk_darwin(v246);
  v241 = v190 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v245 = v190 - v45;
  v46 = type metadata accessor for DIPSignpost.Config();
  v47 = *(*(v46 - 8) + 64);
  __chkstk_darwin(v46 - 8);
  v203 = type metadata accessor for DIPSignpost();
  v202 = *(v203 - 8);
  v48 = *(v202 + 64);
  __chkstk_darwin(v203);
  v50 = v190 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IDCSSignposts.consistencyCheckPresentmentKeys.getter();
  v204 = v50;
  DIPSignpost.init(_:)();
  if (a1 >> 62)
  {
    goto LABEL_82;
  }

  v51 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v52 = v245;
  if (!v51)
  {
LABEL_83:
    defaultLogger()();
    v179 = v201;

    v180 = Logger.logObject.getter();
    v181 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v180, v181))
    {
      v182 = swift_slowAlloc();
      v183 = swift_slowAlloc();
      v184 = v179;
      v185 = v183;
      v252 = v183;
      *v182 = 136315138;
      *(v182 + 4) = sub_10010150C(v196, v184, &v252);
      _os_log_impl(&_mh_execute_header, v180, v181, "Presentment keys for credential %s passed completeness check", v182, 0xCu);
      sub_100005090(v185);
    }

    (*(v200 + 8))(v8, v199);
    v171 = 1;
LABEL_86:
    v186 = v203;
    v187 = v202;
    v188 = v204;
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    (*(v187 + 8))(v188, v186);
    return v171;
  }

LABEL_3:
  v222[0] = a1 & 0xC000000000000001;
  v221 = a1 & 0xFFFFFFFFFFFFFF8;
  v207 = (v41 + 48);
  v197 = (v41 + 32);
  v211 = enum case for CredentialKeyUsage.invalid(_:);
  v220 = v41 + 104;
  v231 = enum case for CredentialKeyUsage.presentment(_:);
  v230 = (v41 + 8);
  v41 = 0;
  v226 = (v27 + 48);
  v206 = (v27 + 32);
  v228 = enum case for CredentialKeyType.invalid(_:);
  v237 = v27 + 104;
  v244 = (v27 + 8);
  v198 = (v27 + 16);
  v229 = enum case for CredentialKeyType.legacySE(_:);
  v218 = enum case for CredentialKeyType.ses(_:);
  v219 = a1;
  v217 = v8;
  v216 = v51;
  while (1)
  {
    if (v222[0])
    {
      v53 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v41 >= *(v221 + 16))
      {
        goto LABEL_81;
      }

      v53 = *(a1 + 8 * v41 + 32);
    }

    v8 = v53;
    a1 = v246;
    if (__OFADD__(v41, 1))
    {
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      v51 = _CocoaArrayWrapper.endIndex.getter();
      v52 = v245;
      if (!v51)
      {
        goto LABEL_83;
      }

      goto LABEL_3;
    }

    v54 = [v53 identifier];
    if (!v54)
    {
      v135 = v195;
      defaultLogger()();
      v136 = v201;

      v137 = Logger.logObject.getter();
      v138 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v137, v138))
      {
        v139 = swift_slowAlloc();
        v140 = swift_slowAlloc();
        v141 = v136;
        v142 = v140;
        v252 = v140;
        *v139 = 136315138;
        *(v139 + 4) = sub_10010150C(v196, v141, &v252);
        v143 = "Presentment key for credential %s does not have an identifier";
LABEL_56:
        _os_log_impl(&_mh_execute_header, v137, v138, v143, v139, 0xCu);
        sub_100005090(v142);
      }

LABEL_57:

      goto LABEL_70;
    }

    v55 = v54;
    v236 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v248 = v56;

    v57 = [v8 publicKeyIdentifier];
    if (!v57)
    {

      v135 = v194;
      defaultLogger()();
      v144 = v201;

      v137 = Logger.logObject.getter();
      v138 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v137, v138))
      {
        v139 = swift_slowAlloc();
        v145 = swift_slowAlloc();
        v146 = v144;
        v142 = v145;
        v252 = v145;
        *v139 = 136315138;
        *(v139 + 4) = sub_10010150C(v196, v146, &v252);
        v143 = "Presentment key for credential %s does not have a public key identifier";
        goto LABEL_56;
      }

      goto LABEL_57;
    }

    v58 = v57;
    v233 = v41;
    v242 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v243 = v59;

    v60 = [v8 usage];
    if (v60)
    {
      v61 = v60;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v62 = v214;
      CredentialKeyUsage.init(rawValue:)();
      if ((*v207)(v62, 1, a1) != 1)
      {
        (*v197)(v52, v62, a1);
        v63 = *v220;
        v64 = v220 & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
        goto LABEL_15;
      }

      sub_10000A0D4(v62, &qword_1002024A8, &unk_1001ACFA0);
    }

    v63 = *v220;
    v64 = v220 & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    (*v220)(v52, v211, a1);
LABEL_15:
    v227 = v64;
    v63(v241, v231, a1);
    sub_10016032C(&qword_1002024B0, &type metadata accessor for CredentialKeyUsage);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v232 = v41 + 1;
    if (v252 == v250 && v253 == v251)
    {
      v65 = v249;
      v66 = 1;
    }

    else
    {
      v65 = v249;
      v66 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v67 = *v230;
    v68 = v246;
    (*v230)(v241, v246);
    v67(v245, v68);

    v249 = v65;
    if ((v66 & 1) == 0)
    {

      v147 = v193;
      defaultLogger()();
      v148 = v201;

      v149 = Logger.logObject.getter();
      v150 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v149, v150))
      {
        v151 = swift_slowAlloc();
        v152 = swift_slowAlloc();
        v153 = v148;
        v154 = v152;
        v252 = v152;
        *v151 = 136315138;
        *(v151 + 4) = sub_10010150C(v196, v153, &v252);
        _os_log_impl(&_mh_execute_header, v149, v150, "Presentment key for credential %s does not have presentment usage", v151, 0xCu);
        sub_100005090(v154);

        sub_1000092BC(v242, v243);
      }

      else
      {
        sub_1000092BC(v242, v243);
      }

      (*(v200 + 8))(v147, v199);
      goto LABEL_71;
    }

    v225 = v63;
    v69 = [v8 keyType];
    v70 = v237 & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    if (v69)
    {
      v71 = v69;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v72 = v213;
      CredentialKeyType.init(rawValue:)();
      if ((*v226)(v72, 1, v254) != 1)
      {
        (*v206)(v239, v72, v254);
        v73 = *v237;
        goto LABEL_25;
      }

      sub_10000A0D4(v72, &qword_100200510, qword_1001AB070);
    }

    v73 = *v237;
    (*v237)(v239, v228, v254);
LABEL_25:
    v247 = v8;
    v74 = v223;
    v73(v223, v229, v254);
    v75 = sub_10016032C(&qword_100203CC0, &type metadata accessor for CredentialKeyType);
    dispatch thunk of RawRepresentable.rawValue.getter();
    v235 = v75;
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v252 == v250 && v253 == v251)
    {
      v76 = v73;
      v77 = 1;
    }

    else
    {
      v76 = v73;
      v77 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v78 = *v244;
    v79 = v74;
    v80 = v254;
    (*v244)(v79, v254);
    v240 = v78;
    v78(v239, v80);

    if ((v77 & 1) == 0)
    {
      v116 = v234;
      v111 = v76;
      goto LABEL_35;
    }

    v81 = v247;
    v82 = [v247 publicKey];
    if (!v82)
    {

      v155 = v222;
      goto LABEL_67;
    }

    v83 = v82;
    v84 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v86 = v85;

    v87 = [v81 keySlot];
    v88 = v249;
    sub_100046D78(0);
    v249 = v88;
    if (v88)
    {
      break;
    }

    v224 = v84;
    v210 = v86;
    v90 = sub_1000A0EE4(v87, v89);

    if (!v90)
    {
      v173 = v190[0];
      defaultLogger()();

      v174 = v201;

      v175 = Logger.logObject.getter();
      v176 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v175, v176))
      {
        v177 = swift_slowAlloc();
        v252 = swift_slowAlloc();
        *v177 = 136315394;
        v178 = sub_10010150C(v236, v248, &v252);

        *(v177 + 4) = v178;
        *(v177 + 12) = 2080;
        *(v177 + 14) = sub_10010150C(v196, v174, &v252);
        _os_log_impl(&_mh_execute_header, v175, v176, "Presentment key %s for credential %s does not exist", v177, 0x16u);
        swift_arrayDestroy();

        sub_1000092BC(v224, v210);
        sub_1000092BC(v242, v243);
      }

      else
      {
        sub_1000092BC(v224, v210);
        sub_1000092BC(v242, v243);
      }

      (*(v200 + 8))(v173, v199);
      goto LABEL_71;
    }

    v91 = v254;
    v222[1] = v70;
    v92 = v205;
    v209 = v76;
    v76(v205, v229, v254);
    v93 = type metadata accessor for LegacySEPresentmentKey(0);
    v94 = *(v93 + 48);
    v95 = *(v93 + 52);
    v96 = swift_allocObject();
    v97 = &v96[OBJC_IVAR____TtC7idcredd22LegacySEPresentmentKey_keySlot];
    *v97 = v87;
    v97[8] = 0;
    v98 = &v96[OBJC_IVAR____TtC7idcredd22LegacySEPresentmentKey_publicKeyIdentifier];
    v99 = v242;
    v100 = v243;
    *v98 = v242;
    *(v98 + 1) = v100;
    v101 = &v96[OBJC_IVAR____TtC7idcredd22LegacySEPresentmentKey_publicKey];
    v102 = v210;
    *v101 = v224;
    *(v101 + 1) = v102;
    v208 = v67;
    v103 = v102;
    (*v198)(&v96[OBJC_IVAR____TtC7idcredd13CredentialKey_type], v92, v91);
    v104 = v246;
    v225(&v96[OBJC_IVAR____TtC7idcredd13CredentialKey_usage], v231, v246);
    v105 = OBJC_IVAR____TtC7idcredd13CredentialKey_lock;
    sub_100004E70(&qword_1002010A0, &unk_1001AB530);
    v106 = swift_allocObject();
    *(v106 + 16) = 0;
    *&v96[v105] = v106;
    v107 = v248;
    *(v96 + 2) = v236;
    *(v96 + 3) = v107;
    sub_100009708(v99, v100);
    v108 = v224;
    sub_100009708(v224, v103);
    v109 = v240;
    v240(v92, v91);
    swift_setDeallocating();
    v110 = v91;
    v111 = v209;
    v109(&v96[OBJC_IVAR____TtC7idcredd13CredentialKey_type], v110);
    v208(&v96[OBJC_IVAR____TtC7idcredd13CredentialKey_usage], v104);

    v112 = *&v96[OBJC_IVAR____TtC7idcredd22LegacySEPresentmentKey_publicKeyIdentifier];
    v113 = *&v96[OBJC_IVAR____TtC7idcredd22LegacySEPresentmentKey_publicKeyIdentifier + 8];

    sub_1000092BC(v112, v113);
    sub_1000092BC(*&v96[OBJC_IVAR____TtC7idcredd22LegacySEPresentmentKey_publicKey], *&v96[OBJC_IVAR____TtC7idcredd22LegacySEPresentmentKey_publicKey + 8]);

    v114 = *(*v96 + 48);
    v115 = *(*v96 + 52);
    swift_deallocClassInstance();
    sub_1000092BC(v108, v103);
    v116 = v234;
LABEL_35:
    v81 = v247;
    v117 = [v247 keyType];
    a1 = v219;
    if (v117)
    {
      v118 = v117;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v119 = v212;
      CredentialKeyType.init(rawValue:)();
      if ((*v226)(v119, 1, v254) != 1)
      {
        v116 = v234;
        (*v206)(v234, v119, v254);
        v81 = v247;
        goto LABEL_40;
      }

      sub_10000A0D4(v119, &qword_100200510, qword_1001AB070);
      v81 = v247;
      v116 = v234;
    }

    v111(v116, v228, v254);
LABEL_40:
    v111(v238, v218, v254);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v27 = v251;
    if (v252 == v250 && v253 == v251)
    {
      v120 = v254;
      v121 = v240;
      v240(v238, v254);
      v121(v116, v120);

      v52 = v245;
    }

    else
    {
      v122 = v116;
      LODWORD(v247) = _stringCompareWithSmolCheck(_:_:expecting:)();
      v123 = v254;
      v124 = v240;
      v240(v238, v254);
      v124(v122, v123);

      v52 = v245;
      if ((v247 & 1) == 0)
      {
        sub_1000092BC(v242, v243);

        goto LABEL_49;
      }
    }

    v125 = [v81 publicKey];
    if (!v125)
    {

      v155 = &v223;
LABEL_67:
      v135 = *(v155 - 32);
      defaultLogger()();
      v164 = v201;

      v165 = Logger.logObject.getter();
      v166 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v165, v166))
      {
        v167 = swift_slowAlloc();
        v168 = swift_slowAlloc();
        v169 = v164;
        v170 = v168;
        v252 = v168;
        *v167 = 136315138;
        *(v167 + 4) = sub_10010150C(v196, v169, &v252);
        _os_log_impl(&_mh_execute_header, v165, v166, "Presentment key for credential %s does not have a public key", v167, 0xCu);
        sub_100005090(v170);

        sub_1000092BC(v242, v243);
      }

      else
      {
        sub_1000092BC(v242, v243);
      }

LABEL_70:
      (*(v200 + 8))(v135, v199);
LABEL_71:
      v171 = 0;
      goto LABEL_86;
    }

    v126 = v125;
    v127 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v129 = v128;

    sub_1000092BC(v127, v129);
    v130 = [v81 keyBlob];
    if (!v130)
    {
      v156 = v191;
      defaultLogger()();

      v157 = v201;

      v158 = Logger.logObject.getter();
      v159 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v158, v159))
      {
        v160 = swift_slowAlloc();
        v161 = swift_slowAlloc();
        v162 = v248;
        v252 = v161;
        *v160 = 136315394;
        v163 = sub_10010150C(v236, v162, &v252);

        *(v160 + 4) = v163;
        *(v160 + 12) = 2080;
        *(v160 + 14) = sub_10010150C(v196, v157, &v252);
        _os_log_impl(&_mh_execute_header, v158, v159, "Presentment key %s for credential %s does not exist", v160, 0x16u);
        swift_arrayDestroy();

        sub_1000092BC(v242, v243);
      }

      else
      {
        sub_1000092BC(v242, v243);
      }

      (*(v200 + 8))(v156, v199);
      goto LABEL_71;
    }

    v131 = v130;
    v132 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v133;

    sub_100009708(v132, v27);
    v134 = v249;
    sub_10002BD74(v236, v248, v132, v27, 0, 0xF000000000000000);
    v249 = v134;
    if (v134)
    {
      sub_1000092BC(v132, v27);
      sub_1000092BC(v132, v27);
      goto LABEL_73;
    }

    sub_1000092BC(v242, v243);

    sub_1000092BC(v132, v27);
    sub_1000092BC(v132, v27);
LABEL_49:
    v41 = v233 + 1;
    v8 = v217;
    if (v232 == v216)
    {
      goto LABEL_83;
    }
  }

  sub_1000092BC(v84, v86);
  v81 = v247;
LABEL_73:
  sub_1000092BC(v242, v243);

  v172 = v204;
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v202 + 8))(v172, v203);
  return 0;
}

uint64_t sub_10015FCC4(unint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v60 = a2;
  v61 = a3;
  v6 = type metadata accessor for Logger();
  v62 = *(v6 - 8);
  v7 = *(v62 + 64);
  v8 = __chkstk_darwin(v6);
  v59 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v55 = &v53 - v11;
  __chkstk_darwin(v10);
  v13 = &v53 - v12;
  v14 = type metadata accessor for DIPSignpost.Config();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v16 = type metadata accessor for DIPSignpost();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IDCSSignposts.consistencyCheckPayloads.getter();
  v63 = v20;
  DIPSignpost.init(_:)();
  if (a1 >> 62)
  {
    goto LABEL_23;
  }

  v21 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v21)
  {
    while (1)
    {
      v54 = v6;
      v56 = v17;
      v57 = v16;
      v58 = v4;
      v6 = 0;
      v17 = a1 & 0xC000000000000001;
      v64 = a1 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v17)
        {
          v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v6 >= *(v64 + 16))
          {
            goto LABEL_22;
          }

          v22 = *(a1 + 8 * v6 + 32);
        }

        v13 = v22;
        v4 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        v23 = [v22 payloadData];
        if (!v23)
        {
          v30 = v55;
          defaultLogger()();
          v31 = v61;

          v32 = Logger.logObject.getter();
          v33 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v32, v33))
          {
            v34 = swift_slowAlloc();
            v35 = swift_slowAlloc();
            v65 = v35;
            *v34 = 136315138;
            *(v34 + 4) = sub_10010150C(v60, v31, &v65);
            _os_log_impl(&_mh_execute_header, v32, v33, "Credential %s has a payload with empty payload data", v34, 0xCu);
            sub_100005090(v35);
          }

          (*(v62 + 8))(v30, v54);
          v29 = 0;
          goto LABEL_16;
        }

        v24 = v23;
        v16 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v26 = v25;

        sub_1000092BC(v16, v26);
        v27 = [v13 presentmentKey];
        if (!v27)
        {
          v36 = v59;
          defaultLogger()();
          v37 = v61;

          v38 = Logger.logObject.getter();
          v39 = static os_log_type_t.error.getter();

          v40 = os_log_type_enabled(v38, v39);
          v16 = v57;
          v17 = v56;
          if (v40)
          {
            v41 = swift_slowAlloc();
            v42 = swift_slowAlloc();
            v65 = v42;
            *v41 = 136315138;
            *(v41 + 4) = sub_10010150C(v60, v37, &v65);
            _os_log_impl(&_mh_execute_header, v38, v39, "Credential %s has a payload without a presentment key", v41, 0xCu);
            sub_100005090(v42);

            (*(v62 + 8))(v59, v54);
          }

          else
          {

            (*(v62 + 8))(v36, v54);
          }

          goto LABEL_20;
        }

        v28 = v27;

        ++v6;
        if (v4 == v21)
        {
          v29 = 1;
LABEL_16:
          v16 = v57;
          v17 = v56;
          goto LABEL_30;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        break;
      }

      v21 = _CocoaArrayWrapper.endIndex.getter();
      if (!v21)
      {
LABEL_20:
        v29 = 1;
        goto LABEL_30;
      }
    }
  }

  defaultLogger()();
  v43 = v61;

  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v48 = v43;
    v49 = v6;
    v50 = v47;
    v65 = v47;
    *v46 = 136315138;
    *(v46 + 4) = sub_10010150C(v60, v48, &v65);
    _os_log_impl(&_mh_execute_header, v44, v45, "Credential %s does not have any payloads", v46, 0xCu);
    sub_100005090(v50);

    (*(v62 + 8))(v13, v49);
  }

  else
  {

    (*(v62 + 8))(v13, v6);
  }

  v29 = 0;
LABEL_30:
  v51 = v63;
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v17 + 8))(v51, v16);
  return v29;
}

uint64_t sub_10016032C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001603A0(uint64_t a1, uint64_t a2)
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

  return _swift_task_switch(sub_100160464, 0, 0);
}

uint64_t sub_100160464()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = *(v1 + 120);
  v5 = swift_allocObject();
  v0[9] = v5;
  v5[2] = v1;
  v5[3] = v3;
  v5[4] = v2;
  v6 = *(v4 + 16);
  v7 = swift_allocObject();
  v0[10] = v7;
  *(v7 + 16) = sub_1001663DC;
  *(v7 + 24) = v5;
  v8 = async function pointer to AsyncCoreDataContainer.performRead<A>(_:)[1];

  v9 = swift_task_alloc();
  v0[11] = v9;
  v10 = sub_100004E70(&qword_100203CD8, &unk_1001AEA70);
  *v9 = v0;
  v9[1] = sub_1001605BC;

  return AsyncCoreDataContainer.performRead<A>(_:)(v0 + 2, sub_100140EA4, v7, v10);
}

uint64_t sub_1001605BC()
{
  v2 = *(*v1 + 88);
  v3 = *v1;
  v3[12] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100160724, 0, 0);
  }

  else
  {
    v4 = v3[9];
    v5 = v3[10];
    v6 = v3[8];

    v7 = v3[2];

    v8 = v3[1];

    return v8(v7);
  }
}

uint64_t sub_100160724()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[10];
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

  v7 = v0[1];

  return v7();
}

uint64_t sub_100160888()
{
  v1[5] = v0;
  v2 = type metadata accessor for DIPError.Code();
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v4 = *(v3 + 64) + 15;
  v1[8] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v1[9] = v5;
  v6 = *(v5 - 8);
  v1[10] = v6;
  v7 = *(v6 + 64) + 15;
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();

  return _swift_task_switch(sub_1001609BC, 0, 0);
}

uint64_t sub_1001609BC()
{
  if (_isInternalBuild.getter())
  {
    sub_100046D78(0);
    v0[14] = v1;
    v16 = *(v0[5] + 120);
    v17 = v1;
    v18 = swift_allocObject();
    v0[15] = v18;
    *(v18 + 16) = v17;
    v19 = *(v16 + 16);
    v20 = swift_allocObject();
    v0[16] = v20;
    *(v20 + 16) = sub_100166378;
    *(v20 + 24) = v18;
    v21 = async function pointer to AsyncCoreDataContainer.performRead<A>(_:)[1];

    v22 = swift_task_alloc();
    v0[17] = v22;
    v23 = sub_100004E70(&qword_100203CD0, &qword_1001AEA60);
    *v22 = v0;
    v22[1] = sub_100160E64;

    return AsyncCoreDataContainer.performRead<A>(_:)(v0 + 2, sub_100166394, v20, v23);
  }

  else
  {
    v2 = v0[13];
    defaultLogger()();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    v5 = os_log_type_enabled(v3, v4);
    v6 = v0[13];
    v7 = v0[9];
    v8 = v0[10];
    if (v5)
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "getLegacySESlots requires an internal build", v9, 2u);
    }

    (*(v8 + 8))(v6, v7);
    v11 = v0[12];
    v10 = v0[13];
    v12 = v0[11];
    v13 = v0[8];

    v14 = v0[1];

    return v14(&_swiftEmptyArrayStorage);
  }
}

uint64_t sub_100160E64()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v10 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v4 = *(v2 + 128);
    v5 = *(v2 + 112);

    v6 = sub_100161474;
  }

  else
  {
    v7 = *(v2 + 120);
    v8 = *(v2 + 128);

    *(v2 + 152) = *(v2 + 16);
    v6 = sub_100160FA4;
  }

  return _swift_task_switch(v6, 0, 0);
}

void sub_100160FA4()
{
  v58 = v0;
  v0[4] = v0[19];
  v1 = v0 + 4;
  v2 = v0[14];
  v3 = v0[12];
  defaultLogger()();

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[14];
    v54 = v0[12];
    v8 = v0[9];
    v7 = v0[10];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v57 = v10;
    *v9 = 136315138;
    v11 = Set.description.getter();
    v13 = sub_10010150C(v11, v12, &v57);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "Occupied slots: %s", v9, 0xCu);
    sub_100005090(v10);

    v14 = *(v7 + 8);
    v14(v54, v8);
  }

  else
  {
    v15 = v0[12];
    v16 = v0[9];
    v17 = v0[10];

    v14 = *(v17 + 8);
    v14(v15, v16);
  }

  v18 = v0[11];
  defaultLogger()();
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = v0[20];
    v52 = v0[10];
    v53 = v0[9];
    v55 = v0[11];
    v22 = v14;
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v57 = v24;
    *v23 = 136315138;

    v25 = Set.description.getter();
    v27 = v26;

    v28 = sub_10010150C(v25, v27, &v57);

    *(v23 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v19, v20, "Credential slots: %s", v23, 0xCu);
    sub_100005090(v24);

    v22(v55, v53);
  }

  else
  {
    v30 = v0[10];
    v29 = v0[11];
    v31 = v0[9];

    v14(v29, v31);
  }

  v32 = v0[14];
  if (*(v0[20] + 16) <= v32[2] >> 3)
  {
    v57 = v0[14];

    sub_100164C08(v36);

    v35 = v57;
  }

  else
  {
    v33 = v0[20];

    v35 = sub_100164D00(v34, v32);
  }

  v37 = 0;
  v38 = -1;
  v39 = -1 << *(v35 + 32);
  if (-v39 < 64)
  {
    v38 = ~(-1 << -v39);
  }

  v40 = v38 & v35[7];
  v41 = (63 - v39) >> 6;
  for (i = v0 + 19; v40; i = v0 + 4)
  {
LABEL_18:
    v45 = [objc_allocWithZone(DCLegacySESlotInfo) initWithSESlot:*(v35[6] + ((v37 << 9) | (8 * __clz(__rbit64(v40))))) isMissing:0];
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v56 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    v40 &= v40 - 1;
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  v43 = *i;
  while (1)
  {
    v44 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      __break(1u);
      return;
    }

    if (v44 >= v41)
    {
      break;
    }

    v40 = v35[v44 + 7];
    ++v37;
    if (v40)
    {
      v37 = v44;
      goto LABEL_18;
    }
  }

  v46 = v0[20];

  v48 = v0[12];
  v47 = v0[13];
  v49 = v0[11];
  v50 = v0[8];

  v51 = v0[1];

  v51(v43);
}

uint64_t sub_100161474()
{
  v1 = v0[15];
  v2 = v0[7];

  v3 = v0[18];
  v4 = v0[12];
  v5 = v0[13];
  v6 = v0[11];
  (*(v2 + 104))(v0[8], enum case for DIPError.Code.internalError(_:), v0[6]);
  swift_errorRetain();
  sub_10002688C(&_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100008E7C();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v7 = v0[1];

  return v7();
}

uint64_t sub_1001615F8(uint64_t a1, uint64_t a2)
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
  v7 = type metadata accessor for Logger();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();

  return _swift_task_switch(sub_100161724, 0, 0);
}

uint64_t sub_100161724()
{
  v37 = v0;
  v1 = v0[11];
  v2 = v0[3];
  defaultLogger()();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[11];
  v7 = v0[8];
  v8 = v0[9];
  if (v5)
  {
    v10 = v0[2];
    v9 = v0[3];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v36 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_10010150C(v10, v9, &v36);
    _os_log_impl(&_mh_execute_header, v3, v4, "CredentialStorage clearPresentmentKeyUsage for credential %s", v11, 0xCu);
    sub_100005090(v12);
  }

  v13 = *(v8 + 8);
  v13(v6, v7);
  if (_isInternalBuild.getter())
  {
    v15 = v0[3];
    v14 = v0[4];
    v16 = v0[2];
    v17 = *(v14 + 120);
    v18 = swift_allocObject();
    v0[12] = v18;
    v18[2] = v14;
    v18[3] = v16;
    v18[4] = v15;
    v19 = *(v17 + 16);
    v20 = swift_allocObject();
    v0[13] = v20;
    *(v20 + 16) = sub_10016602C;
    *(v20 + 24) = v18;
    v21 = async function pointer to AsyncCoreDataContainer.performWrite<A>(_:)[1];

    v22 = swift_task_alloc();
    v0[14] = v22;
    *v22 = v0;
    v22[1] = sub_100161A70;

    return AsyncCoreDataContainer.performWrite<A>(_:)();
  }

  else
  {
    v23 = v0[10];
    defaultLogger()();
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();
    v26 = os_log_type_enabled(v24, v25);
    v28 = v0[9];
    v27 = v0[10];
    v29 = v0[8];
    if (v26)
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "clearPresentmentKeyUsage requires an internal build", v30, 2u);
    }

    v13(v27, v29);
    v32 = v0[10];
    v31 = v0[11];
    v33 = v0[7];

    v34 = v0[1];

    return v34();
  }
}

uint64_t sub_100161A70()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v8 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = sub_100161C0C;
  }

  else
  {
    v6 = *(v2 + 96);
    v5 = *(v2 + 104);

    v4 = sub_100161B94;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100161B94()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[7];

  v4 = v0[1];

  return v4();
}

uint64_t sub_100161C0C()
{
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[13];
  v4 = v0[10];
  v5 = v0[11];
  v7 = v0[6];
  v6 = v0[7];
  v8 = v0[5];

  (*(v7 + 104))(v6, enum case for DIPError.Code.internalError(_:), v8);
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

uint64_t sub_100161D8C(uint64_t a1, uint64_t a2)
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
  v3[12] = swift_task_alloc();

  return _swift_task_switch(sub_100161EB8, 0, 0);
}

uint64_t sub_100161EB8()
{
  v38 = v0;
  v1 = v0[12];
  v2 = v0[4];
  defaultLogger()();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[12];
  v7 = v0[9];
  v8 = v0[10];
  if (v5)
  {
    v10 = v0[3];
    v9 = v0[4];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v37 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_10010150C(v10, v9, &v37);
    _os_log_impl(&_mh_execute_header, v3, v4, "CredentialStorage keyInfo for credential %s", v11, 0xCu);
    sub_100005090(v12);
  }

  v13 = *(v8 + 8);
  v13(v6, v7);
  if (_isInternalBuild.getter())
  {
    v15 = v0[4];
    v14 = v0[5];
    v16 = v0[3];
    v17 = *(v14 + 120);
    v18 = swift_allocObject();
    v0[13] = v18;
    v18[2] = v14;
    v18[3] = v16;
    v18[4] = v15;
    v19 = *(v17 + 16);
    v20 = swift_allocObject();
    v0[14] = v20;
    *(v20 + 16) = sub_100164BE8;
    *(v20 + 24) = v18;
    v21 = async function pointer to AsyncCoreDataContainer.performRead<A>(_:)[1];

    v22 = swift_task_alloc();
    v0[15] = v22;
    v23 = sub_100004E70(&qword_100203CC8, &qword_1001AEA48);
    *v22 = v0;
    v22[1] = sub_100162220;

    return AsyncCoreDataContainer.performRead<A>(_:)(v0 + 2, sub_100141890, v20, v23);
  }

  else
  {
    v24 = v0[11];
    defaultLogger()();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();
    v27 = os_log_type_enabled(v25, v26);
    v29 = v0[10];
    v28 = v0[11];
    v30 = v0[9];
    if (v27)
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "keyInfo requires an internal build", v31, 2u);
    }

    v13(v28, v30);
    v33 = v0[11];
    v32 = v0[12];
    v34 = v0[8];

    v35 = v0[1];

    return v35(&_swiftEmptyArrayStorage);
  }
}

uint64_t sub_100162220()
{
  v2 = *(*v1 + 120);
  v3 = *v1;
  v3[16] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100162398, 0, 0);
  }

  else
  {
    v4 = v3[13];
    v5 = v3[14];

    v6 = v3[2];
    v8 = v3[11];
    v7 = v3[12];
    v9 = v3[8];

    v10 = v3[1];

    return v10(v6);
  }
}

uint64_t sub_100162398()
{
  v1 = v0[16];
  v2 = v0[13];
  v3 = v0[14];
  v4 = v0[11];
  v5 = v0[12];
  v7 = v0[7];
  v6 = v0[8];
  v8 = v0[6];

  (*(v7 + 104))(v6, enum case for DIPError.Code.internalError(_:), v8);
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

unint64_t sub_100162524@<X0>(uint64_t a1@<X2>, void *a2@<X3>, void *a3@<X8>)
{
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_10016A520(a1, a2);
  if (v3)
  {
    return result;
  }

  v13 = result;
  v26 = v11;
  v31 = &_swiftEmptyArrayStorage;
  result = sub_10005947C();
  v15 = result;
  if (!(result >> 62))
  {
    v16 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16)
    {
      goto LABEL_4;
    }

LABEL_15:

    *a3 = &_swiftEmptyArrayStorage;
    return result;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v16 = result;
  if (!result)
  {
    goto LABEL_15;
  }

LABEL_4:
  v21 = v13;
  v22 = a3;
  if (v16 < 1)
  {
    __break(1u);
  }

  else
  {
    v17 = 0;
    v30 = v15 & 0xC000000000000001;
    v28 = v8 + 8;
    v27 = &_swiftEmptyArrayStorage;
    *&v14 = 136315138;
    v23 = v14;
    v24 = v15;
    v25 = v7;
    v29 = v16;
    do
    {
      if (v30)
      {
        v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v18 = *(v15 + 8 * v17 + 32);
      }

      v19 = v18;
      sub_10005DCD8();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v20 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v27 = v31;
      ++v17;
    }

    while (v16 != v17);

    *v22 = v27;
  }

  return result;
}

unint64_t sub_1001628D0@<X0>(char *a1@<X1>, void *a2@<X8>)
{
  v5 = type metadata accessor for CredentialKeyUsage();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  __chkstk_darwin(v5);
  v9 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = &_swiftEmptyArrayStorage;
  v85 = &_swiftEmptySetSingleton;
  result = sub_100051CD4();
  v79 = v2;
  if (!v2)
  {
    v77 = result;
    v78 = a1;
    if (result >> 62)
    {
      goto LABEL_61;
    }

    v69 = result & 0xFFFFFFFFFFFFFF8;
    v70 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v70)
    {
LABEL_4:
      v11 = 0;
      v76 = result & 0xC000000000000001;
      v67 = "fiersByNamespace()";
      v66 = enum case for CredentialKeyUsage.presentment(_:);
      v65 = (v6 + 104);
      v64 = (v6 + 8);
      v71 = v78 + 56;
      v6 = &_swiftEmptyArrayStorage;
      v63 = xmmword_1001AAE50;
      v73 = a2;
      v68 = v9;
LABEL_5:
      v72 = v6;
      v12 = v69;
      v9 = v70;
      while (1)
      {
        if (v76)
        {
          result = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v11 >= *(v12 + 16))
          {
            goto LABEL_58;
          }

          result = *(result + 8 * v11 + 32);
        }

        v13 = result;
        v6 = (v11 + 1);
        if (__OFADD__(v11, 1))
        {
          __break(1u);
LABEL_58:
          __break(1u);
LABEL_59:
          __break(1u);
LABEL_60:
          __break(1u);
LABEL_61:
          v69 = result & 0xFFFFFFFFFFFFFF8;
          v57 = _CocoaArrayWrapper.endIndex.getter();
          result = v77;
          v70 = v57;
          if (!v57)
          {
            break;
          }

          goto LABEL_4;
        }

        result = [result credentialIdentifier];
        if (result)
        {
          v80 = (v11 + 1);
          v14 = result;
          v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v17 = v16;

          v18 = [v13 managedObjectContext];
          if (v18)
          {
            v19 = v18;
            v82 = v13;
            v83 = type metadata accessor for StoredCryptoKey();
            v81 = static StoredCryptoKey.fetchRequest()();
            v75 = sub_100050ECC();
            sub_100004E70(&qword_100201868, &unk_1001ABDC0);
            v20 = swift_allocObject();
            *(v20 + 16) = v63;
            *(v20 + 56) = &type metadata for String;
            v21 = sub_100050F18();
            *(v20 + 64) = v21;
            *(v20 + 32) = v15;
            *(v20 + 40) = v17;
            v22 = v68;
            (*v65)(v68, v66, v5);
            v23 = CredentialKeyUsage.rawValue.getter();
            v25 = v24;
            (*v64)(v22, v5);
            *(v20 + 96) = &type metadata for String;
            *(v20 + 104) = v21;
            *(v20 + 72) = v23;
            *(v20 + 80) = v25;
            v26 = NSPredicate.init(format:_:)();
            v27 = v81;
            [v81 setPredicate:v26];

            v28 = v79;
            v29 = NSManagedObjectContext.fetch<A>(_:)();

            v79 = v28;
            if (v28)
            {
            }

            v12 = v69;
            v9 = v70;
            v6 = v80;
            v13 = v82;
            a2 = v73;
            if (v29 >> 62)
            {
LABEL_20:
              result = _CocoaArrayWrapper.endIndex.getter();
              v30 = result;
              if (result)
              {
LABEL_23:
                v80 = v6;
                v60 = v5;
                v5 = 0;
                v75 = v29 & 0xC000000000000001;
                v62 = v29 & 0xFFFFFFFFFFFFFF8;
                v72 = v29;
                v61 = v29 + 32;
                v6 = v78;
                v82 = v13;
                v74 = v30;
                while (1)
                {
                  if (v75)
                  {
                    result = specialized _ArrayBuffer._getElementSlowPath(_:)();
                  }

                  else
                  {
                    if (v5 >= *(v62 + 16))
                    {
                      goto LABEL_60;
                    }

                    result = *(v61 + 8 * v5);
                  }

                  v9 = result;
                  if (__OFADD__(v5++, 1))
                  {
                    goto LABEL_59;
                  }

                  v32 = [result keySlot];
                  sub_100102364(&v84, v32);
                  if (*(v6 + 2) && (v33 = *(v6 + 5), v34 = static Hasher._hash(seed:_:)(), v35 = -1 << v6[32], v36 = v34 & ~v35, ((*&v71[(v36 >> 3) & 0xFFFFFFFFFFFFFF8] >> v36) & 1) != 0))
                  {
                    v37 = ~v35;
                    do
                    {
                      v38 = *(*(v6 + 6) + 8 * v36);
                      v39 = v38 != v32;
                      if (v38 == v32)
                      {
                        break;
                      }

                      v36 = (v36 + 1) & v37;
                    }

                    while (((*&v71[(v36 >> 3) & 0xFFFFFFFFFFFFFF8] >> v36) & 1) != 0);
                  }

                  else
                  {
                    v39 = 1;
                  }

                  v40 = [v13 partition];
                  if (v40)
                  {
                    v41 = v40;
                    v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v43 = v42;
                  }

                  else
                  {
                    v81 = 0;
                    v43 = 0;
                  }

                  v44 = [v13 credentialIdentifier];
                  if (v44)
                  {
                    v45 = v44;
                    static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v47 = v46;
                  }

                  else
                  {
                    v47 = 0;
                  }

                  v83 = v9;
                  v48 = [v9 identifier];
                  if (v48)
                  {
                    v49 = v48;
                    static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v9 = v50;

                    if (v43)
                    {
                      goto LABEL_44;
                    }
                  }

                  else
                  {
                    v9 = 0;
                    if (v43)
                    {
LABEL_44:
                      a2 = String._bridgeToObjectiveC()();

                      if (v47)
                      {
                        goto LABEL_45;
                      }

                      goto LABEL_49;
                    }
                  }

                  a2 = 0;
                  if (v47)
                  {
LABEL_45:
                    v51 = String._bridgeToObjectiveC()();

                    if (!v9)
                    {
                      goto LABEL_50;
                    }

                    goto LABEL_46;
                  }

LABEL_49:
                  v51 = 0;
                  if (!v9)
                  {
LABEL_50:
                    v52 = 0;
                    goto LABEL_51;
                  }

LABEL_46:
                  v52 = String._bridgeToObjectiveC()();

LABEL_51:
                  v13 = v82;
                  v53 = v83;
                  v54 = [objc_allocWithZone(DCLegacySESlotInfo) initWithSESlot:v32 isMissing:v39 partition:a2 credentialIdentifier:v51 presentmentKeyIdentifier:v52];

                  v55 = v54;
                  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                  if (*((v86 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v86 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    v56 = *((v86 & 0xFFFFFFFFFFFFFF8) + 0x10);
                    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                  }

                  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

                  v6 = v78;
                  if (v5 == v74)
                  {
                    v6 = v86;

                    v11 = v80;
                    a2 = v73;
                    v5 = v60;
                    result = v77;
                    if (v80 != v70)
                    {
                      goto LABEL_5;
                    }

                    goto LABEL_63;
                  }
                }
              }

              goto LABEL_17;
            }
          }

          else
          {

            v29 = &_swiftEmptyArrayStorage;
            a2 = v73;
            v6 = v80;
            if (&_swiftEmptyArrayStorage >> 62)
            {
              goto LABEL_20;
            }
          }
        }

        else
        {
          v29 = &_swiftEmptyArrayStorage;
          if (&_swiftEmptyArrayStorage >> 62)
          {
            goto LABEL_20;
          }
        }

        v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v30)
        {
          goto LABEL_23;
        }

LABEL_17:

        ++v11;
        result = v77;
        if (v6 == v9)
        {
          v6 = v72;
          goto LABEL_63;
        }
      }
    }

    v6 = &_swiftEmptyArrayStorage;
LABEL_63:

    v58 = v85;
    *a2 = v6;
    a2[1] = v58;
  }

  return result;
}

void sub_100163070(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10016A520(a3, a4);
  if (v4)
  {
    return;
  }

  v47 = v12;
  v48 = v8;
  v43 = v13;
  sub_10005A084();
  v16 = v14;
  if (v14 >> 62)
  {
    v17 = _CocoaArrayWrapper.endIndex.getter();
    v41 = 0;
    if (v17)
    {
      goto LABEL_4;
    }

LABEL_27:

    sub_100050240();

    return;
  }

  v17 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v41 = 0;
  if (!v17)
  {
    goto LABEL_27;
  }

LABEL_4:
  v42 = a1;
  if (v17 >= 1)
  {
    v18 = v17;
    v19 = 0;
    v54 = v16 & 0xC000000000000001;
    v49 = (v9 + 8);
    *&v15 = 136315138;
    v44 = v15;
    v21 = v47;
    v20 = v48;
    v45 = v17;
    v46 = v16;
    while (1)
    {
      if (v54)
      {
        v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v23 = *(v16 + 8 * v19 + 32);
      }

      v24 = v23;
      defaultLogger()();
      v25 = v24;
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        *&v52 = v29;
        *v28 = v44;
        v30 = [v25 identifier];
        if (v30)
        {
          v31 = v30;
          v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v34 = v33;
        }

        else
        {
          v34 = 0xE500000000000000;
          v32 = 0x3E6C696E3CLL;
        }

        v35 = sub_10010150C(v32, v34, &v52);

        *(v28 + 4) = v35;
        _os_log_impl(&_mh_execute_header, v26, v27, "Clearing presentment key usage for key %s", v28, 0xCu);
        sub_100005090(v29);

        v20 = v48;
        v21 = v47;
        (*v49)(v47, v48);
        v18 = v45;
        v16 = v46;
      }

      else
      {

        (*v49)(v21, v20);
      }

      [v25 setTimesUsed:0];
      v36 = [v25 relyingParties];
      if (v36)
      {
        v37 = v36;
        v38 = [v36 anyObject];

        if (v38)
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
        }

        else
        {
          v50 = 0u;
          v51 = 0u;
        }

        v52 = v50;
        v53 = v51;
        if (*(&v51 + 1))
        {
          type metadata accessor for StoredRelyingParty();
          if (swift_dynamicCast())
          {
            v39 = v50;
            [*(v42 + 16) deleteObject:v50];
          }

          goto LABEL_8;
        }
      }

      else
      {
        v52 = 0u;
        v53 = 0u;
      }

      sub_10000A0D4(&v52, &qword_1002004C0, &unk_1001AB940);
LABEL_8:
      ++v19;
      v22 = [objc_allocWithZone(NSSet) init];
      [v25 setRelyingParties:v22];

      if (v18 == v19)
      {
        goto LABEL_27;
      }
    }
  }

  __break(1u);
}

void sub_1001634E0(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, char *a5@<X8>)
{
  v212 = a2;
  v198 = a5;
  v195 = type metadata accessor for Logger();
  v202 = *(v195 - 8);
  v8 = *(v202 + 64);
  __chkstk_darwin(v195);
  v194 = &v150 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v192 = type metadata accessor for DIPError.Code();
  v191 = *(v192 - 8);
  v10 = *(v191 + 64);
  __chkstk_darwin(v192);
  v196 = &v150 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100004E70(&qword_1002004D0, &unk_1001AE1C0);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v206 = &v150 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v205 = &v150 - v16;
  v208 = type metadata accessor for Date();
  v201 = *(v208 - 8);
  v17 = *(v201 + 64);
  v18 = __chkstk_darwin(v208);
  v20 = &v150 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v18);
  v209 = &v150 - v22;
  __chkstk_darwin(v21);
  v210 = &v150 - v23;
  v24 = sub_100004E70(&qword_1002024A8, &unk_1001ACFA0);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v199 = &v150 - v26;
  v207 = type metadata accessor for CredentialKeyUsage();
  v200 = *(v207 - 8);
  v27 = *(v200 + 64);
  __chkstk_darwin(v207);
  v204 = &v150 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_100004E70(&qword_100200510, qword_1001AB070);
  v30 = *(*(v29 - 8) + 64);
  v31 = __chkstk_darwin(v29 - 8);
  v33 = &v150 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v35 = &v150 - v34;
  v36 = type metadata accessor for CredentialKeyType();
  v197 = *(v36 - 8);
  v37 = *(v197 + 8);
  v38 = __chkstk_darwin(v36);
  v40 = &v150 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v42 = &v150 - v41;
  v203 = a3;
  v43 = v211;
  v44 = sub_10016A520(a3, a4);
  if (!v43)
  {
    v211 = a1;
    v187 = v42;
    v186 = v40;
    v188 = v36;
    v172 = v35;
    v185 = v33;
    v184 = a4;
    v215 = &_swiftEmptyArrayStorage;
    v45 = v44;
    v46 = sub_100059C5C();
    v162 = v45;
    v47 = 0xD000000000000012;
    v214 = v46;
    v48 = sub_1000508BC(0xD000000000000012, 0x80000001001B18B0);
    v49 = 0;
    v193 = v20;
    if (v48)
    {
      v50 = v48;
      v51 = [v48 progenitorKey];

      v52 = v198;
      v53 = v206;
      if (v51)
      {
        v54 = v51;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v214 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v214 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_74;
        }

        goto LABEL_5;
      }
    }

    else
    {
      v52 = v198;
      v53 = v206;
    }

LABEL_7:
    v55 = sub_1000508BC(v47 + 12, 0x80000001001B18D0);
    if (v49)
    {

      return;
    }

    v152 = 0;
    if (v55)
    {
      v57 = v55;
      v58 = [v55 progenitorKey];

      v49 = v207;
      v47 = v188;
      if (v58)
      {
        v59 = v58;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v214 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v214 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v149 = *((v214 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v46 = v214;
      }
    }

    else
    {
      v49 = v207;
      v47 = v188;
    }

    v60 = v52;
    if (v46 >> 62)
    {
      v54 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v54 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v52 = v197;
    if (!v54)
    {

      *v60 = &_swiftEmptyArrayStorage;
      return;
    }

    v61 = 0;
    v167 = v46 & 0xC000000000000001;
    v156 = v46 & 0xFFFFFFFFFFFFFF8;
    v169 = (v197 + 48);
    v158 = (v197 + 32);
    v171 = enum case for CredentialKeyType.invalid(_:);
    v170 = v197 + 104;
    v176 = v197 + 8;
    v157 = (v200 + 48);
    v155 = (v200 + 32);
    v160 = enum case for CredentialKeyUsage.invalid(_:);
    v159 = (v200 + 104);
    v164 = (v200 + 8);
    v168 = (v201 + 32);
    v182 = (v201 + 56);
    v161 = (v201 + 48);
    v154 = (v197 + 88);
    v153 = enum case for CredentialKeyType.ses(_:);
    v151 = (v202 + 8);
    v165 = (v201 + 8);
    v189 = &_swiftEmptyArrayStorage;
    *&v56 = 136315138;
    v150 = v56;
    v166 = v46;
    v163 = v54;
    while (1)
    {
      if (v167)
      {
        v62 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v61 >= *(v156 + 16))
        {
          goto LABEL_73;
        }

        v62 = *(v46 + 8 * v61 + 32);
      }

      v52 = v62;
      v63 = v187;
      if (__OFADD__(v61, 1))
      {
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_5:
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v46 = v214;
        goto LABEL_7;
      }

      v64 = [v62 identifier];
      if (v64)
      {
        v65 = v64;
        v183 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v190 = v66;
      }

      else
      {
        v183 = 0;
        v190 = 0xE000000000000000;
      }

      v180 = (v61 + 1);
      v67 = [v52 publicKey];
      if (v67)
      {
        v68 = v67;
        v202 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v211 = v69;
      }

      else
      {
        v202 = 0;
        v211 = 0xC000000000000000;
      }

      v70 = [v52 publicKeyIdentifier];
      v181 = v61;
      if (v70)
      {
        v71 = v70;
        v200 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v201 = v72;
      }

      else
      {
        v200 = 0;
        v201 = 0xC000000000000000;
      }

      v73 = v209;
      v74 = [v52 keyType];
      if (!v74)
      {
        goto LABEL_37;
      }

      v75 = v74;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v76 = v172;
      CredentialKeyType.init(rawValue:)();
      if ((*v169)(v76, 1, v47) == 1)
      {
        break;
      }

      (*v158)(v63, v76, v47);
      v73 = v209;
      v49 = v207;
LABEL_39:
      v179 = CredentialKeyType.rawValue.getter();
      v77 = v63;
      v78 = *v176;
      (*v176)(v77, v47);
      v79 = [v52 usage];
      if (!v79)
      {
        goto LABEL_42;
      }

      v80 = v79;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v81 = v199;
      v49 = v207;
      CredentialKeyUsage.init(rawValue:)();
      if ((*v157)(v81, 1, v49) == 1)
      {
        sub_10000A0D4(v81, &qword_1002024A8, &unk_1001ACFA0);
        v73 = v209;
LABEL_42:
        v82 = v204;
        (*v159)(v204, v160, v49);
        goto LABEL_44;
      }

      v82 = v204;
      (*v155)(v204, v81, v49);
      v73 = v209;
LABEL_44:
      v178 = CredentialKeyUsage.rawValue.getter();
      (*v164)(v82, v49);
      v83 = [v52 createdAt];
      v197 = v52;
      if (v83)
      {
        v84 = v73;
        v85 = v83;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v86 = *v168;
        v87 = v205;
        v88 = v208;
        (*v168)(v205, v84, v208);
        v89 = *v182;
        (*v182)(v87, 0, 1, v88);
        v90 = v87;
        v47 = v188;
        v86(v210, v90, v88);
        v52 = v197;
      }

      else
      {
        v89 = *v182;
        v91 = v205;
        v88 = v208;
        (*v182)(v205, 1, 1, v208);
        static Date.distantPast.getter();
        if ((*v161)(v91, 1, v88) != 1)
        {
          sub_10000A0D4(v91, &qword_1002004D0, &unk_1001AE1C0);
        }
      }

      v92 = [v52 updatedAt];
      if (v92)
      {
        v93 = v209;
        v94 = v92;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v95 = *v168;
        v96 = v93;
        v97 = v208;
        (*v168)(v53, v96, v208);
        v89(v53, 0, 1, v97);
        v95(v193, v53, v97);
        v52 = v197;
      }

      else
      {
        v89(v53, 1, 1, v88);
        static Date.distantPast.getter();
        if ((*v161)(v53, 1, v88) != 1)
        {
          sub_10000A0D4(v53, &qword_1002004D0, &unk_1001AE1C0);
        }
      }

      v177 = [v52 timesUsed];
      v98 = [v52 keyType];
      v99 = v185;
      if (!v98)
      {
        goto LABEL_55;
      }

      v100 = v98;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      CredentialKeyType.init(rawValue:)();
      if ((*v169)(v99, 1, v47) == 1)
      {
        sub_10000A0D4(v99, &qword_100200510, qword_1001AB070);
LABEL_55:
        v101 = v186;
        (*v170)(v186, v171, v47);
LABEL_56:
        v78(v101, v47);
        v102 = 0;
        v103 = 0xC000000000000000;
        goto LABEL_57;
      }

      v101 = v186;
      (*v158)(v186, v99, v47);
      v122 = (*v154)(v101, v47);
      if (v122 != v153)
      {
        goto LABEL_56;
      }

      v123 = [v52 keyBlob];
      if (!v123)
      {

        v138 = v194;
        defaultLogger()();
        v139 = v190;

        v140 = Logger.logObject.getter();
        v141 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v140, v141))
        {
          v142 = swift_slowAlloc();
          v143 = swift_slowAlloc();
          v213 = v143;
          *v142 = v150;
          v144 = sub_10010150C(v183, v139, &v213);

          *(v142 + 4) = v144;
          v47 = v188;
          _os_log_impl(&_mh_execute_header, v140, v141, "Cannot report SES presentment key %s because it has no key blob", v142, 0xCu);
          sub_100005090(v143);
        }

        else
        {
        }

        sub_1000092BC(v200, v201);
        sub_1000092BC(v202, v211);
        (*v151)(v138, v195);
        v145 = *v165;
        v146 = v208;
        (*v165)(v193, v208);
        v145(v210, v146);
        v53 = v206;
        v49 = v207;
        v46 = v166;
        goto LABEL_60;
      }

      v124 = v123;
      v125 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v127 = v126;

      v128 = *(v212 + 112);
      v129 = v152;
      v130 = sub_10002BD74(v183, v190, v125, v127, 0, 0xF000000000000000);
      v131 = v208;
      if (v129)
      {

        sub_1000092BC(v125, v127);

        sub_1000092BC(v200, v201);
        sub_1000092BC(v202, v211);
        v148 = *v165;
        (*v165)(v193, v131);
        v148(v210, v131);

        return;
      }

      v175 = v127;
      v132 = v130 + OBJC_IVAR____TtC7idcredd17SESPresentmentKey_keyBlob;
      v133 = *(v130 + OBJC_IVAR____TtC7idcredd17SESPresentmentKey_keyBlob);
      v134 = *(v132 + 8);
      v135 = sub_10002B1A4();
      v152 = 0;
      v136 = v135;
      v102 = SecAccessControlRef.data.getter();
      v103 = v137;

      sub_1000092BC(v125, v175);
LABEL_57:
      v189 = v102;
      v190 = v103;
      v175 = objc_allocWithZone(DCCredentialCryptoKeyInfo);
      sub_100009708(v202, v211);
      sub_100009708(v200, v201);
      sub_100009708(v102, v103);
      v104 = String._bridgeToObjectiveC()();

      v174 = String._bridgeToObjectiveC()();
      isa = Data._bridgeToObjectiveC()().super.isa;
      v105 = Data._bridgeToObjectiveC()().super.isa;
      v106 = String._bridgeToObjectiveC()();

      v107 = String._bridgeToObjectiveC()();

      v108 = Date._bridgeToObjectiveC()().super.isa;
      v109 = Date._bridgeToObjectiveC()().super.isa;
      v110 = Data._bridgeToObjectiveC()().super.isa;
      v111 = v104;
      v112 = v104;
      v113 = v174;
      v114 = isa;
      v183 = [v175 initWithIdentifier:v112 credentialIdentifier:v174 publicKey:isa publicKeyIdentifier:v105 keyType:v106 keyUsage:v107 createdAt:v108 updatedAt:v109 presentmentKeyTimesUsed:v177 acl:v110];

      v115 = v200;
      v52 = v201;
      v116 = v202;
      v117 = v211;

      v118 = v189;
      v119 = v190;

      sub_1000092BC(v118, v119);
      sub_1000092BC(v115, v52);
      sub_1000092BC(v116, v117);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v215 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v215 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v147 = *((v215 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v119 = v190;
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      sub_1000092BC(v118, v119);
      sub_1000092BC(v115, v52);
      sub_1000092BC(v116, v117);
      v120 = *v165;
      v121 = v208;
      (*v165)(v193, v208);
      v120(v210, v121);
      v189 = v215;
      v53 = v206;
      v49 = v207;
      v46 = v166;
      v47 = v188;
LABEL_60:
      v61 = v181 + 1;
      v54 = v163;
      if (v180 == v163)
      {

        *v198 = v189;
        return;
      }
    }

    sub_10000A0D4(v76, &qword_100200510, qword_1001AB070);
    v73 = v209;
    v49 = v207;
LABEL_37:
    (*v170)(v63, v171, v47);
    goto LABEL_39;
  }
}

uint64_t sub_100164C08(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        result = sub_100165608(*(*(v2 + 48) + ((v9 << 9) | (8 * v10))));
        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

void *sub_100164D00(uint64_t a1, void *a2)
{
  v6 = a2;
  if (a2[2])
  {
    v48 = a1;
    v49 = 0;
    v8 = a1 + 56;
    v7 = *(a1 + 56);
    v9 = -1 << *(a1 + 32);
    v47 = ~v9;
    if (-v9 < 64)
    {
      v10 = ~(-1 << -v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & v7;
    v12 = (63 - v9) >> 6;
    v13 = a2 + 7;
    v14 = 1;
    while (1)
    {
      do
      {
        if (!v11)
        {
          v15 = v48;
          v16 = v49;
          while (1)
          {
            v17 = v16 + 1;
            if (__OFADD__(v16, 1))
            {
              break;
            }

            if (v17 >= v12)
            {

              goto LABEL_43;
            }

            v11 = *(v8 + 8 * v17);
            ++v16;
            if (v11)
            {
              v49 = v17;
              goto LABEL_13;
            }
          }

LABEL_46:
          __break(1u);
          goto LABEL_47;
        }

        v15 = v48;
LABEL_13:
        v18 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v4 = *(*(v15 + 48) + ((v49 << 9) | (8 * v18)));
        v19 = v6[5];
        v20 = static Hasher._hash(seed:_:)();
        v21 = -1 << *(v6 + 32);
        v5 = v20 & ~v21;
        v3 = v5 >> 6;
        v2 = 1 << v5;
      }

      while (((1 << v5) & v13[v5 >> 6]) == 0);
      v22 = v6[6];
      if (*(v22 + 8 * v5) == v4)
      {
        break;
      }

      while (1)
      {
        v5 = (v5 + 1) & ~v21;
        v3 = v5 >> 6;
        v2 = 1 << v5;
        if (((1 << v5) & v13[v5 >> 6]) == 0)
        {
          break;
        }

        if (*(v22 + 8 * v5) == v4)
        {
          goto LABEL_17;
        }
      }
    }

LABEL_17:
    v51 = v47;
    v52 = v49;
    v53 = v11;
    v50[0] = v48;
    v50[1] = v8;
    v4 = (63 - v21) >> 6;
    v14 = 8 * v4;

    if (v4 <= 0x80)
    {
      goto LABEL_18;
    }

LABEL_47:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v41 = swift_slowAlloc();
      memcpy(v41, v6 + 7, v14);
      v42 = sub_1001656F8(v41, v4, v6, v5, v50);

      v47 = v51;
      v49 = v52;
      v6 = v42;
      goto LABEL_43;
    }

LABEL_18:
    v44 = v4;
    v45 = &v43;
    __chkstk_darwin(v23);
    v5 = &v43 - v24;
    memcpy(&v43 - v24, v6 + 7, v14);
    v25 = v6[2];
    *(v5 + 8 * v3) &= ~v2;
    v26 = v25 - 1;
    v14 = -1;
    v4 = 1;
    v2 = v48;
LABEL_19:
    v46 = v26;
    while (v11)
    {
LABEL_27:
      v30 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v3 = *(*(v2 + 48) + ((v49 << 9) | (8 * v30)));
      v31 = v6[5];
      v32 = static Hasher._hash(seed:_:)();
      v33 = -1 << *(v6 + 32);
      v34 = v32 & ~v33;
      v35 = v34 >> 6;
      v36 = 1 << v34;
      if (((1 << v34) & v13[v34 >> 6]) != 0)
      {
        v37 = v6[6];
        if (*(v37 + 8 * v34) == v3)
        {
LABEL_20:
          v27 = *(v5 + 8 * v35);
          *(v5 + 8 * v35) = v27 & ~v36;
          if ((v27 & v36) != 0)
          {
            v26 = v46 - 1;
            if (__OFSUB__(v46, 1))
            {
              __break(1u);
            }

            if (v46 == 1)
            {

              v6 = &_swiftEmptySetSingleton;
              goto LABEL_43;
            }

            goto LABEL_19;
          }
        }

        else
        {
          v38 = ~v33;
          while (1)
          {
            v34 = (v34 + 1) & v38;
            v35 = v34 >> 6;
            v36 = 1 << v34;
            if (((1 << v34) & v13[v34 >> 6]) == 0)
            {
              break;
            }

            if (*(v37 + 8 * v34) == v3)
            {
              goto LABEL_20;
            }
          }
        }
      }
    }

    v28 = v49;
    while (1)
    {
      v29 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_46;
      }

      if (v29 >= v12)
      {
        break;
      }

      v11 = *(v8 + 8 * v29);
      ++v28;
      if (v11)
      {
        v49 = v29;
        goto LABEL_27;
      }
    }

    if (v12 <= v49 + 1)
    {
      v39 = v49 + 1;
    }

    else
    {
      v39 = v12;
    }

    v49 = v39 - 1;
    v6 = sub_100165A98(v5, v44, v46, v6);
LABEL_43:
    sub_1000BAE9C();
  }

  else
  {

    return &_swiftEmptySetSingleton;
  }

  return v6;
}

unint64_t *sub_10016515C(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (!*(a2 + 16))
  {

    return &_swiftEmptySetSingleton;
  }

  v59[0] = a1;
  v3 = *(a1 + 16);

  if (!v3)
  {
    goto LABEL_42;
  }

  v5 = 0;
  v50 = 0;
  v6 = v4 + 32;
  v7 = (v2 + 56);
  v55 = v4;
  v56 = v4 + 32;
  while (1)
  {
    v8 = (v6 + 16 * v5);
    v10 = *v8;
    v9 = v8[1];
    v53 = v5 + 1;
    v11 = *(v2 + 40);
    Hasher.init(_seed:)();

    String.hash(into:)();
    v12 = Hasher._finalize()();
    v13 = -1 << *(v2 + 32);
    v14 = v12 & ~v13;
    v15 = v14 >> 6;
    v16 = 1 << v14;
    if (((1 << v14) & v7[v14 >> 6]) != 0)
    {
      break;
    }

LABEL_6:

    v5 = v53;
    if (v53 == v3)
    {
      goto LABEL_42;
    }
  }

  v17 = (*(v2 + 48) + 16 * v14);
  if (*v17 != v10 || v17[1] != v9)
  {
    v19 = ~v13;
    while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      v14 = (v14 + 1) & v19;
      v15 = v14 >> 6;
      v16 = 1 << v14;
      if (((1 << v14) & v7[v14 >> 6]) == 0)
      {
        v6 = v56;
        goto LABEL_6;
      }

      v20 = (*(v2 + 48) + 16 * v14);
      if (*v20 == v10 && v20[1] == v9)
      {
        break;
      }
    }
  }

  v59[1] = v53;

  v22 = *(v2 + 32);
  v51 = ((1 << v22) + 63) >> 6;
  v23 = 8 * v51;
  v24 = v56;
  if ((v22 & 0x3Fu) <= 0xD)
  {
    goto LABEL_18;
  }

LABEL_46:
  v44 = v23;

  v45 = v44;
  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_18:
    v52 = &v49;
    __chkstk_darwin(v21);
    v14 = &v49 - ((v25 + 15) & 0x3FFFFFFFFFFFFFF0);
    v58 = v7;
    memcpy(v14, v7, v25);
    v57 = v2;
    v26 = *(v2 + 16);
    v27 = *(v14 + 8 * v15) & ~v16;
    v54 = v14;
    *(v14 + 8 * v15) = v27;
    v28 = v26 - 1;
    v29 = v55;
    v7 = *(v55 + 16);
    v30 = v53;
    while (1)
    {
      v53 = v28;
      if (v30 == v7)
      {
LABEL_41:
        v2 = sub_100165C84(v54, v51, v53, v57);
LABEL_42:

        return v2;
      }

      v15 = v30;
      while (1)
      {
        if (v30 < 0)
        {
          __break(1u);
LABEL_45:
          __break(1u);
          goto LABEL_46;
        }

        if (v15 >= *(v29 + 16))
        {
          goto LABEL_45;
        }

        v32 = (v24 + 16 * v15);
        v33 = *v32;
        v16 = v32[1];
        ++v15;
        v2 = v57;
        v34 = *(v57 + 40);
        Hasher.init(_seed:)();

        String.hash(into:)();
        v35 = Hasher._finalize()();
        v36 = -1 << *(v2 + 32);
        v37 = v35 & ~v36;
        v14 = v37 >> 6;
        v38 = 1 << v37;
        if (((1 << v37) & v58[v37 >> 6]) != 0)
        {
          break;
        }

LABEL_37:

LABEL_22:
        v24 = v56;
        if (v15 == v7)
        {
          goto LABEL_41;
        }
      }

      v39 = (*(v2 + 48) + 16 * v37);
      if (*v39 != v33 || v39[1] != v16)
      {
        v41 = ~v36;
        v2 = 1;
        while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          v37 = (v37 + 1) & v41;
          v14 = v37 >> 6;
          v38 = 1 << v37;
          if (((1 << v37) & v58[v37 >> 6]) == 0)
          {
            v29 = v55;
            goto LABEL_37;
          }

          v42 = (*(v57 + 48) + 16 * v37);
          if (*v42 == v33 && v42[1] == v16)
          {
            break;
          }
        }
      }

      v29 = v55;
      v31 = v54[v14];
      v54[v14] = v31 & ~v38;
      if ((v31 & v38) == 0)
      {
        goto LABEL_22;
      }

      v28 = v53 - 1;
      v24 = v56;
      if (__OFSUB__(v53, 1))
      {
        __break(1u);
      }

      v30 = v15;
      if (v53 == 1)
      {

        v2 = &_swiftEmptySetSingleton;
        goto LABEL_42;
      }
    }
  }

  v46 = swift_slowAlloc();
  memcpy(v46, v7, v45);
  v47 = v50;
  v48 = sub_1001658B4(v46, v51, v2, v14, v59);

  if (!v47)
  {

    return v48;
  }

  __break(1u);
  return result;
}

uint64_t sub_100165608(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 40);
  v5 = static Hasher._hash(seed:_:)();
  v6 = -1 << *(v3 + 32);
  v7 = v5 & ~v6;
  if (((*(v3 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  while (*(*(v3 + 48) + 8 * v7) != a1)
  {
    v7 = (v7 + 1) & v8;
    if (((*(v3 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
    {
      return 0;
    }
  }

  v10 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v1;
  v14 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100105F08();
    v12 = v14;
  }

  v13 = *(*(v12 + 48) + 8 * v7);
  sub_100165EA8(v7);
  result = v13;
  *v1 = v14;
  return result;
}

uint64_t sub_1001656F8(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v8 = result;
  v9 = *(a3 + 16);
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v10 = v9 - 1;
  v11 = a3 + 56;
  while (1)
  {
    v13 = a5[3];
    v14 = a5[4];
    if (!v14)
    {
      break;
    }

    v15 = a5[3];
LABEL_9:
    v18 = *(*(*a5 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    a5[3] = v15;
    a5[4] = (v14 - 1) & v14;
    v19 = *(a3 + 40);
    result = static Hasher._hash(seed:_:)();
    v20 = -1 << *(a3 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    v23 = 1 << v21;
    if (((1 << v21) & *(v11 + 8 * (v21 >> 6))) != 0)
    {
      v24 = *(a3 + 48);
      if (*(v24 + 8 * v21) == v18)
      {
LABEL_2:
        v12 = v8[v22];
        v8[v22] = v12 & ~v23;
        if ((v12 & v23) != 0)
        {
          if (__OFSUB__(v10--, 1))
          {
LABEL_23:
            __break(1u);
            return result;
          }

          if (!v10)
          {
            return &_swiftEmptySetSingleton;
          }
        }
      }

      else
      {
        v25 = ~v20;
        while (1)
        {
          v21 = (v21 + 1) & v25;
          v22 = v21 >> 6;
          v23 = 1 << v21;
          if (((1 << v21) & *(v11 + 8 * (v21 >> 6))) == 0)
          {
            break;
          }

          if (*(v24 + 8 * v21) == v18)
          {
            goto LABEL_2;
          }
        }
      }
    }
  }

  v16 = (a5[2] + 64) >> 6;
  v17 = a5[3];
  while (1)
  {
    v15 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
      goto LABEL_23;
    }

    if (v15 >= v16)
    {
      break;
    }

    v14 = *(a5[1] + 8 * v15);
    ++v17;
    if (v14)
    {
      goto LABEL_9;
    }
  }

  if (v16 <= v13 + 1)
  {
    v27 = v13 + 1;
  }

  else
  {
    v27 = (a5[2] + 64) >> 6;
  }

  a5[3] = v27 - 1;
  a5[4] = 0;

  return sub_100165A98(v8, a2, v10, a3);
}

unint64_t *sub_1001658B4(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v28 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v27 = v8;
    do
    {
      while (1)
      {
        v11 = a5[1];
        v12 = *(*a5 + 16);
        if (v11 == v12)
        {

          return sub_100165C84(v28, a2, v27, a3);
        }

        if (v11 >= v12)
        {
          __break(1u);
          goto LABEL_23;
        }

        v13 = *a5 + 16 * v11;
        v15 = *(v13 + 32);
        v14 = *(v13 + 40);
        a5[1] = v11 + 1;
        v16 = *(a3 + 40);
        Hasher.init(_seed:)();

        String.hash(into:)();
        v17 = Hasher._finalize()();
        v18 = -1 << *(a3 + 32);
        v19 = v17 & ~v18;
        v20 = v19 >> 6;
        v21 = 1 << v19;
        if (((1 << v19) & *(v9 + 8 * (v19 >> 6))) != 0)
        {
          break;
        }

LABEL_17:
      }

      v22 = (*(a3 + 48) + 16 * v19);
      if (*v22 != v15 || v22[1] != v14)
      {
        v24 = ~v18;
        while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          v19 = (v19 + 1) & v24;
          v20 = v19 >> 6;
          v21 = 1 << v19;
          if (((1 << v19) & *(v9 + 8 * (v19 >> 6))) == 0)
          {
            goto LABEL_17;
          }

          v25 = (*(a3 + 48) + 16 * v19);
          if (*v25 == v15 && v25[1] == v14)
          {
            break;
          }
        }
      }

      v10 = v28[v20];
      v28[v20] = v10 & ~v21;
    }

    while ((v10 & v21) == 0);
    v8 = v27 - 1;
    if (__OFSUB__(v27, 1))
    {
LABEL_23:
      __break(1u);
      return result;
    }

    if (v27 != 1)
    {
      continue;
    }

    return &_swiftEmptySetSingleton;
  }
}

uint64_t sub_100165A98(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_100004E70(&qword_100203620, &qword_1001ADE78);
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    v17 = v9[5];
    result = static Hasher._hash(seed:_:)();
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(v9[6] + 8 * v21) = v16;
    ++v9[2];
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_100165C84(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_100004E70(&qword_100203430, &qword_1001ADCE0);
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = v9[5];
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (v9[6] + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++v9[2];
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v30;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

unint64_t sub_100165EA8(unint64_t result)
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
        v12 = (v11 + 8 * v6);
        v13 = *v12;
        v14 = static Hasher._hash(seed:_:)() & v7;
        if (v2 >= v9)
        {
          if (v14 >= v9 && v2 >= v14)
          {
LABEL_16:
            v17 = (v11 + 8 * v2);
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

uint64_t sub_10016604C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

void sub_100166084(uint64_t a1)
{
  v3 = type metadata accessor for DIPError.Code();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (_isInternalBuild.getter())
  {
    sub_100032980(a1);
    if (v1)
    {
      (*(v4 + 104))(v7, enum case for DIPError.Code.internalError(_:), v3);
      swift_errorRetain();
      sub_10002688C(&_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100008E7C();
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
    }
  }

  else
  {
    defaultLogger()();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "deleteLegacySESlot requires an internal build", v15, 2u);
    }

    (*(v9 + 8))(v12, v8);
  }
}

uint64_t sub_100166340()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

double sub_100166394@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v5(&v8, *a1);
  if (!v3)
  {
    result = *&v8;
    *a2 = v8;
  }

  return result;
}

uint64_t sub_100166410(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a2;
  v4[10] = v3;
  v4[8] = a1;
  v8 = type metadata accessor for DIPError.Code();
  v4[11] = v8;
  v9 = *(v8 - 8);
  v4[12] = v9;
  v10 = *(v9 + 64) + 15;
  v4[13] = swift_task_alloc();
  v11 = swift_task_alloc();
  v4[14] = v11;
  *v11 = v4;
  v11[1] = sub_100166528;

  return sub_100166E08((v4 + 2), a1, a2, a3);
}

uint64_t sub_100166528()
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 112);
  v5 = *v1;
  v3[15] = v0;
  v6 = v2[2];
  v3[16] = v6;
  v7 = v2[3];
  v3[17] = v7;
  v8 = v2[4];
  v3[18] = v8;
  v9 = v2[5];
  v3[19] = v9;
  v10 = v2[6];
  v3[20] = v10;
  v11 = v2[7];
  v3[21] = v11;

  if (v0)
  {

    return _swift_task_switch(sub_100166AF0, 0, 0);
  }

  else
  {
    v12 = swift_task_alloc();
    v3[22] = v12;
    *v12 = v5;
    v12[1] = sub_100166774;
    v13 = v3[9];
    v14 = v3[10];
    v15 = v3[8];

    return sub_100168394(v15, v13, v6, v7, v8, v9, v10, v11);
  }
}

uint64_t sub_100166774(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *(*v4 + 176);
  v9 = *v4;
  v5[23] = a1;
  v5[24] = a2;
  v5[25] = a3;
  v5[26] = v3;

  if (v3)
  {
    v7 = sub_100166C70;
  }

  else
  {
    v7 = sub_10016688C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10016688C()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 80);
  sub_100168F08(*(v0 + 128), *(v0 + 136), *(v0 + 184), *(v0 + 192), *(v0 + 200));
  v4 = v3;
  v5 = v1;
  v7 = *(v0 + 192);
  v6 = *(v0 + 200);
  v8 = *(v0 + 184);
  v10 = *(v0 + 160);
  v9 = *(v0 + 168);
  v12 = *(v0 + 144);
  v11 = *(v0 + 152);
  v13 = *(v0 + 128);
  if (v5)
  {

    sub_10001C120(v8, v7);
    sub_10016A118(v12, v11, v10, v9);

    (*(*(v0 + 96) + 104))(*(v0 + 104), enum case for DIPError.Code.internalError(_:), *(v0 + 88));
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000E08AC(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v14 = *(v0 + 8);

    return v14();
  }

  else
  {
    v16 = *(v0 + 104);

    sub_10001C120(v8, v7);
    sub_10016A118(v12, v11, v10, v9);

    v17 = *(v0 + 8);

    return v17(v4);
  }
}

uint64_t sub_100166AF0()
{
  v1 = v0[15];
  (*(v0[12] + 104))(v0[13], enum case for DIPError.Code.internalError(_:), v0[11]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1000E08AC(&qword_100200200, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v2 = v0[1];

  return v2();
}

uint64_t sub_100166C70()
{
  v1 = v0[16];
  sub_10016A118(v0[18], v0[19], v0[20], v0[21]);

  v2 = v0[26];
  (*(v0[12] + 104))(v0[13], enum case for DIPError.Code.internalError(_:), v0[11]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1000E08AC(&qword_100200200, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v3 = v0[1];

  return v3();
}

uint64_t sub_100166E08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[24] = a4;
  v5[25] = v4;
  v5[22] = a2;
  v5[23] = a3;
  v5[21] = a1;
  v6 = type metadata accessor for DIPError.Code();
  v5[26] = v6;
  v7 = *(v6 - 8);
  v5[27] = v7;
  v8 = *(v7 + 64) + 15;
  v5[28] = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  v5[29] = v9;
  v10 = *(v9 - 8);
  v5[30] = v10;
  v11 = *(v10 + 64) + 15;
  v5[31] = swift_task_alloc();
  v5[32] = swift_task_alloc();
  v5[33] = swift_task_alloc();

  return _swift_task_switch(sub_100166F44, 0, 0);
}

uint64_t sub_100166F44()
{
  v1 = v0[24];
  if (v1 == 1)
  {
    v14 = v0[32];
    defaultLogger()();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Generating SES device encryption key", v17, 2u);
    }

    v18 = v0[32];
    v19 = v0[29];
    v20 = v0[30];
    v21 = v0[25];

    v22 = *(v20 + 8);
    v0[37] = v22;
    v22(v18, v19);
    v0[38] = *(v21 + 24);
    type metadata accessor for AppleIDVManager();

    sub_1000215BC(v0 + 5);
    v23 = sub_100009BF8();
    v0[39] = v23;
    v32 = *(v0[25] + 112);
    v33 = v23;
    v34 = swift_task_alloc();
    v0[40] = v34;
    *v34 = v0;
    v34[1] = sub_100167788;

    return sub_10002C6CC(v33);
  }

  else if (v1)
  {
    v25 = v0[27];
    v24 = v0[28];
    v26 = v0[26];
    _StringGuts.grow(_:)(38);

    v0[20] = v1;
    v27._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v27);

    (*(v25 + 104))(v24, enum case for DIPError.Code.idcsinvalidDeviceEncryptionKeyType(_:), v26);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000E08AC(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v28 = v0[32];
    v29 = v0[33];
    v30 = v0[31];
    (*(v0[27] + 104))(v0[28], enum case for DIPError.Code.internalError(_:), v0[26]);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000E08AC(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v31 = v0[1];

    return v31();
  }

  else
  {
    v2 = v0[33];
    defaultLogger()();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Generating SEP device encryption key", v5, 2u);
    }

    v6 = v0[33];
    v7 = v0[29];
    v8 = v0[30];
    v9 = v0[25];

    v10 = *(v8 + 8);
    v0[34] = v10;
    v10(v6, v7);
    v11 = *(v9 + 112);
    v12 = swift_task_alloc();
    v0[35] = v12;
    *v12 = v0;
    v12[1] = sub_1001674E8;

    return sub_1000291A8();
  }
}

uint64_t sub_1001674E8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[14] = v2;
  v4[15] = a1;
  v4[16] = v1;
  v5 = v3[35];
  v8 = *v2;
  v4[36] = v1;

  if (v1)
  {
    v6 = sub_10016802C;
  }

  else
  {
    v6 = sub_100167604;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100167604()
{
  v1 = v0[15];
  v0[42] = v0[34];
  v0[43] = &off_1001F4DB0;
  v2 = v0[25];
  v3 = v0[22];
  v4 = v0[23];
  v0[44] = v1;
  v5 = *(v2 + 120);
  v6 = swift_allocObject();
  v0[45] = v6;
  v6[2] = v2;
  v6[3] = v3;
  v6[4] = v4;
  v6[5] = v1;
  v6[6] = &off_1001F4DB0;
  v7 = *(v5 + 16);
  v8 = swift_allocObject();
  v0[46] = v8;
  *(v8 + 16) = sub_10016A240;
  *(v8 + 24) = v6;
  v9 = async function pointer to AsyncCoreDataContainer.performWrite<A>(_:)[1];

  v10 = swift_task_alloc();
  v0[47] = v10;
  v11 = sub_100004E70(&qword_100203CE0, &qword_1001AEAA0);
  *v10 = v0;
  v10[1] = sub_100167A40;

  return AsyncCoreDataContainer.performWrite<A>(_:)(v0 + 10, sub_1000DCAB0, v8, v11);
}

uint64_t sub_100167788(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[17] = v2;
  v4[18] = a1;
  v4[19] = v1;
  v5 = v3[40];
  v8 = *v2;
  v4[41] = v1;

  if (v1)
  {
    v6 = sub_1001681D4;
  }

  else
  {
    v6 = sub_1001678A4;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1001678A4()
{
  v1 = *(v0 + 304);

  sub_100005090((v0 + 40));
  v2 = *(v0 + 144);
  *(v0 + 336) = *(v0 + 296);
  *(v0 + 344) = &off_1001F4D48;
  v3 = *(v0 + 200);
  v4 = *(v0 + 176);
  v5 = *(v0 + 184);
  *(v0 + 352) = v2;
  v6 = *(v3 + 120);
  v7 = swift_allocObject();
  *(v0 + 360) = v7;
  v7[2] = v3;
  v7[3] = v4;
  v7[4] = v5;
  v7[5] = v2;
  v7[6] = &off_1001F4D48;
  v8 = *(v6 + 16);
  v9 = swift_allocObject();
  *(v0 + 368) = v9;
  *(v9 + 16) = sub_10016A240;
  *(v9 + 24) = v7;
  v10 = async function pointer to AsyncCoreDataContainer.performWrite<A>(_:)[1];

  v11 = swift_task_alloc();
  *(v0 + 376) = v11;
  v12 = sub_100004E70(&qword_100203CE0, &qword_1001AEAA0);
  *v11 = v0;
  v11[1] = sub_100167A40;

  return AsyncCoreDataContainer.performWrite<A>(_:)(v0 + 80, sub_1000DCAB0, v9, v12);
}

uint64_t sub_100167A40()
{
  v2 = *v1;
  v3 = *(*v1 + 376);
  v8 = *v1;
  *(*v1 + 384) = v0;

  if (v0)
  {
    v4 = sub_100167E68;
  }

  else
  {
    v6 = *(v2 + 360);
    v5 = *(v2 + 368);

    v4 = sub_100167B64;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100167B64()
{
  v42 = v0;
  v1 = *(v0 + 352);
  v2 = *(v0 + 248);
  v3 = *(v0 + 184);
  v39 = *(v0 + 96);
  v40 = *(v0 + 80);
  defaultLogger()();

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = *(v0 + 344);
    v6 = *(v0 + 352);
    v35 = *(v0 + 176);
    v36 = *(v0 + 184);
    v8 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *v8 = 136315650;
    v9 = *v6;
    v10 = v6[2];
    v11 = v6[3];

    v12 = sub_10010150C(v10, v11, &v41);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_10010150C(v35, v36, &v41);
    *(v8 + 22) = 2080;
    v13 = (*(v7 + 8))(v9, v7);
    if (v14 >> 60 == 15)
    {
      object = 0xE500000000000000;
      countAndFlagsBits = 0x3E6C696E3CLL;
    }

    else
    {
      v21 = v13;
      v22 = v14;
      v23 = Data.base16EncodedString()();
      object = v23._object;
      sub_10001C120(v21, v22);
      countAndFlagsBits = v23._countAndFlagsBits;
    }

    v37 = *(v0 + 336);
    v25 = *(v0 + 240);
    v24 = *(v0 + 248);
    v26 = *(v0 + 232);
    v27 = sub_10010150C(countAndFlagsBits, object, &v41);

    *(v8 + 24) = v27;
    _os_log_impl(&_mh_execute_header, v4, v5, "Generated dek %s for credential %s with public key %s", v8, 0x20u);
    swift_arrayDestroy();

    v37(v24, v26);
  }

  else
  {
    v17 = *(v0 + 336);
    v19 = *(v0 + 240);
    v18 = *(v0 + 248);
    v20 = *(v0 + 232);

    v17(v18, v20);
  }

  v29 = *(v0 + 256);
  v28 = *(v0 + 264);
  v30 = *(v0 + 248);
  v31 = *(v0 + 224);
  v32 = *(v0 + 168);
  v38 = *(v0 + 344);

  *v32 = vextq_s8(v38, v38, 8uLL);
  *(v32 + 16) = v40;
  *(v32 + 32) = v39;
  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_100167E68()
{
  v2 = v0[45];
  v1 = v0[46];
  v3 = v0[44];

  v4 = v0[48];
  v5 = v0[32];
  v6 = v0[33];
  v7 = v0[31];
  (*(v0[27] + 104))(v0[28], enum case for DIPError.Code.internalError(_:), v0[26]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1000E08AC(&qword_100200200, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v8 = v0[1];

  return v8();
}

uint64_t sub_10016802C()
{
  v1 = v0[36];
  v2 = v0[32];
  v3 = v0[33];
  v4 = v0[31];
  (*(v0[27] + 104))(v0[28], enum case for DIPError.Code.internalError(_:), v0[26]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1000E08AC(&qword_100200200, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v5 = v0[1];

  return v5();
}

uint64_t sub_1001681D4()
{
  v1 = *(v0 + 304);

  sub_100005090((v0 + 40));
  v2 = *(v0 + 328);
  v3 = *(v0 + 256);
  v4 = *(v0 + 264);
  v5 = *(v0 + 248);
  (*(*(v0 + 216) + 104))(*(v0 + 224), enum case for DIPError.Code.internalError(_:), *(v0 + 208));
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1000E08AC(&qword_100200200, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100168394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[14] = a8;
  v9[15] = v8;
  v9[12] = a6;
  v9[13] = a7;
  v9[10] = a4;
  v9[11] = a5;
  v9[8] = a2;
  v9[9] = a3;
  v9[7] = a1;
  v10 = type metadata accessor for DIPError.Code();
  v9[16] = v10;
  v11 = *(v10 - 8);
  v9[17] = v11;
  v12 = *(v11 + 64) + 15;
  v9[18] = swift_task_alloc();
  v13 = type metadata accessor for Logger();
  v9[19] = v13;
  v14 = *(v13 - 8);
  v9[20] = v14;
  v15 = *(v14 + 64) + 15;
  v9[21] = swift_task_alloc();
  v9[22] = swift_task_alloc();

  return _swift_task_switch(sub_1001684CC, 0, 0);
}

uint64_t sub_1001684CC()
{
  v27 = v0;
  v1 = v0[12];
  if (v1)
  {
    v2 = v0[14];
    v3 = v0[13];
    v4 = *(v0[15] + 112);
    sub_10016A1AC(v0[11], v0[12], v3, v2);
    sub_100009708(v3, v2);
    v5 = swift_task_alloc();
    v0[23] = v5;
    *v5 = v0;
    v5[1] = sub_100168720;
    v6 = v0[13];
    v7 = v0[14];
    v8 = v0[11];

    return sub_100028458(v8, v1, v6, v7);
  }

  else
  {
    v10 = v0[21];
    v11 = v0[8];
    defaultLogger()();

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();

    v14 = os_log_type_enabled(v12, v13);
    v16 = v0[20];
    v15 = v0[21];
    v17 = v0[19];
    if (v14)
    {
      v19 = v0[7];
      v18 = v0[8];
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v26 = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_10010150C(v19, v18, &v26);
      _os_log_impl(&_mh_execute_header, v12, v13, "Skipping ksk signature because no ksk exists for credential %s", v20, 0xCu);
      sub_100005090(v21);
    }

    (*(v16 + 8))(v15, v17);
    v23 = v0[21];
    v22 = v0[22];
    v24 = v0[18];

    v25 = v0[1];

    return v25(0, 0xF000000000000000, 0);
  }
}

uint64_t sub_100168720(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 184);
  v7 = *v2;
  v3[24] = a1;
  v3[25] = v1;

  if (v1)
  {
    v5 = sub_100168D3C;
  }

  else
  {
    sub_1000092BC(v3[13], v3[14]);
    v5 = sub_10016883C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10016883C()
{
  v49 = v0;
  v1 = v0[24];
  if (v1)
  {
    v2 = v0[25];
    v4 = v0[9];
    v3 = v0[10];
    v0[5] = &type metadata for KeySigningKeySignatureProvider;
    v0[6] = &off_1001F9920;
    v0[2] = v1;

    v5 = sub_100141D3C(v4, v3);
    if (v2)
    {
      v7 = v0[13];
      v8 = v0[14];
      v10 = v0[11];
      v9 = v0[12];

      sub_10016A118(v10, v9, v7, v8);
      sub_100157C88((v0 + 2));
      v11 = v0[21];
      v12 = v0[22];
      (*(v0[17] + 104))(v0[18], enum case for DIPError.Code.internalError(_:), v0[16]);
      swift_errorRetain();
      sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_1000E08AC(&qword_100200200, &type metadata accessor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();

      v13 = v0[1];

      return v13();
    }

    v32 = v5;
    v33 = v6;
    v34 = *(v1 + OBJC_IVAR____TtC7idcredd13CredentialKey_lock);
    v35 = swift_task_alloc();
    *(v35 + 16) = sub_10016A384;
    *(v35 + 24) = v1;
    os_unfair_lock_lock(v34 + 4);
    sub_10016A39C(v48);
    os_unfair_lock_unlock(v34 + 4);
    v41 = v0[13];
    v40 = v0[14];
    v43 = v0[11];
    v42 = v0[12];
    v44 = v48[0];

    sub_10016A118(v43, v42, v41, v40);

    sub_100157C88((v0 + 2));
  }

  else
  {
    v15 = v0[22];
    v17 = v0[13];
    v16 = v0[14];
    v19 = v0[11];
    v18 = v0[12];
    v20 = v0[8];
    defaultLogger()();
    sub_10016A1AC(v19, v18, v17, v16);

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    sub_10016A118(v19, v18, v17, v16);
    v23 = os_log_type_enabled(v21, v22);
    v47 = v0[22];
    v24 = v0[19];
    v25 = v0[20];
    v27 = v0[11];
    v26 = v0[12];
    if (v23)
    {
      v29 = v0[7];
      v28 = v0[8];
      v45 = v0[13];
      v46 = v0[14];
      v30 = swift_slowAlloc();
      v48[0] = swift_slowAlloc();
      *v30 = 136315394;
      *(v30 + 4) = sub_10010150C(v29, v28, v48);
      *(v30 + 12) = 2080;

      v31 = sub_10010150C(v27, v26, v48);

      *(v30 + 14) = v31;
      _os_log_impl(&_mh_execute_header, v21, v22, "Credential %s referenced ksk %s but no such key exists", v30, 0x16u);
      swift_arrayDestroy();

      sub_10016A118(v27, v26, v45, v46);
      (*(v25 + 8))(v47, v24);
    }

    else
    {
      sub_10016A118(v0[11], v0[12], v0[13], v0[14]);

      (*(v25 + 8))(v47, v24);
    }

    v32 = 0;
    v44 = 0;
    v33 = 0xF000000000000000;
  }

  v37 = v0[21];
  v36 = v0[22];
  v38 = v0[18];

  v39 = v0[1];

  return v39(v32, v33, v44);
}

uint64_t sub_100168D3C()
{
  v1 = v0[13];
  v2 = v0[14];
  v4 = v0[11];
  v3 = v0[12];
  sub_1000092BC(v1, v2);
  sub_10016A118(v4, v3, v1, v2);
  v5 = v0[25];
  v6 = v0[21];
  v7 = v0[22];
  (*(v0[17] + 104))(v0[18], enum case for DIPError.Code.internalError(_:), v0[16]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1000E08AC(&qword_100200200, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v8 = v0[1];

  return v8();
}

void sub_100168F08(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v87 = a4;
  v79 = a5;
  v86 = a3;
  v7 = type metadata accessor for DIPError.Code();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Logger();
  v84 = *(v12 - 8);
  v85 = v12;
  v13 = *(v84 + 64);
  __chkstk_darwin(v12);
  v15 = &v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100004E70(&qword_100201070, &unk_1001AD2D0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v73 - v18;
  v90 = type metadata accessor for COSEKey();
  v92 = *(v90 - 8);
  v20 = *(v92 + 64);
  __chkstk_darwin(v90);
  v89 = &v73 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *a1;
  v23 = (*(a2 + 8))(*a1, a2);
  if (v24 >> 60 == 15)
  {
    (*(v8 + 104))(v11, enum case for DIPError.Code.idcsInvalidPublicKey(_:), v7);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000E08AC(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v25 = v8;
LABEL_8:
    (*(v25 + 104))(v11, enum case for DIPError.Code.internalError(_:), v7);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000E08AC(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    return;
  }

  v77 = v11;
  v82 = v8;
  v83 = v7;
  v80 = v23;
  v81 = v24;
  v26 = (*(a2 + 16))(v22, a2);
  if (v27 >> 60 == 15)
  {
    v28 = v82;
    v7 = v83;
    v29 = v77;
    (*(v82 + 104))(v77, enum case for DIPError.Code.idcsInvalidPublicKey(_:), v83);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000E08AC(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    v25 = v28;
    v11 = v29;
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
LABEL_7:
    sub_10001C120(v80, v81);
    goto LABEL_8;
  }

  v75 = v26;
  v76 = v27;
  (*(a2 + 24))(v22, a2);
  v30 = v92;
  v31 = v90;
  if ((*(v92 + 48))(v19, 1, v90) == 1)
  {
    sub_100026564(v19);
    v32 = v82;
    v7 = v83;
    v33 = v77;
    (*(v82 + 104))(v77, enum case for DIPError.Code.idcsCOSEKeyCreationFailed(_:), v83);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000E08AC(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    v25 = v32;
    v11 = v33;
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_10001C120(v75, v76);
    goto LABEL_7;
  }

  v34 = v89;
  (*(v30 + 32))(v89, v19, v31);
  v35 = type metadata accessor for CBOREncoder();
  v36 = *(v35 + 48);
  v37 = *(v35 + 52);
  swift_allocObject();
  CBOREncoder.init()();
  sub_1000E08AC(&qword_100202BE8, &type metadata accessor for COSEKey);
  v38 = v88;
  v39 = dispatch thunk of CBOREncoder.encode<A>(_:)();
  v25 = v82;
  v7 = v83;
  if (v38)
  {
    (*(v30 + 8))(v34, v31);

    sub_10001C120(v80, v81);
    sub_10001C120(v75, v76);
    v11 = v77;
    goto LABEL_8;
  }

  v41 = v39;
  v42 = v40;

  v43 = defaultLogger()();
  __chkstk_darwin(v43);
  v74 = v41;
  v88 = v42;
  Logger.sensitive(_:)();
  v44 = v85;
  v45 = *(v84 + 8);
  v45(v15, v85);
  v46 = defaultLogger()();
  __chkstk_darwin(v46);
  Logger.sensitive(_:)();
  v45(v15, v44);
  Class = object_getClass(a1);
  if (Class == _TtC7idcredd22SEPDeviceEncryptionKey)
  {
    v51 = *(a1 + OBJC_IVAR____TtC7idcredd13CredentialKey_lock);
    __chkstk_darwin(Class);
    os_unfair_lock_lock(v51 + 4);
    sub_10016A190(v91);
    os_unfair_lock_unlock(v51 + 4);
    v52 = a1[2];
    v53 = a1[3];
    v54 = String._bridgeToObjectiveC()();
    v55.super.isa = Data._bridgeToObjectiveC()().super.isa;
    v56.super.isa = Data._bridgeToObjectiveC()().super.isa;
    v57.super.isa = Data._bridgeToObjectiveC()().super.isa;
    v58.super.isa = Array._bridgeToObjectiveC()().super.isa;

    if (v87 >> 60 == 15)
    {
      isa = 0;
    }

    else
    {
      isa = Data._bridgeToObjectiveC()().super.isa;
    }

    if (v79)
    {
      v61.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v61.super.isa = 0;
    }

    [objc_allocWithZone(DCCredentialCryptoKey) initWithIdentifier:v54 publicKey:v55.super.isa publicKeyIdentifier:v56.super.isa publicKeyCOSEKey:v57.super.isa keyType:0 keyUsage:1 attestation:v58.super.isa keyAuthorization:isa kskAttestation:v61.super.isa];

    sub_1000092BC(v74, v88);
    sub_10001C120(v75, v76);

    sub_10001C120(v80, v81);
  }

  else
  {
    if (Class != _TtC7idcredd22SESDeviceEncryptionKey)
    {
      v91[0] = 0;
      v91[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(44);
      v48._countAndFlagsBits = 0xD00000000000002ALL;
      v48._object = 0x80000001001BC720;
      String.append(_:)(v48);
      type metadata accessor for CredentialKeyType();
      _print_unlocked<A, B>(_:_:)();
      v49 = v82;
      v7 = v83;
      v50 = v77;
      (*(v82 + 104))(v77, enum case for DIPError.Code.idcsinvalidDeviceEncryptionKeyType(_:), v83);
      sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_1000E08AC(&qword_100200200, &type metadata accessor for DIPError);
      swift_allocError();
      v25 = v49;
      v11 = v50;
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      sub_1000092BC(v74, v88);
      sub_10001C120(v75, v76);
      sub_10001C120(v80, v81);
      (*(v92 + 8))(v89, v90);
      goto LABEL_8;
    }

    v60 = *(v78 + 112);
    v62 = sub_10002C9E0(a1);
    v64 = v63;
    v65 = a1[2];
    v66 = a1[3];
    v67 = String._bridgeToObjectiveC()();
    v68.super.isa = Data._bridgeToObjectiveC()().super.isa;
    v69.super.isa = Data._bridgeToObjectiveC()().super.isa;
    v54 = Data._bridgeToObjectiveC()().super.isa;
    v84 = v64;
    v85 = v62;
    v70.super.isa = Data._bridgeToObjectiveC()().super.isa;
    if (v87 >> 60 == 15)
    {
      v71 = 0;
    }

    else
    {
      v71 = Data._bridgeToObjectiveC()().super.isa;
    }

    if (v79)
    {
      v72.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v72.super.isa = 0;
    }

    [objc_allocWithZone(DCCredentialCryptoKey) initWithIdentifier:v67 publicKey:v68.super.isa publicKeyIdentifier:v69.super.isa publicKeyCOSEKey:v54 keyType:2 keyUsage:1 casdAttestation:v70.super.isa keyAuthorization:v71 kskAttestation:v72.super.isa];
    sub_1000092BC(v74, v88);
    sub_10001C120(v75, v76);
    sub_10001C120(v80, v81);

    sub_1000092BC(v85, v84);
  }

  (*(v92 + 8))(v89, v90);
}

void sub_100169D64(uint64_t a1@<X0>, uint64_t a2@<X2>, void *a3@<X3>, void *a4@<X4>, uint64_t a5@<X8>)
{
  v9 = sub_10016A520(a2, a3);
  if (v5)
  {
    return;
  }

  v10 = v9;
  type metadata accessor for StoredCryptoKey();
  v11 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext:*(a1 + 16)];
  Class = object_getClass(a4);
  if (Class != _TtC7idcredd22SEPDeviceEncryptionKey || a4 == 0)
  {
    if (Class == _TtC7idcredd22SESDeviceEncryptionKey && a4)
    {
      sub_10005F7D8(a4);
    }
  }

  else
  {
    sub_10005F0F8(a4);
  }

  [v10 addCryptoKeysObject:v11];
  sub_100050240();
  sub_100059DE4();
  if (v14 >> 62)
  {
    v26 = v14;
    v27 = _CocoaArrayWrapper.endIndex.getter();
    v14 = v26;
    if (v27)
    {
      goto LABEL_14;
    }

LABEL_23:

LABEL_24:

    *a5 = 0u;
    *(a5 + 16) = 0u;
    return;
  }

  if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_23;
  }

LABEL_14:
  if ((v14 & 0xC000000000000001) != 0)
  {
    v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_17:
    v16 = v15;

    v17 = [v16 identifier];
    if (v17)
    {
      v18 = v17;
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;

      v22 = [v16 publicKeyIdentifier];
      if (v22)
      {
        v23 = v22;
        v24 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v28 = v25;

        *a5 = v19;
        *(a5 + 8) = v21;
        *(a5 + 16) = v24;
        *(a5 + 24) = v28;
        return;
      }

      v10 = v11;
      v11 = v16;
    }

    else
    {
    }

    goto LABEL_24;
  }

  if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v15 = *(v14 + 32);
    goto LABEL_17;
  }

  __break(1u);
}

unint64_t sub_100169FD4()
{
  _StringGuts.grow(_:)(44);

  v0 = Data.base16EncodedString()();
  String.append(_:)(v0);

  return 0xD00000000000002ALL;
}

void sub_10016A118(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2)
  {

    sub_1000092BC(a3, a4);
  }
}

unint64_t sub_10016A164()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_100169FD4();
}

void sub_10016A1AC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2)
  {

    sub_100009708(a3, a4);
  }
}

uint64_t sub_10016A1F8()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  return _swift_deallocObject(v0, 56, 7);
}

void sub_10016A240(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 48);
  sub_100169D64(a1, *(v2 + 24), *(v2 + 32), *(v2 + 40), a2);
}

uint64_t sub_10016A264()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10016A2A8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 3 && *(a1 + 32))
  {
    return (*a1 + 3);
  }

  v3 = ((2 * ((*(a1 + 24) & 0x1000000000000000) != 0)) | ((*(a1 + 24) >> 60) >> 1) & 1) ^ 3;
  if (v3 >= 2)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_10016A2FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 3;
    *(result + 8) = 0;
    if (a3 >= 3)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 3)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = ((2 * a2) & 2 | 1u) << 60;
    }
  }

  return result;
}

uint64_t sub_10016A3B4(uint64_t a1)
{
  v2 = v1;
  if (_isInternalBuild.getter() & 1) != 0 && (sub_1000A0DEC(42, 0xE100000000000000, *(v2 + 16)))
  {
    return 1;
  }

  v5 = *(a1 + 16);
  if (!v5)
  {
    return 0;
  }

  v6 = 0;
  do
  {
    v7 = *(v2 + 16);
    v8 = *(v7 + 16);
    v4 = v8 != 0;
    if (!v8)
    {
      break;
    }

    v9 = (a1 + 32 + 16 * v6);
    v11 = *v9;
    v10 = v9[1];
    v12 = *(v7 + 40);
    Hasher.init(_seed:)();

    String.hash(into:)();
    v13 = Hasher._finalize()();
    v14 = -1 << *(v7 + 32);
    v15 = v13 & ~v14;
    if (((*(v7 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
LABEL_16:

      return 0;
    }

    ++v6;
    v16 = ~v14;
    while (1)
    {
      v17 = (*(v7 + 48) + 16 * v15);
      v18 = *v17 == v11 && v17[1] == v10;
      if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v15 = (v15 + 1) & v16;
      if (((*(v7 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        goto LABEL_16;
      }
    }
  }

  while (v6 != v5);
  return v4;
}

void *sub_10016A520(uint64_t a1, void *a2)
{
  v4 = v3;
  v5 = v2;
  v8 = type metadata accessor for DIPError.Code();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10005218C(a1, a2);
  if (!v3)
  {
    v4 = v13;
    if (!v13)
    {
      v30 = 0;
      v31 = 0xE000000000000000;
      _StringGuts.grow(_:)(27);

      v30 = 0xD000000000000019;
      v31 = 0x80000001001BC870;
      v21._countAndFlagsBits = a1;
      v21._object = a2;
      String.append(_:)(v21);
      v4 = v31;
      (*(v9 + 104))(v12, enum case for DIPError.Code.idcsUnknownCredential(_:), v8);
      sub_10002688C(&_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10016C220(&qword_100200200, &type metadata accessor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      return v4;
    }

    v15 = &off_1001FE000;
    v16 = [v13 partition];
    if (v16)
    {
      v17 = v16;
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;

      if (_isInternalBuild.getter() & 1) != 0 && (sub_1000A0DEC(42, 0xE100000000000000, *(v5 + 16)))
      {

        return v4;
      }

      v22 = sub_1000A0DEC(v18, v20, *(v5 + 16));

      v15 = &off_1001FE000;
      if (v22)
      {
        return v4;
      }
    }

    v30 = 0;
    v31 = 0xE000000000000000;
    _StringGuts.grow(_:)(47);

    v30 = 0x6F69746974726170;
    v31 = 0xEA0000000000206ELL;
    v23 = [v4 v15[358]];
    if (v23)
    {
      v24 = v23;
      v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v27 = v26;
    }

    else
    {
      v27 = 0xE500000000000000;
      v25 = 0x3E6C696E3CLL;
    }

    v28._countAndFlagsBits = v25;
    v28._object = v27;
    String.append(_:)(v28);

    v29._countAndFlagsBits = 0xD000000000000023;
    v29._object = 0x80000001001BC280;
    String.append(_:)(v29);
    (*(v9 + 104))(v12, enum case for DIPError.Code.idcsUnauthorizedPartition(_:), v8);
    sub_10002688C(&_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10016C220(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  return v4;
}

uint64_t sub_10016A994(Swift::UInt a1, uint64_t a2)
{
  v4 = sub_10010D538(&off_1001F4320);
  sub_100004E70(&qword_100203CE8, &unk_1001AEC20);
  swift_arrayDestroy();
  if (v4[2] && (v5 = sub_100101BD4(a1), (v6 & 1) != 0))
  {
    v7 = *(v4[7] + 8 * v5);

    v8 = *(v7 + 16);
    v9 = 32;
    do
    {
      v10 = v8-- != 0;
      v11 = v10;
      if (!v10)
      {
        break;
      }

      v12 = *(v7 + v9);
      v9 += 8;
    }

    while (v12 != a2);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

uint64_t sub_10016AA60(void *a1)
{
  v2 = type metadata accessor for DIPError.Code();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 state];
  if (result < 0)
  {
    __break(1u);
  }

  else if (result != 2)
  {
    (*(v3 + 104))(v6, enum case for DIPError.Code.idcsIncorrectCredentialState(_:), v2);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10016C220(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_10016AC34(uint64_t a1, unint64_t a2, void *a3)
{
  v79 = a3;
  v4 = type metadata accessor for DIPError.Code();
  v73 = *(v4 - 8);
  v74 = v4;
  v5 = *(v73 + 64);
  __chkstk_darwin(v4);
  v75 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100004E70(&qword_1002024A8, &unk_1001ACFA0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v72 - v9;
  v11 = type metadata accessor for CredentialKeyUsage();
  v78 = *(v11 - 8);
  v12 = *(v78 + 64);
  v13 = __chkstk_darwin(v11);
  v15 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v77 = &v72 - v16;
  v80 = type metadata accessor for Logger();
  v85 = *(v80 - 8);
  v17 = *(v85 + 64);
  v18 = __chkstk_darwin(v80);
  v20 = &v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v18);
  v72 = &v72 - v22;
  v23 = __chkstk_darwin(v21);
  v76 = &v72 - v24;
  v25 = __chkstk_darwin(v23);
  v27 = &v72 - v26;
  __chkstk_darwin(v25);
  v29 = &v72 - v28;
  v30 = [objc_opt_self() standardUserDefaults];
  v31._countAndFlagsBits = 0xD00000000000001ELL;
  v31._object = 0x80000001001BBF60;
  v32 = NSUserDefaults.internalBool(forKey:)(v31);

  if (v32)
  {
    defaultLogger()();
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "Treating payload as accessible due to internal defaults setting", v35, 2u);
    }

    (*(v85 + 8))(v29, v80);
LABEL_14:
    v51 = 1;
    return v51 & 1;
  }

  if ((sub_1000F536C(a2) & 1) == 0)
  {
    defaultLogger()();
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v83 = v45;
      *v44 = 136315138;
      v46 = DCCredentialPayloadFormatToString();
      v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v49 = v48;

      v50 = sub_10010150C(v47, v49, &v83);

      *(v44 + 4) = v50;
      _os_log_impl(&_mh_execute_header, v42, v43, "Payload format %s does not require decryption, can proceed with processing", v44, 0xCu);
      sub_100005090(v45);
    }

    (*(v85 + 8))(v27, v80);
    goto LABEL_14;
  }

  if (!v79)
  {
    defaultLogger()();
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&_mh_execute_header, v53, v54, "Decryption key required but not available, can't proceed with processing", v55, 2u);
    }

    (*(v85 + 8))(v20, v80);
    v83 = 0;
    v84 = 0xE000000000000000;
    _StringGuts.grow(_:)(22);

    v83 = 0xD000000000000014;
    v84 = 0x80000001001BC950;
    v56 = DCCredentialPayloadFormatToString();
    v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v59 = v58;

    v60._countAndFlagsBits = v57;
    v60._object = v59;
    String.append(_:)(v60);

    (*(v73 + 104))(v75, enum case for DIPError.Code.idcsMissingDeviceEncryptionKey(_:), v74);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10016C220(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    return v51 & 1;
  }

  v36 = v79;
  v37 = [v36 usage];
  v39 = v77;
  v38 = v78;
  if (!v37)
  {
    goto LABEL_10;
  }

  v40 = v37;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  CredentialKeyUsage.init(rawValue:)();
  if ((*(v38 + 48))(v10, 1, v11) == 1)
  {
    sub_10016B620(v10);
LABEL_10:
    v41 = *(v38 + 104);
    v41(v39, enum case for CredentialKeyUsage.invalid(_:), v11);
    goto LABEL_20;
  }

  (*(v38 + 32))(v39, v10, v11);
  v41 = *(v38 + 104);
LABEL_20:
  v41(v15, enum case for CredentialKeyUsage.deviceEncryptionAuthRequired(_:), v11);
  sub_10016C220(&qword_1002024B0, &type metadata accessor for CredentialKeyUsage);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v83 == v81 && v84 == v82)
  {
    v61 = *(v38 + 8);
    v61(v15, v11);
    v61(v39, v11);
  }

  else
  {
    v62 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v63 = *(v38 + 8);
    v63(v15, v11);
    v63(v39, v11);

    if ((v62 & 1) == 0)
    {
      v68 = v72;
      defaultLogger()();
      v69 = Logger.logObject.getter();
      v70 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        *v71 = 0;
        _os_log_impl(&_mh_execute_header, v69, v70, "Credential decryption key does not require auth, can proceed with processing", v71, 2u);
      }

      (*(v85 + 8))(v68, v80);
      goto LABEL_14;
    }
  }

  v64 = v76;
  defaultLogger()();
  v65 = Logger.logObject.getter();
  v66 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    *v67 = 0;
    _os_log_impl(&_mh_execute_header, v65, v66, "Credential decryption key requires auth, can't proceed with processing", v67, 2u);
  }

  (*(v85 + 8))(v64, v80);
  v51 = 0;
  return v51 & 1;
}

uint64_t sub_10016B620(uint64_t a1)
{
  v2 = sub_100004E70(&qword_1002024A8, &unk_1001ACFA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10016B688(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v100 = type metadata accessor for Logger();
  v89 = *(v100 - 8);
  v5 = *(v89 + 64);
  v6 = __chkstk_darwin(v100);
  v96 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v102 = &v82 - v9;
  __chkstk_darwin(v8);
  v87 = &v82 - v10;
  v11 = type metadata accessor for SHA256();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for SHA256Digest();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v82 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_10005947C();
  sub_10016C220(&qword_100200608, &type metadata accessor for SHA256);
  dispatch thunk of HashFunction.init()();
  sub_100009708(a2, a3);
  sub_1000D8FBC(a2, a3);
  v88 = 0;
  sub_1000092BC(a2, a3);
  dispatch thunk of HashFunction.finalize()();
  (*(v12 + 8))(v15, v11);
  sub_10016C220(&qword_100200610, &type metadata accessor for SHA256Digest);
  v21 = Digest.data.getter();
  v23 = v22;
  v24 = v20;
  v25 = v101;
  (*(v17 + 8))(v24, v16);
  if (v25 >> 62)
  {
LABEL_84:
    v27 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v27 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v28 = v96;
  v29 = v102;
  if (!v27)
  {
LABEL_66:

    defaultLogger()();
    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      *v68 = 0;
      _os_log_impl(&_mh_execute_header, v66, v67, "doesPayloadDataMatchIngestionHash -> the new payload hash does not match any of stored payload hash.", v68, 2u);

      sub_1000092BC(v21, v23);
    }

    else
    {
      sub_1000092BC(v21, v23);
    }

    (*(v89 + 8))(v28, v100);
    return;
  }

  v30 = 0;
  v99 = v25 & 0xC000000000000001;
  v91 = v25 & 0xFFFFFFFFFFFFFF8;
  if (v21)
  {
    v31 = 0;
  }

  else
  {
    v31 = v23 == 0xC000000000000000;
  }

  v32 = !v31;
  v86 = v32;
  v90 = v23 >> 62;
  v33 = __OFSUB__(HIDWORD(v21), v21);
  v84 = v33;
  v83 = HIDWORD(v21) - v21;
  v85 = BYTE6(v23);
  v34 = (v89 + 8);
  v98 = v23 >> 60;
  *&v26 = 136315394;
  v92 = v26;
  v94 = v23;
  v95 = v21;
  v97 = v27;
  v93 = (v89 + 8);
  while (1)
  {
    if (v99)
    {
      v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v36 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        goto LABEL_82;
      }
    }

    else
    {
      if (v30 >= *(v91 + 16))
      {
        goto LABEL_83;
      }

      v35 = v25[v30 + 4];
      v36 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
        goto LABEL_84;
      }
    }

    v105 = v35;
    v37 = [v35 ingestionHash];
    v104 = v36;
    if (!v37)
    {
      v39 = 0;
      v41 = 0xF000000000000000;
      goto LABEL_26;
    }

    v38 = v37;
    v39 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v41 = v40;

    if (v41 >> 60 == 15)
    {
      v29 = v102;
LABEL_26:
      if (v98 > 0xE)
      {
        sub_100009708(v21, v23);
        sub_100032EBC(v39, v41);

        sub_10001C120(v39, v41);
        v69 = 1;
        v70 = v87;
        goto LABEL_76;
      }

      v103 = 1;
      goto LABEL_28;
    }

    v29 = v102;
    if (v98 > 0xE)
    {
      v103 = 0;
LABEL_28:
      sub_100009708(v21, v23);
      sub_100032EBC(v39, v41);
      sub_10001C120(v39, v41);
      sub_10001C120(v21, v23);
      goto LABEL_29;
    }

    v53 = v41 >> 62;
    if (v41 >> 62 != 3)
    {
      if (v53)
      {
        if (v53 == 1)
        {
          LODWORD(v57) = HIDWORD(v39) - v39;
          if (__OFSUB__(HIDWORD(v39), v39))
          {
            goto LABEL_86;
          }

          v57 = v57;
        }

        else
        {
          v59 = *(v39 + 16);
          v58 = *(v39 + 24);
          v60 = __OFSUB__(v58, v59);
          v57 = v58 - v59;
          if (v60)
          {
            goto LABEL_87;
          }
        }
      }

      else
      {
        v57 = BYTE6(v41);
      }

      goto LABEL_54;
    }

    v54 = !v39 && v41 == 0xC000000000000000;
    v55 = v54 && v90 >= 3;
    v56 = !v55;
    if (((v56 | v86) & 1) == 0)
    {
      break;
    }

    v57 = 0;
LABEL_54:
    if (v90 > 1)
    {
      if (v90 != 2)
      {
        if (!v57)
        {
LABEL_72:
          sub_100009708(v21, v23);
          sub_100032EBC(v39, v41);
          sub_10001C120(v21, v23);
          goto LABEL_74;
        }

LABEL_65:
        sub_100009708(v21, v23);
        sub_100032EBC(v39, v41);
        sub_10001C120(v21, v23);
        sub_10001C120(v39, v41);
        v103 = 0;
        goto LABEL_29;
      }

      v63 = *(v21 + 16);
      v62 = *(v21 + 24);
      v60 = __OFSUB__(v62, v63);
      v61 = v62 - v63;
      if (v60)
      {
        goto LABEL_85;
      }
    }

    else
    {
      v61 = v85;
      if (v90)
      {
        v61 = v83;
        if (v84)
        {
          __break(1u);
LABEL_85:
          __break(1u);
LABEL_86:
          __break(1u);
LABEL_87:
          __break(1u);
          return;
        }
      }
    }

    if (v57 != v61)
    {
      goto LABEL_65;
    }

    if (v57 < 1)
    {
      goto LABEL_72;
    }

    sub_100009708(v21, v23);
    sub_100009708(v21, v23);
    sub_100032EBC(v39, v41);
    sub_100032EBC(v21, v23);
    v64 = v88;
    v65 = sub_100100288(v39, v41, v21, v23);
    v88 = v64;
    sub_10001C120(v21, v23);
    sub_1000092BC(v21, v23);
    sub_10001C120(v39, v41);
    if (v65)
    {
      goto LABEL_75;
    }

    v103 = 0;
    v29 = v102;
LABEL_29:
    defaultLogger()();
    sub_100009708(v21, v23);
    sub_100032EBC(v39, v41);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.debug.getter();
    sub_1000092BC(v21, v23);
    sub_10001C120(v39, v41);
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v108[0] = swift_slowAlloc();
      *v44 = v92;
      v45 = Data.base16EncodedString()();
      v46 = sub_10010150C(v45._countAndFlagsBits, v45._object, v108);

      *(v44 + 4) = v46;
      *(v44 + 12) = 2080;
      if (v103)
      {
        countAndFlagsBits = 0;
        object = 0;
      }

      else
      {
        v49 = Data.base16EncodedString()();
        object = v49._object;
        countAndFlagsBits = v49._countAndFlagsBits;
      }

      v106 = countAndFlagsBits;
      v107 = object;
      sub_100004E70(&qword_1002014B0, &unk_1001ACFE0);
      v50 = String.init<A>(describing:)();
      v52 = sub_10010150C(v50, v51, v108);

      *(v44 + 14) = v52;
      _os_log_impl(&_mh_execute_header, v42, v43, "doesPayloadDataMatchIngestionHash -> new payload hash %s does not match stored payload hash %s", v44, 0x16u);
      swift_arrayDestroy();

      sub_10001C120(v39, v41);
      v34 = v93;
      v29 = v102;
      (*v93)(v102, v100);
      v23 = v94;
      v21 = v95;
      v28 = v96;
    }

    else
    {

      sub_10001C120(v39, v41);
      (*v34)(v29, v100);
    }

    ++v30;
    v25 = v101;
    if (v104 == v97)
    {
      goto LABEL_66;
    }
  }

  sub_100009708(0, 0xC000000000000000);
  sub_100032EBC(0, 0xC000000000000000);
  sub_10001C120(0, 0xC000000000000000);
  v39 = 0;
LABEL_74:
  sub_10001C120(v39, v41);
LABEL_75:
  v70 = v87;

  v69 = 0;
LABEL_76:
  defaultLogger()();
  sub_100032EBC(v39, v41);
  v71 = Logger.logObject.getter();
  v72 = static os_log_type_t.debug.getter();
  sub_10001C120(v39, v41);
  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v108[0] = v74;
    *v73 = 136315138;
    if (v69)
    {
      v75 = v34;
      v76 = 0;
      v77 = 0;
    }

    else
    {
      v75 = v34;
      v78 = Data.base16EncodedString()();
      v77 = v78._object;
      v76 = v78._countAndFlagsBits;
    }

    v106 = v76;
    v107 = v77;
    sub_100004E70(&qword_1002014B0, &unk_1001ACFE0);
    v79 = String.init<A>(describing:)();
    v81 = sub_10010150C(v79, v80, v108);

    *(v73 + 4) = v81;
    _os_log_impl(&_mh_execute_header, v71, v72, "doesPayloadDataMatchIngestionHash -> new payload hash matches stored payload hash %s", v73, 0xCu);
    sub_100005090(v74);

    sub_10001C120(v39, v41);
    sub_1000092BC(v95, v23);
    (*v75)(v87, v100);
  }

  else
  {
    sub_1000092BC(v95, v23);

    sub_10001C120(v39, v41);
    (*v34)(v70, v100);
  }
}

uint64_t sub_10016C220(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10016C268(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v6 = type metadata accessor for DIPError.Code();
  v3[5] = v6;
  v7 = *(v6 - 8);
  v3[6] = v7;
  v8 = *(v7 + 64) + 15;
  v3[7] = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  v3[8] = v9;
  v10 = *(v9 - 8);
  v3[9] = v10;
  v11 = *(v10 + 64) + 15;
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v12 = swift_task_alloc();
  v3[13] = v12;
  *v12 = v3;
  v12[1] = sub_10016C3E4;

  return sub_10016E664(a1, a2);
}

uint64_t sub_10016C3E4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 104);
  v7 = *v2;
  *(v3 + 112) = a1;
  *(v3 + 120) = v1;

  if (v1)
  {
    v5 = sub_10016D4E8;
  }

  else
  {
    v5 = sub_10016C4F8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10016C4F8()
{
  v40 = v0;
  v1 = v0[14];
  v2 = v0[3];
  if (v1)
  {
    v3 = v0[12];
    defaultLogger()();

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();

    v6 = os_log_type_enabled(v4, v5);
    v38 = v0[12];
    v8 = v0[8];
    v7 = v0[9];
    if (v6)
    {
      v10 = v0[2];
      v9 = v0[3];
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v39[0] = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_10010150C(v10, v9, v39);
      _os_log_impl(&_mh_execute_header, v4, v5, "Credential %s already has a ksk", v11, 0xCu);
      sub_100005090(v12);
    }

    (*(v7 + 8))(v38, v8);
    v13 = v0[15];
    sub_10019E83C(v1);
    v15 = v14;

    v16 = v0[11];
    v17 = v0[12];
    v18 = v0[10];
    v19 = v0[7];
    if (v13)
    {
      (*(v0[6] + 104))(v0[7], enum case for DIPError.Code.internalError(_:), v0[5]);
      swift_errorRetain();
      sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100170960(&qword_100200200, &type metadata accessor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();

      v20 = v0[1];

      return v20();
    }

    else
    {
      v36 = v0[12];

      v37 = v0[1];

      return v37(v15);
    }
  }

  else
  {
    v22 = v0[11];
    defaultLogger()();

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();

    v25 = os_log_type_enabled(v23, v24);
    v26 = v0[11];
    v27 = v0[8];
    v28 = v0[9];
    if (v25)
    {
      v30 = v0[2];
      v29 = v0[3];
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v39[0] = v32;
      *v31 = 136315138;
      *(v31 + 4) = sub_10010150C(v30, v29, v39);
      _os_log_impl(&_mh_execute_header, v23, v24, "Generating new ksk for credential %s", v31, 0xCu);
      sub_100005090(v32);
    }

    v33 = *(v28 + 8);
    v33(v26, v27);
    v0[16] = v33;
    v34 = *(v0[4] + 112);
    v35 = swift_task_alloc();
    v0[17] = v35;
    *v35 = v0;
    v35[1] = sub_10016C99C;

    return sub_100027B44();
  }
}

uint64_t sub_10016C99C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 136);
  v6 = *v2;
  v4[18] = a1;
  v4[19] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_10016D690, 0, 0);
  }

  else
  {
    v7 = swift_task_alloc();
    v4[20] = v7;
    *v7 = v6;
    v7[1] = sub_10016CB24;
    v8 = v4[3];
    v9 = v4[4];
    v10 = v4[2];

    return sub_10016F2EC(a1, v10, v8);
  }
}

uint64_t sub_10016CB24(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 160);
  v6 = *v2;
  *(*v2 + 168) = v1;

  if (v1)
  {
    v7 = sub_10016D838;
  }

  else
  {
    *(v4 + 200) = a1 & 1;
    v7 = sub_10016CC50;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10016CC50()
{
  if (*(v0 + 200) == 1)
  {
    v1 = *(v0 + 168);
    sub_10019E83C(*(v0 + 144));
    v3 = v2;

    v4 = *(v0 + 88);
    v5 = *(v0 + 96);
    v6 = *(v0 + 80);
    v7 = *(v0 + 56);
    if (v1)
    {
      (*(*(v0 + 48) + 104))(*(v0 + 56), enum case for DIPError.Code.internalError(_:), *(v0 + 40));
      swift_errorRetain();
      sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100170960(&qword_100200200, &type metadata accessor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();

      v8 = *(v0 + 8);

      return v8();
    }

    else
    {
      v14 = *(v0 + 96);

      v15 = *(v0 + 8);

      return v15(v3);
    }
  }

  else
  {
    v10 = swift_task_alloc();
    *(v0 + 176) = v10;
    *v10 = v0;
    v10[1] = sub_10016CF0C;
    v11 = *(v0 + 24);
    v12 = *(v0 + 32);
    v13 = *(v0 + 16);

    return sub_10016E664(v13, v11);
  }
}

uint64_t sub_10016CF0C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 176);
  v7 = *v2;
  *(v3 + 184) = a1;
  *(v3 + 192) = v1;

  if (v1)
  {
    v5 = sub_10016D9E8;
  }

  else
  {
    v5 = sub_10016D020;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10016D020()
{
  v39 = v0;
  v1 = v0[23];
  if (!v1)
  {
    v15 = v0[18];
    v17 = v0[6];
    v16 = v0[7];
    v18 = v0[5];
    v20 = v0[2];
    v19 = v0[3];
    _StringGuts.grow(_:)(26);

    v38[0] = 0xD000000000000018;
    v38[1] = 0x80000001001BCA60;
    v21._countAndFlagsBits = v20;
    v21._object = v19;
    String.append(_:)(v21);
    (*(v17 + 104))(v16, enum case for DIPError.Code.idcsMissingKeySigningKey(_:), v18);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100170960(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

LABEL_7:
    v26 = v0[11];
    v27 = v0[12];
    v28 = v0[10];
    (*(v0[6] + 104))(v0[7], enum case for DIPError.Code.internalError(_:), v0[5]);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100170960(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v29 = v0[1];

    return v29();
  }

  v2 = v0[10];
  v3 = v0[3];
  defaultLogger()();

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[16];
  v8 = v0[9];
  v9 = v0[10];
  v10 = v0[8];
  if (v6)
  {
    v36 = v0[10];
    v37 = v0[16];
    v12 = v0[2];
    v11 = v0[3];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v38[0] = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_10010150C(v12, v11, v38);
    _os_log_impl(&_mh_execute_header, v4, v5, "After trying new key, using existing ksk for %s", v13, 0xCu);
    sub_100005090(v14);

    v37(v36, v10);
  }

  else
  {

    v7(v9, v10);
  }

  v22 = v0[24];
  v23 = v0[18];
  sub_10019E83C(v1);
  v25 = v24;

  if (v22)
  {
    goto LABEL_7;
  }

  v32 = v0[11];
  v31 = v0[12];
  v33 = v0[10];
  v34 = v0[7];

  v35 = v0[1];

  return v35(v25);
}

uint64_t sub_10016D4E8()
{
  v1 = v0[15];
  v2 = v0[11];
  v3 = v0[12];
  v4 = v0[10];
  (*(v0[6] + 104))(v0[7], enum case for DIPError.Code.internalError(_:), v0[5]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100170960(&qword_100200200, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v5 = v0[1];

  return v5();
}

uint64_t sub_10016D690()
{
  v1 = v0[19];
  v2 = v0[11];
  v3 = v0[12];
  v4 = v0[10];
  (*(v0[6] + 104))(v0[7], enum case for DIPError.Code.internalError(_:), v0[5]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100170960(&qword_100200200, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v5 = v0[1];

  return v5();
}

uint64_t sub_10016D838()
{
  v1 = v0[18];

  v2 = v0[21];
  v3 = v0[11];
  v4 = v0[12];
  v5 = v0[10];
  (*(v0[6] + 104))(v0[7], enum case for DIPError.Code.internalError(_:), v0[5]);
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

uint64_t sub_10016D9E8()
{
  v1 = v0[18];

  v2 = v0[24];
  v3 = v0[11];
  v4 = v0[12];
  v5 = v0[10];
  (*(v0[6] + 104))(v0[7], enum case for DIPError.Code.internalError(_:), v0[5]);
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

uint64_t sub_10016DB98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[11] = a4;
  v5[12] = v4;
  v5[9] = a2;
  v5[10] = a3;
  v5[8] = a1;
  v6 = type metadata accessor for DIPError.Code();
  v5[13] = v6;
  v7 = *(v6 - 8);
  v5[14] = v7;
  v8 = *(v7 + 64) + 15;
  v5[15] = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  v5[16] = v9;
  v10 = *(v9 - 8);
  v5[17] = v10;
  v11 = *(v10 + 64) + 15;
  v5[18] = swift_task_alloc();
  v12 = type metadata accessor for COSEKey();
  v5[19] = v12;
  v13 = *(v12 - 8);
  v5[20] = v13;
  v14 = *(v13 + 64) + 15;
  v5[21] = swift_task_alloc();

  return _swift_task_switch(sub_10016DD18, 0, 0);
}

uint64_t sub_10016DD18()
{
  v1 = v0[21];
  v2 = v0[19];
  v4 = v0[10];
  v3 = v0[11];
  v5 = type metadata accessor for CBORDecoder();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  CBORDecoder.init()();
  sub_100170960(&qword_100203CA0, &type metadata accessor for COSEKey);
  dispatch thunk of CBORDecoder.decode<A>(_:from:)();
  v8 = v0[12];
  v9 = v0[8];
  v10 = v0[9];

  v11 = *(v8 + 120);
  v12 = swift_allocObject();
  v0[22] = v12;
  v12[2] = v8;
  v12[3] = v9;
  v12[4] = v10;
  v13 = *(v11 + 16);
  v14 = swift_allocObject();
  v0[23] = v14;
  *(v14 + 16) = &unk_1001AEC40;
  *(v14 + 24) = v12;
  v15 = async function pointer to AsyncCoreDataContainer.read<A>(_:)[1];

  v16 = swift_task_alloc();
  v0[24] = v16;
  v17 = type metadata accessor for KeySigningKey(0);
  *v16 = v0;
  v16[1] = sub_10016E078;

  return AsyncCoreDataContainer.read<A>(_:)(v0 + 7, &unk_1001AEC50, v14, v17);
}

uint64_t sub_10016E078()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v8 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v4 = sub_10016E490;
  }

  else
  {
    v5 = v2[22];
    v6 = v2[23];

    v2[26] = v2[7];
    v4 = sub_10016E1A4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10016E1A4()
{
  v0[2] = v0[26];
  v1 = v0[25];
  v2 = v0[21];
  v0[5] = &type metadata for KeySigningKeySignatureProvider;
  v0[6] = &off_1001F9920;
  v3 = sub_100143824(v2);
  v5 = v1;
  v7 = v0[20];
  v6 = v0[21];
  v8 = v0[19];
  if (v5)
  {
    sub_100157C88((v0 + 2));
    (*(v7 + 8))(v6, v8);
    v9 = v0[21];
    v10 = v0[18];
    (*(v0[14] + 104))(v0[15], enum case for DIPError.Code.internalError(_:), v0[13]);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100170960(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v11 = v0[1];

    return v11();
  }

  else
  {
    v14 = v0[17];
    v13 = v0[18];
    v19 = v0[16];
    v20 = v0[15];
    v15 = v3;
    v16 = v4;
    defaultLogger()();
    v17 = swift_task_alloc();
    *(v17 + 16) = v15;
    *(v17 + 24) = v16;
    Logger.sensitive(_:)();

    (*(v14 + 8))(v13, v19);
    sub_100157C88((v0 + 2));
    (*(v7 + 8))(v6, v8);

    v18 = v0[1];

    return v18(v15, v16);
  }
}