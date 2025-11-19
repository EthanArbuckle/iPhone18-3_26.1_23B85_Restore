uint64_t sub_10041E87C()
{
  v1 = *(*v0 + 120);
  v3 = *v0;

  return _swift_task_switch(sub_10041E978, 0, 0);
}

uint64_t sub_10041E978()
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
    sub_100007224(&qword_100843CF8, &unk_1006E2078);
    AsyncThrowingStream.Continuation.yield(_:)();
    (*(v3 + 8))(v2, v4);
    goto LABEL_4;
  }

  v13 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v14 = swift_task_alloc();
  *(v0 + 120) = v14;
  *v14 = v0;
  v14[1] = sub_10041E87C;
  v15 = *(v0 + 112);
  v16 = *(v0 + 96);

  return AsyncStream.Iterator.next(isolation:)(v0 + 128, 0, 0, v16);
}

uint64_t sub_10041EB14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[4] = a3;
  v6 = type metadata accessor for CancellationError();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();
  v9 = type metadata accessor for RemoteWebPresentmentScannableCodeManager.StateTransition(0);
  v5[10] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v5[11] = swift_task_alloc();
  v11 = sub_100007224(&qword_100843CD8, &qword_1006E2058);
  v5[12] = v11;
  v12 = *(v11 - 8);
  v5[13] = v12;
  v13 = *(v12 + 64) + 15;
  v5[14] = swift_task_alloc();
  v14 = type metadata accessor for WebPresentmentRequest();
  v5[15] = v14;
  v15 = *(v14 - 8);
  v5[16] = v15;
  v16 = *(v15 + 64) + 15;
  v5[17] = swift_task_alloc();

  return _swift_task_switch(sub_10041ECCC, 0, 0);
}

uint64_t sub_10041ECCC()
{
  v1 = v0[4];
  v2 = v1[5];
  v3 = v1[6];
  sub_10000BA08(v1 + 2, v2);
  v4 = *(v3 + 8);
  v10 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[18] = v6;
  *v6 = v0;
  v6[1] = sub_10041EE00;
  v7 = v0[17];
  v8 = v0[5];

  return v10(v7, v8, v2, v3);
}

uint64_t sub_10041EE00()
{
  v2 = *(*v1 + 144);
  v5 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = sub_10041F050;
  }

  else
  {
    v3 = sub_10041EF14;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10041EF14()
{
  v2 = v0[16];
  v1 = v0[17];
  v4 = v0[14];
  v3 = v0[15];
  v5 = v0[12];
  v6 = v0[13];
  v7 = v0[10];
  v8 = v0[6];
  (*(v2 + 16))(v0[11], v1, v3);
  swift_storeEnumTagMultiPayload();
  sub_100007224(&qword_100843CF8, &unk_1006E2078);
  AsyncThrowingStream.Continuation.yield(_:)();
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  v9 = v0[17];
  v10 = v0[14];
  v11 = v0[11];
  v12 = v0[9];

  v13 = v0[1];

  return v13();
}

uint64_t sub_10041F050()
{
  *(v0 + 16) = *(v0 + 152);
  v1 = *(v0 + 72);
  v2 = *(v0 + 56);
  swift_errorRetain();
  sub_100007224(&qword_100833B90, &qword_1006D95C0);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 152);
    v4 = *(v0 + 48);
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
    *(v0 + 24) = v3;
    sub_100007224(&qword_100843CF8, &unk_1006E2078);
    AsyncThrowingStream.Continuation.finish(throwing:)();
  }

  else
  {
    v6 = *(v0 + 104);
    v5 = *(v0 + 112);
    v7 = *(v0 + 96);
    v8 = *(v0 + 80);
    v9 = *(v0 + 48);
    **(v0 + 88) = *(v0 + 152);
    swift_storeEnumTagMultiPayload();
    sub_100007224(&qword_100843CF8, &unk_1006E2078);
    AsyncThrowingStream.Continuation.yield(_:)();
    (*(v6 + 8))(v5, v7);
  }

  v10 = *(v0 + 136);
  v11 = *(v0 + 112);
  v12 = *(v0 + 88);
  v13 = *(v0 + 72);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_10041F1D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v5 = type metadata accessor for CancellationError();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = type metadata accessor for RemoteWebPresentmentScannableCodeManager.StateTransition(0);
  v4[9] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v4[10] = swift_task_alloc();
  v10 = sub_100007224(&qword_100843CD8, &qword_1006E2058);
  v4[11] = v10;
  v11 = *(v10 - 8);
  v4[12] = v11;
  v12 = *(v11 + 64) + 15;
  v4[13] = swift_task_alloc();

  return _swift_task_switch(sub_10041F32C, 0, 0);
}

uint64_t sub_10041F32C()
{
  v1 = async function pointer to withTaskCancellationHandler<A>(operation:onCancel:isolation:)[1];
  v2 = swift_task_alloc();
  *(v0 + 112) = v2;
  *v2 = v0;
  v2[1] = sub_10041F400;
  v3 = *(v0 + 32);

  return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v2, &unk_1006E2200);
}

uint64_t sub_10041F400()
{
  v2 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_10041F58C;
  }

  else
  {
    v3 = sub_10041F514;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10041F514()
{
  v1 = v0[13];
  v2 = v0[10];
  v3 = v0[8];

  v4 = v0[1];

  return v4();
}

uint64_t sub_10041F58C()
{
  *(v0 + 16) = *(v0 + 120);
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);
  swift_errorRetain();
  sub_100007224(&qword_100833B90, &qword_1006D95C0);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 120);
    v4 = *(v0 + 40);
    (*(*(v0 + 56) + 8))(*(v0 + 64), *(v0 + 48));
    *(v0 + 24) = v3;
    sub_100007224(&qword_100843CF8, &unk_1006E2078);
    AsyncThrowingStream.Continuation.finish(throwing:)();
  }

  else
  {
    v6 = *(v0 + 96);
    v5 = *(v0 + 104);
    v7 = *(v0 + 88);
    v8 = *(v0 + 72);
    v9 = *(v0 + 40);
    **(v0 + 80) = *(v0 + 120);
    swift_storeEnumTagMultiPayload();
    sub_100007224(&qword_100843CF8, &unk_1006E2078);
    AsyncThrowingStream.Continuation.yield(_:)();
    (*(v6 + 8))(v5, v7);
  }

  v10 = *(v0 + 104);
  v11 = *(v0 + 80);
  v12 = *(v0 + 64);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_10041F724()
{
  v1 = *(v0 + 16);
  v2 = v1[5];
  v3 = v1[6];
  sub_10000BA08(v1 + 2, v2);
  v4 = *(v3 + 32);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 24) = v6;
  *v6 = v0;
  v6[1] = sub_100399D0C;

  return v8(v2, v3);
}

uint64_t sub_10041F84C(uint64_t a1)
{
  v2 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v9 - v4;
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = a1;

  sub_1003E653C(0, 0, v5, &unk_1006E2218, v7);
}

uint64_t sub_10041F978()
{
  v1 = *(v0 + 16);
  v2 = v1[5];
  v3 = v1[6];
  sub_10000BA08(v1 + 2, v2);
  v4 = *(v3 + 24);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 24) = v6;
  *v6 = v0;
  v6[1] = sub_100399D0C;

  return v8(v2, v3);
}

uint64_t *sub_10041FAA0()
{
  sub_10000BB78(v0 + 2);
  sub_10000BB78(v0 + 7);
  sub_10000BB78(v0 + 12);
  sub_10000BB78(v0 + 17);
  sub_10000BB78(v0 + 22);
  sub_10000BB78(v0 + 27);
  sub_10000BB78(v0 + 32);
  sub_10000BB78(v0 + 37);
  sub_10000BB78(v0 + 42);
  v1 = v0[47];

  return v0;
}

uint64_t sub_10041FB08()
{
  sub_10041FAA0();

  return swift_deallocClassInstance();
}

uint64_t sub_10041FBA4()
{
  v2 = *(sub_100007224(&qword_100843CF8, &unk_1006E2078) - 8);
  v3 = (*(v2 + 80) + 80) & ~*(v2 + 80);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100041F04;

  return sub_10041DFEC(v4, v5, v6, (v0 + 5), v0 + v3);
}

uint64_t sub_10041FCA0()
{
  v2 = *(sub_100007224(&qword_100843CF8, &unk_1006E2078) - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100041F04;

  return sub_10041E5A8(v4, v5, v6, v0 + v3);
}

uint64_t sub_10041FDA8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_10041FDC8, 0, 0);
}

uint64_t sub_10041FDC8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = type metadata accessor for WebPresentmentRequest();
  (*(*(v3 - 8) + 16))(v1, v2, v3);
  v4 = v0[1];

  return v4();
}

uint64_t sub_10041FE64(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10041FEAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10041FF14()
{
  v1 = type metadata accessor for MobileDocumentProviderRecord(0);
  v2 = *(*(v1 - 8) + 80);
  v21 = *(*(v1 - 8) + 64);
  v22 = sub_100007224(&qword_100843D08, &qword_1006E2090);
  v3 = *(*(v22 - 8) + 80);
  v23 = *(*(v22 - 8) + 64);
  v4 = *(v0 + 2);
  swift_unknownObjectRelease();
  v5 = *(v0 + 4);

  v6 = *(v0 + 5);

  v7 = &v0[(v2 + 48) & ~v2];
  type metadata accessor for MobileDocumentProviderRecord.RecordSource(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v9 = type metadata accessor for BundleRecord();
  v10 = *(v9 - 8);
  v11 = *(v10 + 8);
  v11(v7, v9);
  if (EnumCaseMultiPayload == 1)
  {
    v12 = *&v7[*(sub_100007224(&unk_100844370, &unk_1006DDF00) + 48)];
  }

  else
  {
    v13 = *(sub_100007224(&unk_100844380, &unk_1006DDD60) + 48);
    if (!(*(v10 + 48))(&v7[v13], 1, v9))
    {
      v11(&v7[v13], v9);
    }
  }

  v14 = (((v2 + 48) & ~v2) + v21 + v3) & ~v3;
  v15 = *&v7[*(v1 + 20)];

  v16 = *&v7[*(v1 + 24)];

  v17 = sub_100007224(&qword_100843D18, &qword_1006E20C0);
  (*(*(v17 - 8) + 8))(&v0[v14], v17);
  v18 = *(v22 + 48);
  v19 = sub_100007224(&qword_100843CF8, &unk_1006E2078);
  (*(*(v19 - 8) + 8))(&v0[v14 + v18], v19);

  return _swift_deallocObject(v0, v14 + v23, v2 | v3 | 7);
}

uint64_t sub_1004201F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&qword_100843D08, &qword_1006E2090);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100420268()
{
  v2 = *(type metadata accessor for MobileDocumentProviderRecord(0) - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = *(sub_100007224(&qword_100843D08, &qword_1006E2090) - 8);
  v6 = (v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = v0[2];
  v8 = v0[3];
  v9 = v0[4];
  v10 = v0[5];
  v11 = swift_task_alloc();
  *(v1 + 16) = v11;
  *v11 = v1;
  v11[1] = sub_100041F04;

  return sub_10041AF18(v7, v8, v9, v10, v0 + v3, v0 + v6);
}

uint64_t sub_1004203C8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100420400()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100041F04;

  return sub_10045DA68(v2);
}

uint64_t sub_1004204AC()
{
  v1 = (sub_100007224(&qword_100843D08, &qword_1006E2090) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 96) & ~v2;
  v4 = *(*v1 + 64);
  v5 = v0[2];
  swift_unknownObjectRelease();
  v6 = v0[4];

  v7 = v0[5];

  v8 = v0[6];

  sub_10000BB78(v0 + 7);
  v9 = sub_100007224(&qword_100843D18, &qword_1006E20C0);
  (*(*(v9 - 8) + 8))(v0 + v3, v9);
  v10 = v1[14];
  v11 = sub_100007224(&qword_100843CF8, &unk_1006E2078);
  (*(*(v11 - 8) + 8))(v0 + v3 + v10, v11);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100420610()
{
  v2 = *(sub_100007224(&qword_100843D08, &qword_1006E2090) - 8);
  v3 = (*(v2 + 80) + 96) & ~*(v2 + 80);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[6];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_100041F04;

  return sub_10041980C(v4, v5, v6, v7, v8, (v0 + 7), v0 + v3);
}

uint64_t sub_100420720(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100420788()
{
  v1 = type metadata accessor for MobileDocumentProviderUserSelection();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = (sub_100007224(&qword_100843D08, &qword_1006E2090) - 8);
  v7 = *(*v6 + 80);
  v8 = (v5 + v7) & ~v7;
  v9 = v3 | v7;
  v10 = (*(*v6 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 47) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v0 + 16);
  swift_unknownObjectRelease();
  v13 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);
  v14 = sub_100007224(&qword_100843D18, &qword_1006E20C0);
  (*(*(v14 - 8) + 8))(v0 + v8, v14);
  v15 = v6[14];
  v16 = sub_100007224(&qword_100843CF8, &unk_1006E2078);
  (*(*(v16 - 8) + 8))(v0 + v8 + v15, v16);
  sub_10000BB78((v0 + v10));
  v17 = *(v0 + v11);

  return _swift_deallocObject(v0, v11 + 8, v9 | 7);
}

uint64_t sub_100420984()
{
  v2 = *(type metadata accessor for MobileDocumentProviderUserSelection() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = *(sub_100007224(&qword_100843D08, &qword_1006E2090) - 8);
  v6 = (v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = v0[2];
  v9 = v0[3];
  v10 = v0[4];
  v11 = *(v0 + ((v7 + 47) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v1 + 16) = v12;
  *v12 = v1;
  v12[1] = sub_100041F04;

  return sub_100418E54(v8, v9, v10, v0 + v3, v0 + v6, v0 + v7, v11);
}

uint64_t sub_100420B1C()
{
  v1 = type metadata accessor for MobileDocumentProviderUserSelection();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);
  sub_10000BB78((v0 + v5));

  return _swift_deallocObject(v0, v5 + 40, v3 | 7);
}

uint64_t sub_100420BFC()
{
  v2 = *(type metadata accessor for MobileDocumentProviderUserSelection() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0[2];
  v6 = v0[3];
  v7 = v0[4];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_100041F04;

  return sub_10041879C(v5, v6, v7, v0 + v3, v0 + v4);
}

uint64_t sub_100420D14(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&qword_100843CE0, &qword_1006E2060);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100420D84()
{
  v1 = type metadata accessor for PartialWebPresentmentRequest();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (sub_100007224(&qword_100843D08, &qword_1006E2090) - 8);
  v7 = *(*v6 + 80);
  v8 = (v5 + v7 + 8) & ~v7;
  v9 = *(*v6 + 64);
  v10 = *(type metadata accessor for ImmediateWebPresentmentRequestReleaser(0) - 8);
  v11 = *(v10 + 80);
  v12 = (v8 + v9 + v11) & ~v11;
  v22 = *(v10 + 64);
  v13 = v3 | v11 | v7;
  v14 = *(v0 + 16);
  swift_unknownObjectRelease();
  v15 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);
  v16 = *(v0 + v5);

  v17 = sub_100007224(&qword_100843D18, &qword_1006E20C0);
  (*(*(v17 - 8) + 8))(v0 + v8, v17);
  v18 = v6[14];
  v19 = sub_100007224(&qword_100843CF8, &unk_1006E2078);
  (*(*(v19 - 8) + 8))(v0 + v8 + v18, v19);
  v20 = type metadata accessor for WebPresentmentRequest();
  (*(*(v20 - 8) + 8))(v0 + v12, v20);

  return _swift_deallocObject(v0, v12 + v22, v13 | 7);
}

uint64_t sub_100421014()
{
  v2 = *(type metadata accessor for PartialWebPresentmentRequest() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(sub_100007224(&qword_100843D08, &qword_1006E2090) - 8);
  v6 = (v4 + *(v5 + 80) + 8) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for ImmediateWebPresentmentRequestReleaser(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v0[2];
  v11 = v0[3];
  v12 = v0[4];
  v13 = *(v0 + v4);
  v14 = swift_task_alloc();
  *(v1 + 16) = v14;
  *v14 = v1;
  v14[1] = sub_100041F04;

  return sub_100417AC4(v10, v11, v12, v0 + v3, v13, v0 + v6, v0 + v9);
}

uint64_t sub_1004211E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100421240()
{
  v1 = (sub_100007224(&qword_100843D08, &qword_1006E2090) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + 32);

  v7 = sub_100007224(&qword_100843D18, &qword_1006E20C0);
  (*(*(v7 - 8) + 8))(v0 + v3, v7);
  v8 = v1[14];
  v9 = sub_100007224(&qword_100843CF8, &unk_1006E2078);
  (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10042138C()
{
  v2 = *(sub_100007224(&qword_100843D08, &qword_1006E2090) - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100041F04;

  return sub_100417304(v4, v5, v6, v0 + v3);
}

uint64_t sub_100421484()
{
  v2 = *(type metadata accessor for URL() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = *(sub_100007224(&qword_100843CF8, &unk_1006E2078) - 8);
  v6 = (v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = v0[2];
  v8 = v0[3];
  v9 = v0[4];
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_100041F04;

  return sub_10041EB14(v7, v8, v9, v0 + v3, v0 + v6);
}

uint64_t sub_1004215D8()
{
  v2 = *(sub_100007224(&qword_100843CF8, &unk_1006E2078) - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100041F04;

  return sub_10041F1D4(v4, v5, v6, v0 + v3);
}

uint64_t sub_1004216D0()
{
  v1 = type metadata accessor for WebPresentmentResponse();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = (sub_100007224(&qword_100843D08, &qword_1006E2090) - 8);
  v7 = *(*v6 + 80);
  v8 = (v5 + v7) & ~v7;
  v9 = *(*v6 + 64);
  v10 = v3 | v7;
  v11 = *(v0 + 2);
  swift_unknownObjectRelease();
  v12 = *(v0 + 4);

  v13 = *(v0 + 5);

  (*(v2 + 8))(&v0[v4], v1);
  v14 = sub_100007224(&qword_100843D18, &qword_1006E20C0);
  (*(*(v14 - 8) + 8))(&v0[v8], v14);
  v15 = v6[14];
  v16 = sub_100007224(&qword_100843CF8, &unk_1006E2078);
  (*(*(v16 - 8) + 8))(&v0[v8 + v15], v16);

  return _swift_deallocObject(v0, v8 + v9, v10 | 7);
}

uint64_t sub_1004218A8()
{
  v2 = *(type metadata accessor for WebPresentmentResponse() - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = *(sub_100007224(&qword_100843D08, &qword_1006E2090) - 8);
  v6 = (v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = v0[2];
  v8 = v0[3];
  v9 = v0[4];
  v10 = v0[5];
  v11 = swift_task_alloc();
  *(v1 + 16) = v11;
  *v11 = v1;
  v11[1] = sub_100041F04;

  return sub_100416B50(v7, v8, v9, v10, v0 + v3, v0 + v6);
}

uint64_t sub_100421A08()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  sub_10000BB78(v0 + 4);
  v2 = v0[9];

  v3 = v0[10];

  v4 = v0[11];

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_100421A60()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[9];
  v5 = v0[10];
  v6 = v0[11];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100041F04;

  return sub_100415914(v2, v3, (v0 + 4), v4, v5, v6);
}

uint64_t sub_100421B20()
{
  v1 = sub_100007224(&qword_100843CF8, &unk_1006E2078);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 80) & ~v3;
  v5 = *(v2 + 64);
  v6 = v0[2];
  swift_unknownObjectRelease();
  v7 = v0[4];

  sub_10000BB78(v0 + 5);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100421C00()
{
  v2 = *(sub_100007224(&qword_100843CF8, &unk_1006E2078) - 8);
  v3 = (*(v2 + 80) + 80) & ~*(v2 + 80);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100041F04;

  return sub_10041BE2C(v4, v5, v6, (v0 + 5), v0 + v3);
}

uint64_t sub_100421CFC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100027B9C;

  return sub_10041F704(a1, v1);
}

uint64_t sub_100421DA0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100421DE0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100041F04;

  return sub_10041F958(a1, v4, v5, v6);
}

uint64_t sub_100421E98()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = sub_100007224(&qword_100843CF8, &unk_1006E2078);
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

uint64_t sub_100422000()
{
  v1 = sub_100007224(&qword_100843CF8, &unk_1006E2078);
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

uint64_t sub_1004220D8()
{
  v2 = *(sub_100007224(&qword_100843CF8, &unk_1006E2078) - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100027B9C;

  return sub_10041F1D4(v4, v5, v6, v0 + v3);
}

uint64_t sub_1004221E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WebPresentmentRequest();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100422264(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WebPresentmentRequest();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1004222D4()
{
  result = type metadata accessor for WebPresentmentRequest();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_100422340()
{
  type metadata accessor for WebPresentmentRequest();
  if (v0 <= 0x3F)
  {
    type metadata accessor for MobileDocumentProviderUserSelection();
    if (v1 <= 0x3F)
    {
      sub_100422440(319, &qword_100843E58, type metadata accessor for MobileDocumentProviderRecord);
      if (v2 <= 0x3F)
      {
        sub_100422440(319, &qword_100843E60, sub_10042248C);
        if (v3 <= 0x3F)
        {
          type metadata accessor for WebPresentmentResponse();
          if (v4 <= 0x3F)
          {
            sub_1004224E4();
            if (v5 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_100422440(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_10042248C()
{
  if (!qword_10083BDB0)
  {
    type metadata accessor for DigitalPresentmentEligibleProposalData();
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_10083BDB0);
    }
  }
}

unint64_t sub_1004224E4()
{
  result = qword_100843E68;
  if (!qword_100843E68)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_100843E68);
  }

  return result;
}

uint64_t sub_10042258C()
{
  if ((DeviceInformationProvider.isSimulator.getter() & 1) == 0)
  {
    v1 = [objc_opt_self() standardUserDefaults];
    static DaemonDefaultsKeys.developerTestPresentmentMode.getter();
    v2 = String._bridgeToObjectiveC()();

    v3 = [v1 stringForKey:v2];

    if (v3)
    {
      v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v6 = v5;

      v7 = static DaemonDefaultsKeys.developerTestPresentmentModeIdentityTestKey.getter();
      if (v6)
      {
        if (v4 == v7 && v6 == v8)
        {

          v0 = 1;
        }

        else
        {
          v0 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        goto LABEL_13;
      }
    }

    else
    {
      static DaemonDefaultsKeys.developerTestPresentmentModeIdentityTestKey.getter();
    }

    v0 = 0;
LABEL_13:

    return v0 & 1;
  }

  v0 = 1;
  return v0 & 1;
}

uint64_t sub_1004226B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceInformationProvider();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100422738(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceInformationProvider();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for WalletPassPresentmentInternalSettingsProvider()
{
  result = qword_100843EF0;
  if (!qword_100843EF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1004227F4()
{
  result = type metadata accessor for DeviceInformationProvider();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100422860(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = type metadata accessor for DIPError.Code();
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
  v2[13] = swift_task_alloc();
  v9 = type metadata accessor for String.StandardComparator();
  v2[14] = v9;
  v10 = *(v9 - 8);
  v2[15] = v10;
  v11 = *(v10 + 64) + 15;
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v12 = *(type metadata accessor for DigitalPresentmentSessionManager.Proposal() - 8);
  v2[18] = v12;
  v13 = *(v12 + 64) + 15;
  v2[19] = swift_task_alloc();
  v14 = type metadata accessor for DigitalPresentmentEligibleProposalData();
  v2[20] = v14;
  v15 = *(v14 - 8);
  v2[21] = v15;
  v16 = *(v15 + 64) + 15;
  v2[22] = swift_task_alloc();
  v17 = *(*(type metadata accessor for DIPSignpost.Config() - 8) + 64) + 15;
  v2[23] = swift_task_alloc();
  v18 = type metadata accessor for DIPSignpost();
  v2[24] = v18;
  v19 = *(v18 - 8);
  v2[25] = v19;
  v20 = *(v19 + 64) + 15;
  v2[26] = swift_task_alloc();

  return _swift_task_switch(sub_100422B2C, v1, 0);
}

uint64_t sub_100422B2C()
{
  v1 = v0[26];
  v2 = v0[23];
  v3 = v0[6];
  static DaemonSignposts.requestDocumentCreateProposal.getter();
  DIPSignpost.init(_:)();
  v4 = *sub_10000BA08((v3 + 112), *(v3 + 136));
  v5 = swift_task_alloc();
  v0[27] = v5;
  *v5 = v0;
  v5[1] = sub_100422BF8;
  v6 = v0[5];

  return sub_10015EB18(v6);
}

uint64_t sub_100422BF8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 216);
  v6 = *v2;
  *(v4 + 224) = a1;
  *(v4 + 232) = v1;

  v7 = *(v3 + 48);
  if (v1)
  {
    v8 = sub_1004237EC;
  }

  else
  {
    v8 = sub_100422D2C;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100422D2C()
{
  v103 = v1;
  v3 = v1[28];
  v4 = v1[26];
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  v5 = *(v3 + 16);
  v6 = v1[28];
  if (!v5)
  {
    v22 = v1[12];
    v23 = v1[28];

    defaultLogger()();
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "WalletPassPresentmentManager: interpretCredentialRequest: no matching proposal was returned", v26, 2u);
    }

    v27 = v1[25];
    v90 = v1[24];
    v94 = v1[26];
    v29 = v1[11];
    v28 = v1[12];
    v30 = v1[9];
    v31 = v1[10];
    v33 = v1[7];
    v32 = v1[8];

    (*(v29 + 8))(v28, v31);
    v34._countAndFlagsBits = 0x3562656564323639;
    v35._countAndFlagsBits = 0xD000000000000049;
    v35._object = 0x8000000100716410;
    v34._object = 0xE800000000000000;
    logMilestone(tag:description:)(v34, v35);
    (*(v32 + 104))(v30, enum case for DIPError.Code.digitalPresentmentNoCredentialAvailable(_:), v33);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    (*(v27 + 8))(v94, v90);
    goto LABEL_8;
  }

  v7 = v1[21];
  v8 = v1[18];
  v102 = _swiftEmptyArrayStorage;
  sub_100172F18(0, v5, 0);
  v9 = *(v3 + 16);
  if (!v9)
  {
    goto LABEL_25;
  }

  v89 = v3;
  v93 = v7;
  v10 = v102;
  v3 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = v1[29];
  v12 = v1[22];
  v13 = v1[19];
  v14 = v1[6];
  v15 = *(v8 + 72);
  sub_1004270F8(v6 + v3, v13, type metadata accessor for DigitalPresentmentSessionManager.Proposal);
  sub_1004239E8(v13, v14, v1 + 2, v12);
  if (v11)
  {
    v16 = v1[28];
    v18 = v1[25];
    v17 = v1[26];
    v19 = v1[24];
    v20 = v1[19];

    sub_100427160(v20, type metadata accessor for DigitalPresentmentSessionManager.Proposal);
    (*(v18 + 8))(v17, v19);

    v21 = v1[2];
LABEL_8:
    v36 = v1[26];
    v38 = v1[22];
    v37 = v1[23];
    v39 = v1[19];
    v86 = v1[17];
    v88 = v1[16];
    v91 = v1[13];
    v95 = v1[12];
    (*(v1[8] + 104))(v1[9], enum case for DIPError.Code.internalError(_:), v1[7]);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v40 = v1[1];

    return v40();
  }

  v87 = v6;
  v99 = v15;
  sub_100427160(v1[19], type metadata accessor for DigitalPresentmentSessionManager.Proposal);
  v2 = v102[2];
  v9 = v102[3];
  v0 = v2 + 1;
  if (v2 >= v9 >> 1)
  {
    goto LABEL_26;
  }

  while (1)
  {
    v42 = v1[22];
    v10[2] = v0;
    v97 = (*(v93 + 80) + 32) & ~*(v93 + 80);
    v43 = *(v93 + 72);
    sub_100427064(v42, v10 + v97 + v43 * v2, type metadata accessor for DigitalPresentmentEligibleProposalData);
    if (v5 == 1)
    {
      break;
    }

    v3 += v87 + v99;
    v67 = 1;
    while (1)
    {
      v9 = *(v89 + 16);
      if (v67 >= v9)
      {
        break;
      }

      v68 = v1[22];
      v69 = v1[19];
      v70 = v1[6];
      sub_1004270F8(v3, v69, type metadata accessor for DigitalPresentmentSessionManager.Proposal);
      sub_1004239E8(v69, v70, v1 + 2, v68);
      sub_100427160(v1[19], type metadata accessor for DigitalPresentmentSessionManager.Proposal);
      v102 = v10;
      v2 = v10[2];
      v71 = v10[3];
      v0 = v2 + 1;
      if (v2 >= v71 >> 1)
      {
        sub_100172F18(v71 > 1, v2 + 1, 1);
        v10 = v102;
      }

      ++v67;
      v72 = v1[22];
      v10[2] = v0;
      sub_100427064(v72, v10 + v97 + v43 * v2, type metadata accessor for DigitalPresentmentEligibleProposalData);
      v3 += v99;
      if (v5 == v67)
      {
        goto LABEL_13;
      }
    }

LABEL_25:
    __break(1u);
LABEL_26:
    sub_100172F18(v9 > 1, v0, 1);
    v10 = v102;
  }

LABEL_13:
  v44 = v1[28];
  v46 = v1[16];
  v45 = v1[17];
  v48 = v1[14];
  v47 = v1[15];
  v100 = v1[13];

  v1[3] = v10;
  sub_100007224(&qword_100844058, &qword_1006E2418);
  v49 = *(sub_100007224(&qword_100844060, &qword_1006E2420) - 8);
  v50 = *(v49 + 72);
  v51 = (*(v49 + 80) + 32) & ~*(v49 + 80);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_1006BF740;
  swift_getKeyPath();
  SortDescriptor.init<A>(_:order:)();
  swift_getKeyPath();
  static String.StandardComparator.localizedStandard.getter();
  (*(v47 + 16))(v46, v45, v48);
  SortDescriptor.init(_:comparator:)();
  (*(v47 + 8))(v45, v48);
  v1[4] = v52;
  sub_100007224(&unk_1008414C0, &qword_1006DDEF8);
  sub_100007224(&qword_100844068, &unk_1006E2480);
  sub_1000BA30C(&qword_100844070, &unk_1008414C0, &qword_1006DDEF8);
  sub_1000BA30C(&qword_100844078, &qword_100844068, &unk_1006E2480);
  sub_1000BA30C(&qword_100844080, &qword_100844060, &qword_1006E2420);
  v53 = Sequence.sorted<A, B>(using:)();

  defaultLogger()();

  v54 = Logger.logObject.getter();
  v55 = static os_log_type_t.info.getter();

  v56 = os_log_type_enabled(v54, v55);
  v57 = v1[25];
  v58 = v1[26];
  v59 = v1[24];
  if (v56)
  {
    v101 = v1[24];
    v60 = v1[20];
    v61 = v1[11];
    v96 = v1[10];
    v98 = v1[13];
    v92 = v1[26];
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v102 = v63;
    *v62 = 136315138;
    v64 = Array.description.getter();
    v66 = sub_100141FE4(v64, v65, &v102);

    *(v62 + 4) = v66;
    _os_log_impl(&_mh_execute_header, v54, v55, "WalletPassPresentmentManager: interpretRequest returning eligibleProposalData %s", v62, 0xCu);
    sub_10000BB78(v63);

    (*(v61 + 8))(v98, v96);
    (*(v57 + 8))(v92, v101);
  }

  else
  {
    v73 = v1[13];
    v75 = v1[10];
    v74 = v1[11];

    (*(v74 + 8))(v73, v75);
    (*(v57 + 8))(v58, v59);
  }

  v76 = v1[26];
  v77 = v1[22];
  v78 = v1[23];
  v79 = v1[19];
  v81 = v1[16];
  v80 = v1[17];
  v83 = v1[12];
  v82 = v1[13];
  v84 = v1[9];

  v85 = v1[1];

  return v85(v53);
}

uint64_t sub_1004237EC()
{
  (*(v0[25] + 8))(v0[26], v0[24]);
  v1 = v0[29];
  v2 = v0[26];
  v3 = v0[22];
  v4 = v0[23];
  v7 = v0[19];
  v8 = v0[17];
  v9 = v0[16];
  v10 = v0[13];
  v11 = v0[12];
  (*(v0[8] + 104))(v0[9], enum case for DIPError.Code.internalError(_:), v0[7]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v5 = v0[1];

  return v5();
}

uint64_t sub_1004239E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v66 = a3;
  v79 = a1;
  v70 = a4;
  v6 = type metadata accessor for DigitalPresentmentCredentialValidator.CredentialMetadata(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6);
  v69 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v67 = (&v62 - v10);
  v11 = type metadata accessor for DIPError.Code();
  v65 = *(v11 - 8);
  v12 = *(v65 + 64);
  __chkstk_darwin(v11);
  v14 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000BA08((a2 + 192), *(a2 + 216));
  if (sub_10042258C())
  {
    goto LABEL_4;
  }

  v15 = objc_opt_self();
  v16 = [v15 standardUserDefaults];
  v17._countAndFlagsBits = static DaemonInternalDefaultsKeys.disableDigitalPresentmentPassLookup.getter();
  v68 = v4;
  v18 = NSUserDefaults.internalBool(forKey:)(v17);

  if (v18 || (v19 = [v15 standardUserDefaults], v20._countAndFlagsBits = static DaemonInternalDefaultsKeys.disableDigitalPresentmentPassLookup.getter(), v21 = NSUserDefaults.internalBool(forKey:)(v20), v19, , v21))
  {
LABEL_4:
    v22 = 0;
    v23 = &type metadata for SimulatedDigitalPresentmentCredentialValidator;
    v24 = &off_100809AE8;
    v77 = &type metadata for SimulatedDigitalPresentmentCredentialValidator;
    v78 = &off_100809AE8;
LABEL_5:
    sub_10000BA08(v76, v23);
    (v24[3])(v23, v24);

    v25 = v70;
    sub_1004270F8(v79, v70, type metadata accessor for DigitalPresentmentSessionManager.Proposal);
    v26 = type metadata accessor for DigitalPresentmentEligibleProposalData();
    sub_100020260(v76, v25 + *(v26 + 24));
    *(v25 + *(v26 + 20)) = v22;
    return sub_10000BB78(v76);
  }

  v28 = v79;
  v29 = v79[5];
  if (v29 >> 60 != 15)
  {
    v31 = v79[4];
    sub_100020260(a2 + 312, v72);
    v32 = v28[9];
    v62 = v28[8];
    v33 = v28[14];
    v66 = v33;
    if (v33)
    {
      v34 = v28[13];
      v35 = v33;
    }

    else
    {
      v34 = v28[11];
      v35 = v28[12];
    }

    v36 = type metadata accessor for DigitalPresentmentSessionManager.Proposal();
    v37 = v67;
    sub_10000BBC4(v28 + *(v36 + 48), v67 + *(v6 + 28), &qword_10083B408, &qword_1006E2490);
    v38 = (v28 + *(v36 + 56));
    v64 = *v38;
    v39 = v64;
    v63 = v38[1];
    v40 = v63;
    *v37 = v31;
    v37[1] = v29;
    v37[2] = v62;
    v37[3] = v32;
    v65 = v32;
    v37[4] = v34;
    v37[5] = v35;
    v41 = (v37 + *(v6 + 32));
    *v41 = v39;
    v41[1] = v40;
    sub_100020260(v72, &v73);
    sub_1004270F8(v37, v69, type metadata accessor for DigitalPresentmentCredentialValidator.CredentialMetadata);
    v42 = v74;
    v43 = sub_10001F370(&v73, v74);
    v62 = &v62;
    v44 = *(*(v42 - 8) + 64);
    __chkstk_darwin(v43);
    v46 = (&v62 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v47 + 16))(v46);
    v48 = *v46;
    v49 = type metadata accessor for PresentmentKeyRevocationValidator();
    v71[3] = v49;
    v71[4] = &off_100809510;
    v71[0] = v48;
    v50 = type metadata accessor for DigitalPresentmentCredentialValidator(0);
    v51 = *(v50 + 48);
    v52 = *(v50 + 52);
    v53 = swift_allocObject();
    v54 = sub_10001F370(v71, v49);
    v55 = *(*(v49 - 8) + 64);
    __chkstk_darwin(v54);
    v57 = (&v62 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v58 + 16))(v57);
    v59 = *v57;
    sub_1000363B4(v31, v29);
    sub_1000363B4(v31, v29);

    sub_1000363B4(v64, v63);
    v60 = sub_100426E3C(v59, v69, v53);
    sub_10000BB78(v71);
    sub_10000BB78(&v73);
    v74 = v50;
    v75 = &off_100809A30;
    *&v73 = v60;
    sub_100427160(v37, type metadata accessor for DigitalPresentmentCredentialValidator.CredentialMetadata);
    sub_10000BB78(v72);
    sub_10001F358(&v73, v76);
    sub_100511C48(*v28, v28[1]);
    v22 = v61;
    sub_10000BD94(v31, v29);
    v23 = v77;
    v24 = v78;

    goto LABEL_5;
  }

  (*(v65 + 104))(v14, enum case for DIPError.Code.badLogic(_:), v11);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError);
  v30 = swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  result = swift_willThrow();
  *v66 = v30;
  return result;
}

uint64_t sub_100424114()
{
  v1 = sub_100007224(&qword_10083AE00, &qword_1006D9ED0);
  v2 = *(*(v1 - 8) + 64);
  v3 = __chkstk_darwin(v1 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v15 - v6;
  v9 = *(v0 + 64);
  v8 = *(v0 + 72);

  ISO18013KnownDocTypes.init(rawValue:)();
  v10 = type metadata accessor for ISO18013KnownDocTypes();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v7, 1, v10) != 1)
  {
    sub_10000BBC4(v7, v5, &qword_10083AE00, &qword_1006D9ED0);
    v13 = (*(v11 + 88))(v5, v10);
    if (v13 == enum case for ISO18013KnownDocTypes.iso18013_5_1_mDL(_:))
    {
      v12 = 0;
      goto LABEL_9;
    }

    if (v13 == enum case for ISO18013KnownDocTypes.japanNationalIDCard(_:))
    {
      v12 = 2;
      goto LABEL_9;
    }

    if (v13 == enum case for ISO18013KnownDocTypes.photoID(_:))
    {
      v12 = 1;
      goto LABEL_9;
    }

    (*(v11 + 8))(v5, v10);
  }

  v12 = 3;
LABEL_9:
  sub_10000BE18(v7, &qword_10083AE00, &qword_1006D9ED0);
  return v12;
}

uint64_t sub_1004242EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[74] = v8;
  v9[73] = a8;
  v9[72] = a7;
  v9[71] = a6;
  v9[70] = a5;
  v9[69] = a4;
  v9[68] = a3;
  v9[67] = a2;
  v9[66] = a1;
  v10 = sub_100007224(&qword_100834B60, &qword_1006C0310);
  v9[75] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v9[76] = swift_task_alloc();
  v12 = *(*(sub_100007224(&qword_10083B020, &unk_1006D8ED0) - 8) + 64) + 15;
  v9[77] = swift_task_alloc();
  v9[78] = swift_task_alloc();
  v9[79] = swift_task_alloc();
  v13 = type metadata accessor for DIPError.Code();
  v9[80] = v13;
  v14 = *(v13 - 8);
  v9[81] = v14;
  v15 = *(v14 + 64) + 15;
  v9[82] = swift_task_alloc();
  v16 = type metadata accessor for DigitalPresentmentUIResult();
  v9[83] = v16;
  v17 = *(*(v16 - 8) + 64) + 15;
  v9[84] = swift_task_alloc();
  v9[85] = swift_task_alloc();
  v18 = type metadata accessor for Date();
  v9[86] = v18;
  v19 = *(v18 - 8);
  v9[87] = v19;
  v20 = *(v19 + 64) + 15;
  v9[88] = swift_task_alloc();
  v21 = *(*(type metadata accessor for DIPSignpost.Config() - 8) + 64) + 15;
  v9[89] = swift_task_alloc();
  v22 = type metadata accessor for DIPSignpost();
  v9[90] = v22;
  v23 = *(v22 - 8);
  v9[91] = v23;
  v24 = *(v23 + 64) + 15;
  v9[92] = swift_task_alloc();
  v25 = *(*(type metadata accessor for DigitalPresentmentSessionManager.Proposal() - 8) + 64) + 15;
  v9[93] = swift_task_alloc();
  v9[94] = swift_task_alloc();

  return _swift_task_switch(sub_1004245B0, v8, 0);
}

uint64_t sub_1004245B0()
{
  v1 = v0[69];
  if (*(v1 + 16))
  {
    v2 = v0[94];
    v3 = v0[93];
    v4 = v0[74];
    v5 = *(type metadata accessor for DigitalPresentmentEligibleProposalData() - 8);
    sub_1004270F8(v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v3, type metadata accessor for DigitalPresentmentSessionManager.Proposal);
    sub_100427064(v3, v2, type metadata accessor for DigitalPresentmentSessionManager.Proposal);
    sub_100426230(v2, v0 + 2);
    v13 = swift_task_alloc();
    v0[95] = v13;
    *v13 = v0;
    v13[1] = sub_100424A30;
    v14 = v0[74];

    return sub_1004266D0((v0 + 2));
  }

  else
  {
    (*(v0[81] + 104))(v0[82], enum case for DIPError.Code.digitalPresentmentInvalidDocumentDescriptor(_:), v0[80]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v6 = v0[94];
    v7 = v0[93];
    v8 = v0[92];
    v9 = v0[89];
    v15 = v0[88];
    v16 = v0[85];
    v17 = v0[84];
    v18 = v0[79];
    v10 = v0[78];
    v19 = v0[77];
    v20 = v0[76];
    (*(v0[81] + 104))(v0[82], enum case for DIPError.Code.internalError(_:), v0[80]);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_100424A30()
{
  v2 = *v1;
  v3 = *(*v1 + 760);
  v4 = *v1;
  *(*v1 + 768) = v0;

  v5 = *(v2 + 592);
  if (v0)
  {
    v6 = sub_1004254B0;
  }

  else
  {
    v6 = sub_100424B5C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100424B5C()
{
  v1 = v0[74];
  v2 = v0[73];
  v3 = v0[72];
  v4 = v0[69];
  v5 = v0[68];
  v6 = sub_10000BA08(v0 + 2, v0[5]);
  v7 = *(*v6 + 40);
  v8 = *(*v6 + 48);
  sub_10000BA08((*v6 + 16), v7);
  v9 = (*(v8 + 8))(v7, v8);
  v11 = v10;
  v0[97] = v9;
  v0[98] = v10;
  v36 = *(v1 + 176);
  v0[99] = v36;
  v12 = *(v1 + 184);
  v0[100] = v12;
  sub_100020260(v5, (v0 + 12));
  v0[20] = type metadata accessor for DeviceInformationProvider();
  v0[21] = &protocol witness table for DeviceInformationProvider;
  sub_100032DBC(v0 + 17);
  v34 = v11;
  sub_10000B8B8(v9, v11);
  DeviceInformationProvider.init()();

  sub_1000363B4(v3, v2);
  if (qword_100832C78 != -1)
  {
    swift_once();
  }

  v29 = v0[89];
  v30 = v0[92];
  v31 = v0[88];
  v32 = v0[87];
  v33 = v0[86];
  v13 = v0[74];
  v28 = v0[73];
  v14 = v0[72];
  v15 = v0[69];
  v16 = qword_100882378;
  v17 = *(v12 + 16);
  v0[10] = v36;
  v0[11] = v12;
  v0[101] = sub_100032DBC(v0 + 7);

  v17(v0 + 12, v9, v34, v0 + 17, v15, v14, v28, v16, v36, v12);
  sub_100020260((v0 + 7), (v0 + 22));
  swift_beginAccess();
  sub_100426FF4((v0 + 22), v13 + 272);
  swift_endAccess();
  static DaemonSignposts.requestDocumentUI.getter();
  DIPSignpost.init(_:)();
  Date.init()();
  Date.timeIntervalSince1970.getter();
  v0[102] = v18;
  (*(v32 + 8))(v31, v33);
  v19 = *sub_10000BA08(v0 + 2, v0[5]);
  v20 = sub_100142684();
  v21 = *(v12 + 24);
  v35 = (v21 + *v21);
  v22 = v21[1];
  v23 = swift_task_alloc();
  v0[103] = v23;
  *v23 = v0;
  v23[1] = sub_100424ECC;
  v24 = v0[71];
  v25 = v0[70];
  v26 = v0[67];

  return v35(v26, v20, v25, v24, v36, v12);
}

uint64_t sub_100424ECC()
{
  v2 = *v1;
  v3 = *(*v1 + 824);
  v4 = *v1;
  *(*v1 + 832) = v0;

  v5 = *(v2 + 592);
  if (v0)
  {
    v6 = sub_1004256FC;
  }

  else
  {
    v6 = sub_100424FF8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100424FF8()
{
  v1 = v0[101];
  v2 = v0[100];
  v3 = v0[99];
  v4._countAndFlagsBits = 0x3434623438303861;
  v5._object = 0x80000001007163C0;
  v4._object = 0xE800000000000000;
  v5._countAndFlagsBits = 0xD00000000000002ELL;
  logMilestone(tag:description:)(v4, v5);
  v0[105] = (*(v2 + 8))(v3, v2);
  v6 = async function pointer to AsyncPromise.value.getter[1];
  v7 = swift_task_alloc();
  v0[106] = v7;
  *v7 = v0;
  v7[1] = sub_1004250F8;
  v8 = v0[84];

  return AsyncPromise.value.getter(v8);
}

uint64_t sub_1004250F8()
{
  v2 = *v1;
  v3 = *(*v1 + 848);
  v9 = *v1;
  *(*v1 + 856) = v0;

  if (v0)
  {
    v4 = *(v2 + 840);
    v5 = *(v2 + 592);

    v6 = sub_1004259DC;
    v7 = v5;
  }

  else
  {
    v7 = *(v2 + 592);
    v6 = sub_100425220;
  }

  return _swift_task_switch(v6, v7, 0);
}

uint64_t sub_100425220()
{
  v1 = *(v0 + 840);
  v2 = *(v0 + 816);
  v19 = *(v0 + 808);
  v20 = *(v0 + 800);
  v3 = *(v0 + 792);
  v21 = *(v0 + 776);
  v22 = *(v0 + 784);
  v4 = *(v0 + 736);
  v5 = *(v0 + 728);
  v23 = *(v0 + 720);
  v24 = *(v0 + 752);
  v25 = *(v0 + 744);
  v26 = *(v0 + 712);
  v6 = *(v0 + 680);
  v7 = *(v0 + 672);
  v8 = *(v0 + 664);
  v27 = *(v0 + 704);
  v28 = *(v0 + 656);
  v29 = *(v0 + 632);
  v30 = *(v0 + 624);
  v31 = *(v0 + 616);
  v32 = *(v0 + 608);
  v9 = *(v0 + 592);
  v10 = *(v0 + 528);

  sub_100427064(v7, v6, type metadata accessor for DigitalPresentmentUIResult);
  v11 = *v6;
  v12 = DigitalPresentmentResponse.encryptedData.getter();
  v14 = v13;
  v15 = *(v8 + 20);
  v16 = type metadata accessor for WalletPassPresentmentResponse();
  sub_1004270F8(v6 + v15, v10 + *(v16 + 24), type metadata accessor for DigitalPresentmentEligibleProposalData);
  *v10 = v12;
  v10[1] = v14;
  v10[2] = v2;
  sub_100427160(v6, type metadata accessor for DigitalPresentmentUIResult);
  sub_100426F70(v19, v3, v20);
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  sub_10000B90C(v21, v22);
  (*(v5 + 8))(v4, v23);
  sub_100427160(v24, type metadata accessor for DigitalPresentmentSessionManager.Proposal);
  *(v0 + 336) = 0u;
  *(v0 + 352) = 0u;
  *(v0 + 368) = 0;
  swift_beginAccess();
  sub_100426FF4(v0 + 336, v9 + 272);
  swift_endAccess();
  sub_10000BB78((v0 + 56));
  sub_10000BB78((v0 + 16));

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1004254B0()
{
  sub_100427160(v0[94], type metadata accessor for DigitalPresentmentSessionManager.Proposal);
  sub_10000BB78(v0 + 2);
  v1 = v0[96];
  v2 = v0[94];
  v3 = v0[93];
  v4 = v0[92];
  v7 = v0[89];
  v8 = v0[88];
  v9 = v0[85];
  v10 = v0[84];
  v13 = v0[78];
  v11 = v0[79];
  v12 = v0[77];
  v14 = v0[76];
  (*(v0[81] + 104))(v0[82], enum case for DIPError.Code.internalError(_:), v0[80]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v5 = v0[1];

  return v5();
}

uint64_t sub_1004256FC()
{
  v1 = *(v0 + 784);
  v2 = *(v0 + 776);
  v3 = *(v0 + 752);
  v4 = *(v0 + 736);
  v5 = *(v0 + 728);
  v6 = *(v0 + 720);
  v7 = *(v0 + 592);
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  sub_10000B90C(v2, v1);
  (*(v5 + 8))(v4, v6);
  sub_100427160(v3, type metadata accessor for DigitalPresentmentSessionManager.Proposal);
  *(v0 + 232) = 0u;
  *(v0 + 248) = 0;
  *(v0 + 216) = 0u;
  swift_beginAccess();
  sub_100426FF4(v0 + 216, v7 + 272);
  swift_endAccess();
  sub_10000BB78((v0 + 56));
  sub_10000BB78((v0 + 16));
  v8 = *(v0 + 832);
  v9 = *(v0 + 752);
  v10 = *(v0 + 744);
  v11 = *(v0 + 736);
  v14 = *(v0 + 712);
  v15 = *(v0 + 704);
  v16 = *(v0 + 680);
  v17 = *(v0 + 672);
  v20 = *(v0 + 624);
  v18 = *(v0 + 632);
  v19 = *(v0 + 616);
  v21 = *(v0 + 608);
  (*(*(v0 + 648) + 104))(*(v0 + 656), enum case for DIPError.Code.internalError(_:), *(v0 + 640));
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1004259DC()
{
  v1 = *(v0 + 856);
  v2 = *(v0 + 648);
  v3 = *(v0 + 640);
  v4 = *(v0 + 632);
  v5 = *(v0 + 624);
  v6 = *(v0 + 608);
  v66 = *(v0 + 600);
  swift_getErrorValue();
  v7 = *(v0 + 424);
  v8 = *(v0 + 432);
  v9 = *(v0 + 440);
  swift_errorRetain();
  Error.dipErrorCode.getter();
  v65 = *(v2 + 104);
  v65(v5, enum case for DIPError.Code.cancelled(_:), v3);
  (*(v2 + 56))(v5, 0, 1, v3);
  v10 = *(v66 + 48);
  sub_10000BBC4(v4, v6, &qword_10083B020, &unk_1006D8ED0);
  sub_10000BBC4(v5, v6 + v10, &qword_10083B020, &unk_1006D8ED0);
  v11 = *(v2 + 48);
  v12 = v11(v6, 1, v3);
  v13 = *(v0 + 640);
  if (v12 != 1)
  {
    sub_10000BBC4(*(v0 + 608), *(v0 + 616), &qword_10083B020, &unk_1006D8ED0);
    if (v11(v6 + v10, 1, v13) != 1)
    {
      v67 = *(v0 + 856);
      v29 = *(v0 + 656);
      v30 = *(v0 + 648);
      v31 = *(v0 + 640);
      v32 = *(v0 + 624);
      v33 = *(v0 + 616);
      v60 = *(v0 + 632);
      v62 = *(v0 + 608);
      (*(v30 + 32))(v29, v6 + v10, v31);
      sub_100044DA8(&qword_100834B68, &type metadata accessor for DIPError.Code);
      v34 = dispatch thunk of static Equatable.== infix(_:_:)();
      v35 = *(v30 + 8);
      v35(v29, v31);
      sub_10000BE18(v32, &qword_10083B020, &unk_1006D8ED0);
      sub_10000BE18(v60, &qword_10083B020, &unk_1006D8ED0);
      v35(v33, v31);
      sub_10000BE18(v62, &qword_10083B020, &unk_1006D8ED0);

      if (v34)
      {
        goto LABEL_9;
      }

LABEL_7:
      v21 = *(v0 + 784);
      v22 = *(v0 + 776);
      v23 = *(v0 + 752);
      v24 = *(v0 + 736);
      v25 = *(v0 + 728);
      v26 = *(v0 + 720);
      v27 = *(v0 + 592);
      sub_100426F70(*(v0 + 808), *(v0 + 792), *(v0 + 800));
      DIPSignpost.end(workflowID:isBackground:)(0, 2);
      sub_10000B90C(v22, v21);
      (*(v25 + 8))(v24, v26);
      sub_100427160(v23, type metadata accessor for DigitalPresentmentSessionManager.Proposal);
      *(v0 + 256) = 0u;
      *(v0 + 272) = 0u;
      *(v0 + 288) = 0;
      swift_beginAccess();
      sub_100426FF4(v0 + 256, v27 + 272);
      swift_endAccess();
      sub_10000BB78((v0 + 56));
      sub_10000BB78((v0 + 16));
      v28 = *(v0 + 856);
      goto LABEL_10;
    }

    v16 = *(v0 + 648);
    v17 = *(v0 + 640);
    v18 = *(v0 + 632);
    v19 = *(v0 + 616);
    sub_10000BE18(*(v0 + 624), &qword_10083B020, &unk_1006D8ED0);
    sub_10000BE18(v18, &qword_10083B020, &unk_1006D8ED0);
    (*(v16 + 8))(v19, v17);
LABEL_6:
    v20 = *(v0 + 856);
    sub_10000BE18(*(v0 + 608), &qword_100834B60, &qword_1006C0310);

    goto LABEL_7;
  }

  v14 = *(v0 + 632);
  sub_10000BE18(*(v0 + 624), &qword_10083B020, &unk_1006D8ED0);
  sub_10000BE18(v14, &qword_10083B020, &unk_1006D8ED0);
  if (v11(v6 + v10, 1, v13) != 1)
  {
    goto LABEL_6;
  }

  v15 = *(v0 + 856);
  sub_10000BE18(*(v0 + 608), &qword_10083B020, &unk_1006D8ED0);

LABEL_9:
  v36 = *(v0 + 856);
  v37 = *(v0 + 800);
  v38 = *(v0 + 792);
  v50 = v38;
  v51 = *(v0 + 808);
  v54 = *(v0 + 776);
  v56 = *(v0 + 784);
  v52 = *(v0 + 736);
  v39 = *(v0 + 728);
  v58 = *(v0 + 720);
  v61 = *(v0 + 752);
  v40 = *(v0 + 656);
  v41 = *(v0 + 640);
  v63 = *(v0 + 592);
  (*(v37 + 32))();
  v65(v40, enum case for DIPError.Code.digitalPresentmentAppCancelled(_:), v41);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  sub_100426F70(v51, v50, v37);
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  sub_10000B90C(v54, v56);
  (*(v39 + 8))(v52, v58);
  sub_100427160(v61, type metadata accessor for DigitalPresentmentSessionManager.Proposal);
  *(v0 + 296) = 0u;
  *(v0 + 312) = 0u;
  *(v0 + 328) = 0;
  swift_beginAccess();
  sub_100426FF4(v0 + 296, v63 + 272);
  swift_endAccess();
  sub_10000BB78((v0 + 56));
  sub_10000BB78((v0 + 16));
LABEL_10:
  v42 = *(v0 + 752);
  v43 = *(v0 + 744);
  v44 = *(v0 + 736);
  v45 = *(v0 + 712);
  v46 = *(v0 + 704);
  v53 = *(v0 + 680);
  v55 = *(v0 + 672);
  v57 = *(v0 + 632);
  v59 = *(v0 + 624);
  v47 = *(v0 + 616);
  v64 = *(v0 + 608);
  (*(*(v0 + 648) + 104))(*(v0 + 656), enum case for DIPError.Code.internalError(_:), *(v0 + 640));
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v48 = *(v0 + 8);

  return v48();
}

uint64_t sub_100426230@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v32 = a2;
  v5 = type metadata accessor for DIPError.Code();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DIPSignpost.Config();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v12 = type metadata accessor for DIPSignpost();
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a1 + 56);
  if (v18 >> 60 == 15)
  {
    v19 = *(v6 + 104);
    v19(v9, enum case for DIPError.Code.dpAccesssControlRefNil(_:), v5);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
LABEL_5:
    v19(v9, enum case for DIPError.Code.internalError(_:), v5);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  v29 = v15;
  v30 = v2;
  v31 = v14;
  v20 = *(a1 + 48);
  type metadata accessor for SecAccessControl(0);
  sub_10000B8B8(v20, v18);
  v21 = static SecAccessControlRef.fromData(_:)();
  if (v3)
  {
    sub_10000BD94(v20, v18);
    v19 = *(v6 + 104);
    goto LABEL_5;
  }

  v23 = v21;
  static DaemonSignposts.requestDocumentLocalAuthentication.getter();
  DIPSignpost.init(_:)();
  v24 = *(v30 + 160);
  v25 = *(v30 + 168);
  v30 = *(v25 + 8);
  v26 = v32;
  v32[3] = v24;
  v26[4] = v25;
  sub_100032DBC(v26);
  v27 = v23;
  (v30)();
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  sub_10000BD94(v20, v18);

  return (*(v29 + 8))(v17, v31);
}

uint64_t sub_1004266D0(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = type metadata accessor for DIPError.Code();
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = *(v4 + 64) + 15;
  v2[11] = swift_task_alloc();
  v6 = *(*(type metadata accessor for DIPSignpost.Config() - 8) + 64) + 15;
  v2[12] = swift_task_alloc();
  v7 = type metadata accessor for DIPSignpost();
  v2[13] = v7;
  v8 = *(v7 - 8);
  v2[14] = v8;
  v9 = *(v8 + 64) + 15;
  v2[15] = swift_task_alloc();

  return _swift_task_switch(sub_100426818, v1, 0);
}

uint64_t sub_100426818()
{
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[7];
  static DaemonSignposts.requestDocumentCheckBiometricsStatus.getter();
  DIPSignpost.init(_:)();
  v4 = *sub_10000BA08(v3, v3[3]);
  v5 = type metadata accessor for DigitalPresentmentLocalAuthenticationManager();
  v0[2] = v4;
  v0[5] = v5;
  v0[6] = &off_100809DF0;
  v6 = objc_opt_self();

  v7 = [v6 standardUserDefaults];
  v8._countAndFlagsBits = static DaemonInternalDefaultsKeys.disableDigitalPresentmentBiometricCheck.getter();
  v9 = NSUserDefaults.internalBool(forKey:)(v8);

  if (v9)
  {
    sub_10000BB78(v0 + 2);
LABEL_4:
    v12 = v0[14];
    v11 = v0[15];
    v14 = v0[12];
    v13 = v0[13];
    v15 = v0[11];
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    (*(v12 + 8))(v11, v13);

    v16 = v0[1];

    return v16();
  }

  v10 = *sub_10000BA08(v0 + 2, v5);
  LOBYTE(v10) = sub_1001425D8();
  sub_10000BB78(v0 + 2);
  if (v10)
  {
    goto LABEL_4;
  }

  v18 = v0[8];
  v19 = swift_task_alloc();
  v0[16] = v19;
  *v19 = v0;
  v19[1] = sub_100426A30;

  return sub_1001276C0(v18 + 232);
}

uint64_t sub_100426A30()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *v1;
  *(*v1 + 136) = v0;

  v5 = *(v2 + 64);
  if (v0)
  {
    v6 = sub_100426D0C;
  }

  else
  {
    v6 = sub_100426B5C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100426B5C()
{
  (*(v0[10] + 104))(v0[11], enum case for DIPError.Code.digitalPresentmentBiometricsPermissionDenied(_:), v0[9]);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
  v1 = v0[12];
  v2 = v0[11];
  (*(v0[14] + 8))(v0[15], v0[13]);

  v3 = v0[1];

  return v3();
}

uint64_t sub_100426D0C()
{
  v1 = v0[17];
  v2 = v0[12];
  v3 = v0[11];
  (*(v0[14] + 8))(v0[15], v0[13]);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100426DA8()
{
  sub_10000BB78(v0 + 14);
  v1 = v0[19];

  sub_10000BB78(v0 + 24);
  sub_10000BB78(v0 + 29);
  sub_10000BE18((v0 + 34), &qword_100844050, &qword_1006E2410);
  sub_10000BB78(v0 + 39);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100426E3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12[3] = type metadata accessor for PresentmentKeyRevocationValidator();
  v12[4] = &off_100809510;
  v12[0] = a1;
  swift_defaultActor_initialize();
  v6 = OBJC_IVAR____TtC8coreidvd37DigitalPresentmentCredentialValidator__validationState;
  sub_100007224(&qword_100844088, &qword_1006E2498);
  v7 = swift_allocObject();
  *(a3 + v6) = v7;
  *(v7 + 28) = 0;
  v8 = (v7 + 28);
  *(v7 + 24) = 0x80;
  *(v7 + 16) = 0;
  v9 = v7 + 16;
  v10 = a3 + OBJC_IVAR____TtC8coreidvd37DigitalPresentmentCredentialValidator_krlPerformanceData;
  *v10 = xmmword_1006E2330;
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  sub_100020260(v12, a3 + 112);
  sub_1004270F8(a2, a3 + OBJC_IVAR____TtC8coreidvd37DigitalPresentmentCredentialValidator_credential, type metadata accessor for DigitalPresentmentCredentialValidator.CredentialMetadata);
  os_unfair_lock_lock(v8);
  sub_100134294(v9);
  os_unfair_lock_unlock(v8);
  sub_100427160(a2, type metadata accessor for DigitalPresentmentCredentialValidator.CredentialMetadata);
  sub_10000BB78(v12);
  return a3;
}

uint64_t sub_100426F70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2;
  v10 = a3;
  v5 = sub_100032DBC(v8);
  (*(*(a2 - 8) + 16))(v5, a1, a2);
  v6 = *sub_10000BA08(v8, v9);
  sub_100164AC4();
  return sub_10000BB78(v8);
}

uint64_t sub_100426FF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&qword_100844050, &qword_1006E2410);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100427064(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1004270CC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100424114();
  *a1 = result;
  return result;
}

uint64_t sub_1004270F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100427160(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1004271D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for DigitalPresentmentEligibleProposalData();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1004272A0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = type metadata accessor for DigitalPresentmentEligibleProposalData();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for WalletPassPresentmentResponse()
{
  result = qword_1008440E8;
  if (!qword_1008440E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100427398()
{
  result = type metadata accessor for DigitalPresentmentEligibleProposalData();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10042741C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v191 = a2;
  v243 = type metadata accessor for Certificate();
  v205 = *(v243 - 8);
  v3 = *(v205 + 64);
  __chkstk_darwin(v243);
  v242 = &v171 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v190 = type metadata accessor for SessionType();
  v189 = *(v190 - 8);
  v5 = *(v189 + 64);
  __chkstk_darwin(v190);
  v188 = (&v171 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v238 = type metadata accessor for CredentialPresentmentElementRequestInfo.IntentToStore();
  v234 = *(v238 - 8);
  v7 = *(v234 + 64);
  __chkstk_darwin(v238);
  v245 = (&v171 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v237 = type metadata accessor for CredentialPresentmentElementRequestInfo();
  v239 = *(v237 - 8);
  v9 = *(v239 + 64);
  __chkstk_darwin(v237);
  v236 = &v171 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100007224(&unk_100849BA0, &qword_1006D95F0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v220 = &v171 - v13;
  v219 = type metadata accessor for PartialWebPresentmentMobileDocumentRequest.DocumentRequest();
  v208 = *(v219 - 8);
  v14 = *(v208 + 64);
  v15 = __chkstk_darwin(v219);
  v218 = &v171 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v217 = &v171 - v17;
  v206 = type metadata accessor for DocumentRequest();
  v207 = *(v206 - 8);
  v18 = *(v207 + 64);
  __chkstk_darwin(v206);
  v216 = &v171 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v196 = type metadata accessor for PartialWebPresentmentMobileDocumentRequest.UseCase();
  v197 = *(v196 - 8);
  v20 = *(v197 + 64);
  __chkstk_darwin(v196);
  v195 = &v171 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v193 = type metadata accessor for CredentialPresentmentRequest.UseCase();
  v194 = *(v193 - 8);
  v22 = *(v194 + 64);
  __chkstk_darwin(v193);
  v192 = &v171 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v215 = type metadata accessor for PartialWebPresentmentRequest();
  v214 = *(v215 - 8);
  v24 = *(v214 + 64);
  __chkstk_darwin(v215);
  v235 = &v171 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for Logger();
  v232 = *(v26 - 8);
  v233 = v26;
  v27 = *(v232 + 64);
  __chkstk_darwin(v26);
  v231 = &v171 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v241 = type metadata accessor for URL();
  v246 = *(v241 - 8);
  v29 = *(v246 + 64);
  v30 = __chkstk_darwin(v241);
  v230 = &v171 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v240 = &v171 - v32;
  v33 = type metadata accessor for DIPError.Code();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  __chkstk_darwin(v33);
  v244 = &v171 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for PartialWebPresentmentDocumentRequest();
  v38 = *(v37 - 8);
  v39 = *(v38 + 64);
  __chkstk_darwin(v37);
  v41 = &v171 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for PartialWebPresentmentMobileDocumentRequest();
  v43 = *(v42 - 8);
  v44 = *(v43 + 64);
  __chkstk_darwin(v42);
  v46 = &v171 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v209 = a1;
  PartialWebPresentmentRequest.documentRequest.getter();
  if ((*(v38 + 88))(v41, v37) != enum case for PartialWebPresentmentDocumentRequest.iso18013MobileDocument(_:))
  {
    (*(v38 + 8))(v41, v37);
    (*(v34 + 104))(v244, enum case for DIPError.Code.webPresentmentUnknownPresentmentProtocol(_:), v33);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1002A7708(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    return (*(v214 + 8))(v209, v215);
  }

  v228 = v34;
  v229 = v33;
  (*(v38 + 96))(v41, v37);
  v226 = v43;
  (*(v43 + 32))(v46, v41, v42);
  v47 = v240;
  v48 = v209;
  PartialWebPresentmentRequest.originatingURL.getter();
  v49 = URL.host.getter();
  v51 = v50;
  v53 = v246 + 8;
  v52 = *(v246 + 8);
  v52(v47, v241);
  v222 = v42;
  v187 = v46;
  if (v51)
  {
    v180 = v51;
    v181 = v49;
    v54 = PartialWebPresentmentMobileDocumentRequest.useCases.getter();
    v55 = *(v54 + 16);
    if (v55)
    {
      v249 = _swiftEmptyArrayStorage;
      v184 = v54;
      v179 = v55;
      sub_100173108(0, v55, 0);
      result = v184;
      v57 = 0;
      v58 = v249;
      v59 = v184 + ((*(v197 + 80) + 32) & ~*(v197 + 80));
      v202 = v208 + 16;
      LODWORD(v235) = enum case for CredentialPresentmentElementRequestInfo.IntentToStore.willNotStore(_:);
      v234 += 104;
      LODWORD(v232) = enum case for CredentialPresentmentElementRequestInfo.IntentToStore.mayStore(_:);
      v233 = v239 + 32;
      v199 = (v208 + 8);
      v198 = v207 + 32;
      v176 = (v197 + 8);
      v175 = v194 + 32;
      v60 = v226;
      v178 = v59;
      v177 = v197 + 16;
      v61 = v236;
      while (v57 < *(result + 16))
      {
        v186 = v58;
        v62 = *(v197 + 72);
        v182 = v57;
        (*(v197 + 16))(v195, v59 + v62 * v57, v196);
        v63 = PartialWebPresentmentMobileDocumentRequest.UseCase.documentSets.getter();
        v64 = *(v63 + 16);
        if (v64)
        {
          v248 = _swiftEmptyArrayStorage;
          v183 = v63;
          v185 = v64;
          sub_100172E50(0, v64, 0);
          v65 = v185;
          result = v183;
          v66 = 0;
          v67 = v248;
          v68 = v183 + 32;
          v172 = v183 + 32;
          while (v66 < *(result + 16))
          {
            v69 = *(v68 + 8 * v66);
            v70 = *(v69 + 16);
            if (v70)
            {
              v173 = v66;
              v174 = v67;
              v247 = _swiftEmptyArrayStorage;

              sub_100172E90(0, v70, 0);
              v71 = v247;
              result = sub_100007224(&qword_10083C210, &unk_1006DA7D0);
              v204 = result;
              v72 = 0;
              v203 = v69 + ((*(v208 + 80) + 32) & ~*(v208 + 80));
              v201 = v69;
              v200 = v70;
              while (v72 < *(v69 + 16))
              {
                v213 = v71;
                v212 = v72 + 1;
                v73 = *(v208 + 16);
                v74 = v217;
                v75 = v219;
                v73(v217, v203 + *(v208 + 72) * v72, v219);
                v73(v218, v74, v75);
                v211 = PartialWebPresentmentMobileDocumentRequest.DocumentRequest.documentType.getter();
                v210 = v76;
                v77 = type metadata accessor for Locale.Region();
                (*(*(v77 - 8) + 56))(v220, 1, 1, v77);
                v78 = PartialWebPresentmentMobileDocumentRequest.DocumentRequest.namespaces.getter();
                v58 = v204;
                v79 = static _DictionaryStorage.copy(original:)();
                v80 = v79;
                v81 = 0;
                v82 = *(v78 + 64);
                v221 = v78 + 64;
                v227 = v78;
                v83 = 1 << *(v78 + 32);
                if (v83 < 64)
                {
                  v84 = ~(-1 << v83);
                }

                else
                {
                  v84 = -1;
                }

                v85 = v84 & v82;
                v86 = (v83 + 63) >> 6;
                v224 = v79 + 64;
                v225 = v79;
                v223 = v86;
                if (v85)
                {
                  while (1)
                  {
                    v87 = __clz(__rbit64(v85));
                    v228 = (v85 - 1) & v85;
LABEL_22:
                    v91 = v87 | (v81 << 6);
                    v92 = *(v227 + 56);
                    v93 = (*(v227 + 48) + 16 * v91);
                    v94 = v93[1];
                    v230 = *v93;
                    v231 = v91;
                    v95 = *(v92 + 8 * v91);
                    sub_100007224(&qword_100834968, &qword_1006C0158);
                    v96 = static _DictionaryStorage.copy(original:)();
                    v58 = v96;
                    v97 = v95 + 64;
                    v98 = 1 << v95[32];
                    v99 = v98 < 64 ? ~(-1 << v98) : -1;
                    v60 = v99 & *(v95 + 8);
                    v100 = (v98 + 63) >> 6;
                    v240 = (v96 + 64);
                    v229 = v94;

                    v244 = v95;

                    v42 = 0;
                    v241 = v58;
                    if (v60)
                    {
                      break;
                    }

LABEL_27:
                    v102 = v42;
                    while (1)
                    {
                      v42 = v102 + 1;
                      if (__OFADD__(v102, 1))
                      {
                        __break(1u);
                        goto LABEL_56;
                      }

                      if (v42 >= v100)
                      {
                        break;
                      }

                      v103 = *&v97[8 * v42];
                      ++v102;
                      if (v103)
                      {
                        v101 = __clz(__rbit64(v103));
                        v60 = (v103 - 1) & v103;
                        goto LABEL_32;
                      }
                    }

                    v112 = v231;
                    *(v224 + ((v231 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v231;
                    v80 = v225;
                    v113 = (*(v225 + 48) + 16 * v112);
                    v114 = v229;
                    *v113 = v230;
                    v113[1] = v114;
                    *(*(v80 + 56) + 8 * v112) = v58;
                    v115 = *(v80 + 16);
                    v110 = __OFADD__(v115, 1);
                    v116 = v115 + 1;
                    if (v110)
                    {
                      goto LABEL_77;
                    }

                    *(v80 + 16) = v116;
                    v42 = v222;
                    v60 = v226;
                    v86 = v223;
                    v85 = v228;
                    if (!v228)
                    {
                      goto LABEL_17;
                    }
                  }

                  while (1)
                  {
                    v101 = __clz(__rbit64(v60));
                    v60 &= v60 - 1;
LABEL_32:
                    v80 = v101 | (v42 << 6);
                    v104 = *(v244 + 7);
                    v105 = (*(v244 + 6) + 16 * v80);
                    v106 = v105[1];
                    v246 = *v105;
                    v107 = v235;
                    if (*(v104 + v80) == 1)
                    {
                      *v245 = 0;
                      v107 = v232;
                    }

                    (*v234)(v245, v107, v238);

                    CredentialPresentmentElementRequestInfo.init(intentToStore:)();
                    v58 = v241;
                    *&v240[(v80 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v80;
                    v108 = (v58[6] + 16 * v80);
                    *v108 = v246;
                    v108[1] = v106;
                    (*(v239 + 32))(v58[7] + *(v239 + 72) * v80, v61, v237);
                    v109 = v58[2];
                    v110 = __OFADD__(v109, 1);
                    v111 = v109 + 1;
                    if (v110)
                    {
                      break;
                    }

                    v58[2] = v111;
                    if (!v60)
                    {
                      goto LABEL_27;
                    }
                  }

LABEL_76:
                  __break(1u);
LABEL_77:
                  __break(1u);
                  goto LABEL_78;
                }

LABEL_17:
                v88 = v81;
                v89 = v216;
                while (1)
                {
                  v81 = v88 + 1;
                  if (__OFADD__(v88, 1))
                  {
                    __break(1u);
                    goto LABEL_76;
                  }

                  if (v81 >= v86)
                  {
                    break;
                  }

                  v90 = *(v221 + 8 * v81);
                  ++v88;
                  if (v90)
                  {
                    v87 = __clz(__rbit64(v90));
                    v228 = (v90 - 1) & v90;
                    goto LABEL_22;
                  }
                }

                DocumentRequest.init(alternativeElements:docType:issuerIdentifiers:regionCode:namespaces:)();
                v117 = *v199;
                v118 = v219;
                (*v199)(v218, v219);
                v117(v217, v118);
                v71 = v213;
                v247 = v213;
                v120 = v213[2];
                v119 = v213[3];
                if (v120 >= v119 >> 1)
                {
                  sub_100172E90(v119 > 1, v120 + 1, 1);
                  v71 = v247;
                }

                v71[2] = v120 + 1;
                result = (*(v207 + 32))(v71 + ((*(v207 + 80) + 32) & ~*(v207 + 80)) + *(v207 + 72) * v120, v89, v206);
                v72 = v212;
                v69 = v201;
                if (v212 == v200)
                {

                  result = v183;
                  v65 = v185;
                  v67 = v174;
                  v66 = v173;
                  v68 = v172;
                  goto LABEL_45;
                }
              }

              goto LABEL_80;
            }

            v71 = _swiftEmptyArrayStorage;
LABEL_45:
            v248 = v67;
            v122 = v67[2];
            v121 = v67[3];
            if (v122 >= v121 >> 1)
            {
              v123 = v66;
              v124 = v68;
              sub_100172E50((v121 > 1), v122 + 1, 1);
              v68 = v124;
              v66 = v123;
              v65 = v185;
              result = v183;
              v67 = v248;
            }

            ++v66;
            v67[2] = v122 + 1;
            v67[v122 + 4] = v71;
            if (v66 == v65)
            {
              goto LABEL_48;
            }
          }

          goto LABEL_81;
        }

LABEL_48:

        v125 = v195;
        PartialWebPresentmentMobileDocumentRequest.UseCase.isMandatory.getter();
        v126 = v192;
        CredentialPresentmentRequest.UseCase.init(documentRequests:isMandatory:)();
        (*v176)(v125, v196);
        v58 = v186;
        v249 = v186;
        v128 = v186[2];
        v127 = v186[3];
        if (v128 >= v127 >> 1)
        {
          sub_100173108(v127 > 1, v128 + 1, 1);
          v58 = v249;
        }

        v129 = v182 + 1;
        v58[2] = v128 + 1;
        (*(v194 + 32))(v58 + ((*(v194 + 80) + 32) & ~*(v194 + 80)) + *(v194 + 72) * v128, v126, v193);
        v57 = v129;
        v80 = v215;
        v81 = v214;
        result = v184;
        v59 = v178;
        if (v129 == v179)
        {
LABEL_78:
          v186 = v58;

          goto LABEL_57;
        }
      }

      goto LABEL_82;
    }

LABEL_56:

    v186 = _swiftEmptyArrayStorage;
    v80 = v215;
    v81 = v214;
    v60 = v226;
LABEL_57:
    v145 = PartialWebPresentmentMobileDocumentRequest.authenticationCertificateChains.getter();
    v146 = *(v145 + 16);
    if (v146)
    {
      v249 = _swiftEmptyArrayStorage;
      v147 = v145;
      sub_1001730C8(0, v146, 0);
      result = v147;
      v148 = 0;
      v149 = v249;
      v238 = v147 + 32;
      v244 = (v205 + 8);
      v245 = (v205 + 16);
      v150 = v209;
      v236 = v146;
      v237 = v147;
      while (v148 < *(result + 16))
      {
        v151 = *(v238 + 8 * v148);
        v152 = *(v151 + 16);
        if (v152)
        {
          v240 = v148;
          v241 = v149;
          v248 = _swiftEmptyArrayStorage;

          sub_10017314C(0, v152, 0);
          v153 = v248;
          v154 = *(v205 + 80);
          v239 = v151;
          v155 = v151 + ((v154 + 32) & ~v154);
          v246 = *(v205 + 72);
          v156 = *(v205 + 16);
          do
          {
            v158 = v242;
            v157 = v243;
            v156(v242, v155, v243);
            v159 = Certificate.data.getter();
            v161 = v160;
            (*v244)(v158, v157);
            v248 = v153;
            v163 = v153[2];
            v162 = v153[3];
            if (v163 >= v162 >> 1)
            {
              sub_10017314C((v162 > 1), v163 + 1, 1);
              v153 = v248;
            }

            v153[2] = v163 + 1;
            v164 = &v153[2 * v163];
            v164[4] = v159;
            v164[5] = v161;
            v155 += v246;
            --v152;
          }

          while (v152);

          v150 = v209;
          v42 = v222;
          v146 = v236;
          result = v237;
          v148 = v240;
          v149 = v241;
        }

        else
        {
          v153 = _swiftEmptyArrayStorage;
        }

        v249 = v149;
        v166 = v149[2];
        v165 = v149[3];
        if (v166 >= v165 >> 1)
        {
          v167 = result;
          v168 = v148;
          sub_1001730C8((v165 > 1), v166 + 1, 1);
          v148 = v168;
          result = v167;
          v150 = v209;
          v149 = v249;
        }

        ++v148;
        v149[2] = v166 + 1;
        v149[v166 + 4] = v153;
        v80 = v215;
        v81 = v214;
        v60 = v226;
        if (v148 == v146)
        {

          goto LABEL_74;
        }
      }

      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
      return result;
    }

    v149 = _swiftEmptyArrayStorage;
    v150 = v209;
LABEL_74:
    v169 = v188;
    v170 = v180;
    *v188 = v181;
    v169[1] = v170;
    v169[2] = v149;
    (*(v189 + 104))(v169, enum case for SessionType.web(_:), v190);
    CredentialPresentmentRequest.init(useCases:sessionType:)();
    (*(v81 + 8))(v150, v80);
    return (*(v60 + 8))(v187, v42);
  }

  else
  {
    v246 = v53;
    v130 = v231;
    defaultLogger()();
    v131 = v214;
    v132 = v235;
    v133 = v215;
    (*(v214 + 16))(v235, v48, v215);
    v134 = Logger.logObject.getter();
    v135 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v134, v135))
    {
      v136 = swift_slowAlloc();
      v245 = swift_slowAlloc();
      v249 = v245;
      *v136 = 136315138;
      v137 = v230;
      LODWORD(v243) = v135;
      PartialWebPresentmentRequest.originatingURL.getter();
      sub_1002A7708(&qword_1008418B0, &type metadata accessor for URL);
      v138 = v241;
      v139 = dispatch thunk of CustomStringConvertible.description.getter();
      v141 = v140;
      v52(v137, v138);
      v133 = v215;
      v246 = *(v131 + 8);
      (v246)(v235, v215);
      v142 = sub_100141FE4(v139, v141, &v249);
      v143 = v130;
      v144 = v142;
      v42 = v222;

      *(v136 + 4) = v144;
      _os_log_impl(&_mh_execute_header, v134, v243, "Originating URL is missing host: %s", v136, 0xCu);
      sub_10000BB78(v245);

      (*(v232 + 8))(v143, v233);
    }

    else
    {

      v246 = *(v131 + 8);
      (v246)(v132, v133);
      (*(v232 + 8))(v130, v233);
    }

    (*(v228 + 104))(v244, enum case for DIPError.Code.webPresentmentMissingHost(_:), v229);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1002A7708(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    (v246)(v209, v133);
    return (*(v226 + 8))(v187, v42);
  }
}

unint64_t sub_100428E60(uint64_t a1)
{
  v1 = sub_100428E94(a1);

  return v1;
}

unint64_t sub_100428E94(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100007224(&qword_100844128, &unk_1006E24C0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100175490(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t type metadata accessor for MobileDocumentProviderRequestState()
{
  result = qword_1008441A0;
  if (!qword_1008441A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100428FE4()
{
  result = sub_100429080();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for MobileDocumentProviderViewServiceIdentifier();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for MobileDocumentProviderUserSelection();
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for MobileDocumentProviderPresentmentResponse();
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

unint64_t sub_100429080()
{
  result = qword_1008441B0;
  if (!qword_1008441B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1008441B0);
  }

  return result;
}

uint64_t sub_1004290CC(uint64_t a1)
{
  v1 = *sub_10000BA08((a1 + 32), *(a1 + 56));

  return _swift_continuation_resume(v1);
}

uint64_t sub_100429100(uint64_t a1, void *a2)
{
  v3 = sub_10000BA08((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    sub_100007224(&qword_100833B90, &qword_1006D95C0);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    v8 = *v3;

    return _swift_continuation_throwingResume(v8);
  }
}

uint64_t sub_1004291AC(uint64_t a1, uint64_t a2, int *a3)
{
  v8 = (a3 + *a3);
  v5 = a3[1];
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_100027B9C;

  return v8(a2);
}

void *sub_1004292D0(uint64_t *a1)
{
  v3 = sub_100007224(&qword_100843558, &qword_1006E1270);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v24 - v5;
  swift_defaultActor_initialize();
  sub_100007224(&unk_100843560, &qword_1006E1278);
  v7 = swift_allocObject();
  *(v7 + 24) = 0;
  *(v7 + 16) = 0;
  *(v1 + 19) = v7;
  v8 = [objc_opt_self() anonymousListener];
  sub_100007224(&qword_1008442F8, &unk_1006E26A0);
  v9 = swift_allocObject();
  *(v9 + 24) = 0;
  *(v9 + 16) = v8;
  *(v1 + 20) = v9;
  v10 = type metadata accessor for MobileDocumentProviderViewServiceIdentifier();
  (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
  v11 = sub_100007224(&qword_100844300, &qword_1006E1280);
  v12 = *(v11 + 52);
  v13 = (*(v11 + 48) + 3) & 0x1FFFFFFFCLL;
  v14 = swift_allocObject();
  *(v14 + ((*(*v14 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_1000B1FC8(v6, v14 + *(*v14 + class metadata base offset for ManagedBuffer + 16), &qword_100843558, &qword_1006E1270);
  *(v1 + 21) = v14;
  v15 = OBJC_IVAR____TtC8coreidvd41MobileDocumentProviderUIConnectionManager_continuation;
  v16 = sub_100007224(&qword_100844230, &qword_1006E25F8);
  (*(*(v16 - 8) + 56))(&v1[v15], 1, 1, v16);
  v17 = OBJC_IVAR____TtC8coreidvd41MobileDocumentProviderUIConnectionManager_response;
  v18 = type metadata accessor for MobileDocumentProviderUIConnectionManager.ViewServiceOutcome(0);
  (*(*(v18 - 8) + 56))(&v1[v17], 1, 1, v18);
  sub_100020260(a1, (v1 + 112));
  v19 = type metadata accessor for MobileDocumentProviderUIConnectionManager(0);
  v25.receiver = v1;
  v25.super_class = v19;
  v20 = objc_msgSendSuper2(&v25, "init");
  v21 = v20[20];
  v22 = v20;

  os_unfair_lock_lock((v21 + 24));
  sub_1004338C8((v21 + 16));
  os_unfair_lock_unlock((v21 + 24));

  sub_10000BB78(a1);

  return v22;
}

uint64_t *sub_1004295E4()
{
  v1 = v0[19];

  os_unfair_lock_lock((v1 + 24));
  [*(v1 + 16) invalidate];
  os_unfair_lock_unlock((v1 + 24));

  v2 = v0[20];

  os_unfair_lock_lock((v2 + 24));
  [*(v2 + 16) invalidate];
  os_unfair_lock_unlock((v2 + 24));

  sub_10000BB78(v0 + 14);
  v3 = v0[19];

  v4 = v0[20];

  v5 = v0[21];

  sub_10000BE18(v0 + OBJC_IVAR____TtC8coreidvd41MobileDocumentProviderUIConnectionManager_continuation, &qword_100844308, &qword_1006E26B0);
  sub_10000BE18(v0 + OBJC_IVAR____TtC8coreidvd41MobileDocumentProviderUIConnectionManager_response, &unk_100844318, &qword_1006E26C0);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1004296D8()
{
  sub_1004295E4();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10042972C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v65 = a3;
  v64 = a2;
  v67 = a4;
  v5 = sub_100007224(&unk_100844340, &qword_1006E15B0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v51 - v7;
  v9 = type metadata accessor for MobileDocumentProviderOption();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v72 = &v51 - v15;
  v62 = sub_100007224(&unk_1008442E0, &unk_1006E2650);
  v60 = *(v62 - 8);
  v16 = *(v60 + 64);
  __chkstk_darwin(v62);
  v59 = &v51 - v17;
  v63 = type metadata accessor for MobileDocumentProviderViewServiceIdentifier();
  v61 = *(v63 - 8);
  v18 = *(v61 + 64);
  __chkstk_darwin(v63);
  v58 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_100007224(&qword_100843698, &qword_1006E15C0);
  v53 = *(v54 - 8);
  v20 = *(v53 + 64);
  __chkstk_darwin(v54);
  v52 = &v51 - v21;
  v22 = type metadata accessor for MobileDocumentProviderLocalOptionUIConfiguration();
  v56 = *(v22 - 8);
  v57 = v22;
  v23 = *(v56 + 64);
  __chkstk_darwin(v22);
  v55 = &v51 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(a1 + 16);
  if (v25)
  {
    v26 = *(type metadata accessor for MobileDocumentProviderRecord(0) - 8);
    v27 = (v10 + 48);
    v28 = (v10 + 32);
    v29 = a1 + ((*(v26 + 80) + 32) & ~*(v26 + 80));
    v30 = *(v26 + 72);
    v73 = _swiftEmptyArrayStorage;
    v70 = v10;
    v71 = v9;
    v68 = (v10 + 48);
    v69 = v14;
    do
    {
      sub_100429E78(v29, v8);
      if ((*v27)(v8, 1, v9) == 1)
      {
        sub_10000BE18(v8, &unk_100844340, &qword_1006E15B0);
      }

      else
      {
        v31 = v30;
        v32 = *v28;
        v33 = v8;
        v34 = v14;
        v35 = v72;
        v36 = v33;
        (*v28)(v72);
        (v32)(v34, v35, v9);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v73 = sub_1003C6640(0, v73[2] + 1, 1, v73);
        }

        v38 = v73[2];
        v37 = v73[3];
        v8 = v36;
        if (v38 >= v37 >> 1)
        {
          v73 = sub_1003C6640(v37 > 1, v38 + 1, 1, v73);
        }

        v30 = v31;
        v39 = v73;
        v73[2] = v38 + 1;
        v14 = v69;
        v40 = v39 + ((*(v70 + 80) + 32) & ~*(v70 + 80)) + *(v70 + 72) * v38;
        v9 = v71;
        (v32)(v40, v69, v71);
        v27 = v68;
      }

      v29 += v30;
      --v25;
    }

    while (v25);
  }

  else
  {
    v73 = _swiftEmptyArrayStorage;
  }

  v74 = v73;
  swift_getKeyPath();
  v41 = v52;
  KeyPathComparator.init<A>(_:order:)();
  sub_100007224(&unk_100844350, &qword_1006E15F8);
  sub_1000BA30C(&qword_1008436A8, &unk_100844350, &qword_1006E15F8);
  sub_1000BA30C(&unk_100844360, &qword_100843698, &qword_1006E15C0);
  v42 = v54;
  Sequence.sorted<A>(using:)();
  (*(v53 + 8))(v41, v42);

  v43 = v55;
  MobileDocumentProviderLocalOptionUIConfiguration.init(options:formattedOriginURL:)();
  v45 = v56;
  v44 = v57;
  v46 = v58;
  (*(v56 + 16))(v58, v43, v57);
  v47 = v61;
  v48 = v63;
  v49 = (*(v61 + 104))(v46, enum case for MobileDocumentProviderViewServiceIdentifier.selectionView(_:), v63);
  __chkstk_darwin(v49);
  *(&v51 - 2) = v66;
  *(&v51 - 1) = v46;
  type metadata accessor for MobileDocumentProviderRequestState();
  (*(v60 + 104))(v59, enum case for AsyncThrowingStream.Continuation.BufferingPolicy.unbounded<A, B>(_:), v62);
  AsyncThrowingStream.init<>(_:bufferingPolicy:_:)();
  (*(v45 + 8))(v43, v44);
  return (*(v47 + 8))(v46, v48);
}

uint64_t sub_100429E78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v80 = type metadata accessor for MobileDocumentProviderRecord(0);
  v4 = *(*(v80 - 8) + 64);
  v5 = __chkstk_darwin(v80);
  v76 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v75 = &v72 - v8;
  __chkstk_darwin(v7);
  v73 = &v72 - v9;
  v10 = type metadata accessor for Logger();
  v78 = *(v10 - 8);
  v79 = v10;
  v11 = *(v78 + 64);
  v12 = __chkstk_darwin(v10);
  v77 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v74 = &v72 - v14;
  v15 = type metadata accessor for MobileDocumentProviderRecord.RecordSource(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15);
  v19 = &v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v72 - v20;
  v22 = sub_100007224(&qword_10083ACF8, &qword_1006D8FC0);
  v23 = *(*(v22 - 8) + 64);
  v24 = __chkstk_darwin(v22 - 8);
  v26 = &v72 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v28 = &v72 - v27;
  sub_100400304(a1, v21, type metadata accessor for MobileDocumentProviderRecord.RecordSource);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v81 = a2;
  if (EnumCaseMultiPayload == 1)
  {
    v30 = *&v21[*(sub_100007224(&unk_100844370, &unk_1006DDF00) + 48)];

    v31 = type metadata accessor for BundleRecord();
    v32 = *(v31 - 8);
    (*(v32 + 32))(v28, v21, v31);
    (*(v32 + 56))(v28, 0, 1, v31);
  }

  else
  {
    v33 = sub_100007224(&unk_100844380, &unk_1006DDD60);
    sub_1000B1FC8(&v21[*(v33 + 48)], v28, &qword_10083ACF8, &qword_1006D8FC0);
    v31 = type metadata accessor for BundleRecord();
    (*(*(v31 - 8) + 8))(v21, v31);
  }

  type metadata accessor for BundleRecord();
  v34 = *(v31 - 8);
  v35 = *(v34 + 48);
  if (v35(v28, 1, v31) == 1)
  {
    sub_10000BE18(v28, &qword_10083ACF8, &qword_1006D8FC0);
    sub_100400304(a1, v19, type metadata accessor for MobileDocumentProviderRecord.RecordSource);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v36 = *&v19[*(sub_100007224(&unk_100844370, &unk_1006DDF00) + 48)];

      (*(v34 + 56))(v26, 1, 1, v31);
      (*(v34 + 8))(v19, v31);
    }

    else
    {
      v37 = *(sub_100007224(&unk_100844380, &unk_1006DDD60) + 48);
      (*(v34 + 32))(v26, v19, v31);
      (*(v34 + 56))(v26, 0, 1, v31);
      sub_10000BE18(&v19[v37], &qword_10083ACF8, &qword_1006D8FC0);
    }

    if (v35(v26, 1, v31) == 1)
    {
      sub_10000BE18(v26, &qword_10083ACF8, &qword_1006D8FC0);
      v38 = v81;
      goto LABEL_15;
    }

    v28 = v26;
  }

  v38 = v81;
  v39 = BundleRecord.localizedName.getter();
  v41 = v40;
  (*(v34 + 8))(v28, v31);
  v83[0] = v39;
  v83[1] = v41;
  sub_1000ACCA0();
  Collection.nilIfEmpty.getter();

  if (!v82)
  {
LABEL_15:
    v46 = v77;
    defaultLogger()();
    v47 = v76;
    sub_100400304(a1, v76, type metadata accessor for MobileDocumentProviderRecord);
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = v46;
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v83[0] = v52;
      *v51 = 136315138;
      sub_100400304(v47, v75, type metadata accessor for MobileDocumentProviderRecord);
      v53 = String.init<A>(describing:)();
      v54 = v47;
      v55 = v53;
      v57 = v56;
      sub_100326E1C(v54);
      v58 = sub_100141FE4(v55, v57, v83);

      *(v51 + 4) = v58;
      _os_log_impl(&_mh_execute_header, v48, v49, "MobileDocumentProviderUIConnectionManager could not find localized display name for record %s. Not sending to selection UI", v51, 0xCu);
      sub_10000BB78(v52);

      (*(v78 + 8))(v50, v79);
    }

    else
    {

      sub_100326E1C(v47);
      (*(v78 + 8))(v46, v79);
    }

LABEL_18:
    v45 = 1;
    goto LABEL_19;
  }

  sub_100330A28();
  if (!v42)
  {
    sub_100330370();
    if (!v43)
    {

      v61 = v74;
      defaultLogger()();
      v62 = a1;
      v63 = v73;
      sub_100400304(v62, v73, type metadata accessor for MobileDocumentProviderRecord);
      v64 = Logger.logObject.getter();
      v65 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v83[0] = v67;
        *v66 = 136315138;
        sub_100400304(v63, v75, type metadata accessor for MobileDocumentProviderRecord);
        v68 = String.init<A>(describing:)();
        v70 = v69;
        sub_100326E1C(v63);
        v71 = sub_100141FE4(v68, v70, v83);

        *(v66 + 4) = v71;
        _os_log_impl(&_mh_execute_header, v64, v65, "MobileDocumentProviderUIConnectionManager could not find bundleIdentifier for record %s. Not sending to selection UI", v66, 0xCu);
        sub_10000BB78(v67);
      }

      else
      {

        sub_100326E1C(v63);
      }

      (*(v78 + 8))(v61, v79);
      goto LABEL_18;
    }
  }

  sub_10032FA04();
  v44 = *(a1 + *(v80 + 20));

  MobileDocumentProviderOption.init(recordIdentifier:bundleIdentifier:localizedDisplayName:availableDocumentTypes:)();
  v45 = 0;
LABEL_19:
  v59 = type metadata accessor for MobileDocumentProviderOption();
  return (*(*(v59 - 8) + 56))(v38, v45, 1, v59);
}

uint64_t sub_10042A7D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29 = a3;
  v25 = a2;
  v27 = a1;
  v3 = sub_100007224(&qword_100844230, &qword_1006E25F8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v28 = &v24 - v6;
  v7 = type metadata accessor for MobileDocumentProviderViewServiceIdentifier();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v24 - v13;
  v26 = &v24 - v13;
  swift_allocObject();
  swift_weakInit();
  v15 = v3;
  v16 = v27;
  AsyncThrowingStream.Continuation.onTermination.setter();
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  (*(v8 + 16))(v10, v29, v7);
  v18 = v28;
  v19 = v15;
  (*(v4 + 16))(v28, v16, v15);
  v20 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v21 = (v9 + *(v4 + 80) + v20) & ~*(v4 + 80);
  v22 = swift_allocObject();
  *(v22 + 2) = 0;
  *(v22 + 3) = 0;
  *(v22 + 4) = v25;
  (*(v8 + 32))(&v22[v20], v10, v7);
  (*(v4 + 32))(&v22[v21], v18, v19);

  sub_1003E653C(0, 0, v26, &unk_1006E2668, v22);
}

uint64_t sub_10042AAF8(uint64_t a1)
{
  v2 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v16 - v4;
  v6 = sub_100007224(&qword_1008442F0, &qword_1006E2670);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v16 - v9;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = result;
    (*(v7 + 16))(v10, a1, v6);
    v13 = (*(v7 + 88))(v10, v6);
    if (v13 == enum case for AsyncThrowingStream.Continuation.Termination.finished<A, B>(_:) || v13 != enum case for AsyncThrowingStream.Continuation.Termination.cancelled<A, B>(_:))
    {

      return (*(v7 + 8))(v10, v6);
    }

    else
    {
      v14 = type metadata accessor for TaskPriority();
      (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
      v15 = swift_allocObject();
      v15[2] = 0;
      v15[3] = 0;
      v15[4] = v12;
      sub_1003E653C(0, 0, v5, &unk_1006E2680, v15);
    }
  }

  return result;
}

uint64_t sub_10042AD54()
{
  v1 = *(v0 + 16);
  sub_10042C604();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10042ADB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return _swift_task_switch(sub_10042ADD8, a4, 0);
}

uint64_t sub_10042ADD8()
{
  v1 = v0[2];
  sub_10042AE3C(v0[3], v0[4]);
  v2 = v0[1];

  return v2();
}

uint64_t sub_10042AE3C(uint64_t a1, uint64_t a2)
{
  v46 = a2;
  v38 = a1;
  v3 = type metadata accessor for DIPError.Code();
  v36 = *(v3 - 8);
  v37 = v3;
  v4 = *(v36 + 64);
  __chkstk_darwin(v3);
  v39 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for MobileDocumentProviderRequestState();
  v6 = *(*(v45 - 8) + 64);
  __chkstk_darwin(v45);
  v44 = (&v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_100007224(&qword_100844328, &qword_1006E26C8);
  v42 = *(v8 - 8);
  v43 = v8;
  v9 = *(v42 + 64);
  __chkstk_darwin(v8);
  v40 = &v35 - v10;
  v11 = sub_100007224(&qword_100844308, &qword_1006E26B0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v35 - v13;
  v15 = sub_100007224(&qword_100843558, &qword_1006E1270);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v35 - v17;
  v41 = v2;
  v19 = *(v2 + 168);
  KeyPath = swift_getKeyPath();
  v47 = sub_1003FD338;
  v48 = KeyPath;
  v21 = *(*v19 + class metadata base offset for ManagedBuffer + 16);
  v22 = (*(*v19 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v19 + v22));
  sub_100433EC0();
  os_unfair_lock_unlock((v19 + v22));

  v23 = type metadata accessor for MobileDocumentProviderViewServiceIdentifier();
  v24 = (*(*(v23 - 8) + 48))(v18, 1, v23);
  v25 = sub_10000BE18(v18, &qword_100843558, &qword_1006E1270);
  if (v24 == 1)
  {
    __chkstk_darwin(v25);
    os_unfair_lock_lock((v19 + v22));
    sub_1003FB544(v19 + v21);
    os_unfair_lock_unlock((v19 + v22));
    v26 = sub_100007224(&qword_100844230, &qword_1006E25F8);
    v27 = *(v26 - 8);
    (*(v27 + 16))(v14, v46, v26);
    (*(v27 + 56))(v14, 0, 1, v26);
    v28 = OBJC_IVAR____TtC8coreidvd41MobileDocumentProviderUIConnectionManager_continuation;
    v29 = v41;
    swift_beginAccess();
    sub_1000B2764(v14, v29 + v28, &qword_100844308, &qword_1006E26B0);
    swift_endAccess();
    v30 = *(v29 + 160);
    v31 = swift_getKeyPath();
    __chkstk_darwin(v31);

    os_unfair_lock_lock((v30 + 24));
    sub_100433F40((v30 + 16), v49);
    os_unfair_lock_unlock((v30 + 24));

    *v44 = v49[0];
    swift_storeEnumTagMultiPayload();
    v32 = v40;
    AsyncThrowingStream.Continuation.yield(_:)();
    return (*(v42 + 8))(v32, v43);
  }

  else
  {
    (*(v36 + 104))(v39, enum case for DIPError.Code.unexpectedDaemonState(_:), v37);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100433914(&qword_100834130, &type metadata accessor for DIPError);
    v34 = swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    v49[0] = v34;
    sub_100007224(&qword_100844230, &qword_1006E25F8);
    return AsyncThrowingStream.Continuation.finish(throwing:)();
  }
}

uint64_t sub_10042B470(void *a1)
{
  v1 = a1;
  swift_getAtKeyPath();

  return v3;
}

uint64_t sub_10042B4BC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 80) = a5;
  *(v6 + 88) = v5;
  *(v6 + 64) = a2;
  *(v6 + 72) = a4;
  *(v6 + 224) = a3;
  *(v6 + 56) = a1;
  v7 = type metadata accessor for DIPError.Code();
  *(v6 + 96) = v7;
  v8 = *(v7 - 8);
  *(v6 + 104) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 112) = swift_task_alloc();
  v10 = *(*(sub_100007224(&qword_1008435C8, &unk_1006E1310) - 8) + 64) + 15;
  *(v6 + 120) = swift_task_alloc();
  v11 = type metadata accessor for MobileDocumentProviderRemoteUIError();
  *(v6 + 128) = v11;
  v12 = *(v11 - 8);
  *(v6 + 136) = v12;
  v13 = *(v12 + 64) + 15;
  *(v6 + 144) = swift_task_alloc();
  v14 = type metadata accessor for Logger();
  *(v6 + 152) = v14;
  v15 = *(v14 - 8);
  *(v6 + 160) = v15;
  v16 = *(v15 + 64) + 15;
  *(v6 + 168) = swift_task_alloc();
  *(v6 + 176) = swift_task_alloc();

  return _swift_task_switch(sub_10042B684, v5, 0);
}

uint64_t sub_10042B684()
{
  v28 = v0;
  v1 = *(v0 + 176);
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 176);
  v7 = *(v0 + 152);
  v6 = *(v0 + 160);
  if (v4)
  {
    v9 = *(v0 + 56);
    v8 = *(v0 + 64);
    v10 = *(v0 + 224);
    v26 = *(v0 + 176);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v27 = v12;
    *v11 = 136446210;
    v13 = StaticString.description.getter();
    v15 = sub_100141FE4(v13, v14, &v27);

    *(v11 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v2, v3, "MobileDocumentProviderUIConnectionManager %{public}s", v11, 0xCu);
    sub_10000BB78(v12);

    v16 = *(v6 + 8);
    v16(v26, v7);
  }

  else
  {

    v16 = *(v6 + 8);
    v16(v5, v7);
  }

  *(v0 + 184) = v16;
  v17 = *(v0 + 80);
  v18 = *(v0 + 88);
  v19 = *(v0 + 72);
  v20 = swift_allocObject();
  *(v0 + 192) = v20;
  *(v20 + 16) = v19;
  *(v20 + 24) = v17;

  v21 = swift_task_alloc();
  *(v0 + 200) = v21;
  v21[2] = v18;
  v21[3] = &unk_1006E1320;
  v21[4] = v20;
  sub_100433914(&unk_100844330, type metadata accessor for MobileDocumentProviderUIConnectionManager);
  v22 = async function pointer to withTaskCancellationHandler<A>(operation:onCancel:isolation:)[1];
  v23 = swift_task_alloc();
  *(v0 + 208) = v23;
  *v23 = v0;
  v23[1] = sub_10042B920;
  v24 = *(v0 + 88);

  return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v23, &unk_1006E2748);
}

uint64_t sub_10042B920()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v10 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v4 = v2[11];
    v5 = sub_10042BA50;
  }

  else
  {
    v6 = v2[24];
    v7 = v2[25];
    v8 = v2[11];

    v5 = sub_1003F3E10;
    v4 = v8;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10042BA50()
{
  v51 = v0;
  v1 = *(v0 + 216);
  v2 = *(v0 + 192);
  v3 = *(v0 + 200);
  v4 = *(v0 + 168);

  defaultLogger()();
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 216);
    v8 = *(v0 + 160);
    v48 = *(v0 + 168);
    v49 = *(v0 + 184);
    v47 = *(v0 + 152);
    v10 = *(v0 + 56);
    v9 = *(v0 + 64);
    v11 = *(v0 + 224);
    v12 = swift_slowAlloc();
    v50[0] = swift_slowAlloc();
    *v12 = 136446466;
    v13 = StaticString.description.getter();
    v15 = sub_100141FE4(v13, v14, v50);

    *(v12 + 4) = v15;
    *(v12 + 12) = 2080;
    swift_getErrorValue();
    v17 = *(v0 + 16);
    v16 = *(v0 + 24);
    v18 = *(v0 + 32);
    v19 = Error.localizedDescription.getter();
    v21 = sub_100141FE4(v19, v20, v50);

    *(v12 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v5, v6, "MobileDocumentProviderUIConnectionManager %{public}s received error %s", v12, 0x16u);
    swift_arrayDestroy();

    v49(v48, v47);
  }

  else
  {
    v22 = *(v0 + 184);
    v24 = *(v0 + 160);
    v23 = *(v0 + 168);
    v25 = *(v0 + 152);

    v22(v23, v25);
  }

  v26 = *(v0 + 128);
  v27 = *(v0 + 136);
  v28 = *(v0 + 120);
  *(v0 + 40) = *(v0 + 216);
  swift_errorRetain();
  sub_100007224(&qword_100833B90, &qword_1006D95C0);
  v29 = swift_dynamicCast();
  v30 = *(v27 + 56);
  v31 = *(v0 + 216);
  if (v29)
  {
    v33 = *(v0 + 136);
    v32 = *(v0 + 144);
    v34 = *(v0 + 120);
    v35 = *(v0 + 128);
    v30(v34, 0, 1, v35);
    (*(v33 + 32))(v32, v34, v35);
    type metadata accessor for DIPError();
    sub_100433914(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    MobileDocumentProviderRemoteUIError.dipErrorRepresentation.getter();
    swift_willThrow();

    (*(v33 + 8))(v32, v35);
  }

  else
  {
    v36 = *(v0 + 120);
    v38 = *(v0 + 104);
    v37 = *(v0 + 112);
    v39 = *(v0 + 96);
    v30(v36, 1, 1, *(v0 + 128));
    sub_10000BE18(v36, &qword_1008435C8, &unk_1006E1310);
    (*(v38 + 104))(v37, enum case for DIPError.Code.internalError(_:), v39);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100433914(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  v41 = *(v0 + 168);
  v40 = *(v0 + 176);
  v42 = *(v0 + 144);
  v44 = *(v0 + 112);
  v43 = *(v0 + 120);

  v45 = *(v0 + 8);

  return v45();
}

uint64_t sub_10042BF04(uint64_t a1, uint64_t a2)
{
  v2[18] = a1;
  v2[19] = a2;
  v3 = type metadata accessor for MobileDocumentProviderPresentmentRequest();
  v2[20] = v3;
  v4 = *(v3 - 8);
  v2[21] = v4;
  v5 = *(v4 + 64) + 15;
  v2[22] = swift_task_alloc();

  return _swift_task_switch(sub_10042BFC4, 0, 0);
}

uint64_t sub_10042BFC4()
{
  v1 = v0[18];
  (*(v0[21] + 16))(v0[22], v0[19], v0[20]);
  v2 = objc_allocWithZone(type metadata accessor for XPCMobileDocumentProviderPresentmentRequest());
  v3 = XPCMobileDocumentProviderPresentmentRequest.init(value:)();
  v0[23] = v3;
  v0[2] = v0;
  v0[3] = sub_1003F2BE0;
  v4 = swift_continuation_init();
  v0[17] = sub_100007224(&unk_100843590, &qword_1006D8B10);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100429100;
  v0[13] = &unk_100810300;
  v0[14] = v4;
  [v1 presentAuthorizationViewFromSelectionViewWithRequest:v3 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10042C124(uint64_t a1, uint64_t a2)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = a2;
  return _swift_task_switch(sub_10042C144, 0, 0);
}

uint64_t sub_10042C144@<X0>(NSURL *a1@<X8>)
{
  v3 = v1[18];
  v2 = v1[19];
  URL._bridgeToObjectiveC()(a1);
  v5 = v4;
  v1[20] = v4;
  v1[2] = v1;
  v1[3] = sub_10042C270;
  v6 = swift_continuation_init();
  v1[17] = sub_100007224(&unk_100843590, &qword_1006D8B10);
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_100429100;
  v1[13] = &unk_100810350;
  v1[14] = v6;
  [v3 presentScannableCodeViewWithPayload:v5 completionHandler:v1 + 10];

  return _swift_continuation_await(v1 + 2);
}

uint64_t sub_10042C270()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 168) = v2;
  if (v2)
  {
    v3 = sub_10017B138;
  }

  else
  {
    v3 = sub_10042C380;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10042C380()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10042C3E4(uint64_t a1, uint64_t a2)
{
  v2[18] = a1;
  v2[19] = a2;
  v3 = type metadata accessor for MobileDocumentProviderAuxiliaryView();
  v2[20] = v3;
  v4 = *(v3 - 8);
  v2[21] = v4;
  v5 = *(v4 + 64) + 15;
  v2[22] = swift_task_alloc();

  return _swift_task_switch(sub_10042C4A4, 0, 0);
}

uint64_t sub_10042C4A4()
{
  v1 = v0[18];
  (*(v0[21] + 16))(v0[22], v0[19], v0[20]);
  v2 = objc_allocWithZone(type metadata accessor for XPCMobileDocumentProviderAuxiliaryView());
  v3 = XPCMobileDocumentProviderAuxiliaryView.init(value:)();
  v0[23] = v3;
  v0[2] = v0;
  v0[3] = sub_1003F2690;
  v4 = swift_continuation_init();
  v0[17] = sub_100007224(&unk_100843590, &qword_1006D8B10);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100429100;
  v0[13] = &unk_100810328;
  v0[14] = v4;
  [v1 presentAuxiliaryView:v3 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10042C604()
{
  v1 = v0;
  v2 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v19 - v4;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v20 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_100141FE4(0x287373696D736964, 0xE900000000000029, &v20);
    _os_log_impl(&_mh_execute_header, v11, v12, "MobileDocumentProviderUIConnectionManager %s", v13, 0xCu);
    sub_10000BB78(v14);
  }

  (*(v7 + 8))(v10, v6);
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = sub_100433914(&unk_100844330, type metadata accessor for MobileDocumentProviderUIConnectionManager);
  v17 = swift_allocObject();
  v17[2] = v1;
  v17[3] = v16;
  v17[4] = v1;
  swift_retain_n();
  sub_1003E653C(0, 0, v5, &unk_1006E26D8, v17);
}

uint64_t sub_10042C8C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v6 = type metadata accessor for Logger();
  v4[3] = v6;
  v7 = *(v6 - 8);
  v4[4] = v7;
  v8 = *(v7 + 64) + 15;
  v4[5] = swift_task_alloc();
  v4[6] = swift_task_alloc();

  return _swift_task_switch(sub_10042C994, a4, 0);
}

uint64_t sub_10042C994()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[7] = v2;
  v2[2] = v1;
  v2[3] = &unk_1006E26E0;
  v2[4] = 0;
  sub_100433914(&unk_100844330, type metadata accessor for MobileDocumentProviderUIConnectionManager);
  v3 = async function pointer to withTaskCancellationHandler<A>(operation:onCancel:isolation:)[1];
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_10042CAD4;
  v5 = v0[2];

  return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v4, &unk_1006E26F0);
}

uint64_t sub_10042CAD4()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v9 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = *(v2 + 16);
    v5 = sub_10042CD6C;
  }

  else
  {
    v6 = *(v2 + 56);
    v7 = *(v2 + 16);

    v5 = sub_10042CBFC;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10042CBFC()
{
  v15 = v0;
  v1 = v0[6];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[6];
  v6 = v0[3];
  v7 = v0[4];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_100141FE4(0x287373696D736964, 0xE900000000000029, &v14);
    _os_log_impl(&_mh_execute_header, v2, v3, "MobileDocumentProviderUIConnectionManager %s successfully dismissed.", v8, 0xCu);
    sub_10000BB78(v9);
  }

  (*(v7 + 8))(v5, v6);
  v11 = v0[5];
  v10 = v0[6];

  v12 = v0[1];

  return v12();
}

uint64_t sub_10042CD6C()
{
  v21 = v0;
  v1 = v0[9];
  v2 = v0[7];
  v3 = v0[5];

  defaultLogger()();
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[9];
  v9 = v0[4];
  v8 = v0[5];
  v10 = v0[3];
  if (v6)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20 = v13;
    *v11 = 136315394;
    *(v11 + 4) = sub_100141FE4(0x287373696D736964, 0xE900000000000029, &v20);
    *(v11 + 12) = 2112;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v14;
    *v12 = v14;
    _os_log_impl(&_mh_execute_header, v4, v5, "MobileDocumentProviderUIConnectionManager %s failed to dismiss: %@", v11, 0x16u);
    sub_10000BE18(v12, &unk_100833B50, &unk_1006D8FB0);

    sub_10000BB78(v13);
  }

  else
  {
    v15 = v0[9];
  }

  (*(v9 + 8))(v8, v10);
  v17 = v0[5];
  v16 = v0[6];

  v18 = v0[1];

  return v18();
}

uint64_t sub_10042CF94()
{
  v1 = v0[18];
  v0[2] = v0;
  v0[3] = sub_1003247BC;
  v2 = swift_continuation_init();
  v0[17] = sub_100007224(&unk_1008435E0, &qword_1006E1390);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1004290CC;
  v0[13] = &unk_100810440;
  v0[14] = v2;
  [v1 dismissWithCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

id sub_10042D0A8@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1)
  {
    defaultLogger()();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Multiple connections are not supported.", v15, 2u);
    }

    result = (*(v9 + 8))(v12, v8);
    *a4 = 0;
  }

  else
  {
    v17 = objc_opt_self();
    v18 = [v17 interfaceWithProtocol:&OBJC_PROTOCOL____TtP13CoreIDVShared50MobileDocumentProviderViewServiceDelegateInterface_];
    [a2 setRemoteObjectInterface:v18];

    v19 = [v17 interfaceWithProtocol:&OBJC_PROTOCOL____TtP13CoreIDVShared42MobileDocumentProviderViewServiceInterface_];
    [a2 setExportedInterface:v19];

    [a2 setExportedObject:a3];
    v20 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_100434C10;
    aBlock[5] = v20;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100503A7C;
    aBlock[3] = &unk_1008108C8;
    v21 = _Block_copy(aBlock);

    [a2 setInvalidationHandler:v21];
    _Block_release(v21);
    [a2 activate];
    *a1 = a2;
    *a4 = 1;
    return a2;
  }

  return result;
}

uint64_t sub_10042D378()
{
  v0 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v8 - v2;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = type metadata accessor for TaskPriority();
    (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
    v7 = swift_allocObject();
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = v5;
    sub_1003E653C(0, 0, v3, &unk_1006E28F0, v7);
  }

  return result;
}

uint64_t sub_10042D4B8()
{
  v1 = *(v0 + 16);
  sub_100431528();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10042D5E0(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = type metadata accessor for MobileDocumentProviderRequestState();
  v2[7] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v5 = sub_100007224(&qword_100844230, &qword_1006E25F8);
  v2[9] = v5;
  v6 = *(v5 - 8);
  v2[10] = v6;
  v7 = *(v6 + 64) + 15;
  v2[11] = swift_task_alloc();
  v8 = *(*(sub_100007224(&qword_100844308, &qword_1006E26B0) - 8) + 64) + 15;
  v2[12] = swift_task_alloc();
  v9 = *(*(sub_100007224(&qword_100844310, &qword_1006E26B8) - 8) + 64) + 15;
  v2[13] = swift_task_alloc();
  v10 = type metadata accessor for MobileDocumentProviderUserSelection();
  v2[14] = v10;
  v11 = *(v10 - 8);
  v2[15] = v11;
  v12 = *(v11 + 64) + 15;
  v2[16] = swift_task_alloc();
  v13 = type metadata accessor for Logger();
  v2[17] = v13;
  v14 = *(v13 - 8);
  v2[18] = v14;
  v15 = *(v14 + 64) + 15;
  v2[19] = swift_task_alloc();

  return _swift_task_switch(sub_10042D804, v1, 0);
}

uint64_t sub_10042D804()
{
  v44 = v0;
  v1 = v0[19];
  v2 = v0[5];
  defaultLogger()();
  v3 = v2;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  v6 = os_log_type_enabled(v4, v5);
  v8 = v0[18];
  v7 = v0[19];
  v9 = v0[17];
  if (v6)
  {
    v11 = v0[15];
    v10 = v0[16];
    v40 = v0[14];
    v42 = v0[19];
    v12 = v0[5];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v43 = v14;
    *v13 = 136315138;
    XPCMobileDocumentProviderUserSelection.value.getter();
    v15 = MobileDocumentProviderUserSelection.recordIdentifier.getter();
    v41 = v9;
    v17 = v16;
    (*(v11 + 8))(v10, v40);
    v18 = sub_100141FE4(v15, v17, &v43);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v4, v5, "MobileDocumentProviderUIConnectionManager selectionViewUserDidTapSelection called with selection %s", v13, 0xCu);
    sub_10000BB78(v14);

    (*(v8 + 8))(v42, v41);
  }

  else
  {

    (*(v8 + 8))(v7, v9);
  }

  v19 = v0[12];
  v20 = v0[9];
  v21 = v0[10];
  v22 = v0[6];
  v23 = OBJC_IVAR____TtC8coreidvd41MobileDocumentProviderUIConnectionManager_continuation;
  swift_beginAccess();
  sub_10000BBC4(v22 + v23, v19, &qword_100844308, &qword_1006E26B0);
  if ((*(v21 + 48))(v19, 1, v20))
  {
    sub_10000BE18(v0[12], &qword_100844308, &qword_1006E26B0);
    v24 = 1;
  }

  else
  {
    v25 = v0[12];
    v27 = v0[10];
    v26 = v0[11];
    v28 = v0[9];
    v29 = v0[7];
    v30 = v0[5];
    (*(v27 + 16))(v26, v25, v28);
    sub_10000BE18(v25, &qword_100844308, &qword_1006E26B0);
    XPCMobileDocumentProviderUserSelection.value.getter();
    swift_storeEnumTagMultiPayload();
    AsyncThrowingStream.Continuation.yield(_:)();
    (*(v27 + 8))(v26, v28);
    v24 = 0;
  }

  v31 = v0[19];
  v32 = v0[16];
  v34 = v0[12];
  v33 = v0[13];
  v35 = v0[11];
  v36 = v0[8];
  v37 = sub_100007224(&qword_100844328, &qword_1006E26C8);
  (*(*(v37 - 8) + 56))(v33, v24, 1, v37);
  sub_10000BE18(v33, &qword_100844310, &qword_1006E26B8);

  v38 = v0[1];

  return v38();
}

uint64_t sub_10042DD1C(void *a1, void *aBlock, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v5 = a1;

  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_1003FD44C;

  return sub_10042D5E0(v5);
}

uint64_t sub_10042DDE0(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = type metadata accessor for Logger();
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();
  v6 = type metadata accessor for MobileDocumentProviderRequestState();
  v2[10] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v2[11] = swift_task_alloc();
  v8 = sub_100007224(&qword_100844230, &qword_1006E25F8);
  v2[12] = v8;
  v9 = *(v8 - 8);
  v2[13] = v9;
  v10 = *(v9 + 64) + 15;
  v2[14] = swift_task_alloc();
  v11 = *(*(sub_100007224(&qword_100844308, &qword_1006E26B0) - 8) + 64) + 15;
  v2[15] = swift_task_alloc();
  v12 = *(*(sub_100007224(&qword_100844310, &qword_1006E26B8) - 8) + 64) + 15;
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_10042DFA8, v1, 0);
}

uint64_t sub_10042DFA8()
{
  v1 = *(v0 + 48);
  v2 = v1[17];
  v3 = v1[18];
  sub_10000BA08(v1 + 14, v2);
  v4 = *(v3 + 8);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 136) = v6;
  *v6 = v0;
  v6[1] = sub_10042E0D0;

  return v8(v2, v3);
}

uint64_t sub_10042E0D0()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *v1;
  *(*v1 + 144) = v0;

  v5 = *(v2 + 48);
  if (v0)
  {
    v6 = sub_10042E420;
  }

  else
  {
    v6 = sub_10042E1FC;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10042E1FC()
{
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[13];
  v4 = v0[6];
  v5 = OBJC_IVAR____TtC8coreidvd41MobileDocumentProviderUIConnectionManager_continuation;
  swift_beginAccess();
  sub_10000BBC4(v4 + v5, v1, &qword_100844308, &qword_1006E26B0);
  if ((*(v3 + 48))(v1, 1, v2))
  {
    sub_10000BE18(v0[15], &qword_100844308, &qword_1006E26B0);
    v6 = 1;
  }

  else
  {
    v7 = v0[15];
    v9 = v0[13];
    v8 = v0[14];
    v10 = v0[12];
    v11 = v0[10];
    v12 = v0[5];
    (*(v9 + 16))(v8, v7, v10);
    sub_10000BE18(v7, &qword_100844308, &qword_1006E26B0);
    XPCMobileDocumentProviderUserSelection.value.getter();
    swift_storeEnumTagMultiPayload();
    AsyncThrowingStream.Continuation.yield(_:)();
    (*(v9 + 8))(v8, v10);
    v6 = 0;
  }

  v14 = v0[15];
  v13 = v0[16];
  v15 = v0[14];
  v16 = v0[11];
  v17 = v0[9];
  v18 = sub_100007224(&qword_100844328, &qword_1006E26C8);
  (*(*(v18 - 8) + 56))(v13, v6, 1, v18);
  sub_10000BE18(v13, &qword_100844310, &qword_1006E26B8);

  v19 = v0[1];

  return v19();
}

uint64_t sub_10042E420()
{
  v1 = v0[9];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[18];
  v7 = v0[8];
  v6 = v0[9];
  v8 = v0[7];
  if (v4)
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "MobileDocumentProviderUIConnectionManager selectionViewDidSelect unexpectedly was not able to prepare for releasing the raw request", v9, 2u);
  }

  (*(v7 + 8))(v6, v8);
  v10 = v0[15];
  v11 = v0[12];
  v12 = v0[13];
  v13 = v0[6];
  v14 = OBJC_IVAR____TtC8coreidvd41MobileDocumentProviderUIConnectionManager_continuation;
  swift_beginAccess();
  sub_10000BBC4(v13 + v14, v10, &qword_100844308, &qword_1006E26B0);
  if ((*(v12 + 48))(v10, 1, v11))
  {
    sub_10000BE18(v0[15], &qword_100844308, &qword_1006E26B0);
    v15 = 1;
  }

  else
  {
    v16 = v0[15];
    v18 = v0[13];
    v17 = v0[14];
    v19 = v0[12];
    v20 = v0[10];
    v21 = v0[5];
    (*(v18 + 16))(v17, v16, v19);
    sub_10000BE18(v16, &qword_100844308, &qword_1006E26B0);
    XPCMobileDocumentProviderUserSelection.value.getter();
    swift_storeEnumTagMultiPayload();
    AsyncThrowingStream.Continuation.yield(_:)();
    (*(v18 + 8))(v17, v19);
    v15 = 0;
  }

  v23 = v0[15];
  v22 = v0[16];
  v24 = v0[14];
  v25 = v0[11];
  v26 = v0[9];
  v27 = sub_100007224(&qword_100844328, &qword_1006E26C8);
  (*(*(v27 - 8) + 56))(v22, v15, 1, v27);
  sub_10000BE18(v22, &qword_100844310, &qword_1006E26B8);

  v28 = v0[1];

  return v28();
}

uint64_t sub_10042E874(void *a1, void *aBlock, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v5 = a1;

  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_1003FD44C;

  return sub_10042DDE0(v5);
}

uint64_t sub_10042EAC4(void *a1, const void *a2, uint64_t a3)
{
  v3[5] = a1;
  v3[6] = a3;
  v7 = *(*(sub_100007224(&unk_100844318, &qword_1006E26C0) - 8) + 64) + 15;
  v3[7] = swift_task_alloc();
  v3[8] = _Block_copy(a2);
  v8 = a1;

  return _swift_task_switch(sub_10042EB90, a3, 0);
}

uint64_t sub_10042EB90()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  XPCMobileDocumentProviderPresentmentResponse.value.getter();
  v5 = type metadata accessor for MobileDocumentProviderPresentmentResponse();
  (*(*(v5 - 8) + 56))(v1, 0, 1, v5);
  v6 = type metadata accessor for MobileDocumentProviderUIConnectionManager.ViewServiceOutcome(0);
  (*(*(v6 - 8) + 56))(v1, 0, 1, v6);
  v7 = OBJC_IVAR____TtC8coreidvd41MobileDocumentProviderUIConnectionManager_response;
  swift_beginAccess();
  sub_1000B2764(v1, v4 + v7, &unk_100844318, &qword_1006E26C0);
  swift_endAccess();
  sub_10042C604();

  v2[2](v2);
  _Block_release(v2);

  v8 = v0[1];

  return v8();
}

uint64_t sub_10042ED00()
{
  v1[8] = v0;
  v2 = *(*(sub_100007224(&unk_100844318, &qword_1006E26C0) - 8) + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();

  return _swift_task_switch(sub_10042EDA8, v0, 0);
}

uint64_t sub_10042EDA8()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = OBJC_IVAR____TtC8coreidvd41MobileDocumentProviderUIConnectionManager_response;
  swift_beginAccess();
  sub_10000BBC4(v2 + v3, v1, &unk_100844318, &qword_1006E26C0);
  v4 = type metadata accessor for MobileDocumentProviderUIConnectionManager.ViewServiceOutcome(0);
  v5 = *(v4 - 8);
  v6 = (*(v5 + 48))(v1, 1, v4);
  sub_10000BE18(v1, &unk_100844318, &qword_1006E26C0);
  if (v6 == 1)
  {
    v7 = v0[9];
    v8 = type metadata accessor for MobileDocumentProviderPresentmentResponse();
    (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
    (*(v5 + 56))(v7, 0, 1, v4);
    swift_beginAccess();
    sub_1000B2764(v7, v2 + v3, &unk_100844318, &qword_1006E26C0);
    swift_endAccess();
  }

  v10 = v0[9];
  v9 = v0[10];

  v11 = v0[1];

  return v11();
}

uint64_t sub_10042F0F4(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_1003FD448;

  return sub_10042ED00();
}

uint64_t sub_10042F19C()
{
  v1[5] = v0;
  v2 = type metadata accessor for MobileDocumentProviderRequestState();
  v1[6] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[7] = swift_task_alloc();
  v4 = sub_100007224(&qword_100844230, &qword_1006E25F8);
  v1[8] = v4;
  v5 = *(v4 - 8);
  v1[9] = v5;
  v6 = *(v5 + 64) + 15;
  v1[10] = swift_task_alloc();
  v7 = *(*(sub_100007224(&qword_100844308, &qword_1006E26B0) - 8) + 64) + 15;
  v1[11] = swift_task_alloc();
  v8 = *(*(sub_100007224(&qword_100844310, &qword_1006E26B8) - 8) + 64) + 15;
  v1[12] = swift_task_alloc();

  return _swift_task_switch(sub_10042F308, v0, 0);
}

uint64_t sub_10042F308()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[5];
  v5 = OBJC_IVAR____TtC8coreidvd41MobileDocumentProviderUIConnectionManager_continuation;
  swift_beginAccess();
  sub_10000BBC4(v4 + v5, v1, &qword_100844308, &qword_1006E26B0);
  if ((*(v3 + 48))(v1, 1, v2))
  {
    sub_10000BE18(v0[11], &qword_100844308, &qword_1006E26B0);
    v6 = 1;
  }

  else
  {
    v7 = v0[11];
    v9 = v0[9];
    v8 = v0[10];
    v10 = v0[8];
    v11 = v0[6];
    (*(v9 + 16))(v8, v7, v10);
    sub_10000BE18(v7, &qword_100844308, &qword_1006E26B0);
    swift_storeEnumTagMultiPayload();
    AsyncThrowingStream.Continuation.yield(_:)();
    (*(v9 + 8))(v8, v10);
    v6 = 0;
  }

  v13 = v0[11];
  v12 = v0[12];
  v14 = v0[10];
  v15 = v0[7];
  v16 = sub_100007224(&qword_100844328, &qword_1006E26C8);
  (*(*(v16 - 8) + 56))(v12, v6, 1, v16);
  sub_10000BE18(v12, &qword_100844310, &qword_1006E26B8);

  v17 = v0[1];

  return v17();
}

uint64_t sub_10042F68C(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_1003F760C;

  return sub_10042F19C();
}

uint64_t sub_10042F734()
{
  v1[5] = v0;
  v2 = type metadata accessor for MobileDocumentProviderRequestState();
  v1[6] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[7] = swift_task_alloc();
  v4 = sub_100007224(&qword_100844230, &qword_1006E25F8);
  v1[8] = v4;
  v5 = *(v4 - 8);
  v1[9] = v5;
  v6 = *(v5 + 64) + 15;
  v1[10] = swift_task_alloc();
  v7 = *(*(sub_100007224(&qword_100844308, &qword_1006E26B0) - 8) + 64) + 15;
  v1[11] = swift_task_alloc();
  v8 = *(*(sub_100007224(&qword_100844310, &qword_1006E26B8) - 8) + 64) + 15;
  v1[12] = swift_task_alloc();

  return _swift_task_switch(sub_10042F8A0, v0, 0);
}

uint64_t sub_10042F8A0()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[5];
  v5 = OBJC_IVAR____TtC8coreidvd41MobileDocumentProviderUIConnectionManager_continuation;
  swift_beginAccess();
  sub_10000BBC4(v4 + v5, v1, &qword_100844308, &qword_1006E26B0);
  if ((*(v3 + 48))(v1, 1, v2))
  {
    sub_10000BE18(v0[11], &qword_100844308, &qword_1006E26B0);
    v6 = 1;
  }

  else
  {
    v7 = v0[11];
    v9 = v0[9];
    v8 = v0[10];
    v10 = v0[8];
    v11 = v0[6];
    (*(v9 + 16))(v8, v7, v10);
    sub_10000BE18(v7, &qword_100844308, &qword_1006E26B0);
    swift_storeEnumTagMultiPayload();
    AsyncThrowingStream.Continuation.yield(_:)();
    (*(v9 + 8))(v8, v10);
    v6 = 0;
  }

  v13 = v0[11];
  v12 = v0[12];
  v14 = v0[10];
  v15 = v0[7];
  v16 = sub_100007224(&qword_100844328, &qword_1006E26C8);
  (*(*(v16 - 8) + 56))(v12, v6, 1, v16);
  sub_10000BE18(v12, &qword_100844310, &qword_1006E26B8);

  v17 = v0[1];

  return v17();
}

uint64_t sub_10042FC24(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_1003FD448;

  return sub_10042F734();
}

uint64_t sub_10042FCCC(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = type metadata accessor for MobileDocumentProviderRequestState();
  v2[7] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v5 = sub_100007224(&qword_100844230, &qword_1006E25F8);
  v2[9] = v5;
  v6 = *(v5 - 8);
  v2[10] = v6;
  v7 = *(v6 + 64) + 15;
  v2[11] = swift_task_alloc();
  v8 = *(*(sub_100007224(&qword_100844308, &qword_1006E26B0) - 8) + 64) + 15;
  v2[12] = swift_task_alloc();
  v9 = *(*(sub_100007224(&qword_100844310, &qword_1006E26B8) - 8) + 64) + 15;
  v2[13] = swift_task_alloc();
  v10 = type metadata accessor for MobileDocumentProviderViewServiceIdentifier();
  v2[14] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v2[15] = swift_task_alloc();
  v12 = type metadata accessor for Logger();
  v2[16] = v12;
  v13 = *(v12 - 8);
  v2[17] = v13;
  v14 = *(v13 + 64) + 15;
  v2[18] = swift_task_alloc();

  return _swift_task_switch(sub_10042FEC4, v1, 0);
}

uint64_t sub_10042FEC4()
{
  v41 = v0;
  v1 = v0[18];
  v2 = v0[5];
  defaultLogger()();
  v3 = v2;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  v6 = os_log_type_enabled(v4, v5);
  v8 = v0[17];
  v7 = v0[18];
  v9 = v0[16];
  if (v6)
  {
    v11 = v0[14];
    v10 = v0[15];
    v39 = v0[18];
    v12 = v0[5];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v40 = v14;
    *v13 = 136315138;
    XPCMobileDocumentProviderViewServiceIdentifier.value.getter();
    v15 = String.init<A>(describing:)();
    v17 = sub_100141FE4(v15, v16, &v40);

    *(v13 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v4, v5, "MobileDocumentProviderUIConnectionManager remoteViewDidAppear called with viewIdentifier %s", v13, 0xCu);
    sub_10000BB78(v14);

    (*(v8 + 8))(v39, v9);
  }

  else
  {

    (*(v8 + 8))(v7, v9);
  }

  v18 = v0[12];
  v19 = v0[9];
  v20 = v0[10];
  v21 = v0[6];
  v22 = OBJC_IVAR____TtC8coreidvd41MobileDocumentProviderUIConnectionManager_continuation;
  swift_beginAccess();
  sub_10000BBC4(v21 + v22, v18, &qword_100844308, &qword_1006E26B0);
  if ((*(v20 + 48))(v18, 1, v19))
  {
    sub_10000BE18(v0[12], &qword_100844308, &qword_1006E26B0);
    v23 = 1;
  }

  else
  {
    v24 = v0[12];
    v26 = v0[10];
    v25 = v0[11];
    v27 = v0[9];
    v28 = v0[7];
    v29 = v0[5];
    (*(v26 + 16))(v25, v24, v27);
    sub_10000BE18(v24, &qword_100844308, &qword_1006E26B0);
    XPCMobileDocumentProviderViewServiceIdentifier.value.getter();
    swift_storeEnumTagMultiPayload();
    AsyncThrowingStream.Continuation.yield(_:)();
    (*(v26 + 8))(v25, v27);
    v23 = 0;
  }

  v30 = v0[18];
  v31 = v0[15];
  v33 = v0[12];
  v32 = v0[13];
  v34 = v0[11];
  v35 = v0[8];
  v36 = sub_100007224(&qword_100844328, &qword_1006E26C8);
  (*(*(v36 - 8) + 56))(v32, v23, 1, v36);
  sub_10000BE18(v32, &qword_100844310, &qword_1006E26B8);

  v37 = v0[1];

  return v37();
}

uint64_t sub_1004303B0(void *a1, void *aBlock, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v5 = a1;

  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_1003F6850;

  return sub_10042FCCC(v5);
}

uint64_t sub_100430474(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = type metadata accessor for MobileDocumentProviderRequestState();
  v2[7] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v5 = sub_100007224(&qword_100844230, &qword_1006E25F8);
  v2[9] = v5;
  v6 = *(v5 - 8);
  v2[10] = v6;
  v7 = *(v6 + 64) + 15;
  v2[11] = swift_task_alloc();
  v8 = *(*(sub_100007224(&qword_100844308, &qword_1006E26B0) - 8) + 64) + 15;
  v2[12] = swift_task_alloc();
  v9 = *(*(sub_100007224(&qword_100844310, &qword_1006E26B8) - 8) + 64) + 15;
  v2[13] = swift_task_alloc();
  v10 = type metadata accessor for MobileDocumentProviderViewServiceIdentifier();
  v2[14] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v2[15] = swift_task_alloc();
  v12 = type metadata accessor for Logger();
  v2[16] = v12;
  v13 = *(v12 - 8);
  v2[17] = v13;
  v14 = *(v13 + 64) + 15;
  v2[18] = swift_task_alloc();

  return _swift_task_switch(sub_10043066C, v1, 0);
}

uint64_t sub_10043066C()
{
  v41 = v0;
  v1 = v0[18];
  v2 = v0[5];
  defaultLogger()();
  v3 = v2;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  v6 = os_log_type_enabled(v4, v5);
  v8 = v0[17];
  v7 = v0[18];
  v9 = v0[16];
  if (v6)
  {
    v11 = v0[14];
    v10 = v0[15];
    v39 = v0[18];
    v12 = v0[5];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v40 = v14;
    *v13 = 136315138;
    XPCMobileDocumentProviderViewServiceIdentifier.value.getter();
    v15 = String.init<A>(describing:)();
    v17 = sub_100141FE4(v15, v16, &v40);

    *(v13 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v4, v5, "MobileDocumentProviderUIConnectionManager remoteViewDidCancel called with viewIdentifier %s", v13, 0xCu);
    sub_10000BB78(v14);

    (*(v8 + 8))(v39, v9);
  }

  else
  {

    (*(v8 + 8))(v7, v9);
  }

  v18 = v0[12];
  v19 = v0[9];
  v20 = v0[10];
  v21 = v0[6];
  v22 = OBJC_IVAR____TtC8coreidvd41MobileDocumentProviderUIConnectionManager_continuation;
  swift_beginAccess();
  sub_10000BBC4(v21 + v22, v18, &qword_100844308, &qword_1006E26B0);
  if ((*(v20 + 48))(v18, 1, v19))
  {
    sub_10000BE18(v0[12], &qword_100844308, &qword_1006E26B0);
    v23 = 1;
  }

  else
  {
    v24 = v0[12];
    v26 = v0[10];
    v25 = v0[11];
    v27 = v0[9];
    v28 = v0[7];
    v29 = v0[5];
    (*(v26 + 16))(v25, v24, v27);
    sub_10000BE18(v24, &qword_100844308, &qword_1006E26B0);
    XPCMobileDocumentProviderViewServiceIdentifier.value.getter();
    swift_storeEnumTagMultiPayload();
    AsyncThrowingStream.Continuation.yield(_:)();
    (*(v26 + 8))(v25, v27);
    v23 = 0;
  }

  v30 = v0[18];
  v31 = v0[15];
  v33 = v0[12];
  v32 = v0[13];
  v34 = v0[11];
  v35 = v0[8];
  v36 = sub_100007224(&qword_100844328, &qword_1006E26C8);
  (*(*(v36 - 8) + 56))(v32, v23, 1, v36);
  sub_10000BE18(v32, &qword_100844310, &qword_1006E26B8);

  v37 = v0[1];

  return v37();
}

uint64_t sub_100430B58(void *a1, void *aBlock, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v5 = a1;

  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_1003FD44C;

  return sub_100430474(v5);
}

uint64_t sub_100430C1C()
{
  v1[2] = v0;
  v2 = type metadata accessor for WebPresentmentRequest();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();

  return _swift_task_switch(sub_100430CE8, v0, 0);
}

uint64_t sub_100430CE8()
{
  v1 = *(v0 + 16);
  v2 = v1[17];
  v3 = v1[18];
  sub_10000BA08(v1 + 14, v2);
  v4 = *(v3 + 8);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 56) = v6;
  *v6 = v0;
  v6[1] = sub_100430E10;

  return v8(v2, v3);
}

uint64_t sub_100430E10()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *v1;

  if (v0)
  {
    v6 = v2[5];
    v5 = v2[6];

    v7 = *(v4 + 8);

    return v7();
  }

  else
  {
    v9 = v2[2];

    return _swift_task_switch(sub_100430F64, v9, 0);
  }
}

uint64_t sub_100430F64()
{
  v1 = v0[2];
  v2 = v1[17];
  v3 = v1[18];
  sub_10000BA08(v1 + 14, v2);
  v4 = *(v3 + 24);
  v9 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = sub_100431094;
  v7 = v0[6];

  return v9(v7, v2, v3);
}

uint64_t sub_100431094()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *v1;
  *(*v1 + 72) = v0;

  v5 = *(v2 + 16);
  if (v0)
  {
    v6 = sub_10043129C;
  }

  else
  {
    v6 = sub_1004311C0;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1004311C0()
{
  v1 = v0[6];
  v2 = v0[3];
  v3 = v0[4];
  (*(v3 + 16))(v0[5], v1, v2);
  v4 = objc_allocWithZone(type metadata accessor for XPCWebPresentmentRequest());
  v5 = XPCWebPresentmentRequest.init(value:)();
  (*(v3 + 8))(v1, v2);

  v6 = v0[1];

  return v6(v5);
}

uint64_t sub_10043129C()
{
  v1 = v0[9];
  v3 = v0[5];
  v2 = v0[6];

  v4 = v0[1];

  return v4();
}

uint64_t sub_100431480(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_1003F8F88;

  return sub_100430C1C();
}

uint64_t sub_100431528()
{
  v1 = v0;
  v82 = type metadata accessor for DIPError.Code();
  v85 = *(v82 - 8);
  v2 = *(v85 + 64);
  __chkstk_darwin(v82);
  v86 = &v80 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for MobileDocumentProviderRequestState();
  v4 = *(*(v84 - 8) + 64);
  __chkstk_darwin(v84);
  v83 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100007224(&qword_100844230, &qword_1006E25F8);
  v96 = *(v6 - 8);
  v97 = v6;
  v7 = *(v96 + 64);
  __chkstk_darwin(v6);
  v90 = &v80 - v8;
  v9 = sub_100007224(&qword_100844308, &qword_1006E26B0);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v95 = &v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v15 = &v80 - v14;
  v16 = __chkstk_darwin(v13);
  v92 = &v80 - v17;
  __chkstk_darwin(v16);
  v87 = &v80 - v18;
  v19 = sub_100007224(&qword_100844310, &qword_1006E26B8);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v88 = &v80 - v21;
  v94 = type metadata accessor for MobileDocumentProviderPresentmentResponse();
  v22 = *(v94 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v94);
  v89 = &v80 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_100007224(&unk_100844318, &qword_1006E26C0);
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25 - 8);
  v28 = &v80 - v27;
  v29 = type metadata accessor for Logger();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  v32 = __chkstk_darwin(v29);
  v91 = &v80 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v35 = &v80 - v34;
  defaultLogger()();
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v81 = v1;
    v39 = v38;
    v40 = swift_slowAlloc();
    v93 = v22;
    v41 = v15;
    v42 = v40;
    v99[0] = v40;
    *v39 = 136446210;
    *(v39 + 4) = sub_100141FE4(0xD000000000000018, 0x8000000100715490, v99);
    _os_log_impl(&_mh_execute_header, v36, v37, "%{public}s", v39, 0xCu);
    sub_10000BB78(v42);
    v15 = v41;
    v22 = v93;

    v1 = v81;
  }

  v43 = *(v30 + 8);
  v43(v35, v29);
  v44 = v29;
  v45 = *(v1 + 152);
  os_unfair_lock_lock((v45 + 24));
  v46 = *(v45 + 16);
  if (v46)
  {
    [v46 setExportedObject:0];
    v47 = *(v45 + 16);
  }

  else
  {
    v47 = 0;
  }

  *(v45 + 16) = 0;

  os_unfair_lock_unlock((v45 + 24));
  v48 = OBJC_IVAR____TtC8coreidvd41MobileDocumentProviderUIConnectionManager_response;
  swift_beginAccess();
  sub_10000BBC4(v1 + v48, v28, &unk_100844318, &qword_1006E26C0);
  v49 = type metadata accessor for MobileDocumentProviderUIConnectionManager.ViewServiceOutcome(0);
  if ((*(*(v49 - 8) + 48))(v28, 1, v49) == 1)
  {
    v50 = v91;
    defaultLogger()();
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&_mh_execute_header, v51, v52, "View service invalidated and will reconnect.", v53, 2u);
    }

    return (v43)(v50, v44);
  }

  else
  {
    v55 = v94;
    v56 = &off_100844000;
    if ((*(v22 + 48))(v28, 1, v94) == 1)
    {
      v57 = OBJC_IVAR____TtC8coreidvd41MobileDocumentProviderUIConnectionManager_continuation;
      swift_beginAccess();
      sub_10000BBC4(v1 + v57, v15, &qword_100844308, &qword_1006E26B0);
      if ((*(v96 + 48))(v15, 1, v97))
      {
        sub_10000BE18(v15, &qword_100844308, &qword_1006E26B0);
      }

      else
      {
        v65 = v15;
        v67 = v96;
        v66 = v97;
        v68 = v90;
        (*(v96 + 16))(v90, v65, v97);
        sub_10000BE18(v65, &qword_100844308, &qword_1006E26B0);
        (*(v85 + 104))(v86, enum case for DIPError.Code.webPresentmentCancelled(_:), v82);
        sub_1000402AC(_swiftEmptyArrayStorage);
        type metadata accessor for DIPError();
        sub_100433914(&qword_100834130, &type metadata accessor for DIPError);
        v69 = swift_allocError();
        v56 = &off_100844000;
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        v98 = v69;
        AsyncThrowingStream.Continuation.finish(throwing:)();
        (*(v67 + 8))(v68, v66);
      }
    }

    else
    {
      v58 = v89;
      (*(v22 + 32))(v89, v28, v55);
      v59 = OBJC_IVAR____TtC8coreidvd41MobileDocumentProviderUIConnectionManager_continuation;
      swift_beginAccess();
      v60 = v87;
      sub_10000BBC4(v1 + v59, v87, &qword_100844308, &qword_1006E26B0);
      v61 = *(v96 + 48);
      v62 = v61(v60, 1, v97);
      v93 = v22;
      if (v62)
      {
        sub_10000BE18(v60, &qword_100844308, &qword_1006E26B0);
        v63 = 1;
        v64 = v88;
      }

      else
      {
        v70 = v97;
        v71 = v90;
        (*(v96 + 16))(v90, v60, v97);
        sub_10000BE18(v60, &qword_100844308, &qword_1006E26B0);
        (*(v22 + 16))(v83, v58, v55);
        swift_storeEnumTagMultiPayload();
        v64 = v88;
        AsyncThrowingStream.Continuation.yield(_:)();
        (*(v96 + 8))(v71, v70);
        v63 = 0;
      }

      v72 = sub_100007224(&qword_100844328, &qword_1006E26C8);
      (*(*(v72 - 8) + 56))(v64, v63, 1, v72);
      sub_10000BE18(v64, &qword_100844310, &qword_1006E26B8);
      v73 = v92;
      sub_10000BBC4(v1 + v59, v92, &qword_100844308, &qword_1006E26B0);
      if (v61(v73, 1, v97))
      {
        (*(v93 + 8))(v58, v55);
        sub_10000BE18(v92, &qword_100844308, &qword_1006E26B0);
      }

      else
      {
        v74 = v96;
        v75 = v97;
        v76 = v90;
        v77 = v92;
        (*(v96 + 16))(v90, v92, v97);
        sub_10000BE18(v77, &qword_100844308, &qword_1006E26B0);
        v98 = 0;
        AsyncThrowingStream.Continuation.finish(throwing:)();
        (*(v74 + 8))(v76, v75);
        (*(v93 + 8))(v58, v55);
      }

      v56 = &off_100844000;
    }

    v78 = v95;
    (*(v96 + 56))(v95, 1, 1, v97);
    v79 = v56[60];
    swift_beginAccess();
    sub_1000B2764(v78, v79 + v1, &qword_100844308, &qword_1006E26B0);
    return swift_endAccess();
  }
}

uint64_t sub_1004320FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_10043211C, a2, 0);
}

uint64_t sub_10043211C()
{
  v1 = *(v0 + 40);
  v2 = sub_100433914(&unk_100844330, type metadata accessor for MobileDocumentProviderUIConnectionManager);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  v8 = *(v0 + 24);
  *(v3 + 16) = v8;
  *(v3 + 32) = v1;
  v4 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  *v5 = v0;
  v5[1] = sub_1003F9AAC;
  v6 = *(v0 + 16);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v6, v8, v2, 0xD000000000000020, 0x8000000100715510, sub_100433B80, v3, &type metadata for () + 8);
}

uint64_t sub_100432268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a3;
  v7 = sub_100007224(&qword_100834120, &unk_1006BFBA0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v23 - v10;
  v12 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v23 - v14;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  (*(v8 + 16))(v11, a1, v7);
  v17 = sub_100433914(&unk_100844330, type metadata accessor for MobileDocumentProviderUIConnectionManager);
  v18 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v19 = (v9 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 2) = a2;
  *(v20 + 3) = v17;
  *(v20 + 4) = a2;
  (*(v8 + 32))(&v20[v18], v11, v7);
  v21 = &v20[v19];
  *v21 = v24;
  *(v21 + 1) = a4;
  swift_retain_n();

  sub_1003E653C(0, 0, v15, &unk_1006E2728, v20);
}

uint64_t sub_1004324C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  return _swift_task_switch(sub_1004324E8, a4, 0);
}

uint64_t sub_1004324E8()
{
  v10 = v0;
  v1 = v0[4];
  v2 = *(v0[3] + 152);
  *(swift_task_alloc() + 16) = v1;
  os_unfair_lock_lock((v2 + 24));
  sub_100433DC4((v2 + 16), &v9);
  v3 = v0[5];
  os_unfair_lock_unlock((v2 + 24));
  v0[7] = v9;

  v8 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_1004326A8;
  v6 = v0[6];

  return v8();
}

uint64_t sub_1004326A8()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *v1;
  *(*v1 + 72) = v0;

  v5 = *(v2 + 24);
  if (v0)
  {
    v6 = sub_100432858;
  }

  else
  {
    v6 = sub_1004327D4;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1004327D4()
{
  v1 = v0[7];
  v2 = v0[4];
  sub_100007224(&qword_100834120, &unk_1006BFBA0);
  CheckedContinuation.resume(returning:)();
  swift_unknownObjectRelease();
  v3 = v0[1];

  return v3();
}

uint64_t sub_100432858()
{
  v1 = v0[7];
  swift_unknownObjectRelease();
  v2 = v0[4];
  v0[2] = v0[9];
  sub_100007224(&qword_100834120, &unk_1006BFBA0);
  CheckedContinuation.resume(throwing:)();
  v3 = v0[1];

  return v3();
}

uint64_t sub_1004328E8(void **a1, uint64_t a2)
{
  v4 = type metadata accessor for DIPError.Code();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100007224(&qword_100834120, &unk_1006BFBA0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = aBlock - v12;
  v14 = *a1;
  if (v14)
  {
    (*(v10 + 16))(v13, a2, v9);
    v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
    v16 = swift_allocObject();
    (*(v10 + 32))(v16 + v15, v13, v9);
    aBlock[4] = sub_1003FBB20;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1004DB3EC;
    aBlock[3] = &unk_100810418;
    v17 = _Block_copy(aBlock);
    v18 = v14;

    v19 = [v18 remoteObjectProxyWithErrorHandler:v17];
    _Block_release(v17);
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
    sub_100007224(&qword_1008435D8, &qword_1006E2730);
    swift_dynamicCast();
    return aBlock[7];
  }

  else
  {
    (*(v5 + 104))(v8, enum case for DIPError.Code.unexpectedDaemonState(_:), v4);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100433914(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    return swift_willThrow();
  }
}

uint64_t sub_100432CA0(uint64_t a1)
{
  v2 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v9 - v4;
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = a1;

  sub_1003E653C(0, 0, v5, &unk_1006E2708, v7);
}

uint64_t sub_100432DAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for Logger();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v4[5] = swift_task_alloc();

  return _swift_task_switch(sub_100432E6C, 0, 0);
}

uint64_t sub_100432E6C()
{
  v13 = v0;
  v1 = v0[5];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  v4 = os_log_type_enabled(v2, v3);
  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[3];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v12 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_100141FE4(0xD000000000000020, 0x8000000100715510, &v12);
    _os_log_impl(&_mh_execute_header, v2, v3, "MobileDocumentProviderUIConnectionManager %s task cancelled, invalidating.", v8, 0xCu);
    sub_10000BB78(v9);
  }

  (*(v6 + 8))(v5, v7);
  v10 = v0[2];

  return _swift_task_switch(sub_100432FD4, v10, 0);
}

uint64_t sub_100432FD4()
{
  v1 = v0[5];
  v2 = v0[2];
  sub_10042C604();

  v3 = v0[1];

  return v3();
}

void sub_100433074()
{
  sub_100433168();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1004331CC();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_100433168()
{
  if (!qword_100844228)
  {
    sub_10000B870(&qword_100844230, &qword_1006E25F8);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100844228);
    }
  }
}

void sub_1004331CC()
{
  if (!qword_100844238)
  {
    type metadata accessor for MobileDocumentProviderUIConnectionManager.ViewServiceOutcome(255);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100844238);
    }
  }
}

uint64_t sub_100433258(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileDocumentProviderPresentmentResponse();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1004332D8(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for MobileDocumentProviderPresentmentResponse();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_100433358()
{
  v0 = type metadata accessor for MobileDocumentProviderPresentmentResponse();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t sub_1004333B0(uint64_t a1)
{
  v3 = sub_100007224(&unk_1008442E0, &unk_1006E2650);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v9[-v6];
  v10 = *v1;
  v11 = a1;
  type metadata accessor for MobileDocumentProviderRequestState();
  (*(v4 + 104))(v7, enum case for AsyncThrowingStream.Continuation.BufferingPolicy.unbounded<A, B>(_:), v3);
  return AsyncThrowingStream.init<>(_:bufferingPolicy:_:)();
}

uint64_t sub_1004334D8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100433518()
{
  v1 = type metadata accessor for MobileDocumentProviderViewServiceIdentifier();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = sub_100007224(&qword_100844230, &qword_1006E25F8);
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

uint64_t sub_10043367C(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for MobileDocumentProviderViewServiceIdentifier() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(sub_100007224(&qword_100844230, &qword_1006E25F8) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100041F04;

  return sub_10042ADB4(a1, v10, v11, v12, v1 + v6, v1 + v9);
}

uint64_t sub_1004337E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100041F04;

  return sub_10042AD34(a1, v4, v5, v6);
}

id sub_1004338C8(id *a1)
{
  v2 = v1;
  v3 = *a1;
  [*a1 setDelegate:v2];
  return [v3 activate];
}

uint64_t sub_100433914(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10043395C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100041F04;

  return sub_10042C8C4(a1, v4, v5, v6);
}

uint64_t sub_100433A10(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100041F04;

  return sub_1004320FC(a1, v4, v5, v6);
}

uint64_t sub_100433ACC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100041F04;

  return sub_100432DAC(a1, v4, v5, v6);
}

uint64_t sub_100433B8C()
{
  v1 = sub_100007224(&qword_100834120, &unk_1006BFBA0);
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

uint64_t sub_100433C7C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_100007224(&qword_100834120, &unk_1006BFBA0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100041F04;

  return sub_1004324C4(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_100433DC4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1004328E8(a1, *(v2 + 16));
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_100433DF4()
{
  v1 = sub_100007224(&qword_100834120, &unk_1006BFBA0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100433E88()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100433EC0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

id sub_100433EFC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 endpoint];
  *a2 = result;
  return result;
}

uint64_t sub_100433F40@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  result = v4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100433F88()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100027B9C;

  return sub_100431480(v2, v3);
}

uint64_t sub_100434038()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100041F04;

  return sub_100430B58(v2, v3, v4);
}

uint64_t sub_1004340F0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100041F04;

  return sub_1004303B0(v2, v3, v4);
}

uint64_t sub_1004341A8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100041F04;

  return sub_10042FC24(v2, v3);
}

uint64_t sub_100434254()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100041F04;

  return sub_10042F68C(v2, v3);
}

uint64_t sub_100434300()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100041F04;

  return sub_10042F0F4(v2, v3);
}

uint64_t sub_1004343AC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100041F04;

  return sub_10042EAC4(v2, v3, v4);
}

uint64_t sub_100434460()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100041F04;

  return sub_10042E874(v2, v3, v4);
}

uint64_t sub_100434514()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100041F04;

  return sub_10042DD1C(v2, v3, v4);
}

uint64_t sub_1004345C8(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9._object = 0x8000000100715640;
  v9._countAndFlagsBits = 0xD000000000000037;
  if (NSXPCConnection.isEntitled(_:)(v9))
  {
    v10 = *(v2 + 152);
    os_unfair_lock_lock((v10 + 24));
    sub_10042D0A8((v10 + 16), a1, v2, &v17);
    os_unfair_lock_unlock((v10 + 24));
    return v17;
  }

  else
  {
    defaultLogger()();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v17 = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_100141FE4(0xD000000000000038, 0x80000001007165F0, &v17);
      _os_log_impl(&_mh_execute_header, v12, v13, "%s caller not entitled, rejecting.", v14, 0xCu);
      sub_10000BB78(v15);
    }

    (*(v5 + 8))(v8, v4);
    return 0;
  }
}

uint64_t sub_1004347C8(uint64_t a1, uint64_t a2)
{
  v29 = a2;
  v3 = type metadata accessor for DIPError.Code();
  v26 = *(v3 - 8);
  v27 = v3;
  v4 = *(v26 + 64);
  __chkstk_darwin(v3);
  v28 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100007224(&qword_100843558, &qword_1006E1270);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v26 - v8;
  v10 = type metadata accessor for MobileDocumentProviderViewServiceIdentifier();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v26 - v16;
  v18 = *(a1 + 168);
  KeyPath = swift_getKeyPath();
  v30 = sub_100434D78;
  v31 = KeyPath;
  v20 = *(*v18 + class metadata base offset for ManagedBuffer + 16);
  v21 = (*(*v18 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v18 + v21));
  sub_100434D7C();
  os_unfair_lock_unlock((v18 + v21));

  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_10000BE18(v9, &qword_100843558, &qword_1006E1270);
    (*(v26 + 104))(v28, enum case for DIPError.Code.unexpectedDaemonState(_:), v27);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100433914(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    v22 = _convertErrorToNSError(_:)();
    (*(v29 + 16))(v29, 0, v22);
  }

  else
  {
    (*(v11 + 32))(v17, v9, v10);
    (*(v11 + 16))(v15, v17, v10);
    v24 = objc_allocWithZone(type metadata accessor for XPCMobileDocumentProviderViewServiceIdentifier());
    v25 = XPCMobileDocumentProviderViewServiceIdentifier.init(value:)();
    (*(v29 + 16))(v29, v25, 0);

    return (*(v11 + 8))(v17, v10);
  }
}

uint64_t sub_100434C18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100434C34(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100041F04;

  return sub_10042D498(a1, v4, v5, v6);
}

void *sub_100434D98(uint64_t a1)
{
  v37 = type metadata accessor for Locale();
  v3 = *(v37 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v37);
  v36 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v6)
  {
    v29 = v1;
    v41 = _swiftEmptyArrayStorage;
    sub_100172D4C(0, v6, 0);
    v40 = v41;
    v8 = a1 + 64;
    v9 = -1 << *(a1 + 32);
    result = _HashTable.startBucket.getter();
    v10 = result;
    v11 = 0;
    v34 = v3 + 8;
    v35 = v3 + 16;
    v30 = a1 + 72;
    v31 = v6;
    v32 = v3;
    v33 = a1 + 64;
    while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a1 + 32))
    {
      v13 = v10 >> 6;
      if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_22;
      }

      v38 = *(a1 + 36);
      v14 = v36;
      v15 = v37;
      (*(v3 + 16))(v36, *(a1 + 48) + *(v3 + 72) * v10, v37);
      v39 = Locale.identifier.getter();
      v17 = v16;
      result = (*(v3 + 8))(v14, v15);
      v18 = v40;
      v41 = v40;
      v20 = v40[2];
      v19 = v40[3];
      if (v20 >= v19 >> 1)
      {
        result = sub_100172D4C((v19 > 1), v20 + 1, 1);
        v18 = v41;
      }

      v18[2] = v20 + 1;
      v21 = &v18[2 * v20];
      v21[4] = v39;
      v21[5] = v17;
      v12 = 1 << *(a1 + 32);
      if (v10 >= v12)
      {
        goto LABEL_23;
      }

      v8 = v33;
      v22 = *(v33 + 8 * v13);
      if ((v22 & (1 << v10)) == 0)
      {
        goto LABEL_24;
      }

      v40 = v18;
      if (v38 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v23 = v22 & (-2 << (v10 & 0x3F));
      if (v23)
      {
        v12 = __clz(__rbit64(v23)) | v10 & 0x7FFFFFFFFFFFFFC0;
        v3 = v32;
      }

      else
      {
        v24 = v13 << 6;
        v25 = v13 + 1;
        v26 = (v30 + 8 * v13);
        v3 = v32;
        while (v25 < (v12 + 63) >> 6)
        {
          v28 = *v26++;
          v27 = v28;
          v24 += 64;
          ++v25;
          if (v28)
          {
            result = sub_100316220(v10, v38, 0);
            v12 = __clz(__rbit64(v27)) + v24;
            goto LABEL_4;
          }
        }

        result = sub_100316220(v10, v38, 0);
      }

LABEL_4:
      ++v11;
      v10 = v12;
      if (v11 == v31)
      {
        return v40;
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
  }

  return result;
}

uint64_t sub_1004350A0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Locale();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100434D98(a2);
  v8 = objc_opt_self();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v10 = Array._bridgeToObjectiveC()().super.isa;
  v11 = [v8 preferredLocalizationsFromArray:isa forPreferences:v10];

  v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = *(v12 + 16);
  if (v13)
  {
    v14 = 0;
    v15 = (v4 + 8);
    v16 = (v12 + 40);
    v17 = v13 - 1;
    while (1)
    {
      v19 = *(v16 - 1);
      v18 = *v16;

      Locale.init(identifier:)();
      if (*(a2 + 16))
      {
        v20 = sub_10003ACF8(v7);
        if (v21)
        {
          break;
        }
      }

      (*v15)(v7, v3);
      if (v17 == v14)
      {
        goto LABEL_8;
      }

      ++v14;
      v16 += 2;
      if (v14 >= *(v12 + 16))
      {
        __break(1u);
        goto LABEL_8;
      }
    }

    v23 = (*(a2 + 56) + 16 * v20);
    v25 = *v23;
    v24 = v23[1];
    v26 = *v15;

    v26(v7, v3);

    return v25;
  }

  else
  {
LABEL_8:

    return 0;
  }
}

uint64_t sub_1004352E0(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DigitalPresentmentSessionManager.Proposal();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v44 - v14;
  defaultLogger()();
  v48 = a1;
  sub_10043865C(a1, v7);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v45 = v1;
    v19 = v18;
    v20 = swift_slowAlloc();
    v47 = v9;
    v21 = v20;
    v50 = v20;
    *v19 = 136315138;
    v22 = sub_10015E5E4();
    v46 = v13;
    v23 = v8;
    v25 = v24;
    sub_1004386C0(v7);
    v26 = sub_100141FE4(v22, v25, &v50);
    v8 = v23;
    v13 = v46;

    *(v19 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v16, v17, "Attempting to retrieve brand identifier for proposal: %s", v19, 0xCu);
    sub_10000BB78(v21);
    v9 = v47;

    v2 = v45;
  }

  else
  {

    sub_1004386C0(v7);
  }

  v27 = *(v9 + 8);
  v27(v15, v8);
  v28 = sub_1004356C8(v48);
  if (!v2)
  {
    v49 = 0;
    if (v30)
    {
      v2 = v28;
      v31 = v29;
    }

    else
    {
      v2 = 0;
      v31 = 0;
    }

    defaultLogger()();

    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v46 = v13;
      v35 = v34;
      v36 = swift_slowAlloc();
      v48 = v8;
      v37 = v36;
      v50 = v36;
      *v35 = 136315138;
      if (v31)
      {
        v38 = v2;
      }

      else
      {
        v38 = 0x3E6C696E3CLL;
      }

      v47 = v9;
      if (v31)
      {
        v39 = v31;
      }

      else
      {
        v39 = 0xE500000000000000;
      }

      v40 = sub_100141FE4(v38, v39, &v50);

      *(v35 + 4) = v40;
      _os_log_impl(&_mh_execute_header, v32, v33, "Retrieved brand identifier: %s", v35, 0xCu);
      sub_10000BB78(v37);

      v41 = v46;
      v42 = v48;
    }

    else
    {

      v41 = v13;
      v42 = v8;
    }

    v27(v41, v42);
  }

  return v2;
}

uint64_t sub_1004356C8(uint64_t a1)
{
  v49 = a1;
  v2 = type metadata accessor for DIPError.Code();
  v47 = *(v2 - 8);
  v3 = *(v47 + 64);
  __chkstk_darwin(v2);
  v48 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Certificate();
  v45 = *(v5 - 8);
  v46 = v5;
  v6 = *(v45 + 64);
  __chkstk_darwin(v5);
  v44 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  v50 = *(v8 - 8);
  v51 = v8;
  v9 = *(v50 + 64);
  v10 = __chkstk_darwin(v8);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v44 - v14;
  v16 = __chkstk_darwin(v13);
  v18 = &v44 - v17;
  __chkstk_darwin(v16);
  v20 = &v44 - v19;
  v21 = *(v1 + 80);
  sub_10000BA08((v1 + 48), *(v1 + 72));
  if (dispatch thunk of DeviceInformationProviding.isSimulator.getter())
  {
    defaultLogger()();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Simulator does not support fetching information from PIR, continuing.", v24, 2u);
    }

    (*(v50 + 8))(v20, v51);
    return 0;
  }

  v26 = sub_100437C40();
  if (v27)
  {
    v28 = v26;
    defaultLogger()();
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "Using hardcoded certificate values", v31, 2u);
    }

    (*(v50 + 8))(v18, v51);
    return v28;
  }

  else
  {
    v32 = v49 + *(type metadata accessor for DigitalPresentmentSessionManager.Proposal() + 52);
    v33 = *(v32 + 8);
    if (v33 >> 60 == 15)
    {
      if (*(v1 + 40) == 1)
      {
        defaultLogger()();
        v34 = Logger.logObject.getter();
        v35 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          *v36 = 0;
          _os_log_impl(&_mh_execute_header, v34, v35, "Allowing nil reader authentication certificate as developer test mode is enabled", v36, 2u);
        }

        (*(v50 + 8))(v12, v51);
        return 0;
      }

      (*(v47 + 104))(v48, enum case for DIPError.Code.webPresentmentTrustedAuthenticationCertificateMissing(_:), v2);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100037214();
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      return swift_willThrow();
    }

    else
    {
      v37 = *v32;
      sub_10000B8B8(*v32, *(v32 + 8));
      defaultLogger()();
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&_mh_execute_header, v38, v39, "Extracting certificate values from reader authentication certificate", v40, 2u);
      }

      (*(v50 + 8))(v15, v51);
      v41 = v52;
      decodeCertificate(fromDER:)();
      if (v41)
      {
        return sub_10000BD94(v37, v33);
      }

      else
      {
        v42 = v44;
        Certificate.init(_:)();
        v43 = sub_100437FEC();
        (*(v45 + 8))(v42, v46);
        sub_10000BD94(v37, v33);
        return v43;
      }
    }
  }
}

uint64_t sub_100435D6C(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = type metadata accessor for Logger();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v6 = *(v5 + 64) + 15;
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();

  return _swift_task_switch(sub_100435E48, 0, 0);
}

uint64_t sub_100435E48()
{
  v20 = v0;
  v1 = *(v0 + 80);
  v2 = *(v0 + 32);
  defaultLogger()();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 80);
  v7 = *(v0 + 48);
  v8 = *(v0 + 56);
  if (v5)
  {
    v10 = *(v0 + 24);
    v9 = *(v0 + 32);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v19 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_100141FE4(v10, v9, &v19);
    _os_log_impl(&_mh_execute_header, v3, v4, "Fetching brand with identifier: %s", v11, 0xCu);
    sub_10000BB78(v12);
  }

  v13 = *(v8 + 8);
  v13(v6, v7);
  *(v0 + 88) = v13;
  v14 = *sub_10000BA08(*(v0 + 40), *(*(v0 + 40) + 24));
  v15 = swift_task_alloc();
  *(v0 + 96) = v15;
  *v15 = v0;
  v15[1] = sub_100436008;
  v17 = *(v0 + 24);
  v16 = *(v0 + 32);

  return sub_10043872C(v17, v16);
}

uint64_t sub_100436008(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 96);
  v7 = *v2;
  *(v3 + 104) = a1;
  *(v3 + 112) = v1;

  if (v1)
  {
    v5 = sub_100436354;
  }

  else
  {
    v5 = sub_10043611C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10043611C()
{
  v28 = v0;
  v1 = v0[13];
  v2 = v0[9];
  v3 = v0[4];
  defaultLogger()();

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[13];
    v25 = v0[9];
    v26 = v0[11];
    v7 = v0[7];
    v24 = v0[6];
    v9 = v0[3];
    v8 = v0[4];
    v10 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v10 = 136315394;
    v0[2] = v6;

    v11 = String.init<A>(describing:)();
    v13 = sub_100141FE4(v11, v12, &v27);

    *(v10 + 4) = v13;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_100141FE4(v9, v8, &v27);
    _os_log_impl(&_mh_execute_header, v4, v5, "Successfully retrieved brand %s with identifier: %s", v10, 0x16u);
    swift_arrayDestroy();

    v26(v25, v24);
  }

  else
  {
    v14 = v0[11];
    v15 = v0[9];
    v16 = v0[6];
    v17 = v0[7];

    v14(v15, v16);
  }

  v18 = v0[13];
  v20 = v0[9];
  v19 = v0[10];
  v21 = v0[8];

  v22 = v0[1];

  return v22(v18);
}

uint64_t sub_100436354()
{
  v28 = v0;
  v1 = v0[14];
  v2 = v0[8];
  v3 = v0[4];
  defaultLogger()();

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[14];
  v8 = v0[11];
  v9 = v0[7];
  v10 = v0[8];
  v11 = v0[6];
  if (v6)
  {
    v13 = v0[3];
    v12 = v0[4];
    v26 = v0[8];
    v14 = swift_slowAlloc();
    v25 = v8;
    v15 = swift_slowAlloc();
    v24 = v11;
    v16 = swift_slowAlloc();
    v27 = v16;
    *v14 = 136315394;
    *(v14 + 4) = sub_100141FE4(v13, v12, &v27);
    *(v14 + 12) = 2112;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 14) = v17;
    *v15 = v17;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to get brand with identifier %s, treating as non-fatal: %@", v14, 0x16u);
    sub_1004385F4(v15);

    sub_10000BB78(v16);

    v25(v26, v24);
  }

  else
  {
    v18 = v0[14];

    v8(v10, v11);
  }

  v20 = v0[9];
  v19 = v0[10];
  v21 = v0[8];

  v22 = v0[1];

  return v22(0);
}

unint64_t sub_100436584(uint64_t a1)
{
  v2 = type metadata accessor for DIPError.Code();
  v48 = *(v2 - 8);
  v49 = v2;
  v3 = *(v48 + 64);
  __chkstk_darwin(v2);
  v50 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DigitalPresentmentSessionManager.Proposal();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v47 - v15;
  defaultLogger()();
  v52 = a1;
  sub_10043865C(a1, v8);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v51 = v14;
    v20 = v19;
    v21 = swift_slowAlloc();
    v47 = v10;
    v22 = v9;
    v23 = v21;
    v55 = v21;
    *v20 = 136315138;
    v24 = sub_10015E5E4();
    v26 = v25;
    sub_1004386C0(v8);
    v27 = sub_100141FE4(v24, v26, &v55);

    *(v20 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v17, v18, "Attempting to retrieve permissions identifier for proposal: %s", v20, 0xCu);
    sub_10000BB78(v23);
    v9 = v22;
    v10 = v47;

    v14 = v51;
  }

  else
  {

    sub_1004386C0(v8);
  }

  v28 = *(v10 + 8);
  v28(v16, v9);
  v29 = v54;
  sub_1004356C8(v52);
  if (v29)
  {
    (*(v48 + 104))(v50, enum case for DIPError.Code.webPresentmentInvalidRequest(_:), v49);
    swift_errorRetain();
    v32 = sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  else
  {
    v33 = v31;
    if (v31)
    {
      v34 = v30;

      v32 = v34;
    }

    else
    {
      v32 = 0;
      v34 = 0x3E6C696E3CLL;
    }

    defaultLogger()();

    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.debug.getter();
    v51 = v14;
    v37 = v36;

    if (os_log_type_enabled(v35, v37))
    {
      v38 = swift_slowAlloc();
      v54 = v32;
      v39 = v38;
      v40 = swift_slowAlloc();
      v53 = v9;
      v41 = v40;
      v55 = v40;
      *v39 = 136315138;
      v47 = v10;
      if (v33)
      {
        v42 = v33;
      }

      else
      {
        v42 = 0xE500000000000000;
      }

      v43 = sub_100141FE4(v34, v42, &v55);

      *(v39 + 4) = v43;
      _os_log_impl(&_mh_execute_header, v35, v37, "Retrieved permissions identifier: %s", v39, 0xCu);
      sub_10000BB78(v41);

      v32 = v54;

      v44 = v51;
      v45 = v53;
    }

    else
    {

      v44 = v51;
      v45 = v9;
    }

    v28(v44, v45);
  }

  return v32;
}

uint64_t sub_100436AC0(uint64_t a1, uint64_t a2)
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
  v7 = type metadata accessor for ContinuousClock();
  v3[9] = v7;
  v8 = *(v7 - 8);
  v3[10] = v8;
  v9 = *(v8 + 64) + 15;
  v3[11] = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  v3[12] = v10;
  v11 = *(v10 - 8);
  v3[13] = v11;
  v12 = *(v11 + 64) + 15;
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();

  return _swift_task_switch(sub_100436C60, 0, 0);
}

uint64_t sub_100436FC8()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v4 = *v1;
  *(*v1 + 160) = v0;

  (*(v2[10] + 8))(v2[11], v2[9]);
  if (v0)
  {
    v5 = sub_1004372F0;
  }

  else
  {
    v5 = sub_100437130;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100437130()
{
  v20 = v0;
  v1 = *(v0 + 128);
  v2 = *(v0 + 32);
  defaultLogger()();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 128);
  v7 = *(v0 + 96);
  v8 = *(v0 + 104);
  if (v5)
  {
    v10 = *(v0 + 24);
    v9 = *(v0 + 32);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v19 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_100141FE4(v10, v9, &v19);
    _os_log_impl(&_mh_execute_header, v3, v4, "Attempting to retrieve permissions for identifier: %s", v11, 0xCu);
    sub_10000BB78(v12);
  }

  v13 = *(v8 + 8);
  v13(v6, v7);
  *(v0 + 168) = v13;
  v14 = *sub_10000BA08(*(v0 + 40), *(*(v0 + 40) + 24));
  v15 = swift_task_alloc();
  *(v0 + 176) = v15;
  *v15 = v0;
  v15[1] = sub_100437604;
  v17 = *(v0 + 24);
  v16 = *(v0 + 32);

  return sub_100438D60(v17, v16);
}

uint64_t sub_1004372F0()
{
  v28 = v0;
  v1 = v0[20];
  v2 = v0[18];
  v3 = v0[14];
  v4 = v0[4];
  defaultLogger()();

  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[13];
  v8 = v0[14];
  v10 = v0[12];
  if (v7)
  {
    v12 = v0[3];
    v11 = v0[4];
    v25 = v2;
    v13 = swift_slowAlloc();
    v23 = v8;
    v14 = swift_slowAlloc();
    v22 = v10;
    v15 = swift_slowAlloc();
    v27 = v15;
    *v13 = 136315394;
    *(v13 + 4) = sub_100141FE4(v12, v11, &v27);
    *(v13 + 12) = 2112;
    swift_errorRetain();
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v16;
    *v14 = v16;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to fetch permissions with identifier %s: %@", v13, 0x16u);
    sub_1004385F4(v14);

    sub_10000BB78(v15);

    v25(v23, v22);
  }

  else
  {

    v2(v8, v10);
  }

  v17 = v0[16];
  v18 = v0[17];
  v19 = v0[15];
  v24 = v0[14];
  v26 = v0[11];
  (*(v0[7] + 104))(v0[8], enum case for DIPError.Code.webPresentmentCouldNotFetchPermissions(_:), v0[6]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v20 = v0[1];

  return v20();
}

uint64_t sub_100437604(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 176);
  v7 = *v2;
  *(v3 + 184) = a1;
  *(v3 + 192) = v1;

  if (v1)
  {
    v5 = sub_10043792C;
  }

  else
  {
    v5 = sub_100437718;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100437718()
{
  v29 = v0;
  v1 = v0[23];
  v2 = v0[15];
  defaultLogger()();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[23];
    v27 = v0[21];
    v6 = v0[15];
    v7 = v0[12];
    v8 = v0[13];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v28 = v10;
    *v9 = 136315138;
    v0[2] = v5;

    v11 = String.init<A>(describing:)();
    v13 = sub_100141FE4(v11, v12, &v28);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v3, v4, "Retrieved permissions: %s", v9, 0xCu);
    sub_10000BB78(v10);

    v27(v6, v7);
  }

  else
  {
    v14 = v0[21];
    v15 = v0[15];
    v16 = v0[12];
    v17 = v0[13];

    v14(v15, v16);
  }

  v19 = v0[16];
  v18 = v0[17];
  v21 = v0[14];
  v20 = v0[15];
  v22 = v0[11];
  v23 = v0[8];

  v24 = v0[1];
  v25 = v0[23];

  return v24(v25);
}

uint64_t sub_10043792C()
{
  v28 = v0;
  v1 = v0[24];
  v2 = v0[21];
  v3 = v0[14];
  v4 = v0[4];
  defaultLogger()();

  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[13];
  v8 = v0[14];
  v10 = v0[12];
  if (v7)
  {
    v12 = v0[3];
    v11 = v0[4];
    v25 = v2;
    v13 = swift_slowAlloc();
    v23 = v8;
    v14 = swift_slowAlloc();
    v22 = v10;
    v15 = swift_slowAlloc();
    v27 = v15;
    *v13 = 136315394;
    *(v13 + 4) = sub_100141FE4(v12, v11, &v27);
    *(v13 + 12) = 2112;
    swift_errorRetain();
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v16;
    *v14 = v16;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to fetch permissions with identifier %s: %@", v13, 0x16u);
    sub_1004385F4(v14);

    sub_10000BB78(v15);

    v25(v23, v22);
  }

  else
  {

    v2(v8, v10);
  }

  v17 = v0[16];
  v18 = v0[17];
  v19 = v0[15];
  v24 = v0[14];
  v26 = v0[11];
  (*(v0[7] + 104))(v0[8], enum case for DIPError.Code.webPresentmentCouldNotFetchPermissions(_:), v0[6]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v20 = v0[1];

  return v20();
}

uint64_t sub_100437C40()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v29 - v7;
  v9 = *(v0 + 88);
  v10 = UserDefaultsConfiguration.userDefaults.getter();
  v11._countAndFlagsBits = static DaemonInternalDefaultsKeys.WebPresentment.injectBrandIdentifier.getter();
  v12 = NSUserDefaults.internalString(forKey:)(v11);

  if (v12.value._object && (v33 = v12, sub_1000ACCA0(), Collection.nilIfEmpty.getter(), , (v13 = v32) != 0))
  {
    v14 = v31;
    v15 = UserDefaultsConfiguration.userDefaults.getter();
    v16._countAndFlagsBits = static DaemonInternalDefaultsKeys.WebPresentment.injectBrandIdentifierPermissionsOnly.getter();
    v17 = NSUserDefaults.internalBool(forKey:)(v16);

    defaultLogger()();

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v30 = v1;
      v33.value._countAndFlagsBits = v29;
      *v20 = 136446466;
      if (v17)
      {
        v21 = 0xD000000000000015;
      }

      else
      {
        v21 = 0;
      }

      if (v17)
      {
        v22 = 0x8000000100716860;
      }

      else
      {
        v22 = 0xE000000000000000;
      }

      v23 = v17;
      v24 = sub_100141FE4(v21, v22, &v33.value._countAndFlagsBits);

      *(v20 + 4) = v24;
      *(v20 + 12) = 2080;
      *(v20 + 14) = sub_100141FE4(v14, v13, &v33.value._countAndFlagsBits);
      _os_log_impl(&_mh_execute_header, v18, v19, "Using injected brand identifier%{public}s: %s", v20, 0x16u);
      swift_arrayDestroy();

      (*(v2 + 8))(v8, v30);
      if (!v23)
      {
        goto LABEL_11;
      }
    }

    else
    {

      (*(v2 + 8))(v8, v1);
      if (!v17)
      {
LABEL_11:

        return v14;
      }
    }

    return 0;
  }

  else
  {
    defaultLogger()();
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "No hardcoded brand identifier found", v28, 2u);
    }

    (*(v2 + 8))(v6, v1);
    return 0;
  }
}

unint64_t sub_100437FEC()
{
  v0 = type metadata accessor for DIPError.Code();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Logger();
  v48 = *(v5 - 8);
  v49 = v5;
  v6 = *(v48 + 64);
  v7 = __chkstk_darwin(v5);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v42 - v11;
  __chkstk_darwin(v10);
  v14 = &v42 - v13;
  v15 = Certificate.wrapped.getter();
  v16 = SecCertificateRef.commonName()();
  if (v16.value._object)
  {
    countAndFlagsBits = v16.value._countAndFlagsBits;
    defaultLogger()();

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v50 = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_100141FE4(countAndFlagsBits, v16.value._object, &v50);
      _os_log_impl(&_mh_execute_header, v17, v18, "Brand permissions identifier from certificate: %s", v19, 0xCu);
      sub_10000BB78(v20);
    }

    v21 = *(v48 + 8);
    v21(v14, v49);
    v22 = v46;
    v23 = SecCertificateRef.brandAssetsIdentifier.getter();
    if (v22)
    {
      defaultLogger()();
      swift_errorRetain();
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = v21;
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        *v28 = 138412290;
        swift_errorRetain();
        v30 = _swift_stdlib_bridgeErrorToNSError();
        *(v28 + 4) = v30;
        *v29 = v30;
        _os_log_impl(&_mh_execute_header, v25, v26, "Failed to get brand assets identifier (non-fatal, treating as nil): %@", v28, 0xCu);
        sub_1004385F4(v29);

        v21 = v27;
      }

      else
      {
      }

      v21(v9, v49);
      return 0;
    }

    else
    {
      v31 = v23;
      v32 = v24;

      defaultLogger()();

      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.debug.getter();

      v46 = v33;
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v44 = v34;
        v36 = v35;
        v43 = swift_slowAlloc();
        v50 = v43;
        *v36 = 136315138;
        if (v32)
        {
          v37 = v31;
        }

        else
        {
          v37 = 0x3E6C696E3CLL;
        }

        v45 = v21;
        if (v32)
        {
          v38 = v32;
        }

        else
        {
          v38 = 0xE500000000000000;
        }

        v39 = sub_100141FE4(v37, v38, &v50);

        *(v36 + 4) = v39;
        v40 = v46;
        _os_log_impl(&_mh_execute_header, v46, v44, "Brand assets identifier from certificate: %s", v36, 0xCu);
        sub_10000BB78(v43);

        v45(v12, v49);
      }

      else
      {

        v21(v12, v49);
      }
    }
  }

  else
  {
    (*(v1 + 104))(v4, enum case for DIPError.Code.webPresentmentInvalidCertificate(_:), v0);
    v31 = sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  return v31;
}

uint64_t sub_1004385F4(uint64_t a1)
{
  v2 = sub_100007224(&unk_100833B50, &unk_1006D8FB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10043865C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DigitalPresentmentSessionManager.Proposal();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004386C0(uint64_t a1)
{
  v2 = type metadata accessor for DigitalPresentmentSessionManager.Proposal();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10043872C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(*(type metadata accessor for DIPSignpost.Config() - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v5 = type metadata accessor for DIPSignpost();
  v3[6] = v5;
  v6 = *(v5 - 8);
  v3[7] = v6;
  v7 = *(v6 + 64) + 15;
  v3[8] = swift_task_alloc();

  return _swift_task_switch(sub_10043881C, v2, 0);
}

uint64_t sub_10043881C()
{
  v1 = v0[8];
  v3 = v0[4];
  v2 = v0[5];
  v5 = v0[2];
  v4 = v0[3];
  static DaemonSignposts.WebPresentment.fetchBrand.getter();
  DIPSignpost.init(_:)();
  v6 = swift_task_alloc();
  v0[9] = v6;
  v6[2] = v3;
  v6[3] = v5;
  v6[4] = v4;
  v7 = swift_task_alloc();
  v0[10] = v7;
  *v7 = v0;
  v7[1] = sub_100438924;
  v8 = v0[4];

  return sub_1004394B4(0xD000000000000016, 0x8000000100716980, sub_10043B464, v6);
}

uint64_t sub_100438924(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v7 = v4[4];
    v8 = sub_100438BA4;
  }

  else
  {
    v9 = v4[9];
    v10 = v4[4];
    v4[12] = a1;

    v8 = sub_100438A64;
    v7 = v10;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100438A64()
{
  v1 = v0[12];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[5];
  v5 = v0[6];
  v6 = [v1 localizedNames];
  type metadata accessor for Locale();
  sub_10043B470(&qword_100834788, 255, &type metadata accessor for Locale);
  v7 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v3 + 8))(v2, v5);

  v8 = v0[1];

  return v8(v7);
}

uint64_t sub_100438BA4()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[5];

  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v4 + 8))(v2, v3);

  v6 = v0[1];
  v7 = v0[11];

  return v6();
}

void sub_100438C50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = *(a3 + 112);

  v8 = String._bridgeToObjectiveC()();
  v10[4] = sub_10043B838;
  v10[5] = v6;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_10001335C;
  v10[3] = &unk_100810C60;
  v9 = _Block_copy(v10);

  [v7 brandWithIdentifier:v8 completionHandler:v9];
  _Block_release(v9);
}

uint64_t sub_100438D60(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = *(*(type metadata accessor for DIPSignpost.Config() - 8) + 64) + 15;
  v3[8] = swift_task_alloc();
  v5 = type metadata accessor for DIPSignpost();
  v3[9] = v5;
  v6 = *(v5 - 8);
  v3[10] = v6;
  v7 = *(v6 + 64) + 15;
  v3[11] = swift_task_alloc();

  return _swift_task_switch(sub_100438E50, v2, 0);
}

uint64_t sub_100438E50()
{
  v1 = v0[11];
  v3 = v0[7];
  v2 = v0[8];
  v5 = v0[5];
  v4 = v0[6];
  static DaemonSignposts.WebPresentment.fetchBrandPermissions.getter();
  DIPSignpost.init(_:)();
  v6 = swift_task_alloc();
  v0[12] = v6;
  v6[2] = v3;
  v6[3] = v5;
  v6[4] = v4;
  v7 = swift_task_alloc();
  v0[13] = v7;
  *v7 = v0;
  v7[1] = sub_100438F60;
  v8 = v0[7];

  return sub_100439854((v0 + 2), 0xD000000000000024, 0x80000001007168D0, sub_10043AE30, v6);
}

uint64_t sub_100438F60()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v9 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = *(v2 + 56);
    v5 = sub_100439240;
  }

  else
  {
    v6 = *(v2 + 96);
    v7 = *(v2 + 56);

    v5 = sub_100439088;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100439088()
{
  v1 = v0[14];
  v2 = v0[2];
  v3 = v0[3];
  v4 = type metadata accessor for JSONDecoder();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  sub_10043AE3C();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v1)
  {
    sub_10000B90C(v2, v3);

    v8 = v0[10];
    v7 = v0[11];
    v10 = v0[8];
    v9 = v0[9];
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    (*(v8 + 8))(v7, v9);

    v11 = v0[1];

    return v11();
  }

  else
  {
    v14 = v0[10];
    v13 = v0[11];
    v16 = v0[8];
    v15 = v0[9];
    sub_10000B90C(v2, v3);

    v17 = v0[4];
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    (*(v14 + 8))(v13, v15);

    v18 = v0[1];

    return v18(v17);
  }
}

uint64_t sub_100439240()
{
  v1 = v0[12];

  v2 = v0[14];
  v4 = v0[10];
  v3 = v0[11];
  v6 = v0[8];
  v5 = v0[9];
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v4 + 8))(v3, v5);

  v7 = v0[1];

  return v7();
}

void sub_1004392F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = *(a3 + 112);

  v8 = String._bridgeToObjectiveC()();
  v10[4] = sub_10043B410;
  v10[5] = v6;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_100439408;
  v10[3] = &unk_100810B20;
  v9 = _Block_copy(v10);

  [v7 permissionsForBrandWithIdentifier:v8 completionHandler:v9];
  _Block_release(v9);
}

uint64_t sub_100439408(uint64_t a1, void *a2, void *a3)
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

  sub_10000BD94(v4, v9);
}

uint64_t sub_1004394B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  return _swift_task_switch(sub_1004394DC, v4, 0);
}

uint64_t sub_1004394DC()
{
  v1 = *(v0 + 56);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_100007224(&qword_100844478, &qword_1006E2AE8);
  v4 = swift_allocObject();
  *(v0 + 64) = v4;
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  v6 = *(v0 + 40);
  *(v5 + 16) = v3;
  *(v5 + 24) = v2;
  *(v5 + 32) = v4;
  *(v5 + 40) = v6;
  sub_10043B470(&qword_100844460, v7, type metadata accessor for WebPresentmentBrandStore);
  v8 = async function pointer to withTaskCancellationHandler<A>(operation:onCancel:isolation:)[1];
  v9 = swift_task_alloc();
  *(v0 + 80) = v9;
  sub_10043B59C();
  *v9 = v0;
  v9[1] = sub_100439658;

  return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v0 + 16, &unk_1006E2AF8);
}

uint64_t sub_100439658()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v9 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = *(v2 + 56);
    v5 = sub_1004397E8;
  }

  else
  {
    v6 = *(v2 + 72);
    v7 = *(v2 + 56);

    v5 = sub_100439780;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100439780()
{
  v1 = v0[8];

  v2 = v0[2];
  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_1004397E8()
{
  v1 = v0[8];
  v2 = v0[9];

  v3 = v0[1];
  v4 = v0[11];

  return v3();
}

uint64_t sub_100439854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return _swift_task_switch(sub_10043987C, v5, 0);
}

uint64_t sub_10043987C()
{
  v1 = *(v0 + 56);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_100007224(&qword_100844458, &qword_1006E2AC0);
  v4 = swift_allocObject();
  *(v0 + 64) = v4;
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  v6 = *(v0 + 40);
  *(v5 + 16) = v3;
  *(v5 + 24) = v2;
  *(v5 + 32) = v4;
  *(v5 + 40) = v6;
  sub_10043B470(&qword_100844460, v7, type metadata accessor for WebPresentmentBrandStore);
  v8 = async function pointer to withTaskCancellationHandler<A>(operation:onCancel:isolation:)[1];
  v9 = swift_task_alloc();
  *(v0 + 80) = v9;
  *v9 = v0;
  v9[1] = sub_1004399F4;
  v10 = *(v0 + 16);

  return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v10, &unk_1006E2AD0);
}

uint64_t sub_1004399F4()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v9 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = *(v2 + 56);
    v5 = sub_1004397E8;
  }

  else
  {
    v6 = *(v2 + 72);
    v7 = *(v2 + 56);

    v5 = sub_100439B1C;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100439B1C()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100439B80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return _swift_task_switch(sub_100439BA8, 0, 0);
}

uint64_t sub_100439BA8()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  v5 = *(v0 + 48);
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  *(v4 + 32) = v2;
  *(v4 + 40) = v5;
  v6 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v7 = swift_task_alloc();
  *(v0 + 72) = v7;
  *v7 = v0;
  v7[1] = sub_100439C9C;
  v8 = *(v0 + 24);
  v9 = *(v0 + 32);
  v10 = *(v0 + 16);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v10, 0, 0, v8, v9, sub_10043B270, v4, &type metadata for Data);
}

uint64_t sub_100439C9C()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  v3[10] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100439DD8, 0, 0);
  }

  else
  {
    v4 = v3[8];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_100439DD8()
{
  v1 = v0[8];

  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

uint64_t sub_100439E3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void, uint64_t))
{
  os_unfair_lock_lock((a2 + 32));
  sub_10043B620((a2 + 16));
  os_unfair_lock_unlock((a2 + 32));

  a5(sub_10043B640, a2);
}

uint64_t sub_100439ED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void, uint64_t))
{
  os_unfair_lock_lock((a2 + 32));
  sub_10043B288((a2 + 16));
  os_unfair_lock_unlock((a2 + 32));

  a5(sub_10043B2A8, a2);
}

uint64_t sub_100439F74(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100007224(&qword_100844488, qword_1006E2B00);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v19 - v11;
  if (*a1)
  {
    v13 = a1[1];
    sub_10001FE8C(*a1);
  }

  (*(v9 + 16))(v12, a2, v8);
  v14 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v15 = swift_allocObject();
  (*(v9 + 32))(v15 + v14, v12, v8);
  v16 = (v15 + ((v10 + v14 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v16 = a3;
  v16[1] = a4;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_10043B73C;
  *(v17 + 24) = v15;
  *a1 = sub_10043B878;
  a1[1] = v17;
}

uint64_t sub_10043A118(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100007224(&qword_100844470, &qword_1006E2AD8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v19 - v11;
  if (*a1)
  {
    v13 = a1[1];
    sub_10001FE8C(*a1);
  }

  (*(v9 + 16))(v12, a2, v8);
  v14 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v15 = swift_allocObject();
  (*(v9 + 32))(v15 + v14, v12, v8);
  v16 = (v15 + ((v10 + v14 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v16 = a3;
  v16[1] = a4;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_10043B314;
  *(v17 + 24) = v15;
  *a1 = sub_10043B874;
  a1[1] = v17;
}

uint64_t sub_10043A2BC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = type metadata accessor for DIPError.Code();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v21 = a1;
    v15 = a1;
    sub_100007224(&qword_100844488, qword_1006E2B00);
    return CheckedContinuation.resume(returning:)();
  }

  else
  {
    if (a2)
    {
      v21 = a2;
      swift_errorRetain();
    }

    else
    {
      v21 = 0;
      v22 = 0xE000000000000000;
      v17 = v12;
      _StringGuts.grow(_:)(38);

      v21 = 0x75662072656E6E49;
      v22 = 0xEF206E6F6974636ELL;
      v18._countAndFlagsBits = a4;
      v18._object = a5;
      String.append(_:)(v18);
      v19._object = 0x8000000100716900;
      v19._countAndFlagsBits = 0xD000000000000015;
      String.append(_:)(v19);
      (*(v10 + 104))(v14, enum case for DIPError.Code.webPresentmentUnexpectedDaemonState(_:), v17);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10043B470(&qword_100834130, 255, &type metadata accessor for DIPError);
      v20 = swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      v21 = v20;
    }

    sub_100007224(&qword_100844488, qword_1006E2B00);
    return CheckedContinuation.resume(throwing:)();
  }
}

uint64_t sub_10043A55C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v10 = type metadata accessor for DIPError.Code();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v14 >> 60 == 15)
  {
    if (a3)
    {
      v22 = a3;
      swift_errorRetain();
    }

    else
    {
      v22 = 0;
      v23 = 0xE000000000000000;
      v18 = v13;
      _StringGuts.grow(_:)(38);

      v22 = 0x75662072656E6E49;
      v23 = 0xEF206E6F6974636ELL;
      v19._countAndFlagsBits = a5;
      v19._object = a6;
      String.append(_:)(v19);
      v20._object = 0x8000000100716900;
      v20._countAndFlagsBits = 0xD000000000000015;
      String.append(_:)(v20);
      (*(v11 + 104))(v16, enum case for DIPError.Code.webPresentmentUnexpectedDaemonState(_:), v18);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10043B470(&qword_100834130, 255, &type metadata accessor for DIPError);
      v21 = swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      v22 = v21;
    }

    sub_100007224(&qword_100844470, &qword_1006E2AD8);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    v22 = a1;
    v23 = v14;
    sub_10000B8B8(a1, v14);
    sub_100007224(&qword_100844470, &qword_1006E2AD8);
    return CheckedContinuation.resume(returning:)();
  }
}

void sub_10043A810(uint64_t a1, uint64_t a2, uint64_t a3)
{
  os_unfair_lock_lock((a3 + 32));
  v6 = (a3 + 16);
  v7 = *(a3 + 16);
  if (v7)
  {
    v8 = *(a3 + 24);
    v9 = swift_allocObject();
    *(v9 + 16) = v7;
    *(v9 + 24) = v8;
    v10 = swift_allocObject();
    *(v10 + 16) = sub_10043B8B0;
    *(v10 + 24) = v9;
    *v6 = 0;
    *(a3 + 24) = 0;
    os_unfair_lock_unlock((a3 + 32));

    v11 = *(v10 + 16);
    v12 = *(v10 + 24);
    v13 = a1;
    v11(&v13, a2);
    sub_10001FE8C(sub_10043B878);

    sub_10001FE8C(sub_10043B878);
  }

  else
  {
    *v6 = 0;
    *(a3 + 24) = 0;

    os_unfair_lock_unlock((a3 + 32));
  }
}

void sub_10043A950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  os_unfair_lock_lock((a4 + 32));
  v8 = (a4 + 16);
  v9 = *(a4 + 16);
  if (v9)
  {
    v10 = *(a4 + 24);
    v11 = swift_allocObject();
    *(v11 + 16) = v9;
    *(v11 + 24) = v10;
    v12 = swift_allocObject();
    *(v12 + 16) = sub_10043B8AC;
    *(v12 + 24) = v11;
    *v8 = 0;
    *(a4 + 24) = 0;
    os_unfair_lock_unlock((a4 + 32));

    v13 = *(v12 + 16);
    v14 = *(v12 + 24);
    v15[0] = a1;
    v15[1] = a2;
    v13(v15, a3);
    sub_10001FE8C(sub_10043B874);

    sub_10001FE8C(sub_10043B874);
  }

  else
  {
    *v8 = 0;
    *(a4 + 24) = 0;

    os_unfair_lock_unlock((a4 + 32));
  }
}

void sub_10043AA94(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 32));
  v3 = (a1 + 16);
  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = *(a1 + 24);
    v5 = swift_allocObject();
    *(v5 + 16) = v2;
    *(v5 + 24) = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = sub_10043B5E8;
    *(v6 + 24) = v5;
    *v3 = 0;
    *(a1 + 24) = 0;
    os_unfair_lock_unlock((a1 + 32));
    type metadata accessor for CancellationError();
    sub_10043B470(&qword_100844468, 255, &type metadata accessor for CancellationError);
    v7 = swift_allocError();

    CancellationError.init()();
    v8 = *(v6 + 16);
    v9 = *(v6 + 24);
    v10 = 0;
    v8(&v10, v7);
    sub_10001FE8C(sub_10043B5EC);

    sub_10001FE8C(sub_10043B5EC);
  }

  else
  {
    *v3 = 0;
    *(a1 + 24) = 0;

    os_unfair_lock_unlock((a1 + 32));
  }
}

void sub_10043AC30(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 32));
  v3 = (a1 + 16);
  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = *(a1 + 24);
    v5 = swift_allocObject();
    *(v5 + 16) = v2;
    *(v5 + 24) = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = sub_10043B268;
    *(v6 + 24) = v5;
    *v3 = 0;
    *(a1 + 24) = 0;
    os_unfair_lock_unlock((a1 + 32));
    type metadata accessor for CancellationError();
    sub_10043B470(&qword_100844468, 255, &type metadata accessor for CancellationError);
    v7 = swift_allocError();

    CancellationError.init()();
    v8 = *(v6 + 16);
    v9 = *(v6 + 24);
    v10 = xmmword_1006BF650;
    v8(&v10, v7);
    sub_10001FE8C(sub_10043B26C);

    sub_10001FE8C(sub_10043B26C);
  }

  else
  {
    *v3 = 0;
    *(a1 + 24) = 0;

    os_unfair_lock_unlock((a1 + 32));
  }
}

uint64_t sub_10043ADD4()
{
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

void sub_10043AE30(uint64_t a1, uint64_t a2)
{
  v3 = v2[3];
  v4 = v2[4];
  sub_1004392F8(a1, a2, v2[2]);
}

unint64_t sub_10043AE3C()
{
  result = qword_100844450;
  if (!qword_100844450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100844450);
  }

  return result;
}

uint64_t sub_10043AE90(uint64_t a1)
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

  return sub_100439B80(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10043AF60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  return _swift_task_switch(sub_10043AF88, 0, 0);
}

uint64_t sub_10043AF88()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 32);
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  v5 = *(v0 + 56);
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  *(v4 + 32) = v2;
  *(v4 + 40) = v5;
  v6 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v7 = swift_task_alloc();
  *(v0 + 80) = v7;
  v8 = sub_10043B59C();
  *v7 = v0;
  v7[1] = sub_10043B080;
  v9 = *(v0 + 32);
  v10 = *(v0 + 40);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, v9, v10, sub_10043B5F0, v4, v8);
}

uint64_t sub_10043B080()
{
  v2 = *(*v1 + 80);
  v3 = *v1;
  v3[11] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10043B1CC, 0, 0);
  }

  else
  {
    v4 = v3[9];
    v5 = v3[3];

    *v5 = v3[2];
    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_10043B1CC()
{
  v1 = v0[9];

  v2 = v0[1];
  v3 = v0[11];

  return v2();
}

uint64_t sub_10043B230()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10043B2BC(__int128 *a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v7 = *a1;
  v6 = a2;
  return v3(&v7, &v6);
}

uint64_t sub_10043B314(uint64_t *a1, uint64_t a2)
{
  v5 = *(sub_100007224(&qword_100844470, &qword_1006E2AD8) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];
  v10 = *a1;
  v11 = a1[1];

  return sub_10043A55C(v10, v11, a2, v2 + v6, v8, v9);
}

uint64_t sub_10043B3D0(__int128 *a1, uint64_t *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *a2;
  v7 = *a1;
  return v3(&v7, v5);
}

uint64_t sub_10043B410(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v7[0] = a1;
  v7[1] = a2;
  return v4(v7, a3);
}

uint64_t sub_10043B44C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_10043B464(uint64_t a1, uint64_t a2)
{
  v3 = v2[3];
  v4 = v2[4];
  sub_100438C50(a1, a2, v2[2]);
}

uint64_t sub_10043B470(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_10043B4B8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100041F04;

  return sub_10043AF60(a1, v4, v5, v6, v7, v8);
}

unint64_t sub_10043B59C()
{
  result = qword_100844480;
  if (!qword_100844480)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100844480);
  }

  return result;
}

uint64_t sub_10043B64C(uint64_t *a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *a1;
  v7 = a2;
  v8 = v5;
  return v3(&v8, &v7);
}

uint64_t sub_10043B6A0(uint64_t *a1, uint64_t *a2)
{
  v3 = sub_100007224(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v4 + 8))(v2 + v6, v3);
  v8 = *(v2 + v7 + 8);

  return _swift_deallocObject(v2, v7 + 16, v5 | 7);
}

uint64_t sub_10043B73C(void **a1, uint64_t a2)
{
  v5 = *(sub_100007224(&qword_100844488, qword_1006E2B00) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];
  v10 = *a1;

  return sub_10043A2BC(v10, a2, v2 + v6, v8, v9);
}

uint64_t sub_10043B7F8(uint64_t *a1, uint64_t *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *a2;
  v7 = *a1;
  return v3(&v7, v5);
}

uint64_t sub_10043B838(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1;
  return v2(&v5);
}

void *sub_10043B8B4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100007224(&qword_100843BE8, &qword_1006E1F88);
  v39 = *(v4 - 8);
  v40 = v4;
  v5 = *(v39 + 64);
  __chkstk_darwin(v4);
  v7 = &v34 - v6;
  v8 = sub_100007224(&qword_100843BB8, &unk_1006E2BF0);
  v37 = *(v8 - 8);
  v38 = v8;
  v9 = *(v37 + 64);
  __chkstk_darwin(v8);
  v11 = &v34 - v10;
  v12 = sub_100007224(&qword_100843BA8, &unk_1006E1F30);
  v35 = *(v12 - 8);
  v36 = v12;
  v13 = *(v35 + 64);
  __chkstk_darwin(v12);
  v15 = &v34 - v14;
  v16 = type metadata accessor for URL();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  type metadata accessor for ASCABLEAuthenticator();
  v21 = *(v17 + 16);
  v43 = a1;
  v21(v20, a1, v16);
  v22 = v41;
  v23 = ASCABLEAuthenticator.__allocating_init(caBLEURL:)();
  if (v22)
  {
    (*(v17 + 8))(v43, v16);
    v24 = type metadata accessor for WebPresentmentCABLEAuthenticator();
    swift_defaultActor_destroy();
    v25 = *((swift_isaMask & *v2) + 0x30);
    v26 = *((swift_isaMask & *v2) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v2[14] = v23;
    sub_100007224(&qword_100843AE0, &qword_1006E1EC0);
    v41 = 0;
    v28 = v39;
    v27 = v40;
    (*(v39 + 104))(v7, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v40);
    static AsyncStream.makeStream(of:bufferingPolicy:)();
    (*(v28 + 8))(v7, v27);
    (*(v35 + 32))(v2 + OBJC_IVAR____TtC8coreidvd32WebPresentmentCABLEAuthenticator_completionStream, v15, v36);
    (*(v37 + 32))(v2 + OBJC_IVAR____TtC8coreidvd32WebPresentmentCABLEAuthenticator_completionContinuation, v11, v38);
    v29 = type metadata accessor for WebPresentmentCABLEAuthenticator();
    v42.receiver = v2;
    v42.super_class = v29;
    v30 = objc_msgSendSuper2(&v42, "init");
    v31 = v30[14];
    v24 = v30;
    v32 = v31;
    dispatch thunk of ASCABLEAuthenticator.delegate.setter();

    (*(v17 + 8))(v43, v16);
  }

  return v24;
}

uint64_t sub_10043BCEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&qword_1008444E8, &unk_1006E2BE0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v13 - v7;
  v9 = *(a2 + 112);
  (*(v5 + 16))(&v13 - v7, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v8, v4);
  dispatch thunk of ASCABLEAuthenticator.startWithCompletionHandler(_:)();
}

uint64_t sub_10043BE38(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for DIPError.Code();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  if (a1)
  {
    v12 = a1;
    v8 = a1;
    sub_100007224(&qword_1008444E8, &unk_1006E2BE0);
    return CheckedContinuation.resume(returning:)();
  }

  else
  {
    if (a2)
    {
      v10 = a2;
    }

    else
    {
      (*(v7 + 104))(&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for DIPError.Code.webPresentmentUnexpectedDaemonState(_:));
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10043CF4C(&qword_100834130, &type metadata accessor for DIPError);
      v10 = swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    }

    v12 = v10;
    swift_errorRetain();
    sub_100007224(&qword_1008444E8, &unk_1006E2BE0);
    return CheckedContinuation.resume(throwing:)();
  }
}

uint64_t sub_10043C05C()
{
  v1[5] = v0;
  v2 = type metadata accessor for DIPError.Code();
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v4 = *(v3 + 64) + 15;
  v1[8] = swift_task_alloc();
  v5 = sub_100007224(&qword_100843BA0, &qword_1006E1F28);
  v1[9] = v5;
  v6 = *(v5 - 8);
  v1[10] = v6;
  v7 = *(v6 + 64) + 15;
  v1[11] = swift_task_alloc();

  return _swift_task_switch(sub_10043C184, v0, 0);
}

uint64_t sub_10043C184()
{
  v1 = v0[11];
  v2 = v0[5];
  sub_100007224(&qword_100843BA8, &unk_1006E1F30);
  AsyncStream.makeAsyncIterator()();
  v3 = sub_10043CF4C(&qword_1008444D8, type metadata accessor for WebPresentmentCABLEAuthenticator);
  v4 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v5 = swift_task_alloc();
  v0[12] = v5;
  *v5 = v0;
  v5[1] = sub_10043C29C;
  v6 = v0[11];
  v7 = v0[9];

  return AsyncStream.Iterator.next(isolation:)(v0 + 2, v2, v3, v7);
}

uint64_t sub_10043C29C()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return _swift_task_switch(sub_10043C3AC, v2, 0);
}

uint64_t sub_10043C3AC()
{
  v1 = *(v0 + 24);
  if (v1 == 255)
  {
    v5 = *(v0 + 64);
    v6 = *(v0 + 48);
    v7 = *(v0 + 56);
    (*(*(v0 + 80) + 8))(*(v0 + 88), *(v0 + 72));
    (*(v7 + 104))(v5, enum case for DIPError.Code.webPresentmentCancelled(_:), v6);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10043CF4C(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    goto LABEL_5;
  }

  v3 = *(v0 + 80);
  v2 = *(v0 + 88);
  v4 = *(v0 + 72);
  if (v1)
  {
    *(v0 + 32) = *(v0 + 16);
    sub_100007224(&qword_100833B90, &qword_1006D95C0);
    swift_willThrowTypedImpl();
    (*(v3 + 8))(v2, v4);
LABEL_5:
    v8 = *(v0 + 88);
    v9 = *(v0 + 64);

    v10 = *(v0 + 8);
    goto LABEL_7;
  }

  v11 = *(v0 + 64);
  (*(v3 + 8))(*(v0 + 88), *(v0 + 72));

  v10 = *(v0 + 8);
LABEL_7:

  return v10();
}

uint64_t sub_10043C5D0(uint64_t a1)
{
  v2 = sub_100007224(&qword_100843BE0, &qword_1006E1F80);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v8 - v5;
  if (a1)
  {
    swift_willThrow();
  }

  v8[2] = a1;
  v9 = a1 != 0;
  swift_errorRetain();
  sub_10001F6D4(a1, a1 != 0);
  sub_100007224(&qword_100843BB8, &unk_1006E2BF0);
  AsyncStream.Continuation.yield(_:)();
  (*(v3 + 8))(v6, v2);
  AsyncStream.Continuation.finish()();
  return sub_10001F6B4(a1, a1 != 0);
}

uint64_t sub_10043C730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_10043C750, a4, 0);
}

uint64_t sub_10043C750()
{
  v1 = v0[2];
  sub_10043C5D0(v0[3]);
  v2 = v0[1];

  return v2();
}

uint64_t sub_10043C8F8()
{
  v1 = OBJC_IVAR____TtC8coreidvd32WebPresentmentCABLEAuthenticator_completionStream;
  v2 = sub_100007224(&qword_100843BA8, &unk_1006E1F30);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC8coreidvd32WebPresentmentCABLEAuthenticator_completionContinuation;
  v4 = sub_100007224(&qword_100843BB8, &unk_1006E2BF0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for WebPresentmentCABLEAuthenticator()
{
  result = qword_1008444C8;
  if (!qword_1008444C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10043CA24()
{
  sub_100410808(319, &qword_100843AD8, &type metadata accessor for AsyncStream);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_100410808(319, &unk_100843AE8, &type metadata accessor for AsyncStream.Continuation);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_10043CB5C()
{
  v1 = *(v0 + 24);
  v2 = sub_10043CF4C(&qword_1008444D8, type metadata accessor for WebPresentmentCABLEAuthenticator);
  v3 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 32) = v4;
  v5 = sub_10043CDE0();
  *v4 = v0;
  v4[1] = sub_10043CC78;
  v6 = *(v0 + 24);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 16, v1, v2, 0x29287472617473, 0xE700000000000000, sub_10043CDD8, v6, v5);
}

uint64_t sub_10043CC78()
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  v4 = *v1;
  *(*v1 + 40) = v0;

  v5 = *(v2 + 24);
  if (v0)
  {
    v6 = sub_10043CDC0;
  }

  else
  {
    v6 = sub_10043CDA4;
  }

  return _swift_task_switch(v6, v5, 0);
}

unint64_t sub_10043CDE0()
{
  result = qword_1008444E0;
  if (!qword_1008444E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1008444E0);
  }

  return result;
}

uint64_t sub_10043CE2C()
{
  v1 = sub_100007224(&qword_1008444E8, &unk_1006E2BE0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10043CEC0(void *a1, uint64_t a2)
{
  v4 = *(*(sub_100007224(&qword_1008444E8, &unk_1006E2BE0) - 8) + 80);

  return sub_10043BE38(a1, a2);
}

uint64_t sub_10043CF4C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10043CF94()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10043CFDC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100027B9C;

  return sub_10043C730(a1, v4, v5, v7, v6);
}

void *sub_10043D09C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v43 = a1;
  v11 = sub_100007224(&unk_100844540, &unk_1006BFBC0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v42 = &v35 - v13;
  v39 = type metadata accessor for ASCABLERequestType();
  v14 = *(v39 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v39);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  v5[14] = 0;
  sub_100020260(a1, (v5 + 15));
  v5[20] = a2;
  v5[21] = a3;
  v37 = a2;
  v38 = a3;
  v36 = a4;
  v5[22] = a4;
  v5[23] = a5;
  v18 = swift_allocBox();
  v20 = v19;
  v41 = v19;
  v21 = type metadata accessor for URL();
  v22 = *(v21 - 8);
  v23 = *(v22 + 56);
  v40 = v22 + 56;
  v24 = v20;
  v25 = v21;
  v23(v24, 1, 1);
  v5[24] = sub_10043E8EC;
  v5[25] = v18;
  sub_10001F640(a2);
  sub_10001F640(a4);
  v26 = type metadata accessor for WebPresentmentCABLEClient();
  v44.receiver = v5;
  v44.super_class = v26;

  v27 = objc_msgSendSuper2(&v44, "init");
  type metadata accessor for ASCABLEClient();
  (*(v14 + 104))(v17, enum case for ASCABLERequestType.digitalCredentialPresentation(_:), v39);
  v28 = v27;
  v29 = ASCABLEClient.__allocating_init(delegate:requestType:)();
  v30 = v28[14];
  v28[14] = v29;
  v31 = v29;

  v32 = v42;
  dispatch thunk of ASCABLEClient.qrCodeURL.getter();

  sub_10001FE8C(v36);
  sub_10001FE8C(v37);
  sub_10000BB78(v43);
  (v23)(v32, 0, 1, v25);
  v33 = v41;
  swift_beginAccess();
  sub_10000BDA8(v32, v33);

  return v28;
}

uint64_t sub_10043D388@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100007224(&unk_100844540, &unk_1006BFBC0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v10 - v4;
  v6 = swift_projectBox();
  swift_beginAccess();
  sub_10043E8F4(v6, v5);
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  result = (*(v8 + 48))(v5, 1, v7);
  if (result != 1)
  {
    return (*(v8 + 32))(a1, v5, v7);
  }

  __break(1u);
  return result;
}

uint64_t sub_10043D4AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_10043D4CC, a2, 0);
}

uint64_t sub_10043D4CC(uint64_t a1, uint64_t a2)
{
  v4 = v2[4];
  v3 = v2[5];
  v5 = v2[3];
  v6 = sub_10043E8A4(&qword_100844518, a2, type metadata accessor for WebPresentmentCABLEClient);
  v7 = swift_task_alloc();
  v2[6] = v7;
  v7[2] = v5;
  v7[3] = v4;
  v7[4] = v3;
  v8 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v9 = swift_task_alloc();
  v2[7] = v9;
  v10 = sub_100007224(&unk_100844520, &unk_1006E2CD8);
  *v9 = v2;
  v9[1] = sub_1003F9AAC;
  v11 = v2[2];

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v11, v5, v6, 0xD000000000000025, 0x8000000100716C20, sub_10043E778, v7, v10);
}

void sub_10043D61C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&unk_100844530, &unk_1006E2CF8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v13 - v7;
  v9 = *(a2 + 112);
  if (v9)
  {
    (*(v5 + 16))(v8, a1, v4);
    v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v11 = swift_allocObject();
    (*(v5 + 32))(v11 + v10, v8, v4);
    v12 = v9;
    dispatch thunk of ASCABLEClient.performAuthenticationOperation(_:forRelyingPartyIdentifier:completionHandler:)();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10043D79C(uint64_t a1, uint64_t a2)
{
  v4 = *(*(type metadata accessor for DIPError.Code() - 8) + 64);
  v5 = __chkstk_darwin(a1);
  if (v5)
  {
    v11 = v5;
    swift_unknownObjectRetain();
    sub_100007224(&unk_100844530, &unk_1006E2CF8);
    return CheckedContinuation.resume(returning:)();
  }

  else
  {
    if (a2)
    {
      v9 = a2;
    }

    else
    {
      (*(v7 + 104))(&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for DIPError.Code.webPresentmentUnexpectedDaemonState(_:));
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10043E8A4(&qword_100834130, 255, &type metadata accessor for DIPError);
      v9 = swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    }

    v11 = v9;
    swift_errorRetain();
    sub_100007224(&unk_100844530, &unk_1006E2CF8);
    return CheckedContinuation.resume(throwing:)();
  }
}

uint64_t sub_10043D9C0(uint64_t a1)
{
  v2 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v9 - v4;
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = a1;

  sub_1003E653C(0, 0, v5, &unk_1006E2CF0, v7);
}

void sub_10043DAEC()
{
  v1 = *(*(v0 + 16) + 112);
  if (v1)
  {
    v2 = v1;
    dispatch thunk of ASCABLEClient.cancelIfNecessary()();

    v3 = *(v0 + 8);

    v3();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10043DB84()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 160);
  if (v2)
  {
    v3 = *(v1 + 168);
    v2();
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10043DC34()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 176);
  if (v2)
  {
    v3 = *(v1 + 184);
    v2();
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10043DCC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v14 - v9;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a1;

  sub_1003E653C(0, 0, v10, a5, v12);
}

uint64_t sub_10043DDC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a6;
  v7[3] = a7;
  v8 = swift_task_alloc();
  v7[4] = v8;
  *v8 = v7;
  v8[1] = sub_10043DE58;

  return sub_10043EAC8();
}

uint64_t sub_10043DE58(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 32);
  v8 = *v3;
  *(*v3 + 40) = v2;

  if (v2)
  {
    v9 = sub_10043E02C;
  }

  else
  {
    *(v6 + 48) = a2;
    *(v6 + 56) = a1;
    v9 = sub_10043DF8C;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_10043DF8C()
{
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[2];
  v3 = v0[3];
  sub_10000B8B8(v1, v2);
  v4(v1, v2, 0);
  sub_10000B90C(v1, v2);
  sub_10000B90C(v1, v2);
  v5 = v0[1];

  return v5();
}