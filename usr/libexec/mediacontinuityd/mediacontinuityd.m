uint64_t sub_100001278()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = *(&async function pointer to dispatch thunk of CoexServerXPCListener.activate() + 1);
  v4 = (&async function pointer to dispatch thunk of CoexServerXPCListener.activate() + async function pointer to dispatch thunk of CoexServerXPCListener.activate());
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_10000133C;

  return v4();
}

uint64_t sub_10000133C()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v7 = *v0;

  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100001478, v5, v4);
}

uint64_t sub_100001478()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000014D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(sub_100001FAC(&qword_100008300, &qword_100002C18) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = v26 - v10;
  sub_100002214(a3, v26 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100002284(v11);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = String.utf8CString.getter() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_100002284(a3);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100002284(a3);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

void sub_100001798()
{
  swift_getObjectType();
  OS_dispatch_source.cancel()();
  exit(0);
}

uint64_t sub_1000017BC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_100001800()
{
  type metadata accessor for DispatchWorkItemFlags();
  sub_100002534();
  sub_100001FAC(&qword_100008380, &qword_100002C50);
  sub_10000258C();
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t sub_1000018B4(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000019AC;

  return v7(a1);
}

uint64_t sub_1000019AC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100001AA4(int a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = SIG_IGN.getter();
  signal(a1, v12);
  sub_100002494(0, &qword_100008308, OS_dispatch_source_ptr);
  sub_100002494(0, &qword_100008310, OS_dispatch_queue_ptr);
  v13 = static OS_dispatch_queue.main.getter();
  v14 = static OS_dispatch_source.makeSignalSource(signal:queue:)();

  swift_getObjectType();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  aBlock[4] = sub_100002514;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000017BC;
  aBlock[3] = &unk_100004338;
  v16 = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  static DispatchQoS.unspecified.getter();
  sub_100001800();
  OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  _Block_release(v16);
  (*(v3 + 8))(v6, v2);
  (*(v8 + 8))(v11, v7);

  OS_dispatch_source.resume()();
  return swift_unknownObjectRelease();
}

void sub_100001D4C()
{
  v0 = (*(*(sub_100001FAC(&qword_100008300, &qword_100002C18) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v2 = &v13 - v1;
  if (qword_100008260 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100001FF4(v3, qword_100008450);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Starting mediacontinuityd", v6, 2u);
  }

  v7 = [objc_allocWithZone(type metadata accessor for CoexServerXPCListener()) init];
  sub_100001AA4(15);
  sub_100001AA4(2);
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v2, 1, 1, v8);
  type metadata accessor for MainActor();
  v9 = v7;
  v10 = static MainActor.shared.getter();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = &protocol witness table for MainActor;
  v11[4] = v9;
  sub_1000014D8(0, 0, v2, &unk_100002C28, v11);

  v12 = [objc_opt_self() mainRunLoop];
  [v12 run];
}

uint64_t sub_100001FAC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100001FF4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_10000202C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000206C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100002120;

  return sub_100001278();
}

uint64_t sub_100002120()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100002214(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001FAC(&qword_100008300, &qword_100002C18);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100002284(uint64_t a1)
{
  v2 = sub_100001FAC(&qword_100008300, &qword_100002C18);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000022EC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100002324(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000263C;

  return sub_1000018B4(a1, v5);
}

uint64_t sub_1000023DC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100002120;

  return sub_1000018B4(a1, v5);
}

uint64_t sub_100002494(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1000024DC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000251C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100002534()
{
  result = qword_100008378;
  if (!qword_100008378)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008378);
  }

  return result;
}

unint64_t sub_10000258C()
{
  result = qword_100008388;
  if (!qword_100008388)
  {
    sub_1000025F0(&qword_100008380, &qword_100002C50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008388);
  }

  return result;
}

uint64_t sub_1000025F0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100002640()
{
  v0 = type metadata accessor for Logger();
  sub_1000026B4(v0, qword_100008450);
  sub_100001FF4(v0, qword_100008450);
  return Logger.init(subsystem:category:)();
}

uint64_t *sub_1000026B4(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}