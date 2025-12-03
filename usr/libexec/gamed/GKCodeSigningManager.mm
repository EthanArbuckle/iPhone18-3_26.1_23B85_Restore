@interface GKCodeSigningManager
- (BOOL)isDevSignedWithBundleID:(id)d;
- (BOOL)isDevSignedWithBundleID:(id)d executableURL:(id)l;
@end

@implementation GKCodeSigningManager

- (BOOL)isDevSignedWithBundleID:(id)d
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  selfCopy = self;
  LOBYTE(v4) = sub_1001A83D8(v4, v6);

  return v4 & 1;
}

- (BOOL)isDevSignedWithBundleID:(id)d executableURL:(id)l
{
  v6 = sub_1001A6C04(&qword_1003B5800);
  __chkstk_darwin(v6 - 8);
  v8 = &v17 - v7;
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  if (l)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = type metadata accessor for URL();
    v13 = 0;
  }

  else
  {
    v12 = type metadata accessor for URL();
    v13 = 1;
  }

  sub_1001A9674(v8, v13, 1, v12);
  selfCopy = self;
  v15 = sub_1001A8688(v9, v11, v8);

  sub_1001A974C(v8, &qword_1003B5800);
  return v15 & 1;
}

@end