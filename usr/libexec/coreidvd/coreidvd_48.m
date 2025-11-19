uint64_t sub_10050657C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[38] = a3;
  v4[39] = a4;
  v4[36] = a1;
  v4[37] = a2;
  v5 = type metadata accessor for DIPError.Code();
  v4[40] = v5;
  v6 = *(v5 - 8);
  v4[41] = v6;
  v7 = *(v6 + 64) + 15;
  v4[42] = swift_task_alloc();

  return _swift_task_switch(sub_100506640, 0, 0);
}

uint64_t sub_100506640()
{
  v2 = v0[38];
  v1 = v0[39];
  v3 = objc_allocWithZone(DCCredentialStore);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v5 = [v3 initWithPartitions:isa];
  v0[43] = v5;

  if (v2)
  {
    v6 = v0 + 10;
    v8 = v0[37];
    v7 = v0[38];
    v9 = v0[36];
    v10 = Array._bridgeToObjectiveC()().super.isa;
    v0[44] = v10;
    v11 = String._bridgeToObjectiveC()();
    v0[45] = v11;
    v0[10] = v0;
    v0[15] = v0 + 35;
    v0[11] = sub_1005068C8;
    v12 = swift_continuation_init();
    v0[33] = sub_100007224(&qword_10083C598, &qword_1006DAB78);
    v0[26] = _NSConcreteStackBlock;
    v0[27] = 1107296256;
    v0[28] = sub_100506480;
    v0[29] = &unk_100815A10;
    v0[30] = v12;
    [v5 credentialIdentifiersInPartitions:v10 docType:v11 completion:v0 + 26];
  }

  else
  {
    v6 = v0 + 2;
    v13 = v0[36];
    v14 = Array._bridgeToObjectiveC()().super.isa;
    v0[47] = v14;
    v0[2] = v0;
    v0[7] = v0 + 34;
    v0[3] = sub_100506A60;
    v15 = swift_continuation_init();
    v0[25] = sub_100007224(&qword_10083C598, &qword_1006DAB78);
    v0[18] = _NSConcreteStackBlock;
    v0[19] = 1107296256;
    v0[20] = sub_100506480;
    v0[21] = &unk_1008159E8;
    v0[22] = v15;
    [v5 credentialIdentifiersInPartitions:v14 completion:v0 + 18];
  }

  return _swift_continuation_await(v6);
}

uint64_t sub_1005068C8()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 368) = v2;
  if (v2)
  {
    v3 = sub_100506BEC;
  }

  else
  {
    v3 = sub_1005069D8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1005069D8()
{
  v2 = *(v0 + 352);
  v1 = *(v0 + 360);

  v3 = *(v0 + 280);
  v4 = *(v0 + 336);

  v5 = *(v0 + 8);

  return v5(v3);
}

uint64_t sub_100506A60()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 384) = v2;
  if (v2)
  {
    v3 = sub_100506D5C;
  }

  else
  {
    v3 = sub_100506B70;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100506B70()
{
  v1 = *(v0 + 376);

  v2 = *(v0 + 272);
  v3 = *(v0 + 336);

  v4 = *(v0 + 8);

  return v4(v2);
}

uint64_t sub_100506BEC()
{
  v1 = v0[45];
  v2 = v0[46];
  v4 = v0[43];
  v3 = v0[44];
  swift_willThrow();

  v5 = v0[46];
  (*(v0[41] + 104))(v0[42], enum case for DIPError.Code.internalError(_:), v0[40]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v6 = v0[1];

  return v6();
}

uint64_t sub_100506D5C()
{
  v1 = v0[47];
  v2 = v0[48];
  v3 = v0[43];
  swift_willThrow();

  v4 = v0[48];
  (*(v0[41] + 104))(v0[42], enum case for DIPError.Code.internalError(_:), v0[40]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v5 = v0[1];

  return v5();
}

uint64_t sub_100506EC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[22] = a3;
  v4[23] = a4;
  v4[20] = a1;
  v4[21] = a2;
  v5 = type metadata accessor for DIPError.Code();
  v4[24] = v5;
  v6 = *(v5 - 8);
  v4[25] = v6;
  v7 = *(v6 + 64) + 15;
  v4[26] = swift_task_alloc();

  return _swift_task_switch(sub_100506F8C, 0, 0);
}

uint64_t sub_100506F8C()
{
  v1 = v0[22];
  v2 = v0[23];
  v4 = v0[20];
  v3 = v0[21];
  v5 = objc_allocWithZone(DCCredentialStore);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v7 = [v5 initWithPartitions:isa];
  v0[27] = v7;

  v8 = String._bridgeToObjectiveC()();
  v0[28] = v8;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_100507124;
  v9 = swift_continuation_init();
  v0[17] = sub_100007224(&unk_100845DF0, &unk_1006BFA20);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100672A4C;
  v0[13] = &unk_1008159C0;
  v0[14] = v9;
  [v7 createCredentialInPartition:v8 options:v1 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100507124()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 232) = v2;
  if (v2)
  {
    v3 = sub_1005072BC;
  }

  else
  {
    v3 = sub_100507234;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100507234()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 208);

  v3 = *(v0 + 144);
  v4 = *(v0 + 152);

  v5 = *(v0 + 8);

  return v5(v3, v4);
}

uint64_t sub_1005072BC()
{
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[26];
  v4 = v0[27];
  v5 = v0[24];
  v6 = v0[25];
  swift_willThrow();

  (*(v6 + 104))(v3, enum case for DIPError.Code.internalError(_:), v5);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v7 = v0[1];

  return v7();
}

uint64_t sub_100507420(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[20] = a2;
  v3[21] = a3;
  v3[19] = a1;
  v4 = type metadata accessor for DIPError.Code();
  v3[22] = v4;
  v5 = *(v4 - 8);
  v3[23] = v5;
  v6 = *(v5 + 64) + 15;
  v3[24] = swift_task_alloc();

  return _swift_task_switch(sub_1005074E4, 0, 0);
}

uint64_t sub_1005074E4()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  v4 = objc_allocWithZone(DCCredentialStore);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v6 = [v4 initWithPartitions:isa];
  v0[25] = v6;

  v7 = String._bridgeToObjectiveC()();
  v0[26] = v7;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_100507670;
  v8 = swift_continuation_init();
  v0[17] = sub_100007224(&unk_10084A470, &unk_1006DD7D0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1004CF424;
  v0[13] = &unk_100815998;
  v0[14] = v8;
  [v6 generatePresentmentKeyForCredential:v7 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100507670()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 216) = v2;
  if (v2)
  {
    v3 = sub_100507780;
  }

  else
  {
    v3 = sub_100508414;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100507780()
{
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[24];
  v4 = v0[25];
  v5 = v0[22];
  v6 = v0[23];
  swift_willThrow();

  (*(v6 + 104))(v3, enum case for DIPError.Code.internalError(_:), v5);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v7 = v0[1];

  return v7();
}

uint64_t sub_1005078EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[22] = a5;
  v6[23] = a6;
  v6[20] = a3;
  v6[21] = a4;
  v6[18] = a1;
  v6[19] = a2;
  v7 = type metadata accessor for DIPError.Code();
  v6[24] = v7;
  v8 = *(v7 - 8);
  v6[25] = v8;
  v9 = *(v8 + 64) + 15;
  v6[26] = swift_task_alloc();

  return _swift_task_switch(sub_1005079B4, 0, 0);
}

uint64_t sub_1005079B4()
{
  v1 = v0[23];
  v13 = v0[22];
  v3 = v0[20];
  v2 = v0[21];
  v5 = v0[18];
  v4 = v0[19];
  v6 = objc_allocWithZone(DCCredentialStore);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v8 = [v6 initWithPartitions:isa];
  v0[27] = v8;

  v9 = String._bridgeToObjectiveC()();
  v0[28] = v9;
  v10 = Data._bridgeToObjectiveC()().super.isa;
  v0[29] = v10;
  v0[2] = v0;
  v0[3] = sub_100507B64;
  v11 = swift_continuation_init();
  v0[17] = sub_100007224(&unk_100843590, &qword_1006D8B10);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100429100;
  v0[13] = &unk_100815970;
  v0[14] = v11;
  [v8 replacePayloadOfCredential:v9 withPayload:v10 format:v13 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100507B64()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 240) = v2;
  if (v2)
  {
    v3 = sub_100507CF4;
  }

  else
  {
    v3 = sub_100507C74;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100507C74()
{
  v2 = *(v0 + 224);
  v1 = *(v0 + 232);
  v3 = *(v0 + 208);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100507CF4()
{
  v2 = v0[29];
  v1 = v0[30];
  v4 = v0[27];
  v3 = v0[28];
  v6 = v0[25];
  v5 = v0[26];
  v7 = v0[24];
  swift_willThrow();

  (*(v6 + 104))(v5, enum case for DIPError.Code.internalError(_:), v7);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v8 = v0[1];

  return v8();
}

uint64_t sub_100507E88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[20] = a2;
  v3[21] = a3;
  v3[19] = a1;
  v4 = type metadata accessor for DIPError.Code();
  v3[22] = v4;
  v5 = *(v4 - 8);
  v3[23] = v5;
  v6 = *(v5 + 64) + 15;
  v3[24] = swift_task_alloc();

  return _swift_task_switch(sub_100507F4C, 0, 0);
}

uint64_t sub_100507F4C()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  v4 = objc_allocWithZone(DCCredentialStore);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v6 = [v4 initWithPartitions:isa];
  v0[25] = v6;

  v7 = String._bridgeToObjectiveC()();
  v0[26] = v7;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1005080D8;
  v8 = swift_continuation_init();
  v0[17] = sub_100007224(&unk_10084A450, &unk_1006DC4D0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1004CF424;
  v0[13] = &unk_100815A38;
  v0[14] = v8;
  [v6 propertiesOfCredential:v7 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1005080D8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 216) = v2;
  if (v2)
  {
    v3 = sub_10050826C;
  }

  else
  {
    v3 = sub_1005081E8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1005081E8()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 192);

  v3 = *(v0 + 144);

  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_10050826C()
{
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[24];
  v4 = v0[25];
  v5 = v0[22];
  v6 = v0[23];
  swift_willThrow();

  (*(v6 + 104))(v3, enum case for DIPError.Code.internalError(_:), v5);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v7 = v0[1];

  return v7();
}

uint64_t sub_100508418()
{
  v1 = v0;
  v2 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v17 - v4;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Start fetch of bootstrap config", v13, 2u);
  }

  (*(v7 + 8))(v10, v6);
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v1;

  sub_1003E653C(0, 0, v5, &unk_1006E7210, v15);
}

uint64_t sub_100508638()
{
  v1 = swift_task_alloc();
  *(v0 + 504) = v1;
  *v1 = v0;
  v1[1] = sub_1005086D0;

  return sub_10050886C(v0 + 16);
}

uint64_t sub_1005086D0()
{
  v2 = *(*v1 + 504);
  v3 = *v1;
  *(v3 + 512) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10050880C, 0, 0);
  }

  else
  {
    sub_1000F2758(v3 + 16);
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_10050880C()
{
  v1 = *(v0 + 512);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10050886C(uint64_t a1)
{
  v2[309] = v1;
  v2[308] = a1;
  v3 = sub_100007224(&qword_100846780, &qword_1006E7198);
  v2[310] = v3;
  v4 = *(v3 - 8);
  v2[311] = v4;
  v5 = *(v4 + 64) + 15;
  v2[312] = swift_task_alloc();
  v6 = sub_100007224(&qword_100846788, &qword_1006E71A0);
  v2[313] = v6;
  v7 = *(v6 - 8);
  v2[314] = v7;
  v8 = *(v7 + 64) + 15;
  v2[315] = swift_task_alloc();
  v9 = sub_100007224(&qword_100846790, &qword_1006E71A8);
  v2[316] = v9;
  v10 = *(v9 - 8);
  v2[317] = v10;
  v2[318] = *(v10 + 64);
  v2[319] = swift_task_alloc();
  v2[320] = swift_task_alloc();
  v11 = sub_100007224(&qword_100846798, &qword_1006E71B0);
  v2[321] = v11;
  v12 = *(v11 - 8);
  v2[322] = v12;
  v13 = *(v12 + 64) + 15;
  v2[323] = swift_task_alloc();
  v14 = *(*(sub_100007224(&unk_100845860, &unk_1006BF9D0) - 8) + 64) + 15;
  v2[324] = swift_task_alloc();

  return _swift_task_switch(sub_100508AC0, v1, 0);
}

uint64_t sub_100508AC0()
{
  v1 = *(*sub_10000BA08((*(v0 + 2472) + 152), *(*(v0 + 2472) + 176)) + 56);
  os_unfair_lock_lock(v1 + 126);
  memcpy((v0 + 504), &v1[4], 0x1E8uLL);
  sub_100394180(v0 + 504, v0 + 992);
  os_unfair_lock_unlock(v1 + 126);
  memcpy((v0 + 16), (v0 + 504), 0x1E8uLL);
  if (sub_1000A257C(v0 + 16) == 1)
  {
    v2 = *(v0 + 2472);
    if (*(v2 + 192))
    {
      v3 = *(v2 + 192);
    }

    else
    {
      v48 = *(v0 + 2592);
      v49 = type metadata accessor for TaskPriority();
      (*(*(v49 - 8) + 56))(v48, 1, 1, v49);
      v51 = sub_10050AF44(&qword_1008467A0, v50, type metadata accessor for ConfigurationManager);
      v52 = swift_allocObject();
      v52[2] = v2;
      v52[3] = v51;
      v52[4] = v2;
      swift_retain_n();
      v3 = sub_100130384(0, 0, v48, &unk_1006E71C0, v52);
      v53 = *(v2 + 192);
      *(v2 + 192) = v3;
      swift_retain_n();
    }

    v85 = *(v0 + 2472);
    *(v0 + 2600) = v3;
    v78 = *(v0 + 2584);
    v80 = v3;
    v54 = *(v0 + 2560);
    v55 = *(v0 + 2552);
    v74 = *(v0 + 2592);
    v76 = *(v0 + 2544);
    v56 = *(v0 + 2536);
    v57 = *(v0 + 2528);
    v58 = *(v0 + 2520);
    v59 = *(v0 + 2512);
    v60 = *(v0 + 2504);
    v82 = *(v0 + 2496);
    v84 = *(v0 + 2568);
    (*(v59 + 104))(v58, enum case for AsyncThrowingStream.Continuation.BufferingPolicy.unbounded<A, B>(_:), v60);
    swift_retain_n();
    static AsyncThrowingStream.makeStream<>(of:throwing:bufferingPolicy:)();
    (*(v59 + 8))(v58, v60);
    v61 = type metadata accessor for TaskPriority();
    (*(*(v61 - 8) + 56))(v74, 1, 1, v61);
    (*(v56 + 16))(v55, v54, v57);
    v62 = (*(v56 + 80) + 32) & ~*(v56 + 80);
    v63 = swift_allocObject();
    *(v63 + 16) = 0;
    *(v63 + 24) = 0;
    (*(v56 + 32))(v63 + v62, v55, v57);
    *(v63 + ((v76 + v62 + 7) & 0xFFFFFFFFFFFFFFF8)) = v80;
    sub_1003E653C(0, 0, v74, &unk_1006E71D0, v63);

    AsyncThrowingStream.makeAsyncIterator()();
    v65 = sub_10050AF44(&qword_1008467A0, v64, type metadata accessor for ConfigurationManager);
    v66 = _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTu[1];
    v67 = swift_task_alloc();
    *(v0 + 2608) = v67;
    *v67 = v0;
    v67[1] = sub_10050911C;
    v68 = *(v0 + 2496);
    v69 = *(v0 + 2480);

    return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v0 + 1480, v85, v65, v69, v0 + 2456);
  }

  else
  {
    v83 = *(v0 + 472);
    v86 = *(v0 + 496);
    v4 = *(v0 + 40);
    v5 = *(v0 + 16);
    v81 = *(v0 + 464);
    v77 = *(v0 + 400);
    v79 = *(v0 + 416);
    v75 = *(v0 + 393);
    v6 = *(v0 + 392);
    v72 = *(v0 + 368);
    v73 = *(v0 + 384);
    v7 = *(v0 + 376);
    v71 = *(v0 + 288);
    v8 = *(v0 + 296);
    v9 = *(v0 + 272);
    v10 = *(v0 + 280);
    v11 = *(v0 + 256);
    v12 = *(v0 + 264);
    v13 = *(v0 + 240);
    v14 = *(v0 + 248);
    v15 = *(v0 + 224);
    v16 = *(v0 + 232);
    v17 = *(v0 + 208);
    v18 = *(v0 + 192);
    v19 = *(v0 + 200);
    v20 = *(v0 + 176);
    v21 = *(v0 + 184);
    v23 = *(v0 + 144);
    v22 = *(v0 + 152);
    v25 = *(v0 + 112);
    v24 = *(v0 + 128);
    v87 = *(v0 + 408);
    v27 = *(v0 + 80);
    v26 = *(v0 + 88);
    v28 = *(v0 + 72);
    v88 = *(v0 + 424);
    v29 = *(v0 + 64);
    v30 = *(v0 + 48);
    v31 = *(v0 + 480);
    v32 = *(v0 + 432);
    v33 = *(v0 + 448);
    v34 = *(v0 + 304);
    v35 = *(v0 + 320);
    v36 = *(v0 + 336);
    v37 = *(v0 + 352);
    v38 = *(v0 + 96);
    v39 = *(v0 + 160);
    v40 = *(v0 + 2592);
    v41 = *(v0 + 2584);
    v42 = *(v0 + 2560);
    v43 = *(v0 + 2552);
    v44 = *(v0 + 2520);
    v70 = *(v0 + 2496);
    v45 = *(v0 + 2464);
    *(v45 + 16) = *(v0 + 32);
    *(v45 + 24) = v4;
    *(v45 + 48) = v29;
    *(v45 + 64) = v27;
    *(v45 + 72) = v26;
    *(v45 + 128) = v23;
    *(v45 + 136) = v22;
    *(v45 + 160) = v20;
    *(v45 + 168) = v21;
    *(v45 + 176) = v18;
    *(v45 + 184) = v19;
    *(v45 + 208) = v15;
    *(v45 + 216) = v16;
    *(v45 + 224) = v13;
    *(v45 + 232) = v14;
    *(v45 + 240) = v11;
    *(v45 + 248) = v12;
    *(v45 + 256) = v9;
    *(v45 + 264) = v10;
    *(v45 + 272) = v71;
    *(v45 + 280) = v8;
    *(v45 + 352) = v72;
    *(v45 + 360) = v7;
    *(v45 + 368) = v73;
    *(v45 + 376) = v6;
    *(v45 + 377) = v75;
    *(v45 + 384) = v77;
    *(v45 + 392) = v87;
    *(v45 + 400) = v79;
    *(v45 + 408) = v88;
    *(v45 + 448) = v81;
    *(v45 + 456) = v83;
    *(v45 + 480) = v86;
    *v45 = v5;
    *(v45 + 32) = v30;
    *(v45 + 56) = v28;
    *(v45 + 80) = v38;
    *(v45 + 96) = v25;
    *(v45 + 112) = v24;
    *(v45 + 144) = v39;
    *(v45 + 192) = v17;
    *(v45 + 288) = v34;
    *(v45 + 304) = v35;
    *(v45 + 320) = v36;
    *(v45 + 336) = v37;
    *(v45 + 416) = v32;
    *(v45 + 432) = v33;
    *(v45 + 464) = v31;

    v46 = *(v0 + 8);

    return v46();
  }
}

uint64_t sub_10050911C()
{
  v2 = *v1;
  v3 = *(*v1 + 2608);
  v7 = *v1;

  v4 = *(v2 + 2472);
  if (v0)
  {
    v5 = sub_100509644;
  }

  else
  {
    v5 = sub_100509230;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100509230()
{
  (*(*(v0 + 2488) + 8))(*(v0 + 2496), *(v0 + 2480));
  memcpy((v0 + 1968), (v0 + 1480), 0x1E8uLL);
  v1 = sub_1000A257C(v0 + 1968);
  v2 = *(v0 + 2600);
  v3 = *(v0 + 2584);
  v4 = *(v0 + 2576);
  v5 = *(v0 + 2568);
  v6 = *(v0 + 2560);
  v7 = *(v0 + 2536);
  v8 = *(v0 + 2528);
  if (v1 == 1)
  {
    type metadata accessor for CancellationError();
    sub_10050AF44(&qword_100844468, 255, &type metadata accessor for CancellationError);
    swift_allocError();
    CancellationError.init()();
    swift_willThrow();

    (*(v7 + 8))(v6, v8);
    (*(v4 + 8))(v3, v5);
    v9 = *(v0 + 2592);
    v10 = *(v0 + 2584);
    v11 = *(v0 + 2560);
    v12 = *(v0 + 2552);
    v13 = *(v0 + 2520);
    v14 = *(v0 + 2496);
  }

  else
  {
    v16 = *(v0 + 2600);

    (*(v7 + 8))(v6, v8);
    (*(v4 + 8))(v3, v5);
    v62 = *(v0 + 2424);
    v63 = *(v0 + 2448);
    v17 = *(v0 + 1992);
    v18 = *(v0 + 1968);
    v61 = *(v0 + 2416);
    v60 = *(v0 + 2368);
    v19 = *(v0 + 2352);
    v20 = *(v0 + 2345);
    v21 = *(v0 + 2336);
    v22 = *(v0 + 2320);
    v23 = *(v0 + 2240);
    v24 = *(v0 + 2224);
    v25 = *(v0 + 2208);
    v26 = *(v0 + 2192);
    v27 = *(v0 + 2176);
    v28 = *(v0 + 2184);
    v29 = *(v0 + 2160);
    v30 = *(v0 + 2144);
    v31 = *(v0 + 2152);
    v32 = *(v0 + 2128);
    v33 = *(v0 + 2136);
    v34 = *(v0 + 2096);
    v35 = *(v0 + 2104);
    v36 = *(v0 + 2080);
    v37 = *(v0 + 2032);
    v64 = *(v0 + 2200);
    v38 = *(v0 + 2040);
    v39 = *(v0 + 2024);
    v65 = *(v0 + 2216);
    v40 = *(v0 + 2016);
    v41 = *(v0 + 2000);
    v42 = *(v0 + 2432);
    v43 = *(v0 + 2384);
    v44 = *(v0 + 2400);
    v45 = *(v0 + 2256);
    v46 = *(v0 + 2272);
    v47 = *(v0 + 2288);
    v48 = *(v0 + 2304);
    v49 = *(v0 + 2048);
    v50 = *(v0 + 2064);
    v51 = *(v0 + 2112);
    v66 = *(v0 + 2232);
    v52 = *(v0 + 2592);
    v67 = *(v0 + 2248);
    v53 = *(v0 + 2584);
    v68 = *(v0 + 2328);
    v54 = *(v0 + 2560);
    v69 = *(v0 + 2344);
    v55 = *(v0 + 2552);
    v70 = *(v0 + 2360);
    v56 = *(v0 + 2520);
    v71 = *(v0 + 2376);
    v57 = *(v0 + 2496);
    v58 = *(v0 + 2464);
    *(v58 + 16) = *(v0 + 1984);
    *(v58 + 24) = v17;
    *(v58 + 48) = v40;
    *(v58 + 64) = v37;
    *(v58 + 72) = v38;
    *(v58 + 128) = v34;
    *(v58 + 136) = v35;
    *(v58 + 160) = v32;
    *(v58 + 168) = v33;
    *(v58 + 176) = v30;
    *(v58 + 184) = v31;
    *(v58 + 208) = v27;
    *(v58 + 216) = v28;
    *(v58 + 224) = v26;
    *(v58 + 232) = v64;
    *(v58 + 240) = v25;
    *(v58 + 248) = v65;
    *(v58 + 256) = v24;
    *(v58 + 264) = v66;
    *(v58 + 272) = v23;
    *(v58 + 280) = v67;
    *(v58 + 352) = v22;
    *(v58 + 360) = v68;
    *(v58 + 368) = v21;
    *(v58 + 376) = v69;
    *(v58 + 377) = v20;
    *(v58 + 384) = v19;
    *(v58 + 392) = v70;
    *(v58 + 400) = v60;
    *(v58 + 408) = v71;
    *(v58 + 448) = v61;
    *(v58 + 456) = v62;
    *(v58 + 480) = v63;
    *v58 = v18;
    *(v58 + 32) = v41;
    *(v58 + 56) = v39;
    *(v58 + 80) = v49;
    *(v58 + 96) = v50;
    *(v58 + 112) = v36;
    *(v58 + 144) = v51;
    *(v58 + 192) = v29;
    *(v58 + 288) = v45;
    *(v58 + 304) = v46;
    *(v58 + 320) = v47;
    *(v58 + 336) = v48;
    *(v58 + 416) = v43;
    *(v58 + 432) = v44;
    *(v58 + 464) = v42;
  }

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_100509644()
{
  v1 = v0[325];
  v2 = v0[323];
  v3 = v0[322];
  v4 = v0[321];
  v5 = v0[320];
  v6 = v0[317];
  v7 = v0[316];
  v8 = v0[312];
  v9 = v0[311];
  v10 = v0[310];

  (*(v9 + 8))(v8, v10);
  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);
  v11 = v0[307];
  v12 = v0[324];
  v13 = v0[323];
  v14 = v0[320];
  v15 = v0[319];
  v16 = v0[315];
  v17 = v0[312];

  v18 = v0[1];

  return v18();
}

uint64_t sub_100509778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[131] = a4;
  v4[130] = a1;
  v6 = type metadata accessor for Logger();
  v4[132] = v6;
  v7 = *(v6 - 8);
  v4[133] = v7;
  v8 = *(v7 + 64) + 15;
  v4[134] = swift_task_alloc();
  v9 = type metadata accessor for DIPError.Code();
  v4[135] = v9;
  v10 = *(v9 - 8);
  v4[136] = v10;
  v11 = *(v10 + 64) + 15;
  v4[137] = swift_task_alloc();
  v12 = type metadata accessor for DIPError();
  v4[138] = v12;
  v13 = *(v12 - 8);
  v4[139] = v13;
  v14 = *(v13 + 64) + 15;
  v4[140] = swift_task_alloc();
  v15 = type metadata accessor for DIPBackoffStrategy();
  v4[141] = v15;
  v16 = *(v15 - 8);
  v4[142] = v16;
  v17 = *(v16 + 64) + 15;
  v4[143] = swift_task_alloc();
  v18 = type metadata accessor for DIPRetrier();
  v4[144] = v18;
  v19 = *(v18 - 8);
  v4[145] = v19;
  v20 = *(v19 + 64) + 15;
  v4[146] = swift_task_alloc();

  return _swift_task_switch(sub_1005099B0, a4, 0);
}

uint64_t sub_1005099B0()
{
  v1 = v0[146];
  v2 = v0[143];
  v3 = v0[142];
  v4 = v0[141];
  *v2 = 0x3FA999999999999ALL;
  (*(v3 + 104))(v2, enum case for DIPBackoffStrategy.exponential(_:), v4);
  DIPRetrier.init(maxRetries:backoffStrategy:)();
  v5 = async function pointer to DIPRetrier.retry<A>(operation:)[1];
  v6 = swift_task_alloc();
  v0[147] = v6;
  v7 = sub_100007224(&qword_100842B48, &unk_1006DFD30);
  *v6 = v0;
  v6[1] = sub_100509ACC;
  v8 = v0[146];
  v9 = v0[131];

  return DIPRetrier.retry<A>(operation:)(v0 + 2, &unk_1006E71F0, v9, v7);
}

uint64_t sub_100509ACC()
{
  v2 = *v1;
  v3 = *(*v1 + 1176);
  v4 = *(*v1 + 1160);
  v9 = *v1;
  *(*v1 + 1184) = v0;

  v5 = (v4 + 8);
  if (v0)
  {
    v6 = v2[131];
    (*v5)(v2[146], v2[144]);
    v7 = sub_100509D60;
  }

  else
  {
    v6 = v2[131];
    (*v5)(v2[146], v2[144]);
    v7 = sub_100509C38;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_100509C38()
{
  v1 = v0[146];
  v2 = v0[143];
  v3 = v0[140];
  v12 = v0[137];
  v13 = v0[134];
  v4 = v0[131];
  v5 = v0[130];
  memcpy(v0 + 69, v0 + 2, 0x1E8uLL);
  v6 = v0[63];
  v7 = v0[64];
  v8 = v0[66];
  sub_10050AF8C(v0[67], v0[68]);

  memcpy(v5, v0 + 69, 0x1E8uLL);
  v9 = *(v4 + 192);
  *(v4 + 192) = 0;

  v10 = v0[1];

  return v10();
}

uint64_t sub_100509D60()
{
  v1 = v0[148];
  v16 = v0[146];
  v17 = v0[143];
  v2 = v0[140];
  v3 = v0[139];
  v4 = v0[138];
  v5 = v0[134];
  v6 = v0[133];
  v13 = v5;
  v14 = v0[132];
  v15 = v0[131];
  (*(v0[136] + 104))(v0[137], enum case for DIPError.Code.internalError(_:), v0[135]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_10050AF44(&qword_100834130, 255, &type metadata accessor for DIPError);
  swift_allocError();
  v7 = *(v3 + 16);
  v7(v8, v2, v4);
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  (*(v6 + 8))(v13, v14);

  swift_allocError();
  v7(v9, v2, v4);
  swift_willThrow();

  (*(v3 + 8))(v2, v4);
  v10 = *(v15 + 192);
  *(v15 + 192) = 0;

  v11 = v0[1];

  return v11();
}

uint64_t sub_10050A000(uint64_t a1, uint64_t a2)
{
  *(v2 + 560) = a2;
  *(v2 + 552) = a1;
  return _swift_task_switch(sub_10050A024, 0, 0);
}

uint64_t sub_10050A024()
{
  v1 = *sub_10000BA08((*(v0 + 560) + 152), *(*(v0 + 560) + 176));
  v2 = swift_task_alloc();
  *(v0 + 568) = v2;
  *v2 = v0;
  v2[1] = sub_10050A0D0;

  return sub_1005B16AC(v0 + 16, 0);
}

uint64_t sub_10050A0D0()
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 568);
  v5 = *v1;
  v3[72] = v0;
  v3[73] = v2[2];
  *(v3 + 37) = *(v3 + 3);
  v3[76] = v2[5];
  *(v3 + 77) = *(v3 + 3);
  v3[79] = v2[8];
  v3[80] = v3[9];
  v3[81] = v2[10];
  v3[82] = v2[11];
  v6 = *(v3 + 7);
  *(v3 + 83) = *(v3 + 6);
  *(v3 + 85) = v6;
  v3[87] = v2[16];
  *(v3 + 44) = *(v3 + 17);
  v3[90] = v2[19];
  *(v3 + 91) = *(v3 + 10);
  v3[93] = v2[22];
  v24 = *(v3 + 184);
  v3[94] = v2[24];
  v23 = *(v3 + 200);
  v3[95] = v2[26];
  v3[96] = v2[27];
  v3[97] = v2[28];
  v22 = *(v3 + 232);
  v3[98] = v2[30];
  v21 = *(v3 + 248);
  v3[99] = v2[32];
  v7 = *(v3 + 264);
  v3[100] = v2[34];
  v8 = *(v3 + 280);
  v3[101] = v2[36];
  v9 = *(v3 + 296);
  v10 = *(v3 + 20);
  *(v3 + 51) = *(v3 + 19);
  *(v3 + 52) = v10;
  v11 = *(v3 + 22);
  *(v3 + 53) = *(v3 + 21);
  *(v3 + 54) = v11;
  v3[110] = v2[46];
  v12 = *(v3 + 376);
  v3[111] = v2[48];
  v13 = *(v3 + 392);
  *(v3 + 1025) = *(v3 + 393);
  v3[112] = v2[50];
  v14 = *(v3 + 408);
  v3[113] = v2[52];
  v15 = *(v3 + 424);
  v16 = *(v3 + 28);
  *(v3 + 57) = *(v3 + 27);
  *(v3 + 58) = v16;
  *(v3 + 1026) = *(v3 + 464);
  v17 = *(v3 + 61);
  *(v3 + 59) = *(v3 + 59);
  *(v3 + 60) = v17;
  v18 = *(v3 + 65);
  *(v3 + 61) = *(v3 + 63);
  *(v3 + 62) = v18;
  *(v3 + 63) = *(v3 + 67);

  if (v0)
  {
    v19 = sub_10050A71C;
  }

  else
  {
    *(v3 + 1024) = v24;
    *(v3 + 1032) = v23;
    *(v3 + 1040) = v22;
    *(v3 + 1048) = v21;
    *(v3 + 1056) = v7;
    *(v3 + 1064) = v8;
    *(v3 + 1072) = v9;
    *(v3 + 1080) = v12;
    *(v3 + 1088) = v13;
    *(v3 + 1096) = v14;
    *(v3 + 1104) = v15;
    v19 = sub_10050A4F4;
  }

  return _swift_task_switch(v19, 0, 0);
}

uint64_t sub_10050A4F4()
{
  v1 = *(v0 + 1026);
  v2 = *(v0 + 904);
  v3 = *(v0 + 896);
  v4 = *(v0 + 1025);
  v5 = *(v0 + 888);
  v6 = *(v0 + 880);
  v7 = *(v0 + 808);
  v8 = *(v0 + 800);
  v9 = *(v0 + 792);
  v10 = *(v0 + 784);
  v11 = *(v0 + 776);
  v12 = *(v0 + 760);
  v13 = *(v0 + 752);
  v14 = *(v0 + 744);
  v15 = *(v0 + 720);
  v16 = *(v0 + 712);
  v17 = *(v0 + 696);
  v18 = *(v0 + 656);
  v19 = *(v0 + 648);
  v20 = *(v0 + 640);
  v21 = *(v0 + 632);
  v22 = *(v0 + 608);
  v23 = *(v0 + 600);
  v24 = *(v0 + 552);
  v25 = *(v0 + 616);
  v26 = *(v0 + 944);
  v27 = *(v0 + 960);
  v29 = *(v0 + 992);
  v28 = *(v0 + 1008);
  v30 = *(v0 + 912);
  v31 = *(v0 + 928);
  v32 = *(v0 + 816);
  v33 = *(v0 + 832);
  v34 = *(v0 + 848);
  v35 = *(v0 + 864);
  v36 = *(v0 + 664);
  v37 = *(v0 + 680);
  v38 = *(v0 + 728);
  v39 = *(v0 + 976);
  *v24 = *(v0 + 584);
  *(v24 + 16) = v23;
  *(v24 + 24) = v22;
  *(v24 + 32) = v25;
  *(v24 + 48) = v21;
  *(v24 + 56) = v20;
  *(v24 + 64) = v19;
  *(v24 + 72) = v18;
  *(v24 + 80) = v36;
  *(v24 + 96) = v37;
  *(v24 + 112) = v17;
  *(v24 + 128) = v16;
  *(v24 + 136) = v15;
  *(v24 + 144) = v38;
  *(v24 + 160) = v14;
  *(v24 + 168) = *(v0 + 1024);
  *(v24 + 176) = v13;
  *(v24 + 184) = *(v0 + 1032);
  *(v24 + 192) = v12;
  *(v24 + 208) = v11;
  *(v24 + 216) = *(v0 + 1040);
  *(v24 + 224) = v10;
  *(v24 + 232) = *(v0 + 1048);
  *(v24 + 240) = v9;
  *(v24 + 248) = *(v0 + 1056);
  *(v24 + 256) = v8;
  *(v24 + 264) = *(v0 + 1064);
  *(v24 + 272) = v7;
  *(v24 + 280) = *(v0 + 1072);
  *(v24 + 288) = v32;
  *(v24 + 304) = v33;
  *(v24 + 320) = v34;
  *(v24 + 336) = v35;
  *(v24 + 352) = v6;
  *(v24 + 360) = *(v0 + 1080);
  *(v24 + 368) = v5;
  *(v24 + 376) = *(v0 + 1088);
  *(v24 + 377) = v4;
  *(v24 + 384) = v3;
  *(v24 + 392) = *(v0 + 1096);
  *(v24 + 400) = v2;
  *(v24 + 408) = *(v0 + 1104);
  *(v24 + 416) = v30;
  *(v24 + 432) = v31;
  *(v24 + 448) = v1;
  *(v24 + 456) = v26;
  *(v24 + 472) = v27;
  *(v24 + 488) = v39;
  *(v24 + 504) = v29;
  *(v24 + 520) = v28;
  v40 = enum case for DIPRetrier.RetryResult.success<A>(_:);
  v41 = sub_100007224(&qword_1008467B0, &qword_1006E7200);
  (*(*(v41 - 8) + 104))(v24, v40, v41);
  v42 = *(v0 + 8);

  return v42();
}

uint64_t sub_10050A71C()
{
  v1 = v0[69];
  *v1 = v0[72];
  *(v1 + 8) = 0;
  *(v1 + 16) = 1;
  v2 = enum case for DIPRetrier.RetryResult.retry<A>(_:);
  v3 = sub_100007224(&qword_1008467B0, &qword_1006E7200);
  (*(*(v3 - 8) + 104))(v1, v2, v3);
  v4 = v0[1];

  return v4();
}

uint64_t sub_10050A7DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[125] = a4;
  v7 = sub_100007224(&qword_1008467A8, &unk_1006E71D8);
  v5[126] = v7;
  v8 = *(v7 - 8);
  v5[127] = v8;
  v9 = *(v8 + 64) + 15;
  v5[128] = swift_task_alloc();
  v10 = async function pointer to Task.value.getter[1];
  v11 = swift_task_alloc();
  v5[129] = v11;
  v12 = sub_100007224(&qword_100833B90, &qword_1006D95C0);
  *v11 = v5;
  v11[1] = sub_10050A910;

  return Task.value.getter(v5 + 2, a5, &type metadata for ActiveConfig, v12, &protocol self-conformance witness table for Error);
}

uint64_t sub_10050A910()
{
  v2 = *(*v1 + 1032);
  v5 = *v1;
  *(*v1 + 1040) = v0;

  if (v0)
  {
    v3 = sub_10050AAE8;
  }

  else
  {
    v3 = sub_10050AA24;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10050AA24()
{
  v1 = v0[128];
  v2 = v0[127];
  v3 = v0[126];
  v4 = v0[125];
  memcpy(v0 + 63, v0 + 2, 0x1E8uLL);
  sub_100007224(&qword_100846790, &qword_1006E71A8);
  AsyncThrowingStream.Continuation.yield(_:)();
  (*(v2 + 8))(v1, v3);
  v5 = v0[128];

  v6 = v0[1];

  return v6();
}

uint64_t sub_10050AAE8()
{
  v1 = v0[125];
  v0[124] = v0[130];
  sub_100007224(&qword_100846790, &qword_1006E71A8);
  AsyncThrowingStream.Continuation.finish(throwing:)();
  v2 = v0[128];

  v3 = v0[1];

  return v3();
}

uint64_t sub_10050AB74()
{
  sub_10000BB78(v0 + 14);
  sub_10000BB78(v0 + 19);
  v1 = v0[24];

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10050ABE4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100027B9C;

  return sub_100509778(a1, v4, v5, v6);
}

uint64_t sub_10050AC98()
{
  v1 = sub_100007224(&qword_100846790, &qword_1006E71A8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10050AD7C(uint64_t a1)
{
  v4 = *(sub_100007224(&qword_100846790, &qword_1006E71A8) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100041F04;

  return sub_10050A7DC(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_10050AEA8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100041F04;

  return sub_10050A000(a1, v1);
}

uint64_t sub_10050AF44(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_10050AF8C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_opt_self() standardUserDefaults];
  v11._countAndFlagsBits = static DaemonInternalDefaultsKeys.MobileDocumentReader.disableRegionCheck.getter();
  v12 = NSUserDefaults.internalBool(forKey:)(v11);

  if (v12)
  {
    defaultLogger()();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "ConfigurationManager region check disabled, skipping updateGlobalConfiguration", v16, 2u);
    }

    return (*(v6 + 8))(v9, v5);
  }

  else if (a2)
  {
    v17 = a2 + 64;
    v18 = 1 << *(a2 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(a2 + 64);
    v21 = (v18 + 63) >> 6;

    v22 = 0;
    v23 = _swiftEmptyArrayStorage;
    while (v20)
    {
LABEL_14:
      v25 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
      v26 = v25 | (v22 << 6);
      v27 = *(*(a2 + 56) + v26);
      if (v27 != 2 && (v27 & 1) != 0)
      {
        v28 = (*(a2 + 48) + 16 * v26);
        v29 = *v28;
        v55 = v28[1];

        result = swift_isUniquelyReferenced_nonNull_native();
        v54 = v29;
        if ((result & 1) == 0)
        {
          result = sub_1003C5110(0, *(v23 + 2) + 1, 1, v23);
          v23 = result;
        }

        v31 = *(v23 + 2);
        v30 = *(v23 + 3);
        if (v31 >= v30 >> 1)
        {
          result = sub_1003C5110((v30 > 1), v31 + 1, 1, v23);
          v23 = result;
        }

        *(v23 + 2) = v31 + 1;
        v32 = &v23[16 * v31];
        v33 = v55;
        *(v32 + 4) = v54;
        *(v32 + 5) = v33;
      }
    }

    while (1)
    {
      v24 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_41;
      }

      if (v24 >= v21)
      {
        break;
      }

      v20 = *(v17 + 8 * v24);
      ++v22;
      if (v20)
      {
        v22 = v24;
        goto LABEL_14;
      }
    }

    v34 = 1 << *(a2 + 32);
    v35 = -1;
    if (v34 < 64)
    {
      v35 = ~(-1 << v34);
    }

    v36 = v35 & *(a2 + 64);
    v37 = (v34 + 63) >> 6;

    v38 = 0;
    v39 = _swiftEmptyArrayStorage;
    while (v36)
    {
LABEL_30:
      v41 = __clz(__rbit64(v36));
      v36 &= v36 - 1;
      v42 = v41 | (v38 << 6);
      v43 = *(*(a2 + 56) + v42);
      if (v43 == 2 || (v43 & 1) == 0)
      {
        v44 = (*(a2 + 48) + 16 * v42);
        v45 = v44[1];
        v54 = *v44;

        result = swift_isUniquelyReferenced_nonNull_native();
        v55 = v45;
        if ((result & 1) == 0)
        {
          result = sub_1003C5110(0, *(v39 + 2) + 1, 1, v39);
          v39 = result;
        }

        v47 = *(v39 + 2);
        v46 = *(v39 + 3);
        v48 = v47 + 1;
        if (v47 >= v46 >> 1)
        {
          v53 = v47 + 1;
          result = sub_1003C5110((v46 > 1), v47 + 1, 1, v39);
          v48 = v53;
          v39 = result;
        }

        *(v39 + 2) = v48;
        v49 = &v39[16 * v47];
        v50 = v55;
        *(v49 + 4) = v54;
        *(v49 + 5) = v50;
      }
    }

    while (1)
    {
      v40 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        break;
      }

      if (v40 >= v37)
      {

        v51 = v3[18];
        sub_10000BA08(v3 + 14, v3[17]);
        dispatch thunk of MobileDocumentReaderSupportChecking.update(isGloballySupported:supportedRegions:unsupportedRegions:)();
      }

      v36 = *(v17 + 8 * v40);
      ++v38;
      if (v36)
      {
        v38 = v40;
        goto LABEL_30;
      }
    }

LABEL_41:
    __break(1u);
  }

  return result;
}

uint64_t sub_10050B3E8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100027B9C;

  return sub_100508638();
}

uint64_t sub_10050B4B0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0xD000000000000010;
      v5 = 0x80000001006FA430;
    }

    else
    {
      v4 = 0x6974634172657375;
      v5 = 0xEA00000000006E6FLL;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x756F72676B636162;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
    }

    if (v3)
    {
      v5 = 0xEA0000000000646ELL;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  if (a2 > 1u)
  {
    v2 = 0xD000000000000010;
    v6 = 0x80000001006FA430;
    v7 = 0x6974634172657375;
    v8 = 0xEA00000000006E6FLL;
    v9 = a2 == 2;
  }

  else
  {
    v6 = 0xE700000000000000;
    v7 = 0x756F72676B636162;
    v8 = 0xEA0000000000646ELL;
    v9 = a2 == 0;
  }

  if (v9)
  {
    v10 = v2;
  }

  else
  {
    v10 = v7;
  }

  if (v9)
  {
    v11 = v6;
  }

  else
  {
    v11 = v8;
  }

  if (v4 == v10 && v5 == v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v12 & 1;
}

uint64_t sub_10050B614(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0xD000000000000014;
    }

    else
    {
      v3 = 0x776F6C666B726F77;
    }

    if (v2)
    {
      v4 = 0x80000001006F8C00;
    }

    else
    {
      v4 = 0xE800000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0x80000001006F8BB0;
    v3 = 0xD000000000000011;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0x656D737365737361;
    }

    else
    {
      v3 = 0xD000000000000011;
    }

    if (v2 == 3)
    {
      v4 = 0xEF7344495547746ELL;
    }

    else
    {
      v4 = 0x80000001006F8BE0;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0xD000000000000014;
    }

    else
    {
      v9 = 0x776F6C666B726F77;
    }

    if (a2)
    {
      v8 = 0x80000001006F8C00;
    }

    else
    {
      v8 = 0xE800000000000000;
    }

    if (v3 != v9)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v5 = 0x656D737365737361;
    v6 = 0x80000001006F8BE0;
    if (a2 == 3)
    {
      v6 = 0xEF7344495547746ELL;
    }

    else
    {
      v5 = 0xD000000000000011;
    }

    if (a2 == 2)
    {
      v7 = 0xD000000000000011;
    }

    else
    {
      v7 = v5;
    }

    if (a2 == 2)
    {
      v8 = 0x80000001006F8BB0;
    }

    else
    {
      v8 = v6;
    }

    if (v3 != v7)
    {
      goto LABEL_37;
    }
  }

  if (v4 != v8)
  {
LABEL_37:
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_38;
  }

  v10 = 1;
LABEL_38:

  return v10 & 1;
}

uint64_t sub_10050B7B0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x64692D6F746F6870;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x64692D6F746F6870;
    }

    else
    {
      v4 = 1701736302;
    }

    if (v3 == 2)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0xD000000000000013;
    }

    else
    {
      v4 = 0xD000000000000012;
    }

    if (v3)
    {
      v5 = 0x80000001006F9CA0;
    }

    else
    {
      v5 = 0x80000001006F9C80;
    }
  }

  v6 = 0xE800000000000000;
  if (a2 != 2)
  {
    v2 = 1701736302;
    v6 = 0xE400000000000000;
  }

  v7 = 0xD000000000000012;
  v8 = 0x80000001006F9CA0;
  if (a2)
  {
    v7 = 0xD000000000000013;
  }

  else
  {
    v8 = 0x80000001006F9C80;
  }

  if (a2 <= 1u)
  {
    v9 = v7;
  }

  else
  {
    v9 = v2;
  }

  if (a2 <= 1u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v6;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

uint64_t sub_10050B8DC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE800000000000000;
  v4 = 0x646E616D6D6F436BLL;
  v5 = 0xE900000000000073;
  v6 = 0x6F43737574617473;
  v7 = 0xEA00000000006564;
  if (a1 != 4)
  {
    v6 = 0x6461655278614D6BLL;
    v7 = 0xEC000000657A6953;
  }

  if (a1 != 3)
  {
    v4 = v6;
    v5 = v7;
  }

  v8 = 0xE800000000000000;
  v9 = 0x644968637461426BLL;
  if (a1 != 1)
  {
    v9 = 0x64496B7361546BLL;
    v8 = 0xE700000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x6E6F69737265566BLL;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xE900000000000073;
      if (v10 != 0x646E616D6D6F436BLL)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xEA00000000006564;
      if (v10 != 0x6F43737574617473)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xEC000000657A6953;
      if (v10 != 0x6461655278614D6BLL)
      {
LABEL_34:
        v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE800000000000000;
      if (v10 != 0x644968637461426BLL)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x64496B7361546BLL)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE800000000000000;
    if (v10 != 0x6E6F69737265566BLL)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_10050BAE4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED00007265646165;
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v6 = 0x6E6F69737265566BLL;
    }

    else
    {
      v6 = 0x4874736575716572;
    }

    if (v3)
    {
      v7 = 0xE800000000000000;
    }

    else
    {
      v7 = 0xED00007265646165;
    }
  }

  else
  {
    v4 = 0xE700000000000000;
    v5 = 0x64496B7361546BLL;
    if (a1 != 3)
    {
      v5 = 0xD000000000000011;
      v4 = 0x80000001006F8F90;
    }

    if (a1 == 2)
    {
      v6 = 0x644968637461426BLL;
    }

    else
    {
      v6 = v5;
    }

    if (v3 == 2)
    {
      v7 = 0xE800000000000000;
    }

    else
    {
      v7 = v4;
    }
  }

  if (a2 <= 1u)
  {
    v9 = 0xE800000000000000;
    v10 = a2 == 0;
    if (a2)
    {
      v11 = 0x6E6F69737265566BLL;
    }

    else
    {
      v11 = 0x4874736575716572;
    }
  }

  else
  {
    v2 = 0xE800000000000000;
    v8 = 0x64496B7361546BLL;
    v9 = 0x80000001006F8F90;
    if (a2 == 3)
    {
      v9 = 0xE700000000000000;
    }

    else
    {
      v8 = 0xD000000000000011;
    }

    v10 = a2 == 2;
    if (a2 == 2)
    {
      v11 = 0x644968637461426BLL;
    }

    else
    {
      v11 = v8;
    }
  }

  if (v10)
  {
    v12 = v2;
  }

  else
  {
    v12 = v9;
  }

  if (v6 == v11 && v7 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v13 & 1;
}

uint64_t sub_10050BC68(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000644965;
  v3 = 0x7475626972747461;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 1953259891;
    }

    else
    {
      v5 = 0x65756C6176;
    }

    if (v4 == 2)
    {
      v6 = 0xE400000000000000;
    }

    else
    {
      v6 = 0xE500000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x64657669726564;
    }

    else
    {
      v5 = 0x7475626972747461;
    }

    if (v4)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xEB00000000644965;
    }
  }

  v7 = 0xE400000000000000;
  v8 = 1953259891;
  if (a2 != 2)
  {
    v8 = 0x65756C6176;
    v7 = 0xE500000000000000;
  }

  if (a2)
  {
    v3 = 0x64657669726564;
    v2 = 0xE700000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v7;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

uint64_t sub_10050BD98(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEE00726564616548;
  v3 = 0x65736E6F70736572;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0xD000000000000026;
    }

    else
    {
      v5 = 0x6C616E7265747865;
    }

    if (v4 == 2)
    {
      v6 = 0x80000001006F9610;
    }

    else
    {
      v6 = 0xEC00000061746144;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x45656D69746E7572;
    }

    else
    {
      v5 = 0x65736E6F70736572;
    }

    if (v4)
    {
      v6 = 0xEC000000726F7272;
    }

    else
    {
      v6 = 0xEE00726564616548;
    }
  }

  v7 = 0xD000000000000026;
  v8 = 0x80000001006F9610;
  if (a2 != 2)
  {
    v7 = 0x6C616E7265747865;
    v8 = 0xEC00000061746144;
  }

  if (a2)
  {
    v3 = 0x45656D69746E7572;
    v2 = 0xEC000000726F7272;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

uint64_t sub_10050BF04(char a1, char a2)
{
  if (a1 == a2)
  {
    v2 = 1;
  }

  else
  {
    v2 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_10050BF68(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED00006E69616843;
  v3 = 0x776F6C666B726F77;
  v4 = a1;
  if (a1 > 3u)
  {
    v10 = 0xD000000000000011;
    v11 = 0x80000001006F8BE0;
    if (a1 != 6)
    {
      v10 = 0xD000000000000014;
      v11 = 0x80000001006F8C00;
    }

    v12 = 0xD000000000000011;
    v13 = 0x80000001006F8BB0;
    if (a1 != 4)
    {
      v12 = 0x656D737365737361;
      v13 = 0xEF7344495547746ELL;
    }

    if (a1 <= 5u)
    {
      v8 = v12;
    }

    else
    {
      v8 = v10;
    }

    if (v4 <= 5)
    {
      v9 = v13;
    }

    else
    {
      v9 = v11;
    }
  }

  else
  {
    v5 = 0xE600000000000000;
    v6 = 0x7365636E6F6ELL;
    if (a1 != 2)
    {
      v6 = 0x726F576F73726570;
      v5 = 0xED0000776F6C666BLL;
    }

    v7 = 0xE800000000000000;
    if (!a1)
    {
      v7 = 0xED00006E69616843;
    }

    if (a1 <= 1u)
    {
      v8 = 0x776F6C666B726F77;
    }

    else
    {
      v8 = v6;
    }

    if (v4 <= 1)
    {
      v9 = v7;
    }

    else
    {
      v9 = v5;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 != 6)
      {
        v2 = 0x80000001006F8C00;
        if (v8 != 0xD000000000000014)
        {
          goto LABEL_44;
        }

        goto LABEL_41;
      }

      v14 = "assessmentBaseURL";
    }

    else
    {
      if (a2 != 4)
      {
        v2 = 0xEF7344495547746ELL;
        if (v8 != 0x656D737365737361)
        {
          goto LABEL_44;
        }

        goto LABEL_41;
      }

      v14 = "assessmentProfile";
    }

    v2 = (v14 - 32) | 0x8000000000000000;
    if (v8 != 0xD000000000000011)
    {
      goto LABEL_44;
    }

    goto LABEL_41;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v2 = 0xE600000000000000;
      if (v8 != 0x7365636E6F6ELL)
      {
        goto LABEL_44;
      }

      goto LABEL_41;
    }

    v3 = 0x726F576F73726570;
    v2 = 0xED0000776F6C666BLL;
  }

  else if (a2)
  {
    v2 = 0xE800000000000000;
    if (v8 != 0x776F6C666B726F77)
    {
      goto LABEL_44;
    }

    goto LABEL_41;
  }

  if (v8 != v3)
  {
LABEL_44:
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_45;
  }

LABEL_41:
  if (v9 != v2)
  {
    goto LABEL_44;
  }

  v15 = 1;
LABEL_45:

  return v15 & 1;
}

uint64_t sub_10050C1E4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 3u)
  {
    v10 = 0xE700000000000000;
    v11 = 0x6C4368636E75616CLL;
    v12 = 0xEE007364496D6961;
    if (a1 != 2)
    {
      v11 = 0x726575737369;
      v12 = 0xE600000000000000;
    }

    v13 = 25705;
    if (a1)
    {
      v10 = 0xE200000000000000;
    }

    else
    {
      v13 = 0x6E6F6973726576;
    }

    if (a1 <= 1u)
    {
      v8 = v13;
    }

    else
    {
      v8 = v11;
    }

    if (v2 <= 1)
    {
      v9 = v10;
    }

    else
    {
      v9 = v12;
    }
  }

  else
  {
    v3 = 0x776F6C666B726F77;
    v4 = 0xE400000000000000;
    v5 = 1919248756;
    if (a1 != 7)
    {
      v5 = 0x6D69616C63;
      v4 = 0xE500000000000000;
    }

    if (a1 == 6)
    {
      v4 = 0xEA00000000006449;
    }

    else
    {
      v3 = v5;
    }

    v6 = 0x646575737369;
    v7 = 0xEA00000000006E6FLL;
    if (a1 == 4)
    {
      v7 = 0xE600000000000000;
    }

    else
    {
      v6 = 0x6974617269707865;
    }

    if (a1 <= 5u)
    {
      v8 = v6;
    }

    else
    {
      v8 = v3;
    }

    if (v2 <= 5)
    {
      v9 = v7;
    }

    else
    {
      v9 = v4;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v14 = 0xEE007364496D6961;
        if (v8 != 0x6C4368636E75616CLL)
        {
          goto LABEL_54;
        }
      }

      else
      {
        v14 = 0xE600000000000000;
        if (v8 != 0x726575737369)
        {
          goto LABEL_54;
        }
      }
    }

    else if (a2)
    {
      v14 = 0xE200000000000000;
      if (v8 != 25705)
      {
        goto LABEL_54;
      }
    }

    else
    {
      v14 = 0xE700000000000000;
      if (v8 != 0x6E6F6973726576)
      {
        goto LABEL_54;
      }
    }
  }

  else if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v14 = 0xE600000000000000;
      if (v8 != 0x646575737369)
      {
        goto LABEL_54;
      }
    }

    else
    {
      v14 = 0xEA00000000006E6FLL;
      if (v8 != 0x6974617269707865)
      {
LABEL_54:
        v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_55;
      }
    }
  }

  else if (a2 == 6)
  {
    v14 = 0xEA00000000006449;
    if (v8 != 0x776F6C666B726F77)
    {
      goto LABEL_54;
    }
  }

  else if (a2 == 7)
  {
    v14 = 0xE400000000000000;
    if (v8 != 1919248756)
    {
      goto LABEL_54;
    }
  }

  else
  {
    v14 = 0xE500000000000000;
    if (v8 != 0x6D69616C63)
    {
      goto LABEL_54;
    }
  }

  if (v9 != v14)
  {
    goto LABEL_54;
  }

  v15 = 1;
LABEL_55:

  return v15 & 1;
}

uint64_t sub_10050C494(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE400000000000000;
  v4 = 0xE400000000000000;
  v5 = 1952867692;
  v6 = 0xE500000000000000;
  v7 = 0x7468676972;
  if (a1 != 4)
  {
    v7 = 0x6465686361746564;
    v6 = 0xE800000000000000;
  }

  if (a1 != 3)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0xE500000000000000;
  v9 = 0x70756F7267;
  if (a1 != 1)
  {
    v9 = 1635017060;
    v8 = 0xE400000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 1752392040;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xE400000000000000;
      if (v10 != 1952867692)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x7468676972)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE800000000000000;
      if (v10 != 0x6465686361746564)
      {
LABEL_34:
        v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x70756F7267)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE400000000000000;
      if (v10 != 1635017060)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE400000000000000;
    if (v10 != 1752392040)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_10050C644(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE400000000000000;
  v4 = 0xE300000000000000;
  v5 = 7369839;
  if (a1 != 5)
  {
    v5 = 0xD000000000000010;
    v4 = 0x80000001006F93E0;
  }

  v6 = 0xE600000000000000;
  v7 = 0x6172656D6163;
  if (a1 != 3)
  {
    v7 = 0x6F746F6870;
    v6 = 0xE500000000000000;
  }

  if (a1 <= 4u)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0xE600000000000000;
  v9 = 0x72656B636970;
  if (a1 != 1)
  {
    v9 = 1702125924;
    v8 = 0xE400000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 1954047348;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 0xE600000000000000;
        if (v10 != 0x72656B636970)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v12 = 0xE400000000000000;
        if (v10 != 1702125924)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v12 = 0xE400000000000000;
      if (v10 != 1954047348)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v12 = 0xE300000000000000;
      if (v10 != 7369839)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = 0x80000001006F93E0;
      if (v10 != 0xD000000000000010)
      {
LABEL_39:
        v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_40;
      }
    }
  }

  else if (a2 == 3)
  {
    v12 = 0xE600000000000000;
    if (v10 != 0x6172656D6163)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v12 = 0xE500000000000000;
    if (v10 != 0x6F746F6870)
    {
      goto LABEL_39;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_39;
  }

  v13 = 1;
LABEL_40:

  return v13 & 1;
}

uint64_t sub_10050C830(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0x6C616E6F6974616ELL;
  v5 = 0xEA00000000004449;
  v6 = 0xE700000000000000;
  v7 = 0x44496F746F6870;
  if (a1 != 4)
  {
    v7 = 0xD000000000000017;
    v6 = 0x80000001006FA5F0;
  }

  if (a1 != 3)
  {
    v4 = v7;
    v5 = v6;
  }

  v8 = 0xE200000000000000;
  v9 = 27748;
  if (a1 != 1)
  {
    v9 = 0x6E776F6E6B6E75;
    v8 = 0xE700000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x44496574617473;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xEA00000000004449;
      if (v10 != 0x6C616E6F6974616ELL)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x44496F746F6870)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0x80000001006FA5F0;
      if (v10 != 0xD000000000000017)
      {
LABEL_34:
        v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE200000000000000;
      if (v10 != 27748)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x6E776F6E6B6E75)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE700000000000000;
    if (v10 != 0x44496574617473)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_10050CA04(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x64756F6C4369;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x6D754E656E6F6870;
    }

    else
    {
      v4 = 0x726F707075736E75;
    }

    if (v3 == 2)
    {
      v5 = 0xEB00000000726562;
    }

    else
    {
      v5 = 0xEB00000000646574;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x73656E755469;
    }

    else
    {
      v4 = 0x64756F6C4369;
    }

    v5 = 0xE600000000000000;
  }

  v6 = 0x6D754E656E6F6870;
  v7 = 0xEB00000000726562;
  if (a2 != 2)
  {
    v6 = 0x726F707075736E75;
    v7 = 0xEB00000000646574;
  }

  if (a2)
  {
    v2 = 0x73656E755469;
  }

  if (a2 <= 1u)
  {
    v8 = v2;
  }

  else
  {
    v8 = v6;
  }

  if (a2 <= 1u)
  {
    v9 = 0xE600000000000000;
  }

  else
  {
    v9 = v7;
  }

  if (v4 == v8 && v5 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v10 & 1;
}

uint64_t sub_10050CB5C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 2u)
  {
    v9 = 0xEF64756F6C43692ELL;
    if (a1 != 1)
    {
      v9 = 0xEF73656E7554692ELL;
    }

    if (a1)
    {
      v8 = v9;
    }

    else
    {
      v8 = 0xE800000000000000;
    }

    v7 = 0x73746E756F636341;
  }

  else
  {
    v3 = 0xE600000000000000;
    v4 = 0x64726143654DLL;
    if (a1 != 5)
    {
      v4 = 0x726F707075736E75;
      v3 = 0xEB00000000646574;
    }

    v5 = 0x656C655465726F43;
    v6 = 0xED0000796E6F6870;
    if (a1 != 3)
    {
      v5 = 0x797469746E656449;
      v6 = 0xE800000000000000;
    }

    if (a1 <= 4u)
    {
      v7 = v5;
    }

    else
    {
      v7 = v4;
    }

    if (v2 <= 4)
    {
      v8 = v6;
    }

    else
    {
      v8 = v3;
    }
  }

  if (a2 <= 2u)
  {
    v11 = 0xEF64756F6C43692ELL;
    if (a2 != 1)
    {
      v11 = 0xEF73656E7554692ELL;
    }

    if (a2)
    {
      v10 = v11;
    }

    else
    {
      v10 = 0xE800000000000000;
    }

    if (v7 != 0x73746E756F636341)
    {
      goto LABEL_41;
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v12 = 0x64726143654DLL;
    }

    else
    {
      v12 = 0x726F707075736E75;
    }

    if (a2 == 5)
    {
      v10 = 0xE600000000000000;
    }

    else
    {
      v10 = 0xEB00000000646574;
    }

    if (v7 != v12)
    {
      goto LABEL_41;
    }
  }

  else if (a2 == 3)
  {
    v10 = 0xED0000796E6F6870;
    if (v7 != 0x656C655465726F43)
    {
      goto LABEL_41;
    }
  }

  else
  {
    v10 = 0xE800000000000000;
    if (v7 != 0x797469746E656449)
    {
LABEL_41:
      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_42;
    }
  }

  if (v8 != v10)
  {
    goto LABEL_41;
  }

  v13 = 1;
LABEL_42:

  return v13 & 1;
}

uint64_t sub_10050CD7C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1701736302;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x65646F6373736170;
    }

    else
    {
      v4 = 7958113;
    }

    if (v3 == 2)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xE300000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x64496F6962;
    }

    else
    {
      v4 = 1701736302;
    }

    if (v3)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  v6 = 0xE400000000000000;
  v7 = 0xE800000000000000;
  v8 = 0x65646F6373736170;
  if (a2 != 2)
  {
    v8 = 7958113;
    v7 = 0xE300000000000000;
  }

  if (a2)
  {
    v2 = 0x64496F6962;
    v6 = 0xE500000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

uint64_t sub_10050CEA0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE300000000000000;
  v4 = 0x444145525F43464ELL;
  if (a1 == 5)
  {
    v5 = 0xE800000000000000;
  }

  else
  {
    v4 = 0x454B4F545F494950;
    v5 = 0xE90000000000004ELL;
  }

  v6 = 0xD000000000000013;
  v7 = 0x80000001006F8E70;
  if (a1 != 3)
  {
    v6 = 0x4E495F444559454BLL;
    v7 = 0xE800000000000000;
  }

  if (a1 <= 4u)
  {
    v4 = v6;
    v5 = v7;
  }

  v8 = 0xE300000000000000;
  v9 = 5391183;
  if (a1 != 1)
  {
    v9 = 0x454349564544;
    v8 = 0xE600000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 5919309;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 0xE300000000000000;
        if (v10 != 5391183)
        {
          goto LABEL_40;
        }
      }

      else
      {
        v12 = 0xE600000000000000;
        if (v10 != 0x454349564544)
        {
          goto LABEL_40;
        }
      }
    }

    else
    {
      v12 = 0xE300000000000000;
      if (v10 != 5919309)
      {
        goto LABEL_40;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v12 = 0xE800000000000000;
      if (v10 != 0x444145525F43464ELL)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v12 = 0xE90000000000004ELL;
      if (v10 != 0x454B4F545F494950)
      {
LABEL_40:
        v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_41;
      }
    }
  }

  else if (a2 == 3)
  {
    v12 = 0x80000001006F8E70;
    if (v10 != 0xD000000000000013)
    {
      goto LABEL_40;
    }
  }

  else
  {
    v12 = 0xE800000000000000;
    if (v10 != 0x4E495F444559454BLL)
    {
      goto LABEL_40;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_40;
  }

  v13 = 1;
LABEL_41:

  return v13 & 1;
}

uint64_t sub_10050D0B4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEF746E6F7246746ELL;
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0xEE006B636142746ELL;
    }

    else
    {
      v5 = 0xEF746E6F7246746ELL;
    }

    v4 = 0x656D75636F446469;
  }

  else if (a1 == 2)
  {
    v5 = 0xE600000000000000;
    v4 = 0x6569666C6573;
  }

  else
  {
    if (a1 == 3)
    {
      v4 = 0x7373656E6576696CLL;
    }

    else
    {
      v4 = 0x7261696C69787561;
    }

    if (v3 == 3)
    {
      v5 = 0xED00006F65646956;
    }

    else
    {
      v5 = 0xEE006F6564695679;
    }
  }

  v6 = 0xE600000000000000;
  v7 = 0x6569666C6573;
  v8 = 0x7373656E6576696CLL;
  v9 = 0xED00006F65646956;
  if (a2 != 3)
  {
    v8 = 0x7261696C69787561;
    v9 = 0xEE006F6564695679;
  }

  if (a2 != 2)
  {
    v7 = v8;
    v6 = v9;
  }

  if (a2)
  {
    v2 = 0xEE006B636142746ELL;
  }

  if (a2 <= 1u)
  {
    v10 = 0x656D75636F446469;
  }

  else
  {
    v10 = v7;
  }

  if (a2 <= 1u)
  {
    v11 = v2;
  }

  else
  {
    v11 = v6;
  }

  if (v4 == v10 && v5 == v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v12 & 1;
}

uint64_t sub_10050D25C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE600000000000000;
  v4 = 0xEB0000000043464ELL;
  v5 = 0x6E656B6F54696970;
  if (a1 == 6)
  {
    v5 = 0x74726F7073736170;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  v6 = 0x80000001006FA3E0;
  v7 = 0x74726F7073736170;
  if (a1 == 4)
  {
    v7 = 0xD000000000000015;
  }

  else
  {
    v6 = 0xEB000000005A524DLL;
  }

  if (a1 > 5u)
  {
    v6 = v4;
  }

  else
  {
    v5 = v7;
  }

  v8 = 0xD000000000000017;
  if (a1 == 2)
  {
    v8 = 0x6150373134666470;
    v9 = 0xEC00000064657372;
  }

  else
  {
    v9 = 0x80000001006FA3C0;
  }

  v10 = 0x6152373134666470;
  if (a1)
  {
    v3 = 0xE900000000000077;
  }

  else
  {
    v10 = 0x656369766564;
  }

  if (a1 > 1u)
  {
    v3 = v9;
  }

  else
  {
    v8 = v10;
  }

  if (a1 <= 3u)
  {
    v11 = v8;
  }

  else
  {
    v11 = v5;
  }

  if (v2 <= 3)
  {
    v12 = v3;
  }

  else
  {
    v12 = v6;
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v13 = 0xEC00000064657372;
        if (v11 != 0x6150373134666470)
        {
          goto LABEL_49;
        }
      }

      else
      {
        v13 = 0x80000001006FA3C0;
        if (v11 != 0xD000000000000017)
        {
          goto LABEL_49;
        }
      }
    }

    else if (a2)
    {
      v13 = 0xE900000000000077;
      if (v11 != 0x6152373134666470)
      {
        goto LABEL_49;
      }
    }

    else
    {
      v13 = 0xE600000000000000;
      if (v11 != 0x656369766564)
      {
        goto LABEL_49;
      }
    }

    goto LABEL_47;
  }

  if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v13 = 0x80000001006FA3E0;
      if (v11 != 0xD000000000000015)
      {
        goto LABEL_49;
      }

      goto LABEL_47;
    }

    v14 = 5919309;
LABEL_42:
    v13 = v14 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
    if (v11 != 0x74726F7073736170)
    {
      goto LABEL_49;
    }

    goto LABEL_47;
  }

  if (a2 == 6)
  {
    v14 = 4408910;
    goto LABEL_42;
  }

  v13 = 0xE800000000000000;
  if (v11 != 0x6E656B6F54696970)
  {
LABEL_49:
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_50;
  }

LABEL_47:
  if (v12 != v13)
  {
    goto LABEL_49;
  }

  v15 = 1;
LABEL_50:

  return v15 & 1;
}

uint64_t sub_10050D4F4(char a1, char a2)
{
  if (a1 == a2)
  {
    v2 = 1;
  }

  else
  {
    v2 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

Swift::Int sub_10050D558()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_10050D670()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_10050D758()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10050D85C()
{
  String.hash(into:)();
}

uint64_t sub_10050D9A0()
{
  String.hash(into:)();
}

uint64_t sub_10050DAE4()
{
  String.hash(into:)();
}

Swift::Int sub_10050DC30()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_10050DC84()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_10050DDE4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_10050DEFC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_10050E020()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_10050E120()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_10050E224()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_10050E308()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_10050E460()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10050E59C()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

unint64_t sub_10050E690@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10050E7D4(*a1);
  *a2 = result;
  return result;
}

void sub_10050E6C0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x44496574617473;
  v5 = 0xEA00000000004449;
  v6 = 0x6C616E6F6974616ELL;
  v7 = 0xE700000000000000;
  v8 = 0x44496F746F6870;
  if (v2 != 4)
  {
    v8 = 0xD000000000000017;
    v7 = 0x80000001006FA5F0;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE200000000000000;
  v10 = 27748;
  if (v2 != 1)
  {
    v10 = 0x6E776F6E6B6E75;
    v9 = 0xE700000000000000;
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

unint64_t sub_10050E780()
{
  result = qword_1008467B8;
  if (!qword_1008467B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008467B8);
  }

  return result;
}

unint64_t sub_10050E7D4(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1007FC0B0, v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10050E820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[102] = v8;
  v9[101] = v31;
  v9[100] = a8;
  v9[99] = a7;
  v9[98] = a6;
  v9[97] = a5;
  v9[96] = a4;
  v9[95] = a3;
  v9[94] = a2;
  v9[93] = a1;
  v10 = type metadata accessor for IdentityDocumentElement();
  v9[103] = v10;
  v11 = *(v10 - 8);
  v9[104] = v11;
  v12 = *(v11 + 64) + 15;
  v9[105] = swift_task_alloc();
  v9[106] = swift_task_alloc();
  v13 = type metadata accessor for ISO18013KnownDocTypes();
  v9[107] = v13;
  v14 = *(v13 - 8);
  v9[108] = v14;
  v15 = *(v14 + 64) + 15;
  v9[109] = swift_task_alloc();
  v16 = type metadata accessor for UUID();
  v9[110] = v16;
  v17 = *(v16 - 8);
  v9[111] = v17;
  v18 = *(v17 + 64) + 15;
  v9[112] = swift_task_alloc();
  v19 = type metadata accessor for Date();
  v9[113] = v19;
  v20 = *(v19 - 8);
  v9[114] = v20;
  v21 = *(v20 + 64) + 15;
  v9[115] = swift_task_alloc();
  v22 = *(*(sub_100007224(&unk_100844540, &unk_1006BFBC0) - 8) + 64) + 15;
  v9[116] = swift_task_alloc();
  v9[117] = swift_task_alloc();
  v9[118] = swift_task_alloc();
  v9[119] = swift_task_alloc();
  v23 = type metadata accessor for IdentityDocumentElementCategoryGroups();
  v9[120] = v23;
  v24 = *(v23 - 8);
  v9[121] = v24;
  v25 = *(v24 + 64) + 15;
  v9[122] = swift_task_alloc();
  v9[123] = swift_task_alloc();
  v9[124] = swift_task_alloc();
  v26 = type metadata accessor for Logger();
  v9[125] = v26;
  v27 = *(v26 - 8);
  v9[126] = v27;
  v28 = *(v27 + 64) + 15;
  v9[127] = swift_task_alloc();
  v9[128] = swift_task_alloc();

  return _swift_task_switch(sub_10050EB64, 0, 0);
}

uint64_t sub_10050EB64()
{
  v186 = v0;
  v1 = v0[124];
  v2 = v0[121];
  v3 = v0[120];
  v173 = v0[119];
  logc = v0[128];
  v4 = v0[101];
  v5 = v0[99];
  v6 = v0[97];
  v7 = v0[96];
  v170 = v0[94];
  v8 = v0[93];
  defaultLogger()();
  v9 = *(v2 + 16);
  v9(v1, v8, v3);
  v10 = v9;
  sub_10000BBC4(v6, v173, &unk_100844540, &unk_1006BFBC0);
  sub_1005107A4(v170, (v0 + 10));

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  sub_1005107DC(v170);
  v171 = v7;

  v174 = v5;

  v169 = v4;

  v166 = v9;
  if (os_log_type_enabled(v11, v12))
  {
    v164 = v12;
    log = v11;
    v13 = v0[124];
    v14 = v0[123];
    v15 = v0[121];
    v16 = v0[120];
    v159 = v0[118];
    v161 = v0[119];
    v157 = v0[96];
    v155 = v0 + 46;
    v156 = v0[95];
    v17 = v0;
    v18 = v0[94];
    v19 = swift_slowAlloc();
    v185 = swift_slowAlloc();
    *v19 = 136316418;
    v10(v14, v13, v16);
    v20 = String.init<A>(describing:)();
    v22 = v21;
    v168 = *(v15 + 8);
    v168(v13, v16);
    v23 = sub_100141FE4(v20, v22, &v185);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2080;
    v24 = v18[1];
    *(v0 + 23) = *v18;
    *(v0 + 24) = v24;
    v25 = v18[2];
    v26 = v18[3];
    v27 = v18[4];
    *(v0 + 441) = *(v18 + 73);
    *(v0 + 26) = v26;
    *(v0 + 27) = v27;
    *(v0 + 25) = v25;
    sub_1005107A4(v18, (v0 + 58));
    v28 = String.init<A>(describing:)();
    v30 = sub_100141FE4(v28, v29, &v185);

    *(v19 + 14) = v30;
    *(v19 + 22) = 2080;
    if (v157)
    {
      v31 = v156;
    }

    else
    {
      v31 = 7104878;
    }

    if (v157)
    {
      v32 = v171;
    }

    else
    {
      v32 = 0xE300000000000000;
    }

    v33 = sub_100141FE4(v31, v32, &v185);

    *(v19 + 24) = v33;
    *(v19 + 32) = 2080;
    sub_10000BBC4(v161, v159, &unk_100844540, &unk_1006BFBC0);
    v34 = type metadata accessor for URL();
    v35 = *(v34 - 8);
    v36 = (*(v35 + 48))(v159, 1, v34);
    v37 = v17;
    v38 = v17[118];
    if (v36 == 1)
    {
      sub_10000BE18(v38, &unk_100844540, &unk_1006BFBC0);
      v39 = 0xE300000000000000;
      v40 = 7104878;
    }

    else
    {
      v40 = URL.absoluteString.getter();
      v39 = v49;
      (*(v35 + 8))(v38, v34);
    }

    v0 = v37;
    v50 = v37[126];
    v160 = v37[125];
    v162 = v37[128];
    v158 = v37[101];
    v51 = v37[100];
    v52 = v37[99];
    v53 = v37[98];
    sub_10000BE18(v37[119], &unk_100844540, &unk_1006BFBC0);
    v54 = sub_100141FE4(v40, v39, &v185);

    *(v19 + 34) = v54;
    *(v19 + 42) = 2080;
    if (v52)
    {
      v55 = v53;
    }

    else
    {
      v55 = 7104878;
    }

    if (v52)
    {
      v56 = v174;
    }

    else
    {
      v56 = 0xE300000000000000;
    }

    v57 = sub_100141FE4(v55, v56, &v185);

    *(v19 + 44) = v57;
    *(v19 + 52) = 2080;
    if (v158)
    {
      v58 = v51;
    }

    else
    {
      v58 = 7104878;
    }

    if (v158)
    {
      v59 = v169;
    }

    else
    {
      v59 = 0xE300000000000000;
    }

    v60 = sub_100141FE4(v58, v59, &v185);

    *(v19 + 54) = v60;
    _os_log_impl(&_mh_execute_header, log, v164, "Pass addHistoryEvent\nelementCategoryGroups: %s\ntransactionSource: %s\nmerchantNameOverride: %s\nmerchantPrivacyPolicyOverride: %s\nlocalizedRelyingPartyName: %s\nusageDescription: %s", v19, 0x3Eu);
    swift_arrayDestroy();

    v48 = *(v50 + 8);
    (v48)(v162, v160);
  }

  else
  {
    v41 = v0[128];
    v42 = v0[126];
    v43 = v0[125];
    v44 = v0[124];
    v45 = v0[121];
    v46 = v0[120];
    v47 = v0[119];

    sub_10000BE18(v47, &unk_100844540, &unk_1006BFBC0);
    v168 = *(v45 + 8);
    v168(v44, v46);
    v48 = *(v42 + 8);
    (v48)(v41, v43);
  }

  v61 = v0[94];
  v62 = [objc_allocWithZone(PKPaymentService) init];
  v0[129] = v62;
  if (*(v61 + 88) >= 0)
  {
    v63 = 2;
  }

  else
  {
    v63 = 3;
  }

  v64 = [objc_opt_self() paymentTransactionWithSource:v63];
  v0[130] = v64;
  if (v64)
  {
    loga = v48;
    v163 = v62;
    v65 = v0[115];
    v66 = v0[114];
    v67 = v0[113];
    v68 = v0[112];
    v69 = v0[111];
    v70 = v0[110];
    v71 = v0[94];
    v72 = v64;
    [v64 setTransactionType:15];
    Date.init()();
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v66 + 8))(v65, v67);
    [v72 setTransactionDate:isa];

    [v72 setTransactionStatus:1];
    UUID.init()();
    UUID.uuidString.getter();
    (*(v69 + 8))(v68, v70);
    v74 = String._bridgeToObjectiveC()();

    [v72 setIdentifier:v74];

    [v72 setOriginatedByDevice:1];
    v165 = v72;
    [v72 setHasNotificationServiceData:1];
    if (sub_10051112C(v71))
    {
      v75 = v0[127];
      defaultLogger()();
      v76 = Logger.logObject.getter();
      v77 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        *v78 = 0;
        _os_log_impl(&_mh_execute_header, v76, v77, "The bundleID is associated with an App Clip. Will set requiresLocation to true", v78, 2u);
      }

      v79 = v0[127];
      v80 = v0[126];
      v81 = v0[125];

      (loga)(v79, v81);
      [v72 setRequiresLocation:1];
    }

    v82 = v0[117];
    v83 = v0[97];
    v166(v0[122], v0[93], v0[120]);
    sub_10000BBC4(v83, v82, &unk_100844540, &unk_1006BFBC0);
    v0[81] = type metadata accessor for BundleRecordFetcher();
    v0[82] = &protocol witness table for BundleRecordFetcher;
    sub_100032DBC(v0 + 78);
    BundleRecordFetcher.init()();
    v84 = IdentityDocumentElementCategoryGroups.recognizedElements.getter();
    v85 = *(v84 + 16);
    if (v85)
    {
      v86 = v0[104];
      v185 = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      sub_10001F8D4(0, &qword_10083BCE8, PKTransactionReleasedDataElement_ptr);
      v89 = *(v86 + 16);
      v88 = v86 + 16;
      v87 = v89;
      v90 = v84 + ((*(v88 + 64) + 32) & ~*(v88 + 64));
      logb = *(v88 + 56);
      do
      {
        v91 = v0[106];
        v92 = v0[105];
        v93 = v0[103];
        v87(v91, v90, v93);
        v87(v92, v91, v93);
        sub_100510250(v92);
        (*(v88 - 8))(v91, v93);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v94 = *(v185 + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v90 += logb;
        --v85;
      }

      while (v85);

      v95 = v185;
      if (!(v185 >> 62))
      {
LABEL_37:
        if (*((v95 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_38:
          v96 = v0;
          v97 = v0[122];
          v183 = v0[117];
          v98 = v0[116];
          v99 = v0[109];
          v100 = v0[108];
          v101 = v96[107];
          logd = v96[101];
          v167 = v96[100];
          v102 = v96[94];
          v103 = objc_allocWithZone(PKTransactionReleasedData);
          IdentityDocumentElementCategoryGroups.documentType.getter();
          ISO18013KnownDocTypes.rawValue.getter();
          (*(v100 + 8))(v99, v101);
          v104 = String._bridgeToObjectiveC()();

          v105 = [v103 initWithDocumentType:v104];

          v106 = v105;
          sub_1006974E0(v95);
          v107 = v96;

          sub_10001F8D4(0, &qword_10083BCE8, PKTransactionReleasedDataElement_ptr);
          sub_100511838();
          v108 = Set._bridgeToObjectiveC()().super.isa;

          [v106 setElements:v108];

          sub_100020260((v96 + 78), (v96 + 83));
          v109 = v96[86];
          v110 = sub_10001F370((v96 + 83), v109);
          v111 = *(v109 - 8);
          v112 = *(v111 + 64) + 15;
          v113 = swift_task_alloc();
          (*(v111 + 16))(v113, v110, v109);
          sub_1005107A4(v102, (v96 + 22));

          v114 = sub_10051080C(v102, v167, logd, v113);
          sub_10000BB78(v96 + 83);

          [v106 setApplication:v114];

          sub_10000BBC4(v183, v98, &unk_100844540, &unk_1006BFBC0);
          v115 = type metadata accessor for URL();
          v116 = *(v115 - 8);
          v118 = 0;
          if ((*(v116 + 48))(v98, 1, v115) != 1)
          {
            v119 = v96[116];
            URL._bridgeToObjectiveC()(v117);
            v118 = v120;
            (*(v116 + 8))(v119, v115);
          }

          v121 = v96[96];
          [v106 setPrivacyPolicyURL:{v118, v155}];

          if (v121 && (v96[88] = v96[95], v96[89] = v171, sub_1000ACCA0(), Collection.nilIfEmpty.getter(), v96[91]))
          {
            v122 = v96[90];
            v123 = v96[91];
            v124 = String._bridgeToObjectiveC()();
          }

          else
          {
            v124 = 0;
          }

          [v106 setMerchantNameOverride:v124];

          goto LABEL_51;
        }

LABEL_50:

        v106 = 0;
        v107 = v0;
LABEL_51:
        v137 = v107 + 2;
        logf = v107 + 92;
        v138 = v107[122].isa;
        v139 = v107[121].isa;
        v140 = v107[120].isa;
        v141 = v107[117].isa;
        v142 = v107[102].isa;
        v143 = v107[99].isa;
        v144 = v107[98].isa;
        v145 = v107;
        v146 = v107[94].isa;
        sub_10000BE18(v141, &unk_100844540, &unk_1006BFBC0);
        v168(v138, v140);
        sub_10000BB78(&v145[78]);
        [v165 setReleasedData:v106];

        sub_10001F8D4(0, &qword_100846890, PKMerchant_ptr);
        sub_1005107A4(v146, &v145[34]);

        sub_10050FFC0(v146, v144, v143);
        v148 = v147;
        [v165 setMerchant:v147];

        v149 = v142[3];
        v150 = v142[4];
        v151 = v165;
        v152 = String._bridgeToObjectiveC()();
        v145[131].isa = v152;
        v153 = v142[2];
        v145[2].isa = v145;
        v145[7].isa = logf;
        v145[3].isa = sub_10050FAF8;
        v154 = swift_continuation_init();
        v145[77].isa = sub_100007224(&qword_100846898, &unk_1006E7360);
        v145[74].isa = v154;
        v145[70].isa = _NSConcreteStackBlock;
        v145[71].isa = 1107296256;
        v145[72].isa = sub_1005101EC;
        v145[73].isa = &unk_100815C00;
        [v163 insertOrUpdatePaymentTransaction:v151 forPassUniqueIdentifier:v152 paymentApplication:v153 completion:?];

        return _swift_continuation_await(v137);
      }
    }

    else
    {

      v95 = _swiftEmptyArrayStorage;
      if (!(_swiftEmptyArrayStorage >> 62))
      {
        goto LABEL_37;
      }
    }

    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_38;
    }

    goto LABEL_50;
  }

  v125 = v0[128];
  v126 = v0[127];
  v127 = v0[124];
  v128 = v0[123];
  v129 = v0[122];
  v130 = v0[119];
  v131 = v0[118];
  v132 = v0[117];
  v133 = v0[116];
  v134 = v0[115];
  v172 = v0[112];
  v175 = v0[109];
  loge = v0[106];
  v184 = v0[105];

  v135 = v0[1];

  return v135();
}

uint64_t sub_10050FAF8()
{
  v1 = *v0;
  v3 = *v0;

  return _swift_task_switch(sub_10050FBD8, 0, 0);
}

uint64_t sub_10050FBD8()
{
  v1 = v0[131];
  v2 = v0[130];
  v3 = v0[129];

  v4 = v0[92];
  v5 = v0[128];
  v6 = v0[127];
  v7 = v0[124];
  v8 = v0[123];
  v9 = v0[122];
  v10 = v0[119];
  v11 = v0[118];
  v12 = v0[117];
  v13 = v0[116];
  v14 = v0[115];
  v17 = v0[112];
  v18 = v0[109];
  v19 = v0[106];
  v20 = v0[105];

  v15 = v0[1];

  return v15();
}

void *sub_10050FD20()
{
  v1 = v0;
  v2 = *v0;
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v1;
    v22 = v11;
    *v10 = 136315138;

    v12 = String.init<A>(describing:)();
    v14 = sub_100141FE4(v12, v13, &v22);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v8, v9, "denit from %s called", v10, 0xCu);
    sub_10000BB78(v11);
  }

  (*(v4 + 8))(v7, v3);
  v15 = v1[10];

  os_unfair_lock_lock((v15 + 24));
  [*(v15 + 16) invalidate];
  os_unfair_lock_unlock((v15 + 24));

  v16 = v1[4];

  v17 = v1[6];

  v18 = v1[9];

  v19 = v1[10];

  return v1;
}

uint64_t sub_10050FF68()
{
  sub_10050FD20();

  return swift_deallocClassInstance();
}

void sub_10050FFC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_100007224(&unk_100844540, &unk_1006BFBC0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v26 - v7;
  v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (a3)
  {
    v10 = String._bridgeToObjectiveC()();

    [v9 setName:v10];
  }

  v11 = *a1;
  v12 = *(a1 + 8);
  v13 = *(a1 + 88);
  if (v13 < 0)
  {
    v17 = *a1;
    v18 = *(a1 + 16);
    v19 = *(a1 + 24);
    URL.init(string:)();
    v20 = type metadata accessor for URL();
    v21 = *(v20 - 8);
    v23 = 0;
    if ((*(v21 + 48))(v8, 1, v20) != 1)
    {
      URL._bridgeToObjectiveC()(v22);
      v23 = v24;
      (*(v21 + 8))(v8, v20);
    }

    [v9 setOriginURL:v23];

    if (v12)
    {
      v25 = String._bridgeToObjectiveC()();
    }

    else
    {
      v25 = 0;
    }

    [v9 setBusinessConnectBrandIdentifier:v25];
    sub_1005107DC(a1);
  }

  else
  {
    v14 = *(a1 + 80);
    v15 = *(a1 + 8);
    v16 = String._bridgeToObjectiveC()();
    [v9 setMerchantIdentifier:v16];

    if (v13)
    {
LABEL_7:
      sub_1005107DC(a1);
      return;
    }

    if ((v14 & 0x8000000000000000) == 0)
    {
      [v9 setAdamIdentifier:v14];
      goto LABEL_7;
    }

    __break(1u);
  }
}

uint64_t sub_1005101EC(uint64_t a1, void *a2)
{
  v3 = sub_10000BA08((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return _swift_continuation_resume(v4);
}

id sub_100510250(char *a1)
{
  v2 = type metadata accessor for IdentityDocumentElement();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v44 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v37 - v7;
  v9 = type metadata accessor for Logger();
  v45 = *(v9 - 8);
  v46 = v9;
  v10 = *(v45 + 64);
  __chkstk_darwin(v9);
  v47 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for IdentityDocumentElement.RetentionIntent();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = (&v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  IdentityDocumentElement.namespace.getter();
  v18 = String._bridgeToObjectiveC()();

  [v17 setElementNamespace:v18];

  IdentityDocumentElement.identifier.getter();
  v19 = String._bridgeToObjectiveC()();

  [v17 setIdentifier:v19];

  IdentityDocumentElement.retentionIntent.getter();
  v20 = (*(v13 + 88))(v16, v12);
  if (v20 == enum case for IdentityDocumentElement.RetentionIntent.retain(_:))
  {
    (*(v13 + 96))(v16, v12);
    v21 = *v16;
    [v17 setRetentionIntent:1];
    [v17 setRetentionPeriod:v21];
LABEL_7:
    (*(v3 + 8))(a1, v2);
    return v17;
  }

  if (v20 == enum case for IdentityDocumentElement.RetentionIntent.doNotRetain(_:))
  {
    [v17 setRetentionIntent:2];
    goto LABEL_7;
  }

  if (v20 == enum case for IdentityDocumentElement.RetentionIntent.displayOnly(_:))
  {
    [v17 setRetentionIntent:3];
    goto LABEL_7;
  }

  defaultLogger()();
  v23 = *(v3 + 16);
  v43 = v2;
  v41 = v23;
  v23(v8, a1, v2);
  v24 = Logger.logObject.getter();
  v42 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v24, v42))
  {
    v25 = swift_slowAlloc();
    v38 = v25;
    v40 = swift_slowAlloc();
    v48 = v40;
    *v25 = 136315138;
    v39 = v24;
    v26 = v43;
    v41(v44, v8, v43);
    v27 = v26;
    v44 = String.init<A>(describing:)();
    v29 = v28;
    v30 = v8;
    v31 = *(v3 + 8);
    v31(v30, v27);
    v32 = sub_100141FE4(v44, v29, &v48);

    v33 = v38;
    v34 = v39;
    *(v38 + 1) = v32;
    _os_log_impl(&_mh_execute_header, v34, v42, "PKTransactionReleasedData received unknown retention intent for element %s. Defaulting to a retained retentonIntent", v33, 0xCu);
    sub_10000BB78(v40);

    (*(v45 + 8))(v47, v46);
    v35 = v43;
  }

  else
  {

    v36 = v8;
    v31 = *(v3 + 8);
    v35 = v43;
    v31(v36, v43);
    (*(v45 + 8))(v47, v46);
  }

  [v17 setRetentionIntent:1];
  v31(a1, v35);
  (*(v13 + 8))(v16, v12);
  return v17;
}

void *sub_10051080C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for Logger();
  v74 = *(v8 - 8);
  v75 = v8;
  v9 = *(v74 + 64);
  v10 = __chkstk_darwin(v8);
  v12 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = sub_100007224(&qword_10083ACF8, &qword_1006D8FC0);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v16 = __chkstk_darwin(v15);
  v73 = &v65 - v17;
  v18 = __chkstk_darwin(v16);
  v76 = &v65 - v19;
  v20 = __chkstk_darwin(v18);
  v22 = &v65 - v21;
  v23 = __chkstk_darwin(v20);
  v25 = &v65 - v24;
  __chkstk_darwin(v23);
  v78 = &v65 - v27;
  if (*(a1 + 88) < 0)
  {

    sub_1005107DC(a1);
    v35 = type metadata accessor for BundleRecordFetcher();
    (*(*(v35 - 8) + 8))(a4, v35);
    return 0;
  }

  v67 = v26;
  v68 = a2;
  v70 = a3;
  v71 = v12;
  v29 = *(a1 + 40);
  v28 = *(a1 + 48);
  v31 = *(a1 + 24);
  v30 = *(a1 + 32);
  v72 = a1;
  v32 = *(a1 + 16);
  v80 = v28;
  v33 = [objc_allocWithZone(PKTransactionReleasedDataApplication) init];
  v34 = type metadata accessor for BundleRecordFetcher();
  v69 = v33;
  dispatch thunk of BundleRecordFetching.record(withAuditToken:)();
  (*(*(v34 - 8) + 8))(a4, v34);
  v37 = type metadata accessor for BundleRecord();
  (*(*(v37 - 8) + 56))(v25, 0, 1, v37);
  v38 = v25;
  v39 = v78;
  sub_100330950(v38, v78);
  v40 = v76;
  sub_10000BBC4(v39, v22, &qword_10083ACF8, &qword_1006D8FC0);
  type metadata accessor for BundleRecord();
  v41 = *(v37 - 8);
  v42 = *(v41 + 48);
  if (v42(v22, 1, v37) == 1)
  {
    sub_10000BE18(v22, &qword_10083ACF8, &qword_1006D8FC0);
    v43 = v72;
  }

  else
  {
    BundleRecord.bundleIdentifier.getter();
    v45 = v44;
    (*(v41 + 8))(v22, v37);
    v43 = v72;
    if (v45)
    {

      goto LABEL_16;
    }
  }

  v77 = v37;
  v46 = v71;
  defaultLogger()();
  sub_10000BBC4(v39, v40, &qword_10083ACF8, &qword_1006D8FC0);
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v79 = v66;
    *v49 = 136315138;
    v50 = v67;
    sub_10000BBC4(v40, v67, &qword_10083ACF8, &qword_1006D8FC0);
    v51 = v77;
    if (v42(v50, 1, v77) == 1)
    {
      sub_10000BE18(v50, &qword_10083ACF8, &qword_1006D8FC0);
    }

    else
    {
      v52 = BundleRecord.applicationIdentifier.getter();
      v54 = v53;
      (*(v41 + 8))(v50, v51);
      if (v54)
      {
        sub_10000BE18(v76, &qword_10083ACF8, &qword_1006D8FC0);
        v55 = v52;
LABEL_15:
        v43 = v72;
        v56 = sub_100141FE4(v55, v54, &v79);

        *(v49 + 4) = v56;
        _os_log_impl(&_mh_execute_header, v47, v48, "PKTransactionReleasedData.makeFromRequestedElements Record bundle identifier is nil for application identifier: %s", v49, 0xCu);
        sub_10000BB78(v66);

        (*(v74 + 8))(v71, v75);
        v37 = v77;
        v39 = v78;
        goto LABEL_16;
      }
    }

    sub_10000BE18(v76, &qword_10083ACF8, &qword_1006D8FC0);

    v54 = 0xE500000000000000;
    v55 = 0x3E6C696E3CLL;
    goto LABEL_15;
  }

  sub_10000BE18(v40, &qword_10083ACF8, &qword_1006D8FC0);
  (*(v74 + 8))(v46, v75);
  v37 = v77;
LABEL_16:
  v57 = v73;
  sub_10000BBC4(v39, v73, &qword_10083ACF8, &qword_1006D8FC0);
  if (v42(v57, 1, v37) == 1)
  {
    sub_10000BE18(v57, &qword_10083ACF8, &qword_1006D8FC0);
    v58 = 0;
    v36 = v69;
    v59 = v70;
  }

  else
  {
    BundleRecord.bundleIdentifier.getter();
    v61 = v60;
    (*(v41 + 8))(v57, v37);
    v36 = v69;
    v59 = v70;
    if (v61)
    {
      v58 = String._bridgeToObjectiveC()();
    }

    else
    {
      v58 = 0;
    }
  }

  [v36 setBundleIdentifier:v58];

  if (v80)
  {
    v62 = 1;
  }

  else
  {
    v62 = 2;
  }

  [v36 setClient:v62];
  if (v59)
  {
    v63 = String._bridgeToObjectiveC()();
  }

  else
  {
    v63 = 0;
  }

  [v36 setUsageDescription:v63];

  sub_1005107DC(v43);
  sub_10000BE18(v39, &qword_10083ACF8, &qword_1006D8FC0);
  return v36;
}

uint64_t sub_10051112C(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v61 = (&v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __chkstk_darwin(v5);
  v9 = &v54 - v8;
  __chkstk_darwin(v7);
  v57 = &v54 - v10;
  v11 = type metadata accessor for BundleRecord.RecordType();
  v60 = *(v11 - 8);
  v12 = *(v60 + 64);
  __chkstk_darwin(v11);
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for BundleRecordFetcher();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for BundleRecord();
  v21 = *(*(v20 - 8) + 64);
  v22 = __chkstk_darwin(v20);
  v23 = __chkstk_darwin(v22);
  v27 = &v54 - v26;
  if (*(a1 + 88) < 0)
  {
    defaultLogger()();
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "App Clips can only be associated with inApp presentments", v35, 2u);
    }

    (*(v3 + 8))(v9, v2);
    return 0;
  }

  v54 = v25;
  v55 = v24;
  v56 = v23;
  v58 = v3;
  v59 = v2;
  v29 = *(a1 + 32);
  v28 = *(a1 + 40);
  v32 = a1 + 16;
  v30 = *(a1 + 16);
  v31 = *(v32 + 8);
  BundleRecordFetcher.init()();
  BundleRecordFetcher.record(withAuditToken:)();
  (*(v16 + 8))(v19, v15);
  BundleRecord.recordType.getter();
  v36 = v60;
  if ((*(v60 + 88))(v14, v11) != enum case for BundleRecord.RecordType.appClip(_:))
  {
    (*(v55 + 8))(v27, v56);
    (*(v36 + 8))(v14, v11);
    return 0;
  }

  (*(v36 + 8))(v14, v11);
  v37 = v57;
  defaultLogger()();
  v39 = v54;
  v38 = v55;
  v40 = v56;
  (*(v55 + 16))(v54, v27, v56);
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v62 = v61;
    *v43 = 136315138;
    v44 = BundleRecord.applicationIdentifier.getter();
    if (v45)
    {
      v46 = v44;
    }

    else
    {
      v46 = 0x3E6C696E3CLL;
    }

    if (v45)
    {
      v47 = v45;
    }

    else
    {
      v47 = 0xE500000000000000;
    }

    v48 = *(v38 + 8);
    v49 = v39;
    v50 = v56;
    v48(v49, v56);
    v51 = sub_100141FE4(v46, v47, &v62);

    *(v43 + 4) = v51;
    _os_log_impl(&_mh_execute_header, v41, v42, "The application identifier %s is associated with an App Clip", v43, 0xCu);
    sub_10000BB78(v61);

    (*(v58 + 8))(v37, v59);
    v48(v27, v50);
    return 1;
  }

  else
  {

    v53 = *(v38 + 8);
    v53(v39, v40);
    (*(v58 + 8))(v37, v59);
    v53(v27, v40);
    return 1;
  }
}

unint64_t sub_100511838()
{
  result = qword_100846888;
  if (!qword_100846888)
  {
    sub_10001F8D4(255, &qword_10083BCE8, PKTransactionReleasedDataElement_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100846888);
  }

  return result;
}

__n128 sub_1005118D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1005118FC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 89))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_10051194C(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 88) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 89) = 1;
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
      result = 0.0;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
      *(a1 + 48) = 2 * -a2;
      *(a1 + 56) = 0u;
      *(a1 + 72) = 0u;
      *(a1 + 88) = 0;
      return result;
    }

    *(a1 + 89) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1005119D0(uint64_t result, char a2)
{
  v2 = *(result + 88) & 1 | (a2 << 7);
  *(result + 48) &= 1uLL;
  *(result + 88) = v2;
  return result;
}

void sub_100511A24(unint64_t a1, int a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      sub_10001F8D4(0, &qword_100840E40, PKAppletSubcredential_ptr);
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_10001F8D4(0, &qword_100840E40, PKAppletSubcredential_ptr);
    if (__CocoaSet.Index.age.getter() != *(a4 + 36))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    __CocoaSet.Index.element.getter();
    swift_dynamicCast();
    v4 = v14;
    v7 = NSObject._rawHashValue(seed:)(*(a4 + 40));
    v8 = -1 << *(a4 + 32);
    a1 = v7 & ~v8;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v9 = ~v8;
      do
      {
        v10 = *(*(a4 + 48) + 8 * a1);
        v11 = static NSObject.== infix(_:_:)();

        if (v11)
        {
          goto LABEL_16;
        }

        a1 = (a1 + 1) & v9;
      }

      while (((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) != 0);
    }

    __break(1u);
  }

  if ((a1 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= a1)
  {
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }

  v12 = *(*(a4 + 48) + 8 * a1);

  v13 = v12;
}

void sub_100511C48(uint64_t a1, unint64_t a2)
{
  v102 = a2;
  v101 = a1;
  v100 = type metadata accessor for Logger();
  v99 = *(v100 - 8);
  v3 = *(v99 + 64);
  v4 = __chkstk_darwin(v100);
  v6 = &v96 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v96 - v7;
  v98 = [objc_allocWithZone(PKPassLibrary) init];
  v9 = [v98 passesOfType:1];
  sub_10001F8D4(0, &qword_100840E38, PKPass_ptr);
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v10 >> 62)
  {
    goto LABEL_72;
  }

  v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v11)
  {
LABEL_73:

LABEL_74:
    defaultLogger()();
    v90 = v102;

    v91 = Logger.logObject.getter();
    v92 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      v94 = v6;
      v95 = swift_slowAlloc();
      v119[0] = v95;
      *v93 = 136315138;
      *(v93 + 4) = sub_100141FE4(v101, v90, v119);
      _os_log_impl(&_mh_execute_header, v91, v92, "Did not find pass for credential %s", v93, 0xCu);
      sub_10000BB78(v95);

      (*(v99 + 8))(v94, v100);
    }

    else
    {

      (*(v99 + 8))(v6, v100);
    }

    return;
  }

LABEL_3:
  v97 = v6;
  v96 = v8;
  v8 = 0;
  v6 = (v10 & 0xC000000000000001);
  v106 = v10 + 32;
  v107 = v10 & 0xFFFFFFFFFFFFFF8;
  v12 = &_s7CoreIDV49ISO18013_AAMVA_DomesticDrivingPrivilegeIdentifierO20domesticVehicleClassyA2CmFWC_ptr;
  v13 = &selRef_setSupportedEncoding_;
  v104 = v11;
  v105 = v10;
  v103 = v10 & 0xC000000000000001;
  while (1)
  {
LABEL_6:
    if (v6)
    {
      v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v8 >= *(v107 + 16))
      {
        goto LABEL_71;
      }

      v14 = *(v106 + 8 * v8);
    }

    v15 = v14;
    if (__OFADD__(v8++, 1))
    {
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      v11 = _CocoaArrayWrapper.endIndex.getter();
      if (!v11)
      {
        goto LABEL_73;
      }

      goto LABEL_3;
    }

    v17 = v12[331];
    objc_opt_self();
    v18 = swift_dynamicCastObjCClass();
    if (v18)
    {
      break;
    }

LABEL_5:

    if (v8 == v11)
    {
LABEL_58:

      v6 = v97;
      goto LABEL_74;
    }
  }

  v19 = v18;
  v15 = v15;
  if (![v19 v13[274]])
  {

    goto LABEL_5;
  }

  v113 = v15;
  v20 = [v19 devicePaymentApplications];
  if (!v20)
  {
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
    return;
  }

  v21 = v20;
  v110 = v8;
  v22 = sub_10001F8D4(0, &qword_100846948, PKPaymentApplication_ptr);
  v23 = sub_100512C3C(&qword_100846950, &qword_100846948, PKPaymentApplication_ptr);
  v24 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v108 = v19;
  if ((v24 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v24 = v119[1];
    v25 = v119[2];
    v26 = v119[3];
    v27 = v119[4];
    v28 = v119[5];
  }

  else
  {
    v27 = 0;
    v29 = -1 << *(v24 + 32);
    v25 = v24 + 56;
    v26 = ~v29;
    v30 = -v29;
    if (v30 < 64)
    {
      v31 = ~(-1 << v30);
    }

    else
    {
      v31 = -1;
    }

    v28 = v31 & *(v24 + 56);
  }

  v111 = v26;
  v32 = (v26 + 64) >> 6;
  v114 = v22;
  v115 = v25;
  while (1)
  {
LABEL_22:
    if (v24 < 0)
    {
      v37 = __CocoaSet.Iterator.next()();
      if (!v37 || (v118 = v37, swift_dynamicCast(), v36 = v119[0], v35 = v27, v23 = v28, !v119[0]))
      {
LABEL_57:
        v65 = v113;

        sub_10001FA6C();
        v11 = v104;
        v10 = v105;
        v8 = v110;
        v6 = v103;
        v12 = &_s7CoreIDV49ISO18013_AAMVA_DomesticDrivingPrivilegeIdentifierO20domesticVehicleClassyA2CmFWC_ptr;
        v13 = &selRef_setSupportedEncoding_;
        if (v110 != v104)
        {
          goto LABEL_6;
        }

        goto LABEL_58;
      }
    }

    else
    {
      v33 = v27;
      v34 = v28;
      v35 = v27;
      if (!v28)
      {
        while (1)
        {
          v35 = v33 + 1;
          if (__OFADD__(v33, 1))
          {
            break;
          }

          if (v35 >= v32)
          {
            goto LABEL_57;
          }

          v34 = *(v25 + 8 * v35);
          ++v33;
          if (v34)
          {
            goto LABEL_27;
          }
        }

        __break(1u);
        goto LABEL_67;
      }

LABEL_27:
      v23 = (v34 - 1) & v34;
      v36 = *(*(v24 + 48) + ((v35 << 9) | (8 * __clz(__rbit64(v34)))));
      if (!v36)
      {
        goto LABEL_57;
      }
    }

    if ([v36 state] == 1)
    {
      break;
    }

    v27 = v35;
    v28 = v23;
  }

  v38 = v36;
  v39 = v24;
  v116 = v38;
  v117 = v23;
  v40 = [v38 subcredentials];
  if (!v40)
  {
    __break(1u);
    goto LABEL_78;
  }

  v41 = v40;
  sub_10001F8D4(0, &qword_100840E40, PKAppletSubcredential_ptr);
  sub_100512C3C(&qword_100840E48, &qword_100840E40, PKAppletSubcredential_ptr);
  v23 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v2 = v23 & 0xC000000000000001;
  if ((v23 & 0xC000000000000001) != 0)
  {
    v112 = v28;
    v109 = v27;
    v42 = __CocoaSet.startIndex.getter();
    v44 = v43;
    v45 = __CocoaSet.endIndex.getter();
    v47 = v46;
    v48 = static __CocoaSet.Index.== infix(_:_:)();
    sub_100316220(v45, v47, 1);
    v24 = v39;
    v49 = v117;
    if ((v48 & 1) == 0)
    {
      goto LABEL_44;
    }

LABEL_42:
    sub_100316220(v42, v44, v2 != 0);

LABEL_52:
    v27 = v35;
    v28 = v49;
    v25 = v115;
    goto LABEL_22;
  }

  v50 = 0;
  v51 = (v23 + 56);
  v42 = 1 << *(v23 + 32);
  v52 = (v42 + 63) >> 6;
  while (1)
  {
    v54 = *v51++;
    v53 = v54;
    if (v54)
    {
      break;
    }

    v50 -= 64;
    if (!--v52)
    {
      v44 = *(v23 + 36);
LABEL_41:
      v49 = v117;
      goto LABEL_42;
    }
  }

  v112 = v28;
  v55 = __clz(__rbit64(v53));
  v44 = *(v23 + 36);
  if (v55 - v42 == v50)
  {
    goto LABEL_41;
  }

  v109 = v27;
  v42 = v55 - v50;
  v49 = v117;
LABEL_44:
  sub_100511A24(v42, v44, v2 != 0, v23);
  v57 = v56;
  sub_100316220(v42, v44, v2 != 0);

  v58 = [v57 identifier];

  if (!v58)
  {

    goto LABEL_52;
  }

  v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v60;

  if (v59 == v101 && v23 == v102)
  {
  }

  else
  {
    v62 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v62 & 1) == 0)
    {

LABEL_56:
      v27 = v35;
      v28 = v49;
      v25 = v115;
      goto LABEL_22;
    }
  }

  v63 = v113;
  v64 = [v108 uniqueID];
  if (!v64)
  {

    goto LABEL_56;
  }

  v35 = v63;
  v66 = v64;

  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = v67;

  v68 = v96;
  defaultLogger()();

  v69 = v102;

  v70 = Logger.logObject.getter();
  v71 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    v119[0] = swift_slowAlloc();
    *v72 = 136315394;
    *(v72 + 4) = sub_100141FE4(v2, v32, v119);
    *(v72 + 12) = 2080;
    *(v72 + 14) = sub_100141FE4(v101, v69, v119);
    _os_log_impl(&_mh_execute_header, v70, v71, "Found pass %s for credential %s", v72, 0x16u);
    swift_arrayDestroy();
  }

  (*(v99 + 8))(v68, v100);
  v73 = v108;
  v74 = [v108 localizedDescription];

  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v75;

  v76 = [v73 identityType];
  if (v76 >= 6)
  {
    LOBYTE(v25) = 2;
  }

  else
  {
    LOBYTE(v25) = 0x50304000102uLL >> (8 * v76);
  }

  v77 = [v73 issuerAdministrativeAreaCode];
  if (v77)
  {
    v78 = v77;
    v79 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v81 = v80;

    goto LABEL_68;
  }

LABEL_67:
  v79 = 0;
  v81 = 0;
LABEL_68:
  type metadata accessor for Pass();
  v82 = swift_allocObject();
  *(v82 + 16) = v116;
  *(v82 + 24) = v2;
  *(v82 + 32) = v32;
  *(v82 + 40) = v23;
  *(v82 + 48) = v28;
  *(v82 + 56) = v25;
  *(v82 + 64) = v79;
  *(v82 + 72) = v81;
  v83 = v82;
  v84 = objc_opt_self();
  v85 = PKPassKitCoreBundle();
  v86 = String._bridgeToObjectiveC()();
  v87 = [v84 newAssertionForBundle:v85 withReason:v86];

  if (!v87)
  {
    goto LABEL_79;
  }

  sub_100007224(&qword_100846958, &qword_1006E7428);
  v88 = swift_allocObject();
  *(v88 + 24) = 0;
  v89 = v87;

  sub_10001FA6C();
  *(v88 + 16) = v89;

  *(v83 + 80) = v88;
}

unint64_t sub_1005127B4()
{
  v26 = [objc_allocWithZone(PKPassLibrary) init];
  v0 = [v26 passesOfType:1];
  sub_10001F8D4(0, &qword_100840E38, PKPass_ptr);
  v1 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v1 >> 62)
  {
LABEL_19:
    v2 = _CocoaArrayWrapper.endIndex.getter();
    if (!v2)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      goto LABEL_20;
    }
  }

  v3 = 0;
  do
  {
    v4 = v3;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v5 = *(v1 + 8 * v4 + 32);
      }

      v6 = v5;
      v3 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        break;
      }

      ++v4;
      if (v3 == v2)
      {
        goto LABEL_20;
      }
    }

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v7 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  while (v3 != v2);
LABEL_20:

  if (_swiftEmptyArrayStorage >> 62)
  {
LABEL_52:
    v8 = _CocoaArrayWrapper.endIndex.getter();
    if (v8)
    {
      goto LABEL_22;
    }

LABEL_53:

    return 6;
  }

  v8 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v8)
  {
    goto LABEL_53;
  }

LABEL_22:
  v9 = 0;
  while (1)
  {
    if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
    {
      v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v9 >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_51;
      }

      v10 = _swiftEmptyArrayStorage[v9 + 4];
    }

    v11 = v10;
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    v13 = String.lowercased()();
    v14 = [v11 issuerAdministrativeAreaCode];
    if (v14)
    {
      v15 = v14;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v16 = String.lowercased()();

      if (v13._countAndFlagsBits == v16._countAndFlagsBits && v13._object == v16._object)
      {
      }

      else
      {
        v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v18 & 1) == 0)
        {
          goto LABEL_44;
        }
      }

      v19 = String.lowercased()();
      v20 = [v11 issuerCountryCode];
      if (v20)
      {
        break;
      }
    }

LABEL_24:
    ++v9;
    if (v12 == v8)
    {
      goto LABEL_53;
    }
  }

  v21 = v20;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v22 = String.lowercased()();

  if (v19._countAndFlagsBits == v22._countAndFlagsBits && v19._object == v22._object)
  {
  }

  else
  {
    v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v23 & 1) == 0)
    {
      goto LABEL_44;
    }
  }

  if ([v11 isRemotePass])
  {
LABEL_44:

    goto LABEL_24;
  }

  v24 = [v11 identityType];

  if (v24 > 5)
  {
    return 2;
  }

  else
  {
    return 0x50304000102uLL >> (8 * v24);
  }
}

uint64_t sub_100512C3C(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10001F8D4(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100512C8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = v20 - v9;
  sub_1003F1504(a1, v20 - v9);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_10000BE18(v10, &unk_100845860, &unk_1006BF9D0);
    if (*(a3 + 16))
    {
LABEL_3:
      v13 = *(a3 + 24);
      swift_getObjectType();
      swift_unknownObjectRetain();
      v14 = dispatch thunk of Actor.unownedExecutor.getter();
      v16 = v15;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v14 = 0;
  v16 = 0;
LABEL_6:
  v17 = *v4;
  v18 = (v16 | v14);
  if (v16 | v14)
  {
    v21[0] = 0;
    v21[1] = 0;
    v18 = v21;
    v21[2] = v14;
    v21[3] = v16;
  }

  v20[1] = 1;
  v20[2] = v18;
  v20[3] = v17;
  swift_task_create();
}

uint64_t sub_100512E94(uint64_t (**a1)(), uint64_t a2, uint64_t a3)
{
  v6 = a1[1];

  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  *a1 = sub_100022140;
  a1[1] = v7;
}

uint64_t sub_100512F08(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
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

  return _swift_task_switch(sub_100513024, v1, 0);
}

uint64_t sub_100513024()
{
  v1 = v0[5];
  if (*(v1 + 120))
  {
    (*(v0[7] + 104))(v0[8], enum case for DIPError.Code.internalError(_:), v0[6]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10051A2C0(&qword_100834130, 255, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v2 = v0[11];
    v3 = v0[8];

    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = v0[11];
    defaultLogger()();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "SecureTransactionServiceManager start called", v9, 2u);
    }

    v11 = v0[10];
    v10 = v0[11];
    v12 = v0[9];
    v14 = v0[4];
    v13 = v0[5];

    (*(v11 + 8))(v10, v12);
    v15 = [objc_allocWithZone(STSReader) initWithType:0 queue:0];
    v0[12] = v15;
    v16 = *(v1 + 120);
    *(v1 + 120) = v15;
    v17 = v15;

    *(v13 + 112) = 0;
    v18 = swift_task_alloc();
    v0[13] = v18;
    v18[2] = v17;
    v18[3] = v14;
    v18[4] = v13;
    sub_10051A2C0(&qword_100846A88, v19, type metadata accessor for SecureTransactionServiceManager);
    v20 = async function pointer to withTaskCancellationHandler<A>(operation:onCancel:isolation:)[1];
    v21 = swift_task_alloc();
    v0[14] = v21;
    *v21 = v0;
    v21[1] = sub_1005133AC;
    v22 = v0[5];

    return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v0 + 2, &unk_1006E7560);
  }
}

uint64_t sub_1005133AC()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v9 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = *(v2 + 40);
    v5 = sub_100513560;
  }

  else
  {
    v6 = *(v2 + 104);
    v7 = *(v2 + 40);

    v5 = sub_1005134D4;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1005134D4()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 64);

  v3 = *(v0 + 16);
  v4 = *(v0 + 24);

  v5 = *(v0 + 8);

  return v5(v3, v4);
}

uint64_t sub_100513560()
{
  v1 = *(v0 + 104);

  v2 = *(v0 + 120);
  v3 = *(v0 + 88);
  v4 = *(v0 + 64);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1005135E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  v6 = type metadata accessor for DIPError();
  v4[7] = v6;
  v7 = *(v6 - 8);
  v4[8] = v7;
  v8 = *(v7 + 64) + 15;
  v4[9] = swift_task_alloc();
  v9 = type metadata accessor for DIPError.Code();
  v4[10] = v9;
  v10 = *(v9 - 8);
  v4[11] = v10;
  v11 = *(v10 + 64) + 15;
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v12 = type metadata accessor for STSReader.StateChanges();
  v4[14] = v12;
  v13 = *(v12 - 8);
  v4[15] = v13;
  v14 = *(v13 + 64) + 15;
  v4[16] = swift_task_alloc();

  return _swift_task_switch(sub_10051376C, a4, 0);
}

uint64_t sub_10051376C()
{
  v1 = v0[5];
  v2 = sub_100514720();
  v0[17] = v2;
  v3 = v2;
  v4 = async function pointer to STSReader.start(configuration:)[1];
  v5 = swift_task_alloc();
  v0[18] = v5;
  *v5 = v0;
  v5[1] = sub_100513A84;
  v6 = v0[16];
  v7 = v0[4];

  return STSReader.start(configuration:)(v6, v3);
}

uint64_t sub_100513A84()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v8 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v4 = *(v2 + 48);
    v5 = sub_1005141F8;
  }

  else
  {
    v6 = *(v2 + 48);

    v5 = sub_100513BAC;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100513BAC(uint64_t a1, uint64_t a2)
{
  v3 = v2[16];
  v5 = v2[5];
  v4 = v2[6];
  v6 = sub_10051A2C0(&qword_100846A88, a2, type metadata accessor for SecureTransactionServiceManager);
  v7 = swift_task_alloc();
  v2[20] = v7;
  v7[2] = v4;
  v7[3] = v3;
  v7[4] = v5;
  v8 = async function pointer to withThrowingTaskGroup<A, B>(of:returning:isolation:body:)[1];
  v9 = swift_task_alloc();
  v2[21] = v9;
  *v9 = v2;
  v9[1] = sub_100513CE0;

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)(v9, &type metadata for () + 8, &type metadata for () + 8, v4, v6, &unk_1006E7580, v7, &type metadata for () + 8);
}

uint64_t sub_100513CE0()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v9 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v4 = *(v2 + 48);
    v5 = sub_10051447C;
  }

  else
  {
    v6 = *(v2 + 160);
    v7 = *(v2 + 48);

    v5 = sub_100513E08;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100513E08()
{
  v34 = v0;
  v1 = [*(v0 + 32) sessionTranscriptBytes];
  v3 = *(v0 + 120);
  v2 = *(v0 + 128);
  v4 = *(v0 + 104);
  v33 = *(v0 + 112);
  if (v1)
  {
    v5 = *(v0 + 96);
    v6 = *(v0 + 72);
    v7 = *(v0 + 24);
    v8 = v1;
    v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    *v7 = v9;
    v7[1] = v11;
    (*(v3 + 8))(v2, v33);

    v12 = *(v0 + 8);
  }

  else
  {
    v13 = *(v0 + 56);
    (*(*(v0 + 88) + 104))(v4, enum case for DIPError.Code.documentReaderSessionTranscriptBytesNil(_:), *(v0 + 80));
    sub_1000402AC(_swiftEmptyArrayStorage);
    v31 = sub_10051A2C0(&qword_100834130, 255, &type metadata accessor for DIPError);
    v14 = swift_allocError();
    BYTE5(v29[1]) = 0;
    HIWORD(v29[1]) = -5120;
    v30 = 93;
    strcpy(v29, "start(with:)");
    v32 = " trying to signDigest";
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    (*(v3 + 8))(v2, v33);
    v15 = *(v0 + 72);
    v17 = *(v0 + 48);
    v16 = *(v0 + 56);
    [*(v0 + 32) invalidate];
    v18 = *(v17 + 120);
    *(v17 + 120) = 0;

    *(v17 + 112) = 0;
    *(v0 + 16) = v14;
    swift_errorRetain();
    sub_100007224(&qword_100833B90, &qword_1006D95C0);
    if (swift_dynamicCast())
    {
      (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
      swift_willThrow();
    }

    else
    {
      v19 = *(v0 + 96);
      v20 = *(v0 + 104);
      v21 = *(v0 + 80);
      v22 = *(v0 + 88);
      v23 = *(v0 + 56);
      type metadata accessor for SecureTransactionServiceManager();
      sub_1003DC460(v20);
      (*(v22 + 16))(v19, v20, v21);
      swift_errorRetain();
      sub_1000402AC(_swiftEmptyArrayStorage);
      swift_allocError();
      v30 = 105;
      BYTE5(v29[1]) = 0;
      HIWORD(v29[1]) = -5120;
      strcpy(v29, "start(with:)");
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();

      (*(v22 + 8))(v20, v21);
    }

    v24 = *(v0 + 128);
    v26 = *(v0 + 96);
    v25 = *(v0 + 104);
    v27 = *(v0 + 72);

    v12 = *(v0 + 8);
  }

  return v12();
}

uint64_t sub_1005141F8()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 72);
  v4 = *(v0 + 48);
  v3 = *(v0 + 56);
  [*(v0 + 32) invalidate];
  v5 = *(v4 + 120);
  *(v4 + 120) = 0;

  *(v4 + 112) = 0;
  *(v0 + 16) = v1;
  swift_errorRetain();
  sub_100007224(&qword_100833B90, &qword_1006D95C0);
  if (swift_dynamicCast())
  {
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
    swift_willThrow();
  }

  else
  {
    v6 = *(v0 + 96);
    v7 = *(v0 + 104);
    v8 = *(v0 + 80);
    v9 = *(v0 + 88);
    v10 = *(v0 + 56);
    type metadata accessor for SecureTransactionServiceManager();
    sub_1003DC460(v7);
    (*(v9 + 16))(v6, v7, v8);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    sub_10051A2C0(&qword_100834130, 255, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    (*(v9 + 8))(v7, v8);
  }

  v11 = *(v0 + 128);
  v13 = *(v0 + 96);
  v12 = *(v0 + 104);
  v14 = *(v0 + 72);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_10051447C()
{
  v1 = *(v0 + 160);
  v3 = *(v0 + 120);
  v2 = *(v0 + 128);
  v4 = *(v0 + 112);

  (*(v3 + 8))(v2, v4);
  v5 = *(v0 + 176);
  v6 = *(v0 + 72);
  v8 = *(v0 + 48);
  v7 = *(v0 + 56);
  [*(v0 + 32) invalidate];
  v9 = *(v8 + 120);
  *(v8 + 120) = 0;

  *(v8 + 112) = 0;
  *(v0 + 16) = v5;
  swift_errorRetain();
  sub_100007224(&qword_100833B90, &qword_1006D95C0);
  if (swift_dynamicCast())
  {
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
    swift_willThrow();
  }

  else
  {
    v10 = *(v0 + 96);
    v11 = *(v0 + 104);
    v12 = *(v0 + 80);
    v13 = *(v0 + 88);
    v14 = *(v0 + 56);
    type metadata accessor for SecureTransactionServiceManager();
    sub_1003DC460(v11);
    (*(v13 + 16))(v10, v11, v12);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    sub_10051A2C0(&qword_100834130, 255, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    (*(v13 + 8))(v11, v12);
  }

  v15 = *(v0 + 128);
  v17 = *(v0 + 96);
  v16 = *(v0 + 104);
  v18 = *(v0 + 72);

  v19 = *(v0 + 8);

  return v19();
}

char *sub_100514720()
{
  v1 = v0;
  v2 = type metadata accessor for DIPError.Code();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MobileDocumentReaderDeviceEngagementType();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = (&v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v8 + 16))(v11, v1, v7);
  v12 = (*(v8 + 88))(v11, v7);
  if (v12 == enum case for MobileDocumentReaderDeviceEngagementType.qr(_:))
  {
    (*(v8 + 96))(v11, v7);
    v14 = *v11;
    v13 = v11[1];
    sub_10000B8B8(v14, v13);
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_10000B90C(v14, v13);
    v16 = [objc_opt_self() configurationWithDeviceEngagementType:1 dataRetrievalType:6 engagementData:isa];

    sub_10000B90C(v14, v13);
    if (!v16)
    {
      goto LABEL_8;
    }
  }

  else
  {
    if (v12 != enum case for MobileDocumentReaderDeviceEngagementType.nfc(_:))
    {
      (*(v8 + 8))(v11, v7);
LABEL_8:
      (*(v3 + 104))(v6, enum case for DIPError.Code.documentReaderUnsupportedConfiguration(_:), v2);
      v16 = " trying to signDigest";
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10051A2C0(&qword_100834130, 255, &type metadata accessor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      return v16;
    }

    v16 = [objc_opt_self() configurationWithDeviceEngagementType:0 dataRetrievalType:6 engagementData:0];
    if (!v16)
    {
      goto LABEL_8;
    }
  }

  return v16;
}

uint64_t sub_100514A90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[2] = a2;
  v5[3] = a3;
  v7 = type metadata accessor for MobileDocumentReaderDeviceEngagementType();
  v5[6] = v7;
  v8 = *(v7 - 8);
  v5[7] = v8;
  v5[8] = *(v8 + 64);
  v5[9] = swift_task_alloc();
  v9 = type metadata accessor for STSReader.StateChanges();
  v5[10] = v9;
  v10 = *(v9 - 8);
  v5[11] = v10;
  v5[12] = *(v10 + 64);
  v5[13] = swift_task_alloc();
  v11 = *(*(sub_100007224(&unk_100845860, &unk_1006BF9D0) - 8) + 64) + 15;
  v5[14] = swift_task_alloc();

  return _swift_task_switch(sub_100514BFC, a3, 0);
}

uint64_t sub_100514BFC()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[11];
  v4 = v0[9];
  v5 = v0[10];
  v22 = v2;
  v23 = v4;
  v24 = v0[12];
  v6 = v0[7];
  v7 = v0[6];
  v21 = v0[5];
  v8 = v0[4];
  v25 = v0[8];
  v26 = v0[3];
  v28 = v0[2];
  v9 = type metadata accessor for TaskPriority();
  v27 = *(*(v9 - 8) + 56);
  v27(v1, 1, 1, v9);
  (*(v3 + 16))(v2, v8, v5);
  (*(v6 + 16))(v4, v21, v7);
  v10 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v11 = (v24 + *(v6 + 80) + v10) & ~*(v6 + 80);
  v12 = swift_allocObject();
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 4) = v26;
  (*(v3 + 32))(&v12[v10], v22, v5);
  (*(v6 + 32))(&v12[v11], v23, v7);

  sub_100512C8C(v1, &unk_1006E7590, v12);
  sub_10000BE18(v1, &unk_100845860, &unk_1006BF9D0);
  v27(v1, 1, 1, v9);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v26;

  sub_100512C8C(v1, &unk_1006E75A0, v13);
  sub_10000BE18(v1, &unk_100845860, &unk_1006BF9D0);
  v15 = sub_10051A2C0(&qword_100846A88, v14, type metadata accessor for SecureTransactionServiceManager);
  v16 = async function pointer to ThrowingTaskGroup.next(isolation:)[1];
  v17 = swift_task_alloc();
  v0[15] = v17;
  v18 = sub_100007224(&qword_100846AC0, &qword_1006E75A8);
  *v17 = v0;
  v17[1] = sub_100514F0C;
  v19 = v0[2];

  return ThrowingTaskGroup.next(isolation:)(v0 + 17, v26, v15, v18);
}

uint64_t sub_100514F0C()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *v1;
  *(*v1 + 128) = v0;

  v5 = *(v2 + 24);
  if (v0)
  {
    v6 = sub_1005150F8;
  }

  else
  {
    v6 = sub_100515038;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100515038()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  v3 = *(v0 + 72);
  v4 = **(v0 + 16);
  sub_100007224(&qword_100833B90, &qword_1006D95C0);
  ThrowingTaskGroup.cancelAll()();

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1005150F8()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[9];

  v4 = v0[1];
  v5 = v0[16];

  return v4();
}

uint64_t sub_100515170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_100027B9C;

  return sub_100517CB4(a5);
}

uint64_t sub_10051520C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for DIPError.Code();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v4[5] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v4[6] = v8;
  v9 = *(v8 - 8);
  v4[7] = v9;
  v10 = *(v9 + 64) + 15;
  v4[8] = swift_task_alloc();
  v11 = type metadata accessor for ContinuousClock();
  v4[9] = v11;
  v12 = *(v11 - 8);
  v4[10] = v12;
  v13 = *(v12 + 64) + 15;
  v4[11] = swift_task_alloc();

  return _swift_task_switch(sub_100515384, 0, 0);
}

uint64_t sub_100515384()
{
  v1 = *(v0 + 88);
  v2 = static Duration.seconds(_:)();
  v4 = v3;
  static Clock<>.continuous.getter();
  v5 = swift_task_alloc();
  *(v0 + 96) = v5;
  *v5 = v0;
  v5[1] = sub_100515464;
  v6 = *(v0 + 88);

  return sub_1003DA1A4(v2, v4, 0, 0, 1);
}

uint64_t sub_100515464()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 80);
  v6 = *(*v1 + 72);
  v10 = *v1;
  *(*v1 + 104) = v0;

  (*(v5 + 8))(v4, v6);
  if (v0)
  {
    v7 = sub_100515880;
    v8 = 0;
  }

  else
  {
    v8 = *(v2 + 16);
    v7 = sub_1005155E4;
  }

  return _swift_task_switch(v7, v8, 0);
}

uint64_t sub_10051560C()
{
  if (*(v0 + 112) == 1)
  {
    v1 = *(v0 + 64);
    defaultLogger()();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Device engagement timeout exceeded. Ignoring since we're now connecting.", v4, 2u);
    }

    v5 = *(v0 + 88);
    v7 = *(v0 + 56);
    v6 = *(v0 + 64);
    v9 = *(v0 + 40);
    v8 = *(v0 + 48);

    (*(v7 + 8))(v6, v8);

    v10 = *(v0 + 8);
  }

  else
  {
    (*(*(v0 + 32) + 104))(*(v0 + 40), enum case for DIPError.Code.documentReaderReadTimedOut(_:), *(v0 + 24));
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10051A2C0(&qword_100834130, 255, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v11 = *(v0 + 88);
    v12 = *(v0 + 64);
    v13 = *(v0 + 40);

    v10 = *(v0 + 8);
  }

  return v10();
}

uint64_t sub_100515880()
{
  v1 = v0[13];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[5];

  v5 = v0[1];

  return v5();
}

uint64_t sub_100515924(uint64_t a1, uint64_t a2, uint64_t a3)
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
  v8 = sub_100007224(&qword_100846AA8, &qword_1006E7510);
  v4[9] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v4[10] = swift_task_alloc();
  v10 = type metadata accessor for MobileDocumentReaderSession.State();
  v4[11] = v10;
  v11 = *(v10 - 8);
  v4[12] = v11;
  v12 = *(v11 + 64) + 15;
  v4[13] = swift_task_alloc();

  return _swift_task_switch(sub_100515A80, v3, 0);
}

uint64_t sub_100515A80()
{
  v1 = v0[5];
  v2 = *(v1 + 120);
  v0[14] = v2;
  if (v2)
  {
    v4 = v0[12];
    v3 = v0[13];
    v5 = v0[11];
    v24 = v0[3];
    v25 = v0[4];
    v6 = *(v1 + 128);
    v7 = v2;
    os_unfair_lock_lock((v6 + 32));
    v9 = *(v6 + 16);
    v8 = *(v6 + 24);
    v10 = swift_allocObject();
    *(v10 + 16) = v9;
    *(v10 + 24) = v8;
    v11 = swift_allocObject();
    *(v11 + 16) = sub_10051AC70;
    *(v11 + 24) = v10;
    *(v6 + 16) = sub_1000222A4;
    *(v6 + 24) = v11;

    os_unfair_lock_unlock((v6 + 32));
    (*(v4 + 104))(v3, enum case for MobileDocumentReaderSession.State.awaitingApproval(_:), v5);
    v9(v3);

    (*(v4 + 8))(v3, v5);
    v12 = swift_task_alloc();
    v0[15] = v12;
    v12[2] = v7;
    v12[3] = v24;
    v12[4] = v25;
    sub_10051A2C0(&qword_100846A88, v13, type metadata accessor for SecureTransactionServiceManager);
    v14 = async function pointer to withTaskCancellationHandler<A>(operation:onCancel:isolation:)[1];
    v15 = swift_task_alloc();
    v0[16] = v15;
    *v15 = v0;
    v15[1] = sub_100515E2C;
    v17 = v0[9];
    v16 = v0[10];
    v18 = v0[5];

    return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v16, &unk_1006E7520);
  }

  else
  {
    (*(v0[7] + 104))(v0[8], enum case for DIPError.Code.internalError(_:), v0[6]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10051A2C0(&qword_100834130, 255, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v19 = v0[13];
    v20 = v0[10];
    v21 = v0[8];

    v22 = v0[1];

    return v22();
  }
}

uint64_t sub_100515E2C()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v9 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v4 = *(v2 + 40);
    v5 = sub_10051606C;
  }

  else
  {
    v6 = *(v2 + 120);
    v7 = *(v2 + 40);

    v5 = sub_100515F54;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100515F54()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[10];
  v4 = v0[8];
  v5 = v0[5];
  v6 = v0[2];
  v7 = *v3;
  v8 = *(v3 + 1);
  v9 = *(v0[9] + 48);
  v10 = type metadata accessor for ISO18013SessionCryptarch.PrivateKey();
  (*(*(v10 - 8) + 32))(v6, &v3[v9], v10);
  [v2 invalidate];

  v11 = *(v5 + 120);
  *(v5 + 120) = 0;

  *(v5 + 112) = 0;

  v12 = v0[1];

  return v12(v7, v8);
}

uint64_t sub_10051606C()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[5];

  [v2 invalidate];

  v4 = *(v3 + 120);
  *(v3 + 120) = 0;

  *(v3 + 112) = 0;
  v5 = v0[17];
  v6 = v0[13];
  v7 = v0[10];
  v8 = v0[8];

  v9 = v0[1];

  return v9();
}

uint64_t sub_100516120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[23] = a3;
  v4[24] = a4;
  v4[21] = a1;
  v4[22] = a2;
  v5 = type metadata accessor for DIPError();
  v4[25] = v5;
  v6 = *(v5 - 8);
  v4[26] = v6;
  v7 = *(v6 + 64) + 15;
  v4[27] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v4[28] = v8;
  v9 = *(v8 - 8);
  v4[29] = v9;
  v10 = *(v9 + 64) + 15;
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v11 = *(*(sub_100007224(&qword_100846AB0, &qword_1006E7540) - 8) + 64) + 15;
  v4[32] = swift_task_alloc();
  v12 = type metadata accessor for ISO18013SessionCryptarch.PrivateKey();
  v4[33] = v12;
  v13 = *(v12 - 8);
  v4[34] = v13;
  v14 = *(v13 + 64) + 15;
  v4[35] = swift_task_alloc();
  v15 = type metadata accessor for DIPError.Code();
  v4[36] = v15;
  v16 = *(v15 - 8);
  v4[37] = v16;
  v17 = *(v16 + 64) + 15;
  v4[38] = swift_task_alloc();
  v4[39] = swift_task_alloc();

  return _swift_task_switch(sub_100516348, 0, 0);
}

uint64_t sub_100516348()
{
  v1 = v0[23];
  v2 = v0[24];
  v3 = v0[22];
  isa = Data._bridgeToObjectiveC()().super.isa;
  v0[40] = isa;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_100516490;
  v5 = swift_continuation_init();
  v0[17] = sub_100007224(&qword_100846AB8, &unk_1006E7548);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100517138;
  v0[13] = &unk_100815E90;
  v0[14] = v5;
  [v3 sendDocumentRequest:isa timeoutInterval:0 sessionTermination:v0 + 10 responseHandler:300.0];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100516490()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 328) = v2;
  if (v2)
  {
    v3 = sub_100516EB8;
  }

  else
  {
    v3 = sub_1005165A0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1005165A0()
{
  v66 = v0;
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);

  if (v1 >> 60 == 15)
  {
    v3 = *(v0 + 200);
    (*(*(v0 + 296) + 104))(*(v0 + 312), enum case for DIPError.Code.documentReaderSTSConnectionError(_:), *(v0 + 288));
    sub_1000402AC(_swiftEmptyArrayStorage);
    sub_10051A2C0(&qword_100834130, 255, &type metadata accessor for DIPError);
    v4 = swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  else
  {
    v5 = [*(v0 + 176) stsReaderCryptarch];
    if (v5)
    {
      v6 = v5;
      type metadata accessor for ISO18013SessionCryptarch();
      v7 = v6;
      sub_100517230(v7);
      v9 = *(v0 + 264);
      v10 = *(v0 + 272);
      v11 = *(v0 + 256);
      ISO18013SessionCryptarch.localKey.getter();
      if ((*(v10 + 48))(v11, 1, v9) != 1)
      {
        v32 = *(v0 + 248);
        v62 = *(*(v0 + 272) + 32);
        v62(*(v0 + 280), *(v0 + 256), *(v0 + 264));
        defaultLogger()();
        sub_10000B8B8(v2, v1);
        v33 = Logger.logObject.getter();
        v34 = static os_log_type_t.debug.getter();
        sub_10000BD94(v2, v1);
        v35 = os_log_type_enabled(v33, v34);
        v63 = *(v0 + 248);
        v36 = *(v0 + 224);
        v37 = *(v0 + 232);
        v38 = v2;
        if (v35)
        {
          v39 = swift_slowAlloc();
          v40 = swift_slowAlloc();
          v65 = v40;
          *v39 = 136315138;
          sub_10000B8B8(v38, v1);
          v60 = v36;
          v41 = Data.description.getter();
          v58 = v34;
          v43 = v42;
          sub_10000BD94(v38, v1);
          v44 = sub_100141FE4(v41, v43, &v65);

          *(v39 + 4) = v44;
          _os_log_impl(&_mh_execute_header, v33, v58, "SecureTransactionServiceManager readDocument received response %s", v39, 0xCu);
          sub_10000BB78(v40);

          v45 = *(v37 + 8);
          v46 = v63;
          v47 = v60;
        }

        else
        {

          v45 = *(v37 + 8);
          v46 = v63;
          v47 = v36;
        }

        v57 = v45;
        v45(v46, v47);
        v55 = *(v0 + 312);
        v56 = *(v0 + 304);
        v48 = *(v0 + 280);
        v54 = *(v0 + 264);
        v49 = *(v0 + 240);
        v59 = *(v0 + 256);
        v61 = *(v0 + 248);
        v50 = *(v0 + 224);
        v64 = *(v0 + 216);
        v51 = *(v0 + 168);
        defaultLogger()();
        v52 = swift_task_alloc();
        *(v52 + 16) = v38;
        *(v52 + 24) = v1;
        Logger.sensitive(_:)();

        v57(v49, v50);
        defaultLogger()();
        *(swift_task_alloc() + 16) = v48;
        Logger.sensitive(_:)();

        v57(v49, v50);
        v53 = *(sub_100007224(&qword_100846AA8, &qword_1006E7510) + 48);
        *v51 = v38;
        v51[1] = v1;
        v62(v51 + v53, v48, v54);

        v30 = *(v0 + 8);
        goto LABEL_13;
      }

      v12 = *(v0 + 312);
      v13 = *(v0 + 288);
      v14 = *(v0 + 296);
      v15 = *(v0 + 200);
      sub_10000BE18(*(v0 + 256), &qword_100846AB0, &qword_1006E7540);
      (*(v14 + 104))(v12, enum case for DIPError.Code.documentReaderEphemeralReaderPrivateKeyNil(_:), v13);
      sub_1000402AC(_swiftEmptyArrayStorage);
      sub_10051A2C0(&qword_100834130, 255, &type metadata accessor for DIPError);
      v4 = swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
    }

    else
    {
      v8 = *(v0 + 200);
      (*(*(v0 + 296) + 104))(*(v0 + 312), enum case for DIPError.Code.documentReaderEphemeralReaderPrivateKeyNil(_:), *(v0 + 288));
      sub_1000402AC(_swiftEmptyArrayStorage);
      sub_10051A2C0(&qword_100834130, 255, &type metadata accessor for DIPError);
      v4 = swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
    }

    sub_10000BD94(v2, v1);
  }

  v16 = *(v0 + 216);
  v17 = *(v0 + 200);
  *(v0 + 160) = v4;
  swift_errorRetain();
  sub_100007224(&qword_100833B90, &qword_1006D95C0);
  if (swift_dynamicCast())
  {
    (*(*(v0 + 208) + 8))(*(v0 + 216), *(v0 + 200));
    swift_willThrow();
  }

  else
  {
    v19 = *(v0 + 304);
    v18 = *(v0 + 312);
    v20 = *(v0 + 288);
    v21 = *(v0 + 296);
    v22 = *(v0 + 200);
    type metadata accessor for SecureTransactionServiceManager();
    sub_1003DC460(v18);
    (*(v21 + 16))(v19, v18, v20);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    sub_10051A2C0(&qword_100834130, 255, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    (*(v21 + 8))(v18, v20);
  }

  v24 = *(v0 + 304);
  v23 = *(v0 + 312);
  v25 = *(v0 + 280);
  v27 = *(v0 + 248);
  v26 = *(v0 + 256);
  v28 = *(v0 + 240);
  v29 = *(v0 + 216);

  v30 = *(v0 + 8);
LABEL_13:

  return v30();
}

uint64_t sub_100516EB8()
{
  v1 = v0[40];
  v2 = v0[41];
  swift_willThrow();

  v0[20] = v0[41];
  v3 = v0[27];
  v4 = v0[25];
  swift_errorRetain();
  sub_100007224(&qword_100833B90, &qword_1006D95C0);
  if (swift_dynamicCast())
  {
    (*(v0[26] + 8))(v0[27], v0[25]);
    swift_willThrow();
  }

  else
  {
    v5 = v0[38];
    v6 = v0[39];
    v7 = v0[36];
    v8 = v0[37];
    v9 = v0[25];
    type metadata accessor for SecureTransactionServiceManager();
    sub_1003DC460(v6);
    (*(v8 + 16))(v5, v6, v7);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    sub_10051A2C0(&qword_100834130, 255, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    (*(v8 + 8))(v6, v7);
  }

  v11 = v0[38];
  v10 = v0[39];
  v12 = v0[35];
  v14 = v0[31];
  v13 = v0[32];
  v15 = v0[30];
  v16 = v0[27];

  v17 = v0[1];

  return v17();
}

uint64_t sub_100517138(uint64_t a1, void *a2, void *a3)
{
  v5 = *sub_10000BA08((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100007224(&qword_100833B90, &qword_1006D95C0);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    if (a2)
    {
      v9 = a2;
      v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;
    }

    else
    {
      v10 = 0;
      v12 = 0xF000000000000000;
    }

    v13 = *(*(v5 + 64) + 40);
    *v13 = v10;
    v13[1] = v12;

    return _swift_continuation_throwingResume(v5);
  }
}

unint64_t sub_100517230(void *a1)
{
  v2 = type metadata accessor for ISO18013SessionCryptarch.Role();
  v40 = *(v2 - 8);
  v41 = v2;
  v3 = *(v40 + 64);
  __chkstk_darwin(v2);
  v43 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for ISO18013SessionCryptarch.Variant();
  v48 = *(v49 - 8);
  v5 = *(v48 + 8);
  v6 = __chkstk_darwin(v49);
  v42 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v39 - v8;
  v10 = type metadata accessor for DIPError.Code();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ISO18013SessionCryptarch.Curve();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v39 - v21;
  v23 = [a1 curve];
  if (v23 >= 5)
  {
    (*(v11 + 104))(v14, enum case for DIPError.Code.documentReaderUnsupportedConfiguration(_:), v10);
    v32 = sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10051A2C0(&qword_100834130, 255, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  else
  {
    v24 = **(&off_100815F30 + v23);
    v46 = v16;
    v47 = v15;
    (*(v16 + 104))(v22, v24, v15);
    v39 = a1;
    v25 = [a1 variant];
    v26 = v22;
    if (v25)
    {
      v27 = v49;
      v28 = v48;
      if (v25 != 1)
      {
        (*(v11 + 104))(v14, enum case for DIPError.Code.documentReaderUnsupportedConfiguration(_:), v10);
        v32 = sub_1000402AC(_swiftEmptyArrayStorage);
        type metadata accessor for DIPError();
        sub_10051A2C0(&qword_100834130, 255, &type metadata accessor for DIPError);
        swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();

        (*(v46 + 8))(v26, v47);
        return v32;
      }

      v29 = &enum case for ISO18013SessionCryptarch.Variant.UA(_:);
      v31 = v46;
      v30 = v47;
    }

    else
    {
      v29 = &enum case for ISO18013SessionCryptarch.Variant.standard(_:);
      v31 = v46;
      v30 = v47;
      v27 = v49;
      v28 = v48;
    }

    v33 = v27;
    (*(v28 + 13))(v9, *v29, v27);
    (*(v40 + 104))(v43, enum case for ISO18013SessionCryptarch.Role.reader(_:), v41);
    (*(v31 + 16))(v20, v26, v30);
    (*(v28 + 2))(v42, v9, v33);
    v48 = v26;
    v34 = v39;
    v35 = [v39 privateKey];
    static Data._unconditionallyBridgeFromObjectiveC(_:)();

    v32 = v44;
    v36 = v45;
    v37 = dispatch thunk of ISO18013SessionCryptarch.__allocating_init(role:curve:variant:localKey:)();
    if (!v36)
    {
      v32 = v37;
    }

    (*(v28 + 1))(v9, v49);
    (*(v46 + 8))(v48, v47);
  }

  return v32;
}

uint64_t sub_1005178A8()
{
  _StringGuts.grow(_:)(65);
  v0._object = 0x800000010071D630;
  v0._countAndFlagsBits = 0xD00000000000003FLL;
  String.append(_:)(v0);
  v1 = Data.base16EncodedString()();
  String.append(_:)(v1);

  return 0;
}

uint64_t sub_10051793C()
{
  _StringGuts.grow(_:)(75);
  v0._object = 0x800000010071D5E0;
  v0._countAndFlagsBits = 0xD000000000000049;
  String.append(_:)(v0);
  v1 = ISO18013SessionCryptarch.PrivateKey.rawRepresentation.getter();
  v3 = v2;
  v4 = Data.base16EncodedString()();
  sub_10000B90C(v1, v3);
  String.append(_:)(v4);

  return 0;
}

uint64_t sub_1005179EC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v22 - v9;
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, a2, v18, 2u);
  }

  (*(v12 + 8))(v15, v11);
  v19 = type metadata accessor for TaskPriority();
  (*(*(v19 - 8) + 56))(v10, 1, 1, v19);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = a1;

  sub_1003E653C(0, 0, v10, a4, v20);
}

uint64_t sub_100517C38()
{
  v1 = *(v0 + 16);
  [*(v1 + 120) invalidate];
  v2 = *(v1 + 120);
  *(v1 + 120) = 0;

  *(v1 + 112) = 0;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100517CB4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for DIPError.Code();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = type metadata accessor for STSReader.StateEvent();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();
  v9 = *(*(sub_100007224(&qword_100846A98, &qword_1006E74F8) - 8) + 64) + 15;
  v2[10] = swift_task_alloc();
  v10 = sub_100007224(&qword_100846AA0, &unk_1006E7500);
  v2[11] = v10;
  v11 = *(v10 - 8);
  v2[12] = v11;
  v12 = *(v11 + 64) + 15;
  v2[13] = swift_task_alloc();
  v13 = type metadata accessor for MobileDocumentReaderSession.State();
  v2[14] = v13;
  v14 = *(v13 - 8);
  v2[15] = v14;
  v15 = *(v14 + 64) + 15;
  v2[16] = swift_task_alloc();
  v16 = type metadata accessor for Logger();
  v2[17] = v16;
  v17 = *(v16 - 8);
  v2[18] = v17;
  v18 = *(v17 + 64) + 15;
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();

  return _swift_task_switch(sub_100517F58, v1, 0);
}

uint64_t sub_100517F58()
{
  v1 = *(v0 + 184);
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "SecureTransactionServiceManager stream started", v4, 2u);
  }

  v5 = *(v0 + 184);
  v6 = *(v0 + 136);
  v7 = *(v0 + 144);
  v9 = *(v0 + 120);
  v8 = *(v0 + 128);
  v10 = *(v0 + 112);
  v31 = *(v0 + 104);
  v12 = *(v0 + 16);
  v11 = *(v0 + 24);

  v13 = *(v7 + 8);
  *(v0 + 192) = v13;
  v13(v5, v6);
  v14 = *(v11 + 128);
  *(v0 + 200) = v14;
  os_unfair_lock_lock((v14 + 32));
  v16 = *(v14 + 16);
  v15 = *(v14 + 24);
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = v15;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_10051A498;
  *(v18 + 24) = v17;
  *(v14 + 16) = sub_1000222A4;
  *(v14 + 24) = v18;

  os_unfair_lock_unlock((v14 + 32));
  v19 = enum case for MobileDocumentReaderSession.State.ready(_:);
  v20 = *(v9 + 104);
  *(v0 + 208) = v20;
  *(v0 + 216) = (v9 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v20(v8, v19, v10);
  v16(v8);

  v21 = *(v9 + 8);
  *(v0 + 224) = v21;
  *(v0 + 232) = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v21(v8, v10);
  STSReader.StateChanges.makeAsyncIterator()();
  v23 = sub_10051A2C0(&qword_100846A88, v22, type metadata accessor for SecureTransactionServiceManager);
  *(v0 + 240) = v23;
  *(v0 + 256) = enum case for STSReader.StateEvent.tnepFailed(_:);
  *(v0 + 260) = enum case for STSReader.StateEvent.invalidated(_:);
  *(v0 + 264) = enum case for STSReader.StateEvent.alternativeCarrierConnected(_:);
  *(v0 + 268) = enum case for STSReader.StateEvent.tnepCompleted(_:);
  *(v0 + 272) = enum case for MobileDocumentReaderSession.State.connecting(_:);
  v24 = *(v0 + 24);
  v25 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v26 = swift_task_alloc();
  *(v0 + 248) = v26;
  *v26 = v0;
  v26[1] = sub_10051825C;
  v27 = *(v0 + 104);
  v28 = *(v0 + 80);
  v29 = *(v0 + 88);

  return AsyncStream.Iterator.next(isolation:)(v28, v24, v23, v29);
}

uint64_t sub_10051825C()
{
  v1 = *(*v0 + 248);
  v2 = *(*v0 + 24);
  v4 = *v0;

  return _swift_task_switch(sub_10051836C, v2, 0);
}

uint64_t sub_10051836C()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = *(v0 + 40);
    (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));
    v5 = static Task<>.isCancelled.getter();
    v6 = *(v4 + 104);
    v7 = *(v0 + 48);
    v8 = *(v0 + 32);
    if (v5)
    {
      v6(*(v0 + 48), enum case for DIPError.Code.documentReadCancelled(_:), v8);
    }

    else
    {
      v6(*(v0 + 48), enum case for DIPError.Code.documentReaderSTSSessionUnexpectedError(_:), v8);
    }

    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10051A2C0(&qword_100834130, 255, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    goto LABEL_10;
  }

  v9 = *(v0 + 256);
  v10 = *(v0 + 72);
  (*(v3 + 32))(v10, v1, v2);
  v11 = (*(v3 + 88))(v10, v2);
  if (v11 == v9)
  {
    v12 = *(v0 + 168);
    v13 = *(v0 + 72);
    (*(*(v0 + 64) + 96))(v13, *(v0 + 56));
    v14 = *v13;
    defaultLogger()();
    swift_errorRetain();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      swift_errorRetain();
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 4) = v19;
      *v18 = v19;
      _os_log_impl(&_mh_execute_header, v15, v16, "SecureTransactionServiceManager stream received tnepFailed with error %@", v17, 0xCu);
      sub_10000BE18(v18, &unk_100833B50, &unk_1006D8FB0);
    }

    v20 = *(v0 + 192);
    v21 = *(v0 + 168);
    v22 = *(v0 + 136);
    v23 = *(v0 + 144);
    v25 = *(v0 + 96);
    v24 = *(v0 + 104);
    v26 = *(v0 + 88);

    v20(v21, v22);
    swift_willThrow();
    (*(v25 + 8))(v24, v26);
    goto LABEL_10;
  }

  if (v11 == *(v0 + 260))
  {
    v39 = *(v0 + 160);
    v40 = *(v0 + 72);
    (*(*(v0 + 64) + 96))(v40, *(v0 + 56));
    v41 = *v40;
    defaultLogger()();
    swift_errorRetain();
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *v44 = 138412290;
      if (v41)
      {
        swift_errorRetain();
        v46 = _swift_stdlib_bridgeErrorToNSError();
        v47 = v46;
      }

      else
      {
        v46 = 0;
        v47 = 0;
      }

      *(v44 + 4) = v46;
      *v45 = v47;
      _os_log_impl(&_mh_execute_header, v42, v43, "SecureTransactionServiceManager stream received invalidated with error %@", v44, 0xCu);
      sub_10000BE18(v45, &unk_100833B50, &unk_1006D8FB0);
    }

    v86 = *(v0 + 192);
    v87 = *(v0 + 160);
    v88 = *(v0 + 136);
    v89 = *(v0 + 144);

    v86(v87, v88);
    if (!v41)
    {
      (*(*(v0 + 40) + 104))(*(v0 + 48), enum case for DIPError.Code.documentReaderSTSSessionUnexpectedError(_:), *(v0 + 32));
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10051A2C0(&qword_100834130, 255, &type metadata accessor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    }

    v90 = *(v0 + 96);
    v91 = *(v0 + 104);
    v92 = *(v0 + 88);
    swift_willThrow();
    (*(v90 + 8))(v91, v92);
    goto LABEL_10;
  }

  if (v11 == *(v0 + 264))
  {
    v48 = *(v0 + 176);
    defaultLogger()();
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&_mh_execute_header, v49, v50, "SecureTransactionServiceManager stream received alternativeCarrierConnected, sending document request…", v51, 2u);
    }

    v52 = *(v0 + 184);
    v53 = *(v0 + 192);
    v54 = *(v0 + 176);
    v93 = *(v0 + 168);
    v94 = *(v0 + 160);
    v56 = *(v0 + 136);
    v55 = *(v0 + 144);
    v95 = *(v0 + 152);
    v97 = *(v0 + 128);
    v57 = *(v0 + 96);
    v58 = *(v0 + 104);
    v59 = *(v0 + 88);
    v100 = *(v0 + 80);
    v103 = *(v0 + 72);
    v106 = *(v0 + 48);

    v53(v54, v56);
    (*(v57 + 8))(v58, v59);

    v37 = *(v0 + 8);
    goto LABEL_11;
  }

  if (v11 != *(v0 + 268))
  {
    v83 = *(v0 + 96);
    v84 = *(v0 + 88);
    v85 = *(v0 + 64);
    v105 = *(v0 + 72);
    v99 = *(v0 + 104);
    v102 = *(v0 + 56);
    (*(*(v0 + 40) + 104))(*(v0 + 48), enum case for DIPError.Code.internalError(_:), *(v0 + 32));
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10051A2C0(&qword_100834130, 255, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    (*(v83 + 8))(v99, v84);
    (*(v85 + 8))(v105, v102);
LABEL_10:
    v28 = *(v0 + 176);
    v27 = *(v0 + 184);
    v30 = *(v0 + 160);
    v29 = *(v0 + 168);
    v31 = *(v0 + 152);
    v32 = *(v0 + 128);
    v33 = *(v0 + 104);
    v35 = *(v0 + 72);
    v34 = *(v0 + 80);
    v36 = *(v0 + 48);

    v37 = *(v0 + 8);
LABEL_11:

    return v37();
  }

  v60 = *(v0 + 152);
  defaultLogger()();
  v61 = Logger.logObject.getter();
  v62 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    *v63 = 0;
    _os_log_impl(&_mh_execute_header, v61, v62, "SecureTransactionServiceManager stream received tnepCompleted", v63, 2u);
  }

  v101 = *(v0 + 272);
  v104 = *(v0 + 224);
  v107 = *(v0 + 232);
  v96 = *(v0 + 208);
  v98 = *(v0 + 216);
  v64 = *(v0 + 192);
  v65 = *(v0 + 200);
  v67 = *(v0 + 144);
  v66 = *(v0 + 152);
  v68 = *(v0 + 128);
  v69 = *(v0 + 136);
  v70 = *(v0 + 112);
  v71 = *(v0 + 24);

  v64(v66, v69);
  *(v71 + 112) = 1;
  os_unfair_lock_lock((v65 + 32));
  v73 = *(v65 + 16);
  v72 = *(v65 + 24);
  v74 = swift_allocObject();
  *(v74 + 16) = v73;
  *(v74 + 24) = v72;
  v75 = swift_allocObject();
  *(v75 + 16) = sub_10051AC70;
  *(v75 + 24) = v74;
  *(v65 + 16) = sub_1000222A4;
  *(v65 + 24) = v75;

  os_unfair_lock_unlock((v65 + 32));
  v96(v68, v101, v70);
  v73(v68);

  v104(v68, v70);
  v76 = *(v0 + 240);
  v77 = *(v0 + 24);
  v78 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v79 = swift_task_alloc();
  *(v0 + 248) = v79;
  *v79 = v0;
  v79[1] = sub_10051825C;
  v80 = *(v0 + 104);
  v81 = *(v0 + 80);
  v82 = *(v0 + 88);

  return AsyncStream.Iterator.next(isolation:)(v81, v77, v76, v82);
}

uint64_t sub_100518F24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v5 = type metadata accessor for DIPError.Code();
  v4[7] = v5;
  v6 = *(v5 - 8);
  v4[8] = v6;
  v7 = *(v6 + 64) + 15;
  v4[9] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v4[10] = v8;
  v9 = *(v8 - 8);
  v4[11] = v9;
  v10 = *(v9 + 64) + 15;
  v4[12] = swift_task_alloc();

  return _swift_task_switch(sub_100519044, v3, 0);
}

uint64_t sub_100519044()
{
  v1 = *(v0 + 96);
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "SecureTransactionServiceManager signDigest called", v4, 2u);
  }

  v6 = *(v0 + 88);
  v5 = *(v0 + 96);
  v7 = *(v0 + 80);
  v8 = *(v0 + 48);

  (*(v6 + 8))(v5, v7);
  v10 = *(v8 + 120);
  *(v0 + 104) = v10;
  if (v10)
  {
    v12 = *(v0 + 40);
    v11 = *(v0 + 48);
    v23 = *(v0 + 24);
    v13 = sub_10051A2C0(&qword_100846A88, v9, type metadata accessor for SecureTransactionServiceManager);
    v14 = swift_task_alloc();
    *(v0 + 112) = v14;
    *(v14 + 16) = v10;
    *(v14 + 24) = v23;
    *(v14 + 40) = v12;
    v15 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
    v16 = v10;
    v17 = swift_task_alloc();
    *(v0 + 120) = v17;
    v18 = sub_100007224(&qword_10083C160, &qword_1006DECE0);
    *v17 = v0;
    v17[1] = sub_1005193B8;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 16, v11, v13, 0xD000000000000017, 0x800000010071D240, sub_10051A308, v14, v18);
  }

  else
  {
    (*(*(v0 + 64) + 104))(*(v0 + 72), enum case for DIPError.Code.unexpectedDaemonState(_:), *(v0 + 56));
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10051A2C0(&qword_100834130, 255, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v19 = *(v0 + 96);
    v20 = *(v0 + 72);

    v21 = *(v0 + 8);

    return v21();
  }
}

uint64_t sub_1005193B8()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v9 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = *(v2 + 48);
    v5 = sub_100519568;
  }

  else
  {
    v6 = *(v2 + 112);
    v7 = *(v2 + 48);

    v5 = sub_1005194E0;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1005194E0()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 72);

  v3 = *(v0 + 16);

  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_100519568()
{
  v1 = v0[16];
  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[6];

  [*(v4 + 120) invalidate];
  v5 = *(v4 + 120);
  *(v4 + 120) = 0;

  *(v4 + 112) = 0;
  swift_willThrow();

  v6 = v0[16];
  v7 = v0[12];
  v8 = v0[9];

  v9 = v0[1];

  return v9();
}

void sub_100519618(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v10 = sub_100007224(&qword_100846A90, &qword_1006E74F0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = aBlock - v13;
  (*(v11 + 16))(aBlock - v13, a1, v10);
  v15 = (*(v11 + 80) + 40) & ~*(v11 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = a3;
  *(v16 + 3) = a4;
  *(v16 + 4) = a5;
  (*(v11 + 32))(&v16[v15], v14, v10);
  aBlock[4] = sub_10051A3EC;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001335C;
  aBlock[3] = &unk_100815D50;
  v17 = _Block_copy(aBlock);

  sub_10000B8B8(a4, a5);

  [a2 executeOnSEProxyWithBlock:v17];
  _Block_release(v17);
}

id sub_1005197FC(void *a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v58 = a4;
  v59 = a5;
  v61 = a3;
  v51 = type metadata accessor for SESKeystore.SignatureOutputFormat();
  v9 = *(v51 - 8);
  v10 = v9[8];
  __chkstk_darwin(v51);
  v60 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DIPError.Code();
  v62 = *(v12 - 8);
  v63 = v12;
  v13 = *(v62 + 64);
  __chkstk_darwin(v12);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Logger();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v57 = v9;
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v21, v22, "SecureTransactionServiceManager within executeOnSEProxy block", v23, 2u);
    v9 = v57;
  }

  (*(v17 + 8))(v20, v16);
  if (a2)
  {
    (*(v62 + 104))(v15, enum case for DIPError.Code.internalError(_:), v63);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10051A2C0(&qword_100834130, 255, &type metadata accessor for DIPError);
    v24 = swift_allocError();
LABEL_5:
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v64 = v24;
    sub_100007224(&qword_100846A90, &qword_1006E74F0);
    return CheckedContinuation.resume(throwing:)();
  }

  if (!a1)
  {
    (*(v62 + 104))(v15, enum case for DIPError.Code.documentReaderDidNotReceiveSTSEndpoint(_:), v63);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10051A2C0(&qword_100834130, 255, &type metadata accessor for DIPError);
    v24 = swift_allocError();
    goto LABEL_5;
  }

  v26 = type metadata accessor for SESKeystore();
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  v29 = a1;
  v56 = SESKeystore.init()();
  v57 = [objc_allocWithZone(LAContext) init];
  v30 = v61;
  v31 = v61[2];
  v32 = _swiftEmptyArrayStorage;
  if (v31)
  {
    v49 = v29;
    v50 = a6;
    v55 = a1;
    v64 = _swiftEmptyArrayStorage;
    sub_10017314C(0, v31, 0);
    v32 = v64;
    v53 = enum case for SESKeystore.SignatureOutputFormat.raw(_:);
    v52 = (v9 + 13);
    v54 = (v9 + 1);
    v33 = v30 + 5;
    v34 = v51;
    v35 = v60;
    while (1)
    {
      v62 = v31;
      v63 = v32;
      v37 = *(v33 - 1);
      v36 = *v33;
      v61 = v33;
      sub_10000B8B8(v37, v36);
      result = [v57 externalizedContext];
      if (!result)
      {
        break;
      }

      v38 = result;
      v39 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v41 = v40;

      (*v52)(v35, v53, v34);
      v42 = dispatch thunk of SESKeystore.signDigest(_:withKey:externalizedLAContext:outputFormat:seAccessEndpoint:)();
      v44 = v43;
      sub_10000B90C(v39, v41);
      sub_10000B90C(v37, v36);
      (*v54)(v35, v34);
      v32 = v63;
      v64 = v63;
      v46 = v63[2];
      v45 = v63[3];
      if (v46 >= v45 >> 1)
      {
        sub_10017314C((v45 > 1), v46 + 1, 1);
        v34 = v51;
        v32 = v64;
      }

      v35 = v60;
      v33 = v61 + 2;
      v32[2] = v46 + 1;
      v47 = &v32[2 * v46];
      v47[4] = v42;
      v47[5] = v44;
      v31 = v62 - 1;
      if (v62 == 1)
      {
        v29 = v49;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:
    v64 = v32;
    sub_100007224(&qword_100846A90, &qword_1006E74F0);
    CheckedContinuation.resume(returning:)();
  }

  return result;
}

uint64_t sub_100519F1C()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_100141FE4(0x74696E696564, 0xE600000000000000, &v16);
    _os_log_impl(&_mh_execute_header, v7, v8, "SecureTransactionServiceManager %s", v9, 0xCu);
    sub_10000BB78(v10);
  }

  (*(v3 + 8))(v6, v2);
  v11 = *(v1 + 120);
  if (v11)
  {
    [v11 invalidate];
    v12 = *(v1 + 120);
  }

  else
  {
    v12 = 0;
  }

  *(v1 + 120) = 0;

  v13 = *(v1 + 128);

  swift_defaultActor_destroy();
  return v1;
}

uint64_t sub_10051A0F4()
{
  sub_100519F1C();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10051A144(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10017AD78;

  return sub_100512F08(a1);
}

uint64_t sub_10051A1D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100103B8C;

  return sub_100515924(a1, a2, a3);
}

uint64_t sub_10051A288()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10051A2C0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_10051A314()
{
  v1 = sub_100007224(&qword_100846A90, &qword_1006E74F0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 2);

  sub_10000B90C(*(v0 + 3), *(v0 + 4));
  (*(v2 + 8))(&v0[v4], v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

id sub_10051A3EC(void *a1, uint64_t a2)
{
  v5 = *(sub_100007224(&qword_100846A90, &qword_1006E74F0) - 8);
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2 + ((*(v5 + 80) + 40) & ~*(v5 + 80));

  return sub_1005197FC(a1, a2, v6, v7, v8, v9);
}

uint64_t sub_10051A480(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10051A4A0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100027B9C;

  return sub_100516120(a1, v4, v5, v6);
}

uint64_t sub_10051A598(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100027B9C;

  return sub_100517C18(a1, v4, v5, v6);
}

uint64_t sub_10051A664()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1005178A8();
}

uint64_t sub_10051A674(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100041F04;

  return sub_1005135E0(a1, v4, v5, v6);
}

uint64_t sub_10051A768(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100041F04;

  return sub_100515904(a1, v4, v5, v6);
}

uint64_t sub_10051A81C(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_100041F04;

  return sub_100514A90(a1, a2, v6, v7, v8);
}

uint64_t sub_10051A8E0()
{
  v1 = type metadata accessor for STSReader.StateChanges();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for MobileDocumentReaderDeviceEngagementType();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  v12 = *(v0 + 16);
  swift_unknownObjectRelease();
  v13 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_10051AA38(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for STSReader.StateChanges() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for MobileDocumentReaderDeviceEngagementType() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100041F04;

  return sub_100515170(a1, v10, v11, v12, v1 + v6);
}

uint64_t sub_10051AB98(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100041F04;

  return sub_10051520C(a1, v4, v5, v6);
}

uint64_t sub_10051AC74()
{
  type metadata accessor for SignpostManager();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  *(v0 + 112) = &_swiftEmptyDictionarySingleton;
  qword_100882378 = v0;
  return result;
}

uint64_t sub_10051ACBC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DIPSignpost();
  v51 = *(v4 - 8);
  v5 = *(v51 + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v50 = &v46 - v9;
  v10 = type metadata accessor for DIPSignpost.Config();
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10);
  v57 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v12);
  v49 = &v46 - v16;
  v17 = *(a1 + 16);
  if (v17)
  {
    v19 = *(v15 + 16);
    v18 = v15 + 16;
    v20 = (a1 + ((*(v18 + 64) + 32) & ~*(v18 + 64)));
    v53 = (v51 + 32);
    v54 = v19;
    v52 = *(v18 + 56);
    v55 = v18;
    v47 = v2;
    v48 = (v18 - 8);
    v46 = v51 + 40;
    while (1)
    {
      v56 = v17;
      v22 = v49;
      v23 = v54;
      v54(v49, v20, v10);
      v24 = v57;
      v25 = v10;
      v23(v57, v22, v10);
      v26 = v50;
      DIPSignpost.init(_:)();
      swift_beginAccess();
      v27 = *v53;
      v28 = v8;
      v29 = v4;
      (*v53)(v8, v26, v4);
      v30 = *(v2 + 112);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v58 = *(v2 + 112);
      v32 = v58;
      *(v2 + 112) = 0x8000000000000000;
      v34 = sub_10003B610(v24);
      v35 = v32[2];
      v36 = (v33 & 1) == 0;
      v37 = v35 + v36;
      if (__OFADD__(v35, v36))
      {
        break;
      }

      v38 = v33;
      if (v32[3] >= v37)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100170CF4();
        }
      }

      else
      {
        sub_100168B60(v37, isUniquelyReferenced_nonNull_native);
        v39 = sub_10003B610(v57);
        if ((v38 & 1) != (v40 & 1))
        {
          goto LABEL_17;
        }

        v34 = v39;
      }

      v4 = v29;
      v41 = v58;
      v10 = v25;
      if (v38)
      {
        v8 = v28;
        (*(v51 + 40))(v58[7] + *(v51 + 72) * v34, v28, v4);
        (*v48)(v57, v25);
      }

      else
      {
        v58[(v34 >> 6) + 8] |= 1 << v34;
        v42 = v57;
        v54(v41[6] + v34 * v52, v57, v10);
        v8 = v28;
        v27((v41[7] + *(v51 + 72) * v34), v28, v4);
        (*v48)(v42, v10);
        v43 = v41[2];
        v44 = __OFADD__(v43, 1);
        v45 = v43 + 1;
        if (v44)
        {
          goto LABEL_16;
        }

        v41[2] = v45;
      }

      v2 = v47;
      v21 = *(v47 + 112);
      *(v47 + 112) = v41;

      result = swift_endAccess();
      v20 += v52;
      v17 = v56 - 1;
      if (v56 == 1)
      {
        return result;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_10051B0E0(uint64_t a1)
{
  v2 = v1;
  v67 = type metadata accessor for DIPSignpost();
  v55 = *(v67 - 8);
  v4 = *(v55 + 64);
  __chkstk_darwin(v67);
  v52 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100007224(&qword_10083B038, &unk_1006D9160);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v51 - v11;
  v13 = type metadata accessor for DIPSignpost.Config();
  v14 = *(*(v13 - 8) + 64);
  result = __chkstk_darwin(v13);
  v19 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a1 + 16);
  if (v20)
  {
    v21 = v17;
    v22 = a1 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
    v23 = v16;
    swift_beginAccess();
    v24 = *(v21 + 16);
    v21 += 16;
    v62 = v24;
    v68 = (v55 + 56);
    v54 = (v55 + 16);
    v61 = (v55 + 48);
    v25 = *(v21 + 56);
    v51 = (v55 + 8);
    v63 = v21;
    v58 = (v21 - 8);
    v53 = v55 + 32;
    v65 = v12;
    v66 = v10;
    v64 = v23;
    v59 = v19;
    v60 = v25;
    v57 = v2;
    v24(v19, v22, v23);
    while (1)
    {
      v33 = *(v2 + 112);
      if (*(v33 + 16))
      {
        v34 = *(v2 + 112);

        v35 = sub_10003B610(v19);
        v36 = v67;
        if (v37)
        {
          (*(v55 + 16))(v12, *(v33 + 56) + *(v55 + 72) * v35, v67);
          v38 = 0;
        }

        else
        {
          v38 = 1;
        }
      }

      else
      {
        v38 = 1;
        v36 = v67;
      }

      v39 = *v68;
      (*v68)(v12, v38, 1, v36);
      if ((*v61)(v12, 1, v36))
      {
        sub_10051B628(v12);
      }

      else
      {
        v40 = v52;
        (*v54)(v52, v12, v36);
        sub_10051B628(v12);
        DIPSignpost.end(workflowID:isBackground:)(0, 2);
        (*v51)(v40, v36);
      }

      swift_beginAccess();
      v41 = *(v2 + 112);
      v42 = sub_10003B610(v19);
      if (v43)
      {
        v44 = v42;
        v56 = v39;
        v45 = *(v2 + 112);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v47 = *(v2 + 112);
        v69 = v47;
        *(v2 + 112) = 0x8000000000000000;
        v48 = v2;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_100170CF4();
          v47 = v69;
        }

        v28 = v60;
        v30 = v58;
        v27 = v64;
        (*v58)(*(v47 + 48) + v44 * v60, v64);
        v26 = v66;
        v49 = v67;
        (*(v55 + 32))(v66, *(v47 + 56) + *(v55 + 72) * v44, v67);
        sub_10015072C(v44, v47);
        v50 = *(v48 + 112);
        *(v48 + 112) = v47;

        v56(v26, 0, 1, v49);
      }

      else
      {
        v26 = v66;
        v27 = v64;
        v28 = v60;
        v29 = v36;
        v30 = v58;
        v39(v66, 1, 1, v29);
      }

      sub_10051B628(v26);
      swift_endAccess();
      v31 = v59;
      result = (*v30)(v59, v27);
      v22 += v28;
      --v20;
      v12 = v65;
      v32 = v27;
      v19 = v31;
      v2 = v57;
      if (!v20)
      {
        break;
      }

      v62(v31, v22, v32);
    }
  }

  return result;
}

uint64_t sub_10051B5CC()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10051B628(uint64_t a1)
{
  v2 = sub_100007224(&qword_10083B038, &unk_1006D9160);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10051B690(uint64_t result, uint64_t a2)
{
  v3 = *(result + 16);
  if (v3)
  {
    v5 = (result + 64);
    while (1)
    {
      v6 = *(v5 - 1);
      v7 = *v5;
      v8 = *(v5 - 3);
      v9 = *(v5 - 2);
      v10[0] = *(v5 - 4);
      v10[1] = v8;
      v10[2] = v9;
      v10[3] = v6;
      v10[4] = v7;

      sub_10052E520(v10, a2);
      if (v2)
      {
        break;
      }

      v5 += 5;

      if (!--v3)
      {
        return result;
      }
    }
  }

  return result;
}

void sub_10051B76C()
{
  v0 = [objc_opt_self() sharedConnection];
  if (v0)
  {
    v1 = v0;
    v2 = MCFeatureDiagnosticsSubmissionAllowed;
    v3 = [v1 effectiveBoolValueForSetting:v2];

    v4 = v3 == 1;
  }

  else
  {
    v4 = 0;
  }

  byte_100882380 = v4;
}

uint64_t sub_10051B804()
{
  v10 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v10 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9[1] = sub_10001F8D4(0, &qword_100845BD0, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  v11 = _swiftEmptyArrayStorage;
  sub_10053B9C0(&qword_1008465A0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100007224(&unk_1008458B0, &qword_1006BF8A0);
  sub_1000BA30C(&qword_1008465B0, &unk_1008458B0, &qword_1006BF8A0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v10);
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  qword_100846B98 = result;
  return result;
}

uint64_t sub_10051BAF0(void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, int a7, void *a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  v16 = v14;
  v120 = a8;
  v113 = a7;
  v118 = a6;
  v112 = a5;
  v110 = a4;
  v117 = a3;
  v111 = a2;
  v119 = a13;
  v134 = a12;
  v109 = type metadata accessor for Logger();
  v108 = *(v109 - 8);
  v18 = *(v108 + 64);
  __chkstk_darwin(v109);
  v20 = &v100 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DIPError.Code();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v116 = &v100 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v14 + 216) = 0u;
  *(v14 + 112) = 0u;
  *(v14 + 128) = 0u;
  *(v14 + 232) = 0u;
  *(v14 + 248) = 0u;
  v122 = v14 + 216;
  *(v14 + 264) = 0u;
  *(v14 + 280) = 0xF000000000000000;
  *(v14 + 288) = 0u;
  *(v14 + 304) = 0u;
  *(v14 + 320) = 0u;
  *(v14 + 336) = 0u;
  *(v14 + 352) = 0xF000000000000000;
  *(v14 + 360) = 0;
  *(v14 + 368) = 0;
  *(v14 + 376) = 0;
  *(v14 + 384) = 0x6567616D2E6D6F63;
  *(v14 + 392) = 0xEB0000000061746ELL;
  *(v14 + 400) = 257;
  v25 = OBJC_IVAR____TtC8coreidvd10DIPODNator_ordRequest;
  v26 = type metadata accessor for ORDRequest(0);
  (*(*(v26 - 8) + 56))(v16 + v25, 1, 1, v26);
  v27 = OBJC_IVAR____TtC8coreidvd10DIPODNator_otdRequest;
  v28 = type metadata accessor for OTDRequest(0);
  (*(*(v28 - 8) + 56))(v16 + v27, 1, 1, v28);
  v29 = (v16 + OBJC_IVAR____TtC8coreidvd10DIPODNator_profileId);
  *v29 = 0;
  v29[1] = 0;
  v121 = a11;
  sub_10000BBC4(a11, &v126, &qword_100834EB0, &qword_1006E78F0);
  if (v127)
  {
    sub_10001F358(&v126, &v128);
  }

  else
  {
    sub_1000CCD08(&v128);
    if (v127)
    {
      sub_10000BE18(&v126, &qword_100834EB0, &qword_1006E78F0);
    }
  }

  v123 = a1;
  if (!v129)
  {

    sub_10000BE18(&v128, &qword_100834EB0, &qword_1006E78F0);
    (*(v22 + 104))(v116, enum case for DIPError.Code.assessmentGUIDsExhausted(_:), v21);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10053B9C0(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_10000BE18(v119, &unk_10084A150, &qword_1006E78F8);

    sub_10000BE18(v134, &qword_100834EB0, &qword_1006E78F0);
    sub_10000BE18(v121, &qword_100834EB0, &qword_1006E78F0);
LABEL_16:
    v43 = *(v16 + 120);

    v44 = *(v16 + 136);

    sub_10000BE18(v122, &qword_100834EB0, &qword_1006E78F0);
    v45 = *(v16 + 264);

    sub_10000BD94(*(v16 + 272), *(v16 + 280));
    sub_10000BE18(v16 + 288, &qword_100834EB0, &qword_1006E78F0);
    v46 = *(v16 + 336);

    sub_10000BD94(*(v16 + 344), *(v16 + 352));
    v47 = *(v16 + 360);

    v48 = *(v16 + 392);

    sub_10000BE18(v16 + OBJC_IVAR____TtC8coreidvd10DIPODNator_ordRequest, &unk_10084A170, &unk_1006E7900);
    sub_10000BE18(v16 + OBJC_IVAR____TtC8coreidvd10DIPODNator_otdRequest, &qword_100847538, &unk_1006E83A0);
    v49 = *(v16 + OBJC_IVAR____TtC8coreidvd10DIPODNator_profileId + 8);

    type metadata accessor for DIPODNator(0);
    v50 = *(*v16 + 48);
    v51 = *(*v16 + 52);
    swift_deallocPartialClassInstance();
    return v16;
  }

  v107 = v21;
  v115 = a9;
  v114 = a10;
  sub_10001F358(&v128, &v131);
  v31 = v132;
  v30 = v133;
  sub_10000BA08(&v131, v132);
  v32 = (*(v30 + 8))(v31, v30);
  v34 = v33;
  if (qword_100832C98 != -1)
  {
    swift_once();
  }

  v35 = off_1008475C8;
  os_unfair_lock_lock(off_1008475C8 + 6);
  v36 = *(v35 + 2);

  os_unfair_lock_unlock(v35 + 6);
  v37 = sub_100544838(v32, v34);
  if (v15)
  {

    sub_10000BE18(v119, &unk_10084A150, &qword_1006E78F8);

LABEL_13:
    sub_10000BE18(v134, &qword_100834EB0, &qword_1006E78F0);
    v42 = v121;
LABEL_14:
    sub_10000BE18(v42, &qword_100834EB0, &qword_1006E78F0);
LABEL_15:
    sub_10000BB78(&v131);
    goto LABEL_16;
  }

  v39 = v32;
  v40 = v38;
  v106._countAndFlagsBits = v39;
  v106._object = v34;
  v105 = v37;

  if (v40 >> 60 == 15)
  {

    *&v128 = 0;
    *(&v128 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(41);

    *&v128 = 0xD000000000000026;
    *(&v128 + 1) = 0x800000010071DBF0;
    String.append(_:)(v106);

    v41._countAndFlagsBits = 41;
    v41._object = 0xE100000000000000;
    String.append(_:)(v41);
    (*(v22 + 104))(v116, enum case for DIPError.Code.internalError(_:), v107);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10053B9C0(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_10000BE18(v119, &unk_10084A150, &qword_1006E78F8);

    goto LABEL_13;
  }

  sub_10000BBC4(v134, &v124, &qword_100834EB0, &qword_1006E78F0);
  if (v125)
  {
    sub_10001F358(&v124, &v126);
  }

  else
  {
    sub_1000CCD08(&v126);
    if (v125)
    {
      sub_10000BE18(&v124, &qword_100834EB0, &qword_1006E78F0);
    }
  }

  v104 = v40;
  v53 = v107;
  if (!v127)
  {

    sub_10000BE18(&v126, &qword_100834EB0, &qword_1006E78F0);
    (*(v22 + 104))(v116, enum case for DIPError.Code.assessmentGUIDsExhausted(_:), v53);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10053B9C0(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_10000BD94(v105, v104);
    sub_10000BE18(v119, &unk_10084A150, &qword_1006E78F8);

    sub_10000BE18(v134, &qword_100834EB0, &qword_1006E78F0);
    v42 = v121;
    goto LABEL_14;
  }

  sub_10001F358(&v126, &v128);
  v103 = 0;
  v54 = v129;
  v55 = v130;
  sub_10000BA08(&v128, v129);
  v56 = (*(v55 + 8))(v54, v55);
  v58 = v57;
  os_unfair_lock_lock(v35 + 6);
  v59 = *(v35 + 2);

  os_unfair_lock_unlock(v35 + 6);
  v60 = v103;
  v61 = sub_100544838(v56, v58);
  if (v60)
  {
    sub_10000BD94(v105, v104);

    sub_10000BE18(v119, &unk_10084A150, &qword_1006E78F8);

LABEL_28:
    sub_10000BE18(v134, &qword_100834EB0, &qword_1006E78F0);
    sub_10000BE18(v121, &qword_100834EB0, &qword_1006E78F0);
    sub_10000BB78(&v128);
    goto LABEL_15;
  }

  v63 = v61;
  v101 = v56;
  v102 = v62;

  if (v102 >> 60 == 15)
  {

    *&v126 = 0;
    *(&v126 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(39);

    *&v126 = 0xD000000000000024;
    *(&v126 + 1) = 0x800000010071DC50;
    v64._countAndFlagsBits = v101;
    v64._object = v58;
    String.append(_:)(v64);

    v65._countAndFlagsBits = 41;
    v65._object = 0xE100000000000000;
    String.append(_:)(v65);
    (*(v22 + 104))(v116, enum case for DIPError.Code.internalError(_:), v53);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10053B9C0(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_10000BD94(v105, v104);
    sub_10000BE18(v119, &unk_10084A150, &qword_1006E78F8);

    goto LABEL_28;
  }

  v116 = v63;
  defaultLogger()();
  object = v106._object;

  v67 = Logger.logObject.getter();
  v68 = static os_log_type_t.debug.getter();

  v69 = os_log_type_enabled(v67, v68);
  v103 = 0;
  v100 = v58;
  if (v69)
  {
    v70 = swift_slowAlloc();
    *&v126 = swift_slowAlloc();
    *v70 = 136446466;
    *(v70 + 4) = sub_100141FE4(v106._countAndFlagsBits, object, &v126);
    *(v70 + 12) = 2080;
    *(v70 + 14) = sub_100141FE4(v101, v58, &v126);
    _os_log_impl(&_mh_execute_header, v67, v68, "Using aguid %{public}s, tguid %s", v70, 0x16u);
    swift_arrayDestroy();
  }

  (*(v108 + 8))(v20, v109);
  v71 = v123;
  v72 = v123[2];
  v73 = *(v72 + 24);
  *(v16 + 16) = *(v72 + 16);
  *(v16 + 24) = v73;
  v74 = v71[3];
  v75 = v114;
  if (v74)
  {
    v76 = v74[3];
    *(v16 + 32) = v74[2];
    *(v16 + 40) = v76;
    v77 = v74[9];
    *(v16 + 48) = v74[8];
    *(v16 + 56) = v77;
    v78 = v74[16];
    *(v16 + 64) = v74[15];
    *(v16 + 72) = v78;
    v80 = v74[17];
    v79 = v74[18];
  }

  else
  {
    v80 = 0x414C494156414E55;
    v79 = 0xEB00000000454C42;
    *(v16 + 32) = 0x414C494156414E55;
    *(v16 + 40) = 0xEB00000000454C42;
    *(v16 + 48) = 0x414C494156414E55;
    *(v16 + 56) = 0xEB00000000454C42;
    *(v16 + 64) = 0;
    *(v16 + 72) = 0;
  }

  sub_10000BE18(v134, &qword_100834EB0, &qword_1006E78F0);
  sub_10000BE18(v121, &qword_100834EB0, &qword_1006E78F0);
  *(v16 + 80) = v80;
  *(v16 + 88) = v79;
  v81 = v71[1082];
  v82 = v71[1083];

  *(v16 + 96) = v81;
  *(v16 + 104) = v82;
  v83 = v117;
  *(v16 + 184) = v110 & 1;
  *(v16 + 168) = v111;
  *(v16 + 176) = v83;
  v84 = v118;
  *(v16 + 192) = v112;
  *(v16 + 200) = v84;
  *(v16 + 208) = v113;
  *(v16 + 144) = v120;
  *(v16 + 152) = v115;
  *(v16 + 160) = v75;
  sub_100020260(&v131, &v126);
  v85 = v122;
  swift_beginAccess();
  sub_1000B2764(&v126, v85, &qword_100834EB0, &qword_1006E78F0);
  swift_endAccess();
  v86 = *(v16 + 264);
  v87 = v106._object;
  *(v16 + 256) = v106._countAndFlagsBits;
  *(v16 + 264) = v87;

  v88 = *(v16 + 272);
  v89 = *(v16 + 280);
  v90 = v104;
  *(v16 + 272) = v105;
  *(v16 + 280) = v90;
  sub_10000BD94(v88, v89);
  sub_100020260(&v128, &v126);
  swift_beginAccess();
  sub_1000B2764(&v126, v16 + 288, &qword_100834EB0, &qword_1006E78F0);
  swift_endAccess();
  v91 = *(v16 + 336);
  v92 = v100;
  *(v16 + 328) = v101;
  *(v16 + 336) = v92;

  v93 = *(v16 + 344);
  v94 = *(v16 + 352);
  v95 = v102;
  *(v16 + 344) = v116;
  *(v16 + 352) = v95;
  sub_10000BD94(v93, v94);
  v96 = (v16 + OBJC_IVAR____TtC8coreidvd10DIPODNator_clientGUIDFactory);
  v97 = v119;
  v98 = v119[3];
  v96[2] = v119[2];
  v96[3] = v98;
  v96[4] = v97[4];
  v99 = v97[1];
  *v96 = *v97;
  v96[1] = v99;
  *(v16 + 402) = a14 & 1;
  sub_10000BB78(&v128);
  sub_10000BB78(&v131);
  return v16;
}

uint64_t sub_10051CE1C(int *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, unsigned __int8 a9, unsigned __int8 a10)
{
  v11 = v10;
  v121 = a8;
  v116 = a2;
  v117 = a7;
  v115 = a1;
  v123 = 0;
  LODWORD(v128) = a9;
  v16 = sub_100007224(&qword_1008350C0, &unk_1006C0B30);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v107 = &v106 - v18;
  v19 = type metadata accessor for AugmentedProfile(0);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v109 = &v106 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = type metadata accessor for Logger();
  v120 = *(v124 - 8);
  v22 = *(v120 + 64);
  v23 = __chkstk_darwin(v124);
  v108 = &v106 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v118 = &v106 - v26;
  __chkstk_darwin(v25);
  v119 = &v106 - v27;
  v28 = type metadata accessor for DIPError.Code();
  v125 = *(v28 - 8);
  v126 = v28;
  v29 = *(v125 + 64);
  __chkstk_darwin(v28);
  v129 = &v106 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for UUID();
  v113 = *(v31 - 8);
  v114 = v31;
  v32 = *(v113 + 8);
  __chkstk_darwin(v31);
  v111 = &v106 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v10 + 112) = 0u;
  *(v10 + 128) = 0u;
  *(v10 + 232) = 0u;
  *(v10 + 248) = 0u;
  *(v10 + 216) = 0u;
  *(v10 + 264) = 0u;
  *(v10 + 280) = 0xF000000000000000;
  *(v10 + 288) = 0u;
  *(v10 + 304) = 0u;
  *(v10 + 320) = 0u;
  *(v10 + 336) = 0u;
  *(v10 + 352) = 0xF000000000000000;
  *(v10 + 360) = 0;
  *(v10 + 368) = 0;
  *(v10 + 376) = 0;
  *(v10 + 384) = 0x6567616D2E6D6F63;
  *(v10 + 392) = 0xEB0000000061746ELL;
  *(v10 + 400) = 257;
  v34 = OBJC_IVAR____TtC8coreidvd10DIPODNator_ordRequest;
  v35 = type metadata accessor for ORDRequest(0);
  (*(*(v35 - 8) + 56))(v10 + v34, 1, 1, v35);
  v36 = OBJC_IVAR____TtC8coreidvd10DIPODNator_otdRequest;
  v37 = type metadata accessor for OTDRequest(0);
  (*(*(v37 - 8) + 56))(v10 + v36, 1, 1, v37);
  v38 = (v10 + OBJC_IVAR____TtC8coreidvd10DIPODNator_profileId);
  *v38 = 0;
  v38[1] = 0;
  v122 = a5;
  *(v10 + 16) = a5;
  *(v10 + 24) = a6;
  *(v10 + 32) = a5;
  *(v10 + 40) = a6;
  v112 = a3;
  *(v10 + 48) = a3;
  *(v10 + 56) = a4;
  *(v10 + 168) = a3;
  *(v10 + 176) = a4;
  v110 = a4;
  *(v10 + 64) = 0;
  *(v10 + 72) = 0;
  *(v10 + 80) = 0;
  *(v10 + 88) = 0xE000000000000000;
  *(v10 + 96) = 0;
  *(v10 + 104) = 0;
  *(v10 + 208) = v128;
  *(v10 + 184) = 1;
  *(v10 + 144) = 0;
  v127 = 0x800000010071E8A0;
  v128 = "sessment GUID to use";
  *(v10 + 192) = 0;
  *(v10 + 200) = 0;
  v39 = swift_allocObject();
  v40 = v116;
  v39[2] = v115;
  v39[3] = v40;
  v41 = v117;
  v42 = v121;
  v39[4] = v117;
  v39[5] = v42;
  type metadata accessor for DIPAssessmentWebService();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();

  runAsyncAndBlock<A>(file:function:line:_:)();

  *(v10 + 160) = v136;

  v43 = v111;
  UUID.init()();
  v44 = UUID.uuidString.getter();
  v46 = v45;
  (*(v113 + 1))(v43, v114);
  v47 = sub_1005AF7BC(v44, v46, v41, v42);
  v48 = v122;

  v49 = sub_10054A524(v48, a6, v112, v110, v47);
  v121 = v49;

  *(v11 + 152) = v49;
  swift_retain_n();
  sub_100007224(&qword_10084A1D0, &qword_1006DB410);
  v116 = 0xD000000000000054;
  runAsyncAndBlock<A>(file:function:line:_:)();

  if (*(&v136 + 1))
  {
    v50 = v109;
    v51 = v123;
    sub_10053CD68(v109);
    if (v51)
    {
      v117 = a6;
      v123 = v51;

      v52 = v108;
      defaultLogger()();
      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.info.getter();
      v55 = os_log_type_enabled(v53, v54);
      v56 = v120;
      v57 = v129;
      v58 = v125;
      v59 = v126;
      if (v55)
      {
        v60 = swift_slowAlloc();
        *v60 = 0;
        _os_log_impl(&_mh_execute_header, v53, v54, "unexpected error getting augmented profile", v60, 2u);
      }

      v61 = *(v56 + 8);
      v114 = (v56 + 8);
      v115 = v61;
      (v61)(v52, v124);
      v113 = "tarting GUIDFactory";
      (*(v58 + 104))(v57, enum case for DIPError.Code.odnErrorDecodingProfile(_:), v59);
      sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
      v62 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
      v116 = v62;
      v63 = *(v62 - 8);
      v112 = *(v63 + 72);
      v64 = (*(v63 + 80) + 32) & ~*(v63 + 80);
      v65 = swift_allocObject();
      *(v65 + 16) = xmmword_1006BF740;
      v66 = v65 + v64;
      v67 = (v65 + v64 + *(v62 + 48));
      v68 = enum case for DIPError.PropertyKey.inoWorkflowID(_:);
      v69 = type metadata accessor for DIPError.PropertyKey();
      v70 = *(*(v69 - 8) + 104);
      (v70)(v66, v68, v69);
      v67[3] = &type metadata for String;
      v67[4] = &protocol witness table for String;
      v71 = v122;
      v72 = v117;
      *v67 = v122;
      v67[1] = v72;
      v73 = (v66 + v112 + *(v116 + 48));
      v70();
      v73[3] = &type metadata for String;
      v73[4] = &protocol witness table for String;
      *v73 = v71;
      v73[1] = v72;

      sub_10003C9C0(v65);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      type metadata accessor for DIPError();
      sub_10053B9C0(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      v74 = v119;
      defaultLogger()();
      DIPRecordError(_:message:log:)();

      v115(v74, v124);

      v75 = 0;
      v51 = 0;
    }

    else
    {

      v91 = v107;
      sub_10000BBC4(v50, v107, &qword_1008350C0, &unk_1006C0B30);
      v92 = sub_100007224(&qword_100835138, &qword_1006C0B58);
      v93 = *(v92 - 8);
      if ((*(v93 + 48))(v91, 1, v92) == 1)
      {
        sub_100537B90(v50, type metadata accessor for AugmentedProfile);
        sub_10000BE18(v91, &qword_1008350C0, &unk_1006C0B30);
        v75 = 0;
      }

      else
      {
        JWSSignedJSON.payload.getter();
        sub_100537B90(v50, type metadata accessor for AugmentedProfile);
        v140 = v134;
        v141[0] = v135[0];
        *(v141 + 13) = *(v135 + 13);
        v136 = v130;
        v137 = v131;
        v138 = v132;
        v139 = v133;
        (*(v93 + 8))(v91, v92);
        sub_10009E858(&v136);
        v75 = BYTE11(v141[1]);
      }
    }

    v90 = v118;
  }

  else
  {
    v114 = "dForSendingResults:)";
    (*(v125 + 104))(v129, enum case for DIPError.Code.odnMissingProfile(_:), v126);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v76 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
    v115 = v76;
    v77 = *(v76 - 8);
    v113 = *(v77 + 72);
    v78 = *(v77 + 80);
    v117 = a6;
    v79 = (v78 + 32) & ~v78;
    v80 = swift_allocObject();
    *(v80 + 16) = xmmword_1006BF740;
    v81 = v80 + v79;
    v82 = (v80 + v79 + *(v76 + 48));
    v83 = enum case for DIPError.PropertyKey.inoWorkflowID(_:);
    v84 = type metadata accessor for DIPError.PropertyKey();
    v85 = *(*(v84 - 8) + 104);
    (v85)(v81, v83, v84);
    v82[3] = &type metadata for String;
    v82[4] = &protocol witness table for String;
    v86 = v122;
    v87 = v117;
    *v82 = v122;
    v82[1] = v87;
    v88 = &v113[v81 + *(v115 + 12)];
    v85();
    *(v88 + 3) = &type metadata for String;
    *(v88 + 4) = &protocol witness table for String;
    *v88 = v86;
    *(v88 + 1) = v87;

    sub_10003C9C0(v80);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    type metadata accessor for DIPError();
    sub_10053B9C0(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    v89 = v119;
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    (*(v120 + 8))(v89, v124);

    v75 = 0;
    v90 = v118;
    v51 = v123;
  }

  LODWORD(v123) = a10;
  *(&v137 + 1) = type metadata accessor for DeviceInformationProvider();
  *&v138 = &protocol witness table for DeviceInformationProvider;
  sub_100032DBC(&v136);
  v94 = v121;

  DeviceInformationProvider.init()();
  sub_10004D91C(&v136, v75, &unk_1006E7A40, v94, v142);
  if (v51)
  {
    v95 = (v11 + OBJC_IVAR____TtC8coreidvd10DIPODNator_clientGUIDFactory);
    *v95 = 0u;
    v95[1] = 0u;
    v95[2] = 0u;
    v95[3] = 0u;
    v95[4] = 0u;
    defaultLogger()();
    v96 = Logger.logObject.getter();
    v97 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v96, v97))
    {
      v98 = swift_slowAlloc();
      *v98 = 0;
      _os_log_impl(&_mh_execute_header, v96, v97, "Ignoring error initialing GUIDFactory. This will result in errors getting Assessments which may not be mandatory", v98, 2u);
    }

    v99 = *(v120 + 8);
    v100 = v124;
    v99(v90, v124);
    (*(v125 + 104))(v129, enum case for DIPError.Code.odnGUIDFactoryIssueInitializing(_:), v126);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10053B9C0(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    v101 = v119;
    defaultLogger()();
    DIPRecordError(_:message:log:)();

    v99(v101, v100);
  }

  else
  {

    v102 = (v11 + OBJC_IVAR____TtC8coreidvd10DIPODNator_clientGUIDFactory);
    v103 = v142[3];
    v102[2] = v142[2];
    v102[3] = v103;
    v102[4] = v142[4];
    v104 = v142[1];
    *v102 = v142[0];
    v102[1] = v104;
  }

  *(v11 + 402) = v123 & 1;
  return v11;
}