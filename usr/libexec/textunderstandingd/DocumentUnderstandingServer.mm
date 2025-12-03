@interface DocumentUnderstandingServer
- (void)triggerSpotlightFileUpdateWithItems:(id)items bundleID:(id)d completion:(id)completion;
@end

@implementation DocumentUnderstandingServer

- (void)triggerSpotlightFileUpdateWithItems:(id)items bundleID:(id)d completion:(id)completion
{
  v5 = _Block_copy(completion);
  sub_100001C9C(0, &qword_1000086B8, CSSearchableItem_ptr);
  sub_100001E10();
  sub_100001E00();
  *(swift_allocObject() + 16) = v5;

  sub_10000152C();
}

@end