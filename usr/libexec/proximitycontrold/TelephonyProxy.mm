@interface TelephonyProxy
- (NSString)description;
- (_TtC17proximitycontrold14TelephonyProxy)init;
- (void)conversationManager:(id)manager presentationContextChangedForConversation:(id)conversation;
- (void)conversationManager:(id)manager removedActiveConversation:(id)conversation;
- (void)conversationManager:(id)manager stateChangedForConversation:(id)conversation;
- (void)dealloc;
@end

@implementation TelephonyProxy

- (void)dealloc
{
  v3 = objc_opt_self();
  selfCopy = self;
  defaultCenter = [v3 defaultCenter];
  [defaultCenter removeObserver:selfCopy];

  [*(&selfCopy->super.isa + OBJC_IVAR____TtC17proximitycontrold14TelephonyProxy_conversationManager) removeDelegate:selfCopy];
  v6.receiver = selfCopy;
  v6.super_class = type metadata accessor for TelephonyProxy();
  [(TelephonyProxy *)&v6 dealloc];
}

- (_TtC17proximitycontrold14TelephonyProxy)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)conversationManager:(id)manager presentationContextChangedForConversation:(id)conversation
{
  managerCopy = manager;
  conversationCopy = conversation;
  selfCopy = self;
  sub_1001CE684(conversationCopy);
}

- (void)conversationManager:(id)manager stateChangedForConversation:(id)conversation
{
  managerCopy = manager;
  conversationCopy = conversation;
  selfCopy = self;
  sub_1001CE848(conversationCopy);
}

- (void)conversationManager:(id)manager removedActiveConversation:(id)conversation
{
  managerCopy = manager;
  conversationCopy = conversation;
  selfCopy = self;
  sub_1001CEA0C(conversationCopy);
}

- (NSString)description
{
  selfCopy = self;
  sub_1001C9DD4();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

@end