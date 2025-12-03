@interface MLHostAPSListener
- (_TtC7mlhostd17MLHostAPSListener)init;
- (void)connection:(id)connection didReceiveIncomingMessage:(id)message;
- (void)connection:(id)connection didReceivePublicToken:(id)token;
@end

@implementation MLHostAPSListener

- (void)connection:(id)connection didReceivePublicToken:(id)token
{
  tokenCopy = token;
  if (token)
  {
    connectionCopy = connection;
    selfCopy = self;
    v8 = tokenCopy;
    tokenCopy = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
  }

  else
  {
    connectionCopy2 = connection;
    selfCopy2 = self;
    v10 = 0xF000000000000000;
  }

  sub_100009180();
  sub_1000099C0(tokenCopy, v10);
}

- (void)connection:(id)connection didReceiveIncomingMessage:(id)message
{
  connectionCopy = connection;
  messageCopy = message;
  selfCopy = self;
  sub_100009268(message);
}

- (_TtC7mlhostd17MLHostAPSListener)init
{
  ObjectType = swift_getObjectType();
  v4 = (&self->super.isa + OBJC_IVAR____TtC7mlhostd17MLHostAPSListener_handleMessage);
  *v4 = nullsub_1;
  v4[1] = 0;
  v6.receiver = self;
  v6.super_class = ObjectType;
  return [(MLHostAPSListener *)&v6 init];
}

@end