@interface ECPrimitiveCreator
- (_TtC7Metrics18ECPrimitiveCreator)init;
- (void)recordMetric:(int64_t)a3 forPurpose:(int64_t)a4 properties:(id)a5 internalProperties:(id)a6 order:(int64_t)a7 options:(int64_t)a8;
@end

@implementation ECPrimitiveCreator

- (void)recordMetric:(int64_t)a3 forPurpose:(int64_t)a4 properties:(id)a5 internalProperties:(id)a6 order:(int64_t)a7 options:(int64_t)a8
{
  v11 = a5;
  if (a5)
  {
    sub_1001E27A8(&unk_1004D5850);
    v11 = sub_100398E68();
  }

  if (a6)
  {
    sub_1001E27A8(&unk_1004D4400);
    a6 = sub_100398E68();
  }

  v15 = self;
  sub_100341B1C(a3, a4, v11, a6, a7, a8);
}

- (_TtC7Metrics18ECPrimitiveCreator)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ECPrimitiveCreator();
  return [(ECPrimitiveCreator *)&v3 init];
}

@end