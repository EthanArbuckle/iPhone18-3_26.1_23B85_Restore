@interface SFAnalyticsTopicGenerator
- (BOOL)generateWithTopicClient:(id)client outputDirectory:(id)directory uploadSizeLimit:(int64_t)limit eventQuota:(unint64_t)quota uuid:(id)uuid error:(id *)error;
- (_TtC15securityuploadd25SFAnalyticsTopicGenerator)init;
- (_TtC15securityuploadd25SFAnalyticsTopicGenerator)initWithTopic:(id)topic;
- (id)uploadFilesWithTopicClient:(id)client;
- (void)confirmUploadFileWithTopicClient:(id)client url:(id)url;
- (void)deleteAllUploadFilesWithTopicClient:(id)client outputDirectory:(id)directory;
@end

@implementation SFAnalyticsTopicGenerator

- (_TtC15securityuploadd25SFAnalyticsTopicGenerator)initWithTopic:(id)topic
{
  topicCopy = topic;
  v4 = sub_1000055BC(topicCopy);

  return v4;
}

- (id)uploadFilesWithTopicClient:(id)client
{
  clientCopy = client;
  selfCopy = self;
  sub_10000617C(clientCopy);

  type metadata accessor for URL();
  v6.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v6.super.isa;
}

- (void)confirmUploadFileWithTopicClient:(id)client url:(id)url
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  clientCopy = client;
  selfCopy = self;
  sub_100006308(clientCopy, v10);

  (*(v7 + 8))(v10, v6);
}

- (void)deleteAllUploadFilesWithTopicClient:(id)client outputDirectory:(id)directory
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  clientCopy = client;
  selfCopy = self;
  sub_1000034DC(clientCopy, v10);

  (*(v7 + 8))(v10, v6);
}

- (BOOL)generateWithTopicClient:(id)client outputDirectory:(id)directory uploadSizeLimit:(int64_t)limit eventQuota:(unint64_t)quota uuid:(id)uuid error:(id *)error
{
  limitCopy = limit;
  quotaCopy = quota;
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
  clientCopy = client;
  selfCopy = self;
  sub_1000037F8(clientCopy, v19, limitCopy, quotaCopy, v14);

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