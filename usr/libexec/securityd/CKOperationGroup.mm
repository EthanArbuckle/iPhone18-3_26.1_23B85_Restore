@interface CKOperationGroup
+ (id)CKKSGroupWithName:(id)name;
@end

@implementation CKOperationGroup

+ (id)CKKSGroupWithName:(id)name
{
  nameCopy = name;
  v4 = objc_alloc_init(CKOperationGroup);
  [v4 setExpectedSendSize:1];
  [v4 setExpectedReceiveSize:1];
  [v4 setName:nameCopy];

  return v4;
}

@end