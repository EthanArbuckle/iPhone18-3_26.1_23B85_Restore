@interface GKCloudKitMultiplayerCache
- (void)refetchUserRecordID;
- (void)userRecordIDWithCompletionHandler:(id)handler;
@end

@implementation GKCloudKitMultiplayerCache

- (void)userRecordIDWithCompletionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = self;

  sub_10028022C(&unk_1002CA230, v5);
}

- (void)refetchUserRecordID
{

  GKCloudKitMultiplayerCache.refetchUserRecordID()();
}

@end