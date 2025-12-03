@interface BubbleManager
- (void)session:(id)session didDiscoverNearbyObject:(id)object;
- (void)session:(id)session didFailWithError:(id)error;
- (void)session:(id)session didInvalidateWithError:(id)error;
- (void)session:(id)session object:(id)object didUpdateRegion:(id)region previousRegion:(id)previousRegion;
- (void)session:didUpdateNearbyObjects:;
- (void)sessionDidStartRunning:;
- (void)sessionSuspensionEnded:(id)ended;
- (void)sessionWasSuspended:;
@end

@implementation BubbleManager

- (void)session:(id)session didDiscoverNearbyObject:(id)object
{
  sessionCopy = session;
  objectCopy = object;
  selfCopy = self;
  sub_100C2F9CC(objectCopy);
}

- (void)session:(id)session object:(id)object didUpdateRegion:(id)region previousRegion:(id)previousRegion
{
  swift_getObjectType();
  v9 = *(&self->super.isa + OBJC_IVAR____TtC12searchpartyd13BubbleManager_lock);
  objectCopy = object;
  regionCopy = region;
  selfCopy = self;
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
}

- (void)session:(id)session didFailWithError:(id)error
{
  sessionCopy = session;
  errorCopy = error;
  selfCopy = self;
  sub_100C2FBF4();
}

- (void)session:(id)session didInvalidateWithError:(id)error
{
  sessionCopy = session;
  errorCopy = error;
  selfCopy = self;
  sub_100C2FE14();
}

- (void)sessionSuspensionEnded:(id)ended
{
  endedCopy = ended;
  selfCopy = self;
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