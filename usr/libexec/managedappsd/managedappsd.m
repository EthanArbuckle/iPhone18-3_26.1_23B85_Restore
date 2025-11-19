int main(int argc, const char **argv, const char **envp)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = v4[8];
  v6 = (__chkstk_darwin)();
  v8 = &v23[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v10 = &v23[-v9];
  if (qword_100008010 != -1)
  {
    swift_once();
  }

  v11 = sub_100001220(v3, qword_100008030);
  v12 = v4[2];
  v12(v10, v11, v3);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "===== managedappsd main... =====", v15, 2u);
  }

  v16 = v4[1];
  v16(v10, v3);
  qword_100008018 = 0;
  sub_100000F2C();
  qword_100008020 = sub_1000010B0();
  qword_100008028 = v17;
  v12(v8, v11, v3);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "managedappsd running...", v20, 2u);
  }

  v16(v8, v3);
  v21 = [objc_opt_self() currentRunLoop];
  [v21 run];

  return 0;
}

uint64_t sub_100000F2C()
{
  if (qword_100008010 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100001220(v0, qword_100008030);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "managedappsd setup: sandbox", v3, 2u);
  }

  v4 = ManagedAppsServiceScope.rawValue.getter();
  if (v4 == ManagedAppsServiceScope.rawValue.getter())
  {
    static ManagedAppsServiceBundleID.managedappsd.getter();
  }

  else
  {
    static ManagedAppsServiceBundleID.managedAppsAgent.getter();
  }

  String.utf8CString.getter();

  v5 = _set_user_dir_suffix();

  if ((v5 & 1) == 0)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000010B0()
{
  if (qword_100008010 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100001220(v1, qword_100008030);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "managedappsd setup: services", v4, 2u);
  }

  v5 = type metadata accessor for ManagedAppsServer();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  v8 = ManagedAppsServer.init(scope:inMemoryDatabase:)();
  dispatch thunk of ManagedAppsServer.startServer()();
  if (v0)
  {
  }

  else
  {
    v9 = type metadata accessor for ManagedAppsServiceProvider();
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();

    ManagedAppsServiceProvider.init(scope:server:)();
    dispatch thunk of ManagedAppsServiceProvider.setupXPCService()();
  }

  return v8;
}

uint64_t sub_100001220(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100001258()
{
  v0 = type metadata accessor for Logger();
  sub_1000012CC(v0, qword_100008030);
  sub_100001220(v0, qword_100008030);
  return Logger.init(subsystem:category:)();
}

uint64_t *sub_1000012CC(uint64_t a1, uint64_t *a2)
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