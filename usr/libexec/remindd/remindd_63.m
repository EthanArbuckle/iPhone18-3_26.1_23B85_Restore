uint64_t sub_1005CC954(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1005CC9B8(uint64_t a1)
{
  v2[33] = a1;
  v2[34] = v1;
  v2[35] = *v1;
  v3 = type metadata accessor for Locale();
  v2[36] = v3;
  v4 = *(v3 - 8);
  v2[37] = v4;
  v5 = *(v4 + 64) + 15;
  v2[38] = swift_task_alloc();
  v6 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v2[39] = v6;
  v7 = *(v6 - 8);
  v2[40] = v7;
  v8 = *(v7 + 64) + 15;
  v2[41] = swift_task_alloc();
  v2[42] = swift_task_alloc();
  v2[43] = swift_task_alloc();
  v9 = type metadata accessor for Date();
  v2[44] = v9;
  v10 = *(v9 - 8);
  v2[45] = v10;
  v11 = *(v10 + 64) + 15;
  v2[46] = swift_task_alloc();

  return _swift_task_switch(sub_1005CCB70, 0, 0);
}

uint64_t sub_1005CCB70()
{
  v32 = v0;
  if (qword_100936688 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 272);
  v2 = type metadata accessor for Logger();
  *(v0 + 376) = sub_100006654(v2, qword_10094DED0);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = *(v0 + 272);
    v5 = *(v0 + 280);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v31 = v9;
    *v7 = 136446466;
    *(v0 + 240) = v5;
    swift_getMetatypeMetadata();
    v10 = String.init<A>(describing:)();
    v12 = sub_10000668C(v10, v11, &v31);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2114;
    v13 = *(v6 + 24);
    *(v7 + 14) = v13;
    *v8 = v13;
    v14 = v13;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s: Start execution {listObjectID: %{public}@}", v7, 0x16u);
    sub_1000050A4(v8, &unk_100938E70, &unk_100797230);

    sub_10000607C(v9);
  }

  v15 = *(v0 + 368);
  v16 = *(v0 + 344);
  v18 = *(v0 + 312);
  v17 = *(v0 + 320);
  v20 = *(v0 + 264);
  v19 = *(v0 + 272);
  Date.init()();
  v21 = *(v19 + 24);
  *(v0 + 384) = v21;
  v22 = swift_allocObject();
  *(v0 + 392) = v22;
  *(v22 + 16) = v21;
  *(v22 + 24) = v20;
  *(v0 + 76) = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
  v23 = *(v17 + 104);
  *(v0 + 400) = v23;
  *(v0 + 408) = (v17 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v23(v16);
  v24 = async function pointer to NSManagedObjectContext.perform<A>(schedule:_:)[1];
  v25 = v21;
  v26 = v20;
  v27 = swift_task_alloc();
  *(v0 + 416) = v27;
  *v27 = v0;
  v27[1] = sub_1005CCE54;
  v28 = *(v0 + 344);
  v29 = *(v0 + 264);

  return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 80, v28, sub_1005CF864, v22, &_s9UtilitiesO40REMCDListThreadSafePartialRepresentationVN);
}

uint64_t sub_1005CCE54()
{
  v2 = *v1;
  v3 = *(*v1 + 416);
  v4 = *(*v1 + 392);
  v5 = *(*v1 + 344);
  v6 = *(*v1 + 320);
  v7 = *(*v1 + 312);
  v11 = *v1;
  v2[53] = v0;

  v8 = *(v6 + 8);
  v2[54] = v8;
  v2[55] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v5, v7);

  if (v0)
  {
    v9 = sub_1005CD34C;
  }

  else
  {
    v9 = sub_1005CCFF4;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_1005CCFF4()
{
  v40 = v0;
  v1 = *(v0 + 112);
  *(v0 + 32) = *(v0 + 96);
  *(v0 + 48) = v1;
  *(v0 + 16) = *(v0 + 80);
  *(v0 + 57) = *(v0 + 121);
  if (*(v0 + 49) & 1) != 0 || (*(v0 + 50))
  {
    v2 = *(v0 + 376);
    v3 = *(v0 + 272);

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(v0 + 384);
      v7 = *(v0 + 280);
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v39 = v10;
      *v8 = 136446466;
      *(v0 + 232) = v7;
      swift_getMetatypeMetadata();
      v11 = String.init<A>(describing:)();
      v13 = sub_10000668C(v11, v12, &v39);

      *(v8 + 4) = v13;
      *(v8 + 12) = 2114;
      *(v8 + 14) = v6;
      *v9 = v6;
      v14 = v6;
      _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s: Skipped suggesting conversion to grocery list because we already determined that we should suggest the conversion or it is already a grocery list {listObjectID: %{public}@}", v8, 0x16u);
      sub_1000050A4(v9, &unk_100938E70, &unk_100797230);

      sub_10000607C(v10);
    }

    sub_100332478(v0 + 16);
    v16 = *(v0 + 360);
    v15 = *(v0 + 368);
    v18 = *(v0 + 344);
    v17 = *(v0 + 352);
    v20 = *(v0 + 328);
    v19 = *(v0 + 336);
    v21 = *(v0 + 304);
    sub_1005CE19C(*(v0 + 272), v15, *(v0 + 280));
    (*(v16 + 8))(v15, v17);

    v22 = *(v0 + 8);

    return v22(0);
  }

  else
  {
    v25 = *(v0 + 400);
    v24 = *(v0 + 408);
    v26 = *(v0 + 76);
    v27 = *(v0 + 384);
    v28 = *(v0 + 336);
    v29 = *(v0 + 312);
    v30 = *(v0 + 264);
    v31 = swift_allocObject();
    *(v0 + 448) = v31;
    *(v31 + 16) = v27;
    *(v31 + 24) = v30;
    v25(v28, v26, v29);
    v32 = async function pointer to NSManagedObjectContext.perform<A>(schedule:_:)[1];
    v33 = v27;
    v34 = v30;
    v35 = swift_task_alloc();
    *(v0 + 456) = v35;
    v36 = sub_1000F5104(&unk_10093B300, &unk_100797780);
    *v35 = v0;
    v35[1] = sub_1005CD420;
    v37 = *(v0 + 336);
    v38 = *(v0 + 264);

    return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 248, v37, sub_1005CF880, v31, v36);
  }
}

uint64_t sub_1005CD34C()
{
  v1 = v0[53];
  v3 = v0[45];
  v2 = v0[46];
  v5 = v0[43];
  v4 = v0[44];
  v7 = v0[41];
  v6 = v0[42];
  v8 = v0[38];
  sub_1005CE19C(v0[34], v2, v0[35]);
  (*(v3 + 8))(v2, v4);

  v9 = v0[1];

  return v9(0);
}

uint64_t sub_1005CD420()
{
  v2 = *(*v1 + 456);
  v3 = *(*v1 + 448);
  v4 = *(*v1 + 440);
  v5 = *(*v1 + 432);
  v6 = *(*v1 + 336);
  v7 = *(*v1 + 312);
  v10 = *v1;
  *(*v1 + 464) = v0;

  v5(v6, v7);

  if (v0)
  {
    v8 = sub_1005CD778;
  }

  else
  {
    v8 = sub_1005CD5BC;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_1005CD5BC()
{
  v2 = v0[37];
  v1 = v0[38];
  v3 = v0[36];
  v4 = v0[31];
  v0[59] = v4;
  static Locale.current.getter();
  v5 = Locale.identifier.getter();
  v7 = v6;
  v0[60] = v5;
  v0[61] = v6;
  (*(v2 + 8))(v1, v3);
  if (*(v4 + 16))
  {
    v8 = swift_task_alloc();
    v0[62] = v8;
    *v8 = v0;
    v8[1] = sub_1005CD854;
    v9 = v0[34];

    return sub_1005CE45C(v4, (v0 + 2), v5, v7);
  }

  else
  {

    sub_100332478((v0 + 2));
    v12 = v0[45];
    v11 = v0[46];
    v14 = v0[43];
    v13 = v0[44];
    v16 = v0[41];
    v15 = v0[42];
    v17 = v0[38];
    sub_1005CE19C(v0[34], v11, v0[35]);
    (*(v12 + 8))(v11, v13);

    v18 = v0[1];

    return v18(0);
  }
}

uint64_t sub_1005CD778()
{
  sub_100332478((v0 + 2));
  v1 = v0[58];
  v3 = v0[45];
  v2 = v0[46];
  v5 = v0[43];
  v4 = v0[44];
  v7 = v0[41];
  v6 = v0[42];
  v8 = v0[38];
  sub_1005CE19C(v0[34], v2, v0[35]);
  (*(v3 + 8))(v2, v4);

  v9 = v0[1];

  return v9(0);
}

uint64_t sub_1005CD854(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 496);
  v6 = *v2;
  *(*v2 + 504) = v1;

  if (v1)
  {
    v7 = *(v4 + 472);

    v8 = sub_1005CDE40;
  }

  else
  {
    v9 = *(v4 + 488);
    v10 = *(v4 + 472);

    *(v4 + 73) = a1 & 1;
    v8 = sub_1005CD99C;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_1005CD99C()
{
  v1 = *(v0 + 73);
  v3 = *(v0 + 400);
  v2 = *(v0 + 408);
  v4 = *(v0 + 76);
  v5 = *(v0 + 328);
  v6 = *(v0 + 312);
  v7 = *(v0 + 264);
  v8 = swift_allocObject();
  *(v0 + 512) = v8;
  *(v8 + 16) = v7;
  v9 = *(v0 + 32);
  *(v8 + 24) = *(v0 + 16);
  *(v8 + 40) = v9;
  *(v8 + 56) = *(v0 + 48);
  *(v8 + 65) = *(v0 + 57);
  *(v8 + 81) = v1;
  v3(v5, v4, v6);
  v10 = v7;
  sub_10033251C(v0 + 16, v0 + 144);
  v11 = async function pointer to NSManagedObjectContext.perform<A>(schedule:_:)[1];
  v12 = swift_task_alloc();
  *(v0 + 520) = v12;
  *v12 = v0;
  v12[1] = sub_1005CDAE8;
  v13 = *(v0 + 328);
  v14 = *(v0 + 264);

  return NSManagedObjectContext.perform<A>(schedule:_:)(v12, v13, sub_1005CF89C, v8, &type metadata for () + 8);
}

uint64_t sub_1005CDAE8()
{
  v2 = *(*v1 + 520);
  v3 = *(*v1 + 512);
  v4 = *(*v1 + 440);
  v5 = *(*v1 + 432);
  v6 = *(*v1 + 328);
  v7 = *(*v1 + 312);
  v10 = *v1;
  *(*v1 + 528) = v0;

  v5(v6, v7);

  if (v0)
  {
    v8 = sub_1005CDD64;
  }

  else
  {
    v8 = sub_1005CDC84;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_1005CDC84()
{
  sub_100332478(v0 + 16);
  v1 = *(v0 + 73);
  v3 = *(v0 + 360);
  v2 = *(v0 + 368);
  v5 = *(v0 + 344);
  v4 = *(v0 + 352);
  v7 = *(v0 + 328);
  v6 = *(v0 + 336);
  v8 = *(v0 + 304);
  sub_1005CE19C(*(v0 + 272), v2, *(v0 + 280));
  (*(v3 + 8))(v2, v4);

  v9 = *(v0 + 8);

  return v9(v1);
}

uint64_t sub_1005CDD64()
{
  sub_100332478((v0 + 2));
  v1 = v0[66];
  v3 = v0[45];
  v2 = v0[46];
  v5 = v0[43];
  v4 = v0[44];
  v7 = v0[41];
  v6 = v0[42];
  v8 = v0[38];
  sub_1005CE19C(v0[34], v2, v0[35]);
  (*(v3 + 8))(v2, v4);

  v9 = v0[1];

  return v9(0);
}

uint64_t sub_1005CDE40()
{
  v29 = v0;
  v1 = *(v0 + 504);
  v2 = *(v0 + 488);
  v3 = *(v0 + 376);
  v4 = *(v0 + 272);

  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 488);
    v26 = *(v0 + 480);
    v27 = *(v0 + 504);
    v8 = *(v0 + 384);
    v9 = *(v0 + 280);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v28[0] = swift_slowAlloc();
    v28[1] = v9;
    *v10 = 136446978;
    swift_getMetatypeMetadata();
    v12 = String.init<A>(describing:)();
    v14 = sub_10000668C(v12, v13, v28);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2114;
    *(v10 + 14) = v8;
    *v11 = v8;
    *(v10 + 22) = 2082;
    v15 = v8;
    v16 = sub_10000668C(v26, v7, v28);

    *(v10 + 24) = v16;
    *(v10 + 32) = 2082;
    swift_getErrorValue();
    v18 = *(v0 + 208);
    v17 = *(v0 + 216);
    v19 = *(v0 + 224);
    v20 = Error.rem_errorDescription.getter();
    v22 = sub_10000668C(v20, v21, v28);

    *(v10 + 34) = v22;
    _os_log_impl(&_mh_execute_header, v5, v6, "%{public}s: Failed to predict whether to suggest conversion to grocery list {listObjectID: %{public}@, groceryLocaleID: %{public}s, error: %{public}s}", v10, 0x2Au);
    sub_1000050A4(v11, &unk_100938E70, &unk_100797230);

    swift_arrayDestroy();
  }

  else
  {
    v23 = *(v0 + 504);
    v24 = *(v0 + 488);
  }

  *(v0 + 73) = 0;

  return _swift_task_switch(sub_1005CD99C, 0, 0);
}

uint64_t sub_1005CE0D4()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10094DED0);
  v1 = sub_100006654(v0, qword_10094DED0);
  if (qword_100936460 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975068);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_1005CE19C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100936688 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100006654(v11, qword_10094DED0);
  (*(v7 + 16))(v10, a2, v6);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v25[0] = v24;
    *v14 = 136446722;
    v25[1] = a3;
    swift_getMetatypeMetadata();
    v16 = String.init<A>(describing:)();
    v18 = sub_10000668C(v16, v17, v25);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2114;
    v19 = *(a1 + 24);
    *(v14 + 14) = v19;
    *v15 = v19;
    *(v14 + 22) = 2048;
    v20 = v19;
    Date.rem_elapsedInMilliseconds.getter();
    v22 = v21;
    (*(v7 + 8))(v10, v6);
    *(v14 + 24) = v22;
    _os_log_impl(&_mh_execute_header, v12, v13, "%{public}s: Finished execution {listObjectID: %{public}@, elapsedSeconds: %f ms}", v14, 0x20u);
    sub_1000050A4(v15, &unk_100938E70, &unk_100797230);

    sub_10000607C(v24);
  }

  else
  {

    (*(v7 + 8))(v10, v6);
  }
}

uint64_t sub_1005CE45C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[13] = a4;
  v5[14] = v4;
  v5[11] = a2;
  v5[12] = a3;
  v5[10] = a1;
  v6 = *(*(sub_1000F5104(&qword_100936FA8, &qword_100791B70) - 8) + 64) + 15;
  v5[15] = swift_task_alloc();

  return _swift_task_switch(sub_1005CE500, 0, 0);
}

uint64_t sub_1005CE500()
{
  v2 = v0[14];
  v1 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  v6 = v0[10];
  v5 = v0[11];
  static TaskPriority.high.getter();
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v1, 0, 1, v7);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 32) = v2;
  *(v8 + 40) = v4;
  *(v8 + 48) = v3;
  *(v8 + 56) = v6;
  v9 = *v5;
  v10 = v5[1];
  v11 = v5[2];
  *(v8 + 105) = *(v5 + 41);
  *(v8 + 80) = v10;
  *(v8 + 96) = v11;
  *(v8 + 64) = v9;

  sub_10033251C(v5, (v0 + 2));
  v12 = sub_100331E3C(0, 0, v1, &unk_1007B3D10, v8);
  v0[16] = v12;
  v13 = async function pointer to Task.value.getter[1];
  v14 = swift_task_alloc();
  v0[17] = v14;
  v15 = sub_1000F5104(&unk_1009399E0, &qword_100795D00);
  *v14 = v0;
  v14[1] = sub_1005CE6C0;

  return Task.value.getter(v0 + 73, v12, &type metadata for Bool, v15, &protocol self-conformance witness table for Error);
}

uint64_t sub_1005CE6C0()
{
  v2 = *(*v1 + 136);
  v3 = *(*v1 + 128);
  v6 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v4 = sub_1005CE85C;
  }

  else
  {
    v4 = sub_1005CE7F0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1005CE7F0()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 73);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1005CE85C()
{
  v1 = v0[15];

  v2 = v0[1];
  v3 = v0[18];

  return v2(0);
}

void sub_1005CE8C4(void *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v25 = a3;
  v26 = a2;
  v5 = _s10PredicatesOMa_1();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = (&v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1007953F0;
  *(v9 + 32) = a1;
  *v8 = v9;
  swift_storeEnumTagMultiPayload();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100799D70;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = swift_getKeyPath();
  *(inited + 48) = swift_getKeyPath();
  v24 = a1;
  v11 = sub_10001F6F4();
  sub_1000060C8(0, &unk_100938880, off_1008D41A8);
  v12 = [objc_allocWithZone(NSFetchRequest) init];
  v13 = [swift_getObjCClassFromMetadata() entity];
  [v12 setEntity:v13];

  [v12 setAffectedStores:0];
  [v12 setPredicate:v11];
  v29 = _swiftEmptySetSingleton;

  sub_100391CC4(v14);

  sub_1003FE48C(v29);

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v12 setPropertiesToFetch:isa];

  swift_setDeallocating();
  v16 = *(inited + 16);
  swift_arrayDestroy();
  if (qword_100936520 != -1)
  {
    swift_once();
  }

  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  v17 = Array._bridgeToObjectiveC()().super.isa;
  [v12 setSortDescriptors:v17];

  v18 = NSManagedObjectContext.fetch<A>(_:)();
  if (v3)
  {
    sub_1004258C8(v8, _s10PredicatesOMa_1);

    return;
  }

  v29 = v18;
  sub_1000F5104(&qword_10093F6F0, qword_10079A300);
  sub_100155610();
  v19 = Sequence.elements<A>(ofType:)();

  sub_1004258C8(v8, _s10PredicatesOMa_1);

  if (v19 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_7;
    }

LABEL_12:

    [objc_opt_self() noSuchObjectErrorWithObjectID:v24];
    swift_willThrow();
    return;
  }

  if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_12;
  }

LABEL_7:
  if ((v19 & 0xC000000000000001) != 0)
  {
    v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_10;
  }

  if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v20 = *(v19 + 32);
LABEL_10:
    v21 = v20;

    sub_100192C08(v21, v27);
    v22 = v27[1];
    v23 = v25;
    *v25 = v27[0];
    v23[1] = v22;
    v23[2] = v28[0];
    *(v23 + 41) = *(v28 + 9);
    return;
  }

  __break(1u);
}

void sub_1005CED34(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 groceryLocaleID];
  if (v3)
  {
    v4 = v3;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_1005CED9C(uint64_t *a1, void **a2)
{
  v2 = *a2;
  if (a1[1])
  {
    v3 = *a1;
    v4 = String._bridgeToObjectiveC()();
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [v2 setGroceryLocaleID:?];
}

void sub_1005CEE0C(void *a1@<X0>, void *a2@<X8>)
{
  v5 = 0x656C746974;
  v6 = _s10PredicatesOMa(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(sub_1000F5104(&qword_10093C920, qword_1007AC750) + 64);
  *v9 = a1;
  v9[8] = 1;
  v11 = enum case for REMRemindersListDataView.ShowCompleted.on(_:);
  v12 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
  (*(*(v12 - 8) + 104))(&v9[v10], v11, v12);
  swift_storeEnumTagMultiPayload();
  v13 = a1;
  v14 = sub_100043AA8();
  sub_1004258C8(v9, _s10PredicatesOMa);
  v15 = [objc_allocWithZone(NSFetchRequest) init];
  sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
  v16 = [swift_getObjCClassFromMetadata() entity];
  [v15 setEntity:v16];

  [v15 setAffectedStores:0];
  [v15 setPredicate:v14];
  [v15 setResultType:2];

  [v15 setReturnsDistinctResults:0];
  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_100791340;
  *(v17 + 32) = 0x696669746E656469;
  *(v17 + 40) = 0xEA00000000007265;
  *(v17 + 88) = &type metadata for String;
  *(v17 + 56) = &type metadata for String;
  *(v17 + 64) = 0x656C746974;
  *(v17 + 72) = 0xE500000000000000;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v15 setPropertiesToFetch:isa];

  sub_1000060C8(0, &qword_100939F50, NSDictionary_ptr);
  v19 = NSManagedObjectContext.fetch<A>(_:)();
  if (v2)
  {

    return;
  }

  v20 = v19;
  v36 = 0;
  v39 = a2;
  if (v19 >> 62)
  {
LABEL_33:
    v45 = v20 & 0xFFFFFFFFFFFFFF8;
    v21 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v45 = v19 & 0xFFFFFFFFFFFFFF8;
    v21 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v22 = v39;
  v37 = v15;
  if (!v21)
  {
    v38 = _swiftEmptyArrayStorage;
    goto LABEL_30;
  }

  v23 = 0;
  v15 = (v20 & 0xC000000000000001);
  v38 = _swiftEmptyArrayStorage;
  do
  {
    v24 = v23;
    while (1)
    {
      if (v15)
      {
        v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v24 >= *(v45 + 16))
        {
          goto LABEL_32;
        }

        v25 = *(v20 + 8 * v24 + 32);
      }

      v26 = v25;
      v23 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      v27 = v5;
      *&v40 = v5;
      *(&v40 + 1) = 0xE500000000000000;
      v28 = [v25 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
      swift_unknownObjectRelease();
      if (v28)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {

        v40 = 0u;
        v41 = 0u;
      }

      v42[0] = v40;
      v42[1] = v41;
      if (*(&v41 + 1))
      {
        break;
      }

      sub_1000050A4(v42, &qword_100939ED0, &qword_100791B10);
LABEL_9:
      ++v24;
      if (v23 == v21)
      {
        v22 = v39;
        goto LABEL_30;
      }
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_9;
    }

    v29 = v44;
    if (!v44)
    {
      goto LABEL_9;
    }

    v30 = v43;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v38 = sub_100365788(0, *(v38 + 2) + 1, 1, v38);
    }

    v33 = *(v38 + 2);
    v32 = *(v38 + 3);
    if (v33 >= v32 >> 1)
    {
      v38 = sub_100365788((v32 > 1), v33 + 1, 1, v38);
    }

    v34 = v38;
    *(v38 + 2) = v33 + 1;
    v35 = &v34[16 * v33];
    *(v35 + 4) = v30;
    *(v35 + 5) = v29;
    v22 = v39;
    v5 = v27;
  }

  while (v23 != v21);
LABEL_30:

  *v22 = v38;
}

uint64_t sub_1005CF334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a7;
  v8[7] = a8;
  v8[4] = a5;
  v8[5] = a6;
  v8[2] = a1;
  v8[3] = a4;
  return _swift_task_switch(sub_1005CF35C, 0, 0);
}

uint64_t sub_1005CF35C()
{
  v1 = v0[3];
  v2 = *(v1 + 48);
  v0[8] = (*(v1 + 40))(v0[4], v0[5]);
  v3 = v0[7];
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = swift_task_alloc();
  v0[9] = v6;
  *v6 = v0;
  v6[1] = sub_1005CF468;
  v7 = v0[6];

  return REMGroceryClassifier.shouldSuggestConvertToGrocery(titles:listName:)(v7, v4, v5);
}

uint64_t sub_1005CF468(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 72);
  v6 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v7 = sub_1005CF604;
  }

  else
  {
    *(v4 + 88) = a1 & 1;
    v7 = sub_1005CF594;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1005CF594()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 16);

  *v2 = v1;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1005CF604()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 8);

  return v2();
}

void sub_1005CF668(void *a1, uint64_t *a2, char a3)
{
  v4 = *a2;
  v11 = 0;
  v5 = [a1 existingObjectWithID:v4 error:&v11];
  v6 = v11;
  if (v5)
  {
    v7 = v5;
    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    v9 = v6;
    if (v8)
    {
      [v8 setShouldSuggestConversionToGroceryList:a3 & 1];
    }
  }

  else
  {
    v10 = v11;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

uint64_t sub_1005CF760()
{
  v1 = *(v0 + 48);

  return swift_deallocClassInstance();
}

uint64_t sub_1005CF7CC(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000FCBFC;

  return sub_1005CC9B8(a1);
}

uint64_t sub_1005CF8C0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1000FCBFC;

  return sub_1005CF334(a1, v4, v5, v6, v7, v8, v9, (v1 + 8));
}

uint64_t sub_1005CF9A4()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10094DFA0);
  v1 = sub_100006654(v0, qword_10094DFA0);
  if (qword_1009364C8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

Swift::Void __swiftcall RDStoreControllerMigrator_IsPinnedByCurrentUser.migrateStoreIfNeeded(_:metadata:)(NSPersistentStore _, NSMutableDictionary metadata)
{
  *&v8 = 0xD00000000000002FLL;
  *(&v8 + 1) = 0x80000001007B3DA0;
  v4 = [(objc_class *)metadata.super.super.isa __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10[0] = v8;
  v10[1] = v9;
  if (!*(&v9 + 1))
  {
    sub_1001B2134(v10);
LABEL_9:
    sub_1005CFC74(_.super.isa);
    isa = Int._bridgeToObjectiveC()().super.super.isa;
    *&v10[0] = 0xD00000000000002FLL;
    *(&v10[0] + 1) = 0x80000001007B3DA0;
    [(objc_class *)metadata.super.super.isa __swift_setObject:isa forKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];

    swift_unknownObjectRelease();
    return;
  }

  sub_1000060C8(0, &qword_100938DE0, NSNumber_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_9;
  }

  v5 = [v7 integerValue];

  if (v5 < 1)
  {
    goto LABEL_9;
  }
}

uint64_t sub_1005CFC74(void *a1)
{
  ObjectType = swift_getObjectType();
  if (qword_100936690 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100006654(v3, qword_10094DFA0);
  v4 = a1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    aBlock[0] = ObjectType;
    *v7 = 136315394;
    swift_getMetatypeMetadata();
    v8 = String.init<A>(describing:)();
    v10 = sub_10000668C(v8, v9, &v22);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2082;
    v11 = sub_1003533B0();
    v13 = sub_10000668C(v11, v12, &v22);

    *(v7 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s: BEGIN {store: %{public}s}", v7, 0x16u);
    swift_arrayDestroy();
  }

  v14 = [objc_allocWithZone(NSManagedObjectContext) initWithConcurrencyType:1];
  v15 = [v4 persistentStoreCoordinator];
  [v14 setPersistentStoreCoordinator:v15];

  [v14 setTransactionAuthor:RDStoreControllerIsPinnedByCurrentUserMigrationAuthor];
  v16 = swift_allocObject();
  v16[2] = v14;
  v16[3] = v4;
  v16[4] = ObjectType;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1005D0970;
  *(v17 + 24) = v16;
  aBlock[4] = sub_1000529DC;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F160;
  aBlock[3] = &unk_1008F95E8;
  v18 = _Block_copy(aBlock);
  v19 = v4;
  v20 = v14;

  [v20 performBlockAndWait:v18];

  _Block_release(v18);
  LOBYTE(v20) = swift_isEscapingClosureAtFileLocation();

  if (v20)
  {
    __break(1u);
  }

  return result;
}

void sub_1005CFFBC(void *a1, void *a2, void *a3)
{
  v71 = a3;
  v74 = a2;
  v75 = a1;
  v3 = _s10PredicatesOMa_1();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for Date();
  v7 = *(v73 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v73);
  v70 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v72 = &v67 - v11;
  __chkstk_darwin(v12);
  v14 = &v67 - v13;
  Date.init()();
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100796900;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v16 = sub_10001F6F4();
  sub_1001555B4(v6);
  sub_1000060C8(0, &unk_100938880, off_1008D41A8);
  v17 = [objc_allocWithZone(NSFetchRequest) init];
  v18 = [swift_getObjCClassFromMetadata() entity];
  [v17 setEntity:v18];

  [v17 setAffectedStores:0];
  [v17 setPredicate:v16];
  v76 = _swiftEmptySetSingleton;

  sub_100391CC4(v19);

  sub_1003FE48C(v76);

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v17 setPropertiesToFetch:isa];

  v21 = NSManagedObjectContext.fetch<A>(_:)();
  v24 = v21;
  v69 = v14;
  if (v21 >> 62)
  {
    v36 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v36 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v68 = v7;
  if (v36)
  {
    if (v36 < 1)
    {
      __break(1u);
    }

    v37 = 0;
    v38 = 0;
    while (1)
    {
      if ((v24 & 0xC000000000000001) != 0)
      {
        v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v39 = *(v24 + 8 * v38 + 32);
      }

      v40 = v39;
      if (([v39 isPinnedByCurrentUser] & 1) != 0 || objc_msgSend(v40, "sharingStatus") > 1)
      {
      }

      else
      {
        [v40 setIsPinnedByCurrentUser:1];

        if (__OFADD__(v37++, 1))
        {
          __break(1u);
          goto LABEL_21;
        }
      }

      if (v36 == ++v38)
      {
        goto LABEL_23;
      }
    }
  }

  v37 = 0;
LABEL_23:

  v42 = v75;
  v43 = [v75 hasChanges];
  v44 = v72;
  v45 = v73;
  v46 = v69;
  v47 = v70;
  if ((v43 & 1) == 0)
  {
    goto LABEL_26;
  }

  v76 = 0;
  if ([v42 save:&v76])
  {
    v48 = v76;
LABEL_26:
    if (qword_100936690 != -1)
    {
      swift_once();
    }

    v49 = type metadata accessor for Logger();
    sub_100006654(v49, qword_10094DFA0);
    v50 = v68;
    (*(v68 + 16))(v44, v46, v45);
    v51 = v74;
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v77 = v75;
      *v54 = 136315906;
      v76 = v71;
      swift_getMetatypeMetadata();
      v55 = String.init<A>(describing:)();
      LODWORD(v74) = v53;
      v57 = sub_10000668C(v55, v56, &v77);

      *(v54 + 4) = v57;
      *(v54 + 12) = 2082;
      v58 = sub_1003533B0();
      v60 = sub_10000668C(v58, v59, &v77);

      *(v54 + 14) = v60;
      *(v54 + 22) = 2050;
      *(v54 + 24) = v37;
      *(v54 + 32) = 2050;
      Date.init()();
      v61 = v72;
      Date.timeIntervalSince(_:)();
      v63 = v62;
      v64 = *(v50 + 8);
      v64(v47, v45);
      v64(v61, v45);
      *(v54 + 34) = v63;
      _os_log_impl(&_mh_execute_header, v52, v74, "%s: END {store: %{public}s, updateCount = %{public}ld, elapsedSeconds: %{public}f}", v54, 0x2Au);
      swift_arrayDestroy();

      v64(v69, v45);
    }

    else
    {

      v65 = *(v50 + 8);
      v65(v44, v45);
      v65(v46, v45);
    }

    return;
  }

  v66 = v76;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  (*(v68 + 8))(v46, v45);
  if (qword_100936690 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_100006654(v22, qword_10094DFA0);
  v23 = v74;
  swift_errorRetain();
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    *v26 = 136315650;
    v76 = v71;
    swift_getMetatypeMetadata();
    v27 = String.init<A>(describing:)();
    v29 = sub_10000668C(v27, v28, &v77);

    *(v26 + 4) = v29;
    *(v26 + 12) = 2082;
    v30 = sub_1003533B0();
    v32 = sub_10000668C(v30, v31, &v77);

    *(v26 + 14) = v32;
    *(v26 + 22) = 2082;
    swift_getErrorValue();
    v33 = Error.rem_errorDescription.getter();
    v35 = sub_10000668C(v33, v34, &v77);

    *(v26 + 24) = v35;
    _os_log_impl(&_mh_execute_header, v24, v25, "%s: FAILED {store: %{public}s, error: %{public}s}", v26, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
LABEL_21:
  }
}

id RDStoreControllerMigrator_IsPinnedByCurrentUser.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RDStoreControllerMigrator_IsPinnedByCurrentUser();
  return objc_msgSendSuper2(&v2, "init");
}

id RDStoreControllerMigrator_IsPinnedByCurrentUser.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RDStoreControllerMigrator_IsPinnedByCurrentUser();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1005D097C(uint64_t a1)
{
  v1 = a1;
  v35 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v42 = _swiftEmptyArrayStorage;
    sub_100026EF4(0, v2 & ~(v2 >> 63), 0);
    v37 = _swiftEmptyArrayStorage;
    if (v35)
    {
      v3 = __CocoaSet.startIndex.getter();
    }

    else
    {
      v5 = -1 << *(v1 + 32);
      v3 = _HashTable.startBucket.getter();
      v4 = *(v1 + 36);
    }

    v39 = v3;
    v40 = v4;
    v41 = v35 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      v33 = v1 + 56;
      v32 = v1 + 64;
      v34 = v2;
      while (v6 < v2)
      {
        if (__OFADD__(v6++, 1))
        {
          goto LABEL_35;
        }

        v9 = v39;
        v10 = v41;
        v36 = v40;
        v11 = v1;
        sub_100411B34(v39, v40, v41, v1);
        v13 = v12;
        v14 = [v12 description];
        v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v17 = v16;

        v18 = v37;
        v42 = v37;
        v20 = v37[2];
        v19 = v37[3];
        if (v20 >= v19 >> 1)
        {
          sub_100026EF4((v19 > 1), v20 + 1, 1);
          v18 = v42;
        }

        v18[2] = v20 + 1;
        v21 = &v18[2 * v20];
        v21[4] = v15;
        v21[5] = v17;
        v37 = v18;
        if (v35)
        {
          if (!v10)
          {
            goto LABEL_40;
          }

          v1 = v11;
          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v34;
          sub_1000F5104(&qword_10094E130, &unk_1007B3ED0);
          v7 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          v7(v38, 0);
          if (v6 == v34)
          {
LABEL_32:
            sub_100010E34(v39, v40, v41);
            return;
          }
        }

        else
        {
          if (v10)
          {
            goto LABEL_41;
          }

          if ((v9 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v1 = v11;
          v22 = 1 << *(v11 + 32);
          if (v9 >= v22)
          {
            goto LABEL_36;
          }

          v23 = v9 >> 6;
          v24 = *(v33 + 8 * (v9 >> 6));
          if (((v24 >> v9) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(v11 + 36) != v36)
          {
            goto LABEL_38;
          }

          v25 = v24 & (-2 << (v9 & 0x3F));
          if (v25)
          {
            v22 = __clz(__rbit64(v25)) | v9 & 0x7FFFFFFFFFFFFFC0;
            v2 = v34;
          }

          else
          {
            v26 = v23 << 6;
            v27 = v23 + 1;
            v28 = (v32 + 8 * v23);
            v2 = v34;
            while (v27 < (v22 + 63) >> 6)
            {
              v30 = *v28++;
              v29 = v30;
              v26 += 64;
              ++v27;
              if (v30)
              {
                sub_100010E34(v9, v36, 0);
                v22 = __clz(__rbit64(v29)) + v26;
                goto LABEL_31;
              }
            }

            sub_100010E34(v9, v36, 0);
          }

LABEL_31:
          v31 = *(v11 + 36);
          v39 = v22;
          v40 = v31;
          v41 = 0;
          if (v6 == v2)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

uint64_t sub_1005D0CE4()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10094DFE0);
  v1 = sub_100006654(v0, qword_10094DFE0);
  if (qword_100936410 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100974F78);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1005D0E0C()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v21 = *(v2 - 8);
  v3 = *(v21 + 64);
  __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v6 = *(v20 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v20);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100936698 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100006654(v10, qword_10094DFE0);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Reminder daemon started", v13, 2u);
  }

  v14 = *&v1[OBJC_IVAR____TtC7remindd8RDDaemon_xpcClientConnectionListener];
  [*(v14 + OBJC_IVAR____TtC7remindd26RDClientConnectionListener_xpcListener) resume];
  [*(v14 + OBJC_IVAR____TtC7remindd26RDClientConnectionListener_xpcListenerUserInteractive) resume];
  if (qword_100935D38 != -1)
  {
    swift_once();
  }

  v15 = swift_allocObject();
  *(v15 + 16) = v1;
  aBlock[4] = sub_1005D1E38;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019200;
  aBlock[3] = &unk_1008F9668;
  v16 = _Block_copy(aBlock);
  v17 = v1;
  static DispatchQoS.unspecified.getter();
  v22 = _swiftEmptyArrayStorage;
  sub_10000AB38();
  sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  sub_10000CB48(&qword_100936EA0, &unk_100939E50, &unk_100791AD0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);
  (*(v21 + 8))(v5, v2);
  (*(v6 + 8))(v9, v20);
}

void sub_1005D11D0(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC7remindd8RDDaemon_disabledAccountsEventHandler);
  v3 = [objc_opt_self() daemonUserDefaults];
  v4 = [objc_opt_self() babysittableWaiterID];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = [objc_opt_self() sharedBabysitter];
  if (v8)
  {
    v9 = v8;
    v10 = v3;
    sub_1005D1E40(v10, v5, v7, v9, v2);

    if (*(a1 + OBJC_IVAR____TtC7remindd8RDDaemon_suggestedAttributesAutoTrainer))
    {
      sub_1006E4184();
    }

    sub_1005D2230(a1 + OBJC_IVAR____TtC7remindd8RDDaemon_housekeepingActivityScheduler, v15);
    v11 = v16;
    if (v16)
    {
      v12 = v17;
      sub_10000F61C(v15, v16);
      (*(v12 + 8))(v11, v12);
      sub_10000607C(v15);
    }

    else
    {
      sub_1000050A4(v15, &qword_10094E138, &qword_1007B3EE0);
    }

    sub_1005D2230(a1 + OBJC_IVAR____TtC7remindd8RDDaemon_cloudConfigurationUpdater, v15);
    v13 = v16;
    if (v16)
    {
      v14 = v17;
      sub_10000F61C(v15, v16);
      (*(v14 + 8))(v13, v14);
      sub_10000607C(v15);
    }

    else
    {
      sub_1000050A4(v15, &qword_10094E138, &qword_1007B3EE0);
    }

    if (*(a1 + OBJC_IVAR____TtC7remindd8RDDaemon_extraneousAlarmsCollector))
    {
      sub_100296400();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1005D13D0()
{
  v1 = *(v0 + OBJC_IVAR____TtC7remindd8RDDaemon_xpcClientConnectionListener);
  v2 = OBJC_IVAR____TtC7remindd26RDClientConnectionListener_clientConnections;
  swift_beginAccess();
  v3 = *(v1 + v2);

  sub_1005D097C(v4);
  v6 = v5;

  v32 = *(v6 + 16);
  if (!v32)
  {
    v9 = _swiftEmptyDictionarySingleton;
LABEL_17:

    return v9;
  }

  v7 = 0;
  v8 = (v6 + 40);
  v9 = _swiftEmptyDictionarySingleton;
  v31 = v6;
  while (v7 < *(v6 + 16))
  {
    v13 = *(v8 - 1);
    v14 = *v8;

    _StringGuts.grow(_:)(30);

    v33 = v9[2];
    v15._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v15);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = v9;
    v17 = sub_100005F4C(0xD00000000000001CLL, 0x80000001007FDD10);
    v19 = v9[2];
    v20 = (v18 & 1) == 0;
    v21 = __OFADD__(v19, v20);
    v22 = v19 + v20;
    if (v21)
    {
      goto LABEL_19;
    }

    v23 = v18;
    if (v9[3] < v22)
    {
      sub_10036A8F0(v22, isUniquelyReferenced_nonNull_native);
      v17 = sub_100005F4C(0xD00000000000001CLL, 0x80000001007FDD10);
      if ((v23 & 1) != (v24 & 1))
      {
        goto LABEL_21;
      }

LABEL_11:
      if (v23)
      {
        goto LABEL_3;
      }

      goto LABEL_12;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_11;
    }

    v29 = v17;
    sub_100373664();
    v17 = v29;
    if (v23)
    {
LABEL_3:
      v10 = v17;

      v9 = v34;
      v11 = (v34[7] + 16 * v10);
      v12 = v11[1];
      *v11 = v13;
      v11[1] = v14;

      goto LABEL_4;
    }

LABEL_12:
    v9 = v34;
    v34[(v17 >> 6) + 8] |= 1 << v17;
    v25 = (v34[6] + 16 * v17);
    *v25 = 0xD00000000000001CLL;
    v25[1] = 0x80000001007FDD10;
    v26 = (v34[7] + 16 * v17);
    *v26 = v13;
    v26[1] = v14;

    v27 = v34[2];
    v21 = __OFADD__(v27, 1);
    v28 = v27 + 1;
    if (v21)
    {
      goto LABEL_20;
    }

    v34[2] = v28;
LABEL_4:
    ++v7;
    v8 += 2;
    v6 = v31;
    if (v32 == v7)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

id sub_1005D19E8()
{
  v1 = v0;
  if (qword_100936698 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100006654(v2, qword_10094DFE0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Reminder barebones daemon started", v5, 2u);
  }

  v6 = *(v1 + OBJC_IVAR____TtC7remindd17RDBarebonesDaemon_xpcClientConnectionListener);
  [*(v6 + OBJC_IVAR____TtC7remindd26RDClientConnectionListener_xpcListener) resume];
  v7 = *(v6 + OBJC_IVAR____TtC7remindd26RDClientConnectionListener_xpcListenerUserInteractive);

  return [v7 resume];
}

id sub_1005D1B28(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1005D1BDC(uint64_t a1, void *a2, char *a3, uint64_t a4)
{
  *&a3[OBJC_IVAR____TtC7remindd26RDClientConnectionListener_clientConnections] = &_swiftEmptySetSingleton;
  sub_100003C4C();
  if (qword_100935D10 != -1)
  {
    swift_once();
  }

  result = static NSObject.== infix(_:_:)();
  if (result)
  {
    v9 = &a3[OBJC_IVAR____TtC7remindd26RDClientConnectionListener_xpcDaemon];
    *v9 = a1;
    *(v9 + 1) = a4;
    v10 = OBJC_IVAR____TtC7remindd26RDClientConnectionListener_listenerQueue;
    *&a3[OBJC_IVAR____TtC7remindd26RDClientConnectionListener_listenerQueue] = a2;
    v11 = REMDaemonMachServiceName;
    v12 = objc_allocWithZone(NSXPCListener);
    v13 = a2;
    v14 = [v12 initWithMachServiceName:v11];
    *&a3[OBJC_IVAR____TtC7remindd26RDClientConnectionListener_xpcListener] = v14;
    [v14 _setQueue:*&a3[v10]];
    v15 = [objc_allocWithZone(NSXPCListener) initWithMachServiceName:REMDaemonMachServiceName_userInteractive];
    *&a3[OBJC_IVAR____TtC7remindd26RDClientConnectionListener_xpcListenerUserInteractive] = v15;
    [v15 _setQueue:*&a3[v10]];
    v16 = sub_1000F5104(&qword_10094E120, &qword_1007B3EC8);
    v17 = *(v16 + 48);
    v18 = *(v16 + 52);
    swift_allocObject();
    v19 = PassthroughSubject.init()();
    *&a3[OBJC_IVAR____TtC7remindd26RDClientConnectionListener_clientConnectionDidClosePassthroughSubject] = v19;
    v24 = v19;
    sub_10000CB48(&qword_10094E128, &qword_10094E120, &qword_1007B3EC8);
    *&a3[OBJC_IVAR____TtC7remindd26RDClientConnectionListener_clientConnectionDidClosePublisher] = Publisher.eraseToAnyPublisher()();
    v23.receiver = a3;
    v23.super_class = type metadata accessor for RDClientConnectionListener();
    v20 = objc_msgSendSuper2(&v23, "init");
    v21 = *&v20[OBJC_IVAR____TtC7remindd26RDClientConnectionListener_xpcListener];
    v22 = v20;
    [v21 setDelegate:v22];
    [*&v22[OBJC_IVAR____TtC7remindd26RDClientConnectionListener_xpcListenerUserInteractive] setDelegate:v22];

    return v22;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1005D1E40(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5)
{
  v24 = a3;
  v25 = a4;
  v23 = a2;
  v26 = *a5;
  v6 = type metadata accessor for NSNotificationCenter.Publisher();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_opt_self() defaultCenter];
  NSNotificationCenter.publisher(for:object:)();

  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = sub_100440048(v12, v13, 0xD00000000000001ELL, 0x80000001007FDD30, 0);

  (*(v7 + 8))(v10, v6);
  v27[0] = v14;
  sub_1000F5104(&unk_10093D140, qword_1007969F0);
  sub_1000F5104(&qword_10094A740, &unk_1007AE960);
  sub_10000CB48(&unk_10093D150, &unk_10093D140, qword_1007969F0);
  sub_10000CB48(&qword_10094E140, &qword_10094A740, &unk_1007AE960);
  v15 = Publisher.multicast<A>(_:)();

  v27[0] = v15;
  sub_1000F5104(&qword_10094E148, &qword_1007B3EE8);
  sub_10000CB48(&qword_10094E150, &qword_10094E148, &qword_1007B3EE8);
  v27[0] = Publisher.eraseToAnyPublisher()();
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = &off_1008F37F8;
  v17 = v23;
  v18 = v24;
  v16[4] = &off_1008F7C98;
  v16[5] = v17;
  v19 = v25;
  v16[6] = v18;
  v16[7] = v19;
  v20 = a1;

  v21 = v19;
  Publisher.sink<A>(weakTarget:receiveValue:receiveCompletion:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  Publishers.Multicast.connect()();
  sub_10000F61C(v27, v27[3]);
  swift_beginAccess();
  Cancellable.store(in:)();
  swift_endAccess();

  return sub_10000607C(v27);
}

uint64_t sub_1005D2230(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F5104(&qword_10094E138, &qword_1007B3EE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005D22B0(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a8;
  v45 = a1;
  v46 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(a1);
  v47 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  v16 = *(v49 + 64);
  __chkstk_darwin(AssociatedTypeWitness);
  v18 = &v34 - v17;
  v19 = *(*(a4 - 8) + 64);
  __chkstk_darwin(v20);
  v43 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_getAssociatedTypeWitness();
  v37 = *(v22 - 8);
  v38 = v22;
  v23 = *(v37 + 64);
  __chkstk_darwin(v22);
  v25 = &v34 - v24;
  v26 = dispatch thunk of Collection.count.getter();
  if (!v26)
  {
    return static Array._allocateUninitialized(_:)();
  }

  v48 = v26;
  v52 = ContiguousArray.init()();
  v39 = type metadata accessor for ContiguousArray();
  ContiguousArray.reserveCapacity(_:)(v48);
  result = dispatch thunk of Collection.startIndex.getter();
  if ((v48 & 0x8000000000000000) == 0)
  {
    v34 = v11;
    v35 = a5;
    v28 = 0;
    v40 = (v49 + 16);
    v41 = (v49 + 8);
    v42 = v8;
    while (!__OFADD__(v28, 1))
    {
      v49 = v28 + 1;
      v29 = dispatch thunk of Collection.subscript.read();
      v30 = v18;
      v31 = v18;
      v32 = AssociatedTypeWitness;
      (*v40)(v30);
      v29(v51, 0);
      v33 = v50;
      v45(v31, v47);
      if (v33)
      {
        (*v41)(v31, v32);
        (*(v37 + 8))(v25, v38);

        return (*(v34 + 32))(v36, v47, v35);
      }

      v50 = 0;
      (*v41)(v31, v32);
      ContiguousArray.append(_:)();
      result = dispatch thunk of Collection.formIndex(after:)();
      ++v28;
      v18 = v31;
      if (v49 == v48)
      {
        (*(v37 + 8))(v25, v38);
        return v52;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1005D26D0(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 sha512Sum];
  if (v3)
  {
    v4 = v3;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_1005D2738(uint64_t *a1, void **a2)
{
  v2 = *a2;
  if (a1[1])
  {
    v3 = *a1;
    v4 = String._bridgeToObjectiveC()();
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [v2 setSha512Sum:?];
}

uint64_t sub_1005D27A8@<X0>(void (*a1)(_BYTE *, __n128)@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v5 = *(*(a2 - 8) + 64);
  __chkstk_darwin(a1);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for Result();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v15[-v12];
  a1(v7, v11);
  swift_storeEnumTagMultiPayload();
  return (*(v9 + 32))(a3, v13, v8);
}

uint64_t sub_1005D295C()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10094E160);
  v1 = sub_100006654(v0, qword_10094E160);
  if (qword_100936428 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100974FC0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_1005D2A24()
{
  result = [objc_opt_self() housekeepingingActivityScheduler];
  qword_10094E178 = result;
  return result;
}

uint64_t sub_1005D2AC0()
{
  v1 = v0;
  v2 = type metadata accessor for OSSignpostID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_signpost_type_t.begin.getter();
  if (qword_1009366A8 != -1)
  {
    swift_once();
  }

  v7 = qword_10094E178;
  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  v8 = *(v3 + 8);
  v8(v6, v2);
  if (qword_1009366A0 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100006654(v9, qword_10094E160);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v20 = v7;
    v21 = v2;
    v13 = v8;
    v14 = v12;
    v15 = swift_slowAlloc();
    v25 = v15;
    *v14 = 136446210;
    *(v14 + 4) = sub_10000668C(v1[18], v1[19], &v25);
    _os_log_impl(&_mh_execute_header, v10, v11, "[%{public}s] start execute()", v14, 0xCu);
    sub_10000607C(v15);

    v8 = v13;
    v2 = v21;
  }

  v16 = v1[17];
  sub_1005D2DEC();
  v22[0] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22[1] = v17;
  memset(&v22[2], 0, 24);
  v24 = 0x4000;
  v23 = 0;
  v18 = v1[4];
  sub_100014A64(v22, sub_1005DFE8C, v1);

  sub_1005D2F54(v1);
  static os_signpost_type_t.end.getter();
  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  return (v8)(v6, v2);
}

uint64_t sub_1005D2DEC()
{
  v1 = *v0;
  v2 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v14[-v4];
  v6 = v0[5];
  v0[5] = _swiftEmptyArrayStorage;

  v7 = *(v1 + 80);
  v8 = *(v1 + 88);
  type metadata accessor for RDDeduplicationActivity.Executable.DeduplicationError();
  v9 = static Array._allocateUninitialized(_:)();
  swift_beginAccess();
  v10 = v0[6];
  v0[6] = v9;

  static Date.now.getter();
  v11 = type metadata accessor for Date();
  (*(*(v11 - 8) + 56))(v5, 0, 1, v11);
  v12 = qword_10094E388;
  swift_beginAccess();
  sub_1001BBB60(v5, v0 + v12);
  return swift_endAccess();
}

void sub_1005D2F54(void *a1)
{
  v2 = a1[17];
  sub_1005D99D8(a1 + 12);
  if (qword_1009366A0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100006654(v3, qword_10094E160);

  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v8 = v6;
    *v5 = 136446210;
    *(v5 + 4) = sub_10000668C(a1[18], a1[19], &v8);
    _os_log_impl(&_mh_execute_header, oslog, v4, "[%{public}s] finish execute()", v5, 0xCu);
    sub_10000607C(v6);
  }
}

void sub_1005D30A8(void *a1, void *a2)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = v6[8];
  __chkstk_darwin(v5);
  v9 = (&v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10);
  v12 = &v60 - v11;
  v13 = sub_1005D3F14();
  v15 = v2;
  if (!v2)
  {
    v16 = v13;
    v75 = a2;
    if (v13 >> 62)
    {
      goto LABEL_45;
    }

    v74 = v13 & 0xFFFFFFFFFFFFFF8;
    v17 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
    v18 = v75;
    v19 = v17 != 0;
    if (v17)
    {
      v63 = 1;
      v68 = v9;
      v72 = v5;
      v20 = 0;
      LODWORD(v66) = 0;
      v73 = v16 & 0xC000000000000001;
      v70 = v6 + 1;
      v9 = &selRef_setRecordZoneChangeTokensUpdatedBlock_;
      *&v14 = 136446722;
      v64 = v14;
      *&v14 = 136446466;
      v65 = v14;
      v71 = v17;
      v69 = v12;
      v67 = v16;
LABEL_6:
      v5 = v15;
      while (1)
      {
        if (v73)
        {
          v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v22 = (v20 + 1);
          if (__OFADD__(v20, 1))
          {
            goto LABEL_43;
          }
        }

        else
        {
          if (v20 >= *(v74 + 16))
          {
            goto LABEL_44;
          }

          v21 = *(v16 + 8 * v20 + 32);
          v22 = (v20 + 1);
          if (__OFADD__(v20, 1))
          {
LABEL_43:
            __break(1u);
LABEL_44:
            __break(1u);
LABEL_45:
            v74 = v16 & 0xFFFFFFFFFFFFFF8;
            v17 = _CocoaArrayWrapper.endIndex.getter();
            goto LABEL_4;
          }
        }

        if (*(*(*(v18 + 136) + 40) + 16) >= *(*(v18 + 136) + 16))
        {
          v12 = v21;

          if (qword_1009366A0 == -1)
          {
            goto LABEL_25;
          }

          goto LABEL_47;
        }

        v76 = v20;
        v77 = v22;
        v15 = v21;
        v23 = [v21 v9[318]];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        sub_1005D41B4();
        v6 = v5;
        if (v5)
        {
          v66 = v5;
          (*v70)(v12, v72);
          if (qword_1009366A0 != -1)
          {
            swift_once();
          }

          v76 = 0;
          v30 = type metadata accessor for Logger();
          sub_100006654(v30, qword_10094E160);
          v31 = v18;

          v6 = v15;
          swift_errorRetain();
          v32 = Logger.logObject.getter();
          v33 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v32, v33))
          {
            v34 = swift_slowAlloc();
            v35 = swift_slowAlloc();
            v61 = v35;
            v62 = swift_slowAlloc();
            v79 = v62;
            *v34 = v64;
            *(v34 + 4) = sub_10000668C(*(v31 + 144), *(v31 + 152), &v79);
            *(v34 + 12) = 2114;
            *(v34 + 14) = v6;
            *v35 = v6;
            *(v34 + 22) = 2080;
            swift_getErrorValue();
            v60 = v78;
            v6 = v6;
            v36 = Error.rem_errorDescription.getter();
            v38 = sub_10000668C(v36, v37, &v79);

            *(v34 + 24) = v38;
            v39 = v33;
            v18 = v75;
            _os_log_impl(&_mh_execute_header, v32, v39, "[%{public}s] Could not create destination directory for hashed attachments {accountID: %{public}@; error: %s}", v34, 0x20u);
            sub_1000050A4(v61, &unk_100938E70, &unk_100797230);

            swift_arrayDestroy();

            v12 = v69;
            v9 = &selRef_setRecordZoneChangeTokensUpdatedBlock_;

            v20 = v77;
          }

          else
          {

            v20 = v77;
            v18 = v31;
          }

          LODWORD(v66) = 1;
          v15 = v76;
          if (v20 == v71)
          {
            v19 = v63;
            break;
          }

          goto LABEL_6;
        }

        v24 = *v70;
        v25 = v72;
        (*v70)(v12, v72);
        v26 = [v15 v9[318]];
        v27 = v68;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v28 = *(*v18 + 80);
        v29 = (*(*(*v18 + 88) + 64))(*(v18 + 32), a1, v27, *(v18 + 88));
        v24(v27, v25);
        sub_1005D4428(v29, v15, a1);
        v5 = 0;

        v20 = (v76 + 1);
        v16 = v67;
        v18 = v75;
        v12 = v69;
        v9 = &selRef_setRecordZoneChangeTokensUpdatedBlock_;
        if (v77 == v71)
        {
          v19 = v66;
          break;
        }
      }
    }

    v45 = v19;
    if (!v19)
    {
      goto LABEL_31;
    }

    do
    {
      do
      {
        if (qword_1009366A0 != -1)
        {
          swift_once();
        }

        v51 = type metadata accessor for Logger();
        sub_100006654(v51, qword_10094E160);

        v52 = Logger.logObject.getter();
        a1 = static os_log_type_t.default.getter();
        if (!os_log_type_enabled(v52, a1))
        {

          return;
        }

        v53 = v18;
        v18 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v79 = v54;
        *v18 = 136446722;
        *(v18 + 4) = sub_10000668C(v53[18], v53[19], &v79);
        *(v18 + 12) = 1026;
        *(v18 + 14) = v45;
        *(v18 + 18) = 2050;
        v55 = v53[17];
        v56 = *(v55 + 16);
        v57 = *(*(v55 + 40) + 16);
        v58 = __OFSUB__(v56, v57);
        v59 = v56 - v57;
        if (!v58)
        {
          *(v18 + 20) = v59 & ~(v59 >> 63);

          _os_log_impl(&_mh_execute_header, v52, a1, "[%{public}s] finished without deeming complete {errorEncountered: %{BOOL,public}d, quota remaining: %{public}ld}", v18, 0x1Cu);
          sub_10000607C(v54);

          return;
        }

        __break(1u);
LABEL_47:
        swift_once();
LABEL_25:
        v40 = type metadata accessor for Logger();
        sub_100006654(v40, qword_10094E160);

        v41 = Logger.logObject.getter();
        v42 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          v44 = swift_slowAlloc();
          v79 = v44;
          *v43 = v65;
          *(v43 + 4) = sub_10000668C(v75[18], v75[19], &v79);
          *(v43 + 12) = 2050;
          *(v43 + 14) = v75[11];

          _os_log_impl(&_mh_execute_header, v41, v42, "[%{public}s] no delete limit left {perRunDeleteLimit: %{public}ld}", v43, 0x16u);
          sub_10000607C(v44);

          v18 = v75;
        }

        else
        {
        }

        v45 = v66;
      }

      while ((v66 & 1) != 0);
LABEL_31:
      ;
    }

    while (*(*(*(v18 + 136) + 40) + 16) >= *(*(v18 + 136) + 16));
    if (qword_1009366A0 != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for Logger();
    sub_100006654(v46, qword_10094E160);

    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v79 = v50;
      *v49 = 136446210;
      *(v49 + 4) = sub_10000668C(v75[18], v75[19], &v79);
      _os_log_impl(&_mh_execute_header, v47, v48, "[%{public}s] finished with some delete quota remaining: container deemed clean", v49, 0xCu);
      sub_10000607C(v50);
    }

    sub_1005D45C0(a1);
  }
}

void *sub_1005D3F14()
{
  v2 = sub_1005D7F4C();
  if (!v1)
  {
    v3 = v2;
    if (v2 >> 62)
    {
      goto LABEL_35;
    }

    for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v5 = 0;
      while (1)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_34;
          }

          v6 = *(v3 + 8 * v5 + 32);
        }

        v7 = v6;
        v8 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v9 = [objc_allocWithZone(REMAccountCapabilities) initWithAccountType:{objc_msgSend(v6, "type")}];
        v10 = [v9 supportsAttachments];

        if (v10)
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v11 = _swiftEmptyArrayStorage[2];
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        ++v5;
        if (v8 == i)
        {
          goto LABEL_15;
        }
      }

LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      ;
    }

LABEL_15:

    if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
    {
      v3 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v3 = _swiftEmptyArrayStorage[2];
    }

    v12 = 0;
    v0 = _swiftEmptyArrayStorage;
    while (v3 != v12)
    {
      if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
      {
        v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v12 >= _swiftEmptyArrayStorage[2])
        {
          goto LABEL_32;
        }

        v13 = _swiftEmptyArrayStorage[v12 + 4];
      }

      v14 = v13;
      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      v16 = [v13 remObjectID];

      ++v12;
      if (v16)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v17 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v0 = _swiftEmptyArrayStorage;
        v12 = v15;
      }
    }
  }

  return v0;
}

uint64_t sub_1005D41B4()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  *&v4 = __chkstk_darwin(v1).n128_u64[0];
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*(v0 + 32) attachmentFileManager];
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v9 = [v7 URLForHashedAttachmentDirectory:isa];

  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = objc_opt_self();
  v11 = [v10 defaultManager];
  URL.path(percentEncoded:)(0);
  v12 = String._bridgeToObjectiveC()();

  LOBYTE(isa) = [v11 fileExistsAtPath:v12];

  if ((isa & 1) == 0)
  {
    v13 = [v10 defaultManager];
    URL._bridgeToObjectiveC()(v14);
    v16 = v15;
    v22 = 0;
    v17 = [v13 createDirectoryAtURL:v15 withIntermediateDirectories:1 attributes:0 error:&v22];

    if (v17)
    {
      v18 = *(v2 + 8);
      v19 = v22;
      return v18(v6, v1);
    }

    v21 = v22;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return (*(v2 + 8))(v6, v1);
}

uint64_t sub_1005D4428(uint64_t a1, void *a2, void *a3)
{
  v5 = v3;
  v20[0] = a1;
  v6 = *(v3 + 88);
  sub_1000F5104(&qword_10094EC30, &qword_1007B4888);
  sub_10000CB48(&qword_10094EC38, &qword_10094EC30, &qword_1007B4888);
  result = BidirectionalCollection<>.lazySlices(by:)();
  v8 = result;
  v19 = v9;
  v16 = *(result + 16);
  if (v16)
  {
    v10 = 0;
    while (v10 < *(v8 + 16))
    {
      v21 = *(v8 + 8 * v10 + 32);
      v19(v20, &v21);
      v11 = v20[0];
      if (*(*(*(v5 + 136) + 40) + 16) >= *(*(v5 + 136) + 16))
      {
        goto LABEL_9;
      }

      v12 = v20[1];
      v13 = v20[2];
      v14 = v20[3];
      v15 = objc_autoreleasePoolPush();
      sub_1005D63B0(v11, v12, v13, v14, a2, a3);
      if (v4)
      {
        objc_autoreleasePoolPop(v15);
LABEL_9:
        swift_unknownObjectRelease();
        goto LABEL_10;
      }

      ++v10;
      objc_autoreleasePoolPop(v15);
      result = swift_unknownObjectRelease();
      if (v16 == v10)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:
  }

  return result;
}

uint64_t *sub_1005D45C0(void *a1)
{
  v3 = v1;
  v5 = *(*v1 + 80);
  v6 = *(*v1 + 88);
  v108 = type metadata accessor for RDDeduplicationActivity.CrashCleanError();
  v111 = *(v108 - 8);
  v7 = *(v111 + 64);
  __chkstk_darwin(v108);
  v110 = &v103 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v124 = &v103 - v9;
  v131 = type metadata accessor for UUID();
  isa = v131[-1].isa;
  v10 = *(isa + 8);
  __chkstk_darwin(v131);
  v123 = &v103 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v120 = &v103 - v13;
  __chkstk_darwin(v14);
  v130 = &v103 - v15;
  __chkstk_darwin(v16);
  v129 = &v103 - v17;
  v18 = sub_1000F5104(&qword_10094EC58, &qword_1007B48A0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v122 = &v103 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v121 = (&v103 - v22);
  swift_beginAccess();
  v23 = v1[8];
  v24 = v1[9];
  sub_10000F61C(v1 + 5, v23);
  v25 = (*(v24 + 32))(v23, v24);
  if (v25)
  {
    v26 = v25;
    v107 = v7;
    swift_endAccess();
    type metadata accessor for RDDeduplicationActivity.Executable.CrashCleaner();
    v27 = v1[4];
    v28 = swift_allocObject();
    *(v28 + 16) = v27;
    *(v28 + 24) = a1;
    v29 = v27;
    v30 = a1;
    v31 = sub_1005D5250(v26);
    if (v2)
    {
    }

    v33 = v31;
    v34 = v32;
    v106 = 0;
    v104 = v26;
    v105 = v28;
    v35 = *(v31 + 16);
    v36 = Set.init(minimumCapacity:)();
    v37 = 0;
    v133 = v36;
    v116 = (isa + 16);
    v117 = (isa + 32);
    v38 = *(v33 + 16);
    v114 = (isa + 8);
    *&v39 = 136446722;
    v109 = v39;
    v119 = v3;
    v125 = v34;
    v40 = v131;
    v42 = v122;
    v41 = v123;
    v43 = v33;
    v115 = v38;
    v118 = v33;
    while (1)
    {
      if (v37 == v38)
      {
        v45 = sub_1000F5104(&qword_10094EC60, &qword_1007B48A8);
        (*(*(v45 - 8) + 56))(v42, 1, 1, v45);
        isa = v38;
        v46 = v130;
      }

      else
      {
        result = &qword_10094EC60;
        if ((v37 & 0x8000000000000000) != 0)
        {
          goto LABEL_44;
        }

        v46 = v130;
        if (v37 >= *(v43 + 16))
        {
          goto LABEL_45;
        }

        v48 = v37;
        v49 = sub_1000F5104(&qword_10094EC60, &qword_1007B48A8);
        v50 = *(v49 - 8);
        sub_100010364(v43 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v48, v42, &qword_10094EC60, &qword_1007B48A8);
        isa = (v48 + 1);
        v41 = v123;
        (*(v50 + 56))(v42, 0, 1, v49);
      }

      v51 = v42;
      v52 = v121;
      sub_100031B58(v51, v121, &qword_10094EC58, &qword_1007B48A0);
      v53 = sub_1000F5104(&qword_10094EC60, &qword_1007B48A8);
      if ((*(*(v53 - 8) + 48))(v52, 1, v53) == 1)
      {
        break;
      }

      v54 = *v52;
      v126 = v52[1];
      v127 = v54;
      v55 = *(v53 + 48);
      v56 = *(v53 + 64);
      v57 = *v117;
      v58 = v129;
      (*v117)(v129, v52 + v55, v40);
      v57(v46, v52 + v56, v40);
      if (qword_1009366A0 != -1)
      {
        swift_once();
      }

      v59 = type metadata accessor for Logger();
      sub_100006654(v59, qword_10094E160);
      v60 = *v116;
      v61 = v120;
      (*v116)(v120, v58, v40);
      v60(v41, v46, v40);
      v62 = v119;

      v63 = v61;
      v64 = v41;
      v65 = Logger.logObject.getter();
      v66 = static os_log_type_t.info.getter();

      v67 = os_log_type_enabled(v65, v66);
      v68 = v114;
      if (v67)
      {
        v69 = swift_slowAlloc();
        v113 = swift_slowAlloc();
        v132 = v113;
        *v69 = v109;
        *(v69 + 4) = sub_10000668C(v62[18], v62[19], &v132);
        *(v69 + 12) = 2082;
        sub_1005E0108(&qword_10093F2A0, &type metadata accessor for UUID);
        v112 = v66;
        v70 = dispatch thunk of CustomStringConvertible.description.getter();
        v72 = v71;
        v44 = *v68;
        (*v68)(v63, v131);
        v73 = sub_10000668C(v70, v72, &v132);

        *(v69 + 14) = v73;
        *(v69 + 22) = 2082;
        v74 = v123;
        v75 = dispatch thunk of CustomStringConvertible.description.getter();
        v77 = v76;
        v44(v74, v131);
        v78 = sub_10000668C(v75, v77, &v132);
        v34 = v125;

        *(v69 + 24) = v78;
        _os_log_impl(&_mh_execute_header, v65, v112, "[%{public}s] Cleaned after crash {accountID: %{public}s, attachmentID: %{public}s", v69, 0x20u);
        swift_arrayDestroy();

        v40 = v131;

        v41 = v74;
        v42 = v122;
        v43 = v118;
      }

      else
      {

        v44 = *v68;
        (*v68)(v64, v40);
        v44(v63, v40);
        v41 = v64;
        v42 = v122;
        v43 = v118;
        v34 = v125;
      }

      sub_100378434(&v132, v127, v126);

      v44(v130, v40);
      v44(v129, v40);
      v38 = v115;
      v37 = isa;
    }

    v79 = v108;
    if (Array.endIndex.getter())
    {
      v80 = 0;
      v81 = v119[19];
      v131 = v119[18];
      v82 = (v111 + 16);
      v83 = (v111 + 32);
      v84 = (v111 + 8);
      while (1)
      {
        IsNativeType = Array._hoistableIsNativeTypeChecked()();
        Array._checkSubscript(_:wasNativeTypeChecked:)();
        if (IsNativeType)
        {
          result = (*(v111 + 16))(v124, v34 + ((*(v111 + 80) + 32) & ~*(v111 + 80)) + *(v111 + 72) * v80, v79);
        }

        else
        {
          result = _ArrayBuffer._getElementSlowPath(_:)();
          if (v107 != 8)
          {
            goto LABEL_46;
          }

          v132 = result;
          (*v82)(v124, &v132, v79);
          result = swift_unknownObjectRelease();
        }

        v86 = v80 + 1;
        v87 = v110;
        if (__OFADD__(v80, 1))
        {
          break;
        }

        (*v83)(v110, v124, v79);
        sub_1005D5554(v131, v81, v79);
        if (sub_1005D6030(v79))
        {
          v88 = sub_1005D6228(v79);
          sub_100378434(&v132, v88, v89);
        }

        (*v84)(v87, v79);
        v34 = v125;
        ++v80;
        if (v86 == Array.endIndex.getter())
        {
          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
      return result;
    }

LABEL_28:

    v90 = sub_1001A5660(v104);

    if (*(v133 + 16) <= v90[2] >> 3)
    {
      v132 = v90;
      sub_10019BAF4(v133);

      v91 = v132;
    }

    else
    {
      v91 = sub_10019C4D4(v133, v90);
    }

    v3 = v119;
    v92 = v91[2];
    if (v92)
    {
      v93 = sub_1003689CC(v91[2], 0);
      v94 = sub_1002791DC(&v132, v93 + 4, v92, v91);
      sub_10001B860();
      if (v94 == v92)
      {
LABEL_35:
        swift_beginAccess();
        v95 = v3[8];
        v96 = v3[9];
        sub_10000C9DC((v3 + 5), v95);
        (*(v96 + 40))(v93, v95, v96);
        swift_endAccess();

        goto LABEL_36;
      }

      __break(1u);
    }

    v93 = _swiftEmptyArrayStorage;
    goto LABEL_35;
  }

  swift_endAccess();
LABEL_36:
  swift_beginAccess();
  v97 = v3[8];
  v98 = v3[9];
  sub_10000F61C(v3 + 5, v97);
  v99 = (*(v98 + 32))(v97, v98);
  swift_endAccess();
  if (v99)
  {
    v100 = v99;
  }

  else
  {
    v100 = _swiftEmptyArrayStorage;
  }

  v101 = v100[2];

  if (!v101)
  {
    v102 = v3[10];

    sub_10048C21C();
  }

  return result;
}

uint64_t sub_1005D5210(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t sub_1005D5250(uint64_t a1)
{
  v3 = *v1;
  v20 = a1;
  v4 = sub_1000F5104(&unk_10093B300, &unk_100797780);
  v5 = sub_1000F514C(&qword_10094EC60, &qword_1007B48A8);
  v6 = *(v3 + 80);
  v7 = *(v3 + 88);
  type metadata accessor for RDDeduplicationActivity.CrashCleanError();
  swift_getWitnessTable();
  v19[1] = v5;
  v8 = type metadata accessor for Result();
  v9 = sub_10000CB48(&qword_10093EE30, &unk_10093B300, &unk_100797780);
  v11 = sub_1005D22B0(sub_1005DFF78, v1, v4, v8, &type metadata for Never, v9, &protocol witness table for Never, v10);
  v12 = sub_1005DABC8(v11);

  if (!v2)
  {
    v13 = type metadata accessor for Array();
    WitnessTable = swift_getWitnessTable();
    v16 = sub_1005D22B0(sub_1005DFFA8, v1, v13, v8, &type metadata for Never, WitnessTable, &protocol witness table for Never, v15);

    v19[0] = v19;
    v20 = v16;
    __chkstk_darwin(v17);
    swift_getWitnessTable();
    v12 = Sequence.compactMap<A>(_:)();
    v20 = v16;
    __chkstk_darwin(v12);
    Sequence.compactMap<A>(_:)();
  }

  return v12;
}

void sub_1005D5554(NSObject *a1, char *a2, uint64_t a3)
{
  v4 = v3;
  v105 = a2;
  v103 = a1;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = v7[8];
  __chkstk_darwin(v6);
  v102 = &v97 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v101 = &v97 - v11;
  __chkstk_darwin(v12);
  v104 = &v97 - v13;
  __chkstk_darwin(v14);
  v16 = &v97 - v15;
  __chkstk_darwin(v17);
  v19 = &v97 - v18;
  __chkstk_darwin(v20);
  v22 = &v97 - v21;
  __chkstk_darwin(v23);
  v25 = &v97 - v24;
  __chkstk_darwin(v26);
  v28 = &v97 - v27;
  v29 = *(*(a3 - 8) + 64);
  v31 = __chkstk_darwin(v30);
  v33 = (&v97 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v34 + 16))(v33, v4, a3, v31);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v36 = v33[1];

      v37 = sub_1000F5104(&qword_10094EC60, &qword_1007B48A8);
      v38 = *(v37 + 64);
      v39 = v7[4];
      v39(v28, v33 + *(v37 + 48), v6);
      v39(v25, v33 + v38, v6);
      if (qword_1009366A0 != -1)
      {
        swift_once();
      }

      v40 = type metadata accessor for Logger();
      sub_100006654(v40, qword_10094E160);
      v41 = v7[2];
      v41(v22, v28, v6);
      v41(v19, v25, v6);
      v42 = v105;

      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        LODWORD(v102) = v44;
        v46 = v45;
        v104 = swift_slowAlloc();
        v106 = v104;
        *v46 = 136446722;
        *(v46 + 4) = sub_10000668C(v103, v42, &v106);
        *(v46 + 12) = 2082;
        sub_1005E0108(&qword_10093F2A0, &type metadata accessor for UUID);
        v103 = v43;
        v47 = dispatch thunk of CustomStringConvertible.description.getter();
        v49 = v48;
        v105 = v25;
        v50 = v7[1];
        v50(v22, v6);
        v51 = sub_10000668C(v47, v49, &v106);

        *(v46 + 14) = v51;
        *(v46 + 22) = 2082;
        v52 = dispatch thunk of CustomStringConvertible.description.getter();
        v54 = v53;
        v50(v19, v6);
        v55 = sub_10000668C(v52, v54, &v106);

        *(v46 + 24) = v55;
        v56 = v103;
        _os_log_impl(&_mh_execute_header, v103, v102, "[%{public}s] Attachment was not migrated {accountID: %{public}s, attachmentID: %{public}s}", v46, 0x20u);
        swift_arrayDestroy();

        v50(v105, v6);
        v50(v28, v6);
      }

      else
      {

        v95 = v7[1];
        v95(v19, v6);
        v95(v22, v6);
        v95(v25, v6);
        v95(v28, v6);
      }
    }

    else
    {
      v65 = v33[1];

      v66 = sub_1000F5104(&qword_10094EC68, &unk_1007B48B0);
      v67 = v66[16];
      v68 = *(v33 + v66[20]);
      v69 = v7;
      v70 = v7[4];
      v71 = v16;
      v70(v16, v33 + v66[12], v6);
      v72 = v33 + v67;
      v73 = v104;
      v70(v104, v72, v6);
      if (qword_1009366A0 != -1)
      {
        swift_once();
      }

      v74 = type metadata accessor for Logger();
      sub_100006654(v74, qword_10094E160);
      v75 = v7[2];
      v76 = v101;
      v75(v101, v16, v6);
      v77 = v102;
      v75(v102, v73, v6);
      v78 = v105;

      swift_errorRetain();
      v79 = Logger.logObject.getter();
      v80 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v79, v80))
      {
        v81 = swift_slowAlloc();
        v97 = v68;
        v99 = v80;
        v82 = v81;
        v98 = swift_slowAlloc();
        v100 = swift_slowAlloc();
        v106 = v100;
        *v82 = 136446978;
        *(v82 + 4) = sub_10000668C(v103, v78, &v106);
        *(v82 + 12) = 2082;
        sub_1005E0108(&qword_10093F2A0, &type metadata accessor for UUID);
        v105 = v71;
        v83 = v79;
        v84 = dispatch thunk of CustomStringConvertible.description.getter();
        v86 = v85;
        v87 = v69[1];
        v87(v76, v6);
        v88 = sub_10000668C(v84, v86, &v106);

        *(v82 + 14) = v88;
        *(v82 + 22) = 2082;
        v89 = dispatch thunk of CustomStringConvertible.description.getter();
        v91 = v90;
        v87(v77, v6);
        v92 = sub_10000668C(v89, v91, &v106);

        *(v82 + 24) = v92;
        *(v82 + 32) = 2112;
        swift_errorRetain();
        v93 = _swift_stdlib_bridgeErrorToNSError();
        *(v82 + 34) = v93;
        v94 = v98;
        *v98 = v93;
        _os_log_impl(&_mh_execute_header, v83, v99, "[%{public}s] Purging attachment failed {accountID: %{public}s, attachmentID: %{public}s, error: %@}", v82, 0x2Au);
        sub_1000050A4(v94, &unk_100938E70, &unk_100797230);

        swift_arrayDestroy();

        v87(v104, v6);
        v87(v105, v6);
      }

      else
      {

        v96 = v69[1];
        v96(v77, v6);
        v96(v76, v6);
        v96(v73, v6);
        v96(v71, v6);
      }
    }
  }

  else
  {
    v58 = *v33;
    v57 = v33[1];
    if (qword_1009366A0 != -1)
    {
      swift_once();
    }

    v59 = type metadata accessor for Logger();
    sub_100006654(v59, qword_10094E160);
    v60 = v105;

    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      *v63 = 136446466;
      *(v63 + 4) = sub_10000668C(v103, v60, &v106);
      *(v63 + 12) = 2082;
      v64 = sub_10000668C(v58, v57, &v106);

      *(v63 + 14) = v64;
      _os_log_impl(&_mh_execute_header, v61, v62, "[%{public}s] Invalid cache key {cacheKey: %{public}s", v63, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }
}

uint64_t sub_1005D6030(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(a1);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v6, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v8 = *(v6 + 1);

      v9 = sub_1000F5104(&qword_10094EC60, &qword_1007B48A8);
      v10 = *(v9 + 48);
      v11 = *(v9 + 64);
      v12 = type metadata accessor for UUID();
      v13 = *(*(v12 - 8) + 8);
      v13(&v6[v11], v12);
      v13(&v6[v10], v12);
      return 1;
    }

    else
    {
      v15 = *(v6 + 1);

      v16 = sub_1000F5104(&qword_10094EC68, &unk_1007B48B0);
      v17 = v16[12];
      v18 = v16[16];
      v19 = *&v6[v16[20]];

      v20 = type metadata accessor for UUID();
      v21 = *(*(v20 - 8) + 8);
      v21(&v6[v18], v20);
      v21(&v6[v17], v20);
      return 0;
    }
  }

  else
  {
    (*(v2 + 8))(v6, a1);
    return 1;
  }
}

uint64_t sub_1005D6228(uint64_t a1)
{
  v1 = *(*(a1 - 8) + 64);
  v2 = __chkstk_darwin(a1);
  v4 = (&v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v5 + 16))(v4, v2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v7 = *v4;
  v8 = v4[1];
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v9 = sub_1000F5104(&qword_10094EC60, &qword_1007B48A8);
      v10 = *(v9 + 48);
      v11 = *(v9 + 64);
    }

    else
    {
      v12 = sub_1000F5104(&qword_10094EC68, &unk_1007B48B0);
      v10 = v12[12];
      v11 = v12[16];
      v13 = *(v4 + v12[20]);
    }

    v14 = v4 + v10;
    v15 = v4 + v11;
    v16 = type metadata accessor for UUID();
    v17 = *(*(v16 - 8) + 8);
    v17(v15, v16);
    v17(v14, v16);
  }

  return v7;
}

uint64_t sub_1005D63B0(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v99 = a6;
  v13 = *(*v6 + 80);
  v14 = *(*v6 + 88);
  v96 = type metadata accessor for RDDeduplicationActivity.Executable.DeduplicationError();
  v98 = *(v96 - 8);
  v15 = *(v98 + 64);
  __chkstk_darwin(v96);
  v95 = (&v89 - v16);
  v108[0] = a1;
  v108[1] = a2;
  v17 = v6;
  v108[2] = a3;
  v108[3] = a4;
  v106 = v6;
  v107 = a5;
  sub_1000F5104(&qword_10094EC40, &unk_1007B4890);
  v18 = type metadata accessor for RDDeduplicationActivity.Executable.PreprocessedAttachment();
  sub_10000CB48(&unk_10094EC48, &qword_10094EC40, &unk_1007B4890);
  v108[0] = Sequence.compactMap<A>(_:)();
  v104 = v6;
  v105 = a5;
  v97 = a5;
  v19 = type metadata accessor for Array();
  swift_getWitnessTable();
  v20 = Sequence.compactMap<A>(_:)();

  v108[0] = v20;
  v102 = v13;
  v103 = v14;
  WitnessTable = swift_getWitnessTable();
  v23 = sub_1005D22B0(sub_1005DFF24, v101, v19, &type metadata for String, &type metadata for Never, WitnessTable, &protocol witness table for Never, v22);
  v24 = v7;
  swift_beginAccess();
  v25 = v6[8];
  v26 = v6[9];
  sub_10000F61C(v17 + 5, v17[8]);
  v27 = (*(v26 + 32))(v25, v26);
  swift_endAccess();
  if (!v27)
  {
    v27 = _swiftEmptyArrayStorage;
  }

  v108[0] = v27;

  sub_100271EA8(v23);
  v28 = v108[0];
  swift_beginAccess();
  v29 = v17[8];
  v30 = v17[9];
  sub_10000C9DC((v17 + 5), v29);
  (*(v30 + 40))(v28, v29, v30);
  swift_endAccess();
  v108[0] = 0;
  if (![v99 save:v108])
  {
    v79 = v108[0];

    _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_beginAccess();
    v80 = v17[8];
    v81 = v17[9];
    sub_10000C9DC((v17 + 5), v80);
    (*(v81 + 40))(v27, v80, v81);
    swift_endAccess();
    return swift_willThrow();
  }

  v31 = v108[0];

  swift_beginAccess();
  v32 = v17[8];
  v33 = v17[9];
  sub_10000F61C(v17 + 5, v32);
  v34 = (*(v33 + 32))(v32, v33);
  swift_endAccess();
  if (!v34)
  {
    v34 = _swiftEmptyArrayStorage;
  }

  v35 = sub_1001A5660(v34);

  v100 = v35;
  v94 = v20;
  if (Array.endIndex.getter())
  {
    v37 = v18;
    v92 = (v98 + 8);
    v38 = 4;
    *&v36 = 136447234;
    v89 = v36;
    v39 = v94;
    v93 = v37;
    do
    {
      v56 = v38 - 4;
      IsNativeType = Array._hoistableIsNativeTypeChecked()();
      Array._checkSubscript(_:wasNativeTypeChecked:)();
      if (IsNativeType)
      {
        v58 = v39[v38];

        v59 = (v38 - 3);
        if (__OFADD__(v56, 1))
        {
          goto LABEL_27;
        }
      }

      else
      {
        v58 = _ArrayBuffer._getElementSlowPath(_:)();
        v59 = (v38 - 3);
        if (__OFADD__(v56, 1))
        {
LABEL_27:
          __break(1u);
        }
      }

      v99 = v59;
      sub_1005D7C40();
      if (v24)
      {
        v98 = v17[17];
        v40 = sub_1000F5104(qword_10094EB80, &unk_1007B46B0);
        v41 = v40[12];
        v42 = v40[16];
        v43 = v38;
        v44 = v40[20];
        v45 = v95;
        *v95 = v24;
        v46 = v17;
        v47 = qword_10094E2F0;
        v48 = type metadata accessor for URL();
        v49 = v58 + v47;
        v17 = v46;
        (*(*(v48 - 8) + 16))(v45 + v41, v49, v48);
        v50 = qword_10094E2D8;
        v51 = type metadata accessor for UUID();
        (*(*(v51 - 8) + 16))(v45 + v42, v58 + v50, v51);
        v52 = v97;
        *(v45 + v44) = v97;
        v38 = v43;
        v53 = v96;
        swift_storeEnumTagMultiPayload();
        swift_errorRetain();
        v54 = v52;
        sub_1005D79CC(v45);

        v55 = v45;
        v39 = v94;
        (*v92)(v55, v53);
        v24 = 0;
      }

      else
      {
        v60 = sub_1005D7B08();
        sub_10019EC58(v60, v61);

        if (qword_1009366A0 != -1)
        {
          swift_once();
        }

        v62 = type metadata accessor for Logger();
        sub_100006654(v62, qword_10094E160);

        v63 = Logger.logObject.getter();
        v64 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v63, v64))
        {
          v65 = swift_slowAlloc();
          v90 = v64;
          v66 = v65;
          v91 = swift_slowAlloc();
          v108[0] = v91;
          *v66 = v89;
          *(v66 + 4) = sub_10000668C(v17[18], v17[19], v108);
          *(v66 + 12) = 2080;
          v67 = URL.path(percentEncoded:)(1);
          v68 = sub_10000668C(v67._countAndFlagsBits, v67._object, v108);
          v98 = v38;
          v69 = v68;

          *(v66 + 14) = v69;
          *(v66 + 22) = 2080;
          v70 = URL.path(percentEncoded:)(1);
          v71 = sub_10000668C(v70._countAndFlagsBits, v70._object, v108);

          *(v66 + 24) = v71;
          *(v66 + 32) = 2082;
          v73 = *(v58 + qword_10094E2E0);
          v72 = *(v58 + qword_10094E2E0 + 8);

          v74 = sub_10000668C(v73, v72, v108);

          *(v66 + 34) = v74;
          *(v66 + 42) = 2082;
          v75 = UUID.uuidString.getter();
          v77 = sub_10000668C(v75, v76, v108);

          *(v66 + 44) = v77;
          v38 = v98;
          _os_log_impl(&_mh_execute_header, v63, v90, "[%{public}s] Migrated from {%s} to {%s} with sha512sum '%{public}s' {attachmentID: %{public}s}", v66, 0x34u);
          swift_arrayDestroy();
        }

        v78 = v17[17];
        sub_1005D7DF4(*(v58 + qword_10094E2E8), (*(v58 + qword_10094E300) & 1) == 0);
      }

      ++v38;
    }

    while (v99 != Array.endIndex.getter());
  }

  v83 = v100;
  v84 = *(v100 + 16);
  if (!v84)
  {
    goto LABEL_25;
  }

  v85 = sub_1003689CC(*(v100 + 16), 0);
  v86 = sub_1002791DC(v108, v85 + 4, v84, v83);
  sub_10001B860();
  if (v86 != v84)
  {
    __break(1u);
LABEL_25:

    v85 = _swiftEmptyArrayStorage;
  }

  swift_beginAccess();
  v87 = v17[8];
  v88 = v17[9];
  sub_10000C9DC((v17 + 5), v87);
  (*(v88 + 40))(v85, v87, v88);
  return swift_endAccess();
}

void *sub_1005D6E0C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v106 = a3;
  v7 = *(*v4 + 80);
  v98 = *(*v4 + 88);
  v99 = v7;
  v8 = type metadata accessor for RDDeduplicationActivity.Executable.DeduplicationError();
  v105 = *(v8 - 8);
  v9 = *(v105 + 64);
  __chkstk_darwin(v8);
  v11 = (&v84 - v10);
  v12 = type metadata accessor for URL();
  v102 = *(v12 - 8);
  v103 = v12;
  v13 = *(v102 + 64);
  __chkstk_darwin(v12);
  v97 = &v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v96 = &v84 - v16;
  __chkstk_darwin(v17);
  v101 = &v84 - v18;
  v19 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = &v84 - v21;
  v23 = type metadata accessor for UUID();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  v100 = &v84 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v84 - v28;
  ObjectType = swift_getObjectType();
  (*(a2 + 8))(ObjectType, a2);
  v104 = v24;
  v31 = *(v24 + 48);
  v32 = v23;
  if (v31(v22, 1, v23) == 1)
  {
    sub_1000050A4(v22, &unk_100939D90, "8\n\r");
    v33 = v4[17];
    *v11 = a1;
    v11[1] = a2;
    v34 = v106;
    v11[2] = v106;
    swift_storeEnumTagMultiPayload();
    swift_unknownObjectRetain();
    v35 = v34;
    sub_1005D79CC(v11);
    (*(v105 + 8))(v11, v8);
  }

  else
  {
    v36 = v106;
    v94 = v8;
    v37 = v104;
    v92 = *(v104 + 32);
    v93 = v104 + 32;
    v92(v29, v22, v32);
    v95 = (*(a2 + 16))(ObjectType, a2);
    v91 = a2;
    if (v38)
    {
      v39 = v38;
      v87 = a1;
      v40 = v4[4];
      isa = UUID._bridgeToObjectiveC()().super.isa;
      v42 = [v36 uuid];
      v43 = v100;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v44 = UUID._bridgeToObjectiveC()().super.isa;
      v89 = *(v37 + 8);
      v90 = v37 + 8;
      v89(v43, v32);
      v88 = v39;
      v45 = String._bridgeToObjectiveC()();
      v86 = v40;
      v46 = [v40 URLForAttachmentFile:isa accountID:v44 fileName:v45 sha512Sum:0];

      v47 = v101;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v48 = static REMFileDigester.sha512SumWithFileSize(url:)();
      if (v49)
      {
        v51 = v48;
        v105 = v50;
        v85 = v49;
        v52 = UUID._bridgeToObjectiveC()().super.isa;
        v53 = [v106 uuid];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v54 = UUID._bridgeToObjectiveC()().super.isa;
        v89(v43, v32);
        v55 = String._bridgeToObjectiveC()();

        v56 = v51;
        v57 = String._bridgeToObjectiveC()();
        v58 = v43;
        v59 = v29;
        v60 = v47;
        v61 = [v86 URLForAttachmentFile:v52 accountID:v54 fileName:v55 sha512Sum:v57];

        v62 = v96;
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v63 = type metadata accessor for RDDeduplicationActivity.Executable.PreprocessedAttachment();
        v92(v58, v59, v32);
        v64 = v97;
        (*(v102 + 32))(v97, v60, v103);
        v65 = *(v63 + 48);
        v66 = *(v63 + 52);
        swift_allocObject();
        v67 = v106;
        v68 = sub_1005D97A0(v87, v91, v106, v58, v56, v85, v105, v64, v62);
        swift_unknownObjectRetain();
        v69 = v67;
        return v68;
      }

      v75 = v4[17];
      v76 = sub_1000F5104(&qword_10094EB70, &qword_1007B46A0);
      v77 = *(v76 + 48);
      v78 = *(v76 + 64);
      v80 = v102;
      v79 = v103;
      (*(v102 + 16))(v11, v47, v103);
      (*(v104 + 16))(v11 + v77, v29, v32);
      v81 = v106;
      *(v11 + v78) = v106;
      v82 = v94;
      swift_storeEnumTagMultiPayload();
      v83 = v81;
      sub_1005D79CC(v11);
      (*(v105 + 8))(v11, v82);
      (*(v80 + 8))(v47, v79);
      v89(v29, v32);
    }

    else
    {
      v71 = v4[17];
      v72 = *(sub_1000F5104(&qword_10094EB68, &qword_1007B4698) + 48);
      (*(v37 + 16))(v11, v29, v32);
      *(v11 + v72) = v36;
      v73 = v94;
      swift_storeEnumTagMultiPayload();
      v74 = v36;
      sub_1005D79CC(v11);
      (*(v105 + 8))(v11, v73);
      (*(v37 + 8))(v29, v32);
    }
  }

  return 0;
}

uint64_t sub_1005D75CC@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v9 = *a2;
  v10 = *(*a2 + 80);
  v11 = *(v9 + 88);
  v12 = type metadata accessor for RDDeduplicationActivity.Executable.DeduplicationError();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v25 - v15;
  v17 = *a1;
  sub_1005D77B8();
  if (v4)
  {
    v25[1] = a2[17];
    v18 = sub_1000F5104(&qword_10094EB78, &qword_1007B46A8);
    v19 = *(v18 + 48);
    v26 = a4;
    v20 = *(v18 + 64);
    *v16 = v4;
    v21 = qword_10094E2D8;
    v22 = type metadata accessor for UUID();
    (*(*(v22 - 8) + 16))(&v16[v19], v17 + v21, v22);
    *&v16[v20] = a3;
    a4 = v26;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v23 = a3;
    sub_1005D79CC(v16);

    result = (*(v13 + 8))(v16, v12);
    v17 = 0;
  }

  else
  {
    sub_1005D7948();
  }

  *a4 = v17;
  return result;
}

void sub_1005D77B8()
{
  v1 = v0;
  v2 = objc_opt_self();
  v3 = [v2 defaultManager];
  URL.path(percentEncoded:)(0);
  v4 = String._bridgeToObjectiveC()();

  v5 = [v3 fileExistsAtPath:v4];

  if ((v5 & 1) == 0)
  {
    v6 = [v2 defaultManager];
    URL._bridgeToObjectiveC()(qword_10094E2F0);
    v8 = v7;
    URL._bridgeToObjectiveC()(v9);
    v11 = v10;
    v16 = 0;
    v12 = [v6 copyItemAtURL:v8 toURL:v10 error:&v16];

    v13 = v16;
    if (v12)
    {
      *(v1 + qword_10094E300) = 1;
      v14 = v13;
    }

    else
    {
      v15 = v16;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }
}

uint64_t sub_1005D7948()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v4 = v0 + qword_10094E2E0;
  v5 = *(v0 + qword_10094E2E0);
  v6 = *(v4 + 8);
  v7 = *(v2 + 32);

  return v7(v5, v6, ObjectType, v2);
}

uint64_t sub_1005D79CC(uint64_t a1)
{
  v2 = v1;
  v4 = *(*v2 + 80);
  v5 = *(*v2 + 88);
  v6 = type metadata accessor for RDDeduplicationActivity.Executable.DeduplicationError();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v12 - v9;
  sub_1005D8368(*(v2 + 24), *(v2 + 32), v6);
  (*(v7 + 16))(v10, a1, v6);
  swift_beginAccess();
  type metadata accessor for Array();
  Array.append(_:)();
  return swift_endAccess();
}

uint64_t sub_1005D7B08()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  *&v5 = __chkstk_darwin(v2).n128_u64[0];
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [*(v1 + 32) uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v9 = UUID.uuidString.getter();
  v11 = v10;
  (*(v3 + 8))(v7, v2);
  v15[0] = v9;
  v15[1] = v11;
  v12._countAndFlagsBits = 124;
  v12._object = 0xE100000000000000;
  String.append(_:)(v12);
  v13._countAndFlagsBits = UUID.uuidString.getter();
  String.append(_:)(v13);

  return v15[0];
}

uint64_t sub_1005D7C40()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.deletingLastPathComponent()();
  v5 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v6);
  v8 = v7;
  v14 = 0;
  v9 = [v5 removeItemAtURL:v7 error:&v14];

  if (v9)
  {
    v10 = *(v1 + 8);
    v11 = v14;
    return v10(v4, v0);
  }

  else
  {
    v13 = v14;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    return (*(v1 + 8))(v4, v0);
  }
}

uint64_t sub_1005D7DF4(uint64_t a1, char a2)
{
  v5 = *(v2 + 40);
  result = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + 40) = v5;
  if ((result & 1) == 0)
  {
    result = sub_1003684B8(0, *(v5 + 16) + 1, 1, v5);
    v5 = result;
    *(v2 + 40) = result;
  }

  v8 = *(v5 + 16);
  v7 = *(v5 + 24);
  if (v8 >= v7 >> 1)
  {
    result = sub_1003684B8((v7 > 1), v8 + 1, 1, v5);
    v5 = result;
  }

  *(v5 + 16) = v8 + 1;
  v9 = v5 + 16 * v8;
  *(v9 + 32) = a1;
  *(v9 + 40) = a2 & 1;
  *(v2 + 40) = v5;
  return result;
}

void *sub_1005D7EA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v18 = *(v9 + 48);
  v19 = *(v9 + 52);
  swift_allocObject();
  return sub_1005D97A0(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t sub_1005D7F4C()
{
  v1 = sub_10000F8A4(3uLL, 0, 7u);
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100796900;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = swift_getKeyPath();
  sub_1000060C8(0, &qword_1009399F0, off_1008D4120);
  v3 = [objc_allocWithZone(NSFetchRequest) init];
  v4 = [swift_getObjCClassFromMetadata() entity];
  [v3 setEntity:v4];

  [v3 setAffectedStores:0];
  v20 = v1;
  [v3 setPredicate:v1];
  v21 = _swiftEmptySetSingleton;

  sub_100010864(v5);

  sub_1002137C0(_swiftEmptySetSingleton);

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v3 setPropertiesToFetch:isa];

  swift_setDeallocating();
  v7 = *(inited + 16);
  swift_arrayDestroy();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1007953F0;
  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  swift_getKeyPath();
  *(v8 + 32) = NSSortDescriptor.init<A, B>(keyPath:ascending:)();
  v9 = Array._bridgeToObjectiveC()().super.isa;

  [v3 setSortDescriptors:v9];

  v10 = NSManagedObjectContext.fetch<A>(_:)();
  if (v0)
  {
    if (qword_1009366A0 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100006654(v11, qword_10094E160);

    swift_errorRetain();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v14 = 136446466;
      *(v14 + 4) = sub_10000668C(*(v19 + 144), *(v19 + 152), &v21);
      *(v14 + 12) = 2082;
      swift_getErrorValue();
      v15 = Error.rem_errorDescription.getter();
      v17 = sub_10000668C(v15, v16, &v21);

      *(v14 + 14) = v17;
      _os_log_impl(&_mh_execute_header, v12, v13, "[%{public}s] failed to fetch accounts from database {error: %{public}s}", v14, 0x16u);
      swift_arrayDestroy();
    }

    swift_willThrow();
  }

  return v10;
}

void sub_1005D8368(NSObject *a1, char *a2, uint64_t a3)
{
  v4 = v3;
  v205 = a2;
  v202 = a1;
  v206 = type metadata accessor for UUID();
  v6 = *(v206 - 8);
  v7 = *(v6 + 8);
  __chkstk_darwin(v206);
  v200 = &v193 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v201 = &v193 - v10;
  __chkstk_darwin(v11);
  v196 = &v193 - v12;
  __chkstk_darwin(v13);
  v197 = &v193 - v14;
  __chkstk_darwin(v15);
  v195 = &v193 - v16;
  __chkstk_darwin(v17);
  v199 = &v193 - v18;
  __chkstk_darwin(v19);
  v21 = &v193 - v20;
  __chkstk_darwin(v22);
  v24 = &v193 - v23;
  v25 = type metadata accessor for URL();
  v203 = *(v25 - 8);
  v204 = v25;
  v26 = *(v203 + 64);
  __chkstk_darwin(v25);
  v198 = &v193 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v30 = &v193 - v29;
  __chkstk_darwin(v31);
  v33 = &v193 - v32;
  __chkstk_darwin(v34);
  v36 = &v193 - v35;
  __chkstk_darwin(v37);
  v39 = &v193 - v38;
  v40 = *(*(a3 - 8) + 64);
  v42 = __chkstk_darwin(v41);
  v44 = &v193 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v45 + 16))(v44, v4, a3, v42);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v93 = sub_1000F5104(&qword_10094EB70, &qword_1007B46A0);
      v94 = *(v93 + 48);
      v95 = *&v44[*(v93 + 64)];
      v97 = v203;
      v96 = v204;
      (*(v203 + 32))(v36, v44, v204);
      v98 = v6;
      v99 = &v44[v94];
      v100 = v199;
      v101 = v206;
      (*(v6 + 4))(v199, v99, v206);
      if (qword_1009366A0 != -1)
      {
        swift_once();
      }

      v102 = type metadata accessor for Logger();
      sub_100006654(v102, qword_10094E160);
      (*(v97 + 16))(v33, v36, v96);
      v103 = *(v6 + 2);
      v104 = v195;
      v103(v195, v100, v101);
      v105 = v205;

      v106 = v95;
      v107 = v101;
      v108 = v106;
      v109 = v105;
      v110 = Logger.logObject.getter();
      v111 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v110, v111))
      {
        v112 = swift_slowAlloc();
        v113 = swift_slowAlloc();
        v198 = v98;
        v200 = v113;
        v201 = swift_slowAlloc();
        v207[0] = v201;
        *v112 = 136446978;
        *(v112 + 4) = sub_10000668C(v202, v109, v207);
        *(v112 + 12) = 2080;
        v114 = URL.path(percentEncoded:)(1);
        v115 = *(v97 + 8);
        v202 = v110;
        v203 = v115;
        v205 = v36;
        v115(v33, v204);
        v116 = sub_10000668C(v114._countAndFlagsBits, v114._object, v207);

        *(v112 + 14) = v116;
        *(v112 + 22) = 2082;
        v117 = UUID.uuidString.getter();
        v119 = v118;
        v120 = *(v198 + 1);
        v121 = v104;
        v122 = v206;
        v120(v121, v206);
        v123 = sub_10000668C(v117, v119, v207);

        *(v112 + 24) = v123;
        *(v112 + 32) = 2114;
        *(v112 + 34) = v108;
        v124 = v200;
        *v200 = v108;
        v125 = v108;
        v126 = v202;
        _os_log_impl(&_mh_execute_header, v202, v111, "[%{public}s] Failed to migrate from {%s} because sha512Sum failed {attachmentID: %{public}s, accountID: %{public}@}", v112, 0x2Au);
        sub_1000050A4(v124, &unk_100938E70, &unk_100797230);

        swift_arrayDestroy();

        v120(v199, v122);
        (v203)(v205, v204);
        return;
      }

      v185 = *(v98 + 1);
      v185(v104, v107);
      v186 = *(v97 + 8);
      v187 = v204;
      v186(v33, v204);
      v185(v199, v107);
      v188 = v36;
      v189 = v187;
    }

    else
    {
      v47 = v6;
      v48 = v203;
      if (EnumCaseMultiPayload == 3)
      {
        v49 = *v44;
        v50 = sub_1000F5104(&qword_10094EB78, &qword_1007B46A8);
        v51 = *&v44[*(v50 + 64)];
        v52 = *(v6 + 4);
        v53 = v197;
        v54 = v206;
        v52(v197, &v44[*(v50 + 48)], v206);
        if (qword_1009366A0 != -1)
        {
          swift_once();
        }

        v55 = type metadata accessor for Logger();
        sub_100006654(v55, qword_10094E160);
        v56 = v196;
        v47[2](v196, v53, v54);
        v57 = v205;

        swift_errorRetain();
        v58 = v51;
        v59 = Logger.logObject.getter();
        v60 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v59, v60))
        {
          v61 = swift_slowAlloc();
          v203 = swift_slowAlloc();
          v204 = swift_slowAlloc();
          v207[0] = v204;
          *v61 = 136446978;
          *(v61 + 4) = sub_10000668C(v202, v57, v207);
          *(v61 + 12) = 2080;
          swift_getErrorValue();
          v62 = Error.rem_errorDescription.getter();
          v64 = v56;
          v65 = sub_10000668C(v62, v63, v207);

          *(v61 + 14) = v65;
          *(v61 + 22) = 2082;
          sub_1005E0108(&qword_10093F2A0, &type metadata accessor for UUID);
          v66 = dispatch thunk of CustomStringConvertible.description.getter();
          v68 = v67;
          v69 = v47[1];
          (v69)(v64, v54);
          v70 = sub_10000668C(v66, v68, v207);

          *(v61 + 24) = v70;
          *(v61 + 32) = 2114;
          *(v61 + 34) = v58;
          v71 = v203;
          *v203 = v58;
          v72 = v58;
          _os_log_impl(&_mh_execute_header, v59, v60, "[%{public}s] Could not copy file for deduplication. Skipping {error: %s, attachmentID: %{public}s, accountID: %{public}@}", v61, 0x2Au);
          sub_1000050A4(v71, &unk_100938E70, &unk_100797230);

          swift_arrayDestroy();

          (v69)(v197, v206);
        }

        else
        {

          v190 = v47[1];
          (v190)(v56, v54);
          (v190)(v53, v54);
        }

        return;
      }

      v127 = *v44;
      v128 = sub_1000F5104(qword_10094EB80, &unk_1007B46B0);
      v129 = v128[16];
      v130 = *&v44[v128[20]];
      v131 = v204;
      (*(v48 + 32))(v30, &v44[v128[12]], v204);
      v132 = &v44[v129];
      v133 = v201;
      v134 = v206;
      v47[4](v201, v132, v206);
      if (qword_1009366A0 != -1)
      {
        swift_once();
      }

      v135 = type metadata accessor for Logger();
      sub_100006654(v135, qword_10094E160);
      (*(v48 + 16))(v198, v30, v131);
      v47[2](v200, v133, v134);
      v136 = v205;

      swift_errorRetain();
      v137 = v130;
      v138 = v30;
      v139 = v137;
      v140 = v136;
      v141 = Logger.logObject.getter();
      LODWORD(v136) = static os_log_type_t.error.getter();

      v199 = v139;

      LODWORD(v197) = v136;
      if (os_log_type_enabled(v141, v136))
      {
        v142 = swift_slowAlloc();
        v196 = v138;
        v143 = v142;
        v194 = swift_slowAlloc();
        v195 = swift_slowAlloc();
        v207[0] = v195;
        *v143 = 136447234;
        *(v143 + 4) = sub_10000668C(v202, v140, v207);
        *(v143 + 12) = 2080;
        sub_1005E0108(&qword_1009456F0, &type metadata accessor for URL);
        v144 = v198;
        v145 = dispatch thunk of CustomStringConvertible.description.getter();
        v146 = v131;
        v147 = v47;
        v149 = v148;
        v205 = *(v48 + 8);
        (v205)(v144, v146);
        v150 = sub_10000668C(v145, v149, v207);

        *(v143 + 14) = v150;
        *(v143 + 22) = 2080;
        swift_getErrorValue();
        v151 = Error.rem_errorDescription.getter();
        v153 = sub_10000668C(v151, v152, v207);

        *(v143 + 24) = v153;
        *(v143 + 32) = 2082;
        sub_1005E0108(&qword_10093F2A0, &type metadata accessor for UUID);
        v154 = v200;
        v155 = dispatch thunk of CustomStringConvertible.description.getter();
        v157 = v156;
        v158 = v147[1];
        (v158)(v154, v134);
        v159 = sub_10000668C(v155, v157, v207);

        *(v143 + 34) = v159;
        *(v143 + 42) = 2114;
        v160 = v199;
        *(v143 + 44) = v199;
        v161 = v194;
        *v194 = v160;
        v162 = v160;
        _os_log_impl(&_mh_execute_header, v141, v197, "[%{public}s] Could not delete file <%s> after deduplication. Leaving in place {error: %s, attachmentID: %{public}s, accountID: %{public}@}", v143, 0x34u);
        sub_1000050A4(v161, &unk_100938E70, &unk_100797230);

        swift_arrayDestroy();

        (v158)(v201, v134);
        (v205)(v196, v204);
        return;
      }

      v191 = v47[1];
      (v191)(v200, v134);
      v186 = *(v48 + 8);
      v186(v198, v131);
      (v191)(v201, v134);
      v188 = v138;
      v189 = v131;
    }

    v186(v188, v189);
    return;
  }

  if (EnumCaseMultiPayload)
  {
    v163 = *&v44[*(sub_1000F5104(&qword_10094EB68, &qword_1007B4698) + 48)];
    v164 = v6;
    v165 = v24;
    v166 = v206;
    (*(v6 + 4))(v24, v44, v206);
    if (qword_1009366A0 != -1)
    {
      swift_once();
    }

    v167 = type metadata accessor for Logger();
    sub_100006654(v167, qword_10094E160);
    (*(v6 + 2))(v21, v24, v166);
    v168 = v205;

    v169 = v163;
    v170 = v168;
    v171 = Logger.logObject.getter();
    v172 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v171, v172))
    {
      v173 = swift_slowAlloc();
      v174 = swift_slowAlloc();
      v204 = swift_slowAlloc();
      v207[0] = v204;
      *v173 = 136446722;
      *(v173 + 4) = sub_10000668C(v202, v170, v207);
      *(v173 + 12) = 2082;
      sub_1005E0108(&qword_10093F2A0, &type metadata accessor for UUID);
      v175 = dispatch thunk of CustomStringConvertible.description.getter();
      v176 = v166;
      v177 = v164;
      v179 = v178;
      v205 = v165;
      v180 = *(v177 + 1);
      v181 = v21;
      v182 = v176;
      v180(v181, v176);
      v183 = sub_10000668C(v175, v179, v207);

      *(v173 + 14) = v183;
      *(v173 + 22) = 2114;
      *(v173 + 24) = v169;
      *v174 = v169;
      v184 = v169;
      _os_log_impl(&_mh_execute_header, v171, v172, "[%{public}s] Attachment had null fileName {attachmentID: %{public}s, accountID: %{public}@}", v173, 0x20u);
      sub_1000050A4(v174, &unk_100938E70, &unk_100797230);

      swift_arrayDestroy();

      v180(v205, v182);
    }

    else
    {

      v192 = *(v164 + 1);
      v192(v21, v166);
      v192(v165, v166);
    }
  }

  else
  {
    v74 = *v44;
    v73 = *(v44 + 1);
    v75 = *(v44 + 2);
    if (qword_1009366A0 != -1)
    {
      swift_once();
    }

    v76 = type metadata accessor for Logger();
    sub_100006654(v76, qword_10094E160);
    v77 = v205;

    swift_unknownObjectRetain();
    v78 = v75;
    v79 = v77;
    v80 = Logger.logObject.getter();
    v81 = static os_log_type_t.error.getter();

    swift_unknownObjectRelease();

    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v206 = swift_slowAlloc();
      v207[0] = v206;
      *v82 = 136446722;
      *(v82 + 4) = sub_10000668C(v202, v79, v207);
      *(v82 + 12) = 2082;
      ObjectType = swift_getObjectType();
      v85 = (*(v73 + 56))(ObjectType, v73);
      v86 = [v85 URIRepresentation];

      static URL._unconditionallyBridgeFromObjectiveC(_:)();
      sub_1005E0108(&qword_1009456F0, &type metadata accessor for URL);
      v87 = v204;
      v88 = dispatch thunk of CustomStringConvertible.description.getter();
      v90 = v89;
      (*(v203 + 8))(v39, v87);
      v91 = sub_10000668C(v88, v90, v207);

      *(v82 + 14) = v91;
      *(v82 + 22) = 2114;
      *(v82 + 24) = v78;
      *v83 = v78;
      v92 = v78;
      _os_log_impl(&_mh_execute_header, v80, v81, "[%{public}s] Attachment had null identifier {managedObjectID: %{public}s, accountID: %{public}@}", v82, 0x20u);
      sub_1000050A4(v83, &unk_100938E70, &unk_100797230);

      swift_arrayDestroy();

      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
}

void *sub_1005D97A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + qword_10094E300) = 0;
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = a3;
  v15 = qword_10094E2D8;
  v16 = type metadata accessor for UUID();
  (*(*(v16 - 8) + 32))(v9 + v15, a4, v16);
  v17 = (v9 + qword_10094E2E0);
  *v17 = a5;
  v17[1] = a6;
  *(v9 + qword_10094E2E8) = a7;
  v18 = qword_10094E2F0;
  v19 = type metadata accessor for URL();
  v20 = *(*(v19 - 8) + 32);
  v20(v9 + v18, a8, v19);
  v20(v9 + qword_10094E2F8, a9, v19);
  return v9;
}

uint64_t sub_1005D98CC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = qword_10094E2D8;
  v3 = type metadata accessor for UUID();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(v0 + qword_10094E2E0 + 8);

  v5 = qword_10094E2F0;
  v6 = type metadata accessor for URL();
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v5, v6);
  v7(v0 + qword_10094E2F8, v6);
  return v0;
}

uint64_t sub_1005D99D8(void *a1)
{
  v76 = a1;
  v2 = *v1;
  v3 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v71 - v5;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v71 - v13;
  static Date.now.getter();
  v15 = qword_10094E388;
  swift_beginAccess();
  v16 = v1 + v15;
  v17 = v1;
  sub_100010364(v16, v6, &unk_100938850, qword_100795AE0);
  v75 = (*(v8 + 48))(v6, 1, v7);
  if (v75 == 1)
  {
    sub_1000050A4(v6, &unk_100938850, qword_100795AE0);
    v74 = 0;
  }

  else
  {
    (*(v8 + 32))(v11, v6, v7);
    Date.timeIntervalSince(_:)();
    v19 = v18;
    (*(v8 + 8))(v11, v7);
    v74 = v19;
  }

  v77 = v14;
  v78 = v8;
  v79 = v7;
  v20 = v1[5];
  v21 = *(v20 + 16);
  v22 = _swiftEmptyArrayStorage;
  if (v21)
  {
    v83 = _swiftEmptyArrayStorage;

    sub_100253830(0, v21, 0);
    v22 = v83;
    v23 = v83[2];
    v24 = (v20 + 40);
    do
    {
      if (*v24)
      {
        v25 = *(v24 - 1);
      }

      else
      {
        v25 = 0;
      }

      v83 = v22;
      v26 = v22[3];
      if (v23 >= v26 >> 1)
      {
        sub_100253830((v26 > 1), v23 + 1, 1);
        v22 = v83;
      }

      v22[2] = v23 + 1;
      v22[v23 + 4] = v25;
      v24 += 16;
      ++v23;
      --v21;
    }

    while (v21);
  }

  v81 = v22;
  sub_1000F5104(&qword_10094EC10, &qword_1007AD5B0);
  sub_10000CB48(&qword_10094EC18, &qword_10094EC10, &qword_1007AD5B0);
  Sequence<>.sum()();

  v80 = v83;
  v27 = v1[5];
  v28 = *(v27 + 16);
  v29 = _swiftEmptyArrayStorage;
  if (v28)
  {
    v72 = v2;
    v73 = v1;
    v83 = _swiftEmptyArrayStorage;

    sub_100253830(0, v28, 0);
    v29 = v83;
    v30 = v83[2];
    v31 = 32;
    do
    {
      v32 = *(v27 + v31);
      v83 = v29;
      v33 = v29[3];
      if (v30 >= v33 >> 1)
      {
        sub_100253830((v33 > 1), v30 + 1, 1);
        v29 = v83;
      }

      v29[2] = v30 + 1;
      v29[v30 + 4] = v32;
      v31 += 16;
      ++v30;
      --v28;
    }

    while (v28);

    v17 = v73;
    v2 = v72;
  }

  v81 = v29;
  Sequence<>.sum()();

  v34 = v17[5];
  v35 = *(v34 + 16);
  if (v35)
  {
    v36 = 0;
    v37 = (v34 + 40);
    v38 = v35;
    while (*v37 != 1 || !__OFADD__(v36++, 1))
    {
      v37 += 16;
      if (!--v38)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
  }

  v36 = 0;
LABEL_27:
  sub_1000F5104(&unk_10094EC20, &qword_1007A11D8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100792CF0;
  *(inited + 32) = 0x6564656563637573;
  *(inited + 40) = 0xE900000000000064;
  *(inited + 48) = Int._bridgeToObjectiveC()();
  *(inited + 56) = 0x64656C696166;
  *(inited + 64) = 0xE600000000000000;
  swift_beginAccess();
  v41 = v17[6];
  v42 = *(v2 + 80);
  v43 = *(v2 + 88);
  type metadata accessor for RDDeduplicationActivity.Executable.DeduplicationError();

  Array.count.getter();

  *(inited + 72) = Int._bridgeToObjectiveC()();
  strcpy((inited + 80), "dedupedCount");
  *(inited + 93) = 0;
  *(inited + 94) = -5120;
  *(inited + 96) = Int._bridgeToObjectiveC()();
  *(inited + 104) = 0xD000000000000018;
  *(inited + 112) = 0x80000001007FE070;
  *(inited + 120) = Int._bridgeToObjectiveC()();
  strcpy((inited + 128), "bytesRecovered");
  *(inited + 143) = -18;
  *(inited + 144) = Int._bridgeToObjectiveC()();
  v44 = sub_10038F938(inited);
  swift_setDeallocating();
  sub_1000F5104(&qword_100941380, &unk_1007A11E0);
  swift_arrayDestroy();
  v81 = v17[6];
  type metadata accessor for Array();
  swift_getWitnessTable();
  v45 = 0;
  if ((Collection.isEmpty.getter() & 1) == 0)
  {
    v46 = v17[6];

    sub_1000F5104(&unk_1009399E0, &qword_100795D00);
    v45 = _arrayForceCast<A, B>(_:)();
  }

  v47 = v76[4];
  sub_10000F61C(v76, v76[3]);
  sub_1004646CC(v44);

  if (v45)
  {
    type metadata accessor for RDDeduplicationActivity.Executable.LocalAnalytics.CompositeError();
    swift_getWitnessTable();
    swift_allocError();
    *v48 = v45;
  }

  v49 = v75;
  dispatch thunk of AnalyticsType.postEvent(_:payload:duration:error:performAutoBugCaptureOnError:)();

  if (v49 == 1)
  {
    v50 = 0xE400000000000000;
    v51 = 1936539455;
  }

  else
  {
    v52 = [objc_allocWithZone(NSNumberFormatter) init];
    [v52 setUsesSignificantDigits:1];
    [v52 setMinimumSignificantDigits:3];
    [v52 setMaximumSignificantDigits:4];
    v81 = 0;
    v82 = 0xE000000000000000;
    isa = Double._bridgeToObjectiveC()().super.super.isa;
    v54 = [v52 stringForObjectValue:isa];

    if (v54)
    {
      v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v57 = v56;
    }

    else
    {
      v57 = 0xE200000000000000;
      v55 = 16191;
    }

    v58._countAndFlagsBits = v55;
    v58._object = v57;
    String.append(_:)(v58);

    v59._countAndFlagsBits = 29549;
    v59._object = 0xE200000000000000;
    String.append(_:)(v59);

    v51 = v81;
    v50 = v82;
  }

  if (qword_1009366A0 != -1)
  {
    swift_once();
  }

  v60 = type metadata accessor for Logger();
  sub_100006654(v60, qword_10094E160);

  v61 = Logger.logObject.getter();
  v62 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    *v63 = 136447234;
    *(v63 + 4) = sub_10000668C(v17[3], v17[4], &v81);
    *(v63 + 12) = 2050;
    *(v63 + 14) = *(v17[5] + 16);

    *(v63 + 22) = 2050;
    *(v63 + 24) = v36;
    *(v63 + 32) = 2082;
    v64 = [objc_opt_self() stringFromByteCount:v80 countStyle:0];
    v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v67 = v66;

    v68 = sub_10000668C(v65, v67, &v81);

    *(v63 + 34) = v68;
    *(v63 + 42) = 2080;
    v69 = sub_10000668C(v51, v50, &v81);

    *(v63 + 44) = v69;
    _os_log_impl(&_mh_execute_header, v61, v62, "[%{public}s] Successfully migrated %{public}ld attachments, finding %{public}ld duplicates, saving %{public}s. Took %s", v63, 0x34u);
    swift_arrayDestroy();
  }

  else
  {
  }

  return (*(v78 + 8))(v77, v79);
}

uint64_t sub_1005DA4FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100026EF4(0, v1, 0);
    v3 = (a1 + 32);
    do
    {
      v4 = *v3;
      swift_getErrorValue();
      swift_errorRetain();
      v5 = Error.rem_errorDescription.getter();
      v7 = v6;

      v9 = _swiftEmptyArrayStorage[2];
      v8 = _swiftEmptyArrayStorage[3];
      if (v9 >= v8 >> 1)
      {
        sub_100026EF4((v8 > 1), v9 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v9 + 1;
      v10 = &_swiftEmptyArrayStorage[2 * v9];
      v10[4] = v5;
      v10[5] = v7;
      ++v3;
      --v1;
    }

    while (v1);
  }

  sub_1000F5104(&unk_10093B300, &unk_100797780);
  sub_10000CB48(&qword_10093D0F0, &unk_10093B300, &unk_100797780);
  v11 = BidirectionalCollection<>.joined(separator:)();
  v13 = v12;

  v14._countAndFlagsBits = v11;
  v14._object = v13;
  String.append(_:)(v14);

  return 0x203A73726F727245;
}

uint64_t sub_1005DA6A4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_1005DA4FC(*v1);
}

void *sub_1005DA6B4()
{
  v1 = v0[4];

  v2 = v0[5];

  v3 = v0[6];

  sub_1000050A4(v0 + qword_10094E388, &unk_100938850, qword_100795AE0);
  return v0;
}

uint64_t sub_1005DA71C(uint64_t (*a1)(void))
{
  v1 = *a1();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1005DA774@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v7 = *v3;
  v8 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v47 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v42 - v12;
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v42 - v20;
  v50 = a1;
  v51 = a2;
  v48 = 124;
  v49 = 0xE100000000000000;
  sub_10013BCF4();
  v22 = StringProtocol.components<A>(separatedBy:)();
  if (v22[2] != 2)
  {

LABEL_9:
    *a3 = a1;
    *(a3 + 1) = a2;
    v32 = *(v7 + 80);
    v33 = *(v7 + 88);
    type metadata accessor for RDDeduplicationActivity.CrashCleanError();
    swift_storeEnumTagMultiPayload();
    sub_1000F514C(&qword_10094EC60, &qword_1007B48A8);
    swift_getWitnessTable();
    type metadata accessor for Result();
LABEL_10:
    swift_storeEnumTagMultiPayload();
  }

  v43 = v18;
  v44 = a1;
  v45 = v7;
  v46 = a2;
  v23 = v22[4];
  v24 = v22[5];
  v25 = v22;

  UUID.init(uuidString:)();

  v26 = *(v15 + 48);
  if (v26(v13, 1, v14) == 1)
  {

    v27 = v13;
LABEL_8:
    sub_1000050A4(v27, &unk_100939D90, "8\n\r");
    v7 = v45;
    a2 = v46;
    a1 = v44;
    goto LABEL_9;
  }

  v42 = *(v15 + 32);
  result = v42(v21, v13, v14);
  if (v25[2] >= 2uLL)
  {
    v29 = v25[6];
    v30 = v25[7];

    v31 = v47;
    UUID.init(uuidString:)();

    if (v26(v31, 1, v14) != 1)
    {
      v35 = v42;
      v34 = v43;
      v42(v43, v31, v14);
      v36 = sub_1000F5104(&qword_10094EC60, &qword_1007B48A8);
      v37 = *(v36 + 48);
      v38 = *(v36 + 64);
      v39 = v46;
      *a3 = v44;
      *(a3 + 1) = v39;
      v35(&a3[v37], v21, v14);
      v35(&a3[v38], v34, v14);
      v40 = *(v45 + 80);
      v41 = *(v45 + 88);
      type metadata accessor for RDDeduplicationActivity.CrashCleanError();
      swift_getWitnessTable();
      type metadata accessor for Result();
      goto LABEL_10;
    }

    (*(v15 + 8))(v21, v14);
    v27 = v31;
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t sub_1005DABC8(void *a1)
{
  v3 = *v1;
  v4 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v87 = v73 - v9;
  __chkstk_darwin(v10);
  v12 = v73 - v11;
  v97 = type metadata accessor for UUID();
  v88 = *(v97 - 8);
  v13 = *(v88 + 64);
  __chkstk_darwin(v97);
  v76 = v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v84 = v73 - v16;
  __chkstk_darwin(v17);
  v81 = v73 - v18;
  __chkstk_darwin(v19);
  v83 = v73 - v20;
  __chkstk_darwin(v21);
  v96 = v73 - v22;
  v75 = a1;
  v101 = a1;
  v23 = *(v3 + 80);
  v98 = v23;
  v24 = *(v3 + 88);
  v99 = v24;
  sub_1000F514C(&qword_10094EC60, &qword_1007B48A8);
  type metadata accessor for RDDeduplicationActivity.CrashCleanError();
  swift_getWitnessTable();
  v25 = type metadata accessor for Result();
  v26 = type metadata accessor for Array();
  swift_getWitnessTable();
  v27 = v95;
  Sequence.compactMap<A>(_:)();
  v101 = _swiftEmptyDictionarySingleton;
  v28 = sub_1005DBD14();
  v29 = v27;

  if (v27)
  {
    return v29;
  }

  v73[1] = 0;
  v74 = v26;
  v92 = v25;
  v93 = v24;
  v94 = v23;
  v95 = v28;
  v91 = *(v28 + 16);
  if (!v91)
  {
    v82 = 0;
    v33 = v93;
    v32 = v94;
    v34 = v92;
LABEL_28:

    v100 = v75;
    __chkstk_darwin(v68);
    v73[-4] = v32;
    v73[-3] = v33;
    v73[-2] = &v101;
    v69 = v74;
    WitnessTable = swift_getWitnessTable();
    v29 = sub_1005D22B0(sub_1005E0064, &v73[-6], v69, v34, &type metadata for Never, WitnessTable, &protocol witness table for Never, v71);

    sub_10003E114(v82);
    return v29;
  }

  v82 = 0;
  v30 = 0;
  v90 = (v88 + 56);
  v77 = (v88 + 16);
  v78 = (v88 + 8);
  v31 = (v28 + 40);
  v80 = v7;
  v89 = v12;
  v86 = (v88 + 48);
  v79 = (v88 + 32);
  while (v30 < *(v95 + 16))
  {
    v36 = *(v31 - 1);
    v35 = *v31;
    ObjectType = swift_getObjectType();
    v38 = *(v35 + 48);
    swift_unknownObjectRetain();
    v39 = v38(ObjectType, v35);
    if (v39)
    {
      v40 = v39;
      v41 = [v39 identifier];

      v88 = ObjectType;
      if (v41)
      {
        v42 = v87;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v43 = 0;
      }

      else
      {
        v43 = 1;
        v42 = v87;
      }

      v12 = v89;
      v45 = v96;
      v44 = v97;
      (*v90)(v42, v43, 1, v97);
      sub_100031B58(v42, v12, &unk_100939D90, "8\n\r");
      v46 = *v86;
      if ((*v86)(v12, 1, v44) != 1)
      {
        v85 = *v79;
        v85(v45, v12, v44);
        v47 = v80;
        (*(v35 + 8))(v88, v35);
        v48 = v97;
        if (v46(v47, 1, v97) == 1)
        {
          (*v78)(v96, v48);
          swift_unknownObjectRelease();
          sub_1000050A4(v47, &unk_100939D90, "8\n\r");
          v12 = v89;
LABEL_26:
          v33 = v93;
          v32 = v94;
          goto LABEL_6;
        }

        v49 = v83;
        v85(v83, v47, v48);
        v50 = *v77;
        (*v77)(v84, v49, v48);
        sub_10003E114(v82);
        v51 = v101;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v100 = v51;
        v53 = v96;
        v55 = sub_100363F20(v96);
        v56 = v51[2];
        v57 = (v54 & 1) == 0;
        v58 = v56 + v57;
        if (__OFADD__(v56, v57))
        {
          goto LABEL_31;
        }

        v59 = v54;
        if (v51[3] >= v58)
        {
          v62 = v81;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_100374248();
            v62 = v81;
            v51 = v100;
          }

          v12 = v89;
          v101 = v51;
          if ((v59 & 1) == 0)
          {
            goto LABEL_24;
          }
        }

        else
        {
          sub_10036C304(v58, isUniquelyReferenced_nonNull_native);
          v51 = v100;
          v60 = sub_100363F20(v53);
          if ((v59 & 1) != (v61 & 1))
          {
            goto LABEL_32;
          }

          v55 = v60;
          v12 = v89;
          v62 = v81;
          v101 = v51;
          if (v59)
          {
            goto LABEL_25;
          }

LABEL_24:
          v63 = v76;
          v50(v76, v96, v97);
          sub_1002CB9B0(v55, v63, _swiftEmptySetSingleton, v51);
          v62 = v81;
        }

LABEL_25:
        v64 = v51[7] + 8 * v55;
        v65 = v62;
        sub_1003794C4(v62, v84);
        swift_unknownObjectRelease();
        v66 = *v78;
        v67 = v97;
        (*v78)(v65, v97);
        v66(v83, v67);
        v66(v96, v67);
        v82 = sub_1001424E8;
        goto LABEL_26;
      }

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
      (*v90)(v12, 1, 1, v97);
    }

    v33 = v93;
    v32 = v94;
    sub_1000050A4(v12, &unk_100939D90, "8\n\r");
LABEL_6:
    v34 = v92;
    ++v30;
    v31 += 2;
    if (v91 == v30)
    {
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1005DB460@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_1000F514C(&qword_10094EC60, &qword_1007B48A8);
  v4 = *(v3 + 80);
  v5 = *(v3 + 88);
  type metadata accessor for RDDeduplicationActivity.CrashCleanError();
  swift_getWitnessTable();
  v6 = type metadata accessor for Result();
  return sub_1005DBA4C(sub_1005DFFF8, v6, a2);
}

uint64_t sub_1005DB54C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000F5104(&qword_10094EC60, &qword_1007B48A8);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v8 = (&v14 - v7);
  sub_100010364(a1, &v14 - v7, &qword_10094EC60, &qword_1007B48A8);
  v9 = *(v5 + 56);
  v10 = *(v5 + 72);
  sub_1005DB674(*v8, v8[1], v8 + v9, v8 + v10, a2);

  v11 = type metadata accessor for UUID();
  v12 = *(*(v11 - 8) + 8);
  v12(v8 + v10, v11);
  return (v12)(v8 + v9, v11);
}

uint64_t sub_1005DB674@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v36 = a4;
  v35 = a3;
  v34 = a2;
  v41 = a5;
  v39 = *v5;
  v40 = sub_1000F5104(&qword_10094EC70, &qword_1007B48C0);
  v8 = *(*(v40 - 8) + 64);
  __chkstk_darwin(v40);
  v38 = &v34 - v9;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = v11[8];
  __chkstk_darwin(v10);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v34 - v16;
  v18 = sub_1000F5104(&qword_10094EC60, &qword_1007B48A8);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18);
  v21 = (&v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = __chkstk_darwin(v22);
  v25 = (&v34 - v24);
  *v25 = a1;
  v25[1] = a2;
  v27 = v11[2];
  v27(&v34 + *(v26 + 48) - v24, v35, v10, v23);
  (v27)(v25 + *(v18 + 64), v36, v10);
  sub_100010364(v25, v21, &qword_10094EC60, &qword_1007B48A8);
  v28 = v21[1];
  v36 = *v21;
  v35 = v28;
  v29 = *(v18 + 64);
  v30 = v11[4];
  v30(v17, v21 + *(v18 + 48), v10);
  v30(v14, v21 + v29, v10);
  v48 = v37;
  v49 = v14;
  v50 = v17;
  v51 = v25;

  v31 = sub_1000F5104(&unk_1009399E0, &qword_100795D00);
  sub_1005D27A8(sub_1005E0000, v31, v38);
  v42 = *(v39 + 80);
  v43 = *(v39 + 88);
  v44 = v36;
  v45 = v35;
  v46 = v17;
  v47 = v14;
  type metadata accessor for RDDeduplicationActivity.CrashCleanError();
  swift_getWitnessTable();
  sub_1005DC81C(sub_1005E0024, v40, v41);

  v32 = v11[1];
  v32(v14, v10);
  v32(v17, v10);
  return sub_1000050A4(v25, &qword_10094EC60, &qword_1007B48A8);
}

uint64_t sub_1005DBA4C@<X0>(void (*a1)(char *)@<X0>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v6 = a2[2];
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(a1);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*(v11 - 8) + 64);
  v14 = __chkstk_darwin(v13);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16, v18, v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(*(a2[3] - 8) + 32))(a3, v16, a2[3]);
    v19 = a2[4];
    type metadata accessor for Result();
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    (*(v7 + 32))(v10, v16, v6);
    a1(v10);
    return (*(v7 + 8))(v10, v6);
  }
}

uint64_t sub_1005DBC58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  sub_1000F514C(&qword_10094EC60, &qword_1007B48A8);
  type metadata accessor for RDDeduplicationActivity.CrashCleanError();
  swift_getWitnessTable();
  v5 = type metadata accessor for Result();
  return a4(v5);
}

uint64_t sub_1005DBD14()
{
  v10 = *v0;
  v1 = sub_1000F5104(&qword_10094EC78, qword_1007B48C8);
  v2 = type metadata accessor for UUID();
  v3 = sub_10000CB48(&qword_10094EC80, &qword_10094EC78, qword_1007B48C8);
  v5 = sub_1005D22B0(sub_1005DC26C, 0, v1, v2, &type metadata for Never, v3, &protocol witness table for Never, v4);
  sub_10000CB48(&qword_10094EC88, &qword_10094EC78, qword_1007B48C8);
  sub_1005E0108(&qword_10093B410, &type metadata accessor for UUID);
  v6 = Sequence.mapToSet<A>(_:)();
  v7 = *(v10 + 80);
  v8 = (*(*(v10 + 88) + 72))(v0[2], v0[3], v5, v6);

  return v8;
}

uint64_t sub_1005DBF14@<X0>(uint64_t a1@<X8>)
{
  sub_1000F514C(&qword_10094EC60, &qword_1007B48A8);
  type metadata accessor for RDDeduplicationActivity.CrashCleanError();
  swift_getWitnessTable();
  v2 = type metadata accessor for Result();
  return sub_1005DBA4C(sub_1005E0094, v2, a1);
}

uint64_t sub_1005DC008@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v9 = *a5;
  if (*(*a5 + 16) && (v14 = sub_100363F20(a3), (v15 & 1) != 0) && (v16 = *(*(v9 + 56) + 8 * v14), , v17 = sub_100240CD4(a4, v16), , (v17 & 1) != 0))
  {
    v18 = sub_1000F5104(&qword_10094EC60, &qword_1007B48A8);
    v24 = *(v18 + 48);
    v25 = *(v18 + 64);
    *a7 = a1;
    *(a7 + 1) = a2;
    v19 = type metadata accessor for UUID();
    v20 = *(*(v19 - 8) + 16);
    v20(&a7[v24], a3, v19);
    v20(&a7[v25], a4, v19);
    type metadata accessor for RDDeduplicationActivity.CrashCleanError();
    swift_storeEnumTagMultiPayload();
    swift_getWitnessTable();
    type metadata accessor for Result();
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    sub_1000F514C(&qword_10094EC60, &qword_1007B48A8);
    type metadata accessor for RDDeduplicationActivity.CrashCleanError();
    swift_getWitnessTable();
    v22 = type metadata accessor for Result();
    v23 = *(*(v22 - 8) + 16);

    return v23(a7, a6, v22);
  }
}

uint64_t sub_1005DC26C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000F5104(&qword_10094EC60, &qword_1007B48A8);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v8 = v15 - v7;
  sub_100010364(a1, v15 - v7, &qword_10094EC60, &qword_1007B48A8);
  v9 = *(v8 + 1);

  v10 = *(v5 + 56);
  v11 = *(v5 + 72);
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  (*(v13 + 32))(a2, &v8[v11], v12);
  return (*(v13 + 8))(&v8[v10], v12);
}

uint64_t sub_1005DC39C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000F5104(&qword_10094EC60, &qword_1007B48A8);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v8 = v15 - v7;
  sub_100010364(a1, v15 - v7, &qword_10094EC60, &qword_1007B48A8);
  v9 = *(v8 + 1);

  v10 = *(v5 + 56);
  v11 = *(v5 + 72);
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  (*(v13 + 32))(a2, &v8[v10], v12);
  return (*(v13 + 8))(&v8[v11], v12);
}

uint64_t sub_1005DC4CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t *a3@<X4>, uint64_t a4@<X8>)
{
  v24 = a2;
  v25 = a3;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v13 = UUID._bridgeToObjectiveC()().super.isa;
  v14 = [v11 URLForAttachmentDirectory:isa accountID:v13];

  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v16);
  v18 = v17;
  v26 = 0;
  LOBYTE(v14) = [v15 removeItemAtURL:v17 error:&v26];

  if (v14)
  {
    v19 = *(v7 + 8);
    v20 = v26;
    v19(v10, v6);
    return sub_100010364(v24, a4, &qword_10094EC60, &qword_1007B48A8);
  }

  else
  {
    v22 = v26;
    v23 = _convertNSErrorToError(_:)();

    swift_willThrow();
    result = (*(v7 + 8))(v10, v6);
    *v25 = v23;
  }

  return result;
}

uint64_t sub_1005DC704@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v10 = *a1;
  v11 = sub_1000F5104(&qword_10094EC68, &unk_1007B48B0);
  v12 = v11[12];
  v13 = v11[16];
  v14 = v11[20];
  *a6 = a2;
  *(a6 + 1) = a3;
  v15 = type metadata accessor for UUID();
  v16 = *(*(v15 - 8) + 16);
  v16(&a6[v12], a4, v15);
  v16(&a6[v13], a5, v15);
  *&a6[v14] = v10;
  type metadata accessor for RDDeduplicationActivity.CrashCleanError();
  swift_storeEnumTagMultiPayload();

  return swift_errorRetain();
}

uint64_t sub_1005DC81C@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = *(a2 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(a1);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v8 + 32))(v11, v3, v7);
    a1(v11);
    (*(v8 + 8))(v11, v7);
    v12 = *(a2 + 16);
    type metadata accessor for Result();
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    (*(*(*(a2 + 16) - 8) + 32))(a3, v3, *(a2 + 16));
    type metadata accessor for Result();

    return swift_storeEnumTagMultiPayload();
  }
}

uint64_t sub_1005DC9F0()
{
  v1 = *(v0 + 24);

  sub_10000607C((v0 + 40));
  v2 = *(v0 + 80);

  sub_10000607C((v0 + 96));
  v3 = *(v0 + 136);

  v4 = *(v0 + 152);

  return v0;
}

uint64_t sub_1005DCA40()
{
  sub_1005DC9F0();

  return swift_deallocClassInstance();
}

uint64_t sub_1005DCA94@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + qword_10094E1D0);
  v4 = *((swift_isaMask & *v1) + 0x50);
  v5 = *((swift_isaMask & *v1) + 0x58);
  a1[3] = type metadata accessor for RDDeduplicationActivity.Executable();
  a1[4] = &off_1008F9E70;
  a1[5] = &off_1008F9E80;
  *a1 = v3;
}

uint64_t sub_1005DCB38()
{
  v1 = v0;
  v2 = (*(v0 + qword_10094E1C8) + OBJC_IVAR____TtC7remindd22RDSentinelFileLocation_fileManager);
  v3 = v2[4];
  sub_10000F61C(v2, v2[3]);
  v4 = sub_10048C990();
  v5 = (*(v3 + 8))(v4);

  v6 = (v1 + qword_10094E1B8);
  v7 = *(v1 + qword_10094E1B8 + 24);
  v8 = v6[4];
  sub_10000F61C(v6, v7);
  v9 = *(v8 + 24);
  if (v5)
  {
    return (*(v9 + 16))(v7);
  }

  else
  {
    return (*(v9 + 8))(v7);
  }
}

uint64_t sub_1005DCC1C()
{
  v1 = v0;
  v2 = &v0[qword_10094E1B8];
  v4 = *&v0[qword_10094E1B8 + 24];
  v3 = *&v0[qword_10094E1B8 + 32];
  sub_10000F61C(v2, v4);
  if (!(*(*(v3 + 8) + 8))(v4))
  {
    if (qword_1009366A0 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100006654(v19, qword_10094E160);
    v20 = v1;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.fault.getter();

    if (!os_log_type_enabled(v11, v12))
    {
      goto LABEL_12;
    }

    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v25 = v14;
    *v13 = 136446210;
    v21 = sub_1005DCF0C();
    v23 = sub_10000668C(v21, v22, &v25);

    *(v13 + 4) = v23;
    v18 = "[%{public}s] configuration validation fail - cannot execute because configurations.approximatePerRunDeleteLimit is 0";
    goto LABEL_11;
  }

  v5 = (*&v1[qword_10094E1C8] + OBJC_IVAR____TtC7remindd22RDSentinelFileLocation_fileManager);
  v6 = v5[4];
  sub_10000F61C(v5, v5[3]);
  v7 = sub_10048C990();
  v8 = (*(v6 + 8))(v7);

  if (v8)
  {
    if (qword_1009366A0 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100006654(v9, qword_10094E160);
    v10 = v1;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v11, v12))
    {
      goto LABEL_12;
    }

    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v25 = v14;
    *v13 = 136446210;
    v15 = sub_1005DCF0C();
    v17 = sub_10000668C(v15, v16, &v25);

    *(v13 + 4) = v17;
    v18 = "[%{public}s] skipping execute because sentinel file exists";
LABEL_11:
    _os_log_impl(&_mh_execute_header, v11, v12, v18, v13, 0xCu);
    sub_10000607C(v14);

LABEL_12:

    return 0;
  }

  return 1;
}

uint64_t sub_1005DCF0C()
{
  swift_getObjectType();
  swift_getMetatypeMetadata();
  return String.init<A>(reflecting:)();
}

uint64_t sub_1005DCF6C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = swift_isaMask;
  v5 = type metadata accessor for RDExecutionIntervalThrottlingPolicy();
  v6 = v1;
  sub_1005DCB38();
  v8 = v7;
  v13 = v6;
  v9 = *((v4 & v3) + 0x50);
  v10 = *((v4 & v3) + 0x58);
  v11 = type metadata accessor for RDDeduplicationActivity();
  result = sub_10051F8B4(&v13, v8, v5, v11, &off_1008F9EC0);
  a1[3] = v5;
  a1[4] = &off_1008F5B28;
  *a1 = result;
  return result;
}

uint64_t sub_1005DD058@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  swift_beginAccess();
  return sub_100010364(v4 + v8, a4, a2, a3);
}

uint64_t sub_1005DD0C4()
{
  _StringGuts.grow(_:)(23);

  v0._countAndFlagsBits = sub_1005DCF0C();
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0x746973796261622ELL;
  v1._object = 0xEB00000000726574;
  String.append(_:)(v1);
  return 0x6C7070612E6D6F63;
}

id sub_1005DD168(void *a1)
{
  v1 = a1;
  sub_1005DD0C4();
  v3 = v2;

  if (v3)
  {
    v4 = String._bridgeToObjectiveC()();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

double sub_1005DD1E0()
{
  v1 = v0[3];
  v2 = v0[4];
  sub_10000F61C(v0, v1);
  v3 = (*(v2 + 8))(v1, v2);
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

uint64_t sub_1005DD25C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  sub_10000A87C(a1, v24);
  sub_1000F5104(&qword_10093D900, &qword_10079B610);
  v6 = *(v5 + 80);
  v7 = *(v5 + 88);
  type metadata accessor for RDDeduplicationActivity();
  if (swift_dynamicCast())
  {

    swift_beginAccess();
    v8 = v2[5];
    v9 = v2[6];
    sub_10000F61C(v2 + 2, v8);
    (*(v9 + 8))(v8, v9);
    swift_endAccess();
    return sub_10000607C(v24);
  }

  else
  {
    if (qword_1009366A0 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100006654(v11, qword_10094E160);
    sub_10000A87C(a1, v23);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v22 = v15;
      *v14 = 136446210;
      sub_10000A87C(v23, v21);
      v16 = String.init<A>(describing:)();
      v18 = v17;
      sub_10000607C(v23);
      v19 = sub_10000668C(v16, v18, &v22);

      *(v14 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v12, v13, "[RDDeduplicationActivity.ExecutionDateStorage] lastExecutedDate(for:) must work with RDDeduplicationActivity only {executable: %{public}s}", v14, 0xCu);
      sub_10000607C(v15);
    }

    else
    {

      sub_10000607C(v23);
    }

    sub_10000607C(v24);
    v20 = type metadata accessor for Date();
    return (*(*(v20 - 8) + 56))(a2, 1, 1, v20);
  }
}

uint64_t sub_1005DD508(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v26 - v8;
  sub_10000A87C(a1, v29);
  sub_1000F5104(&qword_10093D900, &qword_10079B610);
  v10 = *(v5 + 80);
  v11 = *(v5 + 88);
  type metadata accessor for RDDeduplicationActivity();
  if (swift_dynamicCast())
  {

    v12 = type metadata accessor for Date();
    v13 = *(v12 - 8);
    (*(v13 + 16))(v9, a2, v12);
    (*(v13 + 56))(v9, 0, 1, v12);
    swift_beginAccess();
    v14 = v2[5];
    v15 = v2[6];
    sub_10000C9DC((v2 + 2), v14);
    (*(v15 + 16))(v9, v14, v15);
    swift_endAccess();
  }

  else
  {
    if (qword_1009366A0 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100006654(v16, qword_10094E160);
    sub_10000A87C(a1, v28);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v27 = v20;
      *v19 = 136446210;
      sub_10000A87C(v28, v26);
      v21 = String.init<A>(describing:)();
      v23 = v22;
      sub_10000607C(v28);
      v24 = sub_10000668C(v21, v23, &v27);

      *(v19 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v17, v18, "[RDDeduplicationActivity.ExecutionDateStorage] updateLastExecutedDate(for:) must work with RDDeduplicationActivity only {executable: %{public}s}", v19, 0xCu);
      sub_10000607C(v20);
    }

    else
    {

      sub_10000607C(v28);
    }
  }

  return sub_10000607C(v29);
}

void sub_1005DD888(void *a1)
{
  v1 = *((swift_isaMask & *a1) + 0x50);
  v2 = *((swift_isaMask & *a1) + 0x58);
  sub_1005E15A8();
}

id sub_1005DD8C8()
{
  v1 = *((swift_isaMask & *v0) + 0x50);
  v2 = *((swift_isaMask & *v0) + 0x58);
  v4.receiver = v0;
  v4.super_class = type metadata accessor for RDDeduplicationActivity();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_1005DD938(uint64_t a1)
{
  sub_1000050A4(a1 + qword_10094E198, &unk_10093E4F0, &qword_1007A9640);
  sub_10000607C((a1 + qword_10094E1A0));
  sub_1000050A4(a1 + qword_10094E1A8, &unk_10093D8F0, &unk_10079B600);

  sub_10000607C((a1 + qword_10094E1B8));
  sub_10000607C((a1 + qword_10094E1C0));
  v2 = *(a1 + qword_10094E1C8);

  v3 = *(a1 + qword_10094E1D0);
}

uint64_t sub_1005DDB10@<X0>(SEL *a1@<X2>, void (*a2)(void)@<X3>, uint64_t (*a3)(void)@<X4>, uint64_t a4@<X8>)
{
  v8 = [v4 *a1];
  if (v8)
  {
    v9 = v8;
    a2();

    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = a3(0);
  v12 = *(*(v11 - 8) + 56);

  return v12(a4, v10, 1, v11);
}

void sub_1005DDBD4(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v6 = v4;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(a1, 1, v8);
  v11 = 0;
  if (v10 != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v9 + 8))(a1, v8);
    v11 = isa;
  }

  v13 = v11;
  [v6 *a4];
}

uint64_t sub_1005DDCE0(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = [v3 *a3];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v6;
}

void sub_1005DDD44(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  if (a1)
  {
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    isa = 0;
  }

  [v4 *a4];
}

id sub_1005DDDE0()
{
  v1 = [*v0 imageDeduplicationRateReduceFactor];

  return v1;
}

id sub_1005DDE48()
{
  v1 = [*v0 savedImageDeduplicationRateReduceFactor];

  return v1;
}

uint64_t sub_1005DDFBC()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for URL();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_initClassMetadata2();
    }
  }

  return result;
}

void sub_1005DE0D0()
{
  sub_100140DD4();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_initClassMetadata2();
  }
}

uint64_t sub_1005DE2C4()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 48);
  sub_10000F61C((v1 + 16), v2);
  return (*(*(v3 + 24) + 8))(v2);
}

uint64_t sub_1005DE314()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 48);
  sub_10000F61C((v1 + 16), v2);
  return (*(*(v3 + 24) + 16))(v2);
}

uint64_t sub_1005DE364()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 48);
  sub_10000F61C((v1 + 16), v2);
  return (*(*(v3 + 16) + 8))(v2);
}

uint64_t sub_1005DE3B4()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 48);
  sub_10000F61C((v1 + 16), v2);
  return (*(*(v3 + 8) + 8))(v2);
}

uint64_t sub_1005DE404()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1005DE43C()
{
  v1 = *(*v0 + 24);
  v2 = *(*v0 + 16);
  ObjectType = swift_getObjectType();
  return (*(v1 + 8))(ObjectType, v1);
}

uint64_t sub_1005DE490(uint64_t a1)
{
  v3 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v11 - v5;
  v7 = *(*v1 + 24);
  v8 = *(*v1 + 16);
  ObjectType = swift_getObjectType();
  sub_100010364(a1, v6, &unk_100938850, qword_100795AE0);
  (*(v7 + 16))(v6, ObjectType, v7);
  return sub_1000050A4(a1, &unk_100938850, qword_100795AE0);
}

uint64_t sub_1005DE578()
{
  v1 = *(*v0 + 24);
  v2 = *(*v0 + 16);
  ObjectType = swift_getObjectType();
  return (*(v1 + 32))(ObjectType, v1);
}

uint64_t sub_1005DE5BC(uint64_t a1)
{
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  ObjectType = swift_getObjectType();
  return (*(v3 + 40))(a1, ObjectType, v3);
}

id sub_1005DE6C8(void *a1)
{
  v2.receiver = a1;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "init");
}

uint64_t sub_1005DE730()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 48);
  sub_10000F61C((v1 + 16), v2);
  return (*(*(v3 + 24) + 8))(v2);
}

uint64_t sub_1005DE780()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 48);
  sub_10000F61C((v1 + 16), v2);
  return (*(*(v3 + 24) + 16))(v2);
}

uint64_t sub_1005DE7D0()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 48);
  sub_10000F61C((v1 + 16), v2);
  return (*(*(v3 + 16) + 8))(v2);
}

uint64_t sub_1005DE820()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 48);
  sub_10000F61C((v1 + 16), v2);
  return (*(*(v3 + 8) + 8))(v2);
}

uint64_t sub_1005DE870()
{
  v1 = *(*v0 + 24);
  v2 = *(*v0 + 16);
  ObjectType = swift_getObjectType();
  return (*(v1 + 8))(ObjectType, v1);
}

uint64_t sub_1005DE8C4(uint64_t a1)
{
  v3 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v11 - v5;
  v7 = *(*v1 + 24);
  v8 = *(*v1 + 16);
  ObjectType = swift_getObjectType();
  sub_100010364(a1, v6, &unk_100938850, qword_100795AE0);
  (*(v7 + 16))(v6, ObjectType, v7);
  return sub_1000050A4(a1, &unk_100938850, qword_100795AE0);
}

uint64_t sub_1005DE9AC()
{
  v1 = *(*v0 + 24);
  v2 = *(*v0 + 16);
  ObjectType = swift_getObjectType();
  return (*(v1 + 32))(ObjectType, v1);
}

uint64_t sub_1005DE9F0(uint64_t a1)
{
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  ObjectType = swift_getObjectType();
  return (*(v3 + 40))(a1, ObjectType, v3);
}

uint64_t sub_1005DEAF4()
{
  v9 = &unk_1007B46D8;
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    swift_getTupleTypeLayout2();
    v10 = &v8;
    result = type metadata accessor for URL();
    if (v3 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      swift_getTupleTypeLayout3();
      v11 = &v7;
      swift_getTupleTypeLayout3();
      v12 = &v6;
      swift_getTupleTypeLayout();
      v13 = &v5;
      swift_initEnumMetadataMultiPayload();
      return 0;
    }
  }

  return result;
}

char *sub_1005DEC5C(char *a1, char *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v14 = *a2;
    *a1 = *a2;
    a1 = (v14 + ((v5 + 16) & ~v5));
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        v29 = type metadata accessor for UUID();
        (*(*(v29 - 8) + 16))(a1, a2, v29);
        v30 = *(sub_1000F5104(&qword_10094EB68, &qword_1007B4698) + 48);
        v31 = *&a2[v30];
        *&a1[v30] = v31;
        v32 = v31;
      }

      else
      {
        *a1 = *a2;
        v15 = *(a2 + 2);
        *(a1 + 2) = v15;
        swift_unknownObjectRetain();
        v16 = v15;
      }
    }

    else if (EnumCaseMultiPayload == 2)
    {
      v17 = type metadata accessor for URL();
      (*(*(v17 - 8) + 16))(a1, a2, v17);
      v18 = sub_1000F5104(&qword_10094EB70, &qword_1007B46A0);
      v19 = *(v18 + 48);
      v20 = type metadata accessor for UUID();
      (*(*(v20 - 8) + 16))(&a1[v19], &a2[v19], v20);
      v21 = *(v18 + 64);
      v22 = *&a2[v21];
      *&a1[v21] = v22;
      v23 = v22;
    }

    else
    {
      v7 = *a2;
      if (EnumCaseMultiPayload == 3)
      {
        swift_errorRetain();
        *a1 = v7;
        v8 = sub_1000F5104(&qword_10094EB78, &qword_1007B46A8);
        v9 = *(v8 + 48);
        v10 = type metadata accessor for UUID();
        (*(*(v10 - 8) + 16))(&a1[v9], &a2[v9], v10);
        v11 = *(v8 + 64);
      }

      else
      {
        swift_errorRetain();
        *a1 = v7;
        v24 = sub_1000F5104(qword_10094EB80, &unk_1007B46B0);
        v25 = v24[12];
        v26 = type metadata accessor for URL();
        (*(*(v26 - 8) + 16))(&a1[v25], &a2[v25], v26);
        v27 = v24[16];
        v28 = type metadata accessor for UUID();
        (*(*(v28 - 8) + 16))(&a1[v27], &a2[v27], v28);
        v11 = v24[20];
      }

      v12 = *&a2[v11];
      *&a1[v11] = v12;
      v13 = v12;
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

void sub_1005DEFAC(char *a1)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        return;
      }

      v10 = type metadata accessor for UUID();
      (*(*(v10 - 8) + 8))(a1, v10);
      v9 = *(sub_1000F5104(&qword_10094EB68, &qword_1007B4698) + 48);
    }

    else
    {
      v18 = *a1;
      swift_unknownObjectRelease();
      v9 = 16;
    }
  }

  else
  {
    switch(EnumCaseMultiPayload)
    {
      case 2:
        v11 = type metadata accessor for URL();
        (*(*(v11 - 8) + 8))(a1, v11);
        v12 = &qword_10094EB70;
        v13 = &qword_1007B46A0;
        break;
      case 3:
        v14 = *a1;

        v12 = &qword_10094EB78;
        v13 = &qword_1007B46A8;
        break;
      case 4:
        v3 = *a1;

        v4 = sub_1000F5104(qword_10094EB80, &unk_1007B46B0);
        v5 = v4[12];
        v6 = type metadata accessor for URL();
        (*(*(v6 - 8) + 8))(&a1[v5], v6);
        v7 = v4[16];
        v8 = type metadata accessor for UUID();
        (*(*(v8 - 8) + 8))(&a1[v7], v8);
        v9 = v4[20];
        goto LABEL_13;
      default:
        return;
    }

    v15 = sub_1000F5104(v12, v13);
    v16 = *(v15 + 48);
    v17 = type metadata accessor for UUID();
    (*(*(v17 - 8) + 8))(&a1[v16], v17);
    v9 = *(v15 + 64);
  }

LABEL_13:
  v19 = *&a1[v9];
}

uint64_t sub_1005DF1D8(uint64_t a1, uint64_t *a2)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v26 = type metadata accessor for UUID();
      (*(*(v26 - 8) + 16))(a1, a2, v26);
      v27 = *(sub_1000F5104(&qword_10094EB68, &qword_1007B4698) + 48);
      v28 = *(a2 + v27);
      *(a1 + v27) = v28;
      v29 = v28;
    }

    else
    {
      *a1 = *a2;
      v12 = a2[2];
      *(a1 + 16) = v12;
      swift_unknownObjectRetain();
      v13 = v12;
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v14 = type metadata accessor for URL();
    (*(*(v14 - 8) + 16))(a1, a2, v14);
    v15 = sub_1000F5104(&qword_10094EB70, &qword_1007B46A0);
    v16 = *(v15 + 48);
    v17 = type metadata accessor for UUID();
    (*(*(v17 - 8) + 16))(a1 + v16, a2 + v16, v17);
    v18 = *(v15 + 64);
    v19 = *(a2 + v18);
    *(a1 + v18) = v19;
    v20 = v19;
  }

  else
  {
    v5 = *a2;
    if (EnumCaseMultiPayload == 3)
    {
      swift_errorRetain();
      *a1 = v5;
      v6 = sub_1000F5104(&qword_10094EB78, &qword_1007B46A8);
      v7 = *(v6 + 48);
      v8 = type metadata accessor for UUID();
      (*(*(v8 - 8) + 16))(a1 + v7, a2 + v7, v8);
      v9 = *(v6 + 64);
    }

    else
    {
      swift_errorRetain();
      *a1 = v5;
      v21 = sub_1000F5104(qword_10094EB80, &unk_1007B46B0);
      v22 = v21[12];
      v23 = type metadata accessor for URL();
      (*(*(v23 - 8) + 16))(a1 + v22, a2 + v22, v23);
      v24 = v21[16];
      v25 = type metadata accessor for UUID();
      (*(*(v25 - 8) + 16))(a1 + v24, a2 + v24, v25);
      v9 = v21[20];
    }

    v10 = *(a2 + v9);
    *(a1 + v9) = v10;
    v11 = v10;
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t *sub_1005DF4DC(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    (*(*(a3 - 8) + 8))(a1, a3);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        v27 = type metadata accessor for UUID();
        (*(*(v27 - 8) + 16))(a1, a2, v27);
        v28 = *(sub_1000F5104(&qword_10094EB68, &qword_1007B4698) + 48);
        v29 = *(a2 + v28);
        *(a1 + v28) = v29;
        v30 = v29;
      }

      else
      {
        *a1 = *a2;
        v13 = a2[2];
        a1[2] = v13;
        swift_unknownObjectRetain();
        v14 = v13;
      }
    }

    else if (EnumCaseMultiPayload == 2)
    {
      v15 = type metadata accessor for URL();
      (*(*(v15 - 8) + 16))(a1, a2, v15);
      v16 = sub_1000F5104(&qword_10094EB70, &qword_1007B46A0);
      v17 = *(v16 + 48);
      v18 = type metadata accessor for UUID();
      (*(*(v18 - 8) + 16))(a1 + v17, a2 + v17, v18);
      v19 = *(v16 + 64);
      v20 = *(a2 + v19);
      *(a1 + v19) = v20;
      v21 = v20;
    }

    else
    {
      v6 = *a2;
      if (EnumCaseMultiPayload == 3)
      {
        swift_errorRetain();
        *a1 = v6;
        v7 = sub_1000F5104(&qword_10094EB78, &qword_1007B46A8);
        v8 = *(v7 + 48);
        v9 = type metadata accessor for UUID();
        (*(*(v9 - 8) + 16))(a1 + v8, a2 + v8, v9);
        v10 = *(v7 + 64);
      }

      else
      {
        swift_errorRetain();
        *a1 = v6;
        v22 = sub_1000F5104(qword_10094EB80, &unk_1007B46B0);
        v23 = v22[12];
        v24 = type metadata accessor for URL();
        (*(*(v24 - 8) + 16))(a1 + v23, a2 + v23, v24);
        v25 = v22[16];
        v26 = type metadata accessor for UUID();
        (*(*(v26 - 8) + 16))(a1 + v25, a2 + v25, v26);
        v10 = v22[20];
      }

      v11 = *(a2 + v10);
      *(a1 + v10) = v11;
      v12 = v11;
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

char *sub_1005DF818(char *a1, char *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      *a1 = *a2;
      v20 = sub_1000F5104(&qword_10094EB78, &qword_1007B46A8);
      v21 = *(v20 + 48);
      v22 = type metadata accessor for UUID();
      (*(*(v22 - 8) + 32))(&a1[v21], &a2[v21], v22);
      *&a1[*(v20 + 64)] = *&a2[*(v20 + 64)];
      goto LABEL_13;
    }

    if (EnumCaseMultiPayload == 4)
    {
      *a1 = *a2;
      v11 = sub_1000F5104(qword_10094EB80, &unk_1007B46B0);
      v12 = v11[12];
      v13 = type metadata accessor for URL();
      (*(*(v13 - 8) + 32))(&a1[v12], &a2[v12], v13);
      v14 = v11[16];
      v15 = type metadata accessor for UUID();
      (*(*(v15 - 8) + 32))(&a1[v14], &a2[v14], v15);
      *&a1[v11[20]] = *&a2[v11[20]];
      goto LABEL_13;
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 1)
    {
      v18 = type metadata accessor for UUID();
      (*(*(v18 - 8) + 32))(a1, a2, v18);
      v19 = sub_1000F5104(&qword_10094EB68, &qword_1007B4698);
      *&a1[*(v19 + 48)] = *&a2[*(v19 + 48)];
      goto LABEL_13;
    }

    if (EnumCaseMultiPayload == 2)
    {
      v7 = type metadata accessor for URL();
      (*(*(v7 - 8) + 32))(a1, a2, v7);
      v8 = sub_1000F5104(&qword_10094EB70, &qword_1007B46A0);
      v9 = *(v8 + 48);
      v10 = type metadata accessor for UUID();
      (*(*(v10 - 8) + 32))(&a1[v9], &a2[v9], v10);
      *&a1[*(v8 + 64)] = *&a2[*(v8 + 64)];
LABEL_13:
      swift_storeEnumTagMultiPayload();
      return a1;
    }
  }

  v16 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v16);
}

char *sub_1005DFB1C(char *a1, char *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  v5 = *(a3 - 8);
  (*(v5 + 8))(a1, a3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      *a1 = *a2;
      v20 = sub_1000F5104(&qword_10094EB78, &qword_1007B46A8);
      v21 = *(v20 + 48);
      v22 = type metadata accessor for UUID();
      (*(*(v22 - 8) + 32))(&a1[v21], &a2[v21], v22);
      *&a1[*(v20 + 64)] = *&a2[*(v20 + 64)];
      goto LABEL_14;
    }

    if (EnumCaseMultiPayload == 4)
    {
      *a1 = *a2;
      v11 = sub_1000F5104(qword_10094EB80, &unk_1007B46B0);
      v12 = v11[12];
      v13 = type metadata accessor for URL();
      (*(*(v13 - 8) + 32))(&a1[v12], &a2[v12], v13);
      v14 = v11[16];
      v15 = type metadata accessor for UUID();
      (*(*(v15 - 8) + 32))(&a1[v14], &a2[v14], v15);
      *&a1[v11[20]] = *&a2[v11[20]];
      goto LABEL_14;
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 1)
    {
      v18 = type metadata accessor for UUID();
      (*(*(v18 - 8) + 32))(a1, a2, v18);
      v19 = sub_1000F5104(&qword_10094EB68, &qword_1007B4698);
      *&a1[*(v19 + 48)] = *&a2[*(v19 + 48)];
      goto LABEL_14;
    }

    if (EnumCaseMultiPayload == 2)
    {
      v7 = type metadata accessor for URL();
      (*(*(v7 - 8) + 32))(a1, a2, v7);
      v8 = sub_1000F5104(&qword_10094EB70, &qword_1007B46A0);
      v9 = *(v8 + 48);
      v10 = type metadata accessor for UUID();
      (*(*(v10 - 8) + 32))(&a1[v9], &a2[v9], v10);
      *&a1[*(v8 + 64)] = *&a2[*(v8 + 64)];
LABEL_14:
      swift_storeEnumTagMultiPayload();
      return a1;
    }
  }

  v16 = *(v5 + 64);

  return memcpy(a1, a2, v16);
}

void *sub_1005DFEC0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *(v2 + 24);
  v5 = *(v2 + 16);
  result = sub_1005D6E0C(*a1, a1[1], v4);
  *a2 = result;
  return result;
}

uint64_t sub_1005DFF24@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1005D7B08();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1005E0000@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[3];
  v4 = v2[4];
  return sub_1005DC4CC(v2[2], v2[5], a1, a2);
}

uint64_t sub_1005E0024@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  return sub_1005DC704(a1, v2[4], v2[5], v2[6], v2[7], a2);
}

uint64_t sub_1005E0064@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_1005DBF14(a1);
}

uint64_t sub_1005E0088@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v6 = *(v5 + 16);
  v7 = *(v5 + 24);
  return sub_1005DC008(a1, a2, a3, a4, *(v5 + 32), *(v5 + 40), a5);
}

uint64_t sub_1005E0094(char *a1)
{
  v4 = *(v1 + 32);
  v3 = *(v1 + 40);
  v5 = *a1;
  v6 = *(a1 + 1);
  v7 = sub_1000F5104(&qword_10094EC60, &qword_1007B48A8);
  return v4(v5, v6, &a1[*(v7 + 48)], &a1[*(v7 + 64)]);
}

uint64_t sub_1005E0108(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1005E0150(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  UUID.uuidString.getter();
  v7 = String._bridgeToObjectiveC()();

  v8 = [a1 storeForAccountIdentifier:v7];

  if (v8)
  {
    KeyPath = swift_getKeyPath();
    v10 = sub_1003EF82C(KeyPath);

    sub_1000060C8(0, &qword_100939DF0, off_1008D4188);
    v11 = [objc_allocWithZone(NSFetchRequest) init];
    v12 = [swift_getObjCClassFromMetadata() entity];
    [v11 setEntity:v12];

    [v11 setAffectedStores:0];
    [v11 setPredicate:v10];

    sub_1000F5104(&unk_100939D60, &unk_1007959E0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1007953F0;
    *(v13 + 32) = v8;
    sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
    v14 = v8;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v11 setAffectedStores:isa];

    [v11 setFetchBatchSize:a4];
    sub_1000F5104(&unk_100938E80, &unk_1007959D0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_100791320;
    *(v16 + 32) = 0x656D614E656C6966;
    *(v16 + 40) = 0xE800000000000000;
    *(v16 + 56) = &type metadata for String;
    *(v16 + 64) = 0x696669746E656469;
    *(v16 + 72) = 0xEA00000000007265;
    *(v16 + 120) = &type metadata for String;
    *(v16 + 88) = &type metadata for String;
    *(v16 + 96) = 0x7553323135616873;
    *(v16 + 104) = 0xE90000000000006DLL;
    v17 = Array._bridgeToObjectiveC()().super.isa;

    [v11 setPropertiesToFetch:v17];

    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1007953F0;
    sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
    swift_getKeyPath();
    *(v18 + 32) = NSSortDescriptor.init<A, B>(keyPath:ascending:)();
    v19 = Array._bridgeToObjectiveC()().super.isa;

    [v11 setSortDescriptors:v19];

    v20 = NSManagedObjectContext.fetch<A>(_:)();
    if (v4)
    {
    }

    else
    {
      sub_1002712AC(v20);
    }
  }

  else
  {
    v21 = objc_opt_self();
    sub_1000F5104(&unk_100936FD0, &unk_100795D40);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100791300;
    *(inited + 32) = UUID.uuidString.getter();
    *(inited + 40) = v23;
    sub_1001A5660(inited);
    swift_setDeallocating();
    sub_100034610(inited + 32);
    v24 = Set._bridgeToObjectiveC()().super.isa;

    [v21 accountStoreMissingError:v24];

    swift_willThrow();
  }
}

uint64_t sub_1005E059C(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v46 = a2;
  v55 = a1;
  v54 = type metadata accessor for UUID();
  v6 = *(v54 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v54);
  v53 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  v10 = sub_1003EF82C(KeyPath);

  v11 = swift_getKeyPath();
  v12 = sub_10004FAEC(a3);
  v13 = sub_1003EF6EC(v11, v12);

  sub_1000F5104(qword_10094ECA0, &unk_1007B4A20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100791340;
  *(inited + 32) = v10;
  *(inited + 40) = v13;
  v45 = v13;
  v44 = v10;
  v15 = sub_10000C2B0(inited);
  v16 = sub_1000060C8(0, &qword_100939DF0, off_1008D4188);
  v17 = [objc_allocWithZone(NSFetchRequest) init];
  v42 = v16;
  v18 = [swift_getObjCClassFromMetadata() entity];
  [v17 setEntity:v18];

  [v17 setAffectedStores:0];
  v43 = v17;
  [v17 setPredicate:v15];

  v48 = _swiftEmptyArrayStorage;
  v57 = _swiftEmptyArrayStorage;
  v19 = *(a4 + 56);
  v49 = a4 + 56;
  v20 = 1 << *(a4 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v19;
  v23 = (v20 + 63) >> 6;
  v51 = v6 + 16;
  v52 = v6;
  v50 = v6 + 8;
  v56 = a4;

  v25 = 0;
  if (!v22)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_4:
    while (1)
    {
      v26 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
      v28 = v52;
      v27 = v53;
      v29 = v54;
      (*(v52 + 16))(v53, *(v56 + 48) + *(v52 + 72) * (v26 | (v25 << 6)), v54);
      UUID.uuidString.getter();
      v30 = String._bridgeToObjectiveC()();

      v31 = [v55 storeForAccountIdentifier:v30];

      result = (*(v28 + 8))(v27, v29);
      if (v31)
      {
        break;
      }

      if (!v22)
      {
        goto LABEL_6;
      }
    }

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v57 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v57 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v33 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v48 = v57;
  }

  while (v22);
  while (1)
  {
LABEL_6:
    v32 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      __break(1u);
      return result;
    }

    if (v32 >= v23)
    {
      break;
    }

    v22 = *(v49 + 8 * v32);
    ++v25;
    if (v22)
    {
      v25 = v32;
      goto LABEL_4;
    }
  }

  sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v35 = v43;
  [v43 setAffectedStores:isa];

  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_100791300;
  *(v36 + 56) = &type metadata for String;
  *(v36 + 32) = 0x696669746E656469;
  *(v36 + 40) = 0xEA00000000007265;
  v37 = Array._bridgeToObjectiveC()().super.isa;

  [v35 setPropertiesToFetch:v37];

  v38 = Array._bridgeToObjectiveC()().super.isa;
  [v35 setRelationshipKeyPathsForPrefetching:v38];

  v39 = v46;
  v40 = v47;
  v41 = NSManagedObjectContext.fetch<A>(_:)();
  if (v40)
  {
  }

  else
  {
    v39 = sub_1002712AC(v41);
  }

  return v39;
}

void *sub_1005E0AB4(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  UUID.uuidString.getter();
  v8 = String._bridgeToObjectiveC()();

  v9 = [a1 storeForAccountIdentifier:v8];

  if (v9)
  {
    v10 = objc_opt_self();
    isa = UUID._bridgeToObjectiveC()().super.isa;
    v12 = [v10 objectIDWithUUID:isa];

    sub_1000F5104(&unk_10094EC90, &unk_1007B38E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100791340;
    v14 = v12;
    v15 = sub_1005BDBEC(v12, 0x60u);

    *(inited + 32) = v15;
    KeyPath = swift_getKeyPath();
    v17 = sub_1003EF858(KeyPath);

    *(inited + 40) = v17;
    v18 = sub_10000C2B0(inited);
    type metadata accessor for REMCDSavedAttachment();
    v19 = [objc_allocWithZone(NSFetchRequest) init];
    v20 = [swift_getObjCClassFromMetadata() entity];
    [v19 setEntity:v20];

    [v19 setAffectedStores:0];
    [v19 setPredicate:v18];

    sub_1000F5104(&unk_100939D60, &unk_1007959E0);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1007953F0;
    *(v21 + 32) = v9;
    sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
    v22 = v9;
    v23 = Array._bridgeToObjectiveC()().super.isa;

    [v19 setAffectedStores:v23];

    [v19 setFetchBatchSize:a4];
    sub_1000F5104(&unk_100938E80, &unk_1007959D0);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_100791320;
    *(v24 + 32) = 0x656D614E656C6966;
    *(v24 + 40) = 0xE800000000000000;
    *(v24 + 56) = &type metadata for String;
    *(v24 + 64) = 0x696669746E656469;
    *(v24 + 72) = 0xEA00000000007265;
    *(v24 + 120) = &type metadata for String;
    *(v24 + 88) = &type metadata for String;
    *(v24 + 96) = 0x7553323135616873;
    *(v24 + 104) = 0xE90000000000006DLL;
    v25 = Array._bridgeToObjectiveC()().super.isa;

    [v19 setPropertiesToFetch:v25];

    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1007953F0;
    sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
    swift_getKeyPath();
    *(v26 + 32) = NSSortDescriptor.init<A, B>(keyPath:ascending:)();
    v27 = Array._bridgeToObjectiveC()().super.isa;

    [v19 setSortDescriptors:v27];

    v28 = a2;
    v29 = NSManagedObjectContext.fetch<A>(_:)();
    if (v4)
    {
    }

    else
    {
      v28 = sub_1002712B8(v29);
    }
  }

  else
  {
    v30 = objc_opt_self();
    sub_1000F5104(&unk_100936FD0, &unk_100795D40);
    v31 = swift_initStackObject();
    *(v31 + 16) = xmmword_100791300;
    *(v31 + 32) = UUID.uuidString.getter();
    *(v31 + 40) = v32;
    sub_1001A5660(v31);
    swift_setDeallocating();
    sub_100034610(v31 + 32);
    v28 = Set._bridgeToObjectiveC()().super.isa;

    [v30 accountStoreMissingError:v28];

    swift_willThrow();
  }

  return v28;
}

uint64_t sub_1005E0F9C(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v53 = a2;
  v62 = a1;
  v61 = type metadata accessor for UUID();
  v6 = *(v61 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v61);
  v60 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000F5104(&unk_10094EC90, &unk_1007B38E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100791340;
  KeyPath = swift_getKeyPath();
  v11 = sub_100392308(KeyPath, 1701603686, 0xE400000000000000);

  *(inited + 32) = v11;
  v12 = swift_getKeyPath();
  v13 = sub_100392308(v12, 0x6567616D69, 0xE500000000000000);

  *(inited + 40) = v13;
  v14 = sub_100025060(inited);
  v15 = swift_getKeyPath();
  v16 = sub_1003EF858(v15);

  v17 = swift_getKeyPath();
  v18 = sub_10004FAEC(a3);
  v19 = sub_1003EF6C8(v17, v18);

  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_100791320;
  *(v20 + 32) = v14;
  *(v20 + 40) = v16;
  *(v20 + 48) = v19;
  v52 = v19;
  v50 = v14;
  v51 = v16;
  v21 = sub_10000C2B0(v20);
  v22 = type metadata accessor for REMCDSavedAttachment();
  v23 = [objc_allocWithZone(NSFetchRequest) init];
  v48 = v22;
  v24 = [swift_getObjCClassFromMetadata() entity];
  [v23 setEntity:v24];

  [v23 setAffectedStores:0];
  v49 = v23;
  [v23 setPredicate:v21];

  v55 = _swiftEmptyArrayStorage;
  v64 = _swiftEmptyArrayStorage;
  v25 = *(a4 + 56);
  v56 = a4 + 56;
  v26 = 1 << *(a4 + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & v25;
  v29 = (v26 + 63) >> 6;
  v58 = v6 + 16;
  v59 = v6;
  v57 = v6 + 8;
  v63 = a4;

  v31 = 0;
  if (!v28)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_4:
    while (1)
    {
      v32 = __clz(__rbit64(v28));
      v28 &= v28 - 1;
      v33 = v59;
      v34 = v60;
      v35 = v61;
      (*(v59 + 16))(v60, *(v63 + 48) + *(v59 + 72) * (v32 | (v31 << 6)), v61);
      UUID.uuidString.getter();
      v36 = String._bridgeToObjectiveC()();

      v37 = [v62 storeForAccountIdentifier:v36];

      result = (*(v33 + 8))(v34, v35);
      if (v37)
      {
        break;
      }

      if (!v28)
      {
        goto LABEL_6;
      }
    }

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v64 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v64 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v39 = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v55 = v64;
  }

  while (v28);
  while (1)
  {
LABEL_6:
    v38 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      __break(1u);
      return result;
    }

    if (v38 >= v29)
    {
      break;
    }

    v28 = *(v56 + 8 * v38);
    ++v31;
    if (v28)
    {
      v31 = v38;
      goto LABEL_4;
    }
  }

  sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v41 = v49;
  [v49 setAffectedStores:isa];

  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_100791300;
  *(v42 + 56) = &type metadata for String;
  *(v42 + 32) = 0x696669746E656469;
  *(v42 + 40) = 0xEA00000000007265;
  v43 = Array._bridgeToObjectiveC()().super.isa;

  [v41 setPropertiesToFetch:v43];

  v44 = Array._bridgeToObjectiveC()().super.isa;
  [v41 setRelationshipKeyPathsForPrefetching:v44];

  v45 = v53;
  v46 = v54;
  v47 = NSManagedObjectContext.fetch<A>(_:)();
  if (v46)
  {
  }

  else
  {
    v45 = sub_1002712B8(v47);
  }

  return v45;
}

uint64_t sub_1005E15FC()
{
  v5 = &unk_1007B4418;
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    swift_getTupleTypeLayout3();
    v6 = &v4;
    swift_getTupleTypeLayout();
    v7 = &v3;
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

char *sub_1005E16DC(char *a1, char *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v12 = *a2;
    *a1 = *a2;
    a1 = (v12 + ((v5 + 16) & ~v5));
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v7 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 1) = v7;

    if (EnumCaseMultiPayload == 2)
    {
      v13 = sub_1000F5104(&qword_10094EC68, &unk_1007B48B0);
      v14 = v13[12];
      v15 = type metadata accessor for UUID();
      v16 = *(*(v15 - 8) + 16);
      v16(&a1[v14], &a2[v14], v15);
      v16(&a1[v13[16]], &a2[v13[16]], v15);
      v17 = v13[20];
      v18 = *&a2[v17];
      swift_errorRetain();
      *&a1[v17] = v18;
    }

    else if (EnumCaseMultiPayload == 1)
    {
      v8 = sub_1000F5104(&qword_10094EC60, &qword_1007B48A8);
      v9 = *(v8 + 48);
      v10 = type metadata accessor for UUID();
      v11 = *(*(v10 - 8) + 16);
      v11(&a1[v9], &a2[v9], v10);
      v11(&a1[*(v8 + 64)], &a2[*(v8 + 64)], v10);
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t sub_1005E18CC(uint64_t a1)
{
  result = swift_getEnumCaseMultiPayload();
  switch(result)
  {
    case 2:
      v9 = *(a1 + 8);

      v10 = sub_1000F5104(&qword_10094EC68, &unk_1007B48B0);
      v11 = v10[12];
      v12 = type metadata accessor for UUID();
      v13 = *(*(v12 - 8) + 8);
      v13(a1 + v11, v12);
      v13(a1 + v10[16], v12);
      v14 = *(a1 + v10[20]);

    case 1:
      v4 = *(a1 + 8);

      v5 = sub_1000F5104(&qword_10094EC60, &qword_1007B48A8);
      v6 = *(v5 + 48);
      v7 = type metadata accessor for UUID();
      v15 = *(*(v7 - 8) + 8);
      (v15)((v7 - 8), a1 + v6, v7);
      v8 = a1 + *(v5 + 64);

      return v15(v8, v7);
    case 0:
      v3 = *(a1 + 8);
  }

  return result;
}

char *sub_1005E1A98(char *a1, char *a2)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v5;

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v6 = sub_1000F5104(&qword_10094EC68, &unk_1007B48B0);
      v7 = v6[12];
      v8 = type metadata accessor for UUID();
      v9 = *(*(v8 - 8) + 16);
      v9(&a1[v7], &a2[v7], v8);
      v9(&a1[v6[16]], &a2[v6[16]], v8);
      v10 = v6[20];
      v11 = *&a2[v10];
      swift_errorRetain();
      *&a1[v10] = v11;
    }

    else
    {
      v12 = sub_1000F5104(&qword_10094EC60, &qword_1007B48A8);
      v13 = *(v12 + 48);
      v14 = type metadata accessor for UUID();
      v15 = *(*(v14 - 8) + 16);
      v15(&a1[v13], &a2[v13], v14);
      v15(&a1[*(v12 + 64)], &a2[*(v12 + 64)], v14);
    }
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

char *sub_1005E1C24(char *a1, char *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    (*(*(a3 - 8) + 8))(a1, a3);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    *a1 = *a2;
    *(a1 + 1) = *(a2 + 1);

    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v6 = sub_1000F5104(&qword_10094EC68, &unk_1007B48B0);
        v7 = v6[12];
        v8 = type metadata accessor for UUID();
        v9 = *(*(v8 - 8) + 16);
        v9(&a1[v7], &a2[v7], v8);
        v9(&a1[v6[16]], &a2[v6[16]], v8);
        v10 = v6[20];
        v11 = *&a2[v10];
        swift_errorRetain();
        *&a1[v10] = v11;
      }

      else
      {
        v12 = sub_1000F5104(&qword_10094EC60, &qword_1007B48A8);
        v13 = *(v12 + 48);
        v14 = type metadata accessor for UUID();
        v15 = *(*(v14 - 8) + 16);
        v15(&a1[v13], &a2[v13], v14);
        v15(&a1[*(v12 + 64)], &a2[*(v12 + 64)], v14);
      }
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

char *sub_1005E1DF0(char *a1, char *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    *a1 = *a2;
    v11 = sub_1000F5104(&qword_10094EC68, &unk_1007B48B0);
    v12 = v11[12];
    v13 = type metadata accessor for UUID();
    v14 = *(*(v13 - 8) + 32);
    v14(&a1[v12], &a2[v12], v13);
    v14(&a1[v11[16]], &a2[v11[16]], v13);
    *&a1[v11[20]] = *&a2[v11[20]];
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    *a1 = *a2;
    v7 = sub_1000F5104(&qword_10094EC60, &qword_1007B48A8);
    v8 = *(v7 + 48);
    v9 = type metadata accessor for UUID();
    v10 = *(*(v9 - 8) + 32);
    v10(&a1[v8], &a2[v8], v9);
    v10(&a1[*(v7 + 64)], &a2[*(v7 + 64)], v9);
LABEL_5:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v16 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v16);
}

char *sub_1005E1FC0(char *a1, char *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  v5 = *(a3 - 8);
  (*(v5 + 8))(a1, a3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    *a1 = *a2;
    v11 = sub_1000F5104(&qword_10094EC68, &unk_1007B48B0);
    v12 = v11[12];
    v13 = type metadata accessor for UUID();
    v14 = *(*(v13 - 8) + 32);
    v14(&a1[v12], &a2[v12], v13);
    v14(&a1[v11[16]], &a2[v11[16]], v13);
    *&a1[v11[20]] = *&a2[v11[20]];
    goto LABEL_6;
  }

  if (EnumCaseMultiPayload == 1)
  {
    *a1 = *a2;
    v7 = sub_1000F5104(&qword_10094EC60, &qword_1007B48A8);
    v8 = *(v7 + 48);
    v9 = type metadata accessor for UUID();
    v10 = *(*(v9 - 8) + 32);
    v10(&a1[v8], &a2[v8], v9);
    v10(&a1[*(v7 + 64)], &a2[*(v7 + 64)], v9);
LABEL_6:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v16 = *(v5 + 64);

  return memcpy(a1, a2, v16);
}

uint64_t sub_1005E2238(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v10[3] = swift_getObjectType();
  v10[0] = a2;
  v9[3] = swift_getObjectType();
  v9[0] = a3;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v7 = v6(v10, v9);
  sub_10000607C(v9);
  sub_10000607C(v10);
  return v7;
}

void *sub_1005E22C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100026EF4(0, v1, 0);
  v3 = a1 + 64;
  v4 = -1 << *(a1 + 32);
  result = _HashTable.startBucket.getter();
  v6 = result;
  v7 = 0;
  v24 = v1;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
  {
    v9 = v6 >> 6;
    if ((*(v3 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_21;
    }

    v25 = v7;
    v26 = *(a1 + 36);
    v10 = (*(a1 + 48) + 16 * v6);
    v27 = *v10;
    v28 = v10[1];

    result = String.init<A>(_:)();
    v11 = result;
    v13 = v12;
    v15 = _swiftEmptyArrayStorage[2];
    v14 = _swiftEmptyArrayStorage[3];
    if (v15 >= v14 >> 1)
    {
      result = sub_100026EF4((v14 > 1), v15 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v15 + 1;
    v16 = &_swiftEmptyArrayStorage[2 * v15];
    v16[4] = v11;
    v16[5] = v13;
    v8 = 1 << *(a1 + 32);
    if (v6 >= v8)
    {
      goto LABEL_22;
    }

    v3 = a1 + 64;
    v17 = *(a1 + 64 + 8 * v9);
    if ((v17 & (1 << v6)) == 0)
    {
      goto LABEL_23;
    }

    if (v26 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v18 = v17 & (-2 << (v6 & 0x3F));
    if (v18)
    {
      v8 = __clz(__rbit64(v18)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v19 = v9 << 6;
      v20 = v9 + 1;
      v21 = (a1 + 72 + 8 * v9);
      while (v20 < (v8 + 63) >> 6)
      {
        v23 = *v21++;
        v22 = v23;
        v19 += 64;
        ++v20;
        if (v23)
        {
          result = sub_100010E34(v6, v26, 0);
          v8 = __clz(__rbit64(v22)) + v19;
          goto LABEL_4;
        }
      }

      result = sub_100010E34(v6, v26, 0);
    }

LABEL_4:
    v7 = v25 + 1;
    v6 = v8;
    if (v25 + 1 == v24)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

void *sub_1005E2514(uint64_t a1)
{
  v23 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = __CocoaSet.count.getter();
    result = _swiftEmptyArrayStorage;
    if (!v2)
    {
      return result;
    }

    v28 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    result = __CocoaSet.startIndex.getter();
    v25 = result;
    v26 = v4;
    v27 = 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v2 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return result;
  }

  v28 = _swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  v5 = -1 << *(a1 + 32);
  result = _HashTable.startBucket.getter();
  v6 = *(a1 + 36);
  v25 = result;
  v26 = v6;
  v27 = 0;
LABEL_7:
  v7 = 0;
  while (v7 < v2)
  {
    if (__OFADD__(v7++, 1))
    {
      goto LABEL_31;
    }

    v11 = v25;
    v10 = v26;
    v12 = v27;
    sub_100411AE4(v25, v26, v27, a1);
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    v13 = v28[2];
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    result = specialized ContiguousArray._endMutation()();
    if (v23)
    {
      if (!v12)
      {
        goto LABEL_35;
      }

      if (__CocoaSet.Index.handleBitPattern.getter())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      sub_1000F5104(&qword_100946070, &qword_1007A7668);
      v8 = Set.Index._asCocoa.modify();
      __CocoaSet.formIndex(after:isUnique:)();
      result = v8(v24, 0);
      if (v7 == v2)
      {
LABEL_28:
        sub_100010E34(v25, v26, v27);
        return v28;
      }
    }

    else
    {
      if (v12)
      {
        goto LABEL_36;
      }

      if ((v11 & 0x8000000000000000) != 0)
      {
        goto LABEL_32;
      }

      v14 = 1 << *(a1 + 32);
      if (v11 >= v14)
      {
        goto LABEL_32;
      }

      v15 = v11 >> 6;
      v16 = *(a1 + 56 + 8 * (v11 >> 6));
      if (((v16 >> v11) & 1) == 0)
      {
        goto LABEL_33;
      }

      if (*(a1 + 36) != v10)
      {
        goto LABEL_34;
      }

      v17 = v16 & (-2 << (v11 & 0x3F));
      if (v17)
      {
        v14 = __clz(__rbit64(v17)) | v11 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v18 = v15 << 6;
        v19 = v15 + 1;
        v20 = (a1 + 64 + 8 * v15);
        while (v19 < (v14 + 63) >> 6)
        {
          v22 = *v20++;
          v21 = v22;
          v18 += 64;
          ++v19;
          if (v22)
          {
            result = sub_100010E34(v11, v10, 0);
            v14 = __clz(__rbit64(v21)) + v18;
            goto LABEL_27;
          }
        }

        result = sub_100010E34(v11, v10, 0);
      }

LABEL_27:
      v25 = v14;
      v26 = v10;
      v27 = 0;
      if (v7 == v2)
      {
        goto LABEL_28;
      }
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

void *sub_1005E2810(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100026EF4(0, v1, 0);
  v3 = a1 + 64;
  v4 = -1 << *(a1 + 32);
  result = _HashTable.startBucket.getter();
  v6 = result;
  v7 = 0;
  v22 = v1;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
  {
    v9 = v6 >> 6;
    if ((*(v3 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_21;
    }

    v23 = *(a1 + 36);
    v10 = (*(a1 + 48) + 16 * v6);
    v11 = v10[1];
    v24 = *v10;
    v12 = _swiftEmptyArrayStorage[2];
    v13 = _swiftEmptyArrayStorage[3];

    if (v12 >= v13 >> 1)
    {
      result = sub_100026EF4((v13 > 1), v12 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v12 + 1;
    v14 = &_swiftEmptyArrayStorage[2 * v12];
    v14[4] = v24;
    v14[5] = v11;
    v8 = 1 << *(a1 + 32);
    if (v6 >= v8)
    {
      goto LABEL_22;
    }

    v3 = a1 + 64;
    v15 = *(a1 + 64 + 8 * v9);
    if ((v15 & (1 << v6)) == 0)
    {
      goto LABEL_23;
    }

    if (v23 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v16 = v15 & (-2 << (v6 & 0x3F));
    if (v16)
    {
      v8 = __clz(__rbit64(v16)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v17 = v9 << 6;
      v18 = v9 + 1;
      v19 = (a1 + 72 + 8 * v9);
      while (v18 < (v8 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          result = sub_100010E34(v6, v23, 0);
          v8 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      result = sub_100010E34(v6, v23, 0);
    }

LABEL_4:
    ++v7;
    v6 = v8;
    if (v7 == v22)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

id sub_1005E2A38(void *a1)
{
  sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
  v137 = a1;
  v2 = [a1 entityName];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [ObjCClassFromMetadata entity];
  if (!v7)
  {

    if (qword_100935B58 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100006654(v16, qword_10093B6F8);
    v17 = v137;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v133 = swift_slowAlloc();
      v135 = v133;
      *v20 = 138412546;
      *(v20 + 4) = v17;
      *v21 = v17;
      *(v20 + 12) = 2080;
      v22 = v17;
      v23 = [ObjCClassFromMetadata description];
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;

      v27 = sub_10000668C(v24, v26, &v135);

      *(v20 + 14) = v27;
      v28 = ObjCClassFromMetadata;
      _os_log_impl(&_mh_execute_header, v18, v19, "Failed to get entity for CDObject {remObjectID: %@, CDObject: %s}", v20, 0x16u);
      sub_1000050A4(v21, &unk_100938E70, &unk_100797230);

      sub_10000607C(v133);
    }

    else
    {

      v28 = ObjCClassFromMetadata;
    }

    v50 = objc_opt_self();
    v135 = 0;
    v136 = 0xE000000000000000;
    _StringGuts.grow(_:)(65);
    v51._countAndFlagsBits = 0xD000000000000030;
    v51._object = 0x80000001007FE260;
    String.append(_:)(v51);
    v52 = [v17 description];
    v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v55 = v54;

    v56._countAndFlagsBits = v53;
    v56._object = v55;
    String.append(_:)(v56);

    v57._countAndFlagsBits = 0x656A624F4443202CLL;
    v57._object = 0xEC000000203A7463;
    String.append(_:)(v57);
    v58 = [v28 description];
    v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v61 = v60;

    v62._countAndFlagsBits = v59;
    v62._object = v61;
    String.append(_:)(v62);

    v63._countAndFlagsBits = 125;
    v63._object = 0xE100000000000000;
    String.append(_:)(v63);
    v64 = String._bridgeToObjectiveC()();

    [v50 internalErrorWithDebugDescription:v64];

    swift_willThrow();
    goto LABEL_30;
  }

  v8 = v7;
  v9 = [v8 name];
  if (v9)
  {
    v10 = v9;
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    if (v11 == v3 && v13 == v5)
    {

      goto LABEL_22;
    }

    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v15)
    {

LABEL_22:

      return v137;
    }
  }

  v128 = v3;
  if (qword_100935B58 != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  sub_100006654(v29, qword_10093B6F8);
  v30 = v137;
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.info.getter();

  v130 = ObjCClassFromMetadata;
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v126 = swift_slowAlloc();
    v127 = swift_slowAlloc();
    v135 = v127;
    *v33 = 138412546;
    *(v33 + 4) = v30;
    *v126 = v30;
    *(v33 + 12) = 2080;
    v34 = v30;
    v35 = v8;
    v36 = [ObjCClassFromMetadata description];
    v37 = v30;
    v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v40 = v39;

    v41 = v38;
    v30 = v37;
    v42 = sub_10000668C(v41, v40, &v135);

    *(v33 + 14) = v42;
    v8 = v35;
    _os_log_impl(&_mh_execute_header, v31, v32, "cdEntity.name != entityName. Performing lookup {remObjectID: %@, CDObject: %s}", v33, 0x16u);
    sub_1000050A4(v126, &unk_100938E70, &unk_100797230);

    sub_10000607C(v127);
  }

  v43 = [v8 managedObjectModel];
  v44 = [v43 entitiesByName];

  sub_1000060C8(0, &unk_100947240, NSEntityDescription_ptr);
  v45 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v45 + 16))
  {

    goto LABEL_26;
  }

  v46 = sub_100005F4C(v128, v5);
  v48 = v47;

  if ((v48 & 1) == 0)
  {
LABEL_26:

    v129 = v8;
    v65 = [v8 managedObjectModel];
    v66 = [v65 entitiesByName];

    v67 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1005E22C8(v67);

    v68 = v30;

    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v131 = swift_slowAlloc();
      v135 = swift_slowAlloc();
      *v71 = 138412802;
      *(v71 + 4) = v68;
      *v131 = v68;
      *(v71 + 12) = 2080;
      v72 = v68;
      v73 = [v130 description];
      v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v76 = v75;

      v77 = sub_10000668C(v74, v76, &v135);
      v78 = v130;

      *(v71 + 14) = v77;
      *(v71 + 22) = 2080;
      v79 = Array.description.getter();
      v81 = sub_10000668C(v79, v80, &v135);

      *(v71 + 24) = v81;
      _os_log_impl(&_mh_execute_header, v69, v70, "CoreData entity not found for remObjectID.entity {remObjectID: %@, CDObject: %s, momEntityNames: %s}", v71, 0x20u);
      sub_1000050A4(v131, &unk_100938E70, &unk_100797230);

      swift_arrayDestroy();
    }

    else
    {

      v78 = v130;
    }

    v82 = objc_opt_self();
    v135 = 0;
    v136 = 0xE000000000000000;
    _StringGuts.grow(_:)(100);
    v83._countAndFlagsBits = 0xD00000000000003FLL;
    v83._object = 0x80000001007FE2A0;
    String.append(_:)(v83);
    v84 = [v68 description];
    v85 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v87 = v86;

    v88._countAndFlagsBits = v85;
    v88._object = v87;
    String.append(_:)(v88);

    v89._countAndFlagsBits = 0x656A624F4443202CLL;
    v89._object = 0xEC000000203A7463;
    String.append(_:)(v89);
    v90 = [v78 description];
    v91 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v93 = v92;

    v94._countAndFlagsBits = v91;
    v94._object = v93;
    String.append(_:)(v94);

    v95._object = 0x80000001007FE2E0;
    v95._countAndFlagsBits = 0xD000000000000012;
    String.append(_:)(v95);
    v96 = Array.description.getter();
    v98 = v97;

    v99._countAndFlagsBits = v96;
    v99._object = v98;
    String.append(_:)(v99);

    v100._countAndFlagsBits = 125;
    v100._object = 0xE100000000000000;
    String.append(_:)(v100);
    v101 = String._bridgeToObjectiveC()();

    [v82 internalErrorWithDebugDescription:v101];

    swift_willThrow();
LABEL_30:

    return v137;
  }

  v49 = *(*(v45 + 56) + 8 * v46);

  if (![v49 isKindOfEntity:v8])
  {
    v103 = v30;
    v104 = Logger.logObject.getter();
    v105 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v104, v105))
    {
      v106 = swift_slowAlloc();
      v132 = swift_slowAlloc();
      v134 = swift_slowAlloc();
      v135 = v134;
      *v106 = 138412546;
      *(v106 + 4) = v103;
      *v132 = v103;
      *(v106 + 12) = 2080;
      v107 = v103;
      v108 = v8;
      v109 = [v130 description];
      v110 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v111 = v49;
      v113 = v112;

      v114 = sub_10000668C(v110, v113, &v135);
      v49 = v111;

      *(v106 + 14) = v114;
      v8 = v108;
      _os_log_impl(&_mh_execute_header, v104, v105, "ObjectID entity is not a subentity of the requested CDObject's entity {remObjectID: %@, CDObject: %s}", v106, 0x16u);
      sub_1000050A4(v132, &unk_100938E70, &unk_100797230);

      sub_10000607C(v134);
    }

    v115 = objc_opt_self();
    v135 = 0;
    v136 = 0xE000000000000000;
    _StringGuts.grow(_:)(101);
    v116._countAndFlagsBits = 0xD000000000000054;
    v116._object = 0x80000001007FE300;
    String.append(_:)(v116);
    v117 = [v103 description];
    v118 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v120 = v119;

    v121._countAndFlagsBits = v118;
    v121._object = v120;
    String.append(_:)(v121);

    v122._countAndFlagsBits = 0x656A624F4443202CLL;
    v122._object = 0xEC000000203A7463;
    String.append(_:)(v122);
    v123._countAndFlagsBits = _typeName(_:qualified:)();
    String.append(_:)(v123);

    v124._countAndFlagsBits = 125;
    v124._object = 0xE100000000000000;
    String.append(_:)(v124);
    v125 = String._bridgeToObjectiveC()();

    [v115 internalErrorWithDebugDescription:v125];

    swift_willThrow();
    goto LABEL_30;
  }

  return v137;
}

id sub_1005E3810(void *a1, unint64_t *a2, uint64_t *a3)
{
  sub_1000060C8(0, a2, a3);
  v139 = a1;
  v4 = [a1 entityName];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = [ObjCClassFromMetadata entity];
  if (!v9)
  {

    if (qword_100935B58 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100006654(v18, qword_10093B6F8);
    v19 = v139;
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v135 = swift_slowAlloc();
      v137 = v135;
      *v22 = 138412546;
      *(v22 + 4) = v19;
      *v23 = v19;
      *(v22 + 12) = 2080;
      v24 = v19;
      v25 = [ObjCClassFromMetadata description];
      v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v28 = v27;

      v29 = sub_10000668C(v26, v28, &v137);

      *(v22 + 14) = v29;
      v30 = ObjCClassFromMetadata;
      _os_log_impl(&_mh_execute_header, v20, v21, "Failed to get entity for CDObject {remObjectID: %@, CDObject: %s}", v22, 0x16u);
      sub_1000050A4(v23, &unk_100938E70, &unk_100797230);

      sub_10000607C(v135);
    }

    else
    {

      v30 = ObjCClassFromMetadata;
    }

    v52 = objc_opt_self();
    v137 = 0;
    v138 = 0xE000000000000000;
    _StringGuts.grow(_:)(65);
    v53._countAndFlagsBits = 0xD000000000000030;
    v53._object = 0x80000001007FE260;
    String.append(_:)(v53);
    v54 = [v19 description];
    v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v57 = v56;

    v58._countAndFlagsBits = v55;
    v58._object = v57;
    String.append(_:)(v58);

    v59._countAndFlagsBits = 0x656A624F4443202CLL;
    v59._object = 0xEC000000203A7463;
    String.append(_:)(v59);
    v60 = [v30 description];
    v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v63 = v62;

    v64._countAndFlagsBits = v61;
    v64._object = v63;
    String.append(_:)(v64);

    v65._countAndFlagsBits = 125;
    v65._object = 0xE100000000000000;
    String.append(_:)(v65);
    v66 = String._bridgeToObjectiveC()();

    [v52 internalErrorWithDebugDescription:v66];

    swift_willThrow();
    goto LABEL_30;
  }

  v10 = v9;
  v11 = [v10 name];
  if (v11)
  {
    v12 = v11;
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    if (v13 == v5 && v15 == v7)
    {

      goto LABEL_22;
    }

    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v17)
    {

LABEL_22:

      return v139;
    }
  }

  v130 = v5;
  if (qword_100935B58 != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  sub_100006654(v31, qword_10093B6F8);
  v32 = v139;
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.info.getter();

  v132 = ObjCClassFromMetadata;
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v128 = swift_slowAlloc();
    v129 = swift_slowAlloc();
    v137 = v129;
    *v35 = 138412546;
    *(v35 + 4) = v32;
    *v128 = v32;
    *(v35 + 12) = 2080;
    v36 = v32;
    v37 = v10;
    v38 = [ObjCClassFromMetadata description];
    v39 = v32;
    v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v42 = v41;

    v43 = v40;
    v32 = v39;
    v44 = sub_10000668C(v43, v42, &v137);

    *(v35 + 14) = v44;
    v10 = v37;
    _os_log_impl(&_mh_execute_header, v33, v34, "cdEntity.name != entityName. Performing lookup {remObjectID: %@, CDObject: %s}", v35, 0x16u);
    sub_1000050A4(v128, &unk_100938E70, &unk_100797230);

    sub_10000607C(v129);
  }

  v45 = [v10 managedObjectModel];
  v46 = [v45 entitiesByName];

  sub_1000060C8(0, &unk_100947240, NSEntityDescription_ptr);
  v47 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v47 + 16))
  {

    goto LABEL_26;
  }

  v48 = sub_100005F4C(v130, v7);
  v50 = v49;

  if ((v50 & 1) == 0)
  {
LABEL_26:

    v131 = v10;
    v67 = [v10 managedObjectModel];
    v68 = [v67 entitiesByName];

    v69 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1005E22C8(v69);

    v70 = v32;

    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v133 = swift_slowAlloc();
      v137 = swift_slowAlloc();
      *v73 = 138412802;
      *(v73 + 4) = v70;
      *v133 = v70;
      *(v73 + 12) = 2080;
      v74 = v70;
      v75 = [v132 description];
      v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v78 = v77;

      v79 = sub_10000668C(v76, v78, &v137);
      v80 = v132;

      *(v73 + 14) = v79;
      *(v73 + 22) = 2080;
      v81 = Array.description.getter();
      v83 = sub_10000668C(v81, v82, &v137);

      *(v73 + 24) = v83;
      _os_log_impl(&_mh_execute_header, v71, v72, "CoreData entity not found for remObjectID.entity {remObjectID: %@, CDObject: %s, momEntityNames: %s}", v73, 0x20u);
      sub_1000050A4(v133, &unk_100938E70, &unk_100797230);

      swift_arrayDestroy();
    }

    else
    {

      v80 = v132;
    }

    v84 = objc_opt_self();
    v137 = 0;
    v138 = 0xE000000000000000;
    _StringGuts.grow(_:)(100);
    v85._countAndFlagsBits = 0xD00000000000003FLL;
    v85._object = 0x80000001007FE2A0;
    String.append(_:)(v85);
    v86 = [v70 description];
    v87 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v89 = v88;

    v90._countAndFlagsBits = v87;
    v90._object = v89;
    String.append(_:)(v90);

    v91._countAndFlagsBits = 0x656A624F4443202CLL;
    v91._object = 0xEC000000203A7463;
    String.append(_:)(v91);
    v92 = [v80 description];
    v93 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v95 = v94;

    v96._countAndFlagsBits = v93;
    v96._object = v95;
    String.append(_:)(v96);

    v97._object = 0x80000001007FE2E0;
    v97._countAndFlagsBits = 0xD000000000000012;
    String.append(_:)(v97);
    v98 = Array.description.getter();
    v100 = v99;

    v101._countAndFlagsBits = v98;
    v101._object = v100;
    String.append(_:)(v101);

    v102._countAndFlagsBits = 125;
    v102._object = 0xE100000000000000;
    String.append(_:)(v102);
    v103 = String._bridgeToObjectiveC()();

    [v84 internalErrorWithDebugDescription:v103];

    swift_willThrow();
LABEL_30:

    return v139;
  }

  v51 = *(*(v47 + 56) + 8 * v48);

  if (![v51 isKindOfEntity:v10])
  {
    v105 = v32;
    v106 = Logger.logObject.getter();
    v107 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v106, v107))
    {
      v108 = swift_slowAlloc();
      v134 = swift_slowAlloc();
      v136 = swift_slowAlloc();
      v137 = v136;
      *v108 = 138412546;
      *(v108 + 4) = v105;
      *v134 = v105;
      *(v108 + 12) = 2080;
      v109 = v105;
      v110 = v10;
      v111 = [v132 description];
      v112 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v113 = v51;
      v115 = v114;

      v116 = sub_10000668C(v112, v115, &v137);
      v51 = v113;

      *(v108 + 14) = v116;
      v10 = v110;
      _os_log_impl(&_mh_execute_header, v106, v107, "ObjectID entity is not a subentity of the requested CDObject's entity {remObjectID: %@, CDObject: %s}", v108, 0x16u);
      sub_1000050A4(v134, &unk_100938E70, &unk_100797230);

      sub_10000607C(v136);
    }

    v117 = objc_opt_self();
    v137 = 0;
    v138 = 0xE000000000000000;
    _StringGuts.grow(_:)(101);
    v118._countAndFlagsBits = 0xD000000000000054;
    v118._object = 0x80000001007FE300;
    String.append(_:)(v118);
    v119 = [v105 description];
    v120 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v122 = v121;

    v123._countAndFlagsBits = v120;
    v123._object = v122;
    String.append(_:)(v123);

    v124._countAndFlagsBits = 0x656A624F4443202CLL;
    v124._object = 0xEC000000203A7463;
    String.append(_:)(v124);
    v125._countAndFlagsBits = _typeName(_:qualified:)();
    String.append(_:)(v125);

    v126._countAndFlagsBits = 125;
    v126._object = 0xE100000000000000;
    String.append(_:)(v126);
    v127 = String._bridgeToObjectiveC()();

    [v117 internalErrorWithDebugDescription:v127];

    swift_willThrow();
    goto LABEL_30;
  }

  return v139;
}

void *sub_1005E45B0(void *a1)
{
  type metadata accessor for REMCDSavedAttachment();
  v2 = [a1 entityName];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [ObjCClassFromMetadata entity];
  if (!v7)
  {

    if (qword_100935B58 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100006654(v16, qword_10093B6F8);
    v17 = a1;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v135 = swift_slowAlloc();
      v138 = swift_slowAlloc();
      v140 = v138;
      *v20 = 138412546;
      *(v20 + 4) = v17;
      *v135 = v17;
      *(v20 + 12) = 2080;
      v21 = v17;
      v22 = ObjCClassFromMetadata;
      v23 = [ObjCClassFromMetadata description];
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = a1;
      v27 = v26;

      v28 = sub_10000668C(v24, v27, &v140);
      a1 = v25;

      *(v20 + 14) = v28;
      ObjCClassFromMetadata = v22;
      _os_log_impl(&_mh_execute_header, v18, v19, "Failed to get entity for CDObject {remObjectID: %@, CDObject: %s}", v20, 0x16u);
      sub_1000050A4(v135, &unk_100938E70, &unk_100797230);

      sub_10000607C(v138);
    }

    v29 = objc_opt_self();
    v140 = 0;
    v141 = 0xE000000000000000;
    _StringGuts.grow(_:)(65);
    v30._countAndFlagsBits = 0xD000000000000030;
    v30._object = 0x80000001007FE260;
    String.append(_:)(v30);
    v31 = [v17 description];
    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;

    v35._countAndFlagsBits = v32;
    v35._object = v34;
    String.append(_:)(v35);

    v36._countAndFlagsBits = 0x656A624F4443202CLL;
    v36._object = 0xEC000000203A7463;
    String.append(_:)(v36);
    v37 = [ObjCClassFromMetadata description];
    v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v40 = v39;

    v41._countAndFlagsBits = v38;
    v41._object = v40;
    String.append(_:)(v41);

    v42._countAndFlagsBits = 125;
    v42._object = 0xE100000000000000;
    String.append(_:)(v42);
    v43 = String._bridgeToObjectiveC()();

    [v29 internalErrorWithDebugDescription:v43];

    swift_willThrow();
    goto LABEL_28;
  }

  v8 = v7;
  v9 = [v8 name];
  if (v9)
  {
    v10 = v9;
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    if (v11 == v3 && v13 == v5)
    {

      goto LABEL_23;
    }

    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v15)
    {

LABEL_23:

      return a1;
    }
  }

  if (qword_100935B58 != -1)
  {
    swift_once();
  }

  v44 = type metadata accessor for Logger();
  sub_100006654(v44, qword_10093B6F8);
  v45 = a1;
  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.info.getter();

  v142 = ObjCClassFromMetadata;
  v131 = v3;
  v133 = v45;
  if (os_log_type_enabled(v46, v47))
  {
    v48 = v45;
    v49 = ObjCClassFromMetadata;
    v50 = swift_slowAlloc();
    v129 = swift_slowAlloc();
    v130 = swift_slowAlloc();
    v140 = v130;
    *v50 = 138412546;
    *(v50 + 4) = v48;
    *v129 = v48;
    *(v50 + 12) = 2080;
    v51 = v48;
    v52 = [v49 description];
    v53 = a1;
    v54 = v52;
    v55 = v8;
    v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v58 = v57;

    a1 = v53;
    v59 = sub_10000668C(v56, v58, &v140);

    *(v50 + 14) = v59;
    v8 = v55;
    _os_log_impl(&_mh_execute_header, v46, v47, "cdEntity.name != entityName. Performing lookup {remObjectID: %@, CDObject: %s}", v50, 0x16u);
    sub_1000050A4(v129, &unk_100938E70, &unk_100797230);

    sub_10000607C(v130);
  }

  v60 = [v8 managedObjectModel];
  v61 = [v60 entitiesByName];

  sub_1000060C8(0, &unk_100947240, NSEntityDescription_ptr);
  v62 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v62 + 16))
  {

    goto LABEL_25;
  }

  v63 = sub_100005F4C(v131, v5);
  v65 = v64;

  if ((v65 & 1) == 0)
  {
LABEL_25:

    v132 = v8;
    v67 = [v8 managedObjectModel];
    v68 = [v67 entitiesByName];

    v69 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1005E22C8(v69);

    v70 = v133;

    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v136 = swift_slowAlloc();
      v140 = swift_slowAlloc();
      *v73 = 138412802;
      *(v73 + 4) = v70;
      *v136 = v70;
      *(v73 + 12) = 2080;
      v74 = v70;
      v75 = [v142 description];
      v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v77 = a1;
      v79 = v78;

      v80 = sub_10000668C(v76, v79, &v140);
      a1 = v77;

      *(v73 + 14) = v80;
      *(v73 + 22) = 2080;
      v81 = Array.description.getter();
      v83 = sub_10000668C(v81, v82, &v140);

      *(v73 + 24) = v83;
      _os_log_impl(&_mh_execute_header, v71, v72, "CoreData entity not found for remObjectID.entity {remObjectID: %@, CDObject: %s, momEntityNames: %s}", v73, 0x20u);
      sub_1000050A4(v136, &unk_100938E70, &unk_100797230);

      swift_arrayDestroy();
    }

    v84 = objc_opt_self();
    v140 = 0;
    v141 = 0xE000000000000000;
    _StringGuts.grow(_:)(100);
    v85._countAndFlagsBits = 0xD00000000000003FLL;
    v85._object = 0x80000001007FE2A0;
    String.append(_:)(v85);
    v86 = [v70 description];
    v87 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v89 = v88;

    v90._countAndFlagsBits = v87;
    v90._object = v89;
    String.append(_:)(v90);

    v91._countAndFlagsBits = 0x656A624F4443202CLL;
    v91._object = 0xEC000000203A7463;
    String.append(_:)(v91);
    v92 = [v142 description];
    v93 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v95 = v94;

    v96._countAndFlagsBits = v93;
    v96._object = v95;
    String.append(_:)(v96);

    v97._object = 0x80000001007FE2E0;
    v97._countAndFlagsBits = 0xD000000000000012;
    String.append(_:)(v97);
    v98 = Array.description.getter();
    v100 = v99;

    v101._countAndFlagsBits = v98;
    v101._object = v100;
    String.append(_:)(v101);

    v102._countAndFlagsBits = 125;
    v102._object = 0xE100000000000000;
    String.append(_:)(v102);
    v103 = String._bridgeToObjectiveC()();

    [v84 internalErrorWithDebugDescription:v103];

    swift_willThrow();
    goto LABEL_28;
  }

  v66 = *(*(v62 + 56) + 8 * v63);

  if (![v66 isKindOfEntity:v8])
  {
    v105 = v133;
    v106 = Logger.logObject.getter();
    v107 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v106, v107))
    {
      v139 = v66;
      v108 = swift_slowAlloc();
      v134 = swift_slowAlloc();
      v137 = swift_slowAlloc();
      v140 = v137;
      *v108 = 138412546;
      *(v108 + 4) = v105;
      *v134 = v105;
      *(v108 + 12) = 2080;
      v109 = v105;
      v110 = v8;
      v111 = [v142 description];
      v112 = a1;
      v113 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v115 = v114;

      v116 = v113;
      a1 = v112;
      v117 = sub_10000668C(v116, v115, &v140);

      *(v108 + 14) = v117;
      v8 = v110;
      _os_log_impl(&_mh_execute_header, v106, v107, "ObjectID entity is not a subentity of the requested CDObject's entity {remObjectID: %@, CDObject: %s}", v108, 0x16u);
      sub_1000050A4(v134, &unk_100938E70, &unk_100797230);

      sub_10000607C(v137);

      v66 = v139;
    }

    v118 = objc_opt_self();
    v140 = 0;
    v141 = 0xE000000000000000;
    _StringGuts.grow(_:)(101);
    v119._countAndFlagsBits = 0xD000000000000054;
    v119._object = 0x80000001007FE300;
    String.append(_:)(v119);
    v120 = [v105 description];
    v121 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v123 = v122;

    v124._countAndFlagsBits = v121;
    v124._object = v123;
    String.append(_:)(v124);

    v125._countAndFlagsBits = 0x656A624F4443202CLL;
    v125._object = 0xEC000000203A7463;
    String.append(_:)(v125);
    v126._countAndFlagsBits = 0xD000000000000014;
    v126._object = 0x80000001007FE710;
    String.append(_:)(v126);
    v127._countAndFlagsBits = 125;
    v127._object = 0xE100000000000000;
    String.append(_:)(v127);
    v128 = String._bridgeToObjectiveC()();

    [v118 internalErrorWithDebugDescription:v128];

    swift_willThrow();
LABEL_28:

    return a1;
  }

  return a1;
}

void *sub_1005E5350(void *a1)
{
  type metadata accessor for REMCDManualSortHint();
  v2 = [a1 entityName];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [ObjCClassFromMetadata entity];
  if (!v7)
  {

    if (qword_100935B58 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100006654(v16, qword_10093B6F8);
    v17 = a1;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v135 = swift_slowAlloc();
      v138 = swift_slowAlloc();
      v140 = v138;
      *v20 = 138412546;
      *(v20 + 4) = v17;
      *v135 = v17;
      *(v20 + 12) = 2080;
      v21 = v17;
      v22 = ObjCClassFromMetadata;
      v23 = [ObjCClassFromMetadata description];
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = a1;
      v27 = v26;

      v28 = sub_10000668C(v24, v27, &v140);
      a1 = v25;

      *(v20 + 14) = v28;
      ObjCClassFromMetadata = v22;
      _os_log_impl(&_mh_execute_header, v18, v19, "Failed to get entity for CDObject {remObjectID: %@, CDObject: %s}", v20, 0x16u);
      sub_1000050A4(v135, &unk_100938E70, &unk_100797230);

      sub_10000607C(v138);
    }

    v29 = objc_opt_self();
    v140 = 0;
    v141 = 0xE000000000000000;
    _StringGuts.grow(_:)(65);
    v30._countAndFlagsBits = 0xD000000000000030;
    v30._object = 0x80000001007FE260;
    String.append(_:)(v30);
    v31 = [v17 description];
    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;

    v35._countAndFlagsBits = v32;
    v35._object = v34;
    String.append(_:)(v35);

    v36._countAndFlagsBits = 0x656A624F4443202CLL;
    v36._object = 0xEC000000203A7463;
    String.append(_:)(v36);
    v37 = [ObjCClassFromMetadata description];
    v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v40 = v39;

    v41._countAndFlagsBits = v38;
    v41._object = v40;
    String.append(_:)(v41);

    v42._countAndFlagsBits = 125;
    v42._object = 0xE100000000000000;
    String.append(_:)(v42);
    v43 = String._bridgeToObjectiveC()();

    [v29 internalErrorWithDebugDescription:v43];

    swift_willThrow();
    goto LABEL_28;
  }

  v8 = v7;
  v9 = [v8 name];
  if (v9)
  {
    v10 = v9;
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    if (v11 == v3 && v13 == v5)
    {

      goto LABEL_23;
    }

    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v15)
    {

LABEL_23:

      return a1;
    }
  }

  if (qword_100935B58 != -1)
  {
    swift_once();
  }

  v44 = type metadata accessor for Logger();
  sub_100006654(v44, qword_10093B6F8);
  v45 = a1;
  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.info.getter();

  v142 = ObjCClassFromMetadata;
  v131 = v3;
  v133 = v45;
  if (os_log_type_enabled(v46, v47))
  {
    v48 = v45;
    v49 = ObjCClassFromMetadata;
    v50 = swift_slowAlloc();
    v129 = swift_slowAlloc();
    v130 = swift_slowAlloc();
    v140 = v130;
    *v50 = 138412546;
    *(v50 + 4) = v48;
    *v129 = v48;
    *(v50 + 12) = 2080;
    v51 = v48;
    v52 = [v49 description];
    v53 = a1;
    v54 = v52;
    v55 = v8;
    v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v58 = v57;

    a1 = v53;
    v59 = sub_10000668C(v56, v58, &v140);

    *(v50 + 14) = v59;
    v8 = v55;
    _os_log_impl(&_mh_execute_header, v46, v47, "cdEntity.name != entityName. Performing lookup {remObjectID: %@, CDObject: %s}", v50, 0x16u);
    sub_1000050A4(v129, &unk_100938E70, &unk_100797230);

    sub_10000607C(v130);
  }

  v60 = [v8 managedObjectModel];
  v61 = [v60 entitiesByName];

  sub_1000060C8(0, &unk_100947240, NSEntityDescription_ptr);
  v62 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v62 + 16))
  {

    goto LABEL_25;
  }

  v63 = sub_100005F4C(v131, v5);
  v65 = v64;

  if ((v65 & 1) == 0)
  {
LABEL_25:

    v132 = v8;
    v67 = [v8 managedObjectModel];
    v68 = [v67 entitiesByName];

    v69 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1005E22C8(v69);

    v70 = v133;

    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v136 = swift_slowAlloc();
      v140 = swift_slowAlloc();
      *v73 = 138412802;
      *(v73 + 4) = v70;
      *v136 = v70;
      *(v73 + 12) = 2080;
      v74 = v70;
      v75 = [v142 description];
      v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v77 = a1;
      v79 = v78;

      v80 = sub_10000668C(v76, v79, &v140);
      a1 = v77;

      *(v73 + 14) = v80;
      *(v73 + 22) = 2080;
      v81 = Array.description.getter();
      v83 = sub_10000668C(v81, v82, &v140);

      *(v73 + 24) = v83;
      _os_log_impl(&_mh_execute_header, v71, v72, "CoreData entity not found for remObjectID.entity {remObjectID: %@, CDObject: %s, momEntityNames: %s}", v73, 0x20u);
      sub_1000050A4(v136, &unk_100938E70, &unk_100797230);

      swift_arrayDestroy();
    }

    v84 = objc_opt_self();
    v140 = 0;
    v141 = 0xE000000000000000;
    _StringGuts.grow(_:)(100);
    v85._countAndFlagsBits = 0xD00000000000003FLL;
    v85._object = 0x80000001007FE2A0;
    String.append(_:)(v85);
    v86 = [v70 description];
    v87 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v89 = v88;

    v90._countAndFlagsBits = v87;
    v90._object = v89;
    String.append(_:)(v90);

    v91._countAndFlagsBits = 0x656A624F4443202CLL;
    v91._object = 0xEC000000203A7463;
    String.append(_:)(v91);
    v92 = [v142 description];
    v93 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v95 = v94;

    v96._countAndFlagsBits = v93;
    v96._object = v95;
    String.append(_:)(v96);

    v97._object = 0x80000001007FE2E0;
    v97._countAndFlagsBits = 0xD000000000000012;
    String.append(_:)(v97);
    v98 = Array.description.getter();
    v100 = v99;

    v101._countAndFlagsBits = v98;
    v101._object = v100;
    String.append(_:)(v101);

    v102._countAndFlagsBits = 125;
    v102._object = 0xE100000000000000;
    String.append(_:)(v102);
    v103 = String._bridgeToObjectiveC()();

    [v84 internalErrorWithDebugDescription:v103];

    swift_willThrow();
    goto LABEL_28;
  }

  v66 = *(*(v62 + 56) + 8 * v63);

  if (![v66 isKindOfEntity:v8])
  {
    v105 = v133;
    v106 = Logger.logObject.getter();
    v107 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v106, v107))
    {
      v139 = v66;
      v108 = swift_slowAlloc();
      v134 = swift_slowAlloc();
      v137 = swift_slowAlloc();
      v140 = v137;
      *v108 = 138412546;
      *(v108 + 4) = v105;
      *v134 = v105;
      *(v108 + 12) = 2080;
      v109 = v105;
      v110 = v8;
      v111 = [v142 description];
      v112 = a1;
      v113 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v115 = v114;

      v116 = v113;
      a1 = v112;
      v117 = sub_10000668C(v116, v115, &v140);

      *(v108 + 14) = v117;
      v8 = v110;
      _os_log_impl(&_mh_execute_header, v106, v107, "ObjectID entity is not a subentity of the requested CDObject's entity {remObjectID: %@, CDObject: %s}", v108, 0x16u);
      sub_1000050A4(v134, &unk_100938E70, &unk_100797230);

      sub_10000607C(v137);

      v66 = v139;
    }

    v118 = objc_opt_self();
    v140 = 0;
    v141 = 0xE000000000000000;
    _StringGuts.grow(_:)(101);
    v119._countAndFlagsBits = 0xD000000000000054;
    v119._object = 0x80000001007FE300;
    String.append(_:)(v119);
    v120 = [v105 description];
    v121 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v123 = v122;

    v124._countAndFlagsBits = v121;
    v124._object = v123;
    String.append(_:)(v124);

    v125._countAndFlagsBits = 0x656A624F4443202CLL;
    v125._object = 0xEC000000203A7463;
    String.append(_:)(v125);
    v126._countAndFlagsBits = 0xD000000000000013;
    v126._object = 0x80000001007FE690;
    String.append(_:)(v126);
    v127._countAndFlagsBits = 125;
    v127._object = 0xE100000000000000;
    String.append(_:)(v127);
    v128 = String._bridgeToObjectiveC()();

    [v118 internalErrorWithDebugDescription:v128];

    swift_willThrow();
LABEL_28:

    return a1;
  }

  return a1;
}

void *sub_1005E60F0(void *a1)
{
  type metadata accessor for REMCDDueDateDeltaAlert();
  v2 = [a1 entityName];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [ObjCClassFromMetadata entity];
  if (!v7)
  {

    if (qword_100935B58 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100006654(v16, qword_10093B6F8);
    v17 = a1;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v135 = swift_slowAlloc();
      v138 = swift_slowAlloc();
      v140 = v138;
      *v20 = 138412546;
      *(v20 + 4) = v17;
      *v135 = v17;
      *(v20 + 12) = 2080;
      v21 = v17;
      v22 = ObjCClassFromMetadata;
      v23 = [ObjCClassFromMetadata description];
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = a1;
      v27 = v26;

      v28 = sub_10000668C(v24, v27, &v140);
      a1 = v25;

      *(v20 + 14) = v28;
      ObjCClassFromMetadata = v22;
      _os_log_impl(&_mh_execute_header, v18, v19, "Failed to get entity for CDObject {remObjectID: %@, CDObject: %s}", v20, 0x16u);
      sub_1000050A4(v135, &unk_100938E70, &unk_100797230);

      sub_10000607C(v138);
    }

    v29 = objc_opt_self();
    v140 = 0;
    v141 = 0xE000000000000000;
    _StringGuts.grow(_:)(65);
    v30._countAndFlagsBits = 0xD000000000000030;
    v30._object = 0x80000001007FE260;
    String.append(_:)(v30);
    v31 = [v17 description];
    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;

    v35._countAndFlagsBits = v32;
    v35._object = v34;
    String.append(_:)(v35);

    v36._countAndFlagsBits = 0x656A624F4443202CLL;
    v36._object = 0xEC000000203A7463;
    String.append(_:)(v36);
    v37 = [ObjCClassFromMetadata description];
    v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v40 = v39;

    v41._countAndFlagsBits = v38;
    v41._object = v40;
    String.append(_:)(v41);

    v42._countAndFlagsBits = 125;
    v42._object = 0xE100000000000000;
    String.append(_:)(v42);
    v43 = String._bridgeToObjectiveC()();

    [v29 internalErrorWithDebugDescription:v43];

    swift_willThrow();
    goto LABEL_28;
  }

  v8 = v7;
  v9 = [v8 name];
  if (v9)
  {
    v10 = v9;
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    if (v11 == v3 && v13 == v5)
    {

      goto LABEL_23;
    }

    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v15)
    {

LABEL_23:

      return a1;
    }
  }

  if (qword_100935B58 != -1)
  {
    swift_once();
  }

  v44 = type metadata accessor for Logger();
  sub_100006654(v44, qword_10093B6F8);
  v45 = a1;
  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.info.getter();

  v142 = ObjCClassFromMetadata;
  v131 = v3;
  v133 = v45;
  if (os_log_type_enabled(v46, v47))
  {
    v48 = v45;
    v49 = ObjCClassFromMetadata;
    v50 = swift_slowAlloc();
    v129 = swift_slowAlloc();
    v130 = swift_slowAlloc();
    v140 = v130;
    *v50 = 138412546;
    *(v50 + 4) = v48;
    *v129 = v48;
    *(v50 + 12) = 2080;
    v51 = v48;
    v52 = [v49 description];
    v53 = a1;
    v54 = v52;
    v55 = v8;
    v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v58 = v57;

    a1 = v53;
    v59 = sub_10000668C(v56, v58, &v140);

    *(v50 + 14) = v59;
    v8 = v55;
    _os_log_impl(&_mh_execute_header, v46, v47, "cdEntity.name != entityName. Performing lookup {remObjectID: %@, CDObject: %s}", v50, 0x16u);
    sub_1000050A4(v129, &unk_100938E70, &unk_100797230);

    sub_10000607C(v130);
  }

  v60 = [v8 managedObjectModel];
  v61 = [v60 entitiesByName];

  sub_1000060C8(0, &unk_100947240, NSEntityDescription_ptr);
  v62 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v62 + 16))
  {

    goto LABEL_25;
  }

  v63 = sub_100005F4C(v131, v5);
  v65 = v64;

  if ((v65 & 1) == 0)
  {
LABEL_25:

    v132 = v8;
    v67 = [v8 managedObjectModel];
    v68 = [v67 entitiesByName];

    v69 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1005E22C8(v69);

    v70 = v133;

    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v136 = swift_slowAlloc();
      v140 = swift_slowAlloc();
      *v73 = 138412802;
      *(v73 + 4) = v70;
      *v136 = v70;
      *(v73 + 12) = 2080;
      v74 = v70;
      v75 = [v142 description];
      v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v77 = a1;
      v79 = v78;

      v80 = sub_10000668C(v76, v79, &v140);
      a1 = v77;

      *(v73 + 14) = v80;
      *(v73 + 22) = 2080;
      v81 = Array.description.getter();
      v83 = sub_10000668C(v81, v82, &v140);

      *(v73 + 24) = v83;
      _os_log_impl(&_mh_execute_header, v71, v72, "CoreData entity not found for remObjectID.entity {remObjectID: %@, CDObject: %s, momEntityNames: %s}", v73, 0x20u);
      sub_1000050A4(v136, &unk_100938E70, &unk_100797230);

      swift_arrayDestroy();
    }

    v84 = objc_opt_self();
    v140 = 0;
    v141 = 0xE000000000000000;
    _StringGuts.grow(_:)(100);
    v85._countAndFlagsBits = 0xD00000000000003FLL;
    v85._object = 0x80000001007FE2A0;
    String.append(_:)(v85);
    v86 = [v70 description];
    v87 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v89 = v88;

    v90._countAndFlagsBits = v87;
    v90._object = v89;
    String.append(_:)(v90);

    v91._countAndFlagsBits = 0x656A624F4443202CLL;
    v91._object = 0xEC000000203A7463;
    String.append(_:)(v91);
    v92 = [v142 description];
    v93 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v95 = v94;

    v96._countAndFlagsBits = v93;
    v96._object = v95;
    String.append(_:)(v96);

    v97._object = 0x80000001007FE2E0;
    v97._countAndFlagsBits = 0xD000000000000012;
    String.append(_:)(v97);
    v98 = Array.description.getter();
    v100 = v99;

    v101._countAndFlagsBits = v98;
    v101._object = v100;
    String.append(_:)(v101);

    v102._countAndFlagsBits = 125;
    v102._object = 0xE100000000000000;
    String.append(_:)(v102);
    v103 = String._bridgeToObjectiveC()();

    [v84 internalErrorWithDebugDescription:v103];

    swift_willThrow();
    goto LABEL_28;
  }

  v66 = *(*(v62 + 56) + 8 * v63);

  if (![v66 isKindOfEntity:v8])
  {
    v105 = v133;
    v106 = Logger.logObject.getter();
    v107 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v106, v107))
    {
      v139 = v66;
      v108 = swift_slowAlloc();
      v134 = swift_slowAlloc();
      v137 = swift_slowAlloc();
      v140 = v137;
      *v108 = 138412546;
      *(v108 + 4) = v105;
      *v134 = v105;
      *(v108 + 12) = 2080;
      v109 = v105;
      v110 = v8;
      v111 = [v142 description];
      v112 = a1;
      v113 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v115 = v114;

      v116 = v113;
      a1 = v112;
      v117 = sub_10000668C(v116, v115, &v140);

      *(v108 + 14) = v117;
      v8 = v110;
      _os_log_impl(&_mh_execute_header, v106, v107, "ObjectID entity is not a subentity of the requested CDObject's entity {remObjectID: %@, CDObject: %s}", v108, 0x16u);
      sub_1000050A4(v134, &unk_100938E70, &unk_100797230);

      sub_10000607C(v137);

      v66 = v139;
    }

    v118 = objc_opt_self();
    v140 = 0;
    v141 = 0xE000000000000000;
    _StringGuts.grow(_:)(101);
    v119._countAndFlagsBits = 0xD000000000000054;
    v119._object = 0x80000001007FE300;
    String.append(_:)(v119);
    v120 = [v105 description];
    v121 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v123 = v122;

    v124._countAndFlagsBits = v121;
    v124._object = v123;
    String.append(_:)(v124);

    v125._countAndFlagsBits = 0x656A624F4443202CLL;
    v125._object = 0xEC000000203A7463;
    String.append(_:)(v125);
    v126._countAndFlagsBits = 0xD000000000000016;
    v126._object = 0x80000001007FE730;
    String.append(_:)(v126);
    v127._countAndFlagsBits = 125;
    v127._object = 0xE100000000000000;
    String.append(_:)(v127);
    v128 = String._bridgeToObjectiveC()();

    [v118 internalErrorWithDebugDescription:v128];

    swift_willThrow();
LABEL_28:

    return a1;
  }

  return a1;
}