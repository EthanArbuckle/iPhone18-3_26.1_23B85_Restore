@interface RDUserNotificationCenter
- (_TtC7remindd24RDUserNotificationCenter)init;
- (_TtC7remindd24RDUserNotificationCenter)initWithQueue:(id)a3 notificationCenter:(id)a4;
- (id)calDAVSharedListNotificationContentWithList:(id)a3;
- (void)releaseNotificationWithIdentifier:(id)a3 reference:(id)a4 completion:(id)a5;
- (void)retainNotificationWithIdentifier:(id)a3 reference:(id)a4 content:(id)a5 skipBanner:(BOOL)a6 completion:(id)a7;
- (void)showNotificationWithIdentifier:(id)a3 content:(id)a4 completion:(id)a5;
- (void)userNotificationCenter:(id)a3 didReceiveNotificationResponse:(id)a4 withCompletionHandler:(id)a5;
- (void)userNotificationCenter:(id)a3 willPresentNotification:(id)a4 withCompletionHandler:(id)a5;
@end

@implementation RDUserNotificationCenter

- (_TtC7remindd24RDUserNotificationCenter)initWithQueue:(id)a3 notificationCenter:(id)a4
{
  *&self->queue[OBJC_IVAR____TtC7remindd24RDUserNotificationCenter_reminderAlarmDelegate] = 0;
  swift_unknownObjectWeakInit();
  *&self->queue[OBJC_IVAR____TtC7remindd24RDUserNotificationCenter_todayNotificationDelegate] = 0;
  swift_unknownObjectWeakInit();
  *&self->queue[OBJC_IVAR____TtC7remindd24RDUserNotificationCenter_beforeFirstUnlockReminderDelegate] = 0;
  swift_unknownObjectWeakInit();
  *&self->queue[OBJC_IVAR____TtC7remindd24RDUserNotificationCenter_assignmentNotificationDelegate] = 0;
  swift_unknownObjectWeakInit();
  *&self->queue[OBJC_IVAR____TtC7remindd24RDUserNotificationCenter_sharedListUpdateNotificationDelegate] = 0;
  swift_unknownObjectWeakInit();
  *(&self->super.isa + OBJC_IVAR____TtC7remindd24RDUserNotificationCenter_queue) = a3;
  *(&self->super.isa + OBJC_IVAR____TtC7remindd24RDUserNotificationCenter_notificationCenter) = a4;
  v10.receiver = self;
  v10.super_class = type metadata accessor for RDUserNotificationCenter();
  v7 = a3;
  v8 = a4;
  return [(RDUserNotificationCenter *)&v10 init];
}

- (_TtC7remindd24RDUserNotificationCenter)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)retainNotificationWithIdentifier:(id)a3 reference:(id)a4 content:(id)a5 skipBanner:(BOOL)a6 completion:(id)a7
{
  v7 = a6;
  v10 = _Block_copy(a7);
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  if (v10)
  {
    v17 = swift_allocObject();
    *(v17 + 16) = v10;
    v10 = sub_10003FE60;
  }

  else
  {
    v17 = 0;
  }

  v18 = a5;
  v19 = self;
  sub_100526B38(v11, v13, v14, v16, v18, v7, v10, v17);
  sub_1000FDA80(v10, v17);
}

- (void)releaseNotificationWithIdentifier:(id)a3 reference:(id)a4 completion:(id)a5
{
  v6 = _Block_copy(a5);
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  if (v6)
  {
    v13 = swift_allocObject();
    *(v13 + 16) = v6;
    v6 = sub_10003FE58;
  }

  else
  {
    v13 = 0;
  }

  v14 = self;
  RDUserNotificationCenter.releaseNotification(identifier:reference:completion:)(v7, v9, v10, v12, v6, v13);
  sub_1000FDA80(v6, v13);
}

- (void)userNotificationCenter:(id)a3 willPresentNotification:(id)a4 withCompletionHandler:(id)a5
{
  v8 = _Block_copy(a5);
  _Block_copy(v8);
  v9 = a3;
  v10 = a4;
  v11 = self;
  sub_10052C578(v8);
  _Block_release(v8);
  _Block_release(v8);
}

- (void)userNotificationCenter:(id)a3 didReceiveNotificationResponse:(id)a4 withCompletionHandler:(id)a5
{
  v8 = _Block_copy(a5);
  _Block_copy(v8);
  v9 = a3;
  v10 = a4;
  v11 = self;
  sub_10052C674(v10, v11, v8);
  _Block_release(v8);
  _Block_release(v8);
}

- (void)showNotificationWithIdentifier:(id)a3 content:(id)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = v8;
  if (a3)
  {
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    a3 = v11;
    if (v9)
    {
LABEL_3:
      v12 = swift_allocObject();
      *(v12 + 16) = v9;
      v9 = sub_10003FE58;
      goto LABEL_6;
    }
  }

  else
  {
    v10 = 0;
    if (v8)
    {
      goto LABEL_3;
    }
  }

  v12 = 0;
LABEL_6:
  swift_unknownObjectRetain();
  v13 = self;
  RDUserNotificationCenter.showNotification(withIdentifier:content:completion:)(v10, a3, a4, v9, v12);
  sub_1000FDA80(v9, v12);
  swift_unknownObjectRelease();
}

- (id)calDAVSharedListNotificationContentWithList:(id)a3
{
  v4 = type metadata accessor for RDUserNotificationType();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = (&v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = a3;
  *v8 = [v9 objectID];
  (*(v5 + 104))(v8, enum case for RDUserNotificationType.caldavSharedList(_:), v4);
  v10 = sub_1002D833C(0, v9, 0);

  (*(v5 + 8))(v8, v4);

  return v10;
}

@end