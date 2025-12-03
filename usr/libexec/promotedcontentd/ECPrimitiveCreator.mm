@interface ECPrimitiveCreator
- (_TtC7Metrics18ECPrimitiveCreator)init;
- (void)recordMetric:(int64_t)metric forPurpose:(int64_t)purpose properties:(id)properties internalProperties:(id)internalProperties order:(int64_t)order options:(int64_t)options;
@end

@implementation ECPrimitiveCreator

- (void)recordMetric:(int64_t)metric forPurpose:(int64_t)purpose properties:(id)properties internalProperties:(id)internalProperties order:(int64_t)order options:(int64_t)options
{
  propertiesCopy = properties;
  if (properties)
  {
    sub_1001E27A8(&unk_1004D5850);
    propertiesCopy = sub_100398E68();
  }

  if (internalProperties)
  {
    sub_1001E27A8(&unk_1004D4400);
    internalProperties = sub_100398E68();
  }

  selfCopy = self;
  sub_100341B1C(metric, purpose, propertiesCopy, internalProperties, order, options);
}

- (_TtC7Metrics18ECPrimitiveCreator)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ECPrimitiveCreator();
  return [(ECPrimitiveCreator *)&v3 init];
}

@end