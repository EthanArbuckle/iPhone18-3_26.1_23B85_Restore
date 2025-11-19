int main(int argc, const char **argv, const char **envp)
{
  v3 = objc_autoreleasePoolPush();
  v4 = static Queues.main.getter();
  v8[4] = sub_100000D18;
  v8[5] = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_100000D88;
  v8[3] = &unk_1000040B8;
  v5 = _Block_copy(v8);

  dispatch_sync(v4, v5);

  _Block_release(v5);
  result = swift_isEscapingClosureAtFileLocation();
  if ((result & 1) == 0)
  {
    objc_autoreleasePoolPop(v3);
    v7 = [objc_opt_self() currentRunLoop];
    [v7 run];

    exit(0);
  }

  __break(1u);
  return result;
}

void sub_100000D18()
{
  static XpcEventNotification.register()();
  type metadata accessor for Daemon();
  v0 = static Daemon.shared.getter();
  Daemon.registerSystemTasks()();

  v1 = static Daemon.shared.getter();
  Daemon.registerServiceListeners()();
}

uint64_t sub_100000DB0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return _swift_retain(v2);
}