@interface PHAssetCollectionChangeRequest
+ (id)npto_creationRequestForAssetCollectionWithUUID:(id)a3;
@end

@implementation PHAssetCollectionChangeRequest

+ (id)npto_creationRequestForAssetCollectionWithUUID:(id)a3
{
  v3 = a3;
  v4 = [PHAssetCollectionChangeRequest alloc];
  v5 = [v3 UUIDString];

  v6 = [v4 initWithUUID:v5 objectID:0];

  return v6;
}

@end