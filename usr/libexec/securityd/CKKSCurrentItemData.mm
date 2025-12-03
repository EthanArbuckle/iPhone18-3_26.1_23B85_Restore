@interface CKKSCurrentItemData
- (CKKSCurrentItemData)initWithUUID:(id)d;
- (id)description;
@end

@implementation CKKSCurrentItemData

- (id)description
{
  uuid = [(CKKSCurrentItemData *)self uuid];
  modificationDate = [(CKKSCurrentItemData *)self modificationDate];
  v5 = [NSString stringWithFormat:@"CKKSCurrentItemData(%@, mtime: %@)", uuid, modificationDate];

  return v5;
}

- (CKKSCurrentItemData)initWithUUID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = CKKSCurrentItemData;
  v5 = [(CKKSCurrentItemData *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(CKKSCurrentItemData *)v5 setUuid:dCopy];
    v7 = v6;
  }

  return v6;
}

@end