@interface GKSecureFileLocator
+ (GKSecureFileLocator)shared;
+ (NSString)globalContextID;
+ (id)securityApplicationGroupLocatorWithFileManager:(id)a3;
- (id)databaseFileWithBundleID:(id)a3 language:(id)a4 contextID:(id)a5 name:(id)a6 createDirectory:(BOOL)a7;
- (id)globalDatabaseFileWithBundleID:(id)a3 language:(id)a4 name:(id)a5 createDirectory:(BOOL)a6;
- (void)removeCacheDirectoryWithBundleID:(id)a3 language:(id)a4 contextID:(id)a5;
- (void)removeCaches;
@end

@implementation GKSecureFileLocator

+ (NSString)globalContextID
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

+ (GKSecureFileLocator)shared
{
  v2 = sub_10022093C();

  return v2;
}

+ (id)securityApplicationGroupLocatorWithFileManager:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  sub_100220C84();
  v6 = v5;

  return v6;
}

- (id)databaseFileWithBundleID:(id)a3 language:(id)a4 contextID:(id)a5 name:(id)a6 createDirectory:(BOOL)a7
{
  HIDWORD(v32) = a7;
  v8 = sub_1001A6C04(&qword_1003B5800);
  __chkstk_darwin(v8 - 8);
  v10 = &v31 - v9;
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;
  v23 = self;
  LOBYTE(v29) = BYTE4(v32);
  sub_1002214A0(v11, v13, v14, v16, v17, v19, v20, v22, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41);

  v24 = type metadata accessor for URL();
  v26 = 0;
  if (sub_1001A969C(v10, 1, v24) != 1)
  {
    URL._bridgeToObjectiveC()(v25);
    v26 = v27;
    (*(*(v24 - 8) + 8))(v10, v24);
  }

  return v26;
}

- (id)globalDatabaseFileWithBundleID:(id)a3 language:(id)a4 name:(id)a5 createDirectory:(BOOL)a6
{
  v6 = a6;
  v8 = sub_1001A6C04(&qword_1003B5800);
  __chkstk_darwin(v8 - 8);
  v10 = &v26 - v9;
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;
  v20 = self;
  sub_100221A50(v11, v13, v14, v16, v17, v19, v6);

  v21 = type metadata accessor for URL();
  v23 = 0;
  if (sub_1001A969C(v10, 1, v21) != 1)
  {
    URL._bridgeToObjectiveC()(v22);
    v23 = v24;
    (*(*(v21 - 8) + 8))(v10, v21);
  }

  return v23;
}

- (void)removeCacheDirectoryWithBundleID:(id)a3 language:(id)a4 contextID:(id)a5
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = self;
  sub_100221C24();
}

- (void)removeCaches
{
  v2 = self;
  sub_10022204C();
}

@end