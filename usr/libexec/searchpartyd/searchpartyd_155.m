id sub_10101207C()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 isInternalBuild];

  if (v2)
  {
    v3 = String._bridgeToObjectiveC()();
    v4 = [v0 BOOLForKey:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_10101214C(void *a1)
{
  v2 = objc_opt_self();
  v3 = [v2 standardUserDefaults];
  v4 = [v2 standardUserDefaults];
  v5 = String._bridgeToObjectiveC()();
  v6 = [v4 objectForKey:v5];

  if (v6)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v22 = 0u;
    v23 = 0u;
  }

  v24[0] = v22;
  v24[1] = v23;
  if (*(&v23 + 1))
  {
    if (swift_dynamicCast())
    {
      v7 = type metadata accessor for PropertyListDecoder();
      v8 = *(v7 + 48);
      v9 = *(v7 + 52);
      swift_allocObject();
      PropertyListDecoder.init()();
      sub_1000BC4D4(&qword_1016C2ED8, &unk_1013F7740);
      sub_10101250C(&qword_1016C2EF0, &qword_1016C2EF8);
      dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
      sub_100016590(v20, v21);

      v19 = *&v24[0];
      goto LABEL_9;
    }
  }

  else
  {
    sub_10000B3A8(v24, &unk_1016A0B10, &qword_10139BF40);
  }

  v19 = &_swiftEmptySetSingleton;
LABEL_9:
  *&v24[0] = v19;

  if ((*&v24[0] & 0xC000000000000001) != 0)
  {
    if (__CocoaSet.count.getter())
    {
LABEL_11:
      v10 = type metadata accessor for PropertyListEncoder();
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      swift_allocObject();
      PropertyListEncoder.init()();
      sub_1000BC4D4(&qword_1016C2ED8, &unk_1013F7740);
      sub_10101250C(&qword_1016C2EE0, &qword_1016C2EE8);
      v14 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
      v16 = v15;

      isa = Data._bridgeToObjectiveC()().super.isa;
      v18 = String._bridgeToObjectiveC()();
      [v3 setObject:isa forKey:v18];

      sub_100016590(v14, v16);
      return;
    }
  }

  else if (*(*&v24[0] + 16))
  {
    goto LABEL_11;
  }

  v13 = String._bridgeToObjectiveC()();
  [v3 removeObjectForKey:v13];
}

uint64_t sub_10101250C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000BC580(&qword_1016C2ED8, &unk_1013F7740);
    sub_100009D18(a2, &unk_1016BBFC0, CKRecordZoneID_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_101012610()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 112);
  *(v1 + 112) = *(v0 + 24);
}

void sub_10101264C(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 120);
  v3 = 2;
  if (*(v1 + 120))
  {
    v3 = 0;
  }

  *a1 = v3;
  a1[1] = v2;
  if (v2)
  {
    v4 = 707;
  }

  else
  {
    v4 = 0;
  }

  a1[2] = v2;
  a1[3] = v2;
  a1[4] = v4;
}

uint64_t sub_101012718()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_100FD6C14();
}

uint64_t sub_101012758(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100014650;

  return sub_100FD2B5C(a1, v5, v4);
}

uint64_t sub_101012804(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100014744;

  return sub_100263B58(a1, v5, v4);
}

uint64_t sub_1010128AC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014650;

  return sub_1002ECF7C();
}

uint64_t sub_101012988(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_100FD1098(a1);
}

uint64_t sub_1010129C0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_101012A20(void (*a1)(void), uint64_t a2)
{
  a1(*(v2 + 16));
  v4 = *(v2 + 32);

  return _swift_deallocObject(v2, a2);
}

uint64_t sub_101012A74()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_101012ADC(void *a1, char a2)
{
  v4 = *(*(sub_1000BC4D4(&unk_1016C3130, &unk_1013F7950) - 8) + 80);

  return sub_100FD1874(a1, a2 & 1);
}

uint64_t sub_101012B68(void (*a1)(void))
{
  v3 = *(v1 + 16);

  a1(*(v1 + 24));

  return _swift_deallocObject(v1, 32);
}

void sub_101012BB8()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  sub_100FD1F1C();
  Transaction.capture()();
}

unint64_t sub_101012C84()
{
  result = qword_1016C32A8;
  if (!qword_1016C32A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C32A8);
  }

  return result;
}

unint64_t sub_101012CDC()
{
  result = qword_1016C32B0;
  if (!qword_1016C32B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C32B0);
  }

  return result;
}

uint64_t sub_101012F80(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  if (a1)
  {
    swift_getObjectType();
    v4 = dispatch thunk of Actor.unownedExecutor.getter();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v3[15] = v4;
  v3[16] = v6;

  return _swift_task_switch(sub_101013014, v4, v6);
}

uint64_t sub_101013014()
{
  v1 = v0[14];
  v0[17] = sub_1000BC4D4(&qword_1016A51A8, &unk_1013F8010);
  v0[18] = AsyncFilterSequence.Iterator.baseIterator.modify();
  v2 = sub_1000BC4D4(&qword_1016A51A0, &unk_1013B24F0);
  v3 = sub_1000041A4(&qword_1016C3520, &qword_1016A51A0, &unk_1013B24F0);
  v4 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
  v6 = swift_task_alloc();
  v0[19] = v6;
  *v6 = v0;
  v6[1] = sub_10101313C;
  v7 = v0[12];
  v8 = v0[13];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v0 + 9, v7, v8, v5, v2, v3);
}

uint64_t sub_10101313C()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v8 = *v1;

  if (v0)
  {
    v4 = *(v2 + 120);
    v5 = *(v2 + 128);
    v6 = sub_1010133C4;
  }

  else
  {
    (*(v2 + 144))();
    v4 = *(v2 + 120);
    v5 = *(v2 + 128);
    v6 = sub_101013264;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_101013264()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[11];
  v0[20] = v2;
  v0[21] = v1;
  v0[22] = v3;
  if (v2)
  {
    v4 = v0[17];
    v5 = v0[14];
    v0[6] = v2;
    v0[7] = v1;
    v0[8] = v3;
    v6 = AsyncFilterSequence.Iterator.isIncluded.getter();
    v0[23] = v7;
    v12 = (v6 + *v6);
    v8 = v6[1];
    v9 = swift_task_alloc();
    v0[24] = v9;
    *v9 = v0;
    v9[1] = sub_101013438;

    return v12(v0 + 6);
  }

  else
  {
    v11 = v0[1];

    return v11(0);
  }
}

uint64_t sub_1010133C4()
{
  (*(v0 + 144))();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_101013438(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v4 = *(*v1 + 184);
  v8 = *v1;
  *(*v1 + 200) = a1;

  v5 = *(v2 + 128);
  v6 = *(v2 + 120);

  return _swift_task_switch(sub_101013584, v6, v5);
}

uint64_t sub_101013584()
{
  if (*(v0 + 200))
  {
    v1 = *(v0 + 8);
    v2 = *(v0 + 168);
    v3 = *(v0 + 176);
    v4 = *(v0 + 160);

    return v1(v4, v2, v3);
  }

  else
  {
    v6 = *(v0 + 176);
    v7 = *(v0 + 160);

    v8 = *(v0 + 112);
    *(v0 + 136) = sub_1000BC4D4(&qword_1016A51A8, &unk_1013F8010);
    *(v0 + 144) = AsyncFilterSequence.Iterator.baseIterator.modify();
    v9 = sub_1000BC4D4(&qword_1016A51A0, &unk_1013B24F0);
    v10 = sub_1000041A4(&qword_1016C3520, &qword_1016A51A0, &unk_1013B24F0);
    v11 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
    v13 = swift_task_alloc();
    *(v0 + 152) = v13;
    *v13 = v0;
    v13[1] = sub_10101313C;
    v14 = *(v0 + 96);
    v15 = *(v0 + 104);

    return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v0 + 72, v14, v15, v12, v9, v10);
  }
}

uint64_t sub_101013708(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  v3 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_1010137FC, v1, 0);
}

uint64_t sub_1010137FC()
{
  v25 = v0;
  if (qword_101694EA0 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_1016BB490);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[6];
    v5 = v0[7];
    v7 = v0[5];
    v8 = v0[2];
    v9 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v9 = 136315394;
    *(v9 + 4) = sub_1000136BC(0xD00000000000001FLL, 0x80000001013782B0, &v24);
    *(v9 + 12) = 2082;
    type metadata accessor for Peripheral();
    sub_101028238(&qword_1016972A0, 255, &type metadata accessor for Peripheral);
    dispatch thunk of PeripheralProtocol.id.getter();
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;

    (*(v6 + 8))(v5, v7);
    v13 = sub_1000136BC(v10, v12, &v24);

    *(v9 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s for peripheral: %{public}s", v9, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v14 = v0[2];
  }

  v15 = v0[3];
  v16 = v0[4];
  v17 = v0[2];
  v18 = *(v15 + OBJC_IVAR____TtC12searchpartyd20PencilPairingService_queue);
  v19 = swift_allocObject();
  v0[8] = v19;
  v19[2] = v15;
  v19[3] = v17;
  v19[4] = v16;
  v20 = *(&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult<A>(_:) + 1);
  v23 = &async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult<A>(_:) + async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult<A>(_:);

  v21 = swift_task_alloc();
  v0[9] = v21;
  *v21 = v0;
  v21[1] = sub_101013B64;

  return (v23)(v0 + 11, &unk_1013F7F90, v19, &type metadata for LocalAccountCheckResult);
}

uint64_t sub_101013B64()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v9 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = *(v2 + 24);
    v5 = sub_1004327D4;
  }

  else
  {
    v6 = *(v2 + 64);
    v7 = *(v2 + 24);

    v5 = sub_101013C8C;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_101013C8C()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 88);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_101013CF8(uint64_t a1)
{
  *(v2 + 16) = v1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_101013D90;

  return sub_100DBB6E8(a1);
}

uint64_t sub_101013D90(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 24);
  v6 = *v3;
  v4[4] = a1;
  v4[5] = a2;

  if (v2)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    v9 = v4[2];

    return _swift_task_switch(sub_101013ED8, v9, 0);
  }
}

uint64_t sub_101013ED8()
{
  v21 = v0;
  if ((v0[5] & 0x3000000000000000) == 0x1000000000000000)
  {
    v1 = *(v0 + 32);
    if (qword_101694EA0 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1000076D4(v2, qword_1016BB490);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = 0xD000000000000010;
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v20 = v7;
      *v6 = 136446210;
      if (v1)
      {
        if (v1 == 1)
        {
          v5 = 0xD000000000000014;
        }

        else
        {
          v5 = 0xD000000000000017;
        }

        if (v1 == 1)
        {
          v8 = ".pairedToAnotherAccount";
        }

        else
        {
          v8 = "lastProactiveSubscribeTime";
        }
      }

      else
      {
        v8 = ".pairedToThisAccount";
      }

      v17 = sub_1000136BC(v5, v8 | 0x8000000000000000, &v20);

      *(v6 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v3, v4, "FMND status: %{public}s", v6, 0xCu);
      sub_100007BAC(v7);
    }

    v16 = (v1 + 1);
  }

  else
  {
    if (qword_101694EA0 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_1000076D4(v9, qword_1016BB490);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    v12 = os_log_type_enabled(v10, v11);
    v14 = v0[4];
    v13 = v0[5];
    if (v12)
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Unexpected FMND ID response!", v15, 2u);
    }

    sub_100DD9F00(v14, v13);
    v16 = 0;
  }

  v18 = v0[1];

  return v18(v16);
}

uint64_t sub_101014188@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 objectForKey:v3];

  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (*(&v10 + 1))
  {
    v5 = type metadata accessor for Date();
    v6 = swift_dynamicCast();
    return (*(*(v5 - 8) + 56))(a1, v6 ^ 1u, 1, v5);
  }

  else
  {
    sub_10000B3A8(v11, &unk_1016A0B10, &qword_10139BF40);
    v8 = type metadata accessor for Date();
    return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
  }
}

uint64_t sub_10101430C()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_1016C32C0);
  v1 = sub_1000076D4(v0, qword_1016C32C0);
  if (qword_101695150 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_10177C4B0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1010143D4()
{
  v1[2] = v0;
  v1[3] = *v0;
  v2 = *(*(sub_1000BC4D4(&qword_101698C00, &qword_10138B570) - 8) + 64) + 15;
  v1[4] = swift_task_alloc();

  return _swift_task_switch(sub_101014498, v0, 0);
}

uint64_t sub_101014498()
{
  if (qword_101695148 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 40) = sub_1000076D4(v1, qword_1016C32C0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Registering notifications", v4, 2u);
  }

  v5 = async function pointer to daemon.getter[1];
  v6 = swift_task_alloc();
  *(v0 + 48) = v6;
  *v6 = v0;
  v6[1] = sub_1010145E8;

  return daemon.getter();
}

uint64_t sub_1010145E8(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 48);
  v12 = *v1;
  *(v3 + 56) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 64) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for DistributedNotificationService();
  v9 = sub_101028238(&qword_1016AA400, 255, &type metadata accessor for Daemon);
  v10 = sub_101028238(&qword_1016A51C8, 255, type metadata accessor for DistributedNotificationService);
  *v6 = v12;
  v6[1] = sub_1010147CC;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1010147CC(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 64);
  v7 = *v2;

  v8 = *(v4 + 56);
  v9 = *(v4 + 16);
  if (v1)
  {

    v10 = sub_101014A8C;
  }

  else
  {

    *(v5 + 72) = a1;
    v10 = sub_101014934;
  }

  return _swift_task_switch(v10, v9, 0);
}

uint64_t sub_101014934()
{
  v1 = v0[9];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[2];
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v1;
  v7[5] = v6;
  v7[6] = v3;

  sub_1008CE048(0, 0, v2, &unk_1013F8000, v7);

  sub_10000B3A8(v2, &qword_101698C00, &qword_10138B570);
  v8 = v0[4];

  v9 = v0[1];

  return v9();
}

uint64_t sub_101014A8C()
{
  v1 = v0[5];
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "No distributed notification service to monitor!", v4, 2u);
  }

  v5 = v0[4];

  v6 = v0[1];

  return v6();
}

uint64_t sub_101014B64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  v7 = *(*(type metadata accessor for UUID() - 8) + 64) + 15;
  v6[8] = swift_task_alloc();
  v8 = *(*(sub_1000BC4D4(&qword_1016A51A0, &unk_1013B24F0) - 8) + 64) + 15;
  v6[9] = swift_task_alloc();
  v9 = sub_1000BC4D4(&qword_1016A51A8, &unk_1013F8010);
  v6[10] = v9;
  v10 = *(v9 - 8);
  v6[11] = v10;
  v11 = *(v10 + 64) + 15;
  v6[12] = swift_task_alloc();
  v12 = sub_1000BC4D4(&qword_1016A51B0, &unk_1013B2500);
  v6[13] = v12;
  v13 = *(v12 - 8);
  v6[14] = v13;
  v14 = *(v13 + 64) + 15;
  v6[15] = swift_task_alloc();
  v15 = sub_1000BC4D4(&qword_1016A51B8, &unk_1013F8020);
  v6[16] = v15;
  v16 = *(*(v15 - 8) + 64) + 15;
  v6[17] = swift_task_alloc();
  v17 = sub_1000BC4D4(&qword_1016A51C0, &unk_1013B2510);
  v6[18] = v17;
  v18 = *(v17 - 8);
  v6[19] = v18;
  v19 = *(v18 + 64) + 15;
  v6[20] = swift_task_alloc();

  return _swift_task_switch(sub_101014DA4, 0, 0);
}

uint64_t sub_101014DA4()
{
  v1 = v0[20];
  v2 = v0[17];
  v4 = v0[15];
  v3 = v0[16];
  v6 = v0[13];
  v5 = v0[14];
  v13 = v0[18];
  v14 = v0[12];
  v12 = v0[9];
  v7 = v0[5];
  v15 = v0[6];
  v8 = sub_100B11100(&off_10160D298);
  swift_arrayDestroy();
  sub_1000BC4D4(&qword_1016A51D0, &qword_1013B2520);
  (*(v5 + 104))(v4, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v6);
  AsyncStream.init(_:bufferingPolicy:_:)();
  *(swift_allocObject() + 16) = v8;
  sub_1000041A4(&qword_1016A51D8, &qword_1016A51B8, &unk_1013F8020);
  AsyncFilterSequence.init(_:isIncluded:)();
  AsyncFilterSequence.base.getter();
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  AsyncFilterSequence.isIncluded.getter();
  AsyncFilterSequence.Iterator.init(_:isIncluded:)();
  swift_beginAccess();
  v9 = swift_task_alloc();
  v0[21] = v9;
  *v9 = v0;
  v9[1] = sub_101015018;
  v10 = v0[12];

  return sub_101012F80(0, 0);
}

uint64_t sub_101015018(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *(*v4 + 168);
  v8 = *v4;
  v5[22] = a1;
  v5[23] = a2;
  v5[24] = a3;

  if (!v3)
  {

    return _swift_task_switch(sub_101015130, 0, 0);
  }

  return result;
}

uint64_t sub_101015130()
{
  v43 = v0;
  if (v0[22])
  {
    v1 = v0[24];
    v2 = v0[6];
    Strong = swift_weakLoadStrong();
    v0[25] = Strong;
    if (Strong)
    {
      v4 = Strong;
      v5 = qword_101695148;

      if (v5 != -1)
      {
        swift_once();
      }

      v6 = type metadata accessor for Logger();
      sub_1000076D4(v6, qword_1016C32C0);

      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v7, v8))
      {
        v9 = v0[23];
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v42 = v11;
        *v10 = 136315138;

        v12 = sub_1000136BC(v9, v1, &v42);

        *(v10 + 4) = v12;
        _os_log_impl(&_mh_execute_header, v7, v8, "Getting a notification with name %s", v10, 0xCu);
        sub_100007BAC(v11);
      }

      if (v0[23] == 0xD00000000000001ELL && v0[24] == 0x800000010134A2A0 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v0[23] == 0xD000000000000020 && v0[24] == 0x800000010134A2F0 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v13 = Logger.logObject.getter();
        v14 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v13, v14))
        {
          v15 = swift_slowAlloc();
          *v15 = 0;
          _os_log_impl(&_mh_execute_header, v13, v14, "Onboarding is about to appear, so flush the queue of any pending serial number lookups", v15, 2u);
        }

        v0[26] = *(v4 + 136);
        v16 = *(&async function pointer to dispatch thunk of WorkItemQueue.flushQueue() + 1);
        v41 = (&async function pointer to dispatch thunk of WorkItemQueue.flushQueue() + async function pointer to dispatch thunk of WorkItemQueue.flushQueue());

        v17 = swift_task_alloc();
        v0[27] = v17;
        *v17 = v0;
        v17[1] = sub_101015700;

        return v41();
      }

      else
      {
        v27 = Logger.logObject.getter();
        v28 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          *v29 = 0;
          _os_log_impl(&_mh_execute_header, v27, v28, "Onboarding is about to disappear, so no need to flush any pending serial number lookups", v29, 2u);
        }

        v30 = v0[24];
        v31 = v0[25];
        v32 = v0[22];
        v33 = v0[23];
        v35 = v0[7];
        v34 = v0[8];
        v36 = *(v31 + 136);
        type metadata accessor for WorkItemQueue.WorkItem();
        v37 = swift_allocObject();
        v37[2] = v33;
        v37[3] = v30;
        v37[4] = v31;
        v37[5] = v35;
        v38 = swift_allocObject();
        v38[2] = v32;
        v38[3] = v33;
        v38[4] = v30;
        v38[5] = v31;
        swift_retain_n();

        UUID.init()();
        WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
        dispatch thunk of WorkItemQueue.enqueue(_:)();

        v39 = swift_task_alloc();
        v0[21] = v39;
        *v39 = v0;
        v39[1] = sub_101015018;
        v40 = v0[12];

        return sub_101012F80(0, 0);
      }
    }
  }

  v20 = v0[19];
  v19 = v0[20];
  v22 = v0[17];
  v21 = v0[18];
  v23 = v0[15];
  v24 = v0[9];
  v25 = v0[8];
  (*(v0[11] + 8))(v0[12], v0[10]);
  (*(v20 + 8))(v19, v21);

  v26 = v0[1];

  return v26();
}

uint64_t sub_101015700()
{
  v1 = *(*v0 + 216);
  v2 = *(*v0 + 208);
  v4 = *v0;

  return _swift_task_switch(sub_101015818, 0, 0);
}

uint64_t sub_101015818()
{
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[22];
  v4 = v0[23];
  v6 = v0[7];
  v5 = v0[8];
  v7 = *(v2 + 136);
  type metadata accessor for WorkItemQueue.WorkItem();
  v8 = swift_allocObject();
  v8[2] = v4;
  v8[3] = v1;
  v8[4] = v2;
  v8[5] = v6;
  v9 = swift_allocObject();
  v9[2] = v3;
  v9[3] = v4;
  v9[4] = v1;
  v9[5] = v2;
  swift_retain_n();

  UUID.init()();
  WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
  dispatch thunk of WorkItemQueue.enqueue(_:)();

  v10 = swift_task_alloc();
  v0[21] = v10;
  *v10 = v0;
  v10[1] = sub_101015018;
  v11 = v0[12];

  return sub_101012F80(0, 0);
}

uint64_t sub_1010159DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_101015A00, 0, 0);
}

uint64_t sub_101015A00()
{
  v42 = v0;
  v1 = v0[3];
  v2 = v0[2] == 0xD00000000000001ELL && 0x800000010134A2A0 == v1;
  if (v2 || (v3 = v0[3], (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    if (qword_101695148 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000076D4(v4, qword_1016C32C0);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "FindMy onboarding started", v7, 2u);
    }

    v8 = swift_task_alloc();
    v0[5] = v8;
    *v8 = v0;
    v8[1] = sub_10095D224;
    v9 = v0[4];

    return sub_101024564();
  }

  else if (v0[2] == 0xD000000000000021 && 0x800000010134A2C0 == v1 || (v11 = v0[3], (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    if (qword_101695148 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_1000076D4(v12, qword_1016C32C0);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "FindMy onboarding ended", v15, 2u);
    }

    v16 = swift_task_alloc();
    v0[6] = v16;
    *v16 = v0;
    v16[1] = sub_101016110;
    v17 = v0[4];

    return sub_1010248C4();
  }

  else if (v0[2] == 0xD000000000000020 && 0x800000010134A2F0 == v1 || (v18 = v0[3], (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    if (qword_101695148 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_1000076D4(v19, qword_1016C32C0);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "PNP onboarding started", v22, 2u);
    }

    v23 = swift_task_alloc();
    v0[7] = v23;
    *v23 = v0;
    v23[1] = sub_101016208;
    v24 = v0[4];

    return sub_101024C20();
  }

  else if (v0[2] == 0xD000000000000023 && 0x800000010134A320 == v1 || (v25 = v0[3], (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    if (qword_101695148 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_1000076D4(v26, qword_1016C32C0);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "PNP onboarding stopped", v29, 2u);
    }

    v30 = swift_task_alloc();
    v0[8] = v30;
    *v30 = v0;
    v30[1] = sub_101016300;
    v31 = v0[4];

    return sub_101024F80();
  }

  else
  {
    if (qword_101695148 != -1)
    {
      swift_once();
    }

    v32 = v0[3];
    v33 = type metadata accessor for Logger();
    sub_1000076D4(v33, qword_1016C32C0);

    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v37 = v0[2];
      v36 = v0[3];
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v41 = v39;
      *v38 = 136315138;
      *(v38 + 4) = sub_1000136BC(v37, v36, &v41);
      _os_log_impl(&_mh_execute_header, v34, v35, "Received a notification %s that can't be handled", v38, 0xCu);
      sub_100007BAC(v39);
    }

    v40 = v0[1];

    return v40();
  }
}

uint64_t sub_101016110()
{
  v1 = *(*v0 + 48);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_101016208()
{
  v1 = *(*v0 + 56);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_101016300()
{
  v1 = *(*v0 + 64);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1010163F8(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_100014744;

  return sub_101017BC8(a1, a2 & 1, a4, a5);
}

uint64_t sub_1010164B8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for CentralManager.State();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();

  return _swift_task_switch(sub_1010165F0, v2, 0);
}

uint64_t sub_1010165F0()
{
  v28 = v0;
  if (qword_101695148 != -1)
  {
    swift_once();
  }

  v1 = v0[11];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[3];
  v5 = type metadata accessor for Logger();
  v0[12] = sub_1000076D4(v5, qword_1016C32C0);
  v6 = *(v2 + 16);
  v0[13] = v6;
  v0[14] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v3);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[11];
  v12 = v0[8];
  v11 = v0[9];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v27 = v26;
    *v13 = 141558275;
    *(v13 + 4) = 1752392040;
    *(v13 + 12) = 2081;
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v25 = v8;
    v17 = *(v11 + 8);
    v17(v10, v12);
    v18 = sub_1000136BC(v14, v16, &v27);

    *(v13 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v7, v25, "Fetching lost mode alert info (onboarding) for peripheral id %{private,mask.hash}s", v13, 0x16u);
    sub_100007BAC(v26);
  }

  else
  {

    v17 = *(v11 + 8);
    v17(v10, v12);
  }

  v0[15] = v17;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "Awaiting CentralManager", v21, 2u);
  }

  v0[16] = type metadata accessor for CentralManager();
  v22 = async function pointer to static CentralManager.pairingCentralManager.getter[1];
  v23 = swift_task_alloc();
  v0[17] = v23;
  *v23 = v0;
  v23[1] = sub_101016910;

  return static CentralManager.pairingCentralManager.getter();
}

uint64_t sub_101016910(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 136);
  v6 = *v2;
  *(v4 + 144) = a1;
  *(v4 + 152) = v1;

  v7 = *(v3 + 32);
  if (v1)
  {
    v8 = sub_1010175B8;
  }

  else
  {
    v8 = sub_101016A44;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_101016A44()
{
  (*(v0[6] + 104))(v0[7], enum case for CentralManager.State.poweredOn(_:), v0[5]);
  v1 = async function pointer to CentralManagerProtocol.await(state:)[1];
  v2 = swift_task_alloc();
  v0[20] = v2;
  v3 = sub_101028238(&unk_1016C1160, 255, &type metadata accessor for CentralManager);
  *v2 = v0;
  v2[1] = sub_101016B44;
  v4 = v0[18];
  v5 = v0[16];
  v6 = v0[7];

  return CentralManagerProtocol.await(state:)(v6, v5, v3);
}

uint64_t sub_101016B44()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v4 = *v1;
  *(*v1 + 168) = v0;

  v5 = v2[7];
  v6 = v2[6];
  v7 = v2[5];
  v8 = v2[4];
  (*(v6 + 8))(v5, v7);
  if (v0)
  {
    v9 = sub_101017730;
  }

  else
  {
    v9 = sub_101016CC0;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_101016CC0()
{
  v1 = v0[12];
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "CentralManager powered on", v4, 2u);
  }

  v5 = v0[8];
  v6 = v0[3];

  sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
  v7 = *(type metadata accessor for UUID() - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  v0[22] = v10;
  *(v10 + 16) = xmmword_101385D80;
  Identifier.id.getter();
  v11 = *(&async function pointer to dispatch thunk of CentralManager.retrievePeripherals(identifiers:) + 1);
  v15 = (&async function pointer to dispatch thunk of CentralManager.retrievePeripherals(identifiers:) + async function pointer to dispatch thunk of CentralManager.retrievePeripherals(identifiers:));
  v12 = swift_task_alloc();
  v0[23] = v12;
  *v12 = v0;
  v12[1] = sub_101016E88;
  v13 = v0[18];

  return v15(v10);
}

uint64_t sub_101016E88(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 184);
  v10 = *v2;
  v3[24] = a1;
  v3[25] = v1;

  if (v1)
  {
    v5 = v3[4];
    v6 = sub_1010178B0;
  }

  else
  {
    v7 = v3[22];
    v8 = v3[4];

    v6 = sub_101016FB0;
    v5 = v8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_101016FB0()
{
  v44 = v0;
  v1 = v0[24];
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v7 = v0[24];
    }

    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_12:
    v8 = v0[24];
    v10 = v0[13];
    v9 = v0[14];
    v11 = v0[12];
    v12 = v0[10];
    v13 = v0[8];
    v14 = v0[3];

    v10(v12, v14, v13);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    v17 = os_log_type_enabled(v15, v16);
    v18 = v0[15];
    v20 = v0[9];
    v19 = v0[10];
    v21 = v0[8];
    if (v17)
    {
      v42 = v0[15];
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v43 = v23;
      *v22 = 141558275;
      *(v22 + 4) = 1752392040;
      *(v22 + 12) = 2081;
      sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00);
      v24 = dispatch thunk of CustomStringConvertible.description.getter();
      v26 = v25;
      v42(v19, v21);
      v27 = sub_1000136BC(v24, v26, &v43);

      *(v22 + 14) = v27;
      _os_log_impl(&_mh_execute_header, v15, v16, "No peripheral available for id %{private,mask.hash}s", v22, 0x16u);
      sub_100007BAC(v23);
    }

    else
    {

      v18(v19, v21);
    }

    v28 = v0[18];
    sub_10102796C();
    swift_allocError();
    *v29 = 5;
    swift_willThrow();

    v30 = v0[12];
    swift_errorRetain();
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v33 = 138412290;
      swift_errorRetain();
      v35 = _swift_stdlib_bridgeErrorToNSError();
      *(v33 + 4) = v35;
      *v34 = v35;
      _os_log_impl(&_mh_execute_header, v31, v32, "Failed to fetch lost mode info with error %@", v33, 0xCu);
      sub_10000B3A8(v34, &qword_10169BB30, &unk_10138B3C0);
    }

    v37 = v0[10];
    v36 = v0[11];
    v38 = v0[7];

    swift_willThrow();

    v39 = v0[1];

    return v39();
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v40 = v0[24];
    v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v41 = v0[24];
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(v0[24] + 32);
  }

  v0[26] = v3;

  v4 = swift_task_alloc();
  v0[27] = v4;
  *v4 = v0;
  v4[1] = sub_1010173F4;
  v5 = v0[4];
  v6 = v0[2];

  return sub_10101E940(v6, v3);
}

uint64_t sub_1010173F4()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v4 = *v1;
  *(*v1 + 224) = v0;

  v5 = *(v2 + 32);
  if (v0)
  {
    v6 = sub_101017A3C;
  }

  else
  {
    v6 = sub_101017520;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_101017520()
{
  v1 = v0[26];
  v2 = v0[18];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[7];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1010175B8()
{
  v1 = v0[19];
  v2 = v0[12];
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to fetch lost mode info with error %@", v5, 0xCu);
    sub_10000B3A8(v6, &qword_10169BB30, &unk_10138B3C0);
  }

  v9 = v0[10];
  v8 = v0[11];
  v10 = v0[7];

  swift_willThrow();

  v11 = v0[1];

  return v11();
}

uint64_t sub_101017730()
{
  v1 = v0[18];

  v2 = v0[21];
  v3 = v0[12];
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to fetch lost mode info with error %@", v6, 0xCu);
    sub_10000B3A8(v7, &qword_10169BB30, &unk_10138B3C0);
  }

  v10 = v0[10];
  v9 = v0[11];
  v11 = v0[7];

  swift_willThrow();

  v12 = v0[1];

  return v12();
}

uint64_t sub_1010178B0()
{
  v1 = v0[22];
  v2 = v0[18];

  v3 = v0[25];
  v4 = v0[12];
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to fetch lost mode info with error %@", v7, 0xCu);
    sub_10000B3A8(v8, &qword_10169BB30, &unk_10138B3C0);
  }

  v11 = v0[10];
  v10 = v0[11];
  v12 = v0[7];

  swift_willThrow();

  v13 = v0[1];

  return v13();
}

uint64_t sub_101017A3C()
{
  v1 = v0[26];
  v2 = v0[18];

  v3 = v0[28];
  v4 = v0[12];
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to fetch lost mode info with error %@", v7, 0xCu);
    sub_10000B3A8(v8, &qword_10169BB30, &unk_10138B3C0);
  }

  v11 = v0[10];
  v10 = v0[11];
  v12 = v0[7];

  swift_willThrow();

  v13 = v0[1];

  return v13();
}

uint64_t sub_101017BC8(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 24) = a3;
  *(v5 + 32) = a4;
  *(v5 + 40) = a2;
  *(v5 + 16) = a1;
  return _swift_task_switch(sub_101017BF0, v4, 0);
}

uint64_t sub_101017BF0()
{
  v22 = v0;
  if (*(v0 + 40))
  {
    v1 = *(v0 + 16);
    if (qword_101695148 != -1)
    {
      swift_once();
      v1 = *(v0 + 16);
    }

    v2 = *(v0 + 32);
    v3 = type metadata accessor for Logger();
    sub_1000076D4(v3, qword_1016C32C0);

    sub_100B21C10(v1, 1);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    sub_1000BB584(v1, 1);
    if (os_log_type_enabled(v4, v5))
    {
      v7 = *(v0 + 24);
      v6 = *(v0 + 32);
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v21 = v10;
      *v8 = 136446466;
      *(v8 + 4) = sub_1000136BC(v7, v6, &v21);
      *(v8 + 12) = 2114;
      swift_errorRetain();
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 14) = v11;
      *v9 = v11;
      _os_log_impl(&_mh_execute_header, v4, v5, "Notification task with name %{public}s failed with error %{public}@", v8, 0x16u);
      sub_10000B3A8(v9, &qword_10169BB30, &unk_10138B3C0);

      sub_100007BAC(v10);

LABEL_10:
    }
  }

  else
  {
    if (qword_101695148 != -1)
    {
      swift_once();
    }

    v12 = *(v0 + 32);
    v13 = type metadata accessor for Logger();
    sub_1000076D4(v13, qword_1016C32C0);

    v4 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v4, v14))
    {
      v16 = *(v0 + 24);
      v15 = *(v0 + 32);
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v21 = v18;
      *v17 = 136446210;
      *(v17 + 4) = sub_1000136BC(v16, v15, &v21);
      _os_log_impl(&_mh_execute_header, v4, v14, "Notification task with name %{public}s succeeded", v17, 0xCu);
      sub_100007BAC(v18);

      goto LABEL_10;
    }
  }

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_101017F08()
{
  v1[2] = v0;
  v1[3] = *v0;
  v2 = *(*(sub_1000BC4D4(&qword_101698C00, &qword_10138B570) - 8) + 64) + 15;
  v1[4] = swift_task_alloc();
  v3 = async function pointer to daemon.getter[1];
  v4 = swift_task_alloc();
  v1[5] = v4;
  *v4 = v1;
  v4[1] = sub_101017FFC;

  return daemon.getter();
}

uint64_t sub_101017FFC(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 40);
  v12 = *v1;
  *(v3 + 48) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 56) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for PencilPairingService(0);
  v9 = sub_101028238(&qword_1016AA400, 255, &type metadata accessor for Daemon);
  v10 = sub_101028238(&qword_10169A090, 255, type metadata accessor for PencilPairingService);
  *v6 = v12;
  v6[1] = sub_1010181E0;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1010181E0(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 56);
  v7 = *v2;

  v8 = *(v4 + 48);
  v9 = *(v4 + 16);
  if (v1)
  {

    v10 = sub_1010184A0;
  }

  else
  {

    *(v5 + 64) = a1;
    v10 = sub_101018348;
  }

  return _swift_task_switch(v10, v9, 0);
}

uint64_t sub_101018348()
{
  v1 = v0[8];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[2];
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v6;
  v7[5] = v1;
  v7[6] = v3;

  sub_1008CE048(0, 0, v2, &unk_1013F7FC8, v7);

  sub_10000B3A8(v2, &qword_101698C00, &qword_10138B570);
  v8 = v0[4];

  v9 = v0[1];

  return v9();
}

uint64_t sub_1010184A0()
{
  if (qword_101695148 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_1016C32C0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "No local findable pairing service to monitor!", v4, 2u);
  }

  v5 = *(v0 + 32);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1010185BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  v7 = *(*(type metadata accessor for UUID() - 8) + 64) + 15;
  v6[8] = swift_task_alloc();
  v8 = sub_1000BC4D4(&qword_10169A098, &unk_101393410);
  v6[9] = v8;
  v9 = *(v8 - 8);
  v6[10] = v9;
  v6[11] = *(v9 + 64);
  v6[12] = swift_task_alloc();
  v6[13] = swift_task_alloc();
  v10 = *(*(sub_1000BC4D4(&qword_10169A070, &qword_1013933F8) - 8) + 64) + 15;
  v6[14] = swift_task_alloc();
  v11 = sub_1000BC4D4(&unk_10169A080, &qword_1013E8BC0);
  v6[15] = v11;
  v12 = *(v11 - 8);
  v6[16] = v12;
  v13 = *(v12 + 64) + 15;
  v6[17] = swift_task_alloc();
  v14 = sub_1000BC4D4(&qword_10169A078, &unk_101393400);
  v6[18] = v14;
  v15 = *(v14 - 8);
  v6[19] = v15;
  v16 = *(v15 + 64) + 15;
  v6[20] = swift_task_alloc();

  return _swift_task_switch(sub_1010187D4, 0, 0);
}

uint64_t sub_1010187D4()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[21] = Strong;
  if (Strong)
  {
    v3 = v0[6];

    return _swift_task_switch(sub_1010188E4, v3, 0);
  }

  else
  {
    v4 = v0[20];
    v5 = v0[17];
    v7 = v0[13];
    v6 = v0[14];
    v8 = v0[12];
    v9 = v0[8];

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_1010188E4()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 48);
  sub_100D7BE70();

  return _swift_task_switch(sub_101018950, 0, 0);
}

uint64_t sub_101018950()
{
  v1 = v0[20];
  v3 = v0[16];
  v2 = v0[17];
  v4 = v0[15];
  AsyncStream.makeAsyncIterator()();
  (*(v3 + 8))(v2, v4);
  v5 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v6 = swift_task_alloc();
  v0[22] = v6;
  *v6 = v0;
  v6[1] = sub_101018A2C;
  v7 = v0[20];
  v8 = v0[18];
  v9 = v0[14];

  return AsyncStream.Iterator.next(isolation:)(v9, 0, 0, v8);
}

uint64_t sub_101018A2C()
{
  v1 = *(*v0 + 176);
  v3 = *v0;

  return _swift_task_switch(sub_101018B28, 0, 0);
}

uint64_t sub_101018B28()
{
  v1 = v0[14];
  v2 = v0[9];
  if ((*(v0[10] + 48))(v1, 1, v2) == 1)
  {
    v3 = v0[21];
    (*(v0[19] + 8))(v0[20], v0[18]);

    v4 = v0[20];
    v5 = v0[17];
    v7 = v0[13];
    v6 = v0[14];
    v8 = v0[12];
    v9 = v0[8];

    v10 = v0[1];

    return v10();
  }

  else
  {
    v12 = v0[13];
    v13 = *(v2 + 48);
    *v12 = *v1;
    sub_1000D2AD8(v1 + v13, v12 + v13, &qword_10169A068, &qword_1013933F0);
    if (qword_101695148 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    v0[23] = sub_1000076D4(v14, qword_1016C32C0);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Waiting for queue to be empty", v17, 2u);
    }

    v18 = v0[21];

    v0[24] = *(v18 + 136);
    v19 = *(&async function pointer to dispatch thunk of WorkItemQueue.awaitEmpty() + 1);
    v21 = (&async function pointer to dispatch thunk of WorkItemQueue.awaitEmpty() + async function pointer to dispatch thunk of WorkItemQueue.awaitEmpty());

    v20 = swift_task_alloc();
    v0[25] = v20;
    *v20 = v0;
    v20[1] = sub_101018D98;

    return v21();
  }
}

uint64_t sub_101018D98()
{
  v1 = *(*v0 + 200);
  v2 = *(*v0 + 192);
  v4 = *v0;

  return _swift_task_switch(sub_101018EB0, 0, 0);
}

uint64_t sub_101018EB0()
{
  v1 = v0[23];
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Queue is now empty", v4, 2u);
  }

  v5 = v0[21];
  v7 = v0[12];
  v6 = v0[13];
  v8 = v0[10];
  v9 = v0[11];
  v10 = v0[7];
  v11 = v0[8];

  v21 = *(v5 + 136);
  type metadata accessor for WorkItemQueue.WorkItem();
  sub_1000D2A70(v6, v7, &qword_10169A098, &unk_101393410);
  v12 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v13 = (v9 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  sub_1000D2AD8(v7, v14 + v12, &qword_10169A098, &unk_101393410);
  *(v14 + v13) = v5;
  *(v14 + ((v13 + 15) & 0xFFFFFFFFFFFFFFF8)) = v10;
  swift_retain_n();
  UUID.init()();
  WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
  dispatch thunk of WorkItemQueue.enqueue(_:)();

  sub_10000B3A8(v6, &qword_10169A098, &unk_101393410);
  v15 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v16 = swift_task_alloc();
  v0[22] = v16;
  *v16 = v0;
  v16[1] = sub_101018A2C;
  v17 = v0[20];
  v18 = v0[18];
  v19 = v0[14];

  return AsyncStream.Iterator.next(isolation:)(v19, 0, 0, v18);
}

uint64_t sub_101019100(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v6 = type metadata accessor for PencilPairingService.PeripheralDiscovery(0);
  v2[9] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v8 = sub_1000BC4D4(&qword_10169A098, &unk_101393410);
  v2[12] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v2[13] = swift_task_alloc();
  v10 = sub_1000BC4D4(&qword_10169A068, &qword_1013933F0);
  v2[14] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_1010192A4, 0, 0);
}

uint64_t sub_1010192A4()
{
  v64 = v0;
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[13];
  v4 = v0[12];
  sub_1000D2A70(v0[2], v3, &qword_10169A098, &unk_101393410);
  v5 = *v3;

  sub_1000D2AD8(v3 + *(v4 + 48), v2, &qword_10169A068, &qword_1013933F0);
  sub_1000D2A70(v2, v1, &qword_10169A068, &qword_1013933F0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v7 = v0[15];
  if (EnumCaseMultiPayload == 1)
  {
    v8 = *v7;
    if (qword_101695148 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_1000076D4(v9, qword_1016C32C0);
    swift_errorRetain();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      swift_errorRetain();
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 4) = v14;
      *v13 = v14;
      _os_log_impl(&_mh_execute_header, v10, v11, "Error in monitoring pencil pairing service %@", v12, 0xCu);
      sub_10000B3A8(v13, &qword_10169BB30, &unk_10138B3C0);
    }

    else
    {
    }

    v44 = v0[16];
LABEL_13:
    sub_10000B3A8(v44, &qword_10169A068, &qword_1013933F0);
    v46 = v0[15];
    v45 = v0[16];
    v47 = v0[13];
    v49 = v0[10];
    v48 = v0[11];
    v51 = v0[7];
    v50 = v0[8];
    v52 = v0[6];

    v53 = v0[1];

    return v53();
  }

  v15 = v0[10];
  v16 = v0[11];
  v17 = v0[9];
  v18 = v0[5];
  sub_101028108(v7, v16, type metadata accessor for PencilPairingService.PeripheralDiscovery);
  sub_101028170(v16, v15, type metadata accessor for PencilPairingService.PeripheralDiscovery);
  v19 = swift_getEnumCaseMultiPayload();
  v20 = *(v18 + 32);
  v21 = v0[10];
  v22 = v0[4];
  if (v19 == 1)
  {
    v20(v0[7], v21, v22);
    if (qword_101695148 != -1)
    {
      swift_once();
    }

    v23 = v0[6];
    v24 = v0[7];
    v25 = v0[4];
    v26 = v0[5];
    v27 = type metadata accessor for Logger();
    sub_1000076D4(v27, qword_1016C32C0);
    (*(v26 + 16))(v23, v24, v25);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    v30 = os_log_type_enabled(v28, v29);
    v31 = v0[16];
    v32 = v0[11];
    v33 = v0[6];
    v34 = v0[7];
    v36 = v0[4];
    v35 = v0[5];
    if (v30)
    {
      v62 = v0[11];
      v37 = swift_slowAlloc();
      v61 = v34;
      v38 = swift_slowAlloc();
      v63 = v38;
      *v37 = 141558275;
      *(v37 + 4) = 1752392040;
      *(v37 + 12) = 2081;
      sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00);
      v59 = v29;
      v39 = dispatch thunk of CustomStringConvertible.description.getter();
      v60 = v31;
      v41 = v40;
      v42 = *(v35 + 8);
      v42(v33, v36);
      v43 = sub_1000136BC(v39, v41, &v63);

      *(v37 + 14) = v43;
      _os_log_impl(&_mh_execute_header, v28, v59, "Detached accessory with id %{private,mask.hash}s. Nothing to do here.", v37, 0x16u);
      sub_100007BAC(v38);

      v42(v61, v36);
      sub_1010281D8(v62, type metadata accessor for PencilPairingService.PeripheralDiscovery);
      v44 = v60;
    }

    else
    {

      v58 = *(v35 + 8);
      v58(v33, v36);
      v58(v34, v36);
      sub_1010281D8(v32, type metadata accessor for PencilPairingService.PeripheralDiscovery);
      v44 = v31;
    }

    goto LABEL_13;
  }

  v20(v0[8], v21, v22);
  v55 = swift_task_alloc();
  v0[17] = v55;
  *v55 = v0;
  v55[1] = sub_1010198C0;
  v56 = v0[8];
  v57 = v0[3];

  return sub_101019DE0(v56);
}

uint64_t sub_1010198C0()
{
  v1 = *(*v0 + 136);
  v3 = *v0;

  return _swift_task_switch(sub_1010199BC, 0, 0);
}

uint64_t sub_1010199BC()
{
  v1 = v0[16];
  v2 = v0[11];
  (*(v0[5] + 8))(v0[8], v0[4]);
  sub_1010281D8(v2, type metadata accessor for PencilPairingService.PeripheralDiscovery);
  sub_10000B3A8(v1, &qword_10169A068, &qword_1013933F0);
  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[13];
  v7 = v0[10];
  v6 = v0[11];
  v9 = v0[7];
  v8 = v0[8];
  v10 = v0[6];

  v11 = v0[1];

  return v11();
}

uint64_t sub_101019AD4(uint64_t a1, char a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100014650;

  return sub_101019B7C(a1, a2 & 1);
}

uint64_t sub_101019B7C(uint64_t a1, char a2)
{
  *(v3 + 24) = a2;
  *(v3 + 16) = a1;
  return _swift_task_switch(sub_101019BA0, v2, 0);
}

uint64_t sub_101019BA0()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 16);
    if (qword_101695148 != -1)
    {
      swift_once();
      v1 = *(v0 + 16);
    }

    v2 = type metadata accessor for Logger();
    sub_1000076D4(v2, qword_1016C32C0);
    swift_errorRetain();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    sub_1000BB584(v1, 1);
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *v5 = 138477827;
      swift_errorRetain();
      v7 = _swift_stdlib_bridgeErrorToNSError();
      *(v5 + 4) = v7;
      *v6 = v7;
      _os_log_impl(&_mh_execute_header, v3, v4, "Discovery failed with error %{private}@", v5, 0xCu);
      sub_10000B3A8(v6, &qword_10169BB30, &unk_10138B3C0);

LABEL_10:
    }
  }

  else
  {
    if (qword_101695148 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_1000076D4(v8, qword_1016C32C0);
    v3 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v3, v9, "Discovery succeeded", v10, 2u);
      goto LABEL_10;
    }
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_101019DE0(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = *(*(type metadata accessor for LostModeAlertInfo() - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v4 = type metadata accessor for CentralManager.State();
  v2[9] = v4;
  v5 = *(v4 - 8);
  v2[10] = v5;
  v6 = *(v5 + 64) + 15;
  v2[11] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v2[12] = v7;
  v8 = *(v7 - 8);
  v2[13] = v8;
  v2[14] = *(v8 + 64);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v9 = sub_1000BC4D4(&qword_1016A9A30, &unk_1013BD120);
  v2[21] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v2[22] = swift_task_alloc();
  v11 = type metadata accessor for LocalFindableAccessoryRecord();
  v2[23] = v11;
  v12 = *(v11 - 8);
  v2[24] = v12;
  v13 = *(v12 + 64) + 15;
  v2[25] = swift_task_alloc();
  v14 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v2[26] = v14;
  v15 = *(v14 - 8);
  v2[27] = v15;
  v16 = *(v15 + 64) + 15;
  v2[28] = swift_task_alloc();

  return _swift_task_switch(sub_10101A06C, v1, 0);
}

uint64_t sub_10101A06C()
{
  v22 = v0;
  if (qword_101695148 != -1)
  {
    swift_once();
  }

  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[26];
  v4 = v0[6];
  v5 = type metadata accessor for Logger();
  v0[29] = sub_1000076D4(v5, qword_1016C32C0);
  (*(v2 + 16))(v1, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[27];
  v9 = v0[28];
  v11 = v0[26];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v21 = v13;
    *v12 = 141558275;
    *(v12 + 4) = 1752392040;
    *(v12 + 12) = 2081;
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_1000136BC(v14, v16, &v21);

    *(v12 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "Detected local findable attach with peripheral id: %{private,mask.hash}s", v12, 0x16u);
    sub_100007BAC(v13);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v18 = async function pointer to daemon.getter[1];
  v19 = swift_task_alloc();
  v0[30] = v19;
  *v19 = v0;
  v19[1] = sub_10101A2EC;

  return daemon.getter();
}

uint64_t sub_10101A2EC(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 240);
  v12 = *v1;
  v3[31] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[32] = v6;
  v7 = type metadata accessor for Daemon();
  v3[33] = v7;
  UnlockService = type metadata accessor for FirstUnlockService();
  v9 = sub_101028238(&qword_1016AA400, 255, &type metadata accessor for Daemon);
  v3[34] = v9;
  v10 = sub_101028238(&qword_10169BD10, 255, &type metadata accessor for FirstUnlockService);
  *v6 = v12;
  v6[1] = sub_10101A4E0;

  return ActorServiceDaemon.getService<A>()(v7, UnlockService, v9, v10);
}

uint64_t sub_10101A4E0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 256);
  v5 = *v2;
  *(*v2 + 280) = a1;

  v6 = *(v3 + 248);
  v7 = *(v3 + 56);
  if (v1)
  {

    v8 = sub_10101D754;
  }

  else
  {

    v8 = sub_10101A644;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_10101A644()
{
  v1 = v0[29];
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Waiting for first unlock", v4, 2u);
  }

  v5 = *(&async function pointer to dispatch thunk of FirstUnlockService.waitForFirstUnlock() + 1);
  v9 = (&async function pointer to dispatch thunk of FirstUnlockService.waitForFirstUnlock() + async function pointer to dispatch thunk of FirstUnlockService.waitForFirstUnlock());
  v6 = swift_task_alloc();
  v0[36] = v6;
  *v6 = v0;
  v6[1] = sub_10101A760;
  v7 = v0[35];

  return v9();
}

uint64_t sub_10101A760()
{
  v1 = *(*v0 + 288);
  v2 = *(*v0 + 56);
  v4 = *v0;

  return _swift_task_switch(sub_10101A870, v2, 0);
}

uint64_t sub_10101A870()
{
  v1 = v0[29];
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Device is now unlocked", v4, 2u);
  }

  v5 = v0[7];

  if (*(v5 + 145) & 1) != 0 || (v6 = v0[7], (*(v6 + 146)))
  {
    v7 = v0[29];
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    v10 = os_log_type_enabled(v8, v9);
    v11 = v0[35];
    if (!v10)
    {
LABEL_8:

      v14 = v0[28];
      v15 = v0[25];
      v16 = v0[22];
      v18 = v0[19];
      v17 = v0[20];
      v20 = v0[17];
      v19 = v0[18];
      v22 = v0[15];
      v21 = v0[16];
      v23 = v0[11];
      v33 = v0[8];

      v24 = v0[1];

      return v24();
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = "Is currently going through PNP onboarding. Early return";
LABEL_7:
    _os_log_impl(&_mh_execute_header, v8, v9, v13, v12, 2u);

    goto LABEL_8;
  }

  v26 = v0[29];
  v27 = *(v6 + 144);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  v28 = os_log_type_enabled(v8, v9);
  if (v27)
  {
    v29 = v0[35];
    if (!v28)
    {
      goto LABEL_8;
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = "Is currently presenting lost mode alert. Early return.";
    goto LABEL_7;
  }

  if (v28)
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Attempting to check if there is a local beacon identifier saved.", v30, 2u);
  }

  v31 = async function pointer to daemon.getter[1];
  v32 = swift_task_alloc();
  v0[37] = v32;
  *v32 = v0;
  v32[1] = sub_10101AB84;

  return daemon.getter();
}

uint64_t sub_10101AB84(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 296);
  v5 = *v1;
  v3[38] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[39] = v7;
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_101028238(&qword_101698D20, 255, type metadata accessor for BeaconStoreActor);
  *v7 = v5;
  v7[1] = sub_10101AD3C;
  v10 = v3[34];
  v11 = v3[33];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_10101AD3C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 312);
  v5 = *v2;
  *(*v2 + 320) = a1;

  v6 = *(v3 + 304);
  v7 = *(v3 + 56);
  if (v1)
  {

    v8 = sub_10101D8B4;
  }

  else
  {

    v8 = sub_10101AEA0;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_10101AEA0()
{
  v1 = v0[40];
  v2 = v0[26];
  v3 = v0[20];
  v4 = v0[6];

  Identifier.id.getter();

  return _swift_task_switch(sub_10101AF2C, v1, 0);
}

uint64_t sub_10101AF2C()
{
  v1 = v0[40];
  v2 = v0[19];
  v3 = v0[13];
  v4 = v0[12];
  (*(v3 + 16))(v2, v0[20], v4);
  v5 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = swift_allocObject();
  v0[41] = v6;
  *(v6 + 16) = v1;
  (*(v3 + 32))(v6 + v5, v2, v4);
  v7 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v8 = swift_task_alloc();
  v0[42] = v8;
  *v8 = v0;
  v8[1] = sub_10101B08C;
  v10 = v0[21];
  v9 = v0[22];

  return unsafeBlocking<A>(context:_:)(v9, 0xD000000000000010, 0x800000010134A8C0, sub_101027C84, v6, v10);
}

uint64_t sub_10101B08C()
{
  v1 = *(*v0 + 336);
  v2 = *(*v0 + 328);
  v3 = *(*v0 + 160);
  v4 = *(*v0 + 104);
  v5 = *(*v0 + 96);
  v6 = *(*v0 + 56);
  v8 = *v0;

  (*(v4 + 8))(v3, v5);

  return _swift_task_switch(sub_10101B21C, v6, 0);
}

uint64_t sub_10101B21C()
{
  v1 = v0[40];
  v2 = (*(v0[24] + 48))(v0[22], 1, v0[23]);

  if (v2 == 1)
  {
    sub_10000B3A8(v0[22], &qword_1016A9A30, &unk_1013BD120);
    v0[45] = v0[40];
    v3 = v0[29];
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Awaiting CentralManager", v6, 2u);
    }

    v0[46] = type metadata accessor for CentralManager();
    v7 = async function pointer to static CentralManager.pairingCentralManager.getter[1];
    v8 = swift_task_alloc();
    v0[47] = v8;
    *v8 = v0;
    v8[1] = sub_10101B6DC;

    return static CentralManager.pairingCentralManager.getter();
  }

  else
  {
    v9 = v0[29];
    sub_101028108(v0[22], v0[25], type metadata accessor for LocalFindableAccessoryRecord);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "There is a local beacon identifier saved meaning that this is owner. Disable lost mode.", v12, 2u);
    }

    v13 = swift_task_alloc();
    v0[43] = v13;
    *v13 = v0;
    v13[1] = sub_10101B48C;
    v14 = v0[25];
    v15 = v0[7];

    return sub_101021C70(v14);
  }
}

uint64_t sub_10101B48C()
{
  v2 = *v1;
  v3 = *(*v1 + 344);
  v4 = *v1;
  *(*v1 + 352) = v0;

  v5 = *(v2 + 56);
  if (v0)
  {
    v6 = sub_10101D9D0;
  }

  else
  {
    v6 = sub_10101B5B8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10101B5B8()
{
  v1 = v0[40];
  v2 = v0[35];
  v3 = v0[25];

  sub_1010281D8(v3, type metadata accessor for LocalFindableAccessoryRecord);
  v4 = v0[28];
  v5 = v0[25];
  v6 = v0[22];
  v8 = v0[19];
  v7 = v0[20];
  v10 = v0[17];
  v9 = v0[18];
  v12 = v0[15];
  v11 = v0[16];
  v13 = v0[11];
  v16 = v0[8];

  v14 = v0[1];

  return v14();
}

uint64_t sub_10101B6DC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 376);
  v6 = *v2;
  *(v4 + 384) = a1;
  *(v4 + 392) = v1;

  v7 = *(v3 + 56);
  if (v1)
  {
    v8 = sub_10101DBFC;
  }

  else
  {
    v8 = sub_10101B810;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_10101B810()
{
  (*(v0[10] + 104))(v0[11], enum case for CentralManager.State.poweredOn(_:), v0[9]);
  v1 = async function pointer to CentralManagerProtocol.await(state:)[1];
  v2 = swift_task_alloc();
  v0[50] = v2;
  v3 = sub_101028238(&unk_1016C1160, 255, &type metadata accessor for CentralManager);
  *v2 = v0;
  v2[1] = sub_10101B910;
  v4 = v0[48];
  v5 = v0[46];
  v6 = v0[11];

  return CentralManagerProtocol.await(state:)(v6, v5, v3);
}

uint64_t sub_10101B910()
{
  v2 = *v1;
  v3 = *(*v1 + 400);
  v4 = *v1;
  *(*v1 + 408) = v0;

  v5 = v2[11];
  v6 = v2[10];
  v7 = v2[9];
  v8 = v2[7];
  (*(v6 + 8))(v5, v7);
  if (v0)
  {
    v9 = sub_10101DE08;
  }

  else
  {
    v9 = sub_10101BA8C;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_10101BA8C()
{
  v1 = v0[29];
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "CentralManager powered on", v4, 2u);
  }

  v5 = v0[26];
  v6 = v0[18];
  v7 = v0[12];
  v8 = v0[13];
  v9 = v0[6];

  Identifier.id.getter();
  sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
  v10 = *(v8 + 72);
  v11 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v12 = swift_allocObject();
  v0[52] = v12;
  *(v12 + 16) = xmmword_101385D80;
  v13 = *(v8 + 16);
  v0[53] = v13;
  v0[54] = (v8 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v13(v12 + v11, v6, v7);
  v14 = *(&async function pointer to dispatch thunk of CentralManager.retrievePeripherals(identifiers:) + 1);
  v18 = (&async function pointer to dispatch thunk of CentralManager.retrievePeripherals(identifiers:) + async function pointer to dispatch thunk of CentralManager.retrievePeripherals(identifiers:));
  v15 = swift_task_alloc();
  v0[55] = v15;
  *v15 = v0;
  v15[1] = sub_10101BC40;
  v16 = v0[48];

  return v18(v12);
}

uint64_t sub_10101BC40(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 440);
  v6 = *v2;
  *(v4 + 448) = a1;
  *(v4 + 456) = v1;

  v7 = *(v3 + 416);
  v8 = *(v3 + 56);

  if (v1)
  {
    v9 = sub_10101E020;
  }

  else
  {
    v9 = sub_10101BD90;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_10101BD90()
{
  v79 = v0;
  v1 = v0[56];
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v24 = v0[56];
    }

    if (_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_3:
      if ((v1 & 0xC000000000000001) != 0)
      {
        v73 = v0[56];
        v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v74 = v0[56];
      }

      else
      {
        if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return daemon.getter();
        }

        v2 = *(v0[56] + 32);
      }

      v0[58] = v3;
      v5 = v0[53];
      v4 = v0[54];
      v6 = v0[29];
      v8 = v0[17];
      v7 = v0[18];
      v9 = v0[12];

      v5(v8, v7, v9);
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.default.getter();
      v12 = os_log_type_enabled(v10, v11);
      v13 = v0[17];
      v14 = v0[12];
      v15 = v0[13];
      if (v12)
      {
        v16 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        v78[0] = v76;
        *v16 = 141558275;
        *(v16 + 4) = 1752392040;
        *(v16 + 12) = 2081;
        sub_101028238(&qword_101696930, 255, &type metadata accessor for UUID);
        v17 = dispatch thunk of CustomStringConvertible.description.getter();
        v19 = v18;
        v20 = *(v15 + 8);
        v20(v13, v14);
        v21 = sub_1000136BC(v17, v19, v78);

        *(v16 + 14) = v21;
        _os_log_impl(&_mh_execute_header, v10, v11, "Successfully retrieved peripheral %{private,mask.hash}s from CentralManager", v16, 0x16u);
        sub_100007BAC(v76);
      }

      else
      {

        v20 = *(v15 + 8);
        v20(v13, v14);
      }

      v0[59] = v20;
      v22 = async function pointer to daemon.getter[1];
      v23 = swift_task_alloc();
      v0[60] = v23;
      *v23 = v0;
      v23[1] = sub_10101C404;

      return daemon.getter();
    }
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v25 = v0[56];
  v27 = v0[53];
  v26 = v0[54];
  v28 = v0[29];
  v29 = v0[18];
  v30 = v0[15];
  v31 = v0[12];

  v27(v30, v29, v31);
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.error.getter();
  v34 = os_log_type_enabled(v32, v33);
  v35 = v0[15];
  v36 = v0[12];
  v37 = v0[13];
  if (v34)
  {
    v38 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    v78[0] = v75;
    *v38 = 141558275;
    *(v38 + 4) = 1752392040;
    *(v38 + 12) = 2081;
    sub_101028238(&qword_101696930, 255, &type metadata accessor for UUID);
    v39 = dispatch thunk of CustomStringConvertible.description.getter();
    v41 = v40;
    v42 = *(v37 + 8);
    v42(v35, v36);
    v43 = sub_1000136BC(v39, v41, v78);

    *(v38 + 14) = v43;
    _os_log_impl(&_mh_execute_header, v32, v33, "Unable to retrieve a Peripheral for %{private,mask.hash}s", v38, 0x16u);
    sub_100007BAC(v75);
  }

  else
  {

    v42 = *(v37 + 8);
    v42(v35, v36);
  }

  v44 = v0[48];
  v45 = v0[45];
  v46 = v0[35];
  v47 = v0[18];
  v48 = v0[12];
  sub_10102796C();
  swift_allocError();
  *v49 = 5;
  swift_willThrow();

  v42(v47, v48);
  v50 = v0[29];
  swift_errorRetain();
  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v78[0] = v54;
    *v53 = 136315138;
    swift_getErrorValue();
    v56 = v0[2];
    v55 = v0[3];
    v57 = v0[4];
    v58 = Error.localizedDescription.getter();
    v60 = sub_1000136BC(v58, v59, v78);

    *(v53 + 4) = v60;
    _os_log_impl(&_mh_execute_header, v51, v52, "Found error %s with handling lost mode", v53, 0xCu);
    sub_100007BAC(v54);
  }

  else
  {
  }

  v61 = v0[28];
  v62 = v0[25];
  v63 = v0[22];
  v65 = v0[19];
  v64 = v0[20];
  v67 = v0[17];
  v66 = v0[18];
  v69 = v0[15];
  v68 = v0[16];
  v70 = v0[11];
  v77 = v0[8];

  v71 = v0[1];

  return v71();
}

uint64_t sub_10101C404(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 480);
  v5 = *v1;
  v3[61] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[62] = v7;
  v8 = type metadata accessor for PencilPairingService(0);
  v9 = sub_101028238(&qword_10169A090, 255, type metadata accessor for PencilPairingService);
  *v7 = v5;
  v7[1] = sub_10101C5BC;
  v10 = v3[34];
  v11 = v3[33];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_10101C5BC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 496);
  v5 = *v2;
  *(*v2 + 504) = a1;

  v6 = *(v3 + 488);
  v7 = *(v3 + 56);
  if (v1)
  {

    v8 = sub_10101D558;
  }

  else
  {

    v8 = sub_10101C720;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_10101C720()
{
  v1 = v0[29];
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Performing local account check", v4, 2u);
  }

  v5 = swift_task_alloc();
  v0[64] = v5;
  *v5 = v0;
  v5[1] = sub_10101C844;
  v6 = v0[63];
  v7 = v0[58];

  return sub_101013708(v7);
}

uint64_t sub_10101C844(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 512);
  v6 = *v2;
  *(v4 + 520) = v1;

  v7 = *(v4 + 56);
  if (v1)
  {
    v8 = sub_10101E258;
  }

  else
  {
    *(v4 + 584) = a1;
    v8 = sub_10101C980;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_10101C980()
{
  v1 = *(v0 + 584);
  if (v1 < 2)
  {
    v2 = *(v0 + 232);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    v5 = os_log_type_enabled(v3, v4);
    v6 = *(v0 + 504);
    v8 = *(v0 + 464);
    v7 = *(v0 + 472);
    v9 = *(v0 + 384);
    v10 = *(v0 + 360);
    v11 = *(v0 + 280);
    v12 = *(v0 + 96);
    v55 = v12;
    v56 = *(v0 + 144);
    if (v5)
    {
      v13 = swift_slowAlloc();
      v54 = v7;
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Not elligible for lost mode notification, remove", v13, 2u);

LABEL_4:

      v54(v56, v55);
LABEL_12:
      v21 = *(v0 + 224);
      v22 = *(v0 + 200);
      v23 = *(v0 + 176);
      v25 = *(v0 + 152);
      v24 = *(v0 + 160);
      v27 = *(v0 + 136);
      v26 = *(v0 + 144);
      v29 = *(v0 + 120);
      v28 = *(v0 + 128);
      v30 = *(v0 + 88);
      v57 = *(v0 + 64);

      v31 = *(v0 + 8);

      return v31();
    }

    goto LABEL_11;
  }

  if (v1 == 2)
  {
    v14 = *(v0 + 208);
    v15 = *(v0 + 128);
    v16 = *(v0 + 48);
    Identifier.id.getter();
    v17 = swift_task_alloc();
    *(v0 + 552) = v17;
    *v17 = v0;
    v17[1] = sub_10101D26C;
    v18 = *(v0 + 128);
    v19 = *(v0 + 56);

    return sub_101021C70(v18);
  }

  else
  {
    v32 = *(v0 + 232);
    v33 = *(v0 + 56);
    v34 = sub_101022DFC();
    v35 = Logger.logObject.getter();
    if (!v34)
    {
      v38 = static os_log_type_t.error.getter();
      v39 = os_log_type_enabled(v35, v38);
      v40 = *(v0 + 504);
      v41 = *(v0 + 464);
      v7 = *(v0 + 472);
      v42 = *(v0 + 384);
      v43 = *(v0 + 360);
      v44 = *(v0 + 280);
      v45 = *(v0 + 96);
      v55 = v45;
      v56 = *(v0 + 144);
      if (v39)
      {
        v46 = swift_slowAlloc();
        v54 = v7;
        *v46 = 0;
        _os_log_impl(&_mh_execute_header, v35, v38, "We have exceeded the maximum number of alerts. Return.", v46, 2u);

        goto LABEL_4;
      }

LABEL_11:
      v7(v56, v55);
      goto LABEL_12;
    }

    if (v34 == 1)
    {
      v36 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&_mh_execute_header, v35, v36, "Throttle limit not reached, continue with lookup.", v37, 2u);
      }
    }

    else
    {
      v47 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v35, v47))
      {
        v48 = swift_slowAlloc();
        *v48 = 0;
        _os_log_impl(&_mh_execute_header, v35, v47, "We have exceeded the date interval. Reset number of alerts and date of first lookup. Continue with lost mode lookup.", v48, 2u);
      }

      v49 = *(v0 + 56);

      sub_101022BF0();
    }

    v50 = swift_task_alloc();
    *(v0 + 528) = v50;
    *v50 = v0;
    v50[1] = sub_10101CE84;
    v51 = *(v0 + 464);
    v53 = *(v0 + 56);
    v52 = *(v0 + 64);

    return sub_10101E940(v52, v51);
  }
}

uint64_t sub_10101CE84()
{
  v2 = *(*v1 + 528);
  v3 = *v1;
  v3[67] = v0;

  if (v0)
  {
    v4 = v3[7];

    return _swift_task_switch(sub_10101E4A8, v4, 0);
  }

  else
  {
    v5 = swift_task_alloc();
    v3[68] = v5;
    *v5 = v3;
    v5[1] = sub_10101CFF4;
    v6 = v3[7];
    v7 = v3[8];

    return sub_1010217BC(v7);
  }
}

uint64_t sub_10101CFF4()
{
  v1 = *(*v0 + 544);
  v2 = *(*v0 + 56);
  v4 = *v0;

  return _swift_task_switch(sub_10101D104, v2, 0);
}

uint64_t sub_10101D104()
{
  v1 = v0[63];
  v2 = v0[58];
  v3 = v0[59];
  v4 = v0[48];
  v5 = v0[45];
  v6 = v0[35];
  v7 = v0[18];
  v8 = v0[12];
  v9 = v0[13];
  v10 = v0[8];

  sub_1010281D8(v10, type metadata accessor for LostModeAlertInfo);
  v3(v7, v8);
  v11 = v0[28];
  v12 = v0[25];
  v13 = v0[22];
  v15 = v0[19];
  v14 = v0[20];
  v17 = v0[17];
  v16 = v0[18];
  v19 = v0[15];
  v18 = v0[16];
  v20 = v0[11];
  v23 = v0[8];

  v21 = v0[1];

  return v21();
}

uint64_t sub_10101D26C()
{
  v2 = *v1;
  v3 = *(*v1 + 552);
  v4 = *v1;
  v2[70] = v0;

  v5 = v2[59];
  v6 = v2[16];
  v7 = v2[12];
  v8 = v2[7];
  v9 = (v2[13] + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  if (v0)
  {
    v2[72] = v9;
    v5(v6, v7);
    v10 = sub_10101E6F8;
  }

  else
  {
    v2[71] = v9;
    v5(v6, v7);
    v10 = sub_10101D418;
  }

  return _swift_task_switch(v10, v8, 0);
}

uint64_t sub_10101D418()
{
  v1 = v0[71];
  v2 = v0[63];
  v3 = v0[58];
  v4 = v0[59];
  v5 = v0[48];
  v6 = v0[45];
  v7 = v0[35];
  v8 = v0[18];
  v9 = v0[12];

  v4(v8, v9);
  v10 = v0[28];
  v11 = v0[25];
  v12 = v0[22];
  v14 = v0[19];
  v13 = v0[20];
  v16 = v0[17];
  v15 = v0[18];
  v18 = v0[15];
  v17 = v0[16];
  v19 = v0[11];
  v22 = v0[8];

  v20 = v0[1];

  return v20();
}

uint64_t sub_10101D558()
{
  v1 = v0[29];
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[59];
  v26 = v0[58];
  v6 = v0[48];
  v7 = v0[45];
  v8 = v0[35];
  v9 = v0[18];
  v10 = v0[12];
  v11 = v0[13];
  if (v4)
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "No local findable pairing service to verify FMNID!", v12, 2u);
  }

  else
  {
    v13 = v0[45];
  }

  v5(v9, v10);
  v14 = v0[28];
  v15 = v0[25];
  v16 = v0[22];
  v18 = v0[19];
  v17 = v0[20];
  v20 = v0[17];
  v19 = v0[18];
  v22 = v0[15];
  v21 = v0[16];
  v23 = v0[11];
  v27 = v0[8];

  v24 = v0[1];

  return v24();
}

uint64_t sub_10101D754()
{
  v1 = v0[29];
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "First unlock service is not available.  Bailing", v4, 2u);
  }

  v5 = v0[28];
  v6 = v0[25];
  v7 = v0[22];
  v9 = v0[19];
  v8 = v0[20];
  v11 = v0[17];
  v10 = v0[18];
  v13 = v0[15];
  v12 = v0[16];
  v14 = v0[11];
  v17 = v0[8];

  v15 = v0[1];

  return v15();
}

uint64_t sub_10101D8B4()
{
  v0[45] = 0;
  v1 = v0[29];
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Awaiting CentralManager", v4, 2u);
  }

  v0[46] = type metadata accessor for CentralManager();
  v5 = async function pointer to static CentralManager.pairingCentralManager.getter[1];
  v6 = swift_task_alloc();
  v0[47] = v6;
  *v6 = v0;
  v6[1] = sub_10101B6DC;

  return static CentralManager.pairingCentralManager.getter();
}

uint64_t sub_10101D9D0()
{
  v30 = v0;
  v1 = v0[40];
  v2 = v0[35];
  v3 = v0[25];

  sub_1010281D8(v3, type metadata accessor for LocalFindableAccessoryRecord);
  v4 = v0[44];
  v5 = v0[29];
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v29 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v11 = v0[2];
    v10 = v0[3];
    v12 = v0[4];
    v13 = Error.localizedDescription.getter();
    v15 = sub_1000136BC(v13, v14, &v29);

    *(v8 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v6, v7, "Found error %s with handling lost mode", v8, 0xCu);
    sub_100007BAC(v9);
  }

  else
  {
  }

  v16 = v0[28];
  v17 = v0[25];
  v18 = v0[22];
  v20 = v0[19];
  v19 = v0[20];
  v22 = v0[17];
  v21 = v0[18];
  v24 = v0[15];
  v23 = v0[16];
  v25 = v0[11];
  v28 = v0[8];

  v26 = v0[1];

  return v26();
}

uint64_t sub_10101DBFC()
{
  v29 = v0;
  v1 = v0[45];
  v2 = v0[35];

  v3 = v0[49];
  v4 = v0[29];
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v28 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v10 = v0[2];
    v9 = v0[3];
    v11 = v0[4];
    v12 = Error.localizedDescription.getter();
    v14 = sub_1000136BC(v12, v13, &v28);

    *(v7 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v5, v6, "Found error %s with handling lost mode", v7, 0xCu);
    sub_100007BAC(v8);
  }

  else
  {
  }

  v15 = v0[28];
  v16 = v0[25];
  v17 = v0[22];
  v19 = v0[19];
  v18 = v0[20];
  v21 = v0[17];
  v20 = v0[18];
  v23 = v0[15];
  v22 = v0[16];
  v24 = v0[11];
  v27 = v0[8];

  v25 = v0[1];

  return v25();
}

uint64_t sub_10101DE08()
{
  v30 = v0;
  v1 = v0[48];
  v2 = v0[45];
  v3 = v0[35];

  v4 = v0[51];
  v5 = v0[29];
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v29 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v11 = v0[2];
    v10 = v0[3];
    v12 = v0[4];
    v13 = Error.localizedDescription.getter();
    v15 = sub_1000136BC(v13, v14, &v29);

    *(v8 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v6, v7, "Found error %s with handling lost mode", v8, 0xCu);
    sub_100007BAC(v9);
  }

  else
  {
  }

  v16 = v0[28];
  v17 = v0[25];
  v18 = v0[22];
  v20 = v0[19];
  v19 = v0[20];
  v22 = v0[17];
  v21 = v0[18];
  v24 = v0[15];
  v23 = v0[16];
  v25 = v0[11];
  v28 = v0[8];

  v26 = v0[1];

  return v26();
}

uint64_t sub_10101E020()
{
  v33 = v0;
  v1 = v0[48];
  v2 = v0[45];
  v3 = v0[35];
  v4 = v0[18];
  v5 = v0[12];
  v6 = v0[13];

  (*(v6 + 8))(v4, v5);
  v7 = v0[57];
  v8 = v0[29];
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v32 = v12;
    *v11 = 136315138;
    swift_getErrorValue();
    v14 = v0[2];
    v13 = v0[3];
    v15 = v0[4];
    v16 = Error.localizedDescription.getter();
    v18 = sub_1000136BC(v16, v17, &v32);

    *(v11 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v9, v10, "Found error %s with handling lost mode", v11, 0xCu);
    sub_100007BAC(v12);
  }

  else
  {
  }

  v19 = v0[28];
  v20 = v0[25];
  v21 = v0[22];
  v23 = v0[19];
  v22 = v0[20];
  v25 = v0[17];
  v24 = v0[18];
  v27 = v0[15];
  v26 = v0[16];
  v28 = v0[11];
  v31 = v0[8];

  v29 = v0[1];

  return v29();
}

uint64_t sub_10101E258()
{
  v36 = v0;
  v1 = v0[63];
  v2 = v0[58];
  v3 = v0[59];
  v4 = v0[48];
  v5 = v0[45];
  v6 = v0[35];
  v7 = v0[18];
  v8 = v0[12];
  v9 = v0[13];

  v3(v7, v8);
  v10 = v0[65];
  v11 = v0[29];
  swift_errorRetain();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v35 = v15;
    *v14 = 136315138;
    swift_getErrorValue();
    v17 = v0[2];
    v16 = v0[3];
    v18 = v0[4];
    v19 = Error.localizedDescription.getter();
    v21 = sub_1000136BC(v19, v20, &v35);

    *(v14 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v12, v13, "Found error %s with handling lost mode", v14, 0xCu);
    sub_100007BAC(v15);
  }

  else
  {
  }

  v22 = v0[28];
  v23 = v0[25];
  v24 = v0[22];
  v26 = v0[19];
  v25 = v0[20];
  v28 = v0[17];
  v27 = v0[18];
  v30 = v0[15];
  v29 = v0[16];
  v31 = v0[11];
  v34 = v0[8];

  v32 = v0[1];

  return v32();
}

uint64_t sub_10101E4A8()
{
  v36 = v0;
  v1 = v0[63];
  v2 = v0[58];
  v3 = v0[59];
  v4 = v0[48];
  v5 = v0[45];
  v6 = v0[35];
  v7 = v0[18];
  v8 = v0[12];
  v9 = v0[13];

  v3(v7, v8);
  v10 = v0[67];
  v11 = v0[29];
  swift_errorRetain();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v35 = v15;
    *v14 = 136315138;
    swift_getErrorValue();
    v17 = v0[2];
    v16 = v0[3];
    v18 = v0[4];
    v19 = Error.localizedDescription.getter();
    v21 = sub_1000136BC(v19, v20, &v35);

    *(v14 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v12, v13, "Found error %s with handling lost mode", v14, 0xCu);
    sub_100007BAC(v15);
  }

  else
  {
  }

  v22 = v0[28];
  v23 = v0[25];
  v24 = v0[22];
  v26 = v0[19];
  v25 = v0[20];
  v28 = v0[17];
  v27 = v0[18];
  v30 = v0[15];
  v29 = v0[16];
  v31 = v0[11];
  v34 = v0[8];

  v32 = v0[1];

  return v32();
}

uint64_t sub_10101E6F8()
{
  v36 = v0;
  v1 = v0[72];
  v2 = v0[63];
  v3 = v0[58];
  v4 = v0[59];
  v5 = v0[48];
  v6 = v0[45];
  v7 = v0[35];
  v8 = v0[18];
  v9 = v0[12];

  v4(v8, v9);
  v10 = v0[70];
  v11 = v0[29];
  swift_errorRetain();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v35 = v15;
    *v14 = 136315138;
    swift_getErrorValue();
    v17 = v0[2];
    v16 = v0[3];
    v18 = v0[4];
    v19 = Error.localizedDescription.getter();
    v21 = sub_1000136BC(v19, v20, &v35);

    *(v14 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v12, v13, "Found error %s with handling lost mode", v14, 0xCu);
    sub_100007BAC(v15);
  }

  else
  {
  }

  v22 = v0[28];
  v23 = v0[25];
  v24 = v0[22];
  v26 = v0[19];
  v25 = v0[20];
  v28 = v0[17];
  v27 = v0[18];
  v30 = v0[15];
  v29 = v0[16];
  v31 = v0[11];
  v34 = v0[8];

  v32 = v0[1];

  return v32();
}

uint64_t sub_10101E940(uint64_t a1, uint64_t a2)
{
  v3[23] = a2;
  v3[24] = v2;
  v3[22] = a1;
  v4 = type metadata accessor for OfflineLostModeInfoLookupResponse();
  v3[25] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[26] = swift_task_alloc();
  v6 = type metadata accessor for Response();
  v3[27] = v6;
  v7 = *(v6 - 8);
  v3[28] = v7;
  v8 = *(v7 + 64) + 15;
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v9 = *(*(sub_1000BC4D4(&qword_1016C3500, &qword_1013F7F78) - 8) + 64) + 15;
  v3[31] = swift_task_alloc();
  v10 = type metadata accessor for OfflineLostModeInfoLookupEndpoint();
  v3[32] = v10;
  v11 = *(v10 - 8);
  v3[33] = v11;
  v12 = *(v11 + 64) + 15;
  v3[34] = swift_task_alloc();
  v13 = type metadata accessor for OfflineLostModeInfoLookupRequest();
  v3[35] = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  v3[36] = swift_task_alloc();
  v15 = type metadata accessor for AccessoryMetadata(0);
  v3[37] = v15;
  v16 = *(*(v15 - 8) + 64) + 15;
  v3[38] = swift_task_alloc();
  v17 = type metadata accessor for URL();
  v3[39] = v17;
  v18 = *(v17 - 8);
  v3[40] = v18;
  v19 = *(v18 + 64) + 15;
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();
  v3[43] = swift_task_alloc();
  v20 = type metadata accessor for PeripheralPairingInfo();
  v3[44] = v20;
  v21 = *(v20 - 8);
  v3[45] = v21;
  v22 = *(v21 + 64) + 15;
  v3[46] = swift_task_alloc();
  v23 = type metadata accessor for MACAddress();
  v3[47] = v23;
  v24 = *(v23 - 8);
  v3[48] = v24;
  v25 = *(v24 + 64) + 15;
  v3[49] = swift_task_alloc();
  v26 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v3[50] = v26;
  v27 = *(v26 - 8);
  v3[51] = v27;
  v28 = *(v27 + 64) + 15;
  v3[52] = swift_task_alloc();
  v29 = type metadata accessor for RawAccessoryMetadata(0);
  v3[53] = v29;
  v30 = *(*(v29 - 8) + 64) + 15;
  v3[54] = swift_task_alloc();
  v3[55] = swift_task_alloc();

  return _swift_task_switch(sub_10101ED04, v2, 0);
}

uint64_t sub_10101ED04()
{
  if (qword_101695148 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[56] = sub_1000076D4(v1, qword_1016C32C0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Generating lost mode alert info", v4, 2u);
  }

  v5 = swift_task_alloc();
  v0[57] = v5;
  *v5 = v0;
  v5[1] = sub_10101EE70;
  v6 = v0[55];
  v7 = v0[23];

  return sub_100D6D190(v6, v7);
}

uint64_t sub_10101EE70()
{
  v2 = *v1;
  v3 = *(*v1 + 456);
  v4 = *v1;
  *(*v1 + 464) = v0;

  v5 = *(v2 + 192);
  if (v0)
  {
    v6 = sub_1010211C0;
  }

  else
  {
    v6 = sub_10101EF9C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10101EF9C()
{
  v22 = v0;
  v1 = v0[56];
  v2 = v0[23];

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[51];
    v5 = v0[52];
    v7 = v0[50];
    v8 = v0[23];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21 = v10;
    *v9 = 136380675;
    Peripheral.id.getter();
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = v12;
    (*(v6 + 8))(v5, v7);
    v14 = sub_1000136BC(v11, v13, &v21);

    *(v9 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v3, v4, "Retrieving Mac address for peripheral %{private}s", v9, 0xCu);
    sub_100007BAC(v10);
  }

  v15 = *(&async function pointer to dispatch thunk of Peripheral.pairingInfo.getter + 1);
  v20 = (&async function pointer to dispatch thunk of Peripheral.pairingInfo.getter + async function pointer to dispatch thunk of Peripheral.pairingInfo.getter);
  v16 = swift_task_alloc();
  v0[59] = v16;
  *v16 = v0;
  v16[1] = sub_10101F1B4;
  v17 = v0[46];
  v18 = v0[23];

  return v20(v17);
}

uint64_t sub_10101F1B4()
{
  v2 = *v1;
  v3 = *(*v1 + 472);
  v4 = *v1;
  *(*v1 + 480) = v0;

  v5 = *(v2 + 192);
  if (v0)
  {
    v6 = sub_1010212F4;
  }

  else
  {
    v6 = sub_10101F2E0;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10101F2E0()
{
  v1 = v0[56];
  v2 = v0[49];
  v4 = v0[45];
  v3 = v0[46];
  v5 = v0[44];
  PeripheralPairingInfo.remoteAddress.getter();
  (*(v4 + 8))(v3, v5);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Retreived Mac address", v8, 2u);
  }

  v9 = async function pointer to daemon.getter[1];
  v10 = swift_task_alloc();
  v0[61] = v10;
  *v10 = v0;
  v10[1] = sub_10101F414;

  return daemon.getter();
}

uint64_t sub_10101F414(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 488);
  v12 = *v1;
  *(v3 + 496) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 504) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for OwnerCommandService(0);
  v9 = sub_101028238(&qword_1016AA400, 255, &type metadata accessor for Daemon);
  v10 = sub_101028238(&unk_1016B10E0, 255, type metadata accessor for OwnerCommandService);
  *v6 = v12;
  v6[1] = sub_10101F5F8;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_10101F5F8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 504);
  v6 = *v2;
  *(v4 + 512) = a1;
  *(v4 + 520) = v1;

  v7 = *(v3 + 496);
  v8 = *(v3 + 192);
  if (v1)
  {

    v9 = sub_101020EDC;
  }

  else
  {

    v9 = sub_10101F760;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_10101F760()
{
  v1 = v0[65];
  v2 = v0[54];
  v3 = v0[38];
  sub_101028170(v0[55], v2, type metadata accessor for RawAccessoryMetadata);
  sub_100231DE4(v2, v3);
  if (v1)
  {
    v4 = v0[64];
    v5 = v0[55];
    (*(v0[48] + 8))(v0[49], v0[47]);

    sub_1010281D8(v5, type metadata accessor for RawAccessoryMetadata);
    v7 = v0[54];
    v6 = v0[55];
    v8 = v0[52];
    v9 = v0[49];
    v10 = v0[46];
    v12 = v0[42];
    v11 = v0[43];
    v13 = v0[41];
    v14 = v0[38];
    v32 = v0[36];
    v33 = v0[34];
    v34 = v0[31];
    v35 = v0[30];
    v36 = v0[29];
    v37 = v0[26];

    v15 = v0[1];

    return v15();
  }

  else
  {
    v17 = v0[55];
    v18 = v0[53];
    v19 = v0[38];
    v20 = (v19 + *(v0[37] + 20));
    v21 = *v20;
    v0[66] = *v20;
    v22 = v20[1];
    v0[67] = v22;
    sub_100017D5C(v21, v22);
    sub_1010281D8(v19, type metadata accessor for AccessoryMetadata);
    v23 = (v17 + *(v18 + 44));
    if (v23[1] >> 60 == 15)
    {
      v24 = 0;
      v25 = 0;
    }

    else
    {
      v26 = *v23;
      v24 = Data.hexString.getter();
      v25 = v27;
    }

    v0[68] = v25;
    v28 = swift_task_alloc();
    v0[69] = v28;
    *v28 = v0;
    v28[1] = sub_10101FA20;
    v29 = v0[64];
    v30 = v0[49];
    v31 = v0[43];

    return sub_10121A1C4(v31, v30, v21, v22, v24, v25);
  }
}

uint64_t sub_10101FA20()
{
  v2 = *v1;
  v3 = *(*v1 + 552);
  v4 = *v1;
  *(*v1 + 560) = v0;

  v5 = v2[68];
  v6 = v2[67];
  v7 = v2[66];
  v8 = v2[24];

  sub_100016590(v7, v6);
  if (v0)
  {
    v9 = sub_101021444;
  }

  else
  {
    v9 = sub_10101FBA4;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_10101FBA4()
{
  v78 = v0;
  v1 = *(v0 + 448);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Generated serial number URL", v4, 2u);
  }

  v5 = [objc_opt_self() mainBundle];
  v6 = [v5 bundleIdentifier];

  if (v6)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v7 = *(v0 + 336);
  v8 = *(v0 + 312);
  v9 = *(v0 + 320);
  v10 = *(v0 + 280);
  v11 = *(v0 + 288);
  v12 = *(v0 + 264);
  v70 = *(v0 + 344);
  v72 = *(v0 + 256);
  v13 = *(v0 + 248);
  type metadata accessor for ServerInteractionController();
  *(v0 + 568) = ServerInteractionController.__allocating_init(bundleIdentifier:)();
  *v11 = xmmword_10138BBF0;
  v14 = *(v10 + 20);
  v15 = enum case for RequestMethod.get(_:);
  v16 = type metadata accessor for RequestMethod();
  (*(*(v16 - 8) + 104))(&v11[v14], v15, v16);
  v17 = *(v9 + 16);
  v17(v7, v70, v8);
  sub_100B5AC90(v7, v13);
  v18 = (*(v12 + 48))(v13, 1, v72);
  v19 = *(v0 + 448);
  if (v18 == 1)
  {
    v20 = *(v0 + 344);
    v21 = *(v0 + 328);
    v22 = *(v0 + 312);
    sub_10000B3A8(*(v0 + 248), &qword_1016C3500, &qword_1013F7F78);
    v17(v21, v20, v22);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    v25 = os_log_type_enabled(v23, v24);
    v27 = *(v0 + 320);
    v26 = *(v0 + 328);
    v28 = *(v0 + 312);
    if (v25)
    {
      v29 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v77 = v71;
      *v29 = 136315138;
      sub_101028238(&qword_1016B14E0, 255, &type metadata accessor for URL);
      v30 = dispatch thunk of CustomStringConvertible.description.getter();
      v32 = v31;
      v73 = *(v27 + 8);
      v73(v26, v28);
      v33 = sub_1000136BC(v30, v32, &v77);

      *(v29 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v23, v24, "Can't create endpoint from url %s", v29, 0xCu);
      sub_100007BAC(v71);
    }

    else
    {

      v73 = *(v27 + 8);
      v73(v26, v28);
    }

    v47 = *(v0 + 512);
    v68 = *(v0 + 440);
    v48 = *(v0 + 384);
    v49 = *(v0 + 392);
    v50 = *(v0 + 376);
    v51 = *(v0 + 344);
    v52 = *(v0 + 312);
    v53 = *(v0 + 288);
    sub_10102796C();
    swift_allocError();
    *v54 = 3;
    swift_willThrow();

    sub_1010281D8(v53, type metadata accessor for OfflineLostModeInfoLookupRequest);
    v73(v51, v52);
    (*(v48 + 8))(v49, v50);
    sub_1010281D8(v68, type metadata accessor for RawAccessoryMetadata);
    v56 = *(v0 + 432);
    v55 = *(v0 + 440);
    v57 = *(v0 + 416);
    v58 = *(v0 + 392);
    v59 = *(v0 + 368);
    v61 = *(v0 + 336);
    v60 = *(v0 + 344);
    v62 = *(v0 + 328);
    v63 = *(v0 + 304);
    v64 = *(v0 + 288);
    v66 = *(v0 + 272);
    v67 = *(v0 + 248);
    v69 = *(v0 + 240);
    v75 = *(v0 + 232);
    v76 = *(v0 + 208);

    v65 = *(v0 + 8);

    return v65();
  }

  else
  {
    sub_101028108(*(v0 + 248), *(v0 + 272), type metadata accessor for OfflineLostModeInfoLookupEndpoint);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "Sending lost mode info request", v36, 2u);
    }

    v37 = *(v0 + 280);
    v38 = *(v0 + 288);
    v39 = *(v0 + 272);
    v40 = *(v0 + 256);

    *(v0 + 40) = v40;
    *(v0 + 48) = sub_101028238(&qword_1016C3508, 255, type metadata accessor for OfflineLostModeInfoLookupEndpoint);
    v41 = sub_1000280DC((v0 + 16));
    sub_101028170(v39, v41, type metadata accessor for OfflineLostModeInfoLookupEndpoint);
    *(v0 + 80) = v37;
    *(v0 + 88) = sub_101028238(&qword_1016C26B8, 255, type metadata accessor for OfflineLostModeInfoLookupRequest);
    v42 = sub_1000280DC((v0 + 56));
    sub_101028170(v38, v42, type metadata accessor for OfflineLostModeInfoLookupRequest);
    *(v0 + 112) = 0u;
    *(v0 + 128) = 0;
    *(v0 + 96) = 0u;
    *(v0 + 152) = 0u;
    *(v0 + 136) = 0u;
    *(v0 + 168) = 0;
    v43 = *(&async function pointer to dispatch thunk of ServerInteractionController.send(endpoint:content:credential:pinningCredential:) + 1);
    v74 = (&async function pointer to dispatch thunk of ServerInteractionController.send(endpoint:content:credential:pinningCredential:) + async function pointer to dispatch thunk of ServerInteractionController.send(endpoint:content:credential:pinningCredential:));
    v44 = swift_task_alloc();
    *(v0 + 576) = v44;
    *v44 = v0;
    v44[1] = sub_101020328;
    v45 = *(v0 + 240);

    return v74(v45, v0 + 16, v0 + 56, v0 + 96, v0 + 136);
  }
}

uint64_t sub_101020328()
{
  v2 = *v1;
  v3 = (*v1)[72];
  v7 = *v1;
  (*v1)[73] = v0;

  if (v0)
  {
    v4 = v2[24];
    sub_10000B3A8((v2 + 17), &qword_1016978B0, &qword_1013A3960);
    sub_10000B3A8((v2 + 12), &qword_1016978B8, &qword_1013C35C0);
    v5 = sub_1010215C0;
  }

  else
  {
    v4 = v2[24];
    sub_10000B3A8((v2 + 17), &qword_1016978B0, &qword_1013A3960);
    sub_10000B3A8((v2 + 12), &qword_1016978B8, &qword_1013C35C0);
    sub_100007BAC(v2 + 7);
    sub_100007BAC(v2 + 2);
    v5 = sub_1010204B4;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1010204B4()
{
  v131 = v0;
  v1 = v0[30];
  v2 = Response.response.getter();
  v3 = [v2 statusCode];

  v4 = v0[30];
  if (v3 != 200)
  {
    v20 = v0[56];
    (*(v0[28] + 16))(v0[29], v0[30], v0[27]);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    v23 = os_log_type_enabled(v21, v22);
    v25 = v0[28];
    v24 = v0[29];
    v26 = v0[27];
    if (v23)
    {
      v27 = swift_slowAlloc();
      v128 = swift_slowAlloc();
      v130 = v128;
      *v27 = 136315138;
      sub_101028238(&qword_1016C3510, 255, &type metadata accessor for Response);
      v28 = dispatch thunk of CustomStringConvertible.description.getter();
      v30 = v29;
      v123 = *(v25 + 8);
      v123(v24, v26);
      v31 = sub_1000136BC(v28, v30, &v130);

      *(v27 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v21, v22, "Failed response %s", v27, 0xCu);
      sub_100007BAC(v128);
    }

    else
    {

      v123 = *(v25 + 8);
      v123(v24, v26);
    }

    v32 = v0[71];
    v33 = v0[64];
    v125 = v0[55];
    v34 = v0[48];
    v118 = v0[49];
    v108 = v0[43];
    v113 = v0[47];
    v35 = v0[40];
    v100 = v0[36];
    v104 = v0[39];
    v36 = v0[34];
    v37 = v0[30];
    v38 = v0[27];
    sub_10102796C();
    swift_allocError();
    *v39 = 7;
    swift_willThrow();

    v123(v37, v38);
    sub_1010281D8(v36, type metadata accessor for OfflineLostModeInfoLookupEndpoint);
    sub_1010281D8(v100, type metadata accessor for OfflineLostModeInfoLookupRequest);
    (*(v35 + 8))(v108, v104);
    (*(v34 + 8))(v118, v113);
    goto LABEL_8;
  }

  v5 = v0[73];
  v7 = v0[25];
  v6 = v0[26];
  v8 = type metadata accessor for JSONDecoder();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  v11 = Response.body.getter();
  v13 = v12;
  sub_101028238(&qword_1016C3518, 255, type metadata accessor for OfflineLostModeInfoLookupResponse);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v5)
  {
    v14 = v0[71];
    v97 = v0[64];
    v15 = v0[48];
    v122 = v0[49];
    v125 = v0[55];
    v117 = v0[47];
    v16 = v0[40];
    v107 = v0[39];
    v112 = v0[43];
    v99 = v0[34];
    v103 = v0[36];
    v17 = v0[30];
    v19 = v0[27];
    v18 = v0[28];
    sub_100016590(v11, v13);

    (*(v18 + 8))(v17, v19);
    sub_1010281D8(v99, type metadata accessor for OfflineLostModeInfoLookupEndpoint);
    sub_1010281D8(v103, type metadata accessor for OfflineLostModeInfoLookupRequest);
    (*(v16 + 8))(v112, v107);
    (*(v15 + 8))(v122, v117);
LABEL_8:
    sub_1010281D8(v125, type metadata accessor for RawAccessoryMetadata);
    v41 = v0[54];
    v40 = v0[55];
    v42 = v0[52];
    v43 = v0[49];
    v44 = v0[46];
    v46 = v0[42];
    v45 = v0[43];
    v47 = v0[41];
    v48 = v0[38];
    v49 = v0[36];
    v109 = v0[34];
    v114 = v0[31];
    v119 = v0[30];
    v124 = v0[29];
    v126 = v0[26];

    v50 = v0[1];
    goto LABEL_9;
  }

  v52 = v0[56];
  sub_100016590(v11, v13);
  v53 = Logger.logObject.getter();
  v54 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    *v55 = 0;
    _os_log_impl(&_mh_execute_header, v53, v54, "Received lost mode info response", v55, 2u);
  }

  v56 = v0[56];
  v57 = v0[26];

  LODWORD(v57) = *(v57 + 16);
  v58 = Logger.logObject.getter();
  if (v57 != 1)
  {
    v76 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v58, v76))
    {
      v77 = swift_slowAlloc();
      *v77 = 0;
      _os_log_impl(&_mh_execute_header, v58, v76, "Device is not in lost mode", v77, 2u);
    }

    v78 = v0[71];
    v79 = v0[64];
    v125 = v0[55];
    v80 = v0[48];
    v121 = v0[49];
    v111 = v0[43];
    v116 = v0[47];
    v81 = v0[40];
    v102 = v0[36];
    v106 = v0[39];
    v96 = v0[30];
    v98 = v0[34];
    v83 = v0[27];
    v82 = v0[28];
    v84 = v0[26];

    sub_10102796C();
    swift_allocError();
    *v85 = 4;
    swift_willThrow();

    sub_1010281D8(v84, type metadata accessor for OfflineLostModeInfoLookupResponse);
    (*(v82 + 8))(v96, v83);
    sub_1010281D8(v98, type metadata accessor for OfflineLostModeInfoLookupEndpoint);
    sub_1010281D8(v102, type metadata accessor for OfflineLostModeInfoLookupRequest);
    (*(v81 + 8))(v111, v106);
    (*(v80 + 8))(v121, v116);
    goto LABEL_8;
  }

  v59 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    *v60 = 0;
    _os_log_impl(&_mh_execute_header, v58, v59, "Device is in lost mode, creating lost mode alert info", v60, 2u);
  }

  v86 = v0[71];
  v87 = v0[64];
  v94 = v0[55];
  v95 = v0[54];
  v61 = v0[48];
  v92 = v0[47];
  v93 = v0[49];
  v101 = v0[52];
  v105 = v0[46];
  v62 = v0[40];
  v110 = v0[42];
  v115 = v0[41];
  v90 = v0[39];
  v91 = v0[43];
  v120 = v0[38];
  v88 = v0[36];
  v63 = v0[34];
  v64 = v0[30];
  v127 = v0[31];
  v65 = v0[28];
  v129 = v0[29];
  v66 = v0[26];
  v67 = v0[27];
  v89 = v0[25];
  v68 = v0[22];

  (*(v65 + 8))(v64, v67);
  sub_1010281D8(v63, type metadata accessor for OfflineLostModeInfoLookupEndpoint);
  sub_1010281D8(v88, type metadata accessor for OfflineLostModeInfoLookupRequest);
  (*(v62 + 8))(v91, v90);
  (*(v61 + 8))(v93, v92);
  sub_1000D2A70(v66 + *(v89 + 36), v68, &unk_101696AC0, &qword_101390A60);
  v70 = v66[3];
  v69 = v66[4];
  v72 = *v66;
  v71 = v66[1];

  sub_1010281D8(v66, type metadata accessor for OfflineLostModeInfoLookupResponse);
  v73 = type metadata accessor for LostModeAlertInfo();
  v74 = (v68 + v73[5]);
  *v74 = v70;
  v74[1] = v69;
  v75 = (v68 + v73[6]);
  *v75 = v72;
  v75[1] = v71;
  *(v68 + v73[7]) = 1;
  sub_1010281D8(v94, type metadata accessor for RawAccessoryMetadata);

  v50 = v0[1];
LABEL_9:

  return v50();
}

uint64_t sub_101020EDC()
{
  v38 = v0;
  v1 = v0[56];
  v2 = v0[23];

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[51];
    v5 = v0[52];
    v7 = v0[50];
    v8 = v0[23];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v37 = v10;
    *v9 = 136315138;
    Peripheral.id.getter();
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = v12;
    (*(v6 + 8))(v5, v7);
    v14 = sub_1000136BC(v11, v13, &v37);

    *(v9 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v3, v4, "No command service! %s", v9, 0xCu);
    sub_100007BAC(v10);
  }

  v15 = v0[55];
  v16 = v0[48];
  v17 = v0[49];
  v18 = v0[47];
  sub_10102796C();
  swift_allocError();
  *v19 = 0;
  swift_willThrow();
  (*(v16 + 8))(v17, v18);
  sub_1010281D8(v15, type metadata accessor for RawAccessoryMetadata);
  v21 = v0[54];
  v20 = v0[55];
  v22 = v0[52];
  v23 = v0[49];
  v24 = v0[46];
  v26 = v0[42];
  v25 = v0[43];
  v27 = v0[41];
  v28 = v0[38];
  v29 = v0[36];
  v32 = v0[34];
  v33 = v0[31];
  v34 = v0[30];
  v35 = v0[29];
  v36 = v0[26];

  v30 = v0[1];

  return v30();
}

uint64_t sub_1010211C0()
{
  v2 = v0[54];
  v1 = v0[55];
  v3 = v0[52];
  v4 = v0[49];
  v5 = v0[46];
  v7 = v0[42];
  v6 = v0[43];
  v8 = v0[41];
  v9 = v0[38];
  v10 = v0[36];
  v13 = v0[34];
  v14 = v0[31];
  v15 = v0[30];
  v16 = v0[29];
  v17 = v0[26];
  v18 = v0[58];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1010212F4()
{
  sub_1010281D8(v0[55], type metadata accessor for RawAccessoryMetadata);
  v2 = v0[54];
  v1 = v0[55];
  v3 = v0[52];
  v4 = v0[49];
  v5 = v0[46];
  v7 = v0[42];
  v6 = v0[43];
  v8 = v0[41];
  v9 = v0[38];
  v10 = v0[36];
  v13 = v0[34];
  v14 = v0[31];
  v15 = v0[30];
  v16 = v0[29];
  v17 = v0[26];
  v18 = v0[60];

  v11 = v0[1];

  return v11();
}

uint64_t sub_101021444()
{
  v1 = v0[64];
  v2 = v0[55];
  v4 = v0[48];
  v3 = v0[49];
  v5 = v0[47];

  (*(v4 + 8))(v3, v5);
  sub_1010281D8(v2, type metadata accessor for RawAccessoryMetadata);
  v7 = v0[54];
  v6 = v0[55];
  v8 = v0[52];
  v9 = v0[49];
  v10 = v0[46];
  v12 = v0[42];
  v11 = v0[43];
  v13 = v0[41];
  v14 = v0[38];
  v15 = v0[36];
  v18 = v0[34];
  v19 = v0[31];
  v20 = v0[30];
  v21 = v0[29];
  v22 = v0[26];
  v23 = v0[70];

  v16 = v0[1];

  return v16();
}

uint64_t sub_1010215C0()
{
  v1 = v0[71];
  v2 = v0[64];
  v28 = v0[55];
  v4 = v0[48];
  v3 = v0[49];
  v5 = v0[47];
  v6 = v0[43];
  v8 = v0[39];
  v7 = v0[40];
  v9 = v0[36];
  v10 = v0[34];

  sub_1010281D8(v10, type metadata accessor for OfflineLostModeInfoLookupEndpoint);
  sub_1010281D8(v9, type metadata accessor for OfflineLostModeInfoLookupRequest);
  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);
  sub_1010281D8(v28, type metadata accessor for RawAccessoryMetadata);
  sub_100007BAC(v0 + 7);
  sub_100007BAC(v0 + 2);
  v12 = v0[54];
  v11 = v0[55];
  v13 = v0[52];
  v14 = v0[49];
  v15 = v0[46];
  v17 = v0[42];
  v16 = v0[43];
  v18 = v0[41];
  v19 = v0[38];
  v20 = v0[36];
  v23 = v0[34];
  v24 = v0[31];
  v25 = v0[30];
  v26 = v0[29];
  v27 = v0[26];
  v29 = v0[73];

  v21 = v0[1];

  return v21();
}

uint64_t sub_1010217BC(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = type metadata accessor for FMRemoteUILauncher.AlertType(0);
  v2[6] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_101021850, v1, 0);
}

uint64_t sub_101021850()
{
  v1 = v0[6];
  v2 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  sub_101027A60();
  sub_101028170(v4, v2, type metadata accessor for LostModeAlertInfo);
  swift_storeEnumTagMultiPayload();
  v0[8] = sub_101028238(&qword_1016C34F8, v5, type metadata accessor for LocalFindableLostModeDetectionService);
  v6 = type metadata accessor for FMRemoteUILauncher(0);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  v0[9] = swift_allocObject();

  return _swift_task_switch(sub_101021950, 0, 0);
}

uint64_t sub_101021950()
{
  super_class = v0[4].super_class;
  swift_defaultActor_initialize();
  *(super_class + OBJC_IVAR____TtC12searchpartyd18FMRemoteUILauncher_alertHandle) = 0;
  v2 = OBJC_IVAR____TtC12searchpartyd18FMRemoteUILauncher_logger;
  if (qword_101694FA0 != -1)
  {
    swift_once();
  }

  receiver = v0[4].receiver;
  v3 = v0[4].super_class;
  v5 = v0[3].super_class;
  v6 = v0[2].super_class;
  v7 = type metadata accessor for Logger();
  v8 = sub_1000076D4(v7, qword_10177C288);
  (*(*(v7 - 8) + 16))(v3 + v2, v8, v7);
  sub_101028170(v5, v3 + OBJC_IVAR____TtC12searchpartyd18FMRemoteUILauncher_alertType, type metadata accessor for FMRemoteUILauncher.AlertType);
  v9 = type metadata accessor for RemoteHandleObserverDelegateTrampoline();
  v10 = objc_allocWithZone(v9);
  *&v10[OBJC_IVAR____TtC12searchpartydP33_B6591815384A8DEB8885452F1FDF33D538RemoteHandleObserverDelegateTrampoline_delegate + 8] = 0;
  *(swift_unknownObjectWeakInit() + 8) = receiver;
  swift_unknownObjectWeakAssign();
  v0[1].receiver = v10;
  v0[1].super_class = v9;
  *(v3 + OBJC_IVAR____TtC12searchpartyd18FMRemoteUILauncher_alertHandleDelegateTrampoline) = objc_msgSendSuper2(v0 + 1, "init");

  return _swift_task_switch(sub_101021AF0, v3, 0);
}

uint64_t sub_101021AF0()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);

  sub_1010281D8(v1, type metadata accessor for FMRemoteUILauncher.AlertType);

  return _swift_task_switch(sub_101021B7C, v2, 0);
}

uint64_t sub_101021B7C()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 40);
  v3 = *(v2 + 128);
  *(v2 + 128) = v1;

  return _swift_task_switch(sub_101021BFC, v1, 0);
}

uint64_t sub_101021BFC()
{
  v1 = v0[9];
  v2 = v0[7];
  sub_100EF6F7C();

  v3 = v0[1];

  return v3();
}

uint64_t sub_101021C70(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  v3 = type metadata accessor for UUID();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v2[7] = *(v4 + 64);
  v2[8] = swift_task_alloc();

  return _swift_task_switch(sub_101021D60, v1, 0);
}

uint64_t sub_101021D60()
{
  if (qword_101695148 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 72) = sub_1000076D4(v1, qword_1016C32C0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "This pencil belongs to the owner, disabling lost mode automatically", v4, 2u);
  }

  v5 = async function pointer to daemon.getter[1];
  v6 = swift_task_alloc();
  *(v0 + 80) = v6;
  *v6 = v0;
  v6[1] = sub_101021EB0;

  return daemon.getter();
}

uint64_t sub_101021EB0(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v12 = *v1;
  v3[11] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[12] = v6;
  v7 = type metadata accessor for Daemon();
  v3[13] = v7;
  v8 = type metadata accessor for LegacyServiceContainer();
  v9 = sub_101028238(&qword_1016AA400, 255, &type metadata accessor for Daemon);
  v10 = sub_101028238(&unk_101698D70, 255, type metadata accessor for LegacyServiceContainer);
  *v6 = v12;
  v6[1] = sub_101022098;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_101022098(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 96);
  v6 = *v2;
  v4[14] = a1;
  v4[15] = v1;

  if (v1)
  {
    v7 = v4[11];

    v8 = v4[3];
    v9 = sub_1010226F4;
  }

  else
  {
    v9 = sub_1010221DC;
    v8 = a1;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_1010221DC()
{
  v1 = v0[14];
  v2 = v0[15];
  sub_10001B108();
  v0[16] = v3;
  v4 = v0[13];
  v5 = v0[11];
  if (v2)
  {

    sub_101028238(&qword_1016969E0, 255, &type metadata accessor for Daemon);
    v6 = dispatch thunk of Actor.unownedExecutor.getter();
    v8 = v7;
    v9 = sub_101022680;
  }

  else
  {
    sub_101028238(&qword_1016969E0, 255, &type metadata accessor for Daemon);
    v6 = dispatch thunk of Actor.unownedExecutor.getter();
    v8 = v10;
    v9 = sub_10102230C;
  }

  return _swift_task_switch(v9, v6, v8);
}

uint64_t sub_10102230C()
{
  v1 = v0[14];
  v2 = v0[11];
  v3 = v0[3];

  return _swift_task_switch(sub_101022384, v3, 0);
}

uint64_t sub_101022384()
{
  v1 = v0[16];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[4];
  (*(v5 + 16))(v2, v0[2], v4);
  v7 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v8 = (v3 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = swift_allocObject();
  v0[17] = v9;
  *(v9 + 16) = v1;
  (*(v5 + 32))(v9 + v7, v2, v4);
  *(v9 + v8) = v6;
  v10 = async function pointer to unsafeBlocking<A>(_:)[1];

  v11 = swift_task_alloc();
  v0[18] = v11;
  *v11 = v0;
  v11[1] = sub_1010224E4;

  return unsafeBlocking<A>(_:)(v11, sub_1010279C0, v9, &type metadata for () + 8);
}

uint64_t sub_1010224E4()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 136);
  v3 = *(*v0 + 24);
  v5 = *v0;

  return _swift_task_switch(sub_101022610, v3, 0);
}

uint64_t sub_101022610()
{
  v1 = v0[16];
  v2 = v0[8];

  v3 = v0[1];

  return v3();
}

uint64_t sub_101022680()
{
  v1 = v0[14];
  v2 = v0[11];

  v3 = v0[3];

  return _swift_task_switch(sub_1010226F4, v3, 0);
}

uint64_t sub_1010226F4()
{
  v1 = v0[9];
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Unable to get beacon manager service", v4, 2u);
  }

  v5 = v0[8];

  sub_10102796C();
  swift_allocError();
  *v6 = 1;
  swift_willThrow();

  v7 = v0[1];

  return v7();
}

uint64_t sub_101022800(uint64_t a1)
{
  v32 = a1;
  v1 = sub_1000BC4D4(&unk_1016A99E0, &qword_1013A07B0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v27 - v3;
  v5 = type metadata accessor for LostModeRecord();
  v30 = *(v5 - 8);
  v31 = v5;
  v6 = *(v30 + 64);
  v7 = __chkstk_darwin(v5);
  v28 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v29 = &v27 - v8;
  static os_log_type_t.default.getter();
  if (qword_1016950A0 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v9 = swift_allocObject();
  v27 = xmmword_101385D80;
  *(v9 + 16) = xmmword_101385D80;
  v10 = UUID.uuidString.getter();
  v12 = v11;
  *(v9 + 56) = &type metadata for String;
  v13 = sub_100008C00();
  *(v9 + 64) = v13;
  *(v9 + 32) = v10;
  *(v9 + 40) = v12;
  os_log(_:dso:log:_:_:)();

  v14 = v32;
  v15 = *(v32 + 280);
  sub_100ABD87C(v4);
  v16 = v30;
  if ((*(v30 + 48))(v4, 1, v31) == 1)
  {
    sub_10000B3A8(v4, &unk_1016A99E0, &qword_1013A07B0);
    static os_log_type_t.error.getter();
    v17 = swift_allocObject();
    *(v17 + 16) = v27;
    v18 = UUID.uuidString.getter();
    *(v17 + 56) = &type metadata for String;
    *(v17 + 64) = v13;
    *(v17 + 32) = v18;
    *(v17 + 40) = v19;
    os_log(_:dso:log:_:_:)();

    sub_1008B3F98();
    v20 = swift_allocError();
    *v21 = 0;
    sub_101026B10(v20);
  }

  else
  {
    v23 = v29;
    sub_101028108(v4, v29, type metadata accessor for LostModeRecord);
    v24 = v28;
    sub_101028170(v23, v28, type metadata accessor for LostModeRecord);
    v25 = (*(v16 + 80) + 40) & ~*(v16 + 80);
    v26 = swift_allocObject();
    v26[2] = sub_101026B10;
    v26[3] = 0;
    v26[4] = v14;
    sub_101028108(v24, v26 + v25, type metadata accessor for LostModeRecord);

    sub_1008AFE18(v23, 0, sub_1008BA790, v26);

    return sub_1010281D8(v23, type metadata accessor for LostModeRecord);
  }
}

uint64_t sub_101022BF0()
{
  v0 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v13 - v2;
  sub_101024014(0xD000000000000015, 0x8000000101378290);
  if (qword_101695148 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_1016C32C0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Resetting throttling values", v7, 2u);
  }

  v8 = [objc_opt_self() standardUserDefaults];
  isa = UInt._bridgeToObjectiveC()().super.super.isa;
  v10 = String._bridgeToObjectiveC()();
  [v8 setObject:isa forKey:v10];

  v11 = type metadata accessor for Date();
  (*(*(v11 - 8) + 56))(v3, 1, 1, v11);
  return sub_1010277CC(v3);
}

uint64_t sub_101022DFC()
{
  v149 = type metadata accessor for DateInterval();
  v151 = *(v149 - 8);
  v1 = *(v151 + 64);
  v2 = __chkstk_darwin(v149);
  v147 = &v134[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v2);
  v150 = &v134[-v4];
  v5 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v143 = &v134[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __chkstk_darwin(v7);
  v11 = &v134[-v10];
  v12 = __chkstk_darwin(v9);
  v14 = &v134[-v13];
  __chkstk_darwin(v12);
  v16 = &v134[-v15];
  v17 = type metadata accessor for Date();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v146 = &v134[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = __chkstk_darwin(v20);
  v145 = &v134[-v23];
  v24 = __chkstk_darwin(v22);
  v144 = &v134[-v25];
  v26 = __chkstk_darwin(v24);
  v139 = &v134[-v27];
  v28 = __chkstk_darwin(v26);
  v142 = &v134[-v29];
  v30 = __chkstk_darwin(v28);
  v141 = &v134[-v31];
  v32 = __chkstk_darwin(v30);
  v34 = &v134[-v33];
  v35 = __chkstk_darwin(v32);
  v37 = &v134[-v36];
  __chkstk_darwin(v35);
  v155 = &v134[-v38];
  v140 = v0;
  sub_101024014(0xD000000000000011, 0x80000001013781E0);
  sub_101014188(v16);
  static Date.now.getter();
  v148 = v16;
  v39 = v16;
  v40 = v18;
  sub_1000D2A70(v39, v14, &unk_101696900, &unk_10138B1E0);
  v41 = *(v18 + 48);
  v42 = v41(v14, 1, v17);
  v152 = v18;
  v153 = v37;
  v154 = v17;
  if (v42 == 1)
  {
    sub_10000B3A8(v14, &unk_101696900, &unk_10138B1E0);
  }

  else
  {
    (*(v18 + 32))(v34, v14, v17);
    sub_101028238(&qword_1016C9070, 255, &type metadata accessor for Date);
    if ((dispatch thunk of static Comparable.< infix(_:_:)() & 1) == 0)
    {
      v50 = *(v18 + 16);
      v50(v155, v34, v17);
      if (qword_101695148 != -1)
      {
        swift_once();
      }

      v63 = type metadata accessor for Logger();
      sub_1000076D4(v63, qword_1016C32C0);
      v64 = v141;
      v50(v141, v34, v17);
      v65 = Logger.logObject.getter();
      v52 = v17;
      v66 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        LODWORD(v142) = v66;
        v68 = v67;
        v140 = v67;
        v143 = swift_slowAlloc();
        v156[0] = v143;
        *v68 = 136446210;
        sub_101028238(&qword_1016969A0, 255, &type metadata accessor for Date);
        v69 = dispatch thunk of CustomStringConvertible.description.getter();
        v70 = v40;
        v72 = v71;
        v73 = *(v70 + 8);
        v73(v64, v17);
        v74 = sub_1000136BC(v69, v72, v156);

        v75 = v140;
        *(v140 + 4) = v74;
        _os_log_impl(&_mh_execute_header, v65, v142, "Fetched a saved dateOfFirstLookup %{public}s", v75, 0xCu);
        sub_100007BAC(v143);

        v73(v34, v17);
      }

      else
      {

        v84 = *(v40 + 8);
        v84(v64, v17);
        v84(v34, v17);
      }

      v76 = v150;
      v47 = v151;
      v48 = v155;
      v44 = v153;
      goto LABEL_26;
    }

    (*(v18 + 8))(v34, v17);
  }

  sub_1000D2A70(v148, v11, &unk_101696900, &unk_10138B1E0);
  v43 = v41(v11, 1, v17);
  v44 = v153;
  if (v43 != 1)
  {
    v45 = v142;
    (*(v18 + 32))(v142, v11, v17);
    v46 = static Date.> infix(_:_:)();
    v47 = v151;
    if ((v46 & 1) == 0)
    {
      (*(v18 + 8))(v45, v17);
      goto LABEL_17;
    }

    v48 = v155;
    if (qword_101695148 != -1)
    {
      swift_once();
    }

    v49 = type metadata accessor for Logger();
    sub_1000076D4(v49, qword_1016C32C0);
    v50 = *(v18 + 16);
    v51 = v139;
    v52 = v154;
    v50(v139, v45, v154);
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v138 = v55;
      v137 = swift_slowAlloc();
      v156[0] = v137;
      *v55 = 136446210;
      sub_101028238(&qword_1016969A0, 255, &type metadata accessor for Date);
      v136 = v53;
      v56 = dispatch thunk of CustomStringConvertible.description.getter();
      v58 = v57;
      v59 = *(v40 + 8);
      v135 = v54;
      v141 = v59;
      (v59)(v51, v52);
      v60 = sub_1000136BC(v56, v58, v156);
      v47 = v151;

      v61 = v138;
      *(v138 + 1) = v60;
      v62 = v136;
      _os_log_impl(&_mh_execute_header, v136, v135, "dateOfFirstLookup %{public}s is greater than current date for some reason, so setting it to current date and resetting throttling avlues", v61, 0xCu);
      sub_100007BAC(v137);
    }

    else
    {

      v141 = *(v40 + 8);
      (v141)(v51, v52);
    }

    sub_101022BF0();
    v44 = v153;
    v50(v48, v153, v52);
    v85 = v143;
    v50(v143, v44, v52);
    (*(v40 + 56))(v85, 0, 1, v52);
    sub_1010277CC(v85);
    (v141)(v142, v52);
    v76 = v150;
LABEL_26:
    v77 = v147;
    goto LABEL_27;
  }

  sub_10000B3A8(v11, &unk_101696900, &unk_10138B1E0);
LABEL_17:
  v48 = v155;
  v76 = v150;
  v77 = v147;
  if (qword_101695148 != -1)
  {
    swift_once();
  }

  v78 = type metadata accessor for Logger();
  sub_1000076D4(v78, qword_1016C32C0);
  v79 = Logger.logObject.getter();
  v80 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v79, v80))
  {
    v81 = swift_slowAlloc();
    *v81 = 0;
    _os_log_impl(&_mh_execute_header, v79, v80, "Saved date is nil, so setting it as the current date", v81, 2u);
  }

  v82 = v152;
  v50 = *(v152 + 16);
  v52 = v154;
  v50(v48, v44, v154);
  v83 = v143;
  v50(v143, v44, v52);
  (*(v82 + 56))(v83, 0, 1, v52);
  sub_1010277CC(v83);
  v47 = v151;
LABEL_27:
  v50(v144, v48, v52);
  v50(v145, v44, v52);
  DateInterval.init(start:end:)();
  if (qword_101695148 != -1)
  {
    swift_once();
  }

  v86 = type metadata accessor for Logger();
  v87 = sub_1000076D4(v86, qword_1016C32C0);
  v88 = v149;
  (*(v47 + 16))(v77, v76, v149);
  v147 = v87;
  v89 = Logger.logObject.getter();
  v90 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v89, v90))
  {
    v91 = swift_slowAlloc();
    v92 = swift_slowAlloc();
    v156[0] = v92;
    *v91 = 136315138;
    sub_101028238(&qword_10169D0F8, 255, &type metadata accessor for DateInterval);
    v93 = dispatch thunk of CustomStringConvertible.description.getter();
    v94 = v88;
    v96 = v95;
    v145 = *(v47 + 8);
    (v145)(v77, v94);
    v97 = sub_1000136BC(v93, v96, v156);

    *(v91 + 4) = v97;
    _os_log_impl(&_mh_execute_header, v89, v90, "Date interval is %s", v91, 0xCu);
    sub_100007BAC(v92);
    v44 = v153;
  }

  else
  {

    v145 = *(v47 + 8);
    (v145)(v77, v88);
  }

  v98 = v146;
  v99 = v154;
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v100 = qword_10177B348;
  v101 = *(qword_10177B348 + 40);
  OS_dispatch_queue.sync<A>(execute:)();
  sub_101073CC4(v156[0]);
  v103 = v102;

  v50(v98, v44, v99);
  v104 = Logger.logObject.getter();
  v105 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v104, v105))
  {
    v106 = swift_slowAlloc();
    v144 = swift_slowAlloc();
    v157[0] = v144;
    *v106 = 136315650;
    sub_101028238(&qword_1016969A0, 255, &type metadata accessor for Date);
    v107 = dispatch thunk of CustomStringConvertible.description.getter();
    v109 = v108;
    v146 = 0;
    v110 = *(v152 + 8);
    v110(v98, v99);
    v111 = sub_1000136BC(v107, v109, v157);

    *(v106 + 4) = v111;
    *(v106 + 12) = 2080;
    swift_beginAccess();
    v112 = dispatch thunk of CustomStringConvertible.description.getter();
    v114 = sub_1000136BC(v112, v113, v157);

    *(v106 + 14) = v114;
    *(v106 + 22) = 2048;
    *(v106 + 24) = v103;
    v115 = v105;
    v116 = v110;
    _os_log_impl(&_mh_execute_header, v104, v115, "Comparing current date %s with date of first lookup %s using a time interval %f", v106, 0x20u);
    swift_arrayDestroy();
    v117 = v149;
  }

  else
  {

    v116 = *(v152 + 8);
    v116(v98, v99);
    v117 = v149;
  }

  v118 = v150;
  DateInterval.duration.getter();
  if (v119 >= v103)
  {
    (v145)(v118, v117);
    v128 = v154;
    v116(v153, v154);
    sub_10000B3A8(v148, &unk_101696900, &unk_10138B1E0);
    v116(v155, v128);
    return 2;
  }

  else
  {
    v120 = *(v100 + 40);
    OS_dispatch_queue.sync<A>(execute:)();
    v121 = sub_101073CA8(v157[0]);

    v122 = sub_1010276A4();
    if (v123)
    {
      v124 = [objc_opt_self() standardUserDefaults];
      isa = UInt._bridgeToObjectiveC()().super.super.isa;
      v126 = String._bridgeToObjectiveC()();
      [v124 setObject:isa forKey:v126];

      v127 = 0;
    }

    else
    {
      v127 = v122;
    }

    v130 = Logger.logObject.getter();
    v131 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v130, v131))
    {
      v132 = swift_slowAlloc();
      *v132 = 134218240;
      *(v132 + 4) = v127;
      *(v132 + 12) = 2048;
      *(v132 + 14) = v121;
      _os_log_impl(&_mh_execute_header, v130, v131, "Comparing current number of alerts %lu with max alerts %lu", v132, 0x16u);
      v118 = v150;
    }

    (v145)(v118, v117);
    v133 = v154;
    v116(v153, v154);
    sub_10000B3A8(v148, &unk_101696900, &unk_10138B1E0);
    v116(v155, v133);
    return v127 < v121;
  }
}

void sub_101024014(uint64_t a1, unint64_t a2)
{
  v36 = a1;
  v37 = a2;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v35 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&qword_1016AF880, &unk_10138CE20);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v11 = &v34 - v10;
  v12 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v38 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v18 = &v34 - v17;
  __chkstk_darwin(v16);
  v20 = &v34 - v19;
  v21 = *(v2 + 136);
  WorkItemQueue.id.getter();
  (*(v4 + 56))(v20, 0, 1, v3);
  type metadata accessor for WorkItemQueue();
  static WorkItemQueue.currentWorkItemQueueIdentifier.getter();
  v22 = *(v8 + 56);
  sub_1000D2A70(v20, v11, &qword_1016980D0, &unk_10138F3B0);
  sub_1000D2A70(v18, &v11[v22], &qword_1016980D0, &unk_10138F3B0);
  v23 = *(v4 + 48);
  if (v23(v11, 1, v3) == 1)
  {
    sub_10000B3A8(v18, &qword_1016980D0, &unk_10138F3B0);
    sub_10000B3A8(v20, &qword_1016980D0, &unk_10138F3B0);
    if (v23(&v11[v22], 1, v3) == 1)
    {
      sub_10000B3A8(v11, &qword_1016980D0, &unk_10138F3B0);
      return;
    }
  }

  else
  {
    sub_1000D2A70(v11, v38, &qword_1016980D0, &unk_10138F3B0);
    if (v23(&v11[v22], 1, v3) != 1)
    {
      v30 = v35;
      (*(v4 + 32))(v35, &v11[v22], v3);
      sub_101028238(&qword_1016984A0, 255, &type metadata accessor for UUID);
      v31 = v38;
      v32 = dispatch thunk of static Equatable.== infix(_:_:)();
      v33 = *(v4 + 8);
      v33(v30, v3);
      sub_10000B3A8(v18, &qword_1016980D0, &unk_10138F3B0);
      sub_10000B3A8(v20, &qword_1016980D0, &unk_10138F3B0);
      v33(v31, v3);
      sub_10000B3A8(v11, &qword_1016980D0, &unk_10138F3B0);
      if (v32)
      {
        return;
      }

      goto LABEL_7;
    }

    sub_10000B3A8(v18, &qword_1016980D0, &unk_10138F3B0);
    sub_10000B3A8(v20, &qword_1016980D0, &unk_10138F3B0);
    (*(v4 + 8))(v38, v3);
  }

  sub_10000B3A8(v11, &qword_1016AF880, &unk_10138CE20);
LABEL_7:
  if (qword_101695150 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  sub_1000076D4(v24, qword_10177C4B0);
  v25 = v37;

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v39 = v29;
    *v28 = 136315138;
    *(v28 + 4) = sub_1000136BC(v36, v25, &v39);
    _os_log_impl(&_mh_execute_header, v26, v27, "%s is required to be called from a WorkItemQueue context!", v28, 0xCu);
    sub_100007BAC(v29);
  }
}

uint64_t sub_101024584()
{
  if (qword_101695148 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_1016C32C0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Find My onboarding is being presented, setting onboardingIsShowing to true", v4, 2u);
  }

  v5 = *(v0 + 16);

  *(v5 + 146) = 1;
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10102481C(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_101028A08;

  return sub_101024564();
}

uint64_t sub_1010248E4()
{
  if (qword_101695148 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_1016C32C0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Find My onboarding is no longer presented, setting onboardingIsShowing to false", v4, 2u);
  }

  v5 = *(v0 + 16);

  *(v5 + 146) = 0;
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_101024B78(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_101028A08;

  return sub_1010248C4();
}

uint64_t sub_101024C40()
{
  if (qword_101695148 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_1016C32C0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "PNP onboarding is being presented, setting onboardingIsShowing to true", v4, 2u);
  }

  v5 = *(v0 + 16);

  *(v5 + 145) = 1;
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_101024ED8(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_101028A08;

  return sub_101024C20();
}

uint64_t sub_101024FA0()
{
  if (qword_101695148 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_1016C32C0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "PNP onboarding is no longer presented, setting onboardingIsShowing to false", v4, 2u);
  }

  v5 = *(v0 + 16);

  *(v5 + 145) = 0;
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_101025234(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_1010252DC;

  return sub_101024F80();
}

uint64_t sub_1010252DC()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  v2[2](v2);
  _Block_release(v2);
  v4 = *(v6 + 8);

  return v4();
}

unint64_t sub_101025418(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0xD000000000000012;
    if (a1 != 2)
    {
      v5 = 0xD000000000000010;
    }

    v6 = 0xD000000000000020;
    if (!a1)
    {
      v6 = 0xD00000000000001FLL;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x736F4C6E49746F6ELL;
    v2 = 0xD00000000000001BLL;
    v3 = 0x7574617453646162;
    if (a1 != 7)
    {
      v3 = 0xD00000000000002CLL;
    }

    if (a1 != 6)
    {
      v2 = v3;
    }

    if (a1 != 4)
    {
      v1 = 0xD000000000000011;
    }

    if (a1 <= 5u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_101025584()
{
  v1 = type metadata accessor for UUID();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v3 = sub_1000BC4D4(&qword_101698E38, &unk_101395BA0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v9 - v5;
  swift_defaultActor_initialize();
  *(v0 + 112) = 0xD000000000000025;
  *(v0 + 120) = 0x80000001013F7DA0;
  *(v0 + 128) = 0;
  type metadata accessor for WorkItemQueue();
  v7 = type metadata accessor for WorkItemQueue.WarningOptions();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  UUID.init()();
  *(v0 + 136) = WorkItemQueue.__allocating_init(name:identifier:warningOptions:)();
  *(v0 + 144) = 0;
  *(v0 + 146) = 0;
  return v0;
}

uint64_t sub_1010256F0(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.initialLaunchProcessing()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for LocalFindableLostModeDetectionService();
  *v5 = v2;
  v5[1] = sub_100014744;

  return ActorServiceProtocol.initialLaunchProcessing()(v6, a2);
}

uint64_t sub_101025798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to ActorServiceProtocol.migrate(from:to:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for LocalFindableLostModeDetectionService();
  *v9 = v4;
  v9[1] = sub_100014744;

  return ActorServiceProtocol.migrate(from:to:)(a1, a2, v10, a4);
}

uint64_t sub_10102585C(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.firstLaunchSinceReboot()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for LocalFindableLostModeDetectionService();
  *v5 = v2;
  v5[1] = sub_100014744;

  return ActorServiceProtocol.firstLaunchSinceReboot()(v6, a2);
}

uint64_t sub_101025904(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.startup()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for LocalFindableLostModeDetectionService();
  *v5 = v2;
  v5[1] = sub_100014650;

  return ActorServiceProtocol.startup()(v6, a2);
}

uint64_t sub_1010259AC()
{
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_101025A3C;

  return sub_1010143D4();
}

uint64_t sub_101025A3C()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *v0;

  v4 = swift_task_alloc();
  *(v1 + 32) = v4;
  *v4 = v3;
  v4[1] = sub_100950E68;
  v5 = *(v1 + 16);

  return sub_101017F08();
}

uint64_t sub_101025B7C()
{
  v1 = *v0;
  type metadata accessor for LocalFindableLostModeDetectionService();
  sub_101028238(&unk_1016BC560, v2, type metadata accessor for LocalFindableLostModeDetectionService);
  return ActorServiceProtocol.description.getter();
}

uint64_t sub_101025C04()
{
  if (qword_101695148 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_1016C32C0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Remote UI did activate, setting isCurrentlyPresentingAlert to true", v4, 2u);
  }

  v5 = *(v0 + 16);

  *(v5 + 144) = 1;
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_101025D44()
{
  if (qword_101695148 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_1016C32C0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Remote UI did activate, setting isCurrentlyPresentingAlert to false", v4, 2u);
  }

  v5 = *(v0 + 16);

  *(v5 + 144) = 0;
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_101025E80()
{
  if (qword_101695148 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_1016C32C0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Remote UI did invalidate, setting isCurrentlyPresentingAlert to false", v4, 2u);
  }

  v5 = *(v0 + 16);

  *(v5 + 144) = 0;
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_101025F9C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014744;

  return sub_101025BE4();
}

uint64_t sub_101026028()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014744;

  return sub_101025D24();
}

uint64_t sub_1010260B4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014744;

  return sub_101025E60();
}

uint64_t sub_101026140(uint64_t a1, uint64_t a2)
{
  result = sub_101028238(&qword_1016C34E0, a2, type metadata accessor for LocalFindableLostModeDetectionService);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_101026228()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177C4B0);
  sub_1000076D4(v0, qword_10177C4B0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1010262A8(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_100014744;

  return v7();
}

uint64_t sub_101026390(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_100014744;

  return v8();
}

uint64_t sub_101026478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v25 - v11;
  sub_1000D2A70(a3, v25 - v11, &qword_101698C00, &qword_10138B570);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_10000B3A8(v12, &qword_101698C00, &qword_10138B570);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  TaskPriority.rawValue.getter();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = dispatch thunk of Actor.unownedExecutor.getter();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = String.utf8CString.getter() + 32;
    v20 = swift_allocObject();
    *(v20 + 16) = a4;
    *(v20 + 24) = a5;

    if (v18 | v16)
    {
      v26[0] = 0;
      v26[1] = 0;
      v21 = v26;
      v26[2] = v16;
      v26[3] = v18;
    }

    else
    {
      v21 = 0;
    }

    v25[1] = 7;
    v25[2] = v21;
    v25[3] = v19;
    v23 = swift_task_create();

    sub_10000B3A8(a3, &qword_101698C00, &qword_10138B570);

    return v23;
  }

LABEL_8:
  sub_10000B3A8(a3, &qword_101698C00, &qword_10138B570);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_101026774(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_101026814;

  return sub_101026DA8(a2, a3);
}

uint64_t sub_101026814(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v7 = *(v6 + 8);

  return v7();
}

uint64_t sub_101026924(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_1010269C4;

  return sub_101013CF8(a3);
}

uint64_t sub_1010269C4(char a1)
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

    return _swift_task_switch(sub_1003A1388, 0, 0);
  }
}

void sub_101026B10(uint64_t a1)
{
  if (a1)
  {
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    if ((swift_dynamicCast() & 1) == 0 || v11)
    {
      swift_errorRetain();
      if (qword_101695148 != -1)
      {
        swift_once();
      }

      v1 = type metadata accessor for Logger();
      sub_1000076D4(v1, qword_1016C32C0);
      swift_errorRetain();
      v2 = Logger.logObject.getter();
      v3 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v2, v3))
      {
        v4 = swift_slowAlloc();
        v5 = swift_slowAlloc();
        *v4 = 138412290;
        swift_errorRetain();
        v6 = _swift_stdlib_bridgeErrorToNSError();
        *(v4 + 4) = v6;
        *v5 = v6;
        _os_log_impl(&_mh_execute_header, v2, v3, "Error with disabling lost mode %@", v4, 0xCu);
        sub_10000B3A8(v5, &qword_10169BB30, &unk_10138B3C0);
      }

      else
      {
      }
    }
  }

  else
  {
    if (qword_101695148 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_1000076D4(v7, qword_1016C32C0);
    oslog = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v8, "Disabled lost mode", v9, 2u);
    }
  }
}

uint64_t sub_101026DA8(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_101026E74, 0, 0);
}

uint64_t sub_101026E74()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = swift_allocObject();
  v0[7] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = async function pointer to withTimeout<A>(_:block:)[1];

  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_101026F7C;

  return withTimeout<A>(_:block:)(v0 + 10, 0x40AAD21B3B700000, 3, &unk_1013F7FA8, v3, &type metadata for LocalAccountCheckResult);
}

uint64_t sub_101026F7C()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v7 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = sub_101027360;
  }

  else
  {
    v5 = *(v2 + 56);

    v4 = sub_101027098;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_101027098()
{
  v21 = v0;
  v1 = *(v0 + 80);
  if (qword_101694EA0 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 24);
  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_1016BB490);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v7 = *(v0 + 40);
    v6 = *(v0 + 48);
    v8 = *(v0 + 24);
    v9 = *(v0 + 32);
    v10 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v10 = 136446466;
    *(v10 + 4) = sub_1000136BC(0xD00000000000001FLL, 0x80000001013782B0, &v20);
    *(v10 + 12) = 2082;
    type metadata accessor for Peripheral();
    v19 = v1;
    sub_101028238(&qword_1016972A0, 255, &type metadata accessor for Peripheral);
    dispatch thunk of PeripheralProtocol.id.getter();
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = v12;

    (*(v7 + 8))(v6, v9);
    v14 = sub_1000136BC(v11, v13, &v20);
    v1 = v19;

    *(v10 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s succeeded for %{public}s", v10, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v15 = *(v0 + 24);
  }

  v16 = *(v0 + 48);

  v17 = *(v0 + 8);

  return v17(v1);
}

uint64_t sub_101027360()
{
  v26 = v0;
  v1 = v0[7];

  if (qword_101694EA0 != -1)
  {
    swift_once();
  }

  v2 = v0[9];
  v3 = v0[3];
  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_1016BB490);

  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v24 = v0[9];
    v8 = v0[5];
    v7 = v0[6];
    v10 = v0[3];
    v9 = v0[4];
    v11 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v25[0] = swift_slowAlloc();
    *v11 = 136446722;
    *(v11 + 4) = sub_1000136BC(0xD00000000000001FLL, 0x80000001013782B0, v25);
    *(v11 + 12) = 2082;
    type metadata accessor for Peripheral();
    sub_101028238(&qword_1016972A0, 255, &type metadata accessor for Peripheral);
    dispatch thunk of PeripheralProtocol.id.getter();
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;

    (*(v8 + 8))(v7, v9);
    v15 = sub_1000136BC(v12, v14, v25);

    *(v11 + 14) = v15;
    *(v11 + 22) = 2114;
    swift_errorRetain();
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 24) = v16;
    *v23 = v16;
    _os_log_impl(&_mh_execute_header, v5, v6, "%{public}s failed for %{public}s. Error %{public}@", v11, 0x20u);
    sub_10000B3A8(v23, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();
  }

  else
  {
    v17 = v0[3];
  }

  v18 = v0[9];
  v19 = v0[6];
  swift_willThrow();

  v20 = v0[1];
  v21 = v0[9];

  return v20();
}

uint64_t sub_1010276A4()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 valueForKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_10000B3A8(v7, &unk_1016A0B10, &qword_10139BF40);
    return 0;
  }
}

uint64_t sub_1010277CC(uint64_t a1)
{
  v2 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v12 - v4;
  v6 = [objc_opt_self() standardUserDefaults];
  sub_1000D2A70(a1, v5, &unk_101696900, &unk_10138B1E0);
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  isa = 0;
  if ((*(v8 + 48))(v5, 1, v7) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v8 + 8))(v5, v7);
  }

  v10 = String._bridgeToObjectiveC()();
  [v6 setObject:isa forKey:v10];

  swift_unknownObjectRelease();
  return sub_10000B3A8(a1, &unk_101696900, &unk_10138B1E0);
}

unint64_t sub_10102796C()
{
  result = qword_1016C34F0;
  if (!qword_1016C34F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C34F0);
  }

  return result;
}

uint64_t sub_1010279C0()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + ((*(v1 + 64) + ((*(v1 + 80) + 24) & ~*(v1 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_101022800(v2);
}

void sub_101027A60()
{
  v0 = sub_1010276A4();
  if (v1)
  {
    v2 = [objc_opt_self() standardUserDefaults];
    isa = UInt._bridgeToObjectiveC()().super.super.isa;
    v4 = String._bridgeToObjectiveC()();
    [v2 setObject:isa forKey:v4];

    v5 = 0;
  }

  else
  {
    v5 = v0;
  }

  if (qword_101695148 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000076D4(v6, qword_1016C32C0);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v7, v8))
  {

    if (v5 != -1)
    {
      goto LABEL_10;
    }

    __break(1u);
LABEL_14:
    __break(1u);
    return;
  }

  v9 = swift_slowAlloc();
  *v9 = 134218240;
  *(v9 + 4) = v5;
  *(v9 + 12) = 2048;
  v10 = __CFADD__(v5, 1);
  v11 = v5 + 1;
  if (v10)
  {
    goto LABEL_14;
  }

  *(v9 + 14) = v11;
  _os_log_impl(&_mh_execute_header, v7, v8, "Incrementing number of alerts from %lu to %lu", v9, 0x16u);

LABEL_10:
  v12 = [objc_opt_self() standardUserDefaults];
  v13 = UInt._bridgeToObjectiveC()().super.super.isa;
  v14 = String._bridgeToObjectiveC()();
  [v12 setObject:v13 forKey:v14];
}

uint64_t sub_101027C84@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*(type metadata accessor for UUID() - 8) + 80);
  v4 = *(v1 + 16);

  return sub_100E72518(a1);
}

uint64_t sub_101027CF8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014744;

  return sub_101026774(a1, v4, v5);
}

uint64_t sub_101027DC0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100014650;

  return sub_101026924(a1, v5, v4);
}

uint64_t sub_101027E78(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100014650;

  return sub_1010185BC(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_101027F40()
{
  v2 = *(sub_1000BC4D4(&qword_10169A098, &unk_101393410) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + v4);
  v6 = *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100014744;

  return sub_101019100(v0 + v3, v5);
}

uint64_t sub_101028060(uint64_t a1, char a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100014744;

  return sub_101019AD4(a1, a2 & 1);
}

uint64_t sub_101028108(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_101028170(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1010281D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_101028238(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_101028280(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100014744;

  return sub_101014B64(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_101028348()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100014744;

  return sub_1010159DC(v2, v3, v5);
}

uint64_t sub_1010283F4(void (*a1)(void), void (*a2)(void), uint64_t a3)
{
  a1(v3[2]);
  a2(v3[4]);
  v6 = v3[5];

  return _swift_deallocObject(v3, a3);
}

uint64_t sub_101028460(uint64_t a1, char a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_100014744;

  return sub_1010163F8(a1, a2 & 1, v6, v7, v9);
}

uint64_t sub_101028524()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100014744;

  return sub_101025234(v2, v3);
}

uint64_t sub_1010285D0()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100014744;

  return sub_1010262A8(v2, v3, v5);
}

uint64_t sub_101028690(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100014744;

  return sub_10026776C(a1, v5);
}

uint64_t sub_101028748()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100014744;

  return sub_101024ED8(v2, v3);
}

uint64_t sub_1010287F4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100014744;

  return sub_101024B78(v2, v3);
}

uint64_t sub_1010288A0(void (*a1)(void), uint64_t a2)
{
  a1(*(v2 + 16));
  v4 = *(v2 + 24);

  return _swift_deallocObject(v2, a2);
}

uint64_t sub_1010288F4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100014744;

  return sub_10102481C(v2, v3);
}

unint64_t sub_1010289B4()
{
  result = qword_1016C3528;
  if (!qword_1016C3528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C3528);
  }

  return result;
}

uint64_t sub_101028A0C(uint64_t a1)
{
  if (((*(a1 + 8) >> 60) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return (*(a1 + 8) >> 60) & 3;
  }
}

void *sub_101028A38(void *result, uint64_t a2)
{
  if (a2 < 3)
  {
    result[1] = result[1] & 0xCFFFFFFFFFFFFFFFLL | (a2 << 60);
  }

  else
  {
    *result = (a2 - 3);
    result[1] = 0x3000000000000000;
  }

  return result;
}

uint64_t sub_101028A70(void *a1, uint64_t a2, unint64_t a3)
{
  v7 = type metadata accessor for Endianness();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[4];
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryEncoding.container()();
  v20 = 0x404040504080407uLL >> (HIBYTE(a3) & 0x30);
  static Endianness.current.getter();
  sub_1002053B0();
  FixedWidthInteger.convert(to:)();
  (*(v8 + 8))(v11, v7);
  v20 = v16;
  sub_10015049C(v18, v19);
  dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
  if (!v3)
  {
    v13 = (a3 >> 60) & 3;
    if (((a3 >> 60) & 3) > 1)
    {
      if (v13 == 2)
      {
        v16 = a2;
        v17 = a3 & 0xCFFFFFFFFFFFFFFFLL;
        sub_10015049C(v18, v19);
        sub_10102933C();
      }

      else
      {
        sub_10015049C(v18, v19);
        sub_10030FB84();
      }
    }

    else if (v13)
    {
      LOBYTE(v16) = a2;
      sub_10015049C(v18, v19);
      sub_100B67990();
    }

    else
    {
      v16 = a2;
      v17 = a3;
      sub_10015049C(v18, v19);
      sub_10064D4CC();
    }

    dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
  }

  return sub_100007BAC(v18);
}

__int16 *sub_101028CF0@<X0>(uint64_t *a1@<X0>, __int16 **a2@<X8>)
{
  result = sub_101028F74(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_101028D38(unsigned __int8 a1, uint64_t *a2)
{
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      sub_10030FF74();
      v4 = &type metadata for AccessoryGenericPayload;
    }

    else
    {
      sub_101029294();
      v4 = &type metadata for LineUpEncryptedSerialNumberResponsePayload;
    }
  }

  else if (a1)
  {
    sub_1010292E8();
    v4 = &type metadata for LineUpVerifyFindMyNetworkIdResponsePayload;
  }

  else
  {
    sub_10064D76C();
    v4 = &type metadata for VerifyFindMyNetworkIdPayload;
  }

  sub_1000035D0(a2, a2[3]);
  result = swift_getDynamicType();
  if (v4 == result)
  {
    if (a1 > 1u)
    {
      if (a1 == 2)
      {
        sub_10001F280(a2, v8);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          sub_100007BAC(a2);
          return 0;
        }
      }

      else
      {
        sub_10001F280(a2, v8);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          goto LABEL_12;
        }
      }
    }

    else if (a1)
    {
      sub_10001F280(a2, v8);
      sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
      if (swift_dynamicCast())
      {
        sub_100007BAC(a2);
        return v7;
      }
    }

    else
    {
      sub_10001F280(a2, v8);
      sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
      if (swift_dynamicCast())
      {
LABEL_12:
        sub_100007BAC(a2);
        return v7;
      }
    }

    sub_101029240();
    swift_allocError();
    *v6 = 0;
    swift_willThrow();
    return sub_100007BAC(a2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

__int16 *sub_101028F74(uint64_t *a1)
{
  v3 = type metadata accessor for Endianness();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v18[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[4];
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryDecoding.container()();
  v9 = sub_10015049C(v20, v20[3]);
  sub_1002053B0();
  dispatch thunk of BinaryDecodingContaining.decode<A>(_:)();
  if (v1)
  {
    goto LABEL_14;
  }

  v21 = v18[0];
  static Endianness.current.getter();
  v9 = &v21;
  FixedWidthInteger.convert(to:)();
  (*(v4 + 8))(v7, v3);
  if (LOWORD(v19[0]) > 0x406u)
  {
    if (LOWORD(v19[0]) == 1031)
    {
      v10 = &type metadata for VerifyFindMyNetworkIdPayload;
      v14 = sub_10064D76C();
      v11 = 0;
      goto LABEL_13;
    }

    if (LOWORD(v19[0]) == 1032)
    {
      v10 = &type metadata for LineUpVerifyFindMyNetworkIdResponsePayload;
      v11 = 1;
      v12 = sub_1010292E8();
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  if (LOWORD(v19[0]) == 1028)
  {
    v10 = &type metadata for AccessoryGenericPayload;
    v11 = 2;
    v12 = sub_10030FF74();
    goto LABEL_11;
  }

  if (LOWORD(v19[0]) != 1029)
  {
LABEL_9:
    sub_101029240();
    swift_allocError();
    *v13 = 1;
    swift_willThrow();
LABEL_14:
    sub_100007BAC(v20);
    sub_100007BAC(a1);
    return v9;
  }

  v10 = &type metadata for LineUpEncryptedSerialNumberResponsePayload;
  v11 = 3;
  v12 = sub_101029294();
LABEL_11:
  v14 = v12;
LABEL_13:
  sub_10001F280(a1, v18);
  v19[3] = v10;
  v19[4] = v14;
  sub_1000280DC(v19);
  v15 = *(v14 + 8);
  dispatch thunk of BinaryDecodable.init(from:)();
  sub_10001F280(v19, v18);
  v9 = sub_101028D38(v11, v18);
  sub_100007BAC(v19);
  sub_100007BAC(v20);
  sub_100007BAC(a1);
  return v9;
}

unint64_t sub_101029240()
{
  result = qword_1016C3530;
  if (!qword_1016C3530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C3530);
  }

  return result;
}

unint64_t sub_101029294()
{
  result = qword_1016C3538;
  if (!qword_1016C3538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C3538);
  }

  return result;
}

unint64_t sub_1010292E8()
{
  result = qword_1016C3540;
  if (!qword_1016C3540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C3540);
  }

  return result;
}

unint64_t sub_10102933C()
{
  result = qword_1016C3548;
  if (!qword_1016C3548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C3548);
  }

  return result;
}

unint64_t sub_1010293A4()
{
  result = qword_1016C3550;
  if (!qword_1016C3550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C3550);
  }

  return result;
}

uint64_t sub_101029408(void *a1, int a2)
{
  v3 = a1[4];
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryEncoding.container()();
  v9 = a2;
  sub_100101824();
  v6 = FixedWidthInteger.data.getter();
  v7 = v4;
  sub_10015049C(v8, v8[3]);
  sub_100165078();
  dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
  sub_100016590(v6, v7);
  return sub_100007BAC(v8);
}

uint64_t sub_1010294D4@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  result = sub_1010295A0(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_10102951C(uint64_t a1)
{
  *(a1 + 8) = sub_10102954C();
  result = sub_10059C048();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_10102954C()
{
  result = qword_1016C3558;
  if (!qword_1016C3558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C3558);
  }

  return result;
}

uint64_t sub_1010295A0(uint64_t *a1)
{
  v3 = type metadata accessor for Endianness();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v5 = a1[4];
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryDecoding.container()();
  v6 = sub_10015049C(v15, v15[3]);
  v7 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  if (v1)
  {
    sub_100007BAC(v15);
    sub_100007BAC(a1);
  }

  else
  {
    v9 = v7;
    v10 = v8;
    sub_100017D5C(v7, v8);
    static Endianness.current.getter();
    sub_100101824();
    FixedWidthInteger.init(data:ofEndianness:)();
    if (v14)
    {
      v11 = 0;
    }

    else
    {
      v11 = v13;
    }

    v6 = sub_1010D99D0(v11);
    sub_100016590(v9, v10);
    sub_100007BAC(v15);
    sub_100007BAC(a1);
  }

  return v6;
}

void sub_10102976C()
{
  type metadata accessor for SharedBeaconRecord(319);
  if (v0 <= 0x3F)
  {
    sub_100EDEEB8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_101029838(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016C3750, &unk_1013F8688);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_10102A6FC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v15) = 0;
  type metadata accessor for SharedBeaconRecord(0);
  sub_10102A84C(&qword_1016A4918, type metadata accessor for SharedBeaconRecord);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    MyAccessoryFamilyShareEnvelope = type metadata accessor for FindMyAccessoryFamilyShareEnvelope(0);
    v15 = *(v3 + *(MyAccessoryFamilyShareEnvelope + 20));
    v14 = 1;
    sub_1000BC4D4(&qword_1016A56D8, &qword_1013B2B00);
    sub_10102A750(&qword_1016A56E0, &qword_1016A56E8);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v15 = *(v3 + *(MyAccessoryFamilyShareEnvelope + 24));
    v14 = 2;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_101029AA0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = type metadata accessor for SharedBeaconRecord(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000BC4D4(&qword_1016C3760, &qword_1013F8698);
  v24 = *(v8 - 8);
  v25 = v8;
  v9 = *(v24 + 64);
  __chkstk_darwin(v8);
  v11 = &v22 - v10;
  MyAccessoryFamilyShareEnvelope = type metadata accessor for FindMyAccessoryFamilyShareEnvelope(0);
  v13 = *(*(MyAccessoryFamilyShareEnvelope - 8) + 64);
  __chkstk_darwin(MyAccessoryFamilyShareEnvelope);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[3];
  v16 = a1[4];
  v26 = a1;
  sub_1000035D0(a1, v17);
  sub_10102A6FC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(v26);
  }

  v18 = v24;
  v19 = v15;
  LOBYTE(v28) = 0;
  sub_10102A84C(&qword_1016CAC80, type metadata accessor for SharedBeaconRecord);
  v20 = v25;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  sub_100591C20(v7, v19);
  sub_1000BC4D4(&qword_1016A56D8, &qword_1013B2B00);
  v27 = 1;
  v22 = sub_10102A750(&qword_1016A5730, &qword_1016A5738);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *(v19 + *(MyAccessoryFamilyShareEnvelope + 20)) = v28;
  v27 = 2;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v18 + 8))(v11, v20);
  *(v19 + *(MyAccessoryFamilyShareEnvelope + 24)) = v28;
  sub_10102A894(v19, v23, type metadata accessor for FindMyAccessoryFamilyShareEnvelope);
  sub_100007BAC(v26);
  return sub_10102A7EC(v19, type metadata accessor for FindMyAccessoryFamilyShareEnvelope);
}

uint64_t sub_101029E94(void *a1)
{
  v3 = sub_1000BC4D4(&qword_1016C3740, &qword_1013F8680);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  v8 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_10102A6A8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11[15] = 0;
  type metadata accessor for UUID();
  sub_10102A84C(&qword_101698330, &type metadata accessor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    v9 = *(type metadata accessor for FindMyAccessoryFamilyShareResponseEnvelope(0) + 20);
    v11[14] = 1;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_10102A058@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v34 = type metadata accessor for UUID();
  v30 = *(v34 - 8);
  v4 = *(v30 + 64);
  v5 = __chkstk_darwin(v34);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v31 = &v25 - v8;
  v9 = sub_1000BC4D4(&qword_1016C3768, &qword_1013F86A0);
  v10 = *(v9 - 8);
  v32 = v9;
  v33 = v10;
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v25 - v12;
  MyAccessoryFamilyShareResponseEnvelope = type metadata accessor for FindMyAccessoryFamilyShareResponseEnvelope(0);
  v15 = *(*(MyAccessoryFamilyShareResponseEnvelope - 8) + 64);
  __chkstk_darwin(MyAccessoryFamilyShareResponseEnvelope);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_10102A6A8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v26 = MyAccessoryFamilyShareResponseEnvelope;
  v27 = v7;
  v28 = v17;
  v19 = v30;
  v36 = 0;
  sub_10102A84C(&qword_101698300, &type metadata accessor for UUID);
  v20 = v31;
  v21 = v32;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v31 = *(v19 + 32);
  (v31)(v28, v20, v34);
  v35 = 1;
  v22 = v27;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v33 + 8))(v13, v21);
  v23 = v28;
  (v31)(&v28[*(v26 + 20)], v22, v34);
  sub_10102A894(v23, v29, type metadata accessor for FindMyAccessoryFamilyShareResponseEnvelope);
  sub_100007BAC(a1);
  return sub_10102A7EC(v23, type metadata accessor for FindMyAccessoryFamilyShareResponseEnvelope);
}

uint64_t sub_10102A41C(uint64_t a1)
{
  v2 = sub_10102A6FC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10102A458(uint64_t a1)
{
  v2 = sub_10102A6FC();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_10102A4C4()
{
  if (*v0)
  {
    result = 0x6564496572616873;
  }

  else
  {
    result = 0xD000000000000016;
  }

  *v0;
  return result;
}

uint64_t sub_10102A510@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000016 && 0x8000000101378420 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6564496572616873 && a2 == 0xEF7265696669746ELL)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_10102A600(uint64_t a1)
{
  v2 = sub_10102A6A8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10102A63C(uint64_t a1)
{
  v2 = sub_10102A6A8();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_10102A6A8()
{
  result = qword_1016C3748;
  if (!qword_1016C3748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C3748);
  }

  return result;
}

unint64_t sub_10102A6FC()
{
  result = qword_1016C3758;
  if (!qword_1016C3758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C3758);
  }

  return result;
}

uint64_t sub_10102A750(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000BC580(&qword_1016A56D8, &qword_1013B2B00);
    sub_10102A84C(a2, type metadata accessor for FamilyCryptoKeysV2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10102A7EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10102A84C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10102A894(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_10102A920()
{
  result = qword_1016C3770;
  if (!qword_1016C3770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C3770);
  }

  return result;
}

unint64_t sub_10102A978()
{
  result = qword_1016C3778;
  if (!qword_1016C3778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C3778);
  }

  return result;
}

unint64_t sub_10102A9D0()
{
  result = qword_1016C3780;
  if (!qword_1016C3780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C3780);
  }

  return result;
}

unint64_t sub_10102AA28()
{
  result = qword_1016C3788;
  if (!qword_1016C3788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C3788);
  }

  return result;
}

unint64_t sub_10102AA80()
{
  result = qword_1016C3790;
  if (!qword_1016C3790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C3790);
  }

  return result;
}

unint64_t sub_10102AAD8()
{
  result = qword_1016C3798;
  if (!qword_1016C3798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C3798);
  }

  return result;
}

uint64_t sub_10102AB2C()
{
  v0 = type metadata accessor for PrefixedDefaults();
  sub_100044B3C(v0, qword_1016C37A0);
  sub_1000076D4(v0, qword_1016C37A0);
  return PrefixedDefaults.init(prefix:)();
}

uint64_t sub_10102AB90(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1000BC4D4(&qword_101698C00, &qword_10138B570) - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10102AC2C, 0, 0);
}

uint64_t sub_10102AC2C()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v4 = swift_allocObject();
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = v2;

  sub_1008CE048(0, 0, v1, &unk_1013F8A20, v4);

  sub_10000B3A8(v1, &qword_101698C00, &qword_10138B570);
  v5 = sub_1000035D0((v2 + 112), *(v2 + 136));
  v6 = *v5;
  v0[4] = *v5;

  return _swift_task_switch(sub_10102AD54, v6, 0);
}

uint64_t sub_10102AD54()
{
  v1 = *(v0 + 16);
  v2 = *(*(v0 + 32) + 136);

  dispatch thunk of WorkItemQueue.enqueue(_:)();

  return _swift_task_switch(sub_10102AE10, v1, 0);
}

uint64_t sub_10102AE10()
{
  v1 = *(v0 + 16);
  sub_10102AFC0();
  sub_10102B364();
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_10102AEAC;
  v3 = *(v0 + 16);

  return sub_10102B4F4();
}

uint64_t sub_10102AEAC()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 24);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_10102AFC0()
{
  v1 = v0;
  v2 = sub_1000BC4D4(&unk_1016B0FE0, &unk_101391980);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v24 - v4;
  v6 = type metadata accessor for DispatchQoS.QoSClass();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000BC4D4(&qword_1016C3AC0, &unk_1013F8A98);
  v12 = *(v11 - 8);
  v24 = v11;
  v25 = v12;
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v24 - v14;
  v16 = *(*sub_1000035D0((v0 + 152), *(v0 + 176)) + 24);

  v17 = AnyCurrentValuePublisher.publisher.getter();

  v27 = v17;
  sub_1000BC488();
  (*(v7 + 104))(v10, enum case for DispatchQoS.QoSClass.default(_:), v6);
  v18 = static OS_dispatch_queue.global(qos:)();
  (*(v7 + 8))(v10, v6);
  v26 = v18;
  v19 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v19 - 8) + 56))(v5, 1, 1, v19);
  sub_1000BC4D4(&unk_1016B2A90, &unk_10138CBC0);
  sub_1000041A4(&qword_101697B80, &unk_1016B2A90, &unk_10138CBC0);
  sub_1004682F0();
  Publisher.receive<A>(on:options:)();
  sub_10000B3A8(v5, &unk_1016B0FE0, &unk_101391980);

  swift_allocObject();
  swift_weakInit();
  sub_1000041A4(&qword_1016C3AC8, &qword_1016C3AC0, &unk_1013F8A98);
  v20 = v24;
  v21 = Publisher<>.sink(receiveValue:)();

  (*(v25 + 8))(v15, v20);
  v22 = *(v1 + 240);
  *(v1 + 240) = v21;
}

uint64_t sub_10102B364()
{
  v1 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v12 - v3;
  v5 = *(v0 + 192);
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = *(v5 + 32);
  v8 = *(v5 + 40);
  *(v5 + 32) = &unk_1013F8A58;
  *(v5 + 40) = v6;

  sub_1000BB27C(v7);

  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v5;
  swift_unknownObjectRetain();
  sub_1008CE048(0, 0, v4, &unk_1013F8A60, v10);

  return sub_10000B3A8(v4, &qword_101698C00, &qword_10138B570);
}

uint64_t sub_10102B4F4()
{
  v1[19] = v0;
  v2 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  v1[20] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[21] = swift_task_alloc();
  v4 = type metadata accessor for SharedBeaconRecord(0);
  v1[22] = v4;
  v5 = *(v4 - 8);
  v1[23] = v5;
  v6 = *(v5 + 64) + 15;
  v1[24] = swift_task_alloc();
  v7 = type metadata accessor for MemberSharingCircle();
  v1[25] = v7;
  v8 = *(v7 - 8);
  v1[26] = v8;
  v9 = *(v8 + 64) + 15;
  v1[27] = swift_task_alloc();
  v10 = type metadata accessor for UUID();
  v1[28] = v10;
  v11 = *(v10 - 8);
  v1[29] = v11;
  v1[30] = *(v11 + 64);
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v12 = type metadata accessor for OwnerSharingCircle();
  v1[34] = v12;
  v13 = *(v12 - 8);
  v1[35] = v13;
  v14 = *(v13 + 64) + 15;
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v15 = *(*(sub_1000BC4D4(&qword_101698E40, &unk_101390D30) - 8) + 64) + 15;
  v1[39] = swift_task_alloc();

  return _swift_task_switch(sub_10102B774, v0, 0);
}

uint64_t sub_10102B774()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 152);
  v3 = OBJC_IVAR____TtC12searchpartyd20SharesRemovalManager__isFindMyAppInstalledCached;
  *(v0 + 320) = OBJC_IVAR____TtC12searchpartyd20SharesRemovalManager__isFindMyAppInstalledCached;
  swift_beginAccess();
  sub_1000D2A70(v2 + v3, v1, &qword_101698E40, &unk_101390D30);
  LOBYTE(v2) = sub_101030A90();
  sub_10000B3A8(v1, &qword_101698E40, &unk_101390D30);
  if ((v2 & 1) != 0 || (v4 = *(v0 + 312), v5 = *(v0 + 152), v6 = OBJC_IVAR____TtC12searchpartyd20SharesRemovalManager__isThisMeDeviceCached, swift_beginAccess(), sub_1000D2A70(v5 + v6, v4, &qword_101698E40, &unk_101390D30), LOBYTE(v5) = sub_101030A90(), sub_10000B3A8(v4, &qword_101698E40, &unk_101390D30), (v5 & 1) == 0))
  {
    v7 = *(v0 + 152);
    if (sub_10102E218())
    {
      v8 = *(*(v0 + 152) + 208);
      *(v0 + 328) = v8;
      v9 = sub_10102BBF8;
      v10 = 0;

      return _swift_task_switch(v9, v8, v10);
    }
  }

  v11 = *(*(v0 + 152) + 192);
  v12 = objc_opt_self();
  v13 = [v12 defaultWorkspace];
  if (!v13)
  {
    __break(1u);
    goto LABEL_18;
  }

  v14 = v13;
  v15 = *(v0 + 320);
  v16 = *(v0 + 152);
  v17 = *(v11 + 16);
  v18 = *(v11 + 24);
  v19 = String._bridgeToObjectiveC()();
  v20 = [v14 applicationIsInstalled:v19];

  swift_beginAccess();
  sub_1010314B0(v20);
  swift_endAccess();
  v21 = *(*sub_1000035D0((v16 + 152), *(v16 + 176)) + 24);

  AnyCurrentValuePublisher.value.getter();

  LOBYTE(v19) = *(v0 + 468) == 1;
  swift_beginAccess();
  sub_1010314B0(v19);
  swift_endAccess();
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v22 = *(v0 + 152);
  v23 = type metadata accessor for Logger();
  sub_1000076D4(v23, qword_10177A560);
  swift_retain_n();
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v24, v25))
  {
    v35 = *(v0 + 152);

    goto LABEL_14;
  }

  v26 = swift_slowAlloc();
  *v26 = 67109376;
  v27 = [v12 defaultWorkspace];
  v28 = *(v0 + 152);
  if (!v27)
  {
LABEL_18:

    __break(1u);
    return _swift_task_switch(v9, v8, v10);
  }

  v29 = v27;
  v30 = *(v11 + 16);
  v31 = *(v11 + 24);
  v32 = String._bridgeToObjectiveC()();
  v33 = [v29 applicationIsInstalled:v32];

  *(v26 + 4) = v33;

  *(v26 + 8) = 1024;
  v34 = *(*sub_1000035D0((v16 + 152), *(v16 + 176)) + 24);

  AnyCurrentValuePublisher.value.getter();

  *(v26 + 10) = *(v0 + 469) == 1;

  _os_log_impl(&_mh_execute_header, v24, v25, "SharesRemovalManager: 3. cached isInstalled: %{BOOL}d, isMeDevice: %{BOOL}d", v26, 0xEu);

LABEL_14:

  v37 = *(v0 + 304);
  v36 = *(v0 + 312);
  v39 = *(v0 + 288);
  v38 = *(v0 + 296);
  v41 = *(v0 + 256);
  v40 = *(v0 + 264);
  v42 = *(v0 + 248);
  v43 = *(v0 + 216);
  v44 = *(v0 + 192);
  v45 = *(v0 + 168);

  v46 = *(v0 + 8);

  return v46();
}

uint64_t sub_10102BBF8()
{
  v1 = *(v0 + 328);
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 336) = v3;
  v4 = sub_1000BC4D4(&unk_101698BD0, &unk_10138C210);
  *v3 = v0;
  v3[1] = sub_10102BCE4;
  v5 = *(v0 + 328);

  return unsafeBlocking<A>(context:_:)(v0 + 136, 0xD000000000000010, 0x800000010134A8C0, sub_100111B10, v5, v4);
}

uint64_t sub_10102BCE4()
{
  v1 = *(*v0 + 336);
  v2 = *(*v0 + 328);
  v4 = *v0;

  return _swift_task_switch(sub_10102BDFC, v2, 0);
}

uint64_t sub_10102BDFC()
{
  v1 = v0[19];
  v0[43] = v0[17];
  return _swift_task_switch(sub_10102BE20, v1, 0);
}

uint64_t sub_10102BE20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[43];
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = 0;
    v7 = v3[34];
    v8 = v3[35];
    v29 = v7;
    v31 = v3[43];
    while (v6 < *(v4 + 16))
    {
      v9 = v3[38];
      v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v11 = *(v8 + 72);
      sub_101032144(v3[43] + v10 + v11 * v6, v9, type metadata accessor for OwnerSharingCircle);
      v12 = v3[38];
      if (*(v9 + *(v7 + 28)) == 2)
      {
        sub_1010321C4(v12, v3[37], type metadata accessor for OwnerSharingCircle);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_101123FE4(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v14 = _swiftEmptyArrayStorage[2];
        v13 = _swiftEmptyArrayStorage[3];
        if (v14 >= v13 >> 1)
        {
          sub_101123FE4(v13 > 1, v14 + 1, 1);
        }

        v15 = v3[37];
        _swiftEmptyArrayStorage[2] = v14 + 1;
        a1 = sub_1010321C4(v15, _swiftEmptyArrayStorage + v10 + v14 * v11, type metadata accessor for OwnerSharingCircle);
        v7 = v29;
        v4 = v31;
      }

      else
      {
        a1 = sub_10103222C(v12, type metadata accessor for OwnerSharingCircle);
      }

      if (v5 == ++v6)
      {
        v16 = v3[43];
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:

    v17 = _swiftEmptyArrayStorage[2];
    if (v17)
    {
      v18 = v3[35];
      v32 = v3[34];
      v19 = v3[29];
      sub_101123D4C(0, v17, 0);
      v20 = _swiftEmptyArrayStorage + ((*(v18 + 80) + 32) & ~*(v18 + 80));
      v30 = *(v18 + 72);
      do
      {
        v21 = v3[36];
        v22 = v3[33];
        v23 = v3[28];
        sub_101032144(v20, v21, type metadata accessor for OwnerSharingCircle);
        (*(v19 + 16))(v22, v21 + *(v32 + 20), v23);
        sub_10103222C(v21, type metadata accessor for OwnerSharingCircle);
        v25 = _swiftEmptyArrayStorage[2];
        v24 = _swiftEmptyArrayStorage[3];
        if (v25 >= v24 >> 1)
        {
          sub_101123D4C(v24 > 1, v25 + 1, 1);
        }

        v26 = v3[33];
        v27 = v3[28];
        _swiftEmptyArrayStorage[2] = v25 + 1;
        (*(v19 + 32))(_swiftEmptyArrayStorage + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v25, v26, v27);
        v20 += v30;
        --v17;
      }

      while (v17);
    }

    v3[44] = _swiftEmptyArrayStorage;
    a2 = v3[41];
    a1 = sub_10102C16C;
    a3 = 0;
  }

  return _swift_task_switch(a1, a2, a3);
}

uint64_t sub_10102C16C()
{
  v1 = *(v0 + 328);
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 360) = v3;
  v4 = sub_1000BC4D4(&unk_101698C40, &qword_10138C1C0);
  *v3 = v0;
  v3[1] = sub_10102C258;
  v5 = *(v0 + 328);

  return unsafeBlocking<A>(context:_:)(v0 + 144, 0xD000000000000010, 0x800000010134A8C0, sub_10010EE68, v5, v4);
}

uint64_t sub_10102C258()
{
  v1 = *(*v0 + 360);
  v2 = *(*v0 + 328);
  v4 = *v0;

  return _swift_task_switch(sub_10102C370, v2, 0);
}

uint64_t sub_10102C370()
{
  v1 = v0[19];
  v0[46] = v0[18];
  return _swift_task_switch(sub_10102C390, v1, 0);
}

uint64_t sub_10102C390()
{
  v1 = *(v0 + 368);
  v2 = *(v1 + 16);
  *(v0 + 376) = v2;
  if (v2)
  {
    v4 = *(v0 + 200);
    v3 = *(v0 + 208);
    v5 = *(v3 + 80);
    *(v0 + 456) = v5;
    v6 = *(v3 + 72);
    v7 = *(v0 + 352);
    *(v0 + 392) = 0;
    *(v0 + 400) = v7;
    *(v0 + 384) = v6;
    v8 = *(v0 + 328);
    sub_101032144(v1 + ((v5 + 32) & ~v5), *(v0 + 216), type metadata accessor for MemberSharingCircle);
    *(v0 + 460) = *(v4 + 24);
    v9 = sub_10102C9D8;
    v10 = v8;
    v11 = 0;

    return _swift_task_switch(v9, v10, v11);
  }

  v12 = *(v0 + 352);
  v13 = *(v12 + 16);
  if (v13)
  {
    v14 = *(v0 + 232);
    sub_101123BB8(0, v13, 0);
    v15 = *(v14 + 16);
    v14 += 16;
    v16 = v12 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
    v69 = *(v14 + 56);
    v70 = v15;
    v67 = v12;
    v68 = (v14 - 8);
    do
    {
      v17 = *(v0 + 256);
      v18 = *(v0 + 224);
      v70(v17, v16, v18);
      v19 = UUID.uuidString.getter();
      v21 = v20;
      (*v68)(v17, v18);
      v23 = _swiftEmptyArrayStorage[2];
      v22 = _swiftEmptyArrayStorage[3];
      if (v23 >= v22 >> 1)
      {
        sub_101123BB8((v22 > 1), v23 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v23 + 1;
      v24 = &_swiftEmptyArrayStorage[2 * v23];
      v24[4] = v19;
      v24[5] = v21;
      v16 += v69;
      --v13;
    }

    while (v13);
    v12 = v67;
  }

  v25 = *(v0 + 152);
  swift_beginAccess();
  sub_101031148(_swiftEmptyArrayStorage);
  swift_endAccess();
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  sub_1000076D4(v26, qword_10177A560);

  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 134217984;
    v30 = *(v12 + 16);

    *(v29 + 4) = v30;

    _os_log_impl(&_mh_execute_header, v27, v28, "SharesRemovalManager: 2. saved %ld revokedCircles.", v29, 0xCu);
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  v31 = *(*(v0 + 152) + 192);
  v32 = objc_opt_self();
  v33 = [v32 defaultWorkspace];
  if (!v33)
  {
    __break(1u);
    goto LABEL_27;
  }

  v34 = v33;
  v35 = *(v0 + 320);
  v36 = *(v0 + 152);
  v37 = *(v31 + 16);
  v38 = *(v31 + 24);
  v39 = String._bridgeToObjectiveC()();
  v40 = [v34 applicationIsInstalled:v39];

  swift_beginAccess();
  sub_1010314B0(v40);
  swift_endAccess();
  v41 = *(*sub_1000035D0((v36 + 152), *(v36 + 176)) + 24);

  AnyCurrentValuePublisher.value.getter();

  LOBYTE(v39) = *(v0 + 468) == 1;
  swift_beginAccess();
  sub_1010314B0(v39);
  swift_endAccess();
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v42 = *(v0 + 152);
  sub_1000076D4(v26, qword_10177A560);
  swift_retain_n();
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v43, v44))
  {
    v54 = *(v0 + 152);

    goto LABEL_23;
  }

  v45 = swift_slowAlloc();
  *v45 = 67109376;
  v46 = [v32 defaultWorkspace];
  v47 = *(v0 + 152);
  if (!v46)
  {
LABEL_27:

    __break(1u);
    return _swift_task_switch(v9, v10, v11);
  }

  v48 = v46;
  v49 = *(v31 + 16);
  v50 = *(v31 + 24);
  v51 = String._bridgeToObjectiveC()();
  v52 = [v48 applicationIsInstalled:v51];

  *(v45 + 4) = v52;

  *(v45 + 8) = 1024;
  v53 = *(*sub_1000035D0((v36 + 152), *(v36 + 176)) + 24);

  AnyCurrentValuePublisher.value.getter();

  *(v45 + 10) = *(v0 + 469) == 1;

  _os_log_impl(&_mh_execute_header, v43, v44, "SharesRemovalManager: 3. cached isInstalled: %{BOOL}d, isMeDevice: %{BOOL}d", v45, 0xEu);

LABEL_23:

  v56 = *(v0 + 304);
  v55 = *(v0 + 312);
  v58 = *(v0 + 288);
  v57 = *(v0 + 296);
  v60 = *(v0 + 256);
  v59 = *(v0 + 264);
  v61 = *(v0 + 248);
  v62 = *(v0 + 216);
  v63 = *(v0 + 192);
  v64 = *(v0 + 168);

  v65 = *(v0 + 8);

  return v65();
}

uint64_t sub_10102C9D8()
{
  v1 = *(v0 + 460);
  v2 = *(v0 + 328);
  v3 = *(v0 + 256);
  v4 = *(v0 + 232);
  v5 = *(v0 + 216);
  v6 = *(v0 + 224);
  v7 = *(v4 + 16);
  *(v0 + 408) = v7;
  *(v0 + 416) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v3, v5 + v1, v6);
  v8 = *(v4 + 80);
  *(v0 + 464) = v8;
  v9 = (v8 + 24) & ~v8;
  v10 = swift_allocObject();
  *(v0 + 424) = v10;
  *(v10 + 16) = v2;
  v11 = *(v4 + 32);
  *(v0 + 432) = v11;
  *(v0 + 440) = (v4 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v11(v10 + v9, v3, v6);
  v12 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v13 = swift_task_alloc();
  *(v0 + 448) = v13;
  *v13 = v0;
  v13[1] = sub_10102CB58;
  v15 = *(v0 + 160);
  v14 = *(v0 + 168);

  return unsafeBlocking<A>(context:_:)(v14, 0xD000000000000010, 0x800000010134A8C0, sub_1010321AC, v10, v15);
}

uint64_t sub_10102CB58()
{
  v1 = *(*v0 + 448);
  v2 = *(*v0 + 424);
  v3 = *(*v0 + 152);
  v5 = *v0;

  return _swift_task_switch(sub_10102CC84, v3, 0);
}

uint64_t sub_10102CC84()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 168);
  if ((*(*(v0 + 184) + 48))(v2, 1, v1) == 1)
  {
    sub_10103222C(*(v0 + 216), type metadata accessor for MemberSharingCircle);
    sub_10000B3A8(v2, &unk_101698C30, &unk_101392630);
LABEL_10:
    v18 = *(v0 + 400);
    goto LABEL_11;
  }

  v3 = *(v0 + 192);
  sub_1010321C4(v2, v3, type metadata accessor for SharedBeaconRecord);
  if (*(v3 + *(v1 + 64)) != 2)
  {
    v19 = *(v0 + 216);
    sub_10103222C(*(v0 + 192), type metadata accessor for SharedBeaconRecord);
    sub_10103222C(v19, type metadata accessor for MemberSharingCircle);
    goto LABEL_10;
  }

  v4 = *(v0 + 416);
  v5 = *(v0 + 400);
  (*(v0 + 408))(*(v0 + 248), *(v0 + 216) + *(*(v0 + 200) + 28), *(v0 + 224));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + 400);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_100A5BFE0(0, v7[2] + 1, 1, *(v0 + 400));
  }

  v9 = v7[2];
  v8 = v7[3];
  if (v9 >= v8 >> 1)
  {
    v7 = sub_100A5BFE0(v8 > 1, v9 + 1, 1, v7);
  }

  v11 = *(v0 + 432);
  v10 = *(v0 + 440);
  v12 = *(v0 + 464);
  v13 = *(v0 + 248);
  v14 = *(v0 + 224);
  v15 = *(v0 + 232);
  v16 = *(v0 + 216);
  sub_10103222C(*(v0 + 192), type metadata accessor for SharedBeaconRecord);
  sub_10103222C(v16, type metadata accessor for MemberSharingCircle);
  v7[2] = v9 + 1;
  v17 = (v12 + 32) & ~v12;
  v18 = v7;
  v11(v7 + v17 + *(v15 + 72) * v9, v13, v14);
LABEL_11:
  v20 = *(v0 + 392) + 1;
  if (v20 != *(v0 + 376))
  {
    *(v0 + 392) = v20;
    *(v0 + 400) = v18;
    v35 = *(v0 + 328);
    v36 = *(v0 + 200);
    sub_101032144(*(v0 + 368) + ((*(v0 + 456) + 32) & ~*(v0 + 456)) + *(v0 + 384) * v20, *(v0 + 216), type metadata accessor for MemberSharingCircle);
    *(v0 + 460) = *(v36 + 24);
    v37 = sub_10102C9D8;
    v38 = v35;
    v39 = 0;

    return _swift_task_switch(v37, v38, v39);
  }

  v21 = *(v0 + 368);

  v22 = v18[2];
  if (v22)
  {
    v85 = v0;
    v23 = *(v0 + 232);
    sub_101123BB8(0, v22, 0);
    v24 = *(v23 + 16);
    v23 += 16;
    v82 = v18;
    v25 = v18 + ((*(v23 + 64) + 32) & ~*(v23 + 64));
    v83 = *(v23 + 56);
    v84 = v24;
    v26 = (v23 - 8);
    do
    {
      v27 = *(v85 + 256);
      v28 = *(v85 + 224);
      v84(v27, v25, v28);
      v29 = UUID.uuidString.getter();
      v31 = v30;
      (*v26)(v27, v28);
      v33 = _swiftEmptyArrayStorage[2];
      v32 = _swiftEmptyArrayStorage[3];
      if (v33 >= v32 >> 1)
      {
        sub_101123BB8((v32 > 1), v33 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v33 + 1;
      v34 = &_swiftEmptyArrayStorage[2 * v33];
      v34[4] = v29;
      v34[5] = v31;
      v25 += v83;
      --v22;
    }

    while (v22);
    v0 = v85;
    v18 = v82;
  }

  v40 = *(v0 + 152);
  swift_beginAccess();
  sub_101031148(_swiftEmptyArrayStorage);
  swift_endAccess();
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v41 = type metadata accessor for Logger();
  sub_1000076D4(v41, qword_10177A560);

  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 134217984;
    v45 = v18[2];

    *(v44 + 4) = v45;

    _os_log_impl(&_mh_execute_header, v42, v43, "SharesRemovalManager: 2. saved %ld revokedCircles.", v44, 0xCu);
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  v46 = *(*(v0 + 152) + 192);
  v47 = objc_opt_self();
  v48 = [v47 defaultWorkspace];
  if (!v48)
  {
    __break(1u);
LABEL_37:

    __break(1u);
    return _swift_task_switch(v37, v38, v39);
  }

  v49 = v48;
  v50 = *(v0 + 320);
  v51 = *(v0 + 152);
  v52 = *(v46 + 16);
  v53 = *(v46 + 24);
  v54 = String._bridgeToObjectiveC()();
  v55 = [v49 applicationIsInstalled:v54];

  swift_beginAccess();
  sub_1010314B0(v55);
  swift_endAccess();
  v56 = *(*sub_1000035D0((v51 + 152), *(v51 + 176)) + 24);

  AnyCurrentValuePublisher.value.getter();

  LOBYTE(v54) = *(v0 + 468) == 1;
  swift_beginAccess();
  sub_1010314B0(v54);
  swift_endAccess();
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v57 = *(v0 + 152);
  sub_1000076D4(v41, qword_10177A560);
  swift_retain_n();
  v58 = Logger.logObject.getter();
  v59 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v58, v59))
  {
    v69 = *(v0 + 152);

    goto LABEL_33;
  }

  v60 = swift_slowAlloc();
  *v60 = 67109376;
  v61 = [v47 defaultWorkspace];
  v62 = *(v0 + 152);
  if (!v61)
  {
    goto LABEL_37;
  }

  v63 = v61;
  v64 = *(v46 + 16);
  v65 = *(v46 + 24);
  v66 = String._bridgeToObjectiveC()();
  v67 = [v63 applicationIsInstalled:v66];

  *(v60 + 4) = v67;

  *(v60 + 8) = 1024;
  v68 = *(*sub_1000035D0((v51 + 152), *(v51 + 176)) + 24);

  AnyCurrentValuePublisher.value.getter();

  *(v60 + 10) = *(v0 + 469) == 1;

  _os_log_impl(&_mh_execute_header, v58, v59, "SharesRemovalManager: 3. cached isInstalled: %{BOOL}d, isMeDevice: %{BOOL}d", v60, 0xEu);

LABEL_33:

  v71 = *(v0 + 304);
  v70 = *(v0 + 312);
  v73 = *(v0 + 288);
  v72 = *(v0 + 296);
  v75 = *(v0 + 256);
  v74 = *(v0 + 264);
  v76 = *(v0 + 248);
  v77 = *(v0 + 216);
  v78 = *(v0 + 192);
  v79 = *(v0 + 168);

  v80 = *(v0 + 8);

  return v80();
}

uint64_t sub_10102D494(uint64_t a1, uint64_t a2)
{
  v2[9] = a1;
  v2[10] = a2;
  v3 = *(*(sub_1000BC4D4(&qword_101698E48, &qword_1013F8A00) - 8) + 64) + 15;
  v2[11] = swift_task_alloc();

  return _swift_task_switch(sub_10102D530, 0, 0);
}

uint64_t sub_10102D530()
{
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[12] = sub_1000076D4(v1, qword_10177A560);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "SharesRemovalManager: 1. check shares cleanup conditions.", v4, 2u);
  }

  v5 = swift_task_alloc();
  v0[13] = v5;
  *v5 = v0;
  v5[1] = sub_10102D680;
  v6 = v0[10];

  return sub_10102B4F4();
}

uint64_t sub_10102D680()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 80);
  v4 = *v0;

  return _swift_task_switch(sub_10102D790, v2, 0);
}

uint64_t sub_10102D790()
{
  v1 = *(v0 + 80);
  *(v0 + 184) = sub_10102E218() & 1;

  return _swift_task_switch(sub_10102D800, 0, 0);
}

uint64_t sub_10102D800()
{
  if (*(v0 + 184) == 1)
  {
    v1 = *(v0 + 96);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "SharesRemovalManager: 4. shares cleanup is required.", v4, 2u);
    }

    v5 = *(v0 + 80);

    return _swift_task_switch(sub_10102D930, v5, 0);
  }

  else
  {
    v6 = *(v0 + 88);
    **(v0 + 72) = 0;

    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_10102D930()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = OBJC_IVAR____TtC12searchpartyd20SharesRemovalManager__revokedCircles;
  v0[14] = OBJC_IVAR____TtC12searchpartyd20SharesRemovalManager__revokedCircles;
  swift_beginAccess();
  sub_1000D2A70(v2 + v3, v1, &qword_101698E48, &qword_1013F8A00);
  v0[15] = sub_101030DDC();
  sub_10000B3A8(v1, &qword_101698E48, &qword_1013F8A00);

  return _swift_task_switch(sub_10102DA00, 0, 0);
}

uint64_t sub_10102DA00()
{
  v1 = v0[15];
  v2 = v1[2];
  v0[16] = v2;
  if (v2)
  {
    v0[17] = 0;
    v4 = v1[4];
    v3 = v1[5];
    v0[18] = v3;

    v5 = swift_task_alloc();
    v0[19] = v5;
    *v5 = v0;
    v5[1] = sub_10102DB0C;
    v6 = v0[10];

    return sub_10102E2E8(v4, v3);
  }

  else
  {
    v8 = v0[10];

    return _swift_task_switch(sub_10102DD3C, v8, 0);
  }
}

uint64_t sub_10102DB0C()
{
  v1 = *(*v0 + 152);
  v2 = *(*v0 + 144);
  v4 = *v0;

  return _swift_task_switch(sub_10102DC24, 0, 0);
}

uint64_t sub_10102DC24()
{
  v1 = v0[17] + 1;
  if (v1 == v0[16])
  {
    v2 = v0[15];
    v3 = v0[10];

    return _swift_task_switch(sub_10102DD3C, v3, 0);
  }

  else
  {
    v0[17] = v1;
    v4 = v0[15] + 16 * v1;
    v6 = *(v4 + 32);
    v5 = *(v4 + 40);
    v0[18] = v5;

    v7 = swift_task_alloc();
    v0[19] = v7;
    *v7 = v0;
    v7[1] = sub_10102DB0C;
    v8 = v0[10];

    return sub_10102E2E8(v6, v5);
  }
}

uint64_t sub_10102DD3C()
{
  v1 = v0[11];
  sub_1000D2A70(v0[10] + v0[14], v1, &qword_101698E48, &qword_1013F8A00);
  v0[20] = sub_101030DDC();
  sub_10000B3A8(v1, &qword_101698E48, &qword_1013F8A00);

  return _swift_task_switch(sub_10102DDE8, 0, 0);
}

uint64_t sub_10102DDE8()
{
  v0[8] = v0[20];
  v1 = async function pointer to Sequence.asyncFilter(_:)[1];

  v2 = swift_task_alloc();
  v0[21] = v2;
  v3 = sub_1000BC4D4(&qword_1016B0470, &qword_10138EB80);
  v4 = sub_1000041A4(&qword_1016C3AB8, &qword_1016B0470, &qword_10138EB80);
  *v2 = v0;
  v2[1] = sub_10102DF08;
  v5 = v0[10];

  return Sequence.asyncFilter(_:)(&unk_1013F8A90, v5, v3, v4);
}

uint64_t sub_10102DF08(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 168);
  v5 = *v2;
  *(*v2 + 176) = a1;

  if (v1)
  {
  }

  else
  {
    v7 = *(v3 + 160);
    v8 = *(v3 + 80);
    swift_bridgeObjectRelease_n();

    return _swift_task_switch(sub_10102E050, v8, 0);
  }
}

uint64_t sub_10102E050()
{
  v1 = v0[22];
  v2 = v0[14];
  v3 = v0[10];
  swift_beginAccess();

  sub_101031148(v4);
  swift_endAccess();

  return _swift_task_switch(sub_10102E0F0, 0, 0);
}

uint64_t sub_10102E0F0()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 96);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 176);
  if (v5)
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    v8 = *(v6 + 16);

    *(v7 + 4) = v8;

    _os_log_impl(&_mh_execute_header, v3, v4, "SharesRemovalManager: 6. after shares cleanup revokedCircles count = %ld.", v7, 0xCu);
  }

  else
  {
    v9 = *(v0 + 176);
    swift_bridgeObjectRelease_n();
  }

  v10 = *(v0 + 88);
  **(v0 + 72) = 0;

  v11 = *(v0 + 8);

  return v11();
}

id sub_10102E218()
{
  v1 = v0;
  v2 = *(*sub_1000035D0((v0 + 152), *(v0 + 176)) + 24);

  AnyCurrentValuePublisher.value.getter();

  if (v10 != 1)
  {
    return 0;
  }

  v3 = *(v1 + 192);
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v5 = result;
    v6 = *(v3 + 16);
    v7 = *(v3 + 24);
    v8 = String._bridgeToObjectiveC()();
    v9 = [v5 applicationIsInstalled:v8];

    return (v9 ^ 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10102E2E8(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  v4 = *(*(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8) + 64) + 15;
  v3[9] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v3[10] = v5;
  v6 = *(v5 - 8);
  v3[11] = v6;
  v7 = *(v6 + 64) + 15;
  v3[12] = swift_task_alloc();

  return _swift_task_switch(sub_10102E3E4, v2, 0);
}

uint64_t sub_10102E3E4()
{
  v26 = v0;
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[9];
  v4 = v0[6];
  v5 = v0[7];
  UUID.init(uuidString:)();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10000B3A8(v0[9], &qword_1016980D0, &unk_10138F3B0);
    if (qword_101694480 != -1)
    {
      swift_once();
    }

    v6 = v0[7];
    v7 = type metadata accessor for Logger();
    sub_1000076D4(v7, qword_10177A560);

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v11 = v0[6];
      v10 = v0[7];
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v25 = v13;
      *v12 = 141558275;
      *(v12 + 4) = 1752392040;
      *(v12 + 12) = 2081;
      *(v12 + 14) = sub_1000136BC(v11, v10, &v25);
      _os_log_impl(&_mh_execute_header, v8, v9, "SharesRemovalManager: 5. Can't create UUID for revoked circle!\nIncoming id is %{private,mask.hash}s", v12, 0x16u);
      sub_100007BAC(v13);
    }

    v14 = v0[12];
    v15 = v0[9];

    v16 = v0[1];

    return v16();
  }

  else
  {
    v18 = v0[8];
    (*(v0[11] + 32))(v0[12], v0[9], v0[10]);
    v19 = *(v18 + 224);
    v20 = *(v18 + 232);
    v24 = (v19 + *v19);
    v21 = v19[1];
    v22 = swift_task_alloc();
    v0[13] = v22;
    *v22 = v0;
    v22[1] = sub_10102E6D0;
    v23 = v0[12];

    return v24(v23);
  }
}

uint64_t sub_10102E6D0()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *v1;
  *(*v1 + 112) = v0;

  v5 = *(v2 + 64);
  if (v0)
  {
    v6 = sub_10102E880;
  }

  else
  {
    v6 = sub_10102E7FC;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10102E7FC()
{
  (*(v0[11] + 8))(v0[12], v0[10]);
  v1 = v0[12];
  v2 = v0[9];

  v3 = v0[1];

  return v3();
}

uint64_t sub_10102E880()
{
  v20 = v0;
  (*(v0[11] + 8))(v0[12], v0[10]);
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177A560);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[14];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v10 = v0[2];
    v9 = v0[3];
    v11 = v0[4];
    v12 = Error.localizedDescription.getter();
    v14 = sub_1000136BC(v12, v13, &v19);

    *(v7 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v3, v4, "SharesRemovalManager: 5. Error during shares cleanup: %s", v7, 0xCu);
    sub_100007BAC(v8);
  }

  else
  {
  }

  v15 = v0[12];
  v16 = v0[9];

  v17 = v0[1];

  return v17();
}

uint64_t sub_10102EA6C(uint64_t *a1, uint64_t a2)
{
  v2[2] = a2;
  v4 = sub_1000BC4D4(&unk_101698BC0, &qword_10138C440);
  v2[3] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v6 = sub_1000BC4D4(&unk_1016AFA00, &qword_10138C4D0);
  v2[5] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v2[6] = swift_task_alloc();
  v8 = *(*(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  v9 = type metadata accessor for UUID();
  v2[8] = v9;
  v10 = *(v9 - 8);
  v2[9] = v10;
  v2[10] = *(v10 + 64);
  v2[11] = swift_task_alloc();
  v11 = swift_task_alloc();
  v12 = *a1;
  v13 = a1[1];
  v2[12] = v11;
  v2[13] = v12;
  v2[14] = v13;

  return _swift_task_switch(sub_10102EBFC, 0, 0);
}

uint64_t sub_10102EBFC()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  UUID.init(uuidString:)();
  if ((*(v4 + 48))(v5, 1, v3) == 1)
  {
    sub_10000B3A8(v0[7], &qword_1016980D0, &unk_10138F3B0);
    if (qword_101694480 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_1000076D4(v6, qword_10177A560);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Can't create UUID for revoked circle from UserDefaults!", v9, 2u);
    }

    v11 = v0[11];
    v10 = v0[12];
    v13 = v0[6];
    v12 = v0[7];
    v14 = v0[4];

    v15 = v0[1];

    return v15(0);
  }

  else
  {
    v17 = v0[12];
    v18 = v0[8];
    v19 = v0[9];
    v20 = v0[7];
    v21 = v0[2];
    v22 = *(v19 + 32);
    v0[15] = v22;
    v0[16] = (v19 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v22(v17, v20, v18);
    v23 = *(v21 + 208);
    v0[17] = v23;

    return _swift_task_switch(sub_10102EE04, v23, 0);
  }
}

uint64_t sub_10102EE04()
{
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v3 = *(v0 + 120);
  v5 = *(v0 + 88);
  v4 = *(v0 + 96);
  v7 = *(v0 + 72);
  v6 = *(v0 + 80);
  v8 = *(v0 + 64);
  v9 = *(v7 + 16);
  v7 += 16;
  *(v0 + 144) = v9;
  *(v0 + 152) = v7 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v5, v4, v8);
  v10 = *(v7 + 64);
  *(v0 + 192) = v10;
  v11 = (v10 + 24) & ~v10;
  v12 = swift_allocObject();
  *(v0 + 160) = v12;
  *(v12 + 16) = v1;
  v3(v12 + v11, v5, v8);
  v13 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v14 = swift_task_alloc();
  *(v0 + 168) = v14;
  *v14 = v0;
  v14[1] = sub_10102EF6C;
  v16 = *(v0 + 40);
  v15 = *(v0 + 48);

  return unsafeBlocking<A>(context:_:)(v15, 0xD000000000000010, 0x800000010134A8C0, sub_101032544, v12, v16);
}

uint64_t sub_10102EF6C()
{
  v1 = *(*v0 + 168);
  v2 = *(*v0 + 160);
  v4 = *v0;

  return _swift_task_switch(sub_10102F084, 0, 0);
}

uint64_t sub_10102F084()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 48);
  v3 = type metadata accessor for OwnerSharingCircle();
  *(v0 + 196) = (*(*(v3 - 8) + 48))(v2, 1, v3);
  sub_10000B3A8(v2, &unk_1016AFA00, &qword_10138C4D0);

  return _swift_task_switch(sub_10102F144, v1, 0);
}

uint64_t sub_10102F144()
{
  v1 = *(v0 + 152);
  v3 = *(v0 + 128);
  v2 = *(v0 + 136);
  v4 = *(v0 + 120);
  v5 = *(v0 + 88);
  v6 = *(v0 + 80);
  v7 = *(v0 + 64);
  v8 = (*(v0 + 192) + 24) & ~*(v0 + 192);
  (*(v0 + 144))(v5, *(v0 + 96), v7);
  v9 = swift_allocObject();
  *(v0 + 176) = v9;
  *(v9 + 16) = v2;
  v4(v9 + v8, v5, v7);
  v10 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v11 = swift_task_alloc();
  *(v0 + 184) = v11;
  *v11 = v0;
  v11[1] = sub_10102F290;
  v13 = *(v0 + 24);
  v12 = *(v0 + 32);

  return unsafeBlocking<A>(context:_:)(v12, 0xD000000000000010, 0x800000010134A8C0, sub_10103255C, v9, v13);
}

uint64_t sub_10102F290()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 176);
  v4 = *v0;

  return _swift_task_switch(sub_10102F3A8, 0, 0);
}

uint64_t sub_10102F3A8()
{
  v1 = *(v0 + 32);
  (*(*(v0 + 72) + 8))(*(v0 + 96), *(v0 + 64));
  v2 = type metadata accessor for MemberSharingCircle();
  v3 = 1;
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = *(v0 + 196) != 1;
  }

  sub_10000B3A8(*(v0 + 32), &unk_101698BC0, &qword_10138C440);
  v5 = *(v0 + 88);
  v4 = *(v0 + 96);
  v7 = *(v0 + 48);
  v6 = *(v0 + 56);
  v8 = *(v0 + 32);

  v9 = *(v0 + 8);

  return v9(v3);
}

uint64_t *sub_10102F4D0()
{
  sub_100007BAC(v0 + 14);
  sub_100007BAC(v0 + 19);
  v1 = v0[24];
  swift_unknownObjectRelease();
  v2 = v0[26];

  v3 = v0[27];

  v4 = v0[29];

  v5 = v0[30];

  sub_10000B3A8(v0 + OBJC_IVAR____TtC12searchpartyd20SharesRemovalManager__isFindMyAppInstalledCached, &qword_101698E40, &unk_101390D30);
  sub_10000B3A8(v0 + OBJC_IVAR____TtC12searchpartyd20SharesRemovalManager__isThisMeDeviceCached, &qword_101698E40, &unk_101390D30);
  sub_10000B3A8(v0 + OBJC_IVAR____TtC12searchpartyd20SharesRemovalManager__revokedCircles, &qword_101698E48, &qword_1013F8A00);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_10102F598()
{
  sub_10102F4D0();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for SharesRemovalManager()
{
  result = qword_1016C37F8;
  if (!qword_1016C37F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10102F618()
{
  sub_10102F728();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_10102F798();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_10102F728()
{
  if (!qword_1016C3808)
  {
    v0 = type metadata accessor for PrefixedStored();
    if (!v1)
    {
      atomic_store(v0, &qword_1016C3808);
    }
  }
}

void sub_10102F798()
{
  if (!qword_1016C3810)
  {
    sub_1000BC580(&qword_1016B0470, &qword_10138EB80);
    sub_10102F808();
    v0 = type metadata accessor for PrefixedStored();
    if (!v1)
    {
      atomic_store(v0, &qword_1016C3810);
    }
  }
}

unint64_t sub_10102F808()
{
  result = qword_1016C3818;
  if (!qword_1016C3818)
  {
    sub_1000BC580(&qword_1016B0470, &qword_10138EB80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C3818);
  }

  return result;
}

uint64_t sub_10102F884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v5 = sub_1000BC4D4(&qword_101698DE8, &qword_1013909C0);
  v4[4] = v5;
  v6 = *(v5 - 8);
  v4[5] = v6;
  v7 = *(v6 + 64) + 15;
  v4[6] = swift_task_alloc();
  v8 = sub_1000BC4D4(&unk_101698DF0, &qword_1013909C8);
  v4[7] = v8;
  v9 = *(v8 - 8);
  v4[8] = v9;
  v10 = *(v9 + 64) + 15;
  v4[9] = swift_task_alloc();

  return _swift_task_switch(sub_10102F9B8, 0, 0);
}

uint64_t sub_10102F9B8()
{
  sub_1000035D0((v0[3] + 112), *(v0[3] + 136));
  v1 = type metadata accessor for SharingScheduler();
  v2 = swift_task_alloc();
  v0[10] = v2;
  *v2 = v0;
  v2[1] = sub_10102FB04;
  v3 = v0[6];

  return (sub_100ED1CA4)(v3, v1, &off_1016590E8);
}

uint64_t sub_10102FB04()
{
  v1 = *(*v0 + 80);
  v3 = *v0;

  return _swift_task_switch(sub_10102FC00, 0, 0);
}

uint64_t sub_10102FC00()
{
  v1 = v0[9];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[4];
  AsyncStream.makeAsyncIterator()();
  (*(v3 + 8))(v2, v4);
  v5 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v6 = swift_task_alloc();
  v0[11] = v6;
  *v6 = v0;
  v6[1] = sub_10102FCDC;
  v7 = v0[9];
  v8 = v0[7];

  return AsyncStream.Iterator.next(isolation:)(v0 + 2, 0, 0, v8);
}

uint64_t sub_10102FCDC()
{
  v1 = *(*v0 + 88);
  v3 = *v0;

  return _swift_task_switch(sub_10102FDD8, 0, 0);
}

uint64_t sub_10102FDD8()
{
  if (v0[2])
  {
    v1 = v0[3];

    return _swift_task_switch(sub_10102FEA4, v1, 0);
  }

  else
  {
    v2 = v0[6];
    (*(v0[8] + 8))(v0[9], v0[7]);

    v3 = v0[1];

    return v3();
  }
}