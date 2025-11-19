uint64_t sub_1003DB34C()
{
  sub_10000CC4C(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64) | (*(v0 + 68) << 32));
  v1 = *(v0 + 72);

  v2 = *(v0 + 80);
  swift_unknownObjectRelease();

  v3 = *(v0 + 112);

  v4 = *(v0 + 120);

  v5 = *(v0 + 128);

  v6 = *(v0 + 136);

  v7 = *(v0 + 144);

  return v0;
}

uint64_t sub_1003DB3C0()
{
  sub_1003DB34C();

  return swift_deallocClassInstance();
}

unint64_t sub_1003DB43C()
{
  result = qword_1009388B0;
  if (!qword_1009388B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1009388B0);
  }

  return result;
}

unint64_t sub_1003DB488()
{
  result = qword_10093B350;
  if (!qword_10093B350)
  {
    sub_1003DB43C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093B350);
  }

  return result;
}

uint64_t TantorMigrationAPI.SubmitAllHubbleKpisOperation.__allocating_init(request:)(uint64_t a1)
{
  v3 = sub_1000F5104(&qword_100945A98, &qword_1007A67A8);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v10 - v5;
  v7 = objc_allocWithZone(v1);
  sub_100010364(a1, v6, &qword_100945A98, &qword_1007A67A8);
  v8 = CKCodeOperation.init(functionName:request:)();
  sub_1000050A4(a1, &qword_100945A98, &qword_1007A67A8);
  return v8;
}

uint64_t TantorMigrationAPI.SubmitAllHubbleKpisOperation.init(request:)(uint64_t a1)
{
  v2 = sub_1000F5104(&qword_100945A98, &qword_1007A67A8);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  sub_100010364(a1, &v7 - v4, &qword_100945A98, &qword_1007A67A8);
  v5 = CKCodeOperation.init(functionName:request:)();
  sub_1000050A4(a1, &qword_100945A98, &qword_1007A67A8);
  return v5;
}

uint64_t sub_1003DB768(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v7 = sub_1000F5104(a2, a3);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v14 - v9;
  v11 = objc_allocWithZone(v3);
  sub_100010364(a1, v10, a2, a3);
  v12 = CKCodeOperation.init(functionName:request:)();
  sub_1000050A4(a1, a2, a3);
  return v12;
}

uint64_t sub_1003DB874(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = sub_1000F5104(a2, a3);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  sub_100010364(a1, &v11 - v8, a2, a3);
  v9 = CKCodeOperation.init(functionName:request:)();
  sub_1000050A4(a1, a2, a3);
  return v9;
}

uint64_t TantorMigrationAPIAsync.ping(message:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for PingRequest(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v17[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = a1;
  v19 = a2;
  sub_1003DD8A0(&qword_1009377A0, type metadata accessor for PingRequest);
  static Message.with(_:)();
  (*(a6 + 8))(v15, a3, a4, a5, a6);
  return sub_1003DD8E8(v15, type metadata accessor for PingRequest);
}

uint64_t TantorMigrationAPIAsync.submitAllHubbleKpis(completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for EmptyRequest(0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  UnknownStorage.init()();
  (*(a4 + 16))(v11, a1, a2, a3, a4);
  return sub_1003DD8E8(v11, type metadata accessor for EmptyRequest);
}

uint64_t TantorMigrationAPIAsync.startMigration(archivePath:credential:embeddedTestData:disableCache:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v23 = a8;
  v22 = a7;
  started = type metadata accessor for StartMigrationRequest(0);
  v17 = *(*(started - 8) + 64);
  __chkstk_darwin(started);
  v19 = &v21 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a1;
  v25 = a2;
  v26 = a3;
  v27 = a4;
  v28 = a5;
  v29 = a6;
  sub_1003DD8A0(&qword_100937608, type metadata accessor for StartMigrationRequest);
  static Message.with(_:)();
  (*(a10 + 24))(v19, v22, v23, a9, a10);
  return sub_1003DD8E8(v19, type metadata accessor for StartMigrationRequest);
}

uint64_t TantorMigrationAPIAsync.migrate(user:archivePath:embeddedTestData:options:userInitiated:simulatedError:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v27 = a10;
  v28 = a9;
  v26 = a12;
  v20 = type metadata accessor for MigrateRequest(0);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20);
  v23 = &v25 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = a1;
  v31 = a2;
  v32 = a3;
  v33 = a4;
  v34 = a5;
  v35 = a6;
  v36 = BYTE4(a6) & 1;
  v37 = a7;
  v38 = a8;
  v39 = BYTE4(a8) & 1;
  sub_1003DD8A0(&qword_100937680, type metadata accessor for MigrateRequest);
  static Message.with(_:)();
  (*(v26 + 32))(v23, v28, v27, v29);
  return sub_1003DD8E8(v23, type metadata accessor for MigrateRequest);
}

uint64_t TantorMigrationAPIAsync.unmigrate(options:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for UnmigrateRequest(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v15[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = a1;
  v17 = BYTE4(a1) & 1;
  sub_1003DD8A0(&qword_100937710, type metadata accessor for UnmigrateRequest);
  static Message.with(_:)();
  (*(a5 + 40))(v13, a2, a3, a4, a5);
  return sub_1003DD8E8(v13, type metadata accessor for UnmigrateRequest);
}

uint64_t TantorMigrationAPIAsyncClient.__allocating_init(codeService:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

void TantorMigrationAPIAsyncClient.ping(_:completion:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000F5104(&qword_100945A90, &qword_1007A67A0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v15 - v9;
  sub_1003DD9C8(a1, &v15 - v9, type metadata accessor for PingRequest);
  v11 = type metadata accessor for PingRequest(0);
  (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  objc_allocWithZone(type metadata accessor for TantorMigrationAPI.PingOperation(0));
  sub_100010364(v10, v7, &qword_100945A90, &qword_1007A67A0);
  v12 = CKCodeOperation.init(functionName:request:)();
  sub_1000050A4(v10, &qword_100945A90, &qword_1007A67A0);
  v13 = v12;

  dispatch thunk of CKCodeOperation.codeOperationResultBlock.setter();

  v14 = *(v2 + 16);
  CKCodeService.add<A, B>(_:)();
}

void TantorMigrationAPIAsyncClient.submitAllHubbleKpis(_:completion:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000F5104(&qword_100945A98, &qword_1007A67A8);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v15 - v9;
  sub_1003DD9C8(a1, &v15 - v9, type metadata accessor for EmptyRequest);
  v11 = type metadata accessor for EmptyRequest(0);
  (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  objc_allocWithZone(type metadata accessor for TantorMigrationAPI.SubmitAllHubbleKpisOperation(0));
  sub_100010364(v10, v7, &qword_100945A98, &qword_1007A67A8);
  v12 = CKCodeOperation.init(functionName:request:)();
  sub_1000050A4(v10, &qword_100945A98, &qword_1007A67A8);
  v13 = v12;

  dispatch thunk of CKCodeOperation.codeOperationResultBlock.setter();

  v14 = *(v2 + 16);
  CKCodeService.add<A, B>(_:)();
}

void TantorMigrationAPIAsyncClient.startMigration(_:completion:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000F5104(&qword_100945AA0, &qword_1007A67B0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v15 - v9;
  sub_1003DD9C8(a1, &v15 - v9, type metadata accessor for StartMigrationRequest);
  started = type metadata accessor for StartMigrationRequest(0);
  (*(*(started - 8) + 56))(v10, 0, 1, started);
  objc_allocWithZone(type metadata accessor for TantorMigrationAPI.StartMigrationOperation(0));
  sub_100010364(v10, v7, &qword_100945AA0, &qword_1007A67B0);
  v12 = CKCodeOperation.init(functionName:request:)();
  sub_1000050A4(v10, &qword_100945AA0, &qword_1007A67B0);
  v13 = v12;

  dispatch thunk of CKCodeOperation.codeOperationResultBlock.setter();

  v14 = *(v2 + 16);
  CKCodeService.add<A, B>(_:)();
}

void TantorMigrationAPIAsyncClient.migrate(_:completion:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000F5104(&qword_100945AA8, &qword_1007A67B8);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v15 - v9;
  sub_1003DD9C8(a1, &v15 - v9, type metadata accessor for MigrateRequest);
  v11 = type metadata accessor for MigrateRequest(0);
  (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  objc_allocWithZone(type metadata accessor for TantorMigrationAPI.MigrateOperation(0));
  sub_100010364(v10, v7, &qword_100945AA8, &qword_1007A67B8);
  v12 = CKCodeOperation.init(functionName:request:)();
  sub_1000050A4(v10, &qword_100945AA8, &qword_1007A67B8);
  v13 = v12;

  dispatch thunk of CKCodeOperation.codeOperationResultBlock.setter();

  v14 = *(v2 + 16);
  CKCodeService.add<A, B>(_:)();
}

void TantorMigrationAPIAsyncClient.unmigrate(_:completion:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000F5104(&qword_100945AB0, &qword_1007A67C0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v15 - v9;
  sub_1003DD9C8(a1, &v15 - v9, type metadata accessor for UnmigrateRequest);
  v11 = type metadata accessor for UnmigrateRequest(0);
  (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  objc_allocWithZone(type metadata accessor for TantorMigrationAPI.UnmigrateOperation(0));
  sub_100010364(v10, v7, &qword_100945AB0, &qword_1007A67C0);
  v12 = CKCodeOperation.init(functionName:request:)();
  sub_1000050A4(v10, &qword_100945AB0, &qword_1007A67C0);
  v13 = v12;

  dispatch thunk of CKCodeOperation.codeOperationResultBlock.setter();

  v14 = *(v2 + 16);
  CKCodeService.add<A, B>(_:)();
}

uint64_t TantorMigrationAPIAsyncOperation.ping(message:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for PingRequest(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v18[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = a1;
  v20 = a2;
  sub_1003DD8A0(&qword_1009377A0, type metadata accessor for PingRequest);
  static Message.with(_:)();
  v16 = (*(a6 + 8))(v15, a3, a4, a5, a6);
  sub_1003DD8E8(v15, type metadata accessor for PingRequest);
  return v16;
}

uint64_t TantorMigrationAPIAsyncOperation.submitAllHubbleKpis(completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for EmptyRequest(0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  UnknownStorage.init()();
  v12 = (*(a4 + 16))(v11, a1, a2, a3, a4);
  sub_1003DD8E8(v11, type metadata accessor for EmptyRequest);
  return v12;
}

uint64_t TantorMigrationAPIAsyncOperation.startMigration(archivePath:credential:embeddedTestData:disableCache:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v24 = a8;
  v23 = a7;
  started = type metadata accessor for StartMigrationRequest(0);
  v17 = *(*(started - 8) + 64);
  __chkstk_darwin(started);
  v19 = &v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a1;
  v26 = a2;
  v27 = a3;
  v28 = a4;
  v29 = a5;
  v30 = a6;
  sub_1003DD8A0(&qword_100937608, type metadata accessor for StartMigrationRequest);
  static Message.with(_:)();
  v20 = (*(a10 + 24))(v19, v23, v24, a9, a10);
  sub_1003DD8E8(v19, type metadata accessor for StartMigrationRequest);
  return v20;
}

uint64_t sub_1003DCE24(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v32 = a7;
  v30 = a5;
  v31 = a6;
  v11 = sub_1000F5104(&qword_1009387A0, &qword_100794DC8);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v29 - v13;
  started = type metadata accessor for StartMigrationRequest.Credential(0);
  v16 = *(started - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(started);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v29 - v21;
  if (a3)
  {

    sub_1000050A4(a1, &qword_1009374E0, &unk_1007A6940);
    *a1 = a2;
    a1[1] = a3;
    v23 = type metadata accessor for StartMigrationRequest.OneOf_Source(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v23 - 8) + 56))(a1, 0, 1, v23);
  }

  sub_100010364(a4, v14, &qword_1009387A0, &qword_100794DC8);
  if ((*(v16 + 48))(v14, 1, started) == 1)
  {
    result = sub_1000050A4(v14, &qword_1009387A0, &qword_100794DC8);
  }

  else
  {
    sub_1003DE560(v14, v22, type metadata accessor for StartMigrationRequest.Credential);
    sub_1003DE560(v22, v19, type metadata accessor for StartMigrationRequest.Credential);
    sub_1000050A4(a1, &qword_1009374E0, &unk_1007A6940);
    sub_1003DE560(v19, a1, type metadata accessor for StartMigrationRequest.Credential);
    v25 = type metadata accessor for StartMigrationRequest.OneOf_Source(0);
    swift_storeEnumTagMultiPayload();
    result = (*(*(v25 - 8) + 56))(a1, 0, 1, v25);
  }

  v26 = v32;
  v27 = v31;
  if (v31)
  {

    sub_1000050A4(a1, &qword_1009374E0, &unk_1007A6940);
    *a1 = v30;
    a1[1] = v27;
    v28 = type metadata accessor for StartMigrationRequest.OneOf_Source(0);
    swift_storeEnumTagMultiPayload();
    result = (*(*(v28 - 8) + 56))(a1, 0, 1, v28);
  }

  if (v26 != 2)
  {
    result = type metadata accessor for StartMigrationRequest(0);
    *(a1 + *(result + 20)) = v26 & 1;
  }

  return result;
}

uint64_t TantorMigrationAPIAsyncOperation.migrate(user:archivePath:embeddedTestData:options:userInitiated:simulatedError:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v28 = a10;
  v29 = a9;
  v27 = a12;
  v20 = type metadata accessor for MigrateRequest(0);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20);
  v23 = &v26 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = a1;
  v32 = a2;
  v33 = a3;
  v34 = a4;
  v35 = a5;
  v36 = a6;
  v37 = BYTE4(a6) & 1;
  v38 = a7;
  v39 = a8;
  v40 = BYTE4(a8) & 1;
  sub_1003DD8A0(&qword_100937680, type metadata accessor for MigrateRequest);
  static Message.with(_:)();
  v24 = (*(v27 + 32))(v23, v29, v28, v30);
  sub_1003DD8E8(v23, type metadata accessor for MigrateRequest);
  return v24;
}

int *sub_1003DD330(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9)
{
  v36 = a8;
  v34 = a6;
  v35 = a7;
  v32 = a5;
  v33 = a4;
  v31 = a3;
  v11 = sub_1000F5104(&qword_100938778, &qword_100794DA0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v31 - v13;
  v15 = type metadata accessor for MigrateRequest.User(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v31 - v21;
  sub_100010364(a2, v14, &qword_100938778, &qword_100794DA0);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    result = sub_1000050A4(v14, &qword_100938778, &qword_100794DA0);
  }

  else
  {
    sub_1003DE560(v14, v22, type metadata accessor for MigrateRequest.User);
    sub_1003DE560(v22, v19, type metadata accessor for MigrateRequest.User);
    sub_1000050A4(a1, &qword_1009374F0, &qword_1007A2380);
    sub_1003DE560(v19, a1, type metadata accessor for MigrateRequest.User);
    v24 = type metadata accessor for MigrateRequest.OneOf_Source(0);
    swift_storeEnumTagMultiPayload();
    result = (*(*(v24 - 8) + 56))(a1, 0, 1, v24);
  }

  v25 = v36;
  v26 = v35;
  v27 = v33;
  if (v33)
  {

    sub_1000050A4(a1, &qword_1009374F0, &qword_1007A2380);
    *a1 = v31;
    a1[1] = v27;
    v28 = type metadata accessor for MigrateRequest.OneOf_Source(0);
    swift_storeEnumTagMultiPayload();
    result = (*(*(v28 - 8) + 56))(a1, 0, 1, v28);
  }

  v29 = v34;
  if (v34)
  {

    sub_1000050A4(a1, &qword_1009374F0, &qword_1007A2380);
    *a1 = v32;
    a1[1] = v29;
    v30 = type metadata accessor for MigrateRequest.OneOf_Source(0);
    swift_storeEnumTagMultiPayload();
    result = (*(*(v30 - 8) + 56))(a1, 0, 1, v30);
  }

  if ((v26 & 0x100000000) == 0)
  {
    result = type metadata accessor for MigrateRequest(0);
    *(a1 + result[5]) = v26;
  }

  if (v25 != 2)
  {
    result = type metadata accessor for MigrateRequest(0);
    *(a1 + result[6]) = v25 & 1;
  }

  if ((a9 & 0x100000000) == 0)
  {
    result = type metadata accessor for MigrateRequest(0);
    *(a1 + result[7]) = a9;
  }

  return result;
}

uint64_t TantorMigrationAPIAsyncOperation.unmigrate(options:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for UnmigrateRequest(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v16[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = a1;
  v18 = BYTE4(a1) & 1;
  sub_1003DD8A0(&qword_100937710, type metadata accessor for UnmigrateRequest);
  static Message.with(_:)();
  v14 = (*(a5 + 40))(v13, a2, a3, a4, a5);
  sub_1003DD8E8(v13, type metadata accessor for UnmigrateRequest);
  return v14;
}

uint64_t sub_1003DD8A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1003DD8E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1003DD9C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1003DDA50(uint64_t result)
{
  v2 = *(v1 + 24);
  if (v2)
  {
    v3 = *(v1 + 16);
    v4 = *(result + 8);
    v5 = result;

    *v5 = v3;
    v5[1] = v2;
  }

  return result;
}

_DWORD *sub_1003DDB28(_DWORD *result)
{
  if ((*(v1 + 20) & 1) == 0)
  {
    *result = *(v1 + 16);
  }

  return result;
}

id TantorMigrationAPIAsyncOperationClient.ping(_:completion:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000F5104(&qword_100945A90, &qword_1007A67A0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v16 - v9;
  sub_1003DD9C8(a1, &v16 - v9, type metadata accessor for PingRequest);
  v11 = type metadata accessor for PingRequest(0);
  (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  objc_allocWithZone(type metadata accessor for TantorMigrationAPI.PingOperation(0));
  sub_100010364(v10, v7, &qword_100945A90, &qword_1007A67A0);
  v12 = CKCodeOperation.init(functionName:request:)();
  sub_1000050A4(v10, &qword_100945A90, &qword_1007A67A0);
  v13 = v12;

  dispatch thunk of CKCodeOperation.codeOperationResultBlock.setter();
  v14 = *(v2 + 16);
  dispatch thunk of CKCodeOperation.codeService.setter();

  return v13;
}

id TantorMigrationAPIAsyncOperationClient.submitAllHubbleKpis(_:completion:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000F5104(&qword_100945A98, &qword_1007A67A8);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v16 - v9;
  sub_1003DD9C8(a1, &v16 - v9, type metadata accessor for EmptyRequest);
  v11 = type metadata accessor for EmptyRequest(0);
  (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  objc_allocWithZone(type metadata accessor for TantorMigrationAPI.SubmitAllHubbleKpisOperation(0));
  sub_100010364(v10, v7, &qword_100945A98, &qword_1007A67A8);
  v12 = CKCodeOperation.init(functionName:request:)();
  sub_1000050A4(v10, &qword_100945A98, &qword_1007A67A8);
  v13 = v12;

  dispatch thunk of CKCodeOperation.codeOperationResultBlock.setter();
  v14 = *(v2 + 16);
  dispatch thunk of CKCodeOperation.codeService.setter();

  return v13;
}

id TantorMigrationAPIAsyncOperationClient.startMigration(_:completion:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000F5104(&qword_100945AA0, &qword_1007A67B0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v16 - v9;
  sub_1003DD9C8(a1, &v16 - v9, type metadata accessor for StartMigrationRequest);
  started = type metadata accessor for StartMigrationRequest(0);
  (*(*(started - 8) + 56))(v10, 0, 1, started);
  objc_allocWithZone(type metadata accessor for TantorMigrationAPI.StartMigrationOperation(0));
  sub_100010364(v10, v7, &qword_100945AA0, &qword_1007A67B0);
  v12 = CKCodeOperation.init(functionName:request:)();
  sub_1000050A4(v10, &qword_100945AA0, &qword_1007A67B0);
  v13 = v12;

  dispatch thunk of CKCodeOperation.codeOperationResultBlock.setter();
  v14 = *(v2 + 16);
  dispatch thunk of CKCodeOperation.codeService.setter();

  return v13;
}

id TantorMigrationAPIAsyncOperationClient.migrate(_:completion:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000F5104(&qword_100945AA8, &qword_1007A67B8);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v16 - v9;
  sub_1003DD9C8(a1, &v16 - v9, type metadata accessor for MigrateRequest);
  v11 = type metadata accessor for MigrateRequest(0);
  (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  objc_allocWithZone(type metadata accessor for TantorMigrationAPI.MigrateOperation(0));
  sub_100010364(v10, v8, &qword_100945AA8, &qword_1007A67B8);
  v12 = CKCodeOperation.init(functionName:request:)();
  sub_1000050A4(v10, &qword_100945AA8, &qword_1007A67B8);
  v13 = v12;

  dispatch thunk of CKCodeOperation.codeOperationResultBlock.setter();
  v14 = *(v2 + 16);
  dispatch thunk of CKCodeOperation.codeService.setter();

  return v13;
}

id TantorMigrationAPIAsyncOperationClient.unmigrate(_:completion:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000F5104(&qword_100945AB0, &qword_1007A67C0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v16 - v9;
  sub_1003DD9C8(a1, &v16 - v9, type metadata accessor for UnmigrateRequest);
  v11 = type metadata accessor for UnmigrateRequest(0);
  (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  objc_allocWithZone(type metadata accessor for TantorMigrationAPI.UnmigrateOperation(0));
  sub_100010364(v10, v7, &qword_100945AB0, &qword_1007A67C0);
  v12 = CKCodeOperation.init(functionName:request:)();
  sub_1000050A4(v10, &qword_100945AB0, &qword_1007A67C0);
  v13 = v12;

  dispatch thunk of CKCodeOperation.codeOperationResultBlock.setter();
  v14 = *(v2 + 16);
  dispatch thunk of CKCodeOperation.codeService.setter();

  return v13;
}

uint64_t sub_1003DE560(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void *sub_1003DE68C(void (*a1)(void), uint64_t a2, unint64_t a3)
{
  v6 = sub_1000F5104(&qword_100945E78, &unk_1007A6A48);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v29 - v8;
  v10 = sub_1000F5104(&qword_100939860, &unk_10079D480);
  v32 = *(v10 - 8);
  v11 = *(v32 + 64);
  v12 = __chkstk_darwin(v10);
  v38 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v31 = &v29 - v15;
  if (a3 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; v14 = v27)
  {
    v17 = 0;
    v36 = a3 & 0xFFFFFFFFFFFFFF8;
    v37 = a3 & 0xC000000000000001;
    v33 = (v32 + 32);
    v34 = (v32 + 48);
    v39 = v14;
    v40 = _swiftEmptyArrayStorage;
    v29 = a1;
    v30 = a3;
    v35 = i;
    while (1)
    {
      if (v37)
      {
        v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v17 >= *(v36 + 16))
        {
          goto LABEL_20;
        }

        v14 = *(a3 + 8 * v17 + 32);
      }

      v18 = v14;
      v19 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      v41 = v14;
      a1(&v41);
      if (v3)
      {

        return v40;
      }

      v20 = v39;
      if ((*v34)(v9, 1, v39) == 1)
      {
        v14 = sub_1000050A4(v9, &qword_100945E78, &unk_1007A6A48);
      }

      else
      {
        v21 = *v33;
        v22 = v31;
        (*v33)(v31, v9, v20);
        v21(v38, v22, v20);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v40 = sub_100365A00(0, v40[2] + 1, 1, v40);
        }

        v24 = v40[2];
        v23 = v40[3];
        if (v24 >= v23 >> 1)
        {
          v40 = sub_100365A00(v23 > 1, v24 + 1, 1, v40);
        }

        v25 = v39;
        v26 = v40;
        v40[2] = v24 + 1;
        v14 = (v21)(v26 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v24, v38, v25);
        a1 = v29;
        a3 = v30;
      }

      ++v17;
      if (v19 == v35)
      {
        return v40;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    v27 = v14;
    i = _CocoaArrayWrapper.endIndex.getter();
  }

  return _swiftEmptyArrayStorage;
}

char *sub_1003DEA00(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v6 = sub_1000F5104(&qword_100945E80, &qword_1007A6A58);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v26 - v8;
  v10 = type metadata accessor for REMListPickerDataView.Model.Account();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v33 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v30 = &v26 - v15;
  v16 = *(a3 + 16);
  if (!v16)
  {
    return _swiftEmptyArrayStorage;
  }

  v17 = *(type metadata accessor for REMAccountsListDataView.Model.Account() - 8);
  v27 = v11;
  v31 = (v11 + 32);
  v32 = (v11 + 48);
  v18 = a3 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
  v19 = *(v17 + 72);
  v34 = _swiftEmptyArrayStorage;
  v28 = v10;
  v29 = a1;
  v26 = v19;
  while (1)
  {
    a1(v18);
    if (v3)
    {
      break;
    }

    if ((*v32)(v9, 1, v10) == 1)
    {
      sub_1000050A4(v9, &qword_100945E80, &qword_1007A6A58);
    }

    else
    {
      v20 = v30;
      v21 = *v31;
      (*v31)(v30, v9, v10);
      v21(v33, v20, v10);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = sub_100365AC4(0, *(v34 + 2) + 1, 1, v34);
      }

      v23 = *(v34 + 2);
      v22 = *(v34 + 3);
      if (v23 >= v22 >> 1)
      {
        v34 = sub_100365AC4(v22 > 1, v23 + 1, 1, v34);
      }

      v24 = v34;
      *(v34 + 2) = v23 + 1;
      v10 = v28;
      v21(&v24[((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v23], v33, v28);
      a1 = v29;
      v19 = v26;
    }

    v18 += v19;
    if (!--v16)
    {
      return v34;
    }
  }

  return v34;
}

char *sub_1003DED2C(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v17 = a1;
  v4 = *(a3 + 16);
  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  v5 = (a3 + 40);
  v6 = _swiftEmptyArrayStorage;
  while (1)
  {
    v8 = *v5;
    v16[0] = *(v5 - 1);
    v16[1] = v8;

    v17(&v14, v16);
    if (v3)
    {
      break;
    }

    v9 = v15;
    if (v15)
    {
      v10 = v14;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_100365788(0, *(v6 + 2) + 1, 1, v6);
      }

      v12 = *(v6 + 2);
      v11 = *(v6 + 3);
      if (v12 >= v11 >> 1)
      {
        v6 = sub_100365788((v11 > 1), v12 + 1, 1, v6);
      }

      *(v6 + 2) = v12 + 1;
      v7 = &v6[16 * v12];
      *(v7 + 4) = v10;
      *(v7 + 5) = v9;
    }

    v5 += 2;
    if (!--v4)
    {
      return v6;
    }
  }

  return v6;
}

void *sub_1003DEEBC(void (*a1)(void), uint64_t a2, unint64_t a3)
{
  v6 = sub_1000F5104(&qword_100945E68, &qword_1007A6A30);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v29 - v8;
  v10 = sub_1000F5104(&unk_1009430F0, qword_10079DC40);
  v32 = *(v10 - 8);
  v11 = *(v32 + 64);
  __chkstk_darwin(v10);
  v38 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v31 = &v29 - v15;
  if (a3 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; v14 = v27)
  {
    v17 = 0;
    v36 = a3 & 0xFFFFFFFFFFFFFF8;
    v37 = a3 & 0xC000000000000001;
    v33 = (v32 + 32);
    v34 = (v32 + 48);
    v39 = v14;
    v40 = _swiftEmptyArrayStorage;
    v29 = a1;
    v30 = a3;
    v35 = i;
    while (1)
    {
      if (v37)
      {
        v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v17 >= *(v36 + 16))
        {
          goto LABEL_20;
        }

        v14 = *(a3 + 8 * v17 + 32);
      }

      v18 = v14;
      v19 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      v41 = v14;
      a1(&v41);
      if (v3)
      {

        return v40;
      }

      v20 = v39;
      if ((*v34)(v9, 1, v39) == 1)
      {
        v14 = sub_1000050A4(v9, &qword_100945E68, &qword_1007A6A30);
      }

      else
      {
        v21 = *v33;
        v22 = v31;
        (*v33)(v31, v9, v20);
        v21(v38, v22, v20);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v40 = sub_100365B3C(0, v40[2] + 1, 1, v40);
        }

        v24 = v40[2];
        v23 = v40[3];
        if (v24 >= v23 >> 1)
        {
          v40 = sub_100365B3C(v23 > 1, v24 + 1, 1, v40);
        }

        v25 = v39;
        v26 = v40;
        v40[2] = v24 + 1;
        v14 = (v21)(v26 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v24, v38, v25);
        a1 = v29;
        a3 = v30;
      }

      ++v17;
      if (v19 == v35)
      {
        return v40;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    v27 = v14;
    i = _CocoaArrayWrapper.endIndex.getter();
  }

  return _swiftEmptyArrayStorage;
}

void *sub_1003DF230(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v7 = sub_1000F5104(&qword_100940628, &unk_1007A6A20);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v27 - v9;
  v11 = type metadata accessor for REMRemindersListDataView.ReminderLite();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v32 = &v27 - v17;
  v35 = *(a3 + 16);
  if (!v35)
  {
    return _swiftEmptyArrayStorage;
  }

  v18 = 0;
  v29 = v16;
  v33 = (v16 + 32);
  v34 = (v16 + 48);
  v19 = _swiftEmptyArrayStorage;
  v30 = a2;
  v31 = a3;
  v27 = a1;
  v28 = v14;
  while (1)
  {
    v20 = *(sub_1000F5104(&unk_1009430F0, qword_10079DC40) - 8);
    a1(a3 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v18);
    if (v3)
    {
      break;
    }

    if ((*v34)(v10, 1, v11) == 1)
    {
      sub_1000050A4(v10, &qword_100940628, &unk_1007A6A20);
    }

    else
    {
      v21 = v32;
      v22 = *v33;
      (*v33)(v32, v10, v11);
      v22(v14, v21, v11);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_100365A24(0, v19[2] + 1, 1, v19);
      }

      v24 = v19[2];
      v23 = v19[3];
      if (v24 >= v23 >> 1)
      {
        v19 = sub_100365A24(v23 > 1, v24 + 1, 1, v19);
      }

      v19[2] = v24 + 1;
      v25 = v19 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v24;
      v14 = v28;
      v22(v25, v28, v11);
      a3 = v31;
      a1 = v27;
    }

    if (v35 == ++v18)
    {
      return v19;
    }
  }

  return v19;
}

void *sub_1003DF568(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2)
{
  v28 = a1;
  v29 = a2;
  v4 = sub_1000F5104(&qword_10093EDF8, &qword_10079D5B0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v27 - v7;
  v9 = sub_1000F5104(&qword_10094A360, &unk_1007A12E0);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  v12 = __chkstk_darwin(v9);
  v14 = v27 - v13;
  (*(v5 + 16))(v8, v2, v4, v12);
  sub_1003E44E0(&qword_1009413B0);
  dispatch thunk of Sequence.makeIterator()();
  v15 = *(v10 + 44);
  sub_1003E44E0(&qword_10093EE00);
  dispatch thunk of Collection.endIndex.getter();
  v16 = _swiftEmptyArrayStorage;
  if (*&v14[v15] == v32)
  {
LABEL_2:
    sub_1000050A4(v14, &qword_10094A360, &unk_1007A12E0);
  }

  else
  {
    v27[1] = v4;
    while (1)
    {
      v19 = dispatch thunk of Collection.subscript.read();
      v21 = *v20;
      v19(&v32, 0);
      dispatch thunk of Collection.formIndex(after:)();
      v36 = v21;
      v28(&v32, &v36);
      if (v3)
      {
        break;
      }

      v22 = v33;
      if (v33)
      {
        v23 = v32;
        v30 = v35;
        v31 = v34;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_100365CC4(0, v16[2] + 1, 1, v16);
        }

        v25 = v16[2];
        v24 = v16[3];
        if (v25 >= v24 >> 1)
        {
          v16 = sub_100365CC4((v24 > 1), v25 + 1, 1, v16);
        }

        v16[2] = v25 + 1;
        v17 = &v16[4 * v25];
        v17[4] = v23;
        v17[5] = v22;
        v18 = v30;
        v17[6] = v31;
        v17[7] = v18;
      }

      dispatch thunk of Collection.endIndex.getter();
      if (*&v14[v15] == v32)
      {
        goto LABEL_2;
      }
    }

    sub_1000050A4(v14, &qword_10094A360, &unk_1007A12E0);
  }

  return v16;
}

void *sub_1003DFAC8(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v6 = sub_1000F5104(&qword_100945E88, &qword_1007A6A68);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v25 - v8;
  v10 = type metadata accessor for RDIntentsRelevantShortcutsHandlerItem();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v31 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v29 = &v25 - v15;
  v16 = *(a3 + 16);
  if (!v16)
  {
    return _swiftEmptyArrayStorage;
  }

  v17 = *(type metadata accessor for RDTimelineEngineDueReminder(0) - 8);
  v26 = v11;
  v18 = (v11 + 48);
  v19 = a3 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
  v30 = *(v17 + 72);
  v20 = _swiftEmptyArrayStorage;
  v27 = v10;
  v28 = a1;
  while (1)
  {
    a1(v19);
    if (v3)
    {
      break;
    }

    if ((*v18)(v9, 1, v10) == 1)
    {
      sub_1000050A4(v9, &qword_100945E88, &qword_1007A6A68);
    }

    else
    {
      v21 = v29;
      sub_1002D61DC(v9, v29);
      sub_1002D61DC(v21, v31);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_100367980(0, v20[2] + 1, 1, v20);
      }

      v23 = v20[2];
      v22 = v20[3];
      if (v23 >= v22 >> 1)
      {
        v20 = sub_100367980(v22 > 1, v23 + 1, 1, v20);
      }

      v20[2] = v23 + 1;
      sub_1002D61DC(v31, v20 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v23);
      v10 = v27;
      a1 = v28;
    }

    v19 += v30;
    if (!--v16)
    {
      return v20;
    }
  }

  return v20;
}

void *sub_1003DFE04(void (*a1)(void, __n128), uint64_t a2, uint64_t a3)
{
  v31 = a2;
  v6 = sub_1000F5104(&qword_100945E58, &unk_1007ACAD0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v25 - v8;
  v30 = sub_1000F5104(&unk_1009464C0, &qword_10079D360);
  v10 = *(*(v30 - 8) + 64);
  __chkstk_darwin(v30);
  v29 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v28 = &v25 - v15;
  v16 = *(a3 + 16);
  if (!v16)
  {
    return _swiftEmptyArrayStorage;
  }

  v26 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v17 = a3 + v26;
  v18 = (v13 + 48);
  v19 = _swiftEmptyArrayStorage;
  v20 = *(v13 + 72);
  v27 = a1;
  v25 = v20;
  while (1)
  {
    a1(v17, v14);
    if (v3)
    {
      break;
    }

    if ((*v18)(v9, 1, v30) == 1)
    {
      sub_1000050A4(v9, &qword_100945E58, &unk_1007ACAD0);
    }

    else
    {
      v21 = v28;
      sub_100031B58(v9, v28, &unk_1009464C0, &qword_10079D360);
      sub_100031B58(v21, v29, &unk_1009464C0, &qword_10079D360);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_100367EA4(0, v19[2] + 1, 1, v19);
      }

      v23 = v19[2];
      v22 = v19[3];
      if (v23 >= v22 >> 1)
      {
        v19 = sub_100367EA4(v22 > 1, v23 + 1, 1, v19);
      }

      v19[2] = v23 + 1;
      v20 = v25;
      sub_100031B58(v29, v19 + v26 + v23 * v25, &unk_1009464C0, &qword_10079D360);
      a1 = v27;
    }

    v17 += v20;
    if (!--v16)
    {
      return v19;
    }
  }

  return v19;
}

char *sub_1003E00D4(void (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v41 = a1;
  v4 = sub_1000F5104(&qword_1009413C0, &qword_1007A6A60);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v34 - v6;
  v8 = type metadata accessor for REMSuggestedAttributeOutput();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v40 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v35 = &v34 - v13;
  v14 = *(a3 + 16);
  if (!v14)
  {
    return _swiftEmptyArrayStorage;
  }

  v39 = v7;
  v34 = v12;
  v36 = (v12 + 32);
  v37 = (v12 + 48);
  v15 = (a3 + 80);
  v42 = _swiftEmptyArrayStorage;
  v38 = v8;
  while (1)
  {
    v43 = v15;
    v44 = v14;
    v16 = *(v15 - 6);
    v17 = *(v15 - 5);
    v18 = *(v15 - 4);
    v19 = *(v15 - 3);
    v20 = *(v15 - 2);
    v21 = *(v15 - 1);
    v22 = *v15;
    v45[0] = v16;
    v45[1] = v17;
    v45[2] = v18;
    v45[3] = v19;
    v45[4] = v20;
    v45[5] = v21;
    v46 = v22;
    sub_1002F10C8(v16, v17, v18, v19, v20, v21, v22);
    v23 = v39;
    v24 = v47;
    v41(v45);
    v47 = v24;
    if (v24)
    {
      break;
    }

    sub_1002F115C(v16, v17, v18, v19, v20, v21, v22);
    v25 = v38;
    v26 = (*v37)(v23, 1, v38);
    v27 = v23;
    if (v26 == 1)
    {
      sub_1000050A4(v23, &qword_1009413C0, &qword_1007A6A60);
    }

    else
    {
      v28 = v35;
      v29 = *v36;
      (*v36)(v35, v27, v25);
      v29(v40, v28, v25);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v42 = sub_100368058(0, *(v42 + 2) + 1, 1, v42);
      }

      v31 = *(v42 + 2);
      v30 = *(v42 + 3);
      if (v31 >= v30 >> 1)
      {
        v42 = sub_100368058(v30 > 1, v31 + 1, 1, v42);
      }

      v32 = v42;
      *(v42 + 2) = v31 + 1;
      v29(&v32[((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v31], v40, v25);
    }

    v15 = v43 + 56;
    v14 = v44 - 1;
    if (v44 == 1)
    {
      return v42;
    }
  }

  sub_1002F115C(v16, v17, v18, v19, v20, v21, v22);

  return v42;
}

char *sub_1003E041C(void (*a1)(uint64_t *__return_ptr, char *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  v5 = (a3 + 32);
  v6 = _swiftEmptyArrayStorage;
  while (1)
  {
    v16 = *v5;
    a1(&v14, &v16);
    if (v3)
    {
      break;
    }

    v8 = v15;
    if (v15)
    {
      v9 = v14;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_100365788(0, *(v6 + 2) + 1, 1, v6);
      }

      v11 = *(v6 + 2);
      v10 = *(v6 + 3);
      if (v11 >= v10 >> 1)
      {
        v6 = sub_100365788((v10 > 1), v11 + 1, 1, v6);
      }

      *(v6 + 2) = v11 + 1;
      v7 = &v6[16 * v11];
      *(v7 + 4) = v9;
      *(v7 + 5) = v8;
    }

    ++v5;
    if (!--v4)
    {
      return v6;
    }
  }

  return v6;
}

void *sub_1003E0578(void (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v32 = a2;
  v33 = a1;
  v5 = sub_1000F5104(&qword_100945E70, &unk_1007A6A38);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v24 - v7;
  v31 = sub_1000F5104(&qword_1009431C0, &qword_10079D3E0);
  v26 = *(v31 - 8);
  v9 = *(v26 + 64);
  v10 = __chkstk_darwin(v31);
  v30 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v25 = &v24 - v12;
  if (a3 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v14 = 0;
    v28 = a3 & 0xFFFFFFFFFFFFFF8;
    v29 = a3 & 0xC000000000000001;
    v15 = (v26 + 48);
    v16 = _swiftEmptyArrayStorage;
    v24 = a3;
    v27 = i;
    while (1)
    {
      if (v29)
      {
        v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v14 >= *(v28 + 16))
        {
          goto LABEL_20;
        }

        v17 = *(a3 + 8 * v14 + 32);
      }

      v18 = v17;
      v19 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      v34 = v17;
      v33(&v34);
      if (v3)
      {

        return v16;
      }

      if ((*v15)(v8, 1, v31) == 1)
      {
        sub_1000050A4(v8, &qword_100945E70, &unk_1007A6A38);
      }

      else
      {
        v20 = v25;
        sub_100031B58(v8, v25, &qword_1009431C0, &qword_10079D3E0);
        sub_100031B58(v20, v30, &qword_1009431C0, &qword_10079D3E0);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_100368744(0, v16[2] + 1, 1, v16);
        }

        v22 = v16[2];
        v21 = v16[3];
        if (v22 >= v21 >> 1)
        {
          v16 = sub_100368744(v21 > 1, v22 + 1, 1, v16);
        }

        v16[2] = v22 + 1;
        sub_100031B58(v30, v16 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v22, &qword_1009431C0, &qword_10079D3E0);
        a3 = v24;
      }

      ++v14;
      if (v19 == v27)
      {
        return v16;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  return _swiftEmptyArrayStorage;
}

void *sub_1003E0928(void (*a1)(void), uint64_t a2, unint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void), unint64_t a7)
{
  v39 = a4;
  v40 = a5;
  v12 = sub_1000F5104(a4, a5);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v34 - v14;
  v16 = a6(0);
  v41 = *(v16 - 8);
  v17 = *(v41 + 64);
  v18 = __chkstk_darwin(v16);
  v47 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v38 = &v34 - v21;
  if (a3 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; v20 = v32)
  {
    v35 = a7;
    a7 = 0;
    v45 = a3 & 0xFFFFFFFFFFFFFF8;
    v46 = a3 & 0xC000000000000001;
    v42 = (v41 + 32);
    v43 = (v41 + 48);
    v48 = v20;
    v49 = _swiftEmptyArrayStorage;
    v36 = a1;
    v37 = a3;
    v44 = i;
    while (1)
    {
      if (v46)
      {
        v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (a7 >= *(v45 + 16))
        {
          goto LABEL_20;
        }

        v20 = *(a3 + 8 * a7 + 32);
      }

      v23 = v20;
      v24 = (a7 + 1);
      if (__OFADD__(a7, 1))
      {
        break;
      }

      v50 = v20;
      a1(&v50);
      if (v7)
      {

        return v49;
      }

      v25 = v48;
      if ((*v43)(v15, 1, v48) == 1)
      {
        v20 = sub_1000050A4(v15, v39, v40);
      }

      else
      {
        v26 = *v42;
        v27 = v38;
        (*v42)(v38);
        (v26)(v47, v27, v25);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v49 = v35(0, v49[2] + 1, 1);
        }

        v29 = v49[2];
        v28 = v49[3];
        if (v29 >= v28 >> 1)
        {
          v49 = (v35)(v28 > 1, v29 + 1, 1, v49);
        }

        v30 = v48;
        v31 = v49;
        v49[2] = v29 + 1;
        v20 = (v26)(v31 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v29, v47, v30);
        a1 = v36;
        a3 = v37;
      }

      ++a7;
      if (v24 == v44)
      {
        return v49;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    v32 = v20;
    i = _CocoaArrayWrapper.endIndex.getter();
  }

  return _swiftEmptyArrayStorage;
}

void *sub_1003E0E34(void (*a1)(__n128 *__return_ptr, id *), uint64_t a2, unint64_t a3, uint64_t (*a4)(BOOL, unint64_t, uint64_t, void *, __n128))
{
  if (a3 >> 62)
  {
    goto LABEL_20;
  }

  v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v6)
  {
    do
    {
      v7 = 0;
      v19 = a4;
      v8 = _swiftEmptyArrayStorage;
      while (1)
      {
        if ((a3 & 0xC000000000000001) != 0)
        {
          v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v7 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_19;
          }

          v9 = *(a3 + 8 * v7 + 32);
        }

        v10 = v9;
        v11 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        v23 = v9;
        a1(&v22, &v23);
        if (v4)
        {

          return v8;
        }

        if (v22.n128_u64[0])
        {
          v21 = v22;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = (v19)(0, v8[2] + 1, 1, v8);
          }

          v13 = v8[2];
          v12 = v8[3];
          v14 = v21;
          if (v13 >= v12 >> 1)
          {
            v15 = v19(v12 > 1, v13 + 1, 1, v8, v21);
            v14 = v21;
            v8 = v15;
          }

          v8[2] = v13 + 1;
          *&v8[2 * v13 + 4] = v14;
        }

        ++v7;
        if (v11 == v6)
        {
          return v8;
        }
      }

      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      v16 = a4;
      v17 = _CocoaArrayWrapper.endIndex.getter();
      a4 = v16;
      v6 = v17;
    }

    while (v17);
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_1003E1008()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100945DD8);
  v1 = sub_100006654(v0, qword_100945DD8);
  if (qword_100936420 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100974FA8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_1003E10D0()
{
  result = [objc_opt_self() alarmEngine];
  qword_100945DF0 = result;
  return result;
}

uint64_t sub_1003E11A4()
{
  v1 = v0;
  v2 = type metadata accessor for OSSignpostID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100936010 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100006654(v7, qword_100945DD8);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "os_transaction INIT {name: com.apple.remindd.RDTimeAlarmProducer.reload}", v10, 2u);
  }

  v17[1] = os_transaction_create();
  static os_signpost_type_t.begin.getter();
  if (qword_100936018 != -1)
  {
    swift_once();
  }

  v11 = qword_100945DF0;
  static OSSignpostID.exclusive.getter();
  v17[0] = v11;
  os_signpost(_:dso:log:name:signpostID:)();
  v12 = *(v3 + 8);
  v12(v6, v2);
  v13 = *sub_10000F61C((v1 + OBJC_IVAR____TtC7remindd19RDTimeAlarmProducer_dataSource), *(v1 + OBJC_IVAR____TtC7remindd19RDTimeAlarmProducer_dataSource + 24));
  static os_signpost_type_t.begin.getter();
  if (qword_1009360B0 != -1)
  {
    swift_once();
  }

  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  v12(v6, v2);

  v15 = sub_100412834(v14);

  static os_signpost_type_t.end.getter();
  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  v12(v6, v2);
  sub_1003E1524(v15);
  sub_1003E1A6C(v15);

  static os_signpost_type_t.end.getter();
  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  v12(v6, v2);
  sub_1003E4294();
  return swift_unknownObjectRelease();
}

void sub_1003E1524(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  isa = v4[-1].isa;
  v6 = *(isa + 8);
  __chkstk_darwin(v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OSSignpostID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + OBJC_IVAR____TtC7remindd19RDTimeAlarmProducer_started) == 1)
  {
    v34 = v4;
    static os_signpost_type_t.begin.getter();
    if (qword_100936018 != -1)
    {
      swift_once();
    }

    v33 = isa;
    v14 = qword_100945DF0;
    static OSSignpostID.exclusive.getter();
    v32 = v14;
    os_signpost(_:dso:log:name:signpostID:)();
    v31 = *(v10 + 8);
    v31(v13, v9);
    if (qword_100936010 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100006654(v15, qword_100945DD8);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "RDTimeAlarmProducer is firing expired alarms", v18, 2u);
    }

    v19 = Date.init(timeIntervalSinceNow:)();
    __chkstk_darwin(v19);
    *(&v30 - 2) = v8;
    v20 = sub_1003DFE04(sub_1003E4450, (&v30 - 4), a1);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 134217984;
      *(v23 + 4) = v20[2];
      _os_log_impl(&_mh_execute_header, v21, v22, "RDTimeAlarmProducer is firing expired alarms, count = %ld", v23, 0xCu);
    }

    Strong = swift_unknownObjectUnownedLoadStrong();
    __chkstk_darwin(Strong);
    *(&v30 - 2) = v8;
    v25 = sub_10024D7DC(sub_1003E446C, (&v30 - 4), v20);

    sub_1002928F8(v2, v25, Strong);

    swift_unknownObjectRelease();
    (*(v33 + 1))(v8, v34);
    static os_signpost_type_t.end.getter();
    static OSSignpostID.exclusive.getter();
    os_signpost(_:dso:log:name:signpostID:)();
    v31(v13, v9);
  }

  else
  {
    if (qword_100936010 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_100006654(v26, qword_100945DD8);
    v34 = Logger.logObject.getter();
    v27 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v34, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v34, v27, "RDTimeAlarmProducer.start() must be called before fireExpiredAlarms", v28, 2u);
    }

    v29 = v34;
  }
}

void sub_1003E1A6C(void *a1)
{
  v152 = a1;
  v2 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v133 - v4;
  v6 = sub_1000F5104(&qword_100945E58, &unk_1007ACAD0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v148 = (&v133 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v9);
  v149 = (&v133 - v10);
  v156 = sub_1000F5104(&unk_1009464C0, &qword_10079D360);
  isa = v156[-1].isa;
  v12 = *(isa + 8);
  __chkstk_darwin(v156);
  v143 = &v133 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v147 = (&v133 - v15);
  __chkstk_darwin(v16);
  v18 = &v133 - v17;
  __chkstk_darwin(v19);
  v21 = &v133 - v20;
  __chkstk_darwin(v22);
  v24 = &v133 - v23;
  v154 = type metadata accessor for Date();
  v150 = *(v154 - 8);
  v25 = *(v150 + 64);
  __chkstk_darwin(v154);
  v141 = &v133 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v142 = &v133 - v28;
  __chkstk_darwin(v29);
  v151 = &v133 - v30;
  __chkstk_darwin(v31);
  v146 = &v133 - v32;
  __chkstk_darwin(v33);
  v155 = &v133 - v34;
  v35 = type metadata accessor for OSSignpostID();
  v36 = *(v35 - 8);
  v37 = v36[8];
  __chkstk_darwin(v35);
  v39 = &v133 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = v1;
  v40 = &qword_100936000;
  if (*(v1 + OBJC_IVAR____TtC7remindd19RDTimeAlarmProducer_started) == 1)
  {
    v144 = v24;
    v135 = v5;
    static os_signpost_type_t.begin.getter();
    if (qword_100936018 != -1)
    {
      goto LABEL_49;
    }

    while (1)
    {
      v41 = qword_100945DF0;
      static OSSignpostID.exclusive.getter();
      v137 = v41;
      os_signpost(_:dso:log:name:signpostID:)();
      v43 = v36[1];
      v42 = (v36 + 1);
      v145 = v39;
      v139 = v35;
      v138 = v43;
      v43(v39, v35);
      v44 = v154;
      if (v40[2] != -1)
      {
        swift_once();
      }

      v45 = type metadata accessor for Logger();
      v136 = sub_100006654(v45, qword_100945DD8);
      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        *v48 = 0;
        _os_log_impl(&_mh_execute_header, v46, v47, "RDTimeAlarmProducer is setting up the timers", v48, 2u);
        v44 = v154;
      }

      v49 = v155;
      v50 = Date.init()();
      __chkstk_darwin(v50);
      *(&v133 - 2) = v49;
      v51 = sub_1003DFE04(sub_1003E437C, (&v133 - 4), v152);
      v35 = v51;
      v40 = v51[2];
      v140 = v42;
      if (!v40)
      {
        break;
      }

      v52 = v153;
      v39 = v51 + ((*(isa + 80) + 32) & ~*(isa + 80));
      sub_1003E4398(v39, v21);
      if (v40 == 1)
      {
LABEL_9:

        v53 = v148;
        sub_100031B58(v21, v148, &unk_1009464C0, &qword_10079D360);
        v54 = 0;
        v55 = v52;
        v44 = v154;
        goto LABEL_18;
      }

      v112 = 1;
      v36 = &unk_1009464C0;
      while (v112 < *(v35 + 16))
      {
        sub_1003E4398(&v39[*(isa + 9) * v112], v18);
        isa_low = SLODWORD(v156[6].isa);
        if (static Date.< infix(_:_:)())
        {
          sub_1000050A4(v21, &unk_1009464C0, &qword_10079D360);
          sub_100031B58(v18, v21, &unk_1009464C0, &qword_10079D360);
        }

        else
        {
          sub_1000050A4(v18, &unk_1009464C0, &qword_10079D360);
        }

        if (v40 == ++v112)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
LABEL_49:
      swift_once();
    }

    v54 = 1;
    v55 = v153;
    v53 = v148;
LABEL_18:
    v60 = v156;
    (*(isa + 7))(v53, v54, 1, v156);
    v61 = v149;
    sub_100031B58(v53, v149, &qword_100945E58, &unk_1007ACAD0);
    v62 = (*(isa + 6))(v61, 1, v60);
    v63 = v144;
    v64 = v145;
    v65 = v151;
    if (v62 == 1)
    {
      sub_1000050A4(v61, &qword_100945E58, &unk_1007ACAD0);
      v66 = Logger.logObject.getter();
      v67 = static os_log_type_t.default.getter();
      v68 = os_log_type_enabled(v66, v67);
      v69 = v150;
      if (v68)
      {
        v70 = swift_slowAlloc();
        *v70 = 0;
        _os_log_impl(&_mh_execute_header, v66, v67, "No alarm with future fireDate -- Done", v70, 2u);
      }

      v71 = v139;
      if (*(v55 + OBJC_IVAR____TtC7remindd19RDTimeAlarmProducer_beforeFirstUnlockNotificationEngine))
      {
        v72 = v135;
        (*(v69 + 56))(v135, 1, 1, v44);
        sub_10030418C(v72);
        sub_1000050A4(v72, &unk_100938850, qword_100795AE0);
      }

      (*(v69 + 8))(v155, v44);
      static os_signpost_type_t.end.getter();
      static OSSignpostID.exclusive.getter();
      os_signpost(_:dso:log:name:signpostID:)();
      v138(v64, v71);
    }

    else
    {
      sub_100031B58(v61, v144, &unk_1009464C0, &qword_10079D360);
      v73 = v146;
      Date.init()();
      v74 = v150;
      v75 = v155;
      v149 = *(v150 + 8);
      (v149)(v155, v44);
      v76 = *(v74 + 32);
      v76(v75, v73, v44);
      v77 = v147;
      sub_1003E4398(v63, v147);

      v76(v65, v77 + SLODWORD(v60[6].isa), v44);
      if (static Date.> infix(_:_:)())
      {
        sub_1003E4398(v63, v77);
        v78 = *v77;

        (v149)(v77 + SLODWORD(v156[6].isa), v44);
        v79 = (v74 + 16);
        v80 = *(v74 + 16);
        v81 = v142;
        v146 = v79;
        v141 = v80;
        (v80)(v142, v65, v44);
        v82 = v143;
        sub_1003E4398(v63, v143);
        v83 = v78;
        v84 = Logger.logObject.getter();
        LODWORD(v78) = static os_log_type_t.default.getter();
        v152 = v83;

        LODWORD(v136) = v78;
        v148 = v84;
        if (os_log_type_enabled(v84, v78))
        {
          v85 = swift_slowAlloc();
          v86 = swift_slowAlloc();
          v134 = swift_slowAlloc();
          v158[0] = v134;
          *v85 = 136447234;
          sub_1003E4408(&qword_100937010, 255, &type metadata accessor for Date);
          v87 = dispatch thunk of CustomStringConvertible.description.getter();
          v88 = v82;
          v90 = v89;
          v91 = v81;
          v92 = v149;
          (v149)(v91, v44);
          v93 = sub_10000668C(v87, v90, v158);

          *(v85 + 4) = v93;
          *(v85 + 12) = 2080;
          sub_1003E4398(v88, v77);
          v94 = SLODWORD(v156[6].isa);
          v157 = *v77;
          v95 = String.init<A>(describing:)();
          v97 = v96;
          sub_1000050A4(v88, &unk_1009464C0, &qword_10079D360);
          v92(v77 + v94, v44);
          v98 = sub_10000668C(v95, v97, v158);

          *(v85 + 14) = v98;
          *(v85 + 22) = 2114;
          v99 = v152;
          v100 = [v152 objectID];
          *(v85 + 24) = v100;
          v101 = v86;
          *v86 = v100;
          *(v85 + 32) = 2082;
          if ([v99 isRecurrent])
          {
            v102 = 89;
          }

          else
          {
            v102 = 78;
          }

          v103 = sub_10000668C(v102, 0xE100000000000000, v158);

          *(v85 + 34) = v103;
          *(v85 + 42) = 2082;
          v63 = v144;
          v104 = v153;
          if ([v99 isOverdue])
          {
            v105 = 89;
          }

          else
          {
            v105 = 78;
          }

          v106 = v154;
          v107 = v145;
          v108 = sub_10000668C(v105, 0xE100000000000000, v158);

          *(v85 + 44) = v108;
          v109 = v148;
          _os_log_impl(&_mh_execute_header, v148, v136, "Scheduling next alarm {fireDate: %{public}s, nextAlarm: %s, reminderID: %{public}@, recurrent: %{public}s, overdue: %{public}s}", v85, 0x34u);
          sub_1000050A4(v101, &unk_100938E70, &unk_100797230);

          swift_arrayDestroy();

          v65 = v151;

          v110 = v135;
          v111 = v92;
        }

        else
        {

          sub_1000050A4(v82, &unk_1009464C0, &qword_10079D360);
          v106 = v44;
          v111 = v149;
          (v149)(v81, v44);
          v110 = v135;
          v104 = v153;
          v107 = v145;
        }

        v129 = v104;
        v130 = *(v104 + OBJC_IVAR____TtC7remindd19RDTimeAlarmProducer_beforeFirstUnlockNotificationEngine);
        v128 = v139;
        if (v130)
        {
          (v141)(v110, v65, v106);
          (*(v150 + 56))(v110, 0, 1, v106);
          sub_10030418C(v110);
          sub_1000050A4(v110, &unk_100938850, qword_100795AE0);
        }

        v131 = *(v129 + OBJC_IVAR____TtC7remindd19RDTimeAlarmProducer_timeEventStream);
        sub_1003B80B8(v65);

        v111(v65, v106);
        sub_1000050A4(v63, &unk_1009464C0, &qword_10079D360);
        v111(v155, v106);
        static os_signpost_type_t.end.getter();
        static OSSignpostID.exclusive.getter();
        os_signpost(_:dso:log:name:signpostID:)();
        v132 = v107;
      }

      else
      {
        v114 = v149;
        v115 = v74;
        v116 = v44;
        v117 = v141;
        (*(v115 + 16))(v141, v65, v44);
        v118 = Logger.logObject.getter();
        v119 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v118, v119))
        {
          v120 = v117;
          v121 = swift_slowAlloc();
          v122 = swift_slowAlloc();
          *&v157 = v122;
          *v121 = 136446210;
          v123 = Date.description.getter();
          v125 = v124;
          v114(v120, v116);
          v126 = sub_10000668C(v123, v125, &v157);
          v65 = v151;

          *(v121 + 4) = v126;
          _os_log_impl(&_mh_execute_header, v118, v119, "Next alarm is in the past -- Not adding event {fireDate: %{public}s}", v121, 0xCu);
          sub_10000607C(v122);
          v127 = v145;

          v128 = v139;
        }

        else
        {

          v114(v117, v44);
          v128 = v139;
          v127 = v145;
        }

        sub_1003E1524(v152);
        v114(v65, v116);
        sub_1000050A4(v144, &unk_1009464C0, &qword_10079D360);
        v114(v155, v116);
        static os_signpost_type_t.end.getter();
        static OSSignpostID.exclusive.getter();
        os_signpost(_:dso:log:name:signpostID:)();
        v132 = v127;
      }

      v138(v132, v128);
    }
  }

  else
  {
    if (qword_100936010 != -1)
    {
      swift_once();
    }

    v56 = type metadata accessor for Logger();
    sub_100006654(v56, qword_100945DD8);
    v156 = Logger.logObject.getter();
    v57 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v156, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&_mh_execute_header, v156, v57, "RDTimeAlarmProducer.start() must be called before setupTimers", v58, 2u);
    }

    v59 = v156;
  }
}

uint64_t sub_1003E2B64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v62 = a3;
  v65 = a2;
  v4 = type metadata accessor for Date();
  v58 = *(v4 - 8);
  v5 = v58;
  v6 = *(v58 + 64);
  __chkstk_darwin(v4);
  v59 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v57 - v9;
  __chkstk_darwin(v11);
  v64 = &v57 - v12;
  v13 = sub_1000F5104(&unk_1009464C0, &qword_10079D360);
  v14 = v13 - 8;
  v15 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v17 = &v57 - v16;
  sub_1003E4398(a1, &v57 - v16);
  v19 = *v17;
  v18 = *(v17 + 1);
  v20 = *(v5 + 8);
  v20(&v17[*(v14 + 56)], v4);
  sub_1003E4398(a1, v17);
  v21 = *v17;
  v22 = v19;
  v23 = v18;
  v24 = v64;
  v60 = v23;

  v25 = *(v14 + 56);
  v26 = v58;
  (*(v58 + 32))(v24, &v17[v25], v4);
  sub_1003E448C();
  static NSDateInterval.remNotificationFireDateGracePeriod.getter();
  Date.addingTimeInterval(_:)();
  v63 = static Date.> infix(_:_:)();
  v61 = v20;
  v65 = v5 + 8;
  v20(v10, v4);
  if (qword_100936010 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  sub_100006654(v27, qword_100945DD8);
  v28 = v59;
  (*(v26 + 16))(v59, v24, v4);
  v29 = v22;
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v57 = v33;
    v58 = swift_slowAlloc();
    v66 = v58;
    *v32 = 138544130;
    v34 = [v29 objectID];
    *(v32 + 4) = v34;
    *v33 = v34;
    *(v32 + 12) = 2082;
    v35 = Date.description.getter();
    v37 = v36;
    v38 = v28;
    v39 = v61;
    v61(v38, v4);
    v40 = sub_10000668C(v35, v37, &v66);

    *(v32 + 14) = v40;
    *(v32 + 22) = 2082;
    if (v63)
    {
      v41 = 0x657669746361;
    }

    else
    {
      v41 = 0x65766973736170;
    }

    if (v63)
    {
      v42 = 0xE600000000000000;
    }

    else
    {
      v42 = 0xE700000000000000;
    }

    v43 = sub_10000668C(v41, v42, &v66);

    *(v32 + 24) = v43;
    *(v32 + 32) = 2082;
    v24 = v64;
    if ([v29 isRecurrent])
    {
      v44 = 89;
    }

    else
    {
      v44 = 78;
    }

    v45 = sub_10000668C(v44, 0xE100000000000000, &v66);

    *(v32 + 34) = v45;
    _os_log_impl(&_mh_execute_header, v30, v31, "RDTimeAlarmProducer expiredAlarm {reminderID: %{public}@, fireDate: %{public}s alarmType: %{public}s, recurrent: %{public}s}", v32, 0x2Au);
    sub_1000050A4(v57, &unk_100938E70, &unk_100797230);

    swift_arrayDestroy();
  }

  else
  {

    v46 = v28;
    v39 = v61;
    v61(v46, v4);
  }

  v47 = v60;
  v48 = sub_1007467B8(v60);
  v50 = v49;
  v52 = v51;
  v54 = v53;

  result = v39(v24, v4);
  v56 = v62;
  *v62 = v29;
  v56[1] = v48;
  v56[2] = v50;
  v56[3] = v52;
  *(v56 + 32) = v54;
  *(v56 + 33) = (v63 & 1) == 0;
  *(v56 + 34) = 1;
  return result;
}

void sub_1003E313C()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = (&v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *&v0[OBJC_IVAR____TtC7remindd19RDTimeAlarmProducer_queue];
  *v6 = v7;
  (*(v2 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v1, v4);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v6, v1);
  if ((v7 & 1) == 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v0[OBJC_IVAR____TtC7remindd19RDTimeAlarmProducer_started])
  {
    if (qword_100936010 == -1)
    {
LABEL_4:
      v9 = type metadata accessor for Logger();
      sub_100006654(v9, qword_100945DD8);
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v10, v11, "RDTimeAlarmProducer.start() must be called exactly once", v12, 2u);
      }

      return;
    }

LABEL_13:
    swift_once();
    goto LABEL_4;
  }

  v0[OBJC_IVAR____TtC7remindd19RDTimeAlarmProducer_started] = 1;
  if (qword_100936010 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100006654(v13, qword_100945DD8);
  v14 = v0;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 136315138;
    v29 = 60;
    v30 = 0xE100000000000000;
    v31 = v18;
    v19._countAndFlagsBits = sub_100597C80(v14);
    String.append(_:)(v19);

    v20._countAndFlagsBits = 62;
    v20._object = 0xE100000000000000;
    String.append(_:)(v20);
    v21 = sub_10000668C(v29, v30, &v31);

    *(v17 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v15, v16, "Starting time alarm producer {producer: %s}", v17, 0xCu);
    sub_10000607C(v18);
  }

  v22 = *&v14[OBJC_IVAR____TtC7remindd19RDTimeAlarmProducer_timeEventStream];
  v23 = *&v14[OBJC_IVAR____TtC7remindd19RDTimeAlarmProducer_timeEventStream + 8];
  ObjectType = swift_getObjectType();
  v25 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v26 = *(v23 + 8);
  v27 = *(v26 + 16);

  v27(sub_1003E44D8, v25, ObjectType, v26);

  sub_1003E11A4();
}

void sub_1003E3504()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (qword_100936010 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100006654(v2, qword_100945DD8);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Received RDTimeEventHandler event on RDTimeAlarmProducer, reloading alarms.", v5, 2u);
    }

    sub_1003E11A4();
  }

  else
  {
    if (qword_100936010 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100006654(v6, qword_100945DD8);
    v1 = Logger.logObject.getter();
    v7 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v1, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v1, v7, "Received RDTimeEventHandler event on deallocated RDTimeAlarmProducer", v8, 2u);
    }
  }
}

uint64_t sub_1003E36C4()
{
  if (qword_100936010 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100006654(v0, qword_100945DD8);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Alarm trigger did change for time alarm producer", v3, 2u);
  }

  return sub_1003E11A4();
}

uint64_t sub_1003E3814@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = type metadata accessor for DateComponents();
  v5 = *(v44 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v44);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v42 - v10;
  v12 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v42 - v14;
  v16 = type metadata accessor for Date();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  *&v19 = __chkstk_darwin(v16).n128_u64[0];
  v21 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = [a1 dueDateComponents];
  if (v22)
  {
    v43 = v2;
    v23 = a1;
    v24 = v17;
    v25 = v16;
    v26 = a2;
    v27 = v22;
    static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

    a2 = v26;
    v16 = v25;
    v17 = v24;
    a1 = v23;
    v28 = v44;
    (*(v5 + 32))(v11, v8, v44);
    sub_1004F20E4(v15);
    (*(v5 + 8))(v11, v28);
    if ((*(v17 + 48))(v15, 1, v16) != 1)
    {
      (*(v17 + 32))(v21, v15, v16);
      [v43 timeInterval];
      Date.addingTimeInterval(_:)();
      (*(v17 + 8))(v21, v16);
      v29 = 0;
      return (*(v17 + 56))(a2, v29, 1, v16);
    }
  }

  else
  {
    (*(v17 + 56))(v15, 1, 1, v16);
  }

  sub_1000050A4(v15, &unk_100938850, qword_100795AE0);
  if (qword_100936010 != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  sub_100006654(v30, qword_100945DD8);
  v31 = a1;
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v45 = v35;
    *v34 = 136315138;
    v36 = [v31 description];
    v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = v38;

    v40 = sub_10000668C(v37, v39, &v45);

    *(v34 + 4) = v40;
    _os_log_impl(&_mh_execute_header, v32, v33, "Tried to fire timeInterval alarm with nil dueDate {reminder: %s}", v34, 0xCu);
    sub_10000607C(v35);
  }

  v29 = 1;
  return (*(v17 + 56))(a2, v29, 1, v16);
}

uint64_t sub_1003E3C78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t, uint64_t, char *)@<X2>, uint64_t a4@<X8>)
{
  v25 = a3;
  v26 = a4;
  v6 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v24 - v11;
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v18 = v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v14 + 56);
  v19(v9, 1, 1, v13, v16);
  v25(a1, a2, v9);
  sub_1000050A4(v9, &unk_100938850, qword_100795AE0);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1000050A4(v12, &unk_100938850, qword_100795AE0);
    v20 = 1;
    v21 = v26;
  }

  else
  {
    (*(v14 + 32))(v18, v12, v13);
    [v24[1] timeInterval];
    v22 = v26;
    Date.addingTimeInterval(_:)();
    (*(v14 + 8))(v18, v13);
    v20 = 0;
    v21 = v22;
  }

  return (v19)(v21, v20, 1, v13);
}

uint64_t sub_1003E3F60@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for DateComponents();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  *&v6 = __chkstk_darwin(v3).n128_u64[0];
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [*v1 dateComponents];
  static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1004F20E4(a1);
  return (*(v4 + 8))(v8, v3);
}

uint64_t sub_1003E4088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, char *))
{
  v9 = type metadata accessor for DateComponents();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v15 = *(*(v14 - 8) + 64);
  *&v16 = __chkstk_darwin(v14 - 8).n128_u64[0];
  v18 = &v21 - v17;
  v19 = [*v5 dateComponents];
  static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1004F20E4(v18);
  (*(v10 + 8))(v13, v9);
  a5(a1, a2, v18);
  return sub_1000050A4(v18, &unk_100938850, qword_100795AE0);
}

uint64_t sub_1003E423C(uint64_t a1, uint64_t a2)
{
  result = sub_1003E4408(&qword_100945E50, a2, type metadata accessor for RDTimeAlarmProducer);
  *(a1 + 8) = result;
  return result;
}

void sub_1003E4294()
{
  if (qword_100936010 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100006654(v0, qword_100945DD8);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "os_transaction RELEASE {name: com.apple.remindd.RDTimeAlarmProducer.reload}", v2, 2u);
  }
}

uint64_t sub_1003E4398(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F5104(&unk_1009464C0, &qword_10079D360);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003E4408(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_1003E448C()
{
  result = qword_100945E60;
  if (!qword_100945E60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100945E60);
  }

  return result;
}

uint64_t sub_1003E44E0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1000F514C(&qword_10093EDF8, &qword_10079D5B0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_1003E4560()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RDXPCDaemon();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *sub_1003E4674()
{
  v1 = *(v0 + OBJC_IVAR____TtC7remindd11RDXPCDaemon_indexingPerformer);
  v2 = v1;
  return v1;
}

unint64_t sub_1003E46A4()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = sub_1005D13D0();

    return v2;
  }

  else
  {

    return sub_10038E004(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_1003E470C(void *a1, uint64_t a2, NSObject *a3)
{
  v73 = a3;
  v69 = a2;
  v4 = type metadata accessor for RDStoreControllerNotificationCenter.Token(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v71 = v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for UUID();
  v7 = *(v75 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v75);
  v10 = v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v15 = v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = v63 - v16;
  v18 = objc_opt_self();
  v70 = a1;
  v19 = [a1 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  UUID.uuidString.getter();
  (*(v7 + 8))(v10, v75);
  v20 = String._bridgeToObjectiveC()();

  v21 = [v18 urlForIsolatedContainerWithIdentifier:v20];

  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v81 = 0;
  v22 = v73;
  v23 = *(&v73->isa + OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_accessQueue);
  v24 = *(v12 + 16);
  v74 = v17;
  v25 = v17;
  v26 = v13;
  v68 = v12 + 16;
  v67 = v24;
  v24(v15, v25, v11);
  v27 = *(v12 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = &v81;
  *(v28 + 24) = v22;
  v29 = v22;
  v72 = v12;
  v30 = *(v12 + 32);
  v65 = v15;
  v75 = v11;
  v31 = v11;
  v32 = v28;
  v66 = v30;
  v30(v28 + ((v27 + 32) & ~v27), v15, v31);
  v33 = swift_allocObject();
  *(v33 + 16) = sub_1003E55C8;
  *(v33 + 24) = v32;
  *&v80 = sub_100008D30;
  *(&v80 + 1) = v33;
  aBlock = _NSConcreteStackBlock;
  v77 = 1107296256;
  v78 = sub_10000F160;
  v79 = &unk_1008F0488;
  v34 = _Block_copy(&aBlock);
  v35 = v29;

  v73 = v23;
  dispatch_sync(v23, v34);
  _Block_release(v34);
  LOBYTE(v34) = swift_isEscapingClosureAtFileLocation();

  if (v34)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_5;
  }

  if (v81)
  {
    v36 = *(v72 + 8);
    v37 = v81;
    v36(v74, v75);
    v38 = 0;
    v39 = 0;
LABEL_7:
    v62 = v81;

    sub_1000FDA80(v38, v39);
    return v37;
  }

  v64 = v35;
  v63[1] = v32;
  v23 = ~v27;
  v40 = objc_allocWithZone(RDStoreController);
  v32 = v74;
  URL._bridgeToObjectiveC()(v41);
  v43 = v42;
  v44 = [v40 initWithIsolatedReminderDataContainerURL:v42];

  type metadata accessor for RDAccountUtils();
  v45 = swift_allocObject();
  *(v45 + 24) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v45 + 24) = &off_1008F03B0;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  v46 = v70;
  *(v45 + 40) = v70;
  v47 = v46;
  [v44 setAccountUtils:v45];

  v82[0] = 0x4014000000000000;
  type metadata accessor for RDStoreControllerNotificationCenter();
  memset(&v82[1], 0, 24);
  v83 = 0;
  swift_allocObject();
  v48 = v44;
  v35 = sub_1004417C4(0, 0, v48, v82);
  v70 = v48;

  if (qword_100935D20 != -1)
  {
    goto LABEL_9;
  }

LABEL_5:
  v49 = v71;
  sub_10043B68C(qword_100974CB8, sub_10016824C, 0, v71);
  sub_1000FBE54(v49);
  v50 = v65;
  v51 = v32;
  v52 = v75;
  v67(v65, v51, v75);
  v53 = (v27 + 16) & v23;
  v54 = (v26 + v53 + 7) & 0xFFFFFFFFFFFFFFF8;
  v55 = (v54 + 15) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  v66(v39 + v53, v50, v52);
  v56 = v64;
  *(v39 + v54) = v64;
  v57 = v70;
  *(v39 + v55) = v70;
  *(v39 + ((v55 + 15) & 0xFFFFFFFFFFFFFFF8)) = v35;
  v58 = swift_allocObject();
  *(v58 + 16) = sub_1003E562C;
  *(v58 + 24) = v39;
  *&v80 = sub_10000F188;
  *(&v80 + 1) = v58;
  aBlock = _NSConcreteStackBlock;
  v77 = 1107296256;
  v78 = sub_10000F160;
  v79 = &unk_1008F0500;
  v59 = _Block_copy(&aBlock);
  v60 = v56;
  v37 = v57;

  dispatch_sync(v73, v59);
  _Block_release(v59);
  LOBYTE(v59) = swift_isEscapingClosureAtFileLocation();

  if ((v59 & 1) == 0)
  {
    aBlock = 0xD000000000000025;
    v77 = 0x80000001007F7DE0;
    v79 = 0;
    *&v80 = 0;
    v78 = 0;
    *(&v80 + 6) = 0;
    __chkstk_darwin(result);
    v63[-2] = v37;
    sub_100014A64(&aBlock, sub_1003E56D0, &v63[-4]);
    (*(v72 + 8))(v74, v75);

    v38 = sub_1003E562C;
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

id sub_1003E4F84(void *a1)
{
  if (a1)
  {
    v2 = *(v1 + OBJC_IVAR____TtC7remindd11RDXPCDaemon_debugPerformer);
    v3 = a1;
    v4 = sub_1003E470C(v3, v1, v2);
    v5 = type metadata accessor for RDXPCChangeTrackingPerformer();
    v6 = objc_allocWithZone(v5);
    v7 = type metadata accessor for REMNSPersistentHistoryTracking();
    v8 = objc_allocWithZone(v7);
    *&v8[OBJC_IVAR____TtC7remindd30REMNSPersistentHistoryTracking_storeController] = v4;
    v19.receiver = v8;
    v19.super_class = v7;
    v9 = v4;
    *&v6[OBJC_IVAR____TtC7remindd28RDXPCChangeTrackingPerformer_implementation] = objc_msgSendSuper2(&v19, "init");
    v18.receiver = v6;
    v18.super_class = v5;
    v10 = objc_msgSendSuper2(&v18, "init");

    return v10;
  }

  else
  {
    v12 = *(v1 + OBJC_IVAR____TtC7remindd11RDXPCDaemon_storeController);
    v13 = type metadata accessor for RDXPCChangeTrackingPerformer();
    v14 = objc_allocWithZone(v13);
    v15 = type metadata accessor for REMNSPersistentHistoryTracking();
    v16 = objc_allocWithZone(v15);
    *&v16[OBJC_IVAR____TtC7remindd30REMNSPersistentHistoryTracking_storeController] = v12;
    v21.receiver = v16;
    v21.super_class = v15;
    v17 = v12;
    *&v14[OBJC_IVAR____TtC7remindd28RDXPCChangeTrackingPerformer_implementation] = objc_msgSendSuper2(&v21, "init");
    v20.receiver = v14;
    v20.super_class = v13;
    return objc_msgSendSuper2(&v20, "init");
  }
}

char *sub_1003E50E0(void *a1)
{
  v3 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for OS_dispatch_queue.Attributes();
  v8 = *(*(v39 - 8) + 64);
  __chkstk_darwin(v39);
  v10 = v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v13 = type metadata accessor for DispatchQoS.QoSClass();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return *(v1 + OBJC_IVAR____TtC7remindd11RDXPCDaemon_debugPerformer);
  }

  v34 = v3;
  v18 = *(v1 + OBJC_IVAR____TtC7remindd11RDXPCDaemon_debugPerformer);
  v36 = sub_1003E470C(a1, v1, v18);
  v37 = a1;
  v19 = OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_notificationCenter;
  v38 = v1;
  v20 = OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_locationManager;
  v21 = type metadata accessor for RDXPCDebugPerformer();
  v32 = "Contact Interaction";
  v33 = v21;
  v35 = *(&v18->isa + v20);
  v40 = *(&v18->isa + v19);
  v22 = objc_allocWithZone(v21);
  v30[1] = v10;
  v23 = v22;
  *&v22[OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_xpcDaemon + 8] = 0;
  swift_unknownObjectWeakInit();
  v24 = OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_q_storeControllerByContainerURL;
  v31 = v7;
  v25 = objc_opt_self();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  *&v23[v24] = [v25 strongToWeakObjectsMapTable];
  v26 = OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_q_storeControllerNotificationCenterByContainerURL;
  *&v23[v26] = [objc_opt_self() strongToStrongObjectsMapTable];
  v30[0] = OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_accessQueue;
  sub_100007F54();
  (*(v14 + 104))(v17, enum case for DispatchQoS.QoSClass.utility(_:), v13);
  static OS_dispatch_queue.global(qos:)();
  (*(v14 + 8))(v17, v13);
  static DispatchQoS.unspecified.getter();
  v42 = _swiftEmptyArrayStorage;
  sub_10000D458(&qword_100936EE0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000F5104(&unk_10093FEE0, &qword_100791B00);
  sub_10000CB90(&qword_100936EF0, &unk_10093FEE0, &qword_100791B00);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v4 + 104))(v31, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v34);
  *&v23[v30[0]] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *&v23[OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_manualHashtagLabelUpdater] = 0;
  v27 = v37;
  *&v23[OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_storeController] = v36;
  *&v23[OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_storeContainerToken] = v27;
  *&v23[OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_notificationCenter] = v40;
  *&v23[OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_locationManager] = v35;
  v41.receiver = v23;
  v41.super_class = v33;
  v28 = objc_msgSendSuper2(&v41, "init");
  *&v28[OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_xpcDaemon + 8] = &off_1008F03B0;
  swift_unknownObjectWeakAssign();
  return v28;
}

void sub_1003E55C8()
{
  v1 = *(*(type metadata accessor for URL() - 8) + 80);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);

  sub_1001681C4(v2, v3);
}

void sub_1003E562C()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = ((*(v1 + 80) + 16) & ~*(v1 + 80));
  v3 = (&v2->super.isa + *(v1 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + v3);
  v6 = *(v0 + v4);
  v7 = *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_100168340(v5, v6, v7, v2);
}

uint64_t sub_1003E56EC()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100945F00);
  v1 = sub_100006654(v0, qword_100945F00);
  if (qword_100936480 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009750C8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1003E57B4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_1003E57EC(unint64_t a1)
{
  if (qword_100936020 != -1)
  {
LABEL_56:
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = sub_100006654(v2, qword_100945F00);

  v52 = v3;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = a1 >> 62;
  if (os_log_type_enabled(v4, v5))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    aBlock = v8;
    *v7 = 134218242;
    if (v6)
    {
      goto LABEL_64;
    }

    v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
    *(v7 + 4) = v9;

    *(v7 + 6) = 2080;
    sub_1000060C8(0, &unk_10093F670, REMReminderStorage_ptr);
    v10 = Array.description.getter();
    v12 = sub_10000668C(v10, v11, &aBlock);

    *(v7 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "Processing %ld reminderStorages {reminderStorages: %s}", v7, 0x16u);
    sub_10000607C(v8);
  }

  else
  {
  }

  v5 = v52;
  if (v6)
  {
    v13 = _CocoaArrayWrapper.endIndex.getter();
    if (v13)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
LABEL_9:
      v14 = 0;
      v59 = 0;
      v55 = 0;
      v56 = 0;
      v54 = 0;
      v61 = 0;
      v62 = a1 & 0xC000000000000001;
      v57 = a1 & 0xFFFFFFFFFFFFFF8;
      v58 = a1;
      v60 = v13;
      while (1)
      {
        if (v62)
        {
          v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v14 >= *(v57 + 16))
          {
            goto LABEL_51;
          }

          v16 = *(a1 + 8 * v14 + 32);
        }

        v17 = v16;
        v6 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          goto LABEL_50;
        }

        v18 = [v16 siriFoundInAppsData];
        if (v18)
        {
          v19 = v18;
          v20 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v22 = v21;

          sub_1000060C8(0, &qword_100945FC8, SGRecordId_ptr);
          v23 = static SGRecordId.createFrom(data:)();
          if (v23)
          {
            v24 = v23;
            v25 = [v17 siriFoundInAppsUserConfirmation];
            if (v25)
            {
              if (v25 == 2)
              {
                a1 = v24;
                v26 = Logger.logObject.getter();
                v27 = static os_log_type_t.default.getter();

                if (os_log_type_enabled(v26, v27))
                {
                  log = v26;
                  v28 = swift_slowAlloc();
                  v29 = swift_slowAlloc();
                  *v28 = 138412290;
                  *(v28 + 4) = a1;
                  *v29 = v24;
                  v30 = a1;
                  _os_log_impl(&_mh_execute_header, log, v27, "CoreSuggestions rejectReminder sent {sgRecordID: %@}", v28, 0xCu);
                  sub_100039860(v29);
                  v5 = v52;

                  v26 = log;
                }

                v31 = *(v53 + 16);
                v67 = sub_1003E60D4;
                v68 = 0;
                aBlock = _NSConcreteStackBlock;
                v64 = 1107296256;
                v65 = sub_100042968;
                v66 = &unk_1008F0590;
                v32 = _Block_copy(&aBlock);
                [v31 rejectReminderByRecordId:a1 withCompletion:v32];

                sub_10001BBA0(v20, v22);
                _Block_release(v32);
                if (__OFADD__(v55, 1))
                {
                  goto LABEL_53;
                }

                ++v55;
                a1 = v58;
              }

              else
              {
                if (v25 != 1)
                {
                  sub_1001F67C8(_swiftEmptyArrayStorage);
                  sub_1001F67C8(_swiftEmptyArrayStorage);
                  sub_10054573C("unknown siriFoundInAppsUserConfirmation", 39, 2);
                  __break(1u);
                  return;
                }

                a1 = v24;
                v37 = Logger.logObject.getter();
                v38 = static os_log_type_t.default.getter();

                if (os_log_type_enabled(v37, v38))
                {
                  loga = v37;
                  v39 = swift_slowAlloc();
                  v40 = swift_slowAlloc();
                  *v39 = 138412290;
                  *(v39 + 4) = a1;
                  *v40 = v24;
                  v41 = a1;
                  _os_log_impl(&_mh_execute_header, loga, v38, "CoreSuggestions confirmReminder sent {sgRecordID: %@}", v39, 0xCu);
                  sub_100039860(v40);
                  v5 = v52;

                  v37 = loga;
                }

                v42 = *(v53 + 16);
                v67 = sub_1003E60C0;
                v68 = 0;
                aBlock = _NSConcreteStackBlock;
                v64 = 1107296256;
                v65 = sub_100042968;
                v66 = &unk_1008F05B8;
                v43 = _Block_copy(&aBlock);
                [v42 confirmReminderByRecordId:a1 withCompletion:v43];

                sub_10001BBA0(v20, v22);
                _Block_release(v43);
                if (__OFADD__(v54, 1))
                {
                  goto LABEL_55;
                }

                ++v54;
                a1 = v58;
              }
            }

            else
            {

              sub_10001BBA0(v20, v22);
              v15 = __OFADD__(v56++, 1);
              if (v15)
              {
                goto LABEL_54;
              }
            }
          }

          else
          {
            v7 = v17;
            sub_100029344(v20, v22);
            v4 = Logger.logObject.getter();
            v33 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v4, v33))
            {
              a1 = swift_slowAlloc();
              v8 = swift_slowAlloc();
              *a1 = 138412546;
              v34 = [v7 objectID];
              *(a1 + 4) = v34;
              *v8 = v34;
              *(a1 + 12) = 2048;
              v35 = v22 >> 62;
              if ((v22 >> 62) > 1)
              {
                if (v35 == 2)
                {
                  v46 = *(v20 + 16);
                  v45 = *(v20 + 24);
                  v15 = __OFSUB__(v45, v46);
                  v36 = v45 - v46;
                  if (v15)
                  {
                    goto LABEL_63;
                  }
                }

                else
                {
                  v36 = 0;
                }
              }

              else if (v35)
              {
                LODWORD(v36) = HIDWORD(v20) - v20;
                if (__OFSUB__(HIDWORD(v20), v20))
                {
                  __break(1u);
LABEL_63:
                  __break(1u);
LABEL_64:
                  v9 = _CocoaArrayWrapper.endIndex.getter();
                  goto LABEL_5;
                }

                v36 = v36;
              }

              else
              {
                v36 = BYTE6(v22);
              }

              *(a1 + 14) = v36;
              sub_10001BBA0(v20, v22);
              _os_log_impl(&_mh_execute_header, v4, v33, "Unable to get SGRecordId from siriFoundInAppsData. {reminderID: %@, siriFoundInAppsData.count: %ld}", a1, 0x16u);
              sub_100039860(v8);

              v44 = v4;
              a1 = v58;
            }

            else
            {
              sub_10001BBA0(v20, v22);
              v44 = v7;
              v7 = v4;
            }

            sub_10001BBA0(v20, v22);

            v15 = __OFADD__(v59++, 1);
            if (v15)
            {
              __break(1u);
LABEL_50:
              __break(1u);
LABEL_51:
              __break(1u);
LABEL_52:
              __break(1u);
LABEL_53:
              __break(1u);
LABEL_54:
              __break(1u);
LABEL_55:
              __break(1u);
              goto LABEL_56;
            }
          }

          v13 = v60;
        }

        else
        {

          v15 = __OFADD__(v61++, 1);
          if (v15)
          {
            goto LABEL_52;
          }
        }

        ++v14;
        if (v6 == v13)
        {
          goto LABEL_59;
        }
      }
    }
  }

  v61 = 0;
  v59 = 0;
  v55 = 0;
  v56 = 0;
  v54 = 0;
LABEL_59:
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    *v49 = 134219008;
    *(v49 + 4) = v54;
    *(v49 + 12) = 2048;
    *(v49 + 14) = v55;
    *(v49 + 22) = 2048;
    *(v49 + 24) = v56;
    *(v49 + 32) = 2048;
    *(v49 + 34) = v59;
    *(v49 + 42) = 2048;
    *(v49 + 44) = v61;
    _os_log_impl(&_mh_execute_header, v47, v48, "Done processing reminderStorages, counts {confirm: %ld, reject: %ld, none: %ld, error: %ld, irrelevant: %ld}", v49, 0x34u);
  }
}

void sub_1003E60E8(unint64_t a1)
{
  if (qword_100936020 != -1)
  {
LABEL_50:
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  v4 = sub_100006654(v3, qword_100945F00);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  v7 = a1 >> 62;
  if (!os_log_type_enabled(v5, v6))
  {

    goto LABEL_7;
  }

  v4 = swift_slowAlloc();
  v1 = swift_slowAlloc();
  aBlock[0] = v1;
  *v4 = 134218242;
  if (v7)
  {
    goto LABEL_57;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    *(v4 + 4) = i;

    *(v4 + 12) = 2080;
    sub_1000060C8(0, &unk_100942FB0, REMReminder_ptr);
    v9 = Array.description.getter();
    v11 = sub_10000668C(v9, v10, aBlock);

    *(v4 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "Processing %ld expiredReminders {reminders: %s}", v4, 0x16u);
    sub_10000607C(v1);

LABEL_7:
    if (v7)
    {
      v7 = _CocoaArrayWrapper.endIndex.getter();
      if (!v7)
      {
LABEL_52:
        v13 = 0;
        v58 = 0;
LABEL_53:
        v52 = Logger.logObject.getter();
        v53 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v52, v53))
        {
          v54 = swift_slowAlloc();
          *v54 = 134218240;
          *(v54 + 4) = v58;
          *(v54 + 12) = 2048;
          *(v54 + 14) = v13;
          _os_log_impl(&_mh_execute_header, v52, v53, "Done processing expiredReminders, counts {expire: %ld, error: %ld}", v54, 0x16u);
        }

        return;
      }
    }

    else
    {
      v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v7)
      {
        goto LABEL_52;
      }
    }

    if (v7 >= 1)
    {
      break;
    }

    __break(1u);
LABEL_57:
    ;
  }

  v13 = 0;
  v58 = 0;
  v14 = 0;
  v61 = a1 & 0xC000000000000001;
  *&v12 = 138412290;
  v55 = v12;
  v57 = a1;
  v60 = v7;
  while (1)
  {
    v20 = v61 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *(a1 + 8 * v14 + 32);
    v21 = v20;
    v22 = [v20 siriFoundInAppsData];
    if (v22)
    {
      break;
    }

    v32 = v21;
    v33 = Logger.logObject.getter();
    v1 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v33, v1))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = v55;
      v17 = [v32 objectID];
      *(v15 + 4) = v17;
      *v16 = v17;
      _os_log_impl(&_mh_execute_header, v33, v1, "Unable to find siriFoundInAppsData. {reminderID: %@}", v15, 0xCu);
      sub_100039860(v16);

      v7 = v60;

      v18 = v33;
    }

    else
    {
      v18 = v32;
      v32 = v33;
    }

    v19 = __OFADD__(v13++, 1);
    if (v19)
    {
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

LABEL_13:
    if (v7 == ++v14)
    {
      goto LABEL_53;
    }
  }

  v23 = v22;
  v24 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;

  sub_1000060C8(0, &qword_100945FC0, NSObject_ptr);
  v27 = [v21 list];
  v28 = [v27 objectID];

  v1 = [objc_opt_self() siriFoundInAppsListID];
  LOBYTE(v23) = static NSObject.== infix(_:_:)();

  if ((v23 & 1) == 0)
  {
    v59 = v24;
    v34 = v21;
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v1 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *v1 = 138412546;
      v38 = [v34 objectID];
      *(v1 + 4) = v38;
      *v37 = v38;
      *(v1 + 6) = 2112;
      v39 = [v34 list];
      v40 = [v39 objectID];

      *(v1 + 14) = v40;
      v37[1] = v40;
      _os_log_impl(&_mh_execute_header, v35, v36, "Reminder is not in SiriFoundInApps list {reminderID: %@, listID: %@}", v1, 0x16u);
      sub_1000F5104(&unk_100938E70, &unk_100797230);
      swift_arrayDestroy();
      a1 = v57;

      v41 = v35;
    }

    else
    {
      v41 = v34;
      v34 = v35;
    }

    sub_10001BBA0(v59, v26);

    v19 = __OFADD__(v13++, 1);
    if (v19)
    {
      goto LABEL_47;
    }

    goto LABEL_45;
  }

  sub_1000060C8(0, &qword_100945FC8, SGRecordId_ptr);
  v29 = static SGRecordId.createFrom(data:)();
  if (v29)
  {
    v30 = v29;
    v1 = *(v56 + 16);
    aBlock[4] = sub_1003E6968;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100042968;
    aBlock[3] = &unk_1008F0568;
    v31 = _Block_copy(aBlock);
    [v1 reminderAlarmTriggeredForRecordId:v30 withCompletion:v31];

    sub_10001BBA0(v24, v26);
    _Block_release(v31);
    v19 = __OFADD__(v58++, 1);
    if (v19)
    {
      goto LABEL_48;
    }

    goto LABEL_13;
  }

  v42 = v21;
  sub_100029344(v24, v26);
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.error.getter();

  if (!os_log_type_enabled(v43, v44))
  {
    sub_10001BBA0(v24, v26);
    v49 = v42;
    v42 = v43;
LABEL_44:
    sub_10001BBA0(v24, v26);

    v19 = __OFADD__(v13++, 1);
    if (v19)
    {
      goto LABEL_49;
    }

LABEL_45:
    v7 = v60;
    goto LABEL_13;
  }

  v45 = swift_slowAlloc();
  v1 = swift_slowAlloc();
  *v45 = 138412546;
  v46 = [v42 objectID];
  *(v45 + 4) = v46;
  *v1 = v46;
  *(v45 + 12) = 2048;
  v47 = v26 >> 62;
  if ((v26 >> 62) <= 1)
  {
    if (v47)
    {
      LODWORD(v48) = HIDWORD(v24) - v24;
      if (__OFSUB__(HIDWORD(v24), v24))
      {
        goto LABEL_58;
      }

      v48 = v48;
    }

    else
    {
      v48 = BYTE6(v26);
    }

    goto LABEL_43;
  }

  if (v47 != 2)
  {
    v48 = 0;
    goto LABEL_43;
  }

  v51 = *(v24 + 16);
  v50 = *(v24 + 24);
  v19 = __OFSUB__(v50, v51);
  v48 = v50 - v51;
  if (!v19)
  {
LABEL_43:
    *(v45 + 14) = v48;
    sub_10001BBA0(v24, v26);
    _os_log_impl(&_mh_execute_header, v43, v44, "Unable to get SGRecordId from siriFoundInAppsData. {reminderID: %@, siriFoundInAppsData.count: %ld}", v45, 0x16u);
    sub_100039860(v1);

    v49 = v43;
    a1 = v57;
    goto LABEL_44;
  }

  __break(1u);
LABEL_58:
  __break(1u);
}

void sub_1003E697C(uint64_t a1, const char *a2, const char *a3)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_100936020 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100006654(v4, qword_100945F00);
    swift_errorRetain();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v17 = v8;
      *v7 = 136315138;
      swift_getErrorValue();
      v9 = Error.localizedDescription.getter();
      v11 = sub_10000668C(v9, v10, &v17);

      *(v7 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v5, v6, a2, v7, 0xCu);
      sub_10000607C(v8);
    }

    else
    {
    }
  }

  else
  {
    if (qword_100936020 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100006654(v13, qword_100945F00);
    oslog = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v14, a3, v15, 2u);
    }
  }
}

uint64_t sub_1003E6C10(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

size_t sub_1003E6C54(unint64_t a1)
{
  v2 = v1;
  v4 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v9 = v26 - v8;
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = v25)
  {
    v11 = _swiftEmptyArrayStorage;
    if (!i)
    {
      return v11;
    }

    v12 = v7;
    v29 = _swiftEmptyArrayStorage;
    result = sub_100253218(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v14 = 0;
    v11 = v29;
    v15 = v12;
    v28 = v12 & 0xC000000000000001;
    v26[1] = v2;
    v27 = v12 & 0xFFFFFFFFFFFFFF8;
    v16 = v12;
    while (1)
    {
      v17 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v28)
      {
        v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v14 >= *(v27 + 16))
        {
          goto LABEL_16;
        }

        v18 = *(v15 + 8 * v14 + 32);
      }

      v19 = v18;
      v20 = [v18 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v21 = type metadata accessor for UUID();
      (*(*(v21 - 8) + 56))(v9, 0, 1, v21);

      v29 = v11;
      v23 = v11[2];
      v22 = v11[3];
      v2 = v23 + 1;
      if (v23 >= v22 >> 1)
      {
        sub_100253218(v22 > 1, v23 + 1, 1);
        v11 = v29;
      }

      v11[2] = v2;
      sub_100031B58(v9, v11 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v23, &unk_100939D90, "8\n\r");
      ++v14;
      v15 = v16;
      if (v17 == i)
      {
        return v11;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    v24 = v7;
    v25 = _CocoaArrayWrapper.endIndex.getter();
    v7 = v24;
  }

  __break(1u);
  return result;
}

uint64_t sub_1003E6ED0(uint64_t a1)
{
  v3 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v42 = *(v3 - 8);
  v4 = *(v42 + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v36 - v5;
  v43 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = __CocoaSet.count.getter();
  }

  else
  {
    v7 = *(a1 + 16);
  }

  v8 = _swiftEmptyArrayStorage;
  if (!v7)
  {
    return v8;
  }

  v49 = _swiftEmptyArrayStorage;
  sub_100253218(0, v7 & ~(v7 >> 63), 0);
  v8 = v49;
  if (v43)
  {
    result = __CocoaSet.startIndex.getter();
  }

  else
  {
    v11 = -1 << *(a1 + 32);
    result = _HashTable.startBucket.getter();
    v10 = *(a1 + 36);
  }

  v46 = result;
  v47 = v10;
  v48 = v43 != 0;
  if ((v7 & 0x8000000000000000) == 0)
  {
    v40 = v7;
    v41 = v6;
    v12 = 0;
    v13 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 < 0)
    {
      v13 = a1;
    }

    v38 = a1 + 56;
    v39 = v13;
    v36 = v1;
    v37 = a1 + 64;
    v44 = a1;
    while (v12 < v7)
    {
      if (__OFADD__(v12++, 1))
      {
        goto LABEL_38;
      }

      v17 = v46;
      v16 = v47;
      v18 = v48;
      sub_100411AE4(v46, v47, v48, a1);
      v20 = v19;
      v21 = [v19 uuid];
      v22 = v41;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v23 = type metadata accessor for UUID();
      (*(*(v23 - 8) + 56))(v22, 0, 1, v23);

      v49 = v8;
      v25 = v8[2];
      v24 = v8[3];
      if (v25 >= v24 >> 1)
      {
        sub_100253218(v24 > 1, v25 + 1, 1);
        v8 = v49;
      }

      v8[2] = v25 + 1;
      result = sub_100031B58(v22, v8 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v25, &unk_100939D90, "8\n\r");
      if (v43)
      {
        a1 = v44;
        if (!v18)
        {
          goto LABEL_43;
        }

        if (__CocoaSet.Index.handleBitPattern.getter())
        {
          swift_isUniquelyReferenced_nonNull_native();
        }

        v7 = v40;
        sub_1000F5104(&qword_100946070, &qword_1007A7668);
        v14 = Set.Index._asCocoa.modify();
        __CocoaSet.formIndex(after:isUnique:)();
        result = v14(v45, 0);
        if (v12 == v7)
        {
LABEL_35:
          sub_100010E34(v46, v47, v48);
          return v8;
        }
      }

      else
      {
        a1 = v44;
        if (v18)
        {
          goto LABEL_44;
        }

        if ((v17 & 0x8000000000000000) != 0)
        {
          goto LABEL_39;
        }

        v26 = 1 << *(v44 + 32);
        if (v17 >= v26)
        {
          goto LABEL_39;
        }

        v27 = v17 >> 6;
        v28 = *(v38 + 8 * (v17 >> 6));
        if (((v28 >> v17) & 1) == 0)
        {
          goto LABEL_40;
        }

        if (*(v44 + 36) != v16)
        {
          goto LABEL_41;
        }

        v29 = v28 & (-2 << (v17 & 0x3F));
        if (v29)
        {
          v26 = __clz(__rbit64(v29)) | v17 & 0x7FFFFFFFFFFFFFC0;
          v7 = v40;
        }

        else
        {
          v30 = v27 << 6;
          v31 = v27 + 1;
          v32 = (v37 + 8 * v27);
          v7 = v40;
          while (v31 < (v26 + 63) >> 6)
          {
            v34 = *v32++;
            v33 = v34;
            v30 += 64;
            ++v31;
            if (v34)
            {
              result = sub_100010E34(v17, v16, 0);
              v26 = __clz(__rbit64(v33)) + v30;
              goto LABEL_33;
            }
          }

          result = sub_100010E34(v17, v16, 0);
LABEL_33:
          a1 = v44;
        }

        v35 = *(a1 + 36);
        v46 = v26;
        v47 = v35;
        v48 = 0;
        if (v12 == v7)
        {
          goto LABEL_35;
        }
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

void *sub_1003E7318(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100026EF4(0, v1, 0);
    v3 = (a1 + 32);
    do
    {
      v4 = *v3++;
      v5 = static String._uncheckedFromUTF8(_:)();
      v8 = _swiftEmptyArrayStorage[2];
      v7 = _swiftEmptyArrayStorage[3];
      if (v8 >= v7 >> 1)
      {
        v11 = v6;
        v12 = v5;
        sub_100026EF4((v7 > 1), v8 + 1, 1);
        v6 = v11;
        v5 = v12;
      }

      _swiftEmptyArrayStorage[2] = v8 + 1;
      v9 = &_swiftEmptyArrayStorage[2 * v8];
      v9[4] = v5;
      v9[5] = v6;
      --v1;
    }

    while (v1);
  }

  return _swiftEmptyArrayStorage;
}

void *sub_1003E74A4(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    sub_10025329C(0, v2, 0);
    result = _swiftEmptyArrayStorage;
    v4 = (a1 + 32);
    do
    {
      v6 = *v4++;
      v5 = v6;
      if (v6 >= 0x7FFF)
      {
        v5 = 0x7FFFLL;
      }

      if (v5 <= -32768)
      {
        v7 = 0x8000;
      }

      else
      {
        v7 = v5;
      }

      v11 = result;
      v9 = result[2];
      v8 = result[3];
      if (v9 >= v8 >> 1)
      {
        sub_10025329C((v8 > 1), v9 + 1, 1);
        result = v11;
      }

      result[2] = v9 + 1;
      v10 = result + 4 * v9;
      *(v10 + 16) = v7;
      v10[34] = 0;
      --v2;
    }

    while (v2);
  }

  return result;
}

void *sub_1003E7588(uint64_t a1, uint64_t (*a2)(void *, uint64_t, void, uint64_t), uint64_t *a3, uint64_t *a4)
{
  v42 = a3;
  v43 = a4;
  v47 = a2;
  v46 = type metadata accessor for UUID();
  v48 = *(v46 - 8);
  v6 = *(v48 + 64);
  __chkstk_darwin(v46);
  v8 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v9 = __CocoaSet.count.getter();
  }

  else
  {
    v9 = *(a1 + 16);
  }

  result = _swiftEmptyArrayStorage;
  if (v9)
  {
    v55 = _swiftEmptyArrayStorage;
    sub_100253258(0, v9 & ~(v9 >> 63), 0);
    v50 = v55;
    if (v49)
    {
      result = __CocoaSet.startIndex.getter();
    }

    else
    {
      v12 = -1 << *(a1 + 32);
      result = _HashTable.startBucket.getter();
      v11 = *(a1 + 36);
    }

    v52 = result;
    v53 = v11;
    v54 = v49 != 0;
    if ((v9 & 0x8000000000000000) == 0)
    {
      v38[1] = v4;
      v13 = 0;
      v44 = v9;
      v45 = v48 + 32;
      v14 = a1 & 0xFFFFFFFFFFFFFF8;
      if (a1 < 0)
      {
        v14 = a1;
      }

      v40 = a1 + 56;
      v41 = v14;
      v39 = a1 + 64;
      while (v13 < v9)
      {
        if (__OFADD__(v13++, 1))
        {
          goto LABEL_39;
        }

        v17 = v52;
        v18 = v53;
        v19 = v54;
        v20 = a1;
        v21 = v47(v52, v53, v54, a1);
        v22 = [v21 uuid];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v23 = v50;
        v55 = v50;
        v24 = v8;
        v26 = v50[2];
        v25 = v50[3];
        if (v26 >= v25 >> 1)
        {
          sub_100253258(v25 > 1, v26 + 1, 1);
          v23 = v55;
        }

        v23[2] = v26 + 1;
        v27 = (*(v48 + 80) + 32) & ~*(v48 + 80);
        v50 = v23;
        result = (*(v48 + 32))(v23 + v27 + *(v48 + 72) * v26, v24, v46);
        v8 = v24;
        if (v49)
        {
          if (!v19)
          {
            goto LABEL_44;
          }

          a1 = v20;
          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          sub_1000F5104(v42, v43);
          v15 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          result = v15(v51, 0);
        }

        else
        {
          if (v19)
          {
            goto LABEL_45;
          }

          if ((v17 & 0x8000000000000000) != 0)
          {
            goto LABEL_40;
          }

          a1 = v20;
          v28 = 1 << *(v20 + 32);
          if (v17 >= v28)
          {
            goto LABEL_40;
          }

          v29 = v17 >> 6;
          v30 = *(v40 + 8 * (v17 >> 6));
          if (((v30 >> v17) & 1) == 0)
          {
            goto LABEL_41;
          }

          if (*(v20 + 36) != v18)
          {
            goto LABEL_42;
          }

          v31 = v30 & (-2 << (v17 & 0x3F));
          if (v31)
          {
            v28 = __clz(__rbit64(v31)) | v17 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v32 = v29 << 6;
            v33 = v29 + 1;
            v34 = (v39 + 8 * v29);
            while (v33 < (v28 + 63) >> 6)
            {
              v36 = *v34++;
              v35 = v36;
              v32 += 64;
              ++v33;
              if (v36)
              {
                result = sub_100010E34(v17, v18, 0);
                v28 = __clz(__rbit64(v35)) + v32;
                goto LABEL_34;
              }
            }

            result = sub_100010E34(v17, v18, 0);
LABEL_34:
            v8 = v24;
          }

          v37 = *(v20 + 36);
          v52 = v28;
          v53 = v37;
          v54 = 0;
        }

        v9 = v44;
        if (v13 == v44)
        {
          sub_100010E34(v52, v53, v54);
          return v50;
        }
      }

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

    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
  }

  return result;
}

id sub_1003E79BC@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 completed];
  *a2 = result;
  return result;
}

void sub_1003E7A38(uint64_t a1, void **a2)
{
  v4 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v12 - v6;
  sub_100010364(a1, &v12 - v6, &unk_100939D90, "8\n\r");
  v8 = *a2;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  isa = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v10 + 8))(v7, v9);
  }

  [v8 setIdentifier:isa];
}

id sub_1003E7B74@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 parentReminder];
  *a2 = result;
  return result;
}

void sub_1003E7C10(uint64_t a1, void **a2)
{
  v4 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v12 - v6;
  sub_100010364(a1, &v12 - v6, &unk_100938850, qword_100795AE0);
  v8 = *a2;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  isa = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v10 + 8))(v7, v9);
  }

  [v8 setDisplayDateDate:isa];
}

id sub_1003E7D4C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 flagged];
  *a2 = result;
  return result;
}

id sub_1003E7D94@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 alarmStorage];
  *a2 = result;
  return result;
}

id sub_1003E7DE4@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 inactive];
  *a2 = result;
  return result;
}

id sub_1003E7E2C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 recurrenceRules];
  *a2 = result;
  return result;
}

void sub_1003E7EB0(uint64_t a1, void **a2)
{
  v4 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v12 - v6;
  sub_100010364(a1, &v12 - v6, &unk_100938850, qword_100795AE0);
  v8 = *a2;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  isa = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v10 + 8))(v7, v9);
  }

  [v8 setCreationDate:isa];
}

void sub_1003E7FEC(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 contactHandles];
  if (v3)
  {
    v4 = v3;
    v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xF000000000000000;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_1003E8054(uint64_t *a1, void **a2)
{
  v2 = *a2;
  if (a1[1] >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    v4 = *a1;
    isa = Data._bridgeToObjectiveC()().super.isa;
  }

  v5 = isa;
  [v2 setContactHandles:?];
}

id sub_1003E80CC()
{
  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100791340;
  *(v0 + 56) = &type metadata for String;
  *(v0 + 32) = 0xD000000000000023;
  *(v0 + 40) = 0x80000001007F2430;
  v1 = rem_currentRuntimeVersion();
  *(v0 + 88) = &type metadata for Int;
  *(v0 + 64) = v1;
  v2 = String._bridgeToObjectiveC()();

  isa = Array._bridgeToObjectiveC()().super.isa;

  v4 = [objc_opt_self() predicateWithFormat:v2 argumentArray:isa];

  return v4;
}

id sub_1003E8200()
{
  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100791300;
  *(v0 + 56) = &type metadata for String;
  *(v0 + 32) = 0xD000000000000011;
  *(v0 + 40) = 0x80000001007A7210;
  v1 = String._bridgeToObjectiveC()();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v3 = [objc_opt_self() predicateWithFormat:v1 argumentArray:isa];

  return v3;
}

uint64_t sub_1003E82F0()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100945FD0);
  v1 = sub_100006654(v0, qword_100945FD0);
  if (qword_1009364D8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751D0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1003E83B8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = (&v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v5 + 16))(v8, a1, v4);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 == enum case for REMRemindersListDataView.ShowCompleted.after(_:))
  {
    (*(v5 + 8))(a1, v4);
    (*(v5 + 96))(v8, v4);
    v10 = type metadata accessor for Date();
    (*(*(v10 - 8) + 32))(a2, v8, v10);
    _s10PredicatesO19CompletionPredicateOMa(0);
    return swift_storeEnumTagMultiPayload();
  }

  if (v9 == enum case for REMRemindersListDataView.ShowCompleted.allowlist(_:))
  {
    (*(v5 + 96))(v8, v4);
    sub_100393DD8(*v8);
    v12 = v11;

    (*(v5 + 8))(a1, v4);
    *a2 = v12;
    _s10PredicatesO19CompletionPredicateOMa(0);
    return swift_storeEnumTagMultiPayload();
  }

  if (v9 == enum case for REMRemindersListDataView.ShowCompleted.off(_:) || v9 == enum case for REMRemindersListDataView.ShowCompleted.on(_:))
  {
    (*(v5 + 8))(a1, v4);
    _s10PredicatesO19CompletionPredicateOMa(0);
    return swift_storeEnumTagMultiPayload();
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_1003E8654@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v3 = type metadata accessor for Calendar.SearchDirection();
  v58 = *(v3 - 8);
  v59 = v3;
  v4 = *(v58 + 64);
  __chkstk_darwin(v3);
  v57 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for Calendar.RepeatedTimePolicy();
  v6 = *(v56 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v56);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Calendar.MatchingPolicy();
  v11 = *(v10 - 8);
  v62 = v10;
  v63 = v11;
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Calendar();
  v16 = *(v15 - 8);
  v17 = v16;
  v51 = v15;
  v52 = v16;
  v18 = *(v16 + 64);
  __chkstk_darwin(v15);
  v20 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v55 = &v50 - v23;
  v24 = sub_1000F5104(&qword_10093F970, &unk_1007A7670);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v27 = &v50 - v26;
  v28 = sub_1000F5104(&qword_100946078, &qword_1007ACC30);
  v29 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28 - 8);
  v31 = &v50 - v30;
  v32 = type metadata accessor for DateComponents();
  v53 = *(v32 - 8);
  v54 = v32;
  v33 = *(v53 + 64);
  __chkstk_darwin(v32);
  v61 = &v50 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 56))(v31, 1, 1, v15);
  v35 = type metadata accessor for TimeZone();
  (*(*(v35 - 8) + 56))(v27, 1, 1, v35);
  DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
  v36 = [objc_opt_self() currentCalendar];
  v37 = v20;
  static Calendar._unconditionallyBridgeFromObjectiveC(_:)();

  v38 = a1;
  v39 = v14;
  (*(v63 + 104))(v14, enum case for Calendar.MatchingPolicy.nextTime(_:), v62);
  v40 = v9;
  v41 = v56;
  (*(v6 + 104))(v9, enum case for Calendar.RepeatedTimePolicy.first(_:), v56);
  v43 = v57;
  v42 = v58;
  v44 = v59;
  (*(v58 + 104))(v57, enum case for Calendar.SearchDirection.forward(_:), v59);
  v45 = v55;
  v50 = v38;
  Calendar.nextDate(after:matching:matchingPolicy:repeatedTimePolicy:direction:)();
  (*(v42 + 8))(v43, v44);
  (*(v6 + 8))(v40, v41);
  (*(v63 + 8))(v39, v62);
  (*(v52 + 8))(v37, v51);
  (*(v53 + 8))(v61, v54);
  v46 = type metadata accessor for Date();
  v47 = *(v46 - 8);
  v48 = *(v47 + 48);
  if (v48(v45, 1, v46) != 1)
  {
    return (*(v47 + 32))(v60, v45, v46);
  }

  (*(v47 + 16))(v60, v50, v46);
  result = (v48)(v45, 1, v46);
  if (result != 1)
  {
    return sub_1000050A4(v45, &unk_100938850, qword_100795AE0);
  }

  return result;
}

void *sub_1003E8D0C(void *a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v28 - v12;
  v14 = *(v7 + 16);
  v14(&v28 - v12, v3, v6);
  v15 = (*(v7 + 88))(v13, v6);
  if (v15 == enum case for REMRemindersListDataView.ShowCompleted.after(_:))
  {
    (*(v7 + 8))(v13, v6);
LABEL_14:
    v14(v11, v3, v6);
    sub_1003E83B8(v11, a1);
    v26 = a2;
    return a2;
  }

  if (v15 != enum case for REMRemindersListDataView.ShowCompleted.allowlist(_:))
  {
    if (v15 == enum case for REMRemindersListDataView.ShowCompleted.off(_:) || v15 == enum case for REMRemindersListDataView.ShowCompleted.on(_:))
    {
      goto LABEL_14;
    }

    _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
LABEL_12:
    if (*(v13 + 16))
    {
      goto LABEL_6;
    }

LABEL_13:

    goto LABEL_14;
  }

  (*(v7 + 96))(v13, v6);
  v13 = *v13;
  if ((v13 & 0xC000000000000001) == 0)
  {
    goto LABEL_12;
  }

  if (!__CocoaSet.count.getter())
  {
    goto LABEL_13;
  }

LABEL_6:
  v16 = sub_1003E7588(v13, sub_100411ACC, &unk_10093F490, &qword_1007A7660);

  sub_1000F5104(&qword_10093B980, qword_10079A3D0);
  inited = swift_initStackObject();
  v28 = xmmword_100791340;
  *(inited + 16) = xmmword_100791340;
  v18 = swift_initStackObject();
  *(v18 + 16) = v28;
  *(v18 + 32) = a2;
  KeyPath = swift_getKeyPath();
  v20 = a2;
  v21 = sub_10000E72C(KeyPath, 0x4F4E203D3D204B25, 0xE800000000000000, &unk_100939F10, &qword_100797F30);

  *(v18 + 40) = v21;
  *(inited + 32) = sub_10000C2B0(v18);
  v22 = swift_getKeyPath();
  v23 = sub_10004FAEC(v16);

  v24 = sub_100016EF8(v22, v23, &qword_100946088, &unk_1007A7690, &unk_100939F10, &qword_100797F30);

  *(inited + 40) = v24;
  a2 = sub_100024F24(inited);
  _s10PredicatesO19CompletionPredicateOMa(0);
  swift_storeEnumTagMultiPayload();
  return a2;
}

void sub_1003E908C(uint64_t a1, void **a2)
{
  v4 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v12 - v6;
  sub_100010364(a1, &v12 - v6, &unk_100938850, qword_100795AE0);
  v8 = *a2;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  isa = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v10 + 8))(v7, v9);
  }

  [v8 setLastModifiedDate:isa];
}

void sub_1003E9214(uint64_t a1, void **a2)
{
  v4 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v12 - v6;
  sub_100010364(a1, &v12 - v6, &unk_100938850, qword_100795AE0);
  v8 = *a2;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  isa = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v10 + 8))(v7, v9);
  }

  [v8 setCompletionDate:isa];
}

id sub_1003E9350@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 shouldCategorizeGroceryItems];
  *a2 = result;
  return result;
}

id sub_1003E93E0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 parentList];
  *a2 = result;
  return result;
}

id sub_1003E9430@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 sharingStatus];
  *a2 = result;
  return result;
}

uint64_t sub_1003E9478@<X0>(id *a1@<X0>, SEL *a2@<X3>, void (*a3)(void)@<X4>, uint64_t (*a4)(void)@<X5>, uint64_t a5@<X8>)
{
  v8 = [*a1 *a2];
  if (v8)
  {
    v9 = v8;
    a3();

    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = a4(0);
  v12 = *(*(v11 - 8) + 56);

  return v12(a5, v10, 1, v11);
}

void sub_1003E9530(uint64_t a1, void **a2)
{
  v4 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v12 - v6;
  sub_100010364(a1, &v12 - v6, &unk_100939D90, "8\n\r");
  v8 = *a2;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  isa = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v10 + 8))(v7, v9);
  }

  [v8 setBatchCreationID:isa];
}

id sub_1003E966C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 daIsEventOnlyContainer];
  *a2 = result;
  return result;
}

id sub_1003E96B4@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 daIsNotificationsCollection];
  *a2 = result;
  return result;
}

void sub_1003E9720(id *a1@<X0>, SEL *a2@<X3>, unint64_t *a3@<X4>, uint64_t *a4@<X5>, unint64_t *a5@<X6>, uint64_t *a6@<X8>)
{
  v10 = [*a1 *a2];
  if (v10)
  {
    v11 = v10;
    sub_1000060C8(0, a3, a4);
    sub_10000CE28(a5, a3, a4);
    v12 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v12 = 0;
  }

  *a6 = v12;
}

void sub_1003E97E4(void *a1, void **a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t *a6, unint64_t *a7, SEL *a8)
{
  v9 = *a2;
  if (*a1)
  {
    sub_1000060C8(0, a5, a6);
    sub_10000CE28(a7, a5, a6);
    v13.super.isa = Set._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v13.super.isa = 0;
  }

  isa = v13.super.isa;
  [v9 *a8];
}

uint64_t sub_1003E98D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  swift_getKeyPath();
  result = NSSortDescriptor.init<A, B>(keyPath:ascending:)();
  *a4 = result;
  return result;
}

void sub_1003E99AC()
{
  v0 = objc_allocWithZone(NSSortDescriptor);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithKey:v1 ascending:1 reverseNullOrder:1];

  qword_100974E18 = v2;
}

id sub_1003E9A5C()
{
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1007953F0;
  if (qword_100936030 != -1)
  {
    v3 = v0;
    swift_once();
    v0 = v3;
  }

  v1 = qword_100974DE0;
  *(v0 + 32) = qword_100974DE0;
  qword_100974E30 = v0;

  return v1;
}

void sub_1003E9B04(unint64_t a1, id a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  if ([a2 includeDueDateDeltaAlerts])
  {
    if (a4 >> 62)
    {
LABEL_20:
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        return;
      }
    }

    else if (!*((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return;
    }

    if (a1 >> 62)
    {
      v10 = _CocoaArrayWrapper.endIndex.getter();
      if (!v10)
      {
        return;
      }
    }

    else
    {
      v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v10)
      {
        return;
      }
    }

    v20 = a4;
    v21 = a3;
    v22 = v5;
    v11 = 0;
    a3 = a1 & 0xFFFFFFFFFFFFFF8;
    v5 = &selRef_setPublicLinkLastModifiedDate_;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v11 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v12 = *(a1 + 8 * v11 + 32);
      }

      v13 = v12;
      a4 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      v14 = [v12 dueDateDeltaAlertsData];
      if (v14)
      {
        break;
      }

      ++v11;
      if (a4 == v10)
      {
        return;
      }
    }

    v15 = v14;
    v16 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    sub_10001BBA0(v16, v18);
    v19 = sub_100232618(a1, [a2 includeConcealed], v21);
    if (!v22)
    {
      sub_1003E9CCC(v20, v19);
    }
  }
}

void sub_1003E9CCC(unint64_t a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v3 = a2;
    v4 = a1;
    if (a1 >> 62)
    {
      goto LABEL_19;
    }

    for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v5 = 0;
      v6 = v4 & 0xC000000000000001;
      v7 = v4 & 0xFFFFFFFFFFFFFF8;
      v19 = v3;
      v20 = v4;
      while (1)
      {
        if (v6)
        {
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v5 >= *(v7 + 16))
          {
            goto LABEL_18;
          }

          v8 = *(v4 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v11 = sub_1005E2A38([v8 remObjectID]);
        if (v2)
        {

          return;
        }

        v12 = v11;
        if (*(v3 + 16))
        {
          v13 = sub_100393C74(v11);
          if (v14)
          {
            v15 = *(*(v3 + 56) + 8 * v13);
            sub_1000060C8(0, &unk_100950F50, REMDueDateDeltaAlert_ptr);

            v16 = v7;
            v17 = v6;
            isa = Array._bridgeToObjectiveC()().super.isa;
            v4 = v20;

            [v9 setFetchedDueDateDeltaAlerts:isa];

            v6 = v17;
            v7 = v16;
            v3 = v19;
          }
        }

        ++v5;
        if (v10 == i)
        {
          return;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      ;
    }
  }
}

uint64_t sub_1003E9FFC(uint64_t a1, uint64_t a2)
{
  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100791340;

  v4 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (v5)
  {
    v6 = v4;
    v7 = v5;

    *(v3 + 56) = &type metadata for String;
    *(v3 + 32) = v6;
    *(v3 + 40) = v7;
    *(v3 + 88) = sub_1000F5104(&unk_100938850, qword_100795AE0);
    v8 = sub_1000103CC((v3 + 64));
    sub_100010364(a2, v8, &unk_100938850, qword_100795AE0);
    v9 = String._bridgeToObjectiveC()();
    isa = Array._bridgeToObjectiveC()().super.isa;

    v11 = [objc_opt_self() predicateWithFormat:v9 argumentArray:isa];

    sub_1000050A4(a2, &unk_100938850, qword_100795AE0);
    return v11;
  }

  else
  {
    _StringGuts.grow(_:)(46);
    v13._object = 0x80000001007EC120;
    v13._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v13);
    sub_1000F5104(&unk_100939F10, &qword_100797F30);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1003EA208(uint64_t a1, uint64_t a2)
{
  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100791340;

  v4 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (v5)
  {
    v6 = v4;
    v7 = v5;

    *(v3 + 56) = &type metadata for String;
    *(v3 + 32) = v6;
    *(v3 + 40) = v7;
    *(v3 + 88) = sub_1000F5104(&unk_100938850, qword_100795AE0);
    v8 = sub_1000103CC((v3 + 64));
    sub_100010364(a2, v8, &unk_100938850, qword_100795AE0);
    v9 = String._bridgeToObjectiveC()();
    isa = Array._bridgeToObjectiveC()().super.isa;

    v11 = [objc_opt_self() predicateWithFormat:v9 argumentArray:isa];

    sub_1000050A4(a2, &unk_100938850, qword_100795AE0);
    return v11;
  }

  else
  {
    _StringGuts.grow(_:)(46);
    v13._object = 0x80000001007EC120;
    v13._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v13);
    sub_1000F5104(&unk_100939F10, &qword_100797F30);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1003EA414(uint64_t a1, uint64_t a2)
{
  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100791340;

  v4 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (v5)
  {
    v6 = v4;
    v7 = v5;

    *(v3 + 56) = &type metadata for String;
    *(v3 + 32) = v6;
    *(v3 + 40) = v7;
    *(v3 + 88) = sub_1000F5104(&unk_100938850, qword_100795AE0);
    v8 = sub_1000103CC((v3 + 64));
    sub_100010364(a2, v8, &unk_100938850, qword_100795AE0);
    v9 = String._bridgeToObjectiveC()();
    isa = Array._bridgeToObjectiveC()().super.isa;

    v11 = [objc_opt_self() predicateWithFormat:v9 argumentArray:isa];

    sub_1000050A4(a2, &unk_100938850, qword_100795AE0);
    return v11;
  }

  else
  {
    _StringGuts.grow(_:)(46);
    v13._object = 0x80000001007EC120;
    v13._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v13);
    sub_1000F5104(&unk_100939F10, &qword_100797F30);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1003EA64C(uint64_t a1, uint64_t a2)
{
  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100791340;

  v4 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (v5)
  {
    v6 = v4;
    v7 = v5;

    *(v3 + 32) = v6;
    *(v3 + 40) = v7;
    *(v3 + 88) = &type metadata for Int64;
    *(v3 + 56) = &type metadata for String;
    *(v3 + 64) = a2;
    v8 = String._bridgeToObjectiveC()();
    isa = Array._bridgeToObjectiveC()().super.isa;

    v10 = [objc_opt_self() predicateWithFormat:v8 argumentArray:isa];

    return v10;
  }

  else
  {
    _StringGuts.grow(_:)(46);
    v12._object = 0x80000001007EC120;
    v12._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v12);
    sub_1000F5104(&unk_100939F10, &qword_100797F30);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1003EA818(uint64_t a1, uint64_t a2)
{
  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100791340;

  v4 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (v5)
  {
    v6 = v4;
    v7 = v5;

    *(v3 + 56) = &type metadata for String;
    *(v3 + 32) = v6;
    *(v3 + 40) = v7;
    *(v3 + 88) = sub_1000F5104(&unk_100938850, qword_100795AE0);
    v8 = sub_1000103CC((v3 + 64));
    sub_100010364(a2, v8, &unk_100938850, qword_100795AE0);
    v9 = String._bridgeToObjectiveC()();
    isa = Array._bridgeToObjectiveC()().super.isa;

    v11 = [objc_opt_self() predicateWithFormat:v9 argumentArray:isa];

    sub_1000050A4(a2, &unk_100938850, qword_100795AE0);
    return v11;
  }

  else
  {
    _StringGuts.grow(_:)(46);
    v13._object = 0x80000001007EC120;
    v13._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v13);
    sub_1000F5104(&unk_100939F10, &qword_100797F30);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1003EAA60(uint64_t a1, uint64_t a2)
{
  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100791340;

  v4 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (v5)
  {
    v6 = v4;
    v7 = v5;

    *(v3 + 32) = v6;
    *(v3 + 40) = v7;
    *(v3 + 88) = &type metadata for Int64;
    *(v3 + 56) = &type metadata for String;
    *(v3 + 64) = a2;
    v8 = String._bridgeToObjectiveC()();
    isa = Array._bridgeToObjectiveC()().super.isa;

    v10 = [objc_opt_self() predicateWithFormat:v8 argumentArray:isa];

    return v10;
  }

  else
  {
    _StringGuts.grow(_:)(46);
    v12._object = 0x80000001007EC120;
    v12._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v12);
    sub_1000F5104(&unk_100939F10, &qword_100797F30);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1003EAC2C(uint64_t a1, uint64_t a2)
{
  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100791340;

  v4 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (v5)
  {
    v6 = v4;
    v7 = v5;

    *(v3 + 56) = &type metadata for String;
    *(v3 + 32) = v6;
    *(v3 + 40) = v7;
    *(v3 + 88) = sub_1000F5104(&unk_100939D90, "8\n\r");
    v8 = sub_1000103CC((v3 + 64));
    sub_100010364(a2, v8, &unk_100939D90, "8\n\r");
    v9 = String._bridgeToObjectiveC()();
    isa = Array._bridgeToObjectiveC()().super.isa;

    v11 = [objc_opt_self() predicateWithFormat:v9 argumentArray:isa];

    sub_1000050A4(a2, &unk_100939D90, "8\n\r");
    return v11;
  }

  else
  {
    _StringGuts.grow(_:)(46);
    v13._object = 0x80000001007EC120;
    v13._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v13);
    sub_1000F5104(&unk_100939F10, &qword_100797F30);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1003EAE5C(uint64_t a1, uint64_t a2)
{
  v35 = a2;
  v31 = a1;
  v3 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v30 - v5;
  v32 = sub_1000F5104(&qword_10093B980, qword_10079A3D0);
  inited = swift_initStackObject();
  v34 = xmmword_100791340;
  *(inited + 16) = xmmword_100791340;
  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_100791320;
  KeyPath = swift_getKeyPath();
  v9 = sub_1003EFC70(KeyPath, &unk_100939F10, &qword_100797F30);

  *(v7 + 32) = v9;
  v10 = swift_getKeyPath();
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v13 = *(v12 + 16);
  v13(v6, a1, v11);
  v14 = v13;
  v15 = *(v12 + 56);
  v15(v6, 0, 1, v11);
  v16 = sub_1003EA208(v10, v6);

  *(v7 + 40) = v16;
  v17 = swift_getKeyPath();
  v14(v6, v35, v11);
  v18 = v14;
  v19 = v15;
  v15(v6, 0, 1, v11);
  v20 = sub_1003EA414(v17, v6);

  *(v7 + 48) = v20;
  v21 = sub_10000C2B0(v7);
  v22 = inited;
  *(inited + 32) = v21;
  v23 = swift_initStackObject();
  *(v23 + 16) = v34;
  v24 = swift_getKeyPath();
  v18(v6, v31, v11);
  v19(v6, 0, 1, v11);
  v25 = v19;
  v26 = sub_1003EA208(v24, v6);

  *(v23 + 32) = v26;
  v27 = swift_getKeyPath();
  v18(v6, v35, v11);
  v25(v6, 0, 1, v11);
  v28 = sub_1003EA414(v27, v6);

  *(v23 + 40) = v28;
  *(v22 + 40) = sub_10000C2B0(v23);
  return sub_100024F24(v22);
}

uint64_t sub_1003EB1AC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100791300;

  v13 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (v14)
  {
    v15 = v13;
    v16 = v14;

    *(v12 + 56) = &type metadata for String;
    *(v12 + 32) = v15;
    *(v12 + 40) = v16;
    if (a7)
    {
      sub_100271468(a7);
    }

    _StringGuts.grow(_:)(32);

    v17._countAndFlagsBits = a2;
    v17._object = a3;
    String.append(_:)(v17);

    v18._countAndFlagsBits = 8236;
    v18._object = 0xE200000000000000;
    String.append(_:)(v18);
    v19._countAndFlagsBits = a4;
    v19._object = a5;
    String.append(_:)(v19);

    v20._countAndFlagsBits = 0x746E756F63402E29;
    v20._object = 0xEB00000000203E20;
    String.append(_:)(v20);
    v21._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v21);

    v22 = String._bridgeToObjectiveC()();

    isa = Array._bridgeToObjectiveC()().super.isa;

    v24 = [objc_opt_self() predicateWithFormat:v22 argumentArray:isa];

    return v24;
  }

  else
  {
    _StringGuts.grow(_:)(46);
    v26._object = 0x80000001007EC120;
    v26._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v26);
    sub_1000F5104(&unk_100939F10, &qword_100797F30);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1003EB48C(uint64_t a1, uint64_t a2)
{
  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100791340;

  v4 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (v5)
  {
    v6 = v4;
    v7 = v5;

    *(v3 + 32) = v6;
    *(v3 + 40) = v7;
    *(v3 + 88) = &type metadata for Int64;
    *(v3 + 56) = &type metadata for String;
    *(v3 + 64) = a2;
    v8 = String._bridgeToObjectiveC()();
    isa = Array._bridgeToObjectiveC()().super.isa;

    v10 = [objc_opt_self() predicateWithFormat:v8 argumentArray:isa];

    return v10;
  }

  else
  {
    _StringGuts.grow(_:)(46);
    v12._object = 0x80000001007EC120;
    v12._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v12);
    sub_1000F5104(&unk_100939F10, &qword_100797F30);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1003EB670(uint64_t a1, uint64_t a2)
{
  v4 = _s10PredicatesO19CompletionPredicateOMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003EB8C4(uint64_t a1, uint64_t a2)
{
  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100791340;

  v4 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (v5)
  {
    v6 = v4;
    v7 = v5;

    *(v3 + 56) = &type metadata for String;
    *(v3 + 32) = v6;
    *(v3 + 40) = v7;
    *(v3 + 88) = sub_1000F5104(&unk_100939D90, "8\n\r");
    v8 = sub_1000103CC((v3 + 64));
    sub_100010364(a2, v8, &unk_100939D90, "8\n\r");
    v9 = String._bridgeToObjectiveC()();
    isa = Array._bridgeToObjectiveC()().super.isa;

    v11 = [objc_opt_self() predicateWithFormat:v9 argumentArray:isa];

    sub_1000050A4(a2, &unk_100939D90, "8\n\r");
    return v11;
  }

  else
  {
    _StringGuts.grow(_:)(46);
    v13._object = 0x80000001007EC120;
    v13._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v13);
    sub_1000F5104(&qword_1009435E0, &qword_1007A3F10);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void *sub_1003EBAD0()
{
  sub_100026EF4(0, 7, 0);
  v0 = 0;
  v1 = _swiftEmptyArrayStorage;
  do
  {
    v2 = *(&off_1008DD1E8 + v0 + 32);
    if (v2 == 5)
    {
      v3 = 0x656D6E6769737361;
    }

    else
    {
      v3 = 0x7367617468736168;
    }

    if (v2 == 5)
    {
      v4 = 0xEB0000000073746ELL;
    }

    else
    {
      v4 = 0xE800000000000000;
    }

    if (v2 == 3)
    {
      v5 = 0x656D686361747461;
    }

    else
    {
      v5 = 0x6E65727275636572;
    }

    if (v2 == 3)
    {
      v6 = 0xEB0000000073746ELL;
    }

    else
    {
      v6 = 0xEF73656C75526563;
    }

    if (*(&off_1008DD1E8 + v0 + 32) <= 4u)
    {
      v3 = v5;
      v4 = v6;
    }

    if (v2 == 1)
    {
      v7 = 0x6552746E65726170;
    }

    else
    {
      v7 = 0x6F74536D72616C61;
    }

    if (v2 == 1)
    {
      v8 = 0xEE007265646E696DLL;
    }

    else
    {
      v8 = 0xEC00000065676172;
    }

    if (!*(&off_1008DD1E8 + v0 + 32))
    {
      v7 = 1953720684;
      v8 = 0xE400000000000000;
    }

    if (*(&off_1008DD1E8 + v0 + 32) <= 2u)
    {
      v9 = v7;
    }

    else
    {
      v9 = v3;
    }

    if (*(&off_1008DD1E8 + v0 + 32) <= 2u)
    {
      v10 = v8;
    }

    else
    {
      v10 = v4;
    }

    v15 = v1;
    v12 = v1[2];
    v11 = v1[3];
    if (v12 >= v11 >> 1)
    {
      sub_100026EF4((v11 > 1), v12 + 1, 1);
      v1 = v15;
    }

    ++v0;
    v1[2] = v12 + 1;
    v13 = &v1[2 * v12];
    v13[4] = v9;
    v13[5] = v10;
  }

  while (v0 != 7);
  v16 = v1;
  sub_100271EA8(&off_1008DD210);
  return v16;
}

uint64_t sub_1003EBD48(uint64_t a1, uint64_t a2)
{
  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100791340;

  v4 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (v5)
  {
    v6 = v4;
    v7 = v5;

    *(v3 + 32) = v6;
    *(v3 + 40) = v7;
    *(v3 + 88) = &type metadata for Int64;
    *(v3 + 56) = &type metadata for String;
    *(v3 + 64) = a2;
    v8 = String._bridgeToObjectiveC()();
    isa = Array._bridgeToObjectiveC()().super.isa;

    v10 = [objc_opt_self() predicateWithFormat:v8 argumentArray:isa];

    return v10;
  }

  else
  {
    _StringGuts.grow(_:)(46);
    v12._object = 0x80000001007EC120;
    v12._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v12);
    sub_1000F5104(&qword_10093F560, &qword_10079C0F0);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1003EBF14(unint64_t a1, void *a2, uint64_t a3)
{
  v93 = a3;
  v98 = a2;
  v4 = a1;
  v103 = _swiftEmptySetSingleton;
  v104 = _swiftEmptySetSingleton;
  v101 = _swiftEmptyArrayStorage;
  v102 = _swiftEmptyArrayStorage;
  v5 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_63;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v97 = v4;
    v92 = v5;
    if (!i)
    {
      break;
    }

    v7 = 0;
    v8 = v4 & 0xC000000000000001;
    v94 = v4 & 0xFFFFFFFFFFFFFF8;
    v95 = _swiftEmptyArrayStorage;
    v96 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v8)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v7 >= *(v94 + 16))
        {
          goto LABEL_62;
        }

        v9 = *(v4 + 8 * v7 + 32);
      }

      v10 = v9;
      v5 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (([v98 includeConcealed] & 1) == 0 && objc_msgSend(v10, "isConcealed"))
      {
        goto LABEL_5;
      }

      v11 = [v10 list];
      if (v11)
      {
        v100 = 0;
        v12 = v11;
        v13 = [v12 remObjectIDWithError:&v100];
        v14 = v100;
        if (!v13)
        {
          goto LABEL_36;
        }

        v15 = v13;
        v16 = v100;
        v17 = sub_1005E37C0(v15);
        if (v3)
        {
LABEL_37:

LABEL_38:

          return v12;
        }

        v18 = v17;

        sub_100379A60(&v105, v18);
        v19 = v12;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v102 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v102 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v27 = *((v102 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v96 = v102;
        v4 = v97;
      }

      v20 = [v10 parentReminder];
      if (v20)
      {
        v100 = 0;
        v12 = v20;
        v21 = [v12 remObjectIDWithError:&v100];
        v14 = v100;
        if (!v21)
        {
LABEL_36:
          v41 = v14;

          _convertNSErrorToError(_:)();

          swift_willThrow();

          return v12;
        }

        v22 = v21;
        v23 = v100;
        v24 = sub_1005E2A38(v22);
        if (v3)
        {
          goto LABEL_37;
        }

        v25 = v24;

        sub_100379A48(&v105, v25);
        v26 = v12;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v101 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v101 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v95 = v101;
        v4 = v97;
      }

      else
      {
LABEL_5:
      }

      ++v7;
      if (v5 == i)
      {
        while (1)
        {
          v28 = v104;
          v29 = v104[2];
          if (!v29)
          {
            goto LABEL_30;
          }

LABEL_27:
          v30 = sub_100368A08(v29, 0);
          v31 = sub_10027DC58(&v105, v30 + 4, v29, v28);
          sub_10001B860();
          if (v31 == v29)
          {
            goto LABEL_31;
          }

          __break(1u);
        }
      }
    }

    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    ;
  }

  v28 = _swiftEmptySetSingleton;
  v95 = _swiftEmptyArrayStorage;
  v96 = _swiftEmptyArrayStorage;
  v29 = _swiftEmptySetSingleton[2];
  if (v29)
  {
    goto LABEL_27;
  }

LABEL_30:

  v30 = _swiftEmptyArrayStorage;
LABEL_31:
  v94 = v30;
  if (v96 >> 62)
  {
    sub_1000060C8(0, &qword_100939D80, off_1008D41B8);

    v32 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    sub_1000060C8(0, &qword_100939D80, off_1008D41B8);
    v32 = v96;
  }

  v105 = v32;
  v33 = sub_1000F5104(&qword_10093F5C0, &qword_1007A1FB0);
  sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
  sub_10000CB90(&qword_100946C40, &qword_10093F5C0, &qword_1007A1FB0);
  v34 = sub_10000CE28(&qword_10093F488, &qword_10093F430, NSPersistentStore_ptr);
  v91 = v33;
  v35 = Sequence.compactMapToSet<A>(_:)();
  v36 = sub_10002595C(v35);

  v12 = v94;
  sub_1005EC5F0(v94, 0, 1, 0, v36);
  if (v3)
  {

    goto LABEL_38;
  }

  v38 = v37;
  v90 = v34;

  v105 = &_swiftEmptyDictionarySingleton;
  v39 = sub_100011D74(_swiftEmptyArrayStorage, v38, &v105);
  v40 = v38;
  v100 = &_swiftEmptyDictionarySingleton;
  v88 = v39;
  v94 = sub_10002BE2C(_swiftEmptyArrayStorage, v38, &v100);

  if (qword_100936028 != -1)
  {
    goto LABEL_67;
  }

  while (1)
  {
    v43 = type metadata accessor for Logger();
    v44 = sub_100006654(v43, qword_100945FD0);
    v89 = &v86;
    v105 = v40;
    v87 = __chkstk_darwin(v44);
    v85[2] = v87;
    sub_1000F5104(&qword_10093F6F0, qword_10079A300);
    sub_1000060C8(0, &unk_10094F0C0, REMListStorage_ptr);
    sub_10000CB90(&qword_100945210, &qword_10093F6F0, qword_10079A300);
    v45 = Sequence.map<A>(skippingError:_:)();

    v100 = v45;
    sub_100271FB4(v94);
    v46 = v103;
    v47 = v103[2];
    if (v47)
    {
      break;
    }

    v48 = _swiftEmptyArrayStorage;
    v51 = v95;
LABEL_45:
    if (v51 >> 62)
    {
      sub_1000060C8(0, &qword_100939D80, off_1008D41B8);

      v51 = _bridgeCocoaArray<A>(_:)();
    }

    else
    {

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      sub_1000060C8(0, &qword_100939D80, off_1008D41B8);
    }

    v105 = v51;
    v52 = Sequence.compactMapToSet<A>(_:)();
    v53 = sub_10002595C(v52);

    sub_1005EC0F4(v48, 0, 1, 0, v53);
    v50 = v54;

    if ([v98 includeConcealed])
    {

      goto LABEL_72;
    }

    v105 = _swiftEmptyArrayStorage;
    if (v50 >> 62)
    {
      goto LABEL_70;
    }

    v56 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v56)
    {
      goto LABEL_71;
    }

LABEL_51:
    v40 = 0;
    v57 = v50 & 0xC000000000000001;
    v58 = v50 & 0xFFFFFFFFFFFFFF8;
    v94 = v50 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v57)
      {
        v63 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v40 >= *(v58 + 16))
        {
          goto LABEL_66;
        }

        v63 = *(v50 + 8 * v40 + 32);
      }

      v64 = v63;
      v65 = (v40 + 1);
      if (__OFADD__(v40, 1))
      {
        break;
      }

      if ([v63 isConcealed])
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v59 = v57;
        v60 = v56;
        v61 = v50;
        v62 = v105[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        v50 = v61;
        v56 = v60;
        v57 = v59;
        v58 = v94;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      ++v40;
      if (v65 == v56)
      {
        goto LABEL_71;
      }
    }

    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    swift_once();
  }

  v48 = sub_1003689F4(v103[2], 0);
  v49 = sub_10027DC58(&v105, v48 + 4, v47, v46);
  sub_10001B860();
  v50 = v90;
  if (v49 == v47)
  {
    v51 = v95;
    goto LABEL_45;
  }

  __break(1u);
LABEL_70:
  v56 = _CocoaArrayWrapper.endIndex.getter();
  if (v56)
  {
    goto LABEL_51;
  }

LABEL_71:

  v50 = v105;
LABEL_72:
  v105 = v50;
  __chkstk_darwin(v55);
  v85[-2] = v87;
  sub_1000F5104(&qword_10093CAC0, &unk_10079E1E0);
  sub_1000060C8(0, &unk_10093F670, REMReminderStorage_ptr);
  sub_10000CB90(&qword_10093A570, &qword_10093CAC0, &unk_10079E1E0);
  v66 = Sequence.map<A>(skippingError:_:)();
  v67 = v97;
  v12 = v88;
  sub_1003E9B04(v50, v98, v93, v66);

  if (v12 >> 62)
  {
    goto LABEL_93;
  }

  if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return v12;
  }

  while (1)
  {

    if (v92)
    {
      v68 = _CocoaArrayWrapper.endIndex.getter();
      v12 = v68;
    }

    else
    {
      v12 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v69 = _swiftEmptyArrayStorage;
    if (!v12)
    {
LABEL_88:
      v105 = v69;
      __chkstk_darwin(v68);
      v85[-2] = v87;
      sub_1000F5104(&qword_10094F630, qword_1007A3430);
      sub_1000060C8(0, &unk_10093F580, REMAccountStorage_ptr);
      sub_10000CB90(&qword_100941B18, &qword_10094F630, qword_1007A3430);
      v12 = Sequence.map<A>(skippingError:_:)();

      return v12;
    }

    v99 = _swiftEmptyArrayStorage;
    v67 = &v99;
    result = specialized ContiguousArray.reserveCapacity(_:)();
    if ((v12 & 0x8000000000000000) != 0)
    {
      break;
    }

    v70 = 0;
    v71 = v97;
    v72 = v97 & 0xC000000000000001;
    v98 = (v97 & 0xFFFFFFFFFFFFFF8);
    while (1)
    {
      v73 = v70 + 1;
      if (__OFADD__(v70, 1))
      {
        break;
      }

      if (v72)
      {
        v74 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v70 >= *(v98 + 2))
        {
          goto LABEL_92;
        }

        v74 = *(v71 + 8 * v70 + 32);
      }

      v75 = v74;
      if (![v74 account])
      {

        v77 = objc_opt_self();
        v105 = 0;
        v106 = 0xE000000000000000;
        _StringGuts.grow(_:)(36);

        v105 = 0xD000000000000021;
        v106 = 0x80000001007F7F30;
        v78 = [v75 description];
        v79 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v81 = v80;

        v82._countAndFlagsBits = v79;
        v82._object = v81;
        String.append(_:)(v82);

        v83._countAndFlagsBits = 125;
        v83._object = 0xE100000000000000;
        String.append(_:)(v83);
        v84 = String._bridgeToObjectiveC()();

        [v77 internalErrorWithDebugDescription:v84];

        swift_willThrow();

        return v12;
      }

      v67 = &v99;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v76 = v99[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v68 = specialized ContiguousArray._endMutation()();
      v71 = v97;
      ++v70;
      if (v73 == v12)
      {
        v69 = v99;
        goto LABEL_88;
      }
    }

    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      return v12;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1003ECE88(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v47 = a1;
  v48 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v49 = v8;
  v50 = 0;
  v51 = v11 & v9;
  v52 = a2;
  v53 = a3;

  sub_10002CB0C(&v45);
  v12 = v45;
  if (!v45)
  {
    goto LABEL_25;
  }

  sub_100005EE0(v46, v44);
  v13 = *a5;
  result = sub_10002B924(v12);
  v16 = *(v13 + 16);
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v20 = v15;
  if (*(v13 + 24) < v19)
  {
    sub_10002CD0C(v19, a4 & 1);
    v21 = *a5;
    result = sub_10002B924(v12);
    if ((v20 & 1) == (v22 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v26 = result;
    sub_100373210();
    result = v26;
    if (v20)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  if (v20)
  {
LABEL_11:
    v23 = *a5;
    v24 = 32 * result;
    sub_100005EF0(*(*a5 + 56) + 32 * result, v43);
    sub_10000607C(v44);

    v25 = *(v23 + 56);
    sub_10000607C((v25 + v24));
    sub_100005EE0(v43, (v25 + v24));
    goto LABEL_15;
  }

LABEL_13:
  v27 = *a5;
  *(*a5 + 8 * (result >> 6) + 64) |= 1 << result;
  *(v27[6] + 8 * result) = v12;
  result = sub_100005EE0(v44, (v27[7] + 32 * result));
  v28 = v27[2];
  v18 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (!v18)
  {
    v27[2] = v29;
LABEL_15:
    sub_10002CB0C(&v45);
    v12 = v45;
    if (v45)
    {
      v20 = 1;
      do
      {
        sub_100005EE0(v46, v44);
        v33 = *a5;
        result = sub_10002B924(v12);
        v35 = *(v33 + 16);
        v36 = (v34 & 1) == 0;
        v18 = __OFADD__(v35, v36);
        v37 = v35 + v36;
        if (v18)
        {
          goto LABEL_26;
        }

        a4 = v34;
        if (*(v33 + 24) < v37)
        {
          sub_10002CD0C(v37, 1);
          v38 = *a5;
          result = sub_10002B924(v12);
          if ((a4 & 1) != (v39 & 1))
          {
            goto LABEL_8;
          }
        }

        if (a4)
        {
          v30 = *a5;
          v31 = 32 * result;
          sub_100005EF0(*(*a5 + 56) + 32 * result, v43);
          sub_10000607C(v44);

          v32 = *(v30 + 56);
          sub_10000607C((v32 + v31));
          sub_100005EE0(v43, (v32 + v31));
        }

        else
        {
          v40 = *a5;
          *(*a5 + 8 * (result >> 6) + 64) |= 1 << result;
          *(v40[6] + 8 * result) = v12;
          result = sub_100005EE0(v44, (v40[7] + 32 * result));
          v41 = v40[2];
          v18 = __OFADD__(v41, 1);
          v42 = v41 + 1;
          if (v18)
          {
            goto LABEL_27;
          }

          v40[2] = v42;
        }

        sub_10002CB0C(&v45);
        v12 = v45;
      }

      while (v45);
    }

LABEL_25:
    sub_10001B860();
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1003ED1A4(unint64_t a1, id a2, uint64_t a3, void *a4)
{
  v5 = a2;
  v52 = v4;
  if ([a2 includeConcealed])
  {
    swift_bridgeObjectRetain_n();
  }

  else
  {
    v56 = _swiftEmptyArrayStorage;
    if (a1 >> 62)
    {
      goto LABEL_18;
    }

    for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v50 = v5;
      v5 = 0;
      v8 = a1 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v5 >= *(v8 + 16))
          {
            goto LABEL_17;
          }

          v10 = *(a1 + 8 * v5 + 32);
        }

        v11 = v10;
        v12 = (v5 + 1);
        if (__OFADD__(v5, 1))
        {
          break;
        }

        if ([v10 isConcealed])
        {
        }

        else
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v9 = v56[2];
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v8 = a1 & 0xFFFFFFFFFFFFFF8;
        }

        ++v5;
        if (v12 == i)
        {
          a1 = v56;
          v5 = v50;
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      ;
    }

    a1 = _swiftEmptyArrayStorage;
LABEL_20:
  }

  v13 = v5;
  type metadata accessor for REMReminderStorageCDIngestor();
  swift_initStackObject();
  if (qword_100936028 != -1)
  {
LABEL_37:
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  v15 = sub_100006654(v14, qword_100945FD0);
  v56 = a1;
  __chkstk_darwin(v15);
  sub_1000F5104(&qword_10093CAC0, &unk_10079E1E0);
  sub_1000060C8(0, &unk_10093F670, REMReminderStorage_ptr);
  sub_10000CB90(&qword_10093A570, &qword_10093CAC0, &unk_10079E1E0);
  v16 = Sequence.map<A>(skippingError:_:)();
  if (v52)
  {

    v17 = _swiftEmptyArrayStorage;
  }

  else
  {
    v17 = v16;
  }

  sub_1003E9B04(a1, v13, a3, v17);

  v18 = sub_1003EBF14(a1, v13, a3);
  v54 = v19;
  v49 = v20;

  v56 = v17;
  swift_getKeyPath();
  v55 = v17;
  swift_getKeyPath();
  sub_1000F5104(&qword_10094F400, &qword_1007A77C0);
  sub_10000CB90(&qword_1009460B0, &qword_10094F400, &qword_1007A77C0);
  sub_10000CE28(&qword_1009391F0, &qword_1009391E0, REMObjectID_ptr);
  v21 = Sequence.indexBy<A, B>(key:value:)();

  v22 = sub_10045B744(v21);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v56 = &_swiftEmptyDictionarySingleton;
  sub_1003ECE88(v22, sub_10002CCBC, 0, isUniquelyReferenced_nonNull_native, &v56);

  v24 = v56;
  v56 = v18;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000F5104(&qword_10094F660, &unk_1007B1570);
  sub_10000CB90(&qword_1009460B8, &qword_10094F660, &unk_1007B1570);
  v25 = Sequence.indexBy<A, B>(key:value:)();

  v26 = sub_10002CF88(v25);

  v27 = swift_isUniquelyReferenced_nonNull_native();
  v56 = v24;
  sub_1003ECE88(v26, sub_10002CCBC, 0, v27, &v56);

  v28 = v56;
  v56 = v49;
  swift_getKeyPath();
  swift_getKeyPath();
  v13 = sub_1000F5104(&qword_10093F640, &qword_100796D50);
  sub_10000CB90(&qword_100939BE8, &qword_10093F640, &qword_100796D50);
  v29 = Sequence.indexBy<A, B>(key:value:)();

  v30 = sub_10002CAF8(v29);

  v31 = swift_isUniquelyReferenced_nonNull_native();
  v56 = v28;
  sub_1003ECE88(v30, sub_10002CCBC, 0, v31, &v56);

  v32 = v56;
  v56 = v54;
  swift_getKeyPath();
  swift_getKeyPath();
  v33 = Sequence.indexBy<A, B>(key:value:)();

  v34 = sub_10045B744(v33);

  v35 = swift_isUniquelyReferenced_nonNull_native();
  v56 = v32;
  sub_1003ECE88(v34, sub_10002CCBC, 0, v35, &v56);

  v36 = type metadata accessor for REMStoreObjectsContainer();
  v37 = *(v36 + 48);
  v38 = *(v36 + 52);
  swift_allocObject();
  v39 = a4;
  v40 = v55;
  a3 = REMStoreObjectsContainer.init(store:storages:)();
  if (v55 >> 62)
  {
LABEL_39:
    a1 = _CocoaArrayWrapper.endIndex.getter();
    if (a1)
    {
      goto LABEL_27;
    }

LABEL_40:

    return _swiftEmptyArrayStorage;
  }

  a1 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!a1)
  {
    goto LABEL_40;
  }

LABEL_27:
  v56 = _swiftEmptyArrayStorage;
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if ((a1 & 0x8000000000000000) == 0)
  {
    v42 = 0;
    v43 = v40;
    v44 = v40 & 0xC000000000000001;
    v52 = v40 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      v45 = v42 + 1;
      if (__OFADD__(v42, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v44)
      {
        v46 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v42 >= *(v52 + 16))
        {
          __break(1u);
          goto LABEL_39;
        }

        v46 = *(v43 + 8 * v42 + 32);
      }

      v47 = v46;
      v48 = [v46 objectID];
      v40 = dispatch thunk of REMStoreObjectsContainer.storedReminder(with:)();

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v13 = v56[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      ++v42;
      v43 = v55;
      if (v45 == a1)
      {

        return v56;
      }
    }
  }

  __break(1u);
  return result;
}

id sub_1003EDB6C()
{
  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100791340;
  v1 = sub_10030D838();
  *(v0 + 56) = &type metadata for String;
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  v3 = sub_10030D838();
  *(v0 + 88) = &type metadata for String;
  *(v0 + 64) = v3;
  *(v0 + 72) = v4;
  v5 = String._bridgeToObjectiveC()();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v7 = [objc_opt_self() predicateWithFormat:v5 argumentArray:isa];

  return v7;
}

id sub_1003EDC84(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100791340;
  v8 = sub_10030D838();
  *(v7 + 56) = &type metadata for String;
  *(v7 + 32) = v8;
  *(v7 + 40) = v9;
  *(v7 + 88) = sub_1000F5104(a3, a4);
  v10 = sub_1000103CC((v7 + 64));
  sub_100010364(a2, v10, a3, a4);
  v11 = String._bridgeToObjectiveC()();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v13 = [objc_opt_self() predicateWithFormat:v11 argumentArray:isa];

  sub_1000050A4(a2, a3, a4);
  return v13;
}

uint64_t sub_1003EDEC0(uint64_t a1, uint64_t a2)
{
  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100791340;

  v4 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (v5)
  {
    v6 = v4;
    v7 = v5;

    *(v3 + 56) = &type metadata for String;
    *(v3 + 32) = v6;
    *(v3 + 40) = v7;
    *(v3 + 88) = sub_1000F5104(&unk_100939D90, "8\n\r");
    v8 = sub_1000103CC((v3 + 64));
    sub_100010364(a2, v8, &unk_100939D90, "8\n\r");
    v9 = String._bridgeToObjectiveC()();
    isa = Array._bridgeToObjectiveC()().super.isa;

    v11 = [objc_opt_self() predicateWithFormat:v9 argumentArray:isa];

    sub_1000050A4(a2, &unk_100939D90, "8\n\r");
    return v11;
  }

  else
  {
    _StringGuts.grow(_:)(46);
    v13._object = 0x80000001007EC120;
    v13._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v13);
    sub_1000F5104(&unk_100942FF0, &unk_1007A3A70);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1003EE15C(uint64_t a1, uint64_t a2)
{
  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100791340;

  v4 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (v5)
  {
    v6 = v4;
    v7 = v5;

    *(v3 + 56) = &type metadata for String;
    *(v3 + 32) = v6;
    *(v3 + 40) = v7;
    *(v3 + 88) = sub_1000F5104(&unk_100939D90, "8\n\r");
    v8 = sub_1000103CC((v3 + 64));
    sub_100010364(a2, v8, &unk_100939D90, "8\n\r");
    v9 = String._bridgeToObjectiveC()();
    isa = Array._bridgeToObjectiveC()().super.isa;

    v11 = [objc_opt_self() predicateWithFormat:v9 argumentArray:isa];

    sub_1000050A4(a2, &unk_100939D90, "8\n\r");
    return v11;
  }

  else
  {
    _StringGuts.grow(_:)(46);
    v13._object = 0x80000001007EC120;
    v13._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v13);
    sub_1000F5104(&qword_100946510, &qword_1007A3B48);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1003EE38C(uint64_t a1, uint64_t a2)
{
  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100791340;

  v4 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (v5)
  {
    v6 = v4;
    v7 = v5;

    *(v3 + 32) = v6;
    *(v3 + 40) = v7;
    *(v3 + 88) = &type metadata for Int;
    *(v3 + 56) = &type metadata for String;
    *(v3 + 64) = a2;
    v8 = String._bridgeToObjectiveC()();
    isa = Array._bridgeToObjectiveC()().super.isa;

    v10 = [objc_opt_self() predicateWithFormat:v8 argumentArray:isa];

    return v10;
  }

  else
  {
    _StringGuts.grow(_:)(46);
    v12._object = 0x80000001007EC120;
    v12._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v12);
    sub_1000F5104(&unk_1009440D0, qword_10079ABB0);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1003EE564(uint64_t a1, uint64_t a2)
{
  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100791340;

  v4 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (v5)
  {
    v6 = v4;
    v7 = v5;

    *(v3 + 32) = v6;
    *(v3 + 40) = v7;
    *(v3 + 88) = &type metadata for Int;
    *(v3 + 56) = &type metadata for String;
    *(v3 + 64) = a2;
    v8 = String._bridgeToObjectiveC()();
    isa = Array._bridgeToObjectiveC()().super.isa;

    v10 = [objc_opt_self() predicateWithFormat:v8 argumentArray:isa];

    return v10;
  }

  else
  {
    _StringGuts.grow(_:)(46);
    v12._object = 0x80000001007EC120;
    v12._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v12);
    sub_1000F5104(&unk_1009440D0, qword_10079ABB0);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1003EE7B4(uint64_t a1, uint64_t a2)
{
  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100791340;

  v4 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (v5)
  {
    v6 = v4;
    v7 = v5;

    *(v3 + 56) = &type metadata for String;
    *(v3 + 32) = v6;
    *(v3 + 40) = v7;
    *(v3 + 88) = sub_1000F5104(&unk_100939D90, "8\n\r");
    v8 = sub_1000103CC((v3 + 64));
    sub_100010364(a2, v8, &unk_100939D90, "8\n\r");
    v9 = String._bridgeToObjectiveC()();
    isa = Array._bridgeToObjectiveC()().super.isa;

    v11 = [objc_opt_self() predicateWithFormat:v9 argumentArray:isa];

    sub_1000050A4(a2, &unk_100939D90, "8\n\r");
    return v11;
  }

  else
  {
    _StringGuts.grow(_:)(46);
    v13._object = 0x80000001007EC120;
    v13._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v13);
    sub_1000F5104(&qword_100942F58, qword_1007A76A0);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1003EEA00(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t *a6)
{
  _StringGuts.grow(_:)(16);

  v10._countAndFlagsBits = sub_1003AB9F4(a4);
  String.append(_:)(v10);

  v11._countAndFlagsBits = 4203808;
  v11._object = 0xE300000000000000;
  String.append(_:)(v11);
  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100791340;

  v13 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (v14)
  {
    v15 = v13;
    v16 = v14;

    *(v12 + 32) = v15;
    *(v12 + 40) = v16;
    *(v12 + 88) = &type metadata for String;
    *(v12 + 56) = &type metadata for String;
    *(v12 + 64) = a2;
    *(v12 + 72) = a3;
    v17 = String._bridgeToObjectiveC()();

    isa = Array._bridgeToObjectiveC()().super.isa;

    v19 = [objc_opt_self() predicateWithFormat:v17 argumentArray:isa];

    return v19;
  }

  else
  {
    _StringGuts.grow(_:)(46);
    v21._object = 0x80000001007EC120;
    v21._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v21);
    sub_1000F5104(a5, a6);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void sub_1003EEC48(void *a1)
{
  KeyPath = swift_getKeyPath();
  v3 = a1;
  v4 = sub_100392240(KeyPath, a1);

  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1007953F0;
  *(v5 + 32) = v3;
  v6 = v3;
  sub_1000F5104(&qword_10093F5C0, &qword_1007A1FB0);
  sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
  sub_10000CB90(&qword_100946C40, &qword_10093F5C0, &qword_1007A1FB0);
  sub_10000CE28(&qword_10093F488, &qword_10093F430, NSPersistentStore_ptr);
  v7 = Sequence.compactMapToSet<A>(_:)();
  sub_10002595C(v7);

  sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
  v8 = [objc_allocWithZone(NSFetchRequest) init];
  v9 = [swift_getObjCClassFromMetadata() entity];
  [v8 setEntity:v9];

  isa = Array._bridgeToObjectiveC()().super.isa;
  [v8 setAffectedStores:isa];

  [v8 setPredicate:v4];

  sub_100050AD0(v11);

  sub_1003FE014(_swiftEmptySetSingleton);

  v12 = Array._bridgeToObjectiveC()().super.isa;

  [v8 setPropertiesToFetch:v12];

  v19 = [v6 managedObjectContext];
  sub_1000F5104(&qword_1009460A0, &qword_1007A7718);
  Optional.tryUnwrap(_:file:line:)();

  v13 = NSManagedObjectContext.fetch<A>(_:)();
  if (qword_100936028 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100006654(v14, qword_100945FD0);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 134217984;
    if (v13 >> 62)
    {
      v18 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v18 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v17 + 4) = v18;

    _os_log_impl(&_mh_execute_header, v15, v16, "Pre-fetching {result.count: %ld}", v17, 0xCu);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }
}

uint64_t sub_1003EF240(uint64_t a1, uint64_t a2)
{
  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100791340;

  v4 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (v5)
  {
    v6 = v4;
    v7 = v5;

    *(v3 + 56) = &type metadata for String;
    *(v3 + 32) = v6;
    *(v3 + 40) = v7;
    *(v3 + 88) = sub_1000F5104(&unk_100939D90, "8\n\r");
    v8 = sub_1000103CC((v3 + 64));
    sub_100010364(a2, v8, &unk_100939D90, "8\n\r");
    v9 = String._bridgeToObjectiveC()();
    isa = Array._bridgeToObjectiveC()().super.isa;

    v11 = [objc_opt_self() predicateWithFormat:v9 argumentArray:isa];

    sub_1000050A4(a2, &unk_100939D90, "8\n\r");
    return v11;
  }

  else
  {
    _StringGuts.grow(_:)(46);
    v13._object = 0x80000001007EC120;
    v13._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v13);
    sub_1000F5104(&qword_1009464E0, &unk_1007A3960);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1003EF474(uint64_t a1, int a2)
{
  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100791340;

  v4 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (v5)
  {
    v6 = v4;
    v7 = v5;

    *(v3 + 56) = &type metadata for String;
    *(v3 + 32) = v6;
    *(v3 + 40) = v7;
    *(v3 + 88) = &type metadata for Int32;
    *(v3 + 64) = a2;
    v8 = String._bridgeToObjectiveC()();
    isa = Array._bridgeToObjectiveC()().super.isa;

    v10 = [objc_opt_self() predicateWithFormat:v8 argumentArray:isa];

    return v10;
  }

  else
  {
    _StringGuts.grow(_:)(46);
    v12._object = 0x80000001007EC120;
    v12._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v12);
    sub_1000F5104(&qword_100943068, &unk_1007A3AE8);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1003EF884(uint64_t a1, uint64_t a2)
{
  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100791340;

  v4 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (v5)
  {
    v6 = v4;
    v7 = v5;

    *(v3 + 56) = &type metadata for String;
    *(v3 + 32) = v6;
    *(v3 + 40) = v7;
    *(v3 + 88) = sub_1000F5104(&unk_100939D90, "8\n\r");
    v8 = sub_1000103CC((v3 + 64));
    sub_100010364(a2, v8, &unk_100939D90, "8\n\r");
    v9 = String._bridgeToObjectiveC()();
    isa = Array._bridgeToObjectiveC()().super.isa;

    v11 = [objc_opt_self() predicateWithFormat:v9 argumentArray:isa];

    sub_1000050A4(a2, &unk_100939D90, "8\n\r");
    return v11;
  }

  else
  {
    _StringGuts.grow(_:)(46);
    v13._object = 0x80000001007EC120;
    v13._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v13);
    sub_1000F5104(&qword_100940340, &unk_10079F3A0);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1003EFA90(uint64_t a1, uint64_t a2)
{
  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100791340;

  v4 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (v5)
  {
    v6 = v4;
    v7 = v5;

    *(v3 + 32) = v6;
    *(v3 + 40) = v7;
    *(v3 + 88) = &type metadata for Int64;
    *(v3 + 56) = &type metadata for String;
    *(v3 + 64) = a2;
    v8 = String._bridgeToObjectiveC()();
    isa = Array._bridgeToObjectiveC()().super.isa;

    v10 = [objc_opt_self() predicateWithFormat:v8 argumentArray:isa];

    return v10;
  }

  else
  {
    _StringGuts.grow(_:)(46);
    v12._object = 0x80000001007EC120;
    v12._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v12);
    sub_1000F5104(&unk_100939F10, &qword_100797F30);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1003EFC70(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100791340;

  v6 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (v7 && (*(v5 + 56) = &type metadata for String, *(v5 + 32) = v6, *(v5 + 40) = v7, v8 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter(), v9))
  {
    v10 = v8;
    v11 = v9;

    *(v5 + 88) = &type metadata for String;
    *(v5 + 64) = v10;
    *(v5 + 72) = v11;
    v12 = String._bridgeToObjectiveC()();
    isa = Array._bridgeToObjectiveC()().super.isa;

    v14 = [objc_opt_self() predicateWithFormat:v12 argumentArray:isa];

    return v14;
  }

  else
  {
    _StringGuts.grow(_:)(46);
    v16._object = 0x80000001007EC120;
    v16._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v16);
    sub_1000F5104(a2, a3);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

id sub_1003EFE4C(void *a1, uint64_t a2)
{
  v52 = a2;
  v47 = a1;
  v48 = _s10PredicatesOMa(0);
  v2 = *(*(v48 - 8) + 64);
  __chkstk_darwin(v48);
  v4 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Calendar.Component();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Calendar();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v47 - v17;
  v51 = type metadata accessor for Date();
  v50 = *(v51 - 8);
  v19 = *(v50 + 64);
  __chkstk_darwin(v51);
  v21 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  Date.init()();
  static Calendar.current.getter();
  (*(v6 + 104))(v9, enum case for Calendar.Component.day(_:), v5);
  if (v52 < 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  Calendar.date(byAdding:value:to:wrappingComponents:)();
  (*(v6 + 8))(v9, v5);
  (*(v11 + 8))(v14, v10);
  v22 = *(sub_1000F5104(&qword_100946038, qword_1007A7578) + 48);
  sub_100010364(v18, v4, &unk_100938850, qword_100795AE0);
  v4[v22] = 1;
  swift_storeEnumTagMultiPayload();
  v23 = sub_100043AA8();
  sub_1000504F8(v4, _s10PredicatesOMa);
  sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
  v24 = [objc_allocWithZone(NSFetchRequest) init];
  v25 = [swift_getObjCClassFromMetadata() entity];
  [v24 setEntity:v25];

  [v24 setAffectedStores:0];
  [v24 setPredicate:v23];
  *(&v56 + 1) = sub_1000F5104(&qword_100939EB8, &unk_1007A35C0);
  *&v55 = v24;
  v26 = v24;
  v27 = v49;
  throwingCast<A>(_:as:failureMessage:)();
  v28 = v18;
  if (!v27)
  {
    v5 = v21;

    sub_10000607C(&v55);
    v21 = v54;
    v4 = [objc_allocWithZone(NSBatchDeleteRequest) initWithFetchRequest:v54];
    [v4 setResultType:1];
    v53 = 0;
    v29 = v47;
    v30 = [v47 executeRequest:v4 error:&v53];
    v26 = v53;
    if (!v30)
    {
      v33 = v53;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      sub_1000050A4(v18, &unk_100938850, qword_100795AE0);
      (*(v50 + 8))(v5, v51);
      return v26;
    }

    v31 = v30;
    *(&v56 + 1) = sub_1000060C8(0, &qword_100939EC0, NSPersistentStoreResult_ptr);
    *&v55 = v31;
    sub_1000060C8(0, &qword_100939EC8, NSBatchDeleteResult_ptr);
    v32 = v26;
    throwingCast<A>(_:as:failureMessage:)();
    sub_10000607C(&v55);
    v34 = v54;
    if ([v54 result])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      sub_100005EE0(&v54, &v55);
    }

    else
    {
      v55 = 0u;
      v56 = 0u;
    }

    v35 = sub_1000F5104(&qword_100937028, &qword_100791C10);
    throwingCast<A>(_:as:failureMessage:)();
    v48 = v34;
    v52 = v28;
    sub_1000050A4(&v55, &qword_100939ED0, &qword_100791B10);
    v37 = v53;
    v49 = objc_opt_self();
    sub_1000F5104(&unk_100939DA0, &unk_1007A35B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100791300;
    *&v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(&v55 + 1) = v39;
    AnyHashable.init<A>(_:)();
    *(inited + 96) = v35;
    *(inited + 72) = v37;

    sub_10038ED74(inited);
    swift_setDeallocating();
    sub_1000050A4(inited + 32, &unk_100946590, &qword_100796FF0);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    sub_1000F5104(&unk_100939D60, &unk_1007959E0);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_1007953F0;
    *(v41 + 32) = v29;
    sub_1000060C8(0, &unk_100940130, NSManagedObjectContext_ptr);
    v42 = v29;
    v43 = Array._bridgeToObjectiveC()().super.isa;

    [v49 mergeChangesFromRemoteContextSave:isa intoContexts:v43];

    if (!(v37 >> 62))
    {
      v26 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_14:
      v44 = v51;
      v45 = v50;
      v46 = v48;

      sub_1000050A4(v52, &unk_100938850, qword_100795AE0);
      (*(v45 + 8))(v5, v44);
      return v26;
    }

LABEL_16:
    v26 = _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_14;
  }

  sub_1000050A4(v18, &unk_100938850, qword_100795AE0);
  (*(v50 + 8))(v21, v51);
  sub_10000607C(&v55);
  return v26;
}

uint64_t sub_1003F07EC(uint64_t a1, void *a2, void (**a3)(char *, uint64_t))
{
  v5 = v4;
  if (a2)
  {
    v7 = a2;
    v8 = sub_1005E37C0(v7);
    if (v4)
    {

      return v3;
    }

    v9 = v8;
    v3 = a3;
    v10 = sub_1005660A8(v8, 0);
    v5 = 0;
    if (!v10)
    {
      [objc_opt_self() noSuchObjectErrorWithObjectID:v7];
      swift_willThrow();

      goto LABEL_29;
    }

    v11 = v10;
  }

  if (qword_100936080 != -1)
  {
    goto LABEL_25;
  }

  while (1)
  {
    v12 = sub_100043AA8();
    sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
    v13 = [objc_allocWithZone(NSFetchRequest) init];
    v14 = [swift_getObjCClassFromMetadata() entity];
    [v13 setEntity:v14];

    [v13 setAffectedStores:0];
    [v13 setPredicate:v12];

    [v13 setFetchLimit:0];
    [v13 setFetchOffset:0];
    sub_1000F5104(&qword_100949370, &unk_100797770);
    sub_10000CB90(&qword_100939850, &qword_100949370, &unk_100797770);
    Predicate = Sequence<>.postFetchPredicateTypes.getter();
    sub_1003EBAD0();
    sub_100271EA8(_swiftEmptyArrayStorage);
    v16 = sub_100235FA0(Predicate);

    v17 = sub_100277CC0(v16);

    v18 = *(v17 + 16);
    v35 = v13;
    if (!v18)
    {
      goto LABEL_27;
    }

LABEL_10:
    sub_100026EF4(0, v18 & ~(v18 >> 63), 0);
    if (v18 < 0)
    {
      __break(1u);
LABEL_33:
      _StringGuts.grow(_:)(46);
      v32._object = 0x80000001007EC120;
      v32._countAndFlagsBits = 0xD00000000000002CLL;
      String.append(_:)(v32);
      sub_1000F5104(&unk_100939F10, &qword_100797F30);
      _print_unlocked<A, B>(_:_:)();
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    v33 = a3;
    v34 = v5;
    v19 = 0;
    v36 = v18;
    while (1)
    {
      a3 = (v19 + 1);
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if ((v17 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v19 >= *(v17 + 16))
        {
          goto LABEL_24;
        }

        v20 = *(v17 + 8 * v19 + 32);
      }

      v21 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
      if (!v22)
      {
        goto LABEL_33;
      }

      v23 = v21;
      v24 = v22;

      v26 = _swiftEmptyArrayStorage[2];
      v25 = _swiftEmptyArrayStorage[3];
      v5 = v26 + 1;
      if (v26 >= v25 >> 1)
      {
        sub_100026EF4((v25 > 1), v26 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v5;
      v27 = &_swiftEmptyArrayStorage[2 * v26];
      v27[4] = v23;
      v27[5] = v24;
      ++v19;
      if (a3 == v36)
      {

        a3 = v33;
        v5 = v34;
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    swift_once();
  }

  v18 = _CocoaArrayWrapper.endIndex.getter();
  v35 = v13;
  if (v18)
  {
    goto LABEL_10;
  }

LABEL_27:

LABEL_28:
  sub_100271EA8(_swiftEmptyArrayStorage);
  sub_1000F5104(&unk_10093B300, &unk_100797780);
  Array<A>.removeDuplicates()();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v9 = v35;
  [v35 setRelationshipKeyPathsForPrefetching:isa];

  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  v29 = Array._bridgeToObjectiveC()().super.isa;
  [v35 setSortDescriptors:v29];

  v3 = a3;
  v30 = NSManagedObjectContext.fetch<A>(_:)();
  if (!v5)
  {
    v3 = sub_100155C54(_swiftEmptyArrayStorage, _swiftEmptySetSingleton, v30);

    return v3;
  }

LABEL_29:

  return v3;
}

uint64_t _s10PredicatesO18ConcealedPredicateOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_19;
  }

  v2 = a2 + 6;
  if (a2 + 6 >= 0xFFFF00)
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

    return (*a1 | (v5 << 8)) - 6;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 6;
    }
  }

LABEL_19:
  v7 = *a1;
  if (v7 < 2)
  {
    return 0;
  }

  v8 = (v7 + 2147483646) & 0x7FFFFFFF;
  result = v8 - 4;
  if (v8 <= 4)
  {
    return 0;
  }

  return result;
}

uint64_t _s10PredicatesO18ConcealedPredicateOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 6;
  if (a3 + 6 >= 0xFFFF00)
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

  if (a3 < 0xFA)
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1003F0EC4(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1003F0EE0(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t *sub_1003F0F08(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v9 = *a2;
    *a1 = *a2;
    a1 = (v9 + ((v4 + 16) & ~v4));

    return a1;
  }

  v5 = *(a3 - 8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    *a1 = *a2;

    goto LABEL_7;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    v8 = type metadata accessor for Date();
    (*(*(v8 - 8) + 16))(a1, a2, v8);
LABEL_7:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v11 = *(v5 + 64);

  return memcpy(a1, a2, v11);
}

void *sub_1003F108C(void *a1, void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_1000504F8(a1, _s10PredicatesO19CompletionPredicateOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    *a1 = *a2;

    goto LABEL_6;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    v7 = type metadata accessor for Date();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
LABEL_6:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v9 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v9);
}

void *sub_1003F11F4(void *a1, const void *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    v8 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v8);
  }

  else
  {
    v6 = type metadata accessor for Date();
    (*(*(v6 - 8) + 32))(a1, a2, v6);
    swift_storeEnumTagMultiPayload();
    return a1;
  }
}

void *sub_1003F1314(void *a1, const void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_1000504F8(a1, _s10PredicatesO19CompletionPredicateOMa);
  if (swift_getEnumCaseMultiPayload() <= 1)
  {
    v6 = type metadata accessor for Date();
    (*(*(v6 - 8) + 32))(a1, a2, v6);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v8 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v8);
}

uint64_t sub_1003F1458()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

void *sub_1003F14F0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) == 0)
  {
    v6 = *(a3 - 8);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        *a1 = *a2;
        *(a1 + 8) = *(a2 + 8);

        goto LABEL_74;
      case 1u:
      case 0x21u:
        v52 = *a2;
        *a1 = *a2;
        *(a1 + 8) = *(a2 + 8);
        v53 = v52;
        goto LABEL_74;
      case 2u:
        v42 = *a2;
        *a1 = *a2;
        *(a1 + 8) = *(a2 + 8);
        v43 = v42;
        v44 = *(sub_1000F5104(&qword_10093C920, qword_1007AC750) + 64);
        v45 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
        (*(*(v45 - 8) + 16))(a1 + v44, a2 + v44, v45);
        goto LABEL_74;
      case 3u:
        *a1 = *a2;

        v65 = sub_1000F5104(&qword_100946068, &unk_1007A7650);
        v66 = *(v65 + 48);
        v67 = _s10PredicatesO19CompletionPredicateOMa(0);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload == 2)
        {
          *(a1 + v66) = *(a2 + v66);

          swift_storeEnumTagMultiPayload();
        }

        else if (EnumCaseMultiPayload > 1)
        {
          memcpy((a1 + v66), a2 + v66, *(*(v67 - 8) + 64));
        }

        else
        {
          v69 = type metadata accessor for Date();
          (*(*(v69 - 8) + 16))(a1 + v66, a2 + v66, v69);
          swift_storeEnumTagMultiPayload();
        }

        *(a1 + *(v65 + 64)) = *(a2 + *(v65 + 64));
        goto LABEL_74;
      case 4u:
        *a1 = *a2;

        v70 = sub_1000F5104(&qword_100946060, &qword_1007A7648);
        v71 = *(v70 + 48);
        v13 = type metadata accessor for Date();
        v14 = *(v13 - 8);
        v72 = *(v14 + 48);
        if (v72(a2 + v71, 1, v13))
        {
          v73 = sub_1000F5104(&unk_100938850, qword_100795AE0);
          memcpy((a1 + v71), a2 + v71, *(*(v73 - 8) + 64));
        }

        else
        {
          (*(v14 + 16))(a1 + v71, a2 + v71, v13);
          (*(v14 + 56))(a1 + v71, 0, 1, v13);
        }

        v12 = *(v70 + 64);
        if (v72(a2 + v12, 1, v13))
        {
          goto LABEL_63;
        }

        goto LABEL_56;
      case 5u:
        v50 = *a2;
        *a1 = *a2;
        *(a1 + 8) = *(a2 + 8);
        *(a1 + 16) = a2[2];
        v51 = v50;
        goto LABEL_74;
      case 6u:
      case 7u:
      case 0x1Au:
      case 0x22u:
      case 0x23u:
      case 0x24u:
      case 0x25u:
        v54 = *a2;
        *a1 = *a2;
        v55 = v54;
        goto LABEL_74;
      case 8u:
      case 0x17u:
        v34 = *a2;
        *a1 = *a2;
        v35 = v34;
        v36 = *(sub_1000F5104(&unk_100942AF0, qword_1007A7520) + 48);
        v37 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
        (*(*(v37 - 8) + 16))(a1 + v36, a2 + v36, v37);
        goto LABEL_74;
      case 9u:
        v81 = *a2;
        *a1 = *a2;
        v82 = v81;
        v83 = sub_1000F5104(&qword_100946058, qword_1007A75D0);
        v84 = *(v83 + 48);
        v85 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
        (*(*(v85 - 8) + 16))(a1 + v84, a2 + v84, v85);
        *(a1 + *(v83 + 64)) = *(a2 + *(v83 + 64));
        goto LABEL_74;
      case 0xAu:
        *a1 = *a2;

        v38 = *(sub_1000F5104(&qword_100946050, &qword_1007B0450) + 48);
        v39 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
        (*(*(v39 - 8) + 16))(a1 + v38, a2 + v38, v39);
        goto LABEL_74;
      case 0xBu:
      case 0xCu:
      case 0xFu:
        v60 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
        (*(*(v60 - 8) + 16))(a1, a2, v60);
        goto LABEL_74;
      case 0xDu:
        v28 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
        (*(*(v28 - 8) + 16))(a1, a2, v28);
        v29 = *(sub_1000F5104(&qword_100946048, &unk_1007A75C0) + 48);
        v30 = type metadata accessor for Date();
        (*(*(v30 - 8) + 16))(a1 + v29, a2 + v29, v30);
        goto LABEL_74;
      case 0xEu:
        v59 = type metadata accessor for Date();
        (*(*(v59 - 8) + 16))(a1, a2, v59);
        goto LABEL_74;
      case 0x10u:
        v89 = *a2;
        *a1 = *a2;
        *(a1 + 8) = *(a2 + 8);
        v90 = v89;
        v12 = *(sub_1000F5104(&qword_100946040, &qword_1007A75B8) + 64);
        v13 = type metadata accessor for Date();
        v14 = *(v13 - 8);
        if ((*(v14 + 48))(a2 + v12, 1, v13))
        {
          goto LABEL_63;
        }

        goto LABEL_56;
      case 0x11u:
        v86 = type metadata accessor for Date();
        v87 = *(v86 - 8);
        if ((*(v87 + 48))(a2, 1, v86))
        {
          v88 = sub_1000F5104(&unk_100938850, qword_100795AE0);
          memcpy(a1, a2, *(*(v88 - 8) + 64));
        }

        else
        {
          (*(v87 + 16))(a1, a2, v86);
          (*(v87 + 56))(a1, 0, 1, v86);
        }

        v96 = sub_1000F5104(&qword_100946038, qword_1007A7578);
        *(a1 + *(v96 + 48)) = *(a2 + *(v96 + 48));
        goto LABEL_74;
      case 0x12u:
        v20 = *a2;
        v21 = a2[1];
        *a1 = *a2;
        *(a1 + 8) = v21;
        v22 = v20;
        v23 = v21;
        v24 = *(sub_1000F5104(&qword_100938A98, &qword_1007A7570) + 64);
        v25 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
        (*(*(v25 - 8) + 16))(a1 + v24, a2 + v24, v25);
        goto LABEL_74;
      case 0x13u:
        *a1 = *a2;

        v40 = *(sub_1000F5104(&qword_10093A560, &qword_100797768) + 48);
        v41 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
        (*(*(v41 - 8) + 16))(a1 + v40, a2 + v40, v41);
        goto LABEL_74;
      case 0x14u:
      case 0x16u:
      case 0x1Cu:
      case 0x20u:
      case 0x2Au:
      case 0x2Du:
        *a1 = *a2;

        goto LABEL_74;
      case 0x15u:
        *a1 = *a2;

        v26 = *(sub_1000F5104(&qword_100941B90, &unk_1007A7560) + 48);
        v27 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
        (*(*(v27 - 8) + 16))(a1 + v26, a2 + v26, v27);
        goto LABEL_74;
      case 0x18u:
      case 0x19u:
        v31 = *a2;
        v32 = a2[1];
        *a1 = v31;
        *(a1 + 8) = v32;

        v33 = v32;
        goto LABEL_74;
      case 0x1Bu:
        v92 = type metadata accessor for Date();
        v93 = *(*(v92 - 8) + 16);
        v93(a1, a2, v92);
        v94 = sub_1000F5104(&qword_100946030, qword_1007A74D0);
        v93(a1 + *(v94 + 48), (a2 + *(v94 + 48)), v92);
        goto LABEL_74;
      case 0x1Du:
        *a1 = *a2;

        v46 = sub_1000F5104(&qword_100946028, &unk_1007A7498);
        v47 = *(v46 + 48);
        v13 = type metadata accessor for Date();
        v14 = *(v13 - 8);
        v48 = *(v14 + 48);
        if (v48(a2 + v47, 1, v13))
        {
          v49 = sub_1000F5104(&unk_100938850, qword_100795AE0);
          memcpy((a1 + v47), a2 + v47, *(*(v49 - 8) + 64));
        }

        else
        {
          (*(v14 + 16))(a1 + v47, a2 + v47, v13);
          (*(v14 + 56))(a1 + v47, 0, 1, v13);
        }

        v12 = *(v46 + 64);
        if (!v48(a2 + v12, 1, v13))
        {
          goto LABEL_56;
        }

        goto LABEL_63;
      case 0x1Eu:
        *a1 = *a2;

        v61 = sub_1000F5104(&qword_100946028, &unk_1007A7498);
        v62 = *(v61 + 48);
        v13 = type metadata accessor for Date();
        v14 = *(v13 - 8);
        v63 = *(v14 + 48);
        if (v63(a2 + v62, 1, v13))
        {
          v64 = sub_1000F5104(&unk_100938850, qword_100795AE0);
          memcpy((a1 + v62), a2 + v62, *(*(v64 - 8) + 64));
        }

        else
        {
          (*(v14 + 16))(a1 + v62, a2 + v62, v13);
          (*(v14 + 56))(a1 + v62, 0, 1, v13);
        }

        v12 = *(v61 + 64);
        if (v63(a2 + v12, 1, v13))
        {
          goto LABEL_63;
        }

        goto LABEL_56;
      case 0x26u:
        v74 = *a2;
        *a1 = *a2;
        v75 = v74;
        v76 = sub_1000F5104(&unk_100939F00, &unk_1007972A0);
        v77 = *(v76 + 48);
        v78 = _s10PredicatesO19CompletionPredicateOMa(0);
        v79 = swift_getEnumCaseMultiPayload();
        if (v79 == 2)
        {
          *(a1 + v77) = *(a2 + v77);

          swift_storeEnumTagMultiPayload();
        }

        else if (v79 > 1)
        {
          memcpy((a1 + v77), a2 + v77, *(*(v78 - 8) + 64));
        }

        else
        {
          v80 = type metadata accessor for Date();
          (*(*(v80 - 8) + 16))(a1 + v77, a2 + v77, v80);
          swift_storeEnumTagMultiPayload();
        }

        *(a1 + *(v76 + 64)) = *(a2 + *(v76 + 64));
        goto LABEL_74;
      case 0x27u:
        *a1 = *a2;

        v12 = *(sub_1000F5104(&qword_100946018, qword_1007A71C8) + 48);
        v13 = type metadata accessor for Date();
        v14 = *(v13 - 8);
        if ((*(v14 + 48))(a2 + v12, 1, v13))
        {
          goto LABEL_63;
        }

        goto LABEL_56;
      case 0x28u:
        v8 = *a2;
        v9 = a2[1];
        *a1 = *a2;
        *(a1 + 8) = v9;
        v10 = v8;
        v11 = v9;
        v12 = *(sub_1000F5104(&qword_100946010, &qword_1007A71C0) + 64);
        v13 = type metadata accessor for Date();
        v14 = *(v13 - 8);
        if ((*(v14 + 48))(a2 + v12, 1, v13))
        {
          goto LABEL_63;
        }

        goto LABEL_56;
      case 0x29u:
        *a1 = *a2;

        v12 = *(sub_1000F5104(&qword_100946008, &qword_1007A71B8) + 48);
        v13 = type metadata accessor for Date();
        v14 = *(v13 - 8);
        if ((*(v14 + 48))(a2 + v12, 1, v13))
        {
LABEL_63:
          v95 = sub_1000F5104(&unk_100938850, qword_100795AE0);
          memcpy((a1 + v12), a2 + v12, *(*(v95 - 8) + 64));
        }

        else
        {
LABEL_56:
          (*(v14 + 16))(a1 + v12, a2 + v12, v13);
          (*(v14 + 56))(a1 + v12, 0, 1, v13);
        }

        goto LABEL_74;
      case 0x2Cu:
        v91 = a2[1];
        *a1 = *a2;
        *(a1 + 8) = v91;
        *(a1 + 16) = *(a2 + 16);

        goto LABEL_74;
      case 0x2Eu:
        v17 = type metadata accessor for Date();
        v18 = *(v17 - 8);
        if ((*(v18 + 48))(a2, 1, v17))
        {
          v19 = sub_1000F5104(&unk_100938850, qword_100795AE0);
          memcpy(a1, a2, *(*(v19 - 8) + 64));
        }

        else
        {
          (*(v18 + 16))(a1, a2, v17);
          (*(v18 + 56))(a1, 0, 1, v17);
        }

        goto LABEL_74;
      case 0x2Fu:
        v56 = type metadata accessor for UUID();
        (*(*(v56 - 8) + 16))(a1, a2, v56);
        v57 = *(sub_1000F5104(&qword_100945FF0, &qword_1007AC720) + 48);
        v58 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
        (*(*(v58 - 8) + 16))(a1 + v57, a2 + v57, v58);
LABEL_74:
        swift_storeEnumTagMultiPayload();
        return a1;
      default:
        v15 = *(v6 + 64);

        return memcpy(a1, a2, v15);
    }
  }

  v7 = *a2;
  *a1 = *a2;
  a1 = v7 + ((v5 + 16) & ~v5);

  return a1;
}

void *sub_1003F2CA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    sub_1000504F8(a1, _s10PredicatesOMa);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        *a1 = *a2;
        *(a1 + 8) = *(a2 + 8);

        goto LABEL_73;
      case 1u:
      case 0x21u:
        v49 = *a2;
        *a1 = *a2;
        *(a1 + 8) = *(a2 + 8);
        v50 = v49;
        goto LABEL_73;
      case 2u:
        v39 = *a2;
        *a1 = *a2;
        *(a1 + 8) = *(a2 + 8);
        v40 = v39;
        v41 = *(sub_1000F5104(&qword_10093C920, qword_1007AC750) + 64);
        v42 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
        (*(*(v42 - 8) + 16))(a1 + v41, a2 + v41, v42);
        goto LABEL_73;
      case 3u:
        *a1 = *a2;

        v62 = sub_1000F5104(&qword_100946068, &unk_1007A7650);
        v63 = *(v62 + 48);
        v64 = _s10PredicatesO19CompletionPredicateOMa(0);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload == 2)
        {
          *(a1 + v63) = *(a2 + v63);

          swift_storeEnumTagMultiPayload();
        }

        else if (EnumCaseMultiPayload > 1)
        {
          memcpy((a1 + v63), (a2 + v63), *(*(v64 - 8) + 64));
        }

        else
        {
          v66 = type metadata accessor for Date();
          (*(*(v66 - 8) + 16))(a1 + v63, a2 + v63, v66);
          swift_storeEnumTagMultiPayload();
        }

        *(a1 + *(v62 + 64)) = *(a2 + *(v62 + 64));
        goto LABEL_73;
      case 4u:
        *a1 = *a2;

        v67 = sub_1000F5104(&qword_100946060, &qword_1007A7648);
        v68 = *(v67 + 48);
        v11 = type metadata accessor for Date();
        v12 = *(v11 - 8);
        v69 = *(v12 + 48);
        if (v69(a2 + v68, 1, v11))
        {
          v70 = sub_1000F5104(&unk_100938850, qword_100795AE0);
          memcpy((a1 + v68), (a2 + v68), *(*(v70 - 8) + 64));
        }

        else
        {
          (*(v12 + 16))(a1 + v68, a2 + v68, v11);
          (*(v12 + 56))(a1 + v68, 0, 1, v11);
        }

        v10 = *(v67 + 64);
        if (v69(a2 + v10, 1, v11))
        {
          goto LABEL_62;
        }

        goto LABEL_55;
      case 5u:
        v47 = *a2;
        *a1 = *a2;
        *(a1 + 8) = *(a2 + 8);
        *(a1 + 16) = *(a2 + 16);
        v48 = v47;
        goto LABEL_73;
      case 6u:
      case 7u:
      case 0x1Au:
      case 0x22u:
      case 0x23u:
      case 0x24u:
      case 0x25u:
        v51 = *a2;
        *a1 = *a2;
        v52 = v51;
        goto LABEL_73;
      case 8u:
      case 0x17u:
        v31 = *a2;
        *a1 = *a2;
        v32 = v31;
        v33 = *(sub_1000F5104(&unk_100942AF0, qword_1007A7520) + 48);
        v34 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
        (*(*(v34 - 8) + 16))(a1 + v33, a2 + v33, v34);
        goto LABEL_73;
      case 9u:
        v78 = *a2;
        *a1 = *a2;
        v79 = v78;
        v80 = sub_1000F5104(&qword_100946058, qword_1007A75D0);
        v81 = *(v80 + 48);
        v82 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
        (*(*(v82 - 8) + 16))(a1 + v81, a2 + v81, v82);
        *(a1 + *(v80 + 64)) = *(a2 + *(v80 + 64));
        goto LABEL_73;
      case 0xAu:
        *a1 = *a2;

        v35 = *(sub_1000F5104(&qword_100946050, &qword_1007B0450) + 48);
        v36 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
        (*(*(v36 - 8) + 16))(a1 + v35, a2 + v35, v36);
        goto LABEL_73;
      case 0xBu:
      case 0xCu:
      case 0xFu:
        v57 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
        (*(*(v57 - 8) + 16))(a1, a2, v57);
        goto LABEL_73;
      case 0xDu:
        v26 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
        (*(*(v26 - 8) + 16))(a1, a2, v26);
        v27 = *(sub_1000F5104(&qword_100946048, &unk_1007A75C0) + 48);
        v28 = type metadata accessor for Date();
        (*(*(v28 - 8) + 16))(a1 + v27, a2 + v27, v28);
        goto LABEL_73;
      case 0xEu:
        v56 = type metadata accessor for Date();
        (*(*(v56 - 8) + 16))(a1, a2, v56);
        goto LABEL_73;
      case 0x10u:
        v86 = *a2;
        *a1 = *a2;
        *(a1 + 8) = *(a2 + 8);
        v87 = v86;
        v10 = *(sub_1000F5104(&qword_100946040, &qword_1007A75B8) + 64);
        v11 = type metadata accessor for Date();
        v12 = *(v11 - 8);
        if ((*(v12 + 48))(a2 + v10, 1, v11))
        {
          goto LABEL_62;
        }

        goto LABEL_55;
      case 0x11u:
        v83 = type metadata accessor for Date();
        v84 = *(v83 - 8);
        if ((*(v84 + 48))(a2, 1, v83))
        {
          v85 = sub_1000F5104(&unk_100938850, qword_100795AE0);
          memcpy(a1, a2, *(*(v85 - 8) + 64));
        }

        else
        {
          (*(v84 + 16))(a1, a2, v83);
          (*(v84 + 56))(a1, 0, 1, v83);
        }

        v92 = sub_1000F5104(&qword_100946038, qword_1007A7578);
        *(a1 + *(v92 + 48)) = *(a2 + *(v92 + 48));
        goto LABEL_73;
      case 0x12u:
        v18 = *a2;
        *a1 = *a2;
        v19 = *(a2 + 8);
        *(a1 + 8) = v19;
        v20 = v18;
        v21 = v19;
        v22 = *(sub_1000F5104(&qword_100938A98, &qword_1007A7570) + 64);
        v23 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
        (*(*(v23 - 8) + 16))(a1 + v22, a2 + v22, v23);
        goto LABEL_73;
      case 0x13u:
        *a1 = *a2;

        v37 = *(sub_1000F5104(&qword_10093A560, &qword_100797768) + 48);
        v38 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
        (*(*(v38 - 8) + 16))(a1 + v37, a2 + v37, v38);
        goto LABEL_73;
      case 0x14u:
      case 0x16u:
      case 0x1Cu:
      case 0x20u:
      case 0x2Au:
      case 0x2Du:
        *a1 = *a2;

        goto LABEL_73;
      case 0x15u:
        *a1 = *a2;

        v24 = *(sub_1000F5104(&qword_100941B90, &unk_1007A7560) + 48);
        v25 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
        (*(*(v25 - 8) + 16))(a1 + v24, a2 + v24, v25);
        goto LABEL_73;
      case 0x18u:
      case 0x19u:
        *a1 = *a2;
        v29 = *(a2 + 8);
        *(a1 + 8) = v29;

        v30 = v29;
        goto LABEL_73;
      case 0x1Bu:
        v88 = type metadata accessor for Date();
        v89 = *(*(v88 - 8) + 16);
        v89(a1, a2, v88);
        v90 = sub_1000F5104(&qword_100946030, qword_1007A74D0);
        v89(a1 + *(v90 + 48), a2 + *(v90 + 48), v88);
        goto LABEL_73;
      case 0x1Du:
        *a1 = *a2;

        v43 = sub_1000F5104(&qword_100946028, &unk_1007A7498);
        v44 = *(v43 + 48);
        v11 = type metadata accessor for Date();
        v12 = *(v11 - 8);
        v45 = *(v12 + 48);
        if (v45(a2 + v44, 1, v11))
        {
          v46 = sub_1000F5104(&unk_100938850, qword_100795AE0);
          memcpy((a1 + v44), (a2 + v44), *(*(v46 - 8) + 64));
        }

        else
        {
          (*(v12 + 16))(a1 + v44, a2 + v44, v11);
          (*(v12 + 56))(a1 + v44, 0, 1, v11);
        }

        v10 = *(v43 + 64);
        if (!v45(a2 + v10, 1, v11))
        {
          goto LABEL_55;
        }

        goto LABEL_62;
      case 0x1Eu:
        *a1 = *a2;

        v58 = sub_1000F5104(&qword_100946028, &unk_1007A7498);
        v59 = *(v58 + 48);
        v11 = type metadata accessor for Date();
        v12 = *(v11 - 8);
        v60 = *(v12 + 48);
        if (v60(a2 + v59, 1, v11))
        {
          v61 = sub_1000F5104(&unk_100938850, qword_100795AE0);
          memcpy((a1 + v59), (a2 + v59), *(*(v61 - 8) + 64));
        }

        else
        {
          (*(v12 + 16))(a1 + v59, a2 + v59, v11);
          (*(v12 + 56))(a1 + v59, 0, 1, v11);
        }

        v10 = *(v58 + 64);
        if (v60(a2 + v10, 1, v11))
        {
          goto LABEL_62;
        }

        goto LABEL_55;
      case 0x26u:
        v71 = *a2;
        *a1 = *a2;
        v72 = v71;
        v73 = sub_1000F5104(&unk_100939F00, &unk_1007972A0);
        v74 = *(v73 + 48);
        v75 = _s10PredicatesO19CompletionPredicateOMa(0);
        v76 = swift_getEnumCaseMultiPayload();
        if (v76 == 2)
        {
          *(a1 + v74) = *(a2 + v74);

          swift_storeEnumTagMultiPayload();
        }

        else if (v76 > 1)
        {
          memcpy((a1 + v74), (a2 + v74), *(*(v75 - 8) + 64));
        }

        else
        {
          v77 = type metadata accessor for Date();
          (*(*(v77 - 8) + 16))(a1 + v74, a2 + v74, v77);
          swift_storeEnumTagMultiPayload();
        }

        *(a1 + *(v73 + 64)) = *(a2 + *(v73 + 64));
        goto LABEL_73;
      case 0x27u:
        *a1 = *a2;

        v10 = *(sub_1000F5104(&qword_100946018, qword_1007A71C8) + 48);
        v11 = type metadata accessor for Date();
        v12 = *(v11 - 8);
        if ((*(v12 + 48))(a2 + v10, 1, v11))
        {
          goto LABEL_62;
        }

        goto LABEL_55;
      case 0x28u:
        v6 = *a2;
        *a1 = *a2;
        v7 = *(a2 + 8);
        *(a1 + 8) = v7;
        v8 = v6;
        v9 = v7;
        v10 = *(sub_1000F5104(&qword_100946010, &qword_1007A71C0) + 64);
        v11 = type metadata accessor for Date();
        v12 = *(v11 - 8);
        if ((*(v12 + 48))(a2 + v10, 1, v11))
        {
          goto LABEL_62;
        }

        goto LABEL_55;
      case 0x29u:
        *a1 = *a2;

        v10 = *(sub_1000F5104(&qword_100946008, &qword_1007A71B8) + 48);
        v11 = type metadata accessor for Date();
        v12 = *(v11 - 8);
        if ((*(v12 + 48))(a2 + v10, 1, v11))
        {
LABEL_62:
          v91 = sub_1000F5104(&unk_100938850, qword_100795AE0);
          memcpy((a1 + v10), (a2 + v10), *(*(v91 - 8) + 64));
        }

        else
        {
LABEL_55:
          (*(v12 + 16))(a1 + v10, a2 + v10, v11);
          (*(v12 + 56))(a1 + v10, 0, 1, v11);
        }

        goto LABEL_73;
      case 0x2Cu:
        *a1 = *a2;
        *(a1 + 8) = *(a2 + 8);
        *(a1 + 16) = *(a2 + 16);

        goto LABEL_73;
      case 0x2Eu:
        v15 = type metadata accessor for Date();
        v16 = *(v15 - 8);
        if ((*(v16 + 48))(a2, 1, v15))
        {
          v17 = sub_1000F5104(&unk_100938850, qword_100795AE0);
          memcpy(a1, a2, *(*(v17 - 8) + 64));
        }

        else
        {
          (*(v16 + 16))(a1, a2, v15);
          (*(v16 + 56))(a1, 0, 1, v15);
        }

        goto LABEL_73;
      case 0x2Fu:
        v53 = type metadata accessor for UUID();
        (*(*(v53 - 8) + 16))(a1, a2, v53);
        v54 = *(sub_1000F5104(&qword_100945FF0, &qword_1007AC720) + 48);
        v55 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
        (*(*(v55 - 8) + 16))(a1 + v54, a2 + v54, v55);
LABEL_73:
        swift_storeEnumTagMultiPayload();
        return a1;
      default:
        v13 = *(*(a3 - 8) + 64);

        return memcpy(a1, a2, v13);
    }
  }

  return a1;
}

void *sub_1003F446C(char *a1, char *a2, uint64_t a3)
{
  switch(swift_getEnumCaseMultiPayload())
  {
    case 2u:
      *a1 = *a2;
      a1[8] = a2[8];
      v6 = *(sub_1000F5104(&qword_10093C920, qword_1007AC750) + 64);
      v7 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
      (*(*(v7 - 8) + 32))(&a1[v6], &a2[v6], v7);
      goto LABEL_61;
    case 3u:
      *a1 = *a2;
      v38 = sub_1000F5104(&qword_100946068, &unk_1007A7650);
      v39 = *(v38 + 48);
      v40 = _s10PredicatesO19CompletionPredicateOMa(0);
      if (swift_getEnumCaseMultiPayload() > 1)
      {
        memcpy(&a1[v39], &a2[v39], *(*(v40 - 8) + 64));
      }

      else
      {
        v41 = type metadata accessor for Date();
        (*(*(v41 - 8) + 32))(&a1[v39], &a2[v39], v41);
        swift_storeEnumTagMultiPayload();
      }

      a1[*(v38 + 64)] = a2[*(v38 + 64)];
      goto LABEL_61;
    case 4u:
      *a1 = *a2;
      v20 = sub_1000F5104(&qword_100946060, &qword_1007A7648);
      v21 = *(v20 + 48);
      v10 = type metadata accessor for Date();
      v11 = *(v10 - 8);
      v22 = *(v11 + 48);
      if (v22(&a2[v21], 1, v10))
      {
        v23 = sub_1000F5104(&unk_100938850, qword_100795AE0);
        memcpy(&a1[v21], &a2[v21], *(*(v23 - 8) + 64));
      }

      else
      {
        (*(v11 + 32))(&a1[v21], &a2[v21], v10);
        (*(v11 + 56))(&a1[v21], 0, 1, v10);
      }

      v14 = *(v20 + 64);
      if (v22(&a2[v14], 1, v10))
      {
        goto LABEL_53;
      }

      goto LABEL_41;
    case 8u:
    case 0x17u:
      *a1 = *a2;
      v36 = *(sub_1000F5104(&unk_100942AF0, qword_1007A7520) + 48);
      v37 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
      (*(*(v37 - 8) + 32))(&a1[v36], &a2[v36], v37);
      goto LABEL_61;
    case 9u:
      *a1 = *a2;
      v24 = sub_1000F5104(&qword_100946058, qword_1007A75D0);
      v25 = *(v24 + 48);
      v26 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
      (*(*(v26 - 8) + 32))(&a1[v25], &a2[v25], v26);
      a1[*(v24 + 64)] = a2[*(v24 + 64)];
      goto LABEL_61;
    case 0xAu:
      *a1 = *a2;
      v34 = *(sub_1000F5104(&qword_100946050, &qword_1007B0450) + 48);
      v35 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
      (*(*(v35 - 8) + 32))(&a1[v34], &a2[v34], v35);
      goto LABEL_61;
    case 0xBu:
    case 0xCu:
    case 0xFu:
      v45 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
      (*(*(v45 - 8) + 32))(a1, a2, v45);
      goto LABEL_61;
    case 0xDu:
      v53 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
      (*(*(v53 - 8) + 32))(a1, a2, v53);
      v54 = *(sub_1000F5104(&qword_100946048, &unk_1007A75C0) + 48);
      v55 = type metadata accessor for Date();
      (*(*(v55 - 8) + 32))(&a1[v54], &a2[v54], v55);
      goto LABEL_61;
    case 0xEu:
      v50 = type metadata accessor for Date();
      (*(*(v50 - 8) + 32))(a1, a2, v50);
      goto LABEL_61;
    case 0x10u:
      *a1 = *a2;
      a1[8] = a2[8];
      v14 = *(sub_1000F5104(&qword_100946040, &qword_1007A75B8) + 64);
      v10 = type metadata accessor for Date();
      v11 = *(v10 - 8);
      if ((*(v11 + 48))(&a2[v14], 1, v10))
      {
        goto LABEL_53;
      }

      goto LABEL_41;
    case 0x11u:
      v27 = type metadata accessor for Date();
      v28 = *(v27 - 8);
      if ((*(v28 + 48))(a2, 1, v27))
      {
        v29 = sub_1000F5104(&unk_100938850, qword_100795AE0);
        memcpy(a1, a2, *(*(v29 - 8) + 64));
      }

      else
      {
        (*(v28 + 32))(a1, a2, v27);
        (*(v28 + 56))(a1, 0, 1, v27);
      }

      v63 = sub_1000F5104(&qword_100946038, qword_1007A7578);
      a1[*(v63 + 48)] = a2[*(v63 + 48)];
      goto LABEL_61;
    case 0x12u:
      *a1 = *a2;
      v15 = *(sub_1000F5104(&qword_100938A98, &qword_1007A7570) + 64);
      v16 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
      (*(*(v16 - 8) + 32))(&a1[v15], &a2[v15], v16);
      goto LABEL_61;
    case 0x13u:
      *a1 = *a2;
      v46 = *(sub_1000F5104(&qword_10093A560, &qword_100797768) + 48);
      v47 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
      (*(*(v47 - 8) + 32))(&a1[v46], &a2[v46], v47);
      goto LABEL_61;
    case 0x15u:
      *a1 = *a2;
      v48 = *(sub_1000F5104(&qword_100941B90, &unk_1007A7560) + 48);
      v49 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
      (*(*(v49 - 8) + 32))(&a1[v48], &a2[v48], v49);
      goto LABEL_61;
    case 0x1Bu:
      v56 = type metadata accessor for Date();
      v57 = *(*(v56 - 8) + 32);
      v57(a1, a2, v56);
      v58 = sub_1000F5104(&qword_100946030, qword_1007A74D0);
      v57(&a1[*(v58 + 48)], &a2[*(v58 + 48)], v56);
      goto LABEL_61;
    case 0x1Du:
      *a1 = *a2;
      v8 = sub_1000F5104(&qword_100946028, &unk_1007A7498);
      v9 = *(v8 + 48);
      v10 = type metadata accessor for Date();
      v11 = *(v10 - 8);
      v12 = *(v11 + 48);
      if (v12(&a2[v9], 1, v10))
      {
        v13 = sub_1000F5104(&unk_100938850, qword_100795AE0);
        memcpy(&a1[v9], &a2[v9], *(*(v13 - 8) + 64));
      }

      else
      {
        (*(v11 + 32))(&a1[v9], &a2[v9], v10);
        (*(v11 + 56))(&a1[v9], 0, 1, v10);
      }

      v14 = *(v8 + 64);
      if (!v12(&a2[v14], 1, v10))
      {
        goto LABEL_41;
      }

      goto LABEL_53;
    case 0x1Eu:
      *a1 = *a2;
      v30 = sub_1000F5104(&qword_100946028, &unk_1007A7498);
      v31 = *(v30 + 48);
      v10 = type metadata accessor for Date();
      v11 = *(v10 - 8);
      v32 = *(v11 + 48);
      if (v32(&a2[v31], 1, v10))
      {
        v33 = sub_1000F5104(&unk_100938850, qword_100795AE0);
        memcpy(&a1[v31], &a2[v31], *(*(v33 - 8) + 64));
      }

      else
      {
        (*(v11 + 32))(&a1[v31], &a2[v31], v10);
        (*(v11 + 56))(&a1[v31], 0, 1, v10);
      }

      v14 = *(v30 + 64);
      if (v32(&a2[v14], 1, v10))
      {
        goto LABEL_53;
      }

      goto LABEL_41;
    case 0x26u:
      *a1 = *a2;
      v59 = sub_1000F5104(&unk_100939F00, &unk_1007972A0);
      v60 = *(v59 + 48);
      v61 = _s10PredicatesO19CompletionPredicateOMa(0);
      if (swift_getEnumCaseMultiPayload() > 1)
      {
        memcpy(&a1[v60], &a2[v60], *(*(v61 - 8) + 64));
      }

      else
      {
        v62 = type metadata accessor for Date();
        (*(*(v62 - 8) + 32))(&a1[v60], &a2[v60], v62);
        swift_storeEnumTagMultiPayload();
      }

      a1[*(v59 + 64)] = a2[*(v59 + 64)];
      goto LABEL_61;
    case 0x27u:
      *a1 = *a2;
      v14 = *(sub_1000F5104(&qword_100946018, qword_1007A71C8) + 48);
      v10 = type metadata accessor for Date();
      v11 = *(v10 - 8);
      if ((*(v11 + 48))(&a2[v14], 1, v10))
      {
        goto LABEL_53;
      }

      goto LABEL_41;
    case 0x28u:
      *a1 = *a2;
      v14 = *(sub_1000F5104(&qword_100946010, &qword_1007A71C0) + 64);
      v10 = type metadata accessor for Date();
      v11 = *(v10 - 8);
      if ((*(v11 + 48))(&a2[v14], 1, v10))
      {
        goto LABEL_53;
      }

      goto LABEL_41;
    case 0x29u:
      *a1 = *a2;
      v14 = *(sub_1000F5104(&qword_100946008, &qword_1007A71B8) + 48);
      v10 = type metadata accessor for Date();
      v11 = *(v10 - 8);
      if ((*(v11 + 48))(&a2[v14], 1, v10))
      {
LABEL_53:
        v64 = sub_1000F5104(&unk_100938850, qword_100795AE0);
        memcpy(&a1[v14], &a2[v14], *(*(v64 - 8) + 64));
      }

      else
      {
LABEL_41:
        (*(v11 + 32))(&a1[v14], &a2[v14], v10);
        (*(v11 + 56))(&a1[v14], 0, 1, v10);
      }

      goto LABEL_61;
    case 0x2Eu:
      v42 = type metadata accessor for Date();
      v43 = *(v42 - 8);
      if ((*(v43 + 48))(a2, 1, v42))
      {
        v44 = sub_1000F5104(&unk_100938850, qword_100795AE0);
        memcpy(a1, a2, *(*(v44 - 8) + 64));
      }

      else
      {
        (*(v43 + 32))(a1, a2, v42);
        (*(v43 + 56))(a1, 0, 1, v42);
      }

      goto LABEL_61;
    case 0x2Fu:
      v17 = type metadata accessor for UUID();
      (*(*(v17 - 8) + 32))(a1, a2, v17);
      v18 = *(sub_1000F5104(&qword_100945FF0, &qword_1007AC720) + 48);
      v19 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
      (*(*(v19 - 8) + 32))(&a1[v18], &a2[v18], v19);
LABEL_61:
      swift_storeEnumTagMultiPayload();
      result = a1;
      break;
    default:
      v51 = *(*(a3 - 8) + 64);

      result = memcpy(a1, a2, v51);
      break;
  }

  return result;
}

char *sub_1003F58E0(char *a1, char *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    sub_1000504F8(a1, _s10PredicatesOMa);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 2u:
        *a1 = *a2;
        a1[8] = a2[8];
        v6 = *(sub_1000F5104(&qword_10093C920, qword_1007AC750) + 64);
        v7 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
        (*(*(v7 - 8) + 32))(&a1[v6], &a2[v6], v7);
        goto LABEL_62;
      case 3u:
        *a1 = *a2;
        v38 = sub_1000F5104(&qword_100946068, &unk_1007A7650);
        v39 = *(v38 + 48);
        v40 = _s10PredicatesO19CompletionPredicateOMa(0);
        if (swift_getEnumCaseMultiPayload() > 1)
        {
          memcpy(&a1[v39], &a2[v39], *(*(v40 - 8) + 64));
        }

        else
        {
          v41 = type metadata accessor for Date();
          (*(*(v41 - 8) + 32))(&a1[v39], &a2[v39], v41);
          swift_storeEnumTagMultiPayload();
        }

        a1[*(v38 + 64)] = a2[*(v38 + 64)];
        goto LABEL_62;
      case 4u:
        *a1 = *a2;
        v20 = sub_1000F5104(&qword_100946060, &qword_1007A7648);
        v21 = *(v20 + 48);
        v10 = type metadata accessor for Date();
        v11 = *(v10 - 8);
        v22 = *(v11 + 48);
        if (v22(&a2[v21], 1, v10))
        {
          v23 = sub_1000F5104(&unk_100938850, qword_100795AE0);
          memcpy(&a1[v21], &a2[v21], *(*(v23 - 8) + 64));
        }

        else
        {
          (*(v11 + 32))(&a1[v21], &a2[v21], v10);
          (*(v11 + 56))(&a1[v21], 0, 1, v10);
        }

        v14 = *(v20 + 64);
        if (v22(&a2[v14], 1, v10))
        {
          goto LABEL_54;
        }

        goto LABEL_42;
      case 8u:
      case 0x17u:
        *a1 = *a2;
        v36 = *(sub_1000F5104(&unk_100942AF0, qword_1007A7520) + 48);
        v37 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
        (*(*(v37 - 8) + 32))(&a1[v36], &a2[v36], v37);
        goto LABEL_62;
      case 9u:
        *a1 = *a2;
        v24 = sub_1000F5104(&qword_100946058, qword_1007A75D0);
        v25 = *(v24 + 48);
        v26 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
        (*(*(v26 - 8) + 32))(&a1[v25], &a2[v25], v26);
        a1[*(v24 + 64)] = a2[*(v24 + 64)];
        goto LABEL_62;
      case 0xAu:
        *a1 = *a2;
        v34 = *(sub_1000F5104(&qword_100946050, &qword_1007B0450) + 48);
        v35 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
        (*(*(v35 - 8) + 32))(&a1[v34], &a2[v34], v35);
        goto LABEL_62;
      case 0xBu:
      case 0xCu:
      case 0xFu:
        v45 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
        (*(*(v45 - 8) + 32))(a1, a2, v45);
        goto LABEL_62;
      case 0xDu:
        v53 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
        (*(*(v53 - 8) + 32))(a1, a2, v53);
        v54 = *(sub_1000F5104(&qword_100946048, &unk_1007A75C0) + 48);
        v55 = type metadata accessor for Date();
        (*(*(v55 - 8) + 32))(&a1[v54], &a2[v54], v55);
        goto LABEL_62;
      case 0xEu:
        v50 = type metadata accessor for Date();
        (*(*(v50 - 8) + 32))(a1, a2, v50);
        goto LABEL_62;
      case 0x10u:
        *a1 = *a2;
        a1[8] = a2[8];
        v14 = *(sub_1000F5104(&qword_100946040, &qword_1007A75B8) + 64);
        v10 = type metadata accessor for Date();
        v11 = *(v10 - 8);
        if ((*(v11 + 48))(&a2[v14], 1, v10))
        {
          goto LABEL_54;
        }

        goto LABEL_42;
      case 0x11u:
        v27 = type metadata accessor for Date();
        v28 = *(v27 - 8);
        if ((*(v28 + 48))(a2, 1, v27))
        {
          v29 = sub_1000F5104(&unk_100938850, qword_100795AE0);
          memcpy(a1, a2, *(*(v29 - 8) + 64));
        }

        else
        {
          (*(v28 + 32))(a1, a2, v27);
          (*(v28 + 56))(a1, 0, 1, v27);
        }

        v63 = sub_1000F5104(&qword_100946038, qword_1007A7578);
        a1[*(v63 + 48)] = a2[*(v63 + 48)];
        goto LABEL_62;
      case 0x12u:
        *a1 = *a2;
        v15 = *(sub_1000F5104(&qword_100938A98, &qword_1007A7570) + 64);
        v16 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
        (*(*(v16 - 8) + 32))(&a1[v15], &a2[v15], v16);
        goto LABEL_62;
      case 0x13u:
        *a1 = *a2;
        v46 = *(sub_1000F5104(&qword_10093A560, &qword_100797768) + 48);
        v47 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
        (*(*(v47 - 8) + 32))(&a1[v46], &a2[v46], v47);
        goto LABEL_62;
      case 0x15u:
        *a1 = *a2;
        v48 = *(sub_1000F5104(&qword_100941B90, &unk_1007A7560) + 48);
        v49 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
        (*(*(v49 - 8) + 32))(&a1[v48], &a2[v48], v49);
        goto LABEL_62;
      case 0x1Bu:
        v56 = type metadata accessor for Date();
        v57 = *(*(v56 - 8) + 32);
        v57(a1, a2, v56);
        v58 = sub_1000F5104(&qword_100946030, qword_1007A74D0);
        v57(&a1[*(v58 + 48)], &a2[*(v58 + 48)], v56);
        goto LABEL_62;
      case 0x1Du:
        *a1 = *a2;
        v8 = sub_1000F5104(&qword_100946028, &unk_1007A7498);
        v9 = *(v8 + 48);
        v10 = type metadata accessor for Date();
        v11 = *(v10 - 8);
        v12 = *(v11 + 48);
        if (v12(&a2[v9], 1, v10))
        {
          v13 = sub_1000F5104(&unk_100938850, qword_100795AE0);
          memcpy(&a1[v9], &a2[v9], *(*(v13 - 8) + 64));
        }

        else
        {
          (*(v11 + 32))(&a1[v9], &a2[v9], v10);
          (*(v11 + 56))(&a1[v9], 0, 1, v10);
        }

        v14 = *(v8 + 64);
        if (!v12(&a2[v14], 1, v10))
        {
          goto LABEL_42;
        }

        goto LABEL_54;
      case 0x1Eu:
        *a1 = *a2;
        v30 = sub_1000F5104(&qword_100946028, &unk_1007A7498);
        v31 = *(v30 + 48);
        v10 = type metadata accessor for Date();
        v11 = *(v10 - 8);
        v32 = *(v11 + 48);
        if (v32(&a2[v31], 1, v10))
        {
          v33 = sub_1000F5104(&unk_100938850, qword_100795AE0);
          memcpy(&a1[v31], &a2[v31], *(*(v33 - 8) + 64));
        }

        else
        {
          (*(v11 + 32))(&a1[v31], &a2[v31], v10);
          (*(v11 + 56))(&a1[v31], 0, 1, v10);
        }

        v14 = *(v30 + 64);
        if (v32(&a2[v14], 1, v10))
        {
          goto LABEL_54;
        }

        goto LABEL_42;
      case 0x26u:
        *a1 = *a2;
        v59 = sub_1000F5104(&unk_100939F00, &unk_1007972A0);
        v60 = *(v59 + 48);
        v61 = _s10PredicatesO19CompletionPredicateOMa(0);
        if (swift_getEnumCaseMultiPayload() > 1)
        {
          memcpy(&a1[v60], &a2[v60], *(*(v61 - 8) + 64));
        }

        else
        {
          v62 = type metadata accessor for Date();
          (*(*(v62 - 8) + 32))(&a1[v60], &a2[v60], v62);
          swift_storeEnumTagMultiPayload();
        }

        a1[*(v59 + 64)] = a2[*(v59 + 64)];
        goto LABEL_62;
      case 0x27u:
        *a1 = *a2;
        v14 = *(sub_1000F5104(&qword_100946018, qword_1007A71C8) + 48);
        v10 = type metadata accessor for Date();
        v11 = *(v10 - 8);
        if ((*(v11 + 48))(&a2[v14], 1, v10))
        {
          goto LABEL_54;
        }

        goto LABEL_42;
      case 0x28u:
        *a1 = *a2;
        v14 = *(sub_1000F5104(&qword_100946010, &qword_1007A71C0) + 64);
        v10 = type metadata accessor for Date();
        v11 = *(v10 - 8);
        if ((*(v11 + 48))(&a2[v14], 1, v10))
        {
          goto LABEL_54;
        }

        goto LABEL_42;
      case 0x29u:
        *a1 = *a2;
        v14 = *(sub_1000F5104(&qword_100946008, &qword_1007A71B8) + 48);
        v10 = type metadata accessor for Date();
        v11 = *(v10 - 8);
        if ((*(v11 + 48))(&a2[v14], 1, v10))
        {
LABEL_54:
          v64 = sub_1000F5104(&unk_100938850, qword_100795AE0);
          memcpy(&a1[v14], &a2[v14], *(*(v64 - 8) + 64));
        }

        else
        {
LABEL_42:
          (*(v11 + 32))(&a1[v14], &a2[v14], v10);
          (*(v11 + 56))(&a1[v14], 0, 1, v10);
        }

        goto LABEL_62;
      case 0x2Eu:
        v42 = type metadata accessor for Date();
        v43 = *(v42 - 8);
        if ((*(v43 + 48))(a2, 1, v42))
        {
          v44 = sub_1000F5104(&unk_100938850, qword_100795AE0);
          memcpy(a1, a2, *(*(v44 - 8) + 64));
        }

        else
        {
          (*(v43 + 32))(a1, a2, v42);
          (*(v43 + 56))(a1, 0, 1, v42);
        }

        goto LABEL_62;
      case 0x2Fu:
        v17 = type metadata accessor for UUID();
        (*(*(v17 - 8) + 32))(a1, a2, v17);
        v18 = *(sub_1000F5104(&qword_100945FF0, &qword_1007AC720) + 48);
        v19 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
        (*(*(v19 - 8) + 32))(&a1[v18], &a2[v18], v19);
LABEL_62:
        swift_storeEnumTagMultiPayload();
        return a1;
      default:
        v51 = *(*(a3 - 8) + 64);

        return memcpy(a1, a2, v51);
    }
  }

  return a1;
}

void sub_1003F6D78()
{
  v36 = "\t";
  v37 = &unk_1007A78B0;
  v0 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_getTupleTypeLayout3();
    v38 = &v35;
    v3 = _s10PredicatesO19CompletionPredicateOMa(319);
    if (v4 <= 0x3F)
    {
      v5 = *(v3 - 8);
      swift_getTupleTypeLayout3();
      v39 = &v34;
      sub_100140DD4();
      if (v7 <= 0x3F)
      {
        v8 = *(v6 - 8) + 64;
        swift_getTupleTypeLayout3();
        v40 = &v33;
        v41 = &unk_1007A78F8;
        v42 = &value witness table for Builtin.UnknownObject + 64;
        v43 = &value witness table for Builtin.UnknownObject + 64;
        swift_getTupleTypeLayout2();
        v44 = &v32;
        swift_getTupleTypeLayout3();
        v45 = &v31;
        swift_getTupleTypeLayout2();
        v46 = &v30;
        v47 = v2;
        v48 = v2;
        v9 = type metadata accessor for Date();
        if (v10 <= 0x3F)
        {
          v11 = *(v9 - 8) + 64;
          swift_getTupleTypeLayout2();
          v49 = &v29;
          v50 = v11;
          v51 = v2;
          swift_getTupleTypeLayout3();
          v52 = &v28;
          swift_getTupleTypeLayout2();
          v53 = &v27;
          swift_getTupleTypeLayout3();
          v54 = &v26;
          swift_getTupleTypeLayout2();
          v55 = &v25;
          v56 = &value witness table for Builtin.BridgeObject + 64;
          swift_getTupleTypeLayout2();
          v57 = &v24;
          v58 = &value witness table for Builtin.BridgeObject + 64;
          swift_getTupleTypeLayout2();
          v59 = &v23;
          v60 = &unk_1007A7910;
          v61 = &unk_1007A7910;
          v62 = &value witness table for Builtin.UnknownObject + 64;
          swift_getTupleTypeLayout2();
          v63 = &v22;
          v64 = &value witness table for Builtin.BridgeObject + 64;
          swift_getTupleTypeLayout3();
          v65 = &v21;
          swift_getTupleTypeLayout3();
          v66 = &v20;
          v67 = &value witness table for Builtin.Int64 + 64;
          v68 = &value witness table for Builtin.BridgeObject + 64;
          v69 = "\t";
          v70 = &value witness table for Builtin.UnknownObject + 64;
          v71 = &value witness table for Builtin.UnknownObject + 64;
          v72 = &value witness table for Builtin.UnknownObject + 64;
          v73 = &value witness table for Builtin.UnknownObject + 64;
          swift_getTupleTypeLayout3();
          v74 = &v19;
          swift_getTupleTypeLayout2();
          v75 = &v18;
          swift_getTupleTypeLayout3();
          v76 = &v17;
          swift_getTupleTypeLayout2();
          v77 = &v16;
          v78 = &value witness table for Builtin.BridgeObject + 64;
          v79 = &unk_1007A78C8;
          v80 = &unk_1007A7928;
          v81 = &value witness table for Builtin.BridgeObject + 64;
          v82 = v8;
          v12 = type metadata accessor for UUID();
          if (v13 <= 0x3F)
          {
            v14 = *(v12 - 8);
            swift_getTupleTypeLayout2();
            v83 = &v15;
            swift_initEnumMetadataMultiPayload();
          }
        }
      }
    }
  }
}

void REMOwlEmbeddingClassifier.__allocating_init(locale:embeddingVersion:headerModelURL:numOfClasses:labels:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = v7;
  v31 = a7;
  v29 = a6;
  v30 = a4;
  v27 = a1;
  v28 = a3;
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = objc_allocWithZone(MLModelConfiguration);
  v17 = [v16 init];
  [v17 setComputeUnits:2];
  sub_1000060C8(0, &qword_100946230, MLModel_ptr);
  (*(v12 + 16))(v15, a5, v11);
  v18 = v17;
  v19 = sub_1003F98D4(v15, v18);
  if (v8)
  {

    (*(v12 + 8))(a5, v11);
  }

  else
  {
    v20 = v19;

    v21 = *(v9 + 48);
    v22 = *(v9 + 52);
    v23 = swift_allocObject();
    v23[3] = [objc_allocWithZone(CDMClient) init];
    Locale.init(identifier:)();

    (*(v12 + 8))(a5, v11);
    v24 = (v23 + OBJC_IVAR____TtC7remindd25REMOwlEmbeddingClassifier_embeddingVersion);
    v25 = v30;
    *v24 = v28;
    v24[1] = v25;
    v26 = v29;
    v23[4] = v20;
    v23[5] = v26;
    v23[2] = v31;
  }
}