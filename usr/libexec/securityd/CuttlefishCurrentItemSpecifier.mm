@interface CuttlefishCurrentItemSpecifier
- (CuttlefishCurrentItemSpecifier)initWithCoder:(id)a3;
- (id)description;
- (id)init:(id)a3 zoneID:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CuttlefishCurrentItemSpecifier

- (id)description
{
  v3 = [(CuttlefishCurrentItemSpecifier *)self zoneID];
  v4 = [(CuttlefishCurrentItemSpecifier *)self itemPtrName];
  v5 = [NSString stringWithFormat:@"<CuttlefishCurrentItemSpecifier(%@): %@>", v3, v4];

  return v5;
}

- (CuttlefishCurrentItemSpecifier)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CuttlefishCurrentItemSpecifier;
  v5 = [(CuttlefishCurrentItemSpecifier *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"zoneID"];
    zoneID = v5->_zoneID;
    v5->_zoneID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"itemPtrName"];
    itemPtrName = v5->_itemPtrName;
    v5->_itemPtrName = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CuttlefishCurrentItemSpecifier *)self itemPtrName];
  [v4 encodeObject:v5 forKey:@"itemPtrName"];

  v6 = [(CuttlefishCurrentItemSpecifier *)self zoneID];
  [v4 encodeObject:v6 forKey:@"zoneID"];
}

- (id)init:(id)a3 zoneID:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CuttlefishCurrentItemSpecifier;
  v9 = [(CuttlefishCurrentItemSpecifier *)&v12 init];
  p_isa = &v9->super.isa;
  if (v9)
  {
    objc_storeStrong(&v9->_itemPtrName, a3);
    objc_storeStrong(p_isa + 1, a4);
  }

  return p_isa;
}

@end