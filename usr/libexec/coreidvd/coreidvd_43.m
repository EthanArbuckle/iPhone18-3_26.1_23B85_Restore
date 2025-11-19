uint64_t sub_100459A48()
{
  v1 = v0[17];
  v2 = v0[13];
  v3 = v0[12];
  (*(v2 + 16))(v1, v0[18], v3);
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  v0[39] = v5;
  (*(v2 + 32))(v5 + v4, v1, v3);
  v6 = swift_task_alloc();
  v0[40] = v6;
  *v6 = v0;
  v6[1] = sub_100459B80;
  v7 = v0[38];

  return sub_10042B4BC("updateView(auxiliaryView:)", 26, 2, &unk_1006E4EB8, v5);
}

uint64_t sub_100459B80()
{
  v2 = *v1;
  v3 = *(*v1 + 320);
  v4 = *v1;
  v2[41] = v0;

  v5 = v2[39];
  if (v0)
  {
    v6 = v2[38];

    v7 = sub_100459CE8;
    v8 = v6;
  }

  else
  {
    v9 = v2[18];
    v10 = v2[12];
    v11 = v2[13];

    (*(v11 + 8))(v9, v10);
    v7 = sub_100461E78;
    v8 = 0;
  }

  return _swift_task_switch(v7, v8, 0);
}

uint64_t sub_100459CE8()
{
  (*(v0[13] + 8))(v0[18], v0[12]);

  return _swift_task_switch(sub_100459D60, 0, 0);
}

uint64_t sub_100459D60()
{
  (*(v0[35] + 8))(v0[36], v0[34]);
  v1 = v0[36];
  v2 = v0[33];
  v4 = v0[29];
  v3 = v0[30];
  v5 = v0[26];
  v6 = v0[23];
  v7 = v0[20];
  v9 = v0[17];
  v8 = v0[18];
  v10 = v0[16];
  v13 = v0[15];
  v14 = v0[11];
  v15 = v0[8];
  v16 = v0[41];

  v11 = v0[1];

  return v11();
}

uint64_t sub_100459E8C()
{
  v1 = v0[15];
  v2 = v0[13];
  v3 = v0[12];
  (*(v2 + 16))(v1, v0[16], v3);
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  v0[43] = v5;
  (*(v2 + 32))(v5 + v4, v1, v3);
  v6 = swift_task_alloc();
  v0[44] = v6;
  *v6 = v0;
  v6[1] = sub_100459FC4;
  v7 = v0[42];

  return sub_10042B4BC("updateView(auxiliaryView:)", 26, 2, &unk_1006E4EB0, v5);
}

uint64_t sub_100459FC4()
{
  v2 = *v1;
  v3 = *(*v1 + 352);
  v4 = *v1;
  v2[45] = v0;

  v5 = v2[43];
  if (v0)
  {
    v6 = v2[42];

    v7 = sub_10045A1D8;
    v8 = v6;
  }

  else
  {
    v9 = v2[16];
    v10 = v2[12];
    v11 = v2[13];

    (*(v11 + 8))(v9, v10);
    v7 = sub_10045A12C;
    v8 = 0;
  }

  return _swift_task_switch(v7, v8, 0);
}

uint64_t sub_10045A12C()
{
  v1 = _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTu[1];
  v2 = swift_task_alloc();
  v0[37] = v2;
  *v2 = v0;
  v2[1] = sub_1004593AC;
  v3 = v0[36];
  v4 = v0[34];
  v5 = v0[30];

  return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v5, 0, 0, v4, v0 + 2);
}

uint64_t sub_10045A1D8()
{
  (*(v0[13] + 8))(v0[16], v0[12]);

  return _swift_task_switch(sub_10045A250, 0, 0);
}

uint64_t sub_10045A250()
{
  (*(v0[35] + 8))(v0[36], v0[34]);
  v1 = v0[36];
  v2 = v0[33];
  v4 = v0[29];
  v3 = v0[30];
  v5 = v0[26];
  v6 = v0[23];
  v7 = v0[20];
  v9 = v0[17];
  v8 = v0[18];
  v10 = v0[16];
  v13 = v0[15];
  v14 = v0[11];
  v15 = v0[8];
  v16 = v0[45];

  v11 = v0[1];

  return v11();
}

uint64_t sub_10045A37C()
{
  (*(v0[35] + 8))(v0[36], v0[34]);
  v1 = v0[36];
  v2 = v0[33];
  v4 = v0[29];
  v3 = v0[30];
  v5 = v0[26];
  v6 = v0[23];
  v7 = v0[20];
  v9 = v0[17];
  v8 = v0[18];
  v10 = v0[16];
  v13 = v0[15];
  v14 = v0[11];
  v15 = v0[8];
  v16 = v0[2];

  v11 = v0[1];

  return v11();
}

uint64_t sub_10045A4A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v5 = type metadata accessor for WebPresentmentRemoteDispatchingManager.StateTransition();
  v4[5] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  v7 = sub_100007224(&qword_100844AF0, &qword_1006E4E78);
  v4[7] = v7;
  v8 = *(v7 - 8);
  v4[8] = v8;
  v9 = *(v8 + 64) + 15;
  v4[9] = swift_task_alloc();
  v10 = sub_100007224(&qword_100843D38, &qword_1006E2240);
  v4[10] = v10;
  v11 = *(v10 - 8);
  v4[11] = v11;
  v12 = *(v11 + 64) + 15;
  v4[12] = swift_task_alloc();
  v13 = sub_100007224(&qword_100843D40, &qword_1006E2248);
  v4[13] = v13;
  v14 = *(v13 - 8);
  v4[14] = v14;
  v15 = *(v14 + 64) + 15;
  v4[15] = swift_task_alloc();
  v16 = type metadata accessor for MobileDocumentProviderAuxiliaryView();
  v4[16] = v16;
  v17 = *(v16 - 8);
  v4[17] = v17;
  v4[18] = *(v17 + 64);
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();

  return _swift_task_switch(sub_10045A6E4, 0, 0);
}

uint64_t sub_10045A6E4()
{
  v1 = v0[20];
  v2 = v0[16];
  v3 = v0[17];
  v4 = sub_10000BA08((v0[3] + 56), *(v0[3] + 80));
  (*(v3 + 104))(v1, enum case for MobileDocumentProviderAuxiliaryView.enableBluetooth(_:), v2);
  v5 = *v4;
  v0[21] = *v4;

  return _swift_task_switch(sub_10045A790, v5, 0);
}

uint64_t sub_10045A790()
{
  v1 = v0[19];
  v2 = v0[17];
  v3 = v0[16];
  (*(v2 + 16))(v1, v0[20], v3);
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  v0[22] = v5;
  (*(v2 + 32))(v5 + v4, v1, v3);
  v6 = swift_task_alloc();
  v0[23] = v6;
  *v6 = v0;
  v6[1] = sub_10045A8C8;
  v7 = v0[21];

  return sub_10042B4BC("updateView(auxiliaryView:)", 26, 2, &unk_1006E4EC0, v5);
}

uint64_t sub_10045A8C8()
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v4 = *(*v1 + 176);
  v8 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v5 = v2[21];
    v6 = sub_10045AB28;
  }

  else
  {
    (*(v2[17] + 8))(v2[20], v2[16]);
    v6 = sub_10045AA20;
    v5 = 0;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10045AA20()
{
  v1 = v0[15];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[10];
  v5 = *sub_10000BA08((v0[3] + 216), *(v0[3] + 240));
  sub_100503AC0(v2);
  AsyncStream.makeAsyncIterator()();
  (*(v3 + 8))(v2, v4);
  v6 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v7 = swift_task_alloc();
  v0[25] = v7;
  *v7 = v0;
  v7[1] = sub_10045AC94;
  v8 = v0[15];
  v9 = v0[13];

  return AsyncStream.Iterator.next(isolation:)(v0 + 26, 0, 0, v9);
}

uint64_t sub_10045AB28()
{
  (*(v0[17] + 8))(v0[20], v0[16]);

  return _swift_task_switch(sub_10045ABA0, 0, 0);
}

uint64_t sub_10045ABA0()
{
  v1 = v0[24];
  v2 = v0[4];
  v3 = *(sub_100007224(&qword_100844AD0, &qword_1006E4D80) + 48);
  v0[2] = v1;
  sub_100007224(&qword_100844AC0, &qword_1006E4D70);
  AsyncThrowingStream.Continuation.finish(throwing:)();
  v5 = v0[19];
  v4 = v0[20];
  v6 = v0[15];
  v7 = v0[12];
  v8 = v0[9];
  v9 = v0[6];

  v10 = v0[1];

  return v10();
}

uint64_t sub_10045AC94()
{
  v1 = *(*v0 + 200);
  v3 = *v0;

  return _swift_task_switch(sub_10045AD90, 0, 0);
}

uint64_t sub_10045AD90()
{
  v1 = *(v0 + 208);
  if (v1 == 2)
  {
    (*(*(v0 + 112) + 8))(*(v0 + 120), *(v0 + 104));
LABEL_5:
    v12 = *(v0 + 152);
    v11 = *(v0 + 160);
    v13 = *(v0 + 120);
    v14 = *(v0 + 96);
    v15 = *(v0 + 72);
    v16 = *(v0 + 48);

    v17 = *(v0 + 8);

    return v17();
  }

  if (v1)
  {
    v2 = *(v0 + 112);
    v23 = *(v0 + 120);
    v3 = *(v0 + 104);
    v5 = *(v0 + 64);
    v4 = *(v0 + 72);
    v7 = *(v0 + 48);
    v6 = *(v0 + 56);
    v9 = *(v0 + 32);
    v8 = *(v0 + 40);
    v10 = *(sub_100007224(&qword_100844AD0, &qword_1006E4D80) + 48);
    swift_storeEnumTagMultiPayload();
    sub_100007224(&qword_100844AC0, &qword_1006E4D70);
    AsyncThrowingStream.Continuation.yield(_:)();
    (*(v5 + 8))(v4, v6);
    (*(v2 + 8))(v23, v3);
    goto LABEL_5;
  }

  v19 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v20 = swift_task_alloc();
  *(v0 + 200) = v20;
  *v20 = v0;
  v20[1] = sub_10045AC94;
  v21 = *(v0 + 120);
  v22 = *(v0 + 104);

  return AsyncStream.Iterator.next(isolation:)(v0 + 208, 0, 0, v22);
}

uint64_t sub_10045AFA0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 48) = a7;
  *(v8 + 56) = a8;
  *(v8 + 32) = a5;
  *(v8 + 40) = a6;
  *(v8 + 24) = a4;
  *(v8 + 192) = a3;
  v9 = type metadata accessor for URL();
  *(v8 + 64) = v9;
  v10 = *(v9 - 8);
  *(v8 + 72) = v10;
  *(v8 + 80) = *(v10 + 64);
  *(v8 + 88) = swift_task_alloc();
  v11 = type metadata accessor for MobileDocumentProviderViewServiceIdentifier();
  *(v8 + 96) = v11;
  v12 = *(v11 - 8);
  *(v8 + 104) = v12;
  v13 = *(v12 + 64) + 15;
  *(v8 + 112) = swift_task_alloc();
  v14 = sub_100007224(&qword_100844978, &qword_1006E4E50);
  *(v8 + 120) = v14;
  v15 = *(v14 - 8);
  *(v8 + 128) = v15;
  v16 = *(v15 + 64) + 15;
  *(v8 + 136) = swift_task_alloc();

  return _swift_task_switch(sub_10045B138, 0, 0);
}

uint64_t sub_10045B138()
{
  v1 = *(v0 + 192);
  v2 = sub_10000BA08((*(v0 + 24) + 56), *(*(v0 + 24) + 80));
  if (v1 == 1)
  {
    v3 = *(v0 + 136);
    v5 = *(v0 + 104);
    v4 = *(v0 + 112);
    v6 = *(v0 + 96);
    v7 = *(v0 + 40);
    (*(*(v0 + 72) + 16))(v4, *(v0 + 32), *(v0 + 64));
    (*(v5 + 104))(v4, enum case for MobileDocumentProviderViewServiceIdentifier.scannableCodeView(_:), v6);
    type metadata accessor for MobileDocumentProviderUIConnectionManager(0);
    sub_1004333B0(v4);
    (*(v5 + 8))(v4, v6);
    v8 = *(sub_100007224(&qword_100844AD0, &qword_1006E4D80) + 48);
    v9 = swift_task_alloc();
    *(v0 + 144) = v9;
    *v9 = v0;
    v9[1] = sub_10045B314;
    v10 = *(v0 + 136);
    v11 = *(v0 + 48);
    v12 = *(v0 + 56);

    return sub_10045F408(v10, v7 + v8, v11, v12);
  }

  else
  {
    v14 = *v2;
    *(v0 + 160) = *v2;

    return _swift_task_switch(sub_10045B5A0, v14, 0);
  }
}

uint64_t sub_10045B314()
{
  v2 = *(*v1 + 144);
  v3 = *(*v1 + 136);
  v4 = *(*v1 + 128);
  v5 = *(*v1 + 120);
  v6 = *v1;
  v6[19] = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {

    return _swift_task_switch(sub_10045B4D4, 0, 0);
  }

  else
  {
    v7 = v6[17];
    v8 = v6[14];
    v9 = v6[11];

    v10 = v6[1];

    return v10();
  }
}

uint64_t sub_10045B4D4()
{
  v1 = v0[19];
  v2 = v0[5];
  v3 = *(sub_100007224(&qword_100844AD0, &qword_1006E4D80) + 48);
  v0[2] = v1;
  sub_100007224(&qword_100844AC0, &qword_1006E4D70);
  AsyncThrowingStream.Continuation.finish(throwing:)();
  v4 = v0[17];
  v5 = v0[14];
  v6 = v0[11];

  v7 = v0[1];

  return v7();
}

uint64_t sub_10045B5A0()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[9];
  (*(v3 + 16))(v1, v0[4], v2);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = swift_allocObject();
  v0[21] = v5;
  (*(v3 + 32))(v5 + v4, v1, v2);
  v6 = swift_task_alloc();
  v0[22] = v6;
  *v6 = v0;
  v6[1] = sub_10045B6D8;
  v7 = v0[20];

  return sub_10042B4BC("updateView(scannableCodePayload:)", 33, 2, &unk_1006E4EC8, v5);
}

uint64_t sub_10045B6D8()
{
  v2 = *(*v1 + 176);
  v3 = *v1;
  v3[23] = v0;

  if (v0)
  {
    v4 = v3[20];

    return _swift_task_switch(sub_10045B834, v4, 0);
  }

  else
  {
    v5 = v3[21];

    v6 = v3[17];
    v7 = v3[14];
    v8 = v3[11];

    v9 = v3[1];

    return v9();
  }
}

uint64_t sub_10045B834()
{
  v1 = *(v0 + 168);

  return _swift_task_switch(sub_10045B89C, 0, 0);
}

uint64_t sub_10045B89C()
{
  v1 = v0[23];
  v2 = v0[5];
  v3 = *(sub_100007224(&qword_100844AD0, &qword_1006E4D80) + 48);
  v0[2] = v1;
  sub_100007224(&qword_100844AC0, &qword_1006E4D70);
  AsyncThrowingStream.Continuation.finish(throwing:)();
  v4 = v0[17];
  v5 = v0[14];
  v6 = v0[11];

  v7 = v0[1];

  return v7();
}

uint64_t sub_10045B968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  v7 = type metadata accessor for Logger();
  v6[6] = v7;
  v8 = *(v7 - 8);
  v6[7] = v8;
  v9 = *(v8 + 64) + 15;
  v6[8] = swift_task_alloc();
  v10 = type metadata accessor for WebPresentmentRemoteDispatchingManager.StateTransition();
  v6[9] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v6[10] = swift_task_alloc();
  v12 = sub_100007224(&qword_100844AF0, &qword_1006E4E78);
  v6[11] = v12;
  v13 = *(v12 - 8);
  v6[12] = v13;
  v14 = *(v13 + 64) + 15;
  v6[13] = swift_task_alloc();
  v15 = type metadata accessor for WebPresentmentResponse();
  v6[14] = v15;
  v16 = *(v15 - 8);
  v6[15] = v16;
  v17 = *(v16 + 64) + 15;
  v6[16] = swift_task_alloc();

  return _swift_task_switch(sub_10045BB20, 0, 0);
}

uint64_t sub_10045BB20()
{
  v1 = *sub_10000BA08((v0[3] + 96), *(v0[3] + 120));
  v2 = swift_task_alloc();
  v0[17] = v2;
  *v2 = v0;
  v2[1] = sub_10045BBCC;
  v3 = v0[16];
  v4 = v0[4];

  return sub_1003EBAE8(v3, v4);
}

uint64_t sub_10045BBCC()
{
  v2 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_10045BE1C;
  }

  else
  {
    v3 = sub_10045BCE0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10045BCE0()
{
  v2 = v0[15];
  v1 = v0[16];
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[11];
  v6 = v0[12];
  v7 = v0[9];
  v8 = v0[5];
  (*(v2 + 16))(v0[10], v1, v3);
  swift_storeEnumTagMultiPayload();
  sub_100007224(&qword_100844AC0, &qword_1006E4D70);
  AsyncThrowingStream.Continuation.yield(_:)();
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  v9 = v0[16];
  v10 = v0[13];
  v11 = v0[10];
  v12 = v0[8];

  v13 = v0[1];

  return v13();
}

uint64_t sub_10045BE1C()
{
  if (static Task<>.isCancelled.getter())
  {
    v1 = v0[8];
    defaultLogger()();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();
    v4 = os_log_type_enabled(v2, v3);
    v5 = v0[18];
    v7 = v0[7];
    v6 = v0[8];
    v8 = v0[6];
    if (v4)
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Remote dispatch task programmatically cancelled", v9, 2u);
    }

    else
    {
      v11 = v0[18];
    }

    (*(v7 + 8))(v6, v8);
  }

  else
  {
    v0[2] = v0[18];
    v10 = v0[5];
    sub_100007224(&qword_100844AC0, &qword_1006E4D70);
    AsyncThrowingStream.Continuation.finish(throwing:)();
  }

  v12 = v0[16];
  v13 = v0[13];
  v14 = v0[10];
  v15 = v0[8];

  v16 = v0[1];

  return v16();
}

uint64_t sub_10045BFA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a6;
  v7[7] = a7;
  v7[4] = a4;
  v7[5] = a5;
  v7[3] = a3;
  v8 = type metadata accessor for MobileDocumentProviderViewServiceIdentifier();
  v7[8] = v8;
  v9 = *(v8 - 8);
  v7[9] = v9;
  v10 = *(v9 + 64) + 15;
  v7[10] = swift_task_alloc();
  v11 = sub_100007224(&qword_100844978, &qword_1006E4E50);
  v7[11] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v7[12] = swift_task_alloc();
  v13 = sub_100007224(&qword_100844AE0, &qword_1006E4E58);
  v7[13] = v13;
  v14 = *(v13 - 8);
  v7[14] = v14;
  v15 = *(v14 + 64) + 15;
  v7[15] = swift_task_alloc();

  return _swift_task_switch(sub_10045C114, 0, 0);
}

uint64_t sub_10045C114()
{
  v1 = v0[12];
  v14 = v0[15];
  v15 = v0[11];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[8];
  v5 = v0[4];
  sub_10000BA08((v0[3] + 56), *(v0[3] + 80));
  v6 = enum case for MobileDocumentProviderAuxiliaryView.nativeHandoff(_:);
  v7 = type metadata accessor for MobileDocumentProviderAuxiliaryView();
  (*(*(v7 - 8) + 104))(v2, v6, v7);
  (*(v3 + 104))(v2, enum case for MobileDocumentProviderViewServiceIdentifier.auxiliaryView(_:), v4);
  type metadata accessor for MobileDocumentProviderUIConnectionManager(0);
  sub_1004333B0(v2);
  (*(v3 + 8))(v2, v4);
  type metadata accessor for MobileDocumentProviderRequestState();
  sub_1000BA30C(&qword_100844AE8, &qword_100844978, &qword_1006E4E50);

  AsyncMapSequence.init(_:transform:)();
  v8 = swift_task_alloc();
  v0[16] = v8;
  *v8 = v0;
  v8[1] = sub_10045C328;
  v9 = v0[15];
  v10 = v0[6];
  v11 = v0[7];
  v12 = v0[5];

  return sub_100460834(v9, v12, v10, v11);
}

uint64_t sub_10045C328()
{
  v2 = *(*v1 + 128);
  v5 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = sub_10045C4CC;
  }

  else
  {
    v3 = sub_10045C43C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10045C43C()
{
  (*(v0[14] + 8))(v0[15], v0[13]);
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[10];

  v4 = v0[1];

  return v4();
}

uint64_t sub_10045C4CC()
{
  v1 = v0[17];
  v2 = v0[5];
  (*(v0[14] + 8))(v0[15], v0[13]);
  v0[2] = v1;
  sub_100007224(&qword_100844AC0, &qword_1006E4D70);
  AsyncThrowingStream.Continuation.finish(throwing:)();
  v3 = v0[15];
  v4 = v0[12];
  v5 = v0[10];

  v6 = v0[1];

  return v6();
}

uint64_t sub_10045C594(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = type metadata accessor for MobileDocumentProviderRequestState();
  v3[5] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[6] = swift_task_alloc();

  return _swift_task_switch(sub_10045C62C, 0, 0);
}

uint64_t sub_10045C62C()
{
  v1 = v0[5];
  sub_100461A24(v0[3], v0[6]);
  if (swift_getEnumCaseMultiPayload() == 7)
  {
    v2 = v0[4];
    Task.cancel()();
  }

  else
  {
    sub_1004619C8(v0[6]);
  }

  v3 = v0[6];
  sub_100461A24(v0[3], v0[2]);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10045C70C()
{
  v1 = async function pointer to withTaskCancellationHandler<A>(operation:onCancel:isolation:)[1];
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_10045C7E0;
  v3 = *(v0 + 16);

  return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v2, &unk_1006E4E48);
}

uint64_t sub_10045C7E0()
{
  v2 = *(*v1 + 24);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {

    return _swift_task_switch(sub_100041D3C, 0, 0);
  }
}

uint64_t sub_10045C904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 24) = a5;
  v8 = swift_task_alloc();
  *(v5 + 32) = v8;
  *v8 = v5;
  v8[1] = sub_10045C9B4;

  return sub_100458E50(a4, a5);
}

uint64_t sub_10045C9B4()
{
  v2 = *(*v1 + 32);
  v3 = *v1;
  *(v3 + 40) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10045CAE8, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_10045CAE8()
{
  v1 = v0[3];
  v0[2] = v0[5];
  sub_100007224(&qword_100844AC0, &qword_1006E4D70);
  AsyncThrowingStream.Continuation.finish(throwing:)();
  v2 = v0[1];

  return v2();
}

uint64_t sub_10045CB70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[3] = a3;
  v6[4] = a4;
  v7 = type metadata accessor for MobileDocumentProviderViewServiceIdentifier();
  v6[7] = v7;
  v8 = *(v7 - 8);
  v6[8] = v8;
  v9 = *(v8 + 64) + 15;
  v6[9] = swift_task_alloc();
  v10 = sub_100007224(&qword_100844978, &qword_1006E4E50);
  v6[10] = v10;
  v11 = *(v10 - 8);
  v6[11] = v11;
  v12 = *(v11 + 64) + 15;
  v6[12] = swift_task_alloc();

  return _swift_task_switch(sub_10045CC9C, 0, 0);
}

uint64_t sub_10045CC9C()
{
  v1 = v0[12];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[7];
  sub_10000BA08((v0[3] + 56), *(v0[3] + 80));
  v5 = enum case for MobileDocumentProviderAuxiliaryView.enableBluetooth(_:);
  v6 = type metadata accessor for MobileDocumentProviderAuxiliaryView();
  (*(*(v6 - 8) + 104))(v2, v5, v6);
  (*(v3 + 104))(v2, enum case for MobileDocumentProviderViewServiceIdentifier.auxiliaryView(_:), v4);
  type metadata accessor for MobileDocumentProviderUIConnectionManager(0);
  sub_1004333B0(v2);
  (*(v3 + 8))(v2, v4);
  v7 = swift_task_alloc();
  v0[13] = v7;
  *v7 = v0;
  v7[1] = sub_10045CE30;
  v8 = v0[12];
  v9 = v0[5];
  v10 = v0[6];
  v11 = v0[4];

  return sub_10045F408(v8, v11, v9, v10);
}

uint64_t sub_10045CE30()
{
  v2 = *(*v1 + 104);
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 80);
  v6 = *v1;
  v6[14] = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {

    return _swift_task_switch(sub_10045CFE4, 0, 0);
  }

  else
  {
    v7 = v6[12];
    v8 = v6[9];

    v9 = v6[1];

    return v9();
  }
}

uint64_t sub_10045CFE4()
{
  v1 = v0[4];
  v0[2] = v0[14];
  sub_100007224(&qword_100844AC0, &qword_1006E4D70);
  AsyncThrowingStream.Continuation.finish(throwing:)();
  v2 = v0[12];
  v3 = v0[9];

  v4 = v0[1];

  return v4();
}

uint64_t sub_10045D080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a3;
  v4[3] = a4;
  v5 = type metadata accessor for WebPresentmentRemoteDispatchingManager.StateTransition();
  v4[4] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[5] = swift_task_alloc();
  v7 = sub_100007224(&qword_100844AF0, &qword_1006E4E78);
  v4[6] = v7;
  v8 = *(v7 - 8);
  v4[7] = v8;
  v9 = *(v8 + 64) + 15;
  v4[8] = swift_task_alloc();
  v10 = sub_100007224(&qword_100843D38, &qword_1006E2240);
  v4[9] = v10;
  v11 = *(v10 - 8);
  v4[10] = v11;
  v12 = *(v11 + 64) + 15;
  v4[11] = swift_task_alloc();
  v13 = sub_100007224(&qword_100843D40, &qword_1006E2248);
  v4[12] = v13;
  v14 = *(v13 - 8);
  v4[13] = v14;
  v15 = *(v14 + 64) + 15;
  v4[14] = swift_task_alloc();

  return _swift_task_switch(sub_10045D24C, 0, 0);
}

uint64_t sub_10045D24C()
{
  v1 = v0[14];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[9];
  v5 = *sub_10000BA08((v0[2] + 216), *(v0[2] + 240));
  sub_100503AC0(v2);
  AsyncStream.makeAsyncIterator()();
  (*(v3 + 8))(v2, v4);
  v6 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v7 = swift_task_alloc();
  v0[15] = v7;
  *v7 = v0;
  v7[1] = sub_10045D354;
  v8 = v0[14];
  v9 = v0[12];

  return AsyncStream.Iterator.next(isolation:)(v0 + 16, 0, 0, v9);
}

uint64_t sub_10045D354()
{
  v1 = *(*v0 + 120);
  v3 = *v0;

  return _swift_task_switch(sub_10045D450, 0, 0);
}

uint64_t sub_10045D450()
{
  v1 = *(v0 + 128);
  if (v1 == 2)
  {
LABEL_4:
    v8 = *(v0 + 88);
    v9 = *(v0 + 64);
    v10 = *(v0 + 40);
    (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));

    v11 = *(v0 + 8);

    return v11();
  }

  if (v1)
  {
    v3 = *(v0 + 56);
    v2 = *(v0 + 64);
    v5 = *(v0 + 40);
    v4 = *(v0 + 48);
    v7 = *(v0 + 24);
    v6 = *(v0 + 32);
    swift_storeEnumTagMultiPayload();
    sub_100007224(&qword_100844AC0, &qword_1006E4D70);
    AsyncThrowingStream.Continuation.yield(_:)();
    (*(v3 + 8))(v2, v4);
    goto LABEL_4;
  }

  v13 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v14 = swift_task_alloc();
  *(v0 + 120) = v14;
  *v14 = v0;
  v14[1] = sub_10045D354;
  v15 = *(v0 + 112);
  v16 = *(v0 + 96);

  return AsyncStream.Iterator.next(isolation:)(v0 + 128, 0, 0, v16);
}

uint64_t sub_10045D5EC()
{
  sub_10000BB78(v0 + 2);
  sub_10000BB78(v0 + 7);
  sub_10000BB78(v0 + 12);
  sub_10000BB78(v0 + 17);
  sub_10000BB78(v0 + 22);
  sub_10000BB78(v0 + 27);

  return swift_deallocClassInstance();
}

uint64_t sub_10045D670(uint64_t a1)
{
  v3 = sub_100007224(&qword_100844948, &qword_1006E48C8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v9[-v6];
  v10 = *v1;
  v11 = a1;
  type metadata accessor for WebPresentmentRequestState();
  (*(v4 + 104))(v7, enum case for AsyncThrowingStream.Continuation.BufferingPolicy.unbounded<A, B>(_:), v3);
  return AsyncThrowingStream.init<>(_:bufferingPolicy:_:)();
}

uint64_t sub_10045D7AC(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for PartialWebPresentmentRequest() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(sub_100007224(&qword_100844950, &unk_1006E48D0) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100041F04;

  return sub_100455C04(a1, v10, v11, v12, v1 + v6, v1 + v9);
}

uint64_t sub_10045D918()
{
  v1 = sub_100007224(&qword_100844950, &unk_1006E48D0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

void sub_10045D9C0(uint64_t a1)
{
  v3 = *(sub_100007224(&qword_100844950, &unk_1006E48D0) - 8);
  v4 = *(v1 + ((*(v3 + 64) + ((*(v3 + 80) + 16) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1004564D8(a1);
}

uint64_t sub_10045DA68(int *a1)
{
  v5 = (a1 + *a1);
  v2 = a1[1];
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1001B72CC;

  return v5();
}

uint64_t sub_10045DB50()
{
  v1 = sub_100007224(&qword_100844950, &unk_1006E48D0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10045DBE4(uint64_t a1)
{
  v4 = *(sub_100007224(&qword_100844950, &unk_1006E48D0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100041F04;

  return sub_1004476D8(a1, v1 + v5);
}

uint64_t sub_10045DCC8(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 40);
  v9 = *(v2 + 48);
  v10 = *(v2 + 32);
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_100041F04;

  return sub_100456FEC(a1, a2, v6, v7, v10, v8, v9);
}

uint64_t type metadata accessor for WebPresentmentRemoteDispatchingManager.StateTransition()
{
  result = qword_100844BA0;
  if (!qword_100844BA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10045DDEC()
{
  v1 = sub_100007224(&qword_100844AC0, &qword_1006E4D70);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5 + 8);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_10045DEDC()
{
  v2 = *(sub_100007224(&qword_100844AC0, &qword_1006E4D70) - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = (v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_100041F04;

  return sub_10045CB70(v4, v5, v6, v0 + v3, v8, v9);
}

uint64_t sub_10045E014()
{
  v1 = sub_100007224(&qword_100844AC0, &qword_1006E4D70);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10045E0EC()
{
  v2 = *(sub_100007224(&qword_100844AC0, &qword_1006E4D70) - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100041F04;

  return sub_10045D080(v4, v5, v6, v0 + v3);
}

uint64_t sub_10045E1E4()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = (sub_100007224(&qword_100844AD0, &qword_1006E4D80) - 8);
  v7 = *(*v6 + 80);
  v8 = (v5 + v7) & ~v7;
  v9 = v3 | v7;
  v10 = (*(*v6 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v0 + 16);
  swift_unknownObjectRelease();
  v12 = *(v0 + 40);

  (*(v2 + 8))(v0 + v4, v1);
  v13 = sub_100007224(&qword_100844AD8, &qword_1006E4DA8);
  (*(*(v13 - 8) + 8))(v0 + v8, v13);
  v14 = v6[14];
  v15 = sub_100007224(&qword_100844AC0, &qword_1006E4D70);
  (*(*(v15 - 8) + 8))(v0 + v8 + v14, v15);
  v16 = *(v0 + v10 + 8);

  return _swift_deallocObject(v0, v10 + 16, v9 | 7);
}

uint64_t sub_10045E3CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&qword_100844AD0, &qword_1006E4D80);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10045E43C()
{
  v2 = *(type metadata accessor for URL() - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = *(sub_100007224(&qword_100844AD0, &qword_1006E4D80) - 8);
  v6 = (v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v0 + 16);
  v8 = *(v0 + 24);
  v9 = *(v0 + 40);
  v10 = (v0 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = *(v0 + 32);
  v14 = swift_task_alloc();
  *(v1 + 16) = v14;
  *v14 = v1;
  v14[1] = sub_100041F04;

  return sub_10045AFA0(v7, v8, v13, v9, v0 + v3, v0 + v6, v11, v12);
}

uint64_t sub_10045E5E0()
{
  v1 = (sub_100007224(&qword_100844AD0, &qword_1006E4D80) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + 32);

  v7 = sub_100007224(&qword_100844AD8, &qword_1006E4DA8);
  (*(*(v7 - 8) + 8))(v0 + v3, v7);
  v8 = v1[14];
  v9 = sub_100007224(&qword_100844AC0, &qword_1006E4D70);
  (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10045E72C()
{
  v2 = *(sub_100007224(&qword_100844AD0, &qword_1006E4D80) - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100041F04;

  return sub_10045A4A8(v4, v5, v6, v0 + v3);
}

uint64_t sub_10045E824()
{
  v1 = type metadata accessor for PartialWebPresentmentRequest();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = (sub_100007224(&qword_100844AD0, &qword_1006E4D80) - 8);
  v7 = *(*v6 + 80);
  v8 = (v5 + v7) & ~v7;
  v9 = *(*v6 + 64);
  v10 = v3 | v7;
  v11 = *(v0 + 16);
  swift_unknownObjectRelease();
  v12 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);
  v13 = sub_100007224(&qword_100844AD8, &qword_1006E4DA8);
  (*(*(v13 - 8) + 8))(v0 + v8, v13);
  v14 = v6[14];
  v15 = sub_100007224(&qword_100844AC0, &qword_1006E4D70);
  (*(*(v15 - 8) + 8))(v0 + v8 + v14, v15);

  return _swift_deallocObject(v0, v8 + v9, v10 | 7);
}

uint64_t sub_10045E9F4()
{
  v2 = *(type metadata accessor for PartialWebPresentmentRequest() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = *(sub_100007224(&qword_100844AD0, &qword_1006E4D80) - 8);
  v6 = (v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = v0[2];
  v8 = v0[3];
  v9 = v0[4];
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_100041F04;

  return sub_100458BB8(v7, v8, v9, v0 + v3, v0 + v6);
}

uint64_t sub_10045EB5C()
{
  v2 = *(type metadata accessor for PartialWebPresentmentRequest() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = *(sub_100007224(&qword_100844AC0, &qword_1006E4D70) - 8);
  v6 = (v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = v0[2];
  v8 = v0[3];
  v9 = v0[4];
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_100041F04;

  return sub_10045C904(v7, v8, v9, v0 + v3, v0 + v6);
}

uint64_t sub_10045ECB0(uint64_t *a1, uint64_t *a2)
{
  v5 = type metadata accessor for PartialWebPresentmentRequest();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v7 + 40) & ~v7;
  v9 = *(v6 + 64);
  v10 = sub_100007224(a1, a2);
  v11 = *(v10 - 8);
  v12 = *(v11 + 80);
  v13 = (v8 + v9 + v12) & ~v12;
  v14 = *(v11 + 64);
  v15 = v7 | v12;
  v16 = *(v2 + 16);
  swift_unknownObjectRelease();
  v17 = *(v2 + 32);

  (*(v6 + 8))(v2 + v8, v5);
  (*(v11 + 8))(v2 + v13, v10);

  return _swift_deallocObject(v2, v13 + v14, v15 | 7);
}

uint64_t sub_10045EE14(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for PartialWebPresentmentRequest() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(sub_100007224(&qword_100844AC0, &qword_1006E4D70) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100041F04;

  return sub_10045B968(a1, v10, v11, v12, v1 + v6, v1 + v9);
}

uint64_t sub_10045EF80()
{
  v1 = sub_100007224(&qword_100844AC0, &qword_1006E4D70);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 2);
  swift_unknownObjectRelease();
  v7 = *(v0 + 4);

  v8 = *(v0 + 5);

  (*(v2 + 8))(&v0[v4], v1);
  v9 = *&v0[v5 + 8];

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_10045F078()
{
  v2 = *(sub_100007224(&qword_100844AC0, &qword_1006E4D70) - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  v8 = (v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v1 + 16) = v11;
  *v11 = v1;
  v11[1] = sub_100041F04;

  return sub_10045BFA8(v4, v5, v6, v7, v0 + v3, v9, v10);
}

uint64_t sub_10045F1B4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10045F1F4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100041F04;

  return sub_10045C6EC(v2, v3, v4);
}

uint64_t sub_10045F29C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100027B9C;

  return sub_1001AFDA4(a1, v1);
}

uint64_t sub_10045F35C(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_100027B9C;

  return sub_10045C594(a1, a2, v2);
}

uint64_t sub_10045F408(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  v5 = type metadata accessor for WebPresentmentRemoteDispatchingManager.StateTransition();
  v4[7] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[8] = swift_task_alloc();
  v7 = sub_100007224(&qword_100844AF0, &qword_1006E4E78);
  v4[9] = v7;
  v8 = *(v7 - 8);
  v4[10] = v8;
  v9 = *(v8 + 64) + 15;
  v4[11] = swift_task_alloc();
  v10 = type metadata accessor for DIPError.Code();
  v4[12] = v10;
  v11 = *(v10 - 8);
  v4[13] = v11;
  v12 = *(v11 + 64) + 15;
  v4[14] = swift_task_alloc();
  v13 = type metadata accessor for MobileDocumentProviderRequestState();
  v4[15] = v13;
  v14 = *(v13 - 8);
  v4[16] = v14;
  v15 = *(v14 + 64) + 15;
  v4[17] = swift_task_alloc();
  v16 = *(*(sub_100007224(&qword_100844968, &qword_1006E4E80) - 8) + 64) + 15;
  v4[18] = swift_task_alloc();
  v17 = sub_100007224(&qword_100844978, &qword_1006E4E50);
  v4[19] = v17;
  v18 = *(v17 - 8);
  v4[20] = v18;
  v19 = *(v18 + 64) + 15;
  v4[21] = swift_task_alloc();
  v20 = sub_100007224(&qword_100844970, &qword_1006E4920);
  v4[22] = v20;
  v21 = *(v20 - 8);
  v4[23] = v21;
  v22 = *(v21 + 64) + 15;
  v4[24] = swift_task_alloc();

  return _swift_task_switch(sub_10045F6C8, 0, 0);
}

uint64_t sub_10045F6C8()
{
  v1 = v0[24];
  (*(v0[20] + 16))(v0[21], v0[3], v0[19]);
  sub_1000BA30C(&qword_100844AE8, &qword_100844978, &qword_1006E4E50);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  v2 = sub_1000BA30C(&qword_100844B28, &qword_100844970, &qword_1006E4920);
  v3 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
  v4 = swift_task_alloc();
  v0[25] = v4;
  *v4 = v0;
  v4[1] = sub_10045F820;
  v5 = v0[24];
  v6 = v0[22];
  v7 = v0[18];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v7, 0, 0, v0 + 2, v6, v2);
}

uint64_t sub_10045F820()
{
  v2 = *(*v1 + 200);
  v5 = *v1;

  if (v0)
  {
    v3 = sub_10045FF4C;
  }

  else
  {
    v3 = sub_10045F930;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10045F930()
{
  v1 = v0[18];
  if ((*(v0[16] + 48))(v1, 1, v0[15]) == 1)
  {
    v3 = v0[13];
    v2 = v0[14];
    v4 = v0[12];
    (*(v0[23] + 8))(v0[24], v0[22]);
    (*(v3 + 104))(v2, enum case for DIPError.Code.unexpectedDaemonState(_:), v4);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
LABEL_6:
    v12 = v0[24];
    v13 = v0[21];
    v15 = v0[17];
    v14 = v0[18];
    v16 = v0[14];
    v17 = v0[11];
    v18 = v0[8];

    v19 = v0[1];

    return v19();
  }

  sub_100461A88(v1, v0[17], type metadata accessor for MobileDocumentProviderRequestState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if ((EnumCaseMultiPayload - 1) >= 2)
    {
      v29 = v0[17];
      v30 = v0[5];
      v31 = *v29;
      v0[26] = *v29;
      v36 = (v30 + *v30);
      v32 = v30[1];
      v33 = swift_task_alloc();
      v0[27] = v33;
      *v33 = v0;
      v33[1] = sub_100460024;
      v34 = v0[6];

      return v36(v31);
    }

    else
    {
      sub_1004619C8(v0[17]);
      v21 = sub_1000BA30C(&qword_100844B28, &qword_100844970, &qword_1006E4920);
      v22 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
      v23 = swift_task_alloc();
      v0[25] = v23;
      *v23 = v0;
      v23[1] = sub_10045F820;
      v24 = v0[24];
      v25 = v0[22];
      v26 = v0[18];

      return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v26, 0, 0, v0 + 2, v25, v21);
    }
  }

  else
  {
    if ((EnumCaseMultiPayload - 3) < 3)
    {
      v7 = v0[23];
      v6 = v0[24];
      v8 = v0[22];
      v10 = v0[13];
      v9 = v0[14];
      v11 = v0[12];
      sub_1004619C8(v0[17]);
      (*(v10 + 104))(v9, enum case for DIPError.Code.unexpectedDaemonState(_:), v11);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      (*(v7 + 8))(v6, v8);
      goto LABEL_6;
    }

    if (EnumCaseMultiPayload == 6)
    {
      v35 = sub_1005056DC;
      v27 = swift_task_alloc();
      v0[29] = v27;
      *v27 = v0;
      v28 = sub_100460138;
    }

    else
    {
      v35 = sub_100504E08;
      v27 = swift_task_alloc();
      v0[31] = v27;
      *v27 = v0;
      v28 = sub_100460408;
    }

    v27[1] = v28;

    return v35();
  }
}

uint64_t sub_10045FF4C()
{
  (*(v0[23] + 8))(v0[24], v0[22]);
  v1 = v0[2];
  v2 = v0[24];
  v3 = v0[21];
  v5 = v0[17];
  v4 = v0[18];
  v6 = v0[14];
  v7 = v0[11];
  v8 = v0[8];

  v9 = v0[1];

  return v9();
}

uint64_t sub_100460024()
{
  v2 = *(*v1 + 216);
  v5 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v3 = sub_10046074C;
  }

  else
  {
    v3 = sub_100460660;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100460138()
{
  v2 = *(*v1 + 232);
  v5 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v3 = sub_100460330;
  }

  else
  {
    v3 = sub_10046024C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10046024C()
{
  v1 = sub_1000BA30C(&qword_100844B28, &qword_100844970, &qword_1006E4920);
  v2 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
  v3 = swift_task_alloc();
  v0[25] = v3;
  *v3 = v0;
  v3[1] = sub_10045F820;
  v4 = v0[24];
  v5 = v0[22];
  v6 = v0[18];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v6, 0, 0, v0 + 2, v5, v1);
}

uint64_t sub_100460330()
{
  (*(v0[23] + 8))(v0[24], v0[22]);
  v1 = v0[30];
  v2 = v0[24];
  v3 = v0[21];
  v5 = v0[17];
  v4 = v0[18];
  v6 = v0[14];
  v7 = v0[11];
  v8 = v0[8];

  v9 = v0[1];

  return v9();
}

uint64_t sub_100460408(char a1)
{
  v2 = *(*v1 + 248);
  v4 = *v1;
  *(*v1 + 256) = a1;

  return _swift_task_switch(sub_100460508, 0, 0);
}

uint64_t sub_100460508()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v4 = *(v0 + 64);
  v3 = *(v0 + 72);
  v5 = *(v0 + 56);
  v6 = *(v0 + 32);
  *(v0 + 256);
  swift_storeEnumTagMultiPayload();
  sub_100007224(&qword_100844AC0, &qword_1006E4D70);
  AsyncThrowingStream.Continuation.yield(_:)();
  (*(v2 + 8))(v1, v3);
  v7 = sub_1000BA30C(&qword_100844B28, &qword_100844970, &qword_1006E4920);
  v8 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
  v9 = swift_task_alloc();
  *(v0 + 200) = v9;
  *v9 = v0;
  v9[1] = sub_10045F820;
  v10 = *(v0 + 192);
  v11 = *(v0 + 176);
  v12 = *(v0 + 144);

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v12, 0, 0, v0 + 16, v11, v7);
}

uint64_t sub_100460660()
{
  v1 = sub_1000BA30C(&qword_100844B28, &qword_100844970, &qword_1006E4920);
  v2 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
  v3 = swift_task_alloc();
  *(v0 + 200) = v3;
  *v3 = v0;
  v3[1] = sub_10045F820;
  v4 = *(v0 + 192);
  v5 = *(v0 + 176);
  v6 = *(v0 + 144);

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v6, 0, 0, v0 + 16, v5, v1);
}

uint64_t sub_10046074C()
{
  v2 = *(v0 + 184);
  v1 = *(v0 + 192);
  v3 = *(v0 + 176);

  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 224);
  v5 = *(v0 + 192);
  v6 = *(v0 + 168);
  v8 = *(v0 + 136);
  v7 = *(v0 + 144);
  v9 = *(v0 + 112);
  v10 = *(v0 + 88);
  v11 = *(v0 + 64);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_100460834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  v5 = type metadata accessor for WebPresentmentRemoteDispatchingManager.StateTransition();
  v4[7] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[8] = swift_task_alloc();
  v7 = sub_100007224(&qword_100844AF0, &qword_1006E4E78);
  v4[9] = v7;
  v8 = *(v7 - 8);
  v4[10] = v8;
  v9 = *(v8 + 64) + 15;
  v4[11] = swift_task_alloc();
  v10 = type metadata accessor for DIPError.Code();
  v4[12] = v10;
  v11 = *(v10 - 8);
  v4[13] = v11;
  v12 = *(v11 + 64) + 15;
  v4[14] = swift_task_alloc();
  v13 = type metadata accessor for MobileDocumentProviderRequestState();
  v4[15] = v13;
  v14 = *(v13 - 8);
  v4[16] = v14;
  v15 = *(v14 + 64) + 15;
  v4[17] = swift_task_alloc();
  v16 = *(*(sub_100007224(&qword_100844968, &qword_1006E4E80) - 8) + 64) + 15;
  v4[18] = swift_task_alloc();
  v17 = sub_100007224(&qword_100844AE0, &qword_1006E4E58);
  v4[19] = v17;
  v18 = *(v17 - 8);
  v4[20] = v18;
  v19 = *(v18 + 64) + 15;
  v4[21] = swift_task_alloc();
  v20 = sub_100007224(&qword_100844AF8, &qword_1006E4E88);
  v4[22] = v20;
  v21 = *(v20 - 8);
  v4[23] = v21;
  v22 = *(v21 + 64) + 15;
  v4[24] = swift_task_alloc();

  return _swift_task_switch(sub_100460AF4, 0, 0);
}

uint64_t sub_100460AF4()
{
  v1 = v0[24];
  (*(v0[20] + 16))(v0[21], v0[3], v0[19]);
  sub_1000BA30C(&qword_100844B00, &qword_100844AE0, &qword_1006E4E58);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  v2 = sub_1000BA30C(&qword_100844B08, &qword_100844AF8, &qword_1006E4E88);
  v3 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
  v4 = swift_task_alloc();
  v0[25] = v4;
  *v4 = v0;
  v4[1] = sub_100460C4C;
  v5 = v0[24];
  v6 = v0[22];
  v7 = v0[18];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v7, 0, 0, v0 + 2, v6, v2);
}

uint64_t sub_100460C4C()
{
  v2 = *(*v1 + 200);
  v5 = *v1;

  if (v0)
  {
    v3 = sub_100461E54;
  }

  else
  {
    v3 = sub_100460D5C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100460D5C()
{
  v1 = v0[18];
  if ((*(v0[16] + 48))(v1, 1, v0[15]) == 1)
  {
    v3 = v0[13];
    v2 = v0[14];
    v4 = v0[12];
    (*(v0[23] + 8))(v0[24], v0[22]);
    (*(v3 + 104))(v2, enum case for DIPError.Code.unexpectedDaemonState(_:), v4);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
LABEL_6:
    v12 = v0[24];
    v13 = v0[21];
    v15 = v0[17];
    v14 = v0[18];
    v16 = v0[14];
    v17 = v0[11];
    v18 = v0[8];

    v19 = v0[1];

    return v19();
  }

  sub_100461A88(v1, v0[17], type metadata accessor for MobileDocumentProviderRequestState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if ((EnumCaseMultiPayload - 1) >= 2)
    {
      v29 = v0[17];
      v30 = v0[5];
      v31 = *v29;
      v0[26] = *v29;
      v36 = (v30 + *v30);
      v32 = v30[1];
      v33 = swift_task_alloc();
      v0[27] = v33;
      *v33 = v0;
      v33[1] = sub_100461378;
      v34 = v0[6];

      return v36(v31);
    }

    else
    {
      sub_1004619C8(v0[17]);
      v21 = sub_1000BA30C(&qword_100844B08, &qword_100844AF8, &qword_1006E4E88);
      v22 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
      v23 = swift_task_alloc();
      v0[25] = v23;
      *v23 = v0;
      v23[1] = sub_100460C4C;
      v24 = v0[24];
      v25 = v0[22];
      v26 = v0[18];

      return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v26, 0, 0, v0 + 2, v25, v21);
    }
  }

  else
  {
    if ((EnumCaseMultiPayload - 3) < 3)
    {
      v7 = v0[23];
      v6 = v0[24];
      v8 = v0[22];
      v10 = v0[13];
      v9 = v0[14];
      v11 = v0[12];
      sub_1004619C8(v0[17]);
      (*(v10 + 104))(v9, enum case for DIPError.Code.unexpectedDaemonState(_:), v11);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      (*(v7 + 8))(v6, v8);
      goto LABEL_6;
    }

    if (EnumCaseMultiPayload == 6)
    {
      v35 = sub_1005056DC;
      v27 = swift_task_alloc();
      v0[29] = v27;
      *v27 = v0;
      v28 = sub_10046148C;
    }

    else
    {
      v35 = sub_100504E08;
      v27 = swift_task_alloc();
      v0[31] = v27;
      *v27 = v0;
      v28 = sub_100461684;
    }

    v27[1] = v28;

    return v35();
  }
}

uint64_t sub_100461378()
{
  v2 = *(*v1 + 216);
  v5 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v3 = sub_100461E64;
  }

  else
  {
    v3 = sub_1004618DC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10046148C()
{
  v2 = *(*v1 + 232);
  v5 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v3 = sub_100461E74;
  }

  else
  {
    v3 = sub_1004615A0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1004615A0()
{
  v1 = sub_1000BA30C(&qword_100844B08, &qword_100844AF8, &qword_1006E4E88);
  v2 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
  v3 = swift_task_alloc();
  v0[25] = v3;
  *v3 = v0;
  v3[1] = sub_100460C4C;
  v4 = v0[24];
  v5 = v0[22];
  v6 = v0[18];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v6, 0, 0, v0 + 2, v5, v1);
}

uint64_t sub_100461684(char a1)
{
  v2 = *(*v1 + 248);
  v4 = *v1;
  *(*v1 + 256) = a1;

  return _swift_task_switch(sub_100461784, 0, 0);
}

uint64_t sub_100461784()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v4 = *(v0 + 64);
  v3 = *(v0 + 72);
  v5 = *(v0 + 56);
  v6 = *(v0 + 32);
  *(v0 + 256);
  swift_storeEnumTagMultiPayload();
  sub_100007224(&qword_100844AC0, &qword_1006E4D70);
  AsyncThrowingStream.Continuation.yield(_:)();
  (*(v2 + 8))(v1, v3);
  v7 = sub_1000BA30C(&qword_100844B08, &qword_100844AF8, &qword_1006E4E88);
  v8 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
  v9 = swift_task_alloc();
  *(v0 + 200) = v9;
  *v9 = v0;
  v9[1] = sub_100460C4C;
  v10 = *(v0 + 192);
  v11 = *(v0 + 176);
  v12 = *(v0 + 144);

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v12, 0, 0, v0 + 16, v11, v7);
}

uint64_t sub_1004618DC()
{
  v1 = sub_1000BA30C(&qword_100844B08, &qword_100844AF8, &qword_1006E4E88);
  v2 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
  v3 = swift_task_alloc();
  *(v0 + 200) = v3;
  *v3 = v0;
  v3[1] = sub_100460C4C;
  v4 = *(v0 + 192);
  v5 = *(v0 + 176);
  v6 = *(v0 + 144);

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v6, 0, 0, v0 + 16, v5, v1);
}

uint64_t sub_1004619C8(uint64_t a1)
{
  v2 = type metadata accessor for MobileDocumentProviderRequestState();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100461A24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileDocumentProviderRequestState();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100461A88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100461B08(uint64_t a1)
{
  v4 = *(type metadata accessor for MobileDocumentProviderAuxiliaryView() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100041F04;

  return sub_10042C3E4(a1, v1 + v5);
}

uint64_t sub_100461BF8(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v5 + v6, v4 | 7);
}

uint64_t sub_100461C88(uint64_t a1)
{
  v4 = *(type metadata accessor for URL() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100041F04;

  return sub_10042C124(a1, v1 + v5);
}

uint64_t sub_100461D60()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

void sub_100461D98()
{
  sub_100461E0C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for WebPresentmentResponse();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_100461E0C()
{
  if (!qword_100844BB0)
  {
    v0 = type metadata accessor for URL();
    if (!v1)
    {
      atomic_store(v0, &qword_100844BB0);
    }
  }
}

uint64_t sub_100461E7C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = result;
  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  do
  {
    for (i = v7; ; ++i)
    {
      if (i >= v4)
      {
        __break(1u);
LABEL_20:
        __break(1u);
        return result;
      }

      v10 = type metadata accessor for ISO18013ReaderRequest.DocRequest();
      v12 = *(v10 - 8);
      result = v10 - 8;
      v11 = v12;
      v7 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_20;
      }

      result = v6(&v19, a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * i);
      if (v3)
      {

        return v8;
      }

      v13 = v20;
      if (v20)
      {
        break;
      }

      if (v7 == v4)
      {
        return v8;
      }
    }

    v14 = v19;
    result = swift_isUniquelyReferenced_nonNull_native();
    v21 = v14;
    if ((result & 1) == 0)
    {
      result = sub_1003C5110(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v16 = *(v8 + 2);
    v15 = *(v8 + 3);
    v17 = v16 + 1;
    if (v16 >= v15 >> 1)
    {
      result = sub_1003C5110((v15 > 1), v16 + 1, 1, v8);
      v17 = v16 + 1;
      v8 = result;
    }

    *(v8 + 2) = v17;
    v18 = &v8[16 * v16];
    *(v18 + 4) = v21;
    *(v18 + 5) = v13;
  }

  while (v7 != v4);
  return v8;
}

uint64_t sub_100462018@<X0>(uint64_t a1@<X8>)
{
  v26 = type metadata accessor for ISO18013PresentmentType();
  v2 = *(v26 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v26);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DIPError.Code();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v25 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = &v25 - v16;
  __chkstk_darwin(v15);
  v18 = *(v7 + 104);
  v18(&v25 - v19, enum case for DIPError.Code.idcsUnknownReaderAuthAlgorithm(_:), v6);
  v18(v17, enum case for DIPError.Code.idcsMisformattedReaderAuthCerts(_:), v6);
  v18(v14, enum case for DIPError.Code.idcsMisformattedReaderAuthSignature(_:), v6);
  v18(v11, enum case for DIPError.Code.idcsInvalidReaderAuthSignature(_:), v6);
  COSESignatureValidator.init(errorCodeUnknownAlgorithm:errorCodeInvalidPublicKey:errorCodeMisformattedSignature:errorCodeInvalidSignature:)();
  v20 = type metadata accessor for CBOREncoder();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  v23 = CBOREncoder.init()();
  *(a1 + *(type metadata accessor for WebPresentmentRequestAuthenticator() + 20)) = v23;
  (*(v2 + 104))(v5, enum case for ISO18013PresentmentType.webRequestForwarding(_:), v26);

  CBOREncoder.presentmentType.setter();
}

uint64_t type metadata accessor for WebPresentmentRequestAuthenticator()
{
  result = qword_100844C48;
  if (!qword_100844C48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100462304(void (**a1)(char *, uint64_t), uint64_t a2, unint64_t a3, uint64_t a4)
{
  v146 = a4;
  v144 = type metadata accessor for DIPError.Code();
  v143 = *(v144 - 8);
  v7 = *(v143 + 64);
  __chkstk_darwin(v144);
  v145 = &v135 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100007224(&qword_10083F168, &unk_1006DEC40);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v135 - v11;
  v164 = type metadata accessor for ISO18013ReaderRequest.DocRequest();
  v158 = *(v164 - 8);
  v13 = *(v158 + 64);
  v14 = __chkstk_darwin(v164);
  v153 = &v135 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v163 = &v135 - v16;
  v17 = type metadata accessor for COSE_Sign1();
  v151 = *(v17 - 8);
  v18 = *(v151 + 64);
  v19 = __chkstk_darwin(v17);
  v21 = &v135 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v19);
  v154 = &v135 - v23;
  __chkstk_darwin(v22);
  v25 = &v135 - v24;
  v26 = ISO18013ReaderRequest.readerAuthAll.getter();
  v161 = a3 >> 60;
  v162 = a2;
  v152 = a3;
  v159 = v12;
  v160 = v17;
  if (!v26)
  {
    goto LABEL_80;
  }

  v27 = v26;
  v28 = *(v26 + 16);
  if (!v28)
  {

    a3 = v152;
    goto LABEL_80;
  }

  v141 = v25;
  v150 = a1;
  v29 = 0;
  v157 = v26 + ((*(v151 + 80) + 32) & ~*(v151 + 80));
  if (a2)
  {
    v30 = 0;
  }

  else
  {
    v30 = v152 == 0xC000000000000000;
  }

  v31 = !v30;
  LODWORD(v149) = v31;
  v155 = (v152 >> 62);
  v156 = v151 + 16;
  v32 = __OFSUB__(HIDWORD(a2), a2);
  v140 = v32;
  v139 = HIDWORD(a2) - a2;
  v142 = BYTE6(v152);
  v33 = (v151 + 8);
  while (1)
  {
    if (v29 >= *(v27 + 16))
    {
      goto LABEL_182;
    }

    (*(v151 + 16))(v21, v157 + *(v151 + 72) * v29, v17);
    v34 = COSE_Sign1.x509Chain.getter();
    if (!v34)
    {
      goto LABEL_31;
    }

    if (!v34[2])
    {

LABEL_31:
      v36 = 0;
      v35 = 0xF000000000000000;
LABEL_32:
      if (v161 > 0xE)
      {
        sub_10000B8B8(v162, v152);

        sub_10000BD94(v36, v35);
        goto LABEL_172;
      }

      goto LABEL_33;
    }

    v36 = v34[4];
    v35 = v34[5];
    sub_10000B8B8(v36, v35);

    if (v35 >> 60 == 15)
    {
      goto LABEL_32;
    }

    v37 = v155;
    if (v161 <= 0xE)
    {
      break;
    }

LABEL_33:
    v43 = v162;
    v44 = v152;
    sub_10000B8B8(v162, v152);
    sub_10000BD94(v36, v35);
    v45 = v43;
    v46 = v44;
LABEL_34:
    sub_10000BD94(v45, v46);
LABEL_35:
    ++v29;
    v17 = v160;
    (*v33)(v21, v160);
    v12 = v159;
    if (v28 == v29)
    {

      a3 = v152;
      a2 = v162;
LABEL_80:
      v71 = ISO18013ReaderRequest.docRequests.getter();
      v157 = *(v71 + 16);
      if (!v157)
      {
        v77 = _swiftEmptyArrayStorage;
LABEL_169:

        __chkstk_darwin(v118);
        v133 = v147;
        v134 = v146;
        v119 = sub_100461E7C(sub_1004648F4, &v131, v77);

        result = v119;
        if (!*(v119 + 16))
        {

          v121 = *(v143 + 104);
          v122 = v145;
          v123 = v144;
          v121(v145, enum case for DIPError.Code.webPresentmentRequestNotAuthenticated(_:), v144);
          sub_1000402AC(_swiftEmptyArrayStorage);
          type metadata accessor for DIPError();
          sub_100464910(&qword_100834130, &type metadata accessor for DIPError);
          swift_allocError();
          v132 = 0x8000000100717710;
          v133 = 94;
          v131 = 0xD000000000000060;
          DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
          swift_willThrow();
          goto LABEL_174;
        }

        return result;
      }

      v72 = 0;
      v155 = (v151 + 48);
      v156 = v158 + 16;
      v149 = (v151 + 8);
      if (a2)
      {
        v73 = 0;
      }

      else
      {
        v73 = a3 == 0xC000000000000000;
      }

      v74 = !v73;
      LODWORD(v142) = v74;
      v75 = a3 >> 62;
      v76 = __OFSUB__(HIDWORD(a2), a2);
      v140 = v76;
      v139 = HIDWORD(a2) - a2;
      v141 = BYTE6(a3);
      v150 = (v158 + 8);
      v77 = _swiftEmptyArrayStorage;
      v151 = v158 + 32;
      v154 = v71;
      while (1)
      {
        if (v72 >= *(v71 + 16))
        {
          __break(1u);
LABEL_182:
          __break(1u);
LABEL_183:
          __break(1u);
LABEL_184:
          __break(1u);
LABEL_185:
          __break(1u);
LABEL_186:
          __break(1u);
LABEL_187:
          __break(1u);
LABEL_188:
          __break(1u);
LABEL_189:
          __break(1u);
LABEL_190:
          __break(1u);
LABEL_191:
          __break(1u);
LABEL_192:
          __break(1u);
LABEL_193:
          __break(1u);
LABEL_194:
          __break(1u);
LABEL_195:
          __break(1u);
LABEL_196:
          __break(1u);
LABEL_197:
          __break(1u);
LABEL_198:
          __break(1u);
        }

        v81 = v75;
        v82 = (*(v158 + 80) + 32) & ~*(v158 + 80);
        v83 = *(v158 + 72);
        (*(v158 + 16))(v163, v71 + v82 + v83 * v72, v164);
        ISO18013ReaderRequest.DocRequest.readerAuth.getter();
        if ((*v155)(v12, 1, v17) == 1)
        {
          sub_10000BE18(v12, &qword_10083F168, &unk_1006DEC40);
          goto LABEL_115;
        }

        v84 = COSE_Sign1.x509Chain.getter();
        (*v149)(v12, v17);
        if (!v84)
        {
          goto LABEL_115;
        }

        if (!v84[2])
        {

LABEL_115:
          v86 = 0;
          v85 = 0xF000000000000000;
LABEL_116:
          if (v161 > 0xE)
          {
            sub_10000B8B8(v162, a3);
            goto LABEL_118;
          }

LABEL_91:
          v78 = v162;
          sub_10000B8B8(v162, a3);
          sub_10000BD94(v86, v85);
          v79 = v78;
          v80 = a3;
LABEL_92:
          sub_10000BD94(v79, v80);
          goto LABEL_93;
        }

        v86 = v84[4];
        v85 = v84[5];
        sub_10000B8B8(v86, v85);

        if (v85 >> 60 == 15)
        {
          goto LABEL_116;
        }

        if (v161 > 0xE)
        {
          goto LABEL_91;
        }

        v87 = v85 >> 62;
        if (v85 >> 62 == 3)
        {
          break;
        }

        if (v87 > 1)
        {
          if (v87 != 2)
          {
            goto LABEL_134;
          }

          v97 = *(v86 + 16);
          v96 = *(v86 + 24);
          v49 = __OFSUB__(v96, v97);
          v95 = v96 - v97;
          if (v49)
          {
            goto LABEL_188;
          }

          if (v81 <= 1)
          {
            goto LABEL_131;
          }
        }

        else if (v87)
        {
          LODWORD(v95) = HIDWORD(v86) - v86;
          if (__OFSUB__(HIDWORD(v86), v86))
          {
            goto LABEL_187;
          }

          v95 = v95;
          if (v81 <= 1)
          {
LABEL_131:
            v98 = v141;
            if (v81)
            {
              v98 = v139;
              if (v140)
              {
                goto LABEL_185;
              }
            }

            goto LABEL_137;
          }
        }

        else
        {
          v95 = BYTE6(v85);
          if (v81 <= 1)
          {
            goto LABEL_131;
          }
        }

LABEL_135:
        if (v81 != 2)
        {
          if (!v95)
          {
LABEL_144:
            v103 = v162;
            sub_10000B8B8(v162, a3);
            sub_10000BD94(v103, a3);
            goto LABEL_118;
          }

LABEL_143:
          v102 = v162;
          sub_10000B8B8(v162, a3);
          sub_10000BD94(v102, a3);
          v79 = v86;
          v80 = v85;
          goto LABEL_92;
        }

        v100 = *(v162 + 16);
        v99 = *(v162 + 24);
        v49 = __OFSUB__(v99, v100);
        v98 = v99 - v100;
        if (v49)
        {
          goto LABEL_186;
        }

LABEL_137:
        if (v95 != v98)
        {
          goto LABEL_143;
        }

        if (v95 < 1)
        {
          goto LABEL_144;
        }

        if (v87 > 1)
        {
          if (v87 != 2)
          {
            memset(v166, 0, 14);
            v101 = v162;
            sub_10000B8B8(v162, a3);
            sub_1000363B4(v101, a3);
            sub_1000363B4(v86, v85);
            goto LABEL_157;
          }

          v104 = *(v86 + 24);
          v138 = *(v86 + 16);
          v137 = v104;
          v105 = v162;
          sub_10000B8B8(v162, a3);
          sub_1000363B4(v105, a3);
          sub_1000363B4(v86, v85);
          v106 = __DataStorage._bytes.getter();
          if (v106)
          {
            v107 = v106;
            v108 = __DataStorage._offset.getter();
            v109 = v138;
            if (__OFSUB__(v138, v108))
            {
              goto LABEL_197;
            }

            v136 = &v138[v107 - v108];
          }

          else
          {
            v136 = 0;
            v109 = v138;
          }

          if (__OFSUB__(v137, v109))
          {
            goto LABEL_196;
          }

          __DataStorage._length.getter();
          v115 = v136;
          v101 = v162;
          v116 = v162;
          a3 = v152;
        }

        else
        {
          if (!v87)
          {
            v166[0] = v86;
            LOWORD(v166[1]) = v85;
            BYTE2(v166[1]) = BYTE2(v85);
            BYTE3(v166[1]) = BYTE3(v85);
            BYTE4(v166[1]) = BYTE4(v85);
            BYTE5(v166[1]) = BYTE5(v85);
            v138 = v166 + BYTE6(v85);
            v101 = v162;
            sub_10000B8B8(v162, a3);
            sub_1000363B4(v101, a3);
            sub_1000363B4(v86, v85);
LABEL_157:
            v113 = v148;
            sub_1000C2B5C(v166, v101, a3, &v165);
            v148 = v113;
            if (v113)
            {
              goto LABEL_199;
            }

            sub_10000BD94(v101, a3);
            sub_10000BD94(v101, a3);
            sub_10000BD94(v86, v85);
            v114 = v165;
            goto LABEL_166;
          }

          v137 = v86;
          v138 = ((v86 >> 32) - v86);
          if (v86 >> 32 < v86)
          {
            goto LABEL_195;
          }

          v110 = v162;
          sub_10000B8B8(v162, a3);
          sub_1000363B4(v110, a3);
          sub_1000363B4(v86, v85);
          v111 = __DataStorage._bytes.getter();
          if (v111)
          {
            v136 = v111;
            v112 = __DataStorage._offset.getter();
            if (__OFSUB__(v137, v112))
            {
              goto LABEL_198;
            }

            v137 = &v136[v137 - v112];
          }

          else
          {
            v137 = 0;
          }

          __DataStorage._length.getter();
          v115 = v137;
          v101 = v162;
          v116 = v162;
        }

        v117 = v148;
        sub_1000C2B5C(v115, v116, a3, v166);
        v148 = v117;
        if (v117)
        {
LABEL_199:
          result = sub_10000BD94(v101, a3);
          __break(1u);
          return result;
        }

        sub_10000BD94(v101, a3);
        sub_10000BD94(v101, a3);
        sub_10000BD94(v86, v85);
        v114 = v166[0];
LABEL_166:
        sub_10000BD94(v86, v85);
        if (v114)
        {
          goto LABEL_119;
        }

LABEL_93:
        (*v150)(v163, v164);
        v17 = v160;
        v75 = v81;
LABEL_94:
        ++v72;
        v12 = v159;
        v71 = v154;
        if (v157 == v72)
        {
          goto LABEL_169;
        }
      }

      if (v86)
      {
        v88 = 0;
      }

      else
      {
        v88 = v85 == 0xC000000000000000;
      }

      v90 = !v88 || v81 < 3;
      if (((v90 | v142) & 1) == 0)
      {
        sub_10000B8B8(0, 0xC000000000000000);
        sub_10000BD94(0, 0xC000000000000000);
LABEL_118:
        sub_10000BD94(v86, v85);
LABEL_119:
        v91 = *v151;
        (*v151)(v153, v163, v164);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v167 = v77;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100172E0C(0, v77[2] + 1, 1);
          v77 = v167;
        }

        v94 = v77[2];
        v93 = v77[3];
        v75 = v81;
        if (v94 >= v93 >> 1)
        {
          sub_100172E0C(v93 > 1, v94 + 1, 1);
          v75 = v81;
          v77 = v167;
        }

        v77[2] = v94 + 1;
        v91(v77 + v82 + v94 * v83, v153, v164);
        a3 = v152;
        v17 = v160;
        goto LABEL_94;
      }

LABEL_134:
      v95 = 0;
      if (v81 <= 1)
      {
        goto LABEL_131;
      }

      goto LABEL_135;
    }
  }

  v38 = v35 >> 62;
  if (v35 >> 62 != 3)
  {
    if (v38 <= 1)
    {
      if (v38)
      {
        LODWORD(v42) = HIDWORD(v36) - v36;
        if (__OFSUB__(HIDWORD(v36), v36))
        {
          goto LABEL_190;
        }

        v42 = v42;
        if (v155 <= 1)
        {
          goto LABEL_47;
        }
      }

      else
      {
        v42 = BYTE6(v35);
        if (v155 <= 1)
        {
          goto LABEL_47;
        }
      }

      goto LABEL_40;
    }

    if (v38 == 2)
    {
      v52 = *(v36 + 16);
      v51 = *(v36 + 24);
      v49 = __OFSUB__(v51, v52);
      v42 = v51 - v52;
      if (v49)
      {
        goto LABEL_189;
      }

      goto LABEL_46;
    }

    v42 = 0;
    if (v155 > 1)
    {
      goto LABEL_40;
    }

LABEL_47:
    v53 = v37;
    v50 = v142;
    if (v53)
    {
      v50 = v139;
      if (v140)
      {
        goto LABEL_183;
      }
    }

LABEL_49:
    if (v42 == v50)
    {
      if (v42 < 1)
      {
        goto LABEL_177;
      }

      if (v38 > 1)
      {
        if (v38 != 2)
        {
          memset(v166, 0, 14);
          v54 = v162;
          v55 = v152;
          sub_10000B8B8(v162, v152);
          sub_1000363B4(v36, v35);
          goto LABEL_70;
        }

        v58 = *(v36 + 16);
        v138 = *(v36 + 24);
        sub_10000B8B8(v162, v152);
        sub_1000363B4(v36, v35);
        v59 = __DataStorage._bytes.getter();
        if (v59)
        {
          v136 = v58;
          v60 = v59;
          v61 = __DataStorage._offset.getter();
          v62 = v136;
          if (__OFSUB__(v136, v61))
          {
            goto LABEL_193;
          }

          v137 = &v136[v60 - v61];
        }

        else
        {
          v62 = v58;
          v137 = 0;
        }

        if (__OFSUB__(v138, v62))
        {
          goto LABEL_192;
        }
      }

      else
      {
        if (!v38)
        {
          v166[0] = v36;
          LOWORD(v166[1]) = v35;
          BYTE2(v166[1]) = BYTE2(v35);
          BYTE3(v166[1]) = BYTE3(v35);
          BYTE4(v166[1]) = BYTE4(v35);
          BYTE5(v166[1]) = BYTE5(v35);
          v138 = v166 + BYTE6(v35);
          v54 = v162;
          v55 = v152;
          sub_10000B8B8(v162, v152);
          sub_1000363B4(v36, v35);
LABEL_70:
          v66 = v148;
          sub_1000C2B5C(v166, v54, v55, &v167);
          v148 = v66;
          sub_10000BD94(v36, v35);
          sub_10000BD94(v54, v55);
          v67 = v167;
          goto LABEL_77;
        }

        v137 = v36;
        v138 = ((v36 >> 32) - v36);
        if (v36 >> 32 < v36)
        {
          goto LABEL_191;
        }

        sub_10000B8B8(v162, v152);
        sub_1000363B4(v36, v35);
        v63 = __DataStorage._bytes.getter();
        if (v63)
        {
          v64 = v63;
          v65 = __DataStorage._offset.getter();
          if (__OFSUB__(v137, v65))
          {
            goto LABEL_194;
          }

          v137 = v137 - v65 + v64;
        }

        else
        {
          v137 = 0;
        }
      }

      __DataStorage._length.getter();
      v68 = v162;
      v69 = v152;
      v70 = v148;
      sub_1000C2B5C(v137, v162, v152, v166);
      v148 = v70;
      sub_10000BD94(v36, v35);
      sub_10000BD94(v68, v69);
      v67 = v166[0];
LABEL_77:
      sub_10000BD94(v36, v35);
      if (v67)
      {
        goto LABEL_180;
      }

      goto LABEL_35;
    }

    goto LABEL_55;
  }

  if (v36)
  {
    v39 = 0;
  }

  else
  {
    v39 = v35 == 0xC000000000000000;
  }

  v41 = !v39 || v155 < 3;
  if (((v41 | v149) & 1) == 0)
  {
    sub_10000B8B8(0, 0xC000000000000000);
    sub_10000BD94(0, 0xC000000000000000);
    v36 = 0;
    goto LABEL_179;
  }

  v42 = 0;
LABEL_46:
  v37 = v155;
  if (v155 <= 1)
  {
    goto LABEL_47;
  }

LABEL_40:
  if (v37 == 2)
  {
    v48 = *(v162 + 16);
    v47 = *(v162 + 24);
    v49 = __OFSUB__(v47, v48);
    v50 = v47 - v48;
    if (v49)
    {
      goto LABEL_184;
    }

    goto LABEL_49;
  }

  if (v42)
  {
LABEL_55:
    v56 = v162;
    v57 = v152;
    sub_10000B8B8(v162, v152);
    sub_10000BD94(v56, v57);
    v45 = v36;
    v46 = v35;
    goto LABEL_34;
  }

LABEL_177:
  v129 = v162;
  v130 = v152;
  sub_10000B8B8(v162, v152);
  sub_10000BD94(v129, v130);
LABEL_179:
  sub_10000BD94(v36, v35);
LABEL_180:

LABEL_172:
  v124 = v160;
  v125 = *(v151 + 32);
  v126 = v154;
  v125(v154, v21, v160);
  v127 = v141;
  v125(v141, v126, v124);
  v128 = v148;
  sub_100463718(v127, v150, v146);
  if (!v128)
  {
    (*v33)(v127, v124);
    return 0;
  }

  (*v33)(v127, v124);
  v121 = *(v143 + 104);
  v122 = v145;
  v123 = v144;
LABEL_174:
  v121(v122, enum case for DIPError.Code.internalError(_:), v123);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100464910(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  v132 = 0x8000000100717710;
  v133 = 100;
  v131 = 0xD000000000000060;
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
}

uint64_t sub_100463718(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v61 = a1;
  v5 = type metadata accessor for Logger();
  v64 = *(v5 - 8);
  v6 = *(v64 + 64);
  __chkstk_darwin(v5);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for ISO18013ReaderRequest.DocRequest();
  v9 = *(v71 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v71);
  v70 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_100007224(&qword_10083C078, &unk_1006E4F40);
  v12 = *(v69 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v69);
  v54 = &v51 - v14;
  v15 = sub_100007224(&qword_100841DF8, &qword_1006DEC50);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v56 = &v51 - v17;
  v18 = type metadata accessor for ISO18013SessionTranscript();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for ISO18013ReaderAuthenticationAll();
  v59 = *(v23 - 8);
  v60 = v23;
  v24 = *(v59 + 64);
  __chkstk_darwin(v23);
  v57 = &v51 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for ISO18013DCAPISessionTranscript();
  (*(*(v26 - 8) + 16))(v22, a3, v26);
  v27 = *(v19 + 104);
  v55 = v22;
  v27(v22, enum case for ISO18013SessionTranscript.digitalCredentialAPI(_:), v18);
  v58 = a2;
  v28 = ISO18013ReaderRequest.docRequests.getter();
  v29 = *(v28 + 16);
  if (v29)
  {
    v52 = v8;
    v53 = v5;
    v72 = _swiftEmptyArrayStorage;
    sub_100172DCC(0, v29, 0);
    v30 = v72;
    v32 = *(v9 + 16);
    v31 = v9 + 16;
    v33 = (*(v31 + 64) + 32) & ~*(v31 + 64);
    v51 = v28;
    v34 = v28 + v33;
    v67 = *(v31 + 56);
    v68 = v32;
    v65 = v12 + 32;
    v66 = (v31 - 8);
    v35 = v54;
    v36 = v12;
    do
    {
      v37 = v70;
      v38 = v71;
      v39 = v31;
      v68(v70, v34, v71);
      ISO18013ReaderRequest.DocRequest.itemsRequest.getter();
      (*v66)(v37, v38);
      v72 = v30;
      v41 = v30[2];
      v40 = v30[3];
      if (v41 >= v40 >> 1)
      {
        sub_100172DCC(v40 > 1, v41 + 1, 1);
        v30 = v72;
      }

      v30[2] = v41 + 1;
      (*(v36 + 32))(v30 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v41, v35, v69);
      v34 += v67;
      --v29;
      v31 = v39;
    }

    while (v29);

    v8 = v52;
    v5 = v53;
    v42 = v64;
  }

  else
  {
    v42 = v64;
  }

  ISO18013ReaderRequest.deviceRequestInfo.getter();
  v43 = v57;
  ISO18013ReaderAuthenticationAll.init(sessionTranscript:itemsRequestBytesAll:deviceRequestsInfoBytes:)();
  v44 = *(v62 + *(type metadata accessor for WebPresentmentRequestAuthenticator() + 20));
  sub_100464910(&qword_100844BE0, &type metadata accessor for ISO18013ReaderAuthenticationAll);
  sub_100464910(&qword_100841E08, &type metadata accessor for ISO18013ReaderAuthenticationAll);
  v45 = v60;
  v46 = v63;
  COSESignatureValidator.validateReaderAuth<A>(_:authenticationStructure:encoder:)();
  if (!v46)
  {
    defaultLogger()();
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&_mh_execute_header, v47, v48, "WebPresentmentRequestAuthenticator ReaderAuthAll successfully validated", v49, 2u);
    }

    (*(v42 + 8))(v8, v5);
  }

  return (*(v59 + 8))(v43, v45);
}

uint64_t sub_100463D64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v67 = a4;
  v62 = a3;
  v63 = a2;
  v5 = type metadata accessor for ISO18013ReaderRequest.DocRequest();
  v58 = *(v5 - 8);
  v59 = v5;
  v6 = *(v58 + 64);
  v7 = __chkstk_darwin(v5);
  v56 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v57 = &v56 - v9;
  v61 = sub_100007224(&qword_10083C078, &unk_1006E4F40);
  v10 = *(v61 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v61);
  v13 = &v56 - v12;
  v14 = type metadata accessor for Logger();
  v64 = *(v14 - 8);
  v65 = v14;
  v15 = *(v64 + 64);
  v16 = __chkstk_darwin(v14);
  v60 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v56 - v18;
  v20 = sub_100007224(&qword_10083F168, &unk_1006DEC40);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v23 = &v56 - v22;
  v24 = type metadata accessor for COSE_Sign1();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  v28 = &v56 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  ISO18013ReaderRequest.DocRequest.readerAuth.getter();
  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {
    sub_10000BE18(v23, &qword_10083F168, &unk_1006DEC40);
    defaultLogger()();
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "No readerAuth found on document request, skipping.", v31, 2u);
    }

    result = (*(v64 + 8))(v19, v65);
    v33 = v67;
    *v67 = 0;
    v33[1] = 0;
  }

  else
  {
    (*(v25 + 32))(v28, v23, v24);
    ISO18013ReaderRequest.DocRequest.itemsRequest.getter();
    v34 = v66;
    v35 = sub_1004643FC(v28, v13, v62);
    if (v34)
    {
      (*(v10 + 8))(v13, v61);
      (*(v25 + 8))(v28, v24);
      v37 = v60;
      defaultLogger()();
      v39 = v57;
      v38 = v58;
      v40 = *(v58 + 16);
      v41 = v59;
      v40(v57, a1, v59);
      swift_errorRetain();
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        LODWORD(v63) = v43;
        v45 = v44;
        v62 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        v68 = v66;
        *v45 = 136315394;
        v40(v56, v39, v41);
        v46 = String.init<A>(describing:)();
        v48 = v47;
        (*(v38 + 8))(v39, v41);
        v49 = sub_100141FE4(v46, v48, &v68);

        *(v45 + 4) = v49;
        *(v45 + 12) = 2112;
        swift_errorRetain();
        v50 = _swift_stdlib_bridgeErrorToNSError();
        *(v45 + 14) = v50;
        v51 = v62;
        *v62 = v50;
        _os_log_impl(&_mh_execute_header, v42, v63, "Error while authenticating documentRequest %s reader auth: %@", v45, 0x16u);
        sub_10000BE18(v51, &unk_100833B50, &unk_1006D8FB0);

        sub_10000BB78(v66);

        result = (*(v64 + 8))(v60, v65);
      }

      else
      {

        (*(v38 + 8))(v39, v41);
        result = (*(v64 + 8))(v37, v65);
      }

      v55 = v67;
      *v67 = 0;
      v55[1] = 0;
    }

    else
    {
      v52 = v35;
      v53 = v36;
      (*(v10 + 8))(v13, v61);
      result = (*(v25 + 8))(v28, v24);
      v54 = v67;
      *v67 = v52;
      v54[1] = v53;
    }
  }

  return result;
}

uint64_t sub_1004643FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v40 = a3;
  v41 = a1;
  v44 = a2;
  v4 = type metadata accessor for ISO18013ReaderRequest.ItemsRequest();
  v38 = *(v4 - 8);
  v39 = v4;
  v5 = *(v38 + 64);
  __chkstk_darwin(v4);
  v37 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for Logger();
  v34 = *(v36 - 8);
  v7 = *(v34 + 64);
  __chkstk_darwin(v36);
  v35 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100007224(&qword_10083C078, &unk_1006E4F40);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v34 - v12;
  v14 = type metadata accessor for ISO18013SessionTranscript();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for ISO18013ReaderAuthentication();
  v42 = *(v19 - 8);
  v20 = *(v42 + 64);
  __chkstk_darwin(v19);
  v22 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for ISO18013DCAPISessionTranscript();
  (*(*(v23 - 8) + 16))(v18, v40, v23);
  (*(v15 + 104))(v18, enum case for ISO18013SessionTranscript.digitalCredentialAPI(_:), v14);
  v24 = *(v10 + 16);
  v40 = v9;
  v24(v13, v44, v9);
  ISO18013ReaderAuthentication.init(sessionTranscript:itemsRequestBytes:)();
  v25 = *(v3 + *(type metadata accessor for WebPresentmentRequestAuthenticator() + 20));
  sub_100464910(&qword_100844BE8, &type metadata accessor for ISO18013ReaderAuthentication);
  sub_100464910(&qword_100841E18, &type metadata accessor for ISO18013ReaderAuthentication);
  v26 = v43;
  COSESignatureValidator.validateReaderAuth<A>(_:authenticationStructure:encoder:)();
  if (v26)
  {
    (*(v42 + 8))(v22, v19);
  }

  else
  {
    v43 = v19;
    v28 = v34;
    v27 = v35;
    defaultLogger()();
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "WebPresentmentRequestAuthenticator ReaderAuth successfully validated", v31, 2u);
    }

    (*(v28 + 8))(v27, v36);
    v32 = v37;
    CBOREncodedCBOR.value.getter();
    v3 = ISO18013ReaderRequest.ItemsRequest.docType.getter();
    (*(v38 + 8))(v32, v39);
    (*(v42 + 8))(v22, v43);
  }

  return v3;
}

uint64_t sub_100464910(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10046496C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for COSESignatureValidator();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100464A3C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for COSESignatureValidator();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_100464AF4()
{
  result = type metadata accessor for COSESignatureValidator();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for CBOREncoder();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_100464B78()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "WebPresentmentRequestReleaser priming for release", v9, 2u);
  }

  (*(v3 + 8))(v6, v2);
  v10 = *(v1 + 112);
  os_unfair_lock_lock((v10 + 20));
  *(v10 + 16) = 1;
  os_unfair_lock_unlock((v10 + 20));
}

void sub_100464CDC()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "WebPresentmentRequestReleaser reseting", v9, 2u);
  }

  (*(v3 + 8))(v6, v2);
  v10 = *(v1 + 112);
  os_unfair_lock_lock((v10 + 20));
  *(v10 + 16) = 0;
  os_unfair_lock_unlock((v10 + 20));
}

uint64_t sub_100464E34(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for DIPError.Code();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_100464EF4, v1, 0);
}

uint64_t sub_100464EF4()
{
  v1 = *(v0[3] + 112);
  os_unfair_lock_lock((v1 + 20));
  v2 = *(v1 + 16);
  os_unfair_lock_unlock((v1 + 20));
  if (v2 == 1)
  {
    v3 = v0[3];
    v4 = *(v3 + 128);
    v11 = (*(v3 + 120) + **(v3 + 120));
    v5 = *(*(v3 + 120) + 4);
    v6 = swift_task_alloc();
    v0[7] = v6;
    *v6 = v0;
    v6[1] = sub_100465138;
    v7 = v0[2];

    return v11(v7);
  }

  else
  {
    (*(v0[5] + 104))(v0[6], enum case for DIPError.Code.unexpectedDaemonState(_:), v0[4]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v9 = v0[6];

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_100465138()
{
  v1 = *v0;
  v2 = *(*v0 + 56);
  v6 = *v0;

  v3 = *(v1 + 48);

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_100465250()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 128);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1004652B4()
{
  v2 = *v0;
  *(v1 + 16) = *v0;
  return _swift_task_switch(sub_1004652D4, v2, 0);
}

uint64_t sub_1004652D4()
{
  v1 = *(v0 + 16);
  sub_100464B78();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100465364(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100027B9C;

  return sub_100464E34(a1);
}

uint64_t sub_100465400(uint64_t a1, uint64_t a2, uint64_t a3)
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
  v8 = type metadata accessor for DaemonAnalytics.WebPresentmentOutcomeTag();
  v4[21] = v8;
  v9 = *(v8 - 8);
  v4[22] = v9;
  v10 = *(v9 + 64) + 15;
  v4[23] = swift_task_alloc();
  v11 = type metadata accessor for IdentityDocumentElement();
  v4[24] = v11;
  v12 = *(v11 - 8);
  v4[25] = v12;
  v13 = *(v12 + 64) + 15;
  v4[26] = swift_task_alloc();
  v14 = type metadata accessor for ISO18013DCAPISessionTranscript();
  v4[27] = v14;
  v15 = *(v14 - 8);
  v4[28] = v15;
  v16 = *(v15 + 64) + 15;
  v4[29] = swift_task_alloc();
  v17 = type metadata accessor for COSEKey();
  v4[30] = v17;
  v18 = *(v17 - 8);
  v4[31] = v18;
  v19 = *(v18 + 64) + 15;
  v4[32] = swift_task_alloc();
  v20 = type metadata accessor for ISO18013RequestForwardingEncryptionInformation.Parameters();
  v4[33] = v20;
  v21 = *(v20 - 8);
  v4[34] = v21;
  v22 = *(v21 + 64) + 15;
  v4[35] = swift_task_alloc();
  v23 = type metadata accessor for ISO18013RequestForwardingEncryptionInformation();
  v4[36] = v23;
  v24 = *(v23 - 8);
  v4[37] = v24;
  v25 = *(v24 + 64) + 15;
  v4[38] = swift_task_alloc();
  v26 = sub_100007224(&qword_100844E40, &unk_1006E50D0);
  v4[39] = v26;
  v27 = *(v26 - 8);
  v4[40] = v27;
  v28 = *(v27 + 64) + 15;
  v4[41] = swift_task_alloc();
  v4[42] = swift_task_alloc();
  v29 = type metadata accessor for ISO18013RequestForwardingEncryptionInformation.DCAPIEncryptionParameters();
  v4[43] = v29;
  v30 = *(v29 - 8);
  v4[44] = v30;
  v31 = *(v30 + 64) + 15;
  v4[45] = swift_task_alloc();
  v32 = type metadata accessor for ISO18013RequestForwardingRequest();
  v4[46] = v32;
  v33 = *(v32 - 8);
  v4[47] = v33;
  v34 = *(v33 + 64) + 15;
  v4[48] = swift_task_alloc();
  v35 = type metadata accessor for WebPresentmentRequest();
  v4[49] = v35;
  v36 = *(v35 - 8);
  v4[50] = v36;
  v37 = *(v36 + 64) + 15;
  v4[51] = swift_task_alloc();
  v38 = type metadata accessor for Logger();
  v4[52] = v38;
  v39 = *(v38 - 8);
  v4[53] = v39;
  v40 = *(v39 + 64) + 15;
  v4[54] = swift_task_alloc();
  v41 = type metadata accessor for URL();
  v4[55] = v41;
  v42 = *(v41 - 8);
  v4[56] = v42;
  v43 = *(v42 + 64) + 15;
  v4[57] = swift_task_alloc();

  return _swift_task_switch(sub_10046592C, 0, 0);
}

uint64_t sub_10046592C()
{
  v2 = v0[56];
  v1 = v0[57];
  v3 = v0[55];
  v4 = v0[17] + OBJC_IVAR____TtC8coreidvd29WebPresentmentResponseBuilder_partialRequest;
  PartialWebPresentmentRequest.originatingURL.getter();
  v5 = URL.serializedOrigin.getter();
  v7 = v6;
  v0[58] = v5;
  v0[59] = v6;
  (*(v2 + 8))(v1, v3);
  if (v7)
  {
    v8 = v0[54];
    defaultLogger()();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "WebPresentmentResponseBuilder buildResponse invoked.", v11, 2u);
    }

    v13 = v0[53];
    v12 = v0[54];
    v14 = v0[52];
    v15 = v0[17];

    (*(v13 + 8))(v12, v14);
    v16 = v15[10];
    v17 = v15[11];
    sub_10000BA08(v15 + 7, v16);
    v18 = *(v17 + 8);
    v37 = (v18 + *v18);
    v19 = v18[1];
    v20 = swift_task_alloc();
    v0[60] = v20;
    *v20 = v0;
    v20[1] = sub_100465D48;

    return v37(v16, v17);
  }

  else
  {
    (*(v0[19] + 104))(v0[20], enum case for DIPError.Code.webPresentmentCouldNotSerializeOrigin(_:), v0[18]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10046CE04(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v22 = v0[57];
    v23 = v0[54];
    v24 = v0[51];
    v25 = v0[48];
    v26 = v0[45];
    v28 = v0[41];
    v27 = v0[42];
    v29 = v0[38];
    v30 = v0[35];
    v31 = v0[32];
    v33 = v0[29];
    v34 = v0[26];
    v35 = v0[23];
    v36 = v0[20];

    v32 = v0[1];

    return v32();
  }
}

uint64_t sub_100465D48()
{
  v2 = *(*v1 + 480);
  v5 = *v1;
  *(*v1 + 488) = v0;

  if (v0)
  {
    v3 = sub_1004689B8;
  }

  else
  {
    v3 = sub_100465E5C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100465E5C()
{
  v1 = v0[17];
  v2 = v1[10];
  v3 = v1[11];
  sub_10000BA08(v1 + 7, v2);
  v4 = *(v3 + 24);
  v9 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[62] = v6;
  *v6 = v0;
  v6[1] = sub_100465F8C;
  v7 = v0[51];

  return v9(v7, v2, v3);
}

uint64_t sub_100465F8C()
{
  v2 = *(*v1 + 496);
  v5 = *v1;
  *(*v1 + 504) = v0;

  if (v0)
  {
    v3 = sub_100468C70;
  }

  else
  {
    v3 = sub_1004660A0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1004660A0()
{
  v1 = *(v0 + 504);
  v2 = *(v0 + 408);
  v3 = *(v0 + 384);
  v4 = *(v0 + 368);
  v5 = type metadata accessor for JSONDecoder();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  v8 = WebPresentmentRequest.requestData.getter();
  v10 = v9;
  sub_10046CE04(&qword_100844E48, &type metadata accessor for ISO18013RequestForwardingRequest);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v1)
  {
    (*(*(v0 + 400) + 8))(*(v0 + 408), *(v0 + 392));
    sub_10000B90C(v8, v10);

LABEL_8:
    v53 = *(v0 + 464);
    v52 = *(v0 + 472);
    v55 = *(v0 + 176);
    v54 = *(v0 + 184);
    v56 = *(v0 + 160);
    v57 = *(v0 + 168);
    v58 = *(v0 + 152);
    v93 = *(v0 + 144);
    type metadata accessor for DaemonAnalytics();
    (*(v55 + 104))(v54, enum case for DaemonAnalytics.WebPresentmentOutcomeTag.failure(_:), v57);
    swift_errorRetain();
    static DaemonAnalytics.sendWebPresentmentOutcomeEvent(outcome:serializedOrigin:certificateChainCount:error:)();

    (*(v55 + 8))(v54, v57);
    (*(v58 + 104))(v56, enum case for DIPError.Code.internalError(_:), v93);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10046CE04(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v59 = *(v0 + 456);
    v60 = *(v0 + 432);
    v61 = *(v0 + 408);
    v62 = *(v0 + 384);
    v63 = *(v0 + 360);
    v65 = *(v0 + 328);
    v64 = *(v0 + 336);
    v66 = *(v0 + 304);
    v67 = *(v0 + 280);
    v68 = *(v0 + 256);
    v81 = *(v0 + 232);
    v85 = *(v0 + 208);
    v89 = *(v0 + 184);
    v94 = *(v0 + 160);

    v69 = *(v0 + 8);

    return v69();
  }

  v11 = *(v0 + 384);
  v12 = *(v0 + 336);
  v13 = *(v0 + 320);
  v15 = *(v0 + 296);
  v14 = *(v0 + 304);
  v79 = *(v0 + 312);
  v82 = *(v0 + 280);
  v16 = *(v0 + 272);
  v86 = *(v0 + 288);
  v90 = *(v0 + 264);
  sub_10000B90C(v8, v10);

  ISO18013RequestForwardingRequest.encryptionInfo.getter();
  Base64URLEncodedCBOR.value.getter();
  v17 = *(v13 + 8);
  v17(v12, v79);
  ISO18013RequestForwardingEncryptionInformation.parameters.getter();
  (*(v15 + 8))(v14, v86);
  if ((*(v16 + 88))(v82, v90) != enum case for ISO18013RequestForwardingEncryptionInformation.Parameters.dcapi(_:))
  {
    v32 = *(v0 + 400);
    v33 = *(v0 + 392);
    v88 = v33;
    v92 = *(v0 + 408);
    v84 = *(v0 + 384);
    v34 = *(v0 + 368);
    v35 = *(v0 + 376);
    v37 = *(v0 + 152);
    v36 = *(v0 + 160);
    v38 = *(v0 + 144);
    (*(*(v0 + 272) + 8))(*(v0 + 280), *(v0 + 264));
    (*(v37 + 104))(v36, enum case for DIPError.Code.webPresentmentUnknownEncryptionProtocol(_:), v38);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10046CE04(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    (*(v35 + 8))(v84, v34);
    (*(v32 + 8))(v92, v88);
    goto LABEL_8;
  }

  v19 = *(v0 + 352);
  v18 = *(v0 + 360);
  v20 = *(v0 + 344);
  v21 = *(v0 + 280);
  v22 = *(v0 + 256);
  v23 = *(v0 + 240);
  v24 = *(v0 + 248);
  (*(*(v0 + 272) + 96))(v21, *(v0 + 264));
  (*(v19 + 32))(v18, v21, v20);
  ISO18013RequestForwardingEncryptionInformation.DCAPIEncryptionParameters.recipientPublicKey.getter();
  v25 = COSEKey.publicKeyData.getter();
  v27 = v26;
  *(v0 + 512) = v25;
  *(v0 + 520) = v26;
  (*(v24 + 8))(v22, v23);
  if (v27 >> 60 == 15)
  {
    v28 = *(v0 + 400);
    v29 = *(v0 + 392);
    v87 = v29;
    v91 = *(v0 + 408);
    v30 = *(v0 + 376);
    v80 = *(v0 + 368);
    v83 = *(v0 + 384);
    v31 = *(v0 + 352);
    v77 = *(v0 + 344);
    v78 = *(v0 + 360);
    (*(*(v0 + 152) + 104))(*(v0 + 160), enum case for DIPError.Code.webPresentmentInvalidEncryptionInformation(_:), *(v0 + 144));
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10046CE04(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    (*(v31 + 8))(v78, v77);
    (*(v30 + 8))(v83, v80);
    (*(v28 + 8))(v91, v87);
    goto LABEL_8;
  }

  v40 = *(v0 + 464);
  v39 = *(v0 + 472);
  v41 = *(v0 + 384);
  v42 = *(v0 + 328);
  v43 = *(v0 + 312);
  v44 = *(v0 + 232);
  ISO18013RequestForwardingRequest.encryptionInfo.getter();
  Base64URLEncodedCBOR.stringValue.getter();
  v17(v42, v43);

  ISO18013DCAPISessionTranscript.init(encryptionInfoString:origin:)();
  v45 = *(v0 + 136);
  sub_100469280(*(v0 + 384), *(v0 + 128), *(v0 + 232));
  v46 = *(v0 + 232);
  v47 = *(v0 + 216);
  v48 = type metadata accessor for CBOREncoder();
  v49 = *(v48 + 48);
  v50 = *(v48 + 52);
  swift_allocObject();
  CBOREncoder.init()();
  sub_10046CE04(&qword_100844E50, &type metadata accessor for ISO18013DCAPISessionTranscript);
  *(v0 + 528) = dispatch thunk of CBOREncoder.encode<A>(_:)();
  *(v0 + 536) = v51;
  v71 = *(v0 + 136);

  v72 = *(v71 + OBJC_IVAR____TtC8coreidvd29WebPresentmentResponseBuilder_permissionsValidationTask);
  v73 = async function pointer to Task.value.getter[1];
  v74 = swift_task_alloc();
  *(v0 + 544) = v74;
  v75 = sub_100007224(&qword_10083B4C0, &qword_1006D98B8);
  v76 = sub_100007224(&qword_100833B90, &qword_1006D95C0);
  *v74 = v0;
  v74[1] = sub_100466B94;

  return Task.value.getter(v0 + 96, v72, v75, v76, &protocol self-conformance witness table for Error);
}

uint64_t sub_100466B94()
{
  v2 = *(*v1 + 544);
  v5 = *v1;
  *(*v1 + 552) = v0;

  if (v0)
  {
    v3 = sub_100468F28;
  }

  else
  {
    v3 = sub_100466CA8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100466CA8()
{
  v1 = v0[12];
  v0[70] = v1;
  if (*(v1 + 16))
  {
    v2 = v0[69];
    v3 = v0[67];
    v4 = v0[66];
    v5 = v0[65];
    v6 = v0[64];
    v7 = v0[25];
    v8 = v0[16];
    v80 = *v8;
    v0[71] = *v8;
    v9 = v8[1];
    v0[72] = v9;
    v109 = v0;
    v10 = objc_opt_self();
    v78 = v9;

    isa = Data._bridgeToObjectiveC()().super.isa;
    v12 = Data._bridgeToObjectiveC()().super.isa;
    v13 = v0;
    v77 = [v10 webProposalHPKEWithSessionTranscript:isa rawEncryptionKey:v12];

    v15 = sub_10046C3B4(v14);

    sub_100007224(&qword_100834970, &qword_1006DA7E0);
    result = static _DictionaryStorage.copy(original:)();
    v17 = result;
    v18 = 0;
    v19 = *(v15 + 64);
    v82 = v15 + 64;
    v20 = 1 << *(v15 + 32);
    v21 = -1;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    v22 = v21 & v19;
    v23 = (v20 + 63) >> 6;
    v90 = v7;
    v106 = (v7 + 8);
    v92 = result + 64;
    v86 = result;
    v88 = v15;
    v84 = v23;
    if ((v21 & v19) != 0)
    {
      while (1)
      {
        v24 = __clz(__rbit64(v22));
        v22 &= v22 - 1;
LABEL_11:
        v27 = v24 | (v18 << 6);
        v28 = (*(v15 + 48) + 16 * v27);
        v29 = *v28;
        v30 = *(*(v15 + 56) + 8 * v27);
        v31 = *(v30 + 16);
        if (v31)
        {
          v97 = *v28;
          v99 = v27;
          v102 = v22;
          v104 = v18;
          v95 = v28[1];

          sub_100172D4C(0, v31, 0);
          v32 = v30 + ((*(v90 + 80) + 32) & ~*(v90 + 80));
          v33 = *(v90 + 72);
          v34 = *(v90 + 16);
          do
          {
            v35 = v13[26];
            v36 = v13[24];
            v34(v35, v32, v36);
            v37 = IdentityDocumentElement.identifier.getter();
            v39 = v38;
            (*v106)(v35, v36);
            v41 = _swiftEmptyArrayStorage[2];
            v40 = _swiftEmptyArrayStorage[3];
            if (v41 >= v40 >> 1)
            {
              sub_100172D4C((v40 > 1), v41 + 1, 1);
            }

            _swiftEmptyArrayStorage[2] = v41 + 1;
            v42 = &_swiftEmptyArrayStorage[2 * v41];
            v42[4] = v37;
            v42[5] = v39;
            v32 += v33;
            --v31;
            v13 = v109;
          }

          while (v31);

          v17 = v86;
          v15 = v88;
          v18 = v104;
          v23 = v84;
          v27 = v99;
          v22 = v102;
          result = v95;
          v29 = v97;
        }

        else
        {
        }

        *(v92 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
        v43 = (v17[6] + 16 * v27);
        *v43 = v29;
        v43[1] = result;
        *(v17[7] + 8 * v27) = _swiftEmptyArrayStorage;
        v44 = v17[2];
        v45 = __OFADD__(v44, 1);
        v46 = v44 + 1;
        if (v45)
        {
          break;
        }

        v17[2] = v46;
        if (!v22)
        {
          goto LABEL_6;
        }
      }

LABEL_28:
      __break(1u);
    }

    else
    {
LABEL_6:
      v25 = v18;
      while (1)
      {
        v18 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          __break(1u);
          goto LABEL_28;
        }

        if (v18 >= v23)
        {
          break;
        }

        v26 = *(v82 + 8 * v18);
        ++v25;
        if (v26)
        {
          v24 = __clz(__rbit64(v26));
          v22 = (v26 - 1) & v26;
          goto LABEL_11;
        }
      }

      v47 = v13[17];
      v48 = v13[14];
      v49 = v13[15];

      v13[2] = v80;
      v13[3] = v78;
      v13[4] = v48;
      v13[5] = v49;
      v13[6] = v77;
      v13[7] = v17;
      v50 = *sub_10000BA08((v47 + 16), *(v47 + 40));
      sub_10000B8B8(v48, v49);
      v51 = swift_task_alloc();
      v13[73] = v51;
      *v51 = v13;
      v51[1] = sub_1004674B4;

      return sub_10015F8B0((v13 + 2));
    }
  }

  else
  {
    v83 = v0[66];
    v85 = v0[67];
    v87 = v0[64];
    v89 = v0[65];
    v52 = v0[50];
    v98 = v0[49];
    v100 = v0[51];
    v53 = v0[47];
    v94 = v0[46];
    v96 = v0[48];
    v54 = v0[44];
    v91 = v0[43];
    v93 = v0[45];
    v55 = v0[28];
    v79 = v0[27];
    v81 = v0[29];
    v57 = v0[19];
    v56 = v0[20];
    v58 = v0[18];

    (*(v57 + 104))(v56, enum case for DIPError.Code.webPresentmentMissingRequiredRequestElementPermission(_:), v58);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10046CE04(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_10000B90C(v83, v85);
    sub_10000BD94(v87, v89);
    (*(v55 + 8))(v81, v79);
    (*(v54 + 8))(v93, v91);
    (*(v53 + 8))(v96, v94);
    (*(v52 + 8))(v100, v98);
    v60 = v0[58];
    v59 = v0[59];
    v61 = v0[22];
    v62 = v0[23];
    v64 = v0[20];
    v63 = v0[21];
    v65 = v0[19];
    v101 = v0[18];
    type metadata accessor for DaemonAnalytics();
    (*(v61 + 104))(v62, enum case for DaemonAnalytics.WebPresentmentOutcomeTag.failure(_:), v63);
    swift_errorRetain();
    static DaemonAnalytics.sendWebPresentmentOutcomeEvent(outcome:serializedOrigin:certificateChainCount:error:)();

    (*(v61 + 8))(v62, v63);
    (*(v65 + 104))(v64, enum case for DIPError.Code.internalError(_:), v101);
    sub_1000402AC(_swiftEmptyArrayStorage);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v66 = v0[57];
    v67 = v0[54];
    v68 = v0[51];
    v69 = v0[48];
    v70 = v0[45];
    v72 = v0[41];
    v71 = v0[42];
    v73 = v0[38];
    v74 = v0[35];
    v75 = v0[32];
    v103 = v0[29];
    v105 = v0[26];
    v107 = v0[23];
    v108 = v0[20];

    v76 = v0[1];

    return v76();
  }

  return result;
}

uint64_t sub_1004674B4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 584);
  v8 = *v2;
  v3[74] = a1;
  v3[75] = v1;

  if (v1)
  {
    v5 = v3[70];

    v6 = sub_100467CF4;
  }

  else
  {
    v6 = sub_1004675D4;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1004675D4()
{
  v1 = *(v0 + 128);
  v2 = (v1 + *(type metadata accessor for DigitalPresentmentEligibleProposalData() + 24));
  v3 = v2[3];
  v4 = v2[4];
  sub_10000BA08(v2, v3);
  v5 = *(v4 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v0 + 608) = v7;
  *v7 = v0;
  v7[1] = sub_100467708;

  return v9(v3, v4);
}

uint64_t sub_100467708(char a1)
{
  v2 = *(*v1 + 608);
  v4 = *v1;
  *(*v1 + 648) = a1;

  return _swift_task_switch(sub_100467808, 0, 0);
}

uint64_t sub_100467808()
{
  if (*(v0 + 648) == 1)
  {
    v1 = *(*(v0 + 136) + OBJC_IVAR____TtC8coreidvd29WebPresentmentResponseBuilder_transactionHistorySaveTask);
    v2 = async function pointer to Task<>.value.getter[1];
    v3 = swift_task_alloc();
    *(v0 + 616) = v3;
    v4 = sub_100007224(&qword_100843250, &qword_1006E0DF0);
    *v3 = v0;
    v3[1] = sub_100468054;

    return Task<>.value.getter(v0 + 64, v1, v4);
  }

  else
  {
    v5 = *(v0 + 560);
    v32 = *(v0 + 528);
    v33 = *(v0 + 536);
    v34 = *(v0 + 512);
    v35 = *(v0 + 520);
    v6 = *(v0 + 400);
    v43 = *(v0 + 392);
    v44 = *(v0 + 408);
    v42 = *(v0 + 384);
    v7 = *(v0 + 376);
    v40 = *(v0 + 592);
    v41 = *(v0 + 368);
    v8 = *(v0 + 352);
    v38 = *(v0 + 344);
    v39 = *(v0 + 360);
    v9 = *(v0 + 224);
    v36 = *(v0 + 216);
    v37 = *(v0 + 232);
    v11 = *(v0 + 152);
    v10 = *(v0 + 160);
    v12 = *(v0 + 144);

    (*(v11 + 104))(v10, enum case for DIPError.Code.digitalPresentmentInvalidCredential(_:), v12);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10046CE04(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_10000B90C(v32, v33);
    sub_10000BD94(v34, v35);
    sub_10014B4A8(v0 + 16);

    (*(v9 + 8))(v37, v36);
    (*(v8 + 8))(v39, v38);
    (*(v7 + 8))(v42, v41);
    (*(v6 + 8))(v44, v43);
    v14 = *(v0 + 464);
    v13 = *(v0 + 472);
    v15 = *(v0 + 176);
    v16 = *(v0 + 184);
    v18 = *(v0 + 160);
    v17 = *(v0 + 168);
    v19 = *(v0 + 152);
    v45 = *(v0 + 144);
    type metadata accessor for DaemonAnalytics();
    (*(v15 + 104))(v16, enum case for DaemonAnalytics.WebPresentmentOutcomeTag.failure(_:), v17);
    swift_errorRetain();
    static DaemonAnalytics.sendWebPresentmentOutcomeEvent(outcome:serializedOrigin:certificateChainCount:error:)();

    (*(v15 + 8))(v16, v17);
    (*(v19 + 104))(v18, enum case for DIPError.Code.internalError(_:), v45);
    sub_1000402AC(_swiftEmptyArrayStorage);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v20 = *(v0 + 456);
    v21 = *(v0 + 432);
    v22 = *(v0 + 408);
    v23 = *(v0 + 384);
    v24 = *(v0 + 360);
    v26 = *(v0 + 328);
    v25 = *(v0 + 336);
    v27 = *(v0 + 304);
    v28 = *(v0 + 280);
    v29 = *(v0 + 256);
    v46 = *(v0 + 232);
    v47 = *(v0 + 208);
    v48 = *(v0 + 184);
    v49 = *(v0 + 160);

    v30 = *(v0 + 8);

    return v30();
  }
}

uint64_t sub_100467CF4()
{
  v1 = v0[65];
  v2 = v0[64];
  v3 = v0[50];
  v36 = v0[49];
  v38 = v0[51];
  v4 = v0[47];
  v32 = v0[46];
  v34 = v0[48];
  v5 = v0[44];
  v30 = v0[45];
  v6 = v0[43];
  v7 = v0[28];
  v8 = v0[29];
  v9 = v0[27];
  sub_10000B90C(v0[66], v0[67]);
  sub_10000BD94(v2, v1);
  sub_10014B4A8((v0 + 2));
  (*(v7 + 8))(v8, v9);
  (*(v5 + 8))(v30, v6);
  (*(v4 + 8))(v34, v32);
  (*(v3 + 8))(v38, v36);
  v10 = v0[75];
  v11 = v0[58];
  v12 = v0[59];
  v13 = v0[22];
  v14 = v0[23];
  v16 = v0[20];
  v15 = v0[21];
  v17 = v0[19];
  v39 = v0[18];
  type metadata accessor for DaemonAnalytics();
  (*(v13 + 104))(v14, enum case for DaemonAnalytics.WebPresentmentOutcomeTag.failure(_:), v15);
  swift_errorRetain();
  static DaemonAnalytics.sendWebPresentmentOutcomeEvent(outcome:serializedOrigin:certificateChainCount:error:)();

  (*(v13 + 8))(v14, v15);
  (*(v17 + 104))(v16, enum case for DIPError.Code.internalError(_:), v39);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10046CE04(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v18 = v0[57];
  v19 = v0[54];
  v20 = v0[51];
  v21 = v0[48];
  v22 = v0[45];
  v24 = v0[41];
  v23 = v0[42];
  v25 = v0[38];
  v26 = v0[35];
  v27 = v0[32];
  v31 = v0[29];
  v33 = v0[26];
  v35 = v0[23];
  v37 = v0[20];

  v28 = v0[1];

  return v28();
}

uint64_t sub_100468054()
{
  v1 = *v0;
  v2 = *(*v0 + 616);
  v3 = *(*v0 + 576);
  v4 = *(*v0 + 568);
  v5 = *(*v0 + 560);
  v11 = *v0;

  v1[10] = v4;
  v1 += 10;
  v6 = *(v1 - 2);
  v1[68] = *(v1 - 1);
  v1[1] = v3;
  v1[3] = v5;
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  v1[69] = v8;
  *v8 = v11;
  v8[1] = sub_10046823C;

  return v10();
}

uint64_t sub_10046823C()
{
  v2 = *v1;
  v3 = *(*v1 + 632);
  v4 = *v1;
  *(*v1 + 640) = v0;

  v5 = *(v2 + 624);
  v6 = *(v2 + 560);

  if (v0)
  {
    v7 = sub_100468648;
  }

  else
  {
    v7 = sub_10046838C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10046838C()
{
  v13 = v0[74];
  v16 = v0[66];
  v17 = v0[67];
  v18 = v0[64];
  v19 = v0[65];
  v2 = v0[58];
  v1 = v0[59];
  v27 = v0[57];
  v28 = v0[54];
  v3 = v0[48];
  v25 = v0[49];
  v26 = v0[51];
  v23 = v0[46];
  v24 = v0[50];
  v4 = v0[44];
  v21 = v0[45];
  v22 = v0[47];
  v20 = v0[43];
  v29 = v0[42];
  v30 = v0[41];
  v31 = v0[38];
  v32 = v0[35];
  v33 = v0[32];
  v5 = v0[28];
  v14 = v0[27];
  v15 = v0[29];
  v7 = v0[22];
  v6 = v0[23];
  v8 = v0[21];
  v34 = v0[26];
  v35 = v0[20];
  type metadata accessor for DaemonAnalytics();
  (*(v7 + 104))(v6, enum case for DaemonAnalytics.WebPresentmentOutcomeTag.success(_:), v8);
  sub_10046C728(v3);
  static DaemonAnalytics.sendWebPresentmentOutcomeEvent(outcome:serializedOrigin:certificateChainCount:error:)();

  (*(v7 + 8))(v6, v8);
  type metadata accessor for DigitalPresentmentResponse();
  v9 = [v13 responseData];
  static Data._unconditionallyBridgeFromObjectiveC(_:)();

  v10 = dispatch thunk of DigitalPresentmentResponse.__allocating_init(encryptedData:)();
  sub_10000B90C(v16, v17);
  sub_10000BD94(v18, v19);
  sub_10014B4A8((v0 + 2));

  (*(v5 + 8))(v15, v14);
  (*(v4 + 8))(v21, v20);
  (*(v22 + 8))(v3, v23);
  (*(v24 + 8))(v26, v25);

  v11 = v0[1];

  return v11(v10);
}

uint64_t sub_100468648()
{
  v1 = v0[65];
  v2 = v0[64];
  v3 = v0[50];
  v37 = v0[49];
  v39 = v0[51];
  v35 = v0[48];
  v4 = v0[47];
  v33 = v0[46];
  v5 = v0[44];
  v30 = v0[74];
  v31 = v0[45];
  v6 = v0[43];
  v7 = v0[28];
  v8 = v0[29];
  v9 = v0[27];
  sub_10000B90C(v0[66], v0[67]);
  sub_10000BD94(v2, v1);
  sub_10014B4A8((v0 + 2));

  (*(v7 + 8))(v8, v9);
  (*(v5 + 8))(v31, v6);
  (*(v4 + 8))(v35, v33);
  (*(v3 + 8))(v39, v37);
  v10 = v0[80];
  v11 = v0[58];
  v12 = v0[59];
  v13 = v0[22];
  v14 = v0[23];
  v16 = v0[20];
  v15 = v0[21];
  v17 = v0[19];
  v40 = v0[18];
  type metadata accessor for DaemonAnalytics();
  (*(v13 + 104))(v14, enum case for DaemonAnalytics.WebPresentmentOutcomeTag.failure(_:), v15);
  swift_errorRetain();
  static DaemonAnalytics.sendWebPresentmentOutcomeEvent(outcome:serializedOrigin:certificateChainCount:error:)();

  (*(v13 + 8))(v14, v15);
  (*(v17 + 104))(v16, enum case for DIPError.Code.internalError(_:), v40);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10046CE04(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v18 = v0[57];
  v19 = v0[54];
  v20 = v0[51];
  v21 = v0[48];
  v22 = v0[45];
  v24 = v0[41];
  v23 = v0[42];
  v25 = v0[38];
  v26 = v0[35];
  v27 = v0[32];
  v32 = v0[29];
  v34 = v0[26];
  v36 = v0[23];
  v38 = v0[20];

  v28 = v0[1];

  return v28();
}

uint64_t sub_1004689B8()
{
  v1 = v0[61];
  v2 = v0[58];
  v3 = v0[59];
  v4 = v0[22];
  v5 = v0[23];
  v7 = v0[20];
  v6 = v0[21];
  v8 = v0[19];
  v25 = v0[18];
  type metadata accessor for DaemonAnalytics();
  (*(v4 + 104))(v5, enum case for DaemonAnalytics.WebPresentmentOutcomeTag.failure(_:), v6);
  swift_errorRetain();
  static DaemonAnalytics.sendWebPresentmentOutcomeEvent(outcome:serializedOrigin:certificateChainCount:error:)();

  (*(v4 + 8))(v5, v6);
  (*(v8 + 104))(v7, enum case for DIPError.Code.internalError(_:), v25);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10046CE04(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v9 = v0[57];
  v10 = v0[54];
  v11 = v0[51];
  v12 = v0[48];
  v13 = v0[45];
  v15 = v0[41];
  v14 = v0[42];
  v16 = v0[38];
  v17 = v0[35];
  v18 = v0[32];
  v21 = v0[29];
  v22 = v0[26];
  v23 = v0[23];
  v24 = v0[20];

  v19 = v0[1];

  return v19();
}

uint64_t sub_100468C70()
{
  v1 = v0[63];
  v2 = v0[58];
  v3 = v0[59];
  v4 = v0[22];
  v5 = v0[23];
  v7 = v0[20];
  v6 = v0[21];
  v8 = v0[19];
  v25 = v0[18];
  type metadata accessor for DaemonAnalytics();
  (*(v4 + 104))(v5, enum case for DaemonAnalytics.WebPresentmentOutcomeTag.failure(_:), v6);
  swift_errorRetain();
  static DaemonAnalytics.sendWebPresentmentOutcomeEvent(outcome:serializedOrigin:certificateChainCount:error:)();

  (*(v4 + 8))(v5, v6);
  (*(v8 + 104))(v7, enum case for DIPError.Code.internalError(_:), v25);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10046CE04(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v9 = v0[57];
  v10 = v0[54];
  v11 = v0[51];
  v12 = v0[48];
  v13 = v0[45];
  v15 = v0[41];
  v14 = v0[42];
  v16 = v0[38];
  v17 = v0[35];
  v18 = v0[32];
  v21 = v0[29];
  v22 = v0[26];
  v23 = v0[23];
  v24 = v0[20];

  v19 = v0[1];

  return v19();
}

uint64_t sub_100468F28()
{
  v1 = v0[65];
  v2 = v0[64];
  v3 = v0[50];
  v36 = v0[49];
  v38 = v0[51];
  v4 = v0[47];
  v32 = v0[46];
  v34 = v0[48];
  v5 = v0[44];
  v30 = v0[45];
  v6 = v0[43];
  v7 = v0[28];
  v8 = v0[29];
  v9 = v0[27];
  sub_10000B90C(v0[66], v0[67]);
  sub_10000BD94(v2, v1);
  (*(v7 + 8))(v8, v9);
  (*(v5 + 8))(v30, v6);
  (*(v4 + 8))(v34, v32);
  (*(v3 + 8))(v38, v36);
  v10 = v0[69];
  v11 = v0[58];
  v12 = v0[59];
  v13 = v0[22];
  v14 = v0[23];
  v16 = v0[20];
  v15 = v0[21];
  v17 = v0[19];
  v39 = v0[18];
  type metadata accessor for DaemonAnalytics();
  (*(v13 + 104))(v14, enum case for DaemonAnalytics.WebPresentmentOutcomeTag.failure(_:), v15);
  swift_errorRetain();
  static DaemonAnalytics.sendWebPresentmentOutcomeEvent(outcome:serializedOrigin:certificateChainCount:error:)();

  (*(v13 + 8))(v14, v15);
  (*(v17 + 104))(v16, enum case for DIPError.Code.internalError(_:), v39);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10046CE04(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v18 = v0[57];
  v19 = v0[54];
  v20 = v0[51];
  v21 = v0[48];
  v22 = v0[45];
  v24 = v0[41];
  v23 = v0[42];
  v25 = v0[38];
  v26 = v0[35];
  v27 = v0[32];
  v31 = v0[29];
  v33 = v0[26];
  v35 = v0[23];
  v37 = v0[20];

  v28 = v0[1];

  return v28();
}

uint64_t sub_100469280(uint64_t a1, NSObject *a2, void (*a3)(char *, void (**)(char *, uint64_t), uint64_t))
{
  v126 = a3;
  v137 = a1;
  v142 = type metadata accessor for Logger();
  v136 = *(v142 - 8);
  v5 = *(v136 + 64);
  v6 = __chkstk_darwin(v142);
  v127 = &v109 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v131 = &v109 - v9;
  __chkstk_darwin(v8);
  v120 = &v109 - v10;
  v11 = type metadata accessor for DIPError.Code();
  v133 = *(v11 - 8);
  v134 = v11;
  v12 = *(v133 + 64);
  __chkstk_darwin(v11);
  v135 = &v109 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = sub_100007224(&qword_100844E60, &qword_1006E50F0);
  v14 = *(*(v141 - 8) + 64);
  v15 = __chkstk_darwin(v141);
  v138 = &v109 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v140 = &v109 - v17;
  v139 = sub_100007224(&qword_100844E68, &unk_1006E50F8);
  v18 = *(*(v139 - 8) + 64);
  v19 = __chkstk_darwin(v139);
  v129 = &v109 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v132 = &v109 - v21;
  v143 = type metadata accessor for ISO18013Version();
  v146 = *(v143 - 8);
  v22 = *(v146 + 64);
  v23 = __chkstk_darwin(v143);
  v145 = &v109 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v144 = &v109 - v26;
  __chkstk_darwin(v25);
  v28 = &v109 - v27;
  v29 = type metadata accessor for ISO18013ReaderRequest();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  v32 = __chkstk_darwin(v29);
  v122 = (&v109 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = __chkstk_darwin(v32);
  v124 = (&v109 - v35);
  __chkstk_darwin(v34);
  v37 = &v109 - v36;
  v38 = sub_100007224(&qword_100844E58, &unk_1006E50E0);
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  v41 = __chkstk_darwin(v38);
  v121 = &v109 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __chkstk_darwin(v41);
  v123 = &v109 - v44;
  __chkstk_darwin(v43);
  v46 = &v109 - v45;
  v47 = *(type metadata accessor for DigitalPresentmentSessionManager.Proposal() + 52);
  v125 = a2;
  v48 = (a2 + v47);
  v49 = v48[1];
  if (v49 >> 60 == 15)
  {
    if (*(*sub_10000BA08((v3 + 16), *(v3 + 40)) + 16) == 1)
    {
      v50 = v131;
      defaultLogger()();
      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.debug.getter();
      v53 = os_log_type_enabled(v51, v52);
      v54 = v142;
      if (v53)
      {
        v55 = swift_slowAlloc();
        *v55 = 0;
        _os_log_impl(&_mh_execute_header, v51, v52, "Bypassing consistency checks due to developer test mode being disabled", v55, 2u);
      }

      v56 = v136;
      return (*(v56 + 8))(v50, v54);
    }

    (*(v133 + 104))(v135, enum case for DIPError.Code.webPresentmentTrustedAuthenticationCertificateMissing(_:), v134);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10046CE04(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v54 = v142;
    goto LABEL_22;
  }

  v115 = v3;
  v118 = *v48;
  sub_10000B8B8(v118, v49);
  ISO18013RequestForwardingRequest.deviceRequest.getter();
  Base64URLEncodedCBOR.value.getter();
  v58 = *(v39 + 8);
  v57 = v39 + 8;
  v114 = v58;
  v58(v46, v38);
  ISO18013ReaderRequest.version.getter();
  v61 = *(v30 + 8);
  v60 = v30 + 8;
  v59 = v61;
  v61(v37, v29);
  static ISO18013ReaderRequest.supportedVersion.getter();
  static ISO18013ReaderRequest.supportedVersionSecondEdition.getter();
  v128 = sub_10046CE04(&qword_100844E70, &type metadata accessor for ISO18013Version);
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v111 = v59;
    v109 = v57;
    v110 = v38;
    v112 = v60;
    v113 = v29;
    v119 = v49;
    v63 = v146;
    v131 = v28;
    v64 = v143;
    v66 = v146 + 32;
    v65 = *(v146 + 32);
    v67 = v140;
    v65(v140, v144, v143);
    v68 = v141;
    v65((v67 + *(v141 + 48)), v145, v64);
    v69 = v138;
    sub_10046CE4C(v67, v138);
    v117 = *(v68 + 48);
    v70 = v132;
    v65(v132, v69, v64);
    v71 = *(v63 + 8);
    v71(v117 + v69, v64);
    sub_10046CEBC(v67, v69);
    v72 = v70 + *(v139 + 36);
    v73 = v69 + *(v68 + 48);
    v116 = v66;
    v65(v72, v73, v64);
    v117 = v71;
    v146 = v63 + 8;
    v71(v69, v64);
    if (dispatch thunk of static Comparable.<= infix(_:_:)())
    {
      v74 = dispatch thunk of static Comparable.< infix(_:_:)();
      sub_10000BE18(v70, &qword_100844E68, &unk_1006E50F8);
      if (v74)
      {
        v117(v131, v64);
        v75 = v123;
        ISO18013RequestForwardingRequest.deviceRequest.getter();
        v76 = v124;
        v77 = v110;
        Base64URLEncodedCBOR.value.getter();
        v114(v75, v77);
        v78 = v118;
        v79 = v119;
        v80 = v130;
        sub_10046A2A8(v118, v119, v76, v125, v126);
        v54 = v142;
        if (v80)
        {
LABEL_10:
          v111(v76, v113);
          sub_10000BD94(v78, v79);
LABEL_22:
          v100 = [objc_opt_self() standardUserDefaults];
          static DaemonInternalDefaultsKeys.WebPresentment.disableFirstPartyRequestConsistencyCheck.getter();
          v101 = String._bridgeToObjectiveC()();

          v102 = [v100 BOOLForKey:v101];

          if (!v102)
          {
            return swift_willThrow();
          }

          v50 = v127;
          defaultLogger()();
          swift_errorRetain();
          v103 = Logger.logObject.getter();
          v104 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v103, v104))
          {
            v105 = v50;
            v106 = swift_slowAlloc();
            v107 = swift_slowAlloc();
            *v106 = 138412290;
            swift_errorRetain();
            v108 = _swift_stdlib_bridgeErrorToNSError();
            *(v106 + 4) = v108;
            *v107 = v108;
            _os_log_impl(&_mh_execute_header, v103, v104, "Disable first party request consistency check flag is enabled. Ignoring the error that occurred during consistency check: %@", v106, 0xCu);
            sub_10000BE18(v107, &unk_100833B50, &unk_1006D8FB0);

            v50 = v105;
          }

          else
          {
          }

          goto LABEL_27;
        }

LABEL_17:
        v111(v76, v113);
        v50 = v120;
        defaultLogger()();
        v97 = Logger.logObject.getter();
        v98 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v97, v98))
        {
          v99 = swift_slowAlloc();
          *v99 = 0;
          _os_log_impl(&_mh_execute_header, v97, v98, "Successfully validated consistency of incoming ISO request against the previously received partial request", v99, 2u);
        }

        sub_10000BD94(v78, v119);

LABEL_27:
        v56 = v136;
        return (*(v56 + 8))(v50, v54);
      }
    }

    else
    {
      sub_10000BE18(v70, &qword_100844E68, &unk_1006E50F8);
    }

    v81 = v144;
    static ISO18013ReaderRequest.supportedVersionSecondEdition.getter();
    v82 = v145;
    static ISO18013ReaderRequest.nextMajorUnsupportedVersion.getter();
    result = dispatch thunk of static Comparable.<= infix(_:_:)();
    if (result)
    {
      v83 = v140;
      v65(v140, v81, v64);
      v84 = v141;
      v65((v83 + *(v141 + 48)), v82, v64);
      v85 = v138;
      sub_10046CE4C(v83, v138);
      v86 = *(v84 + 48);
      v87 = v129;
      v65(v129, v85, v64);
      v88 = (v85 + v86);
      v89 = v117;
      v117(v88, v64);
      sub_10046CEBC(v83, v85);
      v65((v87 + *(v139 + 36)), (v85 + *(v84 + 48)), v64);
      v90 = v64;
      v91 = v89;
      v89(v85, v90);
      v92 = v131;
      if (dispatch thunk of static Comparable.<= infix(_:_:)())
      {
        v93 = dispatch thunk of static Comparable.< infix(_:_:)();
        sub_10000BE18(v87, &qword_100844E68, &unk_1006E50F8);
        v91(v92, v90);
        v54 = v142;
        if (v93)
        {
          v94 = v121;
          ISO18013RequestForwardingRequest.deviceRequest.getter();
          v76 = v122;
          v95 = v110;
          Base64URLEncodedCBOR.value.getter();
          v114(v94, v95);
          v78 = v118;
          v79 = v119;
          v96 = v130;
          sub_10046AA34(v118, v119, v76, v125, v126);
          if (v96)
          {
            goto LABEL_10;
          }

          goto LABEL_17;
        }
      }

      else
      {
        sub_10000BE18(v87, &qword_100844E68, &unk_1006E50F8);
        v89(v92, v90);
        v54 = v142;
      }

      (*(v133 + 104))(v135, enum case for DIPError.Code.webPresentmentUnknownDeviceRequestVersion(_:), v134);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10046CE04(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      sub_10000BD94(v118, v119);
      goto LABEL_22;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10046A2A8(uint64_t a1, unint64_t a2, void (**a3)(char *, uint64_t), uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v53 = a4;
  v55 = a1;
  v57 = type metadata accessor for DIPError.Code();
  v10 = *(v57 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v57);
  v59 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DigitalPresentmentEligibleProposalData();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v51 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for Logger();
  v16 = *(v56 - 1);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v56);
  v52 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v50 - v20;
  defaultLogger()();
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v50 = a3;
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v22, v23, "Validating consistency of a first edition request", v24, 2u);
    v6 = v5;
    a3 = v50;
  }

  v25 = *(v16 + 8);
  v26 = v56;
  v25(v21, v56);
  sub_10000BA08((v54 + OBJC_IVAR____TtC8coreidvd29WebPresentmentResponseBuilder_requestAuthenticator), *(v54 + OBJC_IVAR____TtC8coreidvd29WebPresentmentResponseBuilder_requestAuthenticator + 24));
  v27 = sub_100462304(a3, v55, a2, a5);
  if (v6)
  {
    (*(v10 + 104))(v59, enum case for DIPError.Code.internalError(_:), v57);
  }

  else
  {
    if (v27)
    {
      v55 = &v50;
      v28 = v53;
      v29 = *(v53 + 72);
      v58[0] = *(v53 + 64);
      v58[1] = v29;
      v30 = __chkstk_darwin(v27);
      v49 = v58;
      v31 = sub_10035C8E4(sub_1000307C0, &v47, v30);

      if (v31)
      {
        return result;
      }

      v33 = v52;
      defaultLogger()();
      v34 = v51;
      sub_1001774B0(v28, v51);
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v55 = v37;
        v38 = v34;
        v39 = swift_slowAlloc();
        v58[0] = v39;
        *v37 = 136315138;
        v40 = *(v38 + 64);
        v41 = *(v38 + 72);

        sub_100177514(v38);
        v42 = sub_100141FE4(v40, v41, v58);

        v43 = v55;
        *(v55 + 4) = v42;
        _os_log_impl(&_mh_execute_header, v35, v36, "Selected proposal contains document type %s, but there is no individual document request that has been authenticated.", v43, 0xCu);
        sub_10000BB78(v39);

        v44 = v52;
        v45 = v56;
      }

      else
      {

        sub_100177514(v34);
        v44 = v33;
        v45 = v26;
      }

      v25(v44, v45);
      v56 = "uest authentications";
      v46 = *(v10 + 104);
      v46(v59, enum case for DIPError.Code.webPresentmentRequestNotAuthenticated(_:), v57);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10046CE04(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      v48 = 0x8000000100717AE0;
      v49 = 261;
      v47 = 0xD000000000000074;
    }

    else
    {
      v56 = ":sessionTranscript:)";
      v46 = *(v10 + 104);
      v46(v59, enum case for DIPError.Code.webPresentmentFirstEditionRequestCannotBeAuthenticatedViaAll(_:), v57);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10046CE04(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      v48 = 0x8000000100717AE0;
      v49 = 256;
      v47 = 0xD000000000000074;
    }

    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v46(v59, enum case for DIPError.Code.internalError(_:), v57);
  }

  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10046CE04(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  v48 = 0x8000000100717AE0;
  v49 = 264;
  v47 = 0xD000000000000074;
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
}

uint64_t sub_10046AA34(uint64_t a1, unint64_t a2, void (**a3)(char *, uint64_t), NSObject *a4, void (*a5)(char *, void (**)(char *, uint64_t), uint64_t))
{
  v126 = a2;
  v127 = a5;
  v119 = a4;
  v131 = a3;
  v125 = a1;
  v5 = type metadata accessor for DigitalPresentmentEligibleProposalData();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v117 = &v105 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = type metadata accessor for DIPError.Code();
  v123 = *(v133 - 8);
  v8 = *(v123 + 64);
  __chkstk_darwin(v133);
  v124 = &v105 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = type metadata accessor for ISO18013ReaderRequest();
  v108 = *(v112 - 8);
  v10 = *(v108 + 64);
  v11 = __chkstk_darwin(v112);
  v107 = &v105 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v111 = &v105 - v13;
  v14 = type metadata accessor for ISO18013ReaderRequest.DeviceRequestInfo();
  v114 = *(v14 - 8);
  v115 = v14;
  v15 = *(v114 + 64);
  __chkstk_darwin(v14);
  v113 = &v105 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100007224(&qword_100841DF8, &qword_1006DEC50);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v118 = &v105 - v19;
  v20 = type metadata accessor for PartialWebPresentmentDocumentRequest();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = &v105 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for PartialWebPresentmentMobileDocumentRequest();
  v120 = *(v25 - 8);
  v121 = v25;
  v26 = *(v120 + 64);
  v27 = __chkstk_darwin(v25);
  v106 = &v105 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v27);
  v109 = &v105 - v30;
  __chkstk_darwin(v29);
  v122 = &v105 - v31;
  v130 = type metadata accessor for Logger();
  v32 = *(v130 - 8);
  v33 = *(v32 + 64);
  v34 = __chkstk_darwin(v130);
  v116 = &v105 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __chkstk_darwin(v34);
  v110 = &v105 - v37;
  __chkstk_darwin(v36);
  v39 = &v105 - v38;
  defaultLogger()();
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&_mh_execute_header, v40, v41, "Validating consistency of a second edition request", v42, 2u);
  }

  v43 = *(v32 + 8);
  v43(v39, v130);
  sub_10000BA08((v129 + OBJC_IVAR____TtC8coreidvd29WebPresentmentResponseBuilder_requestAuthenticator), *(v129 + OBJC_IVAR____TtC8coreidvd29WebPresentmentResponseBuilder_requestAuthenticator + 24));
  v44 = v128;
  v45 = sub_100462304(v131, v125, v126, v127);
  if (!v44)
  {
    v128 = v45;
    PartialWebPresentmentRequest.documentRequest.getter();
    if ((*(v21 + 88))(v24, v20) != enum case for PartialWebPresentmentDocumentRequest.iso18013MobileDocument(_:))
    {

      (*(v21 + 8))(v24, v20);
      v53 = v124;
      v54 = *(v123 + 104);
      v54(v124, enum case for DIPError.Code.webPresentmentUnknownPresentmentProtocol(_:), v133);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10046CE04(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      v103 = 0x8000000100717C10;
      v104 = 290;
      v102 = 0xD000000000000075;
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      v54(v53, enum case for DIPError.Code.internalError(_:), v133);
      goto LABEL_23;
    }

    v129 = v43;
    (*(v21 + 96))(v24, v20);
    v46 = v120;
    v47 = v121;
    v48 = (*(v120 + 32))(v122, v24, v121);
    v49 = v128;
    if (v128)
    {
      v50 = v119;
      isa = v119[9].isa;
      v132[0] = v119[8].isa;
      v132[1] = isa;
      __chkstk_darwin(v48);
      v104 = v132;
      if ((sub_10035C8E4(sub_1000F713C, &v102, v49) & 1) == 0)
      {
        v59 = v116;
        defaultLogger()();
        v60 = v117;
        sub_1001774B0(v50, v117);
        v61 = Logger.logObject.getter();
        v62 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v61, v62))
        {
          v63 = swift_slowAlloc();
          v64 = swift_slowAlloc();
          v132[0] = v64;
          *v63 = 136315138;
          v65 = *(v60 + 64);
          v66 = *(v60 + 72);

          sub_100177514(v60);
          v67 = sub_100141FE4(v65, v66, v132);

          *(v63 + 4) = v67;
          _os_log_impl(&_mh_execute_header, v61, v62, "Selected proposal contains document type %s, but there is no individual document request that has been authenticated.", v63, 0xCu);
          sub_10000BB78(v64);
        }

        else
        {

          sub_100177514(v60);
        }

        v129(v59, v130);
        v97 = v124;
        v98 = *(v123 + 104);
        v98(v124, enum case for DIPError.Code.webPresentmentRequestNotAuthenticated(_:), v133);
        sub_1000402AC(_swiftEmptyArrayStorage);
        type metadata accessor for DIPError();
        sub_10046CE04(&qword_100834130, &type metadata accessor for DIPError);
        swift_allocError();
        v103 = 0x8000000100717C10;
        v104 = 308;
        v102 = 0xD000000000000075;
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();

        (*(v120 + 8))(v122, v121);
        v98(v97, enum case for DIPError.Code.internalError(_:), v133);
        goto LABEL_23;
      }

      return (*(v46 + 8))(v122, v47);
    }

    v55 = v118;
    v56 = v131;
    ISO18013ReaderRequest.deviceRequestInfo.getter();
    v57 = sub_100007224(&qword_100841E68, &unk_1006DECD0);
    v58 = *(v57 - 8);
    if ((*(v58 + 48))(v55, 1, v57) == 1)
    {
      sub_10000BE18(v55, &qword_100841DF8, &qword_1006DEC50);
    }

    else
    {
      v68 = v55;
      v69 = v113;
      CBOREncodedCBOR.value.getter();
      (*(v58 + 8))(v68, v57);
      v70 = ISO18013ReaderRequest.DeviceRequestInfo.useCases.getter();
      (*(v114 + 8))(v69, v115);
      if (v70)
      {
        PartialWebPresentmentMobileDocumentRequest.useCases.getter();
        ISO18013ReaderRequest.docRequests.getter();
        v71 = v56;
        v72 = Array<A>.isEquivalentTo(_:documentRequests:)();

        if ((v72 & 1) == 0)
        {
          v73 = v110;
          defaultLogger()();
          v74 = v109;
          v128 = *(v46 + 16);
          v128(v109, v122, v47);
          v75 = v108;
          v127 = *(v108 + 16);
          v127(v111, v71, v112);
          v76 = Logger.logObject.getter();
          v77 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v76, v77))
          {
            v78 = swift_slowAlloc();
            v118 = v78;
            v126 = swift_slowAlloc();
            v132[0] = v126;
            *v78 = 136315394;
            LODWORD(v125) = v77;
            v79 = v109;
            v119 = v76;
            v80 = v121;
            v128(v106, v109, v121);
            v81 = String.init<A>(describing:)();
            v83 = v82;
            v84 = *(v46 + 8);
            v128 = ((v46 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
            v131 = v84;
            (v84)(v79, v80);
            v85 = sub_100141FE4(v81, v83, v132);

            v86 = v118;
            *(v118 + 4) = v85;
            *(v86 + 6) = 2080;
            v87 = v111;
            v88 = v112;
            v127(v107, v111, v112);
            v89 = String.init<A>(describing:)();
            v91 = v90;
            (*(v75 + 8))(v87, v88);
            v92 = sub_100141FE4(v89, v91, v132);

            *(v86 + 14) = v92;
            v93 = v119;
            _os_log_impl(&_mh_execute_header, v119, v125, "Partial mobile document request %s is not equivalent to raw ISO request %s", v86, 0x16u);
            swift_arrayDestroy();

            v94 = v110;
          }

          else
          {

            (*(v75 + 8))(v111, v112);
            v99 = *(v46 + 8);
            v128 = ((v46 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
            v131 = v99;
            (v99)(v74, v121);
            v94 = v73;
          }

          v129(v94, v130);
          v100 = v124;
          v101 = *(v123 + 104);
          v101(v124, enum case for DIPError.Code.webPresentmentRequestInconsistent(_:), v133);
          sub_1000402AC(_swiftEmptyArrayStorage);
          type metadata accessor for DIPError();
          sub_10046CE04(&qword_100834130, &type metadata accessor for DIPError);
          swift_allocError();
          v103 = 0x8000000100717C10;
          v104 = 302;
          v102 = 0xD000000000000075;
          DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
          swift_willThrow();
          (v131)(v122, v121);
          v101(v100, enum case for DIPError.Code.internalError(_:), v133);
          goto LABEL_23;
        }

        return (*(v46 + 8))(v122, v47);
      }
    }

    v131 = "document request";
    v95 = v124;
    v96 = *(v123 + 104);
    v96(v124, enum case for DIPError.Code.webPresentmentSecondEditionRequestMissingUseCases(_:), v133);
    v130 = sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10046CE04(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    v103 = 0x8000000100717C10;
    v104 = 296;
    v102 = 0xD000000000000075;
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    (*(v46 + 8))(v122, v47);
    v96(v95, enum case for DIPError.Code.internalError(_:), v133);
    goto LABEL_23;
  }

  (*(v123 + 104))(v124, enum case for DIPError.Code.internalError(_:), v133);
LABEL_23:
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10046CE04(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  v103 = 0x8000000100717C10;
  v104 = 312;
  v102 = 0xD000000000000075;
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
}

uint64_t sub_10046BBCC()
{
  sub_10000BB78(v0 + 2);
  sub_10000BB78(v0 + 7);
  v1 = OBJC_IVAR____TtC8coreidvd29WebPresentmentResponseBuilder_partialRequest;
  v2 = type metadata accessor for PartialWebPresentmentRequest();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_10000BB78((v0 + OBJC_IVAR____TtC8coreidvd29WebPresentmentResponseBuilder_requestAuthenticator));
  v3 = *(v0 + OBJC_IVAR____TtC8coreidvd29WebPresentmentResponseBuilder_transactionHistorySaveTask);

  v4 = *(v0 + OBJC_IVAR____TtC8coreidvd29WebPresentmentResponseBuilder_permissionsValidationTask);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for WebPresentmentResponseBuilder()
{
  result = qword_100844D90;
  if (!qword_100844D90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10046BCFC()
{
  result = type metadata accessor for PartialWebPresentmentRequest();
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

uint64_t sub_10046BDA8@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char **a7@<X8>)
{
  v14 = a3[3];
  v15 = sub_10001F370(a3, v14);
  v16 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = (&v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 16))(v18);
  v20 = a4[3];
  v21 = sub_10001F370(a4, v20);
  v22 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v21);
  v24 = &v28 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v24);
  v26 = sub_10046C0C0(a1, a2, *v18, v24, a5, a6);
  sub_10000BB78(a4);
  result = sub_10000BB78(a3);
  *a7 = v26;
  return result;
}

uint64_t sub_10046BF68()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100027B9C;

  return sub_10046CF2C();
}

uint64_t sub_10046C010(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_10013898C;

  return sub_100465400(a1, a2, a3);
}

char *sub_10046C0C0(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v35 = a5;
  v36 = a6;
  v10 = type metadata accessor for DigitalPresentmentSessionManager();
  v40[3] = v10;
  v40[4] = &off_100809E48;
  v40[0] = a3;
  v11 = type metadata accessor for WebPresentmentRequestAuthenticator();
  v38 = v11;
  v39 = &off_100811F68;
  v12 = sub_100032DBC(v37);
  sub_10046C350(a4, v12);
  v13 = type metadata accessor for WebPresentmentResponseBuilder();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  v16 = swift_allocObject();
  v17 = sub_10001F370(v40, v10);
  v18 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v17);
  v20 = (&v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v21 + 16))(v20);
  v22 = v38;
  v23 = sub_10001F370(v37, v38);
  v24 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v23);
  v26 = &v35 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v27 + 16))(v26);
  v28 = *v20;
  *(v16 + 5) = v10;
  *(v16 + 6) = &off_100809E48;
  *(v16 + 2) = v28;
  v29 = &v16[OBJC_IVAR____TtC8coreidvd29WebPresentmentResponseBuilder_requestAuthenticator];
  v29[3] = v11;
  v29[4] = &off_100811F68;
  v30 = sub_100032DBC(v29);
  sub_10046C350(v26, v30);
  sub_10001F358(a1, (v16 + 56));
  v31 = OBJC_IVAR____TtC8coreidvd29WebPresentmentResponseBuilder_partialRequest;
  v32 = type metadata accessor for PartialWebPresentmentRequest();
  (*(*(v32 - 8) + 32))(&v16[v31], a2, v32);
  v33 = v36;
  *&v16[OBJC_IVAR____TtC8coreidvd29WebPresentmentResponseBuilder_transactionHistorySaveTask] = v35;
  *&v16[OBJC_IVAR____TtC8coreidvd29WebPresentmentResponseBuilder_permissionsValidationTask] = v33;
  sub_10000BB78(v37);
  sub_10000BB78(v40);
  return v16;
}

uint64_t sub_10046C350(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WebPresentmentRequestAuthenticator();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10046C3B4(uint64_t a1)
{
  v2 = type metadata accessor for IdentityDocumentElement();
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2);
  v50 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v54 = &v43 - v7;
  v8 = &_swiftEmptyDictionarySingleton;
  v55 = &_swiftEmptyDictionarySingleton;
  v9 = *(a1 + 16);
  if (!v9)
  {
    return v8;
  }

  v11 = *(v6 + 16);
  v10 = v6 + 16;
  v45 = *(v10 + 64);
  v12 = *(v10 + 56);
  v48 = (v45 + 32) & ~v45;
  v49 = v11;
  v13 = a1 + v48;
  v52 = (v10 + 16);
  v44 = xmmword_1006BF520;
  v46 = v2;
  v47 = v10;
  v51 = v12;
  while (1)
  {
    v53 = v9;
    v15 = v10;
    v49(v54, v13, v2);
    v19 = IdentityDocumentElement.namespace.getter();
    v21 = v20;
    v23 = sub_10003ADCC(v19, v20);
    v24 = v8[2];
    v25 = (v22 & 1) == 0;
    v26 = v24 + v25;
    if (__OFADD__(v24, v25))
    {
      break;
    }

    v27 = v22;
    if (v8[3] < v26)
    {
      sub_100168464(v26, 1);
      v8 = v55;
      v28 = sub_10003ADCC(v19, v21);
      if ((v27 & 1) != (v29 & 1))
      {
        goto LABEL_19;
      }

      v23 = v28;
    }

    if (v27)
    {

      v30 = v8[7];
      v31 = *v52;
      (*v52)(v50, v54, v2);
      v32 = *(v30 + 8 * v23);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v30 + 8 * v23) = v32;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v32 = sub_1003C573C(0, v32[2] + 1, 1, v32);
        *(v30 + 8 * v23) = v32;
      }

      v35 = v32[2];
      v34 = v32[3];
      if (v35 >= v34 >> 1)
      {
        v32 = sub_1003C573C(v34 > 1, v35 + 1, 1, v32);
        *(v30 + 8 * v23) = v32;
      }

      v15 = v47;
      v14 = v48;
      v32[2] = v35 + 1;
      v16 = v51;
      v17 = v32 + v14 + v35 * v51;
      v2 = v46;
      v18 = v53;
      v31(v17, v50, v46);
    }

    else
    {
      sub_100007224(&qword_10083C0D8, &qword_1006DA600);
      v36 = v48;
      v37 = swift_allocObject();
      *(v37 + 16) = v44;
      (*v52)((v37 + v36), v54, v2);
      v8[(v23 >> 6) + 8] |= 1 << v23;
      v38 = (v8[6] + 16 * v23);
      *v38 = v19;
      v38[1] = v21;
      *(v8[7] + 8 * v23) = v37;
      v39 = v8[2];
      v40 = __OFADD__(v39, 1);
      v41 = v39 + 1;
      if (v40)
      {
        goto LABEL_18;
      }

      v8[2] = v41;
      v16 = v51;
      v18 = v53;
    }

    v13 += v16;
    v9 = v18 - 1;
    v10 = v15;
    if (!v9)
    {
      return v8;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10046C728(void (*a1)(void, void, void))
{
  v2 = sub_100007224(&qword_10083F168, &unk_1006DEC40);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v63 - v4;
  v6 = type metadata accessor for ISO18013ReaderRequest.DocRequest();
  v72 = *(v6 - 8);
  v73 = v6;
  v7 = *(v72 + 64);
  __chkstk_darwin(v6);
  v9 = v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for COSE_Sign1();
  v74 = *(v10 - 8);
  v11 = *(v74 + 64);
  __chkstk_darwin(v10);
  v13 = v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for ISO18013ReaderRequest();
  v14 = *(v76 - 1);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v76);
  v70 = v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = v63 - v18;
  v20 = sub_100007224(&qword_100844E58, &unk_1006E50E0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = __chkstk_darwin(v20);
  v67 = v63 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v26 = v63 - v25;
  v75 = a1;
  ISO18013RequestForwardingRequest.deviceRequest.getter();
  Base64URLEncodedCBOR.value.getter();
  v27 = *(v21 + 8);
  v28 = v26;
  v29 = v73;
  v68 = v21 + 8;
  v69 = v20;
  v66 = v27;
  v27(v28, v20);
  v30 = ISO18013ReaderRequest.readerAuthAll.getter();
  v31 = *(v14 + 8);
  v71 = v14 + 8;
  v65 = v31;
  v31(v19, v76);
  v79 = v10;
  if (v30)
  {
    v63[1] = v30;
    v64 = v5;
    v32 = *(v30 + 16);
    if (v32)
    {
      v33 = *(v74 + 16);
      v34 = v30 + ((*(v74 + 80) + 32) & ~*(v74 + 80));
      v77 = *(v74 + 72);
      v78 = v33;
      v35 = (v74 + 8);
      v36 = _swiftEmptyArrayStorage;
      v33(v13, v34, v10);
      while (1)
      {
        v37 = COSE_Sign1.x509Chain.getter();
        (*v35)(v13, v10);
        if (v37)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v36 = sub_1003C5718(0, v36[2] + 1, 1, v36);
          }

          v39 = v36[2];
          v38 = v36[3];
          if (v39 >= v38 >> 1)
          {
            v36 = sub_1003C5718((v38 > 1), v39 + 1, 1, v36);
          }

          v36[2] = v39 + 1;
          v36[v39 + 4] = v37;
          v10 = v79;
        }

        v34 += v77;
        if (!--v32)
        {
          break;
        }

        v78(v13, v34, v10);
      }
    }

    else
    {
      v36 = _swiftEmptyArrayStorage;
    }

    v40 = v36[2];

    v29 = v73;
    v5 = v64;
  }

  else
  {
    v40 = 0;
  }

  v41 = v67;
  ISO18013RequestForwardingRequest.deviceRequest.getter();
  v43 = v69;
  v42 = v70;
  Base64URLEncodedCBOR.value.getter();
  v66(v41, v43);
  v44 = ISO18013ReaderRequest.docRequests.getter();
  v65(v42, v76);
  v45 = *(v44 + 16);
  if (v45)
  {
    v70 = v44;
    v71 = v40;
    v46 = v72 + 16;
    v47 = *(v72 + 16);
    v48 = v44 + ((*(v72 + 80) + 32) & ~*(v72 + 80));
    v49 = *(v72 + 72);
    v77 = (v74 + 48);
    v78 = v49;
    v50 = (v72 + 8);
    v74 += 8;
    v75 = v47;
    v76 = _swiftEmptyArrayStorage;
    v72 += 16;
    while (1)
    {
      v51 = v46;
      v47(v9, v48, v29);
      ISO18013ReaderRequest.DocRequest.readerAuth.getter();
      v52 = v9;
      v53 = v79;
      if ((*v77)(v5, 1, v79) == 1)
      {
        (*v50)(v52, v29);
        sub_10000BE18(v5, &qword_10083F168, &unk_1006DEC40);
        v9 = v52;
      }

      else
      {
        v54 = COSE_Sign1.x509Chain.getter();
        v55 = v52;
        (*v50)(v52, v29);
        v56 = v5;
        (*v74)(v5, v53);
        if (v54)
        {
          v57 = v76;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v57 = sub_1003C5718(0, v57[2] + 1, 1, v57);
          }

          v9 = v55;
          v59 = v57[2];
          v58 = v57[3];
          if (v59 >= v58 >> 1)
          {
            v57 = sub_1003C5718((v58 > 1), v59 + 1, 1, v57);
          }

          v57[2] = v59 + 1;
          v76 = v57;
          v57[v59 + 4] = v54;
          v46 = v72;
          v29 = v73;
          v5 = v56;
          v47 = v75;
          goto LABEL_19;
        }

        v9 = v55;
        v47 = v75;
      }

      v46 = v51;
LABEL_19:
      v48 += v78;
      if (!--v45)
      {

        v40 = v71;
        v60 = v76;
        goto LABEL_30;
      }
    }
  }

  v60 = _swiftEmptyArrayStorage;
LABEL_30:
  v61 = v60[2];

  result = v40 + v61;
  if (__OFADD__(v40, v61))
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10046CE04(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10046CE4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&qword_100844E60, &qword_1006E50F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10046CEBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&qword_100844E60, &qword_1006E50F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10046CF2C()
{
  v1 = type metadata accessor for Logger();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();

  return _swift_task_switch(sub_10046CFE8, 0, 0);
}

uint64_t sub_10046CFE8()
{
  v1 = v0[4];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "WebPresentmentResponseBuilder prepareForRetry invoked. This is a no-op.", v4, 2u);
  }

  v6 = v0[3];
  v5 = v0[4];
  v7 = v0[2];

  (*(v6 + 8))(v5, v7);

  v8 = v0[1];

  return v8();
}

uint64_t sub_10046D128(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(BOOL, uint64_t, uint64_t))
{
  v31 = a5;
  v42 = a4(0);
  v9 = *(*(v42 - 8) + 64);
  v10 = __chkstk_darwin(v42);
  v39 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v10);
  v41 = &v31 - v14;
  v38 = *(a3 + 16);
  if (v38)
  {
    v15 = 0;
    v35 = (v13 + 8);
    v36 = (v13 + 32);
    v37 = v13 + 16;
    v40 = _swiftEmptyArrayStorage;
    v33 = a2;
    v34 = a3;
    v32 = a1;
    while (v15 < *(a3 + 16))
    {
      v16 = (*(v13 + 80) + 32) & ~*(v13 + 80);
      v17 = *(v13 + 72);
      v18 = a3;
      v19 = a3 + v16 + v17 * v15;
      v20 = v13;
      v21 = a1;
      v22 = v41;
      (*(v13 + 16))(v41, v19, v42);
      v23 = v22;
      a1 = v21;
      v24 = v21(v23);
      if (v5)
      {
        (*v35)(v41, v42);
        v30 = v40;

        return v30;
      }

      if (v24)
      {
        v25 = *v36;
        (*v36)(v39, v41, v42);
        v26 = v40;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v43 = v26;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v31(0, v26[2] + 1, 1);
          v26 = v43;
        }

        v29 = v26[2];
        v28 = v26[3];
        if (v29 >= v28 >> 1)
        {
          v31(v28 > 1, v29 + 1, 1);
          v26 = v43;
        }

        v26[2] = v29 + 1;
        v40 = v26;
        result = (v25)(v26 + v16 + v29 * v17, v39, v42);
        a3 = v34;
        a1 = v32;
      }

      else
      {
        result = (*v35)(v41, v42);
        a3 = v18;
      }

      ++v15;
      v13 = v20;
      if (v38 == v15)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v40 = _swiftEmptyArrayStorage;
LABEL_14:

    return v40;
  }

  return result;
}

uint64_t sub_10046D410@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_10000BBC4(a1, &v14, &qword_100844E78, &qword_1006E5140);
  if (v15)
  {
    sub_10000BE18(a1, &qword_100844E78, &qword_1006E5140);
    sub_10001F358(&v14, &v16);
  }

  else
  {
    v6 = type metadata accessor for DeviceInformationProvider();
    v13[3] = v6;
    v13[4] = &protocol witness table for DeviceInformationProvider;
    sub_100032DBC(v13);
    DeviceInformationProvider.init()();
    type metadata accessor for UserDefaultsConfiguration();
    v13[5] = static UserDefaultsConfiguration.standard.getter();
    v7 = sub_100134AD0();
    sub_100108074(v13);
    v8 = type metadata accessor for WebPresentmentBrandStore();
    v9 = swift_allocObject();
    swift_defaultActor_initialize();
    *(v9 + 112) = [objc_allocWithZone(DIWebPresentmentBrandStore) init];
    v17 = &type metadata for WebPresentmentBrandConfigurationManager;
    v18 = &off_1008109C8;
    v10 = swift_allocObject();
    *&v16 = v10;
    *(v10 + 40) = v8;
    *(v10 + 48) = &off_1008109F0;
    *(v10 + 16) = v9;
    *(v10 + 88) = v6;
    *(v10 + 96) = &protocol witness table for DeviceInformationProvider;
    sub_100032DBC((v10 + 64));
    DeviceInformationProvider.init()();
    v11 = static UserDefaultsConfiguration.standard.getter();
    sub_10000BE18(a1, &qword_100844E78, &qword_1006E5140);
    *(v10 + 56) = v7 & 1;
    *(v10 + 104) = v11;
    if (v15)
    {
      sub_10000BE18(&v14, &qword_100844E78, &qword_1006E5140);
    }
  }

  result = sub_10001F358(&v16, a3);
  *(a3 + 40) = a2;
  return result;
}

uint64_t sub_10046D5EC()
{
  sub_10000BB78(v0 + 2);
  sub_10000BB78(v0 + 8);
  v1 = v0[13];

  return _swift_deallocObject(v0, 112, 7);
}

uint64_t sub_10046D634(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for DIPError.Code();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = *(*(sub_100007224(&unk_100849BA0, &qword_1006D95F0) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v2[8] = v7;
  v8 = *(v7 - 8);
  v2[9] = v8;
  v9 = *(v8 + 64) + 15;
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();

  return _swift_task_switch(sub_10046D794, 0, 0);
}

uint64_t sub_10046D794()
{
  v1 = *(v0[3] + 40);
  v2 = UserDefaultsConfiguration.userDefaults.getter();
  v3._countAndFlagsBits = static DaemonInternalDefaultsKeys.WebPresentment.disablePermissionsCheck.getter();
  v4 = NSUserDefaults.internalBool(forKey:)(v3);

  if (v4)
  {
    v5 = v0[11];
    defaultLogger()();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Disabling permissions check because internal flag is set to true", v8, 2u);
    }

    v9 = v0[11];
    v10 = v0[8];
    v11 = v0[9];

    (*(v11 + 8))(v9, v10);
    goto LABEL_5;
  }

  v20 = v0[2];
  v19 = v0[3];
  sub_10000BA08(v19, v19[3]);
  v21 = sub_100436584(v20);
  v0[12] = v22;
  if (!v22)
  {
LABEL_5:
    v12 = *(v0[2] + 80);
    v14 = v0[10];
    v13 = v0[11];
    v16 = v0[6];
    v15 = v0[7];

    v17 = v0[1];

    return v17(v12);
  }

  v23 = v19[3];
  v24 = v21;
  v25 = v22;
  sub_10000BA08(v0[3], v23);
  v26 = swift_task_alloc();
  v0[13] = v26;
  *v26 = v0;
  v26[1] = sub_10046DA2C;

  return sub_100436AC0(v24, v25);
}

uint64_t sub_10046DA2C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 104);
  v8 = *v2;
  v3[14] = a1;
  v3[15] = v1;

  if (v1)
  {
    v5 = sub_10046DF00;
  }

  else
  {
    v6 = v3[12];

    v5 = sub_10046DB48;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10046DB48()
{
  v1 = v0[2];
  v3 = v1[8];
  v2 = v1[9];
  if (v1[12])
  {
    v4 = v0[7];
    v5 = v1[11];
    v6 = v1[12];

    Locale.Region.init(_:)();
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v9 = v0[14];
  v8 = v0[15];
  v10 = v0[7];
  v11 = v0[3];
  v12 = type metadata accessor for Locale.Region();
  (*(*(v12 - 8) + 56))(v10, v7, 1, v12);
  v13 = sub_10046DF90(v9, v3, v2, v10);
  sub_10000BE18(v10, &unk_100849BA0, &qword_1006D95F0);

  if (v8)
  {
LABEL_5:
    v15 = v0[10];
    v14 = v0[11];
    v17 = v0[6];
    v16 = v0[7];

    v18 = v0[1];

    return v18();
  }

  v20 = v0[3];
  v21 = *(v0[2] + 80);
  v22 = swift_task_alloc();
  *(v22 + 16) = v20;
  *(v22 + 24) = v13;

  v23 = sub_10046D128(sub_10046E880, v22, v21, &type metadata accessor for IdentityDocumentElement, sub_100173594);

  if (!*(v23 + 16))
  {
    v29 = v0[10];

    defaultLogger()();
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "Throwing permissions error: filtering would return empty elements", v32, 2u);
    }

    v34 = v0[9];
    v33 = v0[10];
    v35 = v0[8];
    v37 = v0[5];
    v36 = v0[6];
    v38 = v0[4];

    (*(v34 + 8))(v33, v35);
    (*(v37 + 104))(v36, enum case for DIPError.Code.webPresentmentMissingRequiredRequestElementPermission(_:), v38);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    goto LABEL_5;
  }

  v25 = v0[10];
  v24 = v0[11];
  v27 = v0[6];
  v26 = v0[7];

  v28 = v0[1];

  return v28(v23);
}

uint64_t sub_10046DF00()
{
  v1 = v0[12];

  v2 = v0[15];
  v4 = v0[10];
  v3 = v0[11];
  v6 = v0[6];
  v5 = v0[7];

  v7 = v0[1];

  return v7();
}

unint64_t sub_10046DF90(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v39 = a4;
  v7 = type metadata accessor for DIPError.Code();
  v41 = *(v7 - 8);
  v42 = v7;
  v8 = *(v41 + 64);
  __chkstk_darwin(v7);
  v43 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for Logger();
  v10 = *(v40 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v40);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100007224(&unk_100849BA0, &qword_1006D95F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v39 - v16;
  v18 = type metadata accessor for Locale.Region();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16))
  {
    v23 = sub_10003ADCC(a2, a3);
    if (v24)
    {
      v25 = (*(a1 + 56) + 16 * v23);
      v27 = *v25;
      v26 = v25[1];
      sub_10000BBC4(v39, v17, &unk_100849BA0, &qword_1006D95F0);
      if ((*(v19 + 48))(v17, 1, v18) == 1)
      {

        sub_10000BE18(v17, &unk_100849BA0, &qword_1006D95F0);
LABEL_13:
        v32 = sub_1006973D4(v27);

        return v32;
      }

      (*(v19 + 32))(v22, v17, v18);
      v33 = *(v26 + 16);

      if (v33)
      {

        v34 = sub_10003ADF8(v22);
        if (v35)
        {
          v36 = v34;

          v37 = *(*(v26 + 56) + 8 * v36);

          v32 = sub_1006973D4(v37);

          (*(v19 + 8))(v22, v18);
          return v32;
        }
      }

      (*(v19 + 8))(v22, v18);
      goto LABEL_13;
    }
  }

  defaultLogger()();

  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v44 = v31;
    *v30 = 136315138;
    *(v30 + 4) = sub_100141FE4(a2, a3, &v44);
    _os_log_impl(&_mh_execute_header, v28, v29, "Throwing permissions error: no entry for documentType %s", v30, 0xCu);
    sub_10000BB78(v31);
  }

  (*(v10 + 8))(v13, v40);
  (*(v41 + 104))(v43, enum case for DIPError.Code.webPresentmentMissingRequiredRequestElementPermission(_:), v42);
  v32 = sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
  return v32;
}

uint64_t sub_10046E4B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for IdentityDocumentElement();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = __chkstk_darwin(v5);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for Logger();
  v45 = *(v13 - 8);
  v46 = v13;
  v14 = *(v45 + 64);
  __chkstk_darwin(v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10046E8A0();
  v19 = v18;
  v44 = v17;
  v20 = sub_1006932A8(v17, v18, a3);
  v21 = v20;
  if (v20)
  {
  }

  else
  {
    v43 = v20;
    defaultLogger()();
    v22 = v6[2];
    v22(v12, a1, v5);
    v22(v10, a1, v5);

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v47 = v42;
      *v25 = 136315650;
      v41 = v23;
      v26 = IdentityDocumentElement.namespace.getter();
      v40 = v24;
      v28 = v27;
      v39 = v6[1];
      v39(v12, v5);
      v29 = sub_100141FE4(v26, v28, &v47);

      *(v25 + 4) = v29;
      *(v25 + 12) = 2080;
      v30 = IdentityDocumentElement.identifier.getter();
      v32 = v31;
      v39(v10, v5);
      v33 = sub_100141FE4(v30, v32, &v47);

      *(v25 + 14) = v33;
      *(v25 + 22) = 2080;
      v34 = sub_100141FE4(v44, v19, &v47);

      *(v25 + 24) = v34;
      v35 = v41;
      _os_log_impl(&_mh_execute_header, v41, v40, "Non-fatal permissions error: no permission for element '%s:%s' (canonical identifier '%s')", v25, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      v36 = v6[1];
      v36(v10, v5);
      v36(v12, v5);
    }

    (*(v45 + 8))(v16, v46);
    v21 = v43;
  }

  return v21 & 1;
}

uint64_t sub_10046E8A0()
{
  v0 = sub_100007224(&qword_100844E80, &qword_1006E5158);
  v1 = *(*(v0 - 8) + 64);
  v2 = __chkstk_darwin(v0 - 8);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v19 - v5;
  IdentityDocumentElement.namespace.getter();
  ISO18013KnownNamespaces.init(rawValue:)();
  v7 = type metadata accessor for ISO18013KnownNamespaces();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    goto LABEL_9;
  }

  sub_10000BBC4(v6, v4, &qword_100844E80, &qword_1006E5158);
  v9 = (*(v8 + 88))(v4, v7);
  if (v9 == enum case for ISO18013KnownNamespaces.iso18013_5_1(_:))
  {
    IdentityDocumentElement.identifier.getter();
    v10 = static ISO18013_5_1_ElementIdentifier.isAgeOverElement(_:)();
  }

  else
  {
    if (v9 != enum case for ISO18013KnownNamespaces.iso23220_1(_:))
    {
      (*(v8 + 8))(v4, v7);
      goto LABEL_9;
    }

    IdentityDocumentElement.identifier.getter();
    v10 = static ISO23220_1_ElementIdentifier.isAgeOverElement(_:)();
  }

  v11 = v10;

  if ((v11 & 1) == 0)
  {
LABEL_9:
    v19 = IdentityDocumentElement.namespace.getter();
    v20 = v15;
    v16._countAndFlagsBits = 58;
    v16._object = 0xE100000000000000;
    String.append(_:)(v16);
    v17._countAndFlagsBits = IdentityDocumentElement.identifier.getter();
    String.append(_:)(v17);

    v14 = v19;
    sub_10000BE18(v6, &qword_100844E80, &qword_1006E5158);
    return v14;
  }

  sub_10000BE18(v6, &qword_100844E80, &qword_1006E5158);
  v19 = IdentityDocumentElement.namespace.getter();
  v20 = v12;
  v13._countAndFlagsBits = 0x65766F5F6567613ALL;
  v13._object = 0xEC0000004E4E5F72;
  String.append(_:)(v13);
  return v19;
}

void *sub_10046EB20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_100020260(a1, v10);
  type metadata accessor for WebPresentmentCABLEClient();
  swift_allocObject();
  sub_10001F640(a2);
  sub_10001F640(a4);
  return sub_10043D09C(v10, a2, a3, a4, a5);
}

uint64_t sub_10046EBC0(uint64_t a1, uint64_t a2)
{
  v3[21] = a2;
  v3[22] = v2;
  v3[20] = a1;
  v4 = type metadata accessor for DIPError.Code();
  v3[23] = v4;
  v5 = *(v4 - 8);
  v3[24] = v5;
  v6 = *(v5 + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = type metadata accessor for WebPresentmentScannableCodeState();
  v3[26] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v3[27] = swift_task_alloc();
  v9 = sub_100007224(&qword_100844F88, &qword_1006E52B8);
  v3[28] = v9;
  v10 = *(v9 - 8);
  v3[29] = v10;
  v11 = *(v10 + 64) + 15;
  v3[30] = swift_task_alloc();
  v12 = sub_100007224(&qword_100844F78, &qword_1006E5298);
  v3[31] = v12;
  v13 = *(v12 - 8);
  v3[32] = v13;
  v3[33] = *(v13 + 64);
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v14 = type metadata accessor for URL();
  v3[36] = v14;
  v15 = *(v14 - 8);
  v3[37] = v15;
  v16 = *(v15 + 64) + 15;
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  v17 = type metadata accessor for PartialWebPresentmentRequest();
  v3[42] = v17;
  v18 = *(v17 - 8);
  v3[43] = v18;
  v19 = *(v18 + 64) + 15;
  v3[44] = swift_task_alloc();
  v3[45] = swift_task_alloc();
  v3[46] = swift_task_alloc();
  v20 = type metadata accessor for Logger();
  v3[47] = v20;
  v21 = *(v20 - 8);
  v3[48] = v21;
  v22 = *(v21 + 64) + 15;
  v3[49] = swift_task_alloc();
  v3[50] = swift_task_alloc();
  v3[51] = swift_task_alloc();
  v3[52] = swift_task_alloc();
  v3[53] = swift_task_alloc();
  v3[54] = swift_task_alloc();
  v3[55] = swift_task_alloc();
  v3[56] = swift_task_alloc();
  v3[57] = swift_task_alloc();
  v3[58] = swift_task_alloc();
  v3[59] = swift_task_alloc();
  v3[60] = swift_task_alloc();
  v3[61] = swift_task_alloc();
  v3[62] = swift_task_alloc();

  return _swift_task_switch(sub_10046EF84, v2, 0);
}

uint64_t sub_10046EF84()
{
  v230 = v0;
  v1 = v0[22];
  v3 = *(v1 + 168);
  v2 = (v1 + 168);
  if (v3)
  {
    v4 = v0[51];
    defaultLogger()();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Could not start scannable code session, request already in progress", v7, 2u);
    }

    v8 = v0[51];
    v9 = v0[47];
    v10 = v0[48];
    v12 = v0[24];
    v11 = v0[25];
    v13 = v0[23];

    v14 = *(v10 + 8);
    v14(v8, v9);
    (*(v12 + 104))(v11, enum case for DIPError.Code.webPresentmentRequestAlreadyInProgress(_:), v13);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100473ABC(&qword_100834130, 255, &type metadata accessor for DIPError);
    v15 = swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    goto LABEL_5;
  }

  v216 = v2;
  v32 = v0[62];
  v33 = v0[46];
  v34 = v0[42];
  v35 = v0[43];
  v36 = v0[20];
  defaultLogger()();
  v37 = *(v35 + 16);
  v37(v33, v36, v34);
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.debug.getter();
  v40 = os_log_type_enabled(v38, v39);
  v41 = v0[62];
  v43 = v0[47];
  v42 = v0[48];
  v44 = v0[46];
  v201 = v37;
  if (v40)
  {
    loga = v38;
    v45 = v0[45];
    v225 = v0[47];
    v47 = v0[42];
    v46 = v0[43];
    v214 = v0[62];
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v229[0] = v49;
    *v48 = 136315138;
    v37(v45, v44, v47);
    v50 = String.init<A>(describing:)();
    v51 = v39;
    v53 = v52;
    v206 = *(v46 + 8);
    v206(v44, v47);
    v54 = sub_100141FE4(v50, v53, v229);

    *(v48 + 4) = v54;
    _os_log_impl(&_mh_execute_header, loga, v51, "Starting scannable code session with partialRequest %s", v48, 0xCu);
    sub_10000BB78(v49);

    v55 = *(v42 + 8);
    v55(v214, v225);
  }

  else
  {
    v71 = v0[42];
    v72 = v0[43];

    v206 = *(v72 + 8);
    v206(v44, v71);
    v55 = *(v42 + 8);
    v55(v41, v43);
  }

  v0[63] = v55;
  v73 = v0[41];
  v74 = v0[36];
  v75 = v0[37];
  v76 = v0[20];
  PartialWebPresentmentRequest.originatingURL.getter();
  v77 = URL.serializedOrigin.getter();
  v79 = v78;
  v0[64] = v78;
  v80 = *(v75 + 8);
  v0[65] = v80;
  v0[66] = (v75 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  (v80)(v73, v74);
  v227 = v55;
  if (!v79)
  {
    v121 = v0[52];
    v122 = v0[44];
    v123 = v0[42];
    v124 = v0[20];
    defaultLogger()();
    v201(v122, v124, v123);
    v125 = Logger.logObject.getter();
    v223 = static os_log_type_t.error.getter();
    v126 = os_log_type_enabled(v125, v223);
    v127 = v0[52];
    v128 = v0[47];
    v129 = v0[48];
    v130 = v0[43];
    v131 = v0[44];
    v132 = v0[42];
    if (v126)
    {
      v204 = v0[47];
      v133 = v0[38];
      v194 = v0[36];
      v134 = swift_slowAlloc();
      logb = v80;
      v135 = swift_slowAlloc();
      v229[0] = v135;
      *v134 = 136315138;
      v199 = v127;
      PartialWebPresentmentRequest.originatingURL.getter();
      v136 = URL.absoluteString.getter();
      v138 = v137;
      (logb)(v133, v194);
      v206(v131, v132);
      v139 = sub_100141FE4(v136, v138, v229);

      *(v134 + 4) = v139;
      _os_log_impl(&_mh_execute_header, v125, v223, "Failed to get serializedOrigin from partialRequest originatingURL %s", v134, 0xCu);
      sub_10000BB78(v135);

      v140 = v199;
      v141 = v204;
    }

    else
    {

      v206(v131, v132);
      v140 = v127;
      v141 = v128;
    }

    v14 = v227;
    v227(v140, v141);
    v174 = v0[22];
    (*(v0[24] + 104))(v0[25], enum case for DIPError.Code.webPresentmentCouldNotSerializeOrigin(_:), v0[23]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100473ABC(&qword_100834130, 255, &type metadata accessor for DIPError);
    v15 = swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v175 = *(v174 + 184);
    v176 = UserDefaultsConfiguration.userDefaults.getter();
    static DaemonInternalDefaultsKeys.WebPresentment.scannableCodePayloadOutput.getter();
    v177 = String._bridgeToObjectiveC()();

    [v176 removeObjectForKey:{v177, 0xD00000000000002BLL, 0x8000000100717F00, 85}];

    v178 = *v216;
    *v216 = 0;
    v216[1] = 0;
    swift_unknownObjectRelease();
LABEL_5:
    type metadata accessor for Code(0);
    v0[11] = 12;
    swift_errorRetain();
    sub_100473ABC(&qword_1008330E8, 255, type metadata accessor for Code);
    v16 = static _ErrorCodeProtocol.~= infix(_:_:)();

    if ((v16 & 1) != 0 || (v0[12] = v15, swift_errorRetain(), sub_100007224(&qword_100833B90, &qword_1006D95C0), v17 = swift_dynamicCast(), v18 = v0[12], v19 = v0[13], , v17) && v19 == 4)
    {
      v20 = v0[50];
      defaultLogger()();
      swift_errorRetain();
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.debug.getter();

      v23 = os_log_type_enabled(v21, v22);
      v24 = v0[50];
      v26 = v0[47];
      v25 = v0[48];
      if (v23)
      {
        v219 = v0[50];
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v229[0] = v28;
        *v27 = 136315138;
        v0[17] = v15;
        swift_errorRetain();
        sub_100007224(&qword_100833B90, &qword_1006D95C0);
        v29 = String.init<A>(describing:)();
        v31 = sub_100141FE4(v29, v30, v229);

        *(v27 + 4) = v31;
        _os_log_impl(&_mh_execute_header, v21, v22, "Bridging ASC error to cancelled error: %s", v27, 0xCu);
        sub_10000BB78(v28);

        v14(v219, v26);
      }

      else
      {

        v14(v24, v26);
      }

      v56 = v0[31];
      v57 = v0[21];
      (*(v0[24] + 104))(v0[25], enum case for DIPError.Code.webPresentmentCancelled(_:), v0[23]);
      swift_errorRetain();
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100473ABC(&qword_100834130, 255, &type metadata accessor for DIPError);
      v58 = swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      v0[16] = v58;
    }

    else
    {
      v59 = v0[49];
      defaultLogger()();
      swift_errorRetain();
      v60 = Logger.logObject.getter();
      v61 = static os_log_type_t.debug.getter();

      v62 = os_log_type_enabled(v60, v61);
      v63 = v0[48];
      v64 = v0[49];
      v65 = v0[47];
      if (v62)
      {
        v220 = v0[49];
        v66 = swift_slowAlloc();
        v226 = v14;
        v229[0] = swift_slowAlloc();
        v67 = v229[0];
        *v66 = 136315138;
        v0[15] = v15;
        swift_errorRetain();
        v68 = String.init<A>(describing:)();
        v70 = sub_100141FE4(v68, v69, v229);

        *(v66 + 4) = v70;
        _os_log_impl(&_mh_execute_header, v60, v61, "Bridging ASC error to service unavailable error: %s", v66, 0xCu);
        sub_10000BB78(v67);

        v226(v220, v65);
      }

      else
      {

        v14(v64, v65);
      }

      v160 = v0[31];
      v161 = v0[21];
      (*(v0[24] + 104))(v0[25], enum case for DIPError.Code.webPresentmentServiceUnavailable(_:), v0[23]);
      swift_errorRetain();
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100473ABC(&qword_100834130, 255, &type metadata accessor for DIPError);
      v162 = swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      v0[14] = v162;
    }

    AsyncThrowingStream.Continuation.finish(throwing:)();

    v164 = v0[61];
    v163 = v0[62];
    v166 = v0[59];
    v165 = v0[60];
    v167 = v0[57];
    v168 = v0[58];
    v170 = v0[55];
    v169 = v0[56];
    v172 = v0[53];
    v171 = v0[54];
    v181 = v0[52];
    v183 = v0[51];
    v185 = v0[50];
    v187 = v0[49];
    v189 = v0[46];
    v191 = v0[45];
    v195 = v0[44];
    v197 = v0[41];
    v200 = v0[40];
    v205 = v0[39];
    v209 = v0[38];
    logc = v0[35];
    v215 = v0[34];
    v218 = v0[30];
    v224 = v0[27];
    v228 = v0[25];

    v173 = v0[1];

    return v173();
  }

  v81 = v0[61];
  defaultLogger()();

  v82 = Logger.logObject.getter();
  v83 = static os_log_type_t.debug.getter();

  v84 = os_log_type_enabled(v82, v83);
  v221 = v0[61];
  v86 = v0[47];
  v85 = v0[48];
  v196 = v79;
  v198 = v77;
  log = v80;
  if (v84)
  {
    v87 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    v229[0] = v88;
    *v87 = 136315138;
    *(v87 + 4) = sub_100141FE4(v77, v79, v229);
    _os_log_impl(&_mh_execute_header, v82, v83, "Partial request had commandOrigin %s", v87, 0xCu);
    sub_10000BB78(v88);
  }

  v55(v221, v86);
  v190 = v0[40];
  v192 = v0[60];
  v207 = v0[39];
  v222 = v0[37];
  v202 = v0[36];
  v89 = v0[35];
  v90 = v0[32];
  v91 = v0[33];
  v92 = v0[31];
  v182 = v0[34];
  v184 = v0[22];
  v180 = v0[21];
  v186 = v184[20];
  v188 = v184[19];
  v93 = *(v90 + 16);
  v93(v89);
  v94 = (*(v90 + 80) + 16) & ~*(v90 + 80);
  v95 = swift_allocObject();
  v96 = *(v90 + 32);
  v96(v95 + v94, v89, v92);
  (v93)(v182, v180, v92);
  v97 = swift_allocObject();
  v96(v97 + v94, v182, v92);
  v98 = v188(v184 + 14, sub_1004738A4, v95, sub_100473944, v97);
  v100 = v99;

  v0[67] = v98;
  v101 = *v216;
  *v216 = v98;
  v217 = v100;
  v184[22] = v100;
  swift_unknownObjectRetain();
  v102 = swift_unknownObjectRelease();
  v103 = *(v98 + 200);
  (*(v98 + 192))(v102);
  defaultLogger()();
  v104 = v207;
  v208 = *(v222 + 16);
  v208(v104, v190, v202);
  v105 = Logger.logObject.getter();
  v106 = static os_log_type_t.info.getter();
  v107 = os_log_type_enabled(v105, v106);
  v108 = v0[60];
  v109 = v0[47];
  v110 = v0[48];
  v111 = v0[39];
  v112 = v0[36];
  if (v107)
  {
    v203 = v0[60];
    v113 = swift_slowAlloc();
    v193 = v109;
    v114 = swift_slowAlloc();
    v229[0] = v114;
    *v113 = 136315138;
    v115 = URL.absoluteString.getter();
    v117 = v116;
    (log)(v111, v112);
    v118 = sub_100141FE4(v115, v117, v229);

    *(v113 + 4) = v118;
    _os_log_impl(&_mh_execute_header, v105, v106, "Got QR code payload from caBLE client: %s", v113, 0xCu);
    sub_10000BB78(v114);

    v119 = v193;
    v120 = v203;
  }

  else
  {

    (log)(v111, v112);
    v120 = v108;
    v119 = v109;
  }

  v227(v120, v119);
  if (_isInternalBuild.getter())
  {
    v142 = v0[40];
    v143 = *(v0[22] + 184);
    v144 = UserDefaultsConfiguration.userDefaults.getter();
    URL.absoluteString.getter();
    v145 = String._bridgeToObjectiveC()();

    static DaemonInternalDefaultsKeys.WebPresentment.scannableCodePayloadOutput.getter();
    v146 = String._bridgeToObjectiveC()();

    [v144 setObject:v145 forKey:v146];
  }

  v147 = v0[30];
  v148 = v0[31];
  v149 = v0[28];
  v150 = v0[29];
  v151 = v0[26];
  v152 = v0[21];
  v153 = v0[22];
  v208(v0[27], v0[40], v0[36]);
  swift_storeEnumTagMultiPayload();
  AsyncThrowingStream.Continuation.yield(_:)();
  v154 = *(v150 + 8);
  v0[68] = v154;
  v0[69] = (v150 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v154(v147, v149);
  sub_100007224(&qword_100834DA0, &unk_1006C03C0);
  inited = swift_initStackObject();
  v0[70] = inited;
  *(inited + 20) = 0;
  *(inited + 16) = 0;
  v0[18] = 0;
  v156 = swift_task_alloc();
  v0[71] = v156;
  v156[2] = v0 + 18;
  v156[3] = v98;
  v156[4] = v217;
  v156[5] = v198;
  v156[6] = v196;
  sub_100473ABC(&qword_100844F90, v157, type metadata accessor for WebPresentmentScannableCodeManager);
  v158 = async function pointer to withTaskCancellationHandler<A>(operation:onCancel:isolation:)[1];
  v159 = swift_task_alloc();
  v0[72] = v159;
  *v159 = v0;
  v159[1] = sub_10047039C;

  return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v159, &unk_1006E52C8);
}

uint64_t sub_10047039C()
{
  v2 = *v1;
  v3 = *(*v1 + 576);
  v4 = *v1;
  v2[73] = v0;

  v5 = v2[71];
  if (v0)
  {
    v6 = v2[64];
    v7 = v2[22];

    v8 = sub_100471F0C;
  }

  else
  {
    v7 = v2[22];

    v8 = sub_1004704EC;
  }

  return _swift_task_switch(v8, v7, 0);
}

void sub_1004704EC()
{
  v249 = v0;
  v1 = v0;
  v2 = v0[73];
  v3 = v0[70];
  KeyPath = swift_getKeyPath();
  v5 = swift_task_alloc();
  *(v5 + 16) = sub_100473B04;
  *(v5 + 24) = KeyPath;

  os_unfair_lock_lock((v3 + 20));
  sub_100473B38((v3 + 16), v248);
  os_unfair_lock_unlock((v3 + 20));
  if (v2)
  {
    return;
  }

  v6 = v1[64];

  v7 = v248[0];

  v246 = v1;
  if (v7)
  {
    v8 = v1[67];
    v237 = v1[65];
    v242 = v1[66];
    v9 = v1[40];
    v10 = v1[36];
    v11 = v1[22];
    (*(v1[24] + 104))(v1[25], enum case for DIPError.Code.webPresentmentCancelled(_:), v1[23]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100473ABC(&qword_100834130, 255, &type metadata accessor for DIPError);
    v12 = swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    swift_unknownObjectRelease();
    v237(v9, v10);
    v13 = v1[18];
    swift_unknownObjectRelease();
    v14 = v11[23];
    v15 = UserDefaultsConfiguration.userDefaults.getter();
    static DaemonInternalDefaultsKeys.WebPresentment.scannableCodePayloadOutput.getter();
    v16 = String._bridgeToObjectiveC()();

    [v15 removeObjectForKey:{v16, 0xD00000000000002BLL, 0x8000000100717F00, 116}];

    v17 = v11[21];
    v11[21] = 0;
    v11[22] = 0;
    swift_unknownObjectRelease();
    v18 = (v1 + 63);
    goto LABEL_24;
  }

  if (!v1[18] || (objc_opt_self(), (v19 = swift_dynamicCastObjCClass()) == 0))
  {
    v39 = v1[53];
    defaultLogger()();
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&_mh_execute_header, v40, v41, "Could not cast returned credential to ASCDigitalIdentityCredential", v42, 2u);
    }

    v221 = v1[67];
    v239 = v1[66];
    v228 = v1[65];
    v43 = (v1 + 63);
    v44 = v1[63];
    v45 = v1[53];
    v47 = v1[47];
    v46 = v1[48];
    v213 = v1[36];
    v217 = v1[40];
    v49 = v1[24];
    v48 = v1[25];
    v50 = v1[23];
    v51 = v246[22];

    v44(v45, v47);
    v18 = v43;
    (*(v49 + 104))(v48, enum case for DIPError.Code.webPresentmentUnexpectedDaemonState(_:), v50);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100473ABC(&qword_100834130, 255, &type metadata accessor for DIPError);
    v12 = swift_allocError();
    v1 = v246;
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    swift_unknownObjectRelease();
    v228(v217, v213);
    swift_unknownObjectRelease();
    v52 = v51[23];
    v53 = UserDefaultsConfiguration.userDefaults.getter();
    static DaemonInternalDefaultsKeys.WebPresentment.scannableCodePayloadOutput.getter();
    v54 = String._bridgeToObjectiveC()();

    [v53 removeObjectForKey:{v54, 0xD00000000000002BLL, 0x8000000100717F00, 121}];

    v55 = v51[21];
    v51[21] = 0;
    v51[22] = 0;
    swift_unknownObjectRelease();
    goto LABEL_24;
  }

  v20 = v19;
  v21 = v1[59];
  swift_unknownObjectRetain();
  defaultLogger()();
  swift_unknownObjectRetain();
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();
  swift_unknownObjectRelease();
  v24 = os_log_type_enabled(v22, v23);
  v25 = v1 + 63;
  v26 = v1[63];
  v27 = v1[59];
  v28 = &selRef_setSupportedEncoding_;
  v29 = v1[47];
  v238 = v1[48];
  if (v24)
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v248[0] = v31;
    *v30 = 136315138;
    v32 = v25;
    v33 = [v20 commandResponseData];
    v220 = v27;
    v227 = v26;
    v34 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v35;

    v37 = Data.base64EncodedString(options:)(0);
    sub_10000B90C(v34, v36);
    v25 = v32;
    v28 = &selRef_setSupportedEncoding_;
    v38 = sub_100141FE4(v37._countAndFlagsBits, v37._object, v248);

    *(v30 + 4) = v38;
    _os_log_impl(&_mh_execute_header, v22, v23, "Received command response data from caBLE client: %s", v30, 0xCu);
    sub_10000BB78(v31);
    v1 = v246;

    v227(v220, v29);
  }

  else
  {

    v26(v27, v29);
  }

  v56 = type metadata accessor for JSONDecoder();
  v57 = *(v56 + 48);
  v58 = *(v56 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  v59 = [v20 v28[342]];
  v60 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v62 = v61;

  sub_100473B80();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  v63 = v1[58];
  sub_10000B90C(v60, v62);

  v64 = v1[5];
  v65 = v1[6];
  v66 = *(v1 + 56);
  defaultLogger()();
  sub_100410C30(v64, v65, v66);
  v67 = Logger.logObject.getter();
  v68 = v1;
  v69 = static os_log_type_t.debug.getter();
  sub_100410B88(v64, v65, v66);
  v70 = os_log_type_enabled(v67, v69);
  v71 = v68[63];
  v72 = v68[47];
  v222 = v72;
  v229 = v68[58];
  v214 = v25;
  v240 = v65;
  if (v70)
  {
    v73 = swift_slowAlloc();
    v207 = v71;
    v74 = swift_slowAlloc();
    v248[0] = v74;
    *v73 = 136315138;
    v68[8] = v64;
    v68[9] = v65;
    *(v68 + 80) = v66;
    v75 = v64;
    sub_100410C30(v64, v65, v66);
    v76 = String.init<A>(describing:)();
    v78 = sub_100141FE4(v76, v77, v248);

    *(v73 + 4) = v78;
    _os_log_impl(&_mh_execute_header, v67, v69, "Decoded command response from data: %s", v73, 0xCu);
    sub_10000BB78(v74);

    v207(v229, v222);
  }

  else
  {
    v75 = v64;

    v71(v229, v222);
  }

  if (v66)
  {
    v79 = v75;
    v218 = v75;
    if (v75 == 0x4E41435F52455355 && v240 == 0xEE0044454C4C4543 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v80 = v246[57];
      defaultLogger()();
      v81 = Logger.logObject.getter();
      v82 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v81, v82))
      {
        v83 = swift_slowAlloc();
        *v83 = 0;
        _os_log_impl(&_mh_execute_header, v81, v82, "Received cancelled error from caBLE client: user cancelled", v83, 2u);
      }

      v223 = v246[65];
      v230 = v246[66];
      v84 = v246[63];
      v85 = v246[57];
      v87 = v246[47];
      v86 = v246[48];
      v204 = v246[40];
      v208 = v246[67];
      v88 = v246[36];
      v89 = v246[25];
      v90 = v246[24];
      v91 = v246[23];
      v92 = v246[22];

      v84(v85, v87);
      (*(v90 + 104))(v89, enum case for DIPError.Code.webPresentmentCancelled(_:), v91);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100473ABC(&qword_100834130, 255, &type metadata accessor for DIPError);
      v12 = swift_allocError();
      v93 = 136;
    }

    else
    {
      if ((v75 != 0x415F454349564544 || v240 != 0xEE00444554524F42) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        v182 = v246[55];
        sub_100410C30(v75, v240, 1);
        defaultLogger()();
        sub_100410C30(v75, v240, 1);
        v183 = Logger.logObject.getter();
        v184 = static os_log_type_t.error.getter();
        sub_100410B88(v79, v240, 1);
        v185 = os_log_type_enabled(v183, v184);
        v186 = v246[63];
        v187 = v246[55];
        v188 = v246[47];
        v189 = v246[48];
        if (v185)
        {
          v190 = swift_slowAlloc();
          v235 = v186;
          v191 = swift_slowAlloc();
          v248[0] = v191;
          *v190 = 136315138;
          v192 = sub_100141FE4(v79, v240, v248);
          sub_100410B88(v79, v240, 1);
          *(v190 + 4) = v192;
          _os_log_impl(&_mh_execute_header, v183, v184, "Received other error from caBLE client: %s", v190, 0xCu);
          sub_10000BB78(v191);

          v235(v187, v188);
        }

        else
        {
          sub_100410B88(v79, v240, 1);

          v186(v187, v188);
        }

        v1 = v246;
        v193 = v246[67];
        v226 = v246[65];
        v236 = v246[66];
        v212 = v246[40];
        v194 = v246[36];
        v92 = v246[22];
        (*(v246[24] + 104))(v246[25], enum case for DIPError.Code.webPresentmentServiceUnavailable(_:), v246[23]);
        sub_1000402AC(_swiftEmptyArrayStorage);
        type metadata accessor for DIPError();
        sub_100473ABC(&qword_100834130, 255, &type metadata accessor for DIPError);
        v12 = swift_allocError();
        v195 = 142;
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();
        sub_100410B88(v218, v240, 1);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v226(v212, v194);
        goto LABEL_23;
      }

      v171 = v246[56];
      defaultLogger()();
      v172 = Logger.logObject.getter();
      v173 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v172, v173))
      {
        v174 = swift_slowAlloc();
        *v174 = 0;
        _os_log_impl(&_mh_execute_header, v172, v173, "Received cancelled error from caBLE client: device aborted", v174, 2u);
      }

      v223 = v246[65];
      v234 = v246[66];
      v175 = v246[63];
      v176 = v246[56];
      v178 = v246[47];
      v177 = v246[48];
      v204 = v246[40];
      v211 = v246[67];
      v88 = v246[36];
      v179 = v246[25];
      v180 = v246[24];
      v181 = v246[23];
      v92 = v246[22];

      v175(v176, v178);
      (*(v180 + 104))(v179, enum case for DIPError.Code.webPresentmentCancelled(_:), v181);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100473ABC(&qword_100834130, 255, &type metadata accessor for DIPError);
      v12 = swift_allocError();
      v93 = 139;
    }

    v195 = v93;
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_100410B88(v218, v240, 1);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v94 = v88;
    v1 = v246;
    v223(v204, v94);
LABEL_23:
    swift_unknownObjectRelease();
    v95 = v92[23];
    v96 = UserDefaultsConfiguration.userDefaults.getter();
    static DaemonInternalDefaultsKeys.WebPresentment.scannableCodePayloadOutput.getter();
    v97 = String._bridgeToObjectiveC()();

    [v96 removeObjectForKey:{v97, 0xD00000000000002BLL, 0x8000000100717F00, v195}];

    v98 = v92[21];
    v92[21] = 0;
    v92[22] = 0;
    swift_unknownObjectRelease();
    v18 = v214;
LABEL_24:
    v99 = *v18;
    type metadata accessor for Code(0);
    v1[11] = 12;
    swift_errorRetain();
    sub_100473ABC(&qword_1008330E8, 255, type metadata accessor for Code);
    v100 = static _ErrorCodeProtocol.~= infix(_:_:)();

    if ((v100 & 1) != 0 || (v1[12] = v12, swift_errorRetain(), sub_100007224(&qword_100833B90, &qword_1006D95C0), v101 = swift_dynamicCast(), v102 = v1[12], v103 = v1[13], , v101) && v103 == 4)
    {
      v104 = v1[50];
      defaultLogger()();
      swift_errorRetain();
      v105 = Logger.logObject.getter();
      v106 = static os_log_type_t.debug.getter();

      v107 = os_log_type_enabled(v105, v106);
      v108 = v1[50];
      v109 = v1[47];
      v110 = v1[48];
      if (v107)
      {
        v111 = swift_slowAlloc();
        v243 = v99;
        v112 = swift_slowAlloc();
        v248[0] = v112;
        *v111 = 136315138;
        v1[17] = v12;
        swift_errorRetain();
        sub_100007224(&qword_100833B90, &qword_1006D95C0);
        v113 = String.init<A>(describing:)();
        v115 = sub_100141FE4(v113, v114, v248);

        *(v111 + 4) = v115;
        v1 = v246;
        _os_log_impl(&_mh_execute_header, v105, v106, "Bridging ASC error to cancelled error: %s", v111, 0xCu);
        sub_10000BB78(v112);

        v243(v108, v109);
      }

      else
      {

        v99(v108, v109);
      }

      v116 = v1[31];
      v117 = v1[21];
      (*(v1[24] + 104))(v1[25], enum case for DIPError.Code.webPresentmentCancelled(_:), v1[23]);
      swift_errorRetain();
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100473ABC(&qword_100834130, 255, &type metadata accessor for DIPError);
      v118 = swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      v1[16] = v118;
    }

    else
    {
      v119 = v1[49];
      defaultLogger()();
      swift_errorRetain();
      v120 = Logger.logObject.getter();
      v121 = static os_log_type_t.debug.getter();

      v122 = os_log_type_enabled(v120, v121);
      v124 = v1[48];
      v123 = v1[49];
      v125 = v1[47];
      if (v122)
      {
        v244 = v99;
        v126 = swift_slowAlloc();
        v127 = swift_slowAlloc();
        v248[0] = v127;
        *v126 = 136315138;
        v1[15] = v12;
        swift_errorRetain();
        v128 = String.init<A>(describing:)();
        v130 = sub_100141FE4(v128, v129, v248);

        *(v126 + 4) = v130;
        v1 = v246;
        _os_log_impl(&_mh_execute_header, v120, v121, "Bridging ASC error to service unavailable error: %s", v126, 0xCu);
        sub_10000BB78(v127);

        v244(v123, v125);
      }

      else
      {

        v99(v123, v125);
      }

      v131 = v1[31];
      v132 = v1[21];
      (*(v1[24] + 104))(v1[25], enum case for DIPError.Code.webPresentmentServiceUnavailable(_:), v1[23]);
      swift_errorRetain();
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100473ABC(&qword_100834130, 255, &type metadata accessor for DIPError);
      v133 = swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      v1[14] = v133;
    }

    AsyncThrowingStream.Continuation.finish(throwing:)();

    goto LABEL_36;
  }

  v146 = v246;
  v147 = v246[54];
  sub_100410C30(v75, v240, 0);
  defaultLogger()();
  sub_100410C30(v75, v240, 0);
  v148 = Logger.logObject.getter();
  v149 = static os_log_type_t.debug.getter();
  sub_100410B88(v75, v240, 0);
  v150 = os_log_type_enabled(v148, v149);
  v151 = v246[63];
  v152 = v246[54];
  v153 = v246[47];
  v154 = v246[48];
  if (v150)
  {
    v155 = swift_slowAlloc();
    v232 = v151;
    v156 = swift_slowAlloc();
    v248[0] = v156;
    *v155 = 136315138;
    v157 = Data.base64EncodedString(options:)(0);
    v158 = sub_100141FE4(v157._countAndFlagsBits, v157._object, v248);

    *(v155 + 4) = v158;
    _os_log_impl(&_mh_execute_header, v148, v149, "Received encrypted response from caBLE client: %s", v155, 0xCu);
    sub_10000BB78(v156);

    v146 = v246;

    v232(v152, v153);
  }

  else
  {

    v151(v152, v153);
  }

  v159 = v146[68];
  v203 = v146[69];
  v206 = v146[67];
  v225 = v146[65];
  v233 = v146[66];
  v210 = v146[36];
  v216 = v146[40];
  v161 = v146[30];
  v160 = v146[31];
  v163 = v146[27];
  v162 = v146[28];
  v164 = v246[26];
  v165 = v246[22];
  v166 = v246[21];
  sub_100410C30(v75, v240, 0);
  WebPresentmentResponse.init(responseData:)();
  v1 = v246;
  swift_storeEnumTagMultiPayload();
  AsyncThrowingStream.Continuation.yield(_:)();
  v159(v161, v162);
  v246[19] = 0;
  AsyncThrowingStream.Continuation.finish(throwing:)();
  sub_100410B88(v75, v240, 0);
  sub_100410B88(v75, v240, 0);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v225(v216, v210);
  swift_unknownObjectRelease();
  v167 = v165[23];
  v168 = UserDefaultsConfiguration.userDefaults.getter();
  static DaemonInternalDefaultsKeys.WebPresentment.scannableCodePayloadOutput.getter();
  v169 = String._bridgeToObjectiveC()();

  [v168 removeObjectForKey:v169];

  v170 = v165[21];
  v165[21] = 0;
  v165[22] = 0;
  swift_unknownObjectRelease();
LABEL_36:
  v135 = v1[61];
  v134 = v1[62];
  v136 = v1;
  v137 = v1[60];
  v138 = v136[58];
  v139 = v136[59];
  v141 = v136[56];
  v140 = v136[57];
  v143 = v136[54];
  v142 = v136[55];
  v144 = v136[53];
  v196 = v136[52];
  v197 = v136[51];
  v198 = v136[50];
  v199 = v136[49];
  v200 = v136[46];
  v201 = v136[45];
  v202 = v136[44];
  v205 = v136[41];
  v209 = v136[40];
  v215 = v136[39];
  v219 = v136[38];
  v224 = v136[35];
  v231 = v136[34];
  v241 = v136[30];
  v245 = v136[27];
  v247 = v136[25];

  v145 = v136[1];

  v145();
}

uint64_t sub_100471F0C()
{
  v80 = v0;
  v1 = v0[67];
  v2 = v0[66];
  v3 = v0[65];
  v4 = v0[40];
  v5 = v0[36];
  v6 = v0[22];
  swift_unknownObjectRelease();
  v3(v4, v5);
  v7 = v0[18];
  swift_unknownObjectRelease();
  v8 = v6[23];
  v9 = UserDefaultsConfiguration.userDefaults.getter();
  static DaemonInternalDefaultsKeys.WebPresentment.scannableCodePayloadOutput.getter();
  v10 = String._bridgeToObjectiveC()();

  [v9 removeObjectForKey:v10];

  v11 = v6[21];
  v6[21] = 0;
  v6[22] = 0;
  swift_unknownObjectRelease();
  v12 = v0[73];
  v13 = v0[63];
  type metadata accessor for Code(0);
  v0[11] = 12;
  swift_errorRetain();
  sub_100473ABC(&qword_1008330E8, 255, type metadata accessor for Code);
  LOBYTE(v9) = static _ErrorCodeProtocol.~= infix(_:_:)();

  if ((v9 & 1) != 0 || (v0[12] = v12, swift_errorRetain(), sub_100007224(&qword_100833B90, &qword_1006D95C0), v14 = swift_dynamicCast(), v15 = v0[12], v16 = v0[13], , v14) && v16 == 4)
  {
    v17 = v0[50];
    defaultLogger()();
    swift_errorRetain();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();

    v20 = os_log_type_enabled(v18, v19);
    v21 = v0[50];
    v23 = v0[47];
    v22 = v0[48];
    if (v20)
    {
      v72 = v0[50];
      v24 = swift_slowAlloc();
      v75 = v13;
      v25 = swift_slowAlloc();
      v79 = v25;
      *v24 = 136315138;
      v0[17] = v12;
      swift_errorRetain();
      sub_100007224(&qword_100833B90, &qword_1006D95C0);
      v26 = String.init<A>(describing:)();
      v28 = sub_100141FE4(v26, v27, &v79);

      *(v24 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v18, v19, "Bridging ASC error to cancelled error: %s", v24, 0xCu);
      sub_10000BB78(v25);

      v75(v72, v23);
    }

    else
    {

      v13(v21, v23);
    }

    v29 = v0[31];
    v30 = v0[21];
    (*(v0[24] + 104))(v0[25], enum case for DIPError.Code.webPresentmentCancelled(_:), v0[23]);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100473ABC(&qword_100834130, 255, &type metadata accessor for DIPError);
    v31 = swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    v0[16] = v31;
  }

  else
  {
    v32 = v0[49];
    defaultLogger()();
    swift_errorRetain();
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.debug.getter();

    v35 = os_log_type_enabled(v33, v34);
    v37 = v0[48];
    v36 = v0[49];
    v73 = v0[47];
    if (v35)
    {
      v76 = v13;
      v38 = swift_slowAlloc();
      v70 = v36;
      v39 = swift_slowAlloc();
      v79 = v39;
      *v38 = 136315138;
      v0[15] = v12;
      swift_errorRetain();
      v40 = String.init<A>(describing:)();
      v42 = sub_100141FE4(v40, v41, &v79);

      *(v38 + 4) = v42;
      _os_log_impl(&_mh_execute_header, v33, v34, "Bridging ASC error to service unavailable error: %s", v38, 0xCu);
      sub_10000BB78(v39);

      v76(v70, v73);
    }

    else
    {

      v13(v36, v73);
    }

    v43 = v0[31];
    v44 = v0[21];
    (*(v0[24] + 104))(v0[25], enum case for DIPError.Code.webPresentmentServiceUnavailable(_:), v0[23]);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100473ABC(&qword_100834130, 255, &type metadata accessor for DIPError);
    v45 = swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    v0[14] = v45;
  }

  AsyncThrowingStream.Continuation.finish(throwing:)();

  v47 = v0[61];
  v46 = v0[62];
  v49 = v0[59];
  v48 = v0[60];
  v50 = v0[57];
  v51 = v0[58];
  v53 = v0[55];
  v52 = v0[56];
  v55 = v0[53];
  v54 = v0[54];
  v58 = v0[52];
  v59 = v0[51];
  v60 = v0[50];
  v61 = v0[49];
  v62 = v0[46];
  v63 = v0[45];
  v64 = v0[44];
  v65 = v0[41];
  v66 = v0[40];
  v67 = v0[39];
  v68 = v0[38];
  v69 = v0[35];
  v71 = v0[34];
  v74 = v0[30];
  v77 = v0[27];
  v78 = v0[25];

  v56 = v0[1];

  return v56();
}

uint64_t sub_1004726C4()
{
  v0 = type metadata accessor for WebPresentmentScannableCodeState();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  v2 = sub_100007224(&qword_100844F88, &qword_1006E52B8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v8 - v5;
  swift_storeEnumTagMultiPayload();
  sub_100007224(&qword_100844F78, &qword_1006E5298);
  AsyncThrowingStream.Continuation.yield(_:)();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_10047281C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a2;
  v9 = type metadata accessor for WebPresentmentCABLEClient();
  v10 = swift_task_alloc();
  *(v6 + 24) = v10;
  *v10 = v6;
  v10[1] = sub_100472970;

  return (sub_10043E374)(a5, a6, v9, &off_100810CF8);
}

uint64_t sub_100472970(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 32) = a1;

    return _swift_task_switch(sub_100472ABC, 0, 0);
  }
}

uint64_t sub_100472ABC()
{
  v1 = v0[2];
  v2 = *v1;
  *v1 = v0[4];
  swift_unknownObjectRelease();
  v3 = v0[1];

  return v3();
}

uint64_t sub_100472B2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a1;
  v29 = a2;
  v2 = type metadata accessor for PartialWebPresentmentRequest();
  v30 = *(v2 - 8);
  v31 = v2;
  v32 = *(v30 + 64);
  __chkstk_darwin(v2);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v34 = &v27 - v7;
  v8 = sub_100007224(&qword_100844F70, &qword_1006E5290);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v27 - v11;
  v13 = sub_100007224(&qword_100844F78, &qword_1006E5298);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v27 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v27 - v17;
  type metadata accessor for WebPresentmentScannableCodeState();
  (*(v9 + 104))(v12, enum case for AsyncThrowingStream.Continuation.BufferingPolicy.unbounded<A, B>(_:), v8);
  static AsyncThrowingStream.makeStream<>(of:throwing:bufferingPolicy:)();
  (*(v9 + 8))(v12, v8);
  v19 = type metadata accessor for TaskPriority();
  (*(*(v19 - 8) + 56))(v34, 1, 1, v19);
  v20 = v30;
  v21 = v31;
  (*(v30 + 16))(v4, v28, v31);
  (*(v14 + 16))(&v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v18, v13);
  v22 = v20;
  v23 = (*(v20 + 80) + 40) & ~*(v20 + 80);
  v24 = (v32 + *(v14 + 80) + v23) & ~*(v14 + 80);
  v25 = swift_allocObject();
  *(v25 + 2) = 0;
  *(v25 + 3) = 0;
  *(v25 + 4) = v33;
  (*(v22 + 32))(&v25[v23], v4, v21);
  (*(v14 + 32))(&v25[v24], v27, v13);

  sub_1003E653C(0, 0, v34, &unk_1006E52A8, v25);
  AsyncThrowingStream.Continuation.onTermination.setter();
  return (*(v14 + 8))(v18, v13);
}

uint64_t sub_100472F44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = sub_100027B9C;

  return sub_10046EBC0(a5, a6);
}

void sub_100472FF0(uint64_t a1)
{
  v2 = sub_100007224(&qword_100844F80, &qword_1006E52B0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v8 - v5;
  (*(v3 + 16))(&v8 - v5, a1, v2);
  LODWORD(a1) = (*(v3 + 88))(v6, v2);
  v7 = enum case for AsyncThrowingStream.Continuation.Termination.cancelled<A, B>(_:);
  (*(v3 + 8))(v6, v2);
  if (a1 == v7)
  {
    Task.cancel()();
  }
}

uint64_t sub_100473138()
{
  sub_10000BB78(v0 + 14);
  v1 = v0[20];

  v2 = v0[21];
  swift_unknownObjectRelease();
  v3 = v0[23];

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for WebPresentmentScannableCodeState()
{
  result = qword_100845010;
  if (!qword_100845010)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10047321C()
{
  v1 = type metadata accessor for PartialWebPresentmentRequest();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = sub_100007224(&qword_100844F78, &qword_1006E5298);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  v12 = *(v0 + 16);
  swift_unknownObjectRelease();
  v13 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_100473380(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for PartialWebPresentmentRequest() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(sub_100007224(&qword_100844F78, &qword_1006E5298) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100027B9C;

  return sub_100472F44(a1, v10, v11, v12, v1 + v6, v1 + v9);
}

uint64_t sub_1004734F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WebPresentmentResponse();
  v35 = *(v4 - 8);
  v36 = v4;
  v5 = *(v35 + 64);
  __chkstk_darwin(v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL();
  v34 = *(v8 - 8);
  v9 = *(v34 + 64);
  __chkstk_darwin(v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for WebPresentmentScannableCodeState();
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v33 - v17;
  v19 = sub_100007224(&qword_100845048, &unk_1006E5340);
  v20 = *(*(v19 - 8) + 64);
  v21 = __chkstk_darwin(v19 - 8);
  v23 = &v33 - v22;
  v24 = *(v21 + 56);
  sub_100473C48(a1, &v33 - v22);
  sub_100473C48(a2, &v23[v24]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_100473C48(v23, v16);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        (*(v35 + 8))(v16, v36);
        goto LABEL_13;
      }

      v27 = v35;
      v26 = v36;
      (*(v35 + 32))(v7, &v23[v24], v36);
      v28 = static WebPresentmentResponse.== infix(_:_:)();
      v29 = *(v27 + 8);
      v29(v7, v26);
      v29(v16, v26);
    }

    else
    {
      sub_100473C48(v23, v18);
      if (swift_getEnumCaseMultiPayload())
      {
        (*(v34 + 8))(v18, v8);
LABEL_13:
        sub_100473CAC(v23);
        v28 = 0;
        return v28 & 1;
      }

      v30 = v34;
      (*(v34 + 32))(v11, &v23[v24], v8);
      v28 = static URL.== infix(_:_:)();
      v31 = *(v30 + 8);
      v31(v11, v8);
      v31(v18, v8);
    }

    sub_100473D14(v23);
    return v28 & 1;
  }

  if (EnumCaseMultiPayload == 2)
  {
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      goto LABEL_13;
    }
  }

  else if (swift_getEnumCaseMultiPayload() != 3)
  {
    goto LABEL_13;
  }

  sub_100473D14(v23);
  v28 = 1;
  return v28 & 1;
}

uint64_t sub_1004738B0()
{
  v1 = sub_100007224(&qword_100844F78, &qword_1006E5298);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1004739BC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100027B9C;

  return sub_10047281C(a1, v4, v5, v6, v7, v8);
}

void sub_100473A84()
{
  os_unfair_lock_lock((v0 + 20));
  *(v0 + 16) = 1;

  os_unfair_lock_unlock((v0 + 20));
}

uint64_t sub_100473ABC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_100473B38@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  result = v4(*a1);
  *a2 = result & 1;
  return result;
}

unint64_t sub_100473B80()
{
  result = qword_100844F98;
  if (!qword_100844F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100844F98);
  }

  return result;
}

uint64_t sub_100473BD4()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for WebPresentmentResponse();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100473C48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WebPresentmentScannableCodeState();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100473CAC(uint64_t a1)
{
  v2 = sub_100007224(&qword_100845048, &unk_1006E5340);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100473D14(uint64_t a1)
{
  v2 = type metadata accessor for WebPresentmentScannableCodeState();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100473D74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v3 = type metadata accessor for IdentityDocumentRequestSceneIdentifier();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  v53 = *(v8 - 8);
  v54 = v8;
  v9 = *(v53 + 64);
  v10 = __chkstk_darwin(v8);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v50 - v14;
  v16 = __chkstk_darwin(v13);
  v51 = &v50 - v17;
  __chkstk_darwin(v16);
  v19 = &v50 - v18;
  v20 = type metadata accessor for MobileDocumentProviderRecord(0);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20);
  v24 = &v50 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(a1 + 16);
  v52 = v22;
  if (v25 != 1)
  {
    defaultLogger()();

    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 134217984;
      *(v39 + 4) = v25;

      _os_log_impl(&_mh_execute_header, v37, v38, "WebPresentmentManager %ld records present, cannot proceed directly to presentment sheet", v39, 0xCu);
    }

    else
    {
    }

    v28 = v20;
    (*(v53 + 8))(v12, v54);
    goto LABEL_20;
  }

  sub_100326DB8(a1 + ((*(v22 + 80) + 32) & ~*(v22 + 80)), v24);
  v26 = sub_100330A28();
  v28 = v20;
  if (v27)
  {
    if (v26 == 0xD000000000000012 && v27 == 0x80000001006FBDE0)
    {
    }

    else
    {
      v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v30 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    defaultLogger()();
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&_mh_execute_header, v45, v46, "WebPresentmentManager one record present, and that record is first party", v47, 2u);
    }

    (*(v53 + 8))(v19, v54);
    goto LABEL_25;
  }

LABEL_8:
  v31 = *&v24[*(v20 + 24)];
  (*(v4 + 104))(v7, enum case for IdentityDocumentRequestSceneIdentifier.iso18013MobileDocumentRequest(_:), v3);
  LOBYTE(v31) = sub_10032D9C0(v7, v31);
  (*(v4 + 8))(v7, v3);
  if (v31)
  {
    sub_100330370();
    if (v32)
    {

      v33 = v51;
      defaultLogger()();
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&_mh_execute_header, v34, v35, "WebPresentmentManager one record present, and that record is a 3rd party document provider that supports partial requests", v36, 2u);
      }

      (*(v53 + 8))(v33, v54);
LABEL_25:
      v48 = v55;
      sub_10047435C(v24, v55);
      v44 = v48;
      v43 = 0;
      return (*(v52 + 56))(v44, v43, 1, v28);
    }
  }

  defaultLogger()();
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&_mh_execute_header, v40, v41, "WebPresentmentManager unable to bypass selection view", v42, 2u);
  }

  (*(v53 + 8))(v15, v54);
  sub_100326E1C(v24);
LABEL_20:
  v43 = 1;
  v44 = v55;
  return (*(v52 + 56))(v44, v43, 1, v28);
}

uint64_t sub_10047435C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileDocumentProviderRecord(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004743C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[108] = v6;
  v7[107] = a6;
  v7[106] = a5;
  v7[105] = a4;
  v7[104] = a3;
  v7[103] = a2;
  v7[102] = a1;
  v8 = type metadata accessor for Logger();
  v7[109] = v8;
  v9 = *(v8 - 8);
  v7[110] = v9;
  v10 = *(v9 + 64) + 15;
  v7[111] = swift_task_alloc();
  v11 = type metadata accessor for DIPError.Code();
  v7[112] = v11;
  v12 = *(v11 - 8);
  v7[113] = v12;
  v13 = *(v12 + 64) + 15;
  v7[114] = swift_task_alloc();
  v14 = *(*(type metadata accessor for WalletPassPresentmentResponse() - 8) + 64) + 15;
  v7[115] = swift_task_alloc();
  v15 = type metadata accessor for PartialWebPresentmentRequest();
  v7[116] = v15;
  v16 = *(v15 - 8);
  v7[117] = v16;
  v17 = *(v16 + 64) + 15;
  v7[118] = swift_task_alloc();
  v18 = *(*(sub_100007224(&unk_100845860, &unk_1006BF9D0) - 8) + 64) + 15;
  v7[119] = swift_task_alloc();
  v19 = type metadata accessor for IdentityDocumentPresentmentConfiguration();
  v7[120] = v19;
  v20 = *(v19 - 8);
  v7[121] = v20;
  v21 = *(v20 + 64) + 15;
  v7[122] = swift_task_alloc();
  v22 = type metadata accessor for URL();
  v7[123] = v22;
  v23 = *(v22 - 8);
  v7[124] = v23;
  v24 = *(v23 + 64) + 15;
  v7[125] = swift_task_alloc();
  v25 = *(type metadata accessor for DigitalPresentmentSessionManager.Proposal() - 8);
  v7[126] = v25;
  v7[127] = *(v25 + 64);
  v7[128] = swift_task_alloc();
  v7[129] = swift_task_alloc();
  v7[130] = swift_task_alloc();

  return _swift_task_switch(sub_1004746E4, 0, 0);
}

uint64_t sub_1004746E4()
{
  v1 = *(v0 + 824);
  if (*(v1 + 16))
  {
    v2 = *(v0 + 1040);
    v3 = *(v0 + 1032);
    v4 = *(v0 + 1000);
    v5 = *(v0 + 992);
    v6 = *(v0 + 984);
    v7 = *(v0 + 832);
    v8 = *(type metadata accessor for DigitalPresentmentEligibleProposalData() - 8);
    sub_100478E5C(v1 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v3, type metadata accessor for DigitalPresentmentSessionManager.Proposal);
    sub_100478F24(v3, v2, type metadata accessor for DigitalPresentmentSessionManager.Proposal);
    PartialWebPresentmentRequest.originatingURL.getter();
    v9 = URL.host(percentEncoded:)(0);
    (*(v5 + 8))(v4, v6);
    v10 = *(v0 + 1040);
    if (v9.value._object)
    {
      sub_10000BA08((*(v0 + 864) + 96), *(*(v0 + 864) + 120));
      v11 = sub_1004352E0(v10);
      *(v0 + 1048) = v12;
      v13 = v11;
      v14 = v12;
      v15 = *(v0 + 976);
      v16 = *(v0 + 824);
      type metadata accessor for IdentityDocumentPresentmentConfigurationBuilder();
      v17 = swift_allocObject();
      *(v0 + 1056) = v17;
      *(v17 + 120) = 0u;
      *(v17 + 136) = 0u;
      *(v17 + 145) = 0u;
      *(v17 + 16) = v16;
      *(v17 + 56) = v13;
      *(v17 + 24) = 0u;
      *(v17 + 40) = 0u;
      *(v17 + 64) = v14;
      *(v17 + 72) = v9;
      *(v17 + 88) = 0x8000000000000000;

      sub_1001764AC(v15);
      v33 = *(v0 + 1040);
      v34 = *(v0 + 1024);
      v71 = v34;
      v91 = *(v0 + 1016);
      v70 = *(v0 + 1008);
      v35 = *(v0 + 952);
      v72 = v35;
      v83 = *(v0 + 944);
      v81 = *(v0 + 936);
      v85 = *(v0 + 928);
      v36 = *(v0 + 864);
      v89 = v36;
      v77 = *(v0 + 840);
      v79 = *(v0 + 832);
      v75 = *(v0 + 824);
      v74 = type metadata accessor for TaskPriority();
      v73 = *(*(v74 - 8) + 56);
      v73(v35, 1, 1, v74);
      sub_1003EB13C(v36, v0 + 16);
      sub_100478E5C(v33, v34, type metadata accessor for DigitalPresentmentSessionManager.Proposal);
      v37 = *(v70 + 80);
      v38 = (v37 + 240) & ~v37;
      v87 = v13;
      v39 = swift_allocObject();
      *(v39 + 16) = 0;
      *(v39 + 24) = 0;
      *(v39 + 32) = v13;
      *(v39 + 40) = v14;
      v40 = *(v0 + 160);
      *(v39 + 176) = *(v0 + 144);
      *(v39 + 192) = v40;
      *(v39 + 208) = *(v0 + 176);
      v41 = *(v0 + 192);
      v42 = *(v0 + 96);
      *(v39 + 112) = *(v0 + 80);
      *(v39 + 128) = v42;
      v43 = *(v0 + 128);
      *(v39 + 144) = *(v0 + 112);
      *(v39 + 160) = v43;
      v44 = *(v0 + 32);
      *(v39 + 48) = *(v0 + 16);
      *(v39 + 64) = v44;
      v45 = *(v0 + 64);
      *(v39 + 80) = *(v0 + 48);
      *(v39 + 96) = v45;
      *(v39 + 224) = v41;
      *(v39 + 232) = v75;
      sub_100478F24(v71, v39 + v38, type metadata accessor for DigitalPresentmentSessionManager.Proposal);
      *(v39 + ((v91 + v38 + 7) & 0xFFFFFFFFFFFFFFF8)) = v9;

      v76 = sub_1003E683C(0, 0, v72, &unk_1006E53E8, v39);
      *(v0 + 1064) = v76;
      v73(v72, 1, 1, v74);
      sub_1003EB13C(v89, v0 + 200);
      sub_100478E5C(v33, v71, type metadata accessor for DigitalPresentmentSessionManager.Proposal);
      v46 = swift_allocObject();
      *(v46 + 16) = 0;
      *(v46 + 24) = 0;
      v47 = *(v0 + 344);
      *(v46 + 160) = *(v0 + 328);
      *(v46 + 176) = v47;
      *(v46 + 192) = *(v0 + 360);
      *(v46 + 208) = *(v0 + 376);
      v48 = *(v0 + 280);
      *(v46 + 96) = *(v0 + 264);
      *(v46 + 112) = v48;
      v49 = *(v0 + 312);
      *(v46 + 128) = *(v0 + 296);
      *(v46 + 144) = v49;
      v50 = *(v0 + 216);
      *(v46 + 32) = *(v0 + 200);
      *(v46 + 48) = v50;
      v51 = *(v0 + 248);
      *(v46 + 64) = *(v0 + 232);
      *(v46 + 80) = v51;
      sub_100478F24(v71, v46 + ((v37 + 216) & ~v37), type metadata accessor for DigitalPresentmentSessionManager.Proposal);
      v52 = sub_100130970(0, 0, v72, &unk_1006E53F8, v46);
      *(v0 + 1072) = v52;
      v53 = *(v89 + 80);
      v54 = *(v89 + 88);
      sub_100020260(v77, v0 + 616);
      (*(v81 + 16))(v83, v79, v85);
      sub_100020260(v89, v0 + 656);
      *(v0 + 720) = type metadata accessor for WebPresentmentRequestAuthenticator();
      *(v0 + 728) = &off_100811F68;
      v55 = sub_100032DBC((v0 + 696));
      sub_100462018(v55);
      v56 = *(v54 + 16);
      *(v0 + 600) = v53;
      *(v0 + 608) = v54;
      sub_100032DBC((v0 + 576));

      v56(v0 + 616, v83, v0 + 656, v0 + 696, v76, v52, v53, v54);
      sub_100020260(v89 + 40, v0 + 736);
      v57 = sub_10000BA08((v0 + 736), *(v0 + 760));
      v58 = *(v0 + 600);
      v59 = *(v0 + 608);
      v60 = sub_10000BA08((v0 + 576), v58);
      *(v0 + 800) = v58;
      *(v0 + 808) = *(v59 + 8);
      v61 = sub_100032DBC((v0 + 776));
      (*(*(v58 - 8) + 16))(v61, v60, v58);
      if (v14)
      {
        v62 = v87;
      }

      else
      {
        v62 = 0x6E776F6E6B6E75;
      }

      if (!v14)
      {
        v14 = 0xE700000000000000;
      }

      v63 = *v57;
      v64 = swift_task_alloc();
      *(v0 + 1080) = v64;
      *v64 = v0;
      v64[1] = sub_100475308;
      v65 = *(v0 + 976);
      v66 = *(v0 + 920);
      v67 = *(v0 + 856);
      v68 = *(v0 + 848);
      v69 = *(v0 + 824);

      return sub_1004242EC(v66, v65, v0 + 776, v69, v62, v14, v68, v67);
    }

    (*(*(v0 + 904) + 104))(*(v0 + 912), enum case for DIPError.Code.webPresentmentMissingHost(_:), *(v0 + 896));
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100478740(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_100478EC4(v10, type metadata accessor for DigitalPresentmentSessionManager.Proposal);
  }

  else
  {
    (*(*(v0 + 904) + 104))(*(v0 + 912), enum case for DIPError.Code.webPresentmentNoEligibleDocuments(_:), *(v0 + 896));
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100478740(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  v18 = *(v0 + 888);
  defaultLogger()();
  swift_errorRetain();
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v21 = 138412290;
    swift_errorRetain();
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v21 + 4) = v23;
    *v22 = v23;
    _os_log_impl(&_mh_execute_header, v19, v20, "presentAuthorizationSheet failed with error %@", v21, 0xCu);
    sub_10000BE18(v22, &unk_100833B50, &unk_1006D8FB0);
  }

  v24 = *(v0 + 1040);
  v78 = *(v0 + 1032);
  v80 = *(v0 + 1024);
  v82 = *(v0 + 1000);
  v84 = *(v0 + 976);
  v86 = *(v0 + 952);
  v88 = *(v0 + 944);
  v90 = *(v0 + 920);
  v25 = *(v0 + 912);
  v26 = *(v0 + 904);
  v27 = *(v0 + 896);
  v28 = *(v0 + 888);
  v29 = *(v0 + 880);
  v30 = *(v0 + 872);

  (*(v29 + 8))(v28, v30);
  (*(v26 + 104))(v25, enum case for DIPError.Code.internalError(_:), v27);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100478740(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_100475308()
{
  v2 = *v1;
  v3 = *(*v1 + 1080);
  v8 = *v1;
  *(*v1 + 1088) = v0;

  if (v0)
  {
    if (*(v2 + 1048))
    {
      v4 = *(v2 + 1048);
    }

    v5 = sub_1004756D4;
  }

  else
  {
    if (*(v2 + 1048))
    {
      v6 = *(v2 + 1048);
    }

    sub_10000BB78((v2 + 776));
    v5 = sub_10047544C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10047544C()
{
  v1 = *(v0 + 1072);
  v2 = *(v0 + 1064);
  v3 = *(v0 + 1056);
  v4 = *(v0 + 1040);
  v22 = *(v0 + 1032);
  v23 = *(v0 + 1024);
  v5 = *(v0 + 968);
  v20 = *(v0 + 960);
  v21 = *(v0 + 976);
  v24 = *(v0 + 1000);
  v25 = *(v0 + 952);
  v6 = *(v0 + 920);
  v26 = *(v0 + 944);
  v27 = *(v0 + 912);
  v28 = *(v0 + 888);
  v7 = *(v0 + 816);
  sub_10000BB78((v0 + 736));
  sub_10000B8B8(*v6, *(v6 + 8));
  WebPresentmentResponse.init(responseData:)();
  sub_100478EC4(v6, type metadata accessor for WalletPassPresentmentResponse);
  sub_10000BB78((v0 + 576));
  sub_100007224(&qword_100843250, &qword_1006E0DF0);
  Task.cancel()();
  sub_100007224(&qword_10083B4C0, &qword_1006D98B8);
  sub_100007224(&qword_100833B90, &qword_1006D95C0);
  Task.cancel()();
  swift_setDeallocating();
  v8 = *(v3 + 16);

  v9 = *(v3 + 32);

  v10 = *(v3 + 48);

  v11 = *(v3 + 56);
  v12 = *(v3 + 72);
  v13 = *(v3 + 104);
  *(v0 + 544) = *(v3 + 88);
  *(v0 + 560) = v13;
  *(v0 + 512) = v11;
  *(v0 + 528) = v12;
  sub_100477D2C(v0 + 512);
  v14 = *(v3 + 136);
  v15 = *(v3 + 144);
  v16 = *(v3 + 152);
  v17 = *(v3 + 160);
  sub_1000B00AC(*(v3 + 120), *(v3 + 128));
  swift_deallocClassInstance();

  (*(v5 + 8))(v21, v20);
  sub_100478EC4(v4, type metadata accessor for DigitalPresentmentSessionManager.Proposal);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1004756D4()
{
  v1 = *(v0 + 1072);
  v2 = *(v0 + 1064);
  v3 = *(v0 + 1056);
  v4 = *(v0 + 1040);
  v5 = *(v0 + 976);
  v6 = *(v0 + 968);
  v7 = *(v0 + 960);
  sub_10000BB78((v0 + 776));
  sub_10000BB78((v0 + 736));
  sub_10000BB78((v0 + 576));
  sub_100007224(&qword_100843250, &qword_1006E0DF0);
  Task.cancel()();
  sub_100007224(&qword_10083B4C0, &qword_1006D98B8);
  sub_100007224(&qword_100833B90, &qword_1006D95C0);
  Task.cancel()();
  swift_setDeallocating();
  v8 = *(v3 + 16);

  v9 = *(v3 + 32);

  v10 = *(v3 + 48);

  v11 = *(v3 + 56);
  v12 = *(v3 + 72);
  v13 = *(v3 + 104);
  *(v0 + 480) = *(v3 + 88);
  *(v0 + 496) = v13;
  *(v0 + 448) = v11;
  *(v0 + 464) = v12;
  sub_100477D2C(v0 + 448);
  v14 = *(v3 + 136);
  v15 = *(v3 + 144);
  v16 = *(v3 + 152);
  v17 = *(v3 + 160);
  sub_1000B00AC(*(v3 + 120), *(v3 + 128));
  swift_deallocClassInstance();

  (*(v6 + 8))(v5, v7);
  sub_100478EC4(v4, type metadata accessor for DigitalPresentmentSessionManager.Proposal);
  v18 = *(v0 + 1088);
  v19 = *(v0 + 888);
  defaultLogger()();
  swift_errorRetain();
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v22 = 138412290;
    swift_errorRetain();
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v22 + 4) = v24;
    *v23 = v24;
    _os_log_impl(&_mh_execute_header, v20, v21, "presentAuthorizationSheet failed with error %@", v22, 0xCu);
    sub_10000BE18(v23, &unk_100833B50, &unk_1006D8FB0);
  }

  v25 = *(v0 + 1040);
  v34 = *(v0 + 1032);
  v35 = *(v0 + 1024);
  v36 = *(v0 + 1000);
  v37 = *(v0 + 976);
  v38 = *(v0 + 952);
  v39 = *(v0 + 944);
  v40 = *(v0 + 920);
  v26 = *(v0 + 912);
  v27 = *(v0 + 904);
  v28 = *(v0 + 896);
  v29 = *(v0 + 888);
  v30 = *(v0 + 880);
  v31 = *(v0 + 872);

  (*(v30 + 8))(v29, v31);
  (*(v27 + 104))(v26, enum case for DIPError.Code.internalError(_:), v28);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100478740(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_100475B34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[45] = v12;
  v8[46] = v13;
  v8[43] = a7;
  v8[44] = a8;
  v8[41] = a5;
  v8[42] = a6;
  v8[39] = a1;
  v8[40] = a4;
  v9 = *(type metadata accessor for DigitalPresentmentSessionManager.Proposal() - 8);
  v8[47] = v9;
  v8[48] = *(v9 + 64);
  v8[49] = swift_task_alloc();

  return _swift_task_switch(sub_100475C0C, 0, 0);
}

uint64_t sub_100475C0C()
{
  v1 = *(v0 + 336);
  *(v0 + 296) = *(v0 + 320);
  v2 = sub_10000BA08((v1 + 96), *(v1 + 120));
  *(v0 + 224) = &type metadata for WebPresentmentBrandConfigurationManager;
  *(v0 + 232) = &off_1008109C8;
  v3 = swift_allocObject();
  *(v0 + 200) = v3;
  sub_1003EB048(v2, v3 + 16);
  sub_100020260(v0 + 200, v0 + 240);
  v4 = swift_allocObject();
  *(v0 + 400) = v4;
  sub_10001F358((v0 + 240), v4 + 16);
  sub_10000BB78((v0 + 200));
  v5 = swift_task_alloc();
  *(v0 + 408) = v5;
  *(v5 + 16) = &unk_1006E5420;
  *(v5 + 24) = v4;
  v6 = _sSq13CoreIDVSharedE12asyncFlatMapyqd__SgACxYaqd_0_YKXEYaqd_0_YKs5ErrorRd_0_r0_lFTu[1];
  v7 = swift_task_alloc();
  *(v0 + 416) = v7;
  v8 = sub_100007224(&qword_10084A1D0, &qword_1006DB410);
  *v7 = v0;
  v7[1] = sub_100475DB0;

  return __sSq13CoreIDVSharedE12asyncFlatMapyqd__SgACxYaqd_0_YKXEYaqd_0_YKs5ErrorRd_0_r0_lF(v0 + 280, &unk_1006E5430, v5, v8, &type metadata for String, &type metadata for Never, &protocol witness table for Never);
}

uint64_t sub_100475DB0()
{
  v2 = *v1;
  v3 = *(*v1 + 416);
  v7 = *v1;

  if (!v0)
  {
    v5 = *(v2 + 400);
    v6 = *(v2 + 408);

    return _swift_task_switch(sub_100475ED0, 0, 0);
  }

  return result;
}

uint64_t sub_100475ED0()
{
  v2 = *(v0 + 384);
  v1 = *(v0 + 392);
  v3 = *(v0 + 376);
  v4 = *(v0 + 352);
  v25 = *(v0 + 360);
  v26 = *(v0 + 368);
  v5 = *(v0 + 344);
  v21 = *(v0 + 320);
  v22 = *(v0 + 328);
  v6 = *(v0 + 312);
  v23 = *(v0 + 288);
  v24 = *(v0 + 280);
  sub_1003EB13C(*(v0 + 336), v0 + 16);
  sub_100478E5C(v4, v1, type metadata accessor for DigitalPresentmentSessionManager.Proposal);
  v7 = (*(v3 + 80) + 208) & ~*(v3 + 80);
  v8 = (v2 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = swift_allocObject();
  v11 = *(v0 + 160);
  *(v10 + 152) = *(v0 + 144);
  *(v10 + 168) = v11;
  *(v10 + 184) = *(v0 + 176);
  v12 = *(v0 + 96);
  *(v10 + 88) = *(v0 + 80);
  *(v10 + 104) = v12;
  v13 = *(v0 + 128);
  *(v10 + 120) = *(v0 + 112);
  *(v10 + 136) = v13;
  v14 = *(v0 + 32);
  *(v10 + 24) = *(v0 + 16);
  *(v10 + 40) = v14;
  v15 = *(v0 + 64);
  *(v10 + 56) = *(v0 + 48);
  *(v10 + 16) = v5;
  *(v10 + 200) = *(v0 + 192);
  *(v10 + 72) = v15;
  sub_100478F24(v1, v10 + v7, type metadata accessor for DigitalPresentmentSessionManager.Proposal);
  v16 = (v10 + v8);
  *v16 = v21;
  v16[1] = v22;
  v17 = (v10 + v9);
  *v17 = v25;
  v17[1] = v26;
  v18 = (v10 + ((v9 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v18 = v24;
  v18[1] = v23;
  *v6 = &unk_1006E5448;
  v6[1] = v10;

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_100476090(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_1004760B4, 0, 0);
}

uint64_t sub_1004760B4()
{
  sub_10000BA08(*(v0 + 32), *(*(v0 + 32) + 24));
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_100476158;
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);

  return sub_100435D6C(v3, v2);
}

uint64_t sub_100476158(uint64_t a1)
{
  v2 = *(*v1 + 40);
  v4 = *v1;
  *(*v1 + 48) = a1;

  return _swift_task_switch(sub_100476258, 0, 0);
}

uint64_t sub_100476258()
{
  v1 = *(v0 + 48);
  if (v1)
  {
    v2 = static Locale.preferredLanguages.getter();
    v3 = sub_1004350A0(v2, v1);
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v6 = *(v0 + 8);

  return v6(v3, v5);
}

uint64_t sub_1004762FC(uint64_t a1, uint64_t *a2, int *a3)
{
  *(v3 + 16) = a1;
  v4 = *a2;
  v5 = a2[1];
  v9 = (a3 + *a3);
  v6 = a3[1];
  v7 = swift_task_alloc();
  *(v3 + 24) = v7;
  *v7 = v3;
  v7[1] = sub_1004763FC;

  return v9(v4, v5);
}

uint64_t sub_1004763FC(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 24);
  v6 = *(*v2 + 16);
  v9 = *v2;

  *v6 = a1;
  v6[1] = a2;
  v7 = *(v9 + 8);

  return v7();
}

uint64_t sub_10047651C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 168) = v32;
  *(v8 + 176) = v33;
  *(v8 + 152) = v31;
  *(v8 + 136) = a7;
  *(v8 + 144) = a8;
  *(v8 + 120) = a5;
  *(v8 + 128) = a6;
  *(v8 + 112) = a4;
  v11 = type metadata accessor for Logger();
  *(v8 + 184) = v11;
  v12 = *(v11 - 8);
  *(v8 + 192) = v12;
  v13 = *(v12 + 64) + 15;
  *(v8 + 200) = swift_task_alloc();
  v14 = *(*(sub_100007224(&unk_100844540, &unk_1006BFBC0) - 8) + 64) + 15;
  *(v8 + 208) = swift_task_alloc();
  v15 = *(*(sub_100007224(&qword_10083C3C0, &unk_1006DAA10) - 8) + 64) + 15;
  *(v8 + 216) = swift_task_alloc();
  v16 = type metadata accessor for IdentityDocumentElementCategoryGroups();
  *(v8 + 224) = v16;
  v17 = *(v16 - 8);
  *(v8 + 232) = v17;
  v18 = *(v17 + 64) + 15;
  *(v8 + 240) = swift_task_alloc();
  v19 = type metadata accessor for DIPError.Code();
  *(v8 + 248) = v19;
  v20 = *(v19 - 8);
  *(v8 + 256) = v20;
  v21 = *(v20 + 64) + 15;
  *(v8 + 264) = swift_task_alloc();
  v22 = type metadata accessor for DigitalPresentmentEligibleProposalData();
  *(v8 + 272) = v22;
  v23 = *(v22 - 8);
  *(v8 + 280) = v23;
  v24 = *(v23 + 64) + 15;
  *(v8 + 288) = swift_task_alloc();
  *(v8 + 296) = swift_task_alloc();
  v25 = swift_task_alloc();
  v26 = *a2;
  v27 = a2[1];
  *(v8 + 304) = v25;
  *(v8 + 312) = v26;
  v28 = *a3;
  *(v8 + 320) = v27;
  *(v8 + 328) = v28;

  return _swift_task_switch(sub_1004767B0, 0, 0);
}

uint64_t sub_1004767B0()
{
  v1 = *(v0 + 112);
  v2 = *(v1 + 16);
  if (!v2)
  {
LABEL_9:
    (*(*(v0 + 256) + 104))(*(v0 + 264), enum case for DIPError.Code.digitalPresentmentInvalidCredential(_:), *(v0 + 248));
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100478740(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
LABEL_19:
    v47 = *(v0 + 296);
    v46 = *(v0 + 304);
    v48 = *(v0 + 288);
    v49 = *(v0 + 264);
    v50 = *(v0 + 240);
    v52 = *(v0 + 208);
    v51 = *(v0 + 216);
    v53 = *(v0 + 200);

    v33 = *(v0 + 8);
LABEL_20:

    return v33();
  }

  v3 = *(v0 + 280);
  v4 = *(v0 + 288);
  v5 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v6 = *(v3 + 72);
  while (1)
  {
    v8 = *(v0 + 312);
    v7 = *(v0 + 320);
    v9 = *(v0 + 288);
    sub_100478E5C(v5, v9, type metadata accessor for DigitalPresentmentEligibleProposalData);
    if (*v9 == v8 && *(v4 + 8) == v7)
    {
      break;
    }

    v11 = *(v0 + 312);
    v12 = *(v0 + 320);
    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      break;
    }

    sub_100478EC4(*(v0 + 288), type metadata accessor for DigitalPresentmentEligibleProposalData);
    v5 += v6;
    if (!--v2)
    {
      goto LABEL_9;
    }
  }

  v13 = *(v0 + 296);
  v14 = *(v0 + 304);
  v15 = *(v0 + 120);
  sub_100478F24(*(v0 + 288), v13, type metadata accessor for DigitalPresentmentEligibleProposalData);
  sub_100478F24(v13, v14, type metadata accessor for DigitalPresentmentEligibleProposalData);
  if (*(*sub_10000BA08(v15, v15[3]) + 16))
  {
    v16 = *(v0 + 200);
    defaultLogger()();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();
    v19 = os_log_type_enabled(v17, v18);
    v20 = *(v0 + 304);
    v22 = *(v0 + 192);
    v21 = *(v0 + 200);
    v23 = *(v0 + 184);
    if (v19)
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Skipping transaction history save due to developer test mode being enabled", v24, 2u);
    }

    (*(v22 + 8))(v21, v23);
    sub_100478EC4(v20, type metadata accessor for DigitalPresentmentEligibleProposalData);
    v26 = *(v0 + 296);
    v25 = *(v0 + 304);
    v27 = *(v0 + 288);
    v28 = *(v0 + 264);
    v29 = *(v0 + 240);
    v31 = *(v0 + 208);
    v30 = *(v0 + 216);
    v32 = *(v0 + 200);

    v33 = *(v0 + 8);
    goto LABEL_20;
  }

  v34 = *(v0 + 304);
  v35 = *(v34 + *(*(v0 + 272) + 20));
  *(v0 + 336) = v35;
  if (!v35)
  {
    (*(*(v0 + 256) + 104))(*(v0 + 264), enum case for DIPError.Code.webPresentmentPassMissing(_:), *(v0 + 248));
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100478740(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    goto LABEL_18;
  }

  v36 = *(v0 + 328);
  v37 = *(v0 + 224);
  v38 = *(v0 + 232);
  v39 = *(v0 + 216);
  v40 = *(v0 + 128);
  v41 = *(v40 + 64);
  v42 = *(v40 + 72);

  IdentityDocumentElementCategoryGroups.init(documentType:documentElements:)();
  if ((*(v38 + 48))(v39, 1, v37) == 1)
  {
    v34 = *(v0 + 304);
    v44 = *(v0 + 256);
    v43 = *(v0 + 264);
    v45 = *(v0 + 248);
    sub_10000BE18(*(v0 + 216), &qword_10083C3C0, &unk_1006DAA10);
    (*(v44 + 104))(v43, enum case for DIPError.Code.webPresentmentMissingRequiredRequestElementPermission(_:), v45);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100478740(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

LABEL_18:
    sub_100478EC4(v34, type metadata accessor for DigitalPresentmentEligibleProposalData);
    goto LABEL_19;
  }

  v55 = *(v0 + 208);
  v57 = *(v0 + 152);
  v56 = *(v0 + 160);
  v64 = *(v0 + 136);
  (*(*(v0 + 232) + 32))(*(v0 + 240), *(v0 + 216), *(v0 + 224));
  *(v0 + 16) = v64;
  *(v0 + 32) = v57;
  *(v0 + 40) = v56;
  *(v0 + 64) = 0;
  *(v0 + 104) = 0x80;
  v58 = type metadata accessor for URL();
  (*(*(v58 - 8) + 56))(v55, 1, 1, v58);
  v59 = swift_task_alloc();
  *(v0 + 344) = v59;
  *v59 = v0;
  v59[1] = sub_100476F84;
  v60 = *(v0 + 240);
  v61 = *(v0 + 208);
  v62 = *(v0 + 168);
  v63 = *(v0 + 176);

  return sub_10050E820(v60, v0 + 16, 0, 0, v61, v62, v63, 0);
}

uint64_t sub_100476F84()
{
  v1 = *(*v0 + 344);
  v2 = *(*v0 + 208);
  v4 = *v0;

  sub_10000BE18(v2, &unk_100844540, &unk_1006BFBC0);

  return _swift_task_switch(sub_1004770AC, 0, 0);
}

uint64_t sub_1004770AC()
{
  v1 = v0[42];
  v2 = v0[38];
  v4 = v0[29];
  v3 = v0[30];
  v5 = v0[28];

  (*(v4 + 8))(v3, v5);
  sub_100478EC4(v2, type metadata accessor for DigitalPresentmentEligibleProposalData);
  v7 = v0[37];
  v6 = v0[38];
  v8 = v0[36];
  v9 = v0[33];
  v10 = v0[30];
  v12 = v0[26];
  v11 = v0[27];
  v13 = v0[25];

  v14 = v0[1];

  return v14();
}

uint64_t sub_1004771BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[27] = a4;
  v5[28] = a5;
  v5[26] = a1;
  v6 = type metadata accessor for DIPError.Code();
  v5[29] = v6;
  v7 = *(v6 - 8);
  v5[30] = v7;
  v8 = *(v7 + 64) + 15;
  v5[31] = swift_task_alloc();
  v9 = type metadata accessor for TimeoutError();
  v5[32] = v9;
  v10 = *(v9 - 8);
  v5[33] = v10;
  v11 = *(v10 + 64) + 15;
  v5[34] = swift_task_alloc();
  v5[35] = swift_task_alloc();
  v12 = *(type metadata accessor for DigitalPresentmentSessionManager.Proposal() - 8);
  v5[36] = v12;
  v5[37] = *(v12 + 64);
  v5[38] = swift_task_alloc();
  v13 = type metadata accessor for Logger();
  v5[39] = v13;
  v14 = *(v13 - 8);
  v5[40] = v14;
  v15 = *(v14 + 64) + 15;
  v5[41] = swift_task_alloc();

  return _swift_task_switch(sub_1004773A4, 0, 0);
}

uint64_t sub_100477620()
{
  v2 = *v1;
  v3 = *(*v1 + 344);
  v7 = *v1;
  *(*v1 + 352) = v0;

  if (v0)
  {
    v4 = sub_1004777F4;
  }

  else
  {
    v5 = *(v2 + 336);

    v4 = sub_10047773C;
  }

  return _swift_task_switch(v4, 0, 0);
}