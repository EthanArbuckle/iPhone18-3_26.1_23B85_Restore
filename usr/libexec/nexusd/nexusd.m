uint64_t sub_100000D28@<X0>(uint64_t *a1@<X8>)
{
  v29 = a1;
  v27 = type metadata accessor for OS_dispatch_queue_serial.Attributes();
  v1 = *(*(v27 - 8) + 64);
  (__chkstk_darwin)();
  v26 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = *(*(type metadata accessor for DispatchQoS() - 8) + 64);
  (__chkstk_darwin)();
  v24 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v4 = *(v24 - 8);
  v5 = *(v4 + 64);
  (__chkstk_darwin)();
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for CUEnvironmentValues();
  v8 = *(v28 - 8);
  v9 = *(v8 + 64);
  v10 = (__chkstk_darwin)();
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v23 - v13;
  type metadata accessor for MainActor();
  v25 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  static NXConstants.daemonBundleID.getter();
  static NXConstants.logSubsystem.getter();
  String.utf8CString.getter();

  String.utf8CString.getter();

  v15 = CUEnterSandbox();

  if (!v15)
  {
    exit(1);
  }

  v16 = SIG_IGN.getter();
  signal(13, v16);
  CUEnvironmentValues.init()();
  sub_1000011D8();
  (*(v4 + 104))(v7, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v24);
  static DispatchQoS.unspecified.getter();
  v30 = &_swiftEmptyArrayStorage;
  sub_100001224();
  sub_10000127C(&qword_100008010, ":");
  sub_1000012C4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue_serial.init(label:qos:attributes:autoreleaseFrequency:target:)();
  CUEnvironmentValues.dispatchQueue.setter();
  CUEnvironmentValues.dispatchQueue.getter();
  v17 = v28;
  (*(v8 + 16))(v12, v14, v28);
  v18 = type metadata accessor for NXDaemon();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  v21 = NXDaemon.init(dispatchQueue:environment:)();
  NXDaemon.activate()();
  (*(v8 + 8))(v14, v17);

  *v29 = v21;
  return result;
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = objc_autoreleasePoolPush();
  sub_100000D28(&v5);
  objc_autoreleasePoolPop(v3);
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  dispatch_main();
}

unint64_t sub_1000011D8()
{
  result = qword_100008000;
  if (!qword_100008000)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100008000);
  }

  return result;
}

unint64_t sub_100001224()
{
  result = qword_100008008;
  if (!qword_100008008)
  {
    type metadata accessor for OS_dispatch_queue_serial.Attributes();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008008);
  }

  return result;
}

uint64_t sub_10000127C(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_1000012C4()
{
  result = qword_100008018;
  if (!qword_100008018)
  {
    sub_100001328(&qword_100008010, ":");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008018);
  }

  return result;
}

uint64_t sub_100001328(uint64_t *a1, uint64_t *a2)
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