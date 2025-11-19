int main(int argc, const char **argv, const char **envp)
{
  v3 = sub_100001DE0();
  setlinebuf(v3);
  qword_100008720 = [objc_allocWithZone(type metadata accessor for TextUnderstandingDaemon()) init];
  v4 = [objc_opt_self() mainRunLoop];
  [v4 run];

  return 0;
}

void sub_100001650(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_100001D20();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

uint64_t sub_100001704(int a1, int a2, void *aBlock, uint64_t a4, void (*a5)(uint64_t, void *))
{
  v7 = _Block_copy(aBlock);
  v9[2] = v7;

  a5(a4, v9);
  _Block_release(v7);
}

uint64_t sub_1000017F0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{

  a3(v4);
}

uint64_t sub_100001834()
{

  return _swift_deallocClassInstance(v0, 24, 7);
}

char *sub_100001890()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC18textunderstandingd23TextUnderstandingDaemon_interface;
  *&v0[v2] = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL____TtP21DocumentUnderstanding31TextUnderstandingDaemonProtocol_];
  sub_100001DC0();
  v3 = sub_100001DB0();
  *&v1[OBJC_IVAR____TtC18textunderstandingd23TextUnderstandingDaemon_manager] = v3;
  type metadata accessor for DocumentUnderstandingServer();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *&v1[OBJC_IVAR____TtC18textunderstandingd23TextUnderstandingDaemon_server] = v4;
  v10.receiver = v1;
  v10.super_class = type metadata accessor for TextUnderstandingDaemon();
  v5 = v3;
  v6 = objc_msgSendSuper2(&v10, "init");
  sub_100001C9C(0, &qword_1000086B0, NSXPCListener_ptr);
  v7 = v6;
  sub_100001D50();
  v8 = sub_1000019EC();
  [v8 setDelegate:{v7, v10.receiver, v10.super_class}];
  [v8 resume];
  sub_100001D40();
  sub_100001D30();
  [objc_opt_self() registerDUXPCListenersWithManager:*&v7[OBJC_IVAR____TtC18textunderstandingd23TextUnderstandingDaemon_manager]];
  sub_100001DD0();

  return v7;
}

id sub_1000019EC()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_100001DF0();

  v2 = [v0 initWithMachServiceName:v1];

  return v2;
}

id sub_100001A84(uint64_t a1, void *a2)
{
  sub_100001D50();
  v4 = objc_opt_self();
  v5 = sub_100001DF0();
  v6 = sub_100001DF0();

  v7 = [v4 checkForAndLogTrueBooleanEntitlement:v5 connection:a2 serviceName:v6];

  if (v7)
  {
    [a2 setExportedInterface:*(v2 + OBJC_IVAR____TtC18textunderstandingd23TextUnderstandingDaemon_interface)];
    [a2 setExportedObject:*(v2 + OBJC_IVAR____TtC18textunderstandingd23TextUnderstandingDaemon_server)];
    [a2 resume];
  }

  return v7;
}

id sub_100001BD8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TextUnderstandingDaemon();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100001C9C(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_100001CDC()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}