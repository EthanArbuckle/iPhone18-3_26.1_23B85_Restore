@interface GKBulletinAttachment
- (GKBulletinAttachment)initWithIdentifier:(id)a3 url:(id)a4 hiddenFromDefaultExpandedView:(BOOL)a5;
- (NSString)identifier;
- (NSURL)url;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GKBulletinAttachment

- (NSString)identifier
{
  sub_100245440();
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (NSURL)url
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100245560(v5);
  URL._bridgeToObjectiveC()(v6);
  v8 = v7;
  (*(v3 + 8))(v5, v2);

  return v8;
}

- (GKBulletinAttachment)initWithIdentifier:(id)a3 url:(id)a4 hiddenFromDefaultExpandedView:(BOOL)a5
{
  v6 = type metadata accessor for URL();
  __chkstk_darwin(v6 - 8);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  return sub_100245618(v9, v11, v8, a5);
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1002457C0(v4);
}

@end