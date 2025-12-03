@interface KTEligibilityStatusResult
+ (id)statusResultWithFailureWithElement:(id)element error:(id)error;
+ (id)statusResultWithFailureWithElement:(id)element error:(id)error dateStored:(id)stored;
+ (id)statusResultWithSuccessWithElement:(id)element;
+ (id)statusResultWithSuccessWithElement:(id)element dateStored:(id)stored;
- (NSDate)dateStored;
- (NSString)description;
- (_TtC13transparencyd25KTEligibilityStatusResult)init;
@end

@implementation KTEligibilityStatusResult

- (NSDate)dateStored
{
  v3 = sub_100095820(&qword_100383FB0, &unk_1002D6690);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v13 - v5;
  sub_1000AB050(self + OBJC_IVAR____TtC13transparencyd25KTEligibilityStatusResult_dateStored, &v13 - v5, &qword_100383FB0, &unk_1002D6690);
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v6, 1, v7);
  v10 = 0;
  if (v9 != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v8 + 8))(v6, v7);
    v10 = isa;
  }

  return v10;
}

- (NSString)description
{
  selfCopy = self;
  sub_100130444();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

+ (id)statusResultWithSuccessWithElement:(id)element
{
  ObjCClassMetadata = swift_getObjCClassMetadata();
  v4 = sub_100095820(&qword_100383FB0, &unk_1002D6690);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v17 - v6;
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v11 = type metadata accessor for Date();
  (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
  v12 = objc_allocWithZone(ObjCClassMetadata);
  *&v12[OBJC_IVAR____TtC13transparencyd25KTEligibilityStatusResult_result] = 0;
  v13 = &v12[OBJC_IVAR____TtC13transparencyd25KTEligibilityStatusResult_errorString];
  *v13 = 0;
  *(v13 + 1) = 0;
  v14 = &v12[OBJC_IVAR____TtC13transparencyd25KTEligibilityStatusResult_element];
  *v14 = v8;
  v14[1] = v10;
  sub_1000AB050(v7, &v12[OBJC_IVAR____TtC13transparencyd25KTEligibilityStatusResult_dateStored], &qword_100383FB0, &unk_1002D6690);
  v17.receiver = v12;
  v17.super_class = ObjCClassMetadata;

  v15 = objc_msgSendSuper2(&v17, "init");
  sub_1000057C4(v7, &qword_100383FB0, &unk_1002D6690);

  return v15;
}

+ (id)statusResultWithSuccessWithElement:(id)element dateStored:(id)stored
{
  v5 = sub_100095820(&qword_100383FB0, &unk_1002D6690);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v23 - v10;
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  if (stored)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = type metadata accessor for Date();
    (*(*(v15 - 8) + 56))(v11, 0, 1, v15);
  }

  else
  {
    v16 = type metadata accessor for Date();
    (*(*(v16 - 8) + 56))(v11, 1, 1, v16);
  }

  ObjCClassMetadata = swift_getObjCClassMetadata();
  sub_1000AB050(v11, v9, &qword_100383FB0, &unk_1002D6690);
  v18 = objc_allocWithZone(ObjCClassMetadata);
  *&v18[OBJC_IVAR____TtC13transparencyd25KTEligibilityStatusResult_result] = 0;
  v19 = &v18[OBJC_IVAR____TtC13transparencyd25KTEligibilityStatusResult_errorString];
  *v19 = 0;
  *(v19 + 1) = 0;
  v20 = &v18[OBJC_IVAR____TtC13transparencyd25KTEligibilityStatusResult_element];
  *v20 = v12;
  v20[1] = v14;
  sub_1000AB050(v9, &v18[OBJC_IVAR____TtC13transparencyd25KTEligibilityStatusResult_dateStored], &qword_100383FB0, &unk_1002D6690);
  v23.receiver = v18;
  v23.super_class = ObjCClassMetadata;

  v21 = objc_msgSendSuper2(&v23, "init");
  sub_1000057C4(v9, &qword_100383FB0, &unk_1002D6690);

  sub_1000057C4(v11, &qword_100383FB0, &unk_1002D6690);

  return v21;
}

+ (id)statusResultWithFailureWithElement:(id)element error:(id)error dateStored:(id)stored
{
  v7 = sub_100095820(&qword_100383FB0, &unk_1002D6690);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v19 - v9;
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  if (stored)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = type metadata accessor for Date();
    (*(*(v14 - 8) + 56))(v10, 0, 1, v14);
  }

  else
  {
    v15 = type metadata accessor for Date();
    (*(*(v15 - 8) + 56))(v10, 1, 1, v15);
  }

  errorCopy = error;
  v17 = sub_1001432B8(v11, v13, errorCopy, v10);

  sub_1000057C4(v10, &qword_100383FB0, &unk_1002D6690);

  return v17;
}

+ (id)statusResultWithFailureWithElement:(id)element error:(id)error
{
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  errorCopy = error;
  v9 = sub_1001435FC(v5, v7, errorCopy);

  return v9;
}

- (_TtC13transparencyd25KTEligibilityStatusResult)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end