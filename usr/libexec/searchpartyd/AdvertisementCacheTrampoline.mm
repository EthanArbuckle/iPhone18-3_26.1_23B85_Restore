@interface AdvertisementCacheTrampoline
- (_TtC12searchpartydP33_EBCE4CC9FC18641636B173DB27D7BE0028AdvertisementCacheTrampoline)init;
- (void)advertisementsForSearchCriteria:(id)criteria completion:(id)completion;
- (void)beaconAdvertisementAtFileURL:(id)l beaconIdentifier:(id)identifier scanDate:(id)date completion:(id)completion;
- (void)beaconPayloadsForSearchCriteria:(id)criteria completion:(id)completion;
- (void)clearCacheWithCompletion:(id)completion;
- (void)markAdvertisementsProcessed:(id)processed completion:(id)completion;
- (void)markFilesProcessed:(id)processed completion:(id)completion;
@end

@implementation AdvertisementCacheTrampoline

- (void)markFilesProcessed:(id)processed completion:(id)completion
{
  v5 = _Block_copy(completion);
  type metadata accessor for URL();
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  v8 = (self + OBJC_IVAR____TtC12searchpartydP33_EBCE4CC9FC18641636B173DB27D7BE0028AdvertisementCacheTrampoline_implementation);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[3];
  ObjectType = swift_getObjectType();
  v12 = *(v10 + 32);
  selfCopy = self;
  swift_unknownObjectRetain();
  v12(v6, sub_10026AE30, v7, ObjectType, v10);
  swift_unknownObjectRelease();
}

- (void)beaconPayloadsForSearchCriteria:(id)criteria completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = (self + OBJC_IVAR____TtC12searchpartydP33_EBCE4CC9FC18641636B173DB27D7BE0028AdvertisementCacheTrampoline_implementation);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[3];
  ObjectType = swift_getObjectType();
  criteriaCopy = criteria;
  selfCopy = self;
  swift_unknownObjectRetain();
  v12 = sub_1003CCA70();
  v14 = v13;
  v16 = v15;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1001BC2E0;
  *(v17 + 24) = v7;
  v18 = *(v10 + 24);

  v18(v12, v14, v16, sub_10026ACF4, v17, ObjectType, v10);
  swift_unknownObjectRelease();
}

- (void)beaconAdvertisementAtFileURL:(id)l beaconIdentifier:(id)identifier scanDate:(id)date completion:(id)completion
{
  v8 = type metadata accessor for Date();
  v35 = *(v8 - 8);
  v36 = v8;
  v9 = *(v35 + 64);
  __chkstk_darwin(v8);
  v30 = &selfCopy - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UUID();
  v33 = *(v11 - 8);
  v34 = v11;
  v12 = *(v33 + 64);
  __chkstk_darwin(v11);
  v14 = &selfCopy - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for URL();
  v31 = *(v15 - 8);
  v32 = v15;
  v16 = *(v31 + 64);
  __chkstk_darwin(v15);
  v18 = &selfCopy - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = _Block_copy(completion);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  v21 = (self + OBJC_IVAR____TtC12searchpartydP33_EBCE4CC9FC18641636B173DB27D7BE0028AdvertisementCacheTrampoline_implementation);
  swift_beginAccess();
  v22 = *v21;
  v23 = v21[1];
  ObjectType = swift_getObjectType();
  v25 = *(v23 + 8);
  selfCopy = self;
  swift_unknownObjectRetain();
  v26 = v14;
  v27 = v14;
  v28 = v30;
  v25(v18, v26, v30, sub_1001BC108, v20, ObjectType, v23);

  (*(v35 + 8))(v28, v36);
  (*(v33 + 8))(v27, v34);
  (*(v31 + 8))(v18, v32);
  swift_unknownObjectRelease();
}

- (void)markAdvertisementsProcessed:(id)processed completion:(id)completion
{
  v5 = _Block_copy(completion);
  type metadata accessor for UUID();
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v5);
  selfCopy = self;
  sub_10026A388(v6, selfCopy, v5);
  _Block_release(v5);
  _Block_release(v5);
}

- (void)advertisementsForSearchCriteria:(id)criteria completion:(id)completion
{
  v6 = _Block_copy(completion);
  _Block_copy(v6);
  criteriaCopy = criteria;
  selfCopy = self;
  sub_10026AC00(selfCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)clearCacheWithCompletion:(id)completion
{
  v4 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v12 - v6;
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = sub_10001E370;
  v11[5] = v9;
  sub_10025EDD4(0, 0, v7, &unk_101395730, v11);
}

- (_TtC12searchpartydP33_EBCE4CC9FC18641636B173DB27D7BE0028AdvertisementCacheTrampoline)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end