@interface CKKSCurrentItemData
- (CKKSCurrentItemData)initWithUUID:(id)a3;
- (id)description;
@end

@implementation CKKSCurrentItemData

- (id)description
{
  v3 = [(CKKSCurrentItemData *)self uuid];
  v4 = [(CKKSCurrentItemData *)self modificationDate];
  v5 = [NSString stringWithFormat:@"CKKSCurrentItemData(%@, mtime: %@)", v3, v4];

  return v5;
}

- (CKKSCurrentItemData)initWithUUID:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CKKSCurrentItemData;
  v5 = [(CKKSCurrentItemData *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(CKKSCurrentItemData *)v5 setUuid:v4];
    v7 = v6;
  }

  return v6;
}

@end