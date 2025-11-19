int main(int argc, const char **argv, const char **envp)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v31 = *(v3 - 8);
  v32 = v3;
  v4 = *(v31 + 64);
  (__chkstk_darwin)();
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for DispatchQoS();
  v7 = *(v30 - 8);
  v8 = *(v7 + 64);
  (__chkstk_darwin)();
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = (__chkstk_darwin)();
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v29 - v17;
  if (_set_user_dir_suffix())
  {
    static Logger.daemon.getter();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "Entered non-macOS Sandbox", v21, 2u);
    }

    v22 = *(v12 + 8);
    v22(v18, v11);
    static Logger.daemon.getter();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "Starting daemon", v25, 2u);
    }

    v22(v16, v11);
    type metadata accessor for CMLXPCServer();
    qword_100008030 = CMLXPCServer.__allocating_init()();
    dispatch thunk of CMLXPCServer.registerScheduledTasks()();
    dispatch thunk of CMLXPCServer.start()();
    sub_100001060();
    qword_100008038 = static OS_dispatch_source.makeSignalSource(signal:queue:)();
    swift_getObjectType();
    aBlock[4] = sub_1000010AC;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000011D0;
    aBlock[3] = &unk_1000041A8;
    v26 = _Block_copy(aBlock);
    static DispatchQoS.unspecified.getter();
    sub_10000122C();
    OS_dispatch_source.setEventHandler(qos:flags:handler:)();
    _Block_release(v26);
    (*(v31 + 8))(v6, v32);
    (*(v7 + 8))(v10, v30);
    swift_getObjectType();
    OS_dispatch_source.resume()();
    v27 = [objc_opt_self() mainRunLoop];
    [v27 run];

    exit(0);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

unint64_t sub_100001060()
{
  result = qword_100008010;
  if (!qword_100008010)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100008010);
  }

  return result;
}

void sub_1000010AC()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin();
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.daemon.getter();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Received SIGTERM, shutting down", v7, 2u);
  }

  (*(v1 + 8))(v4, v0);
  exit(0);
}

uint64_t sub_1000011D0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);

  return _swift_release(v2);
}

uint64_t sub_100001214(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000122C()
{
  type metadata accessor for DispatchWorkItemFlags();
  sub_1000012B4();
  sub_10000130C(&qword_100008020, &unk_1000016A0);
  sub_100001354();
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

unint64_t sub_1000012B4()
{
  result = qword_100008018;
  if (!qword_100008018)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008018);
  }

  return result;
}

uint64_t sub_10000130C(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_100001354()
{
  result = qword_100008028;
  if (!qword_100008028)
  {
    sub_1000013B8(&qword_100008020, &unk_1000016A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008028);
  }

  return result;
}

uint64_t sub_1000013B8(uint64_t *a1, uint64_t *a2)
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