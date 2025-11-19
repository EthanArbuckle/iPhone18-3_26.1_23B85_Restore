@interface TelephonyProxy
- (NSString)description;
- (_TtC17proximitycontrold14TelephonyProxy)init;
- (void)conversationManager:(id)a3 presentationContextChangedForConversation:(id)a4;
- (void)conversationManager:(id)a3 removedActiveConversation:(id)a4;
- (void)conversationManager:(id)a3 stateChangedForConversation:(id)a4;
- (void)dealloc;
@end

@implementation TelephonyProxy

- (void)dealloc
{
  v3 = objc_opt_self();
  v4 = self;
  v5 = [v3 defaultCenter];
  [v5 removeObserver:v4];

  [*(&v4->super.isa + OBJC_IVAR____TtC17proximitycontrold14TelephonyProxy_conversationManager) removeDelegate:v4];
  v6.receiver = v4;
  v6.super_class = type metadata accessor for TelephonyProxy();
  [(TelephonyProxy *)&v6 dealloc];
}

- (_TtC17proximitycontrold14TelephonyProxy)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)conversationManager:(id)a3 presentationContextChangedForConversation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1001CE684(v7);
}

- (void)conversationManager:(id)a3 stateChangedForConversation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1001CE848(v7);
}

- (void)conversationManager:(id)a3 removedActiveConversation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1001CEA0C(v7);
}

- (NSString)description
{
  v2 = self;
  sub_1001C9DD4();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

@end