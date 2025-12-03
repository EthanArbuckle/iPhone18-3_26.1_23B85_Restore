@interface RDUserNotificationCenter
- (_TtC7remindd24RDUserNotificationCenter)init;
- (_TtC7remindd24RDUserNotificationCenter)initWithQueue:(id)queue notificationCenter:(id)center;
- (id)calDAVSharedListNotificationContentWithList:(id)list;
- (void)releaseNotificationWithIdentifier:(id)identifier reference:(id)reference completion:(id)completion;
- (void)retainNotificationWithIdentifier:(id)identifier reference:(id)reference content:(id)content skipBanner:(BOOL)banner completion:(id)completion;
- (void)showNotificationWithIdentifier:(id)identifier content:(id)content completion:(id)completion;
- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler;
- (void)userNotificationCenter:(id)center willPresentNotification:(id)notification withCompletionHandler:(id)handler;
@end

@implementation RDUserNotificationCenter

- (_TtC7remindd24RDUserNotificationCenter)initWithQueue:(id)queue notificationCenter:(id)center
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
  *(&self->super.isa + OBJC_IVAR____TtC7remindd24RDUserNotificationCenter_queue) = queue;
  *(&self->super.isa + OBJC_IVAR____TtC7remindd24RDUserNotificationCenter_notificationCenter) = center;
  v10.receiver = self;
  v10.super_class = type metadata accessor for RDUserNotificationCenter();
  queueCopy = queue;
  centerCopy = center;
  return [(RDUserNotificationCenter *)&v10 init];
}

- (_TtC7remindd24RDUserNotificationCenter)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)retainNotificationWithIdentifier:(id)identifier reference:(id)reference content:(id)content skipBanner:(BOOL)banner completion:(id)completion
{
  bannerCopy = banner;
  v10 = _Block_copy(completion);
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

  contentCopy = content;
  selfCopy = self;
  sub_100526B38(v11, v13, v14, v16, contentCopy, bannerCopy, v10, v17);
  sub_1000FDA80(v10, v17);
}

- (void)releaseNotificationWithIdentifier:(id)identifier reference:(id)reference completion:(id)completion
{
  v6 = _Block_copy(completion);
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

  selfCopy = self;
  RDUserNotificationCenter.releaseNotification(identifier:reference:completion:)(v7, v9, v10, v12, v6, v13);
  sub_1000FDA80(v6, v13);
}

- (void)userNotificationCenter:(id)center willPresentNotification:(id)notification withCompletionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  _Block_copy(v8);
  centerCopy = center;
  notificationCopy = notification;
  selfCopy = self;
  sub_10052C578(v8);
  _Block_release(v8);
  _Block_release(v8);
}

- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  _Block_copy(v8);
  centerCopy = center;
  responseCopy = response;
  selfCopy = self;
  sub_10052C674(responseCopy, selfCopy, v8);
  _Block_release(v8);
  _Block_release(v8);
}

- (void)showNotificationWithIdentifier:(id)identifier content:(id)content completion:(id)completion
{
  v8 = _Block_copy(completion);
  v9 = v8;
  if (identifier)
  {
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    identifier = v11;
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
  selfCopy = self;
  RDUserNotificationCenter.showNotification(withIdentifier:content:completion:)(v10, identifier, content, v9, v12);
  sub_1000FDA80(v9, v12);
  swift_unknownObjectRelease();
}

- (id)calDAVSharedListNotificationContentWithList:(id)list
{
  v4 = type metadata accessor for RDUserNotificationType();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = (&v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  listCopy = list;
  *v8 = [listCopy objectID];
  (*(v5 + 104))(v8, enum case for RDUserNotificationType.caldavSharedList(_:), v4);
  v10 = sub_1002D833C(0, listCopy, 0);

  (*(v5 + 8))(v8, v4);

  return v10;
}

@end