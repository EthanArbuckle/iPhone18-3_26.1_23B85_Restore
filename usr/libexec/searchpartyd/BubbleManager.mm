@interface BubbleManager
- (void)session:(id)a3 didDiscoverNearbyObject:(id)a4;
- (void)session:(id)a3 didFailWithError:(id)a4;
- (void)session:(id)a3 didInvalidateWithError:(id)a4;
- (void)session:(id)a3 object:(id)a4 didUpdateRegion:(id)a5 previousRegion:(id)a6;
- (void)session:didUpdateNearbyObjects:;
- (void)sessionDidStartRunning:;
- (void)sessionSuspensionEnded:(id)a3;
- (void)sessionWasSuspended:;
@end

@implementation BubbleManager

- (void)session:(id)a3 didDiscoverNearbyObject:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_100C2F9CC(v7);
}

- (void)session:(id)a3 object:(id)a4 didUpdateRegion:(id)a5 previousRegion:(id)a6
{
  swift_getObjectType();
  v9 = *(&self->super.isa + OBJC_IVAR____TtC12searchpartyd13BubbleManager_lock);
  v10 = a4;
  v11 = a5;
  v12 = self;
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
}

- (void)session:(id)a3 didFailWithError:(id)a4
{
  v6 = a3;
  v8 = a4;
  v7 = self;
  sub_100C2FBF4();
}

- (void)session:(id)a3 didInvalidateWithError:(id)a4
{
  v6 = a3;
  v8 = a4;
  v7 = self;
  sub_100C2FE14();
}

- (void)sessionSuspensionEnded:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100C3017C();
}

- (void)sessionDidStartRunning:
{
  if (qword_101694D98 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000076D4(v0, qword_1016B8BE0);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_1000136BC(0xD00000000000001ALL, 0x800000010136FB80, &v5);
    _os_log_impl(&_mh_execute_header, oslog, v1, "%s", v2, 0xCu);
    sub_100007BAC(v3);
  }
}

- (void)session:didUpdateNearbyObjects:
{
  if (qword_101694D98 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000076D4(v0, qword_1016B8BE0);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_1000136BC(0xD000000000000015, 0x800000010136FB60, &v5);
    _os_log_impl(&_mh_execute_header, oslog, v1, "%s", v2, 0xCu);
    sub_100007BAC(v3);
  }
}

- (void)sessionWasSuspended:
{
  if (qword_101694D98 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000076D4(v0, qword_1016B8BE0);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_1000136BC(0xD000000000000017, 0x800000010136FAA0, &v5);
    _os_log_impl(&_mh_execute_header, oslog, v1, "%s", v2, 0xCu);
    sub_100007BAC(v3);
  }
}

@end