@interface SFAnalyticsTopicGenerator
- (BOOL)generateWithTopicClient:(id)a3 outputDirectory:(id)a4 uploadSizeLimit:(int64_t)a5 eventQuota:(unint64_t)a6 uuid:(id)a7 error:(id *)a8;
- (_TtC15securityuploadd25SFAnalyticsTopicGenerator)init;
- (_TtC15securityuploadd25SFAnalyticsTopicGenerator)initWithTopic:(id)a3;
- (id)uploadFilesWithTopicClient:(id)a3;
- (void)confirmUploadFileWithTopicClient:(id)a3 url:(id)a4;
- (void)deleteAllUploadFilesWithTopicClient:(id)a3 outputDirectory:(id)a4;
@end

@implementation SFAnalyticsTopicGenerator

- (_TtC15securityuploadd25SFAnalyticsTopicGenerator)initWithTopic:(id)a3
{
  v3 = a3;
  v4 = sub_1000055BC(v3);

  return v4;
}

- (id)uploadFilesWithTopicClient:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10000617C(v4);

  type metadata accessor for URL();
  v6.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v6.super.isa;
}

- (void)confirmUploadFileWithTopicClient:(id)a3 url:(id)a4
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = a3;
  v12 = self;
  sub_100006308(v11, v10);

  (*(v7 + 8))(v10, v6);
}

- (void)deleteAllUploadFilesWithTopicClient:(id)a3 outputDirectory:(id)a4
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = a3;
  v12 = self;
  sub_1000034DC(v11, v10);

  (*(v7 + 8))(v10, v6);
}

- (BOOL)generateWithTopicClient:(id)a3 outputDirectory:(id)a4 uploadSizeLimit:(int64_t)a5 eventQuota:(unint64_t)a6 uuid:(id)a7 error:(id *)a8
{
  v24 = a5;
  v25 = a6;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for URL();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = a3;
  v21 = self;
  sub_1000037F8(v20, v19, v24, v25, v14);

  (*(v11 + 8))(v14, v10);
  (*(v16 + 8))(v19, v15);
  return 1;
}

- (_TtC15securityuploadd25SFAnalyticsTopicGenerator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end