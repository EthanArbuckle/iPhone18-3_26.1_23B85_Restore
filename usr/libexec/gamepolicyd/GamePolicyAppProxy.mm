@interface GamePolicyAppProxy
- (uint64_t)ping;
- (void)enableTransientStateUpdates;
- (void)requestProcessInfoWithReply:(id)reply;
@end

@implementation GamePolicyAppProxy

- (void)requestProcessInfoWithReply:(id)reply
{
  v3 = _Block_copy(reply);
  v3[2](v3, 0);

  _Block_release(v3);
}

- (void)enableTransientStateUpdates
{

  sub_1000241E4();
}

- (uint64_t)ping
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.appCoordinator.getter();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "GamePolicyAppProxy: ping!", v7, 2u);
  }

  return (*(v1 + 8))(v4, v0);
}

@end