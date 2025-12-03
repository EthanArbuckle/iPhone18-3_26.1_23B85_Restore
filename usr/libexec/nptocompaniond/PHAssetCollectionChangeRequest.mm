@interface PHAssetCollectionChangeRequest
+ (id)npto_creationRequestForAssetCollectionWithUUID:(id)d;
@end

@implementation PHAssetCollectionChangeRequest

+ (id)npto_creationRequestForAssetCollectionWithUUID:(id)d
{
  dCopy = d;
  v4 = [PHAssetCollectionChangeRequest alloc];
  uUIDString = [dCopy UUIDString];

  v6 = [v4 initWithUUID:uUIDString objectID:0];

  return v6;
}

@end