@interface RPIdentitySyncDaemon
+ (_TtC8rapportd20RPIdentitySyncDaemon)shared;
- (OS_dispatch_queue)dispatchQueue;
- (void)activate;
- (void)daemonInfoChanged:(unint64_t)a3;
- (void)invalidate;
- (void)setDispatchQueue:(id)a3;
- (void)startBrowsingServiceWithCompletionHandler:(id)a3;
- (void)stopBrowsingServiceWithSessionToken:(NSString *)a3 completionHandler:(id)a4;
@end

@implementation RPIdentitySyncDaemon

+ (_TtC8rapportd20RPIdentitySyncDaemon)shared
{
  if (qword_1001DA5B8 != -1)
  {
    swift_once();
  }

  v3 = qword_1001DA728;

  return v3;
}

- (OS_dispatch_queue)dispatchQueue
{
  v3 = OBJC_IVAR____TtC8rapportd20RPIdentitySyncDaemon_dispatchQueue;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setDispatchQueue:(id)a3
{
  v5 = OBJC_IVAR____TtC8rapportd20RPIdentitySyncDaemon_dispatchQueue;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = a3;
  v7 = a3;
}

- (void)activate
{
  v2 = self;
  RPIdentitySyncDaemon.activate()();
}

- (void)invalidate
{
  v2 = self;
  RPIdentitySyncDaemon.invalidate()();
}

- (void)startBrowsingServiceWithCompletionHandler:(id)a3
{
  v5 = sub_1000C4810(&qword_1001D4F68, &qword_100149690);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_10014C850;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_10014C858;
  v13[5] = v12;
  v14 = self;
  sub_1000EED08(0, 0, v8, &unk_10014C860, v13);
}

- (void)stopBrowsingServiceWithSessionToken:(NSString *)a3 completionHandler:(id)a4
{
  v7 = sub_1000C4810(&qword_1001D4F68, &qword_100149690);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10014C818;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_10014C828;
  v15[5] = v14;
  v16 = a3;
  v17 = self;
  sub_1000EED08(0, 0, v10, &unk_10014C838, v15);
}

- (void)daemonInfoChanged:(unint64_t)a3
{
  v3 = a3;
  v4 = *(&self->super.isa + OBJC_IVAR____TtC8rapportd20RPIdentitySyncDaemon_identitySyncService);
  v5 = self;
  sub_1000CFC54(v3);
}

@end