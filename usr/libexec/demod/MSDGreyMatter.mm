@interface MSDGreyMatter
+ (void)checkAvailabilityWithCompletion:(id)completion;
- (_TtC5demod13MSDGreyMatter)init;
@end

@implementation MSDGreyMatter

+ (void)checkAvailabilityWithCompletion:(id)completion
{
  v3 = _Block_copy(completion);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  swift_getObjCClassMetadata();
  static MSDGreyMatter.checkAvailabilityWithCompletion(_:)(sub_1000C3AC8, v4);
}

- (_TtC5demod13MSDGreyMatter)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(MSDGreyMatter *)&v3 init];
}

@end