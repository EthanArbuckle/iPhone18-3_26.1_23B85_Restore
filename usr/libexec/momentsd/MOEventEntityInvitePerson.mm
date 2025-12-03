@interface MOEventEntityInvitePerson
- (BOOL)isMe;
- (_TtC8momentsd25MOEventEntityInvitePerson)init;
- (_TtC8momentsd25MOEventEntityInvitePerson)initWithDisplayName:(id)name rsvpStatus:(id)status isMe:(BOOL)me;
- (void)setIsMe:(BOOL)me;
@end

@implementation MOEventEntityInvitePerson

- (BOOL)isMe
{
  v3 = OBJC_IVAR____TtC8momentsd25MOEventEntityInvitePerson_isMe;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsMe:(BOOL)me
{
  v5 = OBJC_IVAR____TtC8momentsd25MOEventEntityInvitePerson_isMe;
  swift_beginAccess();
  *(self + v5) = me;
}

- (_TtC8momentsd25MOEventEntityInvitePerson)init
{
  v2 = (self + OBJC_IVAR____TtC8momentsd25MOEventEntityInvitePerson_displayName);
  *v2 = 0;
  v2[1] = 0;
  v3 = (self + OBJC_IVAR____TtC8momentsd25MOEventEntityInvitePerson_rsvpStatus);
  *v3 = 0;
  v3[1] = 0;
  *(self + OBJC_IVAR____TtC8momentsd25MOEventEntityInvitePerson_isMe) = 0;
  v5.receiver = self;
  v5.super_class = type metadata accessor for MOEventEntityInvitePerson();
  return [(MOEventEntityInvitePerson *)&v5 init];
}

- (_TtC8momentsd25MOEventEntityInvitePerson)initWithDisplayName:(id)name rsvpStatus:(id)status isMe:(BOOL)me
{
  statusCopy = status;
  if (!name)
  {
    v8 = 0;
    v10 = 0;
    if (status)
    {
      goto LABEL_3;
    }

LABEL_5:
    v12 = 0;
    goto LABEL_6;
  }

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  if (!statusCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  statusCopy = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
LABEL_6:
  v13 = (self + OBJC_IVAR____TtC8momentsd25MOEventEntityInvitePerson_displayName);
  *v13 = 0;
  v13[1] = 0;
  v14 = (self + OBJC_IVAR____TtC8momentsd25MOEventEntityInvitePerson_rsvpStatus);
  *v14 = 0;
  v14[1] = 0;
  v15 = OBJC_IVAR____TtC8momentsd25MOEventEntityInvitePerson_isMe;
  *(self + OBJC_IVAR____TtC8momentsd25MOEventEntityInvitePerson_isMe) = 0;
  swift_beginAccess();
  *v13 = v8;
  v13[1] = v10;
  swift_beginAccess();
  *v14 = statusCopy;
  v14[1] = v12;
  swift_beginAccess();
  *(self + v15) = me;
  v17.receiver = self;
  v17.super_class = type metadata accessor for MOEventEntityInvitePerson();
  return [(MOEventEntityInvitePerson *)&v17 init];
}

@end